import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A232300: Number of 6Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232300, there is no canonical definition to state claims against.
-/

/-! ## A232300.P16114702315930635572

`A232295(eq[7, A131818(n+1)])`
-/

namespace A232300.P16114702315930635572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232300.P16114702315930635572

/-! ## A232300.P1268495365252660311

`A232295(Δ[A023545(n+1)]+10)`
-/

namespace A232300.P1268495365252660311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (f1 (n + 1) - f1 n + 10).toNat

end

end A232300.P1268495365252660311

/-!
# A232301: Number of 7Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally.

The programs for A232301, there is no canonical definition to state claims against.
-/

/-! ## A232301.P12814568089481458275

`A232295(eq[8, A131818(n+1)])`
-/

namespace A232301.P12814568089481458275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232295 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232301.P12814568089481458275

/-!
# A232302: Number of n X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically or antidiagonally.

The programs for A232302, there is no canonical definition to state claims against.
-/

/-! ## A232302.P5655499928684298224

`A232309(∑[4*n]+1)`
-/

namespace A232302.P5655499928684298224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232302.P5655499928684298224

/-! ## A232302.P16157514193515501734

`A232309(A001844(n))+A034486(n+1)`
-/

namespace A232302.P16157514193515501734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A001844 n).toNat + A034486 (n + 1)

end

end A232302.P16157514193515501734

/-! ## A232302.P1120866316890335675

`A232309(A001844(n))%A184612(3*n+5)`
-/

namespace A232302.P1120866316890335675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232309 (A001844 n).toNat) (A184612 (3 * n + 5))

end

end A232302.P1120866316890335675

/-! ## A232302.P214967928655445312

`A232309(A001844(n))^A294746(n)`
-/

namespace A232302.P214967928655445312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232309 (A001844 n).toNat : ℚ) ^ (A294746 n : ℤ)

end

end A232302.P214967928655445312

/-!
# A232303: Number of n X 2 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically or antidiagonally.

The programs for A232303, the canonical program `A232303.P11948635783009258135` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232303 has offset 1).

The definition of A232303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232303.P11948635783009258135

`ogf((3+19x+8x^2+7x^3+16x^4)/(1-6x-9x^2-11x^3+x^4-16x^5))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232303

/-- `ogf((3+19x+8x^2+7x^3+16x^4)/(1-6x-9x^2-11x^3+x^4-16x^5))` -/
def P11948635783009258135.Spec : Prop :=
  ∀ n, P11948635783009258135.a n = A232303 (n + 1)

theorem P11948635783009258135.correct : P11948635783009258135.Spec := by
  intro n
  simp only [A232303, Nat.add_sub_cancel]

end A232303

/-! ## A232303.P15760126412196789666

`A232309(∑[n+1]+2)`
-/

namespace A232303.P15760126412196789666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232303.P15760126412196789666

namespace A232303

/-- `A232309(∑[n+1]+2)` -/
def P15760126412196789666.Spec : Prop :=
  ∀ n, P15760126412196789666.a n = A232303 (n + 1)

end A232303

/-! ## A232303.P4299513902571286854

`or(1, A232309(A000096(n)+3))`
-/

namespace A232303.P4299513902571286854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232309 (A000096 n + 3).toNat)

end

end A232303.P4299513902571286854

namespace A232303

/-- `or(1, A232309(A000096(n)+3))` -/
def P4299513902571286854.Spec : Prop :=
  ∀ n, P4299513902571286854.a n = A232303 (n + 1)

end A232303

/-! ## A232303.P4350731686323963112

`record[gcd(A002262(n), A232309(n+2))]`
-/

namespace A232303.P4350731686323963112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232309 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232303.P4350731686323963112

namespace A232303

/-- `record[gcd(A002262(n), A232309(n+2))]` -/
def P4350731686323963112.Spec : Prop :=
  ∀ n, (P4350731686323963112.a n : ℤ) = A232303 (n + 1)

end A232303

/-! ## A232303.P17274430155225815417

`record[root(A232309(n+2), A193648(n+1))]`
-/

namespace A232303.P17274430155225815417
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232309 (n + 2) : ℝ) ^ (1 / (A193648 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232303.P17274430155225815417

namespace A232303

/-- `record[root(A232309(n+2), A193648(n+1))]` -/
def P17274430155225815417.Spec : Prop :=
  ∀ n, P17274430155225815417.a n = (A232303 (n + 1) : ℝ)

end A232303

/-!
# A232304: Number of nX3 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically or antidiagonally.

The programs for A232304, there is no canonical definition to state claims against.
-/

/-! ## A232304.P669721549683391834

`A232309(∑[n+2]+4)`
-/

namespace A232304.P669721549683391834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232304.P669721549683391834

/-! ## A232304.P37188315334066400

`or(1, A232309(A167614(n+1)))`
-/

namespace A232304.P37188315334066400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232309 (A167614 (n + 1)).toNat)

end

end A232304.P37188315334066400

/-! ## A232304.P11473990012741940617

`A232309(A167614(n+1))%A013827(n)`
-/

namespace A232304.P11473990012741940617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232309 (A167614 (n + 1)).toNat) (A013827 n)

end

end A232304.P11473990012741940617

/-! ## A232304.P16462006229270423983

`lcm(A057077(n), A232309(A167614(n+1)))`
-/

namespace A232304.P16462006229270423983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A232309 (A167614 (n + 1)).toNat)

end

end A232304.P16462006229270423983

/-! ## A232304.P16373689017647034537

`A232309(A167614(n+1))*A348039(n+1)`
-/

namespace A232304.P16373689017647034537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A167614 (n + 1)).toNat * A348039 (n + 1)

end

end A232304.P16373689017647034537

/-!
# A232305: Number of nX4 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically or antidiagonally.

The programs for A232305, there is no canonical definition to state claims against.
-/

/-! ## A232305.P11249319135359740354

`A232309(A052905(n)+9)`
-/

namespace A232305.P11249319135359740354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A052905 n + 9).toNat

end

end A232305.P11249319135359740354

/-! ## A232305.P17360689804219077055

`A232309(A167614(n+2)+1)`
-/

namespace A232305.P17360689804219077055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A167614 (n + 2) + 1).toNat

end

end A232305.P17360689804219077055

/-! ## A232305.P10495520449643655158

`A232309(A055998(n+1)+7)`
-/

namespace A232305.P10495520449643655158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A055998 (n + 1) + 7).toNat

end

end A232305.P10495520449643655158

/-! ## A232305.P2019733828112955212

`A232309(A000217(n+4)-n)`
-/

namespace A232305.P2019733828112955212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A000217 (n + 4) - (n : ℤ)).toNat

end

end A232305.P2019733828112955212

/-! ## A232305.P5101126794424828403

`A232309(Δ[A023545(n+1)-n²])`
-/

namespace A232305.P5101126794424828403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (f1 (n + 1) - f1 n).toNat

end

end A232305.P5101126794424828403

/-!
# A232306: Number of n X 5 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically or antidiagonally.

The programs for A232306, there is no canonical definition to state claims against.
-/

/-! ## A232306.P5148950514436568408

`A232309(A167499(n+3))`
-/

namespace A232306.P5148950514436568408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A167499 (n + 3)).toNat

end

end A232306.P5148950514436568408

/-! ## A232306.P3371316362768498971

`A232309(A077169(n+5))`
-/

namespace A232306.P3371316362768498971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A077169 (n + 5)).toNat

end

end A232306.P3371316362768498971

/-! ## A232306.P2470672998583343268

`A232309(A155212(n)+13)`
-/

namespace A232306.P2470672998583343268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A155212 n + 13).toNat

end

end A232306.P2470672998583343268

/-! ## A232306.P9012394695284638310

`A232309(A000217(n+4)+5)`
-/

namespace A232306.P9012394695284638310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A000217 (n + 4) + 5).toNat

end

end A232306.P9012394695284638310

/-! ## A232306.P10758712718729107913

`A232309(A052905(n+3)-A005408(n))`
-/

namespace A232306.P10758712718729107913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A052905 (n + 3) - A005408 n).toNat

end

end A232306.P10758712718729107913

/-!
# A232307: Number of n X 6 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically or antidiagonally.

The programs for A232307, there is no canonical definition to state claims against.
-/

/-! ## A232307.P15928687086692159858

`A232309(eq[7, A131818(n+1)])`
-/

namespace A232307.P15928687086692159858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232307.P15928687086692159858

/-! ## A232307.P13805671549097313625

`A232309(A374007(n+1))`
-/

namespace A232307.P13805671549097313625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A374007 (n + 1)).toNat

end

end A232307.P13805671549097313625

/-! ## A232307.P13075868826299431734

`A232309(A052905(n+3))`
-/

namespace A232307.P13075868826299431734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A052905 (n + 3)).toNat

end

end A232307.P13075868826299431734

/-! ## A232307.P1056255364665583723

`A232309(eq[6, A200370(n+1)])`
-/

namespace A232307.P1056255364665583723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232307.P1056255364665583723

/-! ## A232307.P4800224020710792425

`A232309(eq[8, A185782(n+1)])`
-/

namespace A232307.P4800224020710792425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232307.P4800224020710792425

/-!
# A232308: Number of nX7 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally, vertically or antidiagonally.

The programs for A232308, there is no canonical definition to state claims against.
-/

/-! ## A232308.P14023071626322861679

`A232309(A167614(n+5)+4)`
-/

namespace A232308.P14023071626322861679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A167614 (n + 5) + 4).toNat

end

end A232308.P14023071626322861679

/-! ## A232308.P7805404833418021183

`A232309(A055998(n+5)-(n-3))`
-/

namespace A232308.P7805404833418021183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A055998 (n + 5) - ((n : ℤ) - 3)).toNat

end

end A232308.P7805404833418021183

/-! ## A232308.P2406498054188707848

`A232309(A374008(n+1))`
-/

namespace A232308.P2406498054188707848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (A374008 (n + 1)).toNat

end

end A232308.P2406498054188707848

/-! ## A232308.P13696095713444459052

`A232309(eq[7, A200370(n+1)])`
-/

namespace A232308.P13696095713444459052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232309 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232308.P13696095713444459052

/-!
# A232310: Number of (n+1)X(n+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232310, there is no canonical definition to state claims against.
-/

/-! ## A232310.P17695150819898679242

`A232316(∑[4*n]+1)`
-/

namespace A232310.P17695150819898679242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232310.P17695150819898679242

/-! ## A232310.P11777601154187828119

`record[A003982(n)*A232316(n+1)]`
-/

namespace A232310.P11777601154187828119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232310.P11777601154187828119

/-! ## A232310.P17167939245002634798

`record[gcd(A114327(n), A232316(n+1))]`
-/

namespace A232310.P17167939245002634798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A232316 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232310.P17167939245002634798

/-! ## A232310.P12651965618005618448

`A053878(n+2)*A232316(A001844(n))`
-/

namespace A232310.P12651965618005618448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053878 (n + 2) * A232316 (A001844 n).toNat

end

end A232310.P12651965618005618448

/-! ## A232310.P15265412320198095311

`A232316(A001844(n))+A008683(2*(n+2)²)`
-/

namespace A232310.P15265412320198095311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A001844 n).toNat + A008683 (2 * (n + 2) ^ 2)

end

end A232310.P15265412320198095311

/-!
# A232311: Number of (n+1)X(3+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232311, the canonical program `A232311.P6808753863077990916` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232311 has offset 1).

The definition of A232311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 106 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232311.P6808753863077990916

`ogf((16-21x-12x^2-2x^3)/(1-10x+11x^2+5x^3+x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232311

/-- `ogf((16-21x-12x^2-2x^3)/(1-10x+11x^2+5x^3+x^4))` -/
def P6808753863077990916.Spec : Prop :=
  ∀ n, P6808753863077990916.a n = A232311 (n + 1)

theorem P6808753863077990916.correct : P6808753863077990916.Spec := by
  intro n
  simp only [A232311, Nat.add_sub_cancel]

end A232311

/-! ## A232311.P9843744766481775754

`A232316(∑[n+3]+1)`
-/

namespace A232311.P9843744766481775754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232311.P9843744766481775754

namespace A232311

/-- `A232316(∑[n+3]+1)` -/
def P9843744766481775754.Spec : Prop :=
  ∀ n, P9843744766481775754.a n = A232311 (n + 1)

end A232311

/-!
# A232312: Number of (n+1)X(4+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232312, there is no canonical definition to state claims against.
-/

/-! ## A232312.P6868020332332645858

`A232316(A141214(n+1))`
-/

namespace A232312.P6868020332332645858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A141214 (n + 1)).toNat

end

end A232312.P6868020332332645858

/-! ## A232312.P10704309581906453671

`A232316(A055998(n+2))`
-/

namespace A232312.P10704309581906453671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A055998 (n + 2)).toNat

end

end A232312.P10704309581906453671

/-! ## A232312.P6281750044854998466

`A232316(A056000(n)+7)`
-/

namespace A232312.P6281750044854998466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A056000 n + 7).toNat

end

end A232312.P6281750044854998466

/-! ## A232312.P12786168731950075546

`A232316(eq[3, A193592(n)])`
-/

namespace A232312.P12786168731950075546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232312.P12786168731950075546

/-! ## A232312.P9094756004595186409

`A232316(A052905(n+1)+2)`
-/

namespace A232312.P9094756004595186409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A052905 (n + 1) + 2).toNat

end

end A232312.P9094756004595186409

/-!
# A232313: Number of (n+1)X(5+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232313, there is no canonical definition to state claims against.
-/

/-! ## A232313.P7002598444875929641

`A232316(∑[n+5]+6)`
-/

namespace A232313.P7002598444875929641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A232313.P7002598444875929641

/-! ## A232313.P12497335467689635934

`A053878(n+2)*A232316(A046691(n+3))`
-/

namespace A232313.P12497335467689635934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053878 (n + 2) * A232316 (A046691 (n + 3)).toNat

end

end A232313.P12497335467689635934

/-!
# A232314: Number of (n+1)X(6+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232314, there is no canonical definition to state claims against.
-/

/-! ## A232314.P16059355375806343453

`A232316(A052905(n+3))`
-/

namespace A232314.P16059355375806343453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A052905 (n + 3)).toNat

end

end A232314.P16059355375806343453

/-! ## A232314.P8639912261807946108

`A232316(eq[3, A219347(n)])`
-/

namespace A232314.P8639912261807946108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232314.P8639912261807946108

/-! ## A232314.P7437492196284355258

`A232316(eq[5, A193592(n)])`
-/

namespace A232314.P7437492196284355258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232314.P7437492196284355258

/-! ## A232314.P758207359041023435

`A232316(Δ[Δ[A006504(n+1)]])`
-/

namespace A232314.P758207359041023435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (f1 (n + 1) - f1 n).toNat

end

end A232314.P758207359041023435

/-! ## A232314.P15494272562576725148

`A232316(Δ[A264443(n+1)]-1)`
-/

namespace A232314.P15494272562576725148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (f1 (n + 1) - f1 n - 1).toNat

end

end A232314.P15494272562576725148

/-!
# A232315: Number of (n+1) X (7+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232315, there is no canonical definition to state claims against.
-/

/-! ## A232315.P10281522803422902375

`A232316(eq[4, A219347(n)])`
-/

namespace A232315.P10281522803422902375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232315.P10281522803422902375

/-! ## A232315.P10763783682908949370

`A232316(eq[6, A193592(n)])`
-/

namespace A232315.P10763783682908949370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232315.P10763783682908949370

/-! ## A232315.P5834424526540673568

`A232316(A141214(n+4)-3)`
-/

namespace A232315.P5834424526540673568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A141214 (n + 4) - 3).toNat

end

end A232315.P5834424526540673568

/-! ## A232315.P18430647956331923547

`A232316(eq[10, A185782(n+1)])`
-/

namespace A232315.P18430647956331923547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232315.P18430647956331923547

/-! ## A232315.P14915341799265480149

`A232316(eq[7, A200370(n+1)])`
-/

namespace A232315.P14915341799265480149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232315.P14915341799265480149

/-!
# A232317: Number of (1+1)X(n+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232317, the canonical program `A232317.P11924516531094573978` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232317 has offset 1).

The definition of A232317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232317.P11913457943153635453

`ogf((2-x-x^2-x^3+x^4)/(1-3x-x^2+2x^4))`
-/

namespace A232317.P11913457943153635453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -1, -1, 1] [1, -3, -1, 0, 2] n

end

end A232317.P11913457943153635453

namespace A232317

/-- `ogf((2-x-x^2-x^3+x^4)/(1-3x-x^2+2x^4))` -/
def P11913457943153635453.Spec : Prop :=
  ∀ n, P11913457943153635453.a n = A232317 (n + 1)

end A232317

/-! ## A232317.P11924516531094573978

`3*a(n-1)+a(n-2)-2*a(n-4)` with `a(0)=2, a(1)=5, a(2)=16, a(3)=52, a(4)=169`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232317

/-- `3*a(n-1)+a(n-2)-2*a(n-4)` -/
def P11924516531094573978.Spec : Prop :=
  ∀ n, P11924516531094573978.a n = A232317 (n + 1)

theorem P11924516531094573978.correct : P11924516531094573978.Spec := by
  intro n
  simp only [A232317, Nat.add_sub_cancel]

end A232317

/-! ## A232317.P8874605238071426425

`A232316(∑[n]+1)`
-/

namespace A232317.P8874605238071426425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232317.P8874605238071426425

namespace A232317

/-- `A232316(∑[n]+1)` -/
def P8874605238071426425.Spec : Prop :=
  ∀ n, P8874605238071426425.a n = A232317 (n + 1)

end A232317

/-! ## A232317.P14175545258977004264

`record[A232316(n+1)/A022167(n)]`
-/

namespace A232317.P14175545258977004264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232316 (n + 1) : ℚ) / (A022167 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232317.P14175545258977004264

namespace A232317

/-- `record[A232316(n+1)/A022167(n)]` -/
def P14175545258977004264.Spec : Prop :=
  ∀ n, P14175545258977004264.a n = (A232317 (n + 1) : ℚ)

end A232317

/-! ## A232317.P3492745310695086019

`record[A232316(n+1)/A155493(n)]`
-/

namespace A232317.P3492745310695086019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232316 (n + 1) : ℚ) / (A155493 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232317.P3492745310695086019

namespace A232317

/-- `record[A232316(n+1)/A155493(n)]` -/
def P3492745310695086019.Spec : Prop :=
  ∀ n, P3492745310695086019.a n = (A232317 (n + 1) : ℚ)

end A232317

/-!
# A232318: Number of (2+1)X(n+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232318, there is no canonical definition to state claims against.
-/

/-! ## A232318.P661629505548797136

`A232316(∑[n+1]+2)`
-/

namespace A232318.P661629505548797136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232318.P661629505548797136

/-! ## A232318.P4839772840329516332

`record[root(A232316(n+2), A059268(n))]`
-/

namespace A232318.P4839772840329516332
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232316 (n + 2) : ℝ) ^ (1 / (A059268 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232318.P4839772840329516332

/-! ## A232318.P3796563760541898961

`record[gcd(A002262(n), A232316(n+2))]`
-/

namespace A232318.P3796563760541898961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A232316 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232318.P3796563760541898961

/-! ## A232318.P11246325313496793142

`record[root(A232316(n+3), A232295(n+1))]`
-/

namespace A232318.P11246325313496793142
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232316 (n + 3) : ℝ) ^ (1 / (A232295 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232318.P11246325313496793142

/-! ## A232318.P14852972966833263786

`A232316(A000096(n)+3)%A075956(n)`
-/

namespace A232318.P14852972966833263786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232316 (A000096 n + 3).toNat) (A075956 n)

end

end A232318.P14852972966833263786

/-!
# A232319: Number of (3+1) X (n+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232319, there is no canonical definition to state claims against.
-/

/-! ## A232319.P4456064071945851172

`A232316(∑[n+2]+4)`
-/

namespace A232319.P4456064071945851172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232319.P4456064071945851172

/-! ## A232319.P13149035363736895814

`A232316(A167614(n+1))+A178798(n)`
-/

namespace A232319.P13149035363736895814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A167614 (n + 1)).toNat + A178798 n

end

end A232319.P13149035363736895814

/-! ## A232319.P18400449333351439026

`lcm(A033999(n), A232316(A167614(n+1)))`
-/

namespace A232319.P18400449333351439026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A232316 (A167614 (n + 1)).toNat)

end

end A232319.P18400449333351439026

/-! ## A232319.P9526318009003784914

`or(A000007(n), A232316(A167614(n+1)))`
-/

namespace A232319.P9526318009003784914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A232316 (A167614 (n + 1)).toNat)

end

end A232319.P9526318009003784914

/-! ## A232319.P13703101281591170327

`or(A130706(n), A232316(A167614(n+1)))`
-/

namespace A232319.P13703101281591170327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130706 n) (A232316 (A167614 (n + 1)).toNat)

end

end A232319.P13703101281591170327

/-!
# A232320: Number of (4+1)X(n+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232320, there is no canonical definition to state claims against.
-/

/-! ## A232320.P5048550894090723104

`A232316(A141214(n)+7)`
-/

namespace A232320.P5048550894090723104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A141214 n + 7).toNat

end

end A232320.P5048550894090723104

/-! ## A232320.P17780164457162520307

`A232316(A052905(n)+9)`
-/

namespace A232320.P17780164457162520307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A052905 n + 9).toNat

end

end A232320.P17780164457162520307

/-! ## A232320.P7328977042899794744

`A232316(A055999(n)+10)`
-/

namespace A232320.P7328977042899794744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A055999 n + 10).toNat

end

end A232320.P7328977042899794744

/-! ## A232320.P10759587455121711072

`A232316(A167614(n+2)+1)`
-/

namespace A232320.P10759587455121711072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A167614 (n + 2) + 1).toNat

end

end A232320.P10759587455121711072

/-! ## A232320.P6928688421419347160

`A232316(A000217(n+3)+4)`
-/

namespace A232320.P6928688421419347160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A000217 (n + 3) + 4).toNat

end

end A232320.P6928688421419347160

/-!
# A232321: Number of (5+1) X (n+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232321, there is no canonical definition to state claims against.
-/

/-! ## A232321.P13710453026709403806

`A232316(A155212(n)+13)`
-/

namespace A232321.P13710453026709403806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A155212 n + 13).toNat

end

end A232321.P13710453026709403806

/-! ## A232321.P7596361405349606059

`A232316(A056000(n)+15)`
-/

namespace A232321.P7596361405349606059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A056000 n + 15).toNat

end

end A232321.P7596361405349606059

/-! ## A232321.P13982374480381527485

`A232316(eq[7, A066657(n)])`
-/

namespace A232321.P13982374480381527485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232321.P13982374480381527485

/-! ## A232321.P9487833678794371070

`A232316(A000124(n+4)+4)`
-/

namespace A232321.P9487833678794371070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A000124 (n + 4) + 4).toNat

end

end A232321.P9487833678794371070

/-! ## A232321.P11861521414515475181

`A232316(eq[6, A131818(n+1)])`
-/

namespace A232321.P11861521414515475181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232321.P11861521414515475181

/-!
# A232322: Number of (6+1)X(n+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232322, there is no canonical definition to state claims against.
-/

/-! ## A232322.P11611796191018454415

`A232316(Δ[A264443(n)]+10)`
-/

namespace A232322.P11611796191018454415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (f1 (n + 1) - f1 n + 10).toNat

end

end A232322.P11611796191018454415

/-! ## A232322.P1537575571356030077

`A232316(A167499(n+4)+1)`
-/

namespace A232322.P1537575571356030077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A167499 (n + 4) + 1).toNat

end

end A232322.P1537575571356030077

/-! ## A232322.P10821164401357703182

`A232316(A000217(n+5)+6)`
-/

namespace A232322.P10821164401357703182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A000217 (n + 5) + 6).toNat

end

end A232322.P10821164401357703182

/-! ## A232322.P13478442001067597488

`A232316(eq[7, A131818(n+1)])`
-/

namespace A232322.P13478442001067597488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232322.P13478442001067597488

/-! ## A232322.P1608238651270888197

`A232316(Δ[A023545(n+1)]+10)`
-/

namespace A232322.P1608238651270888197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (f1 (n + 1) - f1 n + 10).toNat

end

end A232322.P1608238651270888197

/-!
# A232323: Number of (7+1)X(n+1) 0..1 arrays with every element equal to some horizontal or antidiagonal neighbor, with top left element zero.

The programs for A232323, there is no canonical definition to state claims against.
-/

/-! ## A232323.P7469901927665254418

`A232316(A056119(n)+28)`
-/

namespace A232323.P7469901927665254418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A056119 n + 28).toNat

end

end A232323.P7469901927665254418

/-! ## A232323.P1255092441341585506

`A232316(eq[11, A066657(n)])`
-/

namespace A232323.P1255092441341585506
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232323.P1255092441341585506

/-! ## A232323.P9339841880910141776

`A232316(A167614(n+5)+4)`
-/

namespace A232323.P9339841880910141776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A167614 (n + 5) + 4).toNat

end

end A232323.P9339841880910141776

/-! ## A232323.P11007635246014415611

`A232316(eq[8, A131818(n+1)])`
-/

namespace A232323.P11007635246014415611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232323.P11007635246014415611

/-! ## A232323.P3941971323738455931

`A232316(A055998(n+5)-(n-3))`
-/

namespace A232323.P3941971323738455931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232316 (A055998 (n + 5) - ((n : ℤ) - 3)).toNat

end

end A232323.P3941971323738455931

/-!
# A232324: n(n+1)/2 modulo sigma(n).

The programs for A232324, the canonical program `A232324.P14003359635588126761` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232324 has offset 1).

The definition of A232324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232324.P14003359635588126761

`∑[A061579(A061579(n+1))]%A000203(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A232324

/-- `∑[A061579(A061579(n+1))]%A000203(n+1)` -/
def P14003359635588126761.Spec : Prop :=
  ∀ n, P14003359635588126761.a n = A232324 (n + 1)

theorem P14003359635588126761.correct : P14003359635588126761.Spec := by
  intro n
  simp only [A232324, Nat.add_sub_cancel]

end A232324

/-! ## A232324.P11974233119322490879

`(∑[n+1]%A000203(n+1))%A000041(n+1)`
-/

namespace A232324.P11974233119322490879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A000203 (n + 1))) (A000041 (n + 1))

end

end A232324.P11974233119322490879

namespace A232324

/-- `(∑[n+1]%A000203(n+1))%A000041(n+1)` -/
def P11974233119322490879.Spec : Prop :=
  ∀ n, P11974233119322490879.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P5385094356379841624

`A000217(A353313(3*(n+1)))%A000203(n+1)`
-/

namespace A232324.P5385094356379841624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A353313 (3 * (n + 1))).toNat) (A000203 (n + 1))

end

end A232324.P5385094356379841624

namespace A232324

/-- `A000217(A353313(3*(n+1)))%A000203(n+1)` -/
def P5385094356379841624.Spec : Prop :=
  ∀ n, P5385094356379841624.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P12645114407151744137

`A001972(2*n)%A000203(n+1)`
-/

namespace A232324.P12645114407151744137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001972 (2 * n)) (A000203 (n + 1))

end

end A232324.P12645114407151744137

namespace A232324

/-- `A001972(2*n)%A000203(n+1)` -/
def P12645114407151744137.Spec : Prop :=
  ∀ n, P12645114407151744137.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P14083987806240112832

`A008795(2*n)%A000203(n+1)`
-/

namespace A232324.P14083987806240112832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008795 (2 * n)) (A000203 (n + 1))

end

end A232324.P14083987806240112832

namespace A232324

/-- `A008795(2*n)%A000203(n+1)` -/
def P14083987806240112832.Spec : Prop :=
  ∀ n, P14083987806240112832.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P1378125281696736060

`∑[A008619(2*n)]%A000203(n+1)`
-/

namespace A232324.P1378125281696736060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000203 (n + 1))

end

end A232324.P1378125281696736060

namespace A232324

/-- `∑[A008619(2*n)]%A000203(n+1)` -/
def P1378125281696736060.Spec : Prop :=
  ∀ n, P1378125281696736060.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P15566215005214112568

`∑[n+1]%A262610(Δ[n²])`
-/

namespace A232324.P15566215005214112568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A262610 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

end

end A232324.P15566215005214112568

namespace A232324

/-- `∑[n+1]%A262610(Δ[n²])` -/
def P15566215005214112568.Spec : Prop :=
  ∀ n, P15566215005214112568.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P4507620382195049228

`∑[A242112(2*n)]%∑{d}[n+1, #]`
-/

namespace A232324.P4507620382195049228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242112 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A232324.P4507620382195049228

namespace A232324

/-- `∑[A242112(2*n)]%∑{d}[n+1, #]` -/
def P4507620382195049228.Spec : Prop :=
  ∀ n, P4507620382195049228.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P47685310826338067

`∑[A032742(2*(n+1))]%∑{d}[n+1, #]`
-/

namespace A232324.P47685310826338067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A232324.P47685310826338067

namespace A232324

/-- `∑[A032742(2*(n+1))]%∑{d}[n+1, #]` -/
def P47685310826338067.Spec : Prop :=
  ∀ n, P47685310826338067.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P5305907110329509096

`A008805(2*n)%A000203(n+1)`
-/

namespace A232324.P5305907110329509096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008805 (2 * n)) (A000203 (n + 1))

end

end A232324.P5305907110329509096

namespace A232324

/-- `A008805(2*n)%A000203(n+1)` -/
def P5305907110329509096.Spec : Prop :=
  ∀ n, P5305907110329509096.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P2995127672768876968

`A160791(2*(n+1))%A000203(n+1)`
-/

namespace A232324.P2995127672768876968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160791 (2 * (n + 1))) (A000203 (n + 1))

end

end A232324.P2995127672768876968

namespace A232324

/-- `A160791(2*(n+1))%A000203(n+1)` -/
def P2995127672768876968.Spec : Prop :=
  ∀ n, P2995127672768876968.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P13814764834789085616

`A000217(A004526(2*n+3))%A143348(n+1)`
-/

namespace A232324.P13814764834789085616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A004526 (2 * n + 3)).toNat) (A143348 (n + 1))

end

end A232324.P13814764834789085616

namespace A232324

/-- `A000217(A004526(2*n+3))%A143348(n+1)` -/
def P13814764834789085616.Spec : Prop :=
  ∀ n, P13814764834789085616.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P10543564482976942892

`A000217(n+1)%A028310(A000203(n+1))`
-/

namespace A232324.P10543564482976942892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (n + 1)) (A028310 (A000203 (n + 1)).toNat)

end

end A232324.P10543564482976942892

namespace A232324

/-- `A000217(n+1)%A028310(A000203(n+1))` -/
def P10543564482976942892.Spec : Prop :=
  ∀ n, P10543564482976942892.a n = A232324 (n + 1)

end A232324

/-! ## A232324.P15496719555772380543

`record[A255548(n+1)]%∑{d}[n+1, #]`
-/

namespace A232324.P15496719555772380543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255548 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ)

end

end A232324.P15496719555772380543

namespace A232324

/-- `record[A255548(n+1)]%∑{d}[n+1, #]` -/
def P15496719555772380543.Spec : Prop :=
  ∀ n, P15496719555772380543.a n = A232324 (n + 1)

end A232324

/-!
# A232327: A generalized Engel expansion of 1/Pi.

The programs for A232327, there is no canonical definition to state claims against.
-/

/-! ## A232327.P18354349316964432483

`A160998(A085903(n+2))`
-/

namespace A232327.P18354349316964432483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160998 (A085903 (n + 2)).toNat

end

end A232327.P18354349316964432483

/-!
# A232328: A generalized Engel expansion of 1/Pi.

The programs for A232328, there is no canonical definition to state claims against.
-/

/-! ## A232328.P15457808613489429152

`A149514(n)+A001511(A149490(n+2))`
-/

namespace A232328.P15457808613489429152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149514 n + A001511 (A149490 (n + 2)).toNat

end

end A232328.P15457808613489429152

/-! ## A232328.P1422485345932880548

`A334526(A341344(n))-A031941(n+1)`
-/

namespace A232328.P1422485345932880548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334526 (A341344 n).toNat - A031941 (n + 1)

end

end A232328.P1422485345932880548

/-!
# A232329: Integer areas A of the integer-sided triangles such that the product of the inradius and the circumradius is a square.

The programs for A232329, there is no canonical definition to state claims against.
-/

/-! ## A232329.P12280891248092086701

`(42*(n+1)²)^(n-and(7, n+1))²`
-/

namespace A232329.P12280891248092086701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (42 * (n + 1) ^ 2 : ℚ) ^ (((n : ℤ) - (Nat.land 7 (n + 1) : ℤ)) ^ 2 : ℤ)

end

end A232329.P12280891248092086701

/-! ## A232329.P13799234586579119947

`42*A000005(6^n)`
-/

namespace A232329.P13799234586579119947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A000005 (6 ^ n)

end

end A232329.P13799234586579119947

/-! ## A232329.P13424012019391549556

`42*A001222(5^(n+1))²`
-/

namespace A232329.P13424012019391549556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A001222 (5 ^ (n + 1)) ^ 2

end

end A232329.P13424012019391549556

/-!
# A232330: Number of n X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232330, there is no canonical definition to state claims against.
-/

/-! ## A232330.P7511418279985920360

`A232335(∑[4*n]+1)`
-/

namespace A232330.P7511418279985920360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232330.P7511418279985920360

/-! ## A232330.P350238627755287529

`record[A003982(n)*A232335(n+1)]`
-/

namespace A232330.P350238627755287529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232330.P350238627755287529

/-! ## A232330.P3050722113416519088

`record[gcd(A008482(n), A232335(n+1))]`
-/

namespace A232330.P3050722113416519088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A232335 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232330.P3050722113416519088

/-! ## A232330.P14278418211181656040

`record[A203994(n+1)*A232335(n+1)]`
-/

namespace A232330.P14278418211181656040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A232335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232330.P14278418211181656040

/-! ## A232330.P9209368796612756976

`A232335(A001844(n))+A008683(4*(n+1))`
-/

namespace A232330.P9209368796612756976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A232330.P9209368796612756976

/-!
# A232331: Number of nX4 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232331, the canonical program `A232331.P13096950521024711676` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232331 has offset 1).

The definition of A232331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 148 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232331.P17219468819757755707

`ogf((6-10x-16x^2-8x^3)/(1-7x+9x^2+8x^3+4x^4))`
-/

namespace A232331.P17219468819757755707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -10, -16, -8] [1, -7, 9, 8, 4] n

end

end A232331.P17219468819757755707

namespace A232331

/-- `ogf((6-10x-16x^2-8x^3)/(1-7x+9x^2+8x^3+4x^4))` -/
def P17219468819757755707.Spec : Prop :=
  ∀ n, P17219468819757755707.a n = A232331 (n + 1)

end A232331

/-! ## A232331.P13096950521024711676

`7*a(n-1)-9*a(n-2)-8*a(n-3)-4*a(n-4)` with `a(0)=6, a(1)=32, a(2)=154, a(3)=734`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232331

/-- `7*a(n-1)-9*a(n-2)-8*a(n-3)-4*a(n-4)` -/
def P13096950521024711676.Spec : Prop :=
  ∀ n, P13096950521024711676.a n = A232331 (n + 1)

theorem P13096950521024711676.correct : P13096950521024711676.Spec := by
  intro n
  simp only [A232331, Nat.add_sub_cancel]

end A232331

/-! ## A232331.P15094459516509879174

`A232335(A141214(n+1))`
-/

namespace A232331.P15094459516509879174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A141214 (n + 1)).toNat

end

end A232331.P15094459516509879174

namespace A232331

/-- `A232335(A141214(n+1))` -/
def P15094459516509879174.Spec : Prop :=
  ∀ n, P15094459516509879174.a n = A232331 (n + 1)

end A232331

/-! ## A232331.P12092683067869539446

`A232335(A027379(n+2))`
-/

namespace A232331.P12092683067869539446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A027379 (n + 2)).toNat

end

end A232331.P12092683067869539446

namespace A232331

/-- `A232335(A027379(n+2))` -/
def P12092683067869539446.Spec : Prop :=
  ∀ n, P12092683067869539446.a n = A232331 (n + 1)

end A232331

/-! ## A232331.P7559745302733686163

`A232335(A055998(n+2))`
-/

namespace A232331.P7559745302733686163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A055998 (n + 2)).toNat

end

end A232331.P7559745302733686163

namespace A232331

/-- `A232335(A055998(n+2))` -/
def P7559745302733686163.Spec : Prop :=
  ∀ n, P7559745302733686163.a n = A232331 (n + 1)

end A232331

/-!
# A232332: Number of n X 5 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232332, the canonical program `A232332.P650783717972408101` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232332 has offset 1).

The definition of A232332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232332.P650783717972408101

`ogf((10-28x-64x^2-80x^3-32x^4)/(1-11x+21x^2+20x^3+12x^4))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232332

/-- `ogf((10-28x-64x^2-80x^3-32x^4)/(1-11x+21x^2+20x^3+12x^4))` -/
def P650783717972408101.Spec : Prop :=
  ∀ n, P650783717972408101.a n = A232332 (n + 1)

theorem P650783717972408101.correct : P650783717972408101.Spec := by
  intro n
  simp only [A232332, Nat.add_sub_cancel]

end A232332

/-! ## A232332.P6524873854230021125

`A232335(∑[n+5]+6)`
-/

namespace A232332.P6524873854230021125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A232332.P6524873854230021125

namespace A232332

/-- `A232335(∑[n+5]+6)` -/
def P6524873854230021125.Spec : Prop :=
  ∀ n, P6524873854230021125.a n = A232332 (n + 1)

end A232332

/-! ## A232332.P9704049159038385234

`gcd(n, n+1)*A232335(Δ[A023545(n+1)])`
-/

namespace A232332.P9704049159038385234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A232335 (f1 (n + 1) - f1 n).toNat

end

end A232332.P9704049159038385234

namespace A232332

/-- `gcd(n, n+1)*A232335(Δ[A023545(n+1)])` -/
def P9704049159038385234.Spec : Prop :=
  ∀ n, P9704049159038385234.a n = A232332 (n + 1)

end A232332

/-! ## A232332.P2452703952803947726

`A020985(n)²*A232335(Δ[A023545(n+1)])`
-/

namespace A232332.P2452703952803947726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A232335 (f1 (n + 1) - f1 n).toNat

end

end A232332.P2452703952803947726

namespace A232332

/-- `A020985(n)²*A232335(Δ[A023545(n+1)])` -/
def P2452703952803947726.Spec : Prop :=
  ∀ n, P2452703952803947726.a n = A232332 (n + 1)

end A232332

/-! ## A232332.P9075635828046791081

`A232335(Δ[A023545(n+1)])%A204710(n+1)²`
-/

namespace A232332.P9075635828046791081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232335 (f1 (n + 1) - f1 n).toNat) (A204710 (n + 1) ^ 2)

end

end A232332.P9075635828046791081

namespace A232332

/-- `A232335(Δ[A023545(n+1)])%A204710(n+1)²` -/
def P9075635828046791081.Spec : Prop :=
  ∀ n, P9075635828046791081.a n = A232332 (n + 1)

end A232332

/-!
# A232333: Number of n X 6 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232333, there is no canonical definition to state claims against.
-/

/-! ## A232333.P9716933541335745477

`A232335(A052905(n+3))`
-/

namespace A232333.P9716933541335745477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A052905 (n + 3)).toNat

end

end A232333.P9716933541335745477

/-! ## A232333.P559277997942886739

`A232335(eq[3, A219347(n)])`
-/

namespace A232333.P559277997942886739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232333.P559277997942886739

/-! ## A232333.P279530320677593192

`A232335(eq[5, A193592(n)])`
-/

namespace A232333.P279530320677593192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232333.P279530320677593192

/-! ## A232333.P6199805964664842877

`A232335(A000124(n+6)-6)`
-/

namespace A232333.P6199805964664842877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A000124 (n + 6) - 6).toNat

end

end A232333.P6199805964664842877

/-! ## A232333.P5976686419084505251

`A232335(Δ[Δ[A006504(n+1)]])`
-/

namespace A232333.P5976686419084505251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (f1 (n + 1) - f1 n).toNat

end

end A232333.P5976686419084505251

/-!
# A232334: Number of nX7 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232334, there is no canonical definition to state claims against.
-/

/-! ## A232334.P12966421374308984127

`A232335(A055999(n+4))`
-/

namespace A232334.P12966421374308984127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A055999 (n + 4)).toNat

end

end A232334.P12966421374308984127

/-! ## A232334.P12182551608948227981

`A232335(eq[4, A219347(n)])`
-/

namespace A232334.P12182551608948227981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232334.P12182551608948227981

/-! ## A232334.P16373688983343443222

`A232335(eq[6, A193592(n)])`
-/

namespace A232334.P16373688983343443222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232334.P16373688983343443222

/-! ## A232334.P865830501169985290

`A232335(eq[10, A185782(n+1)])`
-/

namespace A232334.P865830501169985290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232334.P865830501169985290

/-! ## A232334.P2677705129413896085

`A232335(eq[7, A200370(n+1)])`
-/

namespace A232334.P2677705129413896085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232334.P2677705129413896085

/-!
# A232336: Number of 2 X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232336, the canonical program `A232336.P6621201439129197711` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232336 has offset 1).

The definition of A232336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232336.P6129796617811216065

`ogf((1+5x+9x^2-3x^3+x^4-3x^5)/(1-x-3x^2+x^3-x^4+x^5))`
-/

namespace A232336.P6129796617811216065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 9, -3, 1, -3] [1, -1, -3, 1, -1, 1] n

end

end A232336.P6129796617811216065

namespace A232336

/-- `ogf((1+5x+9x^2-3x^3+x^4-3x^5)/(1-x-3x^2+x^3-x^4+x^5))` -/
def P6129796617811216065.Spec : Prop :=
  ∀ n, P6129796617811216065.a n = A232336 (n + 1)

end A232336

/-! ## A232336.P6621201439129197711

`a(n-1)+3*a(n-2)-a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=32, a(4)=82, a(5)=162`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232336

/-- `a(n-1)+3*a(n-2)-a(n-3)+a(n-4)-a(n-5)` -/
def P6621201439129197711.Spec : Prop :=
  ∀ n, P6621201439129197711.a n = A232336 (n + 1)

theorem P6621201439129197711.correct : P6621201439129197711.Spec := by
  intro n
  simp only [A232336, Nat.add_sub_cancel]

end A232336

/-! ## A232336.P10119624686045978365

`A232335(∑[n+1]+2)`
-/

namespace A232336.P10119624686045978365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232336.P10119624686045978365

namespace A232336

/-- `A232335(∑[n+1]+2)` -/
def P10119624686045978365.Spec : Prop :=
  ∀ n, P10119624686045978365.a n = A232336 (n + 1)

end A232336

/-! ## A232336.P3914805089065059421

`record[ratio[A232335(A080036(n))]]`
-/

namespace A232336.P3914805089065059421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A080036 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232336.P3914805089065059421

namespace A232336

/-- `record[ratio[A232335(A080036(n))]]` -/
def P3914805089065059421.Spec : Prop :=
  ∀ n, P3914805089065059421.a n = (A232336 (n + 1) : ℚ)

end A232336

/-! ## A232336.P555337442603124299

`gcd(A000038(n), A232335(C(n+2, 2)+2))`
-/

namespace A232336.P555337442603124299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A232335 (Nat.choose (n + 2) 2 + 2))

end

end A232336.P555337442603124299

namespace A232336

/-- `gcd(A000038(n), A232335(C(n+2, 2)+2))` -/
def P555337442603124299.Spec : Prop :=
  ∀ n, (P555337442603124299.a n : ℤ) = A232336 (n + 1)

end A232336

/-!
# A232337: Number of 3 X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232337, the canonical program `A232337.P17780800140090011827` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232337 has offset 1).

The definition of A232337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232337.P17780800140090011827

`ogf((1+15x+51x^2-29x^3+x^4-55x^5+14x^6-4x^7+20x^8-2x^10-2x^11)/(1-x-7x^2+3x^3-3x^4+7x^5-2x^6+2x^7-2x^8))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232337

/-- `ogf((1+15x+51x^2-29x^3+x^4-55x^5+14x^6-4x^7+20x^8-2x^10-2x^11)/(1-x-7x^2+3x^3-3x^4+7x^5-2x^6+2x^7-2x^8))` -/
def P17780800140090011827.Spec : Prop :=
  ∀ n, P17780800140090011827.a n = A232337 (n + 1)

theorem P17780800140090011827.correct : P17780800140090011827.Spec := by
  intro n
  simp only [A232337, Nat.add_sub_cancel]

end A232337

/-! ## A232337.P5040615614989200400

`A232335(∑[n+2]+4)`
-/

namespace A232337.P5040615614989200400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232337.P5040615614989200400

namespace A232337

/-- `A232335(∑[n+2]+4)` -/
def P5040615614989200400.Spec : Prop :=
  ∀ n, P5040615614989200400.a n = A232337 (n + 1)

end A232337

/-! ## A232337.P13419899373510068794

`and(1-4/2, A232335(A167614(n+1)))`
-/

namespace A232337.P13419899373510068794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A232335 (A167614 (n + 1)).toNat)

end

end A232337.P13419899373510068794

namespace A232337

/-- `and(1-4/2, A232335(A167614(n+1)))` -/
def P13419899373510068794.Spec : Prop :=
  ∀ n, P13419899373510068794.a n = A232337 (n + 1)

end A232337

/-! ## A232337.P13102773162264766199

`or(A000007(n), A232335(A167614(n+1)))`
-/

namespace A232337.P13102773162264766199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A232335 (A167614 (n + 1)).toNat)

end

end A232337.P13102773162264766199

namespace A232337

/-- `or(A000007(n), A232335(A167614(n+1)))` -/
def P13102773162264766199.Spec : Prop :=
  ∀ n, P13102773162264766199.a n = A232337 (n + 1)

end A232337

/-! ## A232337.P4598345294485544457

`A232335(A167614(n+1))+A070176(2*n²)`
-/

namespace A232337.P4598345294485544457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A167614 (n + 1)).toNat + A070176 (2 * n ^ 2)

end

end A232337.P4598345294485544457

namespace A232337

/-- `A232335(A167614(n+1))+A070176(2*n²)` -/
def P4598345294485544457.Spec : Prop :=
  ∀ n, P4598345294485544457.a n = A232337 (n + 1)

end A232337

/-!
# A232338: Number of 4Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232338, there is no canonical definition to state claims against.
-/

/-! ## A232338.P8073197599683191537

`A232335(A141214(n)+7)`
-/

namespace A232338.P8073197599683191537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A141214 n + 7).toNat

end

end A232338.P8073197599683191537

/-! ## A232338.P13818268639931999657

`A232335(A052905(n)+9)`
-/

namespace A232338.P13818268639931999657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A052905 n + 9).toNat

end

end A232338.P13818268639931999657

/-! ## A232338.P15820997146289748242

`A232335(A055999(n)+10)`
-/

namespace A232338.P15820997146289748242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A055999 n + 10).toNat

end

end A232338.P15820997146289748242

/-! ## A232338.P17817412812719763276

`A232335(A167614(n+2)+1)`
-/

namespace A232338.P17817412812719763276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A167614 (n + 2) + 1).toNat

end

end A232338.P17817412812719763276

/-! ## A232338.P13324034052537211895

`A232335(A166136(n+2)-2)`
-/

namespace A232338.P13324034052537211895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A166136 (n + 2) - 2).toNat

end

end A232338.P13324034052537211895

/-!
# A232339: Number of 5Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232339, there is no canonical definition to state claims against.
-/

/-! ## A232339.P13099587252454521178

`A232335(A167499(n+3))`
-/

namespace A232339.P13099587252454521178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A167499 (n + 3)).toNat

end

end A232339.P13099587252454521178

/-! ## A232339.P1087296250411438137

`A232335(A000217(n+4)+5)`
-/

namespace A232339.P1087296250411438137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A000217 (n + 4) + 5).toNat

end

end A232339.P1087296250411438137

/-! ## A232339.P9152804488202132869

`A232335(A055998(n+2)+8)`
-/

namespace A232339.P9152804488202132869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A055998 (n + 2) + 8).toNat

end

end A232339.P9152804488202132869

/-! ## A232339.P2358673045287575110

`A232335(A052905(n+1)+10)`
-/

namespace A232339.P2358673045287575110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A052905 (n + 1) + 10).toNat

end

end A232339.P2358673045287575110

/-! ## A232339.P13312065658859043731

`A232335(A000124(n+5)-(n+1))`
-/

namespace A232339.P13312065658859043731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A232339.P13312065658859043731

/-!
# A232340: Number of 6Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232340, there is no canonical definition to state claims against.
-/

/-! ## A232340.P7058512942964969519

`A232335(A166136(n+4))`
-/

namespace A232340.P7058512942964969519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A166136 (n + 4)).toNat

end

end A232340.P7058512942964969519

/-! ## A232340.P2885821304330883432

`A232335(A167499(n+4)+1)`
-/

namespace A232340.P2885821304330883432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A167499 (n + 4) + 1).toNat

end

end A232340.P2885821304330883432

/-! ## A232340.P15332339671011541795

`A232335(A000096(n+4)+7)`
-/

namespace A232340.P15332339671011541795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A000096 (n + 4) + 7).toNat

end

end A232340.P15332339671011541795

/-! ## A232340.P17712539829563416395

`A232335(A000217(n+5)+6)`
-/

namespace A232340.P17712539829563416395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A000217 (n + 5) + 6).toNat

end

end A232340.P17712539829563416395

/-! ## A232340.P2984706457974930100

`A232335(eq[6, A130270(n+1)])`
-/

namespace A232340.P2984706457974930100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232340.P2984706457974930100

/-!
# A232341: Number of 7Xn 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or antidiagonally, with no adjacent elements equal.

The programs for A232341, there is no canonical definition to state claims against.
-/

/-! ## A232341.P13879655590816047498

`A232335(eq[11, A066657(n)])`
-/

namespace A232341.P13879655590816047498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232341.P13879655590816047498

/-! ## A232341.P6689705064347518648

`A232335(A167614(n+5)+4)`
-/

namespace A232341.P6689705064347518648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A167614 (n + 5) + 4).toNat

end

end A232341.P6689705064347518648

/-! ## A232341.P15191293983049279597

`A232335(A000124(n+6)+6)`
-/

namespace A232341.P15191293983049279597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A000124 (n + 6) + 6).toNat

end

end A232341.P15191293983049279597

/-! ## A232341.P11170738279747393283

`A232335(eq[8, A131818(n+1)])`
-/

namespace A232341.P11170738279747393283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232341.P11170738279747393283

/-! ## A232341.P16360854285101738001

`A232335(A055998(n+5)-(n-3))`
-/

namespace A232341.P16360854285101738001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (A055998 (n + 5) - ((n : ℤ) - 3)).toNat

end

end A232341.P16360854285101738001

/-!
# A232342: A077068(n) minus A077065(n).

The programs for A232342, the canonical program `A232342.P12753495415627519153` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232342 has offset 1).

The definition of A232342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232342.P12753495415627519153

`A077068(n+1)-A077065(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A232342

/-- `A077068(n+1)-A077065(n+1)` -/
def P12753495415627519153.Spec : Prop :=
  ∀ n, P12753495415627519153.a n = A232342 (n + 1)

theorem P12753495415627519153.correct : P12753495415627519153.Spec := by
  intro n
  simp only [A232342, Nat.add_sub_cancel]

end A232342

/-! ## A232342.P41350487771473732

`A005383(n+1)+1-A077065(n+1)`
-/

namespace A232342.P41350487771473732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1) + (1 - A077065 (n + 1))

end

end A232342.P41350487771473732

namespace A232342

/-- `A005383(n+1)+1-A077065(n+1)` -/
def P41350487771473732.Spec : Prop :=
  ∀ n, P41350487771473732.a n = A232342 (n + 1)

end A232342

/-! ## A232342.P507413001971709466

`A077068(n+1)+1-A005385(n+1)`
-/

namespace A232342.P507413001971709466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) + (1 - A005385 (n + 1))

end

end A232342.P507413001971709466

namespace A232342

/-- `A077068(n+1)+1-A005385(n+1)` -/
def P507413001971709466.Spec : Prop :=
  ∀ n, P507413001971709466.a n = A232342 (n + 1)

theorem P507413001971709466.correct : P507413001971709466.Spec := by
  intro n
  simp only [A232342, Nat.add_sub_cancel, A232342.P507413001971709466.a, A232342.P12753495415627519153.a, A005385, A005385.P12850744102754472242.a, A077065, A077065.P3431251406781570749.a, A077068, A077068.P1223850379431236608.a, A005383, A005383.P14491179252099632441.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A246277, A246277.P3450750564944014413.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A232342

/-! ## A232342.P11697342130326567010

`A005383(n+1)+2-A005385(n+1)`
-/

namespace A232342.P11697342130326567010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1) + (2 - A005385 (n + 1))

end

end A232342.P11697342130326567010

namespace A232342

/-- `A005383(n+1)+2-A005385(n+1)` -/
def P11697342130326567010.Spec : Prop :=
  ∀ n, P11697342130326567010.a n = A232342 (n + 1)

end A232342

/-! ## A232342.P10874659189481983453

`2*(A005382(n+1)-A005384(n+1))`
-/

namespace A232342.P10874659189481983453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005382 (n + 1) - A005384 (n + 1))

end

end A232342.P10874659189481983453

namespace A232342

/-- `2*(A005382(n+1)-A005384(n+1))` -/
def P10874659189481983453.Spec : Prop :=
  ∀ n, P10874659189481983453.a n = A232342 (n + 1)

end A232342

/-! ## A232342.P5723781945017246571

`2*A005382(n+1)-A077065(n+1)`
-/

namespace A232342.P5723781945017246571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005382 (n + 1) - A077065 (n + 1)

end

end A232342.P5723781945017246571

namespace A232342

/-- `2*A005382(n+1)-A077065(n+1)` -/
def P5723781945017246571.Spec : Prop :=
  ∀ n, P5723781945017246571.a n = A232342 (n + 1)

end A232342

/-! ## A232342.P16580199272182202548

`A077068(n+1)-2*A005384(n+1)`
-/

namespace A232342.P16580199272182202548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - 2 * A005384 (n + 1)

end

end A232342.P16580199272182202548

namespace A232342

/-- `A077068(n+1)-2*A005384(n+1)` -/
def P16580199272182202548.Spec : Prop :=
  ∀ n, P16580199272182202548.a n = A232342 (n + 1)

theorem P16580199272182202548.correct : P16580199272182202548.Spec := by
  intro n
  simp only [A232342, Nat.add_sub_cancel, A232342.P16580199272182202548.a, A232342.P12753495415627519153.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A077065, A077065.P3431251406781570749.a, A077068, A077068.P1223850379431236608.a, A005383, A005383.P14491179252099632441.a, A005385, A005385.P12850744102754472242.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A246277, A246277.P3450750564944014413.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A348717, A348717.P703712104273003584.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A232342

/-! ## A232342.P11912058333990598753

`A232221(n+1)-A232221(gcd(n, A008574(n)))`
-/

namespace A232342.P11912058333990598753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232221 (n + 1) - A232221 (Int.gcd (n : ℤ) (A008574 n))

end

end A232342.P11912058333990598753

namespace A232342

/-- `A232221(n+1)-A232221(gcd(n, A008574(n)))` -/
def P11912058333990598753.Spec : Prop :=
  ∀ n, P11912058333990598753.a n = A232342 (n + 1)

end A232342

/-! ## A232342.P18095219040226577389

`A077068(n+1)-A000010(A005385(n+1))`
-/

namespace A232342.P18095219040226577389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077068 (n + 1) - A000010 (A005385 (n + 1)).toNat

end

end A232342.P18095219040226577389

namespace A232342

/-- `A077068(n+1)-A000010(A005385(n+1))` -/
def P18095219040226577389.Spec : Prop :=
  ∀ n, P18095219040226577389.a n = A232342 (n + 1)

end A232342

/-! ## A232342.P893365878687507123

`A005383(n+1)-A184997(A005385(n+1))`
-/

namespace A232342.P893365878687507123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1) - A184997 (A005385 (n + 1)).toNat

end

end A232342.P893365878687507123

namespace A232342

/-- `A005383(n+1)-A184997(A005385(n+1))` -/
def P893365878687507123.Spec : Prop :=
  ∀ n, P893365878687507123.a n = A232342 (n + 1)

end A232342

/-!
# A232343: Expansion of q^(-5/3) * c(q^2)^3 / (9 * c(q)) in powers of q where c() is a cubic AGM theta function.

The programs for A232343, the canonical program `A232343.P2807166496031523274` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232343 has offset 0).

The definition of A232343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232343.P2807166496031523274

`A232356(3*n+5)/6`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A232343

/-- `A232356(3*n+5)/6` -/
def P2807166496031523274.Spec : Prop :=
  ∀ n, P2807166496031523274.a n = (A232343 n : ℚ)

end A232343

/-!
# A232344: Number of (n+1) X (n+1) 0..2 arrays with every element both >= and <= some horizontal, vertical, diagonal or antidiagonal neighbor.

The programs for A232344, there is no canonical definition to state claims against.
-/

/-! ## A232344.P16030748953159416740

`A232352(∑[4*n]+1)`
-/

namespace A232344.P16030748953159416740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232344.P16030748953159416740

/-!
# A232345: Number of (n+1)X(1+1) 0..2 arrays with every element both >= and <= some horizontal, vertical, diagonal or antidiagonal neighbor.

The programs for A232345, there is no canonical definition to state claims against.
-/

/-! ## A232345.P11847370152490238222

`A232352(∑[n]+1)`
-/

namespace A232345.P11847370152490238222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232345.P11847370152490238222

/-! ## A232345.P15654619463222918168

`or(1, A232352(A000124(n)))`
-/

namespace A232345.P15654619463222918168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232352 (A000124 n).toNat)

end

end A232345.P15654619463222918168

/-! ## A232345.P11815050083069442810

`record[A010054(n)*A232352(n+1)]`
-/

namespace A232345.P11815050083069442810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232352 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232345.P11815050083069442810

/-! ## A232345.P14356743022447955338

`record[A232352(n+1)/A022170(n)]`
-/

namespace A232345.P14356743022447955338
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232352 (n + 1) : ℚ) / (A022170 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232345.P14356743022447955338

/-! ## A232345.P6437062282972036694

`record[root(A232352(n+1), A193592(n))]`
-/

namespace A232345.P6437062282972036694
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232352 (n + 1) : ℝ) ^ (1 / (A193592 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232345.P6437062282972036694

/-!
# A232346: Number of (n+1)X(2+1) 0..2 arrays with every element both >= and <= some horizontal, vertical, diagonal or antidiagonal neighbor.

The programs for A232346, there is no canonical definition to state claims against.
-/

/-! ## A232346.P472589480948784958

`A232352(∑[n+1]+2)`
-/

namespace A232346.P472589480948784958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232346.P472589480948784958

/-! ## A232346.P2297848693367225807

`or(1, A232352(A000096(n)+3))`
-/

namespace A232346.P2297848693367225807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232352 (A000096 n + 3).toNat)

end

end A232346.P2297848693367225807

/-! ## A232346.P13880196808981297574

`record[A010054(n)*A232352(n+2)]`
-/

namespace A232346.P13880196808981297574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A232352 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232346.P13880196808981297574

/-! ## A232346.P447540072276139799

`A232352(A000096(n)+3)+A025437(n)`
-/

namespace A232346.P447540072276139799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (A000096 n + 3).toNat + A025437 n

end

end A232346.P447540072276139799

/-! ## A232346.P8592230330979786261

`record[A232352(A000096(val(n+1, 2)+1))]`
-/

namespace A232346.P8592230330979786261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232346.P8592230330979786261

/-!
# A232347: Number of (n+1)X(3+1) 0..2 arrays with every element both >= and <= some horizontal, vertical, diagonal or antidiagonal neighbor.

The programs for A232347, there is no canonical definition to state claims against.
-/

/-! ## A232347.P18015547400364124183

`A232352(∑[n+2]+4)`
-/

namespace A232347.P18015547400364124183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232347.P18015547400364124183

/-! ## A232347.P14110780918187080370

`or(1, A232352(A167614(n+1)))`
-/

namespace A232347.P14110780918187080370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232352 (A167614 (n + 1)).toNat)

end

end A232347.P14110780918187080370

/-! ## A232347.P8781424229181631481

`A232352(A167614(n+1))+A025437(n)`
-/

namespace A232347.P8781424229181631481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (A167614 (n + 1)).toNat + A025437 n

end

end A232347.P8781424229181631481

/-! ## A232347.P11650943461130417764

`A232352(A167614(n+1))*A278657(n)`
-/

namespace A232347.P11650943461130417764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (A167614 (n + 1)).toNat * A278657 n

end

end A232347.P11650943461130417764

/-! ## A232347.P429022746722322956

`A093178(2*n)*A232352(A167614(n+1))`
-/

namespace A232347.P429022746722322956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * n) * A232352 (A167614 (n + 1)).toNat

end

end A232347.P429022746722322956

/-!
# A232348: Number of (n+1)X(4+1) 0..2 arrays with every element both >= and <= some horizontal, vertical, diagonal or antidiagonal neighbor.

The programs for A232348, there is no canonical definition to state claims against.
-/

/-! ## A232348.P2191351785835755458

`A232352(A167614(n+2)+1)`
-/

namespace A232348.P2191351785835755458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (A167614 (n + 2) + 1).toNat

end

end A232348.P2191351785835755458

/-! ## A232348.P16406240892160493656

`A232352(eq[5, A131818(n+1)])`
-/

namespace A232348.P16406240892160493656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232348.P16406240892160493656

/-! ## A232348.P13912930164051213002

`A232352(eq[3, A193592(n)])`
-/

namespace A232348.P13912930164051213002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232348.P13912930164051213002

/-!
# A232349: Number of (n+1)X(5+1) 0..2 arrays with every element both >= and <= some horizontal, vertical, diagonal or antidiagonal neighbor.

The programs for A232349, there is no canonical definition to state claims against.
-/

/-! ## A232349.P7050655869721517317

`A232352(A374005(n+1))`
-/

namespace A232349.P7050655869721517317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (A374005 (n + 1)).toNat

end

end A232349.P7050655869721517317

/-! ## A232349.P13719138356658537606

`A232352(eq[6, A131818(n+1)])`
-/

namespace A232349.P13719138356658537606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232349.P13719138356658537606

/-! ## A232349.P16443565846799833718

`A232352(eq[4, A193592(n)])`
-/

namespace A232349.P16443565846799833718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232349.P16443565846799833718

/-! ## A232349.P12999616334390974448

`A232352(lt[A232335(n+4), A232353(n+1)])`
-/

namespace A232349.P12999616334390974448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232335 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A232349.P12999616334390974448

/-!
# A232350: Number of (n+1)X(6+1) 0..2 arrays with every element both >= and <= some horizontal, vertical, diagonal or antidiagonal neighbor.

The programs for A232350, there is no canonical definition to state claims against.
-/

/-! ## A232350.P8293523441966257285

`A232352(eq[7, A131818(n+1)])`
-/

namespace A232350.P8293523441966257285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232350.P8293523441966257285

/-! ## A232350.P13787401122198289857

`A232352(eq[5, A193592(n)])`
-/

namespace A232350.P13787401122198289857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232350.P13787401122198289857

/-!
# A232351: Number of (n+1)X(7+1) 0..2 arrays with every element both >= and <= some horizontal, vertical, diagonal or antidiagonal neighbor.

The programs for A232351, there is no canonical definition to state claims against.
-/

/-! ## A232351.P11208205543159577357

`A232352(A167614(n+5)+4)`
-/

namespace A232351.P11208205543159577357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (A167614 (n + 5) + 4).toNat

end

end A232351.P11208205543159577357

/-! ## A232351.P2212786576696634185

`A232352(eq[8, A131818(n+1)])`
-/

namespace A232351.P2212786576696634185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232351.P2212786576696634185

/-! ## A232351.P3914861490609414365

`A232352(eq[6, A193592(n)])`
-/

namespace A232351.P3914861490609414365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232352 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232351.P3914861490609414365

/-!
# A232353: Number of ways to write n = k + m with k > 0 and m > 0 such that p = prime(k) + phi(m) and p*(p+1) - prime(p) are both prime, where phi(.) is Euler's totient function.

The programs for A232353, there is no canonical definition to state claims against.
-/

/-! ## A232353.P15823641161137228128

`A102677(A136791(n)*A301682(n))`
-/

namespace A232353.P15823641161137228128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A136791 n * A301682 n).toNat

end

end A232353.P15823641161137228128

/-! ## A232353.P11558072187863021786

`A276630(A355275(n+1))`
-/

namespace A232353.P11558072187863021786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276630 (A355275 (n + 1)).toNat

end

end A232353.P11558072187863021786

/-! ## A232353.P145075639638179393

`A004525(A102973(n+1))%3`
-/

namespace A232353.P145075639638179393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004525 (A102973 (n + 1)).toNat) 3

end

end A232353.P145075639638179393

/-! ## A232353.P2220358603483116138

`∑{e}[∏{p}[A003333(A000041(2*(n+1))), #], #]-1`
-/

namespace A232353.P2220358603483116138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003333 (A000041 (2 * (n + 1))).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1

end

end A232353.P2220358603483116138

/-! ## A232353.P15347724789987602845

`A126043(A238558(n+3)+A000700(n))`
-/

namespace A232353.P15347724789987602845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126043 (A238558 (n + 3) + A000700 n).toNat

end

end A232353.P15347724789987602845

/-!
# A232354: Numbers k that divide sigma(k^2) where sigma is the sum of divisors function (A000203).

The programs for A232354, there is no canonical definition to state claims against.
-/

/-! ## A232354.P11391254714998018884

`A232067(a(12%n)+n)` with `a(0)=1`
-/

namespace A232354.P11391254714998018884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A232067 (a (12 % n) + (n : ℤ)).toNat

end

end A232354.P11391254714998018884

/-!
# A232355: Numbers k such that sigma(triangular(k)) = sigma(k)^2.

The programs for A232355, there is no canonical definition to state claims against.
-/

/-! ## A232355.P14728178858853617287

`2*A289738(1+n)-1`
-/

namespace A232355.P14728178858853617287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A289738 (1 + n) - 1

end

end A232355.P14728178858853617287

/-! ## A232355.P15364378415431313088

`A057428(n+1)+2*A289738(n+1)`
-/

namespace A232355.P15364378415431313088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + 2 * A289738 (n + 1)

end

end A232355.P15364378415431313088

/-! ## A232355.P5342858547234483257

`or(-1, A000041(n))+2*A289738(n+1)`
-/

namespace A232355.P5342858547234483257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-1) (A000041 n) + 2 * A289738 (n + 1)

end

end A232355.P5342858547234483257

/-! ## A232355.P15686232900686283194

`A062157(2*(n+2))+2*A289738(n+1)`
-/

namespace A232355.P15686232900686283194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * (n + 2)) + 2 * A289738 (n + 1)

end

end A232355.P15686232900686283194

/-! ## A232355.P15066967786062252191

`A008683(A020484(n))+2*A289738(n+1)`
-/

namespace A232355.P15066967786062252191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A020484 n).toNat + 2 * A289738 (n + 1)

end

end A232355.P15066967786062252191

/-! ## A232355.P13892440267897289301

`A118830(A005408(n))+2*A289738(n+1)`
-/

namespace A232355.P13892440267897289301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A005408 n).toNat + 2 * A289738 (n + 1)

end

end A232355.P13892440267897289301

/-! ## A232355.P5159786359447286000

`A033999(A131507(n))+2*A289738(n+1)`
-/

namespace A232355.P5159786359447286000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A131507 n).toNat + 2 * A289738 (n + 1)

end

end A232355.P5159786359447286000

/-! ## A232355.P12537481430755624341

`A253414(A017137(n))+2*A289738(n+1)`
-/

namespace A232355.P12537481430755624341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253414 (A017137 n).toNat + 2 * A289738 (n + 1)

end

end A232355.P12537481430755624341

/-! ## A232355.P3729268274325963905

`A118830(A275068(n))+2*A289738(n+1)`
-/

namespace A232355.P3729268274325963905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A275068 n).toNat + 2 * A289738 (n + 1)

end

end A232355.P3729268274325963905

/-! ## A232355.P7235935059511829468

`A008683(A000705(n+1))+2*A289738(n+1)`
-/

namespace A232355.P7235935059511829468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000705 (n + 1)).toNat + 2 * A289738 (n + 1)

end

end A232355.P7235935059511829468

/-! ## A232355.P5125300349751898689

`A008683(A001097(n+1))+2*A289738(n+1)`
-/

namespace A232355.P5125300349751898689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001097 (n + 1)).toNat + 2 * A289738 (n + 1)

end

end A232355.P5125300349751898689

/-! ## A232355.P618674660940952058

`A008683(A001359(n+1))+2*A289738(n+1)`
-/

namespace A232355.P618674660940952058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A001359 (n + 1)).toNat + 2 * A289738 (n + 1)

end

end A232355.P618674660940952058

/-! ## A232355.P17748744884558745346

`A008683(A006562(n+1))+2*A289738(n+1)`
-/

namespace A232355.P17748744884558745346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006562 (n + 1)).toNat + 2 * A289738 (n + 1)

end

end A232355.P17748744884558745346

/-! ## A232355.P7019241152822133363

`A008683(A045326(n+1))+2*A289738(n+1)`
-/

namespace A232355.P7019241152822133363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A045326 (n + 1)).toNat + 2 * A289738 (n + 1)

end

end A232355.P7019241152822133363

/-! ## A232355.P12727934482605788732

`A008683(A065726(n+1))+2*A289738(n+1)`
-/

namespace A232355.P12727934482605788732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A065726 (n + 1)).toNat + 2 * A289738 (n + 1)

end

end A232355.P12727934482605788732

/-! ## A232355.P2863238009824404410

`A008683(A169647(n+1))+2*A289738(n+1)`
-/

namespace A232355.P2863238009824404410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A169647 (n + 1)).toNat + 2 * A289738 (n + 1)

end

end A232355.P2863238009824404410

/-! ## A232355.P13117008212479783179

`A008683(record[A014963(n+2)])+2*A289738(n+1)`
-/

namespace A232355.P13117008212479783179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A289738 (n + 1)

end

end A232355.P13117008212479783179

/-! ## A232355.P1325209730942101048

`A008683(record[A000010(n+1)+1])+2*A289738(n+1)`
-/

namespace A232355.P1325209730942101048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 2 * A289738 (n + 1)

end

end A232355.P1325209730942101048

/-!
# A232356: Expansion of 2/9 * c(q) * c(q^2) - q * (psi(q) * psi(q^3))^2 in powers of q where psi() is a Ramanujan theta function and c(q) is a cubic AGM theta function.

The programs for A232356, the canonical program `A232356.P2356897415690345151` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232356 has offset 1).

The definition of A232356 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111932, A121443, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A232356.P2356897415690345151

`2*A121443(n+1)-A111932(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A232356

/-- `2*A121443(n+1)-A111932(n+1)` -/
def P2356897415690345151.Spec : Prop :=
  ∀ n, P2356897415690345151.a n = A232356 (n + 1)

theorem P2356897415690345151.correct : P2356897415690345151.Spec := by
  intro n
  simp only [A232356, Nat.add_sub_cancel]

end A232356

/-! ## A232356.P12764205554989175737

`2*A121443(n+1)-A002131(A038502(n+1))`
-/

namespace A232356.P12764205554989175737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121443 (n + 1) - A002131 (A038502 (n + 1)).toNat

end

end A232356.P12764205554989175737

namespace A232356

/-- `2*A121443(n+1)-A002131(A038502(n+1))` -/
def P12764205554989175737.Spec : Prop :=
  ∀ n, P12764205554989175737.a n = A232356 (n + 1)

end A232356

/-! ## A232356.P12195928528758671931

`A321527(2*(n+1))+A121443(n+1)`
-/

namespace A232356.P12195928528758671931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (2 * (n + 1)) + A121443 (n + 1)

end

end A232356.P12195928528758671931

namespace A232356

/-- `A321527(2*(n+1))+A121443(n+1)` -/
def P12195928528758671931.Spec : Prop :=
  ∀ n, P12195928528758671931.a n = A232356 (n + 1)

end A232356

/-! ## A232356.P10520476190864866234

`A321527(A163300(n+1))+abs(A226132(n+1))`
-/

namespace A232356.P10520476190864866234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321527 (A163300 (n + 1)).toNat + |A226132 (n + 1)|

end

end A232356.P10520476190864866234

namespace A232356

/-- `A321527(A163300(n+1))+abs(A226132(n+1))` -/
def P10520476190864866234.Spec : Prop :=
  ∀ n, P10520476190864866234.a n = A232356 (n + 1)

end A232356

/-! ## A232356.P7269099999268794682

`A005843(A121443(n+1))-A111932(n+1)`
-/

namespace A232356.P7269099999268794682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A121443 (n + 1)).toNat - A111932 (n + 1)

end

end A232356.P7269099999268794682

namespace A232356

/-- `A005843(A121443(n+1))-A111932(n+1)` -/
def P7269099999268794682.Spec : Prop :=
  ∀ n, P7269099999268794682.a n = A232356 (n + 1)

end A232356

/-! ## A232356.P8109202895718589879

`A328788(2*(n+1))+A229615(2*(n+1))`
-/

namespace A232356.P8109202895718589879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328788 (2 * (n + 1)) + A229615 (2 * (n + 1))

end

end A232356.P8109202895718589879

namespace A232356

/-- `A328788(2*(n+1))+A229615(2*(n+1))` -/
def P8109202895718589879.Spec : Prop :=
  ∀ n, P8109202895718589879.a n = A232356 (n + 1)

end A232356

/-! ## A232356.P10678309901822077225

`A122080(A121443(n+1))-A002131(A038502(n+1))`
-/

namespace A232356.P10678309901822077225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122080 (A121443 (n + 1)).toNat - A002131 (A038502 (n + 1)).toNat

end

end A232356.P10678309901822077225

namespace A232356

/-- `A122080(A121443(n+1))-A002131(A038502(n+1))` -/
def P10678309901822077225.Spec : Prop :=
  ∀ n, P10678309901822077225.a n = A232356 (n + 1)

end A232356

/-!
# A232357: The number of pairs of numbers below n that, when generating a Fibonacci-like sequence modulo n, do not contain zero.

The programs for A232357, there is no canonical definition to state claims against.
-/

/-! ## A232357.P8584271058640564320

`(n+1)²-A232656(n+1)`
-/

namespace A232357.P8584271058640564320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A232656 (n + 1)

end

end A232357.P8584271058640564320

/-! ## A232357.P1295095944389639137

`A005563(n)+1-A232656(n+1)`
-/

namespace A232357.P1295095944389639137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n + (1 - A232656 (n + 1))

end

end A232357.P1295095944389639137

/-! ## A232357.P2726531087263160210

`A028387(n)-(A232656(n+1)+n)`
-/

namespace A232357.P2726531087263160210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n - (A232656 (n + 1) + (n : ℤ))

end

end A232357.P2726531087263160210

/-! ## A232357.P14492519299274882209

`A002522(n+1)-(A232656(n+1)+1)`
-/

namespace A232357.P14492519299274882209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (n + 1) - (A232656 (n + 1) + 1)

end

end A232357.P14492519299274882209

/-!
# A232358: Expansion of phi(q^2)^2 / (phi(q) * phi(q^4)) in powers of q where phi() is a Ramanujan theta function.

The programs for A232358, there is no canonical definition to state claims against.
-/

/-! ## A232358.P7514451048907052316

`(-1)^n*A212318(n)`
-/

namespace A232358.P7514451048907052316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A212318 n

end

end A232358.P7514451048907052316

/-! ## A232358.P18215165471649300770

`A189925(n)+A127391(n)`
-/

namespace A232358.P18215165471649300770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189925 n + A127391 n

end

end A232358.P18215165471649300770

/-! ## A232358.P17151500173237304403

`A212318(n)/A033999(n)`
-/

namespace A232358.P17151500173237304403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212318 n : ℚ) / (A033999 n : ℚ)

end

end A232358.P17151500173237304403

/-! ## A232358.P13615388732074767107

`2*A112128(n)-A208604(n)`
-/

namespace A232358.P13615388732074767107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A112128 n - A208604 n

end

end A232358.P13615388732074767107

/-! ## A232358.P15115091279846689736

`A007096(n)+A189925(n)-A212318(n)`
-/

namespace A232358.P15115091279846689736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 n + (A189925 n - A212318 n)

end

end A232358.P15115091279846689736

/-!
# A232361: Peak values in A232221.

The programs for A232361, there is no canonical definition to state claims against.
-/

/-! ## A232361.P1900268356058071684

`A232221(A232359(n+1))`
-/

namespace A232361.P1900268356058071684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232221 (A232359 (n + 1)).toNat

end

end A232361.P1900268356058071684

/-!
# A232362: Number of n X n 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically.

The programs for A232362, there is no canonical definition to state claims against.
-/

/-! ## A232362.P12564545046313897000

`A232368((n+1)²+n²)`
-/

namespace A232362.P12564545046313897000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 ((n + 1) ^ 2 + n ^ 2)

end

end A232362.P12564545046313897000

/-!
# A232363: Number of n X 3 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically.

The programs for A232363, there is no canonical definition to state claims against.
-/

/-! ## A232363.P16904057097491981714

`A232368(∑[n+2]+4)`
-/

namespace A232363.P16904057097491981714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232363.P16904057097491981714

/-! ## A232363.P3002644331695146725

`or(1, A232368(A167614(n+1)))`
-/

namespace A232363.P3002644331695146725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A232368 (A167614 (n + 1)).toNat)

end

end A232363.P3002644331695146725

/-! ## A232363.P9327392382617345109

`A232368(A167614(n+1))+A178798(n)`
-/

namespace A232363.P9327392382617345109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A167614 (n + 1)).toNat + A178798 n

end

end A232363.P9327392382617345109

/-! ## A232363.P14635345126926921418

`A232368(A167614(n+1))%A232346(n+1)`
-/

namespace A232363.P14635345126926921418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232368 (A167614 (n + 1)).toNat) (A232346 (n + 1))

end

end A232363.P14635345126926921418

/-! ## A232363.P1452970584504895068

`lcm(A232368(A167614(n+1)), A280193(2*n+1))`
-/

namespace A232363.P1452970584504895068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A232368 (A167614 (n + 1)).toNat) (A280193 (2 * n + 1))

end

end A232363.P1452970584504895068

/-!
# A232364: Number of n X 4 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically.

The programs for A232364, there is no canonical definition to state claims against.
-/

/-! ## A232364.P5446131445466125462

`A232368(A374004(n+1))`
-/

namespace A232364.P5446131445466125462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A374004 (n + 1)).toNat

end

end A232364.P5446131445466125462

/-! ## A232364.P15738893935913447771

`A232368(A055999(n)+10)`
-/

namespace A232364.P15738893935913447771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A055999 n + 10).toNat

end

end A232364.P15738893935913447771

/-! ## A232364.P8170903200865664674

`A232368(eq[5, A066657(n)])`
-/

namespace A232364.P8170903200865664674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232364.P8170903200865664674

/-! ## A232364.P18202127829815369845

`A232368(A167614(n+2)+1)`
-/

namespace A232364.P18202127829815369845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A167614 (n + 2) + 1).toNat

end

end A232364.P18202127829815369845

/-! ## A232364.P15552444880005475185

`A232368(A000124(n+3)+3)`
-/

namespace A232364.P15552444880005475185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A000124 (n + 3) + 3).toNat

end

end A232364.P15552444880005475185

/-!
# A232365: Number of nX5 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically.

The programs for A232365, there is no canonical definition to state claims against.
-/

/-! ## A232365.P8620958737618586630

`A232368(A374005(n+1))`
-/

namespace A232365.P8620958737618586630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A374005 (n + 1)).toNat

end

end A232365.P8620958737618586630

/-! ## A232365.P2106781379427017268

`A232368(A155212(n)+13)`
-/

namespace A232365.P2106781379427017268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A155212 n + 13).toNat

end

end A232365.P2106781379427017268

/-! ## A232365.P8993523129018419262

`A232368(A056000(n)+15)`
-/

namespace A232365.P8993523129018419262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A056000 n + 15).toNat

end

end A232365.P8993523129018419262

/-! ## A232365.P3504064161379269237

`A232368(Δ[A264443(n)])`
-/

namespace A232365.P3504064161379269237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (f1 (n + 1) - f1 n).toNat

end

end A232365.P3504064161379269237

/-! ## A232365.P13216449016700432111

`A232368(eq[4, A193592(n)])`
-/

namespace A232365.P13216449016700432111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232365.P13216449016700432111

/-!
# A232366: Number of nX6 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically.

The programs for A232366, there is no canonical definition to state claims against.
-/

/-! ## A232366.P481021519426179495

`A232368(A374007(n+1))`
-/

namespace A232366.P481021519426179495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A374007 (n + 1)).toNat

end

end A232366.P481021519426179495

/-! ## A232366.P16318451775633237038

`A232368(eq[5, A193592(n)])`
-/

namespace A232366.P16318451775633237038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232366.P16318451775633237038

/-! ## A232366.P8736134159358119072

`A232368(eq[8, A185782(n+1)])`
-/

namespace A232366.P8736134159358119072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232366.P8736134159358119072

/-! ## A232366.P6011364101656986925

`A232368(Δ[A264443(n+1)]-1)`
-/

namespace A232366.P6011364101656986925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (f1 (n + 1) - f1 n - 1).toNat

end

end A232366.P6011364101656986925

/-!
# A232367: Number of nX7 0..2 arrays with every 0 next to a 1 and every 1 next to a 2 horizontally or vertically.

The programs for A232367, there is no canonical definition to state claims against.
-/

/-! ## A232367.P6079380118539747638

`A232368(A374008(n+1))`
-/

namespace A232367.P6079380118539747638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (A374008 (n + 1)).toNat

end

end A232367.P6079380118539747638

/-! ## A232367.P12719267167953656392

`A232368(eq[6, A193592(n)])`
-/

namespace A232367.P12719267167953656392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232367.P12719267167953656392

/-! ## A232367.P17775453854672966160

`A232368(eq[10, A185782(n+1)])`
-/

namespace A232367.P17775453854672966160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232367.P17775453854672966160

/-!
# A232369: Number of n X n 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232369, there is no canonical definition to state claims against.
-/

/-! ## A232369.P11614342282713380192

`A232376(∑[4*n]+1)`
-/

namespace A232369.P11614342282713380192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232369.P11614342282713380192

/-! ## A232369.P15893490688157334579

`record[gcd(A232376(n+1), A323376(n+1))]`
-/

namespace A232369.P15893490688157334579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232376 (n + 1)) (A323376 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232369.P15893490688157334579

/-! ## A232369.P1765653026836323264

`A232376(A001844(n))+A025444(n)`
-/

namespace A232369.P1765653026836323264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A001844 n).toNat + A025444 n

end

end A232369.P1765653026836323264

/-! ## A232369.P3703207828585389790

`A131364(n)*A232376(A001844(n))`
-/

namespace A232369.P3703207828585389790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131364 n * A232376 (A001844 n).toNat

end

end A232369.P3703207828585389790

/-! ## A232369.P5984004431309810939

`lcm(A000034(n), A232376(A001844(n)))`
-/

namespace A232369.P5984004431309810939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A232376 (A001844 n).toNat)

end

end A232369.P5984004431309810939

/-!
# A232370: Number of n X 2 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232370, the canonical program `A232370.P9607431614255805016` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232370 has offset 1).

The definition of A232370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232370.P9607431614255805016

`ogf((2+10x+16x^2+4x^3-12x^4+2x^5+2x^6)/(1-2x-7x^2-6x^3+2x^4+3x^5-2x^6-x^7))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232370

/-- `ogf((2+10x+16x^2+4x^3-12x^4+2x^5+2x^6)/(1-2x-7x^2-6x^3+2x^4+3x^5-2x^6-x^7))` -/
def P9607431614255805016.Spec : Prop :=
  ∀ n, P9607431614255805016.a n = A232370 (n + 1)

theorem P9607431614255805016.correct : P9607431614255805016.Spec := by
  intro n
  simp only [A232370, Nat.add_sub_cancel]

end A232370

/-! ## A232370.P2487913031580647749

`A232376(∑[n+2])`
-/

namespace A232370.P2487913031580647749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A232370.P2487913031580647749

namespace A232370

/-- `A232376(∑[n+2])` -/
def P2487913031580647749.Spec : Prop :=
  ∀ n, P2487913031580647749.a n = A232370 (n + 1)

end A232370

/-! ## A232370.P3685553157504338838

`record[A232376(Δ[A003453(n+5)])]`
-/

namespace A232370.P3685553157504338838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232370.P3685553157504338838

namespace A232370

/-- `record[A232376(Δ[A003453(n+5)])]` -/
def P3685553157504338838.Spec : Prop :=
  ∀ n, P3685553157504338838.a n = A232370 (n + 1)

end A232370

/-! ## A232370.P18291552142739855368

`record[(2-A025581(n))*A232376(n+1)]`
-/

namespace A232370.P18291552142739855368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A025581 n) * A232376 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232370.P18291552142739855368

namespace A232370

/-- `record[(2-A025581(n))*A232376(n+1)]` -/
def P18291552142739855368.Spec : Prop :=
  ∀ n, P18291552142739855368.a n = A232370 (n + 1)

end A232370

/-! ## A232370.P15902471138612173291

`record[A232376(n+2)/A232376(n+3)]`
-/

namespace A232370.P15902471138612173291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232376 (n + 2) : ℚ) / (A232376 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232370.P15902471138612173291

namespace A232370

/-- `record[A232376(n+2)/A232376(n+3)]` -/
def P15902471138612173291.Spec : Prop :=
  ∀ n, P15902471138612173291.a n = (A232370 (n + 1) : ℚ)

end A232370

/-!
# A232371: Number of nX3 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232371, there is no canonical definition to state claims against.
-/

/-! ## A232371.P7239733788982555383

`A232376(∑[n+3]+1)`
-/

namespace A232371.P7239733788982555383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232371.P7239733788982555383

/-!
# A232372: Number of nX4 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232372, there is no canonical definition to state claims against.
-/

/-! ## A232372.P5637507056715072353

`A232376(A141214(n+1))`
-/

namespace A232372.P5637507056715072353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A141214 (n + 1)).toNat

end

end A232372.P5637507056715072353

/-! ## A232372.P16105800116056107320

`A232376(A056000(n)+7)`
-/

namespace A232372.P16105800116056107320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A056000 n + 7).toNat

end

end A232372.P16105800116056107320

/-! ## A232372.P10214744044494233302

`A232376(eq[3, A193592(n)])`
-/

namespace A232372.P10214744044494233302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232372.P10214744044494233302

/-! ## A232372.P579961599844866566

`A232376(eq[4, A140997(n)])`
-/

namespace A232372.P579961599844866566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232372.P579961599844866566

/-! ## A232372.P2051573122255600805

`A232376(A052905(n+1)+2)`
-/

namespace A232372.P2051573122255600805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A052905 (n + 1) + 2).toNat

end

end A232372.P2051573122255600805

/-!
# A232373: Number of nX5 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232373, there is no canonical definition to state claims against.
-/

/-! ## A232373.P6931060495010506698

`A232376(Δ[A264443(n)])`
-/

namespace A232373.P6931060495010506698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (f1 (n + 1) - f1 n).toNat

end

end A232373.P6931060495010506698

/-! ## A232373.P3255095132432030262

`A232376(A056115(n)+11)`
-/

namespace A232373.P3255095132432030262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A056115 n + 11).toNat

end

end A232373.P3255095132432030262

/-! ## A232373.P16593400753302729373

`A232376(eq[4, A193592(n)])`
-/

namespace A232373.P16593400753302729373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232373.P16593400753302729373

/-! ## A232373.P15927307943244498999

`A232376(Δ[A023545(n+1)])`
-/

namespace A232373.P15927307943244498999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (f1 (n + 1) - f1 n).toNat

end

end A232373.P15927307943244498999

/-! ## A232373.P1950238316299296870

`A232376(A052905(n+2)+1)`
-/

namespace A232373.P1950238316299296870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A052905 (n + 2) + 1).toNat

end

end A232373.P1950238316299296870

/-!
# A232374: Number of nX6 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232374, there is no canonical definition to state claims against.
-/

/-! ## A232374.P2078463718760195562

`A232376(A056119(n)+16)`
-/

namespace A232374.P2078463718760195562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A056119 n + 16).toNat

end

end A232374.P2078463718760195562

/-! ## A232374.P567614697539714903

`A232376(eq[3, A219347(n)])`
-/

namespace A232374.P567614697539714903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232374.P567614697539714903

/-! ## A232374.P9126014448286868327

`A232376(eq[5, A193592(n)])`
-/

namespace A232374.P9126014448286868327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232374.P9126014448286868327

/-! ## A232374.P4577871144865347459

`A232376(eq[8, A258709(n)])`
-/

namespace A232374.P4577871144865347459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232374.P4577871144865347459

/-! ## A232374.P4566876084342035469

`A232376(Δ[Δ[A006504(n+1)]])`
-/

namespace A232374.P4566876084342035469
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (f1 (n + 1) - f1 n).toNat

end

end A232374.P4566876084342035469

/-!
# A232375: Number of nX7 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232375, there is no canonical definition to state claims against.
-/

/-! ## A232375.P14855135232790619555

`A232376(eq[4, A219347(n)])`
-/

namespace A232375.P14855135232790619555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232375.P14855135232790619555

/-! ## A232375.P18120806746971577849

`A232376(eq[6, A193592(n)])`
-/

namespace A232375.P18120806746971577849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232375.P18120806746971577849

/-! ## A232375.P1445198123729038357

`A232376(A052905(n+4)-1)`
-/

namespace A232375.P1445198123729038357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A052905 (n + 4) - 1).toNat

end

end A232375.P1445198123729038357

/-! ## A232375.P15172192264231851162

`A232376(eq[7, A200370(n+1)])`
-/

namespace A232375.P15172192264231851162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232375.P15172192264231851162

/-! ## A232375.P8723065674668837794

`A232376(eq[10, A185782(n+1)])`
-/

namespace A232375.P8723065674668837794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232375.P8723065674668837794

/-!
# A232377: Number of 2Xn 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232377, the canonical program `A232377.P7276593785189543390` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232377 has offset 1).

The definition of A232377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A232377.P7276593785189543390

`ogf((1+11x+31x^2+47x^3-14x^4+8x^5+64x^6-16x^7-32x^8)/(1-3x-x^2-13x^3-26x^5+4x^6-24x^7-16x^8))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232377

/-- `ogf((1+11x+31x^2+47x^3-14x^4+8x^5+64x^6-16x^7-32x^8)/(1-3x-x^2-13x^3-26x^5+4x^6-24x^7-16x^8))` -/
def P7276593785189543390.Spec : Prop :=
  ∀ n, P7276593785189543390.a n = A232377 (n + 1)

theorem P7276593785189543390.correct : P7276593785189543390.Spec := by
  intro n
  simp only [A232377, Nat.add_sub_cancel]

end A232377

/-! ## A232377.P17541600855747310132

`A232376(∑[n+1]+2)`
-/

namespace A232377.P17541600855747310132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232377.P17541600855747310132

namespace A232377

/-- `A232376(∑[n+1]+2)` -/
def P17541600855747310132.Spec : Prop :=
  ∀ n, P17541600855747310132.a n = A232377 (n + 1)

end A232377

/-! ## A232377.P11266120529098540344

`record[gcd(A098825(n), A232376(n+1))]`
-/

namespace A232377.P11266120529098540344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A232376 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232377.P11266120529098540344

namespace A232377

/-- `record[gcd(A098825(n), A232376(n+1))]` -/
def P11266120529098540344.Spec : Prop :=
  ∀ n, (P11266120529098540344.a n : ℤ) = A232377 (n + 1)

end A232377

/-! ## A232377.P15718961054201877803

`record[gcd(A085771(n), A232376(n+2))]`
-/

namespace A232377.P15718961054201877803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085771 n) (A232376 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232377.P15718961054201877803

namespace A232377

/-- `record[gcd(A085771(n), A232376(n+2))]` -/
def P15718961054201877803.Spec : Prop :=
  ∀ n, (P15718961054201877803.a n : ℤ) = A232377 (n + 1)

end A232377

/-! ## A232377.P15278092812054785339

`record[gcd(A025581(n), A232376(n+3))]`
-/

namespace A232377.P15278092812054785339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A232376 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232377.P15278092812054785339

namespace A232377

/-- `record[gcd(A025581(n), A232376(n+3))]` -/
def P15278092812054785339.Spec : Prop :=
  ∀ n, (P15278092812054785339.a n : ℤ) = A232377 (n + 1)

end A232377

/-!
# A232378: Number of 3Xn 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232378, there is no canonical definition to state claims against.
-/

/-! ## A232378.P4839537703354037359

`A232376(∑[n+2]+4)`
-/

namespace A232378.P4839537703354037359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232378.P4839537703354037359

/-! ## A232378.P13159418162191613390

`A232376(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A232378.P13159418162191613390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232376 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A232378.P13159418162191613390

/-! ## A232378.P17909546787795511749

`lcm(A020985(n), A232376(A167614(n+1)))`
-/

namespace A232378.P17909546787795511749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A232376 (A167614 (n + 1)).toNat)

end

end A232378.P17909546787795511749

/-! ## A232378.P13988151538896309287

`A351539(n+1)+A232376(A167614(n+1))`
-/

namespace A232378.P13988151538896309287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351539 (n + 1) + A232376 (A167614 (n + 1)).toNat

end

end A232378.P13988151538896309287

/-! ## A232378.P1154910111566322359

`A232376(A167614(n+1))%A232374(n+1)`
-/

namespace A232378.P1154910111566322359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232376 (A167614 (n + 1)).toNat) (A232374 (n + 1))

end

end A232378.P1154910111566322359

/-!
# A232379: Number of 4Xn 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232379, there is no canonical definition to state claims against.
-/

/-! ## A232379.P3771262066430699574

`A232376(A141214(n)+7)`
-/

namespace A232379.P3771262066430699574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A141214 n + 7).toNat

end

end A232379.P3771262066430699574

/-! ## A232379.P2820089904716268700

`A232376(A052905(n)+9)`
-/

namespace A232379.P2820089904716268700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A052905 n + 9).toNat

end

end A232379.P2820089904716268700

/-! ## A232379.P12112692884208351213

`A232376(A055999(n)+10)`
-/

namespace A232379.P12112692884208351213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A055999 n + 10).toNat

end

end A232379.P12112692884208351213

/-! ## A232379.P10772787260605486145

`A232376(A167614(n+2)+1)`
-/

namespace A232379.P10772787260605486145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A167614 (n + 2) + 1).toNat

end

end A232379.P10772787260605486145

/-! ## A232379.P18281970764930392857

`A232376(A166136(n+2)-2)`
-/

namespace A232379.P18281970764930392857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A166136 (n + 2) - 2).toNat

end

end A232379.P18281970764930392857

/-!
# A232380: Number of 5Xn 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232380, there is no canonical definition to state claims against.
-/

/-! ## A232380.P6140430973800399171

`A232376(A167499(n+3))`
-/

namespace A232380.P6140430973800399171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A167499 (n + 3)).toNat

end

end A232380.P6140430973800399171

/-! ## A232380.P2147103872072865184

`A232376(A155212(n)+13)`
-/

namespace A232380.P2147103872072865184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A155212 n + 13).toNat

end

end A232380.P2147103872072865184

/-! ## A232380.P9017134509023227315

`A232376(A056000(n)+15)`
-/

namespace A232380.P9017134509023227315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A056000 n + 15).toNat

end

end A232380.P9017134509023227315

/-! ## A232380.P653201687726393807

`A232376(A167614(n+3)+2)`
-/

namespace A232380.P653201687726393807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A167614 (n + 3) + 2).toNat

end

end A232380.P653201687726393807

/-! ## A232380.P16679650208993521668

`A232376(A000124(n+4)+4)`
-/

namespace A232380.P16679650208993521668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A000124 (n + 4) + 4).toNat

end

end A232380.P16679650208993521668

/-!
# A232381: Number of 6Xn 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232381, there is no canonical definition to state claims against.
-/

/-! ## A232381.P4620027194644224571

`A232376(A167614(n+4)+3)`
-/

namespace A232381.P4620027194644224571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A167614 (n + 4) + 3).toNat

end

end A232381.P4620027194644224571

/-! ## A232381.P1656077101197493163

`A232376(A000217(n+5)+6)`
-/

namespace A232381.P1656077101197493163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A000217 (n + 5) + 6).toNat

end

end A232381.P1656077101197493163

/-! ## A232381.P12056280253195544302

`A232376(eq[6, A130270(n+1)])`
-/

namespace A232381.P12056280253195544302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232381.P12056280253195544302

/-! ## A232381.P9700761977757736878

`A232376(eq[7, A131818(n+1)])`
-/

namespace A232381.P9700761977757736878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232381.P9700761977757736878

/-! ## A232381.P11987822880913225861

`A232376(eq[13, A099375(n)]-2*n)`
-/

namespace A232381.P11987822880913225861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A232381.P11987822880913225861

/-!
# A232382: Number of 7Xn 0..3 arrays with every 0 next to a 1, every 1 next to a 2 and every 2 next to a 3 horizontally, diagonally or antidiagonally, and no adjacent values equal.

The programs for A232382, there is no canonical definition to state claims against.
-/

/-! ## A232382.P667026841881685369

`A232376(eq[11, A066657(n)])`
-/

namespace A232382.P667026841881685369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232382.P667026841881685369

/-! ## A232382.P3992661047416085136

`A232376(A000124(n+6)+6)`
-/

namespace A232382.P3992661047416085136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A000124 (n + 6) + 6).toNat

end

end A232382.P3992661047416085136

/-! ## A232382.P4551918943356656201

`A232376(A000217(n+6)+7)`
-/

namespace A232382.P4551918943356656201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (A000217 (n + 6) + 7).toNat

end

end A232382.P4551918943356656201

/-! ## A232382.P3288400167625034615

`A232376(eq[8, A131818(n+1)])`
-/

namespace A232382.P3288400167625034615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232382.P3288400167625034615

/-! ## A232382.P6008897516603735366

`A232376(eq[8, A141169(n)]+1)`
-/

namespace A232382.P6008897516603735366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A232382.P6008897516603735366

/-!
# A232383: Number of (n+1)X(n+1) 0..3 arrays with every element next to itself plus and minus one within the range 0..3 horizontally, vertically or antidiagonally, with no adjacent elements equal.

The programs for A232383, there is no canonical definition to state claims against.
-/

/-! ## A232383.P12191495976435183950

`A232391(∑[4*n]+1)`
-/

namespace A232383.P12191495976435183950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232383.P12191495976435183950

/-! ## A232383.P15214405371018833409

`lcm(2, A232391(A001844(n)))`
-/

namespace A232383.P15214405371018833409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232391 (A001844 n).toNat)

end

end A232383.P15214405371018833409

/-! ## A232383.P10158252063375529401

`record[A003982(n)*A232391(n+1)]`
-/

namespace A232383.P10158252063375529401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232391 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232383.P10158252063375529401

/-! ## A232383.P6681772661134587070

`record[gcd(A008482(n), A232391(n+1))]`
-/

namespace A232383.P6681772661134587070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A232391 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232383.P6681772661134587070

/-!
# A232384: Number of (n+1)X(1+1) 0..3 arrays with every element next to itself plus and minus one within the range 0..3 horizontally, vertically or antidiagonally, with no adjacent elements equal.

The programs for A232384, there is no canonical definition to state claims against.
-/

/-! ## A232384.P16592424069593019867

`A232391(∑[n]+1)`
-/

namespace A232384.P16592424069593019867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232384.P16592424069593019867

/-! ## A232384.P15877178179520057752

`lcm(2, A232391(A000124(n)))`
-/

namespace A232384.P15877178179520057752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232391 (A000124 n).toNat)

end

end A232384.P15877178179520057752

/-! ## A232384.P16566664034363624287

`record[A232391(A056534(n+1))]`
-/

namespace A232384.P16566664034363624287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232384.P16566664034363624287

/-! ## A232384.P1565767869894765446

`record[A232391(A254052(n+1))]`
-/

namespace A232384.P1565767869894765446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232384.P1565767869894765446

/-! ## A232384.P18337554851260791306

`record[A232391(A276944(n+1))]`
-/

namespace A232384.P18337554851260791306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A276944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232384.P18337554851260791306

/-!
# A232385: Number of (n+1)X(2+1) 0..3 arrays with every element next to itself plus and minus one within the range 0..3 horizontally, vertically or antidiagonally, with no adjacent elements equal.

The programs for A232385, there is no canonical definition to state claims against.
-/

/-! ## A232385.P9100157604783013057

`A232391(∑[n+1]+2)`
-/

namespace A232385.P9100157604783013057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A232385.P9100157604783013057

/-! ## A232385.P3941610628652176204

`lcm(2, A232391(A133263(n+1)))`
-/

namespace A232385.P3941610628652176204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232391 (A133263 (n + 1)).toNat)

end

end A232385.P3941610628652176204

/-! ## A232385.P15007815638012100598

`record[A232391(A276944(n+3)+1)]`
-/

namespace A232385.P15007815638012100598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A276944 (n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232385.P15007815638012100598

/-! ## A232385.P12957590598419030997

`record[root(A232391(n+2), A327844(n+1))]`
-/

namespace A232385.P12957590598419030997
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232391 (n + 2) : ℝ) ^ (1 / (A327844 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232385.P12957590598419030997

/-! ## A232385.P14351319668737519777

`A007318(C(3, n))*A232391(A133263(n+1))`
-/

namespace A232385.P14351319668737519777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) * A232391 (A133263 (n + 1)).toNat

end

end A232385.P14351319668737519777

/-!
# A232386: Number of (n+1)X(3+1) 0..3 arrays with every element next to itself plus and minus one within the range 0..3 horizontally, vertically or antidiagonally, with no adjacent elements equal.

The programs for A232386, there is no canonical definition to state claims against.
-/

/-! ## A232386.P12159937859919878691

`A232391(∑[n+2]+4)`
-/

namespace A232386.P12159937859919878691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A232386.P12159937859919878691

/-! ## A232386.P4494296696210525452

`lcm(2, A232391(A167614(n+1)))`
-/

namespace A232386.P4494296696210525452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232391 (A167614 (n + 1)).toNat)

end

end A232386.P4494296696210525452

/-! ## A232386.P4174567919692176749

`A232391(A055998(n)+6)+char[16]`
-/

namespace A232386.P4174567919692176749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A055998 n + 6).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A232386.P4174567919692176749

/-! ## A232386.P14839080887914225783

`record[A232391(n+4)/A027465(n)]`
-/

namespace A232386.P14839080887914225783
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232391 (n + 4) : ℚ) / (A027465 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232386.P14839080887914225783

/-! ## A232386.P12790167485627776594

`record[A232391(n+4)/A121574(n)]`
-/

namespace A232386.P12790167485627776594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232391 (n + 4) : ℚ) / (A121574 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232386.P12790167485627776594

/-!
# A232387: Number of (n+1)X(4+1) 0..3 arrays with every element next to itself plus and minus one within the range 0..3 horizontally, vertically or antidiagonally, with no adjacent elements equal.

The programs for A232387, there is no canonical definition to state claims against.
-/

/-! ## A232387.P9700599952052233623

`A232391(A374004(n+1))`
-/

namespace A232387.P9700599952052233623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A374004 (n + 1)).toNat

end

end A232387.P9700599952052233623

/-! ## A232387.P17671705310407200731

`A232391(A141214(n)+7)`
-/

namespace A232387.P17671705310407200731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A141214 n + 7).toNat

end

end A232387.P17671705310407200731

/-! ## A232387.P3520343436269508913

`A232391(A052905(n)+9)`
-/

namespace A232387.P3520343436269508913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A052905 n + 9).toNat

end

end A232387.P3520343436269508913

/-! ## A232387.P86793994162914974

`A232391(A055999(n)+10)`
-/

namespace A232387.P86793994162914974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A055999 n + 10).toNat

end

end A232387.P86793994162914974

/-! ## A232387.P5223429260013829245

`A232391(eq[5, A066657(n)])`
-/

namespace A232387.P5223429260013829245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232387.P5223429260013829245

/-!
# A232388: Number of (n+1)X(5+1) 0..3 arrays with every element next to itself plus and minus one within the range 0..3 horizontally, vertically or antidiagonally, with no adjacent elements equal.

The programs for A232388, there is no canonical definition to state claims against.
-/

/-! ## A232388.P10881853730800152054

`A232391(A374005(n+1))`
-/

namespace A232388.P10881853730800152054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A374005 (n + 1)).toNat

end

end A232388.P10881853730800152054

/-! ## A232388.P11971685780864073455

`A232391(A167499(n+3))`
-/

namespace A232388.P11971685780864073455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A167499 (n + 3)).toNat

end

end A232388.P11971685780864073455

/-! ## A232388.P168344994421968316

`A232391(A155212(n)+13)`
-/

namespace A232388.P168344994421968316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A155212 n + 13).toNat

end

end A232388.P168344994421968316

/-! ## A232388.P2273289389541275145

`A232391(A056000(n)+15)`
-/

namespace A232388.P2273289389541275145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A056000 n + 15).toNat

end

end A232388.P2273289389541275145

/-! ## A232388.P12332632977255543238

`A232391(eq[7, A066657(n)])`
-/

namespace A232388.P12332632977255543238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232388.P12332632977255543238

/-!
# A232389: Number of (n+1)X(6+1) 0..3 arrays with every element next to itself plus and minus one within the range 0..3 horizontally, vertically or antidiagonally, with no adjacent elements equal.

The programs for A232389, there is no canonical definition to state claims against.
-/

/-! ## A232389.P5634809862935968022

`A232391(A374007(n+1))`
-/

namespace A232389.P5634809862935968022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A374007 (n + 1)).toNat

end

end A232389.P5634809862935968022

/-! ## A232389.P14084751163906548203

`A232391(A166136(n+4))`
-/

namespace A232389.P14084751163906548203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A166136 (n + 4)).toNat

end

end A232389.P14084751163906548203

/-! ## A232389.P1724883825907530265

`A232391(A056115(n)+21)`
-/

namespace A232389.P1724883825907530265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A056115 n + 21).toNat

end

end A232389.P1724883825907530265

/-! ## A232389.P4307937389835207217

`A232391(A167499(n+4)+1)`
-/

namespace A232389.P4307937389835207217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A167499 (n + 4) + 1).toNat

end

end A232389.P4307937389835207217

/-! ## A232389.P8111242288394255355

`A232391(eq[5, A002262(n)]+1)`
-/

namespace A232389.P8111242288394255355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A232389.P8111242288394255355

/-!
# A232390: Number of (n+1) X (7+1) 0..3 arrays with every element next to itself plus and minus one within the range 0..3 horizontally, vertically or antidiagonally, with no adjacent elements equal.

The programs for A232390, there is no canonical definition to state claims against.
-/

/-! ## A232390.P16065706831700006531

`A232391(A374008(n+1))`
-/

namespace A232390.P16065706831700006531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A374008 (n + 1)).toNat

end

end A232390.P16065706831700006531

/-! ## A232390.P979340343830331954

`A232391(A167487(n+5))`
-/

namespace A232390.P979340343830331954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A167487 (n + 5)).toNat

end

end A232390.P979340343830331954

/-! ## A232390.P13551898735106520912

`A232391(A056119(n)+28)`
-/

namespace A232390.P13551898735106520912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A056119 n + 28).toNat

end

end A232390.P13551898735106520912

/-! ## A232390.P13937518790430586585

`A232391(eq[11, A066657(n)])`
-/

namespace A232390.P13937518790430586585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A232390.P13937518790430586585

/-! ## A232390.P5410317867430023724

`A232391(A167499(n+5)+2)`
-/

namespace A232390.P5410317867430023724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232391 (A167499 (n + 5) + 2).toNat

end

end A232390.P5410317867430023724

/-!
# A232394: The number of compositions of n with no more than 3 consecutive identical parts (summands).

The programs for A232394, there is no canonical definition to state claims against.
-/

/-! ## A232394.P3806378996100933566

`floor(root(A362262(2*n+1), 3))`
-/

namespace A232394.P3806378996100933566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A362262 (2 * n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A232394.P3806378996100933566

/-! ## A232394.P13533679660305465083

`A096029(A045628(n+1))`
-/

namespace A232394.P13533679660305465083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096029 (A045628 (n + 1)).toNat

end

end A232394.P13533679660305465083

/-! ## A232394.P15828551213133186254

`A128761(n)-A108611(A036378(n))`
-/

namespace A232394.P15828551213133186254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128761 n - A108611 (A036378 n).toNat

end

end A232394.P15828551213133186254

/-! ## A232394.P7409586232195247958

`A024417(A129952(n)+A095092(n+1))`
-/

namespace A232394.P7409586232195247958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A129952 n + A095092 (n + 1)).toNat

end

end A232394.P7409586232195247958

/-! ## A232394.P6976534986172455152

`A282582(2*n)-A036850(A005177(n))`
-/

namespace A232394.P6976534986172455152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282582 (2 * n) - A036850 (A005177 n).toNat

end

end A232394.P6976534986172455152

/-!
# A232395: (ceiling(sqrt(n^3 + n^2 + n + 1)))^2 - (n^3 + n^2 + n + 1).

The programs for A232395, the canonical program `A232395.P11128109952145473131` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232395 has offset 0).

The definition of A232395 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A232395.P4738969326016037997

`ceil(sqrt(n^3+n²+n+1))²-(n^3+n²+n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A232395.P4738969326016037997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n ^ 3 + n ^ 2 + n + 1 : ℝ)⌉ ^ 2 - (n ^ 3 + n ^ 2 + n + 1 : ℤ)

end

end A232395.P4738969326016037997

namespace A232395

/-- `ceil(sqrt(n^3+n²+n+1))²-(n^3+n²+n+1)` -/
def P4738969326016037997.Spec : Prop :=
  ∀ n, P4738969326016037997.a n = A232395 n

end A232395

/-! ## A232395.P11128109952145473131

`A068527(A053698(n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A232395

/-- `A068527(A053698(n))` -/
def P11128109952145473131.Spec : Prop :=
  ∀ n, P11128109952145473131.a n = A232395 n

theorem P11128109952145473131.correct : P11128109952145473131.Spec := by
  intro n
  simp only [A232395]

end A232395

/-! ## A232395.P7629165070811048265

`A068527((n+1)*(n²+1))`
-/

namespace A232395.P7629165070811048265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 ((n + 1) * (n ^ 2 + 1))

end

end A232395.P7629165070811048265

namespace A232395

/-- `A068527((n+1)*(n²+1))` -/
def P7629165070811048265.Spec : Prop :=
  ∀ n, P7629165070811048265.a n = A232395 n

end A232395

/-! ## A232395.P3293408152748147380

`A048761((n+1)*n²+1+n)%((n+1)/cos(atan(n))²)`
-/

namespace A232395.P3293408152748147380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048761 ((n + 1) * n ^ 2 + 1 + n)) (SequenceMachineLib.roundAway ((n + 1 : ℝ) / Real.cos (Real.arctan (n : ℝ)) ^ 2))

end

end A232395.P3293408152748147380

namespace A232395

/-- `A048761((n+1)*n²+1+n)%((n+1)/cos(atan(n))²)` -/
def P3293408152748147380.Spec : Prop :=
  ∀ n, P3293408152748147380.a n = A232395 n

end A232395

/-!
# A232396: Triangular array read by rows: T(n,k) is the number of compositions of n with no two consecutive identical parts that have exactly k parts = 1, n>=0, 0<=k<=ceiling(n/3).

The programs for A232396, there is no canonical definition to state claims against.
-/

/-! ## A232396.P8435761628773594178

`A025449(or(∑[16*n-5]+6, (n+1)*Δ[n^3]))`
-/

namespace A232396.P8435761628773594178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 * n : ℤ) - 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025449 (Int.lor (∑ j ∈ Finset.range (n + 1), f1 j + 6) ((n + 1 : ℤ) * ((f2 (n + 1) : ℤ) - (f2 n : ℤ)))).toNat

end

end A232396.P8435761628773594178

/-! ## A232396.P249742996486390652

`A125070(A269303(2*(n+2))-1)`
-/

namespace A232396.P249742996486390652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (A269303 (2 * (n + 2)) - 1).toNat

end

end A232396.P249742996486390652

/-! ## A232396.P9740068499515335675

`A057918(A332052(n))+A000007(n)`
-/

namespace A232396.P9740068499515335675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A332052 n).toNat + A000007 n

end

end A232396.P9740068499515335675

/-! ## A232396.P5140482727894869233

`A096825(A034823(n))-A091446(n)`
-/

namespace A232396.P5140482727894869233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096825 (A034823 n).toNat - A091446 n

end

end A232396.P5140482727894869233

/-! ## A232396.P361452716757037786

`gcd(A296441(n), A335162(A077168(n)))`
-/

namespace A232396.P361452716757037786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A296441 n) (A335162 (A077168 n).toNat)

end

end A232396.P361452716757037786

/-!
# A232397: a(n) = ceiling(sqrt(n^4 + n^3 + n^2 + n + 1))^2 - (n^4 + n^3 + n^2 + n + 1).

The programs for A232397, the canonical program `A232397.P3441462102365637845` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A232397 has offset 0).

The definition of A232397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(sqrt(n^4+n^3+n²+n+1))²-(n^4+n^3+n²+n+1)` (program `A232397.P3441462102365637845`, by `A232397.P3441462102365637845.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A232397.P8522744807071392314

`ogf((4x+5x^2-12x^3+5x^4+15x^5-5x^7)/(1-3x^2+3x^4-x^6))`
-/

namespace A232397.P8522744807071392314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 5, -12, 5, 15, 0, -5] [1, 0, -3, 0, 3, 0, -1] n

end

end A232397.P8522744807071392314

namespace A232397

/-- `ogf((4x+5x^2-12x^3+5x^4+15x^5-5x^7)/(1-3x^2+3x^4-x^6))` -/
def P8522744807071392314.Spec : Prop :=
  ∀ n, P8522744807071392314.a n = A232397 n

end A232397

/-! ## A232397.P3441462102365637845

`ceil(sqrt(n^4+n^3+n²+n+1))²-(n^4+n^3+n²+n+1)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A232397

/-- `ceil(sqrt(n^4+n^3+n²+n+1))²-(n^4+n^3+n²+n+1)` -/
def P3441462102365637845.Spec : Prop :=
  ∀ n, P3441462102365637845.a n = A232397 n

theorem P3441462102365637845.correct : P3441462102365637845.Spec := by
  intro n
  simp only [A232397]

end A232397

/-! ## A232397.P1637668100805812561

`ceil((1/4+n)²)²%ceil((n+1)/acot(n)^3)`
-/

namespace A232397.P1637668100805812561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌈((1 : ℚ) / 4 + (n : ℚ)) ^ 2⌉ ^ 2) ⌈(n + 1 : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 3⌉

end

end A232397.P1637668100805812561

namespace A232397

/-- `ceil((1/4+n)²)²%ceil((n+1)/acot(n)^3)` -/
def P1637668100805812561.Spec : Prop :=
  ∀ n, P1637668100805812561.a n = A232397 n

end A232397

/-! ## A232397.P9121485684471149946

`A317186(n)²%A053699(n)`
-/

namespace A232397.P9121485684471149946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317186 n ^ 2) (A053699 n)

end

end A232397.P9121485684471149946

namespace A232397

/-- `A317186(n)²%A053699(n)` -/
def P9121485684471149946.Spec : Prop :=
  ∀ n, P9121485684471149946.a n = A232397 n

end A232397

/-! ## A232397.P768976261274020180

`(A000217(n)*A047209(n+1))%(A047209(n+1)+A000566(n))`
-/

namespace A232397.P768976261274020180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n * A047209 (n + 1)) (A047209 (n + 1) + A000566 n)

end

end A232397.P768976261274020180

namespace A232397

/-- `(A000217(n)*A047209(n+1))%(A047209(n+1)+A000566(n))` -/
def P768976261274020180.Spec : Prop :=
  ∀ n, P768976261274020180.a n = A232397 n

end A232397

/-! ## A232397.P2865785721226598201

`A000290(A317186(n))%or(1, A027445(n))`
-/

namespace A232397.P2865785721226598201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A317186 n).toNat) (Int.lor 1 (A027445 n))

end

end A232397.P2865785721226598201

namespace A232397

/-- `A000290(A317186(n))%or(1, A027445(n))` -/
def P2865785721226598201.Spec : Prop :=
  ∀ n, P2865785721226598201.a n = A232397 n

end A232397

/-! ## A232397.P1849642192108143650

`A008619(A014105(n))²%A053699(n)`
-/

namespace A232397.P1849642192108143650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A014105 n).toNat ^ 2) (A053699 n)

end

end A232397.P1849642192108143650

namespace A232397

/-- `A008619(A014105(n))²%A053699(n)` -/
def P1849642192108143650.Spec : Prop :=
  ∀ n, P1849642192108143650.a n = A232397 n

end A232397

/-!
# A232399: Number of (n+1)X(n+1) 0..2 arrays with every element next to itself plus and minus one within the range 0..2 horizontally or vertically, with no adjacent elements equal.

The programs for A232399, there is no canonical definition to state claims against.
-/

/-! ## A232399.P2300727342179237619

`A232406(∑[4*n]+1)`
-/

namespace A232399.P2300727342179237619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232406 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A232399.P2300727342179237619

/-! ## A232399.P6534468724393567843

`lcm(2, A232406(A001844(n)))`
-/

namespace A232399.P6534468724393567843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A232406 (A001844 n).toNat)

end

end A232399.P6534468724393567843

/-! ## A232399.P3925638715111645340

`record[A003982(n)*A232406(n+1)]`
-/

namespace A232399.P3925638715111645340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A232406 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232399.P3925638715111645340

/-! ## A232399.P3214117452770733784

`record[gcd(A037012(n), A232406(n+1))]`
-/

namespace A232399.P3214117452770733784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A232406 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A232399.P3214117452770733784

/-! ## A232399.P13869210789234774579

`A224697(n)*A232406(A001844(n))`
-/

namespace A232399.P13869210789234774579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224697 n * A232406 (A001844 n).toNat

end

end A232399.P13869210789234774579

