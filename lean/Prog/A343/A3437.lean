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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
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
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A343700: a(n) is the number of preference profiles in the stable marriage problem with n men and n women such that there are no pairs of people who rank each other first.

The programs for A343700, there is no canonical definition to state claims against.
-/

/-! ## A343700.P7553560306632670144

`A284458(n+1)*A350558(n+1)`
-/

namespace A343700.P7553560306632670144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284458 (n + 1) * A350558 (n + 1)

end

end A343700.P7553560306632670144

/-!
# A343702: Numbers that are the sum of five positive cubes in two or more ways.

The programs for A343702, there is no canonical definition to state claims against.
-/

/-! ## A343702.P2876163274025938326

`∪[A048927(n+1), A343704(n+1)]`
-/

namespace A343702.P2876163274025938326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048927 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343702.P2876163274025938326

/-! ## A343702.P12743290312934271902

`lt[1, A025458(n)]`
-/

namespace A343702.P12743290312934271902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343702.P12743290312934271902

/-!
# A343703: Numbers k such that k=x*y for some x and y such that x+y and the concatenation of x and y are both prime.

The programs for A343703, there is no canonical definition to state claims against.
-/

/-! ## A343703.P10063974295351641144

`eq[A141497(A033630(n+4)), A340086(n+1)]`
-/

namespace A343703.P10063974295351641144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141497 (A033630 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340086 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343703.P10063974295351641144

/-! ## A343703.P7679943565428480658

`eq[A138224(n+1), A138239(A138236(n+1)²)]`
-/

namespace A343703.P7679943565428480658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138239 (A138236 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343703.P7679943565428480658

/-! ## A343703.P5135659928083056942

`eq[A000005(n+1), A057468(A033630(n+4))]`
-/

namespace A343703.P5135659928083056942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057468 (A033630 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343703.P5135659928083056942

/-! ## A343703.P12502385107116935383

`eq[A046523(n+1), A102634(A033630(n+4))]`
-/

namespace A343703.P12502385107116935383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102634 (A033630 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343703.P12502385107116935383

/-!
# A343704: Numbers that are the sum of five positive cubes in three or more ways.

The programs for A343704, there is no canonical definition to state claims against.
-/

/-! ## A343704.P18389210416220535788

`∪[A343705(n+1), A344034(n+1)]`
-/

namespace A343704.P18389210416220535788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A343704.P18389210416220535788

/-! ## A343704.P5020686554337743568

`lt[2, A025458(n)]`
-/

namespace A343704.P5020686554337743568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343704.P5020686554337743568

/-! ## A343704.P16465140103528808676

`A076536(8*A343705(n+1))`
-/

namespace A343704.P16465140103528808676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076536 (8 * A343705 (n + 1)).toNat

end

end A343704.P16465140103528808676

/-! ## A343704.P336778921886026712

`A343705(n+1)%A075966(n)`
-/

namespace A343704.P336778921886026712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343705 (n + 1)) (A075966 n)

end

end A343704.P336778921886026712

/-! ## A343704.P2045169042275656446

`A343705(n+1)+A125063(n+1)%2`
-/

namespace A343704.P2045169042275656446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343705 (n + 1) + Int.tmod (A125063 (n + 1)) 2

end

end A343704.P2045169042275656446

/-!
# A343705: Numbers that are the sum of five positive cubes in exactly three ways.

The programs for A343705, there is no canonical definition to state claims against.
-/

/-! ## A343705.P6903679312882578162

`eq[3, A025458(n)]`
-/

namespace A343705.P6903679312882578162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343705.P6903679312882578162

/-! ## A343705.P18278408321118997386

`A343704(comp[xor(1, n+17)+3]+1)`
-/

namespace A343705.P18278408321118997386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n + 17) + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343704 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A343705.P18278408321118997386

/-!
# A343706: Lesser emirps (A109308) p such that A056964(p) is in A343703.

The programs for A343706, there is no canonical definition to state claims against.
-/

/-! ## A343706.P5464549375877330236

`A175791((2*n+1)^gcd(5, n)+1)`
-/

namespace A343706.P5464549375877330236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175791 ((2 * n + 1) ^ Nat.gcd 5 n + 1)

end

end A343706.P5464549375877330236

/-!
# A343707: a(n) = 1 + 2 * Sum_{k=0..n-1} binomial(n,k) * (n-k-1)! * a(k).

The programs for A343707, there is no canonical definition to state claims against.
-/

/-! ## A343707.P739263028454528413

`∑{#}[n, C(n, #)*A088500(#)]`
-/

namespace A343707.P739263028454528413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A088500 k

end

end A343707.P739263028454528413

/-!
# A343709: a(n) = 1 + 3 * Sum_{k=0..n-1} binomial(n,k) * (n-k-1)! * a(k).

The programs for A343709, there is no canonical definition to state claims against.
-/

/-! ## A343709.P17671926932280096346

`A101322(A283272(n)+A155660(n))`
-/

namespace A343709.P17671926932280096346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101322 (A283272 n + A155660 n).toNat

end

end A343709.P17671926932280096346

/-!
# A343710: a(n) = 1 + 4 * Sum_{k=0..n-1} binomial(n,k) * (n-k-1)! * a(k).

The programs for A343710, there is no canonical definition to state claims against.
-/

/-! ## A343710.P8227854698812277641

`A269399(A377890(n))^A231561(n+1)`
-/

namespace A343710.P8227854698812277641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269399 (A377890 n).toNat : ℚ) ^ (A231561 (n + 1) : ℤ)

end

end A343710.P8227854698812277641

/-!
# A343711: Primes p such that p-1 is a partial sum of A014574.

The programs for A343711, there is no canonical definition to state claims against.
-/

/-! ## A343711.P6342440178494250869

`p?[A086168(n+1)-n]`
-/

namespace A343711.P6342440178494250869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086168 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343711.P6342440178494250869

/-! ## A343711.P8687547705682060713

`p?[∑[A014574(n+1)]+1]`
-/

namespace A343711.P8687547705682060713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343711.P8687547705682060713

/-! ## A343711.P15763542767785927322

`p?[∑[A094743(n+1)-1]]`
-/

namespace A343711.P15763542767785927322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343711.P15763542767785927322

/-! ## A343711.P14032042521643860174

`p?[∑[A006512(n+1)]-n]`
-/

namespace A343711.P14032042521643860174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343711.P14032042521643860174

/-! ## A343711.P3702569963251756746

`p?[∑[p?[A000040(n+1)+2]]-n]`
-/

namespace A343711.P3702569963251756746
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343711.P3702569963251756746

/-!
# A343712: Twin primes p such that p-1 is a partial sum of A014574.

The programs for A343712, there is no canonical definition to state claims against.
-/

/-! ## A343712.P17366072105047980907

`∩[A001359(n+1), A343711(n+1)]`
-/

namespace A343712.P17366072105047980907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343712.P17366072105047980907

/-! ## A343712.P3108356261532258782

`∩[A001359(n+1), A086168(n+1)-n]`
-/

namespace A343712.P3108356261532258782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086168 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343712.P3108356261532258782

/-! ## A343712.P6615419502015637941

`∩[A343711(n+1), A053319(n)+a(n-1)]` with `a(0)=3`
-/

namespace A343712.P6615419502015637941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A053319 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343712.P6615419502015637941

/-! ## A343712.P7437980576750974742

`∩[A111166(n+1), A343711(n+1)]`
-/

namespace A343712.P7437980576750974742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343712.P7437980576750974742

/-! ## A343712.P11464757285745294967

`∩[A014574(n+1)-1, A343711(n+1)]`
-/

namespace A343712.P11464757285745294967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343712.P11464757285745294967

/-!
# A343713: Table read by rows: row n lists the residues of the triangular numbers modulo n.

The programs for A343713, there is no canonical definition to state claims against.
-/

/-! ## A343713.P9726886201041922296

`A002260(∑[A118383(abs(1-n)+1)])-1`
-/

namespace A343713.P9726886201041922296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118383 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A343713.P9726886201041922296

/-! ## A343713.P12595368273724760642

`A002262(∑[A118383(n+1)]-A118383(n+1))`
-/

namespace A343713.P12595368273724760642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (∑ j ∈ Finset.range (n + 1), f1 j - A118383 (n + 1)).toNat

end

end A343713.P12595368273724760642

/-! ## A343713.P3333611605589227232

`A103921(A179392(n+1)^∑[and(1, n+1)])`
-/

namespace A343713.P3333611605589227232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (A179392 (n + 1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A343713.P3333611605589227232

/-! ## A343713.P14115713899968185335

`A103921(A179392(n+1)^A008619(n))`
-/

namespace A343713.P14115713899968185335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 (SequenceMachineLib.roundAway ((A179392 (n + 1) : ℚ) ^ (A008619 n : ℤ))).toNat

end

end A343713.P14115713899968185335

/-! ## A343713.P14142121090288605267

`A060502(5*A179392(n+1)^A008619(n))`
-/

namespace A343713.P14142121090288605267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (SequenceMachineLib.roundAway (5 * (A179392 (n + 1) : ℚ) ^ (A008619 n : ℤ))).toNat

end

end A343713.P14142121090288605267

/-!
# A343714: Palindromic primes of the form p//q//reverse(p), where p is a prime (not necessarily palindromic) and q, of course, is a palindromic prime.

The programs for A343714, there is no canonical definition to state claims against.
-/

/-! ## A343714.P11136188976176361170

`A343715(A100793(n))`
-/

namespace A343714.P11136188976176361170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343715 (A100793 n).toNat

end

end A343714.P11136188976176361170

/-! ## A343714.P16711387558264758074

`A037276(A343715(n+1))`
-/

namespace A343714.P16711387558264758074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A343715 (n + 1)).toNat

end

end A343714.P16711387558264758074

/-!
# A343715: Palindromic primes of the form p//q//reverse(p), where p, q, and reverse(p) are primes.

The programs for A343715, there is no canonical definition to state claims against.
-/

/-! ## A343715.P1107784040925118907

`A006530(A343714(comp[C(n+7, 7)-1]))`
-/

namespace A343715.P1107784040925118907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A343714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A343715.P1107784040925118907

/-! ## A343715.P12111404623020503505

`A343714(A356451(n+1)%A351016(2*(n+1)))`
-/

namespace A343715.P12111404623020503505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343714 (Int.tmod (A356451 (n + 1)) (A351016 (2 * (n + 1)))).toNat

end

end A343715.P12111404623020503505

/-! ## A343715.P8440969148318306677

`A343714(A356451(n+1))%A343714(2*(n+2))`
-/

namespace A343715.P8440969148318306677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343714 (A356451 (n + 1)).toNat) (A343714 (2 * (n + 2)))

end

end A343715.P8440969148318306677

/-! ## A343715.P12984978371879444157

`A343714(A356451(n+1)%A246446(n+2))`
-/

namespace A343715.P12984978371879444157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343714 (Int.tmod (A356451 (n + 1)) (A246446 (n + 2))).toNat

end

end A343715.P12984978371879444157

/-! ## A343715.P15942302367090672965

`A343714(A348579(n+1))`
-/

namespace A343715.P15942302367090672965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343714 (A348579 (n + 1)).toNat

end

end A343715.P15942302367090672965

/-!
# A343716: Numbers k such that k^2 divides 5^k - 4^k - 3^k.

The programs for A343716, there is no canonical definition to state claims against.
-/

/-! ## A343716.P793576584887547682

`eq[A113901(n+1), A161901(A393970(n+1))]`
-/

namespace A343716.P793576584887547682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161901 (A393970 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343716.P793576584887547682

/-!
# A343718: Record values in A343717.

The programs for A343718, there is no canonical definition to state claims against.
-/

/-! ## A343718.P18022657254542532133

`record[A343717(n)]`
-/

namespace A343718.P18022657254542532133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343718.P18022657254542532133

/-! ## A343718.P13717922260944862408

`A343717(A343719(n+1))`
-/

namespace A343718.P13717922260944862408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343717 (A343719 (n + 1)).toNat

end

end A343718.P13717922260944862408

/-!
# A343720: Triangle read by rows: T(n,k) = k^2 mod n for k = 0..n-1, n >= 1.

The programs for A343720, the canonical program `A343720.P14185698687701168797` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343720 has offset 1).

The definition of A343720 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `col(n)²%(row(n)+1)` (program `A343720.P14185698687701168797`, by `A343720.P14185698687701168797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A343720.P14185698687701168797

`col(n)²%(row(n)+1)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A343720

/-- `col(n)²%(row(n)+1)` -/
def P14185698687701168797.Spec : Prop :=
  ∀ n, (P14185698687701168797.a n : ℤ) = A343720 (n + 1)

theorem P14185698687701168797.correct : P14185698687701168797.Spec := by
  intro n
  simp only [A343720, Nat.add_sub_cancel]

end A343720

/-! ## A343720.P358284379655633100

`lt[floor(sqrt(n))%2, 1]²%(row(n)+1)`
-/

namespace A343720.P358284379655633100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2 % (SequenceMachineLib.triRow n + 1)

end

end A343720.P358284379655633100

namespace A343720

/-- `lt[floor(sqrt(n))%2, 1]²%(row(n)+1)` -/
def P358284379655633100.Spec : Prop :=
  ∀ n, (P358284379655633100.a n : ℤ) = A343720 (n + 1)

end A343720

/-! ## A343720.P5025337552782690909

`eq[1, (-1)^floor(sqrt(n))]²%∑[char[∑[n]]]`
-/

namespace A343720.P5025337552782690909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ Nat.sqrt n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2 % (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A343720.P5025337552782690909

namespace A343720

/-- `eq[1, (-1)^floor(sqrt(n))]²%∑[char[∑[n]]]` -/
def P5025337552782690909.Spec : Prop :=
  ∀ n, (P5025337552782690909.a n : ℤ) = A343720 (n + 1)

end A343720

/-! ## A343720.P16183532337492635957

`(C(∑[char[∑[n]]], 2)+n)²%∑[char[∑[n]]]`
-/

namespace A343720.P16183532337492635957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n) ^ 2 % (∑ j ∈ Finset.range (n + 1), f4 j)

end

end A343720.P16183532337492635957

namespace A343720

/-- `(C(∑[char[∑[n]]], 2)+n)²%∑[char[∑[n]]]` -/
def P16183532337492635957.Spec : Prop :=
  ∀ n, (P16183532337492635957.a n : ℤ) = A343720 (n + 1)

end A343720

/-! ## A343720.P15881070961319345498

`(n-C(∑[char[∑[n]]], 2))²%∑[char[∑[n]]]`
-/

namespace A343720.P15881070961319345498
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2) ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A343720.P15881070961319345498

namespace A343720

/-- `(n-C(∑[char[∑[n]]], 2))²%∑[char[∑[n]]]` -/
def P15881070961319345498.Spec : Prop :=
  ∀ n, P15881070961319345498.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P7823461052872584821

`A048152(floor(acot(n)+n))`
-/

namespace A343720.P7823461052872584821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

end

end A343720.P7823461052872584821

namespace A343720

/-- `A048152(floor(acot(n)+n))` -/
def P7823461052872584821.Spec : Prop :=
  ∀ n, P7823461052872584821.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P1502098523658032886

`A048152(n^floor(atan(n)))`
-/

namespace A343720.P1502098523658032886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A343720.P1502098523658032886

namespace A343720

/-- `A048152(n^floor(atan(n)))` -/
def P1502098523658032886.Spec : Prop :=
  ∀ n, P1502098523658032886.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P17144859430238276232

`A048152(or(n, floor(acot(n))))`
-/

namespace A343720.P17144859430238276232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (Int.lor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A343720.P17144859430238276232

namespace A343720

/-- `A048152(or(n, floor(acot(n))))` -/
def P17144859430238276232.Spec : Prop :=
  ∀ n, P17144859430238276232.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P8662225663185502566

`A048152(xor(n, floor(acot(n))))`
-/

namespace A343720.P8662225663185502566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (Int.xor (n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A343720.P8662225663185502566

namespace A343720

/-- `A048152(xor(n, floor(acot(n))))` -/
def P8662225663185502566.Spec : Prop :=
  ∀ n, P8662225663185502566.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P5084653701934217653

`A048152(n^ceil(sin(n)²))`
-/

namespace A343720.P5084653701934217653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A343720.P5084653701934217653

namespace A343720

/-- `A048152(n^ceil(sin(n)²))` -/
def P5084653701934217653.Spec : Prop :=
  ∀ n, P5084653701934217653.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P8561700876639839279

`A048152(C(n, ceil(sin(n)²)))`
-/

namespace A343720.P8561700876639839279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (Nat.choose n ⌈Real.sin (n : ℝ) ^ 2⌉.toNat)

end

end A343720.P8561700876639839279

namespace A343720

/-- `A048152(C(n, ceil(sin(n)²)))` -/
def P8561700876639839279.Spec : Prop :=
  ∀ n, P8561700876639839279.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P1819106619902724155

`A143844(n)%∑[char[∑[n]]]`
-/

namespace A343720.P1819106619902724155
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143844 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A343720.P1819106619902724155

namespace A343720

/-- `A143844(n)%∑[char[∑[n]]]` -/
def P1819106619902724155.Spec : Prop :=
  ∀ n, P1819106619902724155.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P8691423366180289048

`A048152(A028310(n))`
-/

namespace A343720.P8691423366180289048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A028310 n).toNat

end

end A343720.P8691423366180289048

namespace A343720

/-- `A048152(A028310(n))` -/
def P8691423366180289048.Spec : Prop :=
  ∀ n, P8691423366180289048.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P7982363121548833892

`A048152(A038722(n+1))`
-/

namespace A343720.P7982363121548833892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A038722 (n + 1)).toNat

end

end A343720.P7982363121548833892

namespace A343720

/-- `A048152(A038722(n+1))` -/
def P7982363121548833892.Spec : Prop :=
  ∀ n, P7982363121548833892.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P3488681808818326474

`A048152(A066182(n+1))`
-/

namespace A343720.P3488681808818326474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A066182 (n + 1)).toNat

end

end A343720.P3488681808818326474

namespace A343720

/-- `A048152(A066182(n+1))` -/
def P3488681808818326474.Spec : Prop :=
  ∀ n, P3488681808818326474.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P8230769006588410895

`A350037(A064801(n+1))`
-/

namespace A343720.P8230769006588410895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350037 (A064801 (n + 1)).toNat

end

end A343720.P8230769006588410895

namespace A343720

/-- `A350037(A064801(n+1))` -/
def P8230769006588410895.Spec : Prop :=
  ∀ n, P8230769006588410895.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P12280167451188842417

`A048152(A065033(2*n))`
-/

namespace A343720.P12280167451188842417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A065033 (2 * n)).toNat

end

end A343720.P12280167451188842417

namespace A343720

/-- `A048152(A065033(2*n))` -/
def P12280167451188842417.Spec : Prop :=
  ∀ n, P12280167451188842417.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P11798743569453953216

`A336302(A061885(n+1)-1)`
-/

namespace A343720.P11798743569453953216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336302 (A061885 (n + 1) - 1).toNat

end

end A343720.P11798743569453953216

namespace A343720

/-- `A336302(A061885(n+1)-1)` -/
def P11798743569453953216.Spec : Prop :=
  ∀ n, P11798743569453953216.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P5143961015383581560

`A336302(A004201(n+2)-2)`
-/

namespace A343720.P5143961015383581560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336302 (A004201 (n + 2) - 2).toNat

end

end A343720.P5143961015383581560

namespace A343720

/-- `A336302(A004201(n+2)-2)` -/
def P5143961015383581560.Spec : Prop :=
  ∀ n, P5143961015383581560.a n = A343720 (n + 1)

end A343720

/-! ## A343720.P3788622387021379294

`A048152(A002024(n+1)²-n)`
-/

namespace A343720.P3788622387021379294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A343720.P3788622387021379294

namespace A343720

/-- `A048152(A002024(n+1)²-n)` -/
def P3788622387021379294.Spec : Prop :=
  ∀ n, P3788622387021379294.a n = A343720 (n + 1)

end A343720

/-!
# A343721: a(n) is the number of starting residues r modulo n from which repeated iterations of the mapping r -> r^2 mod n reach a fixed point.

The programs for A343721, there is no canonical definition to state claims against.
-/

/-! ## A343721.P11096387533849416800

`1-A343722(1+n)+n`
-/

namespace A343721.P11096387533849416800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A343722 (1 + n) + (n : ℤ)

end

end A343721.P11096387533849416800

/-! ## A343721.P4257253065002912389

`A024000(A343722(n+1))+n`
-/

namespace A343721.P4257253065002912389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A343722 (n + 1)).toNat + (n : ℤ)

end

end A343721.P4257253065002912389

/-! ## A343721.P15268211456755147275

`-(A343722(n+1)+A001478(n+1))`
-/

namespace A343721.P15268211456755147275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A343722 (n + 1) + A001478 (n + 1))

end

end A343721.P15268211456755147275

/-! ## A343721.P17245448992476305180

`A029579(2*n)-A343722(A029579(2*n))`
-/

namespace A343721.P17245448992476305180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * n) - A343722 (A029579 (2 * n)).toNat

end

end A343721.P17245448992476305180

/-! ## A343721.P13289083937601735617

`A008620(3*n)-A343722(A008620(3*n))`
-/

namespace A343721.P13289083937601735617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) - A343722 (A008620 (3 * n)).toNat

end

end A343721.P13289083937601735617

/-! ## A343721.P5073425527635664208

`((n+1)*A016813(A343722(n+1)))%A016813(n+1)`
-/

namespace A343721.P5073425527635664208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * A016813 (A343722 (n + 1)).toNat) (A016813 (n + 1))

end

end A343721.P5073425527635664208

/-! ## A343721.P6805606214429726732

`A025581(A343722(n+1)+∑[n+1])`
-/

namespace A343721.P6805606214429726732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A343722 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A343721.P6805606214429726732

/-! ## A343721.P13697095812064002332

`A004736(A343722(n+1)+A000124(n))`
-/

namespace A343721.P13697095812064002332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A343722 (n + 1) + A000124 n).toNat

end

end A343721.P13697095812064002332

/-! ## A343721.P475631587603315324

`A004736(A343722(n+1)+A167614(n+1))`
-/

namespace A343721.P475631587603315324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A343722 (n + 1) + A167614 (n + 1)).toNat

end

end A343721.P475631587603315324

/-! ## A343721.P10047077417971435541

`1-4*A343723(n+1)+n`
-/

namespace A343721.P10047077417971435541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 4 * A343723 (n + 1) + (n : ℤ)

end

end A343721.P10047077417971435541

/-!
# A343722: a(n) is the number of starting residues r modulo n from which repeated iterations of the mapping r -> r^2 mod n never reach a fixed point.

The programs for A343722, there is no canonical definition to state claims against.
-/

/-! ## A343722.P1748477684436445421

`1-A343721(n+1)+n`
-/

namespace A343722.P1748477684436445421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A343721 (n + 1) + (n : ℤ)

end

end A343722.P1748477684436445421

/-! ## A343722.P11495841256942564306

`A005408(n)%(A343721(n+1)+n)`
-/

namespace A343722.P11495841256942564306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) (A343721 (n + 1) + (n : ℤ))

end

end A343722.P11495841256942564306

/-! ## A343722.P9139603486912132646

`(n*A343721(n+1))%A000027(n+1)`
-/

namespace A343722.P9139603486912132646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A343721 (n + 1)) (A000027 (n + 1))

end

end A343722.P9139603486912132646

/-! ## A343722.P13725692680298828317

`(A000096(n)*A343721(n+1))%(n+1)`
-/

namespace A343722.P13725692680298828317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 n * A343721 (n + 1)) (n + 1 : ℤ)

end

end A343722.P13725692680298828317

/-! ## A343722.P15216081840641326555

`∑[n+1]%(A343721(n+1)+A000217(n))`
-/

namespace A343722.P15216081840641326555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A343721 (n + 1) + A000217 n)

end

end A343722.P15216081840641326555

/-! ## A343722.P7005610662895728554

`A080513(2*n)-A343721(A080513(2*n))`
-/

namespace A343722.P7005610662895728554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n) - A343721 (A080513 (2 * n)).toNat

end

end A343722.P7005610662895728554

/-! ## A343722.P12714042151524141506

`4*A343723(n+1)`
-/

namespace A343722.P12714042151524141506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A343723 (n + 1)

end

end A343722.P12714042151524141506

/-! ## A343722.P14448960991188492790

`A008586(A343723(n+1))`
-/

namespace A343722.P14448960991188492790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A343723 (n + 1)).toNat

end

end A343722.P14448960991188492790

/-! ## A343722.P7670384886184557825

`A189917(A343723(n+1)+1)`
-/

namespace A343722.P7670384886184557825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189917 (A343723 (n + 1) + 1).toNat

end

end A343722.P7670384886184557825

/-! ## A343722.P8434210197901569148

`A008574(A343723(n+1)+n)-A008574(n)`
-/

namespace A343722.P8434210197901569148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A343723 (n + 1) + (n : ℤ)).toNat - A008574 n

end

end A343722.P8434210197901569148

/-!
# A343723: a(n) is 1/4 of the number of starting residues r modulo n from which repeated iterations of the mapping r -> r^2 mod n never reach a fixed point.

The programs for A343723, there is no canonical definition to state claims against.
-/

/-! ## A343723.P12490456626022943180

`A343722(n+1)/4`
-/

namespace A343723.P12490456626022943180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343722 (n + 1) : ℚ) / 4

end

end A343723.P12490456626022943180

/-! ## A343723.P2857280574698314423

`(1-A343721(n+1)+n)/4`
-/

namespace A343723.P2857280574698314423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A343721 (n + 1) + (n : ℤ) : ℚ) / 4

end

end A343723.P2857280574698314423

/-! ## A343723.P12073196853432135233

`A002265(A343722(n+1))`
-/

namespace A343723.P12073196853432135233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A343722 (n + 1)).toNat

end

end A343723.P12073196853432135233

/-! ## A343723.P11966055913947209117

`A110659(A343722(n+1)+1)`
-/

namespace A343723.P11966055913947209117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A343722 (n + 1) + 1).toNat

end

end A343723.P11966055913947209117

/-! ## A343723.P14525187147677993444

`A324245(A343722(n+1)+2)`
-/

namespace A343723.P14525187147677993444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324245 (A343722 (n + 1) + 2).toNat

end

end A343723.P14525187147677993444

/-! ## A343723.P533309919140574932

`A110656(A343722(2*(n+1)))`
-/

namespace A343723.P533309919140574932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A343722 (2 * (n + 1))).toNat

end

end A343723.P533309919140574932

/-! ## A343723.P93536172455751443

`A002265(1-A343721(n+1)+n)`
-/

namespace A343723.P93536172455751443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (1 - A343721 (n + 1) + (n : ℤ)).toNat

end

end A343723.P93536172455751443

/-! ## A343723.P8819890816456913980

`A110962(n+1-A343721(n+1))`
-/

namespace A343723.P8819890816456913980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 ((n + 1 : ℤ) - A343721 (n + 1)).toNat

end

end A343723.P8819890816456913980

/-!
# A343726: Squares with exactly one even digit.

The programs for A343726, there is no canonical definition to state claims against.
-/

/-! ## A343726.P8510700861540466097

`filter[n², A196563(#)]`
-/

namespace A343726.P8510700861540466097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A196563 (f1 j) = 1) n)

end

end A343726.P8510700861540466097

/-! ## A343726.P1441121028675670228

`eq[1, A196563(n²)]²`
-/

namespace A343726.P1441121028675670228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A343726.P1441121028675670228

/-! ## A343726.P13432117387048930055

`eq[A084606(n), A196563(n)]`
-/

namespace A343726.P13432117387048930055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084606 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343726.P13432117387048930055

/-! ## A343726.P12308928968933208807

`eq[A084608(n), A196563(n)]`
-/

namespace A343726.P12308928968933208807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343726.P12308928968933208807

/-! ## A343726.P16891480051089521216

`eq[A108443(n), A196563(n)]`
-/

namespace A343726.P16891480051089521216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343726.P16891480051089521216

/-!
# A343727: Numbers with all digits odd whose squares have only one odd digit.

The programs for A343727, there is no canonical definition to state claims against.
-/

/-! ## A343727.P8671698895360160976

`∩[A014261(n+1), A030477(n+1)]`
-/

namespace A343727.P8671698895360160976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343727.P8671698895360160976

/-! ## A343727.P6855865248460538852

`eq[1, A103181(A059707(n)²)]`
-/

namespace A343727.P6855865248460538852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A059707 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343727.P6855865248460538852

/-! ## A343727.P14522549038965951203

`eq[1, A103181(n*A059707(n))]`
-/

namespace A343727.P14522549038965951203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 ((n : ℤ) * A059707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343727.P14522549038965951203

/-! ## A343727.P18238188442531155220

`∑[A327038(A373986(n+1))]`
-/

namespace A343727.P18238188442531155220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327038 (A373986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343727.P18238188442531155220

/-! ## A343727.P3699945616824236490

`∑[gcd(A217799(n), A218294(n))]`
-/

namespace A343727.P3699945616824236490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A217799 n) (A218294 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343727.P3699945616824236490

/-!
# A343729: a(n) is the smallest number that starts a run of exactly n consecutive integers that are neither primes nor semiprimes.

The programs for A343729, there is no canonical definition to state claims against.
-/

/-! ## A343729.P16081945760936939757

`A278351(n+2)+1`
-/

namespace A343729.P16081945760936939757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278351 (n + 2) + 1

end

end A343729.P16081945760936939757

/-! ## A343729.P6470011259685818470

`A278404(2+n)-(n+1)`
-/

namespace A343729.P6470011259685818470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278404 (2 + n) - (n + 1 : ℤ)

end

end A343729.P6470011259685818470

/-! ## A343729.P17102611448688785557

`A325971(A278351(n+2))`
-/

namespace A343729.P17102611448688785557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325971 (A278351 (n + 2)).toNat

end

end A343729.P17102611448688785557

/-! ## A343729.P10062524850442960447

`A020725(A278351(n+2))`
-/

namespace A343729.P10062524850442960447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A278351 (n + 2)).toNat

end

end A343729.P10062524850442960447

/-! ## A343729.P1777486633913665191

`A023443(A278404(n+2)-n)`
-/

namespace A343729.P1777486633913665191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A278404 (n + 2) - (n : ℤ)).toNat

end

end A343729.P1777486633913665191

/-!
# A343731: Numbers k at which tau(k^k) reaches a record high, where tau is the number-of-divisors function A000005.

The programs for A343731, there is no canonical definition to state claims against.
-/

/-! ## A343731.P7320260577017385647

`lt[A046092(n), (A048785(n)+1)²]`
-/

namespace A343731.P7320260577017385647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048785 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343731.P7320260577017385647

/-! ## A343731.P15130261633225992338

`lt[A040976(n+1), A226602(n²)]`
-/

namespace A343731.P15130261633225992338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226602 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343731.P15130261633225992338

/-! ## A343731.P2371828368458227278

`lt[A029927(A225530(n)), A063905(n+1)]`
-/

namespace A343731.P2371828368458227278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029927 (A225530 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063905 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343731.P2371828368458227278

/-! ## A343731.P12440859798488491353

`lt[A000132(2*n+1), A000132(A014452(2*n+3))]`
-/

namespace A343731.P12440859798488491353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000132 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000132 (A014452 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343731.P12440859798488491353

/-! ## A343731.P7070039408509710536

`lt[A007093(n), ∏{e}[A000578(n), #+1]]`
-/

namespace A343731.P7070039408509710536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, (Nat.factorization (f3 n).natAbs p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A343731.P7070039408509710536

/-!
# A343732: Numbers k at which tau(k^k) is a prime power, where tau is the number-of-divisors function A000005.

The programs for A343732, there is no canonical definition to state claims against.
-/

/-! ## A343732.P1292335433927735948

`eq[1, A001221(∏{e}[n, n*#+1])]`
-/

namespace A343732.P1292335433927735948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f3 n), (n * Nat.factorization (f3 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343732.P1292335433927735948

/-! ## A343732.P13336105924087956155

`eq[1, A001221(∏{p}[n, n*val(n, #)+1])]`
-/

namespace A343732.P13336105924087956155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f3 n), (n * SequenceMachineLib.valuation n p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343732.P13336105924087956155

/-! ## A343732.P15236583973196034469

`eq[∏{e}[n, n*#+1], A008475(∏{e}[n, n*#+1])]`
-/

namespace A343732.P15236583973196034469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (n * Nat.factorization (f2 n) p + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f4 n), (n * Nat.factorization (f4 n) p + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A343732.P15236583973196034469

/-! ## A343732.P13391337834656875881

`eq[1, A001221(A062319(n))]`
-/

namespace A343732.P13391337834656875881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A062319 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A343732.P13391337834656875881

/-! ## A343732.P14696822817929876869

`eq[A008475(∏{e}[n, n*#+1]), A062319(n)]`
-/

namespace A343732.P14696822817929876869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (∏ p ∈ Nat.primeFactors (f2 n), (n * Nat.factorization (f2 n) p + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062319 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A343732.P14696822817929876869

/-!
# A343733: Primes p at which tau(p^p) is a prime power, where tau is the number-of-divisors function A000005.

The programs for A343733, there is no canonical definition to state claims against.
-/

/-! ## A343733.P15061362506109543865

`record[A332211(n+1)]`
-/

namespace A343733.P15061362506109543865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343733.P15061362506109543865

/-! ## A343733.P5361962517239819120

`A191611(n+1)-C(2, n)²`
-/

namespace A343733.P5361962517239819120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191611 (n + 1) - (Nat.choose 2 n ^ 2 : ℤ)

end

end A343733.P5361962517239819120

/-! ## A343733.P4543529167296933984

`record[A332212(A151800(n))]`
-/

namespace A343733.P4543529167296933984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343733.P4543529167296933984

/-! ## A343733.P3229999997395172491

`record[A332212(A000040(n+1))]`
-/

namespace A343733.P3229999997395172491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343733.P3229999997395172491

/-! ## A343733.P12432000988050811612

`record[A358415(A006530(n+1))]`
-/

namespace A343733.P12432000988050811612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358415 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343733.P12432000988050811612

/-!
# A343734: Highly composite 5-rough numbers: numbers that are divisible by neither 2 nor 3 whose number of divisors reaches a record.

The programs for A343734, there is no canonical definition to state claims against.
-/

/-! ## A343734.P12448352246209696021

`filter[A393012(n+1), A212793(#)]`
-/

namespace A343734.P12448352246209696021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A343734.P12448352246209696021

/-! ## A343734.P11181407465263562829

`A361615(A115422(n+1))`
-/

namespace A343734.P11181407465263562829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361615 (A115422 (n + 1)).toNat

end

end A343734.P11181407465263562829

/-! ## A343734.P17429704185586223664

`A361615(A344472(n+1))`
-/

namespace A343734.P17429704185586223664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361615 (A344472 (n + 1)).toNat

end

end A343734.P17429704185586223664

/-! ## A343734.P1867534059149145525

`A361615(A364295(n+1))`
-/

namespace A343734.P1867534059149145525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361615 (A364295 (n + 1)).toNat

end

end A343734.P1867534059149145525

/-! ## A343734.P4544599201323188517

`A361615(A364494(n+1))`
-/

namespace A343734.P4544599201323188517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361615 (A364494 (n + 1)).toNat

end

end A343734.P4544599201323188517

/-!
# A343735: Odd palindromes having more divisors than all smaller odd palindromes.

The programs for A343735, there is no canonical definition to state claims against.
-/

/-! ## A343735.P11425708300192647949

`∑[∑[A049417(A245502(n))]]`
-/

namespace A343735.P11425708300192647949
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049417 (A245502 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343735.P11425708300192647949

/-! ## A343735.P12119294170802632365

`A071053(n*A290358(n))`
-/

namespace A343735.P12119294170802632365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 ((n : ℤ) * A290358 n).toNat

end

end A343735.P12119294170802632365

/-!
# A343736: a(n) is the number of divisors of A343735(n).

The programs for A343736, there is no canonical definition to state claims against.
-/

/-! ## A343736.P2037406578838946093

`A000005(A343735(n+1))`
-/

namespace A343736.P2037406578838946093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A343735 (n + 1)).toNat

end

end A343736.P2037406578838946093

/-! ## A343736.P10056129493054977622

`∏{e}[A343735(n+1), A000040(#)]`
-/

namespace A343736.P10056129493054977622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)

end

end A343736.P10056129493054977622

/-! ## A343736.P3877679113394588212

`∩[A192416(n+1), A355578(n+1)]`
-/

namespace A343736.P3877679113394588212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343736.P3877679113394588212

/-! ## A343736.P2856801884885281282

`eq[A232988(n), A349497(n+1)]`
-/

namespace A343736.P2856801884885281282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232988 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349497 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A343736.P2856801884885281282

/-! ## A343736.P8015043397079113109

`A003586(∑[A329314(∑[n+1])])`
-/

namespace A343736.P8015043397079113109
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329314 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343736.P8015043397079113109

/-!
# A343737: Highly composite 7-rough numbers: numbers that are not divisible by any prime smaller than 7 and whose number of divisors reaches a record.

The programs for A343737, there is no canonical definition to state claims against.
-/

/-! ## A343737.P518533437957771964

`record[A337375(A044237(n+1))]`
-/

namespace A343737.P518533437957771964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 (A044237 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343737.P518533437957771964

/-! ## A343737.P3106503415590382850

`A003961(A343734(n+1))`
-/

namespace A343737.P3106503415590382850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A343734 (n + 1)).toNat

end

end A343737.P3106503415590382850

/-! ## A343737.P7493626678171616201

`A118306(A343747(n+1)+A343734(n+1))`
-/

namespace A343737.P7493626678171616201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118306 (A343747 (n + 1) + A343734 (n + 1)).toNat

end

end A343737.P7493626678171616201

/-! ## A343737.P16929942867862055325

`A003961(A054124(n)*A279541(n+1))`
-/

namespace A343737.P16929942867862055325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A054124 n * A279541 (n + 1)).toNat

end

end A343737.P16929942867862055325

/-!
# A343741: Record high values in A343740.

The programs for A343741, there is no canonical definition to state claims against.
-/

/-! ## A343741.P12941155943056076282

`record[A384923(n+1)]`
-/

namespace A343741.P12941155943056076282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343741.P12941155943056076282

/-!
# A343743: a(n) is the largest base in which the order of the Monster group has (47 - n) zeros; alternatively, radicals of maximal powers dividing the order of the Monster group.

The programs for A343743, there is no canonical definition to state claims against.
-/

/-! ## A343743.P13891847999103376372

`A237520(A038548(∏[A184257(n+1)]))`
-/

namespace A343743.P13891847999103376372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184257 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (A038548 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A343743.P13891847999103376372

/-! ## A343743.P7955293574081073553

`A098069(A013941(n+1)!)`
-/

namespace A343743.P7955293574081073553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098069 (Nat.factorial (A013941 (n + 1)).toNat)

end

end A343743.P7955293574081073553

/-! ## A343743.P1771040241978687500

`A105681(A013941(n+1)!)`
-/

namespace A343743.P1771040241978687500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105681 (Nat.factorial (A013941 (n + 1)).toNat)

end

end A343743.P1771040241978687500

/-! ## A343743.P11886903424232189699

`A131308(∏[A062378(n+1)])`
-/

namespace A343743.P11886903424232189699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343743.P11886903424232189699

/-! ## A343743.P7816013539538790362

`A098069(∏[A055229(n+1)!])`
-/

namespace A343743.P7816013539538790362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A055229 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098069 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A343743.P7816013539538790362

/-!
# A343744: Zuckerman numbers which divided by the product of their digits give integers which are also divisible by the product of their digits, and so on, until result is 1.

The programs for A343744, there is no canonical definition to state claims against.
-/

/-! ## A343744.P4518922631778606444

`∩[A048737(n+1), A343681(n+1)]`
-/

namespace A343744.P4518922631778606444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048737 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343744.P4518922631778606444

/-! ## A343744.P16892294142274287832

`record[A071785(A343681(n+1))]`
-/

namespace A343744.P16892294142274287832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A343681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343744.P16892294142274287832

/-! ## A343744.P16355999260011423873

`filter[A343681(n+1), A086299(#)]`
-/

namespace A343744.P16355999260011423873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343681 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A343744.P16355999260011423873

/-! ## A343744.P7900584766556443313

`∩[A241158(n+1), A343681(n+1)]`
-/

namespace A343744.P7900584766556443313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343744.P7900584766556443313

/-! ## A343744.P17837999449901774787

`∩[A337230(n+1), A343681(n+1)]`
-/

namespace A343744.P17837999449901774787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343744.P17837999449901774787

/-!
# A343747: The x coordinates of the points visited by a knight on a 3D cubic lattice using the step rules given in A343678.

The programs for A343747, there is no canonical definition to state claims against.
-/

/-! ## A343747.P2216500998565969249

`A343746(3*n+1)`
-/

namespace A343747.P2216500998565969249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343746 (3 * n + 1)

end

end A343747.P2216500998565969249

/-! ## A343747.P10821385730551486566

`A343746(A016777(n))%4`
-/

namespace A343747.P10821385730551486566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343746 (A016777 n).toNat) 4

end

end A343747.P10821385730551486566

/-! ## A343747.P17574765580264387309

`A343746(A033627(n+2))%4`
-/

namespace A343747.P17574765580264387309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343746 (A033627 (n + 2)).toNat) 4

end

end A343747.P17574765580264387309

/-! ## A343747.P6897601119819568995

`A343746(record[A123684(n+1)])%4`
-/

namespace A343747.P6897601119819568995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343746 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 4

end

end A343747.P6897601119819568995

/-! ## A343747.P12183878684944552515

`A007318(∑[n])*A343746(A016777(n))`
-/

namespace A343747.P12183878684944552515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A343746 (A016777 n).toNat

end

end A343747.P12183878684944552515

/-!
# A343748: The y coordinates of the points visited by a knight on a 3D cubic lattice using the step rules given in A343678.

The programs for A343748, there is no canonical definition to state claims against.
-/

/-! ## A343748.P14115974873117902248

`A343746(3*n+2)`
-/

namespace A343748.P14115974873117902248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343746 (3 * n + 2)

end

end A343748.P14115974873117902248

/-! ## A343748.P2845415948270740224

`A343746(A016789(n))%5`
-/

namespace A343748.P2845415948270740224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343746 (A016789 n).toNat) 5

end

end A343748.P2845415948270740224

/-! ## A343748.P18197952394646837666

`A007318(∑[n])*A343746(A016789(n))`
-/

namespace A343748.P18197952394646837666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A343746 (A016789 n).toNat

end

end A343748.P18197952394646837666

/-! ## A343748.P14791074877417771984

`char[A007306(n)]*A343746(A016789(n))`
-/

namespace A343748.P14791074877417771984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A343746 (A016789 n).toNat

end

end A343748.P14791074877417771984

/-! ## A343748.P14816099240757872586

`char[A007318(n)]*A343746(A016789(n))`
-/

namespace A343748.P14816099240757872586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A343746 (A016789 n).toNat

end

end A343748.P14816099240757872586

/-!
# A343749: The z coordinates of the points visited by a knight on a 3D cubic lattice using the step rules given in A343678.

The programs for A343749, there is no canonical definition to state claims against.
-/

/-! ## A343749.P13448950350095010318

`A343746(3*(n+1))`
-/

namespace A343749.P13448950350095010318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343746 (3 * (n + 1))

end

end A343749.P13448950350095010318

/-! ## A343749.P15582172381623208359

`A343746(A008486(n+1))%4`
-/

namespace A343749.P15582172381623208359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343746 (A008486 (n + 1)).toNat) 4

end

end A343749.P15582172381623208359

/-! ## A343749.P5008800727384391790

`A343746(A008486(n+1))/A007318(∑[n])`
-/

namespace A343749.P5008800727384391790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343746 (A008486 (n + 1)).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A343749.P5008800727384391790

/-! ## A343749.P3325325319531355506

`A343746(A008486(n+1))^A007318(C(6, n))`
-/

namespace A343749.P3325325319531355506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343746 (A008486 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 6 n) : ℤ)

end

end A343749.P3325325319531355506

/-! ## A343749.P13663546661603064871

`A343746(A008486(n+1))+char[A000041(n+9)]`
-/

namespace A343749.P13663546661603064871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 9)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343746 (A008486 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343749.P13663546661603064871

/-!
# A343750: Let S be the set of all numbers that can be obtained by permuting the digits of n (leading zeros can be omitted). Then a(n) is that element of S with the smallest number of divisors. In case of a tie, choose the smallest.

The programs for A343750, there is no canonical definition to state claims against.
-/

/-! ## A343750.P954771725179967109

`A107603(A004151(n+1))%A241489(n+3)`
-/

namespace A343750.P954771725179967109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107603 (A004151 (n + 1)).toNat) (A241489 (n + 3))

end

end A343750.P954771725179967109

/-! ## A343750.P4120077053021650804

`A107603(A004151(n+1)%A109098(n+1))`
-/

namespace A343750.P4120077053021650804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107603 (Int.tmod (A004151 (n + 1)) (A109098 (n + 1))).toNat

end

end A343750.P4120077053021650804

/-! ## A343750.P10515197344497187839

`A107603(A004151(n+1))%A108098(A005408(n))`
-/

namespace A343750.P10515197344497187839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107603 (A004151 (n + 1)).toNat) (A108098 (A005408 n).toNat)

end

end A343750.P10515197344497187839

/-! ## A343750.P77871635674147863

`A107603(n+1)%A137202(A004151(n+1))`
-/

namespace A343750.P77871635674147863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107603 (n + 1)) (A137202 (A004151 (n + 1)).toNat)

end

end A343750.P77871635674147863

/-! ## A343750.P2698728998290891538

`A161594(n+1)%A048290(A088178(n+3))`
-/

namespace A343750.P2698728998290891538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161594 (n + 1)) (A048290 (A088178 (n + 3)).toNat)

end

end A343750.P2698728998290891538

/-!
# A343751: A(n,k) is the sum of all compositions [c_1, c_2, ..., c_k] of n into k nonnegative parts encoded as Product_{i=1..k} prime(i)^(c_i); square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A343751, there is no canonical definition to state claims against.
-/

/-! ## A343751.P16956048709617130227

`A127321(A022171(n)*A119339(n))`
-/

namespace A343751.P16956048709617130227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A022171 n * A119339 n).toNat

end

end A343751.P16956048709617130227

/-! ## A343751.P16061265670524360797

`A031285(A141021(n)+A071921(n)²)-2`
-/

namespace A343751.P16061265670524360797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A141021 n + A071921 n ^ 2).toNat - 2

end

end A343751.P16061265670524360797

/-! ## A343751.P14811100105026602387

`xor(A174875(A270701(n+1)), A202549(n+1))`
-/

namespace A343751.P14811100105026602387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A174875 (A270701 (n + 1)).toNat) (A202549 (n + 1))

end

end A343751.P14811100105026602387

/-! ## A343751.P1531628358176904554

`A359043(A277410(n+1))`
-/

namespace A343751.P1531628358176904554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (A277410 (n + 1)).toNat

end

end A343751.P1531628358176904554

/-! ## A343751.P1000859532052519507

`A259016(2*A176129(n))`
-/

namespace A343751.P1000859532052519507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259016 (2 * A176129 n).toNat

end

end A343751.P1000859532052519507

/-!
# A343752: a(1) = 1; for n > 1, a(n) = n if a(n-1) is divisible by n, otherwise a(n) = a(n-1)+n.

The programs for A343752, the canonical program `A343752.P15498230505190100503` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343752 has offset 1).

The definition of A343752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343752.P15498230505190100503

`∑[(n+1)*Δ[A094727(n+1)]]`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A343752

/-- `∑[(n+1)*Δ[A094727(n+1)]]` -/
def P15498230505190100503.Spec : Prop :=
  ∀ n, P15498230505190100503.a n = A343752 (n + 1)

theorem P15498230505190100503.correct : P15498230505190100503.Spec := by
  intro n
  simp only [A343752, Nat.add_sub_cancel]

end A343752

/-! ## A343752.P12439061745840631198

`A061885(n+1)/2*A002260(n+2)`
-/

namespace A343752.P12439061745840631198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061885 (n + 1) : ℚ) / 2 * (A002260 (n + 2) : ℚ)

end

end A343752.P12439061745840631198

namespace A343752

/-- `A061885(n+1)/2*A002260(n+2)` -/
def P12439061745840631198.Spec : Prop :=
  ∀ n, P12439061745840631198.a n = (A343752 (n + 1) : ℚ)

end A343752

/-! ## A343752.P17018429746379423358

`A000217(n+1)-A000217(n+1-A002260(n+2))`
-/

namespace A343752.P17018429746379423358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) - A000217 ((n + 1 : ℤ) - A002260 (n + 2)).toNat

end

end A343752.P17018429746379423358

namespace A343752

/-- `A000217(n+1)-A000217(n+1-A002260(n+2))` -/
def P17018429746379423358.Spec : Prop :=
  ∀ n, P17018429746379423358.a n = A343752 (n + 1)

end A343752

/-! ## A343752.P17150887446392565081

`∑[(n+1)*Δ[A051162(n)]]`
-/

namespace A343752.P17150887446392565081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343752.P17150887446392565081

namespace A343752

/-- `∑[(n+1)*Δ[A051162(n)]]` -/
def P17150887446392565081.Spec : Prop :=
  ∀ n, P17150887446392565081.a n = A343752 (n + 1)

theorem P17150887446392565081.correct : P17150887446392565081.Spec := by
  intro n
  simp only [A343752, Nat.add_sub_cancel, A343752.P17150887446392565081.f2, A343752.P17150887446392565081.f1, A343752.P17150887446392565081.a, A343752.P15498230505190100503.f2, A343752.P15498230505190100503.f1, A343752.P15498230505190100503.a, A051162, A051162.P4484969187050632534.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343752

/-! ## A343752.P3216964274525936062

`a(n-1)*Δ[A122797(n+1)]+n+1` with `a(0)=1`
-/

namespace A343752.P3216964274525936062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n) + (n + 1 : ℤ)

end

end A343752.P3216964274525936062

namespace A343752

/-- `a(n-1)*Δ[A122797(n+1)]+n+1` -/
def P3216964274525936062.Spec : Prop :=
  ∀ n, P3216964274525936062.a n = A343752 (n + 1)

end A343752

/-! ## A343752.P1857918196066239366

`∑[(n+1)*(A051162(n+1)-A051162(n))]`
-/

namespace A343752.P1857918196066239366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A051162 (n + 1) - A051162 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343752.P1857918196066239366

namespace A343752

/-- `∑[(n+1)*(A051162(n+1)-A051162(n))]` -/
def P1857918196066239366.Spec : Prop :=
  ∀ n, P1857918196066239366.a n = A343752 (n + 1)

theorem P1857918196066239366.correct : P1857918196066239366.Spec := by
  intro n
  simp only [A343752, Nat.add_sub_cancel, A343752.P1857918196066239366.f1, A343752.P1857918196066239366.a, A343752.P15498230505190100503.f2, A343752.P15498230505190100503.f1, A343752.P15498230505190100503.a, A051162, A051162.P4484969187050632534.a, A094727, A094727.P1041695477673985807.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343752

/-! ## A343752.P6466826028465615315

`A141419(A002260(n+2)+∑[n])`
-/

namespace A343752.P6466826028465615315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (A002260 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A343752.P6466826028465615315

namespace A343752

/-- `A141419(A002260(n+2)+∑[n])` -/
def P6466826028465615315.Spec : Prop :=
  ∀ n, P6466826028465615315.a n = A343752 (n + 1)

end A343752

/-! ## A343752.P14346083737924183375

`A049777(A000217(n+1)-A002262(n+1))`
-/

namespace A343752.P14346083737924183375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049777 (A000217 (n + 1) - A002262 (n + 1)).toNat

end

end A343752.P14346083737924183375

namespace A343752

/-- `A049777(A000217(n+1)-A002262(n+1))` -/
def P14346083737924183375.Spec : Prop :=
  ∀ n, P14346083737924183375.a n = A343752 (n + 1)

end A343752

/-! ## A343752.P15221667098446052253

`∑[(A127949(n+1)-n)*A127949(n+1)]`
-/

namespace A343752.P15221667098446052253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A127949 (n + 1) - (n : ℤ)) * A127949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343752.P15221667098446052253

namespace A343752

/-- `∑[(A127949(n+1)-n)*A127949(n+1)]` -/
def P15221667098446052253.Spec : Prop :=
  ∀ n, P15221667098446052253.a n = A343752 (n + 1)

end A343752

/-!
# A343753: Number of partitions of prime(n) containing a prime number of primes.

The programs for A343753, there is no canonical definition to state claims against.
-/

/-! ## A343753.P12683220942631969815

`A344677(A000040(n+1))`
-/

namespace A343753.P12683220942631969815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (A000040 (n + 1)).toNat

end

end A343753.P12683220942631969815

/-! ## A343753.P9195117420486803619

`A344677(A006005(n+1))`
-/

namespace A343753.P9195117420486803619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (A006005 (n + 1)).toNat

end

end A343753.P9195117420486803619

/-! ## A343753.P13747555464807077360

`A344677(A171577(n+1))`
-/

namespace A343753.P13747555464807077360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (A171577 (n + 1)).toNat

end

end A343753.P13747555464807077360

/-! ## A343753.P11151137196305237979

`A344677(A008578(n+2))`
-/

namespace A343753.P11151137196305237979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (A008578 (n + 2)).toNat

end

end A343753.P11151137196305237979

/-! ## A343753.P7446192909882152740

`A344677(A075643(n+2))`
-/

namespace A343753.P7446192909882152740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (A075643 (n + 2)).toNat

end

end A343753.P7446192909882152740

/-! ## A343753.P11984240371001074677

`A344677(A171525(n+2))`
-/

namespace A343753.P11984240371001074677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (A171525 (n + 2)).toNat

end

end A343753.P11984240371001074677

/-! ## A343753.P13629223934822425432

`A344677(A182986(n+2))`
-/

namespace A343753.P13629223934822425432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (A182986 (n + 2)).toNat

end

end A343753.P13629223934822425432

/-! ## A343753.P12267411920846681104

`A344677(eq[1, A003415(n)])`
-/

namespace A343753.P12267411920846681104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A343753.P12267411920846681104

/-! ## A343753.P10827669926328159273

`A344677(record[A006530(n+2)])`
-/

namespace A343753.P10827669926328159273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343753.P10827669926328159273

/-! ## A343753.P6794009322016844314

`A344677(record[A014963(n+2)])`
-/

namespace A343753.P6794009322016844314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343753.P6794009322016844314

/-! ## A343753.P10180075988713552704

`A344677(record[A020639(n+2)])`
-/

namespace A343753.P10180075988713552704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343753.P10180075988713552704

/-! ## A343753.P9385597374567439245

`A344677(A070750(n+1)*A073579(n+1))`
-/

namespace A343753.P9385597374567439245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344677 (A070750 (n + 1) * A073579 (n + 1)).toNat

end

end A343753.P9385597374567439245

/-!
# A343754: a(0) = 0, and for any n > 0, a(n+1) = a(n) - A065363(n+1) + 1.

The programs for A343754, the canonical program `A343754.P7504119164661584635` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343754 has offset 0).

The definition of A343754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343754.P7504119164661584635

`n-A174574(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343754

/-- `n-A174574(n)` -/
def P7504119164661584635.Spec : Prop :=
  ∀ n, P7504119164661584635.a n = A343754 n

theorem P7504119164661584635.correct : P7504119164661584635.Spec := by
  intro n
  simp only [A343754]

end A343754

/-! ## A343754.P15207319843068974710

`n-∑[A065363(n)]`
-/

namespace A343754.P15207319843068974710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343754.P15207319843068974710

namespace A343754

/-- `n-∑[A065363(n)]` -/
def P15207319843068974710.Spec : Prop :=
  ∀ n, P15207319843068974710.a n = A343754 n

end A343754

/-! ## A343754.P1470359772011163513

`∑[n-A350229(n)]+n`
-/

namespace A343754.P1470359772011163513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A350229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A343754.P1470359772011163513

namespace A343754

/-- `∑[n-A350229(n)]+n` -/
def P1470359772011163513.Spec : Prop :=
  ∀ n, P1470359772011163513.a n = A343754 n

end A343754

/-! ## A343754.P3948634598485675904

`n-∑[n-∑[2*A253786(n)]]`
-/

namespace A343754.P3948634598485675904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253786 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343754.P3948634598485675904

namespace A343754

/-- `n-∑[n-∑[2*A253786(n)]]` -/
def P3948634598485675904.Spec : Prop :=
  ∀ n, P3948634598485675904.a n = A343754 n

end A343754

/-! ## A343754.P11529820237295112043

`A001489(∑[A065363(n)])+n`
-/

namespace A343754.P11529820237295112043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A343754.P11529820237295112043

namespace A343754

/-- `A001489(∑[A065363(n)])+n` -/
def P11529820237295112043.Spec : Prop :=
  ∀ n, P11529820237295112043.a n = A343754 n

end A343754

/-! ## A343754.P10094964164568163479

`∑[A134022(n)-A134024(n)]+n`
-/

namespace A343754.P10094964164568163479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134022 n - A134024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A343754.P10094964164568163479

namespace A343754

/-- `∑[A134022(n)-A134024(n)]+n` -/
def P10094964164568163479.Spec : Prop :=
  ∀ n, P10094964164568163479.a n = A343754 n

end A343754

/-! ## A343754.P1021598542081712122

`A035327(A035327(n)+∑[A065363(n)])`
-/

namespace A343754.P1021598542081712122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (A035327 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343754.P1021598542081712122

namespace A343754

/-- `A035327(A035327(n)+∑[A065363(n)])` -/
def P1021598542081712122.Spec : Prop :=
  ∀ n, P1021598542081712122.a n = A343754 n

end A343754

/-! ## A343754.P17238092423278131192

`n-∑[A065359(A006288(n))]`
-/

namespace A343754.P17238092423278131192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (A006288 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A343754.P17238092423278131192

namespace A343754

/-- `n-∑[A065359(A006288(n))]` -/
def P17238092423278131192.Spec : Prop :=
  ∀ n, P17238092423278131192.a n = A343754 n

end A343754

/-! ## A343754.P12459979983172729844

`val(A131889(n), 3)`
-/

namespace A343754.P12459979983172729844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A131889 n).toNat 3

end

end A343754.P12459979983172729844

namespace A343754

/-- `val(A131889(n), 3)` -/
def P12459979983172729844.Spec : Prop :=
  ∀ n, (P12459979983172729844.a n : ℤ) = A343754 n

end A343754

/-!
# A343755: Number of regions formed by infinite lines when connecting all vertices and all points that divide the sides of an equilateral triangle into n equal parts.

The programs for A343755, there is no canonical definition to state claims against.
-/

/-! ## A343755.P14262597105321723629

`A344279(n+1)+A145979(A003215(n))`
-/

namespace A343755.P14262597105321723629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344279 (n + 1) + A145979 (A003215 n).toNat

end

end A343755.P14262597105321723629

/-! ## A343755.P6341804521074953272

`A344279(n+1)+A008486(A016825(∑[n]))`
-/

namespace A343755.P6341804521074953272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344279 (n + 1) + A008486 (A016825 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A343755.P6341804521074953272

/-! ## A343755.P455395327439735040

`A344279(n+1)+A145979(∑[A008458(n)])`
-/

namespace A343755.P455395327439735040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344279 (n + 1) + A145979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343755.P455395327439735040

/-! ## A343755.P17476885814095725933

`A344279(n+1)+A016825(A005448(n+1))`
-/

namespace A343755.P17476885814095725933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344279 (n + 1) + A016825 (A005448 (n + 1)).toNat

end

end A343755.P17476885814095725933

/-! ## A343755.P9744281491111947857

`A344279(n+1)+A008486(A051890(n+1))`
-/

namespace A343755.P9744281491111947857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344279 (n + 1) + A008486 (A051890 (n + 1)).toNat

end

end A343755.P9744281491111947857

/-!
# A343756: Number of nondecreasing sequences s1, s2, ..., s_n of powers of 2 such that s_i <= 1 + Sum_{j=1..i-1} s_j.

The programs for A343756, there is no canonical definition to state claims against.
-/

/-! ## A343756.P15902660428214969998

`A329276(n)-A121373(A019298(3*(n+1)))`
-/

namespace A343756.P15902660428214969998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329276 n - A121373 (A019298 (3 * (n + 1))).toNat

end

end A343756.P15902660428214969998

/-! ## A343756.P3030070000952476629

`A329276(A046469(n))`
-/

namespace A343756.P3030070000952476629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329276 (A046469 n).toNat

end

end A343756.P3030070000952476629

/-! ## A343756.P4161376727703266742

`A329276(A087036(n))`
-/

namespace A343756.P4161376727703266742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329276 (A087036 n).toNat

end

end A343756.P4161376727703266742

/-! ## A343756.P3420339209237203983

`A329276(A087051(n))`
-/

namespace A343756.P3420339209237203983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329276 (A087051 n).toNat

end

end A343756.P3420339209237203983

/-! ## A343756.P4519347127855042296

`A329276(n)%A132183(n)`
-/

namespace A343756.P4519347127855042296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329276 n) (A132183 n)

end

end A343756.P4519347127855042296

/-!
# A343757: Irregular table read by rows; the n-th row contains the sums of distinct terms of the n-th row of table A343835, in ascending order.

The programs for A343757, there is no canonical definition to state claims against.
-/

/-! ## A343757.P16697915440647483184

`A080099(eq[A080098(n), A341839(n)])`
-/

namespace A343757.P16697915440647483184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343757.P16697915440647483184

/-! ## A343757.P2740528631424263117

`A002262(eq[A003056(n), A341839(n)])`
-/

namespace A343757.P2740528631424263117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343757.P2740528631424263117

/-! ## A343757.P11363028595503810286

`A002262(eq[A080098(n), A341839(n)])`
-/

namespace A343757.P11363028595503810286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343757.P11363028595503810286

/-! ## A343757.P12104344599711205757

`A080099(eq[A003056(n), A341839(n)])`
-/

namespace A343757.P12104344599711205757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080099 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343757.P12104344599711205757

/-! ## A343757.P917686994595623159

`A268040(eq[A003056(n), A341839(n)])`
-/

namespace A343757.P917686994595623159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A343757.P917686994595623159

/-!
# A343758: Total area of all p X r rectangles, where n = p + r, p <= r, p is prime and r is a positive integer.

The programs for A343758, there is no canonical definition to state claims against.
-/

/-! ## A343758.P15963762809271627595

`A342711(n)%A006530(A155602(n))`
-/

namespace A343758.P15963762809271627595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342711 n) (A006530 (A155602 n).toNat)

end

end A343758.P15963762809271627595

/-!
# A343759: Total area of all p X r rectangles where n = p + r, p < r, p is prime and r is a positive integer.

The programs for A343759, there is no canonical definition to state claims against.
-/

/-! ## A343759.P16561302816918204191

`∑[A167985(n+3)]%A084621(n+1)`
-/

namespace A343759.P16561302816918204191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167985 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A084621 (n + 1))

end

end A343759.P16561302816918204191

/-!
# A343760: Numbers whose digits can be the lengths of the sides of a polygon.

The programs for A343760, there is no canonical definition to state claims against.
-/

/-! ## A343760.P17813798384300840414

`lt[2*A054055(n), A007953(n)]`
-/

namespace A343760.P17813798384300840414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343760.P17813798384300840414

/-! ## A343760.P12722955328510698353

`lt[A054055(n), (A062028(n)-n)/2]`
-/

namespace A343760.P12722955328510698353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062028 n - (n : ℤ) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A343760.P12722955328510698353

/-! ## A343760.P15717099548245006978

`lt[A054055(n), A110654(A007953(n))]`
-/

namespace A343760.P15717099548245006978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343760.P15717099548245006978

/-! ## A343760.P40978070257125546

`lt[A054055(n), A334201(A113581(n))]`
-/

namespace A343760.P40978070257125546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334201 (A113581 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343760.P40978070257125546

/-! ## A343760.P15994488094094980815

`lt[A054055(n), A169805(n)/2-A054055(n)]`
-/

namespace A343760.P15994488094094980815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 n : ℚ) / 2 - (A054055 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A343760.P15994488094094980815

/-!
# A343763: Common prime factors of A007663(183)/1093 and A007663(490)/3511.

The programs for A343763, there is no canonical definition to state claims against.
-/

/-! ## A343763.P4857305196981265605

`A242715(or(A052905(n), A242717(n+4)))`
-/

namespace A343763.P4857305196981265605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242715 (Int.lor (A052905 n) (A242717 (n + 4))).toNat

end

end A343763.P4857305196981265605

/-! ## A343763.P10575332161326616843

`p?[∪[A003534(n+1), A003545(n+1)]]`
-/

namespace A343763.P10575332161326616843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003534 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003545 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A343763.P10575332161326616843

/-!
# A343766: Lexicographically earliest sequence of distinct integers such that a(0) = 0 and the balanced ternary expansions of two consecutive terms differ by a single digit, as far to the right as possible.

The programs for A343766, the canonical program `A343766.P2621926781585382443` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343766 has offset 0).

The definition of A343766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A117966, A128173, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343766.P2621926781585382443

`-A117966(A128173(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A343766

/-- `-A117966(A128173(n))` -/
def P2621926781585382443.Spec : Prop :=
  ∀ n, P2621926781585382443.a n = A343766 n

theorem P2621926781585382443.correct : P2621926781585382443.Spec := by
  intro n
  simp only [A343766]

end A343766

/-! ## A343766.P4294978560949214611

`A244042(floor(n/2))-A244042(n)`
-/

namespace A343766.P4294978560949214611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 ⌊(n : ℚ) / 2⌋.toNat - A244042 n

end

end A343766.P4294978560949214611

namespace A343766

/-- `A244042(floor(n/2))-A244042(n)` -/
def P4294978560949214611.Spec : Prop :=
  ∀ n, P4294978560949214611.a n = A343766 n

end A343766

/-! ## A343766.P16543232412450807602

`A000007(n+1)-A117966(A128173(n))`
-/

namespace A343766.P16543232412450807602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A117966 (A128173 n).toNat

end

end A343766.P16543232412450807602

namespace A343766

/-- `A000007(n+1)-A117966(A128173(n))` -/
def P16543232412450807602.Spec : Prop :=
  ∀ n, P16543232412450807602.a n = A343766 n

theorem P16543232412450807602.correct : P16543232412450807602.Spec := by
  intro n
  simp only [A343766, Nat.add_sub_cancel, A343766.P16543232412450807602.a, A343766.P2621926781585382443.a, A000007, A000007.P6599383543502402472.a, A117966, A117966.P11599160912576478646.a, A128173, A128173.P11177856239651542119.a, A004526, A004526.P10084182425416171735.a, A005836, A005836.P12367569128854000442.a, A244042, A244042.P9314766524248185345.a, A289814, A289814.P11371932108795153936.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A343766

/-! ## A343766.P15036061177383058509

`(A000007(n)-1)*A117966(A128173(n))`
-/

namespace A343766.P15036061177383058509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - 1) * A117966 (A128173 n).toNat

end

end A343766.P15036061177383058509

namespace A343766

/-- `(A000007(n)-1)*A117966(A128173(n))` -/
def P15036061177383058509.Spec : Prop :=
  ∀ n, P15036061177383058509.a n = A343766 n

end A343766

/-! ## A343766.P7310682646666166509

`A292380(A080191(n+1))-A117966(A128173(n))`
-/

namespace A343766.P7310682646666166509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (A080191 (n + 1)).toNat - A117966 (A128173 n).toNat

end

end A343766.P7310682646666166509

namespace A343766

/-- `A292380(A080191(n+1))-A117966(A128173(n))` -/
def P7310682646666166509.Spec : Prop :=
  ∀ n, P7310682646666166509.a n = A343766 n

end A343766

/-! ## A343766.P6364546044855198256

`A292380(A001359(n+1))-A117966(A128173(n))`
-/

namespace A343766.P6364546044855198256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (A001359 (n + 1)).toNat - A117966 (A128173 n).toNat

end

end A343766.P6364546044855198256

namespace A343766

/-- `A292380(A001359(n+1))-A117966(A128173(n))` -/
def P6364546044855198256.Spec : Prop :=
  ∀ n, P6364546044855198256.a n = A343766 n

end A343766

/-!
# A343771: Smallest k such that circle centered at the origin and with radius sqrt(k) passes through exactly 6*n integer points in the hexagonal lattice (see A004016).

The programs for A343771, there is no canonical definition to state claims against.
-/

/-! ## A343771.P2979354195203991240

`A374295(3*(n+1))/4`
-/

namespace A343771.P2979354195203991240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374295 (3 * (n + 1)) : ℚ) / 4

end

end A343771.P2979354195203991240

/-! ## A343771.P1730275937732318978

`A166669(A038547(n+1))`
-/

namespace A343771.P1730275937732318978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166669 (A038547 (n + 1)).toNat

end

end A343771.P1730275937732318978

/-! ## A343771.P13495183337781264225

`A166669(A348199(n+1))`
-/

namespace A343771.P13495183337781264225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166669 (A348199 (n + 1)).toNat

end

end A343771.P13495183337781264225

/-!
# A343772: Minimal absolute value of negative discriminants of number fields of degree n.

The programs for A343772, there is no canonical definition to state claims against.
-/

/-! ## A343772.P193197467052315601

`record[-A343290(A343271(n+3))]`
-/

namespace A343772.P193197467052315601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A343290 (A343271 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A343772.P193197467052315601

/-!
# A343773: Excess of the number of even Motzkin n-paths (A107587) over the odd ones (A343386).

The programs for A343773, the canonical program `A343773.P13940850346087918743` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343773 has offset 0).

The definition of A343773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A343773.P13940850346087918743

`A100223(n+2)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A343773

/-- `A100223(n+2)` -/
def P13940850346087918743.Spec : Prop :=
  ∀ n, P13940850346087918743.a n = A343773 n

theorem P13940850346087918743.correct : P13940850346087918743.Spec := by
  intro n
  simp only [A343773]

end A343773

/-! ## A343773.P16845759966367742883

`(-1)^n*A007440(n+1)`
-/

namespace A343773.P16845759966367742883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A007440 (n + 1)

end

end A343773.P16845759966367742883

namespace A343773

/-- `(-1)^n*A007440(n+1)` -/
def P16845759966367742883.Spec : Prop :=
  ∀ n, P16845759966367742883.a n = A343773 n

end A343773

/-! ## A343773.P1869079596134355669

`((2*n+1)*a(n-1)-5*(n-1)*a(n-2))/(n+2)` with `a(0)=1, a(1)=1`
-/

namespace A343773.P1869079596134355669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((2 * n + 1 : ℚ) * a (n - 1) - (5 * ((n : ℤ) - 1) : ℚ) * a (n - 2)) / (n + 2 : ℚ)

end

end A343773.P1869079596134355669

namespace A343773

/-- `((2*n+1)*a(n-1)-5*(n-1)*a(n-2))/(n+2)` -/
def P1869079596134355669.Spec : Prop :=
  ∀ n, P1869079596134355669.a n = (A343773 n : ℚ)

end A343773

/-! ## A343773.P5401255169590080544

`∑{#}[floor(n/2), (-1)^#*C(n, 2*#)*A000108(#)]`
-/

namespace A343773.P5401255169590080544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (-1) ^ k * (Nat.choose n (2 * k) : ℤ) * A000108 k

end

end A343773.P5401255169590080544

namespace A343773

/-- `∑{#}[floor(n/2), (-1)^#*C(n, 2*#)*A000108(#)]` -/
def P5401255169590080544.Spec : Prop :=
  ∀ n, P5401255169590080544.a n = A343773 n

end A343773

/-! ## A343773.P7640005713443451647

`A107587(n)-A343386(n)`
-/

namespace A343773.P7640005713443451647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107587 n - A343386 n

end

end A343773.P7640005713443451647

namespace A343773

/-- `A107587(n)-A343386(n)` -/
def P7640005713443451647.Spec : Prop :=
  ∀ n, P7640005713443451647.a n = A343773 n

theorem P7640005713443451647.correct : P7640005713443451647.Spec := by
  intro n
  simp only [A343773, Nat.add_sub_cancel, A343773.P7640005713443451647.a, A343773.P13940850346087918743.a, A100223, A100223.P7399855820009655789.a, A107587, A107587.P13112262168961685598.f1, A107587.P13112262168961685598.a, A343386, A343386.P6946411365016645358.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A343773

/-! ## A343773.P8300501700080391810

`2*A107587(n)-A001006(n)`
-/

namespace A343773.P8300501700080391810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107587 n - A001006 n

end

end A343773.P8300501700080391810

namespace A343773

/-- `2*A107587(n)-A001006(n)` -/
def P8300501700080391810.Spec : Prop :=
  ∀ n, P8300501700080391810.a n = A343773 n

end A343773

/-! ## A343773.P7664704723526339778

`A001006(n)-2*A343386(n)`
-/

namespace A343773.P7664704723526339778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - 2 * A343386 n

end

end A343773.P7664704723526339778

namespace A343773

/-- `A001006(n)-2*A343386(n)` -/
def P7664704723526339778.Spec : Prop :=
  ∀ n, P7664704723526339778.a n = A343773 n

end A343773

/-! ## A343773.P16751048933395021853

`A007440(n+1)*A033999(n)`
-/

namespace A343773.P16751048933395021853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007440 (n + 1) * A033999 n

end

end A343773.P16751048933395021853

namespace A343773

/-- `A007440(n+1)*A033999(n)` -/
def P16751048933395021853.Spec : Prop :=
  ∀ n, P16751048933395021853.a n = A343773 n

end A343773

/-! ## A343773.P4992539565837096731

`Δ[-A108623(n+1)]`
-/

namespace A343773.P4992539565837096731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A108623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343773.P4992539565837096731

namespace A343773

/-- `Δ[-A108623(n+1)]` -/
def P4992539565837096731.Spec : Prop :=
  ∀ n, P4992539565837096731.a n = A343773 n

end A343773

/-! ## A343773.P1370953379730742300

`A108623(n+1)-A108623(n+2)`
-/

namespace A343773.P1370953379730742300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108623 (n + 1) - A108623 (n + 2)

end

end A343773.P1370953379730742300

namespace A343773

/-- `A108623(n+1)-A108623(n+2)` -/
def P1370953379730742300.Spec : Prop :=
  ∀ n, P1370953379730742300.a n = A343773 n

end A343773

/-! ## A343773.P1208323920392897112

`Δ[Δ[A134920(n)]]`
-/

namespace A343773.P1208323920392897112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134920 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343773.P1208323920392897112

namespace A343773

/-- `Δ[Δ[A134920(n)]]` -/
def P1208323920392897112.Spec : Prop :=
  ∀ n, P1208323920392897112.a n = A343773 n

end A343773

/-! ## A343773.P13919044447598798529

`Δ[A371888(n+1)]`
-/

namespace A343773.P13919044447598798529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343773.P13919044447598798529

namespace A343773

/-- `Δ[A371888(n+1)]` -/
def P13919044447598798529.Spec : Prop :=
  ∀ n, P13919044447598798529.a n = A343773 n

end A343773

/-! ## A343773.P9789022165601251430

`A371888(n+2)-A371888(n+1)`
-/

namespace A343773.P9789022165601251430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371888 (n + 2) - A371888 (n + 1)

end

end A343773.P9789022165601251430

namespace A343773

/-- `A371888(n+2)-A371888(n+1)` -/
def P9789022165601251430.Spec : Prop :=
  ∀ n, P9789022165601251430.a n = A343773 n

end A343773

/-! ## A343773.P6491748430914417550

`A100240(n+2)/2`
-/

namespace A343773.P6491748430914417550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100240 (n + 2) : ℚ) / 2

end

end A343773.P6491748430914417550

namespace A343773

/-- `A100240(n+2)/2` -/
def P6491748430914417550.Spec : Prop :=
  ∀ n, P6491748430914417550.a n = (A343773 n : ℚ)

end A343773

/-! ## A343773.P3240655345683553155

`Δ[A372035(n+1)/2]`
-/

namespace A343773.P3240655345683553155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372035 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343773.P3240655345683553155

namespace A343773

/-- `Δ[A372035(n+1)/2]` -/
def P3240655345683553155.Spec : Prop :=
  ∀ n, P3240655345683553155.a n = (A343773 n : ℚ)

end A343773

/-! ## A343773.P18186546204267618430

`A102840(n+1)/∑[n+1]`
-/

namespace A343773.P18186546204267618430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102840 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A343773.P18186546204267618430

namespace A343773

/-- `A102840(n+1)/∑[n+1]` -/
def P18186546204267618430.Spec : Prop :=
  ∀ n, P18186546204267618430.a n = (A343773 n : ℚ)

end A343773

/-! ## A343773.P5899636815299152675

`A102840(n+1)/A102839(n+1)*A001006(n)`
-/

namespace A343773.P5899636815299152675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102840 (n + 1) : ℚ) / (A102839 (n + 1) : ℚ) * (A001006 n : ℚ)

end

end A343773.P5899636815299152675

namespace A343773

/-- `A102840(n+1)/A102839(n+1)*A001006(n)` -/
def P5899636815299152675.Spec : Prop :=
  ∀ n, P5899636815299152675.a n = (A343773 n : ℚ)

end A343773

/-! ## A343773.P15166606303063650554

`A102840(n+1)/A374487(n)*A025235(n)`
-/

namespace A343773.P15166606303063650554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102840 (n + 1) : ℚ) / (A374487 n : ℚ) * (A025235 n : ℚ)

end

end A343773.P15166606303063650554

namespace A343773

/-- `A102840(n+1)/A374487(n)*A025235(n)` -/
def P15166606303063650554.Spec : Prop :=
  ∀ n, P15166606303063650554.a n = (A343773 n : ℚ)

end A343773

/-!
# A343774: Primes of the form (c^k+1)/(c+1) not having a representation in the form (b^q-1)/(b-1), where b, c > 1 and k, q > 2.

The programs for A343774, there is no canonical definition to state claims against.
-/

/-! ## A343774.P6403036685468855444

`∩[A059055(n+1), A220570(n+1)]`
-/

namespace A343774.P6403036685468855444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343774.P6403036685468855444

/-! ## A343774.P14634218512455363863

`∩[A206946(n+1), A220570(n+1)]`
-/

namespace A343774.P14634218512455363863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343774.P14634218512455363863

/-! ## A343774.P12592834833960881270

`∩[A059055(n+1), A258165(n+1)]`
-/

namespace A343774.P12592834833960881270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059055 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343774.P12592834833960881270

/-! ## A343774.P8232867819356450084

`∩[A206946(n+1), A258165(n+1)]`
-/

namespace A343774.P8232867819356450084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A343774.P8232867819356450084

/-!
# A343775: Primes that are neither of the form (c^q+1)/(c+1) and nor of the form (b^k-1)/(b-1) for any b, c > 1 and k, q primes > 2.

The programs for A343775, there is no canonical definition to state claims against.
-/

/-! ## A343775.P10465618451866776284

`A151800(A040999(n+1)%A270076(n))`
-/

namespace A343775.P10465618451866776284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (A040999 (n + 1)) (A270076 n)).toNat

end

end A343775.P10465618451866776284

/-! ## A343775.P11148531711781499557

`p?[A189404(n+1)+A025427(A038207(n))]`
-/

namespace A343775.P11148531711781499557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189404 (n + 1) + A025427 (A038207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343775.P11148531711781499557

/-! ## A343775.P10302029857030580213

`A000040(lt[A182928(2*n+1), A054861(n)])`
-/

namespace A343775.P10302029857030580213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182928 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343775.P10302029857030580213

/-! ## A343775.P1460557632247202744

`A000040(lt[A182928(2*n+1), A182930(n+1)])`
-/

namespace A343775.P1460557632247202744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182928 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A343775.P1460557632247202744

/-! ## A343775.P1503902133916986715

`p?[∑[A003842(A191002(n+1))]]`
-/

namespace A343775.P1503902133916986715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003842 (A191002 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A343775.P1503902133916986715

/-!
# A343779: Nearest integer to log(Gamma(Im(zetazero(n))/2/Pi)).

The programs for A343779, there is no canonical definition to state claims against.
-/

/-! ## A343779.P761547229391112782

`A008480(A063706(2*(n+1)))%2+n-1`
-/

namespace A343779.P761547229391112782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008480 (A063706 (2 * (n + 1))).toNat) 2 + ((n : ℤ) - 1)

end

end A343779.P761547229391112782

/-! ## A343779.P10350795548121665037

`A004524(∑[A094267(A118658(n))])`
-/

namespace A343779.P10350795548121665037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (A118658 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343779.P10350795548121665037

/-! ## A343779.P73205307525019382

`n-A085983(A273375(n+1))`
-/

namespace A343779.P73205307525019382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A085983 (A273375 (n + 1)).toNat

end

end A343779.P73205307525019382

/-! ## A343779.P5961868884270097844

`n-A347519(A171628(n+1))`
-/

namespace A343779.P5961868884270097844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A347519 (A171628 (n + 1)).toNat

end

end A343779.P5961868884270097844

/-! ## A343779.P16328396357133989187

`n-A284258(A278342(n+1)²)`
-/

namespace A343779.P16328396357133989187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A284258 (A278342 (n + 1) ^ 2).toNat

end

end A343779.P16328396357133989187

/-!
# A343780: If n good guys followed by n bad guys stand in a circle, a(n) is the least q such that executing every q-th person gets all bad guys first.

The programs for A343780, there is no canonical definition to state claims against.
-/

/-! ## A343780.P11003581106946139274

`A266935(A271062(n))`
-/

namespace A343780.P11003581106946139274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266935 (A271062 n).toNat

end

end A343780.P11003581106946139274

/-!
# A343781: a(n) = Sum_{k=1..floor(n/2)} sigma_k(n-k), where sigma_k(n) is the sum of the k-th powers of the divisors of n.

The programs for A343781, there is no canonical definition to state claims against.
-/

/-! ## A343781.P17333608992697841962

`A276137(A132831(n))`
-/

namespace A343781.P17333608992697841962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (A132831 n).toNat

end

end A343781.P17333608992697841962

/-! ## A343781.P4405595028907326031

`A276137(A192652(n))`
-/

namespace A343781.P4405595028907326031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276137 (A192652 n).toNat

end

end A343781.P4405595028907326031

/-! ## A343781.P17925826116405131396

`A269043(∑[A000983(n+1)²])`
-/

namespace A343781.P17925826116405131396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000983 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269043 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343781.P17925826116405131396

/-!
# A343782: Sum of the positive differences of the prime pairs (p,q) such that n = p + q and p <= q.

The programs for A343782, there is no canonical definition to state claims against.
-/

/-! ## A343782.P6476045573050588615

`A350865(n+1)-A350883(n+1)`
-/

namespace A343782.P6476045573050588615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350865 (n + 1) - A350883 (n + 1)

end

end A343782.P6476045573050588615

/-! ## A343782.P13951804032627023423

`A204921(n+1)%A077592(A328210(n+1))`
-/

namespace A343782.P13951804032627023423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204921 (n + 1)) (A077592 (A328210 (n + 1)).toNat)

end

end A343782.P13951804032627023423

/-!
# A343783: a(n) is the largest primorial number (A002110) which divides phi(n).

The programs for A343783, the canonical program `A343783.P5817121475055786338` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343783 has offset 1).

The definition of A343783 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053589, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343783.P5817121475055786338

`A053589(A000010(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A343783

/-- `A053589(A000010(n+1))` -/
def P5817121475055786338.Spec : Prop :=
  ∀ n, P5817121475055786338.a n = A343783 (n + 1)

theorem P5817121475055786338.correct : P5817121475055786338.Spec := by
  intro n
  simp only [A343783, Nat.add_sub_cancel]

end A343783

/-! ## A343783.P12375524409311974940

`A053590(Δ[A002088(n)])`
-/

namespace A343783.P12375524409311974940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (f1 (n + 1) - f1 n).toNat

end

end A343783.P12375524409311974940

namespace A343783

/-- `A053590(Δ[A002088(n)])` -/
def P12375524409311974940.Spec : Prop :=
  ∀ n, P12375524409311974940.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P17085058701557951895

`A053589(Δ[A005728(n)])`
-/

namespace A343783.P17085058701557951895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (f1 (n + 1) - f1 n).toNat

end

end A343783.P17085058701557951895

namespace A343783

/-- `A053589(Δ[A005728(n)])` -/
def P17085058701557951895.Spec : Prop :=
  ∀ n, P17085058701557951895.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P10122428584854863194

`A053589(A002322(n+1))`
-/

namespace A343783.P10122428584854863194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A002322 (n + 1)).toNat

end

end A343783.P10122428584854863194

namespace A343783

/-- `A053589(A002322(n+1))` -/
def P10122428584854863194.Spec : Prop :=
  ∀ n, P10122428584854863194.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P3656699806960759389

`A053589(A011773(n+1))`
-/

namespace A343783.P3656699806960759389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A011773 (n + 1)).toNat

end

end A343783.P3656699806960759389

namespace A343783

/-- `A053589(A011773(n+1))` -/
def P3656699806960759389.Spec : Prop :=
  ∀ n, P3656699806960759389.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P14258088514867542411

`A053589(A080400(n+1))`
-/

namespace A343783.P14258088514867542411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A080400 (n + 1)).toNat

end

end A343783.P14258088514867542411

namespace A343783

/-- `A053589(A080400(n+1))` -/
def P14258088514867542411.Spec : Prop :=
  ∀ n, P14258088514867542411.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P12904084741573585021

`A053589(A322321(n+1))`
-/

namespace A343783.P12904084741573585021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A322321 (n + 1)).toNat

end

end A343783.P12904084741573585021

namespace A343783

/-- `A053589(A322321(n+1))` -/
def P12904084741573585021.Spec : Prop :=
  ∀ n, P12904084741573585021.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P11678607624041639796

`A053590(sqrt(A127473(n+1)))`
-/

namespace A343783.P11678607624041639796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A343783.P11678607624041639796

namespace A343783

/-- `A053590(sqrt(A127473(n+1)))` -/
def P11678607624041639796.Spec : Prop :=
  ∀ n, P11678607624041639796.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P17913507661744353439

`A053590(A002088(n+1)-A002088(n))`
-/

namespace A343783.P17913507661744353439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (A002088 (n + 1) - A002088 n).toNat

end

end A343783.P17913507661744353439

namespace A343783

/-- `A053590(A002088(n+1)-A002088(n))` -/
def P17913507661744353439.Spec : Prop :=
  ∀ n, P17913507661744353439.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P2754616514586233624

`A053589(A308828(n+1))`
-/

namespace A343783.P2754616514586233624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A308828 (n + 1)).toNat

end

end A343783.P2754616514586233624

namespace A343783

/-- `A053589(A308828(n+1))` -/
def P2754616514586233624.Spec : Prop :=
  ∀ n, P2754616514586233624.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P4235604941258706767

`A053589(A127473(n+1))`
-/

namespace A343783.P4235604941258706767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A127473 (n + 1)).toNat

end

end A343783.P4235604941258706767

namespace A343783

/-- `A053589(A127473(n+1))` -/
def P4235604941258706767.Spec : Prop :=
  ∀ n, P4235604941258706767.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P11471293285562117598

`A053590(A000010(n+1)²)`
-/

namespace A343783.P11471293285562117598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053590 (A000010 (n + 1) ^ 2).toNat

end

end A343783.P11471293285562117598

namespace A343783

/-- `A053590(A000010(n+1)²)` -/
def P11471293285562117598.Spec : Prop :=
  ∀ n, P11471293285562117598.a n = A343783 (n + 1)

end A343783

/-! ## A343783.P8958472152858924255

`A053589(A293484(n+1)²)`
-/

namespace A343783.P8958472152858924255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (A293484 (n + 1) ^ 2).toNat

end

end A343783.P8958472152858924255

namespace A343783

/-- `A053589(A293484(n+1)²)` -/
def P8958472152858924255.Spec : Prop :=
  ∀ n, P8958472152858924255.a n = A343783 (n + 1)

end A343783

/-!
# A343785: a(n) is completely multiplicative with a(p^e) = (-1)^e if p == 2 (mod 3) and a(p^e) = 1 otherwise.

The programs for A343785, the canonical program `A343785.P5171936398951743688` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343785 has offset 1).

The definition of A343785 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A343430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A343785.P5171936398951743688

`A008836(A343430(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A343785

/-- `A008836(A343430(n+1))` -/
def P5171936398951743688.Spec : Prop :=
  ∀ n, P5171936398951743688.a n = A343785 (n + 1)

theorem P5171936398951743688.correct : P5171936398951743688.Spec := by
  intro n
  simp only [A343785, Nat.add_sub_cancel]

end A343785

/-! ## A343785.P12649463988877134085

`Δ[a(floor(n/3))+(n%3)%2]` with `a(0)=0`
-/

namespace A343785.P12649463988877134085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ⌊(n : ℚ) / 3⌋.toNat + n % 3 % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343785.P12649463988877134085

namespace A343785

/-- `Δ[a(floor(n/3))+(n%3)%2]` -/
def P12649463988877134085.Spec : Prop :=
  ∀ n, P12649463988877134085.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P12537487333862230386

`Δ[A062756(n)]`
-/

namespace A343785.P12537487333862230386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343785.P12537487333862230386

namespace A343785

/-- `Δ[A062756(n)]` -/
def P12537487333862230386.Spec : Prop :=
  ∀ n, P12537487333862230386.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P1662126879226531585

`Δ[log2(A120880(n))]`
-/

namespace A343785.P1662126879226531585
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A120880 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343785.P1662126879226531585

namespace A343785

/-- `Δ[log2(A120880(n))]` -/
def P1662126879226531585.Spec : Prop :=
  ∀ n, P1662126879226531585.a n = (A343785 (n + 1) : ℝ)

end A343785

/-! ## A343785.P12145137290592830525

`Δ[val(A006047(n), 2)]`
-/

namespace A343785.P12145137290592830525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006047 n).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A343785.P12145137290592830525

namespace A343785

/-- `Δ[val(A006047(n), 2)]` -/
def P12145137290592830525.Spec : Prop :=
  ∀ n, P12145137290592830525.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P2755190288546111396

`(-1)^Δ[A136690(n)]`
-/

namespace A343785.P2755190288546111396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136690 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A343785.P2755190288546111396

namespace A343785

/-- `(-1)^Δ[A136690(n)]` -/
def P2755190288546111396.Spec : Prop :=
  ∀ n, P2755190288546111396.a n = (A343785 (n + 1) : ℚ)

end A343785

/-! ## A343785.P9226763776477187051

`(-1)^A319444(n+1)`
-/

namespace A343785.P9226763776477187051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A319444 (n + 1) : ℤ)

end

end A343785.P9226763776477187051

namespace A343785

/-- `(-1)^A319444(n+1)` -/
def P9226763776477187051.Spec : Prop :=
  ∀ n, P9226763776477187051.a n = (A343785 (n + 1) : ℚ)

end A343785

/-! ## A343785.P18036958578457985037

`or(1, -A080846(n+1))`
-/

namespace A343785.P18036958578457985037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-A080846 (n + 1))

end

end A343785.P18036958578457985037

namespace A343785

/-- `or(1, -A080846(n+1))` -/
def P18036958578457985037.Spec : Prop :=
  ∀ n, P18036958578457985037.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P17388830415483887781

`1-and(2, Δ[A117966(n)])`
-/

namespace A343785.P17388830415483887781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (f1 (n + 1) - f1 n)

end

end A343785.P17388830415483887781

namespace A343785

/-- `1-and(2, Δ[A117966(n)])` -/
def P17388830415483887781.Spec : Prop :=
  ∀ n, P17388830415483887781.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P18272767633264699745

`ratio[1-and(2, A256185(n))]`
-/

namespace A343785.P18272767633264699745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A256185 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A343785.P18272767633264699745

namespace A343785

/-- `ratio[1-and(2, A256185(n))]` -/
def P18272767633264699745.Spec : Prop :=
  ∀ n, P18272767633264699745.a n = (A343785 (n + 1) : ℚ)

end A343785

/-! ## A343785.P6418092730603186037

`2*A137893(n+1)-1`
-/

namespace A343785.P6418092730603186037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A137893 (n + 1) - 1

end

end A343785.P6418092730603186037

namespace A343785

/-- `2*A137893(n+1)-1` -/
def P6418092730603186037.Spec : Prop :=
  ∀ n, P6418092730603186037.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P14290833477793450059

`3-2*A060236(n+1)`
-/

namespace A343785.P14290833477793450059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - 2 * A060236 (n + 1)

end

end A343785.P14290833477793450059

namespace A343785

/-- `3-2*A060236(n+1)` -/
def P14290833477793450059.Spec : Prop :=
  ∀ n, P14290833477793450059.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P15159756534860467009

`Δ[A007814(A006047(n))]`
-/

namespace A343785.P15159756534860467009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343785.P15159756534860467009

namespace A343785

/-- `Δ[A007814(A006047(n))]` -/
def P15159756534860467009.Spec : Prop :=
  ∀ n, P15159756534860467009.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P13458988079030891576

`Δ[A001222(A290091(n))]`
-/

namespace A343785.P13458988079030891576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290091 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A343785.P13458988079030891576

namespace A343785

/-- `Δ[A001222(A290091(n))]` -/
def P13458988079030891576.Spec : Prop :=
  ∀ n, P13458988079030891576.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P5462013371031982041

`A008683(A390692(n+1))`
-/

namespace A343785.P5462013371031982041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A390692 (n + 1)).toNat

end

end A343785.P5462013371031982041

namespace A343785

/-- `A008683(A390692(n+1))` -/
def P5462013371031982041.Spec : Prop :=
  ∀ n, P5462013371031982041.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P5420333139095663964

`A102283(A308364(n+1))`
-/

namespace A343785.P5420333139095663964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (A308364 (n + 1)).toNat

end

end A343785.P5420333139095663964

namespace A343785

/-- `A102283(A308364(n+1))` -/
def P5420333139095663964.Spec : Prop :=
  ∀ n, P5420333139095663964.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P11540070777732895720

`1-2*A116178(A004488(n))`
-/

namespace A343785.P11540070777732895720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * A116178 (A004488 n).toNat

end

end A343785.P11540070777732895720

namespace A343785

/-- `1-2*A116178(A004488(n))` -/
def P11540070777732895720.Spec : Prop :=
  ∀ n, P11540070777732895720.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P4524999856382191383

`A062756(n+1)-A062756(n)`
-/

namespace A343785.P4524999856382191383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (n + 1) - A062756 n

end

end A343785.P4524999856382191383

namespace A343785

/-- `A062756(n+1)-A062756(n)` -/
def P4524999856382191383.Spec : Prop :=
  ∀ n, P4524999856382191383.a n = A343785 (n + 1)

end A343785

/-! ## A343785.P11797013272729297446

`log2(A120880(n+1)/A120880(n))`
-/

namespace A343785.P11797013272729297446
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((A120880 (n + 1) : ℚ) / (A120880 n : ℚ) : ℝ)

end

end A343785.P11797013272729297446

namespace A343785

/-- `log2(A120880(n+1)/A120880(n))` -/
def P11797013272729297446.Spec : Prop :=
  ∀ n, P11797013272729297446.a n = (A343785 (n + 1) : ℝ)

end A343785

/-! ## A343785.P15315987630690603507

`A137893(n+1)-A080846(n+1)`
-/

namespace A343785.P15315987630690603507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137893 (n + 1) - A080846 (n + 1)

end

end A343785.P15315987630690603507

namespace A343785

/-- `A137893(n+1)-A080846(n+1)` -/
def P15315987630690603507.Spec : Prop :=
  ∀ n, P15315987630690603507.a n = A343785 (n + 1)

end A343785

/-!
# A343787: Number of ordered partitions of an n-set without blocks of size 4.

The programs for A343787, there is no canonical definition to state claims against.
-/

/-! ## A343787.P3670450342265316540

`A205572(n)+A004526(A000670(n)-A205572(n))`
-/

namespace A343787.P3670450342265316540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205572 n + A004526 (A000670 n - A205572 n).toNat

end

end A343787.P3670450342265316540

/-! ## A343787.P1984691262140958000

`A205572(n)+A006370(A000670(n)-A205572(n))`
-/

namespace A343787.P1984691262140958000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205572 n + A006370 (A000670 n - A205572 n).toNat

end

end A343787.P1984691262140958000

/-! ## A343787.P17024888647106829246

`A069782(A189886(n))`
-/

namespace A343787.P17024888647106829246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069782 (A189886 n).toNat

end

end A343787.P17024888647106829246

/-!
# A343788: Number of ordered partitions of an n-set without blocks of size 5.

The programs for A343788, there is no canonical definition to state claims against.
-/

/-! ## A343788.P17306101777106298188

`A161560(A276924(n)+2)`
-/

namespace A343788.P17306101777106298188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161560 (A276924 n + 2).toNat

end

end A343788.P17306101777106298188

/-! ## A343788.P7410593625027801764

`or(A276924(n), A321750(5^∑{e}[1+n, #]))`
-/

namespace A343788.P7410593625027801764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276924 n) (A321750 (5 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)))

end

end A343788.P7410593625027801764

/-! ## A343788.P14892829816693915079

`A276924(n)+A025456(A000828(n))`
-/

namespace A343788.P14892829816693915079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276924 n + A025456 (A000828 n).toNat

end

end A343788.P14892829816693915079

/-!
# A343789: Number of ordered partitions of an n-set without blocks of size 6.

The programs for A343789, there is no canonical definition to state claims against.
-/

/-! ## A343789.P11425595341176430973

`or(A239749(n)%2, A276925(n))`
-/

namespace A343789.P11425595341176430973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A239749 n) 2) (A276925 n)

end

end A343789.P11425595341176430973

/-! ## A343789.P3173005396981332459

`or(A276925(n), A276935((4^n+5)/3))`
-/

namespace A343789.P3173005396981332459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A276925 n) (A276935 (SequenceMachineLib.roundAway ((4 ^ n + 5 : ℚ) / 3)).toNat)

end

end A343789.P3173005396981332459

/-! ## A343789.P10731311961599412361

`A276925(n)+A011742(A000142(n))`
-/

namespace A343789.P10731311961599412361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276925 n + A011742 (A000142 n).toNat

end

end A343789.P10731311961599412361

/-! ## A343789.P6192192894843642869

`A276925(n)+A011731(A001353(n))`
-/

namespace A343789.P6192192894843642869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276925 n + A011731 (A001353 n).toNat

end

end A343789.P6192192894843642869

/-!
# A343790: Number of ordered partitions of an n-set without blocks of size 7.

The programs for A343790, there is no canonical definition to state claims against.
-/

/-! ## A343790.P4131736145606140190

`A276926(n)+A025466(A001353(n))`
-/

namespace A343790.P4131736145606140190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276926 n + A025466 (A001353 n).toNat

end

end A343790.P4131736145606140190

/-! ## A343790.P10921069485225639759

`A276926(n)+A011731(A018212(n))`
-/

namespace A343790.P10921069485225639759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276926 n + A011731 (A018212 n).toNat

end

end A343790.P10921069485225639759

/-! ## A343790.P4387560438289484547

`A276926(n)+A011672(A047032(n))`
-/

namespace A343790.P4387560438289484547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276926 n + A011672 (A047032 n).toNat

end

end A343790.P4387560438289484547

/-! ## A343790.P4804207734360564889

`A276926(n)+A025469(A041151(n))`
-/

namespace A343790.P4804207734360564889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276926 n + A025469 (A041151 n).toNat

end

end A343790.P4804207734360564889

/-! ## A343790.P1506651202398944696

`A276926(n)+A025466(A122446(n))`
-/

namespace A343790.P1506651202398944696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276926 n + A025466 (A122446 n).toNat

end

end A343790.P1506651202398944696

/-!
# A343791: Number of ordered partitions of an n-set without blocks of size 8.

The programs for A343791, there is no canonical definition to state claims against.
-/

/-! ## A343791.P15339689409610095874

`or(and(1, n), A276927(A061479(n)))`
-/

namespace A343791.P15339689409610095874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.land 1 n : ℤ) (A276927 (A061479 n).toNat)

end

end A343791.P15339689409610095874

/-! ## A343791.P8390510235278432414

`A276927(n)+char[A305938(3*n)]`
-/

namespace A343791.P8390510235278432414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305938 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276927 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A343791.P8390510235278432414

/-! ## A343791.P4495450136392497938

`A276927(n)+A011672(A022014(n))`
-/

namespace A343791.P4495450136392497938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276927 n + A011672 (A022014 n).toNat

end

end A343791.P4495450136392497938

/-! ## A343791.P11633956792241494402

`A276927(n)+A185246(A000096(n))`
-/

namespace A343791.P11633956792241494402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276927 n + A185246 (A000096 n).toNat

end

end A343791.P11633956792241494402

/-! ## A343791.P17739853013602797194

`A276927(n)+A184974(A184974(n))`
-/

namespace A343791.P17739853013602797194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276927 n + A184974 (A184974 n).toNat

end

end A343791.P17739853013602797194

/-!
# A343792: Number of ordered partitions of an n-set without blocks of size 9.

The programs for A343792, there is no canonical definition to state claims against.
-/

/-! ## A343792.P16679634896917826460

`A276928(n)+A036632(A036598(n))`
-/

namespace A343792.P16679634896917826460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276928 n + A036632 (A036598 n).toNat

end

end A343792.P16679634896917826460

/-! ## A343792.P12082940252744678963

`A276928(n)+A178780(A001590(n))`
-/

namespace A343792.P12082940252744678963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276928 n + A178780 (A001590 n).toNat

end

end A343792.P12082940252744678963

/-! ## A343792.P15239077662951432188

`A276928(n)+A185284(A036632(n))`
-/

namespace A343792.P15239077662951432188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276928 n + A185284 (A036632 n).toNat

end

end A343792.P15239077662951432188

/-! ## A343792.P10244916201901532022

`A276935(A022553(n))+A276928(n)`
-/

namespace A343792.P10244916201901532022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276935 (A022553 n).toNat + A276928 n

end

end A343792.P10244916201901532022

/-! ## A343792.P1806112426812300715

`A000670(n)-A293292(A309863(n))`
-/

namespace A343792.P1806112426812300715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A293292 (A309863 n).toNat

end

end A343792.P1806112426812300715

/-!
# A343793: Number of ordered partitions of an n-set without blocks of size 10.

The programs for A343793, there is no canonical definition to state claims against.
-/

/-! ## A343793.P6385168768577422834

`A276929(A004906(n+1))+char[11]`
-/

namespace A343793.P6385168768577422834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276929 (A004906 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A343793.P6385168768577422834

/-! ## A343793.P8809864597959453663

`A276929(n)+A067898(A000083(n))`
-/

namespace A343793.P8809864597959453663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276929 n + A067898 (A000083 n).toNat

end

end A343793.P8809864597959453663

/-! ## A343793.P6909140260342827317

`A276929(n)+A065202(A025587(n))`
-/

namespace A343793.P6909140260342827317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276929 n + A065202 (A025587 n).toNat

end

end A343793.P6909140260342827317

/-! ## A343793.P4620119381530625672

`A400003(A342889(n))+A276929(n)`
-/

namespace A343793.P4620119381530625672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400003 (A342889 n).toNat + A276929 n

end

end A343793.P4620119381530625672

/-! ## A343793.P11061034081708005080

`A368006(A382674(n))+A276929(n)`
-/

namespace A343793.P11061034081708005080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368006 (A382674 n).toNat + A276929 n

end

end A343793.P11061034081708005080

/-!
# A343794: Numbers k > 0 such that 630*k + 315 is not an abundant number (A005101).

The programs for A343794, the canonical program `A343794.P987061178062544182` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A343794 has offset 1).

The definition of A343794 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1202 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A343794.P8924471441364531309

`lt[A293879(A305801(2*n+1)), A014689(n+1)]`
-/

namespace A343794.P8924471441364531309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293879 (A305801 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P8924471441364531309

namespace A343794

/-- `lt[A293879(A305801(2*n+1)), A014689(n+1)]` -/
def P8924471441364531309.Spec : Prop :=
  ∀ n, (P8924471441364531309.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P6329785197351475329

`lt[A293879(A305801(2*n+1)), A036844(n+1)]`
-/

namespace A343794.P6329785197351475329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293879 (A305801 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036844 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P6329785197351475329

namespace A343794

/-- `lt[A293879(A305801(2*n+1)), A036844(n+1)]` -/
def P6329785197351475329.Spec : Prop :=
  ∀ n, (P6329785197351475329.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P10401047320271754612

`lt[A235537(A305801(2*n+1)), A243285(n+2)]`
-/

namespace A343794.P10401047320271754612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235537 (A305801 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243285 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P10401047320271754612

namespace A343794

/-- `lt[A235537(A305801(2*n+1)), A243285(n+2)]` -/
def P10401047320271754612.Spec : Prop :=
  ∀ n, (P10401047320271754612.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P8979408937644726331

`lt[A004009(A302042(2*n+1)), A000040(n+1)]`
-/

namespace A343794.P8979408937644726331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004009 (A302042 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P8979408937644726331

namespace A343794

/-- `lt[A004009(A302042(2*n+1)), A000040(n+1)]` -/
def P8979408937644726331.Spec : Prop :=
  ∀ n, (P8979408937644726331.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P6739861105251112723

`lt[27, A055396(2*n+1)]`
-/

namespace A343794.P6739861105251112723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A343794.P6739861105251112723

namespace A343794

/-- `lt[27, A055396(2*n+1)]` -/
def P6739861105251112723.Spec : Prop :=
  ∀ n, (P6739861105251112723.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P3042957130437738318

`lt[13, row(A020500(2*n+1))]`
-/

namespace A343794.P3042957130437738318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A020500 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P3042957130437738318

namespace A343794

/-- `lt[13, row(A020500(2*n+1))]` -/
def P3042957130437738318.Spec : Prop :=
  ∀ n, (P3042957130437738318.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P987061178062544182

`A055034(A000040(n+28))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A343794

/-- `A055034(A000040(n+28))` -/
def P987061178062544182.Spec : Prop :=
  ∀ n, P987061178062544182.a n = A343794 (n + 1)

theorem P987061178062544182.correct : P987061178062544182.Spec := by
  intro n
  simp only [A343794, Nat.add_sub_cancel]

end A343794

/-! ## A343794.P16369573915215694207

`A123108(A000040(n+28)-1)`
-/

namespace A343794.P16369573915215694207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A000040 (n + 28) - 1).toNat

end

end A343794.P16369573915215694207

namespace A343794

/-- `A123108(A000040(n+28)-1)` -/
def P16369573915215694207.Spec : Prop :=
  ∀ n, P16369573915215694207.a n = A343794 (n + 1)

end A343794

/-! ## A343794.P11728205805726680804

`A123108(xor(1, A000040(n+28)))`
-/

namespace A343794.P11728205805726680804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor 1 (A000040 (n + 28))).toNat

end

end A343794.P11728205805726680804

namespace A343794

/-- `A123108(xor(1, A000040(n+28)))` -/
def P11728205805726680804.Spec : Prop :=
  ∀ n, P11728205805726680804.a n = A343794 (n + 1)

end A343794

/-! ## A343794.P4751008527736433085

`A004524(p?[A265711(n+96)+4])`
-/

namespace A343794.P4751008527736433085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265711 (n + 96) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A343794.P4751008527736433085

namespace A343794

/-- `A004524(p?[A265711(n+96)+4])` -/
def P4751008527736433085.Spec : Prop :=
  ∀ n, P4751008527736433085.a n = A343794 (n + 1)

end A343794

/-! ## A343794.P3014983400593511771

`A004526(A000040(4*(n/4+7)))`
-/

namespace A343794.P3014983400593511771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000040 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 4 + 7))).toNat).toNat

end

end A343794.P3014983400593511771

namespace A343794

/-- `A004526(A000040(4*(n/4+7)))` -/
def P3014983400593511771.Spec : Prop :=
  ∀ n, P3014983400593511771.a n = A343794 (n + 1)

end A343794

/-! ## A343794.P4842077665367317158

`lt[A284672(A284676(n+2)), A284694(2*n+1)]`
-/

namespace A343794.P4842077665367317158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284672 (A284676 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284694 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P4842077665367317158

namespace A343794

/-- `lt[A284672(A284676(n+2)), A284694(2*n+1)]` -/
def P4842077665367317158.Spec : Prop :=
  ∀ n, (P4842077665367317158.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P13443798937084114355

`lt[A020639(2*n+1)², A002183(A020639(2*n+1))]`
-/

namespace A343794.P13443798937084114355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002183 (A020639 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P13443798937084114355

namespace A343794

/-- `lt[A020639(2*n+1)², A002183(A020639(2*n+1))]` -/
def P13443798937084114355.Spec : Prop :=
  ∀ n, (P13443798937084114355.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P10719236296637958403

`lt[A001462(A079000(n+1)), A055396(n+1)]/2`
-/

namespace A343794.P10719236296637958403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A079000 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℚ) / 2

end

end A343794.P10719236296637958403

namespace A343794

/-- `lt[A001462(A079000(n+1)), A055396(n+1)]/2` -/
def P10719236296637958403.Spec : Prop :=
  ∀ n, P10719236296637958403.a n = (A343794 (n + 1) : ℚ)

end A343794

/-! ## A343794.P12863867496850684116

`lt[A102439(A001065(n+1)), n]/2`
-/

namespace A343794.P12863867496850684116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102439 (A001065 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A343794.P12863867496850684116

namespace A343794

/-- `lt[A102439(A001065(n+1)), n]/2` -/
def P12863867496850684116.Spec : Prop :=
  ∀ n, P12863867496850684116.a n = (A343794 (n + 1) : ℚ)

end A343794

/-! ## A343794.P18327987116320105732

`lt[A103214(A103246(2*n+1)), A020639(2*n+1)²]`
-/

namespace A343794.P18327987116320105732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103214 (A103246 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P18327987116320105732

namespace A343794

/-- `lt[A103214(A103246(2*n+1)), A020639(2*n+1)²]` -/
def P18327987116320105732.Spec : Prop :=
  ∀ n, (P18327987116320105732.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P10479119164224760273

`lt[A258013(A257977(2*n+1)), A258027(n+1)]`
-/

namespace A343794.P10479119164224760273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258013 (A257977 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P10479119164224760273

namespace A343794

/-- `lt[A258013(A257977(2*n+1)), A258027(n+1)]` -/
def P10479119164224760273.Spec : Prop :=
  ∀ n, (P10479119164224760273.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P17667470021990848431

`lt[A258013(A257977(2*n+1)), A258028(n+3)]`
-/

namespace A343794.P17667470021990848431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258013 (A257977 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258028 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P17667470021990848431

namespace A343794

/-- `lt[A258013(A257977(2*n+1)), A258028(n+3)]` -/
def P17667470021990848431.Spec : Prop :=
  ∀ n, (P17667470021990848431.a n : ℤ) = A343794 (n + 1)

end A343794

/-! ## A343794.P7337883491978220198

`A004526(record[A210758(n+3)])`
-/

namespace A343794.P7337883491978220198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210758 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A343794.P7337883491978220198

namespace A343794

/-- `A004526(record[A210758(n+3)])` -/
def P7337883491978220198.Spec : Prop :=
  ∀ n, P7337883491978220198.a n = A343794 (n + 1)

end A343794

/-! ## A343794.P9010970028345010677

`lt[A233583(2*n+1)²², A277333(2*n+1)]`
-/

namespace A343794.P9010970028345010677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A233583 (2 * n + 1) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277333 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A343794.P9010970028345010677

namespace A343794

/-- `lt[A233583(2*n+1)²², A277333(2*n+1)]` -/
def P9010970028345010677.Spec : Prop :=
  ∀ n, (P9010970028345010677.a n : ℤ) = A343794 (n + 1)

end A343794

/-!
# A343795: Number of Dumont permutations of the fourth kind of length 2n avoiding the pattern 312.

The programs for A343795, there is no canonical definition to state claims against.
-/

/-! ## A343795.P1568403858524204953

`or(∏[A120707(n)], A120707(2*n))`
-/

namespace A343795.P1568403858524204953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∏ j ∈ Finset.range (n + 1), f1 j) (A120707 (2 * n))

end

end A343795.P1568403858524204953

/-! ## A343795.P3749906675971969381

`A008621(A346226(n)+A026351(n))`
-/

namespace A343795.P3749906675971969381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A346226 n + A026351 n).toNat

end

end A343795.P3749906675971969381

/-! ## A343795.P12278078300808596979

`A343609(A054625(n))+A037027(n)`
-/

namespace A343795.P12278078300808596979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A054625 n).toNat + A037027 n

end

end A343795.P12278078300808596979

/-!
# A343796: a(n) is the number of distinct primes of the form A007504(n) mod p for the first n primes p.

The programs for A343796, there is no canonical definition to state claims against.
-/

/-! ## A343796.P11678962010751151327

`A045778(A086586(n-a(n-1)))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A343796.P11678962010751151327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n a =>
  A045778 (A086586 ((n : ℤ) - a (n - 1)).toNat).toNat

end

end A343796.P11678962010751151327

/-! ## A343796.P8983087495858332589

`A303707(A276086(n-a(n-1)))` with `a(0)=0, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A343796.P8983087495858332589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0, 2] fun n a =>
  A303707 (A276086 ((n : ℤ) - a (n - 1)).toNat).toNat

end

end A343796.P8983087495858332589

/-! ## A343796.P14095371555644607519

`A001222(A006946(n+1)-∑{d}[n, #%#²])`
-/

namespace A343796.P14095371555644607519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A006946 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d % d ^ 2 : ℕ) : ℤ)).toNat

end

end A343796.P14095371555644607519

/-! ## A343796.P5463110017343779800

`A239704(A158611(n+1)+A056993(n))`
-/

namespace A343796.P5463110017343779800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239704 (A158611 (n + 1) + A056993 n).toNat

end

end A343796.P5463110017343779800

/-!
# A343797: Numbers k = p + q (p,q prime), where k | (p*q +- 1) for more than 1 pair, (p,q).

The programs for A343797, there is no canonical definition to state claims against.
-/

/-! ## A343797.P13236179451243335075

`A229489(A333999(n+1))`
-/

namespace A343797.P13236179451243335075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229489 (A333999 (n + 1)).toNat

end

end A343797.P13236179451243335075

/-! ## A343797.P6269323749460585721

`12*A056239(A332290(3*(n+1)))`
-/

namespace A343797.P6269323749460585721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A056239 (A332290 (3 * (n + 1))).toNat

end

end A343797.P6269323749460585721

/-!
# A343799: Total sum of the elements in all nondecreasing sequences s1, s2, ..., s_n of powers of 2 such that s_i <= 1 + Sum_{j=1..i-1} s_j.

The programs for A343799, there is no canonical definition to state claims against.
-/

/-! ## A343799.P993915851595572313

`A133430(A074878(n+1))`
-/

namespace A343799.P993915851595572313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133430 (A074878 (n + 1)).toNat

end

end A343799.P993915851595572313

/-! ## A343799.P7530646286323100576

`A090620(∑[A055099(n+1)])`
-/

namespace A343799.P7530646286323100576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A343799.P7530646286323100576

