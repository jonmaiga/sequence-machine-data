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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A216600: Number of ways to write n as a product with all factors <= n/4.

The programs for A216600, there is no canonical definition to state claims against.
-/

/-! ## A216600.P13329732534106785907

`A216602(A003961(n+1))`
-/

namespace A216600.P13329732534106785907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A003961 (n + 1)).toNat

end

end A216600.P13329732534106785907

/-! ## A216600.P16876048468422189228

`A216602(A045965(n+1))`
-/

namespace A216600.P16876048468422189228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A045965 (n + 1)).toNat

end

end A216600.P16876048468422189228

/-! ## A216600.P8024525130231619350

`A216602(A064988(n+1))`
-/

namespace A216600.P8024525130231619350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A064988 (n + 1)).toNat

end

end A216600.P8024525130231619350

/-! ## A216600.P8457957782988456860

`A216602(A253885(n)+1)`
-/

namespace A216600.P8457957782988456860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A253885 n + 1).toNat

end

end A216600.P8457957782988456860

/-! ## A216600.P18273523159933748209

`A216602(A332818(n+1))`
-/

namespace A216600.P18273523159933748209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A332818 (n + 1)).toNat

end

end A216600.P18273523159933748209

/-! ## A216600.P16438413828937935182

`A216602(or(1, A253885(n)))`
-/

namespace A216600.P16438413828937935182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (Int.lor 1 (A253885 n)).toNat

end

end A216600.P16438413828937935182

/-! ## A216600.P15103318315608334443

`A216602(A243501(n+1)-1)`
-/

namespace A216600.P15103318315608334443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A243501 (n + 1) - 1).toNat

end

end A216600.P15103318315608334443

/-! ## A216600.P14636391151581499433

`A216602(A348746(n+1))`
-/

namespace A216600.P14636391151581499433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A348746 (n + 1)).toNat

end

end A216600.P14636391151581499433

/-!
# A216601: Number of ways to write n as a product with all factors <= n/5.

The programs for A216601, there is no canonical definition to state claims against.
-/

/-! ## A216601.P8523243785121799974

`A216602(A290641(n+1))`
-/

namespace A216601.P8523243785121799974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A290641 (n + 1)).toNat

end

end A216601.P8523243785121799974

/-! ## A216601.P7815032971490082631

`A216602(A319525(n+1))`
-/

namespace A216601.P7815032971490082631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A319525 (n + 1)).toNat

end

end A216601.P7815032971490082631

/-! ## A216601.P15762506344533899601

`A216602(A357983(n+1))`
-/

namespace A216601.P15762506344533899601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A357983 (n + 1)).toNat

end

end A216601.P15762506344533899601

/-! ## A216601.P14097260888597037529

`A216602(A245453(n+1))`
-/

namespace A216601.P14097260888597037529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216602 (A245453 (n + 1)).toNat

end

end A216601.P14097260888597037529

/-! ## A216601.P12521208902802093447

`A087773(xor(1, A087825(3*n+4)))`
-/

namespace A216601.P12521208902802093447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087773 (Int.xor 1 (A087825 (3 * n + 4))).toNat

end

end A216601.P12521208902802093447

/-!
# A216602: Number of ways to write n as a product with all factors <= n/6.

The programs for A216602, there is no canonical definition to state claims against.
-/

/-! ## A216602.P17647594276156429925

`A216601(A347123(n+1)%A195941(n+1))`
-/

namespace A216602.P17647594276156429925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216601 (Int.tmod (A347123 (n + 1)) (A195941 (n + 1))).toNat

end

end A216602.P17647594276156429925

/-! ## A216602.P17746724304759552769

`A216601(A347123(n+1))^A062513(A000124(n))`
-/

namespace A216602.P17746724304759552769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216601 (A347123 (n + 1)).toNat : ℚ) ^ (A062513 (A000124 n).toNat : ℤ)

end

end A216602.P17746724304759552769

/-! ## A216602.P5040020609239058368

`A216601(A347123(n+1))%A129129(A001106(n))`
-/

namespace A216602.P5040020609239058368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216601 (A347123 (n + 1)).toNat) (A129129 (A001106 n).toNat)

end

end A216602.P5040020609239058368

/-! ## A216602.P13672090182004950474

`A216601(A107809(n+1))+A216601(A347123(n+1))`
-/

namespace A216602.P13672090182004950474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216601 (A107809 (n + 1)).toNat + A216601 (A347123 (n + 1)).toNat

end

end A216602.P13672090182004950474

/-! ## A216602.P3836522194914871541

`A216601(A347123(n+1))^A062513(A000463(n+1))`
-/

namespace A216602.P3836522194914871541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216601 (A347123 (n + 1)).toNat : ℚ) ^ (A062513 (A000463 (n + 1)).toNat : ℤ)

end

end A216602.P3836522194914871541

/-! ## A216602.P4905214245386528442

`A216601(A347123(n+1))^A014963(A050322(n+1))`
-/

namespace A216602.P4905214245386528442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216601 (A347123 (n + 1)).toNat : ℚ) ^ (A014963 (A050322 (n + 1)).toNat : ℤ)

end

end A216602.P4905214245386528442

/-! ## A216602.P3413234495526315426

`A216601(A347123(n+1))^A062513(A079080(n+1))`
-/

namespace A216602.P3413234495526315426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216601 (A347123 (n + 1)).toNat : ℚ) ^ (A062513 (A079080 (n + 1)).toNat : ℤ)

end

end A216602.P3413234495526315426

/-! ## A216602.P5950284791619087014

`A091090(A064400(n+1))*A216601(A347123(n+1))`
-/

namespace A216602.P5950284791619087014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (A064400 (n + 1)).toNat * A216601 (A347123 (n + 1)).toNat

end

end A216602.P5950284791619087014

/-!
# A216603: Indices n for which A216557(n)=0, i.e., n does not reappear as substring in its orbit under A216556.

The programs for A216603, there is no canonical definition to state claims against.
-/

/-! ## A216603.P5652578131278876977

`eq[0, A216557(n)]`
-/

namespace A216603.P5652578131278876977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216603.P5652578131278876977

/-! ## A216603.P2498909575994650497

`lt[A216557(n+1), 1]+1`
-/

namespace A216603.P2498909575994650497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A216603.P2498909575994650497

/-! ## A216603.P2663286196754919289

`A000027(lt[A216557(n), 1])`
-/

namespace A216603.P2663286196754919289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A216603.P2663286196754919289

/-! ## A216603.P4306218914958678427

`lt[A216557(A028310(n)), 1]`
-/

namespace A216603.P4306218914958678427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216603.P4306218914958678427

/-! ## A216603.P7910514058891221797

`lt[A216557(n), A002828(n)]`
-/

namespace A216603.P7910514058891221797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216603.P7910514058891221797

/-! ## A216603.P10105436960091433252

`lt[A216557(n), A010127(n)]`
-/

namespace A216603.P10105436960091433252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216603.P10105436960091433252

/-! ## A216603.P18305470066070558676

`lt[A216557(n), A054055(n)]`
-/

namespace A216603.P18305470066070558676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216603.P18305470066070558676

/-! ## A216603.P15252664437551166271

`lt[A216557(n)², A007306(n)]`
-/

namespace A216603.P15252664437551166271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216603.P15252664437551166271

/-! ## A216603.P17390464777033749981

`lt[A216557(n), A000005(n+1)]`
-/

namespace A216603.P17390464777033749981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216603.P17390464777033749981

/-! ## A216603.P8804708229827529970

`lt[A216557(n), A001221(n+1)]`
-/

namespace A216603.P8804708229827529970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216557 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A216603.P8804708229827529970

/-!
# A216604: G.f. satisfies: A(x) = (1 + x*(1-x)*A(x)) * (1 + x^2*A(x)).

The programs for A216604, there is no canonical definition to state claims against.
-/

/-! ## A216604.P4018762951197234349

`∑[A346503(n)]`
-/

namespace A216604.P4018762951197234349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216604.P4018762951197234349

/-! ## A216604.P9309868044371019718

`A329664(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A216604.P9309868044371019718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A329664 n + a (n - 2)

end

end A216604.P9309868044371019718

/-! ## A216604.P3077442186244765004

`∑[abs(∑[A033999(n)*A329664(n)])]`
-/

namespace A216604.P3077442186244765004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A329664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216604.P3077442186244765004

/-! ## A216604.P18177161572611707747

`a(n-1)+A346503(n)%A164216(n)` with `a(0)=1`
-/

namespace A216604.P18177161572611707747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A346503 n) (A164216 n)

end

end A216604.P18177161572611707747

/-! ## A216604.P12220025568196028707

`∑[A001006(n+1)-2*A307578(n+1)]`
-/

namespace A216604.P12220025568196028707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) - 2 * A307578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216604.P12220025568196028707

/-!
# A216605: Expansion of g.f. (6 + 5*x - 20*x^2 - 12*x^3 + 12*x^4 + 3*x^5)/(1 + x - 5*x^2 - 4*x^3 + 6*x^4 + 3*x^5 - x^6).

The programs for A216605, the canonical program `A216605.P2296065383681015352` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216605 has offset 0).

The definition of A216605 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((6+5x-20x^2-12x^3+12x^4+3x^5)/(1+x-5x^2-4x^3+6x^4+3x^5-x^6))` (program `A216605.P2296065383681015352`, by `A216605.P2296065383681015352.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A216605.P2296065383681015352

`ogf((6+5x-20x^2-12x^3+12x^4+3x^5)/(1+x-5x^2-4x^3+6x^4+3x^5-x^6))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A216605

/-- `ogf((6+5x-20x^2-12x^3+12x^4+3x^5)/(1+x-5x^2-4x^3+6x^4+3x^5-x^6))` -/
def P2296065383681015352.Spec : Prop :=
  ∀ n, P2296065383681015352.a n = A216605 n

theorem P2296065383681015352.correct : P2296065383681015352.Spec := by
  intro n
  simp only [A216605]

end A216605

/-! ## A216605.P7941623014633336147

`A116405(A000217(n))+A094650(n)`
-/

namespace A216605.P7941623014633336147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116405 (A000217 n).toNat + A094650 n

end

end A216605.P7941623014633336147

namespace A216605

/-- `A116405(A000217(n))+A094650(n)` -/
def P7941623014633336147.Spec : Prop :=
  ∀ n, P7941623014633336147.a n = A216605 n

end A216605

/-! ## A216605.P3322111094008147140

`A116405(A000217(n))+A033999(n)*A189234(n)`
-/

namespace A216605.P3322111094008147140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116405 (A000217 n).toNat + A033999 n * A189234 n

end

end A216605.P3322111094008147140

namespace A216605

/-- `A116405(A000217(n))+A033999(n)*A189234(n)` -/
def P3322111094008147140.Spec : Prop :=
  ∀ n, P3322111094008147140.a n = A216605 n

end A216605

/-! ## A216605.P3114641879649199704

`A116405(A000217(n))+A009001(2*n)*A189234(n)`
-/

namespace A216605.P3114641879649199704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116405 (A000217 n).toNat + A009001 (2 * n) * A189234 n

end

end A216605.P3114641879649199704

namespace A216605

/-- `A116405(A000217(n))+A009001(2*n)*A189234(n)` -/
def P3114641879649199704.Spec : Prop :=
  ∀ n, P3114641879649199704.a n = A216605 n

end A216605

/-! ## A216605.P16957020706693733547

`A116405(A000217(n))+A010892(3*n)*A189234(n)`
-/

namespace A216605.P16957020706693733547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116405 (A000217 n).toNat + A010892 (3 * n) * A189234 n

end

end A216605.P16957020706693733547

namespace A216605

/-- `A116405(A000217(n))+A010892(3*n)*A189234(n)` -/
def P16957020706693733547.Spec : Prop :=
  ∀ n, P16957020706693733547.a n = A216605 n

end A216605

/-!
# A216606: Decimal expansion of 360/7.

The programs for A216606, the canonical program `A216606.P6742388286117937420` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216606 has offset 2).

The definition of A216606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216606.P6742388286117937420

`a(n-6)` with `a(0)=5, a(1)=1, a(2)=4, a(3)=2, a(4)=8, a(5)=5, a(6)=7`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A216606

/-- `a(n-6)` -/
def P6742388286117937420.Spec : Prop :=
  ∀ n, (P6742388286117937420.a n : ℤ) = A216606 (n + 2)

theorem P6742388286117937420.correct : P6742388286117937420.Spec := by
  intro n
  simp only [A216606, Nat.add_sub_cancel]

end A216606

/-!
# A216607: The sequence used to represent partition binary diagram as an array.

The programs for A216607, the canonical program `A216607.P4106284041166377357` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216607 has offset 1).

The definition of A216607 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167268, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216607.P4106284041166377357

`(A167268(n+1)-2)/4`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216607

/-- `(A167268(n+1)-2)/4` -/
def P4106284041166377357.Spec : Prop :=
  ∀ n, P4106284041166377357.a n = (A216607 (n + 1) : ℚ)

end A216607

/-! ## A216607.P11236375233100295513

`floor(sqrt(n))-n%∑[char[n²]]`
-/

namespace A216607.P11236375233100295513
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt n : ℤ) - ((n % (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A216607.P11236375233100295513

namespace A216607

/-- `floor(sqrt(n))-n%∑[char[n²]]` -/
def P11236375233100295513.Spec : Prop :=
  ∀ n, P11236375233100295513.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P16266837201873139542

`(∑[2*n]%comp[n²])%(n+1)`
-/

namespace A216607.P16266837201873139542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n % (n + 1)

end

end A216607.P16266837201873139542

namespace A216607

/-- `(∑[2*n]%comp[n²])%(n+1)` -/
def P16266837201873139542.Spec : Prop :=
  ∀ n, (P16266837201873139542.a n : ℤ) = A216607 (n + 1)

end A216607

/-! ## A216607.P10473141262940937332

`((n+1)*floor(sqrt(n+1)))%∑[char[n²]]`
-/

namespace A216607.P10473141262940937332
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.sqrt (n + 1) % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216607.P10473141262940937332

namespace A216607

/-- `((n+1)*floor(sqrt(n+1)))%∑[char[n²]]` -/
def P10473141262940937332.Spec : Prop :=
  ∀ n, (P10473141262940937332.a n : ℤ) = A216607 (n + 1)

end A216607

/-! ## A216607.P6172684491625310101

`floor(ceil(sqrt(4*(n+1)))²/4)-(n+1)`
-/

namespace A216607.P6172684491625310101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈Real.sqrt (4 * (n + 1) : ℝ)⌉ ^ 2 : ℚ) / 4⌋ - (n + 1 : ℤ)

end

end A216607.P6172684491625310101

namespace A216607

/-- `floor(ceil(sqrt(4*(n+1)))²/4)-(n+1)` -/
def P6172684491625310101.Spec : Prop :=
  ∀ n, P6172684491625310101.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P2122443791981605941

`floor(A082375(n)/2)`
-/

namespace A216607.P2122443791981605941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A082375 n : ℚ) / 2⌋

end

end A216607.P2122443791981605941

namespace A216607

/-- `floor(A082375(n)/2)` -/
def P2122443791981605941.Spec : Prop :=
  ∀ n, P2122443791981605941.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P13176919931704997065

`floor(A152204(n)/4)`
-/

namespace A216607.P13176919931704997065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152204 n : ℚ) / 4⌋

end

end A216607.P13176919931704997065

namespace A216607

/-- `floor(A152204(n)/4)` -/
def P13176919931704997065.Spec : Prop :=
  ∀ n, P13176919931704997065.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P11208833374157043164

`val(A181666(n+1), 4)`
-/

namespace A216607.P11208833374157043164
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181666 (n + 1)).toNat 4

end

end A216607.P11208833374157043164

namespace A216607

/-- `val(A181666(n+1), 4)` -/
def P11208833374157043164.Spec : Prop :=
  ∀ n, (P11208833374157043164.a n : ℤ) = A216607 (n + 1)

end A216607

/-! ## A216607.P6816756233414777437

`A004526(A082375(n))`
-/

namespace A216607.P6816756233414777437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A082375 n).toNat

end

end A216607.P6816756233414777437

namespace A216607

/-- `A004526(A082375(n))` -/
def P6816756233414777437.Spec : Prop :=
  ∀ n, P6816756233414777437.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P17019485306668665244

`A002265(A152204(n))`
-/

namespace A216607.P17019485306668665244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A152204 n).toNat

end

end A216607.P17019485306668665244

namespace A216607

/-- `A002265(A152204(n))` -/
def P17019485306668665244.Spec : Prop :=
  ∀ n, P17019485306668665244.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P17595184815270219112

`A002265(A084346(n+1))`
-/

namespace A216607.P17595184815270219112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A084346 (n + 1)).toNat

end

end A216607.P17595184815270219112

namespace A216607

/-- `A002265(A084346(n+1))` -/
def P17595184815270219112.Spec : Prop :=
  ∀ n, P17595184815270219112.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P3189656268930710752

`A002265(A167268(n+1))`
-/

namespace A216607.P3189656268930710752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A167268 (n + 1)).toNat

end

end A216607.P3189656268930710752

namespace A216607

/-- `A002265(A167268(n+1))` -/
def P3189656268930710752.Spec : Prop :=
  ∀ n, P3189656268930710752.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P8080496774377415122

`A152467(A209634(n+1))`
-/

namespace A216607.P8080496774377415122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A209634 (n + 1)).toNat

end

end A216607.P8080496774377415122

namespace A216607

/-- `A152467(A209634(n+1))` -/
def P8080496774377415122.Spec : Prop :=
  ∀ n, P8080496774377415122.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P17855810422832946560

`A004526(A122196(n+1)-1)`
-/

namespace A216607.P17855810422832946560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A122196 (n + 1) - 1).toNat

end

end A216607.P17855810422832946560

namespace A216607

/-- `A004526(A122196(n+1)-1)` -/
def P17855810422832946560.Spec : Prop :=
  ∀ n, P17855810422832946560.a n = A216607 (n + 1)

end A216607

/-! ## A216607.P15520000081945775032

`val(A062052(n+1), 4)`
-/

namespace A216607.P15520000081945775032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A062052 (n + 1)).toNat 4

end

end A216607.P15520000081945775032

namespace A216607

/-- `val(A062052(n+1), 4)` -/
def P15520000081945775032.Spec : Prop :=
  ∀ n, (P15520000081945775032.a n : ℤ) = A216607 (n + 1)

end A216607

/-! ## A216607.P980635421699591562

`val(A192112(n+2), 4)`
-/

namespace A216607.P980635421699591562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A192112 (n + 2)).toNat 4

end

end A216607.P980635421699591562

namespace A216607

/-- `val(A192112(n+2), 4)` -/
def P980635421699591562.Spec : Prop :=
  ∀ n, (P980635421699591562.a n : ℤ) = A216607 (n + 1)

end A216607

/-! ## A216607.P14205203980922015767

`val(A192157(n+2), 9)`
-/

namespace A216607.P14205203980922015767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A192157 (n + 2)).toNat 9

end

end A216607.P14205203980922015767

namespace A216607

/-- `val(A192157(n+2), 9)` -/
def P14205203980922015767.Spec : Prop :=
  ∀ n, (P14205203980922015767.a n : ℤ) = A216607 (n + 1)

end A216607

/-! ## A216607.P14848354490455945975

`A239002(A173284(n))`
-/

namespace A216607.P14848354490455945975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 (A173284 n).toNat

end

end A216607.P14848354490455945975

namespace A216607

/-- `A239002(A173284(n))` -/
def P14848354490455945975.Spec : Prop :=
  ∀ n, P14848354490455945975.a n = A216607 (n + 1)

end A216607

/-!
# A216608: Number of horizontal, diagonal and antidiagonal neighbor colorings of the odd squares of an n X n array with new integer colors introduced in row major order.

The programs for A216608, there is no canonical definition to state claims against.
-/

/-! ## A216608.P10982954708056129751

`A216612(∑[4*n]+1)`
-/

namespace A216608.P10982954708056129751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216608.P10982954708056129751

/-! ## A216608.P308965388604829411

`or(n%2, A216612(A001844(n)))`
-/

namespace A216608.P308965388604829411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n % 2 : ℕ) : ℤ) (A216612 (A001844 n).toNat)

end

end A216608.P308965388604829411

/-! ## A216608.P4006869557323901316

`A216612(A001844(n))+A025469(n)`
-/

namespace A216608.P4006869557323901316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A001844 n).toNat + A025469 n

end

end A216608.P4006869557323901316

/-!
# A216609: Number of horizontal, diagonal and antidiagonal neighbor colorings of the odd squares of an nX3 array with new integer colors introduced in row major order.

The programs for A216609, there is no canonical definition to state claims against.
-/

/-! ## A216609.P15264712240982794151

`A182930(A117748(n+1)+1+n)`
-/

namespace A216609.P15264712240982794151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A117748 (n + 1) + 1 + (n : ℤ)).toNat

end

end A216609.P15264712240982794151

/-! ## A216609.P7185962654540199313

`A123346(A026393(n+2)-(n+1))`
-/

namespace A216609.P7185962654540199313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (A026393 (n + 2) - (n + 1 : ℤ)).toNat

end

end A216609.P7185962654540199313

/-! ## A216609.P13505257642834757560

`A182930(∑[A016777(A026741(n))])`
-/

namespace A216609.P13505257642834757560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216609.P13505257642834757560

/-! ## A216609.P2443564470979188860

`A182930(∑[A029578(A016789(n))])`
-/

namespace A216609.P2443564470979188860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A016789 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216609.P2443564470979188860

/-! ## A216609.P9794334073791824051

`A182930(∑[A110654(A166138(n))])`
-/

namespace A216609.P9794334073791824051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A166138 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216609.P9794334073791824051

/-! ## A216609.P17601537445664381778

`A106436(A117748(n+1)+A110654(n))`
-/

namespace A216609.P17601537445664381778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (A117748 (n + 1) + A110654 n).toNat

end

end A216609.P17601537445664381778

/-! ## A216609.P690992737571580689

`A011971(eq[A108087(n), A347633(n+1)]-n)`
-/

namespace A216609.P690992737571580689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - n)

end

end A216609.P690992737571580689

/-! ## A216609.P8122043171603696578

`A011971(eq[A259691(n), A347633(n+1)]-n)`
-/

namespace A216609.P8122043171603696578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259691 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347633 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n - n)

end

end A216609.P8122043171603696578

/-!
# A216610: Number of horizontal, diagonal and antidiagonal neighbor colorings of the odd squares of an nX5 array with new integer colors introduced in row major order.

The programs for A216610, there is no canonical definition to state claims against.
-/

/-! ## A216610.P4774570201404117571

`A216612(Δ[A264443(n)])`
-/

namespace A216610.P4774570201404117571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (f1 (n + 1) - f1 n).toNat

end

end A216610.P4774570201404117571

/-! ## A216610.P11255090442163459304

`A216612(A046691(n+3))`
-/

namespace A216610.P11255090442163459304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A046691 (n + 3)).toNat

end

end A216610.P11255090442163459304

/-! ## A216610.P17126843547056883442

`A216612(A056115(n)+11)`
-/

namespace A216610.P17126843547056883442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A056115 n + 11).toNat

end

end A216610.P17126843547056883442

/-! ## A216610.P3062366465451600608

`A216612(eq[2, A092921(n)])`
-/

namespace A216610.P3062366465451600608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216610.P3062366465451600608

/-! ## A216610.P17642159947337351374

`A216612(eq[3, A152157(n)])`
-/

namespace A216610.P17642159947337351374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216610.P17642159947337351374

/-!
# A216611: Number of horizontal, diagonal and antidiagonal neighbor colorings of the odd squares of an nX7 array with new integer colors introduced in row major order.

The programs for A216611, there is no canonical definition to state claims against.
-/

/-! ## A216611.P4321813380036930100

`A216612(A055999(n+4))`
-/

namespace A216611.P4321813380036930100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A055999 (n + 4)).toNat

end

end A216611.P4321813380036930100

/-! ## A216611.P16361027857140356565

`A216612(eq[4, A219347(n)])`
-/

namespace A216611.P16361027857140356565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216611.P16361027857140356565

/-! ## A216611.P11968516985452710975

`A216612(eq[5, A332954(n)])`
-/

namespace A216611.P11968516985452710975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216611.P11968516985452710975

/-!
# A216613: Number of horizontal, diagonal and antidiagonal neighbor colorings of the odd squares of a 3 X n array with new integer colors introduced in row major order.

The programs for A216613, there is no canonical definition to state claims against.
-/

/-! ## A216613.P12007929293410747477

`A216612(∑[n+2]+4)`
-/

namespace A216613.P12007929293410747477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216613.P12007929293410747477

/-! ## A216613.P707348987908329680

`lcm((-1)^n, A216612(A167614(n+1)))`
-/

namespace A216613.P707348987908329680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A216612 (A167614 (n + 1)).toNat)

end

end A216613.P707348987908329680

/-! ## A216613.P16318497739966636138

`A216612(A152950(n+3))+C(n, n+1)`
-/

namespace A216613.P16318497739966636138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A152950 (n + 3)).toNat + (Nat.choose n (n + 1) : ℤ)

end

end A216613.P16318497739966636138

/-! ## A216613.P5291651873759081627

`A216612(A167614(n+1))+A025439(n)`
-/

namespace A216613.P5291651873759081627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A167614 (n + 1)).toNat + A025439 n

end

end A216613.P5291651873759081627

/-! ## A216613.P1102589896481298209

`A216612(A167614(n+1))+A025469(n)`
-/

namespace A216613.P1102589896481298209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A167614 (n + 1)).toNat + A025469 n

end

end A216613.P1102589896481298209

/-!
# A216614: Number of horizontal, diagonal and antidiagonal neighbor colorings of the odd squares of a 5Xn array with new integer colors introduced in row major order.

The programs for A216614, there is no canonical definition to state claims against.
-/

/-! ## A216614.P8934376066490858293

`A216612(A167499(n+3))`
-/

namespace A216614.P8934376066490858293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A167499 (n + 3)).toNat

end

end A216614.P8934376066490858293

/-! ## A216614.P4090634964442299422

`A216612(A056000(n)+15)`
-/

namespace A216614.P4090634964442299422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A056000 n + 15).toNat

end

end A216614.P4090634964442299422

/-! ## A216614.P14093178288990411384

`A216612(eq[6, A131818(n+1)])`
-/

namespace A216614.P14093178288990411384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216614.P14093178288990411384

/-! ## A216614.P11495370835919766431

`A216612(A138902(n)+A000124(n+4)+3)`
-/

namespace A216614.P11495370835919766431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A138902 n + (A000124 (n + 4) + 3)).toNat

end

end A216614.P11495370835919766431

/-! ## A216614.P2907095262979057036

`A216612(A215561(n)+A000124(n+4)+3)`
-/

namespace A216614.P2907095262979057036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A215561 n + (A000124 (n + 4) + 3)).toNat

end

end A216614.P2907095262979057036

/-!
# A216615: Number of horizontal, diagonal and antidiagonal neighbor colorings of the odd squares of a 7Xn array with new integer colors introduced in row major order.

The programs for A216615, there is no canonical definition to state claims against.
-/

/-! ## A216615.P9541990404277573350

`A216612(C(n+8, 2)-n)`
-/

namespace A216615.P9541990404277573350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (Nat.choose (n + 8) 2 - n)

end

end A216615.P9541990404277573350

/-! ## A216615.P7911622464213110368

`A216612(A056119(n)+28)`
-/

namespace A216615.P7911622464213110368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (A056119 n + 28).toNat

end

end A216615.P7911622464213110368

/-! ## A216615.P7080539866012215290

`A216612(eq[11, A066657(n)])`
-/

namespace A216615.P7080539866012215290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216615.P7080539866012215290

/-!
# A216616: G.f. satisfies: A(x) = (1 + x*(1-x)*A(x)) * (1 + x^2*A(x)^2).

The programs for A216616, there is no canonical definition to state claims against.
-/

/-! ## A216616.P16741025173215904832

`A008618(A258121(n)+6)`
-/

namespace A216616.P16741025173215904832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A258121 n + 6).toNat

end

end A216616.P16741025173215904832

/-! ## A216616.P2118095908404557990

`A008651(A106729(n)+10)`
-/

namespace A216616.P2118095908404557990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A106729 n + 10).toNat

end

end A216616.P2118095908404557990

/-! ## A216616.P13356003196238839366

`A008618(or(8, A258121(n)))`
-/

namespace A216616.P13356003196238839366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (Int.lor 8 (A258121 n)).toNat

end

end A216616.P13356003196238839366

/-! ## A216616.P5177865147306114880

`A103221(A233515(n+1)+2)`
-/

namespace A216616.P5177865147306114880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A233515 (n + 1) + 2).toNat

end

end A216616.P5177865147306114880

/-! ## A216616.P12322569845547750354

`A008618(A022086(2*n+1)+10)`
-/

namespace A216616.P12322569845547750354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A022086 (2 * n + 1) + 10).toNat

end

end A216616.P12322569845547750354

/-!
# A216617: G.f. satisfies: A(x) = (1 + x*(1-x)*A(x)^2) * (1 + x^2*A(x)).

The programs for A216617, there is no canonical definition to state claims against.
-/

/-! ## A216617.P17638638928933335177

`A122005(A114464(n+1))`
-/

namespace A216617.P17638638928933335177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122005 (A114464 (n + 1)).toNat

end

end A216617.P17638638928933335177

/-! ## A216617.P3996778618769893039

`A138194(3*A128082(n))`
-/

namespace A216617.P3996778618769893039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138194 (3 * A128082 n).toNat

end

end A216617.P3996778618769893039

/-! ## A216617.P9489158963096342324

`A264749(Δ[Δ[A283108(n)]])`
-/

namespace A216617.P9489158963096342324
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264749 (f1 (n + 1) - f1 n).toNat

end

end A216617.P9489158963096342324

/-! ## A216617.P14196462101004786480

`A231149(2*A061922(n)+n)`
-/

namespace A216617.P14196462101004786480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231149 (2 * A061922 n + (n : ℤ)).toNat

end

end A216617.P14196462101004786480

/-!
# A216620: Square array read by antidiagonals: T(n,k) = Sum_{c|n,d|k} phi(gcd(c,d)) for n>=1, k>=1.

The programs for A216620, there is no canonical definition to state claims against.
-/

/-! ## A216620.P12272549138249782994

`or(A084888(A273712(n)), A114896(n))`
-/

namespace A216620.P12272549138249782994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084888 (A273712 n).toNat) (A114896 n)

end

end A216620.P12272549138249782994

/-! ## A216620.P13762313172420396854

`A114896(n)+A034876(A071855(n+1))`
-/

namespace A216620.P13762313172420396854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114896 n + A034876 (A071855 (n + 1)).toNat

end

end A216620.P13762313172420396854

/-! ## A216620.P4629591582182301858

`A114896(n)+A000035(A283494(n+1))`
-/

namespace A216620.P4629591582182301858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114896 n + A000035 (A283494 (n + 1)).toNat

end

end A216620.P4629591582182301858

/-! ## A216620.P15650914784470447097

`A114896(n)+A070109(A301784(n+1))`
-/

namespace A216620.P15650914784470447097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114896 n + A070109 (A301784 (n + 1)).toNat

end

end A216620.P15650914784470447097

/-! ## A216620.P15241210952023015309

`A114896(n)+A070109(A302010(n+1))`
-/

namespace A216620.P15241210952023015309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114896 n + A070109 (A302010 (n + 1)).toNat

end

end A216620.P15241210952023015309

/-!
# A216621: Triangle read by rows, n >= 1, 1 <= k <= n, T(n,k) = Sum_{c|n,d|k} phi(gcd(c,d)).

The programs for A216621, there is no canonical definition to state claims against.
-/

/-! ## A216621.P2030918969610928940

`A216620(A245300(n)+1)`
-/

namespace A216621.P2030918969610928940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216620 (A245300 n + 1).toNat

end

end A216621.P2030918969610928940

/-! ## A216621.P15420533814821185366

`A216620(A286146(n+1))`
-/

namespace A216621.P15420533814821185366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216620 (A286146 (n + 1)).toNat

end

end A216621.P15420533814821185366

/-!
# A216622: Square array read by antidiagonals: T(n,k) = Sum_{c|n, d|k} phi(lcm(c,d)) for n >= 1, k >= 1.

The programs for A216622, there is no canonical definition to state claims against.
-/

/-! ## A216622.P18373710916779079014

`A059036(n)-A087960(A187617(n))`
-/

namespace A216622.P18373710916779079014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n - A087960 (A187617 n).toNat

end

end A216622.P18373710916779079014

/-! ## A216622.P2995137157907604414

`A087960(A187617(n)+2)+A059036(n)`
-/

namespace A216622.P2995137157907604414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A187617 n + 2).toNat + A059036 n

end

end A216622.P2995137157907604414

/-! ## A216622.P10140301005828773809

`A059036(n)+A020985(A331278(n))`
-/

namespace A216622.P10140301005828773809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n + A020985 (A331278 n).toNat

end

end A216622.P10140301005828773809

/-! ## A216622.P15959058722534739830

`A003991(n+1)-A000122(A051934(n+1))`
-/

namespace A216622.P15959058722534739830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A000122 (A051934 (n + 1)).toNat

end

end A216622.P15959058722534739830

/-! ## A216622.P12836555648492199229

`A114388(A185957(n+1))`
-/

namespace A216622.P12836555648492199229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114388 (A185957 (n + 1)).toNat

end

end A216622.P12836555648492199229

/-!
# A216623: Triangle read by rows, n>=1, 1<=k<=n, T(n,k) = Sum_{c|n,d|k} phi(lcm(c,d)).

The programs for A216623, there is no canonical definition to state claims against.
-/

/-! ## A216623.P8478721318228247218

`A216622(A245300(n)+1)`
-/

namespace A216623.P8478721318228247218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216622 (A245300 n + 1).toNat

end

end A216623.P8478721318228247218

/-! ## A216623.P15467223202637705161

`A216622(A286146(n+1))`
-/

namespace A216623.P15467223202637705161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216622 (A286146 (n + 1)).toNat

end

end A216623.P15467223202637705161

/-!
# A216624: Square array read by antidiagonals, T(n,k) = sum_{c|n,d|k} gcd(c,d) for n>=1, k>=1.

The programs for A216624, there is no canonical definition to state claims against.
-/

/-! ## A216624.P3855610520589979496

`A216620(n+1)+A108913(A059328(n))`
-/

namespace A216624.P3855610520589979496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216620 (n + 1) + A108913 (A059328 n).toNat

end

end A216624.P3855610520589979496

/-! ## A216624.P3988482557499087442

`dr(A307797(A135835(n+1)))`
-/

namespace A216624.P3988482557499087442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A307797 (A135835 (n + 1)).toNat)

end

end A216624.P3988482557499087442

/-! ## A216624.P4044625082639656161

`∑{digits}[A307797(A135835(n+1)), A028310(#)]`
-/

namespace A216624.P4044625082639656161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307797 (A135835 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A028310 x).sum

end

end A216624.P4044625082639656161

/-!
# A216625: Triangle read by rows, n >= 1, 1 <= k <= n, T(n,k) = Sum_{c|n,d|k} gcd(c,d).

The programs for A216625, there is no canonical definition to state claims against.
-/

/-! ## A216625.P2888221761017362365

`A216624(A245300(n)+1)`
-/

namespace A216625.P2888221761017362365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (A245300 n + 1).toNat

end

end A216625.P2888221761017362365

/-! ## A216625.P17425973369381392083

`A216624((A214661(n+1)+1)/2)`
-/

namespace A216625.P17425973369381392083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (SequenceMachineLib.roundAway ((A214661 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A216625.P17425973369381392083

/-! ## A216625.P8316637090562182550

`A216624(A008619(A214661(n+1)))`
-/

namespace A216625.P8316637090562182550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (A008619 (A214661 (n + 1)).toNat).toNat

end

end A216625.P8316637090562182550

/-! ## A216625.P4220619378956224021

`A216624(A286146(n+1))`
-/

namespace A216625.P4220619378956224021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216624 (A286146 (n + 1)).toNat

end

end A216625.P4220619378956224021

/-!
# A216626: Square array read by antidiagonals, T(n,k) = sum_{c|n,d|k} lcm(c,d) for n>=1, k>=1.

The programs for A216626, there is no canonical definition to state claims against.
-/

/-! ## A216626.P3212965157197296749

`A107749(A003991(n+1))%Δ[A075932(n)]`
-/

namespace A216626.P3212965157197296749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075932 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107749 (A003991 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A216626.P3212965157197296749

/-! ## A216626.P17005079615688240005

`A107749(A003991(n+1)%A051972(n+1))`
-/

namespace A216626.P17005079615688240005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107749 (Int.tmod (A003991 (n + 1)) (A051972 (n + 1))).toNat

end

end A216626.P17005079615688240005

/-! ## A216626.P17316266694618620324

`A286875(A002496(n+1))+A107749(A003991(n+1))`
-/

namespace A216626.P17316266694618620324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286875 (A002496 (n + 1)).toNat + A107749 (A003991 (n + 1)).toNat

end

end A216626.P17316266694618620324

/-! ## A216626.P1088665332586480141

`A319526(n+1)-A336225(A286102(n+1))`
-/

namespace A216626.P1088665332586480141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319526 (n + 1) - A336225 (A286102 (n + 1)).toNat

end

end A216626.P1088665332586480141

/-! ## A216626.P4672634922039052146

`A290080(A223576(n+1))`
-/

namespace A216626.P4672634922039052146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290080 (A223576 (n + 1)).toNat

end

end A216626.P4672634922039052146

/-!
# A216627: Triangle read by rows, n>=1, 1<=k<=n, T(n,k) = sum_{c|n,d|k} lcm(c,d).

The programs for A216627, there is no canonical definition to state claims against.
-/

/-! ## A216627.P3744117696159349851

`A216626(A245300(n)+1)`
-/

namespace A216627.P3744117696159349851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216626 (A245300 n + 1).toNat

end

end A216627.P3744117696159349851

/-! ## A216627.P7850288917508138999

`A216626(A286146(n+1))`
-/

namespace A216627.P7850288917508138999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216626 (A286146 (n + 1)).toNat

end

end A216627.P7850288917508138999

/-!
# A216628: a(n) = A163085(n)/n!.

The programs for A216628, there is no canonical definition to state claims against.
-/

/-! ## A216628.P2471046508525134581

`A163085(n)/n!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216628.P2471046508525134581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163085 n : ℚ) / (Nat.factorial n : ℚ)

end

end A216628.P2471046508525134581

/-! ## A216628.P9676713860817626101

`∏[A056040(n)/round(1/acot(n))]`
-/

namespace A216628.P9676713860817626101
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A216628.P9676713860817626101

/-! ## A216628.P6189316078558201792

`∏[A056040(n)]/n!`
-/

namespace A216628.P6189316078558201792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (Nat.factorial n : ℚ)

end

end A216628.P6189316078558201792

/-! ## A216628.P3955139903619403477

`A163085(n)/A000142(n)`
-/

namespace A216628.P3955139903619403477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163085 n : ℚ) / (A000142 n : ℚ)

end

end A216628.P3955139903619403477

/-! ## A216628.P8466953274537419087

`A163085(n)/A094587(∑[n])`
-/

namespace A216628.P8466953274537419087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163085 n : ℚ) / (A094587 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A216628.P8466953274537419087

/-!
# A216629: a(n) = A163085(n)/(floor(n/2)!)^2.

The programs for A216629, there is no canonical definition to state claims against.
-/

/-! ## A216629.P14558441847922842655

`A163085(n)/floor(n/2)!²`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A216629.P14558441847922842655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163085 n : ℚ) / (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat ^ 2 : ℚ)

end

end A216629.P14558441847922842655

/-! ## A216629.P15803974625655938918

`A056040(n)*A216628(n)`
-/

namespace A216629.P15803974625655938918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A216628 n

end

end A216629.P15803974625655938918

/-! ## A216629.P2868624995352512039

`∏[A057977(n)]*A000463(n+1)`
-/

namespace A216629.P2868624995352512039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000463 (n + 1)

end

end A216629.P2868624995352512039

/-! ## A216629.P16833410634002073131

`sqrt(A110652(2*n+1))*∏[A057977(n)]`
-/

namespace A216629.P16833410634002073131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110652 (2 * n + 1) : ℝ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A216629.P16833410634002073131

/-! ## A216629.P1550750030188907617

`A163085(n)/A180064(n)`
-/

namespace A216629.P1550750030188907617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163085 n : ℚ) / (A180064 n : ℚ)

end

end A216629.P1550750030188907617

/-!
# A216630: Number of nondecreasing arrays of n 0..n-1 integers with the sum of their 2nd powers equal to sum(i^2,i=0..n-1).

The programs for A216630, there is no canonical definition to state claims against.
-/

/-! ## A216630.P7423702080519100377

`A216635(∑[n+2])`
-/

namespace A216630.P7423702080519100377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216630.P7423702080519100377

/-! ## A216630.P15100004217926815751

`or(char[1], A216635(A000096(n+1)))`
-/

namespace A216630.P15100004217926815751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A216635 (A000096 (n + 1)).toNat)

end

end A216630.P15100004217926815751

/-! ## A216630.P923413326799696536

`A216635(A000096(n+1))%A000108(n+3)`
-/

namespace A216630.P923413326799696536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216635 (A000096 (n + 1)).toNat) (A000108 (n + 3))

end

end A216630.P923413326799696536

/-! ## A216630.P15404266613599489093

`A007318(C(2, n))*A216635(A000096(n+1))`
-/

namespace A216630.P15404266613599489093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A216635 (A000096 (n + 1)).toNat

end

end A216630.P15404266613599489093

/-! ## A216630.P7019963464320673086

`A216635(A000096(n+1))/A007318(C(n, 2))`
-/

namespace A216630.P7019963464320673086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216635 (A000096 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A216630.P7019963464320673086

/-!
# A216631: Number of nondecreasing arrays of n 0..n-1 integers with the sum of their 3rd powers equal to sum(i^3,i=0..n-1).

The programs for A216631, there is no canonical definition to state claims against.
-/

/-! ## A216631.P8523248562491100962

`A216635(∑[n+3]+1)`
-/

namespace A216631.P8523248562491100962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216631.P8523248562491100962

/-! ## A216631.P17562890383404216961

`A216635(Δ[A008778(n)])+C(n, 64)`
-/

namespace A216631.P17562890383404216961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (f1 (n + 1) - f1 n).toNat + (Nat.choose n 64 : ℤ)

end

end A216631.P17562890383404216961

/-! ## A216631.P9263144451999234267

`gcd(C(2, n), A216635(A034856(n+2)))`
-/

namespace A216631.P9263144451999234267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A216635 (A034856 (n + 2)).toNat)

end

end A216631.P9263144451999234267

/-! ## A216631.P8611956156646873091

`A216635(Δ[A008778(n)])%A000108(n+2)`
-/

namespace A216631.P8611956156646873091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216635 (f1 (n + 1) - f1 n).toNat) (A000108 (n + 2))

end

end A216631.P8611956156646873091

/-! ## A216631.P10508923825483350267

`A216635(A034856(n+2))%A000108(n+2)`
-/

namespace A216631.P10508923825483350267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216635 (A034856 (n + 2)).toNat) (A000108 (n + 2))

end

end A216631.P10508923825483350267

/-!
# A216632: Number of nondecreasing arrays of n 0..n-1 integers with the sum of their 4th powers equal to sum(i^4,i=0..n-1).

The programs for A216632, there is no canonical definition to state claims against.
-/

/-! ## A216632.P6539585378290577212

`A216635(Δ[n²]+∑[n+2]+4)`
-/

namespace A216632.P6539585378290577212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A216632.P6539585378290577212

/-! ## A216632.P36001828773357211

`A216635(A027379(n+2))%A074527(n)`
-/

namespace A216632.P36001828773357211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216635 (A027379 (n + 2)).toNat) (A074527 n)

end

end A216632.P36001828773357211

/-! ## A216632.P8515315566348229402

`A216635(Δ[A006416(n+2)])+A025469(n)`
-/

namespace A216632.P8515315566348229402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (f1 (n + 1) - f1 n).toNat + A025469 n

end

end A216632.P8515315566348229402

/-! ## A216632.P9821271334490526651

`A216635(Δ[A006416(n+2)])^A178489(n)`
-/

namespace A216632.P9821271334490526651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216635 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A216632.P9821271334490526651

/-! ## A216632.P10451589063001254902

`A216635(A027379(n+2))+A000007(3*n+2)`
-/

namespace A216632.P10451589063001254902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (A027379 (n + 2)).toNat + A000007 (3 * n + 2)

end

end A216632.P10451589063001254902

/-!
# A216633: Number of nondecreasing arrays of n 0..n-1 integers with the sum of their 5th powers equal to sum(i^5,i=0..n-1).

The programs for A216633, there is no canonical definition to state claims against.
-/

/-! ## A216633.P2893472262224567762

`A216635(Δ[A264443(n)])`
-/

namespace A216633.P2893472262224567762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (f1 (n + 1) - f1 n).toNat

end

end A216633.P2893472262224567762

/-! ## A216633.P17889925028873350329

`A216635(A046691(n+3))`
-/

namespace A216633.P17889925028873350329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (A046691 (n + 3)).toNat

end

end A216633.P17889925028873350329

/-! ## A216633.P1318069677194942948

`A216635(A060577(n+4))`
-/

namespace A216633.P1318069677194942948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (A060577 (n + 4)).toNat

end

end A216633.P1318069677194942948

/-! ## A216633.P1481059435799914572

`A216635(Δ[A023545(n+1)])`
-/

namespace A216633.P1481059435799914572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (f1 (n + 1) - f1 n).toNat

end

end A216633.P1481059435799914572

/-! ## A216633.P11406445747640066615

`A216635(A000096(n+4)-3)`
-/

namespace A216633.P11406445747640066615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (A000096 (n + 4) - 3).toNat

end

end A216633.P11406445747640066615

/-!
# A216634: Number of nondecreasing arrays of n 0..n-1 integers with the sum of their 6th powers equal to sum(i^6,i=0..n-1).

The programs for A216634, there is no canonical definition to state claims against.
-/

/-! ## A216634.P16223045761821078825

`A216635(A167614(n+5)-8)`
-/

namespace A216634.P16223045761821078825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (A167614 (n + 5) - 8).toNat

end

end A216634.P16223045761821078825

/-! ## A216634.P12529660561606337301

`A216635(Δ[Δ[A006504(n+1)]])`
-/

namespace A216634.P12529660561606337301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (f1 (n + 1) - f1 n).toNat

end

end A216634.P12529660561606337301

/-! ## A216634.P11477895076034284256

`A216635(Δ[A023551(n+1)]+1)`
-/

namespace A216634.P11477895076034284256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (f1 (n + 1) - f1 n + 1).toNat

end

end A216634.P11477895076034284256

/-! ## A216634.P9685661283242309020

`A216635(lt[A008288(n+4), A049310(n)])`
-/

namespace A216634.P9685661283242309020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216634.P9685661283242309020

/-!
# A216635: T(n,k)=Number of nondecreasing arrays of n 0..n-1 integers with the sum of their k'th powers equal to sum(i^k,i=0..n-1).

The programs for A216635, there is no canonical definition to state claims against.
-/

/-! ## A216635.P9377693820024451892

`A216645(n+1)+A185284(A216645(n+2))`
-/

namespace A216635.P9377693820024451892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (n + 1) + A185284 (A216645 (n + 2)).toNat

end

end A216635.P9377693820024451892

/-! ## A216635.P9648731513651266482

`A194673(A137252(n))*A216645(n+1)`
-/

namespace A216635.P9648731513651266482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194673 (A137252 n).toNat * A216645 (n + 1)

end

end A216635.P9648731513651266482

/-! ## A216635.P15611263582146569325

`A216645(n+1)+A185284(A222260(n))`
-/

namespace A216635.P15611263582146569325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (n + 1) + A185284 (A222260 n).toNat

end

end A216635.P15611263582146569325

/-! ## A216635.P4055646914132365004

`A216645(n+1)+A083895(A081091(n+1))`
-/

namespace A216635.P4055646914132365004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (n + 1) + A083895 (A081091 (n + 1)).toNat

end

end A216635.P4055646914132365004

/-! ## A216635.P17641901824313615488

`A216645(n+1)+A193095(A229637(n+1))`
-/

namespace A216635.P17641901824313615488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (n + 1) + A193095 (A229637 (n + 1)).toNat

end

end A216635.P17641901824313615488

/-!
# A216636: a(n) = Sum_{k=0..n} binomial(n,k)^3 * 5^k.

The programs for A216636, there is no canonical definition to state claims against.
-/

/-! ## A216636.P13412590485202607404

`A336163(C(n+6, 2)+n)`
-/

namespace A216636.P13412590485202607404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (Nat.choose (n + 6) 2 + n)

end

end A216636.P13412590485202607404

/-! ## A216636.P14097511630345630605

`A336163(eq[6, C(comp[∑[n]]-n, 2)-n])`
-/

namespace A216636.P14097511630345630605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216636.P14097511630345630605

/-!
# A216637: Kolakoski sequence by 3-words.

The programs for A216637, the canonical program `A216637.P16074414252254142737` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216637 has offset 1).

The definition of A216637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216637.P16074414252254142737

`A329355(3*(n+1))%8`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216637

/-- `A329355(3*(n+1))%8` -/
def P16074414252254142737.Spec : Prop :=
  ∀ n, P16074414252254142737.a n = A216637 (n + 1)

theorem P16074414252254142737.correct : P16074414252254142737.Spec := by
  intro n
  simp only [A216637, Nat.add_sub_cancel]

end A216637

/-! ## A216637.P8037158593084792806

`and(7, A329355(3*n+3))`
-/

namespace A216637.P8037158593084792806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A329355 (3 * n + 3))

end

end A216637.P8037158593084792806

namespace A216637

/-- `and(7, A329355(3*n+3))` -/
def P8037158593084792806.Spec : Prop :=
  ∀ n, P8037158593084792806.a n = A216637 (n + 1)

end A216637

/-! ## A216637.P16843311725570452561

`A180938(floor(sqrt(A147597(n+1)))+3)`
-/

namespace A216637.P16843311725570452561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180938 (Int.sqrt (A147597 (n + 1)) + 3).toNat

end

end A216637.P16843311725570452561

namespace A216637

/-- `A180938(floor(sqrt(A147597(n+1)))+3)` -/
def P16843311725570452561.Spec : Prop :=
  ∀ n, P16843311725570452561.a n = A216637 (n + 1)

end A216637

/-! ## A216637.P1618715175077226783

`floor(Δ[A309077(A294427(n+1))]^ϕ)`
-/

namespace A216637.P1618715175077226783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309077 (A294427 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℝ) ^ Real.goldenRatio⌋

end

end A216637.P1618715175077226783

namespace A216637

/-- `floor(Δ[A309077(A294427(n+1))]^ϕ)` -/
def P1618715175077226783.Spec : Prop :=
  ∀ n, P1618715175077226783.a n = A216637 (n + 1)

end A216637

/-! ## A216637.P12679131556171636307

`dr(gcd(A061037(n+2), A119714(3*n+5)))`
-/

namespace A216637.P12679131556171636307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.gcd (A061037 (n + 2)) (A119714 (3 * n + 5)) : ℤ)

end

end A216637.P12679131556171636307

namespace A216637

/-- `dr(gcd(A061037(n+2), A119714(3*n+5)))` -/
def P12679131556171636307.Spec : Prop :=
  ∀ n, (P12679131556171636307.a n : ℤ) = A216637 (n + 1)

end A216637

/-!
# A216638: First appearance of the Fibonacci numbers in the decimals of Pi.

The programs for A216638, there is no canonical definition to state claims against.
-/

/-! ## A216638.P8311938359912832710

`A014777(A000045(n+1))`
-/

namespace A216638.P8311938359912832710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (A000045 (n + 1)).toNat

end

end A216638.P8311938359912832710

/-! ## A216638.P12672245477206487890

`A014777(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A216638.P12672245477206487890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (f1 (n + 1) - f1 n).toNat

end

end A216638.P12672245477206487890

/-! ## A216638.P4284125785498270801

`A014777(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A216638.P4284125785498270801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (f1 (n + 1) - f1 n).toNat

end

end A216638.P4284125785498270801

/-! ## A216638.P9796587140904391019

`A014777(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A216638.P9796587140904391019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216638.P9796587140904391019

/-! ## A216638.P1133124912332696623

`A014777(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A216638.P1133124912332696623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014777 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216638.P1133124912332696623

/-!
# A216639: A027642(6*n+6)/(sequence of period 2:repeat 42,210).

The programs for A216639, the canonical program `A216639.P8533423297860655305` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216639 has offset 0).

The definition of A216639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A027642, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216639.P8533423297860655305

`A027642(6*n+6)/(42*A010686(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A216639

/-- `A027642(6*n+6)/(42*A010686(n))` -/
def P8533423297860655305.Spec : Prop :=
  ∀ n, P8533423297860655305.a n = (A216639 n : ℚ)

end A216639

/-! ## A216639.P867909909746868949

`A165949(3*(n+1))/7`
-/

namespace A216639.P867909909746868949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165949 (3 * (n + 1)) : ℚ) / 7

end

end A216639.P867909909746868949

namespace A216639

/-- `A165949(3*(n+1))/7` -/
def P867909909746868949.Spec : Prop :=
  ∀ n, P867909909746868949.a n = (A216639 n : ℚ)

end A216639

/-!
# A216640: Number of nondecreasing arrays of n 1..n integers with the sum of their 2nd powers equal to sum(i^2,i=1..n).

The programs for A216640, there is no canonical definition to state claims against.
-/

/-! ## A216640.P354034218521988354

`A216645(∑[n+2])`
-/

namespace A216640.P354034218521988354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216640.P354034218521988354

/-! ## A216640.P14062234107019009747

`or(char[1], A216645(A000096(n+1)))`
-/

namespace A216640.P14062234107019009747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A216645 (A000096 (n + 1)).toNat)

end

end A216640.P14062234107019009747

/-! ## A216640.P12484400083837420641

`A216645(A000096(n+1))%A000108(n+2)`
-/

namespace A216640.P12484400083837420641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216645 (A000096 (n + 1)).toNat) (A000108 (n + 2))

end

end A216640.P12484400083837420641

/-! ## A216640.P6360085226893461350

`A007318(C(n, 2))*A216645(A000096(n+1))`
-/

namespace A216640.P6360085226893461350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A216645 (A000096 (n + 1)).toNat

end

end A216640.P6360085226893461350

/-! ## A216640.P4827041388421887394

`A007318(and(1, -n))*A216645(A000096(n+1))`
-/

namespace A216640.P4827041388421887394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A216645 (A000096 (n + 1)).toNat

end

end A216640.P4827041388421887394

/-!
# A216641: Number of nondecreasing arrays of n 1..n integers with the sum of their 3rd powers equal to sum(i^3,i=1..n).

The programs for A216641, there is no canonical definition to state claims against.
-/

/-! ## A216641.P1899866287547419037

`A216645(∑[n+3]+1)`
-/

namespace A216641.P1899866287547419037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216641.P1899866287547419037

/-! ## A216641.P5730636085547745965

`A216645(A027379(n+1)+1)+char[22]`
-/

namespace A216641.P5730636085547745965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (A027379 (n + 1) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A216641.P5730636085547745965

/-! ## A216641.P6526987323297587375

`A216645(A027379(n+1)+1)%A000108(n+2)`
-/

namespace A216641.P6526987323297587375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216645 (A027379 (n + 1) + 1).toNat) (A000108 (n + 2))

end

end A216641.P6526987323297587375

/-! ## A216641.P2814515869816766920

`A000041(C(2, n+2))*A216645(A027379(n+1)+1)`
-/

namespace A216641.P2814515869816766920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A216645 (A027379 (n + 1) + 1).toNat

end

end A216641.P2814515869816766920

/-! ## A216641.P7591559878539112207

`A216645(A027379(n+1)+1)^(A000040(n+1)%2)`
-/

namespace A216641.P7591559878539112207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216645 (A027379 (n + 1) + 1).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A216641.P7591559878539112207

/-!
# A216642: Number of nondecreasing arrays of n 1..n integers with the sum of their 4th powers equal to sum(i^4,i=1..n).

The programs for A216642, there is no canonical definition to state claims against.
-/

/-! ## A216642.P1964198002151049649

`A216645(∑[n+4]+3)`
-/

namespace A216642.P1964198002151049649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A216642.P1964198002151049649

/-! ## A216642.P16311274984009625887

`A216645(Δ[A006416(n+2)])+A025469(n)`
-/

namespace A216642.P16311274984009625887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (f1 (n + 1) - f1 n).toNat + A025469 n

end

end A216642.P16311274984009625887

/-! ## A216642.P14476071244481163274

`A216645(Δ[A006416(n+2)])^A178489(n)`
-/

namespace A216642.P14476071244481163274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216645 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A216642.P14476071244481163274

/-! ## A216642.P1277462377344883582

`A003056(C(A103632(n), A002266(2*(n+1))))`
-/

namespace A216642.P1277462377344883582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A103632 n).toNat (A002266 (2 * (n + 1))).toNat)

end

end A216642.P1277462377344883582

/-!
# A216643: Number of nondecreasing arrays of n 1..n integers with the sum of their 5th powers equal to sum(i^5,i=1..n).

The programs for A216643, there is no canonical definition to state claims against.
-/

/-! ## A216643.P16219775600146767458

`A216645(∑[n+5]+6)`
-/

namespace A216643.P16219775600146767458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A216643.P16219775600146767458

/-! ## A216643.P16686859324668395799

`A238886(ceil(A166861(n)/A193402(3*n+1)))`
-/

namespace A216643.P16686859324668395799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238886 ⌈(A166861 n : ℚ) / (A193402 (3 * n + 1) : ℚ)⌉.toNat

end

end A216643.P16686859324668395799

/-!
# A216644: Number of nondecreasing arrays of n 1..n integers with the sum of their 6th powers equal to sum(i^6,i=1..n).

The programs for A216644, there is no canonical definition to state claims against.
-/

/-! ## A216644.P6745788584944128653

`A216645(A155212(n+2)+3)`
-/

namespace A216644.P6745788584944128653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (A155212 (n + 2) + 3).toNat

end

end A216644.P6745788584944128653

/-! ## A216644.P8775625614996818070

`A216645(A046691(n+4)-1)`
-/

namespace A216644.P8775625614996818070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (A046691 (n + 4) - 1).toNat

end

end A216644.P8775625614996818070

/-! ## A216644.P10241277456601971592

`A216645(A034856(n+5)-3)`
-/

namespace A216644.P10241277456601971592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (A034856 (n + 5) - 3).toNat

end

end A216644.P10241277456601971592

/-! ## A216644.P5445947034086863978

`A216645(A000124(n+6)-6)`
-/

namespace A216644.P5445947034086863978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (A000124 (n + 6) - 6).toNat

end

end A216644.P5445947034086863978

/-! ## A216644.P9436642913266510648

`A216645(Δ[Δ[A006504(n+1)]])`
-/

namespace A216644.P9436642913266510648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216645 (f1 (n + 1) - f1 n).toNat

end

end A216644.P9436642913266510648

/-!
# A216645: T(n,k)=Number of nondecreasing arrays of n 1..n integers with the sum of their k powers equal to sum(i^k,i=1..n).

The programs for A216645, there is no canonical definition to state claims against.
-/

/-! ## A216645.P8306429987452920094

`A216635(n+1)^A327127(n)`
-/

namespace A216645.P8306429987452920094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216635 (n + 1) : ℚ) ^ (A327127 n : ℤ)

end

end A216645.P8306429987452920094

/-! ## A216645.P18350034918768766760

`A216635((n+1)^A105806(n+1))`
-/

namespace A216645.P18350034918768766760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A105806 (n + 1) : ℤ))).toNat

end

end A216645.P18350034918768766760

/-! ## A216645.P2957305401786675007

`A216635(n+1)^A008683(A117262(n))`
-/

namespace A216645.P2957305401786675007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216635 (n + 1) : ℚ) ^ (A008683 (A117262 n).toNat : ℤ)

end

end A216645.P2957305401786675007

/-! ## A216645.P7081068443512891408

`A216635(n+1)^A008683(A136232(n))`
-/

namespace A216645.P7081068443512891408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216635 (n + 1) : ℚ) ^ (A008683 (A136232 n).toNat : ℤ)

end

end A216645.P7081068443512891408

/-! ## A216645.P3861216482298064912

`A216635(n+1)^A000045(A145878(n))`
-/

namespace A216645.P3861216482298064912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216635 (n + 1) : ℚ) ^ (A000045 (A145878 n).toNat : ℤ)

end

end A216645.P3861216482298064912

/-!
# A216646: a(n) = 1+2*(d1 + 1)*(d2 + 1)*...*(dk + 1), where d1, d2, ..., dk are the prime factors of the n-th Fermat pseudoprime to base 2 A001567(n).

The programs for A216646, there is no canonical definition to state claims against.
-/

/-! ## A216646.P109100288132103562

`2*∑{d}[A001567(n+1), #]+1`
-/

namespace A216646.P109100288132103562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n).natAbs, d) + 1

end

end A216646.P109100288132103562

/-! ## A216646.P8836971119481916438

`2*A000203(A001567(n+1))+1`
-/

namespace A216646.P8836971119481916438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (A001567 (n + 1)).toNat + 1

end

end A216646.P8836971119481916438

/-! ## A216646.P7459916035901143804

`2*A000203(∩[A020136(n+1), A020160(n+1)])+1`
-/

namespace A216646.P7459916035901143804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020160 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A216646.P7459916035901143804

/-! ## A216646.P13992707159909739256

`2*A000203(∪[A020230(n+1), A178723(n+1)])+1`
-/

namespace A216646.P13992707159909739256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020230 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000203 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n) + 1

end

end A216646.P13992707159909739256

/-!
# A216647: a(n) := card{cos((2^(k-1))*Pi/n): k=1,2,...}.

The programs for A216647, there is no canonical definition to state claims against.
-/

/-! ## A216647.P6570998620223593152

`A309786(n+1)+val(n+1, 2)+1`
-/

namespace A216647.P6570998620223593152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (n + 1) + (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A216647.P6570998620223593152

/-! ## A216647.P3904496831515917678

`A003558(floor(n/(xor(n, n+1)+1)))+val(n+1, 2)+1`
-/

namespace A216647.P3904496831515917678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat + (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)

end

end A216647.P3904496831515917678

/-! ## A216647.P6662279967534656662

`A309786(n+1)+Δ[A005187(n)]`
-/

namespace A216647.P6662279967534656662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (n + 1) + (f1 (n + 1) - f1 n)

end

end A216647.P6662279967534656662

/-! ## A216647.P12324521601067545992

`A309786(n+1)+A001511(n+1)`
-/

namespace A216647.P12324521601067545992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (n + 1) + A001511 (n + 1)

end

end A216647.P12324521601067545992

/-! ## A216647.P12150340936417578520

`A007814(n+1)+A309786(n+1)+1`
-/

namespace A216647.P12150340936417578520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A309786 (n + 1) + 1)

end

end A216647.P12150340936417578520

/-! ## A216647.P4266391946952784341

`A309786(n+1)+A204988(2*(n+1))`
-/

namespace A216647.P4266391946952784341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (n + 1) + A204988 (2 * (n + 1))

end

end A216647.P4266391946952784341

/-! ## A216647.P6272735518884923983

`A309786(n+1)+A001222(xor(n, n+1)+1)`
-/

namespace A216647.P6272735518884923983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (n + 1) + A001222 (Nat.xor n (n + 1) + 1)

end

end A216647.P6272735518884923983

/-! ## A216647.P10293150962492916971

`A003558(A025480(n))+Δ[A005187(n)]`
-/

namespace A216647.P10293150962492916971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A025480 n).toNat + (f1 (n + 1) - f1 n)

end

end A216647.P10293150962492916971

/-! ## A216647.P12793227592834675089

`A003558(A025480(n))+A001511(n+1)`
-/

namespace A216647.P12793227592834675089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A025480 n).toNat + A001511 (n + 1)

end

end A216647.P12793227592834675089

/-! ## A216647.P16256804212341665205

`A309786(n+1)+A000005(A006519(n+1))`
-/

namespace A216647.P16256804212341665205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309786 (n + 1) + A000005 (A006519 (n + 1)).toNat

end

end A216647.P16256804212341665205

/-!
# A216648: Triangle T(n,k) in which n-th row lists in increasing order all positive integers with a representation as totally balanced 2n digit binary string without totally balanced proper prefixes such that all consecutive totally balanced substrings are in nondecreasing order; n>=1, 1<=k<=A000081(n).

The programs for A216648, there is no canonical definition to state claims against.
-/

/-! ## A216648.P14050776157923120024

`∩[A216649(n+1), A057547(n)]`
-/

namespace A216648.P14050776157923120024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216649 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057547 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216648.P14050776157923120024

/-! ## A216648.P13859534435908455158

`record[A080541(A216649(n+1))]`
-/

namespace A216648.P13859534435908455158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A216649 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216648.P13859534435908455158

/-! ## A216648.P2908314960249882681

`A014486(record[A122227(n)]%A122231(n+1))`
-/

namespace A216648.P2908314960249882681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A122231 (n + 1))).toNat

end

end A216648.P2908314960249882681

/-! ## A216648.P282527933824458537

`A014486(record[A122227(n)])%A122234(n+1)`
-/

namespace A216648.P282527933824458537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014486 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A122234 (n + 1))

end

end A216648.P282527933824458537

/-! ## A216648.P11798626529585208729

`record[A014486(A122227(n))]%A122238(n+1)`
-/

namespace A216648.P11798626529585208729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (A122227 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A122238 (n + 1))

end

end A216648.P11798626529585208729

/-!
# A216649: Triangle T(n,k) in which n-th row lists in increasing order all positive integers with a representation as totally balanced 2n digit binary string such that all consecutive totally balanced substrings are in nondecreasing order; n>=1, 1<=k<=A000081(n+1).

The programs for A216649, there is no canonical definition to state claims against.
-/

/-! ## A216649.P7729296120203066532

`A164089(A216648(n+2))`
-/

namespace A216649.P7729296120203066532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164089 (A216648 (n + 2)).toNat

end

end A216649.P7729296120203066532

/-! ## A216649.P2577374188313554593

`record[A014486(n+1)-A236239(3*n+1)]`
-/

namespace A216649.P2577374188313554593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (n + 1) - A236239 (3 * n + 1 + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216649.P2577374188313554593

/-! ## A216649.P6810095137026230542

`A014486(A082186(n+1)%A354159(n+1))`
-/

namespace A216649.P6810095137026230542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (Int.tmod (A082186 (n + 1)) (A354159 (n + 1))).toNat

end

end A216649.P6810095137026230542

/-! ## A216649.P5913764072518098265

`A014486(lt[A089712(3*n+5), A121031(n+1)])`
-/

namespace A216649.P5913764072518098265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089712 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014486 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216649.P5913764072518098265

/-! ## A216649.P10442017362008550963

`A071162(A351870(n)+1)`
-/

namespace A216649.P10442017362008550963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071162 (A351870 n + 1).toNat

end

end A216649.P10442017362008550963

/-!
# A216650: Maximum length of each subsequence whose elements are the greatest prime divisors of the integers 2, 3, 4, ... in increasing order.

The programs for A216650, the canonical program `A216650.P13002904075840391741` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216650 has offset 1).

The definition of A216650 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216650.P13002904075840391741

`abs(Δ[A070087(abs(1-n)+1)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A216650

/-- `abs(Δ[A070087(abs(1-n)+1)])` -/
def P13002904075840391741.Spec : Prop :=
  ∀ n, P13002904075840391741.a n = A216650 (n + 1)

theorem P13002904075840391741.correct : P13002904075840391741.Spec := by
  intro n
  simp only [A216650, Nat.add_sub_cancel]

end A216650

/-! ## A216650.P11371774958210603338

`Δ[a(n-1)+A079748(a(n-1)+1)+1]` with `a(0)=1`
-/

namespace A216650.P11371774958210603338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (A079748 (f1 (n - 1) + 1).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216650.P11371774958210603338

namespace A216650

/-- `Δ[a(n-1)+A079748(a(n-1)+1)+1]` -/
def P11371774958210603338.Spec : Prop :=
  ∀ n, P11371774958210603338.a n = A216650 (n + 1)

end A216650

/-! ## A216650.P16630920663625393263

`Δ[A070087(A000038(a(n-1))+n)]` with `a(0)=1`
-/

namespace A216650.P16630920663625393263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A070087 (A000038 (f1 (n - 1)).toNat + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216650.P16630920663625393263

namespace A216650

/-- `Δ[A070087(A000038(a(n-1))+n)]` -/
def P16630920663625393263.Spec : Prop :=
  ∀ n, P16630920663625393263.a n = A216650 (n + 1)

end A216650

/-! ## A216650.P3056241310018648914

`Δ[A070087(n%A000040(a(n-1)))]` with `a(0)=1`
-/

namespace A216650.P3056241310018648914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A070087 (Int.tmod (n : ℤ) (A000040 (f1 (n - 1)).toNat)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216650.P3056241310018648914

namespace A216650

/-- `Δ[A070087(n%A000040(a(n-1)))]` -/
def P3056241310018648914.Spec : Prop :=
  ∀ n, P3056241310018648914.a n = A216650 (n + 1)

end A216650

/-! ## A216650.P8340137954477245608

`Δ[lt[Δ[(A006530(n+1)-1)²], 3]]`
-/

namespace A216650.P8340137954477245608
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006530 (n + 1) - 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216650.P8340137954477245608

namespace A216650

/-- `Δ[lt[Δ[(A006530(n+1)-1)²], 3]]` -/
def P8340137954477245608.Spec : Prop :=
  ∀ n, P8340137954477245608.a n = A216650 (n + 1)

end A216650

/-! ## A216650.P836538648570264827

`Δ[lt[Δ[A006530(2*(n+1))²], 2]]`
-/

namespace A216650.P836538648570264827
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216650.P836538648570264827

namespace A216650

/-- `Δ[lt[Δ[A006530(2*(n+1))²], 2]]` -/
def P836538648570264827.Spec : Prop :=
  ∀ n, P836538648570264827.a n = A216650 (n + 1)

end A216650

/-! ## A216650.P11203582531640299470

`Δ[eq[A006530(2*(n+1)), A074399(n+1)]]`
-/

namespace A216650.P11203582531640299470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216650.P11203582531640299470

namespace A216650

/-- `Δ[eq[A006530(2*(n+1)), A074399(n+1)]]` -/
def P11203582531640299470.Spec : Prop :=
  ∀ n, P11203582531640299470.a n = A216650 (n + 1)

end A216650

/-! ## A216650.P16878542119293715700

`Δ[eq[n, n*A174869(n+1)]]`
-/

namespace A216650.P16878542119293715700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A174869 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216650.P16878542119293715700

namespace A216650

/-- `Δ[eq[n, n*A174869(n+1)]]` -/
def P16878542119293715700.Spec : Prop :=
  ∀ n, P16878542119293715700.a n = A216650 (n + 1)

end A216650

/-! ## A216650.P8733272457226934526

`Δ[eq[A057427(n), A174869(n+1)]]`
-/

namespace A216650.P8733272457226934526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174869 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216650.P8733272457226934526

namespace A216650

/-- `Δ[eq[A057427(n), A174869(n+1)]]` -/
def P8733272457226934526.Spec : Prop :=
  ∀ n, P8733272457226934526.a n = A216650 (n + 1)

end A216650

/-!
# A216651: Lengths of decreasing blocks of A006530, the greatest prime factor of n, starting from the second term.

The programs for A216651, the canonical program `A216651.P4247305366476539235` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216651 has offset 1).

The definition of A216651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216651.P4247305366476539235

`A070089(n+2)-A070089(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A216651

/-- `A070089(n+2)-A070089(n+1)` -/
def P4247305366476539235.Spec : Prop :=
  ∀ n, P4247305366476539235.a n = A216651 (n + 1)

theorem P4247305366476539235.correct : P4247305366476539235.Spec := by
  intro n
  simp only [A216651, Nat.add_sub_cancel]

end A216651

/-! ## A216651.P1184311919246914172

`Δ[A070089(n+1)]`
-/

namespace A216651.P1184311919246914172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216651.P1184311919246914172

namespace A216651

/-- `Δ[A070089(n+1)]` -/
def P1184311919246914172.Spec : Prop :=
  ∀ n, P1184311919246914172.a n = A216651 (n + 1)

theorem P1184311919246914172.correct : P1184311919246914172.Spec := by
  intro n
  simp only [A216651, Nat.add_sub_cancel, A216651.P1184311919246914172.f1, A216651.P1184311919246914172.a, A216651.P4247305366476539235.a, SequenceMachineLib.memo_apply]

end A216651

/-! ## A216651.P7884390506740504203

`Δ[comp[∑[A216650(n+1)]]]`
-/

namespace A216651.P7884390506740504203
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216650 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216651.P7884390506740504203

namespace A216651

/-- `Δ[comp[∑[A216650(n+1)]]]` -/
def P7884390506740504203.Spec : Prop :=
  ∀ n, P7884390506740504203.a n = A216651 (n + 1)

end A216651

/-! ## A216651.P12168213138907394767

`Δ[lt[A006530(n+1), A006530(n+2)]]`
-/

namespace A216651.P12168213138907394767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216651.P12168213138907394767

namespace A216651

/-- `Δ[lt[A006530(n+1), A006530(n+2)]]` -/
def P12168213138907394767.Spec : Prop :=
  ∀ n, P12168213138907394767.a n = A216651 (n + 1)

end A216651

/-! ## A216651.P1803131791359631575

`Δ[lt[A061395(n+1), A061395(n+2)]]`
-/

namespace A216651.P1803131791359631575
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216651.P1803131791359631575

namespace A216651

/-- `Δ[lt[A061395(n+1), A061395(n+2)]]` -/
def P1803131791359631575.Spec : Prop :=
  ∀ n, P1803131791359631575.a n = A216651 (n + 1)

end A216651

/-! ## A216651.P12532183937722449545

`Δ[lt[0, Δ[A006530(n+1)]]]`
-/

namespace A216651.P12532183937722449545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f4 (n + 1) - f4 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216651.P12532183937722449545

namespace A216651

/-- `Δ[lt[0, Δ[A006530(n+1)]]]` -/
def P12532183937722449545.Spec : Prop :=
  ∀ n, P12532183937722449545.a n = A216651 (n + 1)

end A216651

/-! ## A216651.P17151306503624861001

`Δ[lt[A070229(n+1), A070229(n+2)]]`
-/

namespace A216651.P17151306503624861001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070229 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216651.P17151306503624861001

namespace A216651

/-- `Δ[lt[A070229(n+1), A070229(n+2)]]` -/
def P17151306503624861001.Spec : Prop :=
  ∀ n, P17151306503624861001.a n = A216651 (n + 1)

end A216651

/-! ## A216651.P5340511951149243563

`Δ[lt[A048675(n+1), A048675(n+2)]]`
-/

namespace A216651.P5340511951149243563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A216651.P5340511951149243563

namespace A216651

/-- `Δ[lt[A048675(n+1), A048675(n+2)]]` -/
def P5340511951149243563.Spec : Prop :=
  ∀ n, P5340511951149243563.a n = A216651 (n + 1)

end A216651

/-!
# A216652: Triangular array read by rows: T(n,k) is the number of compositions of n into exactly k distinct parts.

The programs for A216652, there is no canonical definition to state claims against.
-/

/-! ## A216652.P12398451893193095291

`A318749(A007455(n))*A325677(n+1)`
-/

namespace A216652.P12398451893193095291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318749 (A007455 n).toNat * A325677 (n + 1)

end

end A216652.P12398451893193095291

/-! ## A216652.P3608190040809774845

`A309913(A059590(n))*A325677(n+1)`
-/

namespace A216652.P3608190040809774845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309913 (A059590 n).toNat * A325677 (n + 1)

end

end A216652.P3608190040809774845

/-! ## A216652.P15052033078094138667

`A325677(n+1)+A184955(A261712(n+1))`
-/

namespace A216652.P15052033078094138667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325677 (n + 1) + A184955 (A261712 (n + 1)).toNat

end

end A216652.P15052033078094138667

/-! ## A216652.P17710034254583570869

`A325677(n+1)*A340102(A250120(n+4))`
-/

namespace A216652.P17710034254583570869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325677 (n + 1) * A340102 (A250120 (n + 4)).toNat

end

end A216652.P17710034254583570869

/-! ## A216652.P7745778356159611893

`A177903(A131632(n+1))`
-/

namespace A216652.P7745778356159611893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177903 (A131632 (n + 1)).toNat

end

end A216652.P7745778356159611893

/-!
# A216654: Number of n-digit 10th powers.

The programs for A216654, the canonical program `A216654.P16517647315989909134` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216654 has offset 1).

The definition of A216654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216654.P3128617024539806152

`Δ[A130130(n+1)+A130084(n+1)]`
-/

namespace A216654.P3128617024539806152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) + A130084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216654.P3128617024539806152

namespace A216654

/-- `Δ[A130130(n+1)+A130084(n+1)]` -/
def P3128617024539806152.Spec : Prop :=
  ∀ n, P3128617024539806152.a n = A216654 (n + 1)

end A216654

/-! ## A216654.P3366945755610682304

`A327172(2*n+1)+Δ[A130084(n+1)]`
-/

namespace A216654.P3366945755610682304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327172 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A216654.P3366945755610682304

namespace A216654

/-- `A327172(2*n+1)+Δ[A130084(n+1)]` -/
def P3366945755610682304.Spec : Prop :=
  ∀ n, P3366945755610682304.a n = A216654 (n + 1)

end A216654

/-! ## A216654.P9659993489715441873

`Δ[A130084(n+1)+A014963(A034444(n+1))]`
-/

namespace A216654.P9659993489715441873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (n + 1) + A014963 (A034444 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216654.P9659993489715441873

namespace A216654

/-- `Δ[A130084(n+1)+A014963(A034444(n+1))]` -/
def P9659993489715441873.Spec : Prop :=
  ∀ n, P9659993489715441873.a n = A216654 (n + 1)

end A216654

/-! ## A216654.P3601794156970216128

`Δ[A240330(A000005(n+1))+A130084(n+1)]`
-/

namespace A216654.P3601794156970216128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240330 (A000005 (n + 1)).toNat + A130084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216654.P3601794156970216128

namespace A216654

/-- `Δ[A240330(A000005(n+1))+A130084(n+1)]` -/
def P3601794156970216128.Spec : Prop :=
  ∀ n, P3601794156970216128.a n = A216654 (n + 1)

end A216654

/-! ## A216654.P16517647315989909134

`Δ[A130084(n+1)-A014963(A263827(n+1))]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A216654

/-- `Δ[A130084(n+1)-A014963(A263827(n+1))]` -/
def P16517647315989909134.Spec : Prop :=
  ∀ n, P16517647315989909134.a n = A216654 (n + 1)

theorem P16517647315989909134.correct : P16517647315989909134.Spec := by
  intro n
  simp only [A216654, Nat.add_sub_cancel]

end A216654

/-! ## A216654.P7107718998215970106

`Δ[A130084(n+1)%A001588(n)]`
-/

namespace A216654.P7107718998215970106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130084 (n + 1)) (A001588 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216654.P7107718998215970106

namespace A216654

/-- `Δ[A130084(n+1)%A001588(n)]` -/
def P7107718998215970106.Spec : Prop :=
  ∀ n, P7107718998215970106.a n = A216654 (n + 1)

end A216654

/-! ## A216654.P3899522008450040206

`Δ[A130084(n+1)]*A014963(A294629(n+1))`
-/

namespace A216654.P3899522008450040206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A014963 (A294629 (n + 1)).toNat

end

end A216654.P3899522008450040206

namespace A216654

/-- `Δ[A130084(n+1)]*A014963(A294629(n+1))` -/
def P3899522008450040206.Spec : Prop :=
  ∀ n, P3899522008450040206.a n = A216654 (n + 1)

end A216654

/-!
# A216655: Number of n-digit 5th powers.

The programs for A216655, the canonical program `A216655.P6308182779093505033` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216655 has offset 1).

The definition of A216655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216655.P11491959795812901497

`Δ[A130130(n+1)+A130084(2*n+1)]`
-/

namespace A216655.P11491959795812901497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) + A130084 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216655.P11491959795812901497

namespace A216655

/-- `Δ[A130130(n+1)+A130084(2*n+1)]` -/
def P11491959795812901497.Spec : Prop :=
  ∀ n, P11491959795812901497.a n = A216655 (n + 1)

end A216655

/-! ## A216655.P6308182779093505033

`Δ[A130084(2*n+1)+A019426(2*n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216655

/-- `Δ[A130084(2*n+1)+A019426(2*n)]` -/
def P6308182779093505033.Spec : Prop :=
  ∀ n, P6308182779093505033.a n = A216655 (n + 1)

theorem P6308182779093505033.correct : P6308182779093505033.Spec := by
  intro n
  simp only [A216655, Nat.add_sub_cancel]

end A216655

/-! ## A216655.P2352505010063904162

`A216654(2*(n+1))+A216654(2*n+1)`
-/

namespace A216655.P2352505010063904162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216654 (2 * (n + 1)) + A216654 (2 * n + 1)

end

end A216655.P2352505010063904162

namespace A216655

/-- `A216654(2*(n+1))+A216654(2*n+1)` -/
def P2352505010063904162.Spec : Prop :=
  ∀ n, P2352505010063904162.a n = A216655 (n + 1)

end A216655

/-! ## A216655.P8068073801066383215

`A327172(2*n+1)+Δ[A130084(2*n+1)]`
-/

namespace A216655.P8068073801066383215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327172 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A216655.P8068073801066383215

namespace A216655

/-- `A327172(2*n+1)+Δ[A130084(2*n+1)]` -/
def P8068073801066383215.Spec : Prop :=
  ∀ n, P8068073801066383215.a n = A216655 (n + 1)

end A216655

/-! ## A216655.P4845091769274432060

`Δ[A130084(2*n+1)+A014963(A034444(2*n+1))]`
-/

namespace A216655.P4845091769274432060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (2 * n + 1) + A014963 (A034444 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216655.P4845091769274432060

namespace A216655

/-- `Δ[A130084(2*n+1)+A014963(A034444(2*n+1))]` -/
def P4845091769274432060.Spec : Prop :=
  ∀ n, P4845091769274432060.a n = A216655 (n + 1)

end A216655

/-! ## A216655.P2653802637327905216

`Δ[A240330(A000005(2*n+1))+A130084(2*n+1)]`
-/

namespace A216655.P2653802637327905216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240330 (A000005 (2 * n + 1)).toNat + A130084 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216655.P2653802637327905216

namespace A216655

/-- `Δ[A240330(A000005(2*n+1))+A130084(2*n+1)]` -/
def P2653802637327905216.Spec : Prop :=
  ∀ n, P2653802637327905216.a n = A216655 (n + 1)

end A216655

/-! ## A216655.P7181261384136258836

`Δ[A130084(2*n+1)-A014963(A263827(2*n+1))]`
-/

namespace A216655.P7181261384136258836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (2 * n + 1) - A014963 (A263827 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216655.P7181261384136258836

namespace A216655

/-- `Δ[A130084(2*n+1)-A014963(A263827(2*n+1))]` -/
def P7181261384136258836.Spec : Prop :=
  ∀ n, P7181261384136258836.a n = A216655 (n + 1)

end A216655

/-! ## A216655.P5195783451441488075

`A014963(A294629(n+2))*Δ[A130084(2*n+1)]`
-/

namespace A216655.P5195783451441488075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130084 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A294629 (n + 2)).toNat * (f1 (n + 1) - f1 n)

end

end A216655.P5195783451441488075

namespace A216655

/-- `A014963(A294629(n+2))*Δ[A130084(2*n+1)]` -/
def P5195783451441488075.Spec : Prop :=
  ∀ n, P5195783451441488075.a n = A216655 (n + 1)

end A216655

/-!
# A216656: Number of n-digit 6th powers.

The programs for A216656, the canonical program `A216656.P2546391177797507173` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216656 has offset 1).

The definition of A216656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 600 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216656.P13082224209030120001

`Δ[A130080(n+1)]+floor(acot(n))`
-/

namespace A216656.P13082224209030120001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A216656.P13082224209030120001

namespace A216656

/-- `Δ[A130080(n+1)]+floor(acot(n))` -/
def P13082224209030120001.Spec : Prop :=
  ∀ n, P13082224209030120001.a n = A216656 (n + 1)

end A216656

/-! ## A216656.P2546391177797507173

`A000007(n)+Δ[A130080(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216656

/-- `A000007(n)+Δ[A130080(n+1)]` -/
def P2546391177797507173.Spec : Prop :=
  ∀ n, P2546391177797507173.a n = A216656 (n + 1)

theorem P2546391177797507173.correct : P2546391177797507173.Spec := by
  intro n
  simp only [A216656, Nat.add_sub_cancel]

end A216656

/-! ## A216656.P8062096537819862135

`Δ[A130080(n+1)+A057427(n)]`
-/

namespace A216656.P8062096537819862135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216656.P8062096537819862135

namespace A216656

/-- `Δ[A130080(n+1)+A057427(n)]` -/
def P8062096537819862135.Spec : Prop :=
  ∀ n, P8062096537819862135.a n = A216656 (n + 1)

end A216656

/-! ## A216656.P14676437116216280403

`Δ[A130080(n+1)-A057428(n)]`
-/

namespace A216656.P14676437116216280403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (n + 1) - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216656.P14676437116216280403

namespace A216656

/-- `Δ[A130080(n+1)-A057428(n)]` -/
def P14676437116216280403.Spec : Prop :=
  ∀ n, P14676437116216280403.a n = A216656 (n + 1)

end A216656

/-! ## A216656.P3551144031862502125

`Δ[A130130(n+1)+A130080(n+1)]`
-/

namespace A216656.P3551144031862502125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) + A130080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216656.P3551144031862502125

namespace A216656

/-- `Δ[A130130(n+1)+A130080(n+1)]` -/
def P3551144031862502125.Spec : Prop :=
  ∀ n, P3551144031862502125.a n = A216656 (n + 1)

end A216656

/-! ## A216656.P10135033616488978186

`Δ[A130080(n+1)+A006046(n)%2]`
-/

namespace A216656.P10135033616488978186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (n + 1) + Int.tmod (A006046 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216656.P10135033616488978186

namespace A216656

/-- `Δ[A130080(n+1)+A006046(n)%2]` -/
def P10135033616488978186.Spec : Prop :=
  ∀ n, P10135033616488978186.a n = A216656 (n + 1)

end A216656

/-! ## A216656.P7399663764210314904

`Δ[A130080(n+1)+A147562(n)%2]`
-/

namespace A216656.P7399663764210314904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130080 (n + 1) + Int.tmod (A147562 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216656.P7399663764210314904

namespace A216656

/-- `Δ[A130080(n+1)+A147562(n)%2]` -/
def P7399663764210314904.Spec : Prop :=
  ∀ n, P7399663764210314904.a n = A216656 (n + 1)

end A216656

/-! ## A216656.P15226049494875003410

`Δ[A178334(A178334(n)²)+A130080(n+1)]`
-/

namespace A216656.P15226049494875003410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (A178334 n ^ 2).toNat + A130080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216656.P15226049494875003410

namespace A216656

/-- `Δ[A178334(A178334(n)²)+A130080(n+1)]` -/
def P15226049494875003410.Spec : Prop :=
  ∀ n, P15226049494875003410.a n = A216656 (n + 1)

end A216656

/-! ## A216656.P17639396202460167192

`Δ[A130080(n+1)%A295964(n)]`
-/

namespace A216656.P17639396202460167192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130080 (n + 1)) (A295964 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216656.P17639396202460167192

namespace A216656

/-- `Δ[A130080(n+1)%A295964(n)]` -/
def P17639396202460167192.Spec : Prop :=
  ∀ n, P17639396202460167192.a n = A216656 (n + 1)

end A216656

/-!
# A216657: Number of n-digit 7th powers.

The programs for A216657, the canonical program `A216657.P11584367721295558952` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216657 has offset 1).

The definition of A216657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216657.P11584367721295558952

`A000007(n)+Δ[A130081(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216657

/-- `A000007(n)+Δ[A130081(n+1)]` -/
def P11584367721295558952.Spec : Prop :=
  ∀ n, P11584367721295558952.a n = A216657 (n + 1)

theorem P11584367721295558952.correct : P11584367721295558952.Spec := by
  intro n
  simp only [A216657, Nat.add_sub_cancel]

end A216657

/-! ## A216657.P4198362540465563497

`Δ[A130081(n+1)+A057427(n)]`
-/

namespace A216657.P4198362540465563497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130081 (n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216657.P4198362540465563497

namespace A216657

/-- `Δ[A130081(n+1)+A057427(n)]` -/
def P4198362540465563497.Spec : Prop :=
  ∀ n, P4198362540465563497.a n = A216657 (n + 1)

end A216657

/-! ## A216657.P15500703571301327608

`Δ[A130130(n+1)+A130081(n+1)]`
-/

namespace A216657.P15500703571301327608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) + A130081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216657.P15500703571301327608

namespace A216657

/-- `Δ[A130130(n+1)+A130081(n+1)]` -/
def P15500703571301327608.Spec : Prop :=
  ∀ n, P15500703571301327608.a n = A216657 (n + 1)

end A216657

/-! ## A216657.P17800180682749544147

`Δ[A130081(n+1)-A020639(A008864(n+1))]`
-/

namespace A216657.P17800180682749544147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130081 (n + 1) - A020639 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216657.P17800180682749544147

namespace A216657

/-- `Δ[A130081(n+1)-A020639(A008864(n+1))]` -/
def P17800180682749544147.Spec : Prop :=
  ∀ n, P17800180682749544147.a n = A216657 (n + 1)

end A216657

/-! ## A216657.P3349062922523724178

`Δ[A130081(n+1)-A020639(A278486(n+1))]`
-/

namespace A216657.P3349062922523724178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130081 (n + 1) - A020639 (A278486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216657.P3349062922523724178

namespace A216657

/-- `Δ[A130081(n+1)-A020639(A278486(n+1))]` -/
def P3349062922523724178.Spec : Prop :=
  ∀ n, P3349062922523724178.a n = A216657 (n + 1)

end A216657

/-! ## A216657.P2989174508901058058

`Δ[A130081(n+1)%A017981(n)²]`
-/

namespace A216657.P2989174508901058058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130081 (n + 1)) (A017981 n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216657.P2989174508901058058

namespace A216657

/-- `Δ[A130081(n+1)%A017981(n)²]` -/
def P2989174508901058058.Spec : Prop :=
  ∀ n, P2989174508901058058.a n = A216657 (n + 1)

end A216657

/-! ## A216657.P6929741490105895046

`Δ[A130081(n+1)%A022398(n)]`
-/

namespace A216657.P6929741490105895046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130081 (n + 1)) (A022398 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216657.P6929741490105895046

namespace A216657

/-- `Δ[A130081(n+1)%A022398(n)]` -/
def P6929741490105895046.Spec : Prop :=
  ∀ n, P6929741490105895046.a n = A216657 (n + 1)

end A216657

/-!
# A216658: Number of n-digit 8th powers.

The programs for A216658, the canonical program `A216658.P3416862560913547511` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216658 has offset 1).

The definition of A216658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 800 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216658.P17808650231862093040

`Δ[A130082(n+1)]+floor(acot(n))`
-/

namespace A216658.P17808650231862093040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A216658.P17808650231862093040

namespace A216658

/-- `Δ[A130082(n+1)]+floor(acot(n))` -/
def P17808650231862093040.Spec : Prop :=
  ∀ n, P17808650231862093040.a n = A216658 (n + 1)

end A216658

/-! ## A216658.P3416862560913547511

`A000007(n)+Δ[A130082(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216658

/-- `A000007(n)+Δ[A130082(n+1)]` -/
def P3416862560913547511.Spec : Prop :=
  ∀ n, P3416862560913547511.a n = A216658 (n + 1)

theorem P3416862560913547511.correct : P3416862560913547511.Spec := by
  intro n
  simp only [A216658, Nat.add_sub_cancel]

end A216658

/-! ## A216658.P16510599440312536929

`Δ[A130082(n+1)+A057427(n)]`
-/

namespace A216658.P16510599440312536929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1) + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216658.P16510599440312536929

namespace A216658

/-- `Δ[A130082(n+1)+A057427(n)]` -/
def P16510599440312536929.Spec : Prop :=
  ∀ n, P16510599440312536929.a n = A216658 (n + 1)

end A216658

/-! ## A216658.P17214582467622561206

`Δ[A130130(n+1)+A130082(n+1)]`
-/

namespace A216658.P17214582467622561206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) + A130082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216658.P17214582467622561206

namespace A216658

/-- `Δ[A130130(n+1)+A130082(n+1)]` -/
def P17214582467622561206.Spec : Prop :=
  ∀ n, P17214582467622561206.a n = A216658 (n + 1)

end A216658

/-! ## A216658.P13632970027388155789

`Δ[A130082(n+1)+A059841(A008574(n))]`
-/

namespace A216658.P13632970027388155789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1) + A059841 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216658.P13632970027388155789

namespace A216658

/-- `Δ[A130082(n+1)+A059841(A008574(n))]` -/
def P13632970027388155789.Spec : Prop :=
  ∀ n, P13632970027388155789.a n = A216658 (n + 1)

end A216658

/-! ## A216658.P6304993627895161899

`Δ[A164886(A267584(n))+A130082(n+1)]`
-/

namespace A216658.P6304993627895161899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164886 (A267584 n).toNat + A130082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216658.P6304993627895161899

namespace A216658

/-- `Δ[A164886(A267584(n))+A130082(n+1)]` -/
def P6304993627895161899.Spec : Prop :=
  ∀ n, P6304993627895161899.a n = A216658 (n + 1)

end A216658

/-! ## A216658.P16560191035895957858

`A059841(A000040(n+1))+Δ[A130082(n+1)]`
-/

namespace A216658.P16560191035895957858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A000040 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A216658.P16560191035895957858

namespace A216658

/-- `A059841(A000040(n+1))+Δ[A130082(n+1)]` -/
def P16560191035895957858.Spec : Prop :=
  ∀ n, P16560191035895957858.a n = A216658 (n + 1)

end A216658

/-! ## A216658.P15030511462950936303

`A059841(A034694(n+1))+Δ[A130082(n+1)]`
-/

namespace A216658.P15030511462950936303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A034694 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A216658.P15030511462950936303

namespace A216658

/-- `A059841(A034694(n+1))+Δ[A130082(n+1)]` -/
def P15030511462950936303.Spec : Prop :=
  ∀ n, P15030511462950936303.a n = A216658 (n + 1)

end A216658

/-! ## A216658.P3229060568231233980

`Δ[A130082(n+1)%A318960(n+2)]`
-/

namespace A216658.P3229060568231233980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130082 (n + 1)) (A318960 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216658.P3229060568231233980

namespace A216658

/-- `Δ[A130082(n+1)%A318960(n+2)]` -/
def P3229060568231233980.Spec : Prop :=
  ∀ n, P3229060568231233980.a n = A216658 (n + 1)

end A216658

/-! ## A216658.P16821614395555071636

`Δ[A130082(n+1)%A052997(n)]`
-/

namespace A216658.P16821614395555071636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130082 (n + 1)) (A052997 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216658.P16821614395555071636

namespace A216658

/-- `Δ[A130082(n+1)%A052997(n)]` -/
def P16821614395555071636.Spec : Prop :=
  ∀ n, P16821614395555071636.a n = A216658 (n + 1)

end A216658

/-!
# A216659: Number of n-digit 9th powers.

The programs for A216659, there is no canonical definition to state claims against.
-/

/-! ## A216659.P7576432762446408020

`Δ[A130130(n+1)+A130083(n+1)]`
-/

namespace A216659.P7576432762446408020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (n + 1) + A130083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216659.P7576432762446408020

/-! ## A216659.P10132638235263336772

`Δ[A130083(n+1)-gcd(2, A000040(n+1))]`
-/

namespace A216659.P10132638235263336772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130083 (n + 1) - (Int.gcd 2 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216659.P10132638235263336772

/-! ## A216659.P11419604990680553029

`Δ[A130083(n+1)+A006530(A001316(n))]`
-/

namespace A216659.P11419604990680553029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130083 (n + 1) + A006530 (A001316 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216659.P11419604990680553029

/-! ## A216659.P3392116473445715107

`A151935(A003056(n))+Δ[A130083(n+1)]`
-/

namespace A216659.P3392116473445715107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 (A003056 n).toNat + (f1 (n + 1) - f1 n)

end

end A216659.P3392116473445715107

/-! ## A216659.P4520026670782192779

`Δ[A130083(n+1)+A000035(A040177(n+1))]`
-/

namespace A216659.P4520026670782192779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130083 (n + 1) + A000035 (A040177 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216659.P4520026670782192779

/-! ## A216659.P12415810586051554387

`Δ[A130083(n+1)%A126646(n)]`
-/

namespace A216659.P12415810586051554387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130083 (n + 1)) (A126646 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216659.P12415810586051554387

/-! ## A216659.P1092092600449092469

`Δ[A130083(n+1)]+A008683((n+1)*(n+1))`
-/

namespace A216659.P1092092600449092469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A008683 ((n + 1) * (n + 1))

end

end A216659.P1092092600449092469

/-! ## A216659.P13984365483244200036

`A000225(A151935(n))+Δ[A130083(n+1)]`
-/

namespace A216659.P13984365483244200036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130083 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A151935 n).toNat + (f1 (n + 1) - f1 n)

end

end A216659.P13984365483244200036

/-!
# A216660: Number of horizontal, vertical or knight-move neighbor colorings of an nX2 array with new integer colors introduced in row major order.

The programs for A216660, there is no canonical definition to state claims against.
-/

/-! ## A216660.P11536013584177222127

`A216663(∑[n+1]+2)`
-/

namespace A216660.P11536013584177222127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216663 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A216660.P11536013584177222127

/-! ## A216660.P10891704967350669982

`record[gcd(A098825(n), A216663(n+1))]`
-/

namespace A216660.P10891704967350669982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A216663 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216660.P10891704967350669982

/-! ## A216660.P8640863822196533341

`record[gcd(A002262(n), A216663(n+2))]`
-/

namespace A216660.P8640863822196533341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A216663 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216660.P8640863822196533341

/-!
# A216661: Number of horizontal, vertical or knight-move neighbor colorings of an nX3 array with new integer colors introduced in row major order.

The programs for A216661, there is no canonical definition to state claims against.
-/

/-! ## A216661.P2891972019653466571

`A216663(∑[n+2]+4)`
-/

namespace A216661.P2891972019653466571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216663 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216661.P2891972019653466571

/-! ## A216661.P16451851807925505557

`A216663(A167614(n+1))+A025437(n)`
-/

namespace A216661.P16451851807925505557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216663 (A167614 (n + 1)).toNat + A025437 n

end

end A216661.P16451851807925505557

/-! ## A216661.P10365170190957195941

`A216663(A167614(n+1))+A025466(n)`
-/

namespace A216661.P10365170190957195941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216663 (A167614 (n + 1)).toNat + A025466 n

end

end A216661.P10365170190957195941

/-!
# A216662: Number of horizontal, vertical or knight-move neighbor colorings of an nX4 array with new integer colors introduced in row major order.

The programs for A216662, there is no canonical definition to state claims against.
-/

/-! ## A216662.P2537652785199120254

`A216663(∑[n+4]+3)`
-/

namespace A216662.P2537652785199120254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216663 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A216662.P2537652785199120254

/-!
# A216664: Odd numbers n such that the decimal expansion of 1/n contains the digit "9" at position (n + 1)/2.

The programs for A216664, there is no canonical definition to state claims against.
-/

/-! ## A216664.P8148912814748082529

`p?[eq[3, A225661(3*n+1)]]`
-/

namespace A216664.P8148912814748082529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225661 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216664.P8148912814748082529

/-! ## A216664.P8507098945612699861

`A038880(∑[A340219(n)!])`
-/

namespace A216664.P8507098945612699861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A340219 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216664.P8507098945612699861

/-! ## A216664.P15932402738511737943

`p?[lt[2, A267825(A164993(n))]]`
-/

namespace A216664.P15932402738511737943
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267825 (A164993 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A216664.P15932402738511737943

/-! ## A216664.P14178973170944517056

`∩[A038880(n+1), A049386(n)]`
-/

namespace A216664.P14178973170944517056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049386 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216664.P14178973170944517056

/-! ## A216664.P3199596610030589410

`∩[A028416(n+1), A028800(n+1)]`
-/

namespace A216664.P3199596610030589410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216664.P3199596610030589410

/-!
# A216665: Triangular array read by rows: T(n,k) is the number of partitions of n into k parts of 2 different sizes; n>=3, 2<=k<=n-1.

The programs for A216665, there is no canonical definition to state claims against.
-/

/-! ## A216665.P1478767907814839274

`A112758(5*A136220(n))`
-/

namespace A216665.P1478767907814839274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112758 (5 * A136220 n).toNat

end

end A216665.P1478767907814839274

/-! ## A216665.P2004922627491148004

`A043534(A136217(n)+A053585(n+1))`
-/

namespace A216665.P2004922627491148004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043534 (A136217 n + A053585 (n + 1)).toNat

end

end A216665.P2004922627491148004

/-! ## A216665.P9164664258612729958

`A257023(A358007(3*n+1)+A100326(n))`
-/

namespace A216665.P9164664258612729958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257023 (A358007 (3 * n + 1 + 53) + A100326 n).toNat

end

end A216665.P9164664258612729958

/-! ## A216665.P9875880096659824423

`A231813(xor(A088212(n+1)²+n, A110682(n)))`
-/

namespace A216665.P9875880096659824423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 (Int.xor (A088212 (n + 1) ^ 2 + (n : ℤ)) (A110682 n)).toNat

end

end A216665.P9875880096659824423

/-!
# A216667: Semiprime 2-pseudoprimes of the form 10k + 7.

The programs for A216667, there is no canonical definition to state claims against.
-/

/-! ## A216667.P1601414639209278329

`∩[A179839(n+1), A317972(n+1)]`
-/

namespace A216667.P1601414639209278329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216667.P1601414639209278329

/-! ## A216667.P11300080796338359068

`∩[A179707(n+1), A317972(n+1)]`
-/

namespace A216667.P11300080796338359068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216667.P11300080796338359068

/-! ## A216667.P16573736571213257569

`A000027(∩[A050217(n+1), A317972(n+1)])`
-/

namespace A216667.P16573736571213257569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317972 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A216667.P16573736571213257569

/-! ## A216667.P16029014857151880531

`∩[A291617(n+1), A317972(n+1)]`
-/

namespace A216667.P16029014857151880531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216667.P16029014857151880531

/-!
# A216670: Tribonacci numbers which can be written in the form a^2 + b^2.

The programs for A216670, there is no canonical definition to state claims against.
-/

/-! ## A216670.P10687634349389412453

`eq[A000161(n), A028342(A278043(n))]`
-/

namespace A216670.P10687634349389412453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028342 (A278043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216670.P10687634349389412453

/-! ## A216670.P14696139860767838683

`lt[A040259(A000925(n))*A278043(n), 2]`
-/

namespace A216670.P14696139860767838683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040259 (A000925 n).toNat * A278043 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A216670.P14696139860767838683

/-! ## A216670.P14290900957041323004

`A000073(lt[3, Δ[A113058(3*n+2)]])`
-/

namespace A216670.P14290900957041323004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113058 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A216670.P14290900957041323004

/-! ## A216670.P5939649894653061275

`record[A000073(n)%Δ[A113058(3*n+2)]]`
-/

namespace A216670.P5939649894653061275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113058 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000073 n) (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216670.P5939649894653061275

/-!
# A216672: Total number of solutions to the equation x^2 + k*y^2 = n with x > 0, y > 0, k > 0. (Order does not matter for the equation x^2 + y^2 = n.)

The programs for A216672, there is no canonical definition to state claims against.
-/

/-! ## A216672.P14969732931099064138

`A217834(n+1)-A025441(n+1)`
-/

namespace A216672.P14969732931099064138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217834 (n + 1) - A025441 (n + 1)

end

end A216672.P14969732931099064138

/-! ## A216672.P10598393525058354829

`A216673(2*(n+1))+A217834(n+1)-A217840(2*(n+1))`
-/

namespace A216672.P10598393525058354829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216673 (2 * (n + 1)) + (A217834 (n + 1) - A217840 (2 * (n + 1)))

end

end A216672.P10598393525058354829

/-! ## A216672.P930761051483077867

`A277165(A006261(n))+A216503(n+1)`
-/

namespace A216672.P930761051483077867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 (A006261 n).toNat + A216503 (n + 1)

end

end A216672.P930761051483077867

/-!
# A216673: Total number of solutions to the equation x^2 + k*y^2 = n with x >= 0, y >= 0, k > 0, or 0 if the number is infinite. (Order does not matter for the equation x^2 + y^2 = n).

The programs for A216673, there is no canonical definition to state claims against.
-/

/-! ## A216673.P6083826676511378713

`A216674(n+1)+A217840(n+1)-A217956(n+1)`
-/

namespace A216673.P6083826676511378713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216674 (n + 1) + (A217840 (n + 1) - A217956 (n + 1))

end

end A216673.P6083826676511378713

/-! ## A216673.P15780580886877039135

`(A216672(n+1)+A046951(n+1))%A059903(n+1)`
-/

namespace A216673.P15780580886877039135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216672 (n + 1) + A046951 (n + 1)) (A059903 (n + 1))

end

end A216673.P15780580886877039135

/-! ## A216673.P6316883876359505310

`A216504(n+1)+A055641(A019320(n))`
-/

namespace A216673.P6316883876359505310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216504 (n + 1) + A055641 (A019320 n).toNat

end

end A216673.P6316883876359505310

/-! ## A216673.P12978676292216483881

`A216504(n+1)+A092573(A347811(n))`
-/

namespace A216673.P12978676292216483881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216504 (n + 1) + A092573 (A347811 n).toNat

end

end A216673.P12978676292216483881

/-!
# A216674: Total number of solutions to the equation x^2+k*y^2 = n with x > 0, y > 0, k >= 0, or 0 if infinite. (Order does not matter for the equation x^2+y^2 = n).

The programs for A216674, there is no canonical definition to state claims against.
-/

/-! ## A216674.P9305543511040301107

`A216672(n+1)*A267866(n)`
-/

namespace A216674.P9305543511040301107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (n + 1) * A267866 n

end

end A216674.P9305543511040301107

/-! ## A216674.P15261870981616368684

`Δ[A028391(n)]*A216672(n+1)`
-/

namespace A216674.P15261870981616368684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A216672 (n + 1)

end

end A216674.P15261870981616368684

/-! ## A216674.P7835682988453121544

`lcm(Δ[A071028(n)], A216672(n+1))`
-/

namespace A216674.P7835682988453121544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A216672 (n + 1))

end

end A216674.P7835682988453121544

/-! ## A216674.P2783241672892074867

`A049240(n+1)*A216672(n+1)`
-/

namespace A216674.P2783241672892074867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (n + 1) * A216672 (n + 1)

end

end A216674.P2783241672892074867

/-! ## A216674.P10181588313018281333

`A216672(lcm(n, A068717(n+1))+1)`
-/

namespace A216674.P10181588313018281333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (Int.lcm (n : ℤ) (A068717 (n + 1)) + 1)

end

end A216674.P10181588313018281333

/-! ## A216674.P15215734275450711777

`A216672(n+1)%A004101(A217840(n+1))`
-/

namespace A216674.P15215734275450711777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216672 (n + 1)) (A004101 (A217840 (n + 1)).toNat)

end

end A216674.P15215734275450711777

/-! ## A216674.P6189555114220781407

`A216672(gcd(n+1, A216503(n+1)-A216505(n+1)))`
-/

namespace A216674.P6189555114220781407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (Int.gcd (n + 1 : ℤ) (A216503 (n + 1) - A216505 (n + 1)))

end

end A216674.P6189555114220781407

/-! ## A216674.P15384847089477989444

`A216672(n+1)+(A216503(n+1)-A216505(n+1))*A216672(n+1)`
-/

namespace A216674.P15384847089477989444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216672 (n + 1) + (A216503 (n + 1) - A216505 (n + 1)) * A216672 (n + 1)

end

end A216674.P15384847089477989444

/-! ## A216674.P10840827719519461573

`A216672(n+1)%A059903(n+1)`
-/

namespace A216674.P10840827719519461573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216672 (n + 1)) (A059903 (n + 1))

end

end A216674.P10840827719519461573

/-! ## A216674.P2961169167332021518

`floor(sqrt(A216672(n+1)*A217956(n+1)))`
-/

namespace A216674.P2961169167332021518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A216672 (n + 1) * A217956 (n + 1))

end

end A216674.P2961169167332021518

/-!
# A216675: Number of ways one can draw arrows between adjacent nodes of an n X n grid such that each node has one outgoing and one incoming arrow.

The programs for A216675, there is no canonical definition to state claims against.
-/

/-! ## A216675.P12890732382855950063

`A187616(∑[n+2])²`
-/

namespace A216675.P12890732382855950063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A216675.P12890732382855950063

/-! ## A216675.P18302290382208035498

`A099390(∑[A008574(n)])²`
-/

namespace A216675.P18302290382208035498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099390 (∑ j ∈ Finset.range (n + 1), f1 j).toNat ^ 2

end

end A216675.P18302290382208035498

/-! ## A216675.P5555722664302407685

`A187616(∑[n+2])^A025487(A324872(n+1)+1)`
-/

namespace A216675.P5555722664302407685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187616 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A025487 (A324872 (n + 1) + 1).toNat : ℤ)

end

end A216675.P5555722664302407685

/-!
# A216676: Digital roots of squares of Fibonacci numbers.

The programs for A216676, the canonical program `A216676.P8042148901367579546` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216676 has offset 1).

The definition of A216676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216676.P8042148901367579546

`dr(A388539(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216676

/-- `dr(A388539(n+1))` -/
def P8042148901367579546.Spec : Prop :=
  ∀ n, (P8042148901367579546.a n : ℤ) = A216676 (n + 1)

theorem P8042148901367579546.correct : P8042148901367579546.Spec := by
  intro n
  simp only [A216676, Nat.add_sub_cancel]

end A216676

/-!
# A216677: Number of squares s^2 that divide the product of the divisors of n, such that rad(s) = rad(n), where rad(n) = A007947.

The programs for A216677, the canonical program `A216677.P14396045950144953032` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216677 has offset 1).

The definition of A216677 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216677.P14396045950144953032

`∏{e}[n+1, A002265(#*A000005(n+1))]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A216677

/-- `∏{e}[n+1, A002265(#*A000005(n+1))]` -/
def P14396045950144953032.Spec : Prop :=
  ∀ n, P14396045950144953032.a n = A216677 (n + 1)

theorem P14396045950144953032.correct : P14396045950144953032.Spec := by
  intro n
  simp only [A216677, Nat.add_sub_cancel]

end A216677

/-! ## A216677.P13611865997888676464

`∏{p}[(n+1)*∏{p}[n+1, #], val(A007955(n+1), #²)]`
-/

namespace A216677.P13611865997888676464
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (A007955 (n + 1)).toNat (p ^ 2)

end

end A216677.P13611865997888676464

namespace A216677

/-- `∏{p}[(n+1)*∏{p}[n+1, #], val(A007955(n+1), #²)]` -/
def P13611865997888676464.Spec : Prop :=
  ∀ n, (P13611865997888676464.a n : ℤ) = A216677 (n + 1)

end A216677

/-! ## A216677.P15407722694322627561

`∏{p}[A183103(n+1), val(A007955(n+1), #²)]`
-/

namespace A216677.P15407722694322627561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183103 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, SequenceMachineLib.valuation (A007955 (n + 1)).toNat (p ^ 2)

end

end A216677.P15407722694322627561

namespace A216677

/-- `∏{p}[A183103(n+1), val(A007955(n+1), #²)]` -/
def P15407722694322627561.Spec : Prop :=
  ∀ n, (P15407722694322627561.a n : ℤ) = A216677 (n + 1)

end A216677

/-! ## A216677.P995983115923411935

`∏{e}[∏{d}[n+1, #], floor(#/2)]`
-/

namespace A216677.P995983115923411935
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊(Nat.factorization (f1 n) p : ℚ) / 2⌋

end

end A216677.P995983115923411935

namespace A216677

/-- `∏{e}[∏{d}[n+1, #], floor(#/2)]` -/
def P995983115923411935.Spec : Prop :=
  ∀ n, P995983115923411935.a n = A216677 (n + 1)

end A216677

/-! ## A216677.P2702298193168658124

`∏{e}[A007955(n+1), floor(#/2)]`
-/

namespace A216677.P2702298193168658124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ⌊(Nat.factorization (f1 n).natAbs p : ℚ) / 2⌋

end

end A216677.P2702298193168658124

namespace A216677

/-- `∏{e}[A007955(n+1), floor(#/2)]` -/
def P2702298193168658124.Spec : Prop :=
  ∀ n, P2702298193168658124.a n = A216677 (n + 1)

end A216677

/-!
# A216678: On an n X n grid, number of ways to draw arrows between adjacent nodes such that each node has one outgoing and one incoming arrow, of which the one is not the opposite of the other (i.e., without 2-loops).

The programs for A216678, there is no canonical definition to state claims against.
-/

/-! ## A216678.P14674952691302201567

`A216800((n+1)²+n²)`
-/

namespace A216678.P14674952691302201567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216800 ((n + 1) ^ 2 + n ^ 2)

end

end A216678.P14674952691302201567

/-!
# A216679: Numbers which can be written neither as a^2+b^2, nor as a^2+2*b^2, nor as a^2+3*b^2, nor as a^2+7*b^2, with a >= 0 and b >= 0.

The programs for A216679, there is no canonical definition to state claims against.
-/

/-! ## A216679.P2586347980037098745

`A216680(n+2)`
-/

namespace A216679.P2586347980037098745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216680 (n + 2)

end

end A216679.P2586347980037098745

/-! ## A216679.P12802290816929563004

`record[A216680(or(n, A000038(n)))]`
-/

namespace A216679.P12802290816929563004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216680 (Int.lor (n : ℤ) (A000038 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216679.P12802290816929563004

/-! ## A216679.P15424765835124853230

`record[A216680(A001281(A004277(n)))]`
-/

namespace A216679.P15424765835124853230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216680 (A001281 (A004277 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216679.P15424765835124853230

/-! ## A216679.P13205521691011728258

`record[A216680(A000267(A008611(n)))]`
-/

namespace A216679.P13205521691011728258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216680 (A000267 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216679.P13205521691011728258

/-! ## A216679.P8122577874095814816

`record[A216680(A080513(A004442(n)))]`
-/

namespace A216679.P8122577874095814816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216680 (A080513 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216679.P8122577874095814816

/-! ## A216679.P9241054131626283795

`record[A216680(A080513(A004443(n)))]`
-/

namespace A216679.P9241054131626283795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216680 (A080513 (A004443 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216679.P9241054131626283795

/-! ## A216679.P14255903636619246119

`record[A216680(A080513(A008624(n)))]`
-/

namespace A216679.P14255903636619246119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216680 (A080513 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216679.P14255903636619246119

/-! ## A216679.P11893949236343221422

`record[A216680(A008619(A133265(n)))]`
-/

namespace A216679.P11893949236343221422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216680 (A008619 (A133265 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216679.P11893949236343221422

/-!
# A216680: Numbers which can be written neither as a^2+b^2, nor as a^2+2*b^2, nor as a^2+3*b^2, nor as a^2+7*b^2, with a > 0 and b > 0.

The programs for A216680, there is no canonical definition to state claims against.
-/

/-! ## A216680.P902608126026545637

`A216679(n)%and(5*(2*a(floor(n/2))-(-1)^n+1)-n%2, -2)` with `a(0)=1`
-/

namespace A216680.P902608126026545637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A216679 n) (Int.land (5 * (2 * a ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1) - ((n % 2 : ℕ) : ℤ)) (-2))

end

end A216680.P902608126026545637

/-! ## A216680.P2941153029580674777

`∪[A216679(n+1), A006857(n)]`
-/

namespace A216680.P2941153029580674777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P2941153029580674777

/-! ## A216680.P8156861407266486049

`∪[A216679(n+1), A006859(n)]`
-/

namespace A216680.P8156861407266486049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P8156861407266486049

/-! ## A216680.P14608046795225975441

`∪[A216679(n+1), A008340(n)]`
-/

namespace A216680.P14608046795225975441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008340 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P14608046795225975441

/-! ## A216680.P3932332818388006048

`∪[A216679(n+1), A008357(n)]`
-/

namespace A216680.P3932332818388006048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008357 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P3932332818388006048

/-! ## A216680.P5684601066859550651

`∪[A216679(n+1), A008385(n)]`
-/

namespace A216680.P5684601066859550651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008385 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P5684601066859550651

/-! ## A216680.P8560104602485167280

`∪[A216679(n+1), A008387(n)]`
-/

namespace A216680.P8560104602485167280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008387 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P8560104602485167280

/-! ## A216680.P15653673983112651280

`∪[A216679(n+1), A008395(n)]`
-/

namespace A216680.P15653673983112651280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P15653673983112651280

/-! ## A216680.P5865948766060814571

`∪[A216679(n+1), A008397(n)]`
-/

namespace A216680.P5865948766060814571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008397 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P5865948766060814571

/-! ## A216680.P3755395029491302605

`∪[A216679(n+1), A008402(n)]`
-/

namespace A216680.P3755395029491302605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008402 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216680.P3755395029491302605

/-!
# A216681: G.f.: A(x) = 1 + x*A(x)^3 / ( A(I*x)*A(-I*x) ), where I^2 = -1.

The programs for A216681, there is no canonical definition to state claims against.
-/

/-! ## A216681.P14187576442214175516

`A171727(A112872(n+1))`
-/

namespace A216681.P14187576442214175516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171727 (A112872 (n + 1)).toNat

end

end A216681.P14187576442214175516

/-! ## A216681.P7503394479501778112

`A013597(xor(n, A002293(n)))`
-/

namespace A216681.P7503394479501778112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (Int.xor (n : ℤ) (A002293 n)).toNat

end

end A216681.P7503394479501778112

/-!
# A216682: Perfect squares which can be written in all the four forms a^2+b^2, a^2+2*b^2, a^2+3*b^2 and a^2+7*b^2, with a > 0 and b > 0.

The programs for A216682, there is no canonical definition to state claims against.
-/

/-! ## A216682.P16523596883251230344

`A216828(n+1)²`
-/

namespace A216682.P16523596883251230344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216828 (n + 1) ^ 2

end

end A216682.P16523596883251230344

/-! ## A216682.P820368467712485261

`record[A216828(A065648(n))²]`
-/

namespace A216682.P820368467712485261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216828 (A065648 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216682.P820368467712485261

/-! ## A216682.P12475180389371559005

`record[A216828(A086742(n))²]`
-/

namespace A216682.P12475180389371559005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216828 (A086742 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216682.P12475180389371559005

/-! ## A216682.P12495456872173439819

`record[A216828(A102885(n))²]`
-/

namespace A216682.P12495456872173439819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216828 (A102885 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216682.P12495456872173439819

/-! ## A216682.P7996925592128566016

`record[A216828(A286626(n))²]`
-/

namespace A216682.P7996925592128566016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216828 (A286626 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216682.P7996925592128566016

/-!
# A216685: a(n) is the number of 1's in binary expansion of n + a(n-1), with a(0)=0.

The programs for A216685, the canonical program `A216685.P9601473456840992618` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216685 has offset 0).

The definition of A216685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216685.P9601473456840992618

`A000120(n+a(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A216685

/-- `A000120(n+a(n-1))` -/
def P9601473456840992618.Spec : Prop :=
  ∀ n, P9601473456840992618.a n = A216685 n

theorem P9601473456840992618.correct : P9601473456840992618.Spec := by
  intro n
  simp only [A216685]

end A216685

/-! ## A216685.P13352511899004387525

`log2(A001316(a(n-1)+n))` with `a(0)=0`
-/

namespace A216685.P13352511899004387525
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.logb 2 (A001316 (SequenceMachineLib.roundAway (a (n - 1) + (n : ℝ))).toNat : ℝ)

end

end A216685.P13352511899004387525

namespace A216685

/-- `log2(A001316(a(n-1)+n))` -/
def P13352511899004387525.Spec : Prop :=
  ∀ n, P13352511899004387525.a n = (A216685 n : ℝ)

end A216685

/-! ## A216685.P5490382966643082439

`A001222(A268444(a(n-1)+n))` with `a(0)=0`
-/

namespace A216685.P5490382966643082439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (A268444 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A216685.P5490382966643082439

namespace A216685

/-- `A001222(A268444(a(n-1)+n))` -/
def P5490382966643082439.Spec : Prop :=
  ∀ n, P5490382966643082439.a n = A216685 n

end A216685

/-! ## A216685.P2460375532573625212

`A000120(n-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A216685.P2460375532573625212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000120 ((n : ℤ) - (-a (n - 1))).toNat

end

end A216685.P2460375532573625212

namespace A216685

/-- `A000120(n-floor(-a(n-1)))` -/
def P2460375532573625212.Spec : Prop :=
  ∀ n, P2460375532573625212.a n = A216685 n

theorem P2460375532573625212.correct : P2460375532573625212.Spec := by
  intro n
  simp only [A216685, Nat.add_sub_cancel, A216685.P2460375532573625212.a, A216685.P9601473456840992618.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A216685

/-! ## A216685.P13706978504997468500

`A001222(A071044(a(n-1)+n))` with `a(0)=0`
-/

namespace A216685.P13706978504997468500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (A071044 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A216685.P13706978504997468500

namespace A216685

/-- `A001222(A071044(a(n-1)+n))` -/
def P13706978504997468500.Spec : Prop :=
  ∀ n, P13706978504997468500.a n = A216685 n

end A216685

/-! ## A216685.P17350686035177377716

`A001222(A048883(a(n-1)+n))` with `a(0)=0`
-/

namespace A216685.P17350686035177377716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (A048883 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A216685.P17350686035177377716

namespace A216685

/-- `A001222(A048883(a(n-1)+n))` -/
def P17350686035177377716.Spec : Prop :=
  ∀ n, P17350686035177377716.a n = A216685 n

end A216685

/-! ## A216685.P11230544285942548564

`A001222(A019565(a(n-1)+n))` with `a(0)=0`
-/

namespace A216685.P11230544285942548564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (A019565 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A216685.P11230544285942548564

namespace A216685

/-- `A001222(A019565(a(n-1)+n))` -/
def P11230544285942548564.Spec : Prop :=
  ∀ n, P11230544285942548564.a n = A216685 n

end A216685

/-!
# A216686: Numbers n such that n appears in the partial sums of the m-almost primes, where m=bigomega(n).

The programs for A216686, there is no canonical definition to state claims against.
-/

/-! ## A216686.P16226117992519677291

`A191203(lt[A343100(n+1), n])`
-/

namespace A216686.P16226117992519677291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343100 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A216686.P16226117992519677291

/-! ## A216686.P7169559982331257770

`A032937(lt[A304777(n+2), 4]+1)`
-/

namespace A216686.P7169559982331257770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304777 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032937 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A216686.P7169559982331257770

/-! ## A216686.P7470746477722224608

`A191203(floor(A184164(3*n+2)/(ϕ+4))+1)`
-/

namespace A216686.P7470746477722224608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191203 (⌊(A184164 (3 * n + 2) : ℝ) / (Real.goldenRatio + 4)⌋ + 1).toNat

end

end A216686.P7470746477722224608

/-! ## A216686.P9986608979271065491

`eq[A000112(A300983(n)), A000120(n)]`
-/

namespace A216686.P9986608979271065491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 (A300983 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216686.P9986608979271065491

/-! ## A216686.P9711186140463447678

`eq[A036440(A260739(n+1)), A379003(n)]`
-/

namespace A216686.P9711186140463447678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036440 (A260739 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379003 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216686.P9711186140463447678

/-!
# A216687: Odd numbers > 10 that can be written as m*s - m + 1, where s is the sum of their digits and m >= 1.

The programs for A216687, the canonical program `A216687.P16719336148888210859` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216687 has offset 1).

The definition of A216687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1195 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216687.P684076301972442530

`record[A141310(A005349(n+10))]`
-/

namespace A216687.P684076301972442530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A005349 (n + 10)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216687.P684076301972442530

namespace A216687

/-- `record[A141310(A005349(n+10))]` -/
def P684076301972442530.Spec : Prop :=
  ∀ n, P684076301972442530.a n = A216687 (n + 1)

end A216687

/-! ## A216687.P16719336148888210859

`record[A093178(n+11)*A188641(n+10)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A216687

/-- `record[A093178(n+11)*A188641(n+10)]` -/
def P16719336148888210859.Spec : Prop :=
  ∀ n, P16719336148888210859.a n = A216687 (n + 1)

theorem P16719336148888210859.correct : P16719336148888210859.Spec := by
  intro n
  simp only [A216687, Nat.add_sub_cancel]

end A216687

/-! ## A216687.P3473088300915764872

`record[A000265(n+11)/A144261(n+10)]`
-/

namespace A216687.P3473088300915764872
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 11) : ℚ) / (A144261 (n + 10) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216687.P3473088300915764872

namespace A216687

/-- `record[A000265(n+11)/A144261(n+10)]` -/
def P3473088300915764872.Spec : Prop :=
  ∀ n, P3473088300915764872.a n = (A216687 (n + 1) : ℚ)

end A216687

/-! ## A216687.P14150328356992899091

`A153152(A101814(n+5))`
-/

namespace A216687.P14150328356992899091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A101814 (n + 5)).toNat

end

end A216687.P14150328356992899091

namespace A216687

/-- `A153152(A101814(n+5))` -/
def P14150328356992899091.Spec : Prop :=
  ∀ n, P14150328356992899091.a n = A216687 (n + 1)

end A216687

/-! ## A216687.P758916363946308823

`record[gcd(A026741(n+11), A070635(n+10))]`
-/

namespace A216687.P758916363946308823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026741 (n + 11)) (A070635 (n + 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216687.P758916363946308823

namespace A216687

/-- `record[gcd(A026741(n+11), A070635(n+10))]` -/
def P758916363946308823.Spec : Prop :=
  ∀ n, (P758916363946308823.a n : ℤ) = A216687 (n + 1)

end A216687

/-!
# A216688: Expansion of e.g.f. exp( x * exp(x^2) ).

The programs for A216688, there is no canonical definition to state claims against.
-/

/-! ## A216688.P8764084421100190721

`A141626(n)%p?[2^n-1]`
-/

namespace A216688.P8764084421100190721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141626 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A216688.P8764084421100190721

/-! ## A216688.P4152933425649748172

`A308702(A138292(n)+1)`
-/

namespace A216688.P4152933425649748172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308702 (A138292 n + 1).toNat

end

end A216688.P4152933425649748172

/-! ## A216688.P8037924456395755836

`A389641(A090979(n+1))`
-/

namespace A216688.P8037924456395755836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389641 (A090979 (n + 1)).toNat

end

end A216688.P8037924456395755836

/-!
# A216689: Expansion of e.g.f. exp( x * exp(x)^2 ).

The programs for A216689, there is no canonical definition to state claims against.
-/

/-! ## A216689.P12150737701344832033

`or(A034887(Δ[Δ[n!]]), A055253(n))`
-/

namespace A216689.P12150737701344832033
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034887 (f1 (n + 1) - f1 n).toNat) (A055253 n)

end

end A216689.P12150737701344832033

/-! ## A216689.P9953404372553037028

`A004525(A240165(n)+A002426(n))`
-/

namespace A216689.P9953404372553037028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A240165 n + A002426 n).toNat

end

end A216689.P9953404372553037028

/-!
# A216690: Primes p such that x^4 = -2 has no solution mod p.

The programs for A216690, there is no canonical definition to state claims against.
-/

/-! ## A216690.P792039610581307000

`∪[A003628(n+1), p?[A293394(n+1)]]`
-/

namespace A216690.P792039610581307000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003628 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216690.P792039610581307000

/-! ## A216690.P6956242025944759364

`p?[(n+2)%A047232(n)]`
-/

namespace A216690.P6956242025944759364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A047232 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216690.P6956242025944759364

/-! ## A216690.P474033219538866048

`A216745(lt[A054531(3*(n+1)), A138257(3*n+4)])`
-/

namespace A216690.P474033219538866048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138257 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216745 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A216690.P474033219538866048

/-! ## A216690.P1757070938934490030

`A216771(comp[A241273(3^n+3*(1-2^n))])`
-/

namespace A216690.P1757070938934490030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241273 ((3 ^ n : ℤ) + 3 * (1 - (2 ^ n : ℤ))).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216771 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A216690.P1757070938934490030

/-! ## A216690.P14060559296842205466

`A136096(A216771(n+1))`
-/

namespace A216690.P14060559296842205466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136096 (A216771 (n + 1)).toNat

end

end A216690.P14060559296842205466

/-!
# A216691: Number of horizontal, vertical, diagonal or knight-move neighbor colorings of an nX2 array with new integer colors introduced in row major order.

The programs for A216691, there is no canonical definition to state claims against.
-/

/-! ## A216691.P6496911403295721364

`A216694(∑[n+1]+2)`
-/

namespace A216691.P6496911403295721364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216694 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A216691.P6496911403295721364

/-! ## A216691.P13609803553206599124

`record[A216694(n+1)/A162975(n)]`
-/

namespace A216691.P13609803553206599124
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216694 (n + 1) : ℚ) / (A162975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216691.P13609803553206599124

/-! ## A216691.P14691607035348150997

`record[gcd(A123125(n), A216694(n+2))]`
-/

namespace A216691.P14691607035348150997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123125 n) (A216694 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216691.P14691607035348150997

/-! ## A216691.P166890337659692712

`record[gcd(A055925(n+1), A216694(n+1))]`
-/

namespace A216691.P166890337659692712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055925 (n + 1)) (A216694 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216691.P166890337659692712

/-!
# A216692: Number of horizontal, vertical, diagonal or knight-move neighbor colorings of an nX3 array with new integer colors introduced in row major order.

The programs for A216692, there is no canonical definition to state claims against.
-/

/-! ## A216692.P18432737680164888954

`A216694(∑[n+2]+4)`
-/

namespace A216692.P18432737680164888954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216694 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216692.P18432737680164888954

/-! ## A216692.P16715130359522652550

`record[A216694(n+4)/A104684(n)]`
-/

namespace A216692.P16715130359522652550
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216694 (n + 4) : ℚ) / (A104684 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216692.P16715130359522652550

/-! ## A216692.P7655741699721414080

`A216694(A167614(n+1))+A086080(n)`
-/

namespace A216692.P7655741699721414080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216694 (A167614 (n + 1)).toNat + A086080 n

end

end A216692.P7655741699721414080

/-!
# A216693: Number of horizontal, vertical, diagonal or knight-move neighbor colorings of an nX4 array with new integer colors introduced in row major order.

The programs for A216693, there is no canonical definition to state claims against.
-/

/-! ## A216693.P17237562108448908625

`A216694(∑[n+4]+3)`
-/

namespace A216693.P17237562108448908625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216694 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A216693.P17237562108448908625

/-!
# A216695: Number of compositions (ordered partitions) of n into at least 2 distinct positive parts.

The programs for A216695, there is no canonical definition to state claims against.
-/

/-! ## A216695.P7897856244415572572

`A032020(n)-1`
-/

namespace A216695.P7897856244415572572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032020 n - 1

end

end A216695.P7897856244415572572

/-! ## A216695.P4135836790652529851

`xor(char[A002251(n)], A032020(n))`
-/

namespace A216695.P4135836790652529851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A032020 n)

end

end A216695.P4135836790652529851

/-! ## A216695.P11634253414094181957

`A332304(n)+A332305(n)-1`
-/

namespace A216695.P11634253414094181957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332304 n + (A332305 n - 1)

end

end A216695.P11634253414094181957

/-! ## A216695.P10742453682096210668

`A333147(n)+A333149(n)-1`
-/

namespace A216695.P10742453682096210668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333147 n + (A333149 n - 1)

end

end A216695.P10742453682096210668

/-! ## A216695.P2523164674867759157

`xor(A000034(2*n), A032020(n))`
-/

namespace A216695.P2523164674867759157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000034 (2 * n)) (A032020 n)

end

end A216695.P2523164674867759157

/-! ## A216695.P7759213967498952486

`A094267(4*n+1)+A032020(n)`
-/

namespace A216695.P7759213967498952486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (4 * n + 1) + A032020 n

end

end A216695.P7759213967498952486

/-! ## A216695.P882147342304391220

`xor(A006519(4*n+3), A032020(n))`
-/

namespace A216695.P882147342304391220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A006519 (4 * n + 3)) (A032020 n)

end

end A216695.P882147342304391220

/-! ## A216695.P12979303070146079158

`xor(A007318(and(3, -n)!), A032020(n))`
-/

namespace A216695.P12979303070146079158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (Nat.factorial (Int.land 3 (-(n : ℤ))).toNat)) (A032020 n)

end

end A216695.P12979303070146079158

/-! ## A216695.P13886282027044656677

`xor(cosh(A000007(2*n+1)), A032020(n))`
-/

namespace A216695.P13886282027044656677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (Real.cosh (A000007 (2 * n + 1) : ℝ))) (A032020 n)

end

end A216695.P13886282027044656677

/-! ## A216695.P10170893417173620192

`xor(∑{e}[A020639(n+1), #]!, A032020(n))`
-/

namespace A216695.P10170893417173620192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) : ℤ) (A032020 n)

end

end A216695.P10170893417173620192

/-! ## A216695.P7802291065788196998

`xor(A032020(n), A135560(2*(n+1)+1))`
-/

namespace A216695.P7802291065788196998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032020 n) (A135560 (2 * (n + 1) + 1))

end

end A216695.P7802291065788196998

/-! ## A216695.P4616230133704796370

`xor(A000041(gcd(n+1, n+2)), A032020(n))`
-/

namespace A216695.P4616230133704796370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 (Nat.gcd (n + 1) (n + 2))) (A032020 n)

end

end A216695.P4616230133704796370

/-! ## A216695.P7085783453117829136

`A216708(n)%A072576(n)`
-/

namespace A216695.P7085783453117829136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216708 n) (A072576 n)

end

end A216695.P7085783453117829136

/-! ## A216695.P1082024635245585188

`A072706(n)+A072707(n)-1`
-/

namespace A216695.P1082024635245585188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072706 n + (A072707 n - 1)

end

end A216695.P1082024635245585188

/-! ## A216695.P8629103307157627855

`xor(A014963(6*(n+1)), A032020(n))`
-/

namespace A216695.P8629103307157627855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A014963 (6 * (n + 1))) (A032020 n)

end

end A216695.P8629103307157627855

/-! ## A216695.P4323785197374034896

`2*(A032058(n)-1)`
-/

namespace A216695.P4323785197374034896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032058 n - 1)

end

end A216695.P4323785197374034896

/-! ## A216695.P9047553129804702149

`A324969(n+1)-(A282694(n)+1)`
-/

namespace A216695.P9047553129804702149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324969 (n + 1) - (A282694 n + 1)

end

end A216695.P9047553129804702149

/-! ## A216695.P85856112874048178

`A003242(n)-(A285981(n)+1)`
-/

namespace A216695.P85856112874048178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n - (A285981 n + 1)

end

end A216695.P85856112874048178

/-! ## A216695.P2644989790766221288

`A011782(n)-(A261982(n)+1)`
-/

namespace A216695.P2644989790766221288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - (A261982 n + 1)

end

end A216695.P2644989790766221288

/-! ## A216695.P14307251433943049500

`and(A032020(n), A283353(or(1, n)))`
-/

namespace A216695.P14307251433943049500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032020 n) (A283353 (Nat.lor 1 n))

end

end A216695.P14307251433943049500

/-!
# A216696: a(n) = Sum_{k=0..n} binomial(n,k)^4 * 2^k.

The programs for A216696, there is no canonical definition to state claims against.
-/

/-! ## A216696.P13436135231178925127

`A336203(eq[4, A025581(n)])`
-/

namespace A216696.P13436135231178925127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216696.P13436135231178925127

/-! ## A216696.P3370836177258787345

`A336203(eq[5, A193739(n)])`
-/

namespace A216696.P3370836177258787345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216696.P3370836177258787345

/-! ## A216696.P16557617437577885997

`A336203(eq[9, A099375(n)])`
-/

namespace A216696.P16557617437577885997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216696.P16557617437577885997

/-!
# A216697: Numbers k such that sigma(k) mod k = 12, k is divisible by 6, but k/6 is not prime.

The programs for A216697, there is no canonical definition to state claims against.
-/

/-! ## A216697.P14370175581745933208

`A234238(A262689(n*record[lcm(4, n)]+1))`
-/

namespace A216697.P14370175581745933208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234238 (A262689 (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A216697.P14370175581745933208

/-!
# A216698: a(n) = Sum_{k=0..n} binomial(n,k)^3 * 6^k.

The programs for A216698, there is no canonical definition to state claims against.
-/

/-! ## A216698.P11814809421425591029

`A336163(eq[6, A025581(n)])`
-/

namespace A216698.P11814809421425591029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216698.P11814809421425591029

/-! ## A216698.P5669729387466375137

`A336163(A000217(n+7)-7)`
-/

namespace A216698.P5669729387466375137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336163 (A000217 (n + 7) - 7).toNat

end

end A216698.P5669729387466375137

/-!
# A216699: Digital root of cubes of Fibonacci numbers.

The programs for A216699, the canonical program `A216699.P2293991450571384298` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216699 has offset 0).

The definition of A216699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216699.P2293991450571384298

`dr(A004090(n)²*A004090(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A216699

/-- `dr(A004090(n)²*A004090(n))` -/
def P2293991450571384298.Spec : Prop :=
  ∀ n, (P2293991450571384298.a n : ℤ) = A216699 n

theorem P2293991450571384298.correct : P2293991450571384298.Spec := by
  intro n
  simp only [A216699]

end A216699

