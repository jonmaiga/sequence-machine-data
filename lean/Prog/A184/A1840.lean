import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C024

/-!
# A184000: Number of (n+1) X 7 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A184000, there is no canonical definition to state claims against.
-/

/-! ## A184000.P13146277017197039421

`A184003(A167499(n+4)+1)`
-/

namespace A184000.P13146277017197039421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A167499 (n + 4) + 1).toNat

end

end A184000.P13146277017197039421

/-! ## A184000.P3838090943631011292

`A184003(A167487(n+4)-1)`
-/

namespace A184000.P3838090943631011292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A167487 (n + 4) - 1).toNat

end

end A184000.P3838090943631011292

/-! ## A184000.P12608328586238657612

`A184003(A167614(n+4)+3)`
-/

namespace A184000.P12608328586238657612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A167614 (n + 4) + 3).toNat

end

end A184000.P12608328586238657612

/-! ## A184000.P17829717758975301619

`A184003(A000124(n+5)+5)`
-/

namespace A184000.P17829717758975301619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A000124 (n + 5) + 5).toNat

end

end A184000.P17829717758975301619

/-! ## A184000.P16540346086460350472

`A184003(A000217(n+5)+6)`
-/

namespace A184000.P16540346086460350472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A000217 (n + 5) + 6).toNat

end

end A184000.P16540346086460350472

/-!
# A184001: Number of (n+1) X 8 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A184001, there is no canonical definition to state claims against.
-/

/-! ## A184001.P13088117702701724347

`A184003(eq[11, A066657(n)])`
-/

namespace A184001.P13088117702701724347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184001.P13088117702701724347

/-! ## A184001.P7879416569623326156

`A184003(A167499(n+5)+2)`
-/

namespace A184001.P7879416569623326156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A167499 (n + 5) + 2).toNat

end

end A184001.P7879416569623326156

/-! ## A184001.P17541387165256486220

`A184003(A155212(n+2)+15)`
-/

namespace A184001.P17541387165256486220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A155212 (n + 2) + 15).toNat

end

end A184001.P17541387165256486220

/-! ## A184001.P17399133616008380052

`A184003(eq[6, A002262(n)]+1)`
-/

namespace A184001.P17399133616008380052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A184001.P17399133616008380052

/-! ## A184001.P2480210976867495496

`A184003(eq[8, A131818(n+1)])`
-/

namespace A184001.P2480210976867495496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184001.P2480210976867495496

/-!
# A184002: Number of (n+1) X 9 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A184002, there is no canonical definition to state claims against.
-/

/-! ## A184002.P18097863761000937756

`A184003(eq[13, A066657(n)])`
-/

namespace A184002.P18097863761000937756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184002.P18097863761000937756

/-! ## A184002.P7427131737807280915

`A184003(A000124(n+7)+7)`
-/

namespace A184002.P7427131737807280915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A000124 (n + 7) + 7).toNat

end

end A184002.P7427131737807280915

/-! ## A184002.P11489046417407965398

`A184003(eq[9, A131818(n+1)])`
-/

namespace A184002.P11489046417407965398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184002.P11489046417407965398

/-! ## A184002.P16517188374171446338

`A184003(eq[8, A002260(n+1)]+1)`
-/

namespace A184002.P16517188374171446338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A184002.P16517188374171446338

/-! ## A184002.P8266611182020174517

`A184003(A155212(n+5)-1-n-n)`
-/

namespace A184002.P8266611182020174517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (A155212 (n + 5) - 1 - (n : ℤ) - (n : ℤ)).toNat

end

end A184002.P8266611182020174517

/-!
# A184004: a(n) = n + floor(sqrt(4n/3)); complement of A184005.

The programs for A184004, the canonical program `A184004.P5825256285853044780` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184004 has offset 1).

The definition of A184004 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(4*(n+1)/3))` (program `A184004.P5825256285853044780`, by `A184004.P5825256285853044780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184004.P5825256285853044780

`n+1+floor(sqrt(4*(n+1)/3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184004

/-- `n+1+floor(sqrt(4*(n+1)/3))` -/
def P5825256285853044780.Spec : Prop :=
  ∀ n, P5825256285853044780.a n = A184004 (n + 1)

theorem P5825256285853044780.correct : P5825256285853044780.Spec := by
  intro n
  simp only [A184004, Nat.add_sub_cancel]

end A184004

/-! ## A184004.P5595023518212803572

`comp[∑[comp[a(n-1)+3]]]` with `a(0)=2, a(1)=4`
-/

namespace A184004.P5595023518212803572
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 4] fun n f3 =>
  f3 (n - 1) + 3

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A184004.P5595023518212803572

namespace A184004

/-- `comp[∑[comp[a(n-1)+3]]]` -/
def P5595023518212803572.Spec : Prop :=
  ∀ n, (P5595023518212803572.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P7292048672191063132

`comp[A077043(n)-2*n]`
-/

namespace A184004.P7292048672191063132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184004.P7292048672191063132

namespace A184004

/-- `comp[A077043(n)-2*n]` -/
def P7292048672191063132.Spec : Prop :=
  ∀ n, (P7292048672191063132.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P17559291783561140687

`comp[A174709(3*n)-n]`
-/

namespace A184004.P17559291783561140687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174709 (3 * n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184004.P17559291783561140687

namespace A184004

/-- `comp[A174709(3*n)-n]` -/
def P17559291783561140687.Spec : Prop :=
  ∀ n, (P17559291783561140687.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P16918093913836289346

`comp[A211540(3*n)-n]`
-/

namespace A184004.P16918093913836289346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (3 * n) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184004.P16918093913836289346

namespace A184004

/-- `comp[A211540(3*n)-n]` -/
def P16918093913836289346.Spec : Prop :=
  ∀ n, (P16918093913836289346.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P12982503774951499154

`comp[∑[comp[A134059(n)+1]]]`
-/

namespace A184004.P12982503774951499154
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134059 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A184004.P12982503774951499154

namespace A184004

/-- `comp[∑[comp[A134059(n)+1]]]` -/
def P12982503774951499154.Spec : Prop :=
  ∀ n, (P12982503774951499154.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P2009289246284953706

`comp[∑[comp[A033627(n+2)]]]`
-/

namespace A184004.P2009289246284953706
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A184004.P2009289246284953706

namespace A184004

/-- `comp[∑[comp[A033627(n+2)]]]` -/
def P2009289246284953706.Spec : Prop :=
  ∀ n, (P2009289246284953706.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P17816886425779101399

`comp[A084684(n)-Δ[n²]]`
-/

namespace A184004.P17816886425779101399
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084684 n - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184004.P17816886425779101399

namespace A184004

/-- `comp[A084684(n)-Δ[n²]]` -/
def P17816886425779101399.Spec : Prop :=
  ∀ n, (P17816886425779101399.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P14730987437672461529

`comp[∑[comp[A000267(n²)+1+n]]]`
-/

namespace A184004.P14730987437672461529
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (n ^ 2) + 1 + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A184004.P14730987437672461529

namespace A184004

/-- `comp[∑[comp[A000267(n²)+1+n]]]` -/
def P14730987437672461529.Spec : Prop :=
  ∀ n, (P14730987437672461529.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P15377286947266293748

`comp[∑[A002265(abs(6*(1-n)))-1]]`
-/

namespace A184004.P15377286947266293748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |6 * (1 - (n : ℤ))|.toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184004.P15377286947266293748

namespace A184004

/-- `comp[∑[A002265(abs(6*(1-n)))-1]]` -/
def P15377286947266293748.Spec : Prop :=
  ∀ n, (P15377286947266293748.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P10294213986480215998

`comp[∑[lt[n, A130724(n)+1]]-2*n]`
-/

namespace A184004.P10294213986480215998
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130724 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184004.P10294213986480215998

namespace A184004

/-- `comp[∑[lt[n, A130724(n)+1]]-2*n]` -/
def P10294213986480215998.Spec : Prop :=
  ∀ n, (P10294213986480215998.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P13422907601663186254

`comp[∑[A114119(n)]-A114119(n)]`
-/

namespace A184004.P13422907601663186254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A114119 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184004.P13422907601663186254

namespace A184004

/-- `comp[∑[A114119(n)]-A114119(n)]` -/
def P13422907601663186254.Spec : Prop :=
  ∀ n, (P13422907601663186254.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P10706082873393621767

`comp[∑[A002260(A000982(n)+1)+n-1]]`
-/

namespace A184004.P10706082873393621767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000982 n + 1).toNat + ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184004.P10706082873393621767

namespace A184004

/-- `comp[∑[A002260(A000982(n)+1)+n-1]]` -/
def P10706082873393621767.Spec : Prop :=
  ∀ n, (P10706082873393621767.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P18346661142358469873

`∑[Δ[A227568(n)]+1]`
-/

namespace A184004.P18346661142358469873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184004.P18346661142358469873

namespace A184004

/-- `∑[Δ[A227568(n)]+1]` -/
def P18346661142358469873.Spec : Prop :=
  ∀ n, P18346661142358469873.a n = A184004 (n + 1)

end A184004

/-! ## A184004.P2061563760953126310

`∑[Δ[A184010(n+1)]!]`
-/

namespace A184004.P2061563760953126310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184010 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184004.P2061563760953126310

namespace A184004

/-- `∑[Δ[A184010(n+1)]!]` -/
def P2061563760953126310.Spec : Prop :=
  ∀ n, (P2061563760953126310.a n : ℤ) = A184004 (n + 1)

end A184004

/-! ## A184004.P7000826165082637079

`A023443(A184010(n+2))`
-/

namespace A184004.P7000826165082637079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184010 (n + 2)).toNat

end

end A184004.P7000826165082637079

namespace A184004

/-- `A023443(A184010(n+2))` -/
def P7000826165082637079.Spec : Prop :=
  ∀ n, P7000826165082637079.a n = A184004 (n + 1)

end A184004

/-!
# A184005: a(n) = n - 1 + ceiling(3*n^2/4); complement of A184004.

The programs for A184005, the canonical program `A184005.P11395048269721933195` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184005 has offset 1).

The definition of A184005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil(3*(n+1)²/4)` (program `A184005.P11395048269721933195`, by `A184005.P11395048269721933195.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184005.P11395048269721933195

`n+ceil(3*(n+1)²/4)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184005

/-- `n+ceil(3*(n+1)²/4)` -/
def P11395048269721933195.Spec : Prop :=
  ∀ n, P11395048269721933195.a n = A184005 (n + 1)

theorem P11395048269721933195.correct : P11395048269721933195.Spec := by
  intro n
  simp only [A184005, Nat.add_sub_cancel]

end A184005

/-! ## A184005.P6209767118406978940

`∑[record[n%3+1+n]]`
-/

namespace A184005.P6209767118406978940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P6209767118406978940

namespace A184005

/-- `∑[record[n%3+1+n]]` -/
def P6209767118406978940.Spec : Prop :=
  ∀ n, (P6209767118406978940.a n : ℤ) = A184005 (n + 1)

end A184005

/-! ## A184005.P15043697364173888860

`∑[a(n-2)+3]` with `a(0)=1, a(1)=3, a(2)=5`
-/

namespace A184005.P15043697364173888860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 5] fun n f1 =>
  f1 (n - 2) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P15043697364173888860

namespace A184005

/-- `∑[a(n-2)+3]` -/
def P15043697364173888860.Spec : Prop :=
  ∀ n, (P15043697364173888860.a n : ℤ) = A184005 (n + 1)

end A184005

/-! ## A184005.P2566706319574480469

`∑[∑[2/a(and(1, n))]]` with `a(0)=1, a(1)=2`
-/

namespace A184005.P2566706319574480469
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  2 / f2 (Nat.land 1 n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P2566706319574480469

namespace A184005

/-- `∑[∑[2/a(and(1, n))]]` -/
def P2566706319574480469.Spec : Prop :=
  ∀ n, P2566706319574480469.a n = (A184005 (n + 1) : ℚ)

end A184005

/-! ## A184005.P15918971394636642773

`∑[ceil(3/sinh(2/(n+1)))]`
-/

namespace A184005.P15918971394636642773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / Real.sinh (2 / (n + 1 : ℚ) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P15918971394636642773

namespace A184005

/-- `∑[ceil(3/sinh(2/(n+1)))]` -/
def P15918971394636642773.Spec : Prop :=
  ∀ n, P15918971394636642773.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P9447709638579365677

`∑[∑[floor(a(∑[(-1)^n]))]]` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A184005.P9447709638579365677
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P9447709638579365677

namespace A184005

/-- `∑[∑[floor(a(∑[(-1)^n]))]]` -/
def P9447709638579365677.Spec : Prop :=
  ∀ n, (P9447709638579365677.a n : ℤ) = A184005 (n + 1)

end A184005

/-! ## A184005.P9295137346461736420

`∑[∑[3-a(n-1)]]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A184005.P9295137346461736420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n f2 =>
  3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P9295137346461736420

namespace A184005

/-- `∑[∑[3-a(n-1)]]` -/
def P9295137346461736420.Spec : Prop :=
  ∀ n, P9295137346461736420.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P18437900744777819725

`∑[∑[∑[ogf((1+2x+x^2-x^3)/(1+x))]]]`
-/

namespace A184005.P18437900744777819725
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, -1] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P18437900744777819725

namespace A184005

/-- `∑[∑[∑[ogf((1+2x+x^2-x^3)/(1+x))]]]` -/
def P18437900744777819725.Spec : Prop :=
  ∀ n, P18437900744777819725.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P14830085990704071846

`ogf((1+2x+x^2-x^3)/(1-2x+2x^3-x^4))`
-/

namespace A184005.P14830085990704071846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1, -1] [1, -2, 0, 2, -1] n

end

end A184005.P14830085990704071846

namespace A184005

/-- `ogf((1+2x+x^2-x^3)/(1-2x+2x^3-x^4))` -/
def P14830085990704071846.Spec : Prop :=
  ∀ n, P14830085990704071846.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P9135161955674713696

`∑[ceil(cot(2/(n+1))+n+1)]`
-/

namespace A184005.P9135161955674713696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (2 / (n + 1 : ℚ) : ℝ) + (n + 1 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P9135161955674713696

namespace A184005

/-- `∑[ceil(cot(2/(n+1))+n+1)]` -/
def P9135161955674713696.Spec : Prop :=
  ∀ n, P9135161955674713696.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P10161542613571186085

`floor(a(n-1)+n/2+n+2)` with `a(0)=1`
-/

namespace A184005.P10161542613571186085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 2 + (n + 2 : ℚ))⌋

end

end A184005.P10161542613571186085

namespace A184005

/-- `floor(a(n-1)+n/2+n+2)` -/
def P10161542613571186085.Spec : Prop :=
  ∀ n, P10161542613571186085.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P12808375996828907346

`floor(Δ[C(n*(n+2), 2)/(2*n+1)])`
-/

namespace A184005.P12808375996828907346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n * (n + 2)) 2 : ℚ) / (2 * n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A184005.P12808375996828907346

namespace A184005

/-- `floor(Δ[C(n*(n+2), 2)/(2*n+1)])` -/
def P12808375996828907346.Spec : Prop :=
  ∀ n, P12808375996828907346.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P2251729798907895423

`∑[A114119(n)]`
-/

namespace A184005.P2251729798907895423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P2251729798907895423

namespace A184005

/-- `∑[A114119(n)]` -/
def P2251729798907895423.Spec : Prop :=
  ∀ n, P2251729798907895423.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P1157028792648983918

`∑[A266977(n)+n]`
-/

namespace A184005.P1157028792648983918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266977 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P1157028792648983918

namespace A184005

/-- `∑[A266977(n)+n]` -/
def P1157028792648983918.Spec : Prop :=
  ∀ n, P1157028792648983918.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P8965280096217245822

`∑[∑[2-A266070(n)]]`
-/

namespace A184005.P8965280096217245822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A266070 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P8965280096217245822

namespace A184005

/-- `∑[∑[2-A266070(n)]]` -/
def P8965280096217245822.Spec : Prop :=
  ∀ n, P8965280096217245822.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P12581593077790738164

`∑[∑[gcd(2, A163511(n))]]`
-/

namespace A184005.P12581593077790738164
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A163511 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P12581593077790738164

namespace A184005

/-- `∑[∑[gcd(2, A163511(n))]]` -/
def P12581593077790738164.Spec : Prop :=
  ∀ n, (P12581593077790738164.a n : ℤ) = A184005 (n + 1)

end A184005

/-! ## A184005.P5958823302035802645

`∑[∑[A266591(n)]+n]`
-/

namespace A184005.P5958823302035802645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266591 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P5958823302035802645

namespace A184005

/-- `∑[∑[A266591(n)]+n]` -/
def P5958823302035802645.Spec : Prop :=
  ∀ n, P5958823302035802645.a n = A184005 (n + 1)

end A184005

/-! ## A184005.P3874315881147635438

`∑[comp[A004275(n)+n]]`
-/

namespace A184005.P3874315881147635438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P3874315881147635438

namespace A184005

/-- `∑[comp[A004275(n)+n]]` -/
def P3874315881147635438.Spec : Prop :=
  ∀ n, (P3874315881147635438.a n : ℤ) = A184005 (n + 1)

end A184005

/-! ## A184005.P3066053625843825681

`∑[∑[char[A004277(n)]+1]]`
-/

namespace A184005.P3066053625843825681
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184005.P3066053625843825681

namespace A184005

/-- `∑[∑[char[A004277(n)]+1]]` -/
def P3066053625843825681.Spec : Prop :=
  ∀ n, (P3066053625843825681.a n : ℤ) = A184005 (n + 1)

end A184005

/-! ## A184005.P6762280435917208197

`A144391(n+1)%A173102(n+1)`
-/

namespace A184005.P6762280435917208197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144391 (n + 1)) (A173102 (n + 1))

end

end A184005.P6762280435917208197

namespace A184005

/-- `A144391(n+1)%A173102(n+1)` -/
def P6762280435917208197.Spec : Prop :=
  ∀ n, P6762280435917208197.a n = A184005 (n + 1)

end A184005

/-!
# A184006: floor(nr+h), where r=sqrt(3), h=-1/3; complement of A184007.

The programs for A184006, the canonical program `A184006.P9911267686596200721` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184006 has offset 1).

The definition of A184006 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184006.P9911267686596200721

`floor(A184654(2*(n+1))/2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184006

/-- `floor(A184654(2*(n+1))/2)` -/
def P9911267686596200721.Spec : Prop :=
  ∀ n, P9911267686596200721.a n = A184006 (n + 1)

theorem P9911267686596200721.correct : P9911267686596200721.Spec := by
  intro n
  simp only [A184006, Nat.add_sub_cancel]

end A184006

/-! ## A184006.P2339461115965141716

`floor(cosh(log(A184654(2*n+2))))`
-/

namespace A184006.P2339461115965141716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cosh (Real.log (A184654 (2 * n + 2) : ℝ))⌋

end

end A184006.P2339461115965141716

namespace A184006

/-- `floor(cosh(log(A184654(2*n+2))))` -/
def P2339461115965141716.Spec : Prop :=
  ∀ n, P2339461115965141716.a n = A184006 (n + 1)

end A184006

/-! ## A184006.P596742000131293512

`A004526(A184654(2*(n+1)))`
-/

namespace A184006.P596742000131293512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184654 (2 * (n + 1))).toNat

end

end A184006.P596742000131293512

namespace A184006

/-- `A004526(A184654(2*(n+1)))` -/
def P596742000131293512.Spec : Prop :=
  ∀ n, P596742000131293512.a n = A184006 (n + 1)

end A184006

/-! ## A184006.P8544649523457463596

`A123108(xor(1, A184654(2*(n+1))))`
-/

namespace A184006.P8544649523457463596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor 1 (A184654 (2 * (n + 1)))).toNat

end

end A184006.P8544649523457463596

namespace A184006

/-- `A123108(xor(1, A184654(2*(n+1))))` -/
def P8544649523457463596.Spec : Prop :=
  ∀ n, P8544649523457463596.a n = A184006 (n + 1)

end A184006

/-! ## A184006.P1862088767810562203

`A059169(A206906(n+1)-(n+1))`
-/

namespace A184006.P1862088767810562203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A206906 (n + 1) - (n + 1 : ℤ)).toNat

end

end A184006.P1862088767810562203

namespace A184006

/-- `A059169(A206906(n+1)-(n+1))` -/
def P1862088767810562203.Spec : Prop :=
  ∀ n, P1862088767810562203.a n = A184006 (n + 1)

end A184006

/-! ## A184006.P9719050307521457841

`A216256(A247890(n+1))`
-/

namespace A184006.P9719050307521457841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A247890 (n + 1)).toNat

end

end A184006.P9719050307521457841

namespace A184006

/-- `A216256(A247890(n+1))` -/
def P9719050307521457841.Spec : Prop :=
  ∀ n, P9719050307521457841.a n = A184006 (n + 1)

end A184006

/-! ## A184006.P18008086183036366959

`A216256(A110303(n+1)+n²)`
-/

namespace A184006.P18008086183036366959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216256 (A110303 (n + 1) + (n ^ 2 : ℤ)).toNat

end

end A184006.P18008086183036366959

namespace A184006

/-- `A216256(A110303(n+1)+n²)` -/
def P18008086183036366959.Spec : Prop :=
  ∀ n, P18008086183036366959.a n = A184006 (n + 1)

end A184006

/-! ## A184006.P13834026280754671692

`A002024(A046699(Δ[n^3]))`
-/

namespace A184006.P13834026280754671692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A046699 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A184006.P13834026280754671692

namespace A184006

/-- `A002024(A046699(Δ[n^3]))` -/
def P13834026280754671692.Spec : Prop :=
  ∀ n, P13834026280754671692.a n = A184006 (n + 1)

end A184006

/-! ## A184006.P15133268050229796612

`A002024(A074936(n+1)+∑[3*n]+1)`
-/

namespace A184006.P15133268050229796612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A074936 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)).toNat

end

end A184006.P15133268050229796612

namespace A184006

/-- `A002024(A074936(n+1)+∑[3*n]+1)` -/
def P15133268050229796612.Spec : Prop :=
  ∀ n, P15133268050229796612.a n = A184006 (n + 1)

end A184006

/-! ## A184006.P2513191802339050707

`A002024(A168186(n+1)+A005449(n))`
-/

namespace A184006.P2513191802339050707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A168186 (n + 1) + A005449 n).toNat

end

end A184006.P2513191802339050707

namespace A184006

/-- `A002024(A168186(n+1)+A005449(n))` -/
def P2513191802339050707.Spec : Prop :=
  ∀ n, P2513191802339050707.a n = A184006 (n + 1)

end A184006

/-!
# A184007: floor(n*s+h-h*s), where s=(3+sqrt(3))/2, h=-1/3. Complement of A184006.

The programs for A184007, the canonical program `A184007.P6942563530479342197` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184007 has offset 1).

The definition of A184007 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184007.P6942563530479342197

`floor(A184655(2*(n+1))/2)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A184007

/-- `floor(A184655(2*(n+1))/2)` -/
def P6942563530479342197.Spec : Prop :=
  ∀ n, P6942563530479342197.a n = A184007 (n + 1)

theorem P6942563530479342197.correct : P6942563530479342197.Spec := by
  intro n
  simp only [A184007, Nat.add_sub_cancel]

end A184007

/-! ## A184007.P6425574866352831275

`A002264(A003511(2*(n+1)+n+2))+n+1`
-/

namespace A184007.P6425574866352831275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A003511 (2 * (n + 1) + n + 2)).toNat + (n + 1 : ℤ)

end

end A184007.P6425574866352831275

namespace A184007

/-- `A002264(A003511(2*(n+1)+n+2))+n+1` -/
def P6425574866352831275.Spec : Prop :=
  ∀ n, P6425574866352831275.a n = A184007 (n + 1)

end A184007

/-! ## A184007.P8743020987135903123

`A004526(A184655(2*(n+1)))`
-/

namespace A184007.P8743020987135903123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184655 (2 * (n + 1))).toNat

end

end A184007.P8743020987135903123

namespace A184007

/-- `A004526(A184655(2*(n+1)))` -/
def P8743020987135903123.Spec : Prop :=
  ∀ n, P8743020987135903123.a n = A184007 (n + 1)

end A184007

/-! ## A184007.P5400339228066070854

`A008619(A184655(2*(n+1))-2)`
-/

namespace A184007.P5400339228066070854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184655 (2 * (n + 1)) - 2).toNat

end

end A184007.P5400339228066070854

namespace A184007

/-- `A008619(A184655(2*(n+1))-2)` -/
def P5400339228066070854.Spec : Prop :=
  ∀ n, P5400339228066070854.a n = A184007 (n + 1)

end A184007

/-! ## A184007.P416842170788741089

`A002264(A054406(3*n+4)-1)`
-/

namespace A184007.P416842170788741089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A054406 (3 * n + 4) - 1).toNat

end

end A184007.P416842170788741089

namespace A184007

/-- `A002264(A054406(3*n+4)-1)` -/
def P416842170788741089.Spec : Prop :=
  ∀ n, P416842170788741089.a n = A184007 (n + 1)

end A184007

/-! ## A184007.P6795201795797083942

`round(log(A015589(n+2)))`
-/

namespace A184007.P6795201795797083942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A015589 (n + 2) : ℝ))

end

end A184007.P6795201795797083942

namespace A184007

/-- `round(log(A015589(n+2)))` -/
def P6795201795797083942.Spec : Prop :=
  ∀ n, P6795201795797083942.a n = A184007 (n + 1)

end A184007

/-! ## A184007.P147066248137929186

`A003056(∑[A231001(n)+5])`
-/

namespace A184007.P147066248137929186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231001 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184007.P147066248137929186

namespace A184007

/-- `A003056(∑[A231001(n)+5])` -/
def P147066248137929186.Spec : Prop :=
  ∀ n, P147066248137929186.a n = A184007 (n + 1)

end A184007

/-! ## A184007.P3388398398868859771

`A003056(∑[A047308(4*(n+1))])`
-/

namespace A184007.P3388398398868859771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047308 (4 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184007.P3388398398868859771

namespace A184007

/-- `A003056(∑[A047308(4*(n+1))])` -/
def P3388398398868859771.Spec : Prop :=
  ∀ n, P3388398398868859771.a n = A184007 (n + 1)

end A184007

/-!
# A184008: n+floor(sqrt(7n/3)); complement of A184009.

The programs for A184008, the canonical program `A184008.P13219395158425756105` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184008 has offset 1).

The definition of A184008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(7*(n+1)/3))` (program `A184008.P13219395158425756105`, by `A184008.P13219395158425756105.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184008.P13219395158425756105

`n+1+floor(sqrt(7*(n+1)/3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184008

/-- `n+1+floor(sqrt(7*(n+1)/3))` -/
def P13219395158425756105.Spec : Prop :=
  ∀ n, P13219395158425756105.a n = A184008 (n + 1)

theorem P13219395158425756105.correct : P13219395158425756105.Spec := by
  intro n
  simp only [A184008, Nat.add_sub_cancel]

end A184008

/-! ## A184008.P9597358349200372385

`ceil(sqrt(A304500(n+1))+n)`
-/

namespace A184008.P9597358349200372385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A304500 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A184008.P9597358349200372385

namespace A184008

/-- `ceil(sqrt(A304500(n+1))+n)` -/
def P9597358349200372385.Spec : Prop :=
  ∀ n, P9597358349200372385.a n = A184008 (n + 1)

end A184008

/-! ## A184008.P3041066584386500706

`ceil(sqrt(A047290(n+2))+n)`
-/

namespace A184008.P3041066584386500706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A047290 (n + 2) : ℝ) + (n : ℝ)⌉

end

end A184008.P3041066584386500706

namespace A184008

/-- `ceil(sqrt(A047290(n+2))+n)` -/
def P3041066584386500706.Spec : Prop :=
  ∀ n, P3041066584386500706.a n = A184008 (n + 1)

end A184008

/-! ## A184008.P17450162700843728969

`comp[A171971(n+1)]%A171953(2*(n+1))`
-/

namespace A184008.P17450162700843728969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A171953 (2 * (n + 1)))

end

end A184008.P17450162700843728969

namespace A184008

/-- `comp[A171971(n+1)]%A171953(2*(n+1))` -/
def P17450162700843728969.Spec : Prop :=
  ∀ n, P17450162700843728969.a n = A184008 (n + 1)

end A184008

/-! ## A184008.P4073795216637437116

`comp[A171971(n+1)]%A344882(n+1)`
-/

namespace A184008.P4073795216637437116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171971 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A344882 (n + 1))

end

end A184008.P4073795216637437116

namespace A184008

/-- `comp[A171971(n+1)]%A344882(n+1)` -/
def P4073795216637437116.Spec : Prop :=
  ∀ n, P4073795216637437116.a n = A184008 (n + 1)

end A184008

/-! ## A184008.P5321221546915616897

`round(sqrt(A175071(n+2)+n+3)+n)`
-/

namespace A184008.P5321221546915616897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A175071 (n + 2) + (n + 3 : ℤ) : ℝ) + (n : ℝ))

end

end A184008.P5321221546915616897

namespace A184008

/-- `round(sqrt(A175071(n+2)+n+3)+n)` -/
def P5321221546915616897.Spec : Prop :=
  ∀ n, P5321221546915616897.a n = A184008 (n + 1)

end A184008

/-! ## A184008.P1022332950560057061

`floor(sqrt(A304498(n))+n+1)`
-/

namespace A184008.P1022332950560057061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A304498 n : ℝ) + (n + 1 : ℝ)⌋

end

end A184008.P1022332950560057061

namespace A184008

/-- `floor(sqrt(A304498(n))+n+1)` -/
def P1022332950560057061.Spec : Prop :=
  ∀ n, P1022332950560057061.a n = A184008 (n + 1)

end A184008

/-!
# A184009: a(n) = n-1+ceiling((3/4)n^2); complement of A184008.

The programs for A184009, the canonical program `A184009.P10653556549677944516` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184009 has offset 1).

The definition of A184009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184009.P10653556549677944516

`ceil(3/7*(n+1)²+n)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184009

/-- `ceil(3/7*(n+1)²+n)` -/
def P10653556549677944516.Spec : Prop :=
  ∀ n, P10653556549677944516.a n = A184009 (n + 1)

theorem P10653556549677944516.correct : P10653556549677944516.Spec := by
  intro n
  simp only [A184009, Nat.add_sub_cancel]

end A184009

/-! ## A184009.P16277955099169073433

`floor(A067725(n)/7+n+1)`
-/

namespace A184009.P16277955099169073433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067725 n : ℚ) / 7 + (n + 1 : ℚ)⌋

end

end A184009.P16277955099169073433

namespace A184009

/-- `floor(A067725(n)/7+n+1)` -/
def P16277955099169073433.Spec : Prop :=
  ∀ n, P16277955099169073433.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P16242956896562057418

`floor(((n+4)*A016777(n)+3)/7)`
-/

namespace A184009.P16242956896562057418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 4 : ℤ) * A016777 n + 3 : ℚ) / 7⌋

end

end A184009.P16242956896562057418

namespace A184009

/-- `floor(((n+4)*A016777(n)+3)/7)` -/
def P16242956896562057418.Spec : Prop :=
  ∀ n, P16242956896562057418.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P4236966451282667392

`round(∑[A060107(n+1)+1]/2)+n`
-/

namespace A184009.P4236966451282667392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060107 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2) + (n : ℤ)

end

end A184009.P4236966451282667392

namespace A184009

/-- `round(∑[A060107(n+1)+1]/2)+n` -/
def P4236966451282667392.Spec : Prop :=
  ∀ n, P4236966451282667392.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P1364951799583691866

`floor(A008123(n+1)/4+n)`
-/

namespace A184009.P1364951799583691866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008123 (n + 1) : ℚ) / 4 + (n : ℚ)⌋

end

end A184009.P1364951799583691866

namespace A184009

/-- `floor(A008123(n+1)/4+n)` -/
def P1364951799583691866.Spec : Prop :=
  ∀ n, P1364951799583691866.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P11426396667707626276

`Δ[A033439(n+1)]+A033439(n)+n`
-/

namespace A184009.P11426396667707626276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033439 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A033439 n + (n : ℤ))

end

end A184009.P11426396667707626276

namespace A184009

/-- `Δ[A033439(n+1)]+A033439(n)+n` -/
def P11426396667707626276.Spec : Prop :=
  ∀ n, P11426396667707626276.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P6131240584957468621

`∑[A004524(A060107(n+1))+2]-1`
-/

namespace A184009.P6131240584957468621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A060107 (n + 1)).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A184009.P6131240584957468621

namespace A184009

/-- `∑[A004524(A060107(n+1))+2]-1` -/
def P6131240584957468621.Spec : Prop :=
  ∀ n, P6131240584957468621.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P1425537786049764901

`A008671(6*n)+n`
-/

namespace A184009.P1425537786049764901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008671 (6 * n) + (n : ℤ)

end

end A184009.P1425537786049764901

namespace A184009

/-- `A008671(6*n)+n` -/
def P1425537786049764901.Spec : Prop :=
  ∀ n, P1425537786049764901.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P13149224655221431179

`A008614(12*n)+n`
-/

namespace A184009.P13149224655221431179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008614 (12 * n) + (n : ℤ)

end

end A184009.P13149224655221431179

namespace A184009

/-- `A008614(12*n)+n` -/
def P13149224655221431179.Spec : Prop :=
  ∀ n, P13149224655221431179.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P8224530742340687477

`A008622(12*n)+n`
-/

namespace A184009.P8224530742340687477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008622 (12 * n) + (n : ℤ)

end

end A184009.P8224530742340687477

namespace A184009

/-- `A008622(12*n)+n` -/
def P8224530742340687477.Spec : Prop :=
  ∀ n, P8224530742340687477.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P12746473789433730930

`A057358(A084684(n+1))+n`
-/

namespace A184009.P12746473789433730930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 (A084684 (n + 1)).toNat + (n : ℤ)

end

end A184009.P12746473789433730930

namespace A184009

/-- `A057358(A084684(n+1))+n` -/
def P12746473789433730930.Spec : Prop :=
  ∀ n, P12746473789433730930.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P2632924785175769788

`A004526(∑[A190785(n+2)]+n)`
-/

namespace A184009.P2632924785175769788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190785 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A184009.P2632924785175769788

namespace A184009

/-- `A004526(∑[A190785(n+2)]+n)` -/
def P2632924785175769788.Spec : Prop :=
  ∀ n, P2632924785175769788.a n = A184009 (n + 1)

end A184009

/-! ## A184009.P7397905095402183919

`A057357(n*(n+2))+n+1`
-/

namespace A184009.P7397905095402183919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057357 (n * (n + 2)) + (n + 1 : ℤ)

end

end A184009.P7397905095402183919

namespace A184009

/-- `A057357(n*(n+2))+n+1` -/
def P7397905095402183919.Spec : Prop :=
  ∀ n, P7397905095402183919.a n = A184009 (n + 1)

end A184009

/-!
# A184010: n + floor(sqrt(-1+4n/3)); complement of A001859 (except for initial zero).

The programs for A184010, the canonical program `A184010.P2278318878043054188` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184010 has offset 1).

The definition of A184010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(-1+4*(n+1)/3))` (program `A184010.P2278318878043054188`, by `A184010.P2278318878043054188.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184010.P2278318878043054188

`n+1+floor(sqrt(-1+4*(n+1)/3))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184010

/-- `n+1+floor(sqrt(-1+4*(n+1)/3))` -/
def P2278318878043054188.Spec : Prop :=
  ∀ n, P2278318878043054188.a n = A184010 (n + 1)

theorem P2278318878043054188.correct : P2278318878043054188.Spec := by
  intro n
  simp only [A184010, Nat.add_sub_cancel]

end A184010

/-! ## A184010.P1788239173461838666

`floor(sqrt(comp[or(3, n)])+n+1)`
-/

namespace A184010.P1788239173461838666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ) + (n + 1 : ℝ)⌋

end

end A184010.P1788239173461838666

namespace A184010

/-- `floor(sqrt(comp[or(3, n)])+n+1)` -/
def P1788239173461838666.Spec : Prop :=
  ∀ n, P1788239173461838666.a n = A184010 (n + 1)

end A184010

/-! ## A184010.P6134176379083230203

`comp[A001859(n)]`
-/

namespace A184010.P6134176379083230203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184010.P6134176379083230203

namespace A184010

/-- `comp[A001859(n)]` -/
def P6134176379083230203.Spec : Prop :=
  ∀ n, (P6134176379083230203.a n : ℤ) = A184010 (n + 1)

end A184010

/-! ## A184010.P11309685632491615647

`∑[char[A068626(n+1)]+1]`
-/

namespace A184010.P11309685632491615647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068626 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184010.P11309685632491615647

namespace A184010

/-- `∑[char[A068626(n+1)]+1]` -/
def P11309685632491615647.Spec : Prop :=
  ∀ n, (P11309685632491615647.a n : ℤ) = A184010 (n + 1)

end A184010

/-! ## A184010.P15434121467910304298

`ceil(sqrt(A004773(n+1))+n)`
-/

namespace A184010.P15434121467910304298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A004773 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A184010.P15434121467910304298

namespace A184010

/-- `ceil(sqrt(A004773(n+1))+n)` -/
def P15434121467910304298.Spec : Prop :=
  ∀ n, P15434121467910304298.a n = A184010 (n + 1)

end A184010

/-! ## A184010.P795622524055738377

`lt[0, abs(A307011(n))]`
-/

namespace A184010.P795622524055738377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307011 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184010.P795622524055738377

namespace A184010

/-- `lt[0, abs(A307011(n))]` -/
def P795622524055738377.Spec : Prop :=
  ∀ n, (P795622524055738377.a n : ℤ) = A184010 (n + 1)

end A184010

/-! ## A184010.P17102730011080827887

`eq[0, char[A211540(3*n+4)]]`
-/

namespace A184010.P17102730011080827887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211540 (3 * n + 4)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A184010.P17102730011080827887

namespace A184010

/-- `eq[0, char[A211540(3*n+4)]]` -/
def P17102730011080827887.Spec : Prop :=
  ∀ n, (P17102730011080827887.a n : ℤ) = A184010 (n + 1)

end A184010

/-! ## A184010.P9738935809447993788

`∑[A000122(A004773(n))!]`
-/

namespace A184010.P9738935809447993788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A000122 (A004773 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184010.P9738935809447993788

namespace A184010

/-- `∑[A000122(A004773(n))!]` -/
def P9738935809447993788.Spec : Prop :=
  ∀ n, (P9738935809447993788.a n : ℤ) = A184010 (n + 1)

end A184010

/-!
# A184011: Coefficients of the formal power series of a half-iterate of exp(x)-1 (rescaled).

The programs for A184011, there is no canonical definition to state claims against.
-/

/-! ## A184011.P8782856896763654859

`A052122(n)*2^(2*n-2-A052123(n))`
-/

namespace A184011.P8782856896763654859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052122 n : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - 2 - A052123 n : ℤ)

end

end A184011.P8782856896763654859

/-!
# A184012: n + floor(sqrt(5n-4)); complement of A184013.

The programs for A184012, the canonical program `A184012.P7642074158365298250` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184012 has offset 1).

The definition of A184012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(5*(n+1)-4))` (program `A184012.P7642074158365298250`, by `A184012.P7642074158365298250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184012.P7642074158365298250

`n+1+floor(sqrt(5*(n+1)-4))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184012

/-- `n+1+floor(sqrt(5*(n+1)-4))` -/
def P7642074158365298250.Spec : Prop :=
  ∀ n, P7642074158365298250.a n = A184012 (n + 1)

theorem P7642074158365298250.correct : P7642074158365298250.Spec := by
  intro n
  simp only [A184012, Nat.add_sub_cancel]

end A184012

/-! ## A184012.P16874747477091355656

`∑[char[A008738(n)]+1]`
-/

namespace A184012.P16874747477091355656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008738 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184012.P16874747477091355656

namespace A184012

/-- `∑[char[A008738(n)]+1]` -/
def P16874747477091355656.Spec : Prop :=
  ∀ n, (P16874747477091355656.a n : ℤ) = A184012 (n + 1)

end A184012

/-! ## A184012.P11855990457403176625

`ceil(sqrt(A016873(n))+n)`
-/

namespace A184012.P11855990457403176625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016873 n : ℝ) + (n : ℝ)⌉

end

end A184012.P11855990457403176625

namespace A184012

/-- `ceil(sqrt(A016873(n))+n)` -/
def P11855990457403176625.Spec : Prop :=
  ∀ n, P11855990457403176625.a n = A184012 (n + 1)

end A184012

/-! ## A184012.P11291057925482171672

`ceil(sqrt(A016885(n))+n)`
-/

namespace A184012.P11291057925482171672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016885 n : ℝ) + (n : ℝ)⌉

end

end A184012.P11291057925482171672

namespace A184012

/-- `ceil(sqrt(A016885(n))+n)` -/
def P11291057925482171672.Spec : Prop :=
  ∀ n, P11291057925482171672.a n = A184012 (n + 1)

end A184012

/-! ## A184012.P17300264327604493123

`ceil(sqrt(A016825(n)+n)+n)`
-/

namespace A184012.P17300264327604493123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A016825 n + (n : ℤ) : ℝ) + (n : ℝ)⌉

end

end A184012.P17300264327604493123

namespace A184012

/-- `ceil(sqrt(A016825(n)+n)+n)` -/
def P17300264327604493123.Spec : Prop :=
  ∀ n, P17300264327604493123.a n = A184012 (n + 1)

end A184012

/-! ## A184012.P7098831412548609772

`lt[2, A124927(∑[gcd(2, n+1)+1])]`
-/

namespace A184012.P7098831412548609772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184012.P7098831412548609772

namespace A184012

/-- `lt[2, A124927(∑[gcd(2, n+1)+1])]` -/
def P7098831412548609772.Spec : Prop :=
  ∀ n, (P7098831412548609772.a n : ℤ) = A184012 (n + 1)

end A184012

/-! ## A184012.P7065028607196241807

`lt[2, A002260(A001068(2*n+3)+1)]`
-/

namespace A184012.P7065028607196241807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A001068 (2 * n + 3) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184012.P7065028607196241807

namespace A184012

/-- `lt[2, A002260(A001068(2*n+3)+1)]` -/
def P7065028607196241807.Spec : Prop :=
  ∀ n, (P7065028607196241807.a n : ℤ) = A184012 (n + 1)

end A184012

/-! ## A184012.P355306101875613442

`lt[1, A007318(A001068(2*(n+1)))]`
-/

namespace A184012.P355306101875613442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A001068 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184012.P355306101875613442

namespace A184012

/-- `lt[1, A007318(A001068(2*(n+1)))]` -/
def P355306101875613442.Spec : Prop :=
  ∀ n, (P355306101875613442.a n : ℤ) = A184012 (n + 1)

end A184012

/-! ## A184012.P3817924891260553379

`lt[3, A004736(A001068(2*n+1)+1)]`
-/

namespace A184012.P3817924891260553379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A001068 (2 * n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184012.P3817924891260553379

namespace A184012

/-- `lt[3, A004736(A001068(2*n+1)+1)]` -/
def P3817924891260553379.Spec : Prop :=
  ∀ n, (P3817924891260553379.a n : ℤ) = A184012 (n + 1)

end A184012

/-! ## A184012.P14701718163349789844

`lt[n+3, A039599(A047203(2*(n+1)))]`
-/

namespace A184012.P14701718163349789844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A047203 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184012.P14701718163349789844

namespace A184012

/-- `lt[n+3, A039599(A047203(2*(n+1)))]` -/
def P14701718163349789844.Spec : Prop :=
  ∀ n, (P14701718163349789844.a n : ℤ) = A184012 (n + 1)

end A184012

/-! ## A184012.P9146962394143175688

`lt[1, A103438(A049636(n)+n)]`
-/

namespace A184012.P9146962394143175688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103438 (A049636 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A184012.P9146962394143175688

namespace A184012

/-- `lt[1, A103438(A049636(n)+n)]` -/
def P9146962394143175688.Spec : Prop :=
  ∀ n, (P9146962394143175688.a n : ℤ) = A184012 (n + 1)

end A184012

/-!
# A184013: a(n) = n - 1 + ceiling((4+n^2)/5); complement of A184012.

The programs for A184013, the canonical program `A184013.P5348308889724684635` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184013 has offset 1).

The definition of A184013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil((4+(n+1)²)/5)` (program `A184013.P5348308889724684635`, by `A184013.P5348308889724684635.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184013.P5348308889724684635

`n+ceil((4+(n+1)²)/5)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184013

/-- `n+ceil((4+(n+1)²)/5)` -/
def P5348308889724684635.Spec : Prop :=
  ∀ n, P5348308889724684635.a n = A184013 (n + 1)

theorem P5348308889724684635.correct : P5348308889724684635.Spec := by
  intro n
  simp only [A184013, Nat.add_sub_cancel]

end A184013

/-! ## A184013.P12073800531509744651

`floor((record[(n-3)²]+n)/5)`
-/

namespace A184013.P12073800531509744651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) : ℚ) / 5⌋

end

end A184013.P12073800531509744651

namespace A184013

/-- `floor((record[(n-3)²]+n)/5)` -/
def P12073800531509744651.Spec : Prop :=
  ∀ n, P12073800531509744651.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P11560776150654839217

`record[floor(((3-n)²-n)/5)]`
-/

namespace A184013.P11560776150654839217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((3 - (n : ℤ)) ^ 2 - (n : ℤ) : ℚ) / 5⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184013.P11560776150654839217

namespace A184013

/-- `record[floor(((3-n)²-n)/5)]` -/
def P11560776150654839217.Spec : Prop :=
  ∀ n, P11560776150654839217.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P9680864794888693268

`round(∑[or(1, 2*n)/5+1])`
-/

namespace A184013.P9680864794888693268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (2 * n) : ℚ) / 5 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184013.P9680864794888693268

namespace A184013

/-- `round(∑[or(1, 2*n)/5+1])` -/
def P9680864794888693268.Spec : Prop :=
  ∀ n, P9680864794888693268.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P10267802781653379174

`floor(∑[a(n-1)+2]/5)` with `a(0)=7, a(1)=8`
-/

namespace A184013.P10267802781653379174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 5⌋

end

end A184013.P10267802781653379174

namespace A184013

/-- `floor(∑[a(n-1)+2]/5)` -/
def P10267802781653379174.Spec : Prop :=
  ∀ n, P10267802781653379174.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P9594335478391924625

`round(record[(1-n)²/5]+n+1)`
-/

namespace A184013.P9594335478391924625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 1 : ℚ))

end

end A184013.P9594335478391924625

namespace A184013

/-- `round(record[(1-n)²/5]+n+1)` -/
def P9594335478391924625.Spec : Prop :=
  ∀ n, P9594335478391924625.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P9375987713053568538

`round(acot(1)+(n+1)²/5+n)`
-/

namespace A184013.P9375987713053568538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (1 : ℝ) + (((n + 1) ^ 2 : ℚ) / 5 : ℝ) + (n : ℝ))

end

end A184013.P9375987713053568538

namespace A184013

/-- `round(acot(1)+(n+1)²/5+n)` -/
def P9375987713053568538.Spec : Prop :=
  ∀ n, P9375987713053568538.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P18340536721916153074

`floor(∑[a(n-5)+2])` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A184013.P18340536721916153074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2, 2, 3] fun n f1 =>
  f1 (n - 5) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184013.P18340536721916153074

namespace A184013

/-- `floor(∑[a(n-5)+2])` -/
def P18340536721916153074.Spec : Prop :=
  ∀ n, (P18340536721916153074.a n : ℤ) = A184013 (n + 1)

end A184013

/-! ## A184013.P13024621448380354895

`floor(or(2, (n+1)²)/5+n+1)`
-/

namespace A184013.P13024621448380354895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 ((n + 1) ^ 2) : ℚ) / 5 + (n + 1 : ℚ)⌋

end

end A184013.P13024621448380354895

namespace A184013

/-- `floor(or(2, (n+1)²)/5+n+1)` -/
def P13024621448380354895.Spec : Prop :=
  ∀ n, P13024621448380354895.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P4439147617979242790

`round((lcm(n+2, n+3)+2*n)/5)`
-/

namespace A184013.P4439147617979242790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lcm (n + 2) (n + 3) + 2 * n : ℚ) / 5)

end

end A184013.P4439147617979242790

namespace A184013

/-- `round((lcm(n+2, n+3)+2*n)/5)` -/
def P4439147617979242790.Spec : Prop :=
  ∀ n, P4439147617979242790.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P7263289553815827449

`ceil(or(2, (n+1)*(n+1))/5+n)`
-/

namespace A184013.P7263289553815827449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 ((n + 1) * (n + 1)) : ℚ) / 5 + (n : ℚ)⌉

end

end A184013.P7263289553815827449

namespace A184013

/-- `ceil(or(2, (n+1)*(n+1))/5+n)` -/
def P7263289553815827449.Spec : Prop :=
  ∀ n, P7263289553815827449.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P17782515016091136884

`floor(lcm(n-1, n-2)/5+2*n+1)`
-/

namespace A184013.P17782515016091136884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.lcm ((n : ℤ) - 1) ((n : ℤ) - 2) : ℚ) / 5 + (2 * n + 1 : ℚ)⌋

end

end A184013.P17782515016091136884

namespace A184013

/-- `floor(lcm(n-1, n-2)/5+2*n+1)` -/
def P17782515016091136884.Spec : Prop :=
  ∀ n, P17782515016091136884.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P2208920453746001154

`ceil(A108195(n+1)/5)`
-/

namespace A184013.P2208920453746001154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108195 (n + 1) : ℚ) / 5⌉

end

end A184013.P2208920453746001154

namespace A184013

/-- `ceil(A108195(n+1)/5)` -/
def P2208920453746001154.Spec : Prop :=
  ∀ n, P2208920453746001154.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P1761662550351203564

`∑[A057354(n+4)]`
-/

namespace A184013.P1761662550351203564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184013.P1761662550351203564

namespace A184013

/-- `∑[A057354(n+4)]` -/
def P1761662550351203564.Spec : Prop :=
  ∀ n, P1761662550351203564.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P5278997130973875569

`∑[A165640(3*(n+1))]`
-/

namespace A184013.P5278997130973875569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165640 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184013.P5278997130973875569

namespace A184013

/-- `∑[A165640(3*(n+1))]` -/
def P5278997130973875569.Spec : Prop :=
  ∀ n, P5278997130973875569.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P6018977728977567914

`A047252(A211004(n+2))`
-/

namespace A184013.P6018977728977567914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047252 (A211004 (n + 2)).toNat

end

end A184013.P6018977728977567914

namespace A184013

/-- `A047252(A211004(n+2))` -/
def P6018977728977567914.Spec : Prop :=
  ∀ n, P6018977728977567914.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P383997026253454590

`A004523(A186496(n+2))`
-/

namespace A184013.P383997026253454590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A186496 (n + 2)).toNat

end

end A184013.P383997026253454590

namespace A184013

/-- `A004523(A186496(n+2))` -/
def P383997026253454590.Spec : Prop :=
  ∀ n, P383997026253454590.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P5110839756113869555

`A131737(A186494(n+2))`
-/

namespace A184013.P5110839756113869555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (A186494 (n + 2)).toNat

end

end A184013.P5110839756113869555

namespace A184013

/-- `A131737(A186494(n+2))` -/
def P5110839756113869555.Spec : Prop :=
  ∀ n, P5110839756113869555.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P14638939292530735845

`A057355(A183859(n+2))`
-/

namespace A184013.P14638939292530735845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A183859 (n + 2)).toNat

end

end A184013.P14638939292530735845

namespace A184013

/-- `A057355(A183859(n+2))` -/
def P14638939292530735845.Spec : Prop :=
  ∀ n, P14638939292530735845.a n = A184013 (n + 1)

end A184013

/-! ## A184013.P4783584508819880587

`A288156(∑[n+3])`
-/

namespace A184013.P4783584508819880587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184013.P4783584508819880587

namespace A184013

/-- `A288156(∑[n+3])` -/
def P4783584508819880587.Spec : Prop :=
  ∀ n, P4783584508819880587.a n = A184013 (n + 1)

end A184013

/-!
# A184014: n + floor(sqrt(e*n)); complement of A184015.

The programs for A184014, the canonical program `A184014.P3069674161049877587` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184014 has offset 1).

The definition of A184014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(sqrt(e*(n+1)))` (program `A184014.P3069674161049877587`, by `A184014.P3069674161049877587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184014.P3069674161049877587

`n+1+floor(sqrt(e*(n+1)))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184014

/-- `n+1+floor(sqrt(e*(n+1)))` -/
def P3069674161049877587.Spec : Prop :=
  ∀ n, P3069674161049877587.a n = A184014 (n + 1)

theorem P3069674161049877587.correct : P3069674161049877587.Spec := by
  intro n
  simp only [A184014, Nat.add_sub_cancel]

end A184014

/-! ## A184014.P12976269539215079318

`∑[char[A032635(n)]+1]`
-/

namespace A184014.P12976269539215079318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032635 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184014.P12976269539215079318

namespace A184014

/-- `∑[char[A032635(n)]+1]` -/
def P12976269539215079318.Spec : Prop :=
  ∀ n, (P12976269539215079318.a n : ℤ) = A184014 (n + 1)

end A184014

/-! ## A184014.P7794528590832362869

`floor(sqrt(∑[A276859(n+1)])+n+1)`
-/

namespace A184014.P7794528590832362869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276859 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) + (n + 1 : ℝ)⌋

end

end A184014.P7794528590832362869

namespace A184014

/-- `floor(sqrt(∑[A276859(n+1)])+n+1)` -/
def P7794528590832362869.Spec : Prop :=
  ∀ n, P7794528590832362869.a n = A184014 (n + 1)

end A184014

/-! ## A184014.P468072886268912655

`∑[char[A184015(n+1)-(n+1)]+1]`
-/

namespace A184014.P468072886268912655
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184015 (n + 1) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184014.P468072886268912655

namespace A184014

/-- `∑[char[A184015(n+1)-(n+1)]+1]` -/
def P468072886268912655.Spec : Prop :=
  ∀ n, (P468072886268912655.a n : ℤ) = A184014 (n + 1)

end A184014

/-! ## A184014.P17182297146543282845

`ceil(sqrt(A121384(n+1))+n)`
-/

namespace A184014.P17182297146543282845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A121384 (n + 1) : ℝ) + (n : ℝ)⌉

end

end A184014.P17182297146543282845

namespace A184014

/-- `ceil(sqrt(A121384(n+1))+n)` -/
def P17182297146543282845.Spec : Prop :=
  ∀ n, P17182297146543282845.a n = A184014 (n + 1)

end A184014

/-! ## A184014.P18241001618108934273

`floor(sqrt(A000210(n+1)+n+1)+n+1)`
-/

namespace A184014.P18241001618108934273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000210 (n + 1) + (n + 1 : ℤ) : ℝ) + (n + 1 : ℝ)⌋

end

end A184014.P18241001618108934273

namespace A184014

/-- `floor(sqrt(A000210(n+1)+n+1)+n+1)` -/
def P18241001618108934273.Spec : Prop :=
  ∀ n, P18241001618108934273.a n = A184014 (n + 1)

end A184014

/-!
# A184015: n-1+ceiling(n^2/e); complement of A184014.

The programs for A184015, the canonical program `A184015.P6833052958052138604` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184015 has offset 1).

The definition of A184015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil((n+1)²/e)` (program `A184015.P6833052958052138604`, by `A184015.P6833052958052138604.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184015.P6833052958052138604

`n+ceil((n+1)²/e)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184015

/-- `n+ceil((n+1)²/e)` -/
def P6833052958052138604.Spec : Prop :=
  ∀ n, P6833052958052138604.a n = A184015 (n + 1)

theorem P6833052958052138604.correct : P6833052958052138604.Spec := by
  intro n
  simp only [A184015, Nat.add_sub_cancel]

end A184015

/-! ## A184015.P16051652008428601549

`Δ[a(n-1)+floor(n²/e+n)]` with `a(0)=0`
-/

namespace A184015.P16051652008428601549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + ⌊(n ^ 2 : ℝ) / Real.exp 1 + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A184015.P16051652008428601549

namespace A184015

/-- `Δ[a(n-1)+floor(n²/e+n)]` -/
def P16051652008428601549.Spec : Prop :=
  ∀ n, P16051652008428601549.a n = A184015 (n + 1)

end A184015

/-! ## A184015.P10768437082380633970

`∑[Δ[A032635(n)]+1]`
-/

namespace A184015.P10768437082380633970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032635 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184015.P10768437082380633970

namespace A184015

/-- `∑[Δ[A032635(n)]+1]` -/
def P10768437082380633970.Spec : Prop :=
  ∀ n, P10768437082380633970.a n = A184015 (n + 1)

end A184015

/-! ## A184015.P4175482476491541508

`∑[Δ[A032634(n²)]+1]`
-/

namespace A184015.P4175482476491541508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (n ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184015.P4175482476491541508

namespace A184015

/-- `∑[Δ[A032634(n²)]+1]` -/
def P4175482476491541508.Spec : Prop :=
  ∀ n, P4175482476491541508.a n = A184015 (n + 1)

end A184015

/-! ## A184015.P5288060800194972034

`A263846(A277229(n+1))`
-/

namespace A184015.P5288060800194972034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A277229 (n + 1)).toNat

end

end A184015.P5288060800194972034

namespace A184015

/-- `A263846(A277229(n+1))` -/
def P5288060800194972034.Spec : Prop :=
  ∀ n, P5288060800194972034.a n = A184015 (n + 1)

end A184015

/-!
# A184016: n+floor(3*sqrt(n)); complement of A184017.

The programs for A184016, the canonical program `A184016.P9949500602303574859` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184016 has offset 1).

The definition of A184016 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+1+floor(3*sqrt(n+1))` (program `A184016.P9949500602303574859`, by `A184016.P9949500602303574859.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184016.P9949500602303574859

`n+1+floor(3*sqrt(n+1))`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184016

/-- `n+1+floor(3*sqrt(n+1))` -/
def P9949500602303574859.Spec : Prop :=
  ∀ n, P9949500602303574859.a n = A184016 (n + 1)

theorem P9949500602303574859.correct : P9949500602303574859.Spec := by
  intro n
  simp only [A184016, Nat.add_sub_cancel]

end A184016

/-! ## A184016.P5073466961594187481

`ceil(3/sqrt(acot(n+1))+n)`
-/

namespace A184016.P5073466961594187481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 / Real.sqrt (SequenceMachineLib.acot (n + 1 : ℝ)) + (n : ℝ)⌉

end

end A184016.P5073466961594187481

namespace A184016

/-- `ceil(3/sqrt(acot(n+1))+n)` -/
def P5073466961594187481.Spec : Prop :=
  ∀ n, P5073466961594187481.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P8300990790142146211

`∑[A184107(Δ[A184108(n+1)])]`
-/

namespace A184016.P8300990790142146211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184107 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184016.P8300990790142146211

namespace A184016

/-- `∑[A184107(Δ[A184108(n+1)])]` -/
def P8300990790142146211.Spec : Prop :=
  ∀ n, P8300990790142146211.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P8396996248428473791

`∑[A184155(Δ[A184108(n+1)])]`
-/

namespace A184016.P8396996248428473791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184155 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184016.P8396996248428473791

namespace A184016

/-- `∑[A184155(Δ[A184108(n+1)])]` -/
def P8396996248428473791.Spec : Prop :=
  ∀ n, P8396996248428473791.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P14959650499915120105

`∑[A184160(Δ[A184108(n+1)])]`
-/

namespace A184016.P14959650499915120105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184160 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184016.P14959650499915120105

namespace A184016

/-- `∑[A184160(Δ[A184108(n+1)])]` -/
def P14959650499915120105.Spec : Prop :=
  ∀ n, P14959650499915120105.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P2546811586276145373

`∑[A353361(Δ[A184108(n+1)]+8)]`
-/

namespace A184016.P2546811586276145373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184108 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353361 (f2 (n + 1) - f2 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184016.P2546811586276145373

namespace A184016

/-- `∑[A353361(Δ[A184108(n+1)]+8)]` -/
def P2546811586276145373.Spec : Prop :=
  ∀ n, P2546811586276145373.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P2537305219672765121

`A023443(A184108(n+2))`
-/

namespace A184016.P2537305219672765121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184108 (n + 2)).toNat

end

end A184016.P2537305219672765121

namespace A184016

/-- `A023443(A184108(n+2))` -/
def P2537305219672765121.Spec : Prop :=
  ∀ n, P2537305219672765121.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P4982379490258310963

`A065033(A184106(n+1)+n)`
-/

namespace A184016.P4982379490258310963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A184106 (n + 1) + (n : ℤ)).toNat

end

end A184016.P4982379490258310963

namespace A184016

/-- `A065033(A184106(n+1)+n)` -/
def P4982379490258310963.Spec : Prop :=
  ∀ n, P4982379490258310963.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P16274784171508595582

`A004526(A184106(n+1)+1+n)`
-/

namespace A184016.P16274784171508595582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A184106 (n + 1) + 1 + (n : ℤ)).toNat

end

end A184016.P16274784171508595582

namespace A184016

/-- `A004526(A184106(n+1)+1+n)` -/
def P16274784171508595582.Spec : Prop :=
  ∀ n, P16274784171508595582.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P14651426585113612591

`∑[Δ[A202304(3*n)]+1]`
-/

namespace A184016.P14651426585113612591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184016.P14651426585113612591

namespace A184016

/-- `∑[Δ[A202304(3*n)]+1]` -/
def P14651426585113612591.Spec : Prop :=
  ∀ n, P14651426585113612591.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P677433213280064741

`∑[Δ[A000196(9*n)]+1]`
-/

namespace A184016.P677433213280064741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (9 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184016.P677433213280064741

namespace A184016

/-- `∑[Δ[A000196(9*n)]+1]` -/
def P677433213280064741.Spec : Prop :=
  ∀ n, P677433213280064741.a n = A184016 (n + 1)

end A184016

/-! ## A184016.P3334212819041690305

`∑[A065109(Δ[A000196(9*n)])]`
-/

namespace A184016.P3334212819041690305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (9 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065109 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184016.P3334212819041690305

namespace A184016

/-- `∑[A065109(Δ[A000196(9*n)])]` -/
def P3334212819041690305.Spec : Prop :=
  ∀ n, P3334212819041690305.a n = A184016 (n + 1)

end A184016

/-!
# A184017: a(n) = n-1+ceiling((n/3)^2); complement of A184016.

The programs for A184017, the canonical program `A184017.P15837957863881208326` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184017 has offset 1).

The definition of A184017 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+ceil(((n+1)/3)²)` (program `A184017.P15837957863881208326`, by `A184017.P15837957863881208326.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A184017.P15837957863881208326

`n+ceil(((n+1)/3)²)`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184017

/-- `n+ceil(((n+1)/3)²)` -/
def P15837957863881208326.Spec : Prop :=
  ∀ n, P15837957863881208326.a n = A184017 (n + 1)

theorem P15837957863881208326.correct : P15837957863881208326.Spec := by
  intro n
  simp only [A184017, Nat.add_sub_cancel]

end A184017

/-! ## A184017.P11271002461210280274

`record[ceil(((n-1)/3)²-n)]`
-/

namespace A184017.P11271002461210280274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1 : ℚ) / 3) ^ 2 - (n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184017.P11271002461210280274

namespace A184017

/-- `record[ceil(((n-1)/3)²-n)]` -/
def P11271002461210280274.Spec : Prop :=
  ∀ n, P11271002461210280274.a n = A184017 (n + 1)

end A184017

/-! ## A184017.P11645264644112430020

`comp[floor(3*sqrt(gcd(n, 2*n)))+n]`
-/

namespace A184017.P11645264644112430020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * Real.sqrt (Nat.gcd n (2 * n) : ℝ)⌋ + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A184017.P11645264644112430020

namespace A184017

/-- `comp[floor(3*sqrt(gcd(n, 2*n)))+n]` -/
def P11645264644112430020.Spec : Prop :=
  ∀ n, (P11645264644112430020.a n : ℤ) = A184017 (n + 1)

end A184017

/-! ## A184017.P18229700409468143824

`A023443(A184109(n+1))`
-/

namespace A184017.P18229700409468143824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A184109 (n + 1)).toNat

end

end A184017.P18229700409468143824

namespace A184017

/-- `A023443(A184109(n+1))` -/
def P18229700409468143824.Spec : Prop :=
  ∀ n, P18229700409468143824.a n = A184017 (n + 1)

end A184017

/-! ## A184017.P5875864599350322357

`A004396(∑[floor(n/3)]+2*n+1)`
-/

namespace A184017.P5875864599350322357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)).toNat

end

end A184017.P5875864599350322357

namespace A184017

/-- `A004396(∑[floor(n/3)]+2*n+1)` -/
def P5875864599350322357.Spec : Prop :=
  ∀ n, P5875864599350322357.a n = A184017 (n + 1)

end A184017

/-! ## A184017.P15393765756964541365

`A131737(∑[A002264(n)+2])`
-/

namespace A184017.P15393765756964541365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131737 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A184017.P15393765756964541365

namespace A184017

/-- `A131737(∑[A002264(n)+2])` -/
def P15393765756964541365.Spec : Prop :=
  ∀ n, P15393765756964541365.a n = A184017 (n + 1)

end A184017

/-! ## A184017.P138317099231050274

`A274616(A008750(n)+A274616(n)+A107750(n))`
-/

namespace A184017.P138317099231050274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A008750 n + (A274616 n + A107750 n)).toNat

end

end A184017.P138317099231050274

namespace A184017

/-- `A274616(A008750(n)+A274616(n)+A107750(n))` -/
def P138317099231050274.Spec : Prop :=
  ∀ n, P138317099231050274.a n = A184017 (n + 1)

end A184017

/-! ## A184017.P11299583880616530572

`A123920(3*n+1+A032765(n))`
-/

namespace A184017.P11299583880616530572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123920 ((3 * n + 1 : ℤ) + A032765 n).toNat

end

end A184017.P11299583880616530572

namespace A184017

/-- `A123920(3*n+1+A032765(n))` -/
def P11299583880616530572.Spec : Prop :=
  ∀ n, P11299583880616530572.a n = A184017 (n + 1)

end A184017

/-! ## A184017.P7363366078152020920

`A002264(A208994(n+2)+2*n)`
-/

namespace A184017.P7363366078152020920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A208994 (n + 2) + (2 * n : ℤ)).toNat

end

end A184017.P7363366078152020920

namespace A184017

/-- `A002264(A208994(n+2)+2*n)` -/
def P7363366078152020920.Spec : Prop :=
  ∀ n, P7363366078152020920.a n = A184017 (n + 1)

end A184017

/-!
# A184018: Expansion of c(x/(1-x-x^2)) / (1-x-x^2), c(x) the g.f. of A000108.

The programs for A184018, there is no canonical definition to state claims against.
-/

/-! ## A184018.P16794635049627053646

`A145868(n)-A301935(A099398(n))`
-/

namespace A184018.P16794635049627053646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145868 n - A301935 (A099398 n).toNat

end

end A184018.P16794635049627053646

/-! ## A184018.P1811751815806995070

`A138036(A226623(n+1))+A049886(2*n+1)`
-/

namespace A184018.P1811751815806995070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 (A226623 (n + 1)).toNat + A049886 (2 * n + 1)

end

end A184018.P1811751815806995070

/-!
# A184019: A (9,-5) Somos-4 sequence.

The programs for A184019, the canonical program `A184019.P2772361107809966645` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184019 has offset 0).

The definition of A184019 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184019.P2772361107809966645

`(9*a(n-1)*a(n-3)-5*a(n-2)²)/a(n-4)` with `a(0)=1, a(1)=2, a(2)=13, a(3)=97`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184019

/-- `(9*a(n-1)*a(n-3)-5*a(n-2)²)/a(n-4)` -/
def P2772361107809966645.Spec : Prop :=
  ∀ n, P2772361107809966645.a n = (A184019 n : ℚ)

end A184019

/-!
# A184020: 1/8 the number of (n+1)X(n+1) 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184020, there is no canonical definition to state claims against.
-/

/-! ## A184020.P14933783836934485015

`A184029(∑[4*n]+1)`
-/

namespace A184020.P14933783836934485015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184020.P14933783836934485015

/-! ## A184020.P7641096734252474810

`lcm(2, A184029(A001844(n)))`
-/

namespace A184020.P7641096734252474810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184029 (A001844 n).toNat)

end

end A184020.P7641096734252474810

/-! ## A184020.P14042203356866451424

`record[A003982(n)*A184029(n+1)]`
-/

namespace A184020.P14042203356866451424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A184029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184020.P14042203356866451424

/-! ## A184020.P16111479729270160510

`record[root(A184029(n+1), A143182(n))]`
-/

namespace A184020.P16111479729270160510
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A184029 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184020.P16111479729270160510

/-!
# A184021: 1/8 the number of (n+1)X2 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184021, there is no canonical definition to state claims against.
-/

/-! ## A184021.P14613839131447772238

`A237008(n+1)/8`
-/

namespace A184021.P14613839131447772238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237008 (n + 1) : ℚ) / 8

end

end A184021.P14613839131447772238

/-! ## A184021.P14868152121064507063

`A184029(∑[n]+1)`
-/

namespace A184021.P14868152121064507063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184021.P14868152121064507063

/-! ## A184021.P8242425257156810338

`record[A184029(n+1)]`
-/

namespace A184021.P8242425257156810338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184021.P8242425257156810338

/-! ## A184021.P17108424027788671174

`lcm(2, A184029(-xor(-1, ∑[n])))`
-/

namespace A184021.P17108424027788671174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184029 (-Int.xor (-1) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat)

end

end A184021.P17108424027788671174

/-! ## A184021.P14106693949114752443

`lcm(2, A184029(A000124(n)))`
-/

namespace A184021.P14106693949114752443
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A184029 (A000124 n).toNat)

end

end A184021.P14106693949114752443

/-!
# A184022: 1/8 the number of (n+1)X3 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184022, there is no canonical definition to state claims against.
-/

/-! ## A184022.P14410390369450329303

`A237009(n+1)/8`
-/

namespace A184022.P14410390369450329303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237009 (n + 1) : ℚ) / 8

end

end A184022.P14410390369450329303

/-! ## A184022.P18332520579623894835

`floor(A237009(-xor(n, -1))/8)`
-/

namespace A184022.P18332520579623894835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A237009 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / 8⌋

end

end A184022.P18332520579623894835

/-! ## A184022.P12018131328466415036

`round(A237009(Δ[n²]-n)/8)`
-/

namespace A184022.P12018131328466415036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A237009 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 8)

end

end A184022.P12018131328466415036

/-! ## A184022.P8896452969745823671

`record[A237009(A291769(n))/8]`
-/

namespace A184022.P8896452969745823671
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237009 (A291769 n).toNat : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184022.P8896452969745823671

/-! ## A184022.P11485677769133369338

`floor(A237009(Δ[A000290(n)]-n)/8)`
-/

namespace A184022.P11485677769133369338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A237009 (f1 (n + 1) - f1 n - (n : ℤ)).toNat : ℚ) / 8⌋

end

end A184022.P11485677769133369338

/-!
# A184023: 1/8 the number of (n+1)X4 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184023, there is no canonical definition to state claims against.
-/

/-! ## A184023.P16116186135646952626

`A237010(n+1)/8`
-/

namespace A184023.P16116186135646952626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237010 (n + 1) : ℚ) / 8

end

end A184023.P16116186135646952626

/-! ## A184023.P5919884096206490127

`A184029(∑[n+2]+4)`
-/

namespace A184023.P5919884096206490127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184023.P5919884096206490127

/-! ## A184023.P4321611356571710243

`A184029(A167614(n+1))+A011732(n)`
-/

namespace A184023.P4321611356571710243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A167614 (n + 1)).toNat + A011732 n

end

end A184023.P4321611356571710243

/-! ## A184023.P13412083290329563188

`A184029(A167614(n+1))+A011738(n)`
-/

namespace A184023.P13412083290329563188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A167614 (n + 1)).toNat + A011738 n

end

end A184023.P13412083290329563188

/-! ## A184023.P4881760960653307344

`A184029(A167614(n+1))+A025443(n)`
-/

namespace A184023.P4881760960653307344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A167614 (n + 1)).toNat + A025443 n

end

end A184023.P4881760960653307344

/-!
# A184024: 1/8 the number of (n+1)X5 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184024, there is no canonical definition to state claims against.
-/

/-! ## A184024.P13531023179319137286

`A237011(n+1)/8`
-/

namespace A184024.P13531023179319137286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237011 (n + 1) : ℚ) / 8

end

end A184024.P13531023179319137286

/-! ## A184024.P12671070829933832064

`A184029(∑[n+3]+7)`
-/

namespace A184024.P12671070829933832064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184024.P12671070829933832064

/-! ## A184024.P7882412439514258948

`A184029(A374004(n+1))+A011732(n)`
-/

namespace A184024.P7882412439514258948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A374004 (n + 1)).toNat + A011732 n

end

end A184024.P7882412439514258948

/-! ## A184024.P8878367968687881584

`A184029(A374004(n+1))+A180472(n)`
-/

namespace A184024.P8878367968687881584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A374004 (n + 1)).toNat + A180472 n

end

end A184024.P8878367968687881584

/-! ## A184024.P10522630859640313628

`lcm(A184029(A374004(n+1)), A219347(n))`
-/

namespace A184024.P10522630859640313628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A184029 (A374004 (n + 1)).toNat) (A219347 n)

end

end A184024.P10522630859640313628

/-!
# A184025: 1/8 the number of (n+1)X6 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184025, there is no canonical definition to state claims against.
-/

/-! ## A184025.P3136209762498041040

`A237012(n+1)/8`
-/

namespace A184025.P3136209762498041040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237012 (n + 1) : ℚ) / 8

end

end A184025.P3136209762498041040

/-! ## A184025.P10311892029008545398

`A184029(abs(∑[n+5]+5-n)+5)`
-/

namespace A184025.P10311892029008545398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (|((∑ j ∈ Finset.range (n + 1), f1 j + 5 : ℕ) : ℤ) - (n : ℤ)| + 5).toNat

end

end A184025.P10311892029008545398

/-!
# A184026: 1/8 the number of (n+1)X7 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184026, there is no canonical definition to state claims against.
-/

/-! ## A184026.P12855183894480159178

`A237013(n+1)/8`
-/

namespace A184026.P12855183894480159178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237013 (n + 1) : ℚ) / 8

end

end A184026.P12855183894480159178

/-! ## A184026.P7387010794878134565

`record[A237013(A344180(n))/8]`
-/

namespace A184026.P7387010794878134565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237013 (A344180 n).toNat : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184026.P7387010794878134565

/-! ## A184026.P3708266496912028827

`A184029(∑[n+5]+16)`
-/

namespace A184026.P3708266496912028827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A184026.P3708266496912028827

/-! ## A184026.P3197045952160821338

`A237015(A374007(n+1))/8`
-/

namespace A184026.P3197045952160821338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237015 (A374007 (n + 1)).toNat : ℚ) / 8

end

end A184026.P3197045952160821338

/-! ## A184026.P6908441578952940584

`A237015(A167614(n+4)+3)/8`
-/

namespace A184026.P6908441578952940584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237015 (A167614 (n + 4) + 3).toNat : ℚ) / 8

end

end A184026.P6908441578952940584

/-!
# A184027: 1/8 the number of (n+1)X8 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184027, there is no canonical definition to state claims against.
-/

/-! ## A184027.P1166707977406815929

`A237014(n+1)/8`
-/

namespace A184027.P1166707977406815929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237014 (n + 1) : ℚ) / 8

end

end A184027.P1166707977406815929

/-! ## A184027.P12708167444663667384

`A184029(A167487(n+5))`
-/

namespace A184027.P12708167444663667384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A167487 (n + 5)).toNat

end

end A184027.P12708167444663667384

/-! ## A184027.P11993157248920738275

`A184029(A056119(n)+28)`
-/

namespace A184027.P11993157248920738275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A056119 n + 28).toNat

end

end A184027.P11993157248920738275

/-! ## A184027.P6836546036768271578

`A184029(eq[11, A066657(n)])`
-/

namespace A184027.P6836546036768271578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184027.P6836546036768271578

/-! ## A184027.P10515247432063918290

`A184029(A077169(n+7)+2)`
-/

namespace A184027.P10515247432063918290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A077169 (n + 7) + 2).toNat

end

end A184027.P10515247432063918290

/-!
# A184028: 1/8 the number of (n+1)X9 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184028, there is no canonical definition to state claims against.
-/

/-! ## A184028.P3292411683868584579

`A184029(A374009(n+1))`
-/

namespace A184028.P3292411683868584579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (A374009 (n + 1)).toNat

end

end A184028.P3292411683868584579

/-! ## A184028.P10093985708903716928

`A184029(eq[5, A219347(n)])`
-/

namespace A184028.P10093985708903716928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184028.P10093985708903716928

/-! ## A184028.P4636958962284712482

`A184029(eq[7, A193592(n)])`
-/

namespace A184028.P4636958962284712482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184028.P4636958962284712482

/-! ## A184028.P12809194224352715027

`A184029(eq[13, A066657(n)])`
-/

namespace A184028.P12809194224352715027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184029 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184028.P12809194224352715027

/-!
# A184029: T(n,k)=1/8 the number of (n+1)X(k+1) 0..3 arrays with all 2X2 subblock sums the same.

The programs for A184029, there is no canonical definition to state claims against.
-/

/-! ## A184029.P12913878392628915237

`A237015(n+1)/8`
-/

namespace A184029.P12913878392628915237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237015 (n + 1) : ℚ) / 8

end

end A184029.P12913878392628915237

/-! ## A184029.P9781924361170539079

`A117358(A237015(n+1))`
-/

namespace A184029.P9781924361170539079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A237015 (n + 1)).toNat

end

end A184029.P9781924361170539079

/-! ## A184029.P18419194773783438945

`A110658(A237015(n+1)+1)`
-/

namespace A184029.P18419194773783438945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110658 (A237015 (n + 1) + 1).toNat

end

end A184029.P18419194773783438945

/-! ## A184029.P10853834369814670642

`A025480(A237015(n+1)+3)`
-/

namespace A184029.P10853834369814670642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A237015 (n + 1) + 3).toNat

end

end A184029.P10853834369814670642

/-!
# A184030: 1/16 the number of (n+1) X (n+1) 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184030, the canonical program `A184030.P17930508146980072552` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184030 has offset 1).

The definition of A184030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184030.P17930508146980072552

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=16, a(1)=40, a(2)=82, a(3)=166`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184030

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P17930508146980072552.Spec : Prop :=
  ∀ n, P17930508146980072552.a n = A184030 (n + 1)

theorem P17930508146980072552.correct : P17930508146980072552.Spec := by
  intro n
  simp only [A184030, Nat.add_sub_cancel]

end A184030

/-! ## A184030.P8023911677100340898

`2*(A184031(n+1)-8)`
-/

namespace A184030.P8023911677100340898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A184031 (n + 1) - 8)

end

end A184030.P8023911677100340898

namespace A184030

/-- `2*(A184031(n+1)-8)` -/
def P8023911677100340898.Spec : Prop :=
  ∀ n, P8023911677100340898.a n = A184030 (n + 1)

end A184030

/-! ## A184030.P17047434790326138974

`2*(A184032(n+1)-20)`
-/

namespace A184030.P17047434790326138974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A184032 (n + 1) - 20)

end

end A184030.P17047434790326138974

namespace A184030

/-- `2*(A184032(n+1)-20)` -/
def P17047434790326138974.Spec : Prop :=
  ∀ n, P17047434790326138974.a n = A184030 (n + 1)

end A184030

/-! ## A184030.P9351161067541928209

`A354789(2*(n+1))+A354789(n+1)`
-/

namespace A184030.P9351161067541928209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354789 (2 * (n + 1)) + A354789 (n + 1)

end

end A184030.P9351161067541928209

namespace A184030

/-- `A354789(2*(n+1))+A354789(n+1)` -/
def P9351161067541928209.Spec : Prop :=
  ∀ n, P9351161067541928209.a n = A184030 (n + 1)

end A184030

/-! ## A184030.P17915379515945592036

`A224692(A005843(n+1))+A061776(n+2)`
-/

namespace A184030.P17915379515945592036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224692 (A005843 (n + 1)).toNat + A061776 (n + 2)

end

end A184030.P17915379515945592036

namespace A184030

/-- `A224692(A005843(n+1))+A061776(n+2)` -/
def P17915379515945592036.Spec : Prop :=
  ∀ n, P17915379515945592036.a n = A184030 (n + 1)

end A184030

/-!
# A184031: 1/16 the number of (n+1) X 2 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184031, the canonical program `A184031.P10153947277455675381` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184031 has offset 1).

The definition of A184031 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184031.P4038272181898363577

`A184032(n+1)-12`
-/

namespace A184031.P4038272181898363577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184032 (n + 1) - 12

end

end A184031.P4038272181898363577

namespace A184031

/-- `A184032(n+1)-12` -/
def P4038272181898363577.Spec : Prop :=
  ∀ n, P4038272181898363577.a n = A184031 (n + 1)

end A184031

/-! ## A184031.P940370764001914242

`A184034(n+1)-75`
-/

namespace A184031.P940370764001914242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184034 (n + 1) - 75

end

end A184031.P940370764001914242

namespace A184031

/-- `A184034(n+1)-75` -/
def P940370764001914242.Spec : Prop :=
  ∀ n, P940370764001914242.a n = A184031 (n + 1)

end A184031

/-! ## A184031.P9778133109824140606

`A184033(n+1)+A023475(n)-n`
-/

namespace A184031.P9778133109824140606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184033 (n + 1) + (A023475 n - (n : ℤ))

end

end A184031.P9778133109824140606

namespace A184031

/-- `A184033(n+1)+A023475(n)-n` -/
def P9778133109824140606.Spec : Prop :=
  ∀ n, P9778133109824140606.a n = A184031 (n + 1)

end A184031

/-! ## A184031.P10153947277455675381

`A004119(A008619(n))*A004119(A080513(n))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184031

/-- `A004119(A008619(n))*A004119(A080513(n))` -/
def P10153947277455675381.Spec : Prop :=
  ∀ n, P10153947277455675381.a n = A184031 (n + 1)

theorem P10153947277455675381.correct : P10153947277455675381.Spec := by
  intro n
  simp only [A184031, Nat.add_sub_cancel]

end A184031

/-! ## A184031.P4281347973144906725

`A181565(A004526(n+1))*A181565(A004526(n))`
-/

namespace A184031.P4281347973144906725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 (A004526 (n + 1)).toNat * A181565 (A004526 n).toNat

end

end A184031.P4281347973144906725

namespace A184031

/-- `A181565(A004526(n+1))*A181565(A004526(n))` -/
def P4281347973144906725.Spec : Prop :=
  ∀ n, P4281347973144906725.a n = A184031 (n + 1)

end A184031

/-! ## A184031.P14089026420842653000

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=16, a(1)=28, a(2)=49, a(3)=91`
-/

namespace A184031.P14089026420842653000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16, 28, 49, 91] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184031.P14089026420842653000

namespace A184031

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P14089026420842653000.Spec : Prop :=
  ∀ n, P14089026420842653000.a n = A184031 (n + 1)

end A184031

/-!
# A184032: 1/16 the number of (n+1) X 3 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184032, the canonical program `A184032.P3266962938891637893` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184032 has offset 1).

The definition of A184032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184032.P3266962938891637893

`A184031(n+1)+12`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184032

/-- `A184031(n+1)+12` -/
def P3266962938891637893.Spec : Prop :=
  ∀ n, P3266962938891637893.a n = A184032 (n + 1)

theorem P3266962938891637893.correct : P3266962938891637893.Spec := by
  intro n
  simp only [A184032, Nat.add_sub_cancel]

end A184032

/-! ## A184032.P15433941958630941677

`A184033(n+1)-21`
-/

namespace A184032.P15433941958630941677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184033 (n + 1) - 21

end

end A184032.P15433941958630941677

namespace A184032

/-- `A184033(n+1)-21` -/
def P15433941958630941677.Spec : Prop :=
  ∀ n, P15433941958630941677.a n = A184032 (n + 1)

end A184032

/-! ## A184032.P3842547163322095676

`A184034(n+1)-63`
-/

namespace A184032.P3842547163322095676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184034 (n + 1) - 63

end

end A184032.P3842547163322095676

namespace A184032

/-- `A184034(n+1)-63` -/
def P3842547163322095676.Spec : Prop :=
  ∀ n, P3842547163322095676.a n = A184032 (n + 1)

end A184032

/-! ## A184032.P12277483361696319353

`abs(A184035(n+1)-78)-63`
-/

namespace A184032.P12277483361696319353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184035 (n + 1) - 78| - 63

end

end A184032.P12277483361696319353

namespace A184032

/-- `abs(A184035(n+1)-78)-63` -/
def P12277483361696319353.Spec : Prop :=
  ∀ n, P12277483361696319353.a n = A184032 (n + 1)

end A184032

/-! ## A184032.P16100098513283610590

`A183980(n+1)+A184041(n+1)+A020707(n)`
-/

namespace A184032.P16100098513283610590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) + (A184041 (n + 1) + A020707 n)

end

end A184032.P16100098513283610590

namespace A184032

/-- `A183980(n+1)+A184041(n+1)+A020707(n)` -/
def P16100098513283610590.Spec : Prop :=
  ∀ n, P16100098513283610590.a n = A184032 (n + 1)

end A184032

/-! ## A184032.P6318065334885878218

`A183979(n+1)+A184044(n+1)+A020707(n)-63`
-/

namespace A184032.P6318065334885878218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + (A184044 (n + 1) + A020707 n) - 63

end

end A184032.P6318065334885878218

namespace A184032

/-- `A183979(n+1)+A184044(n+1)+A020707(n)-63` -/
def P6318065334885878218.Spec : Prop :=
  ∀ n, P6318065334885878218.a n = A184032 (n + 1)

end A184032

/-! ## A184032.P14510301963846317668

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=28, a(1)=40, a(2)=61, a(3)=103`
-/

namespace A184032.P14510301963846317668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [28, 40, 61, 103] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184032.P14510301963846317668

namespace A184032

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P14510301963846317668.Spec : Prop :=
  ∀ n, P14510301963846317668.a n = A184032 (n + 1)

end A184032

/-!
# A184033: 1/16 the number of (n+1) X 4 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184033, the canonical program `A184033.P5643691655713345315` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184033 has offset 1).

The definition of A184033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184033.P5643691655713345315

`A184032(n+1)+21`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A184033

/-- `A184032(n+1)+21` -/
def P5643691655713345315.Spec : Prop :=
  ∀ n, P5643691655713345315.a n = A184033 (n + 1)

theorem P5643691655713345315.correct : P5643691655713345315.Spec := by
  intro n
  simp only [A184033, Nat.add_sub_cancel]

end A184033

/-! ## A184033.P4536342999815058360

`A184031(n+1)+33`
-/

namespace A184033.P4536342999815058360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184031 (n + 1) + 33

end

end A184033.P4536342999815058360

namespace A184033

/-- `A184031(n+1)+33` -/
def P4536342999815058360.Spec : Prop :=
  ∀ n, P4536342999815058360.a n = A184033 (n + 1)

end A184033

/-! ## A184033.P8409050164591788271

`A184034(n+1)-42`
-/

namespace A184033.P8409050164591788271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184034 (n + 1) - 42

end

end A184033.P8409050164591788271

namespace A184033

/-- `A184034(n+1)-42` -/
def P8409050164591788271.Spec : Prop :=
  ∀ n, P8409050164591788271.a n = A184033 (n + 1)

end A184033

/-! ## A184033.P1176500953245795107

`abs(A184035(n+1)-78)-42`
-/

namespace A184033.P1176500953245795107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A184035 (n + 1) - 78| - 42

end

end A184033.P1176500953245795107

namespace A184033

/-- `abs(A184035(n+1)-78)-42` -/
def P1176500953245795107.Spec : Prop :=
  ∀ n, P1176500953245795107.a n = A184033 (n + 1)

end A184033

/-! ## A184033.P11691335736307046577

`A183980(n+1)+A184041(n+1)+A020707(n)+21`
-/

namespace A184033.P11691335736307046577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) + (A184041 (n + 1) + A020707 n) + 21

end

end A184033.P11691335736307046577

namespace A184033

/-- `A183980(n+1)+A184041(n+1)+A020707(n)+21` -/
def P11691335736307046577.Spec : Prop :=
  ∀ n, P11691335736307046577.a n = A184033 (n + 1)

end A184033

/-! ## A184033.P1292016078808909454

`A183979(n+1)+A184044(n+1)+A020707(n)-42`
-/

namespace A184033.P1292016078808909454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + (A184044 (n + 1) + A020707 n) - 42

end

end A184033.P1292016078808909454

namespace A184033

/-- `A183979(n+1)+A184044(n+1)+A020707(n)-42` -/
def P1292016078808909454.Spec : Prop :=
  ∀ n, P1292016078808909454.a n = A184033 (n + 1)

end A184033

/-! ## A184033.P12769007665445237801

`A004119(A008619(n))*A004119(A080513(n))+33`
-/

namespace A184033.P12769007665445237801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (A008619 n).toNat * A004119 (A080513 n).toNat + 33

end

end A184033.P12769007665445237801

namespace A184033

/-- `A004119(A008619(n))*A004119(A080513(n))+33` -/
def P12769007665445237801.Spec : Prop :=
  ∀ n, P12769007665445237801.a n = A184033 (n + 1)

end A184033

/-! ## A184033.P10567213441150941511

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=49, a(1)=61, a(2)=82, a(3)=124`
-/

namespace A184033.P10567213441150941511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [49, 61, 82, 124] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184033.P10567213441150941511

namespace A184033

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P10567213441150941511.Spec : Prop :=
  ∀ n, P10567213441150941511.a n = A184033 (n + 1)

end A184033

/-!
# A184034: 1/16 the number of (n+1) X 5 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184034, the canonical program `A184034.P8692255249367243317` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184034 has offset 1).

The definition of A184034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184034.P8692255249367243317

`A184033(n+1)+42`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A184034

/-- `A184033(n+1)+42` -/
def P8692255249367243317.Spec : Prop :=
  ∀ n, P8692255249367243317.a n = A184034 (n + 1)

theorem P8692255249367243317.correct : P8692255249367243317.Spec := by
  intro n
  simp only [A184034, Nat.add_sub_cancel]

end A184034

/-! ## A184034.P16689826769253836548

`A184032(n+1)+63`
-/

namespace A184034.P16689826769253836548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184032 (n + 1) + 63

end

end A184034.P16689826769253836548

namespace A184034

/-- `A184032(n+1)+63` -/
def P16689826769253836548.Spec : Prop :=
  ∀ n, P16689826769253836548.a n = A184034 (n + 1)

end A184034

/-! ## A184034.P947426646010442452

`A184031(n+1)+75`
-/

namespace A184034.P947426646010442452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184031 (n + 1) + 75

end

end A184034.P947426646010442452

namespace A184034

/-- `A184031(n+1)+75` -/
def P947426646010442452.Spec : Prop :=
  ∀ n, P947426646010442452.a n = A184034 (n + 1)

end A184034

/-! ## A184034.P1267030523742172263

`A184035(n+1)-78`
-/

namespace A184034.P1267030523742172263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184035 (n + 1) - 78

end

end A184034.P1267030523742172263

namespace A184034

/-- `A184035(n+1)-78` -/
def P1267030523742172263.Spec : Prop :=
  ∀ n, P1267030523742172263.a n = A184034 (n + 1)

end A184034

/-! ## A184034.P5731007693605028695

`A183979(n+1)+A184044(n+1)+A020707(n)`
-/

namespace A184034.P5731007693605028695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + (A184044 (n + 1) + A020707 n)

end

end A184034.P5731007693605028695

namespace A184034

/-- `A183979(n+1)+A184044(n+1)+A020707(n)` -/
def P5731007693605028695.Spec : Prop :=
  ∀ n, P5731007693605028695.a n = A184034 (n + 1)

end A184034

/-! ## A184034.P1157981566707769270

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=91, a(1)=103, a(2)=124, a(3)=166`
-/

namespace A184034.P1157981566707769270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [91, 103, 124, 166] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184034.P1157981566707769270

namespace A184034

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P1157981566707769270.Spec : Prop :=
  ∀ n, P1157981566707769270.a n = A184034 (n + 1)

end A184034

/-!
# A184035: 1/16 the number of (n+1) X 6 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184035, the canonical program `A184035.P7211642228587388134` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184035 has offset 1).

The definition of A184035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184035.P7211642228587388134

`A184034(n+1)+78`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A184035

/-- `A184034(n+1)+78` -/
def P7211642228587388134.Spec : Prop :=
  ∀ n, P7211642228587388134.a n = A184035 (n + 1)

theorem P7211642228587388134.correct : P7211642228587388134.Spec := by
  intro n
  simp only [A184035, Nat.add_sub_cancel]

end A184035

/-! ## A184035.P9796450727034443106

`and(A184032(n+1)+63, A184033(n+1)+42)+78`
-/

namespace A184035.P9796450727034443106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184032 (n + 1) + 63) (A184033 (n + 1) + 42) + 78

end

end A184035.P9796450727034443106

namespace A184035

/-- `and(A184032(n+1)+63, A184033(n+1)+42)+78` -/
def P9796450727034443106.Spec : Prop :=
  ∀ n, P9796450727034443106.a n = A184035 (n + 1)

end A184035

/-! ## A184035.P17874615659093805766

`and(A184031(n+1)+75, A184033(n+1)+42)+78`
-/

namespace A184035.P17874615659093805766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184031 (n + 1) + 75) (A184033 (n + 1) + 42) + 78

end

end A184035.P17874615659093805766

namespace A184035

/-- `and(A184031(n+1)+75, A184033(n+1)+42)+78` -/
def P17874615659093805766.Spec : Prop :=
  ∀ n, P17874615659093805766.a n = A184035 (n + 1)

end A184035

/-! ## A184035.P897301533947658631

`and(A184031(n+1)+75, A184032(n+1)+63)+78`
-/

namespace A184035.P897301533947658631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A184031 (n + 1) + 75) (A184032 (n + 1) + 63) + 78

end

end A184035.P897301533947658631

namespace A184035

/-- `and(A184031(n+1)+75, A184032(n+1)+63)+78` -/
def P897301533947658631.Spec : Prop :=
  ∀ n, P897301533947658631.a n = A184035 (n + 1)

end A184035

/-! ## A184035.P1400881634142513897

`A183979(n+1)+A184044(n+1)+A020707(n)+78`
-/

namespace A184035.P1400881634142513897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + (A184044 (n + 1) + A020707 n) + 78

end

end A184035.P1400881634142513897

namespace A184035

/-- `A183979(n+1)+A184044(n+1)+A020707(n)+78` -/
def P1400881634142513897.Spec : Prop :=
  ∀ n, P1400881634142513897.a n = A184035 (n + 1)

end A184035

/-! ## A184035.P8675083219666015839

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=169, a(1)=181, a(2)=202, a(3)=244`
-/

namespace A184035.P8675083219666015839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [169, 181, 202, 244] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184035.P8675083219666015839

namespace A184035

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P8675083219666015839.Spec : Prop :=
  ∀ n, P8675083219666015839.a n = A184035 (n + 1)

end A184035

/-! ## A184035.P12877092112838520524

`(A184033(n+1)+42)%A184032(2*(n+2))+78`
-/

namespace A184035.P12877092112838520524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184033 (n + 1) + 42) (A184032 (2 * (n + 2))) + 78

end

end A184035.P12877092112838520524

namespace A184035

/-- `(A184033(n+1)+42)%A184032(2*(n+2))+78` -/
def P12877092112838520524.Spec : Prop :=
  ∀ n, P12877092112838520524.a n = A184035 (n + 1)

end A184035

/-! ## A184035.P4775476769826131238

`(A184032(n+1)+63)%A184032(2*(n+2))+78`
-/

namespace A184035.P4775476769826131238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184032 (n + 1) + 63) (A184032 (2 * (n + 2))) + 78

end

end A184035.P4775476769826131238

namespace A184035

/-- `(A184032(n+1)+63)%A184032(2*(n+2))+78` -/
def P4775476769826131238.Spec : Prop :=
  ∀ n, P4775476769826131238.a n = A184035 (n + 1)

end A184035

/-!
# A184036: 1/16 the number of (n+1) X 7 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184036, the canonical program `A184036.P9807258316638069783` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184036 has offset 1).

The definition of A184036 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184036.P9807258316638069783

`6*(A184037(n+1)/6-50)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184036

/-- `6*(A184037(n+1)/6-50)` -/
def P9807258316638069783.Spec : Prop :=
  ∀ n, P9807258316638069783.a n = (A184036 (n + 1) : ℚ)

end A184036

/-! ## A184036.P6197211358387098252

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=325, a(1)=337, a(2)=358, a(3)=400`
-/

namespace A184036.P6197211358387098252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [325, 337, 358, 400] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184036.P6197211358387098252

namespace A184036

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P6197211358387098252.Spec : Prop :=
  ∀ n, P6197211358387098252.a n = A184036 (n + 1)

end A184036

/-! ## A184036.P1578975021710921749

`A184037(n+1)-50*6%A184039(n+1)`
-/

namespace A184036.P1578975021710921749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184037 (n + 1) - 50 * Int.tmod 6 (A184039 (n + 1))

end

end A184036.P1578975021710921749

namespace A184036

/-- `A184037(n+1)-50*6%A184039(n+1)` -/
def P1578975021710921749.Spec : Prop :=
  ∀ n, P1578975021710921749.a n = A184036 (n + 1)

end A184036

/-! ## A184036.P9597808131141143276

`A184039(A000124(n+5)+5)`
-/

namespace A184036.P9597808131141143276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A000124 (n + 5) + 5).toNat

end

end A184036.P9597808131141143276

namespace A184036

/-- `A184039(A000124(n+5)+5)` -/
def P9597808131141143276.Spec : Prop :=
  ∀ n, P9597808131141143276.a n = A184036 (n + 1)

end A184036

/-! ## A184036.P2500150468060505345

`A184039(A000217(n+5)+6)`
-/

namespace A184036.P2500150468060505345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A000217 (n + 5) + 6).toNat

end

end A184036.P2500150468060505345

namespace A184036

/-- `A184039(A000217(n+5)+6)` -/
def P2500150468060505345.Spec : Prop :=
  ∀ n, P2500150468060505345.a n = A184036 (n + 1)

end A184036

/-!
# A184037: 1/16 the number of (n+1) X 8 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184037, the canonical program `A184037.P4954675122188539096` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184037 has offset 1).

The definition of A184037 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184037.P4954675122188539096

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=625, a(1)=637, a(2)=658, a(3)=700`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184037

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P4954675122188539096.Spec : Prop :=
  ∀ n, P4954675122188539096.a n = A184037 (n + 1)

theorem P4954675122188539096.correct : P4954675122188539096.Spec := by
  intro n
  simp only [A184037, Nat.add_sub_cancel]

end A184037

/-! ## A184037.P10252073387274731962

`A184039(A166136(n+5)+1)`
-/

namespace A184037.P10252073387274731962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A166136 (n + 5) + 1).toNat

end

end A184037.P10252073387274731962

namespace A184037

/-- `A184039(A166136(n+5)+1)` -/
def P10252073387274731962.Spec : Prop :=
  ∀ n, P10252073387274731962.a n = A184037 (n + 1)

end A184037

/-! ## A184037.P15899045039361562261

`A184039(A167499(n+5)+2)`
-/

namespace A184037.P15899045039361562261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A167499 (n + 5) + 2).toNat

end

end A184037.P15899045039361562261

namespace A184037

/-- `A184039(A167499(n+5)+2)` -/
def P15899045039361562261.Spec : Prop :=
  ∀ n, P15899045039361562261.a n = A184037 (n + 1)

end A184037

/-! ## A184037.P9064837697920644660

`A184039(A167614(n+5)+4)`
-/

namespace A184037.P9064837697920644660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A167614 (n + 5) + 4).toNat

end

end A184037.P9064837697920644660

namespace A184037

/-- `A184039(A167614(n+5)+4)` -/
def P9064837697920644660.Spec : Prop :=
  ∀ n, P9064837697920644660.a n = A184037 (n + 1)

end A184037

/-! ## A184037.P15237368724792568632

`A184039(A000124(n+6)+6)`
-/

namespace A184037.P15237368724792568632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A000124 (n + 6) + 6).toNat

end

end A184037.P15237368724792568632

namespace A184037

/-- `A184039(A000124(n+6)+6)` -/
def P15237368724792568632.Spec : Prop :=
  ∀ n, P15237368724792568632.a n = A184037 (n + 1)

end A184037

/-!
# A184038: 1/16 the number of (n+1) X 9 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184038, there is no canonical definition to state claims against.
-/

/-! ## A184038.P6721984934497669482

`A184039(A167487(n+6)+1)`
-/

namespace A184038.P6721984934497669482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A167487 (n + 6) + 1).toNat

end

end A184038.P6721984934497669482

/-! ## A184038.P8152010572295097203

`A184039(A152950(n+8)+5)`
-/

namespace A184038.P8152010572295097203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A152950 (n + 8) + 5).toNat

end

end A184038.P8152010572295097203

/-! ## A184038.P4808904805852596935

`A184039(A000124(n+7)+7)`
-/

namespace A184038.P4808904805852596935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A000124 (n + 7) + 7).toNat

end

end A184038.P4808904805852596935

/-! ## A184038.P1450242651798644244

`A184039(A000217(n+7)+8)`
-/

namespace A184038.P1450242651798644244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (A000217 (n + 7) + 8).toNat

end

end A184038.P1450242651798644244

/-! ## A184038.P8404342705572060540

`A184039(eq[9, A131818(n+1)])`
-/

namespace A184038.P8404342705572060540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184039 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184038.P8404342705572060540

/-!
# A184039: T(n,k) = 1/16 the number of (n+1) X (k+1) 0..3 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184039, the canonical program `A184039.P4320161098641191564` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184039 has offset 1).

The definition of A184039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 287 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184039.P4320161098641191564

`3*(A184048(n+1)-A183986(n+1))+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A184039

/-- `3*(A184048(n+1)-A183986(n+1))+1` -/
def P4320161098641191564.Spec : Prop :=
  ∀ n, P4320161098641191564.a n = A184039 (n + 1)

theorem P4320161098641191564.correct : P4320161098641191564.Spec := by
  intro n
  simp only [A184039, Nat.add_sub_cancel]

end A184039

/-! ## A184039.P120331152304104667

`A016777(A184048(n+1)-A183986(n+1))`
-/

namespace A184039.P120331152304104667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A184048 (n + 1) - A183986 (n + 1)).toNat

end

end A184039.P120331152304104667

namespace A184039

/-- `A016777(A184048(n+1)-A183986(n+1))` -/
def P120331152304104667.Spec : Prop :=
  ∀ n, P120331152304104667.a n = A184039 (n + 1)

end A184039

/-!
# A184040: 1/9 the number of (n+1) X (n+1) 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184040, the canonical program `A184040.P3396644167371429518` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184040 has offset 1).

The definition of A184040 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184040.P3396644167371429518

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=9, a(1)=21, a(2)=41, a(3)=81`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184040

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P3396644167371429518.Spec : Prop :=
  ∀ n, P3396644167371429518.a n = A184040 (n + 1)

theorem P3396644167371429518.correct : P3396644167371429518.Spec := by
  intro n
  simp only [A184040, Nat.add_sub_cancel]

end A184040

/-! ## A184040.P2474930035862981608

`record[2*(a(n-1)+3)-(∏[gcd(2, n)]-1)]` with `a(0)=9, a(1)=3`
-/

namespace A184040.P2474930035862981608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9, 3] fun n f1 =>
  2 * (f1 (n - 1) + 3) - (((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184040.P2474930035862981608

namespace A184040

/-- `record[2*(a(n-1)+3)-(∏[gcd(2, n)]-1)]` -/
def P2474930035862981608.Spec : Prop :=
  ∀ n, P2474930035862981608.a n = A184040 (n + 1)

end A184040

/-! ## A184040.P5658361538916398973

`A183977(n+3)-5`
-/

namespace A184040.P5658361538916398973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183977 (n + 3) - 5

end

end A184040.P5658361538916398973

namespace A184040

/-- `A183977(n+3)-5` -/
def P5658361538916398973.Spec : Prop :=
  ∀ n, P5658361538916398973.a n = A184040 (n + 1)

end A184040

/-! ## A184040.P13124137085016687924

`4*A159230(n+2)+1`
-/

namespace A184040.P13124137085016687924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A159230 (n + 2) + 1

end

end A184040.P13124137085016687924

namespace A184040

/-- `4*A159230(n+2)+1` -/
def P13124137085016687924.Spec : Prop :=
  ∀ n, P13124137085016687924.a n = A184040 (n + 1)

end A184040

/-! ## A184040.P15546829060573640314

`2*A211525(n+1)-7`
-/

namespace A184040.P15546829060573640314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211525 (n + 1) - 7

end

end A184040.P15546829060573640314

namespace A184040

/-- `2*A211525(n+1)-7` -/
def P15546829060573640314.Spec : Prop :=
  ∀ n, P15546829060573640314.a n = A184040 (n + 1)

end A184040

/-! ## A184040.P11444222968423346808

`A136252(n+2)+∑[A000079(n+2)]`
-/

namespace A184040.P11444222968423346808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184040.P11444222968423346808

namespace A184040

/-- `A136252(n+2)+∑[A000079(n+2)]` -/
def P11444222968423346808.Spec : Prop :=
  ∀ n, P11444222968423346808.a n = A184040 (n + 1)

end A184040

/-! ## A184040.P6715550589981616055

`A347789(n+3)+A060482(2*(n+2))`
-/

namespace A184040.P6715550589981616055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347789 (n + 3) + A060482 (2 * (n + 2))

end

end A184040.P6715550589981616055

namespace A184040

/-- `A347789(n+3)+A060482(2*(n+2))` -/
def P6715550589981616055.Spec : Prop :=
  ∀ n, P6715550589981616055.a n = A184040 (n + 1)

end A184040

/-!
# A184041: 1/9 the number of (n+1) X 3 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184041, the canonical program `A184041.P17722413965595698240` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184041 has offset 1).

The definition of A184041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184041.P17722413965595698240

`A183980(n+3)+1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A184041

/-- `A183980(n+3)+1` -/
def P17722413965595698240.Spec : Prop :=
  ∀ n, P17722413965595698240.a n = A184041 (n + 1)

theorem P17722413965595698240.correct : P17722413965595698240.Spec := by
  intro n
  simp only [A184041, Nat.add_sub_cancel]

end A184041

/-! ## A184041.P383070432710532949

`A183979(n+3)+4`
-/

namespace A184041.P383070432710532949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 3) + 4

end

end A184041.P383070432710532949

namespace A184041

/-- `A183979(n+3)+4` -/
def P383070432710532949.Spec : Prop :=
  ∀ n, P383070432710532949.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P3581142557960667223

`A211525(n+1)+7`
-/

namespace A184041.P3581142557960667223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + 7

end

end A184041.P3581142557960667223

namespace A184041

/-- `A211525(n+1)+7` -/
def P3581142557960667223.Spec : Prop :=
  ∀ n, P3581142557960667223.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P17609969731105866444

`A183978(n+3)+6`
-/

namespace A184041.P17609969731105866444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (n + 3) + 6

end

end A184041.P17609969731105866444

namespace A184041

/-- `A183978(n+3)+6` -/
def P17609969731105866444.Spec : Prop :=
  ∀ n, P17609969731105866444.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P588261733694679389

`A183981(n+3)-5`
-/

namespace A184041.P588261733694679389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 3) - 5

end

end A184041.P588261733694679389

namespace A184041

/-- `A183981(n+3)-5` -/
def P588261733694679389.Spec : Prop :=
  ∀ n, P588261733694679389.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P4895819163727926854

`A184042(n+1)-10`
-/

namespace A184041.P4895819163727926854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184042 (n + 1) - 10

end

end A184041.P4895819163727926854

namespace A184041

/-- `A184042(n+1)-10` -/
def P4895819163727926854.Spec : Prop :=
  ∀ n, P4895819163727926854.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P6300864644534614817

`A290075(n+6)+7`
-/

namespace A184041.P6300864644534614817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (n + 6) + 7

end

end A184041.P6300864644534614817

namespace A184041

/-- `A290075(n+6)+7` -/
def P6300864644534614817.Spec : Prop :=
  ∀ n, P6300864644534614817.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P3833863909817592031

`A184043(n+1)-30`
-/

namespace A184041.P3833863909817592031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184043 (n + 1) - 30

end

end A184041.P3833863909817592031

namespace A184041

/-- `A184043(n+1)-30` -/
def P3833863909817592031.Spec : Prop :=
  ∀ n, P3833863909817592031.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P17502711994375144142

`2*A342761(n+1)+1`
-/

namespace A184041.P17502711994375144142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A342761 (n + 1) + 1

end

end A184041.P17502711994375144142

namespace A184041

/-- `2*A342761(n+1)+1` -/
def P17502711994375144142.Spec : Prop :=
  ∀ n, P17502711994375144142.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P1871970958832354577

`A209725(n+1)+A159217(n+2)`
-/

namespace A184041.P1871970958832354577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) + A159217 (n + 2)

end

end A184041.P1871970958832354577

namespace A184041

/-- `A209725(n+1)+A159217(n+2)` -/
def P1871970958832354577.Spec : Prop :=
  ∀ n, P1871970958832354577.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P9352783460037113943

`A343177(n+2)+A140504(n+2)`
-/

namespace A184041.P9352783460037113943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 (n + 2) + A140504 (n + 2)

end

end A184041.P9352783460037113943

namespace A184041

/-- `A343177(n+2)+A140504(n+2)` -/
def P9352783460037113943.Spec : Prop :=
  ∀ n, P9352783460037113943.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P10578481336868064025

`A343177(n+2)+A146528(n+2)`
-/

namespace A184041.P10578481336868064025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343177 (n + 2) + A146528 (n + 2)

end

end A184041.P10578481336868064025

namespace A184041

/-- `A343177(n+2)+A146528(n+2)` -/
def P10578481336868064025.Spec : Prop :=
  ∀ n, P10578481336868064025.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P11819986622506687361

`A090989(n+1)+A020707(n)+7`
-/

namespace A184041.P11819986622506687361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 1) + (A020707 n + 7)

end

end A184041.P11819986622506687361

namespace A184041

/-- `A090989(n+1)+A020707(n)+7` -/
def P11819986622506687361.Spec : Prop :=
  ∀ n, P11819986622506687361.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P13568475581657749293

`A090989(n+1)+A000079(n+2)+7`
-/

namespace A184041.P13568475581657749293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 1) + A000079 (n + 2) + 7

end

end A184041.P13568475581657749293

namespace A184041

/-- `A090989(n+1)+A000079(n+2)+7` -/
def P13568475581657749293.Spec : Prop :=
  ∀ n, P13568475581657749293.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P13349809884978242808

`A209724(2*n+3)+A209721(n+3)`
-/

namespace A184041.P13349809884978242808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (2 * n + 3) + A209721 (n + 3)

end

end A184041.P13349809884978242808

namespace A184041

/-- `A209724(2*n+3)+A209721(n+3)` -/
def P13349809884978242808.Spec : Prop :=
  ∀ n, P13349809884978242808.a n = A184041 (n + 1)

end A184041

/-! ## A184041.P7117546097470278266

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=15, a(1)=21, a(2)=31, a(3)=51`
-/

namespace A184041.P7117546097470278266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 21, 31, 51] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184041.P7117546097470278266

namespace A184041

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P7117546097470278266.Spec : Prop :=
  ∀ n, P7117546097470278266.a n = A184041 (n + 1)

end A184041

/-!
# A184042: 1/9 the number of (n+1) X 4 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184042, the canonical program `A184042.P2967297191868889764` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184042 has offset 1).

The definition of A184042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184042.P2967297191868889764

`A183981(n+3)+5`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184042

/-- `A183981(n+3)+5` -/
def P2967297191868889764.Spec : Prop :=
  ∀ n, P2967297191868889764.a n = A184042 (n + 1)

theorem P2967297191868889764.correct : P2967297191868889764.Spec := by
  intro n
  simp only [A184042, Nat.add_sub_cancel]

end A184042

/-! ## A184042.P4440243405109889918

`A183982(n+3)-5`
-/

namespace A184042.P4440243405109889918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 3) - 5

end

end A184042.P4440243405109889918

namespace A184042

/-- `A183982(n+3)-5` -/
def P4440243405109889918.Spec : Prop :=
  ∀ n, P4440243405109889918.a n = A184042 (n + 1)

end A184042

/-! ## A184042.P8215233620493721839

`A184041(n+1)+10`
-/

namespace A184042.P8215233620493721839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184041 (n + 1) + 10

end

end A184042.P8215233620493721839

namespace A184042

/-- `A184041(n+1)+10` -/
def P8215233620493721839.Spec : Prop :=
  ∀ n, P8215233620493721839.a n = A184042 (n + 1)

end A184042

/-! ## A184042.P18069928644168267952

`∑[∑[A051437(n)]+1]+23+n`
-/

namespace A184042.P18069928644168267952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051437 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 23 + (n : ℤ)

end

end A184042.P18069928644168267952

namespace A184042

/-- `∑[∑[A051437(n)]+1]+23+n` -/
def P18069928644168267952.Spec : Prop :=
  ∀ n, P18069928644168267952.a n = A184042 (n + 1)

end A184042

/-! ## A184042.P2245649509335201034

`A267615(n+2)+A209724(n+3)`
-/

namespace A184042.P2245649509335201034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 (n + 2) + A209724 (n + 3)

end

end A184042.P2245649509335201034

namespace A184042

/-- `A267615(n+2)+A209724(n+3)` -/
def P2245649509335201034.Spec : Prop :=
  ∀ n, P2245649509335201034.a n = A184042 (n + 1)

end A184042

/-! ## A184042.P14459116103666447491

`A184043(n+1)+A023462(n)-n`
-/

namespace A184042.P14459116103666447491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184043 (n + 1) + (A023462 n - (n : ℤ))

end

end A184042.P14459116103666447491

namespace A184042

/-- `A184043(n+1)+A023462(n)-n` -/
def P14459116103666447491.Spec : Prop :=
  ∀ n, P14459116103666447491.a n = A184042 (n + 1)

end A184042

/-! ## A184042.P6225586895059740453

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=25, a(1)=31, a(2)=41, a(3)=61`
-/

namespace A184042.P6225586895059740453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 31, 41, 61] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184042.P6225586895059740453

namespace A184042

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P6225586895059740453.Spec : Prop :=
  ∀ n, P6225586895059740453.a n = A184042 (n + 1)

end A184042

/-!
# A184043: 1/9 the number of (n+1) X 5 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184043, the canonical program `A184043.P4071349188653570990` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184043 has offset 1).

The definition of A184043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184043.P4071349188653570990

`A183983(n+3)-5`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184043

/-- `A183983(n+3)-5` -/
def P4071349188653570990.Spec : Prop :=
  ∀ n, P4071349188653570990.a n = A184043 (n + 1)

theorem P4071349188653570990.correct : P4071349188653570990.Spec := by
  intro n
  simp only [A184043, Nat.add_sub_cancel]

end A184043

/-! ## A184043.P8437086920192552052

`A183981(n+3)+25`
-/

namespace A184043.P8437086920192552052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (n + 3) + 25

end

end A184043.P8437086920192552052

namespace A184043

/-- `A183981(n+3)+25` -/
def P8437086920192552052.Spec : Prop :=
  ∀ n, P8437086920192552052.a n = A184043 (n + 1)

end A184043

/-! ## A184043.P2110361191754609513

`A184041(n+1)+30`
-/

namespace A184043.P2110361191754609513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184041 (n + 1) + 30

end

end A184043.P2110361191754609513

namespace A184043

/-- `A184041(n+1)+30` -/
def P2110361191754609513.Spec : Prop :=
  ∀ n, P2110361191754609513.a n = A184043 (n + 1)

end A184043

/-! ## A184043.P10020523310833867869

`A211525(n+1)+37`
-/

namespace A184043.P10020523310833867869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + 37

end

end A184043.P10020523310833867869

namespace A184043

/-- `A211525(n+1)+37` -/
def P10020523310833867869.Spec : Prop :=
  ∀ n, P10020523310833867869.a n = A184043 (n + 1)

end A184043

/-! ## A184043.P11823528064383661430

`4*(A184042(n+1)/4+5)`
-/

namespace A184043.P11823528064383661430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A184042 (n + 1) : ℚ) / 4 + 5)

end

end A184043.P11823528064383661430

namespace A184043

/-- `4*(A184042(n+1)/4+5)` -/
def P11823528064383661430.Spec : Prop :=
  ∀ n, P11823528064383661430.a n = (A184043 (n + 1) : ℚ)

end A184043

/-! ## A184043.P7782361793611573616

`A184044(n+1)+A023478(n)-n`
-/

namespace A184043.P7782361793611573616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184044 (n + 1) + (A023478 n - (n : ℤ))

end

end A184043.P7782361793611573616

namespace A184043

/-- `A184044(n+1)+A023478(n)-n` -/
def P7782361793611573616.Spec : Prop :=
  ∀ n, P7782361793611573616.a n = A184043 (n + 1)

end A184043

/-! ## A184043.P599935057683575495

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=45, a(1)=51, a(2)=61, a(3)=81`
-/

namespace A184043.P599935057683575495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [45, 51, 61, 81] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184043.P599935057683575495

namespace A184043

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P599935057683575495.Spec : Prop :=
  ∀ n, P599935057683575495.a n = A184043 (n + 1)

end A184043

/-!
# A184044: 1/9 the number of (n+1) X 6 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184044, the canonical program `A184044.P4683206552624240549` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184044 has offset 1).

The definition of A184044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184044.P4683206552624240549

`A183984(n+3)-5`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A184044

/-- `A183984(n+3)-5` -/
def P4683206552624240549.Spec : Prop :=
  ∀ n, P4683206552624240549.a n = A184044 (n + 1)

theorem P4683206552624240549.correct : P4683206552624240549.Spec := by
  intro n
  simp only [A184044, Nat.add_sub_cancel]

end A184044

/-! ## A184044.P4382314293622962927

`A184043(n+1)+36`
-/

namespace A184044.P4382314293622962927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184043 (n + 1) + 36

end

end A184044.P4382314293622962927

namespace A184044

/-- `A184043(n+1)+36` -/
def P4382314293622962927.Spec : Prop :=
  ∀ n, P4382314293622962927.a n = A184044 (n + 1)

end A184044

/-! ## A184044.P13852826828891530335

`A184042(n+1)+56`
-/

namespace A184044.P13852826828891530335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184042 (n + 1) + 56

end

end A184044.P13852826828891530335

namespace A184044

/-- `A184042(n+1)+56` -/
def P13852826828891530335.Spec : Prop :=
  ∀ n, P13852826828891530335.a n = A184044 (n + 1)

end A184044

/-! ## A184044.P15469383858034010305

`or(1, A183983(n+3)+30)`
-/

namespace A184044.P15469383858034010305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A183983 (n + 3) + 30)

end

end A184044.P15469383858034010305

namespace A184044

/-- `or(1, A183983(n+3)+30)` -/
def P15469383858034010305.Spec : Prop :=
  ∀ n, P15469383858034010305.a n = A184044 (n + 1)

end A184044

/-! ## A184044.P18272919242438113532

`A184041(n+1)+A044132(A000005(A215358(n+1)))`
-/

namespace A184044.P18272919242438113532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184041 (n + 1) + A044132 (A000005 (A215358 (n + 1)).toNat).toNat

end

end A184044.P18272919242438113532

namespace A184044

/-- `A184041(n+1)+A044132(A000005(A215358(n+1)))` -/
def P18272919242438113532.Spec : Prop :=
  ∀ n, P18272919242438113532.a n = A184044 (n + 1)

end A184044

/-! ## A184044.P2981570864776853012

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=81, a(1)=87, a(2)=97, a(3)=117`
-/

namespace A184044.P2981570864776853012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [81, 87, 97, 117] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184044.P2981570864776853012

namespace A184044

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P2981570864776853012.Spec : Prop :=
  ∀ n, P2981570864776853012.a n = A184044 (n + 1)

end A184044

/-!
# A184045: 1/9 the number of (n+1) X 7 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184045, the canonical program `A184045.P13433366339287709500` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184045 has offset 1).

The definition of A184045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184045.P13433366339287709500

`A183985(n+3)-5`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A184045

/-- `A183985(n+3)-5` -/
def P13433366339287709500.Spec : Prop :=
  ∀ n, P13433366339287709500.a n = A184045 (n + 1)

theorem P13433366339287709500.correct : P13433366339287709500.Spec := by
  intro n
  simp only [A184045, Nat.add_sub_cancel]

end A184045

/-! ## A184045.P13778980869525970403

`A184044(n+1)+72`
-/

namespace A184045.P13778980869525970403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184044 (n + 1) + 72

end

end A184045.P13778980869525970403

namespace A184045

/-- `A184044(n+1)+72` -/
def P13778980869525970403.Spec : Prop :=
  ∀ n, P13778980869525970403.a n = A184045 (n + 1)

end A184045

/-! ## A184045.P2716838339304222475

`abs(A183984(n+3)-5)+72`
-/

namespace A184045.P2716838339304222475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A183984 (n + 3) - 5| + 72

end

end A184045.P2716838339304222475

namespace A184045

/-- `abs(A183984(n+3)-5)+72` -/
def P2716838339304222475.Spec : Prop :=
  ∀ n, P2716838339304222475.a n = A184045 (n + 1)

end A184045

/-! ## A184045.P12669861637606821605

`A184043(n+1)-36/(2/3-1)`
-/

namespace A184045.P12669861637606821605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184043 (n + 1) : ℚ) - 36 / ((2 : ℚ) / 3 - 1)

end

end A184045.P12669861637606821605

namespace A184045

/-- `A184043(n+1)-36/(2/3-1)` -/
def P12669861637606821605.Spec : Prop :=
  ∀ n, P12669861637606821605.a n = (A184045 (n + 1) : ℚ)

end A184045

/-! ## A184045.P7529224613065249879

`A184041(n+1)+A044370(A020639(A044370(n+1)))`
-/

namespace A184045.P7529224613065249879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184041 (n + 1) + A044370 (A020639 (A044370 (n + 1)).toNat).toNat

end

end A184045.P7529224613065249879

namespace A184045

/-- `A184041(n+1)+A044370(A020639(A044370(n+1)))` -/
def P7529224613065249879.Spec : Prop :=
  ∀ n, P7529224613065249879.a n = A184045 (n + 1)

end A184045

/-! ## A184045.P18261524690272979356

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=153, a(1)=159, a(2)=169, a(3)=189`
-/

namespace A184045.P18261524690272979356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [153, 159, 169, 189] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184045.P18261524690272979356

namespace A184045

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P18261524690272979356.Spec : Prop :=
  ∀ n, P18261524690272979356.a n = A184045 (n + 1)

end A184045

/-!
# A184046: 1/9 the number of (n+1) X 8 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184046, the canonical program `A184046.P17356359777739550745` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184046 has offset 1).

The definition of A184046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184046.P17356359777739550745

`A184041(n+1)+274`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A184046

/-- `A184041(n+1)+274` -/
def P17356359777739550745.Spec : Prop :=
  ∀ n, P17356359777739550745.a n = A184046 (n + 1)

theorem P17356359777739550745.correct : P17356359777739550745.Spec := by
  intro n
  simp only [A184046, Nat.add_sub_cancel]

end A184046

/-! ## A184046.P3353553856989619435

`A211525(n+1)+281`
-/

namespace A184046.P3353553856989619435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211525 (n + 1) + 281

end

end A184046.P3353553856989619435

namespace A184046

/-- `A211525(n+1)+281` -/
def P3353553856989619435.Spec : Prop :=
  ∀ n, P3353553856989619435.a n = A184046 (n + 1)

end A184046

/-! ## A184046.P13380788581832127742

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=289, a(1)=295, a(2)=305, a(3)=325`
-/

namespace A184046.P13380788581832127742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [289, 295, 305, 325] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A184046.P13380788581832127742

namespace A184046

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P13380788581832127742.Spec : Prop :=
  ∀ n, P13380788581832127742.a n = A184046 (n + 1)

end A184046

/-! ## A184046.P3768637539315026974

`A184048(A167499(n+5)+2)`
-/

namespace A184046.P3768637539315026974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184048 (A167499 (n + 5) + 2).toNat

end

end A184046.P3768637539315026974

namespace A184046

/-- `A184048(A167499(n+5)+2)` -/
def P3768637539315026974.Spec : Prop :=
  ∀ n, P3768637539315026974.a n = A184046 (n + 1)

end A184046

/-! ## A184046.P16513310109990778764

`A184048(A077169(n+7)+2)`
-/

namespace A184046.P16513310109990778764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184048 (A077169 (n + 7) + 2).toNat

end

end A184046.P16513310109990778764

namespace A184046

/-- `A184048(A077169(n+7)+2)` -/
def P16513310109990778764.Spec : Prop :=
  ∀ n, P16513310109990778764.a n = A184046 (n + 1)

end A184046

/-!
# A184047: 1/9 the number of (n+1) X 9 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184047, the canonical program `A184047.P2906652838608361730` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184047 has offset 1).

The definition of A184047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184047.P2906652838608361730

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=561, a(1)=567, a(2)=577, a(3)=597`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184047

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P2906652838608361730.Spec : Prop :=
  ∀ n, P2906652838608361730.a n = A184047 (n + 1)

theorem P2906652838608361730.correct : P2906652838608361730.Spec := by
  intro n
  simp only [A184047, Nat.add_sub_cancel]

end A184047

/-! ## A184047.P6514737976133587286

`A184048(A167499(n+6)+3)`
-/

namespace A184047.P6514737976133587286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184048 (A167499 (n + 6) + 3).toNat

end

end A184047.P6514737976133587286

namespace A184047

/-- `A184048(A167499(n+6)+3)` -/
def P6514737976133587286.Spec : Prop :=
  ∀ n, P6514737976133587286.a n = A184047 (n + 1)

end A184047

/-! ## A184047.P12713135041563172490

`A184048(A152950(n+8)+5)`
-/

namespace A184047.P12713135041563172490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184048 (A152950 (n + 8) + 5).toNat

end

end A184047.P12713135041563172490

namespace A184047

/-- `A184048(A152950(n+8)+5)` -/
def P12713135041563172490.Spec : Prop :=
  ∀ n, P12713135041563172490.a n = A184047 (n + 1)

end A184047

/-! ## A184047.P155515411675091177

`A184048(A000124(n+7)+7)`
-/

namespace A184047.P155515411675091177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184048 (A000124 (n + 7) + 7).toNat

end

end A184047.P155515411675091177

namespace A184047

/-- `A184048(A000124(n+7)+7)` -/
def P155515411675091177.Spec : Prop :=
  ∀ n, P155515411675091177.a n = A184047 (n + 1)

end A184047

/-! ## A184047.P13427887587769130812

`A184048(A000217(n+7)+8)`
-/

namespace A184047.P13427887587769130812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184048 (A000217 (n + 7) + 8).toNat

end

end A184047.P13427887587769130812

namespace A184047

/-- `A184048(A000217(n+7)+8)` -/
def P13427887587769130812.Spec : Prop :=
  ∀ n, P13427887587769130812.a n = A184047 (n + 1)

end A184047

/-!
# A184048: T(n,k) = 1/9 the number of (n+1) X (k+1) 0..2 arrays with all 2 X 2 subblocks having the same four values.

The programs for A184048, the canonical program `A184048.P14701129384521830144` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184048 has offset 1).

The definition of A184048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184048.P14701129384521830144

`2*(A183986(n+1)+A131816(n))-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A184048

/-- `2*(A183986(n+1)+A131816(n))-1` -/
def P14701129384521830144.Spec : Prop :=
  ∀ n, P14701129384521830144.a n = A184048 (n + 1)

theorem P14701129384521830144.correct : P14701129384521830144.Spec := by
  intro n
  simp only [A184048, Nat.add_sub_cancel]

end A184048

/-! ## A184048.P13320674811786233832

`A250742(n+1)+A004273(A209727(n+1))`
-/

namespace A184048.P13320674811786233832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250742 (n + 1) + A004273 (A209727 (n + 1)).toNat

end

end A184048.P13320674811786233832

namespace A184048

/-- `A250742(n+1)+A004273(A209727(n+1))` -/
def P13320674811786233832.Spec : Prop :=
  ∀ n, P13320674811786233832.a n = A184048 (n + 1)

end A184048

/-! ## A184048.P11686524864461285025

`A005408(A131816(n))+A004275(A183986(n+1))`
-/

namespace A184048.P11686524864461285025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A131816 n).toNat + A004275 (A183986 (n + 1)).toNat

end

end A184048.P11686524864461285025

namespace A184048

/-- `A005408(A131816(n))+A004275(A183986(n+1))` -/
def P11686524864461285025.Spec : Prop :=
  ∀ n, P11686524864461285025.a n = A184048 (n + 1)

end A184048

/-! ## A184048.P1923278939134492338

`A004275(A183986(n+1))+A004273(A271709(n))`
-/

namespace A184048.P1923278939134492338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A183986 (n + 1)).toNat + A004273 (A271709 n).toNat

end

end A184048.P1923278939134492338

namespace A184048

/-- `A004275(A183986(n+1))+A004273(A271709(n))` -/
def P1923278939134492338.Spec : Prop :=
  ∀ n, P1923278939134492338.a n = A184048 (n + 1)

end A184048

/-! ## A184048.P15957629521910333971

`A130824(A271709(n))+A004273(A209727(n+1))`
-/

namespace A184048.P15957629521910333971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A271709 n).toNat + A004273 (A209727 (n + 1)).toNat

end

end A184048.P15957629521910333971

namespace A184048

/-- `A130824(A271709(n))+A004273(A209727(n+1))` -/
def P15957629521910333971.Spec : Prop :=
  ∀ n, P15957629521910333971.a n = A184048 (n + 1)

end A184048

/-! ## A184048.P10930343687219780607

`A130824(A183986(n+1))-A005408(A209727(n+1))`
-/

namespace A184048.P10930343687219780607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A183986 (n + 1)).toNat - A005408 (A209727 (n + 1)).toNat

end

end A184048.P10930343687219780607

namespace A184048

/-- `A130824(A183986(n+1))-A005408(A209727(n+1))` -/
def P10930343687219780607.Spec : Prop :=
  ∀ n, P10930343687219780607.a n = A184048 (n + 1)

end A184048

/-! ## A184048.P13220014059415694152

`A004273(A183986(n+1)+A131816(n))`
-/

namespace A184048.P13220014059415694152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A183986 (n + 1) + A131816 n).toNat

end

end A184048.P13220014059415694152

namespace A184048

/-- `A004273(A183986(n+1)+A131816(n))` -/
def P13220014059415694152.Spec : Prop :=
  ∀ n, P13220014059415694152.a n = A184048 (n + 1)

end A184048

/-! ## A184048.P4065787322718102063

`A004274(A183986(n+1)+A131816(n)+1)`
-/

namespace A184048.P4065787322718102063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A183986 (n + 1) + (A131816 n + 1)).toNat

end

end A184048.P4065787322718102063

namespace A184048

/-- `A004274(A183986(n+1)+A131816(n)+1)` -/
def P4065787322718102063.Spec : Prop :=
  ∀ n, P4065787322718102063.a n = A184048 (n + 1)

end A184048

/-! ## A184048.P11408389102124138394

`A004275(A183986(n+1)+A131816(n))+1`
-/

namespace A184048.P11408389102124138394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A183986 (n + 1) + A131816 n).toNat + 1

end

end A184048.P11408389102124138394

namespace A184048

/-- `A004275(A183986(n+1)+A131816(n))+1` -/
def P11408389102124138394.Spec : Prop :=
  ∀ n, P11408389102124138394.a n = A184048 (n + 1)

end A184048

/-! ## A184048.P16464670467648060232

`A005408(A183986(n+1)+A131816(n)-1)`
-/

namespace A184048.P16464670467648060232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A183986 (n + 1) + (A131816 n - 1)).toNat

end

end A184048.P16464670467648060232

namespace A184048

/-- `A005408(A183986(n+1)+A131816(n)-1)` -/
def P16464670467648060232.Spec : Prop :=
  ∀ n, P16464670467648060232.a n = A184048 (n + 1)

end A184048

/-!
# A184049: T(n,k) is the number of order-preserving and order-decreasing partial isometries (of an n-chain) of height k (height of alpha = |Im(alpha)|).

The programs for A184049, the canonical program `A184049.P6454318504092061159` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184049 has offset 0).

The definition of A184049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184049.P5679214766412759624

`C(round(sqrt(2*n)), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A184049.P5679214766412759624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A184049.P5679214766412759624

namespace A184049

/-- `C(round(sqrt(2*n)), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P5679214766412759624.Spec : Prop :=
  ∀ n, (P5679214766412759624.a n : ℤ) = A184049 n

end A184049

/-! ## A184049.P797083148996121268

`A007318(comp[∑[n]+1])`
-/

namespace A184049.P797083148996121268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A184049.P797083148996121268

namespace A184049

/-- `A007318(comp[∑[n]+1])` -/
def P797083148996121268.Spec : Prop :=
  ∀ n, P797083148996121268.a n = A184049 n

end A184049

/-! ## A184049.P14197062157544941981

`A028326(comp[∑[n]+1])/2`
-/

namespace A184049.P14197062157544941981
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A184049.P14197062157544941981

namespace A184049

/-- `A028326(comp[∑[n]+1])/2` -/
def P14197062157544941981.Spec : Prop :=
  ∀ n, P14197062157544941981.a n = (A184049 n : ℚ)

end A184049

/-! ## A184049.P6834178491832166134

`C(round(sqrt(2*n)), A025581(n))`
-/

namespace A184049.P6834178491832166134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat (A025581 n).toNat

end

end A184049.P6834178491832166134

namespace A184049

/-- `C(round(sqrt(2*n)), A025581(n))` -/
def P6834178491832166134.Spec : Prop :=
  ∀ n, (P6834178491832166134.a n : ℤ) = A184049 n

end A184049

/-! ## A184049.P8895632563480627475

`A007318(comp[∑[n]])^(1-char[∑[n]])`
-/

namespace A184049.P8895632563480627475
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) ^ (1 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A184049.P8895632563480627475

namespace A184049

/-- `A007318(comp[∑[n]])^(1-char[∑[n]])` -/
def P8895632563480627475.Spec : Prop :=
  ∀ n, P8895632563480627475.a n = (A184049 n : ℚ)

end A184049

/-! ## A184049.P3946521245884106202

`A209518(A056943(n))`
-/

namespace A184049.P3946521245884106202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209518 (A056943 n).toNat

end

end A184049.P3946521245884106202

namespace A184049

/-- `A209518(A056943(n))` -/
def P3946521245884106202.Spec : Prop :=
  ∀ n, P3946521245884106202.a n = A184049 n

end A184049

/-! ## A184049.P6454318504092061159

`A074909(A132119(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A184049

/-- `A074909(A132119(n+1))` -/
def P6454318504092061159.Spec : Prop :=
  ∀ n, P6454318504092061159.a n = A184049 n

theorem P6454318504092061159.correct : P6454318504092061159.Spec := by
  intro n
  simp only [A184049]

end A184049

/-! ## A184049.P4200875107752789754

`A135278(n-A073424(n))`
-/

namespace A184049.P4200875107752789754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 ((n : ℤ) - A073424 n).toNat

end

end A184049.P4200875107752789754

namespace A184049

/-- `A135278(n-A073424(n))` -/
def P4200875107752789754.Spec : Prop :=
  ∀ n, P4200875107752789754.a n = A184049 n

end A184049

/-! ## A184049.P4147277847742553168

`A153861(n-A073424(n))`
-/

namespace A184049.P4147277847742553168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 ((n : ℤ) - A073424 n).toNat

end

end A184049.P4147277847742553168

namespace A184049

/-- `A153861(n-A073424(n))` -/
def P4147277847742553168.Spec : Prop :=
  ∀ n, P4147277847742553168.a n = A184049 n

end A184049

/-! ## A184049.P11397860533193546380

`A153861(n*A123110(n))`
-/

namespace A184049.P11397860533193546380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153861 ((n : ℤ) * A123110 n).toNat

end

end A184049.P11397860533193546380

namespace A184049

/-- `A153861(n*A123110(n))` -/
def P11397860533193546380.Spec : Prop :=
  ∀ n, P11397860533193546380.a n = A184049 n

end A184049

/-! ## A184049.P2096539919070127443

`A103371(n)/A135227(n)`
-/

namespace A184049.P2096539919070127443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103371 n : ℚ) / (A135227 n : ℚ)

end

end A184049.P2096539919070127443

namespace A184049

/-- `A103371(n)/A135227(n)` -/
def P2096539919070127443.Spec : Prop :=
  ∀ n, P2096539919070127443.a n = (A184049 n : ℚ)

end A184049

/-! ## A184049.P584256454106355498

`gcd(A010816(n), A135278(n))`
-/

namespace A184049.P584256454106355498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A135278 n)

end

end A184049.P584256454106355498

namespace A184049

/-- `gcd(A010816(n), A135278(n))` -/
def P584256454106355498.Spec : Prop :=
  ∀ n, (P584256454106355498.a n : ℤ) = A184049 n

end A184049

/-! ## A184049.P1743129866818647032

`gcd(A103371(n), A153861(n))`
-/

namespace A184049.P1743129866818647032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103371 n) (A153861 n)

end

end A184049.P1743129866818647032

namespace A184049

/-- `gcd(A103371(n), A153861(n))` -/
def P1743129866818647032.Spec : Prop :=
  ∀ n, (P1743129866818647032.a n : ℤ) = A184049 n

end A184049

/-! ## A184049.P6910037363709100795

`A135278(n)/A130296(n+1)`
-/

namespace A184049.P6910037363709100795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135278 n : ℚ) / (A130296 (n + 1) : ℚ)

end

end A184049.P6910037363709100795

namespace A184049

/-- `A135278(n)/A130296(n+1)` -/
def P6910037363709100795.Spec : Prop :=
  ∀ n, P6910037363709100795.a n = (A184049 n : ℚ)

end A184049

/-! ## A184049.P1948671086579368845

`gcd(A135356(n+1), A155863(n))`
-/

namespace A184049.P1948671086579368845
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A135356 (n + 1)) (A155863 n)

end

end A184049.P1948671086579368845

namespace A184049

/-- `gcd(A135356(n+1), A155863(n))` -/
def P1948671086579368845.Spec : Prop :=
  ∀ n, (P1948671086579368845.a n : ℤ) = A184049 n

end A184049

/-! ## A184049.P17504432992203327729

`gcd(A124931(n+1), A193819(n))`
-/

namespace A184049.P17504432992203327729
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A124931 (n + 1)) (A193819 n)

end

end A184049.P17504432992203327729

namespace A184049

/-- `gcd(A124931(n+1), A193819(n))` -/
def P17504432992203327729.Spec : Prop :=
  ∀ n, (P17504432992203327729.a n : ℤ) = A184049 n

end A184049

/-! ## A184049.P2036916208093869082

`A003506(n+1)/A131818(n+1)`
-/

namespace A184049.P2036916208093869082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003506 (n + 1) : ℚ) / (A131818 (n + 1) : ℚ)

end

end A184049.P2036916208093869082

namespace A184049

/-- `A003506(n+1)/A131818(n+1)` -/
def P2036916208093869082.Spec : Prop :=
  ∀ n, P2036916208093869082.a n = (A184049 n : ℚ)

end A184049

/-! ## A184049.P6936773866637880492

`A074909(n+1)-A003056(n*A010054(n))`
-/

namespace A184049.P6936773866637880492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (n + 1) - A003056 ((n : ℤ) * A010054 n).toNat

end

end A184049.P6936773866637880492

namespace A184049

/-- `A074909(n+1)-A003056(n*A010054(n))` -/
def P6936773866637880492.Spec : Prop :=
  ∀ n, P6936773866637880492.a n = A184049 n

end A184049

/-! ## A184049.P1599886416548970457

`A124927(n+1)+A129994(n)-A130301(n+1)`
-/

namespace A184049.P1599886416548970457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124927 (n + 1) + (A129994 n - A130301 (n + 1))

end

end A184049.P1599886416548970457

namespace A184049

/-- `A124927(n+1)+A129994(n)-A130301(n+1)` -/
def P1599886416548970457.Spec : Prop :=
  ∀ n, P1599886416548970457.a n = A184049 n

end A184049

/-! ## A184049.P6838930248329928544

`A130301(A130296(n+1)+n)`
-/

namespace A184049.P6838930248329928544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130301 (A130296 (n + 1) + (n : ℤ)).toNat

end

end A184049.P6838930248329928544

namespace A184049

/-- `A130301(A130296(n+1)+n)` -/
def P6838930248329928544.Spec : Prop :=
  ∀ n, P6838930248329928544.a n = A184049 n

end A184049

/-!
# A184050: T(n,k) is the number of order-preserving and order-decreasing partial isometries (of an n-chain) with exactly k fixed points.

The programs for A184050, there is no canonical definition to state claims against.
-/

/-! ## A184050.P8164478058972001987

`ceil(A183154(n)/(char[∑[n]]+1))`
-/

namespace A184050.P8164478058972001987
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A183154 n : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ)⌉

end

end A184050.P8164478058972001987

/-! ## A184050.P5784177682904084451

`(A183154(n)+A007318(n))/2`
-/

namespace A184050.P5784177682904084451
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183154 n + A007318 n : ℚ) / 2

end

end A184050.P5784177682904084451

/-! ## A184050.P5795137853733153591

`A007318(n)+A000295(A158821(n))`
-/

namespace A184050.P5795137853733153591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + A000295 (A158821 n).toNat

end

end A184050.P5795137853733153591

/-! ## A184050.P7959223799572490480

`A014473(n)+A000325(A158821(n))`
-/

namespace A184050.P7959223799572490480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + A000325 (A158821 n).toNat

end

end A184050.P7959223799572490480

/-! ## A184050.P8380524183722953281

`A001281(A183154(n)+A007318(n))`
-/

namespace A184050.P8380524183722953281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A183154 n + A007318 n).toNat

end

end A184050.P8380524183722953281

/-!
# A184051: T(n,k) is the number of order-decreasing partial isometries (of an n-chain) with exactly k fixed points.

The programs for A184051, there is no canonical definition to state claims against.
-/

/-! ## A184051.P17261362599216638819

`A121460(n+1)-A326291(A185384(n))`
-/

namespace A184051.P17261362599216638819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121460 (n + 1) - A326291 (A185384 n).toNat

end

end A184051.P17261362599216638819

/-! ## A184051.P5594446394482357649

`A059418(n+1)-A121261(A059418(n+1))`
-/

namespace A184051.P5594446394482357649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059418 (n + 1) - A121261 (A059418 (n + 1)).toNat

end

end A184051.P5594446394482357649

/-! ## A184051.P3344400824605560675

`A105292(A043320(n+1))-A318679(n+1)`
-/

namespace A184051.P3344400824605560675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105292 (A043320 (n + 1)).toNat - A318679 (n + 1)

end

end A184051.P3344400824605560675

/-! ## A184051.P11327591430332383812

`A105292(n+1)-A318679(A187829(n+1))`
-/

namespace A184051.P11327591430332383812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105292 (n + 1) - A318679 (A187829 (n + 1)).toNat

end

end A184051.P11327591430332383812

/-! ## A184051.P16562269553005908766

`A105292(or(A043320(n+1), A284817(n+1)))`
-/

namespace A184051.P16562269553005908766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105292 (Int.lor (A043320 (n + 1)) (A284817 (n + 1))).toNat

end

end A184051.P16562269553005908766

/-!
# A184052: The number of order-decreasing partial isometries (of an n-chain).

The programs for A184052, the canonical program `A184052.P1118805883821014374` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184052 has offset 0).

The definition of A184052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A184052.P1118805883821014374

`3*a(n-1)-2*a(n-2)-2^floor(n/2)+n+1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184052

/-- `3*a(n-1)-2*a(n-2)-2^floor(n/2)+n+1` -/
def P1118805883821014374.Spec : Prop :=
  ∀ n, P1118805883821014374.a n = (A184052 n : ℚ)

end A184052

/-! ## A184052.P7423155920671842303

`∑[∑[2*(a(n-2)+2^(n-3))+1]]+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A184052.P7423155920671842303
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n f2 =>
  2 * (f2 (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)) + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A184052.P7423155920671842303

namespace A184052

/-- `∑[∑[2*(a(n-2)+2^(n-3))+1]]+1` -/
def P7423155920671842303.Spec : Prop :=
  ∀ n, P7423155920671842303.a n = (A184052 n : ℚ)

end A184052

/-! ## A184052.P16426658693081798033

`∑[∑[A056326(n+1)]]+1`
-/

namespace A184052.P16426658693081798033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A184052.P16426658693081798033

namespace A184052

/-- `∑[∑[A056326(n+1)]]+1` -/
def P16426658693081798033.Spec : Prop :=
  ∀ n, P16426658693081798033.a n = A184052 n

end A184052

/-! ## A184052.P4671373173219300435

`∑[∑[A005418(n+1)-1]]+1`
-/

namespace A184052.P4671373173219300435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A184052.P4671373173219300435

namespace A184052

/-- `∑[∑[A005418(n+1)-1]]+1` -/
def P4671373173219300435.Spec : Prop :=
  ∀ n, P4671373173219300435.a n = A184052 n

end A184052

/-! ## A184052.P8538565867129907237

`∑[∑[A005418(n+1)]]-A000096(n)`
-/

namespace A184052.P8538565867129907237
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000096 n

end

end A184052.P8538565867129907237

namespace A184052

/-- `∑[∑[A005418(n+1)]]-A000096(n)` -/
def P8538565867129907237.Spec : Prop :=
  ∀ n, P8538565867129907237.a n = A184052 n

end A184052

/-! ## A184052.P14826179026487334644

`∑[∑[A000225(n)]-A274230(n)]+1`
-/

namespace A184052.P14826179026487334644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A274230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A184052.P14826179026487334644

namespace A184052

/-- `∑[∑[A000225(n)]-A274230(n)]+1` -/
def P14826179026487334644.Spec : Prop :=
  ∀ n, P14826179026487334644.a n = A184052 n

end A184052

/-! ## A184052.P4052173163848635973

`A116702(n+1)-A357283(n)`
-/

namespace A184052.P4052173163848635973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116702 (n + 1) - A357283 n

end

end A184052.P4052173163848635973

namespace A184052

/-- `A116702(n+1)-A357283(n)` -/
def P4052173163848635973.Spec : Prop :=
  ∀ n, P4052173163848635973.a n = A184052 n

end A184052

/-! ## A184052.P3780973704075087127

`∑[A274230(n)+A156665(A000124(n))]`
-/

namespace A184052.P3780973704075087127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A156665 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A184052.P3780973704075087127

namespace A184052

/-- `∑[A274230(n)+A156665(A000124(n))]` -/
def P3780973704075087127.Spec : Prop :=
  ∀ n, P3780973704075087127.a n = A184052 n

end A184052

/-! ## A184052.P8069815743178129546

`∑[∑[A284979(∑[n]+2)-1]]+1`
-/

namespace A184052.P8069815743178129546
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284979 (∑ j ∈ Finset.range (n + 1), f3 j + 2) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A184052.P8069815743178129546

namespace A184052

/-- `∑[∑[A284979(∑[n]+2)-1]]+1` -/
def P8069815743178129546.Spec : Prop :=
  ∀ n, P8069815743178129546.a n = A184052 n

end A184052

/-!
# A184053: Number of strings of n+2 numbers x(i) in -1..1 with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184053, there is no canonical definition to state claims against.
-/

/-! ## A184053.P7739613624551506738

`A184061(∑[n+1])`
-/

namespace A184053.P7739613624551506738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184053.P7739613624551506738

/-! ## A184053.P15345369314917262534

`record[A184061(record[∑[((n-3)/2)^(n%2)]])]`
-/

namespace A184053.P15345369314917262534
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 3 : ℚ) / 2) ^ (n % 2)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184053.P15345369314917262534

/-! ## A184053.P16181440408742554240

`or(1, A184061(A025747(n)))`
-/

namespace A184053.P16181440408742554240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184061 (A025747 n).toNat)

end

end A184053.P16181440408742554240

/-! ## A184053.P3558361071977136536

`or(1, A184061(A374707(n)))`
-/

namespace A184053.P3558361071977136536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184061 (A374707 n).toNat)

end

end A184053.P3558361071977136536

/-! ## A184053.P17952494143617140106

`record[A184061(∑[A057979(n)])]`
-/

namespace A184053.P17952494143617140106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184053.P17952494143617140106

/-!
# A184054: Number of strings of n+2 numbers x(i) in -2..2 with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184054, there is no canonical definition to state claims against.
-/

/-! ## A184054.P6670562908828938001

`A184061(∑[n+2])`
-/

namespace A184054.P6670562908828938001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A184054.P6670562908828938001

/-! ## A184054.P16836506338075544042

`or(1, A184061(A000096(n+1)))`
-/

namespace A184054.P16836506338075544042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184061 (A000096 (n + 1)).toNat)

end

end A184054.P16836506338075544042

/-! ## A184054.P13285525560249702438

`record[gcd(A097609(n), A184061(n+1))]`
-/

namespace A184054.P13285525560249702438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A097609 n) (A184061 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184054.P13285525560249702438

/-! ## A184054.P8187018056337087690

`record[and(A167374(n), A184061(n+1))]`
-/

namespace A184054.P8187018056337087690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A184061 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184054.P8187018056337087690

/-! ## A184054.P7328936563926671571

`record[A184061(lt[A184061(n+2), n])]`
-/

namespace A184054.P7328936563926671571
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184054.P7328936563926671571

/-!
# A184055: Number of strings of n+2 numbers x(i) in -3..3 with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184055, there is no canonical definition to state claims against.
-/

/-! ## A184055.P10873952797670298527

`A184061(∑[n+3]+1)`
-/

namespace A184055.P10873952797670298527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184055.P10873952797670298527

/-! ## A184055.P15035945130739866241

`record[A184061(gcd(n, A097609(n)))]`
-/

namespace A184055.P15035945130739866241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (Int.gcd (n : ℤ) (A097609 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184055.P15035945130739866241

/-! ## A184055.P3220918064226975667

`record[A184061(lt[A184061(n+3), n])]`
-/

namespace A184055.P3220918064226975667
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184055.P3220918064226975667

/-! ## A184055.P4338371016301681327

`record[A184061(n+1)/A184061(n+4)]`
-/

namespace A184055.P4338371016301681327
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184061 (n + 1) : ℚ) / (A184061 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184055.P4338371016301681327

/-! ## A184055.P7869772405234335346

`A184061(A034856(n+2))%A184068(n+1)`
-/

namespace A184055.P7869772405234335346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184061 (A034856 (n + 2)).toNat) (A184068 (n + 1))

end

end A184055.P7869772405234335346

/-!
# A184056: Number of strings of n+2 numbers x(i) in -4..4 with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184056, there is no canonical definition to state claims against.
-/

/-! ## A184056.P5471917585517128005

`A184061(A141214(n+1))`
-/

namespace A184056.P5471917585517128005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (A141214 (n + 1)).toNat

end

end A184056.P5471917585517128005

/-! ## A184056.P14748729209895943252

`A184061(A155212(n)+5)`
-/

namespace A184056.P14748729209895943252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (A155212 n + 5).toNat

end

end A184056.P14748729209895943252

/-! ## A184056.P14509593599445978542

`A184061(A056000(n)+7)`
-/

namespace A184056.P14509593599445978542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (A056000 n + 7).toNat

end

end A184056.P14509593599445978542

/-! ## A184056.P8539125917767246750

`A184061(eq[2, A054123(n)])`
-/

namespace A184056.P8539125917767246750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184056.P8539125917767246750

/-! ## A184056.P13467576881803954232

`A184061(eq[2, A096591(n)])`
-/

namespace A184056.P13467576881803954232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184056.P13467576881803954232

/-!
# A184057: Number of strings of n+2 numbers x(i) in -5..5 with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184057, there is no canonical definition to state claims against.
-/

/-! ## A184057.P4959401829645251053

`A184061(∑[n+5]+6)`
-/

namespace A184057.P4959401829645251053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A184057.P4959401829645251053

/-!
# A184058: Number of strings of n+2 numbers x(i) in -6..6 with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184058, there is no canonical definition to state claims against.
-/

/-! ## A184058.P8640338680891775997

`A184061(A052905(n+3))`
-/

namespace A184058.P8640338680891775997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (A052905 (n + 3)).toNat

end

end A184058.P8640338680891775997

/-! ## A184058.P6893960998270697863

`A184061(eq[3, A219347(n)])`
-/

namespace A184058.P6893960998270697863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184058.P6893960998270697863

/-! ## A184058.P12547760129974814852

`A184061(eq[3, A274661(n)])`
-/

namespace A184058.P12547760129974814852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184058.P12547760129974814852

/-!
# A184059: Number of strings of n+2 numbers x(i) in -7..7 with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184059, there is no canonical definition to state claims against.
-/

/-! ## A184059.P5877496707037756074

`A184061(eq[4, A219347(n)])`
-/

namespace A184059.P5877496707037756074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184059.P5877496707037756074

/-!
# A184060: Number of strings of n+2 numbers x(i) in -8..8 with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184060, there is no canonical definition to state claims against.
-/

/-! ## A184060.P15386254642144912764

`A184061(eq[5, A219347(n)])`
-/

namespace A184060.P15386254642144912764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184061 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184060.P15386254642144912764

/-!
# A184061: T(n,k) = Number of strings of n+2 numbers x(i) in -k..k with the sum of x(i) equal to zero and the sums of x(i)*x(i+1) and x(i)*x(i+2) equal to each other.

The programs for A184061, there is no canonical definition to state claims against.
-/

/-! ## A184061.P10549826784609650913

`A085091(A110804(n+1)-7)`
-/

namespace A184061.P10549826784609650913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085091 (A110804 (n + 1) - 7).toNat

end

end A184061.P10549826784609650913

/-! ## A184061.P16294114742973741642

`A302776(A110804(n+1)-7)`
-/

namespace A184061.P16294114742973741642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302776 (A110804 (n + 1) - 7).toNat

end

end A184061.P16294114742973741642

/-! ## A184061.P15866040855773962208

`A134478(C(A076594(n+1), A002262(n)))`
-/

namespace A184061.P15866040855773962208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (Nat.choose (A076594 (n + 1)).toNat (A002262 n).toNat)

end

end A184061.P15866040855773962208

/-! ## A184061.P4245837362484846932

`A134478(C(A076594(n+1), A140531(n)))`
-/

namespace A184061.P4245837362484846932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (Nat.choose (A076594 (n + 1)).toNat (A140531 n).toNat)

end

end A184061.P4245837362484846932

/-! ## A184061.P9573412918849062387

`A001055(A341492(n+1)^A079722(n+1))`
-/

namespace A184061.P9573412918849062387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.roundAway ((A341492 (n + 1) : ℚ) ^ (A079722 (n + 1) : ℤ))).toNat

end

end A184061.P9573412918849062387

/-!
# A184062: Number of (n+1)X(n+1) binary arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184062, there is no canonical definition to state claims against.
-/

/-! ## A184062.P4417918681488908349

`A184071(∑[4*n]+1)`
-/

namespace A184062.P4417918681488908349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184062.P4417918681488908349

/-! ## A184062.P15858327894256599826

`record[gcd(A184071(n+1), A320085(n))]`
-/

namespace A184062.P15858327894256599826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184071 (n + 1)) (A320085 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184062.P15858327894256599826

/-! ## A184062.P8520631000017580508

`A321537(n)+A184071(A001844(n))`
-/

namespace A184062.P8520631000017580508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321537 n + A184071 (A001844 n).toNat

end

end A184062.P8520631000017580508

/-! ## A184062.P5786916309771104354

`A055642(n)*A184071(A001844(n))`
-/

namespace A184062.P5786916309771104354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A184071 (A001844 n).toNat

end

end A184062.P5786916309771104354

/-! ## A184062.P9639797618616414394

`lcm(A033999(n), A184071(A001844(n)))`
-/

namespace A184062.P9639797618616414394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A184071 (A001844 n).toNat)

end

end A184062.P9639797618616414394

/-!
# A184063: Number of (n+1) X 2 binary arrays with rows and columns in nondecreasing order and with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184063, the canonical program `A184063.P16222544206465340916` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184063 has offset 1).

The definition of A184063 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184063.P6566258980824100483

`∑[∑[n+2]-char[1]]+5`
-/

namespace A184063.P6566258980824100483
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A184063.P6566258980824100483

namespace A184063

/-- `∑[∑[n+2]-char[1]]+5` -/
def P6566258980824100483.Spec : Prop :=
  ∀ n, P6566258980824100483.a n = A184063 (n + 1)

end A184063

/-! ## A184063.P2206754311478882462

`floor(∑[∑[n+2]]+acot(n)+4)`
-/

namespace A184063.P2206754311478882462
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (SequenceMachineLib.acot (n : ℝ) + 4)⌋

end

end A184063.P2206754311478882462

namespace A184063

/-- `floor(∑[∑[n+2]]+acot(n)+4)` -/
def P2206754311478882462.Spec : Prop :=
  ∀ n, P2206754311478882462.a n = A184063 (n + 1)

end A184063

/-! ## A184063.P16222544206465340916

`∑[a(n-1)+n+2]` with `a(0)=7, a(1)=4, a(2)=9`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184063

/-- `∑[a(n-1)+n+2]` -/
def P16222544206465340916.Spec : Prop :=
  ∀ n, (P16222544206465340916.a n : ℤ) = A184063 (n + 1)

theorem P16222544206465340916.correct : P16222544206465340916.Spec := by
  intro n
  simp only [A184063, Nat.add_sub_cancel]

end A184063

/-! ## A184063.P14500798339484103621

`record[a(n-1)-(1-C(n, 2))]` with `a(0)=7, a(1)=4`
-/

namespace A184063.P14500798339484103621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 4] fun n f1 =>
  f1 (n - 1) - (1 - (Nat.choose n 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184063.P14500798339484103621

namespace A184063

/-- `record[a(n-1)-(1-C(n, 2))]` -/
def P14500798339484103621.Spec : Prop :=
  ∀ n, P14500798339484103621.a n = A184063 (n + 1)

end A184063

/-! ## A184063.P13638052356327821515

`or(A005586(n)+6, A000007(n))`
-/

namespace A184063.P13638052356327821515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005586 n + 6) (A000007 n)

end

end A184063.P13638052356327821515

namespace A184063

/-- `or(A005586(n)+6, A000007(n))` -/
def P13638052356327821515.Spec : Prop :=
  ∀ n, P13638052356327821515.a n = A184063 (n + 1)

end A184063

/-!
# A184064: Number of (n+1) X 3 binary arrays with rows and columns in nondecreasing order and with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184064, the canonical program `A184064.P18315886618200525009` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184064 has offset 1).

The definition of A184064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184064.P18315886618200525009

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=11, a(1)=16, a(2)=36, a(3)=73, a(4)=134, a(5)=225, a(6)=354`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A184064

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P18315886618200525009.Spec : Prop :=
  ∀ n, P18315886618200525009.a n = A184064 (n + 1)

theorem P18315886618200525009.correct : P18315886618200525009.Spec := by
  intro n
  simp only [A184064, Nat.add_sub_cancel]

end A184064

/-! ## A184064.P3414435846304910556

`A184071(∑[n+1]+2)`
-/

namespace A184064.P3414435846304910556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184064.P3414435846304910556

namespace A184064

/-- `A184071(∑[n+1]+2)` -/
def P3414435846304910556.Spec : Prop :=
  ∀ n, P3414435846304910556.a n = A184064 (n + 1)

end A184064

/-! ## A184064.P98737498961518788

`record[A184071(A171601(n+1)+2)]`
-/

namespace A184064.P98737498961518788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A171601 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184064.P98737498961518788

namespace A184064

/-- `record[A184071(A171601(n+1)+2)]` -/
def P98737498961518788.Spec : Prop :=
  ∀ n, P98737498961518788.a n = A184064 (n + 1)

end A184064

/-! ## A184064.P17224333293808615211

`A028310(A184071(C(n+2, 2)+2))`
-/

namespace A184064.P17224333293808615211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A184071 (Nat.choose (n + 2) 2 + 2)).toNat

end

end A184064.P17224333293808615211

namespace A184064

/-- `A028310(A184071(C(n+2, 2)+2))` -/
def P17224333293808615211.Spec : Prop :=
  ∀ n, P17224333293808615211.a n = A184064 (n + 1)

end A184064

/-! ## A184064.P15287561492018898752

`A184071(C(n+2, 2)+2)%A042728(n)`
-/

namespace A184064.P15287561492018898752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184071 (Nat.choose (n + 2) 2 + 2)) (A042728 n)

end

end A184064.P15287561492018898752

namespace A184064

/-- `A184071(C(n+2, 2)+2)%A042728(n)` -/
def P15287561492018898752.Spec : Prop :=
  ∀ n, P15287561492018898752.a n = A184064 (n + 1)

end A184064

/-!
# A184065: Number of (n+1) X 4 binary arrays with rows and columns in nondecreasing order and with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184065, there is no canonical definition to state claims against.
-/

/-! ## A184065.P12408699018052239710

`A184071(∑[n+2]+4)`
-/

namespace A184065.P12408699018052239710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184065.P12408699018052239710

/-! ## A184065.P2333639431887539541

`or(char[6], A184071(A167614(n+1)))`
-/

namespace A184065.P2333639431887539541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184071 (A167614 (n + 1)).toNat)

end

end A184065.P2333639431887539541

/-! ## A184065.P2358442375411518622

`record[A184071(n+4)/A008275(n+1)]`
-/

namespace A184065.P2358442375411518622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184071 (n + 4) : ℚ) / (A008275 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184065.P2358442375411518622

/-! ## A184065.P12916529977859106974

`A184071(A167614(n+1))+A025469(n)`
-/

namespace A184065.P12916529977859106974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A167614 (n + 1)).toNat + A025469 n

end

end A184065.P12916529977859106974

/-! ## A184065.P10696505115484692671

`A016240(n)*A184071(A167614(n+1))`
-/

namespace A184065.P10696505115484692671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016240 n * A184071 (A167614 (n + 1)).toNat

end

end A184065.P10696505115484692671

/-!
# A184066: Number of (n+1)X5 binary arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184066, there is no canonical definition to state claims against.
-/

/-! ## A184066.P4261793848796183237

`A184071(A141214(n)+7)`
-/

namespace A184066.P4261793848796183237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A141214 n + 7).toNat

end

end A184066.P4261793848796183237

/-! ## A184066.P175868545748179641

`A184071(A052905(n)+9)`
-/

namespace A184066.P175868545748179641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A052905 n + 9).toNat

end

end A184066.P175868545748179641

/-! ## A184066.P13246322591176361963

`A184071(A055999(n)+10)`
-/

namespace A184066.P13246322591176361963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A055999 n + 10).toNat

end

end A184066.P13246322591176361963

/-! ## A184066.P9336615833059415973

`A184071(A167614(n+2)+1)`
-/

namespace A184066.P9336615833059415973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A167614 (n + 2) + 1).toNat

end

end A184066.P9336615833059415973

/-! ## A184066.P14832976767255208778

`A184071(A080036(A167614(n+1)))`
-/

namespace A184066.P14832976767255208778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A080036 (A167614 (n + 1)).toNat).toNat

end

end A184066.P14832976767255208778

/-!
# A184067: Number of (n+1)X6 binary arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184067, there is no canonical definition to state claims against.
-/

/-! ## A184067.P8516275490435542506

`A184071(A000124(n+4)+4)`
-/

namespace A184067.P8516275490435542506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A000124 (n + 4) + 4).toNat

end

end A184067.P8516275490435542506

/-! ## A184067.P16547944283249256485

`A184071(A000096(n+3)+6)`
-/

namespace A184067.P16547944283249256485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A000096 (n + 3) + 6).toNat

end

end A184067.P16547944283249256485

/-! ## A184067.P1066294345834983342

`A184071(A000217(n+4)+5)`
-/

namespace A184067.P1066294345834983342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A000217 (n + 4) + 5).toNat

end

end A184067.P1066294345834983342

/-! ## A184067.P5101108632553256491

`A184071(A034856(n+3)+7)`
-/

namespace A184067.P5101108632553256491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A034856 (n + 3) + 7).toNat

end

end A184067.P5101108632553256491

/-! ## A184067.P10785471972586813422

`A184071(A055998(n+2)+8)`
-/

namespace A184067.P10785471972586813422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A055998 (n + 2) + 8).toNat

end

end A184067.P10785471972586813422

/-!
# A184068: Number of (n+1)X7 binary arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184068, there is no canonical definition to state claims against.
-/

/-! ## A184068.P648596358669340852

`A184071(A056115(n)+21)`
-/

namespace A184068.P648596358669340852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A056115 n + 21).toNat

end

end A184068.P648596358669340852

/-! ## A184068.P7319093017162971285

`A184071(A000096(n+4)+7)`
-/

namespace A184068.P7319093017162971285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A000096 (n + 4) + 7).toNat

end

end A184068.P7319093017162971285

/-! ## A184068.P7406272534158634078

`A184071(eq[7, A131818(n+1)])`
-/

namespace A184068.P7406272534158634078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184068.P7406272534158634078

/-! ## A184068.P8050620592081061981

`A184071(A000124(n+7)-7-Δ[n²])`
-/

namespace A184068.P8050620592081061981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A000124 (n + 7) - 7 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A184068.P8050620592081061981

/-! ## A184068.P2877338943487110058

`A184071(A374007(n+1))`
-/

namespace A184068.P2877338943487110058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A374007 (n + 1)).toNat

end

end A184068.P2877338943487110058

/-!
# A184069: Number of (n+1)X8 binary arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184069, there is no canonical definition to state claims against.
-/

/-! ## A184069.P12241970529705854177

`A184071(A056119(n)+28)`
-/

namespace A184069.P12241970529705854177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A056119 n + 28).toNat

end

end A184069.P12241970529705854177

/-! ## A184069.P14730502935109901939

`A184071(eq[11, A066657(n)])`
-/

namespace A184069.P14730502935109901939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184069.P14730502935109901939

/-! ## A184069.P2930564999973136315

`A184071(A167614(n+5)+4)`
-/

namespace A184069.P2930564999973136315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A167614 (n + 5) + 4).toNat

end

end A184069.P2930564999973136315

/-! ## A184069.P11005800296603753709

`A184071(A000096(n+5)+8)`
-/

namespace A184069.P11005800296603753709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A000096 (n + 5) + 8).toNat

end

end A184069.P11005800296603753709

/-! ## A184069.P6160080230527996254

`A184071(eq[8, A131818(n+1)])`
-/

namespace A184069.P6160080230527996254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184069.P6160080230527996254

/-!
# A184070: Number of (n+1)X9 binary arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184070, there is no canonical definition to state claims against.
-/

/-! ## A184070.P9448424646041529260

`A184071(eq[13, A066657(n)])`
-/

namespace A184070.P9448424646041529260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184070.P9448424646041529260

/-! ## A184070.P13595152592589056167

`A184071(A000217(n+7)+8)`
-/

namespace A184070.P13595152592589056167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A000217 (n + 7) + 8).toNat

end

end A184070.P13595152592589056167

/-! ## A184070.P1162599326893938033

`A184071(eq[9, A131818(n+1)])`
-/

namespace A184070.P1162599326893938033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184070.P1162599326893938033

/-! ## A184070.P8895528920044800145

`A184071(A374009(n+1))`
-/

namespace A184070.P8895528920044800145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (A374009 (n + 1)).toNat

end

end A184070.P8895528920044800145

/-! ## A184070.P60635830202330003

`A184071(eq[5, A219347(n)])`
-/

namespace A184070.P60635830202330003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184071 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184070.P60635830202330003

/-!
# A184072: Number of (n+1)X(n+1) 0..2 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184072, there is no canonical definition to state claims against.
-/

/-! ## A184072.P10539209703893814217

`A184081(∑[4*n]+1)`
-/

namespace A184072.P10539209703893814217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184072.P10539209703893814217

/-!
# A184073: Number of (n+1) X 2 0..2 arrays with rows and columns in nondecreasing order and with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184073, there is no canonical definition to state claims against.
-/

/-! ## A184073.P11487898272433284794

`A184081(∑[n]+1)`
-/

namespace A184073.P11487898272433284794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184073.P11487898272433284794

/-! ## A184073.P2038916298963166995

`record[A184081(A056534(n+1))]`
-/

namespace A184073.P2038916298963166995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184073.P2038916298963166995

/-! ## A184073.P3848070059051703900

`record[A184081(A276954(n+1))]`
-/

namespace A184073.P3848070059051703900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A276954 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184073.P3848070059051703900

/-! ## A184073.P5417221729819841102

`A184081(A000124(n))+char[15]`
-/

namespace A184073.P5417221729819841102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A184073.P5417221729819841102

/-! ## A184073.P14971917251743432194

`record[A010054(n)*A184081(n+1)]`
-/

namespace A184073.P14971917251743432194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A184081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184073.P14971917251743432194

/-!
# A184074: Number of (n+1)X3 0..2 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184074, there is no canonical definition to state claims against.
-/

/-! ## A184074.P15997996725883086441

`A184081(∑[n+1]+2)`
-/

namespace A184074.P15997996725883086441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184074.P15997996725883086441

/-! ## A184074.P2014212767533431458

`record[A184081(n+2)/A195220(n+1)]`
-/

namespace A184074.P2014212767533431458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184081 (n + 2) : ℚ) / (A195220 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184074.P2014212767533431458

/-! ## A184074.P5456192950918599635

`record[gcd(A184081(n+3), A271703(n+1))]`
-/

namespace A184074.P5456192950918599635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A184081 (n + 3)) (A271703 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184074.P5456192950918599635

/-! ## A184074.P10132882317250806002

`A000027(A184081(∑[n+2]))`
-/

namespace A184074.P10132882317250806002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A184081 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A184074.P10132882317250806002

/-! ## A184074.P474532505838204034

`record[A184081(n+2)/A184061(n+4)]`
-/

namespace A184074.P474532505838204034
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184081 (n + 2) : ℚ) / (A184061 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184074.P474532505838204034

/-!
# A184075: Number of (n+1)X4 0..2 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184075, there is no canonical definition to state claims against.
-/

/-! ## A184075.P440337142922517340

`A184081(∑[n+2]+4)`
-/

namespace A184075.P440337142922517340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184075.P440337142922517340

/-! ## A184075.P17287037306474678834

`or(char[1], A184081(A167614(n+1)))`
-/

namespace A184075.P17287037306474678834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A184081 (A167614 (n + 1)).toNat)

end

end A184075.P17287037306474678834

/-! ## A184075.P8895191687857917360

`A184081(A167614(n+1))+A025469(n)`
-/

namespace A184075.P8895191687857917360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A167614 (n + 1)).toNat + A025469 n

end

end A184075.P8895191687857917360

/-! ## A184075.P14654122613817087209

`A185284(n)+A184081(A167614(n+1))`
-/

namespace A184075.P14654122613817087209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A184081 (A167614 (n + 1)).toNat

end

end A184075.P14654122613817087209

/-! ## A184075.P3688266218175645392

`A152851(n)*A184081(A167614(n+1))`
-/

namespace A184075.P3688266218175645392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 n * A184081 (A167614 (n + 1)).toNat

end

end A184075.P3688266218175645392

/-!
# A184076: Number of (n+1)X5 0..2 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184076, there is no canonical definition to state claims against.
-/

/-! ## A184076.P10390147768026200487

`A184081(∑[n+3]+7)`
-/

namespace A184076.P10390147768026200487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A184076.P10390147768026200487

/-!
# A184077: Number of (n+1)X6 0..2 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184077, there is no canonical definition to state claims against.
-/

/-! ## A184077.P11029916050237389511

`A184081(A374005(n+1))`
-/

namespace A184077.P11029916050237389511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A374005 (n + 1)).toNat

end

end A184077.P11029916050237389511

/-! ## A184077.P2549867126722526206

`A184081(A167499(n+3))`
-/

namespace A184077.P2549867126722526206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A167499 (n + 3)).toNat

end

end A184077.P2549867126722526206

/-! ## A184077.P10986490490492304051

`A184081(A155212(n)+13)`
-/

namespace A184077.P10986490490492304051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A155212 n + 13).toNat

end

end A184077.P10986490490492304051

/-! ## A184077.P10169582453754700069

`A184081(A056000(n)+15)`
-/

namespace A184077.P10169582453754700069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A056000 n + 15).toNat

end

end A184077.P10169582453754700069

/-! ## A184077.P916227452185175474

`A184081(eq[7, A066657(n)])`
-/

namespace A184077.P916227452185175474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184077.P916227452185175474

/-!
# A184078: Number of (n+1)X7 0..2 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184078, there is no canonical definition to state claims against.
-/

/-! ## A184078.P16263450499218189521

`A184081(A374007(n+1))`
-/

namespace A184078.P16263450499218189521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A374007 (n + 1)).toNat

end

end A184078.P16263450499218189521

/-! ## A184078.P15146842673791278043

`A184081(A166136(n+4))`
-/

namespace A184078.P15146842673791278043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A166136 (n + 4)).toNat

end

end A184078.P15146842673791278043

/-! ## A184078.P17756805369084977541

`A184081(A167499(n+4)+1)`
-/

namespace A184078.P17756805369084977541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A167499 (n + 4) + 1).toNat

end

end A184078.P17756805369084977541

/-! ## A184078.P4759051264779569334

`A184081(A167614(n+4)+3)`
-/

namespace A184078.P4759051264779569334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A167614 (n + 4) + 3).toNat

end

end A184078.P4759051264779569334

/-!
# A184079: Number of (n+1)X8 0..2 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184079, there is no canonical definition to state claims against.
-/

/-! ## A184079.P3167784234102823372

`A184081(A374008(n+1))`
-/

namespace A184079.P3167784234102823372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (A374008 (n + 1)).toNat

end

end A184079.P3167784234102823372

/-!
# A184080: Number of (n+1)X9 0..2 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184080, there is no canonical definition to state claims against.
-/

/-! ## A184080.P2611676567100109368

`A184081(eq[5, A219347(n)])`
-/

namespace A184080.P2611676567100109368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184081 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184080.P2611676567100109368

/-!
# A184086: Number of (n+1)X(n+1) 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184086, there is no canonical definition to state claims against.
-/

/-! ## A184086.P6768521443508676567

`A184095(∑[4*n]+1)`
-/

namespace A184086.P6768521443508676567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184086.P6768521443508676567

/-!
# A184087: Number of (n+1)X2 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184087, there is no canonical definition to state claims against.
-/

/-! ## A184087.P3688831433844018401

`A184095(∑[n]+1)`
-/

namespace A184087.P3688831433844018401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184087.P3688831433844018401

/-! ## A184087.P5717270919400245519

`and(-1, A184095(A000124(n)))`
-/

namespace A184087.P5717270919400245519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A184095 (A000124 n).toNat)

end

end A184087.P5717270919400245519

/-! ## A184087.P1043542590305374351

`record[A184095(A056534(n+1))]`
-/

namespace A184087.P1043542590305374351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184087.P1043542590305374351

/-! ## A184087.P17765373078887403653

`record[A184095(A246276(n+1))]`
-/

namespace A184087.P17765373078887403653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184087.P17765373078887403653

/-! ## A184087.P8905241971961331247

`record[A184095(A267104(n+1))]`
-/

namespace A184087.P8905241971961331247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A267104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184087.P8905241971961331247

/-!
# A184088: Number of (n+1)X3 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184088, there is no canonical definition to state claims against.
-/

/-! ## A184088.P5035803399394663865

`A184095(∑[n+1]+2)`
-/

namespace A184088.P5035803399394663865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A184088.P5035803399394663865

/-! ## A184088.P15159837707332444144

`record[A184095(A130270(n+1)+2)]`
-/

namespace A184088.P15159837707332444144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184088.P15159837707332444144

/-! ## A184088.P4968568585576192750

`record[gcd(A180662(n), A184095(n+2))]`
-/

namespace A184088.P4968568585576192750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A180662 n) (A184095 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184088.P4968568585576192750

/-! ## A184088.P4233351913847562826

`record[A184095(A133263(∑[(-1)^(n%3)]))]`
-/

namespace A184088.P4233351913847562826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A133263 (∑ j ∈ Finset.range (n + 1), f2 j).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184088.P4233351913847562826

/-! ## A184088.P7806359275210864846

`record[A184095(A238531(A000038(n)+n))]`
-/

namespace A184088.P7806359275210864846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A238531 (A000038 n + (n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184088.P7806359275210864846

/-!
# A184089: Number of (n+1)X4 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184089, there is no canonical definition to state claims against.
-/

/-! ## A184089.P15797126715275572546

`A184095(∑[n+2]+4)`
-/

namespace A184089.P15797126715275572546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A184089.P15797126715275572546

/-! ## A184089.P16295618487779980931

`A256974(n)+A184095(A167614(n+1))`
-/

namespace A184089.P16295618487779980931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A184095 (A167614 (n + 1)).toNat

end

end A184089.P16295618487779980931

/-! ## A184089.P12555795894261457629

`A326458(n)+A184095(A167614(n+1))`
-/

namespace A184089.P12555795894261457629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326458 n + A184095 (A167614 (n + 1)).toNat

end

end A184089.P12555795894261457629

/-! ## A184089.P9825089833893643231

`A047996(n)*A184095(A167614(n+1))`
-/

namespace A184089.P9825089833893643231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047996 n * A184095 (A167614 (n + 1)).toNat

end

end A184089.P9825089833893643231

/-! ## A184089.P5817580380499392435

`A184095(A167614(n+1))*A189006(n)`
-/

namespace A184089.P5817580380499392435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A167614 (n + 1)).toNat * A189006 n

end

end A184089.P5817580380499392435

/-!
# A184090: Number of (n+1)X5 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184090, there is no canonical definition to state claims against.
-/

/-! ## A184090.P15672720335167838760

`A184095(A145018(n+4))`
-/

namespace A184090.P15672720335167838760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A145018 (n + 4)).toNat

end

end A184090.P15672720335167838760

/-! ## A184090.P12309697965206403018

`A184095(A141214(n)+7)`
-/

namespace A184090.P12309697965206403018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A141214 n + 7).toNat

end

end A184090.P12309697965206403018

/-! ## A184090.P13400765942065264160

`A184095(A052905(n)+9)`
-/

namespace A184090.P13400765942065264160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A052905 n + 9).toNat

end

end A184090.P13400765942065264160

/-! ## A184090.P386991365458265645

`A184095(A055999(n)+10)`
-/

namespace A184090.P386991365458265645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A055999 n + 10).toNat

end

end A184090.P386991365458265645

/-! ## A184090.P17233486128287841187

`A184095(eq[5, A066657(n)])`
-/

namespace A184090.P17233486128287841187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184090.P17233486128287841187

/-!
# A184091: Number of (n+1)X6 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184091, there is no canonical definition to state claims against.
-/

/-! ## A184091.P1111577501846317093

`A184095(A167499(n+3))`
-/

namespace A184091.P1111577501846317093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A167499 (n + 3)).toNat

end

end A184091.P1111577501846317093

/-! ## A184091.P14586470367778071134

`A184095(A155212(n)+13)`
-/

namespace A184091.P14586470367778071134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A155212 n + 13).toNat

end

end A184091.P14586470367778071134

/-! ## A184091.P14584408751920217833

`A184095(A056000(n)+15)`
-/

namespace A184091.P14584408751920217833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A056000 n + 15).toNat

end

end A184091.P14584408751920217833

/-! ## A184091.P5121367982110089470

`A184095(eq[7, A066657(n)])`
-/

namespace A184091.P5121367982110089470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A184091.P5121367982110089470

/-!
# A184092: Number of (n+1)X7 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184092, there is no canonical definition to state claims against.
-/

/-! ## A184092.P11484419408064854778

`A184095(A374007(n+1))`
-/

namespace A184092.P11484419408064854778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A374007 (n + 1)).toNat

end

end A184092.P11484419408064854778

/-!
# A184093: Number of (n+1)X8 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184093, there is no canonical definition to state claims against.
-/

/-! ## A184093.P16693645470452783430

`A184095(A374008(n+1))`
-/

namespace A184093.P16693645470452783430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A374008 (n + 1)).toNat

end

end A184093.P16693645470452783430

/-!
# A184094: Number of (n+1)X9 0..3 arrays with rows and columns in nondecreasing order and with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A184094, there is no canonical definition to state claims against.
-/

/-! ## A184094.P5455399136624644260

`A184095(A374009(n+1))`
-/

namespace A184094.P5455399136624644260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184095 (A374009 (n + 1)).toNat

end

end A184094.P5455399136624644260

/-!
# A184096: Half the number of n X n toroidal binary arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

The programs for A184096, the canonical program `A184096.P1202341694869382035` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184096 has offset 1).

The definition of A184096 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184096.P1202341694869382035

`(n%2+1)*A085903(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A184096

/-- `(n%2+1)*A085903(n+1)` -/
def P1202341694869382035.Spec : Prop :=
  ∀ n, P1202341694869382035.a n = A184096 (n + 1)

theorem P1202341694869382035.correct : P1202341694869382035.Spec := by
  intro n
  simp only [A184096, Nat.add_sub_cancel]

end A184096

/-! ## A184096.P7869431547746805866

`A000034(n)*A085903(n+1)`
-/

namespace A184096.P7869431547746805866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A085903 (n + 1)

end

end A184096.P7869431547746805866

namespace A184096

/-- `A000034(n)*A085903(n+1)` -/
def P7869431547746805866.Spec : Prop :=
  ∀ n, P7869431547746805866.a n = A184096 (n + 1)

end A184096

/-! ## A184096.P1848737562194735209

`A085903(n+1)*A130658(A004277(n))`
-/

namespace A184096.P1848737562194735209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085903 (n + 1) * A130658 (A004277 n).toNat

end

end A184096.P1848737562194735209

namespace A184096

/-- `A085903(n+1)*A130658(A004277(n))` -/
def P1848737562194735209.Spec : Prop :=
  ∀ n, P1848737562194735209.a n = A184096 (n + 1)

end A184096

/-! ## A184096.P11543342699885891830

`A085903(n+1)*A130658(A005843(n))`
-/

namespace A184096.P11543342699885891830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085903 (n + 1) * A130658 (A005843 n).toNat

end

end A184096.P11543342699885891830

namespace A184096

/-- `A085903(n+1)*A130658(A005843(n))` -/
def P11543342699885891830.Spec : Prop :=
  ∀ n, P11543342699885891830.a n = A184096 (n + 1)

end A184096

/-! ## A184096.P11379180835237390186

`∪[2*4^n-1, 2*A060867(n+1)]`
-/

namespace A184096.P11379180835237390186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 4 ^ n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A060867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A184096.P11379180835237390186

namespace A184096

/-- `∪[2*4^n-1, 2*A060867(n+1)]` -/
def P11379180835237390186.Spec : Prop :=
  ∀ n, (P11379180835237390186.a n : ℤ) = A184096 (n + 1)

end A184096

/-!
# A184097: T(n,k)=Half the number of nXk toroidal binary arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

The programs for A184097, the canonical program `A184097.P12072055477747539760` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A184097 has offset 1).

The definition of A184097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A184097.P12072055477747539760

`A184096(A003989(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A184097

/-- `A184096(A003989(n+1))` -/
def P12072055477747539760.Spec : Prop :=
  ∀ n, P12072055477747539760.a n = A184097 (n + 1)

theorem P12072055477747539760.correct : P12072055477747539760.Spec := by
  intro n
  simp only [A184097, Nat.add_sub_cancel]

end A184097

/-! ## A184097.P6612704773287085086

`A184096(gcd(A002260(n+1), A193592(n)))`
-/

namespace A184097.P6612704773287085086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184096 (Int.gcd (A002260 (n + 1)) (A193592 n))

end

end A184097.P6612704773287085086

namespace A184097

/-- `A184096(gcd(A002260(n+1), A193592(n)))` -/
def P6612704773287085086.Spec : Prop :=
  ∀ n, P6612704773287085086.a n = A184097 (n + 1)

end A184097

/-! ## A184097.P5097942463453638233

`A184096(gcd(A003057(n+2), A004736(n+1)))`
-/

namespace A184097.P5097942463453638233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184096 (Int.gcd (A003057 (n + 2)) (A004736 (n + 1)))

end

end A184097.P5097942463453638233

namespace A184097

/-- `A184096(gcd(A003057(n+2), A004736(n+1)))` -/
def P5097942463453638233.Spec : Prop :=
  ∀ n, P5097942463453638233.a n = A184097 (n + 1)

end A184097

/-! ## A184097.P17624538423353472620

`A040001(A287957(n+1))*A085903(A003989(n+1))`
-/

namespace A184097.P17624538423353472620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A287957 (n + 1)).toNat * A085903 (A003989 (n + 1)).toNat

end

end A184097.P17624538423353472620

namespace A184097

/-- `A040001(A287957(n+1))*A085903(A003989(n+1))` -/
def P17624538423353472620.Spec : Prop :=
  ∀ n, P17624538423353472620.a n = A184097 (n + 1)

end A184097

/-! ## A184097.P6045476421610884459

`A184096(A287957(n+1)%A092789(n+1))`
-/

namespace A184097.P6045476421610884459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184096 (Int.tmod (A287957 (n + 1)) (A092789 (n + 1))).toNat

end

end A184097.P6045476421610884459

namespace A184097

/-- `A184096(A287957(n+1)%A092789(n+1))` -/
def P6045476421610884459.Spec : Prop :=
  ∀ n, P6045476421610884459.a n = A184097 (n + 1)

end A184097

/-! ## A184097.P18334086122875831496

`A184096(gcd(A259101(n), A287957(n+1)))`
-/

namespace A184097.P18334086122875831496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184096 (Int.gcd (A259101 n) (A287957 (n + 1)))

end

end A184097.P18334086122875831496

namespace A184097

/-- `A184096(gcd(A259101(n), A287957(n+1)))` -/
def P18334086122875831496.Spec : Prop :=
  ∀ n, P18334086122875831496.a n = A184097 (n + 1)

end A184097

/-!
# A184098: Number of n X n toroidal 0..2 arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

The programs for A184098, there is no canonical definition to state claims against.
-/

/-! ## A184098.P1413812577286191507

`record[A184099(n+1)]`
-/

namespace A184098.P1413812577286191507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A184098.P1413812577286191507

/-! ## A184098.P12610515126312113194

`A184099(∑[4*n]+1)`
-/

namespace A184098.P12610515126312113194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184099 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A184098.P12610515126312113194

/-! ## A184098.P11641439423557897380

`or(1, A184099(A001844(n)))`
-/

namespace A184098.P11641439423557897380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A184099 (A001844 n).toNat)

end

end A184098.P11641439423557897380

/-! ## A184098.P586581146506452459

`A007318(∑[n])*A184099(A001844(n))`
-/

namespace A184098.P586581146506452459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A184099 (A001844 n).toNat

end

end A184098.P586581146506452459

/-! ## A184098.P3554028045744202137

`A184099(A001844(n))+val(A000041(n), 17)`
-/

namespace A184098.P3554028045744202137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184099 (A001844 n).toNat + (SequenceMachineLib.valuation (A000041 n).toNat 17 : ℤ)

end

end A184098.P3554028045744202137

/-!
# A184099: T(n,k) = Number of n X k toroidal 0..2 arrays with each element having the sum of its vertical neighbors equal to the sum of its horizontal neighbors.

The programs for A184099, there is no canonical definition to state claims against.
-/

/-! ## A184099.P5069726991539789540

`A251535(gcd(A109887(n+1), A329070(n)))`
-/

namespace A184099.P5069726991539789540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251535 (Int.gcd (A109887 (n + 1)) (A329070 n))

end

end A184099.P5069726991539789540

/-! ## A184099.P4601645383589112558

`A184098(gcd((A176204(n)+3)/4, A300374(n+2)))`
-/

namespace A184099.P4601645383589112558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184098 (Int.gcd (SequenceMachineLib.roundAway ((A176204 n + 3 : ℚ) / 4)) (A300374 (n + 2)))

end

end A184099.P4601645383589112558

