import SequenceMachineLib.Basic
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
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
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
import Seq.Opaque.C024

/-!
# A196600: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,2,4,0,3 for x=0,1,2,3,4.

The programs for A196600, there is no canonical definition to state claims against.
-/

/-! ## A196600.P3388316764773166927

`A196601(A374008(n+1))`
-/

namespace A196600.P3388316764773166927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A374008 (n + 1)).toNat

end

end A196600.P3388316764773166927

/-! ## A196600.P16719562802028669822

`A196601(eq[8, A131818(n+1)])`
-/

namespace A196600.P16719562802028669822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196600.P16719562802028669822

/-! ## A196600.P11477890604214605498

`A196601(A055999(n+4))`
-/

namespace A196600.P11477890604214605498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (A055999 (n + 4)).toNat

end

end A196600.P11477890604214605498

/-! ## A196600.P8144171529236678536

`A196601(eq[4, A219347(n)])`
-/

namespace A196600.P8144171529236678536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196600.P8144171529236678536

/-! ## A196600.P16310285636430553261

`A196601(eq[6, A193592(n)])`
-/

namespace A196600.P16310285636430553261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196601 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196600.P16310285636430553261

/-!
# A196601: T(n,k) = Number of n X k 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,2,4,0,3 for x=0,1,2,3,4.

The programs for A196601, there is no canonical definition to state claims against.
-/

/-! ## A196601.P16212311041801736898

`A002264(3*A196646(n+1))`
-/

namespace A196601.P16212311041801736898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * A196646 (n + 1)).toNat

end

end A196601.P16212311041801736898

/-! ## A196601.P5900738483764414370

`A051176(3*A196646(n+1))`
-/

namespace A196601.P5900738483764414370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (3 * A196646 (n + 1)).toNat

end

end A196601.P5900738483764414370

/-! ## A196601.P7466371060336364288

`A289437(3*A196646(n+1))`
-/

namespace A196601.P7466371060336364288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (3 * A196646 (n + 1)).toNat

end

end A196601.P7466371060336364288

/-! ## A196601.P8527143184505973445

`A289438(3*A196646(n+1))`
-/

namespace A196601.P8527143184505973445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289438 (3 * A196646 (n + 1)).toNat

end

end A196601.P8527143184505973445

/-! ## A196601.P13805615281305398250

`and(A196646(n+1), A349820(n+1))`
-/

namespace A196601.P13805615281305398250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A196646 (n + 1)) (A349820 (n + 1))

end

end A196601.P13805615281305398250

/-!
# A196629: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,2,0,4 for x=0,1,2,3,4.

The programs for A196629, there is no canonical definition to state claims against.
-/

/-! ## A196629.P2648721771001329844

`A196636(∑[4*n]+1)`
-/

namespace A196629.P2648721771001329844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196629.P2648721771001329844

/-! ## A196629.P1341795971446887086

`A196636(A001844(n))+char[31]`
-/

namespace A196629.P1341795971446887086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196629.P1341795971446887086

/-! ## A196629.P14057940090114078652

`record[A003982(n)*A196636(n+1)]`
-/

namespace A196629.P14057940090114078652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196629.P14057940090114078652

/-! ## A196629.P12233411116724766970

`record[gcd(A037012(n), A196636(n+1))]`
-/

namespace A196629.P12233411116724766970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A196636 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196629.P12233411116724766970

/-! ## A196629.P3493345679735566147

`A014963(15*(n+1))*A196636(A001844(n))`
-/

namespace A196629.P3493345679735566147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (15 * (n + 1)) * A196636 (A001844 n).toNat

end

end A196629.P3493345679735566147

/-!
# A196630: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,0,4 for x=0,1,2,3,4.

The programs for A196630, the canonical program `A196630.P2608905819606227290` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196630 has offset 1).

The definition of A196630 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196630.P15828173007345869172

`ogf((-1+3x^3)/(-1+2x+x^2+x^3-x^4))`
-/

namespace A196630.P15828173007345869172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 0, -3] [1, -2, -1, -1, 1] n

end

end A196630.P15828173007345869172

namespace A196630

/-- `ogf((-1+3x^3)/(-1+2x+x^2+x^3-x^4))` -/
def P15828173007345869172.Spec : Prop :=
  ∀ n, P15828173007345869172.a n = A196630 (n + 1)

end A196630

/-! ## A196630.P2608905819606227290

`2*a(n-1)+a(n-2)+a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196630

/-- `2*a(n-1)+a(n-2)+a(n-3)-a(n-4)` -/
def P2608905819606227290.Spec : Prop :=
  ∀ n, P2608905819606227290.a n = A196630 (n + 1)

theorem P2608905819606227290.correct : P2608905819606227290.Spec := by
  intro n
  simp only [A196630, Nat.add_sub_cancel]

end A196630

/-! ## A196630.P868229252057472488

`A275222(A028310(n))-(1-char[1])`
-/

namespace A196630.P868229252057472488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275222 (A028310 n).toNat - (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A196630.P868229252057472488

namespace A196630

/-- `A275222(A028310(n))-(1-char[1])` -/
def P868229252057472488.Spec : Prop :=
  ∀ n, P868229252057472488.a n = A196630 (n + 1)

end A196630

/-! ## A196630.P12215494154861043830

`record[ratio[A196636(n+1)]]`
-/

namespace A196630.P12215494154861043830
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196630.P12215494154861043830

namespace A196630

/-- `record[ratio[A196636(n+1)]]` -/
def P12215494154861043830.Spec : Prop :=
  ∀ n, P12215494154861043830.a n = (A196630 (n + 1) : ℚ)

end A196630

/-! ## A196630.P1060371085016180919

`record[ratio[A196641(n+1)]]`
-/

namespace A196630.P1060371085016180919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196630.P1060371085016180919

namespace A196630

/-- `record[ratio[A196641(n+1)]]` -/
def P1060371085016180919.Spec : Prop :=
  ∀ n, P1060371085016180919.a n = (A196630 (n + 1) : ℚ)

end A196630

/-!
# A196631: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,0,4 for x=0,1,2,3,4.

The programs for A196631, there is no canonical definition to state claims against.
-/

/-! ## A196631.P1526345472221256878

`A196636(∑[n+2]+4)`
-/

namespace A196631.P1526345472221256878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196631.P1526345472221256878

/-! ## A196631.P14589108833522186854

`A196641(∑[n+2]+4)`
-/

namespace A196631.P14589108833522186854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196631.P14589108833522186854

/-! ## A196631.P1990371135124300146

`A196641(A167614(n+1))%A017153(n)`
-/

namespace A196631.P1990371135124300146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196641 (A167614 (n + 1)).toNat) (A017153 n)

end

end A196631.P1990371135124300146

/-! ## A196631.P11984897663381431052

`A196636(A167614(n+1))%A198699(n)`
-/

namespace A196631.P11984897663381431052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196636 (A167614 (n + 1)).toNat) (A198699 n)

end

end A196631.P11984897663381431052

/-! ## A196631.P7957137787398735693

`gcd(A151620(n), A196641(A167614(n+1)))`
-/

namespace A196631.P7957137787398735693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151620 n) (A196641 (A167614 (n + 1)).toNat)

end

end A196631.P7957137787398735693

/-!
# A196632: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,0,4 for x=0,1,2,3,4.

The programs for A196632, there is no canonical definition to state claims against.
-/

/-! ## A196632.P11433974302518815069

`A196636(A374004(n+1))`
-/

namespace A196632.P11433974302518815069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A374004 (n + 1)).toNat

end

end A196632.P11433974302518815069

/-! ## A196632.P9517987066593051634

`A196641(A141214(n)+7)`
-/

namespace A196632.P9517987066593051634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A141214 n + 7).toNat

end

end A196632.P9517987066593051634

/-! ## A196632.P5037611077468276700

`A196636(A052905(n)+9)`
-/

namespace A196632.P5037611077468276700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A052905 n + 9).toNat

end

end A196632.P5037611077468276700

/-! ## A196632.P9631975406207728496

`A196641(A052905(n)+9)`
-/

namespace A196632.P9631975406207728496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A052905 n + 9).toNat

end

end A196632.P9631975406207728496

/-! ## A196632.P11622027207842348405

`A196641(A055999(n)+10)`
-/

namespace A196632.P11622027207842348405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A055999 n + 10).toNat

end

end A196632.P11622027207842348405

/-!
# A196633: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,0,4 for x=0,1,2,3,4.

The programs for A196633, there is no canonical definition to state claims against.
-/

/-! ## A196633.P10538798522490064188

`A196636(A374005(n+1))`
-/

namespace A196633.P10538798522490064188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A374005 (n + 1)).toNat

end

end A196633.P10538798522490064188

/-! ## A196633.P1912270063759893108

`A196636(A167499(n+3))`
-/

namespace A196633.P1912270063759893108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A167499 (n + 3)).toNat

end

end A196633.P1912270063759893108

/-! ## A196633.P14642876599048672328

`A196636(A051936(n+4)+14)`
-/

namespace A196633.P14642876599048672328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A051936 (n + 4) + 14).toNat

end

end A196633.P14642876599048672328

/-! ## A196633.P17791340587942241956

`A196636(eq[6, A131818(n+1)])`
-/

namespace A196633.P17791340587942241956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196633.P17791340587942241956

/-! ## A196633.P4395312751070120293

`A196636(A056115(n)+11)`
-/

namespace A196633.P4395312751070120293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A056115 n + 11).toNat

end

end A196633.P4395312751070120293

/-!
# A196634: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,0,4 for x=0,1,2,3,4.

The programs for A196634, there is no canonical definition to state claims against.
-/

/-! ## A196634.P17966698856145897506

`A196636(A374007(n+1))`
-/

namespace A196634.P17966698856145897506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A374007 (n + 1)).toNat

end

end A196634.P17966698856145897506

/-! ## A196634.P16144733356536082422

`A196636(eq[7, A131818(n+1)])`
-/

namespace A196634.P16144733356536082422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196634.P16144733356536082422

/-! ## A196634.P14027447993995781669

`A196636(A056119(n)+16)`
-/

namespace A196634.P14027447993995781669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A056119 n + 16).toNat

end

end A196634.P14027447993995781669

/-! ## A196634.P1132004236151455903

`A196636(eq[3, A219347(n)])`
-/

namespace A196634.P1132004236151455903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196634.P1132004236151455903

/-! ## A196634.P8301614903154953715

`A196636(eq[5, A193592(n)])`
-/

namespace A196634.P8301614903154953715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196634.P8301614903154953715

/-!
# A196635: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,2,0,4 for x=0,1,2,3,4.

The programs for A196635, there is no canonical definition to state claims against.
-/

/-! ## A196635.P16811344788743946093

`A196636(A374008(n+1))`
-/

namespace A196635.P16811344788743946093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (A374008 (n + 1)).toNat

end

end A196635.P16811344788743946093

/-! ## A196635.P5330808084972872096

`A196636(eq[8, A131818(n+1)])`
-/

namespace A196635.P5330808084972872096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196635.P5330808084972872096

/-! ## A196635.P5725503654599934507

`A196636(eq[4, A219347(n)])`
-/

namespace A196635.P5725503654599934507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196635.P5725503654599934507

/-! ## A196635.P16829455048520881050

`A196636(eq[6, A193592(n)])`
-/

namespace A196635.P16829455048520881050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196635.P16829455048520881050

/-! ## A196635.P9291015624838122623

`A196636(Δ[A023551(n+2)])`
-/

namespace A196635.P9291015624838122623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196636 (f1 (n + 1) - f1 n).toNat

end

end A196635.P9291015624838122623

/-!
# A196636: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,2,0,4 for x=0,1,2,3,4.

The programs for A196636, there is no canonical definition to state claims against.
-/

/-! ## A196636.P7350637188950347070

`A175068(A196641(n+1))`
-/

namespace A196636.P7350637188950347070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175068 (A196641 (n + 1)).toNat

end

end A196636.P7350637188950347070

/-! ## A196636.P10130114232923477813

`A196641(∑[A010894(n)!])`
-/

namespace A196636.P10130114232923477813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196636.P10130114232923477813

/-! ## A196636.P3500673982600641314

`A196641(n+1)^A010894(n)!`
-/

namespace A196636.P3500673982600641314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A196636.P3500673982600641314

/-! ## A196636.P15585409662156523161

`A196641(and(1, A059960(n+1))+n)`
-/

namespace A196636.P15585409662156523161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (Int.land 1 (A059960 (n + 1)) + (n : ℤ)).toNat

end

end A196636.P15585409662156523161

/-! ## A196636.P1134662153846944361

`A196641(n+1)^A247344(A025888(n))`
-/

namespace A196636.P1134662153846944361
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196641 (n + 1) : ℚ) ^ (A247344 (A025888 n).toNat : ℤ)

end

end A196636.P1134662153846944361

/-!
# A196637: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,4,2,0,3 for x=0,1,2,3,4.

The programs for A196637, there is no canonical definition to state claims against.
-/

/-! ## A196637.P2638432943952208999

`A196641(∑[4*n]+1)`
-/

namespace A196637.P2638432943952208999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196637.P2638432943952208999

/-! ## A196637.P4856949677602624093

`record[gcd(A037012(n), A196641(n+1))]`
-/

namespace A196637.P4856949677602624093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A037012 n) (A196641 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196637.P4856949677602624093

/-! ## A196637.P6467332888069965669

`A196641(A001844(n))+A185284(n)`
-/

namespace A196637.P6467332888069965669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A001844 n).toNat + A185284 n

end

end A196637.P6467332888069965669

/-! ## A196637.P10236288713604338222

`A014712(n)*A196641(A001844(n))`
-/

namespace A196637.P10236288713604338222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014712 n * A196641 (A001844 n).toNat

end

end A196637.P10236288713604338222

/-! ## A196637.P5906747745280747962

`A015772(n)*A196641(A001844(n))`
-/

namespace A196637.P5906747745280747962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015772 n * A196641 (A001844 n).toNat

end

end A196637.P5906747745280747962

/-!
# A196638: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,2,0,3 for x=0,1,2,3,4.

The programs for A196638, there is no canonical definition to state claims against.
-/

/-! ## A196638.P4254758293450847617

`A196641(A374005(n+1))`
-/

namespace A196638.P4254758293450847617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A374005 (n + 1)).toNat

end

end A196638.P4254758293450847617

/-! ## A196638.P16269166556153129485

`A196641(A167499(n+3))`
-/

namespace A196638.P16269166556153129485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A167499 (n + 3)).toNat

end

end A196638.P16269166556153129485

/-! ## A196638.P2839584303306643941

`A196641(eq[6, A131818(n+1)])`
-/

namespace A196638.P2839584303306643941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196638.P2839584303306643941

/-! ## A196638.P12449775019966189253

`A196641(A046691(n+3))`
-/

namespace A196638.P12449775019966189253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A046691 (n + 3)).toNat

end

end A196638.P12449775019966189253

/-! ## A196638.P15549265116278566695

`A196641(A056115(n)+11)`
-/

namespace A196638.P15549265116278566695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A056115 n + 11).toNat

end

end A196638.P15549265116278566695

/-!
# A196639: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,2,0,3 for x=0,1,2,3,4.

The programs for A196639, there is no canonical definition to state claims against.
-/

/-! ## A196639.P8717217621697802333

`A196641(A374007(n+1))`
-/

namespace A196639.P8717217621697802333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A374007 (n + 1)).toNat

end

end A196639.P8717217621697802333

/-! ## A196639.P4484097830843184774

`A196641(A166136(n+4))`
-/

namespace A196639.P4484097830843184774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A166136 (n + 4)).toNat

end

end A196639.P4484097830843184774

/-! ## A196639.P1143464846372097429

`A196641(eq[7, A131818(n+1)])`
-/

namespace A196639.P1143464846372097429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196639.P1143464846372097429

/-! ## A196639.P7630920432458319046

`A196641(A052905(n+3))`
-/

namespace A196639.P7630920432458319046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A052905 (n + 3)).toNat

end

end A196639.P7630920432458319046

/-! ## A196639.P14282564770869612892

`A196641(A056119(n)+16)`
-/

namespace A196639.P14282564770869612892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A056119 n + 16).toNat

end

end A196639.P14282564770869612892

/-!
# A196640: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,4,2,0,3 for x=0,1,2,3,4.

The programs for A196640, there is no canonical definition to state claims against.
-/

/-! ## A196640.P13247459761639579578

`A196641(A374008(n+1))`
-/

namespace A196640.P13247459761639579578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A374008 (n + 1)).toNat

end

end A196640.P13247459761639579578

/-! ## A196640.P15278178403841312668

`A196641(eq[8, A131818(n+1)])`
-/

namespace A196640.P15278178403841312668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196640.P15278178403841312668

/-! ## A196640.P700305557629810283

`A196641(eq[8, A004736(n+1)]-2*n)`
-/

namespace A196640.P700305557629810283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2 * n)

end

end A196640.P700305557629810283

/-! ## A196640.P17933522013061124430

`A196641(A055999(n+4))`
-/

namespace A196640.P17933522013061124430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (A055999 (n + 4)).toNat

end

end A196640.P17933522013061124430

/-! ## A196640.P9743830044362596676

`A196641(eq[6, A193592(n)])`
-/

namespace A196640.P9743830044362596676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196641 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196640.P9743830044362596676

/-!
# A196642: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 1,3,4,0,2 for x=0,1,2,3,4.

The programs for A196642, there is no canonical definition to state claims against.
-/

/-! ## A196642.P17753869533266803587

`A196646(∑[4*n]+1)`
-/

namespace A196642.P17753869533266803587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196642.P17753869533266803587

/-! ## A196642.P14615410939589777997

`A196646(A001844(n))+A185238(n)`
-/

namespace A196642.P14615410939589777997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A001844 n).toNat + A185238 n

end

end A196642.P14615410939589777997

/-! ## A196642.P6001962607117702212

`gcd(A000038(n), A196646(A001844(n)))`
-/

namespace A196642.P6001962607117702212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196646 (A001844 n).toNat)

end

end A196642.P6001962607117702212

/-! ## A196642.P6987712993163409432

`or(A000007(n), A196646(A001844(n)))`
-/

namespace A196642.P6987712993163409432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A196646 (A001844 n).toNat)

end

end A196642.P6987712993163409432

/-! ## A196642.P4923950320092940101

`A007318(A024361(n+1))*A196646(A001844(n))`
-/

namespace A196642.P4923950320092940101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A024361 (n + 1)).toNat * A196646 (A001844 n).toNat

end

end A196642.P4923950320092940101

/-!
# A196643: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,4,0,2 for x=0,1,2,3,4.

The programs for A196643, there is no canonical definition to state claims against.
-/

/-! ## A196643.P7963913805639029321

`A196646(A374005(n+1))`
-/

namespace A196643.P7963913805639029321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A374005 (n + 1)).toNat

end

end A196643.P7963913805639029321

/-! ## A196643.P9842415142629850802

`A196646(A167499(n+3))`
-/

namespace A196643.P9842415142629850802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A167499 (n + 3)).toNat

end

end A196643.P9842415142629850802

/-! ## A196643.P8192930313358954926

`A196646(A155212(n)+13)`
-/

namespace A196643.P8192930313358954926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A155212 n + 13).toNat

end

end A196643.P8192930313358954926

/-! ## A196643.P6441796721624919888

`A196646(A046691(n+2)+9)`
-/

namespace A196643.P6441796721624919888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A046691 (n + 2) + 9).toNat

end

end A196643.P6441796721624919888

/-! ## A196643.P18138769368933674280

`A196646(A052905(n+1)+10)`
-/

namespace A196643.P18138769368933674280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A052905 (n + 1) + 10).toNat

end

end A196643.P18138769368933674280

/-!
# A196644: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,4,0,2 for x=0,1,2,3,4.

The programs for A196644, there is no canonical definition to state claims against.
-/

/-! ## A196644.P13736446180570394437

`A196646(A374007(n+1))`
-/

namespace A196644.P13736446180570394437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A374007 (n + 1)).toNat

end

end A196644.P13736446180570394437

/-! ## A196644.P2539945109807737537

`A196646(A166136(n+4))`
-/

namespace A196644.P2539945109807737537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A166136 (n + 4)).toNat

end

end A196644.P2539945109807737537

/-! ## A196644.P11493839662448327897

`A196646(A000217(n+5)+6)`
-/

namespace A196644.P11493839662448327897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A000217 (n + 5) + 6).toNat

end

end A196644.P11493839662448327897

/-! ## A196644.P7453429894162959456

`A196646(A052905(n+3))`
-/

namespace A196644.P7453429894162959456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A052905 (n + 3)).toNat

end

end A196644.P7453429894162959456

/-! ## A196644.P6901041393412289849

`A196646(eq[3, A219347(n)])`
-/

namespace A196644.P6901041393412289849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196644.P6901041393412289849

/-!
# A196645: Number of n X 7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 1,3,4,0,2 for x=0,1,2,3,4.

The programs for A196645, there is no canonical definition to state claims against.
-/

/-! ## A196645.P12565588400375115934

`A196646(A374008(n+1))`
-/

namespace A196645.P12565588400375115934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A374008 (n + 1)).toNat

end

end A196645.P12565588400375115934

/-! ## A196645.P7256182278623655150

`A196646(eq[8, A131818(n+1)])`
-/

namespace A196645.P7256182278623655150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196645.P7256182278623655150

/-! ## A196645.P3868290673816946589

`A196646(A055999(n+4))`
-/

namespace A196645.P3868290673816946589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (A055999 (n + 4)).toNat

end

end A196645.P3868290673816946589

/-! ## A196645.P13912444874253377438

`A196646(eq[4, A219347(n)])`
-/

namespace A196645.P13912444874253377438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196645.P13912444874253377438

/-! ## A196645.P17018066726786128418

`A196646(eq[6, A193592(n)])`
-/

namespace A196645.P17018066726786128418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196646 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196645.P17018066726786128418

/-!
# A196647: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,4,0,2,1 for x=0,1,2,3,4.

The programs for A196647, there is no canonical definition to state claims against.
-/

/-! ## A196647.P9208220876094153129

`A196653(∑[4*n]+1)`
-/

namespace A196647.P9208220876094153129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196647.P9208220876094153129

/-! ## A196647.P11009629184851663425

`or(1, A196653(A001844(n)))`
-/

namespace A196647.P11009629184851663425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A196653 (A001844 n).toNat)

end

end A196647.P11009629184851663425

/-! ## A196647.P8147950571887934796

`record[A003982(n)*A196653(n+1)]`
-/

namespace A196647.P8147950571887934796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196653 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196647.P8147950571887934796

/-! ## A196647.P5390622509571013192

`A015012(n)*A196653(A001844(n))`
-/

namespace A196647.P5390622509571013192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015012 n * A196653 (A001844 n).toNat

end

end A196647.P5390622509571013192

/-! ## A196647.P326472317813555711

`A015016(n)*A196653(A001844(n))`
-/

namespace A196647.P326472317813555711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015016 n * A196653 (A001844 n).toNat

end

end A196647.P326472317813555711

/-!
# A196648: Number of n X 3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,0,2,1 for x=0,1,2,3,4.

The programs for A196648, there is no canonical definition to state claims against.
-/

/-! ## A196648.P11374994011452114741

`A196653(∑[n+2]+4)`
-/

namespace A196648.P11374994011452114741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196648.P11374994011452114741

/-! ## A196648.P2385615459775258908

`A196653(A167614(n+1))+A025469(n)`
-/

namespace A196648.P2385615459775258908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A167614 (n + 1)).toNat + A025469 n

end

end A196648.P2385615459775258908

/-! ## A196648.P10571022097152684824

`A016192(n)*A196653(A167614(n+1))`
-/

namespace A196648.P10571022097152684824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016192 n * A196653 (A167614 (n + 1)).toNat

end

end A196648.P10571022097152684824

/-! ## A196648.P13646200698297339792

`A196653(A167614(n+1))%A016941(n)`
-/

namespace A196648.P13646200698297339792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196653 (A167614 (n + 1)).toNat) (A016941 n)

end

end A196648.P13646200698297339792

/-! ## A196648.P1469040855569300835

`A196653(A167614(n+1))+A181340(n+1)`
-/

namespace A196648.P1469040855569300835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A167614 (n + 1)).toNat + A181340 (n + 1)

end

end A196648.P1469040855569300835

/-!
# A196649: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,0,2,1 for x=0,1,2,3,4.

The programs for A196649, there is no canonical definition to state claims against.
-/

/-! ## A196649.P11151081010270541767

`A196653(A374004(n+1))`
-/

namespace A196649.P11151081010270541767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A374004 (n + 1)).toNat

end

end A196649.P11151081010270541767

/-! ## A196649.P4246396707192298924

`A196653(A141214(n)+7)`
-/

namespace A196649.P4246396707192298924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A141214 n + 7).toNat

end

end A196649.P4246396707192298924

/-! ## A196649.P5503972667156563297

`A196653(A052905(n)+9)`
-/

namespace A196649.P5503972667156563297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A052905 n + 9).toNat

end

end A196649.P5503972667156563297

/-! ## A196649.P6379982478730968634

`A196653(A055999(n)+10)`
-/

namespace A196649.P6379982478730968634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A055999 n + 10).toNat

end

end A196649.P6379982478730968634

/-! ## A196649.P3336244607455635430

`A196653(Δ[A008778(n)]+6)`
-/

namespace A196649.P3336244607455635430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (f1 (n + 1) - f1 n + 6).toNat

end

end A196649.P3336244607455635430

/-!
# A196650: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,0,2,1 for x=0,1,2,3,4.

The programs for A196650, there is no canonical definition to state claims against.
-/

/-! ## A196650.P15966219233992756205

`A196653(A374005(n+1))`
-/

namespace A196650.P15966219233992756205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A374005 (n + 1)).toNat

end

end A196650.P15966219233992756205

/-! ## A196650.P10301258615655935819

`A196653(A167499(n+3))`
-/

namespace A196650.P10301258615655935819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A167499 (n + 3)).toNat

end

end A196650.P10301258615655935819

/-! ## A196650.P15396968037114326387

`A196653(A056000(n)+15)`
-/

namespace A196650.P15396968037114326387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A056000 n + 15).toNat

end

end A196650.P15396968037114326387

/-! ## A196650.P1991582737096260718

`A196653(A000217(n+4)+5)`
-/

namespace A196650.P1991582737096260718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A000217 (n + 4) + 5).toNat

end

end A196650.P1991582737096260718

/-! ## A196650.P4669593167374571811

`A196653(A052905(n+1)+10)`
-/

namespace A196650.P4669593167374571811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A052905 (n + 1) + 10).toNat

end

end A196650.P4669593167374571811

/-!
# A196651: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 3,4,0,2,1 for x=0,1,2,3,4.

The programs for A196651, there is no canonical definition to state claims against.
-/

/-! ## A196651.P13131380208016792601

`A196653(A374007(n+1))`
-/

namespace A196651.P13131380208016792601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A374007 (n + 1)).toNat

end

end A196651.P13131380208016792601

/-! ## A196651.P710522246692098542

`A196653(eq[7, A131818(n+1)])`
-/

namespace A196651.P710522246692098542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196651.P710522246692098542

/-! ## A196651.P15383315237597340531

`A196653(A052905(n+3))`
-/

namespace A196651.P15383315237597340531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A052905 (n + 3)).toNat

end

end A196651.P15383315237597340531

/-! ## A196651.P13603316038414404196

`A196653(eq[5, A193592(n)])`
-/

namespace A196651.P13603316038414404196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196651.P13603316038414404196

/-! ## A196651.P8385200369165201758

`A196653(A167499(n+5)-10)`
-/

namespace A196651.P8385200369165201758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A167499 (n + 5) - 10).toNat

end

end A196651.P8385200369165201758

/-!
# A196652: Number of n X 7 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,4,0,2,1 for x=0,1,2,3,4.

The programs for A196652, there is no canonical definition to state claims against.
-/

/-! ## A196652.P14598515994195581645

`A196653(A374008(n+1))`
-/

namespace A196652.P14598515994195581645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A374008 (n + 1)).toNat

end

end A196652.P14598515994195581645

/-! ## A196652.P7595944234724670906

`A196653(A167499(n+5)+2)`
-/

namespace A196652.P7595944234724670906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (A167499 (n + 5) + 2).toNat

end

end A196652.P7595944234724670906

/-! ## A196652.P4439595438803945581

`A196653(eq[8, A131818(n+1)])`
-/

namespace A196652.P4439595438803945581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196652.P4439595438803945581

/-! ## A196652.P1982393038605686489

`A196653(eq[6, A193592(n)])`
-/

namespace A196652.P1982393038605686489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196652.P1982393038605686489

/-! ## A196652.P795805248352896072

`A196653(eq[7, A200370(n+1)])`
-/

namespace A196652.P795805248352896072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196652.P795805248352896072

/-!
# A196653: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,4,0,2,1 for x=0,1,2,3,4.

The programs for A196653, there is no canonical definition to state claims against.
-/

/-! ## A196653.P12966087806256091906

`A196322(n+1)-A054907(A099608(n))`
-/

namespace A196653.P12966087806256091906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (n + 1) - A054907 (A099608 n).toNat

end

end A196653.P12966087806256091906

/-! ## A196653.P10764224963754132624

`A196322(n+1)-A241468(A108350(n))`
-/

namespace A196653.P10764224963754132624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196322 (n + 1) - A241468 (A108350 n).toNat

end

end A196653.P10764224963754132624

/-! ## A196653.P17972896747341481286

`or(A183335(n+1), A191530(A022166(n)))`
-/

namespace A196653.P17972896747341481286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183335 (n + 1)) (A191530 (A022166 n).toNat)

end

end A196653.P17972896747341481286

/-! ## A196653.P1875480381242362629

`or(A191530(A022166(n)), A196329(n+1))`
-/

namespace A196653.P1875480381242362629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A191530 (A022166 n).toNat) (A196329 (n + 1))

end

end A196653.P1875480381242362629

/-! ## A196653.P8837416288869143092

`or(A183335(n+1), A191530(A059328(n)))`
-/

namespace A196653.P8837416288869143092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A183335 (n + 1)) (A191530 (A059328 n).toNat)

end

end A196653.P8837416288869143092

/-!
# A196655: a(n) = 33*2^(n+1) + 7.

The programs for A196655, the canonical program `A196655.P5247755459077604447` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196655 has offset 0).

The definition of A196655 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `33*2^(n+1)+7` (program `A196655.P5247755459077604447`, by `A196655.P5247755459077604447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196655.P5247755459077604447

`33*2^(n+1)+7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196655

/-- `33*2^(n+1)+7` -/
def P5247755459077604447.Spec : Prop :=
  ∀ n, (P5247755459077604447.a n : ℤ) = A196655 n

theorem P5247755459077604447.correct : P5247755459077604447.Spec := by
  intro n
  simp only [A196655]

end A196655

/-! ## A196655.P6957914142166005833

`xor(A000051(n+6), A153972(n+1))`
-/

namespace A196655.P6957914142166005833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000051 (n + 6)) (A153972 (n + 1))

end

end A196655.P6957914142166005833

namespace A196655

/-- `xor(A000051(n+6), A153972(n+1))` -/
def P6957914142166005833.Spec : Prop :=
  ∀ n, P6957914142166005833.a n = A196655 n

end A196655

/-! ## A196655.P4507558900157149694

`or(A153972(n+1)+1, A000079(n+6))`
-/

namespace A196655.P4507558900157149694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A153972 (n + 1) + 1) (A000079 (n + 6))

end

end A196655.P4507558900157149694

namespace A196655

/-- `or(A153972(n+1)+1, A000079(n+6))` -/
def P4507558900157149694.Spec : Prop :=
  ∀ n, P4507558900157149694.a n = A196655 n

end A196655

/-! ## A196655.P7507093480292029526

`Δ[A304514(n+1)+7*n]`
-/

namespace A196655.P7507093480292029526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304514 (n + 1) + (7 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196655.P7507093480292029526

namespace A196655

/-- `Δ[A304514(n+1)+7*n]` -/
def P7507093480292029526.Spec : Prop :=
  ∀ n, P7507093480292029526.a n = A196655 n

end A196655

/-! ## A196655.P16145887012149113958

`(A304605(n+1)+A182464(n))/2`
-/

namespace A196655.P16145887012149113958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304605 (n + 1) + A182464 n : ℚ) / 2

end

end A196655.P16145887012149113958

namespace A196655

/-- `(A304605(n+1)+A182464(n))/2` -/
def P16145887012149113958.Spec : Prop :=
  ∀ n, P16145887012149113958.a n = (A196655 n : ℚ)

end A196655

/-!
# A196656: Primes of the form 33*2^n + 7.

The programs for A196656, there is no canonical definition to state claims against.
-/

/-! ## A196656.P12814719859652805255

`p?[66*2^n+7]`
-/

namespace A196656.P12814719859652805255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  66 * 2 ^ n + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A196656.P12814719859652805255

/-! ## A196656.P16746943920927046117

`record[∑{p}[66*2^n+7, #]]`
-/

namespace A196656.P16746943920927046117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  66 * 2 ^ n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196656.P16746943920927046117

/-! ## A196656.P15773967138636800028

`∏{d}[p?[∑[2*a(n-1)]], #]` with `a(0)=40, a(1)=33`
-/

namespace A196656.P15773967138636800028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [40, 33] fun n f3 =>
  2 * f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A196656.P15773967138636800028

/-! ## A196656.P15131339274805886981

`or(1, p?[A196655(n)])`
-/

namespace A196656.P15131339274805886981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196655 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A196656.P15131339274805886981

/-!
# A196657: a(n) = 63*2^(n+1) + 1.

The programs for A196657, the canonical program `A196657.P10101108946596074271` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196657 has offset 0).

The definition of A196657 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `63*2^(n+1)+1` (program `A196657.P10101108946596074271`, by `A196657.P10101108946596074271.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196657.P10101108946596074271

`63*2^(n+1)+1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196657

/-- `63*2^(n+1)+1` -/
def P10101108946596074271.Spec : Prop :=
  ∀ n, (P10101108946596074271.a n : ℤ) = A196657 n

theorem P10101108946596074271.correct : P10101108946596074271.Spec := by
  intro n
  simp only [A196657]

end A196657

/-! ## A196657.P7470981593225140629

`42*(A007283(n)+1/42)`
-/

namespace A196657.P7470981593225140629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  42 * ((A007283 n : ℚ) + (1 : ℚ) / 42)

end

end A196657.P7470981593225140629

namespace A196657

/-- `42*(A007283(n)+1/42)` -/
def P7470981593225140629.Spec : Prop :=
  ∀ n, P7470981593225140629.a n = (A196657 n : ℚ)

end A196657

/-! ## A196657.P9515385468726455123

`or(A195744(n+2), A195744(n))`
-/

namespace A196657.P9515385468726455123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A195744 (n + 2)) (A195744 n)

end

end A196657.P9515385468726455123

namespace A196657

/-- `or(A195744(n+2), A195744(n))` -/
def P9515385468726455123.Spec : Prop :=
  ∀ n, P9515385468726455123.a n = A196657 n

end A196657

/-! ## A196657.P5771939401851301634

`or(A122041(n+1), A168596(n+3))`
-/

namespace A196657.P5771939401851301634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122041 (n + 1)) (A168596 (n + 3))

end

end A196657.P5771939401851301634

namespace A196657

/-- `or(A122041(n+1), A168596(n+3))` -/
def P5771939401851301634.Spec : Prop :=
  ∀ n, P5771939401851301634.a n = A196657 n

end A196657

/-! ## A196657.P2394640033606713385

`Δ[A304509(n+1)+n]`
-/

namespace A196657.P2394640033606713385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304509 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196657.P2394640033606713385

namespace A196657

/-- `Δ[A304509(n+1)+n]` -/
def P2394640033606713385.Spec : Prop :=
  ∀ n, P2394640033606713385.a n = A196657 n

end A196657

/-! ## A196657.P14981572897948708474

`or(1, A043569(A046691(n+3)+10))`
-/

namespace A196657.P14981572897948708474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A043569 (A046691 (n + 3) + 10).toNat)

end

end A196657.P14981572897948708474

namespace A196657

/-- `or(1, A043569(A046691(n+3)+10))` -/
def P14981572897948708474.Spec : Prop :=
  ∀ n, P14981572897948708474.a n = A196657 n

end A196657

/-! ## A196657.P12647119853914283195

`xor(1, A043569(A055999(n+2)+12))`
-/

namespace A196657.P12647119853914283195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A043569 (A055999 (n + 2) + 12).toNat)

end

end A196657.P12647119853914283195

namespace A196657

/-- `xor(1, A043569(A055999(n+2)+12))` -/
def P12647119853914283195.Spec : Prop :=
  ∀ n, P12647119853914283195.a n = A196657 n

end A196657

/-! ## A196657.P1022998609664124442

`or(1, A023758(A167487(n+5)))`
-/

namespace A196657.P1022998609664124442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A023758 (A167487 (n + 5)).toNat)

end

end A196657.P1022998609664124442

namespace A196657

/-- `or(1, A023758(A167487(n+5)))` -/
def P1022998609664124442.Spec : Prop :=
  ∀ n, P1022998609664124442.a n = A196657 n

end A196657

/-! ## A196657.P15705820992909322331

`or(1, A023758(A145018(n+7)+3))`
-/

namespace A196657.P15705820992909322331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A023758 (A145018 (n + 7) + 3).toNat)

end

end A196657.P15705820992909322331

namespace A196657

/-- `or(1, A023758(A145018(n+7)+3))` -/
def P15705820992909322331.Spec : Prop :=
  ∀ n, P15705820992909322331.a n = A196657 n

end A196657

/-!
# A196658: Primes of the form 63*2^n + 1.

The programs for A196658, there is no canonical definition to state claims against.
-/

/-! ## A196658.P17495949813547197561

`∩[A234388(n+1), A196657(n)]`
-/

namespace A196658.P17495949813547197561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196658.P17495949813547197561

/-! ## A196658.P8456742011232224683

`∩[A152449(n+1), A196657(n)]`
-/

namespace A196658.P8456742011232224683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196657 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196658.P8456742011232224683

/-! ## A196658.P7071725028930926928

`∩[A061638(n+1), A234388(n+1)]`
-/

namespace A196658.P7071725028930926928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196658.P7071725028930926928

/-!
# A196659: G.f.: A(x) = INV(x - x*INV(x - 3*x*INV(x - 5*x*INV(x - 7*x*INV(x - ...))))), where INV(F(x)) = series reversion of F(x).

The programs for A196659, there is no canonical definition to state claims against.
-/

/-! ## A196659.P8346932939041480285

`∑[A346612(∏[∑[n+2]-1])]`
-/

namespace A196659.P8346932939041480285
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346612 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196659.P8346932939041480285

/-!
# A196660: Smallest k>0 such that k*n+(n-1) is prime.

The programs for A196660, there is no canonical definition to state claims against.
-/

/-! ## A196660.P3251818649958647405

`floor(A088732(n)/(n+1))`
-/

namespace A196660.P3251818649958647405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A088732 n : ℚ) / (n + 1 : ℚ)⌋

end

end A196660.P3251818649958647405

/-! ## A196660.P6148041882359923607

`gcd(A085090(n+1), A255598(n+1))`
-/

namespace A196660.P6148041882359923607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085090 (n + 1)) (A255598 (n + 1))

end

end A196660.P6148041882359923607

/-! ## A196660.P9150965380176486806

`(A088732(n)+A001489(n))/(n+1)`
-/

namespace A196660.P9150965380176486806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088732 n + A001489 n : ℚ) / (n + 1 : ℚ)

end

end A196660.P9150965380176486806

/-! ## A196660.P3924571077006133758

`(A088732(n)-n)/A000027(n+1)`
-/

namespace A196660.P3924571077006133758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088732 n - (n : ℤ) : ℚ) / (A000027 (n + 1) : ℚ)

end

end A196660.P3924571077006133758

/-! ## A196660.P1398428214207416353

`(n-A088732(n))/A001478(n+1)`
-/

namespace A196660.P1398428214207416353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A088732 n : ℚ) / (A001478 (n + 1) : ℚ)

end

end A196660.P1398428214207416353

/-! ## A196660.P15182249444567289480

`(A088732(n)-n)/A008621(4*n)`
-/

namespace A196660.P15182249444567289480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088732 n - (n : ℤ) : ℚ) / (A008621 (4 * n) : ℚ)

end

end A196660.P15182249444567289480

/-! ## A196660.P11367710306446326457

`abs((n-A088732(n))/A028242(2*n))`
-/

namespace A196660.P11367710306446326457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - A088732 n : ℚ) / (A028242 (2 * n) : ℚ)|

end

end A196660.P11367710306446326457

/-! ## A196660.P9996794605858519261

`floor(A060940(∑[A000010(n+1)])/(n+1))`
-/

namespace A196660.P9996794605858519261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060940 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A196660.P9996794605858519261

/-! ## A196660.P1435533691402057642

`A004767(A088732(n))%A004767(n)`
-/

namespace A196660.P1435533691402057642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 (A088732 n).toNat) (A004767 n)

end

end A196660.P1435533691402057642

/-! ## A196660.P8587477185859144334

`(A088732(n)-n)/A000720(A000040(n+1))`
-/

namespace A196660.P8587477185859144334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088732 n - (n : ℤ) : ℚ) / (A000720 (A000040 (n + 1)).toNat : ℚ)

end

end A196660.P8587477185859144334

/-!
# A196661: Expansion of g.f. (1-2*x)/(1-7*x).

The programs for A196661, the canonical program `A196661.P18414715793752164929` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196661 has offset 0).

The definition of A196661 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x)/(1-7x))` (program `A196661.P18414715793752164929`, by `A196661.P18414715793752164929.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196661.P18414715793752164929

`ogf((1-2x)/(1-7x))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196661

/-- `ogf((1-2x)/(1-7x))` -/
def P18414715793752164929.Spec : Prop :=
  ∀ n, P18414715793752164929.a n = A196661 n

theorem P18414715793752164929.correct : P18414715793752164929.Spec := by
  intro n
  simp only [A196661]

end A196661

/-! ## A196661.P13553819946859441025

`7*a(n-1)` with `a(0)=1, a(1)=5`
-/

namespace A196661.P13553819946859441025
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  7 * a (n - 1)

end

end A196661.P13553819946859441025

namespace A196661

/-- `7*a(n-1)` -/
def P13553819946859441025.Spec : Prop :=
  ∀ n, (P13553819946859441025.a n : ℤ) = A196661 n

end A196661

/-! ## A196661.P4307794679413076986

`ceil(5*7^(n-1))`
-/

namespace A196661.P4307794679413076986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈5 * (7 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A196661.P4307794679413076986

namespace A196661

/-- `ceil(5*7^(n-1))` -/
def P4307794679413076986.Spec : Prop :=
  ∀ n, P4307794679413076986.a n = A196661 n

end A196661

/-! ## A196661.P4231360789233517658

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=5, a(2)=7`
-/

namespace A196661.P4231360789233517658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 7] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196661.P4231360789233517658

namespace A196661

/-- `abs(∏[-a(n-1)])` -/
def P4231360789233517658.Spec : Prop :=
  ∀ n, P4231360789233517658.a n = A196661 n

end A196661

/-! ## A196661.P9385700571365489428

`Δ[abs(lcm(7, a(n-1))-1)]` with `a(0)=0`
-/

namespace A196661.P9385700571365489428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  |(Int.lcm 7 (f1 (n - 1)) : ℤ) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A196661.P9385700571365489428

namespace A196661

/-- `Δ[abs(lcm(7, a(n-1))-1)]` -/
def P9385700571365489428.Spec : Prop :=
  ∀ n, P9385700571365489428.a n = A196661 n

end A196661

/-! ## A196661.P10089071794739013058

`a(n-1)/(1-6/7)` with `a(0)=1, a(1)=5`
-/

namespace A196661.P10089071794739013058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  a (n - 1) / (1 - (6 : ℚ) / 7)

end

end A196661.P10089071794739013058

namespace A196661

/-- `a(n-1)/(1-6/7)` -/
def P10089071794739013058.Spec : Prop :=
  ∀ n, P10089071794739013058.a n = (A196661 n : ℚ)

end A196661

/-! ## A196661.P10946063475262505741

`7*floor(a(A023443(n)))` with `a(0)=1, a(1)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A196661.P10946063475262505741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  7 * a (A023443 n).toNat

end

end A196661.P10946063475262505741

namespace A196661

/-- `7*floor(a(A023443(n)))` -/
def P10946063475262505741.Spec : Prop :=
  ∀ n, (P10946063475262505741.a n : ℤ) = A196661 n

end A196661

/-! ## A196661.P15769915141583938787

`A181303(A101328(n+2))+1`
-/

namespace A196661.P15769915141583938787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181303 (A101328 (n + 2)).toNat + 1

end

end A196661.P15769915141583938787

namespace A196661

/-- `A181303(A101328(n+2))+1` -/
def P15769915141583938787.Spec : Prop :=
  ∀ n, P15769915141583938787.a n = A196661 n

end A196661

/-! ## A196661.P3158383674304855834

`2*A055272(n)-A000420(n)`
-/

namespace A196661.P3158383674304855834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055272 n - A000420 n

end

end A196661.P3158383674304855834

namespace A196661

/-- `2*A055272(n)-A000420(n)` -/
def P3158383674304855834.Spec : Prop :=
  ∀ n, P3158383674304855834.a n = A196661 n

end A196661

/-! ## A196661.P14797463070273844408

`round(5*(A000005(record[A014963(n+1)])+5)^n/7)`
-/

namespace A196661.P14797463070273844408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 * (((A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 5) ^ n : ℚ) / 7))

end

end A196661.P14797463070273844408

namespace A196661

/-- `round(5*(A000005(record[A014963(n+1)])+5)^n/7)` -/
def P14797463070273844408.Spec : Prop :=
  ∀ n, P14797463070273844408.a n = A196661 n

end A196661

/-! ## A196661.P5512620305587114949

`A052934(n)/∑[A052934(n)]*A055272(n)`
-/

namespace A196661.P5512620305587114949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052934 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052934 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) * (A055272 n : ℚ)

end

end A196661.P5512620305587114949

namespace A196661

/-- `A052934(n)/∑[A052934(n)]*A055272(n)` -/
def P5512620305587114949.Spec : Prop :=
  ∀ n, P5512620305587114949.a n = (A196661 n : ℚ)

end A196661

/-! ## A196661.P11647722256049351129

`round(A193577(n)/7)`
-/

namespace A196661.P11647722256049351129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A193577 n : ℚ) / 7)

end

end A196661.P11647722256049351129

namespace A196661

/-- `round(A193577(n)/7)` -/
def P11647722256049351129.Spec : Prop :=
  ∀ n, P11647722256049351129.a n = A196661 n

end A196661

/-! ## A196661.P17746665208801800420

`round(A199422(n)/7)`
-/

namespace A196661.P17746665208801800420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199422 n : ℚ) / 7)

end

end A196661.P17746665208801800420

namespace A196661

/-- `round(A199422(n)/7)` -/
def P17746665208801800420.Spec : Prop :=
  ∀ n, P17746665208801800420.a n = A196661 n

end A196661

/-!
# A196662: Expansion of g.f. (1-3*x)/(1-10*x).

The programs for A196662, the canonical program `A196662.P16049701418617446153` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196662 has offset 0).

The definition of A196662 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x)/(1-10x))` (program `A196662.P16049701418617446153`, by `A196662.P16049701418617446153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196662.P16049701418617446153

`ogf((1-3x)/(1-10x))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196662

/-- `ogf((1-3x)/(1-10x))` -/
def P16049701418617446153.Spec : Prop :=
  ∀ n, P16049701418617446153.a n = A196662 n

theorem P16049701418617446153.correct : P16049701418617446153.Spec := by
  intro n
  simp only [A196662]

end A196662

/-! ## A196662.P13606612531285285003

`10*a(n-1)` with `a(0)=1, a(1)=7`
-/

namespace A196662.P13606612531285285003
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  10 * a (n - 1)

end

end A196662.P13606612531285285003

namespace A196662

/-- `10*a(n-1)` -/
def P13606612531285285003.Spec : Prop :=
  ∀ n, (P13606612531285285003.a n : ℤ) = A196662 n

end A196662

/-! ## A196662.P4031283907824651356

`ceil(7*10^(n-1))`
-/

namespace A196662.P4031283907824651356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈7 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A196662.P4031283907824651356

namespace A196662

/-- `ceil(7*10^(n-1))` -/
def P4031283907824651356.Spec : Prop :=
  ∀ n, P4031283907824651356.a n = A196662 n

end A196662

/-! ## A196662.P1967577822660560762

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=7, a(2)=10`
-/

namespace A196662.P1967577822660560762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 10] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196662.P1967577822660560762

namespace A196662

/-- `abs(∏[-a(n-1)])` -/
def P1967577822660560762.Spec : Prop :=
  ∀ n, P1967577822660560762.a n = A196662 n

end A196662

/-! ## A196662.P3204841773206643167

`lcm(10^(n-1), a(n-1))` with `a(0)=1, a(1)=7`
-/

namespace A196662.P3204841773206643167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A196662.P3204841773206643167

namespace A196662

/-- `lcm(10^(n-1), a(n-1))` -/
def P3204841773206643167.Spec : Prop :=
  ∀ n, (P3204841773206643167.a n : ℤ) = A196662 n

end A196662

/-! ## A196662.P2517606360973012001

`abs(10*a(A023443(n)))` with `a(0)=1, a(1)=7`
-/

namespace A196662.P2517606360973012001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n a =>
  10 * a (A023443 n).toNat

end

end A196662.P2517606360973012001

namespace A196662

/-- `abs(10*a(A023443(n)))` -/
def P2517606360973012001.Spec : Prop :=
  ∀ n, (P2517606360973012001.a n : ℤ) = A196662 n

end A196662

/-! ## A196662.P7739562782522834297

`(7*10^(n-1))^A002262(∑[n]+1)`
-/

namespace A196662.P7739562782522834297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * (10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ (A002262 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℤ)

end

end A196662.P7739562782522834297

namespace A196662

/-- `(7*10^(n-1))^A002262(∑[n]+1)` -/
def P7739562782522834297.Spec : Prop :=
  ∀ n, P7739562782522834297.a n = (A196662 n : ℚ)

end A196662

/-! ## A196662.P14728171969259837606

`∑[A055996(n)]-2*A178501(n)`
-/

namespace A196662.P14728171969259837606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A178501 n

end

end A196662.P14728171969259837606

namespace A196662

/-- `∑[A055996(n)]-2*A178501(n)` -/
def P14728171969259837606.Spec : Prop :=
  ∀ n, P14728171969259837606.a n = A196662 n

end A196662

/-! ## A196662.P12867181948520897114

`A090019(n)+record[A182979(n+1)]`
-/

namespace A196662.P12867181948520897114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182979 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196662.P12867181948520897114

namespace A196662

/-- `A090019(n)+record[A182979(n+1)]` -/
def P12867181948520897114.Spec : Prop :=
  ∀ n, P12867181948520897114.a n = A196662 n

end A196662

/-! ## A196662.P16979822749615677600

`A004663(2*n)-A136853(2*n+1)`
-/

namespace A196662.P16979822749615677600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004663 (2 * n) - A136853 (2 * n + 1)

end

end A196662.P16979822749615677600

namespace A196662

/-- `A004663(2*n)-A136853(2*n+1)` -/
def P16979822749615677600.Spec : Prop :=
  ∀ n, P16979822749615677600.a n = A196662 n

end A196662

/-! ## A196662.P5377951102333585587

`A136853(2*(n+1))-A136853(2*n+1)`
-/

namespace A196662.P5377951102333585587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136853 (2 * (n + 1)) - A136853 (2 * n + 1)

end

end A196662.P5377951102333585587

namespace A196662

/-- `A136853(2*(n+1))-A136853(2*n+1)` -/
def P5377951102333585587.Spec : Prop :=
  ∀ n, P5377951102333585587.a n = A196662 n

end A196662

/-! ## A196662.P16077257631095082598

`A090019(n)+A090019(n)-A093143(n)`
-/

namespace A196662.P16077257631095082598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090019 n + (A090019 n - A093143 n)

end

end A196662.P16077257631095082598

namespace A196662

/-- `A090019(n)+A090019(n)-A093143(n)` -/
def P16077257631095082598.Spec : Prop :=
  ∀ n, P16077257631095082598.a n = A196662 n

end A196662

/-! ## A196662.P8674266783382865398

`round(A199687(n)/10)`
-/

namespace A196662.P8674266783382865398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A199687 n : ℚ) / 10)

end

end A196662.P8674266783382865398

namespace A196662

/-- `round(A199687(n)/10)` -/
def P8674266783382865398.Spec : Prop :=
  ∀ n, P8674266783382865398.a n = A196662 n

end A196662

/-! ## A196662.P2973449479082900425

`(A093141(n)+A011557(n))/2`
-/

namespace A196662.P2973449479082900425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093141 n + A011557 n : ℚ) / 2

end

end A196662.P2973449479082900425

namespace A196662

/-- `(A093141(n)+A011557(n))/2` -/
def P2973449479082900425.Spec : Prop :=
  ∀ n, P2973449479082900425.a n = (A196662 n : ℚ)

end A196662

/-! ## A196662.P3374861425900660900

`2*A090019(n)-A093143(n)`
-/

namespace A196662.P3374861425900660900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090019 n - A093143 n

end

end A196662.P3374861425900660900

namespace A196662

/-- `2*A090019(n)-A093143(n)` -/
def P3374861425900660900.Spec : Prop :=
  ∀ n, P3374861425900660900.a n = A196662 n

end A196662

/-! ## A196662.P15118756738465928281

`(A346178(n)+A090019(n))/2`
-/

namespace A196662.P15118756738465928281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346178 n + A090019 n : ℚ) / 2

end

end A196662.P15118756738465928281

namespace A196662

/-- `(A346178(n)+A090019(n))/2` -/
def P15118756738465928281.Spec : Prop :=
  ∀ n, P15118756738465928281.a n = (A196662 n : ℚ)

end A196662

/-!
# A196663: Expansion of g.f. (1-4*x)/(1-13*x).

The programs for A196663, the canonical program `A196663.P9886394298878879127` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196663 has offset 0).

The definition of A196663 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x)/(1-13x))` (program `A196663.P9886394298878879127`, by `A196663.P9886394298878879127.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196663.P9886394298878879127

`ogf((1-4x)/(1-13x))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196663

/-- `ogf((1-4x)/(1-13x))` -/
def P9886394298878879127.Spec : Prop :=
  ∀ n, P9886394298878879127.a n = A196663 n

theorem P9886394298878879127.correct : P9886394298878879127.Spec := by
  intro n
  simp only [A196663]

end A196663

/-! ## A196663.P8775495777104842496

`13*a(n-1)` with `a(0)=1, a(1)=9`
-/

namespace A196663.P8775495777104842496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  13 * a (n - 1)

end

end A196663.P8775495777104842496

namespace A196663

/-- `13*a(n-1)` -/
def P8775495777104842496.Spec : Prop :=
  ∀ n, (P8775495777104842496.a n : ℤ) = A196663 n

end A196663

/-! ## A196663.P14332021437770148984

`ceil(9*13^(n-1))`
-/

namespace A196663.P14332021437770148984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈9 * (13 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A196663.P14332021437770148984

namespace A196663

/-- `ceil(9*13^(n-1))` -/
def P14332021437770148984.Spec : Prop :=
  ∀ n, P14332021437770148984.a n = A196663 n

end A196663

/-! ## A196663.P8042314485279985175

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=9, a(2)=13`
-/

namespace A196663.P8042314485279985175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 13] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196663.P8042314485279985175

namespace A196663

/-- `abs(∏[-a(n-1)])` -/
def P8042314485279985175.Spec : Prop :=
  ∀ n, P8042314485279985175.a n = A196663 n

end A196663

/-! ## A196663.P10377330181887489356

`∏{digits}[A086573(n), A193595(#)]`
-/

namespace A196663.P10377330181887489356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A193595 x).prod

end

end A196663.P10377330181887489356

namespace A196663

/-- `∏{digits}[A086573(n), A193595(#)]` -/
def P10377330181887489356.Spec : Prop :=
  ∀ n, P10377330181887489356.a n = A196663 n

end A196663

/-! ## A196663.P14220660432261403083

`∏{digits}[A086580(n), A193595(#)]`
-/

namespace A196663.P14220660432261403083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A193595 x).prod

end

end A196663.P14220660432261403083

namespace A196663

/-- `∏{digits}[A086580(n), A193595(#)]` -/
def P14220660432261403083.Spec : Prop :=
  ∀ n, P14220660432261403083.a n = A196663 n

end A196663

/-! ## A196663.P5752004370036547437

`(9*13^(n-1))^A001222(A027748(n+1))`
-/

namespace A196663.P5752004370036547437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * (13 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) ^ (A001222 (A027748 (n + 1)).toNat : ℤ)

end

end A196663.P5752004370036547437

namespace A196663

/-- `(9*13^(n-1))^A001222(A027748(n+1))` -/
def P5752004370036547437.Spec : Prop :=
  ∀ n, P5752004370036547437.a n = (A196663 n : ℚ)

end A196663

/-!
# A196664: Expansion of g.f. (1-5*x)/(1-16*x).

The programs for A196664, the canonical program `A196664.P7481742658276178355` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196664 has offset 0).

The definition of A196664 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x)/(1-16x))` (program `A196664.P7481742658276178355`, by `A196664.P7481742658276178355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196664.P7481742658276178355

`ogf((1-5x)/(1-16x))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196664

/-- `ogf((1-5x)/(1-16x))` -/
def P7481742658276178355.Spec : Prop :=
  ∀ n, P7481742658276178355.a n = A196664 n

theorem P7481742658276178355.correct : P7481742658276178355.Spec := by
  intro n
  simp only [A196664]

end A196664

/-! ## A196664.P16192376319755699598

`16*a(n-1)` with `a(0)=1, a(1)=11`
-/

namespace A196664.P16192376319755699598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n a =>
  16 * a (n - 1)

end

end A196664.P16192376319755699598

namespace A196664

/-- `16*a(n-1)` -/
def P16192376319755699598.Spec : Prop :=
  ∀ n, (P16192376319755699598.a n : ℤ) = A196664 n

end A196664

/-! ## A196664.P6736159883780466776

`ceil(11*16^(n-1))`
-/

namespace A196664.P6736159883780466776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈11 * (16 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A196664.P6736159883780466776

namespace A196664

/-- `ceil(11*16^(n-1))` -/
def P6736159883780466776.Spec : Prop :=
  ∀ n, P6736159883780466776.a n = A196664 n

end A196664

/-! ## A196664.P5110391296957727924

`a(n-1)/(1/4)²` with `a(0)=1, a(1)=11`
-/

namespace A196664.P5110391296957727924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 11] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2

end

end A196664.P5110391296957727924

namespace A196664

/-- `a(n-1)/(1/4)²` -/
def P5110391296957727924.Spec : Prop :=
  ∀ n, P5110391296957727924.a n = (A196664 n : ℚ)

end A196664

/-! ## A196664.P3774529767150233417

`2*A067415(n)-A067404(n)`
-/

namespace A196664.P3774529767150233417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067415 n - A067404 n

end

end A196664.P3774529767150233417

namespace A196664

/-- `2*A067415(n)-A067404(n)` -/
def P3774529767150233417.Spec : Prop :=
  ∀ n, P3774529767150233417.a n = A196664 n

end A196664

/-! ## A196664.P13719657616485471954

`or(A002001(n)², A002001(A004273(n)))`
-/

namespace A196664.P13719657616485471954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002001 n ^ 2) (A002001 (A004273 n).toNat)

end

end A196664.P13719657616485471954

namespace A196664

/-- `or(A002001(n)², A002001(A004273(n)))` -/
def P13719657616485471954.Spec : Prop :=
  ∀ n, P13719657616485471954.a n = A196664 n

end A196664

/-! ## A196664.P9021716731483291849

`A067428(n)/Δ[A131577(n)]`
-/

namespace A196664.P9021716731483291849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067428 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A196664.P9021716731483291849

namespace A196664

/-- `A067428(n)/Δ[A131577(n)]` -/
def P9021716731483291849.Spec : Prop :=
  ∀ n, P9021716731483291849.a n = (A196664 n : ℚ)

end A196664

/-!
# A196665: Expansion of g.f. (1-6*x)/(1-19*x).

The programs for A196665, the canonical program `A196665.P12523283121247930868` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196665 has offset 0).

The definition of A196665 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-6x)/(1-19x))` (program `A196665.P12523283121247930868`, by `A196665.P12523283121247930868.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196665.P12523283121247930868

`ogf((1-6x)/(1-19x))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196665

/-- `ogf((1-6x)/(1-19x))` -/
def P12523283121247930868.Spec : Prop :=
  ∀ n, P12523283121247930868.a n = A196665 n

theorem P12523283121247930868.correct : P12523283121247930868.Spec := by
  intro n
  simp only [A196665]

end A196665

/-! ## A196665.P7985347792999655523

`19*a(n-1)` with `a(0)=1, a(1)=13`
-/

namespace A196665.P7985347792999655523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  19 * a (n - 1)

end

end A196665.P7985347792999655523

namespace A196665

/-- `19*a(n-1)` -/
def P7985347792999655523.Spec : Prop :=
  ∀ n, (P7985347792999655523.a n : ℤ) = A196665 n

end A196665

/-! ## A196665.P6224137481252502009

`ceil(13*19^(n-1))`
-/

namespace A196665.P6224137481252502009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈13 * (19 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A196665.P6224137481252502009

namespace A196665

/-- `ceil(13*19^(n-1))` -/
def P6224137481252502009.Spec : Prop :=
  ∀ n, P6224137481252502009.a n = A196665 n

end A196665

/-! ## A196665.P15946675340519481805

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=13, a(2)=19`
-/

namespace A196665.P15946675340519481805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 13, 19] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196665.P15946675340519481805

namespace A196665

/-- `abs(∏[-a(n-1)])` -/
def P15946675340519481805.Spec : Prop :=
  ∀ n, P15946675340519481805.a n = A196665 n

end A196665

/-! ## A196665.P8242951869701498133

`lcm(19^(n-1), a(n-1))` with `a(0)=1, a(1)=13`
-/

namespace A196665.P8242951869701498133
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((19 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A196665.P8242951869701498133

namespace A196665

/-- `lcm(19^(n-1), a(n-1))` -/
def P8242951869701498133.Spec : Prop :=
  ∀ n, (P8242951869701498133.a n : ℤ) = A196665 n

end A196665

/-! ## A196665.P13728775945650044

`19*ceil(a(A023443(n)))` with `a(0)=1, a(1)=13`

`ceil` is left out, it is the identity on integers.
-/

namespace A196665.P13728775945650044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n a =>
  19 * a (A023443 n).toNat

end

end A196665.P13728775945650044

namespace A196665

/-- `19*ceil(a(A023443(n)))` -/
def P13728775945650044.Spec : Prop :=
  ∀ n, (P13728775945650044.a n : ℤ) = A196665 n

end A196665

/-!
# A196666: Expansion of g.f. (1 - 7*x)/(1 - 22*x).

The programs for A196666, the canonical program `A196666.P14369815511022143659` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196666 has offset 0).

The definition of A196666 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-7x)/(1-22x))` (program `A196666.P14369815511022143659`, by `A196666.P14369815511022143659.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196666.P14369815511022143659

`ogf((1-7x)/(1-22x))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196666

/-- `ogf((1-7x)/(1-22x))` -/
def P14369815511022143659.Spec : Prop :=
  ∀ n, P14369815511022143659.a n = A196666 n

theorem P14369815511022143659.correct : P14369815511022143659.Spec := by
  intro n
  simp only [A196666]

end A196666

/-! ## A196666.P17974087389105558103

`22*a(n-1)` with `a(0)=1, a(1)=15`
-/

namespace A196666.P17974087389105558103
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  22 * a (n - 1)

end

end A196666.P17974087389105558103

namespace A196666

/-- `22*a(n-1)` -/
def P17974087389105558103.Spec : Prop :=
  ∀ n, (P17974087389105558103.a n : ℤ) = A196666 n

end A196666

/-! ## A196666.P4010402143590929500

`ceil(15*22^(n-1))`
-/

namespace A196666.P4010402143590929500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈15 * (22 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A196666.P4010402143590929500

namespace A196666

/-- `ceil(15*22^(n-1))` -/
def P4010402143590929500.Spec : Prop :=
  ∀ n, P4010402143590929500.a n = A196666 n

end A196666

/-! ## A196666.P3750289483341020142

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=15, a(2)=22`
-/

namespace A196666.P3750289483341020142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 15, 22] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196666.P3750289483341020142

namespace A196666

/-- `abs(∏[-a(n-1)])` -/
def P3750289483341020142.Spec : Prop :=
  ∀ n, P3750289483341020142.a n = A196666 n

end A196666

/-! ## A196666.P2389211277595246287

`lcm(22^(n-1), a(n-1))` with `a(0)=1, a(1)=15`
-/

namespace A196666.P2389211277595246287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((22 : ℚ) ^ ((n : ℤ) - 1 : ℤ))) (a (n - 1) : ℤ)

end

end A196666.P2389211277595246287

namespace A196666

/-- `lcm(22^(n-1), a(n-1))` -/
def P2389211277595246287.Spec : Prop :=
  ∀ n, (P2389211277595246287.a n : ℤ) = A196666 n

end A196666

/-!
# A196667: The Chebyshev primes of index 1.

The programs for A196667, there is no canonical definition to state claims against.
-/

/-! ## A196667.P15620593840383018840

`∩[A084801(n+1), A107664(n+1)]`
-/

namespace A196667.P15620593840383018840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196667.P15620593840383018840

/-!
# A196668: The Chebyshev primes of index 2.

The programs for A196668, there is no canonical definition to state claims against.
-/

/-! ## A196668.P18355894512802557555

`∩[A172240(n+1), A286341(n+1)]`
-/

namespace A196668.P18355894512802557555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286341 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A196668.P18355894512802557555

/-!
# A196669: The Chebyshev primes of index 3.

The programs for A196669, there is no canonical definition to state claims against.
-/

/-! ## A196669.P59327129725701077

`A158290(A214433(n+2))`
-/

namespace A196669.P59327129725701077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158290 (A214433 (n + 2)).toNat

end

end A196669.P59327129725701077

/-!
# A196670: The Chebyshev primes of index 4.

The programs for A196670, there is no canonical definition to state claims against.
-/

/-! ## A196670.P4918092037693144786

`A123318(A156040(n)+A037942(n+2))`
-/

namespace A196670.P4918092037693144786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A156040 n + A037942 (n + 2)).toNat

end

end A196670.P4918092037693144786

/-! ## A196670.P8034808122228653714

`A123318(xor(A127496(n), A309292(n+1)))`
-/

namespace A196670.P8034808122228653714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (Int.xor (A127496 n) (A309292 (n + 1))).toNat

end

end A196670.P8034808122228653714

/-! ## A196670.P12438940971472813641

`A000040(lt[A321765(3*(n+1)), A092669(3*n+4)])`
-/

namespace A196670.P12438940971472813641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321765 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092669 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A196670.P12438940971472813641

/-! ## A196670.P4399012822076638510

`filter[A245072(n+1), A157749(#)]`
-/

namespace A196670.P4399012822076638510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A157749 (f1 j).toNat = 1) n)

end

end A196670.P4399012822076638510

/-! ## A196670.P15863611484573187926

`filter[A338134(n+1), A157749(#)]`
-/

namespace A196670.P15863611484573187926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A157749 (f1 j).toNat = 1) n)

end

end A196670.P15863611484573187926

/-!
# A196672: Record gaps between Chebyshev primes (of index 1).

The programs for A196672, there is no canonical definition to state claims against.
-/

/-! ## A196672.P474644602776936417

`record[Δ[A196667(n+1)]]`
-/

namespace A196672.P474644602776936417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196667 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196672.P474644602776936417

/-! ## A196672.P6875559689584754632

`record[A196667(n+2)-A196667(n+1)]`
-/

namespace A196672.P6875559689584754632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196667 (n + 2) - A196667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196672.P6875559689584754632

/-!
# A196676: Expansion of g.f. (1-8*x)/(1-25*x).

The programs for A196676, the canonical program `A196676.P8081317511988484003` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196676 has offset 0).

The definition of A196676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x)/(1-25x))` (program `A196676.P8081317511988484003`, by `A196676.P8081317511988484003.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A196676.P8081317511988484003

`ogf((1-8x)/(1-25x))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196676

/-- `ogf((1-8x)/(1-25x))` -/
def P8081317511988484003.Spec : Prop :=
  ∀ n, P8081317511988484003.a n = A196676 n

theorem P8081317511988484003.correct : P8081317511988484003.Spec := by
  intro n
  simp only [A196676]

end A196676

/-! ## A196676.P4103519992141934059

`25*a(n-1)` with `a(0)=1, a(1)=17`
-/

namespace A196676.P4103519992141934059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n a =>
  25 * a (n - 1)

end

end A196676.P4103519992141934059

namespace A196676

/-- `25*a(n-1)` -/
def P4103519992141934059.Spec : Prop :=
  ∀ n, (P4103519992141934059.a n : ℤ) = A196676 n

end A196676

/-! ## A196676.P15552214016666919772

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=17, a(2)=25`
-/

namespace A196676.P15552214016666919772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 17, 25] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A196676.P15552214016666919772

namespace A196676

/-- `abs(∏[-a(n-1)])` -/
def P15552214016666919772.Spec : Prop :=
  ∀ n, P15552214016666919772.a n = A196676 n

end A196676

/-! ## A196676.P3826653766996601148

`a(n-1)/(1/5)²` with `a(0)=1, a(1)=17`
-/

namespace A196676.P3826653766996601148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 17] fun n a =>
  a (n - 1) / ((1 : ℚ) / 5) ^ 2

end

end A196676.P3826653766996601148

namespace A196676

/-- `a(n-1)/(1/5)²` -/
def P3826653766996601148.Spec : Prop :=
  ∀ n, P3826653766996601148.a n = (A196676 n : ℚ)

end A196676

/-! ## A196676.P1692631282780328146

`a(n-1)+lcm(24, a(n-1))` with `a(0)=1, a(1)=17`
-/

namespace A196676.P1692631282780328146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n a =>
  a (n - 1) + Nat.lcm 24 (a (n - 1))

end

end A196676.P1692631282780328146

namespace A196676

/-- `a(n-1)+lcm(24, a(n-1))` -/
def P1692631282780328146.Spec : Prop :=
  ∀ n, (P1692631282780328146.a n : ℤ) = A196676 n

end A196676

/-! ## A196676.P6622294166682941406

`(A067405(n)+A009969(n))/2`
-/

namespace A196676.P6622294166682941406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067405 n + A009969 n : ℚ) / 2

end

end A196676.P6622294166682941406

namespace A196676

/-- `(A067405(n)+A009969(n))/2` -/
def P6622294166682941406.Spec : Prop :=
  ∀ n, P6622294166682941406.a n = (A196676 n : ℚ)

end A196676

/-!
# A196678: a(n) = 5*binomial(4*n+5,n)/(4*n+5).

The programs for A196678, the canonical program `A196678.P16059566375343936770` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196678 has offset 0).

The definition of A196678 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196678.P14136317697476706997

`A027836(n+1)-A000260(n+1)`
-/

namespace A196678.P14136317697476706997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027836 (n + 1) - A000260 (n + 1)

end

end A196678.P14136317697476706997

namespace A196678

/-- `A027836(n+1)-A000260(n+1)` -/
def P14136317697476706997.Spec : Prop :=
  ∀ n, P14136317697476706997.a n = A196678 n

end A196678

/-! ## A196678.P16059566375343936770

`A069271(n+1)-A002293(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A196678

/-- `A069271(n+1)-A002293(n+1)` -/
def P16059566375343936770.Spec : Prop :=
  ∀ n, P16059566375343936770.a n = A196678 n

theorem P16059566375343936770.correct : P16059566375343936770.Spec := by
  intro n
  simp only [A196678]

end A196678

/-! ## A196678.P1511255684687917389

`A334785(n+1)-2*A002293(n+1)`
-/

namespace A196678.P1511255684687917389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334785 (n + 1) - 2 * A002293 (n + 1)

end

end A196678.P1511255684687917389

namespace A196678

/-- `A334785(n+1)-2*A002293(n+1)` -/
def P1511255684687917389.Spec : Prop :=
  ∀ n, P1511255684687917389.a n = A196678 n

end A196678

/-! ## A196678.P12175904690372303745

`A069271(n+1)-A369472(2*(n+1))`
-/

namespace A196678.P12175904690372303745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069271 (n + 1) - A369472 (2 * (n + 1))

end

end A196678.P12175904690372303745

namespace A196678

/-- `A069271(n+1)-A369472(2*(n+1))` -/
def P12175904690372303745.Spec : Prop :=
  ∀ n, P12175904690372303745.a n = A196678 n

end A196678

/-! ## A196678.P1914362176128159606

`A000260(n+1)+A006633(n)-A002293(n+1)`
-/

namespace A196678.P1914362176128159606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000260 (n + 1) + (A006633 n - A002293 (n + 1))

end

end A196678.P1914362176128159606

namespace A196678

/-- `A000260(n+1)+A006633(n)-A002293(n+1)` -/
def P1914362176128159606.Spec : Prop :=
  ∀ n, P1914362176128159606.a n = A196678 n

end A196678

/-! ## A196678.P13906891455705757239

`A006632(n+2)-(A006633(n)+A002293(n+1))`
-/

namespace A196678.P13906891455705757239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006632 (n + 2) - (A006633 n + A002293 (n + 1))

end

end A196678.P13906891455705757239

namespace A196678

/-- `A006632(n+2)-(A006633(n)+A002293(n+1))` -/
def P13906891455705757239.Spec : Prop :=
  ∀ n, P13906891455705757239.a n = A196678 n

end A196678

/-! ## A196678.P6290685254229877897

`A069270(eq[4, A025581(n)])`
-/

namespace A196678.P6290685254229877897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196678.P6290685254229877897

namespace A196678

/-- `A069270(eq[4, A025581(n)])` -/
def P6290685254229877897.Spec : Prop :=
  ∀ n, P6290685254229877897.a n = A196678 n

end A196678

/-! ## A196678.P7238276675887372188

`A069270(A055999(n+2)+1)`
-/

namespace A196678.P7238276675887372188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A055999 (n + 2) + 1).toNat

end

end A196678.P7238276675887372188

namespace A196678

/-- `A069270(A055999(n+2)+1)` -/
def P7238276675887372188.Spec : Prop :=
  ∀ n, P7238276675887372188.a n = A196678 n

end A196678

/-! ## A196678.P617476740356185813

`A069270(A055998(n+3)-2)`
-/

namespace A196678.P617476740356185813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A055998 (n + 3) - 2).toNat

end

end A196678.P617476740356185813

namespace A196678

/-- `A069270(A055998(n+3)-2)` -/
def P617476740356185813.Spec : Prop :=
  ∀ n, P617476740356185813.a n = A196678 n

end A196678

/-! ## A196678.P7982760266561736752

`A069270(Δ[A023545(n+1)]-1)`
-/

namespace A196678.P7982760266561736752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (f1 (n + 1) - f1 n - 1).toNat

end

end A196678.P7982760266561736752

namespace A196678

/-- `A069270(Δ[A023545(n+1)]-1)` -/
def P7982760266561736752.Spec : Prop :=
  ∀ n, P7982760266561736752.a n = A196678 n

end A196678

/-! ## A196678.P5477794194550336399

`A069270(A056000(n+2)-(n+1))`
-/

namespace A196678.P5477794194550336399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A056000 (n + 2) - (n + 1 : ℤ)).toNat

end

end A196678.P5477794194550336399

namespace A196678

/-- `A069270(A056000(n+2)-(n+1))` -/
def P5477794194550336399.Spec : Prop :=
  ∀ n, P5477794194550336399.a n = A196678 n

end A196678

/-! ## A196678.P66951184255718638

`A069270(A016825(n+2)+A000096(n))`
-/

namespace A196678.P66951184255718638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A016825 (n + 2) + A000096 n).toNat

end

end A196678.P66951184255718638

namespace A196678

/-- `A069270(A016825(n+2)+A000096(n))` -/
def P66951184255718638.Spec : Prop :=
  ∀ n, P66951184255718638.a n = A196678 n

end A196678

/-! ## A196678.P8030006977278166662

`A069270(A002522(n+3)-A000217(n))`
-/

namespace A196678.P8030006977278166662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A002522 (n + 3) - A000217 n).toNat

end

end A196678.P8030006977278166662

namespace A196678

/-- `A069270(A002522(n+3)-A000217(n))` -/
def P8030006977278166662.Spec : Prop :=
  ∀ n, P8030006977278166662.a n = A196678 n

end A196678

/-! ## A196678.P1675523783157623718

`A069270(A183292(A000217(n+3)+n+2))`
-/

namespace A196678.P1675523783157623718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069270 (A183292 (A000217 (n + 3) + (n + 2 : ℤ)).toNat).toNat

end

end A196678.P1675523783157623718

namespace A196678

/-- `A069270(A183292(A000217(n+3)+n+2))` -/
def P1675523783157623718.Spec : Prop :=
  ∀ n, P1675523783157623718.a n = A196678 n

end A196678

/-!
# A196679: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,1,2,3 for x=0,1,2,3,4.

The programs for A196679, there is no canonical definition to state claims against.
-/

/-! ## A196679.P8803845422296108257

`A196685(∑[4*n]+1)`
-/

namespace A196679.P8803845422296108257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196679.P8803845422296108257

/-! ## A196679.P3167654164637006870

`record[A196685(Δ[A235355(n)])]`
-/

namespace A196679.P3167654164637006870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196679.P3167654164637006870

/-! ## A196679.P17709406333602675999

`record[A196685(A272267(n+1))]`
-/

namespace A196679.P17709406333602675999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196679.P17709406333602675999

/-! ## A196679.P14626986651113355372

`record[A196685(A330613(n+1))]`
-/

namespace A196679.P14626986651113355372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196679.P14626986651113355372

/-!
# A196680: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,2,3 for x=0,1,2,3,4.

The programs for A196680, there is no canonical definition to state claims against.
-/

/-! ## A196680.P1852472397127139084

`A196685(∑[n+2]+4)`
-/

namespace A196680.P1852472397127139084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196680.P1852472397127139084

/-! ## A196680.P6575421421682768454

`A196685(A167614(n+1))+char[20]`
-/

namespace A196680.P6575421421682768454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196680.P6575421421682768454

/-! ## A196680.P12538383204270901327

`A196685(A167499(n)+n)+char[37]`
-/

namespace A196680.P12538383204270901327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  37

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A196680.P12538383204270901327

/-! ## A196680.P5534089298910411416

`A196685(A167614(n+1))*A278657(n)`
-/

namespace A196680.P5534089298910411416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A167614 (n + 1)).toNat * A278657 n

end

end A196680.P5534089298910411416

/-! ## A196680.P13389124001902168528

`gcd(A025444(n), A196685(A167614(n+1)))`
-/

namespace A196680.P13389124001902168528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025444 n) (A196685 (A167614 (n + 1)).toNat)

end

end A196680.P13389124001902168528

/-!
# A196681: Number of n X 4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,2,3 for x=0,1,2,3,4.

The programs for A196681, there is no canonical definition to state claims against.
-/

/-! ## A196681.P14434315596764033557

`A196685(A374004(n+1))`
-/

namespace A196681.P14434315596764033557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A374004 (n + 1)).toNat

end

end A196681.P14434315596764033557

/-! ## A196681.P14183417817649625216

`A196685(A141214(n)+7)`
-/

namespace A196681.P14183417817649625216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A141214 n + 7).toNat

end

end A196681.P14183417817649625216

/-! ## A196681.P14858514163766617879

`A196685(A052905(n)+9)`
-/

namespace A196681.P14858514163766617879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A052905 n + 9).toNat

end

end A196681.P14858514163766617879

/-! ## A196681.P11326217354786072789

`A196685(A055999(n)+10)`
-/

namespace A196681.P11326217354786072789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A055999 n + 10).toNat

end

end A196681.P11326217354786072789

/-! ## A196681.P11748166323611752287

`A196685(eq[5, A066657(n)])`
-/

namespace A196681.P11748166323611752287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196681.P11748166323611752287

/-!
# A196682: Number of nX5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,2,3 for x=0,1,2,3,4.

The programs for A196682, there is no canonical definition to state claims against.
-/

/-! ## A196682.P4903030219085048183

`A196685(A374005(n+1))`
-/

namespace A196682.P4903030219085048183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A374005 (n + 1)).toNat

end

end A196682.P4903030219085048183

/-! ## A196682.P14255314359365794195

`A196685(A167499(n+3))`
-/

namespace A196682.P14255314359365794195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A167499 (n + 3)).toNat

end

end A196682.P14255314359365794195

/-! ## A196682.P6199675757662078106

`A196685(A155212(n)+13)`
-/

namespace A196682.P6199675757662078106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A155212 n + 13).toNat

end

end A196682.P6199675757662078106

/-! ## A196682.P13486667086209803620

`A196685(A056000(n)+15)`
-/

namespace A196682.P13486667086209803620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A056000 n + 15).toNat

end

end A196682.P13486667086209803620

/-! ## A196682.P4359726039225200015

`A196685(eq[7, A066657(n)])`
-/

namespace A196682.P4359726039225200015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196682.P4359726039225200015

/-!
# A196683: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,2,3 for x=0,1,2,3,4.

The programs for A196683, there is no canonical definition to state claims against.
-/

/-! ## A196683.P13838423030191929071

`A196685(A374007(n+1))`
-/

namespace A196683.P13838423030191929071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A374007 (n + 1)).toNat

end

end A196683.P13838423030191929071

/-! ## A196683.P9933896329964189545

`A196685(A056115(n)+21)`
-/

namespace A196683.P9933896329964189545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A056115 n + 21).toNat

end

end A196683.P9933896329964189545

/-! ## A196683.P18276021968382616149

`A196685(A167499(n+4)+1)`
-/

namespace A196683.P18276021968382616149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A167499 (n + 4) + 1).toNat

end

end A196683.P18276021968382616149

/-! ## A196683.P14920364596119369789

`A196685(A000217(n+5)+6)`
-/

namespace A196683.P14920364596119369789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A000217 (n + 5) + 6).toNat

end

end A196683.P14920364596119369789

/-! ## A196683.P6081915992688599568

`A196685(A161680(n+6)+6)`
-/

namespace A196683.P6081915992688599568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A161680 (n + 6) + 6).toNat

end

end A196683.P6081915992688599568

/-!
# A196684: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 4,0,1,2,3 for x=0,1,2,3,4.

The programs for A196684, there is no canonical definition to state claims against.
-/

/-! ## A196684.P6277434699565893038

`A196685(A374008(n+1))`
-/

namespace A196684.P6277434699565893038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A374008 (n + 1)).toNat

end

end A196684.P6277434699565893038

/-! ## A196684.P12518771350783927008

`A196685(A056119(n)+28)`
-/

namespace A196684.P12518771350783927008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A056119 n + 28).toNat

end

end A196684.P12518771350783927008

/-! ## A196684.P1694177623820951409

`A196685(eq[11, A066657(n)])`
-/

namespace A196684.P1694177623820951409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196684.P1694177623820951409

/-! ## A196684.P4942002356158953175

`A196685(eq[8, A131818(n+1)])`
-/

namespace A196684.P4942002356158953175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196684.P4942002356158953175

/-! ## A196684.P2314601883101404184

`A196685(A055999(n+4))`
-/

namespace A196684.P2314601883101404184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196685 (A055999 (n + 4)).toNat

end

end A196684.P2314601883101404184

/-!
# A196685: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 4,0,1,2,3 for x=0,1,2,3,4.

The programs for A196685, there is no canonical definition to state claims against.
-/

/-! ## A196685.P12355324434245534002

`A196218(n+1)+A185044(A128545(n))`
-/

namespace A196685.P12355324434245534002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (n + 1) + A185044 (A128545 n).toNat

end

end A196685.P12355324434245534002

/-! ## A196685.P10546500882172276982

`A196218(n+1)+A185234(A278657(n))`
-/

namespace A196685.P10546500882172276982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (n + 1) + A185234 (A278657 n).toNat

end

end A196685.P10546500882172276982

/-! ## A196685.P4697792760809870257

`A196300(n+1)+∑[A280618(A185274(n))]`
-/

namespace A196685.P4697792760809870257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 (A185274 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196685.P4697792760809870257

/-! ## A196685.P8997322643303167849

`A196300(n+1)-∑[A301979(A014761(n+1))]`
-/

namespace A196685.P8997322643303167849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301979 (A014761 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196300 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196685.P8997322643303167849

/-! ## A196685.P8883184952262355843

`A196218(n+1)+A005843(A185284(2*n+3))`
-/

namespace A196685.P8883184952262355843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196218 (n + 1) + A005843 (A185284 (2 * n + 3)).toNat

end

end A196685.P8883184952262355843

/-!
# A196686: Number of odd digits of Pi minus number of even digits.

The programs for A196686, there is no canonical definition to state claims against.
-/

/-! ## A196686.P769737904226827499

`∑[-(-1)^A000796(n)]`
-/

namespace A196686.P769737904226827499
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A000796 (n + 1) : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P769737904226827499

/-! ## A196686.P13940026367912341994

`∑[(-1)^A059833(n+1)]`
-/

namespace A196686.P13940026367912341994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A059833 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P13940026367912341994

/-! ## A196686.P9920780958690249243

`∑[2*A030657(n+1)-1]`
-/

namespace A196686.P9920780958690249243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A030657 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P9920780958690249243

/-! ## A196686.P6983204671537504263

`-∑[(-1)^A065253(n+1)]`
-/

namespace A196686.P6983204671537504263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A065253 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196686.P6983204671537504263

/-! ## A196686.P10473210096471208725

`∑[A033999(A054249(n+1)²)]`
-/

namespace A196686.P10473210096471208725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054249 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P10473210096471208725

/-! ## A196686.P8994958304733595838

`∑[A326802(A054249(n+1)²)]`
-/

namespace A196686.P8994958304733595838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326802 (A054249 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P8994958304733595838

/-! ## A196686.P5058716461341972602

`∑[A033999(A054249(n+1)+2)]`
-/

namespace A196686.P5058716461341972602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A054249 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P5058716461341972602

/-! ## A196686.P7063338537121850188

`∑[A262771(and(1, A054249(n+1)))]`
-/

namespace A196686.P7063338537121850188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262771 (Int.land 1 (A054249 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P7063338537121850188

/-! ## A196686.P17793799621377885486

`∑[A086994(n)-xor(1, A086994(n))]`
-/

namespace A196686.P17793799621377885486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086994 (n + 1) - Int.xor 1 (A086994 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P17793799621377885486

/-! ## A196686.P1255162291015750755

`∑[A033999(A065253(n+1)+1)]`
-/

namespace A196686.P1255162291015750755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A065253 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P1255162291015750755

/-! ## A196686.P7154807115208921127

`∑[A014647(Δ[A059582(n)]+1)]`
-/

namespace A196686.P7154807115208921127
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014647 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P7154807115208921127

/-! ## A196686.P3787068861071629260

`∑[A014815(Δ[A059582(n)]+1)]`
-/

namespace A196686.P3787068861071629260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P3787068861071629260

/-! ## A196686.P543531619903166274

`∑[A015043(Δ[A059582(n)]+1)]`
-/

namespace A196686.P543531619903166274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015043 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P543531619903166274

/-! ## A196686.P10299614801692226468

`∑[A015231(Δ[A059582(n)]+1)]`
-/

namespace A196686.P10299614801692226468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015231 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P10299614801692226468

/-! ## A196686.P9761432657754744237

`∑[A015343(Δ[A059582(n)]+1)]`
-/

namespace A196686.P9761432657754744237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P9761432657754744237

/-! ## A196686.P16676425639055262750

`∑[A015607(Δ[A059582(n)]+1)]`
-/

namespace A196686.P16676425639055262750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015607 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P16676425639055262750

/-! ## A196686.P9783253778885726666

`∑[A015643(Δ[A059582(n)]+1)]`
-/

namespace A196686.P9783253778885726666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015643 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P9783253778885726666

/-! ## A196686.P2676309491980408776

`∑[A015747(Δ[A059582(n)]+1)]`
-/

namespace A196686.P2676309491980408776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015747 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P2676309491980408776

/-! ## A196686.P4983213034165872513

`∑[A015987(Δ[A059582(n)]+1)]`
-/

namespace A196686.P4983213034165872513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015987 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P4983213034165872513

/-! ## A196686.P12025604988450402511

`∑[A016303(Δ[A059582(n)]+1)]`
-/

namespace A196686.P12025604988450402511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016303 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A196686.P12025604988450402511

/-!
# A196687: n!*A062868(n).

The programs for A196687, there is no canonical definition to state claims against.
-/

/-! ## A196687.P14670710486898989052

`(n+1)!*A062868(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A196687.P14670710486898989052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A062868 (n + 1)

end

end A196687.P14670710486898989052

/-! ## A196687.P104050422368597871

`A000142(n+1)*A062868(n+1)`
-/

namespace A196687.P104050422368597871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A062868 (n + 1)

end

end A196687.P104050422368597871

/-! ## A196687.P6945963837047451577

`abs(A062868(n+1)*A133942(n+1))`
-/

namespace A196687.P6945963837047451577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A062868 (n + 1) * A133942 (n + 1)|

end

end A196687.P6945963837047451577

/-! ## A196687.P5672210564430864503

`(n+1)!*A263744(A001844(n))`
-/

namespace A196687.P5672210564430864503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A263744 (A001844 n).toNat

end

end A196687.P5672210564430864503

/-! ## A196687.P16843524606498197147

`record[A047920(n)]*A263744(A001844(n))`
-/

namespace A196687.P16843524606498197147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A263744 (A001844 n).toNat

end

end A196687.P16843524606498197147

/-!
# A196688: ((n!)^2-A196687(n))/2.

The programs for A196688, there is no canonical definition to state claims against.
-/

/-! ## A196688.P12320294001069338452

`((n+1)!²-A196687(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A196688.P12320294001069338452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial (n + 1) ^ 2 : ℤ) - A196687 (n + 1) : ℚ) / 2

end

end A196688.P12320294001069338452

/-! ## A196688.P8788862246282542231

`(n+1)!*A179567(n+1)`
-/

namespace A196688.P8788862246282542231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A179567 (n + 1)

end

end A196688.P8788862246282542231

/-! ## A196688.P16548060521293121515

`record[A094587(n)]*A179567(n+1)`
-/

namespace A196688.P16548060521293121515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A179567 (n + 1)

end

end A196688.P16548060521293121515

/-! ## A196688.P18426676718985561700

`record[A233543(n)]*A179567(n+1)`
-/

namespace A196688.P18426676718985561700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A179567 (n + 1)

end

end A196688.P18426676718985561700

/-! ## A196688.P15432684047847252989

`A000142(n+1)*A179567(n+1)`
-/

namespace A196688.P15432684047847252989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A179567 (n + 1)

end

end A196688.P15432684047847252989

/-!
# A196689: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,3,0,4 for x=0,1,2,3,4.

The programs for A196689, there is no canonical definition to state claims against.
-/

/-! ## A196689.P13865706182751386595

`A196696(∑[4*n]+1)`
-/

namespace A196689.P13865706182751386595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196689.P13865706182751386595

/-! ## A196689.P3475578344730118913

`record[A003982(n)*A196696(n+1)]`
-/

namespace A196689.P3475578344730118913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A196696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196689.P3475578344730118913

/-! ## A196689.P9563903752058441753

`A235145(n)+A196696(A001844(n))`
-/

namespace A196689.P9563903752058441753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 n + A196696 (A001844 n).toNat

end

end A196689.P9563903752058441753

/-! ## A196689.P5227304432410807169

`gcd(A000038(n), A196696(A001844(n)))`
-/

namespace A196689.P5227304432410807169
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A196696 (A001844 n).toNat)

end

end A196689.P5227304432410807169

/-! ## A196689.P2683144329306324523

`lcm(A015175(n), A196696(A001844(n)))`
-/

namespace A196689.P2683144329306324523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015175 n) (A196696 (A001844 n).toNat)

end

end A196689.P2683144329306324523

/-!
# A196690: Number of n X 2 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,0,4 for x=0,1,2,3,4.

The programs for A196690, the canonical program `A196690.P13811064263262115236` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A196690 has offset 1).

The definition of A196690 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 212 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A196690.P13811064263262115236

`2*a(n-1)+3*a(n-2)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=11, a(3)=34, a(4)=101`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A196690

/-- `2*a(n-1)+3*a(n-2)-a(n-4)` -/
def P13811064263262115236.Spec : Prop :=
  ∀ n, P13811064263262115236.a n = A196690 (n + 1)

theorem P13811064263262115236.correct : P13811064263262115236.Spec := by
  intro n
  simp only [A196690, Nat.add_sub_cancel]

end A196690

/-! ## A196690.P952149388826231220

`A196696(∑[n+1]+2)`
-/

namespace A196690.P952149388826231220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196690.P952149388826231220

namespace A196690

/-- `A196696(∑[n+1]+2)` -/
def P952149388826231220.Spec : Prop :=
  ∀ n, P952149388826231220.a n = A196690 (n + 1)

end A196690

/-! ## A196690.P10925101573287636276

`A196729(∑[n+1]+2)`
-/

namespace A196690.P10925101573287636276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A196690.P10925101573287636276

namespace A196690

/-- `A196729(∑[n+1]+2)` -/
def P10925101573287636276.Spec : Prop :=
  ∀ n, P10925101573287636276.a n = A196690 (n + 1)

end A196690

/-! ## A196690.P14660237700440707843

`A196696(C(n+2, 2)+2)+A000007(n+1)`
-/

namespace A196690.P14660237700440707843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (Nat.choose (n + 2) 2 + 2) + A000007 (n + 1)

end

end A196690.P14660237700440707843

namespace A196690

/-- `A196696(C(n+2, 2)+2)+A000007(n+1)` -/
def P14660237700440707843.Spec : Prop :=
  ∀ n, P14660237700440707843.a n = A196690 (n + 1)

end A196690

/-! ## A196690.P14410096157972170358

`A196696(C(n+2, 2)+2)%A213413(n+1)`
-/

namespace A196690.P14410096157972170358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196696 (Nat.choose (n + 2) 2 + 2)) (A213413 (n + 1))

end

end A196690.P14410096157972170358

namespace A196690

/-- `A196696(C(n+2, 2)+2)%A213413(n+1)` -/
def P14410096157972170358.Spec : Prop :=
  ∀ n, P14410096157972170358.a n = A196690 (n + 1)

end A196690

/-!
# A196691: Number of nX3 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,0,4 for x=0,1,2,3,4.

The programs for A196691, there is no canonical definition to state claims against.
-/

/-! ## A196691.P11949848108574357666

`A196696(∑[n+2]+4)`
-/

namespace A196691.P11949848108574357666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196691.P11949848108574357666

/-! ## A196691.P12147933749290522422

`A196729(∑[n+2]+4)`
-/

namespace A196691.P12147933749290522422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A196691.P12147933749290522422

/-! ## A196691.P3943702775067678554

`A196696(A167614(n+1))+A025469(n)`
-/

namespace A196691.P3943702775067678554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A167614 (n + 1)).toNat + A025469 n

end

end A196691.P3943702775067678554

/-! ## A196691.P1269080520020227248

`lcm(A033999(n), A196696(A167614(n+1)))`
-/

namespace A196691.P1269080520020227248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A196696 (A167614 (n + 1)).toNat)

end

end A196691.P1269080520020227248

/-! ## A196691.P9765860778875386816

`lcm(A158388(n), A196729(A167614(n+1)))`
-/

namespace A196691.P9765860778875386816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A196729 (A167614 (n + 1)).toNat)

end

end A196691.P9765860778875386816

/-!
# A196692: Number of nX4 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,0,4 for x=0,1,2,3,4.

The programs for A196692, there is no canonical definition to state claims against.
-/

/-! ## A196692.P9030690816252296511

`A196696(A374004(n+1))`
-/

namespace A196692.P9030690816252296511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A374004 (n + 1)).toNat

end

end A196692.P9030690816252296511

/-! ## A196692.P17959194866821439065

`A196696(A141214(n)+7)`
-/

namespace A196692.P17959194866821439065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A141214 n + 7).toNat

end

end A196692.P17959194866821439065

/-! ## A196692.P108218654194350914

`A196729(A141214(n)+7)`
-/

namespace A196692.P108218654194350914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A141214 n + 7).toNat

end

end A196692.P108218654194350914

/-! ## A196692.P17704917120474285997

`A196696(A052905(n)+9)`
-/

namespace A196692.P17704917120474285997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A052905 n + 9).toNat

end

end A196692.P17704917120474285997

/-! ## A196692.P15509426637103738745

`A196729(A052905(n)+9)`
-/

namespace A196692.P15509426637103738745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A052905 n + 9).toNat

end

end A196692.P15509426637103738745

/-!
# A196693: Number of n X 5 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,0,4 for x=0,1,2,3,4.

The programs for A196693, there is no canonical definition to state claims against.
-/

/-! ## A196693.P7399310675102470847

`A196696(A374005(n+1))`
-/

namespace A196693.P7399310675102470847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A374005 (n + 1)).toNat

end

end A196693.P7399310675102470847

/-! ## A196693.P15417904835844566787

`A196696(A155212(n)+13)`
-/

namespace A196693.P15417904835844566787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A155212 n + 13).toNat

end

end A196693.P15417904835844566787

/-! ## A196693.P3072456507969050120

`A196696(eq[6, A131818(n+1)])`
-/

namespace A196693.P3072456507969050120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196693.P3072456507969050120

/-! ## A196693.P8441641674914904956

`A196696(Δ[A264443(n)])`
-/

namespace A196693.P8441641674914904956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (f1 (n + 1) - f1 n).toNat

end

end A196693.P8441641674914904956

/-! ## A196693.P3798959499976141904

`A196696(A046691(n+3))`
-/

namespace A196693.P3798959499976141904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A046691 (n + 3)).toNat

end

end A196693.P3798959499976141904

/-!
# A196694: Number of nX6 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,0,4 for x=0,1,2,3,4.

The programs for A196694, there is no canonical definition to state claims against.
-/

/-! ## A196694.P5473229535442049062

`A196696(A374007(n+1))`
-/

namespace A196694.P5473229535442049062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A374007 (n + 1)).toNat

end

end A196694.P5473229535442049062

/-! ## A196694.P9056304506502097669

`A196696(A055999(n+2)+12)`
-/

namespace A196694.P9056304506502097669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A055999 (n + 2) + 12).toNat

end

end A196694.P9056304506502097669

/-! ## A196694.P3081778199032736075

`A196696(eq[7, A131818(n+1)])`
-/

namespace A196694.P3081778199032736075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196694.P3081778199032736075

/-! ## A196694.P14965834475452893750

`A196696(Δ[A023545(n+1)]+10)`
-/

namespace A196694.P14965834475452893750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (f1 (n + 1) - f1 n + 10).toNat

end

end A196694.P14965834475452893750

/-! ## A196694.P13267010483081535719

`A196696(A056119(n)+16)`
-/

namespace A196694.P13267010483081535719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A056119 n + 16).toNat

end

end A196694.P13267010483081535719

/-!
# A196695: Number of nX7 0..4 arrays with each element x equal to the number its horizontal and vertical neighbors equal to 2,1,3,0,4 for x=0,1,2,3,4.

The programs for A196695, there is no canonical definition to state claims against.
-/

/-! ## A196695.P694278277678932219

`A196696(A374008(n+1))`
-/

namespace A196695.P694278277678932219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A374008 (n + 1)).toNat

end

end A196695.P694278277678932219

/-! ## A196695.P5565714536563434142

`A196696(A000217(n+6)+7)`
-/

namespace A196695.P5565714536563434142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A000217 (n + 6) + 7).toNat

end

end A196695.P5565714536563434142

/-! ## A196695.P11076199692880257142

`A196696(eq[8, A131818(n+1)])`
-/

namespace A196695.P11076199692880257142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196695.P11076199692880257142

/-! ## A196695.P127013164456537236

`A196696(A055999(n+4))`
-/

namespace A196695.P127013164456537236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (A055999 (n + 4)).toNat

end

end A196695.P127013164456537236

/-! ## A196695.P13303208966211515833

`A196696(eq[4, A219347(n)])`
-/

namespace A196695.P13303208966211515833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196696 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A196695.P13303208966211515833

/-!
# A196696: T(n,k)=Number of nXk 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 2,1,3,0,4 for x=0,1,2,3,4.

The programs for A196696, there is no canonical definition to state claims against.
-/

/-! ## A196696.P17693390473896952547

`A000027(A196729(n+1))`
-/

namespace A196696.P17693390473896952547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A196729 (n + 1)).toNat

end

end A196696.P17693390473896952547

/-! ## A196696.P9520296357203871871

`A196729(∑[A010894(n)!])`
-/

namespace A196696.P9520296357203871871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A196696.P9520296357203871871

/-! ## A196696.P16784259773836577494

`A196729(A339334(∑[n+1]))`
-/

namespace A196696.P16784259773836577494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (A339334 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A196696.P16784259773836577494

/-! ## A196696.P12475121406521497815

`A196729(n+1)^A010894(n)!`
-/

namespace A196696.P12475121406521497815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196729 (n + 1) ^ Nat.factorial (A010894 (n + 21)).toNat

end

end A196696.P12475121406521497815

/-! ## A196696.P13566820959802900244

`A196729(n+1)%A204538(n+1)`
-/

namespace A196696.P13566820959802900244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196729 (n + 1)) (A204538 (n + 1))

end

end A196696.P13566820959802900244

/-!
# A196699: Number of n X n 0..4 arrays with each element x equal to the number of its horizontal and vertical neighbors equal to 3,1,0,4,2 for x=0,1,2,3,4.

The programs for A196699, there is no canonical definition to state claims against.
-/

/-! ## A196699.P17870801746041418581

`A196707(∑[4*n]+1)`
-/

namespace A196699.P17870801746041418581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A196699.P17870801746041418581

/-! ## A196699.P16414862383072702094

`A196707(n²+(n+1)²)+n-∏{digits}[n, #]`
-/

namespace A196699.P16414862383072702094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (n ^ 2 + (n + 1) ^ 2) + ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ))

end

end A196699.P16414862383072702094

/-! ## A196699.P994129856198069133

`∑{digits}[n, A196707(A001844(#))]`
-/

namespace A196699.P994129856198069133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A196707 (A001844 x).toNat).sum

end

end A196699.P994129856198069133

/-! ## A196699.P4431402081882697408

`record[A196707(A272267(n+1))]`
-/

namespace A196699.P4431402081882697408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196707 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A196699.P4431402081882697408

