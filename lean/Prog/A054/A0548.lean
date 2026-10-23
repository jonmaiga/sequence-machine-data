import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C026
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A054800: First term of balanced prime quartets: p(m+1)-p(m) = p(m+2)-p(m+1) = p(m+3)-p(m+2).

The programs for A054800, there is no canonical definition to state claims against.
-/

/-! ## A054800.P1910382785316368522

`2*A054801(n+1)-A054802(n+1)`
-/

namespace A054800.P1910382785316368522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054801 (n + 1) - A054802 (n + 1)

end

end A054800.P1910382785316368522

/-! ## A054800.P11889224411876787682

`(3*A054802(n+1))%A054803(n+1)`
-/

namespace A054800.P11889224411876787682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A054802 (n + 1)) (A054803 (n + 1))

end

end A054800.P11889224411876787682

/-! ## A054800.P1742537544709089226

`A054801(n+1)+A054802(n+1)-A054803(n+1)`
-/

namespace A054800.P1742537544709089226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1) + (A054802 (n + 1) - A054803 (n + 1))

end

end A054800.P1742537544709089226

/-! ## A054800.P11707542772443458174

`A122535(A037204(n))`
-/

namespace A054800.P11707542772443458174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (A037204 n).toNat

end

end A054800.P11707542772443458174

/-! ## A054800.P7698010108251208696

`∩[A122535(n+1), A354284(n+1)]`
-/

namespace A054800.P7698010108251208696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054800.P7698010108251208696

/-! ## A054800.P6934956696558249016

`A054801(n+1)-A117217(A037204(n))`
-/

namespace A054800.P6934956696558249016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1) - A117217 (A037204 n).toNat

end

end A054800.P6934956696558249016

/-! ## A054800.P16522154112170273366

`A054802(n+1)-2*A117217(A037204(n))`
-/

namespace A054800.P16522154112170273366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054802 (n + 1) - 2 * A117217 (A037204 n).toNat

end

end A054800.P16522154112170273366

/-! ## A054800.P2778798998235618043

`∩[A022885(n+1), A122535(n+1)]`
-/

namespace A054800.P2778798998235618043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054800.P2778798998235618043

/-! ## A054800.P17409600273905870757

`∩[A022885(n+1), A354284(n+1)]`
-/

namespace A054800.P17409600273905870757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022885 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354284 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054800.P17409600273905870757

/-! ## A054800.P12457448353279330509

`∩[A122535(n+1), A258029(n+1)]`
-/

namespace A054800.P12457448353279330509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054800.P12457448353279330509

/-!
# A054801: Second term of balanced prime quartets: p(m)-p(m-1) = p(m+1)-p(m) = p(m+2)-p(m+1).

The programs for A054801, there is no canonical definition to state claims against.
-/

/-! ## A054801.P4562927088148201311

`2*A054802(n+1)-A054803(n+1)`
-/

namespace A054801.P4562927088148201311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054802 (n + 1) - A054803 (n + 1)

end

end A054801.P4562927088148201311

/-! ## A054801.P4746768674046203141

`(A054802(n+1)+A054800(n+1))/2`
-/

namespace A054801.P4746768674046203141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054802 (n + 1) + A054800 (n + 1) : ℚ) / 2

end

end A054801.P4746768674046203141

/-! ## A054801.P13901301398819649158

`A054800(n+1)+A054803(n+1)-A054802(n+1)`
-/

namespace A054801.P13901301398819649158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1) + (A054803 (n + 1) - A054802 (n + 1))

end

end A054801.P13901301398819649158

/-! ## A054801.P11679120941235728604

`A006562(A037204(n))`
-/

namespace A054801.P11679120941235728604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (A037204 n).toNat

end

end A054801.P11679120941235728604

/-! ## A054801.P126074014082745809

`A122535(A037204(n)+1)`
-/

namespace A054801.P126074014082745809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (A037204 n + 1).toNat

end

end A054801.P126074014082745809

/-! ## A054801.P14948202429674043769

`∩[A006562(n+1), A122535(n+1)]`
-/

namespace A054801.P14948202429674043769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P14948202429674043769

/-! ## A054801.P8896163454222264778

`A117217(A037204(n))+A054800(n+1)`
-/

namespace A054801.P8896163454222264778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (A037204 n).toNat + A054800 (n + 1)

end

end A054801.P8896163454222264778

/-! ## A054801.P1412002325815719422

`A054802(n+1)-A117217(A037204(n))`
-/

namespace A054801.P1412002325815719422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054802 (n + 1) - A117217 (A037204 n).toNat

end

end A054801.P1412002325815719422

/-! ## A054801.P11634075376549437696

`∩[A122535(n+1)+A117217(n+1), A122535(n+1)]`
-/

namespace A054801.P11634075376549437696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + A117217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P11634075376549437696

/-! ## A054801.P2838703706895686790

`∩[A006562(n+1), A139313(n+1)]`
-/

namespace A054801.P2838703706895686790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P2838703706895686790

/-! ## A054801.P4616141294882315228

`∩[A122535(n+1), A139313(n+1)]`
-/

namespace A054801.P4616141294882315228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P4616141294882315228

/-! ## A054801.P7101503505443031155

`∩[A139313(n+1), A349793(n+1)]`
-/

namespace A054801.P7101503505443031155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P7101503505443031155

/-! ## A054801.P5065921063510144614

`∩[A122535(n+1), A225494(n+1)]`
-/

namespace A054801.P5065921063510144614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P5065921063510144614

/-! ## A054801.P15235575609241783556

`∩[A139313(n+1), A225494(n+1)]`
-/

namespace A054801.P15235575609241783556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P15235575609241783556

/-! ## A054801.P16024357223271610129

`∩[A006562(n+1), A373299(n+1)]`
-/

namespace A054801.P16024357223271610129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P16024357223271610129

/-! ## A054801.P4239837838782387822

`∩[A071680(n+1), A373299(n+1)]`
-/

namespace A054801.P4239837838782387822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P4239837838782387822

/-! ## A054801.P13000626365737768281

`∩[A122535(n+1), A373299(n+1)]`
-/

namespace A054801.P13000626365737768281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P13000626365737768281

/-! ## A054801.P6819449685863039299

`∩[A139313(n+1), A373299(n+1)]`
-/

namespace A054801.P6819449685863039299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P6819449685863039299

/-! ## A054801.P7584363137896248053

`∩[A225494(n+1), A373299(n+1)]`
-/

namespace A054801.P7584363137896248053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373299 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054801.P7584363137896248053

/-! ## A054801.P15033263519741750001

`p?[gcd(A006562(n+1), A122535(n+2))]`
-/

namespace A054801.P15033263519741750001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006562 (n + 1)) (A122535 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054801.P15033263519741750001

/-!
# A054802: Third term of balanced prime quartets: p(m-1)-p(m-2) = p(m)-p(m-1) = p(m+1)-p(m).

The programs for A054802, there is no canonical definition to state claims against.
-/

/-! ## A054802.P10356945529806308840

`2*A054801(n+1)-A054800(n+1)`
-/

namespace A054802.P10356945529806308840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054801 (n + 1) - A054800 (n + 1)

end

end A054802.P10356945529806308840

/-! ## A054802.P6035844788033066565

`(A054803(n+1)+A054801(n+1))/2`
-/

namespace A054802.P6035844788033066565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054803 (n + 1) + A054801 (n + 1) : ℚ) / 2

end

end A054802.P6035844788033066565

/-! ## A054802.P4468303349720917691

`A181424(A037204(n))`
-/

namespace A054802.P4468303349720917691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (A037204 n).toNat

end

end A054802.P4468303349720917691

/-! ## A054802.P12834288654445485793

`A006562(A037204(n)+1)`
-/

namespace A054802.P12834288654445485793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (A037204 n + 1).toNat

end

end A054802.P12834288654445485793

/-! ## A054802.P1861582433746181653

`∩[A006562(n+1), A181424(n+1)]`
-/

namespace A054802.P1861582433746181653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054802.P1861582433746181653

/-! ## A054802.P7051766279836155592

`A117217(A037204(n))+A054801(n+1)`
-/

namespace A054802.P7051766279836155592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (A037204 n).toNat + A054801 (n + 1)

end

end A054802.P7051766279836155592

/-! ## A054802.P9807592683257606252

`A054800(n+1)+2*A117217(A037204(n))`
-/

namespace A054802.P9807592683257606252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054800 (n + 1) + 2 * A117217 (A037204 n).toNat

end

end A054802.P9807592683257606252

/-! ## A054802.P7343034406047711040

`∩[A181424(n+1), A225494(n+1)]`
-/

namespace A054802.P7343034406047711040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054802.P7343034406047711040

/-! ## A054802.P6379007820484947427

`∩[A075540(n+1), A181424(n+1)]`
-/

namespace A054802.P6379007820484947427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054802.P6379007820484947427

/-!
# A054803: Fourth term of balanced prime quartets: p(m-2)-p(m-3) = p(m-1)-p(m-2) = p(m)-p(m-1).

The programs for A054803, there is no canonical definition to state claims against.
-/

/-! ## A054803.P12315093549512737512

`2*A054802(n+1)-A054801(n+1)`
-/

namespace A054803.P12315093549512737512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054802 (n + 1) - A054801 (n + 1)

end

end A054803.P12315093549512737512

/-! ## A054803.P1844929197888308891

`A054801(n+1)+A054802(n+1)-A054800(n+1)`
-/

namespace A054803.P1844929197888308891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1) + (A054802 (n + 1) - A054800 (n + 1))

end

end A054803.P1844929197888308891

/-! ## A054803.P11169949760859942214

`A181424(A037204(n)+1)`
-/

namespace A054803.P11169949760859942214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181424 (A037204 n + 1).toNat

end

end A054803.P11169949760859942214

/-! ## A054803.P12870201412375822464

`A117217(A037204(n))+A054802(n+1)`
-/

namespace A054803.P12870201412375822464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117217 (A037204 n).toNat + A054802 (n + 1)

end

end A054803.P12870201412375822464

/-! ## A054803.P10434788678383294668

`A054801(n+1)+2*A117217(A037204(n))`
-/

namespace A054803.P10434788678383294668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1) + 2 * A117217 (A037204 n).toNat

end

end A054803.P10434788678383294668

/-! ## A054803.P11497532446386487399

`A054801(n+1)+A054802(n+1)-A122535(A037204(n))`
-/

namespace A054803.P11497532446386487399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054801 (n + 1) + (A054802 (n + 1) - A122535 (A037204 n).toNat)

end

end A054803.P11497532446386487399

/-!
# A054804: First term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

The programs for A054804, the canonical program `A054804.P3151094855790563465` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054804 has offset 1).

The definition of A054804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054804.P3151094855790563465

`A000040(A000720(A054805(n+1)-1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A054804

/-- `A000040(A000720(A054805(n+1)-1))` -/
def P3151094855790563465.Spec : Prop :=
  ∀ n, P3151094855790563465.a n = A054804 (n + 1)

theorem P3151094855790563465.correct : P3151094855790563465.Spec := by
  intro n
  simp only [A054804, Nat.add_sub_cancel]

end A054804

/-! ## A054804.P16586882882171176566

`A000040(A000720(A054806(n+1))-2)`
-/

namespace A054804.P16586882882171176566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054806 (n + 1)).toNat - 2).toNat

end

end A054804.P16586882882171176566

namespace A054804

/-- `A000040(A000720(A054806(n+1))-2)` -/
def P16586882882171176566.Spec : Prop :=
  ∀ n, P16586882882171176566.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P10720086554513199865

`A268674(p?[A054805(n+1)])`
-/

namespace A054804.P10720086554513199865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054804.P10720086554513199865

namespace A054804

/-- `A268674(p?[A054805(n+1)])` -/
def P10720086554513199865.Spec : Prop :=
  ∀ n, P10720086554513199865.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P8440861676380387241

`A268674(or(1, A054805(n+1)))`
-/

namespace A054804.P8440861676380387241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.lor 1 (A054805 (n + 1))).toNat

end

end A054804.P8440861676380387241

namespace A054804

/-- `A268674(or(1, A054805(n+1)))` -/
def P8440861676380387241.Spec : Prop :=
  ∀ n, P8440861676380387241.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P17974951876240568740

`A268674(2*A054805(n+1)-A054805(n+1))`
-/

namespace A054804.P17974951876240568740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (2 * A054805 (n + 1) - A054805 (n + 1)).toNat

end

end A054804.P17974951876240568740

namespace A054804

/-- `A268674(2*A054805(n+1)-A054805(n+1))` -/
def P17974951876240568740.Spec : Prop :=
  ∀ n, P17974951876240568740.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P13569744091130926980

`A000040(A079067(p?[A054805(n+1)]))`
-/

namespace A054804.P13569744091130926980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A079067 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054804.P13569744091130926980

namespace A054804

/-- `A000040(A079067(p?[A054805(n+1)]))` -/
def P13569744091130926980.Spec : Prop :=
  ∀ n, P13569744091130926980.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P3158520724656505811

`A000040(A084360(p?[A054806(n+1)]))`
-/

namespace A054804.P3158520724656505811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084360 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054804.P3158520724656505811

namespace A054804

/-- `A000040(A084360(p?[A054806(n+1)]))` -/
def P3158520724656505811.Spec : Prop :=
  ∀ n, P3158520724656505811.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P4231040373155129155

`A290099(p?[A054805(n+1)])`
-/

namespace A054804.P4231040373155129155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054804.P4231040373155129155

namespace A054804

/-- `A290099(p?[A054805(n+1)])` -/
def P4231040373155129155.Spec : Prop :=
  ∀ n, P4231040373155129155.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P15707300531182556383

`A268674(2*A054805(n+1))`
-/

namespace A054804.P15707300531182556383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (2 * A054805 (n + 1)).toNat

end

end A054804.P15707300531182556383

namespace A054804

/-- `A268674(2*A054805(n+1))` -/
def P15707300531182556383.Spec : Prop :=
  ∀ n, P15707300531182556383.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P17053457817336166291

`A290099(or(1, A054805(n+1)))`
-/

namespace A054804.P17053457817336166291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (Int.lor 1 (A054805 (n + 1))).toNat

end

end A054804.P17053457817336166291

namespace A054804

/-- `A290099(or(1, A054805(n+1)))` -/
def P17053457817336166291.Spec : Prop :=
  ∀ n, P17053457817336166291.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P11951747771651449

`A033302(A054806(n+1))`
-/

namespace A054804.P11951747771651449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054806 (n + 1)).toNat

end

end A054804.P11951747771651449

namespace A054804

/-- `A033302(A054806(n+1))` -/
def P11951747771651449.Spec : Prop :=
  ∀ n, P11951747771651449.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P16187112530949389420

`A064989(p?[A054805(n+1)])`
-/

namespace A054804.P16187112530949389420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054804.P16187112530949389420

namespace A054804

/-- `A064989(p?[A054805(n+1)])` -/
def P16187112530949389420.Spec : Prop :=
  ∀ n, P16187112530949389420.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P6344712383410498872

`A283463(A054805(n+1)+1)`
-/

namespace A054804.P6344712383410498872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A054805 (n + 1) + 1).toNat

end

end A054804.P6344712383410498872

namespace A054804

/-- `A283463(A054805(n+1)+1)` -/
def P6344712383410498872.Spec : Prop :=
  ∀ n, P6344712383410498872.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P5379806290718890299

`A334194(A054805(n+1)-1)`
-/

namespace A054804.P5379806290718890299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334194 (A054805 (n + 1) - 1).toNat

end

end A054804.P5379806290718890299

namespace A054804

/-- `A334194(A054805(n+1)-1)` -/
def P5379806290718890299.Spec : Prop :=
  ∀ n, P5379806290718890299.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P9464284895952369428

`A064989(or(1, A054805(n+1)))`
-/

namespace A054804.P9464284895952369428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.lor 1 (A054805 (n + 1))).toNat

end

end A054804.P9464284895952369428

namespace A054804

/-- `A064989(or(1, A054805(n+1)))` -/
def P9464284895952369428.Spec : Prop :=
  ∀ n, P9464284895952369428.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P2378738029602981917

`A000040(A003963(A054805(n+1))-1)`
-/

namespace A054804.P2378738029602981917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003963 (A054805 (n + 1)).toNat - 1).toNat

end

end A054804.P2378738029602981917

namespace A054804

/-- `A000040(A003963(A054805(n+1))-1)` -/
def P2378738029602981917.Spec : Prop :=
  ∀ n, P2378738029602981917.a n = A054804 (n + 1)

end A054804

/-! ## A054804.P5023636988796206490

`A064989(A054805(n+1))*A086435(A000040(n+1))`
-/

namespace A054804.P5023636988796206490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A054805 (n + 1)).toNat * A086435 (A000040 (n + 1)).toNat

end

end A054804.P5023636988796206490

namespace A054804

/-- `A064989(A054805(n+1))*A086435(A000040(n+1))` -/
def P5023636988796206490.Spec : Prop :=
  ∀ n, P5023636988796206490.a n = A054804 (n + 1)

end A054804

/-!
# A054805: Second term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

The programs for A054805, the canonical program `A054805.P10064582825251295720` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054805 has offset 1).

The definition of A054805 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054805.P10064582825251295720

`∩[A051634(n+1), A147812(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A054805

/-- `∩[A051634(n+1), A147812(n+1)]` -/
def P10064582825251295720.Spec : Prop :=
  ∀ n, (P10064582825251295720.a n : ℤ) = A054805 (n + 1)

theorem P10064582825251295720.correct : P10064582825251295720.Spec := by
  intro n
  simp only [A054805, Nat.add_sub_cancel]

end A054805

/-! ## A054805.P1194002949172679930

`A151800(A054804(n+1))`
-/

namespace A054805.P1194002949172679930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054804 (n + 1)).toNat

end

end A054805.P1194002949172679930

namespace A054805

/-- `A151800(A054804(n+1))` -/
def P1194002949172679930.Spec : Prop :=
  ∀ n, P1194002949172679930.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P5500689249314034787

`A000040(A000720(A054804(n+1))+1)`
-/

namespace A054805.P5500689249314034787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054804 (n + 1)).toNat + 1).toNat

end

end A054805.P5500689249314034787

namespace A054805

/-- `A000040(A000720(A054804(n+1))+1)` -/
def P5500689249314034787.Spec : Prop :=
  ∀ n, P5500689249314034787.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P14583396462528396331

`A000040(A000720(A054806(n+1)-1))`
-/

namespace A054805.P14583396462528396331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054806 (n + 1) - 1).toNat).toNat

end

end A054805.P14583396462528396331

namespace A054805

/-- `A000040(A000720(A054806(n+1)-1))` -/
def P14583396462528396331.Spec : Prop :=
  ∀ n, P14583396462528396331.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P638286632446493286

`∩[A147812(n+1), A225493(n+1)]`
-/

namespace A054805.P638286632446493286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054805.P638286632446493286

namespace A054805

/-- `∩[A147812(n+1), A225493(n+1)]` -/
def P638286632446493286.Spec : Prop :=
  ∀ n, (P638286632446493286.a n : ℤ) = A054805 (n + 1)

end A054805

/-! ## A054805.P12453464059693933383

`∩[A147812(n+1), A264719(n+1)]`
-/

namespace A054805.P12453464059693933383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054805.P12453464059693933383

namespace A054805

/-- `∩[A147812(n+1), A264719(n+1)]` -/
def P12453464059693933383.Spec : Prop :=
  ∀ n, (P12453464059693933383.a n : ℤ) = A054805 (n + 1)

end A054805

/-! ## A054805.P17994661862336715327

`A054804(n+1)-A347238(p?[A054804(n+1)])`
-/

namespace A054805.P17994661862336715327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1) - A347238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054805.P17994661862336715327

namespace A054805

/-- `A054804(n+1)-A347238(p?[A054804(n+1)])` -/
def P17994661862336715327.Spec : Prop :=
  ∀ n, P17994661862336715327.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P16347992288628959045

`A020639(A054804(n+1)-A347238(A054804(n+1)))`
-/

namespace A054805.P16347992288628959045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A054804 (n + 1) - A347238 (A054804 (n + 1)).toNat).toNat

end

end A054805.P16347992288628959045

namespace A054805

/-- `A020639(A054804(n+1)-A347238(A054804(n+1)))` -/
def P16347992288628959045.Spec : Prop :=
  ∀ n, P16347992288628959045.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P15468097613906108375

`A000040(A084360(A054806(n+1))+1)`
-/

namespace A054805.P15468097613906108375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A084360 (A054806 (n + 1)).toNat + 1).toNat

end

end A054805.P15468097613906108375

namespace A054805

/-- `A000040(A084360(A054806(n+1))+1)` -/
def P15468097613906108375.Spec : Prop :=
  ∀ n, P15468097613906108375.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P13148475730396681369

`A033302(A054807(n+1))`
-/

namespace A054805.P13148475730396681369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054807 (n + 1)).toNat

end

end A054805.P13148475730396681369

namespace A054805

/-- `A033302(A054807(n+1))` -/
def P13148475730396681369.Spec : Prop :=
  ∀ n, P13148475730396681369.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P11577682837077601879

`A003961(p?[A054804(n+1)])`
-/

namespace A054805.P11577682837077601879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054805.P11577682837077601879

namespace A054805

/-- `A003961(p?[A054804(n+1)])` -/
def P11577682837077601879.Spec : Prop :=
  ∀ n, P11577682837077601879.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P1645296207155593736

`A064989(p?[A054806(n+1)])`
-/

namespace A054805.P1645296207155593736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054805.P1645296207155593736

namespace A054805

/-- `A064989(p?[A054806(n+1)])` -/
def P1645296207155593736.Spec : Prop :=
  ∀ n, P1645296207155593736.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P3878319163146778495

`A033302(A054806(n+1)+1)`
-/

namespace A054805.P3878319163146778495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054806 (n + 1) + 1).toNat

end

end A054805.P3878319163146778495

namespace A054805

/-- `A033302(A054806(n+1)+1)` -/
def P3878319163146778495.Spec : Prop :=
  ∀ n, P3878319163146778495.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P5223121193344920925

`A283463(A054806(n+1)+1)`
-/

namespace A054805.P5223121193344920925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A054806 (n + 1) + 1).toNat

end

end A054805.P5223121193344920925

namespace A054805

/-- `A283463(A054806(n+1)+1)` -/
def P5223121193344920925.Spec : Prop :=
  ∀ n, P5223121193344920925.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P11510155571205495373

`A007917(A054806(n+1)-1)`
-/

namespace A054805.P11510155571205495373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A054806 (n + 1) - 1).toNat

end

end A054805.P11510155571205495373

namespace A054805

/-- `A007917(A054806(n+1)-1)` -/
def P11510155571205495373.Spec : Prop :=
  ∀ n, P11510155571205495373.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P11599403118406107666

`A253885(A054804(n+1)-1)+1`
-/

namespace A054805.P11599403118406107666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253885 (A054804 (n + 1) - 1).toNat + 1

end

end A054805.P11599403118406107666

namespace A054805

/-- `A253885(A054804(n+1)-1)+1` -/
def P11599403118406107666.Spec : Prop :=
  ∀ n, P11599403118406107666.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P7582287216029193338

`A347238(2*A054804(n+1))+A054804(n+1)`
-/

namespace A054805.P7582287216029193338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347238 (2 * A054804 (n + 1)).toNat + A054804 (n + 1)

end

end A054805.P7582287216029193338

namespace A054805

/-- `A347238(2*A054804(n+1))+A054804(n+1)` -/
def P7582287216029193338.Spec : Prop :=
  ∀ n, P7582287216029193338.a n = A054805 (n + 1)

end A054805

/-! ## A054805.P9928853289143489792

`A003961(2*A054804(n+1)-A054804(n+1))`
-/

namespace A054805.P9928853289143489792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A054804 (n + 1) - A054804 (n + 1)).toNat

end

end A054805.P9928853289143489792

namespace A054805

/-- `A003961(2*A054804(n+1)-A054804(n+1))` -/
def P9928853289143489792.Spec : Prop :=
  ∀ n, P9928853289143489792.a n = A054805 (n + 1)

end A054805

/-!
# A054806: Third term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

The programs for A054806, the canonical program `A054806.P7730590133723137314` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054806 has offset 1).

The definition of A054806 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3024 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054806.P7730590133723137314

`∩[A051634(n+1), A358530(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A054806

/-- `∩[A051634(n+1), A358530(n+1)]` -/
def P7730590133723137314.Spec : Prop :=
  ∀ n, (P7730590133723137314.a n : ℤ) = A054806 (n + 1)

theorem P7730590133723137314.correct : P7730590133723137314.Spec := by
  intro n
  simp only [A054806, Nat.add_sub_cancel]

end A054806

/-! ## A054806.P2656139368869809236

`A151800(A054805(n+1))`
-/

namespace A054806.P2656139368869809236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054805 (n + 1)).toNat

end

end A054806.P2656139368869809236

namespace A054806

/-- `A151800(A054805(n+1))` -/
def P2656139368869809236.Spec : Prop :=
  ∀ n, P2656139368869809236.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P7815254449374201026

`A151800(A151800(A054804(n+1)))`
-/

namespace A054806.P7815254449374201026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A054804 (n + 1)).toNat).toNat

end

end A054806.P7815254449374201026

namespace A054806

/-- `A151800(A151800(A054804(n+1)))` -/
def P7815254449374201026.Spec : Prop :=
  ∀ n, P7815254449374201026.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P14682733505126604380

`A000040(A000720(A054805(n+1))+1)`
-/

namespace A054806.P14682733505126604380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054805 (n + 1)).toNat + 1).toNat

end

end A054806.P14682733505126604380

namespace A054806

/-- `A000040(A000720(A054805(n+1))+1)` -/
def P14682733505126604380.Spec : Prop :=
  ∀ n, P14682733505126604380.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P9744740589720092771

`A000040(A000720(A054804(n+1))+2)`
-/

namespace A054806.P9744740589720092771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054804 (n + 1)).toNat + 2).toNat

end

end A054806.P9744740589720092771

namespace A054806

/-- `A000040(A000720(A054804(n+1))+2)` -/
def P9744740589720092771.Spec : Prop :=
  ∀ n, P9744740589720092771.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P3759701790233599660

`∩[A225493(n+1), A358530(n+1)]`
-/

namespace A054806.P3759701790233599660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054806.P3759701790233599660

namespace A054806

/-- `∩[A225493(n+1), A358530(n+1)]` -/
def P3759701790233599660.Spec : Prop :=
  ∀ n, (P3759701790233599660.a n : ℤ) = A054806 (n + 1)

end A054806

/-! ## A054806.P5900096588038704755

`∩[A264719(n+1), A358530(n+1)]`
-/

namespace A054806.P5900096588038704755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054806.P5900096588038704755

namespace A054806

/-- `∩[A264719(n+1), A358530(n+1)]` -/
def P5900096588038704755.Spec : Prop :=
  ∀ n, (P5900096588038704755.a n : ℤ) = A054806 (n + 1)

end A054806

/-! ## A054806.P10707111374911339436

`A000040(A079067(A054805(n+1))+2)`
-/

namespace A054806.P10707111374911339436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A079067 (A054805 (n + 1)).toNat + 2).toNat

end

end A054806.P10707111374911339436

namespace A054806

/-- `A000040(A079067(A054805(n+1))+2)` -/
def P10707111374911339436.Spec : Prop :=
  ∀ n, P10707111374911339436.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P1763984587640563070

`A045966(A054804(n+1))`
-/

namespace A054806.P1763984587640563070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A054804 (n + 1)).toNat

end

end A054806.P1763984587640563070

namespace A054806

/-- `A045966(A054804(n+1))` -/
def P1763984587640563070.Spec : Prop :=
  ∀ n, P1763984587640563070.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P13152001919031699673

`A003961(p?[A054805(n+1)])`
-/

namespace A054806.P13152001919031699673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054806.P13152001919031699673

namespace A054806

/-- `A003961(p?[A054805(n+1)])` -/
def P13152001919031699673.Spec : Prop :=
  ∀ n, P13152001919031699673.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P14497244622546885763

`A064989(p?[A054807(n+1)])`
-/

namespace A054806.P14497244622546885763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054806.P14497244622546885763

namespace A054806

/-- `A064989(p?[A054807(n+1)])` -/
def P14497244622546885763.Spec : Prop :=
  ∀ n, P14497244622546885763.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P2322878775804426981

`A033302(A054807(n+1)+1)`
-/

namespace A054806.P2322878775804426981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054807 (n + 1) + 1).toNat

end

end A054806.P2322878775804426981

namespace A054806

/-- `A033302(A054807(n+1)+1)` -/
def P2322878775804426981.Spec : Prop :=
  ∀ n, P2322878775804426981.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P1083162993826815153

`A266620(A054805(n+1)+1)`
-/

namespace A054806.P1083162993826815153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 (A054805 (n + 1) + 1).toNat

end

end A054806.P1083162993826815153

namespace A054806

/-- `A266620(A054805(n+1)+1)` -/
def P1083162993826815153.Spec : Prop :=
  ∀ n, P1083162993826815153.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P9821867450689378949

`A283463(A054807(n+1)+1)`
-/

namespace A054806.P9821867450689378949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A054807 (n + 1) + 1).toNat

end

end A054806.P9821867450689378949

namespace A054806

/-- `A283463(A054807(n+1)+1)` -/
def P9821867450689378949.Spec : Prop :=
  ∀ n, P9821867450689378949.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P10246535954103455316

`A101300(A054805(n+1)-1)`
-/

namespace A054806.P10246535954103455316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A054805 (n + 1) - 1).toNat

end

end A054806.P10246535954103455316

namespace A054806

/-- `A101300(A054805(n+1)-1)` -/
def P10246535954103455316.Spec : Prop :=
  ∀ n, P10246535954103455316.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P6854699488865216944

`A334194(A054807(n+1)-1)`
-/

namespace A054806.P6854699488865216944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334194 (A054807 (n + 1) - 1).toNat

end

end A054806.P6854699488865216944

namespace A054806

/-- `A334194(A054807(n+1)-1)` -/
def P6854699488865216944.Spec : Prop :=
  ∀ n, P6854699488865216944.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P14181397176338777454

`A285639(A054805(2*n+1-n))`
-/

namespace A054806.P14181397176338777454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285639 (A054805 (2 * n + 1 - n)).toNat

end

end A054806.P14181397176338777454

namespace A054806

/-- `A285639(A054805(2*n+1-n))` -/
def P14181397176338777454.Spec : Prop :=
  ∀ n, P14181397176338777454.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P18147166538968980833

`A000040(A003963(A054805(n+1))+1)`
-/

namespace A054806.P18147166538968980833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003963 (A054805 (n + 1)).toNat + 1).toNat

end

end A054806.P18147166538968980833

namespace A054806

/-- `A000040(A003963(A054805(n+1))+1)` -/
def P18147166538968980833.Spec : Prop :=
  ∀ n, P18147166538968980833.a n = A054806 (n + 1)

end A054806

/-! ## A054806.P2221203003013946300

`A003961(2*A054805(n+1)-A054805(n+1))`
-/

namespace A054806.P2221203003013946300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A054805 (n + 1) - A054805 (n + 1)).toNat

end

end A054806.P2221203003013946300

namespace A054806

/-- `A003961(2*A054805(n+1)-A054805(n+1))` -/
def P2221203003013946300.Spec : Prop :=
  ∀ n, P2221203003013946300.a n = A054806 (n + 1)

end A054806

/-!
# A054807: Fourth term of strong prime quartets: prime(m+1)-prime(m) > prime(m+2)-prime(m+1) > prime(m+3)-prime(m+2).

The programs for A054807, the canonical program `A054807.P4206659024436802375` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054807 has offset 1).

The definition of A054807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054807.P4206659024436802375

`A151800(A054806(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A054807

/-- `A151800(A054806(n+1))` -/
def P4206659024436802375.Spec : Prop :=
  ∀ n, P4206659024436802375.a n = A054807 (n + 1)

theorem P4206659024436802375.correct : P4206659024436802375.Spec := by
  intro n
  simp only [A054807, Nat.add_sub_cancel]

end A054807

/-! ## A054807.P8865521306693683462

`A151800(A151800(A054805(n+1)))`
-/

namespace A054807.P8865521306693683462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A054805 (n + 1)).toNat).toNat

end

end A054807.P8865521306693683462

namespace A054807

/-- `A151800(A151800(A054805(n+1)))` -/
def P8865521306693683462.Spec : Prop :=
  ∀ n, P8865521306693683462.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P16886125031286357031

`A000040(A000720(A054806(n+1))+1)`
-/

namespace A054807.P16886125031286357031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054806 (n + 1)).toNat + 1).toNat

end

end A054807.P16886125031286357031

namespace A054807

/-- `A000040(A000720(A054806(n+1))+1)` -/
def P16886125031286357031.Spec : Prop :=
  ∀ n, P16886125031286357031.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P4206434473530403564

`A000040(A000720(A054805(n+1))+2)`
-/

namespace A054807.P4206434473530403564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054805 (n + 1)).toNat + 2).toNat

end

end A054807.P4206434473530403564

namespace A054807

/-- `A000040(A000720(A054805(n+1))+2)` -/
def P4206434473530403564.Spec : Prop :=
  ∀ n, P4206434473530403564.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P6303022318353274614

`A000040(A000720(A054804(n+1))+3)`
-/

namespace A054807.P6303022318353274614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054804 (n + 1)).toNat + 3).toNat

end

end A054807.P6303022318353274614

namespace A054807

/-- `A000040(A000720(A054804(n+1))+3)` -/
def P6303022318353274614.Spec : Prop :=
  ∀ n, P6303022318353274614.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P12541695554940685761

`A151800(A151800(A151800(A054804(n+1))))`
-/

namespace A054807.P12541695554940685761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A151800 (A054804 (n + 1)).toNat).toNat).toNat

end

end A054807.P12541695554940685761

namespace A054807

/-- `A151800(A151800(A151800(A054804(n+1))))` -/
def P12541695554940685761.Spec : Prop :=
  ∀ n, P12541695554940685761.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P2766902762458088129

`∑{d}[A054806(n+1), A003972(#)]`
-/

namespace A054807.P2766902762458088129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A054807.P2766902762458088129

namespace A054807

/-- `∑{d}[A054806(n+1), A003972(#)]` -/
def P2766902762458088129.Spec : Prop :=
  ∀ n, P2766902762458088129.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P1510401633998978340

`A074495(A054806(2*n+1-n))`
-/

namespace A054807.P1510401633998978340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (A054806 (2 * n + 1 - n)).toNat

end

end A054807.P1510401633998978340

namespace A054807

/-- `A074495(A054806(2*n+1-n))` -/
def P1510401633998978340.Spec : Prop :=
  ∀ n, P1510401633998978340.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P2770338997876406146

`A045968(A054804(n+1))`
-/

namespace A054807.P2770338997876406146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A054804 (n + 1)).toNat

end

end A054807.P2770338997876406146

namespace A054807

/-- `A045968(A054804(n+1))` -/
def P2770338997876406146.Spec : Prop :=
  ∀ n, P2770338997876406146.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P10895803825343307442

`A045966(A054805(n+1))`
-/

namespace A054807.P10895803825343307442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A054805 (n + 1)).toNat

end

end A054807.P10895803825343307442

namespace A054807

/-- `A045966(A054805(n+1))` -/
def P10895803825343307442.Spec : Prop :=
  ∀ n, P10895803825343307442.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P5729535404968330030

`A003961(p?[A054806(n+1)])`
-/

namespace A054807.P5729535404968330030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054807.P5729535404968330030

namespace A054807

/-- `A003961(p?[A054806(n+1)])` -/
def P5729535404968330030.Spec : Prop :=
  ∀ n, P5729535404968330030.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P2265633434827930214

`A101300(p?[A054805(n+1)])`
-/

namespace A054807.P2265633434827930214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054807.P2265633434827930214

namespace A054807

/-- `A101300(p?[A054805(n+1)])` -/
def P2265633434827930214.Spec : Prop :=
  ∀ n, P2265633434827930214.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P4087808755712313257

`A007918(A054806(n+1)+1)`
-/

namespace A054807.P4087808755712313257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A054806 (n + 1) + 1).toNat

end

end A054807.P4087808755712313257

namespace A054807

/-- `A007918(A054806(n+1)+1)` -/
def P4087808755712313257.Spec : Prop :=
  ∀ n, P4087808755712313257.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P16670686119557968553

`A101300(A054805(n+1)+1)`
-/

namespace A054807.P16670686119557968553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101300 (A054805 (n + 1) + 1).toNat

end

end A054807.P16670686119557968553

namespace A054807

/-- `A101300(A054805(n+1)+1)` -/
def P16670686119557968553.Spec : Prop :=
  ∀ n, P16670686119557968553.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P13168128146546305863

`A003961(∏{d}[A054806(n+1), #])`
-/

namespace A054807.P13168128146546305863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A054807.P13168128146546305863

namespace A054807

/-- `A003961(∏{d}[A054806(n+1), #])` -/
def P13168128146546305863.Spec : Prop :=
  ∀ n, P13168128146546305863.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P4203911801517717209

`A000040(A003963(A054805(n+1))+2)`
-/

namespace A054807.P4203911801517717209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A003963 (A054805 (n + 1)).toNat + 2).toNat

end

end A054807.P4203911801517717209

namespace A054807

/-- `A000040(A003963(A054805(n+1))+2)` -/
def P4203911801517717209.Spec : Prop :=
  ∀ n, P4203911801517717209.a n = A054807 (n + 1)

end A054807

/-! ## A054807.P1950607398694506129

`A003961(2*A054806(n+1)-A054806(n+1))`
-/

namespace A054807.P1950607398694506129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A054806 (n + 1) - A054806 (n + 1)).toNat

end

end A054807.P1950607398694506129

namespace A054807

/-- `A003961(2*A054806(n+1)-A054806(n+1))` -/
def P1950607398694506129.Spec : Prop :=
  ∀ n, P1950607398694506129.a n = A054807 (n + 1)

end A054807

/-!
# A054808: First term of strong prime quintets: p(m+1)-p(m) > p(m+2)-p(m+1) > p(m+3)-p(m+2) > p(m+4)-p(m+3).

The programs for A054808, the canonical program `A054808.P16746849068539512698` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054808 has offset 1).

The definition of A054808 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054808.P5987406569501436790

`A008578(∑{d}[A054809(n+1), A000720(#)])`
-/

namespace A054808.P5987406569501436790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A054808.P5987406569501436790

namespace A054808

/-- `A008578(∑{d}[A054809(n+1), A000720(#)])` -/
def P5987406569501436790.Spec : Prop :=
  ∀ n, P5987406569501436790.a n = A054808 (n + 1)

end A054808

/-! ## A054808.P16746849068539512698

`A008578(∑{d}[A054809(n+1), A061395(#)])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A054808

/-- `A008578(∑{d}[A054809(n+1), A061395(#)])` -/
def P16746849068539512698.Spec : Prop :=
  ∀ n, P16746849068539512698.a n = A054808 (n + 1)

theorem P16746849068539512698.correct : P16746849068539512698.Spec := by
  intro n
  simp only [A054808, Nat.add_sub_cancel]

end A054808

/-! ## A054808.P7591253297431047558

`A008578(∑{p}[A054809(n+1), A000720(#)])`
-/

namespace A054808.P7591253297431047558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A054808.P7591253297431047558

namespace A054808

/-- `A008578(∑{p}[A054809(n+1), A000720(#)])` -/
def P7591253297431047558.Spec : Prop :=
  ∀ n, P7591253297431047558.a n = A054808 (n + 1)

end A054808

/-! ## A054808.P11360030044272176095

`A008578(∑{p}[A054809(n+1), A061395(#)])`
-/

namespace A054808.P11360030044272176095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p).toNat

end

end A054808.P11360030044272176095

namespace A054808

/-- `A008578(∑{p}[A054809(n+1), A061395(#)])` -/
def P11360030044272176095.Spec : Prop :=
  ∀ n, P11360030044272176095.a n = A054808 (n + 1)

end A054808

/-! ## A054808.P9192357868490757257

`A000040(∑{d}[A054809(n+1), A000720(#)]-1)`
-/

namespace A054808.P9192357868490757257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d - 1).toNat

end

end A054808.P9192357868490757257

namespace A054808

/-- `A000040(∑{d}[A054809(n+1), A000720(#)]-1)` -/
def P9192357868490757257.Spec : Prop :=
  ∀ n, P9192357868490757257.a n = A054808 (n + 1)

end A054808

/-! ## A054808.P15071224235323888389

`A000040(∑{p}[A054809(n+1), A000720(#)]-1)`
-/

namespace A054808.P15071224235323888389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p - 1).toNat

end

end A054808.P15071224235323888389

namespace A054808

/-- `A000040(∑{p}[A054809(n+1), A000720(#)]-1)` -/
def P15071224235323888389.Spec : Prop :=
  ∀ n, P15071224235323888389.a n = A054808 (n + 1)

end A054808

/-! ## A054808.P14717157692514055153

`A000040(∑{p}[A054809(n+1), A061395(#)]-1)`
-/

namespace A054808.P14717157692514055153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p - 1).toNat

end

end A054808.P14717157692514055153

namespace A054808

/-- `A000040(∑{p}[A054809(n+1), A061395(#)]-1)` -/
def P14717157692514055153.Spec : Prop :=
  ∀ n, P14717157692514055153.a n = A054808 (n + 1)

end A054808

/-!
# A054809: Second term of strong prime 5-tuples: p(m)-p(m-1) > p(m+1)-p(m) > p(m+2)-p(m+1) > p(m+3)-p(m+2).

The programs for A054809, the canonical program `A054809.P8102903299398078397` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054809 has offset 1).

The definition of A054809 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054809.P11870959403528034913

`∩[A054804(n+1), A054805(n+1)]`
-/

namespace A054809.P11870959403528034913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054809.P11870959403528034913

namespace A054809

/-- `∩[A054804(n+1), A054805(n+1)]` -/
def P11870959403528034913.Spec : Prop :=
  ∀ n, (P11870959403528034913.a n : ℤ) = A054809 (n + 1)

end A054809

/-! ## A054809.P8102903299398078397

`p?[gcd(A054804(n+2), A054805(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A054809

/-- `p?[gcd(A054804(n+2), A054805(n+1))]` -/
def P8102903299398078397.Spec : Prop :=
  ∀ n, (P8102903299398078397.a n : ℤ) = A054809 (n + 1)

theorem P8102903299398078397.correct : P8102903299398078397.Spec := by
  intro n
  simp only [A054809, Nat.add_sub_cancel]

end A054809

/-! ## A054809.P7738262960554757526

`∩[A051634(n+1), A054804(n+1)]`
-/

namespace A054809.P7738262960554757526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054809.P7738262960554757526

namespace A054809

/-- `∩[A051634(n+1), A054804(n+1)]` -/
def P7738262960554757526.Spec : Prop :=
  ∀ n, (P7738262960554757526.a n : ℤ) = A054809 (n + 1)

end A054809

/-! ## A054809.P15576720231264157418

`A151800(A054808(n+1))`
-/

namespace A054809.P15576720231264157418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054808 (n + 1)).toNat

end

end A054809.P15576720231264157418

namespace A054809

/-- `A151800(A054808(n+1))` -/
def P15576720231264157418.Spec : Prop :=
  ∀ n, P15576720231264157418.a n = A054809 (n + 1)

end A054809

/-! ## A054809.P8200585321345012247

`A008578(A000720(p?[A054810(n+1)]))`
-/

namespace A054809.P8200585321345012247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054809.P8200585321345012247

namespace A054809

/-- `A008578(A000720(p?[A054810(n+1)]))` -/
def P8200585321345012247.Spec : Prop :=
  ∀ n, P8200585321345012247.a n = A054809 (n + 1)

end A054809

/-! ## A054809.P5199505609606060827

`A000040(A000720(A054810(n+1)-1))`
-/

namespace A054809.P5199505609606060827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054810 (n + 1) - 1).toNat).toNat

end

end A054809.P5199505609606060827

namespace A054809

/-- `A000040(A000720(A054810(n+1)-1))` -/
def P5199505609606060827.Spec : Prop :=
  ∀ n, P5199505609606060827.a n = A054809 (n + 1)

end A054809

/-! ## A054809.P6318445383832114417

`A000040(A000720(A054811(n+1))-2)`
-/

namespace A054809.P6318445383832114417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054811 (n + 1)).toNat - 2).toNat

end

end A054809.P6318445383832114417

namespace A054809

/-- `A000040(A000720(A054811(n+1))-2)` -/
def P6318445383832114417.Spec : Prop :=
  ∀ n, P6318445383832114417.a n = A054809 (n + 1)

end A054809

/-! ## A054809.P18391264206302784518

`A000040(A000720(xor(1, A054810(n+1))))`
-/

namespace A054809.P18391264206302784518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (Int.xor 1 (A054810 (n + 1))).toNat).toNat

end

end A054809.P18391264206302784518

namespace A054809

/-- `A000040(A000720(xor(1, A054810(n+1))))` -/
def P18391264206302784518.Spec : Prop :=
  ∀ n, P18391264206302784518.a n = A054809 (n + 1)

end A054809

/-! ## A054809.P18037654761063865600

`∩[A054804(n+1), A225493(n+1)]`
-/

namespace A054809.P18037654761063865600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054809.P18037654761063865600

namespace A054809

/-- `∩[A054804(n+1), A225493(n+1)]` -/
def P18037654761063865600.Spec : Prop :=
  ∀ n, (P18037654761063865600.a n : ℤ) = A054809 (n + 1)

end A054809

/-! ## A054809.P11618090006905809358

`A008578(abs(A329622(A054811(n+1))))`
-/

namespace A054809.P11618090006905809358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 |A329622 (A054811 (n + 1)).toNat|.toNat

end

end A054809.P11618090006905809358

namespace A054809

/-- `A008578(abs(A329622(A054811(n+1))))` -/
def P11618090006905809358.Spec : Prop :=
  ∀ n, P11618090006905809358.a n = A054809 (n + 1)

end A054809

/-! ## A054809.P15518520956474801617

`A008578(A329622(p?[A054811(n+1)]))`
-/

namespace A054809.P15518520956474801617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A329622 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054809.P15518520956474801617

namespace A054809

/-- `A008578(A329622(p?[A054811(n+1)]))` -/
def P15518520956474801617.Spec : Prop :=
  ∀ n, P15518520956474801617.a n = A054809 (n + 1)

end A054809

/-!
# A054810: Third term of strong prime 5-tuples: p(m-1)-p(m-2) > p(m)-p(m-1) > p(m+1)-p(m) > p(m+2)-p(m+1).

The programs for A054810, the canonical program `A054810.P16018535505625751100` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054810 has offset 1).

The definition of A054810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054810.P8395343016201956202

`∩[A054805(n+1), A054806(n+1)]`
-/

namespace A054810.P8395343016201956202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054810.P8395343016201956202

namespace A054810

/-- `∩[A054805(n+1), A054806(n+1)]` -/
def P8395343016201956202.Spec : Prop :=
  ∀ n, (P8395343016201956202.a n : ℤ) = A054810 (n + 1)

end A054810

/-! ## A054810.P16018535505625751100

`p?[gcd(A054805(n+2), A054806(n+1))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A054810

/-- `p?[gcd(A054805(n+2), A054806(n+1))]` -/
def P16018535505625751100.Spec : Prop :=
  ∀ n, (P16018535505625751100.a n : ℤ) = A054810 (n + 1)

theorem P16018535505625751100.correct : P16018535505625751100.Spec := by
  intro n
  simp only [A054810, Nat.add_sub_cancel]

end A054810

/-! ## A054810.P12235676276468090398

`∩[A054806(n+1), A147812(n+1)]`
-/

namespace A054810.P12235676276468090398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054810.P12235676276468090398

namespace A054810

/-- `∩[A054806(n+1), A147812(n+1)]` -/
def P12235676276468090398.Spec : Prop :=
  ∀ n, (P12235676276468090398.a n : ℤ) = A054810 (n + 1)

end A054810

/-! ## A054810.P10471451697323310034

`∩[A054805(n+1), A358530(n+1)]`
-/

namespace A054810.P10471451697323310034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054810.P10471451697323310034

namespace A054810

/-- `∩[A054805(n+1), A358530(n+1)]` -/
def P10471451697323310034.Spec : Prop :=
  ∀ n, (P10471451697323310034.a n : ℤ) = A054810 (n + 1)

end A054810

/-! ## A054810.P1495791276584515308

`A151800(A054809(n+1))`
-/

namespace A054810.P1495791276584515308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054809 (n + 1)).toNat

end

end A054810.P1495791276584515308

namespace A054810

/-- `A151800(A054809(n+1))` -/
def P1495791276584515308.Spec : Prop :=
  ∀ n, P1495791276584515308.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P15520943785580329197

`A151800(p?[A054809(Δ[n²]-n)])`
-/

namespace A054810.P15520943785580329197
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054810.P15520943785580329197

namespace A054810

/-- `A151800(p?[A054809(Δ[n²]-n)])` -/
def P15520943785580329197.Spec : Prop :=
  ∀ n, P15520943785580329197.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P9799624181643132151

`A151800(A151800(A054808(n+1)))`
-/

namespace A054810.P9799624181643132151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A054808 (n + 1)).toNat).toNat

end

end A054810.P9799624181643132151

namespace A054810

/-- `A151800(A151800(A054808(n+1)))` -/
def P9799624181643132151.Spec : Prop :=
  ∀ n, P9799624181643132151.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P14348882646815180307

`A008578(A000720(p?[A054811(n+1)]))`
-/

namespace A054810.P14348882646815180307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054810.P14348882646815180307

namespace A054810

/-- `A008578(A000720(p?[A054811(n+1)]))` -/
def P14348882646815180307.Spec : Prop :=
  ∀ n, P14348882646815180307.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P11836748648774840955

`A008578(A061395(p?[A054811(n+1)]))`
-/

namespace A054810.P11836748648774840955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054810.P11836748648774840955

namespace A054810

/-- `A008578(A061395(p?[A054811(n+1)]))` -/
def P11836748648774840955.Spec : Prop :=
  ∀ n, P11836748648774840955.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P1438530463275294691

`A045319(∑{d}[A054809(n+1), A000720(#)])`
-/

namespace A054810.P1438530463275294691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A054810.P1438530463275294691

namespace A054810

/-- `A045319(∑{d}[A054809(n+1), A000720(#)])` -/
def P1438530463275294691.Spec : Prop :=
  ∀ n, P1438530463275294691.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P6986775688605422266

`A000040(∑{d}[A054809(n+1), A000720(#)]+1)`
-/

namespace A054810.P6986775688605422266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d + 1).toNat

end

end A054810.P6986775688605422266

namespace A054810

/-- `A000040(∑{d}[A054809(n+1), A000720(#)]+1)` -/
def P6986775688605422266.Spec : Prop :=
  ∀ n, P6986775688605422266.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P13399476553182276244

`A000040(∑{p}[A054809(n+1), A000720(#)]+1)`
-/

namespace A054810.P13399476553182276244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p + 1).toNat

end

end A054810.P13399476553182276244

namespace A054810

/-- `A000040(∑{p}[A054809(n+1), A000720(#)]+1)` -/
def P13399476553182276244.Spec : Prop :=
  ∀ n, P13399476553182276244.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P2792101999471823585

`A000040(∑{p}[A054809(n+1), A061395(#)]+1)`
-/

namespace A054810.P2792101999471823585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p + 1).toNat

end

end A054810.P2792101999471823585

namespace A054810

/-- `A000040(∑{p}[A054809(n+1), A061395(#)]+1)` -/
def P2792101999471823585.Spec : Prop :=
  ∀ n, P2792101999471823585.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P7235476371589827095

`A300840(p?[A054811(n+1)])`
-/

namespace A054810.P7235476371589827095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054810.P7235476371589827095

namespace A054810

/-- `A300840(p?[A054811(n+1)])` -/
def P7235476371589827095.Spec : Prop :=
  ∀ n, P7235476371589827095.a n = A054810 (n + 1)

end A054810

/-! ## A054810.P17660088232419120025

`A300840(∑{p}[A054811(n+1), #])`
-/

namespace A054810.P17660088232419120025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A054810.P17660088232419120025

namespace A054810

/-- `A300840(∑{p}[A054811(n+1), #])` -/
def P17660088232419120025.Spec : Prop :=
  ∀ n, P17660088232419120025.a n = A054810 (n + 1)

end A054810

/-!
# A054811: Fourth term of strong prime quintets: p(m-2)-p(m-3) > p(m-1)-p(m-2) > p(m)-p(m-1) > p(m+1)-p(m).

The programs for A054811, the canonical program `A054811.P13221630901341236679` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054811 has offset 1).

The definition of A054811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2161 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054811.P11758153511088199844

`∩[A054806(n+1), A054807(n+1)]`
-/

namespace A054811.P11758153511088199844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054811.P11758153511088199844

namespace A054811

/-- `∩[A054806(n+1), A054807(n+1)]` -/
def P11758153511088199844.Spec : Prop :=
  ∀ n, (P11758153511088199844.a n : ℤ) = A054811 (n + 1)

end A054811

/-! ## A054811.P13221630901341236679

`p?[gcd(A054806(n+2), A054807(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A054811

/-- `p?[gcd(A054806(n+2), A054807(n+1))]` -/
def P13221630901341236679.Spec : Prop :=
  ∀ n, (P13221630901341236679.a n : ℤ) = A054811 (n + 1)

theorem P13221630901341236679.correct : P13221630901341236679.Spec := by
  intro n
  simp only [A054811, Nat.add_sub_cancel]

end A054811

/-! ## A054811.P3615846845017360458

`∩[A051634(n+1), A054807(n+1)]`
-/

namespace A054811.P3615846845017360458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054811.P3615846845017360458

namespace A054811

/-- `∩[A051634(n+1), A054807(n+1)]` -/
def P3615846845017360458.Spec : Prop :=
  ∀ n, (P3615846845017360458.a n : ℤ) = A054811 (n + 1)

end A054811

/-! ## A054811.P16074781279704437039

`A151800(A054810(n+1))`
-/

namespace A054811.P16074781279704437039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054810 (n + 1)).toNat

end

end A054811.P16074781279704437039

namespace A054811

/-- `A151800(A054810(n+1))` -/
def P16074781279704437039.Spec : Prop :=
  ∀ n, P16074781279704437039.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P14134107974936091098

`A151800(A151800(A054809(n+1)))`
-/

namespace A054811.P14134107974936091098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A054809 (n + 1)).toNat).toNat

end

end A054811.P14134107974936091098

namespace A054811

/-- `A151800(A151800(A054809(n+1)))` -/
def P14134107974936091098.Spec : Prop :=
  ∀ n, P14134107974936091098.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P14532955771982942378

`A000040(A000720(A054810(n+1))+1)`
-/

namespace A054811.P14532955771982942378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054810 (n + 1)).toNat + 1).toNat

end

end A054811.P14532955771982942378

namespace A054811

/-- `A000040(A000720(A054810(n+1))+1)` -/
def P14532955771982942378.Spec : Prop :=
  ∀ n, P14532955771982942378.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P6987989128423986315

`A004139(∑{d}[A054809(n+1), A000720(#)])`
-/

namespace A054811.P6987989128423986315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A054811.P6987989128423986315

namespace A054811

/-- `A004139(∑{d}[A054809(n+1), A000720(#)])` -/
def P6987989128423986315.Spec : Prop :=
  ∀ n, P6987989128423986315.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P140840961325157805

`A004139(∑{p}[A054809(n+1), A000720(#)])`
-/

namespace A054811.P140840961325157805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p).toNat

end

end A054811.P140840961325157805

namespace A054811

/-- `A004139(∑{p}[A054809(n+1), A000720(#)])` -/
def P140840961325157805.Spec : Prop :=
  ∀ n, P140840961325157805.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P7074002743499273374

`A000040(∑{d}[A054809(n+1), A000720(#)]+2)`
-/

namespace A054811.P7074002743499273374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d + 2).toNat

end

end A054811.P7074002743499273374

namespace A054811

/-- `A000040(∑{d}[A054809(n+1), A000720(#)]+2)` -/
def P7074002743499273374.Spec : Prop :=
  ∀ n, P7074002743499273374.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P6106277951743468430

`A000040(∑{p}[A054809(n+1), A000720(#)]+2)`
-/

namespace A054811.P6106277951743468430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p + 2).toNat

end

end A054811.P6106277951743468430

namespace A054811

/-- `A000040(∑{p}[A054809(n+1), A000720(#)]+2)` -/
def P6106277951743468430.Spec : Prop :=
  ∀ n, P6106277951743468430.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P10993124741935144781

`A000040(∑{p}[A054809(n+1), A061395(#)]+2)`
-/

namespace A054811.P10993124741935144781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p + 2).toNat

end

end A054811.P10993124741935144781

namespace A054811

/-- `A000040(∑{p}[A054809(n+1), A061395(#)]+2)` -/
def P10993124741935144781.Spec : Prop :=
  ∀ n, P10993124741935144781.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P2999219456813995853

`A151800(A151800(A151800(A054808(n+1))))`
-/

namespace A054811.P2999219456813995853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A151800 (A054808 (n + 1)).toNat).toNat).toNat

end

end A054811.P2999219456813995853

namespace A054811

/-- `A151800(A151800(A151800(A054808(n+1))))` -/
def P2999219456813995853.Spec : Prop :=
  ∀ n, P2999219456813995853.a n = A054811 (n + 1)

end A054811

/-! ## A054811.P13316733518955078640

`∩[A054807(n+1), A225493(n+1)]`
-/

namespace A054811.P13316733518955078640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054811.P13316733518955078640

namespace A054811

/-- `∩[A054807(n+1), A225493(n+1)]` -/
def P13316733518955078640.Spec : Prop :=
  ∀ n, (P13316733518955078640.a n : ℤ) = A054811 (n + 1)

end A054811

/-!
# A054812: Fifth term of strong prime quintets: p(m-3)-p(m-4) > p(m-2)-p(m-3) > p(m-1)-p(m-2) > p(m)-p(m-1).

The programs for A054812, the canonical program `A054812.P10876218139576195447` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054812 has offset 1).

The definition of A054812 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 248 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054812.P10876218139576195447

`A151800(A054811(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054812

/-- `A151800(A054811(n+1))` -/
def P10876218139576195447.Spec : Prop :=
  ∀ n, P10876218139576195447.a n = A054812 (n + 1)

theorem P10876218139576195447.correct : P10876218139576195447.Spec := by
  intro n
  simp only [A054812, Nat.add_sub_cancel]

end A054812

/-! ## A054812.P3603692248983932413

`A151800(p?[A054811(1-(n-2*n))])`
-/

namespace A054812.P3603692248983932413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054812.P3603692248983932413

namespace A054812

/-- `A151800(p?[A054811(1-(n-2*n))])` -/
def P3603692248983932413.Spec : Prop :=
  ∀ n, P3603692248983932413.a n = A054812 (n + 1)

end A054812

/-! ## A054812.P13171319724746600001

`A151800(A151800(A054810(n+1)))`
-/

namespace A054812.P13171319724746600001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A054810 (n + 1)).toNat).toNat

end

end A054812.P13171319724746600001

namespace A054812

/-- `A151800(A151800(A054810(n+1)))` -/
def P13171319724746600001.Spec : Prop :=
  ∀ n, P13171319724746600001.a n = A054812 (n + 1)

end A054812

/-! ## A054812.P7780288031403986285

`A065091(A000720(p?[A054811(n+1)]))`
-/

namespace A054812.P7780288031403986285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054812.P7780288031403986285

namespace A054812

/-- `A065091(A000720(p?[A054811(n+1)]))` -/
def P7780288031403986285.Spec : Prop :=
  ∀ n, P7780288031403986285.a n = A054812 (n + 1)

end A054812

/-! ## A054812.P12322682705480232073

`A000040(A000720(A054810(n+1))+2)`
-/

namespace A054812.P12322682705480232073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054810 (n + 1)).toNat + 2).toNat

end

end A054812.P12322682705480232073

namespace A054812

/-- `A000040(A000720(A054810(n+1))+2)` -/
def P12322682705480232073.Spec : Prop :=
  ∀ n, P12322682705480232073.a n = A054812 (n + 1)

end A054812

/-! ## A054812.P11878631516113256068

`A000040(∑{d}[A054809(n+1), A000720(#)]+3)`
-/

namespace A054812.P11878631516113256068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d + 3).toNat

end

end A054812.P11878631516113256068

namespace A054812

/-- `A000040(∑{d}[A054809(n+1), A000720(#)]+3)` -/
def P11878631516113256068.Spec : Prop :=
  ∀ n, P11878631516113256068.a n = A054812 (n + 1)

end A054812

/-! ## A054812.P18141694352384811336

`A000040(∑{p}[A054809(n+1), A000720(#)]+3)`
-/

namespace A054812.P18141694352384811336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p + 3).toNat

end

end A054812.P18141694352384811336

namespace A054812

/-- `A000040(∑{p}[A054809(n+1), A000720(#)]+3)` -/
def P18141694352384811336.Spec : Prop :=
  ∀ n, P18141694352384811336.a n = A054812 (n + 1)

end A054812

/-! ## A054812.P17721378568017934576

`A000040(∑{p}[A054809(n+1), A061395(#)]+3)`
-/

namespace A054812.P17721378568017934576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p + 3).toNat

end

end A054812.P17721378568017934576

namespace A054812

/-- `A000040(∑{p}[A054809(n+1), A061395(#)]+3)` -/
def P17721378568017934576.Spec : Prop :=
  ∀ n, P17721378568017934576.a n = A054812 (n + 1)

end A054812

/-! ## A054812.P14026050922013815472

`A151800(A151800(A151800(A054809(n+1))))`
-/

namespace A054812.P14026050922013815472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A151800 (A054809 (n + 1)).toNat).toNat).toNat

end

end A054812.P14026050922013815472

namespace A054812

/-- `A151800(A151800(A151800(A054809(n+1))))` -/
def P14026050922013815472.Spec : Prop :=
  ∀ n, P14026050922013815472.a n = A054812 (n + 1)

end A054812

/-! ## A054812.P16430382783330076843

`A151800(A151800(A151800(A151800(A054808(n+1)))))`
-/

namespace A054812.P16430382783330076843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A151800 (A151800 (A054808 (n + 1)).toNat).toNat).toNat).toNat

end

end A054812.P16430382783330076843

namespace A054812

/-- `A151800(A151800(A151800(A151800(A054808(n+1)))))` -/
def P16430382783330076843.Spec : Prop :=
  ∀ n, P16430382783330076843.a n = A054812 (n + 1)

end A054812

/-!
# A054813: First term of strong prime sextets: p(m+1)-p(m) > p(m+2)-p(m+1) > p(m+3)-p(m+2) > p(m+4)-p(m+3) > p(m+5)-p(m+4).

The programs for A054813, there is no canonical definition to state claims against.
-/

/-! ## A054813.P1693408642505970404

`A008578(A000720(A054817(n))-3)`
-/

namespace A054813.P1693408642505970404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (A054817 n).toNat - 3).toNat

end

end A054813.P1693408642505970404

/-! ## A054813.P4150666968263631162

`A000040(A000720(A054817(n))-4)`
-/

namespace A054813.P4150666968263631162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054817 n).toNat - 4).toNat

end

end A054813.P4150666968263631162

/-! ## A054813.P10521642602641099429

`A008578(A000720(A054818(n))-4)`
-/

namespace A054813.P10521642602641099429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (A054818 n).toNat - 4).toNat

end

end A054813.P10521642602641099429

/-! ## A054813.P11943865775948877172

`A000040(A000720(A054818(n))-5)`
-/

namespace A054813.P11943865775948877172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054818 n).toNat - 5).toNat

end

end A054813.P11943865775948877172

/-!
# A054814: Second term p(m) of strong prime sextets: p(m)-p(m-1) > p(m+1)-p(m) > p(m+2)-p(m+1) > p(m+3)-p(m+2) > p(m+4)-p(m+3).

The programs for A054814, the canonical program `A054814.P11035183455136570970` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054814 has offset 1).

The definition of A054814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054814.P14919739463298587047

`A151800(A054813(n+1))`
-/

namespace A054814.P14919739463298587047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054813 (n + 1)).toNat

end

end A054814.P14919739463298587047

namespace A054814

/-- `A151800(A054813(n+1))` -/
def P14919739463298587047.Spec : Prop :=
  ∀ n, P14919739463298587047.a n = A054814 (n + 1)

end A054814

/-! ## A054814.P11035183455136570970

`∩[A054808(n+1), A054809(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054814

/-- `∩[A054808(n+1), A054809(n+1)]` -/
def P11035183455136570970.Spec : Prop :=
  ∀ n, (P11035183455136570970.a n : ℤ) = A054814 (n + 1)

theorem P11035183455136570970.correct : P11035183455136570970.Spec := by
  intro n
  simp only [A054814, Nat.add_sub_cancel]

end A054814

/-! ## A054814.P4915733596781002576

`p?[A054808(n+2)%A054810(n+1)]`
-/

namespace A054814.P4915733596781002576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054808 (n + 2)) (A054810 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054814.P4915733596781002576

namespace A054814

/-- `p?[A054808(n+2)%A054810(n+1)]` -/
def P4915733596781002576.Spec : Prop :=
  ∀ n, P4915733596781002576.a n = A054814 (n + 1)

end A054814

/-! ## A054814.P6522423149960068794

`p?[gcd(A054808(n+2), A054809(n+1))]`
-/

namespace A054814.P6522423149960068794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054808 (n + 2)) (A054809 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054814.P6522423149960068794

namespace A054814

/-- `p?[gcd(A054808(n+2), A054809(n+1))]` -/
def P6522423149960068794.Spec : Prop :=
  ∀ n, (P6522423149960068794.a n : ℤ) = A054814 (n + 1)

end A054814

/-! ## A054814.P8283209798356748723

`∩[A054805(n+1), A054808(n+1)]`
-/

namespace A054814.P8283209798356748723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054814.P8283209798356748723

namespace A054814

/-- `∩[A054805(n+1), A054808(n+1)]` -/
def P8283209798356748723.Spec : Prop :=
  ∀ n, (P8283209798356748723.a n : ℤ) = A054814 (n + 1)

end A054814

/-!
# A054815: Third term of strong prime sextets: p(m-1)-p(m-2) > p(m)-p(m-1) > p(m+1)-p(m) > p(m+2)-p(m+1) > p(m+3)-p(m+2).

The programs for A054815, the canonical program `A054815.P15389507809897913922` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054815 has offset 0).

The definition of A054815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054815.P15389507809897913922

`∩[A054809(n+1), A054810(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A054815

/-- `∩[A054809(n+1), A054810(n+1)]` -/
def P15389507809897913922.Spec : Prop :=
  ∀ n, (P15389507809897913922.a n : ℤ) = A054815 n

theorem P15389507809897913922.correct : P15389507809897913922.Spec := by
  intro n
  simp only [A054815]

end A054815

/-! ## A054815.P12915642060502715107

`p?[gcd(A054809(n+2), A054810(n+1))]`
-/

namespace A054815.P12915642060502715107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054809 (n + 2)) (A054810 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054815.P12915642060502715107

namespace A054815

/-- `p?[gcd(A054809(n+2), A054810(n+1))]` -/
def P12915642060502715107.Spec : Prop :=
  ∀ n, (P12915642060502715107.a n : ℤ) = A054815 n

end A054815

/-! ## A054815.P7436793331771384546

`p?[A054809(n+3)%A054811(n+2)]`
-/

namespace A054815.P7436793331771384546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054809 (n + 3)) (A054811 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054815.P7436793331771384546

namespace A054815

/-- `p?[A054809(n+3)%A054811(n+2)]` -/
def P7436793331771384546.Spec : Prop :=
  ∀ n, P7436793331771384546.a n = A054815 n

end A054815

/-! ## A054815.P4286358373166450908

`∩[A054804(n+1), A054806(n+1)]`
-/

namespace A054815.P4286358373166450908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054815.P4286358373166450908

namespace A054815

/-- `∩[A054804(n+1), A054806(n+1)]` -/
def P4286358373166450908.Spec : Prop :=
  ∀ n, (P4286358373166450908.a n : ℤ) = A054815 n

end A054815

/-! ## A054815.P3417417462942888847

`∩[A054804(n+1), A054810(n+1)]`
-/

namespace A054815.P3417417462942888847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054804 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054815.P3417417462942888847

namespace A054815

/-- `∩[A054804(n+1), A054810(n+1)]` -/
def P3417417462942888847.Spec : Prop :=
  ∀ n, (P3417417462942888847.a n : ℤ) = A054815 n

end A054815

/-! ## A054815.P8299549449260833230

`∩[A054809(n+1), A054806(n+1)]`
-/

namespace A054815.P8299549449260833230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054815.P8299549449260833230

namespace A054815

/-- `∩[A054809(n+1), A054806(n+1)]` -/
def P8299549449260833230.Spec : Prop :=
  ∀ n, (P8299549449260833230.a n : ℤ) = A054815 n

end A054815

/-!
# A054816: Fourth term of strong prime sextets: p(m-2)-p(m-3) > p(m-1)-p(m-2) > p(m)-p(m-1) > p(m+1)-p(m) > p(m+2)-p(m+1).

The programs for A054816, the canonical program `A054816.P7947479005210972104` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054816 has offset 0).

The definition of A054816 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054816.P5734336257073490404

`∩[A054810(n+1), A054811(n+1)]`
-/

namespace A054816.P5734336257073490404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054816.P5734336257073490404

namespace A054816

/-- `∩[A054810(n+1), A054811(n+1)]` -/
def P5734336257073490404.Spec : Prop :=
  ∀ n, (P5734336257073490404.a n : ℤ) = A054816 n

end A054816

/-! ## A054816.P7947479005210972104

`record[A054810(n+4)%A054812(n+3)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054816

/-- `record[A054810(n+4)%A054812(n+3)]` -/
def P7947479005210972104.Spec : Prop :=
  ∀ n, P7947479005210972104.a n = A054816 n

theorem P7947479005210972104.correct : P7947479005210972104.Spec := by
  intro n
  simp only [A054816]

end A054816

/-! ## A054816.P5387886570309381209

`∩[A054805(n+1), A054807(n+1)]`
-/

namespace A054816.P5387886570309381209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054816.P5387886570309381209

namespace A054816

/-- `∩[A054805(n+1), A054807(n+1)]` -/
def P5387886570309381209.Spec : Prop :=
  ∀ n, (P5387886570309381209.a n : ℤ) = A054816 n

end A054816

/-! ## A054816.P17102409139538046632

`∩[A054805(n+1), A054811(n+1)]`
-/

namespace A054816.P17102409139538046632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054811 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054816.P17102409139538046632

namespace A054816

/-- `∩[A054805(n+1), A054811(n+1)]` -/
def P17102409139538046632.Spec : Prop :=
  ∀ n, (P17102409139538046632.a n : ℤ) = A054816 n

end A054816

/-! ## A054816.P5502271247742493727

`∩[A054807(n+1), A054810(n+1)]`
-/

namespace A054816.P5502271247742493727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054807 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054816.P5502271247742493727

namespace A054816

/-- `∩[A054807(n+1), A054810(n+1)]` -/
def P5502271247742493727.Spec : Prop :=
  ∀ n, (P5502271247742493727.a n : ℤ) = A054816 n

end A054816

/-!
# A054817: Fifth term of strong prime sextets: p(m-3)-p(m-4) > p(m-2)-p(m-3) > p(m-1)-p(m-2) > p(m)-p(m-1) > p(m+1)-p(m).

The programs for A054817, the canonical program `A054817.P14097176044236809818` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054817 has offset 0).

The definition of A054817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1616 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054817.P14097176044236809818

`∩[A054811(n+1), A054812(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054817

/-- `∩[A054811(n+1), A054812(n+1)]` -/
def P14097176044236809818.Spec : Prop :=
  ∀ n, (P14097176044236809818.a n : ℤ) = A054817 n

theorem P14097176044236809818.correct : P14097176044236809818.Spec := by
  intro n
  simp only [A054817]

end A054817

/-! ## A054817.P3049464408782779966

`p?[gcd(A054811(n+2), A054812(n+1))]`
-/

namespace A054817.P3049464408782779966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054811 (n + 2)) (A054812 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054817.P3049464408782779966

namespace A054817

/-- `p?[gcd(A054811(n+2), A054812(n+1))]` -/
def P3049464408782779966.Spec : Prop :=
  ∀ n, (P3049464408782779966.a n : ℤ) = A054817 n

end A054817

/-! ## A054817.P16329174750478360370

`∩[A054806(n+1), A054812(n+1)]`
-/

namespace A054817.P16329174750478360370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054817.P16329174750478360370

namespace A054817

/-- `∩[A054806(n+1), A054812(n+1)]` -/
def P16329174750478360370.Spec : Prop :=
  ∀ n, (P16329174750478360370.a n : ℤ) = A054817 n

end A054817

/-! ## A054817.P2860442550986105484

`A151800(A054816(n))`
-/

namespace A054817.P2860442550986105484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054816 n).toNat

end

end A054817.P2860442550986105484

namespace A054817

/-- `A151800(A054816(n))` -/
def P2860442550986105484.Spec : Prop :=
  ∀ n, P2860442550986105484.a n = A054817 n

end A054817

/-!
# A054818: Sixth term of strong prime sextets: p(m-4)-p(m-5) > p(m-3)-p(m-4) > p(m-2)-p(m-3) > p(m-1)-p(m-2) > p(m)-p(m-1).

The programs for A054818, there is no canonical definition to state claims against.
-/

/-! ## A054818.P5909021550237260913

`A151800(A054817(n))`
-/

namespace A054818.P5909021550237260913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054817 n).toNat

end

end A054818.P5909021550237260913

/-! ## A054818.P12999783004445808050

`A004139(A000720(A054816(n)))`
-/

namespace A054818.P12999783004445808050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (A000720 (A054816 n).toNat).toNat

end

end A054818.P12999783004445808050

/-! ## A054818.P11550054943714541900

`A000040(A000720(A054817(n))+1)`
-/

namespace A054818.P11550054943714541900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054817 n).toNat + 1).toNat

end

end A054818.P11550054943714541900

/-! ## A054818.P10992200916655687750

`A065091(∑{d}[A054817(n), A000720(#)])`
-/

namespace A054818.P10992200916655687750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054817 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ d ∈ Nat.divisors (f1 n).natAbs, A000720 d).toNat

end

end A054818.P10992200916655687750

/-! ## A054818.P4949011249523783179

`A151800(∑{p}[A054816(n), A151800(#)])`
-/

namespace A054818.P4949011249523783179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054816 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151800 p).toNat

end

end A054818.P4949011249523783179

/-!
# A054819: First term of weak prime quartet: p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2).

The programs for A054819, there is no canonical definition to state claims against.
-/

/-! ## A054819.P10290462491873375801

`A268674(or(1, A054820(n+1)))`
-/

namespace A054819.P10290462491873375801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.lor 1 (A054820 (n + 1))).toNat

end

end A054819.P10290462491873375801

/-! ## A054819.P3244417706950024693

`A268674(2*A054820(n+1)-A054820(n+1))`
-/

namespace A054819.P3244417706950024693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (2 * A054820 (n + 1) - A054820 (n + 1)).toNat

end

end A054819.P3244417706950024693

/-! ## A054819.P12514860192148064161

`p?[A008578(A258025(n+1))%A068828(n+1)]`
-/

namespace A054819.P12514860192148064161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A258025 (n + 1)).toNat) (A068828 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054819.P12514860192148064161

/-! ## A054819.P1507408234406062439

`A268674(2*A054820(n+1))`
-/

namespace A054819.P1507408234406062439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (2 * A054820 (n + 1)).toNat

end

end A054819.P1507408234406062439

/-! ## A054819.P5922058642129738079

`p?[A290099(A063535(n))%A068828(n+1)]`
-/

namespace A054819.P5922058642129738079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290099 (A063535 n).toNat) (A068828 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054819.P5922058642129738079

/-! ## A054819.P6700949601264941697

`A033302(A054821(n+1))`
-/

namespace A054819.P6700949601264941697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054821 (n + 1)).toNat

end

end A054819.P6700949601264941697

/-! ## A054819.P120266878971377501

`A033302(A054820(n+1)+1)`
-/

namespace A054819.P120266878971377501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054820 (n + 1) + 1).toNat

end

end A054819.P120266878971377501

/-! ## A054819.P17362209777507148549

`A283463(A054820(n+1)+1)`
-/

namespace A054819.P17362209777507148549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283463 (A054820 (n + 1) + 1).toNat

end

end A054819.P17362209777507148549

/-! ## A054819.P11759165112255544450

`A064989(or(1, A054820(n+1)))`
-/

namespace A054819.P11759165112255544450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.lor 1 (A054820 (n + 1))).toNat

end

end A054819.P11759165112255544450

/-! ## A054819.P13811088934772269715

`A094457(or(1, A054820(n+1)))`
-/

namespace A054819.P13811088934772269715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094457 (Int.lor 1 (A054820 (n + 1))).toNat

end

end A054819.P13811088934772269715

/-! ## A054819.P948475082209217543

`A051698(2*A054820(n+1)-A054820(n+1))`
-/

namespace A054819.P948475082209217543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (2 * A054820 (n + 1) - A054820 (n + 1)).toNat

end

end A054819.P948475082209217543

/-! ## A054819.P6288304459454718786

`A094457(2*A054820(n+1)-A054820(n+1))`
-/

namespace A054819.P6288304459454718786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094457 (2 * A054820 (n + 1) - A054820 (n + 1)).toNat

end

end A054819.P6288304459454718786

/-! ## A054819.P15017537111371873566

`A136548(A054820(n+1)-1)`
-/

namespace A054819.P15017537111371873566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A054820 (n + 1) - 1).toNat

end

end A054819.P15017537111371873566

/-! ## A054819.P3813134065670979093

`A064989(2*A054820(n+1))`
-/

namespace A054819.P3813134065670979093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A054820 (n + 1)).toNat

end

end A054819.P3813134065670979093

/-! ## A054819.P3961294476495278145

`A136548(or(1, A054820(n+1)))`
-/

namespace A054819.P3961294476495278145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (Int.lor 1 (A054820 (n + 1))).toNat

end

end A054819.P3961294476495278145

/-! ## A054819.P10783472181009184761

`A094457(2*A054820(n+1))/2`
-/

namespace A054819.P10783472181009184761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094457 (2 * A054820 (n + 1)).toNat : ℚ) / 2

end

end A054819.P10783472181009184761

/-!
# A054820: Second term of weak prime quartet: p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1).

The programs for A054820, there is no canonical definition to state claims against.
-/

/-! ## A054820.P16522937980980764674

`∩[A051635(n+1), A063535(n)]`
-/

namespace A054820.P16522937980980764674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054820.P16522937980980764674

/-! ## A054820.P11894908343843090705

`∩[A134196(n+1), A063535(n)]`
-/

namespace A054820.P11894908343843090705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054820.P11894908343843090705

/-! ## A054820.P14143104817961155639

`∩[A051635(n+1), A134196(n+1)]`
-/

namespace A054820.P14143104817961155639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054820.P14143104817961155639

/-! ## A054820.P10193957031374719355

`∩[A068828(n+1), A134196(n+1)]`
-/

namespace A054820.P10193957031374719355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054820.P10193957031374719355

/-! ## A054820.P11661735819488427086

`A151800(A054819(n+1))`
-/

namespace A054820.P11661735819488427086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054819 (n + 1)).toNat

end

end A054820.P11661735819488427086

/-! ## A054820.P16622569300266072574

`∩[A225495(n+1), A063535(n)]`
-/

namespace A054820.P16622569300266072574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054820.P16622569300266072574

/-! ## A054820.P2670166453117332693

`∩[A134196(n+1), A225495(n+1)]`
-/

namespace A054820.P2670166453117332693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054820.P2670166453117332693

/-! ## A054820.P6455758732683808046

`∩[A264720(n+1), A063535(n)]`
-/

namespace A054820.P6455758732683808046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054820.P6455758732683808046

/-! ## A054820.P9487398660458234739

`∩[A134196(n+1), A264720(n+1)]`
-/

namespace A054820.P9487398660458234739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054820.P9487398660458234739

/-! ## A054820.P12634932642184675720

`A349122(p?[A054821(n+1)])`
-/

namespace A054820.P12634932642184675720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349122 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054820.P12634932642184675720

/-! ## A054820.P5926869620328322136

`A003972(or(1, A054819(n+1)))+1`
-/

namespace A054820.P5926869620328322136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (Int.lor 1 (A054819 (n + 1))).toNat + 1

end

end A054820.P5926869620328322136

/-! ## A054820.P14861898130023934260

`A074495(or(1, A054819(n+1)))`
-/

namespace A054820.P14861898130023934260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (Int.lor 1 (A054819 (n + 1))).toNat

end

end A054820.P14861898130023934260

/-! ## A054820.P6426696442336658148

`A074495(A054819(n+1)%A033449(n+1))`
-/

namespace A054820.P6426696442336658148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (Int.tmod (A054819 (n + 1)) (A033449 (n + 1))).toNat

end

end A054820.P6426696442336658148

/-! ## A054820.P13268941788425836293

`A074495(2*A054819(n+1)-A054819(n+1))`
-/

namespace A054820.P13268941788425836293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (2 * A054819 (n + 1) - A054819 (n + 1)).toNat

end

end A054820.P13268941788425836293

/-! ## A054820.P5306608492441877876

`A033302(A054822(n+1))`
-/

namespace A054820.P5306608492441877876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054822 (n + 1)).toNat

end

end A054820.P5306608492441877876

/-! ## A054820.P5509931254016476715

`A003961(p?[A054819(n+1)])`
-/

namespace A054820.P5509931254016476715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054820.P5509931254016476715

/-! ## A054820.P5528409330342275618

`A007918(A054819(n+1)+1)`
-/

namespace A054820.P5528409330342275618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A054819 (n + 1) + 1).toNat

end

end A054820.P5528409330342275618

/-! ## A054820.P16430064813820048623

`A033302(A054821(n+1)+1)`
-/

namespace A054820.P16430064813820048623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054821 (n + 1) + 1).toNat

end

end A054820.P16430064813820048623

/-! ## A054820.P6160484990158069943

`A003961(or(1, A054819(n+1)))`
-/

namespace A054820.P6160484990158069943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.lor 1 (A054819 (n + 1))).toNat

end

end A054820.P6160484990158069943

/-!
# A054821: Third term of weak prime quartet: p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m).

The programs for A054821, there is no canonical definition to state claims against.
-/

/-! ## A054821.P6487581776864241631

`A151800(A054820(n+1))`
-/

namespace A054821.P6487581776864241631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054820 (n + 1)).toNat

end

end A054821.P6487581776864241631

/-! ## A054821.P15115155240183948680

`A151800(A151800(A054819(n+1)))`
-/

namespace A054821.P15115155240183948680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A054819 (n + 1)).toNat).toNat

end

end A054821.P15115155240183948680

/-! ## A054821.P15955180229981189988

`∩[A151800(A051635(n+1)), A051635(n+4)]`
-/

namespace A054821.P15955180229981189988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A051635 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054821.P15955180229981189988

/-! ## A054821.P6961882160847028526

`A003972(or(1, A054820(n+1)))+1`
-/

namespace A054821.P6961882160847028526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (Int.lor 1 (A054820 (n + 1))).toNat + 1

end

end A054821.P6961882160847028526

/-! ## A054821.P539590700416282363

`A003972(A054820(n+1))+A020985(n)²`
-/

namespace A054821.P539590700416282363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (A054820 (n + 1)).toNat + A020985 n ^ 2

end

end A054821.P539590700416282363

/-! ## A054821.P16154756008120839214

`A049164(A328830(n+1))+A003972(A054820(n+1))`
-/

namespace A054821.P16154756008120839214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049164 (A328830 (n + 1)).toNat + A003972 (A054820 (n + 1)).toNat

end

end A054821.P16154756008120839214

/-! ## A054821.P11569650597834838501

`A290099(p?[A054822(n+1)])`
-/

namespace A054821.P11569650597834838501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054821.P11569650597834838501

/-! ## A054821.P5648217380137074963

`A290099(2*A054822(n+1)-A054822(n+1))`
-/

namespace A054821.P5648217380137074963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290099 (2 * A054822 (n + 1) - A054822 (n + 1)).toNat

end

end A054821.P5648217380137074963

/-! ## A054821.P8523695512013708661

`A045966(A054819(n+1))`
-/

namespace A054821.P8523695512013708661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A054819 (n + 1)).toNat

end

end A054821.P8523695512013708661

/-! ## A054821.P1632541805458801276

`A007918(A054820(n+1)+1)`
-/

namespace A054821.P1632541805458801276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A054820 (n + 1) + 1).toNat

end

end A054821.P1632541805458801276

/-! ## A054821.P12280915204357103483

`A033302(A054822(n+1)+1)`
-/

namespace A054821.P12280915204357103483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033302 (A054822 (n + 1) + 1).toNat

end

end A054821.P12280915204357103483

/-! ## A054821.P15119091192711074255

`A003961(or(1, A054820(n+1)))`
-/

namespace A054821.P15119091192711074255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.lor 1 (A054820 (n + 1))).toNat

end

end A054821.P15119091192711074255

/-! ## A054821.P10454464384241272704

`A003961(∏{p}[A054819(n+1), A003961(#)])`
-/

namespace A054821.P10454464384241272704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A003961 p).toNat

end

end A054821.P10454464384241272704

/-! ## A054821.P16841987175399339721

`A003961(2*A054820(n+1)-A054820(n+1))`
-/

namespace A054821.P16841987175399339721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A054820 (n + 1) - A054820 (n + 1)).toNat

end

end A054821.P16841987175399339721

/-! ## A054821.P3516413360184525551

`A250470(or(1, A054822(n+1)))`
-/

namespace A054821.P3516413360184525551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250470 (Int.lor 1 (A054822 (n + 1))).toNat

end

end A054821.P3516413360184525551

/-! ## A054821.P13736077385668636146

`A064989(2*A054822(n+1))`
-/

namespace A054821.P13736077385668636146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A054822 (n + 1)).toNat

end

end A054821.P13736077385668636146

/-!
# A054822: Fourth term of weak prime quartet: p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1).

The programs for A054822, there is no canonical definition to state claims against.
-/

/-! ## A054822.P4729019770018222466

`A151800(A054821(n+1))`
-/

namespace A054822.P4729019770018222466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054821 (n + 1)).toNat

end

end A054822.P4729019770018222466

/-! ## A054822.P31067964975340203

`A151800(∑{d}[A054820(n+1), A151800(#)])`
-/

namespace A054822.P31067964975340203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ d ∈ Nat.divisors (f1 n).natAbs, A151800 d).toNat

end

end A054822.P31067964975340203

/-! ## A054822.P5281196976454815944

`A151800(∑{p}[A054820(n+1), A151800(#)])`
-/

namespace A054822.P5281196976454815944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151800 p).toNat

end

end A054822.P5281196976454815944

/-! ## A054822.P11528143590737170659

`A151800(∏{p}[A054820(n+1), A151800(#)])`
-/

namespace A054822.P11528143590737170659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A151800 p).toNat

end

end A054822.P11528143590737170659

/-! ## A054822.P12445968053939624319

`A151800(A151800(A151800(A054819(n+1))))`
-/

namespace A054822.P12445968053939624319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A151800 (A054819 (n + 1)).toNat).toNat).toNat

end

end A054822.P12445968053939624319

/-! ## A054822.P429836595764165103

`∑{d}[A054821(n+1), A003972(#)]`
-/

namespace A054822.P429836595764165103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003972 d

end

end A054822.P429836595764165103

/-! ## A054822.P1492534594753738413

`A074495(p?[A054821(n+1)])`
-/

namespace A054822.P1492534594753738413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054822.P1492534594753738413

/-! ## A054822.P12338280535029594213

`A336849(p?[A054821(n+1)])`
-/

namespace A054822.P12338280535029594213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054822.P12338280535029594213

/-! ## A054822.P3740865666275684563

`A074495(or(1, A054821(n+1)))`
-/

namespace A054822.P3740865666275684563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (Int.lor 1 (A054821 (n + 1))).toNat

end

end A054822.P3740865666275684563

/-! ## A054822.P1460870720290554888

`A074495(∏{d}[A054821(n+1), #])`
-/

namespace A054822.P1460870720290554888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A054822.P1460870720290554888

/-! ## A054822.P10128707085485206091

`A074495(2*A054821(n+1)-A054821(n+1))`
-/

namespace A054822.P10128707085485206091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074495 (2 * A054821 (n + 1) - A054821 (n + 1)).toNat

end

end A054822.P10128707085485206091

/-! ## A054822.P1413463659144782143

`A336849(2*A054821(n+1)-A054821(n+1))`
-/

namespace A054822.P1413463659144782143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (2 * A054821 (n + 1) - A054821 (n + 1)).toNat

end

end A054822.P1413463659144782143

/-! ## A054822.P17739918702173954214

`A045968(A054819(n+1))`
-/

namespace A054822.P17739918702173954214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045968 (A054819 (n + 1)).toNat

end

end A054822.P17739918702173954214

/-! ## A054822.P10053885337026354753

`A045966(A054820(n+1))`
-/

namespace A054822.P10053885337026354753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045966 (A054820 (n + 1)).toNat

end

end A054822.P10053885337026354753

/-! ## A054822.P7613897226951833990

`A003961(p?[A054821(n+1)])`
-/

namespace A054822.P7613897226951833990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054822.P7613897226951833990

/-! ## A054822.P3924135478878153492

`A007918(A054821(n+1)+1)`
-/

namespace A054822.P3924135478878153492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A054821 (n + 1) + 1).toNat

end

end A054822.P3924135478878153492

/-! ## A054822.P3503058819459800931

`A003961(or(1, A054821(n+1)))`
-/

namespace A054822.P3503058819459800931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.lor 1 (A054821 (n + 1))).toNat

end

end A054822.P3503058819459800931

/-! ## A054822.P3958050162959480324

`A003961(A054821(n+1)%Δ[(14*n)²])`
-/

namespace A054822.P3958050162959480324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (14 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Int.tmod (A054821 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A054822.P3958050162959480324

/-! ## A054822.P16380870454205065636

`A003961(2*A054821(n+1)-A054821(n+1))`
-/

namespace A054822.P16380870454205065636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A054821 (n + 1) - A054821 (n + 1)).toNat

end

end A054822.P16380870454205065636

/-!
# A054823: First term of weak prime quintets: p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2) < p(m+4)-p(m+3).

The programs for A054823, there is no canonical definition to state claims against.
-/

/-! ## A054823.P12513161682438595707

`A300840(∩[A054819(n+1), A068828(n+1)])`
-/

namespace A054823.P12513161682438595707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A054823.P12513161682438595707

/-! ## A054823.P3983073344821159

`A268674(p?[A054824(n+1)])`
-/

namespace A054823.P3983073344821159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054823.P3983073344821159

/-! ## A054823.P7306128055768517375

`A268674(or(1, A054824(n+1)))`
-/

namespace A054823.P7306128055768517375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (Int.lor 1 (A054824 (n + 1))).toNat

end

end A054823.P7306128055768517375

/-! ## A054823.P1630645283506291349

`A268674(∑{p}[A054824(n+1), #])`
-/

namespace A054823.P1630645283506291349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268674 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A054823.P1630645283506291349

/-! ## A054823.P10463069705192548419

`∩[A300840(2*A054819(n+1)), A054819(n+1)]`
-/

namespace A054823.P10463069705192548419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300840 (2 * A054819 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054823.P10463069705192548419

/-!
# A054824: Second term of weak prime quintets: p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2).

The programs for A054824, there is no canonical definition to state claims against.
-/

/-! ## A054824.P8255353818778621578

`∩[A054819(n+1), A054820(n+1)]`
-/

namespace A054824.P8255353818778621578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054824.P8255353818778621578

/-! ## A054824.P7191882894599195983

`p?[A054819(n+2)%A054821(n+1)]`
-/

namespace A054824.P7191882894599195983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054819 (n + 2)) (A054821 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054824.P7191882894599195983

/-! ## A054824.P9853998389351229165

`∩[A054819(n+1), A134196(n+1)]`
-/

namespace A054824.P9853998389351229165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054824.P9853998389351229165

/-! ## A054824.P5557273449390923770

`∩[A051635(n+1), A054819(n+1)]`
-/

namespace A054824.P5557273449390923770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054824.P5557273449390923770

/-! ## A054824.P15412358694360938388

`∩[A054819(n+1), A068828(n+1)]`
-/

namespace A054824.P15412358694360938388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054824.P15412358694360938388

/-! ## A054824.P10860880291204692719

`A151800(A054823(n+1))`
-/

namespace A054824.P10860880291204692719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054823 (n + 1)).toNat

end

end A054824.P10860880291204692719

/-! ## A054824.P8449454510584558615

`A008578(A000720(p?[A054825(n+1)]))`
-/

namespace A054824.P8449454510584558615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054824.P8449454510584558615

/-! ## A054824.P11635709328005293135

`∑{d}[A054823(n+1), A340071(#)]`
-/

namespace A054824.P11635709328005293135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054823 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A054824.P11635709328005293135

/-!
# A054825: Third term of weak prime quintets: p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1).

The programs for A054825, there is no canonical definition to state claims against.
-/

/-! ## A054825.P2407529425513315795

`∩[A054820(n+1), A054821(n+1)]`
-/

namespace A054825.P2407529425513315795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054825.P2407529425513315795

/-! ## A054825.P2877260156452024928

`∩[A054821(n+1), A134196(n+1)]`
-/

namespace A054825.P2877260156452024928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054825.P2877260156452024928

/-! ## A054825.P252817186669983895

`∩[A054821(n+1), A063535(n)]`
-/

namespace A054825.P252817186669983895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054825.P252817186669983895

/-! ## A054825.P8604242438344664120

`A151800(A054824(n+1))`
-/

namespace A054825.P8604242438344664120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054824 (n + 1)).toNat

end

end A054825.P8604242438344664120

/-! ## A054825.P234131971827492172

`A065091(A000720(p?[A054824(n+1)]))`
-/

namespace A054825.P234131971827492172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054825.P234131971827492172

/-! ## A054825.P14880548289587847164

`A008578(A000720(p?[A054826(n+1)]))`
-/

namespace A054825.P14880548289587847164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A054825.P14880548289587847164

/-! ## A054825.P8832489564907895244

`∑{d}[A054824(n+1), A340071(#)]`
-/

namespace A054825.P8832489564907895244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A054825.P8832489564907895244

/-!
# A054826: Fourth term of weak prime quintets: p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m).

The programs for A054826, there is no canonical definition to state claims against.
-/

/-! ## A054826.P6721417512589045087

`∩[A054821(n+1), A054822(n+1)]`
-/

namespace A054826.P6721417512589045087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054826.P6721417512589045087

/-! ## A054826.P7027813675675214692

`p?[gcd(A054821(n+2), A054822(n+1))]`
-/

namespace A054826.P7027813675675214692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054821 (n + 2)) (A054822 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054826.P7027813675675214692

/-! ## A054826.P7834124171837365088

`∩[A051635(n+1), A054822(n+1)]`
-/

namespace A054826.P7834124171837365088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054826.P7834124171837365088

/-! ## A054826.P15471016965442178769

`∩[A054822(n+1), A068828(n+1)]`
-/

namespace A054826.P15471016965442178769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054826.P15471016965442178769

/-! ## A054826.P14318640113950226767

`A151800(A054825(n+1))`
-/

namespace A054826.P14318640113950226767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054825 (n + 1)).toNat

end

end A054826.P14318640113950226767

/-! ## A054826.P10867218000684681069

`A151800(A151800(A054824(n+1)))`
-/

namespace A054826.P10867218000684681069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A054824 (n + 1)).toNat).toNat

end

end A054826.P10867218000684681069

/-! ## A054826.P7731692601066017671

`∑{d}[A054825(n+1), A340071(#)]`
-/

namespace A054826.P7731692601066017671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A054826.P7731692601066017671

/-!
# A054827: Fifth term of weak prime quintets: p(m-3)-p(m-4) < p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1).

The programs for A054827, there is no canonical definition to state claims against.
-/

/-! ## A054827.P14072307742340760244

`A151800(A054826(n+1))`
-/

namespace A054827.P14072307742340760244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054826 (n + 1)).toNat

end

end A054827.P14072307742340760244

/-! ## A054827.P9341398803121463528

`A151800(A151800(A054825(n+1)))`
-/

namespace A054827.P9341398803121463528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A151800 (A054825 (n + 1)).toNat).toNat

end

end A054827.P9341398803121463528

/-! ## A054827.P11364798192885870338

`∑{d}[A054826(n+1), A340071(#)]`
-/

namespace A054827.P11364798192885870338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d

end

end A054827.P11364798192885870338

/-! ## A054827.P2828971163829420625

`A340071(∑{p}[A054826(n+1), #])+1`
-/

namespace A054827.P2828971163829420625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) + 1

end

end A054827.P2828971163829420625

/-! ## A054827.P4117809786389823016

`A340071(∑{d}[A054825(n+1), A340071(#)])+1`
-/

namespace A054827.P4117809786389823016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (∑ d ∈ Nat.divisors (f1 n).natAbs, A340071 d).toNat + 1

end

end A054827.P4117809786389823016

/-!
# A054828: First term of weak prime sextet: p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2) < p(m+4)-p(m+3) < p(m+5)-p(m+4).

The programs for A054828, there is no canonical definition to state claims against.
-/

/-! ## A054828.P6320880236257936736

`A000040(A000720(A054830(n+1))-2)`
-/

namespace A054828.P6320880236257936736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A054830 (n + 1)).toNat - 2).toNat

end

end A054828.P6320880236257936736

/-! ## A054828.P9788960402423172159

`A000040(∑{p}[A054829(n+1), A000720(#)]-1)`
-/

namespace A054828.P9788960402423172159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p - 1).toNat

end

end A054828.P9788960402423172159

/-! ## A054828.P14850955538859114330

`A000040(∏{p}[A054829(n+1), A000720(#)]-1)`
-/

namespace A054828.P14850955538859114330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p - 1).toNat

end

end A054828.P14850955538859114330

/-! ## A054828.P990226413910976595

`A006005(∏{p}[A054829(n+1), A000720(#)]-1)`
-/

namespace A054828.P990226413910976595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p - 1).toNat

end

end A054828.P990226413910976595

/-!
# A054829: Second term of weak prime sextet: p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2) < p(m+4)-p(m+3).

The programs for A054829, there is no canonical definition to state claims against.
-/

/-! ## A054829.P1261563740445522714

`∩[A054823(n+1), A054824(n+1)]`
-/

namespace A054829.P1261563740445522714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054829.P1261563740445522714

/-! ## A054829.P4598419398052822793

`p?[A054823(n+2)%A054826(n+1)]`
-/

namespace A054829.P4598419398052822793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054823 (n + 2)) (A054826 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054829.P4598419398052822793

/-! ## A054829.P6103579277020650015

`p?[gcd(A054823(n+2), A054824(n+1))]`
-/

namespace A054829.P6103579277020650015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054823 (n + 2)) (A054824 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054829.P6103579277020650015

/-! ## A054829.P16765184828076943380

`∩[A054820(n+1), A054823(n+1)]`
-/

namespace A054829.P16765184828076943380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054829.P16765184828076943380

/-! ## A054829.P15791171831662845652

`A151800(A054828(n+1))`
-/

namespace A054829.P15791171831662845652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054828 (n + 1)).toNat

end

end A054829.P15791171831662845652

/-!
# A054830: Third term of weak prime sextet: p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2).

The programs for A054830, there is no canonical definition to state claims against.
-/

/-! ## A054830.P17503688155235895473

`∩[A054824(n+1), A054825(n+1)]`
-/

namespace A054830.P17503688155235895473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054830.P17503688155235895473

/-! ## A054830.P18309541076013705745

`p?[gcd(A054824(n+2), A054825(n+1))]`
-/

namespace A054830.P18309541076013705745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054824 (n + 2)) (A054825 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054830.P18309541076013705745

/-! ## A054830.P1133965589248079474

`∩[A054819(n+1), A054821(n+1)]`
-/

namespace A054830.P1133965589248079474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054830.P1133965589248079474

/-! ## A054830.P1995489783467436237

`∩[A054819(n+1), A054825(n+1)]`
-/

namespace A054830.P1995489783467436237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054830.P1995489783467436237

/-! ## A054830.P18324894056715624225

`∩[A054821(n+1), A054824(n+1)]`
-/

namespace A054830.P18324894056715624225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054830.P18324894056715624225

/-!
# A054831: Fourth term of weak prime sextet: p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1).

The programs for A054831, there is no canonical definition to state claims against.
-/

/-! ## A054831.P647706626169351850

`∩[A054825(n+1), A054826(n+1)]`
-/

namespace A054831.P647706626169351850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054831.P647706626169351850

/-! ## A054831.P12549569368959823427

`p?[gcd(A054825(n+2), A054826(n+1))]`
-/

namespace A054831.P12549569368959823427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054825 (n + 2)) (A054826 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054831.P12549569368959823427

/-! ## A054831.P2379825778244317400

`∩[A054820(n+1), A054822(n+1)]`
-/

namespace A054831.P2379825778244317400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054831.P2379825778244317400

/-! ## A054831.P16367729942759673711

`∩[A054820(n+1), A054826(n+1)]`
-/

namespace A054831.P16367729942759673711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054831.P16367729942759673711

/-! ## A054831.P18133021457358648551

`∩[A054822(n+1), A054825(n+1)]`
-/

namespace A054831.P18133021457358648551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054831.P18133021457358648551

/-!
# A054832: Fifth term of weak prime sextet: p(m-3)-p(m-4) < p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m).

The programs for A054832, there is no canonical definition to state claims against.
-/

/-! ## A054832.P314149622638043087

`∩[A054826(n+1), A054827(n+1)]`
-/

namespace A054832.P314149622638043087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054832.P314149622638043087

/-! ## A054832.P8664588896686898838

`p?[gcd(A054826(n+2), A054827(n+1))]`
-/

namespace A054832.P8664588896686898838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054826 (n + 2)) (A054827 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054832.P8664588896686898838

/-! ## A054832.P6505715888489352521

`∩[A054821(n+1), A054827(n+1)]`
-/

namespace A054832.P6505715888489352521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054832.P6505715888489352521

/-! ## A054832.P10440020481534472822

`A151800(A054831(n+1))`
-/

namespace A054832.P10440020481534472822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054831 (n + 1)).toNat

end

end A054832.P10440020481534472822

/-!
# A054833: Sixth term of weak prime sextet: p(m-4)-p(m-5) < p(m-3)-p(m-4) < p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1).

The programs for A054833, there is no canonical definition to state claims against.
-/

/-! ## A054833.P13037184802261307924

`A151800(A054832(n+1))`
-/

namespace A054833.P13037184802261307924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A054832 (n + 1)).toNat

end

end A054833.P13037184802261307924

/-! ## A054833.P3780810523538546619

`A151800(∑{p}[A054831(n+1), A151800(#)])`
-/

namespace A054833.P3780810523538546619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A151800 p).toNat

end

end A054833.P3780810523538546619

/-! ## A054833.P14731760981548748961

`A000040(∑{p}[A054829(n+1), A000720(#)]+4)`
-/

namespace A054833.P14731760981548748961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p + 4).toNat

end

end A054833.P14731760981548748961

/-! ## A054833.P11351235455094448551

`A000040(∏{p}[A054829(n+1), A000720(#)]+4)`
-/

namespace A054833.P11351235455094448551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p + 4).toNat

end

end A054833.P11351235455094448551

/-! ## A054833.P16008448192528342392

`A006005(∏{p}[A054829(n+1), A000720(#)]+4)`
-/

namespace A054833.P16008448192528342392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000720 p + 4).toNat

end

end A054833.P16008448192528342392

/-!
# A054835: Second term of weak prime septet: p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2) < p(m+4)-p(m+3) < p(m+5)-p(m+4).

The programs for A054835, there is no canonical definition to state claims against.
-/

/-! ## A054835.P7292479382078402596

`∩[A054828(n+1), A054829(n+1)]`
-/

namespace A054835.P7292479382078402596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054835.P7292479382078402596

/-! ## A054835.P6199136620536721304

`∩[A054824(n+1), A054828(n+1)]`
-/

namespace A054835.P6199136620536721304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054835.P6199136620536721304

/-! ## A054835.P3308663298514409326

`p?[A054828(n+2)%A054830(n+1)]`
-/

namespace A054835.P3308663298514409326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054828 (n + 2)) (A054830 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054835.P3308663298514409326

/-! ## A054835.P12036917104352814421

`p?[gcd(A054828(n+2), A054829(n+1))]`
-/

namespace A054835.P12036917104352814421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054828 (n + 2)) (A054829 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054835.P12036917104352814421

/-! ## A054835.P17097489387789115685

`∩[A054820(n+1), A054828(n+1)]`
-/

namespace A054835.P17097489387789115685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054828 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054835.P17097489387789115685

/-!
# A054836: Third term of weak prime septet: p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2) < p(m+4)-p(m+3).

The programs for A054836, there is no canonical definition to state claims against.
-/

/-! ## A054836.P7311865313823483338

`∩[A054829(n+1), A054830(n+1)]`
-/

namespace A054836.P7311865313823483338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054836.P7311865313823483338

/-! ## A054836.P8964303062440098298

`p?[A054829(n+2)%A054831(n+1)]`
-/

namespace A054836.P8964303062440098298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054829 (n + 2)) (A054831 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054836.P8964303062440098298

/-! ## A054836.P12922101202837207151

`p?[A054823(n+3)%A054826(n+1)]`
-/

namespace A054836.P12922101202837207151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054823 (n + 3)) (A054826 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054836.P12922101202837207151

/-! ## A054836.P9217292747686172008

`p?[gcd(A054829(n+2), A054830(n+1))]`
-/

namespace A054836.P9217292747686172008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054829 (n + 2)) (A054830 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054836.P9217292747686172008

/-! ## A054836.P590709074328913248

`p?[A054829(n+3)%A054832(n+2)]`
-/

namespace A054836.P590709074328913248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054829 (n + 3)) (A054832 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054836.P590709074328913248

/-!
# A054837: Fourth term of weak prime septet: p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1) < p(m+3)-p(m+2).

The programs for A054837, there is no canonical definition to state claims against.
-/

/-! ## A054837.P9125495170381930616

`∩[A054830(n+1), A054831(n+1)]`
-/

namespace A054837.P9125495170381930616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054837.P9125495170381930616

/-! ## A054837.P10403157920800573579

`∩[A054830(n+1), A054826(n+1)]`
-/

namespace A054837.P10403157920800573579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054837.P10403157920800573579

/-! ## A054837.P8685545469201912819

`∩[A054824(n+1), A054826(n+1)]`
-/

namespace A054837.P8685545469201912819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054837.P8685545469201912819

/-! ## A054837.P15006463162076320391

`∩[A054824(n+1), A054831(n+1)]`
-/

namespace A054837.P15006463162076320391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054837.P15006463162076320391

/-! ## A054837.P1014124475493445917

`p?[A054830(n+2)%A054833(n+1)]`
-/

namespace A054837.P1014124475493445917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054830 (n + 2)) (A054833 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054837.P1014124475493445917

/-! ## A054837.P15619724977444834433

`p?[A054824(n+3)%A054827(n+1)]`
-/

namespace A054837.P15619724977444834433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054824 (n + 3)) (A054827 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054837.P15619724977444834433

/-! ## A054837.P5362942599614641728

`p?[gcd(A054830(n+2), A054831(n+1))]`
-/

namespace A054837.P5362942599614641728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054830 (n + 2)) (A054831 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054837.P5362942599614641728

/-! ## A054837.P15215671797452262861

`∩[A054830(n+1), A054822(n+1)]`
-/

namespace A054837.P15215671797452262861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054822 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054837.P15215671797452262861

/-!
# A054838: Fifth term of weak prime septet: p(m-3)-p(m-4) < p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m) < p(m+2)-p(m+1).

The programs for A054838, there is no canonical definition to state claims against.
-/

/-! ## A054838.P4375456345000740629

`∩[A054831(n+1), A054832(n+1)]`
-/

namespace A054838.P4375456345000740629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054838.P4375456345000740629

/-! ## A054838.P2086310263797872844

`∩[A054827(n+1), A054831(n+1)]`
-/

namespace A054838.P2086310263797872844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054838.P2086310263797872844

/-! ## A054838.P10497428865656202636

`∩[A054825(n+1), A054827(n+1)]`
-/

namespace A054838.P10497428865656202636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054838.P10497428865656202636

/-! ## A054838.P5693085465693528508

`∩[A054825(n+1), A054832(n+1)]`
-/

namespace A054838.P5693085465693528508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054838.P5693085465693528508

/-! ## A054838.P2985920382837398202

`p?[A054831(n+2)%A054833(n+1)]`
-/

namespace A054838.P2985920382837398202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054831 (n + 2)) (A054833 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054838.P2985920382837398202

/-! ## A054838.P17669719287367868129

`p?[gcd(A054831(n+2), A054832(n+1))]`
-/

namespace A054838.P17669719287367868129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054831 (n + 2)) (A054832 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054838.P17669719287367868129

/-! ## A054838.P9425519795036248302

`∩[A054832(n+1), A054820(n+1)]`
-/

namespace A054838.P9425519795036248302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054820 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054838.P9425519795036248302

/-!
# A054839: Sixth term of weak prime septet: p(m-4)-p(m-5) < p(m-3)-p(m-4) < p(m-2)-p(m-3) < p(m-1)-p(m-2) < p(m)-p(m-1) < p(m+1)-p(m).

The programs for A054839, there is no canonical definition to state claims against.
-/

/-! ## A054839.P18074853593104986576

`∩[A054832(n+1), A054833(n+1)]`
-/

namespace A054839.P18074853593104986576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054832 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054839.P18074853593104986576

/-! ## A054839.P17508088918314471587

`∩[A054826(n+1), A054833(n+1)]`
-/

namespace A054839.P17508088918314471587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054839.P17508088918314471587

/-! ## A054839.P6714128814941853098

`p?[gcd(A054832(n+2), A054833(n+1))]`
-/

namespace A054839.P6714128814941853098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054832 (n + 2)) (A054833 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A054839.P6714128814941853098

/-! ## A054839.P1684553715439539399

`∩[A054821(n+1), A054833(n+1)]`
-/

namespace A054839.P1684553715439539399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054839.P1684553715439539399

/-!
# A054841: If n = 2^a * 3^b * 5^c * 7^d * ... then a(n) = a + 10 * b + 100 * c + 1000 * d + ... .

The programs for A054841, the canonical program `A054841.P9974101703667219502` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054841 has offset 1).

The definition of A054841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054841.P9974101703667219502

`∑{d}[n+1, A276379(A014963(#))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A054841

/-- `∑{d}[n+1, A276379(A014963(#))]` -/
def P9974101703667219502.Spec : Prop :=
  ∀ n, P9974101703667219502.a n = A054841 (n + 1)

theorem P9974101703667219502.correct : P9974101703667219502.Spec := by
  intro n
  simp only [A054841, Nat.add_sub_cancel]

end A054841

/-! ## A054841.P6119238500950227887

`A064743(A064664(n+1))`
-/

namespace A054841.P6119238500950227887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064743 (A064664 (n + 1)).toNat

end

end A054841.P6119238500950227887

namespace A054841

/-- `A064743(A064664(n+1))` -/
def P6119238500950227887.Spec : Prop :=
  ∀ n, P6119238500950227887.a n = A054841 (n + 1)

end A054841

/-! ## A054841.P2909993017830028192

`A064743(A064421(n+1)+1)`
-/

namespace A054841.P2909993017830028192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064743 (A064421 (n + 1) + 1).toNat

end

end A054841.P2909993017830028192

namespace A054841

/-- `A064743(A064421(n+1)+1)` -/
def P2909993017830028192.Spec : Prop :=
  ∀ n, P2909993017830028192.a n = A054841 (n + 1)

end A054841

/-! ## A054841.P9041972271197716597

`A104244(A000096(n+8)+11)`
-/

namespace A054841.P9041972271197716597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A000096 (n + 8) + 11).toNat

end

end A054841.P9041972271197716597

namespace A054841

/-- `A104244(A000096(n+8)+11)` -/
def P9041972271197716597.Spec : Prop :=
  ∀ n, P9041972271197716597.a n = A054841 (n + 1)

end A054841

/-! ## A054841.P5362522633584975688

`A104244(A000217(n+9)+10)`
-/

namespace A054841.P5362522633584975688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A000217 (n + 9) + 10).toNat

end

end A054841.P5362522633584975688

namespace A054841

/-- `A104244(A000217(n+9)+10)` -/
def P5362522633584975688.Spec : Prop :=
  ∀ n, P5362522633584975688.a n = A054841 (n + 1)

end A054841

/-! ## A054841.P8750601441893134456

`A104244(A046691(n+3)+A008574(n+11))`
-/

namespace A054841.P8750601441893134456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A046691 (n + 3) + A008574 (n + 11)).toNat

end

end A054841.P8750601441893134456

namespace A054841

/-- `A104244(A046691(n+3)+A008574(n+11))` -/
def P8750601441893134456.Spec : Prop :=
  ∀ n, P8750601441893134456.a n = A054841 (n + 1)

end A054841

/-! ## A054841.P3605498387423573299

`A104244(A000124(n+11)-A005843(n+6))`
-/

namespace A054841.P3605498387423573299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104244 (A000124 (n + 11) - A005843 (n + 6)).toNat

end

end A054841.P3605498387423573299

namespace A054841

/-- `A104244(A000124(n+11)-A005843(n+6))` -/
def P3605498387423573299.Spec : Prop :=
  ∀ n, P3605498387423573299.a n = A054841 (n + 1)

end A054841

/-!
# A054843: Number of sequences of consecutive nonnegative integers (including sequences of length 1) that sum to n.

The programs for A054843, the canonical program `A054843.P5783791251269044681` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054843 has offset 0).

The definition of A054843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054843.P5783791251269044681

`A010054(n)+∑{d}[n, #%2]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054843

/-- `A010054(n)+∑{d}[n, #%2]` -/
def P5783791251269044681.Spec : Prop :=
  ∀ n, P5783791251269044681.a n = A054843 n

theorem P5783791251269044681.correct : P5783791251269044681.Spec := by
  intro n
  simp only [A054843]

end A054843

/-! ## A054843.P1273577396277736733

`∑{d}[n, and(1, #)]+and(1, A038220(n))`
-/

namespace A054843.P1273577396277736733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d : ℕ) : ℤ) + Int.land 1 (A038220 n)

end

end A054843.P1273577396277736733

namespace A054843

/-- `∑{d}[n, and(1, #)]+and(1, A038220(n))` -/
def P1273577396277736733.Spec : Prop :=
  ∀ n, P1273577396277736733.a n = A054843 n

end A054843

/-! ## A054843.P9175430545239004634

`A069283(n)+A073424(n)+1`
-/

namespace A054843.P9175430545239004634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n + (A073424 n + 1)

end

end A054843.P9175430545239004634

namespace A054843

/-- `A069283(n)+A073424(n)+1` -/
def P9175430545239004634.Spec : Prop :=
  ∀ n, P9175430545239004634.a n = A054843 n

end A054843

/-! ## A054843.P7128353778917616236

`A010054(n)+∑{d}[n, A000035(#)]`
-/

namespace A054843.P7128353778917616236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + ∑ d ∈ Nat.divisors (f1 n), A000035 d

end

end A054843.P7128353778917616236

namespace A054843

/-- `A010054(n)+∑{d}[n, A000035(#)]` -/
def P7128353778917616236.Spec : Prop :=
  ∀ n, P7128353778917616236.a n = A054843 n

end A054843

/-! ## A054843.P3741307211591571989

`A010054(n)+∑{d}[n, A073097(#)²]`
-/

namespace A054843.P3741307211591571989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n + ∑ d ∈ Nat.divisors (f1 n), A073097 d ^ 2

end

end A054843.P3741307211591571989

namespace A054843

/-- `A010054(n)+∑{d}[n, A073097(#)²]` -/
def P3741307211591571989.Spec : Prop :=
  ∀ n, P3741307211591571989.a n = A054843 n

end A054843

/-! ## A054843.P11140055228483841680

`A001227(A004277(n))+char[∑[n+1]]`
-/

namespace A054843.P11140055228483841680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A004277 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054843.P11140055228483841680

namespace A054843

/-- `A001227(A004277(n))+char[∑[n+1]]` -/
def P11140055228483841680.Spec : Prop :=
  ∀ n, P11140055228483841680.a n = A054843 n

end A054843

/-! ## A054843.P14736060130383135210

`A001227(A008574(n))+char[∑[n+1]]`
-/

namespace A054843.P14736060130383135210
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A008574 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054843.P14736060130383135210

namespace A054843

/-- `A001227(A008574(n))+char[∑[n+1]]` -/
def P14736060130383135210.Spec : Prop :=
  ∀ n, P14736060130383135210.a n = A054843 n

end A054843

/-!
# A054844: Number of ways to write n as the sum of any number of consecutive integers (including the trivial one-term sum n = n).

The programs for A054844, the canonical program `A054844.P10228147231781804913` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054844 has offset 1).

The definition of A054844 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054844.P10228147231781804913

`2*A001227(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054844

/-- `2*A001227(n+1)` -/
def P10228147231781804913.Spec : Prop :=
  ∀ n, P10228147231781804913.a n = A054844 (n + 1)

theorem P10228147231781804913.correct : P10228147231781804913.Spec := by
  intro n
  simp only [A054844, Nat.add_sub_cancel]

end A054844

/-! ## A054844.P10809780394552803341

`A010054(n+1)+A335616(n+1)`
-/

namespace A054844.P10809780394552803341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) + A335616 (n + 1)

end

end A054844.P10809780394552803341

namespace A054844

/-- `A010054(n+1)+A335616(n+1)` -/
def P10809780394552803341.Spec : Prop :=
  ∀ n, P10809780394552803341.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P8665676901285123171

`2*∑{d}[n+1, #%2]`
-/

namespace A054844.P8665676901285123171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), d % 2)

end

end A054844.P8665676901285123171

namespace A054844

/-- `2*∑{d}[n+1, #%2]` -/
def P8665676901285123171.Spec : Prop :=
  ∀ n, (P8665676901285123171.a n : ℤ) = A054844 (n + 1)

end A054844

/-! ## A054844.P12680607465844293484

`2*∑{d}[n+1, and(1, #)]`
-/

namespace A054844.P12680607465844293484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), Nat.land 1 d)

end

end A054844.P12680607465844293484

namespace A054844

/-- `2*∑{d}[n+1, and(1, #)]` -/
def P12680607465844293484.Spec : Prop :=
  ∀ n, (P12680607465844293484.a n : ℤ) = A054844 (n + 1)

end A054844

/-! ## A054844.P15805894510598410039

`∑{d}[n+1, and(2, -#²)]`
-/

namespace A054844.P15805894510598410039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.land 2 (-(d ^ 2 : ℤ))

end

end A054844.P15805894510598410039

namespace A054844

/-- `∑{d}[n+1, and(2, -#²)]` -/
def P15805894510598410039.Spec : Prop :=
  ∀ n, P15805894510598410039.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P14434977734598955942

`∑{d}[n+1, 1-(-1)^#]`
-/

namespace A054844.P14434977734598955942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (-1) ^ d)

end

end A054844.P14434977734598955942

namespace A054844

/-- `∑{d}[n+1, 1-(-1)^#]` -/
def P14434977734598955942.Spec : Prop :=
  ∀ n, P14434977734598955942.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P15918630894764916732

`2*(Δ[A248517(n)]+1)`
-/

namespace A054844.P15918630894764916732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n + 1)

end

end A054844.P15918630894764916732

namespace A054844

/-- `2*(Δ[A248517(n)]+1)` -/
def P15918630894764916732.Spec : Prop :=
  ∀ n, P15918630894764916732.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P9152392662837390739

`2*(A069283(n+1)+1)`
-/

namespace A054844.P9152392662837390739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A069283 (n + 1) + 1)

end

end A054844.P9152392662837390739

namespace A054844

/-- `2*(A069283(n+1)+1)` -/
def P9152392662837390739.Spec : Prop :=
  ∀ n, P9152392662837390739.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P10317128641135982108

`2*(n+1-A347286(n+1))`
-/

namespace A054844.P10317128641135982108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) - A347286 (n + 1))

end

end A054844.P10317128641135982108

namespace A054844

/-- `2*(n+1-A347286(n+1))` -/
def P10317128641135982108.Spec : Prop :=
  ∀ n, P10317128641135982108.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P17435091108832295299

`A004277(A001227(n+1))`
-/

namespace A054844.P17435091108832295299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A001227 (n + 1)).toNat

end

end A054844.P17435091108832295299

namespace A054844

/-- `A004277(A001227(n+1))` -/
def P17435091108832295299.Spec : Prop :=
  ∀ n, P17435091108832295299.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P11604275277464566662

`A060710(A000265(n+1))`
-/

namespace A054844.P11604275277464566662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060710 (A000265 (n + 1)).toNat

end

end A054844.P11604275277464566662

namespace A054844

/-- `A060710(A000265(n+1))` -/
def P11604275277464566662.Spec : Prop :=
  ∀ n, P11604275277464566662.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P6597830333420410551

`A062011(A064989(n+1))`
-/

namespace A054844.P6597830333420410551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A064989 (n + 1)).toNat

end

end A054844.P6597830333420410551

namespace A054844

/-- `A062011(A064989(n+1))` -/
def P6597830333420410551.Spec : Prop :=
  ∀ n, P6597830333420410551.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P4851498495573453858

`A005408(A069283(n+1))+1`
-/

namespace A054844.P4851498495573453858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A069283 (n + 1)).toNat + 1

end

end A054844.P4851498495573453858

namespace A054844

/-- `A005408(A069283(n+1))+1` -/
def P4851498495573453858.Spec : Prop :=
  ∀ n, P4851498495573453858.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P4267482402734920551

`A000005(2*A000265(n+1))`
-/

namespace A054844.P4267482402734920551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * A000265 (n + 1)).toNat

end

end A054844.P4267482402734920551

namespace A054844

/-- `A000005(2*A000265(n+1))` -/
def P4267482402734920551.Spec : Prop :=
  ∀ n, P4267482402734920551.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P1397649291748386545

`A000005(2*(A153733(n)+1))`
-/

namespace A054844.P1397649291748386545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (A153733 n + 1)).toNat

end

end A054844.P1397649291748386545

namespace A054844

/-- `A000005(2*(A153733(n)+1))` -/
def P1397649291748386545.Spec : Prop :=
  ∀ n, P1397649291748386545.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P15348015239895409447

`2*A000005(A332819(n+1))`
-/

namespace A054844.P15348015239895409447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A332819 (n + 1)).toNat

end

end A054844.P15348015239895409447

namespace A054844

/-- `2*A000005(A332819(n+1))` -/
def P15348015239895409447.Spec : Prop :=
  ∀ n, P15348015239895409447.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P3067183886856243305

`2*A000005(A336158(n+1))`
-/

namespace A054844.P3067183886856243305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A336158 (n + 1)).toNat

end

end A054844.P3067183886856243305

namespace A054844

/-- `2*A000005(A336158(n+1))` -/
def P3067183886856243305.Spec : Prop :=
  ∀ n, P3067183886856243305.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P8842353507731789058

`A000005(lcm(2, A000265(n+1)))`
-/

namespace A054844.P8842353507731789058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.lcm 2 (A000265 (n + 1)))

end

end A054844.P8842353507731789058

namespace A054844

/-- `A000005(lcm(2, A000265(n+1)))` -/
def P8842353507731789058.Spec : Prop :=
  ∀ n, P8842353507731789058.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P2520660823641146134

`A335616(n+1)+A023531(n)`
-/

namespace A054844.P2520660823641146134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335616 (n + 1) + A023531 n

end

end A054844.P2520660823641146134

namespace A054844

/-- `A335616(n+1)+A023531(n)` -/
def P2520660823641146134.Spec : Prop :=
  ∀ n, P2520660823641146134.a n = A054844 (n + 1)

end A054844

/-! ## A054844.P16290920821522161397

`A378216(n+1)+A302707(n)`
-/

namespace A054844.P16290920821522161397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A302707 n

end

end A054844.P16290920821522161397

namespace A054844

/-- `A378216(n+1)+A302707(n)` -/
def P16290920821522161397.Spec : Prop :=
  ∀ n, P16290920821522161397.a n = A054844 (n + 1)

end A054844

/-!
# A054845: Number of ways of representing n as the sum of one or more consecutive primes.

The programs for A054845, there is no canonical definition to state claims against.
-/

/-! ## A054845.P10469628569091648534

`A084143(A028310(n))+char[A007918(n)]`
-/

namespace A054845.P10469628569091648534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054845.P10469628569091648534

/-! ## A054845.P7416370944427186660

`A084143(A028310(n))+char[A151800(n)]`
-/

namespace A054845.P7416370944427186660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054845.P7416370944427186660

/-! ## A054845.P6863372484383689035

`A084143(A028310(n))+char[A000040(n+1)]`
-/

namespace A054845.P6863372484383689035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054845.P6863372484383689035

/-! ## A054845.P15126716092335474780

`A084143(A028310(n))+char[A034694(n+1)]`
-/

namespace A054845.P15126716092335474780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054845.P15126716092335474780

/-! ## A054845.P3803348111077114803

`A084143(A233583(n+1))+char[A000040(n+1)]`
-/

namespace A054845.P3803348111077114803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A054845.P3803348111077114803

/-!
# A054846: Nearest integer to n^(2/3).

The programs for A054846, the canonical program `A054846.P3199495938853747114` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054846 has offset 0).

The definition of A054846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054846.P3199495938853747114

`round(n^(2/3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054846

/-- `round(n^(2/3))` -/
def P3199495938853747114.Spec : Prop :=
  ∀ n, P3199495938853747114.a n = A054846 n

theorem P3199495938853747114.correct : P3199495938853747114.Spec := by
  intro n
  simp only [A054846]

end A054846

/-! ## A054846.P12673120504225249592

`round(root(n²+1, 3))%(n+1)`
-/

namespace A054846.P12673120504225249592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ)))) (n + 1 : ℤ)

end

end A054846.P12673120504225249592

namespace A054846

/-- `round(root(n²+1, 3))%(n+1)` -/
def P12673120504225249592.Spec : Prop :=
  ∀ n, P12673120504225249592.a n = A054846 n

end A054846

/-! ## A054846.P3778370388070829602

`floor(ceil(root(A008527(n), 3))/2)`
-/

namespace A054846.P3778370388070829602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A008527 n : ℝ) ^ (1 / (3 : ℝ))⌉ : ℚ) / 2⌋

end

end A054846.P3778370388070829602

namespace A054846

/-- `floor(ceil(root(A008527(n), 3))/2)` -/
def P3778370388070829602.Spec : Prop :=
  ∀ n, P3778370388070829602.a n = A054846 n

end A054846

/-! ## A054846.P2631594908452023147

`A004526(ceil(root(A008527(n), 3)))`
-/

namespace A054846.P2631594908452023147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈(A008527 n : ℝ) ^ (1 / (3 : ℝ))⌉.toNat

end

end A054846.P2631594908452023147

namespace A054846

/-- `A004526(ceil(root(A008527(n), 3)))` -/
def P2631594908452023147.Spec : Prop :=
  ∀ n, P2631594908452023147.a n = A054846 n

end A054846

/-! ## A054846.P9688474144290605025

`A123108(ceil(root(A008527(n), 3)))`
-/

namespace A054846.P9688474144290605025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ⌈(A008527 n : ℝ) ^ (1 / (3 : ℝ))⌉.toNat

end

end A054846.P9688474144290605025

namespace A054846

/-- `A123108(ceil(root(A008527(n), 3)))` -/
def P9688474144290605025.Spec : Prop :=
  ∀ n, P9688474144290605025.a n = A054846 n

end A054846

/-! ## A054846.P7551468289542587474

`A008619(ceil(root(A008527(n), 3)))-1`
-/

namespace A054846.P7551468289542587474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌈(A008527 n : ℝ) ^ (1 / (3 : ℝ))⌉.toNat - 1

end

end A054846.P7551468289542587474

namespace A054846

/-- `A008619(ceil(root(A008527(n), 3)))-1` -/
def P7551468289542587474.Spec : Prop :=
  ∀ n, P7551468289542587474.a n = A054846 n

end A054846

/-! ## A054846.P13579556496658134156

`A008615(3*ceil(root(A008527(n), 3)))`
-/

namespace A054846.P13579556496658134156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * ⌈(A008527 n : ℝ) ^ (1 / (3 : ℝ))⌉).toNat

end

end A054846.P13579556496658134156

namespace A054846

/-- `A008615(3*ceil(root(A008527(n), 3)))` -/
def P13579556496658134156.Spec : Prop :=
  ∀ n, P13579556496658134156.a n = A054846 n

end A054846

/-! ## A054846.P4331367877544757328

`round(root(n²+1, 3))*A168066(A006530(n+1))`
-/

namespace A054846.P4331367877544757328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 + 1 : ℝ) ^ (1 / (3 : ℝ))) * A168066 (A006530 (n + 1)).toNat

end

end A054846.P4331367877544757328

namespace A054846

/-- `round(root(n²+1, 3))*A168066(A006530(n+1))` -/
def P4331367877544757328.Spec : Prop :=
  ∀ n, P4331367877544757328.a n = A054846 n

end A054846

/-! ## A054846.P13300877007413086628

`A048766(∑[2*(A048766(n)+n)])`
-/

namespace A054846.P13300877007413086628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048766 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054846.P13300877007413086628

namespace A054846

/-- `A048766(∑[2*(A048766(n)+n)])` -/
def P13300877007413086628.Spec : Prop :=
  ∀ n, P13300877007413086628.a n = A054846 n

end A054846

/-! ## A054846.P981951996088362929

`A121536(A077113(A000093(A054847(n))))`
-/

namespace A054846.P981951996088362929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121536 (A077113 (A000093 (A054847 n).toNat).toNat).toNat

end

end A054846.P981951996088362929

namespace A054846

/-- `A121536(A077113(A000093(A054847(n))))` -/
def P981951996088362929.Spec : Prop :=
  ∀ n, P981951996088362929.a n = A054846 n

end A054846

/-!
# A054847: Nearest integer to (nearest integer to n^(2/3))^(3/2).

The programs for A054847, the canonical program `A054847.P4188440989310617586` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054847 has offset 0).

The definition of A054847 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054846, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054847.P4188440989310617586

`A002821(A054846(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054847

/-- `A002821(A054846(n))` -/
def P4188440989310617586.Spec : Prop :=
  ∀ n, P4188440989310617586.a n = A054847 n

theorem P4188440989310617586.correct : P4188440989310617586.Spec := by
  intro n
  simp only [A054847]

end A054847

/-! ## A054847.P8267879837440331321

`round(round(n^(2/3))^(3/2))`
-/

namespace A054847.P8267879837440331321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)) : ℝ) ^ ((3 : ℚ) / 2 : ℝ))

end

end A054847.P8267879837440331321

namespace A054847

/-- `round(round(n^(2/3))^(3/2))` -/
def P8267879837440331321.Spec : Prop :=
  ∀ n, P8267879837440331321.a n = A054847 n

end A054847

/-! ## A054847.P6819968037452508731

`n-A054848(n)`
-/

namespace A054847.P6819968037452508731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054848 n

end

end A054847.P6819968037452508731

namespace A054847

/-- `n-A054848(n)` -/
def P6819968037452508731.Spec : Prop :=
  ∀ n, P6819968037452508731.a n = A054847 n

end A054847

/-! ## A054847.P15413922707534693743

`abs(A054848(n)+A001489(n))`
-/

namespace A054847.P15413922707534693743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A054848 n + A001489 n|

end

end A054847.P15413922707534693743

namespace A054847

/-- `abs(A054848(n)+A001489(n))` -/
def P15413922707534693743.Spec : Prop :=
  ∀ n, P15413922707534693743.a n = A054847 n

end A054847

/-! ## A054847.P577096308859315370

`A054848(n)*A057428(n)+n`
-/

namespace A054847.P577096308859315370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054848 n * A057428 n + (n : ℤ)

end

end A054847.P577096308859315370

namespace A054847

/-- `A054848(n)*A057428(n)+n` -/
def P577096308859315370.Spec : Prop :=
  ∀ n, P577096308859315370.a n = A054847 n

end A054847

/-! ## A054847.P6252581706947660239

`∑{d}[A054848(n)+A001489(n), A000010(#)]`
-/

namespace A054847.P6252581706947660239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054848 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A054847.P6252581706947660239

namespace A054847

/-- `∑{d}[A054848(n)+A001489(n), A000010(#)]` -/
def P6252581706947660239.Spec : Prop :=
  ∀ n, P6252581706947660239.a n = A054847 n

end A054847

/-!
# A054848: n - nearest integer to (nearest integer to n^(2/3))^(3/2).

The programs for A054848, the canonical program `A054848.P2491255757427976434` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054848 has offset 0).

The definition of A054848 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A054847, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054848.P2491255757427976434

`n-A054847(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054848

/-- `n-A054847(n)` -/
def P2491255757427976434.Spec : Prop :=
  ∀ n, P2491255757427976434.a n = A054848 n

theorem P2491255757427976434.correct : P2491255757427976434.Spec := by
  intro n
  simp only [A054848]

end A054848

/-! ## A054848.P1910715372035924146

`n-A002821(A054846(n))`
-/

namespace A054848.P1910715372035924146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A002821 (A054846 n).toNat

end

end A054848.P1910715372035924146

namespace A054848

/-- `n-A002821(A054846(n))` -/
def P1910715372035924146.Spec : Prop :=
  ∀ n, P1910715372035924146.a n = A054848 n

end A054848

/-! ## A054848.P14934931536647038746

`round(n-sqrt(round(n^(2/3))^3))`
-/

namespace A054848.P14934931536647038746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (SequenceMachineLib.roundAway ((n : ℝ) ^ ((2 : ℚ) / 3 : ℝ)) ^ 3 : ℝ))

end

end A054848.P14934931536647038746

namespace A054848

/-- `round(n-sqrt(round(n^(2/3))^3))` -/
def P14934931536647038746.Spec : Prop :=
  ∀ n, P14934931536647038746.a n = A054848 n

end A054848

/-! ## A054848.P4227878880286775658

`-(A054847(n)+A001489(n))`
-/

namespace A054848.P4227878880286775658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A054847 n + A001489 n)

end

end A054848.P4227878880286775658

namespace A054848

/-- `-(A054847(n)+A001489(n))` -/
def P4227878880286775658.Spec : Prop :=
  ∀ n, P4227878880286775658.a n = A054848 n

end A054848

/-! ## A054848.P15284560289273033672

`A001489(A054847(n))+sqrt(A000290(n))`
-/

namespace A054848.P15284560289273033672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001489 (A054847 n).toNat : ℝ) + Real.sqrt (A000290 n : ℝ)

end

end A054848.P15284560289273033672

namespace A054848

/-- `A001489(A054847(n))+sqrt(A000290(n))` -/
def P15284560289273033672.Spec : Prop :=
  ∀ n, P15284560289273033672.a n = (A054848 n : ℝ)

end A054848

/-! ## A054848.P6448542381585245223

`A110654(2*n)+A001489(A054847(n))`
-/

namespace A054848.P6448542381585245223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n) + A001489 (A054847 n).toNat

end

end A054848.P6448542381585245223

namespace A054848

/-- `A110654(2*n)+A001489(A054847(n))` -/
def P6448542381585245223.Spec : Prop :=
  ∀ n, P6448542381585245223.a n = A054848 n

end A054848

/-! ## A054848.P7316348984430335893

`A004526(2*n)+A001489(A054847(n))`
-/

namespace A054848.P7316348984430335893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * n) + A001489 (A054847 n).toNat

end

end A054848.P7316348984430335893

namespace A054848

/-- `A004526(2*n)+A001489(A054847(n))` -/
def P7316348984430335893.Spec : Prop :=
  ∀ n, P7316348984430335893.a n = A054848 n

end A054848

/-!
# A054849: a(n) = 2^(n-5)*binomial(n,5). Number of 5D hypercubes in an n-dimensional hypercube.

The programs for A054849, the canonical program `A054849.P4935477450417304493` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054849 has offset 5).

The definition of A054849 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(n+5, 5)` (program `A054849.P4935477450417304493`, by `A054849.P4935477450417304493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054849.P4935477450417304493

`2^n*C(n+5, 5)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054849

/-- `2^n*C(n+5, 5)` -/
def P4935477450417304493.Spec : Prop :=
  ∀ n, (P4935477450417304493.a n : ℤ) = A054849 (n + 5)

theorem P4935477450417304493.correct : P4935477450417304493.Spec := by
  intro n
  simp only [A054849, Nat.add_sub_cancel]

end A054849

/-! ## A054849.P1132322888207685623

`2*a(n-1)+A003472(n+4)` with `a(0)=1`
-/

namespace A054849.P1132322888207685623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A003472 (n + 4)

end

end A054849.P1132322888207685623

namespace A054849

/-- `2*a(n-1)+A003472(n+4)` -/
def P1132322888207685623.Spec : Prop :=
  ∀ n, P1132322888207685623.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P16988034589237218547

`(10/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A054849.P16988034589237218547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (10 / (n : ℚ) + 2) * a (n - 1)

end

end A054849.P16988034589237218547

namespace A054849

/-- `(10/n+2)*a(n-1)` -/
def P16988034589237218547.Spec : Prop :=
  ∀ n, P16988034589237218547.a n = (A054849 (n + 5) : ℚ)

end A054849

/-! ## A054849.P14036268930409995376

`2^n*∑[∑[∑[∑[n+1]]]]`
-/

namespace A054849.P14036268930409995376
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054849.P14036268930409995376

namespace A054849

/-- `2^n*∑[∑[∑[∑[n+1]]]]` -/
def P14036268930409995376.Spec : Prop :=
  ∀ n, (P14036268930409995376.a n : ℤ) = A054849 (n + 5)

end A054849

/-! ## A054849.P2718074497287436728

`∑[A006975(n)]`
-/

namespace A054849.P2718074497287436728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054849.P2718074497287436728

namespace A054849

/-- `∑[A006975(n)]` -/
def P2718074497287436728.Spec : Prop :=
  ∀ n, P2718074497287436728.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P112026042872849649

`A082139(n+1)-A080951(n+1)`
-/

namespace A054849.P112026042872849649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082139 (n + 1) - A080951 (n + 1)

end

end A054849.P112026042872849649

namespace A054849

/-- `A082139(n+1)-A080951(n+1)` -/
def P112026042872849649.Spec : Prop :=
  ∀ n, P112026042872849649.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P16910561153333624309

`A006975(n+1)-A003472(n+5)`
-/

namespace A054849.P16910561153333624309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006975 (n + 1) - A003472 (n + 5)

end

end A054849.P16910561153333624309

namespace A054849

/-- `A006975(n+1)-A003472(n+5)` -/
def P16910561153333624309.Spec : Prop :=
  ∀ n, P16910561153333624309.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P1356209850890710851

`A080952(n)+A080952(n)-A080951(n+1)`
-/

namespace A054849.P1356209850890710851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080952 n + (A080952 n - A080951 (n + 1))

end

end A054849.P1356209850890710851

namespace A054849

/-- `A080952(n)+A080952(n)-A080951(n+1)` -/
def P1356209850890710851.Spec : Prop :=
  ∀ n, P1356209850890710851.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P772244203911045194

`A006975(n+1)+A211386(n)-A211386(n+1)`
-/

namespace A054849.P772244203911045194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006975 (n + 1) + (A211386 n - A211386 (n + 1))

end

end A054849.P772244203911045194

namespace A054849

/-- `A006975(n+1)+A211386(n)-A211386(n+1)` -/
def P772244203911045194.Spec : Prop :=
  ∀ n, P772244203911045194.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P13824689049257269758

`A211388(n+1)-(A211388(n)+A006975(n+1))`
-/

namespace A054849.P13824689049257269758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211388 (n + 1) - (A211388 n + A006975 (n + 1))

end

end A054849.P13824689049257269758

namespace A054849

/-- `A211388(n+1)-(A211388(n)+A006975(n+1))` -/
def P13824689049257269758.Spec : Prop :=
  ∀ n, P13824689049257269758.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P7695956121807948264

`2*A006976(n)-A002409(n)`
-/

namespace A054849.P7695956121807948264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006976 n - A002409 n

end

end A054849.P7695956121807948264

namespace A054849

/-- `2*A006976(n)-A002409(n)` -/
def P7695956121807948264.Spec : Prop :=
  ∀ n, P7695956121807948264.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P4585832861016827678

`A082140(n+1)-(A080951(n+1)+A002409(n))`
-/

namespace A054849.P4585832861016827678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 (n + 1) - (A080951 (n + 1) + A002409 n)

end

end A054849.P4585832861016827678

namespace A054849

/-- `A082140(n+1)-(A080951(n+1)+A002409(n))` -/
def P4585832861016827678.Spec : Prop :=
  ∀ n, P4585832861016827678.a n = A054849 (n + 5)

end A054849

/-! ## A054849.P13153703156861272427

`A002409(n+1)*A130811(n+5)/A130812(n+7)`
-/

namespace A054849.P13153703156861272427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 (n + 1) * A130811 (n + 5) : ℚ) / (A130812 (n + 7) : ℚ)

end

end A054849.P13153703156861272427

namespace A054849

/-- `A002409(n+1)*A130811(n+5)/A130812(n+7)` -/
def P13153703156861272427.Spec : Prop :=
  ∀ n, P13153703156861272427.a n = (A054849 (n + 5) : ℚ)

end A054849

/-! ## A054849.P5573943136456320532

`A045543(n)/A000079(n)`
-/

namespace A054849.P5573943136456320532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045543 n : ℚ) / (A000079 n : ℚ)

end

end A054849.P5573943136456320532

namespace A054849

/-- `A045543(n)/A000079(n)` -/
def P5573943136456320532.Spec : Prop :=
  ∀ n, P5573943136456320532.a n = (A054849 (n + 5) : ℚ)

end A054849

/-! ## A054849.P9567233190702379862

`A011782(n+1)*A082139(n)/A011782(n)`
-/

namespace A054849.P9567233190702379862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) * A082139 n : ℚ) / (A011782 n : ℚ)

end

end A054849.P9567233190702379862

namespace A054849

/-- `A011782(n+1)*A082139(n)/A011782(n)` -/
def P9567233190702379862.Spec : Prop :=
  ∀ n, P9567233190702379862.a n = (A054849 (n + 5) : ℚ)

end A054849

/-! ## A054849.P10951004066820713445

`A000079(n)²*A277935(n+2)/A000079(n+1)`
-/

namespace A054849.P10951004066820713445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n ^ 2 * A277935 (n + 2) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A054849.P10951004066820713445

namespace A054849

/-- `A000079(n)²*A277935(n+2)/A000079(n+1)` -/
def P10951004066820713445.Spec : Prop :=
  ∀ n, P10951004066820713445.a n = (A054849 (n + 5) : ℚ)

end A054849

/-! ## A054849.P17325927878616128047

`A000079(2*n)*A277935(n+2)/A000079(n+1)`
-/

namespace A054849.P17325927878616128047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) * A277935 (n + 2) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A054849.P17325927878616128047

namespace A054849

/-- `A000079(2*n)*A277935(n+2)/A000079(n+1)` -/
def P17325927878616128047.Spec : Prop :=
  ∀ n, P17325927878616128047.a n = (A054849 (n + 5) : ℚ)

end A054849

/-! ## A054849.P7698518508242142311

`A002409(n)*A082139(n)/A082140(n)`
-/

namespace A054849.P7698518508242142311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n * A082139 n : ℚ) / (A082140 n : ℚ)

end

end A054849.P7698518508242142311

namespace A054849

/-- `A002409(n)*A082139(n)/A082140(n)` -/
def P7698518508242142311.Spec : Prop :=
  ∀ n, P7698518508242142311.a n = (A054849 (n + 5) : ℚ)

end A054849

/-! ## A054849.P15030825669360918570

`A054851(n+7)*A082139(n)/A082141(n)`
-/

namespace A054849.P15030825669360918570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054851 (n + 7) * A082139 n : ℚ) / (A082141 n : ℚ)

end

end A054849.P15030825669360918570

namespace A054849

/-- `A054851(n+7)*A082139(n)/A082141(n)` -/
def P15030825669360918570.Spec : Prop :=
  ∀ n, P15030825669360918570.a n = (A054849 (n + 5) : ℚ)

end A054849

/-! ## A054849.P13711942349449273581

`A036084(n)/A000244(n)`
-/

namespace A054849.P13711942349449273581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036084 n : ℚ) / (A000244 n : ℚ)

end

end A054849.P13711942349449273581

namespace A054849

/-- `A036084(n)/A000244(n)` -/
def P13711942349449273581.Spec : Prop :=
  ∀ n, P13711942349449273581.a n = (A054849 (n + 5) : ℚ)

end A054849

/-!
# A054850: Binary logarithm of n-th primorial, rounded down to an integer.

The programs for A054850, the canonical program `A054850.P16333873997554975139` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054850 has offset 1).

The definition of A054850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054850.P2760315646669553998

`floor(∑[log2(A000040(n+1))])`
-/

namespace A054850.P2760315646669553998
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000040 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054850.P2760315646669553998

namespace A054850

/-- `floor(∑[log2(A000040(n+1))])` -/
def P2760315646669553998.Spec : Prop :=
  ∀ n, P2760315646669553998.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P10452576439742344834

`A058033(n)+a(n-1)` with `a(0)=1`
-/

namespace A054850.P10452576439742344834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A058033 n + a (n - 1)

end

end A054850.P10452576439742344834

namespace A054850

/-- `A058033(n)+a(n-1)` -/
def P10452576439742344834.Spec : Prop :=
  ∀ n, P10452576439742344834.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P11716494329074903844

`floor(∑[log2(A006093(n+1)+1)])`
-/

namespace A054850.P11716494329074903844
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006093 (n + 1) + 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054850.P11716494329074903844

namespace A054850

/-- `floor(∑[log2(A006093(n+1)+1)])` -/
def P11716494329074903844.Spec : Prop :=
  ∀ n, P11716494329074903844.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P7369919305667068485

`floor(∑[log2(A008864(n+1)-1)])`
-/

namespace A054850.P7369919305667068485
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A008864 (n + 1) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054850.P7369919305667068485

namespace A054850

/-- `floor(∑[log2(A008864(n+1)-1)])` -/
def P7369919305667068485.Spec : Prop :=
  ∀ n, P7369919305667068485.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P3027404939465483101

`floor(∑[log2(A040976(n+1)+2)])`
-/

namespace A054850.P3027404939465483101
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040976 (n + 1) + 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054850.P3027404939465483101

namespace A054850

/-- `floor(∑[log2(A040976(n+1)+2)])` -/
def P3027404939465483101.Spec : Prop :=
  ∀ n, P3027404939465483101.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P16333873997554975139

`A057428(n)+A045716(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A054850

/-- `A057428(n)+A045716(n+1)` -/
def P16333873997554975139.Spec : Prop :=
  ∀ n, P16333873997554975139.a n = A054850 (n + 1)

theorem P16333873997554975139.correct : P16333873997554975139.Spec := by
  intro n
  simp only [A054850, Nat.add_sub_cancel]

end A054850

/-! ## A054850.P4338518199754735688

`A045716(n+1)-A057427(n)`
-/

namespace A054850.P4338518199754735688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - A057427 n

end

end A054850.P4338518199754735688

namespace A054850

/-- `A045716(n+1)-A057427(n)` -/
def P4338518199754735688.Spec : Prop :=
  ∀ n, P4338518199754735688.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P15086583519110290272

`A045716(n+1)+A000007(n)-1`
-/

namespace A054850.P15086583519110290272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) + (A000007 n - 1)

end

end A054850.P15086583519110290272

namespace A054850

/-- `A045716(n+1)+A000007(n)-1` -/
def P15086583519110290272.Spec : Prop :=
  ∀ n, P15086583519110290272.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P12337299753370683304

`∑[A058033(n+1)]+1-A058033(n+1)`
-/

namespace A054850.P12337299753370683304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A058033 (n + 1))

end

end A054850.P12337299753370683304

namespace A054850

/-- `∑[A058033(n+1)]+1-A058033(n+1)` -/
def P12337299753370683304.Spec : Prop :=
  ∀ n, P12337299753370683304.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P1629053371552010353

`A045716(n+1)-A309307(A034444(n+1))`
-/

namespace A054850.P1629053371552010353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - A309307 (A034444 (n + 1)).toNat

end

end A054850.P1629053371552010353

namespace A054850

/-- `A045716(n+1)-A309307(A034444(n+1))` -/
def P1629053371552010353.Spec : Prop :=
  ∀ n, P1629053371552010353.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P1719970343864846125

`A045716(n+1)-A029837(n+1)/A070939(n)`
-/

namespace A054850.P1719970343864846125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045716 (n + 1) : ℚ) - (A029837 (n + 1) : ℚ) / (A070939 n : ℚ)

end

end A054850.P1719970343864846125

namespace A054850

/-- `A045716(n+1)-A029837(n+1)/A070939(n)` -/
def P1719970343864846125.Spec : Prop :=
  ∀ n, P1719970343864846125.a n = (A054850 (n + 1) : ℚ)

end A054850

/-! ## A054850.P4684322881904045671

`floor(∑[log2(A158611(n+3))])`
-/

namespace A054850.P4684322881904045671
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A158611 (n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054850.P4684322881904045671

namespace A054850

/-- `floor(∑[log2(A158611(n+3))])` -/
def P4684322881904045671.Spec : Prop :=
  ∀ n, P4684322881904045671.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P15422426116330263097

`floor(∑[record[log2(A006530(n+2))]])`
-/

namespace A054850.P15422426116330263097
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A006530 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054850.P15422426116330263097

namespace A054850

/-- `floor(∑[record[log2(A006530(n+2))]])` -/
def P15422426116330263097.Spec : Prop :=
  ∀ n, P15422426116330263097.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P1966107149879996724

`floor(∑[record[log2(A020639(n+2))]])`
-/

namespace A054850.P1966107149879996724
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A020639 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054850.P1966107149879996724

namespace A054850

/-- `floor(∑[record[log2(A020639(n+2))]])` -/
def P1966107149879996724.Spec : Prop :=
  ∀ n, P1966107149879996724.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P10003311328890561324

`floor(∑[record[log2(A014963(n+2))]])`
-/

namespace A054850.P10003311328890561324
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A014963 (n + 2) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A054850.P10003311328890561324

namespace A054850

/-- `floor(∑[record[log2(A014963(n+2))]])` -/
def P10003311328890561324.Spec : Prop :=
  ∀ n, P10003311328890561324.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P4394245413858352535

`A055456(A045716(n+1))`
-/

namespace A054850.P4394245413858352535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055456 (A045716 (n + 1)).toNat

end

end A054850.P4394245413858352535

namespace A054850

/-- `A055456(A045716(n+1))` -/
def P4394245413858352535.Spec : Prop :=
  ∀ n, P4394245413858352535.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P17222263770028439212

`A287010(∑[n]+1)`
-/

namespace A054850.P17222263770028439212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287010 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054850.P17222263770028439212

namespace A054850

/-- `A287010(∑[n]+1)` -/
def P17222263770028439212.Spec : Prop :=
  ∀ n, P17222263770028439212.a n = A054850 (n + 1)

end A054850

/-! ## A054850.P6524265058130319410

`record[A287010(n+1)]`
-/

namespace A054850.P6524265058130319410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054850.P6524265058130319410

namespace A054850

/-- `record[A287010(n+1)]` -/
def P6524265058130319410.Spec : Prop :=
  ∀ n, P6524265058130319410.a n = A054850 (n + 1)

end A054850

/-!
# A054851: a(n) = 2^(n-7)*binomial(n,7). Number of 7D hypercubes in an n-dimensional hypercube.

The programs for A054851, the canonical program `A054851.P5871459937666944888` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054851 has offset 7).

The definition of A054851 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(n+7, 7)` (program `A054851.P5871459937666944888`, by `A054851.P5871459937666944888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054851.P5871459937666944888

`2^n*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054851

/-- `2^n*C(n+7, 7)` -/
def P5871459937666944888.Spec : Prop :=
  ∀ n, (P5871459937666944888.a n : ℤ) = A054851 (n + 7)

theorem P5871459937666944888.correct : P5871459937666944888.Spec := by
  intro n
  simp only [A054851, Nat.add_sub_cancel]

end A054851

/-! ## A054851.P1410459847778298767

`2*a(n-1)+A002409(n)` with `a(0)=1`
-/

namespace A054851.P1410459847778298767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A002409 n

end

end A054851.P1410459847778298767

namespace A054851

/-- `2*a(n-1)+A002409(n)` -/
def P1410459847778298767.Spec : Prop :=
  ∀ n, P1410459847778298767.a n = A054851 (n + 7)

end A054851

/-! ## A054851.P2867045985634656256

`(14/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A054851.P2867045985634656256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (14 / (n : ℚ) + 2) * a (n - 1)

end

end A054851.P2867045985634656256

namespace A054851

/-- `(14/n+2)*a(n-1)` -/
def P2867045985634656256.Spec : Prop :=
  ∀ n, P2867045985634656256.a n = (A054851 (n + 7) : ℚ)

end A054851

/-! ## A054851.P745813117495282666

`2^n*∑[∑[∑[∑[∑[∑[n+1]]]]]]`
-/

namespace A054851.P745813117495282666
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054851.P745813117495282666

namespace A054851

/-- `2^n*∑[∑[∑[∑[∑[∑[n+1]]]]]]` -/
def P745813117495282666.Spec : Prop :=
  ∀ n, (P745813117495282666.a n : ℤ) = A054851 (n + 7)

end A054851

/-! ## A054851.P11102457603890401637

`∑[A209404(n)]`
-/

namespace A054851.P11102457603890401637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209404 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054851.P11102457603890401637

namespace A054851

/-- `∑[A209404(n)]` -/
def P11102457603890401637.Spec : Prop :=
  ∀ n, P11102457603890401637.a n = A054851 (n + 7)

end A054851

/-! ## A054851.P5139287391657177619

`2*A209404(n)-A002409(n)`
-/

namespace A054851.P5139287391657177619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209404 n - A002409 n

end

end A054851.P5139287391657177619

namespace A054851

/-- `2*A209404(n)-A002409(n)` -/
def P5139287391657177619.Spec : Prop :=
  ∀ n, P5139287391657177619.a n = A054851 (n + 7)

end A054851

/-! ## A054851.P3886434640250241096

`A082141(n+1)-A082140(n+1)`
-/

namespace A054851.P3886434640250241096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082141 (n + 1) - A082140 (n + 1)

end

end A054851.P3886434640250241096

namespace A054851

/-- `A082141(n+1)-A082140(n+1)` -/
def P3886434640250241096.Spec : Prop :=
  ∀ n, P3886434640250241096.a n = A054851 (n + 7)

end A054851

/-! ## A054851.P4489968299781990068

`A209404(n+1)-A002409(n+1)`
-/

namespace A054851.P4489968299781990068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209404 (n + 1) - A002409 (n + 1)

end

end A054851.P4489968299781990068

namespace A054851

/-- `A209404(n+1)-A002409(n+1)` -/
def P4489968299781990068.Spec : Prop :=
  ∀ n, P4489968299781990068.a n = A054851 (n + 7)

end A054851

/-! ## A054851.P7696862754922501302

`A000580(n+7)*A001788(n+1)/A000217(n+1)`
-/

namespace A054851.P7696862754922501302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000580 (n + 7) * A001788 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ)

end

end A054851.P7696862754922501302

namespace A054851

/-- `A000580(n+7)*A001788(n+1)/A000217(n+1)` -/
def P7696862754922501302.Spec : Prop :=
  ∀ n, P7696862754922501302.a n = (A054851 (n + 7) : ℚ)

end A054851

/-! ## A054851.P16589140169009838250

`A011782(n+1)*A082141(n)/A011782(n)`
-/

namespace A054851.P16589140169009838250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) * A082141 n : ℚ) / (A011782 n : ℚ)

end

end A054851.P16589140169009838250

namespace A054851

/-- `A011782(n+1)*A082141(n)/A011782(n)` -/
def P16589140169009838250.Spec : Prop :=
  ∀ n, P16589140169009838250.a n = (A054851 (n + 7) : ℚ)

end A054851

/-! ## A054851.P3129130872200940480

`A054338(n)/A000079(n)`
-/

namespace A054851.P3129130872200940480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054338 n : ℚ) / (A000079 n : ℚ)

end

end A054851.P3129130872200940480

namespace A054851

/-- `A054338(n)/A000079(n)` -/
def P3129130872200940480.Spec : Prop :=
  ∀ n, P3129130872200940480.a n = (A054851 (n + 7) : ℚ)

end A054851

/-! ## A054851.P15339227943225219314

`A054338(n)/(A000051(n)-1)`
-/

namespace A054851.P15339227943225219314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054338 n : ℚ) / (A000051 n - 1 : ℚ)

end

end A054851.P15339227943225219314

namespace A054851

/-- `A054338(n)/(A000051(n)-1)` -/
def P15339227943225219314.Spec : Prop :=
  ∀ n, P15339227943225219314.a n = (A054851 (n + 7) : ℚ)

end A054851

/-! ## A054851.P4132797480850386895

`A001789(n+3)*A082141(n)/A082138(n)`
-/

namespace A054851.P4132797480850386895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001789 (n + 3) * A082141 n : ℚ) / (A082138 n : ℚ)

end

end A054851.P4132797480850386895

namespace A054851

/-- `A001789(n+3)*A082141(n)/A082138(n)` -/
def P4132797480850386895.Spec : Prop :=
  ∀ n, P4132797480850386895.a n = (A054851 (n + 7) : ℚ)

end A054851

/-! ## A054851.P15921977598321434549

`gcd(2*A082141(n), A082141(n)²)`
-/

namespace A054851.P15921977598321434549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A082141 n) (A082141 n ^ 2)

end

end A054851.P15921977598321434549

namespace A054851

/-- `gcd(2*A082141(n), A082141(n)²)` -/
def P15921977598321434549.Spec : Prop :=
  ∀ n, (P15921977598321434549.a n : ℤ) = A054851 (n + 7)

end A054851

/-! ## A054851.P2968131417912179866

`A141407(n)/3^n`
-/

namespace A054851.P2968131417912179866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141407 n : ℚ) / (3 ^ n : ℚ)

end

end A054851.P2968131417912179866

namespace A054851

/-- `A141407(n)/3^n` -/
def P2968131417912179866.Spec : Prop :=
  ∀ n, P2968131417912179866.a n = (A054851 (n + 7) : ℚ)

end A054851

/-! ## A054851.P1976872580727734669

`A053107(n)/A000302(n)`
-/

namespace A054851.P1976872580727734669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053107 n : ℚ) / (A000302 n : ℚ)

end

end A054851.P1976872580727734669

namespace A054851

/-- `A053107(n)/A000302(n)` -/
def P1976872580727734669.Spec : Prop :=
  ∀ n, P1976872580727734669.a n = (A054851 (n + 7) : ℚ)

end A054851

/-!
# A054852: 

The programs for A054852, there is no canonical definition to state claims against.
-/

/-! ## A054852.P4965300424801644027

`A002882(p?[∑[dr(3*n)%4]+4])`
-/

namespace A054852.P4965300424801644027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (3 * n : ℤ) % 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002882 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A054852.P4965300424801644027

/-!
# A054854: Number of ways to tile a 4 X n region with 1 X 1 and 2 X 2 tiles.

The programs for A054854, the canonical program `A054854.P3746837891486373270` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054854 has offset 0).

The definition of A054854 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054854.P3746837891486373270

`2*a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054854

/-- `2*a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P3746837891486373270.Spec : Prop :=
  ∀ n, P3746837891486373270.a n = A054854 n

theorem P3746837891486373270.correct : P3746837891486373270.Spec := by
  intro n
  simp only [A054854]

end A054854

/-! ## A054854.P4807056781957889946

`ogf((1-x)/(1-2x-3x^2+2x^3))`
-/

namespace A054854.P4807056781957889946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -3, 2] n

end

end A054854.P4807056781957889946

namespace A054854

/-- `ogf((1-x)/(1-2x-3x^2+2x^3))` -/
def P4807056781957889946.Spec : Prop :=
  ∀ n, P4807056781957889946.a n = A054854 n

end A054854

/-! ## A054854.P11115248735487116830

`A230893(n+2)/2`
-/

namespace A054854.P11115248735487116830
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230893 (n + 2) : ℚ) / 2

end

end A054854.P11115248735487116830

namespace A054854

/-- `A230893(n+2)/2` -/
def P11115248735487116830.Spec : Prop :=
  ∀ n, P11115248735487116830.a n = (A054854 n : ℚ)

end A054854

/-! ## A054854.P5987425587502722374

`abs(Δ[A046672(abs(1-n))])`
-/

namespace A054854.P5987425587502722374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046672 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A054854.P5987425587502722374

namespace A054854

/-- `abs(Δ[A046672(abs(1-n))])` -/
def P5987425587502722374.Spec : Prop :=
  ∀ n, P5987425587502722374.a n = A054854 n

end A054854

/-! ## A054854.P15017154818672364216

`A228501(n+1)-A046672(n)`
-/

namespace A054854.P15017154818672364216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228501 (n + 1) - A046672 n

end

end A054854.P15017154818672364216

namespace A054854

/-- `A228501(n+1)-A046672(n)` -/
def P15017154818672364216.Spec : Prop :=
  ∀ n, P15017154818672364216.a n = A054854 n

end A054854

/-! ## A054854.P10923519319030009424

`2*A046672(n)-A101197(n)`
-/

namespace A054854.P10923519319030009424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046672 n - A101197 n

end

end A054854.P10923519319030009424

namespace A054854

/-- `2*A046672(n)-A101197(n)` -/
def P10923519319030009424.Spec : Prop :=
  ∀ n, P10923519319030009424.a n = A054854 n

end A054854

/-! ## A054854.P15271399676114028216

`A101197(n)-∑[A230893(n+1)]`
-/

namespace A054854.P15271399676114028216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101197 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054854.P15271399676114028216

namespace A054854

/-- `A101197(n)-∑[A230893(n+1)]` -/
def P15271399676114028216.Spec : Prop :=
  ∀ n, P15271399676114028216.a n = A054854 n

end A054854

/-! ## A054854.P9417395891789710012

`Δ[A101197(n)-A046672(n)]`
-/

namespace A054854.P9417395891789710012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101197 n - A046672 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054854.P9417395891789710012

namespace A054854

/-- `Δ[A101197(n)-A046672(n)]` -/
def P9417395891789710012.Spec : Prop :=
  ∀ n, P9417395891789710012.a n = A054854 n

end A054854

/-! ## A054854.P9749786312046325404

`Δ[A228501(n+1)-A230893(n+2)]`
-/

namespace A054854.P9749786312046325404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228501 (n + 1) - A230893 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054854.P9749786312046325404

namespace A054854

/-- `Δ[A228501(n+1)-A230893(n+2)]` -/
def P9749786312046325404.Spec : Prop :=
  ∀ n, P9749786312046325404.a n = A054854 n

end A054854

/-!
# A054855: Number of ways to tile a 5 X n area with 1 X 1 and 2 X 2 tiles.

The programs for A054855, the canonical program `A054855.P1019259447759465159` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054855 has offset 0).

The definition of A054855 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054855.P1019259447759465159

`2*a(n-1)+7*a(n-2)-2*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=1, a(2)=8, a(3)=21`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054855

/-- `2*a(n-1)+7*a(n-2)-2*a(n-3)-3*a(n-4)` -/
def P1019259447759465159.Spec : Prop :=
  ∀ n, P1019259447759465159.a n = A054855 n

theorem P1019259447759465159.correct : P1019259447759465159.Spec := by
  intro n
  simp only [A054855]

end A054855

/-! ## A054855.P7646915998362508505

`A245013(eq[5, A002262(n)])`
-/

namespace A054855.P7646915998362508505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054855.P7646915998362508505

namespace A054855

/-- `A245013(eq[5, A002262(n)])` -/
def P7646915998362508505.Spec : Prop :=
  ∀ n, P7646915998362508505.a n = A054855 n

end A054855

/-! ## A054855.P15178142824515219128

`A245013(eq[5, A141169(n)])`
-/

namespace A054855.P15178142824515219128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054855.P15178142824515219128

namespace A054855

/-- `A245013(eq[5, A141169(n)])` -/
def P15178142824515219128.Spec : Prop :=
  ∀ n, P15178142824515219128.a n = A054855 n

end A054855

/-! ## A054855.P522550500058423670

`A245013(eq[5, A025581(n)])`
-/

namespace A054855.P522550500058423670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054855.P522550500058423670

namespace A054855

/-- `A245013(eq[5, A025581(n)])` -/
def P522550500058423670.Spec : Prop :=
  ∀ n, P522550500058423670.a n = A054855 n

end A054855

/-! ## A054855.P7703976356984014369

`A245013(eq[11, A099375(n)])`
-/

namespace A054855.P7703976356984014369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245013 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054855.P7703976356984014369

namespace A054855

/-- `A245013(eq[11, A099375(n)])` -/
def P7703976356984014369.Spec : Prop :=
  ∀ n, P7703976356984014369.a n = A054855 n

end A054855

/-!
# A054856: Number of ways to tile a 4 X n region with 1 X 1, 2 X 2, 3 X 3 and 4 X 4 tiles.

The programs for A054856, the canonical program `A054856.P7601051250456548427` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054856 has offset 0).

The definition of A054856 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054856.P7601051250456548427

`2*a(n-1)+3*a(n-2)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=1, a(2)=5, a(3)=13, a(4)=40`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054856

/-- `2*a(n-1)+3*a(n-2)-a(n-4)-a(n-5)` -/
def P7601051250456548427.Spec : Prop :=
  ∀ n, P7601051250456548427.a n = A054856 n

theorem P7601051250456548427.correct : P7601051250456548427.Spec := by
  intro n
  simp only [A054856]

end A054856

/-! ## A054856.P4989789764799670070

`ogf((1-x)/(1-2x-3x^2+x^4+x^5))`
-/

namespace A054856.P4989789764799670070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -2, -3, 0, 1, 1] n

end

end A054856.P4989789764799670070

namespace A054856

/-- `ogf((1-x)/(1-2x-3x^2+x^4+x^5))` -/
def P4989789764799670070.Spec : Prop :=
  ∀ n, P4989789764799670070.a n = A054856 n

end A054856

/-! ## A054856.P6067465932924939262

`A219924(A052905(n+2))`
-/

namespace A054856.P6067465932924939262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A052905 (n + 2)).toNat

end

end A054856.P6067465932924939262

namespace A054856

/-- `A219924(A052905(n+2))` -/
def P6067465932924939262.Spec : Prop :=
  ∀ n, P6067465932924939262.a n = A054856 n

end A054856

/-! ## A054856.P13023005842527364881

`A219924(A056000(n)+14)`
-/

namespace A054856.P13023005842527364881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (A056000 n + 14).toNat

end

end A054856.P13023005842527364881

namespace A054856

/-- `A219924(A056000(n)+14)` -/
def P13023005842527364881.Spec : Prop :=
  ∀ n, P13023005842527364881.a n = A054856 n

end A054856

/-! ## A054856.P9756587408934024554

`A219924(eq[4, A002262(n)])`
-/

namespace A054856.P9756587408934024554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054856.P9756587408934024554

namespace A054856

/-- `A219924(eq[4, A002262(n)])` -/
def P9756587408934024554.Spec : Prop :=
  ∀ n, P9756587408934024554.a n = A054856 n

end A054856

/-!
# A054857: Number of ways to tile a 5 X n region with square tiles of size up to 5 X 5.

The programs for A054857, there is no canonical definition to state claims against.
-/

/-! ## A054857.P13490604275192062823

`A219924(eq[5, A002262(n)])`
-/

namespace A054857.P13490604275192062823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054857.P13490604275192062823

/-! ## A054857.P14164895372508304436

`A219924(eq[5, A025581(n)])`
-/

namespace A054857.P14164895372508304436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054857.P14164895372508304436

/-! ## A054857.P10109095072506541430

`A219924(eq[6, A002260(n+1)])`
-/

namespace A054857.P10109095072506541430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054857.P10109095072506541430

/-! ## A054857.P5407113492324044125

`A219924(eq[6, A004736(n+1)])`
-/

namespace A054857.P5407113492324044125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054857.P5407113492324044125

/-! ## A054857.P2152912163244058361

`A219924(2*n+A000217(n+4)+5)`
-/

namespace A054857.P2152912163244058361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219924 ((2 * n : ℤ) + (A000217 (n + 4) + 5)).toNat

end

end A054857.P2152912163244058361

/-!
# A054858: Number of basic blocks of size 5xn for tilings with square tiles of size up to 5 X 5.

The programs for A054858, the canonical program `A054858.P17587473399279716707` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054858 has offset 1).

The definition of A054858 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054858.P17587473399279716707

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=13, a(3)=20, a(4)=35, a(5)=66, a(6)=118, a(7)=218`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054858

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P17587473399279716707.Spec : Prop :=
  ∀ n, (P17587473399279716707.a n : ℤ) = A054858 (n + 1)

theorem P17587473399279716707.correct : P17587473399279716707.Spec := by
  intro n
  simp only [A054858, Nat.add_sub_cancel]

end A054858

/-!
# A054859: Smallest positive integer that can be expressed as the sum of consecutive primes in exactly n ways.

The programs for A054859, there is no canonical definition to state claims against.
-/

/-! ## A054859.P13102853045371461465

`A369937(∑[comp[2*n+3]!])`
-/

namespace A054859.P13102853045371461465
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054859.P13102853045371461465

/-!
# A054860: Number of ways of writing 2n+1 as p + q + r where p, q, r are primes with p <= q <= r.

The programs for A054860, there is no canonical definition to state claims against.
-/

/-! ## A054860.P12488179553874963163

`A068307(2*n+1)`
-/

namespace A054860.P12488179553874963163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (2 * n + 1)

end

end A054860.P12488179553874963163

/-! ## A054860.P11209827338052585423

`A102605(n)+A046927(n)`
-/

namespace A054860.P11209827338052585423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102605 n + A046927 n

end

end A054860.P11209827338052585423

/-! ## A054860.P13413252685234142561

`A083338(Δ[n²])`
-/

namespace A054860.P13413252685234142561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054860.P13413252685234142561

/-! ## A054860.P14069287740204937974

`A125688(2*n+1)+A046926(2*n+1)`
-/

namespace A054860.P14069287740204937974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (2 * n + 1) + A046926 (2 * n + 1)

end

end A054860.P14069287740204937974

/-! ## A054860.P2663949902188359010

`A083338(2*n+1)+A010051(2*(n+2))`
-/

namespace A054860.P2663949902188359010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (2 * n + 1) + A010051 (2 * (n + 2))

end

end A054860.P2663949902188359010

/-! ## A054860.P14614335375546686282

`A083338(A004442(2*n))-A159075(2*n)`
-/

namespace A054860.P14614335375546686282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083338 (A004442 (2 * n)).toNat - A159075 (2 * n)

end

end A054860.P14614335375546686282

/-! ## A054860.P14427750493836823563

`A071335(2*n+1)-(A061358(2*n+1)+A010051(2*n+1))`
-/

namespace A054860.P14427750493836823563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071335 (2 * n + 1) - (A061358 (2 * n + 1) + A010051 (2 * n + 1))

end

end A054860.P14427750493836823563

/-! ## A054860.P11037487946901792977

`A259194(2*n+3)`
-/

namespace A054860.P11037487946901792977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259194 (2 * n + 3)

end

end A054860.P11037487946901792977

/-! ## A054860.P5585300694181332504

`A355199(2*n+1)/(2*n+1)`
-/

namespace A054860.P5585300694181332504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355199 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)

end

end A054860.P5585300694181332504

/-! ## A054860.P18016698867142869579

`A045917(A136244(A083338(2*n+1)))`
-/

namespace A054860.P18016698867142869579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A136244 (A083338 (2 * n + 1)).toNat).toNat

end

end A054860.P18016698867142869579

/-! ## A054860.P4441246903617146386

`A125688(A125689(A068307(n+1+n)))`
-/

namespace A054860.P4441246903617146386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125688 (A125689 (A068307 (n + 1 + n)).toNat).toNat

end

end A054860.P4441246903617146386

/-! ## A054860.P17485463247289914074

`A308771(2*n+3)/2`
-/

namespace A054860.P17485463247289914074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308771 (2 * n + 3) : ℚ) / 2

end

end A054860.P17485463247289914074

/-!
# A054861: Greatest k such that 3^k divides n!.

The programs for A054861, the canonical program `A054861.P6137810495506521191` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054861 has offset 0).

The definition of A054861 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054861.P6137810495506521191

`floor(n/3)+a(floor(n/3))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054861

/-- `floor(n/3)+a(floor(n/3))` -/
def P6137810495506521191.Spec : Prop :=
  ∀ n, P6137810495506521191.a n = A054861 n

theorem P6137810495506521191.correct : P6137810495506521191.Spec := by
  intro n
  simp only [A054861]

end A054861

/-! ## A054861.P9579213263534264421

`(n-A053735(n))/2`
-/

namespace A054861.P9579213263534264421
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053735 n : ℚ) / 2

end

end A054861.P9579213263534264421

namespace A054861

/-- `(n-A053735(n))/2` -/
def P9579213263534264421.Spec : Prop :=
  ∀ n, P9579213263534264421.a n = (A054861 n : ℚ)

end A054861

/-! ## A054861.P6287587622303185041

`a(n-1)+val(n, 3)` with `a(0)=0`
-/

namespace A054861.P6287587622303185041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 3

end

end A054861.P6287587622303185041

namespace A054861

/-- `a(n-1)+val(n, 3)` -/
def P6287587622303185041.Spec : Prop :=
  ∀ n, (P6287587622303185041.a n : ℤ) = A054861 n

end A054861

/-! ## A054861.P3390451554566871169

`∑[val(abs(1-n)+1, 3)]`
-/

namespace A054861.P3390451554566871169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054861.P3390451554566871169

namespace A054861

/-- `∑[val(abs(1-n)+1, 3)]` -/
def P3390451554566871169.Spec : Prop :=
  ∀ n, (P3390451554566871169.a n : ℤ) = A054861 n

end A054861

/-! ## A054861.P18038539754979988232

`val(n, 3)-floor(-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A054861.P18038539754979988232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 3 : ℤ) - (-a (n - 1))

end

end A054861.P18038539754979988232

namespace A054861

/-- `val(n, 3)-floor(-a(n-1))` -/
def P18038539754979988232.Spec : Prop :=
  ∀ n, P18038539754979988232.a n = A054861 n

end A054861

/-! ## A054861.P14155368061558462265

`val(n, 3)-ceil(-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A054861.P14155368061558462265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 3 : ℤ) - (-a (n - 1))

end

end A054861.P14155368061558462265

namespace A054861

/-- `val(n, 3)-ceil(-a(n-1))` -/
def P14155368061558462265.Spec : Prop :=
  ∀ n, P14155368061558462265.a n = A054861 n

end A054861

/-! ## A054861.P14968789664017782641

`∑[val(n+1, 3)]-val(n+1, 3)`
-/

namespace A054861.P14968789664017782641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 3 : ℤ)

end

end A054861.P14968789664017782641

namespace A054861

/-- `∑[val(n+1, 3)]-val(n+1, 3)` -/
def P14968789664017782641.Spec : Prop :=
  ∀ n, P14968789664017782641.a n = A054861 n

end A054861

/-! ## A054861.P16790106393931372192

`A344853(n)/2`
-/

namespace A054861.P16790106393931372192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344853 n : ℚ) / 2

end

end A054861.P16790106393931372192

namespace A054861

/-- `A344853(n)/2` -/
def P16790106393931372192.Spec : Prop :=
  ∀ n, P16790106393931372192.a n = (A054861 n : ℚ)

end A054861

/-! ## A054861.P15076827985171171935

`A004128(n)-n`
-/

namespace A054861.P15076827985171171935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 n - (n : ℤ)

end

end A054861.P15076827985171171935

namespace A054861

/-- `A004128(n)-n` -/
def P15076827985171171935.Spec : Prop :=
  ∀ n, P15076827985171171935.a n = A054861 n

end A054861

/-! ## A054861.P16017951768825752369

`n-A089792(n)`
-/

namespace A054861.P16017951768825752369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089792 n

end

end A054861.P16017951768825752369

namespace A054861

/-- `n-A089792(n)` -/
def P16017951768825752369.Spec : Prop :=
  ∀ n, P16017951768825752369.a n = A054861 n

end A054861

/-! ## A054861.P15117093368320997020

`A004128(floor(n/3))`
-/

namespace A054861.P15117093368320997020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004128 ⌊(n : ℚ) / 3⌋.toNat

end

end A054861.P15117093368320997020

namespace A054861

/-- `A004128(floor(n/3))` -/
def P15117093368320997020.Spec : Prop :=
  ∀ n, P15117093368320997020.a n = A054861 n

end A054861

/-! ## A054861.P10421526477405295952

`comp[A096346(n)]-n`
-/

namespace A054861.P10421526477405295952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096346 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A054861.P10421526477405295952

namespace A054861

/-- `comp[A096346(n)]-n` -/
def P10421526477405295952.Spec : Prop :=
  ∀ n, P10421526477405295952.a n = A054861 n

end A054861

/-! ## A054861.P14371453585750760293

`n-A230641(n)/2`
-/

namespace A054861.P14371453585750760293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A230641 n : ℚ) / 2

end

end A054861.P14371453585750760293

namespace A054861

/-- `n-A230641(n)/2` -/
def P14371453585750760293.Spec : Prop :=
  ∀ n, P14371453585750760293.a n = (A054861 n : ℚ)

end A054861

/-! ## A054861.P10386345547884369732

`A346502(n)/2-n`
-/

namespace A054861.P10386345547884369732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346502 n : ℚ) / 2 - (n : ℚ)

end

end A054861.P10386345547884369732

namespace A054861

/-- `A346502(n)/2-n` -/
def P10386345547884369732.Spec : Prop :=
  ∀ n, P10386345547884369732.a n = (A054861 n : ℚ)

end A054861

/-! ## A054861.P1199603731209938300

`A120514(n+1)-(n+1)`
-/

namespace A054861.P1199603731209938300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120514 (n + 1) - (n + 1 : ℤ)

end

end A054861.P1199603731209938300

namespace A054861

/-- `A120514(n+1)-(n+1)` -/
def P1199603731209938300.Spec : Prop :=
  ∀ n, P1199603731209938300.a n = A054861 n

end A054861

/-! ## A054861.P3685311397480777963

`(n+1-A173523(n+1))/2`
-/

namespace A054861.P3685311397480777963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A173523 (n + 1) : ℚ) / 2

end

end A054861.P3685311397480777963

namespace A054861

/-- `(n+1-A173523(n+1))/2` -/
def P3685311397480777963.Spec : Prop :=
  ∀ n, P3685311397480777963.a n = (A054861 n : ℚ)

end A054861

/-! ## A054861.P12533005220598544775

`A001281(A344853(n))`
-/

namespace A054861.P12533005220598544775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A344853 n).toNat

end

end A054861.P12533005220598544775

namespace A054861

/-- `A001281(A344853(n))` -/
def P12533005220598544775.Spec : Prop :=
  ∀ n, P12533005220598544775.a n = A054861 n

end A054861

/-! ## A054861.P1288968760165418261

`A346502(A002264(n))/2`
-/

namespace A054861.P1288968760165418261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346502 (A002264 n).toNat : ℚ) / 2

end

end A054861.P1288968760165418261

namespace A054861

/-- `A346502(A002264(n))/2` -/
def P1288968760165418261.Spec : Prop :=
  ∀ n, P1288968760165418261.a n = (A054861 n : ℚ)

end A054861

/-! ## A054861.P10659611082718670685

`A004128(n)%A028310(n)`
-/

namespace A054861.P10659611082718670685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004128 n) (A028310 n)

end

end A054861.P10659611082718670685

namespace A054861

/-- `A004128(n)%A028310(n)` -/
def P10659611082718670685.Spec : Prop :=
  ∀ n, P10659611082718670685.a n = A054861 n

end A054861

/-! ## A054861.P761839339497466559

`(A180019(n)+A066568(n))/2`
-/

namespace A054861.P761839339497466559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180019 n + A066568 n : ℚ) / 2

end

end A054861.P761839339497466559

namespace A054861

/-- `(A180019(n)+A066568(n))/2` -/
def P761839339497466559.Spec : Prop :=
  ∀ n, P761839339497466559.a n = (A054861 n : ℚ)

end A054861

/-!
# A054864: Numbers not divisible by any of their digits when written in base 8.

The programs for A054864, there is no canonical definition to state claims against.
-/

/-! ## A054864.P8975525185808731169

`lt[A138865(n+4), A174126(A347235(n+1))]`
-/

namespace A054864.P8975525185808731169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138865 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174126 (A347235 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A054864.P8975525185808731169

/-!
# A054866: Incrementally largest terms in the continued fraction for Khinchin's constant.

The programs for A054866, there is no canonical definition to state claims against.
-/

/-! ## A054866.P905594428070271651

`record[A002211(n)]`
-/

namespace A054866.P905594428070271651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054866.P905594428070271651

/-! ## A054866.P466468361201442374

`A002211(A224852(n))`
-/

namespace A054866.P466468361201442374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002211 (A224852 n).toNat

end

end A054866.P466468361201442374

/-!
# A054867: Number of non-attacking configurations on a diamond of size n, where a prince attacks the four adjacent non-diagonal squares.

The programs for A054867, there is no canonical definition to state claims against.
-/

/-! ## A054867.P10861937129459639994

`A331406(∑[4*n])`
-/

namespace A054867.P10861937129459639994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054867.P10861937129459639994

/-! ## A054867.P4012601677200369229

`record[A331406(∑[A071045(n)])]`
-/

namespace A054867.P4012601677200369229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054867.P4012601677200369229

/-! ## A054867.P8983245324043720705

`record[A003982(n)*A331406(n)]`
-/

namespace A054867.P8983245324043720705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A331406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054867.P8983245324043720705

/-! ## A054867.P6545537779264730864

`record[A331406(n*A080513(n))]`
-/

namespace A054867.P6545537779264730864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331406 ((n : ℤ) * A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054867.P6545537779264730864

/-! ## A054867.P3329117807959859058

`record[gcd(A037012(n), A331406(n))]`
-/

namespace A054867.P3329117807959859058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A331406 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054867.P3329117807959859058

/-!
# A054868: Sum of bits of sum of bits of n: a(n) = wt(wt(n)).

The programs for A054868, the canonical program `A054868.P12564420483956128132` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054868 has offset 0).

The definition of A054868 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054868.P12564420483956128132

`A000120(A000120(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054868

/-- `A000120(A000120(n))` -/
def P12564420483956128132.Spec : Prop :=
  ∀ n, P12564420483956128132.a n = A054868 n

theorem P12564420483956128132.correct : P12564420483956128132.Spec := by
  intro n
  simp only [A054868]

end A054868

/-! ## A054868.P7663407470164218956

`∑[A111412(abs(1-n))]`
-/

namespace A054868.P7663407470164218956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111412 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054868.P7663407470164218956

namespace A054868

/-- `∑[A111412(abs(1-n))]` -/
def P7663407470164218956.Spec : Prop :=
  ∀ n, P7663407470164218956.a n = A054868 n

end A054868

/-! ## A054868.P15204636933242531940

`A324467(∑[1-val(abs(1-n)+1, 2)])/3`
-/

namespace A054868.P15204636933242531940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3

end

end A054868.P15204636933242531940

namespace A054868

/-- `A324467(∑[1-val(abs(1-n)+1, 2)])/3` -/
def P15204636933242531940.Spec : Prop :=
  ∀ n, P15204636933242531940.a n = (A054868 n : ℚ)

end A054868

/-! ## A054868.P16959712477422848924

`A324467(n-(∑[val(n+1, 2)]-val(n+1, 2)))/3`
-/

namespace A054868.P16959712477422848924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))).toNat : ℚ) / 3

end

end A054868.P16959712477422848924

namespace A054868

/-- `A324467(n-(∑[val(n+1, 2)]-val(n+1, 2)))/3` -/
def P16959712477422848924.Spec : Prop :=
  ∀ n, P16959712477422848924.a n = (A054868 n : ℚ)

end A054868

/-! ## A054868.P15560028436655607167

`A007088(n-(∑[val(n+1, 2)]-val(n+1, 2)))%9`
-/

namespace A054868.P15560028436655607167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007088 ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))).toNat) 9

end

end A054868.P15560028436655607167

namespace A054868

/-- `A007088(n-(∑[val(n+1, 2)]-val(n+1, 2)))%9` -/
def P15560028436655607167.Spec : Prop :=
  ∀ n, P15560028436655607167.a n = A054868 n

end A054868

/-! ## A054868.P4937804866423772846

`A064547(A001316(n))`
-/

namespace A054868.P4937804866423772846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A001316 n).toNat

end

end A054868.P4937804866423772846

namespace A054868

/-- `A064547(A001316(n))` -/
def P4937804866423772846.Spec : Prop :=
  ∀ n, P4937804866423772846.a n = A054868 n

end A054868

/-! ## A054868.P13193933171461011905

`A286574(A001316(n)-1)`
-/

namespace A054868.P13193933171461011905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286574 (A001316 n - 1).toNat

end

end A054868.P13193933171461011905

namespace A054868

/-- `A286574(A001316(n)-1)` -/
def P13193933171461011905.Spec : Prop :=
  ∀ n, P13193933171461011905.a n = A054868 n

end A054868

/-! ## A054868.P3951046640210513590

`A179868(A092391(n)-n)`
-/

namespace A054868.P3951046640210513590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 (A092391 n - (n : ℤ)).toNat

end

end A054868.P3951046640210513590

namespace A054868

/-- `A179868(A092391(n)-n)` -/
def P3951046640210513590.Spec : Prop :=
  ∀ n, P3951046640210513590.a n = A054868 n

end A054868

/-! ## A054868.P12722675872678020999

`log2(A001316(log2(A001316(n))))`
-/

namespace A054868.P12722675872678020999
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 (SequenceMachineLib.roundAway (Real.logb 2 (A001316 n : ℝ))).toNat : ℝ)

end

end A054868.P12722675872678020999

namespace A054868

/-- `log2(A001316(log2(A001316(n))))` -/
def P12722675872678020999.Spec : Prop :=
  ∀ n, P12722675872678020999.a n = (A054868 n : ℝ)

end A054868

/-! ## A054868.P11720696284894902006

`dr(A007088(n-A011371(n)))`
-/

namespace A054868.P11720696284894902006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 ((n : ℤ) - A011371 n).toNat)

end

end A054868.P11720696284894902006

namespace A054868

/-- `dr(A007088(n-A011371(n)))` -/
def P11720696284894902006.Spec : Prop :=
  ∀ n, (P11720696284894902006.a n : ℤ) = A054868 n

end A054868

/-! ## A054868.P16724644862295529944

`A063787(A063787(n+1))-1`
-/

namespace A054868.P16724644862295529944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063787 (A063787 (n + 1)).toNat - 1

end

end A054868.P16724644862295529944

namespace A054868

/-- `A063787(A063787(n+1))-1` -/
def P16724644862295529944.Spec : Prop :=
  ∀ n, P16724644862295529944.a n = A054868 n

end A054868

/-! ## A054868.P5192808264110870370

`val(A001316(val(A001316(n), 2)), 2)`
-/

namespace A054868.P5192808264110870370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (SequenceMachineLib.valuation (A001316 n).toNat 2)).toNat 2

end

end A054868.P5192808264110870370

namespace A054868

/-- `val(A001316(val(A001316(n), 2)), 2)` -/
def P5192808264110870370.Spec : Prop :=
  ∀ n, (P5192808264110870370.a n : ℤ) = A054868 n

end A054868

/-! ## A054868.P3064812589591121548

`A179868(A249154(n)/(n+1))`
-/

namespace A054868.P3064812589591121548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179868 (SequenceMachineLib.roundAway ((A249154 n : ℚ) / (n + 1 : ℚ))).toNat

end

end A054868.P3064812589591121548

namespace A054868

/-- `A179868(A249154(n)/(n+1))` -/
def P3064812589591121548.Spec : Prop :=
  ∀ n, P3064812589591121548.a n = A054868 n

end A054868

/-! ## A054868.P10774404296759185569

`∑{e}[A019565(∑{e}[A071044(n), #]), #]`
-/

namespace A054868.P10774404296759185569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A054868.P10774404296759185569

namespace A054868

/-- `∑{e}[A019565(∑{e}[A071044(n), #]), #]` -/
def P10774404296759185569.Spec : Prop :=
  ∀ n, (P10774404296759185569.a n : ℤ) = A054868 n

end A054868

/-! ## A054868.P18135057631483182551

`∑{e}[A071044(∑{e}[A071044(n), #]), #]`
-/

namespace A054868.P18135057631483182551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071044 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A054868.P18135057631483182551

namespace A054868

/-- `∑{e}[A071044(∑{e}[A071044(n), #]), #]` -/
def P18135057631483182551.Spec : Prop :=
  ∀ n, (P18135057631483182551.a n : ℤ) = A054868 n

end A054868

/-! ## A054868.P10129871448415286315

`∑{e}[A019565(2*n-A005187(n)), #]`
-/

namespace A054868.P10129871448415286315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 ((2 * n : ℤ) - A005187 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A054868.P10129871448415286315

namespace A054868

/-- `∑{e}[A019565(2*n-A005187(n)), #]` -/
def P10129871448415286315.Spec : Prop :=
  ∀ n, (P10129871448415286315.a n : ℤ) = A054868 n

end A054868

/-! ## A054868.P4866759875628992309

`dr(A007088(3*n+1-∑[A089080(n+1)]))`
-/

namespace A054868.P4866759875628992309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007088 ((3 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A054868.P4866759875628992309

namespace A054868

/-- `dr(A007088(3*n+1-∑[A089080(n+1)]))` -/
def P4866759875628992309.Spec : Prop :=
  ∀ n, (P4866759875628992309.a n : ℤ) = A054868 n

end A054868

/-! ## A054868.P3788357100802283172

`A178638(A037445(A001316(n))²)`
-/

namespace A054868.P3788357100802283172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178638 (A037445 (A001316 n).toNat ^ 2).toNat

end

end A054868.P3788357100802283172

namespace A054868

/-- `A178638(A037445(A001316(n))²)` -/
def P3788357100802283172.Spec : Prop :=
  ∀ n, P3788357100802283172.a n = A054868 n

end A054868

/-! ## A054868.P418680701550526211

`A324467(n-(∑[A007814(n+1)]-A007814(n+1)))/3`
-/

namespace A054868.P418680701550526211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 ((n : ℤ) - (∑ j ∈ Finset.range (n + 1), f1 j - A007814 (n + 1))).toNat : ℚ) / 3

end

end A054868.P418680701550526211

namespace A054868

/-- `A324467(n-(∑[A007814(n+1)]-A007814(n+1)))/3` -/
def P418680701550526211.Spec : Prop :=
  ∀ n, P418680701550526211.a n = (A054868 n : ℚ)

end A054868

/-! ## A054868.P6508734749118009003

`A048881(2*A048881(2*n))`
-/

namespace A054868.P6508734749118009003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (2 * A048881 (2 * n)).toNat

end

end A054868.P6508734749118009003

namespace A054868

/-- `A048881(2*A048881(2*n))` -/
def P6508734749118009003.Spec : Prop :=
  ∀ n, P6508734749118009003.a n = A054868 n

end A054868

/-!
# A054869: Digits of an idempotent 6-adic number.

The programs for A054869, there is no canonical definition to state claims against.
-/

/-! ## A054869.P3695104857779551588

`5-(A055620(n)-A000038(n))`
-/

namespace A054869.P3695104857779551588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - (A055620 n - A000038 n)

end

end A054869.P3695104857779551588

/-! ## A054869.P3746605986818524165

`2*A000007(n)+5-A055620(n)`
-/

namespace A054869.P3746605986818524165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000007 n + (5 - A055620 n)

end

end A054869.P3746605986818524165

/-! ## A054869.P6869753929106997516

`A091663(C(2, n+2))-A055620(n)`
-/

namespace A054869.P6869753929106997516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 (Nat.choose 2 (n + 2)) - A055620 n

end

end A054869.P6869753929106997516

/-! ## A054869.P3172247012143697111

`C(2, A000005(n+1)²)+5-A055620(n)`
-/

namespace A054869.P3172247012143697111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A000005 (n + 1) ^ 2).toNat : ℤ) + (5 - A055620 n)

end

end A054869.P3172247012143697111

/-! ## A054869.P15878052619123223758

`C(2, A213708(n+1)²)+5-A055620(n)`
-/

namespace A054869.P15878052619123223758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (A213708 (n + 1) ^ 2).toNat : ℤ) + (5 - A055620 n)

end

end A054869.P15878052619123223758

/-! ## A054869.P13321639742158172924

`floor(5-A055620(n)-atan(A004442(n+1)))+2`
-/

namespace A054869.P13321639742158172924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 - A055620 n : ℝ) - Real.arctan (A004442 (n + 1) : ℝ)⌋ + 2

end

end A054869.P13321639742158172924

/-! ## A054869.P15373685934736266957

`C(A001221(n+1)+2, (n+1)²)+5-A055620(n)`
-/

namespace A054869.P15373685934736266957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A001221 (n + 1) + 2).toNat ((n + 1) ^ 2) : ℤ) + (5 - A055620 n)

end

end A054869.P15373685934736266957

/-! ## A054869.P14453350369510795418

`2*A266220(2*n)+5-A055620(n)`
-/

namespace A054869.P14453350369510795418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266220 (2 * n) + (5 - A055620 n)

end

end A054869.P14453350369510795418

/-! ## A054869.P8003021365304833497

`floor(A259986(n+1)/A000400(n))`
-/

namespace A054869.P8003021365304833497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259986 (n + 1) : ℚ) / (A000400 n : ℚ)⌋

end

end A054869.P8003021365304833497

/-! ## A054869.P6948505205942507375

`A091663(A151878(n))-A055620(n)`
-/

namespace A054869.P6948505205942507375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091663 (A151878 n).toNat - A055620 n

end

end A054869.P6948505205942507375

/-!
# A054870: Positions of the incrementally largest terms in the continued fraction for Khinchin's constant.

The programs for A054870, there is no canonical definition to state claims against.
-/

/-! ## A054870.P11800587936440052850

`A224852(n)+1`
-/

namespace A054870.P11800587936440052850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224852 n + 1

end

end A054870.P11800587936440052850

/-! ## A054870.P14136561573755021907

`1-A057428(n)*A224852(n)`
-/

namespace A054870.P14136561573755021907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A057428 n * A224852 n

end

end A054870.P14136561573755021907

/-! ## A054870.P7666366368738066280

`(A224852(n)-log2(1/2))/A224812(n)`
-/

namespace A054870.P7666366368738066280
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A224852 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) / (A224812 n : ℝ)

end

end A054870.P7666366368738066280

/-! ## A054870.P3447016956322789313

`(A224852(n)-log2(1/2))/A224814(n)`
-/

namespace A054870.P3447016956322789313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A224852 n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ)) / (A224814 n : ℝ)

end

end A054870.P3447016956322789313

/-! ## A054870.P1075778932814843040

`abs(A008683(A007918(n))-A224852(n))`
-/

namespace A054870.P1075778932814843040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A007918 n).toNat - A224852 n|

end

end A054870.P1075778932814843040

/-!
# A054872: Number of (12345, 13245, 21345, 23145, 31245, 32145)-avoiding permutations.

The programs for A054872, the canonical program `A054872.P14879073450913059368` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054872 has offset 0).

The definition of A054872 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054872.P14879073450913059368

`4*((2*n-5)*a(n-1)-(n-4)*a(n-2))/(n-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054872

/-- `4*((2*n-5)*a(n-1)-(n-4)*a(n-2))/(n-1)` -/
def P14879073450913059368.Spec : Prop :=
  ∀ n, P14879073450913059368.a n = (A054872 n : ℚ)

end A054872

/-! ## A054872.P15909315935629812229

`A121576(C(n, 2))`
-/

namespace A054872.P15909315935629812229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121576 (Nat.choose n 2)

end

end A054872.P15909315935629812229

namespace A054872

/-- `A121576(C(n, 2))` -/
def P15909315935629812229.Spec : Prop :=
  ∀ n, P15909315935629812229.a n = A054872 n

end A054872

/-! ## A054872.P6104345355416843825

`abs(A121575(C(n, 2)))`
-/

namespace A054872.P6104345355416843825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121575 (Nat.choose n 2)|

end

end A054872.P6104345355416843825

namespace A054872

/-- `abs(A121575(C(n, 2)))` -/
def P6104345355416843825.Spec : Prop :=
  ∀ n, P6104345355416843825.a n = A054872 n

end A054872

/-! ## A054872.P1654483996799276812

`A121576(∑[n]-n)`
-/

namespace A054872.P1654483996799276812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121576 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A054872.P1654483996799276812

namespace A054872

/-- `A121576(∑[n]-n)` -/
def P1654483996799276812.Spec : Prop :=
  ∀ n, P1654483996799276812.a n = A054872 n

end A054872

/-! ## A054872.P2680655946742148174

`abs(A121575(∑[n]-n))`
-/

namespace A054872.P2680655946742148174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121575 (∑ j ∈ Finset.range (n + 1), f1 j - n)|

end

end A054872.P2680655946742148174

namespace A054872

/-- `abs(A121575(∑[n]-n))` -/
def P2680655946742148174.Spec : Prop :=
  ∀ n, P2680655946742148174.a n = A054872 n

end A054872

/-! ## A054872.P17854821566565860884

`lcm(A084100(n), A121575(A161680(n)))`
-/

namespace A054872.P17854821566565860884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084100 n) (A121575 (A161680 n).toNat)

end

end A054872.P17854821566565860884

namespace A054872

/-- `lcm(A084100(n), A121575(A161680(n)))` -/
def P17854821566565860884.Spec : Prop :=
  ∀ n, (P17854821566565860884.a n : ℤ) = A054872 n

end A054872

/-!
# A054873: Number of (S_5 67)-avoiding permutations.

The programs for A054873, there is no canonical definition to state claims against.
-/

/-! ## A054873.P4508663268825801379

`A395916(C(A199343(n), n))`
-/

namespace A054873.P4508663268825801379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395916 (Nat.choose (A199343 n).toNat n)

end

end A054873.P4508663268825801379

/-! ## A054873.P3965869079607578922

`record[A179456(n)]-A061140(n)`
-/

namespace A054873.P3965869079607578922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179456 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A061140 n

end

end A054873.P3965869079607578922

/-! ## A054873.P18213983573095676225

`A001104(n+1)!-A029575(n)`
-/

namespace A054873.P18213983573095676225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A001104 (n + 1)).toNat : ℤ) - A029575 n

end

end A054873.P18213983573095676225

/-! ## A054873.P6709142053361854779

`A032559(n+1)!-A029575(n)`
-/

namespace A054873.P6709142053361854779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A032559 (n + 1)).toNat : ℤ) - A029575 n

end

end A054873.P6709142053361854779

/-! ## A054873.P12820554720707431550

`A032555(n+1)!-A061140(n)`
-/

namespace A054873.P12820554720707431550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A032555 (n + 1)).toNat : ℤ) - A061140 n

end

end A054873.P12820554720707431550

/-!
# A054874: a(n) = 2^(Sum_{i

The programs for A054874, there is no canonical definition to state claims against.
-/

/-! ## A054874.P14490764340093956829

`a(n-1)*2^a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A054874.P14490764340093956829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) * 2 ^ a (n - 1)

end

end A054874.P14490764340093956829

/-!
# A054875: Number of pairwise incongruent triangles with integer sides and positive integer area and longest side of length n.

The programs for A054875, there is no canonical definition to state claims against.
-/

/-! ## A054875.P8266177121437445788

`∑{d}[n+1, A239246(#)]`
-/

namespace A054875.P8266177121437445788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A239246 d

end

end A054875.P8266177121437445788

/-! ## A054875.P3465813915243105767

`A160380(xor(9, A122491(n)))`
-/

namespace A054875.P3465813915243105767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (Int.xor 9 (A122491 n)).toNat

end

end A054875.P3465813915243105767

/-! ## A054875.P732978178087887613

`A102677(A102702(n)-∑[n])`
-/

namespace A054875.P732978178087887613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A102702 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A054875.P732978178087887613

/-! ## A054875.P4769657177717848252

`A226005(A089473(2*n)%A053263(n))`
-/

namespace A054875.P4769657177717848252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (Int.tmod (A089473 (2 * n)) (A053263 n)).toNat

end

end A054875.P4769657177717848252

/-! ## A054875.P15583055156962872552

`A128155(3*(n+1))%A001222(A000010(n+3))`
-/

namespace A054875.P15583055156962872552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128155 (3 * (n + 1))) (A001222 (A000010 (n + 3)).toNat)

end

end A054875.P15583055156962872552

/-!
# A054876: Number of pairwise incongruent triangles with integer sides and positive integer area and second longest side of length n.

The programs for A054876, there is no canonical definition to state claims against.
-/

/-! ## A054876.P12900748734116843186

`and(∑[A175839(n+1)], A175835(3*(n+1)))`
-/

namespace A054876.P12900748734116843186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175839 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A175835 (3 * (n + 1)))

end

end A054876.P12900748734116843186

/-! ## A054876.P7890427512386529369

`A007623(n)%A100679(A077168(n))`
-/

namespace A054876.P7890427512386529369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007623 n) (A100679 (A077168 n).toNat)

end

end A054876.P7890427512386529369

/-! ## A054876.P7567532560989123897

`A049345(n)%A100679(A077168(n))`
-/

namespace A054876.P7567532560989123897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049345 n) (A100679 (A077168 n).toNat)

end

end A054876.P7567532560989123897

/-! ## A054876.P2357635868679189443

`and(A000096(A063834(n)), A012265(n))`
-/

namespace A054876.P2357635868679189443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000096 (A063834 n).toNat) (A012265 n)

end

end A054876.P2357635868679189443

/-! ## A054876.P17446366930954334951

`A292997(n+1)%A093178(A228820(n))`
-/

namespace A054876.P17446366930954334951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292997 (n + 1)) (A093178 (A228820 n).toNat)

end

end A054876.P17446366930954334951

/-!
# A054877: Closed walks of length n along the edges of a pentagon based at a vertex.

The programs for A054877, the canonical program `A054877.P13342566212816044264` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054877 has offset 0).

The definition of A054877 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054877.P13342566212816044264

`5*(a(n-2)-a(n-4))+2*a(n-5)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=6`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054877

/-- `5*(a(n-2)-a(n-4))+2*a(n-5)` -/
def P13342566212816044264.Spec : Prop :=
  ∀ n, P13342566212816044264.a n = A054877 n

theorem P13342566212816044264.correct : P13342566212816044264.Spec := by
  intro n
  simp only [A054877]

end A054877

/-! ## A054877.P9286219060830146594

`ogf((-1+x+x^2)/(-1+x+3x^2-2x^3))`
-/

namespace A054877.P9286219060830146594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -1, -3, 2] n

end

end A054877.P9286219060830146594

namespace A054877

/-- `ogf((-1+x+x^2)/(-1+x+3x^2-2x^3))` -/
def P9286219060830146594.Spec : Prop :=
  ∀ n, P9286219060830146594.a n = A054877 n

end A054877

/-! ## A054877.P7628646998601521447

`2^(n-2)+a(n-2)-a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A054877.P7628646998601521447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + (a (n - 2) - a (n - 1))

end

end A054877.P7628646998601521447

namespace A054877

/-- `2^(n-2)+a(n-2)-a(n-1)` -/
def P7628646998601521447.Spec : Prop :=
  ∀ n, P7628646998601521447.a n = (A054877 n : ℚ)

end A054877

/-! ## A054877.P7077360267461719464

`a(n-1)+3*a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A054877.P7077360267461719464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 2] fun n a =>
  a (n - 1) + 3 * a (n - 2) - 2 * a (n - 3)

end

end A054877.P7077360267461719464

namespace A054877

/-- `a(n-1)+3*a(n-2)-2*a(n-3)` -/
def P7077360267461719464.Spec : Prop :=
  ∀ n, P7077360267461719464.a n = A054877 n

end A054877

/-! ## A054877.P5569112241487903297

`abs(Δ[A212804(n)]-A224508(n))`
-/

namespace A054877.P5569112241487903297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A224508 n|

end

end A054877.P5569112241487903297

namespace A054877

/-- `abs(Δ[A212804(n)]-A224508(n))` -/
def P5569112241487903297.Spec : Prop :=
  ∀ n, P5569112241487903297.a n = A054877 n

end A054877

/-! ## A054877.P17996113764896604699

`round(2/5*(2^(n-1)+ϕ^n*cos(π*n)))`
-/

namespace A054877.P17996113764896604699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) / 5 : ℝ) * (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + Real.goldenRatio ^ n * Real.cos (Real.pi * (n : ℝ))))

end

end A054877.P17996113764896604699

namespace A054877

/-- `round(2/5*(2^(n-1)+ϕ^n*cos(π*n)))` -/
def P17996113764896604699.Spec : Prop :=
  ∀ n, P17996113764896604699.a n = A054877 n

end A054877

/-! ## A054877.P3082341629743985766

`A099163(n)+A104005(n)-∑[A104005(n)]`
-/

namespace A054877.P3082341629743985766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099163 n + (A104005 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054877.P3082341629743985766

namespace A054877

/-- `A099163(n)+A104005(n)-∑[A104005(n)]` -/
def P3082341629743985766.Spec : Prop :=
  ∀ n, P3082341629743985766.a n = A054877 n

end A054877

/-! ## A054877.P1644213580118516440

`A101502(n)/A011782(n)`
-/

namespace A054877.P1644213580118516440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101502 n : ℚ) / (A011782 n : ℚ)

end

end A054877.P1644213580118516440

namespace A054877

/-- `A101502(n)/A011782(n)` -/
def P1644213580118516440.Spec : Prop :=
  ∀ n, P1644213580118516440.a n = (A054877 n : ℚ)

end A054877

/-! ## A054877.P1331493715132930795

`A101502(n)/A090129(n+1)`
-/

namespace A054877.P1331493715132930795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101502 n : ℚ) / (A090129 (n + 1) : ℚ)

end

end A054877.P1331493715132930795

namespace A054877

/-- `A101502(n)/A090129(n+1)` -/
def P1331493715132930795.Spec : Prop :=
  ∀ n, P1331493715132930795.a n = (A054877 n : ℚ)

end A054877

/-!
# A054878: Number of closed walks of length n along the edges of a tetrahedron based at a vertex.

The programs for A054878, the canonical program `A054878.P4362425859578288367` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054878 has offset 0).

The definition of A054878 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054878.P4362425859578288367

`3*a(n-1)+3*(-1)^n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054878

/-- `3*a(n-1)+3*(-1)^n` -/
def P4362425859578288367.Spec : Prop :=
  ∀ n, P4362425859578288367.a n = A054878 n

theorem P4362425859578288367.correct : P4362425859578288367.Spec := by
  intro n
  simp only [A054878]

end A054878

/-! ## A054878.P12268258049527787879

`(3^n+(-1)^n*3)/4`
-/

namespace A054878.P12268258049527787879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℤ) + (-1) ^ n * 3 : ℚ) / 4

end

end A054878.P12268258049527787879

namespace A054878

/-- `(3^n+(-1)^n*3)/4` -/
def P12268258049527787879.Spec : Prop :=
  ∀ n, P12268258049527787879.a n = (A054878 n : ℚ)

theorem P12268258049527787879.correct : P12268258049527787879.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A054878, Nat.add_sub_cancel, A054878.P12268258049527787879.a, A054878.P4362425859578288367.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A054878, Nat.add_sub_cancel, A054878.P12268258049527787879.a, A054878.P4362425859578288367.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A054878

/-! ## A054878.P16434520143013067810

`A015518(n+1)-2*A015518(n)`
-/

namespace A054878.P16434520143013067810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (n + 1) - 2 * A015518 n

end

end A054878.P16434520143013067810

namespace A054878

/-- `A015518(n+1)-2*A015518(n)` -/
def P16434520143013067810.Spec : Prop :=
  ∀ n, P16434520143013067810.a n = A054878 n

end A054878

/-! ## A054878.P3912758900091344194

`ogf((-1+2x)/(-1+2x+3x^2))`
-/

namespace A054878.P3912758900091344194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -2, -3] n

end

end A054878.P3912758900091344194

namespace A054878

/-- `ogf((-1+2x)/(-1+2x+3x^2))` -/
def P3912758900091344194.Spec : Prop :=
  ∀ n, P3912758900091344194.a n = A054878 n

end A054878

/-! ## A054878.P818432869727184625

`3*xor(1, a(n-1))` with `a(0)=1`
-/

namespace A054878.P818432869727184625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  3 * Nat.xor 1 (a (n - 1))

end

end A054878.P818432869727184625

namespace A054878

/-- `3*xor(1, a(n-1))` -/
def P818432869727184625.Spec : Prop :=
  ∀ n, (P818432869727184625.a n : ℤ) = A054878 n

end A054878

/-! ## A054878.P6788895661822880678

`lcm(3, xor(1, a(n-1)))` with `a(0)=1`
-/

namespace A054878.P6788895661822880678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm 3 (Nat.xor 1 (a (n - 1)))

end

end A054878.P6788895661822880678

namespace A054878

/-- `lcm(3, xor(1, a(n-1)))` -/
def P6788895661822880678.Spec : Prop :=
  ∀ n, (P6788895661822880678.a n : ℤ) = A054878 n

end A054878

/-! ## A054878.P3813919384119223060

`xor(1, round((sqrt(3)^n/2)²))`
-/

namespace A054878.P3813919384119223060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway ((Real.sqrt (3 : ℝ) ^ n / 2) ^ 2))

end

end A054878.P3813919384119223060

namespace A054878

/-- `xor(1, round((sqrt(3)^n/2)²))` -/
def P3813919384119223060.Spec : Prop :=
  ∀ n, P3813919384119223060.a n = A054878 n

end A054878

/-! ## A054878.P16259694204832076589

`3^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A054878.P16259694204832076589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A054878.P16259694204832076589

namespace A054878

/-- `3^(n-1)-a(n-1)` -/
def P16259694204832076589.Spec : Prop :=
  ∀ n, P16259694204832076589.a n = (A054878 n : ℚ)

end A054878

/-! ## A054878.P10262690344517099717

`3*(a(n-1)+1-2*n%2)` with `a(0)=1`
-/

namespace A054878.P10262690344517099717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (a (n - 1) + (1 - ((2 * (n % 2) : ℕ) : ℤ)))

end

end A054878.P10262690344517099717

namespace A054878

/-- `3*(a(n-1)+1-2*n%2)` -/
def P10262690344517099717.Spec : Prop :=
  ∀ n, P10262690344517099717.a n = A054878 n

end A054878

/-! ## A054878.P9991649553688425680

`a(n-2)+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=0`
-/

namespace A054878.P9991649553688425680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + 2 * (a (n - 1) + a (n - 2))

end

end A054878.P9991649553688425680

namespace A054878

/-- `a(n-2)+2*(a(n-1)+a(n-2))` -/
def P9991649553688425680.Spec : Prop :=
  ∀ n, (P9991649553688425680.a n : ℤ) = A054878 n

end A054878

/-! ## A054878.P15298942459309782020

`a(n-1)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A054878.P15298942459309782020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + (a (n - 1) + a (n - 2))))

end

end A054878.P15298942459309782020

namespace A054878

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-1)+a(n-2)` -/
def P15298942459309782020.Spec : Prop :=
  ∀ n, (P15298942459309782020.a n : ℤ) = A054878 n

end A054878

/-! ## A054878.P13246627517763232384

`abs(A084567(n))`
-/

namespace A054878.P13246627517763232384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084567 n|

end

end A054878.P13246627517763232384

namespace A054878

/-- `abs(A084567(n))` -/
def P13246627517763232384.Spec : Prop :=
  ∀ n, P13246627517763232384.a n = A054878 n

end A054878

/-! ## A054878.P749358385327253438

`abs(∑[A141413(n+1)])`
-/

namespace A054878.P749358385327253438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A054878.P749358385327253438

namespace A054878

/-- `abs(∑[A141413(n+1)])` -/
def P749358385327253438.Spec : Prop :=
  ∀ n, P749358385327253438.a n = A054878 n

end A054878

/-! ## A054878.P18284665315041240900

`A015518(n)+(-1)^n`
-/

namespace A054878.P18284665315041240900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 n + (-1) ^ n

end

end A054878.P18284665315041240900

namespace A054878

/-- `A015518(n)+(-1)^n` -/
def P18284665315041240900.Spec : Prop :=
  ∀ n, P18284665315041240900.a n = A054878 n

end A054878

/-! ## A054878.P1160031788105734726

`A094388(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A054878.P1160031788105734726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094388 n - (a (n - 1) + 1)

end

end A054878.P1160031788105734726

namespace A054878

/-- `A094388(n)-(a(n-1)+1)` -/
def P1160031788105734726.Spec : Prop :=
  ∀ n, P1160031788105734726.a n = A054878 n

end A054878

/-! ## A054878.P12325407929423326244

`A033999(n)+A015518(n)`
-/

namespace A054878.P12325407929423326244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A015518 n

end

end A054878.P12325407929423326244

namespace A054878

/-- `A033999(n)+A015518(n)` -/
def P12325407929423326244.Spec : Prop :=
  ∀ n, P12325407929423326244.a n = A054878 n

end A054878

/-! ## A054878.P9726621282545839841

`A046717(n)-A015518(n)`
-/

namespace A054878.P9726621282545839841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046717 n - A015518 n

end

end A054878.P9726621282545839841

namespace A054878

/-- `A046717(n)-A015518(n)` -/
def P9726621282545839841.Spec : Prop :=
  ∀ n, P9726621282545839841.a n = A054878 n

end A054878

/-! ## A054878.P8821961145920532614

`A122983(n)-A000035(n)`
-/

namespace A054878.P8821961145920532614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 n - A000035 n

end

end A054878.P8821961145920532614

namespace A054878

/-- `A122983(n)-A000035(n)` -/
def P8821961145920532614.Spec : Prop :=
  ∀ n, P8821961145920532614.a n = A054878 n

end A054878

/-! ## A054878.P8419168579354441836

`A164039(n)-A030451(n)`
-/

namespace A054878.P8419168579354441836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164039 n - A030451 n

end

end A054878.P8419168579354441836

namespace A054878

/-- `A164039(n)-A030451(n)` -/
def P8419168579354441836.Spec : Prop :=
  ∀ n, P8419168579354441836.a n = A054878 n

end A054878

/-! ## A054878.P9318740275399394351

`A033999(n)*A084567(n)`
-/

namespace A054878.P9318740275399394351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A084567 n

end

end A054878.P9318740275399394351

namespace A054878

/-- `A033999(n)*A084567(n)` -/
def P9318740275399394351.Spec : Prop :=
  ∀ n, P9318740275399394351.a n = A054878 n

end A054878

/-!
# A054879: Closed walks of length 2n along the edges of a cube based at a vertex.

The programs for A054879, the canonical program `A054879.P6425809080768788372` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054879 has offset 0).

The definition of A054879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054879.P6425809080768788372

`9*a(n-1)-6` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054879

/-- `9*a(n-1)-6` -/
def P6425809080768788372.Spec : Prop :=
  ∀ n, P6425809080768788372.a n = A054879 n

theorem P6425809080768788372.correct : P6425809080768788372.Spec := by
  intro n
  simp only [A054879]

end A054879

/-! ## A054879.P11109274673719486219

`(3^(2*n)+3)/4`
-/

namespace A054879.P11109274673719486219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (2 * n) + 3 : ℚ) / 4

end

end A054879.P11109274673719486219

namespace A054879

/-- `(3^(2*n)+3)/4` -/
def P11109274673719486219.Spec : Prop :=
  ∀ n, P11109274673719486219.a n = (A054879 n : ℚ)

theorem P11109274673719486219.correct : P11109274673719486219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A054879, Nat.add_sub_cancel, A054879.P11109274673719486219.a, A054879.P6425809080768788372.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A054879, Nat.add_sub_cancel, A054879.P11109274673719486219.a, A054879.P6425809080768788372.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A054879

/-! ## A054879.P7442075929408208508

`ogf((1-7x)/(1-10x+9x^2))`
-/

namespace A054879.P7442075929408208508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7] [1, -10, 9] n

end

end A054879.P7442075929408208508

namespace A054879

/-- `ogf((1-7x)/(1-10x+9x^2))` -/
def P7442075929408208508.Spec : Prop :=
  ∀ n, P7442075929408208508.a n = A054879 n

end A054879

/-! ## A054879.P16295348768929588656

`or(1, floor((3^n/2)²))`
-/

namespace A054879.P16295348768929588656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊((3 ^ n : ℚ) / 2) ^ 2⌋

end

end A054879.P16295348768929588656

namespace A054879

/-- `or(1, floor((3^n/2)²))` -/
def P16295348768929588656.Spec : Prop :=
  ∀ n, P16295348768929588656.a n = A054879 n

end A054879

/-! ## A054879.P2480745808747743959

`xor(1, floor((3^n/2)²))`
-/

namespace A054879.P2480745808747743959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌊((3 ^ n : ℚ) / 2) ^ 2⌋

end

end A054879.P2480745808747743959

namespace A054879

/-- `xor(1, floor((3^n/2)²))` -/
def P2480745808747743959.Spec : Prop :=
  ∀ n, P2480745808747743959.a n = A054879 n

end A054879

/-! ## A054879.P14574954474257724207

`lcm(2, floor((3^n/2)²))+1`
-/

namespace A054879.P14574954474257724207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ⌊((3 ^ n : ℚ) / 2) ^ 2⌋ + 1

end

end A054879.P14574954474257724207

namespace A054879

/-- `lcm(2, floor((3^n/2)²))+1` -/
def P14574954474257724207.Spec : Prop :=
  ∀ n, (P14574954474257724207.a n : ℤ) = A054879 n

end A054879

/-! ## A054879.P14477059558206576794

`∑[abs(∏[-a(n-1)])]` with `a(0)=1, a(1)=2, a(2)=9`
-/

namespace A054879.P14477059558206576794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 9] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054879.P14477059558206576794

namespace A054879

/-- `∑[abs(∏[-a(n-1)])]` -/
def P14477059558206576794.Spec : Prop :=
  ∀ n, P14477059558206576794.a n = A054879 n

end A054879

/-! ## A054879.P6977530155892690134

`a(n-1)/(1/3)²-6` with `a(0)=1`
-/

namespace A054879.P6977530155892690134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - 6

end

end A054879.P6977530155892690134

namespace A054879

/-- `a(n-1)/(1/3)²-6` -/
def P6977530155892690134.Spec : Prop :=
  ∀ n, P6977530155892690134.a n = (A054879 n : ℚ)

end A054879

/-! ## A054879.P3234843198686382187

`record[a(n-1)-(-3)^n]` with `a(0)=1, a(1)=3`
-/

namespace A054879.P3234843198686382187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) - (-3) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054879.P3234843198686382187

namespace A054879

/-- `record[a(n-1)-(-3)^n]` -/
def P3234843198686382187.Spec : Prop :=
  ∀ n, P3234843198686382187.a n = A054879 n

end A054879

/-! ## A054879.P7527678183036403876

`∑[A270369(n)]`
-/

namespace A054879.P7527678183036403876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054879.P7527678183036403876

namespace A054879

/-- `∑[A270369(n)]` -/
def P7527678183036403876.Spec : Prop :=
  ∀ n, P7527678183036403876.a n = A054879 n

end A054879

/-! ## A054879.P13483138582965831923

`record[A084567(n)]`
-/

namespace A054879.P13483138582965831923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054879.P13483138582965831923

namespace A054879

/-- `record[A084567(n)]` -/
def P13483138582965831923.Spec : Prop :=
  ∀ n, P13483138582965831923.a n = A054879 n

end A054879

/-! ## A054879.P3066926522172323002

`A054878(2*n)`
-/

namespace A054879.P3066926522172323002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 (2 * n)

end

end A054879.P3066926522172323002

namespace A054879

/-- `A054878(2*n)` -/
def P3066926522172323002.Spec : Prop :=
  ∀ n, P3066926522172323002.a n = A054879 n

end A054879

/-! ## A054879.P16355609353150377893

`A084567(2*n)`
-/

namespace A054879.P16355609353150377893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 (2 * n)

end

end A054879.P16355609353150377893

namespace A054879

/-- `A084567(2*n)` -/
def P16355609353150377893.Spec : Prop :=
  ∀ n, P16355609353150377893.a n = A054879 n

end A054879

/-! ## A054879.P7169398212755486264

`A122983(2*n)`
-/

namespace A054879.P7169398212755486264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 (2 * n)

end

end A054879.P7169398212755486264

namespace A054879

/-- `A122983(2*n)` -/
def P7169398212755486264.Spec : Prop :=
  ∀ n, P7169398212755486264.a n = A054879 n

end A054879

/-! ## A054879.P4454280161910519879

`record[1-A014983(n)]`
-/

namespace A054879.P4454280161910519879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054879.P4454280161910519879

namespace A054879

/-- `record[1-A014983(n)]` -/
def P4454280161910519879.Spec : Prop :=
  ∀ n, P4454280161910519879.a n = A054879 n

end A054879

/-! ## A054879.P3318736122328923172

`record[2-A084222(n)]`
-/

namespace A054879.P3318736122328923172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A084222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054879.P3318736122328923172

namespace A054879

/-- `record[2-A084222(n)]` -/
def P3318736122328923172.Spec : Prop :=
  ∀ n, P3318736122328923172.a n = A054879 n

end A054879

/-! ## A054879.P12652361023825801376

`∑[∑[A052156(n)²]]`
-/

namespace A054879.P12652361023825801376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052156 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054879.P12652361023825801376

namespace A054879

/-- `∑[∑[A052156(n)²]]` -/
def P12652361023825801376.Spec : Prop :=
  ∀ n, P12652361023825801376.a n = A054879 n

end A054879

/-! ## A054879.P17475344147928623599

`A125857(n+1)+1`
-/

namespace A054879.P17475344147928623599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125857 (n + 1) + 1

end

end A054879.P17475344147928623599

namespace A054879

/-- `A125857(n+1)+1` -/
def P17475344147928623599.Spec : Prop :=
  ∀ n, P17475344147928623599.a n = A054879 n

end A054879

/-! ## A054879.P8589314278732621495

`2*A002452(n)+1`
-/

namespace A054879.P8589314278732621495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002452 n + 1

end

end A054879.P8589314278732621495

namespace A054879

/-- `2*A002452(n)+1` -/
def P8589314278732621495.Spec : Prop :=
  ∀ n, P8589314278732621495.a n = A054879 n

end A054879

/-!
# A054880: a(n) = 3*(9^n - 1)/4.

The programs for A054880, the canonical program `A054880.P7813421718574232693` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054880 has offset 0).

The definition of A054880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*(9^n-1)/4` (program `A054880.P14277037984493344473`, by `A054880.P14277037984493344473.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A054880.P14277037984493344473

`3*(9^n-1)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054880.P14277037984493344473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * ((9 ^ n : ℤ) - 1) : ℚ) / 4

end

end A054880.P14277037984493344473

namespace A054880

/-- `3*(9^n-1)/4` -/
def P14277037984493344473.Spec : Prop :=
  ∀ n, P14277037984493344473.a n = (A054880 n : ℚ)

theorem P14277037984493344473.correct : P14277037984493344473.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A054880, Nat.add_sub_cancel, A054880.P14277037984493344473.a, A054880.P7813421718574232693.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A054880, Nat.add_sub_cancel, A054880.P14277037984493344473.a, A054880.P7813421718574232693.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A054880

/-! ## A054880.P7813421718574232693

`9*a(n-1)+6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054880

/-- `9*a(n-1)+6` -/
def P7813421718574232693.Spec : Prop :=
  ∀ n, (P7813421718574232693.a n : ℤ) = A054880 n

theorem P7813421718574232693.correct : P7813421718574232693.Spec := by
  intro n
  simp only [A054880]

end A054880

/-! ## A054880.P1388774139699953153

`A066443(n)-1`
-/

namespace A054880.P1388774139699953153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066443 n - 1

end

end A054880.P1388774139699953153

namespace A054880

/-- `A066443(n)-1` -/
def P1388774139699953153.Spec : Prop :=
  ∀ n, P1388774139699953153.a n = A054880 n

end A054880

/-! ## A054880.P4161007032556549527

`6*A002452(n)`
-/

namespace A054880.P4161007032556549527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A002452 n

end

end A054880.P4161007032556549527

namespace A054880

/-- `6*A002452(n)` -/
def P4161007032556549527.Spec : Prop :=
  ∀ n, P4161007032556549527.a n = A054880 n

end A054880

/-! ## A054880.P15690881670414883564

`A015518(2*n+1)-1`
-/

namespace A054880.P15690881670414883564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015518 (2 * n + 1) - 1

end

end A054880.P15690881670414883564

namespace A054880

/-- `A015518(2*n+1)-1` -/
def P15690881670414883564.Spec : Prop :=
  ∀ n, P15690881670414883564.a n = A054880 n

end A054880

/-! ## A054880.P5076753658161151429

`ogf(6x/(1-10x+9x^2))`
-/

namespace A054880.P5076753658161151429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -10, 9] n

end

end A054880.P5076753658161151429

namespace A054880

/-- `ogf(6x/(1-10x+9x^2))` -/
def P5076753658161151429.Spec : Prop :=
  ∀ n, P5076753658161151429.a n = A054880 n

end A054880

/-! ## A054880.P417183895289261650

`lcm(3, floor(9^n/4))`
-/

namespace A054880.P417183895289261650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 ⌊(9 ^ n : ℚ) / 4⌋

end

end A054880.P417183895289261650

namespace A054880

/-- `lcm(3, floor(9^n/4))` -/
def P417183895289261650.Spec : Prop :=
  ∀ n, (P417183895289261650.a n : ℤ) = A054880 n

end A054880

/-! ## A054880.P13932583190091540999

`record[∑[(-3)^n]-1]`
-/

namespace A054880.P13932583190091540999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-3) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054880.P13932583190091540999

namespace A054880

/-- `record[∑[(-3)^n]-1]` -/
def P13932583190091540999.Spec : Prop :=
  ∀ n, P13932583190091540999.a n = A054880 n

end A054880

/-! ## A054880.P5790130810095932618

`lcm(27, a(n-1))+6` with `a(0)=0`
-/

namespace A054880.P5790130810095932618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 27 (a (n - 1)) + 6

end

end A054880.P5790130810095932618

namespace A054880

/-- `lcm(27, a(n-1))+6` -/
def P5790130810095932618.Spec : Prop :=
  ∀ n, (P5790130810095932618.a n : ℤ) = A054880 n

end A054880

/-! ## A054880.P12476865017213131962

`∑[9*a(n-1)]` with `a(0)=0, a(1)=6`
-/

namespace A054880.P12476865017213131962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054880.P12476865017213131962

namespace A054880

/-- `∑[9*a(n-1)]` -/
def P12476865017213131962.Spec : Prop :=
  ∀ n, (P12476865017213131962.a n : ℤ) = A054880 n

end A054880

/-! ## A054880.P2138317076684891631

`a(n-1)/(1/3)²+6` with `a(0)=0`
-/

namespace A054880.P2138317076684891631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 6

end

end A054880.P2138317076684891631

namespace A054880

/-- `a(n-1)/(1/3)²+6` -/
def P2138317076684891631.Spec : Prop :=
  ∀ n, P2138317076684891631.a n = (A054880 n : ℚ)

end A054880

/-! ## A054880.P4754502139068635791

`∑[a(n-1)/(1/3)²]` with `a(0)=0, a(1)=6`
-/

namespace A054880.P4754502139068635791
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054880.P4754502139068635791

namespace A054880

/-- `∑[a(n-1)/(1/3)²]` -/
def P4754502139068635791.Spec : Prop :=
  ∀ n, P4754502139068635791.a n = (A054880 n : ℚ)

end A054880

/-! ## A054880.P13871989286129794497

`A080926(2*n)`
-/

namespace A054880.P13871989286129794497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080926 (2 * n)

end

end A054880.P13871989286129794497

namespace A054880

/-- `A080926(2*n)` -/
def P13871989286129794497.Spec : Prop :=
  ∀ n, P13871989286129794497.a n = A054880 n

end A054880

/-! ## A054880.P12878770005674869912

`A054878(Δ[n²])`
-/

namespace A054880.P12878770005674869912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A054880.P12878770005674869912

namespace A054880

/-- `A054878(Δ[n²])` -/
def P12878770005674869912.Spec : Prop :=
  ∀ n, P12878770005674869912.a n = A054880 n

end A054880

/-! ## A054880.P3655165768634512620

`∑[A092810(n)]-1`
-/

namespace A054880.P3655165768634512620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054880.P3655165768634512620

namespace A054880

/-- `∑[A092810(n)]-1` -/
def P3655165768634512620.Spec : Prop :=
  ∀ n, P3655165768634512620.a n = A054880 n

end A054880

/-! ## A054880.P7865732389082353301

`abs(A084567(Δ[n²]))`
-/

namespace A054880.P7865732389082353301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084567 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A054880.P7865732389082353301

namespace A054880

/-- `abs(A084567(Δ[n²]))` -/
def P7865732389082353301.Spec : Prop :=
  ∀ n, P7865732389082353301.a n = A054880 n

end A054880

/-! ## A054880.P17688358118745527307

`A199560(n)/2-1`
-/

namespace A054880.P17688358118745527307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199560 n : ℚ) / 2 - 1

end

end A054880.P17688358118745527307

namespace A054880

/-- `A199560(n)/2-1` -/
def P17688358118745527307.Spec : Prop :=
  ∀ n, P17688358118745527307.a n = (A054880 n : ℚ)

end A054880

/-!
# A054881: Number of walks of length n along the edges of an octahedron starting and ending at a vertex and also ( with a(0)=0 ) between two opposite vertices.

The programs for A054881, the canonical program `A054881.P2026164909630096089` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054881 has offset 0).

The definition of A054881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054881.P1826523277941651269

`ogf((-1+2x+4x^2)/(-1+2x+8x^2))`
-/

namespace A054881.P1826523277941651269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -4] [1, -2, -8] n

end

end A054881.P1826523277941651269

namespace A054881

/-- `ogf((-1+2x+4x^2)/(-1+2x+8x^2))` -/
def P1826523277941651269.Spec : Prop :=
  ∀ n, P1826523277941651269.a n = A054881 n

end A054881

/-! ## A054881.P2026164909630096089

`lcm(2^n, ceil((-2)^n/3))`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054881

/-- `lcm(2^n, ceil((-2)^n/3))` -/
def P2026164909630096089.Spec : Prop :=
  ∀ n, (P2026164909630096089.a n : ℤ) = A054881 n

theorem P2026164909630096089.correct : P2026164909630096089.Spec := by
  intro n
  simp only [A054881]

end A054881

/-! ## A054881.P15900251246740756123

`(-2)^n+4*a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A054881.P15900251246740756123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (-2) ^ n + 4 * a (n - 1)

end

end A054881.P15900251246740756123

namespace A054881

/-- `(-2)^n+4*a(n-1)` -/
def P15900251246740756123.Spec : Prop :=
  ∀ n, P15900251246740756123.a n = A054881 n

end A054881

/-! ## A054881.P10574142508407899468

`ceil(2^(n-1))*Δ[round(2^n/3)]`
-/

namespace A054881.P10574142508407899468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (f1 (n + 1) - f1 n)

end

end A054881.P10574142508407899468

namespace A054881

/-- `ceil(2^(n-1))*Δ[round(2^n/3)]` -/
def P10574142508407899468.Spec : Prop :=
  ∀ n, P10574142508407899468.a n = A054881 n

end A054881

/-! ## A054881.P1553054879451992181

`A179607(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A054881.P1553054879451992181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A179607 (n - 1) - a (n - 1)

end

end A054881.P1553054879451992181

namespace A054881

/-- `A179607(n-1)-a(n-1)` -/
def P1553054879451992181.Spec : Prop :=
  ∀ n, P1553054879451992181.a n = A054881 n

end A054881

/-! ## A054881.P14369522257680392362

`abs(ceil((-2)^n/3)*A011782(n))`
-/

namespace A054881.P14369522257680392362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈((-2) ^ n : ℚ) / 3⌉ * A011782 n|

end

end A054881.P14369522257680392362

namespace A054881

/-- `abs(ceil((-2)^n/3)*A011782(n))` -/
def P14369522257680392362.Spec : Prop :=
  ∀ n, P14369522257680392362.a n = A054881 n

end A054881

/-! ## A054881.P2219428109215375429

`A087433(n)-A140431(n)`
-/

namespace A054881.P2219428109215375429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087433 n - A140431 n

end

end A054881.P2219428109215375429

namespace A054881

/-- `A087433(n)-A140431(n)` -/
def P2219428109215375429.Spec : Prop :=
  ∀ n, P2219428109215375429.a n = A054881 n

end A054881

/-! ## A054881.P4191483811966600748

`abs(A011782(n)*A151575(n))`
-/

namespace A054881.P4191483811966600748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A011782 n * A151575 n|

end

end A054881.P4191483811966600748

namespace A054881

/-- `abs(A011782(n)*A151575(n))` -/
def P4191483811966600748.Spec : Prop :=
  ∀ n, P4191483811966600748.a n = A054881 n

end A054881

/-! ## A054881.P9142910068704374284

`A151575(n)+A135351(2*n)`
-/

namespace A054881.P9142910068704374284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151575 n + A135351 (2 * n)

end

end A054881.P9142910068704374284

namespace A054881

/-- `A151575(n)+A135351(2*n)` -/
def P9142910068704374284.Spec : Prop :=
  ∀ n, P9142910068704374284.a n = A054881 n

end A054881

/-! ## A054881.P2012023934314296216

`A135351(2*n)+2-A084247(n)`
-/

namespace A054881.P2012023934314296216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (2 * n) + (2 - A084247 n)

end

end A054881.P2012023934314296216

namespace A054881

/-- `A135351(2*n)+2-A084247(n)` -/
def P2012023934314296216.Spec : Prop :=
  ∀ n, P2012023934314296216.a n = A054881 n

end A054881

/-! ## A054881.P7271763025578925096

`A135351(2*n)+A084247(n+1)/2`
-/

namespace A054881.P7271763025578925096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135351 (2 * n) : ℚ) + (A084247 (n + 1) : ℚ) / 2

end

end A054881.P7271763025578925096

namespace A054881

/-- `A135351(2*n)+A084247(n+1)/2` -/
def P7271763025578925096.Spec : Prop :=
  ∀ n, P7271763025578925096.a n = (A054881 n : ℚ)

end A054881

/-! ## A054881.P11376105383169388520

`Δ[ceil(A001045(n)²/2)]`
-/

namespace A054881.P11376105383169388520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001045 n ^ 2 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A054881.P11376105383169388520

namespace A054881

/-- `Δ[ceil(A001045(n)²/2)]` -/
def P11376105383169388520.Spec : Prop :=
  ∀ n, P11376105383169388520.a n = A054881 n

end A054881

/-! ## A054881.P11798355407819669311

`ceil(Δ[ceil(A000225(n)/3)²]/2)`
-/

namespace A054881.P11798355407819669311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000225 n : ℚ) / 3⌉ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n : ℚ) / 2⌉

end

end A054881.P11798355407819669311

namespace A054881

/-- `ceil(Δ[ceil(A000225(n)/3)²]/2)` -/
def P11798355407819669311.Spec : Prop :=
  ∀ n, P11798355407819669311.a n = A054881 n

end A054881

/-! ## A054881.P1295327811076216405

`A155543(n)-A179607(n)`
-/

namespace A054881.P1295327811076216405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155543 n - A179607 n

end

end A054881.P1295327811076216405

namespace A054881

/-- `A155543(n)-A179607(n)` -/
def P1295327811076216405.Spec : Prop :=
  ∀ n, P1295327811076216405.a n = A054881 n

end A054881

/-! ## A054881.P669188555829980896

`A083086(n)/A280560(n)`
-/

namespace A054881.P669188555829980896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083086 n : ℚ) / (A280560 n : ℚ)

end

end A054881.P669188555829980896

namespace A054881

/-- `A083086(n)/A280560(n)` -/
def P669188555829980896.Spec : Prop :=
  ∀ n, P669188555829980896.a n = (A054881 n : ℚ)

end A054881

/-! ## A054881.P7450488491108212028

`A081294(n)-A192382(n+1)`
-/

namespace A054881.P7450488491108212028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A192382 (n + 1)

end

end A054881.P7450488491108212028

namespace A054881

/-- `A081294(n)-A192382(n+1)` -/
def P7450488491108212028.Spec : Prop :=
  ∀ n, P7450488491108212028.a n = A054881 n

end A054881

/-! ## A054881.P15374285247552507786

`Δ[A139818(n)]/A040001(2*n)`
-/

namespace A054881.P15374285247552507786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A040001 (2 * n) : ℚ)

end

end A054881.P15374285247552507786

namespace A054881

/-- `Δ[A139818(n)]/A040001(2*n)` -/
def P15374285247552507786.Spec : Prop :=
  ∀ n, P15374285247552507786.a n = (A054881 n : ℚ)

end A054881

/-! ## A054881.P14344528150453716187

`A003683(n+1)-A131577(2*n)`
-/

namespace A054881.P14344528150453716187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003683 (n + 1) - A131577 (2 * n)

end

end A054881.P14344528150453716187

namespace A054881

/-- `A003683(n+1)-A131577(2*n)` -/
def P14344528150453716187.Spec : Prop :=
  ∀ n, P14344528150453716187.a n = A054881 n

end A054881

/-! ## A054881.P8601993630817805418

`A011782(2*n)-A192382(n+1)`
-/

namespace A054881.P8601993630817805418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (2 * n) - A192382 (n + 1)

end

end A054881.P8601993630817805418

namespace A054881

/-- `A011782(2*n)-A192382(n+1)` -/
def P8601993630817805418.Spec : Prop :=
  ∀ n, P8601993630817805418.a n = A054881 n

end A054881

/-! ## A054881.P4863864488417516049

`A081294(n)-A000079(n)*A001045(n)`
-/

namespace A054881.P4863864488417516049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n - A000079 n * A001045 n

end

end A054881.P4863864488417516049

namespace A054881

/-- `A081294(n)-A000079(n)*A001045(n)` -/
def P4863864488417516049.Spec : Prop :=
  ∀ n, P4863864488417516049.a n = A054881 n

end A054881

/-!
# A054882: Closed walks of length n along the edges of a dodecahedron based at a vertex.

The programs for A054882, the canonical program `A054882.P17615556658117091564` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054882 has offset 0).

The definition of A054882 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054882.P17615556658117091564

`A091000(n)-A054883(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054882

/-- `A091000(n)-A054883(n)` -/
def P17615556658117091564.Spec : Prop :=
  ∀ n, P17615556658117091564.a n = A054882 n

theorem P17615556658117091564.correct : P17615556658117091564.Spec := by
  intro n
  simp only [A054882]

end A054882

/-! ## A054882.P15295716970258187583

`(A232015(n)+1)/2-A054883(n)`
-/

namespace A054882.P15295716970258187583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232015 n + 1 : ℚ) / 2 - (A054883 n : ℚ)

end

end A054882.P15295716970258187583

namespace A054882

/-- `(A232015(n)+1)/2-A054883(n)` -/
def P15295716970258187583.Spec : Prop :=
  ∀ n, P15295716970258187583.a n = (A054882 n : ℚ)

end A054882

/-! ## A054882.P4858909590636218505

`A077925(n)+A091001(n)-A054883(n)`
-/

namespace A054882.P4858909590636218505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n + (A091001 n - A054883 n)

end

end A054882.P4858909590636218505

namespace A054882

/-- `A077925(n)+A091001(n)-A054883(n)` -/
def P4858909590636218505.Spec : Prop :=
  ∀ n, P4858909590636218505.a n = A054882 n

end A054882

/-! ## A054882.P8100382846121015458

`A091002(n)-(A054883(n)+Δ[A140962(n)])`
-/

namespace A054882.P8100382846121015458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n - (A054883 n + (f1 (n + 1) - f1 n))

end

end A054882.P8100382846121015458

namespace A054882

/-- `A091002(n)-(A054883(n)+Δ[A140962(n)])` -/
def P8100382846121015458.Spec : Prop :=
  ∀ n, P8100382846121015458.a n = A054882 n

end A054882

/-! ## A054882.P2574241104281682732

`A094555(n+1)-(A091002(n+1)+A091002(n))-A054883(n)`
-/

namespace A054882.P2574241104281682732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (n + 1) - (A091002 (n + 1) + A091002 n) - A054883 n

end

end A054882.P2574241104281682732

namespace A054882

/-- `A094555(n+1)-(A091002(n+1)+A091002(n))-A054883(n)` -/
def P2574241104281682732.Spec : Prop :=
  ∀ n, P2574241104281682732.a n = A054882 n

end A054882

/-!
# A054883: Number of walks of length n along the edges of a dodecahedron between two opposite vertices.

The programs for A054883, the canonical program `A054883.P7026641540567631268` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054883 has offset 0).

The definition of A054883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054883.P7026641540567631268

`round((5+3^n+4*(-2)^n-3*(1+(-1)^n)*5^(n/2))/20)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054883

/-- `round((5+3^n+4*(-2)^n-3*(1+(-1)^n)*5^(n/2))/20)` -/
def P7026641540567631268.Spec : Prop :=
  ∀ n, P7026641540567631268.a n = A054883 n

theorem P7026641540567631268.correct : P7026641540567631268.Spec := by
  intro n
  simp only [A054883]

end A054883

/-! ## A054883.P14919048074541499622

`A091000(n)-A054882(n)`
-/

namespace A054883.P14919048074541499622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091000 n - A054882 n

end

end A054883.P14919048074541499622

namespace A054883

/-- `A091000(n)-A054882(n)` -/
def P14919048074541499622.Spec : Prop :=
  ∀ n, P14919048074541499622.a n = A054883 n

end A054883

/-! ## A054883.P11521692617699330373

`ceil(A232015(n)/2-A054882(n))`
-/

namespace A054883.P11521692617699330373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A232015 n : ℚ) / 2 - (A054882 n : ℚ)⌉

end

end A054883.P11521692617699330373

namespace A054883

/-- `ceil(A232015(n)/2-A054882(n))` -/
def P11521692617699330373.Spec : Prop :=
  ∀ n, P11521692617699330373.a n = A054883 n

end A054883

/-! ## A054883.P16474378472393413307

`(A232015(2*n-n)+1)/2-A054882(n)`
-/

namespace A054883.P16474378472393413307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232015 (2 * n - n) + 1 : ℚ) / 2 - (A054882 n : ℚ)

end

end A054883.P16474378472393413307

namespace A054883

/-- `(A232015(2*n-n)+1)/2-A054882(n)` -/
def P16474378472393413307.Spec : Prop :=
  ∀ n, P16474378472393413307.a n = (A054883 n : ℚ)

end A054883

/-! ## A054883.P10355815542703451011

`A077925(n)+A091001(n)-A054882(n)`
-/

namespace A054883.P10355815542703451011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 n + (A091001 n - A054882 n)

end

end A054883.P10355815542703451011

namespace A054883

/-- `A077925(n)+A091001(n)-A054882(n)` -/
def P10355815542703451011.Spec : Prop :=
  ∀ n, P10355815542703451011.a n = A054883 n

end A054883

/-! ## A054883.P15436223027079761206

`A015441(n+1)-A003462(n)-A054882(n)`
-/

namespace A054883.P15436223027079761206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 (n + 1) - A003462 n - A054882 n

end

end A054883.P15436223027079761206

namespace A054883

/-- `A015441(n+1)-A003462(n)-A054882(n)` -/
def P15436223027079761206.Spec : Prop :=
  ∀ n, P15436223027079761206.a n = A054883 n

end A054883

/-! ## A054883.P10445741030576274550

`A091001(n+1)-2*A091002(n)-A054882(n)`
-/

namespace A054883.P10445741030576274550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091001 (n + 1) - 2 * A091002 n - A054882 n

end

end A054883.P10445741030576274550

namespace A054883

/-- `A091001(n+1)-2*A091002(n)-A054882(n)` -/
def P10445741030576274550.Spec : Prop :=
  ∀ n, P10445741030576274550.a n = A054883 n

end A054883

/-!
# A054884: Number of closed walks of length n along the edges of an icosahedron based at a vertex.

The programs for A054884, the canonical program `A054884.P875001082325446049` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054884 has offset 0).

The definition of A054884 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054884.P875001082325446049

`4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` with `a(0)=1, a(1)=0, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054884

/-- `4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` -/
def P875001082325446049.Spec : Prop :=
  ∀ n, P875001082325446049.a n = A054884 n

theorem P875001082325446049.correct : P875001082325446049.Spec := by
  intro n
  simp only [A054884]

end A054884

/-! ## A054884.P9479507103227196167

`(5^n+(-1)^n*5+3*(1+(-1)^n)*sqrt(5)^n)/12`
-/

namespace A054884.P9479507103227196167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((5 ^ n : ℤ) + (-1) ^ n * 5 : ℝ) + (3 * (1 + (-1) ^ n) : ℝ) * Real.sqrt (5 : ℝ) ^ n) / 12

end

end A054884.P9479507103227196167

namespace A054884

/-- `(5^n+(-1)^n*5+3*(1+(-1)^n)*sqrt(5)^n)/12` -/
def P9479507103227196167.Spec : Prop :=
  ∀ n, P9479507103227196167.a n = (A054884 n : ℝ)

end A054884

/-! ## A054884.P1072098905940318651

`A032122(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A054884.P1072098905940318651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A032122 (n - 1) - a (n - 1)

end

end A054884.P1072098905940318651

namespace A054884

/-- `A032122(n-1)-a(n-1)` -/
def P1072098905940318651.Spec : Prop :=
  ∀ n, P1072098905940318651.a n = A054884 n

end A054884

/-! ## A054884.P15375190810697083114

`A109500(n)-A054885(n)`
-/

namespace A054884.P15375190810697083114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109500 n - A054885 n

end

end A054884.P15375190810697083114

namespace A054884

/-- `A109500(n)-A054885(n)` -/
def P15375190810697083114.Spec : Prop :=
  ∀ n, P15375190810697083114.a n = A054884 n

end A054884

/-! ## A054884.P12908166818827271736

`A030517(n+1)-A231103(n+1)`
-/

namespace A054884.P12908166818827271736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030517 (n + 1) - A231103 (n + 1)

end

end A054884.P12908166818827271736

namespace A054884

/-- `A030517(n+1)-A231103(n+1)` -/
def P12908166818827271736.Spec : Prop :=
  ∀ n, P12908166818827271736.a n = A054884 n

end A054884

/-! ## A054884.P16908399439841913449

`A030517(n+1)-2*A015531(n)`
-/

namespace A054884.P16908399439841913449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030517 (n + 1) - 2 * A015531 n

end

end A054884.P16908399439841913449

namespace A054884

/-- `A030517(n+1)-2*A015531(n)` -/
def P16908399439841913449.Spec : Prop :=
  ∀ n, P16908399439841913449.a n = A054884 n

end A054884

/-! ## A054884.P3246152081494433018

`A030517(n+1)-A123010(n+2)/2`
-/

namespace A054884.P3246152081494433018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030517 (n + 1) : ℚ) - (A123010 (n + 2) : ℚ) / 2

end

end A054884.P3246152081494433018

namespace A054884

/-- `A030517(n+1)-A123010(n+2)/2` -/
def P3246152081494433018.Spec : Prop :=
  ∀ n, P3246152081494433018.a n = (A054884 n : ℚ)

end A054884

/-! ## A054884.P8777166154479821465

`A030517(n+1)+A054885(n)-A030518(n+1)`
-/

namespace A054884.P8777166154479821465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030517 (n + 1) + (A054885 n - A030518 (n + 1))

end

end A054884.P8777166154479821465

namespace A054884

/-- `A030517(n+1)+A054885(n)-A030518(n+1)` -/
def P8777166154479821465.Spec : Prop :=
  ∀ n, P8777166154479821465.a n = A054884 n

end A054884

/-! ## A054884.P8185015204089787989

`A231103(n+1)+A109500(n)-A030518(n+1)`
-/

namespace A054884.P8185015204089787989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231103 (n + 1) + (A109500 n - A030518 (n + 1))

end

end A054884.P8185015204089787989

namespace A054884

/-- `A231103(n+1)+A109500(n)-A030518(n+1)` -/
def P8185015204089787989.Spec : Prop :=
  ∀ n, P8185015204089787989.a n = A054884 n

end A054884

/-!
# A054885: Number of walks of length n along the edges of an icosahedron between two opposite vertices.

The programs for A054885, the canonical program `A054885.P1724559729007945414` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054885 has offset 0).

The definition of A054885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054885.P1724559729007945414

`4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054885

/-- `4*a(n-1)+10*a(n-2)-20*a(n-3)-25*a(n-4)` -/
def P1724559729007945414.Spec : Prop :=
  ∀ n, P1724559729007945414.a n = A054885 n

theorem P1724559729007945414.correct : P1724559729007945414.Spec := by
  intro n
  simp only [A054885]

end A054885

/-! ## A054885.P15162074091873362697

`(5^n+(-1)^n*5-3*(1+(-1)^n)*sqrt(5)^n)/12`
-/

namespace A054885.P15162074091873362697
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((5 ^ n : ℤ) + (-1) ^ n * 5 : ℝ) - (3 * (1 + (-1) ^ n) : ℝ) * Real.sqrt (5 : ℝ) ^ n) / 12

end

end A054885.P15162074091873362697

namespace A054885

/-- `(5^n+(-1)^n*5-3*(1+(-1)^n)*sqrt(5)^n)/12` -/
def P15162074091873362697.Spec : Prop :=
  ∀ n, P15162074091873362697.a n = (A054885 n : ℝ)

end A054885

/-! ## A054885.P8065930610417828201

`A109500(n)-A054884(n)`
-/

namespace A054885.P8065930610417828201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109500 n - A054884 n

end

end A054885.P8065930610417828201

namespace A054885

/-- `A109500(n)-A054884(n)` -/
def P8065930610417828201.Spec : Prop :=
  ∀ n, P8065930610417828201.a n = A054885 n

end A054885

/-! ## A054885.P639012570281376097

`xor(1, A015531(n))-A054884(n)`
-/

namespace A054885.P639012570281376097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A015531 n) - A054884 n

end

end A054885.P639012570281376097

namespace A054885

/-- `xor(1, A015531(n))-A054884(n)` -/
def P639012570281376097.Spec : Prop :=
  ∀ n, P639012570281376097.a n = A054885 n

end A054885

/-! ## A054885.P16932478940436094679

`A030518(n+1)-A231103(n+1)`
-/

namespace A054885.P16932478940436094679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030518 (n + 1) - A231103 (n + 1)

end

end A054885.P16932478940436094679

namespace A054885

/-- `A030518(n+1)-A231103(n+1)` -/
def P16932478940436094679.Spec : Prop :=
  ∀ n, P16932478940436094679.a n = A054885 n

end A054885

/-! ## A054885.P16496907731843570193

`A030518(n+1)+A054884(n)-A030517(n+1)`
-/

namespace A054885.P16496907731843570193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030518 (n + 1) + (A054884 n - A030517 (n + 1))

end

end A054885.P16496907731843570193

namespace A054885

/-- `A030518(n+1)+A054884(n)-A030517(n+1)` -/
def P16496907731843570193.Spec : Prop :=
  ∀ n, P16496907731843570193.a n = A054885 n

end A054885

/-! ## A054885.P8803588883000755326

`A231103(n+1)+A109500(n)-A030517(n+1)`
-/

namespace A054885.P8803588883000755326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231103 (n + 1) + (A109500 n - A030517 (n + 1))

end

end A054885.P8803588883000755326

namespace A054885

/-- `A231103(n+1)+A109500(n)-A030517(n+1)` -/
def P8803588883000755326.Spec : Prop :=
  ∀ n, P8803588883000755326.a n = A054885 n

end A054885

/-! ## A054885.P15015083869342107122

`(A054884(n)+A015531(n+1))%A030517(n+1)`
-/

namespace A054885.P15015083869342107122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054884 n + A015531 (n + 1)) (A030517 (n + 1))

end

end A054885.P15015083869342107122

namespace A054885

/-- `(A054884(n)+A015531(n+1))%A030517(n+1)` -/
def P15015083869342107122.Spec : Prop :=
  ∀ n, P15015083869342107122.a n = A054885 n

end A054885

/-!
# A054886: Layer counting sequence for hyperbolic tessellation by cuspidal triangles of angles (Pi/3,Pi/3,0) (this is the classical modular tessellation).

The programs for A054886, the canonical program `A054886.P16914555748635901691` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054886 has offset 0).

The definition of A054886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054886.P9829031148483287447

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A054886.P9829031148483287447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 6] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A054886.P9829031148483287447

namespace A054886

/-- `round(ϕ*a(n-1))` -/
def P9829031148483287447.Spec : Prop :=
  ∀ n, P9829031148483287447.a n = A054886 n

end A054886

/-! ## A054886.P16914555748635901691

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=10`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054886

/-- `a(n-1)+a(n-2)` -/
def P16914555748635901691.Spec : Prop :=
  ∀ n, (P16914555748635901691.a n : ℤ) = A054886 n

theorem P16914555748635901691.correct : P16914555748635901691.Spec := by
  intro n
  simp only [A054886]

end A054886

/-! ## A054886.P12454324941723965257

`A068922(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A054886.P12454324941723965257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A068922 (n - 1) + a (n - 1)

end

end A054886.P12454324941723965257

namespace A054886

/-- `A068922(n-1)+a(n-1)` -/
def P12454324941723965257.Spec : Prop :=
  ∀ n, P12454324941723965257.a n = A054886 n

end A054886

/-! ## A054886.P2559598894169738775

`2*A000045(n+2)-C(n, n²)`
-/

namespace A054886.P2559598894169738775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 2) - (Nat.choose n (n ^ 2) : ℤ)

end

end A054886.P2559598894169738775

namespace A054886

/-- `2*A000045(n+2)-C(n, n²)` -/
def P2559598894169738775.Spec : Prop :=
  ∀ n, P2559598894169738775.a n = A054886 n

end A054886

/-! ## A054886.P446551879106931058

`A256007(A008486(n))`
-/

namespace A054886.P446551879106931058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256007 (A008486 n).toNat

end

end A054886.P446551879106931058

namespace A054886

/-- `A256007(A008486(n))` -/
def P446551879106931058.Spec : Prop :=
  ∀ n, P446551879106931058.a n = A054886 n

end A054886

/-! ## A054886.P6925840424776480045

`A226857(A033627(n+2))`
-/

namespace A054886.P6925840424776480045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226857 (A033627 (n + 2)).toNat

end

end A054886.P6925840424776480045

namespace A054886

/-- `A226857(A033627(n+2))` -/
def P6925840424776480045.Spec : Prop :=
  ∀ n, P6925840424776480045.a n = A054886 n

end A054886

/-! ## A054886.P8275826208765486962

`A184985(n+1)+A131269(n)`
-/

namespace A054886.P8275826208765486962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184985 (n + 1) + A131269 n

end

end A054886.P8275826208765486962

namespace A054886

/-- `A184985(n+1)+A131269(n)` -/
def P8275826208765486962.Spec : Prop :=
  ∀ n, P8275826208765486962.a n = A054886 n

end A054886

/-! ## A054886.P3245599551016757692

`A068922(n+1)-A033322(n+1)`
-/

namespace A054886.P3245599551016757692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068922 (n + 1) - A033322 (n + 1)

end

end A054886.P3245599551016757692

namespace A054886

/-- `A068922(n+1)-A033322(n+1)` -/
def P3245599551016757692.Spec : Prop :=
  ∀ n, P3245599551016757692.a n = A054886 n

end A054886

/-! ## A054886.P3282986038537474933

`A116470(2*n)+A000045(n+1)`
-/

namespace A054886.P3282986038537474933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (2 * n) + A000045 (n + 1)

end

end A054886.P3282986038537474933

namespace A054886

/-- `A116470(2*n)+A000045(n+1)` -/
def P3282986038537474933.Spec : Prop :=
  ∀ n, P3282986038537474933.a n = A054886 n

end A054886

/-! ## A054886.P17285666566421119769

`A116470(2*n)+A079977(2*n)`
-/

namespace A054886.P17285666566421119769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (2 * n) + A079977 (2 * n)

end

end A054886.P17285666566421119769

namespace A054886

/-- `A116470(2*n)+A079977(2*n)` -/
def P17285666566421119769.Spec : Prop :=
  ∀ n, P17285666566421119769.a n = A054886 n

end A054886

/-! ## A054886.P12587498058460324374

`A259625(2*n+1)+A000045(n+1)`
-/

namespace A054886.P12587498058460324374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (2 * n + 1) + A000045 (n + 1)

end

end A054886.P12587498058460324374

namespace A054886

/-- `A259625(2*n+1)+A000045(n+1)` -/
def P12587498058460324374.Spec : Prop :=
  ∀ n, P12587498058460324374.a n = A054886 n

end A054886

/-! ## A054886.P13544777556419477101

`2*A128588(n+1)-A163733(n+1)`
-/

namespace A054886.P13544777556419477101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A128588 (n + 1) - A163733 (n + 1)

end

end A054886.P13544777556419477101

namespace A054886

/-- `2*A128588(n+1)-A163733(n+1)` -/
def P13544777556419477101.Spec : Prop :=
  ∀ n, P13544777556419477101.a n = A054886 n

end A054886

/-! ## A054886.P15676323087685938711

`A116470(2*n)+A053602(2*(n+1))`
-/

namespace A054886.P15676323087685938711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (2 * n) + A053602 (2 * (n + 1))

end

end A054886.P15676323087685938711

namespace A054886

/-- `A116470(2*n)+A053602(2*(n+1))` -/
def P15676323087685938711.Spec : Prop :=
  ∀ n, P15676323087685938711.a n = A054886 n

end A054886

/-! ## A054886.P15695709455040729779

`A123231(2*n+1)+A116470(2*n)`
-/

namespace A054886.P15695709455040729779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (2 * n + 1) + A116470 (2 * n)

end

end A054886.P15695709455040729779

namespace A054886

/-- `A123231(2*n+1)+A116470(2*n)` -/
def P15695709455040729779.Spec : Prop :=
  ∀ n, P15695709455040729779.a n = A054886 n

end A054886

/-! ## A054886.P2305485094513996871

`A272912(2*n+1)+A116470(2*n)`
-/

namespace A054886.P2305485094513996871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272912 (2 * n + 1) + A116470 (2 * n)

end

end A054886.P2305485094513996871

namespace A054886

/-- `A272912(2*n+1)+A116470(2*n)` -/
def P2305485094513996871.Spec : Prop :=
  ∀ n, P2305485094513996871.a n = A054886 n

end A054886

/-! ## A054886.P5694802689553801073

`∑[char[2]+A000045(n+1)]+A000045(n)`
-/

namespace A054886.P5694802689553801073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) + A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000045 n

end

end A054886.P5694802689553801073

namespace A054886

/-- `∑[char[2]+A000045(n+1)]+A000045(n)` -/
def P5694802689553801073.Spec : Prop :=
  ∀ n, P5694802689553801073.a n = A054886 n

end A054886

/-! ## A054886.P11567258742804918192

`A259626(2*n+1)+A000045(n+1)-1`
-/

namespace A054886.P11567258742804918192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259626 (2 * n + 1) + (A000045 (n + 1) - 1)

end

end A054886.P11567258742804918192

namespace A054886

/-- `A259626(2*n+1)+A000045(n+1)-1` -/
def P11567258742804918192.Spec : Prop :=
  ∀ n, P11567258742804918192.a n = A054886 n

end A054886

/-! ## A054886.P9850459515949568153

`2*A000045(n+2)-and(1, A000010(n+1))`
-/

namespace A054886.P9850459515949568153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 2) - Int.land 1 (A000010 (n + 1))

end

end A054886.P9850459515949568153

namespace A054886

/-- `2*A000045(n+2)-and(1, A000010(n+1))` -/
def P9850459515949568153.Spec : Prop :=
  ∀ n, P9850459515949568153.a n = A054886 n

end A054886

/-! ## A054886.P17531459542752654561

`A000045(n+3-C(2, n+1))+A000045(n)`
-/

namespace A054886.P17531459542752654561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3 - Nat.choose 2 (n + 1)) + A000045 n

end

end A054886.P17531459542752654561

namespace A054886

/-- `A000045(n+3-C(2, n+1))+A000045(n)` -/
def P17531459542752654561.Spec : Prop :=
  ∀ n, P17531459542752654561.a n = A054886 n

end A054886

/-! ## A054886.P13850217377745415484

`A000045(A184985(n+1)+2)+A000045(n)`
-/

namespace A054886.P13850217377745415484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A184985 (n + 1) + 2).toNat + A000045 n

end

end A054886.P13850217377745415484

namespace A054886

/-- `A000045(A184985(n+1)+2)+A000045(n)` -/
def P13850217377745415484.Spec : Prop :=
  ∀ n, P13850217377745415484.a n = A054886 n

end A054886

/-!
# A054887: Layer counting sequence for hyperbolic tessellation by cuspidal triangles of angles (Pi/3, Pi/5, Pi/7).

The programs for A054887, there is no canonical definition to state claims against.
-/

/-! ## A054887.P8029936055541971129

`∑[A210357(floor((10*a(n-1)-1)/4))]` with `a(0)=1`
-/

namespace A054887.P8029936055541971129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A210357 ⌊(10 * f1 (n - 1) - 1 : ℚ) / 4⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054887.P8029936055541971129

/-! ## A054887.P12228444411056145730

`A054846(∑[∑[A018014(n)]])`
-/

namespace A054887.P12228444411056145730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A054887.P12228444411056145730

/-! ## A054887.P14223877210314464185

`∑[A257639(∑[A107299(n)])]`
-/

namespace A054887.P14223877210314464185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107299 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054887.P14223877210314464185

/-! ## A054887.P14181042497562273014

`∑[A257639(Δ[A005960(n+1)])]`
-/

namespace A054887.P14181042497562273014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005960 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054887.P14181042497562273014

/-! ## A054887.P921114205220349921

`∑[∑[A351846(A339294(n+3))]]`
-/

namespace A054887.P921114205220349921
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A339294 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054887.P921114205220349921

/-!
# A054888: Layer counting sequence for hyperbolic tessellation by regular pentagons of angle Pi/2.

The programs for A054888, the canonical program `A054888.P1121100851620150953` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054888 has offset 0).

The definition of A054888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054888.P1121100851620150953

`A203976(A004277(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054888

/-- `A203976(A004277(n))` -/
def P1121100851620150953.Spec : Prop :=
  ∀ n, P1121100851620150953.a n = A054888 n

theorem P1121100851620150953.correct : P1121100851620150953.Spec := by
  intro n
  simp only [A054888]

end A054888

/-! ## A054888.P9028438536470739413

`ogf((1+2x+x^2)/(1-3x+x^2))`
-/

namespace A054888.P9028438536470739413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -3, 1] n

end

end A054888.P9028438536470739413

namespace A054888

/-- `ogf((1+2x+x^2)/(1-3x+x^2))` -/
def P9028438536470739413.Spec : Prop :=
  ∀ n, P9028438536470739413.a n = A054888 n

end A054888

/-! ## A054888.P14344548828751105571

`ceil(ϕ²*a(n-1))` with `a(0)=1, a(1)=5, a(2)=15`
-/

namespace A054888.P14344548828751105571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 15] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A054888.P14344548828751105571

namespace A054888

/-- `ceil(ϕ²*a(n-1))` -/
def P14344548828751105571.Spec : Prop :=
  ∀ n, P14344548828751105571.a n = A054888 n

end A054888

/-! ## A054888.P1657157497075451553

`3*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5, a(2)=15`
-/

namespace A054888.P1657157497075451553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 15] fun n a =>
  3 * a (n - 1) - a (n - 2)

end

end A054888.P1657157497075451553

namespace A054888

/-- `3*a(n-1)-a(n-2)` -/
def P1657157497075451553.Spec : Prop :=
  ∀ n, P1657157497075451553.a n = A054888 n

end A054888

/-! ## A054888.P17629059712863753168

`record[lcm(5, a(n-1))-a(n-2)]` with `a(0)=1, a(1)=5`
-/

namespace A054888.P17629059712863753168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (Int.lcm 5 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054888.P17629059712863753168

namespace A054888

/-- `record[lcm(5, a(n-1))-a(n-2)]` -/
def P17629059712863753168.Spec : Prop :=
  ∀ n, P17629059712863753168.a n = A054888 n

end A054888

/-! ## A054888.P3064125512163253155

`record[A203976(n+1)]`
-/

namespace A054888.P3064125512163253155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054888.P3064125512163253155

namespace A054888

/-- `record[A203976(n+1)]` -/
def P3064125512163253155.Spec : Prop :=
  ∀ n, P3064125512163253155.a n = A054888 n

end A054888

/-! ## A054888.P14470075352136766665

`record[A229339(2*(n+1))]`
-/

namespace A054888.P14470075352136766665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229339 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054888.P14470075352136766665

namespace A054888

/-- `record[A229339(2*(n+1))]` -/
def P14470075352136766665.Spec : Prop :=
  ∀ n, P14470075352136766665.a n = A054888 n

end A054888

/-! ## A054888.P14992834958314046492

`C(2, n+2)+5*A001906(n)`
-/

namespace A054888.P14992834958314046492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + 5 * A001906 n

end

end A054888.P14992834958314046492

namespace A054888

/-- `C(2, n+2)+5*A001906(n)` -/
def P14992834958314046492.Spec : Prop :=
  ∀ n, P14992834958314046492.a n = A054888 n

end A054888

/-! ## A054888.P17373970321476637684

`floor(acot(n))+5*A000045(2*n)`
-/

namespace A054888.P17373970321476637684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + 5 * A000045 (2 * n)

end

end A054888.P17373970321476637684

namespace A054888

/-- `floor(acot(n))+5*A000045(2*n)` -/
def P17373970321476637684.Spec : Prop :=
  ∀ n, P17373970321476637684.a n = A054888 n

end A054888

/-! ## A054888.P11818988678911327604

`floor((3-ϕ)*A000032(2*n+1))`
-/

namespace A054888.P11818988678911327604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 - Real.goldenRatio) * (A000032 (2 * n + 1) : ℝ)⌋

end

end A054888.P11818988678911327604

namespace A054888

/-- `floor((3-ϕ)*A000032(2*n+1))` -/
def P11818988678911327604.Spec : Prop :=
  ∀ n, P11818988678911327604.a n = A054888 n

end A054888

/-! ## A054888.P8652440250152496514

`A229339(A008574(n))`
-/

namespace A054888.P8652440250152496514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229339 (A008574 n).toNat

end

end A054888.P8652440250152496514

namespace A054888

/-- `A229339(A008574(n))` -/
def P8652440250152496514.Spec : Prop :=
  ∀ n, P8652440250152496514.a n = A054888 n

end A054888

/-! ## A054888.P5413194304526228770

`A203976(A004275(n+1))`
-/

namespace A054888.P5413194304526228770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (A004275 (n + 1)).toNat

end

end A054888.P5413194304526228770

namespace A054888

/-- `A203976(A004275(n+1))` -/
def P5413194304526228770.Spec : Prop :=
  ∀ n, P5413194304526228770.a n = A054888 n

end A054888

/-! ## A054888.P4924246650100457176

`A229339(A019442(n+2))`
-/

namespace A054888.P4924246650100457176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229339 (A019442 (n + 2)).toNat

end

end A054888.P4924246650100457176

namespace A054888

/-- `A229339(A019442(n+2))` -/
def P4924246650100457176.Spec : Prop :=
  ∀ n, P4924246650100457176.a n = A054888 n

end A054888

/-! ## A054888.P6470048327475758039

`A203976(A123108(4*n))`
-/

namespace A054888.P6470048327475758039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203976 (A123108 (4 * n)).toNat

end

end A054888.P6470048327475758039

namespace A054888

/-- `A203976(A123108(4*n))` -/
def P6470048327475758039.Spec : Prop :=
  ∀ n, P6470048327475758039.a n = A054888 n

end A054888

/-! ## A054888.P9665860688080549085

`A167375(n)+A052995(n)`
-/

namespace A054888.P9665860688080549085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167375 n + A052995 n

end

end A054888.P9665860688080549085

namespace A054888

/-- `A167375(n)+A052995(n)` -/
def P9665860688080549085.Spec : Prop :=
  ∀ n, P9665860688080549085.a n = A054888 n

end A054888

/-! ## A054888.P9235585103558423311

`A099857(n)-A001906(n)`
-/

namespace A054888.P9235585103558423311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n - A001906 n

end

end A054888.P9235585103558423311

namespace A054888

/-- `A099857(n)-A001906(n)` -/
def P9235585103558423311.Spec : Prop :=
  ∀ n, P9235585103558423311.a n = A054888 n

end A054888

/-! ## A054888.P1544734815592459138

`A335807(n)-A246640(n)`
-/

namespace A054888.P1544734815592459138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335807 n - A246640 n

end

end A054888.P1544734815592459138

namespace A054888

/-- `A335807(n)-A246640(n)` -/
def P1544734815592459138.Spec : Prop :=
  ∀ n, P1544734815592459138.a n = A054888 n

end A054888

/-! ## A054888.P11052397066256152141

`A099857(n)-Δ[A032908(n)]`
-/

namespace A054888.P11052397066256152141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099857 n - (f1 (n + 1) - f1 n)

end

end A054888.P11052397066256152141

namespace A054888

/-- `A099857(n)-Δ[A032908(n)]` -/
def P11052397066256152141.Spec : Prop :=
  ∀ n, P11052397066256152141.a n = A054888 n

end A054888

/-! ## A054888.P4217018083955177589

`A201157(n+1)+A000007(n)`
-/

namespace A054888.P4217018083955177589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201157 (n + 1) + A000007 n

end

end A054888.P4217018083955177589

namespace A054888

/-- `A201157(n+1)+A000007(n)` -/
def P4217018083955177589.Spec : Prop :=
  ∀ n, P4217018083955177589.a n = A054888 n

end A054888

/-! ## A054888.P2476055321729526476

`A335807(n)-A032908(n+1)`
-/

namespace A054888.P2476055321729526476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335807 n - A032908 (n + 1)

end

end A054888.P2476055321729526476

namespace A054888

/-- `A335807(n)-A032908(n+1)` -/
def P2476055321729526476.Spec : Prop :=
  ∀ n, P2476055321729526476.a n = A054888 n

end A054888

/-!
# A054889: Layer counting sequence for hyperbolic tessellation by regular pentagons of angle 2*Pi/5.

The programs for A054889, there is no canonical definition to state claims against.
-/

/-! ## A054889.P1900004393190721477

`A247914(A123893(n))`
-/

namespace A054889.P1900004393190721477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247914 (A123893 n).toNat

end

end A054889.P1900004393190721477

/-! ## A054889.P9972826827760187247

`A168201(A000165(n))+A154638(n)`
-/

namespace A054889.P9972826827760187247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A000165 n).toNat + A154638 n

end

end A054889.P9972826827760187247

/-!
# A054890: Layer counting sequence for hyperbolic tessellation by regular heptagons of angle Pi/3.

The programs for A054890, the canonical program `A054890.P9759176656109604467` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054890 has offset 1).

The definition of A054890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054890.P13459685396993812877

`ogf((1+x+x^2)/(1-6x+x^2))`
-/

namespace A054890.P13459685396993812877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1] [1, -6, 1] n

end

end A054890.P13459685396993812877

namespace A054890

/-- `ogf((1+x+x^2)/(1-6x+x^2))` -/
def P13459685396993812877.Spec : Prop :=
  ∀ n, P13459685396993812877.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P5392708366566783617

`char[2]+6*a(n-1)-a(n-2)` with `a(0)=1, a(1)=7`
-/

namespace A054890.P5392708366566783617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (6 * a (n - 1) - a (n - 2))

end

end A054890.P5392708366566783617

namespace A054890

/-- `char[2]+6*a(n-1)-a(n-2)` -/
def P5392708366566783617.Spec : Prop :=
  ∀ n, P5392708366566783617.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P9759176656109604467

`A152118(2*n)+A075848(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054890

/-- `A152118(2*n)+A075848(n)` -/
def P9759176656109604467.Spec : Prop :=
  ∀ n, P9759176656109604467.a n = A054890 (n + 1)

theorem P9759176656109604467.correct : P9759176656109604467.Spec := by
  intro n
  simp only [A054890, Nat.add_sub_cancel]

end A054890

/-! ## A054890.P12281525594315419483

`A077413(n)-A099425(2*n)`
-/

namespace A054890.P12281525594315419483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n - A099425 (2 * n)

end

end A054890.P12281525594315419483

namespace A054890

/-- `A077413(n)-A099425(2*n)` -/
def P12281525594315419483.Spec : Prop :=
  ∀ n, P12281525594315419483.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P18220790057020999209

`A113225(A004273(n))+A075848(n)`
-/

namespace A054890.P18220790057020999209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113225 (A004273 n).toNat + A075848 n

end

end A054890.P18220790057020999209

namespace A054890

/-- `A113225(A004273(n))+A075848(n)` -/
def P18220790057020999209.Spec : Prop :=
  ∀ n, P18220790057020999209.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P8324427946607146437

`A276600(A016777(n))+A000007(n)`
-/

namespace A054890.P8324427946607146437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (A016777 n).toNat + A000007 n

end

end A054890.P8324427946607146437

namespace A054890

/-- `A276600(A016777(n))+A000007(n)` -/
def P8324427946607146437.Spec : Prop :=
  ∀ n, P8324427946607146437.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P687744411352742204

`A054488(n)-A000129(A004273(n))`
-/

namespace A054890.P687744411352742204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n - A000129 (A004273 n).toNat

end

end A054890.P687744411352742204

namespace A054890

/-- `A054488(n)-A000129(A004273(n))` -/
def P687744411352742204.Spec : Prop :=
  ∀ n, P687744411352742204.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P2885388319922476369

`A077413(n)-A159582(A004273(n))`
-/

namespace A054890.P2885388319922476369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077413 n - A159582 (A004273 n).toNat

end

end A054890.P2885388319922476369

namespace A054890

/-- `A077413(n)-A159582(A004273(n))` -/
def P2885388319922476369.Spec : Prop :=
  ∀ n, P2885388319922476369.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P6274781147282474194

`A266507(n)-A006452(A004273(n))`
-/

namespace A054890.P6274781147282474194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266507 n - A006452 (A004273 n).toNat

end

end A054890.P6274781147282474194

namespace A054890

/-- `A266507(n)-A006452(A004273(n))` -/
def P6274781147282474194.Spec : Prop :=
  ∀ n, P6274781147282474194.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P97358224766461148

`A054488(n)-A135153(A130824(n))`
-/

namespace A054890.P97358224766461148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n - A135153 (A130824 n).toNat

end

end A054890.P97358224766461148

namespace A054890

/-- `A054488(n)-A135153(A130824(n))` -/
def P97358224766461148.Spec : Prop :=
  ∀ n, P97358224766461148.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P2652910545530377497

`A054488(n)-A135153(A111284(n+1))`
-/

namespace A054890.P2652910545530377497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054488 n - A135153 (A111284 (n + 1)).toNat

end

end A054890.P2652910545530377497

namespace A054890

/-- `A054488(n)-A135153(A111284(n+1))` -/
def P2652910545530377497.Spec : Prop :=
  ∀ n, P2652910545530377497.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P3463361628445467969

`A276600(3*n+1)+A011558(A008574(5*n))`
-/

namespace A054890.P3463361628445467969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276600 (3 * n + 1) + A011558 (A008574 (5 * n)).toNat

end

end A054890.P3463361628445467969

namespace A054890

/-- `A276600(3*n+1)+A011558(A008574(5*n))` -/
def P3463361628445467969.Spec : Prop :=
  ∀ n, P3463361628445467969.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P7009839421119925771

`A266505(A004277(2*n))+A216162(A004277(2*n))`
-/

namespace A054890.P7009839421119925771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266505 (A004277 (2 * n)).toNat + A216162 (A004277 (2 * n)).toNat

end

end A054890.P7009839421119925771

namespace A054890

/-- `A266505(A004277(2*n))+A216162(A004277(2*n))` -/
def P7009839421119925771.Spec : Prop :=
  ∀ n, P7009839421119925771.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P12648293261128199316

`record[A221174(n+3)%A006452(n+3)]`
-/

namespace A054890.P12648293261128199316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221174 (n + 3)) (A006452 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054890.P12648293261128199316

namespace A054890

/-- `record[A221174(n+3)%A006452(n+3)]` -/
def P12648293261128199316.Spec : Prop :=
  ∀ n, P12648293261128199316.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P14331680273193149270

`record[A216162(n+11)%A266504(n+6)]`
-/

namespace A054890.P14331680273193149270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216162 (n + 11)) (A266504 (n + 6))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054890.P14331680273193149270

namespace A054890

/-- `record[A216162(n+11)%A266504(n+6)]` -/
def P14331680273193149270.Spec : Prop :=
  ∀ n, P14331680273193149270.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P11736720116327564005

`A006452(2*n+1)+A006452(2*n+3)%A006452(2*n+1)`
-/

namespace A054890.P11736720116327564005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 (2 * n + 1) + Int.tmod (A006452 (2 * n + 3)) (A006452 (2 * n + 1))

end

end A054890.P11736720116327564005

namespace A054890

/-- `A006452(2*n+1)+A006452(2*n+3)%A006452(2*n+1)` -/
def P11736720116327564005.Spec : Prop :=
  ∀ n, P11736720116327564005.a n = A054890 (n + 1)

end A054890

/-! ## A054890.P6656103447219149766

`A276600(A016777(n))^A178334(n)`
-/

namespace A054890.P6656103447219149766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276600 (A016777 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A054890.P6656103447219149766

namespace A054890

/-- `A276600(A016777(n))^A178334(n)` -/
def P6656103447219149766.Spec : Prop :=
  ∀ n, P6656103447219149766.a n = (A054890 (n + 1) : ℚ)

end A054890

/-!
# A054891: Cusp form of weight 13/2 associated to the unique cusp form of weight 12 under Shimura correspondence.

The programs for A054891, there is no canonical definition to state claims against.
-/

/-! ## A054891.P2003917040097204439

`A335062(A057723((n+1)^n))`
-/

namespace A054891.P2003917040097204439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335062 (A057723 ((n + 1) ^ n)).toNat

end

end A054891.P2003917040097204439

/-!
# A054892: Smallest prime a(n) such that the sum of n consecutive primes starting with a(n) is divisible by n.

The programs for A054892, there is no canonical definition to state claims against.
-/

/-! ## A054892.P7657452819102152303

`A122820(∑[n]+1)`
-/

namespace A054892.P7657452819102152303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122820 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054892.P7657452819102152303

/-! ## A054892.P11684282241559900679

`p?[A122820(A000124(n))]`
-/

namespace A054892.P11684282241559900679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122820 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054892.P11684282241559900679

/-! ## A054892.P12166506504222517255

`p?[A122820(∑[A028310(n)])]`
-/

namespace A054892.P12166506504222517255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122820 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054892.P12166506504222517255

/-! ## A054892.P13719025959904773675

`p?[A122820(A000217(n)+1)]`
-/

namespace A054892.P13719025959904773675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122820 (A000217 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054892.P13719025959904773675

/-! ## A054892.P16118733745247163177

`A065357(n)²*A122820(A000124(n))`
-/

namespace A054892.P16118733745247163177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 * A122820 (A000124 n).toNat

end

end A054892.P16118733745247163177

/-!
# A054893: a(n) = Sum_{j > 0} floor(n/4^j).

The programs for A054893, the canonical program `A054893.P4971289715501713883` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054893 has offset 0).

The definition of A054893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054893.P4971289715501713883

`a(floor(n/4))+floor(n/4)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054893

/-- `a(floor(n/4))+floor(n/4)` -/
def P4971289715501713883.Spec : Prop :=
  ∀ n, P4971289715501713883.a n = A054893 n

theorem P4971289715501713883.correct : P4971289715501713883.Spec := by
  intro n
  simp only [A054893]

end A054893

/-! ## A054893.P14422188796409572279

`(n-A053737(n))/3`
-/

namespace A054893.P14422188796409572279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053737 n : ℚ) / 3

end

end A054893.P14422188796409572279

namespace A054893

/-- `(n-A053737(n))/3` -/
def P14422188796409572279.Spec : Prop :=
  ∀ n, P14422188796409572279.a n = (A054893 n : ℚ)

end A054893

/-! ## A054893.P383216722699231473

`∑[val(abs(1-n)+1, 4)]`
-/

namespace A054893.P383216722699231473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054893.P383216722699231473

namespace A054893

/-- `∑[val(abs(1-n)+1, 4)]` -/
def P383216722699231473.Spec : Prop :=
  ∀ n, (P383216722699231473.a n : ℤ) = A054893 n

end A054893

/-! ## A054893.P7430034899930302250

`val(n, 4)-floor(-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A054893.P7430034899930302250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 4 : ℤ) - (-a (n - 1))

end

end A054893.P7430034899930302250

namespace A054893

/-- `val(n, 4)-floor(-a(n-1))` -/
def P7430034899930302250.Spec : Prop :=
  ∀ n, P7430034899930302250.a n = A054893 n

end A054893

/-! ## A054893.P6188580038598737513

`val(n, 4)-ceil(-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A054893.P6188580038598737513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 4 : ℤ) - (-a (n - 1))

end

end A054893.P6188580038598737513

namespace A054893

/-- `val(n, 4)-ceil(-a(n-1))` -/
def P6188580038598737513.Spec : Prop :=
  ∀ n, P6188580038598737513.a n = A054893 n

end A054893

/-! ## A054893.P5683691790602457801

`val(n, 4)-round(-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A054893.P5683691790602457801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.valuation n 4 : ℤ) - (-a (n - 1))

end

end A054893.P5683691790602457801

namespace A054893

/-- `val(n, 4)-round(-a(n-1))` -/
def P5683691790602457801.Spec : Prop :=
  ∀ n, P5683691790602457801.a n = A054893 n

end A054893

/-! ## A054893.P14727618361009583027

`∑[val(n, 4)*a(n-1)!]` with `a(0)=0`
-/

namespace A054893.P14727618361009583027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  SequenceMachineLib.valuation n 4 * Nat.factorial (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054893.P14727618361009583027

namespace A054893

/-- `∑[val(n, 4)*a(n-1)!]` -/
def P14727618361009583027.Spec : Prop :=
  ∀ n, (P14727618361009583027.a n : ℤ) = A054893 n

end A054893

/-! ## A054893.P4520031757294676709

`∑[val(n+1, 4)]-val(n+1, 4)`
-/

namespace A054893.P4520031757294676709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 4 : ℤ)

end

end A054893.P4520031757294676709

namespace A054893

/-- `∑[val(n+1, 4)]-val(n+1, 4)` -/
def P4520031757294676709.Spec : Prop :=
  ∀ n, P4520031757294676709.a n = A054893 n

end A054893

/-! ## A054893.P14713608692019128401

`A087069(n)-n`
-/

namespace A054893.P14713608692019128401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087069 n - (n : ℤ)

end

end A054893.P14713608692019128401

namespace A054893

/-- `A087069(n)-n` -/
def P14713608692019128401.Spec : Prop :=
  ∀ n, P14713608692019128401.a n = A054893 n

end A054893

/-! ## A054893.P5532796031037936579

`A120518(n+1)-(n+1)`
-/

namespace A054893.P5532796031037936579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120518 (n + 1) - (n + 1 : ℤ)

end

end A054893.P5532796031037936579

namespace A054893

/-- `A120518(n+1)-(n+1)` -/
def P5532796031037936579.Spec : Prop :=
  ∀ n, P5532796031037936579.a n = A054893 n

end A054893

/-! ## A054893.P18015525750854120205

`A235127(n)+a(n-1)` with `a(0)=0`
-/

namespace A054893.P18015525750854120205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A235127 n + a (n - 1)

end

end A054893.P18015525750854120205

namespace A054893

/-- `A235127(n)+a(n-1)` -/
def P18015525750854120205.Spec : Prop :=
  ∀ n, P18015525750854120205.a n = A054893 n

end A054893

/-! ## A054893.P7429483081668466277

`A047878(n-A053737(n))`
-/

namespace A054893.P7429483081668466277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047878 ((n : ℤ) - A053737 n).toNat

end

end A054893.P7429483081668466277

namespace A054893

/-- `A047878(n-A053737(n))` -/
def P7429483081668466277.Spec : Prop :=
  ∀ n, P7429483081668466277.a n = A054893 n

end A054893

/-! ## A054893.P9180799773677931235

`A068639(n)-A139351(n)`
-/

namespace A054893.P9180799773677931235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068639 n - A139351 n

end

end A054893.P9180799773677931235

namespace A054893

/-- `A068639(n)-A139351(n)` -/
def P9180799773677931235.Spec : Prop :=
  ∀ n, P9180799773677931235.a n = A054893 n

end A054893

/-! ## A054893.P7576034749321786053

`A123087(n)-A139352(n)`
-/

namespace A054893.P7576034749321786053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123087 n - A139352 n

end

end A054893.P7576034749321786053

namespace A054893

/-- `A123087(n)-A139352(n)` -/
def P7576034749321786053.Spec : Prop :=
  ∀ n, P7576034749321786053.a n = A054893 n

end A054893

/-! ## A054893.P17005606432301314163

`A285870(n-A053737(n))`
-/

namespace A054893.P17005606432301314163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 ((n : ℤ) - A053737 n).toNat

end

end A054893.P17005606432301314163

namespace A054893

/-- `A285870(n-A053737(n))` -/
def P17005606432301314163.Spec : Prop :=
  ∀ n, P17005606432301314163.a n = A054893 n

end A054893

/-! ## A054893.P14054017936463676354

`A087069(n)%A028310(n)`
-/

namespace A054893.P14054017936463676354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087069 n) (A028310 n)

end

end A054893.P14054017936463676354

namespace A054893

/-- `A087069(n)%A028310(n)` -/
def P14054017936463676354.Spec : Prop :=
  ∀ n, P14054017936463676354.a n = A054893 n

end A054893

/-! ## A054893.P6462338259555773159

`A008611(1-A053737(n)+n)`
-/

namespace A054893.P6462338259555773159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (1 - A053737 n + (n : ℤ)).toNat

end

end A054893.P6462338259555773159

namespace A054893

/-- `A008611(1-A053737(n)+n)` -/
def P6462338259555773159.Spec : Prop :=
  ∀ n, P6462338259555773159.a n = A054893 n

end A054893

/-! ## A054893.P8465404672549581333

`A008611(1-(A053737(n)-n))`
-/

namespace A054893.P8465404672549581333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (1 - (A053737 n - (n : ℤ))).toNat

end

end A054893.P8465404672549581333

namespace A054893

/-- `A008611(1-(A053737(n)-n))` -/
def P8465404672549581333.Spec : Prop :=
  ∀ n, P8465404672549581333.a n = A054893 n

end A054893

/-! ## A054893.P17128904173918025748

`(A050292(n)-A000120(n))/2`
-/

namespace A054893.P17128904173918025748
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050292 n - A000120 n : ℚ) / 2

end

end A054893.P17128904173918025748

namespace A054893

/-- `(A050292(n)-A000120(n))/2` -/
def P17128904173918025748.Spec : Prop :=
  ∀ n, P17128904173918025748.a n = (A054893 n : ℚ)

end A054893

/-! ## A054893.P10699545412743582630

`(A005187(n)-A197911(n))/2`
-/

namespace A054893.P10699545412743582630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005187 n - A197911 n : ℚ) / 2

end

end A054893.P10699545412743582630

namespace A054893

/-- `(A005187(n)-A197911(n))/2` -/
def P10699545412743582630.Spec : Prop :=
  ∀ n, P10699545412743582630.a n = (A054893 n : ℚ)

end A054893

/-!
# A054894: a(n+1) = 4*a(n) + 4*a(n-1) - 4*a(n-2) - a(n-3) with a(1)=1, a(2)=2, a(3)=11, a(4)=48.

The programs for A054894, the canonical program `A054894.P6640690573051827133` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054894 has offset 1).

The definition of A054894 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054894.P6640690573051827133

`4*(a(n-1)+a(n-2)-a(n-3))-a(n-4)` with `a(0)=1, a(1)=2, a(2)=11, a(3)=48`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054894

/-- `4*(a(n-1)+a(n-2)-a(n-3))-a(n-4)` -/
def P6640690573051827133.Spec : Prop :=
  ∀ n, P6640690573051827133.a n = A054894 (n + 1)

theorem P6640690573051827133.correct : P6640690573051827133.Spec := by
  intro n
  simp only [A054894, Nat.add_sub_cancel]

end A054894

/-! ## A054894.P8970830133962163886

`ogf((1-2x-x^2)/(1-4x-4x^2+4x^3+x^4))`
-/

namespace A054894.P8970830133962163886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -4, -4, 4, 1] n

end

end A054894.P8970830133962163886

namespace A054894

/-- `ogf((1-2x-x^2)/(1-4x-4x^2+4x^3+x^4))` -/
def P8970830133962163886.Spec : Prop :=
  ∀ n, P8970830133962163886.a n = A054894 (n + 1)

end A054894

/-! ## A054894.P3276462107026055586

`A332862(∑[n+2]-1)`
-/

namespace A054894.P3276462107026055586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332862 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A054894.P3276462107026055586

namespace A054894

/-- `A332862(∑[n+2]-1)` -/
def P3276462107026055586.Spec : Prop :=
  ∀ n, P3276462107026055586.a n = A054894 (n + 1)

end A054894

/-! ## A054894.P18356165460422790757

`record[A332862(abs(A255878(n+1)))]`
-/

namespace A054894.P18356165460422790757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332862 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054894.P18356165460422790757

namespace A054894

/-- `record[A332862(abs(A255878(n+1)))]` -/
def P18356165460422790757.Spec : Prop :=
  ∀ n, P18356165460422790757.a n = A054894 (n + 1)

end A054894

/-! ## A054894.P3781032661505291920

`A020985(n)²*A332862(A034856(n+1))`
-/

namespace A054894.P3781032661505291920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A332862 (A034856 (n + 1)).toNat

end

end A054894.P3781032661505291920

namespace A054894

/-- `A020985(n)²*A332862(A034856(n+1))` -/
def P3781032661505291920.Spec : Prop :=
  ∀ n, P3781032661505291920.a n = A054894 (n + 1)

end A054894

/-!
# A054895: a(n) = Sum_{k>0} floor(n/6^k).

The programs for A054895, the canonical program `A054895.P15754295407001771698` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054895 has offset 0).

The definition of A054895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054895.P15754295407001771698

`a(floor(n/6))+floor(n/6)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054895

/-- `a(floor(n/6))+floor(n/6)` -/
def P15754295407001771698.Spec : Prop :=
  ∀ n, P15754295407001771698.a n = A054895 n

theorem P15754295407001771698.correct : P15754295407001771698.Spec := by
  intro n
  simp only [A054895]

end A054895

/-! ## A054895.P16700366045368159411

`(n-A053827(n))/5`
-/

namespace A054895.P16700366045368159411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053827 n : ℚ) / 5

end

end A054895.P16700366045368159411

namespace A054895

/-- `(n-A053827(n))/5` -/
def P16700366045368159411.Spec : Prop :=
  ∀ n, P16700366045368159411.a n = (A054895 n : ℚ)

end A054895

/-! ## A054895.P14632344298323514143

`∑[val(abs(1-n)+1, 6)]`
-/

namespace A054895.P14632344298323514143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054895.P14632344298323514143

namespace A054895

/-- `∑[val(abs(1-n)+1, 6)]` -/
def P14632344298323514143.Spec : Prop :=
  ∀ n, (P14632344298323514143.a n : ℤ) = A054895 n

end A054895

/-! ## A054895.P10739382757215353664

`∑[val(n+1, 6)]-val(n+1, 6)`
-/

namespace A054895.P10739382757215353664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 6 : ℤ)

end

end A054895.P10739382757215353664

namespace A054895

/-- `∑[val(n+1, 6)]-val(n+1, 6)` -/
def P10739382757215353664.Spec : Prop :=
  ∀ n, P10739382757215353664.a n = A054895 n

end A054895

/-! ## A054895.P8059023028028696853

`(n-∑{digits}[A007092(n), #])/5`
-/

namespace A054895.P8059023028028696853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 5

end

end A054895.P8059023028028696853

namespace A054895

/-- `(n-∑{digits}[A007092(n), #])/5` -/
def P8059023028028696853.Spec : Prop :=
  ∀ n, P8059023028028696853.a n = (A054895 n : ℚ)

end A054895

/-! ## A054895.P15918439600883949655

`ceil((n-A173526(n+1))/5)`
-/

namespace A054895.P15918439600883949655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - A173526 (n + 1) : ℚ) / 5⌉

end

end A054895.P15918439600883949655

namespace A054895

/-- `ceil((n-A173526(n+1))/5)` -/
def P15918439600883949655.Spec : Prop :=
  ∀ n, P15918439600883949655.a n = A054895 n

end A054895

/-! ## A054895.P7698093678223381386

`∑[A122841(n+1)]-A122841(n+1)`
-/

namespace A054895.P7698093678223381386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122841 (n + 1)

end

end A054895.P7698093678223381386

namespace A054895

/-- `∑[A122841(n+1)]-A122841(n+1)` -/
def P7698093678223381386.Spec : Prop :=
  ∀ n, P7698093678223381386.a n = A054895 n

end A054895

/-! ## A054895.P10678886646299454435

`(n-A007953(A007092(n)))/5`
-/

namespace A054895.P10678886646299454435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A007953 (A007092 n).toNat : ℚ) / 5

end

end A054895.P10678886646299454435

namespace A054895

/-- `(n-A007953(A007092(n)))/5` -/
def P10678886646299454435.Spec : Prop :=
  ∀ n, P10678886646299454435.a n = (A054895 n : ℚ)

end A054895

/-! ## A054895.P7608343870982789445

`val(A243758(n), 2)`
-/

namespace A054895.P7608343870982789445
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243758 n).toNat 2

end

end A054895.P7608343870982789445

namespace A054895

/-- `val(A243758(n), 2)` -/
def P7608343870982789445.Spec : Prop :=
  ∀ n, (P7608343870982789445.a n : ℤ) = A054895 n

end A054895

/-!
# A054896: a(n) = Sum_{k>0} floor(n/7^k).

The programs for A054896, the canonical program `A054896.P4569418571639355434` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054896 has offset 0).

The definition of A054896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053828, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054896.P4569418571639355434

`(n-A053828(n))/6`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054896

/-- `(n-A053828(n))/6` -/
def P4569418571639355434.Spec : Prop :=
  ∀ n, P4569418571639355434.a n = (A054896 n : ℚ)

end A054896

/-! ## A054896.P14867305408835690104

`∑[val(C(2, n)+n, 7)]`
-/

namespace A054896.P14867305408835690104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054896.P14867305408835690104

namespace A054896

/-- `∑[val(C(2, n)+n, 7)]` -/
def P14867305408835690104.Spec : Prop :=
  ∀ n, (P14867305408835690104.a n : ℤ) = A054896 n

end A054896

/-! ## A054896.P10998737563237379983

`∑[val(floor(2/acot(n)), 7)]`
-/

namespace A054896.P10998737563237379983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054896.P10998737563237379983

namespace A054896

/-- `∑[val(floor(2/acot(n)), 7)]` -/
def P10998737563237379983.Spec : Prop :=
  ∀ n, (P10998737563237379983.a n : ℤ) = A054896 n

end A054896

/-! ## A054896.P8483668779115424981

`∑[val(floor(acot(n)+n), 7)]`
-/

namespace A054896.P8483668779115424981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054896.P8483668779115424981

namespace A054896

/-- `∑[val(floor(acot(n)+n), 7)]` -/
def P8483668779115424981.Spec : Prop :=
  ∀ n, (P8483668779115424981.a n : ℤ) = A054896 n

end A054896

/-! ## A054896.P17691839896074946666

`a(n-1)+val(n, 7)` with `a(0)=0`
-/

namespace A054896.P17691839896074946666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 7

end

end A054896.P17691839896074946666

namespace A054896

/-- `a(n-1)+val(n, 7)` -/
def P17691839896074946666.Spec : Prop :=
  ∀ n, (P17691839896074946666.a n : ℤ) = A054896 n

end A054896

/-! ## A054896.P325891037724418844

`∑[val(abs(1-n)+1, 7)]`
-/

namespace A054896.P325891037724418844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054896.P325891037724418844

namespace A054896

/-- `∑[val(abs(1-n)+1, 7)]` -/
def P325891037724418844.Spec : Prop :=
  ∀ n, (P325891037724418844.a n : ℤ) = A054896 n

end A054896

/-! ## A054896.P696406460520358544

`floor(n/7)+a(floor(n/7))` with `a(0)=0`
-/

namespace A054896.P696406460520358544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 7⌋ + a ⌊(n : ℚ) / 7⌋.toNat

end

end A054896.P696406460520358544

namespace A054896

/-- `floor(n/7)+a(floor(n/7))` -/
def P696406460520358544.Spec : Prop :=
  ∀ n, P696406460520358544.a n = A054896 n

end A054896

/-! ## A054896.P9088887202324644226

`∑[val(n+1, 7)]-val(n+1, 7)`
-/

namespace A054896.P9088887202324644226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 7 : ℤ)

end

end A054896.P9088887202324644226

namespace A054896

/-- `∑[val(n+1, 7)]-val(n+1, 7)` -/
def P9088887202324644226.Spec : Prop :=
  ∀ n, P9088887202324644226.a n = A054896 n

end A054896

/-! ## A054896.P1810254874874159111

`∑[A214411(n+1)]-A214411(n+1)`
-/

namespace A054896.P1810254874874159111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A214411 (n + 1)

end

end A054896.P1810254874874159111

namespace A054896

/-- `∑[A214411(n+1)]-A214411(n+1)` -/
def P1810254874874159111.Spec : Prop :=
  ∀ n, P1810254874874159111.a n = A054896 n

end A054896

/-! ## A054896.P9041332105142264311

`∑[A214411(A273673(∑[n+3]))]`
-/

namespace A054896.P9041332105142264311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214411 (A273673 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054896.P9041332105142264311

namespace A054896

/-- `∑[A214411(A273673(∑[n+3]))]` -/
def P9041332105142264311.Spec : Prop :=
  ∀ n, P9041332105142264311.a n = A054896 n

end A054896

/-!
# A054897: a(n) = Sum_{k>0} floor(n/8^k).

The programs for A054897, the canonical program `A054897.P7937699676947939957` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054897 has offset 0).

The definition of A054897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054897.P2519760012141846099

`(n-A053829(n))/7`
-/

namespace A054897.P2519760012141846099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A053829 n : ℚ) / 7

end

end A054897.P2519760012141846099

namespace A054897

/-- `(n-A053829(n))/7` -/
def P2519760012141846099.Spec : Prop :=
  ∀ n, P2519760012141846099.a n = (A054897 n : ℚ)

end A054897

/-! ## A054897.P7937699676947939957

`a(n-1)+val(n, 8)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054897

/-- `a(n-1)+val(n, 8)` -/
def P7937699676947939957.Spec : Prop :=
  ∀ n, (P7937699676947939957.a n : ℤ) = A054897 n

theorem P7937699676947939957.correct : P7937699676947939957.Spec := by
  intro n
  simp only [A054897]

end A054897

/-! ## A054897.P8010059391979000862

`∑[val(floor(sqrt(n²+4)), 8)]`
-/

namespace A054897.P8010059391979000862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.sqrt (n ^ 2 + 4)) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054897.P8010059391979000862

namespace A054897

/-- `∑[val(floor(sqrt(n²+4)), 8)]` -/
def P8010059391979000862.Spec : Prop :=
  ∀ n, (P8010059391979000862.a n : ℤ) = A054897 n

end A054897

/-! ## A054897.P17366192056202712097

`floor(n/8)+a(floor(n/8))` with `a(0)=0`
-/

namespace A054897.P17366192056202712097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 8⌋ + a ⌊(n : ℚ) / 8⌋.toNat

end

end A054897.P17366192056202712097

namespace A054897

/-- `floor(n/8)+a(floor(n/8))` -/
def P17366192056202712097.Spec : Prop :=
  ∀ n, P17366192056202712097.a n = A054897 n

end A054897

/-! ## A054897.P8077630761509778951

`∑[val(n+1, 8)]-val(n+1, 8)`
-/

namespace A054897.P8077630761509778951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 8 : ℤ)

end

end A054897.P8077630761509778951

namespace A054897

/-- `∑[val(n+1, 8)]-val(n+1, 8)` -/
def P8077630761509778951.Spec : Prop :=
  ∀ n, P8077630761509778951.a n = A054897 n

end A054897

/-! ## A054897.P13648553293715308012

`A283444(n-A053829(n))`
-/

namespace A054897.P13648553293715308012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283444 ((n : ℤ) - A053829 n).toNat

end

end A054897.P13648553293715308012

namespace A054897

/-- `A283444(n-A053829(n))` -/
def P13648553293715308012.Spec : Prop :=
  ∀ n, P13648553293715308012.a n = A054897 n

end A054897

/-! ## A054897.P15275723455673397392

`∑[floor(A007814(A302436(n))/3)]`
-/

namespace A054897.P15275723455673397392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007814 (A302436 n).toNat : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054897.P15275723455673397392

namespace A054897

/-- `∑[floor(A007814(A302436(n))/3)]` -/
def P15275723455673397392.Spec : Prop :=
  ∀ n, P15275723455673397392.a n = A054897 n

end A054897

/-!
# A054898: a(n) = Sum_{k>0} floor(n/9^k).

The programs for A054898, the canonical program `A054898.P5971935693440443971` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054898 has offset 0).

The definition of A054898 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053830, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054898.P5971935693440443971

`(n-A053830(n))/8`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054898

/-- `(n-A053830(n))/8` -/
def P5971935693440443971.Spec : Prop :=
  ∀ n, P5971935693440443971.a n = (A054898 n : ℚ)

end A054898

/-! ## A054898.P9738998728850152716

`∑[val(C(2, n)+n, 9)]`
-/

namespace A054898.P9738998728850152716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.choose 2 n + n) 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P9738998728850152716

namespace A054898

/-- `∑[val(C(2, n)+n, 9)]` -/
def P9738998728850152716.Spec : Prop :=
  ∀ n, (P9738998728850152716.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P3419176452699496604

`a(n-1)+val(n, 9)` with `a(0)=0`
-/

namespace A054898.P3419176452699496604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 9

end

end A054898.P3419176452699496604

namespace A054898

/-- `a(n-1)+val(n, 9)` -/
def P3419176452699496604.Spec : Prop :=
  ∀ n, (P3419176452699496604.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P17467965271342136440

`floor(n/9)+a(floor(n/9))` with `a(0)=0`
-/

namespace A054898.P17467965271342136440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n : ℚ) / 9⌋ + a ⌊(n : ℚ) / 9⌋.toNat

end

end A054898.P17467965271342136440

namespace A054898

/-- `floor(n/9)+a(floor(n/9))` -/
def P17467965271342136440.Spec : Prop :=
  ∀ n, P17467965271342136440.a n = A054898 n

end A054898

/-! ## A054898.P11241525102101829213

`∑[val(n+1, 9)]-val(n+1, 9)`
-/

namespace A054898.P11241525102101829213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 9 : ℤ)

end

end A054898.P11241525102101829213

namespace A054898

/-- `∑[val(n+1, 9)]-val(n+1, 9)` -/
def P11241525102101829213.Spec : Prop :=
  ∀ n, P11241525102101829213.a n = A054898 n

end A054898

/-! ## A054898.P4669351496841010876

`∑[val(A004277(n), 9)]`
-/

namespace A054898.P4669351496841010876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P4669351496841010876

namespace A054898

/-- `∑[val(A004277(n), 9)]` -/
def P4669351496841010876.Spec : Prop :=
  ∀ n, (P4669351496841010876.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P12930111864968649964

`∑[val(A008574(n), 9)]`
-/

namespace A054898.P12930111864968649964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008574 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P12930111864968649964

namespace A054898

/-- `∑[val(A008574(n), 9)]` -/
def P12930111864968649964.Spec : Prop :=
  ∀ n, (P12930111864968649964.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P13197032421021182532

`∑[val(A008706(n), 9)]`
-/

namespace A054898.P13197032421021182532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008706 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P13197032421021182532

namespace A054898

/-- `∑[val(A008706(n), 9)]` -/
def P13197032421021182532.Spec : Prop :=
  ∀ n, (P13197032421021182532.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P8276035417752779883

`∑[val(A028310(n), 9)]`
-/

namespace A054898.P8276035417752779883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P8276035417752779883

namespace A054898

/-- `∑[val(A028310(n), 9)]` -/
def P8276035417752779883.Spec : Prop :=
  ∀ n, (P8276035417752779883.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P14352775616224309289

`∑[val(A234275(n), 9)]`
-/

namespace A054898.P14352775616224309289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A234275 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P14352775616224309289

namespace A054898

/-- `∑[val(A234275(n), 9)]` -/
def P14352775616224309289.Spec : Prop :=
  ∀ n, (P14352775616224309289.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P17589488702704633709

`∑[val(A298040(n), 9)]`
-/

namespace A054898.P17589488702704633709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A298040 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P17589488702704633709

namespace A054898

/-- `∑[val(A298040(n), 9)]` -/
def P17589488702704633709.Spec : Prop :=
  ∀ n, (P17589488702704633709.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P12123154830896897482

`∑[val(A336705(n), 9)]`
-/

namespace A054898.P12123154830896897482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A336705 n).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P12123154830896897482

namespace A054898

/-- `∑[val(A336705(n), 9)]` -/
def P12123154830896897482.Spec : Prop :=
  ∀ n, (P12123154830896897482.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P18302982374964415460

`∑[val(A143097(n+1), 9)]`
-/

namespace A054898.P18302982374964415460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A143097 (n + 1)).toNat 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054898.P18302982374964415460

namespace A054898

/-- `∑[val(A143097(n+1), 9)]` -/
def P18302982374964415460.Spec : Prop :=
  ∀ n, (P18302982374964415460.a n : ℤ) = A054898 n

end A054898

/-! ## A054898.P449984246164440851

`A129760((n+1-A173529(n+1))/4+1)/2`
-/

namespace A054898.P449984246164440851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129760 (SequenceMachineLib.roundAway (((n + 1 : ℤ) - A173529 (n + 1) : ℚ) / 4 + 1)).toNat : ℚ) / 2

end

end A054898.P449984246164440851

namespace A054898

/-- `A129760((n+1-A173529(n+1))/4+1)/2` -/
def P449984246164440851.Spec : Prop :=
  ∀ n, P449984246164440851.a n = (A054898 n : ℚ)

end A054898

/-!
# A054899: a(n) = Sum_{k>0} floor(n/10^k).

The programs for A054899, the canonical program `A054899.P10770181254942084517` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054899 has offset 0).

The definition of A054899 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054899.P8190915563877692656

`(n-A007953(n))/9`
-/

namespace A054899.P8190915563877692656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A007953 n : ℚ) / 9

end

end A054899.P8190915563877692656

namespace A054899

/-- `(n-A007953(n))/9` -/
def P8190915563877692656.Spec : Prop :=
  ∀ n, P8190915563877692656.a n = (A054899 n : ℚ)

end A054899

/-! ## A054899.P12533907975135629290

`(n-∑{digits}[n, #])/9`
-/

namespace A054899.P12533907975135629290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) : ℚ) / 9

end

end A054899.P12533907975135629290

namespace A054899

/-- `(n-∑{digits}[n, #])/9` -/
def P12533907975135629290.Spec : Prop :=
  ∀ n, P12533907975135629290.a n = (A054899 n : ℚ)

end A054899

/-! ## A054899.P2122769774786953227

`a(n-1)+val(n, 10)` with `a(0)=0`
-/

namespace A054899.P2122769774786953227
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 10

end

end A054899.P2122769774786953227

namespace A054899

/-- `a(n-1)+val(n, 10)` -/
def P2122769774786953227.Spec : Prop :=
  ∀ n, (P2122769774786953227.a n : ℤ) = A054899 n

end A054899

/-! ## A054899.P4597739840655772898

`∑[val(abs(1-n)+1, 10)]`
-/

namespace A054899.P4597739840655772898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054899.P4597739840655772898

namespace A054899

/-- `∑[val(abs(1-n)+1, 10)]` -/
def P4597739840655772898.Spec : Prop :=
  ∀ n, (P4597739840655772898.a n : ℤ) = A054899 n

end A054899

/-! ## A054899.P10770181254942084517

`floor(n/10)+a(floor(n/10))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A054899

/-- `floor(n/10)+a(floor(n/10))` -/
def P10770181254942084517.Spec : Prop :=
  ∀ n, P10770181254942084517.a n = A054899 n

theorem P10770181254942084517.correct : P10770181254942084517.Spec := by
  intro n
  simp only [A054899]

end A054899

/-! ## A054899.P15122758165871882561

`∑[val(n+1, 10)]-val(n+1, 10)`
-/

namespace A054899.P15122758165871882561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 10 : ℤ)

end

end A054899.P15122758165871882561

namespace A054899

/-- `∑[val(n+1, 10)]-val(n+1, 10)` -/
def P15122758165871882561.Spec : Prop :=
  ∀ n, P15122758165871882561.a n = A054899 n

end A054899

/-! ## A054899.P11375513789650857419

`A066568(n)/9`
-/

namespace A054899.P11375513789650857419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066568 n : ℚ) / 9

end

end A054899.P11375513789650857419

namespace A054899

/-- `A066568(n)/9` -/
def P11375513789650857419.Spec : Prop :=
  ∀ n, P11375513789650857419.a n = (A054899 n : ℚ)

end A054899

/-! ## A054899.P2258895383010085230

`A065039(n)-n`
-/

namespace A054899.P2258895383010085230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 n - (n : ℤ)

end

end A054899.P2258895383010085230

namespace A054899

/-- `A065039(n)-n` -/
def P2258895383010085230.Spec : Prop :=
  ∀ n, P2258895383010085230.a n = A054899 n

end A054899

/-! ## A054899.P12661532328890201899

`∑[A122840(C(2, n)+n)]`
-/

namespace A054899.P12661532328890201899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (Nat.choose 2 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054899.P12661532328890201899

namespace A054899

/-- `∑[A122840(C(2, n)+n)]` -/
def P12661532328890201899.Spec : Prop :=
  ∀ n, P12661532328890201899.a n = A054899 n

end A054899

/-! ## A054899.P13781733742457828504

`∑[A122840(abs(1-n)+1)]`
-/

namespace A054899.P13781733742457828504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054899.P13781733742457828504

namespace A054899

/-- `∑[A122840(abs(1-n)+1)]` -/
def P13781733742457828504.Spec : Prop :=
  ∀ n, P13781733742457828504.a n = A054899 n

end A054899

/-! ## A054899.P12502345855036829365

`A065039(n)%A028310(n)`
-/

namespace A054899.P12502345855036829365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065039 n) (A028310 n)

end

end A054899.P12502345855036829365

namespace A054899

/-- `A065039(n)%A028310(n)` -/
def P12502345855036829365.Spec : Prop :=
  ∀ n, P12502345855036829365.a n = A054899 n

end A054899

/-! ## A054899.P18104936091971391296

`∑[A122840(n+1)]-A122840(n+1)`
-/

namespace A054899.P18104936091971391296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A122840 (n + 1)

end

end A054899.P18104936091971391296

namespace A054899

/-- `∑[A122840(n+1)]-A122840(n+1)` -/
def P18104936091971391296.Spec : Prop :=
  ∀ n, P18104936091971391296.a n = A054899 n

end A054899

/-! ## A054899.P11004149287500115355

`val(A189788(n), 2)`
-/

namespace A054899.P11004149287500115355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A189788 n).toNat 2

end

end A054899.P11004149287500115355

namespace A054899

/-- `val(A189788(n), 2)` -/
def P11004149287500115355.Spec : Prop :=
  ∀ n, (P11004149287500115355.a n : ℤ) = A054899 n

end A054899

/-! ## A054899.P13214557631994374255

`∑[A014029(n²)]-1`
-/

namespace A054899.P13214557631994374255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054899.P13214557631994374255

namespace A054899

/-- `∑[A014029(n²)]-1` -/
def P13214557631994374255.Spec : Prop :=
  ∀ n, P13214557631994374255.a n = A054899 n

end A054899

