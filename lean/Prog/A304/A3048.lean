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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
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
# A304800: Solution (b(n)) of the complementary equation a(n) = b(n) + b(2n); see Comments.

The programs for A304800, there is no canonical definition to state claims against.
-/

/-! ## A304800.P11269964267123436715

`ceil(A304799(n)/3)`
-/

namespace A304800.P11269964267123436715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304799 n : ℚ) / 3⌉

end

end A304800.P11269964267123436715

/-! ## A304800.P13968838115849794891

`A004526(A304799(n)-A004773(n))`
-/

namespace A304800.P13968838115849794891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A304799 n - A004773 n).toNat

end

end A304800.P13968838115849794891

/-! ## A304800.P7071645957080570101

`A123919(A304799(n)+1)`
-/

namespace A304800.P7071645957080570101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123919 (A304799 n + 1).toNat

end

end A304800.P7071645957080570101

/-! ## A304800.P6416416667208691709

`A002264(A304799(n)+2)`
-/

namespace A304800.P6416416667208691709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A304799 n + 2).toNat

end

end A304800.P6416416667208691709

/-! ## A304800.P7521095720480834155

`A008620(A304799(n)-1)`
-/

namespace A304800.P7521095720480834155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A304799 n - 1).toNat

end

end A304800.P7521095720480834155

/-! ## A304800.P3447293739542258961

`A008615(2*A304799(n))`
-/

namespace A304800.P3447293739542258961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * A304799 n).toNat

end

end A304800.P3447293739542258961

/-! ## A304800.P11487627248419791069

`A304799(n)-A002264(2*A304799(n))`
-/

namespace A304800.P11487627248419791069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304799 n - A002264 (2 * A304799 n).toNat

end

end A304800.P11487627248419791069

/-!
# A304801: Solution (a(n)) of the complementary equation a(n) = b(n) + b(3n); see Comments.

The programs for A304801, there is no canonical definition to state claims against.
-/

/-! ## A304801.P17374122041452510798

`A304802(3*n)+A304802(n)`
-/

namespace A304801.P17374122041452510798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304802 (3 * n) + A304802 n

end

end A304801.P17374122041452510798

/-! ## A304801.P14638380664112334292

`record[(A304802(n)+1)%A304802(n+1)]`
-/

namespace A304801.P14638380664112334292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304802 n + 1) (A304802 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304801.P14638380664112334292

/-! ## A304801.P5176927143846610822

`eq[char[A304802(n)], A000007(n)]`
-/

namespace A304801.P5176927143846610822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304802 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304801.P5176927143846610822

/-! ## A304801.P10657834961097017941

`eq[char[A304802(n)], A000038(n)]`
-/

namespace A304801.P10657834961097017941
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304802 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304801.P10657834961097017941

/-! ## A304801.P13429694480499253529

`eq[char[A304802(n)], A169585(n)]`
-/

namespace A304801.P13429694480499253529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304802 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304801.P13429694480499253529

/-!
# A304802: Solution (b(n)) of the complementary equation a(n) = b(n) + b(3n); see Comments.

The programs for A304802, there is no canonical definition to state claims against.
-/

/-! ## A304802.P743934811569287158

`comp[A304801(n)-1]+1`
-/

namespace A304802.P743934811569287158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304801 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304802.P743934811569287158

/-! ## A304802.P6864300890329631638

`A110654(A304801(n)-A047218(n+1))`
-/

namespace A304802.P6864300890329631638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A304801 n - A047218 (n + 1)).toNat

end

end A304802.P6864300890329631638

/-! ## A304802.P6149310450512232200

`A004526(A304801(n)-A256680(n))`
-/

namespace A304802.P6149310450512232200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A304801 n - A256680 n).toNat

end

end A304802.P6149310450512232200

/-! ## A304802.P14087295858660315324

`round(A304801(n)²/A304801(A008574(n)))`
-/

namespace A304802.P14087295858660315324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A304801 n ^ 2 : ℚ) / (A304801 (A008574 n).toNat : ℚ))

end

end A304802.P14087295858660315324

/-! ## A304802.P17175451823297075183

`A004526(A304801(n)-A004526(n))-n`
-/

namespace A304802.P17175451823297075183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A304801 n - A004526 n).toNat - (n : ℤ)

end

end A304802.P17175451823297075183

/-! ## A304802.P68472800300217576

`A110654(A304801(n)-A110654(n))-n`
-/

namespace A304802.P68472800300217576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A304801 n - A110654 n).toNat - (n : ℤ)

end

end A304802.P68472800300217576

/-! ## A304802.P15817092442835568988

`A008621(A304801(n))`
-/

namespace A304802.P15817092442835568988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A304801 n).toNat

end

end A304802.P15817092442835568988

/-! ## A304802.P1424946521646966268

`A110655(A304801(n)+1)`
-/

namespace A304802.P1424946521646966268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A304801 n + 1).toNat

end

end A304802.P1424946521646966268

/-! ## A304802.P3190137919865565425

`A008624(or(2, A304801(n)))`
-/

namespace A304802.P3190137919865565425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.lor 2 (A304801 n)).toNat

end

end A304802.P3190137919865565425

/-! ## A304802.P16814587246782106093

`A059169(or(3, A304801(n)))`
-/

namespace A304802.P16814587246782106093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (Int.lor 3 (A304801 n)).toNat

end

end A304802.P16814587246782106093

/-! ## A304802.P12786412881150469509

`A230149(A304801(n)+1)+1`
-/

namespace A304802.P12786412881150469509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230149 (A304801 n + 1).toNat + 1

end

end A304802.P12786412881150469509

/-! ## A304802.P15259041417019166257

`A008619(A008619(A304801(n))-1)`
-/

namespace A304802.P15259041417019166257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008619 (A304801 n).toNat - 1).toNat

end

end A304802.P15259041417019166257

/-! ## A304802.P11650619650730428427

`ceil(A008738(A304801(n))/A016825(n))`
-/

namespace A304802.P11650619650730428427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A008738 (A304801 n).toNat : ℚ) / (A016825 n : ℚ)⌉

end

end A304802.P11650619650730428427

/-! ## A304802.P18257100014921991833

`round(A008738(A304801(n))/A008574(n))`
-/

namespace A304802.P18257100014921991833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008738 (A304801 n).toNat : ℚ) / (A008574 n : ℚ))

end

end A304802.P18257100014921991833

/-!
# A304803: Solution (a(n)) of the complementary equation a(n) = b(n) + b(4n); see Comments.

The programs for A304803, there is no canonical definition to state claims against.
-/

/-! ## A304803.P13045778901959243839

`A304804(4*n)+A304804(n)`
-/

namespace A304803.P13045778901959243839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304804 (4 * n) + A304804 n

end

end A304803.P13045778901959243839

/-! ## A304803.P4889099173385082579

`xor(1, A304804(A016861(n)))`
-/

namespace A304803.P4889099173385082579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A304804 (A016861 n).toNat)

end

end A304803.P4889099173385082579

/-! ## A304803.P10032217506256656827

`record[(A304804(n)+1)%A304804(n+1)]`
-/

namespace A304803.P10032217506256656827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304804 n + 1) (A304804 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304803.P10032217506256656827

/-! ## A304803.P2874893682149990375

`A016921(n)+A014695(A232567(n+1))`
-/

namespace A304803.P2874893682149990375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + A014695 (A232567 (n + 1)).toNat

end

end A304803.P2874893682149990375

/-! ## A304803.P12312055767719914115

`A016921(n)+A014695(A002817(n))`
-/

namespace A304803.P12312055767719914115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n + A014695 (A002817 n).toNat

end

end A304803.P12312055767719914115

/-!
# A304804: Solution (b(n)) of the complementary equation a(n) = b(n) + b(4n) ; see Comments.

The programs for A304804, there is no canonical definition to state claims against.
-/

/-! ## A304804.P6953705675883051157

`comp[A304803(n)-1]+1`
-/

namespace A304804.P6953705675883051157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304803 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304804.P6953705675883051157

/-! ## A304804.P16289148716759205190

`A057355(A304803(n)-4*n)`
-/

namespace A304804.P16289148716759205190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A304803 n - (4 * n : ℤ)).toNat

end

end A304804.P16289148716759205190

/-! ## A304804.P16003789387165527075

`A008619(2*comp[A304803(n)-1])`
-/

namespace A304804.P16003789387165527075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304803 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A304804.P16003789387165527075

/-! ## A304804.P11383490960215203351

`A008611(3*comp[A304803(n)-1])`
-/

namespace A304804.P11383490960215203351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304803 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A304804.P11383490960215203351

/-! ## A304804.P2482068177531627962

`A008620(3*comp[A304803(n)-1])`
-/

namespace A304804.P2482068177531627962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304803 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A304804.P2482068177531627962

/-! ## A304804.P12551752282420337384

`A008621(A304803(n)-A047263(n+1))`
-/

namespace A304804.P12551752282420337384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A304803 n - A047263 (n + 1)).toNat

end

end A304804.P12551752282420337384

/-! ## A304804.P1928112808105106054

`A002265(A304803(n)-A047263(n+1))+1`
-/

namespace A304804.P1928112808105106054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A304803 n - A047263 (n + 1)).toNat + 1

end

end A304804.P1928112808105106054

/-! ## A304804.P4177969585093931983

`A134119(A304803(n)-1)+1`
-/

namespace A304804.P4177969585093931983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A304803 n - 1).toNat + 1

end

end A304804.P4177969585093931983

/-! ## A304804.P18423307303854605058

`A134119(A304803(n)+5)`
-/

namespace A304804.P18423307303854605058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A304803 n + 5).toNat

end

end A304804.P18423307303854605058

/-!
# A304805: Solution (a(n)) of the complementary equation a(n) = b(n) + b(5n) ; see Comments.

The programs for A304805, there is no canonical definition to state claims against.
-/

/-! ## A304805.P10204423257847185631

`A304806(5*n)+A304806(n)`
-/

namespace A304805.P10204423257847185631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304806 (5 * n) + A304806 n

end

end A304805.P10204423257847185631

/-! ## A304805.P2228033344003365788

`record[(A304806(n)+1)%A304806(n+1)]`
-/

namespace A304805.P2228033344003365788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304806 n + 1) (A304806 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304805.P2228033344003365788

/-! ## A304805.P4674427155842982447

`comp[A304806(A246592(n))-1]+1`
-/

namespace A304805.P4674427155842982447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304806 (A246592 n).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304805.P4674427155842982447

/-! ## A304805.P3339159896487491411

`A017029(n)-A040001(A295684(n))`
-/

namespace A304805.P3339159896487491411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017029 n - A040001 (A295684 n).toNat

end

end A304805.P3339159896487491411

/-! ## A304805.P525052216090492516

`A017017(n)-A267043(A002062(n))`
-/

namespace A304805.P525052216090492516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017017 n - A267043 (A002062 n).toNat

end

end A304805.P525052216090492516

/-!
# A304806: Solution (b(n)) of the complementary equation a(n) = b(n) + b(5n) ; see Comments.

The programs for A304806, there is no canonical definition to state claims against.
-/

/-! ## A304806.P906271785948079299

`∑[char[A304805(n)-(n+1)]+1]`
-/

namespace A304806.P906271785948079299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304805 n - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304806.P906271785948079299

/-! ## A304806.P9215750366494501299

`lt[n*char[A304805(n)], n]`
-/

namespace A304806.P9215750366494501299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304805 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A304806.P9215750366494501299

/-! ## A304806.P16341787724807015747

`eq[char[A304805(n)], A000007(n)]`
-/

namespace A304806.P16341787724807015747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304805 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304806.P16341787724807015747

/-! ## A304806.P2225854921596566357

`eq[char[A304805(n)], A000038(n)]`
-/

namespace A304806.P2225854921596566357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304805 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304806.P2225854921596566357

/-! ## A304806.P10881925623748751405

`lt[char[A304805(n)], n/A311101(n)]`
-/

namespace A304806.P10881925623748751405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304805 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A311101 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f3 j) n

end

end A304806.P10881925623748751405

/-! ## A304806.P8325588744998278827

`A103221(A304805(n)+A000034(n))`
-/

namespace A304806.P8325588744998278827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A304805 n + A000034 n).toNat

end

end A304806.P8325588744998278827

/-!
# A304807: Solution (a(n)) of the complementary equation a(n) = b(2n) + b(3n) ; see Comments.

The programs for A304807, there is no canonical definition to state claims against.
-/

/-! ## A304807.P6078842979854732493

`A304808(2*n)+A304808(3*n)`
-/

namespace A304807.P6078842979854732493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304808 (2 * n) + A304808 (3 * n)

end

end A304807.P6078842979854732493

/-! ## A304807.P12268139548451853049

`xor(1, A304808(A016861(n)))`
-/

namespace A304807.P12268139548451853049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A304808 (A016861 n).toNat)

end

end A304807.P12268139548451853049

/-! ## A304807.P9712203103388346765

`xor(1, A304808(A304802(4*n)))`
-/

namespace A304807.P9712203103388346765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A304808 (A304802 (4 * n)).toNat)

end

end A304807.P9712203103388346765

/-! ## A304807.P10028761779249014531

`record[(A304808(n)+1)%A304808(n+1)]`
-/

namespace A304807.P10028761779249014531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304808 n + 1) (A304808 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304807.P10028761779249014531

/-! ## A304807.P14057679771802034166

`A004442(A304808(Δ[A000566(n)]))`
-/

namespace A304807.P14057679771802034166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A304808 (f1 (n + 1) - f1 n).toNat).toNat

end

end A304807.P14057679771802034166

/-!
# A304808: Solution (b(n)) of the complementary equation a(n) = b(2n) + b(3n) ; see Comments.

The programs for A304808, there is no canonical definition to state claims against.
-/

/-! ## A304808.P1183078902160616587

`∑[char[A304807(n)-(n+1)]+1]`
-/

namespace A304808.P1183078902160616587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304807 n - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304808.P1183078902160616587

/-! ## A304808.P8459372087978760210

`eq[char[A304807(n)], A000007(n)]`
-/

namespace A304808.P8459372087978760210
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304807 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304808.P8459372087978760210

/-! ## A304808.P4635881557667542760

`eq[char[A304807(n)], A000038(n)]`
-/

namespace A304808.P4635881557667542760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304807 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304808.P4635881557667542760

/-! ## A304808.P2821461218399770158

`eq[char[A304807(n)], A080339(2*(n+1))]`
-/

namespace A304808.P2821461218399770158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304807 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304808.P2821461218399770158

/-! ## A304808.P10440945414920378288

`eq[char[A304807(n)], A151933(n)]`
-/

namespace A304808.P10440945414920378288
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304807 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304808.P10440945414920378288

/-!
# A304809: Solution (a(n)) of the complementary equation a(n) = b(2n) + b(4n) ; see Comments.

The programs for A304809, the canonical program `A304809.P15309802122622084292` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304809 has offset 0).

The definition of A304809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304809.P15309802122622084292

`a(n-3)+21` with `a(0)=2, a(1)=10, a(2)=17`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304809

/-- `a(n-3)+21` -/
def P15309802122622084292.Spec : Prop :=
  ∀ n, (P15309802122622084292.a n : ℤ) = A304809 n

theorem P15309802122622084292.correct : P15309802122622084292.Spec := by
  intro n
  simp only [A304809]

end A304809

/-! ## A304809.P6239265940355989826

`∑[floor(a(n-3))]` with `a(0)=2, a(1)=8, a(2)=7, a(3)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A304809.P6239265940355989826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8, 7, 6] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304809.P6239265940355989826

namespace A304809

/-- `∑[floor(a(n-3))]` -/
def P6239265940355989826.Spec : Prop :=
  ∀ n, (P6239265940355989826.a n : ℤ) = A304809 n

end A304809

/-! ## A304809.P10769287539723701610

`n²%3+7*n+2`
-/

namespace A304809.P10769287539723701610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3 + (7 * n + 2)

end

end A304809.P10769287539723701610

namespace A304809

/-- `n²%3+7*n+2` -/
def P10769287539723701610.Spec : Prop :=
  ∀ n, (P10769287539723701610.a n : ℤ) = A304809 n

end A304809

/-! ## A304809.P16963545258270383455

`3-char[3*n]+7*n`
-/

namespace A304809.P16963545258270383455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (7 * n : ℤ)

end

end A304809.P16963545258270383455

namespace A304809

/-- `3-char[3*n]+7*n` -/
def P16963545258270383455.Spec : Prop :=
  ∀ n, P16963545258270383455.a n = A304809 n

end A304809

/-! ## A304809.P13857264577313059033

`∑[a(n-3)%9]` with `a(0)=2, a(1)=8, a(2)=7, a(3)=6`
-/

namespace A304809.P13857264577313059033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 8, 7, 6] fun n f1 =>
  f1 (n - 3) % 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304809.P13857264577313059033

namespace A304809

/-- `∑[a(n-3)%9]` -/
def P13857264577313059033.Spec : Prop :=
  ∀ n, (P13857264577313059033.a n : ℤ) = A304809 n

end A304809

/-! ## A304809.P12474875648751618166

`∑[A245944(a(n-1))]` with `a(0)=2`
-/

namespace A304809.P12474875648751618166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A245944 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304809.P12474875648751618166

namespace A304809

/-- `∑[A245944(a(n-1))]` -/
def P12474875648751618166.Spec : Prop :=
  ∀ n, P12474875648751618166.a n = A304809 n

end A304809

/-! ## A304809.P7999572707092559782

`abs(∑[n+1]²%3-n-A016945(n))`
-/

namespace A304809.P7999572707092559782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 % 3 : ℕ) : ℤ) - (n : ℤ) - A016945 n|

end

end A304809.P7999572707092559782

namespace A304809

/-- `abs(∑[n+1]²%3-n-A016945(n))` -/
def P7999572707092559782.Spec : Prop :=
  ∀ n, P7999572707092559782.a n = A304809 n

end A304809

/-! ## A304809.P9037005222298527940

`A047358(A047234(n+2))`
-/

namespace A304809.P9037005222298527940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (A047234 (n + 2)).toNat

end

end A304809.P9037005222298527940

namespace A304809

/-- `A047358(A047234(n+2))` -/
def P9037005222298527940.Spec : Prop :=
  ∀ n, P9037005222298527940.a n = A304809 n

end A304809

/-! ## A304809.P8248477458046646638

`A047284(A047271(n+1)+1+n)`
-/

namespace A304809.P8248477458046646638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047284 (A047271 (n + 1) + 1 + (n : ℤ)).toNat

end

end A304809.P8248477458046646638

namespace A304809

/-- `A047284(A047271(n+1)+1+n)` -/
def P8248477458046646638.Spec : Prop :=
  ∀ n, P8248477458046646638.a n = A304809 n

end A304809

/-! ## A304809.P12806367291068955030

`ceil((A016969(ceil(10*n/3))+n)/3)`
-/

namespace A304809.P12806367291068955030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A016969 ⌈10 * ((n : ℚ) / 3)⌉.toNat + (n : ℤ) : ℚ) / 3⌉

end

end A304809.P12806367291068955030

namespace A304809

/-- `ceil((A016969(ceil(10*n/3))+n)/3)` -/
def P12806367291068955030.Spec : Prop :=
  ∀ n, P12806367291068955030.a n = A304809 n

end A304809

/-! ## A304809.P15327774946689651000

`A160545(4*n+2)`
-/

namespace A304809.P15327774946689651000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160545 (4 * n + 2)

end

end A304809.P15327774946689651000

namespace A304809

/-- `A160545(4*n+2)` -/
def P15327774946689651000.Spec : Prop :=
  ∀ n, P15327774946689651000.a n = A304809 n

end A304809

/-! ## A304809.P6014077981905797991

`A047286(A047268(2*(n+1)))`
-/

namespace A304809.P6014077981905797991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047286 (A047268 (2 * (n + 1))).toNat

end

end A304809.P6014077981905797991

namespace A304809

/-- `A047286(A047268(2*(n+1)))` -/
def P6014077981905797991.Spec : Prop :=
  ∀ n, P6014077981905797991.a n = A304809 n

end A304809

/-! ## A304809.P135860893850329358

`A001651(A047290(2*n+1)+1)`
-/

namespace A304809.P135860893850329358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A047290 (2 * n + 1) + 1).toNat

end

end A304809.P135860893850329358

namespace A304809

/-- `A001651(A047290(2*n+1)+1)` -/
def P135860893850329358.Spec : Prop :=
  ∀ n, P135860893850329358.a n = A304809 n

end A304809

/-! ## A304809.P5789019039571122010

`A001651(A047282(2*(n+1))-1)`
-/

namespace A304809.P5789019039571122010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A047282 (2 * (n + 1)) - 1).toNat

end

end A304809.P5789019039571122010

namespace A304809

/-- `A001651(A047282(2*(n+1))-1)` -/
def P5789019039571122010.Spec : Prop :=
  ∀ n, P5789019039571122010.a n = A304809 n

end A304809

/-! ## A304809.P14953474944939854282

`A001651(A047220(n+2)+3*n+1)`
-/

namespace A304809.P14953474944939854282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A047220 (n + 2) + (3 * n + 1 : ℤ)).toNat

end

end A304809.P14953474944939854282

namespace A304809

/-- `A001651(A047220(n+2)+3*n+1)` -/
def P14953474944939854282.Spec : Prop :=
  ∀ n, P14953474944939854282.a n = A304809 n

end A304809

/-! ## A304809.P11722837652797942673

`A001651(A010761(2*(n+1))+3*n+1)`
-/

namespace A304809.P11722837652797942673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A010761 (2 * (n + 1)) + (3 * n + 1 : ℤ)).toNat

end

end A304809.P11722837652797942673

namespace A304809

/-- `A001651(A010761(2*(n+1))+3*n+1)` -/
def P11722837652797942673.Spec : Prop :=
  ∀ n, P11722837652797942673.a n = A304809 n

end A304809

/-! ## A304809.P6961630205312940959

`A335129(A017053(n))`
-/

namespace A304809.P6961630205312940959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335129 (A017053 n).toNat

end

end A304809.P6961630205312940959

namespace A304809

/-- `A335129(A017053(n))` -/
def P6961630205312940959.Spec : Prop :=
  ∀ n, P6961630205312940959.a n = A304809 n

end A304809

/-!
# A304810: Solution (b(n)) of the complementary equation a(n) = b(2n) + b(4n) ; see Comments.

The programs for A304810, the canonical program `A304810.P6672051720957804897` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304810 has offset 0).

The definition of A304810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304810.P6672051720957804897

`comp[a(n-3)+21]` with `a(0)=0, a(1)=2, a(2)=10, a(3)=17`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304810

/-- `comp[a(n-3)+21]` -/
def P6672051720957804897.Spec : Prop :=
  ∀ n, (P6672051720957804897.a n : ℤ) = A304810 n

theorem P6672051720957804897.correct : P6672051720957804897.Spec := by
  intro n
  simp only [A304810]

end A304810

/-! ## A304810.P10338857629424421974

`comp[7*n+2-char[3*n]]+1`
-/

namespace A304810.P10338857629424421974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n : ℤ) + (2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304810.P10338857629424421974

namespace A304810

/-- `comp[7*n+2-char[3*n]]+1` -/
def P10338857629424421974.Spec : Prop :=
  ∀ n, (P10338857629424421974.a n : ℤ) = A304810 n

end A304810

/-! ## A304810.P15836930104438171028

`A128929(A313538(n+1))`
-/

namespace A304810.P15836930104438171028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128929 (A313538 (n + 1)).toNat

end

end A304810.P15836930104438171028

namespace A304810

/-- `A128929(A313538(n+1))` -/
def P15836930104438171028.Spec : Prop :=
  ∀ n, P15836930104438171028.a n = A304810 n

end A304810

/-! ## A304810.P13628695146744150120

`A002265(A313538(n+1)+2)`
-/

namespace A304810.P13628695146744150120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A313538 (n + 1) + 2).toNat

end

end A304810.P13628695146744150120

namespace A304810

/-- `A002265(A313538(n+1)+2)` -/
def P13628695146744150120.Spec : Prop :=
  ∀ n, P13628695146744150120.a n = A304810 n

end A304810

/-! ## A304810.P11727258766611229243

`floor(A314736(2*n+3)/8)`
-/

namespace A304810.P11727258766611229243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A314736 (2 * n + 3) : ℚ) / 8⌋

end

end A304810.P11727258766611229243

namespace A304810

/-- `floor(A314736(2*n+3)/8)` -/
def P11727258766611229243.Spec : Prop :=
  ∀ n, P11727258766611229243.a n = A304810 n

end A304810

/-! ## A304810.P993306015019758014

`eq[char[A304809(n)], A151933(n)]`
-/

namespace A304810.P993306015019758014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304809 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304810.P993306015019758014

namespace A304810

/-- `eq[char[A304809(n)], A151933(n)]` -/
def P993306015019758014.Spec : Prop :=
  ∀ n, (P993306015019758014.a n : ℤ) = A304810 n

end A304810

/-! ## A304810.P8285797611183892782

`ceil((A304501(n+3)-7)/2)`
-/

namespace A304810.P8285797611183892782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A304501 (n + 3) - 7 : ℚ) / 2⌉

end

end A304810.P8285797611183892782

namespace A304810

/-- `ceil((A304501(n+3)-7)/2)` -/
def P8285797611183892782.Spec : Prop :=
  ∀ n, P8285797611183892782.a n = A304810 n

end A304810

/-! ## A304810.P6233460128230319257

`A065033(A304501(n+3)-7)`
-/

namespace A304810.P6233460128230319257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A304501 (n + 3) - 7).toNat

end

end A304810.P6233460128230319257

namespace A304810

/-- `A065033(A304501(n+3)-7)` -/
def P6233460128230319257.Spec : Prop :=
  ∀ n, P6233460128230319257.a n = A304810 n

end A304810

/-! ## A304810.P10269219405001146005

`A008619(A304501(n+3)-8)`
-/

namespace A304810.P10269219405001146005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A304501 (n + 3) - 8).toNat

end

end A304810.P10269219405001146005

namespace A304810

/-- `A008619(A304501(n+3)-8)` -/
def P10269219405001146005.Spec : Prop :=
  ∀ n, P10269219405001146005.a n = A304810 n

end A304810

/-! ## A304810.P16894116634344225677

`A080513(A304501(n+3)-9)`
-/

namespace A304810.P16894116634344225677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A304501 (n + 3) - 9).toNat

end

end A304810.P16894116634344225677

namespace A304810

/-- `A080513(A304501(n+3)-9)` -/
def P16894116634344225677.Spec : Prop :=
  ∀ n, P16894116634344225677.a n = A304810 n

end A304810

/-!
# A304811: Solution (a(n)) of the complementary equation a(n) = b(2n) + b(5n) ; see Comments.

The programs for A304811, there is no canonical definition to state claims against.
-/

/-! ## A304811.P9638860784898821973

`A017101(n)-A010052(A007318(A277593(n+1)))`
-/

namespace A304811.P9638860784898821973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - A010052 (A007318 (A277593 (n + 1)).toNat).toNat

end

end A304811.P9638860784898821973

/-! ## A304811.P6715462603163310267

`A288864(A087955(n))+A017089(n)`
-/

namespace A304811.P6715462603163310267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (A087955 n).toNat + A017089 n

end

end A304811.P6715462603163310267

/-! ## A304811.P998366246800412339

`A328101(A075504(n+4))+A017089(n)`
-/

namespace A304811.P998366246800412339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328101 (A075504 (n + 4)).toNat + A017089 n

end

end A304811.P998366246800412339

/-! ## A304811.P13883482835695394579

`A017101(n)-A151667(A161715(n))`
-/

namespace A304811.P13883482835695394579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - A151667 (A161715 n).toNat

end

end A304811.P13883482835695394579

/-! ## A304811.P7874380102456375420

`A017101(n)-A025435(A078057(n))`
-/

namespace A304811.P7874380102456375420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 n - A025435 (A078057 n).toNat

end

end A304811.P7874380102456375420

/-!
# A304812: Solution (b(n)) of the complementary equation a(n) = b(2n) + b(5n); see Comments.

The programs for A304812, there is no canonical definition to state claims against.
-/

/-! ## A304812.P15554215039581734655

`comp[A304811(A261301(n+1))-1]+1`
-/

namespace A304812.P15554215039581734655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304811 (A261301 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304812.P15554215039581734655

/-! ## A304812.P4662139562332562124

`comp[A304811(A289440(n+2))-1]+1`
-/

namespace A304812.P4662139562332562124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304811 (A289440 (n + 2)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304812.P4662139562332562124

/-! ## A304812.P13968826519979493152

`eq[char[A304811(n)], A000007(n)]`
-/

namespace A304812.P13968826519979493152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304811 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304812.P13968826519979493152

/-! ## A304812.P13932387378912541820

`eq[char[A304811(n)], A000038(n)]`
-/

namespace A304812.P13932387378912541820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304811 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304812.P13932387378912541820

/-! ## A304812.P3022318664497834746

`eq[char[A304811(n)], A036987(2*n)]`
-/

namespace A304812.P3022318664497834746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304811 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304812.P3022318664497834746

/-! ## A304812.P8118234771302828353

`eq[char[A304811(n)], A257170(2*n)]`
-/

namespace A304812.P8118234771302828353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304811 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257170 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304812.P8118234771302828353

/-! ## A304812.P14511307272096541712

`eq[char[A304811(n)], A151933(n)]`
-/

namespace A304812.P14511307272096541712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304811 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304812.P14511307272096541712

/-!
# A304813: Solution (a(n)) of the complementary equation a(n) = b(3n) + b(5n); see Comments.

The programs for A304813, there is no canonical definition to state claims against.
-/

/-! ## A304813.P1672120474551204090

`A141260(A173511(3*n+4))+A017185(n)`
-/

namespace A304813.P1672120474551204090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141260 (A173511 (3 * n + 4)).toNat + A017185 n

end

end A304813.P1672120474551204090

/-! ## A304813.P24258490924360723

`9*n+3-A010060(A319910(n+1))`
-/

namespace A304813.P24258490924360723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n + 3 : ℤ) - A010060 (A319910 (n + 1)).toNat

end

end A304813.P24258490924360723

/-! ## A304813.P1046866809011667612

`A287125(A193839(n+2))+A017185(n)`
-/

namespace A304813.P1046866809011667612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287125 (A193839 (n + 2)).toNat + A017185 n

end

end A304813.P1046866809011667612

/-! ## A304813.P11613431578759643643

`A000196(xor(A017198(n), A036469(n)))`
-/

namespace A304813.P11613431578759643643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A017198 n) (A036469 n)).toNat

end

end A304813.P11613431578759643643

/-! ## A304813.P13528410464482122546

`A143589(A319342(n+1))+A017173(n)`
-/

namespace A304813.P13528410464482122546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143589 (A319342 (n + 1)).toNat + A017173 n

end

end A304813.P13528410464482122546

/-!
# A304814: Solution (b(n)) of the complementary equation a(n) = b(3n) + b(5n); see Comments.

The programs for A304814, there is no canonical definition to state claims against.
-/

/-! ## A304814.P16774177803468605543

`∑[char[A304813(n)-(n+1)]+1]`
-/

namespace A304814.P16774177803468605543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304813 n - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304814.P16774177803468605543

/-! ## A304814.P16150295159525163262

`eq[char[A304813(n)], A000007(n)]`
-/

namespace A304814.P16150295159525163262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304813 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304814.P16150295159525163262

/-! ## A304814.P15453344554246920470

`eq[char[A304813(n)], A000038(n)]`
-/

namespace A304814.P15453344554246920470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304813 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304814.P15453344554246920470

/-! ## A304814.P4134578244315481206

`eq[char[A304813(n)], A060147(2*n+1)]`
-/

namespace A304814.P4134578244315481206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304813 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060147 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304814.P4134578244315481206

/-! ## A304814.P4948197947107861809

`eq[char[A304813(n)], A266246(2*(n+2))]`
-/

namespace A304814.P4948197947107861809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304813 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266246 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304814.P4948197947107861809

/-!
# A304815: Solution (a(n)) of the complementary equation a(n) = b(4n) + b(5n); see Comments.

The programs for A304815, there is no canonical definition to state claims against.
-/

/-! ## A304815.P562488192157579160

`A140080(A035597(n))+A017293(n)`
-/

namespace A304815.P562488192157579160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140080 (A035597 n).toNat + A017293 n

end

end A304815.P562488192157579160

/-! ## A304815.P7929116428423423367

`A017305(n)-A288670(A309077(3*n+4))`
-/

namespace A304815.P7929116428423423367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - A288670 (A309077 (3 * n + 4)).toNat

end

end A304815.P7929116428423423367

/-! ## A304815.P7583693499423235517

`10*n+A130784(A090707(3*(n+1)))`
-/

namespace A304815.P7583693499423235517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + A130784 (A090707 (3 * (n + 1))).toNat

end

end A304815.P7583693499423235517

/-! ## A304815.P12784006471361634383

`A017305(n)-A320006(A130310(n))`
-/

namespace A304815.P12784006471361634383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - A320006 (A130310 n).toNat

end

end A304815.P12784006471361634383

/-! ## A304815.P4434340827730318574

`A017305(n)-A145573(A364455(n+1))`
-/

namespace A304815.P4434340827730318574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n - A145573 (A364455 (n + 1)).toNat

end

end A304815.P4434340827730318574

/-!
# A304816: Solution (b(n)) of the complementary equation a(n) = b(4n) + b(5n); see Comments.

The programs for A304816, there is no canonical definition to state claims against.
-/

/-! ## A304816.P11884494526155650678

`comp[A304815(n)-1]+1`
-/

namespace A304816.P11884494526155650678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304815 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A304816.P11884494526155650678

/-! ## A304816.P14535651804598530883

`comp[n%2*A304815(floor(n/2))]`
-/

namespace A304816.P14535651804598530883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A304815 ⌊(n : ℚ) / 2⌋.toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A304816.P14535651804598530883

/-! ## A304816.P4926452535533977865

`eq[char[A304815(n)], A000007(n)]`
-/

namespace A304816.P4926452535533977865
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304815 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304816.P4926452535533977865

/-! ## A304816.P8409668533643128831

`eq[char[A304815(n)], A000038(n)]`
-/

namespace A304816.P8409668533643128831
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304815 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304816.P8409668533643128831

/-! ## A304816.P8741280295011379347

`eq[char[A304815(n)], A147612(2*n)]`
-/

namespace A304816.P8741280295011379347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304815 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304816.P8741280295011379347

/-! ## A304816.P14021830563880761313

`eq[char[A304815(n)], A039975(2*n+1)]`
-/

namespace A304816.P14021830563880761313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304815 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304816.P14021830563880761313

/-! ## A304816.P3965219021400750622

`eq[char[A304815(n)], A005369(n²)]`
-/

namespace A304816.P3965219021400750622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304815 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304816.P3965219021400750622

/-! ## A304816.P10908940709805482233

`eq[char[A304815(n)], A151933(n)]`
-/

namespace A304816.P10908940709805482233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304815 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A304816.P10908940709805482233

/-!
# A304817: Number of divisors of n that are either 1 or not a perfect power.

The programs for A304817, the canonical program `A304817.P8075664180131459050` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304817 has offset 1).

The definition of A304817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A183096, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A304817.P8075664180131459050

`A183096(n+1)+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A304817

/-- `A183096(n+1)+1` -/
def P8075664180131459050.Spec : Prop :=
  ∀ n, P8075664180131459050.a n = A304817 (n + 1)

theorem P8075664180131459050.correct : P8075664180131459050.Spec := by
  intro n
  simp only [A304817, Nat.add_sub_cancel]

end A304817

/-! ## A304817.P9351504774540063930

`∑{d}[n+1, A132350(#)]`
-/

namespace A304817.P9351504774540063930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A132350 d

end

end A304817.P9351504774540063930

namespace A304817

/-- `∑{d}[n+1, A132350(#)]` -/
def P9351504774540063930.Spec : Prop :=
  ∀ n, P9351504774540063930.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P7786898637797261262

`val(A293524(n+1), 2)+1`
-/

namespace A304817.P7786898637797261262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A293524 (n + 1)).toNat 2 + 1

end

end A304817.P7786898637797261262

namespace A304817

/-- `val(A293524(n+1), 2)+1` -/
def P7786898637797261262.Spec : Prop :=
  ∀ n, (P7786898637797261262.a n : ℤ) = A304817 (n + 1)

end A304817

/-! ## A304817.P12466335385556452027

`val(A294873(n+1), 2)+1`
-/

namespace A304817.P12466335385556452027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294873 (n + 1)).toNat 2 + 1

end

end A304817.P12466335385556452027

namespace A304817

/-- `val(A294873(n+1), 2)+1` -/
def P12466335385556452027.Spec : Prop :=
  ∀ n, (P12466335385556452027.a n : ℤ) = A304817 (n + 1)

end A304817

/-! ## A304817.P17041898403976306378

`A000005(n+1)+1-A091050(n+1)`
-/

namespace A304817.P17041898403976306378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A091050 (n + 1))

end

end A304817.P17041898403976306378

namespace A304817

/-- `A000005(n+1)+1-A091050(n+1)` -/
def P17041898403976306378.Spec : Prop :=
  ∀ n, P17041898403976306378.a n = A304817 (n + 1)

theorem P17041898403976306378.correct : P17041898403976306378.Spec := by
  intro n
  simp only [A304817, Nat.add_sub_cancel, A304817.P17041898403976306378.a, A304817.P8075664180131459050.a, A000005, A000005.P16091521709108585461.a, A091050, A091050.P13434770891422209589.f1, A091050.P13434770891422209589.a, A183096, A183096.P3962787682876171308.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A075802, A075802.P15418155707765850726.a, A069623, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304817

/-! ## A304817.P15191785985654019237

`∑{d}[n+1, A000005(#)*A304362((n+1)/#)]`
-/

namespace A304817.P15191785985654019237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A304362 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304817.P15191785985654019237

namespace A304817

/-- `∑{d}[n+1, A000005(#)*A304362((n+1)/#)]` -/
def P15191785985654019237.Spec : Prop :=
  ∀ n, P15191785985654019237.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P15200454916225734153

`A000005(n+1)-A001222(A294875(n+1))`
-/

namespace A304817.P15200454916225734153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A001222 (A294875 (n + 1)).toNat

end

end A304817.P15200454916225734153

namespace A304817

/-- `A000005(n+1)-A001222(A294875(n+1))` -/
def P15200454916225734153.Spec : Prop :=
  ∀ n, P15200454916225734153.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P7413786674672449710

`A316314(A234743(n+1))+1`
-/

namespace A304817.P7413786674672449710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (A234743 (n + 1)).toNat + 1

end

end A304817.P7413786674672449710

namespace A304817

/-- `A316314(A234743(n+1))+1` -/
def P7413786674672449710.Spec : Prop :=
  ∀ n, P7413786674672449710.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P15630705255579570737

`A316314(A178442(n+1))+1`
-/

namespace A304817.P15630705255579570737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316314 (A178442 (n + 1)).toNat + 1

end

end A304817.P15630705255579570737

namespace A304817

/-- `A316314(A178442(n+1))+1` -/
def P15630705255579570737.Spec : Prop :=
  ∀ n, P15630705255579570737.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P4084457285547282197

`A316398(A234748(n+1))`
-/

namespace A304817.P4084457285547282197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316398 (A234748 (n + 1)).toNat

end

end A304817.P4084457285547282197

namespace A304817

/-- `A316398(A234748(n+1))` -/
def P4084457285547282197.Spec : Prop :=
  ∀ n, P4084457285547282197.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P9980624273067268529

`A001511(A294873(n+1))`
-/

namespace A304817.P9980624273067268529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A294873 (n + 1)).toNat

end

end A304817.P9980624273067268529

namespace A304817

/-- `A001511(A294873(n+1))` -/
def P9980624273067268529.Spec : Prop :=
  ∀ n, P9980624273067268529.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P16138018647131236480

`A007814(2*A294873(n+1))`
-/

namespace A304817.P16138018647131236480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A294873 (n + 1)).toNat

end

end A304817.P16138018647131236480

namespace A304817

/-- `A007814(2*A294873(n+1))` -/
def P16138018647131236480.Spec : Prop :=
  ∀ n, P16138018647131236480.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P13360287073666862657

`A051628(2*A294873(n+1))`
-/

namespace A304817.P13360287073666862657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (2 * A294873 (n + 1)).toNat

end

end A304817.P13360287073666862657

namespace A304817

/-- `A051628(2*A294873(n+1))` -/
def P13360287073666862657.Spec : Prop :=
  ∀ n, P13360287073666862657.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P12624576867853377126

`A067029(2*A294873(n+1))`
-/

namespace A304817.P12624576867853377126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (2 * A294873 (n + 1)).toNat

end

end A304817.P12624576867853377126

namespace A304817

/-- `A067029(2*A294873(n+1))` -/
def P12624576867853377126.Spec : Prop :=
  ∀ n, P12624576867853377126.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P13478801876374235846

`A091050(2*A294873(n+1))`
-/

namespace A304817.P13478801876374235846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (2 * A294873 (n + 1)).toNat

end

end A304817.P13478801876374235846

namespace A304817

/-- `A091050(2*A294873(n+1))` -/
def P13478801876374235846.Spec : Prop :=
  ∀ n, P13478801876374235846.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P13174106122384412811

`A007814(A294873(n+1)+A294873(n+1))`
-/

namespace A304817.P13174106122384412811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A294873 (n + 1) + A294873 (n + 1)).toNat

end

end A304817.P13174106122384412811

namespace A304817

/-- `A007814(A294873(n+1)+A294873(n+1))` -/
def P13174106122384412811.Spec : Prop :=
  ∀ n, P13174106122384412811.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P2584792404290762882

`A051628(A294873(n+1)+A294873(n+1))`
-/

namespace A304817.P2584792404290762882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051628 (A294873 (n + 1) + A294873 (n + 1)).toNat

end

end A304817.P2584792404290762882

namespace A304817

/-- `A051628(A294873(n+1)+A294873(n+1))` -/
def P2584792404290762882.Spec : Prop :=
  ∀ n, P2584792404290762882.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P13852348068317923314

`A067029(A294873(n+1)+A294873(n+1))`
-/

namespace A304817.P13852348068317923314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067029 (A294873 (n + 1) + A294873 (n + 1)).toNat

end

end A304817.P13852348068317923314

namespace A304817

/-- `A067029(A294873(n+1)+A294873(n+1))` -/
def P13852348068317923314.Spec : Prop :=
  ∀ n, P13852348068317923314.a n = A304817 (n + 1)

end A304817

/-! ## A304817.P2210596714933475727

`A091050(A294873(n+1)+A294873(n+1))`
-/

namespace A304817.P2210596714933475727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (A294873 (n + 1) + A294873 (n + 1)).toNat

end

end A304817.P2210596714933475727

namespace A304817

/-- `A091050(A294873(n+1)+A294873(n+1))` -/
def P2210596714933475727.Spec : Prop :=
  ∀ n, P2210596714933475727.a n = A304817 (n + 1)

end A304817

/-!
# A304818: If n = Product_i p(y_i) where p(i) is the i-th prime number and y_i <= y_j for i < j, then a(n) = Sum_i y_i*i.

The programs for A304818, there is no canonical definition to state claims against.
-/

/-! ## A304818.P10546559833115341692

`A056239(A304660(n+1))`
-/

namespace A304818.P10546559833115341692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A304660 (n + 1)).toNat

end

end A304818.P10546559833115341692

/-! ## A304818.P17339499447550245441

`A056239(n+1)+A318283(A052126(n+1))+A261079(n+1)`
-/

namespace A304818.P17339499447550245441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A318283 (A052126 (n + 1)).toNat + A261079 (n + 1))

end

end A304818.P17339499447550245441

/-! ## A304818.P5682886957320414634

`A316436(2*(n+1))-1+A318283(A052126(n+1))+A261079(n+1)`
-/

namespace A304818.P5682886957320414634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 + (A318283 (A052126 (n + 1)).toNat + A261079 (n + 1))

end

end A304818.P5682886957320414634

/-! ## A304818.P9538144630143371381

`A318283(A052126(2*(n+1)))+A261079(2*(n+1))`
-/

namespace A304818.P9538144630143371381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (A052126 (2 * (n + 1))).toNat + A261079 (2 * (n + 1))

end

end A304818.P9538144630143371381

/-! ## A304818.P8919879173629119404

`A318283(n+1)+A261079(n+1)`
-/

namespace A304818.P8919879173629119404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318283 (n + 1) + A261079 (n + 1)

end

end A304818.P8919879173629119404

/-! ## A304818.P16521372055706841861

`A359362(n+1)-A318283(n+1)`
-/

namespace A304818.P16521372055706841861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359362 (n + 1) - A318283 (n + 1)

end

end A304818.P16521372055706841861

/-! ## A304818.P16566623866485615282

`A316436(2*(n+1))-1+A359677(n+1)+A261079(n+1)`
-/

namespace A304818.P16566623866485615282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (2 * (n + 1)) - 1 + (A359677 (n + 1) + A261079 (n + 1))

end

end A304818.P16566623866485615282

/-! ## A304818.P723891567316483207

`1-A178503(n+1)+n+A359677(n+1)+A261079(n+1)`
-/

namespace A304818.P723891567316483207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A178503 (n + 1) + (n : ℤ) + (A359677 (n + 1) + A261079 (n + 1))

end

end A304818.P723891567316483207

/-! ## A304818.P17373749299927861768

`A318995(n+1)+A001222(n+1)+A359677(n+1)+A261079(n+1)`
-/

namespace A304818.P17373749299927861768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318995 (n + 1) + A001222 (n + 1) + (A359677 (n + 1) + A261079 (n + 1))

end

end A304818.P17373749299927861768

/-! ## A304818.P17478164058963761565

`A359674(n+1)+A056239(n+1)`
-/

namespace A304818.P17478164058963761565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359674 (n + 1) + A056239 (n + 1)

end

end A304818.P17478164058963761565

/-!
# A304819: Dirichlet convolution of r with zeta, where r(n) = (-1)^Omega(n) if n is 1 or not a perfect power and r(n) = 0 otherwise.

The programs for A304819, there is no canonical definition to state claims against.
-/

/-! ## A304819.P7295855599586435288

`A062157(A318762(n+1))*A304820(n+1)`
-/

namespace A304819.P7295855599586435288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A318762 (n + 1)).toNat * A304820 (n + 1)

end

end A304819.P7295855599586435288

/-! ## A304819.P677201516758908132

`(-A304820(n+1))^A002828(n²)`
-/

namespace A304819.P677201516758908132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-A304820 (n + 1) : ℚ) ^ (A002828 (n ^ 2) : ℤ)

end

end A304819.P677201516758908132

/-! ## A304819.P11339395258786690589

`A000038(A000982(n))-A304820(n+1)`
-/

namespace A304819.P11339395258786690589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A000982 n).toNat - A304820 (n + 1)

end

end A304819.P11339395258786690589

/-! ## A304819.P13796974965271146532

`A260196(A161680(n))*A304820(n+1)`
-/

namespace A304819.P13796974965271146532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A161680 n).toNat * A304820 (n + 1)

end

end A304819.P13796974965271146532

/-! ## A304819.P10617985751541344161

`A000038(A132296(n+1))-A304820(n+1)`
-/

namespace A304819.P10617985751541344161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A132296 (n + 1)).toNat - A304820 (n + 1)

end

end A304819.P10617985751541344161

/-! ## A304819.P1702851774718049332

`A000038(∑[n])-A304820(n+1)`
-/

namespace A304819.P1702851774718049332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (∑ j ∈ Finset.range (n + 1), f1 j) - A304820 (n + 1)

end

end A304819.P1702851774718049332

/-! ## A304819.P6833446123270341620

`A000122(A133263(n))-A304820(n+1)`
-/

namespace A304819.P6833446123270341620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A133263 n).toNat - A304820 (n + 1)

end

end A304819.P6833446123270341620

/-! ## A304819.P4156991555680765063

`(A113277(∑[n+1])-1)*A304820(n+1)`
-/

namespace A304819.P4156991555680765063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113277 (∑ j ∈ Finset.range (n + 1), f1 j) - 1) * A304820 (n + 1)

end

end A304819.P4156991555680765063

/-! ## A304819.P15228098753929134749

`A070176(A166009(n+1))-A304820(n+1)`
-/

namespace A304819.P15228098753929134749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070176 (A166009 (n + 1)).toNat - A304820 (n + 1)

end

end A304819.P15228098753929134749

/-! ## A304819.P4978348252776594569

`A260196(n²)*A304820(n+1)`
-/

namespace A304819.P4978348252776594569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n ^ 2) * A304820 (n + 1)

end

end A304819.P4978348252776594569

/-!
# A304820: A co-delta function for non-perfect powers. Dirichlet inverse of A304819.

The programs for A304820, there is no canonical definition to state claims against.
-/

/-! ## A304820.P2123629796072072385

`∑{d}[n+1, A008683(#)*A304779((n+1)/#)]`
-/

namespace A304820.P2123629796072072385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A304779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A304820.P2123629796072072385

/-! ## A304820.P9816874057616365114

`A005136(A304819(n+1)^4)`
-/

namespace A304820.P9816874057616365114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 (A304819 (n + 1) ^ 4).toNat

end

end A304820.P9816874057616365114

/-! ## A304820.P10406095497413645927

`A332761(A304819(n+1)^6)`
-/

namespace A304820.P10406095497413645927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332761 (A304819 (n + 1) ^ 6).toNat

end

end A304820.P10406095497413645927

/-! ## A304820.P10206968923971551287

`A213890(A304819(n+1)^8)`
-/

namespace A304820.P10206968923971551287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213890 (A304819 (n + 1) ^ 8).toNat

end

end A304820.P10206968923971551287

/-! ## A304820.P5148934967933745501

`A004427(A304819(n+1)^10)`
-/

namespace A304820.P5148934967933745501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004427 (A304819 (n + 1) ^ 10).toNat

end

end A304820.P5148934967933745501

/-! ## A304820.P12458326912306866762

`A076826(A304819(n+1)^10)`
-/

namespace A304820.P12458326912306866762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A304819 (n + 1) ^ 10).toNat

end

end A304820.P12458326912306866762

/-! ## A304820.P4048041937999569768

`A005136(A304819(n+1)²²)`
-/

namespace A304820.P4048041937999569768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005136 ((A304819 (n + 1) ^ 2) ^ 2).toNat

end

end A304820.P4048041937999569768

/-! ## A304820.P11157801340787011553

`A004525(A304819(n+1)^10)%3`
-/

namespace A304820.P11157801340787011553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A304819 (n + 1) ^ 10).toNat) 3

end

end A304820.P11157801340787011553

/-! ## A304820.P3848352016373874481

`A001222(A000346(A304819(n+1)²))`
-/

namespace A304820.P3848352016373874481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000346 (A304819 (n + 1) ^ 2).toNat).toNat

end

end A304820.P3848352016373874481

/-! ## A304820.P1951242065854584774

`A001222(A002315(A304819(n+1)²))`
-/

namespace A304820.P1951242065854584774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002315 (A304819 (n + 1) ^ 2).toNat).toNat

end

end A304820.P1951242065854584774

/-! ## A304820.P16375879901170594637

`A001876(A006516(A304819(n+1)²))`
-/

namespace A304820.P16375879901170594637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A006516 (A304819 (n + 1) ^ 2).toNat).toNat

end

end A304820.P16375879901170594637

/-! ## A304820.P13787913082020380692

`A001222(A083420(A304819(n+1)²))`
-/

namespace A304820.P13787913082020380692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A083420 (A304819 (n + 1) ^ 2).toNat).toNat

end

end A304820.P13787913082020380692

/-! ## A304820.P8580517447975386995

`A054740(A083318(A304819(n+1)²))`
-/

namespace A304820.P8580517447975386995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054740 (A083318 (A304819 (n + 1) ^ 2).toNat).toNat

end

end A304820.P8580517447975386995

/-! ## A304820.P5118393121731203453

`A099362(A056106(A304819(n+1)²))`
-/

namespace A304820.P5118393121731203453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099362 (A056106 (A304819 (n + 1) ^ 2).toNat).toNat

end

end A304820.P5118393121731203453

/-!
# A304821: For n > 3, a(n) = a(n-3) + lcm(a(n-3), n-2) with a(1)=6, a(2)=6, a(3)=6.

The programs for A304821, the canonical program `A304821.P11406417649131508940` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304821 has offset 1).

The definition of A304821 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-3)+lcm(a(n-3), n-1)` (program `A304821.P11406417649131508940`, by `A304821.P11406417649131508940.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304821.P11406417649131508940

`a(n-3)+lcm(a(n-3), n-1)` with `a(0)=6, a(1)=6, a(2)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304821

/-- `a(n-3)+lcm(a(n-3), n-1)` -/
def P11406417649131508940.Spec : Prop :=
  ∀ n, (P11406417649131508940.a n : ℤ) = A304821 (n + 1)

theorem P11406417649131508940.correct : P11406417649131508940.Spec := by
  intro n
  simp only [A304821, Nat.add_sub_cancel]

end A304821

/-!
# A304822: a(n) = A304821(n+3)/A304821(n) - 1.

The programs for A304822, the canonical program `A304822.P17716916088307184015` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304822 has offset 1).

The definition of A304822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304822.P17716916088307184015

`A304821(n+4)/A304821(n+1)-1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A304822

/-- `A304821(n+4)/A304821(n+1)-1` -/
def P17716916088307184015.Spec : Prop :=
  ∀ n, P17716916088307184015.a n = (A304822 (n + 1) : ℚ)

end A304822

/-! ## A304822.P1733513183738471486

`A332881((n+2)*A003586(A001615(n+2)))`
-/

namespace A304822.P1733513183738471486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332881 ((n + 2 : ℤ) * A003586 (A001615 (n + 2)).toNat).toNat

end

end A304822.P1733513183738471486

namespace A304822

/-- `A332881((n+2)*A003586(A001615(n+2)))` -/
def P1733513183738471486.Spec : Prop :=
  ∀ n, P1733513183738471486.a n = A304822 (n + 1)

end A304822

/-! ## A304822.P18302297416347941312

`A093411(2*(n+2))*A316789(A018783(3*n+4))`
-/

namespace A304822.P18302297416347941312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * (n + 2)) * A316789 (A018783 (3 * n + 4)).toNat

end

end A304822.P18302297416347941312

namespace A304822

/-- `A093411(2*(n+2))*A316789(A018783(3*n+4))` -/
def P18302297416347941312.Spec : Prop :=
  ∀ n, P18302297416347941312.a n = A304822 (n + 1)

end A304822

/-! ## A304822.P7314384661281365302

`A093411(2*(n+2))*A316789(A027691(5*n+4))`
-/

namespace A304822.P7314384661281365302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * (n + 2)) * A316789 (A027691 (5 * n + 4)).toNat

end

end A304822.P7314384661281365302

namespace A304822

/-- `A093411(2*(n+2))*A316789(A027691(5*n+4))` -/
def P7314384661281365302.Spec : Prop :=
  ∀ n, P7314384661281365302.a n = A304822 (n + 1)

end A304822

/-! ## A304822.P16660719760715245777

`A093411(2*(n+2))+A020987(A094373(n))`
-/

namespace A304822.P16660719760715245777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (2 * (n + 2)) + A020987 (A094373 n).toNat

end

end A304822.P16660719760715245777

namespace A304822

/-- `A093411(2*(n+2))+A020987(A094373(n))` -/
def P16660719760715245777.Spec : Prop :=
  ∀ n, P16660719760715245777.a n = A304822 (n + 1)

end A304822

/-!
# A304823: Convolution of number of partitions into distinct parts and central binomial coefficients.

The programs for A304823, there is no canonical definition to state claims against.
-/

/-! ## A304823.P16744695171478005340

`A002265(A102206(n)+A052940(n))`
-/

namespace A304823.P16744695171478005340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A102206 n + A052940 n).toNat

end

end A304823.P16744695171478005340

/-! ## A304823.P12567670428391080261

`A002265(A052940(n)-(A002265(n)-A102206(n)))`
-/

namespace A304823.P12567670428391080261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A052940 n - (A002265 n - A102206 n)).toNat

end

end A304823.P12567670428391080261

/-!
# A304824: Convolution of central binomial coefficients and partition numbers.

The programs for A304824, there is no canonical definition to state claims against.
-/

/-! ## A304824.P11978510034182053231

`A090618(A254030(n)-A000040(n+1))`
-/

namespace A304824.P11978510034182053231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090618 (A254030 n - A000040 (n + 1)).toNat

end

end A304824.P11978510034182053231

/-! ## A304824.P10337839517142642171

`A247832(A077587(n))`
-/

namespace A304824.P10337839517142642171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A077587 n).toNat

end

end A304824.P10337839517142642171

/-!
# A304825: Sum of binomial(Y(2,p), 2) over the partitions p of n, where Y(2,p) is the number of part sizes with multiplicity 2 or greater in p.

The programs for A304825, there is no canonical definition to state claims against.
-/

/-! ## A304825.P18257369578794086957

`(A301313(n+6)-A024788(n+6))/4`
-/

namespace A304825.P18257369578794086957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301313 (n + 6) - A024788 (n + 6) : ℚ) / 4

end

end A304825.P18257369578794086957

/-! ## A304825.P11980966938064614397

`A103650(n+2)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A304825.P11980966938064614397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A103650 (n + 2) - a (n - 2)

end

end A304825.P11980966938064614397

/-! ## A304825.P695161266680562874

`A024788(n+4)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A304825.P695161266680562874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A024788 (n + 4) + a (n - 2)

end

end A304825.P695161266680562874

/-! ## A304825.P5640121886998130889

`∑[A182714(n+4)]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A304825.P5640121886998130889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182714 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A304825.P5640121886998130889

/-! ## A304825.P12385823398762059462

`A004526(A302347(n+2)+A024786(n+2))`
-/

namespace A304825.P12385823398762059462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A302347 (n + 2) + A024786 (n + 2)).toNat

end

end A304825.P12385823398762059462

/-!
# A304826: a(n) = 32*7^n/21 - 8/3, n>=1.

The programs for A304826, the canonical program `A304826.P11001739712059129941` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304826 has offset 1).

The definition of A304826 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `32*7^(n+1)/21-8/3` (program `A304826.P15449722774049955169`, by `A304826.P15449722774049955169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304826.P11001739712059129941

`8*a(n-1)-7*a(n-2)` with `a(0)=8, a(1)=72`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304826

/-- `8*a(n-1)-7*a(n-2)` -/
def P11001739712059129941.Spec : Prop :=
  ∀ n, P11001739712059129941.a n = A304826 (n + 1)

theorem P11001739712059129941.correct : P11001739712059129941.Spec := by
  intro n
  simp only [A304826, Nat.add_sub_cancel]

end A304826

/-! ## A304826.P15449722774049955169

`32*7^(n+1)/21-8/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304826.P15449722774049955169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (32 * 7 ^ (n + 1) : ℚ) / 21 - (8 : ℚ) / 3

end

end A304826.P15449722774049955169

namespace A304826

/-- `32*7^(n+1)/21-8/3` -/
def P15449722774049955169.Spec : Prop :=
  ∀ n, P15449722774049955169.a n = (A304826 (n + 1) : ℚ)

theorem P15449722774049955169.correct : P15449722774049955169.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A304826, Nat.add_sub_cancel, A304826.P15449722774049955169.a, A304826.P11001739712059129941.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A304826, Nat.add_sub_cancel, A304826.P15449722774049955169.a, A304826.P11001739712059129941.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304826

/-! ## A304826.P11038296592106876314

`ogf((8+8x)/(1-8x+7x^2))`
-/

namespace A304826.P11038296592106876314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 8] [1, -8, 7] n

end

end A304826.P11038296592106876314

namespace A304826

/-- `ogf((8+8x)/(1-8x+7x^2))` -/
def P11038296592106876314.Spec : Prop :=
  ∀ n, P11038296592106876314.a n = A304826 (n + 1)

end A304826

/-! ## A304826.P16377540821074473364

`∑[7*a(n-1)]` with `a(0)=8, a(1)=64`
-/

namespace A304826.P16377540821074473364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8, 64] fun n f1 =>
  7 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304826.P16377540821074473364

namespace A304826

/-- `∑[7*a(n-1)]` -/
def P16377540821074473364.Spec : Prop :=
  ∀ n, (P16377540821074473364.a n : ℤ) = A304826 (n + 1)

end A304826

/-! ## A304826.P17062591973891313651

`8*A238275(n)`
-/

namespace A304826.P17062591973891313651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A238275 n

end

end A304826.P17062591973891313651

namespace A304826

/-- `8*A238275(n)` -/
def P17062591973891313651.Spec : Prop :=
  ∀ n, P17062591973891313651.a n = A304826 (n + 1)

end A304826

/-! ## A304826.P7187165437991516934

`∑[A223564(n+1)]`
-/

namespace A304826.P7187165437991516934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223564 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304826.P7187165437991516934

namespace A304826

/-- `∑[A223564(n+1)]` -/
def P7187165437991516934.Spec : Prop :=
  ∀ n, P7187165437991516934.a n = A304826 (n + 1)

end A304826

/-! ## A304826.P14087087016292776040

`∑[8*A003950(n)]`
-/

namespace A304826.P14087087016292776040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A003950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304826.P14087087016292776040

namespace A304826

/-- `∑[8*A003950(n)]` -/
def P14087087016292776040.Spec : Prop :=
  ∀ n, P14087087016292776040.a n = A304826 (n + 1)

end A304826

/-! ## A304826.P2326929016100888350

`4*(A199484(n)-1)`
-/

namespace A304826.P2326929016100888350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A199484 n - 1)

end

end A304826.P2326929016100888350

namespace A304826

/-- `4*(A199484(n)-1)` -/
def P2326929016100888350.Spec : Prop :=
  ∀ n, P2326929016100888350.a n = A304826 (n + 1)

end A304826

/-!
# A304827: a(n) = 52*7^n/21 - 16/3 (n>=1).

The programs for A304827, the canonical program `A304827.P12607279955095189735` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304827 has offset 1).

The definition of A304827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `52*7^(n+1)/21-16/3` (program `A304827.P8133106193354180256`, by `A304827.P8133106193354180256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304827.P12607279955095189735

`8*a(n-1)-7*a(n-2)` with `a(0)=12, a(1)=116`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304827

/-- `8*a(n-1)-7*a(n-2)` -/
def P12607279955095189735.Spec : Prop :=
  ∀ n, P12607279955095189735.a n = A304827 (n + 1)

theorem P12607279955095189735.correct : P12607279955095189735.Spec := by
  intro n
  simp only [A304827, Nat.add_sub_cancel]

end A304827

/-! ## A304827.P8133106193354180256

`52*7^(n+1)/21-16/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304827.P8133106193354180256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (52 * 7 ^ (n + 1) : ℚ) / 21 - (16 : ℚ) / 3

end

end A304827.P8133106193354180256

namespace A304827

/-- `52*7^(n+1)/21-16/3` -/
def P8133106193354180256.Spec : Prop :=
  ∀ n, P8133106193354180256.a n = (A304827 (n + 1) : ℚ)

theorem P8133106193354180256.correct : P8133106193354180256.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A304827, Nat.add_sub_cancel, A304827.P8133106193354180256.a, A304827.P12607279955095189735.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A304827, Nat.add_sub_cancel, A304827.P8133106193354180256.a, A304827.P12607279955095189735.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304827

/-! ## A304827.P12291165516007411072

`ogf((12+20x)/(1-8x+7x^2))`
-/

namespace A304827.P12291165516007411072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 20] [1, -8, 7] n

end

end A304827.P12291165516007411072

namespace A304827

/-- `ogf((12+20x)/(1-8x+7x^2))` -/
def P12291165516007411072.Spec : Prop :=
  ∀ n, P12291165516007411072.a n = A304827 (n + 1)

end A304827

/-! ## A304827.P1109490314118454217

`4*(A233326(n)+A109808(n+1))`
-/

namespace A304827.P1109490314118454217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A233326 n + A109808 (n + 1))

end

end A304827.P1109490314118454217

namespace A304827

/-- `4*(A233326(n)+A109808(n+1))` -/
def P1109490314118454217.Spec : Prop :=
  ∀ n, P1109490314118454217.a n = A304827 (n + 1)

end A304827

/-! ## A304827.P46697033726104868

`xor(13*A238275(n), A000035(2*n+1))`
-/

namespace A304827.P46697033726104868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (13 * A238275 n) (A000035 (2 * n + 1))

end

end A304827.P46697033726104868

namespace A304827

/-- `xor(13*A238275(n), A000035(2*n+1))` -/
def P46697033726104868.Spec : Prop :=
  ∀ n, P46697033726104868.a n = A304827 (n + 1)

end A304827

/-! ## A304827.P17170979613186739977

`xor(13*A238275(n), A005171(2*(n+2)))`
-/

namespace A304827.P17170979613186739977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (13 * A238275 n) (A005171 (2 * (n + 2)))

end

end A304827.P17170979613186739977

namespace A304827

/-- `xor(13*A238275(n), A005171(2*(n+2)))` -/
def P17170979613186739977.Spec : Prop :=
  ∀ n, P17170979613186739977.a n = A304827 (n + 1)

end A304827

/-! ## A304827.P8912145834256742231

`xor(13*A238275(n), A001222(A023503(n+2)))`
-/

namespace A304827.P8912145834256742231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (13 * A238275 n) (A001222 (A023503 (n + 2)).toNat)

end

end A304827.P8912145834256742231

namespace A304827

/-- `xor(13*A238275(n), A001222(A023503(n+2)))` -/
def P8912145834256742231.Spec : Prop :=
  ∀ n, P8912145834256742231.a n = A304827 (n + 1)

end A304827

/-!
# A304828: a(n) = 344*7^n/21 - 128/3 (n>=1).

The programs for A304828, the canonical program `A304828.P12382317451376425366` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304828 has offset 1).

The definition of A304828 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `344*7^(n+1)/21-128/3` (program `A304828.P14462635185375302272`, by `A304828.P14462635185375302272.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304828.P6754631256125110655

`(344*7^n-128)*1/3`
-/

namespace A304828.P6754631256125110655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((344 * 7 ^ n : ℤ) - 128 : ℚ) * ((1 : ℚ) / 3)

end

end A304828.P6754631256125110655

namespace A304828

/-- `(344*7^n-128)*1/3` -/
def P6754631256125110655.Spec : Prop :=
  ∀ n, P6754631256125110655.a n = (A304828 (n + 1) : ℚ)

theorem P6754631256125110655.correct : P6754631256125110655.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A304828, Nat.add_sub_cancel, A304828.P6754631256125110655.a, A304828.P12382317451376425366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A304828, Nat.add_sub_cancel, A304828.P6754631256125110655.a, A304828.P12382317451376425366.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304828

/-! ## A304828.P12382317451376425366

`8*a(n-1)-7*a(n-2)` with `a(0)=72, a(1)=760`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304828

/-- `8*a(n-1)-7*a(n-2)` -/
def P12382317451376425366.Spec : Prop :=
  ∀ n, P12382317451376425366.a n = A304828 (n + 1)

theorem P12382317451376425366.correct : P12382317451376425366.Spec := by
  intro n
  simp only [A304828, Nat.add_sub_cancel]

end A304828

/-! ## A304828.P14462635185375302272

`344*7^(n+1)/21-128/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304828.P14462635185375302272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (344 * 7 ^ (n + 1) : ℚ) / 21 - (128 : ℚ) / 3

end

end A304828.P14462635185375302272

namespace A304828

/-- `344*7^(n+1)/21-128/3` -/
def P14462635185375302272.Spec : Prop :=
  ∀ n, P14462635185375302272.a n = (A304828 (n + 1) : ℚ)

theorem P14462635185375302272.correct : P14462635185375302272.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A304828, Nat.add_sub_cancel, A304828.P14462635185375302272.a, A304828.P12382317451376425366.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A304828, Nat.add_sub_cancel, A304828.P14462635185375302272.a, A304828.P12382317451376425366.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304828

/-!
# A304829: a(n) = 4024*7^n/147 - 256/3 (n >= 2).

The programs for A304829, the canonical program `A304829.P1579615906928826581` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304829 has offset 2).

The definition of A304829 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A304829.P1579615906928826581

`8/3*(503*7^n-32)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304829

/-- `8/3*(503*7^n-32)` -/
def P1579615906928826581.Spec : Prop :=
  ∀ n, P1579615906928826581.a n = (A304829 (n + 2) : ℚ)

end A304829

/-!
# A304830: a(n) = 102*2^n - 108 (n>=1).

The programs for A304830, the canonical program `A304830.P13450297040326825984` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304830 has offset 1).

The definition of A304830 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `102*2^(n+1)-108` (program `A304830.P13450297040326825984`, by `A304830.P13450297040326825984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304830.P13450297040326825984

`102*2^(n+1)-108`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304830

/-- `102*2^(n+1)-108` -/
def P13450297040326825984.Spec : Prop :=
  ∀ n, P13450297040326825984.a n = A304830 (n + 1)

theorem P13450297040326825984.correct : P13450297040326825984.Spec := by
  intro n
  simp only [A304830, Nat.add_sub_cancel]

end A304830

/-! ## A304830.P7335797165751693783

`2*(a(n-1)+54)` with `a(0)=96`
-/

namespace A304830.P7335797165751693783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [96] fun n a =>
  2 * (a (n - 1) + 54)

end

end A304830.P7335797165751693783

namespace A304830

/-- `2*(a(n-1)+54)` -/
def P7335797165751693783.Spec : Prop :=
  ∀ n, (P7335797165751693783.a n : ℤ) = A304830 (n + 1)

theorem P7335797165751693783.correct : P7335797165751693783.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A304830, Nat.add_sub_cancel, A304830.P7335797165751693783.a, A304830.P13450297040326825984.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A304830, Nat.add_sub_cancel, A304830.P7335797165751693783.a, A304830.P13450297040326825984.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A304830

/-! ## A304830.P9842474420051739917

`12*(A198275(n)-8)`
-/

namespace A304830.P9842474420051739917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A198275 n - 8)

end

end A304830.P9842474420051739917

namespace A304830

/-- `12*(A198275(n)-8)` -/
def P9842474420051739917.Spec : Prop :=
  ∀ n, P9842474420051739917.a n = A304830 (n + 1)

theorem P9842474420051739917.correct : P9842474420051739917.Spec := by
  intro n
  simp only [A304830, Nat.add_sub_cancel, A304830.P9842474420051739917.a, A304830.P13450297040326825984.a, A198275, A198275.P16496776346649056810.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304830

/-! ## A304830.P16563109152138178155

`12*(A110287(n)-9)`
-/

namespace A304830.P16563109152138178155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A110287 n - 9)

end

end A304830.P16563109152138178155

namespace A304830

/-- `12*(A110287(n)-9)` -/
def P16563109152138178155.Spec : Prop :=
  ∀ n, P16563109152138178155.a n = A304830 (n + 1)

theorem P16563109152138178155.correct : P16563109152138178155.Spec := by
  intro n
  simp only [A304830, Nat.add_sub_cancel, A304830.P16563109152138178155.a, A304830.P13450297040326825984.a, A110287, A110287.P14797459151793831721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304830

/-! ## A304830.P1983698266639621869

`abs(12-A304377(n+1))`
-/

namespace A304830.P1983698266639621869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |12 - A304377 (n + 1)|

end

end A304830.P1983698266639621869

namespace A304830

/-- `abs(12-A304377(n+1))` -/
def P1983698266639621869.Spec : Prop :=
  ∀ n, P1983698266639621869.a n = A304830 (n + 1)

end A304830

/-! ## A304830.P5140708705703101402

`12*(A159741(n+1)+A000225(n))`
-/

namespace A304830.P5140708705703101402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A159741 (n + 1) + A000225 n)

end

end A304830.P5140708705703101402

namespace A304830

/-- `12*(A159741(n+1)+A000225(n))` -/
def P5140708705703101402.Spec : Prop :=
  ∀ n, P5140708705703101402.a n = A304830 (n + 1)

theorem P5140708705703101402.correct : P5140708705703101402.Spec := by
  intro n
  simp only [A304830, Nat.add_sub_cancel, A304830.P5140708705703101402.a, A304830.P13450297040326825984.a, A000225, A000225.P6535533121115206393.a, A159741, A159741.P12178551765370653186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304830

/-!
# A304831: a(n) = 123*2^n - 135.

The programs for A304831, the canonical program `A304831.P15050182671750320375` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304831 has offset 1).

The definition of A304831 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `123*2^(n+1)-135` (program `A304831.P15050182671750320375`, by `A304831.P15050182671750320375.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304831.P15050182671750320375

`123*2^(n+1)-135`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304831

/-- `123*2^(n+1)-135` -/
def P15050182671750320375.Spec : Prop :=
  ∀ n, P15050182671750320375.a n = A304831 (n + 1)

theorem P15050182671750320375.correct : P15050182671750320375.Spec := by
  intro n
  simp only [A304831, Nat.add_sub_cancel]

end A304831

/-! ## A304831.P3184056145578779839

`3*(A305157(n)+9)/2`
-/

namespace A304831.P3184056145578779839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((A305157 n + 9 : ℚ) / 2)

end

end A304831.P3184056145578779839

namespace A304831

/-- `3*(A305157(n)+9)/2` -/
def P3184056145578779839.Spec : Prop :=
  ∀ n, P3184056145578779839.a n = (A304831 (n + 1) : ℚ)

theorem P3184056145578779839.correct : P3184056145578779839.Spec := by
  intro n
  simp only [A304831, Nat.add_sub_cancel, A304831.P3184056145578779839.a, A304831.P15050182671750320375.a, A305157, A305157.P2673244396792364241.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A304831

/-!
# A304832: a(n) = n^2 + 25*n - 34 (n >=2).

The programs for A304832, the canonical program `A304832.P3143657195389848608` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304832 has offset 2).

The definition of A304832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)²+25*(n+2)-34` (program `A304832.P3143657195389848608`, by `A304832.P3143657195389848608.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304832.P16295851637313966294

`(n+2)*(n+27)-34`
-/

namespace A304832.P16295851637313966294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (n + 27) : ℤ) - 34

end

end A304832.P16295851637313966294

namespace A304832

/-- `(n+2)*(n+27)-34` -/
def P16295851637313966294.Spec : Prop :=
  ∀ n, P16295851637313966294.a n = A304832 (n + 2)

theorem P16295851637313966294.correct : P16295851637313966294.Spec := by
  intro n
  simp only [A304832, Nat.add_sub_cancel, A304832.P16295851637313966294.a, A304832.P3143657195389848608.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A304832

/-! ## A304832.P3143657195389848608

`(n+2)²+25*(n+2)-34`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304832

/-- `(n+2)²+25*(n+2)-34` -/
def P3143657195389848608.Spec : Prop :=
  ∀ n, P3143657195389848608.a n = A304832 (n + 2)

theorem P3143657195389848608.correct : P3143657195389848608.Spec := by
  intro n
  simp only [A304832, Nat.add_sub_cancel]

end A304832

/-! ## A304832.P15322773838315073180

`∑[a(n-1)+2]` with `a(0)=20, a(1)=30`
-/

namespace A304832.P15322773838315073180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [20, 30] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304832.P15322773838315073180

namespace A304832

/-- `∑[a(n-1)+2]` -/
def P15322773838315073180.Spec : Prop :=
  ∀ n, (P15322773838315073180.a n : ℤ) = A304832 (n + 2)

end A304832

/-! ## A304832.P3143745870945958423

`2*(A132757(n)+10)`
-/

namespace A304832.P3143745870945958423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A132757 n + 10)

end

end A304832.P3143745870945958423

namespace A304832

/-- `2*(A132757(n)+10)` -/
def P3143745870945958423.Spec : Prop :=
  ∀ n, P3143745870945958423.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P542570891415343552

`abs(A008865(n+1)+A124388(n)+3)`
-/

namespace A304832.P542570891415343552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008865 (n + 1) + (A124388 n + 3)|

end

end A304832.P542570891415343552

namespace A304832

/-- `abs(A008865(n+1)+A124388(n)+3)` -/
def P542570891415343552.Spec : Prop :=
  ∀ n, P542570891415343552.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P4366779925885784177

`∑[A103517(A001281(a(n-1)))]` with `a(0)=20, a(1)=30`
-/

namespace A304832.P4366779925885784177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [20, 30] fun n f1 =>
  A103517 (A001281 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304832.P4366779925885784177

namespace A304832

/-- `∑[A103517(A001281(a(n-1)))]` -/
def P4366779925885784177.Spec : Prop :=
  ∀ n, P4366779925885784177.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P10572812369594318846

`record[A132769(A064839(n+1))-8]`
-/

namespace A304832.P10572812369594318846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132769 (A064839 (n + 1)).toNat - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304832.P10572812369594318846

namespace A304832

/-- `record[A132769(A064839(n+1))-8]` -/
def P10572812369594318846.Spec : Prop :=
  ∀ n, P10572812369594318846.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P4653131650913134783

`A000027(A132771(n)+20)`
-/

namespace A304832.P4653131650913134783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A132771 n + 20).toNat

end

end A304832.P4653131650913134783

namespace A304832

/-- `A000027(A132771(n)+20)` -/
def P4653131650913134783.Spec : Prop :=
  ∀ n, P4653131650913134783.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P15734766068867452455

`A000027(A124388(n)+record[(1-n)²+1])`
-/

namespace A304832.P15734766068867452455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A124388 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A304832.P15734766068867452455

namespace A304832

/-- `A000027(A124388(n)+record[(1-n)²+1])` -/
def P15734766068867452455.Spec : Prop :=
  ∀ n, P15734766068867452455.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P1230923347848959179

`A005843(∑[n+14]-4)`
-/

namespace A304832.P1230923347848959179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j - 4)

end

end A304832.P1230923347848959179

namespace A304832

/-- `A005843(∑[n+14]-4)` -/
def P1230923347848959179.Spec : Prop :=
  ∀ n, P1230923347848959179.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P5000191500791770651

`A004275(A056126(n)+A016969(n+1))`
-/

namespace A304832.P5000191500791770651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A056126 n + A016969 (n + 1)).toNat

end

end A304832.P5000191500791770651

namespace A304832

/-- `A004275(A056126(n)+A016969(n+1))` -/
def P5000191500791770651.Spec : Prop :=
  ∀ n, P5000191500791770651.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P14938977794775932322

`A004275(A027379(n+2)+A017317(n))`
-/

namespace A304832.P14938977794775932322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A027379 (n + 2) + A017317 n).toNat

end

end A304832.P14938977794775932322

namespace A304832

/-- `A004275(A027379(n+2)+A017317(n))` -/
def P14938977794775932322.Spec : Prop :=
  ∀ n, P14938977794775932322.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P7123615109208813860

`A004277(A008593(n)+A055999(n)+10)`
-/

namespace A304832.P7123615109208813860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A008593 n + (A055999 n + 10)).toNat

end

end A304832.P7123615109208813860

namespace A304832

/-- `A004277(A008593(n)+A055999(n)+10)` -/
def P7123615109208813860.Spec : Prop :=
  ∀ n, P7123615109208813860.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P5321631184259397768

`A103517(A017497(n)+A055998(n)+n)`
-/

namespace A304832.P5321631184259397768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A017497 n + (A055998 n + (n : ℤ))).toNat

end

end A304832.P5321631184259397768

namespace A304832

/-- `A103517(A017497(n)+A055998(n)+n)` -/
def P5321631184259397768.Spec : Prop :=
  ∀ n, P5321631184259397768.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P8372999165957333492

`A004275(A017317(n)+Δ[A034857(n+1)])`
-/

namespace A304832.P8372999165957333492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A017317 n + (f1 (n + 1) - f1 n)).toNat

end

end A304832.P8372999165957333492

namespace A304832

/-- `A004275(A017317(n)+Δ[A034857(n+1)])` -/
def P8372999165957333492.Spec : Prop :=
  ∀ n, P8372999165957333492.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P11251850317516259553

`A004277(A017497(n)+A034856(n+2)-3)`
-/

namespace A304832.P11251850317516259553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A017497 n + (A034856 (n + 2) - 3)).toNat

end

end A304832.P11251850317516259553

namespace A304832

/-- `A004277(A017497(n)+A034856(n+2)-3)` -/
def P11251850317516259553.Spec : Prop :=
  ∀ n, P11251850317516259553.a n = A304832 (n + 2)

end A304832

/-! ## A304832.P13941165875418345467

`A004277(A034856(n+1)+A017497(n)+n)`
-/

namespace A304832.P13941165875418345467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A034856 (n + 1) + (A017497 n + (n : ℤ))).toNat

end

end A304832.P13941165875418345467

namespace A304832

/-- `A004277(A034856(n+1)+A017497(n)+n)` -/
def P13941165875418345467.Spec : Prop :=
  ∀ n, P13941165875418345467.a n = A304832 (n + 2)

end A304832

/-!
# A304833: a(n) = 3*n^2 + 38*n - 76 (n>=2).

The programs for A304833, the canonical program `A304833.P13020382477736469114` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304833 has offset 2).

The definition of A304833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(n+2)²+38*(n+2)-76` (program `A304833.P13020382477736469114`, by `A304833.P13020382477736469114.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304833.P15658319647941885449

`(n+2)*(3*(n+2)+38)-76`
-/

namespace A304833.P15658319647941885449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) * (3 * (n + 2) + 38) : ℤ) - 76

end

end A304833.P15658319647941885449

namespace A304833

/-- `(n+2)*(3*(n+2)+38)-76` -/
def P15658319647941885449.Spec : Prop :=
  ∀ n, P15658319647941885449.a n = A304833 (n + 2)

theorem P15658319647941885449.correct : P15658319647941885449.Spec := by
  intro n
  simp only [A304833, Nat.add_sub_cancel, A304833.P15658319647941885449.a, A304833.P13020382477736469114.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A304833

/-! ## A304833.P13020382477736469114

`3*(n+2)²+38*(n+2)-76`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304833

/-- `3*(n+2)²+38*(n+2)-76` -/
def P13020382477736469114.Spec : Prop :=
  ∀ n, P13020382477736469114.a n = A304833 (n + 2)

theorem P13020382477736469114.correct : P13020382477736469114.Spec := by
  intro n
  simp only [A304833, Nat.add_sub_cancel]

end A304833

/-!
# A304834: a(n) = 36*n^2 - 8*n - 2 (n >=1).

The programs for A304834, the canonical program `A304834.P6300509215167465909` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304834 has offset 1).

The definition of A304834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²-8*(n+1)-2` (program `A304834.P6300509215167465909`, by `A304834.P6300509215167465909.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304834.P6300509215167465909

`36*(n+1)²-8*(n+1)-2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304834

/-- `36*(n+1)²-8*(n+1)-2` -/
def P6300509215167465909.Spec : Prop :=
  ∀ n, P6300509215167465909.a n = A304834 (n + 1)

theorem P6300509215167465909.correct : P6300509215167465909.Spec := by
  intro n
  simp only [A304834, Nat.add_sub_cancel]

end A304834

/-! ## A304834.P14642220327867710148

`lcm(2, abs((6*n+7)*(3*n+2)+1-n)-2)`
-/

namespace A304834.P14642220327867710148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (|((6 * n + 7) * (3 * n + 2) + 1 : ℤ) - (n : ℤ)| - 2)

end

end A304834.P14642220327867710148

namespace A304834

/-- `lcm(2, abs((6*n+7)*(3*n+2)+1-n)-2)` -/
def P14642220327867710148.Spec : Prop :=
  ∀ n, (P14642220327867710148.a n : ℤ) = A304834 (n + 1)

end A304834

/-! ## A304834.P2433711222590843462

`abs(8*n+4-A158462(n+1))`
-/

namespace A304834.P2433711222590843462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(8 * n + 4 : ℤ) - A158462 (n + 1)|

end

end A304834.P2433711222590843462

namespace A304834

/-- `abs(8*n+4-A158462(n+1))` -/
def P2433711222590843462.Spec : Prop :=
  ∀ n, P2433711222590843462.a n = A304834 (n + 1)

end A304834

/-! ## A304834.P532093742596213320

`ceil(A017641(n)+4/3*A304503(n))`
-/

namespace A304834.P532093742596213320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017641 n : ℚ) + (4 : ℚ) / 3 * (A304503 n : ℚ)⌉

end

end A304834.P532093742596213320

namespace A304834

/-- `ceil(A017641(n)+4/3*A304503(n))` -/
def P532093742596213320.Spec : Prop :=
  ∀ n, P532093742596213320.a n = A304834 (n + 1)

end A304834

/-! ## A304834.P7449707133576161704

`ceil(A017641(n)+4/5*A304507(n))`
-/

namespace A304834.P7449707133576161704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017641 n : ℚ) + (4 : ℚ) / 5 * (A304507 n : ℚ)⌉

end

end A304834.P7449707133576161704

namespace A304834

/-- `ceil(A017641(n)+4/5*A304507(n))` -/
def P7449707133576161704.Spec : Prop :=
  ∀ n, P7449707133576161704.a n = A304834 (n + 1)

end A304834

/-! ## A304834.P13995414008062614216

`Δ[A191593(n)-(n+3)²]`
-/

namespace A304834.P13995414008062614216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191593 n - ((n + 3) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304834.P13995414008062614216

namespace A304834

/-- `Δ[A191593(n)-(n+3)²]` -/
def P13995414008062614216.Spec : Prop :=
  ∀ n, P13995414008062614216.a n = A304834 (n + 1)

theorem P13995414008062614216.correct : P13995414008062614216.Spec := by
  intro n
  simp only [A304834, Nat.add_sub_cancel, A304834.P13995414008062614216.f1, A304834.P13995414008062614216.a, A304834.P6300509215167465909.a, A191593, A191593.P1404647331602006259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304834

/-! ## A304834.P5408801763678193046

`Δ[n²*Δ[A239325(n)]]`
-/

namespace A304834.P5408801763678193046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304834.P5408801763678193046

namespace A304834

/-- `Δ[n²*Δ[A239325(n)]]` -/
def P5408801763678193046.Spec : Prop :=
  ∀ n, P5408801763678193046.a n = A304834 (n + 1)

theorem P5408801763678193046.correct : P5408801763678193046.Spec := by
  intro n
  simp only [A304834, Nat.add_sub_cancel, A304834.P5408801763678193046.f2, A304834.P5408801763678193046.f1, A304834.P5408801763678193046.a, A304834.P6300509215167465909.a, A239325, A239325.P6773887657320007265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304834

/-! ## A304834.P1849154931334827248

`Δ[n²*A017545(n+1)]`
-/

namespace A304834.P1849154931334827248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A017545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304834.P1849154931334827248

namespace A304834

/-- `Δ[n²*A017545(n+1)]` -/
def P1849154931334827248.Spec : Prop :=
  ∀ n, P1849154931334827248.a n = A304834 (n + 1)

theorem P1849154931334827248.correct : P1849154931334827248.Spec := by
  intro n
  simp only [A304834, Nat.add_sub_cancel, A304834.P1849154931334827248.f1, A304834.P1849154931334827248.a, A304834.P6300509215167465909.a, A017545, A017545.P14965093399951293214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304834

/-! ## A304834.P223276118758445356

`2*(A081271(2*n+1)-n)`
-/

namespace A304834.P223276118758445356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081271 (2 * n + 1) - (n : ℤ))

end

end A304834.P223276118758445356

namespace A304834

/-- `2*(A081271(2*n+1)-n)` -/
def P223276118758445356.Spec : Prop :=
  ∀ n, P223276118758445356.a n = A304834 (n + 1)

end A304834

/-! ## A304834.P6954874662420193435

`Δ[A005920(2*n)-(6*n+3)]`
-/

namespace A304834.P6954874662420193435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005920 (2 * n) - (6 * n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304834.P6954874662420193435

namespace A304834

/-- `Δ[A005920(2*n)-(6*n+3)]` -/
def P6954874662420193435.Spec : Prop :=
  ∀ n, P6954874662420193435.a n = A304834 (n + 1)

end A304834

/-! ## A304834.P9498512935968050791

`2*(A064226(2*n+1)+n-1)`
-/

namespace A304834.P9498512935968050791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A064226 (2 * n + 1) + ((n : ℤ) - 1))

end

end A304834.P9498512935968050791

namespace A304834

/-- `2*(A064226(2*n+1)+n-1)` -/
def P9498512935968050791.Spec : Prop :=
  ∀ n, P9498512935968050791.a n = A304834 (n + 1)

end A304834

/-! ## A304834.P663996475595141268

`Δ[2*n*A140090(2*n)]`
-/

namespace A304834.P663996475595141268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A140090 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304834.P663996475595141268

namespace A304834

/-- `Δ[2*n*A140090(2*n)]` -/
def P663996475595141268.Spec : Prop :=
  ∀ n, P663996475595141268.a n = A304834 (n + 1)

end A304834

/-! ## A304834.P18139735352062761969

`A000027(A016813(n)+A016969(n)²)`
-/

namespace A304834.P18139735352062761969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A016813 n + A016969 n ^ 2).toNat

end

end A304834.P18139735352062761969

namespace A304834

/-- `A000027(A016813(n)+A016969(n)²)` -/
def P18139735352062761969.Spec : Prop :=
  ∀ n, P18139735352062761969.a n = A304834 (n + 1)

end A304834

/-!
# A304835: a(n) = 108*n^2 - 104*n + 20 (n>=1).

The programs for A304835, the canonical program `A304835.P5401091628267041057` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304835 has offset 1).

The definition of A304835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `108*(n+1)²-104*(n+1)+20` (program `A304835.P5401091628267041057`, by `A304835.P5401091628267041057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304835.P9403703866396430353

`20-104*(n+1)+108*(n+1)²`
-/

namespace A304835.P9403703866396430353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  20 - (104 * (n + 1) : ℤ) + (108 * (n + 1) ^ 2 : ℤ)

end

end A304835.P9403703866396430353

namespace A304835

/-- `20-104*(n+1)+108*(n+1)²` -/
def P9403703866396430353.Spec : Prop :=
  ∀ n, P9403703866396430353.a n = A304835 (n + 1)

theorem P9403703866396430353.correct : P9403703866396430353.Spec := by
  intro n
  simp only [A304835, Nat.add_sub_cancel, A304835.P9403703866396430353.a, A304835.P5401091628267041057.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A304835

/-! ## A304835.P5401091628267041057

`108*(n+1)²-104*(n+1)+20`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304835

/-- `108*(n+1)²-104*(n+1)+20` -/
def P5401091628267041057.Spec : Prop :=
  ∀ n, P5401091628267041057.a n = A304835 (n + 1)

theorem P5401091628267041057.correct : P5401091628267041057.Spec := by
  intro n
  simp only [A304835, Nat.add_sub_cancel]

end A304835

/-! ## A304835.P13157935644547463331

`4*A024204(9*(n+1)-5)`
-/

namespace A304835.P13157935644547463331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A024204 (9 * (n + 1) - 5)

end

end A304835.P13157935644547463331

namespace A304835

/-- `4*A024204(9*(n+1)-5)` -/
def P13157935644547463331.Spec : Prop :=
  ∀ n, P13157935644547463331.a n = A304835 (n + 1)

end A304835

/-! ## A304835.P9723490540814387713

`4*(3*A001504(n)+n)`
-/

namespace A304835.P9723490540814387713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (3 * A001504 n + (n : ℤ))

end

end A304835.P9723490540814387713

namespace A304835

/-- `4*(3*A001504(n)+n)` -/
def P9723490540814387713.Spec : Prop :=
  ∀ n, P9723490540814387713.a n = A304835 (n + 1)

theorem P9723490540814387713.correct : P9723490540814387713.Spec := by
  intro n
  simp only [A304835, Nat.add_sub_cancel, A304835.P9723490540814387713.a, A304835.P5401091628267041057.a, A001504, A001504.P13639601878872911563.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304835

/-! ## A304835.P10658189388890493989

`4*(6*A060544(n+1)+n)`
-/

namespace A304835.P10658189388890493989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (6 * A060544 (n + 1) + (n : ℤ))

end

end A304835.P10658189388890493989

namespace A304835

/-- `4*(6*A060544(n+1)+n)` -/
def P10658189388890493989.Spec : Prop :=
  ∀ n, P10658189388890493989.a n = A304835 (n + 1)

end A304835

/-! ## A304835.P2989606253834230009

`2*(A195025(2*n+1)-A001844(n+1))`
-/

namespace A304835.P2989606253834230009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A195025 (2 * n + 1) - A001844 (n + 1))

end

end A304835.P2989606253834230009

namespace A304835

/-- `2*(A195025(2*n+1)-A001844(n+1))` -/
def P2989606253834230009.Spec : Prop :=
  ∀ n, P2989606253834230009.a n = A304835 (n + 1)

theorem P2989606253834230009.correct : P2989606253834230009.Spec := by
  intro n
  simp only [A304835, Nat.add_sub_cancel, A304835.P2989606253834230009.a, A304835.P5401091628267041057.a, A001844, A001844.P5037395199076350534.a, A195025, A195025.P11785065564624553900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304835

/-!
# A304836: a(n) = 27*n^2 - 51*n + 24, n>=1.

The programs for A304836, the canonical program `A304836.P466003782404073489` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304836 has offset 1).

The definition of A304836 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*(n+1)²-51*(n+1)+24` (program `A304836.P466003782404073489`, by `A304836.P466003782404073489.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304836.P388863445510432352

`3*n*(9*(n+1)-8)`
-/

namespace A304836.P388863445510432352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) * ((9 * (n + 1) : ℤ) - 8)

end

end A304836.P388863445510432352

namespace A304836

/-- `3*n*(9*(n+1)-8)` -/
def P388863445510432352.Spec : Prop :=
  ∀ n, P388863445510432352.a n = A304836 (n + 1)

theorem P388863445510432352.correct : P388863445510432352.Spec := by
  intro n
  simp only [A304836, Nat.add_sub_cancel, A304836.P388863445510432352.a, A304836.P466003782404073489.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A304836

/-! ## A304836.P466003782404073489

`27*(n+1)²-51*(n+1)+24`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304836

/-- `27*(n+1)²-51*(n+1)+24` -/
def P466003782404073489.Spec : Prop :=
  ∀ n, P466003782404073489.a n = A304836 (n + 1)

theorem P466003782404073489.correct : P466003782404073489.Spec := by
  intro n
  simp only [A304836, Nat.add_sub_cancel]

end A304836

/-! ## A304836.P2484729851876508661

`A277990(n)/2`
-/

namespace A304836.P2484729851876508661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277990 n : ℚ) / 2

end

end A304836.P2484729851876508661

namespace A304836

/-- `A277990(n)/2` -/
def P2484729851876508661.Spec : Prop :=
  ∀ n, P2484729851876508661.a n = (A304836 (n + 1) : ℚ)

theorem P2484729851876508661.correct : P2484729851876508661.Spec := by
  intro n
  simp only [A304836, Nat.add_sub_cancel, A304836.P2484729851876508661.a, A304836.P466003782404073489.a, A277990, A277990.P6687017974836704064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304836

/-! ## A304836.P1472488523496037111

`lcm(A008585(n), A017173(n))`
-/

namespace A304836.P1472488523496037111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008585 n) (A017173 n)

end

end A304836.P1472488523496037111

namespace A304836

/-- `lcm(A008585(n), A017173(n))` -/
def P1472488523496037111.Spec : Prop :=
  ∀ n, (P1472488523496037111.a n : ℤ) = A304836 (n + 1)

end A304836

/-! ## A304836.P10828197141640511887

`A049451(3*n)`
-/

namespace A304836.P10828197141640511887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049451 (3 * n)

end

end A304836.P10828197141640511887

namespace A304836

/-- `A049451(3*n)` -/
def P10828197141640511887.Spec : Prop :=
  ∀ n, P10828197141640511887.a n = A304836 (n + 1)

theorem P10828197141640511887.correct : P10828197141640511887.Spec := by
  intro n
  simp only [A304836, Nat.add_sub_cancel, A304836.P10828197141640511887.a, A304836.P466003782404073489.a, A049451, A049451.P10593396330720355076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304836

/-! ## A304836.P4748929544765168027

`A033580(3*n)/2`
-/

namespace A304836.P4748929544765168027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033580 (3 * n) : ℚ) / 2

end

end A304836.P4748929544765168027

namespace A304836

/-- `A033580(3*n)/2` -/
def P4748929544765168027.Spec : Prop :=
  ∀ n, P4748929544765168027.a n = (A304836 (n + 1) : ℚ)

theorem P4748929544765168027.correct : P4748929544765168027.Spec := by
  intro n
  simp only [A304836, Nat.add_sub_cancel, A304836.P4748929544765168027.a, A304836.P466003782404073489.a, A033580, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304836

/-! ## A304836.P2504796453814595041

`A045945(3*n)/3`
-/

namespace A304836.P2504796453814595041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045945 (3 * n) : ℚ) / 3

end

end A304836.P2504796453814595041

namespace A304836

/-- `A045945(3*n)/3` -/
def P2504796453814595041.Spec : Prop :=
  ∀ n, P2504796453814595041.a n = (A304836 (n + 1) : ℚ)

theorem P2504796453814595041.correct : P2504796453814595041.Spec := by
  intro n
  simp only [A304836, Nat.add_sub_cancel, A304836.P2504796453814595041.a, A304836.P466003782404073489.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A304836

/-! ## A304836.P5934177990613734793

`A006578(6*n)`
-/

namespace A304836.P5934177990613734793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 (6 * n)

end

end A304836.P5934177990613734793

namespace A304836

/-- `A006578(6*n)` -/
def P5934177990613734793.Spec : Prop :=
  ∀ n, P5934177990613734793.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P15084009750622549031

`A152749(6*n)`
-/

namespace A304836.P15084009750622549031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152749 (6 * n)

end

end A304836.P15084009750622549031

namespace A304836

/-- `A152749(6*n)` -/
def P15084009750622549031.Spec : Prop :=
  ∀ n, P15084009750622549031.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P17176231519942295223

`A397990(6*n)`
-/

namespace A304836.P17176231519942295223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397990 (6 * n)

end

end A304836.P17176231519942295223

namespace A304836

/-- `A397990(6*n)` -/
def P17176231519942295223.Spec : Prop :=
  ∀ n, P17176231519942295223.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P941001899519091511

`A128422(A017185(n))`
-/

namespace A304836.P941001899519091511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128422 (A017185 n).toNat

end

end A304836.P941001899519091511

namespace A304836

/-- `A128422(A017185(n))` -/
def P941001899519091511.Spec : Prop :=
  ∀ n, P941001899519091511.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P1983501950141648004

`A242669(A017173(n))`
-/

namespace A304836.P1983501950141648004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242669 (A017173 n).toNat

end

end A304836.P1983501950141648004

namespace A304836

/-- `A242669(A017173(n))` -/
def P1983501950141648004.Spec : Prop :=
  ∀ n, P1983501950141648004.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P5259840669637729436

`A142883(12*n)`
-/

namespace A304836.P5259840669637729436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142883 (12 * n)

end

end A304836.P5259840669637729436

namespace A304836

/-- `A142883(12*n)` -/
def P5259840669637729436.Spec : Prop :=
  ∀ n, P5259840669637729436.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P7226543514034366184

`A389430(12*n)`
-/

namespace A304836.P7226543514034366184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389430 (12 * n)

end

end A304836.P7226543514034366184

namespace A304836

/-- `A389430(12*n)` -/
def P7226543514034366184.Spec : Prop :=
  ∀ n, P7226543514034366184.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P375644082255407383

`A129819(A017533(n))`
-/

namespace A304836.P375644082255407383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129819 (A017533 n).toNat

end

end A304836.P375644082255407383

namespace A304836

/-- `A129819(A017533(n))` -/
def P375644082255407383.Spec : Prop :=
  ∀ n, P375644082255407383.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P11054167557560736082

`A272104(A017545(n))`
-/

namespace A304836.P11054167557560736082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272104 (A017545 n).toNat

end

end A304836.P11054167557560736082

namespace A304836

/-- `A272104(A017545(n))` -/
def P11054167557560736082.Spec : Prop :=
  ∀ n, P11054167557560736082.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P12471989310166557031

`A296160(A063098(n+1))`
-/

namespace A304836.P12471989310166557031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296160 (A063098 (n + 1)).toNat

end

end A304836.P12471989310166557031

namespace A304836

/-- `A296160(A063098(n+1))` -/
def P12471989310166557031.Spec : Prop :=
  ∀ n, P12471989310166557031.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P16217308565867846033

`A008724(A161705(n))`
-/

namespace A304836.P16217308565867846033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A161705 n).toNat

end

end A304836.P16217308565867846033

namespace A304836

/-- `A008724(A161705(n))` -/
def P16217308565867846033.Spec : Prop :=
  ∀ n, P16217308565867846033.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P68466090983555861

`A174709(A063122(n+1))`
-/

namespace A304836.P68466090983555861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (A063122 (n + 1)).toNat

end

end A304836.P68466090983555861

namespace A304836

/-- `A174709(A063122(n+1))` -/
def P68466090983555861.Spec : Prop :=
  ∀ n, P68466090983555861.a n = A304836 (n + 1)

end A304836

/-! ## A304836.P6816801422892392562

`A174709(A298035(n+1))`
-/

namespace A304836.P6816801422892392562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (A298035 (n + 1)).toNat

end

end A304836.P6816801422892392562

namespace A304836

/-- `A174709(A298035(n+1))` -/
def P6816801422892392562.Spec : Prop :=
  ∀ n, P6816801422892392562.a n = A304836 (n + 1)

end A304836

/-!
# A304837: a(n) = 6*(n - 1)*(81*n - 104) for n >= 1.

The programs for A304837, the canonical program `A304837.P9856164294871805546` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304837 has offset 1).

The definition of A304837 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*n*(81*(n+1)-104)` (program `A304837.P9856164294871805546`, by `A304837.P9856164294871805546.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304837.P9856164294871805546

`6*n*(81*(n+1)-104)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304837

/-- `6*n*(81*(n+1)-104)` -/
def P9856164294871805546.Spec : Prop :=
  ∀ n, P9856164294871805546.a n = A304837 (n + 1)

theorem P9856164294871805546.correct : P9856164294871805546.Spec := by
  intro n
  simp only [A304837, Nat.add_sub_cancel]

end A304837

/-! ## A304837.P9920948226924020231

`A153783(A008588(n))-A008597(A008587(n))`
-/

namespace A304837.P9920948226924020231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153783 (A008588 n).toNat - A008597 (A008587 n).toNat

end

end A304837.P9920948226924020231

namespace A304837

/-- `A153783(A008588(n))-A008597(A008587(n))` -/
def P9920948226924020231.Spec : Prop :=
  ∀ n, P9920948226924020231.a n = A304837 (n + 1)

end A304837

/-! ## A304837.P7504688962734421106

`A005449(A008600(n))-A008603(A008589(n))`
-/

namespace A304837.P7504688962734421106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005449 (A008600 n).toNat - A008603 (A008589 n).toNat

end

end A304837.P7504688962734421106

namespace A304837

/-- `A005449(A008600(n))-A008603(A008589(n))` -/
def P7504688962734421106.Spec : Prop :=
  ∀ n, P7504688962734421106.a n = A304837 (n + 1)

end A304837

/-!
# A304839: a(n) = 61*n - 38 (n>=1).

The programs for A304839, the canonical program `A304839.P5482341686792557767` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304839 has offset 1).

The definition of A304839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `61*(n+1)-38` (program `A304839.P5482341686792557767`, by `A304839.P5482341686792557767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304839.P5482341686792557767

`61*(n+1)-38`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304839

/-- `61*(n+1)-38` -/
def P5482341686792557767.Spec : Prop :=
  ∀ n, P5482341686792557767.a n = A304839 (n + 1)

theorem P5482341686792557767.correct : P5482341686792557767.Spec := by
  intro n
  simp only [A304839, Nat.add_sub_cancel]

end A304839

/-!
# A304840: a(n) = 52*n - 2 (n>=1).

The programs for A304840, the canonical program `A304840.P12926372604732726985` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304840 has offset 1).

The definition of A304840 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `52*(n+1)-2` (program `A304840.P12926372604732726985`, by `A304840.P12926372604732726985.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304840.P12926372604732726985

`52*(n+1)-2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304840

/-- `52*(n+1)-2` -/
def P12926372604732726985.Spec : Prop :=
  ∀ n, P12926372604732726985.a n = A304840 (n + 1)

theorem P12926372604732726985.correct : P12926372604732726985.Spec := by
  intro n
  simp only [A304840, Nat.add_sub_cancel]

end A304840

/-!
# A304841: a(n) = 67*n - 10 (n>=1).

The programs for A304841, the canonical program `A304841.P3973947569058914086` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304841 has offset 1).

The definition of A304841 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `67*(n+1)-10` (program `A304841.P3973947569058914086`, by `A304841.P3973947569058914086.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A304841.P3973947569058914086

`67*(n+1)-10`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A304841

/-- `67*(n+1)-10` -/
def P3973947569058914086.Spec : Prop :=
  ∀ n, P3973947569058914086.a n = A304841 (n + 1)

theorem P3973947569058914086.correct : P3973947569058914086.Spec := by
  intro n
  simp only [A304841, Nat.add_sub_cancel]

end A304841

/-!
# A304842: Number of n X n 0..1 arrays with every element unequal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304842, there is no canonical definition to state claims against.
-/

/-! ## A304842.P10742454430533662539

`A304848(∑[4*n]+1)`
-/

namespace A304842.P10742454430533662539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304842.P10742454430533662539

/-! ## A304842.P7189310804782516132

`record[A304848(Δ[A235355(n)])]`
-/

namespace A304842.P7189310804782516132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304842.P7189310804782516132

/-! ## A304842.P5707126611584025052

`and(-1, A304848(A001844(n)))`
-/

namespace A304842.P5707126611584025052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304848 (A001844 n).toNat)

end

end A304842.P5707126611584025052

/-! ## A304842.P5031603285651762345

`record[A304848(A330613(n+1))]`
-/

namespace A304842.P5031603285651762345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304842.P5031603285651762345

/-! ## A304842.P7619058225823812634

`record[A304848(Δ[A079824(n+1)])]`
-/

namespace A304842.P7619058225823812634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079824 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304842.P7619058225823812634

/-!
# A304843: Number of nX3 0..1 arrays with every element unequal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304843, there is no canonical definition to state claims against.
-/

/-! ## A304843.P7319172173819041829

`A304848(∑[n+2]+4)`
-/

namespace A304843.P7319172173819041829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304843.P7319172173819041829

/-! ## A304843.P9010047105284048607

`or(char[2], A304848(A167614(n+1)))`
-/

namespace A304843.P9010047105284048607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304848 (A167614 (n + 1)).toNat)

end

end A304843.P9010047105284048607

/-! ## A304843.P317851853317150584

`or(char[2], A304848(A046691(n)+7))`
-/

namespace A304843.P317851853317150584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304848 (A046691 n + 7).toNat)

end

end A304843.P317851853317150584

/-! ## A304843.P270829709431741384

`A304848(A167614(n+1))+A185264(n)`
-/

namespace A304843.P270829709431741384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A167614 (n + 1)).toNat + A185264 n

end

end A304843.P270829709431741384

/-! ## A304843.P11173382044668307185

`A177849(n)*A304848(A167614(n+1))`
-/

namespace A304843.P11173382044668307185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A304848 (A167614 (n + 1)).toNat

end

end A304843.P11173382044668307185

/-!
# A304844: Number of n X 4 0..1 arrays with every element unequal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304844, there is no canonical definition to state claims against.
-/

/-! ## A304844.P2648087263395075646

`A304848(∑[n+3]+7)`
-/

namespace A304844.P2648087263395075646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304844.P2648087263395075646

/-! ## A304844.P10635979412274899461

`A304848(A027379(n+1)+7)+char[20]`
-/

namespace A304844.P10635979412274899461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A027379 (n + 1) + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304844.P10635979412274899461

/-! ## A304844.P10915801422875755264

`A000041(C(2, n+2))*A304848(A027379(n+1)+7)`
-/

namespace A304844.P10915801422875755264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A304848 (A027379 (n + 1) + 7).toNat

end

end A304844.P10915801422875755264

/-!
# A304845: Number of nX5 0..1 arrays with every element unequal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304845, there is no canonical definition to state claims against.
-/

/-! ## A304845.P1232594427676817131

`A304848(∑[n+4]+11)`
-/

namespace A304845.P1232594427676817131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A304845.P1232594427676817131

/-! ## A304845.P11736591072647812887

`A304848(A167499(n+3))%A204711(n+1)`
-/

namespace A304845.P11736591072647812887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304848 (A167499 (n + 3)).toNat) (A204711 (n + 1))

end

end A304845.P11736591072647812887

/-! ## A304845.P17357381817400779638

`A304848(A167499(n+3))+A240331(3*n+4)`
-/

namespace A304845.P17357381817400779638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A167499 (n + 3)).toNat + A240331 (3 * n + 4)

end

end A304845.P17357381817400779638

/-! ## A304845.P7346508328432262102

`A304848(A155212(n)+13)+A189628(3*n+4)`
-/

namespace A304845.P7346508328432262102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A155212 n + 13).toNat + A189628 (3 * n + 4)

end

end A304845.P7346508328432262102

/-! ## A304845.P9823556635949198052

`A304848(Δ[A023545(n+1)])+A236241(n+1)`
-/

namespace A304845.P9823556635949198052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (f1 (n + 1) - f1 n).toNat + A236241 (n + 1)

end

end A304845.P9823556635949198052

/-!
# A304846: Number of nX6 0..1 arrays with every element unequal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304846, there is no canonical definition to state claims against.
-/

/-! ## A304846.P8364888626905275983

`A304848(A374007(n+1))`
-/

namespace A304846.P8364888626905275983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A374007 (n + 1)).toNat

end

end A304846.P8364888626905275983

/-! ## A304846.P6302451770484838216

`A304848(A166136(n+4))`
-/

namespace A304846.P6302451770484838216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A166136 (n + 4)).toNat

end

end A304846.P6302451770484838216

/-! ## A304846.P1345554585369623557

`A304848(A056115(n)+21)`
-/

namespace A304846.P1345554585369623557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A056115 n + 21).toNat

end

end A304846.P1345554585369623557

/-! ## A304846.P6484545939928606338

`A304848(∑[A020710(n)]+16)`
-/

namespace A304846.P6484545939928606338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A304846.P6484545939928606338

/-! ## A304846.P14585669157222734524

`A304848(A167499(n+4)+1)`
-/

namespace A304846.P14585669157222734524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A167499 (n + 4) + 1).toNat

end

end A304846.P14585669157222734524

/-!
# A304847: Number of nX7 0..1 arrays with every element unequal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304847, there is no canonical definition to state claims against.
-/

/-! ## A304847.P16649984247348423702

`A304848(A374008(n+1))`
-/

namespace A304847.P16649984247348423702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A374008 (n + 1)).toNat

end

end A304847.P16649984247348423702

/-! ## A304847.P17024292858990682601

`A304848(A056119(n)+28)`
-/

namespace A304847.P17024292858990682601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A056119 n + 28).toNat

end

end A304847.P17024292858990682601

/-! ## A304847.P16992803680445879155

`A304848(A167499(n+5)+2)`
-/

namespace A304847.P16992803680445879155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A167499 (n + 5) + 2).toNat

end

end A304847.P16992803680445879155

/-! ## A304847.P7420611741322150576

`A304848(A000124(n+6)+6)`
-/

namespace A304847.P7420611741322150576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A000124 (n + 6) + 6).toNat

end

end A304847.P7420611741322150576

/-! ## A304847.P1205336847695426206

`A304848(A000096(n+5)+8)`
-/

namespace A304847.P1205336847695426206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304848 (A000096 (n + 5) + 8).toNat

end

end A304847.P1205336847695426206

/-!
# A304848: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304848, there is no canonical definition to state claims against.
-/

/-! ## A304848.P10280649517027511847

`A316545(n+1)-A186034(A022167(n))`
-/

namespace A304848.P10280649517027511847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (n + 1) - A186034 (A022167 n).toNat

end

end A304848.P10280649517027511847

/-! ## A304848.P7780283044207710313

`A316545(n+1)-A173920(A173917(n))`
-/

namespace A304848.P7780283044207710313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (n + 1) - A173920 (A173917 n).toNat

end

end A304848.P7780283044207710313

/-! ## A304848.P3325692764686505443

`A316545(n+1)-A098490(A219987(n)²)`
-/

namespace A304848.P3325692764686505443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (n + 1) - A098490 (A219987 n ^ 2).toNat

end

end A304848.P3325692764686505443

/-! ## A304848.P16260337824994414441

`A316545(n+1)-A321936(A001263(n+1))`
-/

namespace A304848.P16260337824994414441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (n + 1) - A321936 (A001263 (n + 1)).toNat

end

end A304848.P16260337824994414441

/-! ## A304848.P12388647676175419036

`A316545(n+1)-A280737(A301784(n+1))`
-/

namespace A304848.P12388647676175419036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316545 (n + 1) - A280737 (A301784 (n + 1)).toNat

end

end A304848.P12388647676175419036

/-!
# A304849: Number of n X n 0..1 arrays with every element unequal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304849, there is no canonical definition to state claims against.
-/

/-! ## A304849.P220367865420816111

`A304855(∑[4*n]+1)`
-/

namespace A304849.P220367865420816111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304849.P220367865420816111

/-! ## A304849.P1755240751592989583

`record[A304855(Δ[A235355(n)])]`
-/

namespace A304849.P1755240751592989583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304849.P1755240751592989583

/-! ## A304849.P11079233037922649090

`record[A304855(A330613(n+1))]`
-/

namespace A304849.P11079233037922649090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304849.P11079233037922649090

/-! ## A304849.P616407580052158812

`A304855(A001844(n))+char[12]`
-/

namespace A304849.P616407580052158812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304849.P616407580052158812

/-! ## A304849.P580385352530865485

`record[A003982(n)*A304855(n+1)]`
-/

namespace A304849.P580385352530865485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304849.P580385352530865485

/-!
# A304850: Number of nX3 0..1 arrays with every element unequal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304850, there is no canonical definition to state claims against.
-/

/-! ## A304850.P7691310977861826952

`A304855(∑[n+2]+4)`
-/

namespace A304850.P7691310977861826952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304850.P7691310977861826952

/-! ## A304850.P8490760302876727427

`or(1, A304855(A167614(n+1)))`
-/

namespace A304850.P8490760302876727427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304855 (A167614 (n + 1)).toNat)

end

end A304850.P8490760302876727427

/-! ## A304850.P3110080556178165873

`or(1, A304855(A055998(n)+6))`
-/

namespace A304850.P3110080556178165873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304855 (A055998 n + 6).toNat)

end

end A304850.P3110080556178165873

/-! ## A304850.P15298982054078587465

`or(1, A304855(A167499(n)+n))`
-/

namespace A304850.P15298982054078587465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304855 (A167499 n + (n : ℤ)).toNat)

end

end A304850.P15298982054078587465

/-! ## A304850.P7753105765820688790

`or(1, A304855(A000096(n+1)+4))`
-/

namespace A304850.P7753105765820688790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A304855 (A000096 (n + 1) + 4).toNat)

end

end A304850.P7753105765820688790

/-!
# A304851: Number of nX4 0..1 arrays with every element unequal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304851, there is no canonical definition to state claims against.
-/

/-! ## A304851.P1491694841440461079

`A304855(∑[n+3]+7)`
-/

namespace A304851.P1491694841440461079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304851.P1491694841440461079

/-! ## A304851.P18268031408118015442

`or(char[1], A304855(A000096(n+2)+5))`
-/

namespace A304851.P18268031408118015442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A304855 (A000096 (n + 2) + 5).toNat)

end

end A304851.P18268031408118015442

/-! ## A304851.P4269681615451849873

`A304855(A000096(n+2)+5)%A000108(n+6)`
-/

namespace A304851.P4269681615451849873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304855 (A000096 (n + 2) + 5).toNat) (A000108 (n + 6))

end

end A304851.P4269681615451849873

/-! ## A304851.P13640676334775821439

`A007318(C(n, 2))²*A304855(A000096(n+2)+5)`
-/

namespace A304851.P13640676334775821439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) ^ 2 * A304855 (A000096 (n + 2) + 5).toNat

end

end A304851.P13640676334775821439

/-! ## A304851.P6633302298874392646

`A007318(C(n+2, 2))*A304855(A000096(n+2)+5)`
-/

namespace A304851.P6633302298874392646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 2) 2) * A304855 (A000096 (n + 2) + 5).toNat

end

end A304851.P6633302298874392646

/-!
# A304852: Number of nX5 0..1 arrays with every element unequal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304852, there is no canonical definition to state claims against.
-/

/-! ## A304852.P17273550663786449247

`A304855(A374005(n+1))`
-/

namespace A304852.P17273550663786449247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A374005 (n + 1)).toNat

end

end A304852.P17273550663786449247

/-! ## A304852.P13126116964543347809

`A304855(A167499(n+3))`
-/

namespace A304852.P13126116964543347809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A167499 (n + 3)).toNat

end

end A304852.P13126116964543347809

/-! ## A304852.P10541922127292012634

`A304855(A155212(n)+13)`
-/

namespace A304852.P10541922127292012634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A155212 n + 13).toNat

end

end A304852.P10541922127292012634

/-! ## A304852.P17991303857837920106

`A304855(A056000(n)+15)`
-/

namespace A304852.P17991303857837920106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A056000 n + 15).toNat

end

end A304852.P17991303857837920106

/-! ## A304852.P18393740893004289446

`A304855(eq[7, A066657(n)])`
-/

namespace A304852.P18393740893004289446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304852.P18393740893004289446

/-!
# A304853: Number of nX6 0..1 arrays with every element unequal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304853, there is no canonical definition to state claims against.
-/

/-! ## A304853.P177338758751205169

`A304855(∑[n+5]+16)`
-/

namespace A304853.P177338758751205169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304853.P177338758751205169

/-! ## A304853.P14764251539392190655

`or(A304855(A166136(n+4)), A331845(n))`
-/

namespace A304853.P14764251539392190655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A304855 (A166136 (n + 4)).toNat) (A331845 n)

end

end A304853.P14764251539392190655

/-!
# A304854: Number of nX7 0..1 arrays with every element unequal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304854, there is no canonical definition to state claims against.
-/

/-! ## A304854.P14556187291645485560

`A304855(A374008(n+1))`
-/

namespace A304854.P14556187291645485560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A374008 (n + 1)).toNat

end

end A304854.P14556187291645485560

/-! ## A304854.P16522911715800237092

`A304855(A056119(n)+28)`
-/

namespace A304854.P16522911715800237092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A056119 n + 28).toNat

end

end A304854.P16522911715800237092

/-! ## A304854.P14089548562355554678

`A304855(A166136(n+5)+1)`
-/

namespace A304854.P14089548562355554678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A166136 (n + 5) + 1).toNat

end

end A304854.P14089548562355554678

/-! ## A304854.P18161197675845469333

`A304855(A000124(n+6)+6)`
-/

namespace A304854.P18161197675845469333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A000124 (n + 6) + 6).toNat

end

end A304854.P18161197675845469333

/-! ## A304854.P18071015500907627302

`A304855(A000217(n+6)+7)`
-/

namespace A304854.P18071015500907627302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304855 (A000217 (n + 6) + 7).toNat

end

end A304854.P18071015500907627302

/-!
# A304855: T(n,k) = Number of n X k 0..1 arrays with every element unequal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304855, there is no canonical definition to state claims against.
-/

/-! ## A304855.P3260286126300793042

`A309785(A299321(n+1))+A303808(n+1)`
-/

namespace A304855.P3260286126300793042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A299321 (n + 1)).toNat + A303808 (n + 1)

end

end A304855.P3260286126300793042

/-! ## A304855.P1377371964995287520

`xor(A200214(A197561(n+1)), A303808(n+1))`
-/

namespace A304855.P1377371964995287520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A200214 (A197561 (n + 1)).toNat) (A303808 (n + 1))

end

end A304855.P1377371964995287520

/-! ## A304855.P11392787724458682204

`A303808(n+1)+A025466(A270890(n+1))`
-/

namespace A304855.P11392787724458682204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (n + 1) + A025466 (A270890 (n + 1)).toNat

end

end A304855.P11392787724458682204

/-! ## A304855.P3302665076739966802

`A303808(n+1)+A285007(A035607(n))`
-/

namespace A304855.P3302665076739966802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (n + 1) + A285007 (A035607 n).toNat

end

end A304855.P3302665076739966802

/-! ## A304855.P493467450127258401

`A303808(n+1)+A285007(A270061(n))`
-/

namespace A304855.P493467450127258401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303808 (n + 1) + A285007 (A270061 n).toNat

end

end A304855.P493467450127258401

/-!
# A304857: a(n) = A304400(n) / n^2 for n >= 1.

The programs for A304857, there is no canonical definition to state claims against.
-/

/-! ## A304857.P1519339732997759909

`A304400(n+1)/(n+1)²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A304857.P1519339732997759909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304400 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A304857.P1519339732997759909

/-!
# A304860: G.f. A(x) satisfies: x = Sum_{n>=0} ( (1+x)^(n^2) - A(x)^n ) / 2^(n+1).

The programs for A304860, there is no canonical definition to state claims against.
-/

/-! ## A304860.P17215815279856771971

`A007895(A254144(n))*A249931(n)`
-/

namespace A304860.P17215815279856771971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A254144 n).toNat * A249931 n

end

end A304860.P17215815279856771971

/-!
# A304861: O.g.f. A(x) satisfies: 0 = [x^n] exp( n*(n-1) * Integral 1/A(x) dx ) / A(x), for n > 0.

The programs for A304861, there is no canonical definition to state claims against.
-/

/-! ## A304861.P17508982452666812983

`A004526((2*a(n-1)+1)*2^n)` with `a(0)=1, a(1)=0`
-/

namespace A304861.P17508982452666812983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A004526 ((2 * a (n - 1) + 1) * (2 ^ n : ℤ)).toNat

end

end A304861.P17508982452666812983

/-!
# A304862: O.g.f. A(x) satisfies: 0 = [x^n] exp( n*(n+1) * Integral 1/A(x) dx ) / A(x), for n > 0.

The programs for A304862, there is no canonical definition to state claims against.
-/

/-! ## A304862.P7642613269538271482

`A325621(A348476(n)+A006999(n))`
-/

namespace A304862.P7642613269538271482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325621 (A348476 n + A006999 n).toNat

end

end A304862.P7642613269538271482

/-! ## A304862.P5561702982491517879

`A000010(A047793(n)*A294481(n))`
-/

namespace A304862.P5561702982491517879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A047793 n * A294481 n).toNat

end

end A304862.P5561702982491517879

/-!
# A304863: O.g.f. A(x) satisfies: [x^n] exp( n*(n+2) * x ) / A(x) = 0 for n>0.

The programs for A304863, there is no canonical definition to state claims against.
-/

/-! ## A304863.P2394243175477545993

`Δ[A120463(∑[A001096(n)])]`
-/

namespace A304863.P2394243175477545993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001096 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120463 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A304863.P2394243175477545993

/-!
# A304864: O.g.f. A(x) satisfies: [x^n] exp( n*(n+3) * x ) / A(x) = 0 for n>0.

The programs for A304864, there is no canonical definition to state claims against.
-/

/-! ## A304864.P14286265659668326626

`A004523(A277184(n+1)+A020497(n+1))`
-/

namespace A304864.P14286265659668326626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A277184 (n + 1) + A020497 (n + 1)).toNat

end

end A304864.P14286265659668326626

/-!
# A304865: O.g.f. A(x) satisfies: [x^n] exp( n*(n+4) * x ) / A(x) = 0 for n>0.

The programs for A304865, there is no canonical definition to state claims against.
-/

/-! ## A304865.P17015284009831700285

`A108598(A248653(n)+A097861(n))`
-/

namespace A304865.P17015284009831700285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108598 (A248653 n + A097861 n).toNat

end

end A304865.P17015284009831700285

/-!
# A304866: E.g.f. A(x) satisfies: Sum_{n>=0} (n*x - A(x))^n / n! = 1.

The programs for A304866, there is no canonical definition to state claims against.
-/

/-! ## A304866.P13122259138926653784

`A063170(n)-A190314(n)`
-/

namespace A304866.P13122259138926653784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063170 n - A190314 n

end

end A304866.P13122259138926653784

/-! ## A304866.P723139730129044419

`A089901(n)-(A190314(n)+A007778(n))`
-/

namespace A304866.P723139730129044419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089901 n - (A190314 n + A007778 n)

end

end A304866.P723139730129044419

/-! ## A304866.P1949812204088660437

`record[A244137(n)]-(A219706(n)+A190314(n))`
-/

namespace A304866.P1949812204088660437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A219706 n + A190314 n)

end

end A304866.P1949812204088660437

/-! ## A304866.P1551166482630162529

`A089901(n)-n*A000312(n)-A190314(n)`
-/

namespace A304866.P1551166482630162529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089901 n - (n : ℤ) * A000312 n - A190314 n

end

end A304866.P1551166482630162529

/-! ## A304866.P6299804617845387705

`A225723(A000124(n))-(A219706(n)+A190314(n))`
-/

namespace A304866.P6299804617845387705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225723 (A000124 n).toNat - (A219706 n + A190314 n)

end

end A304866.P6299804617845387705

/-!
# A304867: Number of non-isomorphic hypertrees of weight n.

The programs for A304867, there is no canonical definition to state claims against.
-/

/-! ## A304867.P9136908545555026820

`A102614(A000013(n)+1)`
-/

namespace A304867.P9136908545555026820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (A000013 n + 1).toNat

end

end A304867.P9136908545555026820

/-! ## A304867.P10674912625156672966

`A102614(or(1, A000013(n)))`
-/

namespace A304867.P10674912625156672966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102614 (Int.lor 1 (A000013 n)).toNat

end

end A304867.P10674912625156672966

/-! ## A304867.P9457773215096214873

`A182220(A028304(n)+A004526(n))`
-/

namespace A304867.P9457773215096214873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A028304 n + A004526 n).toNat

end

end A304867.P9457773215096214873

/-! ## A304867.P3880344639541386112

`A325108(A008763(n))+A008763(n)`
-/

namespace A304867.P3880344639541386112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325108 (A008763 n).toNat + A008763 n

end

end A304867.P3880344639541386112

/-!
# A304868: Numbers x satisfying x == 1 (mod 4) or x == 14, 26, 30 (mod 32).

The programs for A304868, there is no canonical definition to state claims against.
-/

/-! ## A304868.P1133142057444883396

`eq[A072070(A064680(n)+1), A169783(n+2)]`
-/

namespace A304868.P1133142057444883396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072070 (A064680 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304868.P1133142057444883396

/-! ## A304868.P9550740356100266588

`eq[A080965(A064680(n+2)), A213384(n+2)]`
-/

namespace A304868.P9550740356100266588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080965 (A064680 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304868.P9550740356100266588

/-! ## A304868.P13293519445505299789

`eq[A122458(A167499(n+8)), A122458(n+11)]`
-/

namespace A304868.P13293519445505299789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (A167499 (n + 8)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122458 (n + 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304868.P13293519445505299789

/-! ## A304868.P2081730075648509862

`eq[and(4, A006003(n)), A280749(n)]`
-/

namespace A304868.P2081730075648509862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A006003 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A304868.P2081730075648509862

/-! ## A304868.P16771088731526502516

`lt[A001511(n+1), A080426(A185447(n+1))]`
-/

namespace A304868.P16771088731526502516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080426 (A185447 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A304868.P16771088731526502516

/-!
# A304869: Triangle read by rows: T(n, k) gives the number of partitions (d1,d2,...,dk) of n such that 0 < d1/1 <= d2/2 <= ... <= dk/k for 1 <= k <= A003056(n).

The programs for A304869, there is no canonical definition to state claims against.
-/

/-! ## A304869.P1478538513454646364

`gcd(A029301(n)²!, A025854(n))`
-/

namespace A304869.P1478538513454646364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A029301 n ^ 2).toNat : ℤ) (A025854 n)

end

end A304869.P1478538513454646364

/-! ## A304869.P4108980418517513870

`∏{e}[A004139(n+1)^A025854(n), #]`
-/

namespace A304869.P4108980418517513870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004139 (n + 1) : ℚ) ^ (A025854 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A304869.P4108980418517513870

/-! ## A304869.P18283110215417977949

`∏{e}[A065091(n+1)^A025854(n), #]`
-/

namespace A304869.P18283110215417977949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065091 (n + 1) : ℚ) ^ (A025854 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A304869.P18283110215417977949

/-! ## A304869.P16537700328360639971

`A001055(A136548(n+1)^A025854(n))`
-/

namespace A304869.P16537700328360639971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((A136548 (n + 1) : ℚ) ^ (A025854 n : ℤ))).toNat

end

end A304869.P16537700328360639971

/-! ## A304869.P18022655917124737225

`A000041(A025854(n))%A332978(n+1)`
-/

namespace A304869.P18022655917124737225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (A025854 n).toNat) (A332978 (n + 1))

end

end A304869.P18022655917124737225

/-!
# A304870: L.g.f.: log(Product_{k>=1} (1 + x^k)^(k^k)) = Sum_{n>=1} a(n)*x^n/n.

The programs for A304870, there is no canonical definition to state claims against.
-/

/-! ## A304870.P15776817019825258642

`A294645(n+1)-A284152(A224231(n))`
-/

namespace A304870.P15776817019825258642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294645 (n + 1) - A284152 (A224231 n).toNat

end

end A304870.P15776817019825258642

/-!
# A304871: Triangle read by rows: T(n, k) gives the number of partitions (d1,d2,...,dm) of n such that k = d1/1 <= d2/2 <= ... <= dm/m for 1 <= k <= n.

The programs for A304871, there is no canonical definition to state claims against.
-/

/-! ## A304871.P5162404962321893897

`A060500(A117408(n+1)^A034968(n))`
-/

namespace A304871.P5162404962321893897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (SequenceMachineLib.roundAway ((A117408 (n + 1) : ℚ) ^ (A034968 n : ℤ))).toNat

end

end A304871.P5162404962321893897

/-! ## A304871.P12765534523927333896

`A268318(and(A055246(3*n+2), A106236(n+2)))`
-/

namespace A304871.P12765534523927333896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268318 (Int.land (A055246 (3 * n + 2)) (A106236 (n + 2))).toNat

end

end A304871.P12765534523927333896

/-! ## A304871.P5206646813505212653

`A089275(n+2)%3`
-/

namespace A304871.P5206646813505212653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089275 (n + 2)) 3

end

end A304871.P5206646813505212653

/-! ## A304871.P16960902117582194716

`A060500(A117408(n+1)^A000700(n))`
-/

namespace A304871.P16960902117582194716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060500 (SequenceMachineLib.roundAway ((A117408 (n + 1) : ℚ) ^ (A000700 n : ℤ))).toNat

end

end A304871.P16960902117582194716

/-! ## A304871.P17267087757018984785

`A036580(A027185(n+1)^A052297(n+1))`
-/

namespace A304871.P17267087757018984785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (SequenceMachineLib.roundAway ((A027185 (n + 1) : ℚ) ^ (A052297 (n + 1) : ℤ))).toNat

end

end A304871.P17267087757018984785

/-!
# A304873: G.f.: Sum_{k>=0} p(k)^4 * x^k / Sum_{k>=0} p(k)*x^k, where p(n) is the partition function A000041(n).

The programs for A304873, there is no canonical definition to state claims against.
-/

/-! ## A304873.P16735325747882177702

`A046736(n+2)*A304760(A354132(n))`
-/

namespace A304873.P16735325747882177702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046736 (n + 2) * A304760 (A354132 n).toNat

end

end A304873.P16735325747882177702

/-!
# A304874: Greatest prime p1 < p2 such that n^2 = (p1 + p2)/2 and p2 is prime.

The programs for A304874, there is no canonical definition to state claims against.
-/

/-! ## A304874.P2138622550835734797

`(n+2)²-A172989(n+2)`
-/

namespace A304874.P2138622550835734797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A172989 (n + 2)

end

end A304874.P2138622550835734797

/-! ## A304874.P10882439112328743871

`A304875(n+2)-2*A172989(n+2)`
-/

namespace A304874.P10882439112328743871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304875 (n + 2) - 2 * A172989 (n + 2)

end

end A304874.P10882439112328743871

/-! ## A304874.P16426471643773898474

`A000290(n+2)-A000027(A172989(n+2))`
-/

namespace A304874.P16426471643773898474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (n + 2) - A000027 (A172989 (n + 2)).toNat

end

end A304874.P16426471643773898474

/-! ## A304874.P4840037148249296810

`A304875(n+2)-A004277(A172989(n+2))`
-/

namespace A304874.P4840037148249296810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304875 (n + 2) - A004277 (A172989 (n + 2)).toNat

end

end A304874.P4840037148249296810

/-! ## A304874.P11294154985751977189

`A000096(n+1)-(A172989(n+2)-A000124(n+1))`
-/

namespace A304874.P11294154985751977189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) - (A172989 (n + 2) - A000124 (n + 1))

end

end A304874.P11294154985751977189

/-! ## A304874.P4639295860103134621

`A053001(n+2)+A056927(n+2)-A172989(n+2)`
-/

namespace A304874.P4639295860103134621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) + (A056927 (n + 2) - A172989 (n + 2))

end

end A304874.P4639295860103134621

/-! ## A304874.P7500038606514158245

`A078587((n+2)²)`
-/

namespace A304874.P7500038606514158245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 ((n + 2) ^ 2)

end

end A304874.P7500038606514158245

/-! ## A304874.P6335973606847823066

`A002374((n+2)²)`
-/

namespace A304874.P6335973606847823066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002374 ((n + 2) ^ 2)

end

end A304874.P6335973606847823066

/-! ## A304874.P1007112355577930128

`A112823((n+2)²)`
-/

namespace A304874.P1007112355577930128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112823 ((n + 2) ^ 2)

end

end A304874.P1007112355577930128

/-! ## A304874.P8127883976952099424

`(n+2)²-A047160((n+2)²)`
-/

namespace A304874.P8127883976952099424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - A047160 ((n + 2) ^ 2)

end

end A304874.P8127883976952099424

/-!
# A304875: Least prime p2 > p1 such that n^2 = (p1 + p2)/2 and p1 is prime.

The programs for A304875, there is no canonical definition to state claims against.
-/

/-! ## A304875.P14529421487782898371

`(n+2)²+A172989(n+2)`
-/

namespace A304875.P14529421487782898371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) + A172989 (n + 2)

end

end A304875.P14529421487782898371

/-! ## A304875.P17664261353629129032

`A304874(n+2)+2*A172989(n+2)`
-/

namespace A304875.P17664261353629129032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304874 (n + 2) + 2 * A172989 (n + 2)

end

end A304875.P17664261353629129032

/-! ## A304875.P17103211963194459720

`A172989(n+2)+A000290(n+2)`
-/

namespace A304875.P17103211963194459720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172989 (n + 2) + A000290 (n + 2)

end

end A304875.P17103211963194459720

/-! ## A304875.P8309783190398550016

`A304874(n+2)+A004277(A172989(n+2))`
-/

namespace A304875.P8309783190398550016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304874 (n + 2) + A004277 (A172989 (n + 2)).toNat

end

end A304875.P8309783190398550016

/-! ## A304875.P17554731941887801003

`A053001(n+2)+A172989(n+2)+A056927(n+2)`
-/

namespace A304875.P17554731941887801003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053001 (n + 2) + (A172989 (n + 2) + A056927 (n + 2))

end

end A304875.P17554731941887801003

/-! ## A304875.P13334537540054630121

`A001105(n+2)-A304874(n+2)`
-/

namespace A304875.P13334537540054630121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 (n + 2) - A304874 (n + 2)

end

end A304875.P13334537540054630121

/-! ## A304875.P16558064228678483176

`A078496((n+2)²)`
-/

namespace A304875.P16558064228678483176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078496 ((n + 2) ^ 2)

end

end A304875.P16558064228678483176

/-! ## A304875.P7300036437243892508

`A234345((n+2)²)`
-/

namespace A304875.P7300036437243892508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 ((n + 2) ^ 2)

end

end A304875.P7300036437243892508

/-! ## A304875.P16153209285870946339

`A047160((n+2)²)+(n+2)²`
-/

namespace A304875.P16153209285870946339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 ((n + 2) ^ 2) + ((n + 2) ^ 2 : ℤ)

end

end A304875.P16153209285870946339

/-!
# A304876: L.g.f.: log(Product_{k>=1} (1 + x^(k*(k+1)/2))) = Sum_{n>=1} a(n)*x^n/n.

The programs for A304876, the canonical program `A304876.P15055631552920192285` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A304876 has offset 1).

The definition of A304876 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A304876.P15055631552920192285

`∑{d}[n+1, A033999(#-1)*A127773((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A304876

/-- `∑{d}[n+1, A033999(#-1)*A127773((n+1)/#)]` -/
def P15055631552920192285.Spec : Prop :=
  ∀ n, P15055631552920192285.a n = A304876 (n + 1)

theorem P15055631552920192285.correct : P15055631552920192285.Spec := by
  intro n
  simp only [A304876, Nat.add_sub_cancel]

end A304876

/-!
# A304880: a(n) is the numerator of the smallest nonnegative fraction r such that round(10^d*r) = n, where d is the number of digits of n and Gaussian rounding (round half to even) is applied.

The programs for A304880, there is no canonical definition to state claims against.
-/

/-! ## A304880.P17038732844520076958

`A090001(ceil(A001932(n)/A081355(n+2)))`
-/

namespace A304880.P17038732844520076958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 ⌈(A001932 n : ℚ) / (A081355 (n + 2) : ℚ)⌉.toNat

end

end A304880.P17038732844520076958

/-! ## A304880.P6383301889330500326

`A090001(A001932(n)%A000070(2*(n+1)))`
-/

namespace A304880.P6383301889330500326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (Int.tmod (A001932 n) (A000070 (2 * (n + 1)))).toNat

end

end A304880.P6383301889330500326

/-! ## A304880.P16994146998431762184

`A090001(A001932(n))`
-/

namespace A304880.P16994146998431762184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A001932 n).toNat

end

end A304880.P16994146998431762184

/-! ## A304880.P9535734024113314969

`A090001(A000129(n)+A000045(n))`
-/

namespace A304880.P9535734024113314969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090001 (A000129 n + A000045 n).toNat

end

end A304880.P9535734024113314969

/-! ## A304880.P426465496592173595

`A079066(Δ[A079284(n)+A020737(n)])`
-/

namespace A304880.P426465496592173595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079284 n + A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079066 (f1 (n + 1) - f1 n).toNat

end

end A304880.P426465496592173595

/-!
# A304883: Expansion of Product_{k>=1} 1/(1-x^(3*k-1)) * Product_{k>=1} 1/(1-x^(6*k-5)).

The programs for A304883, there is no canonical definition to state claims against.
-/

/-! ## A304883.P8217126989204107810

`ceil(A172471(A288578(n))/2)`
-/

namespace A304883.P8217126989204107810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A172471 (A288578 n).toNat : ℚ) / 2⌉

end

end A304883.P8217126989204107810

/-! ## A304883.P6450499346315617496

`∑[A135664(A001462(A295686(n)))]`
-/

namespace A304883.P6450499346315617496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A001462 (A295686 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A304883.P6450499346315617496

/-! ## A304883.P15498110086112482124

`A000196(A073941(n+1)+A000990(n))`
-/

namespace A304883.P15498110086112482124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A073941 (n + 1) + A000990 n).toNat

end

end A304883.P15498110086112482124

/-! ## A304883.P1657848827085032972

`A000196(A002865(2*(n+2))-A003114(3*n))`
-/

namespace A304883.P1657848827085032972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002865 (2 * (n + 2)) - A003114 (3 * n)).toNat

end

end A304883.P1657848827085032972

/-! ## A304883.P10313598419671950528

`A135664(Δ[A183562(2*(n+4))])`
-/

namespace A304883.P10313598419671950528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183562 (2 * (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (f1 (n + 1) - f1 n).toNat

end

end A304883.P10313598419671950528

/-!
# A304885: Expansion of Product_{k>=1} 1/(1-x^(3*k-2)) * Product_{k>=1} 1/(1-x^(6*k-1)).

The programs for A304885, there is no canonical definition to state claims against.
-/

/-! ## A304885.P15705076239041280679

`A204553(A298948(n)+A298436(2*n))`
-/

namespace A304885.P15705076239041280679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A298948 n + A298436 (2 * n)).toNat

end

end A304885.P15705076239041280679

/-!
# A304886: Irregular triangle where row n contains indices k where the product of A002110(k) = A025487(n).

The programs for A304886, there is no canonical definition to state claims against.
-/

/-! ## A304886.P3264392193289878691

`gcd(A003415(A005900(n)), A007895(n))`
-/

namespace A304886.P3264392193289878691
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (A005900 n).toNat) (A007895 n)

end

end A304886.P3264392193289878691

/-! ## A304886.P11796161235291842095

`gcd(A064547(A006899(n+1)), A089051(n))`
-/

namespace A304886.P11796161235291842095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064547 (A006899 (n + 1)).toNat) (A089051 n)

end

end A304886.P11796161235291842095

/-!
# A304888: Number of n X n 0..1 arrays with every element unequal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304888, there is no canonical definition to state claims against.
-/

/-! ## A304888.P16361363500747841615

`A304894(∑[4*n]+1)`
-/

namespace A304888.P16361363500747841615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304888.P16361363500747841615

/-! ## A304888.P21396685130597739

`record[A304894(A272267(n+1))]`
-/

namespace A304888.P21396685130597739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304888.P21396685130597739

/-! ## A304888.P10487513471731397233

`record[A304894(A330613(n+1))]`
-/

namespace A304888.P10487513471731397233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304888.P10487513471731397233

/-! ## A304888.P111304393821983248

`A304894(A001844(n))+char[10]`
-/

namespace A304888.P111304393821983248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304888.P111304393821983248

/-! ## A304888.P3477080873274564949

`record[A003982(n)*A304894(n+1)]`
-/

namespace A304888.P3477080873274564949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304894 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304888.P3477080873274564949

/-!
# A304889: Number of nX3 0..1 arrays with every element unequal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304889, there is no canonical definition to state claims against.
-/

/-! ## A304889.P6437225086463873365

`A304894(∑[n+2]+4)`
-/

namespace A304889.P6437225086463873365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304889.P6437225086463873365

/-! ## A304889.P17221653821842751152

`A316576(∑[n+2]+4)`
-/

namespace A304889.P17221653821842751152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304889.P17221653821842751152

/-! ## A304889.P15273814645793865371

`A316576(A167614(n+1))+char[19]`
-/

namespace A304889.P15273814645793865371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304889.P15273814645793865371

/-! ## A304889.P9045699917312440715

`record[A010054(n)*A304894(n+3)]`
-/

namespace A304889.P9045699917312440715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A304894 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304889.P9045699917312440715

/-! ## A304889.P11090074974658995876

`record[gcd(A303913(n), A304894(n+1))]`
-/

namespace A304889.P11090074974658995876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304894 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304889.P11090074974658995876

/-!
# A304890: Number of nX4 0..1 arrays with every element unequal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304890, there is no canonical definition to state claims against.
-/

/-! ## A304890.P13629748852620504488

`A304894(∑[n+3]+7)`
-/

namespace A304890.P13629748852620504488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304890.P13629748852620504488

/-! ## A304890.P13578832135526639372

`A316576(∑[n+3]+7)`
-/

namespace A304890.P13578832135526639372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A304890.P13578832135526639372

/-! ## A304890.P15464515905601286897

`record[gcd(A303913(n), A304894(n+2))]`
-/

namespace A304890.P15464515905601286897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A303913 n) (A304894 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304890.P15464515905601286897

/-! ## A304890.P11780351392832580204

`A316576(A046691(n+1)+8)+char[20]`
-/

namespace A304890.P11780351392832580204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (A046691 (n + 1) + 8).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A304890.P11780351392832580204

/-! ## A304890.P11932536127084965693

`A304894(A167614(n+2)+1)%A304897(n+1)`
-/

namespace A304890.P11932536127084965693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304894 (A167614 (n + 2) + 1).toNat) (A304897 (n + 1))

end

end A304890.P11932536127084965693

/-!
# A304891: Number of nX5 0..1 arrays with every element unequal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304891, there is no canonical definition to state claims against.
-/

/-! ## A304891.P8541502263823174067

`A304894(A167499(n+3))`
-/

namespace A304891.P8541502263823174067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A167499 (n + 3)).toNat

end

end A304891.P8541502263823174067

/-! ## A304891.P8243346632917913191

`A304894(A155212(n)+13)`
-/

namespace A304891.P8243346632917913191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A155212 n + 13).toNat

end

end A304891.P8243346632917913191

/-! ## A304891.P942833312658741763

`A304894(A056000(n)+15)`
-/

namespace A304891.P942833312658741763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A056000 n + 15).toNat

end

end A304891.P942833312658741763

/-! ## A304891.P667420885894514437

`A304894(eq[7, A066657(n)])`
-/

namespace A304891.P667420885894514437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304891.P667420885894514437

/-! ## A304891.P12244224706477712434

`A304894(∑[A020705(n)]+11)`
-/

namespace A304891.P12244224706477712434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (∑ j ∈ Finset.range (n + 1), f1 j + 11).toNat

end

end A304891.P12244224706477712434

/-!
# A304892: Number of nX6 0..1 arrays with every element unequal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304892, there is no canonical definition to state claims against.
-/

/-! ## A304892.P973637707527150597

`A304894(A166136(n+4))`
-/

namespace A304892.P973637707527150597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A166136 (n + 4)).toNat

end

end A304892.P973637707527150597

/-! ## A304892.P9046892344828636412

`A304894(A056115(n)+21)`
-/

namespace A304892.P9046892344828636412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A056115 n + 21).toNat

end

end A304892.P9046892344828636412

/-! ## A304892.P16660668697137634440

`A304894(A167499(n+4)+1)`
-/

namespace A304892.P16660668697137634440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A167499 (n + 4) + 1).toNat

end

end A304892.P16660668697137634440

/-! ## A304892.P5217701074129714366

`A304894(A167614(n+4)+3)`
-/

namespace A304892.P5217701074129714366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A167614 (n + 4) + 3).toNat

end

end A304892.P5217701074129714366

/-! ## A304892.P10342052208566140716

`A304894(A000124(n+5)+5)`
-/

namespace A304892.P10342052208566140716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A000124 (n + 5) + 5).toNat

end

end A304892.P10342052208566140716

/-!
# A304893: Number of nX7 0..1 arrays with every element unequal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304893, there is no canonical definition to state claims against.
-/

/-! ## A304893.P17113090054392413860

`A304894(A167487(n+5))`
-/

namespace A304893.P17113090054392413860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A167487 (n + 5)).toNat

end

end A304893.P17113090054392413860

/-! ## A304893.P10238180193992609123

`A304894(A056119(n)+28)`
-/

namespace A304893.P10238180193992609123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A056119 n + 28).toNat

end

end A304893.P10238180193992609123

/-! ## A304893.P5291621304183893949

`A304894(eq[11, A066657(n)])`
-/

namespace A304893.P5291621304183893949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A304893.P5291621304183893949

/-! ## A304893.P13957658683341609215

`A304894(A166136(n+5)+1)`
-/

namespace A304893.P13957658683341609215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A166136 (n + 5) + 1).toNat

end

end A304893.P13957658683341609215

/-! ## A304893.P1879218523888380223

`A304894(A133263(n+6)+5)`
-/

namespace A304893.P1879218523888380223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304894 (A133263 (n + 6) + 5).toNat

end

end A304893.P1879218523888380223

/-!
# A304894: T(n,k)=Number of nXk 0..1 arrays with every element unequal to 0, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304894, there is no canonical definition to state claims against.
-/

/-! ## A304894.P1094032433550603463

`A316576(∑[A010894(n)!])`
-/

namespace A304894.P1094032433550603463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A304894.P1094032433550603463

/-! ## A304894.P4946352050630240209

`A316576(A010894(n)!+n)`
-/

namespace A304894.P4946352050630240209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A304894.P4946352050630240209

/-! ## A304894.P13293419285403716465

`A316576(n+1)^cosh(A010894(n))`
-/

namespace A304894.P13293419285403716465
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A316576 (n + 1) : ℝ) ^ (Real.cosh (A010894 (n + 21) : ℝ))

end

end A304894.P13293419285403716465

/-! ## A304894.P9513069577647059529

`A316576(n+1)+A137579(A008327(n))`
-/

namespace A304894.P9513069577647059529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316576 (n + 1) + A137579 (A008327 n).toNat

end

end A304894.P9513069577647059529

/-! ## A304894.P15337506608411480366

`A204897(A323243(3*(n+1)))*A316576(n+1)`
-/

namespace A304894.P15337506608411480366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204897 (A323243 (3 * (n + 1))).toNat * A316576 (n + 1)

end

end A304894.P15337506608411480366

/-!
# A304895: Number of n X n 0..1 arrays with every element unequal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304895, there is no canonical definition to state claims against.
-/

/-! ## A304895.P6917321183059162547

`A304901(∑[4*n]+1)`
-/

namespace A304895.P6917321183059162547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A304895.P6917321183059162547

/-! ## A304895.P6447035434065625036

`and(-1, A304901(A001844(n)))`
-/

namespace A304895.P6447035434065625036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A304901 (A001844 n).toNat)

end

end A304895.P6447035434065625036

/-! ## A304895.P6726723461260811133

`record[A304901(A330613(n+1))]`
-/

namespace A304895.P6726723461260811133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304895.P6726723461260811133

/-! ## A304895.P8254752279323535839

`record[A003982(n)*A304901(n+1)]`
-/

namespace A304895.P8254752279323535839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A304901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A304895.P8254752279323535839

/-! ## A304895.P17788045238373701345

`A332281(n)+A304901(A001844(n))`
-/

namespace A304895.P17788045238373701345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332281 n + A304901 (A001844 n).toNat

end

end A304895.P17788045238373701345

/-!
# A304896: Number of nX3 0..1 arrays with every element unequal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304896, there is no canonical definition to state claims against.
-/

/-! ## A304896.P17985172914823682590

`A304901(∑[n+2]+4)`
-/

namespace A304896.P17985172914823682590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A304896.P17985172914823682590

/-! ## A304896.P17878605504820747121

`A304901(A167614(n+1))+A185203(n)`
-/

namespace A304896.P17878605504820747121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A167614 (n + 1)).toNat + A185203 n

end

end A304896.P17878605504820747121

/-! ## A304896.P7730110426227051904

`A304901(A167614(n+1))+A185284(n)`
-/

namespace A304896.P7730110426227051904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A167614 (n + 1)).toNat + A185284 n

end

end A304896.P7730110426227051904

/-! ## A304896.P3219532207912971024

`A304901(A167614(n+1))^A178334(n)`
-/

namespace A304896.P3219532207912971024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304901 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A304896.P3219532207912971024

/-! ## A304896.P10618374082731161067

`A304901(A167614(n+1))%A017262(n)`
-/

namespace A304896.P10618374082731161067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304901 (A167614 (n + 1)).toNat) (A017262 n)

end

end A304896.P10618374082731161067

/-!
# A304897: Number of nX4 0..1 arrays with every element unequal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304897, there is no canonical definition to state claims against.
-/

/-! ## A304897.P7011619795657357917

`A304901(A374004(n+1))`
-/

namespace A304897.P7011619795657357917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A374004 (n + 1)).toNat

end

end A304897.P7011619795657357917

/-! ## A304897.P14782101658571320902

`A304901(A141214(n)+7)`
-/

namespace A304897.P14782101658571320902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A141214 n + 7).toNat

end

end A304897.P14782101658571320902

/-! ## A304897.P11216532587554611905

`A304901(A052905(n)+9)`
-/

namespace A304897.P11216532587554611905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A052905 n + 9).toNat

end

end A304897.P11216532587554611905

/-! ## A304897.P18444612285302326602

`A304901(A055999(n)+10)`
-/

namespace A304897.P18444612285302326602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A055999 n + 10).toNat

end

end A304897.P18444612285302326602

/-! ## A304897.P4166263131418185394

`A304901(A167614(n+2)+1)`
-/

namespace A304897.P4166263131418185394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A167614 (n + 2) + 1).toNat

end

end A304897.P4166263131418185394

/-!
# A304898: Number of nX5 0..1 arrays with every element unequal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304898, there is no canonical definition to state claims against.
-/

/-! ## A304898.P15123963798069702366

`A304901(A374005(n+1))`
-/

namespace A304898.P15123963798069702366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A374005 (n + 1)).toNat

end

end A304898.P15123963798069702366

/-! ## A304898.P5073861730746728497

`A304901(A167499(n+3))`
-/

namespace A304898.P5073861730746728497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A167499 (n + 3)).toNat

end

end A304898.P5073861730746728497

/-! ## A304898.P10357960621661126521

`A304901(A155212(n)+13)`
-/

namespace A304898.P10357960621661126521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A155212 n + 13).toNat

end

end A304898.P10357960621661126521

/-! ## A304898.P983114759428953848

`A304901(A056000(n)+15)`
-/

namespace A304898.P983114759428953848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A056000 n + 15).toNat

end

end A304898.P983114759428953848

/-! ## A304898.P10458447933590318468

`A304901(Δ[A264443(n)])`
-/

namespace A304898.P10458447933590318468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (f1 (n + 1) - f1 n).toNat

end

end A304898.P10458447933590318468

/-!
# A304899: Number of nX6 0..1 arrays with every element unequal to 1, 2, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A304899, there is no canonical definition to state claims against.
-/

/-! ## A304899.P433518739444865712

`A304901(∑[n+5]+16)`
-/

namespace A304899.P433518739444865712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A304899.P433518739444865712

/-! ## A304899.P8519157121851931570

`A304901(A166136(n+4))+A184955(n)`
-/

namespace A304899.P8519157121851931570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A166136 (n + 4)).toNat + A184955 n

end

end A304899.P8519157121851931570

/-! ## A304899.P7847697692037101327

`A304901(A133263(n+5)+4)+A037881(A001055(n+1))`
-/

namespace A304899.P7847697692037101327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304901 (A133263 (n + 5) + 4).toNat + A037881 (A001055 (n + 1)).toNat

end

end A304899.P7847697692037101327

/-! ## A304899.P6584993906196240587

`A304901(A133263(n+5)+4)%A003946(A050936(n+1))`
-/

namespace A304899.P6584993906196240587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304901 (A133263 (n + 5) + 4).toNat) (A003946 (A050936 (n + 1)).toNat)

end

end A304899.P6584993906196240587

/-! ## A304899.P6418028871678949660

`A353481(n+1)+A304901(A052905(n+3))`
-/

namespace A304899.P6418028871678949660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (n + 1) + A304901 (A052905 (n + 3)).toNat

end

end A304899.P6418028871678949660

