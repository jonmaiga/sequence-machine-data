import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C010
import Seq.B000.C013
import Seq.B000.C022
import Seq.B000.C028
import Seq.B001.C000
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B004.C003
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A137001: Numbers k such that k and k^2 use only the digits 1, 2, 4 and 9.

The programs for A137001, there is no canonical definition to state claims against.
-/

/-! ## A137001.P4481614098983934585

`∩[A136821(n+1), A136972(n+1)]`
-/

namespace A137001.P4481614098983934585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137001.P4481614098983934585

/-! ## A137001.P5786030312417226564

`∩[A136821(n+1), A136991(n+1)]`
-/

namespace A137001.P5786030312417226564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137001.P5786030312417226564

/-! ## A137001.P17728602260658276092

`∩[A136821(n+1), A136995(n+1)]`
-/

namespace A137001.P17728602260658276092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137001.P17728602260658276092

/-!
# A137003: Numbers k such that k and k^2 use only the digits 1, 2, 5 and 6.

The programs for A137003, there is no canonical definition to state claims against.
-/

/-! ## A137003.P12874521372414579064

`∩[A136974(n+1), A136988(n+1)]`
-/

namespace A137003.P12874521372414579064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137003.P12874521372414579064

/-! ## A137003.P14040258864247066692

`∩[A136974(n+1), A137004(n+1)]`
-/

namespace A137003.P14040258864247066692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137003.P14040258864247066692

/-! ## A137003.P11867620078984138809

`∩[A136974(n+1), A137005(n+1)]`
-/

namespace A137003.P11867620078984138809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137003.P11867620078984138809

/-! ## A137003.P16266629411546113722

`∩[A136974(n+1), A137006(n+1)]`
-/

namespace A137003.P16266629411546113722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137003.P16266629411546113722

/-! ## A137003.P14592185481192607270

`∩[A136988(n+1), A137004(n+1)]`
-/

namespace A137003.P14592185481192607270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137003.P14592185481192607270

/-!
# A137007: Numbers k such that k and k^2 use only the digits 1, 2, 5 and 7.

The programs for A137007, there is no canonical definition to state claims against.
-/

/-! ## A137007.P6048967946459503451

`(16*n+1)*a(n-2)` with `a(0)=1, a(1)=5, a(2)=11, a(3)=15`
-/

namespace A137007.P6048967946459503451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5, 11, 15] fun n a =>
  (16 * n + 1) * a (n - 2)

end

end A137007.P6048967946459503451

/-!
# A137008: Numbers k such that k and k^2 use only the digits 1, 2, 5, 7 and 8.

The programs for A137008, there is no canonical definition to state claims against.
-/

/-! ## A137008.P13198223301073746748

`or(A008574(n), A207890(A000225(n)))`
-/

namespace A137008.P13198223301073746748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008574 n) (A207890 (A000225 n).toNat)

end

end A137008.P13198223301073746748

/-! ## A137008.P224436633249913120

`or(A005408(2*n), A058122(A225496(n+1)))`
-/

namespace A137008.P224436633249913120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005408 (2 * n)) (A058122 (A225496 (n + 1)).toNat)

end

end A137008.P224436633249913120

/-!
# A137010: Numbers k such that k and k^2 use only the digits 1, 2, 5 and 8.

The programs for A137010, there is no canonical definition to state claims against.
-/

/-! ## A137010.P5726349558147816060

`A137011(A298990(n))`
-/

namespace A137010.P5726349558147816060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137011 (A298990 n).toNat

end

end A137010.P5726349558147816060

/-! ## A137010.P5329516277174792904

`∩[A136825(n+1), A136976(n+1)]`
-/

namespace A137010.P5329516277174792904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137010.P5329516277174792904

/-! ## A137010.P15107829233822850344

`∩[A136825(n+1), A136990(n+1)]`
-/

namespace A137010.P15107829233822850344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137010.P15107829233822850344

/-! ## A137010.P2189235179448729982

`∩[A136825(n+1), A137005(n+1)]`
-/

namespace A137010.P2189235179448729982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137010.P2189235179448729982

/-!
# A137012: Numbers k such that k and k^2 use only the digits 1, 2, 5 and 9.

The programs for A137012, there is no canonical definition to state claims against.
-/

/-! ## A137012.P5256843368756017027

`15*A007088(a(n-3))` with `a(0)=1, a(1)=5, a(2)=11`
-/

namespace A137012.P5256843368756017027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 11] fun n a =>
  15 * A007088 (a (n - 3)).toNat

end

end A137012.P5256843368756017027

/-!
# A137013: Numbers k such that k and k^2 use only the digits 1, 2, 6 and 7.

The programs for A137013, there is no canonical definition to state claims against.
-/

/-! ## A137013.P12826997489911368441

`A137014(A383453(n))`
-/

namespace A137013.P12826997489911368441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137014 (A383453 n).toNat

end

end A137013.P12826997489911368441

/-!
# A137015: Numbers k such that k and k^2 use only the digits 1, 2, 6, 7 and 9.

The programs for A137015, there is no canonical definition to state claims against.
-/

/-! ## A137015.P418679426261997280

`or(A000578(n), A347578(A007510(n+1)))`
-/

namespace A137015.P418679426261997280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000578 n) (A347578 (A007510 (n + 1)).toNat)

end

end A137015.P418679426261997280

/-! ## A137015.P13642343920101117739

`or(A000578(n), A302985(A269685(n+1)))`
-/

namespace A137015.P13642343920101117739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000578 n) (A302985 (A269685 (n + 1)).toNat)

end

end A137015.P13642343920101117739

/-!
# A137017: Numbers k such that k and k^2 use only the digits 1, 2, 6 and 9.

The programs for A137017, there is no canonical definition to state claims against.
-/

/-! ## A137017.P8056696093367965620

`A137016(∑[(n-1)*a(n-1)/floor(n/2)])` with `a(0)=1, a(1)=2`
-/

namespace A137017.P8056696093367965620
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ((n : ℤ) - 1 : ℚ) * (f1 (n - 1) / (⌊(n : ℚ) / 2⌋ : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137016 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A137017.P8056696093367965620

/-!
# A137020: Numbers k such that k and k^2 use only the digits 1, 2, 8 and 9.

The programs for A137020, there is no canonical definition to state claims against.
-/

/-! ## A137020.P3208501081476946870

`or(10, 10^(n-1)-a(n-1))` with `a(0)=1, a(1)=9`
-/

namespace A137020.P3208501081476946870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n a =>
  Int.lor 10 (SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (a (n - 1) : ℚ)))

end

end A137020.P3208501081476946870

/-!
# A137024: Numbers k such that k and k^2 use only the digits 1, 3, 4 and 6.

The programs for A137024, there is no canonical definition to state claims against.
-/

/-! ## A137024.P11172324033701099

`A137026(8*a(n-3))` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A137024.P11172324033701099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  A137026 (8 * a (n - 3)).toNat

end

end A137024.P11172324033701099

/-!
# A137025: Numbers k such that k and k^2 use only the digits 1, 3, 4, 6 and 7.

The programs for A137025, there is no canonical definition to state claims against.
-/

/-! ## A137025.P3529156484226535021

`A025422(A212128(n+1)+∑[∑{d}[n+1, #]])`
-/

namespace A137025.P3529156484226535021
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025422 (A212128 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A137025.P3529156484226535021

/-!
# A137027: Numbers k such that k and k^2 use only the digits 1, 3, 4, 6 and 9.

The programs for A137027, there is no canonical definition to state claims against.
-/

/-! ## A137027.P7703577387652208540

`A262815(A007016(n))+A049690(n)`
-/

namespace A137027.P7703577387652208540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262815 (A007016 n).toNat + A049690 n

end

end A137027.P7703577387652208540

/-!
# A137031: Numbers k such that k and k^2 use only the digits 1, 3, 4, 8 and 9.

The programs for A137031, there is no canonical definition to state claims against.
-/

/-! ## A137031.P1139487157050932769

`A348305(A239115(n+1))-A047999(n)`
-/

namespace A137031.P1139487157050932769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348305 (A239115 (n + 1)).toNat - A047999 n

end

end A137031.P1139487157050932769

/-! ## A137031.P16556350422255726508

`A336132(2*n+1)+A062526(A025168(n))`
-/

namespace A137031.P16556350422255726508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336132 (2 * n + 1) + A062526 (A025168 n).toNat

end

end A137031.P16556350422255726508

/-!
# A137032: Numbers k such that k and k^2 use only the digits 1, 3, 5 and 6.

The programs for A137032, there is no canonical definition to state claims against.
-/

/-! ## A137032.P15453123435427827392

`A137034(C(n, floor(n/3))+n)`
-/

namespace A137032.P15453123435427827392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137034 (Nat.choose n ⌊(n : ℚ) / 3⌋.toNat + n)

end

end A137032.P15453123435427827392

/-!
# A137033: Numbers k such that k and k^2 use only the digits 1, 3, 5, 6 and 7.

The programs for A137033, there is no canonical definition to state claims against.
-/

/-! ## A137033.P9765645380992566934

`∑[A001776(a(n-3))]` with `a(0)=1, a(1)=5, a(2)=50, a(3)=20`
-/

namespace A137033.P9765645380992566934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 50, 20] fun n f1 =>
  A001776 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A137033.P9765645380992566934

/-!
# A137034: Numbers k such that k and k^2 use only the digits 1, 3, 5, 6 and 8.

The programs for A137034, there is no canonical definition to state claims against.
-/

/-! ## A137034.P5604822210257230074

`A241155(lcm(A219973(n), A381871(n+1)))`
-/

namespace A137034.P5604822210257230074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241155 (Int.lcm (A219973 n) (A381871 (n + 1)))

end

end A137034.P5604822210257230074

/-!
# A137037: Numbers k such that k and k^2 use only the digits 1, 3, 6 and 7.

The programs for A137037, there is no canonical definition to state claims against.
-/

/-! ## A137037.P9236340911505283106

`∩[A136848(n+1), A136979(n+1)]`
-/

namespace A137037.P9236340911505283106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137037.P9236340911505283106

/-! ## A137037.P16267702214015630067

`∩[A136848(n+1), A137025(n+1)]`
-/

namespace A137037.P16267702214015630067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137037.P16267702214015630067

/-! ## A137037.P948922357533368676

`∩[A136848(n+1), A137033(n+1)]`
-/

namespace A137037.P948922357533368676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137037.P948922357533368676

/-! ## A137037.P2335284800675209877

`∩[A136848(n+1), A137038(n+1)]`
-/

namespace A137037.P2335284800675209877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137037.P2335284800675209877

/-! ## A137037.P16364488206212194786

`∩[A136848(n+1), A137039(n+1)]`
-/

namespace A137037.P16364488206212194786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137037.P16364488206212194786

/-!
# A137040: Numbers k such that k and k^2 use only the digits 1, 3, 6 and 8.

The programs for A137040, there is no canonical definition to state claims against.
-/

/-! ## A137040.P18260037144228412914

`A136980(A074383(n))`
-/

namespace A137040.P18260037144228412914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136980 (A074383 n).toNat

end

end A137040.P18260037144228412914

/-!
# A137042: Numbers k such that k and k^2 use only the digits 1, 3, 6 and 9.

The programs for A137042, there is no canonical definition to state claims against.
-/

/-! ## A137042.P12192399810616957482

`∩[A136850(n+1), A136981(n+1)]`
-/

namespace A137042.P12192399810616957482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137042.P12192399810616957482

/-! ## A137042.P2522381284470707422

`∩[A136850(n+1), A137027(n+1)]`
-/

namespace A137042.P2522381284470707422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137042.P2522381284470707422

/-! ## A137042.P2488998604248068050

`∩[A136850(n+1), A137035(n+1)]`
-/

namespace A137042.P2488998604248068050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137035 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137042.P2488998604248068050

/-! ## A137042.P11960930377003474788

`∩[A136850(n+1), A137039(n+1)]`
-/

namespace A137042.P11960930377003474788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137042.P11960930377003474788

/-! ## A137042.P10967904958733162891

`∩[A136850(n+1), A137041(n+1)]`
-/

namespace A137042.P10967904958733162891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137042.P10967904958733162891

/-!
# A137046: Numbers k such that k and k^2 use only the digits 1, 4, 5, 6 and 7.

The programs for A137046, there is no canonical definition to state claims against.
-/

/-! ## A137046.P16334178252000934488

`A247914(A028910(2*n)-A241515(n))`
-/

namespace A137046.P16334178252000934488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A028910 (2 * n) - A241515 n).toNat

end

end A137046.P16334178252000934488

/-!
# A137048: Numbers k such that k and k^2 use only the digits 1, 4, 5, 6 and 9.

The programs for A137048, there is no canonical definition to state claims against.
-/

/-! ## A137048.P4718485622271226464

`and(-A071948(n), A137056(n+1))`
-/

namespace A137048.P4718485622271226464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A071948 n) (A137056 (n + 1))

end

end A137048.P4718485622271226464

/-!
# A137053: Numbers k such that k and k^2 use only the digits 1, 4, 6, 7 and 9.

The programs for A137053, there is no canonical definition to state claims against.
-/

/-! ## A137053.P515426890705513899

`A325134(A273758(n)+A182190(n))`
-/

namespace A137053.P515426890705513899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325134 (A273758 n + A182190 n).toNat

end

end A137053.P515426890705513899

/-! ## A137053.P14059979356432510436

`A310853(eq[A310825(n), A310830(n)])`
-/

namespace A137053.P14059979356432510436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310853 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A137053.P14059979356432510436

/-!
# A137054: Numbers k such that k and k^2 use only the digits 1, 4, 6 and 8.

The programs for A137054, there is no canonical definition to state claims against.
-/

/-! ## A137054.P4312271824319545907

`∩[A136994(n+1), A137026(n+1)]`
-/

namespace A137054.P4312271824319545907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137054.P4312271824319545907

/-!
# A137056: Numbers k such that k and k^2 use only the digits 1, 4, 6 and 9.

The programs for A137056, there is no canonical definition to state claims against.
-/

/-! ## A137056.P8179800869012876567

`A137048(C(n, 4)+n+1)`
-/

namespace A137056.P8179800869012876567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137048 (Nat.choose n 4 + (n + 1))

end

end A137056.P8179800869012876567

/-!
# A137058: Numbers k such that k and k^2 use only the digits 1, 4, 7, 8 and 9.

The programs for A137058, there is no canonical definition to state claims against.
-/

/-! ## A137058.P1215783671504872611

`A178843(A025631(n+1))`
-/

namespace A137058.P1215783671504872611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178843 (A025631 (n + 1)).toNat

end

end A137058.P1215783671504872611

/-!
# A137059: Numbers k such that k and k^2 use only the digits 1, 4, 8 and 9.

The programs for A137059, there is no canonical definition to state claims against.
-/

/-! ## A137059.P17772416417296441403

`A137051(∑[floor(sqrt(n))!])`
-/

namespace A137059.P17772416417296441403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.sqrt n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137051 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A137059.P17772416417296441403

/-!
# A137066: Numbers k such that k and k^2 use only the digits 2, 3, 4 and 5.

The programs for A137066, there is no canonical definition to state claims against.
-/

/-! ## A137066.P4422654361688561447

`∩[A136968(n+1), A137070(n+1)]`
-/

namespace A137066.P4422654361688561447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137066.P4422654361688561447

/-! ## A137066.P14469960679316820651

`∩[A136968(n+1), A137067(n+1)]`
-/

namespace A137066.P14469960679316820651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137066.P14469960679316820651

/-! ## A137066.P7532476760275965169

`∩[A137067(n+1), A137069(n+1)]`
-/

namespace A137066.P7532476760275965169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137066.P7532476760275965169

/-! ## A137066.P15753592206878720783

`∩[A137067(n+1), A137070(n+1)]`
-/

namespace A137066.P15753592206878720783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137066.P15753592206878720783

/-! ## A137066.P1110634012192344507

`∩[A137069(n+1), A137070(n+1)]`
-/

namespace A137066.P1110634012192344507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137070 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137066.P1110634012192344507

/-!
# A137069: Numbers k such that k and k^2 use only the digits 2, 3, 4, 5 and 8.

The programs for A137069, there is no canonical definition to state claims against.
-/

/-! ## A137069.P2805839510074747712

`A286159(A008545(n))+A078689(n)`
-/

namespace A137069.P2805839510074747712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286159 (A008545 n).toNat + A078689 n

end

end A137069.P2805839510074747712

/-!
# A137070: Numbers k such that k and k^2 use only the digits 2, 3, 4, 5 and 9.

The programs for A137070, there is no canonical definition to state claims against.
-/

/-! ## A137070.P16849247865484395920

`A182976(∑[9*a(n-1)-8])` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=4`
-/

namespace A137070.P16849247865484395920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 1, 4] fun n f1 =>
  9 * f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182976 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137070.P16849247865484395920

/-!
# A137071: Numbers k such that k and k^2 use only the digits 2, 3, 4, 6 and 7.

The programs for A137071, there is no canonical definition to state claims against.
-/

/-! ## A137071.P15809059725152969992

`lcm(2, A325162(A098406(n)))`
-/

namespace A137071.P15809059725152969992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A325162 (A098406 n).toNat)

end

end A137071.P15809059725152969992

/-!
# A137073: Numbers k such that k and k^2 use only the digits 2, 3, 4, 6 and 9.

The programs for A137073, there is no canonical definition to state claims against.
-/

/-! ## A137073.P15668972925998365241

`2*A004736(xor(n-3^n, n²)²)+n`
-/

namespace A137073.P15668972925998365241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004736 (Int.xor ((n : ℤ) - (3 ^ n : ℤ)) (n ^ 2 : ℤ) ^ 2).toNat + (n : ℤ)

end

end A137073.P15668972925998365241

/-!
# A137074: Numbers k such that k and k^2 use only the digits 2, 3, 4, 7 and 8.

The programs for A137074, there is no canonical definition to state claims against.
-/

/-! ## A137074.P4565987574250816461

`A137106(∑[A043559(n)])`
-/

namespace A137074.P4565987574250816461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137106 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137074.P4565987574250816461

/-! ## A137074.P17644788086324873854

`A137106(A117073(n)+1)`
-/

namespace A137074.P17644788086324873854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137106 (A117073 n + 1).toNat

end

end A137074.P17644788086324873854

/-! ## A137074.P3470719111322516156

`A137106(A164947(n+1))`
-/

namespace A137074.P3470719111322516156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137106 (A164947 (n + 1)).toNat

end

end A137074.P3470719111322516156

/-!
# A137075: Numbers k such that k and k^2 use only the digits 2, 3, 4, 7 and 9.

The programs for A137075, there is no canonical definition to state claims against.
-/

/-! ## A137075.P16491543272016453438

`A349095(or(2, n*n!))`
-/

namespace A137075.P16491543272016453438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349095 (Nat.lor 2 (n * Nat.factorial n))

end

end A137075.P16491543272016453438

/-!
# A137077: Numbers k such that k and k^2 use only the digits 2, 3, 4, 8 and 9.

The programs for A137077, there is no canonical definition to state claims against.
-/

/-! ## A137077.P6731306392875456249

`A064895(A137099(n+1))`
-/

namespace A137077.P6731306392875456249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064895 (A137099 (n + 1)).toNat

end

end A137077.P6731306392875456249

/-!
# A137078: Numbers k such that k and k^2 use only the digits 2, 3, 4 and 9.

The programs for A137078, there is no canonical definition to state claims against.
-/

/-! ## A137078.P12442683540132375916

`∩[A136886(n+1), A136972(n+1)]`
-/

namespace A137078.P12442683540132375916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137078.P12442683540132375916

/-! ## A137078.P5494484779693360650

`∩[A137070(n+1), A137073(n+1)]`
-/

namespace A137078.P5494484779693360650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137078.P5494484779693360650

/-!
# A137079: Numbers k such that k and k^2 use only the digits 2, 3, 5 and 6.

The programs for A137079, there is no canonical definition to state claims against.
-/

/-! ## A137079.P34508692610943015

`∩[A136888(n+1), A136974(n+1)]`
-/

namespace A137079.P34508692610943015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137079.P34508692610943015

/-! ## A137079.P1765605087971262737

`∩[A136974(n+1), A137067(n+1)]`
-/

namespace A137079.P1765605087971262737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137079.P1765605087971262737

/-! ## A137079.P4569660227129416600

`∩[A137080(n+1), A136974(n+1)]`
-/

namespace A137079.P4569660227129416600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137079.P4569660227129416600

/-! ## A137079.P628245136369044440

`∩[A137067(n+1), A137080(n+1)]`
-/

namespace A137079.P628245136369044440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137079.P628245136369044440

/-!
# A137080: Numbers k such that k and k^2 use only the digits 2, 3, 5, 6 and 7.

The programs for A137080, there is no canonical definition to state claims against.
-/

/-! ## A137080.P2682236598021531536

`∪[A181440(A137079(n+1)), A137111(n+1)]`
-/

namespace A137080.P2682236598021531536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A137079 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137080.P2682236598021531536

/-! ## A137080.P7453804234543769237

`∪[A137111(n+2), A137079(A095260(n+1))]`
-/

namespace A137080.P7453804234543769237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137111 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137079 (A095260 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A137080.P7453804234543769237

/-!
# A137081: Numbers k such that k and k^2 use only the digits 2, 3, 5, 6 and 8.

The programs for A137081, there is no canonical definition to state claims against.
-/

/-! ## A137081.P6008663122980412936

`record[A137079(n+1)%A137097(n+5)]`
-/

namespace A137081.P6008663122980412936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137079 (n + 1)) (A137097 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A137081.P6008663122980412936

/-!
# A137086: Numbers k such that k and k^2 use only the digits 2, 3, 5, 8 and 9.

The programs for A137086, there is no canonical definition to state claims against.
-/

/-! ## A137086.P13175721114708871496

`A293606(n)+A122736(A001318(n))`
-/

namespace A137086.P13175721114708871496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 n + A122736 (A001318 n).toNat

end

end A137086.P13175721114708871496

/-!
# A137087: Numbers k such that k and k^2 use only the digits 2, 3, 5 and 9.

The programs for A137087, there is no canonical definition to state claims against.
-/

/-! ## A137087.P11313157064657483061

`A137086(A043309(n+1))`
-/

namespace A137087.P11313157064657483061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137086 (A043309 (n + 1)).toNat

end

end A137087.P11313157064657483061

/-!
# A137090: Numbers k such that k and k^2 use only the digits 2, 3, 6, 8 and 9.

The programs for A137090, there is no canonical definition to state claims against.
-/

/-! ## A137090.P16479895479028972069

`A137138(comp[Δ[∑{d}[n+1, #]²]])`
-/

namespace A137090.P16479895479028972069
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f3 n), d) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137138 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A137090.P16479895479028972069

/-! ## A137090.P14771985612144834394

`A137138(∑[A136170(n)])`
-/

namespace A137090.P14771985612144834394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A137090.P14771985612144834394

/-!
# A137093: Numbers k such that k and k^2 use only the digits 2, 4, 5 and 6.

The programs for A137093, there is no canonical definition to state claims against.
-/

/-! ## A137093.P3549504900012960793

`∩[A136988(n+1), A137094(n+1)]`
-/

namespace A137093.P3549504900012960793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137094 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137093.P3549504900012960793

/-! ## A137093.P10708704110133627856

`∩[A137067(n+1), A137095(n+1)]`
-/

namespace A137093.P10708704110133627856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137093.P10708704110133627856

/-! ## A137093.P15152546874887824590

`∩[A137094(n+1), A137096(n+1)]`
-/

namespace A137093.P15152546874887824590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137093.P15152546874887824590

/-! ## A137093.P475672300259934233

`∩[A137095(n+1), A137096(n+1)]`
-/

namespace A137093.P475672300259934233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137093.P475672300259934233

/-! ## A137093.P16491178808296081328

`∩[A136988(n+1), A137096(n+1)]`
-/

namespace A137093.P16491178808296081328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137096 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A137093.P16491178808296081328

/-!
# A137096: Numbers k such that k and k^2 use only the digits 2, 4, 5, 6 and 9.

The programs for A137096, there is no canonical definition to state claims against.
-/

/-! ## A137096.P5018834053821025158

`xor(A104082(n), A353109(Δ[n²]²))`
-/

namespace A137096.P5018834053821025158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A104082 n) (A353109 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat)

end

end A137096.P5018834053821025158

/-!
# A137098: Numbers k such that k and k^2 use only the digits 2, 4, 5, 7 and 9.

The programs for A137098, there is no canonical definition to state claims against.
-/

/-! ## A137098.P4641834843215123533

`A214003(n+1)+A143595(A089408(3*n+4))`
-/

namespace A137098.P4641834843215123533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214003 (n + 1) + A143595 (A089408 (3 * n + 4)).toNat

end

end A137098.P4641834843215123533

/-!
# A137099: Numbers k such that k and k^2 use only the digits 2, 4, 5, 8 and 9.

The programs for A137099, there is no canonical definition to state claims against.
-/

/-! ## A137099.P8433418791202427445

`A007870(n)*A079366(A078124(n))`
-/

namespace A137099.P8433418791202427445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007870 n * A079366 (A078124 n).toNat

end

end A137099.P8433418791202427445

