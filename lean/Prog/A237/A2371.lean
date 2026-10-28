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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A237100: Number of (n+1)X(n+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237100, there is no canonical definition to state claims against.
-/

/-! ## A237100.P10058301442798865671

`A237108((n+1)²+n²)`
-/

namespace A237100.P10058301442798865671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 ((n + 1) ^ 2 + n ^ 2)

end

end A237100.P10058301442798865671

/-!
# A237101: Number of (n+1)X(1+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237101, there is no canonical definition to state claims against.
-/

/-! ## A237101.P12840910748583304123

`A237108(∑[n]+1)`
-/

namespace A237101.P12840910748583304123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237101.P12840910748583304123

/-! ## A237101.P5882611340301128276

`or(1, A237108(A000124(n)))`
-/

namespace A237101.P5882611340301128276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237108 (A000124 n).toNat)

end

end A237101.P5882611340301128276

/-! ## A237101.P7504366494198782501

`record[gcd(A132896(n), A237108(n+1))]`
-/

namespace A237101.P7504366494198782501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132896 n) (A237108 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237101.P7504366494198782501

/-! ## A237101.P5909457207045075871

`A237108(A000124(n))%A209712(n+1)`
-/

namespace A237101.P5909457207045075871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237108 (A000124 n).toNat) (A209712 (n + 1))

end

end A237101.P5909457207045075871

/-! ## A237101.P17804257242647403340

`or(1, A237108(A000217(n+1)))`
-/

namespace A237101.P17804257242647403340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237108 (A000217 (n + 1)).toNat)

end

end A237101.P17804257242647403340

/-!
# A237102: Number of (n+1)X(2+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237102, there is no canonical definition to state claims against.
-/

/-! ## A237102.P7481064698049155298

`A237108(∑[n+1]+2)`
-/

namespace A237102.P7481064698049155298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237102.P7481064698049155298

/-! ## A237102.P16961107785378183544

`or(1, A237108(A000217(n+1)+2))`
-/

namespace A237102.P16961107785378183544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237108 (A000217 (n + 1) + 2).toNat)

end

end A237102.P16961107785378183544

/-! ## A237102.P4851395175526083626

`A014963(A013613(n))*A237108(A000217(n+1)+2)`
-/

namespace A237102.P4851395175526083626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A013613 n).toNat * A237108 (A000217 (n + 1) + 2).toNat

end

end A237102.P4851395175526083626

/-! ## A237102.P1329896362572059725

`A014963(A017137(n))*A237108(A000217(n+1)+2)`
-/

namespace A237102.P1329896362572059725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017137 n).toNat * A237108 (A000217 (n + 1) + 2).toNat

end

end A237102.P1329896362572059725

/-!
# A237103: Number of (n+1)X(3+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237103, there is no canonical definition to state claims against.
-/

/-! ## A237103.P18061359231591096157

`A237108(∑[n+2]+4)`
-/

namespace A237103.P18061359231591096157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237103.P18061359231591096157

/-! ## A237103.P2332504481571460340

`or(1, A237108(A167614(n+1)))`
-/

namespace A237103.P2332504481571460340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237108 (A167614 (n + 1)).toNat)

end

end A237103.P2332504481571460340

/-! ## A237103.P18342302035345573987

`A237108(A167614(n+1))+A185284(n)`
-/

namespace A237103.P18342302035345573987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A167614 (n + 1)).toNat + A185284 n

end

end A237103.P18342302035345573987

/-! ## A237103.P5849976427857784920

`A014910(n)*A237108(A167614(n+1))`
-/

namespace A237103.P5849976427857784920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014910 n * A237108 (A167614 (n + 1)).toNat

end

end A237103.P5849976427857784920

/-! ## A237103.P2462265779959097998

`A119335(n)*A237108(A167614(n+1))`
-/

namespace A237103.P2462265779959097998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119335 n * A237108 (A167614 (n + 1)).toNat

end

end A237103.P2462265779959097998

/-!
# A237104: Number of (n+1)X(4+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237104, there is no canonical definition to state claims against.
-/

/-! ## A237104.P1820452132133180693

`A237108(A374004(n+1))`
-/

namespace A237104.P1820452132133180693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A374004 (n + 1)).toNat

end

end A237104.P1820452132133180693

/-! ## A237104.P9380210777811061689

`A237108(A052905(n)+9)`
-/

namespace A237104.P9380210777811061689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A052905 n + 9).toNat

end

end A237104.P9380210777811061689

/-! ## A237104.P4520216237480441520

`A237108(A167614(n+2)+1)`
-/

namespace A237104.P4520216237480441520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A167614 (n + 2) + 1).toNat

end

end A237104.P4520216237480441520

/-! ## A237104.P12027557136862725000

`A237108(A000217(n+3)+4)`
-/

namespace A237104.P12027557136862725000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A000217 (n + 3) + 4).toNat

end

end A237104.P12027557136862725000

/-! ## A237104.P11223181316658996076

`A237108(A034856(n+2)+6)`
-/

namespace A237104.P11223181316658996076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A034856 (n + 2) + 6).toNat

end

end A237104.P11223181316658996076

/-!
# A237105: Number of (n+1)X(5+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237105, there is no canonical definition to state claims against.
-/

/-! ## A237105.P12449878045907100572

`A237108(A374005(n+1))`
-/

namespace A237105.P12449878045907100572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A374005 (n + 1)).toNat

end

end A237105.P12449878045907100572

/-! ## A237105.P8883590508463243830

`A237108(A167499(n+3))`
-/

namespace A237105.P8883590508463243830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A167499 (n + 3)).toNat

end

end A237105.P8883590508463243830

/-! ## A237105.P7851045533046261244

`A237108(eq[2, A193592(n)-2])`
-/

namespace A237105.P7851045533046261244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237105.P7851045533046261244

/-!
# A237106: Number of (n+1)X(6+1) 0..2 arrays with the maximum minus the upper median of every 2X2 subblock equal.

The programs for A237106, there is no canonical definition to state claims against.
-/

/-! ## A237106.P11430464204272121658

`A237108(A374007(n+1))`
-/

namespace A237106.P11430464204272121658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A374007 (n + 1)).toNat

end

end A237106.P11430464204272121658

/-! ## A237106.P16117104721820039840

`A237108(eq[5, A193592(n)])`
-/

namespace A237106.P16117104721820039840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237106.P16117104721820039840

/-! ## A237106.P9324307031704429351

`A237108(Δ[Δ[A006504(n+1)]])`
-/

namespace A237106.P9324307031704429351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (f1 (n + 1) - f1 n).toNat

end

end A237106.P9324307031704429351

/-!
# A237107: 

The programs for A237107, there is no canonical definition to state claims against.
-/

/-! ## A237107.P4994255566932411168

`A237108(A000124(n+6)+6)`
-/

namespace A237107.P4994255566932411168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237108 (A000124 (n + 6) + 6).toNat

end

end A237107.P4994255566932411168

/-!
# A237109: a(n) is the numerator of 2*n / ((n+2) * (n+3)).

The programs for A237109, the canonical program `A237109.P18187081307035529190` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237109 has offset 1).

The definition of A237109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237109.P18187081307035529190

`gcd(n+1, ∑[∑[(n+2)²]])`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237109

/-- `gcd(n+1, ∑[∑[(n+2)²]])` -/
def P18187081307035529190.Spec : Prop :=
  ∀ n, (P18187081307035529190.a n : ℤ) = A237109 (n + 1)

theorem P18187081307035529190.correct : P18187081307035529190.Spec := by
  intro n
  simp only [A237109, Nat.add_sub_cancel]

end A237109

/-! ## A237109.P11010373621112265835

`n%A146307(n+1)+1`
-/

namespace A237109.P11010373621112265835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A146307 (n + 1)) + 1

end

end A237109.P11010373621112265835

namespace A237109

/-- `n%A146307(n+1)+1` -/
def P11010373621112265835.Spec : Prop :=
  ∀ n, P11010373621112265835.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P6396329188410074204

`A022998(A060789(n+1))`
-/

namespace A237109.P6396329188410074204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A060789 (n + 1)).toNat

end

end A237109.P6396329188410074204

namespace A237109

/-- `A022998(A060789(n+1))` -/
def P6396329188410074204.Spec : Prop :=
  ∀ n, P6396329188410074204.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P17092741853572951088

`A060789(n+1)*A177704(n)`
-/

namespace A237109.P17092741853572951088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (n + 1) * A177704 n

end

end A237109.P17092741853572951088

namespace A237109

/-- `A060789(n+1)*A177704(n)` -/
def P17092741853572951088.Spec : Prop :=
  ∀ n, P17092741853572951088.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P15611278783685732587

`A129202(n)/A186646(n+1)`
-/

namespace A237109.P15611278783685732587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129202 n : ℚ) / (A186646 (n + 1) : ℚ)

end

end A237109.P15611278783685732587

namespace A237109

/-- `A129202(n)/A186646(n+1)` -/
def P15611278783685732587.Spec : Prop :=
  ∀ n, P15611278783685732587.a n = (A237109 (n + 1) : ℚ)

end A237109

/-! ## A237109.P12434944363088763107

`A374490(n+1)%A059030(n+1)`
-/

namespace A237109.P12434944363088763107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374490 (n + 1)) (A059030 (n + 1))

end

end A237109.P12434944363088763107

namespace A237109

/-- `A374490(n+1)%A059030(n+1)` -/
def P12434944363088763107.Spec : Prop :=
  ∀ n, P12434944363088763107.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P6242166278230574984

`A026741(n+1)*A060789(n+1)/A060819(n+1)`
-/

namespace A237109.P6242166278230574984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) * A060789 (n + 1) : ℚ) / (A060819 (n + 1) : ℚ)

end

end A237109.P6242166278230574984

namespace A237109

/-- `A026741(n+1)*A060789(n+1)/A060819(n+1)` -/
def P6242166278230574984.Spec : Prop :=
  ∀ n, P6242166278230574984.a n = (A237109 (n + 1) : ℚ)

end A237109

/-! ## A237109.P3267972578774488183

`A060789(n+1)/A051724(n+1)*A060789(n+1)`
-/

namespace A237109.P3267972578774488183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060789 (n + 1) : ℚ) / (A051724 (n + 1) : ℚ) * (A060789 (n + 1) : ℚ)

end

end A237109.P3267972578774488183

namespace A237109

/-- `A060789(n+1)/A051724(n+1)*A060789(n+1)` -/
def P3267972578774488183.Spec : Prop :=
  ∀ n, P3267972578774488183.a n = (A237109 (n + 1) : ℚ)

end A237109

/-! ## A237109.P1972394543971293777

`A283971(A051176(n+1))`
-/

namespace A237109.P1972394543971293777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A051176 (n + 1)).toNat

end

end A237109.P1972394543971293777

namespace A237109

/-- `A283971(A051176(n+1))` -/
def P1972394543971293777.Spec : Prop :=
  ∀ n, P1972394543971293777.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P5880495405553183252

`A283971(A068217(n+1)/2)`
-/

namespace A237109.P5880495405553183252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (SequenceMachineLib.roundAway ((A068217 (n + 1) : ℚ) / 2)).toNat

end

end A237109.P5880495405553183252

namespace A237109

/-- `A283971(A068217(n+1)/2)` -/
def P5880495405553183252.Spec : Prop :=
  ∀ n, P5880495405553183252.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P11084383408955494129

`A022998((n+1)/A089128(n+1))`
-/

namespace A237109.P11084383408955494129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A089128 (n + 1) : ℚ))).toNat

end

end A237109.P11084383408955494129

namespace A237109

/-- `A022998((n+1)/A089128(n+1))` -/
def P11084383408955494129.Spec : Prop :=
  ∀ n, P11084383408955494129.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P5979639331477791605

`A283971(A109044(n+1)-A068217(n+1))`
-/

namespace A237109.P5979639331477791605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A109044 (n + 1) - A068217 (n + 1)).toNat

end

end A237109.P5979639331477791605

namespace A237109

/-- `A283971(A109044(n+1)-A068217(n+1))` -/
def P5979639331477791605.Spec : Prop :=
  ∀ n, P5979639331477791605.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P1305325990609464890

`A022998(A026741((n+1)/A109007(n+1)))`
-/

namespace A237109.P1305325990609464890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A026741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A109007 (n + 1) : ℚ))).toNat).toNat

end

end A237109.P1305325990609464890

namespace A237109

/-- `A022998(A026741((n+1)/A109007(n+1)))` -/
def P1305325990609464890.Spec : Prop :=
  ∀ n, P1305325990609464890.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P4587161689791756353

`A026741(n+1)*A051176(n+1)/A186646(n+1)`
-/

namespace A237109.P4587161689791756353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026741 (n + 1) * A051176 (n + 1) : ℚ) / (A186646 (n + 1) : ℚ)

end

end A237109.P4587161689791756353

namespace A237109

/-- `A026741(n+1)*A051176(n+1)/A186646(n+1)` -/
def P4587161689791756353.Spec : Prop :=
  ∀ n, P4587161689791756353.a n = (A237109 (n + 1) : ℚ)

end A237109

/-! ## A237109.P2905554776878726394

`A060789(n+1)*A106611(n+1)/A106621(n+1)`
-/

namespace A237109.P2905554776878726394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060789 (n + 1) * A106611 (n + 1) : ℚ) / (A106621 (n + 1) : ℚ)

end

end A237109.P2905554776878726394

namespace A237109

/-- `A060789(n+1)*A106611(n+1)/A106621(n+1)` -/
def P2905554776878726394.Spec : Prop :=
  ∀ n, P2905554776878726394.a n = (A237109 (n + 1) : ℚ)

end A237109

/-! ## A237109.P5250622120432924419

`A106610(A374490(n+1))`
-/

namespace A237109.P5250622120432924419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A374490 (n + 1)).toNat

end

end A237109.P5250622120432924419

namespace A237109

/-- `A106610(A374490(n+1))` -/
def P5250622120432924419.Spec : Prop :=
  ∀ n, P5250622120432924419.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P15932301867309881469

`A283971(A146307(n+1))`
-/

namespace A237109.P15932301867309881469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 (A146307 (n + 1)).toNat

end

end A237109.P15932301867309881469

namespace A237109

/-- `A283971(A146307(n+1))` -/
def P15932301867309881469.Spec : Prop :=
  ∀ n, P15932301867309881469.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P10838173478503719122

`A145979(2*(A060789(n+1)-1))`
-/

namespace A237109.P10838173478503719122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (2 * (A060789 (n + 1) - 1)).toNat

end

end A237109.P10838173478503719122

namespace A237109

/-- `A145979(2*(A060789(n+1)-1))` -/
def P10838173478503719122.Spec : Prop :=
  ∀ n, P10838173478503719122.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P9534814775359489760

`A146307(lcm(2, n+1))`
-/

namespace A237109.P9534814775359489760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (Nat.lcm 2 (n + 1))

end

end A237109.P9534814775359489760

namespace A237109

/-- `A146307(lcm(2, n+1))` -/
def P9534814775359489760.Spec : Prop :=
  ∀ n, P9534814775359489760.a n = A237109 (n + 1)

end A237109

/-! ## A237109.P10748671861752206061

`A060789(A188167(n+1))`
-/

namespace A237109.P10748671861752206061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A188167 (n + 1)).toNat

end

end A237109.P10748671861752206061

namespace A237109

/-- `A060789(A188167(n+1))` -/
def P10748671861752206061.Spec : Prop :=
  ∀ n, P10748671861752206061.a n = A237109 (n + 1)

end A237109

/-!
# A237110: Maximum number of distinct prime factors of pairs of coprime g and h (g < h) adding to n.

The programs for A237110, there is no canonical definition to state claims against.
-/

/-! ## A237110.P5931596678600983203

`A134021(A023022(n+3)%A134044(n+1))`
-/

namespace A237110.P5931596678600983203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134021 (Int.tmod (A023022 (n + 3)) (A134044 (n + 1))).toNat

end

end A237110.P5931596678600983203

/-! ## A237110.P2736492143470343617

`A080342(A000010(n+3)%A159976(n+1))`
-/

namespace A237110.P2736492143470343617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080342 (Int.tmod (A000010 (n + 3)) (A159976 (n + 1))).toNat

end

end A237110.P2736492143470343617

/-! ## A237110.P7721909872725788001

`round(log(log(A309526(n+3))))`
-/

namespace A237110.P7721909872725788001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.log (A309526 (n + 3) : ℝ)))

end

end A237110.P7721909872725788001

/-! ## A237110.P17842465957631096844

`ceil(A364158(2*n+3)/A155085(n+3))`
-/

namespace A237110.P17842465957631096844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A364158 (2 * n + 3) : ℚ) / (A155085 (n + 3) : ℚ)⌉

end

end A237110.P17842465957631096844

/-! ## A237110.P13889451872805003988

`A001221(A141523(n)+A005117(2*(n+2)))`
-/

namespace A237110.P13889451872805003988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A141523 n + A005117 (2 * (n + 2))).toNat

end

end A237110.P13889451872805003988

/-!
# A237113: Number of partitions of n such that some part is a sum of two other parts.

The programs for A237113, there is no canonical definition to state claims against.
-/

/-! ## A237113.P14592600392821850252

`A000041(n)-A236912(n)`
-/

namespace A237113.P14592600392821850252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A236912 n

end

end A237113.P14592600392821850252

/-! ## A237113.P10714999412794592062

`A213598(n)-A236912(n)`
-/

namespace A237113.P10714999412794592062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A236912 n

end

end A237113.P10714999412794592062

/-! ## A237113.P4409828741844022422

`sqrt(A001255(n))-A236912(n)`
-/

namespace A237113.P4409828741844022422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A236912 n : ℝ)

end

end A237113.P4409828741844022422

/-! ## A237113.P13447286684113136974

`∑[A002865(n)]-A236912(n)`
-/

namespace A237113.P13447286684113136974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A236912 n

end

end A237113.P13447286684113136974

/-! ## A237113.P12382184772669238380

`A000065(n)+1-A236912(n)`
-/

namespace A237113.P12382184772669238380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1 - A236912 n

end

end A237113.P12382184772669238380

/-!
# A237114: Smallest semiprime of the form k^prime(n)+1, or 0 if no such semiprime exists.

The programs for A237114, there is no canonical definition to state claims against.
-/

/-! ## A237114.P5201835849922703752

`A237115(n+1)*A237116(n+1)`
-/

namespace A237114.P5201835849922703752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237115 (n + 1) * A237116 (n + 1)

end

end A237114.P5201835849922703752

/-! ## A237114.P4893448752572740116

`A081547(p?[A319075(n)])`
-/

namespace A237114.P4893448752572740116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319075 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081547 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237114.P4893448752572740116

/-! ## A237114.P16164668918440357383

`A081547(p?[A333483(n)])`
-/

namespace A237114.P16164668918440357383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081547 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237114.P16164668918440357383

/-! ## A237114.P6870317119691872639

`A116916(∑[A217309(n)])+A098640(n+1)`
-/

namespace A237114.P6870317119691872639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116916 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A098640 (n + 1)

end

end A237114.P6870317119691872639

/-! ## A237114.P17809310748296694038

`A002587(p?[A034867(n)])*A237115(n+1)`
-/

namespace A237114.P17809310748296694038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat * A237115 (n + 1)

end

end A237114.P17809310748296694038

/-!
# A237115: Lesser prime factor of the smallest semiprime of the form k^prime(n)+1, or 0 if no such semiprime exists.

The programs for A237115, there is no canonical definition to state claims against.
-/

/-! ## A237115.P14582411440178537789

`A215488(∏[A030615(n+1)]!)`
-/

namespace A237115.P14582411440178537789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215488 (Nat.factorial (∏ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A237115.P14582411440178537789

/-! ## A237115.P3732941206513685470

`p?[∑[A017905(A017895(3*n))]]`
-/

namespace A237115.P3732941206513685470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017905 (A017895 (3 * n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237115.P3732941206513685470

/-! ## A237115.P11628024846645468314

`A324407((n-1)*A324435(n)+5)`
-/

namespace A237115.P11628024846645468314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324407 (((n : ℤ) - 1) * A324435 n + 5).toNat

end

end A237115.P11628024846645468314

/-! ## A237115.P996156749781786881

`p?[∑[A017905(A017904(3*n+1))]]`
-/

namespace A237115.P996156749781786881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017905 (A017904 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237115.P996156749781786881

/-! ## A237115.P12708249261618804866

`A117366(A017902(n+7)^A007918(n)+1)`
-/

namespace A237115.P12708249261618804866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (SequenceMachineLib.roundAway ((A017902 (n + 7) : ℚ) ^ (A007918 n : ℤ) + 1)).toNat

end

end A237115.P12708249261618804866

/-!
# A237116: Larger prime factor of the smallest semiprime of the form k^prime(n)+1, or 0 if no such semiprime exists.

The programs for A237116, there is no canonical definition to state claims against.
-/

/-! ## A237116.P12988176667865198956

`A237114(n+1)/A237115(n+1)`
-/

namespace A237116.P12988176667865198956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237114 (n + 1) : ℚ) / (A237115 (n + 1) : ℚ)

end

end A237116.P12988176667865198956

/-! ## A237116.P1042195923591770256

`A002587(p?[A034867(n)])`
-/

namespace A237116.P1042195923591770256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237116.P1042195923591770256

/-! ## A237116.P4814145206601455194

`A066845(p?[A243353(n)])`
-/

namespace A237116.P4814145206601455194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066845 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237116.P4814145206601455194

/-! ## A237116.P1795855336930245224

`A002587(p?[A335422(n)])`
-/

namespace A237116.P1795855336930245224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A237116.P1795855336930245224

/-! ## A237116.P17975482791828615920

`A002587(eq[2, A353858(n)])`
-/

namespace A237116.P17975482791828615920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237116.P17975482791828615920

/-!
# A237117: Remainder mod p of the smallest semiprime of the form k^p+1, where p = prime(n); or -1 if no such semiprime exists.

The programs for A237117, there is no canonical definition to state claims against.
-/

/-! ## A237117.P2970416167627758025

`A237115(n+1)%A000040(n+1)`
-/

namespace A237117.P2970416167627758025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237115 (n + 1)) (A000040 (n + 1))

end

end A237117.P2970416167627758025

/-! ## A237117.P3265058504382066835

`A237115(n+1)%Δ[A007504(n)]`
-/

namespace A237117.P3265058504382066835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237115 (n + 1)) (f1 (n + 1) - f1 n)

end

end A237117.P3265058504382066835

/-! ## A237117.P14668270070666451163

`A020639(A237115(n+1))%p?[A234017(n)]`
-/

namespace A237117.P14668270070666451163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234017 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A237115 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A237117.P14668270070666451163

/-!
# A237118: Number of white areas in the graph of elementary cellular automaton with rule 30 at generation n.

The programs for A237118, there is no canonical definition to state claims against.
-/

/-! ## A237118.P699579057473798998

`∑[∑[A294068(A134283(3*n+5))]]`
-/

namespace A237118.P699579057473798998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294068 (A134283 (3 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237118.P699579057473798998

/-! ## A237118.P7801663269428522418

`A056556(comp[Δ[lcm(3, n)]]*A024787(n+1))`
-/

namespace A237118.P7801663269428522418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A024787 (n + 1)).toNat

end

end A237118.P7801663269428522418

/-! ## A237118.P17505900851444882254

`∑[round(A020753(n+1)/6)]`
-/

namespace A237118.P17505900851444882254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A020753 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237118.P17505900851444882254

/-! ## A237118.P3882036048940702508

`∑[round(A352922(n+1)/6)]`
-/

namespace A237118.P3882036048940702508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A352922 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237118.P3882036048940702508

/-! ## A237118.P8563018575733389272

`A090532(A129361(n))`
-/

namespace A237118.P8563018575733389272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090532 (A129361 n).toNat

end

end A237118.P8563018575733389272

/-!
# A237119: Number of white areas in the graph of elementary cellular automaton with rule 110 at generation n.

The programs for A237119, there is no canonical definition to state claims against.
-/

/-! ## A237119.P13463481933892154301

`A067842(A175970(n+1))%A113997(n)`
-/

namespace A237119.P13463481933892154301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067842 (A175970 (n + 1)).toNat) (A113997 n)

end

end A237119.P13463481933892154301

/-! ## A237119.P12155010048209223281

`A048766(A003056(n)*A308251(n))`
-/

namespace A237119.P12155010048209223281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A003056 n * A308251 n).toNat

end

end A237119.P12155010048209223281

/-! ## A237119.P4030104012994036362

`A048766(A003056(n)*A215513(n+1))`
-/

namespace A237119.P4030104012994036362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A003056 n * A215513 (n + 1)).toNat

end

end A237119.P4030104012994036362

/-! ## A237119.P12847502304655905567

`A048766(A007917(n+2)*A117989(n+1))`
-/

namespace A237119.P12847502304655905567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A007917 (n + 2) * A117989 (n + 1)).toNat

end

end A237119.P12847502304655905567

/-!
# A237120: Number of white areas in the graph of elementary cellular automaton with rule 150 at generation n.

The programs for A237120, there is no canonical definition to state claims against.
-/

/-! ## A237120.P7569863392014985922

`A118911(n)-1`
-/

namespace A237120.P7569863392014985922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 n - 1

end

end A237120.P7569863392014985922

/-! ## A237120.P18214563256048341495

`A071053(floor(n/2))-1`
-/

namespace A237120.P18214563256048341495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 ⌊(n : ℚ) / 2⌋.toNat - 1

end

end A237120.P18214563256048341495

/-! ## A237120.P9354025619838381974

`A267148(or(1, n)-1)-1`
-/

namespace A237120.P9354025619838381974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (Nat.lor 1 n - 1) - 1

end

end A237120.P9354025619838381974

/-! ## A237120.P15115261262318133726

`A267148(A052928(n))-1`
-/

namespace A237120.P15115261262318133726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (A052928 n).toNat - 1

end

end A237120.P15115261262318133726

/-! ## A237120.P7949426763379935307

`(A071052(2*n)-A071052(2*n+1))/2`
-/

namespace A237120.P7949426763379935307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071052 (2 * n) - A071052 (2 * n + 1) : ℚ) / 2

end

end A237120.P7949426763379935307

/-! ## A237120.P6766427432041183682

`A029578(A071053(A029578(n)))`
-/

namespace A237120.P6766427432041183682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A071053 (A029578 n).toNat).toNat

end

end A237120.P6766427432041183682

/-! ## A237120.P5770137776990139426

`A052928(A267148(A052928(n)))`
-/

namespace A237120.P5770137776990139426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A267148 (A052928 n).toNat).toNat

end

end A237120.P5770137776990139426

/-! ## A237120.P8732613719325340757

`and(A056453(n+1), A118911(n))`
-/

namespace A237120.P8732613719325340757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056453 (n + 1)) (A118911 n)

end

end A237120.P8732613719325340757

/-! ## A237120.P4966001198282339859

`and(A118911(n), A230624(n+1))`
-/

namespace A237120.P4966001198282339859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118911 n) (A230624 (n + 1))

end

end A237120.P4966001198282339859

/-! ## A237120.P1461860651064915308

`and(A118911(n), A183977(n+1))`
-/

namespace A237120.P1461860651064915308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118911 n) (A183977 (n + 1))

end

end A237120.P1461860651064915308

/-! ## A237120.P11979658128517986796

`and(A118911(n), A250741(n+1))`
-/

namespace A237120.P11979658128517986796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118911 n) (A250741 (n + 1))

end

end A237120.P11979658128517986796

/-! ## A237120.P13666121264601628395

`and(A118911(n), A208902(n+1))`
-/

namespace A237120.P13666121264601628395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118911 n) (A208902 (n + 1))

end

end A237120.P13666121264601628395

/-! ## A237120.P5651434823934535363

`A070198(n)%A118911(n)`
-/

namespace A237120.P5651434823934535363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A118911 n)

end

end A237120.P5651434823934535363

/-! ## A237120.P16307500057281732466

`A079782(n+1)%A118911(n)`
-/

namespace A237120.P16307500057281732466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A118911 n)

end

end A237120.P16307500057281732466

/-! ## A237120.P2134507116766131785

`A083685(n+1)%A118911(n)`
-/

namespace A237120.P2134507116766131785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A118911 n)

end

end A237120.P2134507116766131785

/-! ## A237120.P11032355027968154513

`A121934(n+1)%A118911(n)`
-/

namespace A237120.P11032355027968154513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A118911 n)

end

end A237120.P11032355027968154513

/-! ## A237120.P1721786366415021358

`and(A118911(n), A158525(n+4))`
-/

namespace A237120.P1721786366415021358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118911 n) (A158525 (n + 4))

end

end A237120.P1721786366415021358

/-! ## A237120.P14321799910149030141

`and(A002446(n), A118911(n))`
-/

namespace A237120.P14321799910149030141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002446 n) (A118911 n)

end

end A237120.P14321799910149030141

/-! ## A237120.P8790030182323406732

`and(A005367(n), A118911(n))`
-/

namespace A237120.P8790030182323406732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005367 n) (A118911 n)

end

end A237120.P8790030182323406732

/-! ## A237120.P17779650919144998719

`and(A118911(n), A286778(n))`
-/

namespace A237120.P17779650919144998719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A118911 n) (A286778 n)

end

end A237120.P17779650919144998719

/-!
# A237122: Smallest lucky number that is divisible by n-th lucky number.

The programs for A237122, there is no canonical definition to state claims against.
-/

/-! ## A237122.P7365671048210211087

`A376457(A018034(n))`
-/

namespace A237122.P7365671048210211087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376457 (A018034 n).toNat

end

end A237122.P7365671048210211087

/-!
# A237123: Number of ways to write n = i + j + k with 0 < i < j < k such that phi(i), phi(j) and phi(k) are all cubes, where phi(.) is Euler's totient function.

The programs for A237123, there is no canonical definition to state claims against.
-/

/-! ## A237123.P5482428477054889677

`A055641(A038045(n+2)+A184398(n+1)%A141214(n))`
-/

namespace A237123.P5482428477054889677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (A038045 (n + 2) + Int.tmod (A184398 (n + 1)) (A141214 n)).toNat

end

end A237123.P5482428477054889677

/-! ## A237123.P3127635634902554318

`A270417(A340986(n)+7)`
-/

namespace A237123.P3127635634902554318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270417 (A340986 n + 7).toNat

end

end A237123.P3127635634902554318

/-! ## A237123.P16807610776451987269

`A056239(A097305(3*n+1))%A097305(n+1)`
-/

namespace A237123.P16807610776451987269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A097305 (3 * n + 1)).toNat) (A097305 (n + 1))

end

end A237123.P16807610776451987269

/-! ## A237123.P373153491059329218

`and(A036639(n)*A165190(n), A054900(n))`
-/

namespace A237123.P373153491059329218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036639 n * A165190 n) (A054900 n)

end

end A237123.P373153491059329218

/-! ## A237123.P581505468358838169

`and(A054900(A074680(2*n)²), A054900(n))`
-/

namespace A237123.P581505468358838169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054900 (A074680 (2 * n) ^ 2).toNat) (A054900 n)

end

end A237123.P581505468358838169

/-!
# A237124: Triangle of numbers related to Catalan numbers (A000108).

The programs for A237124, the canonical program `A237124.P1225317986327375735` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237124 has offset 0).

The definition of A237124 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 496 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A237124.P1225317986327375735

`A033184(n+1)-A059365(n+2)%A039599(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A237124

/-- `A033184(n+1)-A059365(n+2)%A039599(n)` -/
def P1225317986327375735.Spec : Prop :=
  ∀ n, P1225317986327375735.a n = A237124 n

theorem P1225317986327375735.correct : P1225317986327375735.Spec := by
  intro n
  simp only [A237124]

end A237124

/-! ## A237124.P13575298458045762552

`A033184(n+1)+A181645(n+1)%A181644(n)`
-/

namespace A237124.P13575298458045762552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (n + 1) + Int.tmod (A181645 (n + 1)) (A181644 n)

end

end A237124.P13575298458045762552

namespace A237124

/-- `A033184(n+1)+A181645(n+1)%A181644(n)` -/
def P13575298458045762552.Spec : Prop :=
  ∀ n, P13575298458045762552.a n = A237124 n

end A237124

/-! ## A237124.P2487072297377147875

`A064189(n)-A212126(A038279(n))`
-/

namespace A237124.P2487072297377147875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064189 n - A212126 (A038279 n).toNat

end

end A237124.P2487072297377147875

namespace A237124

/-- `A064189(n)-A212126(A038279(n))` -/
def P2487072297377147875.Spec : Prop :=
  ∀ n, P2487072297377147875.a n = A237124 n

end A237124

/-! ## A237124.P16564044884755971562

`or(A125781(n), A259598(A119502(n)))`
-/

namespace A237124.P16564044884755971562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125781 n) (A259598 (A119502 n).toNat)

end

end A237124.P16564044884755971562

namespace A237124

/-- `or(A125781(n), A259598(A119502(n)))` -/
def P16564044884755971562.Spec : Prop :=
  ∀ n, P16564044884755971562.a n = A237124 n

end A237124

/-!
# A237127: Number of ways to write n = k + m (0 < k < m) with k and m terms of A072281.

The programs for A237127, there is no canonical definition to state claims against.
-/

/-! ## A237127.P7758293500470692161

`A139351(A089265(A212369(n))²)`
-/

namespace A237127.P7758293500470692161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A089265 (A212369 n).toNat ^ 2).toNat

end

end A237127.P7758293500470692161

/-!
# A237128: Angles n expressed in degrees such that 2*cos(n) = phi where phi is the golden ratio (A001622).

The programs for A237128, the canonical program `A237128.P2122948040104576520` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237128 has offset 1).

The definition of A237128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237128.P11042679189976642333

`ogf((36+288x+36x^2)/(1-x-x^2+x^3))`
-/

namespace A237128.P11042679189976642333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [36, 288, 36] [1, -1, -1, 1] n

end

end A237128.P11042679189976642333

namespace A237128

/-- `ogf((36+288x+36x^2)/(1-x-x^2+x^3))` -/
def P11042679189976642333.Spec : Prop :=
  ∀ n, P11042679189976642333.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P2122948040104576520

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=36, a(1)=324, a(2)=396`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237128

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P2122948040104576520.Spec : Prop :=
  ∀ n, P2122948040104576520.a n = A237128 (n + 1)

theorem P2122948040104576520.correct : P2122948040104576520.Spec := by
  intro n
  simp only [A237128, Nat.add_sub_cancel]

end A237128

/-! ## A237128.P17796805738810075219

`18*A322489(n+1)`
-/

namespace A237128.P17796805738810075219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  18 * A322489 (n + 1)

end

end A237128.P17796805738810075219

namespace A237128

/-- `18*A322489(n+1)` -/
def P17796805738810075219.Spec : Prop :=
  ∀ n, P17796805738810075219.a n = A237128 (n + 1)

theorem P17796805738810075219.correct : P17796805738810075219.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A237128, Nat.add_sub_cancel, A237128.P17796805738810075219.a, A237128.P2122948040104576520.a, A322489, A322489.P7018430486237923823.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A237128, Nat.add_sub_cancel, A237128.P17796805738810075219.a, A237128.P2122948040104576520.a, A322489, A322489.P7018430486237923823.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A237128

/-! ## A237128.P14942952700819893378

`36*A090771(n+1)`
-/

namespace A237128.P14942952700819893378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A090771 (n + 1)

end

end A237128.P14942952700819893378

namespace A237128

/-- `36*A090771(n+1)` -/
def P14942952700819893378.Spec : Prop :=
  ∀ n, P14942952700819893378.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P5621139753446596953

`10*36*n-a(n-1)` with `a(0)=36`
-/

namespace A237128.P5621139753446596953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [36] fun n a =>
  (10 * (36 * n) : ℤ) - a (n - 1)

end

end A237128.P5621139753446596953

namespace A237128

/-- `10*36*n-a(n-1)` -/
def P5621139753446596953.Spec : Prop :=
  ∀ n, P5621139753446596953.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P1526884877787666270

`Δ[36*A195142(n)]`
-/

namespace A237128.P1526884877787666270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A195142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A237128.P1526884877787666270

namespace A237128

/-- `Δ[36*A195142(n)]` -/
def P1526884877787666270.Spec : Prop :=
  ∀ n, P1526884877787666270.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P7548468477614079932

`6*6*sqrt(A273372(n+1))`
-/

namespace A237128.P7548468477614079932
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  6 * (6 * Real.sqrt (A273372 (n + 1) : ℝ))

end

end A237128.P7548468477614079932

namespace A237128

/-- `6*6*sqrt(A273372(n+1))` -/
def P7548468477614079932.Spec : Prop :=
  ∀ n, P7548468477614079932.a n = (A237128 (n + 1) : ℝ)

end A237128

/-! ## A237128.P8837057752204255437

`∑[A040007(n+1)²*A040012(n)]`
-/

namespace A237128.P8837057752204255437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 (n + 1) ^ 2 * A040012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237128.P8837057752204255437

namespace A237128

/-- `∑[A040007(n+1)²*A040012(n)]` -/
def P8837057752204255437.Spec : Prop :=
  ∀ n, P8837057752204255437.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P11517653269167601151

`36*A045572(A042948(n+1))`
-/

namespace A237128.P11517653269167601151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A045572 (A042948 (n + 1)).toNat

end

end A237128.P11517653269167601151

namespace A237128

/-- `36*A045572(A042948(n+1))` -/
def P11517653269167601151.Spec : Prop :=
  ∀ n, P11517653269167601151.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P11703949681338325100

`A044102(A090771(n+1))`
-/

namespace A237128.P11703949681338325100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044102 (A090771 (n + 1)).toNat

end

end A237128.P11703949681338325100

namespace A237128

/-- `A044102(A090771(n+1))` -/
def P11703949681338325100.Spec : Prop :=
  ∀ n, P11703949681338325100.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P12426020423029317285

`36*A097062(A016885(n))`
-/

namespace A237128.P12426020423029317285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  36 * A097062 (A016885 n).toNat

end

end A237128.P12426020423029317285

namespace A237128

/-- `36*A097062(A016885(n))` -/
def P12426020423029317285.Spec : Prop :=
  ∀ n, P12426020423029317285.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P4852635685018013561

`A008600(A322489(n+1))`
-/

namespace A237128.P4852635685018013561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008600 (A322489 (n + 1)).toNat

end

end A237128.P4852635685018013561

namespace A237128

/-- `A008600(A322489(n+1))` -/
def P4852635685018013561.Spec : Prop :=
  ∀ n, P4852635685018013561.a n = A237128 (n + 1)

end A237128

/-! ## A237128.P9791076434771258215

`A008588(A008588(A168301(n+1)+2*n))`
-/

namespace A237128.P9791076434771258215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A008588 (A168301 (n + 1) + (2 * n : ℤ)).toNat).toNat

end

end A237128.P9791076434771258215

namespace A237128

/-- `A008588(A008588(A168301(n+1)+2*n))` -/
def P9791076434771258215.Spec : Prop :=
  ∀ n, P9791076434771258215.a n = A237128 (n + 1)

end A237128

/-!
# A237132: Values of x in the solutions to x^2 - 3xy + y^2 + 11 = 0, where 0 < x < y.

The programs for A237132, the canonical program `A237132.P8063988288269860195` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237132 has offset 1).

The definition of A237132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237132.P2994132971817527272

`ogf((3+4x-4x^2-3x^3)/(1-3x^2+x^4))`
-/

namespace A237132.P2994132971817527272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 4, -4, -3] [1, 0, -3, 0, 1] n

end

end A237132.P2994132971817527272

namespace A237132

/-- `ogf((3+4x-4x^2-3x^3)/(1-3x^2+x^4))` -/
def P2994132971817527272.Spec : Prop :=
  ∀ n, P2994132971817527272.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P8063988288269860195

`3*a(n-2)-a(n-4)` with `a(0)=3, a(1)=4, a(2)=5, a(3)=9`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237132

/-- `3*a(n-2)-a(n-4)` -/
def P8063988288269860195.Spec : Prop :=
  ∀ n, P8063988288269860195.a n = A237132 (n + 1)

theorem P8063988288269860195.correct : P8063988288269860195.Spec := by
  intro n
  simp only [A237132, Nat.add_sub_cancel]

end A237132

/-! ## A237132.P2810613594557880845

`∑[A005013(n)]+3`
-/

namespace A237132.P2810613594557880845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A237132.P2810613594557880845

namespace A237132

/-- `∑[A005013(n)]+3` -/
def P2810613594557880845.Spec : Prop :=
  ∀ n, P2810613594557880845.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P16124226477044167620

`A020706(n)-A097132(n)`
-/

namespace A237132.P16124226477044167620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n - A097132 n

end

end A237132.P16124226477044167620

namespace A237132

/-- `A020706(n)-A097132(n)` -/
def P16124226477044167620.Spec : Prop :=
  ∀ n, P16124226477044167620.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P14685601021894235127

`A018910(n)-A112469(n)`
-/

namespace A237132.P14685601021894235127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n - A112469 n

end

end A237132.P14685601021894235127

namespace A237132

/-- `A018910(n)-A112469(n)` -/
def P14685601021894235127.Spec : Prop :=
  ∀ n, P14685601021894235127.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P12830455066885104580

`∑[A210209(A005843(n))]+3`
-/

namespace A237132.P12830455066885104580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210209 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A237132.P12830455066885104580

namespace A237132

/-- `∑[A210209(A005843(n))]+3` -/
def P12830455066885104580.Spec : Prop :=
  ∀ n, P12830455066885104580.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P9040569354361272762

`∑[A302126(A014601(n))]+3`
-/

namespace A237132.P9040569354361272762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A014601 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A237132.P9040569354361272762

namespace A237132

/-- `∑[A302126(A014601(n))]+3` -/
def P9040569354361272762.Spec : Prop :=
  ∀ n, P9040569354361272762.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P14890856930714165613

`A005247(n+1)+A005247(n)`
-/

namespace A237132.P14890856930714165613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005247 (n + 1) + A005247 n

end

end A237132.P14890856930714165613

namespace A237132

/-- `A005247(n+1)+A005247(n)` -/
def P14890856930714165613.Spec : Prop :=
  ∀ n, P14890856930714165613.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P1178382056385773086

`A140833(n+1)+A061084(n)`
-/

namespace A237132.P1178382056385773086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140833 (n + 1) + A061084 n

end

end A237132.P1178382056385773086

namespace A237132

/-- `A140833(n+1)+A061084(n)` -/
def P1178382056385773086.Spec : Prop :=
  ∀ n, P1178382056385773086.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P9257908203469231121

`A237133(n+1)-A094967(n)`
-/

namespace A237132.P9257908203469231121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237133 (n + 1) - A094967 n

end

end A237132.P9257908203469231121

namespace A237132

/-- `A237133(n+1)-A094967(n)` -/
def P9257908203469231121.Spec : Prop :=
  ∀ n, P9257908203469231121.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P18271508177104542989

`A020695(n)+2-A112469(n)`
-/

namespace A237132.P18271508177104542989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + (2 - A112469 n)

end

end A237132.P18271508177104542989

namespace A237132

/-- `A020695(n)+2-A112469(n)` -/
def P18271508177104542989.Spec : Prop :=
  ∀ n, P18271508177104542989.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P13358964634579649305

`A087123(n)+2*A094967(n)`
-/

namespace A237132.P13358964634579649305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 n + 2 * A094967 n

end

end A237132.P13358964634579649305

namespace A237132

/-- `A087123(n)+2*A094967(n)` -/
def P13358964634579649305.Spec : Prop :=
  ∀ n, P13358964634579649305.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P16046844533467260010

`A218735(n+1)-2*A094967(n)`
-/

namespace A237132.P16046844533467260010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218735 (n + 1) - 2 * A094967 n

end

end A237132.P16046844533467260010

namespace A237132

/-- `A218735(n+1)-2*A094967(n)` -/
def P16046844533467260010.Spec : Prop :=
  ∀ n, P16046844533467260010.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P13719573779845880624

`A097594(2*n)+A051792(2*(n+1))`
-/

namespace A237132.P13719573779845880624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097594 (2 * n) + A051792 (2 * (n + 1))

end

end A237132.P13719573779845880624

namespace A237132

/-- `A097594(2*n)+A051792(2*(n+1))` -/
def P13719573779845880624.Spec : Prop :=
  ∀ n, P13719573779845880624.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P10628030520819192403

`A123231(2*(n+1))+A051792(2*(n+1))`
-/

namespace A237132.P10628030520819192403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123231 (2 * (n + 1)) + A051792 (2 * (n + 1))

end

end A237132.P10628030520819192403

namespace A237132

/-- `A123231(2*(n+1))+A051792(2*(n+1))` -/
def P10628030520819192403.Spec : Prop :=
  ∀ n, P10628030520819192403.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P1123944648146643593

`A053602(2*(n+3))+A051792(2*(n+1))`
-/

namespace A237132.P1123944648146643593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * (n + 3)) + A051792 (2 * (n + 1))

end

end A237132.P1123944648146643593

namespace A237132

/-- `A053602(2*(n+3))+A051792(2*(n+1))` -/
def P1123944648146643593.Spec : Prop :=
  ∀ n, P1123944648146643593.a n = A237132 (n + 1)

end A237132

/-! ## A237132.P17946107154994442894

`A063726(2*n+1)+A063726(2*n+3)`
-/

namespace A237132.P17946107154994442894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063726 (2 * n + 1) + A063726 (2 * n + 3)

end

end A237132.P17946107154994442894

namespace A237132

/-- `A063726(2*n+1)+A063726(2*n+3)` -/
def P17946107154994442894.Spec : Prop :=
  ∀ n, P17946107154994442894.a n = A237132 (n + 1)

end A237132

/-!
# A237133: Values of x in the solutions to x^2 - 3xy + y^2 + 19 = 0, where 0 < x < y.

The programs for A237133, the canonical program `A237133.P3639978195321398210` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A237133 has offset 1).

The definition of A237133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A237133.P5973128550302202345

`ogf((4+5x-5x^2-4x^3)/(1-3x^2+x^4))`
-/

namespace A237133.P5973128550302202345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5, -5, -4] [1, 0, -3, 0, 1] n

end

end A237133.P5973128550302202345

namespace A237133

/-- `ogf((4+5x-5x^2-4x^3)/(1-3x^2+x^4))` -/
def P5973128550302202345.Spec : Prop :=
  ∀ n, P5973128550302202345.a n = A237133 (n + 1)

end A237133

/-! ## A237133.P3639978195321398210

`3*a(n-2)-a(n-4)` with `a(0)=4, a(1)=5, a(2)=7, a(3)=11`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A237133

/-- `3*a(n-2)-a(n-4)` -/
def P3639978195321398210.Spec : Prop :=
  ∀ n, P3639978195321398210.a n = A237133 (n + 1)

theorem P3639978195321398210.correct : P3639978195321398210.Spec := by
  intro n
  simp only [A237133, Nat.add_sub_cancel]

end A237133

/-! ## A237133.P14728295394591876905

`A237132(n+1)+A094967(n)`
-/

namespace A237133.P14728295394591876905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237132 (n + 1) + A094967 n

end

end A237133.P14728295394591876905

namespace A237133

/-- `A237132(n+1)+A094967(n)` -/
def P14728295394591876905.Spec : Prop :=
  ∀ n, P14728295394591876905.a n = A237133 (n + 1)

end A237133

/-! ## A237133.P9554747417819309683

`A218735(n+1)-A094967(n)`
-/

namespace A237133.P9554747417819309683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218735 (n + 1) - A094967 n

end

end A237133.P9554747417819309683

namespace A237133

/-- `A218735(n+1)-A094967(n)` -/
def P9554747417819309683.Spec : Prop :=
  ∀ n, P9554747417819309683.a n = A237133 (n + 1)

end A237133

/-! ## A237133.P16478522378125295664

`A237132(n+1)+A000045(A109613(n))`
-/

namespace A237133.P16478522378125295664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237132 (n + 1) + A000045 (A109613 n).toNat

end

end A237133.P16478522378125295664

namespace A237133

/-- `A237132(n+1)+A000045(A109613(n))` -/
def P16478522378125295664.Spec : Prop :=
  ∀ n, P16478522378125295664.a n = A237133 (n + 1)

end A237133

/-! ## A237133.P2396102083530181213

`(A237132(n+1)+A218735(n+1))/2`
-/

namespace A237133.P2396102083530181213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237132 (n + 1) + A218735 (n + 1) : ℚ) / 2

end

end A237133.P2396102083530181213

namespace A237133

/-- `(A237132(n+1)+A218735(n+1))/2` -/
def P2396102083530181213.Spec : Prop :=
  ∀ n, P2396102083530181213.a n = (A237133 (n + 1) : ℚ)

end A237133

/-!
# A237134: Number of (n+1)X(n+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A237134, there is no canonical definition to state claims against.
-/

/-! ## A237134.P14267700948160043833

`A237142((n+1)²+n²)`
-/

namespace A237134.P14267700948160043833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 ((n + 1) ^ 2 + n ^ 2)

end

end A237134.P14267700948160043833

/-!
# A237135: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A237135, there is no canonical definition to state claims against.
-/

/-! ## A237135.P9640440866662371363

`A237142(∑[n]+1)`
-/

namespace A237135.P9640440866662371363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237135.P9640440866662371363

/-! ## A237135.P11588359598711746379

`lcm(2, A237142(A000124(n)))`
-/

namespace A237135.P11588359598711746379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237142 (A000124 n).toNat)

end

end A237135.P11588359598711746379

/-! ## A237135.P14881167911597829907

`record[A010054(n)*A237142(n+1)]`
-/

namespace A237135.P14881167911597829907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237135.P14881167911597829907

/-! ## A237135.P15250613498285386435

`record[root(A237142(n+1), A013609(n))]`
-/

namespace A237135.P15250613498285386435
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237142 (n + 1) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237135.P15250613498285386435

/-! ## A237135.P4736682787219166882

`record[gcd(A002262(n), A237142(n+1))]`
-/

namespace A237135.P4736682787219166882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237142 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237135.P4736682787219166882

/-!
# A237136: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A237136, there is no canonical definition to state claims against.
-/

/-! ## A237136.P5546886426667742678

`A237142(∑[n+1]+2)`
-/

namespace A237136.P5546886426667742678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237136.P5546886426667742678

/-! ## A237136.P8554740163989680750

`record[A010054(n)*A237142(n+2)]`
-/

namespace A237136.P8554740163989680750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237142 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237136.P8554740163989680750

/-! ## A237136.P9783907354297844538

`record[root(A237142(n+2), A013609(n))]`
-/

namespace A237136.P9783907354297844538
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237142 (n + 2) : ℝ) ^ (1 / (A013609 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237136.P9783907354297844538

/-! ## A237136.P13242345919737817316

`record[gcd(A002262(n), A237142(n+2))]`
-/

namespace A237136.P13242345919737817316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237142 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237136.P13242345919737817316

/-! ## A237136.P7558987327110354559

`record[A237142(abs(A201163(n)))]`
-/

namespace A237136.P7558987327110354559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237136.P7558987327110354559

/-!
# A237137: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A237137, there is no canonical definition to state claims against.
-/

/-! ## A237137.P7946227660906967994

`A237142(∑[n+2]+4)`
-/

namespace A237137.P7946227660906967994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237137.P7946227660906967994

/-! ## A237137.P8663922041714093131

`lcm(2, A237142(A167614(n+1)))`
-/

namespace A237137.P8663922041714093131
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237142 (A167614 (n + 1)).toNat)

end

end A237137.P8663922041714093131

/-! ## A237137.P10233840628519397695

`A237142(A167614(n+1))+A011740(n)`
-/

namespace A237137.P10233840628519397695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (A167614 (n + 1)).toNat + A011740 n

end

end A237137.P10233840628519397695

/-! ## A237137.P6601323790470555081

`A237142(A167614(n+1))+A025443(n)`
-/

namespace A237137.P6601323790470555081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (A167614 (n + 1)).toNat + A025443 n

end

end A237137.P6601323790470555081

/-! ## A237137.P10499867063400839087

`A237142(A167614(n+1))%A237138(n+1)`
-/

namespace A237137.P10499867063400839087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237142 (A167614 (n + 1)).toNat) (A237138 (n + 1))

end

end A237137.P10499867063400839087

/-!
# A237138: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A237138, there is no canonical definition to state claims against.
-/

/-! ## A237138.P948209580105731059

`A237142(A052905(n)+9)`
-/

namespace A237138.P948209580105731059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (A052905 n + 9).toNat

end

end A237138.P948209580105731059

/-! ## A237138.P7225146278228754474

`A237142(A055999(n)+10)`
-/

namespace A237138.P7225146278228754474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (A055999 n + 10).toNat

end

end A237138.P7225146278228754474

/-! ## A237138.P13328629021767913423

`A237142(A167614(n+2)+1)`
-/

namespace A237138.P13328629021767913423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (A167614 (n + 2) + 1).toNat

end

end A237138.P13328629021767913423

/-! ## A237138.P370906269565024721

`A237142(A155212(n)+5)`
-/

namespace A237138.P370906269565024721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (A155212 n + 5).toNat

end

end A237138.P370906269565024721

/-!
# A237139: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the upper median of every 2X2 subblock equal.

The programs for A237139, there is no canonical definition to state claims against.
-/

/-! ## A237139.P9716312735447501211

`A237142(A167499(n+3))`
-/

namespace A237139.P9716312735447501211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (A167499 (n + 3)).toNat

end

end A237139.P9716312735447501211

/-! ## A237139.P9537215339010170311

`A237142(Δ[A264443(n)])`
-/

namespace A237139.P9537215339010170311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (f1 (n + 1) - f1 n).toNat

end

end A237139.P9537215339010170311

/-! ## A237139.P812114783132980007

`A237142(A374005(n+1))`
-/

namespace A237139.P812114783132980007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (A374005 (n + 1)).toNat

end

end A237139.P812114783132980007

/-! ## A237139.P16474194027565616361

`A237142(Δ[A023545(n+1)])`
-/

namespace A237139.P16474194027565616361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237142 (f1 (n + 1) - f1 n).toNat

end

end A237139.P16474194027565616361

/-!
# A237143: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237143, there is no canonical definition to state claims against.
-/

/-! ## A237143.P1276299769227342359

`A237150(∑[n]+1)`
-/

namespace A237143.P1276299769227342359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237143.P1276299769227342359

/-! ## A237143.P4610012892672943214

`lcm(2, A237150(A000124(n)))`
-/

namespace A237143.P4610012892672943214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237150 (A000124 n).toNat)

end

end A237143.P4610012892672943214

/-! ## A237143.P10691512761428566162

`record[A237150(n+1)/A022171(n)]`
-/

namespace A237143.P10691512761428566162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237150 (n + 1) : ℚ) / (A022171 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237143.P10691512761428566162

/-! ## A237143.P5239059044607683928

`record[root(A237150(n+1), A108625(n))]`
-/

namespace A237143.P5239059044607683928
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237150 (n + 1) : ℝ) ^ (1 / (A108625 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237143.P5239059044607683928

/-! ## A237143.P5321314159651849339

`record[root(A237150(n+1), A136462(n))]`
-/

namespace A237143.P5321314159651849339
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237150 (n + 1) : ℝ) ^ (1 / (A136462 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237143.P5321314159651849339

/-!
# A237144: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237144, there is no canonical definition to state claims against.
-/

/-! ## A237144.P1682815176139212105

`A237150(∑[n+1]+2)`
-/

namespace A237144.P1682815176139212105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237144.P1682815176139212105

/-! ## A237144.P517960095583303861

`lcm(2, A237150(A238531(n+2)))`
-/

namespace A237144.P517960095583303861
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237150 (A238531 (n + 2)).toNat)

end

end A237144.P517960095583303861

/-! ## A237144.P510458346267468424

`A237150(A133263(n+1))+A010894(n+4)`
-/

namespace A237144.P510458346267468424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A133263 (n + 1)).toNat + A010894 (n + 4 + 21)

end

end A237144.P510458346267468424

/-! ## A237144.P7376233370384194762

`A237150(A133263(n+1))*A316439(n+4)`
-/

namespace A237144.P7376233370384194762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A133263 (n + 1)).toNat * A316439 (n + 4)

end

end A237144.P7376233370384194762

/-! ## A237144.P4088190861512257983

`record[A237150(abs(A201163(n)))]`
-/

namespace A237144.P4088190861512257983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237144.P4088190861512257983

/-!
# A237145: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237145, there is no canonical definition to state claims against.
-/

/-! ## A237145.P17807582034343433595

`A237150(∑[n+2]+4)`
-/

namespace A237145.P17807582034343433595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237145.P17807582034343433595

/-! ## A237145.P17566942935639891060

`lcm(2, A237150(A167614(n+1)))`
-/

namespace A237145.P17566942935639891060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237150 (A167614 (n + 1)).toNat)

end

end A237145.P17566942935639891060

/-! ## A237145.P4797777428468197575

`record[A237150(A167614(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A237145.P4797777428468197575
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A167614 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237145.P4797777428468197575

/-! ## A237145.P158048175353644270

`A237150(A167614(n+1))+A025439(n)`
-/

namespace A237145.P158048175353644270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A167614 (n + 1)).toNat + A025439 n

end

end A237145.P158048175353644270

/-! ## A237145.P5572140253577707744

`A084419(2*n+1)*A237150(A167614(n+1))`
-/

namespace A237145.P5572140253577707744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084419 (2 * n + 1) * A237150 (A167614 (n + 1)).toNat

end

end A237145.P5572140253577707744

/-!
# A237146: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237146, there is no canonical definition to state claims against.
-/

/-! ## A237146.P12543151160224784254

`A237150(A374004(n+1))`
-/

namespace A237146.P12543151160224784254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A374004 (n + 1)).toNat

end

end A237146.P12543151160224784254

/-! ## A237146.P16249470702917365804

`A237150(A141214(n)+7)`
-/

namespace A237146.P16249470702917365804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A141214 n + 7).toNat

end

end A237146.P16249470702917365804

/-! ## A237146.P10269513547201902743

`A237150(A167614(n+2)+1)`
-/

namespace A237146.P10269513547201902743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A167614 (n + 2) + 1).toNat

end

end A237146.P10269513547201902743

/-! ## A237146.P10155085679556601764

`A237150(Δ[A023545(n+1)-n²])`
-/

namespace A237146.P10155085679556601764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (f1 (n + 1) - f1 n).toNat

end

end A237146.P10155085679556601764

/-! ## A237146.P12625121462442155548

`A237150(A141214(n+1))`
-/

namespace A237146.P12625121462442155548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A141214 (n + 1)).toNat

end

end A237146.P12625121462442155548

/-!
# A237147: Number of (n+1)X(5+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237147, there is no canonical definition to state claims against.
-/

/-! ## A237147.P11324041918051737442

`A237150(A374005(n+1))`
-/

namespace A237147.P11324041918051737442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A374005 (n + 1)).toNat

end

end A237147.P11324041918051737442

/-! ## A237147.P10338045453648812287

`A237150(Δ[A023545(n+1)])`
-/

namespace A237147.P10338045453648812287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (f1 (n + 1) - f1 n).toNat

end

end A237147.P10338045453648812287

/-!
# A237148: Number of (n+1)X(6+1) 0..3 arrays with the maximum plus the lower median of every 2X2 subblock equal.

The programs for A237148, there is no canonical definition to state claims against.
-/

/-! ## A237148.P4158080367712290293

`A237150(A374007(n+1))`
-/

namespace A237148.P4158080367712290293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (A374007 (n + 1)).toNat

end

end A237148.P4158080367712290293

/-! ## A237148.P14785162781679429176

`A237150(eq[8, A258709(n)])`
-/

namespace A237148.P14785162781679429176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237148.P14785162781679429176

/-! ## A237148.P15918644141746896446

`A237150(Δ[A023545(n+2)]-1)`
-/

namespace A237148.P15918644141746896446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237150 (f1 (n + 1) - f1 n - 1).toNat

end

end A237148.P15918644141746896446

/-!
# A237151: Number of (n+1)X(1+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A237151, there is no canonical definition to state claims against.
-/

/-! ## A237151.P693235502126482036

`A237158(∑[n]+1)`
-/

namespace A237151.P693235502126482036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237151.P693235502126482036

/-! ## A237151.P11794329854293557764

`record[A010054(n)*A237158(n+1)]`
-/

namespace A237151.P11794329854293557764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237151.P11794329854293557764

/-! ## A237151.P8280708687139682856

`record[gcd(A002262(n), A237158(n+1))]`
-/

namespace A237151.P8280708687139682856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237158 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237151.P8280708687139682856

/-! ## A237151.P14105777565445892552

`record[root(A237158(n+1), A002260(n+1))]`
-/

namespace A237151.P14105777565445892552
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237158 (n + 1) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237151.P14105777565445892552

/-! ## A237151.P1185469344955349151

`record[A023531(n)*A237158(n+1)]`
-/

namespace A237151.P1185469344955349151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n * A237158 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237151.P1185469344955349151

/-!
# A237152: Number of (n+1)X(2+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A237152, there is no canonical definition to state claims against.
-/

/-! ## A237152.P2028017811247762610

`A237158(∑[n+1]+2)`
-/

namespace A237152.P2028017811247762610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237152.P2028017811247762610

/-! ## A237152.P5750486998771484193

`record[A010054(n)*A237158(n+2)]`
-/

namespace A237152.P5750486998771484193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237158 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237152.P5750486998771484193

/-! ## A237152.P4225176458272350619

`record[gcd(A002262(n), A237158(n+2))]`
-/

namespace A237152.P4225176458272350619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237158 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237152.P4225176458272350619

/-! ## A237152.P6222388084753288871

`record[root(A237158(n+2), A002260(n+1))]`
-/

namespace A237152.P6222388084753288871
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237158 (n + 2) : ℝ) ^ (1 / (A002260 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237152.P6222388084753288871

/-! ## A237152.P14229865504837542830

`record[A237158(abs(A201163(n)))]`
-/

namespace A237152.P14229865504837542830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237152.P14229865504837542830

/-!
# A237153: Number of (n+1)X(3+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A237153, there is no canonical definition to state claims against.
-/

/-! ## A237153.P16613197423498616991

`A237158(∑[n+2]+4)`
-/

namespace A237153.P16613197423498616991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237153.P16613197423498616991

/-! ## A237153.P8061814140565168181

`lcm(2, A237158(A167614(n+1)))`
-/

namespace A237153.P8061814140565168181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237158 (A167614 (n + 1)).toNat)

end

end A237153.P8061814140565168181

/-! ## A237153.P10113402365380704077

`A237158(A167614(n+1))+A034471(n+1)`
-/

namespace A237153.P10113402365380704077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (A167614 (n + 1)).toNat + A034471 (n + 1)

end

end A237153.P10113402365380704077

/-! ## A237153.P17731891408034297471

`A237158(A167614(n+1))+A034475(n+1)`
-/

namespace A237153.P17731891408034297471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (A167614 (n + 1)).toNat + A034475 (n + 1)

end

end A237153.P17731891408034297471

/-! ## A237153.P3521805646091217301

`A237158(A167614(n+1))+A034476(n+1)`
-/

namespace A237153.P3521805646091217301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (A167614 (n + 1)).toNat + A034476 (n + 1)

end

end A237153.P3521805646091217301

/-!
# A237154: Number of (n+1)X(4+1) 0..3 arrays with the maximum plus the minimum of every 2X2 subblock equal.

The programs for A237154, there is no canonical definition to state claims against.
-/

/-! ## A237154.P7288206079725628460

`A237158(A052905(n)+9)`
-/

namespace A237154.P7288206079725628460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (A052905 n + 9).toNat

end

end A237154.P7288206079725628460

/-! ## A237154.P16706559017000712152

`A237158(A167614(n+2)+1)`
-/

namespace A237154.P16706559017000712152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (A167614 (n + 2) + 1).toNat

end

end A237154.P16706559017000712152

/-! ## A237154.P14797758264127746558

`A237158(A141214(n+1))`
-/

namespace A237154.P14797758264127746558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (A141214 (n + 1)).toNat

end

end A237154.P14797758264127746558

/-! ## A237154.P3612222475189066627

`A237158(A155212(n)+5)`
-/

namespace A237154.P3612222475189066627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (A155212 n + 5).toNat

end

end A237154.P3612222475189066627

/-!
# A237155: 

The programs for A237155, there is no canonical definition to state claims against.
-/

/-! ## A237155.P14191811426438276398

`A237158(A141214(n+1)+8)`
-/

namespace A237155.P14191811426438276398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237158 (A141214 (n + 1) + 8).toNat

end

end A237155.P14191811426438276398

/-!
# A237159: Number of (n+1)X(n+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237159, there is no canonical definition to state claims against.
-/

/-! ## A237159.P932298873698601821

`A237167(∑[4*n]+1)`
-/

namespace A237159.P932298873698601821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237159.P932298873698601821

/-! ## A237159.P6857475937617879923

`or(1, A237167(A001844(n)))`
-/

namespace A237159.P6857475937617879923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237167 (A001844 n).toNat)

end

end A237159.P6857475937617879923

/-! ## A237159.P2304559689193970266

`record[gcd(A114327(n), A237167(n+1))]`
-/

namespace A237159.P2304559689193970266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A237167 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237159.P2304559689193970266

/-! ## A237159.P4432636399390276521

`record[A005369(n)*A237167(2*n+1)]`
-/

namespace A237159.P4432636399390276521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A237167 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237159.P4432636399390276521

/-! ## A237159.P8822102225344048500

`A063435(n)*A237167(A001844(n))`
-/

namespace A237159.P8822102225344048500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063435 n * A237167 (A001844 n).toNat

end

end A237159.P8822102225344048500

/-!
# A237160: Number of (n+1) X (1+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2 X 2 subblock equal.

The programs for A237160, there is no canonical definition to state claims against.
-/

/-! ## A237160.P17024725287354678067

`A237167(∑[n]+1)`
-/

namespace A237160.P17024725287354678067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237160.P17024725287354678067

/-! ## A237160.P15507214544358853584

`or(1, A237167(A000124(n)))`
-/

namespace A237160.P15507214544358853584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237167 (A000124 n).toNat)

end

end A237160.P15507214544358853584

/-! ## A237160.P685568303826131218

`record[A103451(n)*A237167(n+1)]`
-/

namespace A237160.P685568303826131218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A237167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237160.P685568303826131218

/-! ## A237160.P16228606122772623533

`record[root(A237167(n+1), A061702(n))]`
-/

namespace A237160.P16228606122772623533
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237167 (n + 1) : ℝ) ^ (1 / (A061702 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237160.P16228606122772623533

/-! ## A237160.P8221006677958081273

`record[gcd(A034852(n), A237167(n+1))]`
-/

namespace A237160.P8221006677958081273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034852 n) (A237167 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237160.P8221006677958081273

/-!
# A237161: Number of (n+1)X(2+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237161, there is no canonical definition to state claims against.
-/

/-! ## A237161.P10743266199453554959

`A237167(∑[n+1]+2)`
-/

namespace A237161.P10743266199453554959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237161.P10743266199453554959

/-! ## A237161.P191643725170748409

`record[root(A237167(n+2), A061702(n))]`
-/

namespace A237161.P191643725170748409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237167 (n + 2) : ℝ) ^ (1 / (A061702 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237161.P191643725170748409

/-! ## A237161.P7376959985289054298

`record[A005369(2*n)*A237167(n+2)]`
-/

namespace A237161.P7376959985289054298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (2 * n) * A237167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237161.P7376959985289054298

/-! ## A237161.P9287745232001375478

`record[root(A237167(n+2), A200370(n+1))]`
-/

namespace A237161.P9287745232001375478
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237167 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237161.P9287745232001375478

/-! ## A237161.P622981951529578424

`record[A237167(abs(A201163(n)))]`
-/

namespace A237161.P622981951529578424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237161.P622981951529578424

/-!
# A237162: Number of (n+1)X(3+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237162, there is no canonical definition to state claims against.
-/

/-! ## A237162.P10113044442374977991

`A237167(∑[n+2]+4)`
-/

namespace A237162.P10113044442374977991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237162.P10113044442374977991

/-! ## A237162.P4350034312213458766

`or(1, A237167(A167614(n+1)))`
-/

namespace A237162.P4350034312213458766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237167 (A167614 (n + 1)).toNat)

end

end A237162.P4350034312213458766

/-! ## A237162.P8953336896610401605

`lcm(A033999(n), A237167(A167614(n+1)))`
-/

namespace A237162.P8953336896610401605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237167 (A167614 (n + 1)).toNat)

end

end A237162.P8953336896610401605

/-! ## A237162.P6083844922989097473

`A237167(A167614(n+1))+A111859(n+1)`
-/

namespace A237162.P6083844922989097473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A167614 (n + 1)).toNat + A111859 (n + 1)

end

end A237162.P6083844922989097473

/-! ## A237162.P5262321915247339562

`record[A237167(A167614(∑{e}[n+1, #]+1))]`
-/

namespace A237162.P5262321915247339562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A167614 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237162.P5262321915247339562

/-!
# A237163: Number of (n+1)X(4+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237163, there is no canonical definition to state claims against.
-/

/-! ## A237163.P17360262880117162191

`A237167(A374004(n+1))`
-/

namespace A237163.P17360262880117162191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A374004 (n + 1)).toNat

end

end A237163.P17360262880117162191

/-! ## A237163.P1015949351283834623

`A237167(A052905(n)+9)`
-/

namespace A237163.P1015949351283834623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A052905 n + 9).toNat

end

end A237163.P1015949351283834623

/-! ## A237163.P16073269083979185191

`A237167(A055999(n)+10)`
-/

namespace A237163.P16073269083979185191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A055999 n + 10).toNat

end

end A237163.P16073269083979185191

/-! ## A237163.P347690904945667763

`A237167(A167614(n+2)+1)`
-/

namespace A237163.P347690904945667763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A167614 (n + 2) + 1).toNat

end

end A237163.P347690904945667763

/-! ## A237163.P10662657983831979048

`A237167(A133263(n+3)+2)`
-/

namespace A237163.P10662657983831979048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A133263 (n + 3) + 2).toNat

end

end A237163.P10662657983831979048

/-!
# A237164: Number of (n+1)X(5+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237164, there is no canonical definition to state claims against.
-/

/-! ## A237164.P5911124757574262856

`A237167(A374005(n+1))`
-/

namespace A237164.P5911124757574262856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A374005 (n + 1)).toNat

end

end A237164.P5911124757574262856

/-! ## A237164.P11265467821778586738

`A237167(A155212(n)+13)`
-/

namespace A237164.P11265467821778586738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A155212 n + 13).toNat

end

end A237164.P11265467821778586738

/-! ## A237164.P15813752704667421359

`A237167(A056000(n)+15)`
-/

namespace A237164.P15813752704667421359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A056000 n + 15).toNat

end

end A237164.P15813752704667421359

/-! ## A237164.P17635063140525187796

`A237167(A034856(n+3)+7)`
-/

namespace A237164.P17635063140525187796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A034856 (n + 3) + 7).toNat

end

end A237164.P17635063140525187796

/-! ## A237164.P15404002546039516554

`A237167(eq[6, A131818(n+1)])`
-/

namespace A237164.P15404002546039516554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237164.P15404002546039516554

/-!
# A237165: Number of (n+1)X(6+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237165, there is no canonical definition to state claims against.
-/

/-! ## A237165.P13392419094900307614

`A237167(A374007(n+1))`
-/

namespace A237165.P13392419094900307614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A374007 (n + 1)).toNat

end

end A237165.P13392419094900307614

/-! ## A237165.P2003116715306371731

`A237167(A246172(n+1)+20)`
-/

namespace A237165.P2003116715306371731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A246172 (n + 1) + 20).toNat

end

end A237165.P2003116715306371731

/-! ## A237165.P8670250640273963663

`A237167(eq[7, A131818(n+1)])`
-/

namespace A237165.P8670250640273963663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237165.P8670250640273963663

/-! ## A237165.P8464640612776726401

`A237167(eq[3, A219347(n)])`
-/

namespace A237165.P8464640612776726401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237165.P8464640612776726401

/-! ## A237165.P14098950475140017924

`A237167(eq[5, A193592(n)])`
-/

namespace A237165.P14098950475140017924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237165.P14098950475140017924

/-!
# A237166: Number of (n+1)X(7+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237166, there is no canonical definition to state claims against.
-/

/-! ## A237166.P1004550451462365726

`A237167(A374008(n+1))`
-/

namespace A237166.P1004550451462365726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (A374008 (n + 1)).toNat

end

end A237166.P1004550451462365726

/-! ## A237166.P14371144987132789234

`A237167(eq[8, A131818(n+1)])`
-/

namespace A237166.P14371144987132789234
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237166.P14371144987132789234

/-! ## A237166.P4621567417401560457

`A237167(eq[4, A219347(n)])`
-/

namespace A237166.P4621567417401560457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237166.P4621567417401560457

/-! ## A237166.P10144177573479643904

`A237167(eq[6, A193592(n)])`
-/

namespace A237166.P10144177573479643904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237166.P10144177573479643904

/-! ## A237166.P16984868935387379653

`A237167(eq[7, A200370(n+1)])`
-/

namespace A237166.P16984868935387379653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237167 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237166.P16984868935387379653

/-!
# A237167: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the maximum plus the minimum minus the upper median minus the lower median of every 2X2 subblock equal.

The programs for A237167, there is no canonical definition to state claims against.
-/

/-! ## A237167.P9283096638248593468

`xor(A236893(n+1), A295556(A288268(n)))`
-/

namespace A237167.P9283096638248593468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A236893 (n + 1)) (A295556 (A288268 n).toNat)

end

end A237167.P9283096638248593468

/-!
# A237169: Number of (n+1)X(1+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237169, there is no canonical definition to state claims against.
-/

/-! ## A237169.P13091590589220099047

`A237175(∑[n]+1)`
-/

namespace A237169.P13091590589220099047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237169.P13091590589220099047

/-! ## A237169.P13482652854316721252

`lcm(2, A237175(A000124(n)))`
-/

namespace A237169.P13482652854316721252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237175 (A000124 n).toNat)

end

end A237169.P13482652854316721252

/-! ## A237169.P9711276414842602945

`record[A010054(n)*A237175(n+1)]`
-/

namespace A237169.P9711276414842602945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237169.P9711276414842602945

/-! ## A237169.P12415562358183745540

`record[A237175(n+1)/A154980(n)]`
-/

namespace A237169.P12415562358183745540
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237175 (n + 1) : ℚ) / (A154980 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237169.P12415562358183745540

/-! ## A237169.P12191151221588682029

`record[gcd(A002262(n), A237175(n+1))]`
-/

namespace A237169.P12191151221588682029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237175 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237169.P12191151221588682029

/-!
# A237170: Number of (n+1)X(2+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237170, there is no canonical definition to state claims against.
-/

/-! ## A237170.P1822505185478394173

`A237175(∑[n+1]+2)`
-/

namespace A237170.P1822505185478394173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237170.P1822505185478394173

/-! ## A237170.P12463648012876557279

`lcm(2, A237175(A000096(n)+3))`
-/

namespace A237170.P12463648012876557279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237175 (A000096 n + 3).toNat)

end

end A237170.P12463648012876557279

/-! ## A237170.P10926382335781835909

`record[A010054(n)*A237175(n+2)]`
-/

namespace A237170.P10926382335781835909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A237175 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237170.P10926382335781835909

/-! ## A237170.P3582831955480019071

`record[gcd(A002262(n), A237175(n+2))]`
-/

namespace A237170.P3582831955480019071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A237175 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237170.P3582831955480019071

/-! ## A237170.P7703621025437686920

`and(A237175(A000096(n+1)), 1-4/2)`
-/

namespace A237170.P7703621025437686920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A237175 (A000096 (n + 1)).toNat) (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2))

end

end A237170.P7703621025437686920

/-!
# A237171: Number of (n+1)X(3+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237171, there is no canonical definition to state claims against.
-/

/-! ## A237171.P15549096353666990560

`A237175(∑[n+2]+4)`
-/

namespace A237171.P15549096353666990560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237171.P15549096353666990560

/-! ## A237171.P14548866541997143141

`lcm(2, A237175(A167614(n+1)))`
-/

namespace A237171.P14548866541997143141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A237175 (A167614 (n + 1)).toNat)

end

end A237171.P14548866541997143141

/-! ## A237171.P9419150289877558025

`A237175(A167614(n+1))+A184955(n)`
-/

namespace A237171.P9419150289877558025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (A167614 (n + 1)).toNat + A184955 n

end

end A237171.P9419150289877558025

/-! ## A237171.P6870737709041131309

`A237175(A167614(n+1))+A185284(n)`
-/

namespace A237171.P6870737709041131309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (A167614 (n + 1)).toNat + A185284 n

end

end A237171.P6870737709041131309

/-! ## A237171.P7982478174409766193

`A237175(A167614(n+1))+A034570(n+1)`
-/

namespace A237171.P7982478174409766193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (A167614 (n + 1)).toNat + A034570 (n + 1)

end

end A237171.P7982478174409766193

/-!
# A237172: Number of (n+1)X(4+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237172, there is no canonical definition to state claims against.
-/

/-! ## A237172.P781570852085228095

`A237175(A167614(n+2)+1)`
-/

namespace A237172.P781570852085228095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (A167614 (n + 2) + 1).toNat

end

end A237172.P781570852085228095

/-! ## A237172.P8135136146521317478

`A237175(eq[5, A131818(n+1)])`
-/

namespace A237172.P8135136146521317478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237172.P8135136146521317478

/-! ## A237172.P1885084222484704230

`A237175(A056000(n)+7)`
-/

namespace A237172.P1885084222484704230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (A056000 n + 7).toNat

end

end A237172.P1885084222484704230

/-!
# A237173: Number of (n+1)X(5+1) 0..3 arrays with the maximum minus the lower median of every 2X2 subblock equal.

The programs for A237173, there is no canonical definition to state claims against.
-/

/-! ## A237173.P8540598690764698042

`A237175(eq[6, A131818(n+1)])`
-/

namespace A237173.P8540598690764698042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237173.P8540598690764698042

/-! ## A237173.P8147400435662762928

`A237175(A374005(n+1))`
-/

namespace A237173.P8147400435662762928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (A374005 (n + 1)).toNat

end

end A237173.P8147400435662762928

/-! ## A237173.P18111380389826647446

`A237175(Δ[A023545(n+1)])`
-/

namespace A237173.P18111380389826647446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (f1 (n + 1) - f1 n).toNat

end

end A237173.P18111380389826647446

/-!
# A237174: 

The programs for A237174, there is no canonical definition to state claims against.
-/

/-! ## A237174.P17534293162628199341

`A237175(eq[7, A131818(n+1)])`
-/

namespace A237174.P17534293162628199341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237175 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237174.P17534293162628199341

/-!
# A237176: Number of (n+1)X(1+1) 0..2 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A237176, there is no canonical definition to state claims against.
-/

/-! ## A237176.P1382445698969022143

`A237182(∑[n]+1)`
-/

namespace A237176.P1382445698969022143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A237176.P1382445698969022143

/-! ## A237176.P10622119022933596809

`record[A237182(A166017(n+1))]`
-/

namespace A237176.P10622119022933596809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A166017 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237176.P10622119022933596809

/-! ## A237176.P13122221391591195015

`record[A237182(A246276(n+1))]`
-/

namespace A237176.P13122221391591195015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237176.P13122221391591195015

/-! ## A237176.P15077089823003469867

`record[A237182(A249742(n+1))]`
-/

namespace A237176.P15077089823003469867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237176.P15077089823003469867

/-! ## A237176.P14842575032831046810

`record[A237182(A286234(n+1))]`
-/

namespace A237176.P14842575032831046810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237176.P14842575032831046810

/-!
# A237177: Number of (n+1)X(2+1) 0..2 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A237177, there is no canonical definition to state claims against.
-/

/-! ## A237177.P16331800453258515561

`A237182(∑[n+1]+2)`
-/

namespace A237177.P16331800453258515561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A237177.P16331800453258515561

/-! ## A237177.P1733536422518345841

`record[A237182(A166017(n+1)+1)]`
-/

namespace A237177.P1733536422518345841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A166017 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237177.P1733536422518345841

/-! ## A237177.P6872975143753896808

`record[A237182(A286235(n+1)+1)]`
-/

namespace A237177.P6872975143753896808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A286235 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237177.P6872975143753896808

/-! ## A237177.P15812079370534679299

`record[A237182(A286237(n+1)+1)]`
-/

namespace A237177.P15812079370534679299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237177.P15812079370534679299

/-! ## A237177.P1833737500220522857

`record[root(A237182(n+2), A145901(n))]`
-/

namespace A237177.P1833737500220522857
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A237182 (n + 2) : ℝ) ^ (1 / (A145901 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237177.P1833737500220522857

/-!
# A237178: Number of (n+1)X(3+1) 0..2 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A237178, there is no canonical definition to state claims against.
-/

/-! ## A237178.P11499425647177498233

`A237182(∑[n+2]+4)`
-/

namespace A237178.P11499425647177498233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A237178.P11499425647177498233

/-! ## A237178.P3059150964435329429

`A237182(A167614(n+1))+A137579(n)`
-/

namespace A237178.P3059150964435329429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A167614 (n + 1)).toNat + A137579 n

end

end A237178.P3059150964435329429

/-! ## A237178.P13087397612901669553

`lcm(A033999(n), A237182(A167614(n+1)))`
-/

namespace A237178.P13087397612901669553
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A237182 (A167614 (n + 1)).toNat)

end

end A237178.P13087397612901669553

/-! ## A237178.P14454373819900015808

`or(A000007(n), A237182(A167614(n+1)))`
-/

namespace A237178.P14454373819900015808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A237182 (A167614 (n + 1)).toNat)

end

end A237178.P14454373819900015808

/-! ## A237178.P17905383680879108502

`or(A088157(n), A237182(A167614(n+1)))`
-/

namespace A237178.P17905383680879108502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088157 n) (A237182 (A167614 (n + 1)).toNat)

end

end A237178.P17905383680879108502

/-!
# A237179: Number of (n+1)X(4+1) 0..2 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A237179, there is no canonical definition to state claims against.
-/

/-! ## A237179.P8113824288008559966

`A237182(A374004(n+1))`
-/

namespace A237179.P8113824288008559966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A374004 (n + 1)).toNat

end

end A237179.P8113824288008559966

/-! ## A237179.P17503572195274766245

`A237182(A141214(n)+7)`
-/

namespace A237179.P17503572195274766245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A141214 n + 7).toNat

end

end A237179.P17503572195274766245

/-! ## A237179.P16535445408016889530

`A237182(A052905(n)+9)`
-/

namespace A237179.P16535445408016889530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A052905 n + 9).toNat

end

end A237179.P16535445408016889530

/-! ## A237179.P1282267955460568850

`A237182(A055999(n)+10)`
-/

namespace A237179.P1282267955460568850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A055999 n + 10).toNat

end

end A237179.P1282267955460568850

/-! ## A237179.P8730528708900669900

`A237182(eq[5, A066657(n)])`
-/

namespace A237179.P8730528708900669900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237179.P8730528708900669900

/-!
# A237180: Number of (n+1)X(5+1) 0..2 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A237180, there is no canonical definition to state claims against.
-/

/-! ## A237180.P5050861677930409504

`A237182(A374005(n+1))`
-/

namespace A237180.P5050861677930409504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A374005 (n + 1)).toNat

end

end A237180.P5050861677930409504

/-! ## A237180.P181763345154000874

`A237182(A167499(n+3))`
-/

namespace A237180.P181763345154000874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A167499 (n + 3)).toNat

end

end A237180.P181763345154000874

/-! ## A237180.P5151420277844698340

`A237182(A155212(n)+13)`
-/

namespace A237180.P5151420277844698340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A155212 n + 13).toNat

end

end A237180.P5151420277844698340

/-! ## A237180.P9624809846134728065

`A237182(A056000(n)+15)`
-/

namespace A237180.P9624809846134728065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A056000 n + 15).toNat

end

end A237180.P9624809846134728065

/-! ## A237180.P9268952617865546337

`A237182(eq[7, A066657(n)])`
-/

namespace A237180.P9268952617865546337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A237180.P9268952617865546337

/-!
# A237181: Number of (n+1)X(6+1) 0..2 arrays colored with the maximum plus the minimum minus the lower median of every 2X2 subblock.

The programs for A237181, there is no canonical definition to state claims against.
-/

/-! ## A237181.P2507299200349037557

`A237182(A374007(n+1))`
-/

namespace A237181.P2507299200349037557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A374007 (n + 1)).toNat

end

end A237181.P2507299200349037557

/-! ## A237181.P15088843041241716402

`A237182(A055998(n+3)+9)`
-/

namespace A237181.P15088843041241716402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A055998 (n + 3) + 9).toNat

end

end A237181.P15088843041241716402

/-! ## A237181.P5271012784579097718

`A237182(A046691(n+3)+10)`
-/

namespace A237181.P5271012784579097718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A046691 (n + 3) + 10).toNat

end

end A237181.P5271012784579097718

/-! ## A237181.P12968969552591841736

`A237182(A246172(n+1)+20)`
-/

namespace A237181.P12968969552591841736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237182 (A246172 (n + 1) + 20).toNat

end

end A237181.P12968969552591841736

/-!
# A237183: Primes p with phi(p+1) - 1 and phi(p+1) + 1 both prime, where phi(.) is Euler's totient function.

The programs for A237183, there is no canonical definition to state claims against.
-/

/-! ## A237183.P11619023034715730545

`p?[A068019(n+1)-1]`
-/

namespace A237183.P11619023034715730545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068019 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237183.P11619023034715730545

/-! ## A237183.P8080413890075401287

`p?[A072281(n+1)-1]`
-/

namespace A237183.P8080413890075401287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072281 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237183.P8080413890075401287

/-! ## A237183.P12801613805030594709

`∩[A000040(n+1), A068019(n+1)-1]`
-/

namespace A237183.P12801613805030594709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068019 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237183.P12801613805030594709

/-! ## A237183.P8428270632081262633

`record[A006530(A068019(n+1)-1)]`
-/

namespace A237183.P8428270632081262633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068019 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237183.P8428270632081262633

/-! ## A237183.P17597080557864340680

`p?[A284881(A284882(n+1))+A072281(n+1)]`
-/

namespace A237183.P17597080557864340680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284881 (A284882 (n + 1)).toNat + A072281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237183.P17597080557864340680

/-! ## A237183.P8964554207180882580

`p?[A014681(A068019(n+1))]`
-/

namespace A237183.P8964554207180882580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A068019 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237183.P8964554207180882580

/-! ## A237183.P15739885730711257426

`p?[A143051(A072281(n+1))]`
-/

namespace A237183.P15739885730711257426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (A072281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A237183.P15739885730711257426

/-! ## A237183.P5069390090435848233

`record[A014963(A068019(n+1)-1)]`
-/

namespace A237183.P5069390090435848233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A068019 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237183.P5069390090435848233

/-!
# A237184: Number of ordered ways to write n = (1+(n mod 2))*p + q with p, q, phi(p+1) - 1 and phi(q-1) + 1 all prime.

The programs for A237184, there is no canonical definition to state claims against.
-/

/-! ## A237184.P1034197455806677512

`A109082(A000700(gcd(n, ∑[n]))!)`
-/

namespace A237184.P1034197455806677512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (Nat.factorial (A000700 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))).toNat)

end

end A237184.P1034197455806677512

/-! ## A237184.P1466086172360627693

`Δ[A319403(n)]%A160487(n+2)`
-/

namespace A237184.P1466086172360627693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319403 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A160487 (n + 2))

end

end A237184.P1466086172360627693

/-! ## A237184.P3090926969872872990

`floor(A227560(2*n+7)/A088101(3*(n+1)))`
-/

namespace A237184.P3090926969872872990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A227560 (2 * n + 7) : ℚ) / (A088101 (3 * (n + 1)) : ℚ)⌋

end

end A237184.P3090926969872872990

/-! ## A237184.P7078618711510271564

`A004216(A025480(n+4)-A210628(n))`
-/

namespace A237184.P7078618711510271564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004216 (A025480 (n + 4) - A210628 n).toNat

end

end A237184.P7078618711510271564

/-! ## A237184.P18277499638112145889

`A014083(A213012(n+1))`
-/

namespace A237184.P18277499638112145889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A213012 (n + 1)).toNat

end

end A237184.P18277499638112145889

/-!
# A237187: Total number of possible evolutions arising from n tandem duplications of DNA.

The programs for A237187, there is no canonical definition to state claims against.
-/

/-! ## A237187.P15325303291662765244

`∏[∑[Δ[4^n]-2]]`
-/

namespace A237187.P15325303291662765244
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A237187.P15325303291662765244

/-! ## A237187.P12163660664263092130

`a(n-1)*∑[4*a(n-1)+6]` with `a(0)=1`
-/

namespace A237187.P12163660664263092130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  4 * f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A237187.P12163660664263092130

/-! ## A237187.P13843193111882245394

`or(1, ∏[A289255(n+1)])`
-/

namespace A237187.P13843193111882245394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A237187.P13843193111882245394

/-! ## A237187.P247165633758986330

`a(n-1)*A014468(n²)` with `a(0)=1`
-/

namespace A237187.P247165633758986330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A014468 (n ^ 2)

end

end A237187.P247165633758986330

/-! ## A237187.P11134271637432947189

`a(n-1)*A000295(2*(n+1))` with `a(0)=1`
-/

namespace A237187.P11134271637432947189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000295 (2 * (n + 1))

end

end A237187.P11134271637432947189

/-!
# A237188: Smallest member of Sophie Germain pair, where each member of the prime pair is the smallest of its prime triple (p, p+2, p+8).

The programs for A237188, there is no canonical definition to state claims against.
-/

/-! ## A237188.P16667764774220796141

`∩[floor(A046134(n+1)/2), A046134(n+1)]`
-/

namespace A237188.P16667764774220796141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046134 (n + 1) : ℚ) / 2⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237188.P16667764774220796141

/-!
# A237189: Numbers k such that k+1, 2k+1, 3k+1, 4k+1 are all prime.

The programs for A237189, there is no canonical definition to state claims against.
-/

/-! ## A237189.P15920186500174473003

`2*A124409(n+1)`
-/

namespace A237189.P15920186500174473003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124409 (n + 1)

end

end A237189.P15920186500174473003

/-! ## A237189.P17464357576231742705

`2*(A105653(n+1)+1)`
-/

namespace A237189.P17464357576231742705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A105653 (n + 1) + 1)

end

end A237189.P17464357576231742705

/-! ## A237189.P8616040832147202859

`A336059(n+1)-1`
-/

namespace A237189.P8616040832147202859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336059 (n + 1) - 1

end

end A237189.P8616040832147202859

/-! ## A237189.P13311675584715756294

`xor(A165586(2*(n+1))², A336059(n+1))`
-/

namespace A237189.P13311675584715756294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A165586 (2 * (n + 1)) ^ 2) (A336059 (n + 1))

end

end A237189.P13311675584715756294

/-! ## A237189.P5785282004722266683

`xor(A000035(2*n+3), A336059(n+1))`
-/

namespace A237189.P5785282004722266683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 3)) (A336059 (n + 1))

end

end A237189.P5785282004722266683

/-! ## A237189.P13571144110744184431

`record[2*A124409(A133310(n))]`
-/

namespace A237189.P13571144110744184431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124409 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237189.P13571144110744184431

/-! ## A237189.P6009966604303412287

`A124409(n+1)+record[A124409(A133310(n))]`
-/

namespace A237189.P6009966604303412287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124409 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124409 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A237189.P6009966604303412287

/-! ## A237189.P5796464801099213102

`A124409(A000027(n+1))+A124409(n+1)`
-/

namespace A237189.P5796464801099213102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124409 (A000027 (n + 1)).toNat + A124409 (n + 1)

end

end A237189.P5796464801099213102

/-! ## A237189.P1237698747283698967

`A124409(n+1)+or(A000007(n), A124409(n+1))`
-/

namespace A237189.P1237698747283698967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124409 (n + 1) + Int.lor (A000007 n) (A124409 (n + 1))

end

end A237189.P1237698747283698967

/-! ## A237189.P1637693144947658721

`A124409(n+1)+A124409((n+1)%A124409(n+1))`
-/

namespace A237189.P1637693144947658721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124409 (n + 1) + A124409 (Int.tmod (n + 1 : ℤ) (A124409 (n + 1))).toNat

end

end A237189.P1637693144947658721

/-! ## A237189.P8153905534699499156

`xor(A057427(3*n+2), A336059(n+1))`
-/

namespace A237189.P8153905534699499156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057427 (3 * n + 2)) (A336059 (n + 1))

end

end A237189.P8153905534699499156

/-! ## A237189.P3587277233141266750

`A124409(n+1)+A124409(n+1)/A238015(A238015(n))`
-/

namespace A237189.P3587277233141266750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124409 (n + 1) : ℚ) + (A124409 (n + 1) : ℚ) / (A238015 (A238015 n).toNat : ℚ)

end

end A237189.P3587277233141266750

/-! ## A237189.P8384554224044407936

`∩[A057326(n+1), A174734(n+1)]-1`
-/

namespace A237189.P8384554224044407936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174734 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A237189.P8384554224044407936

/-! ## A237189.P13815561944545512603

`2*∩[A124041(n+1), A124408(n+1)]`
-/

namespace A237189.P13815561944545512603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124041 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237189.P13815561944545512603

/-! ## A237189.P17682743836777511658

`2*∩[A124408(n+1), A320599(n+1)]`
-/

namespace A237189.P17682743836777511658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320599 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A237189.P17682743836777511658

/-!
# A237190: Numbers k such that k+1, 2k+1, 3k+1, 4k+1, 5k+1 are five primes.

The programs for A237190, there is no canonical definition to state claims against.
-/

/-! ## A237190.P3127569348423642236

`2*A124410(n+1)`
-/

namespace A237190.P3127569348423642236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A124410 (n + 1)

end

end A237190.P3127569348423642236

/-! ## A237190.P4121817550872311199

`A124410(A000027(n+1))+A124410(n+1)`
-/

namespace A237190.P4121817550872311199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124410 (A000027 (n + 1)).toNat + A124410 (n + 1)

end

end A237190.P4121817550872311199

/-! ## A237190.P10715450457438641735

`A124410(A028310(n+1))+A124410(n+1)`
-/

namespace A237190.P10715450457438641735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124410 (A028310 (n + 1)).toNat + A124410 (n + 1)

end

end A237190.P10715450457438641735

/-! ## A237190.P4736192628044158055

`A124410(n+1)+A124410(A023443(n+2))`
-/

namespace A237190.P4736192628044158055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124410 (n + 1) + A124410 (A023443 (n + 2)).toNat

end

end A237190.P4736192628044158055

/-! ## A237190.P16413293818575727916

`A124410(n+1)+A124410((n+1)%A124409(n+1))`
-/

namespace A237190.P16413293818575727916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124410 (n + 1) + A124410 (Int.tmod (n + 1 : ℤ) (A124409 (n + 1))).toNat

end

end A237190.P16413293818575727916

/-! ## A237190.P1634880046124588754

`A124410(n+1)+A124410(n+1)%A124411(n+1)`
-/

namespace A237190.P1634880046124588754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124410 (n + 1) + Int.tmod (A124410 (n + 1)) (A124411 (n + 1))

end

end A237190.P1634880046124588754

/-!
# A237194: Triangular array: T(n,k) = number of strict partitions P of n into positive parts such that P includes a partition of k.

The programs for A237194, there is no canonical definition to state claims against.
-/

/-! ## A237194.P9644884797965932084

`A365661(comp[∑[n]])`
-/

namespace A237194.P9644884797965932084
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365661 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A237194.P9644884797965932084

/-! ## A237194.P15168881387800496193

`lcm((-1)^n, A365661(n+1+round(sqrt(2*(n+1)))))`
-/

namespace A237194.P15168881387800496193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A365661 ((n + 1 : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat)

end

end A237194.P15168881387800496193

/-! ## A237194.P16778181500117081809

`A365661(A014132(n+1))%A001132(n+1)`
-/

namespace A237194.P16778181500117081809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365661 (A014132 (n + 1)).toNat) (A001132 (n + 1))

end

end A237194.P16778181500117081809

/-! ## A237194.P12070239552716487846

`A124760(A090167(n)+A054807(n+1))`
-/

namespace A237194.P12070239552716487846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 (A090167 n + A054807 (n + 1)).toNat

end

end A237194.P12070239552716487846

/-! ## A237194.P12152391315185753512

`A284593(comp[∑[n]]%A078526(n+7))`
-/

namespace A237194.P12152391315185753512
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A078526 (n + 7))).toNat

end

end A237194.P12152391315185753512

/-!
# A237195: Number of simple labeled graphs on n nodes that contain some size k connected component, all of whose nodes are labeled with integers {1,2,...,k} for some k in {1,2,...,n}.

The programs for A237195, there is no canonical definition to state claims against.
-/

/-! ## A237195.P2339398077532083309

`∑[A084286(n+1)+A010078(A327078(n))-1]`
-/

namespace A237195.P2339398077532083309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084286 (n + 1) + (A010078 (A327078 n).toNat - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A237195.P2339398077532083309

