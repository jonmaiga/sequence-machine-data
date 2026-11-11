import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B005.C003
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A399701: a(n) is the number of holes resulting from 1 circular grid with n vertical bars superimposed on another with n horizontal bars. See A399700 for details.

The programs for A399701, there is no canonical definition to state claims against.
-/

/-! ## A399701.P1903788741690371986

`A216455(A124623(n+2))`
-/

namespace A399701.P1903788741690371986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216455 (A124623 (n + 2)).toNat

end

end A399701.P1903788741690371986

/-! ## A399701.P13910412136387429116

`A124623(n+2)/A124625(A124621(n+1))`
-/

namespace A399701.P13910412136387429116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124623 (n + 2) : ℚ) / (A124625 (A124621 (n + 1)).toNat : ℚ)

end

end A399701.P13910412136387429116

/-! ## A399701.P14147841069008302611

`A124623(n+2)/A124625(A340425(n+2))`
-/

namespace A399701.P14147841069008302611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124623 (n + 2) : ℚ) / (A124625 (A340425 (n + 2)).toNat : ℚ)

end

end A399701.P14147841069008302611

/-! ## A399701.P3859549900525473894

`A124623(n+2)/A124625(A185896(3*n+1))`
-/

namespace A399701.P3859549900525473894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124623 (n + 2) : ℚ) / (A124625 (A185896 (3 * n + 1)).toNat : ℚ)

end

end A399701.P3859549900525473894

/-! ## A399701.P986204729409794540

`∩[A124623(n+1), A355890(n)]`
-/

namespace A399701.P986204729409794540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355890 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399701.P986204729409794540

/-!
# A399703: a(0) = 1; a(n) = Sum_{k=0..n-1} (-1)^(n-k-1) * binomial(n,k) * k^(k*(n-k)) * a(k).

The programs for A399703, there is no canonical definition to state claims against.
-/

/-! ## A399703.P9229118979369915613

`A141322(a(n-1)²)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A399703.P9229118979369915613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A141322 (a (n - 1) ^ 2).toNat

end

end A399703.P9229118979369915613

/-!
# A399705: a(n) is 1 if A008846(n) is congruent to 5 modulo 8, and 0 if A008846(n) is congruent to 1 modulo 8.

The programs for A399705, the canonical program `A399705.P7439880869776146323` is in `Seq.B005.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399705 has offset 1).

The definition of A399705 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008846, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399705.P7439880869776146323

`((A008846(n+1)-1)/4)%2`

The canonical program, it is in `Seq.B005.C003`.
-/

namespace A399705

/-- `((A008846(n+1)-1)/4)%2` -/
def P7439880869776146323.Spec : Prop :=
  ∀ n, P7439880869776146323.a n = A399705 (n + 1)

theorem P7439880869776146323.correct : P7439880869776146323.Spec := by
  intro n
  simp only [A399705, Nat.add_sub_cancel]

end A399705

/-! ## A399705.P1502664123056263318

`A094178(1+n)%2`
-/

namespace A399705.P1502664123056263318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094178 (1 + n)) 2

end

end A399705.P1502664123056263318

namespace A399705

/-- `A094178(1+n)%2` -/
def P1502664123056263318.Spec : Prop :=
  ∀ n, P1502664123056263318.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P10338232213208971744

`and(1, A094178(n+1))`
-/

namespace A399705.P10338232213208971744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A094178 (n + 1))

end

end A399705.P10338232213208971744

namespace A399705

/-- `and(1, A094178(n+1))` -/
def P10338232213208971744.Spec : Prop :=
  ∀ n, P10338232213208971744.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P1801903414257220232

`and(4, A008846(n+1))/4`
-/

namespace A399705.P1801903414257220232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 4 (A008846 (n + 1)) : ℚ) / 4

end

end A399705.P1801903414257220232

namespace A399705

/-- `and(4, A008846(n+1))/4` -/
def P1801903414257220232.Spec : Prop :=
  ∀ n, P1801903414257220232.a n = (A399705 (n + 1) : ℚ)

end A399705

/-! ## A399705.P15325394839365199187

`floor(A008846(1+n)/4)%2`
-/

namespace A399705.P15325394839365199187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A008846 (1 + n) : ℚ) / 4⌋ 2

end

end A399705.P15325394839365199187

namespace A399705

/-- `floor(A008846(1+n)/4)%2` -/
def P15325394839365199187.Spec : Prop :=
  ∀ n, P15325394839365199187.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P17426922788506026303

`((A004613(n+2)-1)/4)%2`
-/

namespace A399705.P17426922788506026303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A004613 (n + 2) - 1 : ℚ) / 4)) 2

end

end A399705.P17426922788506026303

namespace A399705

/-- `((A004613(n+2)-1)/4)%2` -/
def P17426922788506026303.Spec : Prop :=
  ∀ n, P17426922788506026303.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P17036480864262255956

`lt[1, A031358(n)]%2`
-/

namespace A399705.P17036480864262255956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n % 2

end

end A399705.P17036480864262255956

namespace A399705

/-- `lt[1, A031358(n)]%2` -/
def P17036480864262255956.Spec : Prop :=
  ∀ n, (P17036480864262255956.a n : ℤ) = A399705 (n + 1)

end A399705

/-! ## A399705.P18402769784034529158

`A000035(A094178(n+1))`
-/

namespace A399705.P18402769784034529158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A094178 (n + 1)).toNat

end

end A399705.P18402769784034529158

namespace A399705

/-- `A000035(A094178(n+1))` -/
def P18402769784034529158.Spec : Prop :=
  ∀ n, P18402769784034529158.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P1753272311067167902

`A014707(A008846(n+1))`
-/

namespace A399705.P1753272311067167902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A008846 (n + 1)).toNat

end

end A399705.P1753272311067167902

namespace A399705

/-- `A014707(A008846(n+1))` -/
def P1753272311067167902.Spec : Prop :=
  ∀ n, P1753272311067167902.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P1796491954480376935

`A014707(A004613(n+2))`
-/

namespace A399705.P1796491954480376935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A004613 (n + 2)).toNat

end

end A399705.P1796491954480376935

namespace A399705

/-- `A014707(A004613(n+2))` -/
def P1796491954480376935.Spec : Prop :=
  ∀ n, P1796491954480376935.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P8142500293813764843

`(A191764(n+1)/2)%2`
-/

namespace A399705.P8142500293813764843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A191764 (n + 1) : ℚ) / 2)) 2

end

end A399705.P8142500293813764843

namespace A399705

/-- `(A191764(n+1)/2)%2` -/
def P8142500293813764843.Spec : Prop :=
  ∀ n, P8142500293813764843.a n = A399705 (n + 1)

end A399705

/-! ## A399705.P16918766295287102979

`∑{#}[eq[0, A125203(1+n)], (-1)^#]`
-/

namespace A399705.P16918766295287102979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125203 (1 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1) ^ k

end

end A399705.P16918766295287102979

namespace A399705

/-- `∑{#}[eq[0, A125203(1+n)], (-1)^#]` -/
def P16918766295287102979.Spec : Prop :=
  ∀ n, P16918766295287102979.a n = A399705 (n + 1)

end A399705

/-!
# A399707: a(n) is the least prime p such that there are exactly n numbers k such that A075254(k) = p.

The programs for A399707, there is no canonical definition to state claims against.
-/

/-! ## A399707.P2334474821386533949

`A228592(A041151(n)^A025157(n))`
-/

namespace A399707.P2334474821386533949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228592 (SequenceMachineLib.roundAway ((A041151 n : ℚ) ^ (A025157 n : ℤ))).toNat

end

end A399707.P2334474821386533949

/-!
# A399711: Maximum, over all subsets S,T of {1,...,n}, of the number of positive integers m for which m = s*t has exactly one solution (s,t) in S X T.

The programs for A399711, there is no canonical definition to state claims against.
-/

/-! ## A399711.P6519754649095097279

`A261466(A233776(n))`
-/

namespace A399711.P6519754649095097279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (A233776 n).toNat

end

end A399711.P6519754649095097279

/-!
# A399714: a(n) = -1 - A010815(n-1) - Sum_{k=1..n-2} A010815(k)*2^(n-2-k) for n >= 3.

The programs for A399714, the canonical program `A399714.P16102988508626292463` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399714 has offset 3).

The definition of A399714 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A178841, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399714.P16102988508626292463

`A000225(n+1)-A178841(n+2)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A399714

/-- `A000225(n+1)-A178841(n+2)` -/
def P16102988508626292463.Spec : Prop :=
  ∀ n, P16102988508626292463.a n = A399714 (n + 3)

theorem P16102988508626292463.correct : P16102988508626292463.Spec := by
  intro n
  simp only [A399714, Nat.add_sub_cancel]

end A399714

/-! ## A399714.P5274294483703216947

`2*a(n-1)+1-A010815(n+2)+A010815(n+1)` with `a(0)=1`
-/

namespace A399714.P5274294483703216947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + 1 - A010815 (n + 2) + A010815 (n + 1)

end

end A399714.P5274294483703216947

namespace A399714

/-- `2*a(n-1)+1-A010815(n+2)+A010815(n+1)` -/
def P5274294483703216947.Spec : Prop :=
  ∀ n, P5274294483703216947.a n = A399714 (n + 3)

end A399714

/-! ## A399714.P2127066399455526318

`-1-A010815(n+2)-∑{#}[n, A010815(#+1)*2^(n+1-(#+1))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A399714.P2127066399455526318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 - A010815 (n + 2) : ℚ) - ∑ k ∈ Finset.range (f1 n + 1), (A010815 (k + 1) : ℚ) * (2 : ℚ) ^ ((n + 1 : ℤ) - (k + 1 : ℤ) : ℤ)

end

end A399714.P2127066399455526318

namespace A399714

/-- `-1-A010815(n+2)-∑{#}[n, A010815(#+1)*2^(n+1-(#+1))]` -/
def P2127066399455526318.Spec : Prop :=
  ∀ n, P2127066399455526318.a n = (A399714 (n + 3) : ℚ)

end A399714

/-! ## A399714.P15992264458003389679

`Δ[A137711(n+1)]-1`
-/

namespace A399714.P15992264458003389679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A399714.P15992264458003389679

namespace A399714

/-- `Δ[A137711(n+1)]-1` -/
def P15992264458003389679.Spec : Prop :=
  ∀ n, P15992264458003389679.a n = A399714 (n + 3)

end A399714

/-! ## A399714.P2470666549146354365

`A247160(A279751(n))`
-/

namespace A399714.P2470666549146354365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247160 (A279751 n).toNat

end

end A399714.P2470666549146354365

namespace A399714

/-- `A247160(A279751(n))` -/
def P2470666549146354365.Spec : Prop :=
  ∀ n, P2470666549146354365.a n = A399714 (n + 3)

end A399714

/-!
# A399715: T(n,k) is the k-th term obtained by greedily selecting the smallest number in {1..n} whose sorted distances to previously selected terms are lexicographically maximal, triangle read by rows.

The programs for A399715, there is no canonical definition to state claims against.
-/

/-! ## A399715.P15708339492794350224

`A193278(A219209(n))`
-/

namespace A399715.P15708339492794350224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193278 (A219209 n).toNat

end

end A399715.P15708339492794350224

/-! ## A399715.P8075043560324521414

`A001222(A075584(n+1)*A080935(n+1))`
-/

namespace A399715.P8075043560324521414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A075584 (n + 1) * A080935 (n + 1)).toNat

end

end A399715.P8075043560324521414

/-! ## A399715.P18046827904227664601

`A001222(A080935(n+1)*A262366(n+1))`
-/

namespace A399715.P18046827904227664601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080935 (n + 1) * A262366 (n + 1)).toNat

end

end A399715.P18046827904227664601

/-! ## A399715.P10878088953936267187

`A001222(A080935(n+1)*A291339(2*n+3))`
-/

namespace A399715.P10878088953936267187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A080935 (n + 1) * A291339 (2 * n + 3)).toNat

end

end A399715.P10878088953936267187

/-! ## A399715.P18090606824754435272

`A375636(A132950(n))`
-/

namespace A399715.P18090606824754435272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375636 (A132950 n).toNat

end

end A399715.P18090606824754435272

/-!
# A399720: Least N such that {1,...,N} contains an n-element subset whose set of subset sums contains no 3-term arithmetic progression (the Erdős-Sárközy function g_3(n)).

The programs for A399720, there is no canonical definition to state claims against.
-/

/-! ## A399720.P14682039652908470770

`round((atan(1)+2)^n)`
-/

namespace A399720.P14682039652908470770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.arctan (1 : ℝ) + 2) ^ n)

end

end A399720.P14682039652908470770

/-!
# A399722: a(n) = 3^(m-1) + Sum_{i=2..m} 3^(m-i)*2^(d(1)+...d(i-1)) where m=A122458(n) and d(i)=A351122(n,i-1) for 1<=i<m.

The programs for A399722, there is no canonical definition to state claims against.
-/

/-! ## A399722.P13453835905108301782

`A060565(n+1)*2^A260590(n+1)-(2*(n+1)+1)*3^A122458(n+1)`
-/

namespace A399722.P13453835905108301782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060565 (n + 1) : ℚ) * (2 : ℚ) ^ (A260590 (n + 1) : ℤ) - (2 * (n + 1) + 1 : ℚ) * (3 : ℚ) ^ (A122458 (n + 1) : ℤ)

end

end A399722.P13453835905108301782

/-!
# A399723: a(n) is the greatest k <= n such that k divides sigma(n), where sigma = A000203.

The programs for A399723, there is no canonical definition to state claims against.
-/

/-! ## A399723.P3010956513519110382

`A072643(A000032(n)^A162642(n+1))`
-/

namespace A399723.P3010956513519110382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072643 (SequenceMachineLib.roundAway ((A000032 n : ℚ) ^ (A162642 (n + 1) : ℤ))).toNat

end

end A399723.P3010956513519110382

/-!
# A399725: Numbers k that have no proper divisors d such that k - d is squarefree.

The programs for A399725, there is no canonical definition to state claims against.
-/

/-! ## A399725.P163524285617079360

`eq[0, A330868(n+1)]+1`
-/

namespace A399725.P163524285617079360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399725.P163524285617079360

/-! ## A399725.P2620500003674300021

`eq[A013928(n+1), A368677(n+1)]+1`
-/

namespace A399725.P2620500003674300021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A399725.P2620500003674300021

/-! ## A399725.P9363895571539841496

`eq[A070665(n), A169975(n)]`
-/

namespace A399725.P9363895571539841496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399725.P9363895571539841496

/-! ## A399725.P2491440147403315462

`eq[A153265(n), A169975(n)]`
-/

namespace A399725.P2491440147403315462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153265 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399725.P2491440147403315462

/-! ## A399725.P3104025979384476761

`eq[A169975(n), A212256(n)]`
-/

namespace A399725.P3104025979384476761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169975 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212256 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A399725.P3104025979384476761

/-!
# A399726: Number of distinct configurations of n matryoshkas that are also allowed to stack.

The programs for A399726, there is no canonical definition to state claims against.
-/

/-! ## A399726.P5945671239163906017

`A166546(A235402(n+4)*A393623(n))`
-/

namespace A399726.P5945671239163906017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 (A235402 (n + 4) * A393623 n).toNat

end

end A399726.P5945671239163906017

/-!
# A399728: Number of labeled point-determining (mating) graphs on n vertices with no vertices of degree 1.

The programs for A399728, there is no canonical definition to state claims against.
-/

/-! ## A399728.P6325354086107500825

`A379506(2+a(n-1))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A399728.P6325354086107500825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  A379506 (2 + a (n - 1)).toNat

end

end A399728.P6325354086107500825

/-! ## A399728.P6749452452602252533

`A342902(a(n-1)!)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=5`
-/

namespace A399728.P6749452452602252533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 5] fun n a =>
  A342902 (Nat.factorial (a (n - 1)).toNat)

end

end A399728.P6749452452602252533

/-!
# A399729: Number of 2-closed subgroups of the symmetric group S_n, counting conjugates as distinct.

The programs for A399729, there is no canonical definition to state claims against.
-/

/-! ## A399729.P7201145324993154660

`A209874(a(n-1))-n` with `a(0)=1, a(1)=2`
-/

namespace A399729.P7201145324993154660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A209874 (a (n - 1)).toNat - (n : ℤ)

end

end A399729.P7201145324993154660

/-!
# A399730: Number of labeled Eulerian point-determining (mating) graphs on n vertices.

The programs for A399730, there is no canonical definition to state claims against.
-/

/-! ## A399730.P7601937334222537465

`A106286(a(n-1))` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=4`
-/

namespace A399730.P7601937334222537465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 4] fun n a =>
  A106286 (a (n - 1)).toNat

end

end A399730.P7601937334222537465

/-!
# A399732: The sum of the unitary divisors d of n such that n/d is cubefree.

The programs for A399732, the canonical program `A399732.P10852493408418534580` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399732 has offset 1).

The definition of A399732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399732.P3710505821191304211

`(n+1)*A034448(n+1)/A399734(n+1)`
-/

namespace A399732.P3710505821191304211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A399734 (n + 1) : ℚ)

end

end A399732.P3710505821191304211

namespace A399732

/-- `(n+1)*A034448(n+1)/A399734(n+1)` -/
def P3710505821191304211.Spec : Prop :=
  ∀ n, P3710505821191304211.a n = (A399732 (n + 1) : ℚ)

end A399732

/-! ## A399732.P10852493408418534580

`A360540(n+1)*A371242(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399732

/-- `A360540(n+1)*A371242(n+1)` -/
def P10852493408418534580.Spec : Prop :=
  ∀ n, P10852493408418534580.a n = A399732 (n + 1)

theorem P10852493408418534580.correct : P10852493408418534580.Spec := by
  intro n
  simp only [A399732, Nat.add_sub_cancel]

end A399732

/-! ## A399732.P1913276672192416234

`A064971(n+1)/A399734(n+1)`
-/

namespace A399732.P1913276672192416234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399734 (n + 1) : ℚ)

end

end A399732.P1913276672192416234

namespace A399732

/-- `A064971(n+1)/A399734(n+1)` -/
def P1913276672192416234.Spec : Prop :=
  ∀ n, P1913276672192416234.a n = (A399732 (n + 1) : ℚ)

end A399732

/-! ## A399732.P6449902091200378194

`A368886(n+1)/A055231(n+1)*A371242(n+1)`
-/

namespace A399732.P6449902091200378194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368886 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ) * (A371242 (n + 1) : ℚ)

end

end A399732.P6449902091200378194

namespace A399732

/-- `A368886(n+1)/A055231(n+1)*A371242(n+1)` -/
def P6449902091200378194.Spec : Prop :=
  ∀ n, P6449902091200378194.a n = (A399732 (n + 1) : ℚ)

end A399732

/-! ## A399732.P13090942761715841385

`(n+1)/A056192(A385007(n+1))*A371242(n+1)`
-/

namespace A399732.P13090942761715841385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056192 (A385007 (n + 1)).toNat : ℚ) * (A371242 (n + 1) : ℚ)

end

end A399732.P13090942761715841385

namespace A399732

/-- `(n+1)/A056192(A385007(n+1))*A371242(n+1)` -/
def P13090942761715841385.Spec : Prop :=
  ∀ n, P13090942761715841385.a n = (A399732 (n + 1) : ℚ)

end A399732

/-! ## A399732.P18311283596520845768

`A399735(n+1)*A399736(n+1)/A399734(n+1)`
-/

namespace A399732.P18311283596520845768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399735 (n + 1) * A399736 (n + 1) : ℚ) / (A399734 (n + 1) : ℚ)

end

end A399732.P18311283596520845768

namespace A399732

/-- `A399735(n+1)*A399736(n+1)/A399734(n+1)` -/
def P18311283596520845768.Spec : Prop :=
  ∀ n, P18311283596520845768.a n = (A399732 (n + 1) : ℚ)

end A399732

/-! ## A399732.P11623026232916080585

`A007948(A008834(n+1))*A062378(n+1)*A371242(n+1)`
-/

namespace A399732.P11623026232916080585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A008834 (n + 1)).toNat * A062378 (n + 1) * A371242 (n + 1)

end

end A399732.P11623026232916080585

namespace A399732

/-- `A007948(A008834(n+1))*A062378(n+1)*A371242(n+1)` -/
def P11623026232916080585.Spec : Prop :=
  ∀ n, P11623026232916080585.a n = A399732 (n + 1)

end A399732

/-! ## A399732.P4603168100614120446

`A011262(A011262(n+1)/A360541(n+1))*A371242(n+1)`
-/

namespace A399732.P4603168100614120446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (SequenceMachineLib.roundAway ((A011262 (n + 1) : ℚ) / (A360541 (n + 1) : ℚ))).toNat * A371242 (n + 1)

end

end A399732.P4603168100614120446

namespace A399732

/-- `A011262(A011262(n+1)/A360541(n+1))*A371242(n+1)` -/
def P4603168100614120446.Spec : Prop :=
  ∀ n, P4603168100614120446.a n = A399732 (n + 1)

end A399732

/-!
# A399733: The sum of the unitary divisors d of n such that n/d is a powerful number (A001694).

The programs for A399733, the canonical program `A399733.P11103501656133543636` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399733 has offset 1).

The definition of A399733 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A363289, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399733.P11103501656133543636

`(n+1)*A034448(n+1)/A363289(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A399733

/-- `(n+1)*A034448(n+1)/A363289(n+1)` -/
def P11103501656133543636.Spec : Prop :=
  ∀ n, P11103501656133543636.a n = (A399733 (n + 1) : ℚ)

end A399733

/-! ## A399733.P13606060373358619831

`A055231(1+n)*A360720(n+1)`
-/

namespace A399733.P13606060373358619831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (1 + n) * A360720 (n + 1)

end

end A399733.P13606060373358619831

namespace A399733

/-- `A055231(1+n)*A360720(n+1)` -/
def P13606060373358619831.Spec : Prop :=
  ∀ n, P13606060373358619831.a n = A399733 (n + 1)

end A399733

/-! ## A399733.P6458300363522463689

`A064971(n+1)/A363289(n+1)`
-/

namespace A399733.P6458300363522463689
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P6458300363522463689

namespace A399733

/-- `A064971(n+1)/A363289(n+1)` -/
def P6458300363522463689.Spec : Prop :=
  ∀ n, P6458300363522463689.a n = (A399733 (n + 1) : ℚ)

end A399733

/-! ## A399733.P676649806269320168

`A399732(n+1)*A399734(n+1)/A363289(n+1)`
-/

namespace A399733.P676649806269320168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P676649806269320168

namespace A399733

/-- `A399732(n+1)*A399734(n+1)/A363289(n+1)` -/
def P676649806269320168.Spec : Prop :=
  ∀ n, P676649806269320168.a n = (A399733 (n + 1) : ℚ)

end A399733

/-! ## A399733.P12653904906819298964

`A399735(n+1)*A399736(n+1)/A363289(n+1)`
-/

namespace A399733.P12653904906819298964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399735 (n + 1) * A399736 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P12653904906819298964

namespace A399733

/-- `A399735(n+1)*A399736(n+1)/A363289(n+1)` -/
def P12653904906819298964.Spec : Prop :=
  ∀ n, P12653904906819298964.a n = (A399733 (n + 1) : ℚ)

end A399733

/-! ## A399733.P2297214900273836729

`A399738(n+1)*A399739(n+1)/A363289(n+1)`
-/

namespace A399733.P2297214900273836729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399738 (n + 1) * A399739 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ)

end

end A399733.P2297214900273836729

namespace A399733

/-- `A399738(n+1)*A399739(n+1)/A363289(n+1)` -/
def P2297214900273836729.Spec : Prop :=
  ∀ n, P2297214900273836729.a n = (A399733 (n + 1) : ℚ)

end A399733

/-!
# A399734: The sum of the unitary divisors d of n such that n/d is a cubefull number (A036966).

The programs for A399734, the canonical program `A399734.P6634302789312156605` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399734 has offset 1).

The definition of A399734 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A399732, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399734.P6634302789312156605

`(n+1)*A034448(n+1)/A399732(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399734

/-- `(n+1)*A034448(n+1)/A399732(n+1)` -/
def P6634302789312156605.Spec : Prop :=
  ∀ n, P6634302789312156605.a n = (A399734 (n + 1) : ℚ)

end A399734

/-! ## A399734.P81468005045277162

`A360539(n+1)*A385048(n+1)`
-/

namespace A399734.P81468005045277162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360539 (n + 1) * A385048 (n + 1)

end

end A399734.P81468005045277162

namespace A399734

/-- `A360539(n+1)*A385048(n+1)` -/
def P81468005045277162.Spec : Prop :=
  ∀ n, P81468005045277162.a n = A399734 (n + 1)

end A399734

/-! ## A399734.P4718298845347777202

`A064971(n+1)/A399732(n+1)`
-/

namespace A399734.P4718298845347777202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399732 (n + 1) : ℚ)

end

end A399734.P4718298845347777202

namespace A399734

/-- `A064971(n+1)/A399732(n+1)` -/
def P4718298845347777202.Spec : Prop :=
  ∀ n, P4718298845347777202.a n = (A399734 (n + 1) : ℚ)

end A399734

/-! ## A399734.P1640271470037472004

`A399735(n+1)*A399736(n+1)/A399732(n+1)`
-/

namespace A399734.P1640271470037472004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399735 (n + 1) * A399736 (n + 1) : ℚ) / (A399732 (n + 1) : ℚ)

end

end A399734.P1640271470037472004

namespace A399734

/-- `A399735(n+1)*A399736(n+1)/A399732(n+1)` -/
def P1640271470037472004.Spec : Prop :=
  ∀ n, P1640271470037472004.a n = (A399734 (n + 1) : ℚ)

end A399734

/-! ## A399734.P13362762554109422083

`A360541(A360541(n+1))*A385048(n+1)`
-/

namespace A399734.P13362762554109422083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360541 (A360541 (n + 1)).toNat * A385048 (n + 1)

end

end A399734.P13362762554109422083

namespace A399734

/-- `A360541(A360541(n+1))*A385048(n+1)` -/
def P13362762554109422083.Spec : Prop :=
  ∀ n, P13362762554109422083.a n = A399734 (n + 1)

end A399734

/-!
# A399735: The sum of the unitary divisors d of n such that n/d is a square.

The programs for A399735, the canonical program `A399735.P12765208180898824886` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399735 has offset 1).

The definition of A399735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399735.P2265895746367355226

`(n+1)*A034448(n+1)/A399736(n+1)`
-/

namespace A399735.P2265895746367355226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A399736 (n + 1) : ℚ)

end

end A399735.P2265895746367355226

namespace A399735

/-- `(n+1)*A034448(n+1)/A399736(n+1)` -/
def P2265895746367355226.Spec : Prop :=
  ∀ n, P2265895746367355226.a n = (A399735 (n + 1) : ℚ)

end A399735

/-! ## A399735.P12765208180898824886

`A350389(n+1)*A358347(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399735

/-- `A350389(n+1)*A358347(n+1)` -/
def P12765208180898824886.Spec : Prop :=
  ∀ n, P12765208180898824886.a n = A399735 (n + 1)

theorem P12765208180898824886.correct : P12765208180898824886.Spec := by
  intro n
  simp only [A399735, Nat.add_sub_cancel]

end A399735

/-! ## A399735.P5293429941209553438

`A064971(1+n)/A399736(n+1)`
-/

namespace A399735.P5293429941209553438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (1 + n) : ℚ) / (A399736 (n + 1) : ℚ)

end

end A399735.P5293429941209553438

namespace A399735

/-- `A064971(1+n)/A399736(n+1)` -/
def P5293429941209553438.Spec : Prop :=
  ∀ n, P5293429941209553438.a n = (A399735 (n + 1) : ℚ)

end A399735

/-! ## A399735.P18080779692660007776

`(n+1)*A034448(n+1)/A399736(n+1)`
-/

namespace A399735.P18080779692660007776
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A034448 (n + 1) : ℚ) / (A399736 (n + 1) : ℚ))

end

end A399735.P18080779692660007776

namespace A399735

/-- `(n+1)*A034448(n+1)/A399736(n+1)` -/
def P18080779692660007776.Spec : Prop :=
  ∀ n, P18080779692660007776.a n = (A399735 (n + 1) : ℚ)

end A399735

/-! ## A399735.P15546346900973529374

`A034676(A071974(n+1))*A350389(n+1)`
-/

namespace A399735.P15546346900973529374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034676 (A071974 (n + 1)).toNat * A350389 (n + 1)

end

end A399735.P15546346900973529374

namespace A399735

/-- `A034676(A071974(n+1))*A350389(n+1)` -/
def P15546346900973529374.Spec : Prop :=
  ∀ n, P15546346900973529374.a n = A399735 (n + 1)

end A399735

/-! ## A399735.P2522569013339679924

`A399732(n+1)*A399734(n+1)/A399736(n+1)`
-/

namespace A399735.P2522569013339679924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A399736 (n + 1) : ℚ)

end

end A399735.P2522569013339679924

namespace A399735

/-- `A399732(n+1)*A399734(n+1)/A399736(n+1)` -/
def P2522569013339679924.Spec : Prop :=
  ∀ n, P2522569013339679924.a n = (A399735 (n + 1) : ℚ)

end A399735

/-! ## A399735.P1624392968465511877

`(2*A360160(n+1)-A360161(n+1))*A350389(n+1)`
-/

namespace A399735.P1624392968465511877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A360160 (n + 1) - A360161 (n + 1)) * A350389 (n + 1)

end

end A399735.P1624392968465511877

namespace A399735

/-- `(2*A360160(n+1)-A360161(n+1))*A350389(n+1)` -/
def P1624392968465511877.Spec : Prop :=
  ∀ n, P1624392968465511877.a n = A399735 (n + 1)

end A399735

/-! ## A399735.P11969447714711242966

`A071975((n+1)*A008833(n+1))*A358347(n+1)`
-/

namespace A399735.P11969447714711242966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 ((n + 1 : ℤ) * A008833 (n + 1)).toNat * A358347 (n + 1)

end

end A399735.P11969447714711242966

namespace A399735

/-- `A071975((n+1)*A008833(n+1))*A358347(n+1)` -/
def P11969447714711242966.Spec : Prop :=
  ∀ n, P11969447714711242966.a n = A399735 (n + 1)

end A399735

/-!
# A399736: The sum of the unitary divisors d of n such that n/d is an exponentially odd number (A268335).

The programs for A399736, the canonical program `A399736.P2270532128408335001` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399736 has offset 1).

The definition of A399736 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A399735, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399736.P2270532128408335001

`(n+1)*A034448(n+1)/A399735(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A399736

/-- `(n+1)*A034448(n+1)/A399735(n+1)` -/
def P2270532128408335001.Spec : Prop :=
  ∀ n, P2270532128408335001.a n = (A399736 (n + 1) : ℚ)

end A399736

/-! ## A399736.P5107954710195618590

`A350388(n+1)*A358346(n+1)`
-/

namespace A399736.P5107954710195618590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (n + 1) * A358346 (n + 1)

end

end A399736.P5107954710195618590

namespace A399736

/-- `A350388(n+1)*A358346(n+1)` -/
def P5107954710195618590.Spec : Prop :=
  ∀ n, P5107954710195618590.a n = A399736 (n + 1)

end A399736

/-! ## A399736.P6539907678497046973

`A064971(n+1)/A399735(n+1)`
-/

namespace A399736.P6539907678497046973
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399735 (n + 1) : ℚ)

end

end A399736.P6539907678497046973

namespace A399736

/-- `A064971(n+1)/A399735(n+1)` -/
def P6539907678497046973.Spec : Prop :=
  ∀ n, P6539907678497046973.a n = (A399736 (n + 1) : ℚ)

end A399736

/-! ## A399736.P10380726790422659123

`A358346(n+1)*(n+1)/A350389(n+1)`
-/

namespace A399736.P10380726790422659123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A358346 (n + 1) * (n + 1 : ℤ) : ℚ) / (A350389 (n + 1) : ℚ)

end

end A399736.P10380726790422659123

namespace A399736

/-- `A358346(n+1)*(n+1)/A350389(n+1)` -/
def P10380726790422659123.Spec : Prop :=
  ∀ n, P10380726790422659123.a n = (A399736 (n + 1) : ℚ)

end A399736

/-! ## A399736.P2951626204175578548

`∑{d}[n+1, A008836(#)*A362624((n+1)/#)]`
-/

namespace A399736.P2951626204175578548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A362624 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399736.P2951626204175578548

namespace A399736

/-- `∑{d}[n+1, A008836(#)*A362624((n+1)/#)]` -/
def P2951626204175578548.Spec : Prop :=
  ∀ n, P2951626204175578548.a n = A399736 (n + 1)

end A399736

/-! ## A399736.P7147650394642155805

`A034448(n+1)*A350388(n+1)/A358347(n+1)`
-/

namespace A399736.P7147650394642155805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) * A350388 (n + 1) : ℚ) / (A358347 (n + 1) : ℚ)

end

end A399736.P7147650394642155805

namespace A399736

/-- `A034448(n+1)*A350388(n+1)/A358347(n+1)` -/
def P7147650394642155805.Spec : Prop :=
  ∀ n, P7147650394642155805.a n = (A399736 (n + 1) : ℚ)

end A399736

/-! ## A399736.P871189807157670524

`A399732(n+1)*A399734(n+1)/A399735(n+1)`
-/

namespace A399736.P871189807157670524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A399735 (n + 1) : ℚ)

end

end A399736.P871189807157670524

namespace A399736

/-- `A399732(n+1)*A399734(n+1)/A399735(n+1)` -/
def P871189807157670524.Spec : Prop :=
  ∀ n, P871189807157670524.a n = (A399736 (n + 1) : ℚ)

end A399736

/-!
# A399737: The sum of the unitary divisors d of n such that n/d is a cube.

The programs for A399737, there is no canonical definition to state claims against.
-/

/-! ## A399737.P17963997917060656540

`A321649(A253249(n+1))+n`
-/

namespace A399737.P17963997917060656540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321649 (A253249 (n + 1)).toNat + (n : ℤ)

end

end A399737.P17963997917060656540

/-! ## A399737.P15028249638042291622

`C(A367512(n+1)*A382354(3*n+5), 2)+1+n`
-/

namespace A399737.P15028249638042291622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A367512 (n + 1) * A382354 (3 * n + 5)).toNat 2 + 1 + n

end

end A399737.P15028249638042291622

/-! ## A399737.P17815862250915664461

`A305149(A367513(A061537(n+1)))+n`
-/

namespace A399737.P17815862250915664461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305149 (A367513 (A061537 (n + 1)).toNat).toNat + (n : ℤ)

end

end A399737.P17815862250915664461

/-!
# A399738: The sum of the unitary divisors d of n such that n/d is odd.

The programs for A399738, the canonical program `A399738.P16302356862870445950` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399738 has offset 1).

The definition of A399738 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A360156, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399738.P16302356862870445950

`A360156(n+1)/2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A399738

/-- `A360156(n+1)/2` -/
def P16302356862870445950.Spec : Prop :=
  ∀ n, P16302356862870445950.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P17729545733901004759

`(n+1)*A034448(n+1)/A399739(n+1)`
-/

namespace A399738.P17729545733901004759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A034448 (n + 1) : ℚ) / (A399739 (n + 1) : ℚ)

end

end A399738.P17729545733901004759

namespace A399738

/-- `(n+1)*A034448(n+1)/A399739(n+1)` -/
def P17729545733901004759.Spec : Prop :=
  ∀ n, P17729545733901004759.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P18172319365757686087

`2^val(n+1, 2)*A192066(n+1)`
-/

namespace A399738.P18172319365757686087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A192066 (n + 1)

end

end A399738.P18172319365757686087

namespace A399738

/-- `2^val(n+1, 2)*A192066(n+1)` -/
def P18172319365757686087.Spec : Prop :=
  ∀ n, P18172319365757686087.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P4009288188697778760

`2^val(n+1, 2)*A034448((n+1)/2^val(n+1, 2))`
-/

namespace A399738.P4009288188697778760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A399738.P4009288188697778760

namespace A399738

/-- `2^val(n+1, 2)*A034448((n+1)/2^val(n+1, 2))` -/
def P4009288188697778760.Spec : Prop :=
  ∀ n, P4009288188697778760.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P7148580135009673508

`A006519(n+1)*A192066(n+1)`
-/

namespace A399738.P7148580135009673508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A192066 (n + 1)

end

end A399738.P7148580135009673508

namespace A399738

/-- `A006519(n+1)*A192066(n+1)` -/
def P7148580135009673508.Spec : Prop :=
  ∀ n, P7148580135009673508.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P16485470556562524118

`A064971(n+1)/A399739(n+1)`
-/

namespace A399738.P16485470556562524118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399739 (n + 1) : ℚ)

end

end A399738.P16485470556562524118

namespace A399738

/-- `A064971(n+1)/A399739(n+1)` -/
def P16485470556562524118.Spec : Prop :=
  ∀ n, P16485470556562524118.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P14373771964125185840

`A064971(n+1)%A360156(n+1)`
-/

namespace A399738.P14373771964125185840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064971 (n + 1)) (A360156 (n + 1))

end

end A399738.P14373771964125185840

namespace A399738

/-- `A064971(n+1)%A360156(n+1)` -/
def P14373771964125185840.Spec : Prop :=
  ∀ n, P14373771964125185840.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P10214521581350137648

`∑{d}[n+1, A309153(#)*A327278((n+1)/#)]`
-/

namespace A399738.P10214521581350137648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309153 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399738.P10214521581350137648

namespace A399738

/-- `∑{d}[n+1, A309153(#)*A327278((n+1)/#)]` -/
def P10214521581350137648.Spec : Prop :=
  ∀ n, P10214521581350137648.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P2147199307951179065

`A006519(n+1)*A034448(A000265(n+1))`
-/

namespace A399738.P2147199307951179065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A034448 (A000265 (n + 1)).toNat

end

end A399738.P2147199307951179065

namespace A399738

/-- `A006519(n+1)*A034448(A000265(n+1))` -/
def P2147199307951179065.Spec : Prop :=
  ∀ n, P2147199307951179065.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P7901269110903069344

`A363289(n+1)*A399733(n+1)/A399739(n+1)`
-/

namespace A399738.P7901269110903069344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363289 (n + 1) * A399733 (n + 1) : ℚ) / (A399739 (n + 1) : ℚ)

end

end A399738.P7901269110903069344

namespace A399738

/-- `A363289(n+1)*A399733(n+1)/A399739(n+1)` -/
def P7901269110903069344.Spec : Prop :=
  ∀ n, P7901269110903069344.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P4313092915356984896

`A399732(n+1)*A399734(n+1)/A399739(n+1)`
-/

namespace A399738.P4313092915356984896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A399739 (n + 1) : ℚ)

end

end A399738.P4313092915356984896

namespace A399738

/-- `A399732(n+1)*A399734(n+1)/A399739(n+1)` -/
def P4313092915356984896.Spec : Prop :=
  ∀ n, P4313092915356984896.a n = (A399738 (n + 1) : ℚ)

end A399738

/-! ## A399738.P12891448199797955551

`A001281(A360156(n+1))`
-/

namespace A399738.P12891448199797955551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A360156 (n + 1)).toNat

end

end A399738.P12891448199797955551

namespace A399738

/-- `A001281(A360156(n+1))` -/
def P12891448199797955551.Spec : Prop :=
  ∀ n, P12891448199797955551.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P272044374733215364

`A123108(A360156(n+1)+1)`
-/

namespace A399738.P272044374733215364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A360156 (n + 1) + 1).toNat

end

end A399738.P272044374733215364

namespace A399738

/-- `A123108(A360156(n+1)+1)` -/
def P272044374733215364.Spec : Prop :=
  ∀ n, P272044374733215364.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P13715146203900067335

`A065033(A360156(n+1)-1)`
-/

namespace A399738.P13715146203900067335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A360156 (n + 1) - 1).toNat

end

end A399738.P13715146203900067335

namespace A399738

/-- `A065033(A360156(n+1)-1)` -/
def P13715146203900067335.Spec : Prop :=
  ∀ n, P13715146203900067335.a n = A399738 (n + 1)

end A399738

/-! ## A399738.P9962776995964593264

`A384056((n+1)²)/A384056(n+1)`
-/

namespace A399738.P9962776995964593264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A384056 ((n + 1) ^ 2) : ℚ) / (A384056 (n + 1) : ℚ)

end

end A399738.P9962776995964593264

namespace A399738

/-- `A384056((n+1)²)/A384056(n+1)` -/
def P9962776995964593264.Spec : Prop :=
  ∀ n, P9962776995964593264.a n = (A399738 (n + 1) : ℚ)

end A399738

/-!
# A399739: The sum of the unitary divisors d of n such that n/d is a power of 2.

The programs for A399739, the canonical program `A399739.P5287244572555997203` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399739 has offset 1).

The definition of A399739 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A399738, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A399739.P5287244572555997203

`(n+1)*A034448(n+1)/A399738(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A399739

/-- `(n+1)*A034448(n+1)/A399738(n+1)` -/
def P5287244572555997203.Spec : Prop :=
  ∀ n, P5287244572555997203.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P217630340764881908

`(n+1)/2^val(n+1, 2)*and(1, n)+1+n`
-/

namespace A399739.P217630340764881908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (Nat.land 1 n : ℚ) + 1 + (n : ℚ)

end

end A399739.P217630340764881908

namespace A399739

/-- `(n+1)/2^val(n+1, 2)*and(1, n)+1+n` -/
def P217630340764881908.Spec : Prop :=
  ∀ n, P217630340764881908.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P15958845910876967855

`(n+1)/2^val(n+1, 2)*or(1, 2^val(n+1, 2))`
-/

namespace A399739.P15958845910876967855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (Nat.lor 1 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A399739.P15958845910876967855

namespace A399739

/-- `(n+1)/2^val(n+1, 2)*or(1, 2^val(n+1, 2))` -/
def P15958845910876967855.Spec : Prop :=
  ∀ n, P15958845910876967855.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P3100735875990503978

`a(floor(n/2))*n%2+n+1-(n+1)/2*floor(n%4/3)` with `a(0)=1`
-/

namespace A399739.P3100735875990503978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * ((n % 2 : ℕ) : ℚ) + ((n + 1 : ℚ) - (n + 1 : ℚ) / 2 * (⌊((n % 4 : ℕ) : ℚ) / 3⌋ : ℚ))

end

end A399739.P3100735875990503978

namespace A399739

/-- `a(floor(n/2))*n%2+n+1-(n+1)/2*floor(n%4/3)` -/
def P3100735875990503978.Spec : Prop :=
  ∀ n, P3100735875990503978.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P2293228649595406557

`2*(1+n)-A384055(n+1)`
-/

namespace A399739.P2293228649595406557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (1 + n) : ℤ) - A384055 (n + 1)

end

end A399739.P2293228649595406557

namespace A399739

/-- `2*(1+n)-A384055(n+1)` -/
def P2293228649595406557.Spec : Prop :=
  ∀ n, P2293228649595406557.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P12091685531994443465

`A069834(n+1)%(2*(n+1))`
-/

namespace A399739.P12091685531994443465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069834 (n + 1)) (2 * (n + 1) : ℤ)

end

end A399739.P12091685531994443465

namespace A399739

/-- `A069834(n+1)%(2*(n+1))` -/
def P12091685531994443465.Spec : Prop :=
  ∀ n, P12091685531994443465.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P17945482800827166587

`1+A000265(n+1)%(n+1)+n`
-/

namespace A399739.P17945482800827166587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + Int.tmod (A000265 (n + 1)) (n + 1 : ℤ) + (n : ℤ)

end

end A399739.P17945482800827166587

namespace A399739

/-- `1+A000265(n+1)%(n+1)+n` -/
def P17945482800827166587.Spec : Prop :=
  ∀ n, P17945482800827166587.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P4266757548469987358

`(A028234(n+1)+1)^(n%2)+n`
-/

namespace A399739.P4266757548469987358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028234 (n + 1) + 1) ^ (n % 2) + (n : ℤ)

end

end A399739.P4266757548469987358

namespace A399739

/-- `(A028234(n+1)+1)^(n%2)+n` -/
def P4266757548469987358.Spec : Prop :=
  ∀ n, P4266757548469987358.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P7489483150689725234

`A000265((n+1)/2^val(n+1, 2)+n+1)`
-/

namespace A399739.P7489483150689725234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + (n + 1 : ℚ))).toNat

end

end A399739.P7489483150689725234

namespace A399739

/-- `A000265((n+1)/2^val(n+1, 2)+n+1)` -/
def P7489483150689725234.Spec : Prop :=
  ∀ n, P7489483150689725234.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P17055452763130052083

`(n+1)/2^val(n+1, 2)*A034448(2^val(n+1, 2))`
-/

namespace A399739.P17055452763130052083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A034448 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A399739.P17055452763130052083

namespace A399739

/-- `(n+1)/2^val(n+1, 2)*A034448(2^val(n+1, 2))` -/
def P17055452763130052083.Spec : Prop :=
  ∀ n, P17055452763130052083.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P8717713314721643249

`(n+1)/2^val(n+1, 2)*A109613(2^val(n+1, 2))`
-/

namespace A399739.P8717713314721643249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) * (A109613 (2 ^ SequenceMachineLib.valuation (n + 1) 2) : ℚ)

end

end A399739.P8717713314721643249

namespace A399739

/-- `(n+1)/2^val(n+1, 2)*A109613(2^val(n+1, 2))` -/
def P8717713314721643249.Spec : Prop :=
  ∀ n, P8717713314721643249.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P10581621605090416272

`A000265(A153733(n)+n+2)`
-/

namespace A399739.P10581621605090416272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A153733 n + (n + 2 : ℤ)).toNat

end

end A399739.P10581621605090416272

namespace A399739

/-- `A000265(A153733(n)+n+2)` -/
def P10581621605090416272.Spec : Prop :=
  ∀ n, P10581621605090416272.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P459375036914338982

`A000265(A000265(n+1)+1+n)`
-/

namespace A399739.P459375036914338982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A000265 (n + 1) + 1 + (n : ℤ)).toNat

end

end A399739.P459375036914338982

namespace A399739

/-- `A000265(A000265(n+1)+1+n)` -/
def P459375036914338982.Spec : Prop :=
  ∀ n, P459375036914338982.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P3069658923954975045

`A331739(n+1)+A259445(n+1)`
-/

namespace A399739.P3069658923954975045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331739 (n + 1) + A259445 (n + 1)

end

end A399739.P3069658923954975045

namespace A399739

/-- `A331739(n+1)+A259445(n+1)` -/
def P3069658923954975045.Spec : Prop :=
  ∀ n, P3069658923954975045.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P13459258045971521455

`A064971(n+1)/A399738(n+1)`
-/

namespace A399739.P13459258045971521455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (A399738 (n + 1) : ℚ)

end

end A399739.P13459258045971521455

namespace A399739

/-- `A064971(n+1)/A399738(n+1)` -/
def P13459258045971521455.Spec : Prop :=
  ∀ n, P13459258045971521455.a n = (A399739 (n + 1) : ℚ)

end A399739

/-! ## A399739.P201531896180543720

`∑{d}[n+1, A069184(#)*A087003((n+1)/#)]`
-/

namespace A399739.P201531896180543720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069184 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399739.P201531896180543720

namespace A399739

/-- `∑{d}[n+1, A069184(#)*A087003((n+1)/#)]` -/
def P201531896180543720.Spec : Prop :=
  ∀ n, P201531896180543720.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P13056766554565920768

`∑{d}[n+1, A361019(#)*A394790((n+1)/#)]`
-/

namespace A399739.P13056766554565920768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A361019 d * A394790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399739.P13056766554565920768

namespace A399739

/-- `∑{d}[n+1, A361019(#)*A394790((n+1)/#)]` -/
def P13056766554565920768.Spec : Prop :=
  ∀ n, P13056766554565920768.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P12011116738586094038

`∑{d}[n+1, A036987(#-1)*A186646((n+1)/#)]`
-/

namespace A399739.P12011116738586094038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A186646 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399739.P12011116738586094038

namespace A399739

/-- `∑{d}[n+1, A036987(#-1)*A186646((n+1)/#)]` -/
def P12011116738586094038.Spec : Prop :=
  ∀ n, P12011116738586094038.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P8100369904479643282

`A000265(A285326(A000265(n+1))+n)`
-/

namespace A399739.P8100369904479643282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A285326 (A000265 (n + 1)).toNat + (n : ℤ)).toNat

end

end A399739.P8100369904479643282

namespace A399739

/-- `A000265(A285326(A000265(n+1))+n)` -/
def P8100369904479643282.Spec : Prop :=
  ∀ n, P8100369904479643282.a n = A399739 (n + 1)

end A399739

/-! ## A399739.P6026168501499949482

`Δ[A110660(n)]+(n+1)/2^val(n+1, 2)`
-/

namespace A399739.P6026168501499949482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110660 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

end

end A399739.P6026168501499949482

namespace A399739

/-- `Δ[A110660(n)]+(n+1)/2^val(n+1, 2)` -/
def P6026168501499949482.Spec : Prop :=
  ∀ n, P6026168501499949482.a n = (A399739 (n + 1) : ℚ)

end A399739

/-!
# A399740: The sum of the unitary divisors d of n such that n/d is a perfect power (A001597).

The programs for A399740, there is no canonical definition to state claims against.
-/

/-! ## A399740.P18001848570070195683

`A399733(n+1)%A236640(n+1)`
-/

namespace A399740.P18001848570070195683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399733 (n + 1)) (A236640 (n + 1))

end

end A399740.P18001848570070195683

/-! ## A399740.P4390802654184184043

`A399733(n+1)+A001842(A001844(n))`
-/

namespace A399740.P4390802654184184043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399733 (n + 1) + A001842 (A001844 n).toNat

end

end A399740.P4390802654184184043

/-! ## A399740.P17286977954082099

`A399733(1+n)+A377131(A335465(n))`
-/

namespace A399740.P17286977954082099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399733 (1 + n) + A377131 (A335465 n).toNat

end

end A399740.P17286977954082099

/-! ## A399740.P15159554765533032340

`A057427(A028657(n))*A399733(n+1)`
-/

namespace A399740.P15159554765533032340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A028657 n).toNat * A399733 (n + 1)

end

end A399740.P15159554765533032340

/-! ## A399740.P8898218510726581460

`A340785(A273384(n))*A399733(n+1)`
-/

namespace A399740.P8898218510726581460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340785 (A273384 n).toNat * A399733 (n + 1)

end

end A399740.P8898218510726581460

/-! ## A399740.P10956899339278749042

`A399733(n+1)+A000007(A076349(n+1))`
-/

namespace A399740.P10956899339278749042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399733 (n + 1) + A000007 (A076349 (n + 1)).toNat

end

end A399740.P10956899339278749042

/-! ## A399740.P12318614347814715163

`(A399732(n+1)*A399734(n+1)/A363289(n+1))%A191912(n+1)`
-/

namespace A399740.P12318614347814715163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A399732 (n + 1) * A399734 (n + 1) : ℚ) / (A363289 (n + 1) : ℚ))) (A191912 (n + 1))

end

end A399740.P12318614347814715163

/-! ## A399740.P17136241820620328756

`A399733(∑[4*n+1])/A399733(2*n+1)`
-/

namespace A399740.P17136241820620328756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399733 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A399733 (2 * n + 1) : ℚ)

end

end A399740.P17136241820620328756

/-! ## A399740.P4707200536828331268

`A399733(n+1)%A033548(A094442(n))`
-/

namespace A399740.P4707200536828331268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A399733 (n + 1)) (A033548 (A094442 n).toNat)

end

end A399740.P4707200536828331268

/-! ## A399740.P7667998988787178554

`A399733(n+1)-A000007(A318037(n+1))`
-/

namespace A399740.P7667998988787178554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399733 (n + 1) - A000007 (A318037 (n + 1)).toNat

end

end A399740.P7667998988787178554

/-!
# A399742: Table of B(n, m) read by antidiagonals: B(n, m) = Sum_{k=0..m-1} binomial(k+n, n) * 2^k and B(n, 0) = 0, for n >= 0, m >= 0.

The programs for A399742, the canonical program `A399742.P12674386564686535397` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399742 has offset 0).

The definition of A399742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399742.P2150714240674843462

`char[∑[n]]+T(n-1,k-1)+2*T(n-1,k)` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A399742.P2150714240674843462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + (SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp a n)

end

end A399742.P2150714240674843462

namespace A399742

/-- `char[∑[n]]+T(n-1,k-1)+2*T(n-1,k)` -/
def P2150714240674843462.Spec : Prop :=
  ∀ n, (P2150714240674843462.a n : ℤ) = A399742 n

end A399742

/-! ## A399742.P3021045210808946356

`3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)-T(n-2,k-1)` with `a(0)=0, a(1)=1`
-/

namespace A399742.P3021045210808946356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 * SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n - 2 * SequenceMachineLib.triUp2 a n - SequenceMachineLib.triUp2Left a n

end

end A399742.P3021045210808946356

namespace A399742

/-- `3*T(n-1,k)+T(n-1,k-1)-2*T(n-2,k)-T(n-2,k-1)` -/
def P3021045210808946356.Spec : Prop :=
  ∀ n, P3021045210808946356.a n = A399742 n

end A399742

/-! ## A399742.P16564024366182563920

`A010054(n)+T(n-1,k-1)+2*T(n-1,k)` with `a(0)=0, a(1)=1`
-/

namespace A399742.P16564024366182563920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A010054 n + SequenceMachineLib.triUpLeft a n + 2 * SequenceMachineLib.triUp a n

end

end A399742.P16564024366182563920

namespace A399742

/-- `A010054(n)+T(n-1,k-1)+2*T(n-1,k)` -/
def P16564024366182563920.Spec : Prop :=
  ∀ n, P16564024366182563920.a n = A399742 n

end A399742

/-! ## A399742.P4894695385207594843

`A200139(n)+T(n-1,k)+T(n-1,k-1)-a(n-1)` with `a(0)=0`
-/

namespace A399742.P4894695385207594843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A200139 n + (SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n) - a (n - 1)

end

end A399742.P4894695385207594843

namespace A399742

/-- `A200139(n)+T(n-1,k)+T(n-1,k-1)-a(n-1)` -/
def P4894695385207594843.Spec : Prop :=
  ∀ n, P4894695385207594843.a n = A399742 n

end A399742

/-! ## A399742.P9472778894708422167

`A038207(n)-A112857(n)`
-/

namespace A399742.P9472778894708422167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - A112857 n

end

end A399742.P9472778894708422167

namespace A399742

/-- `A038207(n)-A112857(n)` -/
def P9472778894708422167.Spec : Prop :=
  ∀ n, P9472778894708422167.a n = A399742 n

end A399742

/-! ## A399742.P12674386564686535397

`A193845(n)-A038207(n)`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A399742

/-- `A193845(n)-A038207(n)` -/
def P12674386564686535397.Spec : Prop :=
  ∀ n, P12674386564686535397.a n = A399742 n

theorem P12674386564686535397.correct : P12674386564686535397.Spec := by
  intro n
  simp only [A399742]

end A399742

/-! ## A399742.P16691459816312233669

`A038207(n)-abs(A118801(n))`
-/

namespace A399742.P16691459816312233669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n - |A118801 n|

end

end A399742.P16691459816312233669

namespace A399742

/-- `A038207(n)-abs(A118801(n))` -/
def P16691459816312233669.Spec : Prop :=
  ∀ n, P16691459816312233669.a n = A399742 n

end A399742

/-! ## A399742.P1167809447618141455

`A115068(n+1)-A105728(n+1)`
-/

namespace A399742.P1167809447618141455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115068 (n + 1) - A105728 (n + 1)

end

end A399742.P1167809447618141455

namespace A399742

/-- `A115068(n+1)-A105728(n+1)` -/
def P1167809447618141455.Spec : Prop :=
  ∀ n, P1167809447618141455.a n = A399742 n

end A399742

/-! ## A399742.P3404828967289222211

`A105728(n+2)-A119468(n)`
-/

namespace A399742.P3404828967289222211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105728 (n + 2) - A119468 n

end

end A399742.P3404828967289222211

namespace A399742

/-- `A105728(n+2)-A119468(n)` -/
def P3404828967289222211.Spec : Prop :=
  ∀ n, P3404828967289222211.a n = A399742 n

end A399742

/-! ## A399742.P2710920684029684407

`A112857(n+1)-A010054(n+1)`
-/

namespace A399742.P2710920684029684407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112857 (n + 1) - A010054 (n + 1)

end

end A399742.P2710920684029684407

namespace A399742

/-- `A112857(n+1)-A010054(n+1)` -/
def P2710920684029684407.Spec : Prop :=
  ∀ n, P2710920684029684407.a n = A399742 n

end A399742

/-! ## A399742.P9236945139628357958

`A210204(n+1)-A249758(n)`
-/

namespace A399742.P9236945139628357958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210204 (n + 1) - A249758 n

end

end A399742.P9236945139628357958

namespace A399742

/-- `A210204(n+1)-A249758(n)` -/
def P9236945139628357958.Spec : Prop :=
  ∀ n, P9236945139628357958.a n = A399742 n

end A399742

/-!
# A399746: Number of n-digit Proth numbers.

The programs for A399746, there is no canonical definition to state claims against.
-/

/-! ## A399746.P10984483654273144902

`∑[A289831(A293143(n)+A119879(n))]`
-/

namespace A399746.P10984483654273144902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289831 (A293143 n + A119879 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399746.P10984483654273144902

/-!
# A399747: The sum of divisors d of n such that n/d is a perfect power (A001597).

The programs for A399747, the canonical program `A399747.P17310883521128029216` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399747 has offset 1).

The definition of A399747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399747.P4948307444397092481

`∑{d}[n+1, A399748(#)]`
-/

namespace A399747.P4948307444397092481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A399748 d

end

end A399747.P4948307444397092481

namespace A399747

/-- `∑{d}[n+1, A399748(#)]` -/
def P4948307444397092481.Spec : Prop :=
  ∀ n, P4948307444397092481.a n = A399747 (n + 1)

end A399747

/-! ## A399747.P17310883521128029216

`∑{d}[n+1, #*A075802((n+1)/#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399747

/-- `∑{d}[n+1, #*A075802((n+1)/#)]` -/
def P17310883521128029216.Spec : Prop :=
  ∀ n, P17310883521128029216.a n = A399747 (n + 1)

theorem P17310883521128029216.correct : P17310883521128029216.Spec := by
  intro n
  simp only [A399747, Nat.add_sub_cancel]

end A399747

/-! ## A399747.P11194986539962870072

`∑{d}[n+1, A000010(#)*A091050((n+1)/#)]`
-/

namespace A399747.P11194986539962870072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A091050 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399747.P11194986539962870072

namespace A399747

/-- `∑{d}[n+1, A000010(#)*A091050((n+1)/#)]` -/
def P11194986539962870072.Spec : Prop :=
  ∀ n, P11194986539962870072.a n = A399747 (n + 1)

end A399747

/-! ## A399747.P9872138653442556715

`∑{d}[n+1, A206369(#)*A304327((n+1)/#)]`
-/

namespace A399747.P9872138653442556715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A304327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399747.P9872138653442556715

namespace A399747

/-- `∑{d}[n+1, A206369(#)*A304327((n+1)/#)]` -/
def P9872138653442556715.Spec : Prop :=
  ∀ n, P9872138653442556715.a n = A399747 (n + 1)

end A399747

/-!
# A399748: The number of integers k from 1 to n such that gcd(n,k) is a perfect power (A001597).

The programs for A399748, the canonical program `A399748.P7728002996692195864` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399748 has offset 1).

The definition of A399748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399748.P7728002996692195864

`∑{d}[n+1, A000010(#)*A075802((n+1)/#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A399748

/-- `∑{d}[n+1, A000010(#)*A075802((n+1)/#)]` -/
def P7728002996692195864.Spec : Prop :=
  ∀ n, P7728002996692195864.a n = A399748 (n + 1)

theorem P7728002996692195864.correct : P7728002996692195864.Spec := by
  intro n
  simp only [A399748, Nat.add_sub_cancel]

end A399748

/-! ## A399748.P15107455396437478984

`∑{d}[n+1, A074722(#)*A304327((n+1)/#)]`
-/

namespace A399748.P15107455396437478984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A304327 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399748.P15107455396437478984

namespace A399748

/-- `∑{d}[n+1, A074722(#)*A304327((n+1)/#)]` -/
def P15107455396437478984.Spec : Prop :=
  ∀ n, P15107455396437478984.a n = A399748 (n + 1)

end A399748

/-! ## A399748.P15849923933593801456

`∑{d}[n+1, A008683(#)*A399747((n+1)/#)]`
-/

namespace A399748.P15849923933593801456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A399747 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A399748.P15849923933593801456

namespace A399748

/-- `∑{d}[n+1, A008683(#)*A399747((n+1)/#)]` -/
def P15849923933593801456.Spec : Prop :=
  ∀ n, P15849923933593801456.a n = A399748 (n + 1)

end A399748

/-!
# A399754: Near-repdigit Smith numbers.

The programs for A399754, there is no canonical definition to state claims against.
-/

/-! ## A399754.P10115678277982577741

`∩[A006753(n+1), A210666(n+1)]`
-/

namespace A399754.P10115678277982577741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A399754.P10115678277982577741

/-!
# A399755: Numbers k such that the generalized Pell equation x^2-(k^2+1)*(y^2+1) = 0 has more than one fundamental solution in (x, y).

The programs for A399755, there is no canonical definition to state claims against.
-/

/-! ## A399755.P14635723397165978997

`lt[A399491(n+1), A140681(n)]+1`
-/

namespace A399755.P14635723397165978997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140681 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A399755.P14635723397165978997

/-! ## A399755.P12021020997714553619

`lt[A399491(n+1), A003154(n+1)]+1`
-/

namespace A399755.P12021020997714553619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003154 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A399755.P12021020997714553619

/-! ## A399755.P14681599352249062349

`lt[A399491(n+1), A144390(n+1)]+1`
-/

namespace A399755.P14681599352249062349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144390 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A399755.P14681599352249062349

/-! ## A399755.P6778769851274984286

`lt[A399491(n+1), A085787(n+2)]+1`
-/

namespace A399755.P6778769851274984286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085787 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A399755.P6778769851274984286

/-! ## A399755.P717115548430019574

`lt[A399491(n+1), A328727(3*n+5)]+1`
-/

namespace A399755.P717115548430019574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328727 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A399755.P717115548430019574

/-!
# A399756: Numbers k such that 2^k-2 is a practical number.

The programs for A399756, there is no canonical definition to state claims against.
-/

/-! ## A399756.P14765329475297931309

`lt[A003313(n+1), A299201(3*(n+1))]+2`
-/

namespace A399756.P14765329475297931309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299201 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A399756.P14765329475297931309

/-! ## A399756.P6672083649157910644

`A002202(A020753(n+1))+1`
-/

namespace A399756.P6672083649157910644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (A020753 (n + 1)).toNat + 1

end

end A399756.P6672083649157910644

/-! ## A399756.P14412813410519934857

`(A093891(n+1)+1)%A141214(2*n+1)`
-/

namespace A399756.P14412813410519934857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093891 (n + 1) + 1) (A141214 (2 * n + 1))

end

end A399756.P14412813410519934857

/-! ## A399756.P865547675468861344

`A093891(n+1)+A000035(A016922(n))`
-/

namespace A399756.P865547675468861344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093891 (n + 1) + A000035 (A016922 n).toNat

end

end A399756.P865547675468861344

/-! ## A399756.P5504374548187051374

`A204112(A023421(n))+A093891(n+1)`
-/

namespace A399756.P5504374548187051374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204112 (A023421 n).toNat + A093891 (n + 1)

end

end A399756.P5504374548187051374

/-!
# A399759: Number of rooted unlabeled cacti with blocks of sizes 5, 6 and 7, having n blocks.

The programs for A399759, there is no canonical definition to state claims against.
-/

/-! ## A399759.P2817923880325541577

`A094417(n)-A181834(A352283(n))`
-/

namespace A399759.P2817923880325541577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094417 n - A181834 (A352283 n).toNat

end

end A399759.P2817923880325541577

/-!
# A399763: a(n) = index of first appearance of a building of height n in the city-building sequence A400000.

The programs for A399763, there is no canonical definition to state claims against.
-/

/-! ## A399763.P15852332524341614943

`A400121(A399965(n))`
-/

namespace A399763.P15852332524341614943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400121 (A399965 n).toNat

end

end A399763.P15852332524341614943

/-! ## A399763.P13839570821367301272

`fo[A400000(n+1)]+1`
-/

namespace A399763.P13839570821367301272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A399763.P13839570821367301272

/-! ## A399763.P12604654351215374714

`A400121(lt[A397493(n), 8])`
-/

namespace A399763.P12604654351215374714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397493 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400121 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A399763.P12604654351215374714

/-!
# A399764: The main diagonal of the infinite Tchoukaillon array.

The programs for A399764, there is no canonical definition to state claims against.
-/

/-! ## A399764.P14353639282373419057

`eq[1+n, A399877(n+1)]+1`
-/

namespace A399764.P14353639282373419057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399877 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A399764.P14353639282373419057

/-! ## A399764.P6605614083633122006

`eq[A399873(n+1), A399874(n+1)]+1`
-/

namespace A399764.P6605614083633122006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A399764.P6605614083633122006

/-! ## A399764.P6104379146871074011

`A344009((n+1)²+n²)`
-/

namespace A399764.P6104379146871074011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 ((n + 1) ^ 2 + n ^ 2)

end

end A399764.P6104379146871074011

/-! ## A399764.P11748959819102888646

`A344009(A001844(n))+A061858(n)`
-/

namespace A399764.P11748959819102888646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 (A001844 n).toNat + A061858 n

end

end A399764.P11748959819102888646

/-! ## A399764.P5092106673414810911

`A344009(A001844(n))+A178798(n)`
-/

namespace A399764.P5092106673414810911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344009 (A001844 n).toNat + A178798 n

end

end A399764.P5092106673414810911

/-!
# A399766: Number of unlabeled directed strongly regular graphs on n vertices.

The programs for A399766, there is no canonical definition to state claims against.
-/

/-! ## A399766.P14454380952553912000

`A199571(A338805(n+2))`
-/

namespace A399766.P14454380952553912000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199571 (A338805 (n + 2)).toNat

end

end A399766.P14454380952553912000

/-! ## A399766.P14729504954067399855

`A319672(n)%A229555(A238439(n))`
-/

namespace A399766.P14729504954067399855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319672 n) (A229555 (A238439 n).toNat)

end

end A399766.P14729504954067399855

/-! ## A399766.P11593101110716153459

`A383706(A331415(n+1)+A123104(n))`
-/

namespace A399766.P11593101110716153459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (A331415 (n + 1) + A123104 (n + 31)).toNat

end

end A399766.P11593101110716153459

/-! ## A399766.P13175935151264451885

`A006513(n+4)*A333755(A354788(n))`
-/

namespace A399766.P13175935151264451885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006513 (n + 4) * A333755 (A354788 n).toNat

end

end A399766.P13175935151264451885

/-! ## A399766.P9443640025280579464

`and(A000123(n), A345182(A007553(n+2)))`
-/

namespace A399766.P9443640025280579464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000123 n) (A345182 (A007553 (n + 2)).toNat)

end

end A399766.P9443640025280579464

/-!
# A399767: Number of transitive relations on unlabeled points with no isolated point and no connected component consisting of a single arrow, having defect n, where the defect of a relation with v points and e related pairs is 2*e - v.

The programs for A399767, there is no canonical definition to state claims against.
-/

/-! ## A399767.P16517305957515923731

`A007051(n+1)-A244160(A385310(n+1))`
-/

namespace A399767.P16517305957515923731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) - A244160 (A385310 (n + 1)).toNat

end

end A399767.P16517305957515923731

/-! ## A399767.P14546989910979366062

`A100196(A329745(3*n+2))+A020084(n)`
-/

namespace A399767.P14546989910979366062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A329745 (3 * n + 2)).toNat + A020084 n

end

end A399767.P14546989910979366062

/-!
# A399769: Maximum length of a strictly increasing sequence of positive divisors d_1, ..., d_k of n such that d_i divides d_{i+1} - 1 for 1 <= i < k.

The programs for A399769, there is no canonical definition to state claims against.
-/

/-! ## A399769.P10526531798544596279

`A384237((n+1)^A385392(2*(n+1)))`
-/

namespace A399769.P10526531798544596279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A385392 (2 * (n + 1)) : ℤ))).toNat

end

end A399769.P10526531798544596279

/-! ## A399769.P12964756079781087062

`A163671(n+1)-A247223(A203299(n+2))`
-/

namespace A399769.P12964756079781087062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163671 (n + 1) - A247223 (A203299 (n + 2)).toNat

end

end A399769.P12964756079781087062

/-! ## A399769.P15810110164912844460

`A384237(A038770(n+1)^A237271(n+1))`
-/

namespace A399769.P15810110164912844460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384237 (SequenceMachineLib.roundAway ((A038770 (n + 1) : ℚ) ^ (A237271 (n + 1) : ℤ))).toNat

end

end A399769.P15810110164912844460

/-! ## A399769.P2348515772333550010

`A330549(A097331(n+2))+A163671(n+1)`
-/

namespace A399769.P2348515772333550010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330549 (A097331 (n + 2)).toNat + A163671 (n + 1)

end

end A399769.P2348515772333550010

/-! ## A399769.P5719533714597968086

`A067131(A333492(n+1))`
-/

namespace A399769.P5719533714597968086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067131 (A333492 (n + 1)).toNat

end

end A399769.P5719533714597968086

/-!
# A399770: Number of ways to cut a right triangle into n self-similar parts.

The programs for A399770, there is no canonical definition to state claims against.
-/

/-! ## A399770.P6513953776328168796

`A002156(A000142(n))-A303543(A000010(n+1))`
-/

namespace A399770.P6513953776328168796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002156 (A000142 n).toNat - A303543 (A000010 (n + 1)).toNat

end

end A399770.P6513953776328168796

/-! ## A399770.P18160293368623219095

`row(A000961(A214899(C(n+1, 2))))`
-/

namespace A399770.P18160293368623219095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (A000961 (A214899 (Nat.choose (n + 1) 2)).toNat).toNat

end

end A399770.P18160293368623219095

/-!
# A399771: Number of connected transitive relations on unlabeled points with no isolated point, having defect n, where the defect of a relation with v points and e related pairs is 2*e - v.

The programs for A399771, there is no canonical definition to state claims against.
-/

/-! ## A399771.P3381740974207340606

`A258632(A160823(n+1))`
-/

namespace A399771.P3381740974207340606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258632 (A160823 (n + 1)).toNat

end

end A399771.P3381740974207340606

/-! ## A399771.P11386253886816359207

`A003056(A046235(n+1))+A000005(n+1)`
-/

namespace A399771.P11386253886816359207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A046235 (n + 1)).toNat + A000005 (n + 1)

end

end A399771.P11386253886816359207

/-! ## A399771.P1921124410668636984

`A356841(A072374(n+1))+A072374(n+1)`
-/

namespace A399771.P1921124410668636984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356841 (A072374 (n + 1)).toNat + A072374 (n + 1)

end

end A399771.P1921124410668636984

/-!
# A399772: Number of labeled directed strongly regular graphs on n vertices.

The programs for A399772, there is no canonical definition to state claims against.
-/

/-! ## A399772.P14077192702453230660

`C(∏[n!%2+n], A111528(A005250(n+4)))`
-/

namespace A399772.P14077192702453230660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j) (A111528 (A005250 (n + 4)).toNat).toNat

end

end A399772.P14077192702453230660

/-! ## A399772.P15475553013675438486

`A022998(A000142(n)*A209402(n))`
-/

namespace A399772.P15475553013675438486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A000142 n * A209402 n).toNat

end

end A399772.P15475553013675438486

/-! ## A399772.P3767093582781838698

`A042948(A000142(n)*A209402(n))`
-/

namespace A399772.P3767093582781838698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A000142 n * A209402 n).toNat

end

end A399772.P3767093582781838698

/-! ## A399772.P11773153946275891193

`A001227(A001003(n))*A392935(n)`
-/

namespace A399772.P11773153946275891193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A001003 n).toNat * A392935 n

end

end A399772.P11773153946275891193

/-!
# A399773: a(1) = a(2) = 1; for n > 2, a(n) = a(a(n-1)) + a(n-a(n-1)) + (-1)^n.

The programs for A399773, the canonical program `A399773.P204488252996263267` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399773 has offset 1).

The definition of A399773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` (program `A399773.P204488252996263267`, by `A399773.P204488252996263267.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399773.P204488252996263267

`a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399773

/-- `a(a(n-1)-1)+a(n-a(n-1))+(-1)^(n+1)` -/
def P204488252996263267.Spec : Prop :=
  ∀ n, P204488252996263267.a n = A399773 (n + 1)

theorem P204488252996263267.correct : P204488252996263267.Spec := by
  intro n
  simp only [A399773, Nat.add_sub_cancel]

end A399773

/-!
# A399774: Number of nonisomorphic primitive strongly regular graphs on n vertices.

The programs for A399774, there is no canonical definition to state claims against.
-/

/-! ## A399774.P9664720391134732208

`A088741(n+1)-A325765(n)`
-/

namespace A399774.P9664720391134732208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088741 (n + 1) - A325765 n

end

end A399774.P9664720391134732208

/-! ## A399774.P12820571765704837766

`A076435(n+1)-A000005(n+1)+1-A325765(n)`
-/

namespace A399774.P12820571765704837766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076435 (n + 1) - A000005 (n + 1) + 1 - A325765 n

end

end A399774.P12820571765704837766

/-! ## A399774.P2029223278092174623

`A076435(n+1)-A068407(A000005(n+1))-A325765(n)`
-/

namespace A399774.P2029223278092174623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076435 (n + 1) - A068407 (A000005 (n + 1)).toNat - A325765 n

end

end A399774.P2029223278092174623

/-! ## A399774.P18349781206281658648

`and(A053506(A319193(n+1)), A141214(2*(n+2)))`
-/

namespace A399774.P18349781206281658648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053506 (A319193 (n + 1)).toNat) (A141214 (2 * (n + 2)))

end

end A399774.P18349781206281658648

/-!
# A399776: a(n) = 8*a(n-1) + 10*a(n-2), with a(0)=1 and a(1)=4.

The programs for A399776, the canonical program `A399776.P13636545612024227465` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399776 has offset 0).

The definition of A399776 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*a(n-1)+10*a(n-2)` (program `A399776.P13636545612024227465`, by `A399776.P13636545612024227465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A399776.P3537755732332349084

`ogf((1-4x)/(1-8x-10x^2))`
-/

namespace A399776.P3537755732332349084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -8, -10] n

end

end A399776.P3537755732332349084

namespace A399776

/-- `ogf((1-4x)/(1-8x-10x^2))` -/
def P3537755732332349084.Spec : Prop :=
  ∀ n, P3537755732332349084.a n = A399776 n

end A399776

/-! ## A399776.P13636545612024227465

`8*a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399776

/-- `8*a(n-1)+10*a(n-2)` -/
def P13636545612024227465.Spec : Prop :=
  ∀ n, (P13636545612024227465.a n : ℤ) = A399776 n

theorem P13636545612024227465.correct : P13636545612024227465.Spec := by
  intro n
  simp only [A399776]

end A399776

/-! ## A399776.P14640858474792799065

`((4+sqrt(26))^n+(4-sqrt(26))^n)/2`
-/

namespace A399776.P14640858474792799065
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 + Real.sqrt (26 : ℝ)) ^ n + (4 - Real.sqrt (26 : ℝ)) ^ n) / 2

end

end A399776.P14640858474792799065

namespace A399776

/-- `((4+sqrt(26))^n+(4-sqrt(26))^n)/2` -/
def P14640858474792799065.Spec : Prop :=
  ∀ n, P14640858474792799065.a n = (A399776 n : ℝ)

theorem P14640858474792799065.correct : P14640858474792799065.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A399776, Nat.add_sub_cancel, A399776.P14640858474792799065.a, A399776.P13636545612024227465.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A399776, Nat.add_sub_cancel, A399776.P14640858474792799065.a, A399776.P13636545612024227465.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A399776

/-!
# A399779: Maximum size of a subset S of {1,...,n} such that x does not divide y*z for any x,y,z in S with x != y and x != z.

The programs for A399779, the canonical program `A399779.P880496459967477716` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399779 has offset 1).

The definition of A399779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399779.P880496459967477716

`∑[ceil(∏{e}[2*(n+1), -floor(1/#)]/2)]+1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A399779

/-- `∑[ceil(∏{e}[2*(n+1), -floor(1/#)]/2)]+1` -/
def P880496459967477716.Spec : Prop :=
  ∀ n, P880496459967477716.a n = A399779 (n + 1)

theorem P880496459967477716.correct : P880496459967477716.Spec := by
  intro n
  simp only [A399779, Nat.add_sub_cancel]

end A399779

/-! ## A399779.P6701752014703089271

`∑[A341994((1+n)²)]+1`
-/

namespace A399779.P6701752014703089271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341994 ((1 + n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A399779.P6701752014703089271

namespace A399779

/-- `∑[A341994((1+n)²)]+1` -/
def P6701752014703089271.Spec : Prop :=
  ∀ n, P6701752014703089271.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P10808744898891966864

`∑[A354874((1+n)²)]+1`
-/

namespace A399779.P10808744898891966864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354874 ((1 + n) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A399779.P10808744898891966864

namespace A399779

/-- `∑[A354874((1+n)²)]+1` -/
def P10808744898891966864.Spec : Prop :=
  ∀ n, P10808744898891966864.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P6655255876763594640

`∑[char[A099991(n+1)*n]]`
-/

namespace A399779.P6655255876763594640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099991 (n + 1) * (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399779.P6655255876763594640

namespace A399779

/-- `∑[char[A099991(n+1)*n]]` -/
def P6655255876763594640.Spec : Prop :=
  ∀ n, (P6655255876763594640.a n : ℤ) = A399779 (n + 1)

end A399779

/-! ## A399779.P10616235544333983901

`∑[A353629(2*(1+n))]+1`
-/

namespace A399779.P10616235544333983901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353629 (2 * (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A399779.P10616235544333983901

namespace A399779

/-- `∑[A353629(2*(1+n))]+1` -/
def P10616235544333983901.Spec : Prop :=
  ∀ n, P10616235544333983901.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P4991597161354720161

`fp[A056912(n+1)-1]+1`
-/

namespace A399779.P4991597161354720161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056912 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A399779.P4991597161354720161

namespace A399779

/-- `fp[A056912(n+1)-1]+1` -/
def P4991597161354720161.Spec : Prop :=
  ∀ n, (P4991597161354720161.a n : ℤ) = A399779 (n + 1)

end A399779

/-! ## A399779.P9281004830988655361

`fp[A075763(n+1)-1]+1`
-/

namespace A399779.P9281004830988655361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0 + 1

end

end A399779.P9281004830988655361

namespace A399779

/-- `fp[A075763(n+1)-1]+1` -/
def P9281004830988655361.Spec : Prop :=
  ∀ n, (P9281004830988655361.a n : ℤ) = A399779 (n + 1)

end A399779

/-! ## A399779.P4756958208168803038

`∑[char[n*A008683(2*(n+1))]]`
-/

namespace A399779.P4756958208168803038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008683 (2 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399779.P4756958208168803038

namespace A399779

/-- `∑[char[n*A008683(2*(n+1))]]` -/
def P4756958208168803038.Spec : Prop :=
  ∀ n, (P4756958208168803038.a n : ℤ) = A399779 (n + 1)

end A399779

/-! ## A399779.P14428416647840844116

`∑[char[(A302042(Δ[n²])+1)*n]]`
-/

namespace A399779.P14428416647840844116
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A302042 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat + 1) * (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399779.P14428416647840844116

namespace A399779

/-- `∑[char[(A302042(Δ[n²])+1)*n]]` -/
def P14428416647840844116.Spec : Prop :=
  ∀ n, (P14428416647840844116.a n : ℤ) = A399779 (n + 1)

end A399779

/-! ## A399779.P9695523109441114789

`A000720(n+1)+A000122(A239282(n+1))`
-/

namespace A399779.P9695523109441114789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000122 (A239282 (n + 1)).toNat

end

end A399779.P9695523109441114789

namespace A399779

/-- `A000720(n+1)+A000122(A239282(n+1))` -/
def P9695523109441114789.Spec : Prop :=
  ∀ n, P9695523109441114789.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P16100972983630162642

`A268340(A262055(n+1))+A000720(n+1)`
-/

namespace A399779.P16100972983630162642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (A262055 (n + 1)).toNat + A000720 (n + 1)

end

end A399779.P16100972983630162642

namespace A399779

/-- `A268340(A262055(n+1))+A000720(n+1)` -/
def P16100972983630162642.Spec : Prop :=
  ∀ n, P16100972983630162642.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P12992849771033030739

`A154955(A385558(n+1))+A000720(n+1)`
-/

namespace A399779.P12992849771033030739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (A385558 (n + 1)).toNat + A000720 (n + 1)

end

end A399779.P12992849771033030739

namespace A399779

/-- `A154955(A385558(n+1))+A000720(n+1)` -/
def P12992849771033030739.Spec : Prop :=
  ∀ n, P12992849771033030739.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P103770816674503578

`gcd(A000720(n+1), A069517(A133694(n+1)))`
-/

namespace A399779.P103770816674503578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (n + 1)) (A069517 (A133694 (n + 1)).toNat)

end

end A399779.P103770816674503578

namespace A399779

/-- `gcd(A000720(n+1), A069517(A133694(n+1)))` -/
def P103770816674503578.Spec : Prop :=
  ∀ n, (P103770816674503578.a n : ℤ) = A399779 (n + 1)

end A399779

/-! ## A399779.P17775924638348296861

`C(A002522(n), A162288(n))+A000720(n+1)`
-/

namespace A399779.P17775924638348296861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A002522 n).toNat (A162288 n).toNat : ℤ) + A000720 (n + 1)

end

end A399779.P17775924638348296861

namespace A399779

/-- `C(A002522(n), A162288(n))+A000720(n+1)` -/
def P17775924638348296861.Spec : Prop :=
  ∀ n, P17775924638348296861.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P2009694096318359327

`A000720(n+1)+A000007(A147562(n))`
-/

namespace A399779.P2009694096318359327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000007 (A147562 n).toNat

end

end A399779.P2009694096318359327

namespace A399779

/-- `A000720(n+1)+A000007(A147562(n))` -/
def P2009694096318359327.Spec : Prop :=
  ∀ n, P2009694096318359327.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P2197623376095087204

`A010056(A003364(n+1))+A000720(n+1)`
-/

namespace A399779.P2197623376095087204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A003364 (n + 1)).toNat + A000720 (n + 1)

end

end A399779.P2197623376095087204

namespace A399779

/-- `A010056(A003364(n+1))+A000720(n+1)` -/
def P2197623376095087204.Spec : Prop :=
  ∀ n, P2197623376095087204.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P13929823562980919541

`A000720(n+1)+A000122(A006995(2*n+1))`
-/

namespace A399779.P13929823562980919541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + A000122 (A006995 (2 * n + 1)).toNat

end

end A399779.P13929823562980919541

namespace A399779

/-- `A000720(n+1)+A000122(A006995(2*n+1))` -/
def P13929823562980919541.Spec : Prop :=
  ∀ n, P13929823562980919541.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P17389217351894447742

`A167392(A006512(2*n+1))+A000720(n+1)`
-/

namespace A399779.P17389217351894447742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167392 (A006512 (2 * n + 1)).toNat + A000720 (n + 1)

end

end A399779.P17389217351894447742

namespace A399779

/-- `A167392(A006512(2*n+1))+A000720(n+1)` -/
def P17389217351894447742.Spec : Prop :=
  ∀ n, P17389217351894447742.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P2629834612223515531

`A000720(n+1)-A121373(A030432(3*n+1))`
-/

namespace A399779.P2629834612223515531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A121373 (A030432 (3 * n + 1)).toNat

end

end A399779.P2629834612223515531

namespace A399779

/-- `A000720(n+1)-A121373(A030432(3*n+1))` -/
def P2629834612223515531.Spec : Prop :=
  ∀ n, P2629834612223515531.a n = A399779 (n + 1)

end A399779

/-! ## A399779.P12417670869606594209

`∑[A398543((n+1)²)]`
-/

namespace A399779.P12417670869606594209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398543 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A399779.P12417670869606594209

namespace A399779

/-- `∑[A398543((n+1)²)]` -/
def P12417670869606594209.Spec : Prop :=
  ∀ n, P12417670869606594209.a n = A399779 (n + 1)

end A399779

/-!
# A399781: a(n) is the average of the lower and upper end of the earliest prime gap of length 2*n that does not contain a semiprime A001358.

The programs for A399781, there is no canonical definition to state claims against.
-/

/-! ## A399781.P12253463547136767933

`A136344(n+1)+n+1`
-/

namespace A399781.P12253463547136767933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136344 (n + 1) + (n + 1 : ℤ)

end

end A399781.P12253463547136767933

/-! ## A399781.P17456686142640073912

`1+A136344(n+1)+n`
-/

namespace A399781.P17456686142640073912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A136344 (n + 1) + (n : ℤ)

end

end A399781.P17456686142640073912

/-!
# A399784: Power loops: the number of circular permutations (reversals not counted as different) of the numbers 1 to n such that the sum of any two consecutive numbers is a perfect power.

The programs for A399784, there is no canonical definition to state claims against.
-/

/-! ## A399784.P12220194564136657875

`A399785(n+17)-A399783(n+17)`
-/

namespace A399784.P12220194564136657875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399785 (n + 17) - A399783 (n + 17)

end

end A399784.P12220194564136657875

/-! ## A399784.P9261183810100625169

`(A399786(n+17)-A399785(n+17))/(n+16)`
-/

namespace A399784.P9261183810100625169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399786 (n + 17) - A399785 (n + 17) : ℚ) / (n + 16 : ℚ)

end

end A399784.P9261183810100625169

/-! ## A399784.P11005759344682589580

`(A399786(n+17)-A399783(n+17))/(n+17)`
-/

namespace A399784.P11005759344682589580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A399786 (n + 17) - A399783 (n + 17) : ℚ) / (n + 17 : ℚ)

end

end A399784.P11005759344682589580

/-!
# A399787: Length of the longest palindromic substring of n written in base 10.

The programs for A399787, the canonical program `A399787.P2495405610167651069` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A399787 has offset 0).

The definition of A399787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A399787.P9111685432385773546

`A090822(A139337(n)^A090822(n+1))`
-/

namespace A399787.P9111685432385773546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (SequenceMachineLib.roundAway ((A139337 n : ℚ) ^ (A090822 (n + 1) : ℤ))).toNat

end

end A399787.P9111685432385773546

namespace A399787

/-- `A090822(A139337(n)^A090822(n+1))` -/
def P9111685432385773546.Spec : Prop :=
  ∀ n, P9111685432385773546.a n = A399787 n

end A399787

/-! ## A399787.P18344551377447781744

`(A126304(A123895(n))+1)^A107846(n)`
-/

namespace A399787.P18344551377447781744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126304 (A123895 n).toNat + 1 : ℚ) ^ (A107846 n : ℤ)

end

end A399787.P18344551377447781744

namespace A399787

/-- `(A126304(A123895(n))+1)^A107846(n)` -/
def P18344551377447781744.Spec : Prop :=
  ∀ n, P18344551377447781744.a n = (A399787 n : ℚ)

end A399787

/-! ## A399787.P12920091615960243213

`(A377191(n)+A055642(A265525(n)))^A107846(n)`
-/

namespace A399787.P12920091615960243213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A377191 n + A055642 (A265525 n).toNat : ℚ) ^ (A107846 n : ℤ)

end

end A399787.P12920091615960243213

namespace A399787

/-- `(A377191(n)+A055642(A265525(n)))^A107846(n)` -/
def P12920091615960243213.Spec : Prop :=
  ∀ n, P12920091615960243213.a n = (A399787 n : ℚ)

end A399787

/-! ## A399787.P1666917387459673907

`A299201(A139337(n))`
-/

namespace A399787.P1666917387459673907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299201 (A139337 n).toNat

end

end A399787.P1666917387459673907

namespace A399787

/-- `A299201(A139337(n))` -/
def P1666917387459673907.Spec : Prop :=
  ∀ n, P1666917387459673907.a n = A399787 n

end A399787

/-! ## A399787.P14483648767257127760

`A006466(A139337(n)^2)`
-/

namespace A399787.P14483648767257127760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A139337 n ^ 2).toNat

end

end A399787.P14483648767257127760

namespace A399787

/-- `A006466(A139337(n)^2)` -/
def P14483648767257127760.Spec : Prop :=
  ∀ n, P14483648767257127760.a n = A399787 n

end A399787

/-! ## A399787.P11708515188697363885

`A090822(A139337(n)^2)`
-/

namespace A399787.P11708515188697363885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090822 (A139337 n ^ 2).toNat

end

end A399787.P11708515188697363885

namespace A399787

/-- `A090822(A139337(n)^2)` -/
def P11708515188697363885.Spec : Prop :=
  ∀ n, P11708515188697363885.a n = A399787 n

end A399787

/-! ## A399787.P4007192459871571737

`gcd(2, A329623(A045918(n)))`
-/

namespace A399787.P4007192459871571737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A329623 (A045918 n).toNat)

end

end A399787.P4007192459871571737

namespace A399787

/-- `gcd(2, A329623(A045918(n)))` -/
def P4007192459871571737.Spec : Prop :=
  ∀ n, (P4007192459871571737.a n : ℤ) = A399787 n

end A399787

/-! ## A399787.P13420728576914788935

`A000122((n*A100910(n))²)`
-/

namespace A399787.P13420728576914788935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (((n : ℤ) * A100910 n) ^ 2).toNat

end

end A399787.P13420728576914788935

namespace A399787

/-- `A000122((n*A100910(n))²)` -/
def P13420728576914788935.Spec : Prop :=
  ∀ n, P13420728576914788935.a n = A399787 n

end A399787

/-! ## A399787.P8695211677052841602

`A000122(n²)^A107846(n)`
-/

namespace A399787.P8695211677052841602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000122 (n ^ 2) : ℚ) ^ (A107846 n : ℤ)

end

end A399787.P8695211677052841602

namespace A399787

/-- `A000122(n²)^A107846(n)` -/
def P8695211677052841602.Spec : Prop :=
  ∀ n, P8695211677052841602.a n = (A399787 n : ℚ)

end A399787

/-! ## A399787.P2833151344298386626

`A040000(A118759(n)-A320485(n))`
-/

namespace A399787.P2833151344298386626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (A118759 n - A320485 n).toNat

end

end A399787.P2833151344298386626

namespace A399787

/-- `A040000(A118759(n)-A320485(n))` -/
def P2833151344298386626.Spec : Prop :=
  ∀ n, P2833151344298386626.a n = A399787 n

end A399787

/-! ## A399787.P734602528012743412

`A000122(A000290(n)*A100910(n))`
-/

namespace A399787.P734602528012743412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000290 n * A100910 n).toNat

end

end A399787.P734602528012743412

namespace A399787

/-- `A000122(A000290(n)*A100910(n))` -/
def P734602528012743412.Spec : Prop :=
  ∀ n, P734602528012743412.a n = A399787 n

end A399787

/-! ## A399787.P10750917714986408145

`A000079(A107846(n)^A302176(n))`
-/

namespace A399787.P10750917714986408145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((A107846 n : ℚ) ^ (A302176 n : ℤ))).toNat

end

end A399787.P10750917714986408145

namespace A399787

/-- `A000079(A107846(n)^A302176(n))` -/
def P10750917714986408145.Spec : Prop :=
  ∀ n, P10750917714986408145.a n = A399787 n

end A399787

/-! ## A399787.P16352503274114339461

`A068911(A107846(n)^A302176(n))`
-/

namespace A399787.P16352503274114339461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 (SequenceMachineLib.roundAway ((A107846 n : ℚ) ^ (A302176 n : ℤ))).toNat

end

end A399787.P16352503274114339461

namespace A399787

/-- `A068911(A107846(n)^A302176(n))` -/
def P16352503274114339461.Spec : Prop :=
  ∀ n, P16352503274114339461.a n = A399787 n

end A399787

/-! ## A399787.P8549630349971662710

`A242876(A107846(n)^A302176(n))`
-/

namespace A399787.P8549630349971662710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242876 (SequenceMachineLib.roundAway ((A107846 n : ℚ) ^ (A302176 n : ℤ))).toNat

end

end A399787.P8549630349971662710

namespace A399787

/-- `A242876(A107846(n)^A302176(n))` -/
def P8549630349971662710.Spec : Prop :=
  ∀ n, P8549630349971662710.a n = A399787 n

end A399787

/-! ## A399787.P1270339671755057910

`A040052(A139337(n)*A151568(2*n+3))`
-/

namespace A399787.P1270339671755057910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040052 (A139337 n * A151568 (2 * n + 3)).toNat

end

end A399787.P1270339671755057910

namespace A399787

/-- `A040052(A139337(n)*A151568(2*n+3))` -/
def P1270339671755057910.Spec : Prop :=
  ∀ n, P1270339671755057910.a n = A399787 n

end A399787

/-! ## A399787.P17782709472296736247

`(2-∑{p}[n^3, val(#, 11)]^(n/10))²%(∑{digits}[n, 10^#]%9)+1`
-/

namespace A399787.P17782709472296736247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 - ((∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation p 11 : ℕ) : ℝ) ^ ((n : ℚ) / 10 : ℝ)) ^ 2)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum % 9 : ℕ) : ℤ) + 1

end

end A399787.P17782709472296736247

namespace A399787

/-- `(2-∑{p}[n^3, val(#, 11)]^(n/10))²%(∑{digits}[n, 10^#]%9)+1` -/
def P17782709472296736247.Spec : Prop :=
  ∀ n, P17782709472296736247.a n = A399787 n

end A399787

/-! ## A399787.P2495405610167651069

`A055642(n-n*(1-val(∏{p}[n^3, #], 11)))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A399787

/-- `A055642(n-n*(1-val(∏{p}[n^3, #], 11)))` -/
def P2495405610167651069.Spec : Prop :=
  ∀ n, P2495405610167651069.a n = A399787 n

theorem P2495405610167651069.correct : P2495405610167651069.Spec := by
  intro n
  simp only [A399787]

end A399787

/-! ## A399787.P8996469660714377342

`A036580(A139337(n)²)`
-/

namespace A399787.P8996469660714377342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036580 (A139337 n ^ 2).toNat

end

end A399787.P8996469660714377342

namespace A399787

/-- `A036580(A139337(n)²)` -/
def P8996469660714377342.Spec : Prop :=
  ∀ n, P8996469660714377342.a n = A399787 n

end A399787

/-! ## A399787.P16950905642963937591

`A169945(A358497(n)+1)`
-/

namespace A399787.P16950905642963937591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169945 (A358497 n + 1).toNat

end

end A399787.P16950905642963937591

namespace A399787

/-- `A169945(A358497(n)+1)` -/
def P16950905642963937591.Spec : Prop :=
  ∀ n, P16950905642963937591.a n = A399787 n

end A399787

/-! ## A399787.P10022545731898303147

`A376306(2*A358497(n))`
-/

namespace A399787.P10022545731898303147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376306 (2 * A358497 n).toNat

end

end A399787.P10022545731898303147

namespace A399787

/-- `A376306(2*A358497(n))` -/
def P10022545731898303147.Spec : Prop :=
  ∀ n, P10022545731898303147.a n = A399787 n

end A399787

/-!
# A399793: a(n) is the largest size of a subset S of {1, ..., n} such that there does not exist a function f: S -> {-1,1} satisfying |Sum_{x in S} x*f(x)| <= 1.

The programs for A399793, there is no canonical definition to state claims against.
-/

/-! ## A399793.P13926292936353109229

`A325678(or(A000040(n+1), A307835(n)))`
-/

namespace A399793.P13926292936353109229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Int.lor (A000040 (n + 1)) (A307835 n)).toNat

end

end A399793.P13926292936353109229

/-! ## A399793.P6262483271145615128

`A325678(A038614(n+1))`
-/

namespace A399793.P6262483271145615128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A038614 (n + 1)).toNat

end

end A399793.P6262483271145615128

/-! ## A399793.P5975787097500469373

`A235402(A147849(n+1))`
-/

namespace A399793.P5975787097500469373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235402 (A147849 (n + 1)).toNat

end

end A399793.P5975787097500469373

/-! ## A399793.P14447734148532705564

`A325678(A080191(n+1))`
-/

namespace A399793.P14447734148532705564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A080191 (n + 1)).toNat

end

end A399793.P14447734148532705564

/-! ## A399793.P13982073221690212794

`A325678(A386324(n+1))`
-/

namespace A399793.P13982073221690212794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A386324 (n + 1)).toNat

end

end A399793.P13982073221690212794

/-!
# A399796: Number of distinct nonzero coefficients of (1+x+x^(-1)+y+y^(-1))^n.

The programs for A399796, there is no canonical definition to state claims against.
-/

/-! ## A399796.P9876051780726862963

`A070939(A107429(n+1))+A002620(n)`
-/

namespace A399796.P9876051780726862963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A107429 (n + 1)).toNat + A002620 n

end

end A399796.P9876051780726862963

/-! ## A399796.P4302281495180382902

`A367069(A127719(n+1))`
-/

namespace A399796.P4302281495180382902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367069 (A127719 (n + 1)).toNat

end

end A399796.P4302281495180382902

/-! ## A399796.P11294166405925068251

`A004525(A353838(∑[1+n]))`
-/

namespace A399796.P11294166405925068251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A353838 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A399796.P11294166405925068251

/-! ## A399796.P17549770983280275252

`row(∑[A064797(A099392(n+1))])`
-/

namespace A399796.P17549770983280275252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064797 (A099392 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A399796.P17549770983280275252

/-! ## A399796.P15757798324255672724

`A363801(A165056(n+1))+A024206(n+1)`
-/

namespace A399796.P15757798324255672724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363801 (A165056 (n + 1)).toNat + A024206 (n + 1)

end

end A399796.P15757798324255672724

