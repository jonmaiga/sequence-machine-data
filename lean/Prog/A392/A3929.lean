import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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

/-! ## A392901.P6597804241287830704

`A027746(or(A002365(n+1), A041757(n)))`
-/

namespace A392901.P6597804241287830704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027746 (Int.lor (A002365 (n + 1)) (A041757 n)).toNat

end

end A392901.P6597804241287830704

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
# A392906: Number of odd terms in row n of A393283.

The programs for A392906, there is no canonical definition to state claims against.
-/

/-! ## A392906.P14538360199809520047

`∑{#}[n, A393283(C(n+1, 2)+#)%2]`
-/

namespace A392906.P14538360199809520047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), Int.tmod (A393283 (Nat.choose (n + 1) 2 + k)) 2

end

end A392906.P14538360199809520047

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

/-! ## A392910.P10990567314291463943

`∪[A308710(n+1), A392911(n+1)]`
-/

namespace A392910.P10990567314291463943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392910.P10990567314291463943

/-! ## A392910.P5873862897145635971

`filter[A392650(n+1), A210455(#)]`
-/

namespace A392910.P5873862897145635971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A210455 (f1 j).toNat = 1) n)

end

end A392910.P5873862897145635971

/-! ## A392910.P1455501624659534446

`A006036(lt[A219038(n+1), A059376(n+1)])`
-/

namespace A392910.P1455501624659534446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219038 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A392910.P1455501624659534446

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

/-! ## A392911.P1511926290168327848

`∩[A390873(n+1), A392496(n+1)]`
-/

namespace A392911.P1511926290168327848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392911.P1511926290168327848

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

/-! ## A392916.P14901293358621280565

`A392830(n)+A392814(A392810(n))`
-/

namespace A392916.P14901293358621280565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392830 n + A392814 (A392810 n).toNat

end

end A392916.P14901293358621280565

/-! ## A392916.P14031507426975057658

`A194285(A071739(n))*A392830(n)`
-/

namespace A392916.P14031507426975057658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A071739 n).toNat * A392830 n

end

end A392916.P14031507426975057658

/-! ## A392916.P955713282636104288

`A392830(n)+A380958(A284432(n+1))`
-/

namespace A392916.P955713282636104288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392830 n + A380958 (A284432 (n + 1)).toNat

end

end A392916.P955713282636104288

/-! ## A392916.P10117988154133515558

`A392830(n)+A002448(A041225(n+3))`
-/

namespace A392916.P10117988154133515558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392830 n + A002448 (A041225 (n + 3)).toNat

end

end A392916.P10117988154133515558

/-! ## A392916.P16716227971526331238

`A392830(n)+A010051(A370048(2*n+3))`
-/

namespace A392916.P16716227971526331238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392830 n + A010051 (A370048 (2 * n + 3)).toNat

end

end A392916.P16716227971526331238

/-!
# A392918: Expansion of e.g.f. -LambertW(x*log(1-x)^3).

The programs for A392918, there is no canonical definition to state claims against.
-/

/-! ## A392918.P18411248575748449423

`A392824(n)%A064626(n+1)`
-/

namespace A392918.P18411248575748449423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392824 n) (A064626 (n + 1))

end

end A392918.P18411248575748449423

/-! ## A392918.P1706111114353738470

`A392824(C(n, A051699(2*(n+1))))`
-/

namespace A392918.P1706111114353738470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392824 (Nat.choose n (A051699 (2 * (n + 1))).toNat)

end

end A392918.P1706111114353738470

/-! ## A392918.P4451970640275976074

`C(A392824(n), A054977(A000129(n)))`
-/

namespace A392918.P4451970640275976074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A392824 n).toNat (A054977 (A000129 n).toNat).toNat

end

end A392918.P4451970640275976074

/-! ## A392918.P15981989502596616691

`A392824(gcd(n, A399920(2*n+1)))`
-/

namespace A392918.P15981989502596616691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392824 (Int.gcd (n : ℤ) (A399920 (2 * n + 1)))

end

end A392918.P15981989502596616691

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

/-! ## A392919.P7622507502476664298

`or(A239312(n+1), A320656(A089259(2*n)))`
-/

namespace A392919.P7622507502476664298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A239312 (n + 1)) (A320656 (A089259 (2 * n)).toNat)

end

end A392919.P7622507502476664298

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
# A392922: Odd composite k such that the odd part of psi(k) divides k-1, where psi = A002322 and odd part = A000265.

The programs for A392922, there is no canonical definition to state claims against.
-/

/-! ## A392922.P8993125340008183614

`∪[A339880(n+1), A340091(n+1)]`
-/

namespace A392922.P8993125340008183614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P8993125340008183614

/-! ## A392922.P12381406696467425016

`∩[A238574(n+1), A392921(n+1)]`
-/

namespace A392922.P12381406696467425016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P12381406696467425016

/-! ## A392922.P786233413252868137

`∩[A300117(n+1), A392921(n+1)]`
-/

namespace A392922.P786233413252868137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P786233413252868137

/-! ## A392922.P11153593741222261158

`∩[A024556(n+1), A392921(n+1)]`
-/

namespace A392922.P11153593741222261158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P11153593741222261158

/-! ## A392922.P1330159050722772497

`∩[A061346(n+1), A392921(n+1)]`
-/

namespace A392922.P1330159050722772497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P1330159050722772497

/-! ## A392922.P5237671227811112054

`∩[A082686(n+1), A392921(n+1)]`
-/

namespace A392922.P5237671227811112054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P5237671227811112054

/-! ## A392922.P2706614716081241630

`∩[A226025(n+1), A392921(n+1)]`
-/

namespace A392922.P2706614716081241630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P2706614716081241630

/-! ## A392922.P3841856152332638123

`∩[A071904(n+1), A392921(n+1)]`
-/

namespace A392922.P3841856152332638123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P3841856152332638123

/-! ## A392922.P13530841383929106555

`∩[A257591(n+1), A392921(n+1)]`
-/

namespace A392922.P13530841383929106555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392921 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392922.P13530841383929106555

/-!
# A392924: The number of partitions of n such that there exists a part p, that appears in exactly p*K/100 parts, where K is the total number of parts.

The programs for A392924, there is no canonical definition to state claims against.
-/

/-! ## A392924.P5677982687575390911

`A055642(A147196(n+1))+A004250(n+1)`
-/

namespace A392924.P5677982687575390911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A147196 (n + 1)).toNat + A004250 (n + 1)

end

end A392924.P5677982687575390911

/-! ## A392924.P1905195644116432169

`A328085(n+1)+A000045(A302984(n+1))`
-/

namespace A392924.P1905195644116432169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328085 (n + 1) + A000045 (A302984 (n + 1)).toNat

end

end A392924.P1905195644116432169

/-! ## A392924.P10956996524911817392

`A171524(A002095(2*n))-1`
-/

namespace A392924.P10956996524911817392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171524 (A002095 (2 * n)).toNat - 1

end

end A392924.P10956996524911817392

/-! ## A392924.P11335309740836984159

`A147783(C(A000027(2*n+5), 1+n-∑{digits}[n, #]))`
-/

namespace A392924.P11335309740836984159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147783 (Nat.choose (A000027 (2 * n + 5)).toNat (1 + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ))).toNat)

end

end A392924.P11335309740836984159

/-! ## A392924.P8836197853484551389

`A365828(n)+A363806(A133494(n))`
-/

namespace A392924.P8836197853484551389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365828 n + A363806 (A133494 n).toNat

end

end A392924.P8836197853484551389

/-!
# A392926: Numbers that are neither squarefree nor squareful, with at least 1 repeated exponent of prime power factors.

The programs for A392926, the canonical program `A392926.P589853381726803686` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392926 has offset 1).

The definition of A392926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9864 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A392926.P589853381726803686

`filter[A392288(1+n), A389905(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A392926

/-- `filter[A392288(1+n), A389905(#)]` -/
def P589853381726803686.Spec : Prop :=
  ∀ n, P589853381726803686.a n = A392926 (n + 1)

theorem P589853381726803686.correct : P589853381726803686.Spec := by
  intro n
  simp only [A392926, Nat.add_sub_cancel]

end A392926

/-! ## A392926.P4297611759071025169

`∩[A390949(n+1), A392288(n+1)]`
-/

namespace A392926.P4297611759071025169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392926.P4297611759071025169

namespace A392926

/-- `∩[A390949(n+1), A392288(n+1)]` -/
def P4297611759071025169.Spec : Prop :=
  ∀ n, (P4297611759071025169.a n : ℤ) = A392926 (n + 1)

end A392926

/-! ## A392926.P13940669595435454937

`∩[A332785(n+1), A392288(n+1)]`
-/

namespace A392926.P13940669595435454937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392926.P13940669595435454937

namespace A392926

/-- `∩[A332785(n+1), A392288(n+1)]` -/
def P13940669595435454937.Spec : Prop :=
  ∀ n, (P13940669595435454937.a n : ℤ) = A392926 (n + 1)

end A392926

/-! ## A392926.P5053998339571856875

`filter[A130092(n+1), A389905(#)]`
-/

namespace A392926.P5053998339571856875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A392926.P5053998339571856875

namespace A392926

/-- `filter[A130092(n+1), A389905(#)]` -/
def P5053998339571856875.Spec : Prop :=
  ∀ n, P5053998339571856875.a n = A392926 (n + 1)

end A392926

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

namespace A392926

/-- `∩[A130092(n+1), A332785(n+1)]` -/
def P14743082382278824141.Spec : Prop :=
  ∀ n, (P14743082382278824141.a n : ℤ) = A392926 (n + 1)

end A392926

/-! ## A392926.P9428993414287964363

`∩[A130092(n+1), A390949(n+1)]`
-/

namespace A392926.P9428993414287964363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392926.P9428993414287964363

namespace A392926

/-- `∩[A130092(n+1), A390949(n+1)]` -/
def P9428993414287964363.Spec : Prop :=
  ∀ n, (P9428993414287964363.a n : ℤ) = A392926 (n + 1)

end A392926

/-! ## A392926.P15840757592398471341

`∩[A389065(n+1), A392288(n+1)]`
-/

namespace A392926.P15840757592398471341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392926.P15840757592398471341

namespace A392926

/-- `∩[A389065(n+1), A392288(n+1)]` -/
def P15840757592398471341.Spec : Prop :=
  ∀ n, (P15840757592398471341.a n : ℤ) = A392926 (n + 1)

end A392926

/-! ## A392926.P87820960959047227

`∩[A052485(n+1), A392288(n+1)]`
-/

namespace A392926.P87820960959047227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392926.P87820960959047227

namespace A392926

/-- `∩[A052485(n+1), A392288(n+1)]` -/
def P87820960959047227.Spec : Prop :=
  ∀ n, (P87820960959047227.a n : ℤ) = A392926 (n + 1)

end A392926

/-!
# A392927: Achilles numbers k with at least 1 repeated exponent of prime power factors.

The programs for A392927, there is no canonical definition to state claims against.
-/

/-! ## A392927.P4873376082390581850

`∩[A072413(n+1), A394050(n+1)]`
-/

namespace A392927.P4873376082390581850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392927.P4873376082390581850

/-! ## A392927.P1716918444916974011

`A189023(A038101(n+1))*A394050(n+1)`
-/

namespace A392927.P1716918444916974011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189023 (A038101 (n + 1)).toNat * A394050 (n + 1)

end

end A392927.P1716918444916974011

/-! ## A392927.P8201269710681076403

`A189023(A239567(n+1))*A394050(n+1)`
-/

namespace A392927.P8201269710681076403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189023 (A239567 (n + 1)).toNat * A394050 (n + 1)

end

end A392927.P8201269710681076403

/-! ## A392927.P14210616228298787288

`lcm(A189023(A244185(n+1)), A394050(n+1))`
-/

namespace A392927.P14210616228298787288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A189023 (A244185 (n + 1)).toNat) (A394050 (n + 1))

end

end A392927.P14210616228298787288

/-! ## A392927.P10297325629358826310

`A056583(A394050(n+1))`
-/

namespace A392927.P10297325629358826310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (A394050 (n + 1)).toNat

end

end A392927.P10297325629358826310

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

/-! ## A392933.P1422490209628586409

`A368330(A053556(n))*A375831(n)`
-/

namespace A392933.P1422490209628586409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368330 (A053556 n).toNat * A375831 n

end

end A392933.P1422490209628586409

/-! ## A392933.P15214510688740000430

`A196931(A344489(n))*A392957(n)`
-/

namespace A392933.P15214510688740000430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196931 (A344489 n).toNat * A392957 n

end

end A392933.P15214510688740000430

/-! ## A392933.P16133607673328004431

`A078898(A113031(n+1))*A375831(n)`
-/

namespace A392933.P16133607673328004431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A113031 (n + 1)).toNat * A375831 n

end

end A392933.P16133607673328004431

/-! ## A392933.P18158525053639687313

`A228525(A001159(n+1))*A392957(n)`
-/

namespace A392933.P18158525053639687313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228525 (A001159 (n + 1)).toNat * A392957 n

end

end A392933.P18158525053639687313

/-! ## A392933.P2313569663856156277

`A246127(A388981(n+1))*A392957(n)`
-/

namespace A392933.P2313569663856156277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246127 (A388981 (n + 1)).toNat * A392957 n

end

end A392933.P2313569663856156277

/-!
# A392934: E.g.f. A(x) satisfies A(x) = 1 - x*A(x)^3 * log(1 - x^2*A(x)^2).

The programs for A392934, there is no canonical definition to state claims against.
-/

/-! ## A392934.P14415482607431180381

`A392958(n)%A392948(n+1)`
-/

namespace A392934.P14415482607431180381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392958 n) (A392948 (n + 1))

end

end A392934.P14415482607431180381

/-! ## A392934.P5428679826278560747

`A376441(n)/A165034(A004211(n))`
-/

namespace A392934.P5428679826278560747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376441 n : ℚ) / (A165034 (A004211 n).toNat : ℚ)

end

end A392934.P5428679826278560747

/-! ## A392934.P16703172248126094237

`A392958(n)%A005843(A186947(n))`
-/

namespace A392934.P16703172248126094237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392958 n) (A005843 (A186947 n).toNat)

end

end A392934.P16703172248126094237

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

/-! ## A392935.P8194871594649208611

`C(A371160(n), A001065(3*n+2)²)`
-/

namespace A392935.P8194871594649208611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A371160 n).toNat (A001065 (3 * n + 2) ^ 2).toNat

end

end A392935.P8194871594649208611

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

/-! ## A392945.P2907065358163894520

`A321648(A344085(n+1))%A092945(3*n+4)`
-/

namespace A392945.P2907065358163894520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321648 (A344085 (n + 1)).toNat) (A092945 (3 * n + 4))

end

end A392945.P2907065358163894520

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

/-! ## A392945.P14103318057289368225

`A321648(A344085(n+1))%A341565(2*(n+1))`
-/

namespace A392945.P14103318057289368225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321648 (A344085 (n + 1)).toNat) (A341565 (2 * (n + 1)))

end

end A392945.P14103318057289368225

/-!
# A392947: Primes p such that the multiplicative order of -2 modulo p is a multiple of 4.

The programs for A392947, there is no canonical definition to state claims against.
-/

/-! ## A392947.P15646079513078155377

`∪[A385224(n+1), A400743(n+1)]`
-/

namespace A392947.P15646079513078155377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385224 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A392947.P15646079513078155377

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

/-! ## A392947.P12242189576149988712

`∩[A216777(n+1), A296243(n+1)]`
-/

namespace A392947.P12242189576149988712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A392947.P12242189576149988712

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

/-!
# A392950: Numbers k such that sigma(k) = 2*k - tau(phi(k)).

The programs for A392950, there is no canonical definition to state claims against.
-/

/-! ## A392950.P8283082567877941287

`record[A008289(A344859(2*(n+1)))]`
-/

namespace A392950.P8283082567877941287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008289 (A344859 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A392950.P8283082567877941287

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

/-! ## A392952.P15611215146081276684

`A030626(eq[A091373(n+1), A126433(n+1)])`
-/

namespace A392952.P15611215146081276684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A392952.P15611215146081276684

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

/-! ## A392953.P11976625102479317235

`record[A321750(n+1)]*A352660(n)/(n+1)`
-/

namespace A392953.P11976625102479317235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321750 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A352660 n : ℚ) / (n + 1 : ℚ)

end

end A392953.P11976625102479317235

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

/-! ## A392957.P6676308631904683060

`A228351(A088218(n))*A375831(n)`
-/

namespace A392957.P6676308631904683060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (A088218 n).toNat * A375831 n

end

end A392957.P6676308631904683060

/-! ## A392957.P14386763500967564821

`A323436(A001045(n))*A375831(n)`
-/

namespace A392957.P14386763500967564821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323436 (A001045 n).toNat * A375831 n

end

end A392957.P14386763500967564821

/-! ## A392957.P15797104906957835015

`A368330(A363812(n))*A375831(n)`
-/

namespace A392957.P15797104906957835015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368330 (A363812 n).toNat * A375831 n

end

end A392957.P15797104906957835015

/-! ## A392957.P8450859544125482293

`A392955(n^A392943(n+2))`
-/

namespace A392957.P8450859544125482293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392955 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A392943 (n + 2) : ℤ))).toNat

end

end A392957.P8450859544125482293

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

/-! ## A392959.P12230567992029043408

`A289441(2*A392960(n))`
-/

namespace A392959.P12230567992029043408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (2 * A392960 n).toNat

end

end A392959.P12230567992029043408

/-! ## A392959.P10291649339829828105

`A392960(n)+A079261(A137967(n))`
-/

namespace A392959.P10291649339829828105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392960 n + A079261 (A137967 n).toNat

end

end A392959.P10291649339829828105

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

/-! ## A392974.P5233605085983596322

`A004442(2*A039752(n+1))`
-/

namespace A392974.P5233605085983596322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A039752 (n + 1)).toNat

end

end A392974.P5233605085983596322

/-! ## A392974.P11905561731950443802

`A020725(2*A039752(n+1))`
-/

namespace A392974.P11905561731950443802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (2 * A039752 (n + 1)).toNat

end

end A392974.P11905561731950443802

/-! ## A392974.P4130433477764492453

`A065475(A039752(n+1)+A039752(n+1))`
-/

namespace A392974.P4130433477764492453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A039752 (n + 1) + A039752 (n + 1)).toNat

end

end A392974.P4130433477764492453

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

The programs for A392976, the canonical program `A392976.P10162842965580127839` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392976 has offset 0).

The definition of A392976 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392976.P10162842965580127839

`1/(n+1)*∑{#}[floor(n/2), C(2*n-2*#, n)*C(4*n-3*#+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392976

/-- `1/(n+1)*∑{#}[floor(n/2), C(2*n-2*#, n)*C(4*n-3*#+1, #)]` -/
def P10162842965580127839.Spec : Prop :=
  ∀ n, P10162842965580127839.a n = (A392976 n : ℚ)

end A392976

/-! ## A392976.P7333544246023748898

`A070868(2*A213282(n))`
-/

namespace A392976.P7333544246023748898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070868 (2 * A213282 n).toNat

end

end A392976.P7333544246023748898

namespace A392976

/-- `A070868(2*A213282(n))` -/
def P7333544246023748898.Spec : Prop :=
  ∀ n, P7333544246023748898.a n = A392976 n

end A392976

/-!
# A392977: Expansion of (1/x) * Series_Reversion( x * ((1-x^2)^3 - x) ).

The programs for A392977, the canonical program `A392977.P17217164796040475055` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392977 has offset 0).

The definition of A392977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392977.P17217164796040475055

`1/(n+1)*∑{#}[floor(n/2), C(2*n-2*#, n)*C(6*n-5*#+2, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392977

/-- `1/(n+1)*∑{#}[floor(n/2), C(2*n-2*#, n)*C(6*n-5*#+2, #)]` -/
def P17217164796040475055.Spec : Prop :=
  ∀ n, P17217164796040475055.a n = (A392977 n : ℚ)

end A392977

/-! ## A392977.P1359257720090618757

`A369488(n)+val(A028581(n+1), A052297(3*n+5))`
-/

namespace A392977.P1359257720090618757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369488 n + (SequenceMachineLib.valuation (A028581 (n + 1)).toNat (A052297 (3 * n + 5)).toNat : ℤ)

end

end A392977.P1359257720090618757

namespace A392977

/-- `A369488(n)+val(A028581(n+1), A052297(3*n+5))` -/
def P1359257720090618757.Spec : Prop :=
  ∀ n, P1359257720090618757.a n = A392977 n

end A392977

/-!
# A392978: Expansion of (1/x) * Series_Reversion( x * ((1-x^3)^2 - x) ).

The programs for A392978, the canonical program `A392978.P9827038730211455295` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392978 has offset 0).

The definition of A392978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392978.P9827038730211455295

`1/(n+1)*∑{#}[floor(n/3), C(2*n-3*#, n)*C(4*n-5*#+1, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392978

/-- `1/(n+1)*∑{#}[floor(n/3), C(2*n-3*#, n)*C(4*n-5*#+1, #)]` -/
def P9827038730211455295.Spec : Prop :=
  ∀ n, P9827038730211455295.a n = (A392978 n : ℚ)

end A392978

/-! ## A392978.P15793851315634746777

`A369489(A073788(n))`
-/

namespace A392978.P15793851315634746777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369489 (A073788 n).toNat

end

end A392978.P15793851315634746777

namespace A392978

/-- `A369489(A073788(n))` -/
def P15793851315634746777.Spec : Prop :=
  ∀ n, P15793851315634746777.a n = A392978 n

end A392978

/-! ## A392978.P11259508607724225049

`A369489(A004879(n+1))`
-/

namespace A392978.P11259508607724225049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369489 (A004879 (n + 1)).toNat

end

end A392978.P11259508607724225049

namespace A392978

/-- `A369489(A004879(n+1))` -/
def P11259508607724225049.Spec : Prop :=
  ∀ n, P11259508607724225049.a n = A392978 n

end A392978

/-!
# A392979: Expansion of (1/x) * Series_Reversion( x * ((1-x^3)^3 - x) ).

The programs for A392979, the canonical program `A392979.P2917161863845140268` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392979 has offset 0).

The definition of A392979 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392979.P2917161863845140268

`1/(n+1)*∑{#}[floor(n/3), C(2*n-3*#, n)*C(6*n-8*#+2, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392979

/-- `1/(n+1)*∑{#}[floor(n/3), C(2*n-3*#, n)*C(6*n-8*#+2, #)]` -/
def P2917161863845140268.Spec : Prop :=
  ∀ n, P2917161863845140268.a n = (A392979 n : ℚ)

end A392979

/-! ## A392979.P3718691218295265313

`A175819(a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A392979.P3718691218295265313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A175819 (a (n - 1)).toNat

end

end A392979.P3718691218295265313

namespace A392979

/-- `A175819(a(n-1))` -/
def P3718691218295265313.Spec : Prop :=
  ∀ n, P3718691218295265313.a n = A392979 n

end A392979

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

/-! ## A392981.P10738212199422040612

`A346430(n)+A025456(A006153(n))`
-/

namespace A392981.P10738212199422040612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346430 n + A025456 (A006153 n).toNat

end

end A392981.P10738212199422040612

/-! ## A392981.P722699089273720380

`A346430(n)-A074290(A002110(n))`
-/

namespace A392981.P722699089273720380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346430 n - A074290 (A002110 n).toNat

end

end A392981.P722699089273720380

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

/-! ## A392983.P532808362733858279

`A000196(A000717(n+2))*A002865(n)`
-/

namespace A392983.P532808362733858279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000717 (n + 2)).toNat * A002865 n

end

end A392983.P532808362733858279

/-! ## A392983.P13968759378026326813

`A356225(A193842(2*n))+A038205(n)`
-/

namespace A392983.P13968759378026326813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356225 (A193842 (2 * n)).toNat + A038205 n

end

end A392983.P13968759378026326813

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

/-! ## A392985.P4682107412601736826

`A386317(n+1)+A288106(A167202(n+1))`
-/

namespace A392985.P4682107412601736826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386317 (n + 1) + A288106 (A167202 (n + 1)).toNat

end

end A392985.P4682107412601736826

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

/-! ## A392987.P7677966167228183968

`∑[char[A174973(n+1)-1]]`
-/

namespace A392987.P7677966167228183968
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174973 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A392987.P7677966167228183968

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

/-! ## A392992.P15670325072783069198

`A237978(n+1)^A003713(n)*n!`
-/

namespace A392992.P15670325072783069198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237978 (n + 1) : ℚ) ^ (A003713 n : ℤ) * (Nat.factorial n : ℚ)

end

end A392992.P15670325072783069198

/-! ## A392992.P9873536542545126105

`A237978(n+1)^A006565(n)*n!`
-/

namespace A392992.P9873536542545126105
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237978 (n + 1) : ℚ) ^ (A006565 n : ℤ) * (Nat.factorial n : ℚ)

end

end A392992.P9873536542545126105

/-! ## A392992.P839845680401388277

`A237978(n+1)^A015532(n)*n!`
-/

namespace A392992.P839845680401388277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237978 (n + 1) : ℚ) ^ (A015532 n : ℤ) * (Nat.factorial n : ℚ)

end

end A392992.P839845680401388277

/-! ## A392992.P10057618921725266497

`A067255(A349156(3*n+2)+1)^n*n!`
-/

namespace A392992.P10057618921725266497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067255 (A349156 (3 * n + 2) + 1).toNat ^ n * (Nat.factorial n : ℤ)

end

end A392992.P10057618921725266497

/-! ## A392992.P2788918138066081421

`A392994(n)+A285969(A020714(n))`
-/

namespace A392992.P2788918138066081421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392994 n + A285969 (A020714 n).toNat

end

end A392992.P2788918138066081421

/-!
# A392997: Expansion of e.g.f. (1/x) * Series_Reversion( x * (exp(-x) - x^2) ).

The programs for A392997, there is no canonical definition to state claims against.
-/

/-! ## A392997.P8690340898594549795

`or(A052873(n), A222266(A084859(n+2)))`
-/

namespace A392997.P8690340898594549795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A052873 n) (A222266 (A084859 (n + 2)).toNat)

end

end A392997.P8690340898594549795

/-!
# A392999: Expansion of e.g.f. (1/x) * Series_Reversion( x/(exp(x) + x^2) ).

The programs for A392999, the canonical program `A392999.P17423739369096865537` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A392999 has offset 0).

The definition of A392999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A392999.P17423739369096865537

`n!*∑{#}[floor(n/2), (n-#+1)^(n-2*#-1)*C(n, #)/(n-2*#)!]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A392999

/-- `n!*∑{#}[floor(n/2), (n-#+1)^(n-2*#-1)*C(n, #)/(n-2*#)!]` -/
def P17423739369096865537.Spec : Prop :=
  ∀ n, P17423739369096865537.a n = (A392999 n : ℚ)

end A392999

/-! ## A392999.P981799455008174682

`A000720(A258294(n)+A176043(n))`
-/

namespace A392999.P981799455008174682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A258294 n + A176043 n).toNat

end

end A392999.P981799455008174682

namespace A392999

/-- `A000720(A258294(n)+A176043(n))` -/
def P981799455008174682.Spec : Prop :=
  ∀ n, P981799455008174682.a n = A392999 n

end A392999

