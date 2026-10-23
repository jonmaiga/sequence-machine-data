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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A185400: Numbers with property that the digital sum plus the product of the digits is a power of 2.

The programs for A185400, the canonical program `A185400.P10088178791459838251` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185400 has offset 1).

The definition of A185400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185400.P2481421158928572791

`eq[1, A000120(n-A249121(n))]`
-/

namespace A185400.P2481421158928572791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n : ℤ) - A249121 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185400.P2481421158928572791

namespace A185400

/-- `eq[1, A000120(n-A249121(n))]` -/
def P2481421158928572791.Spec : Prop :=
  ∀ n, (P2481421158928572791.a n : ℤ) = A185400 (n + 1)

end A185400

/-! ## A185400.P479259823455819967

`eq[1, A000120(A007954(n)+A007953(n))]`
-/

namespace A185400.P479259823455819967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A007954 n + A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185400.P479259823455819967

namespace A185400

/-- `eq[1, A000120(A007954(n)+A007953(n))]` -/
def P479259823455819967.Spec : Prop :=
  ∀ n, (P479259823455819967.a n : ℤ) = A185400 (n + 1)

end A185400

/-! ## A185400.P10088178791459838251

`eq[1, A000120(A062028(n)-A070565(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A185400

/-- `eq[1, A000120(A062028(n)-A070565(n))]` -/
def P10088178791459838251.Spec : Prop :=
  ∀ n, (P10088178791459838251.a n : ℤ) = A185400 (n + 1)

theorem P10088178791459838251.correct : P10088178791459838251.Spec := by
  intro n
  simp only [A185400, Nat.add_sub_cancel]

end A185400

/-! ## A185400.P17997139990376616455

`eq[0, A347523(A061762(n))]`
-/

namespace A185400.P17997139990376616455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (A061762 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185400.P17997139990376616455

namespace A185400

/-- `eq[0, A347523(A061762(n))]` -/
def P17997139990376616455.Spec : Prop :=
  ∀ n, (P17997139990376616455.a n : ℤ) = A185400 (n + 1)

end A185400

/-! ## A185400.P1848683964105075902

`record[(n+1)/A000120(A061762(n+1))]`
-/

namespace A185400.P1848683964105075902
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000120 (A061762 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185400.P1848683964105075902

namespace A185400

/-- `record[(n+1)/A000120(A061762(n+1))]` -/
def P1848683964105075902.Spec : Prop :=
  ∀ n, P1848683964105075902.a n = (A185400 (n + 1) : ℚ)

end A185400

/-!
# A185405: 1/7 the number of n X 2 0..6 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185405, there is no canonical definition to state claims against.
-/

/-! ## A185405.P10930126439849741740

`A185409(∑[n+1]+2)`
-/

namespace A185405.P10930126439849741740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185405.P10930126439849741740

/-! ## A185405.P7701807452618195477

`record[A185409(eq[1, A083856(n)])]`
-/

namespace A185405.P7701807452618195477
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083856 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185405.P7701807452618195477

/-! ## A185405.P6992899237205514305

`record[gcd(A185409(n+1), A274537(n))]`
-/

namespace A185405.P6992899237205514305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185409 (n + 1)) (A274537 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185405.P6992899237205514305

/-! ## A185405.P11936413814224733360

`record[gcd(A185409(n+2), A185411(n))]`
-/

namespace A185405.P11936413814224733360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185409 (n + 2)) (A185411 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185405.P11936413814224733360

/-! ## A185405.P13998721838816832719

`record[A185409(n+3)/A185419(n+1)]`
-/

namespace A185405.P13998721838816832719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185409 (n + 3) : ℚ) / (A185419 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185405.P13998721838816832719

/-!
# A185406: 1/7 the number of nX3 0..6 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185406, there is no canonical definition to state claims against.
-/

/-! ## A185406.P416062973877477368

`A185409(∑[n+2]+4)`
-/

namespace A185406.P416062973877477368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185406.P416062973877477368

/-! ## A185406.P11728738691810240097

`A185409(A167614(n+1))+n-n%11`
-/

namespace A185406.P11728738691810240097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (A167614 (n + 1)).toNat + ((n : ℤ) - ((n % 11 : ℕ) : ℤ))

end

end A185406.P11728738691810240097

/-! ## A185406.P17620311959887035182

`A185409(A167614(n+1))+A025466(n)`
-/

namespace A185406.P17620311959887035182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (A167614 (n + 1)).toNat + A025466 n

end

end A185406.P17620311959887035182

/-! ## A185406.P18312700551568373000

`A185409(A167614(n+1))+A185284(n)`
-/

namespace A185406.P18312700551568373000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (A167614 (n + 1)).toNat + A185284 n

end

end A185406.P18312700551568373000

/-!
# A185407: 1/7 the number of nX4 0..6 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185407, there is no canonical definition to state claims against.
-/

/-! ## A185407.P13680290479876901675

`A185409(A141214(n)+7)`
-/

namespace A185407.P13680290479876901675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (A141214 n + 7).toNat

end

end A185407.P13680290479876901675

/-! ## A185407.P15339084877290605014

`A185409(A052905(n)+9)`
-/

namespace A185407.P15339084877290605014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (A052905 n + 9).toNat

end

end A185407.P15339084877290605014

/-! ## A185407.P5028443965857188672

`A185409(A055999(n)+10)`
-/

namespace A185407.P5028443965857188672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (A055999 n + 10).toNat

end

end A185407.P5028443965857188672

/-!
# A185408: 1/7 the number of n X 5 0..6 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185408, there is no canonical definition to state claims against.
-/

/-! ## A185408.P8669503344383234282

`A185409(∑[n+5]+6)`
-/

namespace A185408.P8669503344383234282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185409 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A185408.P8669503344383234282

/-!
# A185409: T(n,k)=1/7 the number of nXk 0..6 arrays with every element equal to exactly one or two of its horizontal and vertical neighbors.

The programs for A185409, there is no canonical definition to state claims against.
-/

/-! ## A185409.P3590952771602935662

`A038722(A070071(n)+1)%A087783(n+1)`
-/

namespace A185409.P3590952771602935662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038722 (A070071 n + 1).toNat) (A087783 (n + 1))

end

end A185409.P3590952771602935662

/-! ## A185409.P6538291079628137998

`A241092(A194080(n+1)%A063638(n+1))`
-/

namespace A185409.P6538291079628137998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 (Int.tmod (A194080 (n + 1)) (A063638 (n + 1))).toNat

end

end A185409.P6538291079628137998

/-!
# A185410: A decomposition of the double factorials A001147.

The programs for A185410, there is no canonical definition to state claims against.
-/

/-! ## A185410.P16147584212960793980

`A059268(n)*A102365(n)`
-/

namespace A185410.P16147584212960793980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n * A102365 n

end

end A185410.P16147584212960793980

/-! ## A185410.P9573858520761992672

`A000079(A002262(n))*A102365(n)`
-/

namespace A185410.P9573858520761992672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A002262 n).toNat * A102365 n

end

end A185410.P9573858520761992672

/-! ## A185410.P3717439522350717133

`A102365(n)*A130321(A061579(n))`
-/

namespace A185410.P3717439522350717133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 n * A130321 (A061579 n).toNat

end

end A185410.P3717439522350717133

/-! ## A185410.P10196715187383953146

`A185411(A061579(n))`
-/

namespace A185410.P10196715187383953146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185411 (A061579 n).toNat

end

end A185410.P10196715187383953146

/-! ## A185410.P5483384223262807734

`A185411(A038722(n+1)-1)`
-/

namespace A185410.P5483384223262807734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185411 (A038722 (n + 1) - 1).toNat

end

end A185410.P5483384223262807734

/-! ## A185410.P17672095286933523682

`A185411(A038722(n+2)%A273022(n))`
-/

namespace A185410.P17672095286933523682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185411 (Int.tmod (A038722 (n + 2)) (A273022 n)).toNat

end

end A185410.P17672095286933523682

/-!
# A185411: A triangular decomposition of the double factorial numbers A001147.

The programs for A185411, there is no canonical definition to state claims against.
-/

/-! ## A185411.P12925254118085752770

`A130321(n)*A211399(n)`
-/

namespace A185411.P12925254118085752770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A211399 n

end

end A185411.P12925254118085752770

/-! ## A185411.P4448914156206284785

`A057728(n+1)*A211399(n)`
-/

namespace A185411.P4448914156206284785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A211399 n

end

end A185411.P4448914156206284785

/-! ## A185411.P12014757901280624775

`A102365(A061579(n))*A130321(n)`
-/

namespace A185411.P12014757901280624775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102365 (A061579 n).toNat * A130321 n

end

end A185411.P12014757901280624775

/-! ## A185411.P133937189359484244

`A185410(A061579(n))`
-/

namespace A185411.P133937189359484244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185410 (A061579 n).toNat

end

end A185411.P133937189359484244

/-! ## A185411.P6562374890700149592

`A185410(A114327(n)+n)`
-/

namespace A185411.P6562374890700149592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185410 (A114327 n + (n : ℤ)).toNat

end

end A185411.P6562374890700149592

/-! ## A185411.P13840341961425556742

`A185410(A038722(n+1)-1)`
-/

namespace A185411.P13840341961425556742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185410 (A038722 (n + 1) - 1).toNat

end

end A185411.P13840341961425556742

/-! ## A185411.P1948877110085567938

`A185410((A003056(n)+1)²-(n+1))`
-/

namespace A185411.P1948877110085567938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185410 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A185411.P1948877110085567938

/-! ## A185411.P12674068541326004153

`A185410(A038722(n+2))`
-/

namespace A185411.P12674068541326004153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185410 (A038722 (n + 2)).toNat

end

end A185411.P12674068541326004153

/-! ## A185411.P17037800912581937061

`A156919(n)/A156920(n)*A211399(n)`
-/

namespace A185411.P17037800912581937061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156919 n : ℚ) / (A156920 n : ℚ) * (A211399 n : ℚ)

end

end A185411.P17037800912581937061

/-!
# A185412: Triangle T(n,m) read by rows: the matrix product A130595 * A156919.

The programs for A185412, there is no canonical definition to state claims against.
-/

/-! ## A185412.P7450448424898804972

`A157148(n)-A200512(A157148(n))`
-/

namespace A185412.P7450448424898804972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157148 n - A200512 (A157148 n).toNat

end

end A185412.P7450448424898804972

/-! ## A185412.P9426617159443970976

`xor(A157148(n), A231563(A157149(n)))`
-/

namespace A185412.P9426617159443970976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A157148 n) (A231563 (A157149 n).toNat)

end

end A185412.P9426617159443970976

/-!
# A185413: A000027 written clockwise as spiral and read counterclockwise.

The programs for A185413, there is no canonical definition to state claims against.
-/

/-! ## A185413.P9082219466937479152

`A064664(A185586(n+1))`
-/

namespace A185413.P9082219466937479152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064664 (A185586 (n + 1)).toNat

end

end A185413.P9082219466937479152

/-! ## A185413.P14190883140095714998

`A068225(A090861(n+1))`
-/

namespace A185413.P14190883140095714998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (A090861 (n + 1)).toNat

end

end A185413.P14190883140095714998

/-! ## A185413.P2398431641031782862

`A068225(A020703(A090929(n+1)))`
-/

namespace A185413.P2398431641031782862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (A020703 (A090929 (n + 1)).toNat).toNat

end

end A185413.P2398431641031782862

/-! ## A185413.P10353816961094553813

`A090930(A068225(A090928(n+1)))`
-/

namespace A185413.P10353816961094553813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090930 (A068225 (A090928 (n + 1)).toNat).toNat

end

end A185413.P10353816961094553813

/-! ## A185413.P4725071663387603682

`A068225(A090915(A090925(n+1)))`
-/

namespace A185413.P4725071663387603682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (A090915 (A090925 (n + 1)).toNat).toNat

end

end A185413.P4725071663387603682

/-! ## A185413.P2920603078933086480

`A068225(A090915(A020703(A090930(n+1))))`
-/

namespace A185413.P2920603078933086480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (A090915 (A020703 (A090930 (n + 1)).toNat).toNat).toNat

end

end A185413.P2920603078933086480

/-! ## A185413.P819627062579955906

`A068225(A090925(A020703(n+1)))`
-/

namespace A185413.P819627062579955906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (A090925 (A020703 (n + 1)).toNat).toNat

end

end A185413.P819627062579955906

/-! ## A185413.P9609543050325447053

`A068225(A090929(A090915(n+1)))`
-/

namespace A185413.P9609543050325447053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (A090929 (A090915 (n + 1)).toNat).toNat

end

end A185413.P9609543050325447053

/-! ## A185413.P8176572707569886040

`A090861(A068226(n+1))`
-/

namespace A185413.P8176572707569886040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090861 (A068226 (n + 1)).toNat

end

end A185413.P8176572707569886040

/-!
# A185414: Square array, read by antidiagonals, used to recursively calculate the zigzag numbers A000111.

The programs for A185414, there is no canonical definition to state claims against.
-/

/-! ## A185414.P17642482707568344109

`A020753(A108087(n))`
-/

namespace A185414.P17642482707568344109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A108087 n).toNat

end

end A185414.P17642482707568344109

/-! ## A185414.P15994002604116705208

`A059953(A108075(n))`
-/

namespace A185414.P15994002604116705208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059953 (A108075 n).toNat

end

end A185414.P15994002604116705208

/-! ## A185414.P9108962880464793035

`A135578(A110488(n))`
-/

namespace A185414.P9108962880464793035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135578 (A110488 n).toNat

end

end A185414.P9108962880464793035

/-! ## A185414.P18400815651183664549

`A159630(A094587(n))`
-/

namespace A185414.P18400815651183664549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159630 (A094587 n).toNat

end

end A185414.P18400815651183664549

/-! ## A185414.P6927882898121706016

`A129618(A134379(n))`
-/

namespace A185414.P6927882898121706016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129618 (A134379 n).toNat

end

end A185414.P6927882898121706016

/-!
# A185415: Table of coefficients of a polynomial sequence of binomial type related to A080635.

The programs for A185415, there is no canonical definition to state claims against.
-/

/-! ## A185415.P673859550414905164

`A358733(A059419(n+1))`
-/

namespace A185415.P673859550414905164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358733 (A059419 (n + 1)).toNat

end

end A185415.P673859550414905164

/-! ## A185415.P12505480747013692801

`A151566(A002998(A180048(n)))`
-/

namespace A185415.P12505480747013692801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151566 (A002998 (A180048 n).toNat).toNat

end

end A185415.P12505480747013692801

/-! ## A185415.P9020873054513775917

`A000196(A039598(n)*A164652(n))`
-/

namespace A185415.P9020873054513775917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A039598 n * A164652 n).toNat

end

end A185415.P9020873054513775917

/-! ## A185415.P10269985127952385182

`A000196(A008275(n+1)*A180049(n+1))`
-/

namespace A185415.P10269985127952385182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A008275 (n + 1) * A180049 (n + 1)).toNat

end

end A185415.P10269985127952385182

/-! ## A185415.P13872763587955201505

`A020639(A130321(n))*A328003(A156960(n))`
-/

namespace A185415.P13872763587955201505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A130321 n).toNat * A328003 (A156960 n).toNat

end

end A185415.P13872763587955201505

/-!
# A185416: Square array, read by antidiagonals, used to recursively calculate A080635.

The programs for A185416, there is no canonical definition to state claims against.
-/

/-! ## A185416.P9996656944264889868

`A050761(A109267(n)-1)`
-/

namespace A185416.P9996656944264889868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050761 (A109267 n - 1).toNat

end

end A185416.P9996656944264889868

/-! ## A185416.P7404208501720564619

`A000720(A202305(A103240(n+1)))`
-/

namespace A185416.P7404208501720564619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A202305 (A103240 (n + 1)).toNat).toNat

end

end A185416.P7404208501720564619

/-! ## A185416.P3747563362228187749

`A185255(3*n)+A109267(n)`
-/

namespace A185416.P3747563362228187749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (3 * n) + A109267 n

end

end A185416.P3747563362228187749

/-! ## A185416.P2258372330727073170

`A126917(A156593(∑[n])*A156628(n))`
-/

namespace A185416.P2258372330727073170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (A156593 (∑ j ∈ Finset.range (n + 1), f1 j) * A156628 n).toNat

end

end A185416.P2258372330727073170

/-! ## A185416.P7384410429326781124

`A126917(A156628(n)/A156593(∑[n]))`
-/

namespace A185416.P7384410429326781124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126917 (SequenceMachineLib.roundAway ((A156628 n : ℚ) / (A156593 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))).toNat

end

end A185416.P7384410429326781124

/-!
# A185418: Square array, read by antidiagonals, used to recursively calculate the Springer numbers A001586.

The programs for A185418, there is no canonical definition to state claims against.
-/

/-! ## A185418.P10726767730246317799

`A156689(A104417(n))`
-/

namespace A185418.P10726767730246317799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156689 (A104417 n).toNat

end

end A185418.P10726767730246317799

/-! ## A185418.P7007141216881555034

`A340192(A111845(n))`
-/

namespace A185418.P7007141216881555034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340192 (A111845 n).toNat

end

end A185418.P7007141216881555034

/-! ## A185418.P13592468750047406696

`∑{d}[A111845(n), A049559(#)]`
-/

namespace A185418.P13592468750047406696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049559 d

end

end A185418.P13592468750047406696

/-! ## A185418.P18275250830835984519

`∑{d}[A111845(n), A340081(#)]`
-/

namespace A185418.P18275250830835984519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A340081 d

end

end A185418.P18275250830835984519

/-! ## A185418.P5236733712706030297

`A143603(n+1)-A324692(A143603(n+1))`
-/

namespace A185418.P5236733712706030297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143603 (n + 1) - A324692 (A143603 (n + 1)).toNat

end

end A185418.P5236733712706030297

/-!
# A185420: Square array, read by antidiagonals, used to recursively calculate the number of minimax trees A080795.

The programs for A185420, there is no canonical definition to state claims against.
-/

/-! ## A185420.P17031278402154165317

`and(A120411(3*n+2), A264773(n))`
-/

namespace A185420.P17031278402154165317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120411 (3 * n + 2)) (A264773 n)

end

end A185420.P17031278402154165317

/-! ## A185420.P7003636705936224851

`A117380(n)+A087667(A261478(n))`
-/

namespace A185420.P7003636705936224851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117380 n + A087667 (A261478 n).toNat

end

end A185420.P7003636705936224851

/-! ## A185420.P13444164147079465627

`and(A120105(n), A211427(A284718(n)))`
-/

namespace A185420.P13444164147079465627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120105 n) (A211427 (A284718 n).toNat)

end

end A185420.P13444164147079465627

/-!
# A185421: Ordered forests of k increasing unordered trees on the vertex set {1,2,...,n} in which all outdegrees are <= 2.

The programs for A185421, there is no canonical definition to state claims against.
-/

/-! ## A185421.P10331249900093279210

`A147315(n)*A166350(n+1)`
-/

namespace A185421.P10331249900093279210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147315 n * A166350 (n + 1)

end

end A185421.P10331249900093279210

/-! ## A185421.P17925867001559313614

`A002260(n+1)!*A147315(n)`
-/

namespace A185421.P17925867001559313614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A147315 n

end

end A185421.P17925867001559313614

/-! ## A185421.P3794274409248504233

`A002262(A080036(n))!*A147315(n)`
-/

namespace A185421.P3794274409248504233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 (A080036 n).toNat).toNat : ℤ) * A147315 n

end

end A185421.P3794274409248504233

/-! ## A185421.P14968273295982321738

`A002260(n+1)*A147315(n)*A233543(n)`
-/

namespace A185421.P14968273295982321738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A147315 n * A233543 n

end

end A185421.P14968273295982321738

/-! ## A185421.P14155287439242259271

`A019538(n+1)/A008277(n+1)*A147315(n)`
-/

namespace A185421.P14155287439242259271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019538 (n + 1) : ℚ) / (A008277 (n + 1) : ℚ) * (A147315 n : ℚ)

end

end A185421.P14155287439242259271

/-! ## A185421.P14669685903794146842

`A048594(n+1)/A008275(n+1)*A147315(n)`
-/

namespace A185421.P14669685903794146842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048594 (n + 1) : ℚ) / (A008275 (n + 1) : ℚ) * (A147315 n : ℚ)

end

end A185421.P14669685903794146842

/-! ## A185421.P2351674749851979098

`A089231(n+1)/A001263(n+1)*A147315(n)`
-/

namespace A185421.P2351674749851979098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089231 (n + 1) : ℚ) / (A001263 (n + 1) : ℚ) * (A147315 n : ℚ)

end

end A185421.P2351674749851979098

/-!
# A185422: Forests of k increasing plane unary-binary trees on n nodes. Generalized Stirling numbers of the second kind associated with A185415.

The programs for A185422, there is no canonical definition to state claims against.
-/

/-! ## A185422.P10190815149214511372

`A185423(n+1)/A166350(n+1)`
-/

namespace A185422.P10190815149214511372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185423 (n + 1) : ℚ) / (A166350 (n + 1) : ℚ)

end

end A185422.P10190815149214511372

/-! ## A185422.P6508592719807962623

`A185423(n+1)/A002260(n+1)!`
-/

namespace A185422.P6508592719807962623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185423 (n + 1) : ℚ) / (Nat.factorial (A002260 (n + 1)).toNat : ℚ)

end

end A185422.P6508592719807962623

/-! ## A185422.P2617658922811323260

`A185423(n+1)/A233543(A080036(n))`
-/

namespace A185422.P2617658922811323260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185423 (n + 1) : ℚ) / (A233543 (A080036 n).toNat : ℚ)

end

end A185422.P2617658922811323260

/-! ## A185422.P13621259897051444168

`A185423(n+1)/A233543(A014132(n+1))`
-/

namespace A185422.P13621259897051444168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185423 (n + 1) : ℚ) / (A233543 (A014132 (n + 1)).toNat : ℚ)

end

end A185422.P13621259897051444168

/-! ## A185422.P15139405322433822326

`A185423(n+1)/A004736(A038722(n+1))!`
-/

namespace A185422.P15139405322433822326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185423 (n + 1) : ℚ) / (Nat.factorial (A004736 (A038722 (n + 1)).toNat).toNat : ℚ)

end

end A185422.P15139405322433822326

/-!
# A185423: Ordered forests of k increasing plane unary-binary trees with n nodes.

The programs for A185423, there is no canonical definition to state claims against.
-/

/-! ## A185423.P15514574260577531472

`A166350(n+1)*A185422(n+1)`
-/

namespace A185423.P15514574260577531472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166350 (n + 1) * A185422 (n + 1)

end

end A185423.P15514574260577531472

/-! ## A185423.P15455950352226566509

`A185422(n+1)*A233543(comp[∑[n]])`
-/

namespace A185423.P15455950352226566509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185422 (n + 1) * A233543 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A185423.P15455950352226566509

/-! ## A185423.P14800177067804517234

`A002260(n+1)!*A185422(n+1)`
-/

namespace A185423.P14800177067804517234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002260 (n + 1)).toNat : ℤ) * A185422 (n + 1)

end

end A185423.P14800177067804517234

/-! ## A185423.P9751877662038775636

`A066667(A112367(n))*A185422(n+1)`
-/

namespace A185423.P9751877662038775636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 (A112367 n).toNat * A185422 (n + 1)

end

end A185423.P9751877662038775636

/-! ## A185423.P1231774482575592782

`A000005(A059268(n))!*A185422(n+1)`
-/

namespace A185423.P1231774482575592782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000005 (A059268 n).toNat).toNat : ℤ) * A185422 (n + 1)

end

end A185423.P1231774482575592782

/-!
# A185425: Bisection of A185424. Numerators of even-indexed generalized Bernoulli numbers associated with the zigzag numbers A000111.

The programs for A185425, there is no canonical definition to state claims against.
-/

/-! ## A185425.P9734553098371279145

`A185424(2*n)`
-/

namespace A185425.P9734553098371279145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185424 (2 * n)

end

end A185425.P9734553098371279145

/-! ## A185425.P14016940796251375106

`abs(A185424(n+n))`
-/

namespace A185425.P14016940796251375106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185424 (n + n)|

end

end A185425.P14016940796251375106

/-! ## A185425.P15130415797650272607

`or(1, A185424(A005843(n)))`
-/

namespace A185425.P15130415797650272607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185424 (A005843 n).toNat)

end

end A185425.P15130415797650272607

/-! ## A185425.P4616899853011502407

`or(1, A185424(A276463(n)))`
-/

namespace A185425.P4616899853011502407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185424 (A276463 n).toNat)

end

end A185425.P4616899853011502407

/-! ## A185425.P3566721350305560214

`or(1, A185424(A322131(n)))`
-/

namespace A185425.P3566721350305560214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A185424 (A322131 n).toNat)

end

end A185425.P3566721350305560214

/-!
# A185426: 

The programs for A185426, there is no canonical definition to state claims against.
-/

/-! ## A185426.P12956626075272191450

`A185435((n+1)²+n²)`
-/

namespace A185426.P12956626075272191450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185435 ((n + 1) ^ 2 + n ^ 2)

end

end A185426.P12956626075272191450

/-!
# A185427: Number of (n+2)X3 0..7 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185427, there is no canonical definition to state claims against.
-/

/-! ## A185427.P3791849015269105505

`A185435(∑[n]+1)`
-/

namespace A185427.P3791849015269105505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185435 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185427.P3791849015269105505

/-! ## A185427.P5586538868372678254

`record[A010054(n)*A185435(n+1)]`
-/

namespace A185427.P5586538868372678254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185427.P5586538868372678254

/-! ## A185427.P12880876056346815367

`record[root(A185435(n+1), A013610(n))]`
-/

namespace A185427.P12880876056346815367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185435 (n + 1) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185427.P12880876056346815367

/-! ## A185427.P929353748175570951

`record[gcd(A002262(n), A185435(n+1))]`
-/

namespace A185427.P929353748175570951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185435 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185427.P929353748175570951

/-! ## A185427.P4875641004075708819

`record[A185435(n+1)/A019538(n+1)]`
-/

namespace A185427.P4875641004075708819
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185435 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185427.P4875641004075708819

/-!
# A185428: Number of (n+2)X4 0..7 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185428, there is no canonical definition to state claims against.
-/

/-! ## A185428.P15393463788105356086

`A185435(∑[n+1]+2)`
-/

namespace A185428.P15393463788105356086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185435 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185428.P15393463788105356086

/-!
# A185429: 

The programs for A185429, there is no canonical definition to state claims against.
-/

/-! ## A185429.P11555867407440205182

`A185435(∑[n+2]+4)`
-/

namespace A185429.P11555867407440205182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185435 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185429.P11555867407440205182

/-!
# A185431: 

The programs for A185431, there is no canonical definition to state claims against.
-/

/-! ## A185431.P11423505329757271260

`A185435(A167499(n+3))`
-/

namespace A185431.P11423505329757271260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185435 (A167499 (n + 3)).toNat

end

end A185431.P11423505329757271260

/-! ## A185431.P1014852728096610242

`A185435(A046691(n+3))`
-/

namespace A185431.P1014852728096610242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185435 (A046691 (n + 3)).toNat

end

end A185431.P1014852728096610242

/-!
# A185432: 

The programs for A185432, there is no canonical definition to state claims against.
-/

/-! ## A185432.P336356446695516064

`A185435(A052905(n+3))`
-/

namespace A185432.P336356446695516064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185435 (A052905 (n + 3)).toNat

end

end A185432.P336356446695516064

/-!
# A185433: 

The programs for A185433, there is no canonical definition to state claims against.
-/

/-! ## A185433.P459768808455344735

`A185435(A055999(n+4))`
-/

namespace A185433.P459768808455344735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185435 (A055999 (n + 4)).toNat

end

end A185433.P459768808455344735

/-!
# A185436: The minimum number of colors required to color an n-bead bracelet so that each bead can be uniquely identified by its color and the color(s) of its two immediately-adjacent neighbors.

The programs for A185436, there is no canonical definition to state claims against.
-/

/-! ## A185436.P13552852772110054174

`∑[char[A098757(n)-(n+1)]]`
-/

namespace A185436.P13552852772110054174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098757 n - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185436.P13552852772110054174

/-! ## A185436.P15612379458411263596

`A230418(ceil(sqrt(A164028(n+1))))`
-/

namespace A185436.P15612379458411263596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 ⌈Real.sqrt (A164028 (n + 1) : ℝ)⌉.toNat

end

end A185436.P15612379458411263596

/-! ## A185436.P2396816212496681278

`∑[char[A281487(A325973(n+1))]]`
-/

namespace A185436.P2396816212496681278
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281487 (A325973 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185436.P2396816212496681278

/-! ## A185436.P5757608753809065439

`∑[char[n*A018252(A000213(n))]]`
-/

namespace A185436.P5757608753809065439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A018252 (A000213 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185436.P5757608753809065439

/-! ## A185436.P12948460869962059164

`∑[char[A045925(n)*A057944(n)]]`
-/

namespace A185436.P12948460869962059164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 n * A057944 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185436.P12948460869962059164

/-! ## A185436.P8388895086473890065

`∑[char[A057944(n)*A214663(n)]]`
-/

namespace A185436.P8388895086473890065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n * A214663 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185436.P8388895086473890065

/-! ## A185436.P1546843869059454059

`A053165(a(n-1))+char[A098757(n)-(n+1)]` with `a(0)=1`
-/

namespace A185436.P1546843869059454059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098757 n - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053165 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A185436.P1546843869059454059

/-! ## A185436.P17520025837466708363

`A000030(a(n-1))+char[A098757(n)-(n+1)]` with `a(0)=1, a(1)=2`
-/

namespace A185436.P17520025837466708363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098757 n - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000030 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A185436.P17520025837466708363

/-! ## A185436.P13970537083550376622

`A004182(a(n-1))+char[A098757(n)-(n+1)]` with `a(0)=1, a(1)=2`
-/

namespace A185436.P13970537083550376622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098757 n - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A004182 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A185436.P13970537083550376622

/-! ## A185436.P1225805856620365584

`A282711(A282711(A062028(A176995(n+1))))`
-/

namespace A185436.P1225805856620365584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282711 (A282711 (A062028 (A176995 (n + 1)).toNat).toNat).toNat

end

end A185436.P1225805856620365584

/-!
# A185437: The least number of colors required to color an n-bead necklace so that each bead can be identified.

The programs for A185437, the canonical program `A185437.P2216124872630856523` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185437 has offset 1).

The definition of A185437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185437.P2216124872630856523

`a(ceil(5/n))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A185437

/-- `a(ceil(5/n))` -/
def P2216124872630856523.Spec : Prop :=
  ∀ n, (P2216124872630856523.a n : ℤ) = A185437 (n + 1)

theorem P2216124872630856523.correct : P2216124872630856523.Spec := by
  intro n
  simp only [A185437, Nat.add_sub_cancel]

end A185437

/-!
# A185438: a(n) = 8*n^2 - 2*n + 1.

The programs for A185438, the canonical program `A185438.P17362725107201576435` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185438 has offset 0).

The definition of A185438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n²-2*n+1` (program `A185438.P17362725107201576435`, by `A185438.P17362725107201576435.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A185438.P1750078292022986218

`1-2*n+8*n²`
-/

namespace A185438.P1750078292022986218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ) + (8 * n ^ 2 : ℤ)

end

end A185438.P1750078292022986218

namespace A185438

/-- `1-2*n+8*n²` -/
def P1750078292022986218.Spec : Prop :=
  ∀ n, P1750078292022986218.a n = A185438 n

theorem P1750078292022986218.correct : P1750078292022986218.Spec := by
  intro n
  simp only [A185438, Nat.add_sub_cancel, A185438.P1750078292022986218.a, A185438.P17362725107201576435.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185438

/-! ## A185438.P17362725107201576435

`8*n²-2*n+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A185438

/-- `8*n²-2*n+1` -/
def P17362725107201576435.Spec : Prop :=
  ∀ n, P17362725107201576435.a n = A185438 n

theorem P17362725107201576435.correct : P17362725107201576435.Spec := by
  intro n
  simp only [A185438]

end A185438

/-! ## A185438.P16070835175699702367

`or(1, C(4*n, 2))`
-/

namespace A185438.P16070835175699702367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.choose (4 * n) 2)

end

end A185438.P16070835175699702367

namespace A185438

/-- `or(1, C(4*n, 2))` -/
def P16070835175699702367.Spec : Prop :=
  ∀ n, (P16070835175699702367.a n : ℤ) = A185438 n

end A185438

/-! ## A185438.P11810474620657923734

`xor(1, C(4*n, 2))`
-/

namespace A185438.P11810474620657923734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose (4 * n) 2)

end

end A185438.P11810474620657923734

namespace A185438

/-- `xor(1, C(4*n, 2))` -/
def P11810474620657923734.Spec : Prop :=
  ∀ n, (P11810474620657923734.a n : ℤ) = A185438 n

end A185438

/-! ## A185438.P10147807880566699867

`∑[a(n-1)+16]` with `a(0)=1, a(1)=6`
-/

namespace A185438.P10147807880566699867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185438.P10147807880566699867

namespace A185438

/-- `∑[a(n-1)+16]` -/
def P10147807880566699867.Spec : Prop :=
  ∀ n, (P10147807880566699867.a n : ℤ) = A185438 n

end A185438

/-! ## A185438.P4525030446096632612

`or(1, 2*((2*n)²-n))`
-/

namespace A185438.P4525030446096632612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * (((2 * n) ^ 2 : ℤ) - (n : ℤ)))

end

end A185438.P4525030446096632612

namespace A185438

/-- `or(1, 2*((2*n)²-n))` -/
def P4525030446096632612.Spec : Prop :=
  ∀ n, P4525030446096632612.a n = A185438 n

end A185438

/-! ## A185438.P2959227994546822845

`xor(1, 2*((2*n)²-n))`
-/

namespace A185438.P2959227994546822845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 * (((2 * n) ^ 2 : ℤ) - (n : ℤ)))

end

end A185438.P2959227994546822845

namespace A185438

/-- `xor(1, 2*((2*n)²-n))` -/
def P2959227994546822845.Spec : Prop :=
  ∀ n, P2959227994546822845.a n = A185438 n

end A185438

/-! ## A185438.P2233263714209035922

`record[lcm(n+1, 2*n)-(2*n+n-1)]`
-/

namespace A185438.P2233263714209035922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n) : ℤ) - ((2 * n : ℤ) + ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185438.P2233263714209035922

namespace A185438

/-- `record[lcm(n+1, 2*n)-(2*n+n-1)]` -/
def P2233263714209035922.Spec : Prop :=
  ∀ n, P2233263714209035922.a n = A185438 n

end A185438

/-! ## A185438.P3815006616098396335

`record[C(A019425(n), 2)+1]`
-/

namespace A185438.P3815006616098396335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A019425 n).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185438.P3815006616098396335

namespace A185438

/-- `record[C(A019425(n), 2)+1]` -/
def P3815006616098396335.Spec : Prop :=
  ∀ n, (P3815006616098396335.a n : ℤ) = A185438 n

end A185438

/-! ## A185438.P4787675218629852631

`(A143856(n+1)+n+1)/2`
-/

namespace A185438.P4787675218629852631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143856 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A185438.P4787675218629852631

namespace A185438

/-- `(A143856(n+1)+n+1)/2` -/
def P4787675218629852631.Spec : Prop :=
  ∀ n, P4787675218629852631.a n = (A185438 n : ℚ)

end A185438

/-! ## A185438.P14499116729727282733

`A017138(n)%A181890(n)`
-/

namespace A185438.P14499116729727282733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017138 n) (A181890 n)

end

end A185438.P14499116729727282733

namespace A185438

/-- `A017138(n)%A181890(n)` -/
def P14499116729727282733.Spec : Prop :=
  ∀ n, P14499116729727282733.a n = A185438 n

end A185438

/-! ## A185438.P17210494646085971748

`A381424(n)%A068379(n+1)`
-/

namespace A185438.P17210494646085971748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381424 n) (A068379 (n + 1))

end

end A185438.P17210494646085971748

namespace A185438

/-- `A381424(n)%A068379(n+1)` -/
def P17210494646085971748.Spec : Prop :=
  ∀ n, P17210494646085971748.a n = A185438 n

end A185438

/-! ## A185438.P12685089798246731045

`record[C(A271478(n), 2)+1]`
-/

namespace A185438.P12685089798246731045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A271478 n).toNat 2 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185438.P12685089798246731045

namespace A185438

/-- `record[C(A271478(n), 2)+1]` -/
def P12685089798246731045.Spec : Prop :=
  ∀ n, (P12685089798246731045.a n : ℤ) = A185438 n

end A185438

/-! ## A185438.P11840423248870186577

`record[(n+1)*A059029(n)+1]`
-/

namespace A185438.P11840423248870186577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A059029 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185438.P11840423248870186577

namespace A185438

/-- `record[(n+1)*A059029(n)+1]` -/
def P11840423248870186577.Spec : Prop :=
  ∀ n, P11840423248870186577.a n = A185438 n

end A185438

/-! ## A185438.P14778937524383977483

`A193867(A004277(n))`
-/

namespace A185438.P14778937524383977483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (A004277 n).toNat

end

end A185438.P14778937524383977483

namespace A185438

/-- `A193867(A004277(n))` -/
def P14778937524383977483.Spec : Prop :=
  ∀ n, P14778937524383977483.a n = A185438 n

end A185438

/-! ## A185438.P2649713303061845392

`A193867(A004275(n+1))`
-/

namespace A185438.P2649713303061845392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (A004275 (n + 1)).toNat

end

end A185438.P2649713303061845392

namespace A185438

/-- `A193867(A004275(n+1))` -/
def P2649713303061845392.Spec : Prop :=
  ∀ n, P2649713303061845392.a n = A185438 n

end A185438

/-! ## A185438.P12963841054646750844

`A130883(2*n)`
-/

namespace A185438.P12963841054646750844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 (2 * n)

end

end A185438.P12963841054646750844

namespace A185438

/-- `A130883(2*n)` -/
def P12963841054646750844.Spec : Prop :=
  ∀ n, P12963841054646750844.a n = A185438 n

end A185438

/-! ## A185438.P11920535587532452252

`(A054554(2*n+1)+1)/2`
-/

namespace A185438.P11920535587532452252
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054554 (2 * n + 1) + 1 : ℚ) / 2

end

end A185438.P11920535587532452252

namespace A185438

/-- `(A054554(2*n+1)+1)/2` -/
def P11920535587532452252.Spec : Prop :=
  ∀ n, P11920535587532452252.a n = (A185438 n : ℚ)

end A185438

/-! ## A185438.P8220167539656301538

`∩[A193867(n+1), A130883(n)]`
-/

namespace A185438.P8220167539656301538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130883 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A185438.P8220167539656301538

namespace A185438

/-- `∩[A193867(n+1), A130883(n)]` -/
def P8220167539656301538.Spec : Prop :=
  ∀ n, (P8220167539656301538.a n : ℤ) = A185438 n

end A185438

/-! ## A185438.P17676029791814573429

`A128918(4*n)`
-/

namespace A185438.P17676029791814573429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128918 (4 * n)

end

end A185438.P17676029791814573429

namespace A185438

/-- `A128918(4*n)` -/
def P17676029791814573429.Spec : Prop :=
  ∀ n, P17676029791814573429.a n = A185438 n

end A185438

/-!
# A185439: Emirp gaps: Differences between consecutive emirps.

The programs for A185439, there is no canonical definition to state claims against.
-/

/-! ## A185439.P9014068242034960364

`A006567(n+2)-A006567(n+1)`
-/

namespace A185439.P9014068242034960364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 2) - A006567 (n + 1)

end

end A185439.P9014068242034960364

/-! ## A185439.P4409224740767594403

`Δ[A006567(n+1)]`
-/

namespace A185439.P4409224740767594403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185439.P4409224740767594403

/-! ## A185439.P2971712750013460018

`A006567(A020725(n+1))%A006567(n+1)`
-/

namespace A185439.P2971712750013460018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006567 (A020725 (n + 1)).toNat) (A006567 (n + 1))

end

end A185439.P2971712750013460018

/-! ## A185439.P14782003605580239597

`A006567(A000027(n+2))%A006567(n+1)`
-/

namespace A185439.P14782003605580239597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006567 (A000027 (n + 2)).toNat) (A006567 (n + 1))

end

end A185439.P14782003605580239597

/-! ## A185439.P8568894281182883896

`abs(Δ[A006567(A008619(2*n))])`
-/

namespace A185439.P8568894281182883896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A185439.P8568894281182883896

/-! ## A185439.P7314133936334488883

`A006567(A008619(2*n+3))%A006567(n+1)`
-/

namespace A185439.P7314133936334488883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006567 (A008619 (2 * n + 3)).toNat) (A006567 (n + 1))

end

end A185439.P7314133936334488883

/-! ## A185439.P15272543283224437076

`Δ[A000203(A006567(-xor(n, -1)))]`
-/

namespace A185439.P15272543283224437076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A006567 (-Int.xor (n : ℤ) (-1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185439.P15272543283224437076

/-! ## A185439.P345662124343256715

`Δ[A000040(A156793(n+1))]`
-/

namespace A185439.P345662124343256715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185439.P345662124343256715

/-! ## A185439.P7767621766119073093

`Δ[p?[A068893(n+1)]]`
-/

namespace A185439.P7767621766119073093
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185439.P7767621766119073093

/-! ## A185439.P2078893326908838266

`Δ[p?[A109019(n+1)]]`
-/

namespace A185439.P2078893326908838266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185439.P2078893326908838266

/-! ## A185439.P17996125495434767915

`Δ[p?[A350867(n+1)]]`
-/

namespace A185439.P17996125495434767915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350867 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A185439.P17996125495434767915

/-!
# A185440: Numbers k such that the decimal digits of k + reverse(k) are 0 or 1.

The programs for A185440, there is no canonical definition to state claims against.
-/

/-! ## A185440.P18362812628513715077

`eq[1, A051801(A036839(n))]`
-/

namespace A185440.P18362812628513715077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A036839 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185440.P18362812628513715077

/-! ## A185440.P2892430401469531352

`eq[0, A004176(A056964(n))]`
-/

namespace A185440.P2892430401469531352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A185440.P2892430401469531352

/-! ## A185440.P11655974673382260964

`eq[A043545(n), A054055(A056964(n))]`
-/

namespace A185440.P11655974673382260964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A056964 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185440.P11655974673382260964

/-! ## A185440.P9059927523197583539

`eq[A051801(A056964(n)), A266678(n)]`
-/

namespace A185440.P9059927523197583539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185440.P9059927523197583539

/-! ## A185440.P11116774590046865908

`eq[A051801(A056964(n)), A267871(n)]`
-/

namespace A185440.P11116774590046865908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 (A056964 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267871 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185440.P11116774590046865908

/-!
# A185441: Records in A185439; record gaps between consecutive emirps.

The programs for A185441, there is no canonical definition to state claims against.
-/

/-! ## A185441.P500080186072942809

`record[A185439(n+1)]`
-/

namespace A185441.P500080186072942809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185441.P500080186072942809

/-! ## A185441.P18432482905903009319

`record[Δ[A006567(n+1)]]`
-/

namespace A185441.P18432482905903009319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185441.P18432482905903009319

/-! ## A185441.P13717798029886201348

`record[A006567(n+2)-A006567(n+1)]`
-/

namespace A185441.P13717798029886201348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 2) - A006567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185441.P13717798029886201348

/-! ## A185441.P12888967846616988665

`record[Δ[A000040(A156793(n+1))]]`
-/

namespace A185441.P12888967846616988665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A156793 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185441.P12888967846616988665

/-! ## A185441.P15109658144098245884

`record[Δ[p?[A068893(n+1)]]]`
-/

namespace A185441.P15109658144098245884
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185441.P15109658144098245884

/-!
# A185445: Smallest number having exactly t divisors, where t is the n-th triprime (A014612).

The programs for A185445, there is no canonical definition to state claims against.
-/

/-! ## A185445.P5754757989523641591

`A005179(A014612(n+1))`
-/

namespace A185445.P5754757989523641591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (A014612 (n + 1)).toNat

end

end A185445.P5754757989523641591

/-! ## A185445.P8077996938839794752

`A005179(eq[3, ∑{e}[n+1, #]]+1)`
-/

namespace A185445.P8077996938839794752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A185445.P8077996938839794752

/-! ## A185445.P6576532990519889543

`A005179(Δ[A110209(n)])`
-/

namespace A185445.P6576532990519889543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (f1 (n + 1) - f1 n).toNat

end

end A185445.P6576532990519889543

/-! ## A185445.P17890888494230045378

`A005179(eq[3, A001222(n+1)]+1)`
-/

namespace A185445.P17890888494230045378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A185445.P17890888494230045378

/-!
# A185446: Least prime such that whenever 2*a(n) = p+q with p and q prime, one has p,q > prime(n).

The programs for A185446, there is no canonical definition to state claims against.
-/

/-! ## A185446.P7644662818729750562

`A185447(2^(n+1)-1)`
-/

namespace A185446.P7644662818729750562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185447 (2 ^ (n + 1) - 1)

end

end A185446.P7644662818729750562

/-! ## A185446.P4176451767634530630

`A185448(A080513(n^A065648(n)))`
-/

namespace A185446.P4176451767634530630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185448 (A080513 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A065648 n : ℤ))).toNat).toNat

end

end A185446.P4176451767634530630

/-! ## A185446.P17028935554055339409

`A185448(A065648(n)²*A080513(n))`
-/

namespace A185446.P17028935554055339409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185448 (A065648 n ^ 2 * A080513 n).toNat

end

end A185446.P17028935554055339409

/-! ## A185446.P12249768370243035772

`A185448(A065648(n)*A080513(n)*A065648(n))`
-/

namespace A185446.P12249768370243035772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185448 (A065648 n * A080513 n * A065648 n).toNat

end

end A185446.P12249768370243035772

/-! ## A185446.P6044535145292082691

`A185448(∑[A323169(n+1)²])`
-/

namespace A185446.P6044535145292082691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323169 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185448 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A185446.P6044535145292082691

/-!
# A185448: Values occurring in A185446.

The programs for A185448, there is no canonical definition to state claims against.
-/

/-! ## A185448.P13552906766201153174

`record[A185446(n+1)-char[2]]`
-/

namespace A185448.P13552906766201153174
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185446 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185448.P13552906766201153174

/-! ## A185448.P13957919795416187812

`record[A185446(floor(n/(xor(n, n+1)+1))+1)]`
-/

namespace A185448.P13957919795416187812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185446 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185448.P13957919795416187812

/-! ## A185448.P3164629079569598620

`record[A185446(A008350(n))]`
-/

namespace A185448.P3164629079569598620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185446 (A008350 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185448.P3164629079569598620

/-! ## A185448.P7440542978975696316

`record[A185446(A052938(n))]`
-/

namespace A185448.P7440542978975696316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185446 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185448.P7440542978975696316

/-! ## A185448.P8473949490699572807

`record[A185446(A053632(n))]`
-/

namespace A185448.P8473949490699572807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185446 (A053632 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185448.P8473949490699572807

/-!
# A185449: Index at which A185448(n) occurs in A185446 for the first time.

The programs for A185449, there is no canonical definition to state claims against.
-/

/-! ## A185449.P924529405733127466

`A061395(record[A092938(n+1)])`
-/

namespace A185449.P924529405733127466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092938 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A185449.P924529405733127466

/-! ## A185449.P9230770880028488878

`record[A377758(A027697(n+1))]`
-/

namespace A185449.P9230770880028488878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377758 (A027697 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185449.P9230770880028488878

/-! ## A185449.P13475333615708471282

`A353721(n+3)-A035263(A018040(n))`
-/

namespace A185449.P13475333615708471282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353721 (n + 3) - A035263 (A018040 n).toNat

end

end A185449.P13475333615708471282

/-!
# A185451: Maximal cycle length associated with the cycles mentioned in A185450.

The programs for A185451, there is no canonical definition to state claims against.
-/

/-! ## A185451.P17966715231314474339

`A275719(3*n+1)+A127441(2*n+3)`
-/

namespace A185451.P17966715231314474339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275719 (3 * n + 1) + A127441 (2 * n + 3)

end

end A185451.P17966715231314474339

/-!
# A185452: Image of n under the map n -> n/2 if n even, (5*n+1)/2 if n odd.

The programs for A185452, the canonical program `A185452.P5772364237701314389` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185452 has offset 0).

The definition of A185452 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185452.P5772364237701314389

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=8`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A185452

/-- `2*a(n-2)-a(n-4)` -/
def P5772364237701314389.Spec : Prop :=
  ∀ n, P5772364237701314389.a n = A185452 n

theorem P5772364237701314389.correct : P5772364237701314389.Spec := by
  intro n
  simp only [A185452]

end A185452

/-! ## A185452.P7744609142342522284

`(6*n+1-(4*n+1)*(-1)^n)/4`
-/

namespace A185452.P7744609142342522284
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((6 * n + 1 : ℤ) - (4 * n + 1 : ℤ) * (-1) ^ n : ℚ) / 4

end

end A185452.P7744609142342522284

namespace A185452

/-- `(6*n+1-(4*n+1)*(-1)^n)/4` -/
def P7744609142342522284.Spec : Prop :=
  ∀ n, P7744609142342522284.a n = (A185452 n : ℚ)

theorem P7744609142342522284.correct : P7744609142342522284.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A185452, Nat.add_sub_cancel, A185452.P7744609142342522284.a, A185452.P5772364237701314389.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h2 := ih (m + 2) (by omega)
      have h4 := ih m (by omega)
      simp only [A185452, Nat.add_sub_cancel, A185452.P7744609142342522284.a, A185452.P5772364237701314389.a, SequenceMachineLib.memo_apply] at h2 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 2 = m + 2 by omega, show m + 4 - 4 = m by omega, show m + 2 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h2 h4 ⊢
      rw [← h2, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A185452

/-! ## A185452.P15411278589319290951

`lcm(2, n)-∑[n*(-1)^n]`
-/

namespace A185452.P15411278589319290951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A185452.P15411278589319290951

namespace A185452

/-- `lcm(2, n)-∑[n*(-1)^n]` -/
def P15411278589319290951.Spec : Prop :=
  ∀ n, P15411278589319290951.a n = A185452 n

end A185452

/-! ## A185452.P9228461279823186618

`((2*n)^3)%(4*n+1)`
-/

namespace A185452.P9228461279823186618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3 % (4 * n + 1)

end

end A185452.P9228461279823186618

namespace A185452

/-- `((2*n)^3)%(4*n+1)` -/
def P9228461279823186618.Spec : Prop :=
  ∀ n, (P9228461279823186618.a n : ℤ) = A185452 n

end A185452

/-! ## A185452.P2821065544274656285

`ogf((3x+x^2+2x^3)/(1-2x^2+x^4))`
-/

namespace A185452.P2821065544274656285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1, 2] [1, 0, -2, 0, 1] n

end

end A185452.P2821065544274656285

namespace A185452

/-- `ogf((3x+x^2+2x^3)/(1-2x^2+x^4))` -/
def P2821065544274656285.Spec : Prop :=
  ∀ n, P2821065544274656285.a n = A185452 n

end A185452

/-! ## A185452.P12048607028518052690

`a(n-2)+5^(n%2)` with `a(0)=0, a(1)=3`
-/

namespace A185452.P12048607028518052690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  a (n - 2) + 5 ^ (n % 2)

end

end A185452.P12048607028518052690

namespace A185452

/-- `a(n-2)+5^(n%2)` -/
def P12048607028518052690.Spec : Prop :=
  ∀ n, (P12048607028518052690.a n : ℤ) = A185452 n

end A185452

/-! ## A185452.P10670135668399121788

`gcd(ceil(5*n/2), ∑[ceil(5*n/2)])`
-/

namespace A185452.P10670135668399121788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * ((n : ℚ) / 2)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌈5 * ((n : ℚ) / 2)⌉ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185452.P10670135668399121788

namespace A185452

/-- `gcd(ceil(5*n/2), ∑[ceil(5*n/2)])` -/
def P10670135668399121788.Spec : Prop :=
  ∀ n, (P10670135668399121788.a n : ℤ) = A185452 n

end A185452

/-! ## A185452.P16142423567948478264

`∑[6-a(n-1)]-a(n-1)` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A185452.P16142423567948478264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n f1 =>
  6 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A185452.P16142423567948478264

namespace A185452

/-- `∑[6-a(n-1)]-a(n-1)` -/
def P16142423567948478264.Spec : Prop :=
  ∀ n, P16142423567948478264.a n = A185452 n

end A185452

/-! ## A185452.P1166406002874477529

`a(n-2)+a(n-2)-a(n-4)` with `a(0)=0, a(1)=3, a(2)=1, a(3)=8`
-/

namespace A185452.P1166406002874477529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 1, 8] fun n a =>
  a (n - 2) + (a (n - 2) - a (n - 4))

end

end A185452.P1166406002874477529

namespace A185452

/-- `a(n-2)+a(n-2)-a(n-4)` -/
def P1166406002874477529.Spec : Prop :=
  ∀ n, P1166406002874477529.a n = A185452 n

theorem P1166406002874477529.correct : P1166406002874477529.Spec := by
  intro n
  simp only [A185452, Nat.add_sub_cancel, A185452.P1166406002874477529.a, A185452.P5772364237701314389.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A185452

/-! ## A185452.P1415012484210608504

`a(n-2)-5/(a(n-3)-a(n-1))` with `a(0)=0, a(1)=3, a(2)=1`
-/

namespace A185452.P1415012484210608504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 3, 1] fun n a =>
  a (n - 2) - 5 / (a (n - 3) - a (n - 1))

end

end A185452.P1415012484210608504

namespace A185452

/-- `a(n-2)-5/(a(n-3)-a(n-1))` -/
def P1415012484210608504.Spec : Prop :=
  ∀ n, P1415012484210608504.a n = (A185452 n : ℚ)

end A185452

/-! ## A185452.P15809723071593090102

`ceil(n/2*A010686(n))`
-/

namespace A185452.P15809723071593090102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 * (A010686 n : ℚ)⌉

end

end A185452.P15809723071593090102

namespace A185452

/-- `ceil(n/2*A010686(n))` -/
def P15809723071593090102.Spec : Prop :=
  ∀ n, P15809723071593090102.a n = A185452 n

end A185452

/-! ## A185452.P3904565813194948851

`floor((2*n+1)*and(5, A004767(n))/4)`
-/

namespace A185452.P3904565813194948851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n + 1 : ℤ) * Int.land 5 (A004767 n) : ℚ) / 4⌋

end

end A185452.P3904565813194948851

namespace A185452

/-- `floor((2*n+1)*and(5, A004767(n))/4)` -/
def P3904565813194948851.Spec : Prop :=
  ∀ n, P3904565813194948851.a n = A185452 n

end A185452

/-! ## A185452.P6923820739973117871

`A109043(n)+A001057(n)`
-/

namespace A185452.P6923820739973117871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n + A001057 n

end

end A185452.P6923820739973117871

namespace A185452

/-- `A109043(n)+A001057(n)` -/
def P6923820739973117871.Spec : Prop :=
  ∀ n, P6923820739973117871.a n = A185452 n

end A185452

/-! ## A185452.P6725260455110554323

`A181983(n)+A007494(n)`
-/

namespace A185452.P6725260455110554323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181983 n + A007494 n

end

end A185452.P6725260455110554323

namespace A185452

/-- `A181983(n)+A007494(n)` -/
def P6725260455110554323.Spec : Prop :=
  ∀ n, P6725260455110554323.a n = A185452 n

end A185452

/-! ## A185452.P11341177823721559266

`A007494(n)-A038608(n)`
-/

namespace A185452.P11341177823721559266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n - A038608 n

end

end A185452.P11341177823721559266

namespace A185452

/-- `A007494(n)-A038608(n)` -/
def P11341177823721559266.Spec : Prop :=
  ∀ n, P11341177823721559266.a n = A185452 n

end A185452

/-! ## A185452.P14424653462775640769

`A066104(n)-A097140(n)`
-/

namespace A185452.P14424653462775640769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n - A097140 n

end

end A185452.P14424653462775640769

namespace A185452

/-- `A066104(n)-A097140(n)` -/
def P14424653462775640769.Spec : Prop :=
  ∀ n, P14424653462775640769.a n = A185452 n

end A185452

/-! ## A185452.P8341106182177588630

`A165998(n)-A052938(n)`
-/

namespace A185452.P8341106182177588630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n - A052938 n

end

end A185452.P8341106182177588630

namespace A185452

/-- `A165998(n)-A052938(n)` -/
def P8341106182177588630.Spec : Prop :=
  ∀ n, P8341106182177588630.a n = A185452 n

end A185452

/-! ## A185452.P3752715086911541038

`A109043(n)-A130472(n)`
-/

namespace A185452.P3752715086911541038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n - A130472 n

end

end A185452.P3752715086911541038

namespace A185452

/-- `A109043(n)-A130472(n)` -/
def P3752715086911541038.Spec : Prop :=
  ∀ n, P3752715086911541038.a n = A185452 n

end A185452

/-! ## A185452.P1970381374024150097

`A294178(n)-A028242(n)`
-/

namespace A185452.P1970381374024150097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294178 n - A028242 n

end

end A185452.P1970381374024150097

namespace A185452

/-- `A294178(n)-A028242(n)` -/
def P1970381374024150097.Spec : Prop :=
  ∀ n, P1970381374024150097.a n = A185452 n

end A185452

/-! ## A185452.P17641190372047674261

`A081348(n)-A263511(n)`
-/

namespace A185452.P17641190372047674261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081348 n - A263511 n

end

end A185452.P17641190372047674261

namespace A185452

/-- `A081348(n)-A263511(n)` -/
def P17641190372047674261.Spec : Prop :=
  ∀ n, P17641190372047674261.a n = A185452 n

end A185452

/-!
# A185453: Trajectory of 1 under repeated application of the map in A185452.

The programs for A185453, the canonical program `A185453.P6806885892327248212` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185453 has offset 1).

The definition of A185453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185453.P6806885892327248212

`a(n-5)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=4, a(4)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A185453

/-- `a(n-5)` -/
def P6806885892327248212.Spec : Prop :=
  ∀ n, (P6806885892327248212.a n : ℤ) = A185453 (n + 1)

theorem P6806885892327248212.correct : P6806885892327248212.Spec := by
  intro n
  simp only [A185453, Nat.add_sub_cancel]

end A185453

/-!
# A185454: Trajectory of 5 under repeated application of the map in A185452.

The programs for A185454, the canonical program `A185454.P1877913815039936376` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185454 has offset 1).

The definition of A185454 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A185454.P1877913815039936376

`a(n-7)` with `a(0)=5, a(1)=13, a(2)=33, a(3)=83, a(4)=208, a(5)=104, a(6)=52, a(7)=26`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A185454

/-- `a(n-7)` -/
def P1877913815039936376.Spec : Prop :=
  ∀ n, (P1877913815039936376.a n : ℤ) = A185454 (n + 1)

theorem P1877913815039936376.correct : P1877913815039936376.Spec := by
  intro n
  simp only [A185454, Nat.add_sub_cancel]

end A185454

/-!
# A185455: Trajectory of 7 under repeated application of the map in A185452.

The programs for A185455, there is no canonical definition to state claims against.
-/

/-! ## A185455.P12115410942046835109

`A365991(Δ[A023551(n+2)])`
-/

namespace A185455.P12115410942046835109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365991 (f1 (n + 1) - f1 n).toNat

end

end A185455.P12115410942046835109

/-! ## A185455.P3969944808875999394

`A185452(a(n-1))` with `a(0)=7`
-/

namespace A185455.P3969944808875999394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A185452 (a (n - 1)).toNat

end

end A185455.P3969944808875999394

/-! ## A185455.P11835344399906229314

`A106611(A146951(a(n-1)))` with `a(0)=7`
-/

namespace A185455.P11835344399906229314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A106611 (A146951 (a (n - 1)).toNat).toNat

end

end A185455.P11835344399906229314

/-! ## A185455.P15727764950730555500

`A259193(lt[A259193(n), A259197(3*(n+1))])`
-/

namespace A185455.P15727764950730555500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259193 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259197 (3 * (n + 1) + 14)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259193 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A185455.P15727764950730555500

/-!
# A185456: Payphone packing sequence.

The programs for A185456, there is no canonical definition to state claims against.
-/

/-! ## A185456.P9891203396453126358

`1-and(-a(n-1), -n)` with `a(0)=1, a(1)=3`
-/

namespace A185456.P9891203396453126358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - Int.land (-a (n - 1)) (-(n : ℤ))

end

end A185456.P9891203396453126358

/-! ## A185456.P11084533502989908359

`n-or(n-1, -a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A185456.P11084533502989908359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  (n : ℤ) - Int.lor ((n : ℤ) - 1) (-a (n - 1))

end

end A185456.P11084533502989908359

/-! ## A185456.P11303262509427994558

`or(n-1, a(n-1)-1)+2` with `a(0)=1, a(1)=3`
-/

namespace A185456.P11303262509427994558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  Int.lor ((n : ℤ) - 1) (a (n - 1) - 1) + 2

end

end A185456.P11303262509427994558

/-! ## A185456.P16301431664846567110

`eq[0, a(floor(n/2)+1)%7]` with `a(0)=1, a(1)=0, a(2)=2, a(3)=0, a(4)=1`
-/

namespace A185456.P16301431664846567110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 0, 1] fun n f2 =>
  f2 (⌊(n : ℚ) / 2⌋ + 1).toNat % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A185456.P16301431664846567110

/-!
# A185457: a(n) = abs( Im((2+i)^(2^n)) ).

The programs for A185457, there is no canonical definition to state claims against.
-/

/-! ## A185457.P16924822738345739111

`record[gcd(A025480(n), A099456(n))]`
-/

namespace A185457.P16924822738345739111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025480 n) (A099456 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185457.P16924822738345739111

/-! ## A185457.P10380700423684137049

`A100686(comp[A324697(n+1)-1]+1)`
-/

namespace A185457.P10380700423684137049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324697 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100686 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A185457.P10380700423684137049

/-! ## A185457.P6810376182141377656

`gcd(A006496(A000079(n)), A072189(n))`
-/

namespace A185457.P6810376182141377656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006496 (A000079 n).toNat) (A072189 n)

end

end A185457.P6810376182141377656

/-!
# A185458: Number of (n+1)X(n+1) binary arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185458, there is no canonical definition to state claims against.
-/

/-! ## A185458.P6954877120626883538

`A185467((n+1)²+n²)`
-/

namespace A185458.P6954877120626883538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 ((n + 1) ^ 2 + n ^ 2)

end

end A185458.P6954877120626883538

/-! ## A185458.P905164354741866540

`record[A003982(n)*A185467(n+1)]`
-/

namespace A185458.P905164354741866540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A185467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185458.P905164354741866540

/-! ## A185458.P11331776261908865468

`record[gcd(A049581(n), A185467(n+1))]`
-/

namespace A185458.P11331776261908865468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A185467 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185458.P11331776261908865468

/-! ## A185458.P10120218612762590616

`A185467(A001844(n))+A180472(n)`
-/

namespace A185458.P10120218612762590616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A001844 n).toNat + A180472 n

end

end A185458.P10120218612762590616

/-! ## A185458.P12983846494983742360

`lcm(A020985(n), A185467(A001844(n)))`
-/

namespace A185458.P12983846494983742360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A185467 (A001844 n).toNat)

end

end A185458.P12983846494983742360

/-!
# A185459: Number of (n+1) X 2 binary arrays with no 2 X 2 subblock determinant equal to any horizontal or vertical neighbor 2 X 2 subblock determinant.

The programs for A185459, the canonical program `A185459.P3784510559251419402` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A185459 has offset 1).

The definition of A185459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A185459.P3784510559251419402

`a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)` with `a(0)=16, a(1)=34, a(2)=92, a(3)=218, a(4)=540`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A185459

/-- `a(n-1)+2*a(n-2)+3*a(n-3)+2*a(n-4)` -/
def P3784510559251419402.Spec : Prop :=
  ∀ n, (P3784510559251419402.a n : ℤ) = A185459 (n + 1)

theorem P3784510559251419402.correct : P3784510559251419402.Spec := by
  intro n
  simp only [A185459, Nat.add_sub_cancel]

end A185459

/-! ## A185459.P5620348114211566016

`A185467(∑[n]+1)`
-/

namespace A185459.P5620348114211566016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185459.P5620348114211566016

namespace A185459

/-- `A185467(∑[n]+1)` -/
def P5620348114211566016.Spec : Prop :=
  ∀ n, P5620348114211566016.a n = A185459 (n + 1)

end A185459

/-! ## A185459.P4703848022502247948

`lcm(2, A185467(A000124(n)))`
-/

namespace A185459.P4703848022502247948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185467 (A000124 n).toNat)

end

end A185459.P4703848022502247948

namespace A185459

/-- `lcm(2, A185467(A000124(n)))` -/
def P4703848022502247948.Spec : Prop :=
  ∀ n, (P4703848022502247948.a n : ℤ) = A185459 (n + 1)

end A185459

/-! ## A185459.P10615453178100272468

`record[A010054(n)*A185467(n+1)]`
-/

namespace A185459.P10615453178100272468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185459.P10615453178100272468

namespace A185459

/-- `record[A010054(n)*A185467(n+1)]` -/
def P10615453178100272468.Spec : Prop :=
  ∀ n, P10615453178100272468.a n = A185459 (n + 1)

end A185459

/-! ## A185459.P14515746525169109262

`record[root(A185467(n+1), A007318(n))]`
-/

namespace A185459.P14515746525169109262
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185467 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185459.P14515746525169109262

namespace A185459

/-- `record[root(A185467(n+1), A007318(n))]` -/
def P14515746525169109262.Spec : Prop :=
  ∀ n, P14515746525169109262.a n = (A185459 (n + 1) : ℝ)

end A185459

/-!
# A185460: Number of (n+1) X 3 binary arrays with no 2 X 2 subblock determinant equal to any horizontal or vertical neighbor 2 X 2 subblock determinant.

The programs for A185460, there is no canonical definition to state claims against.
-/

/-! ## A185460.P7375404433067649710

`A185467(∑[n+1]+2)`
-/

namespace A185460.P7375404433067649710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185460.P7375404433067649710

/-! ## A185460.P6730675705647945292

`lcm(2, A185467(A133263(n+1)))`
-/

namespace A185460.P6730675705647945292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185467 (A133263 (n + 1)).toNat)

end

end A185460.P6730675705647945292

/-! ## A185460.P4950367957959736215

`record[A010054(n)*A185467(n+2)]`
-/

namespace A185460.P4950367957959736215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185467 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185460.P4950367957959736215

/-! ## A185460.P6082166864667437723

`record[root(A185467(n+2), A081572(n))]`
-/

namespace A185460.P6082166864667437723
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185467 (n + 2) : ℝ) ^ (1 / (A081572 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185460.P6082166864667437723

/-! ## A185460.P10045043511894335330

`record[gcd(A002262(n), A185467(n+2))]`
-/

namespace A185460.P10045043511894335330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A185467 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185460.P10045043511894335330

/-!
# A185461: Number of (n+1) X 4 binary arrays with no 2 X 2 subblock determinant equal to any horizontal or vertical neighbor 2 X 2 subblock determinant.

The programs for A185461, there is no canonical definition to state claims against.
-/

/-! ## A185461.P14149780203855005435

`A185467(∑[n+2]+4)`
-/

namespace A185461.P14149780203855005435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185461.P14149780203855005435

/-! ## A185461.P4100160784926247155

`lcm(2, A185467(A167499(n)+n))`
-/

namespace A185461.P4100160784926247155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185467 (A167499 n + (n : ℤ)).toNat)

end

end A185461.P4100160784926247155

/-! ## A185461.P5508188821011575909

`A185467(A167499(n)+n)*A262681(n)`
-/

namespace A185461.P5508188821011575909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A167499 n + (n : ℤ)).toNat * A262681 n

end

end A185461.P5508188821011575909

/-! ## A185461.P5178754694844455921

`A185467(A167499(n)+n)+char[A185986(n+1)!]`
-/

namespace A185461.P5178754694844455921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185986 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185461.P5178754694844455921

/-! ## A185461.P11609104411411336624

`A185467(A034856(n+2))+char[49]`
-/

namespace A185461.P11609104411411336624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A185461.P11609104411411336624

/-!
# A185462: Number of (n+1)X5 binary arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185462, there is no canonical definition to state claims against.
-/

/-! ## A185462.P14303125676302445665

`A185467(A374004(n+1))`
-/

namespace A185462.P14303125676302445665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A374004 (n + 1)).toNat

end

end A185462.P14303125676302445665

/-! ## A185462.P14768531432101586702

`A185467(A052905(n)+9)`
-/

namespace A185462.P14768531432101586702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A052905 n + 9).toNat

end

end A185462.P14768531432101586702

/-! ## A185462.P12526384471154195177

`A185467(A055999(n)+10)`
-/

namespace A185462.P12526384471154195177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A055999 n + 10).toNat

end

end A185462.P12526384471154195177

/-! ## A185462.P15519930853529617817

`A185467(A167614(n+2)+1)`
-/

namespace A185462.P15519930853529617817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A167614 (n + 2) + 1).toNat

end

end A185462.P15519930853529617817

/-! ## A185462.P3202456552031780098

`A185467(Δ[A023545(n+1)-n²])`
-/

namespace A185462.P3202456552031780098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (f1 (n + 1) - f1 n).toNat

end

end A185462.P3202456552031780098

/-!
# A185463: Number of (n+1) X 6 binary arrays with no 2 X 2 subblock determinant equal to any horizontal or vertical neighbor 2 X 2 subblock determinant.

The programs for A185463, there is no canonical definition to state claims against.
-/

/-! ## A185463.P1562838553356032537

`A185467(A374005(n+1))`
-/

namespace A185463.P1562838553356032537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A374005 (n + 1)).toNat

end

end A185463.P1562838553356032537

/-! ## A185463.P3499751159731013078

`A185467(A167499(n+3))`
-/

namespace A185463.P3499751159731013078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A167499 (n + 3)).toNat

end

end A185463.P3499751159731013078

/-! ## A185463.P11231601058558733705

`A185467(A155212(n)+13)`
-/

namespace A185463.P11231601058558733705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A155212 n + 13).toNat

end

end A185463.P11231601058558733705

/-! ## A185463.P2654577293715019836

`A185467(A046691(n+3))`
-/

namespace A185463.P2654577293715019836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A046691 (n + 3)).toNat

end

end A185463.P2654577293715019836

/-! ## A185463.P14807109648952218175

`A185467(Δ[A023545(n+1)])`
-/

namespace A185463.P14807109648952218175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (f1 (n + 1) - f1 n).toNat

end

end A185463.P14807109648952218175

/-!
# A185464: Number of (n+1)X7 binary arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185464, there is no canonical definition to state claims against.
-/

/-! ## A185464.P1463473737808174610

`A185467(A374007(n+1))`
-/

namespace A185464.P1463473737808174610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A374007 (n + 1)).toNat

end

end A185464.P1463473737808174610

/-! ## A185464.P5682714154224931591

`A185467(A056115(n)+21)`
-/

namespace A185464.P5682714154224931591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A056115 n + 21).toNat

end

end A185464.P5682714154224931591

/-! ## A185464.P13451130349150368336

`A185467(A000124(n+5)+5)`
-/

namespace A185464.P13451130349150368336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A000124 (n + 5) + 5).toNat

end

end A185464.P13451130349150368336

/-! ## A185464.P11850280185895215867

`A185467(A000096(n+4)+7)`
-/

namespace A185464.P11850280185895215867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A000096 (n + 4) + 7).toNat

end

end A185464.P11850280185895215867

/-! ## A185464.P11154760230609664059

`A185467(A000217(n+5)+6)`
-/

namespace A185464.P11154760230609664059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A000217 (n + 5) + 6).toNat

end

end A185464.P11154760230609664059

/-!
# A185466: Number of (n+1) X 9 binary arrays with no 2 X 2 subblock determinant equal to any horizontal or vertical neighbor 2 X 2 subblock determinant.

The programs for A185466, there is no canonical definition to state claims against.
-/

/-! ## A185466.P14220095563630728159

`A185467(A374009(n+1))`
-/

namespace A185466.P14220095563630728159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (A374009 (n + 1)).toNat

end

end A185466.P14220095563630728159

/-! ## A185466.P5173976643920472253

`A185467(eq[13, A066657(n)])`
-/

namespace A185466.P5173976643920472253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185466.P5173976643920472253

/-! ## A185466.P9376678615280663812

`A185467(eq[9, A131818(n+1)])`
-/

namespace A185466.P9376678615280663812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185466.P9376678615280663812

/-! ## A185466.P11275789182914894349

`A185467(eq[5, A219347(n)])`
-/

namespace A185466.P11275789182914894349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185466.P11275789182914894349

/-! ## A185466.P10189032205366488981

`A185467(eq[7, A193592(n)])`
-/

namespace A185466.P10189032205366488981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185466.P10189032205366488981

/-!
# A185467: T(n,k)=Number of (n+1)X(k+1) binary arrays with no 2X2 subblock determinant equal to any horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185467, there is no canonical definition to state claims against.
-/

/-! ## A185467.P14919560816646225852

`A185459(floor(root(A185451(n), 4)))`
-/

namespace A185467.P14919560816646225852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185459 ⌊(A185451 n : ℝ) ^ (1 / (4 : ℝ))⌋.toNat

end

end A185467.P14919560816646225852

/-! ## A185467.P407236618412864401

`A185459(∑[C(A185451(n)%2, n%3)])`
-/

namespace A185467.P407236618412864401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.tmod (A185451 n) 2).toNat (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185459 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A185467.P407236618412864401

/-! ## A185467.P1299065677449425914

`A185459(A002024(n+1)%A185451(n))`
-/

namespace A185467.P1299065677449425914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185459 (Int.tmod (A002024 (n + 1)) (A185451 n)).toNat

end

end A185467.P1299065677449425914

/-!
# A185468: Number of (n+2)X(n+2) 0..2 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185468, there is no canonical definition to state claims against.
-/

/-! ## A185468.P4584350020800687836

`A185477((n+1)²+n²)`
-/

namespace A185468.P4584350020800687836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 ((n + 1) ^ 2 + n ^ 2)

end

end A185468.P4584350020800687836

/-! ## A185468.P17862407700058682770

`record[A003982(n)*A185477(n+1)]`
-/

namespace A185468.P17862407700058682770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A185477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185468.P17862407700058682770

/-! ## A185468.P14322942326695626034

`record[gcd(A003987(n), A185477(n+1))]`
-/

namespace A185468.P14322942326695626034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A185477 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185468.P14322942326695626034

/-! ## A185468.P567841988728618740

`A185477(A001844(n))+A025466(n)`
-/

namespace A185468.P567841988728618740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A001844 n).toNat + A025466 n

end

end A185468.P567841988728618740

/-! ## A185468.P17155247328488915144

`A185477(A001844(n))+A025469(n)`
-/

namespace A185468.P17155247328488915144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A001844 n).toNat + A025469 n

end

end A185468.P17155247328488915144

/-!
# A185469: Number of (n+2)X3 0..2 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185469, there is no canonical definition to state claims against.
-/

/-! ## A185469.P9678362853673497703

`A185477(∑[n]+1)`
-/

namespace A185469.P9678362853673497703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185469.P9678362853673497703

/-! ## A185469.P16407791493724523531

`lcm(A033999(n), A185477(A000124(n)))`
-/

namespace A185469.P16407791493724523531
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A185477 (A000124 n).toNat)

end

end A185469.P16407791493724523531

/-! ## A185469.P16548102341979361209

`A185477(A000217(n)+1)%A254478(n+1)`
-/

namespace A185469.P16548102341979361209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185477 (A000217 n + 1).toNat) (A254478 (n + 1))

end

end A185469.P16548102341979361209

/-! ## A185469.P7920016109891542268

`A185477(A000217(n)+1)+A002618(n+1)%(n+1)`
-/

namespace A185469.P7920016109891542268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 n + 1).toNat + Int.tmod (A002618 (n + 1)) (n + 1 : ℤ)

end

end A185469.P7920016109891542268

/-! ## A185469.P14594444503283366084

`A185477(A000217(n)+1)+A144129(n+1)%(n+1)`
-/

namespace A185469.P14594444503283366084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 n + 1).toNat + Int.tmod (A144129 (n + 1)) (n + 1 : ℤ)

end

end A185469.P14594444503283366084

/-! ## A185469.P2274531454916750885

`A185477(A000217(n+1))+A000007(n+1)`
-/

namespace A185469.P2274531454916750885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 (n + 1)).toNat + A000007 (n + 1)

end

end A185469.P2274531454916750885

/-! ## A185469.P18081891929244919468

`A155040(n+1)²*A185477(A000217(n+1))`
-/

namespace A185469.P18081891929244919468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155040 (n + 1) ^ 2 * A185477 (A000217 (n + 1)).toNat

end

end A185469.P18081891929244919468

/-! ## A185469.P13176923970954322118

`A185477(A000217(n+1))+char[A185477(n+2)]`
-/

namespace A185469.P13176923970954322118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A185469.P13176923970954322118

/-! ## A185469.P7344841431031704950

`A133707(n+1)*A185477(A034856(n+1)-n)`
-/

namespace A185469.P7344841431031704950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A185477 (A034856 (n + 1) - (n : ℤ)).toNat

end

end A185469.P7344841431031704950

/-! ## A185469.P11733508575045174204

`A185477(A000217(n+1))+A025442(A025442(n+1))`
-/

namespace A185469.P11733508575045174204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 (n + 1)).toNat + A025442 (A025442 (n + 1)).toNat

end

end A185469.P11733508575045174204

/-!
# A185470: Number of (n+2)X4 0..2 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185470, there is no canonical definition to state claims against.
-/

/-! ## A185470.P13696174059363590071

`A185477(∑[n+1]+2)`
-/

namespace A185470.P13696174059363590071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185470.P13696174059363590071

/-! ## A185470.P2005251561937696701

`and(1-4/2, A185477(A000217(n+1)+2))`
-/

namespace A185470.P2005251561937696701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A185477 (A000217 (n + 1) + 2).toNat)

end

end A185470.P2005251561937696701

/-! ## A185470.P14453716142637546243

`A155040(n)²*A185477(A000217(n+1)+2)`
-/

namespace A185470.P14453716142637546243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155040 n ^ 2 * A185477 (A000217 (n + 1) + 2).toNat

end

end A185470.P14453716142637546243

/-! ## A185470.P15271598937260832768

`A025442(n)!*A185477(A000217(n+1)+2)`
-/

namespace A185470.P15271598937260832768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A025442 n).toNat : ℤ) * A185477 (A000217 (n + 1) + 2).toNat

end

end A185470.P15271598937260832768

/-! ## A185470.P8987497921851206975

`A185477(A000217(n+1)+2)+A000007(n+1)`
-/

namespace A185470.P8987497921851206975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 (n + 1) + 2).toNat + A000007 (n + 1)

end

end A185470.P8987497921851206975

/-! ## A185470.P16837564539561138666

`or(A000038(n), A185477(A034856(n+1)+1))`
-/

namespace A185470.P16837564539561138666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A185477 (A034856 (n + 1) + 1).toNat)

end

end A185470.P16837564539561138666

/-!
# A185471: Number of (n+2)X5 0..2 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185471, there is no canonical definition to state claims against.
-/

/-! ## A185471.P17177326576595125997

`A185477(∑[n+2]+4)`
-/

namespace A185471.P17177326576595125997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185471.P17177326576595125997

/-! ## A185471.P17629068234845110129

`or(A000007(n), A185477(A167614(n+1)))`
-/

namespace A185471.P17629068234845110129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A185477 (A167614 (n + 1)).toNat)

end

end A185471.P17629068234845110129

/-! ## A185471.P3953516285104323326

`A185477(A167614(n+1))+A000035(2*n)`
-/

namespace A185471.P3953516285104323326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A185471.P3953516285104323326

/-! ## A185471.P12090633470419399654

`A007318(C(2, n))*A185477(A167614(n+1))`
-/

namespace A185471.P12090633470419399654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A185477 (A167614 (n + 1)).toNat

end

end A185471.P12090633470419399654

/-! ## A185471.P13905165730517743794

`or(A000038(n), A185477(A034856(n+1)+5))`
-/

namespace A185471.P13905165730517743794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A185477 (A034856 (n + 1) + 5).toNat)

end

end A185471.P13905165730517743794

/-! ## A185471.P2570940172701983540

`A007318(ratio[2^n])*A185477(A167614(n+1))`
-/

namespace A185471.P2570940172701983540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat * A185477 (A167614 (n + 1)).toNat

end

end A185471.P2570940172701983540

/-! ## A185471.P3059826371602746286

`A133707(n+1)*A185477(A034856(n+1)+5)`
-/

namespace A185471.P3059826371602746286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A185477 (A034856 (n + 1) + 5).toNat

end

end A185471.P3059826371602746286

/-! ## A185471.P12642038708191862017

`∑{d}[n+1, A008683(#)]!*A185477(A167614(n+1))`
-/

namespace A185471.P12642038708191862017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ d ∈ Nat.divisors (f1 n), A008683 d).toNat : ℤ) * A185477 (A167614 (n + 1)).toNat

end

end A185471.P12642038708191862017

/-!
# A185472: Number of (n+2)X6 0..2 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185472, there is no canonical definition to state claims against.
-/

/-! ## A185472.P8343016911214642358

`A185477(A374004(n+1))`
-/

namespace A185472.P8343016911214642358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A374004 (n + 1)).toNat

end

end A185472.P8343016911214642358

/-! ## A185472.P14098666559653712292

`A185477(A055999(n)+10)`
-/

namespace A185472.P14098666559653712292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A055999 n + 10).toNat

end

end A185472.P14098666559653712292

/-! ## A185472.P3399211629482861910

`A185477(A167614(n+2)+1)`
-/

namespace A185472.P3399211629482861910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A167614 (n + 2) + 1).toNat

end

end A185472.P3399211629482861910

/-! ## A185472.P13700531365481170214

`A185477(Δ[A023545(n+1)-n²])`
-/

namespace A185472.P13700531365481170214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (f1 (n + 1) - f1 n).toNat

end

end A185472.P13700531365481170214

/-! ## A185472.P7318096491852809096

`A185477(A027379(n+2))`
-/

namespace A185472.P7318096491852809096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A027379 (n + 2)).toNat

end

end A185472.P7318096491852809096

/-!
# A185473: Number of (n+2)X7 0..2 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185473, there is no canonical definition to state claims against.
-/

/-! ## A185473.P17946514117332676122

`A185477(A374005(n+1))`
-/

namespace A185473.P17946514117332676122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A374005 (n + 1)).toNat

end

end A185473.P17946514117332676122

/-! ## A185473.P5198687147134621699

`A185477(A167499(n+3))`
-/

namespace A185473.P5198687147134621699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A167499 (n + 3)).toNat

end

end A185473.P5198687147134621699

/-! ## A185473.P5959802474265055801

`A185477(A155212(n)+13)`
-/

namespace A185473.P5959802474265055801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A155212 n + 13).toNat

end

end A185473.P5959802474265055801

/-! ## A185473.P9038028294932563527

`A185477(A056000(n)+15)`
-/

namespace A185473.P9038028294932563527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A056000 n + 15).toNat

end

end A185473.P9038028294932563527

/-! ## A185473.P12392267876120688468

`A185477(A133263(n+4)+3)`
-/

namespace A185473.P12392267876120688468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A133263 (n + 4) + 3).toNat

end

end A185473.P12392267876120688468

/-!
# A185474: Number of (n+2) X 8 0..2 arrays with each 3 X 3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185474, there is no canonical definition to state claims against.
-/

/-! ## A185474.P15621845639509058972

`A185477(A374007(n+1))`
-/

namespace A185474.P15621845639509058972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A374007 (n + 1)).toNat

end

end A185474.P15621845639509058972

/-! ## A185474.P16197701515885579982

`A185477(A253145(n+4)+6)`
-/

namespace A185474.P16197701515885579982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A253145 (n + 4) + 6).toNat

end

end A185474.P16197701515885579982

/-! ## A185474.P2908575881138099482

`A185477(A000217(n+5)+6)`
-/

namespace A185474.P2908575881138099482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 (n + 5) + 6).toNat

end

end A185474.P2908575881138099482

/-! ## A185474.P4823074987153596773

`A185477(A046691(n+3)+10)`
-/

namespace A185474.P4823074987153596773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A046691 (n + 3) + 10).toNat

end

end A185474.P4823074987153596773

/-! ## A185474.P2147078254655888057

`A185477(A000124(n+6)-(n+1))`
-/

namespace A185474.P2147078254655888057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A185474.P2147078254655888057

/-!
# A185475: Number of (n+2)X9 0..2 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185475, there is no canonical definition to state claims against.
-/

/-! ## A185475.P5221424776971053164

`A185477(A374008(n+1))`
-/

namespace A185475.P5221424776971053164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A374008 (n + 1)).toNat

end

end A185475.P5221424776971053164

/-! ## A185475.P1130245129843829571

`A185477(A167614(n+5)+4)`
-/

namespace A185475.P1130245129843829571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A167614 (n + 5) + 4).toNat

end

end A185475.P1130245129843829571

/-! ## A185475.P8000368826108564635

`A185477(A253145(n+5)+7)`
-/

namespace A185475.P8000368826108564635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A253145 (n + 5) + 7).toNat

end

end A185475.P8000368826108564635

/-! ## A185475.P1033901044808547075

`A185477(A000217(n+6)+7)`
-/

namespace A185475.P1033901044808547075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 (n + 6) + 7).toNat

end

end A185475.P1033901044808547075

/-! ## A185475.P7997801902229982097

`A185477(A000124(n+7)-(n+1))`
-/

namespace A185475.P7997801902229982097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000124 (n + 7) - (n + 1 : ℤ)).toNat

end

end A185475.P7997801902229982097

/-!
# A185476: Number of (n+2)X10 0..2 arrays with each 3X3 subblock having rows and columns in lexicographically nondecreasing order.

The programs for A185476, there is no canonical definition to state claims against.
-/

/-! ## A185476.P12235710245740890617

`A185477(A374009(n+1))`
-/

namespace A185476.P12235710245740890617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A374009 (n + 1)).toNat

end

end A185476.P12235710245740890617

/-! ## A185476.P823867929784809066

`A185477(A253145(n+6)+8)`
-/

namespace A185476.P823867929784809066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A253145 (n + 6) + 8).toNat

end

end A185476.P823867929784809066

/-! ## A185476.P15628922129575665103

`A185477(A000217(n+7)+8)`
-/

namespace A185476.P15628922129575665103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000217 (n + 7) + 8).toNat

end

end A185476.P15628922129575665103

/-! ## A185476.P11784288487800304600

`A185477(A000124(n+8)-(n+1))`
-/

namespace A185476.P11784288487800304600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A000124 (n + 8) - (n + 1 : ℤ)).toNat

end

end A185476.P11784288487800304600

/-! ## A185476.P12351711087816300297

`A185477(A055999(n+6)-A005408(n+1))`
-/

namespace A185476.P12351711087816300297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185477 (A055999 (n + 6) - A005408 (n + 1)).toNat

end

end A185476.P12351711087816300297

/-!
# A185478: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185478, there is no canonical definition to state claims against.
-/

/-! ## A185478.P4756720982346468494

`A185487(∑[4*n]+1)`
-/

namespace A185478.P4756720982346468494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185478.P4756720982346468494

/-! ## A185478.P7313428234902379800

`record[A003982(n)*A185487(n+1)]`
-/

namespace A185478.P7313428234902379800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A185487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185478.P7313428234902379800

/-! ## A185478.P5436512227158147485

`A185487(A001844(n))+A059995(n)`
-/

namespace A185478.P5436512227158147485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A001844 n).toNat + A059995 n

end

end A185478.P5436512227158147485

/-! ## A185478.P2237523976278534416

`A185487(A001844(n))+A185245(n)`
-/

namespace A185478.P2237523976278534416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A001844 n).toNat + A185245 n

end

end A185478.P2237523976278534416

/-! ## A185478.P13166691530758368518

`A001221(A000005(n+1))*A185487(A001844(n))`
-/

namespace A185478.P13166691530758368518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000005 (n + 1)).toNat * A185487 (A001844 n).toNat

end

end A185478.P13166691530758368518

/-!
# A185479: Number of (n+1) X 2 binary arrays with every 2 X 2 subblock determinant equal to some horizontal or vertical neighbor 2 X 2 subblock determinant.

The programs for A185479, there is no canonical definition to state claims against.
-/

/-! ## A185479.P11800868020283495791

`A186902(∑[n]+1)`
-/

namespace A185479.P11800868020283495791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185479.P11800868020283495791

/-! ## A185479.P14720645001595267015

`lcm(2, A186902(A000124(n)))`
-/

namespace A185479.P14720645001595267015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A186902 (A000124 n).toNat)

end

end A185479.P14720645001595267015

/-! ## A185479.P10828426821429124864

`record[A010054(n)*A186902(n+1)]`
-/

namespace A185479.P10828426821429124864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A186902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185479.P10828426821429124864

/-! ## A185479.P18397281795232223393

`record[A186902(n+1)/A008459(n)]`
-/

namespace A185479.P18397281795232223393
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186902 (n + 1) : ℚ) / (A008459 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185479.P18397281795232223393

/-! ## A185479.P12579705970720465337

`record[A186902(n+1)/A163626(n)]`
-/

namespace A185479.P12579705970720465337
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186902 (n + 1) : ℚ) / (A163626 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185479.P12579705970720465337

/-!
# A185480: Number of (n+1)X3 binary arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185480, there is no canonical definition to state claims against.
-/

/-! ## A185480.P17205466861353726276

`A185487(∑[n+1]+2)`
-/

namespace A185480.P17205466861353726276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185480.P17205466861353726276

/-! ## A185480.P17973078097457937845

`record[root(A185487(n+2), A059268(n))]`
-/

namespace A185480.P17973078097457937845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185487 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185480.P17973078097457937845

/-! ## A185480.P2933962669191263149

`record[root(A185487(n+2), A200370(n+1))]`
-/

namespace A185480.P2933962669191263149
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185487 (n + 2) : ℝ) ^ (1 / (A200370 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185480.P2933962669191263149

/-! ## A185480.P2488669434905162250

`record[A185487(abs(A201163(n)))]`
-/

namespace A185480.P2488669434905162250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185480.P2488669434905162250

/-! ## A185480.P2802974102312398935

`record[A185487(Δ[A003453(n+5)])]`
-/

namespace A185480.P2802974102312398935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185480.P2802974102312398935

/-!
# A185481: Number of (n+1)X4 binary arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185481, there is no canonical definition to state claims against.
-/

/-! ## A185481.P10574443918308063608

`A185487(∑[n+2]+4)`
-/

namespace A185481.P10574443918308063608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185481.P10574443918308063608

/-! ## A185481.P3110998876215572752

`lcm(2, A185487(A167614(n+1)))`
-/

namespace A185481.P3110998876215572752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185487 (A167614 (n + 1)).toNat)

end

end A185481.P3110998876215572752

/-! ## A185481.P12529846553664760865

`A185487(A167614(n+1))%A321705(n)`
-/

namespace A185481.P12529846553664760865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185487 (A167614 (n + 1)).toNat) (A321705 (n + 11))

end

end A185481.P12529846553664760865

/-! ## A185481.P2450527624804986328

`A185487(A034856(n+2))+A151909(n+1)`
-/

namespace A185481.P2450527624804986328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A034856 (n + 2)).toNat + A151909 (n + 1)

end

end A185481.P2450527624804986328

/-! ## A185481.P3706878060269744279

`A185487(A034856(n+2))%A185482(n+1)`
-/

namespace A185481.P3706878060269744279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185487 (A034856 (n + 2)).toNat) (A185482 (n + 1))

end

end A185481.P3706878060269744279

/-!
# A185482: Number of (n+1)X5 binary arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185482, there is no canonical definition to state claims against.
-/

/-! ## A185482.P9552622206494271607

`A185487(∑[n+3]+7)`
-/

namespace A185482.P9552622206494271607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A185482.P9552622206494271607

/-! ## A185482.P6216097116895685312

`floor((26/10)^(n/26))*A185487(A055998(n+2))`
-/

namespace A185482.P6216097116895685312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((26 : ℚ) / 10 : ℝ) ^ ((n : ℚ) / 26 : ℝ)⌋ * A185487 (A055998 (n + 2)).toNat

end

end A185482.P6216097116895685312

/-! ## A185482.P18290523178403584375

`lcm(A185487(A374004(n+1)), A219347(n))`
-/

namespace A185482.P18290523178403584375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A185487 (A374004 (n + 1)).toNat) (A219347 n)

end

end A185482.P18290523178403584375

/-! ## A185482.P9507437868293612773

`A185487(A374004(n+1))+A000007(2*(n+2))`
-/

namespace A185482.P9507437868293612773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A374004 (n + 1)).toNat + A000007 (2 * (n + 2))

end

end A185482.P9507437868293612773

/-! ## A185482.P4727459183315273650

`A185487(A374004(n+1))%A251201(A000124(n+4)+n)`
-/

namespace A185482.P4727459183315273650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185487 (A374004 (n + 1)).toNat) (A251201 (A000124 (n + 4) + (n : ℤ)).toNat)

end

end A185482.P4727459183315273650

/-!
# A185483: Number of (n+1) X 6 binary arrays with every 2 X 2 subblock determinant equal to some horizontal or vertical neighbor 2 X 2 subblock determinant.

The programs for A185483, there is no canonical definition to state claims against.
-/

/-! ## A185483.P3507750564862904846

`A185487(A000124(n+5)-(n+1))`
-/

namespace A185483.P3507750564862904846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A185483.P3507750564862904846

/-! ## A185483.P6925663317323798189

`A185487(A374005(n+1))`
-/

namespace A185483.P6925663317323798189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A374005 (n + 1)).toNat

end

end A185483.P6925663317323798189

/-! ## A185483.P8241341999094162342

`A185487(A046691(n+3))`
-/

namespace A185483.P8241341999094162342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A046691 (n + 3)).toNat

end

end A185483.P8241341999094162342

/-! ## A185483.P1429126091130250499

`A185487(eq[4, A193592(n)])`
-/

namespace A185483.P1429126091130250499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185483.P1429126091130250499

/-! ## A185483.P15648653431397766057

`A185487(Δ[A023545(n+1)])`
-/

namespace A185483.P15648653431397766057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (f1 (n + 1) - f1 n).toNat

end

end A185483.P15648653431397766057

/-!
# A185484: Number of (n+1)X7 binary arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185484, there is no canonical definition to state claims against.
-/

/-! ## A185484.P16606055988326420013

`A185487(A000124(n+5)+5)`
-/

namespace A185484.P16606055988326420013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A000124 (n + 5) + 5).toNat

end

end A185484.P16606055988326420013

/-! ## A185484.P15964737718115792166

`A185487(A046691(n+3)+10)`
-/

namespace A185484.P15964737718115792166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A046691 (n + 3) + 10).toNat

end

end A185484.P15964737718115792166

/-! ## A185484.P11470315372535363723

`A185487(eq[7, A131818(n+1)])`
-/

namespace A185484.P11470315372535363723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185484.P11470315372535363723

/-! ## A185484.P7308400363023737930

`A185487(A374007(n+1))`
-/

namespace A185484.P7308400363023737930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A374007 (n + 1)).toNat

end

end A185484.P7308400363023737930

/-! ## A185484.P5080587695266800586

`A185487(eq[3, A219347(n)])`
-/

namespace A185484.P5080587695266800586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185484.P5080587695266800586

/-!
# A185485: Number of (n+1)X8 binary arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185485, there is no canonical definition to state claims against.
-/

/-! ## A185485.P16544034795078799204

`A185487(A155212(n+2)+15)`
-/

namespace A185485.P16544034795078799204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A155212 (n + 2) + 15).toNat

end

end A185485.P16544034795078799204

/-! ## A185485.P5923923125176345839

`A185487(eq[8, A131818(n+1)])`
-/

namespace A185485.P5923923125176345839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185485.P5923923125176345839

/-! ## A185485.P4590831244485973873

`A185487(A374008(n+1))`
-/

namespace A185485.P4590831244485973873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A374008 (n + 1)).toNat

end

end A185485.P4590831244485973873

/-! ## A185485.P15068364789059114526

`A185487(eq[4, A219347(n)])`
-/

namespace A185485.P15068364789059114526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185485.P15068364789059114526

/-! ## A185485.P3540747613087533278

`A185487(eq[6, A193592(n)])`
-/

namespace A185485.P3540747613087533278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185485.P3540747613087533278

/-!
# A185486: Number of (n+1)X9 binary arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185486, there is no canonical definition to state claims against.
-/

/-! ## A185486.P16756681818364398641

`A185487(eq[9, A131818(n+1)])`
-/

namespace A185486.P16756681818364398641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185486.P16756681818364398641

/-! ## A185486.P14490688284141175371

`A185487(A374009(n+1))`
-/

namespace A185486.P14490688284141175371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A374009 (n + 1)).toNat

end

end A185486.P14490688284141175371

/-! ## A185486.P9792010089771694109

`A185487(eq[5, A219347(n)])`
-/

namespace A185486.P9792010089771694109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185486.P9792010089771694109

/-! ## A185486.P13875285437218639939

`A185487(eq[7, A193592(n)])`
-/

namespace A185486.P13875285437218639939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185486.P13875285437218639939

/-! ## A185486.P3519040791408016937

`A185487(A055998(n+6)-4)`
-/

namespace A185486.P3519040791408016937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185487 (A055998 (n + 6) - 4).toNat

end

end A185486.P3519040791408016937

/-!
# A185487: T(n,k)=Number of (n+1)X(k+1) binary arrays with every 2X2 subblock determinant equal to some horizontal or vertical neighbor 2X2 subblock determinant.

The programs for A185487, there is no canonical definition to state claims against.
-/

/-! ## A185487.P17345606129256826761

`A186902(A037442(n+1))`
-/

namespace A185487.P17345606129256826761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A037442 (n + 1)).toNat

end

end A185487.P17345606129256826761

/-! ## A185487.P5088359108728647779

`A186902(A141769(n+1))`
-/

namespace A185487.P5088359108728647779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A141769 (n + 1)).toNat

end

end A185487.P5088359108728647779

/-! ## A185487.P18134099836757122326

`A186902(A004891(n+2))`
-/

namespace A185487.P18134099836757122326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186902 (A004891 (n + 2)).toNat

end

end A185487.P18134099836757122326

/-!
# A185488: Number of (n+1)X(n+1) binary arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185488, there is no canonical definition to state claims against.
-/

/-! ## A185488.P10091787278371715673

`A185497(∑[4*n]+1)`
-/

namespace A185488.P10091787278371715673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185488.P10091787278371715673

/-!
# A185489: Number of (n+1) X 2 binary arrays with every 2 X 2 subblock sum equal to some horizontal or vertical neighbor 2 X 2 subblock sum.

The programs for A185489, there is no canonical definition to state claims against.
-/

/-! ## A185489.P14706353298822784670

`A185497(∑[n]+1)`
-/

namespace A185489.P14706353298822784670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185489.P14706353298822784670

/-! ## A185489.P11989262728704096487

`A188311(∑[n]+1)`
-/

namespace A185489.P11989262728704096487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185489.P11989262728704096487

/-! ## A185489.P12343126992508963667

`lcm(2, A185497(A000124(n)))`
-/

namespace A185489.P12343126992508963667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185497 (A000124 n).toNat)

end

end A185489.P12343126992508963667

/-! ## A185489.P1391043743372486259

`record[A185497(A056534(n+1))]`
-/

namespace A185489.P1391043743372486259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185489.P1391043743372486259

/-! ## A185489.P10065038084655776760

`record[A185497(A114091(n+1))]`
-/

namespace A185489.P10065038084655776760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185489.P10065038084655776760

/-!
# A185490: Number of (n+1) X 3 binary arrays with every 2 X 2 subblock sum equal to some horizontal or vertical neighbor 2 X 2 subblock sum.

The programs for A185490, there is no canonical definition to state claims against.
-/

/-! ## A185490.P4050247361982786130

`A185497(∑[n+1]+2)`
-/

namespace A185490.P4050247361982786130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185490.P4050247361982786130

/-! ## A185490.P4189648550160629767

`record[A185497(A114091(n+1)+1)]`
-/

namespace A185490.P4189648550160629767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185490.P4189648550160629767

/-! ## A185490.P3623429816033577305

`record[A010054(n)*A185497(n+2)]`
-/

namespace A185490.P3623429816033577305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185490.P3623429816033577305

/-! ## A185490.P1581393077056949130

`record[root(A185497(n+2), A013610(n))]`
-/

namespace A185490.P1581393077056949130
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185497 (n + 2) : ℝ) ^ (1 / (A013610 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185490.P1581393077056949130

/-! ## A185490.P4321355478928632259

`record[root(A185497(n+2), A013612(n))]`
-/

namespace A185490.P4321355478928632259
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A185497 (n + 2) : ℝ) ^ (1 / (A013612 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185490.P4321355478928632259

/-!
# A185491: Number of (n+1)X4 binary arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185491, there is no canonical definition to state claims against.
-/

/-! ## A185491.P10910697857969754820

`A185497(∑[n+2]+4)`
-/

namespace A185491.P10910697857969754820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A185491.P10910697857969754820

/-! ## A185491.P10566252417270564705

`lcm(2, A185497(A167614(n+1)))`
-/

namespace A185491.P10566252417270564705
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A185497 (A167614 (n + 1)).toNat)

end

end A185491.P10566252417270564705

/-! ## A185491.P6601719868468933268

`A185497(A167614(n+1))+A011745(n)`
-/

namespace A185491.P6601719868468933268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A167614 (n + 1)).toNat + A011745 n

end

end A185491.P6601719868468933268

/-! ## A185491.P5657548878369220937

`A185497(A167614(n+1))+A025443(n)`
-/

namespace A185491.P5657548878369220937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A167614 (n + 1)).toNat + A025443 n

end

end A185491.P5657548878369220937

/-! ## A185491.P15172068430417700986

`A185497(A167614(n+1))+A025444(n)`
-/

namespace A185491.P15172068430417700986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A167614 (n + 1)).toNat + A025444 n

end

end A185491.P15172068430417700986

/-!
# A185492: Number of (n+1)X5 binary arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185492, there is no canonical definition to state claims against.
-/

/-! ## A185492.P17581711568726934325

`A185497(∑[n+3]+7)`
-/

namespace A185492.P17581711568726934325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A185492.P17581711568726934325

/-! ## A185492.P7172811367785141553

`A185497(A055999(n)+10)+A014043(n+2)`
-/

namespace A185492.P7172811367785141553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A055999 n + 10).toNat + A014043 (n + 2)

end

end A185492.P7172811367785141553

/-! ## A185492.P16735166118509479291

`A185497(A055999(n)+10)+A049084(2*(n+2))`
-/

namespace A185492.P16735166118509479291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A055999 n + 10).toNat + A049084 (2 * (n + 2))

end

end A185492.P16735166118509479291

/-! ## A185492.P7023932906805552958

`A185497(A027379(n+2))+A035699(n+1)`
-/

namespace A185492.P7023932906805552958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A027379 (n + 2)).toNat + A035699 (n + 1)

end

end A185492.P7023932906805552958

/-!
# A185493: Number of (n+1)X6 binary arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185493, there is no canonical definition to state claims against.
-/

/-! ## A185493.P291548097527540241

`A185497(A374005(n+1))`
-/

namespace A185493.P291548097527540241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A374005 (n + 1)).toNat

end

end A185493.P291548097527540241

/-! ## A185493.P10076348120849134898

`A185497(A167499(n+3))`
-/

namespace A185493.P10076348120849134898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A167499 (n + 3)).toNat

end

end A185493.P10076348120849134898

/-! ## A185493.P17086510361965328874

`A185497(A155212(n)+13)`
-/

namespace A185493.P17086510361965328874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A155212 n + 13).toNat

end

end A185493.P17086510361965328874

/-! ## A185493.P17058568795076960662

`A185497(A056000(n)+15)`
-/

namespace A185493.P17058568795076960662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A056000 n + 15).toNat

end

end A185493.P17058568795076960662

/-! ## A185493.P16942992595867391457

`A185497(eq[7, A066657(n)])`
-/

namespace A185493.P16942992595867391457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185493.P16942992595867391457

/-!
# A185494: Number of (n+1)X7 binary arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185494, there is no canonical definition to state claims against.
-/

/-! ## A185494.P13718026537901602295

`A185497(A374007(n+1))`
-/

namespace A185494.P13718026537901602295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A374007 (n + 1)).toNat

end

end A185494.P13718026537901602295

/-! ## A185494.P5197827996209996944

`A185497(A166136(n+4))`
-/

namespace A185494.P5197827996209996944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A166136 (n + 4)).toNat

end

end A185494.P5197827996209996944

/-! ## A185494.P3284185473060296218

`A185497(A056115(n)+21)`
-/

namespace A185494.P3284185473060296218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A056115 n + 21).toNat

end

end A185494.P3284185473060296218

/-! ## A185494.P18347100546289200645

`A185497(A167499(n+4)+1)`
-/

namespace A185494.P18347100546289200645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (A167499 (n + 4) + 1).toNat

end

end A185494.P18347100546289200645

/-!
# A185495: Number of (n+1)X8 binary arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185495, there is no canonical definition to state claims against.
-/

/-! ## A185495.P11296381931638152009

`A185497(∑[n+6]+22)`
-/

namespace A185495.P11296381931638152009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (∑ j ∈ Finset.range (n + 1), f1 j + 22)

end

end A185495.P11296381931638152009

/-!
# A185496: Number of (n+1)X9 binary arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185496, there is no canonical definition to state claims against.
-/

/-! ## A185496.P9943979480371360378

`A185497(eq[5, A219347(n)])`
-/

namespace A185496.P9943979480371360378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185497 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A185496.P9943979480371360378

/-!
# A185497: T(n,k)=Number of (n+1)X(k+1) binary arrays with every 2X2 subblock sum equal to some horizontal or vertical neighbor 2X2 subblock sum.

The programs for A185497, there is no canonical definition to state claims against.
-/

/-! ## A185497.P17788604033350480166

`A188311(n+1)+A094537(A185354(n))`
-/

namespace A185497.P17788604033350480166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (n + 1) + A094537 (A185354 n).toNat

end

end A185497.P17788604033350480166

/-! ## A185497.P339311992330693569

`A188311(∑[A173779(n)])`
-/

namespace A185497.P339311992330693569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A185497.P339311992330693569

/-! ## A185497.P2370840886471499968

`A188311(A037334(n+1))`
-/

namespace A185497.P2370840886471499968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188311 (A037334 (n + 1)).toNat

end

end A185497.P2370840886471499968

/-!
# A185498: Number of (n+1)X2 0..2 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185498, there is no canonical definition to state claims against.
-/

/-! ## A185498.P2294892831151372629

`A185504(∑[n]+1)`
-/

namespace A185498.P2294892831151372629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A185498.P2294892831151372629

/-! ## A185498.P17771629570693742752

`record[A185504(A114091(n+1))]`
-/

namespace A185498.P17771629570693742752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A114091 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185498.P17771629570693742752

/-! ## A185498.P1601225098550346924

`record[A185504(A286234(n+1))]`
-/

namespace A185498.P1601225098550346924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A286234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185498.P1601225098550346924

/-! ## A185498.P2428255506500154563

`record[A185504(A286244(n+1))]`
-/

namespace A185498.P2428255506500154563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A286244 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185498.P2428255506500154563

/-! ## A185498.P12932883997954663553

`record[A010054(n)*A185504(n+1)]`
-/

namespace A185498.P12932883997954663553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185504 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185498.P12932883997954663553

/-!
# A185499: Number of (n+1)X3 0..2 arrays with every 2X2 subblock diagonal sum less antidiagonal sum equal to some horizontal or vertical neighbor 2X2 subblock diagonal sum less antidiagonal sum.

The programs for A185499, there is no canonical definition to state claims against.
-/

/-! ## A185499.P462885783632253870

`A185504(∑[n+1]+2)`
-/

namespace A185499.P462885783632253870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A185499.P462885783632253870

/-! ## A185499.P12274967748414044740

`record[A185504(A114091(n+1)+1)]`
-/

namespace A185499.P12274967748414044740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A114091 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185499.P12274967748414044740

/-! ## A185499.P3385518018293878444

`record[A010054(n)*A185504(n+2)]`
-/

namespace A185499.P3385518018293878444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A185504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185499.P3385518018293878444

/-! ## A185499.P16354317027453188585

`record[A185504(n+3)/A008275(n+1)]`
-/

namespace A185499.P16354317027453188585
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185504 (n + 3) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185499.P16354317027453188585

/-! ## A185499.P2593290491130711051

`record[A185504(A198455(n+1))]`
-/

namespace A185499.P2593290491130711051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185504 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A185499.P2593290491130711051

