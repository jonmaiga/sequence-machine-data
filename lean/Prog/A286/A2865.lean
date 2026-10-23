import SequenceMachineLib
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A286500: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 187", based on the 5-celled von Neumann neighborhood.

The programs for A286500, there is no canonical definition to state claims against.
-/

/-! ## A286500.P14675971611253247193

`A007088(A286502(n))`
-/

namespace A286500.P14675971611253247193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286502 n).toNat

end

end A286500.P14675971611253247193

/-!
# A286501: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 187", based on the 5-celled von Neumann neighborhood.

The programs for A286501, there is no canonical definition to state claims against.
-/

/-! ## A286501.P13943997094349818000

`or(A101834(A001316(n)), A286206(n))`
-/

namespace A286501.P13943997094349818000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A101834 (A001316 n).toNat) (A286206 n)

end

end A286501.P13943997094349818000

/-! ## A286501.P715619344035816568

`or(A003056(A035294(n)), A286206(n))`
-/

namespace A286501.P715619344035816568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003056 (A035294 n).toNat) (A286206 n)

end

end A286501.P715619344035816568

/-! ## A286501.P1796778275047150572

`or(A125975(A061987(n)), A286206(n))`
-/

namespace A286501.P1796778275047150572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A125975 (A061987 n).toNat) (A286206 n)

end

end A286501.P1796778275047150572

/-! ## A286501.P3164162843724183062

`or(A002262(A109740(n+1)), A286206(n))`
-/

namespace A286501.P3164162843724183062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A109740 (n + 1)).toNat) (A286206 n)

end

end A286501.P3164162843724183062

/-! ## A286501.P13162957967367565716

`or(A002262(A256077(n+1)), A286206(n))`
-/

namespace A286501.P13162957967367565716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A256077 (n + 1)).toNat) (A286206 n)

end

end A286501.P13162957967367565716

/-!
# A286502: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 187", based on the 5-celled von Neumann neighborhood.

The programs for A286502, there is no canonical definition to state claims against.
-/

/-! ## A286502.P16159024132769981039

`or(A000010(A282659(n)), A286207(n))`
-/

namespace A286502.P16159024132769981039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000010 (A282659 n).toNat) (A286207 n)

end

end A286502.P16159024132769981039

/-!
# A286503: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A286503, there is no canonical definition to state claims against.
-/

/-! ## A286503.P9659148516790716901

`A007088(A286505(n))`
-/

namespace A286503.P9659148516790716901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286505 n).toNat

end

end A286503.P9659148516790716901

/-! ## A286503.P12598708885833126101

`A185544(2*A286505(n))`
-/

namespace A286503.P12598708885833126101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286505 n).toNat

end

end A286503.P12598708885833126101

/-! ## A286503.P5164103526147043804

`A213729(A045623(n))*A286403(n)`
-/

namespace A286503.P5164103526147043804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213729 (A045623 n).toNat * A286403 n

end

end A286503.P5164103526147043804

/-! ## A286503.P10306409398189318855

`C(A286403(n), A066636(A041204(n)))`
-/

namespace A286503.P10306409398189318855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286403 n).toNat (A066636 (A041204 n).toNat).toNat

end

end A286503.P10306409398189318855

/-! ## A286503.P12571650362086610380

`A286403(n)*A341969(A286376(n+1))`
-/

namespace A286503.P12571650362086610380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286403 n * A341969 (A286376 (n + 1)).toNat

end

end A286503.P12571650362086610380

/-!
# A286504: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A286504, there is no canonical definition to state claims against.
-/

/-! ## A286504.P13459976049075588761

`A007088(A286506(n))`
-/

namespace A286504.P13459976049075588761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A286506 n).toNat

end

end A286504.P13459976049075588761

/-! ## A286504.P5202140708541173481

`A185544(2*A286506(n))`
-/

namespace A286504.P5202140708541173481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A286506 n).toNat

end

end A286504.P5202140708541173481

/-! ## A286504.P3309769959644049205

`A195470(A331562(3*n+1))*A286404(n)`
-/

namespace A286504.P3309769959644049205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195470 (A331562 (3 * n + 1)).toNat * A286404 n

end

end A286504.P3309769959644049205

/-! ## A286504.P6847255601942887785

`A145568(A342456(n))*A286404(n)`
-/

namespace A286504.P6847255601942887785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 (A342456 n).toNat * A286404 n

end

end A286504.P6847255601942887785

/-! ## A286504.P11422251936086774035

`A286404(n)*A341969(A286376(n+1))`
-/

namespace A286504.P11422251936086774035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286404 n * A341969 (A286376 (n + 1)).toNat

end

end A286504.P11422251936086774035

/-!
# A286505: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A286505, there is no canonical definition to state claims against.
-/

/-! ## A286505.P7105601966441497728

`A286405(n)%A004277(A288298(n))`
-/

namespace A286505.P7105601966441497728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286405 n) (A004277 (A288298 n).toNat)

end

end A286505.P7105601966441497728

/-! ## A286505.P3208861536965528750

`C(A286405(n), A124324(A145271(n)))`
-/

namespace A286505.P3208861536965528750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286405 n).toNat (A124324 (A145271 n).toNat).toNat

end

end A286505.P3208861536965528750

/-! ## A286505.P5587527132570895566

`A196368(A238865(3*n))*A286405(n)`
-/

namespace A286505.P5587527132570895566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196368 (A238865 (3 * n)).toNat * A286405 n

end

end A286505.P5587527132570895566

/-! ## A286505.P733923955805188154

`A145568(A026597(n))*A286405(n)`
-/

namespace A286505.P733923955805188154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 (A026597 n).toNat * A286405 n

end

end A286505.P733923955805188154

/-! ## A286505.P1291943663264489408

`A286405(n)*A341969(A286376(n+1))`
-/

namespace A286505.P1291943663264489408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286405 n * A341969 (A286376 (n + 1)).toNat

end

end A286505.P1291943663264489408

/-!
# A286506: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 189", based on the 5-celled von Neumann neighborhood.

The programs for A286506, there is no canonical definition to state claims against.
-/

/-! ## A286506.P15198596440535932206

`C(A286406(n), A305962(A305962(4*n)))`
-/

namespace A286506.P15198596440535932206
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286406 n).toNat (A305962 (A305962 (4 * n)).toNat).toNat

end

end A286506.P15198596440535932206

/-! ## A286506.P7074001458839590157

`A135416(A346061(3*n+1))*A286406(n)`
-/

namespace A286506.P7074001458839590157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135416 (A346061 (3 * n + 1)).toNat * A286406 n

end

end A286506.P7074001458839590157

/-! ## A286506.P16924940246696607750

`C(A286406(n), A179108(n+1)^A237123(2*n+3))`
-/

namespace A286506.P16924940246696607750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A286406 n).toNat (SequenceMachineLib.roundAway ((A179108 (n + 1) : ℚ) ^ (A237123 (2 * n + 3) : ℤ))).toNat

end

end A286506.P16924940246696607750

/-! ## A286506.P4874796985530398439

`A000007(A186747(3*n))*A286406(n)`
-/

namespace A286506.P4874796985530398439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A186747 (3 * n)).toNat * A286406 n

end

end A286506.P4874796985530398439

/-! ## A286506.P12704824166477603223

`A145568(A026597(n))*A286406(n)`
-/

namespace A286506.P12704824166477603223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145568 (A026597 n).toNat * A286406 n

end

end A286506.P12704824166477603223

/-!
# A286507: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

The programs for A286507, the canonical program `A286507.P11972298538238567441` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286507 has offset 0).

The definition of A286507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286507.P11972298538238567441

`10^floor(n/2)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286507

/-- `10^floor(n/2)` -/
def P11972298538238567441.Spec : Prop :=
  ∀ n, P11972298538238567441.a n = (A286507 n : ℚ)

end A286507

/-! ## A286507.P17111416946191238578

`ogf((1+x)/(1-10x^2))`
-/

namespace A286507.P17111416946191238578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -10] n

end

end A286507.P17111416946191238578

namespace A286507

/-- `ogf((1+x)/(1-10x^2))` -/
def P17111416946191238578.Spec : Prop :=
  ∀ n, P17111416946191238578.a n = A286507 n

end A286507

/-! ## A286507.P3135306981619630816

`10*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A286507.P3135306981619630816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  10 * a (n - 2)

end

end A286507.P3135306981619630816

namespace A286507

/-- `10*a(n-2)` -/
def P3135306981619630816.Spec : Prop :=
  ∀ n, (P3135306981619630816.a n : ℤ) = A286507 n

end A286507

/-! ## A286507.P4236012215231763563

`∏[gcd(10, (n%2)^n)]`
-/

namespace A286507.P4236012215231763563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 ((n % 2) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286507.P4236012215231763563

namespace A286507

/-- `∏[gcd(10, (n%2)^n)]` -/
def P4236012215231763563.Spec : Prop :=
  ∀ n, (P4236012215231763563.a n : ℤ) = A286507 n

end A286507

/-! ## A286507.P14045062820879282810

`∏[11-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A286507.P14045062820879282810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286507.P14045062820879282810

namespace A286507

/-- `∏[11-a(n-1)]` -/
def P14045062820879282810.Spec : Prop :=
  ∀ n, P14045062820879282810.a n = A286507 n

end A286507

/-! ## A286507.P17761532968359456063

`ceil(10^(and(n, -2)/2))`
-/

namespace A286507.P17761532968359456063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ)⌉

end

end A286507.P17761532968359456063

namespace A286507

/-- `ceil(10^(and(n, -2)/2))` -/
def P17761532968359456063.Spec : Prop :=
  ∀ n, P17761532968359456063.a n = A286507 n

end A286507

/-! ## A286507.P13723588262013389521

`round(10^(and(n, -2)/2))`
-/

namespace A286507.P13723588262013389521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℝ) ^ ((Int.land (n : ℤ) (-2) : ℚ) / 2 : ℝ))

end

end A286507.P13723588262013389521

namespace A286507

/-- `round(10^(and(n, -2)/2))` -/
def P13723588262013389521.Spec : Prop :=
  ∀ n, P13723588262013389521.a n = A286507 n

end A286507

/-! ## A286507.P6234558044918899785

`∏[ceil(10^((n-1)%2))]`
-/

namespace A286507.P6234558044918899785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286507.P6234558044918899785

namespace A286507

/-- `∏[ceil(10^((n-1)%2))]` -/
def P6234558044918899785.Spec : Prop :=
  ∀ n, P6234558044918899785.a n = A286507 n

end A286507

/-! ## A286507.P6566043717547979106

`a(n-2)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=1`
-/

namespace A286507.P6566043717547979106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A286507.P6566043717547979106

namespace A286507

/-- `a(n-2)+a(n-2)/(1/3)²` -/
def P6566043717547979106.Spec : Prop :=
  ∀ n, P6566043717547979106.a n = (A286507 n : ℚ)

end A286507

/-! ## A286507.P7687184610641947963

`A017936(or(1, n))`
-/

namespace A286507.P7687184610641947963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (Nat.lor 1 n)

end

end A286507.P7687184610641947963

namespace A286507

/-- `A017936(or(1, n))` -/
def P7687184610641947963.Spec : Prop :=
  ∀ n, P7687184610641947963.a n = A286507 n

end A286507

/-! ## A286507.P14523541845265562176

`A104459(or(1, n))`
-/

namespace A286507.P14523541845265562176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (Nat.lor 1 n)

end

end A286507.P14523541845265562176

namespace A286507

/-- `A104459(or(1, n))` -/
def P14523541845265562176.Spec : Prop :=
  ∀ n, P14523541845265562176.a n = A286507 n

end A286507

/-! ## A286507.P2572369093169229192

`A011557(floor(n/2))`
-/

namespace A286507.P2572369093169229192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 ⌊(n : ℚ) / 2⌋.toNat

end

end A286507.P2572369093169229192

namespace A286507

/-- `A011557(floor(n/2))` -/
def P2572369093169229192.Spec : Prop :=
  ∀ n, P2572369093169229192.a n = A286507 n

end A286507

/-! ## A286507.P10124113177456388696

`A004643(or(1, n)-1)`
-/

namespace A286507.P10124113177456388696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (Nat.lor 1 n - 1)

end

end A286507.P10124113177456388696

namespace A286507

/-- `A004643(or(1, n)-1)` -/
def P10124113177456388696.Spec : Prop :=
  ∀ n, P10124113177456388696.a n = A286507 n

end A286507

/-! ## A286507.P8764718207289673719

`A017934(or(1, n)-1)`
-/

namespace A286507.P8764718207289673719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (Nat.lor 1 n - 1)

end

end A286507.P8764718207289673719

namespace A286507

/-- `A017934(or(1, n)-1)` -/
def P8764718207289673719.Spec : Prop :=
  ∀ n, P8764718207289673719.a n = A286507 n

end A286507

/-! ## A286507.P12161493753476523060

`A004643(n-and(1, n))`
-/

namespace A286507.P12161493753476523060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (n - Nat.land 1 n)

end

end A286507.P12161493753476523060

namespace A286507

/-- `A004643(n-and(1, n))` -/
def P12161493753476523060.Spec : Prop :=
  ∀ n, P12161493753476523060.a n = A286507 n

end A286507

/-! ## A286507.P10290950308791694058

`A178501(∑[char[2*n]])`
-/

namespace A286507.P10290950308791694058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178501 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286507.P10290950308791694058

namespace A286507

/-- `A178501(∑[char[2*n]])` -/
def P10290950308791694058.Spec : Prop :=
  ∀ n, P10290950308791694058.a n = A286507 n

end A286507

/-! ## A286507.P3130240239925936436

`A286508((n-1)%(n+1))`
-/

namespace A286507.P3130240239925936436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286508 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A286507.P3130240239925936436

namespace A286507

/-- `A286508((n-1)%(n+1))` -/
def P3130240239925936436.Spec : Prop :=
  ∀ n, P3130240239925936436.a n = A286507 n

end A286507

/-! ## A286507.P4943296413819778460

`∏[10%(3^A020639(n+1))]`
-/

namespace A286507.P4943296413819778460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 10 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A020639 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286507.P4943296413819778460

namespace A286507

/-- `∏[10%(3^A020639(n+1))]` -/
def P4943296413819778460.Spec : Prop :=
  ∀ n, P4943296413819778460.a n = A286507 n

end A286507

/-! ## A286507.P15164136773270831366

`A000462(A008805(n))`
-/

namespace A286507.P15164136773270831366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000462 (A008805 n).toNat

end

end A286507.P15164136773270831366

namespace A286507

/-- `A000462(A008805(n))` -/
def P15164136773270831366.Spec : Prop :=
  ∀ n, P15164136773270831366.a n = A286507 n

end A286507

/-! ## A286507.P15070700468275758087

`A004643(A052928(n))`
-/

namespace A286507.P15070700468275758087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004643 (A052928 n).toNat

end

end A286507.P15070700468275758087

namespace A286507

/-- `A004643(A052928(n))` -/
def P15070700468275758087.Spec : Prop :=
  ∀ n, P15070700468275758087.a n = A286507 n

end A286507

/-!
# A286508: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 190", based on the 5-celled von Neumann neighborhood.

The programs for A286508, the canonical program `A286508.P14124605830329588782` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286508 has offset 0).

The definition of A286508 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286508.P7348853818164561740

`10^ceil(n/2)`
-/

namespace A286508.P7348853818164561740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A286508.P7348853818164561740

namespace A286508

/-- `10^ceil(n/2)` -/
def P7348853818164561740.Spec : Prop :=
  ∀ n, P7348853818164561740.a n = (A286508 n : ℚ)

end A286508

/-! ## A286508.P236166060750636582

`∏[10^(n%2)]`
-/

namespace A286508.P236166060750636582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P236166060750636582

namespace A286508

/-- `∏[10^(n%2)]` -/
def P236166060750636582.Spec : Prop :=
  ∀ n, (P236166060750636582.a n : ℤ) = A286508 n

end A286508

/-! ## A286508.P7056366708143431875

`∏[10^and(1, n)]`
-/

namespace A286508.P7056366708143431875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P7056366708143431875

namespace A286508

/-- `∏[10^and(1, n)]` -/
def P7056366708143431875.Spec : Prop :=
  ∀ n, (P7056366708143431875.a n : ℤ) = A286508 n

end A286508

/-! ## A286508.P14124605830329588782

`∏[C(10, and(1, n))]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286508

/-- `∏[C(10, and(1, n))]` -/
def P14124605830329588782.Spec : Prop :=
  ∀ n, (P14124605830329588782.a n : ℤ) = A286508 n

theorem P14124605830329588782.correct : P14124605830329588782.Spec := by
  intro n
  simp only [A286508]

end A286508

/-! ## A286508.P17085372237644343912

`∏[C(10, n²%2)]`
-/

namespace A286508.P17085372237644343912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 10 (n ^ 2 % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P17085372237644343912

namespace A286508

/-- `∏[C(10, n²%2)]` -/
def P17085372237644343912.Spec : Prop :=
  ∀ n, (P17085372237644343912.a n : ℤ) = A286508 n

end A286508

/-! ## A286508.P10893422720728468776

`∏[gcd(10, log2(gcd(2, n)))]`
-/

namespace A286508.P10893422720728468776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 10 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P10893422720728468776

namespace A286508

/-- `∏[gcd(10, log2(gcd(2, n)))]` -/
def P10893422720728468776.Spec : Prop :=
  ∀ n, (P10893422720728468776.a n : ℤ) = A286508 n

end A286508

/-! ## A286508.P973668342472739322

`ogf((1+10x)/(1-10x^2))`
-/

namespace A286508.P973668342472739322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10] [1, 0, -10] n

end

end A286508.P973668342472739322

namespace A286508

/-- `ogf((1+10x)/(1-10x^2))` -/
def P973668342472739322.Spec : Prop :=
  ∀ n, P973668342472739322.a n = A286508 n

end A286508

/-! ## A286508.P7032723318528884629

`10*a(n-2)` with `a(0)=1, a(1)=10`
-/

namespace A286508.P7032723318528884629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n a =>
  10 * a (n - 2)

end

end A286508.P7032723318528884629

namespace A286508

/-- `10*a(n-2)` -/
def P7032723318528884629.Spec : Prop :=
  ∀ n, (P7032723318528884629.a n : ℤ) = A286508 n

end A286508

/-! ## A286508.P4262205158623099102

`∏[11-a(n-1)]` with `a(0)=1`
-/

namespace A286508.P4262205158623099102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P4262205158623099102

namespace A286508

/-- `∏[11-a(n-1)]` -/
def P4262205158623099102.Spec : Prop :=
  ∀ n, P4262205158623099102.a n = A286508 n

end A286508

/-! ## A286508.P16556805781672634616

`∏[floor(cosh((2*n+1)%4))]`
-/

namespace A286508.P16556805781672634616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (((2 * n + 1) % 4 : ℕ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P16556805781672634616

namespace A286508

/-- `∏[floor(cosh((2*n+1)%4))]` -/
def P16556805781672634616.Spec : Prop :=
  ∀ n, P16556805781672634616.a n = A286508 n

end A286508

/-! ## A286508.P9385386027785699567

`∏[floor(cosh(2*and(1, n)+1))]`
-/

namespace A286508.P9385386027785699567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (2 * Nat.land 1 n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P9385386027785699567

namespace A286508

/-- `∏[floor(cosh(2*and(1, n)+1))]` -/
def P9385386027785699567.Spec : Prop :=
  ∀ n, P9385386027785699567.a n = A286508 n

end A286508

/-! ## A286508.P15179007986940517838

`∏[floor(sinh(2*and(1, n)+1))]`
-/

namespace A286508.P15179007986940517838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (2 * Nat.land 1 n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P15179007986940517838

namespace A286508

/-- `∏[floor(sinh(2*and(1, n)+1))]` -/
def P15179007986940517838.Spec : Prop :=
  ∀ n, P15179007986940517838.a n = A286508 n

end A286508

/-! ## A286508.P16777734357164114727

`∏[round(sinh(and(3, 2*n+1)))]`
-/

namespace A286508.P16777734357164114727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (Nat.land 3 (2 * n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P16777734357164114727

namespace A286508

/-- `∏[round(sinh(and(3, 2*n+1)))]` -/
def P16777734357164114727.Spec : Prop :=
  ∀ n, P16777734357164114727.a n = A286508 n

end A286508

/-! ## A286508.P13076454026666556272

`floor(10^∑[1-a(n-1)])` with `a(0)=0`
-/

namespace A286508.P13076454026666556272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A286508.P13076454026666556272

namespace A286508

/-- `floor(10^∑[1-a(n-1)])` -/
def P13076454026666556272.Spec : Prop :=
  ∀ n, P13076454026666556272.a n = A286508 n

end A286508

/-! ## A286508.P4287707963005229833

`∏[A010691(n)]`
-/

namespace A286508.P4287707963005229833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P4287707963005229833

namespace A286508

/-- `∏[A010691(n)]` -/
def P4287707963005229833.Spec : Prop :=
  ∀ n, P4287707963005229833.a n = A286508 n

end A286508

/-! ## A286508.P4724453941315861276

`A286507(n+1)`
-/

namespace A286508.P4724453941315861276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286507 (n + 1)

end

end A286508.P4724453941315861276

namespace A286508

/-- `A286507(n+1)` -/
def P4724453941315861276.Spec : Prop :=
  ∀ n, P4724453941315861276.a n = A286508 n

end A286508

/-! ## A286508.P6166942972172646096

`A011557(ceil(n/2))`
-/

namespace A286508.P6166942972172646096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 ⌈(n : ℚ) / 2⌉.toNat

end

end A286508.P6166942972172646096

namespace A286508

/-- `A011557(ceil(n/2))` -/
def P6166942972172646096.Spec : Prop :=
  ∀ n, P6166942972172646096.a n = A286508 n

end A286508

/-! ## A286508.P4634576489050244891

`∏[A040029(n+1)]`
-/

namespace A286508.P4634576489050244891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P4634576489050244891

namespace A286508

/-- `∏[A040029(n+1)]` -/
def P4634576489050244891.Spec : Prop :=
  ∀ n, P4634576489050244891.a n = A286508 n

end A286508

/-! ## A286508.P6675340386614844546

`∏[A288697(n+3)]`
-/

namespace A286508.P6675340386614844546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288697 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A286508.P6675340386614844546

namespace A286508

/-- `∏[A288697(n+3)]` -/
def P6675340386614844546.Spec : Prop :=
  ∀ n, P6675340386614844546.a n = A286508 n

end A286508

/-! ## A286508.P11555722179942635022

`A017936(or(1, n+1))`
-/

namespace A286508.P11555722179942635022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017936 (Nat.lor 1 (n + 1))

end

end A286508.P11555722179942635022

namespace A286508

/-- `A017936(or(1, n+1))` -/
def P11555722179942635022.Spec : Prop :=
  ∀ n, P11555722179942635022.a n = A286508 n

end A286508

/-!
# A286509: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of k-th power of continued fraction 1/(1 + x/(1 + x^2/(1 + x^3/(1 + x^4/(1 + x^5/(1 + ...)))))).

The programs for A286509, there is no canonical definition to state claims against.
-/

/-! ## A286509.P17173982195294318776

`A110555(n)+A082859(A102480(n))`
-/

namespace A286509.P17173982195294318776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n + A082859 (A102480 n).toNat

end

end A286509.P17173982195294318776

/-! ## A286509.P1416773369689126330

`A110555(n)+A082859(A143632(n))`
-/

namespace A286509.P1416773369689126330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 n + A082859 (A143632 n).toNat

end

end A286509.P1416773369689126330

/-! ## A286509.P9350803106994836394

`A103778(∑[A072189(n)]*A061579(n))`
-/

namespace A286509.P9350803106994836394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103778 ((∑ j ∈ Finset.range (n + 1), f1 j) * A061579 n).toNat

end

end A286509.P9350803106994836394

/-! ## A286509.P16024577719816440774

`A103778((A072189(n)+1)*A061579(n))`
-/

namespace A286509.P16024577719816440774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103778 ((A072189 n + 1) * A061579 n).toNat

end

end A286509.P16024577719816440774

/-! ## A286509.P16235151274736472666

`A008966(A291219(n))*A110555(n)`
-/

namespace A286509.P16235151274736472666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A291219 n).toNat * A110555 n

end

end A286509.P16235151274736472666

/-!
# A286510: Number of primitive roots g mod prime(n) for which there is no solution to g^x == x (mod p) with 2 <= x <= prime(n)-2.

The programs for A286510, there is no canonical definition to state claims against.
-/

/-! ## A286510.P3911164227034652229

`A008330(abs(1-n)+2)-A174407(n+1)`
-/

namespace A286510.P3911164227034652229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (|1 - (n : ℤ)| + 2).toNat - A174407 (n + 1)

end

end A286510.P3911164227034652229

/-! ## A286510.P6883868794812630260

`A028310(A008330(n+1)-A174407(n+1))`
-/

namespace A286510.P6883868794812630260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A008330 (n + 1) - A174407 (n + 1)).toNat

end

end A286510.P6883868794812630260

/-! ## A286510.P4280231391327324158

`A008330(n+1)+A000007(n)-A174407(n+1)`
-/

namespace A286510.P4280231391327324158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1) + (A000007 n - A174407 (n + 1))

end

end A286510.P4280231391327324158

/-! ## A286510.P12765761708196782057

`A008330(n+1)-A057427(n)*A174407(n+1)`
-/

namespace A286510.P12765761708196782057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1) - A057427 n * A174407 (n + 1)

end

end A286510.P12765761708196782057

/-! ## A286510.P6768726449217808386

`A008330(n+1)-A174407(n+1)%A052905(n)`
-/

namespace A286510.P6768726449217808386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008330 (n + 1) - Int.tmod (A174407 (n + 1)) (A052905 n)

end

end A286510.P6768726449217808386

/-!
# A286515: a(n) = denominator(Bernoulli_{n}(x)) / denominator(Bernoulli_{n}).

The programs for A286515, there is no canonical definition to state claims against.
-/

/-! ## A286515.P11483329999055637085

`A144845(n)/A027642(n)`
-/

namespace A286515.P11483329999055637085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A027642 n : ℚ)

end

end A286515.P11483329999055637085

/-! ## A286515.P13494591548370555622

`A144845(n)/(A050932(n)*A326584(n+1))`
-/

namespace A286515.P13494591548370555622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A050932 n * A326584 (n + 1) : ℚ)

end

end A286515.P13494591548370555622

/-! ## A286515.P13773385985345122537

`A324371(n+1)/A027642(n)*A195441(n)`
-/

namespace A286515.P13773385985345122537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324371 (n + 1) : ℚ) / (A027642 n : ℚ) * (A195441 n : ℚ)

end

end A286515.P13773385985345122537

/-! ## A286515.P436082699827290238

`lcm(A007947(n+1), A195441(n))/A027642(n)`
-/

namespace A286515.P436082699827290238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A007947 (n + 1)) (A195441 n) : ℚ) / (A027642 n : ℚ)

end

end A286515.P436082699827290238

/-! ## A286515.P5184134037946924317

`A144845(n)/sqrt(A172282(n))`
-/

namespace A286515.P5184134037946924317
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℝ) / Real.sqrt (A172282 n : ℝ)

end

end A286515.P5184134037946924317

/-! ## A286515.P17898189316530348277

`A144845(n)/lcm(A089026(n+1), A176289(n))`
-/

namespace A286515.P17898189316530348277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (Int.lcm (A089026 (n + 1)) (A176289 n) : ℚ)

end

end A286515.P17898189316530348277

/-! ## A286515.P13975462110468045187

`A007947(n+1)/A027642(n)*A318256(n)`
-/

namespace A286515.P13975462110468045187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A027642 n : ℚ) * (A318256 n : ℚ)

end

end A286515.P13975462110468045187

/-! ## A286515.P2766839493516835139

`A001898(n)/(A027642(n)*A341109(n))`
-/

namespace A286515.P2766839493516835139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001898 n : ℚ) / (A027642 n * A341109 n : ℚ)

end

end A286515.P2766839493516835139

/-! ## A286515.P14808496945052073563

`A144845(n)/A162299(∑[n])`
-/

namespace A286515.P14808496945052073563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 n : ℚ) / (A162299 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A286515.P14808496945052073563

/-! ## A286515.P8507315803655991239

`A213615(∑[n])/A027642(n)`
-/

namespace A286515.P8507315803655991239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213615 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A027642 n : ℚ)

end

end A286515.P8507315803655991239

/-!
# A286516: a(n) = b(2*n-1)/b(2*n) where b(n) = A195441(n-1) = denominator(Bernoulli_{n}(x) - Bernoulli_{n}).

The programs for A286516, the canonical program `A286516.P4254569439348095728` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286516 has offset 1).

The definition of A286516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286516.P11220020337125345045

`A195441(2*(n+1)-2)/A195441(2*(n+1)-1)`
-/

namespace A286516.P11220020337125345045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195441 (2 * (n + 1) - 2) : ℚ) / (A195441 (2 * (n + 1) - 1) : ℚ)

end

end A286516.P11220020337125345045

namespace A286516

/-- `A195441(2*(n+1)-2)/A195441(2*(n+1)-1)` -/
def P11220020337125345045.Spec : Prop :=
  ∀ n, P11220020337125345045.a n = (A286516 (n + 1) : ℚ)

end A286516

/-! ## A286516.P4254569439348095728

`gcd(n+1, A324371(2*(n+1)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286516

/-- `gcd(n+1, A324371(2*(n+1)))` -/
def P4254569439348095728.Spec : Prop :=
  ∀ n, (P4254569439348095728.a n : ℤ) = A286516 (n + 1)

theorem P4254569439348095728.correct : P4254569439348095728.Spec := by
  intro n
  simp only [A286516, Nat.add_sub_cancel]

end A286516

/-! ## A286516.P4111210687780208683

`A324371(A103517(n))`
-/

namespace A286516.P4111210687780208683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A103517 n).toNat

end

end A286516.P4111210687780208683

namespace A286516

/-- `A324371(A103517(n))` -/
def P4111210687780208683.Spec : Prop :=
  ∀ n, P4111210687780208683.a n = A286516 (n + 1)

end A286516

/-! ## A286516.P6631724461697206953

`A324371(A057543(n+1))`
-/

namespace A286516.P6631724461697206953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (A057543 (n + 1)).toNat

end

end A286516.P6631724461697206953

namespace A286516

/-- `A324371(A057543(n+1))` -/
def P6631724461697206953.Spec : Prop :=
  ∀ n, P6631724461697206953.a n = A286516 (n + 1)

end A286516

/-! ## A286516.P7525764033614123203

`A324371((n+1)*gcd(2, A022146(n)))`
-/

namespace A286516.P7525764033614123203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 ((n + 1) * Int.gcd 2 (A022146 n))

end

end A286516.P7525764033614123203

namespace A286516

/-- `A324371((n+1)*gcd(2, A022146(n)))` -/
def P7525764033614123203.Spec : Prop :=
  ∀ n, P7525764033614123203.a n = A286516 (n + 1)

end A286516

/-! ## A286516.P4952569512901133675

`A324371(2*(n+1))/A141044(n+1)`
-/

namespace A286516.P4952569512901133675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324371 (2 * (n + 1)) : ℚ) / (A141044 (n + 1) : ℚ)

end

end A286516.P4952569512901133675

namespace A286516

/-- `A324371(2*(n+1))/A141044(n+1)` -/
def P4952569512901133675.Spec : Prop :=
  ∀ n, P4952569512901133675.a n = (A286516 (n + 1) : ℚ)

end A286516

/-! ## A286516.P8405865923156932179

`ceil(A064538(2*n)/A064538(2*n+1))`
-/

namespace A286516.P8405865923156932179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A064538 (2 * n) : ℚ) / (A064538 (2 * n + 1) : ℚ)⌉

end

end A286516.P8405865923156932179

namespace A286516

/-- `ceil(A064538(2*n)/A064538(2*n+1))` -/
def P8405865923156932179.Spec : Prop :=
  ∀ n, P8405865923156932179.a n = A286516 (n + 1)

end A286516

/-! ## A286516.P13229406634537728182

`A324371(2*n+2)+1-A141044(2*n)`
-/

namespace A286516.P13229406634537728182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (2 * n + 2) + (1 - A141044 (2 * n))

end

end A286516.P13229406634537728182

namespace A286516

/-- `A324371(2*n+2)+1-A141044(2*n)` -/
def P13229406634537728182.Spec : Prop :=
  ∀ n, P13229406634537728182.a n = A286516 (n + 1)

end A286516

/-! ## A286516.P6085947597944709131

`A324371(2*(n+1))/A027642(2*n+1)`
-/

namespace A286516.P6085947597944709131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324371 (2 * (n + 1)) : ℚ) / (A027642 (2 * n + 1) : ℚ)

end

end A286516.P6085947597944709131

namespace A286516

/-- `A324371(2*(n+1))/A027642(2*n+1)` -/
def P6085947597944709131.Spec : Prop :=
  ∀ n, P6085947597944709131.a n = (A286516 (n + 1) : ℚ)

end A286516

/-! ## A286516.P13618813413531385114

`A324371(2*(n+1))/A089026(2*(n+1))`
-/

namespace A286516.P13618813413531385114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324371 (2 * (n + 1)) : ℚ) / (A089026 (2 * (n + 1)) : ℚ)

end

end A286516.P13618813413531385114

namespace A286516

/-- `A324371(2*(n+1))/A089026(2*(n+1))` -/
def P13618813413531385114.Spec : Prop :=
  ∀ n, P13618813413531385114.a n = (A286516 (n + 1) : ℚ)

end A286516

/-! ## A286516.P6317967047282701030

`lcm(A019554(n+2), A324371(2*(n+1)))/A019554(n+2)`
-/

namespace A286516.P6317967047282701030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A019554 (n + 2)) (A324371 (2 * (n + 1))) : ℚ) / (A019554 (n + 2) : ℚ)

end

end A286516.P6317967047282701030

namespace A286516

/-- `lcm(A019554(n+2), A324371(2*(n+1)))/A019554(n+2)` -/
def P6317967047282701030.Spec : Prop :=
  ∀ n, P6317967047282701030.a n = (A286516 (n + 1) : ℚ)

end A286516

/-! ## A286516.P7415319418771416286

`(A286515(2*n+1)+A064538(2*n))/A064538(2*n+1)`
-/

namespace A286516.P7415319418771416286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286515 (2 * n + 1) + A064538 (2 * n) : ℚ) / (A064538 (2 * n + 1) : ℚ)

end

end A286516.P7415319418771416286

namespace A286516

/-- `(A286515(2*n+1)+A064538(2*n))/A064538(2*n+1)` -/
def P7415319418771416286.Spec : Prop :=
  ∀ n, P7415319418771416286.a n = (A286516 (n + 1) : ℚ)

end A286516

/-! ## A286516.P2697023031716854735

`A324371(2*(n+1))/(A233583(n+2)-n)`
-/

namespace A286516.P2697023031716854735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324371 (2 * (n + 1)) : ℚ) / (A233583 (n + 2) - (n : ℤ) : ℚ)

end

end A286516.P2697023031716854735

namespace A286516

/-- `A324371(2*(n+1))/(A233583(n+2)-n)` -/
def P2697023031716854735.Spec : Prop :=
  ∀ n, P2697023031716854735.a n = (A286516 (n + 1) : ℚ)

end A286516

/-! ## A286516.P1986748878806346981

`A324371((2*n+1)^A239700(a(n-1)+1)+1)` with `a(0)=1`
-/

namespace A286516.P1986748878806346981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A324371 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ (A239700 (a (n - 1) + 1).toNat : ℤ) + 1)).toNat

end

end A286516.P1986748878806346981

namespace A286516

/-- `A324371((2*n+1)^A239700(a(n-1)+1)+1)` -/
def P1986748878806346981.Spec : Prop :=
  ∀ n, P1986748878806346981.a n = A286516 (n + 1)

end A286516

/-! ## A286516.P18015547319859024550

`A324371(2*(n+1))-C(A324371(2*n+1), A223331(2*n+1))`
-/

namespace A286516.P18015547319859024550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324371 (2 * (n + 1)) - (Nat.choose (A324371 (2 * n + 1)).toNat (A223331 (2 * n + 1)).toNat : ℤ)

end

end A286516.P18015547319859024550

namespace A286516

/-- `A324371(2*(n+1))-C(A324371(2*n+1), A223331(2*n+1))` -/
def P18015547319859024550.Spec : Prop :=
  ∀ n, P18015547319859024550.a n = A286516 (n + 1)

end A286516

/-!
# A286517: a(n) = b(2*n)/b(2*n+1) where b(n) = denominator(Bernoulli_{n}(x)).

The programs for A286517, the canonical program `A286517.P16062856258681799671` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286517 has offset 1).

The definition of A286517 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286517.P1840797411232378726

`A144845(2*(n+1))/A144845(2*(n+1)+1)`
-/

namespace A286517.P1840797411232378726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (2 * (n + 1)) : ℚ) / (A144845 (2 * (n + 1) + 1) : ℚ)

end

end A286517.P1840797411232378726

namespace A286517

/-- `A144845(2*(n+1))/A144845(2*(n+1)+1)` -/
def P1840797411232378726.Spec : Prop :=
  ∀ n, P1840797411232378726.a n = (A286517 (n + 1) : ℚ)

end A286517

/-! ## A286517.P16062856258681799671

`A324371(2*n+3)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286517

/-- `A324371(2*n+3)` -/
def P16062856258681799671.Spec : Prop :=
  ∀ n, P16062856258681799671.a n = A286517 (n + 1)

theorem P16062856258681799671.correct : P16062856258681799671.Spec := by
  intro n
  simp only [A286517, Nat.add_sub_cancel]

end A286517

/-! ## A286517.P207311735660206361

`A081210(A324371(Δ[(n+1)²]))`
-/

namespace A286517.P207311735660206361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081210 (A324371 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A286517.P207311735660206361

namespace A286517

/-- `A081210(A324371(Δ[(n+1)²]))` -/
def P207311735660206361.Spec : Prop :=
  ∀ n, P207311735660206361.a n = A286517 (n + 1)

end A286517

/-! ## A286517.P8745907817719880095

`A007947(A324371(Δ[(n+1)^2]))`
-/

namespace A286517.P8745907817719880095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A324371 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A286517.P8745907817719880095

namespace A286517

/-- `A007947(A324371(Δ[(n+1)^2]))` -/
def P8745907817719880095.Spec : Prop :=
  ∀ n, P8745907817719880095.a n = A286517 (n + 1)

end A286517

/-! ## A286517.P13243584715984543329

`A324371(Δ[(n+1)²])%A000041(n+7)`
-/

namespace A286517.P13243584715984543329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324371 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A000041 (n + 7))

end

end A286517.P13243584715984543329

namespace A286517

/-- `A324371(Δ[(n+1)²])%A000041(n+7)` -/
def P13243584715984543329.Spec : Prop :=
  ∀ n, P13243584715984543329.a n = A286517 (n + 1)

end A286517

/-! ## A286517.P10871311292735676111

`A144845(2*(n+1))/A195441(2*(n+1))`
-/

namespace A286517.P10871311292735676111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144845 (2 * (n + 1)) : ℚ) / (A195441 (2 * (n + 1)) : ℚ)

end

end A286517.P10871311292735676111

namespace A286517

/-- `A144845(2*(n+1))/A195441(2*(n+1))` -/
def P10871311292735676111.Spec : Prop :=
  ∀ n, P10871311292735676111.a n = (A286517 (n + 1) : ℚ)

end A286517

/-!
# A286518: Number of finite connected sets of positive integers greater than one with least common multiple n.

The programs for A286518, there is no canonical definition to state claims against.
-/

/-! ## A286518.P3930030339690989907

`A000010(A076078(n+1)%A244068(n+2))`
-/

namespace A286518.P3930030339690989907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A076078 (n + 1)) (A244068 (n + 2))).toNat

end

end A286518.P3930030339690989907

/-! ## A286518.P9086613498687175898

`A000010(A076078(n+1))%A356823(2*n+5)`
-/

namespace A286518.P9086613498687175898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A076078 (n + 1)).toNat) (A356823 (2 * n + 5))

end

end A286518.P9086613498687175898

/-! ## A286518.P7092253049754501490

`A000010(A076078(n+1))%A083361(n+1)`
-/

namespace A286518.P7092253049754501490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A076078 (n + 1)).toNat) (A083361 (n + 1))

end

end A286518.P7092253049754501490

/-! ## A286518.P14200472844861856598

`A000010(A076078(n+1))*A001221(A000043(n+1))`
-/

namespace A286518.P14200472844861856598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A076078 (n + 1)).toNat * A001221 (A000043 (n + 1)).toNat

end

end A286518.P14200472844861856598

/-! ## A286518.P9374197483382743629

`A000010(A076078(n+1))^A289508(A000056(n+1))`
-/

namespace A286518.P9374197483382743629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A076078 (n + 1)).toNat : ℚ) ^ (A289508 (A000056 (n + 1)).toNat : ℤ)

end

end A286518.P9374197483382743629

/-!
# A286519: Binary representation of the diagonal from the origin to the corner (or of the corner to the origin) of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

The programs for A286519, the canonical program `A286519.P7676926827839113296` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286519 has offset 0).

The definition of A286519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286519.P10323030009646001863

`A000042(n+1)-10*char[2]`
-/

namespace A286519.P10323030009646001863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - ((10 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A286519.P10323030009646001863

namespace A286519

/-- `A000042(n+1)-10*char[2]` -/
def P10323030009646001863.Spec : Prop :=
  ∀ n, P10323030009646001863.a n = A286519 n

end A286519

/-! ## A286519.P624050336237854412

`record[A290671(A136746(A004273(n)))]`
-/

namespace A286519.P624050336237854412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290671 (A136746 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286519.P624050336237854412

namespace A286519

/-- `record[A290671(A136746(A004273(n)))]` -/
def P624050336237854412.Spec : Prop :=
  ∀ n, P624050336237854412.a n = A286519 n

end A286519

/-! ## A286519.P7676926827839113296

`A290660(n)+A280411(n)%A283351(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A286519

/-- `A290660(n)+A280411(n)%A283351(n)` -/
def P7676926827839113296.Spec : Prop :=
  ∀ n, P7676926827839113296.a n = A286519 n

theorem P7676926827839113296.correct : P7676926827839113296.Spec := by
  intro n
  simp only [A286519]

end A286519

/-! ## A286519.P16816883542486338565

`record[A290416(A117909(n)%A084489(n+1))]`
-/

namespace A286519.P16816883542486338565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290416 (Int.tmod (A117909 n) (A084489 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286519.P16816883542486338565

namespace A286519

/-- `record[A290416(A117909(n)%A084489(n+1))]` -/
def P16816883542486338565.Spec : Prop :=
  ∀ n, P16816883542486338565.a n = A286519 n

end A286519

/-! ## A286519.P8958363721873518881

`record[A290671(A002024(A008458(n)))]`
-/

namespace A286519.P8958363721873518881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290671 (A002024 (A008458 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A286519.P8958363721873518881

namespace A286519

/-- `record[A290671(A002024(A008458(n)))]` -/
def P8958363721873518881.Spec : Prop :=
  ∀ n, P8958363721873518881.a n = A286519 n

end A286519

/-!
# A286520: Number of finite connected sets of pairwise indivisible positive integers greater than one with least common multiple n.

The programs for A286520, there is no canonical definition to state claims against.
-/

/-! ## A286520.P5890809729209563058

`A088696(A293900(n+2))`
-/

namespace A286520.P5890809729209563058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088696 (A293900 (n + 2)).toNat

end

end A286520.P5890809729209563058

/-! ## A286520.P17094164725564274356

`A122888(2^A335447(n+2))`
-/

namespace A286520.P17094164725564274356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122888 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A335447 (n + 2) : ℤ))).toNat

end

end A286520.P17094164725564274356

/-! ## A286520.P14646999402838425344

`∏{e}[A003665(A008480(n+2)), #]`
-/

namespace A286520.P14646999402838425344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003665 (A008480 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A286520.P14646999402838425344

/-! ## A286520.P10369967602801686622

`A096198(2^(A008480(n+2)-1)+1)`
-/

namespace A286520.P10369967602801686622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096198 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A008480 (n + 2) - 1 : ℤ) + 1)).toNat

end

end A286520.P10369967602801686622

/-! ## A286520.P15555325429876525876

`A136043(2^(A008480(n+2)-1)+1)`
-/

namespace A286520.P15555325429876525876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136043 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A008480 (n + 2) - 1 : ℤ) + 1)).toNat

end

end A286520.P15555325429876525876

/-! ## A286520.P9682254669945260290

`A096198(2^A008480(n+2)/2+1)`
-/

namespace A286520.P9682254669945260290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096198 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A008480 (n + 2) : ℤ) / 2 + 1)).toNat

end

end A286520.P9682254669945260290

/-! ## A286520.P6616668098917052507

`A136043(2^A008480(n+2)/2+1)`
-/

namespace A286520.P6616668098917052507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136043 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A008480 (n + 2) : ℤ) / 2 + 1)).toNat

end

end A286520.P6616668098917052507

/-! ## A286520.P11578265941496368562

`A305194(A285572(A286518(n+2))+5)`
-/

namespace A286520.P11578265941496368562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305194 (A285572 (A286518 (n + 2)).toNat + 5).toNat

end

end A286520.P11578265941496368562

/-! ## A286520.P9192993731271329674

`A003963(A290103(A318401(A318401(A285572(n+2)+1)+1)+1)+1)`
-/

namespace A286520.P9192993731271329674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A290103 (A318401 (A318401 (A285572 (n + 2) + 1).toNat + 1).toNat + 1).toNat + 1).toNat

end

end A286520.P9192993731271329674

/-!
# A286521: Decimal representation of the diagonal from the origin to the corner (or of the corner to the origin) of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 659", based on the 5-celled von Neumann neighborhood.

The programs for A286521, the canonical program `A286521.P126994347414957647` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286521 has offset 0).

The definition of A286521 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286521.P126994347414957647

`ogf((1-2x^2+6x^3-4x^4)/(1-3x+2x^2))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A286521

/-- `ogf((1-2x^2+6x^3-4x^4)/(1-3x+2x^2))` -/
def P126994347414957647.Spec : Prop :=
  ∀ n, P126994347414957647.a n = A286521 n

theorem P126994347414957647.correct : P126994347414957647.Spec := by
  intro n
  simp only [A286521]

end A286521

/-! ## A286521.P12956937499790398266

`or(5, 2*a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A286521.P12956937499790398266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.lor 5 (2 * a (n - 1))

end

end A286521.P12956937499790398266

namespace A286521

/-- `or(5, 2*a(n-1))` -/
def P12956937499790398266.Spec : Prop :=
  ∀ n, (P12956937499790398266.a n : ℤ) = A286521 n

end A286521

/-! ## A286521.P10841093714438349540

`or(a(n-1)+5, a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A286521.P10841093714438349540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.lor (a (n - 1) + 5) (a (n - 1))

end

end A286521.P10841093714438349540

namespace A286521

/-- `or(a(n-1)+5, a(n-1))` -/
def P10841093714438349540.Spec : Prop :=
  ∀ n, (P10841093714438349540.a n : ℤ) = A286521 n

end A286521

/-! ## A286521.P3041566331277846100

`2^(n+1)-a(n-1)%2` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A286521.P3041566331277846100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  (2 ^ (n + 1) : ℤ) - Int.tmod (a (n - 1)) 2

end

end A286521.P3041566331277846100

namespace A286521

/-- `2^(n+1)-a(n-1)%2` -/
def P3041566331277846100.Spec : Prop :=
  ∀ n, P3041566331277846100.a n = A286521 n

end A286521

/-! ## A286521.P12507210455240363606

`2^(n+1)-gcd(2, a(n-1))` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A286521.P12507210455240363606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  (2 ^ (n + 1) : ℤ) - (Int.gcd 2 (a (n - 1)) : ℤ)

end

end A286521.P12507210455240363606

namespace A286521

/-- `2^(n+1)-gcd(2, a(n-1))` -/
def P12507210455240363606.Spec : Prop :=
  ∀ n, P12507210455240363606.a n = A286521 n

end A286521

/-! ## A286521.P14964699016534762682

`xor(a(n-1)+1+n, a(n-1))+n` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A286521.P14964699016534762682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n a =>
  Nat.xor (a (n - 1) + 1 + n) (a (n - 1)) + n

end

end A286521.P14964699016534762682

namespace A286521

/-- `xor(a(n-1)+1+n, a(n-1))+n` -/
def P14964699016534762682.Spec : Prop :=
  ∀ n, (P14964699016534762682.a n : ℤ) = A286521 n

end A286521

/-! ## A286521.P2170119170487088101

`A126646(n)-2*char[2]`
-/

namespace A286521.P2170119170487088101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - ((2 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A286521.P2170119170487088101

namespace A286521

/-- `A126646(n)-2*char[2]` -/
def P2170119170487088101.Spec : Prop :=
  ∀ n, P2170119170487088101.a n = A286521 n

end A286521

/-! ## A286521.P8361385421793325861

`or(2*n+1, A283523(n))`
-/

namespace A286521.P8361385421793325861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (A283523 n)

end

end A286521.P8361385421793325861

namespace A286521

/-- `or(2*n+1, A283523(n))` -/
def P8361385421793325861.Spec : Prop :=
  ∀ n, P8361385421793325861.a n = A286521 n

end A286521

/-! ## A286521.P11418674747053739255

`or(2*n+1, A283591(n))`
-/

namespace A286521.P11418674747053739255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (A283591 n)

end

end A286521.P11418674747053739255

namespace A286521

/-- `or(2*n+1, A283591(n))` -/
def P11418674747053739255.Spec : Prop :=
  ∀ n, P11418674747053739255.a n = A286521 n

end A286521

/-! ## A286521.P2830556699472972060

`or(2*n+1, A290198(n))`
-/

namespace A286521.P2830556699472972060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (A290198 n)

end

end A286521.P2830556699472972060

namespace A286521

/-- `or(2*n+1, A290198(n))` -/
def P2830556699472972060.Spec : Prop :=
  ∀ n, P2830556699472972060.a n = A286521 n

end A286521

/-! ## A286521.P2090600559484994148

`or(A284481(n), A284482(n))`
-/

namespace A286521.P2090600559484994148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A284481 n) (A284482 n)

end

end A286521.P2090600559484994148

namespace A286521

/-- `or(A284481(n), A284482(n))` -/
def P2090600559484994148.Spec : Prop :=
  ∀ n, P2090600559484994148.a n = A286521 n

end A286521

/-! ## A286521.P2913108760997310577

`or(A290073(n), A290074(n))`
-/

namespace A286521.P2913108760997310577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290073 n) (A290074 n)

end

end A286521.P2913108760997310577

namespace A286521

/-- `or(A290073(n), A290074(n))` -/
def P2913108760997310577.Spec : Prop :=
  ∀ n, P2913108760997310577.a n = A286521 n

end A286521

/-! ## A286521.P12365376971685583463

`or(A290194(n), A290195(n))`
-/

namespace A286521.P12365376971685583463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290194 n) (A290195 n)

end

end A286521.P12365376971685583463

namespace A286521

/-- `or(A290194(n), A290195(n))` -/
def P12365376971685583463.Spec : Prop :=
  ∀ n, P12365376971685583463.a n = A286521 n

end A286521

/-! ## A286521.P11414815227246409224

`or(A290659(n), A290662(n))`
-/

namespace A286521.P11414815227246409224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290659 n) (A290662 n)

end

end A286521.P11414815227246409224

namespace A286521

/-- `or(A290659(n), A290662(n))` -/
def P11414815227246409224.Spec : Prop :=
  ∀ n, P11414815227246409224.a n = A286521 n

end A286521

/-! ## A286521.P8656519364836646714

`or(A290828(n), A290829(n))`
-/

namespace A286521.P8656519364836646714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290828 n) (A290829 n)

end

end A286521.P8656519364836646714

namespace A286521

/-- `or(A290828(n), A290829(n))` -/
def P8656519364836646714.Spec : Prop :=
  ∀ n, P8656519364836646714.a n = A286521 n

end A286521

/-! ## A286521.P9469751986289364911

`or(A290829(n), A290836(n))`
-/

namespace A286521.P9469751986289364911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290829 n) (A290836 n)

end

end A286521.P9469751986289364911

namespace A286521

/-- `or(A290829(n), A290836(n))` -/
def P9469751986289364911.Spec : Prop :=
  ∀ n, P9469751986289364911.a n = A286521 n

end A286521

/-! ## A286521.P1401252737498872605

`xor(A061761(n), A130102(n))`
-/

namespace A286521.P1401252737498872605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061761 n) (A130102 n)

end

end A286521.P1401252737498872605

namespace A286521

/-- `xor(A061761(n), A130102(n))` -/
def P1401252737498872605.Spec : Prop :=
  ∀ n, P1401252737498872605.a n = A286521 n

end A286521

/-! ## A286521.P7674666104784105418

`xor(A134451(n), A289098(n))`
-/

namespace A286521.P7674666104784105418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A134451 n) (A289098 n)

end

end A286521.P7674666104784105418

namespace A286521

/-- `xor(A134451(n), A289098(n))` -/
def P7674666104784105418.Spec : Prop :=
  ∀ n, P7674666104784105418.a n = A286521 n

end A286521

/-! ## A286521.P15632630685427323229

`or(A000265(n+2), A290836(n))`
-/

namespace A286521.P15632630685427323229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000265 (n + 2)) (A290836 n)

end

end A286521.P15632630685427323229

namespace A286521

/-- `or(A000265(n+2), A290836(n))` -/
def P15632630685427323229.Spec : Prop :=
  ∀ n, P15632630685427323229.a n = A286521 n

end A286521

/-! ## A286521.P8894713530985009557

`A000325(n+1)+A000325(n)-A130102(n)`
-/

namespace A286521.P8894713530985009557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000325 (n + 1) + (A000325 n - A130102 n)

end

end A286521.P8894713530985009557

namespace A286521

/-- `A000325(n+1)+A000325(n)-A130102(n)` -/
def P8894713530985009557.Spec : Prop :=
  ∀ n, P8894713530985009557.a n = A286521 n

end A286521

/-!
# A286522: Floor of the volume of the d-th Chern-Vaaler star body.

The programs for A286522, there is no canonical definition to state claims against.
-/

/-! ## A286522.P7674289723231331579

`floor(A286523(n)/A286524(n))`
-/

namespace A286522.P7674289723231331579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A286523 n : ℚ) / (A286524 n : ℚ)⌋

end

end A286522.P7674289723231331579

/-! ## A286522.P10098363830978645945

`∑[p?[A350843(3*n+5)]+floor(n/2)]`
-/

namespace A286522.P10098363830978645945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350843 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A286522.P10098363830978645945

/-! ## A286522.P7621254486635469360

`A324759(∑[A276625(n+1)])+1`
-/

namespace A286522.P7621254486635469360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A286522.P7621254486635469360

/-! ## A286522.P14501346426870818831

`A324759(∑[A297571(n+1)])+1`
-/

namespace A286522.P14501346426870818831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A286522.P14501346426870818831

/-! ## A286522.P7572095942022445106

`A178042(A038504(n))+A139482(n+1)`
-/

namespace A286522.P7572095942022445106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 (A038504 n).toNat + A139482 (n + 1)

end

end A286522.P7572095942022445106

/-!
# A286523: Numerator of the volume of the d-th Chern-Vaaler star body.

The programs for A286523, there is no canonical definition to state claims against.
-/

/-! ## A286523.P17980332168370117024

`A225878(A164225(n)+A036987(n))`
-/

namespace A286523.P17980332168370117024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225878 (A164225 n + A036987 n).toNat

end

end A286523.P17980332168370117024

/-! ## A286523.P8456620405173193323

`A320138(n)*A366606(A233824(n))`
-/

namespace A286523.P8456620405173193323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320138 n * A366606 (A233824 n).toNat

end

end A286523.P8456620405173193323

/-!
# A286524: Denominator of the volume of the d-th Chern-Vaaler star body.

The programs for A286524, there is no canonical definition to state claims against.
-/

/-! ## A286524.P305919506413585278

`A068238(∏[A290344(n)])`
-/

namespace A286524.P305919506413585278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290344 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068238 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286524.P305919506413585278

/-! ## A286524.P1015074134850010237

`A068238(∏[∏[A093178(n)]])`
-/

namespace A286524.P1015074134850010237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068238 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286524.P1015074134850010237

/-! ## A286524.P7415415180694706728

`A068238(A288757(round(acot(n)+n)))`
-/

namespace A286524.P7415415180694706728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068238 (A288757 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A286524.P7415415180694706728

/-!
# A286529: a(n) = d(n+d(n)), where d(n) is the number of divisors of n (A000005).

The programs for A286529, the canonical program `A286529.P6466603757288355970` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286529 has offset 1).

The definition of A286529 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A062249, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286529.P6466603757288355970

`A000005(A062249(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286529

/-- `A000005(A062249(n+1))` -/
def P6466603757288355970.Spec : Prop :=
  ∀ n, P6466603757288355970.a n = A286529 (n + 1)

theorem P6466603757288355970.correct : P6466603757288355970.Spec := by
  intro n
  simp only [A286529, Nat.add_sub_cancel]

end A286529

/-! ## A286529.P17835709366652830405

`A000005(n+1+A000005(n+1))`
-/

namespace A286529.P17835709366652830405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) + A000005 (n + 1)).toNat

end

end A286529.P17835709366652830405

namespace A286529

/-- `A000005(n+1+A000005(n+1))` -/
def P17835709366652830405.Spec : Prop :=
  ∀ n, P17835709366652830405.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P9308175477491425220

`∏{e}[∏{e}[n+1, #+1]+1+n, #+1]`
-/

namespace A286529.P9308175477491425220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A286529.P9308175477491425220

namespace A286529

/-- `∏{e}[∏{e}[n+1, #+1]+1+n, #+1]` -/
def P9308175477491425220.Spec : Prop :=
  ∀ n, (P9308175477491425220.a n : ℤ) = A286529 (n + 1)

end A286529

/-! ## A286529.P12739132452758633674

`A000005(A286479(n+1))`
-/

namespace A286529.P12739132452758633674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286479 (n + 1)).toNat

end

end A286529.P12739132452758633674

namespace A286529

/-- `A000005(A286479(n+1))` -/
def P12739132452758633674.Spec : Prop :=
  ∀ n, P12739132452758633674.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P15523095941831983856

`A000005(A158907(n+1)+1)`
-/

namespace A286529.P15523095941831983856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A158907 (n + 1) + 1).toNat

end

end A286529.P15523095941831983856

namespace A286529

/-- `A000005(A158907(n+1)+1)` -/
def P15523095941831983856.Spec : Prop :=
  ∀ n, P15523095941831983856.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P14703532817659387358

`A000005(A134871(n+1)+2)`
-/

namespace A286529.P14703532817659387358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134871 (n + 1) + 2).toNat

end

end A286529.P14703532817659387358

namespace A286529

/-- `A000005(A134871(n+1)+2)` -/
def P14703532817659387358.Spec : Prop :=
  ∀ n, P14703532817659387358.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P11847167861223573335

`A000005(A334954(n+1)+n)`
-/

namespace A286529.P11847167861223573335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A334954 (n + 1) + (n : ℤ)).toNat

end

end A286529.P11847167861223573335

namespace A286529

/-- `A000005(A334954(n+1)+n)` -/
def P11847167861223573335.Spec : Prop :=
  ∀ n, P11847167861223573335.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P3703291509747822816

`A000005(A325765(n)+2+n)`
-/

namespace A286529.P3703291509747822816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A325765 n + 2 + (n : ℤ)).toNat

end

end A286529.P3703291509747822816

namespace A286529

/-- `A000005(A325765(n)+2+n)` -/
def P3703291509747822816.Spec : Prop :=
  ∀ n, P3703291509747822816.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P14190169313170553663

`∑{d}[A286479(n+1), A057427(#)]`
-/

namespace A286529.P14190169313170553663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A286529.P14190169313170553663

namespace A286529

/-- `∑{d}[A286479(n+1), A057427(#)]` -/
def P14190169313170553663.Spec : Prop :=
  ∀ n, P14190169313170553663.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P13964231972225030928

`A000005(Δ[A006218(n)]+1+n)`
-/

namespace A286529.P13964231972225030928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n + 1 + (n : ℤ)).toNat

end

end A286529.P13964231972225030928

namespace A286529

/-- `A000005(Δ[A006218(n)]+1+n)` -/
def P13964231972225030928.Spec : Prop :=
  ∀ n, P13964231972225030928.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P5165311345205211209

`A320111(2*(A334954(n+1)+n))`
-/

namespace A286529.P5165311345205211209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * (A334954 (n + 1) + (n : ℤ))).toNat

end

end A286529.P5165311345205211209

namespace A286529

/-- `A320111(2*(A334954(n+1)+n))` -/
def P5165311345205211209.Spec : Prop :=
  ∀ n, P5165311345205211209.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P11791946710372426139

`A062558(A286479(2*n+1-n))`
-/

namespace A286529.P11791946710372426139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062558 (A286479 (2 * n + 1 - n)).toNat

end

end A286529.P11791946710372426139

namespace A286529

/-- `A062558(A286479(2*n+1-n))` -/
def P11791946710372426139.Spec : Prop :=
  ∀ n, P11791946710372426139.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P11922644645338940882

`∑{d}[A062249(n+1), A008683(#)+1]`
-/

namespace A286529.P11922644645338940882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A008683 d + 1)

end

end A286529.P11922644645338940882

namespace A286529

/-- `∑{d}[A062249(n+1), A008683(#)+1]` -/
def P11922644645338940882.Spec : Prop :=
  ∀ n, P11922644645338940882.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P3775284713384934859

`A000005(2*n-(n-1-A000005(2*n-(n-1))))`
-/

namespace A286529.P3775284713384934859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n : ℤ) - ((n : ℤ) - 1 - A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)).toNat

end

end A286529.P3775284713384934859

namespace A286529

/-- `A000005(2*n-(n-1-A000005(2*n-(n-1))))` -/
def P3775284713384934859.Spec : Prop :=
  ∀ n, P3775284713384934859.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P8865886877985564707

`A000005(A156745(n+1)-A006218(n))`
-/

namespace A286529.P8865886877985564707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A156745 (n + 1) - A006218 n).toNat

end

end A286529.P8865886877985564707

namespace A286529

/-- `A000005(A156745(n+1)-A006218(n))` -/
def P8865886877985564707.Spec : Prop :=
  ∀ n, P8865886877985564707.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P10997443068736489875

`A000005(Δ[A006218(n)+∑[n]])`
-/

namespace A286529.P10997443068736489875
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A286529.P10997443068736489875

namespace A286529

/-- `A000005(Δ[A006218(n)+∑[n]])` -/
def P10997443068736489875.Spec : Prop :=
  ∀ n, P10997443068736489875.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P12504451258419230780

`A032741(A158907(n+1)+1)+1`
-/

namespace A286529.P12504451258419230780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A158907 (n + 1) + 1).toNat + 1

end

end A286529.P12504451258419230780

namespace A286529

/-- `A032741(A158907(n+1)+1)+1` -/
def P12504451258419230780.Spec : Prop :=
  ∀ n, P12504451258419230780.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P8860746911145294425

`A032741(A334954(n+1)+n)+1`
-/

namespace A286529.P8860746911145294425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A334954 (n + 1) + (n : ℤ)).toNat + 1

end

end A286529.P8860746911145294425

namespace A286529

/-- `A032741(A334954(n+1)+n)+1` -/
def P8860746911145294425.Spec : Prop :=
  ∀ n, P8860746911145294425.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P5679217431587714288

`A334954(A334954(n+1)+n)-1`
-/

namespace A286529.P5679217431587714288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A334954 (n + 1) + (n : ℤ)).toNat - 1

end

end A286529.P5679217431587714288

namespace A286529

/-- `A334954(A334954(n+1)+n)-1` -/
def P5679217431587714288.Spec : Prop :=
  ∀ n, P5679217431587714288.a n = A286529 (n + 1)

end A286529

/-! ## A286529.P10355902993483928242

`A032741(∑{d}[n+1, A057427(#)]+n+1)+1`
-/

namespace A286529.P10355902993483928242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (∑ d ∈ Nat.divisors (f1 n), A057427 d + (n + 1 : ℤ)).toNat + 1

end

end A286529.P10355902993483928242

namespace A286529

/-- `A032741(∑{d}[n+1, A057427(#)]+n+1)+1` -/
def P10355902993483928242.Spec : Prop :=
  ∀ n, P10355902993483928242.a n = A286529 (n + 1)

end A286529

/-!
# A286530: a(n) = d(n+d(n)) - d(n), where d(n) is the number of divisors of n (A000005).

The programs for A286530, the canonical program `A286530.P8332738514861168906` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286530 has offset 1).

The definition of A286530 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A286529, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286530.P8332738514861168906

`A286529(n+1)-A000005(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286530

/-- `A286529(n+1)-A000005(n+1)` -/
def P8332738514861168906.Spec : Prop :=
  ∀ n, P8332738514861168906.a n = A286530 (n + 1)

theorem P8332738514861168906.correct : P8332738514861168906.Spec := by
  intro n
  simp only [A286530, Nat.add_sub_cancel]

end A286530

/-! ## A286530.P14756614315384035612

`A000005(n+1+A000005(n+1))-A000005(n+1)`
-/

namespace A286530.P14756614315384035612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1 : ℤ) + A000005 (n + 1)).toNat - A000005 (n + 1)

end

end A286530.P14756614315384035612

namespace A286530

/-- `A000005(n+1+A000005(n+1))-A000005(n+1)` -/
def P14756614315384035612.Spec : Prop :=
  ∀ n, P14756614315384035612.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P14951740923221427514

`A286529(n+1)-Δ[A054519(n)]`
-/

namespace A286530.P14951740923221427514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1) - (f1 (n + 1) - f1 n)

end

end A286530.P14951740923221427514

namespace A286530

/-- `A286529(n+1)-Δ[A054519(n)]` -/
def P14951740923221427514.Spec : Prop :=
  ∀ n, P14951740923221427514.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P8136009733847589947

`A286529(n+1)+1-A334954(n+1)`
-/

namespace A286530.P8136009733847589947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286529 (n + 1) + (1 - A334954 (n + 1))

end

end A286530.P8136009733847589947

namespace A286530

/-- `A286529(n+1)+1-A334954(n+1)` -/
def P8136009733847589947.Spec : Prop :=
  ∀ n, P8136009733847589947.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P1359737693424295740

`A049820(n+1)+A286529(n+1)-(n+1)`
-/

namespace A286530.P1359737693424295740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) + (A286529 (n + 1) - (n + 1 : ℤ))

end

end A286530.P1359737693424295740

namespace A286530

/-- `A049820(n+1)+A286529(n+1)-(n+1)` -/
def P1359737693424295740.Spec : Prop :=
  ∀ n, P1359737693424295740.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P3065250621891543203

`A000005(A062249(n+1))-Δ[A006218(n)]`
-/

namespace A286530.P3065250621891543203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062249 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A286530.P3065250621891543203

namespace A286530

/-- `A000005(A062249(n+1))-Δ[A006218(n)]` -/
def P3065250621891543203.Spec : Prop :=
  ∀ n, P3065250621891543203.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P5787552935328256596

`A000005(A062249(n+1))-A000005(n+1)`
-/

namespace A286530.P5787552935328256596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A062249 (n + 1)).toNat - A000005 (n + 1)

end

end A286530.P5787552935328256596

namespace A286530

/-- `A000005(A062249(n+1))-A000005(n+1)` -/
def P5787552935328256596.Spec : Prop :=
  ∀ n, P5787552935328256596.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P6140334668208064563

`A000005(A286479(n+1))-A000005(n+1)`
-/

namespace A286530.P6140334668208064563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A286479 (n + 1)).toNat - A000005 (n + 1)

end

end A286530.P6140334668208064563

namespace A286530

/-- `A000005(A286479(n+1))-A000005(n+1)` -/
def P6140334668208064563.Spec : Prop :=
  ∀ n, P6140334668208064563.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P4948884172872668848

`A000005(A134871(n+1)+2)-A000005(n+1)`
-/

namespace A286530.P4948884172872668848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A134871 (n + 1) + 2).toNat - A000005 (n + 1)

end

end A286530.P4948884172872668848

namespace A286530

/-- `A000005(A134871(n+1)+2)-A000005(n+1)` -/
def P4948884172872668848.Spec : Prop :=
  ∀ n, P4948884172872668848.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P3803854085962791810

`A000005(A334954(n+1)+n)-A000005(n+1)`
-/

namespace A286530.P3803854085962791810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A334954 (n + 1) + (n : ℤ)).toNat - A000005 (n + 1)

end

end A286530.P3803854085962791810

namespace A286530

/-- `A000005(A334954(n+1)+n)-A000005(n+1)` -/
def P3803854085962791810.Spec : Prop :=
  ∀ n, P3803854085962791810.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P10370118308552911482

`A000005(A000005(n+1)+1+n)-Δ[A006218(n)]`
-/

namespace A286530.P10370118308552911482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (n + 1) + 1 + (n : ℤ)).toNat - (f1 (n + 1) - f1 n)

end

end A286530.P10370118308552911482

namespace A286530

/-- `A000005(A000005(n+1)+1+n)-Δ[A006218(n)]` -/
def P10370118308552911482.Spec : Prop :=
  ∀ n, P10370118308552911482.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P7995763771400548521

`A000027(n+1)-A049820(A062249(n+1))`
-/

namespace A286530.P7995763771400548521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A049820 (A062249 (n + 1)).toNat

end

end A286530.P7995763771400548521

namespace A286530

/-- `A000027(n+1)-A049820(A062249(n+1))` -/
def P7995763771400548521.Spec : Prop :=
  ∀ n, P7995763771400548521.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P16210142493287155278

`A032741(A062249(n+1))-A032741(n+1)`
-/

namespace A286530.P16210142493287155278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A062249 (n + 1)).toNat - A032741 (n + 1)

end

end A286530.P16210142493287155278

namespace A286530

/-- `A032741(A062249(n+1))-A032741(n+1)` -/
def P16210142493287155278.Spec : Prop :=
  ∀ n, P16210142493287155278.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P10114217145892493763

`A334954(A062249(n+1))-A334954(n+1)`
-/

namespace A286530.P10114217145892493763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A062249 (n + 1)).toNat - A334954 (n + 1)

end

end A286530.P10114217145892493763

namespace A286530

/-- `A334954(A062249(n+1))-A334954(n+1)` -/
def P10114217145892493763.Spec : Prop :=
  ∀ n, P10114217145892493763.a n = A286530 (n + 1)

end A286530

/-! ## A286530.P8395962609930850699

`A334954(A334954(n+1)+n)-A334954(n+1)`
-/

namespace A286530.P8395962609930850699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A334954 (n + 1) + (n : ℤ)).toNat - A334954 (n + 1)

end

end A286530.P8395962609930850699

namespace A286530

/-- `A334954(A334954(n+1)+n)-A334954(n+1)` -/
def P8395962609930850699.Spec : Prop :=
  ∀ n, P8395962609930850699.a n = A286530 (n + 1)

end A286530

/-!
# A286531: Restricted growth sequence of A278531 (prime-signature of A163511).

The programs for A286531, there is no canonical definition to state claims against.
-/

/-! ## A286531.P11779830504688220782

`A286533(A333776(n))`
-/

namespace A286531.P11779830504688220782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286533 (A333776 n).toNat

end

end A286531.P11779830504688220782

/-! ## A286531.P6280570607615030315

`A336151(A253565(n)^∑{e}[A267307(n+1)+1, #])`
-/

namespace A286531.P6280570607615030315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267307 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336151 (A253565 n ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)).toNat

end

end A286531.P6280570607615030315

/-! ## A286531.P8153042431961819111

`A336151(A253565(n)^∑{e}[A349811(n+1)+1, #])`
-/

namespace A286531.P8153042431961819111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349811 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336151 (A253565 n ^ (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)).toNat

end

end A286531.P8153042431961819111

/-! ## A286531.P12304846268634752887

`A336151(A253565(n)^3)`
-/

namespace A286531.P12304846268634752887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336151 (A253565 n ^ 3).toNat

end

end A286531.P12304846268634752887

/-! ## A286531.P3002838683098734375

`A336151(A253565(n)²*A253565(n))`
-/

namespace A286531.P3002838683098734375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336151 (A253565 n ^ 2 * A253565 n).toNat

end

end A286531.P3002838683098734375

/-!
# A286532: Restricted growth sequence of A286553.

The programs for A286532, there is no canonical definition to state claims against.
-/

/-! ## A286532.P9197810291944241475

`A181819(A252753(n)%A216682(2*n+3))`
-/

namespace A286532.P9197810291944241475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (Int.tmod (A252753 n) (A216682 (2 * n + 3))).toNat

end

end A286532.P9197810291944241475

/-! ## A286532.P6826474642171644483

`A181819(A252753(n))^A051573(A010893(n+4))`
-/

namespace A286532.P6826474642171644483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181819 (A252753 n).toNat : ℚ) ^ (A051573 (A010893 (n + 4 + 13)).toNat : ℤ)

end

end A286532.P6826474642171644483

/-! ## A286532.P1994173694837541

`xor(A055641(A005252(n)), A246029(n))`
-/

namespace A286532.P1994173694837541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055641 (A005252 n).toNat) (A246029 n)

end

end A286532.P1994173694837541

/-! ## A286532.P14543095545499862173

`xor(A055641(A005252(n)), A286622(n))`
-/

namespace A286532.P14543095545499862173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055641 (A005252 n).toNat) (A286622 n)

end

end A286532.P14543095545499862173

/-! ## A286532.P17120217980062631997

`A181819(A286553(n)%A077775(n+1))`
-/

namespace A286532.P17120217980062631997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (Int.tmod (A286553 n) (A077775 (n + 1))).toNat

end

end A286532.P17120217980062631997

/-!
# A286533: Restricted growth sequence of A278533 (prime-signature of A253563).

The programs for A286533, there is no canonical definition to state claims against.
-/

/-! ## A286533.P12273808068514420250

`A286531((A145341(n+1)-1)/2)`
-/

namespace A286533.P12273808068514420250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (SequenceMachineLib.roundAway ((A145341 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A286533.P12273808068514420250

/-! ## A286533.P17034463881891434435

`A286531(A057427(n)*A145341(n+1))`
-/

namespace A286533.P17034463881891434435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (A057427 n * A145341 (n + 1)).toNat

end

end A286533.P17034463881891434435

/-! ## A286533.P209638038506912428

`A286531(A145341(n+1)%A008574(n))`
-/

namespace A286533.P209638038506912428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (Int.tmod (A145341 (n + 1)) (A008574 n)).toNat

end

end A286533.P209638038506912428

/-! ## A286533.P14798410235367589757

`A286531(A145341(n+1)+A057427(n)-1)`
-/

namespace A286533.P14798410235367589757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (A145341 (n + 1) + (A057427 n - 1)).toNat

end

end A286533.P14798410235367589757

/-! ## A286533.P8900731895544449817

`A286531(A333777(n))`
-/

namespace A286533.P8900731895544449817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (A333777 n).toNat

end

end A286533.P8900731895544449817

/-! ## A286533.P18349505381933702834

`A286531(A030109(2*n+1))`
-/

namespace A286533.P18349505381933702834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (A030109 (2 * n + 1)).toNat

end

end A286533.P18349505381933702834

/-! ## A286533.P614438753364273239

`A286531(A004526(A145341(n+1)))`
-/

namespace A286533.P614438753364273239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (A004526 (A145341 (n + 1)).toNat).toNat

end

end A286533.P614438753364273239

/-! ## A286533.P13106877009196510358

`A286531(A253566(A005940(n+1)))`
-/

namespace A286533.P13106877009196510358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286531 (A253566 (A005940 (n + 1)).toNat).toNat

end

end A286533.P13106877009196510358

/-!
# A286534: Restricted growth sequence of A286557.

The programs for A286534, there is no canonical definition to state claims against.
-/

/-! ## A286534.P2368757558575679811

`A286619(n-A014135(A196723(n)))`
-/

namespace A286534.P2368757558575679811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 ((n : ℤ) - A014135 (A196723 n).toNat).toNat

end

end A286534.P2368757558575679811

/-! ## A286534.P9955478718599578979

`or(A262693(A001405(n)), A286619(n))`
-/

namespace A286534.P9955478718599578979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A262693 (A001405 n).toNat) (A286619 n)

end

end A286534.P9955478718599578979

/-! ## A286534.P15109598610683811195

`or(A262693(A133476(n)), A286619(n))`
-/

namespace A286534.P15109598610683811195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A262693 (A133476 n).toNat) (A286619 n)

end

end A286534.P15109598610683811195

/-! ## A286534.P17839705084694919146

`or(A286619(n), A355684(A112844(n)))`
-/

namespace A286534.P17839705084694919146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286619 n) (A355684 (A112844 n).toNat)

end

end A286534.P17839705084694919146

/-! ## A286534.P16517629600813195682

`or(A025456(A347983(n+1)), A286619(n))`
-/

namespace A286534.P16517629600813195682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025456 (A347983 (n + 1)).toNat) (A286619 n)

end

end A286534.P16517629600813195682

/-!
# A286535: Restricted growth sequence of A278535 (prime-signature of A253565).

The programs for A286535, there is no canonical definition to state claims against.
-/

/-! ## A286535.P6636734983297757783

`A286622(A006257(n))`
-/

namespace A286535.P6636734983297757783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A006257 n).toNat

end

end A286535.P6636734983297757783

/-! ## A286535.P15842376187837475085

`A286622(2*n-A003817(n))`
-/

namespace A286535.P15842376187837475085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 ((2 * n : ℤ) - A003817 n).toNat

end

end A286535.P15842376187837475085

/-! ## A286535.P10828440640252959689

`A286622(n-A003817(n)+n)`
-/

namespace A286535.P10828440640252959689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 ((n : ℤ) - A003817 n + (n : ℤ)).toNat

end

end A286535.P10828440640252959689

/-! ## A286535.P16228142291759373647

`A286622(n-(A003817(n)-n))`
-/

namespace A286535.P16228142291759373647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 ((n : ℤ) - (A003817 n - (n : ℤ))).toNat

end

end A286535.P16228142291759373647

/-! ## A286535.P1329759421025919466

`A286622(A057889(2*n+1)-1)`
-/

namespace A286535.P1329759421025919466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A057889 (2 * n + 1) - 1).toNat

end

end A286535.P1329759421025919466

/-! ## A286535.P18085973223223555890

`A286622(A053645(2*n+1))`
-/

namespace A286535.P18085973223223555890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A053645 (2 * n + 1)).toNat

end

end A286535.P18085973223223555890

/-! ## A286535.P5973709287956131273

`A286622(A030101(2*n+1)-1)`
-/

namespace A286535.P5973709287956131273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 (A030101 (2 * n + 1) - 1).toNat

end

end A286535.P5973709287956131273

/-! ## A286535.P17599742167702724571

`A286622(2*n+1-A053644(2*n+1))`
-/

namespace A286535.P17599742167702724571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 ((2 * n + 1 : ℤ) - A053644 (2 * n + 1)).toNat

end

end A286535.P17599742167702724571

/-!
# A286536: a(n) = A278222(A276445(n)).

The programs for A286536, there is no canonical definition to state claims against.
-/

/-! ## A286536.P17448230296838192964

`A278219(A267111(n+1))`
-/

namespace A286536.P17448230296838192964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (A267111 (n + 1)).toNat

end

end A286536.P17448230296838192964

/-! ## A286536.P10512908080257909753

`A278222(A276445(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286536.P10512908080257909753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A276445 (n + 1)).toNat

end

end A286536.P10512908080257909753

/-! ## A286536.P11964798869244250736

`A278219(xor(A092323(n+1), A276441(n+1)))`
-/

namespace A286536.P11964798869244250736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (Int.xor (A092323 (n + 1)) (A276441 (n + 1))).toNat

end

end A286536.P11964798869244250736

/-! ## A286536.P9403196358978625745

`A278219(A267111(Δ[n²]-n)%A086519(n))`
-/

namespace A286536.P9403196358978625745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278219 (Int.tmod (A267111 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (A086519 n)).toNat

end

end A286536.P9403196358978625745

/-! ## A286536.P15849746308700395488

`A278222(A276445(Δ[n²]-n)%A086519(n))`
-/

namespace A286536.P15849746308700395488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.tmod (A276445 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (A086519 n)).toNat

end

end A286536.P15849746308700395488

/-!
# A286537: Restricted growth sequence of A286536.

The programs for A286537, there is no canonical definition to state claims against.
-/

/-! ## A286537.P17452578162594983757

`A286619(A267111(n+1))+A062157(A321769(n+1))`
-/

namespace A286537.P17452578162594983757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat + A062157 (A321769 (n + 1)).toNat

end

end A286537.P17452578162594983757

/-! ## A286537.P5538473338674691961

`A286619(A267111(n+1))-A001065(A092307(n+1))`
-/

namespace A286537.P5538473338674691961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A001065 (A092307 (n + 1)).toNat

end

end A286537.P5538473338674691961

/-! ## A286537.P12886780528771983043

`A286619(A267111(n+1))-A057427(A036922(n+1))`
-/

namespace A286537.P12886780528771983043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A057427 (A036922 (n + 1)).toNat

end

end A286537.P12886780528771983043

/-! ## A286537.P4510756753511236624

`A286619(A267111(n+1))-A059126(A175153(n+1))`
-/

namespace A286537.P4510756753511236624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A059126 (A175153 (n + 1)).toNat

end

end A286537.P4510756753511236624

/-! ## A286537.P3730853432214816664

`A286619(A267111(n+1))-A209229(A130321(n))`
-/

namespace A286537.P3730853432214816664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A209229 (A130321 n).toNat

end

end A286537.P3730853432214816664

/-! ## A286537.P3091831800853559278

`A286619(A267111(n+1))-A002260(A000124(n))`
-/

namespace A286537.P3091831800853559278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A002260 (A000124 n).toNat

end

end A286537.P3091831800853559278

/-! ## A286537.P13709358693837622443

`A286619(A267111(n+1))-A007318(∑[n])`
-/

namespace A286537.P13709358693837622443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A286537.P13709358693837622443

/-! ## A286537.P7220356970878387702

`A286619(A267111(n+1))-A080851(A000217(n))`
-/

namespace A286537.P7220356970878387702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A080851 (A000217 n).toNat

end

end A286537.P7220356970878387702

/-! ## A286537.P15959206539689891422

`A286619(A267111(n+1))-A035214(A027379(n+2))`
-/

namespace A286537.P15959206539689891422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A035214 (A027379 (n + 2)).toNat

end

end A286537.P15959206539689891422

/-! ## A286537.P15579683964054105318

`A286619(A267111(n+1))-A001221(A140513(n))`
-/

namespace A286537.P15579683964054105318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A001221 (A140513 n).toNat

end

end A286537.P15579683964054105318

/-! ## A286537.P8193143286118005890

`A286619(A267111(n+1))-A344970(A059268(n))`
-/

namespace A286537.P8193143286118005890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A344970 (A059268 n).toNat

end

end A286537.P8193143286118005890

/-! ## A286537.P6928273916679201128

`A286619(A267111(n+1))-A208645(A000217(n+8)-8)`
-/

namespace A286537.P6928273916679201128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A208645 (A000217 (n + 8) - 8).toNat

end

end A286537.P6928273916679201128

/-! ## A286537.P4251449253010417235

`A286619(A267111(n+1))-A032741(A238086(n+1))`
-/

namespace A286537.P4251449253010417235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A032741 (A238086 (n + 1)).toNat

end

end A286537.P4251449253010417235

/-! ## A286537.P10696973764886335202

`A286619(A267111(n+1))-A035214(A156796(n+1))`
-/

namespace A286537.P10696973764886335202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286619 (A267111 (n + 1)).toNat - A035214 (A156796 (n + 1)).toNat

end

end A286537.P10696973764886335202

/-!
# A286538: a(n) = A278222(A267111(n)).

The programs for A286538, there is no canonical definition to state claims against.
-/

/-! ## A286538.P5475144589945469043

`A278222(A267111(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286538.P5475144589945469043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A267111 (n + 1)).toNat

end

end A286538.P5475144589945469043

/-! ## A286538.P2526651634217467571

`A278531(A276441(n+1))`
-/

namespace A286538.P2526651634217467571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A276441 (n + 1)).toNat

end

end A286538.P2526651634217467571

/-! ## A286538.P12678480420716122552

`A286580(A276343(n+1))`
-/

namespace A286538.P12678480420716122552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286580 (A276343 (n + 1)).toNat

end

end A286538.P12678480420716122552

/-! ## A286538.P2625644842138953362

`A278531(xor(A092323(n+1), A267111(n+1)))`
-/

namespace A286538.P2625644842138953362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (Int.xor (A092323 (n + 1)) (A267111 (n + 1))).toNat

end

end A286538.P2625644842138953362

/-! ## A286538.P17595333466372025179

`A286536(A276446(A267111(A276446(A276445(n+1)))))`
-/

namespace A286538.P17595333466372025179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286536 (A276446 (A267111 (A276446 (A276445 (n + 1)).toNat).toNat).toNat).toNat

end

end A286538.P17595333466372025179

/-! ## A286538.P4504974463900015837

`A046523(A005940(A267111(A088359(n+1))))`
-/

namespace A286538.P4504974463900015837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A005940 (A267111 (A088359 (n + 1)).toNat).toNat).toNat

end

end A286538.P4504974463900015837

/-!
# A286539: Restricted growth sequence of A286538.

The programs for A286539, there is no canonical definition to state claims against.
-/

/-! ## A286539.P16370690989788528401

`A290103(A029957(A286538(n+1))²)`
-/

namespace A286539.P16370690989788528401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A029957 (A286538 (n + 1)).toNat ^ 2).toNat

end

end A286539.P16370690989788528401

/-! ## A286539.P17313109045802307753

`A276571(∑{e}[A011782(A286538(n+1)), #])`
-/

namespace A286539.P17313109045802307753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A286538 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A286539.P17313109045802307753

/-! ## A286539.P11532286159889183702

`A286545(A286538(n+1)%A317534(3*n+2))`
-/

namespace A286539.P11532286159889183702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286545 (Int.tmod (A286538 (n + 1)) (A317534 (3 * n + 2))).toNat

end

end A286539.P11532286159889183702

/-! ## A286539.P7550933446607318102

`A000720(A286538(n+1))%A205999(2*(n+1))`
-/

namespace A286539.P7550933446607318102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (A286538 (n + 1)).toNat) (A205999 (2 * (n + 1)))

end

end A286539.P7550933446607318102

/-! ## A286539.P11290645598209854981

`A190311(A162588(n))`
-/

namespace A286539.P11290645598209854981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190311 (A162588 n).toNat

end

end A286539.P11290645598209854981

/-!
# A286540: a(n) = gcd(A259934(n), A259934(n-1)) = A009191(A259934(n)).

The programs for A286540, there is no canonical definition to state claims against.
-/

/-! ## A286540.P3427498770077323750

`gcd(A259934(n+1), A259934(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286540.P3427498770077323750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A259934 (n + 1)) (A259934 n)

end

end A286540.P3427498770077323750

/-! ## A286540.P13376658117773798768

`A009191(A259934(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286540.P13376658117773798768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A259934 (n + 1)).toNat

end

end A286540.P13376658117773798768

/-! ## A286540.P17242912956999640662

`gcd(Δ[A259934(n)], A259934(n))`
-/

namespace A286540.P17242912956999640662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259934 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A259934 n)

end

end A286540.P17242912956999640662

/-! ## A286540.P5348909892257381157

`gcd(record[A262679(n)], A259935(n+1))`
-/

namespace A286540.P5348909892257381157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A259935 (n + 1))

end

end A286540.P5348909892257381157

/-! ## A286540.P7310614113002667485

`A009191(∑[A259935(n+1)])`
-/

namespace A286540.P7310614113002667485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286540.P7310614113002667485

/-! ## A286540.P6939592702399488396

`A009191(A261103(n+1)+A261089(n+1))`
-/

namespace A286540.P6939592702399488396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A261103 (n + 1) + A261089 (n + 1)).toNat

end

end A286540.P6939592702399488396

/-! ## A286540.P10736755397107057762

`A009191(A262679(A262896(n+1)))`
-/

namespace A286540.P10736755397107057762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A262679 (A262896 (n + 1)).toNat).toNat

end

end A286540.P10736755397107057762

/-!
# A286542: a(n) = A046523(A285332(n)).

The programs for A286542, there is no canonical definition to state claims against.
-/

/-! ## A286542.P8968535090167412354

`A046523(A285332(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286542.P8968535090167412354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A285332 n).toNat

end

end A286542.P8968535090167412354

/-! ## A286542.P6280457206698233650

`A046523(A285333(n+1-(1-n)%(n+1))%A053427(n+1))`
-/

namespace A286542.P6280457206698233650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (Int.tmod (A285333 ((n + 1 : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat) (A053427 (n + 1))).toNat

end

end A286542.P6280457206698233650

/-! ## A286542.P15709059823555091782

`A046523(A285333(n+1-(1-n)%(n+1)))`
-/

namespace A286542.P15709059823555091782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A285333 ((n + 1 : ℤ) - Int.tmod (1 - (n : ℤ)) (n + 1 : ℤ)).toNat).toNat

end

end A286542.P15709059823555091782

/-! ## A286542.P11695553291059586546

`A071364(A285332(n))%A265774(n+1)`
-/

namespace A286542.P11695553291059586546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071364 (A285332 n).toNat) (A265774 (n + 1))

end

end A286542.P11695553291059586546

/-!
# A286543: Restricted growth sequence of A286542.

The programs for A286543, there is no canonical definition to state claims against.
-/

/-! ## A286543.P3134413041913208779

`A187446(A286542(n))`
-/

namespace A286543.P3134413041913208779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187446 (A286542 n).toNat

end

end A286543.P3134413041913208779

/-! ## A286543.P9948556485112144588

`A117707(2*A286542(n))`
-/

namespace A286543.P9948556485112144588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (2 * A286542 n).toNat

end

end A286543.P9948556485112144588

/-! ## A286543.P11859951590821751987

`A163352(2*A286542(n))`
-/

namespace A286543.P11859951590821751987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (2 * A286542 n).toNat

end

end A286543.P11859951590821751987

/-! ## A286543.P6947953844934778706

`A101296(A286542(n))%A336135(3*n+4)`
-/

namespace A286543.P6947953844934778706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101296 (A286542 n).toNat) (A336135 (3 * n + 4))

end

end A286543.P6947953844934778706

/-! ## A286543.P10238472866393697592

`A324203(A285332(n)%A212610(3*n+5))`
-/

namespace A286543.P10238472866393697592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324203 (Int.tmod (A285332 n) (A212610 (3 * n + 5))).toNat

end

end A286543.P10238472866393697592

/-!
# A286544: Restricted growth sequence of A285333.

The programs for A286544, there is no canonical definition to state claims against.
-/

/-! ## A286544.P11764322651246668202

`A072909(A332788(n+1))+floor(n/2)`
-/

namespace A286544.P11764322651246668202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072909 (A332788 (n + 1)).toNat + ⌊(n : ℚ) / 2⌋

end

end A286544.P11764322651246668202

/-! ## A286544.P6623464651604671699

`A056239(n+1)+A007895(A127296(n))`
-/

namespace A286544.P6623464651604671699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A007895 (A127296 n).toNat

end

end A286544.P6623464651604671699

/-! ## A286544.P14671448278098028166

`A056239(n+1)+A007862(A054994(n+1))`
-/

namespace A286544.P14671448278098028166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + A007862 (A054994 (n + 1)).toNat

end

end A286544.P14671448278098028166

/-! ## A286544.P12263510924594017461

`A124766(A047968(n+1))+A056239(n+1)`
-/

namespace A286544.P12263510924594017461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (A047968 (n + 1)).toNat + A056239 (n + 1)

end

end A286544.P12263510924594017461

/-! ## A286544.P16750773009393802898

`A215887(A076269(2*(n+1)))+A003002(n)`
-/

namespace A286544.P16750773009393802898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A076269 (2 * (n + 1))).toNat + A003002 n

end

end A286544.P16750773009393802898

/-!
# A286545: Restricted growth sequence of A278245 (prime signature of Fibonacci numbers).

The programs for A286545, there is no canonical definition to state claims against.
-/

/-! ## A286545.P11616353162857332691

`A004736(A286467(n+1))`
-/

namespace A286545.P11616353162857332691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286467 (n + 1)).toNat

end

end A286545.P11616353162857332691

/-! ## A286545.P17997337605207617175

`A193592(A286467(n+1)-1)`
-/

namespace A286545.P17997337605207617175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A286467 (n + 1) - 1).toNat

end

end A286545.P17997337605207617175

/-! ## A286545.P7904513092376898954

`A193739(A286467(n+1)-1)`
-/

namespace A286545.P7904513092376898954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A286467 (n + 1) - 1).toNat

end

end A286545.P7904513092376898954

/-! ## A286545.P5721786966427837986

`A025581(A286467(n+1)-1)+1`
-/

namespace A286545.P5721786966427837986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286467 (n + 1) - 1).toNat + 1

end

end A286545.P5721786966427837986

/-! ## A286545.P8918963516647407796

`A003991(A286467(n+1))/A101296(n+1)`
-/

namespace A286545.P8918963516647407796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286467 (n + 1)).toNat : ℚ) / (A101296 (n + 1) : ℚ)

end

end A286545.P8918963516647407796

/-! ## A286545.P14193555538141848816

`A003991(A286467(n+1))/(A320110(2*(n+1))-1)`
-/

namespace A286545.P14193555538141848816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286467 (n + 1)).toNat : ℚ) / (A320110 (2 * (n + 1)) - 1 : ℚ)

end

end A286545.P14193555538141848816

/-! ## A286545.P18010474647171810049

`A003991(A286467(n+1))/A144328(A286454(n+1)+1)`
-/

namespace A286545.P18010474647171810049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286467 (n + 1)).toNat : ℚ) / (A144328 (A286454 (n + 1) + 1).toNat : ℚ)

end

end A286545.P18010474647171810049

/-! ## A286545.P14732008753511730169

`A003991(A286467(n+1))/A002260(A291752(n+1))`
-/

namespace A286545.P14732008753511730169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286467 (n + 1)).toNat : ℚ) / (A002260 (A291752 (n + 1)).toNat : ℚ)

end

end A286545.P14732008753511730169

/-! ## A286545.P5644809108364737335

`A003991(A286467(n+1))/A329901(A238745(n+1))`
-/

namespace A286545.P5644809108364737335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286467 (n + 1)).toNat : ℚ) / (A329901 (A238745 (n + 1)).toNat : ℚ)

end

end A286545.P5644809108364737335

/-!
# A286546: a(n) = A006068(n) - n.

The programs for A286546, the canonical program `A286546.P17363262112593177841` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286546 has offset 0).

The definition of A286546 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006068, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286546.P17363262112593177841

`A006068(n)-n`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A286546

/-- `A006068(n)-n` -/
def P17363262112593177841.Spec : Prop :=
  ∀ n, P17363262112593177841.a n = A286546 n

theorem P17363262112593177841.correct : P17363262112593177841.Spec := by
  intro n
  simp only [A286546]

end A286546

/-! ## A286546.P7545687475566977110

`2*a(floor(n/2))-char[xor(n, 2*n)]+1-n%2` with `a(0)=0`
-/

namespace A286546.P7545687475566977110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 1 - ((n % 2 : ℕ) : ℤ)

end

end A286546.P7545687475566977110

namespace A286546

/-- `2*a(floor(n/2))-char[xor(n, 2*n)]+1-n%2` -/
def P7545687475566977110.Spec : Prop :=
  ∀ n, P7545687475566977110.a n = A286546 n

end A286546

/-! ## A286546.P18042365856275728174

`A268716(n)/2-n`
-/

namespace A286546.P18042365856275728174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268716 n : ℚ) / 2 - (n : ℚ)

end

end A286546.P18042365856275728174

namespace A286546

/-- `A268716(n)/2-n` -/
def P18042365856275728174.Spec : Prop :=
  ∀ n, P18042365856275728174.a n = (A286546 n : ℚ)

end A286546

/-! ## A286546.P14623804921528462457

`xor(n, A292600(n))-n`
-/

namespace A286546.P14623804921528462457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A292600 n) - (n : ℤ)

end

end A286546.P14623804921528462457

namespace A286546

/-- `xor(n, A292600(n))-n` -/
def P14623804921528462457.Spec : Prop :=
  ∀ n, P14623804921528462457.a n = A286546 n

end A286546

/-! ## A286546.P8570751614505950489

`A066194(n+1)-(n+1)`
-/

namespace A286546.P8570751614505950489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066194 (n + 1) - (n + 1 : ℤ)

end

end A286546.P8570751614505950489

namespace A286546

/-- `A066194(n+1)-(n+1)` -/
def P8570751614505950489.Spec : Prop :=
  ∀ n, P8570751614505950489.a n = A286546 n

end A286546

/-! ## A286546.P6033783208581498393

`A003188(A064707(n))-n`
-/

namespace A286546.P6033783208581498393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A064707 n).toNat - (n : ℤ)

end

end A286546.P6033783208581498393

namespace A286546

/-- `A003188(A064707(n))-n` -/
def P6033783208581498393.Spec : Prop :=
  ∀ n, P6033783208581498393.a n = A286546 n

end A286546

/-! ## A286546.P12903809183814482371

`A300839(A057300(n))-n`
-/

namespace A286546.P12903809183814482371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300839 (A057300 n).toNat - (n : ℤ)

end

end A286546.P12903809183814482371

namespace A286546

/-- `A300839(A057300(n))-n` -/
def P12903809183814482371.Spec : Prop :=
  ∀ n, P12903809183814482371.a n = A286546 n

end A286546

/-! ## A286546.P17832347116606238274

`A163356(A302843(n))-n`
-/

namespace A286546.P17832347116606238274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163356 (A302843 n).toNat - (n : ℤ)

end

end A286546.P17832347116606238274

namespace A286546

/-- `A163356(A302843(n))-n` -/
def P17832347116606238274.Spec : Prop :=
  ∀ n, P17832347116606238274.a n = A286546 n

end A286546

/-! ## A286546.P12505571852676609105

`A302844(A302845(n))-n`
-/

namespace A286546.P12505571852676609105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302844 (A302845 n).toNat - (n : ℤ)

end

end A286546.P12505571852676609105

namespace A286546

/-- `A302844(A302845(n))-n` -/
def P12505571852676609105.Spec : Prop :=
  ∀ n, P12505571852676609105.a n = A286546 n

end A286546

/-! ## A286546.P2360953165279861815

`A104895(A001969(n+1))-n`
-/

namespace A286546.P2360953165279861815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A001969 (n + 1)).toNat - (n : ℤ)

end

end A286546.P2360953165279861815

namespace A286546

/-- `A104895(A001969(n+1))-n` -/
def P2360953165279861815.Spec : Prop :=
  ∀ n, P2360953165279861815.a n = A286546 n

end A286546

/-! ## A286546.P9956704249916919995

`xor(A005187(n), A283999(n))-n`
-/

namespace A286546.P9956704249916919995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005187 n) (A283999 n) - (n : ℤ)

end

end A286546.P9956704249916919995

namespace A286546

/-- `xor(A005187(n), A283999(n))-n` -/
def P9956704249916919995.Spec : Prop :=
  ∀ n, P9956704249916919995.a n = A286546 n

end A286546

/-! ## A286546.P5854961102460097636

`A065620(A000069(n+1))-(n+1)`
-/

namespace A286546.P5854961102460097636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A000069 (n + 1)).toNat - (n + 1 : ℤ)

end

end A286546.P5854961102460097636

namespace A286546

/-- `A065620(A000069(n+1))-(n+1)` -/
def P5854961102460097636.Spec : Prop :=
  ∀ n, P5854961102460097636.a n = A286546 n

end A286546

/-! ## A286546.P5269748824255806093

`xor(A001969(n+1), A268716(n))-n`
-/

namespace A286546.P5269748824255806093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001969 (n + 1)) (A268716 n) - (n : ℤ)

end

end A286546.P5269748824255806093

namespace A286546

/-- `xor(A001969(n+1), A268716(n))-n` -/
def P5269748824255806093.Spec : Prop :=
  ∀ n, P5269748824255806093.a n = A286546 n

end A286546

/-! ## A286546.P11465768349208519468

`xor(comp[A000069(n+1)], A268716(n))-n`
-/

namespace A286546.P11465768349208519468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A268716 n) - (n : ℤ)

end

end A286546.P11465768349208519468

namespace A286546

/-- `xor(comp[A000069(n+1)], A268716(n))-n` -/
def P11465768349208519468.Spec : Prop :=
  ∀ n, P11465768349208519468.a n = A286546 n

end A286546

/-! ## A286546.P13646932281348352579

`A292600(2*n)-n`
-/

namespace A286546.P13646932281348352579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * n) - (n : ℤ)

end

end A286546.P13646932281348352579

namespace A286546

/-- `A292600(2*n)-n` -/
def P13646932281348352579.Spec : Prop :=
  ∀ n, P13646932281348352579.a n = A286546 n

end A286546

/-! ## A286546.P9984738450856896448

`n-A292601(2*n)`
-/

namespace A286546.P9984738450856896448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292601 (2 * n)

end

end A286546.P9984738450856896448

namespace A286546

/-- `n-A292601(2*n)` -/
def P9984738450856896448.Spec : Prop :=
  ∀ n, P9984738450856896448.a n = A286546 n

end A286546

/-! ## A286546.P7720102687906255818

`A233279(A063946(n))-n`
-/

namespace A286546.P7720102687906255818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A063946 n).toNat - (n : ℤ)

end

end A286546.P7720102687906255818

namespace A286546

/-- `A233279(A063946(n))-n` -/
def P7720102687906255818.Spec : Prop :=
  ∀ n, P7720102687906255818.a n = A286546 n

end A286546

/-! ## A286546.P8385104191547754660

`A056539(A341916(n))-n`
-/

namespace A286546.P8385104191547754660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056539 (A341916 n).toNat - (n : ℤ)

end

end A286546.P8385104191547754660

namespace A286546

/-- `A056539(A341916(n))-n` -/
def P8385104191547754660.Spec : Prop :=
  ∀ n, P8385104191547754660.a n = A286546 n

end A286546

/-! ## A286546.P14893206010379047179

`A234613(A193231(n))-n`
-/

namespace A286546.P14893206010379047179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234613 (A193231 n).toNat - (n : ℤ)

end

end A286546.P14893206010379047179

namespace A286546

/-- `A234613(A193231(n))-n` -/
def P14893206010379047179.Spec : Prop :=
  ∀ n, P14893206010379047179.a n = A286546 n

end A286546

/-! ## A286546.P15718483892789369525

`A193231(A234612(n))-n`
-/

namespace A286546.P15718483892789369525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234612 n).toNat - (n : ℤ)

end

end A286546.P15718483892789369525

namespace A286546

/-- `A193231(A234612(n))-n` -/
def P15718483892789369525.Spec : Prop :=
  ∀ n, P15718483892789369525.a n = A286546 n

end A286546

/-!
# A286547: Restricted growth sequence of A286546 (A006068(n) - n).

The programs for A286547, there is no canonical definition to state claims against.
-/

/-! ## A286547.P4046365778801423234

`∑[A276950(n+1)]-A028637(A028612(n))`
-/

namespace A286547.P4046365778801423234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028637 (A028612 n).toNat

end

end A286547.P4046365778801423234

/-! ## A286547.P13232173794433750976

`A276952(n+1)/A307609(A307605(n))`
-/

namespace A286547.P13232173794433750976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276952 (n + 1) : ℚ) / (A307609 (A307605 n).toNat : ℚ)

end

end A286547.P13232173794433750976

/-! ## A286547.P16308615104027751926

`A201593(A062491(2*n)+A022846(n))`
-/

namespace A286547.P16308615104027751926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201593 (A062491 (2 * n) + A022846 n).toNat

end

end A286547.P16308615104027751926

/-!
# A286548: a(n) = A003188(n) - n.

The programs for A286548, the canonical program `A286548.P11712479418656410754` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286548 has offset 0).

The definition of A286548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A286548.P11712479418656410754

`A003188(n)-n`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286548

/-- `A003188(n)-n` -/
def P11712479418656410754.Spec : Prop :=
  ∀ n, P11712479418656410754.a n = A286548 n

theorem P11712479418656410754.correct : P11712479418656410754.Spec := by
  intro n
  simp only [A286548]

end A286548

/-! ## A286548.P798946298766320525

`xor(n, floor(n/2))-n`
-/

namespace A286548.P798946298766320525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)

end

end A286548.P798946298766320525

namespace A286548

/-- `xor(n, floor(n/2))-n` -/
def P798946298766320525.Spec : Prop :=
  ∀ n, P798946298766320525.a n = A286548 n

end A286548

/-! ## A286548.P6698714898290799741

`floor(n/2-and(n, 2*n))`
-/

namespace A286548.P6698714898290799741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2 - (Nat.land n (2 * n) : ℚ)⌋

end

end A286548.P6698714898290799741

namespace A286548

/-- `floor(n/2-and(n, 2*n))` -/
def P6698714898290799741.Spec : Prop :=
  ∀ n, P6698714898290799741.a n = A286548 n

end A286548

/-! ## A286548.P13987024437968593606

`abs(xor(n, n-∑[n%2]))-n`
-/

namespace A286548.P13987024437968593606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))| - (n : ℤ)

end

end A286548.P13987024437968593606

namespace A286548

/-- `abs(xor(n, n-∑[n%2]))-n` -/
def P13987024437968593606.Spec : Prop :=
  ∀ n, P13987024437968593606.a n = A286548 n

end A286548

/-! ## A286548.P444881766193518476

`and(n, Δ[-n²])-ceil(n/2)`
-/

namespace A286548.P444881766193518476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (f1 (n + 1) - f1 n) - ⌈(n : ℚ) / 2⌉

end

end A286548.P444881766193518476

namespace A286548

/-- `and(n, Δ[-n²])-ceil(n/2)` -/
def P444881766193518476.Spec : Prop :=
  ∀ n, P444881766193518476.a n = A286548 n

end A286548

/-! ## A286548.P8904804799093335573

`abs(xor(n, (or(1, n)-1)/2))-n`
-/

namespace A286548.P8904804799093335573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((Nat.lor 1 n : ℤ) - 1 : ℚ) / 2))| - (n : ℤ)

end

end A286548.P8904804799093335573

namespace A286548

/-- `abs(xor(n, (or(1, n)-1)/2))-n` -/
def P8904804799093335573.Spec : Prop :=
  ∀ n, P8904804799093335573.a n = A286548 n

end A286548

/-! ## A286548.P3260856215418519193

`ceil(n/2-and(n, 2*n+1))`
-/

namespace A286548.P3260856215418519193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (Nat.land n (2 * n + 1) : ℚ)⌉

end

end A286548.P3260856215418519193

namespace A286548

/-- `ceil(n/2-and(n, 2*n+1))` -/
def P3260856215418519193.Spec : Prop :=
  ∀ n, P3260856215418519193.a n = A286548 n

end A286548

/-! ## A286548.P15972169031386272025

`ceil((n-1)/2)-and(n, 2*n)`
-/

namespace A286548.P15972169031386272025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) - 1 : ℚ) / 2⌉ - (Nat.land n (2 * n) : ℤ)

end

end A286548.P15972169031386272025

namespace A286548

/-- `ceil((n-1)/2)-and(n, 2*n)` -/
def P15972169031386272025.Spec : Prop :=
  ∀ n, P15972169031386272025.a n = A286548 n

end A286548

/-! ## A286548.P2622926421891416685

`ceil(xor(n-1, 2*n)/2-n)`
-/

namespace A286548.P2622926421891416685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2 - (n : ℚ)⌉

end

end A286548.P2622926421891416685

namespace A286548

/-- `ceil(xor(n-1, 2*n)/2-n)` -/
def P2622926421891416685.Spec : Prop :=
  ∀ n, P2622926421891416685.a n = A286548 n

end A286548

/-! ## A286548.P1730022566106008397

`round(xor(2*n+1, n+1)/2)-n`
-/

namespace A286548.P1730022566106008397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (n + 1) : ℚ) / 2) - (n : ℤ)

end

end A286548.P1730022566106008397

namespace A286548

/-- `round(xor(2*n+1, n+1)/2)-n` -/
def P1730022566106008397.Spec : Prop :=
  ∀ n, P1730022566106008397.a n = A286548 n

end A286548

/-! ## A286548.P15459101056839076441

`round((2*n+1)/4-and(n, 2*n+1))`
-/

namespace A286548.P15459101056839076441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) / 4 - (Nat.land n (2 * n + 1) : ℚ))

end

end A286548.P15459101056839076441

namespace A286548

/-- `round((2*n+1)/4-and(n, 2*n+1))` -/
def P15459101056839076441.Spec : Prop :=
  ∀ n, P15459101056839076441.a n = A286548 n

end A286548

/-! ## A286548.P6186436821600696419

`Δ[A048644(abs(1-n))]`
-/

namespace A286548.P6186436821600696419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048644 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A286548.P6186436821600696419

namespace A286548

/-- `Δ[A048644(abs(1-n))]` -/
def P6186436821600696419.Spec : Prop :=
  ∀ n, P6186436821600696419.a n = A286548 n

end A286548

/-! ## A286548.P17485877661177620131

`floor(A048724(n)/2-n)`
-/

namespace A286548.P17485877661177620131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048724 n : ℚ) / 2 - (n : ℚ)⌋

end

end A286548.P17485877661177620131

namespace A286548

/-- `floor(A048724(n)/2-n)` -/
def P17485877661177620131.Spec : Prop :=
  ∀ n, P17485877661177620131.a n = A286548 n

end A286548

/-! ## A286548.P7546941391915721484

`A105081(n+1)-(n+1)`
-/

namespace A286548.P7546941391915721484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (n + 1) - (n + 1 : ℤ)

end

end A286548.P7546941391915721484

namespace A286548

/-- `A105081(n+1)-(n+1)` -/
def P7546941391915721484.Spec : Prop :=
  ∀ n, P7546941391915721484.a n = A286548 n

end A286548

/-! ## A286548.P15512897653789250959

`A004526(n)-A213370(n)`
-/

namespace A286548.P15512897653789250959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A213370 n

end

end A286548.P15512897653789250959

namespace A286548

/-- `A004526(n)-A213370(n)` -/
def P15512897653789250959.Spec : Prop :=
  ∀ n, P15512897653789250959.a n = A286548 n

end A286548

/-! ## A286548.P18005235281849846687

`A213064(n)-A007494(n)`
-/

namespace A286548.P18005235281849846687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n - A007494 n

end

end A286548.P18005235281849846687

namespace A286548

/-- `A213064(n)-A007494(n)` -/
def P18005235281849846687.Spec : Prop :=
  ∀ n, P18005235281849846687.a n = A286548 n

end A286548

/-! ## A286548.P2260663387220277722

`A229762(n)-A048735(n)`
-/

namespace A286548.P2260663387220277722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229762 n - A048735 n

end

end A286548.P2260663387220277722

namespace A286548

/-- `A229762(n)-A048735(n)` -/
def P2260663387220277722.Spec : Prop :=
  ∀ n, P2260663387220277722.a n = A286548 n

end A286548

/-! ## A286548.P12108241311212253895

`A063946(A233280(n))-n`
-/

namespace A286548.P12108241311212253895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A233280 n).toNat - (n : ℤ)

end

end A286548.P12108241311212253895

namespace A286548

/-- `A063946(A233280(n))-n` -/
def P12108241311212253895.Spec : Prop :=
  ∀ n, P12108241311212253895.a n = A286548 n

end A286548

/-! ## A286548.P10661888757147724313

`A229763(n)-A110654(n)`
-/

namespace A286548.P10661888757147724313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n - A110654 n

end

end A286548.P10661888757147724313

namespace A286548

/-- `A229763(n)-A110654(n)` -/
def P10661888757147724313.Spec : Prop :=
  ∀ n, P10661888757147724313.a n = A286548 n

end A286548

/-! ## A286548.P13655792670735102453

`A057300(A300838(n))-n`
-/

namespace A286548.P13655792670735102453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A300838 n).toNat - (n : ℤ)

end

end A286548.P13655792670735102453

namespace A286548

/-- `A057300(A300838(n))-n` -/
def P13655792670735102453.Spec : Prop :=
  ∀ n, P13655792670735102453.a n = A286548 n

end A286548

/-!
# A286549: Restricted growth sequence of A286548 (A003188(n) - n).

The programs for A286549, there is no canonical definition to state claims against.
-/

/-! ## A286549.P17227839562858425842

`A121373(A191393(n))+A057353(n)`
-/

namespace A286549.P17227839562858425842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A191393 n).toNat + A057353 n

end

end A286549.P17227839562858425842

/-! ## A286549.P10493569954935480594

`A187329(n)+A121373(A191393(n))`
-/

namespace A286549.P10493569954935480594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 n + A121373 (A191393 n).toNat

end

end A286549.P10493569954935480594

/-! ## A286549.P4667542046738944059

`A187329(n)+A121373(A001591(n))`
-/

namespace A286549.P4667542046738944059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 n + A121373 (A001591 n).toNat

end

end A286549.P4667542046738944059

/-! ## A286549.P11341052550406915943

`A057353(n)+A015772(A015773(n+1))`
-/

namespace A286549.P11341052550406915943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A015772 (A015773 (n + 1)).toNat

end

end A286549.P11341052550406915943

/-! ## A286549.P9953919405886306718

`A187329(n)+A015772(A015773(n+1))`
-/

namespace A286549.P9953919405886306718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 n + A015772 (A015773 (n + 1)).toNat

end

end A286549.P9953919405886306718

/-!
# A286550: a(n) = A252755(n) - n.

The programs for A286550, there is no canonical definition to state claims against.
-/

/-! ## A286550.P7668644433418878621

`A252755(n)-n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286550.P7668644433418878621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 n - (n : ℤ)

end

end A286550.P7668644433418878621

/-! ## A286550.P16120602782206278054

`A269855(A003188(n))-n`
-/

namespace A286550.P16120602782206278054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (A003188 n).toNat - (n : ℤ)

end

end A286550.P16120602782206278054

/-! ## A286550.P14123042531737741418

`A286555(A180200(n))-n`
-/

namespace A286550.P14123042531737741418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286555 (A180200 n).toNat - (n : ℤ)

end

end A286550.P14123042531737741418

/-! ## A286550.P14324183418897031855

`A279348(A279342(n))-n`
-/

namespace A286550.P14324183418897031855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279348 (A279342 n).toNat - (n : ℤ)

end

end A286550.P14324183418897031855

/-! ## A286550.P14392737731801906405

`A269172(A269385(n))-n`
-/

namespace A286550.P14392737731801906405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A269385 n).toNat - (n : ℤ)

end

end A286550.P14392737731801906405

/-! ## A286550.P13655660710689282810

`A269172(A260741(A269375(n)))-n`
-/

namespace A286550.P13655660710689282810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269172 (A260741 (A269375 n).toNat).toNat - (n : ℤ)

end

end A286550.P13655660710689282810

/-! ## A286550.P17217557630403152134

`A269857(A237739(n))-n`
-/

namespace A286550.P17217557630403152134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269857 (A237739 n).toNat - (n : ℤ)

end

end A286550.P17217557630403152134

/-! ## A286550.P6103689860707763565

`A250245(A163511(n))-n`
-/

namespace A286550.P6103689860707763565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A163511 n).toNat - (n : ℤ)

end

end A286550.P6103689860707763565

/-!
# A286552: Ordinal transform of A286622, or equally, of A278222.

The programs for A286552, there is no canonical definition to state claims against.
-/

/-! ## A286552.P15146037508299361902

`A286554(A124108(n))`
-/

namespace A286552.P15146037508299361902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286554 (A124108 n).toNat

end

end A286552.P15146037508299361902

/-! ## A286552.P16464445081401571797

`A286554(A048678(2*n))`
-/

namespace A286552.P16464445081401571797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286554 (A048678 (2 * n)).toNat

end

end A286552.P16464445081401571797

/-! ## A286552.P18034165989616445289

`A329312((∑[∏{p}[2*n, n*val(#², 2)]]-n)*3^(n%2))`
-/

namespace A286552.P18034165989616445289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329312 ((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) * (3 ^ (n % 2) : ℤ)).toNat

end

end A286552.P18034165989616445289

/-! ## A286552.P16055663040575257310

`A125989(n)+A003557(A022169(n))`
-/

namespace A286552.P16055663040575257310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125989 n + A003557 (A022169 n).toNat

end

end A286552.P16055663040575257310

/-! ## A286552.P2480780183154613279

`A125989(n)+A124778(A046741(n))`
-/

namespace A286552.P2480780183154613279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125989 n + A124778 (A046741 n).toNat

end

end A286552.P2480780183154613279

/-!
# A286553: a(n) = A046523(A252753(n)).

The programs for A286553, there is no canonical definition to state claims against.
-/

/-! ## A286553.P17902415001080220818

`A286557(A006068(n))`
-/

namespace A286553.P17902415001080220818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286557 (A006068 n).toNat

end

end A286553.P17902415001080220818

/-! ## A286553.P16092973083933764614

`A046523(A252753(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286553.P16092973083933764614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A252753 n).toNat

end

end A286553.P16092973083933764614

/-! ## A286553.P15577611682854103429

`A286557(A292600(2*n))`
-/

namespace A286553.P15577611682854103429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286557 (A292600 (2 * n)).toNat

end

end A286553.P15577611682854103429

/-! ## A286553.P18012635615593609693

`A286557(A286546(n)+n)`
-/

namespace A286553.P18012635615593609693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286557 (A286546 n + (n : ℤ)).toNat

end

end A286553.P18012635615593609693

/-! ## A286553.P18249911633250167167

`A286557(xor(n, A292600(n)))`
-/

namespace A286553.P18249911633250167167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286557 (Int.xor (n : ℤ) (A292600 n)).toNat

end

end A286553.P18249911633250167167

/-! ## A286553.P14694068138432709961

`A286557(A286556(A252753(2*n-n)))`
-/

namespace A286553.P14694068138432709961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286557 (A286556 (A252753 (2 * n - n)).toNat).toNat

end

end A286553.P14694068138432709961

/-! ## A286553.P11563221841941213207

`A046523(A250245(A005940(n+1)))`
-/

namespace A286553.P11563221841941213207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A250245 (A005940 (n + 1)).toNat).toNat

end

end A286553.P11563221841941213207

/-!
# A286554: Ordinal transform of A286619, or equally, of A278219.

The programs for A286554, there is no canonical definition to state claims against.
-/

/-! ## A286554.P1758445045838961455

`gcd(A167489(n), A197911(A202409(n+1)))`
-/

namespace A286554.P1758445045838961455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A167489 n) (A197911 (A202409 (n + 1)).toNat)

end

end A286554.P1758445045838961455

/-! ## A286554.P2295339748610172659

`A319416(n)-A025458(A053830(A164388(n)))`
-/

namespace A286554.P2295339748610172659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 n - A025458 (A053830 (A164388 n).toNat).toNat

end

end A286554.P2295339748610172659

/-! ## A286554.P1963630377263483386

`A136480(n)*A279288(A136480(A059076(n)))`
-/

namespace A286554.P1963630377263483386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 n * A279288 (A136480 (A059076 n).toNat).toNat

end

end A286554.P1963630377263483386

/-!
# A286555: Permutation of natural numbers: a(n) = A252753(A003188(n)).

The programs for A286555, there is no canonical definition to state claims against.
-/

/-! ## A286555.P11213981840595914572

`A252753(A003188(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286555.P11213981840595914572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A003188 n).toNat

end

end A286555.P11213981840595914572

/-! ## A286555.P16151138550244035973

`A252753(xor(n, floor(n/2)))`
-/

namespace A286555.P16151138550244035973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A286555.P16151138550244035973

/-! ## A286555.P350733342332608638

`A252755(A180201(n))`
-/

namespace A286555.P350733342332608638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252755 (A180201 n).toNat

end

end A286555.P350733342332608638

/-! ## A286555.P12478968644545054922

`A252753(A286548(n)+n)`
-/

namespace A286555.P12478968644545054922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A286548 n + (n : ℤ)).toNat

end

end A286555.P12478968644545054922

/-! ## A286555.P17370480346741027395

`A269855(A063946(xor(n, A002265(n))))`
-/

namespace A286555.P17370480346741027395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269855 (A063946 (Int.xor (n : ℤ) (A002265 n)).toNat).toNat

end

end A286555.P17370480346741027395

/-! ## A286555.P10979415047640663535

`A252753(A004526(A048724(n)))`
-/

namespace A286555.P10979415047640663535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A004526 (A048724 n).toNat).toNat

end

end A286555.P10979415047640663535

/-! ## A286555.P18154799273311856425

`A252753(A008619(A048724(n))-1)`
-/

namespace A286555.P18154799273311856425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252753 (A008619 (A048724 n).toNat - 1).toNat

end

end A286555.P18154799273311856425

/-! ## A286555.P8130052994115036074

`A253554(A252753(xor(n, comp[2*n])))`
-/

namespace A286555.P8130052994115036074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253554 (A252753 (Nat.xor n (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))).toNat

end

end A286555.P8130052994115036074

/-! ## A286555.P14000318278665653564

`A250245(A243353(n))`
-/

namespace A286555.P14000318278665653564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A243353 n).toNat

end

end A286555.P14000318278665653564

/-!
# A286556: Permutation of nonnegative integers: a(n) = A006068(A252754(n)).

The programs for A286556, there is no canonical definition to state claims against.
-/

/-! ## A286556.P564058786052783802

`A006068(A252754(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286556.P564058786052783802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A252754 (n + 1)).toNat

end

end A286556.P564058786052783802

/-! ## A286556.P8108824430259626255

`A243354(A250246(n+1))`
-/

namespace A286556.P8108824430259626255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A250246 (n + 1)).toNat

end

end A286556.P8108824430259626255

/-! ## A286556.P341503724572012300

`A243354(A280496(2*(n+1)))`
-/

namespace A286556.P341503724572012300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A280496 (2 * (n + 1))).toNat

end

end A286556.P341503724572012300

/-! ## A286556.P15030201815197438515

`∑{d}[A250246(n+1), A297156(#)]`
-/

namespace A286556.P15030201815197438515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297156 d

end

end A286556.P15030201815197438515

/-! ## A286556.P18224957014611442737

`A243354(A324546(n+1)+A324535(n+1))`
-/

namespace A286556.P18224957014611442737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A324546 (n + 1) + A324535 (n + 1)).toNat

end

end A286556.P18224957014611442737

/-! ## A286556.P12927781004504401608

`A243354(A324545(n+1)-A324535(n+1))`
-/

namespace A286556.P12927781004504401608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (A324545 (n + 1) - A324535 (n + 1)).toNat

end

end A286556.P12927781004504401608

/-! ## A286556.P3263906307428408905

`A243354(A250250(n+1)%A342784(n+1))`
-/

namespace A286556.P3263906307428408905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243354 (Int.tmod (A250250 (n + 1)) (A342784 (n + 1))).toNat

end

end A286556.P3263906307428408905

/-!
# A286557: a(n) = A046523(A286555(n)).

The programs for A286557, there is no canonical definition to state claims against.
-/

/-! ## A286557.P7964757305544994205

`A286553(A003188(n))`
-/

namespace A286557.P7964757305544994205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286553 (A003188 n).toNat

end

end A286557.P7964757305544994205

/-! ## A286557.P17516994713177900809

`A046523(A286555(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286557.P17516994713177900809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A286555 n).toNat

end

end A286557.P17516994713177900809

/-! ## A286557.P15855788740582458041

`A286553(xor(n, floor(n/2)))`
-/

namespace A286557.P15855788740582458041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286553 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A286557.P15855788740582458041

/-! ## A286557.P4861139391787966078

`A286553(A286548(n)+n)`
-/

namespace A286557.P4861139391787966078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286553 (A286548 n + (n : ℤ)).toNat

end

end A286557.P4861139391787966078

/-! ## A286557.P14447384736423438644

`A286553(A032766(n)-A213370(n))`
-/

namespace A286557.P14447384736423438644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286553 (A032766 n - A213370 n).toNat

end

end A286557.P14447384736423438644

/-! ## A286557.P11602007189643687243

`A286553(A213064(n)-A110654(n))`
-/

namespace A286557.P11602007189643687243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286553 (A213064 n - A110654 n).toNat

end

end A286557.P11602007189643687243

/-! ## A286557.P6611789544667171571

`A046523(A252753(xor(n, floor(n/2))))`
-/

namespace A286557.P6611789544667171571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A252753 (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat).toNat

end

end A286557.P6611789544667171571

/-! ## A286557.P17800384592317814908

`A286553(A252754(A286555(2*n-n)))`
-/

namespace A286557.P17800384592317814908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286553 (A252754 (A286555 (2 * n - n)).toNat).toNat

end

end A286557.P17800384592317814908

/-!
# A286558: Ordinal transform of A005811.

The programs for A286558, there is no canonical definition to state claims against.
-/

/-! ## A286558.P10644755543960751991

`A263017(A341910(n))`
-/

namespace A286558.P10644755543960751991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (A341910 n).toNat

end

end A286558.P10644755543960751991

/-! ## A286558.P15242290906804253866

`A200779(and(A010052(n), A194472(n+1))^n+n)`
-/

namespace A286558.P15242290906804253866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200779 (Int.land (A010052 n) (A194472 (n + 1)) ^ n + (n : ℤ)).toNat

end

end A286558.P15242290906804253866

/-!
# A286561: Square array A(n,k): A(n,1) = 1, and for k > 1, A(n,k) = the highest exponent e such that k^e divides n, read by descending antidiagonals as A(1,1), A(1,2), A(2,1), etc.

The programs for A286561, there is no canonical definition to state claims against.
-/

/-! ## A286561.P9426670636331505334

`A286562(A038722(n+1))`
-/

namespace A286561.P9426670636331505334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286562 (A038722 (n + 1)).toNat

end

end A286561.P9426670636331505334

/-! ## A286561.P3699762613388538921

`A286562(A061579(n)+1)`
-/

namespace A286561.P3699762613388538921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286562 (A061579 n + 1).toNat

end

end A286561.P3699762613388538921

/-! ## A286561.P11130644963433707615

`A286562(A114327(n)+1+n)`
-/

namespace A286561.P11130644963433707615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286562 (A114327 n + 1 + (n : ℤ)).toNat

end

end A286561.P11130644963433707615

/-! ## A286561.P17525054428408701364

`A286562(A093995(n+1)-n)`
-/

namespace A286561.P17525054428408701364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286562 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A286561.P17525054428408701364

/-! ## A286561.P6870009018366048283

`A286562(A002024(n+1)²-n)`
-/

namespace A286561.P6870009018366048283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286562 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A286561.P6870009018366048283

/-!
# A286562: Transpose of square array A286561.

The programs for A286562, there is no canonical definition to state claims against.
-/

/-! ## A286562.P11520922642534229091

`A286561(∑[char[∑[n]]]²-n)`
-/

namespace A286562.P11520922642534229091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A286562.P11520922642534229091

/-! ## A286562.P8566433936658689668

`dr(A286561(A038722(n+1)))`
-/

namespace A286562.P8566433936658689668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A286561 (A038722 (n + 1)).toNat)

end

end A286562.P8566433936658689668

/-! ## A286562.P15480959646514761766

`lcm(A033999(n), A286561(A038722(n+1)))`
-/

namespace A286562.P15480959646514761766
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A286561 (A038722 (n + 1)).toNat)

end

end A286562.P15480959646514761766

/-! ## A286562.P12991755010543256086

`A286561(A038722(n+1))+A007814(2*n+5)`
-/

namespace A286562.P12991755010543256086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A038722 (n + 1)).toNat + A007814 (2 * n + 5)

end

end A286562.P12991755010543256086

/-! ## A286562.P1913408077834599918

`A286561(A038722(n+1))+A000007(3*n+2)`
-/

namespace A286562.P1913408077834599918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286561 (A038722 (n + 1)).toNat + A000007 (3 * n + 2)

end

end A286562.P1913408077834599918

/-! ## A286562.P668583897824715929

`A286561(A038722(n+1))^A123125(n)`
-/

namespace A286562.P668583897824715929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286561 (A038722 (n + 1)).toNat : ℚ) ^ (A123125 n : ℤ)

end

end A286562.P668583897824715929

/-!
# A286563: Triangular table T(n,k) read by rows: T(n,1) = 1, and for 1 < k <= n, T(n,k) = the highest exponent e such that k^e divides n.

The programs for A286563, the canonical program `A286563.P18138317205327324667` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286563 has offset 1).

The definition of A286563 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286563.P6262369448290253070

`A286564(∑[char[∑[n]]]²-n)`
-/

namespace A286563.P6262369448290253070
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286564 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A286563.P6262369448290253070

namespace A286563

/-- `A286564(∑[char[∑[n]]]²-n)` -/
def P6262369448290253070.Spec : Prop :=
  ∀ n, P6262369448290253070.a n = A286563 (n + 1)

end A286563

/-! ## A286563.P18138317205327324667

`dr(A286564(A038722(n+1)))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A286563

/-- `dr(A286564(A038722(n+1)))` -/
def P18138317205327324667.Spec : Prop :=
  ∀ n, (P18138317205327324667.a n : ℤ) = A286563 (n + 1)

theorem P18138317205327324667.correct : P18138317205327324667.Spec := by
  intro n
  simp only [A286563, Nat.add_sub_cancel]

end A286563

/-! ## A286563.P14344166661618087416

`lcm(A033999(n), A286564(A038722(n+1)))`
-/

namespace A286563.P14344166661618087416
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A286564 (A038722 (n + 1)).toNat)

end

end A286563.P14344166661618087416

namespace A286563

/-- `lcm(A033999(n), A286564(A038722(n+1)))` -/
def P14344166661618087416.Spec : Prop :=
  ∀ n, (P14344166661618087416.a n : ℤ) = A286563 (n + 1)

end A286563

/-! ## A286563.P14972817893961682649

`A051731(n+1)*A286564(A038722(n+1))`
-/

namespace A286563.P14972817893961682649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A286564 (A038722 (n + 1)).toNat

end

end A286563.P14972817893961682649

namespace A286563

/-- `A051731(n+1)*A286564(A038722(n+1))` -/
def P14972817893961682649.Spec : Prop :=
  ∀ n, P14972817893961682649.a n = A286563 (n + 1)

end A286563

/-! ## A286563.P11736409868179358669

`A057427(n+1)*A286564(A038722(n+1))`
-/

namespace A286563.P11736409868179358669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A286564 (A038722 (n + 1)).toNat

end

end A286563.P11736409868179358669

namespace A286563

/-- `A057427(n+1)*A286564(A038722(n+1))` -/
def P11736409868179358669.Spec : Prop :=
  ∀ n, P11736409868179358669.a n = A286563 (n + 1)

end A286563

/-! ## A286563.P5642803328009672110

`A286562(A245300(n)+1)`
-/

namespace A286563.P5642803328009672110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286562 (A245300 n + 1).toNat

end

end A286563.P5642803328009672110

namespace A286563

/-- `A286562(A245300(n)+1)` -/
def P5642803328009672110.Spec : Prop :=
  ∀ n, P5642803328009672110.a n = A286563 (n + 1)

end A286563

/-! ## A286563.P13183349358160676921

`A382944(A014132(n+1))`
-/

namespace A286563.P13183349358160676921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382944 (A014132 (n + 1)).toNat

end

end A286563.P13183349358160676921

namespace A286563

/-- `A382944(A014132(n+1))` -/
def P13183349358160676921.Spec : Prop :=
  ∀ n, P13183349358160676921.a n = A286563 (n + 1)

end A286563

/-!
# A286564: Triangular table A286563 reversed.

The programs for A286564, the canonical program `A286564.P14826098464724168033` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286564 has offset 1).

The definition of A286564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286564.P11606873847452938224

`A286563(∑[char[∑[n]]]²-n)`
-/

namespace A286564.P11606873847452938224
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286563 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A286564.P11606873847452938224

namespace A286564

/-- `A286563(∑[char[∑[n]]]²-n)` -/
def P11606873847452938224.Spec : Prop :=
  ∀ n, P11606873847452938224.a n = A286564 (n + 1)

end A286564

/-! ## A286564.P14826098464724168033

`val(A007401(n+2)-(n+1), A193739(A007401(n+2)))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A286564

/-- `val(A007401(n+2)-(n+1), A193739(A007401(n+2)))` -/
def P14826098464724168033.Spec : Prop :=
  ∀ n, (P14826098464724168033.a n : ℤ) = A286564 (n + 1)

theorem P14826098464724168033.correct : P14826098464724168033.Spec := by
  intro n
  simp only [A286564, Nat.add_sub_cancel]

end A286564

/-! ## A286564.P17365057983539552888

`A353557(A078138(n+1))+A286563(A038722(n+1))`
-/

namespace A286564.P17365057983539552888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A078138 (n + 1)).toNat + A286563 (A038722 (n + 1)).toNat

end

end A286564.P17365057983539552888

namespace A286564

/-- `A353557(A078138(n+1))+A286563(A038722(n+1))` -/
def P17365057983539552888.Spec : Prop :=
  ∀ n, P17365057983539552888.a n = A286564 (n + 1)

end A286564

/-! ## A286564.P6885399292290286671

`A286563(A038722(n+1))+A000007(2*n+1)`
-/

namespace A286564.P6885399292290286671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286563 (A038722 (n + 1)).toNat + A000007 (2 * n + 1)

end

end A286564.P6885399292290286671

namespace A286564

/-- `A286563(A038722(n+1))+A000007(2*n+1)` -/
def P6885399292290286671.Spec : Prop :=
  ∀ n, P6885399292290286671.a n = A286564 (n + 1)

end A286564

/-! ## A286564.P9198557780587279062

`A353557(A320128(3*n+4))+A286563(A038722(n+1))`
-/

namespace A286564.P9198557780587279062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A320128 (3 * n + 4)).toNat + A286563 (A038722 (n + 1)).toNat

end

end A286564.P9198557780587279062

namespace A286564

/-- `A353557(A320128(3*n+4))+A286563(A038722(n+1))` -/
def P9198557780587279062.Spec : Prop :=
  ∀ n, P9198557780587279062.a n = A286564 (n + 1)

end A286564

/-! ## A286564.P11568055444362978930

`A353557(A291907(n+1))+A286563(A038722(n+1))`
-/

namespace A286564.P11568055444362978930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (A291907 (n + 1)).toNat + A286563 (A038722 (n + 1)).toNat

end

end A286564.P11568055444362978930

namespace A286564

/-- `A353557(A291907(n+1))+A286563(A038722(n+1))` -/
def P11568055444362978930.Spec : Prop :=
  ∀ n, P11568055444362978930.a n = A286564 (n + 1)

end A286564

/-!
# A286565: Restricted growth sequence of A278165 (= A046523(A001045(n))).

The programs for A286565, there is no canonical definition to state claims against.
-/

/-! ## A286565.P7350078169800167910

`A004736(A286566(n+1))`
-/

namespace A286565.P7350078169800167910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A286566 (n + 1)).toNat

end

end A286565.P7350078169800167910

/-! ## A286565.P13999395142572054159

`A193592(A286566(n+1)-1)`
-/

namespace A286565.P13999395142572054159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A286566 (n + 1) - 1).toNat

end

end A286565.P13999395142572054159

/-! ## A286565.P969328020891526790

`A193739(A286566(n+1)-1)`
-/

namespace A286565.P969328020891526790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A286566 (n + 1) - 1).toNat

end

end A286565.P969328020891526790

/-! ## A286565.P16987646251830702501

`A003991(A286566(n+1))/A101296(n+1)`
-/

namespace A286565.P16987646251830702501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286566 (n + 1)).toNat : ℚ) / (A101296 (n + 1) : ℚ)

end

end A286565.P16987646251830702501

/-! ## A286565.P15975737325117680329

`A003991(A286566(n+1))/(A320110(2*(n+1))-1)`
-/

namespace A286565.P15975737325117680329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (A286566 (n + 1)).toNat : ℚ) / (A320110 (2 * (n + 1)) - 1 : ℚ)

end

end A286565.P15975737325117680329

/-!
# A286566: Compound filter (prime signature of n & prime signature of the n-th Jacobsthal number): a(n) = P(A101296(n), A286566(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286566, there is no canonical definition to state claims against.
-/

/-! ## A286566.P16631253224930582348

`1/2*(2+(A101296(n+1)+A286565(n+1))²-A101296(n+1)-3*A286565(n+1))`
-/

namespace A286566.P16631253224930582348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A101296 (n + 1) + A286565 (n + 1)) ^ 2 - A101296 (n + 1) - 3 * A286565 (n + 1) : ℚ)

end

end A286566.P16631253224930582348

/-!
# A286567: Smallest prime factor of the n-th Jacobsthal number: a(n) = A020639(A001045(n)), with a(1)=a(2)=1.

The programs for A286567, there is no canonical definition to state claims against.
-/

/-! ## A286567.P6588552491047228110

`A020639(A001045(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286567.P6588552491047228110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001045 (n + 1)).toNat

end

end A286567.P6588552491047228110

/-! ## A286567.P5134685878970338868

`A020639(abs(∑[(-2)^n]))`
-/

namespace A286567.P5134685878970338868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 |∑ j ∈ Finset.range (n + 1), f1 j|.toNat

end

end A286567.P5134685878970338868

/-! ## A286567.P3454467538456342436

`A374196(∑[A078008(n)])`
-/

namespace A286567.P3454467538456342436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A286567.P3454467538456342436

/-! ## A286567.P13545647441809989559

`A374196(Δ[A000975(n)])`
-/

namespace A286567.P13545647441809989559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374196 (f1 (n + 1) - f1 n).toNat

end

end A286567.P13545647441809989559

/-!
# A286568: Compound filter (phi(n) & 2-adic valuation of sigma(n)): a(n) = P(A000010(n), A286357(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286568, the canonical program `A286568.P15358631486427401094` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286568 has offset 1).

The definition of A286568 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286568.P15358631486427401094

`1/2*(2+(A000010(n+1)+A286357(n+1))²-A000010(n+1)-3*A286357(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A286568

/-- `1/2*(2+(A000010(n+1)+A286357(n+1))²-A000010(n+1)-3*A286357(n+1))` -/
def P15358631486427401094.Spec : Prop :=
  ∀ n, P15358631486427401094.a n = (A286568 (n + 1) : ℚ)

end A286568

/-!
# A286569: Restricted growth sequence transform of "Hofstadter chaotic heart", A284019 (= A004001(n) - A005185(n)).

The programs for A286569, there is no canonical definition to state claims against.
-/

/-! ## A286569.P8798742597153913572

`A001826(or(n+2, A113405(n)))`
-/

namespace A286569.P8798742597153913572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001826 (Int.lor (n + 2 : ℤ) (A113405 n)).toNat

end

end A286569.P8798742597153913572

/-! ## A286569.P842712645134167914

`A037800(xor(2*n, A164464(n+4)))`
-/

namespace A286569.P842712645134167914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (Int.xor (2 * n : ℤ) (A164464 (n + 4))).toNat

end

end A286569.P842712645134167914

/-! ## A286569.P17561247408355619539

`gcd(A065033(gcd(n, ∑[n])), A141213(2*n+1))`
-/

namespace A286569.P17561247408355619539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A065033 (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j))) (A141213 (2 * n + 1))

end

end A286569.P17561247408355619539

/-! ## A286569.P10097775215135123948

`gcd(A000123(n), A056924(A038754(n)))`
-/

namespace A286569.P10097775215135123948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000123 n) (A056924 (A038754 n).toNat)

end

end A286569.P10097775215135123948

/-! ## A286569.P6781285778448472199

`gcd(A007376(A008706(n)), A180209(n+1))`
-/

namespace A286569.P6781285778448472199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007376 (A008706 n).toNat) (A180209 (n + 1))

end

end A286569.P6781285778448472199

/-!
# A286570: Compound filter (prime signature of n & gcd(n, sigma(n))): a(n) = P(A046523(n), A009194(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286570, the canonical program `A286570.P16794196535918637724` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286570 has offset 1).

The definition of A286570 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286570.P16794196535918637724

`1/2*(2+(A046523(n+1)+A009194(n+1))²-A046523(n+1)-3*A009194(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286570

/-- `1/2*(2+(A046523(n+1)+A009194(n+1))²-A046523(n+1)-3*A009194(n+1))` -/
def P16794196535918637724.Spec : Prop :=
  ∀ n, P16794196535918637724.a n = (A286570 (n + 1) : ℚ)

end A286570

/-! ## A286570.P16550016003827292258

`(2+(A046523(n+1)+A009194(n+1))²-A046523(n+1)-3*A009194(n+1))/2`
-/

namespace A286570.P16550016003827292258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 + (A046523 (n + 1) + A009194 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A009194 (n + 1) : ℚ) / 2

end

end A286570.P16550016003827292258

namespace A286570

/-- `(2+(A046523(n+1)+A009194(n+1))²-A046523(n+1)-3*A009194(n+1))/2` -/
def P16550016003827292258.Spec : Prop :=
  ∀ n, P16550016003827292258.a n = (A286570 (n + 1) : ℚ)

end A286570

/-!
# A286571: Compound filter (prime signature of n & n/gcd(n, sigma(n))): a(n) = P(A046523(n), A017666(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286571, the canonical program `A286571.P10448253039019953320` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286571 has offset 1).

The definition of A286571 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017666, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286571.P10448253039019953320

`1/2*(2+(A046523(n+1)+A017666(n+1))²-A046523(n+1)-3*A017666(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286571

/-- `1/2*(2+(A046523(n+1)+A017666(n+1))²-A046523(n+1)-3*A017666(n+1))` -/
def P10448253039019953320.Spec : Prop :=
  ∀ n, P10448253039019953320.a n = (A286571 (n + 1) : ℚ)

end A286571

/-!
# A286572: Compound filter (2-adic valuation of phi(n) & sigma(n)): a(n) = P(A053574(n), A000203(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286572, the canonical program `A286572.P16582161449152449290` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286572 has offset 1).

The definition of A286572 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053574, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286572.P16582161449152449290

`1/2*(2+(A053574(n+1)+A000203(n+1))²-A053574(n+1)-3*A000203(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A286572

/-- `1/2*(2+(A053574(n+1)+A000203(n+1))²-A053574(n+1)-3*A000203(n+1))` -/
def P16582161449152449290.Spec : Prop :=
  ∀ n, P16582161449152449290.a n = (A286572 (n + 1) : ℚ)

end A286572

/-!
# A286573: Compound filter: a(n) = P(A007733(n), A046523(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286573, there is no canonical definition to state claims against.
-/

/-! ## A286573.P7544642117770308899

`1/2*(2+(A007733(n+1)+A046523(n+1))²-A007733(n+1)-3*A046523(n+1))`
-/

namespace A286573.P7544642117770308899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A007733 (n + 1) + A046523 (n + 1)) ^ 2 - A007733 (n + 1) - 3 * A046523 (n + 1) : ℚ)

end

end A286573.P7544642117770308899

/-!
# A286574: Sum of the binary weights of the lengths of 1-runs in base-2 representation of n: a(n) = A000523(A286575(n)).

The programs for A286574, the canonical program `A286574.P1181605856872533712` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286574 has offset 0).

The definition of A286574 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A064547, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286574.P2602797152127362575

`A000523(A286575(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286574.P2602797152127362575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A286575 n).toNat

end

end A286574.P2602797152127362575

namespace A286574

/-- `A000523(A286575(n))` -/
def P2602797152127362575.Spec : Prop :=
  ∀ n, P2602797152127362575.a n = A286574 n

end A286574

/-! ## A286574.P1181605856872533712

`A064547(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A286574

/-- `A064547(A005940(1+n))` -/
def P1181605856872533712.Spec : Prop :=
  ∀ n, P1181605856872533712.a n = A286574 n

theorem P1181605856872533712.correct : P1181605856872533712.Spec := by
  intro n
  simp only [A286574]

end A286574

/-! ## A286574.P7653876330372586847

`A000120(A179821(n))`
-/

namespace A286574.P7653876330372586847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A179821 n).toNat

end

end A286574.P7653876330372586847

namespace A286574

/-- `A000120(A179821(n))` -/
def P7653876330372586847.Spec : Prop :=
  ∀ n, P7653876330372586847.a n = A286574 n

end A286574

/-! ## A286574.P1620512855354875331

`A000120(A286575(n)-1)`
-/

namespace A286574.P1620512855354875331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A286575 n - 1).toNat

end

end A286574.P1620512855354875331

namespace A286574

/-- `A000120(A286575(n)-1)` -/
def P1620512855354875331.Spec : Prop :=
  ∀ n, P1620512855354875331.a n = A286574 n

end A286574

/-! ## A286574.P10265228983037910731

`A110399(2*A286575(n))`
-/

namespace A286574.P10265228983037910731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (2 * A286575 n).toNat

end

end A286574.P10265228983037910731

namespace A286574

/-- `A110399(2*A286575(n))` -/
def P10265228983037910731.Spec : Prop :=
  ∀ n, P10265228983037910731.a n = A286574 n

end A286574

/-! ## A286574.P8200875244413245633

`A007814(3*A286575(n))`
-/

namespace A286574.P8200875244413245633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (3 * A286575 n).toNat

end

end A286574.P8200875244413245633

namespace A286574

/-- `A007814(3*A286575(n))` -/
def P8200875244413245633.Spec : Prop :=
  ∀ n, P8200875244413245633.a n = A286574 n

end A286574

/-! ## A286574.P13035664593567997853

`∑{e}[A278222(n), A000120(#)]`
-/

namespace A286574.P13035664593567997853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A286574.P13035664593567997853

namespace A286574

/-- `∑{e}[A278222(n), A000120(#)]` -/
def P13035664593567997853.Spec : Prop :=
  ∀ n, P13035664593567997853.a n = A286574 n

end A286574

/-! ## A286574.P4317072302415458864

`A334098(A286575(n)²)/2`
-/

namespace A286574.P4317072302415458864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A334098 (A286575 n ^ 2).toNat : ℚ) / 2

end

end A286574.P4317072302415458864

namespace A286574

/-- `A334098(A286575(n)²)/2` -/
def P4317072302415458864.Spec : Prop :=
  ∀ n, P4317072302415458864.a n = (A286574 n : ℚ)

end A286574

/-! ## A286574.P14007957972784702050

`A334098(2*A286575(n))-1`
-/

namespace A286574.P14007957972784702050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (2 * A286575 n).toNat - 1

end

end A286574.P14007957972784702050

namespace A286574

/-- `A334098(2*A286575(n))-1` -/
def P14007957972784702050.Spec : Prop :=
  ∀ n, P14007957972784702050.a n = A286574 n

end A286574

/-! ## A286574.P3495164023640884206

`A057427(n)*A334098(A286575(n))`
-/

namespace A286574.P3495164023640884206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A334098 (A286575 n).toNat

end

end A286574.P3495164023640884206

namespace A286574

/-- `A057427(n)*A334098(A286575(n))` -/
def P3495164023640884206.Spec : Prop :=
  ∀ n, P3495164023640884206.a n = A286574 n

end A286574

/-! ## A286574.P6131549859955949553

`A001222(∏{e}[A278222(n), A278222(#)])`
-/

namespace A286574.P6131549859955949553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A278222 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A286574.P6131549859955949553

namespace A286574

/-- `A001222(∏{e}[A278222(n), A278222(#)])` -/
def P6131549859955949553.Spec : Prop :=
  ∀ n, P6131549859955949553.a n = A286574 n

end A286574

/-! ## A286574.P8687419254683538138

`A253557(∏{e}[A278222(n), A278222(#)])`
-/

namespace A286574.P8687419254683538138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253557 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A278222 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A286574.P8687419254683538138

namespace A286574

/-- `A253557(∏{e}[A278222(n), A278222(#)])` -/
def P8687419254683538138.Spec : Prop :=
  ∀ n, P8687419254683538138.a n = A286574 n

end A286574

/-! ## A286574.P12207043662825159719

`A000005(∏{e}[A278222(n), A278222(A073138(#))])-1`
-/

namespace A286574.P12207043662825159719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A278222 (A073138 (Nat.factorization (f1 n).natAbs p)).toNat).toNat - 1

end

end A286574.P12207043662825159719

namespace A286574

/-- `A000005(∏{e}[A278222(n), A278222(A073138(#))])-1` -/
def P12207043662825159719.Spec : Prop :=
  ∀ n, P12207043662825159719.a n = A286574 n

end A286574

/-! ## A286574.P5102386561228951617

`val(A286575(2*n), 2)`
-/

namespace A286574.P5102386561228951617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A286575 (2 * n)).toNat 2

end

end A286574.P5102386561228951617

namespace A286574

/-- `val(A286575(2*n), 2)` -/
def P5102386561228951617.Spec : Prop :=
  ∀ n, (P5102386561228951617.a n : ℤ) = A286574 n

end A286574

/-! ## A286574.P4652611309667710434

`A001222(A286575(2*n))`
-/

namespace A286574.P4652611309667710434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A286575 (2 * n)).toNat

end

end A286574.P4652611309667710434

namespace A286574

/-- `A001222(A286575(2*n))` -/
def P4652611309667710434.Spec : Prop :=
  ∀ n, P4652611309667710434.a n = A286574 n

end A286574

/-! ## A286574.P10413828318294021958

`A000120(A156552(A286575(n+n)))`
-/

namespace A286574.P10413828318294021958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A156552 (A286575 (n + n)).toNat).toNat

end

end A286574.P10413828318294021958

namespace A286574

/-- `A000120(A156552(A286575(n+n)))` -/
def P10413828318294021958.Spec : Prop :=
  ∀ n, P10413828318294021958.a n = A286574 n

end A286574

/-! ## A286574.P16663196201917116495

`A007814(A286575(n)²)/2`
-/

namespace A286574.P16663196201917116495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007814 (A286575 n ^ 2).toNat : ℚ) / 2

end

end A286574.P16663196201917116495

namespace A286574

/-- `A007814(A286575(n)²)/2` -/
def P16663196201917116495.Spec : Prop :=
  ∀ n, P16663196201917116495.a n = (A286574 n : ℚ)

end A286574

/-! ## A286574.P4867368481786398911

`A000120(A156552(A286575(n))²)`
-/

namespace A286574.P4867368481786398911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A156552 (A286575 n).toNat ^ 2).toNat

end

end A286574.P4867368481786398911

namespace A286574

/-- `A000120(A156552(A286575(n))²)` -/
def P4867368481786398911.Spec : Prop :=
  ∀ n, P4867368481786398911.a n = A286574 n

end A286574

/-! ## A286574.P17824681835491900807

`A064547(A278222(n))`
-/

namespace A286574.P17824681835491900807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A278222 n).toNat

end

end A286574.P17824681835491900807

namespace A286574

/-- `A064547(A278222(n))` -/
def P17824681835491900807.Spec : Prop :=
  ∀ n, P17824681835491900807.a n = A286574 n

end A286574

/-! ## A286574.P14891778976086181147

`∑{e}[A005940(n+1), A000120(#)]`
-/

namespace A286574.P14891778976086181147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (Nat.factorization (f1 n).natAbs p)

end

end A286574.P14891778976086181147

namespace A286574

/-- `∑{e}[A005940(n+1), A000120(#)]` -/
def P14891778976086181147.Spec : Prop :=
  ∀ n, P14891778976086181147.a n = A286574 n

end A286574

/-!
# A286575: Run-length transform of A001316.

The programs for A286575, the canonical program `A286575.P2149681113595504666` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286575 has offset 0).

The definition of A286575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A037445, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286575.P2149681113595504666

`A037445(A005940(1+n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A286575

/-- `A037445(A005940(1+n))` -/
def P2149681113595504666.Spec : Prop :=
  ∀ n, P2149681113595504666.a n = A286575 n

theorem P2149681113595504666.correct : P2149681113595504666.Spec := by
  intro n
  simp only [A286575]

end A286575

/-! ## A286575.P12010257179580310269

`2^A286574(n)`
-/

namespace A286575.P12010257179580310269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A286574 n : ℤ)

end

end A286575.P12010257179580310269

namespace A286575

/-- `2^A286574(n)` -/
def P12010257179580310269.Spec : Prop :=
  ∀ n, P12010257179580310269.a n = (A286575 n : ℚ)

end A286575

/-! ## A286575.P3233070168305949934

`A001316(A179821(n))`
-/

namespace A286575.P3233070168305949934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A179821 n).toNat

end

end A286575.P3233070168305949934

namespace A286575

/-- `A001316(A179821(n))` -/
def P3233070168305949934.Spec : Prop :=
  ∀ n, P3233070168305949934.a n = A286575 n

end A286575

/-! ## A286575.P15526399564036864905

`∏{e}[A278222(n), A001316(#)]`
-/

namespace A286575.P15526399564036864905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001316 (Nat.factorization (f1 n).natAbs p)

end

end A286575.P15526399564036864905

namespace A286575

/-- `∏{e}[A278222(n), A001316(#)]` -/
def P15526399564036864905.Spec : Prop :=
  ∀ n, P15526399564036864905.a n = A286575 n

end A286575

/-! ## A286575.P13496681958321979844

`A000079((A286574(n)+1+n)%(n+1))`
-/

namespace A286575.P13496681958321979844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (Int.tmod (A286574 n + 1 + (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A286575.P13496681958321979844

namespace A286575

/-- `A000079((A286574(n)+1+n)%(n+1))` -/
def P13496681958321979844.Spec : Prop :=
  ∀ n, P13496681958321979844.a n = A286575 n

end A286575

/-! ## A286575.P5732392852787307305

`∏{e}[A278222(n), A278222(A073138(#))]`
-/

namespace A286575.P5732392852787307305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A278222 (A073138 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A286575.P5732392852787307305

namespace A286575

/-- `∏{e}[A278222(n), A278222(A073138(#))]` -/
def P5732392852787307305.Spec : Prop :=
  ∀ n, P5732392852787307305.a n = A286575 n

end A286575

/-! ## A286575.P5016358104555116810

`A037445(A278222(n))`
-/

namespace A286575.P5016358104555116810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A278222 n).toNat

end

end A286575.P5016358104555116810

namespace A286575

/-- `A037445(A278222(n))` -/
def P5016358104555116810.Spec : Prop :=
  ∀ n, P5016358104555116810.a n = A286575 n

end A286575

/-! ## A286575.P9191801053694431389

`∏{e}[A005940(n+1), A001316(#)]`
-/

namespace A286575.P9191801053694431389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001316 (Nat.factorization (f1 n).natAbs p)

end

end A286575.P9191801053694431389

namespace A286575

/-- `∏{e}[A005940(n+1), A001316(#)]` -/
def P9191801053694431389.Spec : Prop :=
  ∀ n, P9191801053694431389.a n = A286575 n

end A286575

/-! ## A286575.P9442320167950583779

`∏{e}[A332815(n), A001316(#)]`
-/

namespace A286575.P9442320167950583779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001316 (Nat.factorization (f1 n).natAbs p)

end

end A286575.P9442320167950583779

namespace A286575

/-- `∏{e}[A332815(n), A001316(#)]` -/
def P9442320167950583779.Spec : Prop :=
  ∀ n, P9442320167950583779.a n = A286575 n

end A286575

/-! ## A286575.P8866520858475034507

`A000079(n)/A000079(n-A286574(n))`
-/

namespace A286575.P8866520858475034507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / (A000079 ((n : ℤ) - A286574 n).toNat : ℚ)

end

end A286575.P8866520858475034507

namespace A286575

/-- `A000079(n)/A000079(n-A286574(n))` -/
def P8866520858475034507.Spec : Prop :=
  ∀ n, P8866520858475034507.a n = (A286575 n : ℚ)

end A286575

/-! ## A286575.P5243957017669040069

`A037445(A332815(n))`
-/

namespace A286575.P5243957017669040069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A332815 n).toNat

end

end A286575.P5243957017669040069

namespace A286575

/-- `A037445(A332815(n))` -/
def P5243957017669040069.Spec : Prop :=
  ∀ n, P5243957017669040069.a n = A286575 n

end A286575

/-!
# A286576: a(n) = A132971(n) mod 3.

The programs for A286576, the canonical program `A286576.P18236901123644785812` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286576 has offset 0).

The definition of A286576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286576.P16379839788776435604

`A255304(n)%3`
-/

namespace A286576.P16379839788776435604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255304 n) 3

end

end A286576.P16379839788776435604

namespace A286576

/-- `A255304(n)%3` -/
def P16379839788776435604.Spec : Prop :=
  ∀ n, P16379839788776435604.a n = A286576 n

end A286576

/-! ## A286576.P17529320377776727506

`A278159(n)%3`
-/

namespace A286576.P17529320377776727506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278159 n) 3

end

end A286576.P17529320377776727506

namespace A286576

/-- `A278159(n)%3` -/
def P17529320377776727506.Spec : Prop :=
  ∀ n, P17529320377776727506.a n = A286576 n

end A286576

/-! ## A286576.P7908052448653744281

`char[and(n, floor(-(n/2)))]*A001285(n)`
-/

namespace A286576.P7908052448653744281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A001285 n

end

end A286576.P7908052448653744281

namespace A286576

/-- `char[and(n, floor(-(n/2)))]*A001285(n)` -/
def P7908052448653744281.Spec : Prop :=
  ∀ n, P7908052448653744281.a n = A286576 n

end A286576

/-! ## A286576.P9078370666366830653

`(2-char[xor(n, 2*n)])*char[A003714(n)]`
-/

namespace A286576.P9078370666366830653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A286576.P9078370666366830653

namespace A286576

/-- `(2-char[xor(n, 2*n)])*char[A003714(n)]` -/
def P9078370666366830653.Spec : Prop :=
  ∀ n, P9078370666366830653.a n = A286576 n

end A286576

/-! ## A286576.P4179759953189850582

`C(2-char[xor(n, 2*n)], A318925(n)+1)`
-/

namespace A286576.P4179759953189850582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat (A318925 n + 1).toNat

end

end A286576.P4179759953189850582

namespace A286576

/-- `C(2-char[xor(n, 2*n)], A318925(n)+1)` -/
def P4179759953189850582.Spec : Prop :=
  ∀ n, (P4179759953189850582.a n : ℤ) = A286576 n

end A286576

/-! ## A286576.P6617924386448803205

`A001285(n)*A085357(n)`
-/

namespace A286576.P6617924386448803205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n * A085357 n

end

end A286576.P6617924386448803205

namespace A286576

/-- `A001285(n)*A085357(n)` -/
def P6617924386448803205.Spec : Prop :=
  ∀ n, P6617924386448803205.a n = A286576 n

end A286576

/-! ## A286576.P16785733358712343148

`A085357(n)*A106825(n)`
-/

namespace A286576.P16785733358712343148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n * A106825 n

end

end A286576.P16785733358712343148

namespace A286576

/-- `A085357(n)*A106825(n)` -/
def P16785733358712343148.Spec : Prop :=
  ∀ n, P16785733358712343148.a n = A286576 n

end A286576

/-! ## A286576.P18271554883373742368

`lcm(A001285(n), A132971(n))`
-/

namespace A286576.P18271554883373742368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A132971 n)

end

end A286576.P18271554883373742368

namespace A286576

/-- `lcm(A001285(n), A132971(n))` -/
def P18271554883373742368.Spec : Prop :=
  ∀ n, (P18271554883373742368.a n : ℤ) = A286576 n

end A286576

/-! ## A286576.P18284775655331415999

`and(A106825(n), A132971(n))`
-/

namespace A286576.P18284775655331415999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A106825 n) (A132971 n)

end

end A286576.P18284775655331415999

namespace A286576

/-- `and(A106825(n), A132971(n))` -/
def P18284775655331415999.Spec : Prop :=
  ∀ n, P18284775655331415999.a n = A286576 n

end A286576

/-! ## A286576.P9081493535380376268

`(A268411(n)+1)*A085357(n)`
-/

namespace A286576.P9081493535380376268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268411 n + 1) * A085357 n

end

end A286576.P9081493535380376268

namespace A286576

/-- `(A268411(n)+1)*A085357(n)` -/
def P9081493535380376268.Spec : Prop :=
  ∀ n, P9081493535380376268.a n = A286576 n

end A286576

/-! ## A286576.P6270207498135506766

`(A010060(n)+1)*A132971(n)²`
-/

namespace A286576.P6270207498135506766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010060 n + 1) * A132971 n ^ 2

end

end A286576.P6270207498135506766

namespace A286576

/-- `(A010060(n)+1)*A132971(n)²` -/
def P6270207498135506766.Spec : Prop :=
  ∀ n, P6270207498135506766.a n = A286576 n

end A286576

/-! ## A286576.P12708498649363940292

`(A268411(n)+1)*A132971(n)²`
-/

namespace A286576.P12708498649363940292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A268411 n + 1) * A132971 n ^ 2

end

end A286576.P12708498649363940292

namespace A286576

/-- `(A268411(n)+1)*A132971(n)²` -/
def P12708498649363940292.Spec : Prop :=
  ∀ n, P12708498649363940292.a n = A286576 n

end A286576

/-! ## A286576.P909422522779406588

`val(∏{e}[A278222(n), A000040(#)+1]+1, 2)`
-/

namespace A286576.P909422522779406588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000040 (Nat.factorization (f1 n).natAbs p) + 1) + 1).toNat 2

end

end A286576.P909422522779406588

namespace A286576

/-- `val(∏{e}[A278222(n), A000040(#)+1]+1, 2)` -/
def P909422522779406588.Spec : Prop :=
  ∀ n, (P909422522779406588.a n : ℤ) = A286576 n

end A286576

/-! ## A286576.P18236901123644785812

`A001316(n)%A048883(C(and(n, 3*n), n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286576

/-- `A001316(n)%A048883(C(and(n, 3*n), n))` -/
def P18236901123644785812.Spec : Prop :=
  ∀ n, P18236901123644785812.a n = A286576 n

theorem P18236901123644785812.correct : P18236901123644785812.Spec := by
  intro n
  simp only [A286576]

end A286576

/-! ## A286576.P12119965729690327676

`A160239(n)%A084101(A245195(n))`
-/

namespace A286576.P12119965729690327676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160239 n) (A084101 (A245195 n).toNat)

end

end A286576.P12119965729690327676

namespace A286576

/-- `A160239(n)%A084101(A245195(n))` -/
def P12119965729690327676.Spec : Prop :=
  ∀ n, P12119965729690327676.a n = A286576 n

end A286576

/-! ## A286576.P12640751978171768831

`(A132971(2*n)-A010060(2*n))*A132971(2*n)`
-/

namespace A286576.P12640751978171768831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A132971 (2 * n) - A010060 (2 * n)) * A132971 (2 * n)

end

end A286576.P12640751978171768831

namespace A286576

/-- `(A132971(2*n)-A010060(2*n))*A132971(2*n)` -/
def P12640751978171768831.Spec : Prop :=
  ∀ n, P12640751978171768831.a n = A286576 n

end A286576

/-! ## A286576.P1967878773466107791

`A365538(2*n)%3`
-/

namespace A286576.P1967878773466107791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A365538 (2 * n)) 3

end

end A286576.P1967878773466107791

namespace A286576

/-- `A365538(2*n)%3` -/
def P1967878773466107791.Spec : Prop :=
  ∀ n, P1967878773466107791.a n = A286576 n

end A286576

/-! ## A286576.P4459627922835498097

`A001285(2*n)*A132971(2*n)*A132971(2*n)`
-/

namespace A286576.P4459627922835498097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (2 * n) * A132971 (2 * n) * A132971 (2 * n)

end

end A286576.P4459627922835498097

namespace A286576

/-- `A001285(2*n)*A132971(2*n)*A132971(2*n)` -/
def P4459627922835498097.Spec : Prop :=
  ∀ n, P4459627922835498097.a n = A286576 n

end A286576

/-! ## A286576.P11322036405903614056

`A106825(2*n)*A132971(n)*A132971(n)`
-/

namespace A286576.P11322036405903614056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106825 (2 * n) * A132971 n * A132971 n

end

end A286576.P11322036405903614056

namespace A286576

/-- `A106825(2*n)*A132971(n)*A132971(n)` -/
def P11322036405903614056.Spec : Prop :=
  ∀ n, P11322036405903614056.a n = A286576 n

end A286576

/-! ## A286576.P11776911208218378566

`A132269(3*n)%3`
-/

namespace A286576.P11776911208218378566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132269 (3 * n)) 3

end

end A286576.P11776911208218378566

namespace A286576

/-- `A132269(3*n)%3` -/
def P11776911208218378566.Spec : Prop :=
  ∀ n, P11776911208218378566.a n = A286576 n

end A286576

/-!
# A286577: If n = 3k-1 then a(n) = a(k), otherwise a(n) = n.

The programs for A286577, the canonical program `A286577.P6127444042492466078` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286577 has offset 0).

The definition of A286577 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A286577.P6127444042492466078

`round(n/3^A253786(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A286577

/-- `round(n/3^A253786(n))` -/
def P6127444042492466078.Spec : Prop :=
  ∀ n, P6127444042492466078.a n = A286577 n

theorem P6127444042492466078.correct : P6127444042492466078.Spec := by
  intro n
  simp only [A286577]

end A286577

/-! ## A286577.P12343960619090895439

`A032766(A126760(record[n*and(1, n)]))`
-/

namespace A286577.P12343960619090895439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A126760 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A286577.P12343960619090895439

namespace A286577

/-- `A032766(A126760(record[n*and(1, n)]))` -/
def P12343960619090895439.Spec : Prop :=
  ∀ n, P12343960619090895439.a n = A286577 n

end A286577

/-! ## A286577.P2776313429956691313

`A032766(A126760(A004273(n)))`
-/

namespace A286577.P2776313429956691313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A126760 (A004273 n).toNat).toNat

end

end A286577.P2776313429956691313

namespace A286577

/-- `A032766(A126760(A004273(n)))` -/
def P2776313429956691313.Spec : Prop :=
  ∀ n, P2776313429956691313.a n = A286577 n

end A286577

/-! ## A286577.P18441715089538826702

`A032766(A126760(record[A026741(n)]))`
-/

namespace A286577.P18441715089538826702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A126760 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A286577.P18441715089538826702

namespace A286577

/-- `A032766(A126760(record[A026741(n)]))` -/
def P18441715089538826702.Spec : Prop :=
  ∀ n, P18441715089538826702.a n = A286577 n

end A286577

/-! ## A286577.P10928274407493127113

`A004526(3*A126760(A004273(n)))`
-/

namespace A286577.P10928274407493127113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A126760 (A004273 n).toNat).toNat

end

end A286577.P10928274407493127113

namespace A286577

/-- `A004526(3*A126760(A004273(n)))` -/
def P10928274407493127113.Spec : Prop :=
  ∀ n, P10928274407493127113.a n = A286577 n

end A286577

/-!
# A286578: a(n) = A285712(A286577(n)).

The programs for A286578, the canonical program `A286578.P11823003083739616083` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286578 has offset 1).

The definition of A286578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A285712, A286577, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286578.P11823003083739616083

`A285712(A286577(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286578

/-- `A285712(A286577(n+1))` -/
def P11823003083739616083.Spec : Prop :=
  ∀ n, P11823003083739616083.a n = A286578 (n + 1)

theorem P11823003083739616083.correct : P11823003083739616083.Spec := by
  intro n
  simp only [A286578, Nat.add_sub_cancel]

end A286578

/-! ## A286578.P5944308323439362337

`A249745(A253887(n+1))%A253887(n+1)²`
-/

namespace A286578.P5944308323439362337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249745 (A253887 (n + 1)).toNat) (A253887 (n + 1) ^ 2)

end

end A286578.P5944308323439362337

namespace A286578

/-- `A249745(A253887(n+1))%A253887(n+1)²` -/
def P5944308323439362337.Spec : Prop :=
  ∀ n, P5944308323439362337.a n = A286578 (n + 1)

end A286578

/-! ## A286578.P224615681486627943

`A115384(A353412(2*n+1))%A353412(2*n+1)`
-/

namespace A286578.P224615681486627943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115384 (A353412 (2 * n + 1)).toNat) (A353412 (2 * n + 1))

end

end A286578.P224615681486627943

namespace A286578

/-- `A115384(A353412(2*n+1))%A353412(2*n+1)` -/
def P224615681486627943.Spec : Prop :=
  ∀ n, P224615681486627943.a n = A286578 (n + 1)

end A286578

/-! ## A286578.P1566782668185246461

`A285712(A048673(A000265(A064216(n+1))))`
-/

namespace A286578.P1566782668185246461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A048673 (A000265 (A064216 (n + 1)).toNat).toNat).toNat

end

end A286578.P1566782668185246461

namespace A286578

/-- `A285712(A048673(A000265(A064216(n+1))))` -/
def P1566782668185246461.Spec : Prop :=
  ∀ n, P1566782668185246461.a n = A286578 (n + 1)

end A286578

/-! ## A286578.P204577791355797221

`A285712(A048673(A000265(A064989(2*n+1))))`
-/

namespace A286578.P204577791355797221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A048673 (A000265 (A064989 (2 * n + 1)).toNat).toNat).toNat

end

end A286578.P204577791355797221

namespace A286578

/-- `A285712(A048673(A000265(A064989(2*n+1))))` -/
def P204577791355797221.Spec : Prop :=
  ∀ n, P204577791355797221.a n = A286578 (n + 1)

end A286578

/-! ## A286578.P12023259696411166416

`A285712(A048673(A000265(A252463(2*n+1))))`
-/

namespace A286578.P12023259696411166416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285712 (A048673 (A000265 (A252463 (2 * n + 1)).toNat).toNat).toNat

end

end A286578.P12023259696411166416

namespace A286578

/-- `A285712(A048673(A000265(A252463(2*n+1))))` -/
def P12023259696411166416.Spec : Prop :=
  ∀ n, P12023259696411166416.a n = A286578 (n + 1)

end A286578

/-! ## A286578.P10333074428416777796

`A242992(A353413(n+1))`
-/

namespace A286578.P10333074428416777796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242992 (A353413 (n + 1)).toNat

end

end A286578.P10333074428416777796

namespace A286578

/-- `A242992(A353413(n+1))` -/
def P10333074428416777796.Spec : Prop :=
  ∀ n, P10333074428416777796.a n = A286578 (n + 1)

end A286578

/-!
# A286579: Ordinal transform of A112049.

The programs for A286579, there is no canonical definition to state claims against.
-/

/-! ## A286579.P1873452618338646177

`val(∏[A227196(2*n+3)], A112046(n+1))`
-/

namespace A286579.P1873452618338646177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ j ∈ Finset.range (n + 1), f1 j).toNat (A112046 (n + 1)).toNat

end

end A286579.P1873452618338646177

/-!
# A286580: a(n) = A278222(A233275(n)).

The programs for A286580, there is no canonical definition to state claims against.
-/

/-! ## A286580.P15647947191172803820

`A278222(A233275(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A286580.P15647947191172803820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A233275 n).toNat

end

end A286580.P15647947191172803820

/-! ## A286580.P743108989447435748

`A278531(A233277(n))`
-/

namespace A286580.P743108989447435748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A233277 n).toNat

end

end A286580.P743108989447435748

/-! ## A286580.P11814255884007441876

`A286588(A233275(n))%A292546(n+1)`
-/

namespace A286580.P11814255884007441876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286588 (A233275 n).toNat) (A292546 (n + 1))

end

end A286580.P11814255884007441876

/-! ## A286580.P9464111275612664952

`A286588(A233275(n))%A184604(A000124(n))`
-/

namespace A286580.P9464111275612664952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286588 (A233275 n).toNat) (A184604 (A000124 n).toNat)

end

end A286580.P9464111275612664952

/-!
# A286582: a(n) = A001222(A048673(n)).

The programs for A286582, the canonical program `A286582.P13483176475197983670` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286582 has offset 1).

The definition of A286582 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286582.P13483176475197983670

`A001222(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A286582

/-- `A001222(A048673(n+1))` -/
def P13483176475197983670.Spec : Prop :=
  ∀ n, P13483176475197983670.a n = A286582 (n + 1)

theorem P13483176475197983670.correct : P13483176475197983670.Spec := by
  intro n
  simp only [A286582, Nat.add_sub_cancel]

end A286582

/-! ## A286582.P9858525019139512580

`∑{e}[A278224(n+1), #]`
-/

namespace A286582.P9858525019139512580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278224 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A286582.P9858525019139512580

namespace A286582

/-- `∑{e}[A278224(n+1), #]` -/
def P9858525019139512580.Spec : Prop :=
  ∀ n, (P9858525019139512580.a n : ℤ) = A286582 (n + 1)

end A286582

/-! ## A286582.P11326800774596856108

`A001222(A278224(n+1))`
-/

namespace A286582.P11326800774596856108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278224 (n + 1)).toNat

end

end A286582.P11326800774596856108

namespace A286582

/-- `A001222(A278224(n+1))` -/
def P11326800774596856108.Spec : Prop :=
  ∀ n, P11326800774596856108.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P5281217339487609096

`∑{e}[A003961(n+1)+1, #]-1`
-/

namespace A286582.P5281217339487609096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1

end

end A286582.P5281217339487609096

namespace A286582

/-- `∑{e}[A003961(n+1)+1, #]-1` -/
def P5281217339487609096.Spec : Prop :=
  ∀ n, P5281217339487609096.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P15241872510386691206

`A001222(A253885(n)/2+1)`
-/

namespace A286582.P15241872510386691206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2 + 1)).toNat

end

end A286582.P15241872510386691206

namespace A286582

/-- `A001222(A253885(n)/2+1)` -/
def P15241872510386691206.Spec : Prop :=
  ∀ n, P15241872510386691206.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P2757541817712636329

`A001222((A003961(n+1)+1)/2)`
-/

namespace A286582.P2757541817712636329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A286582.P2757541817712636329

namespace A286582

/-- `A001222((A003961(n+1)+1)/2)` -/
def P2757541817712636329.Spec : Prop :=
  ∀ n, P2757541817712636329.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P1854828887579730018

`A001222(A245447(A064216(n+1)))`
-/

namespace A286582.P1854828887579730018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245447 (A064216 (n + 1)).toNat).toNat

end

end A286582.P1854828887579730018

namespace A286582

/-- `A001222(A245447(A064216(n+1)))` -/
def P1854828887579730018.Spec : Prop :=
  ∀ n, P1854828887579730018.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P776679032245100467

`A001222(A337336(n+1)%A045965(n+1))`
-/

namespace A286582.P776679032245100467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A337336 (n + 1)) (A045965 (n + 1))).toNat

end

end A286582.P776679032245100467

namespace A286582

/-- `A001222(A337336(n+1)%A045965(n+1))` -/
def P776679032245100467.Spec : Prop :=
  ∀ n, P776679032245100467.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P3597071547726474901

`A001222(A253885(n)+2)-1`
-/

namespace A286582.P3597071547726474901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A253885 n + 2).toNat - 1

end

end A286582.P3597071547726474901

namespace A286582

/-- `A001222(A253885(n)+2)-1` -/
def P3597071547726474901.Spec : Prop :=
  ∀ n, P3597071547726474901.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P15726647933026576808

`A001222(A003961(n+1)+1)-1`
-/

namespace A286582.P15726647933026576808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003961 (n + 1) + 1).toNat - 1

end

end A286582.P15726647933026576808

namespace A286582

/-- `A001222(A003961(n+1)+1)-1` -/
def P15726647933026576808.Spec : Prop :=
  ∀ n, P15726647933026576808.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P9199815371209260168

`A001222(A045965(n+1)+1)-1`
-/

namespace A286582.P9199815371209260168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A045965 (n + 1) + 1).toNat - 1

end

end A286582.P9199815371209260168

namespace A286582

/-- `A001222(A045965(n+1)+1)-1` -/
def P9199815371209260168.Spec : Prop :=
  ∀ n, P9199815371209260168.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P11345265265647503780

`A001222(A249810(2*(n+1)))`
-/

namespace A286582.P11345265265647503780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A249810 (2 * (n + 1))).toNat

end

end A286582.P11345265265647503780

namespace A286582

/-- `A001222(A249810(2*(n+1)))` -/
def P11345265265647503780.Spec : Prop :=
  ∀ n, P11345265265647503780.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P17086987677381696972

`A001222(A297166(2*(n+1))+1)-1`
-/

namespace A286582.P17086987677381696972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A297166 (2 * (n + 1)) + 1).toNat - 1

end

end A286582.P17086987677381696972

namespace A286582

/-- `A001222(A297166(2*(n+1))+1)-1` -/
def P17086987677381696972.Spec : Prop :=
  ∀ n, P17086987677381696972.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P12642160444360076971

`A001222(A243500(2*(n+1)))`
-/

namespace A286582.P12642160444360076971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A243500 (2 * (n + 1))).toNat

end

end A286582.P12642160444360076971

namespace A286582

/-- `A001222(A243500(2*(n+1)))` -/
def P12642160444360076971.Spec : Prop :=
  ∀ n, P12642160444360076971.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P16174713008811373407

`A001222(2*A245447(n+1)-1)`
-/

namespace A286582.P16174713008811373407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A245447 (n + 1) - 1).toNat

end

end A286582.P16174713008811373407

namespace A286582

/-- `A001222(2*A245447(n+1)-1)` -/
def P16174713008811373407.Spec : Prop :=
  ∀ n, P16174713008811373407.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P17546872012401303934

`A001222(A245447(n+1)+A245447(n+1)-1)`
-/

namespace A286582.P17546872012401303934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245447 (n + 1) + (A245447 (n + 1) - 1)).toNat

end

end A286582.P17546872012401303934

namespace A286582

/-- `A001222(A245447(n+1)+A245447(n+1)-1)` -/
def P17546872012401303934.Spec : Prop :=
  ∀ n, P17546872012401303934.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P5504675659899962778

`A001222(A250471(A266646(n+1)))`
-/

namespace A286582.P5504675659899962778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A250471 (A266646 (n + 1)).toNat).toNat

end

end A286582.P5504675659899962778

namespace A286582

/-- `A001222(A250471(A266646(n+1)))` -/
def P5504675659899962778.Spec : Prop :=
  ∀ n, P5504675659899962778.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P2201128959602954895

`A091304(A245447(n+1))`
-/

namespace A286582.P2201128959602954895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091304 (A245447 (n + 1)).toNat

end

end A286582.P2201128959602954895

namespace A286582

/-- `A091304(A245447(n+1))` -/
def P2201128959602954895.Spec : Prop :=
  ∀ n, P2201128959602954895.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P14920620910147062636

`A001222(A283466(2*(n+1)))-1`
-/

namespace A286582.P14920620910147062636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A283466 (2 * (n + 1))).toNat - 1

end

end A286582.P14920620910147062636

namespace A286582

/-- `A001222(A283466(2*(n+1)))-1` -/
def P14920620910147062636.Spec : Prop :=
  ∀ n, P14920620910147062636.a n = A286582 (n + 1)

end A286582

/-! ## A286582.P11672242332334135048

`A252736(A243501(n+1))`
-/

namespace A286582.P11672242332334135048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (A243501 (n + 1)).toNat

end

end A286582.P11672242332334135048

namespace A286582

/-- `A252736(A243501(n+1))` -/
def P11672242332334135048.Spec : Prop :=
  ∀ n, P11672242332334135048.a n = A286582 (n + 1)

end A286582

/-!
# A286583: a(n) = A007814(A048673(n)).

The programs for A286583, the canonical program `A286583.P1093253371800113672` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286583 has offset 1).

The definition of A286583 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286583.P1093253371800113672

`A007814(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A286583

/-- `A007814(A048673(n+1))` -/
def P1093253371800113672.Spec : Prop :=
  ∀ n, P1093253371800113672.a n = A286583 (n + 1)

theorem P1093253371800113672.correct : P1093253371800113672.Spec := by
  intro n
  simp only [A286583, Nat.add_sub_cancel]

end A286583

/-! ## A286583.P16421320253448867382

`A336842(n+1)-1`
-/

namespace A286583.P16421320253448867382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336842 (n + 1) - 1

end

end A286583.P16421320253448867382

namespace A286583

/-- `A336842(n+1)-1` -/
def P16421320253448867382.Spec : Prop :=
  ∀ n, P16421320253448867382.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P900627206294666785

`val(A243501(n+1), 2)-1`
-/

namespace A286583.P900627206294666785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A243501 (n + 1)).toNat 2 : ℤ) - 1

end

end A286583.P900627206294666785

namespace A286583

/-- `val(A243501(n+1), 2)-1` -/
def P900627206294666785.Spec : Prop :=
  ∀ n, P900627206294666785.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P5650602384457425250

`val(ceil(A003961(n+1)/2), 2)`
-/

namespace A286583.P5650602384457425250
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌈(A003961 (n + 1) : ℚ) / 2⌉.toNat 2

end

end A286583.P5650602384457425250

namespace A286583

/-- `val(ceil(A003961(n+1)/2), 2)` -/
def P5650602384457425250.Spec : Prop :=
  ∀ n, (P5650602384457425250.a n : ℤ) = A286583 (n + 1)

end A286583

/-! ## A286583.P1847803523065972262

`A029730(val(A003961(n+1)+1, 2))`
-/

namespace A286583.P1847803523065972262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (SequenceMachineLib.valuation (A003961 (n + 1) + 1).toNat 2)

end

end A286583.P1847803523065972262

namespace A286583

/-- `A029730(val(A003961(n+1)+1, 2))` -/
def P1847803523065972262.Spec : Prop :=
  ∀ n, P1847803523065972262.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P4982457369945813044

`val(A337336(n+1)%A045965(n+1), 2)`
-/

namespace A286583.P4982457369945813044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.tmod (A337336 (n + 1)) (A045965 (n + 1))).toNat 2

end

end A286583.P4982457369945813044

namespace A286583

/-- `val(A337336(n+1)%A045965(n+1), 2)` -/
def P4982457369945813044.Spec : Prop :=
  ∀ n, (P4982457369945813044.a n : ℤ) = A286583 (n + 1)

end A286583

/-! ## A286583.P8092478357751385934

`val(A243500(2*(n+1)), 3)`
-/

namespace A286583.P8092478357751385934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A243500 (2 * (n + 1))).toNat 3

end

end A286583.P8092478357751385934

namespace A286583

/-- `val(A243500(2*(n+1)), 3)` -/
def P8092478357751385934.Spec : Prop :=
  ∀ n, (P8092478357751385934.a n : ℤ) = A286583 (n + 1)

end A286583

/-! ## A286583.P18132533711690130109

`A058197(n+1)%A336842(n+1)`
-/

namespace A286583.P18132533711690130109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A336842 (n + 1))

end

end A286583.P18132533711690130109

namespace A286583

/-- `A058197(n+1)%A336842(n+1)` -/
def P18132533711690130109.Spec : Prop :=
  ∀ n, P18132533711690130109.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P14046833954797116459

`val(A249810(2*(n+1)), 2)`
-/

namespace A286583.P14046833954797116459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A249810 (2 * (n + 1))).toNat 2

end

end A286583.P14046833954797116459

namespace A286583

/-- `val(A249810(2*(n+1)), 2)` -/
def P14046833954797116459.Spec : Prop :=
  ∀ n, (P14046833954797116459.a n : ℤ) = A286583 (n + 1)

end A286583

/-! ## A286583.P4466656524026178506

`A302045(A003961(n+1)+1)-1`
-/

namespace A286583.P4466656524026178506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302045 (A003961 (n + 1) + 1).toNat - 1

end

end A286583.P4466656524026178506

namespace A286583

/-- `A302045(A003961(n+1)+1)-1` -/
def P4466656524026178506.Spec : Prop :=
  ∀ n, P4466656524026178506.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P7560097936250016014

`val(A283464(2*(n+1)), 2)`
-/

namespace A286583.P7560097936250016014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A283464 (2 * (n + 1))).toNat 2

end

end A286583.P7560097936250016014

namespace A286583

/-- `val(A283464(2*(n+1)), 2)` -/
def P7560097936250016014.Spec : Prop :=
  ∀ n, (P7560097936250016014.a n : ℤ) = A286583 (n + 1)

end A286583

/-! ## A286583.P16963341034454806839

`A007814(A243501(n+1)/2)`
-/

namespace A286583.P16963341034454806839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)).toNat

end

end A286583.P16963341034454806839

namespace A286583

/-- `A007814(A243501(n+1)/2)` -/
def P16963341034454806839.Spec : Prop :=
  ∀ n, P16963341034454806839.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P14180179675194599866

`A007814(A253885(n)/2+1)`
-/

namespace A286583.P14180179675194599866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A253885 n : ℚ) / 2 + 1)).toNat

end

end A286583.P14180179675194599866

namespace A286583

/-- `A007814(A253885(n)/2+1)` -/
def P14180179675194599866.Spec : Prop :=
  ∀ n, P14180179675194599866.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P8109447167518207706

`A007814((A003961(n+1)+1)/2)`
-/

namespace A286583.P8109447167518207706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A286583.P8109447167518207706

namespace A286583

/-- `A007814((A003961(n+1)+1)/2)` -/
def P8109447167518207706.Spec : Prop :=
  ∀ n, P8109447167518207706.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P310207323379508011

`A089309(A045965(n+1))-1`
-/

namespace A286583.P310207323379508011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A045965 (n + 1)).toNat - 1

end

end A286583.P310207323379508011

namespace A286583

/-- `A089309(A045965(n+1))-1` -/
def P310207323379508011.Spec : Prop :=
  ∀ n, P310207323379508011.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P336567036595831286

`A253786(A245447(n+1))`
-/

namespace A286583.P336567036595831286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (A245447 (n + 1)).toNat

end

end A286583.P336567036595831286

namespace A286583

/-- `A253786(A245447(n+1))` -/
def P336567036595831286.Spec : Prop :=
  ∀ n, P336567036595831286.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P16227000347204642205

`A253786(A048673(A048673(A048673(A064216(n+1)))))`
-/

namespace A286583.P16227000347204642205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253786 (A048673 (A048673 (A048673 (A064216 (n + 1)).toNat).toNat).toNat).toNat

end

end A286583.P16227000347204642205

namespace A286583

/-- `A253786(A048673(A048673(A048673(A064216(n+1)))))` -/
def P16227000347204642205.Spec : Prop :=
  ∀ n, P16227000347204642205.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P3040568144848048844

`val(A266646(2*(n+1)), 2)-1`
-/

namespace A286583.P3040568144848048844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A266646 (2 * (n + 1))).toNat 2 : ℤ) - 1

end

end A286583.P3040568144848048844

namespace A286583

/-- `val(A266646(2*(n+1)), 2)-1` -/
def P3040568144848048844.Spec : Prop :=
  ∀ n, P3040568144848048844.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P15307672205000002694

`A050605(A253885(n))`
-/

namespace A286583.P15307672205000002694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A253885 n).toNat

end

end A286583.P15307672205000002694

namespace A286583

/-- `A050605(A253885(n))` -/
def P15307672205000002694.Spec : Prop :=
  ∀ n, P15307672205000002694.a n = A286583 (n + 1)

end A286583

/-! ## A286583.P1048458852949671948

`A050605(A003961(n+1))`
-/

namespace A286583.P1048458852949671948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A003961 (n + 1)).toNat

end

end A286583.P1048458852949671948

namespace A286583

/-- `A050605(A003961(n+1))` -/
def P1048458852949671948.Spec : Prop :=
  ∀ n, P1048458852949671948.a n = A286583 (n + 1)

end A286583

/-!
# A286584: a(n) = A048673(n) mod 4.

The programs for A286584, the canonical program `A286584.P2368017140526794240` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286584 has offset 1).

The definition of A286584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286584.P2368017140526794240

`A048673(n+1)%4`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A286584

/-- `A048673(n+1)%4` -/
def P2368017140526794240.Spec : Prop :=
  ∀ n, P2368017140526794240.a n = A286584 (n + 1)

theorem P2368017140526794240.correct : P2368017140526794240.Spec := by
  intro n
  simp only [A286584, Nat.add_sub_cancel]

end A286584

/-! ## A286584.P4457130399883301691

`A010873(A048673(n+1))`
-/

namespace A286584.P4457130399883301691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A048673 (n + 1)).toNat

end

end A286584.P4457130399883301691

namespace A286584

/-- `A010873(A048673(n+1))` -/
def P4457130399883301691.Spec : Prop :=
  ∀ n, P4457130399883301691.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P654408431327029489

`(A243501(n+1)/2)%4`
-/

namespace A286584.P654408431327029489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A243501 (n + 1) : ℚ) / 2)) 4

end

end A286584.P654408431327029489

namespace A286584

/-- `(A243501(n+1)/2)%4` -/
def P654408431327029489.Spec : Prop :=
  ∀ n, P654408431327029489.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P4610361070373068841

`round(A003961(n+1)/2)%4`
-/

namespace A286584.P4610361070373068841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)) 4

end

end A286584.P4610361070373068841

namespace A286584

/-- `round(A003961(n+1)/2)%4` -/
def P4610361070373068841.Spec : Prop :=
  ∀ n, P4610361070373068841.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P7437511779927658205

`and(3, A048673(A000027(n+1)))`
-/

namespace A286584.P7437511779927658205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A048673 (A000027 (n + 1)).toNat)

end

end A286584.P7437511779927658205

namespace A286584

/-- `and(3, A048673(A000027(n+1)))` -/
def P7437511779927658205.Spec : Prop :=
  ∀ n, P7437511779927658205.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P11325752839449840450

`and(3, A048673(A007913(n+1)))`
-/

namespace A286584.P11325752839449840450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A048673 (A007913 (n + 1)).toNat)

end

end A286584.P11325752839449840450

namespace A286584

/-- `and(3, A048673(A007913(n+1)))` -/
def P11325752839449840450.Spec : Prop :=
  ∀ n, P11325752839449840450.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P13655410594746647441

`and(A048673(n+1), A122553(n))`
-/

namespace A286584.P13655410594746647441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048673 (n + 1)) (A122553 n)

end

end A286584.P13655410594746647441

namespace A286584

/-- `and(A048673(n+1), A122553(n))` -/
def P13655410594746647441.Spec : Prop :=
  ∀ n, P13655410594746647441.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P15317609551322090980

`and(A048673(n+1), A158799(n))`
-/

namespace A286584.P15317609551322090980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048673 (n + 1)) (A158799 n)

end

end A286584.P15317609551322090980

namespace A286584

/-- `and(A048673(n+1), A158799(n))` -/
def P15317609551322090980.Spec : Prop :=
  ∀ n, P15317609551322090980.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P11390302000777943572

`and(A048673(n+1), A171369(n+1))`
-/

namespace A286584.P11390302000777943572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048673 (n + 1)) (A171369 (n + 1))

end

end A286584.P11390302000777943572

namespace A286584

/-- `and(A048673(n+1), A171369(n+1))` -/
def P11390302000777943572.Spec : Prop :=
  ∀ n, P11390302000777943572.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P9465918652104012666

`(A337336(n+1)%A045965(n+1))%4`
-/

namespace A286584.P9465918652104012666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A337336 (n + 1)) (A045965 (n + 1))) 4

end

end A286584.P9465918652104012666

namespace A286584

/-- `(A337336(n+1)%A045965(n+1))%4` -/
def P9465918652104012666.Spec : Prop :=
  ∀ n, P9465918652104012666.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P3462214094121762585

`and(A048673(n+1), A157532(A328579(n)))`
-/

namespace A286584.P3462214094121762585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048673 (n + 1)) (A157532 (A328579 n).toNat)

end

end A286584.P3462214094121762585

namespace A286584

/-- `and(A048673(n+1), A157532(A328579(n)))` -/
def P3462214094121762585.Spec : Prop :=
  ∀ n, P3462214094121762585.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P10329311893476064517

`and(A048673(n+1), A166466(A006519(n+1)))`
-/

namespace A286584.P10329311893476064517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048673 (n + 1)) (A166466 (A006519 (n + 1)).toNat)

end

end A286584.P10329311893476064517

namespace A286584

/-- `and(A048673(n+1), A166466(A006519(n+1)))` -/
def P10329311893476064517.Spec : Prop :=
  ∀ n, P10329311893476064517.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P9665462903841214006

`and(A020639(A166466(n+1)), A048673(n+1))`
-/

namespace A286584.P9665462903841214006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A166466 (n + 1)).toNat) (A048673 (n + 1))

end

end A286584.P9665462903841214006

namespace A286584

/-- `and(A020639(A166466(n+1)), A048673(n+1))` -/
def P9665462903841214006.Spec : Prop :=
  ∀ n, P9665462903841214006.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P12614197542964165462

`and(A048673(n+1), A157532(n+2))`
-/

namespace A286584.P12614197542964165462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A048673 (n + 1)) (A157532 (n + 2))

end

end A286584.P12614197542964165462

namespace A286584

/-- `and(A048673(n+1), A157532(n+2))` -/
def P12614197542964165462.Spec : Prop :=
  ∀ n, P12614197542964165462.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P3533668379364787617

`and(3, A048673(A109588(3*n+1)))`
-/

namespace A286584.P3533668379364787617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A048673 (A109588 (3 * n + 1)).toNat)

end

end A286584.P3533668379364787617

namespace A286584

/-- `and(3, A048673(A109588(3*n+1)))` -/
def P3533668379364787617.Spec : Prop :=
  ∀ n, P3533668379364787617.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P5812899905821250223

`and(3, A048673(A004767(n)+1))`
-/

namespace A286584.P5812899905821250223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A048673 (A004767 n + 1).toNat)

end

end A286584.P5812899905821250223

namespace A286584

/-- `and(3, A048673(A004767(n)+1))` -/
def P5812899905821250223.Spec : Prop :=
  ∀ n, P5812899905821250223.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P16191049092719503467

`A249810(2*(n+1))%4`
-/

namespace A286584.P16191049092719503467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249810 (2 * (n + 1))) 4

end

end A286584.P16191049092719503467

namespace A286584

/-- `A249810(2*(n+1))%4` -/
def P16191049092719503467.Spec : Prop :=
  ∀ n, P16191049092719503467.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P3614847615443309024

`A353490(A003961(n+1)+1)`
-/

namespace A286584.P3614847615443309024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353490 (A003961 (n + 1) + 1).toNat

end

end A286584.P3614847615443309024

namespace A286584

/-- `A353490(A003961(n+1)+1)` -/
def P3614847615443309024.Spec : Prop :=
  ∀ n, P3614847615443309024.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P11716576978996525485

`A283464(2*(n+1))%4`
-/

namespace A286584.P11716576978996525485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283464 (2 * (n + 1))) 4

end

end A286584.P11716576978996525485

namespace A286584

/-- `A283464(2*(n+1))%4` -/
def P11716576978996525485.Spec : Prop :=
  ∀ n, P11716576978996525485.a n = A286584 (n + 1)

end A286584

/-! ## A286584.P15979443070677406688

`and(A020639(A003961(2*(n+1))), A048673(n+1))`
-/

namespace A286584.P15979443070677406688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A003961 (2 * (n + 1))).toNat) (A048673 (n + 1))

end

end A286584.P15979443070677406688

namespace A286584

/-- `and(A020639(A003961(2*(n+1))), A048673(n+1))` -/
def P15979443070677406688.Spec : Prop :=
  ∀ n, P15979443070677406688.a n = A286584 (n + 1)

end A286584

/-!
# A286585: a(n) = A053735(A048673(n)).

The programs for A286585, the canonical program `A286585.P13020909029626819781` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286585 has offset 1).

The definition of A286585 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286585.P13020909029626819781

`A053735(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A286585

/-- `A053735(A048673(n+1))` -/
def P13020909029626819781.Spec : Prop :=
  ∀ n, P13020909029626819781.a n = A286585 (n + 1)

theorem P13020909029626819781.correct : P13020909029626819781.Spec := by
  intro n
  simp only [A286585, Nat.add_sub_cancel]

end A286585

/-! ## A286585.P17533140272556190463

`A003313(A286586(n+1))`
-/

namespace A286585.P17533140272556190463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (A286586 (n + 1)).toNat

end

end A286585.P17533140272556190463

namespace A286585

/-- `A003313(A286586(n+1))` -/
def P17533140272556190463.Spec : Prop :=
  ∀ n, P17533140272556190463.a n = A286585 (n + 1)

end A286585

/-! ## A286585.P798483622615825828

`A340378(n+1)+2*A340379(n+1)`
-/

namespace A286585.P798483622615825828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340378 (n + 1) + 2 * A340379 (n + 1)

end

end A286585.P798483622615825828

namespace A286585

/-- `A340378(n+1)+2*A340379(n+1)` -/
def P798483622615825828.Spec : Prop :=
  ∀ n, P798483622615825828.a n = A286585 (n + 1)

end A286585

/-! ## A286585.P2440862449325855590

`A000120(A304759(n+1))+2*A340379(n+1)`
-/

namespace A286585.P2440862449325855590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A304759 (n + 1)).toNat + 2 * A340379 (n + 1)

end

end A286585.P2440862449325855590

namespace A286585

/-- `A000120(A304759(n+1))+2*A340379(n+1)` -/
def P2440862449325855590.Spec : Prop :=
  ∀ n, P2440862449325855590.a n = A286585 (n + 1)

end A286585

/-! ## A286585.P4612504028412916861

`A056239(A286586(n+1)%A078371(n))`
-/

namespace A286585.P4612504028412916861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A286586 (n + 1)) (A078371 n)).toNat

end

end A286585.P4612504028412916861

namespace A286585

/-- `A056239(A286586(n+1)%A078371(n))` -/
def P4612504028412916861.Spec : Prop :=
  ∀ n, P4612504028412916861.a n = A286585 (n + 1)

end A286585

/-! ## A286585.P16901519969004440826

`A056239(A286586(n+1))%A130723(n)`
-/

namespace A286585.P16901519969004440826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056239 (A286586 (n + 1)).toNat) (A130723 n)

end

end A286585.P16901519969004440826

namespace A286585

/-- `A056239(A286586(n+1))%A130723(n)` -/
def P16901519969004440826.Spec : Prop :=
  ∀ n, P16901519969004440826.a n = A286585 (n + 1)

end A286585

/-! ## A286585.P4999592004539624288

`A053735((A003961(n+1)+1)/2)`
-/

namespace A286585.P4999592004539624288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A286585.P4999592004539624288

namespace A286585

/-- `A053735((A003961(n+1)+1)/2)` -/
def P4999592004539624288.Spec : Prop :=
  ∀ n, P4999592004539624288.a n = A286585 (n + 1)

end A286585

/-! ## A286585.P14184753622137123860

`A062756(A048673(n+1))+2*A340379(n+1)`
-/

namespace A286585.P14184753622137123860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A048673 (n + 1)).toNat + 2 * A340379 (n + 1)

end

end A286585.P14184753622137123860

namespace A286585

/-- `A062756(A048673(n+1))+2*A340379(n+1)` -/
def P14184753622137123860.Spec : Prop :=
  ∀ n, P14184753622137123860.a n = A286585 (n + 1)

end A286585

/-! ## A286585.P3208291286620671732

`A286632(A254115(n+1))`
-/

namespace A286585.P3208291286620671732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286632 (A254115 (n + 1)).toNat

end

end A286585.P3208291286620671732

namespace A286585

/-- `A286632(A254115(n+1))` -/
def P3208291286620671732.Spec : Prop :=
  ∀ n, P3208291286620671732.a n = A286585 (n + 1)

end A286585

/-!
# A286586: a(n) = A006047(A048673(n)).

The programs for A286586, the canonical program `A286586.P14883220154274821023` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286586 has offset 1).

The definition of A286586 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A048673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286586.P14883220154274821023

`A006047(A048673(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A286586

/-- `A006047(A048673(n+1))` -/
def P14883220154274821023.Spec : Prop :=
  ∀ n, P14883220154274821023.a n = A286586 (n + 1)

theorem P14883220154274821023.correct : P14883220154274821023.Spec := by
  intro n
  simp only [A286586, Nat.add_sub_cancel]

end A286586

/-! ## A286586.P13188408246903584288

`A006047(round(A003961(n+1)/2))`
-/

namespace A286586.P13188408246903584288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) / 2)).toNat

end

end A286586.P13188408246903584288

namespace A286586

/-- `A006047(round(A003961(n+1)/2))` -/
def P13188408246903584288.Spec : Prop :=
  ∀ n, P13188408246903584288.a n = A286586 (n + 1)

end A286586

/-! ## A286586.P13449219533690339117

`A006047((A003961(n+1)+1)/2)`
-/

namespace A286586.P13449219533690339117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (SequenceMachineLib.roundAway ((A003961 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A286586.P13449219533690339117

namespace A286586

/-- `A006047((A003961(n+1)+1)/2)` -/
def P13449219533690339117.Spec : Prop :=
  ∀ n, P13449219533690339117.a n = A286586 (n + 1)

end A286586

/-! ## A286586.P17784461887647283682

`A006047(A349573(n+1)+1+n)`
-/

namespace A286586.P17784461887647283682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A349573 (n + 1) + 1 + (n : ℤ)).toNat

end

end A286586.P17784461887647283682

namespace A286586

/-- `A006047(A349573(n+1)+1+n)` -/
def P17784461887647283682.Spec : Prop :=
  ∀ n, P17784461887647283682.a n = A286586 (n + 1)

end A286586

/-! ## A286586.P16458387366542412673

`A006047(A003602(A003961(n+1)))`
-/

namespace A286586.P16458387366542412673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A003602 (A003961 (n + 1)).toNat).toNat

end

end A286586.P16458387366542412673

namespace A286586

/-- `A006047(A003602(A003961(n+1)))` -/
def P16458387366542412673.Spec : Prop :=
  ∀ n, P16458387366542412673.a n = A286586 (n + 1)

end A286586

/-! ## A286586.P3098292427310467697

`A006047(A003602(A243500(A243502(n+1))))`
-/

namespace A286586.P3098292427310467697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A003602 (A243500 (A243502 (n + 1)).toNat).toNat).toNat

end

end A286586.P3098292427310467697

namespace A286586

/-- `A006047(A003602(A243500(A243502(n+1))))` -/
def P3098292427310467697.Spec : Prop :=
  ∀ n, P3098292427310467697.a n = A286586 (n + 1)

end A286586

/-! ## A286586.P10944996231184249552

`A286633(A254115(n+1))`
-/

namespace A286586.P10944996231184249552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286633 (A254115 (n + 1)).toNat

end

end A286586.P10944996231184249552

namespace A286586

/-- `A286633(A254115(n+1))` -/
def P10944996231184249552.Spec : Prop :=
  ∀ n, P10944996231184249552.a n = A286586 (n + 1)

end A286586

/-!
# A286587: a(n) = A006047(A244154(n)).

The programs for A286587, the canonical program `A286587.P14335713023111587869` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286587 has offset 0).

The definition of A286587 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006047, A244154, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286587.P16915446838404433653

`A286586(A005940(1+n))`
-/

namespace A286587.P16915446838404433653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286586 (A005940 (1 + n)).toNat

end

end A286587.P16915446838404433653

namespace A286587

/-- `A286586(A005940(1+n))` -/
def P16915446838404433653.Spec : Prop :=
  ∀ n, P16915446838404433653.a n = A286587 n

end A286587

/-! ## A286587.P14335713023111587869

`A006047(A244154(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A286587

/-- `A006047(A244154(n))` -/
def P14335713023111587869.Spec : Prop :=
  ∀ n, P14335713023111587869.a n = A286587 n

theorem P14335713023111587869.correct : P14335713023111587869.Spec := by
  intro n
  simp only [A286587]

end A286587

/-! ## A286587.P4364585497378670360

`A286586(A324394(n)*A324395(n))`
-/

namespace A286587.P4364585497378670360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286586 (A324394 n * A324395 n).toNat

end

end A286587.P4364585497378670360

namespace A286587

/-- `A286586(A324394(n)*A324395(n))` -/
def P4364585497378670360.Spec : Prop :=
  ∀ n, P4364585497378670360.a n = A286587 n

end A286587

/-! ## A286587.P11741925003779907228

`A286586(A337375(n)*A337376(n))`
-/

namespace A286587.P11741925003779907228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286586 (A337375 n * A337376 n).toNat

end

end A286587.P11741925003779907228

namespace A286587

/-- `A286586(A337375(n)*A337376(n))` -/
def P11741925003779907228.Spec : Prop :=
  ∀ n, P11741925003779907228.a n = A286587 n

end A286587

/-! ## A286587.P9973791783940986937

`A286586(A324641(n+1)-A324640(n+1))`
-/

namespace A286587.P9973791783940986937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286586 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A286587.P9973791783940986937

namespace A286587

/-- `A286586(A324641(n+1)-A324640(n+1))` -/
def P9973791783940986937.Spec : Prop :=
  ∀ n, P9973791783940986937.a n = A286587 n

end A286587

/-! ## A286587.P3804422220405579779

`A286586(A340364(n+1)*A340365(n+1))`
-/

namespace A286587.P3804422220405579779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286586 (A340364 (n + 1) * A340365 (n + 1)).toNat

end

end A286587.P3804422220405579779

namespace A286587

/-- `A286586(A340364(n+1)*A340365(n+1))` -/
def P3804422220405579779.Spec : Prop :=
  ∀ n, P3804422220405579779.a n = A286587 n

end A286587

/-! ## A286587.P5734216082787743712

`A006047(ceil(A005940(2*n+1)/2))`
-/

namespace A286587.P5734216082787743712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 ⌈(A005940 (2 * n + 1) : ℚ) / 2⌉.toNat

end

end A286587.P5734216082787743712

namespace A286587

/-- `A006047(ceil(A005940(2*n+1)/2))` -/
def P5734216082787743712.Spec : Prop :=
  ∀ n, P5734216082787743712.a n = A286587 n

end A286587

/-! ## A286587.P4701533168220007680

`A006047(A003602(A005940(2*n+1)))`
-/

namespace A286587.P4701533168220007680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006047 (A003602 (A005940 (2 * n + 1)).toNat).toNat

end

end A286587.P4701533168220007680

namespace A286587

/-- `A006047(A003602(A005940(2*n+1)))` -/
def P4701533168220007680.Spec : Prop :=
  ∀ n, P4701533168220007680.a n = A286587 n

end A286587

/-!
# A286588: a(n) = A278222(A246200(n)).

The programs for A286588, the canonical program `A286588.P7668837531051019709` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286588 has offset 0).

The definition of A286588 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A246200, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286588.P7668837531051019709

`A278222(A246200(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286588

/-- `A278222(A246200(n))` -/
def P7668837531051019709.Spec : Prop :=
  ∀ n, P7668837531051019709.a n = A286588 n

theorem P7668837531051019709.correct : P7668837531051019709.Spec := by
  intro n
  simp only [A286588]

end A286588

/-! ## A286588.P11720286951832210043

`A278222(xor(A003188(3*n), A004526(n)))`
-/

namespace A286588.P11720286951832210043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (Int.xor (A003188 (3 * n)) (A004526 n)).toNat

end

end A286588.P11720286951832210043

namespace A286588

/-- `A278222(xor(A003188(3*n), A004526(n)))` -/
def P11720286951832210043.Spec : Prop :=
  ∀ n, P11720286951832210043.a n = A286588 n

end A286588

/-! ## A286588.P3175632383297099664

`A278222(A057889(3*n)/3)`
-/

namespace A286588.P3175632383297099664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (SequenceMachineLib.roundAway ((A057889 (3 * n) : ℚ) / 3)).toNat

end

end A286588.P3175632383297099664

namespace A286588

/-- `A278222(A057889(3*n)/3)` -/
def P3175632383297099664.Spec : Prop :=
  ∀ n, P3175632383297099664.a n = A286588 n

end A286588

/-! ## A286588.P8671784784209646231

`A278222(A030101(3*n)/3)`
-/

namespace A286588.P8671784784209646231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (SequenceMachineLib.roundAway ((A030101 (3 * n) : ℚ) / 3)).toNat

end

end A286588.P8671784784209646231

namespace A286588

/-- `A278222(A030101(3*n)/3)` -/
def P8671784784209646231.Spec : Prop :=
  ∀ n, P8671784784209646231.a n = A286588 n

end A286588

/-! ## A286588.P16908126798740609599

`∏{e}[A278159(A246200(n)), A002110(#)]`
-/

namespace A286588.P16908126798740609599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278159 (A246200 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A002110 (Nat.factorization (f1 n).natAbs p)

end

end A286588.P16908126798740609599

namespace A286588

/-- `∏{e}[A278159(A246200(n)), A002110(#)]` -/
def P16908126798740609599.Spec : Prop :=
  ∀ n, P16908126798740609599.a n = A286588 n

end A286588

/-!
# A286589: Restricted growth sequence transform of A286588.

The programs for A286589, there is no canonical definition to state claims against.
-/

/-! ## A286589.P7495966590495926617

`A286622(n)+A129184(A055932(3*n+1))`
-/

namespace A286589.P7495966590495926617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286622 n + A129184 (A055932 (3 * n + 1)).toNat

end

end A286589.P7495966590495926617

/-! ## A286589.P903097993932743758

`A246029(A046644(n+1)*A246200(n))`
-/

namespace A286589.P903097993932743758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A046644 (n + 1) * A246200 n).toNat

end

end A286589.P903097993932743758

/-! ## A286589.P9942237472735607809

`A181819(A286588(n)%A058332(n+1))`
-/

namespace A286589.P9942237472735607809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (Int.tmod (A286588 n) (A058332 (n + 1))).toNat

end

end A286589.P9942237472735607809

/-! ## A286589.P10212424225916952710

`A246029(A246200(n)%A058332(n+1))`
-/

namespace A286589.P10212424225916952710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (Int.tmod (A246200 n) (A058332 (n + 1))).toNat

end

end A286589.P10212424225916952710

/-! ## A286589.P15996540407176951540

`A181819(A286588(n))%A088365(n+1)`
-/

namespace A286589.P15996540407176951540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (A286588 n).toNat) (A088365 (n + 1))

end

end A286589.P15996540407176951540

/-!
# A286590: Numbers that are divisible by the product of their factorial base digits (A208575).

The programs for A286590, there is no canonical definition to state claims against.
-/

/-! ## A286590.P6975225921093254491

`eq[gcd(n, A208575(n)), A227153(n)]`
-/

namespace A286590.P6975225921093254491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A208575 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A286590.P6975225921093254491

/-! ## A286590.P16281953319673581922

`A351894(lt[2*a(n-1), A102377(n)])` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=3`
-/

namespace A286590.P16281953319673581922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0, 1, 0, 1, 3] fun n f1 =>
  2 * f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351894 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A286590.P16281953319673581922

/-! ## A286590.P13946733531918226006

`A351894(lt[A351869(n), A102377(n)])`
-/

namespace A286590.P13946733531918226006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351869 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351894 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286590.P13946733531918226006

/-! ## A286590.P12434990307031877204

`A351894(lt[A099947(n), A097756(n+1)])`
-/

namespace A286590.P12434990307031877204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099947 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351894 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286590.P12434990307031877204

/-! ## A286590.P10967722195040764052

`A351894(A033948(n+1)%A002230(3*n+5))`
-/

namespace A286590.P10967722195040764052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351894 (Int.tmod (A033948 (n + 1)) (A002230 (3 * n + 5))).toNat

end

end A286590.P10967722195040764052

/-!
# A286591: Compound filter: a(n) = P(A009191(n), A009194(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286591, the canonical program `A286591.P10026777462163410462` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286591 has offset 1).

The definition of A286591 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009191, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286591.P10026777462163410462

`1/2*(2+(A009191(n+1)+A009194(n+1))²-A009191(n+1)-3*A009194(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A286591

/-- `1/2*(2+(A009191(n+1)+A009194(n+1))²-A009191(n+1)-3*A009194(n+1))` -/
def P10026777462163410462.Spec : Prop :=
  ∀ n, P10026777462163410462.a n = (A286591 (n + 1) : ℚ)

end A286591

/-!
# A286592: Compound filter (prime signature & deficiency/abundance): a(n) = P(A046523(n), A286449(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286592, there is no canonical definition to state claims against.
-/

/-! ## A286592.P18167915073559628643

`1/2*(2+(A046523(n+1)+A286449(n+1))²-A046523(n+1)-3*A286449(n+1))`
-/

namespace A286592.P18167915073559628643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A046523 (n + 1) + A286449 (n + 1)) ^ 2 - A046523 (n + 1) - 3 * A286449 (n + 1) : ℚ)

end

end A286592.P18167915073559628643

/-!
# A286593: Compound filter (the length of rightmost run of 1's in base-2 & deficiency/abundance): a(n) = P(A089309(n), A286449(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286593, there is no canonical definition to state claims against.
-/

/-! ## A286593.P4497537344045688174

`1/2*(2+(A089309(n+1)+A286449(n+1))²-A089309(n+1)-3*A286449(n+1))`
-/

namespace A286593.P4497537344045688174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A089309 (n + 1) + A286449 (n + 1)) ^ 2 - A089309 (n + 1) - 3 * A286449 (n + 1) : ℚ)

end

end A286593.P4497537344045688174

/-!
# A286594: a(n) = number of steps in simple Euclidean algorithm for gcd(n,k) to reach the termination test n=k when starting with n = n and k = A000203(n).

The programs for A286594, there is no canonical definition to state claims against.
-/

/-! ## A286594.P4126966848635931757

`n+1-A300237(n+1)`
-/

namespace A286594.P4126966848635931757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A300237 (n + 1)

end

end A286594.P4126966848635931757

/-! ## A286594.P12648263388178526550

`A024000(A300237(n+1))+n`
-/

namespace A286594.P12648263388178526550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A300237 (n + 1)).toNat + (n : ℤ)

end

end A286594.P12648263388178526550

/-! ## A286594.P4052953372717676537

`abs(A300237(n+1)+A001478(n+1))`
-/

namespace A286594.P4052953372717676537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A300237 (n + 1) + A001478 (n + 1)|

end

end A286594.P4052953372717676537

/-! ## A286594.P4491450014907143261

`A000096(n+1)%(A300237(n+1)+∑[n+1])`
-/

namespace A286594.P4491450014907143261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (n + 1)) (A300237 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A286594.P4491450014907143261

/-!
# A286595: Compound filter (2-adic valuation & deficiency/abundance): a(n) = P(A001511(n), A286449(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A286595, there is no canonical definition to state claims against.
-/

/-! ## A286595.P10691342618517100291

`1/2*(2+(A001511(n+1)+A286449(n+1))²-A001511(n+1)-3*A286449(n+1))`
-/

namespace A286595.P10691342618517100291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A001511 (n + 1) + A286449 (n + 1)) ^ 2 - A001511 (n + 1) - 3 * A286449 (n + 1) : ℚ)

end

end A286595.P10691342618517100291

/-!
# A286596: a(n) = A278222(A153141(n)).

The programs for A286596, the canonical program `A286596.P8578351790171259631` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286596 has offset 0).

The definition of A286596 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153141, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286596.P8578351790171259631

`A278222(A153141(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286596

/-- `A278222(A153141(n))` -/
def P8578351790171259631.Spec : Prop :=
  ∀ n, P8578351790171259631.a n = A286596 n

theorem P8578351790171259631.correct : P8578351790171259631.Spec := by
  intro n
  simp only [A286596]

end A286596

/-! ## A286596.P16282133233055906659

`A286598(A153141(A153141(A153141(A153142(n)))))`
-/

namespace A286596.P16282133233055906659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A153141 (A153141 (A153141 (A153142 n).toNat).toNat).toNat).toNat

end

end A286596.P16282133233055906659

namespace A286596

/-- `A286598(A153141(A153141(A153141(A153142(n)))))` -/
def P16282133233055906659.Spec : Prop :=
  ∀ n, P16282133233055906659.a n = A286596 n

end A286596

/-! ## A286596.P13524473723400343652

`A286598(A154442(A154443(A154442(A154443(n)))))`
-/

namespace A286596.P13524473723400343652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A154442 (A154443 (A154442 (A154443 n).toNat).toNat).toNat).toNat

end

end A286596.P13524473723400343652

namespace A286596

/-- `A286598(A154442(A154443(A154442(A154443(n)))))` -/
def P13524473723400343652.Spec : Prop :=
  ∀ n, P13524473723400343652.a n = A286596 n

end A286596

/-! ## A286596.P1388057182396372849

`A286598(A153141(2*A153141(n)))`
-/

namespace A286596.P1388057182396372849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A153141 (2 * A153141 n).toNat).toNat

end

end A286596.P1388057182396372849

namespace A286596

/-- `A286598(A153141(2*A153141(n)))` -/
def P1388057182396372849.Spec : Prop :=
  ∀ n, P1388057182396372849.a n = A286596 n

end A286596

/-! ## A286596.P14640577580937102796

`A286598(A153141(lcm(2, A153141(n))))`
-/

namespace A286596.P14640577580937102796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A153141 (Int.lcm 2 (A153141 n))).toNat

end

end A286596.P14640577580937102796

namespace A286596

/-- `A286598(A153141(lcm(2, A153141(n))))` -/
def P14640577580937102796.Spec : Prop :=
  ∀ n, P14640577580937102796.a n = A286596 n

end A286596

/-! ## A286596.P10972132202310231258

`A286598(A153141(A153141(n)%A000079(n)))`
-/

namespace A286596.P10972132202310231258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286598 (A153141 (Int.tmod (A153141 n) (A000079 n)).toNat).toNat

end

end A286596.P10972132202310231258

namespace A286596

/-- `A286598(A153141(A153141(n)%A000079(n)))` -/
def P10972132202310231258.Spec : Prop :=
  ∀ n, P10972132202310231258.a n = A286596 n

end A286596

/-!
# A286597: Restricted growth sequence transform of A286596.

The programs for A286597, there is no canonical definition to state claims against.
-/

/-! ## A286597.P3874348340697863045

`A325239(lt[A325099(n), A064413(n+1)])`
-/

namespace A286597.P3874348340697863045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325099 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064413 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325239 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A286597.P3874348340697863045

/-!
# A286598: a(n) = A278222(A153142(n)).

The programs for A286598, the canonical program `A286598.P16413157530445033126` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A286598 has offset 0).

The definition of A286598 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153142, A278222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A286598.P16413157530445033126

`A278222(A153142(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A286598

/-- `A278222(A153142(n))` -/
def P16413157530445033126.Spec : Prop :=
  ∀ n, P16413157530445033126.a n = A286598 n

theorem P16413157530445033126.correct : P16413157530445033126.Spec := by
  intro n
  simp only [A286598]

end A286598

/-! ## A286598.P7899130639563912746

`A278531(A381852(n))`
-/

namespace A286598.P7899130639563912746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A381852 n).toNat

end

end A286598.P7899130639563912746

namespace A286598

/-- `A278531(A381852(n))` -/
def P7899130639563912746.Spec : Prop :=
  ∀ n, P7899130639563912746.a n = A286598 n

end A286598

/-! ## A286598.P6031955674802017977

`A278535(A145342(n+1)%A008574(n))`
-/

namespace A286598.P6031955674802017977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278535 (Int.tmod (A145342 (n + 1)) (A008574 n)).toNat

end

end A286598.P6031955674802017977

namespace A286598

/-- `A278535(A145342(n+1)%A008574(n))` -/
def P6031955674802017977.Spec : Prop :=
  ∀ n, P6031955674802017977.a n = A286598 n

end A286598

/-! ## A286598.P8471932731287023593

`A286596(A153142(A153142(A153142(A153141(n)))))`
-/

namespace A286598.P8471932731287023593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (A153142 (A153142 (A153142 (A153141 n).toNat).toNat).toNat).toNat

end

end A286598.P8471932731287023593

namespace A286598

/-- `A286596(A153142(A153142(A153142(A153141(n)))))` -/
def P8471932731287023593.Spec : Prop :=
  ∀ n, P8471932731287023593.a n = A286598 n

end A286598

/-! ## A286598.P11461523486535925743

`A286596(A153142(lcm(2, A153142(n))))`
-/

namespace A286598.P11461523486535925743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (A153142 (Int.lcm 2 (A153142 n))).toNat

end

end A286598.P11461523486535925743

namespace A286598

/-- `A286596(A153142(lcm(2, A153142(n))))` -/
def P11461523486535925743.Spec : Prop :=
  ∀ n, P11461523486535925743.a n = A286598 n

end A286598

/-! ## A286598.P12554672423941036399

`A286596(A153142(2*A153142(n)))`
-/

namespace A286598.P12554672423941036399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (A153142 (2 * A153142 n).toNat).toNat

end

end A286598.P12554672423941036399

namespace A286598

/-- `A286596(A153142(2*A153142(n)))` -/
def P12554672423941036399.Spec : Prop :=
  ∀ n, P12554672423941036399.a n = A286598 n

end A286598

/-! ## A286598.P10315414498808236789

`A278222(A115352(n)+A053644(n))`
-/

namespace A286598.P10315414498808236789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 (A115352 n + A053644 n).toNat

end

end A286598.P10315414498808236789

namespace A286598

/-- `A278222(A115352(n)+A053644(n))` -/
def P10315414498808236789.Spec : Prop :=
  ∀ n, P10315414498808236789.a n = A286598 n

end A286598

/-! ## A286598.P7408320353164115369

`A278531(A003817(n)-A115352(n))`
-/

namespace A286598.P7408320353164115369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A003817 n - A115352 n).toNat

end

end A286598.P7408320353164115369

namespace A286598

/-- `A278531(A003817(n)-A115352(n))` -/
def P7408320353164115369.Spec : Prop :=
  ∀ n, P7408320353164115369.a n = A286598 n

end A286598

/-! ## A286598.P2639316487267728946

`A286596(A153142(A153142(n)%A000079(n)))`
-/

namespace A286598.P2639316487267728946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (A153142 (Int.tmod (A153142 n) (A000079 n)).toNat).toNat

end

end A286598.P2639316487267728946

namespace A286598

/-- `A286596(A153142(A153142(n)%A000079(n)))` -/
def P2639316487267728946.Spec : Prop :=
  ∀ n, P2639316487267728946.a n = A286598 n

end A286598

/-!
# A286599: Restricted growth sequence transform of A286598.

The programs for A286599, there is no canonical definition to state claims against.
-/

/-! ## A286599.P1143801863760023985

`A117384(A076034(A286598(n)))`
-/

namespace A286599.P1143801863760023985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (A076034 (A286598 n).toNat).toNat

end

end A286599.P1143801863760023985

