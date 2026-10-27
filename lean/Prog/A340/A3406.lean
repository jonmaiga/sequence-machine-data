import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C024
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A340601: Number of integer partitions of n of even rank.

The programs for A340601, there is no canonical definition to state claims against.
-/

/-! ## A340601.P875504511197929838

`A000025(n)+2*A101707(n)`
-/

namespace A340601.P875504511197929838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000025 n + 2 * A101707 n

end

end A340601.P875504511197929838

/-! ## A340601.P16724546065678321235

`(A000041(n)+A000025(n))/2`
-/

namespace A340601.P16724546065678321235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n + A000025 n : ℚ) / 2

end

end A340601.P16724546065678321235

/-! ## A340601.P17371449228632858093

`A000041(n)-2*A101707(n)`
-/

namespace A340601.P17371449228632858093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 2 * A101707 n

end

end A340601.P17371449228632858093

/-! ## A340601.P538146039769959656

`∑[A002865(n)]-2*A101707(n)`
-/

namespace A340601.P538146039769959656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A101707 n

end

end A340601.P538146039769959656

/-! ## A340601.P11390343194775615906

`(A000025(n)+sqrt(A001255(n)))/2`
-/

namespace A340601.P11390343194775615906
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000025 n : ℝ) + Real.sqrt (A001255 n : ℝ)) / 2

end

end A340601.P11390343194775615906

/-! ## A340601.P7656722177294995709

`A340692(n)+A000025(n)`
-/

namespace A340601.P7656722177294995709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340692 n + A000025 n

end

end A340601.P7656722177294995709

/-! ## A340601.P5217857372931194954

`A000041(n)-A340692(n)`
-/

namespace A340601.P5217857372931194954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A340692 n

end

end A340601.P5217857372931194954

/-! ## A340601.P7594468119731790073

`A101709(A028310(n))+A101708(n)`
-/

namespace A340601.P7594468119731790073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101709 (A028310 n).toNat + A101708 n

end

end A340601.P7594468119731790073

/-!
# A340602: Heinz numbers of integer partitions of even rank.

The programs for A340602, there is no canonical definition to state claims against.
-/

/-! ## A340602.P1484024046217400162

`record[n*A252464(n+1)%2]+1`
-/

namespace A340602.P1484024046217400162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A252464 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A340602.P1484024046217400162

/-! ## A340602.P10532168500869057467

`eq[1, gcd(2, A252464(C(n, n²)+n))]`
-/

namespace A340602.P10532168500869057467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A252464 (Nat.choose n (n ^ 2) + n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340602.P10532168500869057467

/-! ## A340602.P16425702674787587646

`lt[A027656(A252464(n+1)), 2]+1`
-/

namespace A340602.P16425702674787587646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (A252464 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A340602.P16425702674787587646

/-! ## A340602.P17759609685806512675

`eq[2, A266722(A252464(n+1)+1)]+1`
-/

namespace A340602.P17759609685806512675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266722 (A252464 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340602.P17759609685806512675

/-! ## A340602.P10043360927746489992

`eq[A066829(n+1), A244992(n+1)]+1`
-/

namespace A340602.P10043360927746489992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340602.P10043360927746489992

/-! ## A340602.P13632230522249864053

`record[n*A056239(A325351(n+1))%2]+1`
-/

namespace A340602.P13632230522249864053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A056239 (A325351 (n + 1)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A340602.P13632230522249864053

/-! ## A340602.P16131014578356315948

`record[A133265(n)/A133265(A252464(n+1))]`
-/

namespace A340602.P16131014578356315948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 n : ℚ) / (A133265 (A252464 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340602.P16131014578356315948

/-! ## A340602.P15879343841976263067

`eq[A252464(A233583(n+1))%2, A057427(n)]`
-/

namespace A340602.P15879343841976263067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252464 (A233583 (n + 1)).toNat) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340602.P15879343841976263067

/-! ## A340602.P15172180232066043356

`record[A130747(n+2)-A019431(A252464(n+1))]`
-/

namespace A340602.P15172180232066043356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130747 (n + 2) - A019431 (A252464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340602.P15172180232066043356

/-! ## A340602.P14536708592124091386

`record[A032742(n+1)/A000034(A252464(n+1))]`
-/

namespace A340602.P14536708592124091386
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A000034 (A252464 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340602.P14536708592124091386

/-!
# A340603: Heinz numbers of integer partitions of odd rank.

The programs for A340603, there is no canonical definition to state claims against.
-/

/-! ## A340603.P17312735802795031263

`comp[A340602(n+1)-1]+1`
-/

namespace A340603.P17312735802795031263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A340603.P17312735802795031263

/-! ## A340603.P703860559432860268

`eq[2, gcd(2, A252464(n+2))]+2`
-/

namespace A340603.P703860559432860268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A252464 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A340603.P703860559432860268

/-! ## A340603.P3380747091213943887

`eq[1, abs(A257541(n+2))%2]+2`
-/

namespace A340603.P3380747091213943887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A257541 (n + 2)| 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A340603.P3380747091213943887

/-! ## A340603.P1415056114518549729

`comp[∪[A340602(n+1), A096586(n)]]`
-/

namespace A340603.P1415056114518549729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096586 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A340603.P1415056114518549729

/-! ## A340603.P8178005460266711712

`eq[1, A019430(A252464(n+1))]+1`
-/

namespace A340603.P8178005460266711712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A252464 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340603.P8178005460266711712

/-! ## A340603.P14340510741890698884

`eq[2, gcd(2, A252464(A233583(n+1)))]`
-/

namespace A340603.P14340510741890698884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A252464 (A233583 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340603.P14340510741890698884

/-! ## A340603.P13609306019021932741

`∪[A340604(n+1), A340929(n+1)]`
-/

namespace A340603.P13609306019021932741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340929 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340603.P13609306019021932741

/-! ## A340603.P13148239988487833855

`eq[A065043(n+1), A244992(n+1)]+1`
-/

namespace A340603.P13148239988487833855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340603.P13148239988487833855

/-! ## A340603.P13958580754392010782

`lt[2, A020639(abs(A257541(n+2))+2)]+2`
-/

namespace A340603.P13958580754392010782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (|A257541 (n + 2)| + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A340603.P13958580754392010782

/-! ## A340603.P11000665298157345126

`eq[1, A019430(A252464(A233583(n+1)))]`
-/

namespace A340603.P11000665298157345126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019430 (A252464 (A233583 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340603.P11000665298157345126

/-!
# A340604: Heinz numbers of integer partitions of odd positive rank.

The programs for A340604, there is no canonical definition to state claims against.
-/

/-! ## A340604.P1767667151167342095

`eq[1, A257541(round(acot(n)+n))%2]`
-/

namespace A340604.P1767667151167342095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257541 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340604.P1767667151167342095

/-! ## A340604.P2364993233788473754

`record[A331170(A340603(n+1))]`
-/

namespace A340604.P2364993233788473754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331170 (A340603 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340604.P2364993233788473754

/-! ## A340604.P9946378054313126277

`∩[A324562(n+1), A340603(n+1)]`
-/

namespace A340604.P9946378054313126277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340604.P9946378054313126277

/-! ## A340604.P9975706424492809296

`∩[A340603(n+1), A352487(n+1)]`
-/

namespace A340604.P9975706424492809296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340604.P9975706424492809296

/-! ## A340604.P12039910829213538621

`∩[A340603(n+1), A352489(n+1)]`
-/

namespace A340604.P12039910829213538621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340604.P12039910829213538621

/-!
# A340605: Heinz numbers of integer partitions of even positive rank.

The programs for A340605, there is no canonical definition to state claims against.
-/

/-! ## A340605.P11163577494431351968

`∩[eq[0, A331281(n+1)]+1, A340602(n+1)]`
-/

namespace A340605.P11163577494431351968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331281 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A340605.P11163577494431351968

/-! ## A340605.P10608225061218579096

`∩[comp[A324521(n+1)-2]+2, A340602(n+1)]`
-/

namespace A340605.P10608225061218579096
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324521 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A340605.P10608225061218579096

/-! ## A340605.P3974941334010627429

`∩[A340602(n+1), comp[n*A331282(2*(n+1))]+1]`
-/

namespace A340605.P3974941334010627429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A331282 (2 * (n + 1))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A340605.P3974941334010627429

/-! ## A340605.P4425459840210716839

`∩[A340602(n+1), A340787(n+1)]`
-/

namespace A340605.P4425459840210716839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340605.P4425459840210716839

/-! ## A340605.P3724030249370072347

`record[A032742(A340604(n+3))]`
-/

namespace A340605.P3724030249370072347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A340604 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340605.P3724030249370072347

/-!
# A340606: Numbers whose prime indices (A112798) are all divisors of the number of prime factors (A001222).

The programs for A340606, there is no canonical definition to state claims against.
-/

/-! ## A340606.P3755823202180998452

`record[and(A156792(3*n+2), A168134(n+1))]`
-/

namespace A340606.P3755823202180998452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A156792 (3 * n + 2)) (A168134 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340606.P3755823202180998452

/-! ## A340606.P17030812879651114913

`record[A062821(∑[A035994(n+1)])]`
-/

namespace A340606.P17030812879651114913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035994 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062821 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340606.P17030812879651114913

/-! ## A340606.P584735702902560738

`record[and(A122111(n+1), A370809(n+4))]`
-/

namespace A340606.P584735702902560738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A122111 (n + 1)) (A370809 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340606.P584735702902560738

/-! ## A340606.P15907957680441338376

`eq[char[A097056(n+1)], A285244(3*n)]`
-/

namespace A340606.P15907957680441338376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097056 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285244 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A340606.P15907957680441338376

/-! ## A340606.P1450469119244309890

`eq[char[A105445(n+1)], A279368(3*n)]`
-/

namespace A340606.P1450469119244309890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105445 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279368 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A340606.P1450469119244309890

/-!
# A340607: Number of factorizations of n into an odd number of factors > 1, the greatest of which is odd.

The programs for A340607, there is no canonical definition to state claims against.
-/

/-! ## A340607.P7583341932810059713

`A325403(A346703(n+1)%A167178(n))`
-/

namespace A340607.P7583341932810059713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325403 (Int.tmod (A346703 (n + 1)) (A167178 n)).toNat

end

end A340607.P7583341932810059713

/-! ## A340607.P11672740157048332383

`A325403(A346703(n+1))%A065218(n+1)`
-/

namespace A340607.P11672740157048332383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325403 (A346703 (n + 1)).toNat) (A065218 (n + 1))

end

end A340607.P11672740157048332383

/-! ## A340607.P11439904562485524204

`A001221(A138715(n+1))*A325403(A346703(n+1))`
-/

namespace A340607.P11439904562485524204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A138715 (n + 1)).toNat * A325403 (A346703 (n + 1)).toNat

end

end A340607.P11439904562485524204

/-! ## A340607.P9753647485252416388

`A014963(A268984(n+1))*A325403(A346703(n+1))`
-/

namespace A340607.P9753647485252416388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A268984 (n + 1)).toNat * A325403 (A346703 (n + 1)).toNat

end

end A340607.P9753647485252416388

/-! ## A340607.P17202290505311554167

`A346703(2*n+3)%A001227(A346703(n+1))`
-/

namespace A340607.P17202290505311554167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346703 (2 * n + 3)) (A001227 (A346703 (n + 1)).toNat)

end

end A340607.P17202290505311554167

/-!
# A340608: The number of prime factors of n (A001222) is relatively prime to the maximum prime index of n (A061395).

The programs for A340608, the canonical program `A340608.P2884054405226738747` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340608 has offset 1).

The definition of A340608 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340608.P2884054405226738747

`eq[1, A366785(n+1)]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A340608

/-- `eq[1, A366785(n+1)]+1` -/
def P2884054405226738747.Spec : Prop :=
  ∀ n, (P2884054405226738747.a n : ℤ) = A340608 (n + 1)

theorem P2884054405226738747.correct : P2884054405226738747.Spec := by
  intro n
  simp only [A340608, Nat.add_sub_cancel]

end A340608

/-! ## A340608.P11930374958149425533

`eq[1, gcd(A001222(n+1), A061395(n+1))]+1`
-/

namespace A340608.P11930374958149425533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (n + 1)) (A061395 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340608.P11930374958149425533

namespace A340608

/-- `eq[1, gcd(A001222(n+1), A061395(n+1))]+1` -/
def P11930374958149425533.Spec : Prop :=
  ∀ n, (P11930374958149425533.a n : ℤ) = A340608 (n + 1)

end A340608

/-! ## A340608.P5827155293319362673

`eq[1, A366785(A028310(n))]`
-/

namespace A340608.P5827155293319362673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366785 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340608.P5827155293319362673

namespace A340608

/-- `eq[1, A366785(A028310(n))]` -/
def P5827155293319362673.Spec : Prop :=
  ∀ n, (P5827155293319362673.a n : ℤ) = A340608 (n + 1)

end A340608

/-! ## A340608.P4543770632886738676

`lt[A360616(n+1), A360615(n+1)]+1`
-/

namespace A340608.P4543770632886738676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A340608.P4543770632886738676

namespace A340608

/-- `lt[A360616(n+1), A360615(n+1)]+1` -/
def P4543770632886738676.Spec : Prop :=
  ∀ n, (P4543770632886738676.a n : ℤ) = A340608 (n + 1)

end A340608

/-! ## A340608.P13246948566268866261

`lt[A335021(n+1), A131556(A321721(n))]`
-/

namespace A340608.P13246948566268866261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131556 (A321721 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340608.P13246948566268866261

namespace A340608

/-- `lt[A335021(n+1), A131556(A321721(n))]` -/
def P13246948566268866261.Spec : Prop :=
  ∀ n, (P13246948566268866261.a n : ℤ) = A340608 (n + 1)

end A340608

/-!
# A340609: Numbers whose number of prime factors (A001222) is divisible by their greatest prime index (A061395).

The programs for A340609, there is no canonical definition to state claims against.
-/

/-! ## A340609.P7728258720035246873

`eq[1, A360614(n+1)]+1`
-/

namespace A340609.P7728258720035246873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340609.P7728258720035246873

/-! ## A340609.P4467135319119066418

`eq[1, A360614(A028310(n))]`
-/

namespace A340609.P4467135319119066418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360614 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340609.P4467135319119066418

/-! ## A340609.P11878180349133945823

`record[A000005(A115631(n+2)-1)]`
-/

namespace A340609.P11878180349133945823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A115631 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340609.P11878180349133945823

/-! ## A340609.P7633818573904784120

`record[A000005(xor(1, A115631(n+2)))]`
-/

namespace A340609.P7633818573904784120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.xor 1 (A115631 (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340609.P7633818573904784120

/-! ## A340609.P8757411425270816800

`eq[1, A360615(A122111(n+1))]+1`
-/

namespace A340609.P8757411425270816800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A122111 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340609.P8757411425270816800

/-!
# A340610: Numbers whose number of prime factors (A001222) divides their greatest prime index (A061395).

The programs for A340610, there is no canonical definition to state claims against.
-/

/-! ## A340610.P11824500108100600581

`eq[1, A360615(n+1)]+1`
-/

namespace A340610.P11824500108100600581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340610.P11824500108100600581

/-! ## A340610.P3066248608723453784

`eq[1, A360615(A028310(n))]`
-/

namespace A340610.P3066248608723453784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340610.P3066248608723453784

/-! ## A340610.P15385095413950589702

`A020725(eq[1, A360615(n+1)])`
-/

namespace A340610.P15385095413950589702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340610.P15385095413950589702

/-! ## A340610.P12756660808072294249

`record[A061395(3*(n+1))/A360615(A061395(3*(n+1)))]`
-/

namespace A340610.P12756660808072294249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061395 (3 * (n + 1)) : ℚ) / (A360615 (A061395 (3 * (n + 1))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340610.P12756660808072294249

/-! ## A340610.P5285216433655295528

`eq[1, A318573(A068795(n+1))]+1`
-/

namespace A340610.P5285216433655295528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318573 (A068795 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340610.P5285216433655295528

/-!
# A340611: Number of integer partitions of n of length 2^k where k is the greatest part.

The programs for A340611, there is no canonical definition to state claims against.
-/

/-! ## A340611.P6101886620182194959

`∑[Δ[A000035(A048809(n+5))]^n]`
-/

namespace A340611.P6101886620182194959
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A048809 (n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340611.P6101886620182194959

/-! ## A340611.P10361808347743606826

`A259771(n+1)-A290079(A057977(n))`
-/

namespace A340611.P10361808347743606826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259771 (n + 1) - A290079 (A057977 n).toNat

end

end A340611.P10361808347743606826

/-! ## A340611.P419065309507504571

`or(A340599(2^n), A340599(n+4))`
-/

namespace A340611.P419065309507504571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A340599 (2 ^ n)) (A340599 (n + 4))

end

end A340611.P419065309507504571

/-! ## A340611.P9698478748552346026

`A340599(A000079(n))+A000007(n)`
-/

namespace A340611.P9698478748552346026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (A000079 n).toNat + A000007 n

end

end A340611.P9698478748552346026

/-! ## A340611.P4553200808669401872

`gcd(A016389(n), A340599(A000079(n)))`
-/

namespace A340611.P4553200808669401872
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016389 n) (A340599 (A000079 n).toNat)

end

end A340611.P4553200808669401872

/-!
# A340613: The number of edges on a Reuleaux triangle formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A340613, there is no canonical definition to state claims against.
-/

/-! ## A340613.P7539176817110240717

`A340639(n+1)+A340644(n+1)-1`
-/

namespace A340613.P7539176817110240717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340639 (n + 1) + (A340644 (n + 1) - 1)

end

end A340613.P7539176817110240717

/-! ## A340613.P2356233613765743853

`A340639(n+1)+A023443(A340644(n+1))`
-/

namespace A340613.P2356233613765743853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340639 (n + 1) + A023443 (A340644 (n + 1)).toNat

end

end A340613.P2356233613765743853

/-!
# A340615: a(n) = k/2 if k is even, otherwise (3k+1)/2, where k = n + floor((n+1)/5).

The programs for A340615, the canonical program `A340615.P11559517199158909742` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340615 has offset 0).

The definition of A340615 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340615.P11559517199158909742

`2*a(n-5)-a(n-10)` with `a(0)=0, a(1)=2, a(2)=1, a(3)=5, a(4)=8, a(5)=3, a(6)=11, a(7)=4, a(8)=14, a(9)=17`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340615

/-- `2*a(n-5)-a(n-10)` -/
def P11559517199158909742.Spec : Prop :=
  ∀ n, P11559517199158909742.a n = A340615 n

theorem P11559517199158909742.correct : P11559517199158909742.Spec := by
  intro n
  simp only [A340615]

end A340615

/-! ## A340615.P17353656515386890508

`A014682(comp[6*n-2])`
-/

namespace A340615.P17353656515386890508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340615.P17353656515386890508

namespace A340615

/-- `A014682(comp[6*n-2])` -/
def P17353656515386890508.Spec : Prop :=
  ∀ n, P17353656515386890508.a n = A340615 n

end A340615

/-! ## A340615.P4218666336656178466

`A014682(A047256(n+1))%(2*(n+3))`
-/

namespace A340615.P4218666336656178466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014682 (A047256 (n + 1)).toNat) (2 * (n + 3) : ℤ)

end

end A340615.P4218666336656178466

namespace A340615

/-- `A014682(A047256(n+1))%(2*(n+3))` -/
def P4218666336656178466.Spec : Prop :=
  ∀ n, P4218666336656178466.a n = A340615 n

end A340615

/-! ## A340615.P10000730254435806297

`A006368(A265734(n+1))-1`
-/

namespace A340615.P10000730254435806297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A265734 (n + 1)).toNat - 1

end

end A340615.P10000730254435806297

namespace A340615

/-- `A006368(A265734(n+1))-1` -/
def P10000730254435806297.Spec : Prop :=
  ∀ n, P10000730254435806297.a n = A340615 n

end A340615

/-! ## A340615.P1105507484774570645

`A047256(n+1)+A001057(A047256(n+1))`
-/

namespace A340615.P1105507484774570645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047256 (n + 1) + A001057 (A047256 (n + 1)).toNat

end

end A340615.P1105507484774570645

namespace A340615

/-- `A047256(n+1)+A001057(A047256(n+1))` -/
def P1105507484774570645.Spec : Prop :=
  ∀ n, P1105507484774570645.a n = A340615 n

end A340615

/-! ## A340615.P13245809358935534686

`A033999(or(1, n))+A006368(A265734(n+1))`
-/

namespace A340615.P13245809358935534686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.lor 1 n) + A006368 (A265734 (n + 1)).toNat

end

end A340615.P13245809358935534686

namespace A340615

/-- `A033999(or(1, n))+A006368(A265734(n+1))` -/
def P13245809358935534686.Spec : Prop :=
  ∀ n, P13245809358935534686.a n = A340615 n

end A340615

/-! ## A340615.P2092561450914520273

`A118830(2*n+1)+A006368(A265734(n+1))`
-/

namespace A340615.P2092561450914520273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A006368 (A265734 (n + 1)).toNat

end

end A340615.P2092561450914520273

namespace A340615

/-- `A118830(2*n+1)+A006368(A265734(n+1))` -/
def P2092561450914520273.Spec : Prop :=
  ∀ n, P2092561450914520273.a n = A340615 n

end A340615

/-! ## A340615.P4796639111692752626

`A033999(2*n+1)+A006368(A265734(n+1))`
-/

namespace A340615.P4796639111692752626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A006368 (A265734 (n + 1)).toNat

end

end A340615.P4796639111692752626

namespace A340615

/-- `A033999(2*n+1)+A006368(A265734(n+1))` -/
def P4796639111692752626.Spec : Prop :=
  ∀ n, P4796639111692752626.a n = A340615 n

end A340615

/-!
# A340618: Numbers k such that A316650(k) is prime.

The programs for A340618, there is no canonical definition to state claims against.
-/

/-! ## A340618.P10955133310198376419

`eq[A006530(A316650(n+1)), A316650(n+1)]+1`
-/

namespace A340618.P10955133310198376419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A316650 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340618.P10955133310198376419

/-! ## A340618.P14276794958083014153

`eq[1, A304465(A316650(n+1))]+1`
-/

namespace A340618.P14276794958083014153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304465 (A316650 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340618.P14276794958083014153

/-!
# A340619: n appears A006519(n) times.

The programs for A340619, the canonical program `A340619.P14811504179978696751` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340619 has offset 1).

The definition of A340619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340619.P14811504179978696751

`∑[char[∑[and(n, -n)]]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340619

/-- `∑[char[∑[and(n, -n)]]]` -/
def P14811504179978696751.Spec : Prop :=
  ∀ n, (P14811504179978696751.a n : ℤ) = A340619 (n + 1)

theorem P14811504179978696751.correct : P14811504179978696751.Spec := by
  intro n
  simp only [A340619, Nat.add_sub_cancel]

end A340619

/-! ## A340619.P5473871708975922943

`∑[char[∑[-or(n, -n)]]]`
-/

namespace A340619.P5473871708975922943
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340619.P5473871708975922943

namespace A340619

/-- `∑[char[∑[-or(n, -n)]]]` -/
def P5473871708975922943.Spec : Prop :=
  ∀ n, (P5473871708975922943.a n : ℤ) = A340619 (n + 1)

end A340619

/-! ## A340619.P15076248813627398142

`comp[∑[and(n, -n)]+n]-n`
-/

namespace A340619.P15076248813627398142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A340619.P15076248813627398142

namespace A340619

/-- `comp[∑[and(n, -n)]+n]-n` -/
def P15076248813627398142.Spec : Prop :=
  ∀ n, P15076248813627398142.a n = A340619 (n + 1)

end A340619

/-! ## A340619.P190164921466200033

`∑[char[∑[or(n, n-1)-(n-1)]]]`
-/

namespace A340619.P190164921466200033
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - 1) - ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340619.P190164921466200033

namespace A340619

/-- `∑[char[∑[or(n, n-1)-(n-1)]]]` -/
def P190164921466200033.Spec : Prop :=
  ∀ n, (P190164921466200033.a n : ℤ) = A340619 (n + 1)

end A340619

/-! ## A340619.P8317018823834938559

`∑[char[∑[n-and(n, n+1)+1]]]+1`
-/

namespace A340619.P8317018823834938559
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (n + 1) : ℤ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340619.P8317018823834938559

namespace A340619

/-- `∑[char[∑[n-and(n, n+1)+1]]]+1` -/
def P8317018823834938559.Spec : Prop :=
  ∀ n, (P8317018823834938559.a n : ℤ) = A340619 (n + 1)

end A340619

/-! ## A340619.P2952298583355976638

`∑[char[∑[A006519(n+1)]]]+1`
-/

namespace A340619.P2952298583355976638
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340619.P2952298583355976638

namespace A340619

/-- `∑[char[∑[A006519(n+1)]]]+1` -/
def P2952298583355976638.Spec : Prop :=
  ∀ n, (P2952298583355976638.a n : ℤ) = A340619 (n + 1)

end A340619

/-! ## A340619.P18001464562997621597

`eq[1, A159689(n)]-n`
-/

namespace A340619.P18001464562997621597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A340619.P18001464562997621597

namespace A340619

/-- `eq[1, A159689(n)]-n` -/
def P18001464562997621597.Spec : Prop :=
  ∀ n, P18001464562997621597.a n = A340619 (n + 1)

end A340619

/-! ## A340619.P3114726358901743996

`∑[p?[3-A081603(n)]-2]`
-/

namespace A340619.P3114726358901743996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A081603 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340619.P3114726358901743996

namespace A340619

/-- `∑[p?[3-A081603(n)]-2]` -/
def P3114726358901743996.Spec : Prop :=
  ∀ n, P3114726358901743996.a n = A340619 (n + 1)

end A340619

/-! ## A340619.P6677306585527447693

`A061392(A023692(n+1))`
-/

namespace A340619.P6677306585527447693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (A023692 (n + 1)).toNat

end

end A340619.P6677306585527447693

namespace A340619

/-- `A061392(A023692(n+1))` -/
def P6677306585527447693.Spec : Prop :=
  ∀ n, P6677306585527447693.a n = A340619 (n + 1)

end A340619

/-! ## A340619.P12649204157026863317

`A340488(eq[A340488(n+1), A340500(n+2)]+1)+1`
-/

namespace A340619.P12649204157026863317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340500 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340488 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1) + 1

end

end A340619.P12649204157026863317

namespace A340619

/-- `A340488(eq[A340488(n+1), A340500(n+2)]+1)+1` -/
def P12649204157026863317.Spec : Prop :=
  ∀ n, P12649204157026863317.a n = A340619 (n + 1)

end A340619

/-!
# A340621: The number of partitions of n without repeated odd parts having more odd parts than even parts.

The programs for A340621, there is no canonical definition to state claims against.
-/

/-! ## A340621.P4890900318801322098

`A006950(n)-(A340623(n)+A340622(n))`
-/

namespace A340621.P4890900318801322098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - (A340623 n + A340622 n)

end

end A340621.P4890900318801322098

/-! ## A340621.P2609442787816222643

`abs(A106507(n))-(A340623(n)+A340622(n))`
-/

namespace A340621.P2609442787816222643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A106507 n| - (A340623 n + A340622 n)

end

end A340621.P2609442787816222643

/-! ## A340621.P48164901514416273

`gcd(A340647(n)-A340622(n), A337104(n+3))`
-/

namespace A340621.P48164901514416273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A340647 n - A340622 n) (A337104 (n + 3))

end

end A340621.P48164901514416273

/-! ## A340621.P946817023164795996

`A000007(A132253(n+1))+A340647(n)-A340622(n)`
-/

namespace A340621.P946817023164795996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A132253 (n + 1)).toNat + (A340647 n - A340622 n)

end

end A340621.P946817023164795996

/-! ## A340621.P8413469984223615624

`A272624(A000124(n))+A340647(n)-A340622(n)`
-/

namespace A340621.P8413469984223615624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272624 (A000124 n).toNat + (A340647 n - A340622 n)

end

end A340621.P8413469984223615624

/-! ## A340621.P15183617225597923463

`(A340647(n)-A340622(n))%A000203(A333007(n+1))`
-/

namespace A340621.P15183617225597923463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340647 n - A340622 n) (A000203 (A333007 (n + 1)).toNat)

end

end A340621.P15183617225597923463

/-!
# A340622: The number of partitions of n without repeated odd parts having an equal number of odd parts and even parts.

The programs for A340622, there is no canonical definition to state claims against.
-/

/-! ## A340622.P6111065415231430836

`A006950(n)-(A340623(n)+A340621(n))`
-/

namespace A340622.P6111065415231430836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - (A340623 n + A340621 n)

end

end A340622.P6111065415231430836

/-! ## A340622.P85372011223814186

`A340647(n)-A340621(n)-A114314(n)%2`
-/

namespace A340622.P85372011223814186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340647 n - A340621 n - Int.tmod (A114314 n) 2

end

end A340622.P85372011223814186

/-! ## A340622.P1704313312200936499

`A033999(A114314(n))*A340647(n)-A340621(n)`
-/

namespace A340622.P1704313312200936499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A114314 n).toNat * A340647 n - A340621 n

end

end A340622.P1704313312200936499

/-! ## A340622.P2470309235483730566

`(A340647(n)-A340621(n))%A206042(A042954(n))`
-/

namespace A340622.P2470309235483730566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340647 n - A340621 n) (A206042 (A042954 n).toNat)

end

end A340622.P2470309235483730566

/-! ## A340622.P13795655334204955021

`(A340647(n)-A340621(n))*A040001(A114314(n)+1)`
-/

namespace A340622.P13795655334204955021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A340647 n - A340621 n) * A040001 (A114314 n + 1).toNat

end

end A340622.P13795655334204955021

/-! ## A340622.P17860646101587125743

`A110654(2*(A340647(n)-A340621(n)))`
-/

namespace A340622.P17860646101587125743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * (A340647 n - A340621 n)).toNat

end

end A340622.P17860646101587125743

/-!
# A340623: The number of partitions of n without repeated odd parts having more even parts than odd parts.

The programs for A340623, there is no canonical definition to state claims against.
-/

/-! ## A340623.P45582690034976724

`A006950(n)-(A340622(n)+A340621(n))`
-/

namespace A340623.P45582690034976724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - (A340622 n + A340621 n)

end

end A340623.P45582690034976724

/-! ## A340623.P12750120740423385132

`(A006950(n)-A340647(n))%p?[A056107(n)]`
-/

namespace A340623.P12750120740423385132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006950 n - A340647 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A340623.P12750120740423385132

/-! ## A340623.P5937111941733503067

`A010051(A034377(n+1))+A006950(n)-A340647(n)`
-/

namespace A340623.P5937111941733503067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034377 (n + 1)).toNat + (A006950 n - A340647 n)

end

end A340623.P5937111941733503067

/-! ## A340623.P5273692419350054025

`(A006950(n)-A340647(n))^A281589(A008835(n+1))`
-/

namespace A340623.P5273692419350054025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006950 n - A340647 n : ℚ) ^ (A281589 (A008835 (n + 1)).toNat : ℤ)

end

end A340623.P5273692419350054025

/-! ## A340623.P2773641110815183086

`A006950(n)-A304795(A181841(n+1))*A340647(n)`
-/

namespace A340623.P2773641110815183086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A304795 (A181841 (n + 1)).toNat * A340647 n

end

end A340623.P2773641110815183086

/-! ## A340623.P6557289272157011018

`A006950(n)-A119788(A000040(n+1))*A340647(n)`
-/

namespace A340623.P6557289272157011018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006950 n - A119788 (A000040 (n + 1)).toNat * A340647 n

end

end A340623.P6557289272157011018

/-! ## A340623.P14498081979469727825

`(A006950(n)-A340647(n))*A035263(A049454(n))`
-/

namespace A340623.P14498081979469727825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006950 n - A340647 n) * A035263 (A049454 n).toNat

end

end A340623.P14498081979469727825

/-!
# A340624: Numbers k such that A340388(k) > A018782(k).

The programs for A340624, there is no canonical definition to state claims against.
-/

/-! ## A340624.P11972622533691100921

`record[A089003(A060968(n+4))]`
-/

namespace A340624.P11972622533691100921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089003 (A060968 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340624.P11972622533691100921

/-! ## A340624.P3943636369176347152

`record[A060968(A060968(A334468(n+1)))]`
-/

namespace A340624.P3943636369176347152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (A060968 (A334468 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340624.P3943636369176347152

/-! ## A340624.P7227668799761074379

`record[A060968(A060968(A272475(n+1)))]`
-/

namespace A340624.P7227668799761074379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060968 (A060968 (A272475 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340624.P7227668799761074379

/-! ## A340624.P3610620103001782086

`∩[2*A318782(n+1), A048170(n+1)]`
-/

namespace A340624.P3610620103001782086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A318782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340624.P3610620103001782086

/-! ## A340624.P13131931419298695605

`∩[A048170(n+1), A318782(n+1)]`
-/

namespace A340624.P13131931419298695605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340624.P13131931419298695605

/-!
# A340625: a(n) = Sum_{d|n, d odd, d <= n/d} binomial(n/d, d).

The programs for A340625, the canonical program `A340625.P16415255426781792317` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340625 has offset 1).

The definition of A340625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340625.P16415255426781792317

`∑{d}[A000265(n+1), C((n+1)/#, #)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340625

/-- `∑{d}[A000265(n+1), C((n+1)/#, #)]` -/
def P16415255426781792317.Spec : Prop :=
  ∀ n, (P16415255426781792317.a n : ℤ) = A340625 (n + 1)

theorem P16415255426781792317.correct : P16415255426781792317.Spec := by
  intro n
  simp only [A340625, Nat.add_sub_cancel]

end A340625

/-!
# A340626: a(n) = Sum_{d|n, d odd} binomial(d+n/d-1, d).

The programs for A340626, the canonical program `A340626.P21446357728779137` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340626 has offset 1).

The definition of A340626 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A081543, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340626.P21446357728779137

`(A081543(n+1)+A338682(n+1))/2`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340626

/-- `(A081543(n+1)+A338682(n+1))/2` -/
def P21446357728779137.Spec : Prop :=
  ∀ n, P21446357728779137.a n = (A340626 (n + 1) : ℚ)

end A340626

/-! ## A340626.P7323475731072398401

`A014682(A338682(n+1)+A081543(n+1))`
-/

namespace A340626.P7323475731072398401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A338682 (n + 1) + A081543 (n + 1)).toNat

end

end A340626.P7323475731072398401

namespace A340626

/-- `A014682(A338682(n+1)+A081543(n+1))` -/
def P7323475731072398401.Spec : Prop :=
  ∀ n, P7323475731072398401.a n = A340626 (n + 1)

end A340626

/-! ## A340626.P16548634571071314332

`A038572(A338682(n+1)+A081543(n+1))`
-/

namespace A340626.P16548634571071314332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A338682 (n + 1) + A081543 (n + 1)).toNat

end

end A340626.P16548634571071314332

namespace A340626

/-- `A038572(A338682(n+1)+A081543(n+1))` -/
def P16548634571071314332.Spec : Prop :=
  ∀ n, P16548634571071314332.a n = A340626 (n + 1)

end A340626

/-! ## A340626.P5734990646865556805

`A175126(A338682(n+1)+A081543(n+1))`
-/

namespace A340626.P5734990646865556805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A338682 (n + 1) + A081543 (n + 1)).toNat

end

end A340626.P5734990646865556805

namespace A340626

/-- `A175126(A338682(n+1)+A081543(n+1))` -/
def P5734990646865556805.Spec : Prop :=
  ∀ n, P5734990646865556805.a n = A340626 (n + 1)

end A340626

/-! ## A340626.P9665683228826473919

`A001281(A338682(n+1)+A081543(n+1))`
-/

namespace A340626.P9665683228826473919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A338682 (n + 1) + A081543 (n + 1)).toNat

end

end A340626.P9665683228826473919

namespace A340626

/-- `A001281(A338682(n+1)+A081543(n+1))` -/
def P9665683228826473919.Spec : Prop :=
  ∀ n, P9665683228826473919.a n = A340626 (n + 1)

end A340626

/-! ## A340626.P799780837225741613

`A004525(A338682(n+1)+A081543(n+1))`
-/

namespace A340626.P799780837225741613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A338682 (n + 1) + A081543 (n + 1)).toNat

end

end A340626.P799780837225741613

namespace A340626

/-- `A004525(A338682(n+1)+A081543(n+1))` -/
def P799780837225741613.Spec : Prop :=
  ∀ n, P799780837225741613.a n = A340626 (n + 1)

end A340626

/-! ## A340626.P9507029170956070221

`A004526(A338682(n+1)+A081543(n+1))`
-/

namespace A340626.P9507029170956070221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A338682 (n + 1) + A081543 (n + 1)).toNat

end

end A340626.P9507029170956070221

namespace A340626

/-- `A004526(A338682(n+1)+A081543(n+1))` -/
def P9507029170956070221.Spec : Prop :=
  ∀ n, P9507029170956070221.a n = A340626 (n + 1)

end A340626

/-! ## A340626.P7466646330093430650

`A029578(A338682(n+1)+A081543(n+1))`
-/

namespace A340626.P7466646330093430650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A338682 (n + 1) + A081543 (n + 1)).toNat

end

end A340626.P7466646330093430650

namespace A340626

/-- `A029578(A338682(n+1)+A081543(n+1))` -/
def P7466646330093430650.Spec : Prop :=
  ∀ n, P7466646330093430650.a n = A340626 (n + 1)

end A340626

/-! ## A340626.P12237120177418389646

`A032742(A338682(n+1)+A081543(n+1))`
-/

namespace A340626.P12237120177418389646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A338682 (n + 1) + A081543 (n + 1)).toNat

end

end A340626.P12237120177418389646

namespace A340626

/-- `A032742(A338682(n+1)+A081543(n+1))` -/
def P12237120177418389646.Spec : Prop :=
  ∀ n, P12237120177418389646.a n = A340626 (n + 1)

end A340626

/-!
# A340627: a(n) = (11*2^n - 2*(-1)^n)/3 for n >= 0.

The programs for A340627, the canonical program `A340627.P14412352208586043736` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340627 has offset 0).

The definition of A340627 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340627.P14412352208586043736

`2^(n+2)-A078008(n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340627

/-- `2^(n+2)-A078008(n)` -/
def P14412352208586043736.Spec : Prop :=
  ∀ n, P14412352208586043736.a n = A340627 n

theorem P14412352208586043736.correct : P14412352208586043736.Spec := by
  intro n
  simp only [A340627]

end A340627

/-! ## A340627.P10853800125326319315

`(11*2^n-2*(-1)^n)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340627.P10853800125326319315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((11 * 2 ^ n : ℤ) - 2 * (-1) ^ n : ℚ) / 3

end

end A340627.P10853800125326319315

namespace A340627

/-- `(11*2^n-2*(-1)^n)/3` -/
def P10853800125326319315.Spec : Prop :=
  ∀ n, P10853800125326319315.a n = (A340627 n : ℚ)

end A340627

/-! ## A340627.P11622293052163238548

`ogf((3+5x)/(1-x-2x^2))`
-/

namespace A340627.P11622293052163238548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 5] [1, -1, -2] n

end

end A340627.P11622293052163238548

namespace A340627

/-- `ogf((3+5x)/(1-x-2x^2))` -/
def P11622293052163238548.Spec : Prop :=
  ∀ n, P11622293052163238548.a n = A340627 n

end A340627

/-! ## A340627.P7408615428594599086

`2*(a(n-1)-(-1)^n)` with `a(0)=3`
-/

namespace A340627.P7408615428594599086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (a (n - 1) - (-1) ^ n)

end

end A340627.P7408615428594599086

namespace A340627

/-- `2*(a(n-1)-(-1)^n)` -/
def P7408615428594599086.Spec : Prop :=
  ∀ n, P7408615428594599086.a n = A340627 n

end A340627

/-! ## A340627.P10285479966225147300

`a(n-1)+2*a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A340627.P10285479966225147300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) + 2 * a (n - 2)

end

end A340627.P10285479966225147300

namespace A340627

/-- `a(n-1)+2*a(n-2)` -/
def P10285479966225147300.Spec : Prop :=
  ∀ n, (P10285479966225147300.a n : ℤ) = A340627 n

end A340627

/-! ## A340627.P7293261337422809894

`a(n-1)+a(n-2)+a(n-2)` with `a(0)=3, a(1)=8`
-/

namespace A340627.P7293261337422809894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 2))

end

end A340627.P7293261337422809894

namespace A340627

/-- `a(n-1)+a(n-2)+a(n-2)` -/
def P7293261337422809894.Spec : Prop :=
  ∀ n, (P7293261337422809894.a n : ℤ) = A340627 n

end A340627

/-! ## A340627.P1220619945386195358

`a(n-1)-(2/(-1)^n-a(n-1))` with `a(0)=3`
-/

namespace A340627.P1220619945386195358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - (2 / ((-1) ^ n : ℚ) - a (n - 1))

end

end A340627.P1220619945386195358

namespace A340627

/-- `a(n-1)-(2/(-1)^n-a(n-1))` -/
def P1220619945386195358.Spec : Prop :=
  ∀ n, P1220619945386195358.a n = (A340627 n : ℚ)

end A340627

/-! ## A340627.P6874845215383850760

`3*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=3, a(1)=8`
-/

namespace A340627.P6874845215383850760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  3 * a (n - 2) - (a (n - 2) - a (n - 1))

end

end A340627.P6874845215383850760

namespace A340627

/-- `3*a(n-2)-(a(n-2)-a(n-1))` -/
def P6874845215383850760.Spec : Prop :=
  ∀ n, P6874845215383850760.a n = A340627 n

end A340627

/-! ## A340627.P14977743233553119523

`A014113(n+2)+2^n`
-/

namespace A340627.P14977743233553119523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014113 (n + 2) + (2 ^ n : ℤ)

end

end A340627.P14977743233553119523

namespace A340627

/-- `A014113(n+2)+2^n` -/
def P14977743233553119523.Spec : Prop :=
  ∀ n, P14977743233553119523.a n = A340627 n

end A340627

/-! ## A340627.P6024286102468623529

`A078008(n+3)+2^n`
-/

namespace A340627.P6024286102468623529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (n + 3) + (2 ^ n : ℤ)

end

end A340627.P6024286102468623529

namespace A340627

/-- `A078008(n+3)+2^n` -/
def P6024286102468623529.Spec : Prop :=
  ∀ n, P6024286102468623529.a n = A340627 n

end A340627

/-! ## A340627.P18211369776202904134

`A052997(n+1)+and(1, n)`
-/

namespace A340627.P18211369776202904134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 (n + 1) + (Nat.land 1 n : ℤ)

end

end A340627.P18211369776202904134

namespace A340627

/-- `A052997(n+1)+and(1, n)` -/
def P18211369776202904134.Spec : Prop :=
  ∀ n, P18211369776202904134.a n = A340627 n

end A340627

/-! ## A340627.P8095061038739804697

`A084214(n+1)+2^(n+1)`
-/

namespace A340627.P8095061038739804697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 (n + 1) + (2 ^ (n + 1) : ℤ)

end

end A340627.P8095061038739804697

namespace A340627

/-- `A084214(n+1)+2^(n+1)` -/
def P8095061038739804697.Spec : Prop :=
  ∀ n, P8095061038739804697.a n = A340627 n

end A340627

/-! ## A340627.P3192138342992090943

`A083582(n)+A014551(n)`
-/

namespace A340627.P3192138342992090943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083582 n + A014551 n

end

end A340627.P3192138342992090943

namespace A340627

/-- `A083582(n)+A014551(n)` -/
def P3192138342992090943.Spec : Prop :=
  ∀ n, P3192138342992090943.a n = A340627 n

end A340627

/-! ## A340627.P11735779170317958441

`A280345(n)+A000975(n)`
-/

namespace A340627.P11735779170317958441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280345 n + A000975 n

end

end A340627.P11735779170317958441

namespace A340627

/-- `A280345(n)+A000975(n)` -/
def P11735779170317958441.Spec : Prop :=
  ∀ n, P11735779170317958441.a n = A340627 n

end A340627

/-! ## A340627.P15624771831429038499

`A283642(n)+A062092(n)`
-/

namespace A340627.P15624771831429038499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + A062092 n

end

end A340627.P15624771831429038499

namespace A340627

/-- `A283642(n)+A062092(n)` -/
def P15624771831429038499.Spec : Prop :=
  ∀ n, P15624771831429038499.a n = A340627 n

end A340627

/-! ## A340627.P13984807696060878143

`A277955(n)+A153893(n)`
-/

namespace A340627.P13984807696060878143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 n + A153893 n

end

end A340627.P13984807696060878143

namespace A340627

/-- `A277955(n)+A153893(n)` -/
def P13984807696060878143.Spec : Prop :=
  ∀ n, P13984807696060878143.a n = A340627 n

end A340627

/-! ## A340627.P4581379874722871471

`A383953(n)-A033999(n)`
-/

namespace A340627.P4581379874722871471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383953 n - A033999 n

end

end A340627.P4581379874722871471

namespace A340627

/-- `A383953(n)-A033999(n)` -/
def P4581379874722871471.Spec : Prop :=
  ∀ n, P4581379874722871471.a n = A340627 n

end A340627

/-! ## A340627.P7412224623380161912

`A048573(n+1)+A001045(n)`
-/

namespace A340627.P7412224623380161912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048573 (n + 1) + A001045 n

end

end A340627.P7412224623380161912

namespace A340627

/-- `A048573(n+1)+A001045(n)` -/
def P7412224623380161912.Spec : Prop :=
  ∀ n, P7412224623380161912.a n = A340627 n

end A340627

/-! ## A340627.P15427322776914784846

`A052997(n+1)+A000035(n)`
-/

namespace A340627.P15427322776914784846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052997 (n + 1) + A000035 n

end

end A340627.P15427322776914784846

namespace A340627

/-- `A052997(n+1)+A000035(n)` -/
def P15427322776914784846.Spec : Prop :=
  ∀ n, P15427322776914784846.a n = A340627 n

end A340627

/-! ## A340627.P2083571716772719338

`A042950(n+1)+A014113(n)`
-/

namespace A340627.P2083571716772719338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 1) + A014113 n

end

end A340627.P2083571716772719338

namespace A340627

/-- `A042950(n+1)+A014113(n)` -/
def P2083571716772719338.Spec : Prop :=
  ∀ n, P2083571716772719338.a n = A340627 n

end A340627

/-!
# A340630: Fill an n X n square with nonnegative integers so that all n^2 von Neumann neighborhoods have distinct sums; a(n) is smallest possible sum of the entries.

The programs for A340630, there is no canonical definition to state claims against.
-/

/-! ## A340630.P10520862089118584353

`A002024(A004310(n+4))-A127899(n+1)`
-/

namespace A340630.P10520862089118584353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A004310 (n + 4)).toNat - A127899 (n + 1)

end

end A340630.P10520862089118584353

/-!
# A340631: a(n) is the minimum number of pebbles such that any assignment of those pebbles on a complete graph with n vertices is a next-player winning game in the two-player impartial pebbling game.

The programs for A340631, the canonical program `A340631.P359807546759734143` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340631 has offset 3).

The definition of A340631 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340631.P359807546759734143

`a(n-2)+2` with `a(0)=7, a(1)=23, a(2)=7, a(3)=13`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340631

/-- `a(n-2)+2` -/
def P359807546759734143.Spec : Prop :=
  ∀ n, (P359807546759734143.a n : ℤ) = A340631 (n + 3)

theorem P359807546759734143.correct : P359807546759734143.Spec := by
  intro n
  simp only [A340631, Nat.add_sub_cancel]

end A340631

/-!
# A340632: a(n) in binary is a run of 1-bits from the most significant 1-bit of n down to the least significant 1-bit of n, inclusive.

The programs for A340632, the canonical program `A340632.P7486341260096181790` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340632 has offset 0).

The definition of A340632 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340632.P7486341260096181790

`or(n, A122155(n))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A340632

/-- `or(n, A122155(n))` -/
def P7486341260096181790.Spec : Prop :=
  ∀ n, P7486341260096181790.a n = A340632 n

theorem P7486341260096181790.correct : P7486341260096181790.Spec := by
  intro n
  simp only [A340632]

end A340632

/-! ## A340632.P13668949573433360732

`or(n, A283165(n))`
-/

namespace A340632.P13668949573433360732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A283165 n)

end

end A340632.P13668949573433360732

namespace A340632

/-- `or(n, A283165(n))` -/
def P13668949573433360732.Spec : Prop :=
  ∀ n, P13668949573433360732.a n = A340632 n

end A340632

/-! ## A340632.P3904829555241039899

`or(n-1, A035327(n))+1`
-/

namespace A340632.P3904829555241039899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) (A035327 n) + 1

end

end A340632.P3904829555241039899

namespace A340632

/-- `or(n-1, A035327(n))+1` -/
def P3904829555241039899.Spec : Prop :=
  ∀ n, P3904829555241039899.a n = A340632 n

end A340632

/-! ## A340632.P4654456344830099545

`A122155(and(n, A122155(n)))`
-/

namespace A340632.P4654456344830099545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122155 (Int.land (n : ℤ) (A122155 n)).toNat

end

end A340632.P4654456344830099545

namespace A340632

/-- `A122155(and(n, A122155(n)))` -/
def P4654456344830099545.Spec : Prop :=
  ∀ n, P4654456344830099545.a n = A340632 n

end A340632

/-! ## A340632.P5420173075477830642

`A129760(A035327(n)+1)+n`
-/

namespace A340632.P5420173075477830642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A035327 n + 1).toNat + (n : ℤ)

end

end A340632.P5420173075477830642

namespace A340632

/-- `A129760(A035327(n)+1)+n` -/
def P5420173075477830642.Spec : Prop :=
  ∀ n, P5420173075477830642.a n = A340632 n

end A340632

/-! ## A340632.P16305743489474378800

`A062383(n)-gcd(n, A062383(n))`
-/

namespace A340632.P16305743489474378800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 n - (Int.gcd (n : ℤ) (A062383 n) : ℤ)

end

end A340632.P16305743489474378800

namespace A340632

/-- `A062383(n)-gcd(n, A062383(n))` -/
def P16305743489474378800.Spec : Prop :=
  ∀ n, P16305743489474378800.a n = A340632 n

end A340632

/-! ## A340632.P2581097296732587441

`or(n, A334076(n)+A006257(n))`
-/

namespace A340632.P2581097296732587441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A334076 n + A006257 n)

end

end A340632.P2581097296732587441

namespace A340632

/-- `or(n, A334076(n)+A006257(n))` -/
def P2581097296732587441.Spec : Prop :=
  ∀ n, P2581097296732587441.a n = A340632 n

end A340632

/-! ## A340632.P14190066205410002350

`or(n, xor(n, A038554(n))-A038554(n))`
-/

namespace A340632.P14190066205410002350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (Int.xor (n : ℤ) (A038554 n) - A038554 n)

end

end A340632.P14190066205410002350

namespace A340632

/-- `or(n, xor(n, A038554(n))-A038554(n))` -/
def P14190066205410002350.Spec : Prop :=
  ∀ n, P14190066205410002350.a n = A340632 n

end A340632

/-! ## A340632.P11551773182005170859

`or(n, (1-A006257(n)+n)*A057427(n))`
-/

namespace A340632.P11551773182005170859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((1 - A006257 n + (n : ℤ)) * A057427 n)

end

end A340632.P11551773182005170859

namespace A340632

/-- `or(n, (1-A006257(n)+n)*A057427(n))` -/
def P11551773182005170859.Spec : Prop :=
  ∀ n, P11551773182005170859.a n = A340632 n

end A340632

/-! ## A340632.P7923369062817288409

`A003817(n)-A135481(A003817(n)-n)`
-/

namespace A340632.P7923369062817288409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A135481 (A003817 n - (n : ℤ)).toNat

end

end A340632.P7923369062817288409

namespace A340632

/-- `A003817(n)-A135481(A003817(n)-n)` -/
def P7923369062817288409.Spec : Prop :=
  ∀ n, P7923369062817288409.a n = A340632 n

end A340632

/-! ## A340632.P10447373035726200366

`or(n, n-A087734(2*n))`
-/

namespace A340632.P10447373035726200366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A087734 (2 * n))

end

end A340632.P10447373035726200366

namespace A340632

/-- `or(n, n-A087734(2*n))` -/
def P10447373035726200366.Spec : Prop :=
  ∀ n, P10447373035726200366.a n = A340632 n

end A340632

/-! ## A340632.P2438562659764129855

`A035327(n)+n-A035327(A342410(n))`
-/

namespace A340632.P2438562659764129855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 n + ((n : ℤ) - A035327 (A342410 n).toNat)

end

end A340632.P2438562659764129855

namespace A340632

/-- `A035327(n)+n-A035327(A342410(n))` -/
def P2438562659764129855.Spec : Prop :=
  ∀ n, P2438562659764129855.a n = A340632 n

end A340632

/-! ## A340632.P1839913773619591932

`A086099(A053644(n)+A035327(n))+A053644(n)`
-/

namespace A340632.P1839913773619591932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (A053644 n + A035327 n).toNat + A053644 n

end

end A340632.P1839913773619591932

namespace A340632

/-- `A086099(A053644(n)+A035327(n))+A053644(n)` -/
def P1839913773619591932.Spec : Prop :=
  ∀ n, P1839913773619591932.a n = A340632 n

end A340632

/-! ## A340632.P8727680950779533793

`or(n, A053644(A005187(n))-n)`
-/

namespace A340632.P8727680950779533793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A053644 (A005187 n).toNat - (n : ℤ))

end

end A340632.P8727680950779533793

namespace A340632

/-- `or(n, A053644(A005187(n))-n)` -/
def P8727680950779533793.Spec : Prop :=
  ∀ n, P8727680950779533793.a n = A340632 n

end A340632

/-! ## A340632.P10244842881988375996

`or(n, A053644(2*n)-n)`
-/

namespace A340632.P10244842881988375996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A053644 (2 * n) - (n : ℤ))

end

end A340632.P10244842881988375996

namespace A340632

/-- `or(n, A053644(2*n)-n)` -/
def P10244842881988375996.Spec : Prop :=
  ∀ n, P10244842881988375996.a n = A340632 n

end A340632

/-! ## A340632.P12707831979336808394

`or(n, A342126(2*n)-n)`
-/

namespace A340632.P12707831979336808394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A342126 (2 * n) - (n : ℤ))

end

end A340632.P12707831979336808394

namespace A340632

/-- `or(n, A342126(2*n)-n)` -/
def P12707831979336808394.Spec : Prop :=
  ∀ n, P12707831979336808394.a n = A340632 n

end A340632

/-! ## A340632.P14773332876847964197

`A086099(or(n, a(n-1))+n)` with `a(0)=0`
-/

namespace A340632.P14773332876847964197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A086099 (Int.lor (n : ℤ) (a (n - 1)) + (n : ℤ)).toNat

end

end A340632.P14773332876847964197

namespace A340632

/-- `A086099(or(n, a(n-1))+n)` -/
def P14773332876847964197.Spec : Prop :=
  ∀ n, P14773332876847964197.a n = A340632 n

end A340632

/-! ## A340632.P15747662606940292318

`A086099(∑[n*char[2^n]]+n)`
-/

namespace A340632.P15747662606940292318
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086099 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A340632.P15747662606940292318

namespace A340632

/-- `A086099(∑[n*char[2^n]]+n)` -/
def P15747662606940292318.Spec : Prop :=
  ∀ n, P15747662606940292318.a n = A340632 n

end A340632

/-! ## A340632.P3647517185457688719

`A129760(A038572(2*n+1))-n`
-/

namespace A340632.P3647517185457688719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129760 (A038572 (2 * n + 1)).toNat - (n : ℤ)

end

end A340632.P3647517185457688719

namespace A340632

/-- `A129760(A038572(2*n+1))-n` -/
def P3647517185457688719.Spec : Prop :=
  ∀ n, P3647517185457688719.a n = A340632 n

end A340632

/-! ## A340632.P2203572543916552741

`A142151(A265716(n))-A003817(n)`
-/

namespace A340632.P2203572543916552741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142151 (A265716 n).toNat - A003817 n

end

end A340632.P2203572543916552741

namespace A340632

/-- `A142151(A265716(n))-A003817(n)` -/
def P2203572543916552741.Spec : Prop :=
  ∀ n, P2203572543916552741.a n = A340632 n

end A340632

/-!
# A340633: Primes of the form k + A037276(k).

The programs for A340633, there is no canonical definition to state claims against.
-/

/-! ## A340633.P16446151231467100901

`p?[A106550(n+1)%A106575(3*n+1)]`
-/

namespace A340633.P16446151231467100901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106550 (n + 1)) (A106575 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340633.P16446151231467100901

/-! ## A340633.P13570183599584999742

`p?[A106550(n+1)%A137628(n+1)]`
-/

namespace A340633.P13570183599584999742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106550 (n + 1)) (A137628 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340633.P13570183599584999742

/-!
# A340634: Numbers k such that k + A037276(k) is prime.

The programs for A340634, there is no canonical definition to state claims against.
-/

/-! ## A340634.P13398362861885316544

`lt[A294904(A037276(n+1)+n+1), 1]+1`
-/

namespace A340634.P13398362861885316544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294904 (A037276 (n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A340634.P13398362861885316544

/-! ## A340634.P13447686637759116169

`record[lcm(A175632(n+1), A359790(n+1))]`
-/

namespace A340634.P13447686637759116169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A175632 (n + 1)) (A359790 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340634.P13447686637759116169

/-! ## A340634.P8722274316448052844

`A324848(A091980(2*n+3))+A072978(n+1)`
-/

namespace A340634.P8722274316448052844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324848 (A091980 (2 * n + 3)).toNat + A072978 (n + 1)

end

end A340634.P8722274316448052844

/-!
# A340635: Number of free deltoidal hexecontahedron polykites with n faces.

The programs for A340635, there is no canonical definition to state claims against.
-/

/-! ## A340635.P8322266093041323221

`3*a(n-1)-A094917(a(n-1))` with `a(0)=1`
-/

namespace A340635.P8322266093041323221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A094917 (a (n - 1)).toNat

end

end A340635.P8322266093041323221

/-! ## A340635.P1496035731198369034

`3*a(n-1)-A256795(a(n-1))` with `a(0)=1`
-/

namespace A340635.P1496035731198369034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A256795 (a (n - 1)).toNat

end

end A340635.P1496035731198369034

/-!
# A340637: Integers whose number of divisors that are Niven numbers sets a new record.

The programs for A340637, there is no canonical definition to state claims against.
-/

/-! ## A340637.P17314337650800777685

`A333456(record[A332268(n+1)])`
-/

namespace A340637.P17314337650800777685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332268 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340637.P17314337650800777685

/-! ## A340637.P6358830846306723681

`record[A106608(A236021(n+1))]`
-/

namespace A340637.P6358830846306723681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A236021 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340637.P6358830846306723681

/-! ## A340637.P13940507543575875703

`record[A106608(record[A236020(n+1)])]`
-/

namespace A340637.P13940507543575875703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236020 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340637.P13940507543575875703

/-! ## A340637.P15559492889267265144

`filter[A236021(n+1), A109720(#)]`
-/

namespace A340637.P15559492889267265144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A109720 (f1 j).toNat = 1) n)

end

end A340637.P15559492889267265144

/-! ## A340637.P17211032550210422206

`∩[A068090(n+1), A094348(n+1)]`
-/

namespace A340637.P17211032550210422206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340637.P17211032550210422206

/-!
# A340638: Integers whose number of divisors that are Zuckerman numbers sets a new record.

The programs for A340638, there is no canonical definition to state claims against.
-/

/-! ## A340638.P5949119640511835661

`A335038(record[A335037(n+1)])`
-/

namespace A340638.P5949119640511835661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340638.P5949119640511835661

/-! ## A340638.P14422674643596199003

`record[A253139(A317848(n+1))]`
-/

namespace A340638.P14422674643596199003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (A317848 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340638.P14422674643596199003

/-! ## A340638.P9345582882148154627

`record[A046523(A346101(2*n))]`
-/

namespace A340638.P9345582882148154627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A346101 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340638.P9345582882148154627

/-! ## A340638.P13960893424699937762

`record[A278224(∑[A099259(n+1)])]`
-/

namespace A340638.P13960893424699937762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099259 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340638.P13960893424699937762

/-! ## A340638.P5314807757919086003

`A000010(record[Δ[A018739(n+1)]])`
-/

namespace A340638.P5314807757919086003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018739 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340638.P5314807757919086003

/-!
# A340639: The number of regions inside a Reuleaux triangle formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A340639, there is no canonical definition to state claims against.
-/

/-! ## A340639.P9143529619139797657

`A340613(n+1)+1-A340644(n+1)`
-/

namespace A340639.P9143529619139797657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340613 (n + 1) + (1 - A340644 (n + 1))

end

end A340639.P9143529619139797657

/-! ## A340639.P5126593890654260004

`A340613(n+1)+A024000(A340644(n+1))`
-/

namespace A340639.P5126593890654260004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340613 (n + 1) + A024000 (A340644 (n + 1)).toNat

end

end A340639.P5126593890654260004

/-!
# A340640: Perfect powers such that the two immediately adjacent perfect powers have at least one largest exponent A025479 greater than 2.

The programs for A340640, there is no canonical definition to state claims against.
-/

/-! ## A340640.P13408769043836007357

`lt[A253641(A002473(2*(n+2))), A253641(n)]`
-/

namespace A340640.P13408769043836007357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (A002473 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340640.P13408769043836007357

/-! ## A340640.P1738176020461774432

`A133079(A119098(n+1))+A001597(n+4)`
-/

namespace A340640.P1738176020461774432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133079 (A119098 (n + 1)).toNat + A001597 (n + 4)

end

end A340640.P1738176020461774432

/-! ## A340640.P17181619653492281975

`A001597(A047784(3*(n+1)))%A013576(n+3)`
-/

namespace A340640.P17181619653492281975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001597 (A047784 (3 * (n + 1))).toNat) (A013576 (n + 3))

end

end A340640.P17181619653492281975

/-! ## A340640.P5710223403579485044

`record[A001597(A225634(3*n+2))]`
-/

namespace A340640.P5710223403579485044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A225634 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340640.P5710223403579485044

/-! ## A340640.P11635946722622521199

`∩[A072777(n+1), A156246(n+1)]`
-/

namespace A340640.P11635946722622521199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340640.P11635946722622521199

/-!
# A340641: a(n) is the least root of A340640(n).

The programs for A340641, there is no canonical definition to state claims against.
-/

/-! ## A340641.P14273760911497593340

`A052410(A340640(n+1))`
-/

namespace A340641.P14273760911497593340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A340640 (n + 1)).toNat

end

end A340641.P14273760911497593340

/-! ## A340641.P6277668963647054578

`A329814(or(1, A340640(n+1)))`
-/

namespace A340641.P6277668963647054578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 (Int.lor 1 (A340640 (n + 1))).toNat

end

end A340641.P6277668963647054578

/-! ## A340641.P10456138916390464924

`A329814(A340640(n+1)+char[2])`
-/

namespace A340641.P10456138916390464924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 (A340640 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A340641.P10456138916390464924

/-! ## A340641.P17259686422607425398

`A329814(A340640(n+1))%A004768(n)`
-/

namespace A340641.P17259686422607425398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329814 (A340640 (n + 1)).toNat) (A004768 n)

end

end A340641.P17259686422607425398

/-! ## A340641.P14148351571250752810

`A007318(∑[n])*A329814(A340640(n+1))`
-/

namespace A340641.P14148351571250752810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A329814 (A340640 (n + 1)).toNat

end

end A340641.P14148351571250752810

/-! ## A340641.P7161309080353306798

`A000034(2*n)*A329814(A340640(n+1))`
-/

namespace A340641.P7161309080353306798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A329814 (A340640 (n + 1)).toNat

end

end A340641.P7161309080353306798

/-! ## A340641.P8733146285378298655

`A001221(A001248(n+1))*A329814(A340640(n+1))`
-/

namespace A340641.P8733146285378298655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001248 (n + 1)).toNat * A329814 (A340640 (n + 1)).toNat

end

end A340641.P8733146285378298655

/-!
# A340642: Perfect powers such that the two immediately adjacent perfect powers both have an exponent greater than 2.

The programs for A340642, there is no canonical definition to state claims against.
-/

/-! ## A340642.P9784697112777527977

`A340643(n+1)²`
-/

namespace A340642.P9784697112777527977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340643 (n + 1) ^ 2

end

end A340642.P9784697112777527977

/-! ## A340642.P12281941016335037055

`A340643(2*(n+1)-(n+1))^2`
-/

namespace A340642.P12281941016335037055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340643 (2 * (n + 1) - (n + 1)) ^ 2

end

end A340642.P12281941016335037055

/-! ## A340642.P6727478245717980324

`record[A340643(A065648(n))²]`
-/

namespace A340642.P6727478245717980324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340643 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340642.P6727478245717980324

/-! ## A340642.P7174837329841750305

`A340643(n+1)*A340643(n%(n+1)+1)`
-/

namespace A340642.P7174837329841750305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340643 (n + 1) * A340643 (n % (n + 1) + 1)

end

end A340642.P7174837329841750305

/-! ## A340642.P13676250548480937408

`record[A340643(A065648(n))]*A340643(n+1)`
-/

namespace A340642.P13676250548480937408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340643 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A340643 (n + 1)

end

end A340642.P13676250548480937408

/-! ## A340642.P8308464570052592771

`A340643(A000027(n+1))*A340643(n+1)`
-/

namespace A340642.P8308464570052592771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340643 (A000027 (n + 1)).toNat * A340643 (n + 1)

end

end A340642.P8308464570052592771

/-!
# A340643: Numbers k such that the two perfect powers immediately adjacent to k^2 both have exponents greater than 2.

The programs for A340643, there is no canonical definition to state claims against.
-/

/-! ## A340643.P4453699281821182487

`sqrt(A340642(n+1))`
-/

namespace A340643.P4453699281821182487
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340642 (n + 1) : ℝ)

end

end A340643.P4453699281821182487

/-! ## A340643.P13365578867502168716

`root(A340642(n+1), a(A000038(n)))` with `a(0)=2`
-/

namespace A340643.P13365578867502168716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  (A340642 (n + 1) : ℝ) ^ (1 / a (A000038 n).toNat)

end

end A340643.P13365578867502168716

/-! ## A340643.P2978785228631863759

`root(A340642(n+1), 2)%A131992(n+1)`
-/

namespace A340643.P2978785228631863759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A340642 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A131992 (n + 1))

end

end A340643.P2978785228631863759

/-! ## A340643.P340368880362564456

`root(A340642(n+1), A001316(A001316(n)))`
-/

namespace A340643.P340368880362564456
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340642 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A340643.P340368880362564456

/-! ## A340643.P12583035976673316927

`root(A340642(n+1), 2)*A001221(A006562(n+1))`
-/

namespace A340643.P12583035976673316927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340642 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A001221 (A006562 (n + 1)).toNat : ℝ)

end

end A340643.P12583035976673316927

/-! ## A340643.P16993805099953417637

`root(A340642(n+1), A316789(A316789(n+1)+1)+1)`
-/

namespace A340643.P16993805099953417637
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340642 (n + 1) : ℝ) ^ (1 / (A316789 (A316789 (n + 1) + 1).toNat + 1 : ℝ))

end

end A340643.P16993805099953417637

/-! ## A340643.P12344222247164661951

`root(A340642(n+1), 2%A042662(n))`
-/

namespace A340643.P12344222247164661951
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A340642 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A042662 n) : ℝ))

end

end A340643.P12344222247164661951

/-! ## A340643.P3253913577609805193

`A000027(root(A340642(n+1), 2))`
-/

namespace A340643.P3253913577609805193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A340642 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A340643.P3253913577609805193

/-!
# A340644: The number of vertices on a Reuleaux triangle formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A340644, there is no canonical definition to state claims against.
-/

/-! ## A340644.P13300426999962775028

`A340613(n+1)+1-A340639(n+1)`
-/

namespace A340644.P13300426999962775028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340613 (n + 1) + (1 - A340639 (n + 1))

end

end A340644.P13300426999962775028

/-! ## A340644.P3805932462390068900

`A340613(n+1)+A024000(A340639(n+1))`
-/

namespace A340644.P3805932462390068900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340613 (n + 1) + A024000 (A340639 (n + 1)).toNat

end

end A340644.P3805932462390068900

/-! ## A340644.P4140835898032137357

`A020725(A340613(n+1)-A340639(n+1))`
-/

namespace A340644.P4140835898032137357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A340613 (n + 1) - A340639 (n + 1)).toNat

end

end A340644.P4140835898032137357

/-!
# A340645: Total number of optimal fundamentally different radio labelings summed over all simple (connected) graphs on n nodes.

The programs for A340645, there is no canonical definition to state claims against.
-/

/-! ## A340645.P15624730375525185468

`or(floor(2*n/5), A326841(n!))`
-/

namespace A340645.P15624730375525185468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊2 * ((n : ℚ) / 5)⌋ (A326841 (Nat.factorial n))

end

end A340645.P15624730375525185468

/-! ## A340645.P13997932377946500245

`A280226((n²-n)*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A340645.P13997932377946500245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  A280226 (((n ^ 2 : ℤ) - (n : ℤ)) * a (n - 1)).toNat

end

end A340645.P13997932377946500245

/-!
# A340646: a(n) = (prime(n)^n) mod prime(n+1).

The programs for A340646, there is no canonical definition to state claims against.
-/

/-! ## A340646.P6292100995615499419

`A062457(n+1)%p?[A131738(n)]`
-/

namespace A340646.P6292100995615499419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062457 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A340646.P6292100995615499419

/-! ## A340646.P1613127114570708006

`(A000040(n+1)^(n+1))%A000040(n+2)`
-/

namespace A340646.P1613127114570708006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ (n + 1)) (A000040 (n + 2))

end

end A340646.P1613127114570708006

/-! ## A340646.P10051572061821372192

`(A216885(n+1)^(n+1))%A216885(n+2)`
-/

namespace A340646.P10051572061821372192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216885 (n + 1) ^ (n + 1)) (A216885 (n + 2))

end

end A340646.P10051572061821372192

/-! ## A340646.P6306945237090287632

`(A008578(n+2)^(n+1))%A008578(n+3)`
-/

namespace A340646.P6306945237090287632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2) ^ (n + 1)) (A008578 (n + 3))

end

end A340646.P6306945237090287632

/-! ## A340646.P18139640808515360708

`A177806(∑[n+2])`
-/

namespace A340646.P18139640808515360708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177806 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340646.P18139640808515360708

/-!
# A340647: G.f.: Sum_{k>=0} x^(k^2) / Product_{j=1..k} (1 - x^(2*j))^2.

The programs for A340647, there is no canonical definition to state claims against.
-/

/-! ## A340647.P4677198508910447828

`(A006950(n)-A340623(n))%p?[A056107(n)]`
-/

namespace A340647.P4677198508910447828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006950 n - A340623 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A340647.P4677198508910447828

/-! ## A340647.P5760078205724025413

`A340622(n)+A340621(n)%A231301(n+1)`
-/

namespace A340647.P5760078205724025413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340622 n + Int.tmod (A340621 n) (A231301 (n + 1))

end

end A340647.P5760078205724025413

/-! ## A340647.P5948368590475970407

`A000122(A107197(n+1))+A340622(n)+A340621(n)`
-/

namespace A340647.P5948368590475970407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A107197 (n + 1)).toNat + (A340622 n + A340621 n)

end

end A340647.P5948368590475970407

/-! ## A340647.P1419029429364192972

`A000122(A107214(n+1))+A340622(n)+A340621(n)`
-/

namespace A340647.P1419029429364192972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A107214 (n + 1)).toNat + (A340622 n + A340621 n)

end

end A340647.P1419029429364192972

/-! ## A340647.P17312752028737374629

`(A340622(n)+A340621(n))%A045869(A045896(n))`
-/

namespace A340647.P17312752028737374629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340622 n + A340621 n) (A045869 (A045896 n).toNat)

end

end A340647.P17312752028737374629

/-!
# A340648: a(n) is the maximum number of nonzero entries in an n X n sign-restricted matrix.

The programs for A340648, the canonical program `A340648.P3677366552477947862` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340648 has offset 0).

The definition of A340648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340648.P3677366552477947862

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=11`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340648

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P3677366552477947862.Spec : Prop :=
  ∀ n, P3677366552477947862.a n = A340648 n

theorem P3677366552477947862.correct : P3677366552477947862.Spec := by
  intro n
  simp only [A340648]

end A340648

/-! ## A340648.P10269585052350574413

`ceil(C(3*n, 2)/6)`
-/

namespace A340648.P10269585052350574413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (3 * n) 2 : ℚ) / 6⌉

end

end A340648.P10269585052350574413

namespace A340648

/-- `ceil(C(3*n, 2)/6)` -/
def P10269585052350574413.Spec : Prop :=
  ∀ n, P10269585052350574413.a n = A340648 n

end A340648

/-! ## A340648.P15673057885541850587

`round(C(3*n, 2)/6)`
-/

namespace A340648.P15673057885541850587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (3 * n) 2 : ℚ) / 6)

end

end A340648.P15673057885541850587

namespace A340648

/-- `round(C(3*n, 2)/6)` -/
def P15673057885541850587.Spec : Prop :=
  ∀ n, P15673057885541850587.a n = A340648 n

end A340648

/-! ## A340648.P17200761272058705506

`∑[comp[∑[2*gcd(2, n)]]]`
-/

namespace A340648.P17200761272058705506
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340648.P17200761272058705506

namespace A340648

/-- `∑[comp[∑[2*gcd(2, n)]]]` -/
def P17200761272058705506.Spec : Prop :=
  ∀ n, (P17200761272058705506.a n : ℤ) = A340648 n

end A340648

/-! ## A340648.P11996436196481800424

`n²-floor(∑[n/2])`
-/

namespace A340648.P11996436196481800424
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A340648.P11996436196481800424

namespace A340648

/-- `n²-floor(∑[n/2])` -/
def P11996436196481800424.Spec : Prop :=
  ∀ n, P11996436196481800424.a n = A340648 n

end A340648

/-! ## A340648.P6943975940120366935

`∑[comp[or(1, 3*n)+3]]`
-/

namespace A340648.P6943975940120366935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n) + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340648.P6943975940120366935

namespace A340648

/-- `∑[comp[or(1, 3*n)+3]]` -/
def P6943975940120366935.Spec : Prop :=
  ∀ n, (P6943975940120366935.a n : ℤ) = A340648 n

end A340648

/-! ## A340648.P17699408550608027244

`ceil((C(n, 2)+n²)/2)`
-/

namespace A340648.P17699408550608027244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 + n ^ 2 : ℚ) / 2⌉

end

end A340648.P17699408550608027244

namespace A340648

/-- `ceil((C(n, 2)+n²)/2)` -/
def P17699408550608027244.Spec : Prop :=
  ∀ n, P17699408550608027244.a n = A340648 n

end A340648

/-! ## A340648.P10972932050261585859

`round((C(n, 2)+n²)/2)`
-/

namespace A340648.P10972932050261585859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose n 2 + n ^ 2 : ℚ) / 2)

end

end A340648.P10972932050261585859

namespace A340648

/-- `round((C(n, 2)+n²)/2)` -/
def P10972932050261585859.Spec : Prop :=
  ∀ n, P10972932050261585859.a n = A340648 n

end A340648

/-! ## A340648.P12363513654788169594

`∑[a(n-4)+6]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=5`
-/

namespace A340648.P12363513654788169594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 5] fun n f1 =>
  f1 (n - 4) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340648.P12363513654788169594

namespace A340648

/-- `∑[a(n-4)+6]` -/
def P12363513654788169594.Spec : Prop :=
  ∀ n, (P12363513654788169594.a n : ℤ) = A340648 n

end A340648

/-! ## A340648.P624568607992720251

`∑[∑[3-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A340648.P624568607992720251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1, 1] fun n f2 =>
  3 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340648.P624568607992720251

namespace A340648

/-- `∑[∑[3-a(n-2)]]` -/
def P624568607992720251.Spec : Prop :=
  ∀ n, P624568607992720251.a n = A340648 n

end A340648

/-! ## A340648.P16302060814464525874

`ceil(lcm(n, 2*n+n-1)/4)`
-/

namespace A340648.P16302060814464525874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm (n : ℤ) ((2 * n : ℤ) + ((n : ℤ) - 1)) : ℚ) / 4⌉

end

end A340648.P16302060814464525874

namespace A340648

/-- `ceil(lcm(n, 2*n+n-1)/4)` -/
def P16302060814464525874.Spec : Prop :=
  ∀ n, P16302060814464525874.a n = A340648 n

end A340648

/-! ## A340648.P14323727005340542928

`floor((C(2*n, 2)-∑[n-1])/2)`
-/

namespace A340648.P14323727005340542928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((Nat.choose (2 * n) 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A340648.P14323727005340542928

namespace A340648

/-- `floor((C(2*n, 2)-∑[n-1])/2)` -/
def P14323727005340542928.Spec : Prop :=
  ∀ n, P14323727005340542928.a n = A340648 n

end A340648

/-! ## A340648.P14387626238910563030

`floor(A143689(n)/2)`
-/

namespace A340648.P14387626238910563030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A143689 n : ℚ) / 2⌋

end

end A340648.P14387626238910563030

namespace A340648

/-- `floor(A143689(n)/2)` -/
def P14387626238910563030.Spec : Prop :=
  ∀ n, P14387626238910563030.a n = A340648 n

end A340648

/-! ## A340648.P8555385291335196153

`ceil(A000326(n)/2)`
-/

namespace A340648.P8555385291335196153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000326 n : ℚ) / 2⌉

end

end A340648.P8555385291335196153

namespace A340648

/-- `ceil(A000326(n)/2)` -/
def P8555385291335196153.Spec : Prop :=
  ∀ n, P8555385291335196153.a n = A340648 n

end A340648

/-! ## A340648.P4227611579403550443

`∑[lt[A020639(n+1), 4]]`
-/

namespace A340648.P4227611579403550443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340648.P4227611579403550443

namespace A340648

/-- `∑[lt[A020639(n+1), 4]]` -/
def P4227611579403550443.Spec : Prop :=
  ∀ n, (P4227611579403550443.a n : ℤ) = A340648 n

end A340648

/-! ## A340648.P12845253798025966274

`floor((A104249(n)-n)/2)`
-/

namespace A340648.P12845253798025966274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104249 n - (n : ℤ) : ℚ) / 2⌋

end

end A340648.P12845253798025966274

namespace A340648

/-- `floor((A104249(n)-n)/2)` -/
def P12845253798025966274.Spec : Prop :=
  ∀ n, P12845253798025966274.a n = A340648 n

end A340648

/-! ## A340648.P7793365684722209351

`ceil((A005449(n)-n)/2)`
-/

namespace A340648.P7793365684722209351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005449 n - (n : ℤ) : ℚ) / 2⌉

end

end A340648.P7793365684722209351

namespace A340648

/-- `ceil((A005449(n)-n)/2)` -/
def P7793365684722209351.Spec : Prop :=
  ∀ n, P7793365684722209351.a n = A340648 n

end A340648

/-! ## A340648.P17693528432877678020

`∑[comp[A007310(n+2)-1]]`
-/

namespace A340648.P17693528432877678020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340648.P17693528432877678020

namespace A340648

/-- `∑[comp[A007310(n+2)-1]]` -/
def P17693528432877678020.Spec : Prop :=
  ∀ n, (P17693528432877678020.a n : ℤ) = A340648 n

end A340648

/-! ## A340648.P4792035201571212369

`∑[comp[2*A007494(n+1)]]`
-/

namespace A340648.P4792035201571212369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007494 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340648.P4792035201571212369

namespace A340648

/-- `∑[comp[2*A007494(n+1)]]` -/
def P4792035201571212369.Spec : Prop :=
  ∀ n, (P4792035201571212369.a n : ℤ) = A340648 n

end A340648

/-! ## A340648.P14884815395216172818

`ceil((A000567(n)-1+n)/4)`
-/

namespace A340648.P14884815395216172818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000567 n - 1 + (n : ℤ) : ℚ) / 4⌉

end

end A340648.P14884815395216172818

namespace A340648

/-- `ceil((A000567(n)-1+n)/4)` -/
def P14884815395216172818.Spec : Prop :=
  ∀ n, P14884815395216172818.a n = A340648 n

end A340648

/-!
# A340649: a(n) = (n*prime(n+1)) mod prime(n).

The programs for A340649, the canonical program `A340649.P18434420482631639817` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340649 has offset 1).

The definition of A340649 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)*A000040(n+2))%A000040(n+1)` (program `A340649.P18434420482631639817`, by `A340649.P18434420482631639817.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A340649.P1222305249664237020

`A117495(n+2)%A000040(n+1)`
-/

namespace A340649.P1222305249664237020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117495 (n + 2)) (A000040 (n + 1))

end

end A340649.P1222305249664237020

namespace A340649

/-- `A117495(n+2)%A000040(n+1)` -/
def P1222305249664237020.Spec : Prop :=
  ∀ n, P1222305249664237020.a n = A340649 (n + 1)

theorem P1222305249664237020.correct : P1222305249664237020.Spec := by
  intro n
  simp only [A340649, Nat.add_sub_cancel, A340649.P1222305249664237020.a, A340649.P18434420482631639817.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340649

/-! ## A340649.P18434420482631639817

`((n+1)*A000040(n+2))%A000040(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A340649

/-- `((n+1)*A000040(n+2))%A000040(n+1)` -/
def P18434420482631639817.Spec : Prop :=
  ∀ n, P18434420482631639817.a n = A340649 (n + 1)

theorem P18434420482631639817.correct : P18434420482631639817.Spec := by
  intro n
  simp only [A340649, Nat.add_sub_cancel]

end A340649

/-! ## A340649.P12468037859103549001

`A097240(n+1)%A000040(n+1)`
-/

namespace A340649.P12468037859103549001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097240 (n + 1)) (A000040 (n + 1))

end

end A340649.P12468037859103549001

namespace A340649

/-- `A097240(n+1)%A000040(n+1)` -/
def P12468037859103549001.Spec : Prop :=
  ∀ n, P12468037859103549001.a n = A340649 (n + 1)

end A340649

/-! ## A340649.P10384057587428029423

`∑[A247380(n+1)]%A000040(n+1)`
-/

namespace A340649.P10384057587428029423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A340649.P10384057587428029423

namespace A340649

/-- `∑[A247380(n+1)]%A000040(n+1)` -/
def P10384057587428029423.Spec : Prop :=
  ∀ n, P10384057587428029423.a n = A340649 (n + 1)

end A340649

/-! ## A340649.P2435831537953388686

`Δ[n*A008578(n+2)]%A008578(n+2)`
-/

namespace A340649.P2435831537953388686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A008578 (n + 2))

end

end A340649.P2435831537953388686

namespace A340649

/-- `Δ[n*A008578(n+2)]%A008578(n+2)` -/
def P2435831537953388686.Spec : Prop :=
  ∀ n, P2435831537953388686.a n = A340649 (n + 1)

end A340649

/-! ## A340649.P15654097927054063063

`((n+1)*Δ[record[A051664(n+1)]])%(A040976(n+1)+2)`
-/

namespace A340649.P15654097927054063063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051664 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)) (A040976 (n + 1) + 2)

end

end A340649.P15654097927054063063

namespace A340649

/-- `((n+1)*Δ[record[A051664(n+1)]])%(A040976(n+1)+2)` -/
def P15654097927054063063.Spec : Prop :=
  ∀ n, P15654097927054063063.a n = A340649 (n + 1)

end A340649

/-!
# A340651: Number of non-isomorphic cross-balanced multiset partitions of weight n.

The programs for A340651, there is no canonical definition to state claims against.
-/

/-! ## A340651.P8536723153550875275

`A112325(A148655(n))`
-/

namespace A340651.P8536723153550875275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A148655 n).toNat

end

end A340651.P8536723153550875275

/-! ## A340651.P18105767973818651834

`A112325(A148656(n))`
-/

namespace A340651.P18105767973818651834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112325 (A148656 n).toNat

end

end A340651.P18105767973818651834

/-! ## A340651.P12259712029023366502

`A245898(n+1)+Δ[A256216(n+1)]`
-/

namespace A340651.P12259712029023366502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (n + 1) + (f1 (n + 1) - f1 n)

end

end A340651.P12259712029023366502

/-! ## A340651.P10159795334682027649

`A023193(A149129(n)+A003214(n))`
-/

namespace A340651.P10159795334682027649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A149129 n + A003214 n).toNat

end

end A340651.P10159795334682027649

/-!
# A340653: Number of balanced factorizations of n.

The programs for A340653, there is no canonical definition to state claims against.
-/

/-! ## A340653.P14817494661325102069

`A382518(A294933(n+1))`
-/

namespace A340653.P14817494661325102069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382518 (A294933 (n + 1)).toNat

end

end A340653.P14817494661325102069

/-! ## A340653.P12353789359592247168

`A243067(A069626(n+1)+3)`
-/

namespace A340653.P12353789359592247168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243067 (A069626 (n + 1) + 3).toNat

end

end A340653.P12353789359592247168

/-! ## A340653.P8964738422484733435

`A087117(A180760(A050340(n+1)))`
-/

namespace A340653.P8964738422484733435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A180760 (A050340 (n + 1)).toNat).toNat

end

end A340653.P8964738422484733435

/-! ## A340653.P15472506144597470815

`A102354(A015996(n+1)^A072670(n))`
-/

namespace A340653.P15472506144597470815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102354 (SequenceMachineLib.roundAway ((A015996 (n + 1) : ℚ) ^ (A072670 n : ℤ))).toNat

end

end A340653.P15472506144597470815

/-! ## A340653.P15794998747695343621

`A316441(A073093(n+1)^A161840(n+1))`
-/

namespace A340653.P15794998747695343621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (SequenceMachineLib.roundAway ((A073093 (n + 1) : ℚ) ^ (A161840 (n + 1) : ℤ))).toNat

end

end A340653.P15794998747695343621

/-!
# A340654: Number of cross-balanced factorizations of n.

The programs for A340654, there is no canonical definition to state claims against.
-/

/-! ## A340654.P12607449569561391750

`A370645(n+1)+A353625(n+1)`
-/

namespace A340654.P12607449569561391750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370645 (n + 1) + A353625 (n + 1)

end

end A340654.P12607449569561391750

/-! ## A340654.P4679283217905060604

`A370645(n+1)+A269246(A000688(n+1))`
-/

namespace A340654.P4679283217905060604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370645 (n + 1) + A269246 (A000688 (n + 1)).toNat

end

end A340654.P4679283217905060604

/-! ## A340654.P16055646580060390195

`A370645(n+1)+A057354(A369163(n+1))`
-/

namespace A340654.P16055646580060390195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370645 (n + 1) + A057354 (A369163 (n + 1)).toNat

end

end A340654.P16055646580060390195

/-! ## A340654.P2936548113530983450

`A370645(n+1)+A281116(A285572(n+1))`
-/

namespace A340654.P2936548113530983450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370645 (n + 1) + A281116 (A285572 (n + 1)).toNat

end

end A340654.P2936548113530983450

/-! ## A340654.P14996948926568527374

`A370645(n+1)+A335446(A370816(n+1))`
-/

namespace A340654.P14996948926568527374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370645 (n + 1) + A335446 (A370816 (n + 1)).toNat

end

end A340654.P14996948926568527374

/-! ## A340654.P14709622040065820687

`A370645(n+1)+A072401(A339323(n+1))`
-/

namespace A340654.P14709622040065820687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370645 (n + 1) + A072401 (A339323 (n + 1)).toNat

end

end A340654.P14709622040065820687

/-! ## A340654.P354677604151791660

`A001222(A000040(n+1)/(n+1)*A285769(n+1))`
-/

namespace A340654.P354677604151791660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / (n + 1 : ℚ) * (A285769 (n + 1) : ℚ))).toNat

end

end A340654.P354677604151791660

/-! ## A340654.P10140072289738307167

`or(A010054(A317831(n+1)), A370645(n+1))`
-/

namespace A340654.P10140072289738307167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A317831 (n + 1)).toNat) (A370645 (n + 1))

end

end A340654.P10140072289738307167

/-! ## A340654.P16952272137678365847

`A228107(A191278(n+1))`
-/

namespace A340654.P16952272137678365847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228107 (A191278 (n + 1)).toNat

end

end A340654.P16952272137678365847

/-! ## A340654.P2275850476851668530

`A335460(n+1)+gcd(1-and(2, n), A101044(n+1))`
-/

namespace A340654.P2275850476851668530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (n + 1) + (Int.gcd (1 - (Nat.land 2 n : ℤ)) (A101044 (n + 1)) : ℤ)

end

end A340654.P2275850476851668530

/-!
# A340655: Number of twice-balanced factorizations of n.

The programs for A340655, there is no canonical definition to state claims against.
-/

/-! ## A340655.P4996450123916751558

`A035171(A329385(n+1))`
-/

namespace A340655.P4996450123916751558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035171 (A329385 (n + 1)).toNat

end

end A340655.P4996450123916751558

/-! ## A340655.P8308345149669906981

`A320892(A330773(n))%3`
-/

namespace A340655.P8308345149669906981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320892 (A330773 n).toNat) 3

end

end A340655.P8308345149669906981

/-! ## A340655.P8094427906648053221

`A088700(A050363(n+1)+1)`
-/

namespace A340655.P8094427906648053221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088700 (A050363 (n + 1) + 1).toNat

end

end A340655.P8094427906648053221

/-! ## A340655.P2146935052522687542

`A176451(A050363(n+1)+2)`
-/

namespace A340655.P2146935052522687542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176451 (A050363 (n + 1) + 2).toNat

end

end A340655.P2146935052522687542

/-! ## A340655.P8049632790104044185

`A128541(A069625(n+1))%3`
-/

namespace A340655.P8049632790104044185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128541 (A069625 (n + 1)).toNat) 3

end

end A340655.P8049632790104044185

/-! ## A340655.P8519618905849585524

`A128540(A207329(n+1))%3`
-/

namespace A340655.P8519618905849585524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128540 (A207329 (n + 1)).toNat) 3

end

end A340655.P8519618905849585524

/-! ## A340655.P16463920418793855434

`A261781(A337525(n+1))%4`
-/

namespace A340655.P16463920418793855434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261781 (A337525 (n + 1)).toNat) 4

end

end A340655.P16463920418793855434

/-! ## A340655.P4857856611258115840

`A055668(A073060(A238745(n+1)))`
-/

namespace A340655.P4857856611258115840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055668 (A073060 (A238745 (n + 1)).toNat).toNat

end

end A340655.P4857856611258115840

/-! ## A340655.P15931318021496880089

`and(A091435(A033273(n+1)), A324912(n+1))`
-/

namespace A340655.P15931318021496880089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091435 (A033273 (n + 1)).toNat) (A324912 (n + 1))

end

end A340655.P15931318021496880089

/-! ## A340655.P12032274704800861295

`and(A317176(n+1)²*A317176(n+1), A340653(n+1))`
-/

namespace A340655.P12032274704800861295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A317176 (n + 1) ^ 2 * A317176 (n + 1)) (A340653 (n + 1))

end

end A340655.P12032274704800861295

/-!
# A340656: Numbers without a twice-balanced factorization.

The programs for A340656, there is no canonical definition to state claims against.
-/

/-! ## A340656.P16387595974896412070

`comp[A340657(n+1)-1]+1`
-/

namespace A340656.P16387595974896412070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340657 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A340656.P16387595974896412070

/-! ## A340656.P16345799202727585210

`eq[0, A128540(A207329(n+1))]+1`
-/

namespace A340656.P16345799202727585210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128540 (A207329 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340656.P16345799202727585210

/-! ## A340656.P17799141147551623389

`∪[A212168(n+1), A396852(n+1)]`
-/

namespace A340656.P17799141147551623389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340656.P17799141147551623389

/-! ## A340656.P5339753702161077211

`∪[A344585(n+1), A396852(n+1)]`
-/

namespace A340656.P5339753702161077211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340656.P5339753702161077211

/-! ## A340656.P4293657749374587934

`comp[A340657(A112798(n+2))%A250120(n)]`
-/

namespace A340656.P4293657749374587934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340657 (A112798 (n + 2)).toNat) (A250120 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A340656.P4293657749374587934

/-!
# A340657: Numbers with a twice-balanced factorization.

The programs for A340657, there is no canonical definition to state claims against.
-/

/-! ## A340657.P17259629724862161686

`lt[0, A340655(n+1)]+1`
-/

namespace A340657.P17259629724862161686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340657.P17259629724862161686

/-! ## A340657.P16872784826280603158

`lt[A000007(n), A340655(A028310(n))]`
-/

namespace A340657.P16872784826280603158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340655 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340657.P16872784826280603158

/-! ## A340657.P1899969529503040704

`A316793(n+1)%A146085(3*n+4)`
-/

namespace A340657.P1899969529503040704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316793 (n + 1)) (A146085 (3 * n + 4))

end

end A340657.P1899969529503040704

/-!
# A340658: The number of overpartitions of n having more non-overlined parts than overlined parts.

The programs for A340658, there is no canonical definition to state claims against.
-/

/-! ## A340658.P6669174757237843611

`A015128(n)-A143184(n)`
-/

namespace A340658.P6669174757237843611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n - A143184 n

end

end A340658.P6669174757237843611

/-! ## A340658.P15817690438260297816

`abs(A004402(n))-A143184(n)`
-/

namespace A340658.P15817690438260297816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n| - A143184 n

end

end A340658.P15817690438260297816

/-! ## A340658.P15572309826071458061

`∑[A211971(n)]-A143184(n)`
-/

namespace A340658.P15572309826071458061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A143184 n

end

end A340658.P15572309826071458061

/-! ## A340658.P868871596198146116

`gcd(A000038(n), A004402(n))-A143184(n)`
-/

namespace A340658.P868871596198146116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A004402 n) : ℤ) - A143184 n

end

end A340658.P868871596198146116

/-! ## A340658.P9640882613611108523

`lcm(A000034(n), A004402(n))-A143184(n)`
-/

namespace A340658.P9640882613611108523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 n) (A004402 n) : ℤ) - A143184 n

end

end A340658.P9640882613611108523

/-! ## A340658.P6480573243073070379

`A288515(A034856(n+1))-A143184(n)`
-/

namespace A340658.P6480573243073070379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288515 (A034856 (n + 1)).toNat - A143184 n

end

end A340658.P6480573243073070379

/-!
# A340659: The number of overpartitions of n having an equal number of overlined and non-overlined parts.

The programs for A340659, there is no canonical definition to state claims against.
-/

/-! ## A340659.P1691371095697352843

`A000007(n)+A143184(n)-A001524(n)`
-/

namespace A340659.P1691371095697352843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A143184 n - A001524 n)

end

end A340659.P1691371095697352843

/-! ## A340659.P3507604639810558581

`A143184(n)-A165581(n)²*A001524(n)`
-/

namespace A340659.P3507604639810558581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143184 n - A165581 n ^ 2 * A001524 n

end

end A340659.P3507604639810558581

/-! ## A340659.P5134691313483121457

`and(1, A317641(n))+A143184(n)-A001524(n)`
-/

namespace A340659.P5134691313483121457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A317641 n) + (A143184 n - A001524 n)

end

end A340659.P5134691313483121457

/-! ## A340659.P3433668458185025139

`A008683(A008574(n))+A143184(n)-A001524(n)`
-/

namespace A340659.P3433668458185025139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A143184 n - A001524 n)

end

end A340659.P3433668458185025139

/-! ## A340659.P6298656211757327655

`A143184(n)-A001524(n)-A008683(2*A008574(n))`
-/

namespace A340659.P6298656211757327655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143184 n - A001524 n - A008683 (2 * A008574 n).toNat

end

end A340659.P6298656211757327655

/-! ## A340659.P16380580383338872502

`A143184(n)-A001524(n)%A015128(n)`
-/

namespace A340659.P16380580383338872502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143184 n - Int.tmod (A001524 n) (A015128 n)

end

end A340659.P16380580383338872502

/-! ## A340659.P812972925656521135

`A000035(A051755(n+2))+A143184(n)-A001524(n)`
-/

namespace A340659.P812972925656521135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A051755 (n + 2)).toNat + (A143184 n - A001524 n)

end

end A340659.P812972925656521135

/-! ## A340659.P20477627772069191

`A262693(A075409(n+2))+A143184(n)-A001524(n)`
-/

namespace A340659.P20477627772069191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 (A075409 (n + 2)).toNat + (A143184 n - A001524 n)

end

end A340659.P20477627772069191

/-! ## A340659.P5357909049703089580

`A262693((5*n)²)+A143184(n)-A001524(n)`
-/

namespace A340659.P5357909049703089580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262693 ((5 * n) ^ 2) + (A143184 n - A001524 n)

end

end A340659.P5357909049703089580

/-!
# A340660: A000079 is the first row. For the second row, subtract A001045. For the third row, subtract A001045 from the second one, etc. The resulting array is read by ascending antidiagonals.

The programs for A340660, the canonical program `A340660.P10381494563631155242` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340660 has offset 0).

The definition of A340660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340660.P10381494563631155242

`2^col(n)-(row(n)-col(n))*round(2^col(n)/3)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340660

/-- `2^col(n)-(row(n)-col(n))*round(2^col(n)/3)` -/
def P10381494563631155242.Spec : Prop :=
  ∀ n, P10381494563631155242.a n = A340660 n

theorem P10381494563631155242.correct : P10381494563631155242.Spec := by
  intro n
  simp only [A340660]

end A340660

/-! ## A340660.P8835898186344214560

`2^col(n)-(row(n)-col(n))*(2^col(n)-(-1)^col(n))/3`
-/

namespace A340660.P8835898186344214560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.triCol n : ℚ) - (((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * ((2 ^ SequenceMachineLib.triCol n : ℤ) - (-1) ^ SequenceMachineLib.triCol n) : ℚ) / 3

end

end A340660.P8835898186344214560

namespace A340660

/-- `2^col(n)-(row(n)-col(n))*(2^col(n)-(-1)^col(n))/3` -/
def P8835898186344214560.Spec : Prop :=
  ∀ n, P8835898186344214560.a n = (A340660 n : ℚ)

end A340660

/-! ## A340660.P12882224405254610540

`A000005(A329049(n))-A000005(A329332(n))`
-/

namespace A340660.P12882224405254610540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A329049 n).toNat - A000005 (A329332 n).toNat

end

end A340660.P12882224405254610540

namespace A340660

/-- `A000005(A329049(n))-A000005(A329332(n))` -/
def P12882224405254610540.Spec : Prop :=
  ∀ n, P12882224405254610540.a n = A340660 n

end A340660

/-! ## A340660.P15822473742094157440

`A059268(n)-A349258(A111820(n))`
-/

namespace A340660.P15822473742094157440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A349258 (A111820 n).toNat

end

end A340660.P15822473742094157440

namespace A340660

/-- `A059268(n)-A349258(A111820(n))` -/
def P15822473742094157440.Spec : Prop :=
  ∀ n, P15822473742094157440.a n = A340660 n

end A340660

/-! ## A340660.P14806545278016714116

`A001222(A066117(n+1))+1-A193592(n)`
-/

namespace A340660.P14806545278016714116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066117 (n + 1)).toNat + (1 - A193592 n)

end

end A340660.P14806545278016714116

namespace A340660

/-- `A001222(A066117(n+1))+1-A193592(n)` -/
def P14806545278016714116.Spec : Prop :=
  ∀ n, P14806545278016714116.a n = A340660 n

end A340660

/-!
# A340661: a(n) is the start of the first occurrence of n consecutive perfect powers, all of which are squares with exponents equal to 2 (A111245).

The programs for A340661, there is no canonical definition to state claims against.
-/

/-! ## A340661.P11581949959422727774

`A340663(n+1)²`
-/

namespace A340661.P11581949959422727774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340663 (n + 1) ^ 2

end

end A340661.P11581949959422727774

/-! ## A340661.P17717128454486157324

`(A340664(n+1)-n)²`
-/

namespace A340661.P17717128454486157324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A340664 (n + 1) - (n : ℤ)) ^ 2

end

end A340661.P17717128454486157324

/-! ## A340661.P9256219515182015846

`(sqrt(A340662(n+1))-n)²`
-/

namespace A340661.P9256219515182015846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A340662 (n + 1) : ℝ) - (n : ℝ)) ^ 2

end

end A340661.P9256219515182015846

/-! ## A340661.P6896960217867258341

`(n+1-ceil(sqrt(A340695(n+1))))²`
-/

namespace A340661.P6896960217867258341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - ⌈Real.sqrt (A340695 (n + 1) : ℝ)⌉) ^ 2

end

end A340661.P6896960217867258341

/-! ## A340661.P6649902428892975407

`A340663(A000027(n+1))^2`
-/

namespace A340661.P6649902428892975407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340663 (A000027 (n + 1)).toNat ^ 2

end

end A340661.P6649902428892975407

/-!
# A340662: a(n) is the end of the first occurrence of n consecutive perfect powers, all of which are squares with exponents equal to 2 (A111245).

The programs for A340662, there is no canonical definition to state claims against.
-/

/-! ## A340662.P12357794163168687103

`A340664(n+1)²`
-/

namespace A340662.P12357794163168687103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340664 (n + 1) ^ 2

end

end A340662.P12357794163168687103

/-! ## A340662.P17756187397472779192

`A340663(n+1)²+n*(2*A340663(n+1)+n+1-1)`
-/

namespace A340662.P17756187397472779192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340663 (n + 1) ^ 2 + (n : ℤ) * (2 * A340663 (n + 1) + (n + 1 : ℤ) - 1)

end

end A340662.P17756187397472779192

/-! ## A340662.P8680338443738413447

`(A340663(n+1)+n)²`
-/

namespace A340662.P8680338443738413447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A340663 (n + 1) + (n : ℤ)) ^ 2

end

end A340662.P8680338443738413447

/-! ## A340662.P146894606049447167

`(sqrt(A340661(n+1))+n)²`
-/

namespace A340662.P146894606049447167
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A340661 (n + 1) : ℝ) + (n : ℝ)) ^ 2

end

end A340662.P146894606049447167

/-! ## A340662.P13856766555466967757

`floor(sqrt(A340695(n+1)-1))²`
-/

namespace A340662.P13856766555466967757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A340695 (n + 1) - 1) ^ 2

end

end A340662.P13856766555466967757

/-!
# A340663: a(n)^2 is the start of the first occurrence of n consecutive perfect powers, all of which are squares with exponents equal to 2 (A111245).

The programs for A340663, there is no canonical definition to state claims against.
-/

/-! ## A340663.P7446351292168800575

`sqrt(A340661(n+1))`
-/

namespace A340663.P7446351292168800575
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340661 (n + 1) : ℝ)

end

end A340663.P7446351292168800575

/-! ## A340663.P1591533756749413189

`A340664(n+1)-n`
-/

namespace A340663.P1591533756749413189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340664 (n + 1) - (n : ℤ)

end

end A340663.P1591533756749413189

/-! ## A340663.P11582030971318348874

`floor(sqrt(A340695(n+1)-1))-n`
-/

namespace A340663.P11582030971318348874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A340695 (n + 1) - 1) - (n : ℤ)

end

end A340663.P11582030971318348874

/-! ## A340663.P8085831644524429803

`abs(A340664(n+1)+A001489(n))`
-/

namespace A340663.P8085831644524429803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A340664 (n + 1) + A001489 n|

end

end A340663.P8085831644524429803

/-! ## A340663.P4999065853845286779

`A000027(A340664(n+1)+A001489(n))`
-/

namespace A340663.P4999065853845286779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A340664 (n + 1) + A001489 n).toNat

end

end A340663.P4999065853845286779

/-!
# A340664: a(n)^2 is the end of the first occurrence of n consecutive perfect powers, all of which are squares with exponents equal to 2 (A111245).

The programs for A340664, there is no canonical definition to state claims against.
-/

/-! ## A340664.P17431390423398540644

`A340663(n+1)+n`
-/

namespace A340664.P17431390423398540644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340663 (n + 1) + (n : ℤ)

end

end A340664.P17431390423398540644

/-! ## A340664.P10608358192903759653

`sqrt(A340662(n+1))`
-/

namespace A340664.P10608358192903759653
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340662 (n + 1) : ℝ)

end

end A340664.P10608358192903759653

/-! ## A340664.P7654085467482418424

`floor(sqrt(A340695(n+1)-1))`
-/

namespace A340664.P7654085467482418424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A340695 (n + 1) - 1)

end

end A340664.P7654085467482418424

/-! ## A340664.P11403841189137642795

`sqrt(A340661(n+1))+n`
-/

namespace A340664.P11403841189137642795
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340661 (n + 1) : ℝ) + (n : ℝ)

end

end A340664.P11403841189137642795

/-! ## A340664.P9764601320625025851

`A052410(A340661(n+1))+A007376(n)`
-/

namespace A340664.P9764601320625025851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A340661 (n + 1)).toNat + A007376 n

end

end A340664.P9764601320625025851

/-!
# A340666: A(n,k) is derived from n by replacing each 0 in its binary representation with a string of k 0's; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A340666, there is no canonical definition to state claims against.
-/

/-! ## A340666.P14228898158934091374

`A168068(n)/A001511(A229194(n))`
-/

namespace A340666.P14228898158934091374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168068 n : ℚ) / (A001511 (A229194 n).toNat : ℚ)

end

end A340666.P14228898158934091374

/-! ## A340666.P10735935339842489331

`C(A168068(n), A237835(A116701(n)))`
-/

namespace A340666.P10735935339842489331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A168068 n).toNat (A237835 (A116701 n).toNat).toNat

end

end A340666.P10735935339842489331

/-! ## A340666.P10859066924557600392

`A168068(n)-A010054(A154729(n+2))`
-/

namespace A340666.P10859066924557600392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168068 n - A010054 (A154729 (n + 2)).toNat

end

end A340666.P10859066924557600392

/-! ## A340666.P5145996261048553076

`A168068(A055647(n))`
-/

namespace A340666.P5145996261048553076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168068 (A055647 n).toNat

end

end A340666.P5145996261048553076

/-! ## A340666.P6967682398805819449

`A359953(A008305(n+1))`
-/

namespace A340666.P6967682398805819449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359953 (A008305 (n + 1)).toNat

end

end A340666.P6967682398805819449

/-!
# A340667: a(n) is derived from n by replacing each 0 in its binary representation with a string of n 0's.

The programs for A340667, there is no canonical definition to state claims against.
-/

/-! ## A340667.P16211627053458930817

`A340666(∑[4*n])`
-/

namespace A340667.P16211627053458930817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340666 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340667.P16211627053458930817

/-! ## A340667.P2559732289745525246

`abs(A340666(A046092(n))-n)+n`
-/

namespace A340667.P2559732289745525246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A340666 (A046092 n).toNat - (n : ℤ)| + (n : ℤ)

end

end A340667.P2559732289745525246

/-! ## A340667.P5342243699540532490

`A054977(n)*A340666(A046092(n))`
-/

namespace A340667.P5342243699540532490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A340666 (A046092 n).toNat

end

end A340667.P5342243699540532490

/-! ## A340667.P4402549410147244394

`A057427(n)*A340666(A046092(n))`
-/

namespace A340667.P4402549410147244394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A340666 (A046092 n).toNat

end

end A340667.P4402549410147244394

/-! ## A340667.P6274874771062397582

`A178334(n)*A340666(A046092(n))`
-/

namespace A340667.P6274874771062397582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A340666 (A046092 n).toNat

end

end A340667.P6274874771062397582

/-! ## A340667.P7489017613340567782

`lcm(A057077(n), A340666(A046092(n)))`
-/

namespace A340667.P7489017613340567782
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A340666 (A046092 n).toNat)

end

end A340667.P7489017613340567782

/-!
# A340668: The number of overpartitions of n where the number of non-overlined parts is at least two more than the number of overlined parts.

The programs for A340668, there is no canonical definition to state claims against.
-/

/-! ## A340668.P2502565012996122907

`(A340658(n)-A001524(n))%(2^n)`
-/

namespace A340668.P2502565012996122907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340658 n - A001524 n) (2 ^ n : ℤ)

end

end A340668.P2502565012996122907

/-! ## A340668.P13883287192861980609

`A340658(round(sqrt(n²+1)))-A001524(n)`
-/

namespace A340668.P13883287192861980609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340658 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A001524 n

end

end A340668.P13883287192861980609

/-! ## A340668.P9128148578287082526

`A340658(n)+A340659(n)-A143184(n)`
-/

namespace A340668.P9128148578287082526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340658 n + (A340659 n - A143184 n)

end

end A340668.P9128148578287082526

/-! ## A340668.P10727179254937264458

`abs(A001524(n)-A340658(n))%A000045(n+2)`
-/

namespace A340668.P10727179254937264458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A001524 n - A340658 n| (A000045 (n + 2))

end

end A340668.P10727179254937264458

/-! ## A340668.P10728363600310839383

`A340658(n)-A001524(n)-A008683(2*(n+1)²)`
-/

namespace A340668.P10728363600310839383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340658 n - A001524 n - A008683 (2 * (n + 1) ^ 2)

end

end A340668.P10728363600310839383

/-!
# A340669: Permutation of the nonnegative integers formed by negation in complex base i-1.

The programs for A340669, there is no canonical definition to state claims against.
-/

/-! ## A340669.P6861824635582597686

`A175339(lcm(n, A175323(2*(n+2))))`
-/

namespace A340669.P6861824635582597686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175339 (Int.lcm (n : ℤ) (A175323 (2 * (n + 2))))

end

end A340669.P6861824635582597686

/-!
# A340670: Number of complex base i-1 points which can be represented within n bits and negated within those n bits.

The programs for A340670, the canonical program `A340670.P13370847245689160137` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340670 has offset 0).

The definition of A340670 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340670.P13370847245689160137

`a(n-1)+2*a(n-3)+8*a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3, a(4)=5`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A340670

/-- `a(n-1)+2*a(n-3)+8*a(n-5)` -/
def P13370847245689160137.Spec : Prop :=
  ∀ n, (P13370847245689160137.a n : ℤ) = A340670 n

theorem P13370847245689160137.correct : P13370847245689160137.Spec := by
  intro n
  simp only [A340670]

end A340670

/-! ## A340670.P4829968291934355303

`2/5*2^n+1/3*A107920(n+1)+1/15*A078069(n+2)`
-/

namespace A340670.P4829968291934355303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 5 * (2 ^ n : ℚ) + (1 : ℚ) / 3 * (A107920 (n + 1) : ℚ) + (1 : ℚ) / 15 * (A078069 (n + 2) : ℚ)

end

end A340670.P4829968291934355303

namespace A340670

/-- `2/5*2^n+1/3*A107920(n+1)+1/15*A078069(n+2)` -/
def P4829968291934355303.Spec : Prop :=
  ∀ n, P4829968291934355303.a n = (A340670 n : ℚ)

end A340670

/-! ## A340670.P14244190374198745758

`ogf(-1/(-1+x+2x^3+8x^5))`
-/

namespace A340670.P14244190374198745758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -1, 0, -2, 0, -8] n

end

end A340670.P14244190374198745758

namespace A340670

/-- `ogf(-1/(-1+x+2x^3+8x^5))` -/
def P14244190374198745758.Spec : Prop :=
  ∀ n, P14244190374198745758.a n = A340670 n

end A340670

/-! ## A340670.P6638593424162743041

`A325461(or(A038201(n), A074331(n)))`
-/

namespace A340670.P6638593424162743041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325461 (Int.lor (A038201 n) (A074331 n)).toNat

end

end A340670.P6638593424162743041

namespace A340670

/-- `A325461(or(A038201(n), A074331(n)))` -/
def P6638593424162743041.Spec : Prop :=
  ∀ n, P6638593424162743041.a n = A340670 n

end A340670

/-! ## A340670.P10141925624218251213

`or(A160608(n), A354994(A091865(n)))`
-/

namespace A340670.P10141925624218251213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A160608 n) (A354994 (A091865 n).toNat)

end

end A340670.P10141925624218251213

namespace A340670

/-- `or(A160608(n), A354994(A091865(n)))` -/
def P10141925624218251213.Spec : Prop :=
  ∀ n, P10141925624218251213.a n = A340670 n

end A340670

/-!
# A340673: If n is of the form s^(2^e), where s is a squarefree number, and e >= 0, then a(n) is the (1+e)-th prime, otherwise a(n) = 1.

The programs for A340673, the canonical program `A340673.P6199184084049993703` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340673 has offset 1).

The definition of A340673 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340673.P16181292544140011766

`A225546(A340675(n+1))`
-/

namespace A340673.P16181292544140011766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A340675 (n + 1)).toNat

end

end A340673.P16181292544140011766

namespace A340673

/-- `A225546(A340675(n+1))` -/
def P16181292544140011766.Spec : Prop :=
  ∀ n, P16181292544140011766.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P3242589729648111694

`A014963(A293442(n+1))`
-/

namespace A340673.P3242589729648111694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A293442 (n + 1)).toNat

end

end A340673.P3242589729648111694

namespace A340673

/-- `A014963(A293442(n+1))` -/
def P3242589729648111694.Spec : Prop :=
  ∀ n, P3242589729648111694.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P17166543084435564101

`A014963(A318470(n+1))`
-/

namespace A340673.P17166543084435564101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A318470 (n + 1)).toNat

end

end A340673.P17166543084435564101

namespace A340673

/-- `A014963(A318470(n+1))` -/
def P17166543084435564101.Spec : Prop :=
  ∀ n, P17166543084435564101.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P13979076294182341283

`A014963(∏{e}[n+1, A019565(#)])`
-/

namespace A340673.P13979076294182341283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n), A019565 (Nat.factorization (f1 n) p)).toNat

end

end A340673.P13979076294182341283

namespace A340673

/-- `A014963(∏{e}[n+1, A019565(#)])` -/
def P13979076294182341283.Spec : Prop :=
  ∀ n, P13979076294182341283.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P13688947111736287565

`A014963(∏{e}[n+1, A260443(#)])`
-/

namespace A340673.P13688947111736287565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n), A260443 (Nat.factorization (f1 n) p)).toNat

end

end A340673.P13688947111736287565

namespace A340673

/-- `A014963(∏{e}[n+1, A260443(#)])` -/
def P13688947111736287565.Spec : Prop :=
  ∀ n, P13688947111736287565.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P6199184084049993703

`A000005(A340675(n+1)+2)-1`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A340673

/-- `A000005(A340675(n+1)+2)-1` -/
def P6199184084049993703.Spec : Prop :=
  ∀ n, P6199184084049993703.a n = A340673 (n + 1)

theorem P6199184084049993703.correct : P6199184084049993703.Spec := by
  intro n
  simp only [A340673, Nat.add_sub_cancel]

end A340673

/-! ## A340673.P5859265228223019264

`A248420(gcd(n, n+1)*A340676(n+1)+1)`
-/

namespace A340673.P5859265228223019264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248420 ((Nat.gcd n (n + 1) : ℤ) * A340676 (n + 1) + 1).toNat

end

end A340673.P5859265228223019264

namespace A340673

/-- `A248420(gcd(n, n+1)*A340676(n+1)+1)` -/
def P5859265228223019264.Spec : Prop :=
  ∀ n, P5859265228223019264.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P1565342334639355148

`A014963(A293443(A268385(n+1)))`
-/

namespace A340673.P1565342334639355148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A293443 (A268385 (n + 1)).toNat).toNat

end

end A340673.P1565342334639355148

namespace A340673

/-- `A014963(A293443(A268385(n+1)))` -/
def P1565342334639355148.Spec : Prop :=
  ∀ n, P1565342334639355148.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P1140906263856427667

`A059829(2*A340675(n+1))`
-/

namespace A340673.P1140906263856427667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059829 (2 * A340675 (n + 1)).toNat

end

end A340673.P1140906263856427667

namespace A340673

/-- `A059829(2*A340675(n+1))` -/
def P1140906263856427667.Spec : Prop :=
  ∀ n, P1140906263856427667.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P6760951667545344501

`A340676(2^A340675(n+1))`
-/

namespace A340673.P6760951667545344501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A340675 (n + 1) : ℤ))).toNat

end

end A340673.P6760951667545344501

namespace A340673

/-- `A340676(2^A340675(n+1))` -/
def P6760951667545344501.Spec : Prop :=
  ∀ n, P6760951667545344501.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P349256313055561601

`A179926(A340675(n+1)+A340675((n+1)²))`
-/

namespace A340673.P349256313055561601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 (A340675 (n + 1) + A340675 ((n + 1) ^ 2)).toNat

end

end A340673.P349256313055561601

namespace A340673

/-- `A179926(A340675(n+1)+A340675((n+1)²))` -/
def P349256313055561601.Spec : Prop :=
  ∀ n, P349256313055561601.a n = A340673 (n + 1)

end A340673

/-! ## A340673.P15828589545534406970

`A179926((A340675(n+1)+1)*A340675(n+1))`
-/

namespace A340673.P15828589545534406970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179926 ((A340675 (n + 1) + 1) * A340675 (n + 1)).toNat

end

end A340673.P15828589545534406970

namespace A340673

/-- `A179926((A340675(n+1)+1)*A340675(n+1))` -/
def P15828589545534406970.Spec : Prop :=
  ∀ n, P15828589545534406970.a n = A340673 (n + 1)

end A340673

/-!
# A340674: Numbers of the form s^(2^e), where s is a squarefree number, and e >= 1.

The programs for A340674, the canonical program `A340674.P16491084588076078124` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340674 has offset 1).

The definition of A340674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7036 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340674.P9341602084685892497

`(eq[1, A331591(n+1)]+1)²`
-/

namespace A340674.P9341602084685892497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A340674.P9341602084685892497

namespace A340674

/-- `(eq[1, A331591(n+1)]+1)²` -/
def P9341602084685892497.Spec : Prop :=
  ∀ n, (P9341602084685892497.a n : ℤ) = A340674 (n + 1)

end A340674

/-! ## A340674.P7308100408018832832

`(lt[1, A340673(n+1)]+1)²`
-/

namespace A340674.P7308100408018832832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A340674.P7308100408018832832

namespace A340674

/-- `(lt[1, A340673(n+1)]+1)²` -/
def P7308100408018832832.Spec : Prop :=
  ∀ n, (P7308100408018832832.a n : ℤ) = A340674 (n + 1)

end A340674

/-! ## A340674.P17784922630611912510

`(lt[1, A340675(n+1)]+1)²`
-/

namespace A340674.P17784922630611912510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A340674.P17784922630611912510

namespace A340674

/-- `(lt[1, A340675(n+1)]+1)²` -/
def P17784922630611912510.Spec : Prop :=
  ∀ n, (P17784922630611912510.a n : ℤ) = A340674 (n + 1)

end A340674

/-! ## A340674.P2894202227180227747

`record[root((n+2)², A331591(n+2))]`
-/

namespace A340674.P2894202227180227747
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℝ) ^ (1 / (A331591 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340674.P2894202227180227747

namespace A340674

/-- `record[root((n+2)², A331591(n+2))]` -/
def P2894202227180227747.Spec : Prop :=
  ∀ n, P2894202227180227747.a n = (A340674 (n + 1) : ℝ)

end A340674

/-! ## A340674.P8837873175792659318

`(lt[3, A340675(n+1)+2]+1)^A340673(A076403(n+2))`
-/

namespace A340674.P8837873175792659318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) ^ (A340673 (A076403 (n + 2)).toNat : ℤ)

end

end A340674.P8837873175792659318

namespace A340674

/-- `(lt[3, A340675(n+1)+2]+1)^A340673(A076403(n+2))` -/
def P8837873175792659318.Spec : Prop :=
  ∀ n, P8837873175792659318.a n = (A340674 (n + 1) : ℚ)

end A340674

/-! ## A340674.P16491084588076078124

`∩[A062770(n+1), A138302(n+1)]²`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A340674

/-- `∩[A062770(n+1), A138302(n+1)]²` -/
def P16491084588076078124.Spec : Prop :=
  ∀ n, (P16491084588076078124.a n : ℤ) = A340674 (n + 1)

theorem P16491084588076078124.correct : P16491084588076078124.Spec := by
  intro n
  simp only [A340674, Nat.add_sub_cancel]

end A340674

/-! ## A340674.P3225992687602744009

`∩[A062770(n+1), A369938(n+1)]²`
-/

namespace A340674.P3225992687602744009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A340674.P3225992687602744009

namespace A340674

/-- `∩[A062770(n+1), A369938(n+1)]²` -/
def P3225992687602744009.Spec : Prop :=
  ∀ n, (P3225992687602744009.a n : ℤ) = A340674 (n + 1)

end A340674

/-! ## A340674.P16025208049294507151

`A020725(lt[1, A340673(n+1)])²`
-/

namespace A340674.P16025208049294507151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) ^ 2

end

end A340674.P16025208049294507151

namespace A340674

/-- `A020725(lt[1, A340673(n+1)])²` -/
def P16025208049294507151.Spec : Prop :=
  ∀ n, P16025208049294507151.a n = A340674 (n + 1)

end A340674

/-! ## A340674.P969900896571542489

`A000290(lt[1, A340675(n+1)]+1)`
-/

namespace A340674.P969900896571542489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A340674.P969900896571542489

namespace A340674

/-- `A000290(lt[1, A340675(n+1)]+1)` -/
def P969900896571542489.Spec : Prop :=
  ∀ n, P969900896571542489.a n = A340674 (n + 1)

end A340674

/-! ## A340674.P15276476928242805253

`(lt[3, A340675(n+1)+2]+1)^A340673(A285719(2*(n+2)))`
-/

namespace A340674.P15276476928242805253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℚ) ^ (A340673 (A285719 (2 * (n + 2))).toNat : ℤ)

end

end A340674.P15276476928242805253

namespace A340674

/-- `(lt[3, A340675(n+1)+2]+1)^A340673(A285719(2*(n+2)))` -/
def P15276476928242805253.Spec : Prop :=
  ∀ n, P15276476928242805253.a n = (A340674 (n + 1) : ℚ)

end A340674

/-! ## A340674.P17522229736160810699

`eq[1, A331591(A123108(2*n))]²`
-/

namespace A340674.P17522229736160810699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n ^ 2

end

end A340674.P17522229736160810699

namespace A340674

/-- `eq[1, A331591(A123108(2*n))]²` -/
def P17522229736160810699.Spec : Prop :=
  ∀ n, (P17522229736160810699.a n : ℤ) = A340674 (n + 1)

end A340674

/-! ## A340674.P3896875994426886367

`filter[A072777(n+1), A355823(#)]`
-/

namespace A340674.P3896875994426886367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A340674.P3896875994426886367

namespace A340674

/-- `filter[A072777(n+1), A355823(#)]` -/
def P3896875994426886367.Spec : Prop :=
  ∀ n, P3896875994426886367.a n = A340674 (n + 1)

end A340674

/-! ## A340674.P5439561089187260874

`filter[A384517(n+1), A355823(#)]`
-/

namespace A340674.P5439561089187260874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A340674.P5439561089187260874

namespace A340674

/-- `filter[A384517(n+1), A355823(#)]` -/
def P5439561089187260874.Spec : Prop :=
  ∀ n, P5439561089187260874.a n = A340674 (n + 1)

end A340674

/-! ## A340674.P1757023487571601242

`filter[A076292(n+2), A355823(#)]`
-/

namespace A340674.P1757023487571601242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076292 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A340674.P1757023487571601242

namespace A340674

/-- `filter[A076292(n+2), A355823(#)]` -/
def P1757023487571601242.Spec : Prop :=
  ∀ n, P1757023487571601242.a n = A340674 (n + 1)

end A340674

/-! ## A340674.P7904133845632883390

`filter[A317102(n+2), A355823(#)]`
-/

namespace A340674.P7904133845632883390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317102 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A340674.P7904133845632883390

namespace A340674

/-- `filter[A317102(n+2), A355823(#)]` -/
def P7904133845632883390.Spec : Prop :=
  ∀ n, P7904133845632883390.a n = A340674 (n + 1)

end A340674

/-! ## A340674.P4033648998631702691

`record[A011262(A175068(n+2))]`
-/

namespace A340674.P4033648998631702691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A175068 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340674.P4033648998631702691

namespace A340674

/-- `record[A011262(A175068(n+2))]` -/
def P4033648998631702691.Spec : Prop :=
  ∀ n, P4033648998631702691.a n = A340674 (n + 1)

end A340674

/-! ## A340674.P4612310655241937358

`lt[1, A340676(n+1)]+1`
-/

namespace A340674.P4612310655241937358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340674.P4612310655241937358

namespace A340674

/-- `lt[1, A340676(n+1)]+1` -/
def P4612310655241937358.Spec : Prop :=
  ∀ n, (P4612310655241937358.a n : ℤ) = A340674 (n + 1)

end A340674

/-! ## A340674.P17753830244679258074

`lt[2, A340675(n+1)]+1`
-/

namespace A340674.P17753830244679258074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340674.P17753830244679258074

namespace A340674

/-- `lt[2, A340675(n+1)]+1` -/
def P17753830244679258074.Spec : Prop :=
  ∀ n, (P17753830244679258074.a n : ℤ) = A340674 (n + 1)

end A340674

/-!
# A340675: Exponential of Mangoldt function conjugated by Tek's flip: a(n) = A225546(A014963(A225546(n))).

The programs for A340675, the canonical program `A340675.P4314488942714928268` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340675 has offset 1).

The definition of A340675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048298, A267116, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340675.P5949416337280218490

`A225546(A340673(n+1))`
-/

namespace A340675.P5949416337280218490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A340673 (n + 1)).toNat

end

end A340675.P5949416337280218490

namespace A340675

/-- `A225546(A340673(n+1))` -/
def P5949416337280218490.Spec : Prop :=
  ∀ n, P5949416337280218490.a n = A340675 (n + 1)

end A340675

/-! ## A340675.P4314488942714928268

`2^A048298(A267116(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A340675

/-- `2^A048298(A267116(n+1))` -/
def P4314488942714928268.Spec : Prop :=
  ∀ n, P4314488942714928268.a n = (A340675 (n + 1) : ℚ)

end A340675

/-! ## A340675.P17015733747674585882

`A225546(A014963(A293442(n+1)))`
-/

namespace A340675.P17015733747674585882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225546 (A014963 (A293442 (n + 1)).toNat).toNat

end

end A340675.P17015733747674585882

namespace A340675

/-- `A225546(A014963(A293442(n+1)))` -/
def P17015733747674585882.Spec : Prop :=
  ∀ n, P17015733747674585882.a n = A340675 (n + 1)

end A340675

/-! ## A340675.P15157835761413021216

`A016116(A008620(A340673(n+1)²))`
-/

namespace A340675.P15157835761413021216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A008620 (A340673 (n + 1) ^ 2).toNat).toNat

end

end A340675.P15157835761413021216

namespace A340675

/-- `A016116(A008620(A340673(n+1)²))` -/
def P15157835761413021216.Spec : Prop :=
  ∀ n, P15157835761413021216.a n = A340675 (n + 1)

end A340675

/-! ## A340675.P13505467545488661515

`A340673(A340673(n+1))^A052409(n+1)`
-/

namespace A340675.P13505467545488661515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340673 (A340673 (n + 1)).toNat : ℚ) ^ (A052409 (n + 1) : ℤ)

end

end A340675.P13505467545488661515

namespace A340675

/-- `A340673(A340673(n+1))^A052409(n+1)` -/
def P13505467545488661515.Spec : Prop :=
  ∀ n, P13505467545488661515.a n = (A340675 (n + 1) : ℚ)

end A340675

/-! ## A340675.P16977810952816471666

`A169896(A004273(A340673(n+1)²))`
-/

namespace A340675.P16977810952816471666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169896 (A004273 (A340673 (n + 1) ^ 2).toNat).toNat

end

end A340675.P16977810952816471666

namespace A340675

/-- `A169896(A004273(A340673(n+1)²))` -/
def P16977810952816471666.Spec : Prop :=
  ∀ n, P16977810952816471666.a n = A340675 (n + 1)

end A340675

/-! ## A340675.P15031472646872092022

`A000079(A340673(n+1)-A007318(∑[n]))`
-/

namespace A340675.P15031472646872092022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A340673 (n + 1) - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A340675.P15031472646872092022

namespace A340675

/-- `A000079(A340673(n+1)-A007318(∑[n]))` -/
def P15031472646872092022.Spec : Prop :=
  ∀ n, P15031472646872092022.a n = A340675 (n + 1)

end A340675

/-!
# A340676: If n is of the form s^(2^e), where s is a squarefree number, and e >= 0, then a(n) = 1+e, otherwise a(n) = 0.

The programs for A340676, the canonical program `A340676.P4050733827916765010` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340676 has offset 1).

The definition of A340676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340676.P3271917907429932816

`A000720(A340673(n+1))`
-/

namespace A340676.P3271917907429932816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A340673 (n + 1)).toNat

end

end A340676.P3271917907429932816

namespace A340676

/-- `A000720(A340673(n+1))` -/
def P3271917907429932816.Spec : Prop :=
  ∀ n, P3271917907429932816.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P4348566943244472550

`A297109(A293442(n+1))`
-/

namespace A340676.P4348566943244472550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A293442 (n + 1)).toNat

end

end A340676.P4348566943244472550

namespace A340676

/-- `A297109(A293442(n+1))` -/
def P4348566943244472550.Spec : Prop :=
  ∀ n, P4348566943244472550.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P3486282197222497859

`A297109(A318470(n+1))`
-/

namespace A340676.P3486282197222497859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A318470 (n + 1)).toNat

end

end A340676.P3486282197222497859

namespace A340676

/-- `A297109(A318470(n+1))` -/
def P3486282197222497859.Spec : Prop :=
  ∀ n, P3486282197222497859.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P1125699185038142777

`A001221(A340673(n+1)!)`
-/

namespace A340676.P1125699185038142777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A340673 (n + 1)).toNat)

end

end A340676.P1125699185038142777

namespace A340676

/-- `A001221(A340673(n+1)!)` -/
def P1125699185038142777.Spec : Prop :=
  ∀ n, P1125699185038142777.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P10750217230438177882

`A089851(ceil(log(A340675(n+1))))`
-/

namespace A340676.P10750217230438177882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089851 ⌈Real.log (A340675 (n + 1) : ℝ)⌉.toNat

end

end A340676.P10750217230438177882

namespace A340676

/-- `A089851(ceil(log(A340675(n+1))))` -/
def P10750217230438177882.Spec : Prop :=
  ∀ n, P10750217230438177882.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P4050733827916765010

`∑{e}[A340675(n+1), A000005(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A340676

/-- `∑{e}[A340675(n+1), A000005(#)]` -/
def P4050733827916765010.Spec : Prop :=
  ∀ n, P4050733827916765010.a n = A340676 (n + 1)

theorem P4050733827916765010.correct : P4050733827916765010.Spec := by
  intro n
  simp only [A340676, Nat.add_sub_cancel]

end A340676

/-! ## A340676.P10828958156344514243

`A008620(2*A340673(n+1))-1`
-/

namespace A340676.P10828958156344514243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (2 * A340673 (n + 1)).toNat - 1

end

end A340676.P10828958156344514243

namespace A340676

/-- `A008620(2*A340673(n+1))-1` -/
def P10828958156344514243.Spec : Prop :=
  ∀ n, P10828958156344514243.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P12494739523900791768

`A001221(A014963(A293442(n+1))!)`
-/

namespace A340676.P12494739523900791768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A014963 (A293442 (n + 1)).toNat).toNat)

end

end A340676.P12494739523900791768

namespace A340676

/-- `A001221(A014963(A293442(n+1))!)` -/
def P12494739523900791768.Spec : Prop :=
  ∀ n, P12494739523900791768.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P7965360056256298605

`A340673(n+1)-A008620(A340673(n+1)-1)`
-/

namespace A340676.P7965360056256298605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (n + 1) - A008620 (A340673 (n + 1) - 1).toNat

end

end A340676.P7965360056256298605

namespace A340676

/-- `A340673(n+1)-A008620(A340673(n+1)-1)` -/
def P7965360056256298605.Spec : Prop :=
  ∀ n, P7965360056256298605.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P17898225820279641558

`A340673(n+1)-A085269(A340673(n+1)+2)`
-/

namespace A340676.P17898225820279641558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (n + 1) - A085269 (A340673 (n + 1) + 2).toNat

end

end A340676.P17898225820279641558

namespace A340676

/-- `A340673(n+1)-A085269(A340673(n+1)+2)` -/
def P17898225820279641558.Spec : Prop :=
  ∀ n, P17898225820279641558.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P6050272513677121833

`A086362(n)%A340673(n+1)`
-/

namespace A340676.P6050272513677121833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086362 n) (A340673 (n + 1))

end

end A340676.P6050272513677121833

namespace A340676

/-- `A086362(n)%A340673(n+1)` -/
def P6050272513677121833.Spec : Prop :=
  ∀ n, P6050272513677121833.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P11871709304113991070

`A340691(A340675(n+1)+3)`
-/

namespace A340676.P11871709304113991070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340691 (A340675 (n + 1) + 3).toNat

end

end A340676.P11871709304113991070

namespace A340676

/-- `A340691(A340675(n+1)+3)` -/
def P11871709304113991070.Spec : Prop :=
  ∀ n, P11871709304113991070.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P15536725555644586825

`A087207(A308317(A340675(n+1))²)`
-/

namespace A340676.P15536725555644586825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087207 (A308317 (A340675 (n + 1)).toNat ^ 2).toNat

end

end A340676.P15536725555644586825

namespace A340676

/-- `A087207(A308317(A340675(n+1))²)` -/
def P15536725555644586825.Spec : Prop :=
  ∀ n, P15536725555644586825.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P11662308641023031732

`A001221(A000005(A340675(n+1))!)`
-/

namespace A340676.P11662308641023031732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A000005 (A340675 (n + 1)).toNat).toNat)

end

end A340676.P11662308641023031732

namespace A340676

/-- `A001221(A000005(A340675(n+1))!)` -/
def P11662308641023031732.Spec : Prop :=
  ∀ n, P11662308641023031732.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P5130473760674643182

`A077499(n+1)%A340673(n+1)`
-/

namespace A340676.P5130473760674643182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077499 (n + 1)) (A340673 (n + 1))

end

end A340676.P5130473760674643182

namespace A340676

/-- `A077499(n+1)%A340673(n+1)` -/
def P5130473760674643182.Spec : Prop :=
  ∀ n, P5130473760674643182.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P17911572761910449091

`A337428(n+3)%A340673(n+1)`
-/

namespace A340676.P17911572761910449091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337428 (n + 3)) (A340673 (n + 1))

end

end A340676.P17911572761910449091

namespace A340676

/-- `A337428(n+3)%A340673(n+1)` -/
def P17911572761910449091.Spec : Prop :=
  ∀ n, P17911572761910449091.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P12051572700992239315

`A168438(n+1)%A340673(n+1)`
-/

namespace A340676.P12051572700992239315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168438 (n + 1)) (A340673 (n + 1))

end

end A340676.P12051572700992239315

namespace A340676

/-- `A168438(n+1)%A340673(n+1)` -/
def P12051572700992239315.Spec : Prop :=
  ∀ n, P12051572700992239315.a n = A340676 (n + 1)

end A340676

/-! ## A340676.P14364516219481893799

`A188129(n)%A340673(n+1)`
-/

namespace A340676.P14364516219481893799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A188129 n) (A340673 (n + 1))

end

end A340676.P14364516219481893799

namespace A340676

/-- `A188129(n)%A340673(n+1)` -/
def P14364516219481893799.Spec : Prop :=
  ∀ n, P14364516219481893799.a n = A340676 (n + 1)

end A340676

/-!
# A340677: a(n) = A007947(n) / gcd(A007947(n), A008472(n)).

The programs for A340677, the canonical program `A340677.P3063293353114173549` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340677 has offset 1).

The definition of A340677 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340677.P3063293353114173549

`A007947(n+1)/A099636(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340677

/-- `A007947(n+1)/A099636(n+1)` -/
def P3063293353114173549.Spec : Prop :=
  ∀ n, P3063293353114173549.a n = (A340677 (n + 1) : ℚ)

end A340677

/-! ## A340677.P447851021280107576

`A007947(n+1)/gcd(A007947(n+1), A008472(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340677.P447851021280107576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (Int.gcd (A007947 (n + 1)) (A008472 (n + 1)) : ℚ)

end

end A340677.P447851021280107576

namespace A340677

/-- `A007947(n+1)/gcd(A007947(n+1), A008472(n+1))` -/
def P447851021280107576.Spec : Prop :=
  ∀ n, P447851021280107576.a n = (A340677 (n + 1) : ℚ)

end A340677

/-! ## A340677.P2113669639480085249

`A082344(∏{p}[n+1, #])`
-/

namespace A340677.P2113669639480085249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340677.P2113669639480085249

namespace A340677

/-- `A082344(∏{p}[n+1, #])` -/
def P2113669639480085249.Spec : Prop :=
  ∀ n, P2113669639480085249.a n = A340677 (n + 1)

end A340677

/-! ## A340677.P7849261159827311713

`A082344(A007947(n+1))`
-/

namespace A340677.P7849261159827311713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A007947 (n + 1)).toNat

end

end A340677.P7849261159827311713

namespace A340677

/-- `A082344(A007947(n+1))` -/
def P7849261159827311713.Spec : Prop :=
  ∀ n, P7849261159827311713.a n = A340677 (n + 1)

end A340677

/-! ## A340677.P15983025538707277375

`A082344(A334085(n+1))`
-/

namespace A340677.P15983025538707277375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A334085 (n + 1)).toNat

end

end A340677.P15983025538707277375

namespace A340677

/-- `A082344(A334085(n+1))` -/
def P15983025538707277375.Spec : Prop :=
  ∀ n, P15983025538707277375.a n = A340677 (n + 1)

end A340677

/-! ## A340677.P12518272839869071410

`A082344(A340679(n+1))`
-/

namespace A340677.P12518272839869071410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (A340679 (n + 1)).toNat

end

end A340677.P12518272839869071410

namespace A340677

/-- `A082344(A340679(n+1))` -/
def P12518272839869071410.Spec : Prop :=
  ∀ n, P12518272839869071410.a n = A340677 (n + 1)

end A340677

/-!
# A340678: a(n) = A008472(n) / gcd(A007947(n), A008472(n)).

The programs for A340678, the canonical program `A340678.P9299570965818863783` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340678 has offset 1).

The definition of A340678 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340678.P9299570965818863783

`A008472(n+1)/A099636(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340678

/-- `A008472(n+1)/A099636(n+1)` -/
def P9299570965818863783.Spec : Prop :=
  ∀ n, P9299570965818863783.a n = (A340678 (n + 1) : ℚ)

end A340678

/-! ## A340678.P12703885705188943867

`A008472(n+1)/gcd(A007947(n+1), A008472(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340678.P12703885705188943867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) / (Int.gcd (A007947 (n + 1)) (A008472 (n + 1)) : ℚ)

end

end A340678.P12703885705188943867

namespace A340678

/-- `A008472(n+1)/gcd(A007947(n+1), A008472(n+1))` -/
def P12703885705188943867.Spec : Prop :=
  ∀ n, P12703885705188943867.a n = (A340678 (n + 1) : ℚ)

end A340678

/-! ## A340678.P16196954524569622949

`A082343(∏{p}[n+1, #])`
-/

namespace A340678.P16196954524569622949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340678.P16196954524569622949

namespace A340678

/-- `A082343(∏{p}[n+1, #])` -/
def P16196954524569622949.Spec : Prop :=
  ∀ n, P16196954524569622949.a n = A340678 (n + 1)

end A340678

/-! ## A340678.P2438498587404861090

`A082343(A007947(n+1))`
-/

namespace A340678.P2438498587404861090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (A007947 (n + 1)).toNat

end

end A340678.P2438498587404861090

namespace A340678

/-- `A082343(A007947(n+1))` -/
def P2438498587404861090.Spec : Prop :=
  ∀ n, P2438498587404861090.a n = A340678 (n + 1)

end A340678

/-! ## A340678.P6225243337523160184

`A082343(A099636(n+1)*A340677(n+1))`
-/

namespace A340678.P6225243337523160184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (A099636 (n + 1) * A340677 (n + 1)).toNat

end

end A340678.P6225243337523160184

namespace A340678

/-- `A082343(A099636(n+1)*A340677(n+1))` -/
def P6225243337523160184.Spec : Prop :=
  ∀ n, P6225243337523160184.a n = A340678 (n + 1)

end A340678

/-! ## A340678.P14554257406343607178

`A008472(n+1)/A082299(A007947(n+1))`
-/

namespace A340678.P14554257406343607178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) / (A082299 (A007947 (n + 1)).toNat : ℚ)

end

end A340678.P14554257406343607178

namespace A340678

/-- `A008472(n+1)/A082299(A007947(n+1))` -/
def P14554257406343607178.Spec : Prop :=
  ∀ n, P14554257406343607178.a n = (A340678 (n + 1) : ℚ)

end A340678

/-! ## A340678.P2287267668575948442

`A001414(A007947(n+1))/A099636(n+1)`
-/

namespace A340678.P2287267668575948442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A007947 (n + 1)).toNat : ℚ) / (A099636 (n + 1) : ℚ)

end

end A340678.P2287267668575948442

namespace A340678

/-- `A001414(A007947(n+1))/A099636(n+1)` -/
def P2287267668575948442.Spec : Prop :=
  ∀ n, P2287267668575948442.a n = (A340678 (n + 1) : ℚ)

end A340678

/-! ## A340678.P9729385249605489712

`A008472(n+1)/A007947(n+1)*A340677(n+1)`
-/

namespace A340678.P9729385249605489712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ) * (A340677 (n + 1) : ℚ)

end

end A340678.P9729385249605489712

namespace A340678

/-- `A008472(n+1)/A007947(n+1)*A340677(n+1)` -/
def P9729385249605489712.Spec : Prop :=
  ∀ n, P9729385249605489712.a n = (A340678 (n + 1) : ℚ)

end A340678

/-! ## A340678.P3404100238995186148

`A001414(A099636(n+1)*A340677(n+1))/A099636(n+1)`
-/

namespace A340678.P3404100238995186148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A099636 (n + 1) * A340677 (n + 1)).toNat : ℚ) / (A099636 (n + 1) : ℚ)

end

end A340678.P3404100238995186148

namespace A340678

/-- `A001414(A099636(n+1)*A340677(n+1))/A099636(n+1)` -/
def P3404100238995186148.Spec : Prop :=
  ∀ n, P3404100238995186148.a n = (A340678 (n + 1) : ℚ)

end A340678

/-! ## A340678.P858194728961676707

`A008472(n+1)/A007947(A007947(n+1)/A340677(n+1))`
-/

namespace A340678.P858194728961676707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008472 (n + 1) : ℚ) / (A007947 (SequenceMachineLib.roundAway ((A007947 (n + 1) : ℚ) / (A340677 (n + 1) : ℚ))).toNat : ℚ)

end

end A340678.P858194728961676707

namespace A340678

/-- `A008472(n+1)/A007947(A007947(n+1)/A340677(n+1))` -/
def P858194728961676707.Spec : Prop :=
  ∀ n, P858194728961676707.a n = (A340678 (n + 1) : ℚ)

end A340678

/-!
# A340679: If n is a power of prime then a(n) = 1, otherwise a(n) = product of the distinct prime factors of n.

The programs for A340679, the canonical program `A340679.P327405937723677062` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340679 has offset 1).

The definition of A340679 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340679.P327405937723677062

`A007947(n+1)/A014963(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340679

/-- `A007947(n+1)/A014963(n+1)` -/
def P327405937723677062.Spec : Prop :=
  ∀ n, P327405937723677062.a n = (A340679 (n + 1) : ℚ)

end A340679

/-! ## A340679.P2351282798981541579

`A005451(∏{p}[n+1, #])`
-/

namespace A340679.P2351282798981541579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340679.P2351282798981541579

namespace A340679

/-- `A005451(∏{p}[n+1, #])` -/
def P2351282798981541579.Spec : Prop :=
  ∀ n, P2351282798981541579.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P12374360579525498722

`A048671(∏{p}[n+1, #])`
-/

namespace A340679.P12374360579525498722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340679.P12374360579525498722

namespace A340679

/-- `A048671(∏{p}[n+1, #])` -/
def P12374360579525498722.Spec : Prop :=
  ∀ n, P12374360579525498722.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P2673051778482358401

`∏{p}[A074591(n+1), #]`
-/

namespace A340679.P2673051778482358401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A340679.P2673051778482358401

namespace A340679

/-- `∏{p}[A074591(n+1), #]` -/
def P2673051778482358401.Spec : Prop :=
  ∀ n, (P2673051778482358401.a n : ℤ) = A340679 (n + 1)

end A340679

/-! ## A340679.P9825154652067036912

`A144907(∏{p}[n+1, #])`
-/

namespace A340679.P9825154652067036912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340679.P9825154652067036912

namespace A340679

/-- `A144907(∏{p}[n+1, #])` -/
def P9825154652067036912.Spec : Prop :=
  ∀ n, P9825154652067036912.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P4149704055331790138

`A334085(∏{p}[n+1, #])`
-/

namespace A340679.P4149704055331790138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A340679.P4149704055331790138

namespace A340679

/-- `A334085(∏{p}[n+1, #])` -/
def P4149704055331790138.Spec : Prop :=
  ∀ n, P4149704055331790138.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P8082906003796164313

`∏{p}[n+1, #/A014963(2*n+1-n)]`
-/

namespace A340679.P8082906003796164313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) / (A014963 (2 * n + 1 - n) : ℚ)

end

end A340679.P8082906003796164313

namespace A340679

/-- `∏{p}[n+1, #/A014963(2*n+1-n)]` -/
def P8082906003796164313.Spec : Prop :=
  ∀ n, P8082906003796164313.a n = (A340679 (n + 1) : ℚ)

end A340679

/-! ## A340679.P9434551423601293390

`A005451(A007947(n+1))`
-/

namespace A340679.P9434551423601293390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A007947 (n + 1)).toNat

end

end A340679.P9434551423601293390

namespace A340679

/-- `A005451(A007947(n+1))` -/
def P9434551423601293390.Spec : Prop :=
  ∀ n, P9434551423601293390.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P6232261219161885447

`A005451(A334085(n+1))`
-/

namespace A340679.P6232261219161885447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A334085 (n + 1)).toNat

end

end A340679.P6232261219161885447

namespace A340679

/-- `A005451(A334085(n+1))` -/
def P6232261219161885447.Spec : Prop :=
  ∀ n, P6232261219161885447.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P17314528162614057228

`A334085(A052410(n+1))`
-/

namespace A340679.P17314528162614057228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (A052410 (n + 1)).toNat

end

end A340679.P17314528162614057228

namespace A340679

/-- `A334085(A052410(n+1))` -/
def P17314528162614057228.Spec : Prop :=
  ∀ n, P17314528162614057228.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P8728203315417371297

`A334085(A243074(n+1))`
-/

namespace A340679.P8728203315417371297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (A243074 (n + 1)).toNat

end

end A340679.P8728203315417371297

namespace A340679

/-- `A334085(A243074(n+1))` -/
def P8728203315417371297.Spec : Prop :=
  ∀ n, P8728203315417371297.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P17935456368039350196

`A334085(A304776(n+1))`
-/

namespace A340679.P17935456368039350196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (A304776 (n + 1)).toNat

end

end A340679.P17935456368039350196

namespace A340679

/-- `A334085(A304776(n+1))` -/
def P17935456368039350196.Spec : Prop :=
  ∀ n, P17935456368039350196.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P1080768937480615417

`A334085(A327501(n+1))`
-/

namespace A340679.P1080768937480615417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (A327501 (n + 1)).toNat

end

end A340679.P1080768937480615417

namespace A340679

/-- `A334085(A327501(n+1))` -/
def P1080768937480615417.Spec : Prop :=
  ∀ n, P1080768937480615417.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P14261605834164402026

`A334085(A348036(n+1))`
-/

namespace A340679.P14261605834164402026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334085 (A348036 (n + 1)).toNat

end

end A340679.P14261605834164402026

namespace A340679

/-- `A334085(A348036(n+1))` -/
def P14261605834164402026.Spec : Prop :=
  ∀ n, P14261605834164402026.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P2284992294886170953

`gcd(A007947(n+1), A120112(n))`
-/

namespace A340679.P2284992294886170953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007947 (n + 1)) (A120112 n)

end

end A340679.P2284992294886170953

namespace A340679

/-- `gcd(A007947(n+1), A120112(n))` -/
def P2284992294886170953.Spec : Prop :=
  ∀ n, (P2284992294886170953.a n : ℤ) = A340679 (n + 1)

end A340679

/-! ## A340679.P16782821477072823200

`lcm(A226040(n), A324369(n+1))`
-/

namespace A340679.P16782821477072823200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A226040 n) (A324369 (n + 1))

end

end A340679.P16782821477072823200

namespace A340679

/-- `lcm(A226040(n), A324369(n+1))` -/
def P16782821477072823200.Spec : Prop :=
  ∀ n, (P16782821477072823200.a n : ℤ) = A340679 (n + 1)

end A340679

/-! ## A340679.P8015996570857010500

`A076618(n+1)-A014963(n+1)`
-/

namespace A340679.P8015996570857010500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076618 (n + 1) - A014963 (n + 1)

end

end A340679.P8015996570857010500

namespace A340679

/-- `A076618(n+1)-A014963(n+1)` -/
def P8015996570857010500.Spec : Prop :=
  ∀ n, P8015996570857010500.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P174832261159274791

`A048671(n+1)/A003557(n+1)`
-/

namespace A340679.P174832261159274791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048671 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A340679.P174832261159274791

namespace A340679

/-- `A048671(n+1)/A003557(n+1)` -/
def P174832261159274791.Spec : Prop :=
  ∀ n, P174832261159274791.a n = (A340679 (n + 1) : ℚ)

end A340679

/-! ## A340679.P2285371872090033254

`A144907((n+1)/A003557(n+1))`
-/

namespace A340679.P2285371872090033254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144907 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A340679.P2285371872090033254

namespace A340679

/-- `A144907((n+1)/A003557(n+1))` -/
def P2285371872090033254.Spec : Prop :=
  ∀ n, P2285371872090033254.a n = A340679 (n + 1)

end A340679

/-! ## A340679.P2461848007892323530

`A064549(n+1)/A140580(n+1)`
-/

namespace A340679.P2461848007892323530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A140580 (n + 1) : ℚ)

end

end A340679.P2461848007892323530

namespace A340679

/-- `A064549(n+1)/A140580(n+1)` -/
def P2461848007892323530.Spec : Prop :=
  ∀ n, P2461848007892323530.a n = (A340679 (n + 1) : ℚ)

end A340679

/-!
# A340680: Lexicographically earliest infinite sequence such that a(i) = a(j) => A007814(1+i) = A007814(1+j) and A292251(i) = A292251(j), for all i, j >= 1.

The programs for A340680, there is no canonical definition to state claims against.
-/

/-! ## A340680.P4174413408871513538

`A091227(n+1)+A086412(A210209(3*(n+1)))`
-/

namespace A340680.P4174413408871513538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091227 (n + 1) + A086412 (A210209 (3 * (n + 1))).toNat

end

end A340680.P4174413408871513538

/-!
# A340681: The closure under squaring of A051144, the nonsquarefree nonsquares.

The programs for A340681, there is no canonical definition to state claims against.
-/

/-! ## A340681.P14428888051098976536

`lt[1, A331591(n+1)]+1`
-/

namespace A340681.P14428888051098976536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340681.P14428888051098976536

/-! ## A340681.P8997538121925090901

`eq[1, A340673(n+2)]+2`
-/

namespace A340681.P8997538121925090901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A340681.P8997538121925090901

/-! ## A340681.P5484550171621887159

`eq[1, A340675(n+2)]+2`
-/

namespace A340681.P5484550171621887159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A340681.P5484550171621887159

/-! ## A340681.P3266181683852094500

`lt[A340676(n+2), 1]+2`
-/

namespace A340681.P3266181683852094500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A340681.P3266181683852094500

/-! ## A340681.P6732990121187593024

`eq[0, A340676(n+4)]+4`
-/

namespace A340681.P6732990121187593024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4

end

end A340681.P6732990121187593024

/-! ## A340681.P8121331266769881283

`lt[A340675(round(acot(n)+n)), 2]`
-/

namespace A340681.P8121331266769881283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A340681.P8121331266769881283

/-! ## A340681.P5406455619137249392

`lt[A340673(n+1)^16, n]+1`
-/

namespace A340681.P5406455619137249392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (n + 1) ^ 16

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A340681.P5406455619137249392

/-! ## A340681.P10747309161119667641

`lt[1, A331591(A028310(n))]`
-/

namespace A340681.P10747309161119667641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A340681.P10747309161119667641

/-! ## A340681.P16230893829348934402

`eq[0, A340676(A233583(n+1))]`
-/

namespace A340681.P16230893829348934402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340681.P16230893829348934402

/-! ## A340681.P8983685601862168783

`∪[A036330(n+1), A051144(n+1)]`
-/

namespace A340681.P8983685601862168783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340681.P8983685601862168783

/-!
# A340682: The closure under squaring of the nonunit squarefree numbers.

The programs for A340682, there is no canonical definition to state claims against.
-/

/-! ## A340682.P10232374217127616098

`sqrt(A340674(n+1))`
-/

namespace A340682.P10232374217127616098
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A340674 (n + 1) : ℝ)

end

end A340682.P10232374217127616098

/-! ## A340682.P1228628681617267803

`eq[1, A331591(n+1)]+1`
-/

namespace A340682.P1228628681617267803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340682.P1228628681617267803

/-! ## A340682.P5918837305201237147

`lt[0, A340676(n+1)]+1`
-/

namespace A340682.P5918837305201237147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340682.P5918837305201237147

/-! ## A340682.P11982506108258445445

`lt[1, A340673(n+1)]+1`
-/

namespace A340682.P11982506108258445445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340682.P11982506108258445445

/-! ## A340682.P6106747273902749864

`lt[1, A340675(n+1)]+1`
-/

namespace A340682.P6106747273902749864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340675 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340682.P6106747273902749864

/-! ## A340682.P16784654893065427838

`eq[2, A001221(∏{e}[n, xor(14, #)])]`
-/

namespace A340682.P16784654893065427838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f3 n), Nat.xor 14 (Nat.factorization (f3 n) p))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340682.P16784654893065427838

/-! ## A340682.P10775833956831506264

`eq[1, A331591(n^ceil(atan(n)))]`
-/

namespace A340682.P10775833956831506264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331591 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340682.P10775833956831506264

/-! ## A340682.P12964542491172844469

`comp[A340681(n+1)-2]+2`
-/

namespace A340682.P12964542491172844469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340681 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A340682.P12964542491172844469

/-! ## A340682.P17436881875176516327

`record[root(n+2, A331591(n+2))]`
-/

namespace A340682.P17436881875176516327
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (1 / (A331591 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340682.P17436881875176516327

/-! ## A340682.P14887748036272757742

`A020725(lt[1, A340673(n+1)])`
-/

namespace A340682.P14887748036272757742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340682.P14887748036272757742

/-!
# A340683: a(n) = A007949((A003961(A003961(n))+1)/2), where A003961 shifts the prime factorization of n one step towards larger primes, and A007949(x) gives the exponent of largest power of 3 dividing x.

The programs for A340683, the canonical program `A340683.P1232196713619969114` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340683 has offset 1).

The definition of A340683 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340683.P14016071332751559059

`A292251(A003961(n+1))`
-/

namespace A340683.P14016071332751559059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A003961 (n + 1)).toNat

end

end A340683.P14016071332751559059

namespace A340683

/-- `A292251(A003961(n+1))` -/
def P14016071332751559059.Spec : Prop :=
  ∀ n, P14016071332751559059.a n = A340683 (n + 1)

end A340683

/-! ## A340683.P1232196713619969114

`A007949((A003961(A003961(n+1))+1)/2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A340683

/-- `A007949((A003961(A003961(n+1))+1)/2)` -/
def P1232196713619969114.Spec : Prop :=
  ∀ n, P1232196713619969114.a n = A340683 (n + 1)

theorem P1232196713619969114.correct : P1232196713619969114.Spec := by
  intro n
  simp only [A340683, Nat.add_sub_cancel]

end A340683

/-! ## A340683.P14656814602252282591

`A007949(A003961(A003961(n+1))+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340683.P14656814602252282591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A003961 (A003961 (n + 1)).toNat + 1).toNat

end

end A340683.P14656814602252282591

namespace A340683

/-- `A007949(A003961(A003961(n+1))+1)` -/
def P14656814602252282591.Spec : Prop :=
  ∀ n, P14656814602252282591.a n = A340683 (n + 1)

end A340683

/-! ## A340683.P5968411650257273975

`A292251(A045965(n+1))`
-/

namespace A340683.P5968411650257273975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A045965 (n + 1)).toNat

end

end A340683.P5968411650257273975

namespace A340683

/-- `A292251(A045965(n+1))` -/
def P5968411650257273975.Spec : Prop :=
  ∀ n, P5968411650257273975.a n = A340683 (n + 1)

end A340683

/-! ## A340683.P680089471373347882

`A292251(A253885(n)+1)`
-/

namespace A340683.P680089471373347882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A253885 n + 1).toNat

end

end A340683.P680089471373347882

namespace A340683

/-- `A292251(A253885(n)+1)` -/
def P680089471373347882.Spec : Prop :=
  ∀ n, P680089471373347882.a n = A340683 (n + 1)

end A340683

/-! ## A340683.P728168531444611546

`A292251(A243501(n+1)-1)`
-/

namespace A340683.P728168531444611546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A243501 (n + 1) - 1).toNat

end

end A340683.P728168531444611546

namespace A340683

/-- `A292251(A243501(n+1)-1)` -/
def P728168531444611546.Spec : Prop :=
  ∀ n, P728168531444611546.a n = A340683 (n + 1)

end A340683

/-! ## A340683.P16725664271066572507

`A292251(2*A048673(n+1)-1)`
-/

namespace A340683.P16725664271066572507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (2 * A048673 (n + 1) - 1).toNat

end

end A340683.P16725664271066572507

namespace A340683

/-- `A292251(2*A048673(n+1)-1)` -/
def P16725664271066572507.Spec : Prop :=
  ∀ n, P16725664271066572507.a n = A340683 (n + 1)

end A340683

/-! ## A340683.P3271881309465393850

`A292251(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A340683.P3271881309465393850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A340683.P3271881309465393850

namespace A340683

/-- `A292251(A048673(n+1)+A048673(n+1)-1)` -/
def P3271881309465393850.Spec : Prop :=
  ∀ n, P3271881309465393850.a n = A340683 (n + 1)

end A340683

/-! ## A340683.P15638441306109667835

`val(A048673(A253885(n)+1), 3)`
-/

namespace A340683.P15638441306109667835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048673 (A253885 n + 1).toNat).toNat 3

end

end A340683.P15638441306109667835

namespace A340683

/-- `val(A048673(A253885(n)+1), 3)` -/
def P15638441306109667835.Spec : Prop :=
  ∀ n, (P15638441306109667835.a n : ℤ) = A340683 (n + 1)

end A340683

/-! ## A340683.P12829256848723655338

`A292252(2*A003961(n+1))-1`
-/

namespace A340683.P12829256848723655338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292252 (2 * A003961 (n + 1)).toNat - 1

end

end A340683.P12829256848723655338

namespace A340683

/-- `A292252(2*A003961(n+1))-1` -/
def P12829256848723655338.Spec : Prop :=
  ∀ n, P12829256848723655338.a n = A340683 (n + 1)

end A340683

/-! ## A340683.P2499745648834371012

`val(A048673(A297166(2*(n+1))), 3)`
-/

namespace A340683.P2499745648834371012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048673 (A297166 (2 * (n + 1))).toNat).toNat 3

end

end A340683.P2499745648834371012

namespace A340683

/-- `val(A048673(A297166(2*(n+1))), 3)` -/
def P2499745648834371012.Spec : Prop :=
  ∀ n, (P2499745648834371012.a n : ℤ) = A340683 (n + 1)

end A340683

/-! ## A340683.P7356281999509082468

`val(A048673(2*A048673(n+1)-1), 3)`
-/

namespace A340683.P7356281999509082468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048673 (2 * A048673 (n + 1) - 1).toNat).toNat 3

end

end A340683.P7356281999509082468

namespace A340683

/-- `val(A048673(2*A048673(n+1)-1), 3)` -/
def P7356281999509082468.Spec : Prop :=
  ∀ n, (P7356281999509082468.a n : ℤ) = A340683 (n + 1)

end A340683

/-! ## A340683.P12181420489625375837

`val(A048673(round(A246676(4*n+2)/3)), 3)`
-/

namespace A340683.P12181420489625375837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048673 (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3)).toNat).toNat 3

end

end A340683.P12181420489625375837

namespace A340683

/-- `val(A048673(round(A246676(4*n+2)/3)), 3)` -/
def P12181420489625375837.Spec : Prop :=
  ∀ n, (P12181420489625375837.a n : ℤ) = A340683 (n + 1)

end A340683

/-! ## A340683.P13508233953045701645

`val(A048673(A252748(n+1)+2*(n+1)), 3)`
-/

namespace A340683.P13508233953045701645
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048673 (A252748 (n + 1) + (2 * (n + 1) : ℤ)).toNat).toNat 3

end

end A340683.P13508233953045701645

namespace A340683

/-- `val(A048673(A252748(n+1)+2*(n+1)), 3)` -/
def P13508233953045701645.Spec : Prop :=
  ∀ n, (P13508233953045701645.a n : ℤ) = A340683 (n + 1)

end A340683

/-! ## A340683.P17876591306941379282

`A168570(A249824(n+1))`
-/

namespace A340683.P17876591306941379282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (A249824 (n + 1)).toNat

end

end A340683.P17876591306941379282

namespace A340683

/-- `A168570(A249824(n+1))` -/
def P17876591306941379282.Spec : Prop :=
  ∀ n, P17876591306941379282.a n = A340683 (n + 1)

end A340683

/-!
# A340685: The number of regions inside a concave circular triangle formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A340685, there is no canonical definition to state claims against.
-/

/-! ## A340685.P17387298707535675126

`A340687(n+1)+1-A340686(n+1)`
-/

namespace A340685.P17387298707535675126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340687 (n + 1) + (1 - A340686 (n + 1))

end

end A340685.P17387298707535675126

/-! ## A340685.P6448471701186049443

`A340687(n+1)+A024000(A340686(n+1))`
-/

namespace A340685.P6448471701186049443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340687 (n + 1) + A024000 (A340686 (n + 1)).toNat

end

end A340685.P6448471701186049443

/-!
# A340686: The number of vertices on a concave circular triangle formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A340686, there is no canonical definition to state claims against.
-/

/-! ## A340686.P14086962523707186771

`A340687(n+1)+1-A340685(n+1)`
-/

namespace A340686.P14086962523707186771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340687 (n + 1) + (1 - A340685 (n + 1))

end

end A340686.P14086962523707186771

/-! ## A340686.P4366731451154650085

`A340687(n+1)+A024000(A340685(n+1))`
-/

namespace A340686.P4366731451154650085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340687 (n + 1) + A024000 (A340685 (n + 1)).toNat

end

end A340686.P4366731451154650085

/-! ## A340686.P1421965726279676027

`A020725(A340687(n+1)-A340685(n+1))`
-/

namespace A340686.P1421965726279676027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A340687 (n + 1) - A340685 (n + 1)).toNat

end

end A340686.P1421965726279676027

/-! ## A340686.P2488966446525396737

`A065475(A340687(n+1)-A340685(n+1))`
-/

namespace A340686.P2488966446525396737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A340687 (n + 1) - A340685 (n + 1)).toNat

end

end A340686.P2488966446525396737

/-!
# A340687: The number of edges on a concave circular triangle formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A340687, there is no canonical definition to state claims against.
-/

/-! ## A340687.P7701965893136079825

`A340685(n+1)+A340686(n+1)-1`
-/

namespace A340687.P7701965893136079825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340685 (n + 1) + (A340686 (n + 1) - 1)

end

end A340687.P7701965893136079825

/-! ## A340687.P1243954048644548949

`A340685(n+1)+A023443(A340686(n+1))`
-/

namespace A340687.P1243954048644548949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340685 (n + 1) + A023443 (A340686 (n + 1)).toNat

end

end A340687.P1243954048644548949

/-!
# A340689: Numbers with a factorization of length 2^k into factors > 1, where k is the greatest factor.

The programs for A340689, there is no canonical definition to state claims against.
-/

/-! ## A340689.P1845356775879840624

`A057335(eq[A023416(n), A151787(n+1)])`
-/

namespace A340689.P1845356775879840624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340689.P1845356775879840624

/-! ## A340689.P11162268286064656040

`A284005(eq[A023416(n), A151787(n+1)])`
-/

namespace A340689.P11162268286064656040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151787 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340689.P11162268286064656040

/-!
# A340690: Numbers with a factorization whose greatest factor is 2^k, where k is the number of factors.

The programs for A340690, there is no canonical definition to state claims against.
-/

/-! ## A340690.P15270759160634653231

`record[A344834(A139827(3*n+2))]`
-/

namespace A340690.P15270759160634653231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344834 (A139827 (3 * n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340690.P15270759160634653231

/-! ## A340690.P7374377743119224167

`record[A062011(A249670(n+1))]`
-/

namespace A340690.P7374377743119224167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A249670 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340690.P7374377743119224167

/-! ## A340690.P15237546113512025666

`2*A000005(A363333(n+1))`
-/

namespace A340690.P15237546113512025666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A363333 (n + 1)).toNat

end

end A340690.P15237546113512025666

/-! ## A340690.P1863986454744378950

`record[A120680(n+1)*A287240(n+1)]`
-/

namespace A340690.P1863986454744378950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120680 (n + 1) * A287240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340690.P1863986454744378950

/-! ## A340690.P14798454005716533311

`A372785(A363333(n+1))`
-/

namespace A340690.P14798454005716533311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372785 (A363333 (n + 1)).toNat

end

end A340690.P14798454005716533311

/-!
# A340691: Greatest image of A001222 over the prime indices of n.

The programs for A340691, there is no canonical definition to state claims against.
-/

/-! ## A340691.P14354179138120923575

`A355742(char[2^n-1]+∏{p}[2*(n+1), #]/2)`
-/

namespace A340691.P14354179138120923575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355742 (SequenceMachineLib.roundAway (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) + ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / 2)).toNat

end

end A340691.P14354179138120923575

/-! ## A340691.P11118164117886853939

`∑{e}[A061395(2*(n+1)*A055396(n+7)), #]`
-/

namespace A340691.P11118164117886853939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 ((2 * (n + 1) : ℤ) * A055396 (n + 7)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A340691.P11118164117886853939

/-! ## A340691.P11891307070152694989

`A001222(A061395((n+1)*A055396(n+7)))`
-/

namespace A340691.P11891307070152694989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061395 ((n + 1 : ℤ) * A055396 (n + 7)).toNat).toNat

end

end A340691.P11891307070152694989

/-! ## A340691.P2671759053984424471

`A001222(A061395(n+1)+char[A302382(n+1)])`
-/

namespace A340691.P2671759053984424471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302382 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061395 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A340691.P2671759053984424471

/-! ## A340691.P1432248461083423133

`A001222(A240467(3*n+4)+A061395(n+1))`
-/

namespace A340691.P1432248461083423133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A240467 (3 * n + 4) + A061395 (n + 1)).toNat

end

end A340691.P1432248461083423133

/-! ## A340691.P9572505201472828056

`A073093(A156061(n+1))-A156061(A048669(n+1))`
-/

namespace A340691.P9572505201472828056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (A156061 (n + 1)).toNat - A156061 (A048669 (n + 1)).toNat

end

end A340691.P9572505201472828056

/-! ## A340691.P437586280796550812

`∑{e}[A061395(n+1), #%A004438(n+1)]`
-/

namespace A340691.P437586280796550812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Int.tmod (Nat.factorization (f1 n).natAbs p : ℤ) (A004438 (n + 1))

end

end A340691.P437586280796550812

/-! ## A340691.P8297947243386083993

`A302242(A299766(n+1))%A351489(n+2)`
-/

namespace A340691.P8297947243386083993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302242 (A299766 (n + 1)).toNat) (A351489 (n + 2))

end

end A340691.P8297947243386083993

/-! ## A340691.P7097104360515919417

`A302242(A006530(n+1))%A167178(A106249(n))`
-/

namespace A340691.P7097104360515919417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302242 (A006530 (n + 1)).toNat) (A167178 (A106249 n).toNat)

end

end A340691.P7097104360515919417

/-! ## A340691.P15619923021211616385

`A387879(A327076(n+1))`
-/

namespace A340691.P15619923021211616385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387879 (A327076 (n + 1)).toNat

end

end A340691.P15619923021211616385

/-!
# A340692: Number of integer partitions of n of odd rank.

The programs for A340692, there is no canonical definition to state claims against.
-/

/-! ## A340692.P10912746191768904709

`2*A101707(n)`
-/

namespace A340692.P10912746191768904709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A101707 n

end

end A340692.P10912746191768904709

/-! ## A340692.P3856505370371381566

`A340601(n)-A000025(n)`
-/

namespace A340692.P3856505370371381566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340601 n - A000025 n

end

end A340692.P3856505370371381566

/-! ## A340692.P7410982069258736117

`A000041(n)-A340601(n)`
-/

namespace A340692.P7410982069258736117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A340601 n

end

end A340692.P7410982069258736117

/-! ## A340692.P11353239781764406991

`∑[A002865(n)]-A340601(n)`
-/

namespace A340692.P11353239781764406991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A340601 n

end

end A340692.P11353239781764406991

/-! ## A340692.P14080232300946060811

`A035363(2*n)-A340601(n)`
-/

namespace A340692.P14080232300946060811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A340601 n

end

end A340692.P14080232300946060811

/-! ## A340692.P1833953240815576880

`(A000041(n)-A000025(n))/2`
-/

namespace A340692.P1833953240815576880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000041 n - A000025 n : ℚ) / 2

end

end A340692.P1833953240815576880

/-! ## A340692.P3565906516740656077

`A139582(n)/2-A340601(n)`
-/

namespace A340692.P3565906516740656077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A340601 n : ℚ)

end

end A340692.P3565906516740656077

/-! ## A340692.P12147025006635399284

`A103923(∑[n])-A340601(n)`
-/

namespace A340692.P12147025006635399284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (∑ j ∈ Finset.range (n + 1), f1 j) - A340601 n

end

end A340692.P12147025006635399284

/-!
# A340695: a(n) is the next perfect power after the earliest occurrence of n consecutive perfect powers, all of which are squares with exponents equal to 2.

The programs for A340695, there is no canonical definition to state claims against.
-/

/-! ## A340695.P15916096069321969503

`A077107(A340663(n+1))`
-/

namespace A340695.P15916096069321969503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 (A340663 (n + 1)).toNat

end

end A340695.P15916096069321969503

/-! ## A340695.P4705398844291236787

`A077107(A340664(n+1))`
-/

namespace A340695.P4705398844291236787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 (A340664 (n + 1)).toNat

end

end A340695.P4705398844291236787

/-! ## A340695.P15915061454034869528

`A077107(sqrt(A340661(n+1))+n)`
-/

namespace A340695.P15915061454034869528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077107 (SequenceMachineLib.roundAway (Real.sqrt (A340661 (n + 1) : ℝ) + (n : ℝ))).toNat

end

end A340695.P15915061454034869528

/-! ## A340695.P14233952675452058416

`A340661(n+1)+A070923(A340663(n+1))`
-/

namespace A340695.P14233952675452058416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340661 (n + 1) + A070923 (A340663 (n + 1)).toNat

end

end A340695.P14233952675452058416

/-! ## A340695.P8971029474797753497

`A340662(n+1)+A070923(A340664(n+1))`
-/

namespace A340695.P8971029474797753497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340662 (n + 1) + A070923 (A340664 (n + 1)).toNat

end

end A340695.P8971029474797753497

/-!
# A340698: a(n) is the position of n^2 in the list of perfect powers.

The programs for A340698, there is no canonical definition to state claims against.
-/

/-! ## A340698.P10496711857259509609

`a(n-1)+A117896(n)+1` with `a(0)=1`
-/

namespace A340698.P10496711857259509609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A117896 n + 1)

end

end A340698.P10496711857259509609

/-! ## A340698.P4206156358456856156

`∑[A117896(n+1)+1]-A117896(n+1)`
-/

namespace A340698.P4206156358456856156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117896 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A117896 (n + 1)

end

end A340698.P4206156358456856156

/-! ## A340698.P1483211461977945645

`eq[2, A072814(n+1)]+1`
-/

namespace A340698.P1483211461977945645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072814 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340698.P1483211461977945645

/-! ## A340698.P16614970901774529347

`record[(-1)^A157986(n+1)+n]`
-/

namespace A340698.P16614970901774529347
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A157986 (n + 1) : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340698.P16614970901774529347

/-! ## A340698.P11462455661828719837

`eq[2, A020639(A025479(n+1))]+1`
-/

namespace A340698.P11462455661828719837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A025479 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340698.P11462455661828719837

/-! ## A340698.P201941575981663812

`record[n+1-A072068(2*A025479(n+1))]`
-/

namespace A340698.P201941575981663812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A072068 (2 * A025479 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340698.P201941575981663812

/-! ## A340698.P17521966521652594630

`eq[1, and(1, A000005(A001597(n+1)))]+1`
-/

namespace A340698.P17521966521652594630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000005 (A001597 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A340698.P17521966521652594630

/-! ## A340698.P15398796990376003974

`A069623((n+1)²)`
-/

namespace A340698.P15398796990376003974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 ((n + 1) ^ 2)

end

end A340698.P15398796990376003974

/-! ## A340698.P7882953970613667505

`A072292((n+1)²)+1`
-/

namespace A340698.P7882953970613667505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 ((n + 1) ^ 2) + 1

end

end A340698.P7882953970613667505

/-! ## A340698.P14769962593523180228

`record[A069623(n+1)/A133823(n)]`
-/

namespace A340698.P14769962593523180228
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069623 (n + 1) : ℚ) / (A133823 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340698.P14769962593523180228

/-! ## A340698.P2130433137168179894

`A065515(A000961(A069623((n+1)*(n+1))))`
-/

namespace A340698.P2130433137168179894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A000961 (A069623 ((n + 1) * (n + 1))).toNat).toNat

end

end A340698.P2130433137168179894

/-!
# A340699: a(n) is the position of n^3 in the list of perfect powers.

The programs for A340699, there is no canonical definition to state claims against.
-/

/-! ## A340699.P11933963149900883416

`A069623(Δ[∑[n]²])`
-/

namespace A340699.P11933963149900883416
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A340699.P11933963149900883416

/-! ## A340699.P1366643731107972393

`A076411(Δ[∑[n]²]+1)`
-/

namespace A340699.P1366643731107972393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A340699.P1366643731107972393

/-! ## A340699.P2090887208255445870

`A072292((n+1)^3)+1`
-/

namespace A340699.P2090887208255445870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 ((n + 1) ^ 3) + 1

end

end A340699.P2090887208255445870

/-! ## A340699.P13787955502302820397

`A076411((n+1)^3)+1`
-/

namespace A340699.P13787955502302820397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 ((n + 1) ^ 3) + 1

end

end A340699.P13787955502302820397

/-! ## A340699.P2560197671706352620

`record[A069623(A133823(n))]`
-/

namespace A340699.P2560197671706352620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A133823 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340699.P2560197671706352620

