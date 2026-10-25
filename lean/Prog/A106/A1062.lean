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
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A106200: a(n)=denominator of the probability that (x-y)/(x+y)+(y-z)/(y+z)+(z-u)/(z+u)+ (u-x)/(u+x) >0, assuming that each random quadruple of integers (x,y,z,u), with a<=x,y,z,u<=n, is equally likely.

The programs for A106200, there is no canonical definition to state claims against.
-/

/-! ## A106200.P10213008586893995899

`A060819((n+1)^ceil(log2(A003415(2*(n+1)))))`
-/

namespace A106200.P10213008586893995899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌈Real.logb 2 (A003415 (2 * (n + 1)) : ℝ)⌉ : ℤ))).toNat

end

end A106200.P10213008586893995899

/-! ## A106200.P7262068289796684613

`A326582(n*A134532(n+1))`
-/

namespace A106200.P7262068289796684613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326582 ((n : ℤ) * A134532 (n + 1)).toNat

end

end A106200.P7262068289796684613

/-!
# A106201: Expansion of Re(x/(1-x-2*i*x^2)), i=sqrt(-1).

The programs for A106201, the canonical program `A106201.P13080119640712180222` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106201 has offset 0).

The definition of A106201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106201.P13080119640712180222

`ogf((x-x^2)/(1-2x+x^2+4x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106201

/-- `ogf((x-x^2)/(1-2x+x^2+4x^4))` -/
def P13080119640712180222.Spec : Prop :=
  ∀ n, P13080119640712180222.a n = A106201 n

theorem P13080119640712180222.correct : P13080119640712180222.Spec := by
  intro n
  simp only [A106201]

end A106201

/-! ## A106201.P7997328283003368903

`Δ[A106202(n+1)/2]`
-/

namespace A106201.P7997328283003368903
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106202 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106201.P7997328283003368903

namespace A106201

/-- `Δ[A106202(n+1)/2]` -/
def P7997328283003368903.Spec : Prop :=
  ∀ n, P7997328283003368903.a n = (A106201 n : ℚ)

end A106201

/-!
# A106202: Expansion of Im(x/(1 - x - 2*i*x^2)), i=sqrt(-1).

The programs for A106202, the canonical program `A106202.P1928011118920082889` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106202 has offset 0).

The definition of A106202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 382 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106202.P1928011118920082889

`ogf(2x^3/(1-2x+x^2+4x^4))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106202

/-- `ogf(2x^3/(1-2x+x^2+4x^4))` -/
def P1928011118920082889.Spec : Prop :=
  ∀ n, P1928011118920082889.a n = A106202 n

theorem P1928011118920082889.correct : P1928011118920082889.Spec := by
  intro n
  simp only [A106202]

end A106202

/-!
# A106208: Triangular matrix T, read by rows, that satisfies: [T^-1](n,k) = -(k+1)*T(n-1,k) when (n-1)>=k>=0, with T(n,n) = 1 and T(n+1,n) = (n+1) for n>=0.

The programs for A106208, there is no canonical definition to state claims against.
-/

/-! ## A106208.P2350428487198905922

`A102086(n)/(1-C(∑[char[∑[n]]], 2)+n)`
-/

namespace A106208.P2350428487198905922
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102086 n : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ) : ℚ)

end

end A106208.P2350428487198905922

/-! ## A106208.P10053738051099190495

`A102086(n)/A002260(n+1)`
-/

namespace A106208.P10053738051099190495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102086 n : ℚ) / (A002260 (n + 1) : ℚ)

end

end A106208.P10053738051099190495

/-! ## A106208.P7384853784545813679

`A102086(n)/(A002262(n)+1)`
-/

namespace A106208.P7384853784545813679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102086 n : ℚ) / (A002262 n + 1 : ℚ)

end

end A106208.P7384853784545813679

/-! ## A106208.P9734999162153274568

`A102086(n)/A002262(comp[∑[n]])`
-/

namespace A106208.P9734999162153274568
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102086 n : ℚ) / (A002262 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A106208.P9734999162153274568

/-! ## A106208.P3470994425977238363

`abs(A102086(n)/A140756(n+1))`
-/

namespace A106208.P3470994425977238363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A102086 n : ℚ) / (A140756 (n + 1) : ℚ)|

end

end A106208.P3470994425977238363

/-!
# A106209: Row sums of triangle A106208.

The programs for A106209, there is no canonical definition to state claims against.
-/

/-! ## A106209.P17205291730908545054

`floor(∏[sqrt(A131752(2*n+1))])`
-/

namespace A106209.P17205291730908545054
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A131752 (2 * n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ j ∈ Finset.range (n + 1), f1 j⌋

end

end A106209.P17205291730908545054

/-! ## A106209.P4924945254448662193

`A321695(A302750(2*(n+1)))+∑[n%11]`
-/

namespace A106209.P4924945254448662193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321695 (A302750 (2 * (n + 1))).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A106209.P4924945254448662193

/-!
# A106210: Triangular matrix T, read by rows, that satisfies: [T^-1](n,k) = -k^2*T(n-2,k) when (n-2)>=k>=0, with T(n,n) = 1 and T(n+1,n) = (2*n+1) for n>=0.

The programs for A106210, there is no canonical definition to state claims against.
-/

/-! ## A106210.P7355608591886190719

`A104417(n)-A081150(A326474(n))`
-/

namespace A106210.P7355608591886190719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104417 n - A081150 (A326474 n).toNat

end

end A106210.P7355608591886190719

/-! ## A106210.P2909916051893746251

`A104417(n)-A025456(A059570(n+1))`
-/

namespace A106210.P2909916051893746251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104417 n - A025456 (A059570 (n + 1)).toNat

end

end A106210.P2909916051893746251

/-! ## A106210.P4138926513687614852

`A104417(n)-A191261(A304320(2*(n+1)))`
-/

namespace A106210.P4138926513687614852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104417 n - A191261 (A304320 (2 * (n + 1))).toNat

end

end A106210.P4138926513687614852

/-! ## A106210.P14980688080368065545

`A031218(A104417(n)^A001221(n+1))`
-/

namespace A106210.P14980688080368065545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (SequenceMachineLib.roundAway ((A104417 n : ℚ) ^ (A001221 (n + 1) : ℤ))).toNat

end

end A106210.P14980688080368065545

/-!
# A106211: Row sums of triangle A106210.

The programs for A106211, there is no canonical definition to state claims against.
-/

/-! ## A106211.P7252714247237964151

`A360413(A000312(n))+A153830(n)`
-/

namespace A106211.P7252714247237964151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360413 (A000312 n).toNat + A153830 n

end

end A106211.P7252714247237964151

/-! ## A106211.P11415545283265358453

`A037471(A125222(n))+Δ[A000142(n)]`
-/

namespace A106211.P11415545283265358453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A125222 n).toNat + (f1 (n + 1) - f1 n)

end

end A106211.P11415545283265358453

/-!
# A106213: Positions n where A083349(n) = 1 (mod 3).

The programs for A106213, there is no canonical definition to state claims against.
-/

/-! ## A106213.P10329569852414056967

`3*eq[1, A108921(n)]`
-/

namespace A106213.P10329569852414056967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106213.P10329569852414056967

/-! ## A106213.P3159822687415913394

`A008585(eq[1, A108921(n)])`
-/

namespace A106213.P3159822687415913394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106213.P3159822687415913394

/-! ## A106213.P997891179773755714

`A016777(eq[1, A108921(n)])-1`
-/

namespace A106213.P997891179773755714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 1

end

end A106213.P997891179773755714

/-! ## A106213.P10899175539865157336

`A016789(eq[1, A108921(n)])-2`
-/

namespace A106213.P10899175539865157336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) - 2

end

end A106213.P10899175539865157336

/-! ## A106213.P270988988123065549

`eq[1, A083349(n)%3]`
-/

namespace A106213.P270988988123065549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083349 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106213.P270988988123065549

/-!
# A106214: Positions n where A083349(n) = 2 (mod 3).

The programs for A106214, there is no canonical definition to state claims against.
-/

/-! ## A106214.P1574427625629066639

`3*lt[1, A108921(n)]`
-/

namespace A106214.P1574427625629066639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106214.P1574427625629066639

/-! ## A106214.P2880053916420681300

`A008486(lt[1, A108921(n)])`
-/

namespace A106214.P2880053916420681300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106214.P2880053916420681300

/-! ## A106214.P748457810194800697

`A008486(eq[2, A108921(n)])`
-/

namespace A106214.P748457810194800697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106214.P748457810194800697

/-! ## A106214.P16839245337004659631

`A008585(lt[1, A108921(n)])`
-/

namespace A106214.P16839245337004659631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106214.P16839245337004659631

/-! ## A106214.P15975136276184550880

`A008585(eq[2, A108921(n)])`
-/

namespace A106214.P15975136276184550880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106214.P15975136276184550880

/-!
# A106215: The first n primes, connected by, from left to right, alternating + and * signs.

The programs for A106215, there is no canonical definition to state claims against.
-/

/-! ## A106215.P10870728232258330675

`A249611(A333218(n+1)+A299403(n+1))`
-/

namespace A106215.P10870728232258330675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249611 (A333218 (n + 1) + A299403 (n + 1)).toNat

end

end A106215.P10870728232258330675

/-! ## A106215.P12588641824192382953

`A286565(A129012(3*(n+1)))+∑[A172481(n)]`
-/

namespace A106215.P12588641824192382953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286565 (A129012 (3 * (n + 1))).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106215.P12588641824192382953

/-!
# A106216: Coefficients of g.f. A(x) where 0 <= a(n) <= 2 for all n>1, with initial terms {1,3}, such that A(x)^(1/3) consists entirely of integer coefficients.

The programs for A106216, there is no canonical definition to state claims against.
-/

/-! ## A106216.P2555441348516058470

`A078818(n)%A337535(A233862(n+1))`
-/

namespace A106216.P2555441348516058470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078818 n) (A337535 (A233862 (n + 1)).toNat)

end

end A106216.P2555441348516058470

/-! ## A106216.P15189235233707749481

`and(A005882(A001590(n)), A367579(3*n+1))`
-/

namespace A106216.P15189235233707749481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005882 (A001590 n).toNat) (A367579 (3 * n + 1))

end

end A106216.P15189235233707749481

/-! ## A106216.P13539648672679598798

`A001177(A131761(n+1))%4`
-/

namespace A106216.P13539648672679598798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001177 (A131761 (n + 1)).toNat) 4

end

end A106216.P13539648672679598798

/-! ## A106216.P13397749356112343264

`A285958(A018431(n+1))%4`
-/

namespace A106216.P13397749356112343264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285958 (A018431 (n + 1)).toNat) 4

end

end A106216.P13397749356112343264

/-! ## A106216.P1249825475666709190

`A035195(or(9, A269782(3*n+1)))`
-/

namespace A106216.P1249825475666709190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035195 (Int.lor 9 (A269782 (3 * n + 1))).toNat

end

end A106216.P1249825475666709190

/-!
# A106217: Positions of 1's in A106216.

The programs for A106217, there is no canonical definition to state claims against.
-/

/-! ## A106217.P3625191242417359778

`eq[1, A106216(n)]`
-/

namespace A106217.P3625191242417359778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106217.P3625191242417359778

/-! ## A106217.P6155763373897890848

`lt[A106216(n+2), tan(A106216(n))]`
-/

namespace A106217.P6155763373897890848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 (n + 2)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (A106216 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A106217.P6155763373897890848

/-!
# A106218: Positions of 2's in A106216.

The programs for A106218, there is no canonical definition to state claims against.
-/

/-! ## A106218.P8473463574803101058

`eq[2, A106216(n)]`
-/

namespace A106218.P8473463574803101058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A106218.P8473463574803101058

/-! ## A106218.P6007204435241823845

`lt[1, A106216(n+2)]+2`
-/

namespace A106218.P6007204435241823845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A106218.P6007204435241823845

/-! ## A106218.P13647964647761609450

`lt[A057079(n)², A106216(n)]`
-/

namespace A106218.P13647964647761609450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106218.P13647964647761609450

/-! ## A106218.P6606384362730371046

`lt[cosh(A196306(n)), A106216(n)]`
-/

namespace A106218.P6606384362730371046
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cosh (A196306 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A106218.P6606384362730371046

/-! ## A106218.P15171913142695014374

`lt[1, A106216(A233583(n+1))]`
-/

namespace A106218.P15171913142695014374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106218.P15171913142695014374

/-!
# A106222: Coefficients of g.f. A(x) where 0 <= a(n) <= 4 for all n>1, with initial terms {1,5}, such that A(x)^(1/5) consists entirely of integer coefficients.

The programs for A106222, there is no canonical definition to state claims against.
-/

/-! ## A106222.P16845556474823454003

`A132839(n)%A017221(C(2, n+1))`
-/

namespace A106222.P16845556474823454003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132839 n) (A017221 (Nat.choose 2 (n + 1)))

end

end A106222.P16845556474823454003

/-!
# A106223: Self-convolution 5th power equals A106222, which consists entirely of digits {0,1,2,3,4} after the initial terms {1,5}.

The programs for A106223, there is no canonical definition to state claims against.
-/

/-! ## A106223.P8318810425781056959

`A196345(n)+A086011(A052710(n))`
-/

namespace A106223.P8318810425781056959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196345 n + A086011 (A052710 n).toNat

end

end A106223.P8318810425781056959

/-! ## A106223.P3655682716786970397

`A196345(A062399(n))+A185254(n)`
-/

namespace A106223.P3655682716786970397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196345 (A062399 n).toNat + A185254 n

end

end A106223.P3655682716786970397

/-! ## A106223.P3180863778035352140

`A352703(n)+A086011(A052710(n))`
-/

namespace A106223.P3180863778035352140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352703 n + A086011 (A052710 n).toNat

end

end A106223.P3180863778035352140

/-! ## A106223.P1805676693642819976

`A352703(n)+A185254(A062399(n))`
-/

namespace A106223.P1805676693642819976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352703 n + A185254 (A062399 n).toNat

end

end A106223.P1805676693642819976

/-! ## A106223.P1909733649722639516

`A196345(n)+A185284(A235945(n))`
-/

namespace A106223.P1909733649722639516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196345 n + A185284 (A235945 n).toNat

end

end A106223.P1909733649722639516

/-!
# A106225: Self-convolution 6th power equals A106224, which consists entirely of digits {0,1,2,3,4,5} after the initial terms {1,6}.

The programs for A106225, there is no canonical definition to state claims against.
-/

/-! ## A106225.P1666994472169244817

`xor(A084206(n), A160380(A192697(n+1)))`
-/

namespace A106225.P1666994472169244817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A084206 n) (A160380 (A192697 (n + 1)).toNat)

end

end A106225.P1666994472169244817

/-! ## A106225.P359524437328275507

`A084206(n)-A016389(n!)`
-/

namespace A106225.P359524437328275507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084206 n - A016389 (Nat.factorial n)

end

end A106225.P359524437328275507

/-!
# A106227: Self-convolution 7th power equals A106226, which consists entirely of digits {0,1,2,3,4,5,6} after the initial terms {1,7}.

The programs for A106227, there is no canonical definition to state claims against.
-/

/-! ## A106227.P11221651061179116675

`or(A000035(A136235(n)), A352705(n))`
-/

namespace A106227.P11221651061179116675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A136235 n).toNat) (A352705 n)

end

end A106227.P11221651061179116675

/-! ## A106227.P6115683559163157355

`or(A106216(A035488(n)), A352705(n))`
-/

namespace A106227.P6115683559163157355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A106216 (A035488 n).toNat) (A352705 n)

end

end A106227.P6115683559163157355

/-! ## A106227.P14326469948088601579

`or(A014268(A290596(n)), A352705(n))`
-/

namespace A106227.P14326469948088601579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014268 (A290596 n).toNat) (A352705 n)

end

end A106227.P14326469948088601579

/-! ## A106227.P5567151079799976341

`A352705(n)+A079998(∑[A079967(n)])`
-/

namespace A106227.P5567151079799976341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352705 n + A079998 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106227.P5567151079799976341

/-! ## A106227.P13111950938483375658

`A352705(n)+A294937(A284353(n))`
-/

namespace A106227.P13111950938483375658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352705 n + A294937 (A284353 n).toNat

end

end A106227.P13111950938483375658

/-!
# A106228: G.f. A(x) satisfies A(x) = 1 + x*A(x)/(1 - x*A(x)^2).

The programs for A106228, there is no canonical definition to state claims against.
-/

/-! ## A106228.P6951529645443453423

`A215067(abs(1-2*n))`
-/

namespace A106228.P6951529645443453423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215067 |1 - (2 * n : ℤ)|.toNat

end

end A106228.P6951529645443453423

/-! ## A106228.P10644144369415315981

`lcm((-1)^n, A215067(comp[2*(n+1)]))`
-/

namespace A106228.P10644144369415315981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A215067 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A106228.P10644144369415315981

/-! ## A106228.P6165984569301947281

`A262441(round(sqrt(n²+1)))-A109081(n+1)`
-/

namespace A106228.P6165984569301947281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262441 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A109081 (n + 1)

end

end A106228.P6165984569301947281

/-! ## A106228.P8449731872251641993

`gcd(A000038(n), A215067(A004273(n)))`
-/

namespace A106228.P8449731872251641993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215067 (A004273 n).toNat)

end

end A106228.P8449731872251641993

/-! ## A106228.P12447010273294037351

`A262441(n+1)-A370891(n)`
-/

namespace A106228.P12447010273294037351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262441 (n + 1) - A370891 n

end

end A106228.P12447010273294037351

/-! ## A106228.P12733106790104878979

`A336708(eq[3, A025581(n)])`
-/

namespace A106228.P12733106790104878979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336708 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106228.P12733106790104878979

/-!
# A106229: Least j > 1 for n > 0 such that j^2 = (n^2 + 1)*(k^2) + (n^2 + 1)*k + 1 where k sequence = A106230.

The programs for A106229, the canonical program `A106229.P17219211889580716875` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106229 has offset 1).

The definition of A106229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106229.P17219211889580716875

`sqrt(A106230(n+1)+1)+(n+1)*A106230(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106229

/-- `sqrt(A106230(n+1)+1)+(n+1)*A106230(n+1)` -/
def P17219211889580716875.Spec : Prop :=
  ∀ n, P17219211889580716875.a n = (A106229 (n + 1) : ℝ)

end A106229

/-! ## A106229.P4697139129447943444

`A000188(A106230(n+1)+1)+(n+1)*A106230(n+1)`
-/

namespace A106229.P4697139129447943444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A106230 (n + 1) + 1).toNat + (n + 1 : ℤ) * A106230 (n + 1)

end

end A106229.P4697139129447943444

namespace A106229

/-- `A000188(A106230(n+1)+1)+(n+1)*A106230(n+1)` -/
def P4697139129447943444.Spec : Prop :=
  ∀ n, P4697139129447943444.a n = A106229 (n + 1)

end A106229

/-!
# A106230: Least k > 0 for n > 0 such that (n^2 + 1)*(k^2) + (n^2 + 1)*k + 1 = j^2 where j sequence = A106229.

The programs for A106230, the canonical program `A106230.P1170921008811896892` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106230 has offset 1).

The definition of A106230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106230.P1170921008811896892

`gcd(n, a(n-1))²-1` with `a(0)=3, a(1)=8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106230

/-- `gcd(n, a(n-1))²-1` -/
def P1170921008811896892.Spec : Prop :=
  ∀ n, P1170921008811896892.a n = A106230 (n + 1)

theorem P1170921008811896892.correct : P1170921008811896892.Spec := by
  intro n
  simp only [A106230, Nat.add_sub_cancel]

end A106230

/-! ## A106230.P9917840299250133969

`∑[a(n-1)+2]` with `a(0)=3, a(1)=5, a(2)=-5, a(3)=5`
-/

namespace A106230.P9917840299250133969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 5, -5, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106230.P9917840299250133969

namespace A106230

/-- `∑[a(n-1)+2]` -/
def P9917840299250133969.Spec : Prop :=
  ∀ n, P9917840299250133969.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P18376282128437011431

`n^(2%a(n-1))-1` with `a(0)=3, a(1)=8`
-/

namespace A106230.P18376282128437011431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3, 8] fun n a =>
  (n : ℚ) ^ (Int.tmod 2 (SequenceMachineLib.roundAway (a (n - 1))) : ℤ) - 1

end

end A106230.P18376282128437011431

namespace A106230

/-- `n^(2%a(n-1))-1` -/
def P18376282128437011431.Spec : Prop :=
  ∀ n, P18376282128437011431.a n = (A106230 (n + 1) : ℚ)

end A106230

/-! ## A106230.P8828748146241662323

`(abs(1-abs(1-n))+2)²-1`
-/

namespace A106230.P8828748146241662323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (|(1 - |1 - (n : ℤ)|)| + 2) ^ 2 - 1

end

end A106230.P8828748146241662323

namespace A106230

/-- `(abs(1-abs(1-n))+2)²-1` -/
def P8828748146241662323.Spec : Prop :=
  ∀ n, P8828748146241662323.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P4536687503012294775

`(a(n-1)²-1)%n²` with `a(0)=3, a(1)=8`
-/

namespace A106230.P4536687503012294775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  Int.tmod (a (n - 1) ^ 2 - 1) (n ^ 2 : ℤ)

end

end A106230.P4536687503012294775

namespace A106230

/-- `(a(n-1)²-1)%n²` -/
def P4536687503012294775.Spec : Prop :=
  ∀ n, P4536687503012294775.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P9949646900435598983

`floor(n²-1/a(n-1))` with `a(0)=3, a(1)=8`
-/

namespace A106230.P9949646900435598983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  ⌊(n ^ 2 : ℚ) - 1 / (a (n - 1) : ℚ)⌋

end

end A106230.P9949646900435598983

namespace A106230

/-- `floor(n²-1/a(n-1))` -/
def P9949646900435598983.Spec : Prop :=
  ∀ n, P9949646900435598983.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P8457319623695291872

`(n+1)*(n-1)%a(n-1)` with `a(0)=3, a(1)=8`
-/

namespace A106230.P8457319623695291872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8] fun n a =>
  (n + 1 : ℤ) * Int.tmod ((n : ℤ) - 1) (a (n - 1))

end

end A106230.P8457319623695291872

namespace A106230

/-- `(n+1)*(n-1)%a(n-1)` -/
def P8457319623695291872.Spec : Prop :=
  ∀ n, P8457319623695291872.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P10057340658114404061

`(n+1)*gcd(n-1, a(n-2))` with `a(0)=3, a(1)=8`
-/

namespace A106230.P10057340658114404061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 8] fun n a =>
  (n + 1) * Int.gcd ((n : ℤ) - 1) (a (n - 2) : ℤ)

end

end A106230.P10057340658114404061

namespace A106230

/-- `(n+1)*gcd(n-1, a(n-2))` -/
def P10057340658114404061.Spec : Prop :=
  ∀ n, (P10057340658114404061.a n : ℤ) = A106230 (n + 1)

end A106230

/-! ## A106230.P18381959510701574778

`(C(4, ∑[n+1])+n-1)*(n+1)`
-/

namespace A106230.P18381959510701574778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 4 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) + ((n : ℤ) - 1)) * (n + 1 : ℤ)

end

end A106230.P18381959510701574778

namespace A106230

/-- `(C(4, ∑[n+1])+n-1)*(n+1)` -/
def P18381959510701574778.Spec : Prop :=
  ∀ n, P18381959510701574778.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P5068133721936849307

`(n+1)*(C(4, 2*n+1)+n-1)`
-/

namespace A106230.P5068133721936849307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((Nat.choose 4 (2 * n + 1) : ℤ) + ((n : ℤ) - 1))

end

end A106230.P5068133721936849307

namespace A106230

/-- `(n+1)*(C(4, 2*n+1)+n-1)` -/
def P5068133721936849307.Spec : Prop :=
  ∀ n, P5068133721936849307.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P14978643510356622088

`A005563(abs(abs(1-n)-1)+1)`
-/

namespace A106230.P14978643510356622088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (|(|1 - (n : ℤ)| - 1)| + 1).toNat

end

end A106230.P14978643510356622088

namespace A106230

/-- `A005563(abs(abs(1-n)-1)+1)` -/
def P14978643510356622088.Spec : Prop :=
  ∀ n, P14978643510356622088.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P2474092188868856516

`A132411((n+1)*C(2, n+1)+n)`
-/

namespace A106230.P2474092188868856516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 ((n + 1) * Nat.choose 2 (n + 1) + n)

end

end A106230.P2474092188868856516

namespace A106230

/-- `A132411((n+1)*C(2, n+1)+n)` -/
def P2474092188868856516.Spec : Prop :=
  ∀ n, P2474092188868856516.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P10021446400949348755

`(n+1)*(n-A188444(C(3, n+1)))`
-/

namespace A106230.P10021446400949348755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) - A188444 (Nat.choose 3 (n + 1)))

end

end A106230.P10021446400949348755

namespace A106230

/-- `(n+1)*(n-A188444(C(3, n+1)))` -/
def P10021446400949348755.Spec : Prop :=
  ∀ n, P10021446400949348755.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P9716514362710310127

`(A000108(C(3, n+1))+n-2)*(n+1)`
-/

namespace A106230.P9716514362710310127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000108 (Nat.choose 3 (n + 1)) + ((n : ℤ) - 2)) * (n + 1 : ℤ)

end

end A106230.P9716514362710310127

namespace A106230

/-- `(A000108(C(3, n+1))+n-2)*(n+1)` -/
def P9716514362710310127.Spec : Prop :=
  ∀ n, P9716514362710310127.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P15191476430977987219

`A067998((n+1)*A245028(C(2, n+1)+1))`
-/

namespace A106230.P15191476430977987219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067998 ((n + 1 : ℤ) * A245028 (Nat.choose 2 (n + 1) + 1)).toNat

end

end A106230.P15191476430977987219

namespace A106230

/-- `A067998((n+1)*A245028(C(2, n+1)+1))` -/
def P15191476430977987219.Spec : Prop :=
  ∀ n, P15191476430977987219.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P9546212755321544774

`A124051(A175631(n+1))`
-/

namespace A106230.P9546212755321544774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124051 (A175631 (n + 1)).toNat

end

end A106230.P9546212755321544774

namespace A106230

/-- `A124051(A175631(n+1))` -/
def P9546212755321544774.Spec : Prop :=
  ∀ n, P9546212755321544774.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P15029709785011718985

`(n+1)*(lcm(n-2, A014963(∑[n+1]))+1)`
-/

namespace A106230.P15029709785011718985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (Int.lcm ((n : ℤ) - 2) (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)) + 1)

end

end A106230.P15029709785011718985

namespace A106230

/-- `(n+1)*(lcm(n-2, A014963(∑[n+1]))+1)` -/
def P15029709785011718985.Spec : Prop :=
  ∀ n, (P15029709785011718985.a n : ℤ) = A106230 (n + 1)

end A106230

/-! ## A106230.P7150910782124272694

`A170949(a(n-1)+2)` with `a(0)=3, a(1)=8, a(2)=3`
-/

namespace A106230.P7150910782124272694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 8, 3] fun n a =>
  A170949 (a (n - 1) + 2).toNat

end

end A106230.P7150910782124272694

namespace A106230

/-- `A170949(a(n-1)+2)` -/
def P7150910782124272694.Spec : Prop :=
  ∀ n, P7150910782124272694.a n = A106230 (n + 1)

end A106230

/-! ## A106230.P5631554681560367467

`A023443((A023443(n)-A260196(n))²)`
-/

namespace A106230.P5631554681560367467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((A023443 n - A260196 n) ^ 2).toNat

end

end A106230.P5631554681560367467

namespace A106230

/-- `A023443((A023443(n)-A260196(n))²)` -/
def P5631554681560367467.Spec : Prop :=
  ∀ n, P5631554681560367467.a n = A106230 (n + 1)

end A106230

/-!
# A106231: Least j > 1 such that j^2 = (4*n^2 + 2)*(k^2) + (4*n^2 + 2)*k + 1.

The programs for A106231, there is no canonical definition to state claims against.
-/

/-! ## A106231.P4910404925883165468

`A317311(A139757(n)+A028310(n))`
-/

namespace A106231.P4910404925883165468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317311 (A139757 n + A028310 n).toNat

end

end A106231.P4910404925883165468

/-!
# A106232: Least k > 0 such that (4*n^2 + 2)*(k^2) + (4*n^2 + 2)*k + 1 = j^2.

The programs for A106232, the canonical program `A106232.P9003985020460360387` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106232 has offset 1).

The definition of A106232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106232.P7912954926636356767

`4*round(1/acot(∑[n]))`
-/

namespace A106232.P7912954926636356767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A106232.P7912954926636356767

namespace A106232

/-- `4*round(1/acot(∑[n]))` -/
def P7912954926636356767.Spec : Prop :=
  ∀ n, P7912954926636356767.a n = A106232 (n + 1)

end A106232

/-! ## A106232.P9003985020460360387

`a(n%2)*∑[n]` with `a(0)=4, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106232

/-- `a(n%2)*∑[n]` -/
def P9003985020460360387.Spec : Prop :=
  ∀ n, (P9003985020460360387.a n : ℤ) = A106232 (n + 1)

theorem P9003985020460360387.correct : P9003985020460360387.Spec := by
  intro n
  simp only [A106232, Nat.add_sub_cancel]

end A106232

/-! ## A106232.P11899154807181642503

`4*round(sqrt(∑[n]²+1))`
-/

namespace A106232.P11899154807181642503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway (Real.sqrt (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1 : ℕ) : ℝ))

end

end A106232.P11899154807181642503

namespace A106232

/-- `4*round(sqrt(∑[n]²+1))` -/
def P11899154807181642503.Spec : Prop :=
  ∀ n, P11899154807181642503.a n = A106232 (n + 1)

end A106232

/-! ## A106232.P7002921271342601299

`∑[a(n-1)+4]` with `a(0)=4, a(1)=0, a(2)=8`
-/

namespace A106232.P7002921271342601299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106232.P7002921271342601299

namespace A106232

/-- `∑[a(n-1)+4]` -/
def P7002921271342601299.Spec : Prop :=
  ∀ n, (P7002921271342601299.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P13829483237003727986

`a(n-1)+4*n` with `a(0)=4, a(1)=4`
-/

namespace A106232.P13829483237003727986
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  a (n - 1) + 4 * n

end

end A106232.P13829483237003727986

namespace A106232

/-- `a(n-1)+4*n` -/
def P13829483237003727986.Spec : Prop :=
  ∀ n, (P13829483237003727986.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P14779383568871419162

`lcm(2, 1-∑[2*n])+2`
-/

namespace A106232.P14779383568871419162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) + 2

end

end A106232.P14779383568871419162

namespace A106232

/-- `lcm(2, 1-∑[2*n])+2` -/
def P14779383568871419162.Spec : Prop :=
  ∀ n, (P14779383568871419162.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P3905982731403699379

`∑[n*4%(n+3)]+4`
-/

namespace A106232.P3905982731403699379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (4 % (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A106232.P3905982731403699379

namespace A106232

/-- `∑[n*4%(n+3)]+4` -/
def P3905982731403699379.Spec : Prop :=
  ∀ n, (P3905982731403699379.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P6959777849705452702

`∑[n*a(floor(1/n))]` with `a(0)=4, a(1)=0`
-/

namespace A106232.P6959777849705452702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  n * f1 ⌊1 / (n : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106232.P6959777849705452702

namespace A106232

/-- `∑[n*a(floor(1/n))]` -/
def P6959777849705452702.Spec : Prop :=
  ∀ n, (P6959777849705452702.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P16961836919291071218

`(2*n)²-a(n-1)` with `a(0)=4, a(1)=4`
-/

namespace A106232.P16961836919291071218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  ((2 * n) ^ 2 : ℤ) - a (n - 1)

end

end A106232.P16961836919291071218

namespace A106232

/-- `(2*n)²-a(n-1)` -/
def P16961836919291071218.Spec : Prop :=
  ∀ n, P16961836919291071218.a n = A106232 (n + 1)

end A106232

/-! ## A106232.P13549855555306873844

`5*n-(n-a(n-1))` with `a(0)=4, a(1)=4`
-/

namespace A106232.P13549855555306873844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 4] fun n a =>
  (5 * n : ℤ) - ((n : ℤ) - a (n - 1))

end

end A106232.P13549855555306873844

namespace A106232

/-- `5*n-(n-a(n-1))` -/
def P13549855555306873844.Spec : Prop :=
  ∀ n, P13549855555306873844.a n = A106232 (n + 1)

end A106232

/-! ## A106232.P15436797146804610874

`a(n-1)/(1-n/∑[n])` with `a(0)=4, a(1)=4`
-/

namespace A106232.P15436797146804610874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 4] fun n a =>
  a (n - 1) / (1 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A106232.P15436797146804610874

namespace A106232

/-- `a(n-1)/(1-n/∑[n])` -/
def P15436797146804610874.Spec : Prop :=
  ∀ n, P15436797146804610874.a n = (A106232 (n + 1) : ℚ)

end A106232

/-! ## A106232.P15210777451397196351

`lcm(2*(n+1), abs(2-n)+n+2)`
-/

namespace A106232.P15210777451397196351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * (n + 1) : ℤ) (|2 - (n : ℤ)| + (n + 2 : ℤ))

end

end A106232.P15210777451397196351

namespace A106232

/-- `lcm(2*(n+1), abs(2-n)+n+2)` -/
def P15210777451397196351.Spec : Prop :=
  ∀ n, (P15210777451397196351.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P17092907383881439931

`a(n-1)+n+n+n+n` with `a(0)=4, a(1)=4`
-/

namespace A106232.P17092907383881439931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 4] fun n a =>
  a (n - 1) + n + n + n + n

end

end A106232.P17092907383881439931

namespace A106232

/-- `a(n-1)+n+n+n+n` -/
def P17092907383881439931.Spec : Prop :=
  ∀ n, (P17092907383881439931.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P3336081371131589928

`gcd((n+1)*2*n, C(4, 2*n+1))`
-/

namespace A106232.P3336081371131589928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) * (2 * n)) (Nat.choose 4 (2 * n + 1))

end

end A106232.P3336081371131589928

namespace A106232

/-- `gcd((n+1)*2*n, C(4, 2*n+1))` -/
def P3336081371131589928.Spec : Prop :=
  ∀ n, (P3336081371131589928.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P3902742658131648441

`or((n+1)*2*n, C(4, 2*n+1))`
-/

namespace A106232.P3902742658131648441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor ((n + 1) * (2 * n)) (Nat.choose 4 (2 * n + 1))

end

end A106232.P3902742658131648441

namespace A106232

/-- `or((n+1)*2*n, C(4, 2*n+1))` -/
def P3902742658131648441.Spec : Prop :=
  ∀ n, (P3902742658131648441.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P13829119856812618703

`C(2, (n+1)²)²+(n+1)*2*n`
-/

namespace A106232.P13829119856812618703
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((n + 1) ^ 2) ^ 2 + (n + 1) * (2 * n)

end

end A106232.P13829119856812618703

namespace A106232

/-- `C(2, (n+1)²)²+(n+1)*2*n` -/
def P13829119856812618703.Spec : Prop :=
  ∀ n, (P13829119856812618703.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P16037415593269341787

`2*C(2, 2*n+1)+(n+1)*2*n`
-/

namespace A106232.P16037415593269341787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose 2 (2 * n + 1) + (n + 1) * (2 * n)

end

end A106232.P16037415593269341787

namespace A106232

/-- `2*C(2, 2*n+1)+(n+1)*2*n` -/
def P16037415593269341787.Spec : Prop :=
  ∀ n, (P16037415593269341787.a n : ℤ) = A106232 (n + 1)

end A106232

/-! ## A106232.P9480156234628000292

`A046092(A028310(n))`
-/

namespace A106232.P9480156234628000292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A028310 n).toNat

end

end A106232.P9480156234628000292

namespace A106232

/-- `A046092(A028310(n))` -/
def P9480156234628000292.Spec : Prop :=
  ∀ n, P9480156234628000292.a n = A106232 (n + 1)

end A106232

/-! ## A106232.P18199770051004785906

`A046092(A000007(n)+n)`
-/

namespace A106232.P18199770051004785906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A000007 n + (n : ℤ)).toNat

end

end A106232.P18199770051004785906

namespace A106232

/-- `A046092(A000007(n)+n)` -/
def P18199770051004785906.Spec : Prop :=
  ∀ n, P18199770051004785906.a n = A106232 (n + 1)

end A106232

/-! ## A106232.P8142171147313219884

`A046092(A004277(n)-n)`
-/

namespace A106232.P8142171147313219884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 (A004277 n - (n : ℤ)).toNat

end

end A106232.P8142171147313219884

namespace A106232

/-- `A046092(A004277(n)-n)` -/
def P8142171147313219884.Spec : Prop :=
  ∀ n, P8142171147313219884.a n = A106232 (n + 1)

end A106232

/-!
# A106233: An inverse Catalan transform of A003462.

The programs for A106233, the canonical program `A106233.P6473928606604538530` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106233 has offset 0).

The definition of A106233 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106233.P6473928606604538530

`4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106233

/-- `4*a(n-1)-7*a(n-2)+6*a(n-3)-3*a(n-4)` -/
def P6473928606604538530.Spec : Prop :=
  ∀ n, P6473928606604538530.a n = A106233 n

theorem P6473928606604538530.correct : P6473928606604538530.Spec := by
  intro n
  simp only [A106233]

end A106233

/-! ## A106233.P12267330225522131857

`(A057083(n)-A010892(n))/2`
-/

namespace A106233.P12267330225522131857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057083 n - A010892 n : ℚ) / 2

end

end A106233.P12267330225522131857

namespace A106233

/-- `(A057083(n)-A010892(n))/2` -/
def P12267330225522131857.Spec : Prop :=
  ∀ n, P12267330225522131857.a n = (A106233 n : ℚ)

end A106233

/-! ## A106233.P13359546388886421764

`Δ[A140343(n+2)]`
-/

namespace A106233.P13359546388886421764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106233.P13359546388886421764

namespace A106233

/-- `Δ[A140343(n+2)]` -/
def P13359546388886421764.Spec : Prop :=
  ∀ n, P13359546388886421764.a n = A106233 n

end A106233

/-! ## A106233.P8955884062686964375

`A134581(n+1)-A010892(n)`
-/

namespace A106233.P8955884062686964375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134581 (n + 1) - A010892 n

end

end A106233.P8955884062686964375

namespace A106233

/-- `A134581(n+1)-A010892(n)` -/
def P8955884062686964375.Spec : Prop :=
  ∀ n, P8955884062686964375.a n = A106233 n

end A106233

/-! ## A106233.P690751910511903246

`A057083(n)-A134581(n+1)`
-/

namespace A106233.P690751910511903246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057083 n - A134581 (n + 1)

end

end A106233.P690751910511903246

namespace A106233

/-- `A057083(n)-A134581(n+1)` -/
def P690751910511903246.Spec : Prop :=
  ∀ n, P690751910511903246.a n = A106233 n

end A106233

/-! ## A106233.P9749764942355800049

`A140343(n+3)-A140343(n+2)`
-/

namespace A106233.P9749764942355800049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140343 (n + 3) - A140343 (n + 2)

end

end A106233.P9749764942355800049

namespace A106233

/-- `A140343(n+3)-A140343(n+2)` -/
def P9749764942355800049.Spec : Prop :=
  ∀ n, P9749764942355800049.a n = A106233 n

end A106233

/-! ## A106233.P8792427583407901837

`A134581(n+1)-A260192(2*n)`
-/

namespace A106233.P8792427583407901837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134581 (n + 1) - A260192 (2 * n)

end

end A106233.P8792427583407901837

namespace A106233

/-- `A134581(n+1)-A260192(2*n)` -/
def P8792427583407901837.Spec : Prop :=
  ∀ n, P8792427583407901837.a n = A106233 n

end A106233

/-! ## A106233.P11005530234204258727

`∑[A119336(n)-A024493(n)]`
-/

namespace A106233.P11005530234204258727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119336 n - A024493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106233.P11005530234204258727

namespace A106233

/-- `∑[A119336(n)-A024493(n)]` -/
def P11005530234204258727.Spec : Prop :=
  ∀ n, P11005530234204258727.a n = A106233 n

end A106233

/-! ## A106233.P4895188615122933858

`∑[∑[A306847(n)]-A024493(n)]`
-/

namespace A106233.P4895188615122933858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A024493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106233.P4895188615122933858

namespace A106233

/-- `∑[∑[A306847(n)]-A024493(n)]` -/
def P4895188615122933858.Spec : Prop :=
  ∀ n, P4895188615122933858.a n = A106233 n

end A106233

/-! ## A106233.P11286843368627945506

`∑[A227430(n+1)-∑[A227430(n)]]`
-/

namespace A106233.P11286843368627945506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106233.P11286843368627945506

namespace A106233

/-- `∑[A227430(n+1)-∑[A227430(n)]]` -/
def P11286843368627945506.Spec : Prop :=
  ∀ n, P11286843368627945506.a n = A106233 n

end A106233

/-! ## A106233.P12424923504996071414

`A227430(n+2)-A024494(n+1)`
-/

namespace A106233.P12424923504996071414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 2) - A024494 (n + 1)

end

end A106233.P12424923504996071414

namespace A106233

/-- `A227430(n+2)-A024494(n+1)` -/
def P12424923504996071414.Spec : Prop :=
  ∀ n, P12424923504996071414.a n = A106233 n

end A106233

/-! ## A106233.P8964977107620746151

`A024495(n+1)-A290993(n+2)`
-/

namespace A106233.P8964977107620746151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (n + 1) - A290993 (n + 2)

end

end A106233.P8964977107620746151

namespace A106233

/-- `A024495(n+1)-A290993(n+2)` -/
def P8964977107620746151.Spec : Prop :=
  ∀ n, P8964977107620746151.a n = A106233 n

end A106233

/-! ## A106233.P10509205603883686923

`A227430(n+2)-A131708(n+1)`
-/

namespace A106233.P10509205603883686923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227430 (n + 2) - A131708 (n + 1)

end

end A106233.P10509205603883686923

namespace A106233

/-- `A227430(n+2)-A131708(n+1)` -/
def P10509205603883686923.Spec : Prop :=
  ∀ n, P10509205603883686923.a n = A106233 n

end A106233

/-!
# A106234: Triangle of the numbers of different forests with one or more isolated vertices. Those forests of rooted trees, have order N and m trees.

The programs for A106234, there is no canonical definition to state claims against.
-/

/-! ## A106234.P6810280511104669698

`A033185(n+1)-A106235(n+1)`
-/

namespace A106234.P6810280511104669698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) - A106235 (n + 1)

end

end A106234.P6810280511104669698

/-! ## A106234.P16713100849383004755

`A033185(n+1)+A057428(n)*A106235(n+1)`
-/

namespace A106234.P16713100849383004755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) + A057428 n * A106235 (n + 1)

end

end A106234.P16713100849383004755

/-! ## A106234.P8842888538463362023

`A300756(n)+A001221(A194673(n))`
-/

namespace A106234.P8842888538463362023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 n + A001221 (A194673 n).toNat

end

end A106234.P8842888538463362023

/-! ## A106234.P14015095974262874870

`A300756(A194673(n)²)+A300756(n)`
-/

namespace A106234.P14015095974262874870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300756 (A194673 n ^ 2).toNat + A300756 n

end

end A106234.P14015095974262874870

/-! ## A106234.P15865598470028650706

`A172263(A120060(n)+A096801(n))`
-/

namespace A106234.P15865598470028650706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (A120060 n + A096801 n).toNat

end

end A106234.P15865598470028650706

/-!
# A106235: Triangle of the numbers of different forests of m rooted trees of smallest order 2, i.e., without isolated vertices.

The programs for A106235, there is no canonical definition to state claims against.
-/

/-! ## A106235.P4000100829452356066

`A033185(n+1)-A106234(n+1)`
-/

namespace A106235.P4000100829452356066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) - A106234 (n + 1)

end

end A106235.P4000100829452356066

/-! ## A106235.P14125343487957249000

`A106234(A080036(n+1))-A106234(n+1)`
-/

namespace A106235.P14125343487957249000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A080036 (n + 1)).toNat - A106234 (n + 1)

end

end A106235.P14125343487957249000

/-! ## A106235.P8853127575679173318

`A106234(A014132(n+1)+1)-A106234(n+1)`
-/

namespace A106235.P8853127575679173318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A014132 (n + 1) + 1).toNat - A106234 (n + 1)

end

end A106235.P8853127575679173318

/-! ## A106235.P14626042452708042380

`A106234(A007401(n+1)+2)-A106234(n+1)`
-/

namespace A106235.P14626042452708042380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A007401 (n + 1) + 2).toNat - A106234 (n + 1)

end

end A106235.P14626042452708042380

/-! ## A106235.P1790654237160545588

`A106234(A003057(n+2)-A001478(n+1))-A106234(n+1)`
-/

namespace A106235.P1790654237160545588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A003057 (n + 2) - A001478 (n + 1)).toNat - A106234 (n + 1)

end

end A106235.P1790654237160545588

/-!
# A106236: Triangle of the numbers of different forests with m rooted trees having distinct orders.

The programs for A106236, there is no canonical definition to state claims against.
-/

/-! ## A106236.P7233005905096748830

`A060016(n+1)*A144018(A187829(n+1))`
-/

namespace A106236.P7233005905096748830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060016 (n + 1) * A144018 (A187829 (n + 1)).toNat

end

end A106236.P7233005905096748830

/-! ## A106236.P5506001065709276586

`lcm(A060016(A187829(n+1)), A144018(n+1))`
-/

namespace A106236.P5506001065709276586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060016 (A187829 (n + 1)).toNat) (A144018 (n + 1))

end

end A106236.P5506001065709276586

/-! ## A106236.P3703537156278258914

`A035044(A122536(n+1))%(4*A216956(n+1)/2)`
-/

namespace A106236.P3703537156278258914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035044 (A122536 (n + 1)).toNat) (SequenceMachineLib.roundAway (4 * ((A216956 (n + 1) : ℚ) / 2)))

end

end A106236.P3703537156278258914

/-! ## A106236.P14847229546591948875

`A035044(2*A093371(n+1))%(4*A216956(n+1)/2)`
-/

namespace A106236.P14847229546591948875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035044 (2 * A093371 (n + 1)).toNat) (SequenceMachineLib.roundAway (4 * ((A216956 (n + 1) : ℚ) / 2)))

end

end A106236.P14847229546591948875

/-! ## A106236.P14069399942383956002

`A035044(2^(n+1)-A121880(n+1))%(4*A216956(n+1)/2)`
-/

namespace A106236.P14069399942383956002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035044 ((2 ^ (n + 1) : ℤ) - A121880 (n + 1)).toNat) (SequenceMachineLib.roundAway (4 * ((A216956 (n + 1) : ℚ) / 2)))

end

end A106236.P14069399942383956002

/-!
# A106237: Triangle of the numbers of different forests with m trees having distinct orders.

The programs for A106237, there is no canonical definition to state claims against.
-/

/-! ## A106237.P11577112648366864191

`C(A228717(n+1), A228726(A238556(n+3)))`
-/

namespace A106237.P11577112648366864191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A228717 (n + 1)).toNat (A228726 (A238556 (n + 3)).toNat).toNat

end

end A106237.P11577112648366864191

/-!
# A106239: Triangle read by rows: T(n,m) = number of graphs on n labeled nodes, with m components of size = order. Also number of graphs on n labeled nodes with m unicyclic components.

The programs for A106239, there is no canonical definition to state claims against.
-/

/-! ## A106239.P6271394483821807009

`A057500(A010766(n+1)%A331684(n+5))`
-/

namespace A106239.P6271394483821807009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057500 (Int.tmod (A010766 (n + 1)) (A331684 (n + 5))).toNat

end

end A106239.P6271394483821807009

/-! ## A106239.P8585109078286808737

`A070681(A081614(n))%A027423(n)`
-/

namespace A106239.P8585109078286808737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070681 (A081614 n).toNat) (A027423 n)

end

end A106239.P8585109078286808737

/-! ## A106239.P4769711215651003575

`floor(A113378(n)/A113394(A113370(n)))`
-/

namespace A106239.P4769711215651003575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113378 n : ℚ) / (A113394 (A113370 n).toNat : ℚ)⌋

end

end A106239.P4769711215651003575

/-! ## A106239.P17884995358937163414

`floor(A113389(n)/A113394(A113370(n)))`
-/

namespace A106239.P17884995358937163414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113389 n : ℚ) / (A113394 (A113370 n).toNat : ℚ)⌋

end

end A106239.P17884995358937163414

/-! ## A106239.P4440959367570750660

`A325010(A009998(n)*A324999(n+1))`
-/

namespace A106239.P4440959367570750660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325010 (A009998 n * A324999 (n + 1)).toNat

end

end A106239.P4440959367570750660

/-!
# A106240: Triangle read by rows: T(n,m) = number of unlabeled cographs on n nodes with m connected components.

The programs for A106240, there is no canonical definition to state claims against.
-/

/-! ## A106240.P8755022648444286188

`A225644(A081114(n))`
-/

namespace A106240.P8755022648444286188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (A081114 n).toNat

end

end A106240.P8755022648444286188

/-! ## A106240.P14932883162861204309

`A316843(A132610(n))`
-/

namespace A106240.P14932883162861204309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316843 (A132610 n).toNat

end

end A106240.P14932883162861204309

/-! ## A106240.P1597436302131179824

`A120565(A124496(n+1))`
-/

namespace A106240.P1597436302131179824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A124496 (n + 1)).toNat

end

end A106240.P1597436302131179824

/-! ## A106240.P14487995330153791528

`A193404(A125800(n+1))`
-/

namespace A106240.P14487995330153791528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193404 (A125800 (n + 1)).toNat

end

end A106240.P14487995330153791528

/-! ## A106240.P7394215217603209048

`A290740(A113340(n+1))`
-/

namespace A106240.P7394215217603209048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290740 (A113340 (n + 1)).toNat

end

end A106240.P7394215217603209048

/-!
# A106241: Triangle of coefficients arising in connection with enumeration of series-parallel networks.

The programs for A106241, there is no canonical definition to state claims against.
-/

/-! ## A106241.P9529856276108553951

`2^(C(comp[∑[n]]-n, 2)-(n+1))*A008517(n+1)`
-/

namespace A106241.P9529856276108553951
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ) : ℤ) * (A008517 (n + 1) : ℚ)

end

end A106241.P9529856276108553951

/-! ## A106241.P16856607677997151913

`A008517(n+1)*A130321(n)`
-/

namespace A106241.P16856607677997151913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008517 (n + 1) * A130321 n

end

end A106241.P16856607677997151913

/-! ## A106241.P11748365332841487703

`A130321(n)*A340556(comp[∑[n]])`
-/

namespace A106241.P11748365332841487703
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n * A340556 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A106241.P11748365332841487703

/-! ## A106241.P12386424432978309137

`sqrt(A262616(n))*A008517(n+1)`
-/

namespace A106241.P12386424432978309137
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A262616 n : ℝ) * (A008517 (n + 1) : ℝ)

end

end A106241.P12386424432978309137

/-! ## A106241.P15853382745412153042

`2^A025581(n)*A008517(n+1)`
-/

namespace A106241.P15853382745412153042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A008517 (n + 1) : ℚ)

end

end A106241.P15853382745412153042

/-!
# A106242: Same triangle as A106243, but with rows read in boustrophedon manner, i.e., in the order in which they were created.

The programs for A106242, there is no canonical definition to state claims against.
-/

/-! ## A106242.P6991665461291482217

`A106243(A056023(n+1)-1)`
-/

namespace A106242.P6991665461291482217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106243 (A056023 (n + 1) - 1).toNat

end

end A106242.P6991665461291482217

/-! ## A106242.P1709972947136078631

`A106243(A093995(n+1)-A056011(n+1))`
-/

namespace A106242.P1709972947136078631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106243 (A093995 (n + 1) - A056011 (n + 1)).toNat

end

end A106242.P1709972947136078631

/-! ## A106242.P18045885067440674805

`A106243(A093622(n+3)%A056023(n+1))`
-/

namespace A106242.P18045885067440674805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106243 (Int.tmod (A093622 (n + 3)) (A056023 (n + 1))).toNat

end

end A106242.P18045885067440674805

/-! ## A106242.P17214560565946891454

`A048766(A103600(n+1)*A319453(n))`
-/

namespace A106242.P17214560565946891454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A103600 (n + 1) * A319453 n).toNat

end

end A106242.P17214560565946891454

/-! ## A106242.P8442360942428652823

`A048766(lcm(A103600(n+1), A319453(n)))`
-/

namespace A106242.P8442360942428652823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lcm (A103600 (n + 1)) (A319453 n))

end

end A106242.P8442360942428652823

/-!
# A106243: Triangle read by rows from left to right. However, triangle is constructed in the boustrophedon way, reading alternately right to left and left to right. Top entry is 1. In all later rows, initial entry is 0, other entries are sum of previous entry in that row plus sum of two entries above it in previous row.

The programs for A106243, there is no canonical definition to state claims against.
-/

/-! ## A106243.P6595560273482086212

`A106242(A056023(n+1)-1)`
-/

namespace A106243.P6595560273482086212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106242 (A056023 (n + 1) - 1).toNat

end

end A106243.P6595560273482086212

/-! ## A106243.P8001408255328933680

`A106242(A093995(n+1)-A056011(n+1))`
-/

namespace A106243.P8001408255328933680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106242 (A093995 (n + 1) - A056011 (n + 1)).toNat

end

end A106243.P8001408255328933680

/-! ## A106243.P18326842455648310540

`A106242(A093622(n+3)%A056023(n+1))`
-/

namespace A106243.P18326842455648310540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106242 (Int.tmod (A093622 (n + 3)) (A056023 (n + 1))).toNat

end

end A106243.P18326842455648310540

/-!
# A106244: Number of partitions into distinct prime powers.

The programs for A106244, there is no canonical definition to state claims against.
-/

/-! ## A106244.P2900128925791648813

`∑[A280152(n)]`
-/

namespace A106244.P2900128925791648813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106244.P2900128925791648813

/-! ## A106244.P6156540162347824690

`A352166(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106244.P6156540162347824690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A352166 n + a (n - 2)

end

end A106244.P6156540162347824690

/-! ## A106244.P3239004561420974262

`A280152(2*n-n)+a(n-1)` with `a(0)=1`
-/

namespace A106244.P3239004561420974262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280152 (2 * n - n) + a (n - 1)

end

end A106244.P3239004561420974262

/-! ## A106244.P2777060793490229952

`A054685(abs(1-n))+A054685(n)`
-/

namespace A106244.P2777060793490229952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054685 |1 - (n : ℤ)|.toNat + A054685 n

end

end A106244.P2777060793490229952

/-! ## A106244.P5361157309503699206

`A054685(n+1)+A054685(n)-A280152(n+1)`
-/

namespace A106244.P5361157309503699206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054685 (n + 1) + (A054685 n - A280152 (n + 1))

end

end A106244.P5361157309503699206

/-!
# A106245: Number of partitions into powers of distinct primes.

The programs for A106245, there is no canonical definition to state claims against.
-/

/-! ## A106245.P592786662351179513

`A051613(n)+A051613(n+1)`
-/

namespace A106245.P592786662351179513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051613 n + A051613 (n + 1)

end

end A106245.P592786662351179513

/-! ## A106245.P8002805176398921558

`A051613(n)+Δ[A009490(n)]`
-/

namespace A106245.P8002805176398921558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051613 n + (f1 (n + 1) - f1 n)

end

end A106245.P8002805176398921558

/-!
# A106246: Number triangle T(n,k)=C(n,k)C(2,n-k).

The programs for A106246, the canonical program `A106246.P11087909362624878543` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106246 has offset 0).

The definition of A106246 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106246.P10157470767103234390

`A130595(n)*A185018(n)`
-/

namespace A106246.P10157470767103234390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130595 n * A185018 n

end

end A106246.P10157470767103234390

namespace A106246

/-- `A130595(n)*A185018(n)` -/
def P10157470767103234390.Spec : Prop :=
  ∀ n, P10157470767103234390.a n = A106246 n

end A106246

/-! ## A106246.P11083455976203476422

`A110330(n)/A106270(n)`
-/

namespace A106246.P11083455976203476422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110330 n : ℚ) / (A106270 n : ℚ)

end

end A106246.P11083455976203476422

namespace A106246

/-- `A110330(n)/A106270(n)` -/
def P11083455976203476422.Spec : Prop :=
  ∀ n, P11083455976203476422.a n = (A106246 n : ℚ)

end A106246

/-! ## A106246.P16270660334403456958

`gcd(A110330(n), A129685(n))`
-/

namespace A106246.P16270660334403456958
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110330 n) (A129685 n)

end

end A106246.P16270660334403456958

namespace A106246

/-- `gcd(A110330(n), A129685(n))` -/
def P16270660334403456958.Spec : Prop :=
  ∀ n, (P16270660334403456958.a n : ℤ) = A106246 n

end A106246

/-! ## A106246.P13978119759030432315

`lcm(A144389(n), A185018(n))`
-/

namespace A106246.P13978119759030432315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A144389 n) (A185018 n)

end

end A106246.P13978119759030432315

namespace A106246

/-- `lcm(A144389(n), A185018(n))` -/
def P13978119759030432315.Spec : Prop :=
  ∀ n, (P13978119759030432315.a n : ℤ) = A106246 n

end A106246

/-! ## A106246.P17124989178337584949

`abs(A132014(n)/A194543(n))`
-/

namespace A106246.P17124989178337584949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A132014 n : ℚ) / (A194543 n : ℚ)|

end

end A106246.P17124989178337584949

namespace A106246

/-- `abs(A132014(n)/A194543(n))` -/
def P17124989178337584949.Spec : Prop :=
  ∀ n, P17124989178337584949.a n = (A106246 n : ℚ)

end A106246

/-! ## A106246.P16081354786031809234

`A132014(n)²/A038207(n)`
-/

namespace A106246.P16081354786031809234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132014 n ^ 2 : ℚ) / (A038207 n : ℚ)

end

end A106246.P16081354786031809234

namespace A106246

/-- `A132014(n)²/A038207(n)` -/
def P16081354786031809234.Spec : Prop :=
  ∀ n, P16081354786031809234.a n = (A106246 n : ℚ)

end A106246

/-! ## A106246.P11087909362624878543

`A007318(n)*A167194(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A106246

/-- `A007318(n)*A167194(n+1)` -/
def P11087909362624878543.Spec : Prop :=
  ∀ n, P11087909362624878543.a n = A106246 n

theorem P11087909362624878543.correct : P11087909362624878543.Spec := by
  intro n
  simp only [A106246]

end A106246

/-! ## A106246.P18407093580766408846

`A026736(n)*A167194(n+1)`
-/

namespace A106246.P18407093580766408846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026736 n * A167194 (n + 1)

end

end A106246.P18407093580766408846

namespace A106246

/-- `A026736(n)*A167194(n+1)` -/
def P18407093580766408846.Spec : Prop :=
  ∀ n, P18407093580766408846.a n = A106246 n

end A106246

/-! ## A106246.P18417972048463099133

`A080850(n)*A167194(n+1)`
-/

namespace A106246.P18417972048463099133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080850 n * A167194 (n + 1)

end

end A106246.P18417972048463099133

namespace A106246

/-- `A080850(n)*A167194(n+1)` -/
def P18417972048463099133.Spec : Prop :=
  ∀ n, P18417972048463099133.a n = A106246 n

end A106246

/-! ## A106246.P5997158516584283695

`A091836(n)*A167194(n+1)`
-/

namespace A106246.P5997158516584283695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091836 n * A167194 (n + 1)

end

end A106246.P5997158516584283695

namespace A106246

/-- `A091836(n)*A167194(n+1)` -/
def P5997158516584283695.Spec : Prop :=
  ∀ n, P5997158516584283695.a n = A106246 n

end A106246

/-! ## A106246.P3152838922321063382

`A097724(n)*A167194(n+1)`
-/

namespace A106246.P3152838922321063382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097724 n * A167194 (n + 1)

end

end A106246.P3152838922321063382

namespace A106246

/-- `A097724(n)*A167194(n+1)` -/
def P3152838922321063382.Spec : Prop :=
  ∀ n, P3152838922321063382.a n = A106246 n

end A106246

/-! ## A106246.P13875211270335073107

`A099567(n)*A167194(n+1)`
-/

namespace A106246.P13875211270335073107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099567 n * A167194 (n + 1)

end

end A106246.P13875211270335073107

namespace A106246

/-- `A099567(n)*A167194(n+1)` -/
def P13875211270335073107.Spec : Prop :=
  ∀ n, P13875211270335073107.a n = A106246 n

end A106246

/-! ## A106246.P12191358509840250102

`A107065(n)*A167194(n+1)`
-/

namespace A106246.P12191358509840250102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107065 n * A167194 (n + 1)

end

end A106246.P12191358509840250102

namespace A106246

/-- `A107065(n)*A167194(n+1)` -/
def P12191358509840250102.Spec : Prop :=
  ∀ n, P12191358509840250102.a n = A106246 n

end A106246

/-! ## A106246.P16624393141370987861

`and(A141679(n+1), A144389(n))`
-/

namespace A106246.P16624393141370987861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141679 (n + 1)) (A144389 n)

end

end A106246.P16624393141370987861

namespace A106246

/-- `and(A141679(n+1), A144389(n))` -/
def P16624393141370987861.Spec : Prop :=
  ∀ n, P16624393141370987861.a n = A106246 n

end A106246

/-! ## A106246.P7411263457957476043

`abs(A132014(n)/A104762(n+1))`
-/

namespace A106246.P7411263457957476043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A132014 n : ℚ) / (A104762 (n + 1) : ℚ)|

end

end A106246.P7411263457957476043

namespace A106246

/-- `abs(A132014(n)/A104762(n+1))` -/
def P7411263457957476043.Spec : Prop :=
  ∀ n, P7411263457957476043.a n = (A106246 n : ℚ)

end A106246

/-! ## A106246.P674559723044426603

`abs(A132014(n)/A008279(A099375(n)))`
-/

namespace A106246.P674559723044426603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A132014 n : ℚ) / (A008279 (A099375 n).toNat : ℚ)|

end

end A106246.P674559723044426603

namespace A106246

/-- `abs(A132014(n)/A008279(A099375(n)))` -/
def P674559723044426603.Spec : Prop :=
  ∀ n, P674559723044426603.a n = (A106246 n : ℚ)

end A106246

/-! ## A106246.P17204319177583206938

`A140530(n)*A167194(n+1)`
-/

namespace A106246.P17204319177583206938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140530 n * A167194 (n + 1)

end

end A106246.P17204319177583206938

namespace A106246

/-- `A140530(n)*A167194(n+1)` -/
def P17204319177583206938.Spec : Prop :=
  ∀ n, P17204319177583206938.a n = A106246 n

end A106246

/-! ## A106246.P14305038995894105935

`A050446(n)*A167194(n+1)`
-/

namespace A106246.P14305038995894105935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050446 n * A167194 (n + 1)

end

end A106246.P14305038995894105935

namespace A106246

/-- `A050446(n)*A167194(n+1)` -/
def P14305038995894105935.Spec : Prop :=
  ∀ n, P14305038995894105935.a n = A106246 n

end A106246

/-! ## A106246.P17555111937952996147

`A051137(n)*A167194(n+1)`
-/

namespace A106246.P17555111937952996147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051137 n * A167194 (n + 1)

end

end A106246.P17555111937952996147

namespace A106246

/-- `A051137(n)*A167194(n+1)` -/
def P17555111937952996147.Spec : Prop :=
  ∀ n, P17555111937952996147.a n = A106246 n

end A106246

/-! ## A106246.P7458437176833074660

`A185018(n)*A247453(n)`
-/

namespace A106246.P7458437176833074660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185018 n * A247453 n

end

end A106246.P7458437176833074660

namespace A106246

/-- `A185018(n)*A247453(n)` -/
def P7458437176833074660.Spec : Prop :=
  ∀ n, P7458437176833074660.a n = A106246 n

end A106246

/-!
# A106247: Expansion of (1+2*x-x^2-2*x^3+x^4) / (1-x^2)^3.

The programs for A106247, the canonical program `A106247.P8726238749146726647` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106247 has offset 0).

The definition of A106247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x-x^2-2x^3+x^4)/(1-3x^2+3x^4-x^6))` (program `A106247.P8726238749146726647`, by `A106247.P8726238749146726647.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106247.P8726238749146726647

`ogf((1+2x-x^2-2x^3+x^4)/(1-3x^2+3x^4-x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106247

/-- `ogf((1+2x-x^2-2x^3+x^4)/(1-3x^2+3x^4-x^6))` -/
def P8726238749146726647.Spec : Prop :=
  ∀ n, P8726238749146726647.a n = A106247 n

theorem P8726238749146726647.correct : P8726238749146726647.Spec := by
  intro n
  simp only [A106247]

end A106247

/-! ## A106247.P2335847961935706861

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=4, a(4)=4, a(5)=6`
-/

namespace A106247.P2335847961935706861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 4, 4, 6] fun n a =>
  3 * a (n - 2) - 3 * a (n - 4) + a (n - 6)

end

end A106247.P2335847961935706861

namespace A106247

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P2335847961935706861.Spec : Prop :=
  ∀ n, P2335847961935706861.a n = A106247 n

end A106247

/-! ## A106247.P16222771199833809686

`A057979(n-1)+a(n-2)+1` with `a(0)=1, a(1)=2`
-/

namespace A106247.P16222771199833809686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A057979 (n - 1) + a (n - 2) + 1

end

end A106247.P16222771199833809686

namespace A106247

/-- `A057979(n-1)+a(n-2)+1` -/
def P16222771199833809686.Spec : Prop :=
  ∀ n, P16222771199833809686.a n = A106247 n

end A106247

/-! ## A106247.P8819076819541260754

`A055802(n+2)+n+1-a(n-1)` with `a(0)=1`
-/

namespace A106247.P8819076819541260754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A055802 (n + 2) + (n + 1 : ℤ) - a (n - 1)

end

end A106247.P8819076819541260754

namespace A106247

/-- `A055802(n+2)+n+1-a(n-1)` -/
def P8819076819541260754.Spec : Prop :=
  ∀ n, P8819076819541260754.a n = A106247 n

end A106247

/-! ## A106247.P12545340836760422451

`A034856(ceil(C(or(1, n), n)/2))-n*(-1)^n`
-/

namespace A106247.P12545340836760422451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉.toNat - (n : ℤ) * (-1) ^ n

end

end A106247.P12545340836760422451

namespace A106247

/-- `A034856(ceil(C(or(1, n), n)/2))-n*(-1)^n` -/
def P12545340836760422451.Spec : Prop :=
  ∀ n, P12545340836760422451.a n = A106247 n

end A106247

/-! ## A106247.P6511477154970585300

`A160791(n)+A152271(n)`
-/

namespace A106247.P6511477154970585300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160791 n + A152271 n

end

end A106247.P6511477154970585300

namespace A106247

/-- `A160791(n)+A152271(n)` -/
def P6511477154970585300.Spec : Prop :=
  ∀ n, P6511477154970585300.a n = A106247 n

end A106247

/-! ## A106247.P1289374934761653009

`A002620(n+1)+1-A124093(n)`
-/

namespace A106247.P1289374934761653009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (1 - A124093 n)

end

end A106247.P1289374934761653009

namespace A106247

/-- `A002620(n+1)+1-A124093(n)` -/
def P1289374934761653009.Spec : Prop :=
  ∀ n, P1289374934761653009.a n = A106247 n

end A106247

/-! ## A106247.P11486108404230229245

`A176447(n)+A000217(1-A026741(n)+n)`
-/

namespace A106247.P11486108404230229245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 n + A000217 (1 - A026741 n + (n : ℤ)).toNat

end

end A106247.P11486108404230229245

namespace A106247

/-- `A176447(n)+A000217(1-A026741(n)+n)` -/
def P11486108404230229245.Spec : Prop :=
  ∀ n, P11486108404230229245.a n = A106247 n

end A106247

/-! ## A106247.P17175178544648205623

`A008805(n+1)+A142150(n)-a(n-1)` with `a(0)=1`
-/

namespace A106247.P17175178544648205623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008805 (n + 1) + (A142150 n - a (n - 1))

end

end A106247.P17175178544648205623

namespace A106247

/-- `A008805(n+1)+A142150(n)-a(n-1)` -/
def P17175178544648205623.Spec : Prop :=
  ∀ n, P17175178544648205623.a n = A106247 n

end A106247

/-! ## A106247.P13302417346391606285

`record[n+1-A097805(n+1)]-a(n-1)` with `a(0)=1`
-/

namespace A106247.P13302417346391606285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A097805 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - a (n - 1)

end

end A106247.P13302417346391606285

namespace A106247

/-- `record[n+1-A097805(n+1)]-a(n-1)` -/
def P13302417346391606285.Spec : Prop :=
  ∀ n, P13302417346391606285.a n = A106247 n

end A106247

/-! ## A106247.P8962490650691147073

`A158416(2*n/gcd(2, n)²*A158416(n))`
-/

namespace A106247.P8962490650691147073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 (SequenceMachineLib.roundAway ((2 * n : ℚ) / (Nat.gcd 2 n ^ 2 : ℚ) * (A158416 n : ℚ))).toNat

end

end A106247.P8962490650691147073

namespace A106247

/-- `A158416(2*n/gcd(2, n)²*A158416(n))` -/
def P8962490650691147073.Spec : Prop :=
  ∀ n, P8962490650691147073.a n = A106247 n

end A106247

/-! ## A106247.P11538107411308260193

`A026741(A026741(n)*A158416(n))+1`
-/

namespace A106247.P11538107411308260193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n * A158416 n).toNat + 1

end

end A106247.P11538107411308260193

namespace A106247

/-- `A026741(A026741(n)*A158416(n))+1` -/
def P11538107411308260193.Spec : Prop :=
  ∀ n, P11538107411308260193.a n = A106247 n

end A106247

/-! ## A106247.P1019651505911190560

`A093178(n)+A057979(∑[A093178(n)])`
-/

namespace A106247.P1019651505911190560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n + A057979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A106247.P1019651505911190560

namespace A106247

/-- `A093178(n)+A057979(∑[A093178(n)])` -/
def P1019651505911190560.Spec : Prop :=
  ∀ n, P1019651505911190560.a n = A106247 n

end A106247

/-! ## A106247.P7408875792402666341

`A055794(A053439(n+1))`
-/

namespace A106247.P7408875792402666341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055794 (A053439 (n + 1)).toNat

end

end A106247.P7408875792402666341

namespace A106247

/-- `A055794(A053439(n+1))` -/
def P7408875792402666341.Spec : Prop :=
  ∀ n, P7408875792402666341.a n = A106247 n

end A106247

/-! ## A106247.P6251353432676169289

`A078806(A034856(n+2))`
-/

namespace A106247.P6251353432676169289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078806 (A034856 (n + 2)).toNat

end

end A106247.P6251353432676169289

namespace A106247

/-- `A078806(A034856(n+2))` -/
def P6251353432676169289.Spec : Prop :=
  ∀ n, P6251353432676169289.a n = A106247 n

end A106247

/-! ## A106247.P10409499795245062553

`A078821(A340266(n+2))`
-/

namespace A106247.P10409499795245062553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078821 (A340266 (n + 2)).toNat

end

end A106247.P10409499795245062553

namespace A106247

/-- `A078821(A340266(n+2))` -/
def P10409499795245062553.Spec : Prop :=
  ∀ n, P10409499795245062553.a n = A106247 n

end A106247

/-!
# A106249: Expansion of (1-x+x^2+x^3)/((1+x)*(1+x^2)*(1-x)^2).

The programs for A106249, the canonical program `A106249.P4109591685094578650` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106249 has offset 0).

The definition of A106249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^3)/(1-x-x^4+x^5))` (program `A106249.P4109591685094578650`, by `A106249.P4109591685094578650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106249.P14242614158132550128

`n-1-2*floor((n-1)/4)`
-/

namespace A106249.P14242614158132550128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - 2 * ⌊((n : ℤ) - 1 : ℚ) / 4⌋

end

end A106249.P14242614158132550128

namespace A106249

/-- `n-1-2*floor((n-1)/4)` -/
def P14242614158132550128.Spec : Prop :=
  ∀ n, P14242614158132550128.a n = A106249 n

end A106249

/-! ## A106249.P4109591685094578650

`ogf((1-x+x^2+x^3)/(1-x-x^4+x^5))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106249

/-- `ogf((1-x+x^2+x^3)/(1-x-x^4+x^5))` -/
def P4109591685094578650.Spec : Prop :=
  ∀ n, P4109591685094578650.a n = A106249 n

theorem P4109591685094578650.correct : P4109591685094578650.Spec := by
  intro n
  simp only [A106249]

end A106249

/-! ## A106249.P14434513937001607811

`∑[(and(2, n)-1)^n]`
-/

namespace A106249.P14434513937001607811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106249.P14434513937001607811

namespace A106249

/-- `∑[(and(2, n)-1)^n]` -/
def P14434513937001607811.Spec : Prop :=
  ∀ n, P14434513937001607811.a n = A106249 n

end A106249

/-! ## A106249.P11223005649989501661

`floor(sinh(log(or(2, n+1))))`
-/

namespace A106249.P11223005649989501661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sinh (Real.log (Nat.lor 2 (n + 1) : ℝ))⌋

end

end A106249.P11223005649989501661

namespace A106249

/-- `floor(sinh(log(or(2, n+1))))` -/
def P11223005649989501661.Spec : Prop :=
  ∀ n, P11223005649989501661.a n = A106249 n

end A106249

/-! ## A106249.P7718503452323961742

`∑[round(sin(gcd(4, 1-n)))]`
-/

namespace A106249.P7718503452323961742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (Int.gcd 4 (1 - (n : ℤ)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106249.P7718503452323961742

namespace A106249

/-- `∑[round(sin(gcd(4, 1-n)))]` -/
def P7718503452323961742.Spec : Prop :=
  ∀ n, P7718503452323961742.a n = A106249 n

end A106249

/-! ## A106249.P10924354471525661029

`ceil(and(n+1, -3)/2)`
-/

namespace A106249.P10924354471525661029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.land (n + 1 : ℤ) (-3) : ℚ) / 2⌉

end

end A106249.P10924354471525661029

namespace A106249

/-- `ceil(and(n+1, -3)/2)` -/
def P10924354471525661029.Spec : Prop :=
  ∀ n, P10924354471525661029.a n = A106249 n

end A106249

/-! ## A106249.P17136794519157343565

`round(and(n+1, -3)/2)`
-/

namespace A106249.P17136794519157343565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.land (n + 1 : ℤ) (-3) : ℚ) / 2)

end

end A106249.P17136794519157343565

namespace A106249

/-- `round(and(n+1, -3)/2)` -/
def P17136794519157343565.Spec : Prop :=
  ∀ n, P17136794519157343565.a n = A106249 n

end A106249

/-! ## A106249.P10776975584992745327

`floor((or(2, n+1)-1)/2)`
-/

namespace A106249.P10776975584992745327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 2 (n + 1) : ℤ) - 1 : ℚ) / 2⌋

end

end A106249.P10776975584992745327

namespace A106249

/-- `floor((or(2, n+1)-1)/2)` -/
def P10776975584992745327.Spec : Prop :=
  ∀ n, P10776975584992745327.a n = A106249 n

end A106249

/-! ## A106249.P8077230056252080426

`(n+2-and(3, -n))/2`
-/

namespace A106249.P8077230056252080426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - Int.land 3 (-(n : ℤ)) : ℚ) / 2

end

end A106249.P8077230056252080426

namespace A106249

/-- `(n+2-and(3, -n))/2` -/
def P8077230056252080426.Spec : Prop :=
  ∀ n, P8077230056252080426.a n = (A106249 n : ℚ)

end A106249

/-! ## A106249.P13896142660655239082

`floor(((n+3)%4+n)/2)`
-/

namespace A106249.P13896142660655239082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 3) % 4 + n : ℕ) : ℚ) / 2⌋

end

end A106249.P13896142660655239082

namespace A106249

/-- `floor(((n+3)%4+n)/2)` -/
def P13896142660655239082.Spec : Prop :=
  ∀ n, P13896142660655239082.a n = A106249 n

end A106249

/-! ## A106249.P164086765587297276

`floor((and(2, n-1)+n)/2)`
-/

namespace A106249.P164086765587297276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.land 2 ((n : ℤ) - 1) + (n : ℤ) : ℚ) / 2⌋

end

end A106249.P164086765587297276

namespace A106249

/-- `floor((and(2, n-1)+n)/2)` -/
def P164086765587297276.Spec : Prop :=
  ∀ n, P164086765587297276.a n = A106249 n

end A106249

/-! ## A106249.P10054645386279205842

`ceil(n-or(2, n-1)/2)`
-/

namespace A106249.P10054645386279205842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2⌉

end

end A106249.P10054645386279205842

namespace A106249

/-- `ceil(n-or(2, n-1)/2)` -/
def P10054645386279205842.Spec : Prop :=
  ∀ n, P10054645386279205842.a n = A106249 n

end A106249

/-! ## A106249.P7279341933134756933

`round(n-or(2, n-1)/2)`
-/

namespace A106249.P7279341933134756933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) - (Int.lor 2 ((n : ℤ) - 1) : ℚ) / 2)

end

end A106249.P7279341933134756933

namespace A106249

/-- `round(n-or(2, n-1)/2)` -/
def P7279341933134756933.Spec : Prop :=
  ∀ n, P7279341933134756933.a n = A106249 n

end A106249

/-! ## A106249.P1984326085801031686

`round((xor(2, n+1)+n)/4)`
-/

namespace A106249.P1984326085801031686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 2 (n + 1) + n : ℚ) / 4)

end

end A106249.P1984326085801031686

namespace A106249

/-- `round((xor(2, n+1)+n)/4)` -/
def P1984326085801031686.Spec : Prop :=
  ∀ n, P1984326085801031686.a n = A106249 n

end A106249

/-! ## A106249.P11066918916307788349

`floor(-(or(2, -(n+2))/2))`
-/

namespace A106249.P11066918916307788349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-((Int.lor 2 (-(n + 2 : ℤ)) : ℚ) / 2)⌋

end

end A106249.P11066918916307788349

namespace A106249

/-- `floor(-(or(2, -(n+2))/2))` -/
def P11066918916307788349.Spec : Prop :=
  ∀ n, P11066918916307788349.a n = A106249 n

end A106249

/-! ## A106249.P8591221648058863664

`abs(a(n-4)+2)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`
-/

namespace A106249.P8591221648058863664
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2] fun n a =>
  a (n - 4) + 2

end

end A106249.P8591221648058863664

namespace A106249

/-- `abs(a(n-4)+2)` -/
def P8591221648058863664.Spec : Prop :=
  ∀ n, (P8591221648058863664.a n : ℤ) = A106249 n

end A106249

/-! ## A106249.P3073261836901799924

`(and(3, n-1)+n-1)/2`
-/

namespace A106249.P3073261836901799924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 3 ((n : ℤ) - 1) + ((n : ℤ) - 1) : ℚ) / 2

end

end A106249.P3073261836901799924

namespace A106249

/-- `(and(3, n-1)+n-1)/2` -/
def P3073261836901799924.Spec : Prop :=
  ∀ n, P3073261836901799924.a n = (A106249 n : ℚ)

end A106249

/-! ## A106249.P13806228353319899068

`floor(n-a(a(n-1)-(1-a(n-2))))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A106249.P13806228353319899068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - a (a (n - 1) - (1 - a (n - 2))).toNat

end

end A106249.P13806228353319899068

namespace A106249

/-- `floor(n-a(a(n-1)-(1-a(n-2))))` -/
def P13806228353319899068.Spec : Prop :=
  ∀ n, P13806228353319899068.a n = A106249 n

end A106249

/-! ## A106249.P12685840496477694059

`A285869(xor(1, n))`
-/

namespace A106249.P12685840496477694059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285869 (Nat.xor 1 n)

end

end A106249.P12685840496477694059

namespace A106249

/-- `A285869(xor(1, n))` -/
def P12685840496477694059.Spec : Prop :=
  ∀ n, P12685840496477694059.a n = A106249 n

end A106249

/-! ## A106249.P4680772651036144071

`∑[∏[A087960(n)]]`
-/

namespace A106249.P4680772651036144071
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106249.P4680772651036144071

namespace A106249

/-- `∑[∏[A087960(n)]]` -/
def P4680772651036144071.Spec : Prop :=
  ∀ n, P4680772651036144071.a n = A106249 n

end A106249

/-!
# A106250: Expansion of (1-x+x^2+x^3)/(1-x-x^5+x^6).

The programs for A106250, the canonical program `A106250.P17408506067390452778` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106250 has offset 0).

The definition of A106250 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^3)/(1-x-x^5+x^6))` (program `A106250.P17408506067390452778`, by `A106250.P17408506067390452778.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106250.P17408506067390452778

`ogf((1-x+x^2+x^3)/(1-x-x^5+x^6))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106250

/-- `ogf((1-x+x^2+x^3)/(1-x-x^5+x^6))` -/
def P17408506067390452778.Spec : Prop :=
  ∀ n, P17408506067390452778.a n = A106250 n

theorem P17408506067390452778.correct : P17408506067390452778.Spec := by
  intro n
  simp only [A106250]

end A106250

/-! ## A106250.P4433848496465557315

`a(n-5)+2` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=2`
-/

namespace A106250.P4433848496465557315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1, 2, 2] fun n a =>
  a (n - 5) + 2

end

end A106250.P4433848496465557315

namespace A106250

/-- `a(n-5)+2` -/
def P4433848496465557315.Spec : Prop :=
  ∀ n, (P4433848496465557315.a n : ℤ) = A106250 n

end A106250

/-! ## A106250.P11610463730528832802

`char[5*n]+Δ[floor(n²/5)]`
-/

namespace A106250.P11610463730528832802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n ^ 2 : ℚ) / 5⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A106250.P11610463730528832802

namespace A106250

/-- `char[5*n]+Δ[floor(n²/5)]` -/
def P11610463730528832802.Spec : Prop :=
  ∀ n, P11610463730528832802.a n = A106250 n

end A106250

/-! ## A106250.P9265948942649488264

`∑[floor(a(n-5))]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A106250.P9265948942649488264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 1, 0] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106250.P9265948942649488264

namespace A106250

/-- `∑[floor(a(n-5))]` -/
def P9265948942649488264.Spec : Prop :=
  ∀ n, P9265948942649488264.a n = A106250 n

end A106250

/-! ## A106250.P11505494355107588002

`round(∑[1/(2-∑[n+1]%5)])`
-/

namespace A106250.P11505494355107588002
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (2 - (((∑ j ∈ Finset.range (n + 1), f2 j) % 5 : ℕ) : ℤ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A106250.P11505494355107588002

namespace A106250

/-- `round(∑[1/(2-∑[n+1]%5)])` -/
def P11505494355107588002.Spec : Prop :=
  ∀ n, P11505494355107588002.a n = A106250 n

end A106250

/-! ## A106250.P18131529031681846675

`∑[a(n-5)^3]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A106250.P18131529031681846675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 1, 0] fun n f1 =>
  f1 (n - 5) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106250.P18131529031681846675

namespace A106250

/-- `∑[a(n-5)^3]` -/
def P18131529031681846675.Spec : Prop :=
  ∀ n, P18131529031681846675.a n = A106250 n

end A106250

/-! ## A106250.P12151860962048696272

`xor(ceil(Δ[n²]/5), char[5*n+1])`
-/

namespace A106250.P12151860962048696272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / 5⌉ ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A106250.P12151860962048696272

namespace A106250

/-- `xor(ceil(Δ[n²]/5), char[5*n+1])` -/
def P12151860962048696272.Spec : Prop :=
  ∀ n, P12151860962048696272.a n = A106250 n

end A106250

/-! ## A106250.P7486245395276737444

`∑[a(n-5)²*a(n-5)]` with `a(0)=1, a(1)=-1, a(2)=1, a(3)=1, a(4)=0`
-/

namespace A106250.P7486245395276737444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1, 1, 0] fun n f1 =>
  f1 (n - 5) ^ 2 * f1 (n - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106250.P7486245395276737444

namespace A106250

/-- `∑[a(n-5)²*a(n-5)]` -/
def P7486245395276737444.Spec : Prop :=
  ∀ n, P7486245395276737444.a n = A106250 n

end A106250

/-! ## A106250.P1965874617080532073

`A106249(n-A002266(n+1))`
-/

namespace A106250.P1965874617080532073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 ((n : ℤ) - A002266 (n + 1)).toNat

end

end A106250.P1965874617080532073

namespace A106250

/-- `A106249(n-A002266(n+1))` -/
def P1965874617080532073.Spec : Prop :=
  ∀ n, P1965874617080532073.a n = A106250 n

end A106250

/-! ## A106250.P9671535915652526338

`A057354(A010891(n)+2+n)`
-/

namespace A106250.P9671535915652526338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A010891 n + 2 + (n : ℤ)).toNat

end

end A106250.P9671535915652526338

namespace A106250

/-- `A057354(A010891(n)+2+n)` -/
def P9671535915652526338.Spec : Prop :=
  ∀ n, P9671535915652526338.a n = A106250 n

end A106250

/-! ## A106250.P8957271013639405959

`A057354(A164116(n)+2+n)`
-/

namespace A106250.P8957271013639405959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A164116 n + 2 + (n : ℤ)).toNat

end

end A106250.P8957271013639405959

namespace A106250

/-- `A057354(A164116(n)+2+n)` -/
def P8957271013639405959.Spec : Prop :=
  ∀ n, P8957271013639405959.a n = A106250 n

end A106250

/-! ## A106250.P18248386090540870611

`A057354(A080891(n+1)+n+2)`
-/

namespace A106250.P18248386090540870611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A080891 (n + 1) + (n + 2 : ℤ)).toNat

end

end A106250.P18248386090540870611

namespace A106250

/-- `A057354(A080891(n+1)+n+2)` -/
def P18248386090540870611.Spec : Prop :=
  ∀ n, P18248386090540870611.a n = A106250 n

end A106250

/-! ## A106250.P13650395764740911192

`A057354(A105384(n+1)+n+2)`
-/

namespace A106250.P13650395764740911192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A105384 (n + 1) + (n + 2 : ℤ)).toNat

end

end A106250.P13650395764740911192

namespace A106250

/-- `A057354(A105384(n+1)+n+2)` -/
def P13650395764740911192.Spec : Prop :=
  ∀ n, P13650395764740911192.a n = A106250 n

end A106250

/-! ## A106250.P2111169175881146409

`A057354(A117444(n+2)+n+2)`
-/

namespace A106250.P2111169175881146409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A117444 (n + 2) + (n + 2 : ℤ)).toNat

end

end A106250.P2111169175881146409

namespace A106250

/-- `A057354(A117444(n+2)+n+2)` -/
def P2111169175881146409.Spec : Prop :=
  ∀ n, P2111169175881146409.a n = A106250 n

end A106250

/-! ## A106250.P2962143176916248769

`A057354(A156174(n+2)+n+2)`
-/

namespace A106250.P2962143176916248769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (A156174 (n + 2) + (n + 2 : ℤ)).toNat

end

end A106250.P2962143176916248769

namespace A106250

/-- `A057354(A156174(n+2)+n+2)` -/
def P2962143176916248769.Spec : Prop :=
  ∀ n, P2962143176916248769.a n = A106250 n

end A106250

/-! ## A106250.P14950286241543834453

`A008611(comp[6*n-2])`
-/

namespace A106250.P14950286241543834453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A106250.P14950286241543834453

namespace A106250

/-- `A008611(comp[6*n-2])` -/
def P14950286241543834453.Spec : Prop :=
  ∀ n, P14950286241543834453.a n = A106250 n

end A106250

/-! ## A106250.P14341132574535953786

`A051275(A047252(n+1))`
-/

namespace A106250.P14341132574535953786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (A047252 (n + 1)).toNat

end

end A106250.P14341132574535953786

namespace A106250

/-- `A051275(A047252(n+1))` -/
def P14341132574535953786.Spec : Prop :=
  ∀ n, P14341132574535953786.a n = A106250 n

end A106250

/-! ## A106250.P8993968060984691235

`A341307(A047263(n+1))`
-/

namespace A106250.P8993968060984691235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 (A047263 (n + 1)).toNat

end

end A106250.P8993968060984691235

namespace A106250

/-- `A341307(A047263(n+1))` -/
def P8993968060984691235.Spec : Prop :=
  ∀ n, P8993968060984691235.a n = A106250 n

end A106250

/-! ## A106250.P3816919949874328982

`A051275(eq[A051275(n), A341307(n)])`
-/

namespace A106250.P3816919949874328982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051275 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A106250.P3816919949874328982

namespace A106250

/-- `A051275(eq[A051275(n), A341307(n)])` -/
def P3816919949874328982.Spec : Prop :=
  ∀ n, P3816919949874328982.a n = A106250 n

end A106250

/-! ## A106250.P9668410956631286729

`A008624(A047412(n+1))`
-/

namespace A106250.P9668410956631286729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A047412 (n + 1)).toNat

end

end A106250.P9668410956631286729

namespace A106250

/-- `A008624(A047412(n+1))` -/
def P9668410956631286729.Spec : Prop :=
  ∀ n, P9668410956631286729.a n = A106250 n

end A106250

/-!
# A106251: Expansion of (1-x+x^2+x^3+x^5)/(1-x-x^6+x^7).

The programs for A106251, the canonical program `A106251.P11354965309126088675` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106251 has offset 0).

The definition of A106251 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x+x^2+x^3+x^5)/(1-x-x^6+x^7))` (program `A106251.P11354965309126088675`, by `A106251.P11354965309126088675.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A106251.P11354965309126088675

`ogf((1-x+x^2+x^3+x^5)/(1-x-x^6+x^7))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106251

/-- `ogf((1-x+x^2+x^3+x^5)/(1-x-x^6+x^7))` -/
def P11354965309126088675.Spec : Prop :=
  ∀ n, P11354965309126088675.a n = A106251 n

theorem P11354965309126088675.correct : P11354965309126088675.Spec := by
  intro n
  simp only [A106251]

end A106251

/-! ## A106251.P6726967445716815144

`floor(((n+2)%3+n)/2)`
-/

namespace A106251.P6726967445716815144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 2) % 3 + n : ℕ) : ℚ) / 2⌋

end

end A106251.P6726967445716815144

namespace A106251

/-- `floor(((n+2)%3+n)/2)` -/
def P6726967445716815144.Spec : Prop :=
  ∀ n, P6726967445716815144.a n = A106251 n

end A106251

/-! ## A106251.P3536491858614049015

`∑[(-(n%2))^(∑[n]%3)]`
-/

namespace A106251.P3536491858614049015
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-((n % 2 : ℕ) : ℤ)) ^ ((∑ j ∈ Finset.range (n + 1), f2 j) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106251.P3536491858614049015

namespace A106251

/-- `∑[(-(n%2))^(∑[n]%3)]` -/
def P3536491858614049015.Spec : Prop :=
  ∀ n, P3536491858614049015.a n = A106251 n

end A106251

/-! ## A106251.P17719187556190271856

`∑[1-lcm(n+1, ∑[n])%3]`
-/

namespace A106251.P17719187556190271856
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.lcm (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106251.P17719187556190271856

namespace A106251

/-- `∑[1-lcm(n+1, ∑[n])%3]` -/
def P17719187556190271856.Spec : Prop :=
  ∀ n, P17719187556190271856.a n = A106251 n

end A106251

/-! ## A106251.P3323070049519136542

`∑[(-and(1, n))^Δ[round(n/3)]]`
-/

namespace A106251.P3323070049519136542
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-(Nat.land 1 n : ℤ) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106251.P3323070049519136542

namespace A106251

/-- `∑[(-and(1, n))^Δ[round(n/3)]]` -/
def P3323070049519136542.Spec : Prop :=
  ∀ n, P3323070049519136542.a n = (A106251 n : ℚ)

end A106251

/-! ## A106251.P13030042930957989265

`floor(∑[floor(a(n-3))]/2)` with `a(0)=2, a(1)=-1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A106251.P13030042930957989265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌋

end

end A106251.P13030042930957989265

namespace A106251

/-- `floor(∑[floor(a(n-3))]/2)` -/
def P13030042930957989265.Spec : Prop :=
  ∀ n, P13030042930957989265.a n = A106251 n

end A106251

/-! ## A106251.P8468171043319172238

`∑[floor(a(a(n-3)))]-n` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A106251.P8468171043319172238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 2] fun n f1 =>
  f1 (f1 (n - 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A106251.P8468171043319172238

namespace A106251

/-- `∑[floor(a(a(n-3)))]-n` -/
def P8468171043319172238.Spec : Prop :=
  ∀ n, P8468171043319172238.a n = A106251 n

end A106251

/-! ## A106251.P1675291344240925445

`n-a((2*n)%3-3+n)` with `a(0)=1`
-/

namespace A106251.P1675291344240925445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - a (((2 * n % 3 : ℕ) : ℤ) - 3 + (n : ℤ)).toNat

end

end A106251.P1675291344240925445

namespace A106251

/-- `n-a((2*n)%3-3+n)` -/
def P1675291344240925445.Spec : Prop :=
  ∀ n, P1675291344240925445.a n = A106251 n

end A106251

/-! ## A106251.P16715937853560283026

`floor(1-3/2*ceil(n/3)+n)`
-/

namespace A106251.P16715937853560283026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 - (3 : ℚ) / 2 * (⌈(n : ℚ) / 3⌉ : ℚ) + (n : ℚ)⌋

end

end A106251.P16715937853560283026

namespace A106251

/-- `floor(1-3/2*ceil(n/3)+n)` -/
def P16715937853560283026.Spec : Prop :=
  ∀ n, P16715937853560283026.a n = A106251 n

end A106251

/-! ## A106251.P9332186812211382330

`ceil(A236348(n)/2)`
-/

namespace A106251.P9332186812211382330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A236348 n : ℚ) / 2⌉

end

end A106251.P9332186812211382330

namespace A106251

/-- `ceil(A236348(n)/2)` -/
def P9332186812211382330.Spec : Prop :=
  ∀ n, P9332186812211382330.a n = A106251 n

end A106251

/-! ## A106251.P12724992768528958143

`round((A049347(n)+n)/2)`
-/

namespace A106251.P12724992768528958143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049347 n + (n : ℤ) : ℚ) / 2)

end

end A106251.P12724992768528958143

namespace A106251

/-- `round((A049347(n)+n)/2)` -/
def P12724992768528958143.Spec : Prop :=
  ∀ n, P12724992768528958143.a n = A106251 n

end A106251

/-! ## A106251.P9035917633641571333

`A110654(A236348(n))`
-/

namespace A106251.P9035917633641571333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A236348 n).toNat

end

end A106251.P9035917633641571333

namespace A106251

/-- `A110654(A236348(n))` -/
def P9035917633641571333.Spec : Prop :=
  ∀ n, P9035917633641571333.a n = A106251 n

end A106251

/-! ## A106251.P6016201141732467086

`A300068(n)+A204418(n)`
-/

namespace A106251.P6016201141732467086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 n + A204418 n

end

end A106251.P6016201141732467086

namespace A106251

/-- `A300068(n)+A204418(n)` -/
def P6016201141732467086.Spec : Prop :=
  ∀ n, P6016201141732467086.a n = A106251 n

end A106251

/-! ## A106251.P17122554391843338800

`A147534(n+1)-A300076(n)`
-/

namespace A106251.P17122554391843338800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (n + 1) - A300076 n

end

end A106251.P17122554391843338800

namespace A106251

/-- `A147534(n+1)-A300076(n)` -/
def P17122554391843338800.Spec : Prop :=
  ∀ n, P17122554391843338800.a n = A106251 n

end A106251

/-! ## A106251.P13065307327351326791

`A291268(n+2)-A120325(n)`
-/

namespace A106251.P13065307327351326791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291268 (n + 2) - A120325 n

end

end A106251.P13065307327351326791

namespace A106251

/-- `A291268(n+2)-A120325(n)` -/
def P13065307327351326791.Spec : Prop :=
  ∀ n, P13065307327351326791.a n = A106251 n

end A106251

/-! ## A106251.P16978513798854051607

`∑[A092220(∑[A092220(n)]+1)]`
-/

namespace A106251.P16978513798854051607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106251.P16978513798854051607

namespace A106251

/-- `∑[A092220(∑[A092220(n)]+1)]` -/
def P16978513798854051607.Spec : Prop :=
  ∀ n, P16978513798854051607.a n = A106251 n

end A106251

/-! ## A106251.P15082841318612040299

`A079978(n)+n-A300076(n)`
-/

namespace A106251.P15082841318612040299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 n + ((n : ℤ) - A300076 n)

end

end A106251.P15082841318612040299

namespace A106251

/-- `A079978(n)+n-A300076(n)` -/
def P15082841318612040299.Spec : Prop :=
  ∀ n, P15082841318612040299.a n = A106251 n

end A106251

/-! ## A106251.P6440764851770360802

`A032793(n+1)-A047306(n+1)`
-/

namespace A106251.P6440764851770360802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032793 (n + 1) - A047306 (n + 1)

end

end A106251.P6440764851770360802

namespace A106251

/-- `A032793(n+1)-A047306(n+1)` -/
def P6440764851770360802.Spec : Prop :=
  ∀ n, P6440764851770360802.a n = A106251 n

end A106251

/-! ## A106251.P14102171085794847467

`∑[A008683(A000045(gcd(n+2, 3*n)))]`
-/

namespace A106251.P14102171085794847467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000045 (Nat.gcd (n + 2) (3 * n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106251.P14102171085794847467

namespace A106251

/-- `∑[A008683(A000045(gcd(n+2, 3*n)))]` -/
def P14102171085794847467.Spec : Prop :=
  ∀ n, P14102171085794847467.a n = A106251 n

end A106251

/-! ## A106251.P7965251412712722661

`A300068(n+1)+A079978(A300076(n))`
-/

namespace A106251.P7965251412712722661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (n + 1) + A079978 (A300076 n).toNat

end

end A106251.P7965251412712722661

namespace A106251

/-- `A300068(n+1)+A079978(A300076(n))` -/
def P7965251412712722661.Spec : Prop :=
  ∀ n, P7965251412712722661.a n = A106251 n

end A106251

/-!
# A106252: Number of positive integer triples (x,y,z), with x<=y<=z<=n, such that each of x,y and z divides the sum of the other two.

The programs for A106252, the canonical program `A106252.P15354142881033164435` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106252 has offset 1).

The definition of A106252 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106252.P15354142881033164435

`n+1+floor((n+1)/2)+floor((n+1)/3)`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106252

/-- `n+1+floor((n+1)/2)+floor((n+1)/3)` -/
def P15354142881033164435.Spec : Prop :=
  ∀ n, P15354142881033164435.a n = A106252 (n + 1)

theorem P15354142881033164435.correct : P15354142881033164435.Spec := by
  intro n
  simp only [A106252, Nat.add_sub_cancel]

end A106252

/-! ## A106252.P541035165204242447

`∑[ceil(sqrt(gcd(6, n+1)))]`
-/

namespace A106252.P541035165204242447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.gcd 6 (n + 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P541035165204242447

namespace A106252

/-- `∑[ceil(sqrt(gcd(6, n+1)))]` -/
def P541035165204242447.Spec : Prop :=
  ∀ n, P541035165204242447.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P18313884426715520106

`floor(∑[xor(6, gcd(2, n))]/3)`
-/

namespace A106252.P18313884426715520106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 6 (Nat.gcd 2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A106252.P18313884426715520106

namespace A106252

/-- `floor(∑[xor(6, gcd(2, n))]/3)` -/
def P18313884426715520106.Spec : Prop :=
  ∀ n, P18313884426715520106.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P15893852751851005540

`∑[(n%3)!+n%2]`
-/

namespace A106252.P15893852751851005540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3) + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P15893852751851005540

namespace A106252

/-- `∑[(n%3)!+n%2]` -/
def P15893852751851005540.Spec : Prop :=
  ∀ n, (P15893852751851005540.a n : ℤ) = A106252 (n + 1)

end A106252

/-! ## A106252.P6795994600519151613

`∑[round(sqrt(gcd(12, (n+1)²)))]`
-/

namespace A106252.P6795994600519151613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Nat.gcd 12 ((n + 1) ^ 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P6795994600519151613

namespace A106252

/-- `∑[round(sqrt(gcd(12, (n+1)²)))]` -/
def P6795994600519151613.Spec : Prop :=
  ∀ n, P6795994600519151613.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P55315576602521127

`∑[∑{d}[n+1, C(3, #)%2]]`
-/

namespace A106252.P55315576602521127
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose 3 d % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P55315576602521127

namespace A106252

/-- `∑[∑{d}[n+1, C(3, #)%2]]` -/
def P55315576602521127.Spec : Prop :=
  ∀ n, (P55315576602521127.a n : ℤ) = A106252 (n + 1)

end A106252

/-! ## A106252.P11088527899822388026

`∑[∑{d}[n+1, floor(sqrt(3/#))]]`
-/

namespace A106252.P11088527899822388026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.sqrt (3 / (d : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P11088527899822388026

namespace A106252

/-- `∑[∑{d}[n+1, floor(sqrt(3/#))]]` -/
def P11088527899822388026.Spec : Prop :=
  ∀ n, P11088527899822388026.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P16640763033502138148

`floor(∑[floor(a(n-2))]/3)` with `a(0)=4, a(1)=7`

`floor` is left out, it is the identity on integers.
-/

namespace A106252.P16640763033502138148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 7] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A106252.P16640763033502138148

namespace A106252

/-- `floor(∑[floor(a(n-2))]/3)` -/
def P16640763033502138148.Spec : Prop :=
  ∀ n, P16640763033502138148.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P462132610719724246

`∑[∑[ogf((1+3x+4x^2+3x^3)/(1+2x+2x^2+x^3))]]`
-/

namespace A106252.P462132610719724246
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 4, 3] [1, 2, 2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P462132610719724246

namespace A106252

/-- `∑[∑[ogf((1+3x+4x^2+3x^3)/(1+2x+2x^2+x^3))]]` -/
def P462132610719724246.Spec : Prop :=
  ∀ n, P462132610719724246.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P7319616886591295961

`∑[a(n-3)-(-1)^n]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A106252.P7319616886591295961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 3) - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P7319616886591295961

namespace A106252

/-- `∑[a(n-3)-(-1)^n]` -/
def P7319616886591295961.Spec : Prop :=
  ∀ n, P7319616886591295961.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P9501879601795722527

`∑[3-(n-a(n-2))%3]` with `a(0)=1, a(1)=2`
-/

namespace A106252.P9501879601795722527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 - Int.tmod ((n : ℤ) - f1 (n - 2)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P9501879601795722527

namespace A106252

/-- `∑[3-(n-a(n-2))%3]` -/
def P9501879601795722527.Spec : Prop :=
  ∀ n, P9501879601795722527.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P4251791627447085125

`∑[and(2*n+1, a(n-3))+1]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A106252.P4251791627447085125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  Nat.land (2 * n + 1) (f1 (n - 3)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P4251791627447085125

namespace A106252

/-- `∑[and(2*n+1, a(n-3))+1]` -/
def P4251791627447085125.Spec : Prop :=
  ∀ n, (P4251791627447085125.a n : ℤ) = A106252 (n + 1)

end A106252

/-! ## A106252.P17886510873756489007

`ceil((3*∑[(3*n+2)%2+1]-1+n)/3)`
-/

namespace A106252.P17886510873756489007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((3 * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - 1 + (n : ℤ) : ℚ) / 3⌉

end

end A106252.P17886510873756489007

namespace A106252

/-- `ceil((3*∑[(3*n+2)%2+1]-1+n)/3)` -/
def P17886510873756489007.Spec : Prop :=
  ∀ n, P17886510873756489007.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P12779964019352469476

`∑[a(n-4)+a(n-3)-a(n-1)]` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2`
-/

namespace A106252.P12779964019352469476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2, 2] fun n f1 =>
  f1 (n - 4) + f1 (n - 3) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P12779964019352469476

namespace A106252

/-- `∑[a(n-4)+a(n-3)-a(n-1)]` -/
def P12779964019352469476.Spec : Prop :=
  ∀ n, P12779964019352469476.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P688062561849035065

`∑[A083039(n+1)]`
-/

namespace A106252.P688062561849035065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083039 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P688062561849035065

namespace A106252

/-- `∑[A083039(n+1)]` -/
def P688062561849035065.Spec : Prop :=
  ∀ n, P688062561849035065.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P9313117186792758193

`∑[A239140(n+4)]`
-/

namespace A106252.P9313117186792758193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P9313117186792758193

namespace A106252

/-- `∑[A239140(n+4)]` -/
def P9313117186792758193.Spec : Prop :=
  ∀ n, P9313117186792758193.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P17389296178757745772

`∑[dr(A010135(n+1))]`
-/

namespace A106252.P17389296178757745772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A010135 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P17389296178757745772

namespace A106252

/-- `∑[dr(A010135(n+1))]` -/
def P17389296178757745772.Spec : Prop :=
  ∀ n, (P17389296178757745772.a n : ℤ) = A106252 (n + 1)

end A106252

/-! ## A106252.P809498937720966589

`Δ[n²-A211540(n)]`
-/

namespace A106252.P809498937720966589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A211540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106252.P809498937720966589

namespace A106252

/-- `Δ[n²-A211540(n)]` -/
def P809498937720966589.Spec : Prop :=
  ∀ n, P809498937720966589.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P15493396410190992837

`∑[A171182(n+1)+1]`
-/

namespace A106252.P15493396410190992837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171182 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P15493396410190992837

namespace A106252

/-- `∑[A171182(n+1)+1]` -/
def P15493396410190992837.Spec : Prop :=
  ∀ n, P15493396410190992837.a n = A106252 (n + 1)

end A106252

/-! ## A106252.P1450559357613913869

`∑[A000005(∏{p}[n+1, ceil(4/#)])]`
-/

namespace A106252.P1450559357613913869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), ⌈4 / (p : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106252.P1450559357613913869

namespace A106252

/-- `∑[A000005(∏{p}[n+1, ceil(4/#)])]` -/
def P1450559357613913869.Spec : Prop :=
  ∀ n, P1450559357613913869.a n = A106252 (n + 1)

end A106252

/-!
# A106253: First difference of A106252.

The programs for A106253, the canonical program `A106253.P944705661875722622` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106253 has offset 1).

The definition of A106253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106253.P944705661875722622

`ceil(sqrt(gcd(6, n+2)))`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106253

/-- `ceil(sqrt(gcd(6, n+2)))` -/
def P944705661875722622.Spec : Prop :=
  ∀ n, P944705661875722622.a n = A106253 (n + 1)

theorem P944705661875722622.correct : P944705661875722622.Spec := by
  intro n
  simp only [A106253, Nat.add_sub_cancel]

end A106253

/-!
# A106254: Partition table in square format.

The programs for A106254, there is no canonical definition to state claims against.
-/

/-! ## A106254.P14230085476615841299

`A008284(comp[∑[n]])`
-/

namespace A106254.P14230085476615841299
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A106254.P14230085476615841299

/-! ## A106254.P11218398556698271285

`A008284(A014132(n+1))%A074742(n)`
-/

namespace A106254.P11218398556698271285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008284 (A014132 (n + 1)).toNat) (A074742 n)

end

end A106254.P11218398556698271285

/-! ## A106254.P2841984048444639930

`or(A000007(n), A008284(A014132(n+1)))`
-/

namespace A106254.P2841984048444639930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A008284 (A014132 (n + 1)).toNat)

end

end A106254.P2841984048444639930

/-! ## A106254.P16626618496333828442

`A072233(comp[∑[A057979(n)]])`
-/

namespace A106254.P16626618496333828442
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A106254.P16626618496333828442

/-! ## A106254.P105453023311369476

`A072233(eq[0, A103452(n)])`
-/

namespace A106254.P105453023311369476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106254.P105453023311369476

/-! ## A106254.P310855175527513319

`A072233(lt[1, A007318(n)])`
-/

namespace A106254.P310855175527513319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106254.P310855175527513319

/-! ## A106254.P10237475442551792903

`A072233(2*A003057(n+2)+n)`
-/

namespace A106254.P10237475442551792903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A106254.P10237475442551792903

/-! ## A106254.P9258679964966157667

`A072233(2*A014132(n+1)-n)`
-/

namespace A106254.P9258679964966157667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A106254.P9258679964966157667

/-! ## A106254.P5381310339396671651

`A072233(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A106254.P5381310339396671651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A106254.P5381310339396671651

/-! ## A106254.P14226350203825038284

`A072233(lt[1, A026780(n)])`
-/

namespace A106254.P14226350203825038284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106254.P14226350203825038284

/-! ## A106254.P1697880294945970837

`A072233(lt[1, A122542(n)])`
-/

namespace A106254.P1697880294945970837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106254.P1697880294945970837

/-! ## A106254.P9443546607967415678

`A072233(lt[1, A293808(n)])`
-/

namespace A106254.P9443546607967415678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293808 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106254.P9443546607967415678

/-! ## A106254.P8471140572961157753

`A072233(lt[1, A108998(n)])`
-/

namespace A106254.P8471140572961157753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106254.P8471140572961157753

/-! ## A106254.P10142446382869258549

`A145574(A056537(n+2))`
-/

namespace A106254.P10142446382869258549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145574 (A056537 (n + 2)).toNat

end

end A106254.P10142446382869258549

/-! ## A106254.P3854793129295724285

`A072233(lt[1, A141724(n)])`
-/

namespace A106254.P3854793129295724285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072233 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A106254.P3854793129295724285

/-!
# A106255: Triangle composed of triangular numbers, row sums = A006918.

The programs for A106255, the canonical program `A106255.P14504416590498202049` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106255 has offset 1).

The definition of A106255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106255.P5922295868645159969

`C(A004197(n)+2, 2)`
-/

namespace A106255.P5922295868645159969
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A004197 n + 2).toNat 2

end

end A106255.P5922295868645159969

namespace A106255

/-- `C(A004197(n)+2, 2)` -/
def P5922295868645159969.Spec : Prop :=
  ∀ n, (P5922295868645159969.a n : ℤ) = A106255 (n + 1)

end A106255

/-! ## A106255.P1516612054356900575

`C(log2(A144464(n))+2, 2)`
-/

namespace A106255.P1516612054356900575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ) + 2)).toNat 2

end

end A106255.P1516612054356900575

namespace A106255

/-- `C(log2(A144464(n))+2, 2)` -/
def P1516612054356900575.Spec : Prop :=
  ∀ n, (P1516612054356900575.a n : ℤ) = A106255 (n + 1)

end A106255

/-! ## A106255.P14767380494473916652

`C(A003983(n+1)+1, 2)`
-/

namespace A106255.P14767380494473916652
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003983 (n + 1) + 1).toNat 2

end

end A106255.P14767380494473916652

namespace A106255

/-- `C(A003983(n+1)+1, 2)` -/
def P14767380494473916652.Spec : Prop :=
  ∀ n, (P14767380494473916652.a n : ℤ) = A106255 (n + 1)

end A106255

/-! ## A106255.P7093191767757502816

`A008805(A157458(n))`
-/

namespace A106255.P7093191767757502816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A157458 n).toNat

end

end A106255.P7093191767757502816

namespace A106255

/-- `A008805(A157458(n))` -/
def P7093191767757502816.Spec : Prop :=
  ∀ n, P7093191767757502816.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P14371528278680115965

`A000217(A003983(n+1))`
-/

namespace A106255.P14371528278680115965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A003983 (n + 1)).toNat

end

end A106255.P14371528278680115965

namespace A106255

/-- `A000217(A003983(n+1))` -/
def P14371528278680115965.Spec : Prop :=
  ∀ n, P14371528278680115965.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P14955013210354908660

`A000096(A004197(n))+1`
-/

namespace A106255.P14955013210354908660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A004197 n).toNat + 1

end

end A106255.P14955013210354908660

namespace A106255

/-- `A000096(A004197(n))+1` -/
def P14955013210354908660.Spec : Prop :=
  ∀ n, P14955013210354908660.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P11123839143627043682

`A000217(A004197(n)+1)`
-/

namespace A106255.P11123839143627043682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004197 n + 1).toNat

end

end A106255.P11123839143627043682

namespace A106255

/-- `A000217(A004197(n)+1)` -/
def P11123839143627043682.Spec : Prop :=
  ∀ n, P11123839143627043682.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P864669633609379216

`A008805(A157454(n+1))`
-/

namespace A106255.P864669633609379216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (A157454 (n + 1)).toNat

end

end A106255.P864669633609379216

namespace A106255

/-- `A008805(A157454(n+1))` -/
def P864669633609379216.Spec : Prop :=
  ∀ n, P864669633609379216.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P14311200772401173668

`A064788(A106314(n+1))`
-/

namespace A106255.P14311200772401173668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064788 (A106314 (n + 1)).toNat

end

end A106255.P14311200772401173668

namespace A106255

/-- `A064788(A106314(n+1))` -/
def P14311200772401173668.Spec : Prop :=
  ∀ n, P14311200772401173668.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P14112162133759926812

`A000124(A004197(n)+1)-1`
-/

namespace A106255.P14112162133759926812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A004197 n + 1).toNat - 1

end

end A106255.P14112162133759926812

namespace A106255

/-- `A000124(A004197(n)+1)-1` -/
def P14112162133759926812.Spec : Prop :=
  ∀ n, P14112162133759926812.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P2173841610989766694

`A133263(A004197(n)+1)-2`
-/

namespace A106255.P2173841610989766694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133263 (A004197 n + 1).toNat - 2

end

end A106255.P2173841610989766694

namespace A106255

/-- `A133263(A004197(n)+1)-2` -/
def P2173841610989766694.Spec : Prop :=
  ∀ n, P2173841610989766694.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P5136832306027929957

`A117142(2*A004197(n)+1)`
-/

namespace A106255.P5136832306027929957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (2 * A004197 n + 1).toNat

end

end A106255.P5136832306027929957

namespace A106255

/-- `A117142(2*A004197(n)+1)` -/
def P5136832306027929957.Spec : Prop :=
  ∀ n, P5136832306027929957.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P14504416590498202049

`A000217(val(A036561(n), 6)+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106255

/-- `A000217(val(A036561(n), 6)+1)` -/
def P14504416590498202049.Spec : Prop :=
  ∀ n, P14504416590498202049.a n = A106255 (n + 1)

theorem P14504416590498202049.correct : P14504416590498202049.Spec := by
  intro n
  simp only [A106255, Nat.add_sub_cancel]

end A106255

/-! ## A106255.P10690574418243894360

`A117142(2*A003983(n+1)-1)`
-/

namespace A106255.P10690574418243894360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (2 * A003983 (n + 1) - 1).toNat

end

end A106255.P10690574418243894360

namespace A106255

/-- `A117142(2*A003983(n+1)-1)` -/
def P10690574418243894360.Spec : Prop :=
  ∀ n, P10690574418243894360.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P3571687067885784279

`A000217((A157454(n+1)+1)/2)`
-/

namespace A106255.P3571687067885784279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.roundAway ((A157454 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A106255.P3571687067885784279

namespace A106255

/-- `A000217((A157454(n+1)+1)/2)` -/
def P3571687067885784279.Spec : Prop :=
  ∀ n, P3571687067885784279.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P13894788672767464060

`A006446(A204028(n+1)+1)/2`
-/

namespace A106255.P13894788672767464060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006446 (A204028 (n + 1) + 1).toNat : ℚ) / 2

end

end A106255.P13894788672767464060

namespace A106255

/-- `A006446(A204028(n+1)+1)/2` -/
def P13894788672767464060.Spec : Prop :=
  ∀ n, P13894788672767464060.a n = (A106255 (n + 1) : ℚ)

end A106255

/-! ## A106255.P12569226807240576897

`A117142(A004197(n)+A003983(n+1))`
-/

namespace A106255.P12569226807240576897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (A004197 n + A003983 (n + 1)).toNat

end

end A106255.P12569226807240576897

namespace A106255

/-- `A117142(A004197(n)+A003983(n+1))` -/
def P12569226807240576897.Spec : Prop :=
  ∀ n, P12569226807240576897.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P6251670254809608885

`A117142(A004197(n)+A004197(n)+1)`
-/

namespace A106255.P6251670254809608885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117142 (A004197 n + (A004197 n + 1)).toNat

end

end A106255.P6251670254809608885

namespace A106255

/-- `A117142(A004197(n)+A004197(n)+1)` -/
def P6251670254809608885.Spec : Prop :=
  ∀ n, P6251670254809608885.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P6854891791821762884

`A004525(A003983(n+1)+A003983(n+1)²)`
-/

namespace A106255.P6854891791821762884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A003983 (n + 1) + A003983 (n + 1) ^ 2).toNat

end

end A106255.P6854891791821762884

namespace A106255

/-- `A004525(A003983(n+1)+A003983(n+1)²)` -/
def P6854891791821762884.Spec : Prop :=
  ∀ n, P6854891791821762884.a n = A106255 (n + 1)

end A106255

/-! ## A106255.P2941231881877713924

`A004526(A003983(n+1)+A003983(n+1)²)`
-/

namespace A106255.P2941231881877713924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003983 (n + 1) + A003983 (n + 1) ^ 2).toNat

end

end A106255.P2941231881877713924

namespace A106255

/-- `A004526(A003983(n+1)+A003983(n+1)²)` -/
def P2941231881877713924.Spec : Prop :=
  ∀ n, P2941231881877713924.a n = A106255 (n + 1)

end A106255

/-!
# A106256: Numbers n such that 12*n^2 + 13 is a square.

The programs for A106256, the canonical program `A106256.P1860833286090260671` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106256 has offset 1).

The definition of A106256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106256.P1860833286090260671

`14*a(n-2)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=17, a(3)=43`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106256

/-- `14*a(n-2)-a(n-4)` -/
def P1860833286090260671.Spec : Prop :=
  ∀ n, P1860833286090260671.a n = A106256 (n + 1)

theorem P1860833286090260671.correct : P1860833286090260671.Spec := by
  intro n
  simp only [A106256, Nat.add_sub_cancel]

end A106256

/-! ## A106256.P7934371249401053146

`2*A254710(n+1)-1`
-/

namespace A106256.P7934371249401053146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A254710 (n + 1) - 1

end

end A106256.P7934371249401053146

namespace A106256

/-- `2*A254710(n+1)-1` -/
def P7934371249401053146.Spec : Prop :=
  ∀ n, P7934371249401053146.a n = A106256 (n + 1)

end A106256

/-! ## A106256.P18188081242612690692

`A232771(A007494(n+1))`
-/

namespace A106256.P18188081242612690692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232771 (A007494 (n + 1)).toNat

end

end A106256.P18188081242612690692

namespace A106256

/-- `A232771(A007494(n+1))` -/
def P18188081242612690692.Spec : Prop :=
  ∀ n, P18188081242612690692.a n = A106256 (n + 1)

end A106256

/-! ## A106256.P16237146946103916729

`A232771(A294732(n+3))`
-/

namespace A106256.P16237146946103916729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232771 (A294732 (n + 3)).toNat

end

end A106256.P16237146946103916729

namespace A106256

/-- `A232771(A294732(n+3))` -/
def P16237146946103916729.Spec : Prop :=
  ∀ n, P16237146946103916729.a n = A106256 (n + 1)

end A106256

/-! ## A106256.P17565526844033584066

`A041017(n)+A001353(n)`
-/

namespace A106256.P17565526844033584066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041017 n + A001353 n

end

end A106256.P17565526844033584066

namespace A106256

/-- `A041017(n)+A001353(n)` -/
def P17565526844033584066.Spec : Prop :=
  ∀ n, P17565526844033584066.a n = A106256 (n + 1)

end A106256

/-! ## A106256.P1053545533097241185

`A041017(n)-A106707(n)`
-/

namespace A106256.P1053545533097241185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041017 n - A106707 n

end

end A106256.P1053545533097241185

namespace A106256

/-- `A041017(n)-A106707(n)` -/
def P1053545533097241185.Spec : Prop :=
  ∀ n, P1053545533097241185.a n = A106256 (n + 1)

end A106256

/-! ## A106256.P6717726132527279732

`A041017(n)+A002530(2*n)`
-/

namespace A106256.P6717726132527279732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041017 n + A002530 (2 * n)

end

end A106256.P6717726132527279732

namespace A106256

/-- `A041017(n)+A002530(2*n)` -/
def P6717726132527279732.Spec : Prop :=
  ∀ n, P6717726132527279732.a n = A106256 (n + 1)

end A106256

/-! ## A106256.P4485407085182128030

`A001353(n)+A144536(n)+A144535(n)`
-/

namespace A106256.P4485407085182128030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001353 n + (A144536 n + A144535 n)

end

end A106256.P4485407085182128030

namespace A106256

/-- `A001353(n)+A144536(n)+A144535(n)` -/
def P4485407085182128030.Spec : Prop :=
  ∀ n, P4485407085182128030.a n = A106256 (n + 1)

end A106256

/-! ## A106256.P3579920476631050216

`A232771(A045506(n+1))`
-/

namespace A106256.P3579920476631050216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232771 (A045506 (n + 1)).toNat

end

end A106256.P3579920476631050216

namespace A106256

/-- `A232771(A045506(n+1))` -/
def P3579920476631050216.Spec : Prop :=
  ∀ n, P3579920476631050216.a n = A106256 (n + 1)

end A106256

/-!
# A106257: Numbers k such that k^2 = 12*n^2 + 13.

The programs for A106257, the canonical program `A106257.P16202374529222529415` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106257 has offset 1).

The definition of A106257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106257.P16202374529222529415

`6*A254709(n+1)-1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A106257

/-- `6*A254709(n+1)-1` -/
def P16202374529222529415.Spec : Prop :=
  ∀ n, P16202374529222529415.a n = A106257 (n + 1)

theorem P16202374529222529415.correct : P16202374529222529415.Spec := by
  intro n
  simp only [A106257, Nat.add_sub_cancel]

end A106257

/-! ## A106257.P6442188653474888447

`A077238(char[2*n]+2*n)`
-/

namespace A106257.P6442188653474888447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077238 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)

end

end A106257.P6442188653474888447

namespace A106257

/-- `A077238(char[2*n]+2*n)` -/
def P6442188653474888447.Spec : Prop :=
  ∀ n, P6442188653474888447.a n = A106257 (n + 1)

end A106257

/-! ## A106257.P5379966800112344642

`A041016(n)+A003500(n)`
-/

namespace A106257.P5379966800112344642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041016 n + A003500 n

end

end A106257.P5379966800112344642

namespace A106257

/-- `A041016(n)+A003500(n)` -/
def P5379966800112344642.Spec : Prop :=
  ∀ n, P5379966800112344642.a n = A106257 (n + 1)

end A106257

/-! ## A106257.P10597476035189571482

`A041016(n)+2*A001075(n)`
-/

namespace A106257.P10597476035189571482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041016 n + 2 * A001075 n

end

end A106257.P10597476035189571482

namespace A106257

/-- `A041016(n)+2*A001075(n)` -/
def P10597476035189571482.Spec : Prop :=
  ∀ n, P10597476035189571482.a n = A106257 (n + 1)

end A106257

/-! ## A106257.P2732655757846146070

`Δ[A002530(2*n)*A010710(n)]`
-/

namespace A106257.P2732655757846146070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002530 (2 * n) * A010710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A106257.P2732655757846146070

namespace A106257

/-- `Δ[A002530(2*n)*A010710(n)]` -/
def P2732655757846146070.Spec : Prop :=
  ∀ n, P2732655757846146070.a n = A106257 (n + 1)

end A106257

/-! ## A106257.P2006207563404027367

`A082841(n)+A001075(A109613(n))`
-/

namespace A106257.P2006207563404027367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082841 n + A001075 (A109613 n).toNat

end

end A106257.P2006207563404027367

namespace A106257

/-- `A082841(n)+A001075(A109613(n))` -/
def P2006207563404027367.Spec : Prop :=
  ∀ n, P2006207563404027367.a n = A106257 (n + 1)

end A106257

/-! ## A106257.P6619790244730363992

`A041016(n)+A162563(n)-A082841(n)`
-/

namespace A106257.P6619790244730363992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041016 n + (A162563 n - A082841 n)

end

end A106257.P6619790244730363992

namespace A106257

/-- `A041016(n)+A162563(n)-A082841(n)` -/
def P6619790244730363992.Spec : Prop :=
  ∀ n, P6619790244730363992.a n = A106257 (n + 1)

end A106257

/-! ## A106257.P8274158514460567774

`∪[A077236(2*n+1), A077235(2*n)]`
-/

namespace A106257.P8274158514460567774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077236 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077235 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106257.P8274158514460567774

namespace A106257

/-- `∪[A077236(2*n+1), A077235(2*n)]` -/
def P8274158514460567774.Spec : Prop :=
  ∀ n, (P8274158514460567774.a n : ℤ) = A106257 (n + 1)

end A106257

/-!
# A106258: Expansion of 1/sqrt(1-8x-8x^2).

The programs for A106258, the canonical program `A106258.P8173829212153338844` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106258 has offset 0).

The definition of A106258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106258.P8173829212153338844

`(4*(2*n-1)*a(n-1)+8*(n-1)*a(n-2))/n` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A106258

/-- `(4*(2*n-1)*a(n-1)+8*(n-1)*a(n-2))/n` -/
def P8173829212153338844.Spec : Prop :=
  ∀ n, P8173829212153338844.a n = (A106258 n : ℚ)

end A106258

/-!
# A106259: Expansion of 1/sqrt(1-12x-12x^2).

The programs for A106259, there is no canonical definition to state claims against.
-/

/-! ## A106259.P5356095866055744391

`A000079(n)*A122868(n)`
-/

namespace A106259.P5356095866055744391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A122868 n

end

end A106259.P5356095866055744391

/-! ## A106259.P6812697002582545603

`∑[A011782(n)]*A122868(n)`
-/

namespace A106259.P6812697002582545603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A122868 n

end

end A106259.P6812697002582545603

/-! ## A106259.P4176649590300711536

`record[A034008(n)]*A122868(n)`
-/

namespace A106259.P4176649590300711536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A122868 n

end

end A106259.P4176649590300711536

/-! ## A106259.P3680375806480934133

`A011782(n+1)*A122868(n)`
-/

namespace A106259.P3680375806480934133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) * A122868 n

end

end A106259.P3680375806480934133

/-! ## A106259.P7653941555589124044

`A034008(n+2)*A122868(n)`
-/

namespace A106259.P7653941555589124044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (n + 2) * A122868 n

end

end A106259.P7653941555589124044

/-! ## A106259.P8100020927862561271

`lcm(sqrt(A000079(n+n)), A122868(n))`
-/

namespace A106259.P8100020927862561271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (Real.sqrt (A000079 (n + n) : ℝ))) (A122868 n)

end

end A106259.P8100020927862561271

/-! ## A106259.P16762102501771477133

`A112032(2*n+1)*A122868(n)`
-/

namespace A106259.P16762102501771477133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112032 (2 * n + 1) * A122868 n

end

end A106259.P16762102501771477133

/-! ## A106259.P17379706035085740416

`A000079(n)*A232973(A000217(n))`
-/

namespace A106259.P17379706035085740416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A232973 (A000217 n).toNat

end

end A106259.P17379706035085740416

/-!
# A106260: Expansion of 1/sqrt(1-16x-16x^2).

The programs for A106260, there is no canonical definition to state claims against.
-/

/-! ## A106260.P4498036813677257972

`2^n*A098443(n)`
-/

namespace A106260.P4498036813677257972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A098443 n

end

end A106260.P4498036813677257972

/-! ## A106260.P16818930802848337148

`A098443(n)*A114164(A000217(n))`
-/

namespace A106260.P16818930802848337148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098443 n * A114164 (A000217 n).toNat

end

end A106260.P16818930802848337148

/-! ## A106260.P6889834576337641556

`A003945(n+2)*A098443(n)/6`
-/

namespace A106260.P6889834576337641556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003945 (n + 2) * A098443 n : ℚ) / 6

end

end A106260.P6889834576337641556

/-! ## A106260.P16253893767687810685

`A098443(n)*A304310(A000217(n)+1)`
-/

namespace A106260.P16253893767687810685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098443 n * A304310 (A000217 n + 1).toNat

end

end A106260.P16253893767687810685

/-! ## A106260.P9141783549186845810

`A098443(n)*A269165(A000079(n))`
-/

namespace A106260.P9141783549186845810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098443 n * A269165 (A000079 n).toNat

end

end A106260.P9141783549186845810

/-!
# A106262: An invertible triangle of remainders of 2^n.

The programs for A106262, the canonical program `A106262.P12864423525646373783` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106262 has offset 0).

The definition of A106262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106262.P16935067694839770213

`A130321(n)%Δ[A193974(n)]`
-/

namespace A106262.P16935067694839770213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130321 n) (f1 (n + 1) - f1 n)

end

end A106262.P16935067694839770213

namespace A106262

/-- `A130321(n)%Δ[A193974(n)]` -/
def P16935067694839770213.Spec : Prop :=
  ∀ n, P16935067694839770213.a n = A106262 n

end A106262

/-! ## A106262.P6033472411445239878

`sqrt(A262616(n))%Δ[A193974(n)]`
-/

namespace A106262.P6033472411445239878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))) (f1 (n + 1) - f1 n)

end

end A106262.P6033472411445239878

namespace A106262

/-- `sqrt(A262616(n))%Δ[A193974(n)]` -/
def P6033472411445239878.Spec : Prop :=
  ∀ n, P6033472411445239878.a n = A106262 n

end A106262

/-! ## A106262.P8813592652963373148

`(2^A025581(n))%(A002262(n)+2)`
-/

namespace A106262.P8813592652963373148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025581 n : ℤ))) (A002262 n + 2)

end

end A106262.P8813592652963373148

namespace A106262

/-- `(2^A025581(n))%(A002262(n)+2)` -/
def P8813592652963373148.Spec : Prop :=
  ∀ n, P8813592652963373148.a n = A106262 n

end A106262

/-! ## A106262.P12864423525646373783

`A059268(A061579(n))%(A002262(n)+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A106262

/-- `A059268(A061579(n))%(A002262(n)+2)` -/
def P12864423525646373783.Spec : Prop :=
  ∀ n, P12864423525646373783.a n = A106262 n

theorem P12864423525646373783.correct : P12864423525646373783.Spec := by
  intro n
  simp only [A106262]

end A106262

/-! ## A106262.P12197165416372489034

`A000079(A025581(n))%A134868(n+2)`
-/

namespace A106262.P12197165416372489034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (A025581 n).toNat) (A134868 (n + 2))

end

end A106262.P12197165416372489034

namespace A106262

/-- `A000079(A025581(n))%A134868(n+2)` -/
def P12197165416372489034.Spec : Prop :=
  ∀ n, P12197165416372489034.a n = A106262 n

end A106262

/-! ## A106262.P17352193492540182605

`A000079(sqrt(A055461(n+1))-1)%(A002262(n)+2)`
-/

namespace A106262.P17352193492540182605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 (SequenceMachineLib.roundAway (Real.sqrt (A055461 (n + 1) : ℝ) - 1)).toNat) (A002262 n + 2)

end

end A106262.P17352193492540182605

namespace A106262

/-- `A000079(sqrt(A055461(n+1))-1)%(A002262(n)+2)` -/
def P17352193492540182605.Spec : Prop :=
  ∀ n, P17352193492540182605.a n = A106262 n

end A106262

/-! ## A106262.P6710315193633233969

`(A038207(n)/A007318(n))%(A000005(A059268(n))+1)`
-/

namespace A106262.P6710315193633233969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A038207 n : ℚ) / (A007318 n : ℚ))) (A000005 (A059268 n).toNat + 1)

end

end A106262.P6710315193633233969

namespace A106262

/-- `(A038207(n)/A007318(n))%(A000005(A059268(n))+1)` -/
def P6710315193633233969.Spec : Prop :=
  ∀ n, P6710315193633233969.a n = A106262 n

end A106262

/-! ## A106262.P1580863951696672705

`A000010(2^(C(comp[∑[n]]-n, 2)-n))%A131818(n+2)`
-/

namespace A106262.P1580863951696672705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℤ))).toNat) (A131818 (n + 2))

end

end A106262.P1580863951696672705

namespace A106262

/-- `A000010(2^(C(comp[∑[n]]-n, 2)-n))%A131818(n+2)` -/
def P1580863951696672705.Spec : Prop :=
  ∀ n, P1580863951696672705.a n = A106262 n

end A106262

/-! ## A106262.P11712592753165173531

`A000010(A090988(n+1))%Δ[A193974(n)]`
-/

namespace A106262.P11712592753165173531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A090988 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A106262.P11712592753165173531

namespace A106262

/-- `A000010(A090988(n+1))%Δ[A193974(n)]` -/
def P11712592753165173531.Spec : Prop :=
  ∀ n, P11712592753165173531.a n = A106262 n

end A106262

/-! ## A106262.P5996866882234481223

`A089247(A130321(n))%A071585(A059268(n))`
-/

namespace A106262.P5996866882234481223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089247 (A130321 n).toNat) (A071585 (A059268 n).toNat)

end

end A106262.P5996866882234481223

namespace A106262

/-- `A089247(A130321(n))%A071585(A059268(n))` -/
def P5996866882234481223.Spec : Prop :=
  ∀ n, P5996866882234481223.a n = A106262 n

end A106262

/-!
# A106265: Numbers a > 0 such that the Diophantine equation a + b^2 = c^3 has integer solutions b and c.

The programs for A106265, there is no canonical definition to state claims against.
-/

/-! ## A106265.P17175179031564845218

`A106267(n+1)^3-A106266(n+1)²`
-/

namespace A106265.P17175179031564845218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106267 (n + 1) ^ 3 - A106266 (n + 1) ^ 2

end

end A106265.P17175179031564845218

/-! ## A106265.P17477231820289465028

`eq[1, A266364(A081120(n+1)²)]+1`
-/

namespace A106265.P17477231820289465028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266364 (A081120 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106265.P17477231820289465028

/-! ## A106265.P58427129553765259

`eq[1, A266528(2^(A134109(n+1)+1))]+1`
-/

namespace A106265.P58427129553765259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266528 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A134109 (n + 1) + 1 : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A106265.P58427129553765259

/-! ## A106265.P12651299017575424146

`lt[1, n*A081120(A233583(n+1))]`
-/

namespace A106265.P12651299017575424146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081120 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A106265.P12651299017575424146

/-! ## A106265.P4542956668995806378

`lt[A000038(n), A081120(A233583(n+1))]`
-/

namespace A106265.P4542956668995806378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081120 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106265.P4542956668995806378

/-! ## A106265.P11190843839669682893

`lt[A000007(n), A134109(A233583(n+1))]`
-/

namespace A106265.P11190843839669682893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134109 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106265.P11190843839669682893

/-! ## A106265.P60430725248065155

`A000578(A106267(n+1))-A106266(n+1)²`
-/

namespace A106265.P60430725248065155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A106267 (n + 1)).toNat - A106266 (n + 1) ^ 2

end

end A106265.P60430725248065155

/-!
# A106266: Least b such that A106265(n) + b^2 = c^3 for some c (given in A106267).

The programs for A106266, there is no canonical definition to state claims against.
-/

/-! ## A106266.P12574487435612889070

`sqrt(A106267(n+1)^3-A106265(n+1))`
-/

namespace A106266.P12574487435612889070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A106267 (n + 1) ^ 3 - A106265 (n + 1) : ℝ)

end

end A106266.P12574487435612889070

/-!
# A106267: Least c such that A106265(n) + b^2 = c^3 for some b (given in A106266).

The programs for A106267, there is no canonical definition to state claims against.
-/

/-! ## A106267.P11788635876428609463

`(A106265(n+1)+A106266(n+1)²)^(1/3)`
-/

namespace A106267.P11788635876428609463
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A106265 (n + 1) + A106266 (n + 1) ^ 2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A106267.P11788635876428609463

/-!
# A106268: Number triangle T(n,k) = (-1)^(n-k)*binomial(k-n, n-k) = (0^(n-k) + binomial(2*(n-k), n-k))/2 if k <= n, 0 otherwise; Riordan array (1/(2-C(x)), x) where C(x) is g.f. for Catalan numbers A000108.

The programs for A106268, the canonical program `A106268.P2002744397126662748` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106268 has offset 0).

The definition of A106268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106268.P7213761429516826812

`A088218(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A106268.P7213761429516826812
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1))

end

end A106268.P7213761429516826812

namespace A106268

/-- `A088218(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P7213761429516826812.Spec : Prop :=
  ∀ n, P7213761429516826812.a n = A106268 n

end A106268

/-! ## A106268.P5031629999868169660

`A088218(C(comp[∑[n]]-n, 2)-n-1)`
-/

namespace A106268.P5031629999868169660
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) - 1).toNat

end

end A106268.P5031629999868169660

namespace A106268

/-- `A088218(C(comp[∑[n]]-n, 2)-n-1)` -/
def P5031629999868169660.Spec : Prop :=
  ∀ n, P5031629999868169660.a n = A106268 n

end A106268

/-! ## A106268.P7706594364028101267

`A088218(A025581(n))`
-/

namespace A106268.P7706594364028101267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (A025581 n).toNat

end

end A106268.P7706594364028101267

namespace A106268

/-- `A088218(A025581(n))` -/
def P7706594364028101267.Spec : Prop :=
  ∀ n, P7706594364028101267.a n = A106268 n

end A106268

/-! ## A106268.P2002744397126662748

`A210736(A099375(n)-1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106268

/-- `A210736(A099375(n)-1)` -/
def P2002744397126662748.Spec : Prop :=
  ∀ n, P2002744397126662748.a n = A106268 n

theorem P2002744397126662748.correct : P2002744397126662748.Spec := by
  intro n
  simp only [A106268]

end A106268

/-! ## A106268.P5963591165165048254

`A117852(n)/A129994(n)`
-/

namespace A106268.P5963591165165048254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117852 n : ℚ) / (A129994 n : ℚ)

end

end A106268.P5963591165165048254

namespace A106268

/-- `A117852(n)/A129994(n)` -/
def P5963591165165048254.Spec : Prop :=
  ∀ n, P5963591165165048254.a n = (A106268 n : ℚ)

end A106268

/-! ## A106268.P16969065567658849762

`lcm(A180955(n), A343233(n))`
-/

namespace A106268.P16969065567658849762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A180955 n) (A343233 n)

end

end A106268.P16969065567658849762

namespace A106268

/-- `lcm(A180955(n), A343233(n))` -/
def P16969065567658849762.Spec : Prop :=
  ∀ n, (P16969065567658849762.a n : ℤ) = A106268 n

end A106268

/-! ## A106268.P2844722504905438932

`A088218(A004736(n+1)-1)`
-/

namespace A106268.P2844722504905438932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (A004736 (n + 1) - 1).toNat

end

end A106268.P2844722504905438932

namespace A106268

/-- `A088218(A004736(n+1)-1)` -/
def P2844722504905438932.Spec : Prop :=
  ∀ n, P2844722504905438932.a n = A106268 n

end A106268

/-! ## A106268.P9944292741451775231

`A112336(n)/A130453(n+1)`
-/

namespace A106268.P9944292741451775231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112336 n : ℚ) / (A130453 (n + 1) : ℚ)

end

end A106268.P9944292741451775231

namespace A106268

/-- `A112336(n)/A130453(n+1)` -/
def P9944292741451775231.Spec : Prop :=
  ∀ n, P9944292741451775231.a n = (A106268 n : ℚ)

end A106268

/-! ## A106268.P5396686672623850157

`A106187(n)/gcd(2, A106187(n))`
-/

namespace A106268.P5396686672623850157
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106187 n : ℚ) / (Int.gcd 2 (A106187 n) : ℚ)

end

end A106268.P5396686672623850157

namespace A106268

/-- `A106187(n)/gcd(2, A106187(n))` -/
def P5396686672623850157.Spec : Prop :=
  ∀ n, P5396686672623850157.a n = (A106268 n : ℚ)

end A106268

/-! ## A106268.P10200250366476700495

`A088218(A002024(n+1)-A002260(n+1))`
-/

namespace A106268.P10200250366476700495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (A002024 (n + 1) - A002260 (n + 1)).toNat

end

end A106268.P10200250366476700495

namespace A106268

/-- `A088218(A002024(n+1)-A002260(n+1))` -/
def P10200250366476700495.Spec : Prop :=
  ∀ n, P10200250366476700495.a n = A106268 n

end A106268

/-! ## A106268.P8160692222383282858

`A088218(A193592(n+1))`
-/

namespace A106268.P8160692222383282858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (A193592 (n + 1)).toNat

end

end A106268.P8160692222383282858

namespace A106268

/-- `A088218(A193592(n+1))` -/
def P8160692222383282858.Spec : Prop :=
  ∀ n, P8160692222383282858.a n = A106268 n

end A106268

/-! ## A106268.P12175477470232361954

`C(A099375(n+1), A025581(n))`
-/

namespace A106268.P12175477470232361954
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A099375 (n + 1)).toNat (A025581 n).toNat

end

end A106268.P12175477470232361954

namespace A106268

/-- `C(A099375(n+1), A025581(n))` -/
def P12175477470232361954.Spec : Prop :=
  ∀ n, (P12175477470232361954.a n : ℤ) = A106268 n

end A106268

/-! ## A106268.P5849315174946457183

`A008311((C(comp[∑[n]]-n, 2)-(n+1))²)`
-/

namespace A106268.P5849315174946457183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2).toNat

end

end A106268.P5849315174946457183

namespace A106268

/-- `A008311((C(comp[∑[n]]-n, 2)-(n+1))²)` -/
def P5849315174946457183.Spec : Prop :=
  ∀ n, P5849315174946457183.a n = A106268 n

end A106268

/-! ## A106268.P12413524774746540450

`A034869((C(comp[∑[n]]-n, 2)-(n+1))²)`
-/

namespace A106268.P12413524774746540450
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034869 (((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2).toNat

end

end A106268.P12413524774746540450

namespace A106268

/-- `A034869((C(comp[∑[n]]-n, 2)-(n+1))²)` -/
def P12413524774746540450.Spec : Prop :=
  ∀ n, P12413524774746540450.a n = A106268 n

end A106268

/-! ## A106268.P5059562201899746720

`A008311(A095831(n+1))`
-/

namespace A106268.P5059562201899746720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (A095831 (n + 1)).toNat

end

end A106268.P5059562201899746720

namespace A106268

/-- `A008311(A095831(n+1))` -/
def P5059562201899746720.Spec : Prop :=
  ∀ n, P5059562201899746720.a n = A106268 n

end A106268

/-! ## A106268.P15663332811001928612

`A008311(A095832(n+1))`
-/

namespace A106268.P15663332811001928612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 (A095832 (n + 1)).toNat

end

end A106268.P15663332811001928612

namespace A106268

/-- `A008311(A095832(n+1))` -/
def P15663332811001928612.Spec : Prop :=
  ∀ n, P15663332811001928612.a n = A106268 n

end A106268

/-! ## A106268.P13375626557022950761

`A107131(2*A025581(n)²)`
-/

namespace A106268.P13375626557022950761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107131 (2 * A025581 n ^ 2).toNat

end

end A106268.P13375626557022950761

namespace A106268

/-- `A107131(2*A025581(n)²)` -/
def P13375626557022950761.Spec : Prop :=
  ∀ n, P13375626557022950761.a n = A106268 n

end A106268

/-! ## A106268.P2551588191549402833

`A198321(2*A025581(n)²)`
-/

namespace A106268.P2551588191549402833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198321 (2 * A025581 n ^ 2).toNat

end

end A106268.P2551588191549402833

namespace A106268

/-- `A198321(2*A025581(n)²)` -/
def P2551588191549402833.Spec : Prop :=
  ∀ n, P2551588191549402833.a n = A106268 n

end A106268

/-! ## A106268.P14734727958989292974

`A007318(2*(n+1-C(comp[∑[n]]-n, 2))²)`
-/

namespace A106268.P14734727958989292974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * ((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat

end

end A106268.P14734727958989292974

namespace A106268

/-- `A007318(2*(n+1-C(comp[∑[n]]-n, 2))²)` -/
def P14734727958989292974.Spec : Prop :=
  ∀ n, P14734727958989292974.a n = A106268 n

end A106268

/-! ## A106268.P4158808978979399532

`A007318(2*(C(comp[C(n, 2)]-n, 2)-(n+1))²)`
-/

namespace A106268.P4158808978979399532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)) ^ 2).toNat

end

end A106268.P4158808978979399532

namespace A106268

/-- `A007318(2*(C(comp[C(n, 2)]-n, 2)-(n+1))²)` -/
def P4158808978979399532.Spec : Prop :=
  ∀ n, P4158808978979399532.a n = A106268 n

end A106268

/-!
# A106269: Expansion of 1/((1 - x^2)*(2 - c(x))), where c(x) is the g.f. of A000108.

The programs for A106269, the canonical program `A106269.P2701720384490681382` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106269 has offset 0).

The definition of A106269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106269.P12555677385617208454

`∑[(4-2/n)*a(n-1)]-a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A106269.P12555677385617208454
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A106269.P12555677385617208454

namespace A106269

/-- `∑[(4-2/n)*a(n-1)]-a(n-1)` -/
def P12555677385617208454.Spec : Prop :=
  ∀ n, P12555677385617208454.a n = (A106269 n : ℚ)

end A106269

/-! ## A106269.P2701720384490681382

`ceil(A106188(n)/2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106269

/-- `ceil(A106188(n)/2)` -/
def P2701720384490681382.Spec : Prop :=
  ∀ n, P2701720384490681382.a n = A106269 n

theorem P2701720384490681382.correct : P2701720384490681382.Spec := by
  intro n
  simp only [A106269]

end A106269

/-! ## A106269.P2498885286753161830

`∑[abs(∑[A110556(n)])]`
-/

namespace A106269.P2498885286753161830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110556 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106269.P2498885286753161830

namespace A106269

/-- `∑[abs(∑[A110556(n)])]` -/
def P2498885286753161830.Spec : Prop :=
  ∀ n, P2498885286753161830.a n = A106269 n

end A106269

/-! ## A106269.P1092049739401116280

`A024718(n)-a(n-1)` with `a(0)=1`
-/

namespace A106269.P1092049739401116280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A024718 n - a (n - 1)

end

end A106269.P1092049739401116280

namespace A106269

/-- `A024718(n)-a(n-1)` -/
def P1092049739401116280.Spec : Prop :=
  ∀ n, P1092049739401116280.a n = A106269 n

end A106269

/-! ## A106269.P8917219044116351502

`A088218(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106269.P8917219044116351502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A088218 n + a (n - 2)

end

end A106269.P8917219044116351502

namespace A106269

/-- `A088218(n)+a(n-2)` -/
def P8917219044116351502.Spec : Prop :=
  ∀ n, P8917219044116351502.a n = A106269 n

end A106269

/-! ## A106269.P6543575657104062898

`A079309(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A106269.P6543575657104062898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079309 n + (1 - a (n - 1))

end

end A106269.P6543575657104062898

namespace A106269

/-- `A079309(n)+1-a(n-1)` -/
def P6543575657104062898.Spec : Prop :=
  ∀ n, P6543575657104062898.a n = A106269 n

end A106269

/-! ## A106269.P588379452703670853

`A086905(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A106269.P588379452703670853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086905 (2 * n) - a (n - 1)

end

end A106269.P588379452703670853

namespace A106269

/-- `A086905(2*n)-a(n-1)` -/
def P588379452703670853.Spec : Prop :=
  ∀ n, P588379452703670853.a n = A106269 n

end A106269

/-! ## A106269.P3755772316848151905

`A124642(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A106269.P3755772316848151905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A124642 (2 * n) - a (n - 1)

end

end A106269.P3755772316848151905

namespace A106269

/-- `A124642(2*n)-a(n-1)` -/
def P3755772316848151905.Spec : Prop :=
  ∀ n, P3755772316848151905.a n = A106269 n

end A106269

/-! ## A106269.P10950028011616383638

`A001700(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A106269.P10950028011616383638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001700 (n - 1) + a (n - 2)

end

end A106269.P10950028011616383638

namespace A106269

/-- `A001700(n-1)+a(n-2)` -/
def P10950028011616383638.Spec : Prop :=
  ∀ n, P10950028011616383638.a n = A106269 n

end A106269

/-! ## A106269.P16347993139356487467

`a(n-2)+A000984(n)/2` with `a(0)=1, a(1)=1`
-/

namespace A106269.P16347993139356487467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (A000984 n : ℚ) / 2

end

end A106269.P16347993139356487467

namespace A106269

/-- `a(n-2)+A000984(n)/2` -/
def P16347993139356487467.Spec : Prop :=
  ∀ n, P16347993139356487467.a n = (A106269 n : ℚ)

end A106269

/-! ## A106269.P2191442249495230565

`a(n-2)+C(2*n-1, n)` with `a(0)=1, a(1)=1`
-/

namespace A106269.P2191442249495230565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + Nat.choose ((2 * n : ℤ) - 1).toNat n

end

end A106269.P2191442249495230565

namespace A106269

/-- `a(n-2)+C(2*n-1, n)` -/
def P2191442249495230565.Spec : Prop :=
  ∀ n, (P2191442249495230565.a n : ℤ) = A106269 n

end A106269

/-! ## A106269.P949020264697821840

`∑[C(2*n-1, n)-a(n-1)]` with `a(0)=1`
-/

namespace A106269.P949020264697821840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (Nat.choose ((2 * n : ℤ) - 1).toNat n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106269.P949020264697821840

namespace A106269

/-- `∑[C(2*n-1, n)-a(n-1)]` -/
def P949020264697821840.Spec : Prop :=
  ∀ n, P949020264697821840.a n = A106269 n

end A106269

/-!
# A106270: Inverse of number triangle A106268; triangle T(n,k), 0 <= k <= n.

The programs for A106270, the canonical program `A106270.P1693461683916901715` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106270 has offset 0).

The definition of A106270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106270.P1693461683916901715

`A115140(C(comp[∑[n]]-n, 2)-n-char[∑[n-1]])`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106270

/-- `A115140(C(comp[∑[n]]-n, 2)-n-char[∑[n-1]])` -/
def P1693461683916901715.Spec : Prop :=
  ∀ n, P1693461683916901715.a n = A106270 n

theorem P1693461683916901715.correct : P1693461683916901715.Spec := by
  intro n
  simp only [A106270]

end A106270

/-! ## A106270.P2128198385435778878

`A115140(ceil(log2(A130330(n))))`
-/

namespace A106270.P2128198385435778878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 ⌈Real.logb 2 (A130330 n : ℝ)⌉.toNat

end

end A106270.P2128198385435778878

namespace A106270

/-- `A115140(ceil(log2(A130330(n))))` -/
def P2128198385435778878.Spec : Prop :=
  ∀ n, P2128198385435778878.a n = A106270 n

end A106270

/-! ## A106270.P12192149647953238717

`A115141(ceil(log2(A130330(n))))`
-/

namespace A106270.P12192149647953238717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 ⌈Real.logb 2 (A130330 n : ℝ)⌉.toNat

end

end A106270.P12192149647953238717

namespace A106270

/-- `A115141(ceil(log2(A130330(n))))` -/
def P12192149647953238717.Spec : Prop :=
  ∀ n, P12192149647953238717.a n = A106270 n

end A106270

/-! ## A106270.P17974081838137201604

`A246432(ceil(log2(A130330(n))))`
-/

namespace A106270.P17974081838137201604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 ⌈Real.logb 2 (A130330 n : ℝ)⌉.toNat

end

end A106270.P17974081838137201604

namespace A106270

/-- `A246432(ceil(log2(A130330(n))))` -/
def P17974081838137201604.Spec : Prop :=
  ∀ n, P17974081838137201604.a n = A106270 n

end A106270

/-! ## A106270.P8272213969580206677

`A115140(round(log2(A130330(n))))`
-/

namespace A106270.P8272213969580206677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (SequenceMachineLib.roundAway (Real.logb 2 (A130330 n : ℝ))).toNat

end

end A106270.P8272213969580206677

namespace A106270

/-- `A115140(round(log2(A130330(n))))` -/
def P8272213969580206677.Spec : Prop :=
  ∀ n, P8272213969580206677.a n = A106270 n

end A106270

/-! ## A106270.P1770033833656696063

`A124644(n)/A154926(n+1)`
-/

namespace A106270.P1770033833656696063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124644 n : ℚ) / (A154926 (n + 1) : ℚ)

end

end A106270.P1770033833656696063

namespace A106270

/-- `A124644(n)/A154926(n+1)` -/
def P1770033833656696063.Spec : Prop :=
  ∀ n, P1770033833656696063.a n = (A106270 n : ℚ)

end A106270

/-! ## A106270.P16014465483394417605

`A115140(ceil(sqrt(A095832(n+1))))`
-/

namespace A106270.P16014465483394417605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 ⌈Real.sqrt (A095832 (n + 1) : ℝ)⌉.toNat

end

end A106270.P16014465483394417605

namespace A106270

/-- `A115140(ceil(sqrt(A095832(n+1))))` -/
def P16014465483394417605.Spec : Prop :=
  ∀ n, P16014465483394417605.a n = A106270 n

end A106270

/-! ## A106270.P10412191911423258781

`(2*char[∑[n-1]]-1)*A000108(A025581(n))`
-/

namespace A106270.P10412191911423258781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((2 * (if ∃ j, f1 j = (n : ℤ) then 1 else 0) : ℕ) : ℤ) - 1) * A000108 (A025581 n).toNat

end

end A106270.P10412191911423258781

namespace A106270

/-- `(2*char[∑[n-1]]-1)*A000108(A025581(n))` -/
def P10412191911423258781.Spec : Prop :=
  ∀ n, P10412191911423258781.a n = A106270 n

end A106270

/-! ## A106270.P17940384293555503798

`A000108(C(comp[∑[n]]-n, 2)-(n+1))*A154990(n+1)`
-/

namespace A106270.P17940384293555503798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) * A154990 (n + 1)

end

end A106270.P17940384293555503798

namespace A106270

/-- `A000108(C(comp[∑[n]]-n, 2)-(n+1))*A154990(n+1)` -/
def P17940384293555503798.Spec : Prop :=
  ∀ n, P17940384293555503798.a n = A106270 n

end A106270

/-! ## A106270.P12347341080160087090

`A343233(A181133(n+1))`
-/

namespace A106270.P12347341080160087090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343233 (A181133 (n + 1)).toNat

end

end A106270.P12347341080160087090

namespace A106270

/-- `A343233(A181133(n+1))` -/
def P12347341080160087090.Spec : Prop :=
  ∀ n, P12347341080160087090.a n = A106270 n

end A106270

/-! ## A106270.P10682924157606605961

`∏{e}[A130321(n), -A000108(#)]`
-/

namespace A106270.P10682924157606605961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-A000108 (Nat.factorization (f1 n).natAbs p))

end

end A106270.P10682924157606605961

namespace A106270

/-- `∏{e}[A130321(n), -A000108(#)]` -/
def P10682924157606605961.Spec : Prop :=
  ∀ n, P10682924157606605961.a n = A106270 n

end A106270

/-!
# A106271: Row sums of number triangle A106270.

The programs for A106271, the canonical program `A106271.P8734074727395476678` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106271 has offset 0).

The definition of A106271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A106271.P8734074727395476678

`1-A014138(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A106271

/-- `1-A014138(n)` -/
def P8734074727395476678.Spec : Prop :=
  ∀ n, P8734074727395476678.a n = A106271 n

theorem P8734074727395476678.correct : P8734074727395476678.Spec := by
  intro n
  simp only [A106271]

end A106271

/-! ## A106271.P12630772929305027065

`2-A014137(n)`
-/

namespace A106271.P12630772929305027065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014137 n

end

end A106271.P12630772929305027065

namespace A106271

/-- `2-A014137(n)` -/
def P12630772929305027065.Spec : Prop :=
  ∀ n, P12630772929305027065.a n = A106271 n

theorem P12630772929305027065.correct : P12630772929305027065.Spec := by
  intro n
  simp only [A106271, Nat.add_sub_cancel, A106271.P12630772929305027065.a, A106271.P8734074727395476678.a, A014137, A014137.P1978746088953100721.a, A014138, A014138.P8012092781455815566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106271

/-! ## A106271.P18157679274826365613

`∑[(4-6/(n+1))*a(n-1)]` with `a(0)=1, a(1)=-1`
-/

namespace A106271.P18157679274826365613
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, -1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P18157679274826365613

namespace A106271

/-- `∑[(4-6/(n+1))*a(n-1)]` -/
def P18157679274826365613.Spec : Prop :=
  ∀ n, P18157679274826365613.a n = (A106271 n : ℚ)

end A106271

/-! ## A106271.P10656998769627899076

`2-∑[A000108(n)]`
-/

namespace A106271.P10656998769627899076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P10656998769627899076

namespace A106271

/-- `2-∑[A000108(n)]` -/
def P10656998769627899076.Spec : Prop :=
  ∀ n, P10656998769627899076.a n = A106271 n

end A106271

/-! ## A106271.P8086631756044627120

`3-A155587(n+1)`
-/

namespace A106271.P8086631756044627120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A155587 (n + 1)

end

end A106271.P8086631756044627120

namespace A106271

/-- `3-A155587(n+1)` -/
def P8086631756044627120.Spec : Prop :=
  ∀ n, P8086631756044627120.a n = A106271 n

end A106271

/-! ## A106271.P14457703447330703505

`2-A110199(2*n)`
-/

namespace A106271.P14457703447330703505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A110199 (2 * n)

end

end A106271.P14457703447330703505

namespace A106271

/-- `2-A110199(2*n)` -/
def P14457703447330703505.Spec : Prop :=
  ∀ n, P14457703447330703505.a n = A106271 n

end A106271

/-! ## A106271.P9934487859365004927

`2-∑[abs(A168491(n))]`
-/

namespace A106271.P9934487859365004927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P9934487859365004927

namespace A106271

/-- `2-∑[abs(A168491(n))]` -/
def P9934487859365004927.Spec : Prop :=
  ∀ n, P9934487859365004927.a n = A106271 n

end A106271

/-! ## A106271.P6619348975189512842

`3-A166588(Δ[n²])`
-/

namespace A106271.P6619348975189512842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A166588 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A106271.P6619348975189512842

namespace A106271

/-- `3-A166588(Δ[n²])` -/
def P6619348975189512842.Spec : Prop :=
  ∀ n, P6619348975189512842.a n = A106271 n

end A106271

/-! ## A106271.P14874097866790493239

`1-abs(A099324(n+1))`
-/

namespace A106271.P14874097866790493239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A099324 (n + 1)|

end

end A106271.P14874097866790493239

namespace A106271

/-- `1-abs(A099324(n+1))` -/
def P14874097866790493239.Spec : Prop :=
  ∀ n, P14874097866790493239.a n = A106271 n

end A106271

/-! ## A106271.P4148560091266987468

`∑[A115140(n+1)]+2`
-/

namespace A106271.P4148560091266987468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A106271.P4148560091266987468

namespace A106271

/-- `∑[A115140(n+1)]+2` -/
def P4148560091266987468.Spec : Prop :=
  ∀ n, P4148560091266987468.a n = A106271 n

end A106271

/-! ## A106271.P15232588737693226059

`∑[A115141(n+1)]+3`
-/

namespace A106271.P15232588737693226059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115141 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A106271.P15232588737693226059

namespace A106271

/-- `∑[A115141(n+1)]+3` -/
def P15232588737693226059.Spec : Prop :=
  ∀ n, P15232588737693226059.a n = A106271 n

end A106271

/-! ## A106271.P15646043342400800254

`2-∑[A120588(n+1)]`
-/

namespace A106271.P15646043342400800254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P15646043342400800254

namespace A106271

/-- `2-∑[A120588(n+1)]` -/
def P15646043342400800254.Spec : Prop :=
  ∀ n, P15646043342400800254.a n = A106271 n

end A106271

/-! ## A106271.P10147838099133754581

`2-∑[A120304(n)+2]`
-/

namespace A106271.P10147838099133754581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P10147838099133754581

namespace A106271

/-- `2-∑[A120304(n)+2]` -/
def P10147838099133754581.Spec : Prop :=
  ∀ n, P10147838099133754581.a n = A106271 n

end A106271

/-! ## A106271.P17139873652247127179

`∑[A246432(n+1)]+4`
-/

namespace A106271.P17139873652247127179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A106271.P17139873652247127179

namespace A106271

/-- `∑[A246432(n+1)]+4` -/
def P17139873652247127179.Spec : Prop :=
  ∀ n, P17139873652247127179.a n = A106271 n

end A106271

/-! ## A106271.P3855599733109186859

`2-∑[A028303(2*n)]`
-/

namespace A106271.P3855599733109186859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028303 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P3855599733109186859

namespace A106271

/-- `2-∑[A028303(2*n)]` -/
def P3855599733109186859.Spec : Prop :=
  ∀ n, P3855599733109186859.a n = A106271 n

end A106271

/-! ## A106271.P2027836660510366242

`2-∑[A028304(2*n)]`
-/

namespace A106271.P2027836660510366242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P2027836660510366242

namespace A106271

/-- `2-∑[A028304(2*n)]` -/
def P2027836660510366242.Spec : Prop :=
  ∀ n, P2027836660510366242.a n = A106271 n

end A106271

/-! ## A106271.P4817718823220322052

`2-∑[A126120(2*n)]`
-/

namespace A106271.P4817718823220322052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P4817718823220322052

namespace A106271

/-- `2-∑[A126120(2*n)]` -/
def P4817718823220322052.Spec : Prop :=
  ∀ n, P4817718823220322052.a n = A106271 n

end A106271

/-! ## A106271.P16045881742066960374

`2-∑[A126324(2*n)]`
-/

namespace A106271.P16045881742066960374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P16045881742066960374

namespace A106271

/-- `2-∑[A126324(2*n)]` -/
def P16045881742066960374.Spec : Prop :=
  ∀ n, P16045881742066960374.a n = A106271 n

end A106271

/-! ## A106271.P6738234627864533687

`2-∑[A208355(2*n)]`
-/

namespace A106271.P6738234627864533687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A106271.P6738234627864533687

namespace A106271

/-- `2-∑[A208355(2*n)]` -/
def P6738234627864533687.Spec : Prop :=
  ∀ n, P6738234627864533687.a n = A106271 n

end A106271

/-! ## A106271.P12027135322015530015

`∑[A210628(2*n+1)]+2`
-/

namespace A106271.P12027135322015530015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210628 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A106271.P12027135322015530015

namespace A106271

/-- `∑[A210628(2*n+1)]+2` -/
def P12027135322015530015.Spec : Prop :=
  ∀ n, P12027135322015530015.a n = A106271 n

end A106271

/-!
# A106272: Antidiagonal sums of number triangle A106270.

The programs for A106272, the canonical program `A106272.P8541491872304346101` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A106272 has offset 0).

The definition of A106272 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A106272.P605124130980525286

`2-∑[(4-6/(n+1))*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A106272.P605124130980525286
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A106272.P605124130980525286

namespace A106272

/-- `2-∑[(4-6/(n+1))*a(n-1)]-a(n-1)` -/
def P605124130980525286.Spec : Prop :=
  ∀ n, P605124130980525286.a n = (A106272 n : ℚ)

end A106272

/-! ## A106272.P8541491872304346101

`A106271(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A106272

/-- `A106271(n)-a(n-1)` -/
def P8541491872304346101.Spec : Prop :=
  ∀ n, P8541491872304346101.a n = A106272 n

theorem P8541491872304346101.correct : P8541491872304346101.Spec := by
  intro n
  simp only [A106272]

end A106272

/-! ## A106272.P15953698410508234220

`a(n-2)-A000108(n)` with `a(0)=1, a(1)=-1`
-/

namespace A106272.P15953698410508234220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n a =>
  a (n - 2) - A000108 n

end

end A106272.P15953698410508234220

namespace A106272

/-- `a(n-2)-A000108(n)` -/
def P15953698410508234220.Spec : Prop :=
  ∀ n, P15953698410508234220.a n = A106272 n

end A106272

/-! ## A106272.P17483272733079178775

`1-(A014138(n)+a(n-1))` with `a(0)=1`
-/

namespace A106272.P17483272733079178775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (A014138 n + a (n - 1))

end

end A106272.P17483272733079178775

namespace A106272

/-- `1-(A014138(n)+a(n-1))` -/
def P17483272733079178775.Spec : Prop :=
  ∀ n, P17483272733079178775.a n = A106272 n

theorem P17483272733079178775.correct : P17483272733079178775.Spec := by
  intro n
  simp only [A106272, Nat.add_sub_cancel, A106272.P17483272733079178775.a, A106272.P8541491872304346101.a, A014138, A014138.P8012092781455815566.a, A106271, A106271.P8734074727395476678.a, A014137, A014137.P1978746088953100721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106272

/-! ## A106272.P10637360669106868671

`2-(A014137(n)+a(n-1))` with `a(0)=1`
-/

namespace A106272.P10637360669106868671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (A014137 n + a (n - 1))

end

end A106272.P10637360669106868671

namespace A106272

/-- `2-(A014137(n)+a(n-1))` -/
def P10637360669106868671.Spec : Prop :=
  ∀ n, P10637360669106868671.a n = A106272 n

theorem P10637360669106868671.correct : P10637360669106868671.Spec := by
  intro n
  simp only [A106272, Nat.add_sub_cancel, A106272.P10637360669106868671.a, A106272.P8541491872304346101.a, A014137, A014137.P1978746088953100721.a, A106271, A106271.P8734074727395476678.a, A014138, A014138.P8012092781455815566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A106272

/-!
# A106274: Numbers k for which the absolute value of the discriminant of the polynomial x^k - x^(k-1) - ... - x - 1 is prime.

The programs for A106274, there is no canonical definition to state claims against.
-/

/-! ## A106274.P15471658872905680046

`ogf((2-10x-14x^2)/(1-7x+4x^2))`
-/

namespace A106274.P15471658872905680046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -10, -14] [1, -7, 4] n

end

end A106274.P15471658872905680046

/-!
# A106276: Number of distinct zeros of x^3-x^2-x-1 mod prime(n).

The programs for A106276, there is no canonical definition to state claims against.
-/

/-! ## A106276.P3753854093051051265

`A030200(A102781(n+1))+floor(atan(n+1))`
-/

namespace A106276.P3753854093051051265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A106276.P3753854093051051265

/-! ## A106276.P15287098071293203152

`A057427(n)+A030200(A102781(n+1))`
-/

namespace A106276.P15287098071293203152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A030200 (A102781 (n + 1)).toNat

end

end A106276.P15287098071293203152

/-! ## A106276.P11086401638741200442

`A178334(n)+A030200(A102781(n+1))`
-/

namespace A106276.P11086401638741200442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A030200 (A102781 (n + 1)).toNat

end

end A106276.P11086401638741200442

/-! ## A106276.P16103130010189082546

`A030200(A102781(n+1))-A057428(n)`
-/

namespace A106276.P16103130010189082546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat - A057428 n

end

end A106276.P16103130010189082546

/-! ## A106276.P1601516660789850858

`A030200(A102781(n+1))+A011626(n)²`
-/

namespace A106276.P1601516660789850858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + A011626 n ^ 2

end

end A106276.P1601516660789850858

/-! ## A106276.P17141446593651364018

`A030200(A102781(n+1))+char[A052938(n)]`
-/

namespace A106276.P17141446593651364018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A106276.P17141446593651364018

/-! ## A106276.P14271683193509959231

`A030200(A102781(n+1))+1-A000007(n)`
-/

namespace A106276.P14271683193509959231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + (1 - A000007 n)

end

end A106276.P14271683193509959231

/-! ## A106276.P14089909406346159328

`A030200(A102781(n+1))+val(A002445(n), 2)`
-/

namespace A106276.P14089909406346159328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + (SequenceMachineLib.valuation (A002445 n).toNat 2 : ℤ)

end

end A106276.P14089909406346159328

/-! ## A106276.P1646568208651883277

`A030200(A102781(n+1))+A000040(n+1)%2`
-/

namespace A106276.P1646568208651883277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A106276.P1646568208651883277

/-! ## A106276.P6006328312029554246

`2*n+A030200(A102781(n+1))-A004273(n)`
-/

namespace A106276.P6006328312029554246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A030200 (A102781 (n + 1)).toNat - A004273 n)

end

end A106276.P6006328312029554246

/-! ## A106276.P7668801871187787526

`(A030200(A102781(n+1))+1)/A014963(4*n+2)`
-/

namespace A106276.P7668801871187787526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030200 (A102781 (n + 1)).toNat + 1 : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A106276.P7668801871187787526

/-! ## A106276.P10321986269560194563

`A030200(A102781(n+1))+A001221(A001316(n))`
-/

namespace A106276.P10321986269560194563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + A001221 (A001316 n).toNat

end

end A106276.P10321986269560194563

/-! ## A106276.P1745729785062065590

`A030200(A102781(n+1))+A020513(A191060(n+1))`
-/

namespace A106276.P1745729785062065590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + A020513 (A191060 (n + 1)).toNat

end

end A106276.P1745729785062065590

/-! ## A106276.P3128944604674183099

`A030200(A102781(n+1))+A008683(2*A000040(n+1))`
-/

namespace A106276.P3128944604674183099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030200 (A102781 (n + 1)).toNat + A008683 (2 * A000040 (n + 1)).toNat

end

end A106276.P3128944604674183099

/-!
# A106277: Number of distinct zeros of x^4-x^3-x^2-x-1 mod prime(n).

The programs for A106277, there is no canonical definition to state claims against.
-/

/-! ## A106277.P9784802178158789539

`A075053(A075053(p?[A053755(n)]))`
-/

namespace A106277.P9784802178158789539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A075053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A106277.P9784802178158789539

/-! ## A106277.P17631528780620548986

`A075053(A075053(p?[A080335(n)]))`
-/

namespace A106277.P17631528780620548986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075053 (A075053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A106277.P17631528780620548986

/-! ## A106277.P14848575540119934146

`A266871(A266819(n))-A266837(n+5)`
-/

namespace A106277.P14848575540119934146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266871 (A266819 n).toNat - A266837 (n + 5)

end

end A106277.P14848575540119934146

/-! ## A106277.P4917833370570707436

`A322389(A199118(n)+A195770(2*n+1))`
-/

namespace A106277.P4917833370570707436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322389 (A199118 n + A195770 (2 * n + 1)).toNat

end

end A106277.P4917833370570707436

/-! ## A106277.P13494452088872656474

`A070259(A356309(2*n+3))%A110591(2*n+3)`
-/

namespace A106277.P13494452088872656474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070259 (A356309 (2 * n + 3)).toNat) (A110591 (2 * n + 3))

end

end A106277.P13494452088872656474

/-!
# A106279: Primes p such that the polynomial x^3-x^2-x-1 mod p has 3 distinct zeros.

The programs for A106279, there is no canonical definition to state claims against.
-/

/-! ## A106279.P5599643217390321535

`A033209(n+2)`
-/

namespace A106279.P5599643217390321535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033209 (n + 2)

end

end A106279.P5599643217390321535

/-! ## A106279.P8749088848691290186

`p?[A072874(n+3)]`
-/

namespace A106279.P8749088848691290186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072874 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106279.P8749088848691290186

/-! ## A106279.P807182528139464366

`p?[A140973(n+3)]`
-/

namespace A106279.P807182528139464366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140973 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106279.P807182528139464366

/-! ## A106279.P8431045325059852673

`p?[A141579(n+3)]`
-/

namespace A106279.P8431045325059852673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141579 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106279.P8431045325059852673

/-! ## A106279.P13273759924813528827

`p?[A232570(n+5)]`
-/

namespace A106279.P13273759924813528827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232570 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106279.P13273759924813528827

/-!
# A106280: Primes p such that the polynomial x^4-x^3-x^2-x-1 mod p has 4 distinct zeros.

The programs for A106280, there is no canonical definition to state claims against.
-/

/-! ## A106280.P10024408577860584508

`p?[A373054(n+3)]`
-/

namespace A106280.P10024408577860584508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106280.P10024408577860584508

/-! ## A106280.P3301431034347184850

`filter[A373054(n+1), A174275(#)]`
-/

namespace A106280.P3301431034347184850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174275 (f1 j).toNat = 1) n)

end

end A106280.P3301431034347184850

/-! ## A106280.P4523298930617259712

`filter[A373054(n+1), A257531(#)]`
-/

namespace A106280.P4523298930617259712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A106280.P4523298930617259712

/-! ## A106280.P4390611504312554249

`filter[A373054(n+1), A323158(#)]`
-/

namespace A106280.P4390611504312554249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A106280.P4390611504312554249

/-! ## A106280.P4306756923068311893

`filter[A373054(n+1), A324908(#)]`
-/

namespace A106280.P4306756923068311893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A106280.P4306756923068311893

/-!
# A106281: Primes p such that the polynomial x^5-x^4-x^3-x^2-x-1 mod p has 5 distinct zeros.

The programs for A106281, there is no canonical definition to state claims against.
-/

/-! ## A106281.P5522817605012867777

`A135846(n+2)`
-/

namespace A106281.P5522817605012867777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (n + 2)

end

end A106281.P5522817605012867777

/-! ## A106281.P12423416349494651255

`p?[A135846(log2(A020707(n)))]`
-/

namespace A106281.P12423416349494651255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (SequenceMachineLib.roundAway (Real.logb 2 (A020707 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106281.P12423416349494651255

/-! ## A106281.P12516926217795885804

`record[A135846(A080513(abs(1-n)))]`
-/

namespace A106281.P12516926217795885804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (A080513 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106281.P12516926217795885804

/-! ## A106281.P4768789542298397526

`record[A135846(A030545(n))]`
-/

namespace A106281.P4768789542298397526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135846 (A030545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A106281.P4768789542298397526

/-!
# A106282: Primes p such that the polynomial x^3-x^2-x-1 mod p has no zeros; i.e., the polynomial is irreducible over the integers mod p.

The programs for A106282, there is no canonical definition to state claims against.
-/

/-! ## A106282.P13095119394469100970

`p?[lt[0, A028953(n)]]`
-/

namespace A106282.P13095119394469100970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106282.P13095119394469100970

/-! ## A106282.P10780581752609767245

`lt[A223135(n)², A028953(n)]`
-/

namespace A106282.P10780581752609767245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P10780581752609767245

/-! ## A106282.P966678747005821570

`lt[A226378(n)², A028953(n)]`
-/

namespace A106282.P966678747005821570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P966678747005821570

/-! ## A106282.P1463557753462549975

`p?[n*A118605(A028953(n)+2)]`
-/

namespace A106282.P1463557753462549975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118605 (A028953 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106282.P1463557753462549975

/-! ## A106282.P5231538817819339975

`p?[n*A113680(A028953(n)+3)]`
-/

namespace A106282.P5231538817819339975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A113680 (A028953 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106282.P5231538817819339975

/-! ## A106282.P13192402366010554998

`p?[n*A118605(2*A028953(n))]`
-/

namespace A106282.P13192402366010554998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A118605 (2 * A028953 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A106282.P13192402366010554998

/-! ## A106282.P9144524115072699191

`∪[A106892(n+1), A106893(n+1)]`
-/

namespace A106282.P9144524115072699191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A106282.P9144524115072699191

/-! ## A106282.P3417856648932657087

`lt[A032741(n), A028953(A028953(n)+1)]`
-/

namespace A106282.P3417856648932657087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A028953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P3417856648932657087

/-! ## A106282.P13807417830640838107

`lt[A223135(n), A028953(A028953(n)+1)]`
-/

namespace A106282.P13807417830640838107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A028953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P13807417830640838107

/-! ## A106282.P14676592038462687086

`lt[A226378(n), A028953(A028953(n)+1)]`
-/

namespace A106282.P14676592038462687086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A028953 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P14676592038462687086

/-! ## A106282.P1556411045995390695

`lt[A008574(A223135(n)-1), A028953(n)]`
-/

namespace A106282.P1556411045995390695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A223135 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P1556411045995390695

/-! ## A106282.P1056118597386888411

`lt[A008574(A226378(n)-1), A028953(n)]`
-/

namespace A106282.P1056118597386888411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A226378 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P1056118597386888411

/-! ## A106282.P17120451575897239494

`lt[A223135(n), A028953(2*A028953(n))]`
-/

namespace A106282.P17120451575897239494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (2 * A028953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P17120451575897239494

/-! ## A106282.P16036515878269905069

`lt[A226378(n), A028953(2*A028953(n))]`
-/

namespace A106282.P16036515878269905069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (2 * A028953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P16036515878269905069

/-! ## A106282.P11847918277253206429

`lt[A032741(n)², A032741(A028953(n)²)]`
-/

namespace A106282.P11847918277253206429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A028953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A106282.P11847918277253206429

/-! ## A106282.P17272619818128586009

`A000040(eq[2, A028953(A000040(n+1))]+1)`
-/

namespace A106282.P17272619818128586009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028953 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106282.P17272619818128586009

/-!
# A106283: Primes p such that the polynomial x^4-x^3-x^2-x-1 mod p has no zeros.

The programs for A106283, there is no canonical definition to state claims against.
-/

/-! ## A106283.P3769939157176481934

`p?[gcd(A000040(n+1), A106277(n+1))]`
-/

namespace A106283.P3769939157176481934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A106277 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106283.P3769939157176481934

/-!
# A106284: Primes p such that the polynomial x^5-x^4-x^3-x^2-x-1 mod p has no zeros.

The programs for A106284, there is no canonical definition to state claims against.
-/

/-! ## A106284.P17475898855306056789

`A065091(eq[0, A106278(n+1)])`
-/

namespace A106284.P17475898855306056789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A106284.P17475898855306056789

/-! ## A106284.P17874055059910080437

`A065091(lt[A106278(n+1), 1])`
-/

namespace A106284.P17874055059910080437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106278 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A106284.P17874055059910080437

/-! ## A106284.P6459394705300614169

`A000040(eq[0, A106278(n+1)]+1)`
-/

namespace A106284.P6459394705300614169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A106284.P6459394705300614169

/-! ## A106284.P5273005727344183191

`A008578(eq[0, A106278(n+1)]+2)`
-/

namespace A106284.P5273005727344183191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A106284.P5273005727344183191

/-! ## A106284.P13093776260899323135

`p?[gcd(A000040(n+1), A106278(n+1))]`
-/

namespace A106284.P13093776260899323135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A106278 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A106284.P13093776260899323135

/-!
# A106288: Number of different orbit lengths of the 3-step recursion mod n.

The programs for A106288, there is no canonical definition to state claims against.
-/

/-! ## A106288.P3375360820214664348

`A055874(n+1)+A001221(A048739(n)-A000292(n))`
-/

namespace A106288.P3375360820214664348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1) + A001221 (A048739 n - A000292 n).toNat

end

end A106288.P3375360820214664348

/-! ## A106288.P12685071809547448317

`A132747(n+1)+A055642(A115102(n))`
-/

namespace A106288.P12685071809547448317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1) + A055642 (A115102 n).toNat

end

end A106288.P12685071809547448317

/-! ## A106288.P1851615180159801399

`A132747(n+1)+A055642(A014495(n+4))`
-/

namespace A106288.P1851615180159801399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1) + A055642 (A014495 (n + 4)).toNat

end

end A106288.P1851615180159801399

/-! ## A106288.P6637748982373262685

`A132747(n+1)+A055642(A032020(2*(n+1)))`
-/

namespace A106288.P6637748982373262685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132747 (n + 1) + A055642 (A032020 (2 * (n + 1))).toNat

end

end A106288.P6637748982373262685

/-! ## A106288.P7885496231649988157

`A001222(A078501(n+1)+∑[n]*A294317(n))+1`
-/

namespace A106288.P7885496231649988157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078501 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A294317 n).toNat + 1

end

end A106288.P7885496231649988157

/-!
# A106291: Period of the Lucas sequence A000032 mod n.

The programs for A106291, there is no canonical definition to state claims against.
-/

/-! ## A106291.P11726417314511267115

`A001176(n+1)*A001177(A060791(n+1))`
-/

namespace A106291.P11726417314511267115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1) * A001177 (A060791 (n + 1)).toNat

end

end A106291.P11726417314511267115

/-! ## A106291.P836779546008356459

`A001175(n+1)/A001177(n+1)*A001177(A060791(n+1))`
-/

namespace A106291.P836779546008356459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001175 (n + 1) : ℚ) / (A001177 (n + 1) : ℚ) * (A001177 (A060791 (n + 1)).toNat : ℚ)

end

end A106291.P836779546008356459

/-! ## A106291.P2766787563638393341

`gcd(A001175(A060791(3*(n+1))), A001175(n+1))`
-/

namespace A106291.P2766787563638393341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001175 (A060791 (3 * (n + 1))).toNat) (A001175 (n + 1))

end

end A106291.P2766787563638393341

/-! ## A106291.P18183043631303031719

`A001177(A060791(n+1))*A128924(∑[n]+1)`
-/

namespace A106291.P18183043631303031719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A060791 (n + 1)).toNat * A128924 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A106291.P18183043631303031719

/-! ## A106291.P17854253043672167446

`gcd(A001175(n+1), A306933(A213278(n+1)))`
-/

namespace A106291.P17854253043672167446
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001175 (n + 1)) (A306933 (A213278 (n + 1)).toNat)

end

end A106291.P17854253043672167446

/-! ## A106291.P15987753190640587193

`lcm(A001175(A060791(n+1)), A253808(n+1))`
-/

namespace A106291.P15987753190640587193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001175 (A060791 (n + 1)).toNat) (A253808 (n + 1))

end

end A106291.P15987753190640587193

/-!
# A106292: Period of the Lucas sequence A000032 mod prime(n).

The programs for A106292, there is no canonical definition to state claims against.
-/

/-! ## A106292.P3795910036422205366

`A106291(p?[abs(xor(n, -2))])`
-/

namespace A106292.P3795910036422205366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A106292.P3795910036422205366

/-! ## A106292.P5296805599613966900

`A106291(p?[xor(1, n)+1])`
-/

namespace A106292.P5296805599613966900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A106292.P5296805599613966900

/-! ## A106292.P9620353371221505072

`A060305(n+1)%(n+2)²`
-/

namespace A106292.P9620353371221505072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060305 (n + 1)) ((n + 2) ^ 2 : ℤ)

end

end A106292.P9620353371221505072

/-! ## A106292.P4960988350759100569

`A106291(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A106292.P4960988350759100569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A106292.P4960988350759100569

/-! ## A106292.P4293701701481576960

`A106291(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A106292.P4293701701481576960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A106292.P4293701701481576960

/-! ## A106292.P3637045743308542577

`A106291(A000040(n+1))`
-/

namespace A106292.P3637045743308542577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A000040 (n + 1)).toNat

end

end A106292.P3637045743308542577

/-! ## A106292.P1890765025556605578

`A106291(A216883(n+1))`
-/

namespace A106292.P1890765025556605578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A216883 (n + 1)).toNat

end

end A106292.P1890765025556605578

/-! ## A106292.P2611644804877386222

`A106291(A216884(n+1))`
-/

namespace A106292.P2611644804877386222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A216884 (n + 1)).toNat

end

end A106292.P2611644804877386222

/-! ## A106292.P2837531457853812134

`A106291(A216885(n+1))`
-/

namespace A106292.P2837531457853812134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A216885 (n + 1)).toNat

end

end A106292.P2837531457853812134

/-!
# A106293: Period of the Lucas 3-step sequence A001644 mod n.

The programs for A106293, there is no canonical definition to state claims against.
-/

/-! ## A106293.P18172150924863105106

`A046734(n+1)/A109014(A180001(n+1))`
-/

namespace A106293.P18172150924863105106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046734 (n + 1) : ℚ) / (A109014 (A180001 (n + 1)).toNat : ℚ)

end

end A106293.P18172150924863105106

/-! ## A106293.P6314791053312855605

`A046734(n+1)/A109014(A023545(n+1))`
-/

namespace A106293.P6314791053312855605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046734 (n + 1) : ℚ) / (A109014 (A023545 (n + 1)).toNat : ℚ)

end

end A106293.P6314791053312855605

/-! ## A106293.P8432924604325160452

`A046734(n+1)/A109014(A046738(3*(n+1)))`
-/

namespace A106293.P8432924604325160452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046734 (n + 1) : ℚ) / (A109014 (A046738 (3 * (n + 1))).toNat : ℚ)

end

end A106293.P8432924604325160452

/-! ## A106293.P18233495109318547232

`A046734(n+1)%A046836(A046726(n+1))`
-/

namespace A106293.P18233495109318547232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046734 (n + 1)) (A046836 (A046726 (n + 1)).toNat)

end

end A106293.P18233495109318547232

/-! ## A106293.P2760195217477669051

`A046734(n+1)/A109014(A075220(n+1))`
-/

namespace A106293.P2760195217477669051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046734 (n + 1) : ℚ) / (A109014 (A075220 (n + 1)).toNat : ℚ)

end

end A106293.P2760195217477669051

/-!
# A106294: Period of the Lucas 3-step sequence A001644 mod prime(n).

The programs for A106294, there is no canonical definition to state claims against.
-/

/-! ## A106294.P9783599186474511872

`A106293(Δ[A007504(n)])`
-/

namespace A106294.P9783599186474511872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106293 (f1 (n + 1) - f1 n).toNat

end

end A106294.P9783599186474511872

/-! ## A106294.P11061862222191857748

`A106293(A000040(n+1))`
-/

namespace A106294.P11061862222191857748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106293 (A000040 (n + 1)).toNat

end

end A106294.P11061862222191857748

/-! ## A106294.P2157694987869367643

`A106293(A006005(n+1))`
-/

namespace A106294.P2157694987869367643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106293 (A006005 (n + 1)).toNat

end

end A106294.P2157694987869367643

/-! ## A106294.P4925178061527944575

`A106293(A095320(n+1))`
-/

namespace A106294.P4925178061527944575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106293 (A095320 (n + 1)).toNat

end

end A106294.P4925178061527944575

/-! ## A106294.P4398382720977693641

`A106293(A176997(n+1))`
-/

namespace A106294.P4398382720977693641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106293 (A176997 (n + 1)).toNat

end

end A106294.P4398382720977693641

/-!
# A106295: Period of the Lucas 4-step sequence A073817 mod n.

The programs for A106295, there is no canonical definition to state claims against.
-/

/-! ## A106295.P6417587732615125476

`A351889(A141214(n)+7)`
-/

namespace A106295.P6417587732615125476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (A141214 n + 7).toNat

end

end A106295.P6417587732615125476

/-! ## A106295.P15352271298393148488

`A351889(A052905(n)+9)`
-/

namespace A106295.P15352271298393148488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (A052905 n + 9).toNat

end

end A106295.P15352271298393148488

/-! ## A106295.P17393859482009960240

`A351889(A055999(n)+10)`
-/

namespace A106295.P17393859482009960240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (A055999 n + 10).toNat

end

end A106295.P17393859482009960240

/-! ## A106295.P12744875257565008512

`A351889(A167614(n+2)+1)`
-/

namespace A106295.P12744875257565008512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (A167614 (n + 2) + 1).toNat

end

end A106295.P12744875257565008512

/-! ## A106295.P6203062581741617963

`A351889(A112355(n+1)+4)`
-/

namespace A106295.P6203062581741617963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351889 (A112355 (n + 1) + 4).toNat

end

end A106295.P6203062581741617963

/-!
# A106296: Period of the Lucas 4-step sequence A073817 mod prime(n).

The programs for A106296, there is no canonical definition to state claims against.
-/

/-! ## A106296.P17279816641617183576

`A106295(p?[a(n-1)+2])` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A106296.P17279816641617183576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106295 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A106296.P17279816641617183576

/-! ## A106296.P9069126131046402941

`A106295(Δ[A007504(n)])`
-/

namespace A106296.P9069126131046402941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106295 (f1 (n + 1) - f1 n).toNat

end

end A106296.P9069126131046402941

/-! ## A106296.P2733651172741178956

`A106295(A000040(n+1))`
-/

namespace A106296.P2733651172741178956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106295 (A000040 (n + 1)).toNat

end

end A106296.P2733651172741178956

/-! ## A106296.P2994374906159925817

`A106295(A049551(n+1))`
-/

namespace A106296.P2994374906159925817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106295 (A049551 (n + 1)).toNat

end

end A106296.P2994374906159925817

/-! ## A106296.P1195169636912223332

`A106295(A057448(n+1))`
-/

namespace A106296.P1195169636912223332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106295 (A057448 (n + 1)).toNat

end

end A106296.P1195169636912223332

/-!
# A106297: Period of the Lucas 5-step sequence A074048 mod n.

The programs for A106297, there is no canonical definition to state claims against.
-/

/-! ## A106297.P1787216256260755356

`A106303(gcd(n+1, ∑[n]))`
-/

namespace A106297.P1787216256260755356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106303 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A106297.P1787216256260755356

/-! ## A106297.P12253359107726572333

`A106303(lcm(2, (n+1)²)/(2*(n+1)))`
-/

namespace A106297.P12253359107726572333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106303 (SequenceMachineLib.roundAway ((Nat.lcm 2 ((n + 1) ^ 2) : ℚ) / (2 * (n + 1) : ℚ))).toNat

end

end A106297.P12253359107726572333

/-! ## A106297.P4865081149591215203

`A106303(lcm((n+1)/2^val(n+1, 2), (n+1)/∏{p}[n+1, #]))`
-/

namespace A106297.P4865081149591215203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106303 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))))

end

end A106297.P4865081149591215203

/-! ## A106297.P10710822622173597072

`A106303(Δ[A001318(n)])`
-/

namespace A106297.P10710822622173597072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106303 (f1 (n + 1) - f1 n).toNat

end

end A106297.P10710822622173597072

/-! ## A106297.P2752037355255487333

`A106303(A026741(n+1))`
-/

namespace A106297.P2752037355255487333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106303 (A026741 (n + 1)).toNat

end

end A106297.P2752037355255487333

/-!
# A106298: Period of the Lucas 5-step sequence A074048 mod prime(n).

The programs for A106298, there is no canonical definition to state claims against.
-/

/-! ## A106298.P12860502442654779212

`gcd(floor(acot(n)), A106304(n+1))`
-/

namespace A106298.P12860502442654779212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A106304 (n + 1))

end

end A106298.P12860502442654779212

/-! ## A106298.P11795761158668004171

`A106304(n%(a(n-1)-3)+1)` with `a(0)=1`
-/

namespace A106298.P11795761158668004171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106304 (Int.tmod (n : ℤ) (a (n - 1) - 3) + 1).toNat

end

end A106298.P11795761158668004171

/-! ## A106298.P4242384993797702776

`A106304(n*a((2*n)%2)+1)` with `a(0)=1`
-/

namespace A106298.P4242384993797702776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106304 ((n : ℤ) * a (2 * n % 2) + 1).toNat

end

end A106298.P4242384993797702776

/-! ## A106298.P8001856199365938417

`A106304(C(4, 7*a(floor(n/2)))+n+1)` with `a(0)=1`
-/

namespace A106298.P8001856199365938417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106304 (Nat.choose 4 (7 * a ⌊(n : ℚ) / 2⌋.toNat).toNat + n + 1)

end

end A106298.P8001856199365938417

/-! ## A106298.P6674813649527939938

`A106304(n+1)^A178334(n)`
-/

namespace A106298.P6674813649527939938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106304 (n + 1) : ℚ) ^ (A178334 n : ℤ)

end

end A106298.P6674813649527939938

/-! ## A106298.P17952796158507072499

`A106304(n+1)%A069071(n)`
-/

namespace A106298.P17952796158507072499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106304 (n + 1)) (A069071 n)

end

end A106298.P17952796158507072499

/-! ## A106298.P3898182421602382056

`gcd(A106304(n+1), A151933(n))`
-/

namespace A106298.P3898182421602382056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A106304 (n + 1)) (A151933 n)

end

end A106298.P3898182421602382056

/-! ## A106298.P1696574368265516885

`A106304(n+1)^(A000040(n+1)%2)`
-/

namespace A106298.P1696574368265516885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106304 (n + 1) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A106298.P1696574368265516885

/-! ## A106298.P7911985487007959460

`A106304(n+1)^log2(A000032(C(2, n+2)))`
-/

namespace A106298.P7911985487007959460
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A106304 (n + 1) : ℝ) ^ (Real.logb 2 (A000032 (Nat.choose 2 (n + 2)) : ℝ))

end

end A106298.P7911985487007959460

/-! ## A106298.P7318607253686210026

`a(A008683(4*(n+1)))*A106304(n+1)` with `a(0)=1`
-/

namespace A106298.P7318607253686210026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A008683 (4 * (n + 1))).toNat * A106304 (n + 1)

end

end A106298.P7318607253686210026

