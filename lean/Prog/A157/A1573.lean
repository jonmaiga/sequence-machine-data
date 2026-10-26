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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A157301: Reduced numerators of the ratios of Pi(2^(n+1))/Pi(2^(n)).

The programs for A157301, there is no canonical definition to state claims against.
-/

/-! ## A157301.P4652065253899778024

`A007053(n+2)/gcd(A007053(n+1), A007053(n+2))`
-/

namespace A157301.P4652065253899778024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007053 (n + 2) : ℚ) / (Int.gcd (A007053 (n + 1)) (A007053 (n + 2)) : ℚ)

end

end A157301.P4652065253899778024

/-! ## A157301.P16746360474244301470

`A060967(2*(n+2))/gcd(A060967(2*(n+1)), A060967(2*(n+2)))`
-/

namespace A157301.P16746360474244301470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060967 (2 * (n + 2)) : ℚ) / (Int.gcd (A060967 (2 * (n + 1))) (A060967 (2 * (n + 2))) : ℚ)

end

end A157301.P16746360474244301470

/-! ## A157301.P3655829720738248479

`A007053(n+2)/A014973(A068875(n))`
-/

namespace A157301.P3655829720738248479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007053 (n + 2) : ℚ) / (A014973 (A068875 n).toNat : ℚ)

end

end A157301.P3655829720738248479

/-!
# A157302: G.f. A(x) satisfies the condition that both A(x) and F(x) = A(x*F(x)^2) have zeros for every other coefficient after initial terms; g.f. of dual sequence A157305 satisfies the same condition.

The programs for A157302, there is no canonical definition to state claims against.
-/

/-! ## A157302.P14485380218438979840

`or(1, A318052(2*n+1))*A117568(2*n)`
-/

namespace A157302.P14485380218438979840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A318052 (2 * n + 1)) * A117568 (2 * n)

end

end A157302.P14485380218438979840

/-!
# A157303: G.f. A(x) satisfies the condition that both G(x) = A(x/G(x)) and H(x) = A(x*H(x)) have zeros for every other coefficient after initial terms; g.f. of dual sequence A157306 satisfies the same condition.

The programs for A157303, there is no canonical definition to state claims against.
-/

/-! ## A157303.P11872260137359479334

`A369054(A002275(n))+A362568(n)`
-/

namespace A157303.P11872260137359479334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369054 (A002275 n).toNat + A362568 n

end

end A157303.P11872260137359479334

/-! ## A157303.P1827725042674338366

`xor(A002375(A007559(n)), A138019(n))`
-/

namespace A157303.P1827725042674338366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002375 (A007559 n).toNat) (A138019 n)

end

end A157303.P1827725042674338366

/-!
# A157304: G.f. A(x) satisfies the condition that both A(x) and F(x) = A(x/F(x)^2) have zeros for every other coefficient after initial terms; g.f. of dual sequence A157307 satisfies the same condition.

The programs for A157304, there is no canonical definition to state claims against.
-/

/-! ## A157304.P8989445132670740598

`xor(1, 1-A157305(n))`
-/

namespace A157304.P8989445132670740598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A157305 n)

end

end A157304.P8989445132670740598

/-! ## A157304.P7105668677800199899

`and(2, A000051(n))-A157305(n)`
-/

namespace A157304.P7105668677800199899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000051 n) - A157305 n

end

end A157304.P7105668677800199899

/-! ## A157304.P9608105678023644636

`A066170(A161680(n))*A157305(n)`
-/

namespace A157304.P9608105678023644636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066170 (A161680 n).toNat * A157305 n

end

end A157304.P9608105678023644636

/-! ## A157304.P369702922039738037

`A157308(n)+A157310(n)-A157305(n)`
-/

namespace A157304.P369702922039738037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157308 n + (A157310 n - A157305 n)

end

end A157304.P369702922039738037

/-!
# A157305: G.f. A(x) satisfies the condition that both A(x) and F(x) = A(x*F(x)^2) have zeros for every other coefficient after initial terms; dual sequence A157302 satisfies the same condition.

The programs for A157305, there is no canonical definition to state claims against.
-/

/-! ## A157305.P10816369223878780282

`xor(1, 1-A157304(n))`
-/

namespace A157305.P10816369223878780282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (1 - A157304 n)

end

end A157305.P10816369223878780282

/-! ## A157305.P8886928207333259760

`A157304(A039649(n+1))-A157304(n)`
-/

namespace A157305.P8886928207333259760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157304 (A039649 (n + 1)).toNat - A157304 n

end

end A157305.P8886928207333259760

/-! ## A157305.P3283807036932664488

`A157304(n)*A157306(A000032(C(n, n²)))`
-/

namespace A157305.P3283807036932664488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157304 n * A157306 (A000032 (Nat.choose n (n ^ 2))).toNat

end

end A157305.P3283807036932664488

/-! ## A157305.P15252734174259312040

`A157304(A151800(n))-A157304(n)`
-/

namespace A157305.P15252734174259312040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157304 (A151800 n).toNat - A157304 n

end

end A157305.P15252734174259312040

/-!
# A157306: G.f. A(x) satisfies the condition that both G(x) = A(x/G(x)) and H(x) = A(x*H(x)) have zeros for every other coefficient after initial terms; g.f. of dual sequence A157303 satisfies the same condition.

The programs for A157306, there is no canonical definition to state claims against.
-/

/-! ## A157306.P2528625537854599203

`∏{p}[A062740(n), #]-A000225(n)`
-/

namespace A157306.P2528625537854599203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062740 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p : ℕ) : ℤ) - A000225 n

end

end A157306.P2528625537854599203

/-! ## A157306.P6724883296169404567

`A008683(A000364(n))*A007836(n)`
-/

namespace A157306.P6724883296169404567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000364 n).toNat * A007836 n

end

end A157306.P6724883296169404567

/-!
# A157307: G.f. A(x) satisfies the condition that both A(x) and F(x) = A(x/F(x)^2) have zeros for every other coefficient after initial terms; g.f. of dual sequence A157304 satisfies the same condition.

The programs for A157307, there is no canonical definition to state claims against.
-/

/-! ## A157307.P17848003284916146367

`A003432(A270613(n+1))-A212714(n)`
-/

namespace A157307.P17848003284916146367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003432 (A270613 (n + 1)).toNat - A212714 n

end

end A157307.P17848003284916146367

/-! ## A157307.P6374119759796317663

`A006984(A000142(n)+1)*A090192(n)`
-/

namespace A157307.P6374119759796317663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A000142 n + 1).toNat * A090192 n

end

end A157307.P6374119759796317663

/-!
# A157308: G.f. A(x) satisfies the condition that both A(x) and F(x) = A(x*F(x)) = g.f. of A155585 have zeros for every other coefficient after initial terms; g.f. of dual sequence A157309 satisfies the same condition.

The programs for A157308, there is no canonical definition to state claims against.
-/

/-! ## A157308.P10002988346541910558

`A009001(n)*A172396(n)`
-/

namespace A157308.P10002988346541910558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A172396 n

end

end A157308.P10002988346541910558

/-! ## A157308.P3554488948006822158

`A034947(n+1)*A172396(n)`
-/

namespace A157308.P3554488948006822158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A172396 n

end

end A157308.P3554488948006822158

/-! ## A157308.P16460526027174202400

`abs(A157310(n))*A034947(n+1)`
-/

namespace A157308.P16460526027174202400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157310 n| * A034947 (n + 1)

end

end A157308.P16460526027174202400

/-! ## A157308.P15057094251949319986

`A033999(A004526(n))*A172396(n)`
-/

namespace A157308.P15057094251949319986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004526 n).toNat * A172396 n

end

end A157308.P15057094251949319986

/-! ## A157308.P13818199565208921566

`A157310(n)/A269529(floor(2^(n-1)))`
-/

namespace A157308.P13818199565208921566
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157310 n : ℚ) / (A269529 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat : ℚ)

end

end A157308.P13818199565208921566

/-!
# A157310: G.f. A(x) satisfies the condition that both A(x) and F(x) = A(x/F(x)) = o.g.f. of A157309 have zeros for every other coefficient after initial terms; g.f. of dual sequence A155585 satisfies the same condition.

The programs for A157310, there is no canonical definition to state claims against.
-/

/-! ## A157310.P16568919000998377566

`floor(acot(n)²)-A157308(char[1]+n)`
-/

namespace A157310.P16568919000998377566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ - A157308 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A157310.P16568919000998377566

/-! ## A157310.P18154497414169580344

`A157306(A000032(C(n, n²)))*A157308(n)`
-/

namespace A157310.P18154497414169580344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157306 (A000032 (Nat.choose n (n ^ 2))).toNat * A157308 n

end

end A157310.P18154497414169580344

/-! ## A157310.P9101236903800721453

`A157309(n)-xor(A157308(n), A157309(n))`
-/

namespace A157310.P9101236903800721453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157309 n - Int.xor (A157308 n) (A157309 n)

end

end A157310.P9101236903800721453

/-! ## A157310.P494639374694181154

`A154990(A089259(n))*A157308(n)`
-/

namespace A157310.P494639374694181154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154990 (A089259 n).toNat * A157308 n

end

end A157310.P494639374694181154

/-!
# A157311: G.f.: exp( Sum_{n>=1} a(n)*x^n/n ) = Product_{n>=1} (1 + a(n-1)*x^n).

The programs for A157311, there is no canonical definition to state claims against.
-/

/-! ## A157311.P18432633475670344385

`A318600(∑[A290544(n)])`
-/

namespace A157311.P18432633475670344385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318600 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A157311.P18432633475670344385

/-! ## A157311.P2574900948460196990

`A318600(∑[A290622(n)])`
-/

namespace A157311.P2574900948460196990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318600 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A157311.P2574900948460196990

/-! ## A157311.P1818351558039839045

`A004183(A318600(n+1))`
-/

namespace A157311.P1818351558039839045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A318600 (n + 1)).toNat

end

end A157311.P1818351558039839045

/-! ## A157311.P2319747136421049530

`A318600(A290544(n)+n)`
-/

namespace A157311.P2319747136421049530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318600 (A290544 n + (n : ℤ)).toNat

end

end A157311.P2319747136421049530

/-!
# A157312: G.f.: A(x) = exp(Sum_{n>=1} A157311(n)*x^n/n) = Product_{n>=1} (1 + A157311(n-1)*x^n).

The programs for A157312, there is no canonical definition to state claims against.
-/

/-! ## A157312.P4314271577247085416

`ceil(A183173(A001338(n)+1)/16)`
-/

namespace A157312.P4314271577247085416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A183173 (A001338 n + 1).toNat : ℚ) / 16⌉

end

end A157312.P4314271577247085416

/-! ## A157312.P6096106643356136742

`A256502(A002264(∑[(n-1)*a(n-1)+1]))` with `a(0)=3`
-/

namespace A157312.P6096106643356136742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A157312.P6096106643356136742

/-! ## A157312.P10522144160058440197

`A256502(A002264(∑[1-(1-n)*a(n-1)]))` with `a(0)=3`
-/

namespace A157312.P10522144160058440197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - (1 - (n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256502 (A002264 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A157312.P10522144160058440197

/-!
# A157314: G.f.: A(x) = exp( Sum_{n>=1} A157313(n)*x^n/n ) = 1/Product_{n>=1} (1 - A157313(n-1)*x^n).

The programs for A157314, there is no canonical definition to state claims against.
-/

/-! ## A157314.P16947658085111092507

`A230980(A259558(n!))`
-/

namespace A157314.P16947658085111092507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A259558 (Nat.factorial n)).toNat

end

end A157314.P16947658085111092507

/-! ## A157314.P11418489141622658151

`A066339(A129427(n))+1`
-/

namespace A157314.P11418489141622658151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066339 (A129427 n).toNat + 1

end

end A157314.P11418489141622658151

/-! ## A157314.P2111620124222557815

`A091226(A213228(n)+1)`
-/

namespace A157314.P2111620124222557815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091226 (A213228 n + 1).toNat

end

end A157314.P2111620124222557815

/-!
# A157318: Numbers in Spanish that do not use the letter I.

The programs for A157318, there is no canonical definition to state claims against.
-/

/-! ## A157318.P11196920534968939623

`∑[A193592(A077078(gcd(n+1, 2-2^(n+1))))]`
-/

namespace A157318.P11196920534968939623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A077078 (Int.gcd (n + 1 : ℤ) (2 - (2 ^ (n + 1) : ℤ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157318.P11196920534968939623

/-! ## A157318.P12288859775599406997

`∑[gcd(A163861(n), A293078(n+1))]`
-/

namespace A157318.P12288859775599406997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A163861 n) (A293078 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157318.P12288859775599406997

/-! ## A157318.P15287291073385471136

`eq[A197640(n+2), A222253(A222232(n+2))]`
-/

namespace A157318.P15287291073385471136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197640 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 (A222232 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A157318.P15287291073385471136

/-!
# A157319: Possible total points for a single team in a game of American football, ignoring safeties (and time constraints).

The programs for A157319, the canonical program `A157319.P9656671455156154379` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157319 has offset 1).

The definition of A157319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157319.P9656671455156154379

`ogf((3x-2x^3+x^4-x^5+x^6-x^7)/(1-2x+x^2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157319

/-- `ogf((3x-2x^3+x^4-x^5+x^6-x^7)/(1-2x+x^2))` -/
def P9656671455156154379.Spec : Prop :=
  ∀ n, P9656671455156154379.a n = A157319 (n + 1)

theorem P9656671455156154379.correct : P9656671455156154379.Spec := by
  intro n
  simp only [A157319, Nat.add_sub_cancel]

end A157319

/-!
# A157320: Symmetrical Hahn weights on q-form factorials:m=1;q=2; q-form:t(n,m)=If[m == 0, n!, Product[Sum[(m + 1)^i, {i, 0, k - 1}], {k, 1, n}]]; Hahn weight:b(n,k,m)=If[n == 0, 1, (n!*t[m + 1, k]*t[m + 1, n - k])/(k!*(n - k)!*t[1, n])].

The programs for A157320, there is no canonical definition to state claims against.
-/

/-! ## A157320.P767999512488245050

`round(A134059(n)/3*A173395(n+1))`
-/

namespace A157320.P767999512488245050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A134059 n : ℚ) / 3 * (A173395 (n + 1) : ℚ))

end

end A157320.P767999512488245050

/-! ## A157320.P3970455868494106203

`A196300(n+1)+A197537(n+1)%A197673(n+1)`
-/

namespace A157320.P3970455868494106203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (n + 1) + Int.tmod (A197537 (n + 1)) (A197673 (n + 1))

end

end A157320.P3970455868494106203

/-! ## A157320.P16013105374612719679

`A196218(n+1)+A197679(n+1)%A197673(n+1)`
-/

namespace A157320.P16013105374612719679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (n + 1) + Int.tmod (A197679 (n + 1)) (A197673 (n + 1))

end

end A157320.P16013105374612719679

/-! ## A157320.P5800410882788440516

`A197679(n+1)+A196300(n+1)%A197673(n+1)`
-/

namespace A157320.P5800410882788440516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197679 (n + 1) + Int.tmod (A196300 (n + 1)) (A197673 (n + 1))

end

end A157320.P5800410882788440516

/-! ## A157320.P15392632289915915727

`A197537(n+1)+A196685(n+1)%A197673(n+1)`
-/

namespace A157320.P15392632289915915727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197537 (n + 1) + Int.tmod (A196685 (n + 1)) (A197673 (n + 1))

end

end A157320.P15392632289915915727

/-!
# A157324: a(n) = 36*n^2 + n.

The programs for A157324, the canonical program `A157324.P15345809453353872924` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157324 has offset 1).

The definition of A157324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*(n+1)²+n+1` (program `A157324.P15345809453353872924`, by `A157324.P15345809453353872924.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157324.P15345809453353872924

`36*(n+1)²+n+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157324

/-- `36*(n+1)²+n+1` -/
def P15345809453353872924.Spec : Prop :=
  ∀ n, (P15345809453353872924.a n : ℤ) = A157324 (n + 1)

theorem P15345809453353872924.correct : P15345809453353872924.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel]

end A157324

/-! ## A157324.P17386163401784405814

`∑[a(n-1)+72]` with `a(0)=37`
-/

namespace A157324.P17386163401784405814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [37] fun n f1 =>
  f1 (n - 1) + 72

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157324.P17386163401784405814

namespace A157324

/-- `∑[a(n-1)+72]` -/
def P17386163401784405814.Spec : Prop :=
  ∀ n, (P17386163401784405814.a n : ℤ) = A157324 (n + 1)

end A157324

/-! ## A157324.P12978797265057103281

`(n+1)*A158065(n+1)`
-/

namespace A157324.P12978797265057103281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158065 (n + 1)

end

end A157324.P12978797265057103281

namespace A157324

/-- `(n+1)*A158065(n+1)` -/
def P12978797265057103281.Spec : Prop :=
  ∀ n, P12978797265057103281.a n = A157324 (n + 1)

theorem P12978797265057103281.correct : P12978797265057103281.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P12978797265057103281.a, A157324.P15345809453353872924.a, A158065, A158065.P14397513440059553790.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P3981095187024073377

`(n+1)*(A350055(n)+2)`
-/

namespace A157324.P3981095187024073377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A350055 n + 2)

end

end A157324.P3981095187024073377

namespace A157324

/-- `(n+1)*(A350055(n)+2)` -/
def P3981095187024073377.Spec : Prop :=
  ∀ n, P3981095187024073377.a n = A157324 (n + 1)

theorem P3981095187024073377.correct : P3981095187024073377.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P3981095187024073377.a, A157324.P15345809453353872924.a, A350055, A350055.P14338216184358329555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P17344759864949599666

`A157659(n+1)%A158067(n+1)`
-/

namespace A157324.P17344759864949599666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157659 (n + 1)) (A158067 (n + 1))

end

end A157324.P17344759864949599666

namespace A157324

/-- `A157659(n+1)%A158067(n+1)` -/
def P17344759864949599666.Spec : Prop :=
  ∀ n, P17344759864949599666.a n = A157324 (n + 1)

end A157324

/-! ## A157324.P15731769894917483622

`lcm(A000027(n+1), A158065(n+1))`
-/

namespace A157324.P15731769894917483622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A158065 (n + 1))

end

end A157324.P15731769894917483622

namespace A157324

/-- `lcm(A000027(n+1), A158065(n+1))` -/
def P15731769894917483622.Spec : Prop :=
  ∀ n, (P15731769894917483622.a n : ℤ) = A157324 (n + 1)

end A157324

/-! ## A157324.P17074180491322354117

`(n+1)*(A044102(n+1)+1)`
-/

namespace A157324.P17074180491322354117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A044102 (n + 1) + 1)

end

end A157324.P17074180491322354117

namespace A157324

/-- `(n+1)*(A044102(n+1)+1)` -/
def P17074180491322354117.Spec : Prop :=
  ∀ n, P17074180491322354117.a n = A157324 (n + 1)

theorem P17074180491322354117.correct : P17074180491322354117.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P17074180491322354117.a, A157324.P15345809453353872924.a, A044102, A044102.P13317920450440868156.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P13492308068300715611

`(n+1)*(A085959(n+1)-n)`
-/

namespace A157324.P13492308068300715611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A085959 (n + 1) - (n : ℤ))

end

end A157324.P13492308068300715611

namespace A157324

/-- `(n+1)*(A085959(n+1)-n)` -/
def P13492308068300715611.Spec : Prop :=
  ∀ n, P13492308068300715611.a n = A157324 (n + 1)

theorem P13492308068300715611.correct : P13492308068300715611.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P13492308068300715611.a, A157324.P15345809453353872924.a, A085959, A085959.P3841702424596331541.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P4300625430711248467

`(n+1)*Δ[A282850(n+1)]`
-/

namespace A157324.P4300625430711248467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282850 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A157324.P4300625430711248467

namespace A157324

/-- `(n+1)*Δ[A282850(n+1)]` -/
def P4300625430711248467.Spec : Prop :=
  ∀ n, P4300625430711248467.a n = A157324 (n + 1)

theorem P4300625430711248467.correct : P4300625430711248467.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P4300625430711248467.f1, A157324.P4300625430711248467.a, A157324.P15345809453353872924.a, A282850, A282850.P10636471792818135754.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P15431990741241426757

`∑[A158065(2*n+1)]`
-/

namespace A157324.P15431990741241426757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158065 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157324.P15431990741241426757

namespace A157324

/-- `∑[A158065(2*n+1)]` -/
def P15431990741241426757.Spec : Prop :=
  ∀ n, P15431990741241426757.a n = A157324 (n + 1)

end A157324

/-! ## A157324.P4555401102114085816

`A158064(2*(n+1))/4`
-/

namespace A157324.P4555401102114085816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158064 (2 * (n + 1)) : ℚ) / 4

end

end A157324.P4555401102114085816

namespace A157324

/-- `A158064(2*(n+1))/4` -/
def P4555401102114085816.Spec : Prop :=
  ∀ n, P4555401102114085816.a n = (A157324 (n + 1) : ℚ)

end A157324

/-! ## A157324.P17053433478404505616

`(n+1)*A339531(2*(n+1))`
-/

namespace A157324.P17053433478404505616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A339531 (2 * (n + 1))

end

end A157324.P17053433478404505616

namespace A157324

/-- `(n+1)*A339531(2*(n+1))` -/
def P17053433478404505616.Spec : Prop :=
  ∀ n, P17053433478404505616.a n = A157324 (n + 1)

end A157324

/-! ## A157324.P3522619855150354970

`(n+1)*A161705(2*(n+1))`
-/

namespace A157324.P3522619855150354970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A161705 (2 * (n + 1))

end

end A157324.P3522619855150354970

namespace A157324

/-- `(n+1)*A161705(2*(n+1))` -/
def P3522619855150354970.Spec : Prop :=
  ∀ n, P3522619855150354970.a n = A157324 (n + 1)

theorem P3522619855150354970.correct : P3522619855150354970.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P3522619855150354970.a, A157324.P15345809453353872924.a, A161705, A161705.P9285490780148837046.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P15853384706245610485

`A396289(3*(n+1))/3`
-/

namespace A157324.P15853384706245610485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396289 (3 * (n + 1)) : ℚ) / 3

end

end A157324.P15853384706245610485

namespace A157324

/-- `A396289(3*(n+1))/3` -/
def P15853384706245610485.Spec : Prop :=
  ∀ n, P15853384706245610485.a n = (A157324 (n + 1) : ℚ)

theorem P15853384706245610485.correct : P15853384706245610485.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P15853384706245610485.a, A157324.P15345809453353872924.a, A396289, A396289.P3873563288867245151.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P1146967888832243003

`(n+1)*A017533(3*(n+1))`
-/

namespace A157324.P1146967888832243003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017533 (3 * (n + 1))

end

end A157324.P1146967888832243003

namespace A157324

/-- `(n+1)*A017533(3*(n+1))` -/
def P1146967888832243003.Spec : Prop :=
  ∀ n, P1146967888832243003.a n = A157324 (n + 1)

theorem P1146967888832243003.correct : P1146967888832243003.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P1146967888832243003.a, A157324.P15345809453353872924.a, A017533, A017533.P146508076441825746.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P4295420883075284040

`(n+1)*A017173(A008586(n+1))`
-/

namespace A157324.P4295420883075284040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017173 (A008586 (n + 1)).toNat

end

end A157324.P4295420883075284040

namespace A157324

/-- `(n+1)*A017173(A008586(n+1))` -/
def P4295420883075284040.Spec : Prop :=
  ∀ n, P4295420883075284040.a n = A157324 (n + 1)

end A157324

/-! ## A157324.P13593362471370452274

`(n+1)*A016921(A008588(n+1))`
-/

namespace A157324.P13593362471370452274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016921 (A008588 (n + 1)).toNat

end

end A157324.P13593362471370452274

namespace A157324

/-- `(n+1)*A016921(A008588(n+1))` -/
def P13593362471370452274.Spec : Prop :=
  ∀ n, P13593362471370452274.a n = A157324 (n + 1)

end A157324

/-! ## A157324.P7218231219836225938

`(n+1)*A016813(9*(n+1))`
-/

namespace A157324.P7218231219836225938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016813 (9 * (n + 1))

end

end A157324.P7218231219836225938

namespace A157324

/-- `(n+1)*A016813(9*(n+1))` -/
def P7218231219836225938.Spec : Prop :=
  ∀ n, P7218231219836225938.a n = A157324 (n + 1)

theorem P7218231219836225938.correct : P7218231219836225938.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P7218231219836225938.a, A157324.P15345809453353872924.a, A016813, A016813.P15626904835145642280.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-! ## A157324.P1266153186650784464

`(n+1)*A016777(12*(n+1))`
-/

namespace A157324.P1266153186650784464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A016777 (12 * (n + 1))

end

end A157324.P1266153186650784464

namespace A157324

/-- `(n+1)*A016777(12*(n+1))` -/
def P1266153186650784464.Spec : Prop :=
  ∀ n, P1266153186650784464.a n = A157324 (n + 1)

theorem P1266153186650784464.correct : P1266153186650784464.Spec := by
  intro n
  simp only [A157324, Nat.add_sub_cancel, A157324.P1266153186650784464.a, A157324.P15345809453353872924.a, A016777, A016777.P9931792138852554157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157324

/-!
# A157325: a(n) = 1728*n + 24.

The programs for A157325, the canonical program `A157325.P261780219715092031` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157325 has offset 1).

The definition of A157325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157325.P261780219715092031

`24*(72*n+73)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157325

/-- `24*(72*n+73)` -/
def P261780219715092031.Spec : Prop :=
  ∀ n, (P261780219715092031.a n : ℤ) = A157325 (n + 1)

theorem P261780219715092031.correct : P261780219715092031.Spec := by
  intro n
  simp only [A157325, Nat.add_sub_cancel]

end A157325

/-!
# A157326: a(n) = 10368*n^2 + 288*n + 1.

The programs for A157326, the canonical program `A157326.P17646832408429129565` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157326 has offset 1).

The definition of A157326 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A157326.P17646832408429129565

`2*A017533(6*(n+1))²-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A157326

/-- `2*A017533(6*(n+1))²-1` -/
def P17646832408429129565.Spec : Prop :=
  ∀ n, P17646832408429129565.a n = A157326 (n + 1)

theorem P17646832408429129565.correct : P17646832408429129565.Spec := by
  intro n
  simp only [A157326, Nat.add_sub_cancel]

end A157326

/-! ## A157326.P15004662716697306390

`A154515(4*(n+1))`
-/

namespace A157326.P15004662716697306390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (4 * (n + 1))

end

end A157326.P15004662716697306390

namespace A157326

/-- `A154515(4*(n+1))` -/
def P15004662716697306390.Spec : Prop :=
  ∀ n, P15004662716697306390.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P17241335797898870885

`record[A154515(gcd(4, n)+n)]`
-/

namespace A157326.P17241335797898870885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (Nat.gcd 4 n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157326.P17241335797898870885

namespace A157326

/-- `record[A154515(gcd(4, n)+n)]` -/
def P17241335797898870885.Spec : Prop :=
  ∀ n, P17241335797898870885.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P13719383133567408325

`record[A154515(A271478(n+1))]`
-/

namespace A157326.P13719383133567408325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (A271478 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157326.P13719383133567408325

namespace A157326

/-- `record[A154515(A271478(n+1))]` -/
def P13719383133567408325.Spec : Prop :=
  ∀ n, P13719383133567408325.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P10007065081615798480

`2*A017534(6*(n+1))-1`
-/

namespace A157326.P10007065081615798480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A017534 (6 * (n + 1)) - 1

end

end A157326.P10007065081615798480

namespace A157326

/-- `2*A017534(6*(n+1))-1` -/
def P10007065081615798480.Spec : Prop :=
  ∀ n, P10007065081615798480.a n = A157326 (n + 1)

theorem P10007065081615798480.correct : P10007065081615798480.Spec := by
  intro n
  simp only [A157326, Nat.add_sub_cancel, A157326.P10007065081615798480.a, A157326.P17646832408429129565.a, A017533, A017533.P146508076441825746.a, A017534, A017534.P18326514334582417356.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157326

/-! ## A157326.P14766234872462411815

`A157337(9*(n+1))`
-/

namespace A157326.P14766234872462411815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (9 * (n + 1))

end

end A157326.P14766234872462411815

namespace A157326

/-- `A157337(9*(n+1))` -/
def P14766234872462411815.Spec : Prop :=
  ∀ n, P14766234872462411815.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P3689615356839186828

`∩[A154515(n+1), A157337(n+1)]`
-/

namespace A157326.P3689615356839186828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157326.P3689615356839186828

namespace A157326

/-- `∩[A154515(n+1), A157337(n+1)]` -/
def P3689615356839186828.Spec : Prop :=
  ∀ n, (P3689615356839186828.a n : ℤ) = A157326 (n + 1)

end A157326

/-! ## A157326.P12021011698397442029

`A081275(A008606(n+1))`
-/

namespace A157326.P12021011698397442029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081275 (A008606 (n + 1)).toNat

end

end A157326.P12021011698397442029

namespace A157326

/-- `A081275(A008606(n+1))` -/
def P12021011698397442029.Spec : Prop :=
  ∀ n, P12021011698397442029.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P11092920443411319115

`A069129(A158065(n+1))`
-/

namespace A157326.P11092920443411319115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A158065 (n + 1)).toNat

end

end A157326.P11092920443411319115

namespace A157326

/-- `A069129(A158065(n+1))` -/
def P11092920443411319115.Spec : Prop :=
  ∀ n, P11092920443411319115.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P13758070534283631141

`A069129(A044102(n+1)+1)`
-/

namespace A157326.P13758070534283631141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (A044102 (n + 1) + 1).toNat

end

end A157326.P13758070534283631141

namespace A157326

/-- `A069129(A044102(n+1)+1)` -/
def P13758070534283631141.Spec : Prop :=
  ∀ n, P13758070534283631141.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P16083710085468951969

`A298039(A298038(A008486(n+1)+n+1))`
-/

namespace A157326.P16083710085468951969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298039 (A298038 (A008486 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A157326.P16083710085468951969

namespace A157326

/-- `A298039(A298038(A008486(n+1)+n+1))` -/
def P16083710085468951969.Spec : Prop :=
  ∀ n, P16083710085468951969.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P3140920885007711380

`A077221(2*36*(n+1)+1)`
-/

namespace A157326.P3140920885007711380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (2 * (36 * (n + 1)) + 1)

end

end A157326.P3140920885007711380

namespace A157326

/-- `A077221(2*36*(n+1)+1)` -/
def P3140920885007711380.Spec : Prop :=
  ∀ n, P3140920885007711380.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P7266436109848021180

`4*A118000(72*(n+1))-3`
-/

namespace A157326.P7266436109848021180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A118000 (72 * (n + 1)) - 3

end

end A157326.P7266436109848021180

namespace A157326

/-- `4*A118000(72*(n+1))-3` -/
def P7266436109848021180.Spec : Prop :=
  ∀ n, P7266436109848021180.a n = A157326 (n + 1)

end A157326

/-! ## A157326.P17815740206256296792

`A056220(A157921(n+1)+2)`
-/

namespace A157326.P17815740206256296792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A157921 (n + 1) + 2).toNat

end

end A157326.P17815740206256296792

namespace A157326

/-- `A056220(A157921(n+1)+2)` -/
def P17815740206256296792.Spec : Prop :=
  ∀ n, P17815740206256296792.a n = A157326 (n + 1)

end A157326

/-!
# A157328: Expansion of 1/(1-2x*c(4x)) with c(x) g.f. of Catalan numbers (A000108).

The programs for A157328, the canonical program `A157328.P4452604043700386186` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157328 has offset 0).

The definition of A157328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064062, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A157328.P4452604043700386186

`2^n*A064062(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A157328

/-- `2^n*A064062(n)` -/
def P4452604043700386186.Spec : Prop :=
  ∀ n, P4452604043700386186.a n = A157328 n

theorem P4452604043700386186.correct : P4452604043700386186.Spec := by
  intro n
  simp only [A157328]

end A157328

/-! ## A157328.P6529324212249332535

`lcm(2^n, A114191(n))`
-/

namespace A157328.P6529324212249332535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) (A114191 n)

end

end A157328.P6529324212249332535

namespace A157328

/-- `lcm(2^n, A114191(n))` -/
def P6529324212249332535.Spec : Prop :=
  ∀ n, (P6529324212249332535.a n : ℤ) = A157328 n

end A157328

/-! ## A157328.P17373220688560417969

`A114191(n)*A122803(n)`
-/

namespace A157328.P17373220688560417969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114191 n * A122803 n

end

end A157328.P17373220688560417969

namespace A157328

/-- `A114191(n)*A122803(n)` -/
def P17373220688560417969.Spec : Prop :=
  ∀ n, P17373220688560417969.a n = A157328 n

end A157328

/-! ## A157328.P15236879726464090582

`lcm(A064062(n), A122803(n))`
-/

namespace A157328.P15236879726464090582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064062 n) (A122803 n)

end

end A157328.P15236879726464090582

namespace A157328

/-- `lcm(A064062(n), A122803(n))` -/
def P15236879726464090582.Spec : Prop :=
  ∀ n, (P15236879726464090582.a n : ℤ) = A157328 n

end A157328

/-! ## A157328.P14464595990712567433

`A000079(n)*A115193(A000217(n))`
-/

namespace A157328.P14464595990712567433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A115193 (A000217 n).toNat

end

end A157328.P14464595990712567433

namespace A157328

/-- `A000079(n)*A115193(A000217(n))` -/
def P14464595990712567433.Spec : Prop :=
  ∀ n, P14464595990712567433.a n = A157328 n

end A157328

/-! ## A157328.P12463856938470316746

`∑[A120588(n)*A122803(n)]*A122803(n)`
-/

namespace A157328.P12463856938470316746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 n * A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A122803 n

end

end A157328.P12463856938470316746

namespace A157328

/-- `∑[A120588(n)*A122803(n)]*A122803(n)` -/
def P12463856938470316746.Spec : Prop :=
  ∀ n, P12463856938470316746.a n = A157328 n

end A157328

/-! ## A157328.P10321338964100758802

`A052701(n+1)*A064062(n)/A000108(n)`
-/

namespace A157328.P10321338964100758802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052701 (n + 1) * A064062 n : ℚ) / (A000108 n : ℚ)

end

end A157328.P10321338964100758802

namespace A157328

/-- `A052701(n+1)*A064062(n)/A000108(n)` -/
def P10321338964100758802.Spec : Prop :=
  ∀ n, P10321338964100758802.a n = (A157328 n : ℚ)

end A157328

/-! ## A157328.P12299459656676107251

`2^n*A110506(∑[n])`
-/

namespace A157328.P12299459656676107251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A110506 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157328.P12299459656676107251

namespace A157328

/-- `2^n*A110506(∑[n])` -/
def P12299459656676107251.Spec : Prop :=
  ∀ n, P12299459656676107251.a n = A157328 n

end A157328

/-!
# A157330: a(n) = 64*n - 8.

The programs for A157330, the canonical program `A157330.P9870751338187584580` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157330 has offset 1).

The definition of A157330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `64*(n+1)-8` (program `A157330.P9870751338187584580`, by `A157330.P9870751338187584580.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157330.P9870751338187584580

`64*(n+1)-8`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157330

/-- `64*(n+1)-8` -/
def P9870751338187584580.Spec : Prop :=
  ∀ n, P9870751338187584580.a n = A157330 (n + 1)

theorem P9870751338187584580.correct : P9870751338187584580.Spec := by
  intro n
  simp only [A157330, Nat.add_sub_cancel]

end A157330

/-!
# A157331: a(n) = 128*n^2 - 32*n + 1.

The programs for A157331, the canonical program `A157331.P15354641868334867170` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157331 has offset 1).

The definition of A157331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `128*(n+1)²-32*(n+1)+1` (program `A157331.P15354641868334867170`, by `A157331.P15354641868334867170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157331.P15354641868334867170

`128*(n+1)²-32*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157331

/-- `128*(n+1)²-32*(n+1)+1` -/
def P15354641868334867170.Spec : Prop :=
  ∀ n, P15354641868334867170.a n = A157331 (n + 1)

theorem P15354641868334867170.correct : P15354641868334867170.Spec := by
  intro n
  simp only [A157331, Nat.add_sub_cancel]

end A157331

/-! ## A157331.P1641527831037034402

`xor(3, 2*(8*n+7)²)`
-/

namespace A157331.P1641527831037034402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * (8 * n + 7) ^ 2)

end

end A157331.P1641527831037034402

namespace A157331

/-- `xor(3, 2*(8*n+7)²)` -/
def P1641527831037034402.Spec : Prop :=
  ∀ n, (P1641527831037034402.a n : ℤ) = A157331 (n + 1)

end A157331

/-! ## A157331.P8714514219305518275

`A275543(8*n+7)`
-/

namespace A157331.P8714514219305518275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (8 * n + 7)

end

end A157331.P8714514219305518275

namespace A157331

/-- `A275543(8*n+7)` -/
def P8714514219305518275.Spec : Prop :=
  ∀ n, P8714514219305518275.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P10941545612369851988

`abs(2*A017150(n)-1)`
-/

namespace A157331.P10941545612369851988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A017150 n - 1|

end

end A157331.P10941545612369851988

namespace A157331

/-- `abs(2*A017150(n)-1)` -/
def P10941545612369851988.Spec : Prop :=
  ∀ n, P10941545612369851988.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P10789816820602800448

`A081593(2*(n+1))`
-/

namespace A157331.P10789816820602800448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081593 (2 * (n + 1))

end

end A157331.P10789816820602800448

namespace A157331

/-- `A081593(2*(n+1))` -/
def P10789816820602800448.Spec : Prop :=
  ∀ n, P10789816820602800448.a n = A157331 (n + 1)

theorem P10789816820602800448.correct : P10789816820602800448.Spec := by
  intro n
  simp only [A157331, Nat.add_sub_cancel, A157331.P10789816820602800448.a, A157331.P15354641868334867170.a, A081593, A081593.P2694235575521233725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157331

/-! ## A157331.P4252001950530172956

`A069129(4*(n+1))`
-/

namespace A157331.P4252001950530172956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (4 * (n + 1))

end

end A157331.P4252001950530172956

namespace A157331

/-- `A069129(4*(n+1))` -/
def P4252001950530172956.Spec : Prop :=
  ∀ n, P4252001950530172956.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P16647865621112881083

`or(1, A035008(record[xor(3, n)]))`
-/

namespace A157331.P16647865621112881083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A035008 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A157331.P16647865621112881083

namespace A157331

/-- `or(1, A035008(record[xor(3, n)]))` -/
def P16647865621112881083.Spec : Prop :=
  ∀ n, P16647865621112881083.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P2987428824162196103

`(A001539(A004767(n))-1)/2`
-/

namespace A157331.P2987428824162196103
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001539 (A004767 n).toNat - 1 : ℚ) / 2

end

end A157331.P2987428824162196103

namespace A157331

/-- `(A001539(A004767(n))-1)/2` -/
def P2987428824162196103.Spec : Prop :=
  ∀ n, P2987428824162196103.a n = (A157331 (n + 1) : ℚ)

end A157331

/-! ## A157331.P10256450847901313718

`A077221(record[xor(7, n)])`
-/

namespace A157331.P10256450847901313718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A157331.P10256450847901313718

namespace A157331

/-- `A077221(record[xor(7, n)])` -/
def P10256450847901313718.Spec : Prop :=
  ∀ n, P10256450847901313718.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P6872216792590282523

`A249356(8*n+6)`
-/

namespace A157331.P6872216792590282523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (8 * n + 6)

end

end A157331.P6872216792590282523

namespace A157331

/-- `A249356(8*n+6)` -/
def P6872216792590282523.Spec : Prop :=
  ∀ n, P6872216792590282523.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P12650034219737384045

`A056220(8*n+7)`
-/

namespace A157331.P12650034219737384045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (8 * n + 7)

end

end A157331.P12650034219737384045

namespace A157331

/-- `A056220(8*n+7)` -/
def P12650034219737384045.Spec : Prop :=
  ∀ n, P12650034219737384045.a n = A157331 (n + 1)

theorem P12650034219737384045.correct : P12650034219737384045.Spec := by
  intro n
  simp only [A157331, Nat.add_sub_cancel, A157331.P12650034219737384045.a, A157331.P15354641868334867170.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157331

/-! ## A157331.P16585936383456442824

`A077221(8*n+7)`
-/

namespace A157331.P16585936383456442824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (8 * n + 7)

end

end A157331.P16585936383456442824

namespace A157331

/-- `A077221(8*n+7)` -/
def P16585936383456442824.Spec : Prop :=
  ∀ n, P16585936383456442824.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P4367651876373887890

`A060626(8*n+6)/2`
-/

namespace A157331.P4367651876373887890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060626 (8 * n + 6) : ℚ) / 2

end

end A157331.P4367651876373887890

namespace A157331

/-- `A060626(8*n+6)/2` -/
def P4367651876373887890.Spec : Prop :=
  ∀ n, P4367651876373887890.a n = (A157331 (n + 1) : ℚ)

theorem P4367651876373887890.correct : P4367651876373887890.Spec := by
  intro n
  simp only [A157331, Nat.add_sub_cancel, A157331.P4367651876373887890.a, A157331.P15354641868334867170.a, A060626, A060626.P7741157105463878735.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157331

/-! ## A157331.P14765480803781950219

`A188653(2*(8*n+7))`
-/

namespace A157331.P14765480803781950219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188653 (2 * (8 * n + 7))

end

end A157331.P14765480803781950219

namespace A157331

/-- `A188653(2*(8*n+7))` -/
def P14765480803781950219.Spec : Prop :=
  ∀ n, P14765480803781950219.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P1487946887622720471

`A074148(A082285(n))`
-/

namespace A157331.P1487946887622720471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A082285 n).toNat

end

end A157331.P1487946887622720471

namespace A157331

/-- `A074148(A082285(n))` -/
def P1487946887622720471.Spec : Prop :=
  ∀ n, P1487946887622720471.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P8478869633078485522

`A105638(A008598(n+1))`
-/

namespace A157331.P8478869633078485522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A008598 (n + 1)).toNat

end

end A157331.P8478869633078485522

namespace A157331

/-- `A105638(A008598(n+1))` -/
def P8478869633078485522.Spec : Prop :=
  ∀ n, P8478869633078485522.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P7889067343127364326

`A326658(2*A017137(n))`
-/

namespace A157331.P7889067343127364326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (2 * A017137 n).toNat

end

end A157331.P7889067343127364326

namespace A157331

/-- `A326658(2*A017137(n))` -/
def P7889067343127364326.Spec : Prop :=
  ∀ n, P7889067343127364326.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P5491398545322567202

`A074148(2*A004771(n)-1)`
-/

namespace A157331.P5491398545322567202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (2 * A004771 n - 1).toNat

end

end A157331.P5491398545322567202

namespace A157331

/-- `A074148(2*A004771(n)-1)` -/
def P5491398545322567202.Spec : Prop :=
  ∀ n, P5491398545322567202.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P13945823432872915021

`A194274(A017137(2*n+1)-1)`
-/

namespace A157331.P13945823432872915021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A017137 (2 * n + 1) - 1).toNat

end

end A157331.P13945823432872915021

namespace A157331

/-- `A194274(A017137(2*n+1)-1)` -/
def P13945823432872915021.Spec : Prop :=
  ∀ n, P13945823432872915021.a n = A157331 (n + 1)

end A157331

/-! ## A157331.P5778818225669051415

`A194274(A016813(A004767(n)))`
-/

namespace A157331.P5778818225669051415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A016813 (A004767 n).toNat).toNat

end

end A157331.P5778818225669051415

namespace A157331

/-- `A194274(A016813(A004767(n)))` -/
def P5778818225669051415.Spec : Prop :=
  ∀ n, P5778818225669051415.a n = A157331 (n + 1)

end A157331

/-!
# A157334: First differences of A156799.

The programs for A157334, there is no canonical definition to state claims against.
-/

/-! ## A157334.P8094195625915444473

`Δ[A156799(n+1)]`
-/

namespace A157334.P8094195625915444473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157334.P8094195625915444473

/-! ## A157334.P8252800859591104453

`Δ[eq[1, A090822(n+1)]]`
-/

namespace A157334.P8252800859591104453
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157334.P8252800859591104453

/-! ## A157334.P15301821274542215004

`Δ[eq[1, A116909(n+1)]]`
-/

namespace A157334.P15301821274542215004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116909 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157334.P15301821274542215004

/-! ## A157334.P2123036862989353880

`Δ[lt[A174998(n+1), 0]]`
-/

namespace A157334.P2123036862989353880
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174998 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A157334.P2123036862989353880

/-! ## A157334.P11853316191614303229

`abs(Δ[A156799(-xor(n, -1))])`
-/

namespace A157334.P11853316191614303229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156799 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A157334.P11853316191614303229

/-! ## A157334.P3274035255989800816

`abs(Δ[A156799(n-log2(1/2))])`
-/

namespace A157334.P3274035255989800816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156799 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A157334.P3274035255989800816

/-! ## A157334.P10060994591182314109

`Δ[record[A156799(A134478(n))]]`
-/

namespace A157334.P10060994591182314109
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156799 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157334.P10060994591182314109

/-! ## A157334.P10538463274812313989

`A156799(n+2)-A156799(n+1)`
-/

namespace A157334.P10538463274812313989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156799 (n + 2) - A156799 (n + 1)

end

end A157334.P10538463274812313989

/-! ## A157334.P16879959790507068825

`A000027(Δ[A156799(n-log2(1/2))])`
-/

namespace A157334.P16879959790507068825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156799 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A157334.P16879959790507068825

/-!
# A157335: Expansion of 1/( (1+x)*(1-7*x+x^2) ).

The programs for A157335, the canonical program `A157335.P2350550711262390451` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157335 has offset 0).

The definition of A157335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x-6x^2+x^3))` (program `A157335.P2350550711262390451`, by `A157335.P2350550711262390451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157335.P2350550711262390451

`ogf(1/(1-6x-6x^2+x^3))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157335

/-- `ogf(1/(1-6x-6x^2+x^3))` -/
def P2350550711262390451.Spec : Prop :=
  ∀ n, P2350550711262390451.a n = A157335 n

theorem P2350550711262390451.correct : P2350550711262390451.Spec := by
  intro n
  simp only [A157335]

end A157335

/-! ## A157335.P1977637455853790416

`7*a(n-1)-a(n-2)+(-1)^n` with `a(0)=1, a(1)=6`
-/

namespace A157335.P1977637455853790416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  7 * a (n - 1) - a (n - 2) + (-1) ^ n

end

end A157335.P1977637455853790416

namespace A157335

/-- `7*a(n-1)-a(n-2)+(-1)^n` -/
def P1977637455853790416.Spec : Prop :=
  ∀ n, P1977637455853790416.a n = A157335 n

end A157335

/-! ## A157335.P9691912836086341804

`6*a(n-1)+6*a(n-2)-a(n-3)` with `a(0)=1, a(1)=6, a(2)=42`
-/

namespace A157335.P9691912836086341804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 42] fun n a =>
  6 * a (n - 1) + 6 * a (n - 2) - a (n - 3)

end

end A157335.P9691912836086341804

namespace A157335

/-- `6*a(n-1)+6*a(n-2)-a(n-3)` -/
def P9691912836086341804.Spec : Prop :=
  ∀ n, P9691912836086341804.a n = A157335 n

end A157335

/-! ## A157335.P13393719884305581971

`A152119(n+1)*A152119(n+2)`
-/

namespace A157335.P13393719884305581971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152119 (n + 1) * A152119 (n + 2)

end

end A157335.P13393719884305581971

namespace A157335

/-- `A152119(n+1)*A152119(n+2)` -/
def P13393719884305581971.Spec : Prop :=
  ∀ n, P13393719884305581971.a n = A157335 n

end A157335

/-! ## A157335.P16361432498828953979

`∑[floor(ϕ²²*a(n-1))]-a(n-1)` with `a(0)=1`
-/

namespace A157335.P16361432498828953979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A157335.P16361432498828953979

namespace A157335

/-- `∑[floor(ϕ²²*a(n-1))]-a(n-1)` -/
def P16361432498828953979.Spec : Prop :=
  ∀ n, P16361432498828953979.a n = A157335 n

end A157335

/-! ## A157335.P18033034421314750037

`∑[A098305(n+1)]`
-/

namespace A157335.P18033034421314750037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157335.P18033034421314750037

namespace A157335

/-- `∑[A098305(n+1)]` -/
def P18033034421314750037.Spec : Prop :=
  ∀ n, P18033034421314750037.a n = A157335 n

end A157335

/-! ## A157335.P524535337427736503

`Δ[abs(∑[A156088(n)])]`
-/

namespace A157335.P524535337427736503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A157335.P524535337427736503

namespace A157335

/-- `Δ[abs(∑[A156088(n)])]` -/
def P524535337427736503.Spec : Prop :=
  ∀ n, P524535337427736503.a n = A157335 n

end A157335

/-! ## A157335.P16163224722999569432

`A099483(2*(n+1))/3`
-/

namespace A157335.P16163224722999569432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099483 (2 * (n + 1)) : ℚ) / 3

end

end A157335.P16163224722999569432

namespace A157335

/-- `A099483(2*(n+1))/3` -/
def P16163224722999569432.Spec : Prop :=
  ∀ n, P16163224722999569432.a n = (A157335 n : ℚ)

end A157335

/-! ## A157335.P13892250230009307541

`A049685(n)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A157335.P13892250230009307541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  A049685 n + a (n - 2)

end

end A157335.P13892250230009307541

namespace A157335

/-- `A049685(n)+a(n-2)` -/
def P13892250230009307541.Spec : Prop :=
  ∀ n, P13892250230009307541.a n = A157335 n

end A157335

/-! ## A157335.P1737065879000984849

`A004187(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A157335.P1737065879000984849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004187 (n + 1) - a (n - 1)

end

end A157335.P1737065879000984849

namespace A157335

/-- `A004187(n+1)-a(n-1)` -/
def P1737065879000984849.Spec : Prop :=
  ∀ n, P1737065879000984849.a n = A157335 n

end A157335

/-! ## A157335.P13112111227331059692

`A293543(4*(n+1))-a(n-1)` with `a(0)=1`
-/

namespace A157335.P13112111227331059692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293543 (4 * (n + 1)) - a (n - 1)

end

end A157335.P13112111227331059692

namespace A157335

/-- `A293543(4*(n+1))-a(n-1)` -/
def P13112111227331059692.Spec : Prop :=
  ∀ n, P13112111227331059692.a n = A157335 n

end A157335

/-! ## A157335.P10095793843625486201

`a(n-1)+A094567(n)+a(n-1)` with `a(0)=1`
-/

namespace A157335.P10095793843625486201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A094567 n + a (n - 1))

end

end A157335.P10095793843625486201

namespace A157335

/-- `a(n-1)+A094567(n)+a(n-1)` -/
def P10095793843625486201.Spec : Prop :=
  ∀ n, P10095793843625486201.a n = A157335 n

end A157335

/-! ## A157335.P13180356590371987969

`A156561(2*n+3)-A156561(2*(n+1))`
-/

namespace A157335.P13180356590371987969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156561 (2 * n + 3) - A156561 (2 * (n + 1))

end

end A157335.P13180356590371987969

namespace A157335

/-- `A156561(2*n+3)-A156561(2*(n+1))` -/
def P13180356590371987969.Spec : Prop :=
  ∀ n, P13180356590371987969.a n = A157335 n

end A157335

/-! ## A157335.P12397003902901850505

`A057088(n+1)/A000351(n+1)*A057088(n)`
-/

namespace A157335.P12397003902901850505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057088 (n + 1) : ℚ) / (A000351 (n + 1) : ℚ) * (A057088 n : ℚ)

end

end A157335.P12397003902901850505

namespace A157335

/-- `A057088(n+1)/A000351(n+1)*A057088(n)` -/
def P12397003902901850505.Spec : Prop :=
  ∀ n, P12397003902901850505.a n = (A157335 n : ℚ)

end A157335

/-! ## A157335.P6033930083319354928

`∑[floor(ceil((A000032(4*(n+1))+1)/3)/3)]`
-/

namespace A157335.P6033930083319354928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈(A000032 (4 * (n + 1)) + 1 : ℚ) / 3⌉ : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157335.P6033930083319354928

namespace A157335

/-- `∑[floor(ceil((A000032(4*(n+1))+1)/3)/3)]` -/
def P6033930083319354928.Spec : Prop :=
  ∀ n, P6033930083319354928.a n = A157335 n

end A157335

/-! ## A157335.P11305009958597211440

`A214992(n)-A049685(n+1)`
-/

namespace A157335.P11305009958597211440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214992 n - A049685 (n + 1)

end

end A157335.P11305009958597211440

namespace A157335

/-- `A214992(n)-A049685(n+1)` -/
def P11305009958597211440.Spec : Prop :=
  ∀ n, P11305009958597211440.a n = A157335 n

end A157335

/-! ## A157335.P18105233803605275089

`A004187(n+3)-A214992(n+1)`
-/

namespace A157335.P18105233803605275089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 3) - A214992 (n + 1)

end

end A157335.P18105233803605275089

namespace A157335

/-- `A004187(n+3)-A214992(n+1)` -/
def P18105233803605275089.Spec : Prop :=
  ∀ n, P18105233803605275089.a n = A157335 n

end A157335

/-!
# A157336: a(n) = 8*(8*n + 1).

The programs for A157336, the canonical program `A157336.P6419249448582061582` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157336 has offset 1).

The definition of A157336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*(8*(n+1)+1)` (program `A157336.P6419249448582061582`, by `A157336.P6419249448582061582.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157336.P18391172965499424506

`64*(n+1)+8`
-/

namespace A157336.P18391172965499424506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64 * (n + 1) + 8

end

end A157336.P18391172965499424506

namespace A157336

/-- `64*(n+1)+8` -/
def P18391172965499424506.Spec : Prop :=
  ∀ n, (P18391172965499424506.a n : ℤ) = A157336 (n + 1)

theorem P18391172965499424506.correct : P18391172965499424506.Spec := by
  intro n
  simp only [A157336, Nat.add_sub_cancel, A157336.P18391172965499424506.a, A157336.P6419249448582061582.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A157336

/-! ## A157336.P6419249448582061582

`8*(8*(n+1)+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157336

/-- `8*(8*(n+1)+1)` -/
def P6419249448582061582.Spec : Prop :=
  ∀ n, (P6419249448582061582.a n : ℤ) = A157336 (n + 1)

theorem P6419249448582061582.correct : P6419249448582061582.Spec := by
  intro n
  simp only [A157336, Nat.add_sub_cancel]

end A157336

/-!
# A157337: a(n) = 128*n^2 + 32*n + 1.

The programs for A157337, the canonical program `A157337.P630669980650984077` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157337 has offset 1).

The definition of A157337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `128*(n+1)²+32*(n+1)+1` (program `A157337.P630669980650984077`, by `A157337.P630669980650984077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157337.P630669980650984077

`128*(n+1)²+32*(n+1)+1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157337

/-- `128*(n+1)²+32*(n+1)+1` -/
def P630669980650984077.Spec : Prop :=
  ∀ n, (P630669980650984077.a n : ℤ) = A157337 (n + 1)

theorem P630669980650984077.correct : P630669980650984077.Spec := by
  intro n
  simp only [A157337, Nat.add_sub_cancel]

end A157337

/-! ## A157337.P3009089672591842466

`A275543(8*n+9)`
-/

namespace A157337.P3009089672591842466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275543 (8 * n + 9)

end

end A157337.P3009089672591842466

namespace A157337

/-- `A275543(8*n+9)` -/
def P3009089672591842466.Spec : Prop :=
  ∀ n, P3009089672591842466.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P11497365782770731859

`or(1, A275543(A004768(n)))`
-/

namespace A157337.P11497365782770731859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A275543 (A004768 n).toNat)

end

end A157337.P11497365782770731859

namespace A157337

/-- `or(1, A275543(A004768(n)))` -/
def P11497365782770731859.Spec : Prop :=
  ∀ n, P11497365782770731859.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P2802448103090885024

`xor(3, 2*(A016945(n+1)+2*n)²)`
-/

namespace A157337.P2802448103090885024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (2 * (A016945 (n + 1) + (2 * n : ℤ)) ^ 2)

end

end A157337.P2802448103090885024

namespace A157337

/-- `xor(3, 2*(A016945(n+1)+2*n)²)` -/
def P2802448103090885024.Spec : Prop :=
  ∀ n, P2802448103090885024.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P2300514838926749577

`A069129(4*n+5)`
-/

namespace A157337.P2300514838926749577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (4 * n + 5)

end

end A157337.P2300514838926749577

namespace A157337

/-- `A069129(4*n+5)` -/
def P2300514838926749577.Spec : Prop :=
  ∀ n, P2300514838926749577.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P18174229215154947282

`A249356(8*(n+1))`
-/

namespace A157337.P18174229215154947282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249356 (8 * (n + 1))

end

end A157337.P18174229215154947282

namespace A157337

/-- `A249356(8*(n+1))` -/
def P18174229215154947282.Spec : Prop :=
  ∀ n, P18174229215154947282.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P2404894010335482727

`A056220(8*n+9)`
-/

namespace A157337.P2404894010335482727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (8 * n + 9)

end

end A157337.P2404894010335482727

namespace A157337

/-- `A056220(8*n+9)` -/
def P2404894010335482727.Spec : Prop :=
  ∀ n, P2404894010335482727.a n = A157337 (n + 1)

theorem P2404894010335482727.correct : P2404894010335482727.Spec := by
  intro n
  simp only [A157337, Nat.add_sub_cancel, A157337.P2404894010335482727.a, A157337.P630669980650984077.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157337

/-! ## A157337.P639975693648647265

`A077221(8*n+9)`
-/

namespace A157337.P639975693648647265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077221 (8 * n + 9)

end

end A157337.P639975693648647265

namespace A157337

/-- `A077221(8*n+9)` -/
def P639975693648647265.Spec : Prop :=
  ∀ n, P639975693648647265.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P10497240880963463473

`abs(2*A000290(8*(n+1)+1)-1)`
-/

namespace A157337.P10497240880963463473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A000290 (8 * (n + 1) + 1) - 1|

end

end A157337.P10497240880963463473

namespace A157337

/-- `abs(2*A000290(8*(n+1)+1)-1)` -/
def P10497240880963463473.Spec : Prop :=
  ∀ n, P10497240880963463473.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P10171434804905238672

`A060626(A008590(n+1))/2`
-/

namespace A157337.P10171434804905238672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060626 (A008590 (n + 1)).toNat : ℚ) / 2

end

end A157337.P10171434804905238672

namespace A157337

/-- `A060626(A008590(n+1))/2` -/
def P10171434804905238672.Spec : Prop :=
  ∀ n, P10171434804905238672.a n = (A157337 (n + 1) : ℚ)

end A157337

/-! ## A157337.P595225693527342533

`A074148(A158057(n+1))`
-/

namespace A157337.P595225693527342533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A158057 (n + 1)).toNat

end

end A157337.P595225693527342533

namespace A157337

/-- `A074148(A158057(n+1))` -/
def P595225693527342533.Spec : Prop :=
  ∀ n, P595225693527342533.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P1666109973717586681

`A047838(A063116(n+2))`
-/

namespace A157337.P1666109973717586681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A063116 (n + 2)).toNat

end

end A157337.P1666109973717586681

namespace A157337

/-- `A047838(A063116(n+2))` -/
def P1666109973717586681.Spec : Prop :=
  ∀ n, P1666109973717586681.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P17861672774403951871

`A105638(A063110(n+2))`
-/

namespace A157337.P17861672774403951871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A063110 (n + 2)).toNat

end

end A157337.P17861672774403951871

namespace A157337

/-- `A105638(A063110(n+2))` -/
def P17861672774403951871.Spec : Prop :=
  ∀ n, P17861672774403951871.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P14122665506024608366

`A105638(A119413(n+2))`
-/

namespace A157337.P14122665506024608366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (A119413 (n + 2)).toNat

end

end A157337.P14122665506024608366

namespace A157337

/-- `A105638(A119413(n+2))` -/
def P14122665506024608366.Spec : Prop :=
  ∀ n, P14122665506024608366.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P573519754261277598

`A105638(2*A017089(n+1))`
-/

namespace A157337.P573519754261277598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (2 * A017089 (n + 1)).toNat

end

end A157337.P573519754261277598

namespace A157337

/-- `A105638(2*A017089(n+1))` -/
def P573519754261277598.Spec : Prop :=
  ∀ n, P573519754261277598.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P16433471525475979951

`A326658(A008590(2*(n+1)))`
-/

namespace A157337.P16433471525475979951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A008590 (2 * (n + 1))).toNat

end

end A157337.P16433471525475979951

namespace A157337

/-- `A326658(A008590(2*(n+1)))` -/
def P16433471525475979951.Spec : Prop :=
  ∀ n, P16433471525475979951.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P6560606243765737165

`A326658(2*(A017137(n)+2))`
-/

namespace A157337.P6560606243765737165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (2 * (A017137 n + 2)).toNat

end

end A157337.P6560606243765737165

namespace A157337

/-- `A326658(2*(A017137(n)+2))` -/
def P6560606243765737165.Spec : Prop :=
  ∀ n, P6560606243765737165.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P12679256235104348018

`A194274(A016813(4*(n+1)))`
-/

namespace A157337.P12679256235104348018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A016813 (4 * (n + 1))).toNat

end

end A157337.P12679256235104348018

namespace A157337

/-- `A194274(A016813(4*(n+1)))` -/
def P12679256235104348018.Spec : Prop :=
  ∀ n, P12679256235104348018.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P8267374953206089764

`A074148(A004771(2*n+1)+2)`
-/

namespace A157337.P8267374953206089764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A004771 (2 * n + 1) + 2).toNat

end

end A157337.P8267374953206089764

namespace A157337

/-- `A074148(A004771(2*n+1)+2)` -/
def P8267374953206089764.Spec : Prop :=
  ∀ n, P8267374953206089764.a n = A157337 (n + 1)

end A157337

/-! ## A157337.P5414800173718952443

`A194274(A008600(n+1)-(2*n+1))`
-/

namespace A157337.P5414800173718952443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194274 (A008600 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A157337.P5414800173718952443

namespace A157337

/-- `A194274(A008600(n+1)-(2*n+1))` -/
def P5414800173718952443.Spec : Prop :=
  ∀ n, P5414800173718952443.a n = A157337 (n + 1)

end A157337

/-!
# A157338: First primes in successive prime centuries.

The programs for A157338, there is no canonical definition to state claims against.
-/

/-! ## A157338.P8670759235078148882

`A218255(10*n)`
-/

namespace A157338.P8670759235078148882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218255 (10 * n)

end

end A157338.P8670759235078148882

/-! ## A157338.P10067653594452647401

`A118754(20*n)`
-/

namespace A157338.P10067653594452647401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118754 (20 * n)

end

end A157338.P10067653594452647401

/-! ## A157338.P11272921638123161365

`A118753(25*n)`
-/

namespace A157338.P11272921638123161365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (25 * n)

end

end A157338.P11272921638123161365

/-! ## A157338.P16989316057100551861

`A060264(50*n)`
-/

namespace A157338.P16989316057100551861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (50 * n)

end

end A157338.P16989316057100551861

/-! ## A157338.P15402560656676957264

`A007918(10*10*n)`
-/

namespace A157338.P15402560656676957264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (10 * (10 * n))

end

end A157338.P15402560656676957264

/-!
# A157339: Quadrisection A157334(4n+3).

The programs for A157339, there is no canonical definition to state claims against.
-/

/-! ## A157339.P5216912612292358007

`A157334(4*n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A157339.P5216912612292358007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157334 (4 * n + 3)

end

end A157339.P5216912612292358007

/-! ## A157339.P13951054549681701454

`Δ[A156799(4*n+1)]-4`
-/

namespace A157339.P13951054549681701454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156799 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A157339.P13951054549681701454

/-! ## A157339.P8206006127580882705

`A092432(val(n+1, 2)+2)+1`
-/

namespace A157339.P8206006127580882705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (SequenceMachineLib.valuation (n + 1) 2 + 2) + 1

end

end A157339.P8206006127580882705

/-! ## A157339.P17721338879187409072

`A092432(A085058(n))+1`
-/

namespace A157339.P17721338879187409072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A085058 n).toNat + 1

end

end A157339.P17721338879187409072

/-! ## A157339.P3699044905658687183

`A092432(A089080(n+2))+1`
-/

namespace A157339.P3699044905658687183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A089080 (n + 2)).toNat + 1

end

end A157339.P3699044905658687183

/-! ## A157339.P15938709083187335724

`A092432(A001511(n+1)+1)+1`
-/

namespace A157339.P15938709083187335724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092432 (A001511 (n + 1) + 1).toNat + 1

end

end A157339.P15938709083187335724

/-! ## A157339.P14938810694858809387

`2-(A000108(A151878(n))-A092432(A085058(n)))`
-/

namespace A157339.P14938810694858809387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A000108 (A151878 n).toNat - A092432 (A085058 n).toNat)

end

end A157339.P14938810694858809387

/-!
# A157342: Semiprimes that are the product of two non-Sophie Germain primes.

The programs for A157342, the canonical program `A157342.P11722525419622365647` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157342 has offset 1).

The definition of A157342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157342.P12089656612375625098

`∩[A001358(n+1), A350704(n+1)]`
-/

namespace A157342.P12089656612375625098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P12089656612375625098

namespace A157342

/-- `∩[A001358(n+1), A350704(n+1)]` -/
def P12089656612375625098.Spec : Prop :=
  ∀ n, (P12089656612375625098.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P11722525419622365647

`∩[A350704(n+1), A391330(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A157342

/-- `∩[A350704(n+1), A391330(n+1)]` -/
def P11722525419622365647.Spec : Prop :=
  ∀ n, (P11722525419622365647.a n : ℤ) = A157342 (n + 1)

theorem P11722525419622365647.correct : P11722525419622365647.Spec := by
  intro n
  simp only [A157342, Nat.add_sub_cancel]

end A157342

/-! ## A157342.P7928768631409823383

`filter[A350704(n+1), A064911(#)]`
-/

namespace A157342.P7928768631409823383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A157342.P7928768631409823383

namespace A157342

/-- `filter[A350704(n+1), A064911(#)]` -/
def P7928768631409823383.Spec : Prop :=
  ∀ n, P7928768631409823383.a n = A157342 (n + 1)

end A157342

/-! ## A157342.P14265691569304282667

`filter[A350704(n+1), A101040(#)]`
-/

namespace A157342.P14265691569304282667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A157342.P14265691569304282667

namespace A157342

/-- `filter[A350704(n+1), A101040(#)]` -/
def P14265691569304282667.Spec : Prop :=
  ∀ n, P14265691569304282667.a n = A157342 (n + 1)

end A157342

/-! ## A157342.P4747151049897589469

`filter[A350704(n+1), A353480(#)]`
-/

namespace A157342.P4747151049897589469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A157342.P4747151049897589469

namespace A157342

/-- `filter[A350704(n+1), A353480(#)]` -/
def P4747151049897589469.Spec : Prop :=
  ∀ n, P4747151049897589469.a n = A157342 (n + 1)

end A157342

/-! ## A157342.P18080887763263242300

`∩[A280389(n+1), A350704(n+1)]`
-/

namespace A157342.P18080887763263242300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P18080887763263242300

namespace A157342

/-- `∩[A280389(n+1), A350704(n+1)]` -/
def P18080887763263242300.Spec : Prop :=
  ∀ n, (P18080887763263242300.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P11527709398407579775

`filter[A156543(n+1), A064911(#)]`
-/

namespace A157342.P11527709398407579775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A157342.P11527709398407579775

namespace A157342

/-- `filter[A156543(n+1), A064911(#)]` -/
def P11527709398407579775.Spec : Prop :=
  ∀ n, P11527709398407579775.a n = A157342 (n + 1)

end A157342

/-! ## A157342.P16392981352708812600

`filter[A156543(n+1), A353480(#)]`
-/

namespace A157342.P16392981352708812600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A157342.P16392981352708812600

namespace A157342

/-- `filter[A156543(n+1), A353480(#)]` -/
def P16392981352708812600.Spec : Prop :=
  ∀ n, P16392981352708812600.a n = A157342 (n + 1)

end A157342

/-! ## A157342.P4358918529720812004

`∩[A001358(n+1), A156543(n+1)]`
-/

namespace A157342.P4358918529720812004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P4358918529720812004

namespace A157342

/-- `∩[A001358(n+1), A156543(n+1)]` -/
def P4358918529720812004.Spec : Prop :=
  ∀ n, (P4358918529720812004.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P9209328369865556634

`∩[A156543(n+1), A280389(n+1)]`
-/

namespace A157342.P9209328369865556634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P9209328369865556634

namespace A157342

/-- `∩[A156543(n+1), A280389(n+1)]` -/
def P9209328369865556634.Spec : Prop :=
  ∀ n, (P9209328369865556634.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P16545836670643096702

`∩[A156543(n+1), A391330(n+1)]`
-/

namespace A157342.P16545836670643096702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P16545836670643096702

namespace A157342

/-- `∩[A156543(n+1), A391330(n+1)]` -/
def P16545836670643096702.Spec : Prop :=
  ∀ n, (P16545836670643096702.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P6215866450677034553

`∩[A046315(n+1), A156543(n+1)]`
-/

namespace A157342.P6215866450677034553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P6215866450677034553

namespace A157342

/-- `∩[A046315(n+1), A156543(n+1)]` -/
def P6215866450677034553.Spec : Prop :=
  ∀ n, (P6215866450677034553.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P4489850762965399

`∩[A046315(n+1), A350704(n+1)]`
-/

namespace A157342.P4489850762965399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P4489850762965399

namespace A157342

/-- `∩[A046315(n+1), A350704(n+1)]` -/
def P4489850762965399.Spec : Prop :=
  ∀ n, (P4489850762965399.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P8124949870975542704

`∩[A176540(n+1), A350704(n+1)]`
-/

namespace A157342.P8124949870975542704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P8124949870975542704

namespace A157342

/-- `∩[A176540(n+1), A350704(n+1)]` -/
def P8124949870975542704.Spec : Prop :=
  ∀ n, (P8124949870975542704.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P6884092801674468841

`∩[A156543(n+1), A339424(n+1)]`
-/

namespace A157342.P6884092801674468841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P6884092801674468841

namespace A157342

/-- `∩[A156543(n+1), A339424(n+1)]` -/
def P6884092801674468841.Spec : Prop :=
  ∀ n, (P6884092801674468841.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P5328500065288278615

`∩[A339424(n+1), A350704(n+1)]`
-/

namespace A157342.P5328500065288278615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P5328500065288278615

namespace A157342

/-- `∩[A339424(n+1), A350704(n+1)]` -/
def P5328500065288278615.Spec : Prop :=
  ∀ n, (P5328500065288278615.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P17389132720326764557

`∩[A077135(n+1), A156543(n+1)]`
-/

namespace A157342.P17389132720326764557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P17389132720326764557

namespace A157342

/-- `∩[A077135(n+1), A156543(n+1)]` -/
def P17389132720326764557.Spec : Prop :=
  ∀ n, (P17389132720326764557.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P2866637715209369013

`∩[A077135(n+1), A350704(n+1)]`
-/

namespace A157342.P2866637715209369013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P2866637715209369013

namespace A157342

/-- `∩[A077135(n+1), A350704(n+1)]` -/
def P2866637715209369013.Spec : Prop :=
  ∀ n, (P2866637715209369013.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P4241806902250867237

`∩[A077136(n+1), A156543(n+1)]`
-/

namespace A157342.P4241806902250867237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P4241806902250867237

namespace A157342

/-- `∩[A077136(n+1), A156543(n+1)]` -/
def P4241806902250867237.Spec : Prop :=
  ∀ n, (P4241806902250867237.a n : ℤ) = A157342 (n + 1)

end A157342

/-! ## A157342.P14299760936574798232

`∩[A077136(n+1), A350704(n+1)]`
-/

namespace A157342.P14299760936574798232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157342.P14299760936574798232

namespace A157342

/-- `∩[A077136(n+1), A350704(n+1)]` -/
def P14299760936574798232.Spec : Prop :=
  ∀ n, (P14299760936574798232.a n : ℤ) = A157342 (n + 1)

end A157342

/-!
# A157343: Triangle T(n,k) read by rows: T(n,k)=1 if the row index n is prime or <=1, otherwise T(n,k) = T(n-1,k)+T(n-1,k-1).

The programs for A157343, there is no canonical definition to state claims against.
-/

/-! ## A157343.P125968251437097329

`A094840(A154221(n))`
-/

namespace A157343.P125968251437097329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094840 (A154221 n).toNat

end

end A157343.P125968251437097329

/-! ## A157343.P16289552966774417076

`A204897(A154221(n)²)`
-/

namespace A157343.P16289552966774417076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204897 (A154221 n ^ 2).toNat

end

end A157343.P16289552966774417076

/-! ## A157343.P17042824150144743907

`gcd(2, A217710(A176151(n)))`
-/

namespace A157343.P17042824150144743907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A217710 (A176151 n).toNat)

end

end A157343.P17042824150144743907

/-! ## A157343.P7191661206066362280

`A204897(A154221(n)*A154221(n))`
-/

namespace A157343.P7191661206066362280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204897 (A154221 n * A154221 n).toNat

end

end A157343.P7191661206066362280

/-! ## A157343.P14728367959752993006

`A001511(A047086(A003056(n)%A154986(n)))`
-/

namespace A157343.P14728367959752993006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A047086 (Int.tmod (A003056 n) (A154986 n)).toNat).toNat

end

end A157343.P14728367959752993006

/-!
# A157344: Semiprimes that are the product of two distinct Sophie Germain primes.

The programs for A157344, the canonical program `A157344.P10715406325733899786` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157344 has offset 1).

The definition of A157344 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1501 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157344.P634214283257652965

`∩[A005117(n+1), A111206(n+1)]`
-/

namespace A157344.P634214283257652965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157344.P634214283257652965

namespace A157344

/-- `∩[A005117(n+1), A111206(n+1)]` -/
def P634214283257652965.Spec : Prop :=
  ∀ n, (P634214283257652965.a n : ℤ) = A157344 (n + 1)

end A157344

/-! ## A157344.P10715406325733899786

`filter[A111206(n+1), A049240(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A157344

/-- `filter[A111206(n+1), A049240(#)]` -/
def P10715406325733899786.Spec : Prop :=
  ∀ n, P10715406325733899786.a n = A157344 (n + 1)

theorem P10715406325733899786.correct : P10715406325733899786.Spec := by
  intro n
  simp only [A157344, Nat.add_sub_cancel]

end A157344

/-! ## A157344.P17113298882969624277

`filter[A111206(n+1), A181183(#)]`
-/

namespace A157344.P17113298882969624277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A157344.P17113298882969624277

namespace A157344

/-- `filter[A111206(n+1), A181183(#)]` -/
def P17113298882969624277.Spec : Prop :=
  ∀ n, P17113298882969624277.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P11668782668468352955

`filter[A111206(n+1), A262684(#)]`
-/

namespace A157344.P11668782668468352955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A157344.P11668782668468352955

namespace A157344

/-- `filter[A111206(n+1), A262684(#)]` -/
def P11668782668468352955.Spec : Prop :=
  ∀ n, P11668782668468352955.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P8186964373968471753

`filter[A111206(n+1), A280710(#)]`
-/

namespace A157344.P8186964373968471753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A157344.P8186964373968471753

namespace A157344

/-- `filter[A111206(n+1), A280710(#)]` -/
def P8186964373968471753.Spec : Prop :=
  ∀ n, P8186964373968471753.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P6494217817161900008

`filter[A111206(n+1), A295316(#)]`
-/

namespace A157344.P6494217817161900008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A157344.P6494217817161900008

namespace A157344

/-- `filter[A111206(n+1), A295316(#)]` -/
def P6494217817161900008.Spec : Prop :=
  ∀ n, P6494217817161900008.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P16904180387542162273

`filter[A111206(n+1), A323154(#)]`
-/

namespace A157344.P16904180387542162273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A157344.P16904180387542162273

namespace A157344

/-- `filter[A111206(n+1), A323154(#)]` -/
def P16904180387542162273.Spec : Prop :=
  ∀ n, P16904180387542162273.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P18373409972434312270

`filter[A156541(n+1), A280710(#)]`
-/

namespace A157344.P18373409972434312270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A157344.P18373409972434312270

namespace A157344

/-- `filter[A156541(n+1), A280710(#)]` -/
def P18373409972434312270.Spec : Prop :=
  ∀ n, P18373409972434312270.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P4256514887384066100

`filter[A111206(n+1), A343219(#)]`
-/

namespace A157344.P4256514887384066100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A343219 (f1 j).toNat = 1) n)

end

end A157344.P4256514887384066100

namespace A157344

/-- `filter[A111206(n+1), A343219(#)]` -/
def P4256514887384066100.Spec : Prop :=
  ∀ n, P4256514887384066100.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P14764248017597345449

`filter[A111206(n+1), A353471(#)]`
-/

namespace A157344.P14764248017597345449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A157344.P14764248017597345449

namespace A157344

/-- `filter[A111206(n+1), A353471(#)]` -/
def P14764248017597345449.Spec : Prop :=
  ∀ n, P14764248017597345449.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P8068863706935941263

`filter[A111206(n+1), A353519(#)]`
-/

namespace A157344.P8068863706935941263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A157344.P8068863706935941263

namespace A157344

/-- `filter[A111206(n+1), A353519(#)]` -/
def P8068863706935941263.Spec : Prop :=
  ∀ n, P8068863706935941263.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P14787167721737375543

`filter[A111206(n+1), A353559(#)]`
-/

namespace A157344.P14787167721737375543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A157344.P14787167721737375543

namespace A157344

/-- `filter[A111206(n+1), A353559(#)]` -/
def P14787167721737375543.Spec : Prop :=
  ∀ n, P14787167721737375543.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P133912738389408635

`filter[A111206(n+1), A353629(#)]`
-/

namespace A157344.P133912738389408635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A157344.P133912738389408635

namespace A157344

/-- `filter[A111206(n+1), A353629(#)]` -/
def P133912738389408635.Spec : Prop :=
  ∀ n, P133912738389408635.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P4617546713487881722

`filter[A111206(n+1), A353669(#)]`
-/

namespace A157344.P4617546713487881722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A157344.P4617546713487881722

namespace A157344

/-- `filter[A111206(n+1), A353669(#)]` -/
def P4617546713487881722.Spec : Prop :=
  ∀ n, P4617546713487881722.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P12925757697822330479

`filter[A111206(n+2), A353627(#)]`
-/

namespace A157344.P12925757697822330479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A157344.P12925757697822330479

namespace A157344

/-- `filter[A111206(n+2), A353627(#)]` -/
def P12925757697822330479.Spec : Prop :=
  ∀ n, P12925757697822330479.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P13595196022250646607

`filter[A111206(n+2), A353628(#)]`
-/

namespace A157344.P13595196022250646607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A157344.P13595196022250646607

namespace A157344

/-- `filter[A111206(n+2), A353628(#)]` -/
def P13595196022250646607.Spec : Prop :=
  ∀ n, P13595196022250646607.a n = A157344 (n + 1)

end A157344

/-! ## A157344.P10926682273817388333

`∩[A074243(n+1), A111206(n+1)]`
-/

namespace A157344.P10926682273817388333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157344.P10926682273817388333

namespace A157344

/-- `∩[A074243(n+1), A111206(n+1)]` -/
def P10926682273817388333.Spec : Prop :=
  ∀ n, (P10926682273817388333.a n : ℤ) = A157344 (n + 1)

end A157344

/-! ## A157344.P8247581762153339272

`∩[A006881(n+1), A111206(n+1)]`
-/

namespace A157344.P8247581762153339272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157344.P8247581762153339272

namespace A157344

/-- `∩[A006881(n+1), A111206(n+1)]` -/
def P8247581762153339272.Spec : Prop :=
  ∀ n, (P8247581762153339272.a n : ℤ) = A157344 (n + 1)

end A157344

/-! ## A157344.P17756761288248234940

`∩[A007422(n+1), A111206(n+1)]`
-/

namespace A157344.P17756761288248234940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157344.P17756761288248234940

namespace A157344

/-- `∩[A007422(n+1), A111206(n+1)]` -/
def P17756761288248234940.Spec : Prop :=
  ∀ n, (P17756761288248234940.a n : ℤ) = A157344 (n + 1)

end A157344

/-! ## A157344.P1075620859213685052

`∩[A030513(n+1), A111206(n+1)]`
-/

namespace A157344.P1075620859213685052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157344.P1075620859213685052

namespace A157344

/-- `∩[A030513(n+1), A111206(n+1)]` -/
def P1075620859213685052.Spec : Prop :=
  ∀ n, (P1075620859213685052.a n : ℤ) = A157344 (n + 1)

end A157344

/-!
# A157345: Semiprimes that are the product of two distinct non-Sophie Germain primes.

The programs for A157345, the canonical program `A157345.P5015846809518518335` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157345 has offset 1).

The definition of A157345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4636 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157345.P6673836281051607167

`record[A007947(A157342(n+2))]`
-/

namespace A157345.P6673836281051607167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A157342 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157345.P6673836281051607167

namespace A157345

/-- `record[A007947(A157342(n+2))]` -/
def P6673836281051607167.Spec : Prop :=
  ∀ n, P6673836281051607167.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P4450181159678674464

`filter[A157342(n+1), A008966(#)]`
-/

namespace A157345.P4450181159678674464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A157345.P4450181159678674464

namespace A157345

/-- `filter[A157342(n+1), A008966(#)]` -/
def P4450181159678674464.Spec : Prop :=
  ∀ n, P4450181159678674464.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P6066732323341601533

`filter[A157342(n+1), A324903(#)]`
-/

namespace A157345.P6066732323341601533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A157345.P6066732323341601533

namespace A157345

/-- `filter[A157342(n+1), A324903(#)]` -/
def P6066732323341601533.Spec : Prop :=
  ∀ n, P6066732323341601533.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P4589786800975260470

`∩[A005117(n+1), A157342(n+1)]`
-/

namespace A157345.P4589786800975260470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157345.P4589786800975260470

namespace A157345

/-- `∩[A005117(n+1), A157342(n+1)]` -/
def P4589786800975260470.Spec : Prop :=
  ∀ n, (P4589786800975260470.a n : ℤ) = A157345 (n + 1)

end A157345

/-! ## A157345.P8247241220574218294

`filter[A157342(n+1), A049240(#)]`
-/

namespace A157345.P8247241220574218294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A157345.P8247241220574218294

namespace A157345

/-- `filter[A157342(n+1), A049240(#)]` -/
def P8247241220574218294.Spec : Prop :=
  ∀ n, P8247241220574218294.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P9988300976226247470

`filter[A157342(n+1), A181183(#)]`
-/

namespace A157345.P9988300976226247470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A157345.P9988300976226247470

namespace A157345

/-- `filter[A157342(n+1), A181183(#)]` -/
def P9988300976226247470.Spec : Prop :=
  ∀ n, P9988300976226247470.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P8843179262920159598

`filter[A157342(n+1), A262684(#)]`
-/

namespace A157345.P8843179262920159598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A157345.P8843179262920159598

namespace A157345

/-- `filter[A157342(n+1), A262684(#)]` -/
def P8843179262920159598.Spec : Prop :=
  ∀ n, P8843179262920159598.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P569727832804975663

`filter[A157342(n+1), A280710(#)]`
-/

namespace A157345.P569727832804975663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A157345.P569727832804975663

namespace A157345

/-- `filter[A157342(n+1), A280710(#)]` -/
def P569727832804975663.Spec : Prop :=
  ∀ n, P569727832804975663.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P8288590891078267372

`filter[A157342(n+1), A295316(#)]`
-/

namespace A157345.P8288590891078267372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A157345.P8288590891078267372

namespace A157345

/-- `filter[A157342(n+1), A295316(#)]` -/
def P8288590891078267372.Spec : Prop :=
  ∀ n, P8288590891078267372.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P2656378665301290260

`filter[A157342(n+1), A323154(#)]`
-/

namespace A157345.P2656378665301290260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A157345.P2656378665301290260

namespace A157345

/-- `filter[A157342(n+1), A323154(#)]` -/
def P2656378665301290260.Spec : Prop :=
  ∀ n, P2656378665301290260.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P1345606739263769757

`filter[A157342(n+1), A323158(#)]`
-/

namespace A157345.P1345606739263769757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A157345.P1345606739263769757

namespace A157345

/-- `filter[A157342(n+1), A323158(#)]` -/
def P1345606739263769757.Spec : Prop :=
  ∀ n, P1345606739263769757.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P5846312824472005540

`filter[A157342(n+1), A323239(#)]`
-/

namespace A157345.P5846312824472005540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A157345.P5846312824472005540

namespace A157345

/-- `filter[A157342(n+1), A323239(#)]` -/
def P5846312824472005540.Spec : Prop :=
  ∀ n, P5846312824472005540.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P4141432106643644029

`filter[A157342(n+1), A324908(#)]`
-/

namespace A157345.P4141432106643644029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A157345.P4141432106643644029

namespace A157345

/-- `filter[A157342(n+1), A324908(#)]` -/
def P4141432106643644029.Spec : Prop :=
  ∀ n, P4141432106643644029.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P9952580335229677101

`filter[A157342(n+1), A340370(#)]`
-/

namespace A157345.P9952580335229677101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340370 (f1 j).toNat = 1) n)

end

end A157345.P9952580335229677101

namespace A157345

/-- `filter[A157342(n+1), A340370(#)]` -/
def P9952580335229677101.Spec : Prop :=
  ∀ n, P9952580335229677101.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P8181271281629993372

`filter[A350704(n+1), A280710(#)]`
-/

namespace A157345.P8181271281629993372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A157345.P8181271281629993372

namespace A157345

/-- `filter[A350704(n+1), A280710(#)]` -/
def P8181271281629993372.Spec : Prop :=
  ∀ n, P8181271281629993372.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P5015846809518518335

`filter[A350704(n+1), A340370(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A157345

/-- `filter[A350704(n+1), A340370(#)]` -/
def P5015846809518518335.Spec : Prop :=
  ∀ n, P5015846809518518335.a n = A157345 (n + 1)

theorem P5015846809518518335.correct : P5015846809518518335.Spec := by
  intro n
  simp only [A157345, Nat.add_sub_cancel]

end A157345

/-! ## A157345.P7853706769786588554

`filter[A350704(n+1), A353471(#)]`
-/

namespace A157345.P7853706769786588554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A157345.P7853706769786588554

namespace A157345

/-- `filter[A350704(n+1), A353471(#)]` -/
def P7853706769786588554.Spec : Prop :=
  ∀ n, P7853706769786588554.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P14510450363157804440

`filter[A350704(n+1), A353481(#)]`
-/

namespace A157345.P14510450363157804440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A157345.P14510450363157804440

namespace A157345

/-- `filter[A350704(n+1), A353481(#)]` -/
def P14510450363157804440.Spec : Prop :=
  ∀ n, P14510450363157804440.a n = A157345 (n + 1)

end A157345

/-! ## A157345.P8555687697511940006

`∩[A157342(n+1), A340380(n+1)]`
-/

namespace A157345.P8555687697511940006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157345.P8555687697511940006

namespace A157345

/-- `∩[A157342(n+1), A340380(n+1)]` -/
def P8555687697511940006.Spec : Prop :=
  ∀ n, (P8555687697511940006.a n : ℤ) = A157345 (n + 1)

end A157345

/-! ## A157345.P13463699154748760856

`∩[A340380(n+1), A350704(n+1)]`
-/

namespace A157345.P13463699154748760856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350704 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157345.P13463699154748760856

namespace A157345

/-- `∩[A340380(n+1), A350704(n+1)]` -/
def P13463699154748760856.Spec : Prop :=
  ∀ n, (P13463699154748760856.a n : ℤ) = A157345 (n + 1)

end A157345

/-!
# A157346: Products of 3 distinct Sophie Germain primes.

The programs for A157346, the canonical program `A157346.P9858211536238811526` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157346 has offset 1).

The definition of A157346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 807 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157346.P9858211536238811526

`∩[A007304(n+1), A156541(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157346

/-- `∩[A007304(n+1), A156541(n+1)]` -/
def P9858211536238811526.Spec : Prop :=
  ∀ n, (P9858211536238811526.a n : ℤ) = A157346 (n + 1)

theorem P9858211536238811526.correct : P9858211536238811526.Spec := by
  intro n
  simp only [A157346, Nat.add_sub_cancel]

end A157346

/-! ## A157346.P12434453347664883259

`A007735(3*A157354(n+1))`
-/

namespace A157346.P12434453347664883259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (3 * A157354 (n + 1)).toNat

end

end A157346.P12434453347664883259

namespace A157346

/-- `A007735(3*A157354(n+1))` -/
def P12434453347664883259.Spec : Prop :=
  ∀ n, P12434453347664883259.a n = A157346 (n + 1)

end A157346

/-!
# A157347: Products of 3 distinct non-Sophie Germain primes.

The programs for A157347, the canonical program `A157347.P14782022362732044519` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157347 has offset 1).

The definition of A157347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1049 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157347.P14782022362732044519

`∩[A046389(n+1), A350704(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A157347

/-- `∩[A046389(n+1), A350704(n+1)]` -/
def P14782022362732044519.Spec : Prop :=
  ∀ n, (P14782022362732044519.a n : ℤ) = A157347 (n + 1)

theorem P14782022362732044519.correct : P14782022362732044519.Spec := by
  intro n
  simp only [A157347, Nat.add_sub_cancel]

end A157347

/-!
# A157352: Products (semiprimes) of two distinct safe primes.

The programs for A157352, there is no canonical definition to state claims against.
-/

/-! ## A157352.P14949481663820788771

`record[∏{p}[A193165(n+2), #]]`
-/

namespace A157352.P14949481663820788771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157352.P14949481663820788771

/-! ## A157352.P10384429459306959523

`record[A007947(A193165(n+2))]`
-/

namespace A157352.P10384429459306959523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A193165 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A157352.P10384429459306959523

/-! ## A157352.P14497875019298867218

`filter[A193165(n+1), A008966(#)]`
-/

namespace A157352.P14497875019298867218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A157352.P14497875019298867218

/-! ## A157352.P5921374691927821035

`filter[A193165(n+1), A324903(#)]`
-/

namespace A157352.P5921374691927821035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A157352.P5921374691927821035

/-! ## A157352.P11719254363914469695

`∩[A062373(n+1), A193165(n+1)]`
-/

namespace A157352.P11719254363914469695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157352.P11719254363914469695

/-! ## A157352.P9230983789525008006

`∩[A193165(n+1), A319386(n+1)]`
-/

namespace A157352.P9230983789525008006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157352.P9230983789525008006

/-! ## A157352.P15484836778108332123

`∩[A005117(n+1), A193165(n+1)]`
-/

namespace A157352.P15484836778108332123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157352.P15484836778108332123

/-! ## A157352.P6050595106740386132

`∩[A193165(n+1), A329229(n+1)]`
-/

namespace A157352.P6050595106740386132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157352.P6050595106740386132

/-! ## A157352.P7186357746633627498

`filter[A193165(n+1), A049240(#)]`
-/

namespace A157352.P7186357746633627498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A157352.P7186357746633627498

/-! ## A157352.P1304926780952535183

`filter[A193165(n+1), A181183(#)]`
-/

namespace A157352.P1304926780952535183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A157352.P1304926780952535183

/-! ## A157352.P6359689902183458276

`filter[A193165(n+1), A262684(#)]`
-/

namespace A157352.P6359689902183458276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A262684 (f1 j).toNat = 1) n)

end

end A157352.P6359689902183458276

/-! ## A157352.P8560195911111828096

`filter[A193165(n+1), A280710(#)]`
-/

namespace A157352.P8560195911111828096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A157352.P8560195911111828096

/-! ## A157352.P10296232161446377982

`filter[A193165(n+1), A295316(#)]`
-/

namespace A157352.P10296232161446377982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A157352.P10296232161446377982

/-! ## A157352.P9389047116164832593

`filter[A193165(n+1), A323154(#)]`
-/

namespace A157352.P9389047116164832593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A157352.P9389047116164832593

/-! ## A157352.P14994290923655109733

`filter[A193165(n+1), A323158(#)]`
-/

namespace A157352.P14994290923655109733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A157352.P14994290923655109733

/-! ## A157352.P6014939132926775542

`filter[A193165(n+1), A323239(#)]`
-/

namespace A157352.P6014939132926775542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A157352.P6014939132926775542

/-! ## A157352.P6486898146609739710

`filter[A193165(n+1), A324908(#)]`
-/

namespace A157352.P6486898146609739710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A157352.P6486898146609739710

/-! ## A157352.P4326596368641175157

`∩[A193165(n+1), A267999(n+1)]`
-/

namespace A157352.P4326596368641175157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157352.P4326596368641175157

/-! ## A157352.P15170703055885274771

`∩[A121707(n+1), A193165(n+1)]`
-/

namespace A157352.P15170703055885274771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157352.P15170703055885274771

/-! ## A157352.P309412943842291841

`∩[A193165(n+1), A340269(n+1)]`
-/

namespace A157352.P309412943842291841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157352.P309412943842291841

/-!
# A157353: Products (semiprimes) of two distinct primes that are not safe primes.

The programs for A157353, there is no canonical definition to state claims against.
-/

/-! ## A157353.P11939658713661916902

`filter[A350706(n+1), A280710(#)]`
-/

namespace A157353.P11939658713661916902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A157353.P11939658713661916902

/-! ## A157353.P9235694861320540475

`filter[A350706(n+1), A353471(#)]`
-/

namespace A157353.P9235694861320540475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353471 (f1 j).toNat = 1) n)

end

end A157353.P9235694861320540475

/-! ## A157353.P10862730560917964966

`filter[A350706(n+1), A353629(#)]`
-/

namespace A157353.P10862730560917964966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353629 (f1 j).toNat = 1) n)

end

end A157353.P10862730560917964966

/-! ## A157353.P60594011777832433

`∩[A006881(n+1), A350706(n+1)]`
-/

namespace A157353.P60594011777832433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157353.P60594011777832433

/-! ## A157353.P17480213199573268973

`∩[A030229(n+1), A350706(n+1)]`
-/

namespace A157353.P17480213199573268973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157353.P17480213199573268973

/-! ## A157353.P2461178116882276936

`∩[A167171(n+1), A350706(n+1)]`
-/

namespace A157353.P2461178116882276936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157353.P2461178116882276936

/-!
# A157355: Products of 3 distinct not safe primes.

The programs for A157355, there is no canonical definition to state claims against.
-/

/-! ## A157355.P16652156300680349341

`∩[A007304(n+1), A350706(n+1)]`
-/

namespace A157355.P16652156300680349341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157355.P16652156300680349341

/-! ## A157355.P14027205520640654529

`∩[A030059(n+1), A350706(n+1)]`
-/

namespace A157355.P14027205520640654529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157355.P14027205520640654529

/-! ## A157355.P12687434531832735960

`∩[A350352(n+1), A350706(n+1)]`
-/

namespace A157355.P12687434531832735960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157355.P12687434531832735960

/-! ## A157355.P4338932994234727157

`∩[A350706(n+1), A365829(n+1)]`
-/

namespace A157355.P4338932994234727157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350706 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157355.P4338932994234727157

/-!
# A157358: Triple-safe primes p: p, (p-1)/2, (p-3)/4, and (p-7)/8 are all prime.

The programs for A157358, there is no canonical definition to state claims against.
-/

/-! ## A157358.P15488709309517245644

`8*A023272(n+1)+7`
-/

namespace A157358.P15488709309517245644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A023272 (n + 1) + 7

end

end A157358.P15488709309517245644

/-! ## A157358.P1825448510295447915

`p?[2*A066179(n+1)+1]`
-/

namespace A157358.P1825448510295447915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066179 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157358.P1825448510295447915

/-! ## A157358.P13320736194058886298

`p?[8*A000203(A007700(n+1))-1]`
-/

namespace A157358.P13320736194058886298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A000203 (A007700 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A157358.P13320736194058886298

/-! ## A157358.P10942215292324328223

`A000118(A023272(n+1))-1`
-/

namespace A157358.P10942215292324328223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (A023272 (n + 1)).toNat - 1

end

end A157358.P10942215292324328223

/-! ## A157358.P6751251490990854944

`A000118(p?[A124493(n+1)-1])-1`
-/

namespace A157358.P6751251490990854944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124493 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000118 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A157358.P6751251490990854944

/-!
# A157359: Quatro-safe primes.

The programs for A157359, there is no canonical definition to state claims against.
-/

/-! ## A157359.P217997652380504638

`4*A162019(n+1)+3`
-/

namespace A157359.P217997652380504638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A162019 (n + 1) + 3

end

end A157359.P217997652380504638

/-! ## A157359.P4287113768342912275

`16*A023302(n+1)+15`
-/

namespace A157359.P4287113768342912275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  16 * A023302 (n + 1) + 15

end

end A157359.P4287113768342912275

/-!
# A157361: Triangle read by rows, A051731 * (A114810 * 0^(n-k)).

The programs for A157361, the canonical program `A157361.P10027409474950020482` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157361 has offset 1).

The definition of A157361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157361.P10027409474950020482

`A051731(n+1)*A114810(A002260(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A157361

/-- `A051731(n+1)*A114810(A002260(n+1))` -/
def P10027409474950020482.Spec : Prop :=
  ∀ n, P10027409474950020482.a n = A157361 (n + 1)

theorem P10027409474950020482.correct : P10027409474950020482.Spec := by
  intro n
  simp only [A157361, Nat.add_sub_cancel]

end A157361

/-! ## A157361.P16948677131269547482

`A051731(n+1)*A114810(A050873(n+1))`
-/

namespace A157361.P16948677131269547482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A050873 (n + 1)).toNat

end

end A157361.P16948677131269547482

namespace A157361

/-- `A051731(n+1)*A114810(A050873(n+1))` -/
def P16948677131269547482.Spec : Prop :=
  ∀ n, P16948677131269547482.a n = A157361 (n + 1)

end A157361

/-! ## A157361.P7355368867788472973

`A051731(n+1)*A114810(A123275(n+1))`
-/

namespace A157361.P7355368867788472973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A123275 (n + 1)).toNat

end

end A157361.P7355368867788472973

namespace A157361

/-- `A051731(n+1)*A114810(A123275(n+1))` -/
def P7355368867788472973.Spec : Prop :=
  ∀ n, P7355368867788472973.a n = A157361 (n + 1)

end A157361

/-! ## A157361.P3037542223300458662

`A051731(n+1)*A114810(A134868(n+1))`
-/

namespace A157361.P3037542223300458662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A134868 (n + 1)).toNat

end

end A157361.P3037542223300458662

namespace A157361

/-- `A051731(n+1)*A114810(A134868(n+1))` -/
def P3037542223300458662.Spec : Prop :=
  ∀ n, P3037542223300458662.a n = A157361 (n + 1)

end A157361

/-! ## A157361.P7512545356159034271

`A051731(n+1)*A114810(A307662(n+1))`
-/

namespace A157361.P7512545356159034271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A307662 (n + 1)).toNat

end

end A157361.P7512545356159034271

namespace A157361

/-- `A051731(n+1)*A114810(A307662(n+1))` -/
def P7512545356159034271.Spec : Prop :=
  ∀ n, P7512545356159034271.a n = A157361 (n + 1)

end A157361

/-! ## A157361.P10581622002137169474

`A051731(n+1)*A114810(A112544(n+1))`
-/

namespace A157361.P10581622002137169474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A112544 (n + 1)).toNat

end

end A157361.P10581622002137169474

namespace A157361

/-- `A051731(n+1)*A114810(A112544(n+1))` -/
def P10581622002137169474.Spec : Prop :=
  ∀ n, P10581622002137169474.a n = A157361 (n + 1)

end A157361

/-! ## A157361.P12880304779999391200

`A051731(n+1)*A114810(A134840(n+1))`
-/

namespace A157361.P12880304779999391200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A114810 (A134840 (n + 1)).toNat

end

end A157361.P12880304779999391200

namespace A157361

/-- `A051731(n+1)*A114810(A134840(n+1))` -/
def P12880304779999391200.Spec : Prop :=
  ∀ n, P12880304779999391200.a n = A157361 (n + 1)

end A157361

/-!
# A157362: a(n) = 49*n^2 - 2*n.

The programs for A157362, the canonical program `A157362.P11972487102006687154` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157362 has offset 1).

The definition of A157362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²-2*(n+1)` (program `A157362.P11972487102006687154`, by `A157362.P11972487102006687154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157362.P11972487102006687154

`49*(n+1)²-2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157362

/-- `49*(n+1)²-2*(n+1)` -/
def P11972487102006687154.Spec : Prop :=
  ∀ n, P11972487102006687154.a n = A157362 (n + 1)

theorem P11972487102006687154.correct : P11972487102006687154.Spec := by
  intro n
  simp only [A157362, Nat.add_sub_cancel]

end A157362

/-! ## A157362.P8275583217928643799

`∑[a(n-1)+98]` with `a(0)=47`
-/

namespace A157362.P8275583217928643799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [47] fun n f1 =>
  f1 (n - 1) + 98

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157362.P8275583217928643799

namespace A157362

/-- `∑[a(n-1)+98]` -/
def P8275583217928643799.Spec : Prop :=
  ∀ n, (P8275583217928643799.a n : ℤ) = A157362 (n + 1)

end A157362

/-! ## A157362.P17670559408337641113

`(n+1)*(A158066(n+1)-3)`
-/

namespace A157362.P17670559408337641113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158066 (n + 1) - 3)

end

end A157362.P17670559408337641113

namespace A157362

/-- `(n+1)*(A158066(n+1)-3)` -/
def P17670559408337641113.Spec : Prop :=
  ∀ n, P17670559408337641113.a n = A157362 (n + 1)

theorem P17670559408337641113.correct : P17670559408337641113.Spec := by
  intro n
  simp only [A157362, Nat.add_sub_cancel, A157362.P17670559408337641113.a, A157362.P11972487102006687154.a, A158066, A158066.P2753047191672300220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157362

/-! ## A157362.P12158154346914345146

`A158321(n+1)%A158222(n+1)`
-/

namespace A157362.P12158154346914345146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158321 (n + 1)) (A158222 (n + 1))

end

end A157362.P12158154346914345146

namespace A157362

/-- `A158321(n+1)%A158222(n+1)` -/
def P12158154346914345146.Spec : Prop :=
  ∀ n, P12158154346914345146.a n = A157362 (n + 1)

end A157362

/-! ## A157362.P14308115441140236986

`A158420(n+1)%A165798(n+1)`
-/

namespace A157362.P14308115441140236986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158420 (n + 1)) (A165798 (n + 1))

end

end A157362.P14308115441140236986

namespace A157362

/-- `A158420(n+1)%A165798(n+1)` -/
def P14308115441140236986.Spec : Prop :=
  ∀ n, P14308115441140236986.a n = A157362 (n + 1)

end A157362

/-! ## A157362.P6235720087725477559

`(n+1)*A116728(A017005(n+1))`
-/

namespace A157362.P6235720087725477559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A116728 (A017005 (n + 1)).toNat

end

end A157362.P6235720087725477559

namespace A157362

/-- `(n+1)*A116728(A017005(n+1))` -/
def P6235720087725477559.Spec : Prop :=
  ∀ n, P6235720087725477559.a n = A157362 (n + 1)

end A157362

/-! ## A157362.P10616259884552513032

`(n+1)*A017041(A168332(2*n+1))`
-/

namespace A157362.P10616259884552513032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017041 (A168332 (2 * n + 1)).toNat

end

end A157362.P10616259884552513032

namespace A157362

/-- `(n+1)*A017041(A168332(2*n+1))` -/
def P10616259884552513032.Spec : Prop :=
  ∀ n, P10616259884552513032.a n = A157362 (n + 1)

end A157362

/-!
# A157363: a(n) = 686*n - 14.

The programs for A157363, the canonical program `A157363.P16214338836136057617` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157363 has offset 1).

The definition of A157363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `686*(n+1)-14` (program `A157363.P16214338836136057617`, by `A157363.P16214338836136057617.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157363.P16214338836136057617

`686*(n+1)-14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157363

/-- `686*(n+1)-14` -/
def P16214338836136057617.Spec : Prop :=
  ∀ n, P16214338836136057617.a n = A157363 (n + 1)

theorem P16214338836136057617.correct : P16214338836136057617.Spec := by
  intro n
  simp only [A157363, Nat.add_sub_cancel]

end A157363

/-!
# A157364: a(n) = 4802*n^2 - 196*n + 1.

The programs for A157364, the canonical program `A157364.P11100356672830294518` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157364 has offset 1).

The definition of A157364 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157364.P11100356672830294518

`or(1, 98*∑[98*n+47])`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157364

/-- `or(1, 98*∑[98*n+47])` -/
def P11100356672830294518.Spec : Prop :=
  ∀ n, (P11100356672830294518.a n : ℤ) = A157364 (n + 1)

theorem P11100356672830294518.correct : P11100356672830294518.Spec := by
  intro n
  simp only [A157364, Nat.add_sub_cancel]

end A157364

/-! ## A157364.P18089041914882734157

`2*(1-49*(n+1))²-1`
-/

namespace A157364.P18089041914882734157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - (49 * (n + 1) : ℤ)) ^ 2 - 1

end

end A157364.P18089041914882734157

namespace A157364

/-- `2*(1-49*(n+1))²-1` -/
def P18089041914882734157.Spec : Prop :=
  ∀ n, P18089041914882734157.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P13756736643653082003

`ceil(sqrt(A157362(n+1))*A157363(n+1))`
-/

namespace A157364.P13756736643653082003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A157362 (n + 1) : ℝ) * (A157363 (n + 1) : ℝ)⌉

end

end A157364.P13756736643653082003

namespace A157364

/-- `ceil(sqrt(A157362(n+1))*A157363(n+1))` -/
def P13756736643653082003.Spec : Prop :=
  ∀ n, P13756736643653082003.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P9344334341640834920

`A157367(2*(n+1))%(1-A157367(n+1))`
-/

namespace A157364.P9344334341640834920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157367 (2 * (n + 1))) (1 - A157367 (n + 1))

end

end A157364.P9344334341640834920

namespace A157364

/-- `A157367(2*(n+1))%(1-A157367(n+1))` -/
def P9344334341640834920.Spec : Prop :=
  ∀ n, P9344334341640834920.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P3229613488935581766

`A056220(49*(n+1)-1)`
-/

namespace A157364.P3229613488935581766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (49 * (n + 1) - 1)

end

end A157364.P3229613488935581766

namespace A157364

/-- `A056220(49*(n+1)-1)` -/
def P3229613488935581766.Spec : Prop :=
  ∀ n, P3229613488935581766.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P9443931948240407551

`A105638(98*(n+1))`
-/

namespace A157364.P9443931948240407551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105638 (98 * (n + 1))

end

end A157364.P9443931948240407551

namespace A157364

/-- `A105638(98*(n+1))` -/
def P9443931948240407551.Spec : Prop :=
  ∀ n, P9443931948240407551.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P7437275106377802255

`A047838(A157924(n+1)-1)`
-/

namespace A157364.P7437275106377802255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A157924 (n + 1) - 1).toNat

end

end A157364.P7437275106377802255

namespace A157364

/-- `A047838(A157924(n+1)-1)` -/
def P7437275106377802255.Spec : Prop :=
  ∀ n, P7437275106377802255.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P11286945634063350934

`A074148(A157924(n+1)-2)`
-/

namespace A157364.P11286945634063350934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A157924 (n + 1) - 2).toNat

end

end A157364.P11286945634063350934

namespace A157364

/-- `A074148(A157924(n+1)-2)` -/
def P11286945634063350934.Spec : Prop :=
  ∀ n, P11286945634063350934.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P6567011904780966151

`A047838(A157947(n+1)-3)`
-/

namespace A157364.P6567011904780966151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (A157947 (n + 1) - 3).toNat

end

end A157364.P6567011904780966151

namespace A157364

/-- `A047838(A157947(n+1)-3)` -/
def P6567011904780966151.Spec : Prop :=
  ∀ n, P6567011904780966151.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P4582618342332599565

`A047838(xor(1, A157924(n+1)))`
-/

namespace A157364.P4582618342332599565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (Int.xor 1 (A157924 (n + 1))).toNat

end

end A157364.P4582618342332599565

namespace A157364

/-- `A047838(xor(1, A157924(n+1)))` -/
def P4582618342332599565.Spec : Prop :=
  ∀ n, P4582618342332599565.a n = A157364 (n + 1)

end A157364

/-! ## A157364.P13579790833980636155

`A326658(A158128(n+1)-A020742(n))`
-/

namespace A157364.P13579790833980636155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326658 (A158128 (n + 1) - A020742 n).toNat

end

end A157364.P13579790833980636155

namespace A157364

/-- `A326658(A158128(n+1)-A020742(n))` -/
def P13579790833980636155.Spec : Prop :=
  ∀ n, P13579790833980636155.a n = A157364 (n + 1)

end A157364

/-!
# A157365: a(n) = 49*n^2 + 2*n.

The programs for A157365, the canonical program `A157365.P11866209212843534164` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157365 has offset 1).

The definition of A157365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²+2*(n+1)` (program `A157365.P11866209212843534164`, by `A157365.P11866209212843534164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157365.P11866209212843534164

`49*(n+1)²+2*(n+1)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157365

/-- `49*(n+1)²+2*(n+1)` -/
def P11866209212843534164.Spec : Prop :=
  ∀ n, (P11866209212843534164.a n : ℤ) = A157365 (n + 1)

theorem P11866209212843534164.correct : P11866209212843534164.Spec := by
  intro n
  simp only [A157365, Nat.add_sub_cancel]

end A157365

/-! ## A157365.P7004097927130344071

`∑[a(n-1)+98]` with `a(0)=51`
-/

namespace A157365.P7004097927130344071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [51] fun n f1 =>
  f1 (n - 1) + 98

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157365.P7004097927130344071

namespace A157365

/-- `∑[a(n-1)+98]` -/
def P7004097927130344071.Spec : Prop :=
  ∀ n, (P7004097927130344071.a n : ℤ) = A157365 (n + 1)

end A157365

/-! ## A157365.P5133392341821387653

`(Δ[C(7*n+4, 2)]+2)*(n+1)`
-/

namespace A157365.P5133392341821387653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (7 * n + 4) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2) * (n + 1 : ℤ)

end

end A157365.P5133392341821387653

namespace A157365

/-- `(Δ[C(7*n+4, 2)]+2)*(n+1)` -/
def P5133392341821387653.Spec : Prop :=
  ∀ n, P5133392341821387653.a n = A157365 (n + 1)

theorem P5133392341821387653.correct : P5133392341821387653.Spec := by
  intro n
  simp only [A157365, Nat.add_sub_cancel, A157365.P5133392341821387653.f1, A157365.P5133392341821387653.a, A157365.P11866209212843534164.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A157365

/-! ## A157365.P14684240855514046686

`(n+1)*(A158066(n+1)+1)`
-/

namespace A157365.P14684240855514046686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A158066 (n + 1) + 1)

end

end A157365.P14684240855514046686

namespace A157365

/-- `(n+1)*(A158066(n+1)+1)` -/
def P14684240855514046686.Spec : Prop :=
  ∀ n, P14684240855514046686.a n = A157365 (n + 1)

theorem P14684240855514046686.correct : P14684240855514046686.Spec := by
  intro n
  simp only [A157365, Nat.add_sub_cancel, A157365.P14684240855514046686.a, A157365.P11866209212843534164.a, A158066, A158066.P2753047191672300220.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157365

/-! ## A157365.P9479058239345349571

`A158373(n+1)%A156635(n+1)`
-/

namespace A157365.P9479058239345349571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158373 (n + 1)) (A156635 (n + 1))

end

end A157365.P9479058239345349571

namespace A157365

/-- `A158373(n+1)%A156635(n+1)` -/
def P9479058239345349571.Spec : Prop :=
  ∀ n, P9479058239345349571.a n = A157365 (n + 1)

end A157365

/-! ## A157365.P17581006037960663035

`A157737(n+1)%A158224(n+1)`
-/

namespace A157365.P17581006037960663035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157737 (n + 1)) (A158224 (n + 1))

end

end A157365.P17581006037960663035

namespace A157365

/-- `A157737(n+1)%A158224(n+1)` -/
def P17581006037960663035.Spec : Prop :=
  ∀ n, P17581006037960663035.a n = A157365 (n + 1)

end A157365

/-! ## A157365.P3291133773872885265

`(n+1)*A017005(A008589(n+1))`
-/

namespace A157365.P3291133773872885265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A017005 (A008589 (n + 1)).toNat

end

end A157365.P3291133773872885265

namespace A157365

/-- `(n+1)*A017005(A008589(n+1))` -/
def P3291133773872885265.Spec : Prop :=
  ∀ n, P3291133773872885265.a n = A157365 (n + 1)

end A157365

/-! ## A157365.P3387521143848167996

`∩[A013642(n+1), A031410(n+1)]`
-/

namespace A157365.P3387521143848167996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A157365.P3387521143848167996

namespace A157365

/-- `∩[A013642(n+1), A031410(n+1)]` -/
def P3387521143848167996.Spec : Prop :=
  ∀ n, (P3387521143848167996.a n : ℤ) = A157365 (n + 1)

end A157365

/-!
# A157366: a(n) = 686*n + 14.

The programs for A157366, the canonical program `A157366.P1424814854341854878` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157366 has offset 1).

The definition of A157366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `686*(n+1)+14` (program `A157366.P1424814854341854878`, by `A157366.P1424814854341854878.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157366.P1424814854341854878

`686*(n+1)+14`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157366

/-- `686*(n+1)+14` -/
def P1424814854341854878.Spec : Prop :=
  ∀ n, (P1424814854341854878.a n : ℤ) = A157366 (n + 1)

theorem P1424814854341854878.correct : P1424814854341854878.Spec := by
  intro n
  simp only [A157366, Nat.add_sub_cancel]

end A157366

/-!
# A157367: a(n) = 4802*n^2 + 196*n + 1.

The programs for A157367, the canonical program `A157367.P4593762269175692870` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157367 has offset 1).

The definition of A157367 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157367.P4593762269175692870

`or(1, 98*∑[98*n+51])`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157367

/-- `or(1, 98*∑[98*n+51])` -/
def P4593762269175692870.Spec : Prop :=
  ∀ n, (P4593762269175692870.a n : ℤ) = A157367 (n + 1)

theorem P4593762269175692870.correct : P4593762269175692870.Spec := by
  intro n
  simp only [A157367, Nat.add_sub_cancel]

end A157367

/-! ## A157367.P11174128210146067224

`xor(1, 98*∑[98*n+51])`
-/

namespace A157367.P11174128210146067224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  98 * n + 51

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (98 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A157367.P11174128210146067224

namespace A157367

/-- `xor(1, 98*∑[98*n+51])` -/
def P11174128210146067224.Spec : Prop :=
  ∀ n, (P11174128210146067224.a n : ℤ) = A157367 (n + 1)

end A157367

/-! ## A157367.P4865080767184328727

`2*(49*(n+1)+1)²-1`
-/

namespace A157367.P4865080767184328727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (49 * (n + 1) + 1) ^ 2 : ℤ) - 1

end

end A157367.P4865080767184328727

namespace A157367

/-- `2*(49*(n+1)+1)²-1` -/
def P4865080767184328727.Spec : Prop :=
  ∀ n, P4865080767184328727.a n = A157367 (n + 1)

end A157367

/-! ## A157367.P18382422188132602051

`abs(2-(A157947(n+1)+1)²)/2`
-/

namespace A157367.P18382422188132602051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|2 - (A157947 (n + 1) + 1) ^ 2| : ℚ) / 2

end

end A157367.P18382422188132602051

namespace A157367

/-- `abs(2-(A157947(n+1)+1)²)/2` -/
def P18382422188132602051.Spec : Prop :=
  ∀ n, P18382422188132602051.a n = (A157367 (n + 1) : ℚ)

end A157367

/-! ## A157367.P12216251617261830132

`round(sqrt(A157365(n+1))*A157366(n+1))`
-/

namespace A157367.P12216251617261830132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A157365 (n + 1) : ℝ) * (A157366 (n + 1) : ℝ))

end

end A157367.P12216251617261830132

namespace A157367

/-- `round(sqrt(A157365(n+1))*A157366(n+1))` -/
def P12216251617261830132.Spec : Prop :=
  ∀ n, P12216251617261830132.a n = A157367 (n + 1)

end A157367

/-! ## A157367.P15948275774701862274

`A056220(49*(n+1)+1)`
-/

namespace A157367.P15948275774701862274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (49 * (n + 1) + 1)

end

end A157367.P15948275774701862274

namespace A157367

/-- `A056220(49*(n+1)+1)` -/
def P15948275774701862274.Spec : Prop :=
  ∀ n, P15948275774701862274.a n = A157367 (n + 1)

end A157367

/-! ## A157367.P13469213212485379637

`abs(A056220(A158066(n+1)))`
-/

namespace A157367.P13469213212485379637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056220 (A158066 (n + 1)).toNat|

end

end A157367.P13469213212485379637

namespace A157367

/-- `abs(A056220(A158066(n+1)))` -/
def P13469213212485379637.Spec : Prop :=
  ∀ n, P13469213212485379637.a n = A157367 (n + 1)

end A157367

/-! ## A157367.P11841002412947156951

`A056220(A158066(n+1))^A007318(C(2, n))`
-/

namespace A157367.P11841002412947156951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (A158066 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A157367.P11841002412947156951

namespace A157367

/-- `A056220(A158066(n+1))^A007318(C(2, n))` -/
def P11841002412947156951.Spec : Prop :=
  ∀ n, P11841002412947156951.a n = (A157367 (n + 1) : ℚ)

end A157367

/-! ## A157367.P11373908525747176916

`A056220(A158066(n+1))/A007318(C(2, n)+1)`
-/

namespace A157367.P11373908525747176916
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (A158066 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n + 1) : ℚ)

end

end A157367.P11373908525747176916

namespace A157367

/-- `A056220(A158066(n+1))/A007318(C(2, n)+1)` -/
def P11373908525747176916.Spec : Prop :=
  ∀ n, P11373908525747176916.a n = (A157367 (n + 1) : ℚ)

end A157367

/-! ## A157367.P5750930893460197660

`A056220(A158066(n+1))/and(1, A005117(n+1))!`
-/

namespace A157367.P5750930893460197660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (A158066 (n + 1)).toNat : ℚ) / (Nat.factorial (Int.land 1 (A005117 (n + 1))).toNat : ℚ)

end

end A157367.P5750930893460197660

namespace A157367

/-- `A056220(A158066(n+1))/and(1, A005117(n+1))!` -/
def P5750930893460197660.Spec : Prop :=
  ∀ n, P5750930893460197660.a n = (A157367 (n + 1) : ℚ)

end A157367

/-! ## A157367.P15396919660896561813

`A056220(A158066(n+1))/A014963(A008458(n))`
-/

namespace A157367.P15396919660896561813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (A158066 (n + 1)).toNat : ℚ) / (A014963 (A008458 n).toNat : ℚ)

end

end A157367.P15396919660896561813

namespace A157367

/-- `A056220(A158066(n+1))/A014963(A008458(n))` -/
def P15396919660896561813.Spec : Prop :=
  ∀ n, P15396919660896561813.a n = (A157367 (n + 1) : ℚ)

end A157367

/-! ## A157367.P11304111086260643366

`A056220(A158066(n+1))/A268354(A108605(n+1))`
-/

namespace A157367.P11304111086260643366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (A158066 (n + 1)).toNat : ℚ) / (A268354 (A108605 (n + 1)).toNat : ℚ)

end

end A157367.P11304111086260643366

namespace A157367

/-- `A056220(A158066(n+1))/A268354(A108605(n+1))` -/
def P11304111086260643366.Spec : Prop :=
  ∀ n, P11304111086260643366.a n = (A157367 (n + 1) : ℚ)

end A157367

/-! ## A157367.P5431780557327569918

`A056220(A158066(n+1))/A343785(A268354(n+1))`
-/

namespace A157367.P5431780557327569918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (A158066 (n + 1)).toNat : ℚ) / (A343785 (A268354 (n + 1)).toNat : ℚ)

end

end A157367.P5431780557327569918

namespace A157367

/-- `A056220(A158066(n+1))/A343785(A268354(n+1))` -/
def P5431780557327569918.Spec : Prop :=
  ∀ n, P5431780557327569918.a n = (A157367 (n + 1) : ℚ)

end A157367

/-! ## A157367.P7024942045504001930

`A056220(A158066(n+1))/A268354(A055998(n+2)+8)`
-/

namespace A157367.P7024942045504001930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056220 (A158066 (n + 1)).toNat : ℚ) / (A268354 (A055998 (n + 2) + 8).toNat : ℚ)

end

end A157367.P7024942045504001930

namespace A157367

/-- `A056220(A158066(n+1))/A268354(A055998(n+2)+8)` -/
def P7024942045504001930.Spec : Prop :=
  ∀ n, P7024942045504001930.a n = (A157367 (n + 1) : ℚ)

end A157367

/-! ## A157367.P4904504022498482529

`A047838(2*7*7*(n+1)+2)`
-/

namespace A157367.P4904504022498482529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047838 (2 * (7 * (7 * (n + 1))) + 2)

end

end A157367.P4904504022498482529

namespace A157367

/-- `A047838(2*7*7*(n+1)+2)` -/
def P4904504022498482529.Spec : Prop :=
  ∀ n, P4904504022498482529.a n = A157367 (n + 1)

end A157367

/-! ## A157367.P17759686178649976611

`A074148(A157947(n+1))`
-/

namespace A157367.P17759686178649976611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A157947 (n + 1)).toNat

end

end A157367.P17759686178649976611

namespace A157367

/-- `A074148(A157947(n+1))` -/
def P17759686178649976611.Spec : Prop :=
  ∀ n, P17759686178649976611.a n = A157367 (n + 1)

end A157367

/-! ## A157367.P9680036414948906220

`A074148(A157924(n+1)+2)`
-/

namespace A157367.P9680036414948906220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074148 (A157924 (n + 1) + 2).toNat

end

end A157367.P9680036414948906220

namespace A157367

/-- `A074148(A157924(n+1)+2)` -/
def P9680036414948906220.Spec : Prop :=
  ∀ n, P9680036414948906220.a n = A157367 (n + 1)

end A157367

/-! ## A157367.P10970134492736118922

`A079326(A008602(5*(n+1))-2*n)`
-/

namespace A157367.P10970134492736118922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079326 (A008602 (5 * (n + 1)) - (2 * n : ℤ)).toNat

end

end A157367.P10970134492736118922

namespace A157367

/-- `A079326(A008602(5*(n+1))-2*n)` -/
def P10970134492736118922.Spec : Prop :=
  ∀ n, P10970134492736118922.a n = A157367 (n + 1)

end A157367

/-! ## A157367.P1266440435580433053

`A178218(10*10*(n+1)-A005408(n))`
-/

namespace A157367.P1266440435580433053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178218 ((10 * (10 * (n + 1)) : ℤ) - A005408 n).toNat

end

end A157367.P1266440435580433053

namespace A157367

/-- `A178218(10*10*(n+1)-A005408(n))` -/
def P1266440435580433053.Spec : Prop :=
  ∀ n, P1266440435580433053.a n = A157367 (n + 1)

end A157367

/-!
# A157368: a(n) = 49*n^2 - 78*n + 31.

The programs for A157368, the canonical program `A157368.P424591313248378198` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157368 has offset 1).

The definition of A157368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²-78*(n+1)+31` (program `A157368.P424591313248378198`, by `A157368.P424591313248378198.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157368.P424591313248378198

`49*(n+1)²-78*(n+1)+31`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157368

/-- `49*(n+1)²-78*(n+1)+31` -/
def P424591313248378198.Spec : Prop :=
  ∀ n, P424591313248378198.a n = A157368 (n + 1)

theorem P424591313248378198.correct : P424591313248378198.Spec := by
  intro n
  simp only [A157368, Nat.add_sub_cancel]

end A157368

/-! ## A157368.P5950094576754568519

`ceil((sqrt(a(n-1))+7)²)` with `a(0)=2`
-/

namespace A157368.P5950094576754568519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(Real.sqrt (a (n - 1) : ℝ) + 7) ^ 2⌉

end

end A157368.P5950094576754568519

namespace A157368

/-- `ceil((sqrt(a(n-1))+7)²)` -/
def P5950094576754568519.Spec : Prop :=
  ∀ n, P5950094576754568519.a n = A157368 (n + 1)

end A157368

/-! ## A157368.P7718064280890852151

`round((sqrt(a(n-1))+7)²)` with `a(0)=2`
-/

namespace A157368.P7718064280890852151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (a (n - 1) : ℝ) + 7) ^ 2)

end

end A157368.P7718064280890852151

namespace A157368

/-- `round((sqrt(a(n-1))+7)²)` -/
def P7718064280890852151.Spec : Prop :=
  ∀ n, P7718064280890852151.a n = A157368 (n + 1)

end A157368

/-! ## A157368.P12769188836561120667

`abs(2*A000217(6*n+1+n)-n)`
-/

namespace A157368.P12769188836561120667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A000217 (6 * n + 1 + n) - (n : ℤ)|

end

end A157368.P12769188836561120667

namespace A157368

/-- `abs(2*A000217(6*n+1+n)-n)` -/
def P12769188836561120667.Spec : Prop :=
  ∀ n, P12769188836561120667.a n = A157368 (n + 1)

end A157368

/-! ## A157368.P2434649511873246522

`abs(A131723(14*n+1)-n)`
-/

namespace A157368.P2434649511873246522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131723 (14 * n + 1) - (n : ℤ)|

end

end A157368.P2434649511873246522

namespace A157368

/-- `abs(A131723(14*n+1)-n)` -/
def P2434649511873246522.Spec : Prop :=
  ∀ n, P2434649511873246522.a n = A157368 (n + 1)

end A157368

/-! ## A157368.P15174594079818304508

`abs(A002620(12*n+2*n+3)-n)`
-/

namespace A157368.P15174594079818304508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002620 (12 * n + (2 * n + 3)) - (n : ℤ)|

end

end A157368.P15174594079818304508

namespace A157368

/-- `abs(A002620(12*n+2*n+3)-n)` -/
def P15174594079818304508.Spec : Prop :=
  ∀ n, P15174594079818304508.a n = A157368 (n + 1)

end A157368

/-!
# A157369: a(n) = 343*n - 273.

The programs for A157369, the canonical program `A157369.P7658701731868636748` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157369 has offset 1).

The definition of A157369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `343*(n+1)-273` (program `A157369.P7658701731868636748`, by `A157369.P7658701731868636748.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157369.P7658701731868636748

`343*(n+1)-273`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157369

/-- `343*(n+1)-273` -/
def P7658701731868636748.Spec : Prop :=
  ∀ n, P7658701731868636748.a n = A157369 (n + 1)

theorem P7658701731868636748.correct : P7658701731868636748.Spec := by
  intro n
  simp only [A157369, Nat.add_sub_cancel]

end A157369

/-!
# A157370: a(n) = 2401*n^2 - 3822*n + 1520.

The programs for A157370, the canonical program `A157370.P11118399267548384530` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157370 has offset 1).

The definition of A157370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157370.P11118399267548384530

`(49*n+10)²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157370

/-- `(49*n+10)²-1` -/
def P11118399267548384530.Spec : Prop :=
  ∀ n, P11118399267548384530.a n = A157370 (n + 1)

theorem P11118399267548384530.correct : P11118399267548384530.Spec := by
  intro n
  simp only [A157370, Nat.add_sub_cancel]

end A157370

/-! ## A157370.P8435908548297423806

`xor(-1, -(49*n+10)²)`
-/

namespace A157370.P8435908548297423806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-((49 * n + 10) ^ 2 : ℤ))

end

end A157370.P8435908548297423806

namespace A157370

/-- `xor(-1, -(49*n+10)²)` -/
def P8435908548297423806.Spec : Prop :=
  ∀ n, P8435908548297423806.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P8673072266425365240

`abs(1-A017018(A016993(n)))`
-/

namespace A157370.P8673072266425365240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A017018 (A016993 n).toNat|

end

end A157370.P8673072266425365240

namespace A157370

/-- `abs(1-A017018(A016993(n)))` -/
def P8673072266425365240.Spec : Prop :=
  ∀ n, P8673072266425365240.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P5031535957659509253

`(1-A017018(A016993(n)))*(A167614(n+2)-(A055999(n)+10))`
-/

namespace A157370.P5031535957659509253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A017018 (A016993 n).toNat) * (A167614 (n + 2) - (A055999 n + 10))

end

end A157370.P5031535957659509253

namespace A157370

/-- `(1-A017018(A016993(n)))*(A167614(n+2)-(A055999(n)+10))` -/
def P5031535957659509253.Spec : Prop :=
  ∀ n, P5031535957659509253.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P13549435228106826869

`(A066182(A304205(n+1))-2)*A066182(A304205(n+1))`
-/

namespace A157370.P13549435228106826869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066182 (A304205 (n + 1)).toNat - 2) * A066182 (A304205 (n + 1)).toNat

end

end A157370.P13549435228106826869

namespace A157370

/-- `(A066182(A304205(n+1))-2)*A066182(A304205(n+1))` -/
def P13549435228106826869.Spec : Prop :=
  ∀ n, P13549435228106826869.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P9281712619757601338

`A005563(Δ[A081591(n)]-5)`
-/

namespace A157370.P9281712619757601338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (f1 (n + 1) - f1 n - 5).toNat

end

end A157370.P9281712619757601338

namespace A157370

/-- `A005563(Δ[A081591(n)]-5)` -/
def P9281712619757601338.Spec : Prop :=
  ∀ n, P9281712619757601338.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P12932809743141197391

`A106230(A304205(n+1)-1)`
-/

namespace A157370.P12932809743141197391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (A304205 (n + 1) - 1).toNat

end

end A157370.P12932809743141197391

namespace A157370

/-- `A106230(A304205(n+1)-1)` -/
def P12932809743141197391.Spec : Prop :=
  ∀ n, P12932809743141197391.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P11521321789694667049

`A082562(A304205(n+1)-2)`
-/

namespace A157370.P11521321789694667049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (A304205 (n + 1) - 2).toNat

end

end A157370.P11521321789694667049

namespace A157370

/-- `A082562(A304205(n+1)-2)` -/
def P11521321789694667049.Spec : Prop :=
  ∀ n, P11521321789694667049.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P14458322995876403844

`A132411(A304205(n+1)-2)`
-/

namespace A157370.P14458322995876403844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (A304205 (n + 1) - 2).toNat

end

end A157370.P14458322995876403844

namespace A157370

/-- `A132411(A304205(n+1)-2)` -/
def P14458322995876403844.Spec : Prop :=
  ∀ n, P14458322995876403844.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P2479509623572242923

`A082562(A156674(2*n+1))`
-/

namespace A157370.P2479509623572242923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (A156674 (2 * n + 1)).toNat

end

end A157370.P2479509623572242923

namespace A157370

/-- `A082562(A156674(2*n+1))` -/
def P2479509623572242923.Spec : Prop :=
  ∀ n, P2479509623572242923.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P4304428631486766948

`A005563(A304205(n+1)-3)`
-/

namespace A157370.P4304428631486766948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A304205 (n + 1) - 3).toNat

end

end A157370.P4304428631486766948

namespace A157370

/-- `A005563(A304205(n+1)-3)` -/
def P4304428631486766948.Spec : Prop :=
  ∀ n, P4304428631486766948.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P17592484421725837080

`A082562(A157369(n+1)/7)`
-/

namespace A157370.P17592484421725837080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (SequenceMachineLib.roundAway ((A157369 (n + 1) : ℚ) / 7)).toNat

end

end A157370.P17592484421725837080

namespace A157370

/-- `A082562(A157369(n+1)/7)` -/
def P17592484421725837080.Spec : Prop :=
  ∀ n, P17592484421725837080.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P1016797476229915136

`A082562(A053741(n)-(n+10))`
-/

namespace A157370.P1016797476229915136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (A053741 n - (n + 10 : ℤ)).toNat

end

end A157370.P1016797476229915136

namespace A157370

/-- `A082562(A053741(n)-(n+10))` -/
def P1016797476229915136.Spec : Prop :=
  ∀ n, P1016797476229915136.a n = A157370 (n + 1)

end A157370

/-! ## A157370.P6615975089048425549

`A005563(A135659(2*n)+2+n)`
-/

namespace A157370.P6615975089048425549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A135659 (2 * n) + 2 + (n : ℤ)).toNat

end

end A157370.P6615975089048425549

namespace A157370

/-- `A005563(A135659(2*n)+2+n)` -/
def P6615975089048425549.Spec : Prop :=
  ∀ n, P6615975089048425549.a n = A157370 (n + 1)

end A157370

/-!
# A157371: a(n) = (n+1)*(9-9*n+5*n^2-n^3).

The programs for A157371, the canonical program `A157371.P11123575271812654545` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157371 has offset 0).

The definition of A157371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(9-9*n+5*n²-n^3)` (program `A157371.P11123575271812654545`, by `A157371.P11123575271812654545.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157371.P11123575271812654545

`(n+1)*(9-9*n+5*n²-n^3)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157371

/-- `(n+1)*(9-9*n+5*n²-n^3)` -/
def P11123575271812654545.Spec : Prop :=
  ∀ n, P11123575271812654545.a n = A157371 n

theorem P11123575271812654545.correct : P11123575271812654545.Spec := by
  intro n
  simp only [A157371]

end A157371

/-! ## A157371.P2382124039719084951

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=9, a(1)=8, a(2)=9, a(3)=0, a(4)=-55`
-/

namespace A157371.P2382124039719084951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 8, 9, 0, -55] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A157371.P2382124039719084951

namespace A157371

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2382124039719084951.Spec : Prop :=
  ∀ n, P2382124039719084951.a n = A157371 n

theorem P2382124039719084951.correct : P2382124039719084951.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A157371, Nat.add_sub_cancel, A157371.P2382124039719084951.a, A157371.P11123575271812654545.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A157371, Nat.add_sub_cancel, A157371.P2382124039719084951.a, A157371.P11123575271812654545.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [h1, h2, h3, h4, h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A157371

/-! ## A157371.P17157988236402053270

`9-A067998(n)²`
-/

namespace A157371.P17157988236402053270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A067998 n ^ 2

end

end A157371.P17157988236402053270

namespace A157371

/-- `9-A067998(n)²` -/
def P17157988236402053270.Spec : Prop :=
  ∀ n, P17157988236402053270.a n = A157371 n

theorem P17157988236402053270.correct : P17157988236402053270.Spec := by
  intro n
  simp only [A157371, Nat.add_sub_cancel, A157371.P17157988236402053270.a, A157371.P11123575271812654545.a, A067998, A067998.P12062298001294777272.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A157371

/-!
# A157372: Number of ways to write the (n+50)-th positive odd integer in the form p+2^x+51*2^y with p an odd prime and x,y positive integers.

The programs for A157372, there is no canonical definition to state claims against.
-/

/-! ## A157372.P7705170056387385745

`A109925(A163985(n)+A151934(2*n))`
-/

namespace A157372.P7705170056387385745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (A163985 n + A151934 (2 * n)).toNat

end

end A157372.P7705170056387385745

/-! ## A157372.P9397247815890532412

`A109925(or(A151934(2*n), A163985(n)))`
-/

namespace A157372.P9397247815890532412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109925 (Int.lor (A151934 (2 * n)) (A163985 n)).toNat

end

end A157372.P9397247815890532412

/-! ## A157372.P5542451845318575589

`A109925(A004280(n+1))%A014237(A280417(n))`
-/

namespace A157372.P5542451845318575589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109925 (A004280 (n + 1)).toNat) (A014237 (A280417 n).toNat)

end

end A157372.P5542451845318575589

/-!
# A157373: a(n) = 49*n^2 - 20*n + 2.

The programs for A157373, the canonical program `A157373.P8759725065568610804` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157373 has offset 1).

The definition of A157373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `49*(n+1)²-20*(n+1)+2` (program `A157373.P8759725065568610804`, by `A157373.P8759725065568610804.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157373.P8759725065568610804

`49*(n+1)²-20*(n+1)+2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157373

/-- `49*(n+1)²-20*(n+1)+2` -/
def P8759725065568610804.Spec : Prop :=
  ∀ n, P8759725065568610804.a n = A157373 (n + 1)

theorem P8759725065568610804.correct : P8759725065568610804.Spec := by
  intro n
  simp only [A157373, Nat.add_sub_cancel]

end A157373

/-! ## A157373.P9016317181587235113

`floor(A157375(n+1)/49)`
-/

namespace A157373.P9016317181587235113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157375 (n + 1) : ℚ) / 49⌋

end

end A157373.P9016317181587235113

namespace A157373

/-- `floor(A157375(n+1)/49)` -/
def P9016317181587235113.Spec : Prop :=
  ∀ n, P9016317181587235113.a n = A157373 (n + 1)

end A157373

/-! ## A157373.P662554577416440870

`or(2, ∑[A157947(n+1)-70])`
-/

namespace A157373.P662554577416440870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157947 (n + 1) - 70

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157373.P662554577416440870

namespace A157373

/-- `or(2, ∑[A157947(n+1)-70])` -/
def P662554577416440870.Spec : Prop :=
  ∀ n, P662554577416440870.a n = A157373 (n + 1)

end A157373

/-! ## A157373.P9686976732407928430

`abs(A016969(n)-A017053(n)²)`
-/

namespace A157373.P9686976732407928430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016969 n - A017053 n ^ 2|

end

end A157373.P9686976732407928430

namespace A157373

/-- `abs(A016969(n)-A017053(n)²)` -/
def P9686976732407928430.Spec : Prop :=
  ∀ n, P9686976732407928430.a n = A157373 (n + 1)

end A157373

/-! ## A157373.P11465092489384574967

`abs(A079273(n+1)-A304381(n+1))`
-/

namespace A157373.P11465092489384574967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A079273 (n + 1) - A304381 (n + 1)|

end

end A157373.P11465092489384574967

namespace A157373

/-- `abs(A079273(n+1)-A304381(n+1))` -/
def P11465092489384574967.Spec : Prop :=
  ∀ n, P11465092489384574967.a n = A157373 (n + 1)

end A157373

/-! ## A157373.P14027626545821984488

`∑[A000038(n)+A157947(n+1)-70]`
-/

namespace A157373.P14027626545821984488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A157947 (n + 1) - 70)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A157373.P14027626545821984488

namespace A157373

/-- `∑[A000038(n)+A157947(n+1)-70]` -/
def P14027626545821984488.Spec : Prop :=
  ∀ n, P14027626545821984488.a n = A157373 (n + 1)

end A157373

/-! ## A157373.P2345133336514144566

`A000027(A017054(n)-A016969(n))`
-/

namespace A157373.P2345133336514144566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A017054 n - A016969 n).toNat

end

end A157373.P2345133336514144566

namespace A157373

/-- `A000027(A017054(n)-A016969(n))` -/
def P2345133336514144566.Spec : Prop :=
  ∀ n, P2345133336514144566.a n = A157373 (n + 1)

end A157373

/-!
# A157374: a(n) = 343*n - 70.

The programs for A157374, the canonical program `A157374.P968636900317402524` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157374 has offset 1).

The definition of A157374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `343*(n+1)-70` (program `A157374.P968636900317402524`, by `A157374.P968636900317402524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A157374.P968636900317402524

`343*(n+1)-70`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157374

/-- `343*(n+1)-70` -/
def P968636900317402524.Spec : Prop :=
  ∀ n, P968636900317402524.a n = A157374 (n + 1)

theorem P968636900317402524.correct : P968636900317402524.Spec := by
  intro n
  simp only [A157374, Nat.add_sub_cancel]

end A157374

/-!
# A157375: a(n) = 2401*n^2 - 980*n + 99.

The programs for A157375, the canonical program `A157375.P14757936349599132114` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A157375 has offset 1).

The definition of A157375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A157375.P14757936349599132114

`(10-49*(n+1))²-1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A157375

/-- `(10-49*(n+1))²-1` -/
def P14757936349599132114.Spec : Prop :=
  ∀ n, P14757936349599132114.a n = A157375 (n + 1)

theorem P14757936349599132114.correct : P14757936349599132114.Spec := by
  intro n
  simp only [A157375, Nat.add_sub_cancel]

end A157375

/-! ## A157375.P11044361422994585818

`abs(1-A017030(A017041(n)))`
-/

namespace A157375.P11044361422994585818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A017030 (A017041 n).toNat|

end

end A157375.P11044361422994585818

namespace A157375

/-- `abs(1-A017030(A017041(n)))` -/
def P11044361422994585818.Spec : Prop :=
  ∀ n, P11044361422994585818.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P3119726648745509193

`floor(A017030(A017041(n))-A000034(n)/5)`
-/

namespace A157375.P3119726648745509193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017030 (A017041 n).toNat : ℚ) - (A000034 n : ℚ) / 5⌋

end

end A157375.P3119726648745509193

namespace A157375

/-- `floor(A017030(A017041(n))-A000034(n)/5)` -/
def P3119726648745509193.Spec : Prop :=
  ∀ n, P3119726648745509193.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P35105847791326559

`gcd(1-A017030(A017041(n)), A292313(n+1)%3)`
-/

namespace A157375.P35105847791326559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A017030 (A017041 n).toNat) (Int.tmod (A292313 (n + 1)) 3)

end

end A157375.P35105847791326559

namespace A157375

/-- `gcd(1-A017030(A017041(n)), A292313(n+1)%3)` -/
def P35105847791326559.Spec : Prop :=
  ∀ n, (P35105847791326559.a n : ℤ) = A157375 (n + 1)

end A157375

/-! ## A157375.P7326963700329570394

`(A017030(A017041(n))-1)/A001222(A089793(n))`
-/

namespace A157375.P7326963700329570394
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017030 (A017041 n).toNat - 1 : ℚ) / (A001222 (A089793 n).toNat : ℚ)

end

end A157375.P7326963700329570394

namespace A157375

/-- `(A017030(A017041(n))-1)/A001222(A089793(n))` -/
def P7326963700329570394.Spec : Prop :=
  ∀ n, P7326963700329570394.a n = (A157375 (n + 1) : ℚ)

end A157375

/-! ## A157375.P11285150235198367688

`A132411(50*n+39-n)`
-/

namespace A157375.P11285150235198367688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (50 * n + 39 - n)

end

end A157375.P11285150235198367688

namespace A157375

/-- `A132411(50*n+39-n)` -/
def P11285150235198367688.Spec : Prop :=
  ∀ n, P11285150235198367688.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P12351143193072675875

`A082562(A156674(2*(n+1)))`
-/

namespace A157375.P12351143193072675875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (A156674 (2 * (n + 1))).toNat

end

end A157375.P12351143193072675875

namespace A157375

/-- `A082562(A156674(2*(n+1)))` -/
def P12351143193072675875.Spec : Prop :=
  ∀ n, P12351143193072675875.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P1399457082845779370

`A082562(A157374(n+1)/7)`
-/

namespace A157375.P1399457082845779370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (SequenceMachineLib.roundAway ((A157374 (n + 1) : ℚ) / 7)).toNat

end

end A157375.P1399457082845779370

namespace A157375

/-- `A082562(A157374(n+1)/7)` -/
def P1399457082845779370.Spec : Prop :=
  ∀ n, P1399457082845779370.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P13976231871475412672

`A067998(A158066(n+1)-10)`
-/

namespace A157375.P13976231871475412672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 (A158066 (n + 1) - 10).toNat

end

end A157375.P13976231871475412672

namespace A157375

/-- `A067998(A158066(n+1)-10)` -/
def P13976231871475412672.Spec : Prop :=
  ∀ n, P13976231871475412672.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P9137223988523345420

`A106230(A158066(n+1)-10)`
-/

namespace A157375.P9137223988523345420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106230 (A158066 (n + 1) - 10).toNat

end

end A157375.P9137223988523345420

namespace A157375

/-- `A106230(A158066(n+1)-10)` -/
def P9137223988523345420.Spec : Prop :=
  ∀ n, P9137223988523345420.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P7076706989880943717

`A082562(A158066(n+1)-11)`
-/

namespace A157375.P7076706989880943717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082562 (A158066 (n + 1) - 11).toNat

end

end A157375.P7076706989880943717

namespace A157375

/-- `A082562(A158066(n+1)-11)` -/
def P7076706989880943717.Spec : Prop :=
  ∀ n, P7076706989880943717.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P17476902445643852869

`A005563(A158066(n+1)-12)`
-/

namespace A157375.P17476902445643852869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A158066 (n + 1) - 12).toNat

end

end A157375.P17476902445643852869

namespace A157375

/-- `A005563(A158066(n+1)-12)` -/
def P17476902445643852869.Spec : Prop :=
  ∀ n, P17476902445643852869.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P7385762785978630021

`A005563(A242181(n+1)-(n+1))`
-/

namespace A157375.P7385762785978630021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A242181 (n + 1) - (n + 1 : ℤ)).toNat

end

end A157375.P7385762785978630021

namespace A157375

/-- `A005563(A242181(n+1)-(n+1))` -/
def P7385762785978630021.Spec : Prop :=
  ∀ n, P7385762785978630021.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P16060487891084853239

`A005563(A170837(3*n+4)+n+1)`
-/

namespace A157375.P16060487891084853239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A170837 (3 * n + 4) + (n + 1 : ℤ)).toNat

end

end A157375.P16060487891084853239

namespace A157375

/-- `A005563(A170837(3*n+4)+n+1)` -/
def P16060487891084853239.Spec : Prop :=
  ∀ n, P16060487891084853239.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P16321162937253786770

`A024206(Δ[(7*n+2)²])`
-/

namespace A157375.P16321162937253786770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (7 * n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024206 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A157375.P16321162937253786770

namespace A157375

/-- `A024206(Δ[(7*n+2)²])` -/
def P16321162937253786770.Spec : Prop :=
  ∀ n, P16321162937253786770.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P14299339680049506013

`A175628(Δ[A017006(n)])`
-/

namespace A157375.P14299339680049506013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (f1 (n + 1) - f1 n).toNat

end

end A157375.P14299339680049506013

namespace A157375

/-- `A175628(Δ[A017006(n)])` -/
def P14299339680049506013.Spec : Prop :=
  ∀ n, P14299339680049506013.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P10365287932293871699

`A035106(Δ[A017005(n)²])`
-/

namespace A157375.P10365287932293871699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035106 (f1 (n + 1) - f1 n).toNat

end

end A157375.P10365287932293871699

namespace A157375

/-- `A035106(Δ[A017005(n)²])` -/
def P10365287932293871699.Spec : Prop :=
  ∀ n, P10365287932293871699.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P8240353602421184621

`A087279(Δ[A017005(n)²])`
-/

namespace A157375.P8240353602421184621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (f1 (n + 1) - f1 n).toNat

end

end A157375.P8240353602421184621

namespace A157375

/-- `A087279(Δ[A017005(n)²])` -/
def P8240353602421184621.Spec : Prop :=
  ∀ n, P8240353602421184621.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P8642752532242153124

`A175628(Δ[A017005(n)²])`
-/

namespace A157375.P8642752532242153124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175628 (f1 (n + 1) - f1 n).toNat

end

end A157375.P8642752532242153124

namespace A157375

/-- `A175628(Δ[A017005(n)²])` -/
def P8642752532242153124.Spec : Prop :=
  ∀ n, P8642752532242153124.a n = A157375 (n + 1)

end A157375

/-! ## A157375.P964587178090965846

`A198442(Δ[A017006(n)]+1)`
-/

namespace A157375.P964587178090965846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198442 (f1 (n + 1) - f1 n + 1).toNat

end

end A157375.P964587178090965846

namespace A157375

/-- `A198442(Δ[A017006(n)]+1)` -/
def P964587178090965846.Spec : Prop :=
  ∀ n, P964587178090965846.a n = A157375 (n + 1)

end A157375

/-!
# A157376: a(n) = 6561*n^2 - 7732*n + 2278.

The programs for A157376, there is no canonical definition to state claims against.
-/

/-! ## A157376.P9704985441478209099

`round((A157378(n+1)/A157377(n+1))²)`
-/

namespace A157376.P9704985441478209099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((A157378 (n + 1) : ℚ) / (A157377 (n + 1) : ℚ)) ^ 2)

end

end A157376.P9704985441478209099

/-! ## A157376.P18418880073421118347

`A157668(A017209(n))/9`
-/

namespace A157376.P18418880073421118347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157668 (A017209 n).toNat : ℚ) / 9

end

end A157376.P18418880073421118347

/-! ## A157376.P15495851209113328095

`A157668(Δ[A022266(n)])/9`
-/

namespace A157376.P15495851209113328095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157668 (f1 (n + 1) - f1 n).toNat : ℚ) / 9

end

end A157376.P15495851209113328095

/-!
# A157377: a(n) = 531441*n - 313146.

The programs for A157377, there is no canonical definition to state claims against.
-/

/-! ## A157377.P4891274247219699391

`round(A157378(n+1)/sqrt(A157376(n+1)))`
-/

namespace A157377.P4891274247219699391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A157378 (n + 1) : ℝ) / Real.sqrt (A157376 (n + 1) : ℝ))

end

end A157377.P4891274247219699391

/-!
# A157378: a(n) = 43046721*n^2 - 50729652*n + 14945957.

The programs for A157378, there is no canonical definition to state claims against.
-/

/-! ## A157378.P4246768757770583687

`A157670(9*n+4)`
-/

namespace A157378.P4246768757770583687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157670 (9 * n + 4)

end

end A157378.P4246768757770583687

/-! ## A157378.P5123271285527455214

`or(A000035(n), A157670(A017209(n)))`
-/

namespace A157378.P5123271285527455214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A157670 (A017209 n).toNat)

end

end A157378.P5123271285527455214

/-! ## A157378.P4517665537406438213

`A157670(A017209(n))+A000007(n+1)`
-/

namespace A157378.P4517665537406438213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157670 (A017209 n).toNat + A000007 (n + 1)

end

end A157378.P4517665537406438213

/-! ## A157378.P3797891926765747080

`A157670(A017209(n))+and(8, A007949(n+1))`
-/

namespace A157378.P3797891926765747080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157670 (A017209 n).toNat + Int.land 8 (A007949 (n + 1))

end

end A157378.P3797891926765747080

/-! ## A157378.P15544219661309241593

`A007318(A025458(n))*A157670(A017209(n))`
-/

namespace A157378.P15544219661309241593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A025458 n).toNat * A157670 (A017209 n).toNat

end

end A157378.P15544219661309241593

/-! ## A157378.P8500678690482434999

`A157670(A017209(n))*A304042(∑[n])`
-/

namespace A157378.P8500678690482434999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157670 (A017209 n).toNat * A304042 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A157378.P8500678690482434999

/-! ## A157378.P16501704364531039077

`A157670(A017209(n))/A000688(A106759(n+1))`
-/

namespace A157378.P16501704364531039077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157670 (A017209 n).toNat : ℚ) / (A000688 (A106759 (n + 1)).toNat : ℚ)

end

end A157378.P16501704364531039077

/-! ## A157378.P5219257906723021746

`A156773(A156795(n+1)+12)`
-/

namespace A157378.P5219257906723021746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156773 (A156795 (n + 1) + 12).toNat

end

end A157378.P5219257906723021746

/-! ## A157378.P91599360359595245

`A157670(A017209(n))/A007318(A135517(n²))`
-/

namespace A157378.P91599360359595245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157670 (A017209 n).toNat : ℚ) / (A007318 (A135517 (n ^ 2)).toNat : ℚ)

end

end A157378.P91599360359595245

/-!
# A157379: Triangle read by rows: k X k determinants at the n-th row of A126988 without the first column of ones.

The programs for A157379, there is no canonical definition to state claims against.
-/

/-! ## A157379.P3831402093406981930

`A157283(A014132(n+1))`
-/

namespace A157379.P3831402093406981930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157283 (A014132 (n + 1)).toNat

end

end A157379.P3831402093406981930

/-! ## A157379.P9376752137759443974

`A157283(A007401(n+2))`
-/

namespace A157379.P9376752137759443974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157283 (A007401 (n + 2)).toNat

end

end A157379.P9376752137759443974

/-!
# A157383: A partition product of Stirling_1 type [parameter k = -3] with biggest-part statistic (triangle read by rows).

The programs for A157383, there is no canonical definition to state claims against.
-/

/-! ## A157383.P3280181297361015626

`A157393(n+1)*A240228(A056391(n+1))`
-/

namespace A157383.P3280181297361015626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157393 (n + 1) * A240228 (A056391 (n + 1)).toNat

end

end A157383.P3280181297361015626

/-! ## A157383.P13533343577580899997

`A157393(n+1)*A333381(A000799(n+1))`
-/

namespace A157383.P13533343577580899997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157393 (n + 1) * A333381 (A000799 (n + 1)).toNat

end

end A157383.P13533343577580899997

/-!
# A157384: A partition product of Stirling_1 type [parameter k = -4] with biggest-part statistic (triangle read by rows).

The programs for A157384, there is no canonical definition to state claims against.
-/

/-! ## A157384.P11059939928324562765

`A118759(and(A157398(n+1), A157405(n)))`
-/

namespace A157384.P11059939928324562765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.land (A157398 (n + 1)) (A157405 n)).toNat

end

end A157384.P11059939928324562765

/-! ## A157384.P11756962731669522128

`and(A157398(A181720(n+1)), A157405(n))`
-/

namespace A157384.P11756962731669522128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157398 (A181720 (n + 1)).toNat) (A157405 n)

end

end A157384.P11756962731669522128

/-! ## A157384.P15343457177286300090

`and(A003215(A186561(n+1)), A157398(n+1))`
-/

namespace A157384.P15343457177286300090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003215 (A186561 (n + 1)).toNat) (A157398 (n + 1))

end

end A157384.P15343457177286300090

/-! ## A157384.P5222151579448692239

`and(A157395(n+1), A157398(A181720(n+1)))`
-/

namespace A157384.P5222151579448692239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157395 (n + 1)) (A157398 (A181720 (n + 1)).toNat)

end

end A157384.P5222151579448692239

/-!
# A157385: A partition product of Stirling_1 type [parameter k = -5] with biggest-part statistic (triangle read by rows).

The programs for A157385, there is no canonical definition to state claims against.
-/

/-! ## A157385.P14640542207812754755

`A308440(A065956(n))`
-/

namespace A157385.P14640542207812754755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308440 (A065956 n).toNat

end

end A157385.P14640542207812754755

/-! ## A157385.P6266245996197406977

`A308440(A293855(n))`
-/

namespace A157385.P6266245996197406977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308440 (A293855 n).toNat

end

end A157385.P6266245996197406977

/-! ## A157385.P7418198583076209630

`A013988(A067513(n!))`
-/

namespace A157385.P7418198583076209630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013988 (A067513 (Nat.factorial n)).toNat

end

end A157385.P7418198583076209630

/-! ## A157385.P2248671682470565657

`A308440(A022858(n+1))`
-/

namespace A157385.P2248671682470565657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308440 (A022858 (n + 1)).toNat

end

end A157385.P2248671682470565657

/-!
# A157386: A partition product of Stirling_1 type [parameter k = -6] with biggest-part statistic (triangle read by rows).

The programs for A157386, there is no canonical definition to state claims against.
-/

/-! ## A157386.P15632562921027572467

`A178858(A265225(n*A123125(n)))`
-/

namespace A157386.P15632562921027572467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (A265225 ((n : ℤ) * A123125 n).toNat).toNat

end

end A157386.P15632562921027572467

/-! ## A157386.P2554416113154983062

`A280802(A000073(n*A327618(n)))`
-/

namespace A157386.P2554416113154983062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280802 (A000073 ((n : ℤ) * A327618 n).toNat).toNat

end

end A157386.P2554416113154983062

/-! ## A157386.P3949226133962154662

`A178858(A265225(n*A324362(n)))`
-/

namespace A157386.P3949226133962154662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (A265225 ((n : ℤ) * A324362 n).toNat).toNat

end

end A157386.P3949226133962154662

/-! ## A157386.P5678050939041379588

`A178858(A265225(n)^A123125(n))`
-/

namespace A157386.P5678050939041379588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178858 (SequenceMachineLib.roundAway ((A265225 n : ℚ) ^ (A123125 n : ℤ))).toNat

end

end A157386.P5678050939041379588

/-!
# A157391: A partition product of Stirling_1 type [parameter k = 1] with biggest-part statistic (triangle read by rows).

The programs for A157391, there is no canonical definition to state claims against.
-/

/-! ## A157391.P10832317429540371694

`C(A080510(n+1), A135313(n))`
-/

namespace A157391.P10832317429540371694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080510 (n + 1)).toNat (A135313 n).toNat

end

end A157391.P10832317429540371694

/-! ## A157391.P14947959102517289388

`C(A126074(n+1), A135313(n))`
-/

namespace A157391.P14947959102517289388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126074 (n + 1)).toNat (A135313 n).toNat

end

end A157391.P14947959102517289388

/-! ## A157391.P3303219734828264372

`C(A080510(n+1), A256311(n))`
-/

namespace A157391.P3303219734828264372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080510 (n + 1)).toNat (A256311 n).toNat

end

end A157391.P3303219734828264372

/-! ## A157391.P141076625704344501

`C(A080510(n+1), A259465(n))`
-/

namespace A157391.P141076625704344501
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080510 (n + 1)).toNat (A259465 n).toNat

end

end A157391.P141076625704344501

/-! ## A157391.P6903096750554596713

`C(A080510(n+1), A267480(n))`
-/

namespace A157391.P6903096750554596713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080510 (n + 1)).toNat (A267480 n).toNat

end

end A157391.P6903096750554596713

/-! ## A157391.P18113539509777105068

`C(A126074(n+1), A267480(n))`
-/

namespace A157391.P18113539509777105068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126074 (n + 1)).toNat (A267480 n).toNat

end

end A157391.P18113539509777105068

/-! ## A157391.P10223867553231964064

`C(A080510(n+1), A131689(n)²)`
-/

namespace A157391.P10223867553231964064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080510 (n + 1)).toNat (A131689 n ^ 2).toNat

end

end A157391.P10223867553231964064

/-! ## A157391.P9881499776383608653

`C(A080510(n+1), A229223(n)²)`
-/

namespace A157391.P9881499776383608653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080510 (n + 1)).toNat (A229223 n ^ 2).toNat

end

end A157391.P9881499776383608653

/-! ## A157391.P10633521702589422210

`C(A080510(n+1), A261764(n)²)`
-/

namespace A157391.P10633521702589422210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080510 (n + 1)).toNat (A261764 n ^ 2).toNat

end

end A157391.P10633521702589422210

/-! ## A157391.P16311409656440253305

`C(A126074(n+1), A229223(n)²)`
-/

namespace A157391.P16311409656440253305
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A126074 (n + 1)).toNat (A229223 n ^ 2).toNat

end

end A157391.P16311409656440253305

/-!
# A157392: A partition product of Stirling_1 type [parameter k = 2] with biggest-part statistic (triangle read by rows).

The programs for A157392, there is no canonical definition to state claims against.
-/

/-! ## A157392.P11779873848021323128

`floor(A157400(n+1)/A157401(A166350(n+1)))`
-/

namespace A157392.P11779873848021323128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157400 (n + 1) : ℚ) / (A157401 (A166350 (n + 1)).toNat : ℚ)⌋

end

end A157392.P11779873848021323128

/-! ## A157392.P2998200272173058165

`and(A157402(n+1), A318456(A153654(n+1)))`
-/

namespace A157392.P2998200272173058165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157402 (n + 1)) (A318456 (A153654 (n + 1)).toNat)

end

end A157392.P2998200272173058165

/-!
# A157394: A partition product of Stirling_1 type [parameter k = 4] with biggest-part statistic (triangle read by rows).

The programs for A157394, there is no canonical definition to state claims against.
-/

/-! ## A157394.P7372693713154312568

`A157404(n+1)/A317937(A049774(n))`
-/

namespace A157394.P7372693713154312568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157404 (n + 1) : ℚ) / (A317937 (A049774 n).toNat : ℚ)

end

end A157394.P7372693713154312568

/-! ## A157394.P9226337552453461763

`A046523(A157398(n+1)^A250261(n))`
-/

namespace A157394.P9226337552453461763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (SequenceMachineLib.roundAway ((A157398 (n + 1) : ℚ) ^ (A250261 n : ℤ))).toNat

end

end A157394.P9226337552453461763

/-! ## A157394.P2174064784011116885

`A195459(A157385(n+1)^A141169(n))`
-/

namespace A157394.P2174064784011116885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195459 (SequenceMachineLib.roundAway ((A157385 (n + 1) : ℚ) ^ (A141169 n : ℤ))).toNat

end

end A157394.P2174064784011116885

/-! ## A157394.P5682230023397798253

`A046523(A157398(n+1)%A377161(n))`
-/

namespace A157394.P5682230023397798253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod (A157398 (n + 1)) (A377161 (n + 11))).toNat

end

end A157394.P5682230023397798253

/-! ## A157394.P16039696029724817007

`gcd(A014452(A087523(n)), A157404(n+1))`
-/

namespace A157394.P16039696029724817007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014452 (A087523 n).toNat) (A157404 (n + 1))

end

end A157394.P16039696029724817007

/-!
# A157395: A partition product of Stirling_1 type [parameter k = 5] with biggest-part statistic (triangle read by rows).

The programs for A157395, there is no canonical definition to state claims against.
-/

/-! ## A157395.P9679844350714126664

`A157405(n)%A119714(A160664(n))`
-/

namespace A157395.P9679844350714126664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157405 n) (A119714 (A160664 n).toNat)

end

end A157395.P9679844350714126664

/-! ## A157395.P14654506808335463640

`A157397(n+1)-A242096(A052394(n))`
-/

namespace A157395.P14654506808335463640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157397 (n + 1) - A242096 (A052394 n).toNat

end

end A157395.P14654506808335463640

/-! ## A157395.P3850087019058778521

`A157397(n+1)%A141214(A056515(n))`
-/

namespace A157395.P3850087019058778521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157397 (n + 1)) (A141214 (A056515 n).toNat)

end

end A157395.P3850087019058778521

/-! ## A157395.P8117469301750230966

`A036040(A240096(n+1)%A051483(n+1))`
-/

namespace A157395.P8117469301750230966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036040 (Int.tmod (A240096 (n + 1)) (A051483 (n + 1))).toNat

end

end A157395.P8117469301750230966

/-!
# A157397: A partition product of Stirling_2 type [parameter k = -5] with biggest-part statistic (triangle read by rows).

The programs for A157397, there is no canonical definition to state claims against.
-/

/-! ## A157397.P16960229369837271910

`A106617(A157385(n+1))*A135010(A276726(n))`
-/

namespace A157397.P16960229369837271910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106617 (A157385 (n + 1)).toNat * A135010 (A276726 n).toNat

end

end A157397.P16960229369837271910

/-! ## A157397.P13671071229638676085

`∏{p}[A308440(A022858(n+1)), or(1, #)]`
-/

namespace A157397.P13671071229638676085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308440 (A022858 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.lor 1 p

end

end A157397.P13671071229638676085

/-! ## A157397.P6431534115064909172

`C(A136149(A052931(n)), A002262(n))`
-/

namespace A157397.P6431534115064909172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A136149 (A052931 n).toNat).toNat (A002262 n).toNat

end

end A157397.P6431534115064909172

/-! ## A157397.P12081728816419242232

`A003961(C(A355367(n+6), A123125(n)))`
-/

namespace A157397.P12081728816419242232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (Nat.choose (A355367 (n + 6)).toNat (A123125 n).toNat)

end

end A157397.P12081728816419242232

/-!
# A157398: A partition product of Stirling_2 type [parameter k = -4] with biggest-part statistic (triangle read by rows).

The programs for A157398, there is no canonical definition to state claims against.
-/

/-! ## A157398.P7350129436652376457

`or(A157384(A088472(n+1)), A157394(n+1))`
-/

namespace A157398.P7350129436652376457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A157384 (A088472 (n + 1)).toNat) (A157394 (n + 1))

end

end A157398.P7350129436652376457

/-! ## A157398.P7344144379396023571

`or(A118759(A157384(n+1)), A157394(n+1))`
-/

namespace A157398.P7344144379396023571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118759 (A157384 (n + 1)).toNat) (A157394 (n + 1))

end

end A157398.P7344144379396023571

/-! ## A157398.P17493209714197649795

`A157384(A088472(n+1))+A157384(n+1)-A157394(n+1)`
-/

namespace A157398.P17493209714197649795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157384 (A088472 (n + 1)).toNat + (A157384 (n + 1) - A157394 (n + 1))

end

end A157398.P17493209714197649795

