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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A236402: 

The programs for A236402, there is no canonical definition to state claims against.
-/

/-! ## A236402.P16714867704012287863

`eq[1, A330633(A233583(n+1))+1]`
-/

namespace A236402.P16714867704012287863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 (A233583 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236402.P16714867704012287863

/-! ## A236402.P14639590955564800164

`A032945(n+1)%A097942(n+1)`
-/

namespace A236402.P14639590955564800164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032945 (n + 1)) (A097942 (n + 1))

end

end A236402.P14639590955564800164

/-! ## A236402.P12972136038850579106

`A032945(n+1)%A018252(A273425(n))`
-/

namespace A236402.P12972136038850579106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032945 (n + 1)) (A018252 (A273425 n).toNat)

end

end A236402.P12972136038850579106

/-! ## A236402.P13188779054398447496

`eq[A055017(n)², A076314(A076314(n))²]`
-/

namespace A236402.P13188779054398447496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055017 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076314 (A076314 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236402.P13188779054398447496

/-! ## A236402.P3274077213101818773

`A032945(n+1)+A002448(A005383(n+1))`
-/

namespace A236402.P3274077213101818773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1) + A002448 (A005383 (n + 1)).toNat

end

end A236402.P3274077213101818773

/-! ## A236402.P9680977610843180605

`A032945(n+1)+A010054(A014442(n+1))`
-/

namespace A236402.P9680977610843180605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1) + A010054 (A014442 (n + 1)).toNat

end

end A236402.P9680977610843180605

/-! ## A236402.P16144649473118598169

`A032945(n+1)+A019590(A032981(3*(n+1)))`
-/

namespace A236402.P16144649473118598169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1) + A019590 (A032981 (3 * (n + 1))).toNat

end

end A236402.P16144649473118598169

/-! ## A236402.P17084458195511488169

`A032945(n+1)+A019590(A248360(2*n+5))`
-/

namespace A236402.P17084458195511488169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1) + A019590 (A248360 (2 * n + 5)).toNat

end

end A236402.P17084458195511488169

/-! ## A236402.P3555353819757901822

`and(A032945(n+1), A086827(n+1))`
-/

namespace A236402.P3555353819757901822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032945 (n + 1)) (A086827 (n + 1))

end

end A236402.P3555353819757901822

/-! ## A236402.P15149649621186867780

`A226782(A014486(2*(n+2)))+A032945(n+1)`
-/

namespace A236402.P15149649621186867780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226782 (A014486 (2 * (n + 2))).toNat + A032945 (n + 1)

end

end A236402.P15149649621186867780

/-!
# A236403: Numbers not in A236402.

The programs for A236403, there is no canonical definition to state claims against.
-/

/-! ## A236403.P15022287166634638552

`comp[(n+1)*∑{digits}[n, C(#, 9)]]+10`
-/

namespace A236403.P15022287166634638552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => Nat.choose x 9).sum

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 10

end

end A236403.P15022287166634638552

/-! ## A236403.P14512907518783492978

`lt[0, A330633(n)]`
-/

namespace A236403.P14512907518783492978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236403.P14512907518783492978

/-! ## A236403.P10630556936884324823

`lt[1, A330634(n)]`
-/

namespace A236403.P10630556936884324823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236403.P10630556936884324823

/-! ## A236403.P9130921858006482773

`comp[A032945(n+1)]`
-/

namespace A236403.P9130921858006482773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236403.P9130921858006482773

/-! ## A236403.P1916904418087453458

`lt[2, A043562(11*n)]`
-/

namespace A236403.P1916904418087453458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (11 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236403.P1916904418087453458

/-! ## A236403.P17413770340956874728

`lt[A321538(11*n), n]`
-/

namespace A236403.P17413770340956874728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321538 (11 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A236403.P17413770340956874728

/-! ## A236403.P7297133897176105137

`comp[A043525(n+1)]+11`
-/

namespace A236403.P7297133897176105137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 11

end

end A236403.P7297133897176105137

/-! ## A236403.P12373967238268330429

`comp[(n+1)*A102683(n)]+10`
-/

namespace A236403.P12373967238268330429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A102683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 10

end

end A236403.P12373967238268330429

/-! ## A236403.P13472739951319581642

`eq[0, A292894(A123895(n))]`
-/

namespace A236403.P13472739951319581642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292894 (A123895 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A236403.P13472739951319581642

/-!
# A236404: Numbers not in A203565.

The programs for A236404, there is no canonical definition to state claims against.
-/

/-! ## A236404.P14250261645577968362

`comp[A203565(n+1)]`
-/

namespace A236404.P14250261645577968362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236404.P14250261645577968362

/-! ## A236404.P2068046035309989216

`eq[A036453(A028326(n)), A102669(n)]`
-/

namespace A236404.P2068046035309989216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (A028326 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236404.P2068046035309989216

/-! ## A236404.P16461552686703371800

`lt[A053737(A102376(2*(n+1))), A102669(n)]`
-/

namespace A236404.P16461552686703371800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (A102376 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236404.P16461552686703371800

/-! ## A236404.P10451575177395904506

`eq[A046523(A276533(n+4)), A102669(n)]`
-/

namespace A236404.P10451575177395904506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A276533 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236404.P10451575177395904506

/-! ## A236404.P4555759131457328298

`lt[A057427(A097399(n)), A102669(n)]`
-/

namespace A236404.P4555759131457328298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A097399 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236404.P4555759131457328298

/-! ## A236404.P18360711066591506063

`lt[A001222(A060975(n+1)), A102669(n)]`
-/

namespace A236404.P18360711066591506063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A060975 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236404.P18360711066591506063

/-! ## A236404.P8020011938216553976

`lt[1, A257297(A265525(n))]`
-/

namespace A236404.P8020011938216553976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 (A265525 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236404.P8020011938216553976

/-! ## A236404.P10390713951665070394

`eq[A102669(n), A178815(n+1)]`
-/

namespace A236404.P10390713951665070394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236404.P10390713951665070394

/-! ## A236404.P9099072217143185302

`eq[A102669(n), A280135(n+1)]`
-/

namespace A236404.P9099072217143185302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A236404.P9099072217143185302

/-! ## A236404.P897763458754213180

`∩[A236403(n+1), A037344(n+1)]`
-/

namespace A236404.P897763458754213180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236404.P897763458754213180

/-!
# A236406: Triangle read by rows: number of (1-2-3)-avoiding permutations on n letters with k peaks.

The programs for A236406, there is no canonical definition to state claims against.
-/

/-! ## A236406.P13721901538235245025

`A101296(A108922(n)^A327965(n))`
-/

namespace A236406.P13721901538235245025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101296 (SequenceMachineLib.roundAway ((A108922 n : ℚ) ^ (A327965 n : ℤ))).toNat

end

end A236406.P13721901538235245025

/-! ## A236406.P9642523796070201647

`A257474(A130245(2*(n+1))*A148604(n))`
-/

namespace A236406.P9642523796070201647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257474 (A130245 (2 * (n + 1)) * A148604 n).toNat

end

end A236406.P9642523796070201647

/-! ## A236406.P18110991448643489633

`A275656(A000204(2*(n+1))-A000010(n+1))`
-/

namespace A236406.P18110991448643489633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275656 (A000204 (2 * (n + 1)) - A000010 (n + 1)).toNat

end

end A236406.P18110991448643489633

/-!
# A236407: a(n) = 2*Sum_{k=0..n-1} C(n-1,k)*C(n+k,k) + n.

The programs for A236407, the canonical program `A236407.P10884246669097330149` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236407 has offset 0).

The definition of A236407 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002003, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A236407.P10884246669097330149

`A002003(n)+n`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A236407

/-- `A002003(n)+n` -/
def P10884246669097330149.Spec : Prop :=
  ∀ n, P10884246669097330149.a n = A236407 n

theorem P10884246669097330149.correct : P10884246669097330149.Spec := by
  intro n
  simp only [A236407]

end A236407

/-! ## A236407.P898642282716175961

`2*A047781(n)+n`
-/

namespace A236407.P898642282716175961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047781 n + (n : ℤ)

end

end A236407.P898642282716175961

namespace A236407

/-- `2*A047781(n)+n` -/
def P898642282716175961.Spec : Prop :=
  ∀ n, P898642282716175961.a n = A236407 n

end A236407

/-! ## A236407.P10086086078821169674

`and(-2, A123164(n))+n`
-/

namespace A236407.P10086086078821169674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A123164 n) + (n : ℤ)

end

end A236407.P10086086078821169674

namespace A236407

/-- `and(-2, A123164(n))+n` -/
def P10086086078821169674.Spec : Prop :=
  ∀ n, P10086086078821169674.a n = A236407 n

end A236407

/-! ## A236407.P4790924172197639725

`floor(A241023(n)/2+n)`
-/

namespace A236407.P4790924172197639725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241023 n : ℚ) / 2 + (n : ℚ)⌋

end

end A236407.P4790924172197639725

namespace A236407

/-- `floor(A241023(n)/2+n)` -/
def P4790924172197639725.Spec : Prop :=
  ∀ n, P4790924172197639725.a n = A236407 n

end A236407

/-! ## A236407.P15823049980763416173

`A123164(n)+n-A000007(n)`
-/

namespace A236407.P15823049980763416173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123164 n + ((n : ℤ) - A000007 n)

end

end A236407.P15823049980763416173

namespace A236407

/-- `A123164(n)+n-A000007(n)` -/
def P15823049980763416173.Spec : Prop :=
  ∀ n, P15823049980763416173.a n = A236407 n

end A236407

/-! ## A236407.P16486118314834917309

`A050147(n+1)+n-A050146(n)`
-/

namespace A236407.P16486118314834917309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050147 (n + 1) + ((n : ℤ) - A050146 n)

end

end A236407.P16486118314834917309

namespace A236407

/-- `A050147(n+1)+n-A050146(n)` -/
def P16486118314834917309.Spec : Prop :=
  ∀ n, P16486118314834917309.a n = A236407 n

theorem P16486118314834917309.correct : P16486118314834917309.Spec := by
  intro n
  simp only [A236407, Nat.add_sub_cancel, A236407.P16486118314834917309.a, A236407.P10884246669097330149.a, A002003, A002003.P14937103929283769724.a, A050146, A050146.P3244852620839180404.a, A050147, A050147.P8341301809192982572.a, A028310, A028310.P18130301328277559831.a, A047781, A047781.P7244301787128564813.a, A155069, A155069.P2113503701719238828.a, A086456, A086456.P993740706458250984.a, A123164, A123164.P13278900734001591324.a, A001850, A001850.P8225243896153059034.a, A002002, A002002.P13046393267194405166.f2, A002002.P13046393267194405166.f1, A002002.P13046393267194405166.a, A063524, A063524.P5631347671191003537.a, A085403, A085403.P17921680985737888414.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A236407

/-! ## A236407.P10679371490246911902

`A050146(n+1)-A247630(2*n)+n`
-/

namespace A236407.P10679371490246911902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - A247630 (2 * n) + (n : ℤ)

end

end A236407.P10679371490246911902

namespace A236407

/-- `A050146(n+1)-A247630(2*n)+n` -/
def P10679371490246911902.Spec : Prop :=
  ∀ n, P10679371490246911902.a n = A236407 n

end A236407

/-! ## A236407.P1685483326562720059

`A110110(2*n)-A247630(2*n)+n`
-/

namespace A236407.P1685483326562720059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (2 * n) - A247630 (2 * n) + (n : ℤ)

end

end A236407.P1685483326562720059

namespace A236407

/-- `A110110(2*n)-A247630(2*n)+n` -/
def P1685483326562720059.Spec : Prop :=
  ∀ n, P1685483326562720059.a n = A236407 n

end A236407

/-! ## A236407.P9557246457356874359

`A110110(A004273(n))+n-A000007(n)`
-/

namespace A236407.P9557246457356874359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (A004273 n).toNat + ((n : ℤ) - A000007 n)

end

end A236407.P9557246457356874359

namespace A236407

/-- `A110110(A004273(n))+n-A000007(n)` -/
def P9557246457356874359.Spec : Prop :=
  ∀ n, P9557246457356874359.a n = A236407 n

end A236407

/-! ## A236407.P12332171042573589003

`A000096(n)-(A000217(n)-A002003(n))`
-/

namespace A236407.P12332171042573589003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - (A000217 n - A002003 n)

end

end A236407.P12332171042573589003

namespace A236407

/-- `A000096(n)-(A000217(n)-A002003(n))` -/
def P12332171042573589003.Spec : Prop :=
  ∀ n, P12332171042573589003.a n = A236407 n

theorem P12332171042573589003.correct : P12332171042573589003.Spec := by
  intro n
  simp only [A236407, Nat.add_sub_cancel, A236407.P12332171042573589003.a, A236407.P10884246669097330149.a, A000096, A000096.P6925830517264718723.a, A000217, A000217.P10269402890581615239.a, A002003, A002003.P14937103929283769724.a, A047781, A047781.P7244301787128564813.a, A123164, A123164.P13278900734001591324.a, A001850, A001850.P8225243896153059034.a, A002002, A002002.P13046393267194405166.f2, A002002.P13046393267194405166.f1, A002002.P13046393267194405166.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A236407

/-! ## A236407.P15625421671446986553

`A001221(A001316(n))*A123164(n)+n`
-/

namespace A236407.P15625421671446986553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A123164 n + (n : ℤ)

end

end A236407.P15625421671446986553

namespace A236407

/-- `A001221(A001316(n))*A123164(n)+n` -/
def P15625421671446986553.Spec : Prop :=
  ∀ n, P15625421671446986553.a n = A236407 n

end A236407

/-! ## A236407.P6333910241502667194

`(A123164(n)+n)*char[A123185(n)]`
-/

namespace A236407.P6333910241502667194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123185 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A123164 n + (n : ℤ)) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A236407.P6333910241502667194

namespace A236407

/-- `(A123164(n)+n)*char[A123185(n)]` -/
def P6333910241502667194.Spec : Prop :=
  ∀ n, P6333910241502667194.a n = A236407 n

end A236407

/-!
# A236408: Number of increasing planar st-graphs with n edges.

The programs for A236408, there is no canonical definition to state claims against.
-/

/-! ## A236408.P5072956565698260022

`A112689(∑[A205484(n)]²)`
-/

namespace A236408.P5072956565698260022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205484 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A236408.P5072956565698260022

/-! ## A236408.P12184632600064844618

`A124156(A119268(n+2)²)`
-/

namespace A236408.P12184632600064844618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 (A119268 (n + 2) ^ 2).toNat

end

end A236408.P12184632600064844618

/-! ## A236408.P14722032230771060511

`A238401(A035098(n+1)+1)`
-/

namespace A236408.P14722032230771060511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238401 (A035098 (n + 1) + 1).toNat

end

end A236408.P14722032230771060511

/-!
# A236409: Size of complete unitary aperiodic semigroup with n states.

The programs for A236409, there is no canonical definition to state claims against.
-/

/-! ## A236409.P1251781892142236278

`A276076(n)+A161654(A141147(n+1))`
-/

namespace A236409.P1251781892142236278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 n + A161654 (A141147 (n + 1)).toNat

end

end A236409.P1251781892142236278

/-!
# A236410: The size of the largest semiconstant tree aperiodic semigroups on n points (with identity). Currently the largest known transition semigroups of minimal n-state automata recognizing star-free languages, thus a lower bound on the syntactic complexity of star-free languages.

The programs for A236410, there is no canonical definition to state claims against.
-/

/-! ## A236410.P2257230411429910378

`A348553(A005493(n)+A000399(n+3))`
-/

namespace A236410.P2257230411429910378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348553 (A005493 n + A000399 (n + 3)).toNat

end

end A236410.P2257230411429910378

/-!
# A236411: Let p(k) denote the k-th prime; a(n) = smallest p(m) > p(n) such that the n-2 differences between [p(n), p(n+1), ..., p(2n-2)] are the same as the n-2 differences between [p(m), p(m+1), ..., p(m+n-2)].

The programs for A236411, there is no canonical definition to state claims against.
-/

/-! ## A236411.P10308863393969332652

`A002034(A073615(n+2)-A025457(n))`
-/

namespace A236411.P10308863393969332652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A073615 (n + 2) - A025457 n).toNat

end

end A236411.P10308863393969332652

/-! ## A236411.P17726768875529953285

`A006530(A073615(n+2)-A025457(n))`
-/

namespace A236411.P17726768875529953285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A073615 (n + 2) - A025457 n).toNat

end

end A236411.P17726768875529953285

/-! ## A236411.P1907240285207261692

`A002034(A073615(n+2)-A257685(n))`
-/

namespace A236411.P1907240285207261692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A073615 (n + 2) - A257685 n).toNat

end

end A236411.P1907240285207261692

/-!
# A236412: a(n) = |{0 < k < n: m = phi(k)/2 + phi(n-k)/8 is an integer with p(m)^2 + q(m)^2 prime}|, where phi(.) is Euler's totient, p(.) is the partition function (A000041) and q(.) is the strict partition function (A000009).

The programs for A236412, there is no canonical definition to state claims against.
-/

/-! ## A236412.P12954823330498518647

`A236263(n+1)%A195012(∑{d}[n+1, #])`
-/

namespace A236412.P12954823330498518647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236263 (n + 1)) (A195012 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A236412.P12954823330498518647

/-! ## A236412.P17538203073923455396

`A349797(A274843(n))+A236263(n+1)`
-/

namespace A236412.P17538203073923455396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A274843 n).toNat + A236263 (n + 1)

end

end A236412.P17538203073923455396

/-! ## A236412.P4848922926470832389

`A236263(n+1)^A331569(A331569(n))`
-/

namespace A236412.P4848922926470832389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236263 (n + 1) : ℚ) ^ (A331569 (A331569 n).toNat : ℤ)

end

end A236412.P4848922926470832389

/-! ## A236412.P14480649961445908107

`A236263(n+1)%A017439(A006128(n))`
-/

namespace A236412.P14480649961445908107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236263 (n + 1)) (A017439 (A006128 n).toNat)

end

end A236412.P14480649961445908107

/-! ## A236412.P16495044138256607901

`A236263(n+1)+A000122(A201011(n+1))`
-/

namespace A236412.P16495044138256607901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236263 (n + 1) + A000122 (A201011 (n + 1)).toNat

end

end A236412.P16495044138256607901

/-!
# A236413: Positive integers m with p(m)^2 + q(m)^2 prime, where p(.) is the partition function (A000041) and q(.) is the strict partition function (A000009).

The programs for A236413, there is no canonical definition to state claims against.
-/

/-! ## A236413.P12112765910647751521

`lt[A285192(A303812(n)), A022281(n)]`
-/

namespace A236413.P12112765910647751521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 (A303812 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236413.P12112765910647751521

/-! ## A236413.P9780807108973703003

`lt[A285192(A303812(n)), A022283(n)]`
-/

namespace A236413.P9780807108973703003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 (A303812 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236413.P9780807108973703003

/-! ## A236413.P18174447859837314150

`lt[A255212(A303812(n)), A134332(n+1)]`
-/

namespace A236413.P18174447859837314150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255212 (A303812 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134332 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236413.P18174447859837314150

/-! ## A236413.P7078739515300119917

`lt[A285192(A303812(n)), A303812(2*n)]`
-/

namespace A236413.P7078739515300119917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 (A303812 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303812 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236413.P7078739515300119917

/-! ## A236413.P14231632392179371462

`∑[A193739(A152689(n)*A166350(n+1))]`
-/

namespace A236413.P14231632392179371462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A152689 n * A166350 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236413.P14231632392179371462

/-!
# A236414: Primes of the form p(m)^2 + q(m)^2 with m > 0, where p(.) is the partition function (A000041) and q(.) is the strict partition function (A000009).

The programs for A236414, there is no canonical definition to state claims against.
-/

/-! ## A236414.P5608331867259496888

`A000041(A236413(n+1))²+A000009(A236413(n+1))²`
-/

namespace A236414.P5608331867259496888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A236413 (n + 1)).toNat ^ 2 + A000009 (A236413 (n + 1)).toNat ^ 2

end

end A236414.P5608331867259496888

/-! ## A236414.P5513025619747175384

`A233346(C(A002384(n+1), A339291(n+1)))`
-/

namespace A236414.P5513025619747175384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233346 (Nat.choose (A002384 (n + 1)).toNat (A339291 (n + 1)).toNat)

end

end A236414.P5513025619747175384

/-!
# A236415: Sequence of distinct least triangular numbers such that the arithmetic mean of the first n terms is also a triangular number. Initial term is 0.

The programs for A236415, there is no canonical definition to state claims against.
-/

/-! ## A236415.P8967699501883424140

`A257849(A236416(n+1))`
-/

namespace A236415.P8967699501883424140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257849 (A236416 (n + 1)).toNat

end

end A236415.P8967699501883424140

/-!
# A236416: Sequence of distinct least positive triangular numbers such that the arithmetic mean of the first n terms is also a triangular number. Initial term is 1.

The programs for A236416, there is no canonical definition to state claims against.
-/

/-! ## A236416.P3983303156671184360

`A017173(A236415(n+1))`
-/

namespace A236416.P3983303156671184360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 (A236415 (n + 1)).toNat

end

end A236416.P3983303156671184360

/-! ## A236416.P1625831462697999777

`A016777(3*A236415(n+1))`
-/

namespace A236416.P1625831462697999777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (3 * A236415 (n + 1)).toNat

end

end A236416.P1625831462697999777

/-!
# A236417: a(n) = |{0 < k < n: p = phi(k)/2 + phi(n-k)/12 + 1 and A047967(p) are both prime}|.

The programs for A236417, there is no canonical definition to state claims against.
-/

/-! ## A236417.P1785590580843020886

`val(A031720(A193822(n)), 7)`
-/

namespace A236417.P1785590580843020886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A031720 (A193822 n).toNat).toNat 7

end

end A236417.P1785590580843020886

/-! ## A236417.P3474679214570725298

`val(A039331(A271414(n)), 11)`
-/

namespace A236417.P3474679214570725298
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039331 (A271414 n).toNat).toNat 11

end

end A236417.P3474679214570725298

/-! ## A236417.P3722070115345930929

`A086080(Δ[A236026(n+1)])`
-/

namespace A236417.P3722070115345930929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236026 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 (f1 (n + 1) - f1 n).toNat

end

end A236417.P3722070115345930929

/-! ## A236417.P17809956347783267382

`val(A171781(A155002(n+1)), 16)`
-/

namespace A236417.P17809956347783267382
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A171781 (A155002 (n + 1)).toNat).toNat 16

end

end A236417.P17809956347783267382

/-! ## A236417.P12459728925476061582

`A179391(A112798(n+2)*A291168(n))`
-/

namespace A236417.P12459728925476061582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179391 (A112798 (n + 2) * A291168 n).toNat

end

end A236417.P12459728925476061582

/-! ## A236417.P15790855820125608096

`val(A175522(2*n+5), A001221(A175837(n+2)))`
-/

namespace A236417.P15790855820125608096
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A175522 (2 * n + 5)).toNat (A001221 (A175837 (n + 2)).toNat).toNat

end

end A236417.P15790855820125608096

/-! ## A236417.P13076156284572565523

`A147873(2*(n+1))*A147873(n+1)`
-/

namespace A236417.P13076156284572565523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147873 (2 * (n + 1)) * A147873 (n + 1)

end

end A236417.P13076156284572565523

/-! ## A236417.P14823051358665704183

`A082784(A129756(A246720((2*n+1)²)))`
-/

namespace A236417.P14823051358665704183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082784 (A129756 (A246720 ((2 * n + 1) ^ 2)).toNat).toNat

end

end A236417.P14823051358665704183

/-! ## A236417.P4447081060254260979

`A344120(A091719(A091719((2*n+1)²)))`
-/

namespace A236417.P4447081060254260979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344120 (A091719 (A091719 ((2 * n + 1) ^ 2)).toNat).toNat

end

end A236417.P4447081060254260979

/-!
# A236418: Primes p with A047967(p) also prime.

The programs for A236418, there is no canonical definition to state claims against.
-/

/-! ## A236418.P816410803845790309

`A216437(A100276(n+1))`
-/

namespace A236418.P816410803845790309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216437 (A100276 (n + 1)).toNat

end

end A236418.P816410803845790309

/-!
# A236419: a(n) = |{0 < k < n: r = phi(k) + phi(n-k)/6 + 1 and p(r) + q(r) are both prime}|, where phi(.) is Euler's totient function, p(.) is the partition function (A000041) and q(.) is the strict partition function (A000009).

The programs for A236419, there is no canonical definition to state claims against.
-/

/-! ## A236419.P8597107520196694478

`and(A094842(n+1), A236389(n+1))`
-/

namespace A236419.P8597107520196694478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094842 (n + 1)) (A236389 (n + 1))

end

end A236419.P8597107520196694478

/-! ## A236419.P13101708846081486198

`C(A236389(n+1), A275924(A236389(2*n+3)))`
-/

namespace A236419.P13101708846081486198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A236389 (n + 1)).toNat (A275924 (A236389 (2 * n + 3)).toNat).toNat

end

end A236419.P13101708846081486198

/-! ## A236419.P1518300556307262089

`and(A187493(n), A236389(n+1))`
-/

namespace A236419.P1518300556307262089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187493 (n + 31)) (A236389 (n + 1))

end

end A236419.P1518300556307262089

/-! ## A236419.P35427664781827522

`and(A104109(n+1), A236389(n+1))`
-/

namespace A236419.P35427664781827522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A104109 (n + 1)) (A236389 (n + 1))

end

end A236419.P35427664781827522

/-! ## A236419.P6695693177728745431

`and(A031565(n+1), A236389(n+1))`
-/

namespace A236419.P6695693177728745431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A031565 (n + 1)) (A236389 (n + 1))

end

end A236419.P6695693177728745431

/-!
# A236420: Riordan array (1/(1-3*x), (1-3*x-sqrt(1-6*x+5*x^2))/(2*x)).

The programs for A236420, there is no canonical definition to state claims against.
-/

/-! ## A236420.P2085387546898146725

`A130734(A027465(n))+A130580(n)`
-/

namespace A236420.P2085387546898146725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130734 (A027465 n).toNat + A130580 n

end

end A236420.P2085387546898146725

/-! ## A236420.P3123296797315118375

`A027465(n)+A025469(A006252(n))`
-/

namespace A236420.P3123296797315118375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027465 n + A025469 (A006252 n).toNat

end

end A236420.P3123296797315118375

/-! ## A236420.P5432898663578089936

`A060862(A007716(n))+A027465(n)`
-/

namespace A236420.P5432898663578089936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (A007716 n).toNat + A027465 n

end

end A236420.P5432898663578089936

/-! ## A236420.P18444092781673627338

`A079365(A000045(n))+A027465(n)`
-/

namespace A236420.P18444092781673627338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079365 (A000045 n).toNat + A027465 n

end

end A236420.P18444092781673627338

/-! ## A236420.P15116993511062311996

`A064911(A041331(n))+A027465(n)`
-/

namespace A236420.P15116993511062311996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A041331 n).toNat + A027465 n

end

end A236420.P15116993511062311996

/-!
# A236421: Largest value of x such that x^2 + y^2 = P, where P is the product of the first n primes of the form 4k + 1, and 0 < x < y.

The programs for A236421, there is no canonical definition to state claims against.
-/

/-! ## A236421.P18147385280187362921

`sqrt(A006278(n+1)-A236422(n+1)²)`
-/

namespace A236421.P18147385280187362921
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006278 (n + 1) - A236422 (n + 1) ^ 2 : ℝ)

end

end A236421.P18147385280187362921

/-! ## A236421.P1935647005555898348

`A341678(∑[2^n])`
-/

namespace A236421.P1935647005555898348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341678 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236421.P1935647005555898348

/-! ## A236421.P8762991851062770330

`record[A341678(A097110(n))]`
-/

namespace A236421.P8762991851062770330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341678 (A097110 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236421.P8762991851062770330

/-! ## A236421.P11027334137336017082

`record[A341678(A307078(n))]`
-/

namespace A236421.P11027334137336017082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341678 (A307078 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236421.P11027334137336017082

/-!
# A236422: Values of y corresponding to the largest value of x such that x^2 + y^2 = P, where P is the product of the first n primes of the form 4k + 1, and 0 < x < y.

The programs for A236422, there is no canonical definition to state claims against.
-/

/-! ## A236422.P17937372343388838716

`sqrt(A006278(n+1)-A236421(n+1)²)`
-/

namespace A236422.P17937372343388838716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A006278 (n + 1) - A236421 (n + 1) ^ 2 : ℝ)

end

end A236422.P17937372343388838716

/-!
# A236424: Number of (n+1)X(2+1) 0..2 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236424, there is no canonical definition to state claims against.
-/

/-! ## A236424.P4038885778963220254

`A236427(∑[n+1]+2)`
-/

namespace A236424.P4038885778963220254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236427 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236424.P4038885778963220254

/-! ## A236424.P18235654220745736008

`record[gcd(A185937(n), A236427(n+3))]`
-/

namespace A236424.P18235654220745736008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185937 n) (A236427 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236424.P18235654220745736008

/-! ## A236424.P7242269064700119890

`record[lcm(A197870(n), A236427(n+2))]`
-/

namespace A236424.P7242269064700119890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A197870 n) (A236427 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236424.P7242269064700119890

/-! ## A236424.P9083667577029842008

`A236427(A055998(n)+2)+A236417(n+1)`
-/

namespace A236424.P9083667577029842008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236427 (A055998 n + 2).toNat + A236417 (n + 1)

end

end A236424.P9083667577029842008

/-!
# A236425: Number of (n+1)X(3+1) 0..2 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236425, there is no canonical definition to state claims against.
-/

/-! ## A236425.P1114050731360370938

`A236427(∑[n+2]+4)`
-/

namespace A236425.P1114050731360370938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236427 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236425.P1114050731360370938

/-! ## A236425.P14481675467265876958

`A236427(A167614(n+1))+A025442(n)`
-/

namespace A236425.P14481675467265876958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236427 (A167614 (n + 1)).toNat + A025442 n

end

end A236425.P14481675467265876958

/-! ## A236425.P7095487802728382733

`A236427(A167614(n+1))+A035041(n)`
-/

namespace A236425.P7095487802728382733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236427 (A167614 (n + 1)).toNat + A035041 n

end

end A236425.P7095487802728382733

/-! ## A236425.P2649854143134076145

`A236427(A167614(n+1))+A107846(n)`
-/

namespace A236425.P2649854143134076145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236427 (A167614 (n + 1)).toNat + A107846 n

end

end A236425.P2649854143134076145

/-!
# A236426: Number of (n+1)X(4+1) 0..2 arrays with the sum of each 2X2 subblock two extreme terms minus its two median terms lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236426, there is no canonical definition to state claims against.
-/

/-! ## A236426.P3186194734324636178

`A236427(∑[n+3]+7)`
-/

namespace A236426.P3186194734324636178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236427 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A236426.P3186194734324636178

/-!
# A236428: a(n) = F(n+1)^2 + F(n+1)*F(n) - F(n)^2, where F = A000045.

The programs for A236428, the canonical program `A236428.P1130292141363507493` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236428 has offset 0).

The definition of A236428 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n+1)²+A000045(n+1)*A000045(n)-A000045(n)²` (program `A236428.P1130292141363507493`, by `A236428.P1130292141363507493.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236428.P6108147360557205435

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A236428.P6108147360557205435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  2 * a (n - 1) + 2 * a (n - 2) - a (n - 3)

end

end A236428.P6108147360557205435

namespace A236428

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P6108147360557205435.Spec : Prop :=
  ∀ n, P6108147360557205435.a n = A236428 n

end A236428

/-! ## A236428.P7725920941493157126

`A001654(n)+A226205(n+1)`
-/

namespace A236428.P7725920941493157126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n + A226205 (n + 1)

end

end A236428.P7725920941493157126

namespace A236428

/-- `A001654(n)+A226205(n+1)` -/
def P7725920941493157126.Spec : Prop :=
  ∀ n, P7725920941493157126.a n = A236428 n

end A236428

/-! ## A236428.P3429700252490829588

`2*A000045(n)*A000045(n+1)+(-1)^n`
-/

namespace A236428.P3429700252490829588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n * A000045 (n + 1) + (-1) ^ n

end

end A236428.P3429700252490829588

namespace A236428

/-- `2*A000045(n)*A000045(n+1)+(-1)^n` -/
def P3429700252490829588.Spec : Prop :=
  ∀ n, P3429700252490829588.a n = A236428 n

end A236428

/-! ## A236428.P1130292141363507493

`A000045(n+1)²+A000045(n+1)*A000045(n)-A000045(n)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A236428

/-- `A000045(n+1)²+A000045(n+1)*A000045(n)-A000045(n)²` -/
def P1130292141363507493.Spec : Prop :=
  ∀ n, P1130292141363507493.a n = A236428 n

theorem P1130292141363507493.correct : P1130292141363507493.Spec := by
  intro n
  simp only [A236428]

end A236428

/-! ## A236428.P9307517698685720217

`(2*A000032(2*n+1)+3*(-1)^n)/5`
-/

namespace A236428.P9307517698685720217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A000032 (2 * n + 1) + 3 * (-1) ^ n : ℚ) / 5

end

end A236428.P9307517698685720217

namespace A236428

/-- `(2*A000032(2*n+1)+3*(-1)^n)/5` -/
def P9307517698685720217.Spec : Prop :=
  ∀ n, P9307517698685720217.a n = (A236428 n : ℚ)

end A236428

/-! ## A236428.P12645428411227610886

`ogf((1-x+x^2)/(1-2x-2x^2+x^3))`
-/

namespace A236428.P12645428411227610886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -2, -2, 1] n

end

end A236428.P12645428411227610886

namespace A236428

/-- `ogf((1-x+x^2)/(1-2x-2x^2+x^3))` -/
def P12645428411227610886.Spec : Prop :=
  ∀ n, P12645428411227610886.a n = A236428 n

end A236428

/-! ## A236428.P1174774518224765690

`2*(a(n-1)+a(n-2))-a(n-3)` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A236428.P1174774518224765690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  2 * (a (n - 1) + a (n - 2)) - a (n - 3)

end

end A236428.P1174774518224765690

namespace A236428

/-- `2*(a(n-1)+a(n-2))-a(n-3)` -/
def P1174774518224765690.Spec : Prop :=
  ∀ n, P1174774518224765690.a n = A236428 n

end A236428

/-! ## A236428.P2106272283042925807

`Δ[A192873(n)]`
-/

namespace A236428.P2106272283042925807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236428.P2106272283042925807

namespace A236428

/-- `Δ[A192873(n)]` -/
def P2106272283042925807.Spec : Prop :=
  ∀ n, P2106272283042925807.a n = A236428 n

end A236428

/-! ## A236428.P12179064738346096928

`A126116(Δ[n²])`
-/

namespace A236428.P12179064738346096928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126116 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A236428.P12179064738346096928

namespace A236428

/-- `A126116(Δ[n²])` -/
def P12179064738346096928.Spec : Prop :=
  ∀ n, P12179064738346096928.a n = A236428 n

end A236428

/-! ## A236428.P8858602003670620898

`A295683(Δ[n²])`
-/

namespace A236428.P8858602003670620898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A236428.P8858602003670620898

namespace A236428

/-- `A295683(Δ[n²])` -/
def P8858602003670620898.Spec : Prop :=
  ∀ n, P8858602003670620898.a n = A236428 n

end A236428

/-! ## A236428.P10701825769671674678

`∑[A295683(2*n)]-1`
-/

namespace A236428.P10701825769671674678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295683 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A236428.P10701825769671674678

namespace A236428

/-- `∑[A295683(2*n)]-1` -/
def P10701825769671674678.Spec : Prop :=
  ∀ n, P10701825769671674678.a n = A236428 n

end A236428

/-! ## A236428.P17999303251130248598

`2*A059840(n+1)+1`
-/

namespace A236428.P17999303251130248598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059840 (n + 1) + 1

end

end A236428.P17999303251130248598

namespace A236428

/-- `2*A059840(n+1)+1` -/
def P17999303251130248598.Spec : Prop :=
  ∀ n, P17999303251130248598.a n = A236428 n

end A236428

/-! ## A236428.P6687796360496507400

`A055819(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A236428.P6687796360496507400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A055819 n + a (n - 2)

end

end A236428.P6687796360496507400

namespace A236428

/-- `A055819(n)+a(n-2)` -/
def P6687796360496507400.Spec : Prop :=
  ∀ n, P6687796360496507400.a n = A236428 n

end A236428

/-! ## A236428.P15686473631852481541

`A111282(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A236428.P15686473631852481541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A111282 (n + 1) - a (n - 1)

end

end A236428.P15686473631852481541

namespace A236428

/-- `A111282(n+1)-a(n-1)` -/
def P15686473631852481541.Spec : Prop :=
  ∀ n, P15686473631852481541.a n = A236428 n

end A236428

/-! ## A236428.P2057072209680417356

`round(2/ϕ*A000045(n+1)²)`
-/

namespace A236428.P2057072209680417356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / Real.goldenRatio * (A000045 (n + 1) ^ 2 : ℝ))

end

end A236428.P2057072209680417356

namespace A236428

/-- `round(2/ϕ*A000045(n+1)²)` -/
def P2057072209680417356.Spec : Prop :=
  ∀ n, P2057072209680417356.a n = A236428 n

end A236428

/-! ## A236428.P4490871249581557190

`2*A000045(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A236428.P4490871249581557190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A000045 (2 * n) - a (n - 1)

end

end A236428.P4490871249581557190

namespace A236428

/-- `2*A000045(2*n)-a(n-1)` -/
def P4490871249581557190.Spec : Prop :=
  ∀ n, P4490871249581557190.a n = A236428 n

end A236428

/-! ## A236428.P7108725666589762769

`A192873(n)+A192872(n)`
-/

namespace A236428.P7108725666589762769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192873 n + A192872 n

end

end A236428.P7108725666589762769

namespace A236428

/-- `A192873(n)+A192872(n)` -/
def P7108725666589762769.Spec : Prop :=
  ∀ n, P7108725666589762769.a n = A236428 n

end A236428

/-! ## A236428.P4365659599961179517

`A014742(n)-A001654(n)`
-/

namespace A236428.P4365659599961179517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014742 n - A001654 n

end

end A236428.P4365659599961179517

namespace A236428

/-- `A014742(n)-A001654(n)` -/
def P4365659599961179517.Spec : Prop :=
  ∀ n, P4365659599961179517.a n = A236428 n

end A236428

/-! ## A236428.P18368865515892332753

`A110035(n)-A000035(n)`
-/

namespace A236428.P18368865515892332753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110035 n - A000035 n

end

end A236428.P18368865515892332753

namespace A236428

/-- `A110035(n)-A000035(n)` -/
def P18368865515892332753.Spec : Prop :=
  ∀ n, P18368865515892332753.a n = A236428 n

end A236428

/-! ## A236428.P10229746969359271614

`A001254(n)-A192878(n)`
-/

namespace A236428.P10229746969359271614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001254 n - A192878 n

end

end A236428.P10229746969359271614

namespace A236428

/-- `A001254(n)-A192878(n)` -/
def P10229746969359271614.Spec : Prop :=
  ∀ n, P10229746969359271614.a n = A236428 n

end A236428

/-!
# A236429: Number of representations of 0 as a sum of numbers d*k with d in {-1,1} and k in {1,2,...,n}, where the sum of the numbers k is 2n.

The programs for A236429, there is no canonical definition to state claims against.
-/

/-! ## A236429.P5260504043933278795

`A235130(2*(n+1)²)`
-/

namespace A236429.P5260504043933278795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (2 * (n + 1) ^ 2)

end

end A236429.P5260504043933278795

/-! ## A236429.P12832609722519870412

`record[and(A143259(n+1), A235130(n+1))]`
-/

namespace A236429.P12832609722519870412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143259 (n + 1)) (A235130 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236429.P12832609722519870412

/-!
# A236430: Number of representations of 1 as a sum of numbers d*k with d in {-1,1} and k in {1,2,...,n}, where the sum of the numbers k is 2n + 1.

The programs for A236430, there is no canonical definition to state claims against.
-/

/-! ## A236430.P3822077516326791351

`A235130(∑[4*(n+1)]+1)`
-/

namespace A236430.P3822077516326791351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236430.P3822077516326791351

/-! ## A236430.P12687468335019919485

`record[A235130(A001844(val(n+1, 2)+1))]`
-/

namespace A236430.P12687468335019919485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (A001844 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236430.P12687468335019919485

/-! ## A236430.P2745506525571015948

`∑[A094192(2^(n-1)*∑[n]+1)]`
-/

namespace A236430.P2745506525571015948
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094192 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236430.P2745506525571015948

/-! ## A236430.P3404526807805302160

`A000041(2*(n+1))-A191228(A275423(n))`
-/

namespace A236430.P3404526807805302160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (2 * (n + 1)) - A191228 (A275423 n).toNat

end

end A236430.P3404526807805302160

/-! ## A236430.P8645538426248589284

`A184645(2*(n+1))+A011658(A078495(2*n))`
-/

namespace A236430.P8645538426248589284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184645 (2 * (n + 1)) + A011658 (A078495 (2 * n)).toNat

end

end A236430.P8645538426248589284

/-!
# A236433: List of primes generated by factoring successive primary pseudoperfect numbers (A054377).

The programs for A236433, there is no canonical definition to state claims against.
-/

/-! ## A236433.P13056387694935649805

`A129871(A061906(n)+A002262(n))`
-/

namespace A236433.P13056387694935649805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129871 (A061906 n + A002262 n).toNat

end

end A236433.P13056387694935649805

/-! ## A236433.P12341116703752044367

`A000040(A348798(n)+A152036(n))`
-/

namespace A236433.P12341116703752044367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A348798 n + A152036 n).toNat

end

end A236433.P12341116703752044367

/-! ## A236433.P9113914949256531556

`A000040(A152036(n*A061906(n)))`
-/

namespace A236433.P9113914949256531556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A152036 ((n : ℤ) * A061906 n).toNat).toNat

end

end A236433.P9113914949256531556

/-! ## A236433.P16981379080473314432

`A000040(A152036(n)^A061906(n))`
-/

namespace A236433.P16981379080473314432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A152036 n : ℚ) ^ (A061906 n : ℤ))).toNat

end

end A236433.P16981379080473314432

/-! ## A236433.P15267541590143774587

`A000058(A002262(n)^A331572(n))`
-/

namespace A236433.P15267541590143774587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000058 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A331572 n : ℤ))).toNat

end

end A236433.P15267541590143774587

/-!
# A236435: Numerator of Product_{k=1..n-1} (1 + 1/prime(k)).

The programs for A236435, there is no canonical definition to state claims against.
-/

/-! ## A236435.P4064236538172286178

`A054640(n)/A054641(round(sqrt(n²+1)))`
-/

namespace A236435.P4064236538172286178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 n : ℚ) / (A054641 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ)

end

end A236435.P4064236538172286178

/-! ## A236435.P7175362000302901782

`A054640(n)/gcd(A002110(n), A054640(n))`
-/

namespace A236435.P7175362000302901782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 n : ℚ) / (Int.gcd (A002110 n) (A054640 n) : ℚ)

end

end A236435.P7175362000302901782

/-! ## A236435.P4564558050183714217

`A000203(A002110(n))/A024731(n+1)`
-/

namespace A236435.P4564558050183714217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A002110 n).toNat : ℚ) / (A024731 (n + 1) : ℚ)

end

end A236435.P4564558050183714217

/-!
# A236436: Denominator of product_{k=1..n-1} (1 + 1/prime(k)).

The programs for A236436, there is no canonical definition to state claims against.
-/

/-! ## A236436.P13514231067773395074

`A002110(n)/A054641(A028310(n))`
-/

namespace A236436.P13514231067773395074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (A054641 (A028310 n).toNat : ℚ)

end

end A236436.P13514231067773395074

/-! ## A236436.P12335465983275446961

`A002110(n)/gcd(A002110(n), A054640(n))`
-/

namespace A236436.P12335465983275446961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 n : ℚ) / (Int.gcd (A002110 n) (A054640 n) : ℚ)

end

end A236436.P12335465983275446961

/-! ## A236436.P2736804535479097085

`A332881(a(n-1)*record[∑{p}[n, #]])` with `a(0)=1`
-/

namespace A236436.P2736804535479097085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A332881 (a (n - 1) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)).toNat

end

end A236436.P2736804535479097085

/-! ## A236436.P3280060663696216427

`A324395(A002450(n))`
-/

namespace A236436.P3280060663696216427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324395 (A002450 n).toNat

end

end A236436.P3280060663696216427

/-!
# A236437: Primes which occur in their proper place in A236174.

The programs for A236437, there is no canonical definition to state claims against.
-/

/-! ## A236437.P1706675991362268405

`∪[A007352(n+1), A052033(n+1)]`
-/

namespace A236437.P1706675991362268405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236437.P1706675991362268405

/-! ## A236437.P7114091258769775107

`∪[A052033(n+1), A106025(n+1)]`
-/

namespace A236437.P7114091258769775107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236437.P7114091258769775107

/-! ## A236437.P161759764622623410

`∪[A052033(n+1), A200964(n+1)]`
-/

namespace A236437.P161759764622623410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200964 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A236437.P161759764622623410

/-! ## A236437.P17233095206400513004

`A052033(n)^A001222(a(A001222(n)))` with `a(0)=2`
-/

namespace A236437.P17233095206400513004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A052033 n : ℚ) ^ (A001222 (SequenceMachineLib.roundAway (a (A001222 n).toNat)).toNat : ℤ)

end

end A236437.P17233095206400513004

/-! ## A236437.P16308254405896811256

`A001222(a(n-1))*A052033(n)` with `a(0)=2`
-/

namespace A236437.P16308254405896811256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (a (n - 1)).toNat * A052033 n

end

end A236437.P16308254405896811256

/-! ## A236437.P18136383340138952622

`A052033(A028310(n))%A006002(A218255(n))`
-/

namespace A236437.P18136383340138952622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052033 (A028310 n).toNat) (A006002 (A218255 n).toNat)

end

end A236437.P18136383340138952622

/-! ## A236437.P6953472533245768956

`record[gcd(A000040(n+1), A236174(n+1))]`
-/

namespace A236437.P6953472533245768956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A236174 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236437.P6953472533245768956

/-! ## A236437.P13246714081663332470

`A236174(record[A014688(n+1)-A236174(n+1)])`
-/

namespace A236437.P13246714081663332470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A236174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236174 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236437.P13246714081663332470

/-! ## A236437.P10130726134938135562

`A000040(eq[A000040(n+1), A236174(n+1)]+1)`
-/

namespace A236437.P10130726134938135562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A236437.P10130726134938135562

/-!
# A236438: a(n) = n*a(n-1) + (-1)^n for n>0, a(0)=2.

The programs for A236438, the canonical program `A236438.P3028648155753276110` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236438 has offset 0).

The definition of A236438 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*a(n-1)+(-1)^n` (program `A236438.P3028648155753276110`, by `A236438.P3028648155753276110.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A236438.P3028648155753276110

`n*a(n-1)+(-1)^n` with `a(0)=2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A236438

/-- `n*a(n-1)+(-1)^n` -/
def P3028648155753276110.Spec : Prop :=
  ∀ n, P3028648155753276110.a n = A236438 n

theorem P3028648155753276110.correct : P3028648155753276110.Spec := by
  intro n
  simp only [A236438]

end A236438

/-! ## A236438.P11007869799197270772

`n!+A000166(n)`
-/

namespace A236438.P11007869799197270772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) + A000166 n

end

end A236438.P11007869799197270772

namespace A236438

/-- `n!+A000166(n)` -/
def P11007869799197270772.Spec : Prop :=
  ∀ n, P11007869799197270772.a n = A236438 n

end A236438

/-! ## A236438.P11583229517191142417

`xor(1, n*a(n-1))` with `a(0)=2, a(1)=1`
-/

namespace A236438.P11583229517191142417
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n a =>
  Nat.xor 1 (n * a (n - 1))

end

end A236438.P11583229517191142417

namespace A236438

/-- `xor(1, n*a(n-1))` -/
def P11583229517191142417.Spec : Prop :=
  ∀ n, (P11583229517191142417.a n : ℤ) = A236438 n

end A236438

/-! ## A236438.P6710533396059338497

`(-1)^n+n*a(n-1)` with `a(0)=2`
-/

namespace A236438.P6710533396059338497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (-1) ^ n + (n : ℤ) * a (n - 1)

end

end A236438.P6710533396059338497

namespace A236438

/-- `(-1)^n+n*a(n-1)` -/
def P6710533396059338497.Spec : Prop :=
  ∀ n, P6710533396059338497.a n = A236438 n

theorem P6710533396059338497.correct : P6710533396059338497.Spec := by
  intro n
  simp only [A236438, Nat.add_sub_cancel, A236438.P6710533396059338497.a, A236438.P3028648155753276110.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A236438

/-! ## A236438.P66418954745528575

`xor(1, a(n-1)/tan(acot(n)))` with `a(0)=2, a(1)=1`
-/

namespace A236438.P66418954745528575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.tan (SequenceMachineLib.acot (n : ℝ))))

end

end A236438.P66418954745528575

namespace A236438

/-- `xor(1, a(n-1)/tan(acot(n)))` -/
def P66418954745528575.Spec : Prop :=
  ∀ n, P66418954745528575.a n = A236438 n

end A236438

/-! ## A236438.P11081023964084229066

`xor(1, a(n-1)/cot(atan(n)))` with `a(0)=2, a(1)=1`
-/

namespace A236438.P11081023964084229066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℝ) / Real.cot (Real.arctan (n : ℝ))))

end

end A236438.P11081023964084229066

namespace A236438

/-- `xor(1, a(n-1)/cot(atan(n)))` -/
def P11081023964084229066.Spec : Prop :=
  ∀ n, P11081023964084229066.a n = A236438 n

end A236438

/-! ## A236438.P5962251663858103525

`xor(1, a(n-1)/n^(-1))` with `a(0)=2, a(1)=1`
-/

namespace A236438.P5962251663858103525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (n : ℚ) ^ (-1 : ℤ)))

end

end A236438.P5962251663858103525

namespace A236438

/-- `xor(1, a(n-1)/n^(-1))` -/
def P5962251663858103525.Spec : Prop :=
  ∀ n, P5962251663858103525.a n = A236438 n

end A236438

/-! ## A236438.P17651052133772800099

`(-1)^n+a(n-1)/n^(-1)` with `a(0)=2`
-/

namespace A236438.P17651052133772800099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((-1) ^ n : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A236438.P17651052133772800099

namespace A236438

/-- `(-1)^n+a(n-1)/n^(-1)` -/
def P17651052133772800099.Spec : Prop :=
  ∀ n, P17651052133772800099.a n = (A236438 n : ℚ)

end A236438

/-! ## A236438.P8523032152380286997

`n*a(n-1)+1-2*n%2` with `a(0)=2`
-/

namespace A236438.P8523032152380286997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * a (n - 1) + 1 - ((2 * (n % 2) : ℕ) : ℤ)

end

end A236438.P8523032152380286997

namespace A236438

/-- `n*a(n-1)+1-2*n%2` -/
def P8523032152380286997.Spec : Prop :=
  ∀ n, P8523032152380286997.a n = A236438 n

end A236438

/-! ## A236438.P7531719707028183148

`(a(n-1)+a(n-2))*(n-1)` with `a(0)=2, a(1)=1`
-/

namespace A236438.P7531719707028183148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n a =>
  (a (n - 1) + a (n - 2)) * ((n : ℤ) - 1)

end

end A236438.P7531719707028183148

namespace A236438

/-- `(a(n-1)+a(n-2))*(n-1)` -/
def P7531719707028183148.Spec : Prop :=
  ∀ n, P7531719707028183148.a n = A236438 n

end A236438

/-!
# A236441: Möbius inversion of A235342.

The programs for A236441, there is no canonical definition to state claims against.
-/

/-! ## A236441.P12280054825098188448

`A235342(ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A236441.P12280054825098188448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235342 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat

end

end A236441.P12280054825098188448

/-! ## A236441.P5203745041905477405

`A235342(A014963(n+1))`
-/

namespace A236441.P5203745041905477405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235342 (A014963 (n + 1)).toNat

end

end A236441.P5203745041905477405

/-! ## A236441.P15297591260234495185

`A235342(A100994(∏{p}[n+1, #]))`
-/

namespace A236441.P15297591260234495185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235342 (A100994 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A236441.P15297591260234495185

/-! ## A236441.P5195890013691527094

`A235342(A020639(A100994(n+1)))`
-/

namespace A236441.P5195890013691527094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235342 (A020639 (A100994 (n + 1)).toNat).toNat

end

end A236441.P5195890013691527094

/-! ## A236441.P2329016769860972774

`∑{d}[n+1, A008683(#)*A235342((n+1)/#)]`
-/

namespace A236441.P2329016769860972774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A235342 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A236441.P2329016769860972774

/-!
# A236442: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that A000009(k) + A047967(m) is prime.

The programs for A236442, there is no canonical definition to state claims against.
-/

/-! ## A236442.P12018075509023552345

`A274888(C((n-1)%2+n+1, 2))+A274884(n)`
-/

namespace A236442.P12018075509023552345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274888 (Nat.choose (Int.tmod ((n : ℤ) - 1) 2 + (n + 1 : ℤ)).toNat 2) + A274884 n

end

end A236442.P12018075509023552345

/-!
# A236443: Primes which start a Cunningham chain of length 4 where every entity of the chain is smallest of twin prime.

The programs for A236443, there is no canonical definition to state claims against.
-/

/-! ## A236443.P13895426047960774325

`A069176(n+1)-1`
-/

namespace A236443.P13895426047960774325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069176 (n + 1) - 1

end

end A236443.P13895426047960774325

/-! ## A236443.P3608032567778674126

`A308778(n²)+A069176(n+1)`
-/

namespace A236443.P3608032567778674126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A069176 (n + 1)

end

end A236443.P3608032567778674126

/-! ## A236443.P15003207998052098708

`A153881(n+2)+A069176(n+1)`
-/

namespace A236443.P15003207998052098708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A069176 (n + 1)

end

end A236443.P15003207998052098708

/-! ## A236443.P8914518657971900259

`A260196(n+2)+A069176(n+1)`
-/

namespace A236443.P8914518657971900259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A069176 (n + 1)

end

end A236443.P8914518657971900259

/-! ## A236443.P18269587489486309999

`A158387((n+2)²)+A069176(n+1)`
-/

namespace A236443.P18269587489486309999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158387 ((n + 2) ^ 2) + A069176 (n + 1)

end

end A236443.P18269587489486309999

/-!
# A236444: Natural numbers not in A236019.

The programs for A236444, there is no canonical definition to state claims against.
-/

/-! ## A236444.P1717683003603940052

`comp[A236019(n)]`
-/

namespace A236444.P1717683003603940052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236019 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A236444.P1717683003603940052

/-! ## A236444.P1150607944955810017

`lt[1, A061955(A194436(n+2))]`
-/

namespace A236444.P1150607944955810017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061955 (A194436 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A236444.P1150607944955810017

/-! ## A236444.P12780752729798499511

`A174342(2*n+1)+1-A316843(2*n+1)`
-/

namespace A236444.P12780752729798499511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174342 (2 * n + 1) + 1 - A316843 (2 * n + 1)

end

end A236444.P12780752729798499511

/-! ## A236444.P8066317325636122721

`round(log2(A188115(n+3)))`
-/

namespace A236444.P8066317325636122721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A188115 (n + 3) : ℝ))

end

end A236444.P8066317325636122721

/-! ## A236444.P6131006598023875314

`lt[A005135(A048691(2*n+1)), A194436(n+2)]`
-/

namespace A236444.P6131006598023875314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005135 (A048691 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194436 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A236444.P6131006598023875314

/-!
# A236445: Number of (n+1)X(1+1) 0..3 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236445, there is no canonical definition to state claims against.
-/

/-! ## A236445.P6977574987530597700

`A236451(∑[n]+1)`
-/

namespace A236445.P6977574987530597700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236445.P6977574987530597700

/-! ## A236445.P7469682294355687285

`lcm(2, A236451(A000124(n)))`
-/

namespace A236445.P7469682294355687285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236451 (A000124 n).toNat)

end

end A236445.P7469682294355687285

/-! ## A236445.P16788434074670108046

`record[gcd(A002262(n), A236451(n+1))]`
-/

namespace A236445.P16788434074670108046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236451 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236445.P16788434074670108046

/-! ## A236445.P3581736485428097169

`record[(1-A014473(n))*A236451(n+1)]`
-/

namespace A236445.P3581736485428097169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A014473 n) * A236451 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236445.P3581736485428097169

/-! ## A236445.P13214665827389969416

`record[A236451(n+1)/A019538(n+1)]`
-/

namespace A236445.P13214665827389969416
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236451 (n + 1) : ℚ) / (A019538 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236445.P13214665827389969416

/-!
# A236446: Number of (n+1)X(2+1) 0..3 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236446, there is no canonical definition to state claims against.
-/

/-! ## A236446.P6925162305644533919

`A236451(∑[n+1]+2)`
-/

namespace A236446.P6925162305644533919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236446.P6925162305644533919

/-! ## A236446.P15184892910056701540

`record[gcd(A002262(n), A236451(n+2))]`
-/

namespace A236446.P15184892910056701540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A236451 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236446.P15184892910056701540

/-! ## A236446.P16301119916766296827

`record[root(A236451(n+2), A019538(n+1))]`
-/

namespace A236446.P16301119916766296827
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236451 (n + 2) : ℝ) ^ (1 / (A019538 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236446.P16301119916766296827

/-! ## A236446.P4117843597437406530

`record[A236451(Δ[A003453(n+5)])]`
-/

namespace A236446.P4117843597437406530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236446.P4117843597437406530

/-! ## A236446.P7019450454587198293

`A236451(A000096(n+1))+A007814(2*n+1)`
-/

namespace A236446.P7019450454587198293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A000096 (n + 1)).toNat + A007814 (2 * n + 1)

end

end A236446.P7019450454587198293

/-!
# A236447: Number of (n+1)X(3+1) 0..3 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236447, there is no canonical definition to state claims against.
-/

/-! ## A236447.P14989630551138667450

`A236451(∑[n+2]+4)`
-/

namespace A236447.P14989630551138667450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236447.P14989630551138667450

/-! ## A236447.P14421726139438246293

`lcm(2, A236451(A167614(n+1)))`
-/

namespace A236447.P14421726139438246293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236451 (A167614 (n + 1)).toNat)

end

end A236447.P14421726139438246293

/-! ## A236447.P2843985821318094726

`A236451(A167614(n+1))+A165656(n)`
-/

namespace A236447.P2843985821318094726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A167614 (n + 1)).toNat + A165656 n

end

end A236447.P2843985821318094726

/-! ## A236447.P12187093980342227428

`A236451(A167614(n+1))+A180649(n)`
-/

namespace A236447.P12187093980342227428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A167614 (n + 1)).toNat + A180649 n

end

end A236447.P12187093980342227428

/-! ## A236447.P17955386937666075938

`A184318(n+1)*A236451(A167614(n+1))`
-/

namespace A236447.P17955386937666075938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184318 (n + 1) * A236451 (A167614 (n + 1)).toNat

end

end A236447.P17955386937666075938

/-!
# A236448: Number of (n+1) X (4+1) 0..3 arrays colored with the difference of the maximum and minimum in each 2 X 2 subblock.

The programs for A236448, there is no canonical definition to state claims against.
-/

/-! ## A236448.P10447344086132488257

`A236451(A052905(n)+9)`
-/

namespace A236448.P10447344086132488257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A052905 n + 9).toNat

end

end A236448.P10447344086132488257

/-! ## A236448.P3216058134645827757

`A236451(A055999(n)+10)`
-/

namespace A236448.P3216058134645827757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A055999 n + 10).toNat

end

end A236448.P3216058134645827757

/-! ## A236448.P8181782324383301314

`A236451(A167614(n+2)+1)`
-/

namespace A236448.P8181782324383301314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A167614 (n + 2) + 1).toNat

end

end A236448.P8181782324383301314

/-! ## A236448.P4001125295591672917

`A236451(∑[n+4]+3)`
-/

namespace A236448.P4001125295591672917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A236448.P4001125295591672917

/-!
# A236449: Number of (n+1)X(5+1) 0..3 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236449, there is no canonical definition to state claims against.
-/

/-! ## A236449.P10232330303416370824

`A236451(A155212(n)+13)`
-/

namespace A236449.P10232330303416370824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A155212 n + 13).toNat

end

end A236449.P10232330303416370824

/-! ## A236449.P10061636599876999530

`A236451(A056000(n)+15)`
-/

namespace A236449.P10061636599876999530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A056000 n + 15).toNat

end

end A236449.P10061636599876999530

/-! ## A236449.P12457587007467254617

`A236451(eq[7, A066657(n)])`
-/

namespace A236449.P12457587007467254617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236449.P12457587007467254617

/-! ## A236449.P14570926239687613217

`A236451(A000124(n+4)+4)`
-/

namespace A236449.P14570926239687613217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A000124 (n + 4) + 4).toNat

end

end A236449.P14570926239687613217

/-! ## A236449.P17215473968833476055

`A236451(A051936(n+4)+14)`
-/

namespace A236449.P17215473968833476055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A051936 (n + 4) + 14).toNat

end

end A236449.P17215473968833476055

/-!
# A236450: Number of (n+1)X(6+1) 0..3 arrays colored with the difference of the maximum and minimum in each 2X2 subblock.

The programs for A236450, there is no canonical definition to state claims against.
-/

/-! ## A236450.P2155434859373271355

`A236451(A374007(n+1))`
-/

namespace A236450.P2155434859373271355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (A374007 (n + 1)).toNat

end

end A236450.P2155434859373271355

/-! ## A236450.P17697550731236180436

`A236451(eq[3, A219347(n)])`
-/

namespace A236450.P17697550731236180436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236450.P17697550731236180436

/-!
# A236452: Number of primes between successive Ramanujan primes.

The programs for A236452, there is no canonical definition to state claims against.
-/

/-! ## A236452.P5046376685232378848

`A190874(n+1)-1`
-/

namespace A236452.P5046376685232378848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190874 (n + 1) - 1

end

end A236452.P5046376685232378848

/-! ## A236452.P10278067946963375620

`A023444(A190874(n+1)+1)`
-/

namespace A236452.P10278067946963375620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A190874 (n + 1) + 1).toNat

end

end A236452.P10278067946963375620

/-! ## A236452.P14940821783168677902

`A289207(A190874(n+1)+1)`
-/

namespace A236452.P14940821783168677902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A190874 (n + 1) + 1).toNat

end

end A236452.P14940821783168677902

/-! ## A236452.P5648937184276388071

`A023445(A190874(n+1)+2)`
-/

namespace A236452.P5648937184276388071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A190874 (n + 1) + 2).toNat

end

end A236452.P5648937184276388071

/-! ## A236452.P15836206107834464724

`A003987(C(A190874(n+1), 2))`
-/

namespace A236452.P15836206107834464724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Nat.choose (A190874 (n + 1)).toNat 2)

end

end A236452.P15836206107834464724

/-! ## A236452.P3936619889469649874

`Δ[A179196(n+1)]-1`
-/

namespace A236452.P3936619889469649874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A236452.P3936619889469649874

/-! ## A236452.P5931872469832814338

`A179196(n+2)-(A179196(n+1)+1)`
-/

namespace A236452.P5931872469832814338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179196 (n + 2) - (A179196 (n + 1) + 1)

end

end A236452.P5931872469832814338

/-! ## A236452.P8251891952555930661

`Δ[A000720(A084139(n))]`
-/

namespace A236452.P8251891952555930661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A084139 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236452.P8251891952555930661

/-! ## A236452.P17395740596018308835

`Δ[A000720(A168421(n+1))]`
-/

namespace A236452.P17395740596018308835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168421 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A236452.P17395740596018308835

/-! ## A236452.P12887496765414794392

`Δ[A000720(A104272(n+1))]-1`
-/

namespace A236452.P12887496765414794392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A104272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A236452.P12887496765414794392

/-! ## A236452.P1734281320318851595

`Δ[A000720(A168425(n+1))]-1`
-/

namespace A236452.P1734281320318851595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A168425 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A236452.P1734281320318851595

/-! ## A236452.P16455922430634115684

`A072828(n+1)%A190874(n+1)`
-/

namespace A236452.P16455922430634115684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A190874 (n + 1))

end

end A236452.P16455922430634115684

/-!
# A236453: Number of length n strings on the alphabet {0,1,2} of the form 0^i 1^j 2^k such that i,j,k>=0 and if i=1 then j=k.

The programs for A236453, the canonical program `A236453.P4473572786191484025` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236453 has offset 0).

The definition of A236453 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A236453.P4473572786191484025

`(3-(-1)^n+n+n²)/2`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A236453

/-- `(3-(-1)^n+n+n²)/2` -/
def P4473572786191484025.Spec : Prop :=
  ∀ n, P4473572786191484025.a n = (A236453 n : ℚ)

end A236453

/-! ## A236453.P9670056273181817495

`∑[abs(xor(1, -n))]`
-/

namespace A236453.P9670056273181817495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236453.P9670056273181817495

namespace A236453

/-- `∑[abs(xor(1, -n))]` -/
def P9670056273181817495.Spec : Prop :=
  ∀ n, P9670056273181817495.a n = A236453 n

end A236453

/-! ## A236453.P6287895516002854206

`2-∑[xor(1, -n)]`
-/

namespace A236453.P6287895516002854206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236453.P6287895516002854206

namespace A236453

/-- `2-∑[xor(1, -n)]` -/
def P6287895516002854206.Spec : Prop :=
  ∀ n, P6287895516002854206.a n = A236453 n

end A236453

/-! ## A236453.P1270392396075670384

`n%2+∑[n]+1`
-/

namespace A236453.P1270392396075670384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236453.P1270392396075670384

namespace A236453

/-- `n%2+∑[n]+1` -/
def P1270392396075670384.Spec : Prop :=
  ∀ n, (P1270392396075670384.a n : ℤ) = A236453 n

end A236453

/-! ## A236453.P14969843470252769534

`∑[n]+gcd(2, n+1)`
-/

namespace A236453.P14969843470252769534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd 2 (n + 1)

end

end A236453.P14969843470252769534

namespace A236453

/-- `∑[n]+gcd(2, n+1)` -/
def P14969843470252769534.Spec : Prop :=
  ∀ n, (P14969843470252769534.a n : ℤ) = A236453 n

end A236453

/-! ## A236453.P7117511225805666641

`and(1, n)+∑[n]+1`
-/

namespace A236453.P7117511225805666641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236453.P7117511225805666641

namespace A236453

/-- `and(1, n)+∑[n]+1` -/
def P7117511225805666641.Spec : Prop :=
  ∀ n, (P7117511225805666641.a n : ℤ) = A236453 n

end A236453

/-! ## A236453.P12492913473794832535

`∑[-xor(1, -n)]+2`
-/

namespace A236453.P12492913473794832535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A236453.P12492913473794832535

namespace A236453

/-- `∑[-xor(1, -n)]+2` -/
def P12492913473794832535.Spec : Prop :=
  ∀ n, P12492913473794832535.a n = A236453 n

end A236453

/-! ## A236453.P16303791744211245323

`or(1, n+1)+C(n, 2)`
-/

namespace A236453.P16303791744211245323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1) + Nat.choose n 2

end

end A236453.P16303791744211245323

namespace A236453

/-- `or(1, n+1)+C(n, 2)` -/
def P16303791744211245323.Spec : Prop :=
  ∀ n, (P16303791744211245323.a n : ℤ) = A236453 n

end A236453

/-! ## A236453.P15253451632054591542

`∑[n]-or(n+1, -2)`
-/

namespace A236453.P15253451632054591542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.lor (n + 1 : ℤ) (-2)

end

end A236453.P15253451632054591542

namespace A236453

/-- `∑[n]-or(n+1, -2)` -/
def P15253451632054591542.Spec : Prop :=
  ∀ n, P15253451632054591542.a n = A236453 n

end A236453

/-! ## A236453.P4260935279471138767

`∑[a(n-2)+2]` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A236453.P4260935279471138767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236453.P4260935279471138767

namespace A236453

/-- `∑[a(n-2)+2]` -/
def P4260935279471138767.Spec : Prop :=
  ∀ n, (P4260935279471138767.a n : ℤ) = A236453 n

end A236453

/-! ## A236453.P15546706406228658299

`∑[xor(1, n+1)-1]+2`
-/

namespace A236453.P15546706406228658299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A236453.P15546706406228658299

namespace A236453

/-- `∑[xor(1, n+1)-1]+2` -/
def P15546706406228658299.Spec : Prop :=
  ∀ n, P15546706406228658299.a n = A236453 n

end A236453

/-! ## A236453.P16225717156922528751

`n²+3-a(n-1)` with `a(0)=1`
-/

namespace A236453.P16225717156922528751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n ^ 2 : ℤ) + (3 - a (n - 1))

end

end A236453.P16225717156922528751

namespace A236453

/-- `n²+3-a(n-1)` -/
def P16225717156922528751.Spec : Prop :=
  ∀ n, P16225717156922528751.a n = A236453 n

end A236453

/-! ## A236453.P6444200076962882902

`3-(a(n-1)-n²)` with `a(0)=1`
-/

namespace A236453.P6444200076962882902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 - (a (n - 1) - (n ^ 2 : ℤ))

end

end A236453.P6444200076962882902

namespace A236453

/-- `3-(a(n-1)-n²)` -/
def P6444200076962882902.Spec : Prop :=
  ∀ n, P6444200076962882902.a n = A236453 n

end A236453

/-! ## A236453.P9706633412609794066

`C(n+2, 2)-and(n, -2)`
-/

namespace A236453.P9706633412609794066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 2 : ℤ) - Int.land (n : ℤ) (-2)

end

end A236453.P9706633412609794066

namespace A236453

/-- `C(n+2, 2)-and(n, -2)` -/
def P9706633412609794066.Spec : Prop :=
  ∀ n, P9706633412609794066.a n = A236453 n

end A236453

/-! ## A236453.P15896486907131102869

`a(n-1)-xor(1, -n)` with `a(0)=1`
-/

namespace A236453.P15896486907131102869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.xor 1 (-(n : ℤ))

end

end A236453.P15896486907131102869

namespace A236453

/-- `a(n-1)-xor(1, -n)` -/
def P15896486907131102869.Spec : Prop :=
  ∀ n, P15896486907131102869.a n = A236453 n

end A236453

/-! ## A236453.P81683031933722765

`∑[n+1]+1-or(1, n)`
-/

namespace A236453.P81683031933722765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (Nat.lor 1 n : ℤ))

end

end A236453.P81683031933722765

namespace A236453

/-- `∑[n+1]+1-or(1, n)` -/
def P81683031933722765.Spec : Prop :=
  ∀ n, P81683031933722765.a n = A236453 n

end A236453

/-! ## A236453.P15759694834904920318

`2-(and(1, n-1)-∑[n])`
-/

namespace A236453.P15759694834904920318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Int.land 1 ((n : ℤ) - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A236453.P15759694834904920318

namespace A236453

/-- `2-(and(1, n-1)-∑[n])` -/
def P15759694834904920318.Spec : Prop :=
  ∀ n, P15759694834904920318.a n = A236453 n

end A236453

/-! ## A236453.P4948974956112272302

`2-∑[xor(1, n)-2*n]`
-/

namespace A236453.P4948974956112272302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A236453.P4948974956112272302

namespace A236453

/-- `2-∑[xor(1, n)-2*n]` -/
def P4948974956112272302.Spec : Prop :=
  ∀ n, P4948974956112272302.a n = A236453 n

end A236453

/-! ## A236453.P911926764790674080

`and(1, n)+C(n+1, 2)+1`
-/

namespace A236453.P911926764790674080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + Nat.choose (n + 1) 2 + 1

end

end A236453.P911926764790674080

namespace A236453

/-- `and(1, n)+C(n+1, 2)+1` -/
def P911926764790674080.Spec : Prop :=
  ∀ n, (P911926764790674080.a n : ℤ) = A236453 n

end A236453

/-! ## A236453.P3599769309534838755

`n*n+3-a(n-1)` with `a(0)=1`
-/

namespace A236453.P3599769309534838755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n * n + 3 : ℤ) - a (n - 1)

end

end A236453.P3599769309534838755

namespace A236453

/-- `n*n+3-a(n-1)` -/
def P3599769309534838755.Spec : Prop :=
  ∀ n, P3599769309534838755.a n = A236453 n

end A236453

/-!
# A236454: 

The programs for A236454, there is no canonical definition to state claims against.
-/

/-! ## A236454.P11179255452152242176

`A007978(gcd(A064549(n+1), A153976(n)))`
-/

namespace A236454.P11179255452152242176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (Int.gcd (A064549 (n + 1)) (A153976 n))

end

end A236454.P11179255452152242176

/-! ## A236454.P15187170777341271870

`A007978(A376506(2*n+3)+n)`
-/

namespace A236454.P15187170777341271870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (A376506 (2 * n + 3) + (n : ℤ)).toNat

end

end A236454.P15187170777341271870

/-! ## A236454.P11277659459448279639

`A199968((n+1)*A112046(2*(n+2)))`
-/

namespace A236454.P11277659459448279639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199968 ((n + 1 : ℤ) * A112046 (2 * (n + 2))).toNat

end

end A236454.P11277659459448279639

/-! ## A236454.P17768770588115512204

`A007978(∑[A089607(2*n+3)])`
-/

namespace A236454.P17768770588115512204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089607 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007978 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A236454.P17768770588115512204

/-!
# A236455: Number of zero digits in all representations of n in bases 2,3,...,10.

The programs for A236455, there is no canonical definition to state claims against.
-/

/-! ## A236455.P5761826797901950423

`A033093(n+1)-A351358(∏[char[∑[n]]+1])`
-/

namespace A236455.P5761826797901950423
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033093 (n + 1) - A351358 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A236455.P5761826797901950423

/-! ## A236455.P4962695542920792599

`A033093(n+1)-A175424(n)^A175426(n+1)`
-/

namespace A236455.P4962695542920792599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033093 (n + 1) : ℚ) - (A175424 n : ℚ) ^ (A175426 (n + 1) : ℤ)

end

end A236455.P4962695542920792599

/-! ## A236455.P5614244310472260956

`A033093(n+1)-A317624(A323522(n))`
-/

namespace A236455.P5614244310472260956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033093 (n + 1) - A317624 (A323522 n).toNat

end

end A236455.P5614244310472260956

/-! ## A236455.P175895039082024798

`A033093(n+1)-A043545(A036670(n))`
-/

namespace A236455.P175895039082024798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033093 (n + 1) - A043545 (A036670 n).toNat

end

end A236455.P175895039082024798

/-! ## A236455.P17489102396816485593

`A033093(n+1)-A288226(A147241(n+1))`
-/

namespace A236455.P17489102396816485593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033093 (n + 1) - A288226 (A147241 (n + 1)).toNat

end

end A236455.P17489102396816485593

/-!
# A236456: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that p = phi(k) + phi(n-k)/4 - 1, q = p + 2 and r = prime(q) + 2 are all prime, where phi(.) is Euler's totient function.

The programs for A236456, there is no canonical definition to state claims against.
-/

/-! ## A236456.P8929474590402468965

`A235343(n+1)+A086078(A187783(n))`
-/

namespace A236456.P8929474590402468965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235343 (n + 1) + A086078 (A187783 n).toNat

end

end A236456.P8929474590402468965

/-!
# A236457: Primes p with q = p + 2 and prime(q) + 2 both prime.

The programs for A236457, the canonical program `A236457.P1164662496828918779` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236457 has offset 1).

The definition of A236457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1044 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236457.P16056928933966001595

`∩[A001359(n+1), A236568(n+1)]`
-/

namespace A236457.P16056928933966001595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P16056928933966001595

namespace A236457

/-- `∩[A001359(n+1), A236568(n+1)]` -/
def P16056928933966001595.Spec : Prop :=
  ∀ n, (P16056928933966001595.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P12322586791753525689

`∩[A236568(n+1), A378983(n+1)]`
-/

namespace A236457.P12322586791753525689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P12322586791753525689

namespace A236457

/-- `∩[A236568(n+1), A378983(n+1)]` -/
def P12322586791753525689.Spec : Prop :=
  ∀ n, (P12322586791753525689.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P1164662496828918779

`∩[A001359(n+1), A096478(n+1)-2]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A236457

/-- `∩[A001359(n+1), A096478(n+1)-2]` -/
def P1164662496828918779.Spec : Prop :=
  ∀ n, (P1164662496828918779.a n : ℤ) = A236457 (n + 1)

theorem P1164662496828918779.correct : P1164662496828918779.Spec := by
  intro n
  simp only [A236457, Nat.add_sub_cancel]

end A236457

/-! ## A236457.P14646435184009295208

`∩[A054799(n+1), A236568(n+1)]`
-/

namespace A236457.P14646435184009295208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P14646435184009295208

namespace A236457

/-- `∩[A054799(n+1), A236568(n+1)]` -/
def P14646435184009295208.Spec : Prop :=
  ∀ n, (P14646435184009295208.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P14905955813867789312

`∩[A063700(n+1), A236568(n+1)]`
-/

namespace A236457.P14905955813867789312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P14905955813867789312

namespace A236457

/-- `∩[A063700(n+1), A236568(n+1)]` -/
def P14905955813867789312.Spec : Prop :=
  ∀ n, (P14905955813867789312.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P8226735272042914190

`∩[A124588(n+1), A236568(n+1)]`
-/

namespace A236457.P8226735272042914190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P8226735272042914190

namespace A236457

/-- `∩[A124588(n+1), A236568(n+1)]` -/
def P8226735272042914190.Spec : Prop :=
  ∀ n, (P8226735272042914190.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P12851017337753859489

`∩[A181747(n+1), A236568(n+1)]`
-/

namespace A236457.P12851017337753859489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P12851017337753859489

namespace A236457

/-- `∩[A181747(n+1), A236568(n+1)]` -/
def P12851017337753859489.Spec : Prop :=
  ∀ n, (P12851017337753859489.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P10918354044938203784

`∩[A236568(n+1), A238528(n+1)]`
-/

namespace A236457.P10918354044938203784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P10918354044938203784

namespace A236457

/-- `∩[A236568(n+1), A238528(n+1)]` -/
def P10918354044938203784.Spec : Prop :=
  ∀ n, (P10918354044938203784.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P6124955208825885328

`∩[A054799(n+1), A096478(n+1)-2]`
-/

namespace A236457.P6124955208825885328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P6124955208825885328

namespace A236457

/-- `∩[A054799(n+1), A096478(n+1)-2]` -/
def P6124955208825885328.Spec : Prop :=
  ∀ n, (P6124955208825885328.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P9607391988867602981

`∩[A063700(n+1), A096478(n+1)-2]`
-/

namespace A236457.P9607391988867602981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P9607391988867602981

namespace A236457

/-- `∩[A063700(n+1), A096478(n+1)-2]` -/
def P9607391988867602981.Spec : Prop :=
  ∀ n, (P9607391988867602981.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P2515031399910606827

`∩[A236568(n+1), A280255(n+1)]`
-/

namespace A236457.P2515031399910606827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P2515031399910606827

namespace A236457

/-- `∩[A236568(n+1), A280255(n+1)]` -/
def P2515031399910606827.Spec : Prop :=
  ∀ n, (P2515031399910606827.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P16913744824574946986

`∩[A096478(n+1)-2, A280255(n+1)]`
-/

namespace A236457.P16913744824574946986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P16913744824574946986

namespace A236457

/-- `∩[A096478(n+1)-2, A280255(n+1)]` -/
def P16913744824574946986.Spec : Prop :=
  ∀ n, (P16913744824574946986.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P11959548836926220457

`∩[A063693(n+1), A236568(n+1)]`
-/

namespace A236457.P11959548836926220457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P11959548836926220457

namespace A236457

/-- `∩[A063693(n+1), A236568(n+1)]` -/
def P11959548836926220457.Spec : Prop :=
  ∀ n, (P11959548836926220457.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P10594517298159128799

`∩[A063693(n+1), A096478(n+1)-2]`
-/

namespace A236457.P10594517298159128799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P10594517298159128799

namespace A236457

/-- `∩[A063693(n+1), A096478(n+1)-2]` -/
def P10594517298159128799.Spec : Prop :=
  ∀ n, (P10594517298159128799.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P195570382710032455

`∩[A236568(n+1), A394509(n+1)]`
-/

namespace A236457.P195570382710032455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P195570382710032455

namespace A236457

/-- `∩[A236568(n+1), A394509(n+1)]` -/
def P195570382710032455.Spec : Prop :=
  ∀ n, (P195570382710032455.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P2581139638483201453

`∩[A236568(n+1), A395788(n+1)]`
-/

namespace A236457.P2581139638483201453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P2581139638483201453

namespace A236457

/-- `∩[A236568(n+1), A395788(n+1)]` -/
def P2581139638483201453.Spec : Prop :=
  ∀ n, (P2581139638483201453.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P10624789151922893921

`∩[A073534(n+1), A236568(n+1)]`
-/

namespace A236457.P10624789151922893921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P10624789151922893921

namespace A236457

/-- `∩[A073534(n+1), A236568(n+1)]` -/
def P10624789151922893921.Spec : Prop :=
  ∀ n, (P10624789151922893921.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P11245506511916388417

`∩[A236568(n+1), A280590(n+1)]`
-/

namespace A236457.P11245506511916388417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236568 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236457.P11245506511916388417

namespace A236457

/-- `∩[A236568(n+1), A280590(n+1)]` -/
def P11245506511916388417.Spec : Prop :=
  ∀ n, (P11245506511916388417.a n : ℤ) = A236457 (n + 1)

end A236457

/-! ## A236457.P8931599725629714386

`p?[A096478(n+1)-2]`
-/

namespace A236457.P8931599725629714386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236457.P8931599725629714386

namespace A236457

/-- `p?[A096478(n+1)-2]` -/
def P8931599725629714386.Spec : Prop :=
  ∀ n, P8931599725629714386.a n = A236457 (n + 1)

end A236457

/-! ## A236457.P8517370934758336032

`p?[p?[A029707(n+1)]-2]`
-/

namespace A236457.P8517370934758336032
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236457.P8517370934758336032

namespace A236457

/-- `p?[p?[A029707(n+1)]-2]` -/
def P8517370934758336032.Spec : Prop :=
  ∀ n, P8517370934758336032.a n = A236457 (n + 1)

end A236457

/-!
# A236458: Primes p with p + 2 and prime(p) + 2 both prime.

The programs for A236458, there is no canonical definition to state claims against.
-/

/-! ## A236458.P11541237610066210047

`∩[A001359(n+1), A067062(n+1)]`
-/

namespace A236458.P11541237610066210047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P11541237610066210047

/-! ## A236458.P15213008570508627857

`∩[A067062(n+1), A141830(n+1)]`
-/

namespace A236458.P15213008570508627857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P15213008570508627857

/-! ## A236458.P2143446400355245787

`∩[A067062(n+1), A378983(n+1)]`
-/

namespace A236458.P2143446400355245787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P2143446400355245787

/-! ## A236458.P16390953217554055103

`∩[A001359(n+1), A096478(n+1)]`
-/

namespace A236458.P16390953217554055103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P16390953217554055103

/-! ## A236458.P4758785974775388005

`∩[A067062(n+1), A096478(n+1)]`
-/

namespace A236458.P4758785974775388005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P4758785974775388005

/-! ## A236458.P4012842763413366088

`∩[A054799(n+1), A067062(n+1)]`
-/

namespace A236458.P4012842763413366088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P4012842763413366088

/-! ## A236458.P7403916140457720961

`∩[A063700(n+1), A067062(n+1)]`
-/

namespace A236458.P7403916140457720961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P7403916140457720961

/-! ## A236458.P13986346624057258955

`∩[A054799(n+1), A096478(n+1)]`
-/

namespace A236458.P13986346624057258955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P13986346624057258955

/-! ## A236458.P6920768665896088586

`∩[A063700(n+1), A096478(n+1)]`
-/

namespace A236458.P6920768665896088586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P6920768665896088586

/-! ## A236458.P16568379680408591077

`∩[A067062(n+1), A124588(n+1)]`
-/

namespace A236458.P16568379680408591077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P16568379680408591077

/-! ## A236458.P12752192596122439871

`∩[A067062(n+1), A181747(n+1)]`
-/

namespace A236458.P12752192596122439871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P12752192596122439871

/-! ## A236458.P6131048906929993378

`∩[A096478(n+1), A181747(n+1)]`
-/

namespace A236458.P6131048906929993378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P6131048906929993378

/-! ## A236458.P16757265913768057943

`∩[A067062(n+1), A238528(n+1)]`
-/

namespace A236458.P16757265913768057943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P16757265913768057943

/-! ## A236458.P3981437756463169627

`∩[A063693(n+1), A067062(n+1)]`
-/

namespace A236458.P3981437756463169627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P3981437756463169627

/-! ## A236458.P6723384464386793555

`∩[A063693(n+1), A096478(n+1)]`
-/

namespace A236458.P6723384464386793555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P6723384464386793555

/-! ## A236458.P819049917770907356

`∩[A067062(n+1), A280255(n+1)]`
-/

namespace A236458.P819049917770907356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P819049917770907356

/-! ## A236458.P427474736567920150

`∩[A096478(n+1), A280255(n+1)]`
-/

namespace A236458.P427474736567920150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P427474736567920150

/-! ## A236458.P18107906258500055320

`∩[A067062(n+1), A267944(n+1)]`
-/

namespace A236458.P18107906258500055320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P18107906258500055320

/-! ## A236458.P16212893490895413801

`∩[A064076(n+1), A067062(n+1)]`
-/

namespace A236458.P16212893490895413801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P16212893490895413801

/-! ## A236458.P15478023594376823479

`∩[A067062(n+1), A120431(n+1)]`
-/

namespace A236458.P15478023594376823479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120431 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236458.P15478023594376823479

/-!
# A236459: Regular triangle: T(n, k) Manhattan distance between n and k in a left-aligned triangle with next M natural numbers in row M.

The programs for A236459, there is no canonical definition to state claims against.
-/

/-! ## A236459.P7854238727990569342

`round(A186323(A337884(n+2))%(n+5)/4)`
-/

namespace A236459.P7854238727990569342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod (A186323 (A337884 (n + 2)).toNat) (n + 5 : ℤ) : ℚ) / 4)

end

end A236459.P7854238727990569342

/-! ## A236459.P13335329975433533345

`ceil(A257991(A114164(n)²)/3)`
-/

namespace A236459.P13335329975433533345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A257991 (A114164 n ^ 2).toNat : ℚ) / 3⌉

end

end A236459.P13335329975433533345

/-! ## A236459.P12343215853057797218

`A091221(A119304(n))`
-/

namespace A236459.P12343215853057797218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091221 (A119304 n).toNat

end

end A236459.P12343215853057797218

/-! ## A236459.P7856603782978662459

`A037818(A225471(n))`
-/

namespace A236459.P7856603782978662459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037818 (A225471 n).toNat

end

end A236459.P7856603782978662459

/-! ## A236459.P12566574209702034131

`A362756(A135233(n))`
-/

namespace A236459.P12566574209702034131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362756 (A135233 n).toNat

end

end A236459.P12566574209702034131

/-!
# A236460: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that p = phi(k) + phi(m)/2 - 1, prime(p) + 4 and prime(p) + 6 are all prime, where phi(.) is Euler's totient function.

The programs for A236460, there is no canonical definition to state claims against.
-/

/-! ## A236460.P2210641720512575142

`A052126(A014612(n+1))%A055642(A034440(n+1))`
-/

namespace A236460.P2210641720512575142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052126 (A014612 (n + 1)).toNat) (A055642 (A034440 (n + 1)).toNat)

end

end A236460.P2210641720512575142

/-! ## A236460.P16082165373272771746

`A071625(A263018(n+1))*A084928(3*n+2)`
-/

namespace A236460.P16082165373272771746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A263018 (n + 1)).toNat * A084928 (3 * n + 2)

end

end A236460.P16082165373272771746

/-! ## A236460.P4702600532978104867

`A024788(floor(Δ[A268448(n+1)]^(1/5)))`
-/

namespace A236460.P4702600532978104867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024788 ⌊(f1 (n + 1) - f1 n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋.toNat

end

end A236460.P4702600532978104867

/-! ## A236460.P15359292517207047633

`A359546(A144287(n+1))+A355478(n)`
-/

namespace A236460.P15359292517207047633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359546 (A144287 (n + 1)).toNat + A355478 n

end

end A236460.P15359292517207047633

/-! ## A236460.P8875143224308282103

`A137579(lt[A186726(n), A186486(n+1)])`
-/

namespace A236460.P8875143224308282103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137579 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A236460.P8875143224308282103

/-!
# A236461: Sum of two consecutive primes that is also sum of two consecutive even positive squares.

The programs for A236461, there is no canonical definition to state claims against.
-/

/-! ## A236461.P12569543895306983846

`∩[A323139(n+1), A108099(n)]`
-/

namespace A236461.P12569543895306983846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108099 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236461.P12569543895306983846

/-! ## A236461.P13017822431854452396

`∩[A323139(n+1), A160843(n)]`
-/

namespace A236461.P13017822431854452396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236461.P13017822431854452396

/-! ## A236461.P10340845964683652440

`∩[A323139(n+1), A394499(n+1)]`
-/

namespace A236461.P10340845964683652440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394499 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236461.P10340845964683652440

/-! ## A236461.P12064894183142899319

`∩[2*A069894(n), A323139(n+1)]`
-/

namespace A236461.P12064894183142899319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069894 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236461.P12064894183142899319

/-! ## A236461.P6378403027923841530

`∩[A001043(n+1), A108099(n)]`
-/

namespace A236461.P6378403027923841530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108099 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236461.P6378403027923841530

/-!
# A236462: Primes p with prime(p) + 4 and prime(p) + 6 both prime.

The programs for A236462, there is no canonical definition to state claims against.
-/

/-! ## A236462.P4649702992526802032

`p?[A000720(A022005(n+1))]`
-/

namespace A236462.P4649702992526802032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A022005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236462.P4649702992526802032

/-! ## A236462.P18222953112589695444

`p?[A000720(A144840(n+1))]`
-/

namespace A236462.P18222953112589695444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A144840 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236462.P18222953112589695444

/-! ## A236462.P1472309539484632972

`p?[A100637(A062767(n+1))]`
-/

namespace A236462.P1472309539484632972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100637 (A062767 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236462.P1472309539484632972

/-! ## A236462.P13626009814129910875

`p?[A061395(A022005(n+2))]`
-/

namespace A236462.P13626009814129910875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A022005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236462.P13626009814129910875

/-! ## A236462.P13921672418045350995

`p?[A000720(A073649(n+1)-1)]`
-/

namespace A236462.P13921672418045350995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073649 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236462.P13921672418045350995

/-!
# A236463: Irregular triangle read by rows: T(n,k) = Sum_{i=0..k} (-1)^i * binomial(4*n+1,i) * binomial(k+4-i,4)^n, 0 <= k <= 4*(n-1).

The programs for A236463, there is no canonical definition to state claims against.
-/

/-! ## A236463.P1757084950423589024

`and(A161143(n+1), A270339(A235117(n)))`
-/

namespace A236463.P1757084950423589024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A161143 (n + 1)) (A270339 (A235117 n).toNat)

end

end A236463.P1757084950423589024

/-!
# A236464: Primes p with prime(p) + 2 and prime(p) + 6 both prime.

The programs for A236464, the canonical program `A236464.P18246363835184401011` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236464 has offset 1).

The definition of A236464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236464.P4496355877392653018

`∩[A096478(n+1), A361267(n+1)]`
-/

namespace A236464.P4496355877392653018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236464.P4496355877392653018

namespace A236464

/-- `∩[A096478(n+1), A361267(n+1)]` -/
def P4496355877392653018.Spec : Prop :=
  ∀ n, (P4496355877392653018.a n : ℤ) = A236464 (n + 1)

end A236464

/-! ## A236464.P18246363835184401011

`∩[A096478(n+1), A257762(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A236464

/-- `∩[A096478(n+1), A257762(n+1)]` -/
def P18246363835184401011.Spec : Prop :=
  ∀ n, (P18246363835184401011.a n : ℤ) = A236464 (n + 1)

theorem P18246363835184401011.correct : P18246363835184401011.Spec := by
  intro n
  simp only [A236464, Nat.add_sub_cancel]

end A236464

/-! ## A236464.P16331032106869831363

`p?[A000720(A022004(n+1))]`
-/

namespace A236464.P16331032106869831363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A022004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236464.P16331032106869831363

namespace A236464

/-- `p?[A000720(A022004(n+1))]` -/
def P16331032106869831363.Spec : Prop :=
  ∀ n, P16331032106869831363.a n = A236464 (n + 1)

end A236464

/-! ## A236464.P12276802125428231012

`p?[A000720(A164641(n+4))]`
-/

namespace A236464.P12276802125428231012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A164641 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236464.P12276802125428231012

namespace A236464

/-- `p?[A000720(A164641(n+4))]` -/
def P12276802125428231012.Spec : Prop :=
  ∀ n, P12276802125428231012.a n = A236464 (n + 1)

end A236464

/-! ## A236464.P1363031877164606259

`p?[A000720(A073648(n+1)-1)]`
-/

namespace A236464.P1363031877164606259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A073648 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236464.P1363031877164606259

namespace A236464

/-- `p?[A000720(A073648(n+1)-1)]` -/
def P1363031877164606259.Spec : Prop :=
  ∀ n, P1363031877164606259.a n = A236464 (n + 1)

end A236464

/-!
# A236467: Primes p with p + 2 and prime(p) - 2 both prime.

The programs for A236467, the canonical program `A236467.P8483166501229439060` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A236467 has offset 1).

The definition of A236467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 453 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A236467.P8483166501229439060

`∩[A029707(n+1), A144834(n+1)]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A236467

/-- `∩[A029707(n+1), A144834(n+1)]+1` -/
def P8483166501229439060.Spec : Prop :=
  ∀ n, (P8483166501229439060.a n : ℤ) = A236467 (n + 1)

theorem P8483166501229439060.correct : P8483166501229439060.Spec := by
  intro n
  simp only [A236467, Nat.add_sub_cancel]

end A236467

/-! ## A236467.P1754304649487640801

`p?[p?[A107770(n+1)+2]-2]`
-/

namespace A236467.P1754304649487640801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236467.P1754304649487640801

namespace A236467

/-- `p?[p?[A107770(n+1)+2]-2]` -/
def P1754304649487640801.Spec : Prop :=
  ∀ n, P1754304649487640801.a n = A236467 (n + 1)

end A236467

/-! ## A236467.P13629631720760877834

`∩[A001359(n+1), A107770(n+1)]`
-/

namespace A236467.P13629631720760877834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236467.P13629631720760877834

namespace A236467

/-- `∩[A001359(n+1), A107770(n+1)]` -/
def P13629631720760877834.Spec : Prop :=
  ∀ n, (P13629631720760877834.a n : ℤ) = A236467 (n + 1)

end A236467

/-! ## A236467.P8103239970723200315

`∩[A063700(n+1), A107770(n+1)]`
-/

namespace A236467.P8103239970723200315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236467.P8103239970723200315

namespace A236467

/-- `∩[A063700(n+1), A107770(n+1)]` -/
def P8103239970723200315.Spec : Prop :=
  ∀ n, (P8103239970723200315.a n : ℤ) = A236467 (n + 1)

end A236467

/-! ## A236467.P17361138086960489473

`∩[A107770(n+1), A124588(n+1)]`
-/

namespace A236467.P17361138086960489473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236467.P17361138086960489473

namespace A236467

/-- `∩[A107770(n+1), A124588(n+1)]` -/
def P17361138086960489473.Spec : Prop :=
  ∀ n, (P17361138086960489473.a n : ℤ) = A236467 (n + 1)

end A236467

/-! ## A236467.P2984427285095482917

`∩[A107770(n+1), A181747(n+1)]`
-/

namespace A236467.P2984427285095482917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236467.P2984427285095482917

namespace A236467

/-- `∩[A107770(n+1), A181747(n+1)]` -/
def P2984427285095482917.Spec : Prop :=
  ∀ n, (P2984427285095482917.a n : ℤ) = A236467 (n + 1)

end A236467

/-! ## A236467.P6386618675769373945

`∩[A107770(n+1), A238528(n+1)]`
-/

namespace A236467.P6386618675769373945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238528 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236467.P6386618675769373945

namespace A236467

/-- `∩[A107770(n+1), A238528(n+1)]` -/
def P6386618675769373945.Spec : Prop :=
  ∀ n, (P6386618675769373945.a n : ℤ) = A236467 (n + 1)

end A236467

/-! ## A236467.P8937490511443068788

`∩[A053319(n)+a(n-1), A107770(n+1)]` with `a(0)=3, a(1)=5`
-/

namespace A236467.P8937490511443068788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  A053319 n + f1 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236467.P8937490511443068788

namespace A236467

/-- `∩[A053319(n)+a(n-1), A107770(n+1)]` -/
def P8937490511443068788.Spec : Prop :=
  ∀ n, (P8937490511443068788.a n : ℤ) = A236467 (n + 1)

end A236467

/-!
# A236468: Number of ordered ways to write n = k + m with k > 0 and m > 0 such that p = phi(k) + phi(m)/2 - 1, p + 2 and prime(p) - 2 are all prime, where phi(.) is Euler's totient function.

The programs for A236468, there is no canonical definition to state claims against.
-/

/-! ## A236468.P16115899743296538114

`A287372(A127143(3*(n+1)))+A236097(n+1)`
-/

namespace A236468.P16115899743296538114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287372 (A127143 (3 * (n + 1))).toNat + A236097 (n + 1)

end

end A236468.P16115899743296538114

/-!
# A236469: Primes p such that pi(p) = floor(p/10), where pi is the prime counting function.

The programs for A236469, there is no canonical definition to state claims against.
-/

/-! ## A236469.P4154163472584420781

`A075902(n+2)`
-/

namespace A236469.P4154163472584420781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075902 (n + 2)

end

end A236469.P4154163472584420781

/-!
# A236470: a(n) = |{0 < k < n: p = prime(k) + phi(n-k), p + 2 and prime(p) + 2 are all prime}|, where phi(.) is Euler's totient function.

The programs for A236470, there is no canonical definition to state claims against.
-/

/-! ## A236470.P8355681957796694088

`and(A045912(A299499(n)), A193773(n+4))`
-/

namespace A236470.P8355681957796694088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045912 (A299499 n).toNat) (A193773 (n + 4))

end

end A236470.P8355681957796694088

/-! ## A236470.P16237648000848802258

`A000045(n)%A306323(A024186(n))`
-/

namespace A236470.P16237648000848802258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 n) (A306323 (A024186 n).toNat)

end

end A236470.P16237648000848802258

/-! ## A236470.P15067188230641805870

`A057030(A033485(3*n+4))%A262945(n)`
-/

namespace A236470.P15067188230641805870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057030 (A033485 (3 * n + 4)).toNat) (A262945 n)

end

end A236470.P15067188230641805870

/-! ## A236470.P6210440467895049496

`A046067(n+1)%p?[A325414(n)]`
-/

namespace A236470.P6210440467895049496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046067 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A236470.P6210440467895049496

/-!
# A236471: Riordan array ((1-x)/(1-2*x), x(1-x)/(1-2*x)^2).

The programs for A236471, there is no canonical definition to state claims against.
-/

/-! ## A236471.P14461948145304265123

`A179308(A181332(n)%A241899(n))`
-/

namespace A236471.P14461948145304265123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (Int.tmod (A181332 n) (A241899 (n + 10))).toNat

end

end A236471.P14461948145304265123

/-!
# A236472: a(n) = |{0 < k < n: p = prime(k) + phi(n-k), prime(p) + 2 and prime(p) + 6 are all prime}|, where phi(.) is Euler's totient function.

The programs for A236472, there is no canonical definition to state claims against.
-/

/-! ## A236472.P6787072223744333860

`xor(A094379(n), A152644(n+1))%3`
-/

namespace A236472.P6787072223744333860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (A094379 n) (A152644 (n + 1))) 3

end

end A236472.P6787072223744333860

/-! ## A236472.P15960382317907892433

`A284258(A001065(n+2)*A178659(2*(n+1)))`
-/

namespace A236472.P15960382317907892433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284258 (A001065 (n + 2) * A178659 (2 * (n + 1))).toNat

end

end A236472.P15960382317907892433

/-! ## A236472.P17596579923379573584

`A111441(n+1)%A239706(A000040(3*n+2))`
-/

namespace A236472.P17596579923379573584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111441 (n + 1)) (A239706 (A000040 (3 * n + 2)).toNat)

end

end A236472.P17596579923379573584

/-! ## A236472.P5393426988329343284

`A378387(A298405(n))`
-/

namespace A236472.P5393426988329343284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378387 (A298405 n).toNat

end

end A236472.P5393426988329343284

/-! ## A236472.P15471974594677028965

`A278029(A128209(n))%3`
-/

namespace A236472.P15471974594677028965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278029 (A128209 n).toNat) 3

end

end A236472.P15471974594677028965

/-!
# A236474: Numbers whose sum of unitary divisors (A034448) is equal to the sum of exponential divisors (A051377).

The programs for A236474, there is no canonical definition to state claims against.
-/

/-! ## A236474.P5138403992628183474

`A028310(A081070(n)*A121906(2*n+3))`
-/

namespace A236474.P5138403992628183474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A081070 n * A121906 (2 * n + 3)).toNat

end

end A236474.P5138403992628183474

/-!
# A236475: Numbers k such that k^3 + k - 1 is prime.

The programs for A236475, there is no canonical definition to state claims against.
-/

/-! ## A236475.P2383849246178336911

`floor(root(A182332(n+1), 3))`
-/

namespace A236475.P2383849246178336911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A236475.P2383849246178336911

/-! ## A236475.P9002946364600845843

`round(root(A182332(2*n+1-n), 3))`
-/

namespace A236475.P9002946364600845843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182332 (2 * n + 1 - n) : ℝ) ^ (1 / (3 : ℝ)))

end

end A236475.P9002946364600845843

/-! ## A236475.P1784837237104164959

`A000027(round(root(A182332(n+1), 3)))`
-/

namespace A236475.P1784837237104164959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A236475.P1784837237104164959

/-! ## A236475.P9993648338768141741

`round(root(A182332(n+1), 3))%A168106(n)`
-/

namespace A236475.P9993648338768141741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A168106 n)

end

end A236475.P9993648338768141741

/-! ## A236475.P6702911057420986460

`round(root(A182332(n+1), 3))+A016825(n)%2`
-/

namespace A236475.P6702911057420986460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) + Int.tmod (A016825 n) 2

end

end A236475.P6702911057420986460

/-! ## A236475.P12200335039550706936

`round(root(A182332(n+1), 3))+n%A028310(n)`
-/

namespace A236475.P12200335039550706936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) + Int.tmod (n : ℤ) (A028310 n)

end

end A236475.P12200335039550706936

/-! ## A236475.P15549336504028796212

`A254667(round(root(A182332(n+1), 3)))`
-/

namespace A236475.P15549336504028796212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A236475.P15549336504028796212

/-! ## A236475.P9503145634887710481

`round(root(A182332(n+1), 3))*A014963(40*(n+1))`
-/

namespace A236475.P9503145634887710481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A182332 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) * A014963 (40 * (n + 1))

end

end A236475.P9503145634887710481

/-! ## A236475.P1141801543601942887

`A128955(n+1)+1`
-/

namespace A236475.P1141801543601942887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128955 (n + 1) + 1

end

end A236475.P1141801543601942887

/-! ## A236475.P7248882626981681349

`A020725(A128955(n+1))`
-/

namespace A236475.P7248882626981681349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A128955 (n + 1)).toNat

end

end A236475.P7248882626981681349

/-!
# A236476: Primes p such that p^3 + p - 1 is prime.

The programs for A236476, there is no canonical definition to state claims against.
-/

/-! ## A236476.P7888301474698431821

`p?[A236475(n+1)]`
-/

namespace A236476.P7888301474698431821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236476.P7888301474698431821

/-! ## A236476.P2154385899016383772

`∩[A000040(n+1), A236475(n+1)]`
-/

namespace A236476.P2154385899016383772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P2154385899016383772

/-! ## A236476.P14565436027737451953

`∩[A004139(n+1), A236475(n+1)]`
-/

namespace A236476.P14565436027737451953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P14565436027737451953

/-! ## A236476.P11585264792907404485

`∩[A006005(n+1), A236475(n+1)]`
-/

namespace A236476.P11585264792907404485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P11585264792907404485

/-! ## A236476.P12278128313852680303

`∩[A007645(n+1), A236475(n+1)]`
-/

namespace A236476.P12278128313852680303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P12278128313852680303

/-! ## A236476.P11451187372910647421

`∩[A008578(n+1), A236475(n+1)]`
-/

namespace A236476.P11451187372910647421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P11451187372910647421

/-! ## A236476.P10921948084820632346

`∩[A033946(n+1), A236475(n+1)]`
-/

namespace A236476.P10921948084820632346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P10921948084820632346

/-! ## A236476.P17340980251577760306

`∩[A040116(n+1), A236475(n+1)]`
-/

namespace A236476.P17340980251577760306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P17340980251577760306

/-! ## A236476.P7850137067470733113

`∩[A045319(n+1), A236475(n+1)]`
-/

namespace A236476.P7850137067470733113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P7850137067470733113

/-! ## A236476.P709035304037214625

`∩[A045331(n+1), A236475(n+1)]`
-/

namespace A236476.P709035304037214625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P709035304037214625

/-! ## A236476.P10484099079334192279

`∩[A053813(n+1), A236475(n+1)]`
-/

namespace A236476.P10484099079334192279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P10484099079334192279

/-! ## A236476.P6487662730369067326

`∩[A065091(n+1), A236475(n+1)]`
-/

namespace A236476.P6487662730369067326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P6487662730369067326

/-! ## A236476.P3373306691489283763

`∩[A106118(n+1), A236475(n+1)]`
-/

namespace A236476.P3373306691489283763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P3373306691489283763

/-! ## A236476.P11584358801943708771

`∩[A158611(n+1), A236475(n+1)]`
-/

namespace A236476.P11584358801943708771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P11584358801943708771

/-! ## A236476.P5793530659676105309

`∩[A182986(n+1), A236475(n+1)]`
-/

namespace A236476.P5793530659676105309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P5793530659676105309

/-! ## A236476.P11626316891140904511

`∩[A326715(n+1), A236475(n+1)]`
-/

namespace A236476.P11626316891140904511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236476.P11626316891140904511

/-! ## A236476.P6372847609991636371

`filter[A236475(n+1), A010051(#)]`
-/

namespace A236476.P6372847609991636371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A236476.P6372847609991636371

/-! ## A236476.P5140538773828465850

`filter[A236475(n+1), A323153(#)]`
-/

namespace A236476.P5140538773828465850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A236476.P5140538773828465850

/-! ## A236476.P5848917560708235074

`record[A020639(A236475(A003602(n+1)))]`
-/

namespace A236476.P5848917560708235074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A236475 (A003602 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236476.P5848917560708235074

/-! ## A236476.P17293590014036639550

`record[A020639(A236475(A341440(n)))]`
-/

namespace A236476.P17293590014036639550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A236475 (A341440 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236476.P17293590014036639550

/-!
# A236477: Numbers k such that k^3 - k + 1 is prime.

The programs for A236477, there is no canonical definition to state claims against.
-/

/-! ## A236477.P13900654194474586385

`ceil(root(A100698(n+1), 3))`
-/

namespace A236477.P13900654194474586385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A236477.P13900654194474586385

/-! ## A236477.P18227391101016456235

`A000027(round(root(A100698(n+1), 3)))`
-/

namespace A236477.P18227391101016456235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A236477.P18227391101016456235

/-! ## A236477.P1562386592907246174

`floor(root(A100698(n+1), 3))+A033999(n)²`
-/

namespace A236477.P1562386592907246174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋ + A033999 n ^ 2

end

end A236477.P1562386592907246174

/-! ## A236477.P1016718979639967193

`A097807(n)²*round(root(A100698(n+1), 3))`
-/

namespace A236477.P1016718979639967193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * SequenceMachineLib.roundAway ((A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A236477.P1016718979639967193

/-! ## A236477.P3914724191997598284

`round(root(A100698(n+1), 3))%A000040(n+2)`
-/

namespace A236477.P3914724191997598284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))) (A000040 (n + 2))

end

end A236477.P3914724191997598284

/-! ## A236477.P9061079451325655695

`A008683(16*(n+1))+round(root(A100698(n+1), 3))`
-/

namespace A236477.P9061079451325655695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (16 * (n + 1)) + SequenceMachineLib.roundAway ((A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))

end

end A236477.P9061079451325655695

/-! ## A236477.P259584592805721430

`A254667(round(root(A100698(n+1), 3)))`
-/

namespace A236477.P259584592805721430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (SequenceMachineLib.roundAway ((A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A236477.P259584592805721430

/-!
# A236478: Primes p such that p^3 - p + 1 is prime.

The programs for A236478, there is no canonical definition to state claims against.
-/

/-! ## A236478.P5938620692860117259

`p?[A236477(n+1)]`
-/

namespace A236478.P5938620692860117259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236478.P5938620692860117259

/-! ## A236478.P16485218427349775932

`p?[ceil(root(A100698(n+1), 3))]`
-/

namespace A236478.P16485218427349775932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A236478.P16485218427349775932

/-! ## A236478.P17777803640165877776

`record[A020639(A236477(n+2))]`
-/

namespace A236478.P17777803640165877776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A236477 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236478.P17777803640165877776

/-! ## A236478.P4947307819638276899

`filter[A236477(n+1), A010051(#)]`
-/

namespace A236478.P4947307819638276899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A236478.P4947307819638276899

/-! ## A236478.P14505483253619488932

`∩[A000040(n+1), A236477(n+1)]`
-/

namespace A236478.P14505483253619488932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P14505483253619488932

/-! ## A236478.P7728178727837166538

`∩[A008578(n+1), A236477(n+1)]`
-/

namespace A236478.P7728178727837166538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P7728178727837166538

/-! ## A236478.P5225947089637345377

`∩[A033946(n+1), A236477(n+1)]`
-/

namespace A236478.P5225947089637345377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P5225947089637345377

/-! ## A236478.P7683122844916220448

`∩[A045319(n+1), A236477(n+1)]`
-/

namespace A236478.P7683122844916220448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P7683122844916220448

/-! ## A236478.P6057741150550922418

`∩[A045344(n+1), A236477(n+1)]`
-/

namespace A236478.P6057741150550922418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P6057741150550922418

/-! ## A236478.P17002857573878023671

`∩[A045348(n+1), A236477(n+1)]`
-/

namespace A236478.P17002857573878023671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P17002857573878023671

/-! ## A236478.P2742007413931579378

`∩[A045371(n+1), A236477(n+1)]`
-/

namespace A236478.P2742007413931579378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P2742007413931579378

/-! ## A236478.P1726742411913469955

`∩[A158611(n+1), A236477(n+1)]`
-/

namespace A236478.P1726742411913469955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P1726742411913469955

/-! ## A236478.P17828748686381695298

`∩[A182986(n+1), A236477(n+1)]`
-/

namespace A236478.P17828748686381695298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P17828748686381695298

/-! ## A236478.P7742627876285769723

`∩[A189710(n+1), A236477(n+1)]`
-/

namespace A236478.P7742627876285769723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P7742627876285769723

/-! ## A236478.P13990507810279788308

`∩[A197636(n+1), A236477(n+1)]`
-/

namespace A236478.P13990507810279788308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P13990507810279788308

/-! ## A236478.P16541314850076867567

`∩[A326715(n+1), A236477(n+1)]`
-/

namespace A236478.P16541314850076867567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236478.P16541314850076867567

/-! ## A236478.P7168211457772921940

`filter[A236477(n+1), A080339(#)]`
-/

namespace A236478.P7168211457772921940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A236478.P7168211457772921940

/-! ## A236478.P9221201752450927663

`record[A014963(ceil(root(A100698(n+1), 3)))]`
-/

namespace A236478.P9221201752450927663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ⌈(A100698 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236478.P9221201752450927663

/-! ## A236478.P2352812449408248685

`A000040(record[A049084(A236477(n+1))])`
-/

namespace A236478.P2352812449408248685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (A236477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236478.P2352812449408248685

/-! ## A236478.P11643896846472827693

`A006530(record[A277698(A236477(n+1))])`
-/

namespace A236478.P11643896846472827693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277698 (A236477 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A236478.P11643896846472827693

/-!
# A236480: a(n) = |{0 < k < n-2: p = 2*phi(k) + phi(n-k)/2 + 1, prime(p) + 2 and prime(prime(p)) + 2 are all prime}|, where phi(.) is Euler's totient function.

The programs for A236480, there is no canonical definition to state claims against.
-/

/-! ## A236480.P1460180623681708778

`A236508(n+1)+C(2, A229311(n+1))`
-/

namespace A236480.P1460180623681708778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236508 (n + 1) + (Nat.choose 2 (A229311 (n + 1)).toNat : ℤ)

end

end A236480.P1460180623681708778

/-! ## A236480.P13214024695332526071

`A236508(n+1)+A000007(A272397(n))`
-/

namespace A236480.P13214024695332526071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236508 (n + 1) + A000007 (A272397 n).toNat

end

end A236480.P13214024695332526071

/-! ## A236480.P926831631635862386

`A236508(n+1)+A000007(A181824(n+1))`
-/

namespace A236480.P926831631635862386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236508 (n + 1) + A000007 (A181824 (n + 1)).toNat

end

end A236480.P926831631635862386

/-! ## A236480.P9053958437664866065

`A236508(n+1)+A000007(A303800(n+1))`
-/

namespace A236480.P9053958437664866065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236508 (n + 1) + A000007 (A303800 (n + 1)).toNat

end

end A236480.P9053958437664866065

/-! ## A236480.P18135752565212632152

`A236508(n+1)%A016885(A003586(n+1))`
-/

namespace A236480.P18135752565212632152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236508 (n + 1)) (A016885 (A003586 (n + 1)).toNat)

end

end A236480.P18135752565212632152

/-! ## A236480.P15598400043839038845

`A007318(A239086(n+2)-n)*A236508(n+1)`
-/

namespace A236480.P15598400043839038845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A239086 (n + 2) - (n : ℤ)).toNat * A236508 (n + 1)

end

end A236480.P15598400043839038845

/-! ## A236480.P2955487971952999079

`A236508(A239086(n+2)-n+1)+A236508(n+1)`
-/

namespace A236480.P2955487971952999079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236508 (A239086 (n + 2) - (n : ℤ) + 1).toNat + A236508 (n + 1)

end

end A236480.P2955487971952999079

/-! ## A236480.P8755763368762614398

`A236508(n+1)+A000007(A343389(n+1))`
-/

namespace A236480.P8755763368762614398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236508 (n + 1) + A000007 (A343389 (n + 1)).toNat

end

end A236480.P8755763368762614398

/-! ## A236480.P15910966512246224053

`A236508(n+1)%A000664(n)`
-/

namespace A236480.P15910966512246224053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236508 (n + 1)) (A000664 n)

end

end A236480.P15910966512246224053

/-! ## A236480.P15862778575139028657

`and(A094841(n+1), A236508(n+1))`
-/

namespace A236480.P15862778575139028657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094841 (n + 1)) (A236508 (n + 1))

end

end A236480.P15862778575139028657

/-!
# A236481: Primes p with p + 2, prime(p) + 2 and prime(prime(p)) + 2 all prime.

The programs for A236481, there is no canonical definition to state claims against.
-/

/-! ## A236481.P3708853463895278007

`∩[A067062(n+1), A237283(n+1)]`
-/

namespace A236481.P3708853463895278007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236481.P3708853463895278007

/-! ## A236481.P16212176118814264824

`∩[A236458(n+1), A237283(n+1)]`
-/

namespace A236481.P16212176118814264824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236481.P16212176118814264824

/-! ## A236481.P8576990521059991619

`∩[A001359(n+1), A259488(n+1)]`
-/

namespace A236481.P8576990521059991619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236481.P8576990521059991619

/-! ## A236481.P1768422969533917963

`∩[A236458(n+1), A259488(n+1)]`
-/

namespace A236481.P1768422969533917963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236481.P1768422969533917963

/-! ## A236481.P16924900385923325224

`∩[A054799(n+1), A259488(n+1)]`
-/

namespace A236481.P16924900385923325224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A236481.P16924900385923325224

/-!
# A236486: Number of (n+1)X(2+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236486, there is no canonical definition to state claims against.
-/

/-! ## A236486.P11382390656600958338

`A236490(∑[n+2])`
-/

namespace A236486.P11382390656600958338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A236486.P11382390656600958338

/-! ## A236486.P524135758502656077

`record[A236490(Δ[A003453(n+5)])]`
-/

namespace A236486.P524135758502656077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236486.P524135758502656077

/-! ## A236486.P3381180667945407145

`record[A236490(n+2)/A215474(n+4)]`
-/

namespace A236486.P3381180667945407145
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236490 (n + 2) : ℚ) / (A215474 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236486.P3381180667945407145

/-! ## A236486.P18323809113292278122

`record[root(A236490(n+2), A236471(n+2))]`
-/

namespace A236486.P18323809113292278122
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236490 (n + 2) : ℝ) ^ (1 / (A236471 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236486.P18323809113292278122

/-!
# A236487: Number of (n+1)X(3+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236487, there is no canonical definition to state claims against.
-/

/-! ## A236487.P14454448149334439060

`A236490(∑[n+3]+1)`
-/

namespace A236487.P14454448149334439060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236487.P14454448149334439060

/-! ## A236487.P11434794537987619833

`A236490(A034856(n+2))+A046800(A265421(n+1))`
-/

namespace A236487.P11434794537987619833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A034856 (n + 2)).toNat + A046800 (A265421 (n + 1)).toNat

end

end A236487.P11434794537987619833

/-! ## A236487.P4070768186782823624

`A035214(A234322(n+1))*A236490(A034856(n+2))`
-/

namespace A236487.P4070768186782823624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A234322 (n + 1)).toNat * A236490 (A034856 (n + 2)).toNat

end

end A236487.P4070768186782823624

/-!
# A236488: Number of (n+1)X(4+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236488, there is no canonical definition to state claims against.
-/

/-! ## A236488.P4246596817152919992

`A236490(∑[n+4]+3)`
-/

namespace A236488.P4246596817152919992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A236488.P4246596817152919992

/-!
# A236489: Number of (n+1)X(5+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236489, there is no canonical definition to state claims against.
-/

/-! ## A236489.P931720263758212280

`A236490(Δ[A264443(n)])`
-/

namespace A236489.P931720263758212280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (f1 (n + 1) - f1 n).toNat

end

end A236489.P931720263758212280

/-! ## A236489.P7047620933032660759

`A236490(eq[4, A193592(n)])`
-/

namespace A236489.P7047620933032660759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236489.P7047620933032660759

/-! ## A236489.P15822566651861960194

`A236490(Δ[A023545(n+1)])`
-/

namespace A236489.P15822566651861960194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (f1 (n + 1) - f1 n).toNat

end

end A236489.P15822566651861960194

/-!
# A236490: T(n,k)=Number of (n+1)X(k+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236490, there is no canonical definition to state claims against.
-/

/-! ## A236490.P12239497715317878738

`A235437(n+1)-A081157(A007579(n))`
-/

namespace A236490.P12239497715317878738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235437 (n + 1) - A081157 (A007579 n).toNat

end

end A236490.P12239497715317878738

/-!
# A236491: Number of (2+1)X(n+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236491, there is no canonical definition to state claims against.
-/

/-! ## A236491.P13754156882639971344

`A236490(∑[n+1]+2)`
-/

namespace A236491.P13754156882639971344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236491.P13754156882639971344

/-! ## A236491.P3447737494114887622

`record[A010054(n)*A236490(n+2)]`
-/

namespace A236491.P3447737494114887622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236490 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236491.P3447737494114887622

/-! ## A236491.P10003737885844449434

`record[root(A236490(n+2), A059268(n))]`
-/

namespace A236491.P10003737885844449434
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236490 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236491.P10003737885844449434

/-! ## A236491.P729454567544283080

`record[gcd(A136431(n), A236490(n+2))]`
-/

namespace A236491.P729454567544283080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A136431 n) (A236490 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236491.P729454567544283080

/-!
# A236492: Number of (3+1)X(n+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236492, there is no canonical definition to state claims against.
-/

/-! ## A236492.P18252774199887556141

`A236490(∑[n+2]+4)`
-/

namespace A236492.P18252774199887556141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236492.P18252774199887556141

/-! ## A236492.P11288701386278267211

`or(1, A236490(A167614(n+1)))`
-/

namespace A236492.P11288701386278267211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A236490 (A167614 (n + 1)).toNat)

end

end A236492.P11288701386278267211

/-! ## A236492.P8162702113078453574

`A236490(A167614(n+1))+A185254(n)`
-/

namespace A236492.P8162702113078453574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A167614 (n + 1)).toNat + A185254 n

end

end A236492.P8162702113078453574

/-! ## A236492.P3158651997834542543

`A281155(n)+A236490(A167614(n+1))`
-/

namespace A236492.P3158651997834542543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281155 n + A236490 (A167614 (n + 1)).toNat

end

end A236492.P3158651997834542543

/-! ## A236492.P16482616415885009157

`A236490(A167614(n+1))+A037807(n+1)`
-/

namespace A236492.P16482616415885009157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A167614 (n + 1)).toNat + A037807 (n + 1)

end

end A236492.P16482616415885009157

/-!
# A236493: Number of (4+1)X(n+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236493, there is no canonical definition to state claims against.
-/

/-! ## A236493.P14493946203231963335

`A236490(A141214(n)+7)`
-/

namespace A236493.P14493946203231963335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A141214 n + 7).toNat

end

end A236493.P14493946203231963335

/-! ## A236493.P631480315778800250

`A236490(A052905(n)+9)`
-/

namespace A236493.P631480315778800250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A052905 n + 9).toNat

end

end A236493.P631480315778800250

/-! ## A236493.P11887360892152997800

`A236490(A055999(n)+10)`
-/

namespace A236493.P11887360892152997800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A055999 n + 10).toNat

end

end A236493.P11887360892152997800

/-! ## A236493.P12404295878559593402

`A236490(A167614(n+2)+1)`
-/

namespace A236493.P12404295878559593402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A167614 (n + 2) + 1).toNat

end

end A236493.P12404295878559593402

/-! ## A236493.P8024135570778824781

`A236490(A112355(n+1)+4)`
-/

namespace A236493.P8024135570778824781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A112355 (n + 1) + 4).toNat

end

end A236493.P8024135570778824781

/-!
# A236494: Number of (5+1)X(n+1) 0..2 arrays with the difference between each 2X2 subblock maximum and minimum lexicographically nondecreasing columnwise and nonincreasing rowwise.

The programs for A236494, there is no canonical definition to state claims against.
-/

/-! ## A236494.P5867060948556400803

`A236490(A167499(n+3))`
-/

namespace A236494.P5867060948556400803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A167499 (n + 3)).toNat

end

end A236494.P5867060948556400803

/-! ## A236494.P16801428882575151428

`A236490(A155212(n)+13)`
-/

namespace A236494.P16801428882575151428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A155212 n + 13).toNat

end

end A236494.P16801428882575151428

/-! ## A236494.P2989873796510335740

`A236490(A000124(n+4)+4)`
-/

namespace A236494.P2989873796510335740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236490 (A000124 (n + 4) + 4).toNat

end

end A236494.P2989873796510335740

/-!
# A236495: Number of (n+1)X(1+1) 0..3 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236495, there is no canonical definition to state claims against.
-/

/-! ## A236495.P7145854876111891398

`A236500(∑[n]+1)`
-/

namespace A236495.P7145854876111891398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A236495.P7145854876111891398

/-! ## A236495.P4167979558592535983

`lcm(2, A236500(A000124(n)))`
-/

namespace A236495.P4167979558592535983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236500 (A000124 n).toNat)

end

end A236495.P4167979558592535983

/-! ## A236495.P10043534350869735350

`record[A010054(n)*A236500(n+1)]`
-/

namespace A236495.P10043534350869735350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236495.P10043534350869735350

/-! ## A236495.P4741457918573273368

`record[root(A236500(n+1), A144215(n+1))]`
-/

namespace A236495.P4741457918573273368
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236500 (n + 1) : ℝ) ^ (1 / (A144215 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236495.P4741457918573273368

/-! ## A236495.P6861093588302717746

`record[gcd(A236500(n+1), A236532(n+1))]`
-/

namespace A236495.P6861093588302717746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236500 (n + 1)) (A236532 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236495.P6861093588302717746

/-!
# A236496: Number of (n+1)X(2+1) 0..3 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236496, there is no canonical definition to state claims against.
-/

/-! ## A236496.P3585582719744531743

`A236500(∑[n+1]+2)`
-/

namespace A236496.P3585582719744531743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A236496.P3585582719744531743

/-! ## A236496.P11800826288249905146

`record[A010054(n)*A236500(n+2)]`
-/

namespace A236496.P11800826288249905146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A236500 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236496.P11800826288249905146

/-! ## A236496.P11503023374497033822

`record[root(A236500(n+2), A144215(n+1))]`
-/

namespace A236496.P11503023374497033822
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236500 (n + 2) : ℝ) ^ (1 / (A144215 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236496.P11503023374497033822

/-! ## A236496.P6854548820979570941

`record[gcd(A236500(n+2), A236532(n+1))]`
-/

namespace A236496.P6854548820979570941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236500 (n + 2)) (A236532 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236496.P6854548820979570941

/-! ## A236496.P5700657085265175405

`record[A236500(A101881(n)+1)]`
-/

namespace A236496.P5700657085265175405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A101881 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A236496.P5700657085265175405

/-!
# A236497: Number of (n+1)X(3+1) 0..3 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236497, there is no canonical definition to state claims against.
-/

/-! ## A236497.P484721248147607505

`A236500(∑[n+2]+4)`
-/

namespace A236497.P484721248147607505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A236497.P484721248147607505

/-! ## A236497.P17759691399353978634

`lcm(2, A236500(A167614(n+1)))`
-/

namespace A236497.P17759691399353978634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A236500 (A167614 (n + 1)).toNat)

end

end A236497.P17759691399353978634

/-! ## A236497.P5252986596702396587

`A236500(A167614(n+1))+A178798(n)`
-/

namespace A236497.P5252986596702396587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A167614 (n + 1)).toNat + A178798 n

end

end A236497.P5252986596702396587

/-! ## A236497.P7428685398824039605

`A236500(A167614(n+1))+A047752(n+1)`
-/

namespace A236497.P7428685398824039605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A167614 (n + 1)).toNat + A047752 (n + 1)

end

end A236497.P7428685398824039605

/-! ## A236497.P13216768201522623726

`A236500(A167614(n+1))%A236498(n+1)`
-/

namespace A236497.P13216768201522623726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A236500 (A167614 (n + 1)).toNat) (A236498 (n + 1))

end

end A236497.P13216768201522623726

/-!
# A236498: Number of (n+1)X(4+1) 0..3 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236498, there is no canonical definition to state claims against.
-/

/-! ## A236498.P6608565915127493829

`A236500(A374004(n+1))`
-/

namespace A236498.P6608565915127493829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A374004 (n + 1)).toNat

end

end A236498.P6608565915127493829

/-! ## A236498.P14509476319742736798

`A236500(A141214(n)+7)`
-/

namespace A236498.P14509476319742736798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A141214 n + 7).toNat

end

end A236498.P14509476319742736798

/-! ## A236498.P17613725859948158886

`A236500(A052905(n)+9)`
-/

namespace A236498.P17613725859948158886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A052905 n + 9).toNat

end

end A236498.P17613725859948158886

/-! ## A236498.P7734891912464795398

`A236500(A055999(n)+10)`
-/

namespace A236498.P7734891912464795398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A055999 n + 10).toNat

end

end A236498.P7734891912464795398

/-! ## A236498.P15858773673894854901

`A236500(A167614(n+2)+1)`
-/

namespace A236498.P15858773673894854901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A167614 (n + 2) + 1).toNat

end

end A236498.P15858773673894854901

/-!
# A236499: Number of (n+1)X(5+1) 0..3 arrays colored with the sum of the maximum and minimum values of each 2X2 subblock.

The programs for A236499, there is no canonical definition to state claims against.
-/

/-! ## A236499.P6705683271817950118

`A236500(A374005(n+1))`
-/

namespace A236499.P6705683271817950118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (A374005 (n + 1)).toNat

end

end A236499.P6705683271817950118

/-! ## A236499.P9309014007372074505

`A236500(Δ[A023545(n+1)])`
-/

namespace A236499.P9309014007372074505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (f1 (n + 1) - f1 n).toNat

end

end A236499.P9309014007372074505

/-! ## A236499.P13867648289023351317

`A236500(eq[6, A185782(n+1)])`
-/

namespace A236499.P13867648289023351317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A236499.P13867648289023351317

/-! ## A236499.P13384855952427241858

`A236500(Δ[A006416(n+3)]-1)`
-/

namespace A236499.P13384855952427241858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236500 (f1 (n + 1) - f1 n - 1).toNat

end

end A236499.P13384855952427241858

