import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C016
import Seq.B000.C018
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
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
# A198200: G.f.: q-cosh(x,q)^2 - q-sinh(x,q)^2 at q=-x.

The programs for A198200, there is no canonical definition to state claims against.
-/

/-! ## A198200.P2672048709622273503

`Δ[A003056(A317974(n+1))]`
-/

namespace A198200.P2672048709622273503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A317974 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A198200.P2672048709622273503

/-! ## A198200.P67560597472065128

`ceil(sqrt(A319779(n+1)+A319756(n)))`
-/

namespace A198200.P67560597472065128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A319779 (n + 1) + A319756 n : ℝ)⌉

end

end A198200.P67560597472065128

/-! ## A198200.P11313253456657933823

`A350174(A023416(n)+A000108(n))`
-/

namespace A198200.P11313253456657933823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A023416 n + A000108 n).toNat

end

end A198200.P11313253456657933823

/-! ## A198200.P15784628217421869424

`A350174(A353846(n)+A000108(n))`
-/

namespace A198200.P15784628217421869424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350174 (A353846 n + A000108 n).toNat

end

end A198200.P15784628217421869424

/-! ## A198200.P16840689431672826393

`A317536(A062399(n+1))+A317536(n)`
-/

namespace A198200.P16840689431672826393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317536 (A062399 (n + 1)).toNat + A317536 n

end

end A198200.P16840689431672826393

/-!
# A198202: G.f.: q-sinh(x) evaluated at q=-x.

The programs for A198202, there is no canonical definition to state claims against.
-/

/-! ## A198202.P5018750203030487976

`A238587(2*(n+1)-A285194(n²²))`
-/

namespace A198202.P5018750203030487976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238587 ((2 * (n + 1) : ℤ) - A285194 ((n ^ 2) ^ 2)).toNat

end

end A198202.P5018750203030487976

/-!
# A198203: G.f.: exp( Sum_{n>=0} [ Sum_{k=0..2*n} A027907(n,k)^n * x^k ]* x^n/n ), where A027907 is the triangle of trinomial coefficients.

The programs for A198203, there is no canonical definition to state claims against.
-/

/-! ## A198203.P12834843098895326660

`A030530(or(n, 2^C(n, 2)))`
-/

namespace A198203.P12834843098895326660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030530 (Nat.lor n (2 ^ Nat.choose n 2))

end

end A198203.P12834843098895326660

/-! ## A198203.P7543774463748182760

`A004437(A148428(n))`
-/

namespace A198203.P7543774463748182760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004437 (A148428 n).toNat

end

end A198203.P7543774463748182760

/-!
# A198204: Series reversion of (1 - t*x)*log(1 + x) with respect to x.

The programs for A198204, there is no canonical definition to state claims against.
-/

/-! ## A198204.P6617081563633278551

`A133399(A194061(n+1))`
-/

namespace A198204.P6617081563633278551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133399 (A194061 (n + 1)).toNat

end

end A198204.P6617081563633278551

/-! ## A198204.P9303166520233870348

`abs(A046899(n)*A163626(n))`
-/

namespace A198204.P9303166520233870348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046899 n * A163626 n|

end

end A198204.P9303166520233870348

/-! ## A198204.P12791498721754672340

`A133399(A056537(n+1)-1)`
-/

namespace A198204.P12791498721754672340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133399 (A056537 (n + 1) - 1).toNat

end

end A198204.P12791498721754672340

/-! ## A198204.P13332507129380397570

`A028246(n+1)*A046899(n)`
-/

namespace A198204.P13332507129380397570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A046899 n

end

end A198204.P13332507129380397570

/-! ## A198204.P3236926582003126107

`A028246(n+1)*A092392(A061579(n))`
-/

namespace A198204.P3236926582003126107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028246 (n + 1) * A092392 (A061579 n).toNat

end

end A198204.P3236926582003126107

/-!
# A198205: Number of 2nX2 0..3 arrays with values 0..3 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198205, there is no canonical definition to state claims against.
-/

/-! ## A198205.P17947769889771676098

`23*a(n-1)-103*a(n-2)+81*a(n-3)` with `a(0)=4, a(1)=43, a(2)=658`
-/

namespace A198205.P17947769889771676098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 43, 658] fun n a =>
  23 * a (n - 1) - 103 * a (n - 2) + 81 * a (n - 3)

end

end A198205.P17947769889771676098

/-! ## A198205.P15401503579254570261

`∑[3*A002534(2*n+1)]+1`
-/

namespace A198205.P15401503579254570261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002534 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A198205.P15401503579254570261

/-! ## A198205.P18103371833542239828

`A198209(∑[n]+1)`
-/

namespace A198205.P18103371833542239828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198209 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198205.P18103371833542239828

/-! ## A198205.P12408866147010463372

`record[A198209(A246276(n+1))]`
-/

namespace A198205.P12408866147010463372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198209 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198205.P12408866147010463372

/-! ## A198205.P9422376816795856445

`record[A198209(A257504(n+1))]`
-/

namespace A198205.P9422376816795856445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198209 (A257504 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198205.P9422376816795856445

/-!
# A198206: Number of 2nX4 0..3 arrays with values 0..3 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198206, there is no canonical definition to state claims against.
-/

/-! ## A198206.P17403235836173540084

`A198209(∑[n+1]+2)`
-/

namespace A198206.P17403235836173540084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198209 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198206.P17403235836173540084

/-! ## A198206.P457419814728028972

`record[A198209(A257504(n+1)+1)]`
-/

namespace A198206.P457419814728028972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198209 (A257504 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198206.P457419814728028972

/-! ## A198206.P11024504095296601245

`record[A010054(n)*A198209(n+2)]`
-/

namespace A198206.P11024504095296601245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A198209 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198206.P11024504095296601245

/-! ## A198206.P6705773653897341227

`record[gcd(A025581(n), A198209(n+3))]`
-/

namespace A198206.P6705773653897341227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A198209 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198206.P6705773653897341227

/-!
# A198207: Number of 2nX6 0..3 arrays with values 0..3 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198207, there is no canonical definition to state claims against.
-/

/-! ## A198207.P3071161233323028146

`A198209(∑[n+2]+4)`
-/

namespace A198207.P3071161233323028146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198209 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198207.P3071161233323028146

/-! ## A198207.P14596859743325941794

`or(char[1], A198209(A167614(n+1)))`
-/

namespace A198207.P14596859743325941794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A198209 (A167614 (n + 1)).toNat)

end

end A198207.P14596859743325941794

/-! ## A198207.P8911331968097529337

`A198209(A167614(n+1))+A025438(n)`
-/

namespace A198207.P8911331968097529337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198209 (A167614 (n + 1)).toNat + A025438 n

end

end A198207.P8911331968097529337

/-!
# A198208: Number of 2nX8 0..3 arrays with values 0..3 introduced in row major order and each element unequal to exactly two horizontal and vertical neighbors.

The programs for A198208, there is no canonical definition to state claims against.
-/

/-! ## A198208.P9500433447441120097

`A198209(A020752(n+1))`
-/

namespace A198208.P9500433447441120097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198209 (A020752 (n + 1)).toNat

end

end A198208.P9500433447441120097

/-!
# A198243: G.f.: q-Sinh(x) evaluated at q=-x.

The programs for A198243, there is no canonical definition to state claims against.
-/

/-! ## A198243.P2855841106523375715

`A198197(n+1)-A198242(n+1)`
-/

namespace A198243.P2855841106523375715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198197 (n + 1) - A198242 (n + 1)

end

end A198243.P2855841106523375715

/-!
# A198244: 

The programs for A198244, there is no canonical definition to state claims against.
-/

/-! ## A198244.P8267314786717687176

`A060885(A308238(n+1))`
-/

namespace A198244.P8267314786717687176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060885 (A308238 (n + 1)).toNat

end

end A198244.P8267314786717687176

/-!
# A198246: Number of 2nX2n 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198246, there is no canonical definition to state claims against.
-/

/-! ## A198246.P10430769493799310903

`A198253(∑[4*n]+1)`
-/

namespace A198246.P10430769493799310903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198246.P10430769493799310903

/-!
# A198247: Number of 2n X 4 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198247, there is no canonical definition to state claims against.
-/

/-! ## A198247.P17323712158537148368

`A198253(∑[n+1]+2)`
-/

namespace A198247.P17323712158537148368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198247.P17323712158537148368

/-! ## A198247.P2534405617969876788

`record[A010054(n)*A198253(n+2)]`
-/

namespace A198247.P2534405617969876788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A198253 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198247.P2534405617969876788

/-! ## A198247.P4524665841637147728

`record[gcd(A097230(n), A198253(n+1))]`
-/

namespace A198247.P4524665841637147728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097230 n) (A198253 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198247.P4524665841637147728

/-! ## A198247.P16622584463506376845

`record[gcd(A198253(n+2), A339033(n))]`
-/

namespace A198247.P16622584463506376845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A198253 (n + 2)) (A339033 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198247.P16622584463506376845

/-! ## A198247.P935166769786377828

`record[A198253(∑[A152271(n)])]`
-/

namespace A198247.P935166769786377828
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198247.P935166769786377828

/-!
# A198248: Number of 2nX6 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198248, there is no canonical definition to state claims against.
-/

/-! ## A198248.P4796281203871689577

`A198253(∑[n+2]+4)`
-/

namespace A198248.P4796281203871689577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198248.P4796281203871689577

/-! ## A198248.P14904673271172894077

`record[A198253(A237519(n+1)+5)]`
-/

namespace A198248.P14904673271172894077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A237519 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198248.P14904673271172894077

/-! ## A198248.P13367586901114691369

`A198253(A167614(n+1))+A102683(n)`
-/

namespace A198248.P13367586901114691369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A167614 (n + 1)).toNat + A102683 n

end

end A198248.P13367586901114691369

/-! ## A198248.P9495814804005900772

`A198253(A167614(n+1))+A151949(n)`
-/

namespace A198248.P9495814804005900772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A167614 (n + 1)).toNat + A151949 n

end

end A198248.P9495814804005900772

/-! ## A198248.P10014074685827948068

`A198253(A167614(n+1))+A178798(n)`
-/

namespace A198248.P10014074685827948068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A167614 (n + 1)).toNat + A178798 n

end

end A198248.P10014074685827948068

/-!
# A198249: Number of 2nX8 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198249, there is no canonical definition to state claims against.
-/

/-! ## A198249.P5279984929501477055

`A198253(∑[n+3]+7)`
-/

namespace A198249.P5279984929501477055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198249.P5279984929501477055

/-! ## A198249.P2168444179329876544

`record[A198253(n+5)^A132382(n)]`
-/

namespace A198249.P2168444179329876544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198253 (n + 5) : ℚ) ^ (A132382 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198249.P2168444179329876544

/-!
# A198250: Number of 2nX10 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198250, there is no canonical definition to state claims against.
-/

/-! ## A198250.P6169060797691027015

`A198253(A374005(n+1))`
-/

namespace A198250.P6169060797691027015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A374005 (n + 1)).toNat

end

end A198250.P6169060797691027015

/-! ## A198250.P5435873246441169970

`A198253(A155212(n)+13)`
-/

namespace A198250.P5435873246441169970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A155212 n + 13).toNat

end

end A198250.P5435873246441169970

/-! ## A198250.P5805529840881909796

`A198253(A056000(n)+15)`
-/

namespace A198250.P5805529840881909796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A056000 n + 15).toNat

end

end A198250.P5805529840881909796

/-!
# A198251: Number of 2nX12 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198251, there is no canonical definition to state claims against.
-/

/-! ## A198251.P17726432212720970198

`A198253(A374007(n+1))`
-/

namespace A198251.P17726432212720970198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A374007 (n + 1)).toNat

end

end A198251.P17726432212720970198

/-!
# A198252: 

The programs for A198252, there is no canonical definition to state claims against.
-/

/-! ## A198252.P3098532217835363953

`A198253(A000124(n+7)-7)`
-/

namespace A198252.P3098532217835363953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198253 (A000124 (n + 7) - 7).toNat

end

end A198252.P3098532217835363953

/-!
# A198253: T(n,k)=Number of 2nX2k 0..4 arrays with values 0..4 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198253, there is no canonical definition to state claims against.
-/

/-! ## A198253.P10100583386313272637

`A148320(A059036(n)^A010168(n))`
-/

namespace A198253.P10100583386313272637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148320 (SequenceMachineLib.roundAway ((A059036 n : ℚ) ^ (A010168 n : ℤ))).toNat

end

end A198253.P10100583386313272637

/-! ## A198253.P10909235902304472660

`A296516(A059036(n)^A010168(n))`
-/

namespace A198253.P10909235902304472660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296516 (SequenceMachineLib.roundAway ((A059036 n : ℚ) ^ (A010168 n : ℤ))).toNat

end

end A198253.P10909235902304472660

/-! ## A198253.P16187245771130868389

`A148320(A341520(n)^A010168(n))`
-/

namespace A198253.P16187245771130868389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148320 (SequenceMachineLib.roundAway ((A341520 n : ℚ) ^ (A010168 n : ℤ))).toNat

end

end A198253.P16187245771130868389

/-! ## A198253.P11057093285437327513

`A296516(A341520(n)^A010168(n))`
-/

namespace A198253.P11057093285437327513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296516 (SequenceMachineLib.roundAway ((A341520 n : ℚ) ^ (A010168 n : ℤ))).toNat

end

end A198253.P11057093285437327513

/-! ## A198253.P3287214252152815325

`A328389(A193379(n)+A007814(n+1))`
-/

namespace A198253.P3287214252152815325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328389 (A193379 n + A007814 (n + 1)).toNat

end

end A198253.P3287214252152815325

/-!
# A198254: Number of maximum-diversity partitions of n.

The programs for A198254, there is no canonical definition to state claims against.
-/

/-! ## A198254.P10618853759530703097

`A299090(∑[A111094(A322828(n+1))])`
-/

namespace A198254.P10618853759530703097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111094 (A322828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299090 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A198254.P10618853759530703097

/-! ## A198254.P15603970725211324453

`A363486(A375907(n+1)^A375932(n+1))`
-/

namespace A198254.P15603970725211324453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363486 (SequenceMachineLib.roundAway ((A375907 (n + 1) : ℚ) ^ (A375932 (n + 1) : ℤ))).toNat

end

end A198254.P15603970725211324453

/-! ## A198254.P15639018246300382706

`gcd(6, gcd(A187276(n+1), A213214(n+1)))`
-/

namespace A198254.P15639018246300382706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (Int.gcd (A187276 (n + 1)) (A213214 (n + 1)))

end

end A198254.P15639018246300382706

/-! ## A198254.P15275605254694328899

`A357135(A059095(3*n+5)+A000040(n+1))`
-/

namespace A198254.P15275605254694328899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357135 (A059095 (3 * n + 5) + A000040 (n + 1)).toNat

end

end A198254.P15275605254694328899

/-! ## A198254.P3981058266692564755

`A357138(A374327(n+1)+A304894(n+1))`
-/

namespace A198254.P3981058266692564755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357138 (A374327 (n + 1) + A304894 (n + 1)).toNat

end

end A198254.P3981058266692564755

/-!
# A198255: Number of ways to write n as the sum of two coprime squarefree semiprimes.

The programs for A198255, there is no canonical definition to state claims against.
-/

/-! ## A198255.P17628180097795865155

`A145569(A197629(n+1)^A014963(n+2))`
-/

namespace A198255.P17628180097795865155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (SequenceMachineLib.roundAway ((A197629 (n + 1) : ℚ) ^ (A014963 (n + 2) : ℤ))).toNat

end

end A198255.P17628180097795865155

/-! ## A198255.P10204411113335559137

`A007733(A130321(n))*A145569(A197629(n+1))`
-/

namespace A198255.P10204411113335559137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A130321 n).toNat * A145569 (A197629 (n + 1)).toNat

end

end A198255.P10204411113335559137

/-! ## A198255.P4508191262155245762

`A145569(A197629(n+1))*A281273(A141701(n+1))`
-/

namespace A198255.P4508191262155245762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A197629 (n + 1)).toNat * A281273 (A141701 (n + 1)).toNat

end

end A198255.P4508191262155245762

/-! ## A198255.P14678406659472570883

`A145569(A197629(n+1))+A025469(A175099(n))`
-/

namespace A198255.P14678406659472570883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A197629 (n + 1)).toNat + A025469 (A175099 n).toNat

end

end A198255.P14678406659472570883

/-! ## A198255.P2260771410953721839

`A198954(A087475(n))+A145569(A197629(n+1))`
-/

namespace A198255.P2260771410953721839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 (A087475 n).toNat + A145569 (A197629 (n + 1)).toNat

end

end A198255.P2260771410953721839

/-! ## A198255.P7789909220169219901

`A145569(A197629(n+1))*A338027(A000290(n))`
-/

namespace A198255.P7789909220169219901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A197629 (n + 1)).toNat * A338027 (A000290 n).toNat

end

end A198255.P7789909220169219901

/-! ## A198255.P2242230319163982974

`A145569(A197629(n+1))+A000007(A160164(n+1))`
-/

namespace A198255.P2242230319163982974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A197629 (n + 1)).toNat + A000007 (A160164 (n + 1)).toNat

end

end A198255.P2242230319163982974

/-! ## A198255.P12593939950939875317

`A145569(A197629(n+1))*A338027((n+1)²)`
-/

namespace A198255.P12593939950939875317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A197629 (n + 1)).toNat * A338027 ((n + 1) ^ 2)

end

end A198255.P12593939950939875317

/-! ## A198255.P17067696387352892142

`A145569(A197629(n+1))+A000038(A078615(n+1))`
-/

namespace A198255.P17067696387352892142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A197629 (n + 1)).toNat + A000038 (A078615 (n + 1)).toNat

end

end A198255.P17067696387352892142

/-!
# A198256: Row sums of A197653.

The programs for A198256, there is no canonical definition to state claims against.
-/

/-! ## A198256.P9742099048273695584

`A198060(∑[n+4]+2)`
-/

namespace A198256.P9742099048273695584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198060 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198256.P9742099048273695584

/-! ## A198256.P6819040498521996061

`A102480(n)*A198060(A046691(n+2))`
-/

namespace A198256.P6819040498521996061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102480 n * A198060 (A046691 (n + 2)).toNat

end

end A198256.P6819040498521996061

/-! ## A198256.P9315943952103982085

`A198060(A046691(n+2))*A362824(n)`
-/

namespace A198256.P9315943952103982085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198060 (A046691 (n + 2)).toNat * A362824 n

end

end A198256.P9315943952103982085

/-!
# A198257: Row sums of A197654.

The programs for A198257, there is no canonical definition to state claims against.
-/

/-! ## A198257.P1014527129242459648

`A198060(2*n+∑[n+3]+7)`
-/

namespace A198257.P1014527129242459648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198060 (2 * n + (∑ j ∈ Finset.range (n + 1), f1 j + 7))

end

end A198257.P1014527129242459648

/-!
# A198258: Row sums of A197655.

The programs for A198258, there is no canonical definition to state claims against.
-/

/-! ## A198258.P16078455287376165327

`A198060(A055999(n+3))`
-/

namespace A198258.P16078455287376165327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198060 (A055999 (n + 3)).toNat

end

end A198258.P16078455287376165327

/-!
# A198260: Runs of 1s in binary strings corresponding to subgroups of nimber addition.

The programs for A198260, there is no canonical definition to state claims against.
-/

/-! ## A198260.P2544415684297294791

`A069010(A190939(n))`
-/

namespace A198260.P2544415684297294791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A190939 n).toNat

end

end A198260.P2544415684297294791

/-! ## A198260.P9549022513599782173

`A220694(A005105(n+1)-A351390(n+3))`
-/

namespace A198260.P9549022513599782173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220694 (A005105 (n + 1) - A351390 (n + 3)).toNat

end

end A198260.P9549022513599782173

/-! ## A198260.P969635608178707970

`A001221(A246479(3*(n+1))+A099053(n+1))`
-/

namespace A198260.P969635608178707970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A246479 (3 * (n + 1)) + A099053 (n + 1)).toNat

end

end A198260.P969635608178707970

/-!
# A198261: Triangular array read by rows T(n,k) is the number of simple labeled graphs on n nodes with exactly k isolated nodes, 0<=k<=n.

The programs for A198261, there is no canonical definition to state claims against.
-/

/-! ## A198261.P14308097241697627081

`A370319(A061579(n))`
-/

namespace A198261.P14308097241697627081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370319 (A061579 n).toNat

end

end A198261.P14308097241697627081

/-! ## A198261.P16563035999123974656

`A370319(A038722(n+1)-1)`
-/

namespace A198261.P16563035999123974656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370319 (A038722 (n + 1) - 1).toNat

end

end A198261.P16563035999123974656

/-! ## A198261.P13001356924427092616

`A006129(A025581(n))*A007318(n)`
-/

namespace A198261.P13001356924427092616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006129 (A025581 n).toNat * A007318 n

end

end A198261.P13001356924427092616

/-! ## A198261.P3467730363831034956

`sqrt(A008459(n))*A006129(A025660(n+1))`
-/

namespace A198261.P3467730363831034956
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A006129 (A025660 (n + 1)).toNat : ℝ)

end

end A198261.P3467730363831034956

/-! ## A198261.P5073220379691936309

`(A051597(n)-A051601(n))*A006129(A025581(n))`
-/

namespace A198261.P5073220379691936309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051597 n - A051601 n) * A006129 (A025581 n).toNat

end

end A198261.P5073220379691936309

/-!
# A198263: a(n) = ceiling(n*sqrt(8)).

The programs for A198263, the canonical program `A198263.P13140002609585373604` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198263 has offset 0).

The definition of A198263 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(8))` (program `A198263.P13140002609585373604`, by `A198263.P13140002609585373604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198263.P13140002609585373604

`ceil(n*sqrt(8))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198263

/-- `ceil(n*sqrt(8))` -/
def P13140002609585373604.Spec : Prop :=
  ∀ n, P13140002609585373604.a n = A198263 n

theorem P13140002609585373604.correct : P13140002609585373604.Spec := by
  intro n
  simp only [A198263]

end A198263

/-! ## A198263.P12360191710680316118

`floor(n*(acot(n)+sqrt(8)))`
-/

namespace A198263.P12360191710680316118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (n : ℝ) + Real.sqrt (8 : ℝ))⌋

end

end A198263.P12360191710680316118

namespace A198263

/-- `floor(n*(acot(n)+sqrt(8)))` -/
def P12360191710680316118.Spec : Prop :=
  ∀ n, P12360191710680316118.a n = A198263 n

end A198263

/-! ## A198263.P7181971611695335067

`A057427(n)+floor(2*n*sqrt(2))`
-/

namespace A198263.P7181971611695335067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ⌊(2 * n : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A198263.P7181971611695335067

namespace A198263

/-- `A057427(n)+floor(2*n*sqrt(2))` -/
def P7181971611695335067.Spec : Prop :=
  ∀ n, P7181971611695335067.a n = A198263 n

end A198263

/-! ## A198263.P14218049892527771739

`floor(n*sqrt(8))+1-A000007(n)`
-/

namespace A198263.P14218049892527771739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋ + 1 - A000007 n

end

end A198263.P14218049892527771739

namespace A198263

/-- `floor(n*sqrt(8))+1-A000007(n)` -/
def P14218049892527771739.Spec : Prop :=
  ∀ n, P14218049892527771739.a n = A198263 n

end A198263

/-! ## A198263.P9300942254380140240

`(floor(n*sqrt(8))+1)%A064987(n+1)`
-/

namespace A198263.P9300942254380140240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * Real.sqrt (8 : ℝ)⌋ + 1) (A064987 (n + 1))

end

end A198263.P9300942254380140240

namespace A198263

/-- `(floor(n*sqrt(8))+1)%A064987(n+1)` -/
def P9300942254380140240.Spec : Prop :=
  ∀ n, P9300942254380140240.a n = A198263 n

end A198263

/-! ## A198263.P5033798703682486542

`A195128(A049473(2*n))+n`
-/

namespace A198263.P5033798703682486542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195128 (A049473 (2 * n)).toNat + (n : ℤ)

end

end A198263.P5033798703682486542

namespace A198263

/-- `A195128(A049473(2*n))+n` -/
def P5033798703682486542.Spec : Prop :=
  ∀ n, P5033798703682486542.a n = A198263 n

end A198263

/-! ## A198263.P3256852885832703334

`A019426(2*n)+A001951(2*n)`
-/

namespace A198263.P3256852885832703334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) + A001951 (2 * n)

end

end A198263.P3256852885832703334

namespace A198263

/-- `A019426(2*n)+A001951(2*n)` -/
def P3256852885832703334.Spec : Prop :=
  ∀ n, P3256852885832703334.a n = A198263 n

end A198263

/-! ## A198263.P3018405654235381797

`A049474(2*n)+A049473(2*n)`
-/

namespace A198263.P3018405654235381797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * n) + A049473 (2 * n)

end

end A198263.P3018405654235381797

namespace A198263

/-- `A049474(2*n)+A049473(2*n)` -/
def P3018405654235381797.Spec : Prop :=
  ∀ n, P3018405654235381797.a n = A198263 n

end A198263

/-! ## A198263.P13268310616959984453

`A188038(A336109(n+2))+A001951(2*n)`
-/

namespace A198263.P13268310616959984453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (A336109 (n + 2)).toNat + A001951 (2 * n)

end

end A198263.P13268310616959984453

namespace A198263

/-- `A188038(A336109(n+2))+A001951(2*n)` -/
def P13268310616959984453.Spec : Prop :=
  ∀ n, P13268310616959984453.a n = A198263 n

end A198263

/-! ## A198263.P18219024446562858199

`A289036(2*(n+1))-2`
-/

namespace A198263.P18219024446562858199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289036 (2 * (n + 1)) - 2

end

end A198263.P18219024446562858199

namespace A198263

/-- `A289036(2*(n+1))-2` -/
def P18219024446562858199.Spec : Prop :=
  ∀ n, P18219024446562858199.a n = A198263 n

end A198263

/-! ## A198263.P11165773056664746390

`A285078(2*n+1)-Δ[n²]`
-/

namespace A198263.P11165773056664746390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (2 * n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A198263.P11165773056664746390

namespace A198263

/-- `A285078(2*n+1)-Δ[n²]` -/
def P11165773056664746390.Spec : Prop :=
  ∀ n, P11165773056664746390.a n = A198263 n

end A198263

/-! ## A198263.P15852689994949790678

`A242481(2*n+1)+A001951(2*n)`
-/

namespace A198263.P15852689994949790678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242481 (2 * n + 1) + A001951 (2 * n)

end

end A198263.P15852689994949790678

namespace A198263

/-- `A242481(2*n+1)+A001951(2*n)` -/
def P15852689994949790678.Spec : Prop :=
  ∀ n, P15852689994949790678.a n = A198263 n

end A198263

/-! ## A198263.P15697649705274352078

`A001951(2*n+1)+A144611(2*n)-1`
-/

namespace A198263.P15697649705274352078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n + 1) + (A144611 (2 * n) - 1)

end

end A198263.P15697649705274352078

namespace A198263

/-- `A001951(2*n+1)+A144611(2*n)-1` -/
def P15697649705274352078.Spec : Prop :=
  ∀ n, P15697649705274352078.a n = A198263 n

end A198263

/-! ## A198263.P17784609630347741617

`A001951(2*n+1)-A285073(2*(n+1))`
-/

namespace A198263.P17784609630347741617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (2 * n + 1) - A285073 (2 * (n + 1))

end

end A198263.P17784609630347741617

namespace A198263

/-- `A001951(2*n+1)-A285073(2*(n+1))` -/
def P17784609630347741617.Spec : Prop :=
  ∀ n, P17784609630347741617.a n = A198263 n

end A198263

/-! ## A198263.P7535343535607200390

`A285075(2*n+1)-A181440(2*n+1)`
-/

namespace A198263.P7535343535607200390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (2 * n + 1) - A181440 (2 * n + 1)

end

end A198263.P7535343535607200390

namespace A198263

/-- `A285075(2*n+1)-A181440(2*n+1)` -/
def P7535343535607200390.Spec : Prop :=
  ∀ n, P7535343535607200390.a n = A198263 n

end A198263

/-! ## A198263.P3909999336274562468

`A188040(2*n+1)+A001951(2*n)-A336109(2*n+1)`
-/

namespace A198263.P3909999336274562468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188040 (2 * n + 1) + (A001951 (2 * n) - A336109 (2 * n + 1))

end

end A198263.P3909999336274562468

namespace A198263

/-- `A188040(2*n+1)+A001951(2*n)-A336109(2*n+1)` -/
def P3909999336274562468.Spec : Prop :=
  ∀ n, P3909999336274562468.a n = A198263 n

end A198263

/-! ## A198263.P1992988273158861187

`A195176(A022846(n)+n)-n`
-/

namespace A198263.P1992988273158861187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195176 (A022846 n + (n : ℤ)).toNat - (n : ℤ)

end

end A198263.P1992988273158861187

namespace A198263

/-- `A195176(A022846(n)+n)-n` -/
def P1992988273158861187.Spec : Prop :=
  ∀ n, P1992988273158861187.a n = A198263 n

end A198263

/-! ## A198263.P11732872967382066425

`A049474(4*n)`
-/

namespace A198263.P11732872967382066425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (4 * n)

end

end A198263.P11732872967382066425

namespace A198263

/-- `A049474(4*n)` -/
def P11732872967382066425.Spec : Prop :=
  ∀ n, P11732872967382066425.a n = A198263 n

end A198263

/-! ## A198263.P17604778998494288030

`8*n-A187328(4*n)`
-/

namespace A198263.P17604778998494288030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - A187328 (4 * n)

end

end A198263.P17604778998494288030

namespace A198263

/-- `8*n-A187328(4*n)` -/
def P17604778998494288030.Spec : Prop :=
  ∀ n, P17604778998494288030.a n = A198263 n

end A198263

/-! ## A198263.P913372805626974437

`record[A001951(n+1)-A056594(2*n)]`
-/

namespace A198263.P913372805626974437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (n + 1) - A056594 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198263.P913372805626974437

namespace A198263

/-- `record[A001951(n+1)-A056594(2*n)]` -/
def P913372805626974437.Spec : Prop :=
  ∀ n, P913372805626974437.a n = A198263 n

end A198263

/-!
# A198264: Round(n*sqrt(10)).

The programs for A198264, the canonical program `A198264.P10253759615381388926` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198264 has offset 0).

The definition of A198264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*sqrt(10))` (program `A198264.P10253759615381388926`, by `A198264.P10253759615381388926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198264.P10253759615381388926

`round(n*sqrt(10))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198264

/-- `round(n*sqrt(10))` -/
def P10253759615381388926.Spec : Prop :=
  ∀ n, P10253759615381388926.a n = A198264 n

theorem P10253759615381388926.correct : P10253759615381388926.Spec := by
  intro n
  simp only [A198264]

end A198264

/-! ## A198264.P1048041989675867505

`abs(round(n/cos(atan(3))))`
-/

namespace A198264.P1048041989675867505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway ((n : ℝ) / Real.cos (Real.arctan (3 : ℝ)))|

end

end A198264.P1048041989675867505

namespace A198264

/-- `abs(round(n/cos(atan(3))))` -/
def P1048041989675867505.Spec : Prop :=
  ∀ n, P1048041989675867505.a n = A198264 n

end A198264

/-! ## A198264.P5896957730826603776

`floor(A198265(2*n)/2)`
-/

namespace A198264.P5896957730826603776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198265 (2 * n) : ℚ) / 2⌋

end

end A198264.P5896957730826603776

namespace A198264

/-- `floor(A198265(2*n)/2)` -/
def P5896957730826603776.Spec : Prop :=
  ∀ n, P5896957730826603776.a n = A198264 n

end A198264

/-! ## A198264.P6535936955027347296

`A198265(2*n)-A198265(n)`
-/

namespace A198264.P6535936955027347296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198265 (2 * n) - A198265 n

end

end A198264.P6535936955027347296

namespace A198264

/-- `A198265(2*n)-A198265(n)` -/
def P6535936955027347296.Spec : Prop :=
  ∀ n, P6535936955027347296.a n = A198264 n

end A198264

/-! ## A198264.P15206868041491517285

`A004526(A198265(2*n))`
-/

namespace A198264.P15206868041491517285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198265 (2 * n)).toNat

end

end A198264.P15206868041491517285

namespace A198264

/-- `A004526(A198265(2*n))` -/
def P15206868041491517285.Spec : Prop :=
  ∀ n, P15206868041491517285.a n = A198264 n

end A198264

/-! ## A198264.P298328034555061474

`A004526(ceil(sqrt(A158602(n))))`
-/

namespace A198264.P298328034555061474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈Real.sqrt (A158602 n : ℝ)⌉.toNat

end

end A198264.P298328034555061474

namespace A198264

/-- `A004526(ceil(sqrt(A158602(n))))` -/
def P298328034555061474.Spec : Prop :=
  ∀ n, P298328034555061474.a n = A198264 n

end A198264

/-! ## A198264.P6531916742995937989

`A004526(ceil(sqrt(A158776(n)/2)))`
-/

namespace A198264.P6531916742995937989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌈Real.sqrt ((A158776 n : ℚ) / 2 : ℝ)⌉.toNat

end

end A198264.P6531916742995937989

namespace A198264

/-- `A004526(ceil(sqrt(A158776(n)/2)))` -/
def P6531916742995937989.Spec : Prop :=
  ∀ n, P6531916742995937989.a n = A198264 n

end A198264

/-! ## A198264.P3427839802381806412

`A202304(A008822(3*n)-A008822(2*n))`
-/

namespace A198264.P3427839802381806412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A008822 (3 * n) - A008822 (2 * n)).toNat

end

end A198264.P3427839802381806412

namespace A198264

/-- `A202304(A008822(3*n)-A008822(2*n))` -/
def P3427839802381806412.Spec : Prop :=
  ∀ n, P3427839802381806412.a n = A198264 n

end A198264

/-!
# A198265: a(n) = ceiling(n*sqrt(10)).

The programs for A198265, the canonical program `A198265.P17932144946914701050` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198265 has offset 0).

The definition of A198265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(10))` (program `A198265.P17932144946914701050`, by `A198265.P17932144946914701050.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198265.P17932144946914701050

`ceil(n*sqrt(10))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198265

/-- `ceil(n*sqrt(10))` -/
def P17932144946914701050.Spec : Prop :=
  ∀ n, P17932144946914701050.a n = A198265 n

theorem P17932144946914701050.correct : P17932144946914701050.Spec := by
  intro n
  simp only [A198265]

end A198265

/-! ## A198265.P15185867147003226005

`abs(ceil(n/cos(atan(3))))`
-/

namespace A198265.P15185867147003226005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n : ℝ) / Real.cos (Real.arctan (3 : ℝ))⌉|

end

end A198265.P15185867147003226005

namespace A198265

/-- `abs(ceil(n/cos(atan(3))))` -/
def P15185867147003226005.Spec : Prop :=
  ∀ n, P15185867147003226005.a n = A198265 n

end A198265

/-! ## A198265.P16089683257777218705

`abs(ceil(n/sin(acot(3))))`
-/

namespace A198265.P16089683257777218705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(n : ℝ) / Real.sin (SequenceMachineLib.acot (3 : ℝ))⌉|

end

end A198265.P16089683257777218705

namespace A198265

/-- `abs(ceil(n/sin(acot(3))))` -/
def P16089683257777218705.Spec : Prop :=
  ∀ n, P16089683257777218705.a n = A198265 n

end A198265

/-! ## A198265.P12343324221592955336

`-floor(-(n/cos(atan(3))))`
-/

namespace A198265.P12343324221592955336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊-((n : ℝ) / Real.cos (Real.arctan (3 : ℝ)))⌋

end

end A198265.P12343324221592955336

namespace A198265

/-- `-floor(-(n/cos(atan(3))))` -/
def P12343324221592955336.Spec : Prop :=
  ∀ n, P12343324221592955336.a n = A198265 n

end A198265

/-! ## A198265.P5720578014514147328

`(ceil(n/cos(atan(3)))^(1/2))²`
-/

namespace A198265.P5720578014514147328
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((⌈(n : ℝ) / Real.cos (Real.arctan (3 : ℝ))⌉ : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A198265.P5720578014514147328

namespace A198265

/-- `(ceil(n/cos(atan(3)))^(1/2))²` -/
def P5720578014514147328.Spec : Prop :=
  ∀ n, P5720578014514147328.a n = (A198265 n : ℝ)

end A198265

/-! ## A198265.P8193045714881804932

`ceil(n/cos(atan(3)))%(n+2)²`
-/

namespace A198265.P8193045714881804932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) / Real.cos (Real.arctan (3 : ℝ))⌉ ((n + 2) ^ 2 : ℤ)

end

end A198265.P8193045714881804932

namespace A198265

/-- `ceil(n/cos(atan(3)))%(n+2)²` -/
def P8193045714881804932.Spec : Prop :=
  ∀ n, P8193045714881804932.a n = A198265 n

end A198265

/-! ## A198265.P11767344536954900338

`ceil(n/cos(atan(3)))+xor(2*n+1-n, n+1)`
-/

namespace A198265.P11767344536954900338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.cos (Real.arctan (3 : ℝ))⌉ + Int.xor ((2 * n : ℤ) + (1 - (n : ℤ))) (n + 1 : ℤ)

end

end A198265.P11767344536954900338

namespace A198265

/-- `ceil(n/cos(atan(3)))+xor(2*n+1-n, n+1)` -/
def P11767344536954900338.Spec : Prop :=
  ∀ n, P11767344536954900338.a n = A198265 n

end A198265

/-! ## A198265.P14677100629383449716

`floor(A057427(n)+n*sqrt(10))`
-/

namespace A198265.P14677100629383449716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + (n : ℝ) * Real.sqrt (10 : ℝ)⌋

end

end A198265.P14677100629383449716

namespace A198265

/-- `floor(A057427(n)+n*sqrt(10))` -/
def P14677100629383449716.Spec : Prop :=
  ∀ n, P14677100629383449716.a n = A198265 n

end A198265

/-! ## A198265.P1026902242985702097

`ceil(sqrt(A033583(n)))%A240876(n)`
-/

namespace A198265.P1026902242985702097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (A033583 n : ℝ)⌉ (A240876 n)

end

end A198265.P1026902242985702097

namespace A198265

/-- `ceil(sqrt(A033583(n)))%A240876(n)` -/
def P1026902242985702097.Spec : Prop :=
  ∀ n, P1026902242985702097.a n = A198265 n

end A198265

/-! ## A198265.P2483492479037348450

`record[(n+2)*A286747(n+1)]`
-/

namespace A198265.P2483492479037348450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A286747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198265.P2483492479037348450

namespace A198265

/-- `record[(n+2)*A286747(n+1)]` -/
def P2483492479037348450.Spec : Prop :=
  ∀ n, P2483492479037348450.a n = A198265 n

end A198265

/-! ## A198265.P8777270283141292617

`A004525(2*ceil(n/cos(atan(3))))`
-/

namespace A198265.P8777270283141292617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * ⌈(n : ℝ) / Real.cos (Real.arctan (3 : ℝ))⌉).toNat

end

end A198265.P8777270283141292617

namespace A198265

/-- `A004525(2*ceil(n/cos(atan(3))))` -/
def P8777270283141292617.Spec : Prop :=
  ∀ n, P8777270283141292617.a n = A198265 n

end A198265

/-!
# A198266: a(n) = ceiling(n*sqrt(11)).

The programs for A198266, the canonical program `A198266.P5382166935444155378` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198266 has offset 0).

The definition of A198266 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(11))` (program `A198266.P5382166935444155378`, by `A198266.P5382166935444155378.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198266.P5382166935444155378

`ceil(n*sqrt(11))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198266

/-- `ceil(n*sqrt(11))` -/
def P5382166935444155378.Spec : Prop :=
  ∀ n, P5382166935444155378.a n = A198266 n

theorem P5382166935444155378.correct : P5382166935444155378.Spec := by
  intro n
  simp only [A198266]

end A198266

/-! ## A198266.P9792286957055437786

`floor(n*(acot(n)+sqrt(11)))`
-/

namespace A198266.P9792286957055437786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (SequenceMachineLib.acot (n : ℝ) + Real.sqrt (11 : ℝ))⌋

end

end A198266.P9792286957055437786

namespace A198266

/-- `floor(n*(acot(n)+sqrt(11)))` -/
def P9792286957055437786.Spec : Prop :=
  ∀ n, P9792286957055437786.a n = A198266 n

end A198266

/-! ## A198266.P12444265445836891652

`floor(n*(sqrt(11)+1))+n-A004273(n)`
-/

namespace A198266.P12444265445836891652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.sqrt (11 : ℝ) + 1)⌋ + ((n : ℤ) - A004273 n)

end

end A198266.P12444265445836891652

namespace A198266

/-- `floor(n*(sqrt(11)+1))+n-A004273(n)` -/
def P12444265445836891652.Spec : Prop :=
  ∀ n, P12444265445836891652.a n = A198266 n

end A198266

/-! ## A198266.P16741653681450385691

`floor(A115878(A089191(n+1))+n*sqrt(11))`
-/

namespace A198266.P16741653681450385691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A115878 (A089191 (n + 1)).toNat : ℝ) + (n : ℝ) * Real.sqrt (11 : ℝ)⌋

end

end A198266.P16741653681450385691

namespace A198266

/-- `floor(A115878(A089191(n+1))+n*sqrt(11))` -/
def P16741653681450385691.Spec : Prop :=
  ∀ n, P16741653681450385691.a n = A198266 n

end A198266

/-! ## A198266.P15545456080374132930

`A202307(n²)+A057427(n)`
-/

namespace A198266.P15545456080374132930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202307 (n ^ 2) + A057427 n

end

end A198266.P15545456080374132930

namespace A198266

/-- `A202307(n²)+A057427(n)` -/
def P15545456080374132930.Spec : Prop :=
  ∀ n, P15545456080374132930.a n = A198266 n

end A198266

/-! ## A198266.P18133267977334023704

`A202307(n²)+char[A032742(n+1)]`
-/

namespace A198266.P18133267977334023704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202307 (n ^ 2) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A198266.P18133267977334023704

namespace A198266

/-- `A202307(n²)+char[A032742(n+1)]` -/
def P18133267977334023704.Spec : Prop :=
  ∀ n, P18133267977334023704.a n = A198266 n

end A198266

/-!
# A198267: Round(n*sqrt(11)).

The programs for A198267, the canonical program `A198267.P11939206370283906538` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198267 has offset 0).

The definition of A198267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*sqrt(11))` (program `A198267.P11939206370283906538`, by `A198267.P11939206370283906538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198267.P11939206370283906538

`round(n*sqrt(11))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198267

/-- `round(n*sqrt(11))` -/
def P11939206370283906538.Spec : Prop :=
  ∀ n, P11939206370283906538.a n = A198267 n

theorem P11939206370283906538.correct : P11939206370283906538.Spec := by
  intro n
  simp only [A198267]

end A198267

/-! ## A198267.P17681383380375311815

`floor(A198266(2*n)/2)`
-/

namespace A198267.P17681383380375311815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198266 (2 * n) : ℚ) / 2⌋

end

end A198267.P17681383380375311815

namespace A198267

/-- `floor(A198266(2*n)/2)` -/
def P17681383380375311815.Spec : Prop :=
  ∀ n, P17681383380375311815.a n = A198267 n

end A198267

/-! ## A198267.P9767246604083257565

`A198266(2*n)-A198266(n)`
-/

namespace A198267.P9767246604083257565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198266 (2 * n) - A198266 n

end

end A198267.P9767246604083257565

namespace A198267

/-- `A198266(2*n)-A198266(n)` -/
def P9767246604083257565.Spec : Prop :=
  ∀ n, P9767246604083257565.a n = A198267 n

end A198267

/-! ## A198267.P1872686548811283051

`A004526(A198266(2*n))`
-/

namespace A198267.P1872686548811283051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198266 (2 * n)).toNat

end

end A198267.P1872686548811283051

namespace A198267

/-- `A004526(A198266(2*n))` -/
def P1872686548811283051.Spec : Prop :=
  ∀ n, P1872686548811283051.a n = A198267 n

end A198267

/-! ## A198267.P16954947926967041914

`A002264(A198266(2*n)+A198266(n))`
-/

namespace A198267.P16954947926967041914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A198266 (2 * n) + A198266 n).toNat

end

end A198267.P16954947926967041914

namespace A198267

/-- `A002264(A198266(2*n)+A198266(n))` -/
def P16954947926967041914.Spec : Prop :=
  ∀ n, P16954947926967041914.a n = A198267 n

end A198267

/-!
# A198268: Round(n*sqrt(12)).

The programs for A198268, the canonical program `A198268.P8099901542741203042` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198268 has offset 0).

The definition of A198268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*sqrt(12))` (program `A198268.P8099901542741203042`, by `A198268.P8099901542741203042.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198268.P8099901542741203042

`round(n*sqrt(12))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198268

/-- `round(n*sqrt(12))` -/
def P8099901542741203042.Spec : Prop :=
  ∀ n, P8099901542741203042.a n = A198268 n

theorem P8099901542741203042.correct : P8099901542741203042.Spec := by
  intro n
  simp only [A198268]

end A198268

/-! ## A198268.P6555799219159420346

`A022847(2*n)`
-/

namespace A198268.P6555799219159420346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (2 * n)

end

end A198268.P6555799219159420346

namespace A198268

/-- `A022847(2*n)` -/
def P6555799219159420346.Spec : Prop :=
  ∀ n, P6555799219159420346.a n = A198268 n

end A198268

/-! ## A198268.P2835418179777513596

`floor(A198269(2*n)/2)`
-/

namespace A198268.P2835418179777513596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198269 (2 * n) : ℚ) / 2⌋

end

end A198268.P2835418179777513596

namespace A198268

/-- `floor(A198269(2*n)/2)` -/
def P2835418179777513596.Spec : Prop :=
  ∀ n, P2835418179777513596.a n = A198268 n

end A198268

/-! ## A198268.P9546432188149961316

`record[A022847(A014681(n))]`
-/

namespace A198268.P9546432188149961316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022847 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198268.P9546432188149961316

namespace A198268

/-- `record[A022847(A014681(n))]` -/
def P9546432188149961316.Spec : Prop :=
  ∀ n, P9546432188149961316.a n = A198268 n

end A198268

/-! ## A198268.P3647733398692059372

`A198269(2*n)-A198269(n)`
-/

namespace A198268.P3647733398692059372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198269 (2 * n) - A198269 n

end

end A198268.P3647733398692059372

namespace A198268

/-- `A198269(2*n)-A198269(n)` -/
def P3647733398692059372.Spec : Prop :=
  ∀ n, P3647733398692059372.a n = A198268 n

end A198268

/-! ## A198268.P13081077596219753710

`record[A184638(n+1)-A028242(n)]+n`
-/

namespace A198268.P13081077596219753710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184638 (n + 1) - A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A198268.P13081077596219753710

namespace A198268

/-- `record[A184638(n+1)-A028242(n)]+n` -/
def P13081077596219753710.Spec : Prop :=
  ∀ n, P13081077596219753710.a n = A198268 n

end A198268

/-! ## A198268.P5291520557907317510

`A198081(4*n)-A198081(2*n)`
-/

namespace A198268.P5291520557907317510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (4 * n) - A198081 (2 * n)

end

end A198268.P5291520557907317510

namespace A198268

/-- `A198081(4*n)-A198081(2*n)` -/
def P5291520557907317510.Spec : Prop :=
  ∀ n, P5291520557907317510.a n = A198268 n

end A198268

/-! ## A198268.P14403385541973556330

`A022838(A004275(2*n+1))-A022838(A004275(n+1))`
-/

namespace A198268.P14403385541973556330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A004275 (2 * n + 1)).toNat - A022838 (A004275 (n + 1)).toNat

end

end A198268.P14403385541973556330

namespace A198268

/-- `A022838(A004275(2*n+1))-A022838(A004275(n+1))` -/
def P14403385541973556330.Spec : Prop :=
  ∀ n, P14403385541973556330.a n = A198268 n

end A198268

/-! ## A198268.P3768458821699544930

`A004526(A198269(2*n))`
-/

namespace A198268.P3768458821699544930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198269 (2 * n)).toNat

end

end A198268.P3768458821699544930

namespace A198268

/-- `A004526(A198269(2*n))` -/
def P3768458821699544930.Spec : Prop :=
  ∀ n, P3768458821699544930.a n = A198268 n

end A198268

/-! ## A198268.P5448762568053477982

`A140106(A198269(2*n)+2)`
-/

namespace A198268.P5448762568053477982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A198269 (2 * n) + 2).toNat

end

end A198268.P5448762568053477982

namespace A198268

/-- `A140106(A198269(2*n)+2)` -/
def P5448762568053477982.Spec : Prop :=
  ∀ n, P5448762568053477982.a n = A198268 n

end A198268

/-! ## A198268.P492230992037661449

`A172475(8*n)-A172475(4*n)`
-/

namespace A198268.P492230992037661449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172475 (8 * n) - A172475 (4 * n)

end

end A198268.P492230992037661449

namespace A198268

/-- `A172475(8*n)-A172475(4*n)` -/
def P492230992037661449.Spec : Prop :=
  ∀ n, P492230992037661449.a n = A198268 n

end A198268

/-!
# A198269: Ceiling(n*sqrt(12)).

The programs for A198269, the canonical program `A198269.P7120729545818714966` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198269 has offset 0).

The definition of A198269 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(12))` (program `A198269.P7120729545818714966`, by `A198269.P7120729545818714966.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198269.P7120729545818714966

`ceil(n*sqrt(12))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198269

/-- `ceil(n*sqrt(12))` -/
def P7120729545818714966.Spec : Prop :=
  ∀ n, P7120729545818714966.a n = A198269 n

theorem P7120729545818714966.correct : P7120729545818714966.Spec := by
  intro n
  simp only [A198269]

end A198269

/-! ## A198269.P2248473249819007150

`record[floor((n+1)*sqrt(3))-(-1)^n]`
-/

namespace A198269.P2248473249819007150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (3 : ℝ)⌋ - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198269.P2248473249819007150

namespace A198269

/-- `record[floor((n+1)*sqrt(3))-(-1)^n]` -/
def P2248473249819007150.Spec : Prop :=
  ∀ n, P2248473249819007150.a n = A198269 n

end A198269

/-! ## A198269.P4847347423103093569

`A057427(n)+floor(2*n*sqrt(3))`
-/

namespace A198269.P4847347423103093569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + ⌊(2 * n : ℝ) * Real.sqrt (3 : ℝ)⌋

end

end A198269.P4847347423103093569

namespace A198269

/-- `A057427(n)+floor(2*n*sqrt(3))` -/
def P4847347423103093569.Spec : Prop :=
  ∀ n, P4847347423103093569.a n = A198269 n

end A198269

/-! ## A198269.P3647177898089142108

`(floor(n*sqrt(12))+1)%A174723(n+1)`
-/

namespace A198269.P3647177898089142108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) * Real.sqrt (12 : ℝ)⌋ + 1) (A174723 (n + 1))

end

end A198269.P3647177898089142108

namespace A198269

/-- `(floor(n*sqrt(12))+1)%A174723(n+1)` -/
def P3647177898089142108.Spec : Prop :=
  ∀ n, P3647177898089142108.a n = A198269 n

end A198269

/-! ## A198269.P3700530951952299937

`A198081(n)+A022847(n)`
-/

namespace A198269.P3700530951952299937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 n + A022847 n

end

end A198269.P3700530951952299937

namespace A198269

/-- `A198081(n)+A022847(n)` -/
def P3700530951952299937.Spec : Prop :=
  ∀ n, P3700530951952299937.a n = A198269 n

end A198269

/-! ## A198269.P4650918653629618614

`A198081(2*n)`
-/

namespace A198269.P4650918653629618614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198081 (2 * n)

end

end A198269.P4650918653629618614

namespace A198269

/-- `A198081(2*n)` -/
def P4650918653629618614.Spec : Prop :=
  ∀ n, P4650918653629618614.a n = A198269 n

end A198269

/-! ## A198269.P17153382453898720270

`A215781(2*n)+2*n`
-/

namespace A198269.P17153382453898720270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215781 (2 * n) + (2 * n : ℤ)

end

end A198269.P17153382453898720270

namespace A198269

/-- `A215781(2*n)+2*n` -/
def P17153382453898720270.Spec : Prop :=
  ∀ n, P17153382453898720270.a n = A198269 n

end A198269

/-! ## A198269.P14043209404975635182

`A080590(2*n+1)-(4*n+1)`
-/

namespace A198269.P14043209404975635182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080590 (2 * n + 1) - (4 * n + 1 : ℤ)

end

end A198269.P14043209404975635182

namespace A198269

/-- `A080590(2*n+1)-(4*n+1)` -/
def P14043209404975635182.Spec : Prop :=
  ∀ n, P14043209404975635182.a n = A198269 n

end A198269

/-! ## A198269.P13968903819745876726

`A188069(2*n+1)-A004277(2*n)`
-/

namespace A198269.P13968903819745876726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188069 (2 * n + 1) - A004277 (2 * n)

end

end A198269.P13968903819745876726

namespace A198269

/-- `A188069(2*n+1)-A004277(2*n)` -/
def P13968903819745876726.Spec : Prop :=
  ∀ n, P13968903819745876726.a n = A198269 n

end A198269

/-! ## A198269.P13270830082025813710

`A022838(2*n+1)+A275855(2*n+1)-1`
-/

namespace A198269.P13270830082025813710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (2 * n + 1) + (A275855 (2 * n + 1) - 1)

end

end A198269.P13270830082025813710

namespace A198269

/-- `A022838(2*n+1)+A275855(2*n+1)-1` -/
def P13270830082025813710.Spec : Prop :=
  ∀ n, P13270830082025813710.a n = A198269 n

end A198269

/-!
# A198270: Ceiling(n*sqrt(13)).

The programs for A198270, the canonical program `A198270.P9874019798847490849` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198270 has offset 0).

The definition of A198270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n*sqrt(13))` (program `A198270.P9874019798847490849`, by `A198270.P9874019798847490849.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198270.P9874019798847490849

`ceil(n*sqrt(13))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198270

/-- `ceil(n*sqrt(13))` -/
def P9874019798847490849.Spec : Prop :=
  ∀ n, P9874019798847490849.a n = A198270 n

theorem P9874019798847490849.correct : P9874019798847490849.Spec := by
  intro n
  simp only [A198270]

end A198270

/-! ## A198270.P3161643224716976794

`floor(A057427(n)+sqrt(A152742(n)))`
-/

namespace A198270.P3161643224716976794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057427 n : ℝ) + Real.sqrt (A152742 n : ℝ)⌋

end

end A198270.P3161643224716976794

namespace A198270

/-- `floor(A057427(n)+sqrt(A152742(n)))` -/
def P3161643224716976794.Spec : Prop :=
  ∀ n, P3161643224716976794.a n = A198270 n

end A198270

/-! ## A198270.P393619546680126407

`A080600(2*n)-3*n`
-/

namespace A198270.P393619546680126407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080600 (2 * n) - (3 * n : ℤ)

end

end A198270.P393619546680126407

namespace A198270

/-- `A080600(2*n)-3*n` -/
def P393619546680126407.Spec : Prop :=
  ∀ n, P393619546680126407.a n = A198270 n

end A198270

/-! ## A198270.P15484413376410893387

`A284679(Δ[n²])+n-1`
-/

namespace A198270.P15484413376410893387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((n : ℤ) - 1)

end

end A198270.P15484413376410893387

namespace A198270

/-- `A284679(Δ[n²])+n-1` -/
def P15484413376410893387.Spec : Prop :=
  ∀ n, P15484413376410893387.a n = A198270 n

end A198270

/-! ## A198270.P7864055168487543781

`A284679(2*n+1)-1+n`
-/

namespace A198270.P7864055168487543781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (2 * n + 1) - 1 + (n : ℤ)

end

end A198270.P7864055168487543781

namespace A198270

/-- `A284679(2*n+1)-1+n` -/
def P7864055168487543781.Spec : Prop :=
  ∀ n, P7864055168487543781.a n = A198270 n

end A198270

/-! ## A198270.P4363678200438135192

`A284676(2*n+1)-A054977(n)+n`
-/

namespace A198270.P4363678200438135192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (2 * n + 1) - A054977 n + (n : ℤ)

end

end A198270.P4363678200438135192

namespace A198270

/-- `A284676(2*n+1)-A054977(n)+n` -/
def P4363678200438135192.Spec : Prop :=
  ∀ n, P4363678200438135192.a n = A198270 n

end A198270

/-! ## A198270.P16627350717798614863

`n-A024000(A284679(Δ[n²]))`
-/

namespace A198270.P16627350717798614863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A024000 (A284679 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A198270.P16627350717798614863

namespace A198270

/-- `n-A024000(A284679(Δ[n²]))` -/
def P16627350717798614863.Spec : Prop :=
  ∀ n, P16627350717798614863.a n = A198270 n

end A198270

/-! ## A198270.P12378989061880690877

`A202308(n²)+A057427(n)`
-/

namespace A198270.P12378989061880690877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202308 (n ^ 2) + A057427 n

end

end A198270.P12378989061880690877

namespace A198270

/-- `A202308(n²)+A057427(n)` -/
def P12378989061880690877.Spec : Prop :=
  ∀ n, P12378989061880690877.a n = A198270 n

end A198270

/-! ## A198270.P1556355431937112608

`A202308(n²)+A178334(n)`
-/

namespace A198270.P1556355431937112608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202308 (n ^ 2) + A178334 n

end

end A198270.P1556355431937112608

namespace A198270

/-- `A202308(n²)+A178334(n)` -/
def P1556355431937112608.Spec : Prop :=
  ∀ n, P1556355431937112608.a n = A198270 n

end A198270

/-!
# A198271: a(n) = round(n*sqrt(13)).

The programs for A198271, the canonical program `A198271.P4603346623978920721` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198271 has offset 0).

The definition of A198271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*sqrt(13))` (program `A198271.P4603346623978920721`, by `A198271.P4603346623978920721.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198271.P4603346623978920721

`round(n*sqrt(13))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198271

/-- `round(n*sqrt(13))` -/
def P4603346623978920721.Spec : Prop :=
  ∀ n, P4603346623978920721.a n = A198271 n

theorem P4603346623978920721.correct : P4603346623978920721.Spec := by
  intro n
  simp only [A198271]

end A198271

/-! ## A198271.P2882751925948811421

`floor(A198270(2*n)/2)`
-/

namespace A198271.P2882751925948811421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198270 (2 * n) : ℚ) / 2⌋

end

end A198271.P2882751925948811421

namespace A198271

/-- `floor(A198270(2*n)/2)` -/
def P2882751925948811421.Spec : Prop :=
  ∀ n, P2882751925948811421.a n = A198271 n

end A198271

/-! ## A198271.P17342004573093693846

`A198270(2*n)-A198270(n)`
-/

namespace A198271.P17342004573093693846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198270 (2 * n) - A198270 n

end

end A198271.P17342004573093693846

namespace A198271

/-- `A198270(2*n)-A198270(n)` -/
def P17342004573093693846.Spec : Prop :=
  ∀ n, P17342004573093693846.a n = A198271 n

end A198271

/-! ## A198271.P7222166696395682543

`A284676(4*n+1)-A284676(2*n+1)+n`
-/

namespace A198271.P7222166696395682543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284676 (4 * n + 1) - A284676 (2 * n + 1) + (n : ℤ)

end

end A198271.P7222166696395682543

namespace A198271

/-- `A284676(4*n+1)-A284676(2*n+1)+n` -/
def P7222166696395682543.Spec : Prop :=
  ∀ n, P7222166696395682543.a n = A198271 n

end A198271

/-! ## A198271.P8829009043175305898

`A284679(4*n+1)-A284679(2*n+1)+n`
-/

namespace A198271.P8829009043175305898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284679 (4 * n + 1) - A284679 (2 * n + 1) + (n : ℤ)

end

end A198271.P8829009043175305898

namespace A198271

/-- `A284679(4*n+1)-A284679(2*n+1)+n` -/
def P8829009043175305898.Spec : Prop :=
  ∀ n, P8829009043175305898.a n = A198271 n

end A198271

/-! ## A198271.P11031350944471911703

`A004526(A198270(2*n))`
-/

namespace A198271.P11031350944471911703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198270 (2 * n)).toNat

end

end A198271.P11031350944471911703

namespace A198271

/-- `A004526(A198270(2*n))` -/
def P11031350944471911703.Spec : Prop :=
  ∀ n, P11031350944471911703.a n = A198271 n

end A198271

/-!
# A198272: a(n) = round(n*sqrt(17)).

The programs for A198272, the canonical program `A198272.P16500306894364519064` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198272 has offset 0).

The definition of A198272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round(n*sqrt(17))` (program `A198272.P16500306894364519064`, by `A198272.P16500306894364519064.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198272.P16500306894364519064

`round(n*sqrt(17))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198272

/-- `round(n*sqrt(17))` -/
def P16500306894364519064.Spec : Prop :=
  ∀ n, P16500306894364519064.a n = A198272 n

theorem P16500306894364519064.correct : P16500306894364519064.Spec := by
  intro n
  simp only [A198272]

end A198272

/-! ## A198272.P3944414475405680986

`round(sqrt(A244630(n)))%A000096(n+1)`
-/

namespace A198272.P3944414475405680986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A244630 n : ℝ))) (A000096 (n + 1))

end

end A198272.P3944414475405680986

namespace A198272

/-- `round(sqrt(A244630(n)))%A000096(n+1)` -/
def P3944414475405680986.Spec : Prop :=
  ∀ n, P3944414475405680986.a n = A198272 n

end A198272

/-! ## A198272.P300428821990341541

`floor(A198395(2*n)/2)`
-/

namespace A198272.P300428821990341541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A198395 (2 * n) : ℚ) / 2⌋

end

end A198272.P300428821990341541

namespace A198272

/-- `floor(A198395(2*n)/2)` -/
def P300428821990341541.Spec : Prop :=
  ∀ n, P300428821990341541.a n = A198272 n

end A198272

/-! ## A198272.P15596108980692630919

`A198395(2*n)-A198395(n)`
-/

namespace A198272.P15596108980692630919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198395 (2 * n) - A198395 n

end

end A198272.P15596108980692630919

namespace A198272

/-- `A198395(2*n)-A198395(n)` -/
def P15596108980692630919.Spec : Prop :=
  ∀ n, P15596108980692630919.a n = A198272 n

end A198272

/-! ## A198272.P16097569382023190228

`A004526(A198395(2*n))`
-/

namespace A198272.P16097569382023190228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A198395 (2 * n)).toNat

end

end A198272.P16097569382023190228

namespace A198272

/-- `A004526(A198395(2*n))` -/
def P16097569382023190228.Spec : Prop :=
  ∀ n, P16097569382023190228.a n = A198272 n

end A198272

/-! ## A198272.P2011138583984812319

`∑[A014707(A014557(n+1))+4]-4`
-/

namespace A198272.P2011138583984812319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A014557 (n + 1)).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 4

end

end A198272.P2011138583984812319

namespace A198272

/-- `∑[A014707(A014557(n+1))+4]-4` -/
def P2011138583984812319.Spec : Prop :=
  ∀ n, P2011138583984812319.a n = A198272 n

end A198272

/-! ## A198272.P1487684774234166155

`ceil(log(A254674(2*n+1)))`
-/

namespace A198272.P1487684774234166155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A254674 (2 * n + 1) : ℝ)⌉

end

end A198272.P1487684774234166155

namespace A198272

/-- `ceil(log(A254674(2*n+1)))` -/
def P1487684774234166155.Spec : Prop :=
  ∀ n, P1487684774234166155.a n = A198272 n

end A198272

/-!
# A198273: Primes not of the form p*q + p + q for any primes p and q.

The programs for A198273, there is no canonical definition to state claims against.
-/

/-! ## A198273.P17785355035896222394

`A000040(lt[A067432(n+1), 1]+1)`
-/

namespace A198273.P17785355035896222394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067432 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A198273.P17785355035896222394

/-! ## A198273.P15122965329825162931

`A000040(record[gcd(n+1, A067432(n+1))])`
-/

namespace A198273.P15122965329825162931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A067432 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A198273.P15122965329825162931

/-! ## A198273.P16111880034235526042

`record[or(-A067432(n+1), A000040(n+1))]`
-/

namespace A198273.P16111880034235526042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A067432 (n + 1)) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198273.P16111880034235526042

/-! ## A198273.P15360029696593650261

`p?[A008804(A067432(n+1))+A006093(n+1)]`
-/

namespace A198273.P15360029696593650261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008804 (A067432 (n + 1)).toNat + A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A198273.P15360029696593650261

/-! ## A198273.P16084647313814615831

`record[A001748(n+1)/A020701(A067432(n+1))]`
-/

namespace A198273.P16084647313814615831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / (A020701 (A067432 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198273.P16084647313814615831

/-! ## A198273.P8092732604910467900

`A000040(eq[2, A000040(A067432(n+1)+1)]+1)`
-/

namespace A198273.P8092732604910467900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A067432 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A198273.P8092732604910467900

/-! ## A198273.P18135679179472821128

`p?[comp[A066938(n+1)]]`
-/

namespace A198273.P18135679179472821128
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066938 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A198273.P18135679179472821128

/-! ## A198273.P11762570141025057642

`eq[A071375(n+1), A127812(n)]`
-/

namespace A198273.P11762570141025057642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198273.P11762570141025057642

/-! ## A198273.P13518431888108144498

`eq[A071375(n+1), A265822(n)]`
-/

namespace A198273.P13518431888108144498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198273.P13518431888108144498

/-!
# A198274: a(n) = 13*2^n-1.

The programs for A198274, the canonical program `A198274.P4222715629638251242` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198274 has offset 0).

The definition of A198274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*2^n-1` (program `A198274.P4222715629638251242`, by `A198274.P4222715629638251242.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198274.P4222715629638251242

`13*2^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198274

/-- `13*2^n-1` -/
def P4222715629638251242.Spec : Prop :=
  ∀ n, P4222715629638251242.a n = A198274 n

theorem P4222715629638251242.correct : P4222715629638251242.Spec := by
  intro n
  simp only [A198274]

end A198274

/-! ## A198274.P10460795810545086892

`ogf((12-11x)/(1-3x+2x^2))`
-/

namespace A198274.P10460795810545086892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, -11] [1, -3, 2] n

end

end A198274.P10460795810545086892

namespace A198274

/-- `ogf((12-11x)/(1-3x+2x^2))` -/
def P10460795810545086892.Spec : Prop :=
  ∀ n, P10460795810545086892.a n = A198274 n

end A198274

/-! ## A198274.P11147482860628101385

`or(1, 2*a(n-1))` with `a(0)=12`
-/

namespace A198274.P11147482860628101385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A198274.P11147482860628101385

namespace A198274

/-- `or(1, 2*a(n-1))` -/
def P11147482860628101385.Spec : Prop :=
  ∀ n, (P11147482860628101385.a n : ℤ) = A198274 n

end A198274

/-! ## A198274.P5562810101345580499

`xor(1, 2*a(n-1))` with `a(0)=12`
-/

namespace A198274.P5562810101345580499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [12] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A198274.P5562810101345580499

namespace A198274

/-- `xor(1, 2*a(n-1))` -/
def P5562810101345580499.Spec : Prop :=
  ∀ n, (P5562810101345580499.a n : ℤ) = A198274 n

end A198274

/-! ## A198274.P16686905186233307329

`∑[2*a(n-1)]` with `a(0)=12, a(1)=13`
-/

namespace A198274.P16686905186233307329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 13] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198274.P16686905186233307329

namespace A198274

/-- `∑[2*a(n-1)]` -/
def P16686905186233307329.Spec : Prop :=
  ∀ n, (P16686905186233307329.a n : ℤ) = A198274 n

end A198274

/-! ## A198274.P5606404768171293240

`2*(a(n-1)+1/2)` with `a(0)=12`
-/

namespace A198274.P5606404768171293240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [12] fun n a =>
  2 * (a (n - 1) + (1 : ℚ) / 2)

end

end A198274.P5606404768171293240

namespace A198274

/-- `2*(a(n-1)+1/2)` -/
def P5606404768171293240.Spec : Prop :=
  ∀ n, P5606404768171293240.a n = (A198274 n : ℚ)

theorem P5606404768171293240.correct : P5606404768171293240.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198274, Nat.add_sub_cancel, A198274.P5606404768171293240.a, A198274.P4222715629638251242.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198274, Nat.add_sub_cancel, A198274.P5606404768171293240.a, A198274.P4222715629638251242.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198274

/-! ## A198274.P6230820284530301355

`∑[a(n-1)+a(n-1)]` with `a(0)=12, a(1)=13`
-/

namespace A198274.P6230820284530301355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12, 13] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198274.P6230820284530301355

namespace A198274

/-- `∑[a(n-1)+a(n-1)]` -/
def P6230820284530301355.Spec : Prop :=
  ∀ n, (P6230820284530301355.a n : ℤ) = A198274 n

end A198274

/-! ## A198274.P10861034965842666114

`A267539(n+3)`
-/

namespace A198274.P10861034965842666114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267539 (n + 3)

end

end A198274.P10861034965842666114

namespace A198274

/-- `A267539(n+3)` -/
def P10861034965842666114.Spec : Prop :=
  ∀ n, P10861034965842666114.a n = A198274 n

end A198274

/-! ## A198274.P12536102914139810335

`record[A267539(abs(3-n))]`
-/

namespace A198274.P12536102914139810335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267539 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198274.P12536102914139810335

namespace A198274

/-- `record[A267539(abs(3-n))]` -/
def P12536102914139810335.Spec : Prop :=
  ∀ n, P12536102914139810335.a n = A198274 n

end A198274

/-! ## A198274.P10061744784497297633

`xor(A005029(n), A126646(n))`
-/

namespace A198274.P10061744784497297633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005029 n) (A126646 n)

end

end A198274.P10061744784497297633

namespace A198274

/-- `xor(A005029(n), A126646(n))` -/
def P10061744784497297633.Spec : Prop :=
  ∀ n, P10061744784497297633.a n = A198274 n

end A198274

/-! ## A198274.P3048247540308846792

`xor(∑[A000079(n)], A005029(n))`
-/

namespace A198274.P3048247540308846792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A005029 n)

end

end A198274.P3048247540308846792

namespace A198274

/-- `xor(∑[A000079(n)], A005029(n))` -/
def P3048247540308846792.Spec : Prop :=
  ∀ n, P3048247540308846792.a n = A198274 n

end A198274

/-! ## A198274.P9383318148250347315

`xor(A000225(n+1), A005029(n))`
-/

namespace A198274.P9383318148250347315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 (n + 1)) (A005029 n)

end

end A198274.P9383318148250347315

namespace A198274

/-- `xor(A000225(n+1), A005029(n))` -/
def P9383318148250347315.Spec : Prop :=
  ∀ n, P9383318148250347315.a n = A198274 n

end A198274

/-! ## A198274.P12369492560766932412

`xor(A000225(n), A081808(n+1))`
-/

namespace A198274.P12369492560766932412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A081808 (n + 1))

end

end A198274.P12369492560766932412

namespace A198274

/-- `xor(A000225(n), A081808(n+1))` -/
def P12369492560766932412.Spec : Prop :=
  ∀ n, P12369492560766932412.a n = A198274 n

end A198274

/-! ## A198274.P8390277698565080726

`xor(A086225(n), A091629(n+1))`
-/

namespace A198274.P8390277698565080726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A086225 n) (A091629 (n + 1))

end

end A198274.P8390277698565080726

namespace A198274

/-- `xor(A086225(n), A091629(n+1))` -/
def P8390277698565080726.Spec : Prop :=
  ∀ n, P8390277698565080726.a n = A198274 n

end A198274

/-! ## A198274.P10372714129522547998

`xor(A110286(n), A126646(n+1))`
-/

namespace A198274.P10372714129522547998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110286 n) (A126646 (n + 1))

end

end A198274.P10372714129522547998

namespace A198274

/-- `xor(A110286(n), A126646(n+1))` -/
def P10372714129522547998.Spec : Prop :=
  ∀ n, P10372714129522547998.a n = A198274 n

end A198274

/-! ## A198274.P3168700299502477907

`xor(A081808(n+1)/2, A086225(n))`
-/

namespace A198274.P3168700299502477907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((A081808 (n + 1) : ℚ) / 2)) (A086225 n)

end

end A198274.P3168700299502477907

namespace A198274

/-- `xor(A081808(n+1)/2, A086225(n))` -/
def P3168700299502477907.Spec : Prop :=
  ∀ n, P3168700299502477907.a n = A198274 n

end A198274

/-! ## A198274.P5158329633838244729

`xor(A070875(2*(n+1)), A010737(2*n+1))`
-/

namespace A198274.P5158329633838244729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A070875 (2 * (n + 1))) (A010737 (2 * n + 1))

end

end A198274.P5158329633838244729

namespace A198274

/-- `xor(A070875(2*(n+1)), A010737(2*n+1))` -/
def P5158329633838244729.Spec : Prop :=
  ∀ n, P5158329633838244729.a n = A198274 n

end A198274

/-! ## A198274.P14674643111352224871

`xor(A198275(n)-A091629(n+1), A091629(n+1))`
-/

namespace A198274.P14674643111352224871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A198275 n - A091629 (n + 1)) (A091629 (n + 1))

end

end A198274.P14674643111352224871

namespace A198274

/-- `xor(A198275(n)-A091629(n+1), A091629(n+1))` -/
def P14674643111352224871.Spec : Prop :=
  ∀ n, P14674643111352224871.a n = A198274 n

end A198274

/-! ## A198274.P7569589373066487432

`Δ[2*a(n-1)+n+3]` with `a(0)=8`
-/

namespace A198274.P7569589373066487432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [8] fun n f1 =>
  2 * f1 (n - 1) + (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A198274.P7569589373066487432

namespace A198274

/-- `Δ[2*a(n-1)+n+3]` -/
def P7569589373066487432.Spec : Prop :=
  ∀ n, P7569589373066487432.a n = A198274 n

end A198274

/-! ## A198274.P12552416675433465350

`(A156202(n+2)+1)/2`
-/

namespace A198274.P12552416675433465350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156202 (n + 2) + 1 : ℚ) / 2

end

end A198274.P12552416675433465350

namespace A198274

/-- `(A156202(n+2)+1)/2` -/
def P12552416675433465350.Spec : Prop :=
  ∀ n, P12552416675433465350.a n = (A198274 n : ℚ)

end A198274

/-!
# A198275: a(n) = 17*2^n - 1.

The programs for A198275, the canonical program `A198275.P16496776346649056810` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198275 has offset 0).

The definition of A198275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*2^n-1` (program `A198275.P16496776346649056810`, by `A198275.P16496776346649056810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198275.P16496776346649056810

`17*2^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198275

/-- `17*2^n-1` -/
def P16496776346649056810.Spec : Prop :=
  ∀ n, P16496776346649056810.a n = A198275 n

theorem P16496776346649056810.correct : P16496776346649056810.Spec := by
  intro n
  simp only [A198275]

end A198275

/-! ## A198275.P15171438559588577320

`ogf((16-15x)/(1-3x+2x^2))`
-/

namespace A198275.P15171438559588577320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, -15] [1, -3, 2] n

end

end A198275.P15171438559588577320

namespace A198275

/-- `ogf((16-15x)/(1-3x+2x^2))` -/
def P15171438559588577320.Spec : Prop :=
  ∀ n, P15171438559588577320.a n = A198275 n

end A198275

/-! ## A198275.P12460535171354901316

`or(1, 2*a(n-1))` with `a(0)=16`
-/

namespace A198275.P12460535171354901316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A198275.P12460535171354901316

namespace A198275

/-- `or(1, 2*a(n-1))` -/
def P12460535171354901316.Spec : Prop :=
  ∀ n, (P12460535171354901316.a n : ℤ) = A198275 n

end A198275

/-! ## A198275.P2775427999761173489

`xor(1, 2*a(n-1))` with `a(0)=16`
-/

namespace A198275.P2775427999761173489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A198275.P2775427999761173489

namespace A198275

/-- `xor(1, 2*a(n-1))` -/
def P2775427999761173489.Spec : Prop :=
  ∀ n, (P2775427999761173489.a n : ℤ) = A198275 n

end A198275

/-! ## A198275.P9006197893055220000

`∑[2*a(n-1)]` with `a(0)=16, a(1)=17`
-/

namespace A198275.P9006197893055220000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 17] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198275.P9006197893055220000

namespace A198275

/-- `∑[2*a(n-1)]` -/
def P9006197893055220000.Spec : Prop :=
  ∀ n, (P9006197893055220000.a n : ℤ) = A198275 n

end A198275

/-! ## A198275.P2961621365872133098

`abs(2*a(n-1)+1)` with `a(0)=16`
-/

namespace A198275.P2961621365872133098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [16] fun n a =>
  2 * a (n - 1) + 1

end

end A198275.P2961621365872133098

namespace A198275

/-- `abs(2*a(n-1)+1)` -/
def P2961621365872133098.Spec : Prop :=
  ∀ n, (P2961621365872133098.a n : ℤ) = A198275 n

theorem P2961621365872133098.correct : P2961621365872133098.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198275, Nat.add_sub_cancel, A198275.P2961621365872133098.a, A198275.P16496776346649056810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198275, Nat.add_sub_cancel, A198275.P2961621365872133098.a, A198275.P16496776346649056810.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198275

/-! ## A198275.P10577742570492871798

`2*(a(n-1)+1/2)` with `a(0)=16`
-/

namespace A198275.P10577742570492871798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [16] fun n a =>
  2 * (a (n - 1) + (1 : ℚ) / 2)

end

end A198275.P10577742570492871798

namespace A198275

/-- `2*(a(n-1)+1/2)` -/
def P10577742570492871798.Spec : Prop :=
  ∀ n, P10577742570492871798.a n = (A198275 n : ℚ)

theorem P10577742570492871798.correct : P10577742570492871798.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198275, Nat.add_sub_cancel, A198275.P10577742570492871798.a, A198275.P16496776346649056810.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198275, Nat.add_sub_cancel, A198275.P10577742570492871798.a, A198275.P16496776346649056810.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198275

/-! ## A198275.P12287242022321620374

`∑[a(n-1)+a(n-1)]` with `a(0)=16, a(1)=17`
-/

namespace A198275.P12287242022321620374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 17] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198275.P12287242022321620374

namespace A198275

/-- `∑[a(n-1)+a(n-1)]` -/
def P12287242022321620374.Spec : Prop :=
  ∀ n, (P12287242022321620374.a n : ℤ) = A198275 n

end A198275

/-! ## A198275.P3882152480430383815

`or(2^n-1, A000079(n+4))`
-/

namespace A198275.P3882152480430383815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((2 ^ n : ℤ) - 1) (A000079 (n + 4))

end

end A198275.P3882152480430383815

namespace A198275

/-- `or(2^n-1, A000079(n+4))` -/
def P3882152480430383815.Spec : Prop :=
  ∀ n, P3882152480430383815.a n = A198275 n

end A198275

/-! ## A198275.P3777356467133143284

`xor(A110287(n), A126646(n))`
-/

namespace A198275.P3777356467133143284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110287 n) (A126646 n)

end

end A198275.P3777356467133143284

namespace A198275

/-- `xor(A110287(n), A126646(n))` -/
def P3777356467133143284.Spec : Prop :=
  ∀ n, P3777356467133143284.a n = A198275 n

end A198275

/-! ## A198275.P474349766694016745

`xor(∑[A000079(n)], A110287(n))`
-/

namespace A198275.P474349766694016745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A110287 n)

end

end A198275.P474349766694016745

namespace A198275

/-- `xor(∑[A000079(n)], A110287(n))` -/
def P474349766694016745.Spec : Prop :=
  ∀ n, P474349766694016745.a n = A198275 n

end A198275

/-! ## A198275.P5944058137568072744

`or(A000079(n+4), A000225(n))`
-/

namespace A198275.P5944058137568072744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 4)) (A000225 n)

end

end A198275.P5944058137568072744

namespace A198275

/-- `or(A000079(n+4), A000225(n))` -/
def P5944058137568072744.Spec : Prop :=
  ∀ n, P5944058137568072744.a n = A198275 n

end A198275

/-! ## A198275.P17821604019698369330

`abs(9*A000079(n+1)-1-Δ[A000225(n)])`
-/

namespace A198275.P17821604019698369330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 * A000079 (n + 1) - 1 - (f1 (n + 1) - f1 n)|

end

end A198275.P17821604019698369330

namespace A198275

/-- `abs(9*A000079(n+1)-1-Δ[A000225(n)])` -/
def P17821604019698369330.Spec : Prop :=
  ∀ n, P17821604019698369330.a n = A198275 n

end A198275

/-! ## A198275.P118595939817206092

`abs(2*9*A000079(n)-1-Δ[A000225(n)])`
-/

namespace A198275.P118595939817206092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * (9 * A000079 n) - 1 - (f1 (n + 1) - f1 n)|

end

end A198275.P118595939817206092

namespace A198275

/-- `abs(2*9*A000079(n)-1-Δ[A000225(n)])` -/
def P118595939817206092.Spec : Prop :=
  ∀ n, P118595939817206092.a n = A198275 n

end A198275

/-! ## A198275.P8363264695192159069

`Δ[2*a(n-1)+n+4]` with `a(0)=11`
-/

namespace A198275.P8363264695192159069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11] fun n f1 =>
  2 * f1 (n - 1) + (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A198275.P8363264695192159069

namespace A198275

/-- `Δ[2*a(n-1)+n+4]` -/
def P8363264695192159069.Spec : Prop :=
  ∀ n, P8363264695192159069.a n = A198275 n

end A198275

/-! ## A198275.P15275409243618864106

`(A156203(n+2)+1)/2`
-/

namespace A198275.P15275409243618864106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156203 (n + 2) + 1 : ℚ) / 2

end

end A198275.P15275409243618864106

namespace A198275

/-- `(A156203(n+2)+1)/2` -/
def P15275409243618864106.Spec : Prop :=
  ∀ n, P15275409243618864106.a n = (A198275 n : ℚ)

end A198275

/-! ## A198275.P12707274184912356098

`and(A171389(n), A198276(n))`
-/

namespace A198275.P12707274184912356098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171389 n) (A198276 n)

end

end A198275.P12707274184912356098

namespace A198275

/-- `and(A171389(n), A198276(n))` -/
def P12707274184912356098.Spec : Prop :=
  ∀ n, P12707274184912356098.a n = A198275 n

end A198275

/-! ## A198275.P1537091954097260121

`xor(A020707(n), A171389(n))`
-/

namespace A198275.P1537091954097260121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A171389 n)

end

end A198275.P1537091954097260121

namespace A198275

/-- `xor(A020707(n), A171389(n))` -/
def P1537091954097260121.Spec : Prop :=
  ∀ n, P1537091954097260121.a n = A198275 n

end A198275

/-! ## A198275.P2824188031345060561

`xor(A110288(n), A126646(n+1))`
-/

namespace A198275.P2824188031345060561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110288 n) (A126646 (n + 1))

end

end A198275.P2824188031345060561

namespace A198275

/-- `xor(A110288(n), A126646(n+1))` -/
def P2824188031345060561.Spec : Prop :=
  ∀ n, P2824188031345060561.a n = A198275 n

end A198275

/-!
# A198276: a(n) = 19*2^n-1.

The programs for A198276, the canonical program `A198276.P1180485002531319585` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198276 has offset 0).

The definition of A198276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*2^n-1` (program `A198276.P1180485002531319585`, by `A198276.P1180485002531319585.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A198276.P1180485002531319585

`19*2^n-1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198276

/-- `19*2^n-1` -/
def P1180485002531319585.Spec : Prop :=
  ∀ n, P1180485002531319585.a n = A198276 n

theorem P1180485002531319585.correct : P1180485002531319585.Spec := by
  intro n
  simp only [A198276]

end A198276

/-! ## A198276.P17506148657790808551

`ogf((18-17x)/(1-3x+2x^2))`
-/

namespace A198276.P17506148657790808551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [18, -17] [1, -3, 2] n

end

end A198276.P17506148657790808551

namespace A198276

/-- `ogf((18-17x)/(1-3x+2x^2))` -/
def P17506148657790808551.Spec : Prop :=
  ∀ n, P17506148657790808551.a n = A198276 n

end A198276

/-! ## A198276.P6231926018867340900

`or(1, 2*a(n-1))` with `a(0)=18`
-/

namespace A198276.P6231926018867340900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18] fun n a =>
  Nat.lor 1 (2 * a (n - 1))

end

end A198276.P6231926018867340900

namespace A198276

/-- `or(1, 2*a(n-1))` -/
def P6231926018867340900.Spec : Prop :=
  ∀ n, (P6231926018867340900.a n : ℤ) = A198276 n

end A198276

/-! ## A198276.P14588547015333780258

`xor(1, 2*a(n-1))` with `a(0)=18`
-/

namespace A198276.P14588547015333780258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [18] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A198276.P14588547015333780258

namespace A198276

/-- `xor(1, 2*a(n-1))` -/
def P14588547015333780258.Spec : Prop :=
  ∀ n, (P14588547015333780258.a n : ℤ) = A198276 n

end A198276

/-! ## A198276.P16749096622048784366

`∑[2*a(n-1)]` with `a(0)=18, a(1)=19`
-/

namespace A198276.P16749096622048784366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 19] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198276.P16749096622048784366

namespace A198276

/-- `∑[2*a(n-1)]` -/
def P16749096622048784366.Spec : Prop :=
  ∀ n, (P16749096622048784366.a n : ℤ) = A198276 n

end A198276

/-! ## A198276.P15858567427445478365

`2*(a(n-1)+1/2)` with `a(0)=18`
-/

namespace A198276.P15858567427445478365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [18] fun n a =>
  2 * (a (n - 1) + (1 : ℚ) / 2)

end

end A198276.P15858567427445478365

namespace A198276

/-- `2*(a(n-1)+1/2)` -/
def P15858567427445478365.Spec : Prop :=
  ∀ n, P15858567427445478365.a n = (A198276 n : ℚ)

theorem P15858567427445478365.correct : P15858567427445478365.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A198276, Nat.add_sub_cancel, A198276.P15858567427445478365.a, A198276.P1180485002531319585.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A198276, Nat.add_sub_cancel, A198276.P15858567427445478365.a, A198276.P1180485002531319585.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A198276

/-! ## A198276.P4282163518354631953

`∑[a(n-1)+a(n-1)]` with `a(0)=18, a(1)=19`
-/

namespace A198276.P4282163518354631953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [18, 19] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A198276.P4282163518354631953

namespace A198276

/-- `∑[a(n-1)+a(n-1)]` -/
def P4282163518354631953.Spec : Prop :=
  ∀ n, (P4282163518354631953.a n : ℤ) = A198276 n

end A198276

/-! ## A198276.P12724612819843847639

`abs(1-A110288(n))`
-/

namespace A198276.P12724612819843847639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A110288 n|

end

end A198276.P12724612819843847639

namespace A198276

/-- `abs(1-A110288(n))` -/
def P12724612819843847639.Spec : Prop :=
  ∀ n, P12724612819843847639.a n = A198276 n

end A198276

/-! ## A198276.P12305522403338758941

`xor(2^n, A054135(n+4))`
-/

namespace A198276.P12305522403338758941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 ^ n : ℤ) (A054135 (n + 4))

end

end A198276.P12305522403338758941

namespace A198276

/-- `xor(2^n, A054135(n+4))` -/
def P12305522403338758941.Spec : Prop :=
  ∀ n, P12305522403338758941.a n = A198276 n

end A198276

/-! ## A198276.P12644966599739857459

`xor(A110288(n), A126646(n))`
-/

namespace A198276.P12644966599739857459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110288 n) (A126646 n)

end

end A198276.P12644966599739857459

namespace A198276

/-- `xor(A110288(n), A126646(n))` -/
def P12644966599739857459.Spec : Prop :=
  ∀ n, P12644966599739857459.a n = A198276 n

end A198276

/-! ## A198276.P9567315866499447160

`xor(A020707(n), A291557(n))`
-/

namespace A198276.P9567315866499447160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020707 n) (A291557 n)

end

end A198276.P9567315866499447160

namespace A198276

/-- `xor(A020707(n), A291557(n))` -/
def P9567315866499447160.Spec : Prop :=
  ∀ n, P9567315866499447160.a n = A198276 n

end A198276

/-! ## A198276.P752864592737853829

`xor(Δ[A020737(n)], A291557(n))`
-/

namespace A198276.P752864592737853829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A291557 n)

end

end A198276.P752864592737853829

namespace A198276

/-- `xor(Δ[A020737(n)], A291557(n))` -/
def P752864592737853829.Spec : Prop :=
  ∀ n, P752864592737853829.a n = A198276 n

end A198276

/-! ## A198276.P5618910301597830233

`or(A000079(n+1), A198275(n))`
-/

namespace A198276.P5618910301597830233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 (n + 1)) (A198275 n)

end

end A198276.P5618910301597830233

namespace A198276

/-- `or(A000079(n+1), A198275(n))` -/
def P5618910301597830233.Spec : Prop :=
  ∀ n, P5618910301597830233.a n = A198276 n

end A198276

/-! ## A198276.P5138619146089963439

`or(A005010(n+1), A198275(n))`
-/

namespace A198276.P5138619146089963439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005010 (n + 1)) (A198275 n)

end

end A198276.P5138619146089963439

namespace A198276

/-- `or(A005010(n+1), A198275(n))` -/
def P5138619146089963439.Spec : Prop :=
  ∀ n, P5138619146089963439.a n = A198276 n

end A198276

/-! ## A198276.P14817640455248577963

`xor(A000225(n), A005010(n+1))`
-/

namespace A198276.P14817640455248577963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000225 n) (A005010 (n + 1))

end

end A198276.P14817640455248577963

namespace A198276

/-- `xor(A000225(n), A005010(n+1))` -/
def P14817640455248577963.Spec : Prop :=
  ∀ n, P14817640455248577963.a n = A198276 n

end A198276

/-! ## A198276.P3130095333632593551

`or(A007283(n)-1, A198275(n))`
-/

namespace A198276.P3130095333632593551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007283 n - 1) (A198275 n)

end

end A198276.P3130095333632593551

namespace A198276

/-- `or(A007283(n)-1, A198275(n))` -/
def P3130095333632593551.Spec : Prop :=
  ∀ n, P3130095333632593551.a n = A198276 n

end A198276

/-! ## A198276.P3499350102438614325

`xor(A110287(n), A126646(n+1))`
-/

namespace A198276.P3499350102438614325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A110287 n) (A126646 (n + 1))

end

end A198276.P3499350102438614325

namespace A198276

/-- `xor(A110287(n), A126646(n+1))` -/
def P3499350102438614325.Spec : Prop :=
  ∀ n, P3499350102438614325.a n = A198276 n

end A198276

/-! ## A198276.P2673800952040358570

`xor(A091629(n+1), A171389(n))`
-/

namespace A198276.P2673800952040358570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A091629 (n + 1)) (A171389 n)

end

end A198276.P2673800952040358570

namespace A198276

/-- `xor(A091629(n+1), A171389(n))` -/
def P2673800952040358570.Spec : Prop :=
  ∀ n, P2673800952040358570.a n = A198276 n

end A198276

/-! ## A198276.P2387953427300604774

`xor(A081808(n+2), A086225(n))`
-/

namespace A198276.P2387953427300604774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A081808 (n + 2)) (A086225 n)

end

end A198276.P2387953427300604774

namespace A198276

/-- `xor(A081808(n+2), A086225(n))` -/
def P2387953427300604774.Spec : Prop :=
  ∀ n, P2387953427300604774.a n = A198276 n

end A198276

/-! ## A198276.P2352644354885563339

`xor(A126646(n+2), A175805(n))`
-/

namespace A198276.P2352644354885563339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A126646 (n + 2)) (A175805 n)

end

end A198276.P2352644354885563339

namespace A198276

/-- `xor(A126646(n+2), A175805(n))` -/
def P2352644354885563339.Spec : Prop :=
  ∀ n, P2352644354885563339.a n = A198276 n

end A198276

/-!
# A198277: a(n) is the smallest prime such that exactly n prime pairs (p,q) exist with a(n) = p * q + p + q.

The programs for A198277, there is no canonical definition to state claims against.
-/

/-! ## A198277.P6503178553984317873

`A343041(A008965(2*n+3))-A000007(n)`
-/

namespace A198277.P6503178553984317873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343041 (A008965 (2 * n + 3)).toNat - A000007 n

end

end A198277.P6503178553984317873

/-! ## A198277.P8895923084259255656

`eq[A253139(n+1), A316963(n)]`
-/

namespace A198277.P8895923084259255656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316963 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A198277.P8895923084259255656

/-!
# A198278: Number of 2nX2n 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198278, there is no canonical definition to state claims against.
-/

/-! ## A198278.P3129428748848800428

`A198285(∑[4*n]+1)`
-/

namespace A198278.P3129428748848800428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198278.P3129428748848800428

/-!
# A198279: Number of 2n X 4 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198279, the canonical program `A198279.P10387728051307862340` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198279 has offset 1).

The definition of A198279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198279.P5707521938421479231

`ogf((1-3x^2)/(1-4x-x^2+8x^3))`
-/

namespace A198279.P5707521938421479231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, -1, 8] n

end

end A198279.P5707521938421479231

namespace A198279

/-- `ogf((1-3x^2)/(1-4x-x^2+8x^3))` -/
def P5707521938421479231.Spec : Prop :=
  ∀ n, P5707521938421479231.a n = A198279 (n + 1)

end A198279

/-! ## A198279.P10387728051307862340

`4*a(n-1)+a(n-2)-8*a(n-3)` with `a(0)=1, a(1)=4, a(2)=14`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A198279

/-- `4*a(n-1)+a(n-2)-8*a(n-3)` -/
def P10387728051307862340.Spec : Prop :=
  ∀ n, P10387728051307862340.a n = A198279 (n + 1)

theorem P10387728051307862340.correct : P10387728051307862340.Spec := by
  intro n
  simp only [A198279, Nat.add_sub_cancel]

end A198279

/-! ## A198279.P1202171075934313141

`A198285(∑[n+1]+2)`
-/

namespace A198279.P1202171075934313141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198279.P1202171075934313141

namespace A198279

/-- `A198285(∑[n+1]+2)` -/
def P1202171075934313141.Spec : Prop :=
  ∀ n, P1202171075934313141.a n = A198279 (n + 1)

end A198279

/-! ## A198279.P12795428263585261547

`record[A198285(n+1)*A326822(n)]`
-/

namespace A198279.P12795428263585261547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (n + 1) * A326822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198279.P12795428263585261547

namespace A198279

/-- `record[A198285(n+1)*A326822(n)]` -/
def P12795428263585261547.Spec : Prop :=
  ∀ n, P12795428263585261547.a n = A198279 (n + 1)

end A198279

/-! ## A198279.P9543078703009206879

`record[A010054(n)*A198285(n+2)]`
-/

namespace A198279.P9543078703009206879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A198285 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198279.P9543078703009206879

namespace A198279

/-- `record[A010054(n)*A198285(n+2)]` -/
def P9543078703009206879.Spec : Prop :=
  ∀ n, P9543078703009206879.a n = A198279 (n + 1)

end A198279

/-!
# A198280: Number of 2n X 6 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198280, there is no canonical definition to state claims against.
-/

/-! ## A198280.P2472603542285701621

`A198285(∑[n+2]+4)`
-/

namespace A198280.P2472603542285701621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198280.P2472603542285701621

/-! ## A198280.P7472003032180310967

`lcm(2, A198285(A167614(n+1)))`
-/

namespace A198280.P7472003032180310967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A198285 (A167614 (n + 1)).toNat)

end

end A198280.P7472003032180310967

/-! ## A198280.P1663058375453247091

`A198285(A167614(n+1))+A011730(n)`
-/

namespace A198280.P1663058375453247091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A167614 (n + 1)).toNat + A011730 n

end

end A198280.P1663058375453247091

/-! ## A198280.P2457043024357422836

`A198285(A167614(n+1))+A185284(n)`
-/

namespace A198280.P2457043024357422836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A167614 (n + 1)).toNat + A185284 n

end

end A198280.P2457043024357422836

/-! ## A198280.P3048943728503638299

`A326681(n)+A198285(A167614(n+1))`
-/

namespace A198280.P3048943728503638299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326681 n + A198285 (A167614 (n + 1)).toNat

end

end A198280.P3048943728503638299

/-!
# A198281: Number of 2nX8 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198281, there is no canonical definition to state claims against.
-/

/-! ## A198281.P1094127394732269803

`A198285(∑[n+3]+7)`
-/

namespace A198281.P1094127394732269803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A198281.P1094127394732269803

/-!
# A198282: Number of 2n X 10 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198282, there is no canonical definition to state claims against.
-/

/-! ## A198282.P513784937312273735

`A198285(A374005(n+1))`
-/

namespace A198282.P513784937312273735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A374005 (n + 1)).toNat

end

end A198282.P513784937312273735

/-! ## A198282.P12938513572578312235

`A198285(A077169(n+5))`
-/

namespace A198282.P12938513572578312235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A077169 (n + 5)).toNat

end

end A198282.P12938513572578312235

/-! ## A198282.P259022687732913483

`A198285(A155212(n)+13)`
-/

namespace A198282.P259022687732913483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A155212 n + 13).toNat

end

end A198282.P259022687732913483

/-! ## A198282.P3766332340084039045

`A198285(A056000(n)+15)`
-/

namespace A198282.P3766332340084039045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A056000 n + 15).toNat

end

end A198282.P3766332340084039045

/-! ## A198282.P13831002153874949483

`A198285(eq[7, A066657(n)])`
-/

namespace A198282.P13831002153874949483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A198282.P13831002153874949483

/-!
# A198283: Number of 2nX12 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198283, there is no canonical definition to state claims against.
-/

/-! ## A198283.P18045787378307156740

`A198285(A374007(n+1))`
-/

namespace A198283.P18045787378307156740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A374007 (n + 1)).toNat

end

end A198283.P18045787378307156740

/-! ## A198283.P17571844853735151793

`A198285(A056115(n)+21)`
-/

namespace A198283.P17571844853735151793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A056115 n + 21).toNat

end

end A198283.P17571844853735151793

/-! ## A198283.P8803362797973965516

`A198285(A167499(n+4)+1)`
-/

namespace A198283.P8803362797973965516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A167499 (n + 4) + 1).toNat

end

end A198283.P8803362797973965516

/-! ## A198283.P10504119045997530223

`A198285(A077169(n+6)+1)`
-/

namespace A198283.P10504119045997530223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A077169 (n + 6) + 1).toNat

end

end A198283.P10504119045997530223

/-!
# A198284: Number of 2n X 14 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198284, there is no canonical definition to state claims against.
-/

/-! ## A198284.P18163735111708965440

`A198285(A374008(n+1))`
-/

namespace A198284.P18163735111708965440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198285 (A374008 (n + 1)).toNat

end

end A198284.P18163735111708965440

/-!
# A198285: T(n,k)=Number of 2nX2k 0..2 arrays with values 0..2 introduced in row major order and each element equal to exactly two horizontal and vertical neighbors.

The programs for A198285, there is no canonical definition to state claims against.
-/

/-! ## A198285.P11832330550060756464

`A045779(A055372(n)%A001562(n+1))`
-/

namespace A198285.P11832330550060756464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045779 (Int.tmod (A055372 n) (A001562 (n + 1))).toNat

end

end A198285.P11832330550060756464

/-!
# A198286: a(n) = Sum_{d|n} (A053143(d) or smallest square divisible by d).

The programs for A198286, the canonical program `A198286.P8684758332373376771` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A198286 has offset 1).

The definition of A198286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A198286.P6929741441836458733

`∑{d}[n+1, A053143(#)]`
-/

namespace A198286.P6929741441836458733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053143 d

end

end A198286.P6929741441836458733

namespace A198286

/-- `∑{d}[n+1, A053143(#)]` -/
def P6929741441836458733.Spec : Prop :=
  ∀ n, P6929741441836458733.a n = A198286 (n + 1)

end A198286

/-! ## A198286.P9998754451013693347

`∑{d}[n+1, A019554(#)²]`
-/

namespace A198286.P9998754451013693347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019554 d ^ 2

end

end A198286.P9998754451013693347

namespace A198286

/-- `∑{d}[n+1, A019554(#)²]` -/
def P9998754451013693347.Spec : Prop :=
  ∀ n, P9998754451013693347.a n = A198286 (n + 1)

end A198286

/-! ## A198286.P6150445692675469552

`∑{d}[n+1, #*A007913(#)]`
-/

namespace A198286.P6150445692675469552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A007913 d

end

end A198286.P6150445692675469552

namespace A198286

/-- `∑{d}[n+1, #*A007913(#)]` -/
def P6150445692675469552.Spec : Prop :=
  ∀ n, P6150445692675469552.a n = A198286 (n + 1)

end A198286

/-! ## A198286.P5753314882636362947

`∑{d}[n+1, (#/A000188(#))²]`
-/

namespace A198286.P5753314882636362947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℚ) / (A000188 d : ℚ)) ^ 2

end

end A198286.P5753314882636362947

namespace A198286

/-- `∑{d}[n+1, (#/A000188(#))²]` -/
def P5753314882636362947.Spec : Prop :=
  ∀ n, P5753314882636362947.a n = (A198286 (n + 1) : ℚ)

end A198286

/-! ## A198286.P13237858537925731418

`∑{d}[n+1, #*#/A008833(#)]`
-/

namespace A198286.P13237858537925731418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) * ((d : ℚ) / (A008833 d : ℚ))

end

end A198286.P13237858537925731418

namespace A198286

/-- `∑{d}[n+1, #*#/A008833(#)]` -/
def P13237858537925731418.Spec : Prop :=
  ∀ n, P13237858537925731418.a n = (A198286 (n + 1) : ℚ)

end A198286

/-! ## A198286.P1063969014589704822

`∑{d}[n+1, A000290(#/A000188(#))]`
-/

namespace A198286.P1063969014589704822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000290 (SequenceMachineLib.roundAway ((d : ℚ) / (A000188 d : ℚ))).toNat

end

end A198286.P1063969014589704822

namespace A198286

/-- `∑{d}[n+1, A000290(#/A000188(#))]` -/
def P1063969014589704822.Spec : Prop :=
  ∀ n, P1063969014589704822.a n = A198286 (n + 1)

end A198286

/-! ## A198286.P8684758332373376771

`∑{d}[n+1, A061020(#)*A181797((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A198286

/-- `∑{d}[n+1, A061020(#)*A181797((n+1)/#)]` -/
def P8684758332373376771.Spec : Prop :=
  ∀ n, P8684758332373376771.a n = A198286 (n + 1)

theorem P8684758332373376771.correct : P8684758332373376771.Spec := by
  intro n
  simp only [A198286, Nat.add_sub_cancel]

end A198286

/-!
# A198287: Number of 2n X 2 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly one horizontal and vertical neighbor.

The programs for A198287, there is no canonical definition to state claims against.
-/

/-! ## A198287.P1935689688467257000

`23*a(n-1)-103*a(n-2)+81*a(n-3)` with `a(0)=2, a(1)=17, a(2)=272`
-/

namespace A198287.P1935689688467257000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 17, 272] fun n a =>
  23 * a (n - 1) - 103 * a (n - 2) + 81 * a (n - 3)

end

end A198287.P1935689688467257000

/-! ## A198287.P12171841840284682602

`A198290(∑[n]+1)`
-/

namespace A198287.P12171841840284682602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198290 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198287.P12171841840284682602

/-! ## A198287.P7875086128793933184

`A198596(∑[n]+1)`
-/

namespace A198287.P7875086128793933184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198596 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A198287.P7875086128793933184

/-!
# A198288: Number of 2nX4 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly one horizontal and vertical neighbor.

The programs for A198288, there is no canonical definition to state claims against.
-/

/-! ## A198288.P17635315037291756292

`A198290(∑[n+1]+2)`
-/

namespace A198288.P17635315037291756292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198290 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A198288.P17635315037291756292

/-! ## A198288.P16259467698181634219

`record[A198290(3*n+2)]`
-/

namespace A198288.P16259467698181634219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198290 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A198288.P16259467698181634219

/-!
# A198289: Number of 2nX6 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly one horizontal and vertical neighbor.

The programs for A198289, there is no canonical definition to state claims against.
-/

/-! ## A198289.P2306768792487464320

`A198290(∑[n+2]+4)`
-/

namespace A198289.P2306768792487464320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198290 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A198289.P2306768792487464320

/-!
# A198290: T(n,k)=Number of 2nX2k 0..3 arrays with values 0..3 introduced in row major order and each element equal to exactly one horizontal and vertical neighbor.

The programs for A198290, there is no canonical definition to state claims against.
-/

/-! ## A198290.P2375073105855273483

`A198596(n+1)-A318679(A001906(2*n+1))`
-/

namespace A198290.P2375073105855273483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198596 (n + 1) - A318679 (A001906 (2 * n + 1)).toNat

end

end A198290.P2375073105855273483

/-!
# A198292: Irregular triangle with row n being A045917(n) copies of n.

The programs for A198292, there is no canonical definition to state claims against.
-/

/-! ## A198292.P4820100169708571688

`∑[char[A045919(n+1)]]+1`
-/

namespace A198292.P4820100169708571688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045919 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A198292.P4820100169708571688

/-! ## A198292.P3312470801195476687

`∑[char[∑[A045917(n+1)]]]+1`
-/

namespace A198292.P3312470801195476687
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A198292.P3312470801195476687

/-! ## A198292.P10189719845118650098

`∑[char[∑[A061358(2*n)]]]+1`
-/

namespace A198292.P10189719845118650098
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A198292.P10189719845118650098

/-! ## A198292.P17300839703074260956

`A001414(A350455(n+2))/2`
-/

namespace A198292.P17300839703074260956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001414 (A350455 (n + 2)).toNat : ℚ) / 2

end

end A198292.P17300839703074260956

/-! ## A198292.P6575142165222274060

`A184995(n+2)+A182138(n+2)`
-/

namespace A198292.P6575142165222274060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184995 (n + 2) + A182138 (n + 2)

end

end A198292.P6575142165222274060

/-! ## A198292.P9622510938400606078

`A182138(n+2)+A020639(A350455(n+2))`
-/

namespace A198292.P9622510938400606078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182138 (n + 2) + A020639 (A350455 (n + 2)).toNat

end

end A198292.P9622510938400606078

/-! ## A198292.P13735678317642145928

`A067629(A350455(n+2))`
-/

namespace A198292.P13735678317642145928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (A350455 (n + 2)).toNat

end

end A198292.P13735678317642145928

/-! ## A198292.P1106579381640504227

`A234316(n+2)-A182138(n+2)`
-/

namespace A198292.P1106579381640504227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234316 (n + 2) - A182138 (n + 2)

end

end A198292.P1106579381640504227

/-! ## A198292.P4136762537717768026

`(A234316(n+2)+A184995(n+2))/2`
-/

namespace A198292.P4136762537717768026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A234316 (n + 2) + A184995 (n + 2) : ℚ) / 2

end

end A198292.P4136762537717768026

/-! ## A198292.P6266301925093708360

`A001281(A234316(n+2)+A184995(n+2))`
-/

namespace A198292.P6266301925093708360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A234316 (n + 2) + A184995 (n + 2)).toNat

end

end A198292.P6266301925093708360

/-!
# A198293: a(n) = (1/n)*A205406(n).

The programs for A198293, there is no canonical definition to state claims against.
-/

/-! ## A198293.P16697205146477702043

`A205406(n+1)/(n+1)`
-/

namespace A198293.P16697205146477702043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205406 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A198293.P16697205146477702043

/-! ## A198293.P18309753101320199754

`1/(n+1)*A205406(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A198293.P18309753101320199754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ) * (A205406 (n + 1) : ℚ)

end

end A198293.P18309753101320199754

/-! ## A198293.P13278262614136716512

`A028310(A205406(n+1)%A028310(n))`
-/

namespace A198293.P13278262614136716512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A205406 (n + 1)) (A028310 n)).toNat

end

end A198293.P13278262614136716512

/-! ## A198293.P14540873018194273988

`(A087811(A205402(n+1))-A205405(n+1))/(n+1)`
-/

namespace A198293.P14540873018194273988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087811 (A205402 (n + 1)).toNat - A205405 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A198293.P14540873018194273988

/-! ## A198293.P8458519832625014317

`A205400(A205401(n+1))/(n+1)`
-/

namespace A198293.P8458519832625014317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205400 (A205401 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A198293.P8458519832625014317

/-! ## A198293.P9677360819218721968

`A118235(A205406(n+1)+A000217(n))`
-/

namespace A198293.P9677360819218721968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118235 (A205406 (n + 1) + A000217 n).toNat

end

end A198293.P9677360819218721968

/-! ## A198293.P15934892594262832555

`A007913(A007913(n+1)*A205406(n+1))`
-/

namespace A198293.P15934892594262832555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) * A205406 (n + 1)).toNat

end

end A198293.P15934892594262832555

/-! ## A198293.P3641473478710418425

`A055231(A055231(n+1)*A205406(n+1))`
-/

namespace A198293.P3641473478710418425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (A055231 (n + 1) * A205406 (n + 1)).toNat

end

end A198293.P3641473478710418425

/-! ## A198293.P12772689116364200265

`gcd(A000290(A000290(n)), A205406(n+1))`
-/

namespace A198293.P12772689116364200265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000290 (A000290 n).toNat) (A205406 (n + 1))

end

end A198293.P12772689116364200265

/-! ## A198293.P11313953776106690185

`A352517(A205406(n+1)-n)`
-/

namespace A198293.P11313953776106690185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352517 (A205406 (n + 1) - (n : ℤ)).toNat

end

end A198293.P11313953776106690185

/-!
# A198295: Riordan array (1, x*(1+x)/(1-x^3)).

The programs for A198295, there is no canonical definition to state claims against.
-/

/-! ## A198295.P7318342296656735492

`lcm(A006519(A174544(n)²), A344566(n))`
-/

namespace A198295.P7318342296656735492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006519 (A174544 n ^ 2).toNat) (A344566 n)

end

end A198295.P7318342296656735492

/-! ## A198295.P11008036243585022042

`abs(A344566(n)%A051972(n+1))`
-/

namespace A198295.P11008036243585022042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A344566 n) (A051972 (n + 1))|

end

end A198295.P11008036243585022042

/-! ## A198295.P11760201862351546221

`lcm(A008683(A022168(n)), A344566(n))`
-/

namespace A198295.P11760201862351546221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (A022168 n).toNat) (A344566 n)

end

end A198295.P11760201862351546221

/-! ## A198295.P17944465546844107824

`gcd(A016371(A000040(n+1)), A344566(n))`
-/

namespace A198295.P17944465546844107824
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016371 (A000040 (n + 1)).toNat) (A344566 n)

end

end A198295.P17944465546844107824

/-! ## A198295.P16301593438564385595

`and(A120992(A227646(n+1)), A155161(n))`
-/

namespace A198295.P16301593438564385595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A120992 (A227646 (n + 1)).toNat) (A155161 n)

end

end A198295.P16301593438564385595

/-!
# A198296: G.f.: exp( Sum_{n>=1} (x^n/n) / Product_{d|n} (1 - d*x^n) ).

The programs for A198296, there is no canonical definition to state claims against.
-/

/-! ## A198296.P1320435546922328349

`A325457(A321566(n))-A037838(n+1)`
-/

namespace A198296.P1320435546922328349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325457 (A321566 n).toNat - A037838 (n + 1)

end

end A198296.P1320435546922328349

/-! ## A198296.P9960642269857096400

`floor(A223034(n)/A284728(n))`
-/

namespace A198296.P9960642269857096400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A223034 n : ℚ) / (A284728 n : ℚ)⌋

end

end A198296.P9960642269857096400

/-! ## A198296.P18230364681635454007

`A118168(A007649(n)+A000120(n))`
-/

namespace A198296.P18230364681635454007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A007649 n + A000120 n).toNat

end

end A198296.P18230364681635454007

/-! ## A198296.P17094436914555823924

`A118168(A039653(n)+A008930(n))`
-/

namespace A198296.P17094436914555823924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A039653 n + A008930 n).toNat

end

end A198296.P17094436914555823924

/-! ## A198296.P6316018227781797060

`A156261(A000213(n))+A016116(n)`
-/

namespace A198296.P6316018227781797060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156261 (A000213 n).toNat + A016116 n

end

end A198296.P6316018227781797060

/-!
# A198298: Pandigital numbers (A050278) with each product of adjacent digits visible as a substring of the digits.

The programs for A198298, there is no canonical definition to state claims against.
-/

/-! ## A198298.P17483186187178614497

`A203569(A296898(n+1)+2)`
-/

namespace A198298.P17483186187178614497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203569 (A296898 (n + 1) + 2).toNat

end

end A198298.P17483186187178614497

/-! ## A198298.P16487010340379015121

`A203569(A296898(n+3))`
-/

namespace A198298.P16487010340379015121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203569 (A296898 (n + 3)).toNat

end

end A198298.P16487010340379015121

