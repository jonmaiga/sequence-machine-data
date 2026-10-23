import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B011.C001
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

/-!
# A376300: Numbers whose digits can be rearranged to form a substring of 123456789012345678901234....

The programs for A376300, there is no canonical definition to state claims against.
-/

/-! ## A376300.P4697306349000183566

`A118759(A357142(n+1))`
-/

namespace A376300.P4697306349000183566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A357142 (n + 1)).toNat

end

end A376300.P4697306349000183566

/-! ## A376300.P16057848659498191610

`A226005(A357142(n+1)²+1)`
-/

namespace A376300.P16057848659498191610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (A357142 (n + 1) ^ 2 + 1).toNat

end

end A376300.P16057848659498191610

/-! ## A376300.P3988334799658002186

`A357142(n+1)%A357129(n+5)`
-/

namespace A376300.P3988334799658002186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357142 (n + 1)) (A357129 (n + 5))

end

end A376300.P3988334799658002186

/-! ## A376300.P3014875845680736723

`∩[A323048(n+1), A357142(n+1)]`
-/

namespace A376300.P3014875845680736723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376300.P3014875845680736723

/-! ## A376300.P1379184200721687346

`A357142(n+1)^A284992(A359215(n))`
-/

namespace A376300.P1379184200721687346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357142 (n + 1) : ℚ) ^ (A284992 (A359215 n).toNat : ℤ)

end

end A376300.P1379184200721687346

/-!
# A376303: Numbers k such that no 7-smooth number ends in k.

The programs for A376303, there is no canonical definition to state claims against.
-/

/-! ## A376303.P9245174572632431631

`lt[A376301(n), 0]`
-/

namespace A376303.P9245174572632431631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A376303.P9245174572632431631

/-! ## A376303.P5409972690902276676

`eq[A057428(n), A376301(n)]`
-/

namespace A376303.P5409972690902276676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P5409972690902276676

/-! ## A376303.P2618111285427216313

`eq[A260196(n), A376301(n)]`
-/

namespace A376303.P2618111285427216313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P2618111285427216313

/-! ## A376303.P3832663532639346997

`eq[A153881(n+1), A376301(n)]`
-/

namespace A376303.P3832663532639346997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P3832663532639346997

/-! ## A376303.P12894591951110992770

`eq[A089263(2*n+1), A376301(n)]`
-/

namespace A376303.P12894591951110992770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P12894591951110992770

/-! ## A376303.P3079420270749586488

`eq[A033999(2*n+1), A376301(n)]`
-/

namespace A376303.P3079420270749586488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P3079420270749586488

/-! ## A376303.P12478484271362252118

`eq[A164117(2*n+1), A376301(n)]`
-/

namespace A376303.P12478484271362252118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P12478484271362252118

/-! ## A376303.P14629374511668225336

`eq[A323191(2*n+1), A376301(n)]`
-/

namespace A376303.P14629374511668225336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323191 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P14629374511668225336

/-! ## A376303.P9856093855326548152

`eq[A323202(2*n+1), A376301(n)]`
-/

namespace A376303.P9856093855326548152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P9856093855326548152

/-! ## A376303.P7101036096058132576

`eq[A115638(2*n+1), A376301(n)]`
-/

namespace A376303.P7101036096058132576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115638 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P7101036096058132576

/-! ## A376303.P3383820722100874950

`eq[A003264(2*n+1), A376301(n)]`
-/

namespace A376303.P3383820722100874950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003264 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376301 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376303.P3383820722100874950

/-!
# A376304: Strong pseudoprimes to base 2 that are not squarefree.

The programs for A376304, there is no canonical definition to state claims against.
-/

/-! ## A376304.P3397829659533685353

`A158358(∩[A006549(n+1), A339510(n)])`
-/

namespace A376304.P3397829659533685353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339510 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158358 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A376304.P3397829659533685353

/-!
# A376305: Run-compression of the sequence of first differences of squarefree numbers.

The programs for A376305, there is no canonical definition to state claims against.
-/

/-! ## A376305.P12349189935041906490

`A076259(∑[A376306(n+1)])`
-/

namespace A376305.P12349189935041906490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376305.P12349189935041906490

/-! ## A376305.P13743662100620247843

`A376307(n+1)/A376306(n+1)`
-/

namespace A376305.P13743662100620247843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376307 (n + 1) : ℚ) / (A376306 (n + 1) : ℚ)

end

end A376305.P13743662100620247843

/-! ## A376305.P9071913334266495245

`A076259(A376592(n+1))`
-/

namespace A376305.P9071913334266495245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (A376592 (n + 1)).toNat

end

end A376305.P9071913334266495245

/-! ## A376305.P16375523363125251191

`A074944(A206399(n+1))`
-/

namespace A376305.P16375523363125251191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074944 (A206399 (n + 1)).toNat

end

end A376305.P16375523363125251191

/-!
# A376307: Run-sums of the sequence of first differences of squarefree numbers.

The programs for A376307, there is no canonical definition to state claims against.
-/

/-! ## A376307.P833145775498785408

`A376305(n+1)*A376306(n+1)`
-/

namespace A376307.P833145775498785408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376305 (n + 1) * A376306 (n + 1)

end

end A376307.P833145775498785408

/-! ## A376307.P16057523340261752395

`A076259(∑[A376306(n+1)])*A376306(n+1)`
-/

namespace A376307.P16057523340261752395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076259 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A376306 (n + 1)

end

end A376307.P16057523340261752395

/-!
# A376308: Run-compression of the sequence of first differences of prime-powers.

The programs for A376308, there is no canonical definition to state claims against.
-/

/-! ## A376308.P7248849258310010892

`A057820(∑[A376309(n+1)]+1)`
-/

namespace A376308.P7248849258310010892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A376308.P7248849258310010892

/-! ## A376308.P5898884659987893698

`A376310(n+1)/A376309(n+1)`
-/

namespace A376308.P5898884659987893698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376310 (n + 1) : ℚ) / (A376309 (n + 1) : ℚ)

end

end A376308.P5898884659987893698

/-! ## A376308.P1206633008092493489

`A057820(A376598(n+1))`
-/

namespace A376308.P1206633008092493489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057820 (A376598 (n + 1)).toNat

end

end A376308.P1206633008092493489

/-! ## A376308.P12521361779846254301

`A265892(A053982(n+3)%A053303(n+2))`
-/

namespace A376308.P12521361779846254301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265892 (Int.tmod (A053982 (n + 3)) (A053303 (n + 2))).toNat

end

end A376308.P12521361779846254301

/-!
# A376310: Run-sums of the sequence of first differences of prime-powers.

The programs for A376310, there is no canonical definition to state claims against.
-/

/-! ## A376310.P13717162084067855563

`A376308(n+1)*A376309(n+1)`
-/

namespace A376310.P13717162084067855563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376308 (n + 1) * A376309 (n + 1)

end

end A376310.P13717162084067855563

/-!
# A376311: Position of first appearance of n in the sequence of first differences of squarefree numbers, or the sequence ends if there is none.

The programs for A376311, there is no canonical definition to state claims against.
-/

/-! ## A376311.P5807239957921210597

`A013928(A020755(n+1))`
-/

namespace A376311.P5807239957921210597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A020755 (n + 1)).toNat

end

end A376311.P5807239957921210597

/-! ## A376311.P10365094548645592857

`A013928(A020754(n+1)+1)`
-/

namespace A376311.P10365094548645592857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (A020754 (n + 1) + 1).toNat

end

end A376311.P10365094548645592857

/-!
# A376312: Run-compression of first differences (A078147) of nonsquarefree numbers (A013929).

The programs for A376312, there is no canonical definition to state claims against.
-/

/-! ## A376312.P17389790893385201761

`A078147(∑[A376267(n+1)])`
-/

namespace A376312.P17389790893385201761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A376312.P17389790893385201761

/-! ## A376312.P7483550987853153067

`A376264(n+1)/A376267(n+1)`
-/

namespace A376312.P7483550987853153067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376264 (n + 1) : ℚ) / (A376267 (n + 1) : ℚ)

end

end A376312.P7483550987853153067

/-! ## A376312.P10141886923234675740

`A078147(A376595(n+1))`
-/

namespace A376312.P10141886923234675740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078147 (A376595 (n + 1)).toNat

end

end A376312.P10141886923234675740

/-! ## A376312.P1990747389955446130

`A375707(A376595(n+1))+A006519(2*n+5)`
-/

namespace A376312.P1990747389955446130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375707 (A376595 (n + 1)).toNat + A006519 (2 * n + 5)

end

end A376312.P1990747389955446130

/-!
# A376313: Independence number of the 2-supertoken graph FF_2(C_n) of the cycle C_n on n vertices.

The programs for A376313, the canonical program `A376313.P8085545222053621016` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376313 has offset 2).

The definition of A376313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376313.P8085545222053621016

`or(2, n+2)*ceil((n+1)/4)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A376313

/-- `or(2, n+2)*ceil((n+1)/4)` -/
def P8085545222053621016.Spec : Prop :=
  ∀ n, P8085545222053621016.a n = A376313 (n + 2)

theorem P8085545222053621016.correct : P8085545222053621016.Spec := by
  intro n
  simp only [A376313, Nat.add_sub_cancel]

end A376313

/-! ## A376313.P9491920907559516398

`floor((n+3)*or(1, n+2)/4)`
-/

namespace A376313.P9491920907559516398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) * ((Nat.lor 1 (n + 2) : ℚ) / 4)⌋

end

end A376313.P9491920907559516398

namespace A376313

/-- `floor((n+3)*or(1, n+2)/4)` -/
def P9491920907559516398.Spec : Prop :=
  ∀ n, P9491920907559516398.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P492971391607927840

`floor((n+2)*(floor(n/2)/2+1))`
-/

namespace A376313.P492971391607927840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) * ((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1)⌋

end

end A376313.P492971391607927840

namespace A376313

/-- `floor((n+2)*(floor(n/2)/2+1))` -/
def P492971391607927840.Spec : Prop :=
  ∀ n, P492971391607927840.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P15323398562256022624

`∑[∑[char[4*n]]+∑[n+1]%(n+2)]`
-/

namespace A376313.P15323398562256022624
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (∑ j ∈ Finset.range (n + 1), f4 j) % (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376313.P15323398562256022624

namespace A376313

/-- `∑[∑[char[4*n]]+∑[n+1]%(n+2)]` -/
def P15323398562256022624.Spec : Prop :=
  ∀ n, (P15323398562256022624.a n : ℤ) = A376313 (n + 2)

end A376313

/-! ## A376313.P1348878818235611968

`A008805(n)+∑[∑[char[4*n]]]`
-/

namespace A376313.P1348878818235611968
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A376313.P1348878818235611968

namespace A376313

/-- `A008805(n)+∑[∑[char[4*n]]]` -/
def P1348878818235611968.Spec : Prop :=
  ∀ n, P1348878818235611968.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P5473499221414052664

`A106466(n)+A087811(n+1)`
-/

namespace A376313.P5473499221414052664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 n + A087811 (n + 1)

end

end A376313.P5473499221414052664

namespace A376313

/-- `A106466(n)+A087811(n+1)` -/
def P5473499221414052664.Spec : Prop :=
  ∀ n, P5473499221414052664.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P3667953103045176743

`A186351(n+1)-A124072(n)`
-/

namespace A376313.P3667953103045176743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186351 (n + 1) - A124072 n

end

end A376313.P3667953103045176743

namespace A376313

/-- `A186351(n+1)-A124072(n)` -/
def P3667953103045176743.Spec : Prop :=
  ∀ n, P3667953103045176743.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P17808026934047392404

`A165718(n+1)-A186347(n+1)`
-/

namespace A376313.P17808026934047392404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165718 (n + 1) - A186347 (n + 1)

end

end A376313.P17808026934047392404

namespace A376313

/-- `A165718(n+1)-A186347(n+1)` -/
def P17808026934047392404.Spec : Prop :=
  ∀ n, P17808026934047392404.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P6192393023552412889

`Δ[A002623(n)-floor((floor(n/2)/2+1)²)]`
-/

namespace A376313.P6192393023552412889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - ⌊((⌊(n : ℚ) / 2⌋ : ℚ) / 2 + 1) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376313.P6192393023552412889

namespace A376313

/-- `Δ[A002623(n)-floor((floor(n/2)/2+1)²)]` -/
def P6192393023552412889.Spec : Prop :=
  ∀ n, P6192393023552412889.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P12163905126642827213

`A008726(or(1, n)+n)`
-/

namespace A376313.P12163905126642827213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (Nat.lor 1 n + n)

end

end A376313.P12163905126642827213

namespace A376313

/-- `A008726(or(1, n)+n)` -/
def P12163905126642827213.Spec : Prop :=
  ∀ n, P12163905126642827213.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P3676273107950208203

`A008726(A042963(n+1))`
-/

namespace A376313.P3676273107950208203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (A042963 (n + 1)).toNat

end

end A376313.P3676273107950208203

namespace A376313

/-- `A008726(A042963(n+1))` -/
def P3676273107950208203.Spec : Prop :=
  ∀ n, P3676273107950208203.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P16863953971413824344

`A236294(A042964(n+1))`
-/

namespace A376313.P16863953971413824344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236294 (A042964 (n + 1)).toNat

end

end A376313.P16863953971413824344

namespace A376313

/-- `A236294(A042964(n+1))` -/
def P16863953971413824344.Spec : Prop :=
  ∀ n, P16863953971413824344.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P151717086744752058

`A236294(A053438(n+1))`
-/

namespace A376313.P151717086744752058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236294 (A053438 (n + 1)).toNat

end

end A376313.P151717086744752058

namespace A376313

/-- `A236294(A053438(n+1))` -/
def P151717086744752058.Spec : Prop :=
  ∀ n, P151717086744752058.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P9160842098808609808

`A361202(A014601(n+1))`
-/

namespace A376313.P9160842098808609808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361202 (A014601 (n + 1)).toNat

end

end A376313.P9160842098808609808

namespace A376313

/-- `A361202(A014601(n+1))` -/
def P9160842098808609808.Spec : Prop :=
  ∀ n, P9160842098808609808.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P16169471016767007774

`A361202(A154708(n+1))`
-/

namespace A376313.P16169471016767007774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361202 (A154708 (n + 1)).toNat

end

end A376313.P16169471016767007774

namespace A376313

/-- `A361202(A154708(n+1))` -/
def P16169471016767007774.Spec : Prop :=
  ∀ n, P16169471016767007774.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P11150867147490737308

`A008726(A004524(2*n)+n+1)`
-/

namespace A376313.P11150867147490737308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (A004524 (2 * n) + (n + 1 : ℤ)).toNat

end

end A376313.P11150867147490737308

namespace A376313

/-- `A008726(A004524(2*n)+n+1)` -/
def P11150867147490737308.Spec : Prop :=
  ∀ n, P11150867147490737308.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P4213955134848847938

`A008726(A014848(n+1)-A014848(n))`
-/

namespace A376313.P4213955134848847938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (A014848 (n + 1) - A014848 n).toNat

end

end A376313.P4213955134848847938

namespace A376313

/-- `A008726(A014848(n+1)-A014848(n))` -/
def P4213955134848847938.Spec : Prop :=
  ∀ n, P4213955134848847938.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P9032945611261738558

`A008736(A047463(n+1))`
-/

namespace A376313.P9032945611261738558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008736 (A047463 (n + 1)).toNat

end

end A376313.P9032945611261738558

namespace A376313

/-- `A008736(A047463(n+1))` -/
def P9032945611261738558.Spec : Prop :=
  ∀ n, P9032945611261738558.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P3691535541620629648

`A061885(A001972(n))`
-/

namespace A376313.P3691535541620629648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 (A001972 n).toNat

end

end A376313.P3691535541620629648

namespace A376313

/-- `A061885(A001972(n))` -/
def P3691535541620629648.Spec : Prop :=
  ∀ n, P3691535541620629648.a n = A376313 (n + 2)

end A376313

/-! ## A376313.P3027785455475561994

`filter[A361202(n+1), A118175(#)]`
-/

namespace A376313.P3027785455475561994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118175 (f1 j).toNat = 1) n)

end

end A376313.P3027785455475561994

namespace A376313

/-- `filter[A361202(n+1), A118175(#)]` -/
def P3027785455475561994.Spec : Prop :=
  ∀ n, P3027785455475561994.a n = A376313 (n + 2)

end A376313

/-!
# A376314: Nonnegative numbers k with digital sum d such that any positive integer <= d is the sum of contiguous digits of k.

The programs for A376314, there is no canonical definition to state claims against.
-/

/-! ## A376314.P15065980881322951863

`lt[A055013(n), A258881(A071281(n+3))]`
-/

namespace A376314.P15065980881322951863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258881 (A071281 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376314.P15065980881322951863

/-! ## A376314.P1270074841582927442

`lt[A055013(n), A000005(A022267(n+3))]`
-/

namespace A376314.P1270074841582927442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055013 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A022267 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376314.P1270074841582927442

/-! ## A376314.P5589538847139226612

`lt[A003132(n), A053735(A014591(3*n+4))]`
-/

namespace A376314.P5589538847139226612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A014591 (3 * n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376314.P5589538847139226612

/-! ## A376314.P3125161926659114858

`lt[A003132(n), A109866(A000124(n))]`
-/

namespace A376314.P3125161926659114858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109866 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376314.P3125161926659114858

/-! ## A376314.P7415339283848310713

`eq[A109073(n), A257297(n)]`
-/

namespace A376314.P7415339283848310713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109073 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376314.P7415339283848310713

/-!
# A376316: Number of primes between successive primitive practical numbers. That is, number of primes p such that A267124(n) < p <= A267124(n+1).

The programs for A376316, there is no canonical definition to state claims against.
-/

/-! ## A376316.P13574414250623105341

`Δ[A000720(A267124(n+1))]`
-/

namespace A376316.P13574414250623105341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A267124 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376316.P13574414250623105341

/-! ## A376316.P10009380218791633659

`Δ[A000720(record[A379325(n+1)])]`
-/

namespace A376316.P10009380218791633659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379325 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376316.P10009380218791633659

/-! ## A376316.P9851740710090766566

`Δ[A000720(eq[1, A378454(n+1)]+1)]`
-/

namespace A376316.P9851740710090766566
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378454 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376316.P9851740710090766566

/-! ## A376316.P2621332773029743344

`Δ[A000720(record[A378202(n+1)])]`
-/

namespace A376316.P2621332773029743344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378202 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A376316.P2621332773029743344

/-!
# A376317: a(n) = P(n+1, n+1) where P(n, m) = P(n, m-1) + P(n-1, m + f(m-n)) for n < m with P(n, m) = P(n-1, m) for 0 <= m <= n and P(0, m) = 1 for m >= 0 and where f(n) = [(n mod 4) > 0].

The programs for A376317, there is no canonical definition to state claims against.
-/

/-! ## A376317.P601402852687447427

`A215973(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A376317.P601402852687447427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A215973 n + (1 - a (n - 1))

end

end A376317.P601402852687447427

/-! ## A376317.P7778800675124230297

`A168009(A003600(n))`
-/

namespace A376317.P7778800675124230297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168009 (A003600 n).toNat

end

end A376317.P7778800675124230297

/-!
# A376318: The number of distinct values of x+y+z (mod n) when x*y*z = 1 (mod n).

The programs for A376318, there is no canonical definition to state claims against.
-/

/-! ## A376318.P10964831220422736018

`A173557(n+1)+A124762(A087909(n+2))`
-/

namespace A376318.P10964831220422736018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1) + A124762 (A087909 (n + 2)).toNat

end

end A376318.P10964831220422736018

/-! ## A376318.P10414190036610294800

`A353269(A005248(n))+A003958(n+1)`
-/

namespace A376318.P10414190036610294800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (A005248 n).toNat + A003958 (n + 1)

end

end A376318.P10414190036610294800

/-! ## A376318.P1375206210059114800

`A348747(n+1)+A341994(A001429(n+3))`
-/

namespace A376318.P1375206210059114800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348747 (n + 1) + A341994 (A001429 (n + 3)).toNat

end

end A376318.P1375206210059114800

/-! ## A376318.P4485084401313885045

`A000523(A337204(n+1)+A000523(n+4))`
-/

namespace A376318.P4485084401313885045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A337204 (n + 1) + A000523 (n + 4)).toNat

end

end A376318.P4485084401313885045

/-!
# A376319: A Catalan-like sequence formed by summing the truncation of the terms of the fourth convolution of the Catalan Triangle where the number of row terms are truncated to ceiling((n+4)*log(3)/log(2)) - (n+4).

The programs for A376319, there is no canonical definition to state claims against.
-/

/-! ## A376319.P4849249021100643077

`A070107(A104677(n))`
-/

namespace A376319.P4849249021100643077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070107 (A104677 n).toNat

end

end A376319.P4849249021100643077

/-!
# A376322: (1/4) times obverse convolution (2)**(2^n + 1); see Comments.

The programs for A376322, the canonical program `A376322.P15000761500640788639` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376322 has offset 0).

The definition of A376322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376322.P15000761500640788639

`a(n-1)*A062709(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A376322

/-- `a(n-1)*A062709(n)` -/
def P15000761500640788639.Spec : Prop :=
  ∀ n, P15000761500640788639.a n = A376322 n

theorem P15000761500640788639.correct : P15000761500640788639.Spec := by
  intro n
  simp only [A376322]

end A376322

/-! ## A376322.P15805242433737695915

`∏[2^n+3]/4`
-/

namespace A376322.P15805242433737695915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A376322.P15805242433737695915

namespace A376322

/-- `∏[2^n+3]/4` -/
def P15805242433737695915.Spec : Prop :=
  ∀ n, P15805242433737695915.a n = (A376322 n : ℚ)

end A376322

/-! ## A376322.P16789002088238354070

`∏[2*a(n-1)-3]` with `a(0)=1, a(1)=5`
-/

namespace A376322.P16789002088238354070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  2 * f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376322.P16789002088238354070

namespace A376322

/-- `∏[2*a(n-1)-3]` -/
def P16789002088238354070.Spec : Prop :=
  ∀ n, P16789002088238354070.a n = A376322 n

end A376322

/-! ## A376322.P3899975181776448887

`(2^n+3)*a(n-1)` with `a(0)=1`
-/

namespace A376322.P3899975181776448887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n + 3) * a (n - 1)

end

end A376322.P3899975181776448887

namespace A376322

/-- `(2^n+3)*a(n-1)` -/
def P3899975181776448887.Spec : Prop :=
  ∀ n, (P3899975181776448887.a n : ℤ) = A376322 n

end A376322

/-! ## A376322.P7220795173755949654

`∏[a(n-1)+2^(n-1)]` with `a(0)=1, a(1)=5`
-/

namespace A376322.P7220795173755949654
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376322.P7220795173755949654

namespace A376322

/-- `∏[a(n-1)+2^(n-1)]` -/
def P7220795173755949654.Spec : Prop :=
  ∀ n, P7220795173755949654.a n = (A376322 n : ℚ)

end A376322

/-!
# A376323: (1/5) times obverse convolution (3)**(2^n + 1); see Comments.

The programs for A376323, the canonical program `A376323.P14265089320724040884` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376323 has offset 0).

The definition of A376323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376323.P14265089320724040884

`2*a(n-1)*A052548(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A376323

/-- `2*a(n-1)*A052548(n-1)` -/
def P14265089320724040884.Spec : Prop :=
  ∀ n, P14265089320724040884.a n = A376323 n

theorem P14265089320724040884.correct : P14265089320724040884.Spec := by
  intro n
  simp only [A376323]

end A376323

/-! ## A376323.P13884269842414567289

`∏[2^n+4]/5`
-/

namespace A376323.P13884269842414567289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5

end

end A376323.P13884269842414567289

namespace A376323

/-- `∏[2^n+4]/5` -/
def P13884269842414567289.Spec : Prop :=
  ∀ n, P13884269842414567289.a n = (A376323 n : ℚ)

end A376323

/-! ## A376323.P6789543640694091079

`(2^n+4)*a(n-1)` with `a(0)=1`
-/

namespace A376323.P6789543640694091079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n + 4) * a (n - 1)

end

end A376323.P6789543640694091079

namespace A376323

/-- `(2^n+4)*a(n-1)` -/
def P6789543640694091079.Spec : Prop :=
  ∀ n, (P6789543640694091079.a n : ℤ) = A376323 n

end A376323

/-! ## A376323.P1111783197995655310

`a(n-1)*A140504(n)` with `a(0)=1`
-/

namespace A376323.P1111783197995655310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A140504 n

end

end A376323.P1111783197995655310

namespace A376323

/-- `a(n-1)*A140504(n)` -/
def P1111783197995655310.Spec : Prop :=
  ∀ n, P1111783197995655310.a n = A376323 n

end A376323

/-! ## A376323.P808508337550827846

`a(n-1)*A146528(n)` with `a(0)=1`
-/

namespace A376323.P808508337550827846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A146528 n

end

end A376323.P808508337550827846

namespace A376323

/-- `a(n-1)*A146528(n)` -/
def P808508337550827846.Spec : Prop :=
  ∀ n, P808508337550827846.a n = A376323 n

end A376323

/-!
# A376324: (1/6) times obverse convolution (4)**(2^n + 1); see Comments.

The programs for A376324, the canonical program `A376324.P6294847534775206759` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376324 has offset 0).

The definition of A376324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A376324.P6294847534775206759

`a(n-1)*A168614(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A376324

/-- `a(n-1)*A168614(n)` -/
def P6294847534775206759.Spec : Prop :=
  ∀ n, P6294847534775206759.a n = A376324 n

theorem P6294847534775206759.correct : P6294847534775206759.Spec := by
  intro n
  simp only [A376324]

end A376324

/-! ## A376324.P14299417819971016910

`(2^n+5)*a(n-1)` with `a(0)=1`
-/

namespace A376324.P14299417819971016910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n + 5) * a (n - 1)

end

end A376324.P14299417819971016910

namespace A376324

/-- `(2^n+5)*a(n-1)` -/
def P14299417819971016910.Spec : Prop :=
  ∀ n, (P14299417819971016910.a n : ℤ) = A376324 n

end A376324

/-! ## A376324.P8140664586992212045

`∏[a(n-1)+2^(n-1)]` with `a(0)=1, a(1)=7`
-/

namespace A376324.P8140664586992212045
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376324.P8140664586992212045

namespace A376324

/-- `∏[a(n-1)+2^(n-1)]` -/
def P8140664586992212045.Spec : Prop :=
  ∀ n, P8140664586992212045.a n = (A376324 n : ℚ)

end A376324

/-! ## A376324.P5456576743502510913

`∏[A000051(n)+4]/6`
-/

namespace A376324.P5456576743502510913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 6

end

end A376324.P5456576743502510913

namespace A376324

/-- `∏[A000051(n)+4]/6` -/
def P5456576743502510913.Spec : Prop :=
  ∀ n, P5456576743502510913.a n = (A376324 n : ℚ)

end A376324

/-! ## A376324.P17948057561029224827

`∏[A168614(n)%A188161(n)]`
-/

namespace A376324.P17948057561029224827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168614 n) (A188161 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A376324.P17948057561029224827

namespace A376324

/-- `∏[A168614(n)%A188161(n)]` -/
def P17948057561029224827.Spec : Prop :=
  ∀ n, P17948057561029224827.a n = A376324 n

end A376324

/-!
# A376325: A Catalan-like sequence formed by summing the truncation of the terms of a Catalan Triangle A009766 where the number of row terms are truncated to ceiling((n+3)*log(3)/log(2)) - (n+4).

The programs for A376325, there is no canonical definition to state claims against.
-/

/-! ## A376325.P6826178876486672680

`A169672(A107264(n))+A026522(n+2)`
-/

namespace A376325.P6826178876486672680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169672 (A107264 n).toNat + A026522 (n + 2)

end

end A376325.P6826178876486672680

/-! ## A376325.P12205860167585772223

`A066247(A336713(n))+A026522(n+2)`
-/

namespace A376325.P12205860167585772223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A336713 n).toNat + A026522 (n + 2)

end

end A376325.P12205860167585772223

/-! ## A376325.P1731918174097484815

`A353493(A198916(n))+A026522(n+2)`
-/

namespace A376325.P1731918174097484815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (A198916 n).toNat + A026522 (n + 2)

end

end A376325.P1731918174097484815

/-!
# A376326: Expansion of (1/x) * Series_Reversion( x * (1-x-x^2)^4 ).

The programs for A376326, there is no canonical definition to state claims against.
-/

/-! ## A376326.P305233673959674357

`A052938(A127384(2*(n+1)))-A008615(2*A205557(n+1))`
-/

namespace A376326.P305233673959674357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A127384 (2 * (n + 1))).toNat - A008615 (2 * A205557 (n + 1)).toNat

end

end A376326.P305233673959674357

/-!
# A376327: Expansion of e.g.f. -LambertW(-x/(1-x^2)).

The programs for A376327, there is no canonical definition to state claims against.
-/

/-! ## A376327.P163387112269249251

`A266341(A002110(n))-A080791(n)`
-/

namespace A376327.P163387112269249251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266341 (A002110 n).toNat - A080791 n

end

end A376327.P163387112269249251

/-! ## A376327.P9588709075813604309

`A266341(A002110(n)-A245825(n))`
-/

namespace A376327.P9588709075813604309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266341 (A002110 n - A245825 n).toNat

end

end A376327.P9588709075813604309

/-!
# A376328: G.f. satisfies A(x) = (1 + x*A(x)*(1 + x*A(x)))^5.

The programs for A376328, there is no canonical definition to state claims against.
-/

/-! ## A376328.P2756221223995472404

`A304360(A187116(n+2))-A097110(2*n)`
-/

namespace A376328.P2756221223995472404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304360 (A187116 (n + 2)).toNat - A097110 (2 * n)

end

end A376328.P2756221223995472404

/-!
# A376332: a(n) is the least k such that k - i! is a semiprime for all i from 1 to n.

The programs for A376332, there is no canonical definition to state claims against.
-/

/-! ## A376332.P6884476924725818016

`A248355(A154131(n+1)+A022096(n))`
-/

namespace A376332.P6884476924725818016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248355 (A154131 (n + 1) + A022096 n).toNat

end

end A376332.P6884476924725818016

/-!
# A376333: Numbers m whose symmetric representation of sigma(m), SRS(m), consists of widths 0, 1, and 2.

The programs for A376333, there is no canonical definition to state claims against.
-/

/-! ## A376333.P4261313135646174500

`∩[A238524(n+1), A375611(n+1)]`
-/

namespace A376333.P4261313135646174500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376333.P4261313135646174500

/-!
# A376334: Integer part of the product of three consecutive primes divided by their sum.

The programs for A376334, there is no canonical definition to state claims against.
-/

/-! ## A376334.P3967800987491190644

`A328674(A002378(n)+A000040(n+1)+1)`
-/

namespace A376334.P3967800987491190644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328674 (A002378 n + A000040 (n + 1) + 1).toNat

end

end A376334.P3967800987491190644

/-!
# A376335: Irregular triangle read by rows: T(n,k) = A008949(n-1,k) if 0 <= k <= n - 2 otherwise A008949(n-1,2*n-4-k) if n - 2 <= k <= 2*n - 4.

The programs for A376335, there is no canonical definition to state claims against.
-/

/-! ## A376335.P17223744690671045510

`A179390(A297193(n))`
-/

namespace A376335.P17223744690671045510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179390 (A297193 n).toNat

end

end A376335.P17223744690671045510

/-!
# A376337: Numbers k such that phi(k)/2 + 1 = phi(k + 1) where phi = A000010.

The programs for A376337, there is no canonical definition to state claims against.
-/

/-! ## A376337.P14618009138057452287

`or(1, A191611(n+1))`
-/

namespace A376337.P14618009138057452287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A191611 (n + 1))

end

end A376337.P14618009138057452287

/-! ## A376337.P17950138799006126655

`record[A332212(2*n+3)]`
-/

namespace A376337.P17950138799006126655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332212 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376337.P17950138799006126655

/-! ## A376337.P17699987517634661429

`record[A212953(A051377(n+2))]`
-/

namespace A376337.P17699987517634661429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212953 (A051377 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376337.P17699987517634661429

/-! ## A376337.P3552093527331971747

`∩[A070763(n+1), A209492(n)]`
-/

namespace A376337.P3552093527331971747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376337.P3552093527331971747

/-! ## A376337.P12338254923438710208

`∩[A071114(n+1), A209492(n)]`
-/

namespace A376337.P12338254923438710208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209492 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376337.P12338254923438710208

/-!
# A376338: Numbers k such that phi(k)/2 - 1 = phi(k + 1) where phi = A000010.

The programs for A376338, there is no canonical definition to state claims against.
-/

/-! ## A376338.P7258767965574408380

`eq[A062830(n)+2, A176095(n+1)]`
-/

namespace A376338.P7258767965574408380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062830 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176095 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376338.P7258767965574408380

/-! ## A376338.P14158611569122198179

`eq[A000010(2*(n+2))+2, A000010(n+1)]+1`
-/

namespace A376338.P14158611569122198179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 2)) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A376338.P14158611569122198179

/-! ## A376338.P13171325196864512567

`eq[A023022(A233583(n+1)), A039649(n+1)]`
-/

namespace A376338.P13171325196864512567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376338.P13171325196864512567

/-! ## A376338.P33600941909641290

`eq[A326701(A339890(2*(n+1))), A326842(n)]`
-/

namespace A376338.P33600941909641290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326701 (A339890 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326842 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A376338.P33600941909641290

/-!
# A376341: Position of first appearance of n in A057820, the sequence of first differences of prime-powers, or 0 if n does not appear.

The programs for A376341, there is no canonical definition to state claims against.
-/

/-! ## A376341.P7334927753500112223

`A025528(A290515(n+1))+1`
-/

namespace A376341.P7334927753500112223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025528 (A290515 (n + 1)).toNat + 1

end

end A376341.P7334927753500112223

/-!
# A376342: Positions of 1's in the run-compression (A376305) of the first differences (A076259) of the squarefree numbers (A005117).

The programs for A376342, there is no canonical definition to state claims against.
-/

/-! ## A376342.P17631639209137319919

`eq[1, A376305(n+1)]+1`
-/

namespace A376342.P17631639209137319919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376342.P17631639209137319919

/-! ## A376342.P5121926956463009795

`record[A000027(n+1)/A376305(n+1)]`
-/

namespace A376342.P5121926956463009795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A376305 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376342.P5121926956463009795

/-! ## A376342.P10762102152695262008

`record[A008619(2*n)/A376305(n+1)]`
-/

namespace A376342.P10762102152695262008
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) : ℚ) / (A376305 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376342.P10762102152695262008

/-! ## A376342.P1309484896729138329

`record[A028242(2*n)/A376305(n+1)]`
-/

namespace A376342.P1309484896729138329
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028242 (2 * n) : ℚ) / (A376305 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376342.P1309484896729138329

/-! ## A376342.P11525158642679150628

`record[A003602(2*n+1)/A376305(n+1)]`
-/

namespace A376342.P11525158642679150628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003602 (2 * n + 1) : ℚ) / (A376305 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376342.P11525158642679150628

/-!
# A376343: Positions of twos in the run-compressed (A037201) first differences (A001223) of the primes (A000040).

The programs for A376343, there is no canonical definition to state claims against.
-/

/-! ## A376343.P11980852181933894062

`eq[2, A037201(n+1)]+1`
-/

namespace A376343.P11980852181933894062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376343.P11980852181933894062

/-! ## A376343.P10343945973004364034

`eq[2, A037201(A028310(n))]`
-/

namespace A376343.P10343945973004364034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037201 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376343.P10343945973004364034

/-! ## A376343.P3138502168588862066

`A020725(eq[2, A037201(n+1)])`
-/

namespace A376343.P3138502168588862066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376343.P3138502168588862066

/-! ## A376343.P6385243996113481787

`eq[2, A075526(∑[A333254(n+1)])]+1`
-/

namespace A376343.P6385243996113481787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376343.P6385243996113481787

/-! ## A376343.P11283175396309586180

`record[A000027(2*(n+1))/A037201(n+1)]`
-/

namespace A376343.P11283175396309586180
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (2 * (n + 1)) : ℚ) / (A037201 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376343.P11283175396309586180

/-!
# A376344: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x*log(1-x^2)) ).

The programs for A376344, there is no canonical definition to state claims against.
-/

/-! ## A376344.P8847068666014049728

`A300410(A004110(n))*A375832(n)`
-/

namespace A376344.P8847068666014049728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A004110 n).toNat * A375832 n

end

end A376344.P8847068666014049728

/-! ## A376344.P17352644954637896605

`A153094(A213058(n))*A376345(n)`
-/

namespace A376344.P17352644954637896605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153094 (A213058 n).toNat * A376345 n

end

end A376344.P17352644954637896605

/-! ## A376344.P9027112897720830745

`A210961(A335436(n))*A376345(n)`
-/

namespace A376344.P9027112897720830745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210961 (A335436 n).toNat * A376345 n

end

end A376344.P9027112897720830745

/-! ## A376344.P2512986545944270467

`lcm(A376345(n), A376682(A277098(n+1)))`
-/

namespace A376344.P2512986545944270467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A376345 n) (A376682 (A277098 (n + 1)).toNat)

end

end A376344.P2512986545944270467

/-! ## A376344.P8038535475252132973

`A194285(A172003(2*(n+2)))*A376345(n)`
-/

namespace A376344.P8038535475252132973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A172003 (2 * (n + 2))).toNat * A376345 n

end

end A376344.P8038535475252132973

/-!
# A376345: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x^2) - 1)) ).

The programs for A376345, there is no canonical definition to state claims against.
-/

/-! ## A376345.P12455900692334713720

`A300410(A004110(n))*A375833(n)`
-/

namespace A376345.P12455900692334713720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300410 (A004110 n).toNat * A375833 n

end

end A376345.P12455900692334713720

/-! ## A376345.P2554792837349063909

`A376344(n)/A104607(A242783(n))`
-/

namespace A376345.P2554792837349063909
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376344 n : ℚ) / (A104607 (A242783 n).toNat : ℚ)

end

end A376345.P2554792837349063909

/-! ## A376345.P12869944584351016697

`A376344(n)/A228525(A122736(n))`
-/

namespace A376345.P12869944584351016697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376344 n : ℚ) / (A228525 (A122736 n).toNat : ℚ)

end

end A376345.P12869944584351016697

/-! ## A376345.P11384014068068000699

`A376344(n)/A210961(A335436(n))`
-/

namespace A376345.P11384014068068000699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376344 n : ℚ) / (A210961 (A335436 n).toNat : ℚ)

end

end A376345.P11384014068068000699

/-! ## A376345.P3386919543881847379

`A376344(n)/A330098(A068781(n+1))`
-/

namespace A376345.P3386919543881847379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376344 n : ℚ) / (A330098 (A068781 (n + 1)).toNat : ℚ)

end

end A376345.P3386919543881847379

/-!
# A376346: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x*log(1-x^3)) ).

The programs for A376346, there is no canonical definition to state claims against.
-/

/-! ## A376346.P16540310853048844025

`A066099(A236002(n))*A376347(n)`
-/

namespace A376346.P16540310853048844025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A236002 n).toNat * A376347 n

end

end A376346.P16540310853048844025

/-! ## A376346.P13261134042075306952

`A236000(A057562(n+1))*A376347(n)`
-/

namespace A376346.P13261134042075306952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236000 (A057562 (n + 1)).toNat * A376347 n

end

end A376346.P13261134042075306952

/-! ## A376346.P2852228298173711671

`A335452(A006720(n))*A376347(n)`
-/

namespace A376346.P2852228298173711671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335452 (A006720 n).toNat * A376347 n

end

end A376346.P2852228298173711671

/-! ## A376346.P11878294097369436245

`A194285(A318870(n))*A376347(n)`
-/

namespace A376346.P11878294097369436245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194285 (A318870 n).toNat * A376347 n

end

end A376346.P11878294097369436245

/-! ## A376346.P14987443035274251430

`lcm(A030101(A056971(n)), A375562(n))`
-/

namespace A376346.P14987443035274251430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030101 (A056971 n).toNat) (A375562 n)

end

end A376346.P14987443035274251430

/-!
# A376347: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x^3) - 1)) ).

The programs for A376347, there is no canonical definition to state claims against.
-/

/-! ## A376347.P8715348426974518120

`A376346(n)/A236000(A057562(n+1))`
-/

namespace A376347.P8715348426974518120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376346 n : ℚ) / (A236000 (A057562 (n + 1)).toNat : ℚ)

end

end A376347.P8715348426974518120

/-! ## A376347.P16593935745731078457

`A376346(n)/A377320(A177464(n+2))`
-/

namespace A376347.P16593935745731078457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376346 n : ℚ) / (A377320 (A177464 (n + 2)).toNat : ℚ)

end

end A376347.P16593935745731078457

/-! ## A376347.P11634388999031296581

`A296081(A059618(3*(n+1)))*A375589(n)`
-/

namespace A376347.P11634388999031296581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296081 (A059618 (3 * (n + 1))).toNat * A375589 n

end

end A376347.P11634388999031296581

/-!
# A376348: a(n) is the number of multisets with n primes with which an n-gon with perimeter prime(n) can be formed.

The programs for A376348, there is no canonical definition to state claims against.
-/

/-! ## A376348.P3135130792617683022

`A057427(A323433(n))*A259254(n+3)`
-/

namespace A376348.P3135130792617683022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A323433 n).toNat * A259254 (n + 3)

end

end A376348.P3135130792617683022

/-! ## A376348.P7858337989424134380

`A259254(n+3)+A088126(A320701(n+1))`
-/

namespace A376348.P7858337989424134380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259254 (n + 3) + A088126 (A320701 (n + 1)).toNat

end

end A376348.P7858337989424134380

/-! ## A376348.P7678480134730485855

`A266342(A029974(n+4))+A259254(n+3)`
-/

namespace A376348.P7678480134730485855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266342 (A029974 (n + 4)).toNat + A259254 (n + 3)

end

end A376348.P7678480134730485855

/-! ## A376348.P12681961120798880015

`A057427(A209423(n+1))*A259254(n+3)`
-/

namespace A376348.P12681961120798880015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A209423 (n + 1)).toNat * A259254 (n + 3)

end

end A376348.P12681961120798880015

/-! ## A376348.P11248672306866038342

`A259254(n+3)*A259285(A194438(3*n+5))`
-/

namespace A376348.P11248672306866038342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259254 (n + 3) * A259285 (A194438 (3 * n + 5)).toNat

end

end A376348.P11248672306866038342

/-!
# A376349: Number of isomorphism classes k of groups G of order p*2^n when G contains a unique Sylow p subgroup and the maximal 2^m dividing p-1 is such that 2^m >= 2^n.

The programs for A376349, there is no canonical definition to state claims against.
-/

/-! ## A376349.P8005570311847891903

`∑[A065515(A120732(n))]`
-/

namespace A376349.P8005570311847891903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (A120732 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376349.P8005570311847891903

/-! ## A376349.P7415723746574407073

`∑[A255938(A213100(n))]`
-/

namespace A376349.P7415723746574407073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255938 (A213100 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376349.P7415723746574407073

/-!
# A376350: E.g.f. satisfies A(x) = 1/(1 - x^2*A(x)^2)^(x*A(x)).

The programs for A376350, there is no canonical definition to state claims against.
-/

/-! ## A376350.P1733492241175618583

`A246144(A002144(n+1))*A376351(n)`
-/

namespace A376350.P1733492241175618583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246144 (A002144 (n + 1)).toNat * A376351 n

end

end A376350.P1733492241175618583

/-! ## A376350.P18177165844769829313

`A308186(A275756(n+1))*A376351(n)`
-/

namespace A376350.P18177165844769829313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308186 (A275756 (n + 1)).toNat * A376351 n

end

end A376350.P18177165844769829313

/-! ## A376350.P8001801054769366870

`A065330(A027276(n))*A353226(n)`
-/

namespace A376350.P8001801054769366870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A027276 n).toNat * A353226 n

end

end A376350.P8001801054769366870

/-! ## A376350.P2109229157055610260

`A073203(A375592(n))*A376351(n)`
-/

namespace A376350.P2109229157055610260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073203 (A375592 n).toNat * A376351 n

end

end A376350.P2109229157055610260

/-!
# A376351: E.g.f. satisfies A(x) = exp( x*A(x)*(exp(x^2*A(x)^2) - 1) ).

The programs for A376351, there is no canonical definition to state claims against.
-/

/-! ## A376351.P2721749350260811329

`A376350(n)/A353248(A101268(n))`
-/

namespace A376351.P2721749350260811329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376350 n : ℚ) / (A353248 (A101268 n).toNat : ℚ)

end

end A376351.P2721749350260811329

/-! ## A376351.P10931284043351004073

`A376350(n)/A308186(A275756(n+1))`
-/

namespace A376351.P10931284043351004073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376350 n : ℚ) / (A308186 (A275756 (n + 1)).toNat : ℚ)

end

end A376351.P10931284043351004073

/-! ## A376351.P12818416032778213297

`A138108(A123906(n+1))`
-/

namespace A376351.P12818416032778213297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138108 (A123906 (n + 1)).toNat

end

end A376351.P12818416032778213297

/-! ## A376351.P18066614023270334772

`lcm(A084556(A375795(n)), A357966(n))`
-/

namespace A376351.P18066614023270334772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A084556 (A375795 n).toNat) (A357966 n)

end

end A376351.P18066614023270334772

/-!
# A376354: Numbers that end in 0 when written in base of triangular numbers (cf. A000462).

The programs for A376354, the canonical program `A376354.P18229745816785603977` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376354 has offset 1).

The definition of A376354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376354.P18229745816785603977

`lt[2, or(2, a(A002260(n+1)-1))]` with `a(0)=1, a(1)=2, a(2)=-2`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A376354

/-- `lt[2, or(2, a(A002260(n+1)-1))]` -/
def P18229745816785603977.Spec : Prop :=
  ∀ n, (P18229745816785603977.a n : ℤ) = A376354 (n + 1)

theorem P18229745816785603977.correct : P18229745816785603977.Spec := by
  intro n
  simp only [A376354, Nat.add_sub_cancel]

end A376354

/-! ## A376354.P12980567162790389447

`lt[2, A256910(n)]`
-/

namespace A376354.P12980567162790389447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A376354.P12980567162790389447

namespace A376354

/-- `lt[2, A256910(n)]` -/
def P12980567162790389447.Spec : Prop :=
  ∀ n, (P12980567162790389447.a n : ℤ) = A376354 (n + 1)

end A376354

/-! ## A376354.P5732110600372789443

`A183234(n+1)+1`
-/

namespace A376354.P5732110600372789443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183234 (n + 1) + 1

end

end A376354.P5732110600372789443

namespace A376354

/-- `A183234(n+1)+1` -/
def P5732110600372789443.Spec : Prop :=
  ∀ n, P5732110600372789443.a n = A376354 (n + 1)

end A376354

/-! ## A376354.P7042259299885720668

`A020725(A183234(n+1))`
-/

namespace A376354.P7042259299885720668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A183234 (n + 1)).toNat

end

end A376354.P7042259299885720668

namespace A376354

/-- `A020725(A183234(n+1))` -/
def P7042259299885720668.Spec : Prop :=
  ∀ n, P7042259299885720668.a n = A376354 (n + 1)

end A376354

/-!
# A376355: Numbers that end in 1 when written in base of triangular numbers (cf. A000462).

The programs for A376355, the canonical program `A376355.P7755162109576139838` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376355 has offset 1).

The definition of A376355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376355.P7755162109576139838

`eq[2, a(A002262(n))!]` with `a(0)=1, a(1)=2, a(2)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A376355

/-- `eq[2, a(A002262(n))!]` -/
def P7755162109576139838.Spec : Prop :=
  ∀ n, (P7755162109576139838.a n : ℤ) = A376355 (n + 1)

theorem P7755162109576139838.correct : P7755162109576139838.Spec := by
  intro n
  simp only [A376355, Nat.add_sub_cancel]

end A376355

/-! ## A376355.P2578581140263082962

`eq[1, A256910(n)]`
-/

namespace A376355.P2578581140263082962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376355.P2578581140263082962

namespace A376355

/-- `eq[1, A256910(n)]` -/
def P2578581140263082962.Spec : Prop :=
  ∀ n, (P2578581140263082962.a n : ℤ) = A376355 (n + 1)

end A376355

/-! ## A376355.P7019204468890356251

`lt[A256910(n+1), 2]+1`
-/

namespace A376355.P7019204468890356251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A376355.P7019204468890356251

namespace A376355

/-- `lt[A256910(n+1), 2]+1` -/
def P7019204468890356251.Spec : Prop :=
  ∀ n, (P7019204468890356251.a n : ℤ) = A376355 (n + 1)

end A376355

/-! ## A376355.P12299810823843517808

`lt[A163355(A256910(n)+2), 3]`
-/

namespace A376355.P12299810823843517808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 (A256910 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A376355.P12299810823843517808

namespace A376355

/-- `lt[A163355(A256910(n)+2), 3]` -/
def P12299810823843517808.Spec : Prop :=
  ∀ n, (P12299810823843517808.a n : ℤ) = A376355 (n + 1)

end A376355

/-! ## A376355.P76163322021744281

`lt[A023443(n)*A256910(n), n]`
-/

namespace A376355.P76163322021744281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n * A256910 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A376355.P76163322021744281

namespace A376355

/-- `lt[A023443(n)*A256910(n), n]` -/
def P76163322021744281.Spec : Prop :=
  ∀ n, (P76163322021744281.a n : ℤ) = A376355 (n + 1)

end A376355

/-! ## A376355.P2813009901478992471

`record[A000027(n+1)-A256910(n)]`
-/

namespace A376355.P2813009901478992471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376355.P2813009901478992471

namespace A376355

/-- `record[A000027(n+1)-A256910(n)]` -/
def P2813009901478992471.Spec : Prop :=
  ∀ n, P2813009901478992471.a n = A376355 (n + 1)

end A376355

/-!
# A376356: Positions of numbers in A000462 that end in 2.

The programs for A376356, the canonical program `A376356.P4105760595979517289` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376356 has offset 1).

The definition of A376356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2834 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376356.P4105760595979517289

`eq[1, 2-a(A002262(n))]` with `a(0)=6, a(1)=3, a(2)=1, a(3)=0, a(4)=-5`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A376356

/-- `eq[1, 2-a(A002262(n))]` -/
def P4105760595979517289.Spec : Prop :=
  ∀ n, (P4105760595979517289.a n : ℤ) = A376356 (n + 1)

theorem P4105760595979517289.correct : P4105760595979517289.Spec := by
  intro n
  simp only [A376356, Nat.add_sub_cancel]

end A376356

/-! ## A376356.P2045058596781896834

`eq[A054977(n), A242284(n+2)]+2`
-/

namespace A376356.P2045058596781896834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242284 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A376356.P2045058596781896834

namespace A376356

/-- `eq[A054977(n), A242284(n+2)]+2` -/
def P2045058596781896834.Spec : Prop :=
  ∀ n, (P2045058596781896834.a n : ℤ) = A376356 (n + 1)

end A376356

/-! ## A376356.P8337162236099478301

`eq[2, A256910(n)]`
-/

namespace A376356.P8337162236099478301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376356.P8337162236099478301

namespace A376356

/-- `eq[2, A256910(n)]` -/
def P8337162236099478301.Spec : Prop :=
  ∀ n, (P8337162236099478301.a n : ℤ) = A376356 (n + 1)

end A376356

/-! ## A376356.P12287493131502694611

`lt[A256911(n), A057945(n)]`
-/

namespace A376356.P12287493131502694611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256911 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376356.P12287493131502694611

namespace A376356

/-- `lt[A256911(n), A057945(n)]` -/
def P12287493131502694611.Spec : Prop :=
  ∀ n, (P12287493131502694611.a n : ℤ) = A376356 (n + 1)

end A376356

/-! ## A376356.P971236941975606968

`lt[A057945(1-A256910(n)+n), A057945(n)]`
-/

namespace A376356.P971236941975606968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (1 - A256910 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376356.P971236941975606968

namespace A376356

/-- `lt[A057945(1-A256910(n)+n), A057945(n)]` -/
def P971236941975606968.Spec : Prop :=
  ∀ n, (P971236941975606968.a n : ℤ) = A376356 (n + 1)

end A376356

/-!
# A376357: Positions of numbers in A007961 that end in 0.

The programs for A376357, the canonical program `A376357.P16342717570296244240` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376357 has offset 1).

The definition of A376357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3285 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376357.P16342717570296244240

`lt[4, (n-1)*a(n-A000196(n)²)]` with `a(0)=3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A376357

/-- `lt[4, (n-1)*a(n-A000196(n)²)]` -/
def P16342717570296244240.Spec : Prop :=
  ∀ n, (P16342717570296244240.a n : ℤ) = A376357 (n + 1)

theorem P16342717570296244240.correct : P16342717570296244240.Spec := by
  intro n
  simp only [A376357, Nat.add_sub_cancel]

end A376357

/-! ## A376357.P7390455271657053310

`eq[1, A062108(a(A053186(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A376357.P7390455271657053310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A062108 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376357.P7390455271657053310

namespace A376357

/-- `eq[1, A062108(a(A053186(n)))]` -/
def P7390455271657053310.Spec : Prop :=
  ∀ n, (P7390455271657053310.a n : ℤ) = A376357 (n + 1)

end A376357

/-! ## A376357.P12009008344126072846

`eq[1, A110654(a(A053186(n)))]` with `a(0)=2, a(1)=0`
-/

namespace A376357.P12009008344126072846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  A110654 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376357.P12009008344126072846

namespace A376357

/-- `eq[1, A110654(a(A053186(n)))]` -/
def P12009008344126072846.Spec : Prop :=
  ∀ n, (P12009008344126072846.a n : ℤ) = A376357 (n + 1)

end A376357

/-!
# A376358: Positions of numbers in A007961 that end in 1.

The programs for A376358, the canonical program `A376358.P14573369327161220260` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376358 has offset 1).

The definition of A376358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2490 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376358.P13283150534891334417

`∩[A257046(n+1), A380175(n+1)]`
-/

namespace A376358.P13283150534891334417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380175 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376358.P13283150534891334417

namespace A376358

/-- `∩[A257046(n+1), A380175(n+1)]` -/
def P13283150534891334417.Spec : Prop :=
  ∀ n, (P13283150534891334417.a n : ℤ) = A376358 (n + 1)

end A376358

/-! ## A376358.P14573369327161220260

`eq[1, A062108(a(A053186(n)))]` with `a(0)=0, a(1)=1, a(2)=0`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A376358

/-- `eq[1, A062108(a(A053186(n)))]` -/
def P14573369327161220260.Spec : Prop :=
  ∀ n, (P14573369327161220260.a n : ℤ) = A376358 (n + 1)

theorem P14573369327161220260.correct : P14573369327161220260.Spec := by
  intro n
  simp only [A376358, Nat.add_sub_cancel]

end A376358

/-! ## A376358.P5790268424377929786

`eq[1, A110654(a(A053186(n)))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A376358.P5790268424377929786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  A110654 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376358.P5790268424377929786

namespace A376358

/-- `eq[1, A110654(a(A053186(n)))]` -/
def P5790268424377929786.Spec : Prop :=
  ∀ n, (P5790268424377929786.a n : ℤ) = A376358 (n + 1)

end A376358

/-! ## A376358.P17183801054944066160

`eq[2, A008619(a(A053186(n)))]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A376358.P17183801054944066160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  A008619 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376358.P17183801054944066160

namespace A376358

/-- `eq[2, A008619(a(A053186(n)))]` -/
def P17183801054944066160.Spec : Prop :=
  ∀ n, (P17183801054944066160.a n : ℤ) = A376358 (n + 1)

end A376358

/-! ## A376358.P5801034276086257352

`eq[1, A225407(a(A053186(n)))]` with `a(0)=2, a(1)=1, a(2)=2`
-/

namespace A376358.P5801034276086257352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 2] fun n f2 =>
  A225407 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376358.P5801034276086257352

namespace A376358

/-- `eq[1, A225407(a(A053186(n)))]` -/
def P5801034276086257352.Spec : Prop :=
  ∀ n, (P5801034276086257352.a n : ℤ) = A376358 (n + 1)

end A376358

/-!
# A376359: Positions of numbers in A007961 that end in 2.

The programs for A376359, the canonical program `A376359.P14643456842463236531` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376359 has offset 1).

The definition of A376359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376359.P15499697322504856163

`eq[1, A111755(n+1)]+1`
-/

namespace A376359.P15499697322504856163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376359.P15499697322504856163

namespace A376359

/-- `eq[1, A111755(n+1)]+1` -/
def P15499697322504856163.Spec : Prop :=
  ∀ n, (P15499697322504856163.a n : ℤ) = A376359 (n + 1)

end A376359

/-! ## A376359.P10922306251369398272

`eq[1, A111755(A028310(n))]`
-/

namespace A376359.P10922306251369398272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111755 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376359.P10922306251369398272

namespace A376359

/-- `eq[1, A111755(A028310(n))]` -/
def P10922306251369398272.Spec : Prop :=
  ∀ n, (P10922306251369398272.a n : ℤ) = A376359 (n + 1)

end A376359

/-! ## A376359.P9493836048566940471

`eq[1, A225407(a(A053186(n)))]` with `a(0)=2, a(1)=2, a(2)=1, a(3)=7`
-/

namespace A376359.P9493836048566940471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 1, 7] fun n f2 =>
  A225407 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376359.P9493836048566940471

namespace A376359

/-- `eq[1, A225407(a(A053186(n)))]` -/
def P9493836048566940471.Spec : Prop :=
  ∀ n, (P9493836048566940471.a n : ℤ) = A376359 (n + 1)

end A376359

/-! ## A376359.P14643456842463236531

`eq[1, A062108(a(A053186(n)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=25`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A376359

/-- `eq[1, A062108(a(A053186(n)))]` -/
def P14643456842463236531.Spec : Prop :=
  ∀ n, (P14643456842463236531.a n : ℤ) = A376359 (n + 1)

theorem P14643456842463236531.correct : P14643456842463236531.Spec := by
  intro n
  simp only [A376359, Nat.add_sub_cancel]

end A376359

/-! ## A376359.P1054348359313900769

`eq[1, A110654(a(A053186(n)))]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=25`
-/

namespace A376359.P1054348359313900769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 25] fun n f2 =>
  A110654 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376359.P1054348359313900769

namespace A376359

/-- `eq[1, A110654(a(A053186(n)))]` -/
def P1054348359313900769.Spec : Prop :=
  ∀ n, (P1054348359313900769.a n : ℤ) = A376359 (n + 1)

end A376359

/-! ## A376359.P6384515988683328393

`eq[2, A008619(a(A053186(n)))]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=29`
-/

namespace A376359.P6384515988683328393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 29] fun n f2 =>
  A008619 (f2 (A053186 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376359.P6384515988683328393

namespace A376359

/-- `eq[2, A008619(a(A053186(n)))]` -/
def P6384515988683328393.Spec : Prop :=
  ∀ n, (P6384515988683328393.a n : ℤ) = A376359 (n + 1)

end A376359

/-! ## A376359.P18148227692525146358

`eq[2, A256914(n)]`
-/

namespace A376359.P18148227692525146358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376359.P18148227692525146358

namespace A376359

/-- `eq[2, A256914(n)]` -/
def P18148227692525146358.Spec : Prop :=
  ∀ n, (P18148227692525146358.a n : ℤ) = A376359 (n + 1)

end A376359

/-!
# A376360: Positions of numbers in A007961 that end in 3.

The programs for A376360, the canonical program `A376360.P17607441378898775448` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376360 has offset 1).

The definition of A376360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1911 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A376360.P4114013522895443700

`eq[2, A111755(n+1)]+1`
-/

namespace A376360.P4114013522895443700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A376360.P4114013522895443700

namespace A376360

/-- `eq[2, A111755(n+1)]+1` -/
def P4114013522895443700.Spec : Prop :=
  ∀ n, (P4114013522895443700.a n : ℤ) = A376360 (n + 1)

end A376360

/-! ## A376360.P17607441378898775448

`lt[1, floor(a(A053186(n)))]` with `a(0)=-1, a(1)=1, a(2)=1, a(3)=7`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A376360

/-- `lt[1, floor(a(A053186(n)))]` -/
def P17607441378898775448.Spec : Prop :=
  ∀ n, (P17607441378898775448.a n : ℤ) = A376360 (n + 1)

theorem P17607441378898775448.correct : P17607441378898775448.Spec := by
  intro n
  simp only [A376360, Nat.add_sub_cancel]

end A376360

/-! ## A376360.P6948632527761613142

`eq[2, A111755(A028310(n))]`
-/

namespace A376360.P6948632527761613142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111755 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376360.P6948632527761613142

namespace A376360

/-- `eq[2, A111755(A028310(n))]` -/
def P6948632527761613142.Spec : Prop :=
  ∀ n, (P6948632527761613142.a n : ℤ) = A376360 (n + 1)

end A376360

/-! ## A376360.P9974246253769496208

`eq[0, a(A053186(n))%A048760(n)]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A376360.P9974246253769496208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f2 =>
  Int.tmod (f2 (A053186 n).toNat) (A048760 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376360.P9974246253769496208

namespace A376360

/-- `eq[0, a(A053186(n))%A048760(n)]` -/
def P9974246253769496208.Spec : Prop :=
  ∀ n, (P9974246253769496208.a n : ℤ) = A376360 (n + 1)

end A376360

/-! ## A376360.P12571717181985875023

`eq[3, A256914(n)]`
-/

namespace A376360.P12571717181985875023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A376360.P12571717181985875023

namespace A376360

/-- `eq[3, A256914(n)]` -/
def P12571717181985875023.Spec : Prop :=
  ∀ n, (P12571717181985875023.a n : ℤ) = A376360 (n + 1)

end A376360

/-!
# A376361: The number of distinct prime factors of the powerful numbers.

The programs for A376361, there is no canonical definition to state claims against.
-/

/-! ## A376361.P6569248609433614372

`A001221(A001694(n+1))`
-/

namespace A376361.P6569248609433614372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001694 (n + 1)).toNat

end

end A376361.P6569248609433614372

/-! ## A376361.P10764504237933489805

`∑{e}[A084371(n+1), #]`
-/

namespace A376361.P10764504237933489805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A376361.P10764504237933489805

/-! ## A376361.P7304157327201931683

`∑{e}[∏{p}[A369429(n+1), #], #]`
-/

namespace A376361.P7304157327201931683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369429 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A376361.P7304157327201931683

/-! ## A376361.P18356333685700148188

`A001221(A084371(n+1))`
-/

namespace A376361.P18356333685700148188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A084371 (n + 1)).toNat

end

end A376361.P18356333685700148188

/-! ## A376361.P17070099886922352808

`A001221(A369429(n+1))`
-/

namespace A376361.P17070099886922352808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A369429 (n + 1)).toNat

end

end A376361.P17070099886922352808

/-! ## A376361.P12759790529896461592

`A001221(A369430(n+1))`
-/

namespace A376361.P12759790529896461592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A369430 (n + 1)).toNat

end

end A376361.P12759790529896461592

/-! ## A376361.P117613287625102538

`A001222(A001694(n+1)/A306458(n+1))`
-/

namespace A376361.P117613287625102538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A001694 (n + 1) : ℚ) / (A306458 (n + 1) : ℚ))).toNat

end

end A376361.P117613287625102538

/-! ## A376361.P2878638985930050879

`A001221(A306458(n+1))`
-/

namespace A376361.P2878638985930050879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A306458 (n + 1)).toNat

end

end A376361.P2878638985930050879

/-! ## A376361.P1106888560603296970

`A001221(A224866(n+1)-1)`
-/

namespace A376361.P1106888560603296970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A224866 (n + 1) - 1).toNat

end

end A376361.P1106888560603296970

/-! ## A376361.P9550095809322763878

`A383160(A034444(A001694(n+1))²)`
-/

namespace A376361.P9550095809322763878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383160 (A034444 (A001694 (n + 1)).toNat ^ 2).toNat

end

end A376361.P9550095809322763878

/-! ## A376361.P17188780882692762020

`A056170(2*A001694(n+1))`
-/

namespace A376361.P17188780882692762020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (2 * A001694 (n + 1)).toNat

end

end A376361.P17188780882692762020

/-! ## A376361.P3344866447295277475

`A056170(A001694(n+1)+A001694(n+1))`
-/

namespace A376361.P3344866447295277475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A001694 (n + 1) + A001694 (n + 1)).toNat

end

end A376361.P3344866447295277475

/-!
# A376362: The number of unitary divisors that are squares of primes applied to the powerful numbers.

The programs for A376362, there is no canonical definition to state claims against.
-/

/-! ## A376362.P9015527979240270224

`A369427(A001694(n+1))`
-/

namespace A376362.P9015527979240270224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A001694 (n + 1)).toNat

end

end A376362.P9015527979240270224

/-! ## A376362.P83289798931073161

`A056169(A369430(n+1))`
-/

namespace A376362.P83289798931073161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A369430 (n + 1)).toNat

end

end A376362.P83289798931073161

/-! ## A376362.P17779300681558691569

`∑{e}[A001694(n+1), A019590(#)]`
-/

namespace A376362.P17779300681558691569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A019590 (Nat.factorization (f1 n).natAbs p)

end

end A376362.P17779300681558691569

/-! ## A376362.P11546117684917062778

`∑{e}[A001694(n+1), A084928(#)]`
-/

namespace A376362.P11546117684917062778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A084928 (Nat.factorization (f1 n).natAbs p)

end

end A376362.P11546117684917062778

/-! ## A376362.P10308097802222106038

`∑{e}[A001694(n+1), A240465(#)]`
-/

namespace A376362.P10308097802222106038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A240465 (Nat.factorization (f1 n).natAbs p)

end

end A376362.P10308097802222106038

/-! ## A376362.P17759291185028403742

`A056169(A306458(n+1))`
-/

namespace A376362.P17759291185028403742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056169 (A306458 (n + 1)).toNat

end

end A376362.P17759291185028403742

/-! ## A376362.P7007766697399864699

`A369427(A369430(n+1)²)`
-/

namespace A376362.P7007766697399864699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A369430 (n + 1) ^ 2).toNat

end

end A376362.P7007766697399864699

/-! ## A376362.P11710186958526743389

`A369427(A369430(n+1)^2)`
-/

namespace A376362.P11710186958526743389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369427 (A369430 (n + 1) ^ 2).toNat

end

end A376362.P11710186958526743389

/-!
# A376363: The number of distinct prime factors of the cubefull numbers.

The programs for A376363, there is no canonical definition to state claims against.
-/

/-! ## A376363.P15743535660946002912

`A001221(A036966(n+1))`
-/

namespace A376363.P15743535660946002912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A036966 (n + 1)).toNat

end

end A376363.P15743535660946002912

/-! ## A376363.P4438691169382786327

`∑{e}[A362972(n+1), #]`
-/

namespace A376363.P4438691169382786327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362972 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A376363.P4438691169382786327

/-! ## A376363.P3402254253159001495

`A001221(A362972(n+1))`
-/

namespace A376363.P3402254253159001495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A362972 (n + 1)).toNat

end

end A376363.P3402254253159001495

/-! ## A376363.P2797235313886867255

`A376361(A371185(n+1))`
-/

namespace A376363.P2797235313886867255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376361 (A371185 (n + 1)).toNat

end

end A376363.P2797235313886867255

/-! ## A376363.P10159951036248285182

`∑{p}[A036966(n+1), A000688(#)]`
-/

namespace A376363.P10159951036248285182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000688 p

end

end A376363.P10159951036248285182

/-! ## A376363.P13962676878130565943

`∑{p}[A036966(n+1), A001065(#)]`
-/

namespace A376363.P13962676878130565943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001065 p

end

end A376363.P13962676878130565943

/-! ## A376363.P1069962190059354128

`∑{p}[A036966(n+1), A003415(#)]`
-/

namespace A376363.P1069962190059354128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A376363.P1069962190059354128

/-! ## A376363.P4523809225713370440

`∑{p}[A036966(n+1), A362611(#)]`
-/

namespace A376363.P4523809225713370440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A362611 p

end

end A376363.P4523809225713370440

/-! ## A376363.P10606385883824039306

`A295659(2*A036966(n+1))`
-/

namespace A376363.P10606385883824039306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (2 * A036966 (n + 1)).toNat

end

end A376363.P10606385883824039306

/-! ## A376363.P719666566871643533

`A295659(A036966(n+1)+A036966(n+1))`
-/

namespace A376363.P719666566871643533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A036966 (n + 1) + A036966 (n + 1)).toNat

end

end A376363.P719666566871643533

/-!
# A376364: The number of unitary divisors that are cubes of primes applied to the cubefull numbers.

The programs for A376364, there is no canonical definition to state claims against.
-/

/-! ## A376364.P1581007122558793981

`A295883(A036966(n+1))`
-/

namespace A376364.P1581007122558793981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (A036966 (n + 1)).toNat

end

end A376364.P1581007122558793981

/-! ## A376364.P16411188758400689150

`A295883(∪[A036967(n+1), A376173(n+1)])`
-/

namespace A376364.P16411188758400689150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295883 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A376364.P16411188758400689150

/-! ## A376364.P9305611001090312655

`A366078(A036966(n+1)/A362972(n+1))`
-/

namespace A376364.P9305611001090312655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366078 (SequenceMachineLib.roundAway ((A036966 (n + 1) : ℚ) / (A362972 (n + 1) : ℚ))).toNat

end

end A376364.P9305611001090312655

/-! ## A376364.P4177638593678704919

`A268374(A121537(3*n+5)+n)`
-/

namespace A376364.P4177638593678704919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268374 (A121537 (3 * n + 5) + (n : ℤ)).toNat

end

end A376364.P4177638593678704919

/-! ## A376364.P2128031462251033330

`A396865(A142845(n+2))`
-/

namespace A376364.P2128031462251033330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396865 (A142845 (n + 2)).toNat

end

end A376364.P2128031462251033330

/-!
# A376365: The number of distinct prime factors of the cubefree numbers.

The programs for A376365, the canonical program `A376365.P17778813821740377865` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376365 has offset 1).

The definition of A376365 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A004709, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376365.P17778813821740377865

`A001221(A004709(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A376365

/-- `A001221(A004709(n+1))` -/
def P17778813821740377865.Spec : Prop :=
  ∀ n, P17778813821740377865.a n = A376365 (n + 1)

theorem P17778813821740377865.correct : P17778813821740377865.Spec := by
  intro n
  simp only [A376365, Nat.add_sub_cancel]

end A376365

/-! ## A376365.P1685844876200429039

`log2(A366536(n+1))`
-/

namespace A376365.P1685844876200429039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A366536 (n + 1) : ℝ)

end

end A376365.P1685844876200429039

namespace A376365

/-- `log2(A366536(n+1))` -/
def P1685844876200429039.Spec : Prop :=
  ∀ n, P1685844876200429039.a n = (A376365 (n + 1) : ℝ)

end A376365

/-! ## A376365.P7589948204282213465

`∑{e}[A358040(n+1), #]`
-/

namespace A376365.P7589948204282213465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A376365.P7589948204282213465

namespace A376365

/-- `∑{e}[A358040(n+1), #]` -/
def P7589948204282213465.Spec : Prop :=
  ∀ n, (P7589948204282213465.a n : ℤ) = A376365 (n + 1)

end A376365

/-! ## A376365.P11128923248365178256

`∑{e}[A382888(n+1), #]`
-/

namespace A376365.P11128923248365178256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382888 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A376365.P11128923248365178256

namespace A376365

/-- `∑{e}[A382888(n+1), #]` -/
def P11128923248365178256.Spec : Prop :=
  ∀ n, (P11128923248365178256.a n : ℤ) = A376365 (n + 1)

end A376365

/-! ## A376365.P10357427275710618050

`A001221(A277803(n+1))`
-/

namespace A376365.P10357427275710618050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A277803 (n + 1)).toNat

end

end A376365.P10357427275710618050

namespace A376365

/-- `A001221(A277803(n+1))` -/
def P10357427275710618050.Spec : Prop :=
  ∀ n, P10357427275710618050.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P634982619889331694

`A001222(A358040(n+1))`
-/

namespace A376365.P634982619889331694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A358040 (n + 1)).toNat

end

end A376365.P634982619889331694

namespace A376365

/-- `A001222(A358040(n+1))` -/
def P634982619889331694.Spec : Prop :=
  ∀ n, P634982619889331694.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P11268431062382899346

`A001221(A382888(n+1))`
-/

namespace A376365.P11268431062382899346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A382888 (n + 1)).toNat

end

end A376365.P11268431062382899346

namespace A376365

/-- `A001221(A382888(n+1))` -/
def P11268431062382899346.Spec : Prop :=
  ∀ n, P11268431062382899346.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P17790264257230995826

`A368779(n+1)-A376366(n+1)`
-/

namespace A376365.P17790264257230995826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368779 (n + 1) - A376366 (n + 1)

end

end A376365.P17790264257230995826

namespace A376365

/-- `A368779(n+1)-A376366(n+1)` -/
def P17790264257230995826.Spec : Prop :=
  ∀ n, P17790264257230995826.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P548156613234478993

`A001222(A004709(n+1))-A376366(n+1)`
-/

namespace A376365.P548156613234478993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004709 (n + 1)).toNat - A376366 (n + 1)

end

end A376365.P548156613234478993

namespace A376365

/-- `A001222(A004709(n+1))-A376366(n+1)` -/
def P548156613234478993.Spec : Prop :=
  ∀ n, P548156613234478993.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P16644000133852670855

`A366078(A004709(2*n+1-n))`
-/

namespace A376365.P16644000133852670855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366078 (A004709 (2 * n + 1 - n)).toNat

end

end A376365.P16644000133852670855

namespace A376365

/-- `A366078(A004709(2*n+1-n))` -/
def P16644000133852670855.Spec : Prop :=
  ∀ n, P16644000133852670855.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P16775142981049498996

`A001221(A277802(n+1))`
-/

namespace A376365.P16775142981049498996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A277802 (n + 1)).toNat

end

end A376365.P16775142981049498996

namespace A376365

/-- `A001221(A277802(n+1))` -/
def P16775142981049498996.Spec : Prop :=
  ∀ n, P16775142981049498996.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P1015007947998421306

`A001221(A392365(n+1))`
-/

namespace A376365.P1015007947998421306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A392365 (n + 1)).toNat

end

end A376365.P1015007947998421306

namespace A376365

/-- `A001221(A392365(n+1))` -/
def P1015007947998421306.Spec : Prop :=
  ∀ n, P1015007947998421306.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P12027243967345265424

`A144095(A004709(n+1)²)`
-/

namespace A376365.P12027243967345265424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144095 (A004709 (n + 1) ^ 2).toNat

end

end A376365.P12027243967345265424

namespace A376365

/-- `A144095(A004709(n+1)²)` -/
def P12027243967345265424.Spec : Prop :=
  ∀ n, P12027243967345265424.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P1810432746047701385

`A293439(A004709(n+1)²)`
-/

namespace A376365.P1810432746047701385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (A004709 (n + 1) ^ 2).toNat

end

end A376365.P1810432746047701385

namespace A376365

/-- `A293439(A004709(n+1)²)` -/
def P1810432746047701385.Spec : Prop :=
  ∀ n, P1810432746047701385.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P12412309242985723107

`A144095(A004709(n+1)*A004709(n+1))`
-/

namespace A376365.P12412309242985723107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144095 (A004709 (n + 1) * A004709 (n + 1)).toNat

end

end A376365.P12412309242985723107

namespace A376365

/-- `A144095(A004709(n+1)*A004709(n+1))` -/
def P12412309242985723107.Spec : Prop :=
  ∀ n, P12412309242985723107.a n = A376365 (n + 1)

end A376365

/-! ## A376365.P16966867375417623589

`A293439(A004709(n+1)*A004709(n+1))`
-/

namespace A376365.P16966867375417623589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (A004709 (n + 1) * A004709 (n + 1)).toNat

end

end A376365.P16966867375417623589

namespace A376365

/-- `A293439(A004709(n+1)*A004709(n+1))` -/
def P16966867375417623589.Spec : Prop :=
  ∀ n, P16966867375417623589.a n = A376365 (n + 1)

end A376365

/-!
# A376366: The number of non-unitary prime divisors of the cubefree numbers.

The programs for A376366, the canonical program `A376366.P16346461924270472844` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A376366 has offset 1).

The definition of A376366 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368779, A376365, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A376366.P3131325830412744588

`log2(A382419(n+1))`
-/

namespace A376366.P3131325830412744588
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A382419 (n + 1) : ℝ)

end

end A376366.P3131325830412744588

namespace A376366

/-- `log2(A382419(n+1))` -/
def P3131325830412744588.Spec : Prop :=
  ∀ n, P3131325830412744588.a n = (A376366 (n + 1) : ℝ)

end A376366

/-! ## A376366.P16346461924270472844

`A368779(n+1)-A376365(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A376366

/-- `A368779(n+1)-A376365(n+1)` -/
def P16346461924270472844.Spec : Prop :=
  ∀ n, P16346461924270472844.a n = A376366 (n + 1)

theorem P16346461924270472844.correct : P16346461924270472844.Spec := by
  intro n
  simp only [A376366, Nat.add_sub_cancel]

end A376366

/-! ## A376366.P9582369197462471312

`A046660(A004709(n+1))`
-/

namespace A376366.P9582369197462471312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (A004709 (n + 1)).toNat

end

end A376366.P9582369197462471312

namespace A376366

/-- `A046660(A004709(n+1))` -/
def P9582369197462471312.Spec : Prop :=
  ∀ n, P9582369197462471312.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P5427348703467491447

`val(A358040(n+1), 3)`
-/

namespace A376366.P5427348703467491447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A358040 (n + 1)).toNat 3

end

end A376366.P5427348703467491447

namespace A376366

/-- `val(A358040(n+1), 3)` -/
def P5427348703467491447.Spec : Prop :=
  ∀ n, (P5427348703467491447.a n : ℤ) = A376366 (n + 1)

end A376366

/-! ## A376366.P16820979338272795881

`∑{e}[A382890(n+1), #]`
-/

namespace A376366.P16820979338272795881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382890 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A376366.P16820979338272795881

namespace A376366

/-- `∑{e}[A382890(n+1), #]` -/
def P16820979338272795881.Spec : Prop :=
  ∀ n, (P16820979338272795881.a n : ℤ) = A376366 (n + 1)

end A376366

/-! ## A376366.P14996557414087650212

`A007949(A358040(n+1))`
-/

namespace A376366.P14996557414087650212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A358040 (n + 1)).toNat

end

end A376366.P14996557414087650212

namespace A376366

/-- `A007949(A358040(n+1))` -/
def P14996557414087650212.Spec : Prop :=
  ∀ n, P14996557414087650212.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P15715540483919742396

`A001221(A382889(n+1))`
-/

namespace A376366.P15715540483919742396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A382889 (n + 1)).toNat

end

end A376366.P15715540483919742396

namespace A376366

/-- `A001221(A382889(n+1))` -/
def P15715540483919742396.Spec : Prop :=
  ∀ n, P15715540483919742396.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P11156102343503717136

`A001221(A382890(n+1))`
-/

namespace A376366.P11156102343503717136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A382890 (n + 1)).toNat

end

end A376366.P11156102343503717136

namespace A376366

/-- `A001221(A382890(n+1))` -/
def P11156102343503717136.Spec : Prop :=
  ∀ n, P11156102343503717136.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P16160704981564106329

`A056170(A382890(n+1)²)`
-/

namespace A376366.P16160704981564106329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A382890 (n + 1) ^ 2).toNat

end

end A376366.P16160704981564106329

namespace A376366

/-- `A056170(A382890(n+1)²)` -/
def P16160704981564106329.Spec : Prop :=
  ∀ n, P16160704981564106329.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P14510505656304100123

`A362412(A382890(n+1)²)`
-/

namespace A376366.P14510505656304100123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A382890 (n + 1) ^ 2).toNat

end

end A376366.P14510505656304100123

namespace A376366

/-- `A362412(A382890(n+1)²)` -/
def P14510505656304100123.Spec : Prop :=
  ∀ n, P14510505656304100123.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P2645966820925984277

`A056170(A382890(n+1)*A382890(n+1))`
-/

namespace A376366.P2645966820925984277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A382890 (n + 1) * A382890 (n + 1)).toNat

end

end A376366.P2645966820925984277

namespace A376366

/-- `A056170(A382890(n+1)*A382890(n+1))` -/
def P2645966820925984277.Spec : Prop :=
  ∀ n, P2645966820925984277.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P8678061345581420449

`A056170(A004709(2*n+1-n))`
-/

namespace A376366.P8678061345581420449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A004709 (2 * n + 1 - n)).toNat

end

end A376366.P8678061345581420449

namespace A376366

/-- `A056170(A004709(2*n+1-n))` -/
def P8678061345581420449.Spec : Prop :=
  ∀ n, P8678061345581420449.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P992493205740016586

`A056170(A180499(n+1)-A000578(n+1))`
-/

namespace A376366.P992493205740016586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A180499 (n + 1) - A000578 (n + 1)).toNat

end

end A376366.P992493205740016586

namespace A376366

/-- `A056170(A180499(n+1)-A000578(n+1))` -/
def P992493205740016586.Spec : Prop :=
  ∀ n, P992493205740016586.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P17327577274151971300

`A295659(A004709(n+1)²)`
-/

namespace A376366.P17327577274151971300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A004709 (n + 1) ^ 2).toNat

end

end A376366.P17327577274151971300

namespace A376366

/-- `A295659(A004709(n+1)²)` -/
def P17327577274151971300.Spec : Prop :=
  ∀ n, P17327577274151971300.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P6041085013225724746

`A295659(A004709(n+1)*A004709(n+1))`
-/

namespace A376366.P6041085013225724746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295659 (A004709 (n + 1) * A004709 (n + 1)).toNat

end

end A376366.P6041085013225724746

namespace A376366

/-- `A295659(A004709(n+1)*A004709(n+1))` -/
def P6041085013225724746.Spec : Prop :=
  ∀ n, P6041085013225724746.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P1483574825606207681

`A366078(A295657(A004709(n+1)²))`
-/

namespace A376366.P1483574825606207681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366078 (A295657 (A004709 (n + 1) ^ 2).toNat).toNat

end

end A376366.P1483574825606207681

namespace A376366

/-- `A366078(A295657(A004709(n+1)²))` -/
def P1483574825606207681.Spec : Prop :=
  ∀ n, P1483574825606207681.a n = A376366 (n + 1)

end A376366

/-! ## A376366.P11562631099399891154

`A362412(A004709(A000188((n+1)²)))`
-/

namespace A376366.P11562631099399891154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362412 (A004709 (A000188 ((n + 1) ^ 2)).toNat).toNat

end

end A376366.P11562631099399891154

namespace A376366

/-- `A362412(A004709(A000188((n+1)²)))` -/
def P11562631099399891154.Spec : Prop :=
  ∀ n, P11562631099399891154.a n = A376366 (n + 1)

end A376366

/-!
# A376367: Sorted multinomial coefficients greater than 1, including duplicates.

The programs for A376367, there is no canonical definition to state claims against.
-/

/-! ## A376367.P3290539779258379007

`A318762(A376379(n+1))`
-/

namespace A376367.P3290539779258379007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A376379 (n + 1)).toNat

end

end A376367.P3290539779258379007

/-! ## A376367.P3967187808177785276

`∑[char[∑[A376369(n+2)]]]+2`
-/

namespace A376367.P3967187808177785276
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376369 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A376367.P3967187808177785276

/-! ## A376367.P15602392218148975360

`A318808(2*A376379(n+1))`
-/

namespace A376367.P15602392218148975360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A376379 (n + 1)).toNat

end

end A376367.P15602392218148975360

/-! ## A376367.P2997204301690980931

`A318810(2*A376379(n+1))`
-/

namespace A376367.P2997204301690980931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * A376379 (n + 1)).toNat

end

end A376367.P2997204301690980931

/-! ## A376367.P13279210808919830716

`A318808(A376379(n+1)+A376379(n+1))`
-/

namespace A376367.P13279210808919830716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A376379 (n + 1) + A376379 (n + 1)).toNat

end

end A376367.P13279210808919830716

/-!
# A376369: Number of nondecreasing tuples (x_1, ..., x_k) of positive integers (or integer partitions) such that the multinomial coefficient (x_1 + ... + x_k)!/(x_1! * ... * x_k!) equals n.

The programs for A376369, there is no canonical definition to state claims against.
-/

/-! ## A376369.P16403804284393333600

`A124010(A166136(∑[n]+7)+1)`
-/

namespace A376369.P16403804284393333600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (A166136 (∑ j ∈ Finset.range (n + 1), f1 j + 7) + 1).toNat

end

end A376369.P16403804284393333600

/-! ## A376369.P6457030401316205717

`A250068(or(A102176(n+4), A299701(2*(n+1))))`
-/

namespace A376369.P6457030401316205717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250068 (Int.lor (A102176 (n + 4)) (A299701 (2 * (n + 1)))).toNat

end

end A376369.P6457030401316205717

/-! ## A376369.P5524907721761946295

`A386406(A313522(n+1))`
-/

namespace A376369.P5524907721761946295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386406 (A313522 (n + 1)).toNat

end

end A376369.P5524907721761946295

/-!
# A376371: Numbers that occur exactly once in A036038, i.e., numbers m such that the multinomial coefficient (x_1 + ... + x_k)!/(x_1! * ... * x_k!), with 1 <= x_1 <= ... <= x_k, is equal to m only when (x_1, ..., x_k) = (1, m-1).

The programs for A376371, there is no canonical definition to state claims against.
-/

/-! ## A376371.P1068118647399218570

`record[A376368(n+2)]`
-/

namespace A376371.P1068118647399218570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376368 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376371.P1068118647399218570

/-! ## A376371.P17263569231270985243

`eq[1, A376369(n+2)]+2`
-/

namespace A376371.P17263569231270985243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376369 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A376371.P17263569231270985243

/-! ## A376371.P6520471927490428619

`record[A000027(n+2)/A376369(n+2)]`
-/

namespace A376371.P6520471927490428619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) / (A376369 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376371.P6520471927490428619

/-!
# A376372: Numbers that occur exactly twice in A036038, i.e., numbers m such that the multinomial coefficient (x_1 + ... + x_k)!/(x_1! * ... * x_k!) is equal to m for exactly 2 integer partitions (x_1, ..., x_k).

The programs for A376372, there is no canonical definition to state claims against.
-/

/-! ## A376372.P5328498732024310986

`eq[2, A376369(n+2)]+2`
-/

namespace A376372.P5328498732024310986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376369 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A376372.P5328498732024310986

/-! ## A376372.P16405139306900486133

`A376370(∑[n+1]+2)`
-/

namespace A376372.P16405139306900486133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A376372.P16405139306900486133

/-! ## A376372.P17891794463771299736

`record[A376370(record[A085177(n+3)])]`
-/

namespace A376372.P17891794463771299736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085177 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A376372.P17891794463771299736

/-!
# A376373: Numbers that occur exactly 3 times in A036038, i.e., numbers m such that the multinomial coefficient (x_1 + ... + x_k)!/(x_1! * ... * x_k!) is equal to m for exactly 3 integer partitions (x_1, ..., x_k).

The programs for A376373, there is no canonical definition to state claims against.
-/

/-! ## A376373.P9971679278663960342

`A376370(A167614(n+1))`
-/

namespace A376373.P9971679278663960342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (A167614 (n + 1)).toNat

end

end A376373.P9971679278663960342

/-! ## A376373.P1546126048542294265

`A376370(A167499(n)+n)`
-/

namespace A376373.P1546126048542294265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (A167499 n + (n : ℤ)).toNat

end

end A376373.P1546126048542294265

/-! ## A376373.P4680933688092982222

`A376370(A000217(n+3)-n)`
-/

namespace A376373.P4680933688092982222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A376373.P4680933688092982222

/-! ## A376373.P5606600405753395676

`A376370(A028310(∑[n+2]+3)+1)`
-/

namespace A376373.P5606600405753395676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (A028310 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1).toNat

end

end A376373.P5606600405753395676

/-! ## A376373.P1396941266633438217

`eq[3, A376369(n+2)]+2`
-/

namespace A376373.P1396941266633438217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376369 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A376373.P1396941266633438217

/-!
# A376374: Numbers that occur exactly 4 times in A036038, i.e., numbers m such that the multinomial coefficient (x_1 + ... + x_k)!/(x_1! * ... * x_k!) is equal to m for exactly 4 integer partitions (x_1, ..., x_k).

The programs for A376374, there is no canonical definition to state claims against.
-/

/-! ## A376374.P14284427295164395757

`A376370(A167614(n+2)+1)`
-/

namespace A376374.P14284427295164395757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (A167614 (n + 2) + 1).toNat

end

end A376374.P14284427295164395757

/-! ## A376374.P15187956591047519184

`A376370(A000124(n+3)+3)`
-/

namespace A376374.P15187956591047519184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (A000124 (n + 3) + 3).toNat

end

end A376374.P15187956591047519184

/-! ## A376374.P11944747274377442150

`A376370(A000217(n+4)-n)`
-/

namespace A376374.P11944747274377442150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A376374.P11944747274377442150

/-!
# A376375: Numbers that occur exactly 5 times in A036038, i.e., numbers m such that the multinomial coefficient (x_1 + ... + x_k)!/(x_1! * ... * x_k!) is equal to m for exactly 5 integer partitions (x_1, ..., x_k).

The programs for A376375, there is no canonical definition to state claims against.
-/

/-! ## A376375.P1222562478550002148

`A376370(A000217(n+4)+5)`
-/

namespace A376375.P1222562478550002148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (A000217 (n + 4) + 5).toNat

end

end A376375.P1222562478550002148

/-! ## A376375.P12428743616678599239

`A376370(eq[6, A131818(n+1)])`
-/

namespace A376375.P12428743616678599239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A376375.P12428743616678599239

/-!
# A376376: Least number that can be written as a multinomial coefficient in exactly n ways, or 0 if no such number exists.

The programs for A376376, there is no canonical definition to state claims against.
-/

/-! ## A376376.P13257463074397105985

`A376370(∑[n+1])`
-/

namespace A376376.P13257463074397105985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376370 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376376.P13257463074397105985

/-! ## A376376.P10838362951980390175

`lcm(2, A376370(A000217(n+1)))`
-/

namespace A376376.P10838362951980390175
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A376370 (A000217 (n + 1)).toNat)

end

end A376376.P10838362951980390175

/-! ## A376376.P1912628092055142002

`A376370(A000217(n+1))%A177284(n+3)`
-/

namespace A376376.P1912628092055142002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A376370 (A000217 (n + 1)).toNat) (A177284 (n + 3))

end

end A376376.P1912628092055142002

/-! ## A376376.P12203006188923345195

`A000034(2*(n+1))*A376370(A000217(n+1))`
-/

namespace A376376.P12203006188923345195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * (n + 1)) * A376370 (A000217 (n + 1)).toNat

end

end A376376.P12203006188923345195

/-! ## A376376.P17935098469950207615

`gcd(A002674(n+5), A376370(A000217(n+1)))`
-/

namespace A376376.P17935098469950207615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002674 (n + 5)) (A376370 (A000217 (n + 1)).toNat)

end

end A376376.P17935098469950207615

/-!
# A376378: Indices of records in A376369.

The programs for A376378, there is no canonical definition to state claims against.
-/

/-! ## A376378.P2811739792874510002

`A376376(A376377(n+1))`
-/

namespace A376378.P2811739792874510002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376376 (A376377 (n + 1)).toNat

end

end A376378.P2811739792874510002

/-!
# A376380: Products of 5 distinct primes that are sandwiched between twin prime numbers.

The programs for A376380, there is no canonical definition to state claims against.
-/

/-! ## A376380.P761397682105943409

`∩[A070195(n+1), A136154(n+1)]`
-/

namespace A376380.P761397682105943409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P761397682105943409

/-! ## A376380.P4355791856779001277

`∩[A014574(n+1), A046387(n+1)]`
-/

namespace A376380.P4355791856779001277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P4355791856779001277

/-! ## A376380.P16605466870440626436

`∩[A046387(n+1), A070195(n+1)]`
-/

namespace A376380.P16605466870440626436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P16605466870440626436

/-! ## A376380.P3920911643829421948

`∩[A046387(n+1), A120432(n+1)]`
-/

namespace A376380.P3920911643829421948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P3920911643829421948

/-! ## A376380.P5332255034067553880

`∩[A046387(n+1), A217259(n+1)]`
-/

namespace A376380.P5332255034067553880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P5332255034067553880

/-! ## A376380.P2604197341643328356

`∩[A046387(n+1), A223138(n+1)]`
-/

namespace A376380.P2604197341643328356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P2604197341643328356

/-! ## A376380.P7699344480477890815

`∩[A046387(n+1), A306298(n+1)]`
-/

namespace A376380.P7699344480477890815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P7699344480477890815

/-! ## A376380.P5337720491913483200

`∩[A051270(n+1), A070195(n+1)]`
-/

namespace A376380.P5337720491913483200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P5337720491913483200

/-! ## A376380.P14479022139047726330

`∩[A070195(n+1), A175742(n+1)]`
-/

namespace A376380.P14479022139047726330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P14479022139047726330

/-! ## A376380.P8274559694243389633

`∩[2*A046386(n+1), A070195(n+1)]`
-/

namespace A376380.P8274559694243389633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A376380.P8274559694243389633

/-!
# A376381: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x) - 1))^2 ).

The programs for A376381, there is no canonical definition to state claims against.
-/

/-! ## A376381.P13565098641311815941

`A241416(n+1)+A025480(A255518(n))`
-/

namespace A376381.P13565098641311815941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241416 (n + 1) + A025480 (A255518 n).toNat

end

end A376381.P13565098641311815941

/-!
# A376382: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 - x*(exp(x) - 1))^3 ).

The programs for A376382, there is no canonical definition to state claims against.
-/

/-! ## A376382.P14357860931275725519

`A240162(A367678(n+1)+1)`
-/

namespace A376382.P14357860931275725519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240162 (A367678 (n + 1) + 1).toNat

end

end A376382.P14357860931275725519

/-!
# A376383: Expansion of e.g.f. ( (1/x) * Series_Reversion( x*(1 - x*(exp(x) - 1))^3 ) )^(2/3).

The programs for A376383, there is no canonical definition to state claims against.
-/

/-! ## A376383.P16011139605780855577

`8*A138842(a(n-1)+a(n-3)-a(n-4))` with `a(0)=1, a(1)=0, a(2)=4, a(3)=6`
-/

namespace A376383.P16011139605780855577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 6] fun n a =>
  8 * A138842 (a (n - 1) + a (n - 3) - a (n - 4)).toNat

end

end A376383.P16011139605780855577

/-!
# A376384: Numbers k such that there exists at least two m <= k such that both rad(m) | k and m is neither squarefree nor a prime power, i.e., m is in A126706, where rad = A007947.

The programs for A376384, there is no canonical definition to state claims against.
-/

/-! ## A376384.P9934841520496107516

`∪[A000977(n+1), A393201(n+1)]`
-/

namespace A376384.P9934841520496107516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376384.P9934841520496107516

/-! ## A376384.P17543086792453167257

`∪[A349794(n+1), A393201(n+1)]`
-/

namespace A376384.P17543086792453167257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376384.P17543086792453167257

/-! ## A376384.P9525238661571924891

`∪[A357874(n+1), A393201(n+1)]`
-/

namespace A376384.P9525238661571924891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376384.P9525238661571924891

/-! ## A376384.P17571640172237742565

`∪[A350353(n+1), A393201(n+1)]`
-/

namespace A376384.P17571640172237742565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A376384.P17571640172237742565

/-! ## A376384.P6806491026604628186

`lt[A160093(A240094(3*n+1)), A066882(n)]`
-/

namespace A376384.P6806491026604628186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A240094 (3 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A376384.P6806491026604628186

/-!
# A376385: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x*log(1-x))^2 ).

The programs for A376385, there is no canonical definition to state claims against.
-/

/-! ## A376385.P4802096626224397046

`A007895(A334162(n))*A371140(n)`
-/

namespace A376385.P4802096626224397046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A334162 n).toNat * A371140 n

end

end A376385.P4802096626224397046

/-!
# A376386: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + x*log(1-x))^3 ).

The programs for A376386, there is no canonical definition to state claims against.
-/

/-! ## A376386.P722458808699990465

`A398022(A081669(n))`
-/

namespace A376386.P722458808699990465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398022 (A081669 n).toNat

end

end A376386.P722458808699990465

/-!
# A376387: Expansion of e.g.f. ( (1/x) * Series_Reversion( x*(1 + x*log(1-x))^3 ) )^(2/3).

The programs for A376387, there is no canonical definition to state claims against.
-/

/-! ## A376387.P11832574582022779797

`A371232(n)+A002264(A376386(n))`
-/

namespace A376387.P11832574582022779797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371232 n + A002264 (A376386 n).toNat

end

end A376387.P11832574582022779797

/-!
# A376388: a(n) = P(n+1, n+1) where P(n, m) = P(n, m-1) + P(n-1, m + f(m-n)) for n < m with P(n, m) = P(n-1, m) for 0 <= m <= n and P(0, m) = 1 for m >= 0 where f(n) = [(n mod 5) > 0].

The programs for A376388, there is no canonical definition to state claims against.
-/

/-! ## A376388.P13688968075223256089

`A192419(A193038(n+1))`
-/

namespace A376388.P13688968075223256089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192419 (A193038 (n + 1)).toNat

end

end A376388.P13688968075223256089

/-! ## A376388.P8885045200519048643

`∑[A319347(A074664(n+1)²)]`
-/

namespace A376388.P8885045200519048643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319347 (A074664 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376388.P8885045200519048643

/-!
# A376393: Expansion of e.g.f. (1/x) * Series_Reversion( x*(1 + log(1-x))^3 ).

The programs for A376393, there is no canonical definition to state claims against.
-/

/-! ## A376393.P12871766111038719237

`A380666(n)-A097203(A376400(n))`
-/

namespace A376393.P12871766111038719237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380666 n - A097203 (A376400 n).toNat

end

end A376393.P12871766111038719237

/-!
# A376396: Triangle read by rows: the n-th row gives the least sequence of n consecutive primes all of the form 4*m + 1.

The programs for A376396, there is no canonical definition to state claims against.
-/

/-! ## A376396.P1631103179621292112

`A080455(∑[A328673(2*n+3)!])`
-/

namespace A376396.P1631103179621292112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A328673 (2 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080455 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A376396.P1631103179621292112

/-!
# A376397: a(n) = A276075(n!), where A276075 is the factorial base log-function.

The programs for A376397, there is no canonical definition to state claims against.
-/

/-! ## A376397.P13667566972375452886

`∑[A276075(n+1)]`
-/

namespace A376397.P13667566972375452886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276075 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376397.P13667566972375452886

/-! ## A376397.P8903203896985368626

`A276075(2*(n+1))-(1-a(n-1))` with `a(0)=0`
-/

namespace A376397.P8903203896985368626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A276075 (2 * (n + 1)) - (1 - a (n - 1))

end

end A376397.P8903203896985368626

/-! ## A376397.P4053194616030010388

`∑[∑{e}[A181821(n+1), #!]]`
-/

namespace A376397.P4053194616030010388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorial (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376397.P4053194616030010388

/-! ## A376397.P268823795763723002

`∑[∑{e}[A181821(n+1), A000142(#)]]`
-/

namespace A376397.P268823795763723002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A000142 (Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376397.P268823795763723002

/-! ## A376397.P14038940652168432553

`∑[A277011(A156552(n+1))]`
-/

namespace A376397.P14038940652168432553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277011 (A156552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376397.P14038940652168432553

/-!
# A376398: a(n) = A276085(n!), where A276085 is the primorial base log-function.

The programs for A376398, there is no canonical definition to state claims against.
-/

/-! ## A376398.P10409886767735869175

`∑[A276085(n+1)]`
-/

namespace A376398.P10409886767735869175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376398.P10409886767735869175

/-! ## A376398.P7596557891452448100

`∑[A376413(A372575(n+1))]`
-/

namespace A376398.P7596557891452448100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376413 (A372575 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376398.P7596557891452448100

/-! ## A376398.P856147715397143940

`∑[∑{d}[n+1, A328768(A014963(#))]]`
-/

namespace A376398.P856147715397143940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A328768 (A014963 d).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376398.P856147715397143940

/-! ## A376398.P503522514373420366

`∑[A328769(n+1)/(n+1)]`
-/

namespace A376398.P503522514373420366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328769 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376398.P503522514373420366

/-! ## A376398.P8130981377352661738

`∑[A277021(A156552(n+1))]`
-/

namespace A376398.P8130981377352661738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277021 (A156552 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A376398.P8130981377352661738

/-!
# A376399: a(0) = 1, and for n > 0, a(n) is the least k such that A276075(k) = a(n-1) + A276075(a(n-1)), where A276075 is the factorial base log-function.

The programs for A376399, there is no canonical definition to state claims against.
-/

/-! ## A376399.P5776130386909780975

`A276076(A376403(n))`
-/

namespace A376399.P5776130386909780975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276076 (A376403 n).toNat

end

end A376399.P5776130386909780975

/-! ## A376399.P818073730701051050

`A376403(n+1)-A376403(n)`
-/

namespace A376399.P818073730701051050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376403 (n + 1) - A376403 n

end

end A376399.P818073730701051050

