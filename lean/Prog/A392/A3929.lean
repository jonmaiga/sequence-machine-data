import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C001
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
# A392901: Irregular triangle read by rows: row n lists the distinct prime factors of the generalized Fermat number F_n(5) = 5^(2^n) + 1.

The programs for A392901, there is no canonical definition to state claims against.
-/

/-! ## A392901.P6043154558442209227

`A250445(A022302(n))`
-/

namespace A392901.P6043154558442209227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250445 (A022302 n).toNat

end

end A392901.P6043154558442209227

/-! ## A392901.P8097734740847773929

`A068948(A104772(n+1)%A068948(n+1))`
-/

namespace A392901.P8097734740847773929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068948 (Int.tmod (A104772 (n + 1)) (A068948 (n + 1))).toNat

end

end A392901.P8097734740847773929

/-!
# A392902: Irregular triangle read by rows: row n lists the distinct prime factors of the generalized Fermat number F_n(6) = 6^(2^n) + 1.

The programs for A392902, there is no canonical definition to state claims against.
-/

/-! ## A392902.P11630019212535148830

`A273947(A123534(n+3)*A130675(n+1))`
-/

namespace A392902.P11630019212535148830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273947 (A123534 (n + 3) * A130675 (n + 1)).toNat

end

end A392902.P11630019212535148830

/-!
# A392903: Irregular triangle read by rows: row n lists the distinct prime factors of the generalized Fermat number F_n(7) = 7^(2^n) + 1.

The programs for A392903, there is no canonical definition to state claims against.
-/

/-! ## A392903.P13940094905769682877

`∑{p}[∑[A048052(2*n+1)], #]`
-/

namespace A392903.P13940094905769682877
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048052 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A392903.P13940094905769682877

/-!
# A392907: Achilles numbers that are neither biquadratefree nor cubefull.

The programs for A392907, there is no canonical definition to state claims against.
-/

/-! ## A392907.P16142896441256206065

`∩[A390539(n+1), A392134(n+1)]`
-/

namespace A392907.P16142896441256206065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392907.P16142896441256206065

/-! ## A392907.P18141712118521780720

`∩[A389558(n+1), A392134(n+1)]`
-/

namespace A392907.P18141712118521780720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389558 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392907.P18141712118521780720

/-! ## A392907.P11980323453862500404

`∩[A387256(n+1), A392134(n+1)]`
-/

namespace A392907.P11980323453862500404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392907.P11980323453862500404

/-! ## A392907.P216778257941723053

`∩[A325240(n+1), A392134(n+1)]`
-/

namespace A392907.P216778257941723053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392907.P216778257941723053

/-! ## A392907.P8331509560536876546

`∩[A376172(n+1), A392134(n+1)]`
-/

namespace A392907.P8331509560536876546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392907.P8331509560536876546

/-! ## A392907.P4772864376595205764

`∩[A046101(n+1), A390539(n+1)]`
-/

namespace A392907.P4772864376595205764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392907.P4772864376595205764

/-!
# A392908: Cubefull Achilles numbers that are not 4-full.

The programs for A392908, there is no canonical definition to state claims against.
-/

/-! ## A392908.P15209804887671358437

`∩[A388293(n+1), A391593(n+1)]`
-/

namespace A392908.P15209804887671358437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P15209804887671358437

/-! ## A392908.P4882691059639094890

`∩[A391593(n+1), A391980(n+1)]`
-/

namespace A392908.P4882691059639094890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P4882691059639094890

/-! ## A392908.P16943039312796525821

`∩[A036966(n+1), A392134(n+1)]`
-/

namespace A392908.P16943039312796525821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P16943039312796525821

/-! ## A392908.P17506657447665445897

`∩[A372695(n+1), A392134(n+1)]`
-/

namespace A392908.P17506657447665445897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P17506657447665445897

/-! ## A392908.P598775011367168183

`∩[A376173(n+1), A392134(n+1)]`
-/

namespace A392908.P598775011367168183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P598775011367168183

/-! ## A392908.P6618812831109158728

`∩[A388293(n+1), A392134(n+1)]`
-/

namespace A392908.P6618812831109158728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P6618812831109158728

/-! ## A392908.P15377439669979349342

`∩[A389551(n+1), A392134(n+1)]`
-/

namespace A392908.P15377439669979349342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P15377439669979349342

/-! ## A392908.P11585665559936940307

`∩[A391593(n+1), A392134(n+1)]`
-/

namespace A392908.P11585665559936940307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P11585665559936940307

/-! ## A392908.P12222811204363742069

`∩[A052486(n+1), A391593(n+1)]`
-/

namespace A392908.P12222811204363742069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P12222811204363742069

/-! ## A392908.P7463312735618781856

`∩[A389959(n+1), A391593(n+1)]`
-/

namespace A392908.P7463312735618781856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P7463312735618781856

/-! ## A392908.P5370290259643960441

`∩[A389753(n+1), A391593(n+1)]`
-/

namespace A392908.P5370290259643960441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392908.P5370290259643960441

/-!
# A392910: Semiperfect numbers that cannot be represented as a sum of their nontrivial divisors.

The programs for A392910, there is no canonical definition to state claims against.
-/

/-! ## A392910.P404456228990400350

`∪[A308710(n+1), A339343(n+1)]`
-/

namespace A392910.P404456228990400350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392910.P404456228990400350

/-!
# A392911: Unit-anchored semiperfect numbers (A392910) whose odd part (A000265) is not prime.

The programs for A392911, there is no canonical definition to state claims against.
-/

/-! ## A392911.P4893447978309490349

`filter[A339343(n+1), A379958(#)]`
-/

namespace A392911.P4893447978309490349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A392911.P4893447978309490349

/-! ## A392911.P4921555001745785918

`filter[A392910(n+1), A379958(#)]`
-/

namespace A392911.P4921555001745785918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A392911.P4921555001745785918

/-! ## A392911.P2142440836499631925

`∩[A339343(n+1), A390873(n+1)]`
-/

namespace A392911.P2142440836499631925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392911.P2142440836499631925

/-! ## A392911.P5096280243992135979

`∩[A390873(n+1), A392910(n+1)]`
-/

namespace A392911.P5096280243992135979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392911.P5096280243992135979

/-!
# A392912: Primitive semiperfect numbers (A006036) that are not unit-anchored semiperfects (A392910).

The programs for A392912, there is no canonical definition to state claims against.
-/

/-! ## A392912.P11591974844817198822

`∩[A006036(n+1), A136446(n+1)]`
-/

namespace A392912.P11591974844817198822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136446 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392912.P11591974844817198822

/-!
# A392915: Expansion of e.g.f. -LambertW(-x*log(1-x)^2).

The programs for A392915, there is no canonical definition to state claims against.
-/

/-! ## A392915.P7508124653334018854

`A392823(n)+A010815(A019308(n))`
-/

namespace A392915.P7508124653334018854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392823 n + A010815 (A019308 n).toNat

end

end A392915.P7508124653334018854

/-! ## A392915.P8030561185586325600

`lcm(A071625(A276723(n)), A392823(n))`
-/

namespace A392915.P8030561185586325600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071625 (A276723 n).toNat) (A392823 n)

end

end A392915.P8030561185586325600

/-! ## A392915.P16991570319736661122

`xor(A000035(A038205(n)), A392823(n))`
-/

namespace A392915.P16991570319736661122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A038205 n).toNat) (A392823 n)

end

end A392915.P16991570319736661122

/-! ## A392915.P14146642773198148660

`xor(A000035(A249572(n)), A392823(n))`
-/

namespace A392915.P14146642773198148660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A249572 n).toNat) (A392823 n)

end

end A392915.P14146642773198148660

/-! ## A392915.P867612673267885420

`xor(A374128(A001891(2*n+3)), A392823(n))`
-/

namespace A392915.P867612673267885420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A374128 (A001891 (2 * n + 3)).toNat) (A392823 n)

end

end A392915.P867612673267885420

/-!
# A392916: Expansion of e.g.f. 1/(1 + LambertW(-x*log(1-x)^2)).

The programs for A392916, there is no canonical definition to state claims against.
-/

/-! ## A392916.P2229078550203646333

`filter[A392830(n), A336834(#)]`
-/

namespace A392916.P2229078550203646333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336834 (f1 j).toNat = 1) n)

end

end A392916.P2229078550203646333

/-! ## A392916.P11461474872126686815

`filter[A392830(n), A342005(#)]`
-/

namespace A392916.P11461474872126686815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342005 (f1 j).toNat = 1) n)

end

end A392916.P11461474872126686815

/-! ## A392916.P7818947148221281874

`filter[A392830(n), A354034(#)]`
-/

namespace A392916.P7818947148221281874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A392916.P7818947148221281874

/-! ## A392916.P9099702237232248519

`filter[A392830(n), A374048(#)]`
-/

namespace A392916.P9099702237232248519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374048 (f1 j).toNat = 1) n)

end

end A392916.P9099702237232248519

/-!
# A392918: Expansion of e.g.f. -LambertW(x*log(1-x)^3).

The programs for A392918, there is no canonical definition to state claims against.
-/

/-! ## A392918.P14376575445571954828

`A392824(n)%A292884(n+1)²`
-/

namespace A392918.P14376575445571954828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392824 n) (A292884 (n + 1) ^ 2)

end

end A392918.P14376575445571954828

/-! ## A392918.P6365255301963986276

`A392824(n)%A000578(A142964(n))`
-/

namespace A392918.P6365255301963986276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392824 n) (A000578 (A142964 n).toNat)

end

end A392918.P6365255301963986276

/-!
# A392919: Number of partitions p of n such that (maximal multiplicity of the parts of p) <= (minimal part of p).

The programs for A392919, there is no canonical definition to state claims against.
-/

/-! ## A392919.P10951495922553128306

`A239312(n+1)+A025469(A001787(n))`
-/

namespace A392919.P10951495922553128306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239312 (n + 1) + A025469 (A001787 n).toNat

end

end A392919.P10951495922553128306

/-!
# A392924: The number of partitions of n such that there exists a part p, that appears in exactly p*K/100 parts, where K is the total number of parts.

The programs for A392924, there is no canonical definition to state claims against.
-/

/-! ## A392924.P10956996524911817392

`A171524(A002095(2*n))-1`
-/

namespace A392924.P10956996524911817392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171524 (A002095 (2 * n)).toNat - 1

end

end A392924.P10956996524911817392

/-! ## A392924.P17471522328851008502

`filter[A147785(3*n), A242718(#)]`
-/

namespace A392924.P17471522328851008502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147785 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A242718 (f1 j).toNat = 1) n)

end

end A392924.P17471522328851008502

/-!
# A392926: 

The programs for A392926, there is no canonical definition to state claims against.
-/

/-! ## A392926.P404851777952840402

`filter[A392288(n+1), A389905(#)]`
-/

namespace A392926.P404851777952840402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A392926.P404851777952840402

/-! ## A392926.P9579304225552984359

`∩[A392288(n+1), A332785(n+1)]`
-/

namespace A392926.P9579304225552984359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392926.P9579304225552984359

/-! ## A392926.P14743082382278824141

`∩[A130092(n+1), A332785(n+1)]`
-/

namespace A392926.P14743082382278824141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392926.P14743082382278824141

/-! ## A392926.P2893752317134508234

`∩[A392288(n+1), A052485(n+1)]`
-/

namespace A392926.P2893752317134508234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392926.P2893752317134508234

/-!
# A392927: Achilles numbers k with at least 1 repeated exponent of prime power factors.

The programs for A392927, there is no canonical definition to state claims against.
-/

/-! ## A392927.P10297325629358826310

`A056583(A394050(n+1))`
-/

namespace A392927.P10297325629358826310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (A394050 (n + 1)).toNat

end

end A392927.P10297325629358826310

/-! ## A392927.P9668564190768016656

`filter[A394050(n+1), A174898(#)]`
-/

namespace A392927.P9668564190768016656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A392927.P9668564190768016656

/-! ## A392927.P13237020717960831207

`filter[A394050(n+1), A316829(#)]`
-/

namespace A392927.P13237020717960831207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A392927.P13237020717960831207

/-! ## A392927.P8704272517100954012

`filter[A394050(n+1), A294937(#)]`
-/

namespace A392927.P8704272517100954012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A392927.P8704272517100954012

/-! ## A392927.P4183314049623364778

`filter[A394050(n+1), A381735(#)]`
-/

namespace A392927.P4183314049623364778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A381735 (f1 j).toNat = 1) n)

end

end A392927.P4183314049623364778

/-!
# A392929: E.g.f. A(x) satisfies A(x) = 1 - (1/x) * log(1 - x^2*A(x)).

The programs for A392929, there is no canonical definition to state claims against.
-/

/-! ## A392929.P2031833061600758013

`A155706(A379852(n))`
-/

namespace A392929.P2031833061600758013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155706 (A379852 n).toNat

end

end A392929.P2031833061600758013

/-! ## A392929.P11108376814053968887

`A274824(A072638(n)-(n-1))`
-/

namespace A392929.P11108376814053968887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274824 (A072638 n - ((n : ℤ) - 1)).toNat

end

end A392929.P11108376814053968887

/-!
# A392930: E.g.f. A(x) satisfies A(x) = 1 - (A(x)/x) * log(1 - x^2*A(x)).

The programs for A392930, there is no canonical definition to state claims against.
-/

/-! ## A392930.P13890747802367896623

`A302128(n^(n+1)+1)`
-/

namespace A392930.P13890747802367896623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302128 (n ^ (n + 1) + 1)

end

end A392930.P13890747802367896623

/-!
# A392932: E.g.f. A(x) satisfies A(x) = 1 - (A(x)/x) * log(1 - x^2*A(x)^2).

The programs for A392932, there is no canonical definition to state claims against.
-/

/-! ## A392932.P2175420751236958758

`A013938(A218676(n))`
-/

namespace A392932.P2175420751236958758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013938 (A218676 n).toNat

end

end A392932.P2175420751236958758

/-!
# A392933: E.g.f. A(x) satisfies A(x) = 1 - x*A(x) * log(1 - x^2*A(x)^2).

The programs for A392933, there is no canonical definition to state claims against.
-/

/-! ## A392933.P3487099384336298832

`filter[A392931(n), A039963(#)]`
-/

namespace A392933.P3487099384336298832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A392933.P3487099384336298832

/-! ## A392933.P8450258892998312677

`filter[A392931(n), A071036(#)]`
-/

namespace A392933.P8450258892998312677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071036 (f1 j).toNat = 1) n)

end

end A392933.P8450258892998312677

/-! ## A392933.P9728994721851222300

`filter[A392931(n), A071038(#)]`
-/

namespace A392933.P9728994721851222300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A392933.P9728994721851222300

/-! ## A392933.P7715459168734283332

`filter[A392931(n), A076213(#)]`
-/

namespace A392933.P7715459168734283332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A076213 (f1 j).toNat = 1) n)

end

end A392933.P7715459168734283332

/-!
# A392934: E.g.f. A(x) satisfies A(x) = 1 - x*A(x)^3 * log(1 - x^2*A(x)^2).

The programs for A392934, there is no canonical definition to state claims against.
-/

/-! ## A392934.P13106822136129158738

`filter[A392958(n), A005713(#)]`
-/

namespace A392934.P13106822136129158738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005713 (f1 j).toNat = 1) n)

end

end A392934.P13106822136129158738

/-! ## A392934.P6588706759019694255

`filter[A392958(n), A040051(#)]`
-/

namespace A392934.P6588706759019694255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A040051 (f1 j).toNat = 1) n)

end

end A392934.P6588706759019694255

/-! ## A392934.P14654871399686658183

`filter[A392958(n), A115789(#)]`
-/

namespace A392934.P14654871399686658183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115789 (f1 j).toNat = 1) n)

end

end A392934.P14654871399686658183

/-!
# A392935: E.g.f. A(x) satisfies A(x) = 1 - x^3*A(x)^5 * log(1 - x^2*A(x)^2).

The programs for A392935, there is no canonical definition to state claims against.
-/

/-! ## A392935.P8193780893148304905

`A336309(A213544(n+1))`
-/

namespace A392935.P8193780893148304905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336309 (A213544 (n + 1)).toNat

end

end A392935.P8193780893148304905

/-! ## A392935.P17983435690913445962

`A392991(n)/A000002(ceil(2^(2*n-1)))`
-/

namespace A392935.P17983435690913445962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392991 n : ℚ) / (A000002 ⌈(2 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)⌉.toNat : ℚ)

end

end A392935.P17983435690913445962

/-! ## A392935.P8832194235381137911

`A010815(n)*A160017(A371160(n))`
-/

namespace A392935.P8832194235381137911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n * A160017 (A371160 n).toNat

end

end A392935.P8832194235381137911

/-! ## A392935.P16367654026641941199

`A241422(A034691(n))*A371160(n)`
-/

namespace A392935.P16367654026641941199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241422 (A034691 n).toNat * A371160 n

end

end A392935.P16367654026641941199

/-!
# A392936: Primitive terms of A023198: numbers k with the property sigma(k)/k >= 4 that are not divisible by any other number with that property.

The programs for A392936, there is no canonical definition to state claims against.
-/

/-! ## A392936.P4805704067329406881

`A204831(A106131(n+1))`
-/

namespace A392936.P4805704067329406881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204831 (A106131 (n + 1)).toNat

end

end A392936.P4805704067329406881

/-!
# A392938: E.g.f. A(x) satisfies A(x) = 1 - x*A(x) * log(1 - x^3*A(x)^3).

The programs for A392938, there is no canonical definition to state claims against.
-/

/-! ## A392938.P15868153858052216569

`A355913(A104219(n+4))*A392996(n)`
-/

namespace A392938.P15868153858052216569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355913 (A104219 (n + 4)).toNat * A392996 n

end

end A392938.P15868153858052216569

/-! ## A392938.P18073211639179272509

`A392996(A029965(n+1))`
-/

namespace A392938.P18073211639179272509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392996 (A029965 (n + 1)).toNat

end

end A392938.P18073211639179272509

/-! ## A392938.P8666143894988296707

`A392996(n)%A084958(n+5)`
-/

namespace A392938.P8666143894988296707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392996 n) (A084958 (n + 5))

end

end A392938.P8666143894988296707

/-! ## A392938.P4729498424716615424

`A392996(n)+A000038(A051041(n))`
-/

namespace A392938.P4729498424716615424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392996 n + A000038 (A051041 n).toNat

end

end A392938.P4729498424716615424

/-! ## A392938.P16271087326940695425

`A392982(A238236(n))*A392996(n)`
-/

namespace A392938.P16271087326940695425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392982 (A238236 n).toNat * A392996 n

end

end A392938.P16271087326940695425

/-!
# A392942: Distinct semiperimeters of triangles with integer sides, integer area, and integer circumradius.

The programs for A392942, there is no canonical definition to state claims against.
-/

/-! ## A392942.P13881544419191757314

`lt[A324694(n+1), A002494(A032741(n))]`
-/

namespace A392942.P13881544419191757314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392942.P13881544419191757314

/-! ## A392942.P9519269419931721763

`lt[A119477(n+1), A156724(A304442(n))]`
-/

namespace A392942.P9519269419931721763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156724 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392942.P9519269419931721763

/-! ## A392942.P17925998082554813419

`lt[A345917(n+1), A351505(A032741(n))]`
-/

namespace A392942.P17925998082554813419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351505 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392942.P17925998082554813419

/-! ## A392942.P8007014993952367799

`A325781(lt[A199909(n+1), A353392(n)])`
-/

namespace A392942.P8007014993952367799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392942.P8007014993952367799

/-! ## A392942.P7418718072270213444

`lt[A353847(n+3), A007387(A304442(n))]`
-/

namespace A392942.P7418718072270213444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007387 (A304442 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A392942.P7418718072270213444

/-!
# A392943: a(n) is the number of integer-sided triangles whose area and circumradius are integers, and whose semiperimeter equals A392942(n).

The programs for A392943, there is no canonical definition to state claims against.
-/

/-! ## A392943.P7409670266445829065

`gcd(A001222(A280512(3*n+5)), A036234(2*n+5))`
-/

namespace A392943.P7409670266445829065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A280512 (3 * n + 5)).toNat) (A036234 (2 * n + 5))

end

end A392943.P7409670266445829065

/-!
# A392945: Irregular triangular array T(n,k) read by rows. Row n gives the number of permutations of {1,2,...,n} whose descent set is contained in S for each subset S of {1,2,...,n-1} where the subsets are ordered first by size and then lexicographically (Cf. A082185).

The programs for A392945, there is no canonical definition to state claims against.
-/

/-! ## A392945.P7582818621878832435

`A124774(A209862(n))`
-/

namespace A392945.P7582818621878832435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A209862 n).toNat

end

end A392945.P7582818621878832435

/-! ## A392945.P7145152816168956707

`A384955(A209644(n))`
-/

namespace A392945.P7145152816168956707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384955 (A209644 n).toNat

end

end A392945.P7145152816168956707

/-! ## A392945.P12388683008324313395

`A206487(A324939(n))`
-/

namespace A392945.P12388683008324313395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206487 (A324939 n).toNat

end

end A392945.P12388683008324313395

/-! ## A392945.P11126633360165480228

`A124774(lt[A303182(n+1), 32])`
-/

namespace A392945.P11126633360165480228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303182 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A392945.P11126633360165480228

/-! ## A392945.P5917829832691127871

`A008480(A324939(n)^A214268(n))`
-/

namespace A392945.P5917829832691127871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.roundAway ((A324939 n : ℚ) ^ (A214268 n : ℤ))).toNat

end

end A392945.P5917829832691127871

/-!
# A392947: Primes p such that the multiplicative order of -2 modulo p is a multiple of 4.

The programs for A392947, there is no canonical definition to state claims against.
-/

/-! ## A392947.P3954529687265376238

`∩[A216747(n+1), A296243(n+1)]`
-/

namespace A392947.P3954529687265376238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392947.P3954529687265376238

/-! ## A392947.P2837905570753161541

`∩[A160656(n+1), A387595(n+1)]`
-/

namespace A392947.P2837905570753161541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392947.P2837905570753161541

/-! ## A392947.P15361410667575127299

`∩[A243292(n+1), A387595(n+1)]`
-/

namespace A392947.P15361410667575127299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243292 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392947.P15361410667575127299

/-! ## A392947.P12676191594040897059

`∩[A322394(n+1), A387595(n+1)]`
-/

namespace A392947.P12676191594040897059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392947.P12676191594040897059

/-!
# A392950: Numbers k such that sigma(k) = 2*k - tau(phi(k)).

The programs for A392950, there is no canonical definition to state claims against.
-/

/-! ## A392950.P79159613266567199

`A347205(A102111(3*n+2)-A035309(2*n))`
-/

namespace A392950.P79159613266567199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347205 (A102111 (3 * n + 2) - A035309 (2 * n)).toNat

end

end A392950.P79159613266567199

/-!
# A392952: Numbers k such that sigma(k) = 2*k + 2*tau(phi(k)).

The programs for A392952, there is no canonical definition to state claims against.
-/

/-! ## A392952.P13432594130398465924

`∩[A378652(n+1), A354912(n)]`
-/

namespace A392952.P13432594130398465924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354912 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392952.P13432594130398465924

/-!
# A392953: E.g.f. A(x) satisfies A(x) = 1 + (1/x) * (exp(x^2*A(x)) - 1).

The programs for A392953, there is no canonical definition to state claims against.
-/

/-! ## A392953.P12265080889987022496

`A373847(A027073(n))`
-/

namespace A392953.P12265080889987022496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A027073 n).toNat

end

end A392953.P12265080889987022496

/-! ## A392953.P13639997146027263417

`A123108(A081919(n)+A001147(n))`
-/

namespace A392953.P13639997146027263417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A081919 n + A001147 n).toNat

end

end A392953.P13639997146027263417

/-!
# A392955: E.g.f. A(x) satisfies A(x) = 1 + x*A(x)^2 * (exp(x^2*A(x)) - 1).

The programs for A392955, there is no canonical definition to state claims against.
-/

/-! ## A392955.P5469284677592937195

`A392931(n)/A206437(A266152(2*(n+2)))`
-/

namespace A392955.P5469284677592937195
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392931 n : ℚ) / (A206437 (A266152 (2 * (n + 2))).toNat : ℚ)

end

end A392955.P5469284677592937195

/-!
# A392957: E.g.f. A(x) satisfies A(x) = 1 + x*A(x) * (exp(x^2*A(x)^2) - 1).

The programs for A392957, there is no canonical definition to state claims against.
-/

/-! ## A392957.P3950411687494925982

`filter[A392955(n), A039963(#)]`
-/

namespace A392957.P3950411687494925982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A392957.P3950411687494925982

/-! ## A392957.P6260076015579130901

`filter[A392955(n), A071036(#)]`
-/

namespace A392957.P6260076015579130901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071036 (f1 j).toNat = 1) n)

end

end A392957.P6260076015579130901

/-! ## A392957.P13138552039265041323

`filter[A392955(n), A071038(#)]`
-/

namespace A392957.P13138552039265041323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071038 (f1 j).toNat = 1) n)

end

end A392957.P13138552039265041323

/-! ## A392957.P5915135431990813072

`filter[A392955(n), A088911(#)]`
-/

namespace A392957.P5915135431990813072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A392957.P5915135431990813072

/-!
# A392958: E.g.f. A(x) satisfies A(x) = 1 + x*A(x)^3 * (exp(x^2*A(x)^2) - 1).

The programs for A392958, there is no canonical definition to state claims against.
-/

/-! ## A392958.P18065576329559922338

`A392934(n)/A072411(A082536(n+1))`
-/

namespace A392958.P18065576329559922338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392934 n : ℚ) / (A072411 (A082536 (n + 1)).toNat : ℚ)

end

end A392958.P18065576329559922338

/-!
# A392959: E.g.f. A(x) satisfies A(x) = 1 + (1/x^2) * (exp(x^3*A(x)) - 1).

The programs for A392959, there is no canonical definition to state claims against.
-/

/-! ## A392959.P116513212950558847

`A140067(A148165(n))`
-/

namespace A392959.P116513212950558847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140067 (A148165 n).toNat

end

end A392959.P116513212950558847

/-! ## A392959.P15433553052241909591

`filter[A392960(n), A022930(#)]`
-/

namespace A392959.P15433553052241909591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A022930 (f1 j).toNat = 1) n)

end

end A392959.P15433553052241909591

/-! ## A392959.P213335935210306281

`filter[A392960(n), A030317(#)]`
-/

namespace A392959.P213335935210306281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392960 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A030317 (f1 j).toNat = 1) n)

end

end A392959.P213335935210306281

/-!
# A392961: Numbers k that are the concatenation of two divisors of k.

The programs for A392961, there is no canonical definition to state claims against.
-/

/-! ## A392961.P18072570456607870364

`∩[A130176(n+1), A249766(n+1)]`
-/

namespace A392961.P18072570456607870364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392961.P18072570456607870364

/-! ## A392961.P5809284967549114761

`∩[A236403(n+1), A249766(n+1)]`
-/

namespace A392961.P5809284967549114761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392961.P5809284967549114761

/-! ## A392961.P4760371360999237704

`∩[A238368(n+1), A249766(n+1)]`
-/

namespace A392961.P4760371360999237704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249766 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392961.P4760371360999237704

/-! ## A392961.P8921133343628231902

`∩[A249766(n+1), A254075(n+1)]`
-/

namespace A392961.P8921133343628231902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392961.P8921133343628231902

/-! ## A392961.P16800336069466734192

`∩[A236403(n+1), A383592(n+1)]`
-/

namespace A392961.P16800336069466734192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383592 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392961.P16800336069466734192

/-!
# A392964: a(n) is the least nonnegative integer such that for all positive integers k, appending zero or more copies of a(n) to k will eventually result in a value divisible by n.

The programs for A392964, there is no canonical definition to state claims against.
-/

/-! ## A392964.P8589112961437557277

`A050464(n+1)*A135654(A240439(n+1))`
-/

namespace A392964.P8589112961437557277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050464 (n + 1) * A135654 (A240439 (n + 1)).toNat

end

end A392964.P8589112961437557277

/-!
# A392965: Least number of vertices in a stepwise-irregular tree with at least one vertex of degree n.

The programs for A392965, there is no canonical definition to state claims against.
-/

/-! ## A392965.P2287093294608849255

`A117574(n)+A025428(A001273(n))`
-/

namespace A392965.P2287093294608849255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117574 n + A025428 (A001273 n).toNat

end

end A392965.P2287093294608849255

/-! ## A392965.P8785547603280293230

`A347049(A135882(n))+A117574(n)`
-/

namespace A392965.P8785547603280293230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347049 (A135882 n).toNat + A117574 n

end

end A392965.P8785547603280293230

/-! ## A392965.P14366817964511607769

`A156562(A390608(n+1)+A005802(n))`
-/

namespace A392965.P14366817964511607769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A390608 (n + 1) + A005802 n).toNat

end

end A392965.P14366817964511607769

/-!
# A392966: Number of ordered rooted trees with non-root node weights summing to n. Such that non-root nodes are each labeled with a subset s of [n], the weight of a node is the number of elements in s, only non-root nodes labeled with singleton subsets can have child nodes, and the labels of a given tree form a set partition of [n].

The programs for A392966, there is no canonical definition to state claims against.
-/

/-! ## A392966.P1288634083740869911

`A072778((2*n+1)^(n-1))`
-/

namespace A392966.P1288634083740869911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072778 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A392966.P1288634083740869911

/-!
# A392971: Number of vertices in a complete bipartite graph where the n vertices of each part are placed on the vertices, and on opposite sides, of a regular 2n-gon.

The programs for A392971, there is no canonical definition to state claims against.
-/

/-! ## A392971.P12971457149033152730

`A392973(n+1)-A392972(n+1)+1`
-/

namespace A392971.P12971457149033152730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392973 (n + 1) - A392972 (n + 1) + 1

end

end A392971.P12971457149033152730

/-!
# A392972: Number of finite regions in a complete bipartite graph where the n vertices of each part are placed on the vertices, and on opposite sides, of a regular 2n-gon.

The programs for A392972, there is no canonical definition to state claims against.
-/

/-! ## A392972.P16766363772706339962

`A392973(n+1)-A392971(n+1)+1`
-/

namespace A392972.P16766363772706339962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392973 (n + 1) - A392971 (n + 1) + 1

end

end A392972.P16766363772706339962

/-! ## A392972.P8844682658499059124

`A394786(A072855(n+2))`
-/

namespace A392972.P8844682658499059124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394786 (A072855 (n + 2)).toNat

end

end A392972.P8844682658499059124

/-!
# A392973: Number of edges in a complete bipartite graph where the n vertices of each part are placed on the vertices, and on opposite sides, of a regular 2n-gon.

The programs for A392973, there is no canonical definition to state claims against.
-/

/-! ## A392973.P6859720126701517368

`A392971(n+1)+A392972(n+1)-1`
-/

namespace A392973.P6859720126701517368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392971 (n + 1) + A392972 (n + 1) - 1

end

end A392973.P6859720126701517368

/-!
# A392974: Numbers k such that sopfr(k-1) = sopfr(k+1), where sopfr = A001414.

The programs for A392974, there is no canonical definition to state claims against.
-/

/-! ## A392974.P6575652214556910842

`eq[A001414(n+1), A001414(n+3)]+2`
-/

namespace A392974.P6575652214556910842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A392974.P6575652214556910842

/-! ## A392974.P11774402472010001425

`A008619(4*A039752(n+1))`
-/

namespace A392974.P11774402472010001425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A039752 (n + 1)).toNat

end

end A392974.P11774402472010001425

/-!
# A392976: Expansion of (1/x) * Series_Reversion( x * ((1-x^2)^2 - x) ).

The programs for A392976, there is no canonical definition to state claims against.
-/

/-! ## A392976.P17497812933544934194

`A100883(n)+A059995(A049315(n))`
-/

namespace A392976.P17497812933544934194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100883 n + A059995 (A049315 n).toNat

end

end A392976.P17497812933544934194

/-! ## A392976.P3053747163255336970

`A378875(A378889(n))+A369486(n)`
-/

namespace A392976.P3053747163255336970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378875 (A378889 n).toNat + A369486 n

end

end A392976.P3053747163255336970

/-!
# A392978: Expansion of (1/x) * Series_Reversion( x * ((1-x^3)^2 - x) ).

The programs for A392978, there is no canonical definition to state claims against.
-/

/-! ## A392978.P15793851315634746777

`A369489(A073788(n))`
-/

namespace A392978.P15793851315634746777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369489 (A073788 n).toNat

end

end A392978.P15793851315634746777

/-! ## A392978.P11259508607724225049

`A369489(A004879(n+1))`
-/

namespace A392978.P11259508607724225049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369489 (A004879 (n + 1)).toNat

end

end A392978.P11259508607724225049

/-! ## A392978.P13917098235682141815

`A369489(A004890(n+1))`
-/

namespace A392978.P13917098235682141815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369489 (A004890 (n + 1)).toNat

end

end A392978.P13917098235682141815

/-!
# A392979: Expansion of (1/x) * Series_Reversion( x * ((1-x^3)^3 - x) ).

The programs for A392979, there is no canonical definition to state claims against.
-/

/-! ## A392979.P3718691218295265313

`A175819(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A392979.P3718691218295265313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A175819 (a (n - 1)).toNat

end

end A392979.P3718691218295265313

/-! ## A392979.P1453343811599130330

`A334267(∑[3*a(n-1)-4*a(n-3)])` with `a(0)=2, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A392979.P1453343811599130330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 0, 1, 3] fun n f1 =>
  3 * f1 (n - 1) - 4 * f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A392979.P1453343811599130330

/-!
# A392980: Positions of zeros in A393336.

The programs for A392980, the canonical program `A392980.P15181118893878896143` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392980 has offset 1).

The definition of A392980 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A392236, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A392980.P15181118893878896143

`A392236(2*(n+1))/2`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A392980

/-- `A392236(2*(n+1))/2` -/
def P15181118893878896143.Spec : Prop :=
  ∀ n, P15181118893878896143.a n = (A392980 (n + 1) : ℚ)

end A392980

/-! ## A392980.P758027165200629620

`2^A008683(A020484(n))*A392236(2*(n+1))`
-/

namespace A392980.P758027165200629620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) * (A392236 (2 * (n + 1)) : ℚ)

end

end A392980.P758027165200629620

namespace A392980

/-- `2^A008683(A020484(n))*A392236(2*(n+1))` -/
def P758027165200629620.Spec : Prop :=
  ∀ n, P758027165200629620.a n = (A392980 (n + 1) : ℚ)

end A392980

/-! ## A392980.P13416683119997135576

`eq[0, A393336(n)]`
-/

namespace A392980.P13416683119997135576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393336 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A392980.P13416683119997135576

namespace A392980

/-- `eq[0, A393336(n)]` -/
def P13416683119997135576.Spec : Prop :=
  ∀ n, (P13416683119997135576.a n : ℤ) = A392980 (n + 1)

end A392980

/-! ## A392980.P9190582349437930385

`eq[A029931(n), A359400(n)]`
-/

namespace A392980.P9190582349437930385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392980.P9190582349437930385

namespace A392980

/-- `eq[A029931(n), A359400(n)]` -/
def P9190582349437930385.Spec : Prop :=
  ∀ n, (P9190582349437930385.a n : ℤ) = A392980 (n + 1)

end A392980

/-! ## A392980.P2206189052637327984

`eq[log2(A029930(n)), A359400(n)]`
-/

namespace A392980.P2206189052637327984
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A029930 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A392980.P2206189052637327984

namespace A392980

/-- `eq[log2(A029930(n)), A359400(n)]` -/
def P2206189052637327984.Spec : Prop :=
  ∀ n, (P2206189052637327984.a n : ℤ) = A392980 (n + 1)

end A392980

/-! ## A392980.P12313079546684211109

`eq[A073642(2*n), A359400(n)]`
-/

namespace A392980.P12313079546684211109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392980.P12313079546684211109

namespace A392980

/-- `eq[A073642(2*n), A359400(n)]` -/
def P12313079546684211109.Spec : Prop :=
  ∀ n, (P12313079546684211109.a n : ℤ) = A392980 (n + 1)

end A392980

/-! ## A392980.P5733238977377428911

`eq[A029931(n), A029931(A035327(n))]`
-/

namespace A392980.P5733238977377428911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392980.P5733238977377428911

namespace A392980

/-- `eq[A029931(n), A029931(A035327(n))]` -/
def P5733238977377428911.Spec : Prop :=
  ∀ n, (P5733238977377428911.a n : ℤ) = A392980 (n + 1)

end A392980

/-! ## A392980.P519405160064873478

`eq[A073642(n)+A000120(n), A359400(n)]`
-/

namespace A392980.P519405160064873478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 n + A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392980.P519405160064873478

namespace A392980

/-- `eq[A073642(n)+A000120(n), A359400(n)]` -/
def P519405160064873478.Spec : Prop :=
  ∀ n, (P519405160064873478.a n : ℤ) = A392980 (n + 1)

end A392980

/-! ## A392980.P4316558407470790159

`eq[A283981(n)+A280700(n), A359400(n)]`
-/

namespace A392980.P4316558407470790159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283981 n + A280700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392980.P4316558407470790159

namespace A392980

/-- `eq[A283981(n)+A280700(n), A359400(n)]` -/
def P4316558407470790159.Spec : Prop :=
  ∀ n, (P4316558407470790159.a n : ℤ) = A392980 (n + 1)

end A392980

/-! ## A392980.P8165699680433200648

`eq[A249154(n)-A198192(n), A359400(n)]`
-/

namespace A392980.P8165699680433200648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249154 n - A198192 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392980.P8165699680433200648

namespace A392980

/-- `eq[A249154(n)-A198192(n), A359400(n)]` -/
def P8165699680433200648.Spec : Prop :=
  ∀ n, (P8165699680433200648.a n : ℤ) = A392980 (n + 1)

end A392980

/-! ## A392980.P13532671605055575145

`eq[A231204(n)-A359495(2*n), A359400(n)]`
-/

namespace A392980.P13532671605055575145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231204 n - A359495 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359400 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A392980.P13532671605055575145

namespace A392980

/-- `eq[A231204(n)-A359495(2*n), A359400(n)]` -/
def P13532671605055575145.Spec : Prop :=
  ∀ n, (P13532671605055575145.a n : ℤ) = A392980 (n + 1)

end A392980

/-!
# A392981: Expansion of e.g.f. 1 / (1 - Sum_{k>=1} Fibonacci(k+1)*x^k/k!).

The programs for A392981, there is no canonical definition to state claims against.
-/

/-! ## A392981.P722699089273720380

`A346430(n)-A074290(A002110(n))`
-/

namespace A392981.P722699089273720380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346430 n - A074290 (A002110 n).toNat

end

end A392981.P722699089273720380

/-! ## A392981.P13326421723865983111

`A346430(n)-A074290(A090139(n))`
-/

namespace A392981.P13326421723865983111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346430 n - A074290 (A090139 n).toNat

end

end A392981.P13326421723865983111

/-!
# A392983: a(n) is the absolute value of the determinant of the symmetric n X n matrix M defined by M[i,j] = gcd(i,j) for 0 <= i,j <= n-1.

The programs for A392983, there is no canonical definition to state claims against.
-/

/-! ## A392983.P13381251182267651636

`A334267(A334271(n)+A001883(n))`
-/

namespace A392983.P13381251182267651636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334267 (A334271 n + A001883 n).toNat

end

end A392983.P13381251182267651636

/-!
# A392985: Composite numbers, k, whose prime factors, viewed on a log log scale, have a large standard deviation defined with respect to bigomega(k), as specified in the comments.

The programs for A392985, there is no canonical definition to state claims against.
-/

/-! ## A392985.P1815743885831354890

`A255554(A354811(n+2))`
-/

namespace A392985.P1815743885831354890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255554 (A354811 (n + 2)).toNat

end

end A392985.P1815743885831354890

/-! ## A392985.P9484699692614928553

`filter[A136802(n+2), A165728(#)]`
-/

namespace A392985.P9484699692614928553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136802 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165728 (f1 j).toNat = 1) n)

end

end A392985.P9484699692614928553

/-! ## A392985.P9582135681002610628

`filter[A162409(n+3), A165728(#)]`
-/

namespace A392985.P9582135681002610628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162409 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165728 (f1 j).toNat = 1) n)

end

end A392985.P9582135681002610628

/-! ## A392985.P17665875469021333836

`∩[A169804(n+1), A227763(n+1)]`
-/

namespace A392985.P17665875469021333836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392985.P17665875469021333836

/-! ## A392985.P4711718192701025892

`A106325(A386317(n+1))`
-/

namespace A392985.P4711718192701025892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106325 (A386317 (n + 1)).toNat

end

end A392985.P4711718192701025892

/-!
# A392987: The number of 2-dense numbers <= n where the 2-dense numbers are A174973.

The programs for A392987, there is no canonical definition to state claims against.
-/

/-! ## A392987.P4481312839760622086

`∑[A365429(n+1)]`
-/

namespace A392987.P4481312839760622086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392987.P4481312839760622086

/-! ## A392987.P9535364540235341822

`∑[floor(1/A237271(n+1))]`
-/

namespace A392987.P9535364540235341822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A237271 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392987.P9535364540235341822

/-! ## A392987.P17535867658657565231

`comp[A174973(n+1)-1+n]-n`
-/

namespace A392987.P17535867658657565231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A392987.P17535867658657565231

/-! ## A392987.P14692557219412493904

`∑[A244971(n+1)%2]`
-/

namespace A392987.P14692557219412493904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244971 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392987.P14692557219412493904

/-! ## A392987.P12031358744136990088

`∑[A000035(A244971(n+1))]`
-/

namespace A392987.P12031358744136990088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A244971 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392987.P12031358744136990088

/-! ## A392987.P2882670223441370262

`∑[A359826(A244971(n+1)²)]`
-/

namespace A392987.P2882670223441370262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359826 (A244971 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392987.P2882670223441370262

/-!
# A392991: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x*(exp(x^2) - 1)^2) ).

The programs for A392991, there is no canonical definition to state claims against.
-/

/-! ## A392991.P6507480435197519755

`A336309(A013621(n))`
-/

namespace A392991.P6507480435197519755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336309 (A013621 n).toNat

end

end A392991.P6507480435197519755

/-! ## A392991.P17234791701983521571

`A337997(A260708(n))`
-/

namespace A392991.P17234791701983521571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337997 (A260708 n).toNat

end

end A392991.P17234791701983521571

/-! ## A392991.P14045154407900849430

`A339629(A340020(n+1))`
-/

namespace A392991.P14045154407900849430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339629 (A340020 (n + 1)).toNat

end

end A392991.P14045154407900849430

/-! ## A392991.P344299915684493736

`A113129(n*A265263(n))`
-/

namespace A392991.P344299915684493736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113129 ((n : ℤ) * A265263 n).toNat

end

end A392991.P344299915684493736

/-!
# A392992: Expansion of e.g.f. (1/x) * Series_Reversion( x/(1 + x*(exp(x^3) - 1)^2) ).

The programs for A392992, there is no canonical definition to state claims against.
-/

/-! ## A392992.P2788918138066081421

`A392994(n)+A285969(A020714(n))`
-/

namespace A392992.P2788918138066081421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392994 n + A285969 (A020714 n).toNat

end

end A392992.P2788918138066081421

/-! ## A392992.P17807187334615340237

`A393018(A364346(n))+A392994(n)`
-/

namespace A392992.P17807187334615340237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393018 (A364346 n).toNat + A392994 n

end

end A392992.P17807187334615340237

/-! ## A392992.P17958965237652042312

`A392994(n)/A000002(A319616(n))`
-/

namespace A392992.P17958965237652042312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392994 n : ℚ) / (A000002 (A319616 n).toNat : ℚ)

end

end A392992.P17958965237652042312

/-! ## A392992.P4604272058826160332

`A392994(n)%A005905(A003239(n))`
-/

namespace A392992.P4604272058826160332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392994 n) (A005905 (A003239 n).toNat)

end

end A392992.P4604272058826160332

/-! ## A392992.P3220626147276992038

`lcm(A000142(n), A240465(A024166(n)))`
-/

namespace A392992.P3220626147276992038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000142 n) (A240465 (A024166 n).toNat)

end

end A392992.P3220626147276992038

/-!
# A392999: Expansion of e.g.f. (1/x) * Series_Reversion( x/(exp(x) + x^2) ).

The programs for A392999, there is no canonical definition to state claims against.
-/

/-! ## A392999.P16363557349140070353

`A147292(A090982(n))`
-/

namespace A392999.P16363557349140070353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147292 (A090982 n).toNat

end

end A392999.P16363557349140070353

