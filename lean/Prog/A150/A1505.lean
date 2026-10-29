import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C000
import Seq.B005.C001
import Seq.B008.C000
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
# A150500: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, -1, 1), (0, 1, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150500, the canonical program `A150500.P6895395406829155364` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A150500 has offset 0).

The definition of A150500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A150500.P6895395406829155364

`∑{#}[n, C(n, #)*C(#, floor(#/2))²]`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A150500

/-- `∑{#}[n, C(n, #)*C(#, floor(#/2))²]` -/
def P6895395406829155364.Spec : Prop :=
  ∀ n, (P6895395406829155364.a n : ℤ) = A150500 n

theorem P6895395406829155364.correct : P6895395406829155364.Spec := by
  intro n
  simp only [A150500]

end A150500

/-! ## A150500.P4035447872091477667

`(A201805(n+1)+3*A201805(n))/4`
-/

namespace A150500.P4035447872091477667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201805 (n + 1) + 3 * A201805 n : ℚ) / 4

end

end A150500.P4035447872091477667

namespace A150500

/-- `(A201805(n+1)+3*A201805(n))/4` -/
def P4035447872091477667.Spec : Prop :=
  ∀ n, P4035447872091477667.a n = (A150500 n : ℚ)

end A150500

/-! ## A150500.P2784058837176145258

`2*A201805(n)-A138354(n)`
-/

namespace A150500.P2784058837176145258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A201805 n - A138354 n

end

end A150500.P2784058837176145258

namespace A150500

/-- `2*A201805(n)-A138354(n)` -/
def P2784058837176145258.Spec : Prop :=
  ∀ n, P2784058837176145258.a n = A150500 n

end A150500

/-!
# A150501: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (1, -1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150501, there is no canonical definition to state claims against.
-/

/-! ## A150501.P13087994233101191875

`2*A154443(A150497(n)+A084143(n+1))-A150504(n)`
-/

namespace A150501.P13087994233101191875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154443 (A150497 n + A084143 (n + 1)).toNat - A150504 n

end

end A150501.P13087994233101191875

/-! ## A150501.P3666580389179826253

`2*(A150497(n)+A084143(A192465(n+1)))-A150504(n)`
-/

namespace A150501.P3666580389179826253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A150497 n + A084143 (A192465 (n + 1)).toNat) - A150504 n

end

end A150501.P3666580389179826253

/-!
# A150503: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, -1, 1), (0, 1, 1), (1, 1, 0)}.

The programs for A150503, there is no canonical definition to state claims against.
-/

/-! ## A150503.P10115469784147160207

`A150497(n)+A084143(A000314(n))`
-/

namespace A150503.P10115469784147160207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150497 n + A084143 (A000314 n).toNat

end

end A150503.P10115469784147160207

/-! ## A150503.P15211190679850564323

`A150497(n)+A084143(A000665(n))`
-/

namespace A150503.P15211190679850564323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150497 n + A084143 (A000665 n).toNat

end

end A150503.P15211190679850564323

/-! ## A150503.P13191369049843861203

`A150497(n)+A085983(A000302(n))`
-/

namespace A150503.P13191369049843861203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150497 n + A085983 (A000302 n).toNat

end

end A150503.P13191369049843861203

/-!
# A150504: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150504, there is no canonical definition to state claims against.
-/

/-! ## A150504.P5292394486353480295

`2*A154443(A150497(n)+A084143(n+1))-A150501(n)`
-/

namespace A150504.P5292394486353480295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154443 (A150497 n + A084143 (n + 1)).toNat - A150501 n

end

end A150504.P5292394486353480295

/-! ## A150504.P14385948981693144314

`2*(A150497(n)+A084143(A192465(n+1)))-A150501(n)`
-/

namespace A150504.P14385948981693144314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A150497 n + A084143 (A192465 (n + 1)).toNat) - A150501 n

end

end A150504.P14385948981693144314

/-!
# A150505: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150505, there is no canonical definition to state claims against.
-/

/-! ## A150505.P6368309213733982267

`or(A150504(n), A185238(A056469(n)))`
-/

namespace A150505.P6368309213733982267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150504 n) (A185238 (A056469 n).toNat)

end

end A150505.P6368309213733982267

/-! ## A150505.P10663570508631523780

`or(A150504(n), A185238(A003022(n+2)))`
-/

namespace A150505.P10663570508631523780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150504 n) (A185238 (A003022 (n + 2)).toNat)

end

end A150505.P10663570508631523780

/-!
# A150506: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150506, there is no canonical definition to state claims against.
-/

/-! ## A150506.P3332434687083327099

`A154099(A326745(n))`
-/

namespace A150506.P3332434687083327099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154099 (A326745 n).toNat

end

end A150506.P3332434687083327099

/-! ## A150506.P6465256394515915788

`A256502(2*A150222(n))`
-/

namespace A150506.P6465256394515915788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (2 * A150222 n).toNat

end

end A150506.P6465256394515915788

/-!
# A150507: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150507, there is no canonical definition to state claims against.
-/

/-! ## A150507.P9150485398025246779

`A150508(n)-A322392(A034386(n))`
-/

namespace A150507.P9150485398025246779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150508 n - A322392 (A034386 n).toNat

end

end A150507.P9150485398025246779

/-! ## A150507.P13089864430614422

`A089107(2*(n+1)²+1)`
-/

namespace A150507.P13089864430614422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (2 * (n + 1) ^ 2 + 1)

end

end A150507.P13089864430614422

/-!
# A150508: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 1), (1, -1, -1), (1, 1, 0)}.

The programs for A150508, there is no canonical definition to state claims against.
-/

/-! ## A150508.P12825029793563628082

`A065033(A150516(n)+A150491(n))`
-/

namespace A150508.P12825029793563628082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150516 n + A150491 n).toNat

end

end A150508.P12825029793563628082

/-! ## A150508.P1703652087541588044

`A322392(A034386(n))+A150507(n)`
-/

namespace A150508.P1703652087541588044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322392 (A034386 n).toNat + A150507 n

end

end A150508.P1703652087541588044

/-! ## A150508.P1794304472279927809

`A150509(n)-A037911(A059162(n))`
-/

namespace A150508.P1794304472279927809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150509 n - A037911 (A059162 n).toNat

end

end A150508.P1794304472279927809

/-!
# A150509: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A150509, there is no canonical definition to state claims against.
-/

/-! ## A150509.P15241703815095167723

`A150508(n)+A037911(A059162(n))`
-/

namespace A150509.P15241703815095167723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150508 n + A037911 (A059162 n).toNat

end

end A150509.P15241703815095167723

/-! ## A150509.P16889668609197319413

`A185264(A000096(n))+A150508(n)`
-/

namespace A150509.P16889668609197319413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185264 (A000096 n).toNat + A150508 n

end

end A150509.P16889668609197319413

/-! ## A150509.P12975627418411930514

`A185284(A011782(n))+A150508(n)`
-/

namespace A150509.P12975627418411930514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A011782 n).toNat + A150508 n

end

end A150509.P12975627418411930514

/-!
# A150510: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (0, 1, 1), (1, -1, 1)}.

The programs for A150510, there is no canonical definition to state claims against.
-/

/-! ## A150510.P4318992354620128325

`A240904(n)+A123108(A151097(n))`
-/

namespace A150510.P4318992354620128325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240904 n + A123108 (A151097 n).toNat

end

end A150510.P4318992354620128325

/-! ## A150510.P17311831690827724396

`or(A080791(A000272(n)), A150508(n))`
-/

namespace A150510.P17311831690827724396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080791 (A000272 n).toNat) (A150508 n)

end

end A150510.P17311831690827724396

/-! ## A150510.P11714690202937036072

`or(A080791(A208897(n)), A150508(n))`
-/

namespace A150510.P11714690202937036072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080791 (A208897 n).toNat) (A150508 n)

end

end A150510.P11714690202937036072

/-!
# A150511: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 1)}.

The programs for A150511, there is no canonical definition to state claims against.
-/

/-! ## A150511.P7200727835242725081

`A184588(A151097(n))-A151102(n)`
-/

namespace A150511.P7200727835242725081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184588 (A151097 n).toNat - A151102 n

end

end A150511.P7200727835242725081

/-! ## A150511.P5424147900193827966

`or(A083894(A007204(n)), A150510(n))`
-/

namespace A150511.P5424147900193827966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083894 (A007204 n).toNat) (A150510 n)

end

end A150511.P5424147900193827966

/-! ## A150511.P13921758339100904368

`or(A099916(A032109(n)), A150510(n))`
-/

namespace A150511.P13921758339100904368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099916 (A032109 n).toNat) (A150510 n)

end

end A150511.P13921758339100904368

/-!
# A150512: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (1, -1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A150512, there is no canonical definition to state claims against.
-/

/-! ## A150512.P12668538879187408129

`A150513(A001096(n))`
-/

namespace A150512.P12668538879187408129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150513 (A001096 n).toNat

end

end A150512.P12668538879187408129

/-!
# A150513: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150513, there is no canonical definition to state claims against.
-/

/-! ## A150513.P15785442482902230883

`or(A150439(n), A348960(A001006(n)))`
-/

namespace A150513.P15785442482902230883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150439 n) (A348960 (A001006 n).toNat)

end

end A150513.P15785442482902230883

/-!
# A150514: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150514, there is no canonical definition to state claims against.
-/

/-! ## A150514.P11507146708000034378

`A220136(A232663(n+1))+A197553(n+1)`
-/

namespace A150514.P11507146708000034378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A232663 (n + 1)).toNat + A197553 (n + 1)

end

end A150514.P11507146708000034378

/-! ## A150514.P11688778013573350258

`A196126(A000079(n))+A065717(n)`
-/

namespace A150514.P11688778013573350258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196126 (A000079 n).toNat + A065717 n

end

end A150514.P11688778013573350258

/-!
# A150515: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 0), (1, -1, -1), (1, 1, 1)}.

The programs for A150515, there is no canonical definition to state claims against.
-/

/-! ## A150515.P2007208336975380570

`A150516(A001096(n))`
-/

namespace A150515.P2007208336975380570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150516 (A001096 n).toNat

end

end A150515.P2007208336975380570

/-!
# A150517: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 0), (0, 1, 1), (1, 1, -1)}.

The programs for A150517, there is no canonical definition to state claims against.
-/

/-! ## A150517.P3224054514410016647

`A004526(A326908(n)+A320590(2*(n+1)))`
-/

namespace A150517.P3224054514410016647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A326908 n + A320590 (2 * (n + 1))).toNat

end

end A150517.P3224054514410016647

/-! ## A150517.P14276990633933660568

`A150518(A001096(n))`
-/

namespace A150517.P14276990633933660568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150518 (A001096 n).toNat

end

end A150517.P14276990633933660568

/-!
# A150518: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150518, there is no canonical definition to state claims against.
-/

/-! ## A150518.P6546134674510986822

`A150519(n)%p?[2^n-1]`
-/

namespace A150518.P6546134674510986822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150519 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A150518.P6546134674510986822

/-! ## A150518.P15122376446780357574

`A150519(A073788(n))`
-/

namespace A150518.P15122376446780357574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150519 (A073788 n).toNat

end

end A150518.P15122376446780357574

/-! ## A150518.P12800153895518834737

`A154125(A150519(n))`
-/

namespace A150518.P12800153895518834737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A150519 n).toNat

end

end A150518.P12800153895518834737

/-!
# A150520: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, 1, 1)}.

The programs for A150520, there is no canonical definition to state claims against.
-/

/-! ## A150520.P3012113474289842949

`A195120(A150288(n+1))`
-/

namespace A150520.P3012113474289842949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (A150288 (n + 1)).toNat

end

end A150520.P3012113474289842949

/-! ## A150520.P10174116775073707377

`A150521(A001096(n))`
-/

namespace A150520.P10174116775073707377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150521 (A001096 n).toNat

end

end A150520.P10174116775073707377

/-!
# A150521: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, 0), (1, -1, -1), (1, 1, 1)}.

The programs for A150521, there is no canonical definition to state claims against.
-/

/-! ## A150521.P12076018743993360998

`A302492(A038765(n))`
-/

namespace A150521.P12076018743993360998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A038765 n).toNat

end

end A150521.P12076018743993360998

/-! ## A150521.P4043427853144739647

`A004526(A293735(n)+A068091(n+1))`
-/

namespace A150521.P4043427853144739647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A293735 n + A068091 (n + 1)).toNat

end

end A150521.P4043427853144739647

/-! ## A150521.P17010656150733203249

`A004396(A151828(n+2)+A105476(n))`
-/

namespace A150521.P17010656150733203249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A151828 (n + 2) + A105476 n).toNat

end

end A150521.P17010656150733203249

/-!
# A150522: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150522, there is no canonical definition to state claims against.
-/

/-! ## A150522.P18297877934831597058

`A064542(A151099(n))`
-/

namespace A150522.P18297877934831597058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064542 (A151099 n).toNat

end

end A150522.P18297877934831597058

/-! ## A150522.P16679581161266097669

`A121828(A219312(n+1))`
-/

namespace A150522.P16679581161266097669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121828 (A219312 (n + 1)).toNat

end

end A150522.P16679581161266097669

/-!
# A150523: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150523, there is no canonical definition to state claims against.
-/

/-! ## A150523.P18310972451040820181

`A003074(A026748(n+1))`
-/

namespace A150523.P18310972451040820181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003074 (A026748 (n + 1)).toNat

end

end A150523.P18310972451040820181

/-!
# A150524: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (1, -1, 1), (1, 0, 1), (1, 1, 0)}.

The programs for A150524, there is no canonical definition to state claims against.
-/

/-! ## A150524.P16698122049045163287

`A097992(2*A069008(n))`
-/

namespace A150524.P16698122049045163287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097992 (2 * A069008 n).toNat

end

end A150524.P16698122049045163287

/-! ## A150524.P15642272099952050292

`A103221(2*A069008(n))`
-/

namespace A150524.P15642272099952050292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * A069008 n).toNat

end

end A150524.P15642272099952050292

/-!
# A150525: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, -1), (0, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150525, there is no canonical definition to state claims against.
-/

/-! ## A150525.P15984527415284938552

`A100826(A150522(n))`
-/

namespace A150525.P15984527415284938552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100826 (A150522 n).toNat

end

end A150525.P15984527415284938552

/-! ## A150525.P4682996330253741489

`∑[A088004(A278398(n))]`
-/

namespace A150525.P4682996330253741489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088004 (A278398 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150525.P4682996330253741489

/-!
# A150526: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (1, 0, 0), (1, 0, 1)}.

The programs for A150526, there is no canonical definition to state claims against.
-/

/-! ## A150526.P17770316930289174165

`A004525(A089696(n)+A084059(n))`
-/

namespace A150526.P17770316930289174165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A089696 n + A084059 n).toNat

end

end A150526.P17770316930289174165

/-! ## A150526.P12077885627613775852

`A004526(A089696(n)+A084059(n))`
-/

namespace A150526.P12077885627613775852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A089696 n + A084059 n).toNat

end

end A150526.P12077885627613775852

/-! ## A150526.P15234397640594242643

`A004526(A084059(n)+A067567(n+1))`
-/

namespace A150526.P15234397640594242643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A084059 n + A067567 (n + 1)).toNat

end

end A150526.P15234397640594242643

/-!
# A150527: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 0), (1, 0, 0), (1, 1, 1)}.

The programs for A150527, there is no canonical definition to state claims against.
-/

/-! ## A150527.P2920360509204068089

`or(A007061(A150525(n)), A150525(n))`
-/

namespace A150527.P2920360509204068089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007061 (A150525 n).toNat) (A150525 n)

end

end A150527.P2920360509204068089

/-! ## A150527.P15298714637986402246

`or(A150525(n), A335225(A062870(n)))`
-/

namespace A150527.P15298714637986402246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150525 n) (A335225 (A062870 n).toNat)

end

end A150527.P15298714637986402246

/-!
# A150529: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150529, there is no canonical definition to state claims against.
-/

/-! ## A150529.P13514503340564913221

`A035250(A241816(n)+A241778(n+8))`
-/

namespace A150529.P13514503340564913221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A241816 n + A241778 (n + 8)).toNat

end

end A150529.P13514503340564913221

/-! ## A150529.P9751119394930336971

`A035250(A241825(2*(n+1))+A241778(n+8))`
-/

namespace A150529.P9751119394930336971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (A241825 (2 * (n + 1)) + A241778 (n + 8)).toNat

end

end A150529.P9751119394930336971

/-!
# A150530: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (0, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150530, there is no canonical definition to state claims against.
-/

/-! ## A150530.P2571548587355291315

`A347646(A267444(n))+A010059(3*n+1)`
-/

namespace A150530.P2571548587355291315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347646 (A267444 n).toNat + A010059 (3 * n + 1)

end

end A150530.P2571548587355291315

/-!
# A150531: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, -1), (1, -1, 1), (1, 0, 0), (1, 1, 1)}.

The programs for A150531, there is no canonical definition to state claims against.
-/

/-! ## A150531.P7385389156348011578

`A150532(A001096(n))`
-/

namespace A150531.P7385389156348011578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150532 (A001096 n).toNat

end

end A150531.P7385389156348011578

/-! ## A150531.P16003067971688623217

`A157271(2*A150532(n))`
-/

namespace A150531.P16003067971688623217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (2 * A150532 n).toNat

end

end A150531.P16003067971688623217

/-!
# A150533: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, -1), (0, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150533, there is no canonical definition to state claims against.
-/

/-! ## A150533.P4675549478940645749

`or(A150452(n), A298389(A321229(n)))`
-/

namespace A150533.P4675549478940645749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150452 n) (A298389 (A321229 n).toNat)

end

end A150533.P4675549478940645749

/-! ## A150533.P7170246494259022780

`A279831(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A150533.P7170246494259022780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A279831 (a (n - 1)).toNat

end

end A150533.P7170246494259022780

/-!
# A150534: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150534, there is no canonical definition to state claims against.
-/

/-! ## A150534.P4429996436644307360

`A248148(A150788(n))`
-/

namespace A150534.P4429996436644307360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248148 (A150788 n).toNat

end

end A150534.P4429996436644307360

/-! ## A150534.P1034213224614104603

`A309098(A000569(n+1))`
-/

namespace A150534.P1034213224614104603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309098 (A000569 (n + 1)).toNat

end

end A150534.P1034213224614104603

/-!
# A150535: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (1, 0, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150535, there is no canonical definition to state claims against.
-/

/-! ## A150535.P14694223333868483887

`A334455(A099196(n)+1)`
-/

namespace A150535.P14694223333868483887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334455 (A099196 n + 1).toNat

end

end A150535.P14694223333868483887

/-! ## A150535.P4643070830655234782

`A094277(A000079(n))-∑{e}[n+1, #-1]`
-/

namespace A150535.P4643070830655234782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094277 (A000079 n).toNat - ∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1)

end

end A150535.P4643070830655234782

/-!
# A150536: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150536, there is no canonical definition to state claims against.
-/

/-! ## A150536.P15963330214380326512

`A376956(A001076(n)+n)`
-/

namespace A150536.P15963330214380326512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376956 (A001076 n + (n : ℤ)).toNat

end

end A150536.P15963330214380326512

/-! ## A150536.P11234693737646949555

`A110532(A184117(n+1)+A099015(n))`
-/

namespace A150536.P11234693737646949555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110532 (A184117 (n + 1) + A099015 n).toNat

end

end A150536.P11234693737646949555

/-! ## A150536.P15176307756715608441

`A063272(A150492(n+1))-A029952(A030037(n))`
-/

namespace A150536.P15176307756715608441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A150492 (n + 1)).toNat - A029952 (A030037 n).toNat

end

end A150536.P15176307756715608441

/-!
# A150537: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150537, there is no canonical definition to state claims against.
-/

/-! ## A150537.P5381340310326362349

`floor(root(A112912(3*n+1), 6))`
-/

namespace A150537.P5381340310326362349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A112912 (3 * n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A150537.P5381340310326362349

/-! ## A150537.P15468742832361097096

`floor(sqrt(A015919((n+2)^n+n)))`
-/

namespace A150537.P15468742832361097096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A015919 ((n + 2) ^ n + n))

end

end A150537.P15468742832361097096

/-!
# A150538: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150538, there is no canonical definition to state claims against.
-/

/-! ## A150538.P8488225202835360170

`or(A119243(n), A184955((2-n)²))`
-/

namespace A150538.P8488225202835360170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A119243 n) (A184955 ((2 - (n : ℤ)) ^ 2).toNat)

end

end A150538.P8488225202835360170

/-! ## A150538.P7718945038435325020

`A025480(A150832(n)+A000984(n))`
-/

namespace A150538.P7718945038435325020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A150832 n + A000984 n).toNat

end

end A150538.P7718945038435325020

/-! ## A150538.P18420638322698747590

`A065033(A150832(n)+A000984(n))`
-/

namespace A150538.P18420638322698747590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150832 n + A000984 n).toNat

end

end A150538.P18420638322698747590

/-!
# A150539: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (0, 1, -1), (1, 1, 0)}.

The programs for A150539, there is no canonical definition to state claims against.
-/

/-! ## A150539.P7448880048516534179

`A127757(A005054(n))`
-/

namespace A150539.P7448880048516534179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A005054 n).toNat

end

end A150539.P7448880048516534179

/-! ## A150539.P4619932961584676469

`A248231(A151056(n))`
-/

namespace A150539.P4619932961584676469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A151056 n).toNat

end

end A150539.P4619932961584676469

/-!
# A150540: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150540, there is no canonical definition to state claims against.
-/

/-! ## A150540.P4057001219680368176

`or(A001221(A001147(n)), A198957(n+1))`
-/

namespace A150540.P4057001219680368176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A001147 n).toNat) (A198957 (n + 1))

end

end A150540.P4057001219680368176

/-! ## A150540.P4614989709136406177

`A037917(a(n-1)-n+1)+1` with `a(0)=1, a(1)=2`
-/

namespace A150540.P4614989709136406177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A037917 (a (n - 1) - (n : ℤ) + 1).toNat + 1

end

end A150540.P4614989709136406177

/-!
# A150541: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 0, -1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150541, there is no canonical definition to state claims against.
-/

/-! ## A150541.P13014221836305631019

`xor(A150542(n), A185284((1-n)²))`
-/

namespace A150541.P13014221836305631019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150542 n) (A185284 ((1 - (n : ℤ)) ^ 2).toNat)

end

end A150541.P13014221836305631019

/-! ## A150541.P1197704512482918303

`A150542(A073788(n))`
-/

namespace A150541.P1197704512482918303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150542 (A073788 n).toNat

end

end A150541.P1197704512482918303

/-! ## A150541.P4560165381273347081

`A154125(A150542(n))`
-/

namespace A150541.P4560165381273347081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A150542 n).toNat

end

end A150541.P4560165381273347081

/-!
# A150542: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150542, there is no canonical definition to state claims against.
-/

/-! ## A150542.P17946804858907826878

`xor(A150541(n), A185284((1-n)²))`
-/

namespace A150542.P17946804858907826878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A150541 n) (A185284 ((1 - (n : ℤ)) ^ 2).toNat)

end

end A150542.P17946804858907826878

/-!
# A150543: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150543, there is no canonical definition to state claims against.
-/

/-! ## A150543.P420636889830245650

`A004151(A150544(n))`
-/

namespace A150543.P420636889830245650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A150544 n).toNat

end

end A150543.P420636889830245650

/-! ## A150543.P6002826760193274877

`A150544(A073789(n))`
-/

namespace A150543.P6002826760193274877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150544 (A073789 n).toNat

end

end A150543.P6002826760193274877

/-! ## A150543.P15506512071087208

`A150544(A171644(n))`
-/

namespace A150543.P15506512071087208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150544 (A171644 n).toNat

end

end A150543.P15506512071087208

/-! ## A150543.P2342501134609519222

`A150544(A004869(n+1))`
-/

namespace A150543.P2342501134609519222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150544 (A004869 (n + 1)).toNat

end

end A150543.P2342501134609519222

/-!
# A150545: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150545, there is no canonical definition to state claims against.
-/

/-! ## A150545.P9730107671599611295

`A059851(A000799(n+1)+A000045(3*n))`
-/

namespace A150545.P9730107671599611295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (A000799 (n + 1) + A000045 (3 * n)).toNat

end

end A150545.P9730107671599611295

/-! ## A150545.P2779695501304104615

`A063272(A150492(n+1))+A029988(A030037(n))`
-/

namespace A150545.P2779695501304104615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063272 (A150492 (n + 1)).toNat + A029988 (A030037 n).toNat

end

end A150545.P2779695501304104615

/-!
# A150546: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150546, there is no canonical definition to state claims against.
-/

/-! ## A150546.P8815363959985234463

`A247911(A151091(n))`
-/

namespace A150546.P8815363959985234463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247911 (A151091 n).toNat

end

end A150546.P8815363959985234463

/-! ## A150546.P11107001682257544765

`A049990(A000699(n))+A007717(n)`
-/

namespace A150546.P11107001682257544765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049990 (A000699 n).toNat + A007717 n

end

end A150546.P11107001682257544765

/-!
# A150547: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150547, there is no canonical definition to state claims against.
-/

/-! ## A150547.P11835701180913399795

`A076436(A104547(n))`
-/

namespace A150547.P11835701180913399795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076436 (A104547 n).toNat

end

end A150547.P11835701180913399795

/-! ## A150547.P520528478993418564

`floor(A284581(A124507(n))/(n+1))+1`
-/

namespace A150547.P520528478993418564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A284581 (A124507 n).toNat : ℚ) / (n + 1 : ℚ)⌋ + 1

end

end A150547.P520528478993418564

/-!
# A150548: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150548, there is no canonical definition to state claims against.
-/

/-! ## A150548.P12192397956064193188

`A011960(A289805(n))`
-/

namespace A150548.P12192397956064193188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A289805 n).toNat

end

end A150548.P12192397956064193188

/-! ## A150548.P10843468259427846472

`∑[A363548(A001096(n))]`
-/

namespace A150548.P10843468259427846472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363548 (A001096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150548.P10843468259427846472

/-!
# A150549: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 0, -1), (1, 1, 0)}.

The programs for A150549, there is no canonical definition to state claims against.
-/

/-! ## A150549.P10072795993024426997

`A325695(2*n)+A062300(A150211(n+1))`
-/

namespace A150549.P10072795993024426997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325695 (2 * n) + A062300 (A150211 (n + 1)).toNat

end

end A150549.P10072795993024426997

/-! ## A150549.P17933643038964342928

`∏{p}[A150550(n)², #]`
-/

namespace A150549.P17933643038964342928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150550 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150549.P17933643038964342928

/-!
# A150550: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 0), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150550, there is no canonical definition to state claims against.
-/

/-! ## A150550.P17816666903119672662

`A065033(A150561(n)+A150543(n))`
-/

namespace A150550.P17816666903119672662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150561 n + A150543 n).toNat

end

end A150550.P17816666903119672662

/-! ## A150550.P16063236914798461814

`A065033(A150561(n)+A150544(n))`
-/

namespace A150550.P16063236914798461814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150561 n + A150544 n).toNat

end

end A150550.P16063236914798461814

/-!
# A150551: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150551, there is no canonical definition to state claims against.
-/

/-! ## A150551.P4555872809929353886

`A150552(n)-abs(∑{d}[A150507(n+4), (-1)^#])`
-/

namespace A150551.P4555872809929353886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150507 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150552 n - |∑ d ∈ Nat.divisors (f1 n).natAbs, (-1) ^ d|

end

end A150551.P4555872809929353886

/-! ## A150551.P11575401802090348432

`A004001(A380683(n)+A333755(n))`
-/

namespace A150551.P11575401802090348432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004001 (A380683 n + A333755 n).toNat

end

end A150551.P11575401802090348432

/-! ## A150551.P9790406536639876429

`A150552(n)-A331671(A000258(n))`
-/

namespace A150551.P9790406536639876429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150552 n - A331671 (A000258 n).toNat

end

end A150551.P9790406536639876429

/-!
# A150552: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150552, there is no canonical definition to state claims against.
-/

/-! ## A150552.P11885760011979884375

`A033321(n)+A004526(A151080(n))`
-/

namespace A150552.P11885760011979884375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033321 n + A004526 (A151080 n).toNat

end

end A150552.P11885760011979884375

/-! ## A150552.P18163046703697804546

`A150551(n)+A083894(A102736(n+1))`
-/

namespace A150552.P18163046703697804546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150551 n + A083894 (A102736 (n + 1)).toNat

end

end A150552.P18163046703697804546

/-!
# A150553: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 0, 1), (1, 0, -1), (1, 1, 0)}.

The programs for A150553, there is no canonical definition to state claims against.
-/

/-! ## A150553.P14164205995302626233

`A004525(A150556(n)+A150551(n))`
-/

namespace A150553.P14164205995302626233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150556 n + A150551 n).toNat

end

end A150553.P14164205995302626233

/-! ## A150553.P18399332521349076140

`A004526(A150556(n)+A150551(n))`
-/

namespace A150553.P18399332521349076140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150556 n + A150551 n).toNat

end

end A150553.P18399332521349076140

/-! ## A150553.P3210526894949319964

`A004525(A150560(n)+A150554(n))`
-/

namespace A150553.P3210526894949319964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150560 n + A150554 n).toNat

end

end A150553.P3210526894949319964

/-!
# A150554: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (0, 1, 1), (1, -1, 0), (1, 0, -1)}.

The programs for A150554, there is no canonical definition to state claims against.
-/

/-! ## A150554.P9561550017387421132

`A298867(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A150554.P9561550017387421132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A298867 (a (n - 1)).toNat

end

end A150554.P9561550017387421132

/-! ## A150554.P7865243115942042536

`A026346(A109085(n+1))-char[6]`
-/

namespace A150554.P7865243115942042536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026346 (A109085 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A150554.P7865243115942042536

/-! ## A150554.P1974374691349084126

`A150555(n)-A056170(A008485(n))`
-/

namespace A150554.P1974374691349084126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150555 n - A056170 (A008485 n).toNat

end

end A150554.P1974374691349084126

/-!
# A150555: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150555, there is no canonical definition to state claims against.
-/

/-! ## A150555.P5723178978511380130

`A026346(A109085(n+1))`
-/

namespace A150555.P5723178978511380130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026346 (A109085 (n + 1)).toNat

end

end A150555.P5723178978511380130

/-! ## A150555.P18213533462498239389

`A150554(n)+A056170(A008485(n))`
-/

namespace A150555.P18213533462498239389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150554 n + A056170 (A008485 n).toNat

end

end A150555.P18213533462498239389

/-! ## A150555.P5855217597676198239

`or(A083093(A001941(n)), A150554(n))`
-/

namespace A150555.P5855217597676198239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083093 (A001941 n).toNat) (A150554 n)

end

end A150555.P5855217597676198239

/-!
# A150556: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 0), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150556, there is no canonical definition to state claims against.
-/

/-! ## A150556.P18258871412163440840

`A185037((1-n)²)+A151297(n)`
-/

namespace A150556.P18258871412163440840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185037 ((1 - (n : ℤ)) ^ 2).toNat + A151297 n

end

end A150556.P18258871412163440840

/-! ## A150556.P1619893114561351440

`A151061(n)-A002264(A151051(n))`
-/

namespace A150556.P1619893114561351440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151061 n - A002264 (A151051 n).toNat

end

end A150556.P1619893114561351440

/-!
# A150557: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150557, there is no canonical definition to state claims against.
-/

/-! ## A150557.P1554263599161833303

`A247832(A150286(n))`
-/

namespace A150557.P1554263599161833303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A150286 n).toNat

end

end A150557.P1554263599161833303

/-! ## A150557.P11606421855816452297

`A026726(n)-A000120(A084272(n+1))`
-/

namespace A150557.P11606421855816452297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026726 n - A000120 (A084272 (n + 1)).toNat

end

end A150557.P11606421855816452297

/-!
# A150558: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 1, 1), (1, -1, 0), (1, 1, 0)}.

The programs for A150558, there is no canonical definition to state claims against.
-/

/-! ## A150558.P15302664328217744220

`A004526(A150561(n)+A150557(n))`
-/

namespace A150558.P15302664328217744220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150561 n + A150557 n).toNat

end

end A150558.P15302664328217744220

/-! ## A150558.P17619271347468842023

`A065033(A150557(n)+A150553(n))`
-/

namespace A150558.P17619271347468842023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150557 n + A150553 n).toNat

end

end A150558.P17619271347468842023

/-! ## A150558.P11514943273617903975

`A065033(A150560(n)+A150557(n))`
-/

namespace A150558.P11514943273617903975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150560 n + A150557 n).toNat

end

end A150558.P11514943273617903975

/-!
# A150559: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, -1), (0, 1, 0), (1, 0, 1)}.

The programs for A150559, there is no canonical definition to state claims against.
-/

/-! ## A150559.P10086891414146161840

`A091218(n+1)+A004396(A099012(n))`
-/

namespace A150559.P10086891414146161840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091218 (n + 1) + A004396 (A099012 n).toNat

end

end A150559.P10086891414146161840

/-! ## A150559.P7026807724963270313

`A220658(Δ[floor(5^(n-1))]-round(2*n/3))`
-/

namespace A150559.P7026807724963270313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220658 (f1 (n + 1) - f1 n - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))).toNat

end

end A150559.P7026807724963270313

/-!
# A150560: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 0), (1, 0, -1), (1, 0, 1)}.

The programs for A150560, there is no canonical definition to state claims against.
-/

/-! ## A150560.P1216425060936636348

`A159481(2*A150553(n))`
-/

namespace A150560.P1216425060936636348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 (2 * A150553 n).toNat

end

end A150560.P1216425060936636348

/-! ## A150560.P17292220587284528975

`A004526(A150574(n)+A150547(n))`
-/

namespace A150560.P17292220587284528975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150574 n + A150547 n).toNat

end

end A150560.P17292220587284528975

/-! ## A150560.P2004957443933256376

`A193238(A001108(n))+A150553(n)`
-/

namespace A150560.P2004957443933256376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A001108 n).toNat + A150553 n

end

end A150560.P2004957443933256376

/-!
# A150561: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150561, there is no canonical definition to state claims against.
-/

/-! ## A150561.P9923336600023645785

`A026346(A109085(n+1))+char[4]`
-/

namespace A150561.P9923336600023645785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026346 (A109085 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A150561.P9923336600023645785

/-! ## A150561.P12207603583397808320

`A288478(A030019(n))+A150554(n)`
-/

namespace A150561.P12207603583397808320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288478 (A030019 n).toNat + A150554 n

end

end A150561.P12207603583397808320

/-! ## A150561.P6794501147833692448

`A150555(n)+A010054(A150562(n+1))`
-/

namespace A150561.P6794501147833692448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150555 n + A010054 (A150562 (n + 1)).toNat

end

end A150561.P6794501147833692448

/-!
# A150562: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 1)}.

The programs for A150562, there is no canonical definition to state claims against.
-/

/-! ## A150562.P3930207849329737808

`A248565(∑[A149473(n)])`
-/

namespace A150562.P3930207849329737808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248565 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150562.P3930207849329737808

/-! ## A150562.P3208870764843234353

`A273883(A114121(n))+1`
-/

namespace A150562.P3208870764843234353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273883 (A114121 n).toNat + 1

end

end A150562.P3208870764843234353

/-!
# A150563: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A150563, there is no canonical definition to state claims against.
-/

/-! ## A150563.P15329053846515960305

`A065033(A150577(n)+A150554(n))`
-/

namespace A150563.P15329053846515960305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150577 n + A150554 n).toNat

end

end A150563.P15329053846515960305

/-! ## A150563.P15065431524063090864

`A065033(A150577(n)+A150555(n))`
-/

namespace A150563.P15065431524063090864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150577 n + A150555 n).toNat

end

end A150563.P15065431524063090864

/-! ## A150563.P2944438680852405311

`A065033(A150577(n)+A150561(n))`
-/

namespace A150563.P2944438680852405311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150577 n + A150561 n).toNat

end

end A150563.P2944438680852405311

/-!
# A150564: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150564, there is no canonical definition to state claims against.
-/

/-! ## A150564.P744998107989455841

`A150565(n)%p?[∑[2^n]]`
-/

namespace A150564.P744998107989455841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A150565 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A150564.P744998107989455841

/-! ## A150564.P17075143410538157395

`A150565(A073788(n))`
-/

namespace A150564.P17075143410538157395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150565 (A073788 n).toNat

end

end A150564.P17075143410538157395

/-! ## A150564.P7479997970785509241

`A075054(A150565(n))`
-/

namespace A150564.P7479997970785509241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A150565 n).toNat

end

end A150564.P7479997970785509241

/-!
# A150566: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 1, 0), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150566, there is no canonical definition to state claims against.
-/

/-! ## A150566.P3810873181478888235

`A062298(∑[A150506(n)]+n)`
-/

namespace A150566.P3810873181478888235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150506 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A150566.P3810873181478888235

/-! ## A150566.P16637534143385989187

`A326459(A190476(n))+A150565(n)`
-/

namespace A150566.P16637534143385989187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326459 (A190476 n).toNat + A150565 n

end

end A150566.P16637534143385989187

/-!
# A150567: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150567, there is no canonical definition to state claims against.
-/

/-! ## A150567.P7361767897057754903

`A008624(A017966(n)+A003600(n))`
-/

namespace A150567.P7361767897057754903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A017966 n + A003600 n).toNat

end

end A150567.P7361767897057754903

/-! ## A150567.P11050017227805982135

`A065033(A151118(n)+A025235(n))`
-/

namespace A150567.P11050017227805982135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A151118 n + A025235 n).toNat

end

end A150567.P11050017227805982135

/-! ## A150567.P5310102067043065277

`A110654(A151118(n)+A025235(n))`
-/

namespace A150567.P5310102067043065277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151118 n + A025235 n).toNat

end

end A150567.P5310102067043065277

/-!
# A150568: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 0)}.

The programs for A150568, there is no canonical definition to state claims against.
-/

/-! ## A150568.P17537483380589637132

`A019446(A211854(n+1))`
-/

namespace A150568.P17537483380589637132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A211854 (n + 1)).toNat

end

end A150568.P17537483380589637132

/-! ## A150568.P12877739934974135244

`A194964(∑[∑[A150841(n)]])`
-/

namespace A150568.P12877739934974135244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150841 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194964 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150568.P12877739934974135244

/-! ## A150568.P2106942203505385561

`A034887(A151096(n)+A151082(n))`
-/

namespace A150568.P2106942203505385561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A151096 n + A151082 n).toNat

end

end A150568.P2106942203505385561

/-!
# A150569: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150569, there is no canonical definition to state claims against.
-/

/-! ## A150569.P10088383366788169273

`A065033(A150578(n)+A150563(n))`
-/

namespace A150569.P10088383366788169273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150578 n + A150563 n).toNat

end

end A150569.P10088383366788169273

/-! ## A150569.P6699547229447041928

`A110654(A150578(n)+A150563(n))`
-/

namespace A150569.P6699547229447041928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150578 n + A150563 n).toNat

end

end A150569.P6699547229447041928

/-!
# A150570: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, -1), (1, 0, 1), (1, 1, 0)}.

The programs for A150570, there is no canonical definition to state claims against.
-/

/-! ## A150570.P8814153613870918091

`A110654(A192744(n)+A068551(n))`
-/

namespace A150570.P8814153613870918091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A192744 n + A068551 n).toNat

end

end A150570.P8814153613870918091

/-! ## A150570.P2845480671136759015

`A150571(A001096(n))`
-/

namespace A150570.P2845480671136759015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150571 (A001096 n).toNat

end

end A150570.P2845480671136759015

/-!
# A150571: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 0), (0, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150571, there is no canonical definition to state claims against.
-/

/-! ## A150571.P11377354496786793863

`A065033(A150579(n)+A150561(n))`
-/

namespace A150571.P11377354496786793863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150579 n + A150561 n).toNat

end

end A150571.P11377354496786793863

/-! ## A150571.P10984193163498459050

`A110654(A150579(n)+A150561(n))`
-/

namespace A150571.P10984193163498459050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150579 n + A150561 n).toNat

end

end A150571.P10984193163498459050

/-!
# A150572: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150572, there is no canonical definition to state claims against.
-/

/-! ## A150572.P1573098744720053357

`A226190(ceil(2^n+n/2)+4^n-3^n)`
-/

namespace A150572.P1573098744720053357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (⌈(2 ^ n : ℚ) + (n : ℚ) / 2⌉ + ((4 ^ n : ℤ) - (3 ^ n : ℤ))).toNat

end

end A150572.P1573098744720053357

/-! ## A150572.P9285659606089688923

`A150573(A001096(n))`
-/

namespace A150572.P9285659606089688923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150573 (A001096 n).toNat

end

end A150572.P9285659606089688923

/-!
# A150573: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, -1), (1, 0, 0)}.

The programs for A150573, there is no canonical definition to state claims against.
-/

/-! ## A150573.P10700465445982531640

`A093638(n)-A230747(A000142(n))`
-/

namespace A150573.P10700465445982531640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093638 n - A230747 (A000142 n).toNat

end

end A150573.P10700465445982531640

/-! ## A150573.P15817750060456099234

`A151069(n)-A057360(A151050(n))`
-/

namespace A150573.P15817750060456099234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151069 n - A057360 (A151050 n).toNat

end

end A150573.P15817750060456099234

/-!
# A150574: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, -1), (0, 1, 1), (1, 0, 0)}.

The programs for A150574, there is no canonical definition to state claims against.
-/

/-! ## A150574.P8271854469707340901

`A248607(A073157(n))`
-/

namespace A150574.P8271854469707340901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248607 (A073157 n).toNat

end

end A150574.P8271854469707340901

/-! ## A150574.P18041189664152868802

`A050296(∑[A150803(n)])`
-/

namespace A150574.P18041189664152868802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150574.P18041189664152868802

/-!
# A150575: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150575, there is no canonical definition to state claims against.
-/

/-! ## A150575.P8080153462016720886

`A004525(A150577(n)+A150572(n))`
-/

namespace A150575.P8080153462016720886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150577 n + A150572 n).toNat

end

end A150575.P8080153462016720886

/-! ## A150575.P17214465419467637763

`A065033(A150577(n)+A150572(n))`
-/

namespace A150575.P17214465419467637763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A150577 n + A150572 n).toNat

end

end A150575.P17214465419467637763

/-! ## A150575.P6374619794563288571

`A110654(A150577(n)+A150572(n))`
-/

namespace A150575.P6374619794563288571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A150577 n + A150572 n).toNat

end

end A150575.P6374619794563288571

/-!
# A150576: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 1, 1), (0, 0, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150576, there is no canonical definition to state claims against.
-/

/-! ## A150576.P7518043175323469783

`A130339(A150579(n))`
-/

namespace A150576.P7518043175323469783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130339 (A150579 n).toNat

end

end A150576.P7518043175323469783

/-! ## A150576.P8961447100421499189

`A150579(n)-A080343(A027267(n))`
-/

namespace A150576.P8961447100421499189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150579 n - A080343 (A027267 n).toNat

end

end A150576.P8961447100421499189

/-!
# A150577: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 0), (1, 0, 1), (1, 1, -1)}.

The programs for A150577, there is no canonical definition to state claims against.
-/

/-! ## A150577.P11244950364294219112

`A150568(n)+A055641(A008485(n))`
-/

namespace A150577.P11244950364294219112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150568 n + A055641 (A008485 n).toNat

end

end A150577.P11244950364294219112

/-! ## A150577.P5803112722110745805

`or(A150576(n), A286367(A026671(n)))`
-/

namespace A150577.P5803112722110745805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A150576 n) (A286367 (A026671 n).toNat)

end

end A150577.P5803112722110745805

/-! ## A150577.P7376463946471825831

`A150568(n)+A056170(A150554(n+1))`
-/

namespace A150577.P7376463946471825831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150568 n + A056170 (A150554 (n + 1)).toNat

end

end A150577.P7376463946471825831

/-!
# A150578: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150578, there is no canonical definition to state claims against.
-/

/-! ## A150578.P11395887241626813256

`or((n+1)/∏{p}[n+1, (n+1)/#], A160124(2^n))`
-/

namespace A150578.P11395887241626813256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))) (A160124 (2 ^ n))

end

end A150578.P11395887241626813256

/-! ## A150578.P17004356143493299198

`A390395(A150755(n))`
-/

namespace A150578.P17004356143493299198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390395 (A150755 n).toNat

end

end A150578.P17004356143493299198

/-!
# A150579: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (0, 1, 1), (1, -1, 1), (1, 0, -1)}.

The programs for A150579, there is no canonical definition to state claims against.
-/

/-! ## A150579.P2732057962250699

`A130339(A150576(n))`
-/

namespace A150579.P2732057962250699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130339 (A150576 n).toNat

end

end A150579.P2732057962250699

/-! ## A150579.P12526806059221763297

`A150576(n)+A080343(A027267(n))`
-/

namespace A150579.P12526806059221763297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150576 n + A080343 (A027267 n).toNat

end

end A150579.P12526806059221763297

/-! ## A150579.P7994216304741448919

`or(A055641(A008485(n)), A150576(n))`
-/

namespace A150579.P7994216304741448919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055641 (A008485 n).toNat) (A150576 n)

end

end A150579.P7994216304741448919

/-!
# A150580: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 1, -1), (1, -1, 1), (1, 0, 0), (1, 1, 0)}.

The programs for A150580, there is no canonical definition to state claims against.
-/

/-! ## A150580.P17071127062525651568

`A130655(n)-A064458(A130655(n))`
-/

namespace A150580.P17071127062525651568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130655 n - A064458 (A130655 n).toNat

end

end A150580.P17071127062525651568

/-! ## A150580.P17207714153457737661

`A321856(n+1)+A004525(A151170(n))`
-/

namespace A150580.P17207714153457737661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321856 (n + 1) + A004525 (A151170 n).toNat

end

end A150580.P17207714153457737661

/-! ## A150580.P5918548716043724944

`A004526(A019988(n+2))-A004526(n)`
-/

namespace A150580.P5918548716043724944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A019988 (n + 2)).toNat - A004526 n

end

end A150580.P5918548716043724944

/-!
# A150581: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 1, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150581, there is no canonical definition to state claims against.
-/

/-! ## A150581.P3379720569627370234

`∑[A276796(A150948(n))]`
-/

namespace A150581.P3379720569627370234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276796 (A150948 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A150581.P3379720569627370234

/-! ## A150581.P10690998444391899970

`A004525(A151170(n)+A000213(n))`
-/

namespace A150581.P10690998444391899970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151170 n + A000213 n).toNat

end

end A150581.P10690998444391899970

/-! ## A150581.P18110281200472728071

`A110654(A151170(n)+A000213(n))`
-/

namespace A150581.P18110281200472728071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A151170 n + A000213 n).toNat

end

end A150581.P18110281200472728071

/-!
# A150582: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (0, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150582, there is no canonical definition to state claims against.
-/

/-! ## A150582.P8055568395180064063

`A328753(A150458(n))`
-/

namespace A150582.P8055568395180064063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328753 (A150458 n).toNat

end

end A150582.P8055568395180064063

/-! ## A150582.P17637691990946998694

`A081753(Δ[A141222(n)])`
-/

namespace A150582.P17637691990946998694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (f1 (n + 1) - f1 n).toNat

end

end A150582.P17637691990946998694

/-!
# A150583: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, -1, 1), (0, 0, 1), (0, 1, 1), (1, 1, -1)}.

The programs for A150583, there is no canonical definition to state claims against.
-/

/-! ## A150583.P10300135557210554415

`∏{p}[A150584(n)², #]`
-/

namespace A150583.P10300135557210554415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150584 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A150583.P10300135557210554415

/-! ## A150583.P3847327897012821144

`A150584(A001096(n))`
-/

namespace A150583.P3847327897012821144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150584 (A001096 n).toNat

end

end A150583.P3847327897012821144

/-!
# A150585: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (0, 0, 1), (1, -1, 1), (1, 0, 1), (1, 1, -1)}.

The programs for A150585, there is no canonical definition to state claims against.
-/

/-! ## A150585.P7761231913692986268

`A268129(A150769(n))`
-/

namespace A150585.P7761231913692986268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268129 (A150769 n).toNat

end

end A150585.P7761231913692986268

/-!
# A150586: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 1), (0, 1, 1), (1, 0, 0), (1, 1, -1)}.

The programs for A150586, there is no canonical definition to state claims against.
-/

/-! ## A150586.P7748849136025497662

`or(A117535(A150580(n+1)), A150583(n))`
-/

namespace A150586.P7748849136025497662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A117535 (A150580 (n + 1)).toNat) (A150583 n)

end

end A150586.P7748849136025497662

/-! ## A150586.P13598976296429649707

`A247832(A150296(n))`
-/

namespace A150586.P13598976296429649707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A150296 n).toNat

end

end A150586.P13598976296429649707

/-!
# A150587: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 1), (1, -1, 1), (1, 0, 0), (1, 1, -1), (1, 1, 0)}.

The programs for A150587, there is no canonical definition to state claims against.
-/

/-! ## A150587.P9135667209437921748

`A049472(A316983(2*n)+A308030(n+1))`
-/

namespace A150587.P9135667209437921748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A316983 (2 * n) + A308030 (n + 1)).toNat

end

end A150587.P9135667209437921748

/-! ## A150587.P13829329045325880237

`A256502(floor(2/acot(n))+4^n-3^n)`
-/

namespace A150587.P13829329045325880237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + ((4 ^ n : ℤ) - (3 ^ n : ℤ))).toNat

end

end A150587.P13829329045325880237

/-!
# A150588: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 0, 1), (1, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150588, there is no canonical definition to state claims against.
-/

/-! ## A150588.P8300178467085144716

`A150589(A001096(n))`
-/

namespace A150588.P8300178467085144716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150589 (A001096 n).toNat

end

end A150588.P8300178467085144716

/-!
# A150590: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, -1), (-1, 1, 1), (0, 1, 1), (1, -1, 1), (1, 1, 0)}.

The programs for A150590, there is no canonical definition to state claims against.
-/

/-! ## A150590.P3573974529928247680

`A150749(n)-A054404(A320181(n))`
-/

namespace A150590.P3573974529928247680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150749 n - A054404 (A320181 n).toNat

end

end A150590.P3573974529928247680

/-! ## A150590.P3874500453071990328

`A150750(n)-A054404(A320181(n))`
-/

namespace A150590.P3874500453071990328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150750 n - A054404 (A320181 n).toNat

end

end A150590.P3874500453071990328

/-!
# A150591: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 0, -1), (0, 1, 0), (1, 1, 1)}.

The programs for A150591, there is no canonical definition to state claims against.
-/

/-! ## A150591.P18431257760584137718

`A065033(∑[A151064(n)])`
-/

namespace A150591.P18431257760584137718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150591.P18431257760584137718

/-! ## A150591.P495362367730051857

`A110654(∑[A151064(n)])`
-/

namespace A150591.P495362367730051857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150591.P495362367730051857

/-! ## A150591.P11302917796262575059

`A263997(∑[A151064(n)])`
-/

namespace A150591.P11302917796262575059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150591.P11302917796262575059

/-!
# A150592: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 0, -1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150592, there is no canonical definition to state claims against.
-/

/-! ## A150592.P2933814093428800152

`A150593(A073788(n))`
-/

namespace A150592.P2933814093428800152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150593 (A073788 n).toNat

end

end A150592.P2933814093428800152

/-! ## A150592.P17669906745737644601

`A154443(A150593(n))`
-/

namespace A150592.P17669906745737644601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154443 (A150593 n).toNat

end

end A150592.P17669906745737644601

/-! ## A150592.P1906629842402708317

`A150593(A171596(n))`
-/

namespace A150592.P1906629842402708317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150593 (A171596 n).toNat

end

end A150592.P1906629842402708317

/-!
# A150593: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (0, 1, 0), (1, 0, -1), (1, 1, 1)}.

The programs for A150593, there is no canonical definition to state claims against.
-/

/-! ## A150593.P14079559069436563484

`or(A025669(A001349(n)), A150592(n))`
-/

namespace A150593.P14079559069436563484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025669 (A001349 n).toNat) (A150592 n)

end

end A150593.P14079559069436563484

/-! ## A150593.P17488239321758236671

`or(A037203(A000088(n)), A150592(n))`
-/

namespace A150593.P17488239321758236671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037203 (A000088 n).toNat) (A150592 n)

end

end A150593.P17488239321758236671

/-! ## A150593.P2055952045566221026

`or(A037203(A002494(n)), A150592(n))`
-/

namespace A150593.P2055952045566221026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037203 (A002494 n).toNat) (A150592 n)

end

end A150593.P2055952045566221026

/-! ## A150593.P6056464340603936106

`or(A036857(A019462(n)), A150592(n))`
-/

namespace A150593.P6056464340603936106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036857 (A019462 n).toNat) (A150592 n)

end

end A150593.P6056464340603936106

/-!
# A150594: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 0, -1), (0, 1, 0), (1, 1, 1)}.

The programs for A150594, there is no canonical definition to state claims against.
-/

/-! ## A150594.P2841993257449312038

`A004525(A150598(n)+A150591(n))`
-/

namespace A150594.P2841993257449312038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A150598 n + A150591 n).toNat

end

end A150594.P2841993257449312038

/-! ## A150594.P8286315244571200464

`A004526(A150598(n)+A150591(n))`
-/

namespace A150594.P8286315244571200464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A150598 n + A150591 n).toNat

end

end A150594.P8286315244571200464

/-! ## A150594.P11276956826183256431

`A005379(A150260(n)+A150258(n))`
-/

namespace A150594.P11276956826183256431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (A150260 n + A150258 n).toNat

end

end A150594.P11276956826183256431

/-!
# A150595: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (0, 1, -1), (1, 0, 0), (1, 1, -1), (1, 1, 1)}.

The programs for A150595, there is no canonical definition to state claims against.
-/

/-! ## A150595.P14036319881804351180

`A395596(A270447(n))`
-/

namespace A150595.P14036319881804351180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395596 (A270447 n).toNat

end

end A150595.P14036319881804351180

/-! ## A150595.P6754288661458044098

`A350349(A150206(n))`
-/

namespace A150595.P6754288661458044098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350349 (A150206 n).toNat

end

end A150595.P6754288661458044098

/-!
# A150596: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, -1, 1), (0, 1, -1), (1, 0, 0), (1, 1, 1)}.

The programs for A150596, there is no canonical definition to state claims against.
-/

/-! ## A150596.P545830874971144801

`A079715(A390968(n)-n)`
-/

namespace A150596.P545830874971144801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079715 (A390968 n - (n : ℤ)).toNat

end

end A150596.P545830874971144801

/-! ## A150596.P16280131155270881236

`A248180(∑[∑[A215973(n)]])`
-/

namespace A150596.P16280131155270881236
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215973 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248180 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A150596.P16280131155270881236

/-!
# A150597: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 0), (-1, 0, 0), (0, 1, 1), (1, 0, -1), (1, 0, 1)}.

The programs for A150597, there is no canonical definition to state claims against.
-/

/-! ## A150597.P4964602426587910675

`A065033(A324238(n)+A167011(n+1))`
-/

namespace A150597.P4964602426587910675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A324238 n + A167011 (n + 1)).toNat

end

end A150597.P4964602426587910675

/-! ## A150597.P4717908625629058788

`A050296(A151091(n))`
-/

namespace A150597.P4717908625629058788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050296 (A151091 n).toNat

end

end A150597.P4717908625629058788

/-!
# A150598: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, -1, 1), (-1, 0, 1), (0, 0, -1), (0, 1, 0), (1, 1, 1)}.

The programs for A150598, there is no canonical definition to state claims against.
-/

/-! ## A150598.P2826737392014159804

`2*A151231(n)-A151253(n)`
-/

namespace A150598.P2826737392014159804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A151231 n - A151253 n

end

end A150598.P2826737392014159804

/-! ## A150598.P5272526249901225222

`A004277(A151231(n))-A151253(n)`
-/

namespace A150598.P5272526249901225222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A151231 n).toNat - A151253 n

end

end A150598.P5272526249901225222

/-!
# A150599: Number of walks within N^3 (the first octant of Z^3) starting at (0,0,0) and consisting of n steps taken from {(-1, 0, 0), (0, -1, 0), (0, 0, 1), (1, 1, -1), (1, 1, 0)}.

The programs for A150599, there is no canonical definition to state claims against.
-/

/-! ## A150599.P8603002627117832577

`A004525(A134957(n)+A000045(3*n))`
-/

namespace A150599.P8603002627117832577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A134957 n + A000045 (3 * n)).toNat

end

end A150599.P8603002627117832577

/-! ## A150599.P11815159386296902150

`A309050(∑{e}[∑{digits}[n, 10^#], #])`
-/

namespace A150599.P11815159386296902150
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309050 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A150599.P11815159386296902150

