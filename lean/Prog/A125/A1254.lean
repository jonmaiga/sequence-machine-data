import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B013.C000
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A125401: Number of base 13 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125401, there is no canonical definition to state claims against.
-/

/-! ## A125401.P7888652153146202672

`A273943(A125402(n)-A125400(n))+A125400(n)`
-/

namespace A125401.P7888652153146202672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125402 n - A125400 n).toNat + A125400 n

end

end A125401.P7888652153146202672

/-!
# A125402: Number of base 14 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125402, there is no canonical definition to state claims against.
-/

/-! ## A125402.P14415360779449280156

`A273943(A125404(n)-A125400(n))+A125400(n)`
-/

namespace A125402.P14415360779449280156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125404 n - A125400 n).toNat + A125400 n

end

end A125402.P14415360779449280156

/-!
# A125403: Number of base 15 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125403, there is no canonical definition to state claims against.
-/

/-! ## A125403.P13547707259235303150

`A273943(A125402(n)-A125400(n))+A125402(n)`
-/

namespace A125403.P13547707259235303150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125402 n - A125400 n).toNat + A125402 n

end

end A125403.P13547707259235303150

/-!
# A125404: Number of base 16 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125404, there is no canonical definition to state claims against.
-/

/-! ## A125404.P13133283698802393299

`A125405(n)-A273943(A125407(n)-A125405(n))`
-/

namespace A125404.P13133283698802393299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125405 n - A273943 (A125407 n - A125405 n).toNat

end

end A125404.P13133283698802393299

/-!
# A125405: Number of base 17 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125405, there is no canonical definition to state claims against.
-/

/-! ## A125405.P1512001355560932112

`A000265(A125406(n)+A125404(n))`
-/

namespace A125405.P1512001355560932112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125406 n + A125404 n).toNat

end

end A125405.P1512001355560932112

/-!
# A125406: Number of base 18 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125406, there is no canonical definition to state claims against.
-/

/-! ## A125406.P6617270808981190341

`A273943(A125404(n)-A125400(n))+A125404(n)`
-/

namespace A125406.P6617270808981190341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125404 n - A125400 n).toNat + A125404 n

end

end A125406.P6617270808981190341

/-! ## A125406.P3775087614482069527

`A273943(A125407(n)-A125405(n))+A125405(n)`
-/

namespace A125406.P3775087614482069527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125407 n - A125405 n).toNat + A125405 n

end

end A125406.P3775087614482069527

/-!
# A125407: Number of base 19 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125407, there is no canonical definition to state claims against.
-/

/-! ## A125407.P9833579349934668446

`A000265(A125408(n)+A125406(n))`
-/

namespace A125407.P9833579349934668446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125408 n + A125406 n).toNat

end

end A125407.P9833579349934668446

/-!
# A125408: Number of base 20 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125408, there is no canonical definition to state claims against.
-/

/-! ## A125408.P18317319693796757174

`A273943(A125407(n)-A125405(n))+A125407(n)`
-/

namespace A125408.P18317319693796757174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125407 n - A125405 n).toNat + A125407 n

end

end A125408.P18317319693796757174

/-! ## A125408.P5152998644869912698

`A273943(A125411(n)-A125405(n))+A125405(n)`
-/

namespace A125408.P5152998644869912698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125411 n - A125405 n).toNat + A125405 n

end

end A125408.P5152998644869912698

/-!
# A125409: Number of base 21 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125409, there is no canonical definition to state claims against.
-/

/-! ## A125409.P2346718045355133451

`A000265(A125410(n)+A125408(n))`
-/

namespace A125409.P2346718045355133451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125410 n + A125408 n).toNat

end

end A125409.P2346718045355133451

/-!
# A125410: Number of base 22 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125410, there is no canonical definition to state claims against.
-/

/-! ## A125410.P14215939158314265277

`A273943(A125412(n)-A125408(n))+A125408(n)`
-/

namespace A125410.P14215939158314265277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125412 n - A125408 n).toNat + A125408 n

end

end A125410.P14215939158314265277

/-!
# A125411: Number of base 23 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125411, there is no canonical definition to state claims against.
-/

/-! ## A125411.P3487812474760148844

`A000265(A125412(n)+A125410(n))`
-/

namespace A125411.P3487812474760148844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125412 n + A125410 n).toNat

end

end A125411.P3487812474760148844

/-!
# A125412: Number of base 24 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125412, there is no canonical definition to state claims against.
-/

/-! ## A125412.P3445639483947255979

`A273943(A125417(n)+A125407(n))`
-/

namespace A125412.P3445639483947255979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125417 n + A125407 n).toNat

end

end A125412.P3445639483947255979

/-!
# A125413: Number of base 25 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125413, there is no canonical definition to state claims against.
-/

/-! ## A125413.P9887410324824769007

`A000265(A125414(n)+A125412(n))`
-/

namespace A125413.P9887410324824769007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125414 n + A125412 n).toNat

end

end A125413.P9887410324824769007

/-!
# A125414: Number of base 26 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125414, there is no canonical definition to state claims against.
-/

/-! ## A125414.P11526273528168141262

`A273943(A125411(n)-A125405(n))+A125411(n)`
-/

namespace A125414.P11526273528168141262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125411 n - A125405 n).toNat + A125411 n

end

end A125414.P11526273528168141262

/-! ## A125414.P5518219571749305140

`A273943(A125412(n)-A125408(n))+A125412(n)`
-/

namespace A125414.P5518219571749305140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125412 n - A125408 n).toNat + A125412 n

end

end A125414.P5518219571749305140

/-!
# A125415: Number of base 27 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125415, there is no canonical definition to state claims against.
-/

/-! ## A125415.P12861192443576270444

`A000265(A125416(n)+A125414(n))`
-/

namespace A125415.P12861192443576270444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125416 n + A125414 n).toNat

end

end A125415.P12861192443576270444

/-!
# A125417: Number of base 29 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125417, there is no canonical definition to state claims against.
-/

/-! ## A125417.P6964405473396927463

`A000265(A125418(n)+A125416(n))`
-/

namespace A125417.P6964405473396927463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125418 n + A125416 n).toNat

end

end A125417.P6964405473396927463

/-!
# A125420: Number of base 32 circular n-digit numbers with adjacent digits differing by 6 or less.

The programs for A125420, there is no canonical definition to state claims against.
-/

/-! ## A125420.P5063621277864551878

`A273943(A125417(n)-A125411(n))+A125417(n)`
-/

namespace A125420.P5063621277864551878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125417 n - A125411 n).toNat + A125417 n

end

end A125420.P5063621277864551878

/-!
# A125421: Number of base 9 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125421, the canonical program `A125421.P8014296944161528162` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125421 has offset 0).

The definition of A125421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125421.P8014296944161528162

`9*a(n-1)-a(n-2)-7*a(n-3)` with `a(0)=1, a(1)=9, a(2)=79, a(3)=681`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125421

/-- `9*a(n-1)-a(n-2)-7*a(n-3)` -/
def P8014296944161528162.Spec : Prop :=
  ∀ n, P8014296944161528162.a n = A125421 n

theorem P8014296944161528162.correct : P8014296944161528162.Spec := by
  intro n
  simp only [A125421]

end A125421

/-!
# A125422: Number of base 10 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125422, there is no canonical definition to state claims against.
-/

/-! ## A125422.P8765190556233300796

`A298863(A233736(n))-A000217(n)`
-/

namespace A125422.P8765190556233300796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298863 (A233736 n).toNat - A000217 n

end

end A125422.P8765190556233300796

/-!
# A125423: Number of base 11 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125423, there is no canonical definition to state claims against.
-/

/-! ## A125423.P12570398313078689449

`or(A038722(A047856(n)), A155601(n))`
-/

namespace A125423.P12570398313078689449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A038722 (A047856 n).toNat) (A155601 n)

end

end A125423.P12570398313078689449

/-!
# A125427: Number of base 15 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125427, there is no canonical definition to state claims against.
-/

/-! ## A125427.P11560814445361671587

`A273943(A125428(n)-A125426(n))+A125426(n)`
-/

namespace A125427.P11560814445361671587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125428 n - A125426 n).toNat + A125426 n

end

end A125427.P11560814445361671587

/-!
# A125428: Number of base 16 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125428, there is no canonical definition to state claims against.
-/

/-! ## A125428.P14225703021347684387

`A273943(A125430(n)+A125426(n))`
-/

namespace A125428.P14225703021347684387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125430 n + A125426 n).toNat

end

end A125428.P14225703021347684387

/-!
# A125429: Number of base 17 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125429, there is no canonical definition to state claims against.
-/

/-! ## A125429.P15728004167051176082

`A273943(A125428(n)-A125426(n))+A125428(n)`
-/

namespace A125429.P15728004167051176082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125428 n - A125426 n).toNat + A125428 n

end

end A125429.P15728004167051176082

/-! ## A125429.P1072687740217874072

`A273943(A125430(n)-A125428(n))+A125428(n)`
-/

namespace A125429.P1072687740217874072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125430 n - A125428 n).toNat + A125428 n

end

end A125429.P1072687740217874072

/-!
# A125430: Number of base 18 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125430, there is no canonical definition to state claims against.
-/

/-! ## A125430.P8706190977512033040

`A273943(A125432(n)+A125428(n))`
-/

namespace A125430.P8706190977512033040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125432 n + A125428 n).toNat

end

end A125430.P8706190977512033040

/-!
# A125431: Number of base 19 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125431, there is no canonical definition to state claims against.
-/

/-! ## A125431.P12552320899720229251

`A273943(A125430(n)-A125428(n))+A125430(n)`
-/

namespace A125431.P12552320899720229251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125430 n - A125428 n).toNat + A125430 n

end

end A125431.P12552320899720229251

/-! ## A125431.P4534457653820429414

`A273943(A125432(n)-A125430(n))+A125430(n)`
-/

namespace A125431.P4534457653820429414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125432 n - A125430 n).toNat + A125430 n

end

end A125431.P4534457653820429414

/-!
# A125432: Number of base 20 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125432, there is no canonical definition to state claims against.
-/

/-! ## A125432.P9125465941566966068

`A273943(A125437(n)+A125427(n))`
-/

namespace A125432.P9125465941566966068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125437 n + A125427 n).toNat

end

end A125432.P9125465941566966068

/-!
# A125433: Number of base 21 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125433, there is no canonical definition to state claims against.
-/

/-! ## A125433.P15001540894854586021

`A273943(A125432(n)-A125430(n))+A125432(n)`
-/

namespace A125433.P15001540894854586021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125432 n - A125430 n).toNat + A125432 n

end

end A125433.P15001540894854586021

/-!
# A125434: Number of base 22 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125434, there is no canonical definition to state claims against.
-/

/-! ## A125434.P3244256287697473280

`A273943(A125436(n)+A125432(n))`
-/

namespace A125434.P3244256287697473280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125436 n + A125432 n).toNat

end

end A125434.P3244256287697473280

/-!
# A125435: Number of base 23 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125435, there is no canonical definition to state claims against.
-/

/-! ## A125435.P2114527703534667370

`A125436(n)-A273943(A125438(n)-A125436(n))`
-/

namespace A125435.P2114527703534667370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125436 n - A273943 (A125438 n - A125436 n).toNat

end

end A125435.P2114527703534667370

/-!
# A125436: Number of base 24 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125436, there is no canonical definition to state claims against.
-/

/-! ## A125436.P14981633614437763695

`A273943(A125440(n)+A125432(n))`
-/

namespace A125436.P14981633614437763695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125440 n + A125432 n).toNat

end

end A125436.P14981633614437763695

/-!
# A125437: Number of base 25 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125437, there is no canonical definition to state claims against.
-/

/-! ## A125437.P1998906337083807385

`A273943(A125438(n)-A125436(n))+A125436(n)`
-/

namespace A125437.P1998906337083807385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125438 n - A125436 n).toNat + A125436 n

end

end A125437.P1998906337083807385

/-!
# A125438: Number of base 26 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125438, there is no canonical definition to state claims against.
-/

/-! ## A125438.P6169658469867848057

`A273943(A125440(n)+A125436(n))`
-/

namespace A125438.P6169658469867848057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125440 n + A125436 n).toNat

end

end A125438.P6169658469867848057

/-!
# A125439: Number of base 27 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125439, there is no canonical definition to state claims against.
-/

/-! ## A125439.P9980205636430398719

`A273943(A125438(n)-A125436(n))+A125438(n)`
-/

namespace A125439.P9980205636430398719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125438 n - A125436 n).toNat + A125438 n

end

end A125439.P9980205636430398719

/-! ## A125439.P8285063451189579213

`A273943(A125440(n)-A125438(n))+A125438(n)`
-/

namespace A125439.P8285063451189579213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125440 n - A125438 n).toNat + A125438 n

end

end A125439.P8285063451189579213

/-!
# A125440: Number of base 28 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125440, there is no canonical definition to state claims against.
-/

/-! ## A125440.P3611730784973372518

`A273943(A125442(n)+A125438(n))`
-/

namespace A125440.P3611730784973372518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125442 n + A125438 n).toNat

end

end A125440.P3611730784973372518

/-!
# A125441: Number of base 29 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125441, there is no canonical definition to state claims against.
-/

/-! ## A125441.P10051600025015339902

`A273943(A125440(n)-A125438(n))+A125440(n)`
-/

namespace A125441.P10051600025015339902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125440 n - A125438 n).toNat + A125440 n

end

end A125441.P10051600025015339902

/-! ## A125441.P9455599027811372113

`A273943(A125442(n)-A125440(n))+A125440(n)`
-/

namespace A125441.P9455599027811372113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125442 n - A125440 n).toNat + A125440 n

end

end A125441.P9455599027811372113

/-!
# A125442: Number of base 30 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125442, there is no canonical definition to state claims against.
-/

/-! ## A125442.P15507685983459303635

`A273943(A125444(n)+A125440(n))`
-/

namespace A125442.P15507685983459303635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125444 n + A125440 n).toNat

end

end A125442.P15507685983459303635

/-!
# A125443: Number of base 31 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125443, there is no canonical definition to state claims against.
-/

/-! ## A125443.P4346098166451753917

`A273943(A125442(n)-A125440(n))+A125442(n)`
-/

namespace A125443.P4346098166451753917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125442 n - A125440 n).toNat + A125442 n

end

end A125443.P4346098166451753917

/-!
# A125444: Number of base 32 circular n-digit numbers with adjacent digits differing by 7 or less.

The programs for A125444, there is no canonical definition to state claims against.
-/

/-! ## A125444.P9554706139015700493

`A273943(A125440(n)-A125432(n))+A125440(n)`
-/

namespace A125444.P9554706139015700493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A125440 n - A125432 n).toNat + A125440 n

end

end A125444.P9554706139015700493

/-!
# A125445: Number of base 10 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125445, the canonical program `A125445.P862372042397202570` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125445 has offset 0).

The definition of A125445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125445.P862372042397202570

`10*a(n-1)-a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=10, a(2)=98, a(3)=946`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A125445

/-- `10*a(n-1)-a(n-2)-8*a(n-3)` -/
def P862372042397202570.Spec : Prop :=
  ∀ n, P862372042397202570.a n = A125445 n

theorem P862372042397202570.correct : P862372042397202570.Spec := by
  intro n
  simp only [A125445]

end A125445

/-!
# A125451: Number of base 16 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125451, there is no canonical definition to state claims against.
-/

/-! ## A125451.P255298389000522963

`A125452(n)-A014682(A125454(n)-A125452(n))`
-/

namespace A125451.P255298389000522963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125452 n - A014682 (A125454 n - A125452 n).toNat

end

end A125451.P255298389000522963

/-!
# A125452: Number of base 17 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125452, there is no canonical definition to state claims against.
-/

/-! ## A125452.P11390507309309437964

`A000265(A125453(n)+A125451(n))`
-/

namespace A125452.P11390507309309437964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125453 n + A125451 n).toNat

end

end A125452.P11390507309309437964

/-!
# A125453: Number of base 18 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125453, there is no canonical definition to state claims against.
-/

/-! ## A125453.P11400430724707012193

`A014682(A125454(n)+A125452(n))`
-/

namespace A125453.P11400430724707012193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A125454 n + A125452 n).toNat

end

end A125453.P11400430724707012193

/-!
# A125454: Number of base 19 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125454, there is no canonical definition to state claims against.
-/

/-! ## A125454.P17951434691987543266

`A000265(A125455(n)+A125453(n))`
-/

namespace A125454.P17951434691987543266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125455 n + A125453 n).toNat

end

end A125454.P17951434691987543266

/-!
# A125455: Number of base 20 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125455, there is no canonical definition to state claims against.
-/

/-! ## A125455.P11957909788055922294

`A014682(A125456(n)+A125454(n))`
-/

namespace A125455.P11957909788055922294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A125456 n + A125454 n).toNat

end

end A125455.P11957909788055922294

/-!
# A125456: Number of base 21 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125456, there is no canonical definition to state claims against.
-/

/-! ## A125456.P2789004140738414004

`A000265(A125457(n)+A125455(n))`
-/

namespace A125456.P2789004140738414004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125457 n + A125455 n).toNat

end

end A125456.P2789004140738414004

/-!
# A125457: Number of base 22 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125457, there is no canonical definition to state claims against.
-/

/-! ## A125457.P10306580533415515380

`A014682(A125458(n)+A125456(n))`
-/

namespace A125457.P10306580533415515380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A125458 n + A125456 n).toNat

end

end A125457.P10306580533415515380

/-!
# A125459: Number of base 24 circular n-digit numbers with adjacent digits differing by 8 or less.

The programs for A125459, there is no canonical definition to state claims against.
-/

/-! ## A125459.P18092882543422260068

`A125458(n)+A014682(A125458(n)-A125456(n))`
-/

namespace A125459.P18092882543422260068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125458 n + A014682 (A125458 n - A125456 n).toNat

end

end A125459.P18092882543422260068

/-!
# A125468: Number of base 11 circular n-digit numbers with adjacent digits differing by 9 or less.

The programs for A125468, there is no canonical definition to state claims against.
-/

/-! ## A125468.P11963965811795738461

`A052413(A125445(n)+1)`
-/

namespace A125468.P11963965811795738461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (A125445 n + 1).toNat

end

end A125468.P11963965811795738461

/-!
# A125470: Number of base 13 circular n-digit numbers with adjacent digits differing by 9 or less.

The programs for A125470, there is no canonical definition to state claims against.
-/

/-! ## A125470.P18123992228517222851

`A020672(A000005(n+1)+A054153(2*n)²)`
-/

namespace A125470.P18123992228517222851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020672 (A000005 (n + 1) + A054153 (2 * n) ^ 2).toNat

end

end A125470.P18123992228517222851

/-!
# A125476: Number of base 19 circular n-digit numbers with adjacent digits differing by 9 or less.

The programs for A125476, there is no canonical definition to state claims against.
-/

/-! ## A125476.P15198723507365505076

`A000265(A125477(n)+A125475(n))`
-/

namespace A125476.P15198723507365505076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A125477 n + A125475 n).toNat

end

end A125476.P15198723507365505076

/-!
# A125484: Number of base 27 circular n-digit numbers with adjacent digits differing by 9 or less.

The programs for A125484, there is no canonical definition to state claims against.
-/

/-! ## A125484.P4871017066961332503

`A000265(A322539(n)+A125483(n))`
-/

namespace A125484.P4871017066961332503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A322539 n + A125483 n).toNat

end

end A125484.P4871017066961332503

/-!
# A125490: Amicable triples: numbers such that sigma(x) = sigma(y) = sigma(z) = x+y+z, x

The programs for A125490, there is no canonical definition to state claims against.
-/

/-! ## A125490.P5288077118770459243

`A137231(n+1)-(A125492(n+1)+A125491(n+1))`
-/

namespace A125490.P5288077118770459243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137231 (n + 1) - (A125492 (n + 1) + A125491 (n + 1))

end

end A125490.P5288077118770459243

/-!
# A125491: Amicable triples: numbers such that sigma(x) = sigma(y) = sigma(z) = x+y+z, x

The programs for A125491, there is no canonical definition to state claims against.
-/

/-! ## A125491.P10450856030834257381

`A137231(n+1)-(A125492(n+1)+A125490(n+1))`
-/

namespace A125491.P10450856030834257381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137231 (n + 1) - (A125492 (n + 1) + A125490 (n + 1))

end

end A125491.P10450856030834257381

/-!
# A125492: Amicable triples: numbers such that sigma(x) = sigma(y) = sigma(z) = x+y+z, x

The programs for A125492, there is no canonical definition to state claims against.
-/

/-! ## A125492.P12435763929417608489

`A137231(n+1)-(A125491(n+1)+A125490(n+1))`
-/

namespace A125492.P12435763929417608489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137231 (n + 1) - (A125491 (n + 1) + A125490 (n + 1))

end

end A125492.P12435763929417608489

/-! ## A125492.P5542579047647792505

`A385749(A137721(n+1)+A000005(2*(n+2)))`
-/

namespace A125492.P5542579047647792505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385749 (A137721 (n + 1) + A000005 (2 * (n + 2))).toNat

end

end A125492.P5542579047647792505

/-!
# A125493: Composite deficient numbers.

The programs for A125493, the canonical program `A125493.P739186552021714544` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125493 has offset 1).

The definition of A125493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125493.P15963899225816193863

`record[A125746(Δ[A053767(n)])]`
-/

namespace A125493.P15963899225816193863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125493.P15963899225816193863

namespace A125493

/-- `record[A125746(Δ[A053767(n)])]` -/
def P15963899225816193863.Spec : Prop :=
  ∀ n, P15963899225816193863.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P9151752528326886279

`record[A125746(A002808(n+1))]`
-/

namespace A125493.P9151752528326886279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125493.P9151752528326886279

namespace A125493

/-- `record[A125746(A002808(n+1))]` -/
def P9151752528326886279.Spec : Prop :=
  ∀ n, P9151752528326886279.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P12221508822459497471

`record[A125746(A018252(n+2))]`
-/

namespace A125493.P12221508822459497471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125493.P12221508822459497471

namespace A125493

/-- `record[A125746(A018252(n+2))]` -/
def P12221508822459497471.Spec : Prop :=
  ∀ n, P12221508822459497471.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P739186552021714544

`record[A191558(A005100(n+4))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A125493

/-- `record[A191558(A005100(n+4))]` -/
def P739186552021714544.Spec : Prop :=
  ∀ n, P739186552021714544.a n = A125493 (n + 1)

theorem P739186552021714544.correct : P739186552021714544.Spec := by
  intro n
  simp only [A125493, Nat.add_sub_cancel]

end A125493

/-! ## A125493.P13716365047652697166

`filter[A005100(n+1), A066247(#)]`
-/

namespace A125493.P13716365047652697166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A125493.P13716365047652697166

namespace A125493

/-- `filter[A005100(n+1), A066247(#)]` -/
def P13716365047652697166.Spec : Prop :=
  ∀ n, P13716365047652697166.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P13363990398760793899

`filter[A002808(n+1), A294934(#)]`
-/

namespace A125493.P13363990398760793899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125493.P13363990398760793899

namespace A125493

/-- `filter[A002808(n+1), A294934(#)]` -/
def P13363990398760793899.Spec : Prop :=
  ∀ n, P13363990398760793899.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P2476738022393206966

`filter[A005100(n+2), A005171(#)]`
-/

namespace A125493.P2476738022393206966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A125493.P2476738022393206966

namespace A125493

/-- `filter[A005100(n+2), A005171(#)]` -/
def P2476738022393206966.Spec : Prop :=
  ∀ n, P2476738022393206966.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P6417349855947170992

`filter[A018252(n+2), A294934(#)]`
-/

namespace A125493.P6417349855947170992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125493.P6417349855947170992

namespace A125493

/-- `filter[A018252(n+2), A294934(#)]` -/
def P6417349855947170992.Spec : Prop :=
  ∀ n, P6417349855947170992.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P4652399170498627935

`filter[A065090(n+3), A294934(#)]`
-/

namespace A125493.P4652399170498627935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125493.P4652399170498627935

namespace A125493

/-- `filter[A065090(n+3), A294934(#)]` -/
def P4652399170498627935.Spec : Prop :=
  ∀ n, P4652399170498627935.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P5740820188058367703

`filter[A141468(n+3), A294934(#)]`
-/

namespace A125493.P5740820188058367703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125493.P5740820188058367703

namespace A125493

/-- `filter[A141468(n+3), A294934(#)]` -/
def P5740820188058367703.Spec : Prop :=
  ∀ n, P5740820188058367703.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P6318402057207223262

`filter[A067747(2*(n+1)), A294934(#)]`
-/

namespace A125493.P6318402057207223262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125493.P6318402057207223262

namespace A125493

/-- `filter[A067747(2*(n+1)), A294934(#)]` -/
def P6318402057207223262.Spec : Prop :=
  ∀ n, P6318402057207223262.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P14270173558202458790

`filter[A129131(2*n+1), A294934(#)]`
-/

namespace A125493.P14270173558202458790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125493.P14270173558202458790

namespace A125493

/-- `filter[A129131(2*n+1), A294934(#)]` -/
def P14270173558202458790.Spec : Prop :=
  ∀ n, P14270173558202458790.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P15157755987182885083

`∩[A002808(n+1), A005100(n+1)]`
-/

namespace A125493.P15157755987182885083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125493.P15157755987182885083

namespace A125493

/-- `∩[A002808(n+1), A005100(n+1)]` -/
def P15157755987182885083.Spec : Prop :=
  ∀ n, (P15157755987182885083.a n : ℤ) = A125493 (n + 1)

end A125493

/-! ## A125493.P7303188816500311116

`A026239(p?[A026239(A005100(n+1))])`
-/

namespace A125493.P7303188816500311116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A005100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A125493.P7303188816500311116

namespace A125493

/-- `A026239(p?[A026239(A005100(n+1))])` -/
def P7303188816500311116.Spec : Prop :=
  ∀ n, P7303188816500311116.a n = A125493 (n + 1)

end A125493

/-! ## A125493.P12598846628344402270

`∪[A108793(n+1), A341615(n+1)]`
-/

namespace A125493.P12598846628344402270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A125493.P12598846628344402270

namespace A125493

/-- `∪[A108793(n+1), A341615(n+1)]` -/
def P12598846628344402270.Spec : Prop :=
  ∀ n, (P12598846628344402270.a n : ℤ) = A125493 (n + 1)

end A125493

/-!
# A125494: Composite evil numbers.

The programs for A125494, the canonical program `A125494.P18071949956906500659` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125494 has offset 1).

The definition of A125494 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9020 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125494.P9796324737664067306

`filter[A001969(n+2), A005171(#)]`
-/

namespace A125494.P9796324737664067306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A125494.P9796324737664067306

namespace A125494

/-- `filter[A001969(n+2), A005171(#)]` -/
def P9796324737664067306.Spec : Prop :=
  ∀ n, P9796324737664067306.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P18071949956906500659

`filter[A001969(n+2), A066247(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A125494

/-- `filter[A001969(n+2), A066247(#)]` -/
def P18071949956906500659.Spec : Prop :=
  ∀ n, P18071949956906500659.a n = A125494 (n + 1)

theorem P18071949956906500659.correct : P18071949956906500659.Spec := by
  intro n
  simp only [A125494, Nat.add_sub_cancel]

end A125494

/-! ## A125494.P5115259691708014392

`filter[A001969(n+2), A202238(#)]`
-/

namespace A125494.P5115259691708014392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A125494.P5115259691708014392

namespace A125494

/-- `filter[A001969(n+2), A202238(#)]` -/
def P5115259691708014392.Spec : Prop :=
  ∀ n, P5115259691708014392.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P864493709355013173

`∩[A001969(n+1), A002808(n+1)]`
-/

namespace A125494.P864493709355013173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125494.P864493709355013173

namespace A125494

/-- `∩[A001969(n+1), A002808(n+1)]` -/
def P864493709355013173.Spec : Prop :=
  ∀ n, (P864493709355013173.a n : ℤ) = A125494 (n + 1)

end A125494

/-! ## A125494.P13803941431793587153

`∩[A001969(n+1), A018252(n+1)]`
-/

namespace A125494.P13803941431793587153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125494.P13803941431793587153

namespace A125494

/-- `∩[A001969(n+1), A018252(n+1)]` -/
def P13803941431793587153.Spec : Prop :=
  ∀ n, (P13803941431793587153.a n : ℤ) = A125494 (n + 1)

end A125494

/-! ## A125494.P9791591976663576228

`∩[A001969(n+1), A091212(n+1)]`
-/

namespace A125494.P9791591976663576228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125494.P9791591976663576228

namespace A125494

/-- `∩[A001969(n+1), A091212(n+1)]` -/
def P9791591976663576228.Spec : Prop :=
  ∀ n, (P9791591976663576228.a n : ℤ) = A125494 (n + 1)

end A125494

/-! ## A125494.P9771307209816101695

`eq[2*A339579(n+1), A010060(n)]`
-/

namespace A125494.P9771307209816101695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A339579 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125494.P9771307209816101695

namespace A125494

/-- `eq[2*A339579(n+1), A010060(n)]` -/
def P9771307209816101695.Spec : Prop :=
  ∀ n, (P9771307209816101695.a n : ℤ) = A125494 (n + 1)

end A125494

/-! ## A125494.P6194664449889739604

`∩[A001969(n+1), A056653(n+1)]`
-/

namespace A125494.P6194664449889739604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125494.P6194664449889739604

namespace A125494

/-- `∩[A001969(n+1), A056653(n+1)]` -/
def P6194664449889739604.Spec : Prop :=
  ∀ n, (P6194664449889739604.a n : ℤ) = A125494 (n + 1)

end A125494

/-! ## A125494.P7263315473705339417

`∩[A001969(n+1), A065090(n+1)]`
-/

namespace A125494.P7263315473705339417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125494.P7263315473705339417

namespace A125494

/-- `∩[A001969(n+1), A065090(n+1)]` -/
def P7263315473705339417.Spec : Prop :=
  ∀ n, (P7263315473705339417.a n : ℤ) = A125494 (n + 1)

end A125494

/-! ## A125494.P6960320615930686401

`filter[A002808(n+1), A010059(#)]`
-/

namespace A125494.P6960320615930686401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A125494.P6960320615930686401

namespace A125494

/-- `filter[A002808(n+1), A010059(#)]` -/
def P6960320615930686401.Spec : Prop :=
  ∀ n, P6960320615930686401.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P3511522458617699991

`filter[A005451(n+1), A010059(#)]`
-/

namespace A125494.P3511522458617699991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A125494.P3511522458617699991

namespace A125494

/-- `filter[A005451(n+1), A010059(#)]` -/
def P3511522458617699991.Spec : Prop :=
  ∀ n, P3511522458617699991.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P12880714305337605984

`filter[A018252(n+1), A010059(#)]`
-/

namespace A125494.P12880714305337605984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A125494.P12880714305337605984

namespace A125494

/-- `filter[A018252(n+1), A010059(#)]` -/
def P12880714305337605984.Spec : Prop :=
  ∀ n, P12880714305337605984.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P14922404951193143891

`filter[A056653(n+1), A010059(#)]`
-/

namespace A125494.P14922404951193143891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A125494.P14922404951193143891

namespace A125494

/-- `filter[A056653(n+1), A010059(#)]` -/
def P14922404951193143891.Spec : Prop :=
  ∀ n, P14922404951193143891.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P13877671923261437403

`filter[A065090(n+1), A010059(#)]`
-/

namespace A125494.P13877671923261437403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A125494.P13877671923261437403

namespace A125494

/-- `filter[A065090(n+1), A010059(#)]` -/
def P13877671923261437403.Spec : Prop :=
  ∀ n, P13877671923261437403.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P1630932192342761150

`filter[A002808(n+1), A092436(#)]`
-/

namespace A125494.P1630932192342761150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A125494.P1630932192342761150

namespace A125494

/-- `filter[A002808(n+1), A092436(#)]` -/
def P1630932192342761150.Spec : Prop :=
  ∀ n, P1630932192342761150.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P15785386057748114340

`filter[A005451(n+1), A092436(#)]`
-/

namespace A125494.P15785386057748114340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A125494.P15785386057748114340

namespace A125494

/-- `filter[A005451(n+1), A092436(#)]` -/
def P15785386057748114340.Spec : Prop :=
  ∀ n, P15785386057748114340.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P4859964867499847869

`filter[A091212(n+1), A010059(#)]`
-/

namespace A125494.P4859964867499847869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A125494.P4859964867499847869

namespace A125494

/-- `filter[A091212(n+1), A010059(#)]` -/
def P4859964867499847869.Spec : Prop :=
  ∀ n, P4859964867499847869.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P14600969784642113106

`filter[A018252(n+1), A092436(#)]`
-/

namespace A125494.P14600969784642113106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A125494.P14600969784642113106

namespace A125494

/-- `filter[A018252(n+1), A092436(#)]` -/
def P14600969784642113106.Spec : Prop :=
  ∀ n, P14600969784642113106.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P3594589568621675893

`filter[A135684(n+1), A010059(#)]`
-/

namespace A125494.P3594589568621675893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A125494.P3594589568621675893

namespace A125494

/-- `filter[A135684(n+1), A010059(#)]` -/
def P3594589568621675893.Spec : Prop :=
  ∀ n, P3594589568621675893.a n = A125494 (n + 1)

end A125494

/-! ## A125494.P9519180384698648517

`filter[A056653(n+1), A092436(#)]`
-/

namespace A125494.P9519180384698648517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A125494.P9519180384698648517

namespace A125494

/-- `filter[A056653(n+1), A092436(#)]` -/
def P9519180384698648517.Spec : Prop :=
  ∀ n, P9519180384698648517.a n = A125494 (n + 1)

end A125494

/-!
# A125495: Composite odious numbers.

The programs for A125495, the canonical program `A125495.P14051159433659481115` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125495 has offset 1).

The definition of A125495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8717 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125495.P11359046691391605227

`A229937(n+2)`
-/

namespace A125495.P11359046691391605227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229937 (n + 2)

end

end A125495.P11359046691391605227

namespace A125495

/-- `A229937(n+2)` -/
def P11359046691391605227.Spec : Prop :=
  ∀ n, P11359046691391605227.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P450005175637904584

`record[A268669(A018252(n+2))]`
-/

namespace A125495.P450005175637904584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268669 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125495.P450005175637904584

namespace A125495

/-- `record[A268669(A018252(n+2))]` -/
def P450005175637904584.Spec : Prop :=
  ∀ n, P450005175637904584.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P14051159433659481115

`filter[A000069(n+2), A005171(#)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A125495

/-- `filter[A000069(n+2), A005171(#)]` -/
def P14051159433659481115.Spec : Prop :=
  ∀ n, P14051159433659481115.a n = A125495 (n + 1)

theorem P14051159433659481115.correct : P14051159433659481115.Spec := by
  intro n
  simp only [A125495, Nat.add_sub_cancel]

end A125495

/-! ## A125495.P7479526575880361246

`filter[A000069(n+2), A066247(#)]`
-/

namespace A125495.P7479526575880361246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A125495.P7479526575880361246

namespace A125495

/-- `filter[A000069(n+2), A066247(#)]` -/
def P7479526575880361246.Spec : Prop :=
  ∀ n, P7479526575880361246.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P3641899206921298447

`∩[A000069(n+1), A002808(n+1)]`
-/

namespace A125495.P3641899206921298447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125495.P3641899206921298447

namespace A125495

/-- `∩[A000069(n+1), A002808(n+1)]` -/
def P3641899206921298447.Spec : Prop :=
  ∀ n, (P3641899206921298447.a n : ℤ) = A125495 (n + 1)

end A125495

/-! ## A125495.P5429115165861835515

`∩[A000069(n+1), A018252(n+2)]`
-/

namespace A125495.P5429115165861835515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125495.P5429115165861835515

namespace A125495

/-- `∩[A000069(n+1), A018252(n+2)]` -/
def P5429115165861835515.Spec : Prop :=
  ∀ n, (P5429115165861835515.a n : ℤ) = A125495 (n + 1)

end A125495

/-! ## A125495.P9815388477064116542

`record[A277812(A002808(n+1))]`
-/

namespace A125495.P9815388477064116542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277812 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125495.P9815388477064116542

namespace A125495

/-- `record[A277812(A002808(n+1))]` -/
def P9815388477064116542.Spec : Prop :=
  ∀ n, P9815388477064116542.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P17739133234740327487

`eq[A339579(n+1)+1, A010060(n)]`
-/

namespace A125495.P17739133234740327487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125495.P17739133234740327487

namespace A125495

/-- `eq[A339579(n+1)+1, A010060(n)]` -/
def P17739133234740327487.Spec : Prop :=
  ∀ n, (P17739133234740327487.a n : ℤ) = A125495 (n + 1)

end A125495

/-! ## A125495.P12528569271952620974

`filter[A002808(n+1), A010060(#)]`
-/

namespace A125495.P12528569271952620974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A125495.P12528569271952620974

namespace A125495

/-- `filter[A002808(n+1), A010060(#)]` -/
def P12528569271952620974.Spec : Prop :=
  ∀ n, P12528569271952620974.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P986595218467667595

`filter[A018252(n+2), A010060(#)]`
-/

namespace A125495.P986595218467667595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A125495.P986595218467667595

namespace A125495

/-- `filter[A018252(n+2), A010060(#)]` -/
def P986595218467667595.Spec : Prop :=
  ∀ n, P986595218467667595.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P6679188344908391192

`filter[A065090(n+3), A010060(#)]`
-/

namespace A125495.P6679188344908391192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A125495.P6679188344908391192

namespace A125495

/-- `filter[A065090(n+3), A010060(#)]` -/
def P6679188344908391192.Spec : Prop :=
  ∀ n, P6679188344908391192.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P4604854803084608191

`filter[A141468(n+3), A010060(#)]`
-/

namespace A125495.P4604854803084608191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A125495.P4604854803084608191

namespace A125495

/-- `filter[A141468(n+3), A010060(#)]` -/
def P4604854803084608191.Spec : Prop :=
  ∀ n, P4604854803084608191.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P4013248812158282619

`filter[A171581(n+3), A010060(#)]`
-/

namespace A125495.P4013248812158282619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A125495.P4013248812158282619

namespace A125495

/-- `filter[A171581(n+3), A010060(#)]` -/
def P4013248812158282619.Spec : Prop :=
  ∀ n, P4013248812158282619.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P14008622353960417415

`filter[A191558(n+2), A010060(#)]`
-/

namespace A125495.P14008622353960417415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A125495.P14008622353960417415

namespace A125495

/-- `filter[A191558(n+2), A010060(#)]` -/
def P14008622353960417415.Spec : Prop :=
  ∀ n, P14008622353960417415.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P12589783792598289737

`eq[A106400(n)+1, A339579(n+1)²]`
-/

namespace A125495.P12589783792598289737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125495.P12589783792598289737

namespace A125495

/-- `eq[A106400(n)+1, A339579(n+1)²]` -/
def P12589783792598289737.Spec : Prop :=
  ∀ n, (P12589783792598289737.a n : ℤ) = A125495 (n + 1)

end A125495

/-! ## A125495.P15794443251239628265

`lt[n*char[xor(n, 2*n)]+1, A078898(n)]`
-/

namespace A125495.P15794443251239628265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0) + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A125495.P15794443251239628265

namespace A125495

/-- `lt[n*char[xor(n, 2*n)]+1, A078898(n)]` -/
def P15794443251239628265.Spec : Prop :=
  ∀ n, (P15794443251239628265.a n : ℤ) = A125495 (n + 1)

end A125495

/-! ## A125495.P17777139693342191786

`filter[A143579(2*n), A066247(#)]`
-/

namespace A125495.P17777139693342191786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A125495.P17777139693342191786

namespace A125495

/-- `filter[A143579(2*n), A066247(#)]` -/
def P17777139693342191786.Spec : Prop :=
  ∀ n, P17777139693342191786.a n = A125495 (n + 1)

end A125495

/-! ## A125495.P9193681543412536808

`eq[A102391(n), A339579(n+1)]`
-/

namespace A125495.P9193681543412536808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125495.P9193681543412536808

namespace A125495

/-- `eq[A102391(n), A339579(n+1)]` -/
def P9193681543412536808.Spec : Prop :=
  ∀ n, (P9193681543412536808.a n : ℤ) = A125495 (n + 1)

end A125495

/-! ## A125495.P7042211464012584099

`eq[A102393(n), A339579(n+1)]`
-/

namespace A125495.P7042211464012584099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102393 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125495.P7042211464012584099

namespace A125495

/-- `eq[A102393(n), A339579(n+1)]` -/
def P7042211464012584099.Spec : Prop :=
  ∀ n, (P7042211464012584099.a n : ℤ) = A125495 (n + 1)

end A125495

/-! ## A125495.P4334145082776587161

`eq[A246159(n), A339579(n+1)]`
-/

namespace A125495.P4334145082776587161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A125495.P4334145082776587161

namespace A125495

/-- `eq[A246159(n), A339579(n+1)]` -/
def P4334145082776587161.Spec : Prop :=
  ∀ n, (P4334145082776587161.a n : ℤ) = A125495 (n + 1)

end A125495

/-!
# A125496: Deficient cubes.

The programs for A125496, there is no canonical definition to state claims against.
-/

/-! ## A125496.P16549817888538931259

`∩[A387420(n+1), A000578(n)]`
-/

namespace A125496.P16549817888538931259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125496.P16549817888538931259

/-! ## A125496.P8519399643161418651

`∩[A387420(n+1), A109900(n)]`
-/

namespace A125496.P8519399643161418651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125496.P8519399643161418651

/-! ## A125496.P16941025461221435674

`∩[A115169(n+1), A387420(n+1)]`
-/

namespace A125496.P16941025461221435674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125496.P16941025461221435674

/-! ## A125496.P8979822629559773942

`∩[A066215(n+1), A387420(n+1)]`
-/

namespace A125496.P8979822629559773942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125496.P8979822629559773942

/-! ## A125496.P866405100808061238

`record[A125746(Δ[∑[n]²])]`
-/

namespace A125496.P866405100808061238
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125496.P866405100808061238

/-!
# A125497: Evil cubes.

The programs for A125497, the canonical program `A125497.P11464506834730115885` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125497 has offset 1).

The definition of A125497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5052 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125497.P11464506834730115885

`A000578(eq[0, A365089(n)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A125497

/-- `A000578(eq[0, A365089(n)])` -/
def P11464506834730115885.Spec : Prop :=
  ∀ n, P11464506834730115885.a n = A125497 (n + 1)

theorem P11464506834730115885.correct : P11464506834730115885.Spec := by
  intro n
  simp only [A125497, Nat.add_sub_cancel]

end A125497

/-! ## A125497.P1293219247167255620

`A000578(lt[A365089(n), 1])`
-/

namespace A125497.P1293219247167255620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A125497.P1293219247167255620

namespace A125497

/-- `A000578(lt[A365089(n), 1])` -/
def P1293219247167255620.Spec : Prop :=
  ∀ n, P1293219247167255620.a n = A125497 (n + 1)

end A125497

/-! ## A125497.P10917280947865680048

`lt[n*A000035(A192085(n)), 1]^3`
-/

namespace A125497.P10917280947865680048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A192085 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n ^ 3

end

end A125497.P10917280947865680048

namespace A125497

/-- `lt[n*A000035(A192085(n)), 1]^3` -/
def P10917280947865680048.Spec : Prop :=
  ∀ n, (P10917280947865680048.a n : ℤ) = A125497 (n + 1)

end A125497

/-!
# A125498: Odious cubes.

The programs for A125498, the canonical program `A125498.P12583085300510792170` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125498 has offset 1).

The definition of A125498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4949 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125498.P12583085300510792170

`record[(n*n²)^and(1, A192085(n))]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A125498

/-- `record[(n*n²)^and(1, A192085(n))]` -/
def P12583085300510792170.Spec : Prop :=
  ∀ n, P12583085300510792170.a n = (A125498 (n + 1) : ℚ)

end A125498

/-! ## A125498.P13541147706126498692

`A000578(eq[1, A365089(n)])`
-/

namespace A125498.P13541147706126498692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A125498.P13541147706126498692

namespace A125498

/-- `A000578(eq[1, A365089(n)])` -/
def P13541147706126498692.Spec : Prop :=
  ∀ n, P13541147706126498692.a n = A125498 (n + 1)

end A125498

/-! ## A125498.P10285258464080977832

`A000578(lt[1/(n+1), A365089(n)])`
-/

namespace A125498.P10285258464080977832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A125498.P10285258464080977832

namespace A125498

/-- `A000578(lt[1/(n+1), A365089(n)])` -/
def P10285258464080977832.Spec : Prop :=
  ∀ n, P10285258464080977832.a n = A125498 (n + 1)

end A125498

/-! ## A125498.P10731416728613862861

`record[C(n*A181983(n)², A192085(n)%2)]`
-/

namespace A125498.P10731416728613862861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n : ℤ) * A181983 n ^ 2).toNat (Int.tmod (A192085 n) 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125498.P10731416728613862861

namespace A125498

/-- `record[C(n*A181983(n)², A192085(n)%2)]` -/
def P10731416728613862861.Spec : Prop :=
  ∀ n, (P10731416728613862861.a n : ℤ) = A125498 (n + 1)

end A125498

/-! ## A125498.P15242384014761292264

`lt[A171765(n), n*A000035(A192085(n))]^3`
-/

namespace A125498.P15242384014761292264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171765 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000035 (A192085 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 3

end

end A125498.P15242384014761292264

namespace A125498

/-- `lt[A171765(n), n*A000035(A192085(n))]^3` -/
def P15242384014761292264.Spec : Prop :=
  ∀ n, (P15242384014761292264.a n : ℤ) = A125498 (n + 1)

end A125498

/-!
# A125499: Deficient even numbers.

The programs for A125499, the canonical program `A125499.P3483996585675288903` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A125499 has offset 1).

The definition of A125499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3375 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A125499.P8334962767588682104

`record[A125746(2*(n+1))]`
-/

namespace A125499.P8334962767588682104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A125499.P8334962767588682104

namespace A125499

/-- `record[A125746(2*(n+1))]` -/
def P8334962767588682104.Spec : Prop :=
  ∀ n, P8334962767588682104.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P3733625523682518676

`∩[2*n, A005100(n+1)]`
-/

namespace A125499.P3733625523682518676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125499.P3733625523682518676

namespace A125499

/-- `∩[2*n, A005100(n+1)]` -/
def P3733625523682518676.Spec : Prop :=
  ∀ n, (P3733625523682518676.a n : ℤ) = A125499 (n + 1)

end A125499

/-! ## A125499.P15309384506962827827

`∩[2*n, A107912(n+1)]`
-/

namespace A125499.P15309384506962827827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A125499.P15309384506962827827

namespace A125499

/-- `∩[2*n, A107912(n+1)]` -/
def P15309384506962827827.Spec : Prop :=
  ∀ n, (P15309384506962827827.a n : ℤ) = A125499 (n + 1)

end A125499

/-! ## A125499.P3483996585675288903

`filter[A005100(n+1), A120325(#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A125499

/-- `filter[A005100(n+1), A120325(#)]` -/
def P3483996585675288903.Spec : Prop :=
  ∀ n, P3483996585675288903.a n = A125499 (n + 1)

theorem P3483996585675288903.correct : P3483996585675288903.Spec := by
  intro n
  simp only [A125499, Nat.add_sub_cancel]

end A125499

/-! ## A125499.P10697068608506562795

`filter[A107912(n+1), A120325(#)]`
-/

namespace A125499.P10697068608506562795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A120325 (f1 j).toNat = 1) n)

end

end A125499.P10697068608506562795

namespace A125499

/-- `filter[A107912(n+1), A120325(#)]` -/
def P10697068608506562795.Spec : Prop :=
  ∀ n, P10697068608506562795.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P5372856863388278757

`filter[A004277(n+1), A294934(#)]`
-/

namespace A125499.P5372856863388278757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P5372856863388278757

namespace A125499

/-- `filter[A004277(n+1), A294934(#)]` -/
def P5372856863388278757.Spec : Prop :=
  ∀ n, P5372856863388278757.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P16109219467282111583

`filter[A005843(n+1), A294934(#)]`
-/

namespace A125499.P16109219467282111583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P16109219467282111583

namespace A125499

/-- `filter[A005843(n+1), A294934(#)]` -/
def P16109219467282111583.Spec : Prop :=
  ∀ n, P16109219467282111583.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P5743293839693852874

`filter[A047235(n+1), A294934(#)]`
-/

namespace A125499.P5743293839693852874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P5743293839693852874

namespace A125499

/-- `filter[A047235(n+1), A294934(#)]` -/
def P5743293839693852874.Spec : Prop :=
  ∀ n, P5743293839693852874.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P54349913968846832

`filter[A005100(n+1), A353525(#)]`
-/

namespace A125499.P54349913968846832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A125499.P54349913968846832

namespace A125499

/-- `filter[A005100(n+1), A353525(#)]` -/
def P54349913968846832.Spec : Prop :=
  ∀ n, P54349913968846832.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P10939881992200806580

`filter[A107912(n+1), A353525(#)]`
-/

namespace A125499.P10939881992200806580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353525 (f1 j).toNat = 1) n)

end

end A125499.P10939881992200806580

namespace A125499

/-- `filter[A107912(n+1), A353525(#)]` -/
def P10939881992200806580.Spec : Prop :=
  ∀ n, P10939881992200806580.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P205636767023937458

`filter[A225241(n+1), A294934(#)]`
-/

namespace A125499.P205636767023937458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P205636767023937458

namespace A125499

/-- `filter[A225241(n+1), A294934(#)]` -/
def P205636767023937458.Spec : Prop :=
  ∀ n, P205636767023937458.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P3818410254327152959

`filter[A232745(n+1), A294934(#)]`
-/

namespace A125499.P3818410254327152959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P3818410254327152959

namespace A125499

/-- `filter[A232745(n+1), A294934(#)]` -/
def P3818410254327152959.Spec : Prop :=
  ∀ n, P3818410254327152959.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P9187205653623680066

`filter[A260391(n+1), A294934(#)]`
-/

namespace A125499.P9187205653623680066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P9187205653623680066

namespace A125499

/-- `filter[A260391(n+1), A294934(#)]` -/
def P9187205653623680066.Spec : Prop :=
  ∀ n, P9187205653623680066.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P16470743333964459911

`filter[A328588(n+1), A294934(#)]`
-/

namespace A125499.P16470743333964459911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P16470743333964459911

namespace A125499

/-- `filter[A328588(n+1), A294934(#)]` -/
def P16470743333964459911.Spec : Prop :=
  ∀ n, P16470743333964459911.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P17178777303571678975

`filter[A342050(n+1), A294934(#)]`
-/

namespace A125499.P17178777303571678975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P17178777303571678975

namespace A125499

/-- `filter[A342050(n+1), A294934(#)]` -/
def P17178777303571678975.Spec : Prop :=
  ∀ n, P17178777303571678975.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P3463734253302536934

`filter[A004275(n+2), A294934(#)]`
-/

namespace A125499.P3463734253302536934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P3463734253302536934

namespace A125499

/-- `filter[A004275(n+2), A294934(#)]` -/
def P3463734253302536934.Spec : Prop :=
  ∀ n, P3463734253302536934.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P14925356757484604194

`filter[A300576(n+3), A294934(#)]`
-/

namespace A125499.P14925356757484604194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300576 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A125499.P14925356757484604194

namespace A125499

/-- `filter[A300576(n+3), A294934(#)]` -/
def P14925356757484604194.Spec : Prop :=
  ∀ n, P14925356757484604194.a n = A125499 (n + 1)

end A125499

/-! ## A125499.P4286999567961635732

`2*lt[A318505(A004277(n)), n]`
-/

namespace A125499.P4286999567961635732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (A004277 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A125499.P4286999567961635732

namespace A125499

/-- `2*lt[A318505(A004277(n)), n]` -/
def P4286999567961635732.Spec : Prop :=
  ∀ n, (P4286999567961635732.a n : ℤ) = A125499 (n + 1)

end A125499

