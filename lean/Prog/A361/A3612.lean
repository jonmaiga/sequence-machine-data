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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A361200: Product of the left half (exclusive) of the multiset of prime factors of n; a(1) = 0.

The programs for A361200, there is no canonical definition to state claims against.
-/

/-! ## A361200.P2435716745098915986

`ceil(n/A347044(n+1))`
-/

namespace A361200.P2435716745098915986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A347044 (n + 1) : ℚ)⌉

end

end A361200.P2435716745098915986

/-! ## A361200.P7608094172220231025

`A087156(n+1)/A347044(n+1)`
-/

namespace A361200.P7608094172220231025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087156 (n + 1) : ℚ) / (A347044 (n + 1) : ℚ)

end

end A361200.P7608094172220231025

/-! ## A361200.P7835783736642023031

`A347043(A052126(n+1))%(n+1)`
-/

namespace A361200.P7835783736642023031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347043 (A052126 (n + 1)).toNat) (n + 1 : ℤ)

end

end A361200.P7835783736642023031

/-! ## A361200.P1427953443270057662

`(A057427(n)+n)/A347044(n+1)`
-/

namespace A361200.P1427953443270057662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057427 n + (n : ℤ) : ℚ) / (A347044 (n + 1) : ℚ)

end

end A361200.P1427953443270057662

/-! ## A361200.P7616598627865888270

`A347043(A052126(n+1))-A000007(n)`
-/

namespace A361200.P7616598627865888270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (A052126 (n + 1)).toNat - A000007 n

end

end A361200.P7616598627865888270

/-! ## A361200.P3026115279376563056

`A347043(A052126(n+1))+n-A028310(n)`
-/

namespace A361200.P3026115279376563056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (A052126 (n + 1)).toNat + ((n : ℤ) - A028310 n)

end

end A361200.P3026115279376563056

/-! ## A361200.P9549029687364979

`A347043(A052126(n+1))-A010051(2*(n+1))`
-/

namespace A361200.P9549029687364979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (A052126 (n + 1)).toNat - A010051 (2 * (n + 1))

end

end A361200.P9549029687364979

/-! ## A361200.P6332652817307307883

`round(n/A361201(2*(n+1)))`
-/

namespace A361200.P6332652817307307883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (A361201 (2 * (n + 1)) : ℚ))

end

end A361200.P6332652817307307883

/-!
# A361201: Product of the right half (exclusive) of the multiset of prime factors of n; a(1) = 0.

The programs for A361201, there is no canonical definition to state claims against.
-/

/-! ## A361201.P10079704954942034126

`ceil(n/A347043(n+1))`
-/

namespace A361201.P10079704954942034126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A347043 (n + 1) : ℚ)⌉

end

end A361201.P10079704954942034126

/-! ## A361201.P10916915887442125192

`A087156(n+1)/A347043(n+1)`
-/

namespace A361201.P10916915887442125192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087156 (n + 1) : ℚ) / (A347043 (n + 1) : ℚ)

end

end A361201.P10916915887442125192

/-! ## A361201.P4288313080323760966

`A347044(A032742(n+1))-A000007(n)`
-/

namespace A361201.P4288313080323760966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347044 (A032742 (n + 1)).toNat - A000007 n

end

end A361201.P4288313080323760966

/-! ## A361201.P11172576586322593197

`A057427(n)*A347044(A032742(n+1))`
-/

namespace A361201.P11172576586322593197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A347044 (A032742 (n + 1)).toNat

end

end A361201.P11172576586322593197

/-! ## A361201.P11897111304746648895

`A347044(A032742(n+1))%A360673(n)`
-/

namespace A361201.P11897111304746648895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347044 (A032742 (n + 1)).toNat) (A360673 n)

end

end A361201.P11897111304746648895

/-! ## A361201.P14062176444913570784

`A347044(A079880(n+1))%A360673(n)`
-/

namespace A361201.P14062176444913570784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347044 (A079880 (n + 1)).toNat) (A360673 n)

end

end A361201.P14062176444913570784

/-!
# A361202: Maximum product of the vertex arboricities of a graph of order n and its complement.

The programs for A361202, the canonical program `A361202.P9073302272958283294` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361202 has offset 1).

The definition of A361202 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361202.P9073302272958283294

`floor(((n+4)/2)²/4)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361202

/-- `floor(((n+4)/2)²/4)` -/
def P9073302272958283294.Spec : Prop :=
  ∀ n, P9073302272958283294.a n = A361202 (n + 1)

theorem P9073302272958283294.correct : P9073302272958283294.Spec := by
  intro n
  simp only [A361202, Nat.add_sub_cancel]

end A361202

/-! ## A361202.P18240300653759132746

`ogf((1-x+x^2)/(1-2x+x^2-x^8+2x^9-x^10))`
-/

namespace A361202.P18240300653759132746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1] [1, -2, 1, 0, 0, 0, 0, 0, -1, 2, -1] n

end

end A361202.P18240300653759132746

namespace A361202

/-- `ogf((1-x+x^2)/(1-2x+x^2-x^8+2x^9-x^10))` -/
def P18240300653759132746.Spec : Prop :=
  ∀ n, P18240300653759132746.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P2195865322726125808

`∑[ceil(xor(1, n)/8)]`
-/

namespace A361202.P2195865322726125808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 8⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361202.P2195865322726125808

namespace A361202

/-- `∑[ceil(xor(1, n)/8)]` -/
def P2195865322726125808.Spec : Prop :=
  ∀ n, P2195865322726125808.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P6016043108308248860

`ceil(∑[or(1, n)+3]/8)`
-/

namespace A361202.P6016043108308248860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 8⌉

end

end A361202.P6016043108308248860

namespace A361202

/-- `ceil(∑[or(1, n)+3]/8)` -/
def P6016043108308248860.Spec : Prop :=
  ∀ n, P6016043108308248860.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P2651792719489332793

`∑[log2(gcd(2, n))]+round((n/4)²)`
-/

namespace A361202.P2651792719489332793
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.roundAway (((n : ℚ) / 4) ^ 2) : ℝ)

end

end A361202.P2651792719489332793

namespace A361202

/-- `∑[log2(gcd(2, n))]+round((n/4)²)` -/
def P2651792719489332793.Spec : Prop :=
  ∀ n, P2651792719489332793.a n = (A361202 (n + 1) : ℝ)

end A361202

/-! ## A361202.P16188973217753206360

`round(∑[a(n-2)+1]/4)` with `a(0)=2, a(1)=2`
-/

namespace A361202.P16188973217753206360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4)

end

end A361202.P16188973217753206360

namespace A361202

/-- `round(∑[a(n-2)+1]/4)` -/
def P16188973217753206360.Spec : Prop :=
  ∀ n, P16188973217753206360.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P11426682401973274943

`ceil(record[a(n-2)+n]/4)` with `a(0)=2, a(1)=1, a(2)=0, a(3)=2`
-/

namespace A361202.P11426682401973274943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 0, 2] fun n f1 =>
  f1 (n - 2) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4⌉

end

end A361202.P11426682401973274943

namespace A361202

/-- `ceil(record[a(n-2)+n]/4)` -/
def P11426682401973274943.Spec : Prop :=
  ∀ n, P11426682401973274943.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P8172523217134644341

`ceil((∑[∑[(n+1)%2]]+n+1)/4)`
-/

namespace A361202.P8172523217134644341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) : ℕ) : ℚ) / 4⌉

end

end A361202.P8172523217134644341

namespace A361202

/-- `ceil((∑[∑[(n+1)%2]]+n+1)/4)` -/
def P8172523217134644341.Spec : Prop :=
  ∀ n, P8172523217134644341.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P13068386853203705791

`ceil((∑[∑[and(1, n+1)]]+1+n)/4)`
-/

namespace A361202.P13068386853203705791
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j + 1 + n : ℕ) : ℚ) / 4⌉

end

end A361202.P13068386853203705791

namespace A361202

/-- `ceil((∑[∑[and(1, n+1)]]+1+n)/4)` -/
def P13068386853203705791.Spec : Prop :=
  ∀ n, P13068386853203705791.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P12114592429521910026

`ceil(A004116(n+1)/4)`
-/

namespace A361202.P12114592429521910026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004116 (n + 1) : ℚ) / 4⌉

end

end A361202.P12114592429521910026

namespace A361202

/-- `ceil(A004116(n+1)/4)` -/
def P12114592429521910026.Spec : Prop :=
  ∀ n, P12114592429521910026.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P8913971566047442035

`A056822(n)+A008619(n)`
-/

namespace A361202.P8913971566047442035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056822 n + A008619 n

end

end A361202.P8913971566047442035

namespace A361202

/-- `A056822(n)+A008619(n)` -/
def P8913971566047442035.Spec : Prop :=
  ∀ n, P8913971566047442035.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P17607027040285728467

`A008726(n)-A110656(n)`
-/

namespace A361202.P17607027040285728467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 n - A110656 n

end

end A361202.P17607027040285728467

namespace A361202

/-- `A008726(n)-A110656(n)` -/
def P17607027040285728467.Spec : Prop :=
  ∀ n, P17607027040285728467.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P2228728815223007743

`A357745(n+1)-A168181(n)`
-/

namespace A361202.P2228728815223007743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357745 (n + 1) - A168181 n

end

end A361202.P2228728815223007743

namespace A361202

/-- `A357745(n+1)-A168181(n)` -/
def P2228728815223007743.Spec : Prop :=
  ∀ n, P2228728815223007743.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P12642506017605627732

`A001399(n)+A056822(n)-A069905(n)`
-/

namespace A361202.P12642506017605627732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 n + (A056822 n - A069905 n)

end

end A361202.P12642506017605627732

namespace A361202

/-- `A001399(n)+A056822(n)-A069905(n)` -/
def P12642506017605627732.Spec : Prop :=
  ∀ n, P12642506017605627732.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P4729372298354211185

`Δ[A175777(n+3)]`
-/

namespace A361202.P4729372298354211185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175777 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361202.P4729372298354211185

namespace A361202

/-- `Δ[A175777(n+3)]` -/
def P4729372298354211185.Spec : Prop :=
  ∀ n, P4729372298354211185.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P4924026947961105758

`A004526(A078529(n))+n`
-/

namespace A361202.P4924026947961105758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078529 n).toNat + (n : ℤ)

end

end A361202.P4924026947961105758

namespace A361202

/-- `A004526(A078529(n))+n` -/
def P4924026947961105758.Spec : Prop :=
  ∀ n, P4924026947961105758.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P10414295743706763561

`A004526(A001972(n+1))`
-/

namespace A361202.P10414295743706763561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001972 (n + 1)).toNat

end

end A361202.P10414295743706763561

namespace A361202

/-- `A004526(A001972(n+1))` -/
def P10414295743706763561.Spec : Prop :=
  ∀ n, P10414295743706763561.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P11795223926458728686

`A004526(A129895(n+2))`
-/

namespace A361202.P11795223926458728686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A129895 (n + 2)).toNat

end

end A361202.P11795223926458728686

namespace A361202

/-- `A004526(A129895(n+2))` -/
def P11795223926458728686.Spec : Prop :=
  ∀ n, P11795223926458728686.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P8733906073472615213

`A004526(A078529(n+8))`
-/

namespace A361202.P8733906073472615213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078529 (n + 8)).toNat

end

end A361202.P8733906073472615213

namespace A361202

/-- `A004526(A078529(n+8))` -/
def P8733906073472615213.Spec : Prop :=
  ∀ n, P8733906073472615213.a n = A361202 (n + 1)

end A361202

/-! ## A361202.P3067865104534031600

`A008619(A001971(n)+n)`
-/

namespace A361202.P3067865104534031600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001971 n + (n : ℤ)).toNat

end

end A361202.P3067865104534031600

namespace A361202

/-- `A008619(A001971(n)+n)` -/
def P3067865104534031600.Spec : Prop :=
  ∀ n, P3067865104534031600.a n = A361202 (n + 1)

end A361202

/-!
# A361203: a(n) = n*A010888(n).

The programs for A361203, the canonical program `A361203.P14572243746480269781` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361203 has offset 0).

The definition of A361203 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361203.P18099296492266342256

`n*(1+(n-1)%9)`
-/

namespace A361203.P18099296492266342256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 + Int.tmod ((n : ℤ) - 1) 9)

end

end A361203.P18099296492266342256

namespace A361203

/-- `n*(1+(n-1)%9)` -/
def P18099296492266342256.Spec : Prop :=
  ∀ n, P18099296492266342256.a n = A361203 n

end A361203

/-! ## A361203.P9044085863225980062

`n*(n-9*floor((n-1)/9))`
-/

namespace A361203.P9044085863225980062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋)

end

end A361203.P9044085863225980062

namespace A361203

/-- `n*(n-9*floor((n-1)/9))` -/
def P9044085863225980062.Spec : Prop :=
  ∀ n, P9044085863225980062.a n = A361203 n

end A361203

/-! ## A361203.P14572243746480269781

`n*A010888(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A361203

/-- `n*A010888(n)` -/
def P14572243746480269781.Spec : Prop :=
  ∀ n, P14572243746480269781.a n = A361203 n

theorem P14572243746480269781.correct : P14572243746480269781.Spec := by
  intro n
  simp only [A361203]

end A361203

/-! ## A361203.P15476095680041749099

`n*dr(n)`
-/

namespace A361203.P15476095680041749099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n : ℤ)

end

end A361203.P15476095680041749099

namespace A361203

/-- `n*dr(n)` -/
def P15476095680041749099.Spec : Prop :=
  ∀ n, (P15476095680041749099.a n : ℤ) = A361203 n

end A361203

/-! ## A361203.P4957698884838499701

`floor(dr(n)/acot(n))`
-/

namespace A361203.P4957698884838499701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.digitalRoot (n : ℤ) : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋

end

end A361203.P4957698884838499701

namespace A361203

/-- `floor(dr(n)/acot(n))` -/
def P4957698884838499701.Spec : Prop :=
  ∀ n, P4957698884838499701.a n = A361203 n

end A361203

/-! ## A361203.P13175372009299289960

`round(dr(n)/acot(n))`
-/

namespace A361203.P13175372009299289960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.digitalRoot (n : ℤ) : ℝ) / SequenceMachineLib.acot (n : ℝ))

end

end A361203.P13175372009299289960

namespace A361203

/-- `round(dr(n)/acot(n))` -/
def P13175372009299289960.Spec : Prop :=
  ∀ n, P13175372009299289960.a n = A361203 n

end A361203

/-!
# A361204: Positive integers k such that 2*omega(k) <= bigomega(k).

The programs for A361204, the canonical program `A361204.P7656448604655005906` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361204 has offset 1).

The definition of A361204 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1274 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361204.P7656448604655005906

`lt[A361205(n+1), 1]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361204

/-- `lt[A361205(n+1), 1]+1` -/
def P7656448604655005906.Spec : Prop :=
  ∀ n, (P7656448604655005906.a n : ℤ) = A361204 (n + 1)

theorem P7656448604655005906.correct : P7656448604655005906.Spec := by
  intro n
  simp only [A361204, Nat.add_sub_cancel]

end A361204

/-! ## A361204.P4615374599814295767

`lt[(2*n)²*∑{e}[n+1, 2-#], A160651(n)]+1`
-/

namespace A361204.P4615374599814295767
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) * (∑ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorization (f2 n) p : ℤ)))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A361204.P4615374599814295767

namespace A361204

/-- `lt[(2*n)²*∑{e}[n+1, 2-#], A160651(n)]+1` -/
def P4615374599814295767.Spec : Prop :=
  ∀ n, (P4615374599814295767.a n : ℤ) = A361204 (n + 1)

end A361204

/-! ## A361204.P17764479665343171973

`lt[A034444(n+1)-A351418(n+1), 1]+1`
-/

namespace A361204.P17764479665343171973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A351418 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A361204.P17764479665343171973

namespace A361204

/-- `lt[A034444(n+1)-A351418(n+1), 1]+1` -/
def P17764479665343171973.Spec : Prop :=
  ∀ n, (P17764479665343171973.a n : ℤ) = A361204 (n + 1)

theorem P17764479665343171973.correct : P17764479665343171973.Spec := by
  intro n
  simp only [A361204, Nat.add_sub_cancel, A361204.P17764479665343171973.f1, A361204.P17764479665343171973.f2, A361204.P17764479665343171973.a, A361204.P7656448604655005906.f1, A361204.P7656448604655005906.f2, A361204.P7656448604655005906.a, A034444, A034444.P6574915864346323298.a, A351418, A351418.P6131019699695405494.a, A361205, A361205.P11030865412041763722.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A361204

/-! ## A361204.P4403076579572716721

`lt[∑{e}[n, 2-#]*A049905(n+1), n]`
-/

namespace A361204.P4403076579572716721
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), (2 - (Nat.factorization (f2 n) p : ℤ))) * A049905 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A361204.P4403076579572716721

namespace A361204

/-- `lt[∑{e}[n, 2-#]*A049905(n+1), n]` -/
def P4403076579572716721.Spec : Prop :=
  ∀ n, (P4403076579572716721.a n : ℤ) = A361204 (n + 1)

end A361204

/-! ## A361204.P18037898514699296988

`∩[A005848(n+1), A339462(n+1)]`
-/

namespace A361204.P18037898514699296988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005848 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A361204.P18037898514699296988

namespace A361204

/-- `∩[A005848(n+1), A339462(n+1)]` -/
def P18037898514699296988.Spec : Prop :=
  ∀ n, (P18037898514699296988.a n : ℤ) = A361204 (n + 1)

end A361204

/-!
# A361205: a(n) = 2*omega(n) - bigomega(n).

The programs for A361205, the canonical program `A361205.P11030865412041763722` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361205 has offset 1).

The definition of A361205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*A001221(n+1)-A001222(n+1)` (program `A361205.P11030865412041763722`, by `A361205.P11030865412041763722.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361205.P11030865412041763722

`2*A001221(n+1)-A001222(n+1)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A361205

/-- `2*A001221(n+1)-A001222(n+1)` -/
def P11030865412041763722.Spec : Prop :=
  ∀ n, P11030865412041763722.a n = A361205 (n + 1)

theorem P11030865412041763722.correct : P11030865412041763722.Spec := by
  intro n
  simp only [A361205, Nat.add_sub_cancel]

end A361205

/-! ## A361205.P15660781563067308773

`∑{e}[n+1, 2-#]`
-/

namespace A361205.P15660781563067308773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.factorization (f1 n) p : ℤ))

end

end A361205.P15660781563067308773

namespace A361205

/-- `∑{e}[n+1, 2-#]` -/
def P15660781563067308773.Spec : Prop :=
  ∀ n, P15660781563067308773.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P16043403280768975140

`log2(∏{e}[n+1, 2^(2-#)])`
-/

namespace A361205.P16043403280768975140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), (2 : ℚ) ^ (2 - (Nat.factorization (f1 n) p : ℤ) : ℤ) : ℚ) : ℝ)

end

end A361205.P16043403280768975140

namespace A361205

/-- `log2(∏{e}[n+1, 2^(2-#)])` -/
def P16043403280768975140.Spec : Prop :=
  ∀ n, P16043403280768975140.a n = (A361205 (n + 1) : ℝ)

end A361205

/-! ## A361205.P599746229248511699

`∑{p}[n+1, 2-val(n+1, #)]`
-/

namespace A361205.P599746229248511699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (2 - (SequenceMachineLib.valuation (n + 1) p : ℤ))

end

end A361205.P599746229248511699

namespace A361205

/-- `∑{p}[n+1, 2-val(n+1, #)]` -/
def P599746229248511699.Spec : Prop :=
  ∀ n, P599746229248511699.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P16658356409665887202

`-∑{e}[2*n-(n-1), #-2]`
-/

namespace A361205.P16658356409665887202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 2))

end

end A361205.P16658356409665887202

namespace A361205

/-- `-∑{e}[2*n-(n-1), #-2]` -/
def P16658356409665887202.Spec : Prop :=
  ∀ n, P16658356409665887202.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P2700330197076253215

`log2(∏{e}[n+1, 2*(-1)^#]/∏{e}[n+1, (-2)^#/2])`
-/

namespace A361205.P2700330197076253215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((∏ p ∈ Nat.primeFactors (f1 n), 2 * (-1) ^ Nat.factorization (f1 n) p : ℤ) : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), ((-2) ^ Nat.factorization (f2 n) p : ℚ) / 2) : ℚ) : ℝ)

end

end A361205.P2700330197076253215

namespace A361205

/-- `log2(∏{e}[n+1, 2*(-1)^#]/∏{e}[n+1, (-2)^#/2])` -/
def P2700330197076253215.Spec : Prop :=
  ∀ n, P2700330197076253215.a n = (A361205 (n + 1) : ℝ)

end A361205

/-! ## A361205.P7934668300032755862

`∑{p}[n+1, gcd(n, #)]-A001222((n+1)/∏{p}[n+1, #])`
-/

namespace A361205.P7934668300032755862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) - A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A361205.P7934668300032755862

namespace A361205

/-- `∑{p}[n+1, gcd(n, #)]-A001222((n+1)/∏{p}[n+1, #])` -/
def P7934668300032755862.Spec : Prop :=
  ∀ n, P7934668300032755862.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P3831280085646366040

`A343938(A181819(n+1))`
-/

namespace A361205.P3831280085646366040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343938 (A181819 (n + 1)).toNat

end

end A361205.P3831280085646366040

namespace A361205

/-- `A343938(A181819(n+1))` -/
def P3831280085646366040.Spec : Prop :=
  ∀ n, P3831280085646366040.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P14624707957644323103

`A001221(n+1)-A046660(n+1)`
-/

namespace A361205.P14624707957644323103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A046660 (n + 1)

end

end A361205.P14624707957644323103

namespace A361205

/-- `A001221(n+1)-A046660(n+1)` -/
def P14624707957644323103.Spec : Prop :=
  ∀ n, P14624707957644323103.a n = A361205 (n + 1)

theorem P14624707957644323103.correct : P14624707957644323103.Spec := by
  intro n
  simp only [A361205, Nat.add_sub_cancel, A361205.P14624707957644323103.a, A361205.P11030865412041763722.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A046660, A046660.P3614759855976580945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361205

/-! ## A361205.P5121061689908040447

`A034444(n+1)-A351418(n+1)`
-/

namespace A361205.P5121061689908040447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A351418 (n + 1)

end

end A361205.P5121061689908040447

namespace A361205

/-- `A034444(n+1)-A351418(n+1)` -/
def P5121061689908040447.Spec : Prop :=
  ∀ n, P5121061689908040447.a n = A361205 (n + 1)

theorem P5121061689908040447.correct : P5121061689908040447.Spec := by
  intro n
  simp only [A361205, Nat.add_sub_cancel, A361205.P5121061689908040447.a, A361205.P11030865412041763722.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A034444, A034444.P6574915864346323298.a, A351418, A351418.P6131019699695405494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A361205

/-! ## A361205.P9595871489062708854

`A351414(n+1)-A048105(n+1)`
-/

namespace A361205.P9595871489062708854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351414 (n + 1) - A048105 (n + 1)

end

end A361205.P9595871489062708854

namespace A361205

/-- `A351414(n+1)-A048105(n+1)` -/
def P9595871489062708854.Spec : Prop :=
  ∀ n, P9595871489062708854.a n = A361205 (n + 1)

theorem P9595871489062708854.correct : P9595871489062708854.Spec := by
  intro n
  simp only [A361205, Nat.add_sub_cancel, A361205.P9595871489062708854.a, A361205.P11030865412041763722.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A048105, A048105.P14513846835403787716.a, A351414, A351414.P15953390987188253325.a, A000005, A000005.P16091521709108585461.a, A034444, A034444.P6574915864346323298.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A361205

/-! ## A361205.P9707264932563808902

`A238949(n+1)-A275812(n+1)`
-/

namespace A361205.P9707264932563808902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238949 (n + 1) - A275812 (n + 1)

end

end A361205.P9707264932563808902

namespace A361205

/-- `A238949(n+1)-A275812(n+1)` -/
def P9707264932563808902.Spec : Prop :=
  ∀ n, P9707264932563808902.a n = A361205 (n + 1)

theorem P9707264932563808902.correct : P9707264932563808902.Spec := by
  intro n
  simp only [A361205, Nat.add_sub_cancel, A361205.P9707264932563808902.a, A361205.P11030865412041763722.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A238949, A238949.P10522096884235985667.a, A275812, A275812.P13506188268199266465.a, A056169, A056169.P17430176249366647977.a, A056170, A056170.P910878729848546389.a, A055231, A055231.P8962300905713718501.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A071773, A071773.P10551485978970375506.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361205

/-! ## A361205.P6767194301204071790

`A001222(n+1)-2*A046660(n+1)`
-/

namespace A361205.P6767194301204071790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2 * A046660 (n + 1)

end

end A361205.P6767194301204071790

namespace A361205

/-- `A001222(n+1)-2*A046660(n+1)` -/
def P6767194301204071790.Spec : Prop :=
  ∀ n, P6767194301204071790.a n = A361205 (n + 1)

theorem P6767194301204071790.correct : P6767194301204071790.Spec := by
  intro n
  simp only [A361205, Nat.add_sub_cancel, A361205.P6767194301204071790.a, A361205.P11030865412041763722.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A046660, A046660.P3614759855976580945.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361205

/-! ## A361205.P15772346932139003567

`A001222(∏{p}[n+1, #])-A046660(n+1)`
-/

namespace A361205.P15772346932139003567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p) - A046660 (n + 1)

end

end A361205.P15772346932139003567

namespace A361205

/-- `A001222(∏{p}[n+1, #])-A046660(n+1)` -/
def P15772346932139003567.Spec : Prop :=
  ∀ n, P15772346932139003567.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P9570128043046622589

`A001221(n+1)-A001222(A003557(n+1))`
-/

namespace A361205.P9570128043046622589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001222 (A003557 (n + 1)).toNat

end

end A361205.P9570128043046622589

namespace A361205

/-- `A001221(n+1)-A001222(A003557(n+1))` -/
def P9570128043046622589.Spec : Prop :=
  ∀ n, P9570128043046622589.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P10958532050470143915

`A001414(A034444(n+1))-A001222(n+1)`
-/

namespace A361205.P10958532050470143915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A034444 (n + 1)).toNat - A001222 (n + 1)

end

end A361205.P10958532050470143915

namespace A361205

/-- `A001414(A034444(n+1))-A001222(n+1)` -/
def P10958532050470143915.Spec : Prop :=
  ∀ n, P10958532050470143915.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P28834045405708319

`A001221(n+1)-A001222(A162510(n+1))`
-/

namespace A361205.P28834045405708319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A001222 (A162510 (n + 1)).toNat

end

end A361205.P28834045405708319

namespace A361205

/-- `A001221(n+1)-A001222(A162510(n+1))` -/
def P28834045405708319.Spec : Prop :=
  ∀ n, P28834045405708319.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P12756539437468185712

`A001222(A007948(n+1))-A275812(n+1)`
-/

namespace A361205.P12756539437468185712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007948 (n + 1)).toNat - A275812 (n + 1)

end

end A361205.P12756539437468185712

namespace A361205

/-- `A001222(A007948(n+1))-A275812(n+1)` -/
def P12756539437468185712.Spec : Prop :=
  ∀ n, P12756539437468185712.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P4152854668530324143

`A001222(A034444(n+1)²)-A001222(n+1)`
-/

namespace A361205.P4152854668530324143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034444 (n + 1) ^ 2).toNat - A001222 (n + 1)

end

end A361205.P4152854668530324143

namespace A361205

/-- `A001222(A034444(n+1)²)-A001222(n+1)` -/
def P4152854668530324143.Spec : Prop :=
  ∀ n, P4152854668530324143.a n = A361205 (n + 1)

end A361205

/-! ## A361205.P17204428066560215513

`A001222(A061389(n+1)²)-A001222(n+1)`
-/

namespace A361205.P17204428066560215513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061389 (n + 1) ^ 2).toNat - A001222 (n + 1)

end

end A361205.P17204428066560215513

namespace A361205

/-- `A001222(A061389(n+1)²)-A001222(n+1)` -/
def P17204428066560215513.Spec : Prop :=
  ∀ n, P17204428066560215513.a n = A361205 (n + 1)

end A361205

/-!
# A361208: Number of middle divisors of the n-th number whose divisors increase by a factor of 2 or less.

The programs for A361208, there is no canonical definition to state claims against.
-/

/-! ## A361208.P12842005190408743794

`A067742(A174973(n+1))`
-/

namespace A361208.P12842005190408743794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (A174973 (n + 1)).toNat

end

end A361208.P12842005190408743794

/-! ## A361208.P2465112924453011115

`A067742(A047836(n+1)/2)`
-/

namespace A361208.P2465112924453011115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (SequenceMachineLib.roundAway ((A047836 (n + 1) : ℚ) / 2)).toNat

end

end A361208.P2465112924453011115

/-! ## A361208.P6658691058101613883

`A067742(eq[1, A237271(n+1)]+1)`
-/

namespace A361208.P6658691058101613883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A361208.P6658691058101613883

/-! ## A361208.P2334998564200647241

`A067742(∩[A005153(n+1), A071562(n+1)])`
-/

namespace A361208.P2334998564200647241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A361208.P2334998564200647241

/-! ## A361208.P16596534951817925723

`A067742(∩[A377929(n+1), A071562(n+1)])`
-/

namespace A361208.P16596534951817925723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067742 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A361208.P16596534951817925723

/-!
# A361209: Second hexagonal numbers having middle divisors.

The programs for A361209, there is no canonical definition to state claims against.
-/

/-! ## A361209.P8722421584157890410

`filter[A014105(n+1), A347950(#)]`
-/

namespace A361209.P8722421584157890410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P8722421584157890410

/-! ## A361209.P11486871644149683785

`filter[A089594(2*(n+1)), A347950(#)]`
-/

namespace A361209.P11486871644149683785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089594 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P11486871644149683785

/-! ## A361209.P2949283507430532802

`filter[A110345(2*(n+1)), A347950(#)]`
-/

namespace A361209.P2949283507430532802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110345 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P2949283507430532802

/-! ## A361209.P5928985016345340643

`filter[A114113(2*(n+1)), A347950(#)]`
-/

namespace A361209.P5928985016345340643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114113 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P5928985016345340643

/-! ## A361209.P7165951915037680229

`filter[A182455(2*n+1), A347950(#)]`
-/

namespace A361209.P7165951915037680229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182455 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P7165951915037680229

/-! ## A361209.P9208762217989898158

`filter[A253145(2*n+1), A347950(#)]`
-/

namespace A361209.P9208762217989898158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P9208762217989898158

/-! ## A361209.P15453445728683346484

`filter[A265724(2*n+1), A347950(#)]`
-/

namespace A361209.P15453445728683346484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265724 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P15453445728683346484

/-! ## A361209.P5869816824156239996

`filter[A266221(2*n+1), A347950(#)]`
-/

namespace A361209.P5869816824156239996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266221 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P5869816824156239996

/-! ## A361209.P3135247020746379388

`filter[A266617(2*n+1), A347950(#)]`
-/

namespace A361209.P3135247020746379388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266617 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P3135247020746379388

/-! ## A361209.P7109828313087752740

`filter[A266663(2*n+1), A347950(#)]`
-/

namespace A361209.P7109828313087752740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266663 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A361209.P7109828313087752740

/-!
# A361210: Number of labeled digraphs on [n] with exactly 1 in-node and exactly 1 out-node.

The programs for A361210, there is no canonical definition to state claims against.
-/

/-! ## A361210.P15515256576650831426

`n*A321653(floor(2^(n-1)))`
-/

namespace A361210.P15515256576650831426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A321653 ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

end

end A361210.P15515256576650831426

/-!
# A361212: E.g.f. satisfies A(x) = exp( 3*x*A(x) / (1-x) ).

The programs for A361212, there is no canonical definition to state claims against.
-/

/-! ## A361212.P1758430151632607825

`A361182(n)-A376099(n)`
-/

namespace A361212.P1758430151632607825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361182 n - A376099 n

end

end A361212.P1758430151632607825

/-! ## A361212.P16875851088302890172

`A376099(n+1)/(n+1)-A376099(n)`
-/

namespace A361212.P16875851088302890172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376099 (n + 1) : ℚ) / (n + 1 : ℚ) - (A376099 n : ℚ)

end

end A361212.P16875851088302890172

/-!
# A361213: E.g.f. satisfies A(x) = exp( 2*x*A(x) / (1+x) ).

The programs for A361213, there is no canonical definition to state claims against.
-/

/-! ## A361213.P14560322844450262414

`A328753(∑[∏{e}[n, #+1]]^floor((n+1)/ϕ))`
-/

namespace A361213.P14560322844450262414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328753 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) ^ (⌊(n + 1 : ℝ) / Real.goldenRatio⌋ : ℤ))).toNat

end

end A361213.P14560322844450262414

/-!
# A361217: Maximum number of ways in which a set of integer-sided rectangular pieces can tile an n X n square.

The programs for A361217, there is no canonical definition to state claims against.
-/

/-! ## A361217.P3907982268211414979

`A361216(∑[n+1])`
-/

namespace A361217.P3907982268211414979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361217.P3907982268211414979

/-!
# A361218: Maximum number of ways in which a set of integer-sided rectangular pieces can tile an n X 2 rectangle.

The programs for A361218, there is no canonical definition to state claims against.
-/

/-! ## A361218.P3275122082302888220

`A361216(∑[n]+2)`
-/

namespace A361218.P3275122082302888220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361216 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A361218.P3275122082302888220

/-! ## A361218.P11781705165312459531

`record[gcd(A361216(n+2), A361226(n))]`
-/

namespace A361218.P11781705165312459531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A361216 (n + 2)) (A361226 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361218.P11781705165312459531

/-! ## A361218.P10867845730025337516

`A361216(A133263(n))+A326531(n)`
-/

namespace A361218.P10867845730025337516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361216 (A133263 n).toNat + A326531 n

end

end A361218.P10867845730025337516

/-!
# A361219: Maximum number of ways in which a set of integer-sided rectangular pieces can tile an n X 3 rectangle.

The programs for A361219, there is no canonical definition to state claims against.
-/

/-! ## A361219.P8634130711833371252

`A361216(A246868(n)+3)`
-/

namespace A361219.P8634130711833371252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361216 (A246868 n + 3).toNat

end

end A361219.P8634130711833371252

/-! ## A361219.P5538968847125832948

`A361216(A130760(n)+A067026(n+1))`
-/

namespace A361219.P5538968847125832948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361216 (A130760 n + A067026 (n + 1)).toNat

end

end A361219.P5538968847125832948

/-!
# A361220: Maximum number of ways in which a set of integer-sided rectangular pieces can tile an n X 4 rectangle.

The programs for A361220, there is no canonical definition to state claims against.
-/

/-! ## A361220.P8688490302418734644

`A361216(A010350(n+3)+4)`
-/

namespace A361220.P8688490302418734644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361216 (A010350 (n + 3) + 4).toNat

end

end A361220.P8688490302418734644

/-!
# A361222: Maximum number of ways in which a set of integer-sided rectangular pieces can tile an n X n square, up to rotations and reflections.

The programs for A361222, there is no canonical definition to state claims against.
-/

/-! ## A361222.P8652420306796336495

`A361221(∑[n+1])`
-/

namespace A361222.P8652420306796336495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361221 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361222.P8652420306796336495

/-!
# A361223: Maximum number of inequivalent permutations of a partition of n, where two permutations are equivalent if they are reversals of each other.

The programs for A361223, there is no canonical definition to state claims against.
-/

/-! ## A361223.P2041161540990346676

`A195099(A000016(n))`
-/

namespace A361223.P2041161540990346676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195099 (A000016 n).toNat

end

end A361223.P2041161540990346676

/-! ## A361223.P127814673171084843

`A122921(A157966(n)+A000085(n))`
-/

namespace A361223.P127814673171084843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122921 (A157966 n + A000085 n).toNat

end

end A361223.P127814673171084843

/-! ## A361223.P7404176833435723290

`A000016(n)-A088194(A068033(n))`
-/

namespace A361223.P7404176833435723290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n - A088194 (A068033 n).toNat

end

end A361223.P7404176833435723290

/-! ## A361223.P17165724755272177226

`A000016(n)-A088194(A068040(n))`
-/

namespace A361223.P17165724755272177226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 n - A088194 (A068040 n).toNat

end

end A361223.P17165724755272177226

/-! ## A361223.P3397150124800417454

`A100719(A190591(n)+A000055(n+1))`
-/

namespace A361223.P3397150124800417454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100719 (A190591 n + A000055 (n + 1)).toNat

end

end A361223.P3397150124800417454

/-!
# A361224: Maximum number of ways in which a set of integer-sided rectangular pieces can tile an n X 2 rectangle, up to rotations and reflections.

The programs for A361224, there is no canonical definition to state claims against.
-/

/-! ## A361224.P9081802608809551411

`A001462(A097807(n)+A002003(n))`
-/

namespace A361224.P9081802608809551411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A097807 n + A002003 n).toNat

end

end A361224.P9081802608809551411

/-! ## A361224.P1137754615852609027

`A053562(n+3)-A124766(A000225(n))`
-/

namespace A361224.P1137754615852609027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053562 (n + 3) - A124766 (A000225 n).toNat

end

end A361224.P1137754615852609027

/-! ## A361224.P10104864997825269645

`A347862(n+4)+A318719(A283877(n))`
-/

namespace A361224.P10104864997825269645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347862 (n + 4) + A318719 (A283877 n).toNat

end

end A361224.P10104864997825269645

/-!
# A361225: Maximum number of ways in which a set of integer-sided rectangular pieces can tile an n X 3 rectangle, up to rotations and reflections.

The programs for A361225, there is no canonical definition to state claims against.
-/

/-! ## A361225.P11210020895212857382

`record[A361221(A093628(n))]`
-/

namespace A361225.P11210020895212857382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361221 (A093628 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361225.P11210020895212857382

/-!
# A361226: Square array T(n,k) = k*((1+2*n)*k - 1)/2; n>=0, k>=0, read by antidiagonals upwards.

The programs for A361226, the canonical program `A361226.P7781671185256553747` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361226 has offset 0).

The definition of A361226 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A361226.anchor (n : ℕ) : (A361226 n : ℚ) = ((SequenceMachineLib.triCol n : ℤ) * ((1 + 2 * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))) * (SequenceMachineLib.triCol n : ℤ) - 1) : ℚ) / 2` in `Proof.A361.A361226`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361226.P7781671185256553747

`col(n)*((1+2*(row(n)-col(n)))*col(n)-1)/2`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361226

/-- `col(n)*((1+2*(row(n)-col(n)))*col(n)-1)/2` -/
def P7781671185256553747.Spec : Prop :=
  ∀ n, P7781671185256553747.a n = (A361226 n : ℚ)

end A361226

/-! ## A361226.P9806622768199314781

`A004736(n+1)*A143844(n)-A112367(n)`
-/

namespace A361226.P9806622768199314781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A143844 n - A112367 n

end

end A361226.P9806622768199314781

namespace A361226

/-- `A004736(n+1)*A143844(n)-A112367(n)` -/
def P9806622768199314781.Spec : Prop :=
  ∀ n, P9806622768199314781.a n = A361226 n

end A361226

/-! ## A361226.P1268291421645433169

`A031179(A026300(n))%A120120(n+2)`
-/

namespace A361226.P1268291421645433169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031179 (A026300 n).toNat) (A120120 (n + 2))

end

end A361226.P1268291421645433169

namespace A361226

/-- `A031179(A026300(n))%A120120(n+2)` -/
def P1268291421645433169.Spec : Prop :=
  ∀ n, P1268291421645433169.a n = A361226 n

end A361226

/-! ## A361226.P14986950497513454279

`A026300(n)-A266591(A326531(3*n+4))`
-/

namespace A361226.P14986950497513454279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026300 n - A266591 (A326531 (3 * n + 4)).toNat

end

end A361226.P14986950497513454279

namespace A361226

/-- `A026300(n)-A266591(A326531(3*n+4))` -/
def P14986950497513454279.Spec : Prop :=
  ∀ n, P14986950497513454279.a n = A361226 n

end A361226

/-! ## A361226.P9483145606254772695

`A189372(A160232(n+1)%A048940(n+1))-A026300(n)`
-/

namespace A361226.P9483145606254772695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189372 (Int.tmod (A160232 (n + 1)) (A048940 (n + 1))).toNat - A026300 n

end

end A361226.P9483145606254772695

namespace A361226

/-- `A189372(A160232(n+1)%A048940(n+1))-A026300(n)` -/
def P9483145606254772695.Spec : Prop :=
  ∀ n, P9483145606254772695.a n = A361226 n

end A361226

/-!
# A361228: a(n) is the first number k such that k + a(i) has n prime factors, counted with multiplicity, for all i < n; a(0) = 0.

The programs for A361228, there is no canonical definition to state claims against.
-/

/-! ## A361228.P7323975478059623932

`n*A325250(A124098(n+1))`
-/

namespace A361228.P7323975478059623932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A325250 (A124098 (n + 1)).toNat

end

end A361228.P7323975478059623932

/-!
# A361230: Third Lie-Betti number of a path graph on n vertices.

The programs for A361230, the canonical program `A361230.P1081637021023311887` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361230 has offset 1).

The definition of A361230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361230.P1081637021023311887

`∑[∑[a(n-1)+1]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=7`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361230

/-- `∑[∑[a(n-1)+1]]` -/
def P1081637021023311887.Spec : Prop :=
  ∀ n, (P1081637021023311887.a n : ℤ) = A361230 (n + 1)

theorem P1081637021023311887.correct : P1081637021023311887.Spec := by
  intro n
  simp only [A361230, Nat.add_sub_cancel]

end A361230

/-! ## A361230.P12495558645441027394

`∑[∑[2*a(n-1)-a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=4, a(3)=5, a(4)=7, a(5)=8`
-/

namespace A361230.P12495558645441027394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 5, 7, 8] fun n f2 =>
  2 * f2 (n - 1) - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361230.P12495558645441027394

namespace A361230

/-- `∑[∑[2*a(n-1)-a(n-2)]]` -/
def P12495558645441027394.Spec : Prop :=
  ∀ n, P12495558645441027394.a n = A361230 (n + 1)

end A361230

/-! ## A361230.P2931413305855635852

`∑[∑[A257542(n+1)]-A257542(n+1)]`
-/

namespace A361230.P2931413305855635852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257542 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A257542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361230.P2931413305855635852

namespace A361230

/-- `∑[∑[A257542(n+1)]-A257542(n+1)]` -/
def P2931413305855635852.Spec : Prop :=
  ∀ n, P2931413305855635852.a n = A361230 (n + 1)

end A361230

/-! ## A361230.P13964224858637152444

`∑[∑[A072442(n)%A155200(n)]]`
-/

namespace A361230.P13964224858637152444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072442 n) (A155200 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361230.P13964224858637152444

namespace A361230

/-- `∑[∑[A072442(n)%A155200(n)]]` -/
def P13964224858637152444.Spec : Prop :=
  ∀ n, P13964224858637152444.a n = A361230 (n + 1)

end A361230

/-! ## A361230.P94348266614484590

`∑[∑[A029837(A154251(n))]]`
-/

namespace A361230.P94348266614484590
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A154251 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361230.P94348266614484590

namespace A361230

/-- `∑[∑[A029837(A154251(n))]]` -/
def P94348266614484590.Spec : Prop :=
  ∀ n, P94348266614484590.a n = A361230 (n + 1)

end A361230

/-!
# A361232: Numbers m such that the increasing sequence of divisors of m, regarded as words on the finite alphabet of its prime factors, is ordered lexicographically.

The programs for A361232, there is no canonical definition to state claims against.
-/

/-! ## A361232.P12844786891702955693

`comp[A289484(n+1)-1]+1`
-/

namespace A361232.P12844786891702955693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289484 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A361232.P12844786891702955693

/-! ## A361232.P13918291277325352417

`lt[A338639(n), A322483(A379727(n+1))]`
-/

namespace A361232.P13918291277325352417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (A379727 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361232.P13918291277325352417

/-! ## A361232.P5922483246374792368

`∪[A027855(n+1), A092598(n+1)]`
-/

namespace A361232.P5922483246374792368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092598 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A361232.P5922483246374792368

/-!
# A361233: Numbers k such that the "Pisano cycle modulo k shape" is bounded.

The programs for A361233, there is no canonical definition to state claims against.
-/

/-! ## A361233.P4481298363474932816

`lt[A167637(n), A093653(A027642(n))]`
-/

namespace A361233.P4481298363474932816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167637 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093653 (A027642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361233.P4481298363474932816

/-! ## A361233.P10976125893664750642

`lt[A171172(n+3), A138988(A141056(n))]`
-/

namespace A361233.P10976125893664750642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171172 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138988 (A141056 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361233.P10976125893664750642

/-! ## A361233.P4752345330324146463

`lt[A058716(A078898(3*n)), A027642(n)]`
-/

namespace A361233.P4752345330324146463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058716 (A078898 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361233.P4752345330324146463

/-! ## A361233.P1418507871441338504

`lt[A003987(2*(n+1)), A002191(A027642(n))]`
-/

namespace A361233.P1418507871441338504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (A027642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361233.P1418507871441338504

/-! ## A361233.P12669062744472006437

`lt[A274650(2*(n+1)), A045572(A027642(n))]`
-/

namespace A361233.P12669062744472006437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274650 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (A027642 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A361233.P12669062744472006437

/-!
# A361234: Infinite sequence of nonzero integers build the greedy way such that the products Product_{i = k*2^e..(k+1)*2^e} a(i) with k, e >= 0 are all distinct; each term is minimal in absolute value and in case of a tie, preference is given to the positive value.

The programs for A361234, there is no canonical definition to state claims against.
-/

/-! ## A361234.P1991955968663489135

`A001057(lt[A303770(3*n+4), A350947(n+1)])`
-/

namespace A361234.P1991955968663489135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303770 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361234.P1991955968663489135

/-! ## A361234.P296963450862830985

`A001057(lt[A175778(3*(n+1)), A087730(3*n)])`
-/

namespace A361234.P296963450862830985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175778 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087730 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361234.P296963450862830985

/-! ## A361234.P8988108006244395748

`A001057(lt[A325687(3*n+5), A037143(n+1)])`
-/

namespace A361234.P8988108006244395748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325687 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361234.P8988108006244395748

/-! ## A361234.P3604878696661007060

`A001057(lt[A325687(3*n+5), A054068(n+1)])`
-/

namespace A361234.P3604878696661007060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325687 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361234.P3604878696661007060

/-! ## A361234.P8367756876478828070

`A001057(A165413(C(n, n²)+2^n)+n+1)`
-/

namespace A361234.P8367756876478828070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A165413 (Nat.choose n (n ^ 2) + 2 ^ n) + (n : ℤ) + 1).toNat

end

end A361234.P8367756876478828070

/-!
# A361235: a(n) = number of k < n, such that k does not divide n, omega(k) < omega(n) and rad(k) | rad(n), where omega(n) = A001221(n) and rad(n) = A007947(n).

The programs for A361235, there is no canonical definition to state claims against.
-/

/-! ## A361235.P253733775085178888

`A243822(n+1)-A355432(n+1)`
-/

namespace A361235.P253733775085178888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243822 (n + 1) - A355432 (n + 1)

end

end A361235.P253733775085178888

/-! ## A361235.P11341467778995372777

`A010846(n+1)-A000005(n+1)-A355432(n+1)`
-/

namespace A361235.P11341467778995372777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A000005 (n + 1) - A355432 (n + 1)

end

end A361235.P11341467778995372777

/-! ## A361235.P3057783289517812808

`A045763(n+1)-A243823(n+1)-A355432(n+1)`
-/

namespace A361235.P3057783289517812808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (n + 1) - A243823 (n + 1) - A355432 (n + 1)

end

end A361235.P3057783289517812808

/-! ## A361235.P8141481705143700190

`A051953(n+1)-A000005(n+1)-A243823(n+1)-A355432(n+1)+1`
-/

namespace A361235.P8141481705143700190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A000005 (n + 1) - A243823 (n + 1) - A355432 (n + 1) + 1

end

end A361235.P8141481705143700190

/-! ## A361235.P13609618743445701977

`A365788(n+1)-A183093(n+1)`
-/

namespace A361235.P13609618743445701977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365788 (n + 1) - A183093 (n + 1)

end

end A361235.P13609618743445701977

/-! ## A361235.P2281561125189966883

`A005361(n+1)+A243822(n+1)-A008479(n+1)`
-/

namespace A361235.P2281561125189966883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) + (A243822 (n + 1) - A008479 (n + 1))

end

end A361235.P2281561125189966883

/-! ## A361235.P11128885555166895752

`A049820(n+1)-(A355432(n+1)+A010847(n+1))`
-/

namespace A361235.P11128885555166895752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - (A355432 (n + 1) + A010847 (n + 1))

end

end A361235.P11128885555166895752

/-! ## A361235.P7848750857704970062

`(A045763(n+1)-A300858(n+1))/2-A355432(n+1)`
-/

namespace A361235.P7848750857704970062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045763 (n + 1) - A300858 (n + 1) : ℚ) / 2 - (A355432 (n + 1) : ℚ)

end

end A361235.P7848750857704970062

/-! ## A361235.P18398107902808296686

`A010846(n+1)-A001227(A003961(n+1))-A355432(n+1)`
-/

namespace A361235.P18398107902808296686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (n + 1) - A001227 (A003961 (n + 1)).toNat - A355432 (n + 1)

end

end A361235.P18398107902808296686

/-! ## A361235.P16253548047167401678

`A355432(A064549(n+1))-A355432(n+1)`
-/

namespace A361235.P16253548047167401678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A064549 (n + 1)).toNat - A355432 (n + 1)

end

end A361235.P16253548047167401678

/-!
# A361237: Number of nonequivalent noncrossing triangular cacti with n triangles up to rotation.

The programs for A361237, there is no canonical definition to state claims against.
-/

/-! ## A361237.P8899104774976246814

`A361236(∑[n+3])`
-/

namespace A361237.P8899104774976246814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361237.P8899104774976246814

/-! ## A361237.P10018966067528655639

`C(A361236(A055998(n+1)), A178334(n))`
-/

namespace A361237.P10018966067528655639
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A361236 (A055998 (n + 1)).toNat).toNat (A178334 n).toNat

end

end A361237.P10018966067528655639

/-! ## A361237.P16329505042613307288

`A361236(A055998(n+1))+A019590(n+3)`
-/

namespace A361237.P16329505042613307288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 (A055998 (n + 1)).toNat + A019590 (n + 3)

end

end A361237.P16329505042613307288

/-! ## A361237.P415044203926516885

`A178334(n+2)*A361236(A055998(n+1))`
-/

namespace A361237.P415044203926516885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 (n + 2) * A361236 (A055998 (n + 1)).toNat

end

end A361237.P415044203926516885

/-! ## A361237.P4756114307052322999

`A361236(A055998(n+1))%A054369(n+3)`
-/

namespace A361237.P4756114307052322999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361236 (A055998 (n + 1)).toNat) (A054369 (n + 3))

end

end A361237.P4756114307052322999

/-!
# A361238: Number of nonequivalent noncrossing 4-gonal cacti with n polygons up to rotation.

The programs for A361238, there is no canonical definition to state claims against.
-/

/-! ## A361238.P14382195676929441570

`A361236(C(2*(n+2)-n, 2)+n)`
-/

namespace A361238.P14382195676929441570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 (Nat.choose ((2 * (n + 2) : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A361238.P14382195676929441570

/-! ## A361238.P12716258313158666352

`A361236(eq[4, A193739(n)])`
-/

namespace A361238.P12716258313158666352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361238.P12716258313158666352

/-! ## A361238.P15196454199013832357

`A361236(A052905(n+1)+1)`
-/

namespace A361238.P15196454199013832357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 (A052905 (n + 1) + 1).toNat

end

end A361238.P15196454199013832357

/-! ## A361238.P3889580726368326200

`A361236(eq[4, A004736(n+1)])`
-/

namespace A361238.P3889580726368326200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361238.P3889580726368326200

/-! ## A361238.P2957668324704244049

`A361236(lt[A116395(n+3), A360923(n)])`
-/

namespace A361238.P2957668324704244049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116395 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361236 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361238.P2957668324704244049

/-!
# A361240: Number of nonequivalent noncrossing triangular cacti with n triangles up to rotation and reflection.

The programs for A361240, there is no canonical definition to state claims against.
-/

/-! ## A361240.P17500349228044245215

`(A361237(n)+A143546(n))/2`
-/

namespace A361240.P17500349228044245215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361237 n + A143546 n : ℚ) / 2

end

end A361240.P17500349228044245215

/-! ## A361240.P4005256070762066789

`A361239(∑[n+3])`
-/

namespace A361240.P4005256070762066789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361239 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361240.P4005256070762066789

/-! ## A361240.P8662640566033795120

`A361239(A165157(2*(n+1)))%A207652(n+3)`
-/

namespace A361240.P8662640566033795120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A361239 (A165157 (2 * (n + 1))).toNat) (A207652 (n + 3))

end

end A361240.P8662640566033795120

/-! ## A361240.P12129384720726091954

`A361239(A165157(2*(n+1)))+A000007(2*n+1)`
-/

namespace A361240.P12129384720726091954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361239 (A165157 (2 * (n + 1))).toNat + A000007 (2 * n + 1)

end

end A361240.P12129384720726091954

/-!
# A361241: Number of nonequivalent noncrossing 4-gonal cacti with n polygons up to rotation and reflection.

The programs for A361241, there is no canonical definition to state claims against.
-/

/-! ## A361241.P15133408639714049349

`A361239(C(2*(n+2)-n, 2)+n)`
-/

namespace A361241.P15133408639714049349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361239 (Nat.choose ((2 * (n + 2) : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A361241.P15133408639714049349

/-! ## A361241.P3255029849197958870

`A361239(eq[4, A193739(n)])`
-/

namespace A361241.P3255029849197958870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361241.P3255029849197958870

/-! ## A361241.P7346385171362895435

`A361239(A052905(n+1)+1)`
-/

namespace A361241.P7346385171362895435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361239 (A052905 (n + 1) + 1).toNat

end

end A361241.P7346385171362895435

/-! ## A361241.P9498241478014498815

`A361239(eq[4, A004736(n+1)])`
-/

namespace A361241.P9498241478014498815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361241.P9498241478014498815

/-! ## A361241.P6956882038056430695

`A361239(lt[A116395(n+3), A004736(n+1)])`
-/

namespace A361241.P6956882038056430695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116395 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361239 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A361241.P6956882038056430695

/-!
# A361242: Number of nonequivalent noncrossing cacti with n nodes up to rotation.

The programs for A361242, there is no canonical definition to state claims against.
-/

/-! ## A361242.P11288984322397526587

`A342790(A004114(n))`
-/

namespace A361242.P11288984322397526587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342790 (A004114 n).toNat

end

end A361242.P11288984322397526587

/-! ## A361242.P17887101322323191470

`A317145(A101553(n))`
-/

namespace A361242.P17887101322323191470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317145 (A101553 n).toNat

end

end A361242.P17887101322323191470

/-! ## A361242.P3845347002118003792

`A350417(A082938(n))`
-/

namespace A361242.P3845347002118003792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350417 (A082938 n).toNat

end

end A361242.P3845347002118003792

/-!
# A361243: Number of nonequivalent noncrossing cacti with n nodes up to rotation and reflection.

The programs for A361243, there is no canonical definition to state claims against.
-/

/-! ## A361243.P11148704676577418530

`A179663(n)+A049310(A000984(n))`
-/

namespace A361243.P11148704676577418530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179663 n + A049310 (A000984 n).toNat

end

end A361243.P11148704676577418530

/-! ## A361243.P13623234494408299690

`A203852(n)+A049310(A000984(n))`
-/

namespace A361243.P13623234494408299690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203852 n + A049310 (A000984 n).toNat

end

end A361243.P13623234494408299690

/-! ## A361243.P2717110292684249410

`A316864(A337267(n))+A203852(n)`
-/

namespace A361243.P2717110292684249410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316864 (A337267 n).toNat + A203852 n

end

end A361243.P2717110292684249410

/-! ## A361243.P9771437390678682473

`A203852(n)+A113217(A119535(n+2))`
-/

namespace A361243.P9771437390678682473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203852 n + A113217 (A119535 (n + 2)).toNat

end

end A361243.P9771437390678682473

/-!
# A361245: Number of noncrossing 2,3 cacti with n nodes.

The programs for A361245, there is no canonical definition to state claims against.
-/

/-! ## A361245.P14948997869786977762

`n!+C(n, 6)^n!-∑[A054991(n+1)]`
-/

namespace A361245.P14948997869786977762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n + Nat.choose n 6 ^ Nat.factorial n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361245.P14948997869786977762

/-! ## A361245.P11908262973411991770

`A145545(A057820((n+1)!))`
-/

namespace A361245.P11908262973411991770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145545 (A057820 (Nat.factorial (n + 1))).toNat

end

end A361245.P11908262973411991770

/-! ## A361245.P6672453959653759881

`n!-A109129(A207386(n))`
-/

namespace A361245.P6672453959653759881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A109129 (A207386 n).toNat

end

end A361245.P6672453959653759881

/-!
# A361246: a(n) is the smallest integer k > 1 that satisfies k mod j <= 1 for all integers j in 1..n.

The programs for A361246, there is no canonical definition to state claims against.
-/

/-! ## A361246.P8515206920171310528

`A064219(n+1)+1`
-/

namespace A361246.P8515206920171310528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064219 (n + 1) + 1

end

end A361246.P8515206920171310528

/-! ## A361246.P14569393195834071681

`A020725(A064219(n+1))`
-/

namespace A361246.P14569393195834071681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A064219 (n + 1)).toNat

end

end A361246.P14569393195834071681

/-!
# A361247: a(n) is the smallest integer k > 2 that satisfies k mod j <= 2 for all integers j in 1..n.

The programs for A361247, there is no canonical definition to state claims against.
-/

/-! ## A361247.P16846383393092645109

`A056697(n+1)+1`
-/

namespace A361247.P16846383393092645109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056697 (n + 1) + 1

end

end A361247.P16846383393092645109

/-! ## A361247.P9751689842134024132

`A020725(A056697(n+1))`
-/

namespace A361247.P9751689842134024132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A056697 (n + 1)).toNat

end

end A361247.P9751689842134024132

/-! ## A361247.P5621372634890395659

`A220891(A250263(n))+1`
-/

namespace A361247.P5621372634890395659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220891 (A250263 n).toNat + 1

end

end A361247.P5621372634890395659

/-! ## A361247.P13174692364751698536

`A336063(A250263(n)^floor(n/3))+1`
-/

namespace A361247.P13174692364751698536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336063 (SequenceMachineLib.roundAway ((A250263 n : ℚ) ^ (⌊(n : ℚ) / 3⌋ : ℤ))).toNat + 1

end

end A361247.P13174692364751698536

/-!
# A361248: a(n) is the smallest integer k > 3 that satisfies k mod j <= 3 for all integers j in 1..n.

The programs for A361248, there is no canonical definition to state claims against.
-/

/-! ## A361248.P644209224885070014

`A152978(A022405(n+1)+1)+3`
-/

namespace A361248.P644209224885070014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152978 (A022405 (n + 1) + 1).toNat + 3

end

end A361248.P644209224885070014

/-! ## A361248.P11963122598341518989

`A108602(A356952(n)+A125008(n+1))`
-/

namespace A361248.P11963122598341518989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A356952 n + A125008 (n + 1)).toNat

end

end A361248.P11963122598341518989

/-! ## A361248.P7215438106102262708

`A334274(A189864(n+2)!)+A179414(n)`
-/

namespace A361248.P7215438106102262708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334274 (Nat.factorial (A189864 (n + 2)).toNat) + A179414 n

end

end A361248.P7215438106102262708

/-! ## A361248.P14277037245182845203

`A179414(n)*A211779(A189864(n+2)!+1)`
-/

namespace A361248.P14277037245182845203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179414 n * A211779 (Nat.factorial (A189864 (n + 2)).toNat + 1)

end

end A361248.P14277037245182845203

/-!
# A361249: Run length transform of A362415.

The programs for A361249, there is no canonical definition to state claims against.
-/

/-! ## A361249.P11495850952963020790

`A360616(A052396(n+1))+A196563(n)`
-/

namespace A361249.P11495850952963020790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360616 (A052396 (n + 1)).toNat + A196563 n

end

end A361249.P11495850952963020790

/-! ## A361249.P9906632052282559224

`A060130(A225632(n+1)+A034691(n))`
-/

namespace A361249.P9906632052282559224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (A225632 (n + 1) + A034691 n).toNat

end

end A361249.P9906632052282559224

/-! ## A361249.P8848594049458495989

`A000120(A203611(n)+A036483(n+3))`
-/

namespace A361249.P8848594049458495989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A203611 n + A036483 (n + 3)).toNat

end

end A361249.P8848594049458495989

/-! ## A361249.P8679757664389933689

`A160384(A379367(n+1))`
-/

namespace A361249.P8679757664389933689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 (A379367 (n + 1)).toNat

end

end A361249.P8679757664389933689

/-!
# A361251: Inverse permutation to A360371.

The programs for A361251, there is no canonical definition to state claims against.
-/

/-! ## A361251.P10523274795988078163

`A057027(A257340(n+1)%A100342(2*(n+2)))`
-/

namespace A361251.P10523274795988078163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057027 (Int.tmod (A257340 (n + 1)) (A100342 (2 * (n + 2)))).toNat

end

end A361251.P10523274795988078163

/-!
# A361252: Primes in A239237.

The programs for A361252, there is no canonical definition to state claims against.
-/

/-! ## A361252.P10025561642055794363

`p?[A239237(n+1)]`
-/

namespace A361252.P10025561642055794363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A361252.P10025561642055794363

/-! ## A361252.P6828314479227965601

`filter[A239237(n+1), A010051(#)]`
-/

namespace A361252.P6828314479227965601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A361252.P6828314479227965601

/-! ## A361252.P7965223360838410636

`filter[A239237(n+1), A069513(#)]`
-/

namespace A361252.P7965223360838410636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A361252.P7965223360838410636

/-! ## A361252.P2037196680207129760

`filter[A239237(n+1), A174897(#)]`
-/

namespace A361252.P2037196680207129760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A361252.P2037196680207129760

/-! ## A361252.P8824366325511969551

`filter[A239237(n+1), A302777(#)]`
-/

namespace A361252.P8824366325511969551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A361252.P8824366325511969551

/-!
# A361253: If n = m^2 for some m > 1 then a(n) = a(m), otherwise a(n) = n.

The programs for A361253, there is no canonical definition to state claims against.
-/

/-! ## A361253.P10284385685112657763

`A097448(sqrt(n^(2-char[n²])))`
-/

namespace A361253.P10284385685112657763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (SequenceMachineLib.roundAway (Real.sqrt ((n : ℚ) ^ (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ) : ℝ))).toNat

end

end A361253.P10284385685112657763

/-! ## A361253.P13532145880360063076

`A097448(sqrt(n)^(2/(char[n²]+1)))%comp[n²]`
-/

namespace A361253.P13532145880360063076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097448 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) ^ (2 / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) : ℝ))).toNat) (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A361253.P13532145880360063076

/-! ## A361253.P2369585675093341176

`gcd(n, A097448(A097448(n)))`
-/

namespace A361253.P2369585675093341176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A097448 (A097448 n).toNat)

end

end A361253.P2369585675093341176

/-! ## A361253.P6815792027709505736

`A037213(A097448(sqrt(n)^(2/(char[n²]+1)))²)`
-/

namespace A361253.P6815792027709505736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A097448 (SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) ^ (2 / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ) : ℝ))).toNat ^ 2).toNat

end

end A361253.P6815792027709505736

/-! ## A361253.P9216921454321918656

`A054977(n)*A097448(A097448(n))`
-/

namespace A361253.P9216921454321918656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A097448 (A097448 n).toNat

end

end A361253.P9216921454321918656

/-! ## A361253.P2117826050073206427

`A057427(n)*A097448(A097448(n))`
-/

namespace A361253.P2117826050073206427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A097448 (A097448 n).toNat

end

end A361253.P2117826050073206427

/-! ## A361253.P13204938971491573373

`A097448(A097448(n))+A000007(n+2)`
-/

namespace A361253.P13204938971491573373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A097448 n).toNat + A000007 (n + 2)

end

end A361253.P13204938971491573373

/-! ## A361253.P14033741704161402437

`A159075(n+2)+A097448(A097448(n))`
-/

namespace A361253.P14033741704161402437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 (n + 2) + A097448 (A097448 n).toNat

end

end A361253.P14033741704161402437

/-! ## A361253.P2403636001611434142

`A097448(A097448(n))+char[A250375(n+1)]`
-/

namespace A361253.P2403636001611434142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250375 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A097448 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A361253.P2403636001611434142

/-! ## A361253.P16303822911110059418

`A097448(A097448(n))+char[A086023(n+3)]`
-/

namespace A361253.P16303822911110059418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086023 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097448 (A097448 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A361253.P16303822911110059418

/-!
# A361254: Number of n-regular graphs on 2*n labeled nodes.

The programs for A361254, there is no canonical definition to state claims against.
-/

/-! ## A361254.P16052217278692346128

`A059441(2*n²+1)`
-/

namespace A361254.P16052217278692346128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059441 (2 * n ^ 2 + 1)

end

end A361254.P16052217278692346128

/-! ## A361254.P10495905703208439574

`A324163(A005408(n²))`
-/

namespace A361254.P10495905703208439574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (A005408 (n ^ 2)).toNat

end

end A361254.P10495905703208439574

/-! ## A361254.P14784679112208800655

`A324163(A001105(n)+1)`
-/

namespace A361254.P14784679112208800655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (A001105 n + 1).toNat

end

end A361254.P14784679112208800655

/-! ## A361254.P2863583953610841880

`A324163(A084849(n)-n)`
-/

namespace A361254.P2863583953610841880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (A084849 n - (n : ℤ)).toNat

end

end A361254.P2863583953610841880

/-! ## A361254.P7240635939133933653

`A324163(A054556(n+1)-A000384(n))`
-/

namespace A361254.P7240635939133933653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324163 (A054556 (n + 1) - A000384 n).toNat

end

end A361254.P7240635939133933653

/-!
# A361257: a(n) = Sum_{j=0..n} n^wt(j), where wt = A000120.

The programs for A361257, there is no canonical definition to state claims against.
-/

/-! ## A361257.P14377908384083430235

`A256141(∑[4*n])`
-/

namespace A361257.P14377908384083430235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256141 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361257.P14377908384083430235

/-! ## A361257.P35119299339430582

`record[A256141(n*(floor(n/(xor(n, n+1)+1))+1))]`
-/

namespace A361257.P35119299339430582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256141 ((n : ℤ) * (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361257.P35119299339430582

/-! ## A361257.P15575318507878348814

`A333766(A000516(n+2))+A290828(n)`
-/

namespace A361257.P15575318507878348814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 (A000516 (n + 2)).toNat + A290828 n

end

end A361257.P15575318507878348814

/-!
# A361261: Array of Ramsey core number rc(s,t) read by antidiagonals.

The programs for A361261, there is no canonical definition to state claims against.
-/

/-! ## A361261.P16399212051704239315

`A000194(A130154(n+1))+comp[C(n, 2)]-(n+1)`
-/

namespace A361261.P16399212051704239315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A130154 (n + 1)).toNat + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))

end

end A361261.P16399212051704239315

/-! ## A361261.P4591405360711440249

`A002024(n+1)+A002024(A077028(n))`
-/

namespace A361261.P4591405360711440249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A002024 (A077028 n).toNat

end

end A361261.P4591405360711440249

/-! ## A361261.P14481534614907324427

`A003056(n)+A123578(A077028(n))+1`
-/

namespace A361261.P14481534614907324427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A123578 (A077028 n).toNat + 1)

end

end A361261.P14481534614907324427

/-! ## A361261.P3218816983901742704

`A123578(n+1)+A123578(A077028(n))`
-/

namespace A361261.P3218816983901742704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1) + A123578 (A077028 n).toNat

end

end A361261.P3218816983901742704

/-! ## A361261.P15669985741318865019

`A003057(n+2)+A003056(A004247(n))`
-/

namespace A361261.P15669985741318865019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) + A003056 (A004247 n).toNat

end

end A361261.P15669985741318865019

/-! ## A361261.P17111969394292918855

`A002024(n+1)+A002024(A004247(n)+1)`
-/

namespace A361261.P17111969394292918855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A002024 (A004247 n + 1).toNat

end

end A361261.P17111969394292918855

/-! ## A361261.P18132644997551031386

`A002024(n+1)+A000194(A130154(n+1))`
-/

namespace A361261.P18132644997551031386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A000194 (A130154 (n + 1)).toNat

end

end A361261.P18132644997551031386

/-! ## A361261.P1015176282581978598

`A000194(A130154(n+1))+A000194(2*(n+1))`
-/

namespace A361261.P1015176282581978598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A130154 (n + 1)).toNat + A000194 (2 * (n + 1))

end

end A361261.P1015176282581978598

/-!
# A361263: Numbers of the form k*(k^5 +- 1)/2.

The programs for A361263, the canonical program `A361263.P3870735733709372971` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361263 has offset 1).

The definition of A361263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361263.P3870735733709372971

`ogf((x+30x^2-4x^3+150x^4+6x^5+150x^6-4x^7+30x^8+x^9)/(1-x-6x^2+6x^3+15x^4-15x^5-20x^6+20x^7+15x^8-15x^9-6x^10+6x^11+x^12-x^13))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361263

/-- `ogf((x+30x^2-4x^3+150x^4+6x^5+150x^6-4x^7+30x^8+x^9)/(1-x-6x^2+6x^3+15x^4-15x^5-20x^6+20x^7+15x^8-15x^9-6x^10+6x^11+x^12-x^13))` -/
def P3870735733709372971.Spec : Prop :=
  ∀ n, P3870735733709372971.a n = A361263 (n + 1)

theorem P3870735733709372971.correct : P3870735733709372971.Spec := by
  intro n
  simp only [A361263, Nat.add_sub_cancel]

end A361263

/-! ## A361263.P2080480864368372243

`A168122(A008619(n))-A008795(n)`
-/

namespace A361263.P2080480864368372243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 (A008619 n).toNat - A008795 n

end

end A361263.P2080480864368372243

namespace A361263

/-- `A168122(A008619(n))-A008795(n)` -/
def P2080480864368372243.Spec : Prop :=
  ∀ n, P2080480864368372243.a n = A361263 (n + 1)

end A361263

/-!
# A361264: Multiplicative with a(p^e) = p^(e + 2), e > 0.

The programs for A361264, the canonical program `A361264.P6755303600206869457` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361264 has offset 1).

The definition of A361264 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361264.P8422598531295306697

`(n+1)*A007947(n+1)²`
-/

namespace A361264.P8422598531295306697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1) ^ 2

end

end A361264.P8422598531295306697

namespace A361264

/-- `(n+1)*A007947(n+1)²` -/
def P8422598531295306697.Spec : Prop :=
  ∀ n, P8422598531295306697.a n = A361264 (n + 1)

theorem P8422598531295306697.correct : P8422598531295306697.Spec := by
  intro n
  simp only [A361264, Nat.add_sub_cancel, A361264.P8422598531295306697.a, A361264.P6755303600206869457.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361264

/-! ## A361264.P6755303600206869457

`A064549(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A361264

/-- `A064549(n+1)*A007947(n+1)` -/
def P6755303600206869457.Spec : Prop :=
  ∀ n, P6755303600206869457.a n = A361264 (n + 1)

theorem P6755303600206869457.correct : P6755303600206869457.Spec := by
  intro n
  simp only [A361264, Nat.add_sub_cancel]

end A361264

/-! ## A361264.P3791648682223766189

`A064549(A064549(n+1))`
-/

namespace A361264.P3791648682223766189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A064549 (n + 1)).toNat

end

end A361264.P3791648682223766189

namespace A361264

/-- `A064549(A064549(n+1))` -/
def P3791648682223766189.Spec : Prop :=
  ∀ n, P3791648682223766189.a n = A361264 (n + 1)

end A361264

/-! ## A361264.P8380000045388866477

`(n+1)*∏{p}[n+1, #²]`
-/

namespace A361264.P8380000045388866477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2)

end

end A361264.P8380000045388866477

namespace A361264

/-- `(n+1)*∏{p}[n+1, #²]` -/
def P8380000045388866477.Spec : Prop :=
  ∀ n, (P8380000045388866477.a n : ℤ) = A361264 (n + 1)

end A361264

/-! ## A361264.P12283775977078106116

`(n+1)/(1/∏{p}[n+1, #])²`
-/

namespace A361264.P12283775977078106116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (1 / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2

end

end A361264.P12283775977078106116

namespace A361264

/-- `(n+1)/(1/∏{p}[n+1, #])²` -/
def P12283775977078106116.Spec : Prop :=
  ∀ n, P12283775977078106116.a n = (A361264 (n + 1) : ℚ)

end A361264

/-! ## A361264.P14491439992538777865

`(n+1)/∏{p}[n+1, #^-2]`
-/

namespace A361264.P14491439992538777865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (-2 : ℤ))

end

end A361264.P14491439992538777865

namespace A361264

/-- `(n+1)/∏{p}[n+1, #^-2]` -/
def P14491439992538777865.Spec : Prop :=
  ∀ n, P14491439992538777865.a n = (A361264 (n + 1) : ℚ)

end A361264

/-! ## A361264.P8290878465027423280

`(n+1)*sqrt(∏{p}[n+1, #^4])`
-/

namespace A361264.P8290878465027423280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), p ^ 4 : ℕ) : ℝ)

end

end A361264.P8290878465027423280

namespace A361264

/-- `(n+1)*sqrt(∏{p}[n+1, #^4])` -/
def P8290878465027423280.Spec : Prop :=
  ∀ n, P8290878465027423280.a n = (A361264 (n + 1) : ℝ)

end A361264

/-! ## A361264.P6160030502473864785

`abs((n+1)*∏{p}[n+1, #]*∏{p}[n+1, -#])`
-/

namespace A361264.P6160030502473864785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) * (∏ p ∈ Nat.primeFactors (f2 n), (-(p : ℤ)))|

end

end A361264.P6160030502473864785

namespace A361264

/-- `abs((n+1)*∏{p}[n+1, #]*∏{p}[n+1, -#])` -/
def P6160030502473864785.Spec : Prop :=
  ∀ n, P6160030502473864785.a n = A361264 (n + 1)

end A361264

/-! ## A361264.P9075094709990705210

`(n+1)*A078615(n+1)`
-/

namespace A361264.P9075094709990705210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A078615 (n + 1)

end

end A361264.P9075094709990705210

namespace A361264

/-- `(n+1)*A078615(n+1)` -/
def P9075094709990705210.Spec : Prop :=
  ∀ n, P9075094709990705210.a n = A361264 (n + 1)

theorem P9075094709990705210.correct : P9075094709990705210.Spec := by
  intro n
  simp only [A361264, Nat.add_sub_cancel, A361264.P9075094709990705210.a, A361264.P6755303600206869457.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, A078615, A078615.P3889666147541299354.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361264

/-! ## A361264.P3070533703020540866

`(n+1)*A062953(n+1)²`
-/

namespace A361264.P3070533703020540866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A062953 (n + 1) ^ 2

end

end A361264.P3070533703020540866

namespace A361264

/-- `(n+1)*A062953(n+1)²` -/
def P3070533703020540866.Spec : Prop :=
  ∀ n, P3070533703020540866.a n = A361264 (n + 1)

end A361264

/-! ## A361264.P14074620737907338607

`A064549(n+1)²/(n+1)`
-/

namespace A361264.P14074620737907338607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A361264.P14074620737907338607

namespace A361264

/-- `A064549(n+1)²/(n+1)` -/
def P14074620737907338607.Spec : Prop :=
  ∀ n, P14074620737907338607.a n = (A361264 (n + 1) : ℚ)

end A361264

/-! ## A361264.P2934101019691805956

`A053143(n+1)*A066990(n+1)`
-/

namespace A361264.P2934101019691805956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053143 (n + 1) * A066990 (n + 1)

end

end A361264.P2934101019691805956

namespace A361264

/-- `A053143(n+1)*A066990(n+1)` -/
def P2934101019691805956.Spec : Prop :=
  ∀ n, P2934101019691805956.a n = A361264 (n + 1)

end A361264

/-! ## A361264.P12397210052876774893

`A007948(n+1)*A197863(n+1)`
-/

namespace A361264.P12397210052876774893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) * A197863 (n + 1)

end

end A361264.P12397210052876774893

namespace A361264

/-- `A007948(n+1)*A197863(n+1)` -/
def P12397210052876774893.Spec : Prop :=
  ∀ n, P12397210052876774893.a n = A361264 (n + 1)

end A361264

/-! ## A361264.P2175809176666762368

`A355038(n+1)/A003557(n+1)`
-/

namespace A361264.P2175809176666762368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355038 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A361264.P2175809176666762368

namespace A361264

/-- `A355038(n+1)/A003557(n+1)` -/
def P2175809176666762368.Spec : Prop :=
  ∀ n, P2175809176666762368.a n = (A361264 (n + 1) : ℚ)

end A361264

/-! ## A361264.P11217366134859575158

`A361268(n+1)/A005361(n+1)`
-/

namespace A361264.P11217366134859575158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361268 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ)

end

end A361264.P11217366134859575158

namespace A361264

/-- `A361268(n+1)/A005361(n+1)` -/
def P11217366134859575158.Spec : Prop :=
  ∀ n, P11217366134859575158.a n = (A361264 (n + 1) : ℚ)

end A361264

/-! ## A361264.P14696445076804589148

`A361266(n+1)/A007947(n+1)`
-/

namespace A361264.P14696445076804589148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361266 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A361264.P14696445076804589148

namespace A361264

/-- `A361266(n+1)/A007947(n+1)` -/
def P14696445076804589148.Spec : Prop :=
  ∀ n, P14696445076804589148.a n = (A361264 (n + 1) : ℚ)

end A361264

/-! ## A361264.P5608970093169640895

`A019554(n+1)²*A066990(n+1)`
-/

namespace A361264.P5608970093169640895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1) ^ 2 * A066990 (n + 1)

end

end A361264.P5608970093169640895

namespace A361264

/-- `A019554(n+1)²*A066990(n+1)` -/
def P5608970093169640895.Spec : Prop :=
  ∀ n, P5608970093169640895.a n = A361264 (n + 1)

end A361264

/-! ## A361264.P15902120301665926825

`(n+1)*A053166(A053166(n+1))²`
-/

namespace A361264.P15902120301665926825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053166 (A053166 (n + 1)).toNat ^ 2

end

end A361264.P15902120301665926825

namespace A361264

/-- `(n+1)*A053166(A053166(n+1))²` -/
def P15902120301665926825.Spec : Prop :=
  ∀ n, P15902120301665926825.a n = A361264 (n + 1)

end A361264

/-! ## A361264.P9070200065559264761

`(A078310(n+1)-1)*A007947(n+1)`
-/

namespace A361264.P9070200065559264761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078310 (n + 1) - 1) * A007947 (n + 1)

end

end A361264.P9070200065559264761

namespace A361264

/-- `(A078310(n+1)-1)*A007947(n+1)` -/
def P9070200065559264761.Spec : Prop :=
  ∀ n, P9070200065559264761.a n = A361264 (n + 1)

theorem P9070200065559264761.correct : P9070200065559264761.Spec := by
  intro n
  simp only [A361264, Nat.add_sub_cancel, A361264.P9070200065559264761.a, A361264.P6755303600206869457.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, A078310, A078310.P14219530768046252322.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361264

/-! ## A361264.P3846669620470115177

`A003557(n+1)*A361268(A007947(n+1))`
-/

namespace A361264.P3846669620470115177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A361268 (A007947 (n + 1)).toNat

end

end A361264.P3846669620470115177

namespace A361264

/-- `A003557(n+1)*A361268(A007947(n+1))` -/
def P3846669620470115177.Spec : Prop :=
  ∀ n, P3846669620470115177.a n = A361264 (n + 1)

end A361264

/-!
# A361265: Multiplicative with a(p^e) = e * p^(e + 1), e > 0.

The programs for A361265, the canonical program `A361265.P11907308521798501536` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361265 has offset 1).

The definition of A361265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361265.P11907308521798501536

`A005361(n+1)*A064549(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A361265

/-- `A005361(n+1)*A064549(n+1)` -/
def P11907308521798501536.Spec : Prop :=
  ∀ n, P11907308521798501536.a n = A361265 (n + 1)

theorem P11907308521798501536.correct : P11907308521798501536.Spec := by
  intro n
  simp only [A361265, Nat.add_sub_cancel]

end A361265

/-! ## A361265.P15767159128264537427

`(n+1)*∏{p}[n+1, #*val(n+1, #)]`
-/

namespace A361265.P15767159128264537427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A361265.P15767159128264537427

namespace A361265

/-- `(n+1)*∏{p}[n+1, #*val(n+1, #)]` -/
def P15767159128264537427.Spec : Prop :=
  ∀ n, (P15767159128264537427.a n : ℤ) = A361265 (n + 1)

end A361265

/-! ## A361265.P16272678341615198493

`(n+1)*∏{p}[n+1, #]*∏{e}[n+1, #]`
-/

namespace A361265.P16272678341615198493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A361265.P16272678341615198493

namespace A361265

/-- `(n+1)*∏{p}[n+1, #]*∏{e}[n+1, #]` -/
def P16272678341615198493.Spec : Prop :=
  ∀ n, (P16272678341615198493.a n : ℤ) = A361265 (n + 1)

end A361265

/-! ## A361265.P17514977229693481831

`(n+1)*∏{p}[n+1, #]*exp(∑{e}[n+1, log(#)])`
-/

namespace A361265.P17514977229693481831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℝ) * Real.exp (∑ p ∈ Nat.primeFactors (f2 n), Real.log (Nat.factorization (f2 n) p : ℝ))

end

end A361265.P17514977229693481831

namespace A361265

/-- `(n+1)*∏{p}[n+1, #]*exp(∑{e}[n+1, log(#)])` -/
def P17514977229693481831.Spec : Prop :=
  ∀ n, P17514977229693481831.a n = (A361265 (n + 1) : ℝ)

end A361265

/-! ## A361265.P11801880745870578177

`(n+1)*2^∑{p}[n+1, log2(#)]*∏{e}[n+1, #]`
-/

namespace A361265.P11801880745870578177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℝ)

end

end A361265.P11801880745870578177

namespace A361265

/-- `(n+1)*2^∑{p}[n+1, log2(#)]*∏{e}[n+1, #]` -/
def P11801880745870578177.Spec : Prop :=
  ∀ n, P11801880745870578177.a n = (A361265 (n + 1) : ℝ)

end A361265

/-! ## A361265.P18035564236908990906

`(n+1)*2^∑{p}[n+1, log2(#)]*2^∑{e}[n+1, log2(#)]`
-/

namespace A361265.P18035564236908990906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (p : ℝ)) * (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f2 n), Real.logb 2 (Nat.factorization (f2 n) p : ℝ))

end

end A361265.P18035564236908990906

namespace A361265

/-- `(n+1)*2^∑{p}[n+1, log2(#)]*2^∑{e}[n+1, log2(#)]` -/
def P18035564236908990906.Spec : Prop :=
  ∀ n, P18035564236908990906.a n = (A361265 (n + 1) : ℝ)

end A361265

/-! ## A361265.P12883873023981800698

`(n+1)*A000026(n+1)`
-/

namespace A361265.P12883873023981800698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000026 (n + 1)

end

end A361265.P12883873023981800698

namespace A361265

/-- `(n+1)*A000026(n+1)` -/
def P12883873023981800698.Spec : Prop :=
  ∀ n, P12883873023981800698.a n = A361265 (n + 1)

theorem P12883873023981800698.correct : P12883873023981800698.Spec := by
  intro n
  simp only [A361265, Nat.add_sub_cancel, A361265.P12883873023981800698.a, A361265.P11907308521798501536.a, A000026, A000026.P14646158085172730513.a, A005361, A005361.P7238185687981551187.a, A064549, A064549.P18019400484953624932.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361265

/-! ## A361265.P5909297022514049705

`(n+1)*∏{p}[n+1, #]*A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A361265.P5909297022514049705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A361265.P5909297022514049705

namespace A361265

/-- `(n+1)*∏{p}[n+1, #]*A000005((n+1)/∏{p}[n+1, #])` -/
def P5909297022514049705.Spec : Prop :=
  ∀ n, P5909297022514049705.a n = A361265 (n + 1)

theorem P5909297022514049705.correct : P5909297022514049705.Spec := by
  intro n
  simp only [A361265, Nat.add_sub_cancel, A361265.P5909297022514049705.f1, A361265.P5909297022514049705.f2, A361265.P5909297022514049705.a, A361265.P11907308521798501536.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P7238185687981551187.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361265

/-! ## A361265.P13968061762574376096

`A078615(n+1)*A203639(n+1)`
-/

namespace A361265.P13968061762574376096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1) * A203639 (n + 1)

end

end A361265.P13968061762574376096

namespace A361265

/-- `A078615(n+1)*A203639(n+1)` -/
def P13968061762574376096.Spec : Prop :=
  ∀ n, P13968061762574376096.a n = A361265 (n + 1)

end A361265

/-! ## A361265.P3427800223345359310

`A361268(n+1)/A007947(n+1)`
-/

namespace A361265.P3427800223345359310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361268 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A361265.P3427800223345359310

namespace A361265

/-- `A361268(n+1)/A007947(n+1)` -/
def P3427800223345359310.Spec : Prop :=
  ∀ n, P3427800223345359310.a n = (A361265 (n + 1) : ℚ)

end A361265

/-! ## A361265.P14149215764001428314

`A007947(n+1)²*A203639(n+1)`
-/

namespace A361265.P14149215764001428314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) ^ 2 * A203639 (n + 1)

end

end A361265.P14149215764001428314

namespace A361265

/-- `A007947(n+1)²*A203639(n+1)` -/
def P14149215764001428314.Spec : Prop :=
  ∀ n, P14149215764001428314.a n = A361265 (n + 1)

end A361265

/-! ## A361265.P544788698056363162

`(A078310(n+1)-1)*A005361(n+1)`
-/

namespace A361265.P544788698056363162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A078310 (n + 1) - 1) * A005361 (n + 1)

end

end A361265.P544788698056363162

namespace A361265

/-- `(A078310(n+1)-1)*A005361(n+1)` -/
def P544788698056363162.Spec : Prop :=
  ∀ n, P544788698056363162.a n = A361265 (n + 1)

theorem P544788698056363162.correct : P544788698056363162.Spec := by
  intro n
  simp only [A361265, Nat.add_sub_cancel, A361265.P544788698056363162.a, A361265.P11907308521798501536.a, A005361, A005361.P7238185687981551187.a, A064549, A064549.P18019400484953624932.a, A078310, A078310.P14219530768046252322.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361265

/-! ## A361265.P7923448582779642561

`A000005((n+1)/∏{p}[n+1, #])*A064549(n+1)`
-/

namespace A361265.P7923448582779642561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * A064549 (n + 1)

end

end A361265.P7923448582779642561

namespace A361265

/-- `A000005((n+1)/∏{p}[n+1, #])*A064549(n+1)` -/
def P7923448582779642561.Spec : Prop :=
  ∀ n, P7923448582779642561.a n = A361265 (n + 1)

theorem P7923448582779642561.correct : P7923448582779642561.Spec := by
  intro n
  simp only [A361265, Nat.add_sub_cancel, A361265.P7923448582779642561.f1, A361265.P7923448582779642561.a, A361265.P11907308521798501536.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P7238185687981551187.a, A064549, A064549.P18019400484953624932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361265

/-! ## A361265.P17454797669988825697

`A000005(gcd(n+1, ∑{p}[n+1, (n+1)/#]))*A064549(n+1)`
-/

namespace A361265.P17454797669988825697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))) * A064549 (n + 1)

end

end A361265.P17454797669988825697

namespace A361265

/-- `A000005(gcd(n+1, ∑{p}[n+1, (n+1)/#]))*A064549(n+1)` -/
def P17454797669988825697.Spec : Prop :=
  ∀ n, P17454797669988825697.a n = A361265 (n + 1)

end A361265

/-! ## A361265.P13485517999235391585

`A000005(A003557(n+1))*A064549(n+1)`
-/

namespace A361265.P13485517999235391585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A064549 (n + 1)

end

end A361265.P13485517999235391585

namespace A361265

/-- `A000005(A003557(n+1))*A064549(n+1)` -/
def P13485517999235391585.Spec : Prop :=
  ∀ n, P13485517999235391585.a n = A361265 (n + 1)

end A361265

/-! ## A361265.P779138292965917898

`A000005(A336551(n+1)+1)*A064549(n+1)`
-/

namespace A361265.P779138292965917898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A336551 (n + 1) + 1).toNat * A064549 (n + 1)

end

end A361265.P779138292965917898

namespace A361265

/-- `A000005(A336551(n+1)+1)*A064549(n+1)` -/
def P779138292965917898.Spec : Prop :=
  ∀ n, P779138292965917898.a n = A361265 (n + 1)

theorem P779138292965917898.correct : P779138292965917898.Spec := by
  intro n
  simp only [A361265, Nat.add_sub_cancel, A361265.P779138292965917898.a, A361265.P11907308521798501536.a, A000005, A000005.P16091521709108585461.a, A005361, A005361.P7238185687981551187.a, A064549, A064549.P18019400484953624932.a, A336551, A336551.P8666843674191054020.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361265

/-! ## A361265.P17840885236640600097

`A064549(n+1)/A361264(n+1)*A361268(n+1)`
-/

namespace A361265.P17840885236640600097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A361264 (n + 1) : ℚ) * (A361268 (n + 1) : ℚ)

end

end A361265.P17840885236640600097

namespace A361265

/-- `A064549(n+1)/A361264(n+1)*A361268(n+1)` -/
def P17840885236640600097.Spec : Prop :=
  ∀ n, P17840885236640600097.a n = (A361265 (n + 1) : ℚ)

end A361265

/-! ## A361265.P11372957272371240998

`A361264(n+1)/A361266(n+1)*A361268(n+1)`
-/

namespace A361265.P11372957272371240998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361264 (n + 1) : ℚ) / (A361266 (n + 1) : ℚ) * (A361268 (n + 1) : ℚ)

end

end A361265.P11372957272371240998

namespace A361265

/-- `A361264(n+1)/A361266(n+1)*A361268(n+1)` -/
def P11372957272371240998.Spec : Prop :=
  ∀ n, P11372957272371240998.a n = (A361265 (n + 1) : ℚ)

end A361265

/-!
# A361266: Multiplicative with a(p^e) = p^(e + 3), e > 0.

The programs for A361266, the canonical program `A361266.P5093072706684285124` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361266 has offset 1).

The definition of A361266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361266.P11328138385024068107

`(n+1)*A007947(n+1)^3`
-/

namespace A361266.P11328138385024068107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1) ^ 3

end

end A361266.P11328138385024068107

namespace A361266

/-- `(n+1)*A007947(n+1)^3` -/
def P11328138385024068107.Spec : Prop :=
  ∀ n, P11328138385024068107.a n = A361266 (n + 1)

theorem P11328138385024068107.correct : P11328138385024068107.Spec := by
  intro n
  simp only [A361266, Nat.add_sub_cancel, A361266.P11328138385024068107.a, A361266.P5093072706684285124.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A361264, A361264.P6755303600206869457.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361266

/-! ## A361266.P5093072706684285124

`A361264(n+1)*A007947(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A361266

/-- `A361264(n+1)*A007947(n+1)` -/
def P5093072706684285124.Spec : Prop :=
  ∀ n, P5093072706684285124.a n = A361266 (n + 1)

theorem P5093072706684285124.correct : P5093072706684285124.Spec := by
  intro n
  simp only [A361266, Nat.add_sub_cancel]

end A361266

/-! ## A361266.P3321949695412450319

`A064549(n+1)*A007947(n+1)²`
-/

namespace A361266.P3321949695412450319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) * A007947 (n + 1) ^ 2

end

end A361266.P3321949695412450319

namespace A361266

/-- `A064549(n+1)*A007947(n+1)²` -/
def P3321949695412450319.Spec : Prop :=
  ∀ n, P3321949695412450319.a n = A361266 (n + 1)

theorem P3321949695412450319.correct : P3321949695412450319.Spec := by
  intro n
  simp only [A361266, Nat.add_sub_cancel, A361266.P3321949695412450319.a, A361266.P5093072706684285124.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, A361264, A361264.P6755303600206869457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361266

/-! ## A361266.P9897493057345879518

`A064549(A064549(A064549(n+1)))`
-/

namespace A361266.P9897493057345879518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A064549 (A064549 (n + 1)).toNat).toNat

end

end A361266.P9897493057345879518

namespace A361266

/-- `A064549(A064549(A064549(n+1)))` -/
def P9897493057345879518.Spec : Prop :=
  ∀ n, P9897493057345879518.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P16121867263540197730

`(n+1)*∏{p}[n+1, #^3]`
-/

namespace A361266.P16121867263540197730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ 3)

end

end A361266.P16121867263540197730

namespace A361266

/-- `(n+1)*∏{p}[n+1, #^3]` -/
def P16121867263540197730.Spec : Prop :=
  ∀ n, (P16121867263540197730.a n : ℤ) = A361266 (n + 1)

end A361266

/-! ## A361266.P5060530387242420914

`(n+1)/∏{p}[n+1, #^-3]`
-/

namespace A361266.P5060530387242420914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (p : ℚ) ^ (-3 : ℤ))

end

end A361266.P5060530387242420914

namespace A361266

/-- `(n+1)/∏{p}[n+1, #^-3]` -/
def P5060530387242420914.Spec : Prop :=
  ∀ n, P5060530387242420914.a n = (A361266 (n + 1) : ℚ)

end A361266

/-! ## A361266.P10460866476346315884

`(n+1)*∏{p}[n+1, #]*∏{p}[n+1, #]²`
-/

namespace A361266.P10460866476346315884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), p) ^ 2

end

end A361266.P10460866476346315884

namespace A361266

/-- `(n+1)*∏{p}[n+1, #]*∏{p}[n+1, #]²` -/
def P10460866476346315884.Spec : Prop :=
  ∀ n, (P10460866476346315884.a n : ℤ) = A361266 (n + 1)

theorem P10460866476346315884.correct : P10460866476346315884.Spec := by
  intro n
  simp only [A361266, Nat.add_sub_cancel, A361266.P10460866476346315884.f1, A361266.P10460866476346315884.f2, A361266.P10460866476346315884.a, A361266.P5093072706684285124.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A361264, A361264.P6755303600206869457.a, A064549, A064549.P18019400484953624932.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361266

/-! ## A361266.P16987055956432270855

`(n+1)/∏{p}[n+1, #]*A056553(∏{p}[n+1, #])`
-/

namespace A361266.P16987055956432270855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A056553 (∏ p ∈ Nat.primeFactors (f2 n), p) : ℚ)

end

end A361266.P16987055956432270855

namespace A361266

/-- `(n+1)/∏{p}[n+1, #]*A056553(∏{p}[n+1, #])` -/
def P16987055956432270855.Spec : Prop :=
  ∀ n, P16987055956432270855.a n = (A361266 (n + 1) : ℚ)

end A361266

/-! ## A361266.P14258116205210905401

`(n+1)*A053149(A007947(n+1))`
-/

namespace A361266.P14258116205210905401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053149 (A007947 (n + 1)).toNat

end

end A361266.P14258116205210905401

namespace A361266

/-- `(n+1)*A053149(A007947(n+1))` -/
def P14258116205210905401.Spec : Prop :=
  ∀ n, P14258116205210905401.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P18247370914831189285

`(n+1)*A053149(A015052(n+1))`
-/

namespace A361266.P18247370914831189285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053149 (A015052 (n + 1)).toNat

end

end A361266.P18247370914831189285

namespace A361266

/-- `(n+1)*A053149(A015052(n+1))` -/
def P18247370914831189285.Spec : Prop :=
  ∀ n, P18247370914831189285.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P14165103804316780891

`A064549(n+1)*A078615(n+1)`
-/

namespace A361266.P14165103804316780891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (n + 1) * A078615 (n + 1)

end

end A361266.P14165103804316780891

namespace A361266

/-- `A064549(n+1)*A078615(n+1)` -/
def P14165103804316780891.Spec : Prop :=
  ∀ n, P14165103804316780891.a n = A361266 (n + 1)

theorem P14165103804316780891.correct : P14165103804316780891.Spec := by
  intro n
  simp only [A361266, Nat.add_sub_cancel, A361266.P14165103804316780891.a, A361266.P5093072706684285124.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, A078615, A078615.P3889666147541299354.a, A361264, A361264.P6755303600206869457.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361266

/-! ## A361266.P10116042059380759377

`(n+1)*A356192(A007948(n+1))`
-/

namespace A361266.P10116042059380759377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A356192 (A007948 (n + 1)).toNat

end

end A361266.P10116042059380759377

namespace A361266

/-- `(n+1)*A356192(A007948(n+1))` -/
def P10116042059380759377.Spec : Prop :=
  ∀ n, P10116042059380759377.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P9980323731888754487

`A007947(n+1)*A361264(n+1)`
-/

namespace A361266.P9980323731888754487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A361264 (n + 1)

end

end A361266.P9980323731888754487

namespace A361266

/-- `A007947(n+1)*A361264(n+1)` -/
def P9980323731888754487.Spec : Prop :=
  ∀ n, P9980323731888754487.a n = A361266 (n + 1)

theorem P9980323731888754487.correct : P9980323731888754487.Spec := by
  intro n
  simp only [A361266, Nat.add_sub_cancel, A361266.P9980323731888754487.a, A361266.P5093072706684285124.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A361266

/-! ## A361266.P9578726062900224700

`(n+1)*A056551(A353897(n+1))`
-/

namespace A361266.P9578726062900224700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A056551 (A353897 (n + 1)).toNat

end

end A361266.P9578726062900224700

namespace A361266

/-- `(n+1)*A056551(A353897(n+1))` -/
def P9578726062900224700.Spec : Prop :=
  ∀ n, P9578726062900224700.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P8825909772164261180

`A058035(n+1)*A356193(n+1)`
-/

namespace A361266.P8825909772164261180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058035 (n + 1) * A356193 (n + 1)

end

end A361266.P8825909772164261180

namespace A361266

/-- `A058035(n+1)*A356193(n+1)` -/
def P8825909772164261180.Spec : Prop :=
  ∀ n, P8825909772164261180.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P14539689659658715703

`A078615(n+1)²*A003557(n+1)`
-/

namespace A361266.P14539689659658715703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078615 (n + 1) ^ 2 * A003557 (n + 1)

end

end A361266.P14539689659658715703

namespace A361266

/-- `A078615(n+1)²*A003557(n+1)` -/
def P14539689659658715703.Spec : Prop :=
  ∀ n, P14539689659658715703.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P8619473855849569984

`A007947(n+1)²²*A003557(n+1)`
-/

namespace A361266.P8619473855849569984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) ^ 2) ^ 2 * A003557 (n + 1)

end

end A361266.P8619473855849569984

namespace A361266

/-- `A007947(n+1)²²*A003557(n+1)` -/
def P8619473855849569984.Spec : Prop :=
  ∀ n, P8619473855849569984.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P8126171016080913244

`A062953(n+1)²²*A003557(n+1)`
-/

namespace A361266.P8126171016080913244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062953 (n + 1) ^ 2) ^ 2 * A003557 (n + 1)

end

end A361266.P8126171016080913244

namespace A361266

/-- `A062953(n+1)²²*A003557(n+1)` -/
def P8126171016080913244.Spec : Prop :=
  ∀ n, P8126171016080913244.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P10259951446980076550

`A053165(A003557(n+1))*A053167(n+1)`
-/

namespace A361266.P10259951446980076550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (A003557 (n + 1)).toNat * A053167 (n + 1)

end

end A361266.P10259951446980076550

namespace A361266

/-- `A053165(A003557(n+1))*A053167(n+1)` -/
def P10259951446980076550.Spec : Prop :=
  ∀ n, P10259951446980076550.a n = A361266 (n + 1)

end A361266

/-! ## A361266.P17686880900923371580

`A003557(n+1)*A053167(A053166(n+1))`
-/

namespace A361266.P17686880900923371580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A053167 (A053166 (n + 1)).toNat

end

end A361266.P17686880900923371580

namespace A361266

/-- `A003557(n+1)*A053167(A053166(n+1))` -/
def P17686880900923371580.Spec : Prop :=
  ∀ n, P17686880900923371580.a n = A361266 (n + 1)

end A361266

/-!
# A361267: Numbers k such that prime(k+2) - prime(k) = 6.

The programs for A361267, the canonical program `A361267.P7495545048524852458` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361267 has offset 1).

The definition of A361267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 526 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A361267.P10979254345755453750

`A000720(A007529(n+1))`
-/

namespace A361267.P10979254345755453750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007529 (n + 1)).toNat

end

end A361267.P10979254345755453750

namespace A361267

/-- `A000720(A007529(n+1))` -/
def P10979254345755453750.Spec : Prop :=
  ∀ n, P10979254345755453750.a n = A361267 (n + 1)

end A361267

/-! ## A361267.P7495545048524852458

`eq[6, A075527(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A361267

/-- `eq[6, A075527(n)]` -/
def P7495545048524852458.Spec : Prop :=
  ∀ n, (P7495545048524852458.a n : ℤ) = A361267 (n + 1)

theorem P7495545048524852458.correct : P7495545048524852458.Spec := by
  intro n
  simp only [A361267, Nat.add_sub_cancel]

end A361267

/-! ## A361267.P4533802275214183898

`eq[3, A162345(n+1)]`
-/

namespace A361267.P4533802275214183898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361267.P4533802275214183898

namespace A361267

/-- `eq[3, A162345(n+1)]` -/
def P4533802275214183898.Spec : Prop :=
  ∀ n, (P4533802275214183898.a n : ℤ) = A361267 (n + 1)

end A361267

/-! ## A361267.P1388412387867990361

`eq[4, A046930(n+1)]`
-/

namespace A361267.P1388412387867990361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046930 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361267.P1388412387867990361

namespace A361267

/-- `eq[4, A046930(n+1)]` -/
def P1388412387867990361.Spec : Prop :=
  ∀ n, (P1388412387867990361.a n : ℤ) = A361267 (n + 1)

end A361267

/-! ## A361267.P7407221808554888785

`eq[4, A159461(n+1)]`
-/

namespace A361267.P7407221808554888785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A361267.P7407221808554888785

namespace A361267

/-- `eq[4, A159461(n+1)]` -/
def P7407221808554888785.Spec : Prop :=
  ∀ n, (P7407221808554888785.a n : ℤ) = A361267 (n + 1)

end A361267

/-! ## A361267.P10303480198295086253

`eq[4, A083551(n+1)]+1`
-/

namespace A361267.P10303480198295086253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A361267.P10303480198295086253

namespace A361267

/-- `eq[4, A083551(n+1)]+1` -/
def P10303480198295086253.Spec : Prop :=
  ∀ n, (P10303480198295086253.a n : ℤ) = A361267 (n + 1)

end A361267

/-! ## A361267.P7798133336615972442

`eq[A113923(n), A115061(n+1)]`
-/

namespace A361267.P7798133336615972442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113923 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361267.P7798133336615972442

namespace A361267

/-- `eq[A113923(n), A115061(n+1)]` -/
def P7798133336615972442.Spec : Prop :=
  ∀ n, (P7798133336615972442.a n : ℤ) = A361267 (n + 1)

end A361267

/-! ## A361267.P12575439958209439178

`eq[A115061(n+1), A122553(n)]`
-/

namespace A361267.P12575439958209439178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361267.P12575439958209439178

namespace A361267

/-- `eq[A115061(n+1), A122553(n)]` -/
def P12575439958209439178.Spec : Prop :=
  ∀ n, (P12575439958209439178.a n : ℤ) = A361267 (n + 1)

end A361267

/-! ## A361267.P9639102226556119132

`eq[A115061(n+1), A157532(n+1)]`
-/

namespace A361267.P9639102226556119132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A361267.P9639102226556119132

namespace A361267

/-- `eq[A115061(n+1), A157532(n+1)]` -/
def P9639102226556119132.Spec : Prop :=
  ∀ n, (P9639102226556119132.a n : ℤ) = A361267 (n + 1)

end A361267

/-! ## A361267.P14117526354059053762

`A000720(A098414(n+1)-1)`
-/

namespace A361267.P14117526354059053762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098414 (n + 1) - 1).toNat

end

end A361267.P14117526354059053762

namespace A361267

/-- `A000720(A098414(n+1)-1)` -/
def P14117526354059053762.Spec : Prop :=
  ∀ n, P14117526354059053762.a n = A361267 (n + 1)

end A361267

/-! ## A361267.P12683617828298388705

`A000720(A098415(n+1))-2`
-/

namespace A361267.P12683617828298388705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A098415 (n + 1)).toNat - 2

end

end A361267.P12683617828298388705

namespace A361267

/-- `A000720(A098415(n+1))-2` -/
def P12683617828298388705.Spec : Prop :=
  ∀ n, P12683617828298388705.a n = A361267 (n + 1)

end A361267

/-! ## A361267.P1219025325179496821

`A308754(A098416(n+1))`
-/

namespace A361267.P1219025325179496821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308754 (A098416 (n + 1)).toNat

end

end A361267.P1219025325179496821

namespace A361267

/-- `A308754(A098416(n+1))` -/
def P1219025325179496821.Spec : Prop :=
  ∀ n, P1219025325179496821.a n = A361267 (n + 1)

end A361267

/-! ## A361267.P18112514764561155195

`A033270(A098414(n+1))`
-/

namespace A361267.P18112514764561155195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A098414 (n + 1)).toNat

end

end A361267.P18112514764561155195

namespace A361267

/-- `A033270(A098414(n+1))` -/
def P18112514764561155195.Spec : Prop :=
  ∀ n, P18112514764561155195.a n = A361267 (n + 1)

end A361267

/-! ## A361267.P14457162731691202772

`A082513(A098415(n+1))`
-/

namespace A361267.P14457162731691202772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082513 (A098415 (n + 1)).toNat

end

end A361267.P14457162731691202772

namespace A361267

/-- `A082513(A098415(n+1))` -/
def P14457162731691202772.Spec : Prop :=
  ∀ n, P14457162731691202772.a n = A361267 (n + 1)

end A361267

/-!
# A361268: Multiplicative with a(p^e) = e * p^(e + 2), e > 0.

The programs for A361268, the canonical program `A361268.P17929476801326375082` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361268 has offset 1).

The definition of A361268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361268.P17929476801326375082

`A005361(n+1)*A361264(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A361268

/-- `A005361(n+1)*A361264(n+1)` -/
def P17929476801326375082.Spec : Prop :=
  ∀ n, P17929476801326375082.a n = A361268 (n + 1)

theorem P17929476801326375082.correct : P17929476801326375082.Spec := by
  intro n
  simp only [A361268, Nat.add_sub_cancel]

end A361268

/-! ## A361268.P13751073182524023801

`(n+1)*∏{p}[n+1, #]*∏{p}[n+1, #*val(n+1, #)]`
-/

namespace A361268.P13751073182524023801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) * (∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p)

end

end A361268.P13751073182524023801

namespace A361268

/-- `(n+1)*∏{p}[n+1, #]*∏{p}[n+1, #*val(n+1, #)]` -/
def P13751073182524023801.Spec : Prop :=
  ∀ n, (P13751073182524023801.a n : ℤ) = A361268 (n + 1)

end A361268

/-! ## A361268.P736634616772898205

`(n+1)*∏{p}[n+1, #]*∏{p}[n+1, #]*∏{e}[n+1, #]`
-/

namespace A361268.P736634616772898205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) * ((∏ p ∈ Nat.primeFactors (f2 n), p) * (∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

end

end A361268.P736634616772898205

namespace A361268

/-- `(n+1)*∏{p}[n+1, #]*∏{p}[n+1, #]*∏{e}[n+1, #]` -/
def P736634616772898205.Spec : Prop :=
  ∀ n, (P736634616772898205.a n : ℤ) = A361268 (n + 1)

end A361268

/-! ## A361268.P14447902051373155948

`(n+1)*∏{p}[n+1, #²]*A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A361268.P14447902051373155948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p ^ 2) : ℕ) : ℤ) * A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A361268.P14447902051373155948

namespace A361268

/-- `(n+1)*∏{p}[n+1, #²]*A000005((n+1)/∏{p}[n+1, #])` -/
def P14447902051373155948.Spec : Prop :=
  ∀ n, P14447902051373155948.a n = A361268 (n + 1)

end A361268

/-! ## A361268.P1028336718422828988

`A000026(n+1)*A064549(n+1)`
-/

namespace A361268.P1028336718422828988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (n + 1) * A064549 (n + 1)

end

end A361268.P1028336718422828988

namespace A361268

/-- `A000026(n+1)*A064549(n+1)` -/
def P1028336718422828988.Spec : Prop :=
  ∀ n, P1028336718422828988.a n = A361268 (n + 1)

theorem P1028336718422828988.correct : P1028336718422828988.Spec := by
  intro n
  simp only [A361268, Nat.add_sub_cancel, A361268.P1028336718422828988.a, A361268.P17929476801326375082.a, A000026, A000026.P14646158085172730513.a, A005361, A005361.P7238185687981551187.a, A064549, A064549.P18019400484953624932.a, A361264, A361264.P6755303600206869457.a, A000005, A000005.P16091521709108585461.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361268

/-! ## A361268.P13256047319613883271

`A007947(n+1)*A361265(n+1)`
-/

namespace A361268.P13256047319613883271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A361265 (n + 1)

end

end A361268.P13256047319613883271

namespace A361268

/-- `A007947(n+1)*A361265(n+1)` -/
def P13256047319613883271.Spec : Prop :=
  ∀ n, P13256047319613883271.a n = A361268 (n + 1)

theorem P13256047319613883271.correct : P13256047319613883271.Spec := by
  intro n
  simp only [A361268, Nat.add_sub_cancel, A361268.P13256047319613883271.a, A361268.P17929476801326375082.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A361264, A361264.P6755303600206869457.a, A361265, A361265.P11907308521798501536.a, A000005, A000005.P16091521709108585461.a, A064549, A064549.P18019400484953624932.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361268

/-! ## A361268.P8184253411402883354

`A000005(A003557(n+1))*A361264(n+1)`
-/

namespace A361268.P8184253411402883354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A361264 (n + 1)

end

end A361268.P8184253411402883354

namespace A361268

/-- `A000005(A003557(n+1))*A361264(n+1)` -/
def P8184253411402883354.Spec : Prop :=
  ∀ n, P8184253411402883354.a n = A361268 (n + 1)

end A361268

/-! ## A361268.P2676088521971285382

`A015052(A015052(n+1))*A361265(n+1)`
-/

namespace A361268.P2676088521971285382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015052 (A015052 (n + 1)).toNat * A361265 (n + 1)

end

end A361268.P2676088521971285382

namespace A361268

/-- `A015052(A015052(n+1))*A361265(n+1)` -/
def P2676088521971285382.Spec : Prop :=
  ∀ n, P2676088521971285382.a n = A361268 (n + 1)

end A361268

/-! ## A361268.P16361046618141076506

`A015053(A015053(n+1))*A361265(n+1)`
-/

namespace A361268.P16361046618141076506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A015053 (n + 1)).toNat * A361265 (n + 1)

end

end A361268.P16361046618141076506

namespace A361268

/-- `A015053(A015053(n+1))*A361265(n+1)` -/
def P16361046618141076506.Spec : Prop :=
  ∀ n, P16361046618141076506.a n = A361268 (n + 1)

end A361268

/-! ## A361268.P8837689465759374216

`A005361(n+1)*A007947(n+1)*A064549(n+1)`
-/

namespace A361268.P8837689465759374216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A007947 (n + 1) * A064549 (n + 1)

end

end A361268.P8837689465759374216

namespace A361268

/-- `A005361(n+1)*A007947(n+1)*A064549(n+1)` -/
def P8837689465759374216.Spec : Prop :=
  ∀ n, P8837689465759374216.a n = A361268 (n + 1)

theorem P8837689465759374216.correct : P8837689465759374216.Spec := by
  intro n
  simp only [A361268, Nat.add_sub_cancel, A361268.P8837689465759374216.a, A361268.P17929476801326375082.a, A005361, A005361.P7238185687981551187.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064549, A064549.P18019400484953624932.a, A361264, A361264.P6755303600206869457.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A361268

/-! ## A361268.P13608060507391004838

`A064549(n+1)*A398463(n+1)/A203639(n+1)`
-/

namespace A361268.P13608060507391004838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) * A398463 (n + 1) : ℚ) / (A203639 (n + 1) : ℚ)

end

end A361268.P13608060507391004838

namespace A361268

/-- `A064549(n+1)*A398463(n+1)/A203639(n+1)` -/
def P13608060507391004838.Spec : Prop :=
  ∀ n, P13608060507391004838.a n = (A361268 (n + 1) : ℚ)

end A361268

/-! ## A361268.P7204220480345310491

`A005361(n+1)*A064549(A064549(n+1))`
-/

namespace A361268.P7204220480345310491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A064549 (A064549 (n + 1)).toNat

end

end A361268.P7204220480345310491

namespace A361268

/-- `A005361(n+1)*A064549(A064549(n+1))` -/
def P7204220480345310491.Spec : Prop :=
  ∀ n, P7204220480345310491.a n = A361268 (n + 1)

end A361268

/-! ## A361268.P6875531541581163380

`A000005(A003557(n+1))*A064549(A064549(n+1))`
-/

namespace A361268.P6875531541581163380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A064549 (A064549 (n + 1)).toNat

end

end A361268.P6875531541581163380

namespace A361268

/-- `A000005(A003557(n+1))*A064549(A064549(n+1))` -/
def P6875531541581163380.Spec : Prop :=
  ∀ n, P6875531541581163380.a n = A361268 (n + 1)

end A361268

/-!
# A361269: Triangular array read by rows. T(n,k) is the number of binary relations on [n] containing exactly k strongly connected components, n >= 0, 0 <= k <= n.

The programs for A361269, there is no canonical definition to state claims against.
-/

/-! ## A361269.P2930683396289254388

`∏[char[∑[n]]+1]/2*A361455(n)`
-/

namespace A361269.P2930683396289254388
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 * (A361455 n : ℚ)

end

end A361269.P2930683396289254388

/-! ## A361269.P16010341807833880482

`A361455(n)*A400955(n+1)`
-/

namespace A361269.P16010341807833880482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361455 n * A400955 (n + 1)

end

end A361269.P16010341807833880482

/-! ## A361269.P8752801645030721340

`∏{e}[A069723(n+1), #*A084938(n)]`
-/

namespace A361269.P8752801645030721340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069723 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A084938 n

end

end A361269.P8752801645030721340

/-! ## A361269.P2992519222261819984

`char[ceil(ϕ*n)]*A085313(A000142(n))`
-/

namespace A361269.P2992519222261819984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A085313 (A000142 n).toNat

end

end A361269.P2992519222261819984

/-!
# A361270: Number of 1324-avoiding odd Grassmannian permutations of size n.

The programs for A361270, the canonical program `A361270.P8322462756588684312` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361270 has offset 0).

The definition of A361270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361270.P8322462756588684312

`ogf((x^2+2x^3+x^4+2x^6)/(1-4x^2+6x^4-4x^6+x^8))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361270

/-- `ogf((x^2+2x^3+x^4+2x^6)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P8322462756588684312.Spec : Prop :=
  ∀ n, P8322462756588684312.a n = A361270 n

theorem P8322462756588684312.correct : P8322462756588684312.Spec := by
  intro n
  simp only [A361270]

end A361270

/-! ## A361270.P6453256326259463149

`A361271(n)+A361274(n)-A361273(n)`
-/

namespace A361270.P6453256326259463149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361271 n + (A361274 n - A361273 n)

end

end A361270.P6453256326259463149

namespace A361270

/-- `A361271(n)+A361274(n)-A361273(n)` -/
def P6453256326259463149.Spec : Prop :=
  ∀ n, P6453256326259463149.a n = A361270 n

end A361270

/-! ## A361270.P7242068601500731759

`A353847(A063978(n)-A000005(2*n+1))`
-/

namespace A361270.P7242068601500731759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353847 (A063978 n - A000005 (2 * n + 1)).toNat

end

end A361270.P7242068601500731759

namespace A361270

/-- `A353847(A063978(n)-A000005(2*n+1))` -/
def P7242068601500731759.Spec : Prop :=
  ∀ n, P7242068601500731759.a n = A361270 n

end A361270

/-! ## A361270.P18237712962242362007

`∑[A224748(A281976(3^n))]`
-/

namespace A361270.P18237712962242362007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224748 (A281976 (3 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361270.P18237712962242362007

namespace A361270

/-- `∑[A224748(A281976(3^n))]` -/
def P18237712962242362007.Spec : Prop :=
  ∀ n, P18237712962242362007.a n = A361270 n

end A361270

/-!
# A361271: Number of 1342-avoiding odd Grassmannian permutations of size n.

The programs for A361271, the canonical program `A361271.P14373764273269915906` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361271 has offset 0).

The definition of A361271 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361271.P14373764273269915906

`ogf((x^2+x^3+x^4+x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361271

/-- `ogf((x^2+x^3+x^4+x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P14373764273269915906.Spec : Prop :=
  ∀ n, P14373764273269915906.a n = A361271 n

theorem P14373764273269915906.correct : P14373764273269915906.Spec := by
  intro n
  simp only [A361271]

end A361271

/-! ## A361271.P3303767422937233497

`A351704(n)-1`
-/

namespace A361271.P3303767422937233497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351704 n - 1

end

end A361271.P3303767422937233497

namespace A361271

/-- `A351704(n)-1` -/
def P3303767422937233497.Spec : Prop :=
  ∀ n, P3303767422937233497.a n = A361271 n

end A361271

/-! ## A361271.P8703297863308971657

`A173196(n)-Δ[A028724(n)]`
-/

namespace A361271.P8703297863308971657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n - (f1 (n + 1) - f1 n)

end

end A361271.P8703297863308971657

namespace A361271

/-- `A173196(n)-Δ[A028724(n)]` -/
def P8703297863308971657.Spec : Prop :=
  ∀ n, P8703297863308971657.a n = A361271 n

end A361271

/-! ## A361271.P17148962887737697129

`A361270(n)+A361273(n)-A361274(n)`
-/

namespace A361271.P17148962887737697129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361270 n + (A361273 n - A361274 n)

end

end A361271.P17148962887737697129

namespace A361271

/-- `A361270(n)+A361273(n)-A361274(n)` -/
def P17148962887737697129.Spec : Prop :=
  ∀ n, P17148962887737697129.a n = A361271 n

end A361271

/-! ## A361271.P7442264509330211142

`Δ[A038376(n)]+∑[log2(gcd(2, n))]-1`
-/

namespace A361271.P7442264509330211142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038376 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℝ) + ∑ j ∈ Finset.range (n + 1), f2 j - 1

end

end A361271.P7442264509330211142

namespace A361271

/-- `Δ[A038376(n)]+∑[log2(gcd(2, n))]-1` -/
def P7442264509330211142.Spec : Prop :=
  ∀ n, P7442264509330211142.a n = (A361271 n : ℝ)

end A361271

/-! ## A361271.P9435231273299318969

`A004526(n)+Δ[A038376(n)]`
-/

namespace A361271.P9435231273299318969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (f1 (n + 1) - f1 n)

end

end A361271.P9435231273299318969

namespace A361271

/-- `A004526(n)+Δ[A038376(n)]` -/
def P9435231273299318969.Spec : Prop :=
  ∀ n, P9435231273299318969.a n = A361271 n

end A361271

/-! ## A361271.P5950715608659693849

`A008619(n)+Δ[A038376(n)]-1`
-/

namespace A361271.P5950715608659693849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n + (f1 (n + 1) - f1 n - 1)

end

end A361271.P5950715608659693849

namespace A361271

/-- `A008619(n)+Δ[A038376(n)]-1` -/
def P5950715608659693849.Spec : Prop :=
  ∀ n, P5950715608659693849.a n = A361271 n

end A361271

/-! ## A361271.P3737527135965238449

`A023443(A351704(n))`
-/

namespace A361271.P3737527135965238449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A351704 n).toNat

end

end A361271.P3737527135965238449

namespace A361271

/-- `A023443(A351704(n))` -/
def P3737527135965238449.Spec : Prop :=
  ∀ n, P3737527135965238449.a n = A361271 n

end A361271

/-!
# A361272: Number of 1243-avoiding even Grassmannian permutations of size n.

The programs for A361272, the canonical program `A361272.P2787962068847962907` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361272 has offset 0).

The definition of A361272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361272.P14191919975553562926

`ogf((1-2x+4x^3-2x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A361272.P14191919975553562926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 4, -2] [1, -3, 2, 2, -3, 1] n

end

end A361272.P14191919975553562926

namespace A361272

/-- `ogf((1-2x+4x^3-2x^4)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P14191919975553562926.Spec : Prop :=
  ∀ n, P14191919975553562926.a n = A361272 n

end A361272

/-! ## A361272.P2787962068847962907

`(2*(n-2)*n*(2*n+7)-9*(-1)^n+57)/48`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361272

/-- `(2*(n-2)*n*(2*n+7)-9*(-1)^n+57)/48` -/
def P2787962068847962907.Spec : Prop :=
  ∀ n, P2787962068847962907.a n = (A361272 n : ℚ)

end A361272

/-! ## A361272.P708202724865603733

`∑[n-1]+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A361272.P708202724865603733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A361272.P708202724865603733

namespace A361272

/-- `∑[n-1]+a(n-2)` -/
def P708202724865603733.Spec : Prop :=
  ∀ n, P708202724865603733.a n = A361272 n

end A361272

/-! ## A361272.P9336932077471892969

`a(n-2)+C(n, 2)-1` with `a(0)=1, a(1)=1`
-/

namespace A361272.P9336932077471892969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + ((Nat.choose n 2 : ℤ) - 1)

end

end A361272.P9336932077471892969

namespace A361272

/-- `a(n-2)+C(n, 2)-1` -/
def P9336932077471892969.Spec : Prop :=
  ∀ n, P9336932077471892969.a n = A361272 n

end A361272

/-! ## A361272.P9480600941937156278

`a(n-2)-(1-C(n, 2))` with `a(0)=1, a(1)=1`
-/

namespace A361272.P9480600941937156278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) - (1 - (Nat.choose n 2 : ℤ))

end

end A361272.P9480600941937156278

namespace A361272

/-- `a(n-2)-(1-C(n, 2))` -/
def P9480600941937156278.Spec : Prop :=
  ∀ n, P9480600941937156278.a n = A361272 n

end A361272

/-! ## A361272.P4560948791009390946

`∑[n-(1-a(n-2))]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A361272.P4560948791009390946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361272.P4560948791009390946

namespace A361272

/-- `∑[n-(1-a(n-2))]` -/
def P4560948791009390946.Spec : Prop :=
  ∀ n, P4560948791009390946.a n = A361272 n

end A361272

/-! ## A361272.P4949127406188290256

`and(∑[ceil((n/2)²)-1]+2, -1)`
-/

namespace A361272.P4949127406188290256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j + 2) (-1)

end

end A361272.P4949127406188290256

namespace A361272

/-- `and(∑[ceil((n/2)²)-1]+2, -1)` -/
def P4949127406188290256.Spec : Prop :=
  ∀ n, P4949127406188290256.a n = A361272 n

end A361272

/-! ## A361272.P8220031082177549886

`ceil(a(n-1)+(n/2)²)-1` with `a(0)=1`
-/

namespace A361272.P8220031082177549886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(a (n - 1) : ℚ) + ((n : ℚ) / 2) ^ 2⌉ - 1

end

end A361272.P8220031082177549886

namespace A361272

/-- `ceil(a(n-1)+(n/2)²)-1` -/
def P8220031082177549886.Spec : Prop :=
  ∀ n, P8220031082177549886.a n = A361272 n

end A361272

/-! ## A361272.P5374208222932682428

`floor(a(n-1)+(n²-1)/4)` with `a(0)=1`
-/

namespace A361272.P5374208222932682428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n ^ 2 : ℤ) - 1 : ℚ) / 4⌋

end

end A361272.P5374208222932682428

namespace A361272

/-- `floor(a(n-1)+(n²-1)/4)` -/
def P5374208222932682428.Spec : Prop :=
  ∀ n, P5374208222932682428.a n = A361272 n

end A361272

/-! ## A361272.P7683440602507553542

`or(∑[ceil((n/2)²)-1]+2, char[1])`
-/

namespace A361272.P7683440602507553542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℚ) / 2) ^ 2⌉ - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j + 2) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A361272.P7683440602507553542

namespace A361272

/-- `or(∑[ceil((n/2)²)-1]+2, char[1])` -/
def P7683440602507553542.Spec : Prop :=
  ∀ n, P7683440602507553542.a n = A361272 n

end A361272

/-! ## A361272.P14006629442557514586

`n-(a(n-3)-(a(n-1)+a(n-2))+1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A361272.P14006629442557514586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  (n : ℤ) - (a (n - 3) - (a (n - 1) + a (n - 2)) + 1)

end

end A361272.P14006629442557514586

namespace A361272

/-- `n-(a(n-3)-(a(n-1)+a(n-2))+1)` -/
def P14006629442557514586.Spec : Prop :=
  ∀ n, P14006629442557514586.a n = A361272 n

end A361272

/-! ## A361272.P8764484959080029394

`A175287(n)+1-n`
-/

namespace A361272.P8764484959080029394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n + (1 - (n : ℤ))

end

end A361272.P8764484959080029394

namespace A361272

/-- `A175287(n)+1-n` -/
def P8764484959080029394.Spec : Prop :=
  ∀ n, P8764484959080029394.a n = A361272 n

end A361272

/-! ## A361272.P11197582404988118076

`∑[A002620(n)]+1-floor(n/2)`
-/

namespace A361272.P11197582404988118076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - ⌊(n : ℚ) / 2⌋

end

end A361272.P11197582404988118076

namespace A361272

/-- `∑[A002620(n)]+1-floor(n/2)` -/
def P11197582404988118076.Spec : Prop :=
  ∀ n, P11197582404988118076.a n = A361272 n

end A361272

/-! ## A361272.P14331973885738588687

`A280186(n)+A131355(n)`
-/

namespace A361272.P14331973885738588687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n + A131355 n

end

end A361272.P14331973885738588687

namespace A361272

/-- `A280186(n)+A131355(n)` -/
def P14331973885738588687.Spec : Prop :=
  ∀ n, P14331973885738588687.a n = A361272 n

end A361272

/-! ## A361272.P3332985340877909383

`A266464(n)-A032766(n)`
-/

namespace A361272.P3332985340877909383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 n - A032766 n

end

end A361272.P3332985340877909383

namespace A361272

/-- `A266464(n)-A032766(n)` -/
def P3332985340877909383.Spec : Prop :=
  ∀ n, P3332985340877909383.a n = A361272 n

end A361272

/-! ## A361272.P12010875203264334656

`A158842(n)-A212068(n)`
-/

namespace A361272.P12010875203264334656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 n - A212068 n

end

end A361272.P12010875203264334656

namespace A361272

/-- `A158842(n)-A212068(n)` -/
def P12010875203264334656.Spec : Prop :=
  ∀ n, P12010875203264334656.a n = A361272 n

end A361272

/-! ## A361272.P3771449095055353280

`A391995(n)+A152947(n+1)`
-/

namespace A361272.P3771449095055353280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391995 n + A152947 (n + 1)

end

end A361272.P3771449095055353280

namespace A361272

/-- `A391995(n)+A152947(n+1)` -/
def P3771449095055353280.Spec : Prop :=
  ∀ n, P3771449095055353280.a n = A361272 n

end A361272

/-! ## A361272.P15425460857800066613

`A173196(n)+1-A004526(n)`
-/

namespace A361272.P15425460857800066613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + (1 - A004526 n)

end

end A361272.P15425460857800066613

namespace A361272

/-- `A173196(n)+1-A004526(n)` -/
def P15425460857800066613.Spec : Prop :=
  ∀ n, P15425460857800066613.a n = A361272 n

end A361272

/-! ## A361272.P1267375216994564341

`A002623(n)-A183575(n+1)`
-/

namespace A361272.P1267375216994564341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002623 n - A183575 (n + 1)

end

end A361272.P1267375216994564341

namespace A361272

/-- `A002623(n)-A183575(n+1)` -/
def P1267375216994564341.Spec : Prop :=
  ∀ n, P1267375216994564341.a n = A361272 n

end A361272

/-! ## A361272.P4686125165983737845

`A173196(n)+2-A008619(n)`
-/

namespace A361272.P4686125165983737845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173196 n + (2 - A008619 n)

end

end A361272.P4686125165983737845

namespace A361272

/-- `A173196(n)+2-A008619(n)` -/
def P4686125165983737845.Spec : Prop :=
  ∀ n, P4686125165983737845.a n = A361272 n

end A361272

/-!
# A361273: Number of 1324-avoiding even Grassmannian permutations of size n.

The programs for A361273, the canonical program `A361273.P17950805431647845016` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361273 has offset 0).

The definition of A361273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361273.P17950805431647845016

`ogf((1+x-3x^2-x^3+8x^4+7x^5-2x^6-x^7)/(1-4x^2+6x^4-4x^6+x^8))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361273

/-- `ogf((1+x-3x^2-x^3+8x^4+7x^5-2x^6-x^7)/(1-4x^2+6x^4-4x^6+x^8))` -/
def P17950805431647845016.Spec : Prop :=
  ∀ n, P17950805431647845016.a n = A361273 n

theorem P17950805431647845016.correct : P17950805431647845016.Spec := by
  intro n
  simp only [A361273]

end A361273

/-! ## A361273.P16278887384446853109

`A361271(n)+A361274(n)-A361270(n)`
-/

namespace A361273.P16278887384446853109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361271 n + (A361274 n - A361270 n)

end

end A361273.P16278887384446853109

namespace A361273

/-- `A361271(n)+A361274(n)-A361270(n)` -/
def P16278887384446853109.Spec : Prop :=
  ∀ n, P16278887384446853109.a n = A361273 n

end A361273

/-!
# A361274: Number of 1342-avoiding even Grassmannian permutations of size n.

The programs for A361274, the canonical program `A361274.P4196358693031260369` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361274 has offset 0).

The definition of A361274 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361274.P4196358693031260369

`ogf((1-3x^2+2x^3+5x^4+x^5-2x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361274

/-- `ogf((1-3x^2+2x^3+5x^4+x^5-2x^6)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P4196358693031260369.Spec : Prop :=
  ∀ n, P4196358693031260369.a n = A361274 n

theorem P4196358693031260369.correct : P4196358693031260369.Spec := by
  intro n
  simp only [A361274]

end A361274

/-! ## A361274.P4144827817827112154

`A361270(n)+A361273(n)-A361271(n)`
-/

namespace A361274.P4144827817827112154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361270 n + (A361273 n - A361271 n)

end

end A361274.P4144827817827112154

namespace A361274

/-- `A361270(n)+A361273(n)-A361271(n)` -/
def P4144827817827112154.Spec : Prop :=
  ∀ n, P4144827817827112154.a n = A361274 n

end A361274

/-! ## A361274.P18366255470173967729

`A361270(n)+A361273(n)+A024000(A361271(n)+1)`
-/

namespace A361274.P18366255470173967729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361270 n + (A361273 n + A024000 (A361271 n + 1).toNat)

end

end A361274.P18366255470173967729

namespace A361274

/-- `A361270(n)+A361273(n)+A024000(A361271(n)+1)` -/
def P18366255470173967729.Spec : Prop :=
  ∀ n, P18366255470173967729.a n = A361274 n

end A361274

/-! ## A361274.P16771291202131206778

`A062300(A131474(n)^A135660(n+1))`
-/

namespace A361274.P16771291202131206778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062300 (SequenceMachineLib.roundAway ((A131474 n : ℚ) ^ (A135660 (n + 1) : ℤ))).toNat

end

end A361274.P16771291202131206778

namespace A361274

/-- `A062300(A131474(n)^A135660(n+1))` -/
def P16771291202131206778.Spec : Prop :=
  ∀ n, P16771291202131206778.a n = A361274 n

end A361274

/-!
# A361275: Number of 1423-avoiding even Grassmannian permutations of size n.

The programs for A361275, the canonical program `A361275.P3603382318574680870` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361275 has offset 0).

The definition of A361275 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361275.P14869074605357278735

`ogf((1-x-2x^2+4x^3+x^4-x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`
-/

namespace A361275.P14869074605357278735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -2, 4, 1, -1] [1, -2, -1, 4, -1, -2, 1] n

end

end A361275.P14869074605357278735

namespace A361275

/-- `ogf((1-x-2x^2+4x^3+x^4-x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P14869074605357278735.Spec : Prop :=
  ∀ n, P14869074605357278735.a n = A361275 n

end A361275

/-! ## A361275.P3603382318574680870

`(2*n^3-(3*(-1)^n+5)*n)/24+1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361275

/-- `(2*n^3-(3*(-1)^n+5)*n)/24+1` -/
def P3603382318574680870.Spec : Prop :=
  ∀ n, P3603382318574680870.a n = (A361275 n : ℚ)

end A361275

/-! ## A361275.P17183214940412567990

`or(1, ∑[2*C(ceil(n/2), 2)])`
-/

namespace A361275.P17183214940412567990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361275.P17183214940412567990

namespace A361275

/-- `or(1, ∑[2*C(ceil(n/2), 2)])` -/
def P17183214940412567990.Spec : Prop :=
  ∀ n, (P17183214940412567990.a n : ℤ) = A361275 n

end A361275

/-! ## A361275.P13467873444802862996

`xor(1, ∑[2*C(ceil(n/2), 2)])`
-/

namespace A361275.P13467873444802862996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361275.P13467873444802862996

namespace A361275

/-- `xor(1, ∑[2*C(ceil(n/2), 2)])` -/
def P13467873444802862996.Spec : Prop :=
  ∀ n, (P13467873444802862996.a n : ℤ) = A361275 n

end A361275

/-! ## A361275.P8680365436119308270

`∑[∑[(n-1)*and(1, n)]]+1`
-/

namespace A361275.P8680365436119308270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.land 1 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A361275.P8680365436119308270

namespace A361275

/-- `∑[∑[(n-1)*and(1, n)]]+1` -/
def P8680365436119308270.Spec : Prop :=
  ∀ n, P8680365436119308270.a n = A361275 n

end A361275

/-! ## A361275.P3612548747799736259

`or(1, ∑[∑[floor(n-n^(-1)^n)]])`
-/

namespace A361275.P3612548747799736259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (n : ℚ) ^ ((-1) ^ n : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361275.P3612548747799736259

namespace A361275

/-- `or(1, ∑[∑[floor(n-n^(-1)^n)]])` -/
def P3612548747799736259.Spec : Prop :=
  ∀ n, P3612548747799736259.a n = A361275 n

end A361275

/-! ## A361275.P12459156904088102586

`xor(1, ∑[∑[floor(n-n^(-1)^n)]])`
-/

namespace A361275.P12459156904088102586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (n : ℚ) ^ ((-1) ^ n : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361275.P12459156904088102586

namespace A361275

/-- `xor(1, ∑[∑[floor(n-n^(-1)^n)]])` -/
def P12459156904088102586.Spec : Prop :=
  ∀ n, P12459156904088102586.a n = A361275 n

end A361275

/-! ## A361275.P8866479059990377163

`∑[∑[n-a(a(n-1))]-n]` with `a(0)=1, a(1)=0`
-/

namespace A361275.P8866479059990377163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  (n : ℤ) - f2 (f2 (n - 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361275.P8866479059990377163

namespace A361275

/-- `∑[∑[n-a(a(n-1))]-n]` -/
def P8866479059990377163.Spec : Prop :=
  ∀ n, P8866479059990377163.a n = A361275 n

end A361275

/-! ## A361275.P7205452522121544064

`floor(a(n-2)+(1-n)²/2)` with `a(0)=1, a(1)=1`
-/

namespace A361275.P7205452522121544064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ⌊(a (n - 2) : ℚ) + ((1 - (n : ℤ)) ^ 2 : ℚ) / 2⌋

end

end A361275.P7205452522121544064

namespace A361275

/-- `floor(a(n-2)+(1-n)²/2)` -/
def P7205452522121544064.Spec : Prop :=
  ∀ n, P7205452522121544064.a n = A361275 n

end A361275

/-! ## A361275.P1226047566842873369

`A004442(A006584(n))`
-/

namespace A361275.P1226047566842873369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A006584 n).toNat

end

end A361275.P1226047566842873369

namespace A361275

/-- `A004442(A006584(n))` -/
def P1226047566842873369.Spec : Prop :=
  ∀ n, P1226047566842873369.a n = A361275 n

end A361275

/-!
# A361276: Number of 2413-avoiding even Grassmannian permutations of size n.

The programs for A361276, the canonical program `A361276.P2286089839893847386` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361276 has offset 0).

The definition of A361276 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361276.P2286089839893847386

`ogf((1-x-2x^2+4x^3+2x^4-x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361276

/-- `ogf((1-x-2x^2+4x^3+2x^4-x^5)/(1-2x-x^2+4x^3-x^4-2x^5+x^6))` -/
def P2286089839893847386.Spec : Prop :=
  ∀ n, P2286089839893847386.a n = A361276 n

theorem P2286089839893847386.correct : P2286089839893847386.Spec := by
  intro n
  simp only [A361276]

end A361276

/-! ## A361276.P9984912686620793748

`∑[∑[gcd(n, ∑[n])]-n]+1`
-/

namespace A361276.P9984912686620793748
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A361276.P9984912686620793748

namespace A361276

/-- `∑[∑[gcd(n, ∑[n])]-n]+1` -/
def P9984912686620793748.Spec : Prop :=
  ∀ n, P9984912686620793748.a n = A361276 n

end A361276

/-! ## A361276.P15175190235746490089

`∑[∑[lcm(2, n)/2]-n]+1`
-/

namespace A361276.P15175190235746490089
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A361276.P15175190235746490089

namespace A361276

/-- `∑[∑[lcm(2, n)/2]-n]+1` -/
def P15175190235746490089.Spec : Prop :=
  ∀ n, P15175190235746490089.a n = (A361276 n : ℚ)

end A361276

/-! ## A361276.P10498081870739459458

`∑[∑[n/(char[2*n]+1)]-n]+1`
-/

namespace A361276.P10498081870739459458
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (((if ∃ j, f3 j = n then 1 else 0) + 1 : ℕ) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A361276.P10498081870739459458

namespace A361276

/-- `∑[∑[n/(char[2*n]+1)]-n]+1` -/
def P10498081870739459458.Spec : Prop :=
  ∀ n, P10498081870739459458.a n = (A361276 n : ℚ)

end A361276

/-! ## A361276.P14705336557579439914

`C(A080838(n+1)+1, A080838(n+1))`
-/

namespace A361276.P14705336557579439914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080838 (n + 1) + 1).toNat (A080838 (n + 1)).toNat

end

end A361276.P14705336557579439914

namespace A361276

/-- `C(A080838(n+1)+1, A080838(n+1))` -/
def P14705336557579439914.Spec : Prop :=
  ∀ n, (P14705336557579439914.a n : ℤ) = A361276 n

end A361276

/-! ## A361276.P11062778096555419325

`∑[A001318(n)+1-(n+1)%A313551(n)]`
-/

namespace A361276.P11062778096555419325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + 1 - Int.tmod (n + 1 : ℤ) (A313551 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A361276.P11062778096555419325

namespace A361276

/-- `∑[A001318(n)+1-(n+1)%A313551(n)]` -/
def P11062778096555419325.Spec : Prop :=
  ∀ n, P11062778096555419325.a n = A361276 n

end A361276

/-! ## A361276.P5245142031505041804

`A000027(A080838(n+1)+1)`
-/

namespace A361276.P5245142031505041804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A080838 (n + 1) + 1).toNat

end

end A361276.P5245142031505041804

namespace A361276

/-- `A000027(A080838(n+1)+1)` -/
def P5245142031505041804.Spec : Prop :=
  ∀ n, P5245142031505041804.a n = A361276 n

end A361276

/-!
# A361278: Expansion of e.g.f. exp(x * (1+x)^2).

The programs for A361278, the canonical program `A361278.P11913874024119603516` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361278 has offset 0).

The definition of A361278 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361278.P11913874024119603516

`n!*∑{#}[n, C(2*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361278

/-- `n!*∑{#}[n, C(2*#, n-#)/#!]` -/
def P11913874024119603516.Spec : Prop :=
  ∀ n, P11913874024119603516.a n = (A361278 n : ℚ)

end A361278

/-! ## A361278.P15926607353092365927

`A361277(∑[n+3])`
-/

namespace A361278.P15926607353092365927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361278.P15926607353092365927

namespace A361278

/-- `A361277(∑[n+3])` -/
def P15926607353092365927.Spec : Prop :=
  ∀ n, P15926607353092365927.a n = A361278 n

end A361278

/-!
# A361279: Expansion of e.g.f. exp(x * (1+x)^3).

The programs for A361279, there is no canonical definition to state claims against.
-/

/-! ## A361279.P17288064379753138416

`A361277(C(n+4, 2)+n)`
-/

namespace A361279.P17288064379753138416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (Nat.choose (n + 4) 2 + n)

end

end A361279.P17288064379753138416

/-! ## A361279.P3806114906710790019

`A361277(A046691(n+2))`
-/

namespace A361279.P3806114906710790019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (A046691 (n + 2)).toNat

end

end A361279.P3806114906710790019

/-! ## A361279.P13476685668372333620

`A361277(A155212(n)+4)`
-/

namespace A361279.P13476685668372333620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (A155212 n + 4).toNat

end

end A361279.P13476685668372333620

/-! ## A361279.P17078086345493247011

`A361277(eq[3, A025581(n)])`
-/

namespace A361279.P17078086345493247011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A361279.P17078086345493247011

/-! ## A361279.P6570098773776465962

`A361277(A000217(n+3)+n)`
-/

namespace A361279.P6570098773776465962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A361279.P6570098773776465962

/-!
# A361280: Expansion of e.g.f. exp(x * (1+x)^4).

The programs for A361280, the canonical program `A361280.P14697586996169104132` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361280 has offset 0).

The definition of A361280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361280.P14697586996169104132

`n!*∑{#}[n, C(4*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361280

/-- `n!*∑{#}[n, C(4*#, n-#)/#!]` -/
def P14697586996169104132.Spec : Prop :=
  ∀ n, P14697586996169104132.a n = (A361280 n : ℚ)

end A361280

/-! ## A361280.P4234963707736822196

`A361277(∑[a(n-1)+1]+n)` with `a(0)=7, a(1)=7, a(2)=7, a(3)=7`
-/

namespace A361280.P4234963707736822196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 7, 7, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A361280.P4234963707736822196

namespace A361280

/-- `A361277(∑[a(n-1)+1]+n)` -/
def P4234963707736822196.Spec : Prop :=
  ∀ n, P4234963707736822196.a n = A361280 n

end A361280

/-! ## A361280.P4211836612457109015

`A361277(Δ[A055831(n+4)])`
-/

namespace A361280.P4211836612457109015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (f1 (n + 1) - f1 n).toNat

end

end A361280.P4211836612457109015

namespace A361280

/-- `A361277(Δ[A055831(n+4)])` -/
def P4211836612457109015.Spec : Prop :=
  ∀ n, P4211836612457109015.a n = A361280 n

end A361280

/-! ## A361280.P4176636954309240941

`A361277(A155212(n+1)+3)`
-/

namespace A361280.P4176636954309240941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (A155212 (n + 1) + 3).toNat

end

end A361280.P4176636954309240941

namespace A361280

/-- `A361277(A155212(n+1)+3)` -/
def P4176636954309240941.Spec : Prop :=
  ∀ n, P4176636954309240941.a n = A361280 n

end A361280

/-! ## A361280.P16399335002775497969

`A361277(A027379(n+3)-2)`
-/

namespace A361280.P16399335002775497969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (A027379 (n + 3) - 2).toNat

end

end A361280.P16399335002775497969

namespace A361280

/-- `A361277(A027379(n+3)-2)` -/
def P16399335002775497969.Spec : Prop :=
  ∀ n, P16399335002775497969.a n = A361280 n

end A361280

/-! ## A361280.P12653655695819510634

`A361277(A055998(n+3)-2)`
-/

namespace A361280.P12653655695819510634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (A055998 (n + 3) - 2).toNat

end

end A361280.P12653655695819510634

namespace A361280

/-- `A361277(A055998(n+3)-2)` -/
def P12653655695819510634.Spec : Prop :=
  ∀ n, P12653655695819510634.a n = A361280 n

end A361280

/-! ## A361280.P11266495653972874024

`A361277(A000217(n+4)+n)`
-/

namespace A361280.P11266495653972874024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A361280.P11266495653972874024

namespace A361280

/-- `A361277(A000217(n+4)+n)` -/
def P11266495653972874024.Spec : Prop :=
  ∀ n, P11266495653972874024.a n = A361280 n

end A361280

/-!
# A361281: a(n) = n! * Sum_{k=0..n} binomial(n*k,n-k)/k!.

The programs for A361281, the canonical program `A361281.P4601606874070573132` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361281 has offset 0).

The definition of A361281 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361281.P4601606874070573132

`n!*∑{#}[n, C(n*#, n-#)/#!]`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361281

/-- `n!*∑{#}[n, C(n*#, n-#)/#!]` -/
def P4601606874070573132.Spec : Prop :=
  ∀ n, P4601606874070573132.a n = (A361281 n : ℚ)

end A361281

/-! ## A361281.P2123155693050524029

`A361277(∑[4*n])`
-/

namespace A361281.P2123155693050524029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361281.P2123155693050524029

namespace A361281

/-- `A361277(∑[4*n])` -/
def P2123155693050524029.Spec : Prop :=
  ∀ n, P2123155693050524029.a n = A361281 n

end A361281

/-! ## A361281.P1566412305408520869

`or(1, A361277(A046092(n)))`
-/

namespace A361281.P1566412305408520869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A361277 (A046092 n).toNat)

end

end A361281.P1566412305408520869

namespace A361281

/-- `or(1, A361277(A046092(n)))` -/
def P1566412305408520869.Spec : Prop :=
  ∀ n, P1566412305408520869.a n = A361281 n

end A361281

/-! ## A361281.P12963275822322595877

`A361277(A046092(n))+A000007(n+2)`
-/

namespace A361281.P12963275822322595877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361277 (A046092 n).toNat + A000007 (n + 2)

end

end A361281.P12963275822322595877

namespace A361281

/-- `A361277(A046092(n))+A000007(n+2)` -/
def P12963275822322595877.Spec : Prop :=
  ∀ n, P12963275822322595877.a n = A361281 n

end A361281

/-!
# A361282: Number of rank n+1 simple connected series-parallel matroids on [2n].

The programs for A361282, there is no canonical definition to state claims against.
-/

/-! ## A361282.P17948489321335484551

`A361355(2*(n+1)²+1)`
-/

namespace A361282.P17948489321335484551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361355 (2 * (n + 1) ^ 2 + 1)

end

end A361282.P17948489321335484551

/-! ## A361282.P11209475493720731346

`record[A361355(A093005(n+1)+1)]`
-/

namespace A361282.P11209475493720731346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361355 (A093005 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361282.P11209475493720731346

/-!
# A361283: Expansion of e.g.f. exp(x/(1-x)^4).

The programs for A361283, there is no canonical definition to state claims against.
-/

/-! ## A361283.P14393056460835722316

`A293012(A046691(n+3)-1)`
-/

namespace A361283.P14393056460835722316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A046691 (n + 3) - 1).toNat

end

end A361283.P14393056460835722316

/-! ## A361283.P7306700482199050434

`A293012(A027379(n+3)-2)`
-/

namespace A361283.P7306700482199050434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A027379 (n + 3) - 2).toNat

end

end A361283.P7306700482199050434

/-! ## A361283.P18073211885577811159

`A293012(A000217(n+5)-5)`
-/

namespace A361283.P18073211885577811159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A000217 (n + 5) - 5).toNat

end

end A361283.P18073211885577811159

/-! ## A361283.P9543153316176594277

`A293012(A055831(n+5)-A055831(n+4))`
-/

namespace A361283.P9543153316176594277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (A055831 (n + 5) - A055831 (n + 4)).toNat

end

end A361283.P9543153316176594277

/-! ## A361283.P2226664763361209888

`A293012(A055831(n+5)%A055831(n+4))`
-/

namespace A361283.P2226664763361209888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293012 (Int.tmod (A055831 (n + 5)) (A055831 (n + 4))).toNat

end

end A361283.P2226664763361209888

/-!
# A361284: Number of unordered triples of self-avoiding paths whose sets of nodes are disjoint subsets of a set of n points on a circle; one-node paths are not allowed.

The programs for A361284, there is no canonical definition to state claims against.
-/

/-! ## A361284.P6454238879061373603

`A334708(A148081(n))`
-/

namespace A361284.P6454238879061373603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334708 (A148081 n).toNat

end

end A361284.P6454238879061373603

/-! ## A361284.P6020060390569773039

`A334708(A148082(n))`
-/

namespace A361284.P6020060390569773039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334708 (A148082 n).toNat

end

end A361284.P6020060390569773039

/-! ## A361284.P17798326382849956803

`A201636(A378577(n))`
-/

namespace A361284.P17798326382849956803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201636 (A378577 n).toNat

end

end A361284.P17798326382849956803

/-!
# A361285: Number of unordered triples of self-avoiding paths whose sets of nodes are disjoint subsets of a set of n points on a circle; one-node paths are allowed.

The programs for A361285, the canonical program `A361285.P3030516543509381321` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361285 has offset 1).

The definition of A361285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361285.P3030516543509381321

`(n+1)*n*(n-1)/384*(7^(n-2)+9*5^(n-2)+3^(n+1)+27)`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361285

/-- `(n+1)*n*(n-1)/384*(7^(n-2)+9*5^(n-2)+3^(n+1)+27)` -/
def P3030516543509381321.Spec : Prop :=
  ∀ n, P3030516543509381321.a n = (A361285 (n + 1) : ℚ)

end A361285

/-! ## A361285.P16195594011575538124

`A296345(A326895(n+1))`
-/

namespace A361285.P16195594011575538124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296345 (A326895 (n + 1)).toNat

end

end A361285.P16195594011575538124

namespace A361285

/-- `A296345(A326895(n+1))` -/
def P16195594011575538124.Spec : Prop :=
  ∀ n, P16195594011575538124.a n = A361285 (n + 1)

end A361285

/-!
# A361286: Total over all partitions lambda of n, of factors of s_lambda in the skew Schur function s_( nu/lambda ) with (s_lambda)^2 = Sum( C(nu, lambda, lambda) s_nu ).

The programs for A361286, there is no canonical definition to state claims against.
-/

/-! ## A361286.P10347392809218508888

`A237615(A142859(n+5))+A003242(2*n)`
-/

namespace A361286.P10347392809218508888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237615 (A142859 (n + 5)).toNat + A003242 (2 * n)

end

end A361286.P10347392809218508888

/-!
# A361287: A variant of the inventory sequence A342585: now a row ends when the number of occurrences of the largest term in the sequence thus far has been recorded.

The programs for A361287, there is no canonical definition to state claims against.
-/

/-! ## A361287.P10351800808486680884

`A069011(A076294(n))%A005378(n+3)`
-/

namespace A361287.P10351800808486680884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069011 (A076294 n).toNat) (A005378 (n + 3))

end

end A361287.P10351800808486680884

/-!
# A361288: Number of free polyominoes of size 2n for which there exists at least one closed path that passes through each square exactly once.

The programs for A361288, there is no canonical definition to state claims against.
-/

/-! ## A361288.P11744625616121779168

`A006372(n)-A180026(A114176(3*(n+1)))`
-/

namespace A361288.P11744625616121779168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006372 n - A180026 (A114176 (3 * (n + 1))).toNat

end

end A361288.P11744625616121779168

/-!
# A361290: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where T(n,k) = Sum_{j=0..floor((n-1)/2)} k^(n-1-j) * binomial(n,2*j+1).

The programs for A361290, there is no canonical definition to state claims against.
-/

/-! ## A361290.P10713231036590945246

`A134658(A288972(n))*A255517(n)`
-/

namespace A361290.P10713231036590945246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134658 (A288972 n).toNat * A255517 n

end

end A361290.P10713231036590945246

/-! ## A361290.P8259995428438356489

`A001221(A361148(n+1))*A242249(n)`
-/

namespace A361290.P8259995428438356489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A361148 (n + 1)).toNat * A242249 n

end

end A361290.P8259995428438356489

/-! ## A361290.P11642924167841518959

`A001222(A210549(n+1)^A264909(n))`
-/

namespace A361290.P11642924167841518959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A210549 (n + 1) : ℚ) ^ (A264909 n : ℤ))).toNat

end

end A361290.P11642924167841518959

/-! ## A361290.P15978437581313604121

`and(A227691(A292614(n+2)), A292628(n))`
-/

namespace A361290.P15978437581313604121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A227691 (A292614 (n + 2)).toNat) (A292628 n)

end

end A361290.P15978437581313604121

/-! ## A361290.P13195104657156465066

`A364912(n)%A000120(A288230(n))`
-/

namespace A361290.P13195104657156465066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364912 n) (A000120 (A288230 n).toNat)

end

end A361290.P13195104657156465066

/-!
# A361291: a(n) = ((2*n + 1)^n - 1)/(2*n).

The programs for A361291, the canonical program `A361291.P12874385080101824080` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361291 has offset 1).

The definition of A361291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A361291.P17929703737225771814

`∑{#}[n, A005408(n+1)^#]`
-/

namespace A361291.P17929703737225771814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A005408 (n + 1) ^ k

end

end A361291.P17929703737225771814

namespace A361291

/-- `∑{#}[n, A005408(n+1)^#]` -/
def P17929703737225771814.Spec : Prop :=
  ∀ n, P17929703737225771814.a n = A361291 (n + 1)

end A361291

/-! ## A361291.P12874385080101824080

`((2*(n+1)+1)^(n+1)-1)/(2*(n+1))`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361291

/-- `((2*(n+1)+1)^(n+1)-1)/(2*(n+1))` -/
def P12874385080101824080.Spec : Prop :=
  ∀ n, P12874385080101824080.a n = (A361291 (n + 1) : ℚ)

end A361291

/-! ## A361291.P2845160876190757881

`∑{#}[n, (2*n+3)^#]`
-/

namespace A361291.P2845160876190757881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 * n + 3) ^ k

end

end A361291.P2845160876190757881

namespace A361291

/-- `∑{#}[n, (2*n+3)^#]` -/
def P2845160876190757881.Spec : Prop :=
  ∀ n, (P2845160876190757881.a n : ℤ) = A361291 (n + 1)

end A361291

/-! ## A361291.P6477264944820647752

`A294316(A081270(n))`
-/

namespace A361291.P6477264944820647752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294316 (A081270 n).toNat

end

end A361291.P6477264944820647752

namespace A361291

/-- `A294316(A081270(n))` -/
def P6477264944820647752.Spec : Prop :=
  ∀ n, P6477264944820647752.a n = A361291 (n + 1)

end A361291

/-! ## A361291.P5117410631246402771

`A055129(A022266(n+1))`
-/

namespace A361291.P5117410631246402771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055129 (A022266 (n + 1)).toNat

end

end A361291.P5117410631246402771

namespace A361291

/-- `A055129(A022266(n+1))` -/
def P5117410631246402771.Spec : Prop :=
  ∀ n, P5117410631246402771.a n = A361291 (n + 1)

end A361291

/-!
# A361292: Square array A(n, k), n, k >= 0, read by antidiagonals; A(0, 0) = 1, and otherwise A(n, k) is the sum of all terms in previous antidiagonals at one knight's move away.

The programs for A361292, there is no canonical definition to state claims against.
-/

/-! ## A361292.P13876623071679029529

`A052344(A220595(n+1)+A001223(n+1))`
-/

namespace A361292.P13876623071679029529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052344 (A220595 (n + 1) + A001223 (n + 1)).toNat

end

end A361292.P13876623071679029529

/-! ## A361292.P8662049345959906950

`and(A008327(n), A373331(A303682(n+1)))`
-/

namespace A361292.P8662049345959906950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008327 n) (A373331 (A303682 (n + 1)).toNat)

end

end A361292.P8662049345959906950

/-! ## A361292.P13032095793541449266

`and(A133687(n), A373331(A303682(n+1)))`
-/

namespace A361292.P13032095793541449266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133687 n) (A373331 (A303682 (n + 1)).toNat)

end

end A361292.P13032095793541449266

/-! ## A361292.P18412921159876349572

`and(A333159(n), A373331(A303682(n+1)))`
-/

namespace A361292.P18412921159876349572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A333159 n) (A373331 (A303682 (n + 1)).toNat)

end

end A361292.P18412921159876349572

/-! ## A361292.P8698046006211925046

`A348536(A001122(n+1)*A346517(n))`
-/

namespace A361292.P8698046006211925046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348536 (A001122 (n + 1) * A346517 n).toNat

end

end A361292.P8698046006211925046

/-!
# A361293: a(n) = 20 * a(n-1) - 90 * a(n-2) for n>1, with a(0)=0, a(1)=1.

The programs for A361293, the canonical program `A361293.P9301768795898917479` is in `Seq.B000.C046`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A361293 has offset 0).

The definition of A361293 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*a(n-1)-90*a(n-2)` (program `A361293.P9301768795898917479`, by `A361293.P9301768795898917479.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A361293.P17477638478454257919

`ogf(x/(1-20x+90x^2))`
-/

namespace A361293.P17477638478454257919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -20, 90] n

end

end A361293.P17477638478454257919

namespace A361293

/-- `ogf(x/(1-20x+90x^2))` -/
def P17477638478454257919.Spec : Prop :=
  ∀ n, P17477638478454257919.a n = A361293 n

end A361293

/-! ## A361293.P18081971564713521819

`∑{#}[floor((n-1)/2), 10^(n-1-#)*C(n, 2*#+1)]`
-/

namespace A361293.P18081971564713521819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 1 : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (10 : ℚ) ^ ((n : ℤ) - 1 - (k : ℤ) : ℤ) * (Nat.choose n (2 * k + 1) : ℚ)

end

end A361293.P18081971564713521819

namespace A361293

/-- `∑{#}[floor((n-1)/2), 10^(n-1-#)*C(n, 2*#+1)]` -/
def P18081971564713521819.Spec : Prop :=
  ∀ n, P18081971564713521819.a n = (A361293 n : ℚ)

end A361293

/-! ## A361293.P9301768795898917479

`20*a(n-1)-90*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C046`.
-/

namespace A361293

/-- `20*a(n-1)-90*a(n-2)` -/
def P9301768795898917479.Spec : Prop :=
  ∀ n, P9301768795898917479.a n = A361293 n

theorem P9301768795898917479.correct : P9301768795898917479.Spec := by
  intro n
  simp only [A361293]

end A361293

/-! ## A361293.P17688295889874139247

`((10+sqrt(10))^n-(10-sqrt(10))^n)/(2*sqrt(10))`
-/

namespace A361293.P17688295889874139247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((10 + Real.sqrt (10 : ℝ)) ^ n - (10 - Real.sqrt (10 : ℝ)) ^ n) / (2 * Real.sqrt (10 : ℝ))

end

end A361293.P17688295889874139247

namespace A361293

/-- `((10+sqrt(10))^n-(10-sqrt(10))^n)/(2*sqrt(10))` -/
def P17688295889874139247.Spec : Prop :=
  ∀ n, P17688295889874139247.a n = (A361293 n : ℝ)

theorem P17688295889874139247.correct : P17688295889874139247.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A361293, Nat.add_sub_cancel, A361293.P17688295889874139247.a, A361293.P9301768795898917479.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A361293, Nat.add_sub_cancel, A361293.P17688295889874139247.a, A361293.P9301768795898917479.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A361293

/-!
# A361294: A variant of payphone permutations: given a circular booth with n payphones, one of which is already occupied, a(n) is the number ways for n-1 people to choose the payphones in order, where each person chooses an unoccupied payphone such that the closest occupied payphone is as distant as possible, and a payphone adjacent to a single occupied payphone is preferred over a payphone sandwiched between two occupied payphones.

The programs for A361294, there is no canonical definition to state claims against.
-/

/-! ## A361294.P17683922061502669423

`A095240(n+2)/2`
-/

namespace A361294.P17683922061502669423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095240 (n + 2) : ℚ) / 2

end

end A361294.P17683922061502669423

/-! ## A361294.P2224280372994651816

`A095239(n+1)/(n+1)`
-/

namespace A361294.P2224280372994651816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095239 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A361294.P2224280372994651816

/-! ## A361294.P4720844930548078810

`A014682(A095240(n+2))`
-/

namespace A361294.P4720844930548078810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A095240 (n + 2)).toNat

end

end A361294.P4720844930548078810

/-! ## A361294.P13818046490683967608

`A001281(A095240(n+2))`
-/

namespace A361294.P13818046490683967608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A095240 (n + 2)).toNat

end

end A361294.P13818046490683967608

/-! ## A361294.P12919680892884852331

`A004526(A095240(n+2)+1)`
-/

namespace A361294.P12919680892884852331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A095240 (n + 2) + 1).toNat

end

end A361294.P12919680892884852331

/-!
# A361295: A variant of payphone permutations: given a row of n payphones, a(n) is the number ways for n people to choose the payphones in order, where each person chooses an unoccupied payphone such that the closest occupied payphone is as distant as possible, and among the available payphones adjacent to a single occupied payphone the most preferred are payphones at open ends.

The programs for A361295, there is no canonical definition to state claims against.
-/

/-! ## A361295.P3524600775913964374

`record[A166952(n)-A025227(n)]`
-/

namespace A361295.P3524600775913964374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166952 n - A025227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A361295.P3524600775913964374

/-! ## A361295.P8443724717381591860

`A000005(A079801(n+1))*A279375(n)`
-/

namespace A361295.P8443724717381591860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A079801 (n + 1)).toNat * A279375 n

end

end A361295.P8443724717381591860

/-! ## A361295.P15973632660336896476

`A037225(n)*A093717(A264635(n+1))`
-/

namespace A361295.P15973632660336896476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n * A093717 (A264635 (n + 1)).toNat

end

end A361295.P15973632660336896476

/-! ## A361295.P2870074594234125877

`A010554(A357572(n)+A299759(3*n+4))`
-/

namespace A361295.P2870074594234125877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A357572 n + A299759 (3 * n + 4)).toNat

end

end A361295.P2870074594234125877

/-!
# A361296: A variant of payphone permutations: given a circular booth with n payphones, a(n) is the number ways for n people to choose the payphones in order, where each person chooses an unoccupied payphone such that the closest occupied payphone is as distant as possible.

The programs for A361296, there is no canonical definition to state claims against.
-/

/-! ## A361296.P18065120282201195821

`(n+1)*A362192(n+1)`
-/

namespace A361296.P18065120282201195821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A362192 (n + 1)

end

end A361296.P18065120282201195821

/-! ## A361296.P8909708971383337386

`A319100(A000984(n))*A347043(n+1)`
-/

namespace A361296.P8909708971383337386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A000984 n).toNat * A347043 (n + 1)

end

end A361296.P8909708971383337386

/-! ## A361296.P2899434708145918778

`A048242(n+1)*A126795(A006252(n+3))`
-/

namespace A361296.P2899434708145918778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048242 (n + 1) * A126795 (A006252 (n + 3)).toNat

end

end A361296.P2899434708145918778

/-! ## A361296.P16162223420757550966

`A126795(A006252(n+3))*A346132(n+1)`
-/

namespace A361296.P16162223420757550966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126795 (A006252 (n + 3)).toNat * A346132 (n + 1)

end

end A361296.P16162223420757550966

/-!
# A361297: Number of n-dimensional cubic lattice walks with 2n steps from origin to origin and avoiding early returns to the origin.

The programs for A361297, there is no canonical definition to state claims against.
-/

/-! ## A361297.P13831713410534664151

`A361397(∑[4*n])`
-/

namespace A361297.P13831713410534664151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361397 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A361297.P13831713410534664151

/-! ## A361297.P9769078264535579075

`A361397(A046092(n))^A178489(n)`
-/

namespace A361297.P9769078264535579075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361397 (A046092 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A361297.P9769078264535579075

/-! ## A361297.P13243297085736098304

`gcd(A000038(n), A361397(A046092(n)))`
-/

namespace A361297.P13243297085736098304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A361397 (A046092 n).toNat)

end

end A361297.P13243297085736098304

/-! ## A361297.P13286686416309396051

`or(A000007(n), A361397(A046092(n)))`
-/

namespace A361297.P13286686416309396051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A361397 (A046092 n).toNat)

end

end A361297.P13286686416309396051

/-! ## A361297.P441826131495787521

`A178489(n+1)*A361397(A046092(n))`
-/

namespace A361297.P441826131495787521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (n + 1) * A361397 (A046092 n).toNat

end

end A361297.P441826131495787521

/-!
# A361298: Second differences of the overpartitions.

The programs for A361298, there is no canonical definition to state claims against.
-/

/-! ## A361298.P1060406300958595528

`A015128(n+2)-2*A015128(n+1)+A015128(n)`
-/

namespace A361298.P1060406300958595528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 (n + 2) - 2 * A015128 (n + 1) + A015128 n

end

end A361298.P1060406300958595528

/-! ## A361298.P4265574918946413987

`A300415(n+2)-A300415(n)`
-/

namespace A361298.P4265574918946413987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300415 (n + 2) - A300415 n

end

end A361298.P4265574918946413987

/-! ## A361298.P8729335297990772837

`Δ[A211971(n+1)]`
-/

namespace A361298.P8729335297990772837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361298.P8729335297990772837

/-! ## A361298.P16249685732296489120

`A211971(n+2)-A211971(n+1)`
-/

namespace A361298.P16249685732296489120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211971 (n + 2) - A211971 (n + 1)

end

end A361298.P16249685732296489120

/-! ## A361298.P318393810685165369

`Δ[Δ[A015128(n)]]`
-/

namespace A361298.P318393810685165369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015128 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361298.P318393810685165369

/-! ## A361298.P4137498590726795057

`Δ[Δ[abs(A004402(n))]]`
-/

namespace A361298.P4137498590726795057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004402 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361298.P4137498590726795057

/-! ## A361298.P8804204673429204776

`Δ[abs(Δ[A304627(n)])]`
-/

namespace A361298.P8804204673429204776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304627 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361298.P8804204673429204776

/-! ## A361298.P9923491543623784270

`Δ[Δ[A309266(n)-a(n-1)]]` with `a(0)=1`
-/

namespace A361298.P9923491543623784270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A309266 n - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A361298.P9923491543623784270

