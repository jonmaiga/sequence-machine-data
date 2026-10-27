import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A332402: Triangle read by rows: T(n,k) is the number of simple graphs on n unlabeled nodes with independent domination number k.

The programs for A332402, there is no canonical definition to state claims against.
-/

/-! ## A332402.P7257576970509688898

`A263284(n+1)-A025437(A184955(n))`
-/

namespace A332402.P7257576970509688898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263284 (n + 1) - A025437 (A184955 n).toNat

end

end A332402.P7257576970509688898

/-! ## A332402.P9683343294799684731

`A332404(n+1)-A025437(A184955(n))`
-/

namespace A332402.P9683343294799684731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332404 (n + 1) - A025437 (A184955 n).toNat

end

end A332402.P9683343294799684731

/-! ## A332402.P10183598883624554591

`A263284(n+1)-A324088(A008302(n+1))`
-/

namespace A332402.P10183598883624554591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263284 (n + 1) - A324088 (A008302 (n + 1)).toNat

end

end A332402.P10183598883624554591

/-! ## A332402.P12775470733471753538

`A332404(n+1)-A324088(A008302(n+1))`
-/

namespace A332402.P12775470733471753538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332404 (n + 1) - A324088 (A008302 (n + 1)).toNat

end

end A332402.P12775470733471753538

/-!
# A332403: Triangle read by rows: T(n,k) is the number of simple graphs on n unlabeled nodes with upper domination number k.

The programs for A332403, there is no canonical definition to state claims against.
-/

/-! ## A332403.P14721850196662378917

`or(A268643(A308292(n)), A332405(n+1))`
-/

namespace A332403.P14721850196662378917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268643 (A308292 n).toNat) (A332405 (n + 1))

end

end A332403.P14721850196662378917

/-! ## A332403.P16524731194465974306

`A332405(n+1)+A205568(A008406(n+1))`
-/

namespace A332403.P16524731194465974306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332405 (n + 1) + A205568 (A008406 (n + 1)).toNat

end

end A332403.P16524731194465974306

/-! ## A332403.P14881084322348970844

`A332405(n+1)+A055641(A282862(n+1))`
-/

namespace A332403.P14881084322348970844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332405 (n + 1) + A055641 (A282862 (n + 1)).toNat

end

end A332403.P14881084322348970844

/-! ## A332403.P14025501501542539236

`A332405(n+1)+A151795(A332385(n+1))`
-/

namespace A332403.P14025501501542539236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332405 (n + 1) + A151795 (A332385 (n + 1)).toNat

end

end A332403.P14025501501542539236

/-! ## A332403.P11065723009162288388

`A332405(A153679(n+1))`
-/

namespace A332403.P11065723009162288388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332405 (A153679 (n + 1)).toNat

end

end A332403.P11065723009162288388

/-!
# A332404: Triangle read by rows: T(n,k) is the number of simple graphs on n unlabeled nodes with irredundance number k.

The programs for A332404, there is no canonical definition to state claims against.
-/

/-! ## A332404.P9912520470323637830

`A263284(n+1)+A102683(A295680(n))`
-/

namespace A332404.P9912520470323637830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263284 (n + 1) + A102683 (A295680 n).toNat

end

end A332404.P9912520470323637830

/-! ## A332404.P17729547720029292459

`or(A217653(A107652(n)!), A263284(n+1))`
-/

namespace A332404.P17729547720029292459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A217653 (Nat.factorial (A107652 n).toNat)) (A263284 (n + 1))

end

end A332404.P17729547720029292459

/-! ## A332404.P8179919275665588047

`A285007(A035607(n+1))+A263284(n+1)`
-/

namespace A332404.P8179919275665588047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A035607 (n + 1)).toNat + A263284 (n + 1)

end

end A332404.P8179919275665588047

/-!
# A332405: Triangle read by rows: T(n,k) is the number of simple graphs on n unlabeled nodes with upper irredundance number k.

The programs for A332405, there is no canonical definition to state claims against.
-/

/-! ## A332405.P6628597419429901994

`xor(A025469(A287024(n+4)), A332403(n+1))`
-/

namespace A332405.P6628597419429901994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025469 (A287024 (n + 4)).toNat) (A332403 (n + 1))

end

end A332405.P6628597419429901994

/-! ## A332405.P17655149265145495232

`A332403(n+1)+A178798(A298133(n+1))`
-/

namespace A332405.P17655149265145495232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332403 (n + 1) + A178798 (A298133 (n + 1)).toNat

end

end A332405.P17655149265145495232

/-! ## A332405.P18134530505155702528

`A332403(n+1)-A205568(A008406(n+1))`
-/

namespace A332405.P18134530505155702528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332403 (n + 1) - A205568 (A008406 (n + 1)).toNat

end

end A332405.P18134530505155702528

/-! ## A332405.P11025404044070399168

`A332403(n+1)-A055641(A282862(n+1))`
-/

namespace A332405.P11025404044070399168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332403 (n + 1) - A055641 (A282862 (n + 1)).toNat

end

end A332405.P11025404044070399168

/-!
# A332406: Number of simple graphs on n unlabeled nodes with total domination number 2.

The programs for A332406, there is no canonical definition to state claims against.
-/

/-! ## A332406.P745389082512288233

`∑[A002494(n+1)]-A241706(n+1)`
-/

namespace A332406.P745389082512288233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241706 (n + 1)

end

end A332406.P745389082512288233

/-! ## A332406.P825021734087024321

`A000088(n+1)-(A241706(n+1)+1)`
-/

namespace A332406.P825021734087024321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 (n + 1) - (A241706 (n + 1) + 1)

end

end A332406.P825021734087024321

/-! ## A332406.P11425674261680335756

`record[A332400(A233583(n+1))-A000007(n)]`
-/

namespace A332406.P11425674261680335756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332400 (A233583 (n + 1)).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332406.P11425674261680335756

/-!
# A332409: a(n) = n!! mod Fibonacci(n).

The programs for A332409, the canonical program `A332409.P7874765349355173867` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332409 has offset 1).

The definition of A332409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332409.P7874765349355173867

`A006882(n+1)%∑[A212804(n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A332409

/-- `A006882(n+1)%∑[A212804(n)]` -/
def P7874765349355173867.Spec : Prop :=
  ∀ n, P7874765349355173867.a n = A332409 (n + 1)

theorem P7874765349355173867.correct : P7874765349355173867.Spec := by
  intro n
  simp only [A332409, Nat.add_sub_cancel]

end A332409

/-! ## A332409.P13419814174449463658

`Δ[A129981(n)]%A000045(n+1)`
-/

namespace A332409.P13419814174449463658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000045 (n + 1))

end

end A332409.P13419814174449463658

namespace A332409

/-- `Δ[A129981(n)]%A000045(n+1)` -/
def P13419814174449463658.Spec : Prop :=
  ∀ n, P13419814174449463658.a n = A332409 (n + 1)

end A332409

/-! ## A332409.P6418844852569815904

`A248809(∑[n])%A000045(n+1)`
-/

namespace A332409.P6418844852569815904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248809 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000045 (n + 1))

end

end A332409.P6418844852569815904

namespace A332409

/-- `A248809(∑[n])%A000045(n+1)` -/
def P6418844852569815904.Spec : Prop :=
  ∀ n, P6418844852569815904.a n = A332409 (n + 1)

end A332409

/-! ## A332409.P15001037974085548294

`A230698(∑[n+1])%A000045(n+1)`
-/

namespace A332409.P15001037974085548294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230698 (∑ j ∈ Finset.range (n + 1), f1 j)) (A000045 (n + 1))

end

end A332409.P15001037974085548294

namespace A332409

/-- `A230698(∑[n+1])%A000045(n+1)` -/
def P15001037974085548294.Spec : Prop :=
  ∀ n, P15001037974085548294.a n = A332409 (n + 1)

end A332409

/-! ## A332409.P10535309580225806915

`record[A230698(A001971(n))]%A000045(n+1)`
-/

namespace A332409.P10535309580225806915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230698 (A001971 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A000045 (n + 1))

end

end A332409.P10535309580225806915

namespace A332409

/-- `record[A230698(A001971(n))]%A000045(n+1)` -/
def P10535309580225806915.Spec : Prop :=
  ∀ n, P10535309580225806915.a n = A332409 (n + 1)

end A332409

/-!
# A332410: a(n) = 2*a(n-1) - a(n-2) + a(n-5) - 2*a(n-6) + a(n-7) with a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=11, a(5)=17, a(6)=24.

The programs for A332410, the canonical program `A332410.P14786233925172289730` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332410 has offset 0).

The definition of A332410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` (program `A332410.P14786233925172289730`, by `A332410.P14786233925172289730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332410.P14786233925172289730

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=11, a(5)=17, a(6)=24`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332410

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P14786233925172289730.Spec : Prop :=
  ∀ n, P14786233925172289730.a n = A332410 n

theorem P14786233925172289730.correct : P14786233925172289730.Spec := by
  intro n
  simp only [A332410]

end A332410

/-! ## A332410.P8319474264434889668

`∑[comp[6*n-2]]`
-/

namespace A332410.P8319474264434889668
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332410.P8319474264434889668

namespace A332410

/-- `∑[comp[6*n-2]]` -/
def P8319474264434889668.Spec : Prop :=
  ∀ n, (P8319474264434889668.a n : ℤ) = A332410 n

end A332410

/-! ## A332410.P9331250615056588822

`floor(∑[a(n-1)+6]/5)` with `a(0)=0, a(1)=5`
-/

namespace A332410.P9331250615056588822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A332410.P9331250615056588822

namespace A332410

/-- `floor(∑[a(n-1)+6]/5)` -/
def P9331250615056588822.Spec : Prop :=
  ∀ n, P9331250615056588822.a n = A332410 n

end A332410

/-! ## A332410.P3831614423410371187

`comp[6*n-2]+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A332410.P3831614423410371187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + a (n - 1)

end

end A332410.P3831614423410371187

namespace A332410

/-- `comp[6*n-2]+a(n-1)` -/
def P3831614423410371187.Spec : Prop :=
  ∀ n, (P3831614423410371187.a n : ℤ) = A332410 n

end A332410

/-! ## A332410.P9187350246507769467

`floor((n+1)/5+a(n-1)+n)` with `a(0)=0`
-/

namespace A332410.P9187350246507769467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) / 5 + (a (n - 1) + (n : ℤ) : ℚ)⌋

end

end A332410.P9187350246507769467

namespace A332410

/-- `floor((n+1)/5+a(n-1)+n)` -/
def P9187350246507769467.Spec : Prop :=
  ∀ n, P9187350246507769467.a n = A332410 n

end A332410

/-! ## A332410.P8727518219608568568

`floor(A045944(n)/5)`
-/

namespace A332410.P8727518219608568568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045944 n : ℚ) / 5⌋

end

end A332410.P8727518219608568568

namespace A332410

/-- `floor(A045944(n)/5)` -/
def P8727518219608568568.Spec : Prop :=
  ∀ n, P8727518219608568568.a n = A332410 n

end A332410

/-! ## A332410.P4416483216307856717

`floor(A056109(n)/5)`
-/

namespace A332410.P4416483216307856717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056109 n : ℚ) / 5⌋

end

end A332410.P4416483216307856717

namespace A332410

/-- `floor(A056109(n)/5)` -/
def P4416483216307856717.Spec : Prop :=
  ∀ n, P4416483216307856717.a n = A332410 n

end A332410

/-! ## A332410.P11199682429609094987

`round(A270710(n)/5)`
-/

namespace A332410.P11199682429609094987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A270710 n : ℚ) / 5)

end

end A332410.P11199682429609094987

namespace A332410

/-- `round(A270710(n)/5)` -/
def P11199682429609094987.Spec : Prop :=
  ∀ n, P11199682429609094987.a n = A332410 n

end A332410

/-! ## A332410.P11678072281164119304

`A130520(n+1)+∑[n]`
-/

namespace A332410.P11678072281164119304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A332410.P11678072281164119304

namespace A332410

/-- `A130520(n+1)+∑[n]` -/
def P11678072281164119304.Spec : Prop :=
  ∀ n, P11678072281164119304.a n = A332410 n

end A332410

/-! ## A332410.P5444513635853452456

`a(n-1)+A047263(n)+1` with `a(0)=0`
-/

namespace A332410.P5444513635853452456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A047263 n + 1)

end

end A332410.P5444513635853452456

namespace A332410

/-- `a(n-1)+A047263(n)+1` -/
def P5444513635853452456.Spec : Prop :=
  ∀ n, P5444513635853452456.a n = A332410 n

end A332410

/-! ## A332410.P1251718758081394650

`∑[comp[A168329(n+2)+1]]%A001847(n)`
-/

namespace A332410.P1251718758081394650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168329 (n + 2) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A001847 n)

end

end A332410.P1251718758081394650

namespace A332410

/-- `∑[comp[A168329(n+2)+1]]%A001847(n)` -/
def P1251718758081394650.Spec : Prop :=
  ∀ n, P1251718758081394650.a n = A332410 n

end A332410

/-! ## A332410.P17153129817229749484

`∑[A047263(n+1)]-A047263(n+1)+n`
-/

namespace A332410.P17153129817229749484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047263 (n + 1) + (n : ℤ)

end

end A332410.P17153129817229749484

namespace A332410

/-- `∑[A047263(n+1)]-A047263(n+1)+n` -/
def P17153129817229749484.Spec : Prop :=
  ∀ n, P17153129817229749484.a n = A332410 n

end A332410

/-! ## A332410.P11446054526848114311

`A002620(n+1)+A130520(n+1)+A002620(n)`
-/

namespace A332410.P11446054526848114311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (n + 1) + (A130520 (n + 1) + A002620 n)

end

end A332410.P11446054526848114311

namespace A332410

/-- `A002620(n+1)+A130520(n+1)+A002620(n)` -/
def P11446054526848114311.Spec : Prop :=
  ∀ n, P11446054526848114311.a n = A332410 n

end A332410

/-! ## A332410.P4182598102656547526

`A033437(n+1)+A130520(n+1)+A130520(n)`
-/

namespace A332410.P4182598102656547526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 (n + 1) + (A130520 (n + 1) + A130520 n)

end

end A332410.P4182598102656547526

namespace A332410

/-- `A033437(n+1)+A130520(n+1)+A130520(n)` -/
def P4182598102656547526.Spec : Prop :=
  ∀ n, P4182598102656547526.a n = A332410 n

end A332410

/-! ## A332410.P2940355468596207443

`A011858(n+1)+A227353(n+1)+A130520(n)`
-/

namespace A332410.P2940355468596207443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 (n + 1) + (A227353 (n + 1) + A130520 n)

end

end A332410.P2940355468596207443

namespace A332410

/-- `A011858(n+1)+A227353(n+1)+A130520(n)` -/
def P2940355468596207443.Spec : Prop :=
  ∀ n, P2940355468596207443.a n = A332410 n

end A332410

/-! ## A332410.P17047173351212664263

`(n+1)²-A033437(n+2)`
-/

namespace A332410.P17047173351212664263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A033437 (n + 2)

end

end A332410.P17047173351212664263

namespace A332410

/-- `(n+1)²-A033437(n+2)` -/
def P17047173351212664263.Spec : Prop :=
  ∀ n, P17047173351212664263.a n = A332410 n

end A332410

/-! ## A332410.P6375509531013035971

`(n+1)²-∑[A090223(n+2)]`
-/

namespace A332410.P6375509531013035971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332410.P6375509531013035971

namespace A332410

/-- `(n+1)²-∑[A090223(n+2)]` -/
def P6375509531013035971.Spec : Prop :=
  ∀ n, P6375509531013035971.a n = A332410 n

end A332410

/-! ## A332410.P18004684496073302537

`A033437(n)+A008738(n+1)`
-/

namespace A332410.P18004684496073302537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 n + A008738 (n + 1)

end

end A332410.P18004684496073302537

namespace A332410

/-- `A033437(n)+A008738(n+1)` -/
def P18004684496073302537.Spec : Prop :=
  ∀ n, P18004684496073302537.a n = A332410 n

end A332410

/-! ## A332410.P16165780496918659190

`A008738(n+1)+A011858(n+1)+A011858(n)`
-/

namespace A332410.P16165780496918659190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 (n + 1) + (A011858 (n + 1) + A011858 n)

end

end A332410.P16165780496918659190

namespace A332410

/-- `A008738(n+1)+A011858(n+1)+A011858(n)` -/
def P16165780496918659190.Spec : Prop :=
  ∀ n, P16165780496918659190.a n = A332410 n

end A332410

/-! ## A332410.P7300478195206279698

`A033437(n+1)+A033437(n)-A118015(n+1)`
-/

namespace A332410.P7300478195206279698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033437 (n + 1) + (A033437 n - A118015 (n + 1))

end

end A332410.P7300478195206279698

namespace A332410

/-- `A033437(n+1)+A033437(n)-A118015(n+1)` -/
def P7300478195206279698.Spec : Prop :=
  ∀ n, P7300478195206279698.a n = A332410 n

end A332410

/-!
# A332411: If n = Product (p_j^k_j) then a(n) = Sum (n^(pi(p_j) - 1)), where pi = A000720.

The programs for A332411, the canonical program `A332411.P16015717421830138400` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332411 has offset 1).

The definition of A332411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 196 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332411.P16015717421830138400

`∑{p}[n+1, (n+1)^A033270(#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A332411

/-- `∑{p}[n+1, (n+1)^A033270(#)]` -/
def P16015717421830138400.Spec : Prop :=
  ∀ n, P16015717421830138400.a n = (A332411 (n + 1) : ℚ)

end A332411

/-! ## A332411.P8016715264310409884

`∑{p}[n+1, (n+1)^A000720(#-1)]`
-/

namespace A332411.P8016715264310409884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) ^ (A000720 (p - 1) : ℤ)

end

end A332411.P8016715264310409884

namespace A332411

/-- `∑{p}[n+1, (n+1)^A000720(#-1)]` -/
def P8016715264310409884.Spec : Prop :=
  ∀ n, P8016715264310409884.a n = (A332411 (n + 1) : ℚ)

end A332411

/-! ## A332411.P13653947970836157493

`∑{p}[n+1, (n+1)^A004788(#-1)]`
-/

namespace A332411.P13653947970836157493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) ^ (A004788 (p - 1) : ℤ)

end

end A332411.P13653947970836157493

namespace A332411

/-- `∑{p}[n+1, (n+1)^A004788(#-1)]` -/
def P13653947970836157493.Spec : Prop :=
  ∀ n, P13653947970836157493.a n = (A332411 (n + 1) : ℚ)

end A332411

/-! ## A332411.P5241299478340306599

`∑{p}[n+1, (n+1)^A047983(A014963(#))]`
-/

namespace A332411.P5241299478340306599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) ^ (A047983 (A014963 p).toNat : ℤ)

end

end A332411.P5241299478340306599

namespace A332411

/-- `∑{p}[n+1, (n+1)^A047983(A014963(#))]` -/
def P5241299478340306599.Spec : Prop :=
  ∀ n, P5241299478340306599.a n = (A332411 (n + 1) : ℚ)

end A332411

/-! ## A332411.P7901273351020079350

`A026741(A090883(n+1)/∏{e}[n+1, #])`
-/

namespace A332411.P7901273351020079350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((A090883 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ))).toNat

end

end A332411.P7901273351020079350

namespace A332411

/-- `A026741(A090883(n+1)/∏{e}[n+1, #])` -/
def P7901273351020079350.Spec : Prop :=
  ∀ n, P7901273351020079350.a n = A332411 (n + 1)

end A332411

/-!
# A332412: a(n) is the real part of f(n) = Sum_{d_k > 0} 3^k * i^(d_k-1) where Sum_{k >= 0} 5^k * d_k is the base 5 representation of n and i denotes the imaginary unit. Sequence A332413 gives imaginary parts.

The programs for A332412, there is no canonical definition to state claims against.
-/

/-! ## A332412.P6175468608240419069

`A332413(A256295(n))`
-/

namespace A332412.P6175468608240419069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332413 (A256295 n).toNat

end

end A332412.P6175468608240419069

/-! ## A332412.P14218971468747672951

`-A332413(A055115(n))`
-/

namespace A332412.P14218971468747672951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332413 (A055115 n).toNat

end

end A332412.P14218971468747672951

/-! ## A332412.P5518268787925338880

`A349198(2*A037468(n))`
-/

namespace A332412.P5518268787925338880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 (2 * A037468 n).toNat

end

end A332412.P5518268787925338880

/-! ## A332412.P13571937113000576181

`A349198(record[2*A316823(n)])`
-/

namespace A332412.P13571937113000576181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332412.P13571937113000576181

/-! ## A332412.P4101575556580962283

`A349198(record[A316823(n)+n])`
-/

namespace A332412.P4101575556580962283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A332412.P4101575556580962283

/-! ## A332412.P13797792601759825355

`A349198(A005408(record[A316823(n)]))`
-/

namespace A332412.P13797792601759825355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 (A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A332412.P13797792601759825355

/-! ## A332412.P13570253727707547403

`A349198(A005843(record[A316823(n)]))`
-/

namespace A332412.P13570253727707547403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 (A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A332412.P13570253727707547403

/-! ## A332412.P2263535556013112909

`A349198(A037468(n)+A037468(n))`
-/

namespace A332412.P2263535556013112909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349198 (A037468 n + A037468 n).toNat

end

end A332412.P2263535556013112909

/-!
# A332413: a(n) is the imaginary part of f(n) = Sum_{d_k > 0} 3^k * i^(d_k-1) where Sum_{k >= 0} 5^k * d_k is the base 5 representation of n and i denotes the imaginary unit. Sequence A332412 gives real parts.

The programs for A332413, there is no canonical definition to state claims against.
-/

/-! ## A332413.P13563728173011462316

`-A332412(A055115(n))`
-/

namespace A332413.P13563728173011462316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A332412 (A055115 n).toNat

end

end A332413.P13563728173011462316

/-! ## A332413.P13910297877490707062

`A057428(n)*A332412(A055115(n))`
-/

namespace A332413.P13910297877490707062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A332412 (A055115 n).toNat

end

end A332413.P13910297877490707062

/-! ## A332413.P2336898017343104810

`A332412(A055115(n))/A033999(or(1, n))`
-/

namespace A332413.P2336898017343104810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332412 (A055115 n).toNat : ℚ) / (A033999 (Nat.lor 1 n) : ℚ)

end

end A332413.P2336898017343104810

/-! ## A332413.P14099013805198323816

`A008683(4*(n+1))-A332412(A055115(n))`
-/

namespace A332413.P14099013805198323816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) - A332412 (A055115 n).toNat

end

end A332413.P14099013805198323816

/-! ## A332413.P6077172295502023992

`A001222(gcd(n, n+1))-A332412(A055115(n))`
-/

namespace A332413.P6077172295502023992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.gcd n (n + 1)) - A332412 (A055115 n).toNat

end

end A332413.P6077172295502023992

/-! ## A332413.P14299718048078993635

`A332412(A055115(n))/A033999(2*n+1)`
-/

namespace A332413.P14299718048078993635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332412 (A055115 n).toNat : ℚ) / (A033999 (2 * n + 1) : ℚ)

end

end A332413.P14299718048078993635

/-! ## A332413.P9714822732963001135

`A257994(A130321(n))-A332412(A055115(n))`
-/

namespace A332413.P9714822732963001135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A130321 n).toNat - A332412 (A055115 n).toNat

end

end A332413.P9714822732963001135

/-! ## A332413.P8278764671979800193

`A257994(A090988(n+1))-A332412(A055115(n))`
-/

namespace A332413.P8278764671979800193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A090988 (n + 1)).toNat - A332412 (A055115 n).toNat

end

end A332413.P8278764671979800193

/-!
# A332415: a(n) is the number of distinct valid solutions taking into account the ambiguity of open and closed absolute value bars for an input of -1 to -2*(n)-1 with absolute value bars between each (|-1|, |-1|-2|-3|, |-1|-2|-3|-4|-5|, etc.).

The programs for A332415, there is no canonical definition to state claims against.
-/

/-! ## A332415.P15581856058315429527

`A269381((2^n+4^n)/2-ceil(sin(n)²))`
-/

namespace A332415.P15581856058315429527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) / 2 - (⌈Real.sin (n : ℝ) ^ 2⌉ : ℚ))).toNat

end

end A332415.P15581856058315429527

/-! ## A332415.P10474211889849372250

`A269381((2^n+4^n)/2+1+n)-1`
-/

namespace A332415.P10474211889849372250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (SequenceMachineLib.roundAway ((2 ^ n + 4 ^ n : ℚ) / 2 + 1 + (n : ℚ))).toNat - 1

end

end A332415.P10474211889849372250

/-! ## A332415.P10740499857686619555

`∑[A277193(A292778(n))]`
-/

namespace A332415.P10740499857686619555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277193 (A292778 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332415.P10740499857686619555

/-!
# A332416: Positive integers r such that B(1,r) = B(2,r - 1) = ... = B(r,1) = 0, where B denotes the function mapping every pair of positive integers (m,n) into 1 if m * 2^(n + 2) + 1 is a prime number dividing F(n), where F(n) denotes the n-th Fermat number (i.e., F(n) = A000215(n)); and into 0 otherwise.

The programs for A332416, there is no canonical definition to state claims against.
-/

/-! ## A332416.P10918916752122146708

`lt[A321742(A320912(n+1)), A351468(n+2)]`
-/

namespace A332416.P10918916752122146708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321742 (A320912 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351468 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332416.P10918916752122146708

/-! ## A332416.P7105297766620632497

`lt[A343104(n+1), A120452(A036839(2*n+1))]`
-/

namespace A332416.P7105297766620632497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120452 (A036839 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332416.P7105297766620632497

/-!
# A332418: The number of vertices on a decagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A332418, there is no canonical definition to state claims against.
-/

/-! ## A332418.P7911484606281145093

`A332419(n+1)+1-A333139(n+1)`
-/

namespace A332418.P7911484606281145093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332419 (n + 1) + (1 - A333139 (n + 1))

end

end A332418.P7911484606281145093

/-!
# A332419: The number of edges on a decagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A332419, there is no canonical definition to state claims against.
-/

/-! ## A332419.P17511499641548745734

`A332418(n+1)+A333139(n+1)-1`
-/

namespace A332419.P17511499641548745734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332418 (n + 1) + (A333139 (n + 1) - 1)

end

end A332419.P17511499641548745734

/-!
# A332420: Number of Maclaurin polynomials p(2m-1,x) of sin(x) having exactly n positive zeros.

The programs for A332420, there is no canonical definition to state claims against.
-/

/-! ## A332420.P10383481310589470838

`A188472(n+1)+A113311(A025052(n+1))`
-/

namespace A332420.P10383481310589470838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188472 (n + 1) + A113311 (A025052 (n + 1)).toNat

end

end A332420.P10383481310589470838

/-! ## A332420.P15184056260026255389

`A157791(A061751(2*n+3))-A005713(n)`
-/

namespace A332420.P15184056260026255389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157791 (A061751 (2 * n + 3)).toNat - A005713 n

end

end A332420.P15184056260026255389

/-! ## A332420.P1378632973888582806

`A091799(2*n+1)+A001221(A056450(n))`
-/

namespace A332420.P1378632973888582806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091799 (2 * n + 1) + A001221 (A056450 n).toNat

end

end A332420.P1378632973888582806

/-!
# A332421: The number of regions inside a nonagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A332421, there is no canonical definition to state claims against.
-/

/-! ## A332421.P338965223961012614

`A332429(n+1)+1-A332428(n+1)`
-/

namespace A332421.P338965223961012614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332429 (n + 1) + (1 - A332428 (n + 1))

end

end A332421.P338965223961012614

/-!
# A332422: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * pi(p_j)), where pi = A000720.

The programs for A332422, the canonical program `A332422.P2549243754206614322` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332422 has offset 1).

The definition of A332422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332422.P15964655579657752647

`∑{p}[n+1, A330417(#)]`
-/

namespace A332422.P15964655579657752647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A330417 p

end

end A332422.P15964655579657752647

namespace A332422

/-- `∑{p}[n+1, A330417(#)]` -/
def P15964655579657752647.Spec : Prop :=
  ∀ n, P15964655579657752647.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P2549243754206614322

`∑{p}[n+1, A181983(A026238(#))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A332422

/-- `∑{p}[n+1, A181983(A026238(#))]` -/
def P2549243754206614322.Spec : Prop :=
  ∀ n, P2549243754206614322.a n = A332422 (n + 1)

theorem P2549243754206614322.correct : P2549243754206614322.Spec := by
  intro n
  simp only [A332422, Nat.add_sub_cancel]

end A332422

/-! ## A332422.P881274527244318683

`∑{p}[n+1, A181983(A056239(#))]`
-/

namespace A332422.P881274527244318683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A181983 (A056239 p).toNat

end

end A332422.P881274527244318683

namespace A332422

/-- `∑{p}[n+1, A181983(A056239(#))]` -/
def P881274527244318683.Spec : Prop :=
  ∀ n, P881274527244318683.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P17533221549479765863

`∑{p}[n+1, A181983(A316524(#))]`
-/

namespace A332422.P17533221549479765863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A181983 (A316524 p).toNat

end

end A332422.P17533221549479765863

namespace A332422

/-- `∑{p}[n+1, A181983(A316524(#))]` -/
def P17533221549479765863.Spec : Prop :=
  ∀ n, P17533221549479765863.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P1547295061759571946

`A366725(n+1)-2*A366784(n+1)`
-/

namespace A332422.P1547295061759571946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366725 (n + 1) - 2 * A366784 (n + 1)

end

end A332422.P1547295061759571946

namespace A332422

/-- `A366725(n+1)-2*A366784(n+1)` -/
def P1547295061759571946.Spec : Prop :=
  ∀ n, P1547295061759571946.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P16680244942325040369

`∑{p}[A007947(n+1), A181983(A000720(#))]`
-/

namespace A332422.P16680244942325040369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A181983 (A000720 p).toNat

end

end A332422.P16680244942325040369

namespace A332422

/-- `∑{p}[A007947(n+1), A181983(A000720(#))]` -/
def P16680244942325040369.Spec : Prop :=
  ∀ n, P16680244942325040369.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P5787962510718325559

`∑{p}[A007947(n+1), A181983(A003963(#))]`
-/

namespace A332422.P5787962510718325559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A181983 (A003963 p).toNat

end

end A332422.P5787962510718325559

namespace A332422

/-- `∑{p}[A007947(n+1), A181983(A003963(#))]` -/
def P5787962510718325559.Spec : Prop :=
  ∀ n, P5787962510718325559.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P13762265269016560988

`A366725(n+1)+A366725(n+1)-A066328(n+1)`
-/

namespace A332422.P13762265269016560988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366725 (n + 1) + (A366725 (n + 1) - A066328 (n + 1))

end

end A332422.P13762265269016560988

namespace A332422

/-- `A366725(n+1)+A366725(n+1)-A066328(n+1)` -/
def P13762265269016560988.Spec : Prop :=
  ∀ n, P13762265269016560988.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P821775483404935041

`∑{p}[A129202(n), A181983(A000720(#))]`
-/

namespace A332422.P821775483404935041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A181983 (A000720 p).toNat

end

end A332422.P821775483404935041

namespace A332422

/-- `∑{p}[A129202(n), A181983(A000720(#))]` -/
def P821775483404935041.Spec : Prop :=
  ∀ n, P821775483404935041.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P3392065285684580160

`∑{p}[A129202(n), A181983(A003963(#))]`
-/

namespace A332422.P3392065285684580160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A181983 (A003963 p).toNat

end

end A332422.P3392065285684580160

namespace A332422

/-- `∑{p}[A129202(n), A181983(A003963(#))]` -/
def P3392065285684580160.Spec : Prop :=
  ∀ n, P3392065285684580160.a n = A332422 (n + 1)

end A332422

/-! ## A332422.P4921739597854723006

`∑{p}[n+1, A329116(A000720(#)²)]`
-/

namespace A332422.P4921739597854723006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A329116 (A000720 p ^ 2).toNat

end

end A332422.P4921739597854723006

namespace A332422

/-- `∑{p}[n+1, A329116(A000720(#)²)]` -/
def P4921739597854723006.Spec : Prop :=
  ∀ n, P4921739597854723006.a n = A332422 (n + 1)

end A332422

/-!
# A332423: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(k_j + 1) * k_j).

The programs for A332423, the canonical program `A332423.P15865407479120139828` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332423 has offset 1).

The definition of A332423 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350386, A350387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332423.P15865407479120139828

`A350387(n+1)-A350386(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A332423

/-- `A350387(n+1)-A350386(n+1)` -/
def P15865407479120139828.Spec : Prop :=
  ∀ n, P15865407479120139828.a n = A332423 (n + 1)

theorem P15865407479120139828.correct : P15865407479120139828.Spec := by
  intro n
  simp only [A332423, Nat.add_sub_cancel]

end A332423

/-! ## A332423.P13375213699994252244

`∑{e}[n+1, -(#*(-1)^#)]`
-/

namespace A332423.P13375213699994252244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (-((Nat.factorization (f1 n) p : ℤ) * (-1) ^ Nat.factorization (f1 n) p))

end

end A332423.P13375213699994252244

namespace A332423

/-- `∑{e}[n+1, -(#*(-1)^#)]` -/
def P13375213699994252244.Spec : Prop :=
  ∀ n, P13375213699994252244.a n = A332423 (n + 1)

end A332423

/-! ## A332423.P11590547009573444183

`2*∑{e}[n+1, #*#%2]-∑{e}[n+1, #]`
-/

namespace A332423.P11590547009573444183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p * (Nat.factorization (f1 n) p % 2)) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

end

end A332423.P11590547009573444183

namespace A332423

/-- `2*∑{e}[n+1, #*#%2]-∑{e}[n+1, #]` -/
def P11590547009573444183.Spec : Prop :=
  ∀ n, P11590547009573444183.a n = A332423 (n + 1)

end A332423

/-! ## A332423.P12630609883203864176

`∑{e}[n+1, -(-1)^#]-a(floor(n/∏{p}[n+1, #]))` with `a(0)=0`
-/

namespace A332423.P12630609883203864176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ∑ p ∈ Nat.primeFactors (f1 n), (-((-1) ^ Nat.factorization (f1 n) p)) - a ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)⌋.toNat

end

end A332423.P12630609883203864176

namespace A332423

/-- `∑{e}[n+1, -(-1)^#]-a(floor(n/∏{p}[n+1, #]))` -/
def P12630609883203864176.Spec : Prop :=
  ∀ n, P12630609883203864176.a n = A332423 (n + 1)

end A332423

/-! ## A332423.P13587504431271992423

`-∑{e}[n+1, A038608(#)]`
-/

namespace A332423.P13587504431271992423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ p ∈ Nat.primeFactors (f1 n), A038608 (Nat.factorization (f1 n) p))

end

end A332423.P13587504431271992423

namespace A332423

/-- `-∑{e}[n+1, A038608(#)]` -/
def P13587504431271992423.Spec : Prop :=
  ∀ n, P13587504431271992423.a n = A332423 (n + 1)

end A332423

/-! ## A332423.P6903871386193217356

`2*A350387(n+1)-A001222(n+1)`
-/

namespace A332423.P6903871386193217356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350387 (n + 1) - A001222 (n + 1)

end

end A332423.P6903871386193217356

namespace A332423

/-- `2*A350387(n+1)-A001222(n+1)` -/
def P6903871386193217356.Spec : Prop :=
  ∀ n, P6903871386193217356.a n = A332423 (n + 1)

theorem P6903871386193217356.correct : P6903871386193217356.Spec := by
  intro n
  simp only [A332423, Nat.add_sub_cancel, A332423.P6903871386193217356.a, A332423.P15865407479120139828.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A350386, A350386.P2488942611361023290.a, A350387, A350387.P325241865782792840.a, A350388, A350388.P14803128031435634268.a, A071974, A071974.P9686884691264808123.a, A003557, A003557.P6364735403900941810.a, A071975, A071975.P11664215044611898026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332423

/-! ## A332423.P10561631899730165255

`A001222(n+1)-2*A350386(n+1)`
-/

namespace A332423.P10561631899730165255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - 2 * A350386 (n + 1)

end

end A332423.P10561631899730165255

namespace A332423

/-- `A001222(n+1)-2*A350386(n+1)` -/
def P10561631899730165255.Spec : Prop :=
  ∀ n, P10561631899730165255.a n = A332423 (n + 1)

theorem P10561631899730165255.correct : P10561631899730165255.Spec := by
  intro n
  simp only [A332423, Nat.add_sub_cancel, A332423.P10561631899730165255.a, A332423.P15865407479120139828.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A350386, A350386.P2488942611361023290.a, A350387, A350387.P325241865782792840.a, A350388, A350388.P14803128031435634268.a, A071974, A071974.P9686884691264808123.a, A003557, A003557.P6364735403900941810.a, A071975, A071975.P11664215044611898026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332423

/-! ## A332423.P2017806513742470655

`A350387(n+1)-A001222(A350388(n+1))`
-/

namespace A332423.P2017806513742470655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350387 (n + 1) - A001222 (A350388 (n + 1)).toNat

end

end A332423.P2017806513742470655

namespace A332423

/-- `A350387(n+1)-A001222(A350388(n+1))` -/
def P2017806513742470655.Spec : Prop :=
  ∀ n, P2017806513742470655.a n = A332423 (n + 1)

end A332423

/-! ## A332423.P16511781414934721552

`A001222(A350389(n+1))-A350386(n+1)`
-/

namespace A332423.P16511781414934721552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A350389 (n + 1)).toNat - A350386 (n + 1)

end

end A332423.P16511781414934721552

namespace A332423

/-- `A001222(A350389(n+1))-A350386(n+1)` -/
def P16511781414934721552.Spec : Prop :=
  ∀ n, P16511781414934721552.a n = A332423 (n + 1)

end A332423

/-! ## A332423.P3767454715638726471

`A001222(n+1)-A001222(A350388(n+1)²)`
-/

namespace A332423.P3767454715638726471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A001222 (A350388 (n + 1) ^ 2).toNat

end

end A332423.P3767454715638726471

namespace A332423

/-- `A001222(n+1)-A001222(A350388(n+1)²)` -/
def P3767454715638726471.Spec : Prop :=
  ∀ n, P3767454715638726471.a n = A332423 (n + 1)

end A332423

/-! ## A332423.P8233341443950311586

`A001222(A350389(n+1)²)-A001222(n+1)`
-/

namespace A332423.P8233341443950311586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A350389 (n + 1) ^ 2).toNat - A001222 (n + 1)

end

end A332423.P8233341443950311586

namespace A332423

/-- `A001222(A350389(n+1)²)-A001222(n+1)` -/
def P8233341443950311586.Spec : Prop :=
  ∀ n, P8233341443950311586.a n = A332423 (n + 1)

end A332423

/-! ## A332423.P10800197357097725120

`A349326(n+1)-A349326(A350388(n+1)²)`
-/

namespace A332423.P10800197357097725120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349326 (n + 1) - A349326 (A350388 (n + 1) ^ 2).toNat

end

end A332423.P10800197357097725120

namespace A332423

/-- `A349326(n+1)-A349326(A350388(n+1)²)` -/
def P10800197357097725120.Spec : Prop :=
  ∀ n, P10800197357097725120.a n = A332423 (n + 1)

end A332423

/-!
# A332424: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * p_j), where pi = A000720.

The programs for A332424, the canonical program `A332424.P12302743230273671513` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332424 has offset 1).

The definition of A332424 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332424.P9688680313205287202

`∑{p}[n+1, A332425(#)]`
-/

namespace A332424.P9688680313205287202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A332425 p

end

end A332424.P9688680313205287202

namespace A332424

/-- `∑{p}[n+1, A332425(#)]` -/
def P9688680313205287202.Spec : Prop :=
  ∀ n, P9688680313205287202.a n = A332424 (n + 1)

end A332424

/-! ## A332424.P14430446340674469174

`A332425(∏{p}[n+1, #])`
-/

namespace A332424.P14430446340674469174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332425 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332424.P14430446340674469174

namespace A332424

/-- `A332425(∏{p}[n+1, #])` -/
def P14430446340674469174.Spec : Prop :=
  ∀ n, P14430446340674469174.a n = A332424 (n + 1)

end A332424

/-! ## A332424.P12302743230273671513

`∑{p}[n+1, #/A332823(#)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A332424

/-- `∑{p}[n+1, #/A332823(#)]` -/
def P12302743230273671513.Spec : Prop :=
  ∀ n, P12302743230273671513.a n = (A332424 (n + 1) : ℚ)

end A332424

/-! ## A332424.P9587127440918245351

`A332425(A007947(n+1))`
-/

namespace A332424.P9587127440918245351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332425 (A007947 (n + 1)).toNat

end

end A332424.P9587127440918245351

namespace A332424

/-- `A332425(A007947(n+1))` -/
def P9587127440918245351.Spec : Prop :=
  ∀ n, P9587127440918245351.a n = A332424 (n + 1)

end A332424

/-! ## A332424.P6728255925845407637

`A344908(n+1)-A344931(n+1)`
-/

namespace A332424.P6728255925845407637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344908 (n + 1) - A344931 (n + 1)

end

end A332424.P6728255925845407637

namespace A332424

/-- `A344908(n+1)-A344931(n+1)` -/
def P6728255925845407637.Spec : Prop :=
  ∀ n, P6728255925845407637.a n = A332424 (n + 1)

end A332424

/-! ## A332424.P2958854786296773229

`A332425((n+1)/A003557(n+1))`
-/

namespace A332424.P2958854786296773229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332425 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A332424.P2958854786296773229

namespace A332424

/-- `A332425((n+1)/A003557(n+1))` -/
def P2958854786296773229.Spec : Prop :=
  ∀ n, P2958854786296773229.a n = A332424 (n + 1)

end A332424

/-! ## A332424.P9351730053500150651

`2*A344908(n+1)-A008472(n+1)`
-/

namespace A332424.P9351730053500150651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344908 (n + 1) - A008472 (n + 1)

end

end A332424.P9351730053500150651

namespace A332424

/-- `2*A344908(n+1)-A008472(n+1)` -/
def P9351730053500150651.Spec : Prop :=
  ∀ n, P9351730053500150651.a n = A332424 (n + 1)

end A332424

/-! ## A332424.P1200563045493290978

`A008472(n+1)-2*A344931(n+1)`
-/

namespace A332424.P1200563045493290978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) - 2 * A344931 (n + 1)

end

end A332424.P1200563045493290978

namespace A332424

/-- `A008472(n+1)-2*A344931(n+1)` -/
def P1200563045493290978.Spec : Prop :=
  ∀ n, P1200563045493290978.a n = A332424 (n + 1)

end A332424

/-! ## A332424.P6126843833398640040

`A332425(n+1)-A332425(A003557(n+1))`
-/

namespace A332424.P6126843833398640040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332425 (n + 1) - A332425 (A003557 (n + 1)).toNat

end

end A332424.P6126843833398640040

namespace A332424

/-- `A332425(n+1)-A332425(A003557(n+1))` -/
def P6126843833398640040.Spec : Prop :=
  ∀ n, P6126843833398640040.a n = A332424 (n + 1)

end A332424

/-!
# A332425: If n = Product (p_j^k_j) then a(n) = Sum ((-1)^(pi(p_j) + 1) * p_j * k_j), where pi = A000720.

The programs for A332425, there is no canonical definition to state claims against.
-/

/-! ## A332425.P4197861118233238168

`A001414(A247503((n+1)²))-A001414(n+1)`
-/

namespace A332425.P4197861118233238168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A247503 ((n + 1) ^ 2)).toNat - A001414 (n + 1)

end

end A332425.P4197861118233238168

/-! ## A332425.P4012452789991745007

`A001414(n+1)-A001414(A248101((n+1)²))`
-/

namespace A332425.P4012452789991745007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) - A001414 (A248101 ((n + 1) ^ 2)).toNat

end

end A332425.P4012452789991745007

/-!
# A332426: Number of unordered pairs of self-avoiding paths with nodes that cover all vertices of a convex n-gon.

The programs for A332426, the canonical program `A332426.P1736930073059698026` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332426 has offset 1).

The definition of A332426 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332426.P1736930073059698026

`ceil((n+1)*n*2^(n-8)*(2^(n+1)-8))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332426

/-- `ceil((n+1)*n*2^(n-8)*(2^(n+1)-8))` -/
def P1736930073059698026.Spec : Prop :=
  ∀ n, P1736930073059698026.a n = A332426 (n + 1)

theorem P1736930073059698026.correct : P1736930073059698026.Spec := by
  intro n
  simp only [A332426, Nat.add_sub_cancel]

end A332426

/-! ## A332426.P6191418873500865888

`A129533(2*(1-n)²)`
-/

namespace A332426.P6191418873500865888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129533 (2 * (1 - (n : ℤ)) ^ 2).toNat

end

end A332426.P6191418873500865888

namespace A332426

/-- `A129533(2*(1-n)²)` -/
def P6191418873500865888.Spec : Prop :=
  ∀ n, P6191418873500865888.a n = A332426 (n + 1)

end A332426

/-!
# A332428: The number of vertices on a nonagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A332428, there is no canonical definition to state claims against.
-/

/-! ## A332428.P2254501756114049885

`A332429(n+1)+1-A332421(n+1)`
-/

namespace A332428.P2254501756114049885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332429 (n + 1) + (1 - A332421 (n + 1))

end

end A332428.P2254501756114049885

/-!
# A332429: The number of edges on a nonagon formed by the straight line segments mutually connecting all vertices and all points that divide the sides into n equal parts.

The programs for A332429, there is no canonical definition to state claims against.
-/

/-! ## A332429.P8512289630551301141

`A332421(n+1)+A332428(n+1)-1`
-/

namespace A332429.P8512289630551301141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332421 (n + 1) + (A332428 (n + 1) - 1)

end

end A332429.P8512289630551301141

/-!
# A332430: a(n) = floor(2^n/(1 - cos(1/n))).

The programs for A332430, there is no canonical definition to state claims against.
-/

/-! ## A332430.P3681766940914744219

`A332432(n+1)+A332431(n+1)`
-/

namespace A332430.P3681766940914744219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332432 (n + 1) + A332431 (n + 1)

end

end A332430.P3681766940914744219

/-!
# A332431: a(n) = floor(2^n/(-1 + cot(1/n))).

The programs for A332431, the canonical program `A332431.P11801795224508566038` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332431 has offset 1).

The definition of A332431 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+1)/(-1+cot(1/(n+1))))` (program `A332431.P11801795224508566038`, by `A332431.P11801795224508566038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332431.P11801795224508566038

`floor(2^(n+1)/(-1+cot(1/(n+1))))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332431

/-- `floor(2^(n+1)/(-1+cot(1/(n+1))))` -/
def P11801795224508566038.Spec : Prop :=
  ∀ n, P11801795224508566038.a n = A332431 (n + 1)

theorem P11801795224508566038.correct : P11801795224508566038.Spec := by
  intro n
  simp only [A332431, Nat.add_sub_cancel]

end A332431

/-! ## A332431.P7725601602863340119

`A332430(n+1)-A332432(n+1)`
-/

namespace A332431.P7725601602863340119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332430 (n + 1) - A332432 (n + 1)

end

end A332431.P7725601602863340119

namespace A332431

/-- `A332430(n+1)-A332432(n+1)` -/
def P7725601602863340119.Spec : Prop :=
  ∀ n, P7725601602863340119.a n = A332431 (n + 1)

end A332431

/-!
# A332432: a(n) = [2^n/(1 - cos(1/n))] - [2^n/(-1 + cot(1/n))], where [ ] = floor.

The programs for A332432, there is no canonical definition to state claims against.
-/

/-! ## A332432.P10236967437419684966

`A332430(n+1)-A332431(n+1)`
-/

namespace A332432.P10236967437419684966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332430 (n + 1) - A332431 (n + 1)

end

end A332432.P10236967437419684966

/-!
# A332433: Signs appearing in the definition of A329593.

The programs for A332433, there is no canonical definition to state claims against.
-/

/-! ## A332433.P16754601554710560967

`A008275(A002326(n)/A003558(n))`
-/

namespace A332433.P16754601554710560967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008275 (SequenceMachineLib.roundAway ((A002326 n : ℚ) / (A003558 n : ℚ))).toNat

end

end A332433.P16754601554710560967

/-! ## A332433.P14690576267215840873

`A008683(A002326(n)/A003558(n))`
-/

namespace A332433.P14690576267215840873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((A002326 n : ℚ) / (A003558 n : ℚ))).toNat

end

end A332433.P14690576267215840873

/-! ## A332433.P9565268879851264296

`2-A000225(A002326(n)/A003558(n))`
-/

namespace A332433.P9565268879851264296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000225 (SequenceMachineLib.roundAway ((A002326 n : ℚ) / (A003558 n : ℚ))).toNat

end

end A332433.P9565268879851264296

/-! ## A332433.P15328951596595382622

`3-A000123(A002326(n)/A003558(n))`
-/

namespace A332433.P15328951596595382622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A000123 (SequenceMachineLib.roundAway ((A002326 n : ℚ) / (A003558 n : ℚ))).toNat

end

end A332433.P15328951596595382622

/-! ## A332433.P18364275577900908816

`3-A002326(A002326(n)/A003558(n))`
-/

namespace A332433.P18364275577900908816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A002326 (SequenceMachineLib.roundAway ((A002326 n : ℚ) / (A003558 n : ℚ))).toNat

end

end A332433.P18364275577900908816

/-! ## A332433.P7105407768324706623

`A056951(A002326(A002326(n)/A003558(n))+1)`
-/

namespace A332433.P7105407768324706623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056951 (A002326 (SequenceMachineLib.roundAway ((A002326 n : ℚ) / (A003558 n : ℚ))).toNat + 1).toNat

end

end A332433.P7105407768324706623

/-!
# A332435: Row sums of the irregular triangle A332434. a(n) equals the number of odd numbers <= n, of the smallest nonnegative reduced residue system modulo (2*n + 1), for n >= 1.

The programs for A332435, there is no canonical definition to state claims against.
-/

/-! ## A332435.P9913737242914379088

`A070091(2*n+3)`
-/

namespace A332435.P9913737242914379088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (2 * n + 3)

end

end A332435.P9913737242914379088

/-! ## A332435.P6271319489116366826

`A072451(n+2)-A332436(n+1)`
-/

namespace A332435.P6271319489116366826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 2) - A332436 (n + 1)

end

end A332435.P6271319489116366826

/-! ## A332435.P14718195466604190815

`A037225(n+1)/2-A332436(n+1)`
-/

namespace A332435.P14718195466604190815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 (n + 1) : ℚ) / 2 - (A332436 (n + 1) : ℚ)

end

end A332435.P14718195466604190815

/-! ## A332435.P17163845063117129493

`A055034(2*n+3)-A332436(n+1)`
-/

namespace A332435.P17163845063117129493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * n + 3) - A332436 (n + 1)

end

end A332435.P17163845063117129493

/-! ## A332435.P14914982512283168567

`A029578(A037225(n+1))-A332436(n+1)`
-/

namespace A332435.P14914982512283168567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A037225 (n + 1)).toNat - A332436 (n + 1)

end

end A332435.P14914982512283168567

/-! ## A332435.P10787460377963367155

`A003558(n+1)*A135303(n+1)-A332436(n+1)`
-/

namespace A332435.P10787460377963367155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (n + 1) * A135303 (n + 1) - A332436 (n + 1)

end

end A332435.P10787460377963367155

/-!
# A332436: The number of even numbers <= n of the smallest nonnegative reduced residue system modulo 2*n + 1, for n >= 0.

The programs for A332436, there is no canonical definition to state claims against.
-/

/-! ## A332436.P6119672899658406298

`A070091(A113127(n+1))`
-/

namespace A332436.P6119672899658406298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (A113127 (n + 1)).toNat

end

end A332436.P6119672899658406298

/-! ## A332436.P3059156264128405951

`A070091(A008574(n)+2)`
-/

namespace A332436.P3059156264128405951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (A008574 n + 2).toNat

end

end A332436.P3059156264128405951

/-! ## A332436.P6189210715363875706

`A070091(or(2, A008574(n)))`
-/

namespace A332436.P6189210715363875706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (Int.lor 2 (A008574 n)).toNat

end

end A332436.P6189210715363875706

/-! ## A332436.P17993850385405699906

`A070091(xor(2, A008574(n)))`
-/

namespace A332436.P17993850385405699906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (Int.xor 2 (A008574 n)).toNat

end

end A332436.P17993850385405699906

/-! ## A332436.P16758880134534976826

`A070091(A051755(2*(n+1)))`
-/

namespace A332436.P16758880134534976826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (A051755 (2 * (n + 1))).toNat

end

end A332436.P16758880134534976826

/-! ## A332436.P3044624591196996222

`A070091(A004277(2*n)+2)`
-/

namespace A332436.P3044624591196996222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070091 (A004277 (2 * n) + 2).toNat

end

end A332436.P3044624591196996222

/-! ## A332436.P7377870323988198367

`A072451(n+1)-A070091(2*n+1)`
-/

namespace A332436.P7377870323988198367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072451 (n + 1) - A070091 (2 * n + 1)

end

end A332436.P7377870323988198367

/-! ## A332436.P13605793309484808528

`A055034(2*n+1)-A070091(2*n+1)`
-/

namespace A332436.P13605793309484808528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (2 * n + 1) - A070091 (2 * n + 1)

end

end A332436.P13605793309484808528

/-!
# A332439: Primitive period of the partial sums of the periodic unsigned Schick sequence for N = 7 (A130794), taken modulo 14, and the related Euler tour using all regular 14-gon vertices.

The programs for A332439, there is no canonical definition to state claims against.
-/

/-! ## A332439.P16184668166011263574

`A265227(floor(5*n/3)+1)%14`
-/

namespace A332439.P16184668166011263574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265227 (⌊5 * ((n : ℚ) / 3)⌋ + 1).toNat) 14

end

end A332439.P16184668166011263574

/-! ## A332439.P200642416706168538

`A187321(A136290(n))%14`
-/

namespace A332439.P200642416706168538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187321 (A136290 n).toNat) 14

end

end A332439.P200642416706168538

/-! ## A332439.P11356625714197981512

`A032766(A047234(n+1))%14`
-/

namespace A332439.P11356625714197981512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032766 (A047234 (n + 1)).toNat) 14

end

end A332439.P11356625714197981512

/-! ## A332439.P16308622290514449330

`A055264(A042965(n+1))%14`
-/

namespace A332439.P16308622290514449330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055264 (A042965 (n + 1)).toNat) 14

end

end A332439.P16308622290514449330

/-!
# A332441: The lengths of the primitive periods of the partial sums of the periodic unsigned Schick sequences with initial value 1, for N = 2*n + 1, for n >= 1, taken modulo 2*N.

The programs for A332441, there is no canonical definition to state claims against.
-/

/-! ## A332441.P16006999093059391036

`2*A003560(∑[2*(n+1)])`
-/

namespace A332441.P16006999093059391036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003560 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A332441.P16006999093059391036

/-! ## A332441.P5904494066424482863

`lcm(2, A019567(∑[2*(n+1)]))`
-/

namespace A332441.P5904494066424482863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A019567 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A332441.P5904494066424482863

/-! ## A332441.P1645061927870357664

`A004277(A003560(∑[2*(n+1)]))`
-/

namespace A332441.P1645061927870357664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A003560 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A332441.P1645061927870357664

/-! ## A332441.P8262000378330967891

`A005843(A003560(∑[n+2+n]))`
-/

namespace A332441.P8262000378330967891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A003560 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A332441.P8262000378330967891

/-!
# A332442: Triangle read by rows, T(n,k) is the number of regular triangles of length k (in some length unit), for k from {1, 2, ... , n}, in a matchstick arrangement with enclosing triangle of length n, but only triangles with orientation opposite to the enclosing triangle are counted.

The programs for A332442, there is no canonical definition to state claims against.
-/

/-! ## A332442.P10183560495464206188

`C((abs(round(sqrt(2*(n+1)))²-(2*n+1))+1)*floor(sqrt(8*n+1))%2, 2)`
-/

namespace A332442.P10183560495464206188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1) * ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ)).toNat 2

end

end A332442.P10183560495464206188

/-! ## A332442.P7839236734159028695

`C(A185914(n+1), 2)`
-/

namespace A332442.P7839236734159028695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A185914 (n + 1)).toNat 2

end

end A332442.P7839236734159028695

/-! ## A332442.P9039730310246767081

`C(log2(ceil(2^(A038722(n+1)-n))), 2)`
-/

namespace A332442.P9039730310246767081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (⌈(2 : ℚ) ^ (A038722 (n + 1) - (n : ℤ) : ℤ)⌉ : ℝ))).toNat 2

end

end A332442.P9039730310246767081

/-! ## A332442.P17471525112133340246

`C(A143182(n)^(floor(sqrt(8*n+1))%2), 2)`
-/

namespace A332442.P17471525112133340246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A143182 n ^ (Nat.sqrt (8 * n + 1) % 2)).toNat 2

end

end A332442.P17471525112133340246

/-! ## A332442.P487553471120995132

`C(n²+1, 2)%comp[∑[n]]*A077605(n+1)`
-/

namespace A332442.P487553471120995132
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose (n ^ 2 + 1) 2 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℕ) : ℤ) * A077605 (n + 1)

end

end A332442.P487553471120995132

/-! ## A332442.P1054120590421953067

`C(abs(round(sqrt(2*(n+1)))²-(2*n+1))+1, A143182(n+1))`
-/

namespace A332442.P1054120590421953067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1).toNat (A143182 (n + 1)).toNat

end

end A332442.P1054120590421953067

/-! ## A332442.P6096892924212477705

`C(abs(round(sqrt(2*(n+1)))²-(2*n+1))+1, A022369(round(n/∑[char[∑[n]]]²)))`
-/

namespace A332442.P6096892924212477705
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (|SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)| + 1).toNat (A022369 (SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ))).toNat).toNat

end

end A332442.P6096892924212477705

/-! ## A332442.P7730534395674738048

`A161680(A185914(n+1))`
-/

namespace A332442.P7730534395674738048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A185914 (n + 1)).toNat

end

end A332442.P7730534395674738048

/-! ## A332442.P6371541815747545725

`C(A159780(A130328(n)), 2)`
-/

namespace A332442.P6371541815747545725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A159780 (A130328 n).toNat).toNat 2

end

end A332442.P6371541815747545725

/-! ## A332442.P3940460642961608653

`A077605(n+1)*A335262(n)`
-/

namespace A332442.P3940460642961608653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A335262 n

end

end A332442.P3940460642961608653

/-!
# A332443: Numbers k such that A332224(k) = A087808(sigma(k)) is odd.

The programs for A332443, the canonical program `A332443.P2586364155284599063` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332443 has offset 1).

The definition of A332443 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332443.P2586364155284599063

`record[gcd(n+1, A332448(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A332443

/-- `record[gcd(n+1, A332448(n+1))]` -/
def P2586364155284599063.Spec : Prop :=
  ∀ n, (P2586364155284599063.a n : ℤ) = A332443 (n + 1)

theorem P2586364155284599063.correct : P2586364155284599063.Spec := by
  intro n
  simp only [A332443, Nat.add_sub_cancel]

end A332443

/-! ## A332443.P8396675846064798949

`record[(n+1)/A175781(A332448(n+1)+1)]`
-/

namespace A332443.P8396675846064798949
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A175781 (A332448 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332443.P8396675846064798949

namespace A332443

/-- `record[(n+1)/A175781(A332448(n+1)+1)]` -/
def P8396675846064798949.Spec : Prop :=
  ∀ n, P8396675846064798949.a n = (A332443 (n + 1) : ℚ)

end A332443

/-! ## A332443.P6053654780044804914

`eq[0, A332448(n+1)]+1`
-/

namespace A332443.P6053654780044804914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332443.P6053654780044804914

namespace A332443

/-- `eq[0, A332448(n+1)]+1` -/
def P6053654780044804914.Spec : Prop :=
  ∀ n, (P6053654780044804914.a n : ℤ) = A332443 (n + 1)

end A332443

/-! ## A332443.P7528578582644295272

`eq[A000007(n), A332448(A028310(n))]`
-/

namespace A332443.P7528578582644295272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332448 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332443.P7528578582644295272

namespace A332443

/-- `eq[A000007(n), A332448(A028310(n))]` -/
def P7528578582644295272.Spec : Prop :=
  ∀ n, (P7528578582644295272.a n : ℤ) = A332443 (n + 1)

end A332443

/-! ## A332443.P8112531303109107383

`eq[A000038(n), A332448(A028310(n))]`
-/

namespace A332443.P8112531303109107383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332448 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332443.P8112531303109107383

namespace A332443

/-- `eq[A000038(n), A332448(A028310(n))]` -/
def P8112531303109107383.Spec : Prop :=
  ∀ n, (P8112531303109107383.a n : ℤ) = A332443 (n + 1)

end A332443

/-! ## A332443.P14229841899860130253

`eq[1, and(1, A101921(A000203(n+1)+1))]+1`
-/

namespace A332443.P14229841899860130253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A101921 (A000203 (n + 1) + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A332443.P14229841899860130253

namespace A332443

/-- `eq[1, and(1, A101921(A000203(n+1)+1))]+1` -/
def P14229841899860130253.Spec : Prop :=
  ∀ n, (P14229841899860130253.a n : ℤ) = A332443 (n + 1)

end A332443

/-!
# A332444: Numbers k that are squares or twice-squares, but for which A087808(sigma(k)) is even.

The programs for A332444, there is no canonical definition to state claims against.
-/

/-! ## A332444.P609839921147260540

`∩[A392696(n+1), A276154(n)]`
-/

namespace A332444.P609839921147260540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392696 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276154 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332444.P609839921147260540

/-!
# A332447: a(n) = A007814(A087808(n)).

The programs for A332447, the canonical program `A332447.P15250684680913480673` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332447 has offset 1).

The definition of A332447 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332447.P8609747228950829835

`val(A087808(n+1), 2)`
-/

namespace A332447.P8609747228950829835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A087808 (n + 1)).toNat 2

end

end A332447.P8609747228950829835

namespace A332447

/-- `val(A087808(n+1), 2)` -/
def P8609747228950829835.Spec : Prop :=
  ∀ n, (P8609747228950829835.a n : ℤ) = A332447 (n + 1)

end A332447

/-! ## A332447.P15250684680913480673

`A007814(A087808(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332447

/-- `A007814(A087808(n+1))` -/
def P15250684680913480673.Spec : Prop :=
  ∀ n, P15250684680913480673.a n = A332447 (n + 1)

theorem P15250684680913480673.correct : P15250684680913480673.Spec := by
  intro n
  simp only [A332447, Nat.add_sub_cancel]

end A332447

/-! ## A332447.P2823227897657881247

`val(Δ[A086845(n+1)], 2)`
-/

namespace A332447.P2823227897657881247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086845 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A332447.P2823227897657881247

namespace A332447

/-- `val(Δ[A086845(n+1)], 2)` -/
def P2823227897657881247.Spec : Prop :=
  ∀ n, (P2823227897657881247.a n : ℤ) = A332447 (n + 1)

end A332447

/-! ## A332447.P18341679082011645369

`val(A135529(A054429(n+1)), 2)`
-/

namespace A332447.P18341679082011645369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135529 (A054429 (n + 1)).toNat).toNat 2

end

end A332447.P18341679082011645369

namespace A332447

/-- `val(A135529(A054429(n+1)), 2)` -/
def P18341679082011645369.Spec : Prop :=
  ∀ n, (P18341679082011645369.a n : ℤ) = A332447 (n + 1)

end A332447

/-! ## A332447.P16649463233608322858

`val(A135529(A115304(n+1)), 2)`
-/

namespace A332447.P16649463233608322858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135529 (A115304 (n + 1)).toNat).toNat 2

end

end A332447.P16649463233608322858

namespace A332447

/-- `val(A135529(A115304(n+1)), 2)` -/
def P16649463233608322858.Spec : Prop :=
  ∀ n, (P16649463233608322858.a n : ℤ) = A332447 (n + 1)

end A332447

/-! ## A332447.P11182170342608749272

`val(A135529(A117120(n+1)), 2)`
-/

namespace A332447.P11182170342608749272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A135529 (A117120 (n + 1)).toNat).toNat 2

end

end A332447.P11182170342608749272

namespace A332447

/-- `val(A135529(A117120(n+1)), 2)` -/
def P11182170342608749272.Spec : Prop :=
  ∀ n, (P11182170342608749272.a n : ℤ) = A332447 (n + 1)

end A332447

/-! ## A332447.P14307657466674041983

`val(A087808(Δ[A046092(n)]), 2)-2`
-/

namespace A332447.P14307657466674041983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A087808 (f1 (n + 1) - f1 n).toNat).toNat 2 : ℤ) - 2

end

end A332447.P14307657466674041983

namespace A332447

/-- `val(A087808(Δ[A046092(n)]), 2)-2` -/
def P14307657466674041983.Spec : Prop :=
  ∀ n, P14307657466674041983.a n = A332447 (n + 1)

end A332447

/-! ## A332447.P13031599506073835803

`A007949(A003961(A048675(A005940(n+2))))`
-/

namespace A332447.P13031599506073835803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A003961 (A048675 (A005940 (n + 2)).toNat).toNat).toNat

end

end A332447.P13031599506073835803

namespace A332447

/-- `A007949(A003961(A048675(A005940(n+2))))` -/
def P13031599506073835803.Spec : Prop :=
  ∀ n, P13031599506073835803.a n = A332447 (n + 1)

end A332447

/-!
# A332448: a(n) = A007814(A087808(sigma(n))).

The programs for A332448, the canonical program `A332448.P14630851295872812105` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332448 has offset 1).

The definition of A332448 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087808, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332448.P2529510717692016946

`A332447(A000203(n+1))`
-/

namespace A332448.P2529510717692016946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (A000203 (n + 1)).toNat

end

end A332448.P2529510717692016946

namespace A332448

/-- `A332447(A000203(n+1))` -/
def P2529510717692016946.Spec : Prop :=
  ∀ n, P2529510717692016946.a n = A332448 (n + 1)

end A332448

/-! ## A332448.P12806271715049817413

`A007814(A332224(n+1))`
-/

namespace A332448.P12806271715049817413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A332224 (n + 1)).toNat

end

end A332448.P12806271715049817413

namespace A332448

/-- `A007814(A332224(n+1))` -/
def P12806271715049817413.Spec : Prop :=
  ∀ n, P12806271715049817413.a n = A332448 (n + 1)

end A332448

/-! ## A332448.P14630851295872812105

`A007814(A087808(A000203(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332448

/-- `A007814(A087808(A000203(n+1)))` -/
def P14630851295872812105.Spec : Prop :=
  ∀ n, P14630851295872812105.a n = A332448 (n + 1)

theorem P14630851295872812105.correct : P14630851295872812105.Spec := by
  intro n
  simp only [A332448, Nat.add_sub_cancel]

end A332448

/-! ## A332448.P11306355244273946482

`A332447(∑{d}[n+1, #])`
-/

namespace A332448.P11306355244273946482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A332448.P11306355244273946482

namespace A332448

/-- `A332447(∑{d}[n+1, #])` -/
def P11306355244273946482.Spec : Prop :=
  ∀ n, P11306355244273946482.a n = A332448 (n + 1)

end A332448

/-! ## A332448.P4552000197474366880

`A332447(A039653(n+1)+1)`
-/

namespace A332448.P4552000197474366880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332447 (A039653 (n + 1) + 1).toNat

end

end A332448.P4552000197474366880

namespace A332448

/-- `A332447(A039653(n+1)+1)` -/
def P4552000197474366880.Spec : Prop :=
  ∀ n, P4552000197474366880.a n = A332448 (n + 1)

end A332448

/-! ## A332448.P14211605413896407521

`A332447(A332224(n+1)²)/2`
-/

namespace A332448.P14211605413896407521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332447 (A332224 (n + 1) ^ 2).toNat : ℚ) / 2

end

end A332448.P14211605413896407521

namespace A332448

/-- `A332447(A332224(n+1)²)/2` -/
def P14211605413896407521.Spec : Prop :=
  ∀ n, P14211605413896407521.a n = (A332448 (n + 1) : ℚ)

end A332448

/-!
# A332449: a(n) = A005940(1+(3*A156552(n))).

The programs for A332449, the canonical program `A332449.P2255360339533413164` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332449 has offset 1).

The definition of A332449 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332449.P14358802586044019799

`A353270(n+1)*A353272(n+1)`
-/

namespace A332449.P14358802586044019799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353270 (n + 1) * A353272 (n + 1)

end

end A332449.P14358802586044019799

namespace A332449

/-- `A353270(n+1)*A353272(n+1)` -/
def P14358802586044019799.Spec : Prop :=
  ∀ n, P14358802586044019799.a n = A332449 (n + 1)

end A332449

/-! ## A332449.P4162064975742841510

`A347119(n+1)*A000290(A347120(n+1))`
-/

namespace A332449.P4162064975742841510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347119 (n + 1) * A000290 (A347120 (n + 1)).toNat

end

end A332449.P4162064975742841510

namespace A332449

/-- `A347119(n+1)*A000290(A347120(n+1))` -/
def P4162064975742841510.Spec : Prop :=
  ∀ n, P4162064975742841510.a n = A332449 (n + 1)

end A332449

/-! ## A332449.P2255360339533413164

`A005940(1+3*A156552(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332449

/-- `A005940(1+3*A156552(n+1))` -/
def P2255360339533413164.Spec : Prop :=
  ∀ n, P2255360339533413164.a n = A332449 (n + 1)

theorem P2255360339533413164.correct : P2255360339533413164.Spec := by
  intro n
  simp only [A332449, Nat.add_sub_cancel]

end A332449

/-! ## A332449.P16618323300912765437

`∑{d}[n+1, A347118(#)]`
-/

namespace A332449.P16618323300912765437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347118 d

end

end A332449.P16618323300912765437

namespace A332449

/-- `∑{d}[n+1, A347118(#)]` -/
def P16618323300912765437.Spec : Prop :=
  ∀ n, P16618323300912765437.a n = A332449 (n + 1)

end A332449

/-! ## A332449.P9660054510411324096

`A329603(A003961(n+1))/2`
-/

namespace A332449.P9660054510411324096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329603 (A003961 (n + 1)).toNat : ℚ) / 2

end

end A332449.P9660054510411324096

namespace A332449

/-- `A329603(A003961(n+1))/2` -/
def P9660054510411324096.Spec : Prop :=
  ∀ n, P9660054510411324096.a n = (A332449 (n + 1) : ℚ)

end A332449

/-! ## A332449.P8424956923323735367

`A329603(A297166(2*(n+1)))/2`
-/

namespace A332449.P8424956923323735367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329603 (A297166 (2 * (n + 1))).toNat : ℚ) / 2

end

end A332449.P8424956923323735367

namespace A332449

/-- `A329603(A297166(2*(n+1)))/2` -/
def P8424956923323735367.Spec : Prop :=
  ∀ n, P8424956923323735367.a n = (A332449 (n + 1) : ℚ)

end A332449

/-! ## A332449.P3603326142427607755

`A038572(A329603(A003961(n+1)))`
-/

namespace A332449.P3603326142427607755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A329603 (A003961 (n + 1)).toNat).toNat

end

end A332449.P3603326142427607755

namespace A332449

/-- `A038572(A329603(A003961(n+1)))` -/
def P3603326142427607755.Spec : Prop :=
  ∀ n, P3603326142427607755.a n = A332449 (n + 1)

end A332449

/-! ## A332449.P15008486546107023090

`A006370(A329603(A341511(∑[n+1])))`
-/

namespace A332449.P15008486546107023090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A329603 (A341511 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat).toNat

end

end A332449.P15008486546107023090

namespace A332449

/-- `A006370(A329603(A341511(∑[n+1])))` -/
def P15008486546107023090.Spec : Prop :=
  ∀ n, P15008486546107023090.a n = A332449 (n + 1)

end A332449

/-!
# A332450: Self-inverse permutation of natural numbers, "Blue code" conjugated by A156552 and its inverse: a(n) = A005940(1+A193231(A156552(n))).

The programs for A332450, there is no canonical definition to state claims against.
-/

/-! ## A332450.P15626544656834921567

`A366263(A156552(n+1))`
-/

namespace A332450.P15626544656834921567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A156552 (n + 1)).toNat

end

end A332450.P15626544656834921567

/-! ## A332450.P17920528055904604955

`A005940(1+A193231(A156552(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332450.P17920528055904604955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (1 + A193231 (A156552 (n + 1)).toNat).toNat

end

end A332450.P17920528055904604955

/-! ## A332450.P15497130545870665903

`A366263(A005941(n+1)-1)`
-/

namespace A332450.P15497130545870665903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A005941 (n + 1) - 1).toNat

end

end A332450.P15497130545870665903

/-! ## A332450.P11431349848866712701

`A366263(A364559(n+1)+n)`
-/

namespace A332450.P11431349848866712701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A364559 (n + 1) + (n : ℤ)).toNat

end

end A332450.P11431349848866712701

/-! ## A332450.P807475693552748603

`A366263((A322993(2*(n+1))-1)/2)`
-/

namespace A332450.P807475693552748603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) - 1 : ℚ) / 2)).toNat

end

end A332450.P807475693552748603

/-!
# A332451: a(n) = A005940(1+A048724(A156552(n))).

The programs for A332451, the canonical program `A332451.P2863376054117031325` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332451 has offset 1).

The definition of A332451 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A156552, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332451.P2863376054117031325

`A005940(1+A048724(A156552(n+1)))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A332451

/-- `A005940(1+A048724(A156552(n+1)))` -/
def P2863376054117031325.Spec : Prop :=
  ∀ n, P2863376054117031325.a n = A332451 (n + 1)

theorem P2863376054117031325.correct : P2863376054117031325.Spec := by
  intro n
  simp only [A332451, Nat.add_sub_cancel]

end A332451

/-! ## A332451.P12013606639647649426

`A332460(2*(n+1))/2`
-/

namespace A332451.P12013606639647649426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332460 (2 * (n + 1)) : ℚ) / 2

end

end A332451.P12013606639647649426

namespace A332451

/-- `A332460(2*(n+1))/2` -/
def P12013606639647649426.Spec : Prop :=
  ∀ n, P12013606639647649426.a n = (A332451 (n + 1) : ℚ)

end A332451

/-! ## A332451.P729688641953611160

`floor(A332460(Δ[A002378(n)])/2)`
-/

namespace A332451.P729688641953611160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A332460 (f1 (n + 1) - f1 n).toNat : ℚ) / 2⌋

end

end A332451.P729688641953611160

namespace A332451

/-- `floor(A332460(Δ[A002378(n)])/2)` -/
def P729688641953611160.Spec : Prop :=
  ∀ n, P729688641953611160.a n = A332451 (n + 1)

end A332451

/-! ## A332451.P6533992853532489729

`(A332460(Δ[A002378(n)])/2)%A005718(n)`
-/

namespace A332451.P6533992853532489729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A332460 (f1 (n + 1) - f1 n).toNat : ℚ) / 2)) (A005718 n)

end

end A332451.P6533992853532489729

namespace A332451

/-- `(A332460(Δ[A002378(n)])/2)%A005718(n)` -/
def P6533992853532489729.Spec : Prop :=
  ∀ n, P6533992853532489729.a n = A332451 (n + 1)

end A332451

/-! ## A332451.P13589412246829919940

`A000007(n+1)+A332460(Δ[A002378(n)])/2`
-/

namespace A332451.P13589412246829919940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (n + 1) : ℚ) + (A332460 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A332451.P13589412246829919940

namespace A332451

/-- `A000007(n+1)+A332460(Δ[A002378(n)])/2` -/
def P13589412246829919940.Spec : Prop :=
  ∀ n, P13589412246829919940.a n = (A332451 (n + 1) : ℚ)

end A332451

/-! ## A332451.P8523449041634027649

`A000038(n+1)+A332460(Δ[A002378(n)])/2`
-/

namespace A332451.P8523449041634027649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) + (A332460 (f1 (n + 1) - f1 n).toNat : ℚ) / 2

end

end A332451.P8523449041634027649

namespace A332451

/-- `A000038(n+1)+A332460(Δ[A002378(n)])/2` -/
def P8523449041634027649.Spec : Prop :=
  ∀ n, P8523449041634027649.a n = (A332451 (n + 1) : ℚ)

end A332451

/-! ## A332451.P5810462798107038529

`A332460(Δ[A002378(n)])/2-A000035(2*n)`
-/

namespace A332451.P5810462798107038529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332460 (f1 (n + 1) - f1 n).toNat : ℚ) / 2 - (A000035 (2 * n) : ℚ)

end

end A332451.P5810462798107038529

namespace A332451

/-- `A332460(Δ[A002378(n)])/2-A000035(2*n)` -/
def P5810462798107038529.Spec : Prop :=
  ∀ n, P5810462798107038529.a n = (A332451 (n + 1) : ℚ)

end A332451

/-! ## A332451.P16459846699023717391

`A014682(A332460(Δ[A002378(n)]))`
-/

namespace A332451.P16459846699023717391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A332460 (f1 (n + 1) - f1 n).toNat).toNat

end

end A332451.P16459846699023717391

namespace A332451

/-- `A014682(A332460(Δ[A002378(n)]))` -/
def P16459846699023717391.Spec : Prop :=
  ∀ n, P16459846699023717391.a n = A332451 (n + 1)

end A332451

/-! ## A332451.P14875486810447534252

`A004525(A332460(2*(n+1)))`
-/

namespace A332451.P14875486810447534252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A332460 (2 * (n + 1))).toNat

end

end A332451.P14875486810447534252

namespace A332451

/-- `A004525(A332460(2*(n+1)))` -/
def P14875486810447534252.Spec : Prop :=
  ∀ n, P14875486810447534252.a n = A332451 (n + 1)

end A332451

/-! ## A332451.P13168002006595976544

`A004526(A332460(2*n+2))`
-/

namespace A332451.P13168002006595976544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A332460 (2 * n + 2)).toNat

end

end A332451.P13168002006595976544

namespace A332451

/-- `A004526(A332460(2*n+2))` -/
def P13168002006595976544.Spec : Prop :=
  ∀ n, P13168002006595976544.a n = A332451 (n + 1)

end A332451

/-!
# A332452: Starting from sigma(n), number of halving steps to reach 1 in '3x+1' problem, or -1 if this never happens.

The programs for A332452, there is no canonical definition to state claims against.
-/

/-! ## A332452.P11739880653173628563

`A332209(n+1)-A332453(n+1)`
-/

namespace A332452.P11739880653173628563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332209 (n + 1) - A332453 (n + 1)

end

end A332452.P11739880653173628563

/-! ## A332452.P6136417572414004183

`A006666(A000203(n+1))`
-/

namespace A332452.P6136417572414004183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A000203 (n + 1)).toNat

end

end A332452.P6136417572414004183

/-! ## A332452.P10359273755478743536

`A006666(∑{d}[n+1, #])`
-/

namespace A332452.P10359273755478743536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A332452.P10359273755478743536

/-! ## A332452.P5458448065593730299

`A006666(Δ[A160664(n)])`
-/

namespace A332452.P5458448065593730299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (f1 (n + 1) - f1 n).toNat

end

end A332452.P5458448065593730299

/-! ## A332452.P2239053145905491534

`A006666(A245092(Δ[n²]))`
-/

namespace A332452.P2239053145905491534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A332452.P2239053145905491534

/-! ## A332452.P11982495343251961192

`A006666(sqrt(A072861(n+1)))`
-/

namespace A332452.P11982495343251961192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A332452.P11982495343251961192

/-! ## A332452.P14645959221210478524

`A006666(A039653(n+1)+1)`
-/

namespace A332452.P14645959221210478524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A039653 (n + 1) + 1).toNat

end

end A332452.P14645959221210478524

/-! ## A332452.P6667047908857966638

`A006666(A088580(n+1)-1)`
-/

namespace A332452.P6667047908857966638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A088580 (n + 1) - 1).toNat

end

end A332452.P6667047908857966638

/-! ## A332452.P14562896035712060316

`A006666(A237588(n+1)+2*n+1)`
-/

namespace A332452.P14562896035712060316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A237588 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A332452.P14562896035712060316

/-! ## A332452.P15818933557431804015

`A332209(n+1)-A006667(A000203(n+1))`
-/

namespace A332452.P15818933557431804015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332209 (n + 1) - A006667 (A000203 (n + 1)).toNat

end

end A332452.P15818933557431804015

/-! ## A332452.P15085095051015509010

`A006577(A000203(n+1))-A332453(n+1)`
-/

namespace A332452.P15085095051015509010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A000203 (n + 1)).toNat - A332453 (n + 1)

end

end A332452.P15085095051015509010

/-!
# A332453: Starting from sigma(n), number of tripling steps to reach 1 in '3x+1' problem, or -1 if 1 is never reached.

The programs for A332453, there is no canonical definition to state claims against.
-/

/-! ## A332453.P15455430305209653021

`A332209(n+1)-A332452(n+1)`
-/

namespace A332453.P15455430305209653021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332209 (n + 1) - A332452 (n + 1)

end

end A332453.P15455430305209653021

/-! ## A332453.P5467833448967608569

`A006667(A000203(n+1))`
-/

namespace A332453.P5467833448967608569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A000203 (n + 1)).toNat

end

end A332453.P5467833448967608569

/-! ## A332453.P16869554123677210188

`A006667(A161942(n+1))`
-/

namespace A332453.P16869554123677210188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A161942 (n + 1)).toNat

end

end A332453.P16869554123677210188

/-! ## A332453.P9365865858888557437

`A006667(∑{d}[n+1, #])`
-/

namespace A332453.P9365865858888557437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A332453.P9365865858888557437

/-! ## A332453.P2773821477602505959

`A006667(Δ[A160664(n)])`
-/

namespace A332453.P2773821477602505959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (f1 (n + 1) - f1 n).toNat

end

end A332453.P2773821477602505959

/-! ## A332453.P1704886495119604490

`A078719(Δ[A160664(n)])-1`
-/

namespace A332453.P1704886495119604490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (f1 (n + 1) - f1 n).toNat - 1

end

end A332453.P1704886495119604490

/-! ## A332453.P9126423725509259405

`A006667(A088580(n+1)-1)`
-/

namespace A332453.P9126423725509259405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A088580 (n + 1) - 1).toNat

end

end A332453.P9126423725509259405

/-! ## A332453.P6770692861767758864

`A006667(A245092(2*n+1))`
-/

namespace A332453.P6770692861767758864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A245092 (2 * n + 1)).toNat

end

end A332453.P6770692861767758864

/-! ## A332453.P8713842252908783812

`A006667(A074400(n+1)/2)`
-/

namespace A332453.P8713842252908783812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A332453.P8713842252908783812

/-! ## A332453.P702755834596498616

`A332209(n+1)-A006666(A000203(n+1))`
-/

namespace A332453.P702755834596498616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332209 (n + 1) - A006666 (A000203 (n + 1)).toNat

end

end A332453.P702755834596498616

/-! ## A332453.P4483682520496280874

`A006577(A000203(n+1))-A332452(n+1)`
-/

namespace A332453.P4483682520496280874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (A000203 (n + 1)).toNat - A332452 (n + 1)

end

end A332453.P4483682520496280874

/-! ## A332453.P16954167403315747724

`A006667(A074400(n+1))`
-/

namespace A332453.P16954167403315747724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A074400 (n + 1)).toNat

end

end A332453.P16954167403315747724

/-! ## A332453.P2078451470967384780

`A006667(A239050(n+1)/2)`
-/

namespace A332453.P2078451470967384780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2)).toNat

end

end A332453.P2078451470967384780

/-! ## A332453.P13192746680898476648

`A006667(A239050(n+1))`
-/

namespace A332453.P13192746680898476648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A239050 (n + 1)).toNat

end

end A332453.P13192746680898476648

/-! ## A332453.P5813012043700272904

`A006667(A319528(n+1)/2)`
-/

namespace A332453.P5813012043700272904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (SequenceMachineLib.roundAway ((A319528 (n + 1) : ℚ) / 2)).toNat

end

end A332453.P5813012043700272904

/-! ## A332453.P13416889567916262014

`A006667(A319528(n+1))`
-/

namespace A332453.P13416889567916262014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A319528 (n + 1)).toNat

end

end A332453.P13416889567916262014

/-!
# A332454: Starting from sigma(n)+1, number of halving steps to reach 1 in '3x+1' problem, or -1 if this never happens.

The programs for A332454, there is no canonical definition to state claims against.
-/

/-! ## A332454.P8139245413493961873

`A006666(A088580(n+1))`
-/

namespace A332454.P8139245413493961873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A088580 (n + 1)).toNat

end

end A332454.P8139245413493961873

/-! ## A332454.P2673241279846690178

`A006666(1+A000203(n+1))`
-/

namespace A332454.P2673241279846690178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (1 + A000203 (n + 1)).toNat

end

end A332454.P2673241279846690178

/-! ## A332454.P15228138316667206752

`A064433(∑{d}[n+1, #]+2)-1`
-/

namespace A332454.P15228138316667206752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (∑ d ∈ Nat.divisors (f1 n), d + 2) - 1

end

end A332454.P15228138316667206752

/-! ## A332454.P17514381050869689479

`A006666(∑{d}[n+1, #]+1)`
-/

namespace A332454.P17514381050869689479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A332454.P17514381050869689479

/-! ## A332454.P29428539807598276

`A006666(Δ[A160664(n)]+1)`
-/

namespace A332454.P29428539807598276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (f1 (n + 1) - f1 n + 1).toNat

end

end A332454.P29428539807598276

/-! ## A332454.P8615792945119671624

`A006666(A039653(n+1)+2)`
-/

namespace A332454.P8615792945119671624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A039653 (n + 1) + 2).toNat

end

end A332454.P8615792945119671624

/-! ## A332454.P6259508506771240228

`A006666(sqrt(A072861(n+1))+1)`
-/

namespace A332454.P6259508506771240228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ) + 1)).toNat

end

end A332454.P6259508506771240228

/-! ## A332454.P10842953668037226089

`A006666(A245092(2*n+1)+1)`
-/

namespace A332454.P10842953668037226089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (A245092 (2 * n + 1) + 1).toNat

end

end A332454.P10842953668037226089

/-! ## A332454.P4181419488536699105

`A064433(A064455(∑{d}[n+1, #]+2))`
-/

namespace A332454.P4181419488536699105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (A064455 (∑ d ∈ Nat.divisors (f1 n), d + 2)).toNat

end

end A332454.P4181419488536699105

/-!
# A332455: Starting from sigma(n)+1, number of tripling steps to reach 1 in '3x+1' problem, or -1 if 1 is never reached.

The programs for A332455, there is no canonical definition to state claims against.
-/

/-! ## A332455.P1811866408438763826

`A006667(A088580(n+1))`
-/

namespace A332455.P1811866408438763826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A088580 (n + 1)).toNat

end

end A332455.P1811866408438763826

/-! ## A332455.P6869005881146869528

`A006667(1+A000203(n+1))`
-/

namespace A332455.P6869005881146869528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (1 + A000203 (n + 1)).toNat

end

end A332455.P6869005881146869528

/-! ## A332455.P17555052908881691437

`A006667(∑{d}[n+1, #]+1)`
-/

namespace A332455.P17555052908881691437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (∑ d ∈ Nat.divisors (f1 n), d + 1)

end

end A332455.P17555052908881691437

/-! ## A332455.P17017425625517839429

`A078719(∑{d}[n+1, #]+1)-1`
-/

namespace A332455.P17017425625517839429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (∑ d ∈ Nat.divisors (f1 n), d + 1) - 1

end

end A332455.P17017425625517839429

/-! ## A332455.P15190690198557363860

`A006667(A332459(n+1))`
-/

namespace A332455.P15190690198557363860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A332459 (n + 1)).toNat

end

end A332455.P15190690198557363860

/-! ## A332455.P14063630365210677364

`A006667(Δ[A160664(n)]+1)`
-/

namespace A332455.P14063630365210677364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (f1 (n + 1) - f1 n + 1).toNat

end

end A332455.P14063630365210677364

/-! ## A332455.P9954518076051860337

`A006667(A245092(2*n+1)+1)`
-/

namespace A332455.P9954518076051860337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A245092 (2 * n + 1) + 1).toNat

end

end A332455.P9954518076051860337

/-! ## A332455.P4063897620004221897

`A006667(A074400(n+1)/2+1)`
-/

namespace A332455.P4063897620004221897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A332455.P4063897620004221897

/-! ## A332455.P11236417706530637643

`A006667(A074400(n+1)+2)`
-/

namespace A332455.P11236417706530637643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A074400 (n + 1) + 2).toNat

end

end A332455.P11236417706530637643

/-! ## A332455.P4138631391212035373

`A006667(A239050(n+1)/2+2)`
-/

namespace A332455.P4138631391212035373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A332455.P4138631391212035373

/-!
# A332456: Numbers k such that sigma(sigma(k)) is congruent to 6 modulo 8.

The programs for A332456, the canonical program `A332456.P1538561616137213604` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332456 has offset 1).

The definition of A332456 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 124 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332456.P1538561616137213604

`eq[6, A105827(A000203(n+1))]+1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A332456

/-- `eq[6, A105827(A000203(n+1))]+1` -/
def P1538561616137213604.Spec : Prop :=
  ∀ n, (P1538561616137213604.a n : ℤ) = A332456 (n + 1)

theorem P1538561616137213604.correct : P1538561616137213604.Spec := by
  intro n
  simp only [A332456, Nat.add_sub_cancel]

end A332456

/-!
# A332457: Numbers k such that sigma(k) == 2 modulo 8 and sigma(sigma(k)) == 6 modulo 8.

The programs for A332457, the canonical program `A332457.P13672119517976752287` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332457 has offset 1).

The definition of A332457 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332457.P13672119517976752287

`∩[A332226(n+1), A332456(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A332457

/-- `∩[A332226(n+1), A332456(n+1)]` -/
def P13672119517976752287.Spec : Prop :=
  ∀ n, (P13672119517976752287.a n : ℤ) = A332457 (n + 1)

theorem P13672119517976752287.correct : P13672119517976752287.Spec := by
  intro n
  simp only [A332457, Nat.add_sub_cancel]

end A332457

/-! ## A332457.P10066057499854469528

`filter[A332456(n+1), A353812(#)]`
-/

namespace A332457.P10066057499854469528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332456 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353812 (f1 j).toNat = 1) n)

end

end A332457.P10066057499854469528

namespace A332457

/-- `filter[A332456(n+1), A353812(#)]` -/
def P10066057499854469528.Spec : Prop :=
  ∀ n, P10066057499854469528.a n = A332457 (n + 1)

end A332457

/-!
# A332458: Odd numbers k, not powers of primes, such that sigma(k) == 2 modulo 8 and sigma(sigma(k)) == 6 modulo 8.

The programs for A332458, there is no canonical definition to state claims against.
-/

/-! ## A332458.P4141515290315436007

`∩[A332228(n+1), A332457(n+1)]`
-/

namespace A332458.P4141515290315436007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332458.P4141515290315436007

/-!
# A332459: Odd part of 1+sigma(n).

The programs for A332459, the canonical program `A332459.P6725409599280855391` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332459 has offset 1).

The definition of A332459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332459.P6725409599280855391

`A000265(A088580(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A332459

/-- `A000265(A088580(n+1))` -/
def P6725409599280855391.Spec : Prop :=
  ∀ n, P6725409599280855391.a n = A332459 (n + 1)

theorem P6725409599280855391.correct : P6725409599280855391.Spec := by
  intro n
  simp only [A332459, Nat.add_sub_cancel]

end A332459

/-! ## A332459.P7292551174538503405

`A000265(1+A000203(n+1))`
-/

namespace A332459.P7292551174538503405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + A000203 (n + 1)).toNat

end

end A332459.P7292551174538503405

namespace A332459

/-- `A000265(1+A000203(n+1))` -/
def P7292551174538503405.Spec : Prop :=
  ∀ n, P7292551174538503405.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P2654554973572302716

`A000265(1+∑{d}[n+1, #])`
-/

namespace A332459.P2654554973572302716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (1 + ∑ d ∈ Nat.divisors (f1 n), d)

end

end A332459.P2654554973572302716

namespace A332459

/-- `A000265(1+∑{d}[n+1, #])` -/
def P2654554973572302716.Spec : Prop :=
  ∀ n, P2654554973572302716.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P7297939393624412562

`A000265(Δ[A160664(n)]+1)`
-/

namespace A332459.P7297939393624412562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (f1 (n + 1) - f1 n + 1).toNat

end

end A332459.P7297939393624412562

namespace A332459

/-- `A000265(Δ[A160664(n)]+1)` -/
def P7297939393624412562.Spec : Prop :=
  ∀ n, P7297939393624412562.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P7957378987023159387

`A000265(A039653(n+1)+2)`
-/

namespace A332459.P7957378987023159387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039653 (n + 1) + 2).toNat

end

end A332459.P7957378987023159387

namespace A332459

/-- `A000265(A039653(n+1)+2)` -/
def P7957378987023159387.Spec : Prop :=
  ∀ n, P7957378987023159387.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P15099381823836634251

`A000265(A074400(n+1)+2)`
-/

namespace A332459.P15099381823836634251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A074400 (n + 1) + 2).toNat

end

end A332459.P15099381823836634251

namespace A332459

/-- `A000265(A074400(n+1)+2)` -/
def P15099381823836634251.Spec : Prop :=
  ∀ n, P15099381823836634251.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P1168310357134100632

`A000265(A155085(n+1)-n)`
-/

namespace A332459.P1168310357134100632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A155085 (n + 1) - (n : ℤ)).toNat

end

end A332459.P1168310357134100632

namespace A332459

/-- `A000265(A155085(n+1)-n)` -/
def P1168310357134100632.Spec : Prop :=
  ∀ n, P1168310357134100632.a n = A332459 (n + 1)

theorem P1168310357134100632.correct : P1168310357134100632.Spec := by
  intro n
  simp only [A332459, Nat.add_sub_cancel, A332459.P1168310357134100632.a, A332459.P6725409599280855391.a, A000265, A000265.P16482698636471710744.a, A088580, A088580.P3089093194242277422.a, A155085, A155085.P2440965829929837208.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332459

/-! ## A332459.P10784714416970681428

`A000265(sqrt(A072861(n+1))+1)`
-/

namespace A332459.P10784714416970681428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ) + 1)).toNat

end

end A332459.P10784714416970681428

namespace A332459

/-- `A000265(sqrt(A072861(n+1))+1)` -/
def P10784714416970681428.Spec : Prop :=
  ∀ n, P10784714416970681428.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P12183132962671046471

`A171435(2*(A000203(n+1)+1))`
-/

namespace A332459.P12183132962671046471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (2 * (A000203 (n + 1) + 1)).toNat

end

end A332459.P12183132962671046471

namespace A332459

/-- `A171435(2*(A000203(n+1)+1))` -/
def P12183132962671046471.Spec : Prop :=
  ∀ n, P12183132962671046471.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P10725413103591119183

`A000265(A245092(2*n+1)+1)`
-/

namespace A332459.P10725413103591119183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A245092 (2 * n + 1) + 1).toNat

end

end A332459.P10725413103591119183

namespace A332459

/-- `A000265(A245092(2*n+1)+1)` -/
def P10725413103591119183.Spec : Prop :=
  ∀ n, P10725413103591119183.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P14906720659105664475

`A000265(A239050(n+1)/2+2)`
-/

namespace A332459.P14906720659105664475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 2 + 2)).toNat

end

end A332459.P14906720659105664475

namespace A332459

/-- `A000265(A239050(n+1)/2+2)` -/
def P14906720659105664475.Spec : Prop :=
  ∀ n, P14906720659105664475.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P18253435418716284228

`A000265(A001065(n+1)+2+n)`
-/

namespace A332459.P18253435418716284228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001065 (n + 1) + 2 + (n : ℤ)).toNat

end

end A332459.P18253435418716284228

namespace A332459

/-- `A000265(A001065(n+1)+2+n)` -/
def P18253435418716284228.Spec : Prop :=
  ∀ n, P18253435418716284228.a n = A332459 (n + 1)

theorem P18253435418716284228.correct : P18253435418716284228.Spec := by
  intro n
  simp only [A332459, Nat.add_sub_cancel, A332459.P18253435418716284228.a, A332459.P6725409599280855391.a, A000265, A000265.P16482698636471710744.a, A001065, A001065.P4097147489331274860.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332459

/-! ## A332459.P14658347525765621905

`A000265(A224880(n+1)-(2*n+1))`
-/

namespace A332459.P14658347525765621905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A224880 (n + 1) - (2 * n + 1 : ℤ)).toNat

end

end A332459.P14658347525765621905

namespace A332459

/-- `A000265(A224880(n+1)-(2*n+1))` -/
def P14658347525765621905.Spec : Prop :=
  ∀ n, P14658347525765621905.a n = A332459 (n + 1)

theorem P14658347525765621905.correct : P14658347525765621905.Spec := by
  intro n
  simp only [A332459, Nat.add_sub_cancel, A332459.P14658347525765621905.a, A332459.P6725409599280855391.a, A000265, A000265.P16482698636471710744.a, A088580, A088580.P3089093194242277422.a, A224880, A224880.P6780601834210635688.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332459

/-! ## A332459.P11801263598017257666

`A000265(A034448(n+1)+A048146(n+1)+1)`
-/

namespace A332459.P11801263598017257666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A034448 (n + 1) + (A048146 (n + 1) + 1)).toNat

end

end A332459.P11801263598017257666

namespace A332459

/-- `A000265(A034448(n+1)+A048146(n+1)+1)` -/
def P11801263598017257666.Spec : Prop :=
  ∀ n, P11801263598017257666.a n = A332459 (n + 1)

theorem P11801263598017257666.correct : P11801263598017257666.Spec := by
  intro n
  simp only [A332459, Nat.add_sub_cancel, A332459.P11801263598017257666.a, A332459.P6725409599280855391.a, A000265, A000265.P16482698636471710744.a, A034448, A034448.P11229265544409245030.f1, A034448.P11229265544409245030.a, A048146, A048146.P9985884013456677192.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A254503, A254503.P16877197465467938331.a, A002618, A002618.P8397693677428532773.a, A384050, A384050.P7808103291810137926.a, A000010, A000010.P4673923239450215316.a, A055231, A055231.P8962300905713718501.a, A057521, A057521.P7284310941140114823.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332459

/-! ## A332459.P12534759264764315691

`A171435(A000203(n+1)+A000203(n+1)+2)`
-/

namespace A332459.P12534759264764315691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (A000203 (n + 1) + (A000203 (n + 1) + 2)).toNat

end

end A332459.P12534759264764315691

namespace A332459

/-- `A171435(A000203(n+1)+A000203(n+1)+2)` -/
def P12534759264764315691.Spec : Prop :=
  ∀ n, P12534759264764315691.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P11620102016646411321

`A302044(2*(A000203(n+1)+1))`
-/

namespace A332459.P11620102016646411321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (2 * (A000203 (n + 1) + 1)).toNat

end

end A332459.P11620102016646411321

namespace A332459

/-- `A302044(2*(A000203(n+1)+1))` -/
def P11620102016646411321.Spec : Prop :=
  ∀ n, P11620102016646411321.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P2450470483078988333

`A302044(A000203(n+1)+A000203(n+1)+2)`
-/

namespace A332459.P2450470483078988333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302044 (A000203 (n + 1) + (A000203 (n + 1) + 2)).toNat

end

end A332459.P2450470483078988333

namespace A332459

/-- `A302044(A000203(n+1)+A000203(n+1)+2)` -/
def P2450470483078988333.Spec : Prop :=
  ∀ n, P2450470483078988333.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P11019198755379598771

`A302034(2*(A000203(n+1)+1))`
-/

namespace A332459.P11019198755379598771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (2 * (A000203 (n + 1) + 1)).toNat

end

end A332459.P11019198755379598771

namespace A332459

/-- `A302034(2*(A000203(n+1)+1))` -/
def P11019198755379598771.Spec : Prop :=
  ∀ n, P11019198755379598771.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P2096098463317018128

`A302034(A000203(n+1)+A000203(n+1)+2)`
-/

namespace A332459.P2096098463317018128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302034 (A000203 (n + 1) + (A000203 (n + 1) + 2)).toNat

end

end A332459.P2096098463317018128

namespace A332459

/-- `A302034(A000203(n+1)+A000203(n+1)+2)` -/
def P2096098463317018128.Spec : Prop :=
  ∀ n, P2096098463317018128.a n = A332459 (n + 1)

end A332459

/-! ## A332459.P4472391579352791493

`A000265(A146076(2*(n+1))+2)`
-/

namespace A332459.P4472391579352791493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A146076 (2 * (n + 1)) + 2).toNat

end

end A332459.P4472391579352791493

namespace A332459

/-- `A000265(A146076(2*(n+1))+2)` -/
def P4472391579352791493.Spec : Prop :=
  ∀ n, P4472391579352791493.a n = A332459 (n + 1)

end A332459

/-!
# A332460: a(n) = A005940(1+A065621(A156552(n))), with a(1) = 1.

The programs for A332460, there is no canonical definition to state claims against.
-/

/-! ## A332460.P12762154889603887831

`A020639(n+1)*A332451(A032742(n+1))`
-/

namespace A332460.P12762154889603887831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A332451 (A032742 (n + 1)).toNat

end

end A332460.P12762154889603887831

/-! ## A332460.P6518340728542153043

`sqrt(A088377(n+1))*A332451(A032742(n+1))`
-/

namespace A332460.P6518340728542153043
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ) * (A332451 (A032742 (n + 1)).toNat : ℝ)

end

end A332460.P6518340728542153043

/-! ## A332460.P10742212012362205391

`A034684(∏{p}[n+1, #])*A332451(A032742(n+1))`
-/

namespace A332460.P10742212012362205391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034684 (∏ p ∈ Nat.primeFactors (f1 n), p) * A332451 (A032742 (n + 1)).toNat

end

end A332460.P10742212012362205391

/-! ## A332460.P11643570034075375432

`A126773(∏{p}[n+1, #])*A332451(A032742(n+1))`
-/

namespace A332460.P11643570034075375432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126773 (∏ p ∈ Nat.primeFactors (f1 n), p) * A332451 (A032742 (n + 1)).toNat

end

end A332460.P11643570034075375432

/-! ## A332460.P1726549059455969502

`(A074320(n+1)-A006530(n+1))*A332451(A032742(n+1))`
-/

namespace A332460.P1726549059455969502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074320 (n + 1) - A006530 (n + 1)) * A332451 (A032742 (n + 1)).toNat

end

end A332460.P1726549059455969502

/-!
# A332462: a(n) = A019565(A156552(n)).

The programs for A332462, there is no canonical definition to state claims against.
-/

/-! ## A332462.P7128847302011807187

`A019565(A156552(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A332462.P7128847302011807187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A156552 (n + 1)).toNat

end

end A332462.P7128847302011807187

/-! ## A332462.P4254079482272153955

`A097248(A332461(n+1))`
-/

namespace A332462.P4254079482272153955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097248 (A332461 (n + 1)).toNat

end

end A332462.P4254079482272153955

/-! ## A332462.P13343873584750387217

`A160102(A302023(n+1))`
-/

namespace A332462.P13343873584750387217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (A302023 (n + 1)).toNat

end

end A332462.P13343873584750387217

/-! ## A332462.P17125156847596111357

`A365810(A366264(n+1))`
-/

namespace A332462.P17125156847596111357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365810 (A366264 (n + 1)).toNat

end

end A332462.P17125156847596111357

/-! ## A332462.P5613608611458476354

`A019565(A005941(n+1)-1)`
-/

namespace A332462.P5613608611458476354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A005941 (n + 1) - 1).toNat

end

end A332462.P5613608611458476354

/-!
# A332463: Möbius transform of A332223.

The programs for A332463, there is no canonical definition to state claims against.
-/

/-! ## A332463.P12583603685065874618

`∑{d}[n+1, A008683(#)*A332223((n+1)/#)]`
-/

namespace A332463.P12583603685065874618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A332223 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A332463.P12583603685065874618

/-!
# A332464: Rule 124 one-dimensional cellular automaton applied for one step to the configuration read from the base-2 expansion of sigma(n), then converted back to decimal.

The programs for A332464, the canonical program `A332464.P13607079084851042029` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332464 has offset 1).

The definition of A332464 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A269174, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332464.P13607079084851042029

`A269174(A000203(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A332464

/-- `A269174(A000203(n+1))` -/
def P13607079084851042029.Spec : Prop :=
  ∀ n, P13607079084851042029.a n = A332464 (n + 1)

theorem P13607079084851042029.correct : P13607079084851042029.Spec := by
  intro n
  simp only [A332464, Nat.add_sub_cancel]

end A332464

/-! ## A332464.P14027535540329409676

`A269174(∑{d}[n+1, #])`
-/

namespace A332464.P14027535540329409676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A332464.P14027535540329409676

namespace A332464

/-- `A269174(∑{d}[n+1, #])` -/
def P14027535540329409676.Spec : Prop :=
  ∀ n, P14027535540329409676.a n = A332464 (n + 1)

end A332464

/-! ## A332464.P17940943068746342173

`A269174(Δ[A160664(n)])`
-/

namespace A332464.P17940943068746342173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (f1 (n + 1) - f1 n).toNat

end

end A332464.P17940943068746342173

namespace A332464

/-- `A269174(Δ[A160664(n)])` -/
def P17940943068746342173.Spec : Prop :=
  ∀ n, P17940943068746342173.a n = A332464 (n + 1)

end A332464

/-! ## A332464.P12023163518022885879

`A269174(A088580(n+1)-1)`
-/

namespace A332464.P12023163518022885879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A088580 (n + 1) - 1).toNat

end

end A332464.P12023163518022885879

namespace A332464

/-- `A269174(A088580(n+1)-1)` -/
def P12023163518022885879.Spec : Prop :=
  ∀ n, P12023163518022885879.a n = A332464 (n + 1)

theorem P12023163518022885879.correct : P12023163518022885879.Spec := by
  intro n
  simp only [A332464, Nat.add_sub_cancel, A332464.P12023163518022885879.a, A332464.P13607079084851042029.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A269174, A269174.P5853859582538514396.a, A057889, A057889.P1698969628910927929.a, A161903, A161903.P8124025879965449240.a, A006519, A006519.P10435570611646570274.a, A028310, A028310.P18130301328277559831.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332464

/-! ## A332464.P1035951693653261652

`A269174(A245092(2*n+1))`
-/

namespace A332464.P1035951693653261652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A245092 (2 * n + 1)).toNat

end

end A332464.P1035951693653261652

namespace A332464

/-- `A269174(A245092(2*n+1))` -/
def P1035951693653261652.Spec : Prop :=
  ∀ n, P1035951693653261652.a n = A332464 (n + 1)

end A332464

/-! ## A332464.P9143130453394627180

`A269174(A001065(n+1)+1+n)`
-/

namespace A332464.P9143130453394627180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A332464.P9143130453394627180

namespace A332464

/-- `A269174(A001065(n+1)+1+n)` -/
def P9143130453394627180.Spec : Prop :=
  ∀ n, P9143130453394627180.a n = A332464 (n + 1)

theorem P9143130453394627180.correct : P9143130453394627180.Spec := by
  intro n
  simp only [A332464, Nat.add_sub_cancel, A332464.P9143130453394627180.a, A332464.P13607079084851042029.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A269174, A269174.P5853859582538514396.a, A057889, A057889.P1698969628910927929.a, A161903, A161903.P8124025879965449240.a, A006519, A006519.P10435570611646570274.a, A028310, A028310.P18130301328277559831.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332464

/-! ## A332464.P341112655173800338

`A269174(A160664(n+1)-A160664(n))`
-/

namespace A332464.P341112655173800338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269174 (A160664 (n + 1) - A160664 n).toNat

end

end A332464.P341112655173800338

namespace A332464

/-- `A269174(A160664(n+1)-A160664(n))` -/
def P341112655173800338.Spec : Prop :=
  ∀ n, P341112655173800338.a n = A332464 (n + 1)

end A332464

/-!
# A332466: a(n) = n! * Sum_{d|n} mu(d) / d!.

The programs for A332466, the canonical program `A332466.P9183937612549346889` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332466 has offset 1).

The definition of A332466 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332466.P9183937612549346889

`(n+1)!*∑{d}[n+1, A008683(#)/#!]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A332466

/-- `(n+1)!*∑{d}[n+1, A008683(#)/#!]` -/
def P9183937612549346889.Spec : Prop :=
  ∀ n, P9183937612549346889.a n = (A332466 (n + 1) : ℚ)

end A332466

/-! ## A332466.P18440688135041579038

`A127324(A041837(n))+A041909(n)`
-/

namespace A332466.P18440688135041579038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127324 (A041837 n).toNat + A041909 n

end

end A332466.P18440688135041579038

namespace A332466

/-- `A127324(A041837(n))+A041909(n)` -/
def P18440688135041579038.Spec : Prop :=
  ∀ n, P18440688135041579038.a n = A332466 (n + 1)

end A332466

/-!
# A332467: a(n) = n! * Sum_{d|n} mu(d) / (d!)^(n/d).

The programs for A332467, the canonical program `A332467.P28790745233849508` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332467 has offset 1).

The definition of A332467 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332467.P28790745233849508

`(n+1)!*∑{d}[n+1, A008683(#)/#!^((n+1)/#)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A332467

/-- `(n+1)!*∑{d}[n+1, A008683(#)/#!^((n+1)/#)]` -/
def P28790745233849508.Spec : Prop :=
  ∀ n, P28790745233849508.a n = (A332467 (n + 1) : ℝ)

end A332467

/-! ## A332467.P3288496162015928940

`A071068(A027329(n)+A015525(n+1))`
-/

namespace A332467.P3288496162015928940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (A027329 n + A015525 (n + 1)).toNat

end

end A332467.P3288496162015928940

namespace A332467

/-- `A071068(A027329(n)+A015525(n+1))` -/
def P3288496162015928940.Spec : Prop :=
  ∀ n, P3288496162015928940.a n = A332467 (n + 1)

end A332467

/-!
# A332468: a(n) = Sum_{k=1..n} mu(k) * floor(n/k)^n.

The programs for A332468, there is no canonical definition to state claims against.
-/

/-! ## A332468.P1068220582678342774

`A344527(∑[4*n]+1)`
-/

namespace A332468.P1068220582678342774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332468.P1068220582678342774

/-! ## A332468.P56850738126629172

`or(1, A344527(A001844(n)))`
-/

namespace A332468.P56850738126629172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A344527 (A001844 n).toNat)

end

end A332468.P56850738126629172

/-! ## A332468.P15300106655014591032

`record[A344527(A236283(n+1))]`
-/

namespace A332468.P15300106655014591032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344527 (A236283 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332468.P15300106655014591032

/-! ## A332468.P1223632167913464117

`record[A003982(n)*A344527(n+1)]`
-/

namespace A332468.P1223632167913464117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A344527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332468.P1223632167913464117

/-! ## A332468.P8076335085798178589

`record[gcd(A114327(n), A344527(n+1))]`
-/

namespace A332468.P8076335085798178589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A344527 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332468.P8076335085798178589

/-!
# A332469: a(n) = Sum_{k=1..n} floor(n/k)^n.

The programs for A332469, there is no canonical definition to state claims against.
-/

/-! ## A332469.P4459561858169037347

`A344725(∑[4*n]+1)`
-/

namespace A332469.P4459561858169037347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332469.P4459561858169037347

/-! ## A332469.P12492487796890257773

`record[A003982(n)*A344725(n+1)]`
-/

namespace A332469.P12492487796890257773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A344725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332469.P12492487796890257773

/-! ## A332469.P1792250510271338951

`record[gcd(A114327(n), A344725(n+1))]`
-/

namespace A332469.P1792250510271338951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A344725 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A332469.P1792250510271338951

/-! ## A332469.P6730944539334743302

`A344725(A001844(n))+A025444(n)`
-/

namespace A332469.P6730944539334743302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344725 (A001844 n).toNat + A025444 n

end

end A332469.P6730944539334743302

/-! ## A332469.P7693966125474913680

`A344725(A001844(n))^A178334(n)`
-/

namespace A332469.P7693966125474913680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344725 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A332469.P7693966125474913680

/-!
# A332470: a(n) = Sum_{d|n} mu(n/d) * binomial(n+d-2, n-1).

The programs for A332470, the canonical program `A332470.P430173430965811609` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332470 has offset 1).

The definition of A332470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332470.P430173430965811609

`∑{d}[n+1, A008683((n+1)/#)*C(n+1+#-2, n)]`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A332470

/-- `∑{d}[n+1, A008683((n+1)/#)*C(n+1+#-2, n)]` -/
def P430173430965811609.Spec : Prop :=
  ∀ n, P430173430965811609.a n = A332470 (n + 1)

theorem P430173430965811609.correct : P430173430965811609.Spec := by
  intro n
  simp only [A332470, Nat.add_sub_cancel]

end A332470

/-! ## A332470.P5047189763084785488

`A177975(∑[4*n]+1)`
-/

namespace A332470.P5047189763084785488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A332470.P5047189763084785488

namespace A332470

/-- `A177975(∑[4*n]+1)` -/
def P5047189763084785488.Spec : Prop :=
  ∀ n, P5047189763084785488.a n = A332470 (n + 1)

end A332470

/-! ## A332470.P9669547972077654252

`gcd(A000038(n), A177975(A001844(n)))`
-/

namespace A332470.P9669547972077654252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A177975 (A001844 n).toNat)

end

end A332470.P9669547972077654252

namespace A332470

/-- `gcd(A000038(n), A177975(A001844(n)))` -/
def P9669547972077654252.Spec : Prop :=
  ∀ n, (P9669547972077654252.a n : ℤ) = A332470 (n + 1)

end A332470

/-! ## A332470.P545472803533465651

`or(A177975(A001844(n)), A178333(n))`
-/

namespace A332470.P545472803533465651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A177975 (A001844 n).toNat) (A178333 n)

end

end A332470.P545472803533465651

namespace A332470

/-- `or(A177975(A001844(n)), A178333(n))` -/
def P545472803533465651.Spec : Prop :=
  ∀ n, P545472803533465651.a n = A332470 (n + 1)

end A332470

/-! ## A332470.P8782084399330575288

`A177975(A001844(n))%A250529(n+1)`
-/

namespace A332470.P8782084399330575288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177975 (A001844 n).toNat) (A250529 (n + 1))

end

end A332470.P8782084399330575288

namespace A332470

/-- `A177975(A001844(n))%A250529(n+1)` -/
def P8782084399330575288.Spec : Prop :=
  ∀ n, P8782084399330575288.a n = A332470 (n + 1)

end A332470

/-! ## A332470.P10639757792988018970

`A177975(A001844(n))+char[A263431(n+1)]`
-/

namespace A332470.P10639757792988018970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263431 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (A001844 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A332470.P10639757792988018970

namespace A332470

/-- `A177975(A001844(n))+char[A263431(n+1)]` -/
def P10639757792988018970.Spec : Prop :=
  ∀ n, P10639757792988018970.a n = A332470 (n + 1)

end A332470

/-!
# A332474: The norm of the sum of unitary divisors function (usigma) generalized for Gaussian integers.

The programs for A332474, there is no canonical definition to state claims against.
-/

/-! ## A332474.P12625027458755284172

`A332472(n+1)²+A332473(n+1)²`
-/

namespace A332474.P12625027458755284172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332472 (n + 1) ^ 2 + A332473 (n + 1) ^ 2

end

end A332474.P12625027458755284172

/-!
# A332476: The number of unitary divisors of n in Gaussian integers.

The programs for A332476, the canonical program `A332476.P8708252217111257633` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332476 has offset 1).

The definition of A332476 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A086275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A332476.P8708252217111257633

`2^A086275(n+1)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A332476

/-- `2^A086275(n+1)` -/
def P8708252217111257633.Spec : Prop :=
  ∀ n, P8708252217111257633.a n = (A332476 (n + 1) : ℚ)

end A332476

/-! ## A332476.P18196611674853028708

`∏{p}[n+1, 4-and(2, #)]`
-/

namespace A332476.P18196611674853028708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (4 - (Nat.land 2 p : ℤ))

end

end A332476.P18196611674853028708

namespace A332476

/-- `∏{p}[n+1, 4-and(2, #)]` -/
def P18196611674853028708.Spec : Prop :=
  ∀ n, P18196611674853028708.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P3266720882643641996

`∏{p}[n+1, 1-or(#, -3)]`
-/

namespace A332476.P3266720882643641996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (1 - Int.lor (p : ℤ) (-3))

end

end A332476.P3266720882643641996

namespace A332476

/-- `∏{p}[n+1, 1-or(#, -3)]` -/
def P3266720882643641996.Spec : Prop :=
  ∀ n, P3266720882643641996.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P10182555933198480133

`∏{p}[n+1, 4/and(2, #)!]`
-/

namespace A332476.P10182555933198480133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 4 / (Nat.factorial (Nat.land 2 p) : ℚ)

end

end A332476.P10182555933198480133

namespace A332476

/-- `∏{p}[n+1, 4/and(2, #)!]` -/
def P10182555933198480133.Spec : Prop :=
  ∀ n, P10182555933198480133.a n = (A332476 (n + 1) : ℚ)

end A332476

/-! ## A332476.P9390899052403271470

`∏{p}[n+1, gcd(4, #-#²)]`
-/

namespace A332476.P9390899052403271470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Int.gcd 4 ((p : ℤ) - (p ^ 2 : ℤ))

end

end A332476.P9390899052403271470

namespace A332476

/-- `∏{p}[n+1, gcd(4, #-#²)]` -/
def P9390899052403271470.Spec : Prop :=
  ∀ n, (P9390899052403271470.a n : ℤ) = A332476 (n + 1)

end A332476

/-! ## A332476.P10816603649931003461

`2^∑{p}[n+1, and(2, #+2)!]`
-/

namespace A332476.P10816603649931003461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.land 2 (p + 2)))

end

end A332476.P10816603649931003461

namespace A332476

/-- `2^∑{p}[n+1, and(2, #+2)!]` -/
def P10816603649931003461.Spec : Prop :=
  ∀ n, (P10816603649931003461.a n : ℤ) = A332476 (n + 1)

end A332476

/-! ## A332476.P491038443799850814

`A227091(∏{p}[n+1, #])`
-/

namespace A332476.P491038443799850814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227091 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A332476.P491038443799850814

namespace A332476

/-- `A227091(∏{p}[n+1, #])` -/
def P491038443799850814.Spec : Prop :=
  ∀ n, P491038443799850814.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P17719758390337846519

`∏{p}[n+1, A329586(#)]`
-/

namespace A332476.P17719758390337846519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A329586 p

end

end A332476.P17719758390337846519

namespace A332476

/-- `∏{p}[n+1, A329586(#)]` -/
def P17719758390337846519.Spec : Prop :=
  ∀ n, P17719758390337846519.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P11100423104861691232

`A227091(A007947(n+1))`
-/

namespace A332476.P11100423104861691232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227091 (A007947 (n + 1)).toNat

end

end A332476.P11100423104861691232

namespace A332476

/-- `A227091(A007947(n+1))` -/
def P11100423104861691232.Spec : Prop :=
  ∀ n, P11100423104861691232.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P12987861264409970940

`A227091(A259445(n+1))`
-/

namespace A332476.P12987861264409970940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227091 (A259445 (n + 1)).toNat

end

end A332476.P12987861264409970940

namespace A332476

/-- `A227091(A259445(n+1))` -/
def P12987861264409970940.Spec : Prop :=
  ∀ n, P12987861264409970940.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P17789561847394688942

`A227091(A327937(n+1))`
-/

namespace A332476.P17789561847394688942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227091 (A327937 (n + 1)).toNat

end

end A332476.P17789561847394688942

namespace A332476

/-- `A227091(A327937(n+1))` -/
def P17789561847394688942.Spec : Prop :=
  ∀ n, P17789561847394688942.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P14118656344787333784

`A034444(n+1)*A034444(A170817(n+1))`
-/

namespace A332476.P14118656344787333784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A034444 (A170817 (n + 1)).toNat

end

end A332476.P14118656344787333784

namespace A332476

/-- `A034444(n+1)*A034444(A170817(n+1))` -/
def P14118656344787333784.Spec : Prop :=
  ∀ n, P14118656344787333784.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P3455509600810377522

`A073103(A389092(n+1))`
-/

namespace A332476.P3455509600810377522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A389092 (n + 1)).toNat

end

end A332476.P3455509600810377522

namespace A332476

/-- `A073103(A389092(n+1))` -/
def P3455509600810377522.Spec : Prop :=
  ∀ n, P3455509600810377522.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P3148290481300710184

`∏{p}[n+1, A000925(#²)]`
-/

namespace A332476.P3148290481300710184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000925 (p ^ 2)

end

end A332476.P3148290481300710184

namespace A332476

/-- `∏{p}[n+1, A000925(#²)]` -/
def P3148290481300710184.Spec : Prop :=
  ∀ n, P3148290481300710184.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P8059577680630289522

`A073103(A078615(n+1))`
-/

namespace A332476.P8059577680630289522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073103 (A078615 (n + 1)).toNat

end

end A332476.P8059577680630289522

namespace A332476

/-- `A073103(A078615(n+1))` -/
def P8059577680630289522.Spec : Prop :=
  ∀ n, P8059577680630289522.a n = A332476 (n + 1)

end A332476

/-! ## A332476.P12536225315642795469

`A335852((n+1)²)/A335852(n+1)`
-/

namespace A332476.P12536225315642795469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335852 ((n + 1) ^ 2) : ℚ) / (A335852 (n + 1) : ℚ)

end

end A332476.P12536225315642795469

namespace A332476

/-- `A335852((n+1)²)/A335852(n+1)` -/
def P12536225315642795469.Spec : Prop :=
  ∀ n, P12536225315642795469.a n = (A332476 (n + 1) : ℚ)

end A332476

/-!
# A332479: a(n) = [2^n/(1 - cos(1/n))] - [2^n/(-1 + cot(1/n))] - [2^n/(1 - cos(1/n)) - 2^n/(-1 + cot(1/n))], where [ ] = floor.

The programs for A332479, there is no canonical definition to state claims against.
-/

/-! ## A332479.P9897248542337672755

`A006368(A326440(n)+A290133(n))%2`
-/

namespace A332479.P9897248542337672755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006368 (A326440 n + A290133 n).toNat) 2

end

end A332479.P9897248542337672755

/-! ## A332479.P18262062952344802819

`A014707(∑[A246444(A064933(n+1))])`
-/

namespace A332479.P18262062952344802819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246444 (A064933 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A332479.P18262062952344802819

/-! ## A332479.P879950280801567242

`A285467(A298422(n+5)+A000124(n))`
-/

namespace A332479.P879950280801567242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285467 (A298422 (n + 5) + A000124 n).toNat

end

end A332479.P879950280801567242

/-!
# A332480: Numbers k such that sin(k) > 0 and cos(k) > 0.

The programs for A332480, the canonical program `A332480.P11000465361868227780` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332480 has offset 1).

The definition of A332480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332480.P11000465361868227780

`eq[1, ceil(tan(n/2))]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332480

/-- `eq[1, ceil(tan(n/2))]` -/
def P11000465361868227780.Spec : Prop :=
  ∀ n, (P11000465361868227780.a n : ℤ) = A332480 (n + 1)

theorem P11000465361868227780.correct : P11000465361868227780.Spec := by
  intro n
  simp only [A332480, Nat.add_sub_cancel]

end A332480

/-! ## A332480.P10561259588992837604

`lt[1, sin(n)+cos(n)]`
-/

namespace A332480.P10561259588992837604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) + Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332480.P10561259588992837604

namespace A332480

/-- `lt[1, sin(n)+cos(n)]` -/
def P10561259588992837604.Spec : Prop :=
  ∀ n, (P10561259588992837604.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P9380702311151700916

`lt[1-cos(n), sin(n)]`
-/

namespace A332480.P9380702311151700916
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332480.P9380702311151700916

namespace A332480

/-- `lt[1-cos(n), sin(n)]` -/
def P9380702311151700916.Spec : Prop :=
  ∀ n, (P9380702311151700916.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P11365353635346088059

`lt[floor(cos(n))², sin(n)]`
-/

namespace A332480.P11365353635346088059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n : ℝ)⌋ ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332480.P11365353635346088059

namespace A332480

/-- `lt[floor(cos(n))², sin(n)]` -/
def P11365353635346088059.Spec : Prop :=
  ∀ n, (P11365353635346088059.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P14557120274565289339

`eq[2, ceil(sin(n)+cos(n))]`
-/

namespace A332480.P14557120274565289339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) + Real.cos (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332480.P14557120274565289339

namespace A332480

/-- `eq[2, ceil(sin(n)+cos(n))]` -/
def P14557120274565289339.Spec : Prop :=
  ∀ n, (P14557120274565289339.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P8062314517907943306

`lt[1, ceil(sin(n))/cos(n)]`
-/

namespace A332480.P8062314517907943306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈Real.sin (n : ℝ)⌉ : ℝ) / Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332480.P8062314517907943306

namespace A332480

/-- `lt[1, ceil(sin(n))/cos(n)]` -/
def P8062314517907943306.Spec : Prop :=
  ∀ n, (P8062314517907943306.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P5184309099288139831

`lt[1, cot((n+1)/2)]+1`
-/

namespace A332480.P5184309099288139831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((n + 1 : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A332480.P5184309099288139831

namespace A332480

/-- `lt[1, cot((n+1)/2)]+1` -/
def P5184309099288139831.Spec : Prop :=
  ∀ n, (P5184309099288139831.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P3119180336715542326

`lt[abs(cos(n+1)), cos(n-1)]`
-/

namespace A332480.P3119180336715542326
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n + 1 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332480.P3119180336715542326

namespace A332480

/-- `lt[abs(cos(n+1)), cos(n-1)]` -/
def P3119180336715542326.Spec : Prop :=
  ∀ n, (P3119180336715542326.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P11128102417190448675

`lt[abs(sin(n-1)), sin(n+1)]`
-/

namespace A332480.P11128102417190448675
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin ((n : ℤ) - 1 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332480.P11128102417190448675

namespace A332480

/-- `lt[abs(sin(n-1)), sin(n+1)]` -/
def P11128102417190448675.Spec : Prop :=
  ∀ n, (P11128102417190448675.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P9813145529976905117

`lt[ceil(sin(n-2)), sin(2*n)]`
-/

namespace A332480.P9813145529976905117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin ((n : ℤ) - 2 : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332480.P9813145529976905117

namespace A332480

/-- `lt[ceil(sin(n-2)), sin(2*n)]` -/
def P9813145529976905117.Spec : Prop :=
  ∀ n, (P9813145529976905117.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P4314892698593242789

`∪[A004082(n+1), A246393(n)]`
-/

namespace A332480.P4314892698593242789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P4314892698593242789

namespace A332480

/-- `∪[A004082(n+1), A246393(n)]` -/
def P4314892698593242789.Spec : Prop :=
  ∀ n, (P4314892698593242789.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P18159209576223459724

`∪[A277093(n+1), A246393(n)]`
-/

namespace A332480.P18159209576223459724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246393 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P18159209576223459724

namespace A332480

/-- `∪[A277093(n+1), A246393(n)]` -/
def P18159209576223459724.Spec : Prop :=
  ∀ n, (P18159209576223459724.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P9175937391433113740

`∪[A004084(2*n+1), A062389(2*n+1)]`
-/

namespace A332480.P9175937391433113740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P9175937391433113740

namespace A332480

/-- `∪[A004084(2*n+1), A062389(2*n+1)]` -/
def P9175937391433113740.Spec : Prop :=
  ∀ n, (P9175937391433113740.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P3333594070513304929

`∩[A070752(n+1), A277137(n+1)]`
-/

namespace A332480.P3333594070513304929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P3333594070513304929

namespace A332480

/-- `∩[A070752(n+1), A277137(n+1)]` -/
def P3333594070513304929.Spec : Prop :=
  ∀ n, (P3333594070513304929.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P7004682587770795492

`∩[A070752(n+1), A131503(n+1)]`
-/

namespace A332480.P7004682587770795492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P7004682587770795492

namespace A332480

/-- `∩[A070752(n+1), A131503(n+1)]` -/
def P7004682587770795492.Spec : Prop :=
  ∀ n, (P7004682587770795492.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P8650302684775887489

`∩[A026311(n+1), A327422(n+1)]`
-/

namespace A332480.P8650302684775887489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P8650302684775887489

namespace A332480

/-- `∩[A026311(n+1), A327422(n+1)]` -/
def P8650302684775887489.Spec : Prop :=
  ∀ n, (P8650302684775887489.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P17340059124940086422

`∩[A070752(n+1), A327422(n+1)]`
-/

namespace A332480.P17340059124940086422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P17340059124940086422

namespace A332480

/-- `∩[A070752(n+1), A327422(n+1)]` -/
def P17340059124940086422.Spec : Prop :=
  ∀ n, (P17340059124940086422.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P6839530743396068316

`∩[A131503(n+1), A327422(n+1)]`
-/

namespace A332480.P6839530743396068316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P6839530743396068316

namespace A332480

/-- `∩[A131503(n+1), A327422(n+1)]` -/
def P6839530743396068316.Spec : Prop :=
  ∀ n, (P6839530743396068316.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P25066957407722508

`∩[A277137(n+1), A327422(n+1)]`
-/

namespace A332480.P25066957407722508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P25066957407722508

namespace A332480

/-- `∩[A277137(n+1), A327422(n+1)]` -/
def P25066957407722508.Spec : Prop :=
  ∀ n, (P25066957407722508.a n : ℤ) = A332480 (n + 1)

end A332480

/-! ## A332480.P14292940702074698430

`∩[A054386(n+1), A277137(n+1)]`
-/

namespace A332480.P14292940702074698430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332480.P14292940702074698430

namespace A332480

/-- `∩[A054386(n+1), A277137(n+1)]` -/
def P14292940702074698430.Spec : Prop :=
  ∀ n, (P14292940702074698430.a n : ℤ) = A332480 (n + 1)

end A332480

/-!
# A332481: Numbers k such that sin(k) > 0 and cos(k) < 0.

The programs for A332481, the canonical program `A332481.P17580974129097578361` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332481 has offset 1).

The definition of A332481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332481.P17580974129097578361

`lt[1, tan(n/2)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332481

/-- `lt[1, tan(n/2)]` -/
def P17580974129097578361.Spec : Prop :=
  ∀ n, (P17580974129097578361.a n : ℤ) = A332481 (n + 1)

theorem P17580974129097578361.correct : P17580974129097578361.Spec := by
  intro n
  simp only [A332481, Nat.add_sub_cancel]

end A332481

/-! ## A332481.P8577133902112921414

`lt[cos(n), floor(sin(n))]`
-/

namespace A332481.P8577133902112921414
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332481.P8577133902112921414

namespace A332481

/-- `lt[cos(n), floor(sin(n))]` -/
def P8577133902112921414.Spec : Prop :=
  ∀ n, (P8577133902112921414.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P16430400418984045657

`lt[ceil(cos(n)), sin(n)]`
-/

namespace A332481.P16430400418984045657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332481.P16430400418984045657

namespace A332481

/-- `lt[ceil(cos(n)), sin(n)]` -/
def P16430400418984045657.Spec : Prop :=
  ∀ n, (P16430400418984045657.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P8883271761379875487

`lt[cos(n)+1, sin(n)]`
-/

namespace A332481.P8883271761379875487
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332481.P8883271761379875487

namespace A332481

/-- `lt[cos(n)+1, sin(n)]` -/
def P8883271761379875487.Spec : Prop :=
  ∀ n, (P8883271761379875487.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P18340625700672643176

`lt[1, sin(n)-cos(n)]`
-/

namespace A332481.P18340625700672643176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) - Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332481.P18340625700672643176

namespace A332481

/-- `lt[1, sin(n)-cos(n)]` -/
def P18340625700672643176.Spec : Prop :=
  ∀ n, (P18340625700672643176.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P10479874047437752477

`lt[sin(2*n), floor(sin(n))]`
-/

namespace A332481.P10479874047437752477
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332481.P10479874047437752477

namespace A332481

/-- `lt[sin(2*n), floor(sin(n))]` -/
def P10479874047437752477.Spec : Prop :=
  ∀ n, (P10479874047437752477.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P6393404899615249392

`lt[ceil(sin(2*n)), sin(n)]`
-/

namespace A332481.P6393404899615249392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (2 * n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332481.P6393404899615249392

namespace A332481

/-- `lt[ceil(sin(2*n)), sin(n)]` -/
def P6393404899615249392.Spec : Prop :=
  ∀ n, (P6393404899615249392.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P17339887789639892855

`lt[abs(sin(n+1)), sin(n-1)]`
-/

namespace A332481.P17339887789639892855
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin (n + 1 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332481.P17339887789639892855

namespace A332481

/-- `lt[abs(sin(n+1)), sin(n-1)]` -/
def P17339887789639892855.Spec : Prop :=
  ∀ n, (P17339887789639892855.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P18219389963836478737

`lt[abs(cos(n+2)), cos(n-2)]`
-/

namespace A332481.P18219389963836478737
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n + 2 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℤ) - 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332481.P18219389963836478737

namespace A332481

/-- `lt[abs(cos(n+2)), cos(n-2)]` -/
def P18219389963836478737.Spec : Prop :=
  ∀ n, (P18219389963836478737.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P9851192839253144294

`∪[A277139(n+1), A246388(n)]`
-/

namespace A332481.P9851192839253144294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246388 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332481.P9851192839253144294

namespace A332481

/-- `∪[A277139(n+1), A246388(n)]` -/
def P9851192839253144294.Spec : Prop :=
  ∀ n, (P9851192839253144294.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P15116977748817055527

`∩[A277094(n+1), A246396(n)]`
-/

namespace A332481.P15116977748817055527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332481.P15116977748817055527

namespace A332481

/-- `∩[A277094(n+1), A246396(n)]` -/
def P15116977748817055527.Spec : Prop :=
  ∀ n, (P15116977748817055527.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P9323003953830476819

`∩[A070752(n+1), A246396(n)]`
-/

namespace A332481.P9323003953830476819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332481.P9323003953830476819

namespace A332481

/-- `∩[A070752(n+1), A246396(n)]` -/
def P9323003953830476819.Spec : Prop :=
  ∀ n, (P9323003953830476819.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P9664829349761471883

`∩[A332484(n+1), A246396(n)]`
-/

namespace A332481.P9664829349761471883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332481.P9664829349761471883

namespace A332481

/-- `∩[A332484(n+1), A246396(n)]` -/
def P9664829349761471883.Spec : Prop :=
  ∀ n, (P9664829349761471883.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P3406162401104568652

`∩[A070752(n+1), A332487(n+1)]`
-/

namespace A332481.P3406162401104568652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332481.P3406162401104568652

namespace A332481

/-- `∩[A070752(n+1), A332487(n+1)]` -/
def P3406162401104568652.Spec : Prop :=
  ∀ n, (P3406162401104568652.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P5074556083339298714

`∩[A277094(n+1), A332487(n+1)]`
-/

namespace A332481.P5074556083339298714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332481.P5074556083339298714

namespace A332481

/-- `∩[A277094(n+1), A332487(n+1)]` -/
def P5074556083339298714.Spec : Prop :=
  ∀ n, (P5074556083339298714.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P6997350901805427739

`∩[A246450(n+1), A246396(n)]`
-/

namespace A332481.P6997350901805427739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332481.P6997350901805427739

namespace A332481

/-- `∩[A246450(n+1), A246396(n)]` -/
def P6997350901805427739.Spec : Prop :=
  ∀ n, (P6997350901805427739.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P17484599382321810667

`lt[cos(n), A000493(n)]`
-/

namespace A332481.P17484599382321810667
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332481.P17484599382321810667

namespace A332481

/-- `lt[cos(n), A000493(n)]` -/
def P17484599382321810667.Spec : Prop :=
  ∀ n, (P17484599382321810667.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P1163848705831277168

`lt[A126565(n), sin(n)]`
-/

namespace A332481.P1163848705831277168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332481.P1163848705831277168

namespace A332481

/-- `lt[A126565(n), sin(n)]` -/
def P1163848705831277168.Spec : Prop :=
  ∀ n, (P1163848705831277168.a n : ℤ) = A332481 (n + 1)

end A332481

/-! ## A332481.P14211539053569755291

`filter[A246396(n), A302203(#)]`
-/

namespace A332481.P14211539053569755291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302203 (f1 j).toNat = 1) n)

end

end A332481.P14211539053569755291

namespace A332481

/-- `filter[A246396(n), A302203(#)]` -/
def P14211539053569755291.Spec : Prop :=
  ∀ n, P14211539053569755291.a n = A332481 (n + 1)

end A332481

/-! ## A332481.P9293336724776317800

`eq[A181059(n), A373565(n)]`
-/

namespace A332481.P9293336724776317800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A332481.P9293336724776317800

namespace A332481

/-- `eq[A181059(n), A373565(n)]` -/
def P9293336724776317800.Spec : Prop :=
  ∀ n, (P9293336724776317800.a n : ℤ) = A332481 (n + 1)

end A332481

/-!
# A332482: Numbers k such that sin(k) < 0 and cos(k) > 0.

The programs for A332482, the canonical program `A332482.P7699418777919488588` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332482 has offset 1).

The definition of A332482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332482.P7699418777919488588

`lt[sin(n)+1, cos(n)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332482

/-- `lt[sin(n)+1, cos(n)]` -/
def P7699418777919488588.Spec : Prop :=
  ∀ n, (P7699418777919488588.a n : ℤ) = A332482 (n + 1)

theorem P7699418777919488588.correct : P7699418777919488588.Spec := by
  intro n
  simp only [A332482, Nat.add_sub_cancel]

end A332482

/-! ## A332482.P6873992978984266759

`lt[1, cos(n)-sin(n)]`
-/

namespace A332482.P6873992978984266759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) - Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332482.P6873992978984266759

namespace A332482

/-- `lt[1, cos(n)-sin(n)]` -/
def P6873992978984266759.Spec : Prop :=
  ∀ n, (P6873992978984266759.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P8948096199856272815

`eq[1, -floor(tan(n/2))]`
-/

namespace A332482.P8948096199856272815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌊Real.tan ((n : ℚ) / 2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332482.P8948096199856272815

namespace A332482

/-- `eq[1, -floor(tan(n/2))]` -/
def P8948096199856272815.Spec : Prop :=
  ∀ n, (P8948096199856272815.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P11875849256865701971

`eq[1, ceil(tan(-(n/2)))]`
-/

namespace A332482.P11875849256865701971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (-((n : ℚ) / 2) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A332482.P11875849256865701971

namespace A332482

/-- `eq[1, ceil(tan(-(n/2)))]` -/
def P11875849256865701971.Spec : Prop :=
  ∀ n, (P11875849256865701971.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P16598500417404117459

`lt[2^sin(n), ceil(cos(n))]`
-/

namespace A332482.P16598500417404117459
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.sin (n : ℝ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332482.P16598500417404117459

namespace A332482

/-- `lt[2^sin(n), ceil(cos(n))]` -/
def P16598500417404117459.Spec : Prop :=
  ∀ n, (P16598500417404117459.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P13147242790081822657

`lt[abs(cos(n-1)), cos(n+1)]`
-/

namespace A332482.P13147242790081822657
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos ((n : ℤ) - 1 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332482.P13147242790081822657

namespace A332482

/-- `lt[abs(cos(n-1)), cos(n+1)]` -/
def P13147242790081822657.Spec : Prop :=
  ∀ n, (P13147242790081822657.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P8106238751893991827

`lt[abs(sin(n-2)), sin(n+2)]`
-/

namespace A332482.P8106238751893991827
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin ((n : ℤ) - 2 : ℝ)|

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332482.P8106238751893991827

namespace A332482

/-- `lt[abs(sin(n-2)), sin(n+2)]` -/
def P8106238751893991827.Spec : Prop :=
  ∀ n, (P8106238751893991827.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P15737130178657367983

`lt[sin(2*n), floor(sin(n+2))]`
-/

namespace A332482.P15737130178657367983
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n + 2 : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332482.P15737130178657367983

namespace A332482

/-- `lt[sin(2*n), floor(sin(n+2))]` -/
def P15737130178657367983.Spec : Prop :=
  ∀ n, (P15737130178657367983.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P2935949245809711063

`∩[A277095(n+1), A246395(n)]`
-/

namespace A332482.P2935949245809711063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P2935949245809711063

namespace A332482

/-- `∩[A277095(n+1), A246395(n)]` -/
def P2935949245809711063.Spec : Prop :=
  ∀ n, (P2935949245809711063.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P10711224526070851370

`∩[A070751(n+1), A246395(n)]`
-/

namespace A332482.P10711224526070851370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P10711224526070851370

namespace A332482

/-- `∩[A070751(n+1), A246395(n)]` -/
def P10711224526070851370.Spec : Prop :=
  ∀ n, (P10711224526070851370.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P4769300139439599471

`∩[A070751(n+1), A277138(n+1)+2]`
-/

namespace A332482.P4769300139439599471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P4769300139439599471

namespace A332482

/-- `∩[A070751(n+1), A277138(n+1)+2]` -/
def P4769300139439599471.Spec : Prop :=
  ∀ n, (P4769300139439599471.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P8503620674145034816

`∩[A070751(n+1), A131503(n+1)]`
-/

namespace A332482.P8503620674145034816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P8503620674145034816

namespace A332482

/-- `∩[A070751(n+1), A131503(n+1)]` -/
def P8503620674145034816.Spec : Prop :=
  ∀ n, (P8503620674145034816.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P12916616767749543694

`∩[A131503(n+1), A277095(n+1)]`
-/

namespace A332482.P12916616767749543694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P12916616767749543694

namespace A332482

/-- `∩[A131503(n+1), A277095(n+1)]` -/
def P12916616767749543694.Spec : Prop :=
  ∀ n, (P12916616767749543694.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P16901492738969955018

`∩[A070751(n+1), A332484(n+1)]`
-/

namespace A332482.P16901492738969955018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P16901492738969955018

namespace A332482

/-- `∩[A070751(n+1), A332484(n+1)]` -/
def P16901492738969955018.Spec : Prop :=
  ∀ n, (P16901492738969955018.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P15314920188747074116

`∩[A277095(n+1), A332484(n+1)]`
-/

namespace A332482.P15314920188747074116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P15314920188747074116

namespace A332482

/-- `∩[A277095(n+1), A332484(n+1)]` -/
def P15314920188747074116.Spec : Prop :=
  ∀ n, (P15314920188747074116.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P7420476829496347522

`∩[A332487(n+1), A246395(n)]`
-/

namespace A332482.P7420476829496347522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P7420476829496347522

namespace A332482

/-- `∩[A332487(n+1), A246395(n)]` -/
def P7420476829496347522.Spec : Prop :=
  ∀ n, (P7420476829496347522.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P15659148918796881665

`∩[A131503(n+1), A332487(n+1)]`
-/

namespace A332482.P15659148918796881665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P15659148918796881665

namespace A332482

/-- `∩[A131503(n+1), A332487(n+1)]` -/
def P15659148918796881665.Spec : Prop :=
  ∀ n, (P15659148918796881665.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P16766119686546231716

`∩[A246450(n+1), A246395(n)]`
-/

namespace A332482.P16766119686546231716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246395 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332482.P16766119686546231716

namespace A332482

/-- `∩[A246450(n+1), A246395(n)]` -/
def P16766119686546231716.Spec : Prop :=
  ∀ n, (P16766119686546231716.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P5967849896467389733

`lt[A000493(n)+1, cos(n)]`
-/

namespace A332482.P5967849896467389733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332482.P5967849896467389733

namespace A332482

/-- `lt[A000493(n)+1, cos(n)]` -/
def P5967849896467389733.Spec : Prop :=
  ∀ n, (P5967849896467389733.a n : ℤ) = A332482 (n + 1)

end A332482

/-! ## A332482.P2438004568878402024

`lt[exp(tan(n)), cos(n)]`
-/

namespace A332482.P2438004568878402024
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (Real.tan (n : ℝ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332482.P2438004568878402024

namespace A332482

/-- `lt[exp(tan(n)), cos(n)]` -/
def P2438004568878402024.Spec : Prop :=
  ∀ n, (P2438004568878402024.a n : ℤ) = A332482 (n + 1)

end A332482

/-!
# A332483: Numbers k such that sin(k) < 0 and cos(k) < 0.

The programs for A332483, the canonical program `A332483.P8761879359476751429` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332483 has offset 1).

The definition of A332483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332483.P8761879359476751429

`lt[tan(n/2), -1]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332483

/-- `lt[tan(n/2), -1]` -/
def P8761879359476751429.Spec : Prop :=
  ∀ n, (P8761879359476751429.a n : ℤ) = A332483 (n + 1)

theorem P8761879359476751429.correct : P8761879359476751429.Spec := by
  intro n
  simp only [A332483, Nat.add_sub_cancel]

end A332483

/-! ## A332483.P13281782123693607868

`lt[sin(n), floor(-cos(n))]`
-/

namespace A332483.P13281782123693607868
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊-Real.cos (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332483.P13281782123693607868

namespace A332483

/-- `lt[sin(n), floor(-cos(n))]` -/
def P13281782123693607868.Spec : Prop :=
  ∀ n, (P13281782123693607868.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P16845939734728391950

`lt[ceil(cos(n)), -sin(n)]`
-/

namespace A332483.P16845939734728391950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332483.P16845939734728391950

namespace A332483

/-- `lt[ceil(cos(n)), -sin(n)]` -/
def P16845939734728391950.Spec : Prop :=
  ∀ n, (P16845939734728391950.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P8951730271559620932

`lt[1, -(sin(n)+cos(n))]`
-/

namespace A332483.P8951730271559620932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -(Real.sin (n : ℝ) + Real.cos (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332483.P8951730271559620932

namespace A332483

/-- `lt[1, -(sin(n)+cos(n))]` -/
def P8951730271559620932.Spec : Prop :=
  ∀ n, (P8951730271559620932.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P1835672395255248669

`lt[cos(n), floor(sin(2*n))]`
-/

namespace A332483.P1835672395255248669
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 * n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332483.P1835672395255248669

namespace A332483

/-- `lt[cos(n), floor(sin(2*n))]` -/
def P1835672395255248669.Spec : Prop :=
  ∀ n, (P1835672395255248669.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P7669261698486843332

`lt[ceil(cos(n)), sin(2*n)]`
-/

namespace A332483.P7669261698486843332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332483.P7669261698486843332

namespace A332483

/-- `lt[ceil(cos(n)), sin(2*n)]` -/
def P7669261698486843332.Spec : Prop :=
  ∀ n, (P7669261698486843332.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P3043736857342444117

`lt[sin(n), floor(sin(2*n))]`
-/

namespace A332483.P3043736857342444117
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 * n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332483.P3043736857342444117

namespace A332483

/-- `lt[sin(n), floor(sin(2*n))]` -/
def P3043736857342444117.Spec : Prop :=
  ∀ n, (P3043736857342444117.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P18396266301830589080

`lt[ceil(sin(n)), sin(2*n)]`
-/

namespace A332483.P18396266301830589080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ)⌉

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332483.P18396266301830589080

namespace A332483

/-- `lt[ceil(sin(n)), sin(2*n)]` -/
def P18396266301830589080.Spec : Prop :=
  ∀ n, (P18396266301830589080.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P18205674423523883118

`∪[A277096(n+1), A246394(n)]`
-/

namespace A332483.P18205674423523883118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246394 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P18205674423523883118

namespace A332483

/-- `∪[A277096(n+1), A246394(n)]` -/
def P18205674423523883118.Spec : Prop :=
  ∀ n, (P18205674423523883118.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P1743341111803058181

`∪[A004084(2*(n+1)), A062389(2*(n+1))]`
-/

namespace A332483.P1743341111803058181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004084 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062389 (2 * (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P1743341111803058181

namespace A332483

/-- `∪[A004084(2*(n+1)), A062389(2*(n+1))]` -/
def P1743341111803058181.Spec : Prop :=
  ∀ n, (P1743341111803058181.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P9456132152245368719

`∩[A277138(n+1), A246390(n)]`
-/

namespace A332483.P9456132152245368719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P9456132152245368719

namespace A332483

/-- `∩[A277138(n+1), A246390(n)]` -/
def P9456132152245368719.Spec : Prop :=
  ∀ n, (P9456132152245368719.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P10792040853883870016

`∩[A070751(n+1), A277138(n+1)]`
-/

namespace A332483.P10792040853883870016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P10792040853883870016

namespace A332483

/-- `∩[A070751(n+1), A277138(n+1)]` -/
def P10792040853883870016.Spec : Prop :=
  ∀ n, (P10792040853883870016.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P15233874532382544410

`∩[A327422(n+1), A246390(n)]`
-/

namespace A332483.P15233874532382544410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P15233874532382544410

namespace A332483

/-- `∩[A327422(n+1), A246390(n)]` -/
def P15233874532382544410.Spec : Prop :=
  ∀ n, (P15233874532382544410.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P5506516400234402944

`∩[A070751(n+1), A327422(n+1)]`
-/

namespace A332483.P5506516400234402944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P5506516400234402944

namespace A332483

/-- `∩[A070751(n+1), A327422(n+1)]` -/
def P5506516400234402944.Spec : Prop :=
  ∀ n, (P5506516400234402944.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P6970069812930536358

`∩[A246303(n+1), A327422(n+1)]`
-/

namespace A332483.P6970069812930536358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P6970069812930536358

namespace A332483

/-- `∩[A246303(n+1), A327422(n+1)]` -/
def P6970069812930536358.Spec : Prop :=
  ∀ n, (P6970069812930536358.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P15552962585376931747

`∩[A277138(n+1), A327422(n+1)]`
-/

namespace A332483.P15552962585376931747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P15552962585376931747

namespace A332483

/-- `∩[A277138(n+1), A327422(n+1)]` -/
def P15552962585376931747.Spec : Prop :=
  ∀ n, (P15552962585376931747.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P7537917068691456737

`∩[A070752(n+1)+2, A327422(n+1)]`
-/

namespace A332483.P7537917068691456737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P7537917068691456737

namespace A332483

/-- `∩[A070752(n+1)+2, A327422(n+1)]` -/
def P7537917068691456737.Spec : Prop :=
  ∀ n, (P7537917068691456737.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P437717713388235196

`∩[A131503(n+1)-2, A327422(n+1)]`
-/

namespace A332483.P437717713388235196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131503 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P437717713388235196

namespace A332483

/-- `∩[A131503(n+1)-2, A327422(n+1)]` -/
def P437717713388235196.Spec : Prop :=
  ∀ n, (P437717713388235196.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P3690181308925816268

`∩[A246390(n), A258048(n)]`
-/

namespace A332483.P3690181308925816268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246390 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258048 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P3690181308925816268

namespace A332483

/-- `∩[A246390(n), A258048(n)]` -/
def P3690181308925816268.Spec : Prop :=
  ∀ n, (P3690181308925816268.a n : ℤ) = A332483 (n + 1)

end A332483

/-! ## A332483.P18303504519623773032

`∩[A054386(n+1), A277138(n+1)]`
-/

namespace A332483.P18303504519623773032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A332483.P18303504519623773032

namespace A332483

/-- `∩[A054386(n+1), A277138(n+1)]` -/
def P18303504519623773032.Spec : Prop :=
  ∀ n, (P18303504519623773032.a n : ℤ) = A332483 (n + 1)

end A332483

/-!
# A332484: Numbers k such that sin(k) > 0 or cos(k) > 0.

The programs for A332484, the canonical program `A332484.P16512893428305238701` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332484 has offset 1).

The definition of A332484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332484.P16512893428305238701

`lt[floor(sin(2*n)), sin(n)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332484

/-- `lt[floor(sin(2*n)), sin(n)]` -/
def P16512893428305238701.Spec : Prop :=
  ∀ n, (P16512893428305238701.a n : ℤ) = A332484 (n + 1)

theorem P16512893428305238701.correct : P16512893428305238701.Spec := by
  intro n
  simp only [A332484, Nat.add_sub_cancel]

end A332484

/-! ## A332484.P7346071654762963014

`lt[sin(2*n), ceil(sin(n))]`
-/

namespace A332484.P7346071654762963014
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332484.P7346071654762963014

namespace A332484

/-- `lt[sin(2*n), ceil(sin(n))]` -/
def P7346071654762963014.Spec : Prop :=
  ∀ n, (P7346071654762963014.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P7281677837750019933

`lt[floor(sin(n)), tan(n/2)]`
-/

namespace A332484.P7281677837750019933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n : ℝ)⌋

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332484.P7281677837750019933

namespace A332484

/-- `lt[floor(sin(n)), tan(n/2)]` -/
def P7281677837750019933.Spec : Prop :=
  ∀ n, (P7281677837750019933.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P5916539292649012366

`lt[n*tan(-(n/2)), n]`
-/

namespace A332484.P5916539292649012366
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.tan (-((n : ℚ) / 2) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332484.P5916539292649012366

namespace A332484

/-- `lt[n*tan(-(n/2)), n]` -/
def P5916539292649012366.Spec : Prop :=
  ∀ n, (P5916539292649012366.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P3306675021278221873

`lt[floor(acot(n))-1, tan(n/2)]`
-/

namespace A332484.P3306675021278221873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ - 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332484.P3306675021278221873

namespace A332484

/-- `lt[floor(acot(n))-1, tan(n/2)]` -/
def P3306675021278221873.Spec : Prop :=
  ∀ n, (P3306675021278221873.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P458894691703720816

`lt[-1, tan((n+1)/2)]+1`
-/

namespace A332484.P458894691703720816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n + 1 : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A332484.P458894691703720816

namespace A332484

/-- `lt[-1, tan((n+1)/2)]+1` -/
def P458894691703720816.Spec : Prop :=
  ∀ n, (P458894691703720816.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P6743730765604899228

`lt[abs(1-n)-n, tan(n/2)]`
-/

namespace A332484.P6743730765604899228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| - (n : ℤ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n : ℚ) / 2 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332484.P6743730765604899228

namespace A332484

/-- `lt[abs(1-n)-n, tan(n/2)]` -/
def P6743730765604899228.Spec : Prop :=
  ∀ n, (P6743730765604899228.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P16278832712899829714

`lt[1, n*tan(n/2)+n+1]`
-/

namespace A332484.P16278832712899829714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.tan ((n : ℚ) / 2 : ℝ) + (n + 1 : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332484.P16278832712899829714

namespace A332484

/-- `lt[1, n*tan(n/2)+n+1]` -/
def P16278832712899829714.Spec : Prop :=
  ∀ n, (P16278832712899829714.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P2493382081976924688

`∪[A070752(n+1), A332482(n+1)]`
-/

namespace A332484.P2493382081976924688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332484.P2493382081976924688

namespace A332484

/-- `∪[A070752(n+1), A332482(n+1)]` -/
def P2493382081976924688.Spec : Prop :=
  ∀ n, (P2493382081976924688.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P8693546522259976356

`∪[A070752(n+1), A277138(n+1)+2]`
-/

namespace A332484.P8693546522259976356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332484.P8693546522259976356

namespace A332484

/-- `∪[A070752(n+1), A277138(n+1)+2]` -/
def P8693546522259976356.Spec : Prop :=
  ∀ n, (P8693546522259976356.a n : ℤ) = A332484 (n + 1)

end A332484

/-! ## A332484.P2111344837098109436

`lt[A126564(n), sin(n)]`
-/

namespace A332484.P2111344837098109436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126564 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332484.P2111344837098109436

namespace A332484

/-- `lt[A126564(n), sin(n)]` -/
def P2111344837098109436.Spec : Prop :=
  ∀ n, (P2111344837098109436.a n : ℤ) = A332484 (n + 1)

theorem P2111344837098109436.correct : P2111344837098109436.Spec := by
  intro n
  simp only [A332484, Nat.add_sub_cancel, A332484.P2111344837098109436.f1, A332484.P2111344837098109436.f2, A332484.P2111344837098109436.a, A332484.P16512893428305238701.f1, A332484.P16512893428305238701.f2, A332484.P16512893428305238701.a, A126564, A126564.P576208583452320244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332484

/-! ## A332484.P8633830187020000502

`lt[A000493(2*n), sin(n)]`
-/

namespace A332484.P8633830187020000502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332484.P8633830187020000502

namespace A332484

/-- `lt[A000493(2*n), sin(n)]` -/
def P8633830187020000502.Spec : Prop :=
  ∀ n, (P8633830187020000502.a n : ℤ) = A332484 (n + 1)

theorem P8633830187020000502.correct : P8633830187020000502.Spec := by
  intro n
  simp only [A332484, Nat.add_sub_cancel, A332484.P8633830187020000502.f1, A332484.P8633830187020000502.f2, A332484.P8633830187020000502.a, A332484.P16512893428305238701.f1, A332484.P16512893428305238701.f2, A332484.P16512893428305238701.a, A000493, A000493.P9852377980788553267.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A332484

/-!
# A332485: Numbers k such that sin(k) > 0 or cos(k) < 0.

The programs for A332485, the canonical program `A332485.P16640361099024087395` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332485 has offset 1).

The definition of A332485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332485.P16640361099024087395

`lt[floor(cos(n)), sin(n)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332485

/-- `lt[floor(cos(n)), sin(n)]` -/
def P16640361099024087395.Spec : Prop :=
  ∀ n, (P16640361099024087395.a n : ℤ) = A332485 (n + 1)

theorem P16640361099024087395.correct : P16640361099024087395.Spec := by
  intro n
  simp only [A332485, Nat.add_sub_cancel]

end A332485

/-! ## A332485.P13642112816193659329

`lt[cos(n), ceil(sin(n))]`
-/

namespace A332485.P13642112816193659329
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332485.P13642112816193659329

namespace A332485

/-- `lt[cos(n), ceil(sin(n))]` -/
def P13642112816193659329.Spec : Prop :=
  ∀ n, (P13642112816193659329.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P10591696335855833988

`lt[cos(n), sin(n)+1]`
-/

namespace A332485.P10591696335855833988
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332485.P10591696335855833988

namespace A332485

/-- `lt[cos(n), sin(n)+1]` -/
def P10591696335855833988.Spec : Prop :=
  ∀ n, (P10591696335855833988.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P13228320800178055475

`lt[cos(n)-1, sin(n)]`
-/

namespace A332485.P13228320800178055475
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ) - 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332485.P13228320800178055475

namespace A332485

/-- `lt[cos(n)-1, sin(n)]` -/
def P13228320800178055475.Spec : Prop :=
  ∀ n, (P13228320800178055475.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P3853450997803942620

`lt[cos(n+1), abs(cos(n-1))]`
-/

namespace A332485.P3853450997803942620
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos ((n : ℤ) - 1 : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332485.P3853450997803942620

namespace A332485

/-- `lt[cos(n+1), abs(cos(n-1))]` -/
def P3853450997803942620.Spec : Prop :=
  ∀ n, (P3853450997803942620.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P1164799418298109690

`lt[sin(n+2), abs(sin(n-2))]`
-/

namespace A332485.P1164799418298109690
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 2 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin ((n : ℤ) - 2 : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332485.P1164799418298109690

namespace A332485

/-- `lt[sin(n+2), abs(sin(n-2))]` -/
def P1164799418298109690.Spec : Prop :=
  ∀ n, (P1164799418298109690.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P4474991672004180599

`lt[floor(sin(n+2)), sin(2*n)]`
-/

namespace A332485.P4474991672004180599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n + 2 : ℝ)⌋

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332485.P4474991672004180599

namespace A332485

/-- `lt[floor(sin(n+2)), sin(2*n)]` -/
def P4474991672004180599.Spec : Prop :=
  ∀ n, (P4474991672004180599.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P4438804113066906441

`lt[sin(n+2), ceil(sin(2*n))]`
-/

namespace A332485.P4438804113066906441
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (2 * n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332485.P4438804113066906441

namespace A332485

/-- `lt[sin(n+2), ceil(sin(2*n))]` -/
def P4438804113066906441.Spec : Prop :=
  ∀ n, (P4438804113066906441.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P8613678111455304684

`∪[A327422(n+1), A246396(n)]`
-/

namespace A332485.P8613678111455304684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P8613678111455304684

namespace A332485

/-- `∪[A327422(n+1), A246396(n)]` -/
def P8613678111455304684.Spec : Prop :=
  ∀ n, (P8613678111455304684.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P4730365181784319006

`∪[A070752(n+1), A277138(n+1)]`
-/

namespace A332485.P4730365181784319006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P4730365181784319006

namespace A332485

/-- `∪[A070752(n+1), A277138(n+1)]` -/
def P4730365181784319006.Spec : Prop :=
  ∀ n, (P4730365181784319006.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P3862010779636247817

`∪[A026310(n+1), A327422(n+1)]`
-/

namespace A332485.P3862010779636247817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P3862010779636247817

namespace A332485

/-- `∪[A026310(n+1), A327422(n+1)]` -/
def P3862010779636247817.Spec : Prop :=
  ∀ n, (P3862010779636247817.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P17187789661265380531

`∪[A070752(n+1), A327422(n+1)]`
-/

namespace A332485.P17187789661265380531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P17187789661265380531

namespace A332485

/-- `∪[A070752(n+1), A327422(n+1)]` -/
def P17187789661265380531.Spec : Prop :=
  ∀ n, (P17187789661265380531.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P7349022809487000325

`∪[A070752(n+1), A332483(n+1)]`
-/

namespace A332485.P7349022809487000325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332483 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P7349022809487000325

namespace A332485

/-- `∪[A070752(n+1), A332483(n+1)]` -/
def P7349022809487000325.Spec : Prop :=
  ∀ n, (P7349022809487000325.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P13416583378823136849

`∪[A246293(n+1), A327422(n+1)]`
-/

namespace A332485.P13416583378823136849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P13416583378823136849

namespace A332485

/-- `∪[A246293(n+1), A327422(n+1)]` -/
def P13416583378823136849.Spec : Prop :=
  ∀ n, (P13416583378823136849.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P8580997695096217078

`∪[A246440(n+1), A327422(n+1)]`
-/

namespace A332485.P8580997695096217078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246440 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P8580997695096217078

namespace A332485

/-- `∪[A246440(n+1), A327422(n+1)]` -/
def P8580997695096217078.Spec : Prop :=
  ∀ n, (P8580997695096217078.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P14121547985965315505

`∪[A277094(n+1), A327422(n+1)]`
-/

namespace A332485.P14121547985965315505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277094 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P14121547985965315505

namespace A332485

/-- `∪[A277094(n+1), A327422(n+1)]` -/
def P14121547985965315505.Spec : Prop :=
  ∀ n, (P14121547985965315505.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P10242542985416906556

`∪[A327422(n+1), A332481(n+1)]`
-/

namespace A332485.P10242542985416906556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P10242542985416906556

namespace A332485

/-- `∪[A327422(n+1), A332481(n+1)]` -/
def P10242542985416906556.Spec : Prop :=
  ∀ n, (P10242542985416906556.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P12844572416407593131

`∪[A070751(n+1)-2, A327422(n+1)]`
-/

namespace A332485.P12844572416407593131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P12844572416407593131

namespace A332485

/-- `∪[A070751(n+1)-2, A327422(n+1)]` -/
def P12844572416407593131.Spec : Prop :=
  ∀ n, (P12844572416407593131.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P1473107698128661413

`lt[cos(n), A126565(n)]`
-/

namespace A332485.P1473107698128661413
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332485.P1473107698128661413

namespace A332485

/-- `lt[cos(n), A126565(n)]` -/
def P1473107698128661413.Spec : Prop :=
  ∀ n, (P1473107698128661413.a n : ℤ) = A332485 (n + 1)

end A332485

/-! ## A332485.P12566259707565215961

`∪[A070752(n+1), A246444(n+1)]`
-/

namespace A332485.P12566259707565215961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332485.P12566259707565215961

namespace A332485

/-- `∪[A070752(n+1), A246444(n+1)]` -/
def P12566259707565215961.Spec : Prop :=
  ∀ n, (P12566259707565215961.a n : ℤ) = A332485 (n + 1)

end A332485

/-!
# A332486: Numbers k such that sin(k) < 0 or cos(k) > 0.

The programs for A332486, the canonical program `A332486.P9525781458218103175` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332486 has offset 1).

The definition of A332486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332486.P9525781458218103175

`lt[n*tan(n/2), n]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332486

/-- `lt[n*tan(n/2), n]` -/
def P9525781458218103175.Spec : Prop :=
  ∀ n, (P9525781458218103175.a n : ℤ) = A332486 (n + 1)

theorem P9525781458218103175.correct : P9525781458218103175.Spec := by
  intro n
  simp only [A332486, Nat.add_sub_cancel]

end A332486

/-! ## A332486.P16835152736986462415

`lt[floor(sin(n)), sin(2*n)]`
-/

namespace A332486.P16835152736986462415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (n : ℝ)⌋

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332486.P16835152736986462415

namespace A332486

/-- `lt[floor(sin(n)), sin(2*n)]` -/
def P16835152736986462415.Spec : Prop :=
  ∀ n, (P16835152736986462415.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P15994205152719329582

`lt[sin(n), ceil(sin(2*n))]`
-/

namespace A332486.P15994205152719329582
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (2 * n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332486.P15994205152719329582

namespace A332486

/-- `lt[sin(n), ceil(sin(2*n))]` -/
def P15994205152719329582.Spec : Prop :=
  ∀ n, (P15994205152719329582.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P13972798607951884478

`comp[n*floor(sin(n)-cos(n))]`
-/

namespace A332486.P13972798607951884478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊Real.sin (n : ℝ) - Real.cos (n : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A332486.P13972798607951884478

namespace A332486

/-- `comp[n*floor(sin(n)-cos(n))]` -/
def P13972798607951884478.Spec : Prop :=
  ∀ n, (P13972798607951884478.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P14889439145854224278

`lt[tan((n+1)/2), 1]+1`
-/

namespace A332486.P14889439145854224278
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan ((n + 1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A332486.P14889439145854224278

namespace A332486

/-- `lt[tan((n+1)/2), 1]+1` -/
def P14889439145854224278.Spec : Prop :=
  ∀ n, (P14889439145854224278.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P5445775904820252759

`∪[A070751(n+1), A277137(n+1)]`
-/

namespace A332486.P5445775904820252759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332486.P5445775904820252759

namespace A332486

/-- `∪[A070751(n+1), A277137(n+1)]` -/
def P5445775904820252759.Spec : Prop :=
  ∀ n, (P5445775904820252759.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P8760711967791823033

`∪[A070751(n+1), A327422(n+1)]`
-/

namespace A332486.P8760711967791823033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332486.P8760711967791823033

namespace A332486

/-- `∪[A070751(n+1), A327422(n+1)]` -/
def P8760711967791823033.Spec : Prop :=
  ∀ n, (P8760711967791823033.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P9486617708121355938

`∪[A070751(n+1), A332480(n+1)]`
-/

namespace A332486.P9486617708121355938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332480 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332486.P9486617708121355938

namespace A332486

/-- `∪[A070751(n+1), A332480(n+1)]` -/
def P9486617708121355938.Spec : Prop :=
  ∀ n, (P9486617708121355938.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P9611544548788024890

`∪[A277095(n+1), A327422(n+1)]`
-/

namespace A332486.P9611544548788024890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332486.P9611544548788024890

namespace A332486

/-- `∪[A277095(n+1), A327422(n+1)]` -/
def P9611544548788024890.Spec : Prop :=
  ∀ n, (P9611544548788024890.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P12845044812694725733

`∪[A327422(n+1), A332482(n+1)]`
-/

namespace A332486.P12845044812694725733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332486.P12845044812694725733

namespace A332486

/-- `∪[A327422(n+1), A332482(n+1)]` -/
def P12845044812694725733.Spec : Prop :=
  ∀ n, (P12845044812694725733.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P14148733012362859962

`∪[A327422(n+1), A363089(n+1)]`
-/

namespace A332486.P14148733012362859962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332486.P14148733012362859962

namespace A332486

/-- `∪[A327422(n+1), A363089(n+1)]` -/
def P14148733012362859962.Spec : Prop :=
  ∀ n, (P14148733012362859962.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P14862287616744012261

`lt[A000493(n), sin(2*n)]`
-/

namespace A332486.P14862287616744012261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332486.P14862287616744012261

namespace A332486

/-- `lt[A000493(n), sin(2*n)]` -/
def P14862287616744012261.Spec : Prop :=
  ∀ n, (P14862287616744012261.a n : ℤ) = A332486 (n + 1)

end A332486

/-! ## A332486.P14345860112127351174

`lt[sin(n), A126565(n)]`
-/

namespace A332486.P14345860112127351174
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332486.P14345860112127351174

namespace A332486

/-- `lt[sin(n), A126565(n)]` -/
def P14345860112127351174.Spec : Prop :=
  ∀ n, (P14345860112127351174.a n : ℤ) = A332486 (n + 1)

end A332486

/-!
# A332487: Numbers k such that sin(k) < 0 or cos(k) < 0.

The programs for A332487, the canonical program `A332487.P3167386670415995433` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332487 has offset 1).

The definition of A332487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332487.P3167386670415995433

`lt[sin(n)+cos(n), 1]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332487

/-- `lt[sin(n)+cos(n), 1]` -/
def P3167386670415995433.Spec : Prop :=
  ∀ n, (P3167386670415995433.a n : ℤ) = A332487 (n + 1)

theorem P3167386670415995433.correct : P3167386670415995433.Spec := by
  intro n
  simp only [A332487, Nat.add_sub_cancel]

end A332487

/-! ## A332487.P3155178786022545336

`lt[floor(cos(n)), sin(-n)]`
-/

namespace A332487.P3155178786022545336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (n : ℝ)⌋

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (-(n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332487.P3155178786022545336

namespace A332487

/-- `lt[floor(cos(n)), sin(-n)]` -/
def P3155178786022545336.Spec : Prop :=
  ∀ n, (P3155178786022545336.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P6468588279170352595

`lt[sin(n), abs(cos(n)-1)]`
-/

namespace A332487.P6468588279170352595
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n : ℝ) - 1|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332487.P6468588279170352595

namespace A332487

/-- `lt[sin(n), abs(cos(n)-1)]` -/
def P6468588279170352595.Spec : Prop :=
  ∀ n, (P6468588279170352595.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P13362806062903534252

`lt[cos(n), (sin(n)-1)²]`
-/

namespace A332487.P13362806062903534252
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sin (n : ℝ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332487.P13362806062903534252

namespace A332487

/-- `lt[cos(n), (sin(n)-1)²]` -/
def P13362806062903534252.Spec : Prop :=
  ∀ n, (P13362806062903534252.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P13869066181347743512

`lt[floor(sin(2*n)), sin(-n)]`
-/

namespace A332487.P13869066181347743512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sin (2 * n : ℝ)⌋

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (-(n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A332487.P13869066181347743512

namespace A332487

/-- `lt[floor(sin(2*n)), sin(-n)]` -/
def P13869066181347743512.Spec : Prop :=
  ∀ n, (P13869066181347743512.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P2202215363596569819

`lt[cot((n+1)/2), 1]+1`
-/

namespace A332487.P2202215363596569819
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot ((n + 1 : ℚ) / 2 : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A332487.P2202215363596569819

namespace A332487

/-- `lt[cot((n+1)/2), 1]+1` -/
def P2202215363596569819.Spec : Prop :=
  ∀ n, (P2202215363596569819.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P5046301500566209608

`lt[cos(n-1), abs(cos(n+1))]`
-/

namespace A332487.P5046301500566209608
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos ((n : ℤ) - 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.cos (n + 1 : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332487.P5046301500566209608

namespace A332487

/-- `lt[cos(n-1), abs(cos(n+1))]` -/
def P5046301500566209608.Spec : Prop :=
  ∀ n, (P5046301500566209608.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P3835408687595924131

`lt[sin(n+1), abs(sin(n-1))]`
-/

namespace A332487.P3835408687595924131
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n + 1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sin ((n : ℤ) - 1 : ℝ)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A332487.P3835408687595924131

namespace A332487

/-- `lt[sin(n+1), abs(sin(n-1))]` -/
def P3835408687595924131.Spec : Prop :=
  ∀ n, (P3835408687595924131.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P64968210856922684

`∪[A070751(n+1), A246396(n)]`
-/

namespace A332487.P64968210856922684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246396 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332487.P64968210856922684

namespace A332487

/-- `∪[A070751(n+1), A246396(n)]` -/
def P64968210856922684.Spec : Prop :=
  ∀ n, (P64968210856922684.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P18195608671174479027

`∪[A070751(n+1), A332481(n+1)]`
-/

namespace A332487.P18195608671174479027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332487.P18195608671174479027

namespace A332487

/-- `∪[A070751(n+1), A332481(n+1)]` -/
def P18195608671174479027.Spec : Prop :=
  ∀ n, (P18195608671174479027.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P15344933114919981645

`lt[cos(n), A000493(n)²]`
-/

namespace A332487.P15344933114919981645
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000493 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332487.P15344933114919981645

namespace A332487

/-- `lt[cos(n), A000493(n)²]` -/
def P15344933114919981645.Spec : Prop :=
  ∀ n, (P15344933114919981645.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P13997916751473173367

`lt[sin(n), A126564(n)²]`
-/

namespace A332487.P13997916751473173367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126564 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A332487.P13997916751473173367

namespace A332487

/-- `lt[sin(n), A126564(n)²]` -/
def P13997916751473173367.Spec : Prop :=
  ∀ n, (P13997916751473173367.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P9001325889760263006

`∪[A070751(n+1), A246444(n+1)]`
-/

namespace A332487.P9001325889760263006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246444 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332487.P9001325889760263006

namespace A332487

/-- `∪[A070751(n+1), A246444(n+1)]` -/
def P9001325889760263006.Spec : Prop :=
  ∀ n, (P9001325889760263006.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P10740546344402073655

`∪[A246444(n+1), A277095(n+1)]`
-/

namespace A332487.P10740546344402073655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277095 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332487.P10740546344402073655

namespace A332487

/-- `∪[A246444(n+1), A277095(n+1)]` -/
def P10740546344402073655.Spec : Prop :=
  ∀ n, (P10740546344402073655.a n : ℤ) = A332487 (n + 1)

end A332487

/-! ## A332487.P14851848753810339657

`∪[A246444(n+1), A332482(n+1)]`
-/

namespace A332487.P14851848753810339657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A332487.P14851848753810339657

namespace A332487

/-- `∪[A246444(n+1), A332482(n+1)]` -/
def P14851848753810339657.Spec : Prop :=
  ∀ n, (P14851848753810339657.a n : ℤ) = A332487 (n + 1)

end A332487

/-!
# A332488: a(n) = least positive integer k such that sin(n*k)*sin(n*k + k) < 0.

The programs for A332488, there is no canonical definition to state claims against.
-/

/-! ## A332488.P8150138020416417358

`floor(π/acos(cos(n+1)))`
-/

namespace A332488.P8150138020416417358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi / Real.arccos (Real.cos (n + 1 : ℝ))⌋

end

end A332488.P8150138020416417358

/-! ## A332488.P2239146542548361361

`A002024(A109234(ceil(cot((n+1)/2)²)))`
-/

namespace A332488.P2239146542548361361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A109234 ⌈Real.cot ((n + 1 : ℚ) / 2 : ℝ) ^ 2⌉.toNat).toNat

end

end A332488.P2239146542548361361

/-!
# A332489: Least positive integer k such that cos(n*k)*cos(n*k + k) < 0.

The programs for A332489, there is no canonical definition to state claims against.
-/

/-! ## A332489.P5945928968167104043

`gcd(∑[A350826(n+1)], A033320(n))`
-/

namespace A332489.P5945928968167104043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A033320 n)

end

end A332489.P5945928968167104043

/-! ## A332489.P13348545755955816983

`gcd(A024720(n), A024723(A024769(n+1)))`
-/

namespace A332489.P13348545755955816983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024720 n) (A024723 (A024769 (n + 1)).toNat)

end

end A332489.P13348545755955816983

/-! ## A332489.P2409719679297210215

`gcd(A141256((5*n+3)²), A225638(5*n+3))`
-/

namespace A332489.P2409719679297210215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141256 ((5 * n + 3) ^ 2)) (A225638 (5 * n + 3))

end

end A332489.P2409719679297210215

/-! ## A332489.P2481825529908766286

`gcd(A205999(A163485(n)), A276581(2*n))`
-/

namespace A332489.P2481825529908766286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A205999 (A163485 n).toNat) (A276581 (2 * n))

end

end A332489.P2481825529908766286

/-! ## A332489.P9242282749853745751

`A118914(A281458(3*n+4)+A000009(3*(n+1)))`
-/

namespace A332489.P9242282749853745751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A281458 (3 * n + 4) + A000009 (3 * (n + 1))).toNat

end

end A332489.P9242282749853745751

/-!
# A332490: a(n) = Sum_{k=1..n} k * ceiling(n/k).

The programs for A332490, the canonical program `A332490.P804197257831255690` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332490 has offset 1).

The definition of A332490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332490.P804197257831255690

`∑[∑{d}[n, #]+1+n]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332490

/-- `∑[∑{d}[n, #]+1+n]` -/
def P804197257831255690.Spec : Prop :=
  ∀ n, (P804197257831255690.a n : ℤ) = A332490 (n + 1)

theorem P804197257831255690.correct : P804197257831255690.Spec := by
  intro n
  simp only [A332490, Nat.add_sub_cancel]

end A332490

/-! ## A332490.P16629848928847009821

`∑[∑{d}[n, #]-xor(n, -1)]`
-/

namespace A332490.P16629848928847009821
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332490.P16629848928847009821

namespace A332490

/-- `∑[∑{d}[n, #]-xor(n, -1)]` -/
def P16629848928847009821.Spec : Prop :=
  ∀ n, P16629848928847009821.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P4536623900374940910

`∑[∑{d}[n, #]-(n-Δ[n²])]`
-/

namespace A332490.P4536623900374940910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((n : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332490.P4536623900374940910

namespace A332490

/-- `∑[∑{d}[n, #]-(n-Δ[n²])]` -/
def P4536623900374940910.Spec : Prop :=
  ∀ n, P4536623900374940910.a n = A332490 (n + 1)

theorem P4536623900374940910.correct : P4536623900374940910.Spec := by
  intro n
  simp only [A332490, Nat.add_sub_cancel, A332490.P4536623900374940910.f2, A332490.P4536623900374940910.f3, A332490.P4536623900374940910.f1, A332490.P4536623900374940910.a, A332490.P804197257831255690.f2, A332490.P804197257831255690.f1, A332490.P804197257831255690.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A332490

/-! ## A332490.P14509817601647918239

`∑[record[xor(1, n)]-(n-∑{d}[n, #])]`
-/

namespace A332490.P14509817601647918239
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) - ((n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332490.P14509817601647918239

namespace A332490

/-- `∑[record[xor(1, n)]-(n-∑{d}[n, #])]` -/
def P14509817601647918239.Spec : Prop :=
  ∀ n, P14509817601647918239.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P7350859607789323289

`∑[2*n-(n-1-∑{d}[n, #])]`
-/

namespace A332490.P7350859607789323289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1 - ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332490.P7350859607789323289

namespace A332490

/-- `∑[2*n-(n-1-∑{d}[n, #])]` -/
def P7350859607789323289.Spec : Prop :=
  ∀ n, P7350859607789323289.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P17459583860412049783

`record[(1-n)²]-∑[n-∑{d}[n, #]]`
-/

namespace A332490.P17459583860412049783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A332490.P17459583860412049783

namespace A332490

/-- `record[(1-n)²]-∑[n-∑{d}[n, #]]` -/
def P17459583860412049783.Spec : Prop :=
  ∀ n, P17459583860412049783.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P15586638650015844399

`n+1+∑{d}[n, #]+a(n-1)` with `a(0)=1`
-/

namespace A332490.P15586638650015844399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  n + 1 + (∑ d ∈ Nat.divisors (f1 n), d + a (n - 1))

end

end A332490.P15586638650015844399

namespace A332490

/-- `n+1+∑{d}[n, #]+a(n-1)` -/
def P15586638650015844399.Spec : Prop :=
  ∀ n, (P15586638650015844399.a n : ℤ) = A332490 (n + 1)

end A332490

/-! ## A332490.P13514508853898388796

`∑[n]+A160664(n)+n`
-/

namespace A332490.P13514508853898388796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A160664 n + (n : ℤ))

end

end A332490.P13514508853898388796

namespace A332490

/-- `∑[n]+A160664(n)+n` -/
def P13514508853898388796.Spec : Prop :=
  ∀ n, P13514508853898388796.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P2340542795587371619

`A244048(n+1)+(n+1)²`
-/

namespace A332490.P2340542795587371619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244048 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A332490.P2340542795587371619

namespace A332490

/-- `A244048(n+1)+(n+1)²` -/
def P2340542795587371619.Spec : Prop :=
  ∀ n, P2340542795587371619.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P9886970662986768037

`∑[A000203(ceil(abs(γ-n)))+n]+n`
-/

namespace A332490.P9886970662986768037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A332490.P9886970662986768037

namespace A332490

/-- `∑[A000203(ceil(abs(γ-n)))+n]+n` -/
def P9886970662986768037.Spec : Prop :=
  ∀ n, P9886970662986768037.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P2698377797673716952

`A160664(n)+A000096(n)`
-/

namespace A332490.P2698377797673716952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n + A000096 n

end

end A332490.P2698377797673716952

namespace A332490

/-- `A160664(n)+A000096(n)` -/
def P2698377797673716952.Spec : Prop :=
  ∀ n, P2698377797673716952.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P16662834204130663391

`A024916(n+1)+A024816(n+1)`
-/

namespace A332490.P16662834204130663391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + A024816 (n + 1)

end

end A332490.P16662834204130663391

namespace A332490

/-- `A024916(n+1)+A024816(n+1)` -/
def P16662834204130663391.Spec : Prop :=
  ∀ n, P16662834204130663391.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P6686733128167637485

`A332569(n+1)-A153485(n+1)`
-/

namespace A332490.P6686733128167637485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332569 (n + 1) - A153485 (n + 1)

end

end A332490.P6686733128167637485

namespace A332490

/-- `A332569(n+1)-A153485(n+1)` -/
def P6686733128167637485.Spec : Prop :=
  ∀ n, P6686733128167637485.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P8023979725937174003

`A024816(n+1)+∑[∑[A340793(n+1)]]`
-/

namespace A332490.P8023979725937174003
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332490.P8023979725937174003

namespace A332490

/-- `A024816(n+1)+∑[∑[A340793(n+1)]]` -/
def P8023979725937174003.Spec : Prop :=
  ∀ n, P8023979725937174003.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P11725429252584988607

`A153485(n+1)+A353190(n+1)+n²`
-/

namespace A332490.P11725429252584988607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (n + 1) + (A353190 (n + 1) + (n ^ 2 : ℤ))

end

end A332490.P11725429252584988607

namespace A332490

/-- `A153485(n+1)+A353190(n+1)+n²` -/
def P11725429252584988607.Spec : Prop :=
  ∀ n, P11725429252584988607.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P326472476071149043

`(n+1)²+A024816(n+1)-A004125(n+1)`
-/

namespace A332490.P326472476071149043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A024816 (n + 1) - A004125 (n + 1))

end

end A332490.P326472476071149043

namespace A332490

/-- `(n+1)²+A024816(n+1)-A004125(n+1)` -/
def P326472476071149043.Spec : Prop :=
  ∀ n, P326472476071149043.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P14181964826250018771

`A000217(n+1)+(n+1)²-A123327(n+1)`
-/

namespace A332490.P14181964826250018771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (((n + 1) ^ 2 : ℤ) - A123327 (n + 1))

end

end A332490.P14181964826250018771

namespace A332490

/-- `A000217(n+1)+(n+1)²-A123327(n+1)` -/
def P14181964826250018771.Spec : Prop :=
  ∀ n, P14181964826250018771.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P869135750211212124

`(n+1)²+A153485(n+1)-A001065(n+1)`
-/

namespace A332490.P869135750211212124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) + (A153485 (n + 1) - A001065 (n + 1))

end

end A332490.P869135750211212124

namespace A332490

/-- `(n+1)²+A153485(n+1)-A001065(n+1)` -/
def P869135750211212124.Spec : Prop :=
  ∀ n, P869135750211212124.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P7312925529527602747

`A000217(n+1)+A153485(n+1)+A024816(n+1)`
-/

namespace A332490.P7312925529527602747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A153485 (n + 1) + A024816 (n + 1))

end

end A332490.P7312925529527602747

namespace A332490

/-- `A000217(n+1)+A153485(n+1)+A024816(n+1)` -/
def P7312925529527602747.Spec : Prop :=
  ∀ n, P7312925529527602747.a n = A332490 (n + 1)

end A332490

/-! ## A332490.P7730141448857367029

`A000217(n+1)+A024916(n+1)-A000203(n+1)`
-/

namespace A332490.P7730141448857367029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A024916 (n + 1) - A000203 (n + 1))

end

end A332490.P7730141448857367029

namespace A332490

/-- `A000217(n+1)+A024916(n+1)-A000203(n+1)` -/
def P7730141448857367029.Spec : Prop :=
  ∀ n, P7730141448857367029.a n = A332490 (n + 1)

end A332490

/-!
# A332491: a(n) = 2*a(n-1) + a(n-3), where a(0) = 3, a(1) = 1, a(2) = 2.

The programs for A332491, the canonical program `A332491.P14381136416238455480` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332491 has offset 0).

The definition of A332491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+a(n-3)` (program `A332491.P14381136416238455480`, by `A332491.P14381136416238455480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A332491.P14381136416238455480

`2*a(n-1)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332491

/-- `2*a(n-1)+a(n-3)` -/
def P14381136416238455480.Spec : Prop :=
  ∀ n, (P14381136416238455480.a n : ℤ) = A332491 n

theorem P14381136416238455480.correct : P14381136416238455480.Spec := by
  intro n
  simp only [A332491]

end A332491

/-! ## A332491.P8470599271630786364

`ogf((-3+5x)/(-1+2x+x^3))`
-/

namespace A332491.P8470599271630786364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5] [1, -2, 0, -1] n

end

end A332491.P8470599271630786364

namespace A332491

/-- `ogf((-3+5x)/(-1+2x+x^3))` -/
def P8470599271630786364.Spec : Prop :=
  ∀ n, P8470599271630786364.a n = A332491 n

end A332491

/-! ## A332491.P15798455937078286476

`a(n-1)+a(n-1)+a(n-3)` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A332491.P15798455937078286476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  a (n - 1) + (a (n - 1) + a (n - 3))

end

end A332491.P15798455937078286476

namespace A332491

/-- `a(n-1)+a(n-1)+a(n-3)` -/
def P15798455937078286476.Spec : Prop :=
  ∀ n, (P15798455937078286476.a n : ℤ) = A332491 n

theorem P15798455937078286476.correct : P15798455937078286476.Spec := by
  intro n
  simp only [A332491, Nat.add_sub_cancel, A332491.P15798455937078286476.a, A332491.P14381136416238455480.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A332491

/-! ## A332491.P16649323638444095915

`3*a(n-1)-(a(n-1)-a(n-3))` with `a(0)=3, a(1)=1, a(2)=2`
-/

namespace A332491.P16649323638444095915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 2] fun n a =>
  3 * a (n - 1) - (a (n - 1) - a (n - 3))

end

end A332491.P16649323638444095915

namespace A332491

/-- `3*a(n-1)-(a(n-1)-a(n-3))` -/
def P16649323638444095915.Spec : Prop :=
  ∀ n, P16649323638444095915.a n = A332491 n

end A332491

/-! ## A332491.P5120834058981597553

`A052980(n)+A332647(n)-A008998(n)`
-/

namespace A332491.P5120834058981597553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 n + (A332647 n - A008998 n)

end

end A332491.P5120834058981597553

namespace A332491

/-- `A052980(n)+A332647(n)-A008998(n)` -/
def P5120834058981597553.Spec : Prop :=
  ∀ n, P5120834058981597553.a n = A332491 n

end A332491

/-! ## A332491.P10158122863119121302

`A008998(n)+A332647(n)-A214260(n+1)`
-/

namespace A332491.P10158122863119121302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n + (A332647 n - A214260 (n + 1))

end

end A332491.P10158122863119121302

namespace A332491

/-- `A008998(n)+A332647(n)-A214260(n+1)` -/
def P10158122863119121302.Spec : Prop :=
  ∀ n, P10158122863119121302.a n = A332491 n

end A332491

/-! ## A332491.P17960955072144144982

`A052980(n+1)+A332647(n)-A193641(n+1)`
-/

namespace A332491.P17960955072144144982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (n + 1) + (A332647 n - A193641 (n + 1))

end

end A332491.P17960955072144144982

namespace A332491

/-- `A052980(n+1)+A332647(n)-A193641(n+1)` -/
def P17960955072144144982.Spec : Prop :=
  ∀ n, P17960955072144144982.a n = A332491 n

end A332491

/-! ## A332491.P17755894741947261729

`Δ[A183304(n+1)-Δ[A285184(n)]]`
-/

namespace A332491.P17755894741947261729
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183304 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A332491.P17755894741947261729

namespace A332491

/-- `Δ[A183304(n+1)-Δ[A285184(n)]]` -/
def P17755894741947261729.Spec : Prop :=
  ∀ n, P17755894741947261729.a n = A332491 n

end A332491

/-!
# A332495: a(n-2) = a(n-6) + 5*(1+2*n) with a(0)=0, a(1)=2, a(2)=7, a(3)=15 for n>=4.

The programs for A332495, the canonical program `A332495.P7396450986801341155` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332495 has offset 0).

The definition of A332495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A332495.P7396450986801341155

`3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=7, a(3)=15, a(4)=25`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A332495

/-- `3*a(n-1)-4*a(n-2)+4*a(n-3)-3*a(n-4)+a(n-5)` -/
def P7396450986801341155.Spec : Prop :=
  ∀ n, P7396450986801341155.a n = A332495 n

theorem P7396450986801341155.correct : P7396450986801341155.Spec := by
  intro n
  simp only [A332495]

end A332495

/-! ## A332495.P5785122421930496552

`floor(5/2*∑[n])`
-/

namespace A332495.P5785122421930496552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)⌋

end

end A332495.P5785122421930496552

namespace A332495

/-- `floor(5/2*∑[n])` -/
def P5785122421930496552.Spec : Prop :=
  ∀ n, P5785122421930496552.a n = A332495 n

end A332495

/-! ## A332495.P2234792358585006009

`round(sqrt(C(∑[5*n], 2)/2))`
-/

namespace A332495.P2234792358585006009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℚ) / 2 : ℝ))

end

end A332495.P2234792358585006009

namespace A332495

/-- `round(sqrt(C(∑[5*n], 2)/2))` -/
def P2234792358585006009.Spec : Prop :=
  ∀ n, P2234792358585006009.a n = A332495 n

end A332495

/-! ## A332495.P17353381782368864652

`∑[∑[and(2, n)!]-1+n]`
-/

namespace A332495.P17353381782368864652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 2 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P17353381782368864652

namespace A332495

/-- `∑[∑[and(2, n)!]-1+n]` -/
def P17353381782368864652.Spec : Prop :=
  ∀ n, P17353381782368864652.a n = A332495 n

end A332495

/-! ## A332495.P10256675187033246610

`∑[∑[char[or(2, n)]]+2*n]`
-/

namespace A332495.P10256675187033246610
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P10256675187033246610

namespace A332495

/-- `∑[∑[char[or(2, n)]]+2*n]` -/
def P10256675187033246610.Spec : Prop :=
  ∀ n, (P10256675187033246610.a n : ℤ) = A332495 n

end A332495

/-! ## A332495.P3259578342301100630

`∑[a(n-4)+10]` with `a(0)=0, a(1)=2, a(2)=5, a(3)=8`
-/

namespace A332495.P3259578342301100630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 5, 8] fun n f1 =>
  f1 (n - 4) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P3259578342301100630

namespace A332495

/-- `∑[a(n-4)+10]` -/
def P3259578342301100630.Spec : Prop :=
  ∀ n, (P3259578342301100630.a n : ℤ) = A332495 n

end A332495

/-! ## A332495.P10611730080972491933

`∑[∑[5-a(n-2)]]` with `a(0)=0, a(1)=2, a(2)=3`
-/

namespace A332495.P10611730080972491933
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 3] fun n f2 =>
  5 - f2 (n - 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P10611730080972491933

namespace A332495

/-- `∑[∑[5-a(n-2)]]` -/
def P10611730080972491933.Spec : Prop :=
  ∀ n, P10611730080972491933.a n = A332495 n

end A332495

/-! ## A332495.P9301951330172524269

`∑[∑[and(2, n)/2]+2*n]`
-/

namespace A332495.P9301951330172524269
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (2 * n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P9301951330172524269

namespace A332495

/-- `∑[∑[and(2, n)/2]+2*n]` -/
def P9301951330172524269.Spec : Prop :=
  ∀ n, P9301951330172524269.a n = (A332495 n : ℚ)

end A332495

/-! ## A332495.P14260914579803617919

`floor(∑[n/2])+lcm(n, n+1)`
-/

namespace A332495.P14260914579803617919
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ + (Nat.lcm n (n + 1) : ℤ)

end

end A332495.P14260914579803617919

namespace A332495

/-- `floor(∑[n/2])+lcm(n, n+1)` -/
def P14260914579803617919.Spec : Prop :=
  ∀ n, P14260914579803617919.a n = A332495 n

end A332495

/-! ## A332495.P4410780648675380910

`∑[∑[gcd(2, ∑[n+1])+1]-2]`
-/

namespace A332495.P4410780648675380910
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f3 j) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P4410780648675380910

namespace A332495

/-- `∑[∑[gcd(2, ∑[n+1])+1]-2]` -/
def P4410780648675380910.Spec : Prop :=
  ∀ n, P4410780648675380910.a n = A332495 n

end A332495

/-! ## A332495.P13382025416807213439

`∑[∑[3-∑[n+1]%2]-2]`
-/

namespace A332495.P13382025416807213439
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((∑ j ∈ Finset.range (n + 1), f3 j) % 2 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P13382025416807213439

namespace A332495

/-- `∑[∑[3-∑[n+1]%2]-2]` -/
def P13382025416807213439.Spec : Prop :=
  ∀ n, P13382025416807213439.a n = A332495 n

end A332495

/-! ## A332495.P678908799124311095

`∑[∪[2*n+1, 3*n]+n]`
-/

namespace A332495.P678908799124311095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P678908799124311095

namespace A332495

/-- `∑[∪[2*n+1, 3*n]+n]` -/
def P678908799124311095.Spec : Prop :=
  ∀ n, (P678908799124311095.a n : ℤ) = A332495 n

end A332495

/-! ## A332495.P8952108924757345684

`A397978(n)+n`
-/

namespace A332495.P8952108924757345684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397978 n + (n : ℤ)

end

end A332495.P8952108924757345684

namespace A332495

/-- `A397978(n)+n` -/
def P8952108924757345684.Spec : Prop :=
  ∀ n, P8952108924757345684.a n = A332495 n

end A332495

/-! ## A332495.P8150372902184115397

`A281026(n)+∑[n]`
-/

namespace A332495.P8150372902184115397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281026 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A332495.P8150372902184115397

namespace A332495

/-- `A281026(n)+∑[n]` -/
def P8150372902184115397.Spec : Prop :=
  ∀ n, P8150372902184115397.a n = A332495 n

end A332495

/-! ## A332495.P4953426294789377366

`round(A005891(n)/2)-1`
-/

namespace A332495.P4953426294789377366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005891 n : ℚ) / 2) - 1

end

end A332495.P4953426294789377366

namespace A332495

/-- `round(A005891(n)/2)-1` -/
def P4953426294789377366.Spec : Prop :=
  ∀ n, P4953426294789377366.a n = A332495 n

end A332495

/-! ## A332495.P11820447189650419950

`∑[A047273(n+1)+n]`
-/

namespace A332495.P11820447189650419950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A332495.P11820447189650419950

namespace A332495

/-- `∑[A047273(n+1)+n]` -/
def P11820447189650419950.Spec : Prop :=
  ∀ n, P11820447189650419950.a n = A332495 n

end A332495

/-! ## A332495.P17236387618568361267

`∑[n]+A268810(n)/2`
-/

namespace A332495.P17236387618568361267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A268810 n : ℚ) / 2

end

end A332495.P17236387618568361267

namespace A332495

/-- `∑[n]+A268810(n)/2` -/
def P17236387618568361267.Spec : Prop :=
  ∀ n, P17236387618568361267.a n = (A332495 n : ℚ)

end A332495

/-! ## A332495.P333718439655686119

`∑[n]+A231559(n)+n`
-/

namespace A332495.P333718439655686119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A231559 n + (n : ℤ))

end

end A332495.P333718439655686119

namespace A332495

/-- `∑[n]+A231559(n)+n` -/
def P333718439655686119.Spec : Prop :=
  ∀ n, P333718439655686119.a n = A332495 n

end A332495

/-! ## A332495.P13962285876734639209

`Δ[n²]²-A301709(n)`
-/

namespace A332495.P13962285876734639209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - A301709 n

end

end A332495.P13962285876734639209

namespace A332495

/-- `Δ[n²]²-A301709(n)` -/
def P13962285876734639209.Spec : Prop :=
  ∀ n, P13962285876734639209.a n = A332495 n

end A332495

/-!
# A332496: Triangular array T(n,k): the number of not necessarily proper colorings of the complete graph on n unlabeled vertices minus an edge using exactly k colors.

The programs for A332496, the canonical program `A332496.P9101858789091568414` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332496 has offset 1).

The definition of A332496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332496.P9101858789091568414

`A124847(n+1)-A127954(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A332496

/-- `A124847(n+1)-A127954(n+1)` -/
def P9101858789091568414.Spec : Prop :=
  ∀ n, P9101858789091568414.a n = A332496 (n + 1)

theorem P9101858789091568414.correct : P9101858789091568414.Spec := by
  intro n
  simp only [A332496, Nat.add_sub_cancel]

end A332496

/-! ## A332496.P18358512053027019324

`A267849(n)/A233543(n)-A127954(n+1)`
-/

namespace A332496.P18358512053027019324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267849 n : ℚ) / (A233543 n : ℚ) - (A127954 (n + 1) : ℚ)

end

end A332496.P18358512053027019324

namespace A332496

/-- `A267849(n)/A233543(n)-A127954(n+1)` -/
def P18358512053027019324.Spec : Prop :=
  ∀ n, P18358512053027019324.a n = (A332496 (n + 1) : ℚ)

end A332496

/-! ## A332496.P17839266469297252398

`A124847(n+1)-A097805(n)*A131818(n+1)`
-/

namespace A332496.P17839266469297252398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124847 (n + 1) - A097805 n * A131818 (n + 1)

end

end A332496.P17839266469297252398

namespace A332496

/-- `A124847(n+1)-A097805(n)*A131818(n+1)` -/
def P17839266469297252398.Spec : Prop :=
  ∀ n, P17839266469297252398.a n = A332496 (n + 1)

end A332496

/-! ## A332496.P4072846219506672406

`(A002262(n)+1)/2*A128710(n)-A127954(n+1)`
-/

namespace A332496.P4072846219506672406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1 : ℚ) / 2 * (A128710 n : ℚ) - (A127954 (n + 1) : ℚ)

end

end A332496.P4072846219506672406

namespace A332496

/-- `(A002262(n)+1)/2*A128710(n)-A127954(n+1)` -/
def P4072846219506672406.Spec : Prop :=
  ∀ n, P4072846219506672406.a n = (A332496 (n + 1) : ℚ)

theorem P4072846219506672406.correct : P4072846219506672406.Spec := by
  intro n
  simp only [A332496, Nat.add_sub_cancel, A332496.P4072846219506672406.a, A332496.P9101858789091568414.a, A002262, A002262.P17823619022233514403.a, A124847, A124847.P5785742943848591642.a, A127954, A127954.P6894505022089069342.a, A128710, A128710.P2966919769106220333.a, A002260, A002260.P9170571874073898642.a, A097805, A097805.P1755176267250853107.a, A007318, A007318.P11755526479805562006.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A332496

/-! ## A332496.P1591318817669138211

`A124847(n+1)+A057428(A064989(n+1))*A127954(n+1)`
-/

namespace A332496.P1591318817669138211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124847 (n + 1) + A057428 (A064989 (n + 1)).toNat * A127954 (n + 1)

end

end A332496.P1591318817669138211

namespace A332496

/-- `A124847(n+1)+A057428(A064989(n+1))*A127954(n+1)` -/
def P1591318817669138211.Spec : Prop :=
  ∀ n, P1591318817669138211.a n = A332496 (n + 1)

end A332496

/-!
# A332497: a(n) = x(w+1) where x(0) = 0 and x(k+1) = 2^(k+1)-1-x(k) (resp. x(k)) when d_k = 1 (resp. d_k <> 1) and Sum_{k=0..w} d_k*3^k is the ternary representation of n. Sequence A332498 gives corresponding y's.

The programs for A332497, the canonical program `A332497.P4742121065997566983` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332497 has offset 0).

The definition of A332497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332497.P837176303753382022

`A006068(A289813(n))`
-/

namespace A332497.P837176303753382022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A289813 n).toNat

end

end A332497.P837176303753382022

namespace A332497

/-- `A006068(A289813(n))` -/
def P837176303753382022.Spec : Prop :=
  ∀ n, P837176303753382022.a n = A332497 n

end A332497

/-! ## A332497.P2491180881577535970

`A332498(A004488(n))`
-/

namespace A332497.P2491180881577535970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332498 (A004488 n).toNat

end

end A332497.P2491180881577535970

namespace A332497

/-- `A332498(A004488(n))` -/
def P2491180881577535970.Spec : Prop :=
  ∀ n, P2491180881577535970.a n = A332497 n

end A332497

/-! ## A332497.P346430194249275955

`A332498(A256293(n))`
-/

namespace A332497.P346430194249275955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332498 (A256293 n).toNat

end

end A332497.P346430194249275955

namespace A332497

/-- `A332498(A256293(n))` -/
def P346430194249275955.Spec : Prop :=
  ∀ n, P346430194249275955.a n = A332497 n

end A332497

/-! ## A332497.P4742121065997566983

`2*A094114(n+1)-A000035(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A332497

/-- `2*A094114(n+1)-A000035(n)` -/
def P4742121065997566983.Spec : Prop :=
  ∀ n, P4742121065997566983.a n = A332497 n

theorem P4742121065997566983.correct : P4742121065997566983.Spec := by
  intro n
  simp only [A332497]

end A332497

/-! ## A332497.P10210796624653474907

`2*A094114(n+1)-A131734(n)²`
-/

namespace A332497.P10210796624653474907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094114 (n + 1) - A131734 n ^ 2

end

end A332497.P10210796624653474907

namespace A332497

/-- `2*A094114(n+1)-A131734(n)²` -/
def P10210796624653474907.Spec : Prop :=
  ∀ n, P10210796624653474907.a n = A332497 n

end A332497

/-! ## A332497.P12259587297118051508

`2*A094114(n+1)-A134452(n)²`
-/

namespace A332497.P12259587297118051508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094114 (n + 1) - A134452 n ^ 2

end

end A332497.P12259587297118051508

namespace A332497

/-- `2*A094114(n+1)-A134452(n)²` -/
def P12259587297118051508.Spec : Prop :=
  ∀ n, P12259587297118051508.a n = A332497 n

end A332497

/-! ## A332497.P8364037278747049981

`A094114(3*n+2)-char[2*n]`
-/

namespace A332497.P8364037278747049981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (3 * n + 2) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A332497.P8364037278747049981

namespace A332497

/-- `A094114(3*n+2)-char[2*n]` -/
def P8364037278747049981.Spec : Prop :=
  ∀ n, P8364037278747049981.a n = A332497 n

end A332497

/-! ## A332497.P5373547832293416487

`A094114(A007310(n+1))`
-/

namespace A332497.P5373547832293416487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (A007310 (n + 1)).toNat

end

end A332497.P5373547832293416487

namespace A332497

/-- `A094114(A007310(n+1))` -/
def P5373547832293416487.Spec : Prop :=
  ∀ n, P5373547832293416487.a n = A332497 n

end A332497

/-! ## A332497.P5854711622908423343

`A094114(A047270(n+1))`
-/

namespace A332497.P5854711622908423343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (A047270 (n + 1)).toNat

end

end A332497.P5854711622908423343

namespace A332497

/-- `A094114(A047270(n+1))` -/
def P5854711622908423343.Spec : Prop :=
  ∀ n, P5854711622908423343.a n = A332497 n

end A332497

/-! ## A332497.P2986584725463169157

`A094114(A038179(n+2))`
-/

namespace A332497.P2986584725463169157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (A038179 (n + 2)).toNat

end

end A332497.P2986584725463169157

namespace A332497

/-- `A094114(A038179(n+2))` -/
def P2986584725463169157.Spec : Prop :=
  ∀ n, P2986584725463169157.a n = A332497 n

end A332497

/-! ## A332497.P12626805630366326106

`A094114(A109613(n)+2*(n+1))`
-/

namespace A332497.P12626805630366326106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (A109613 n + (2 * (n + 1) : ℤ)).toNat

end

end A332497.P12626805630366326106

namespace A332497

/-- `A094114(A109613(n)+2*(n+1))` -/
def P12626805630366326106.Spec : Prop :=
  ∀ n, P12626805630366326106.a n = A332497 n

end A332497

/-! ## A332497.P2323071596097032119

`A094114(2*lt[n, A130724(n)]+1)`
-/

namespace A332497.P2323071596097032119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A332497.P2323071596097032119

namespace A332497

/-- `A094114(2*lt[n, A130724(n)]+1)` -/
def P2323071596097032119.Spec : Prop :=
  ∀ n, P2323071596097032119.a n = A332497 n

end A332497

/-!
# A332498: a(n) = y(w+1) where y(0) = 0 and y(k+1) = 2^(k+1)-1-y(k) (resp. y(k)) when d_k = 2 (resp. d_k <> 2) and Sum_{k=0..w} d_k*3^k is the ternary representation of n. Sequence A332497 gives corresponding x's.

The programs for A332498, the canonical program `A332498.P11951412772554313620` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A332498 has offset 0).

The definition of A332498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A332498.P11951412772554313620

`A006068(A289814(n))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A332498

/-- `A006068(A289814(n))` -/
def P11951412772554313620.Spec : Prop :=
  ∀ n, P11951412772554313620.a n = A332498 n

theorem P11951412772554313620.correct : P11951412772554313620.Spec := by
  intro n
  simp only [A332498]

end A332498

/-! ## A332498.P17785239299147634080

`A332497(A004488(n))`
-/

namespace A332498.P17785239299147634080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332497 (A004488 n).toNat

end

end A332498.P17785239299147634080

namespace A332498

/-- `A332497(A004488(n))` -/
def P17785239299147634080.Spec : Prop :=
  ∀ n, P17785239299147634080.a n = A332498 n

end A332498

/-! ## A332498.P9794671785948638590

`A292600(2*A289814(n))`
-/

namespace A332498.P9794671785948638590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (2 * A289814 n).toNat

end

end A332498.P9794671785948638590

namespace A332498

/-- `A292600(2*A289814(n))` -/
def P9794671785948638590.Spec : Prop :=
  ∀ n, P9794671785948638590.a n = A332498 n

end A332498

/-! ## A332498.P17961288349242703333

`A332497(A300222(n)/2)`
-/

namespace A332498.P17961288349242703333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332497 (SequenceMachineLib.roundAway ((A300222 n : ℚ) / 2)).toNat

end

end A332498.P17961288349242703333

namespace A332498

/-- `A332497(A300222(n)/2)` -/
def P17961288349242703333.Spec : Prop :=
  ∀ n, P17961288349242703333.a n = A332498 n

end A332498

/-! ## A332498.P8165219636542308177

`A292600(A289814(n)+A289814(n)+1)`
-/

namespace A332498.P8165219636542308177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292600 (A289814 n + (A289814 n + 1)).toNat

end

end A332498.P8165219636542308177

namespace A332498

/-- `A292600(A289814(n)+A289814(n)+1)` -/
def P8165219636542308177.Spec : Prop :=
  ∀ n, P8165219636542308177.a n = A332498 n

end A332498

/-! ## A332498.P7685504121722265766

`A332497(A253587(∑[n]))`
-/

namespace A332498.P7685504121722265766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332497 (A253587 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A332498.P7685504121722265766

namespace A332498

/-- `A332497(A253587(∑[n]))` -/
def P7685504121722265766.Spec : Prop :=
  ∀ n, P7685504121722265766.a n = A332498 n

end A332498

/-! ## A332498.P18182449430326400500

`A153141(A289814(n)%A348356(n+1))`
-/

namespace A332498.P18182449430326400500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (Int.tmod (A289814 n) (A348356 (n + 1))).toNat

end

end A332498.P18182449430326400500

namespace A332498

/-- `A153141(A289814(n)%A348356(n+1))` -/
def P18182449430326400500.Spec : Prop :=
  ∀ n, P18182449430326400500.a n = A332498 n

end A332498

/-! ## A332498.P17131697983847819182

`A154436(A289814(n))*A265695(A247892(n+1)²)`
-/

namespace A332498.P17131697983847819182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A289814 n).toNat * A265695 (A247892 (n + 1) ^ 2).toNat

end

end A332498.P17131697983847819182

namespace A332498

/-- `A154436(A289814(n))*A265695(A247892(n+1)²)` -/
def P17131697983847819182.Spec : Prop :=
  ∀ n, P17131697983847819182.a n = A332498 n

end A332498

/-! ## A332498.P6706807327958145575

`A154436(A289814(n))*A265695(A154436(n)²)`
-/

namespace A332498.P6706807327958145575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154436 (A289814 n).toNat * A265695 (A154436 n ^ 2).toNat

end

end A332498.P6706807327958145575

namespace A332498

/-- `A154436(A289814(n))*A265695(A154436(n)²)` -/
def P6706807327958145575.Spec : Prop :=
  ∀ n, P6706807327958145575.a n = A332498 n

end A332498

/-!
# A332499: Least positive integer k such that tan(n*k)*tan(n*k + k) < 0.

The programs for A332499, there is no canonical definition to state claims against.
-/

/-! ## A332499.P4691185121604315998

`A332488(2*(n+1))`
-/

namespace A332499.P4691185121604315998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332488 (2 * (n + 1))

end

end A332499.P4691185121604315998

/-! ## A332499.P3116391428203612309

`A000027(A332488(Δ[n²]+1))`
-/

namespace A332499.P3116391428203612309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A332488 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A332499.P3116391428203612309

/-! ## A332499.P1135232767920147004

`A332488(n+2+n)%A000040(n+1)²`
-/

namespace A332499.P1135232767920147004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A332488 (n + 2 + n)) (A000040 (n + 1) ^ 2)

end

end A332499.P1135232767920147004

