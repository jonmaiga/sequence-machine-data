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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A152801: a(n) = A152800(n+1,2n) for n>=0.

The programs for A152801, there is no canonical definition to state claims against.
-/

/-! ## A152801.P8311651473302489410

`A006318(n)-A195174(A306003(n+1))`
-/

namespace A152801.P8311651473302489410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n - A195174 (A306003 (n + 1)).toNat

end

end A152801.P8311651473302489410

/-! ## A152801.P7296977838999595441

`A122639(A247594(n))`
-/

namespace A152801.P7296977838999595441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122639 (A247594 n).toNat

end

end A152801.P7296977838999595441

/-!
# A152802: a(n) = A152800(n+2,2n+1) for n>=0.

The programs for A152802, there is no canonical definition to state claims against.
-/

/-! ## A152802.P12884362086987711977

`A152800(A047667(n+1))`
-/

namespace A152802.P12884362086987711977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152800 (A047667 (n + 1)).toNat

end

end A152802.P12884362086987711977

/-! ## A152802.P2157365183488706627

`A152800(∑[A001844(n)+2])`
-/

namespace A152802.P2157365183488706627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152802.P2157365183488706627

/-! ## A152802.P1485935445271903598

`A152800(∑[or(2, A001844(n))])`
-/

namespace A152802.P1485935445271903598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A001844 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A152802.P1485935445271903598

/-!
# A152804: Largest term in rows of triangle A152800.

The programs for A152804, there is no canonical definition to state claims against.
-/

/-! ## A152804.P3454805409833147951

`A022819(A327071(n))+2^C(n, 2)`
-/

namespace A152804.P3454805409833147951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022819 (A327071 n).toNat + (2 ^ Nat.choose n 2 : ℤ)

end

end A152804.P3454805409833147951

/-! ## A152804.P3060592717978861458

`A008619(round(2*n/3)*A001142(n))`
-/

namespace A152804.P3060592717978861458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) * A001142 n).toNat

end

end A152804.P3060592717978861458

/-!
# A152806: Unsigned row sums of triangle A152805.

The programs for A152806, there is no canonical definition to state claims against.
-/

/-! ## A152806.P14058825595955016378

`char[3]+ceil(sqrt(A323587(n²)))`
-/

namespace A152806.P14058825595955016378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈Real.sqrt (A323587 (n ^ 2) : ℝ)⌉

end

end A152806.P14058825595955016378

/-! ## A152806.P9238701990748348578

`A104739(A038149(n))`
-/

namespace A152806.P9238701990748348578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104739 (A038149 n).toNat

end

end A152806.P9238701990748348578

/-! ## A152806.P12087507737237087859

`A333524(A018157(n+1))`
-/

namespace A152806.P12087507737237087859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333524 (A018157 (n + 1)).toNat

end

end A152806.P12087507737237087859

/-!
# A152807: G.f.: limit of the ratio of the g.f.s of adjacent rows in triangle A152805.

The programs for A152807, there is no canonical definition to state claims against.
-/

/-! ## A152807.P6434271317420647902

`A071991(A238639(n+1))`
-/

namespace A152807.P6434271317420647902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071991 (A238639 (n + 1)).toNat

end

end A152807.P6434271317420647902

/-! ## A152807.P15835045192384581524

`A352130(∑[record[lcm(2, n)+3]]-2*n)`
-/

namespace A152807.P15835045192384581524
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352130 (∑ j ∈ Finset.range (n + 1), f1 j - 2 * n)

end

end A152807.P15835045192384581524

/-!
# A152808: Column 3 of triangle A152798; a(n) = A152798(n+3,3).

The programs for A152808, there is no canonical definition to state claims against.
-/

/-! ## A152808.P5553402491912901594

`A152798(∑[n+3]+6)`
-/

namespace A152808.P5553402491912901594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A152808.P5553402491912901594

/-! ## A152808.P1947572678093556683

`A100196(A367888(n)+A199876(n))`
-/

namespace A152808.P1947572678093556683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A367888 n + A199876 n).toNat

end

end A152808.P1947572678093556683

/-! ## A152808.P9166268707651078486

`A002487(A007680(n)-A030101(n))`
-/

namespace A152808.P9166268707651078486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A007680 n - A030101 n).toNat

end

end A152808.P9166268707651078486

/-!
# A152809: Column 4 of triangle A152798; a(n) = A152798(n+4,4).

The programs for A152809, there is no canonical definition to state claims against.
-/

/-! ## A152809.P5681117417148689720

`A152798(A155212(n)+12)`
-/

namespace A152809.P5681117417148689720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 (A155212 n + 12).toNat

end

end A152809.P5681117417148689720

/-! ## A152809.P1681816165067961192

`A152798(A056000(n)+14)`
-/

namespace A152809.P1681816165067961192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 (A056000 n + 14).toNat

end

end A152809.P1681816165067961192

/-! ## A152809.P5600590425193658799

`A152798(eq[3, A141169(n)])`
-/

namespace A152809.P5600590425193658799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152809.P5600590425193658799

/-! ## A152809.P17595710655663684454

`A152798(eq[4, A002262(n)])`
-/

namespace A152809.P17595710655663684454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152798 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A152809.P17595710655663684454

/-!
# A152810: Let the binary expansion of n be n = Sum_{k} 2^{r_k}, let e(n) be the number of r_k's that are even, o(n) the number that are odd; sequence gives odd n such that e(n) > o(n) and e(n)-o(n) == 1 or 2 (mod 6).

The programs for A152810, the canonical program `A152810.P13934869835222671343` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152810 has offset 1).

The definition of A152810 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1012 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152810.P6117325235536349234

`eq[A166304(n), A286421(2*(n+1))]`
-/

namespace A152810.P6117325235536349234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166304 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286421 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152810.P6117325235536349234

namespace A152810

/-- `eq[A166304(n), A286421(2*(n+1))]` -/
def P6117325235536349234.Spec : Prop :=
  ∀ n, (P6117325235536349234.a n : ℤ) = A152810 (n + 1)

end A152810

/-! ## A152810.P4840258884438673844

`record[gcd(A000265(n+1), A286489(n+1))]`
-/

namespace A152810.P4840258884438673844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000265 (n + 1)) (A286489 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152810.P4840258884438673844

namespace A152810

/-- `record[gcd(A000265(n+1), A286489(n+1))]` -/
def P4840258884438673844.Spec : Prop :=
  ∀ n, (P4840258884438673844.a n : ℤ) = A152810 (n + 1)

end A152810

/-! ## A152810.P13591754269199943049

`eq[A001285(A059029(n)), A065359(n)]`
-/

namespace A152810.P13591754269199943049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A059029 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152810.P13591754269199943049

namespace A152810

/-- `eq[A001285(A059029(n)), A065359(n)]` -/
def P13591754269199943049.Spec : Prop :=
  ∀ n, (P13591754269199943049.a n : ℤ) = A152810 (n + 1)

end A152810

/-! ## A152810.P5920517917702063394

`record[A000265(A008619(A039004(n+1)))]`
-/

namespace A152810.P5920517917702063394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008619 (A039004 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152810.P5920517917702063394

namespace A152810

/-- `record[A000265(A008619(A039004(n+1)))]` -/
def P5920517917702063394.Spec : Prop :=
  ∀ n, P5920517917702063394.a n = A152810 (n + 1)

end A152810

/-! ## A152810.P4963523484373191278

`eq[n+1, A110654(A109043(n)+A065359(n))]`
-/

namespace A152810.P4963523484373191278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A109043 n + A065359 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152810.P4963523484373191278

namespace A152810

/-- `eq[n+1, A110654(A109043(n)+A065359(n))]` -/
def P4963523484373191278.Spec : Prop :=
  ∀ n, (P4963523484373191278.a n : ℤ) = A152810 (n + 1)

end A152810

/-! ## A152810.P13934869835222671343

`eq[A059620(2*n+1)+A005536(2*n+1), A005536(2*n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152810

/-- `eq[A059620(2*n+1)+A005536(2*n+1), A005536(2*n)]` -/
def P13934869835222671343.Spec : Prop :=
  ∀ n, (P13934869835222671343.a n : ℤ) = A152810 (n + 1)

theorem P13934869835222671343.correct : P13934869835222671343.Spec := by
  intro n
  simp only [A152810, Nat.add_sub_cancel]

end A152810

/-! ## A152810.P14740318564131912476

`record[gcd(A007310(n+1), A102568(n+1))]`
-/

namespace A152810.P14740318564131912476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007310 (n + 1)) (A102568 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152810.P14740318564131912476

namespace A152810

/-- `record[gcd(A007310(n+1), A102568(n+1))]` -/
def P14740318564131912476.Spec : Prop :=
  ∀ n, (P14740318564131912476.a n : ℤ) = A152810 (n + 1)

end A152810

/-! ## A152810.P281850056763430905

`eq[A131732(A016777(n)), A286421(n+1)]`
-/

namespace A152810.P281850056763430905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 (A016777 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152810.P281850056763430905

namespace A152810

/-- `eq[A131732(A016777(n)), A286421(n+1)]` -/
def P281850056763430905.Spec : Prop :=
  ∀ n, (P281850056763430905.a n : ℤ) = A152810 (n + 1)

end A152810

/-! ## A152810.P2925840918744436021

`eq[A115313(n+1)², A001285(n)²]`
-/

namespace A152810.P2925840918744436021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115313 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152810.P2925840918744436021

namespace A152810

/-- `eq[A115313(n+1)², A001285(n)²]` -/
def P2925840918744436021.Spec : Prop :=
  ∀ n, (P2925840918744436021.a n : ℤ) = A152810 (n + 1)

end A152810

/-! ## A152810.P10237983993687266755

`eq[A115313(n+1)², A127246(n)²]`
-/

namespace A152810.P10237983993687266755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115313 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127246 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152810.P10237983993687266755

namespace A152810

/-- `eq[A115313(n+1)², A127246(n)²]` -/
def P10237983993687266755.Spec : Prop :=
  ∀ n, (P10237983993687266755.a n : ℤ) = A152810 (n + 1)

end A152810

/-! ## A152810.P10327781768894014032

`eq[A115313(n+1)², A268727(n)²]`
-/

namespace A152810.P10327781768894014032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115313 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268727 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152810.P10327781768894014032

namespace A152810

/-- `eq[A115313(n+1)², A268727(n)²]` -/
def P10327781768894014032.Spec : Prop :=
  ∀ n, (P10327781768894014032.a n : ℤ) = A152810 (n + 1)

end A152810

/-!
# A152811: a(n) = 2*(n^2 + 2*n - 2).

The programs for A152811, the canonical program `A152811.P17181245366381739844` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152811 has offset 1).

The definition of A152811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*((n+1)²+2*(n+1)-2)` (program `A152811.P17181245366381739844`, by `A152811.P17181245366381739844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152811.P6443142209196853068

`2*(n+1)*(n+3)-4`
-/

namespace A152811.P6443142209196853068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) * (n + 3) : ℤ) - 4

end

end A152811.P6443142209196853068

namespace A152811

/-- `2*(n+1)*(n+3)-4` -/
def P6443142209196853068.Spec : Prop :=
  ∀ n, P6443142209196853068.a n = A152811 (n + 1)

theorem P6443142209196853068.correct : P6443142209196853068.Spec := by
  intro n
  simp only [A152811, Nat.add_sub_cancel, A152811.P6443142209196853068.a, A152811.P17181245366381739844.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152811

/-! ## A152811.P17181245366381739844

`2*((n+1)²+2*(n+1)-2)`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152811

/-- `2*((n+1)²+2*(n+1)-2)` -/
def P17181245366381739844.Spec : Prop :=
  ∀ n, P17181245366381739844.a n = A152811 (n + 1)

theorem P17181245366381739844.correct : P17181245366381739844.Spec := by
  intro n
  simp only [A152811, Nat.add_sub_cancel]

end A152811

/-! ## A152811.P655277042293307119

`∑[a(n-1)+4]` with `a(0)=2, a(1)=10`
-/

namespace A152811.P655277042293307119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152811.P655277042293307119

namespace A152811

/-- `∑[a(n-1)+4]` -/
def P655277042293307119.Spec : Prop :=
  ∀ n, (P655277042293307119.a n : ℤ) = A152811 (n + 1)

end A152811

/-! ## A152811.P17953400373022837538

`record[2*((2-n)²-3)]`
-/

namespace A152811.P17953400373022837538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 - (n : ℤ)) ^ 2 - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152811.P17953400373022837538

namespace A152811

/-- `record[2*((2-n)²-3)]` -/
def P17953400373022837538.Spec : Prop :=
  ∀ n, P17953400373022837538.a n = A152811 (n + 1)

end A152811

/-! ## A152811.P14573008383645414219

`∑[ogf((2+6x-4x^2)/(1-2x+x^2))]`
-/

namespace A152811.P14573008383645414219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -4] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152811.P14573008383645414219

namespace A152811

/-- `∑[ogf((2+6x-4x^2)/(1-2x+x^2))]` -/
def P14573008383645414219.Spec : Prop :=
  ∀ n, P14573008383645414219.a n = A152811 (n + 1)

end A152811

/-! ## A152811.P12726553810009456284

`ogf((2+6x-4x^2)/(1-3x+3x^2-x^3))`
-/

namespace A152811.P12726553810009456284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 6, -4] [1, -3, 3, -1] n

end

end A152811.P12726553810009456284

namespace A152811

/-- `ogf((2+6x-4x^2)/(1-3x+3x^2-x^3))` -/
def P12726553810009456284.Spec : Prop :=
  ∀ n, P12726553810009456284.a n = A152811 (n + 1)

end A152811

/-! ## A152811.P15418812469646463662

`xor(1, (2*n+1)*(n+3)+n)`
-/

namespace A152811.P15418812469646463662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 ((2 * n + 1) * (n + 3) + n)

end

end A152811.P15418812469646463662

namespace A152811

/-- `xor(1, (2*n+1)*(n+3)+n)` -/
def P15418812469646463662.Spec : Prop :=
  ∀ n, (P15418812469646463662.a n : ℤ) = A152811 (n + 1)

end A152811

/-!
# A152812: Decimal expansion of log_18 (2).

The programs for A152812, there is no canonical definition to state claims against.
-/

/-! ## A152812.P7215703532780026387

`9-A154017(n)`
-/

namespace A152812.P7215703532780026387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154017 n

end

end A152812.P7215703532780026387

/-!
# A152813: a(n) = 2*n^2 + 10*n + 3.

The programs for A152813, the canonical program `A152813.P6849465060171849523` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152813 has offset 0).

The definition of A152813 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+10*n+3` (program `A152813.P6849465060171849523`, by `A152813.P6849465060171849523.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152813.P6849465060171849523

`2*n²+10*n+3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152813

/-- `2*n²+10*n+3` -/
def P6849465060171849523.Spec : Prop :=
  ∀ n, (P6849465060171849523.a n : ℤ) = A152813 n

theorem P6849465060171849523.correct : P6849465060171849523.Spec := by
  intro n
  simp only [A152813]

end A152813

/-! ## A152813.P5346834583879301882

`∑[a(n-1)+4]` with `a(0)=3, a(1)=12`
-/

namespace A152813.P5346834583879301882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 12] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152813.P5346834583879301882

namespace A152813

/-- `∑[a(n-1)+4]` -/
def P5346834583879301882.Spec : Prop :=
  ∀ n, (P5346834583879301882.a n : ℤ) = A152813 n

end A152813

/-! ## A152813.P5089582906969918155

`or(3, 2*n*(n+5))`
-/

namespace A152813.P5089582906969918155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (2 * (n * (n + 5)))

end

end A152813.P5089582906969918155

namespace A152813

/-- `or(3, 2*n*(n+5))` -/
def P5089582906969918155.Spec : Prop :=
  ∀ n, (P5089582906969918155.a n : ℤ) = A152813 n

end A152813

/-! ## A152813.P12575312240727156683

`xor(3, 2*n*(n+5))`
-/

namespace A152813.P12575312240727156683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (2 * (n * (n + 5)))

end

end A152813.P12575312240727156683

namespace A152813

/-- `xor(3, 2*n*(n+5))` -/
def P12575312240727156683.Spec : Prop :=
  ∀ n, (P12575312240727156683.a n : ℤ) = A152813 n

end A152813

/-! ## A152813.P11061650091094516435

`∑[ogf((3+6x-5x^2)/(1-2x+x^2))]`
-/

namespace A152813.P11061650091094516435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152813.P11061650091094516435

namespace A152813

/-- `∑[ogf((3+6x-5x^2)/(1-2x+x^2))]` -/
def P11061650091094516435.Spec : Prop :=
  ∀ n, P11061650091094516435.a n = A152813 n

end A152813

/-! ## A152813.P11264931268487795320

`ogf((3+6x-5x^2)/(1-3x+3x^2-x^3))`
-/

namespace A152813.P11264931268487795320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, -5] [1, -3, 3, -1] n

end

end A152813.P11264931268487795320

namespace A152813

/-- `ogf((3+6x-5x^2)/(1-3x+3x^2-x^3))` -/
def P11264931268487795320.Spec : Prop :=
  ∀ n, P11264931268487795320.a n = A152813 n

end A152813

/-! ## A152813.P15017446762869433482

`record[2*n*(n-5)+3]`
-/

namespace A152813.P15017446762869433482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) * ((n : ℤ) - 5)) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152813.P15017446762869433482

namespace A152813

/-- `record[2*n*(n-5)+3]` -/
def P15017446762869433482.Spec : Prop :=
  ∀ n, P15017446762869433482.a n = A152813 n

end A152813

/-! ## A152813.P1839998040624871027

`abs(a(n-1)+4*(n+2))` with `a(0)=3`
-/

namespace A152813.P1839998040624871027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 4 * (n + 2)

end

end A152813.P1839998040624871027

namespace A152813

/-- `abs(a(n-1)+4*(n+2))` -/
def P1839998040624871027.Spec : Prop :=
  ∀ n, (P1839998040624871027.a n : ℤ) = A152813 n

theorem P1839998040624871027.correct : P1839998040624871027.Spec := by
  intro n
  induction n with
  | zero => simp [A152813, A152813.P1839998040624871027.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152813, Nat.add_sub_cancel, A152813.P1839998040624871027.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152813

/-! ## A152813.P4606031870004872484

`floor(a(n-1)+4*(n+2))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A152813.P4606031870004872484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 4 * (n + 2)

end

end A152813.P4606031870004872484

namespace A152813

/-- `floor(a(n-1)+4*(n+2))` -/
def P4606031870004872484.Spec : Prop :=
  ∀ n, (P4606031870004872484.a n : ℤ) = A152813 n

theorem P4606031870004872484.correct : P4606031870004872484.Spec := by
  intro n
  induction n with
  | zero => simp [A152813, A152813.P4606031870004872484.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152813, Nat.add_sub_cancel, A152813.P4606031870004872484.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152813

/-! ## A152813.P5327336849307863815

`ceil(a(n-1)+4*(n+2))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A152813.P5327336849307863815
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 4 * (n + 2)

end

end A152813.P5327336849307863815

namespace A152813

/-- `ceil(a(n-1)+4*(n+2))` -/
def P5327336849307863815.Spec : Prop :=
  ∀ n, (P5327336849307863815.a n : ℤ) = A152813 n

theorem P5327336849307863815.correct : P5327336849307863815.Spec := by
  intro n
  induction n with
  | zero => simp [A152813, A152813.P5327336849307863815.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152813, Nat.add_sub_cancel, A152813.P5327336849307863815.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152813

/-! ## A152813.P15198202086655269296

`round(a(n-1)+4*(n+2))` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A152813.P15198202086655269296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 4 * (n + 2)

end

end A152813.P15198202086655269296

namespace A152813

/-- `round(a(n-1)+4*(n+2))` -/
def P15198202086655269296.Spec : Prop :=
  ∀ n, (P15198202086655269296.a n : ℤ) = A152813 n

theorem P15198202086655269296.correct : P15198202086655269296.Spec := by
  intro n
  induction n with
  | zero => simp [A152813, A152813.P15198202086655269296.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152813, Nat.add_sub_cancel, A152813.P15198202086655269296.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152813

/-! ## A152813.P3371919605047605976

`4*(a(n-1)/4+2+n)` with `a(0)=3`
-/

namespace A152813.P3371919605047605976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * (a (n - 1) / 4 + 2 + (n : ℚ))

end

end A152813.P3371919605047605976

namespace A152813

/-- `4*(a(n-1)/4+2+n)` -/
def P3371919605047605976.Spec : Prop :=
  ∀ n, P3371919605047605976.a n = (A152813 n : ℚ)

theorem P3371919605047605976.correct : P3371919605047605976.Spec := by
  intro n
  induction n with
  | zero => simp [A152813, A152813.P3371919605047605976.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A152813, Nat.add_sub_cancel, A152813.P3371919605047605976.a, A152813.P6849465060171849523.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A152813

/-! ## A152813.P2617896846430936511

`∑[floor(4^(3/a(n-1))*a(n-1))]` with `a(0)=3`
-/

namespace A152813.P2617896846430936511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  ⌊(4 : ℝ) ^ (3 / (f1 (n - 1) : ℚ) : ℝ) * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152813.P2617896846430936511

namespace A152813

/-- `∑[floor(4^(3/a(n-1))*a(n-1))]` -/
def P2617896846430936511.Spec : Prop :=
  ∀ n, P2617896846430936511.a n = A152813 n

end A152813

/-! ## A152813.P1936519021601860138

`(A145923(n)-3)/2`
-/

namespace A152813.P1936519021601860138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145923 n - 3 : ℚ) / 2

end

end A152813.P1936519021601860138

namespace A152813

/-- `(A145923(n)-3)/2` -/
def P1936519021601860138.Spec : Prop :=
  ∀ n, P1936519021601860138.a n = (A152813 n : ℚ)

end A152813

/-! ## A152813.P9120988214173906973

`A158544(n+1)%A160749(n)`
-/

namespace A152813.P9120988214173906973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158544 (n + 1)) (A160749 n)

end

end A152813.P9120988214173906973

namespace A152813

/-- `A158544(n+1)%A160749(n)` -/
def P9120988214173906973.Spec : Prop :=
  ∀ n, P9120988214173906973.a n = A152813 n

end A152813

/-! ## A152813.P14956687375868274035

`A145923(n)%A181510(n+1)`
-/

namespace A152813.P14956687375868274035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145923 n) (A181510 (n + 1))

end

end A152813.P14956687375868274035

namespace A152813

/-- `A145923(n)%A181510(n+1)` -/
def P14956687375868274035.Spec : Prop :=
  ∀ n, P14956687375868274035.a n = A152813 n

end A152813

/-! ## A152813.P17563998743220693523

`A067726(n+1)%A228318(n+1)`
-/

namespace A152813.P17563998743220693523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067726 (n + 1)) (A228318 (n + 1))

end

end A152813.P17563998743220693523

namespace A152813

/-- `A067726(n+1)%A228318(n+1)` -/
def P17563998743220693523.Spec : Prop :=
  ∀ n, P17563998743220693523.a n = A152813 n

end A152813

/-! ## A152813.P9354660364367130201

`A277108(n+1)%A154576(n+1)`
-/

namespace A152813.P9354660364367130201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277108 (n + 1)) (A154576 (n + 1))

end

end A152813.P9354660364367130201

namespace A152813

/-- `A277108(n+1)%A154576(n+1)` -/
def P9354660364367130201.Spec : Prop :=
  ∀ n, P9354660364367130201.a n = A152813 n

end A152813

/-!
# A152815: Triangle T(n,k), read by rows given by [1,0,-1,0,0,0,0,0,0,...] DELTA [0,1,-1,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A152815, the canonical program `A152815.P5566439542825391343` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152815 has offset 0).

The definition of A152815 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152815.P5566439542825391343

`C(A004526(A003056(n)), A002262(n))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A152815

/-- `C(A004526(A003056(n)), A002262(n))` -/
def P5566439542825391343.Spec : Prop :=
  ∀ n, (P5566439542825391343.a n : ℤ) = A152815 n

theorem P5566439542825391343.correct : P5566439542825391343.Spec := by
  intro n
  simp only [A152815]

end A152815

/-! ## A152815.P15107209291170988268

`A103633(A116941(n)+A025581(n))`
-/

namespace A152815.P15107209291170988268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (A116941 n + A025581 n).toNat

end

end A152815.P15107209291170988268

namespace A152815

/-- `A103633(A116941(n)+A025581(n))` -/
def P15107209291170988268.Spec : Prop :=
  ∀ n, P15107209291170988268.a n = A152815 n

end A152815

/-! ## A152815.P8925033315528536793

`A103633(eq[A010816(n), A198954(n)])`
-/

namespace A152815.P8925033315528536793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010816 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152815.P8925033315528536793

namespace A152815

/-- `A103633(eq[A010816(n), A198954(n)])` -/
def P8925033315528536793.Spec : Prop :=
  ∀ n, P8925033315528536793.a n = A152815 n

end A152815

/-! ## A152815.P16808715963896194881

`A103633(A128217(n+1)-A057944(n))`
-/

namespace A152815.P16808715963896194881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (A128217 (n + 1) - A057944 n).toNat

end

end A152815.P16808715963896194881

namespace A152815

/-- `A103633(A128217(n+1)-A057944(n))` -/
def P16808715963896194881.Spec : Prop :=
  ∀ n, P16808715963896194881.a n = A152815 n

end A152815

/-! ## A152815.P2116925484466829562

`A103633(eq[A101688(n), A145362(n+1)])`
-/

namespace A152815.P2116925484466829562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152815.P2116925484466829562

namespace A152815

/-- `A103633(eq[A101688(n), A145362(n+1)])` -/
def P2116925484466829562.Spec : Prop :=
  ∀ n, P2116925484466829562.a n = A152815 n

end A152815

/-! ## A152815.P12462135327733037727

`A103633(A002378(n)%A080036(n))`
-/

namespace A152815.P12462135327733037727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A152815.P12462135327733037727

namespace A152815

/-- `A103633(A002378(n)%A080036(n))` -/
def P12462135327733037727.Spec : Prop :=
  ∀ n, P12462135327733037727.a n = A152815 n

end A152815

/-! ## A152815.P6704625000070243182

`A103633(A061579(n))`
-/

namespace A152815.P6704625000070243182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (A061579 n).toNat

end

end A152815.P6704625000070243182

namespace A152815

/-- `A103633(A061579(n))` -/
def P6704625000070243182.Spec : Prop :=
  ∀ n, P6704625000070243182.a n = A152815 n

end A152815

/-! ## A152815.P13047357263214458494

`A204293(A056023(n+1)-A092543(n+1))`
-/

namespace A152815.P13047357263214458494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 (A056023 (n + 1) - A092543 (n + 1)).toNat

end

end A152815.P13047357263214458494

namespace A152815

/-- `A204293(A056023(n+1)-A092543(n+1))` -/
def P13047357263214458494.Spec : Prop :=
  ∀ n, P13047357263214458494.a n = A152815 n

end A152815

/-! ## A152815.P5460014037224638018

`A103633(A005843(∑[n])%A080036(n))`
-/

namespace A152815.P5460014037224638018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103633 (Int.tmod (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)) (A080036 n)).toNat

end

end A152815.P5460014037224638018

namespace A152815

/-- `A103633(A005843(∑[n])%A080036(n))` -/
def P5460014037224638018.Spec : Prop :=
  ∀ n, P5460014037224638018.a n = A152815 n

end A152815

/-! ## A152815.P9442469195330479136

`A178112(A181940(n)+A057944(n))`
-/

namespace A152815.P9442469195330479136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (A181940 n + A057944 n).toNat

end

end A152815.P9442469195330479136

namespace A152815

/-- `A178112(A181940(n)+A057944(n))` -/
def P9442469195330479136.Spec : Prop :=
  ∀ n, P9442469195330479136.a n = A152815 n

end A152815

/-!
# A152818: Array read by antidiagonals: A(n,k) = (k+1)^n*(n+k)!/n!.

The programs for A152818, the canonical program `A152818.P12812321603079016799` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152818 has offset 0).

The definition of A152818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152818.P9120617652408108590

`(n-C(∑[char[∑[n]]], 2))!*A154372(n)`
-/

namespace A152818.P9120617652408108590
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A154372 n

end

end A152818.P9120617652408108590

namespace A152818

/-- `(n-C(∑[char[∑[n]]], 2))!*A154372(n)` -/
def P9120617652408108590.Spec : Prop :=
  ∀ n, P9120617652408108590.a n = A152818 n

end A152818

/-! ## A152818.P12812321603079016799

`A008279(n)*A009998(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A152818

/-- `A008279(n)*A009998(n)` -/
def P12812321603079016799.Spec : Prop :=
  ∀ n, P12812321603079016799.a n = A152818 n

theorem P12812321603079016799.correct : P12812321603079016799.Spec := by
  intro n
  simp only [A152818]

end A152818

/-! ## A152818.P7064749149993052388

`A154372(n)*A233543(n)`
-/

namespace A152818.P7064749149993052388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154372 n * A233543 n

end

end A152818.P7064749149993052388

namespace A152818

/-- `A154372(n)*A233543(n)` -/
def P7064749149993052388.Spec : Prop :=
  ∀ n, P7064749149993052388.a n = A152818 n

end A152818

/-! ## A152818.P13065595961683149709

`A199673(n+1)/∑[char[∑[n]]]`
-/

namespace A152818.P13065595961683149709
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199673 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A152818.P13065595961683149709

namespace A152818

/-- `A199673(n+1)/∑[char[∑[n]]]` -/
def P13065595961683149709.Spec : Prop :=
  ∀ n, P13065595961683149709.a n = (A152818 n : ℚ)

end A152818

/-! ## A152818.P9731698074731127680

`1/A002024(n+1)*A199673(n+1)`
-/

namespace A152818.P9731698074731127680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A002024 (n + 1) : ℚ) * (A199673 (n + 1) : ℚ)

end

end A152818.P9731698074731127680

namespace A152818

/-- `1/A002024(n+1)*A199673(n+1)` -/
def P9731698074731127680.Spec : Prop :=
  ∀ n, P9731698074731127680.a n = (A152818 n : ℚ)

end A152818

/-! ## A152818.P606138673488802756

`A007318(n)*A299504(n)`
-/

namespace A152818.P606138673488802756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A299504 n

end

end A152818.P606138673488802756

namespace A152818

/-- `A007318(n)*A299504(n)` -/
def P606138673488802756.Spec : Prop :=
  ∀ n, P606138673488802756.a n = A152818 n

end A152818

/-! ## A152818.P5192562112636101921

`A154120(n)/(C(comp[∑[n]]-n, 2)-(n+1))!`
-/

namespace A152818.P5192562112636101921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154120 n : ℚ) / (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℚ)

end

end A152818.P5192562112636101921

namespace A152818

/-- `A154120(n)/(C(comp[∑[n]]-n, 2)-(n+1))!` -/
def P5192562112636101921.Spec : Prop :=
  ∀ n, P5192562112636101921.a n = (A152818 n : ℚ)

end A152818

/-! ## A152818.P168915784456772894

`A154120(n)/A119502(n)`
-/

namespace A152818.P168915784456772894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154120 n : ℚ) / (A119502 n : ℚ)

end

end A152818.P168915784456772894

namespace A152818

/-- `A154120(n)/A119502(n)` -/
def P168915784456772894.Spec : Prop :=
  ∀ n, P168915784456772894.a n = (A152818 n : ℚ)

end A152818

/-!
# A152819: "Upper primes" (see A152754).

The programs for A152819, the canonical program `A152819.P3265448876497624130` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152819 has offset 1).

The definition of A152819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 917 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152819.P13520250364538292174

`p?[lt[A292371(n), A292372(n)]]`
-/

namespace A152819.P13520250364538292174
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152819.P13520250364538292174

namespace A152819

/-- `p?[lt[A292371(n), A292372(n)]]` -/
def P13520250364538292174.Spec : Prop :=
  ∀ n, (P13520250364538292174.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P3265448876497624130

`p?[A152754(n+1)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152819

/-- `p?[A152754(n+1)]` -/
def P3265448876497624130.Spec : Prop :=
  ∀ n, P3265448876497624130.a n = A152819 (n + 1)

theorem P3265448876497624130.correct : P3265448876497624130.Spec := by
  intro n
  simp only [A152819, Nat.add_sub_cancel]

end A152819

/-! ## A152819.P8047063681338961685

`p?[record[A152754(A329048(n))]]`
-/

namespace A152819.P8047063681338961685
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (A329048 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152819.P8047063681338961685

namespace A152819

/-- `p?[record[A152754(A329048(n))]]` -/
def P8047063681338961685.Spec : Prop :=
  ∀ n, P8047063681338961685.a n = A152819 (n + 1)

end A152819

/-! ## A152819.P8289023849184025031

`record[A020639(A152754(n+4))]`
-/

namespace A152819.P8289023849184025031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A152754 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152819.P8289023849184025031

namespace A152819

/-- `record[A020639(A152754(n+4))]` -/
def P8289023849184025031.Spec : Prop :=
  ∀ n, P8289023849184025031.a n = A152819 (n + 1)

end A152819

/-! ## A152819.P6657883187591169822

`filter[A152754(n+1), A010051(#)]`
-/

namespace A152819.P6657883187591169822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A152819.P6657883187591169822

namespace A152819

/-- `filter[A152754(n+1), A010051(#)]` -/
def P6657883187591169822.Spec : Prop :=
  ∀ n, P6657883187591169822.a n = A152819 (n + 1)

end A152819

/-! ## A152819.P16255475236237186575

`filter[A152754(n+1), A323153(#)]`
-/

namespace A152819.P16255475236237186575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A152819.P16255475236237186575

namespace A152819

/-- `filter[A152754(n+1), A323153(#)]` -/
def P16255475236237186575.Spec : Prop :=
  ∀ n, P16255475236237186575.a n = A152819 (n + 1)

end A152819

/-! ## A152819.P7767878905338901914

`∩[A000040(n+1), A152754(n+1)]`
-/

namespace A152819.P7767878905338901914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P7767878905338901914

namespace A152819

/-- `∩[A000040(n+1), A152754(n+1)]` -/
def P7767878905338901914.Spec : Prop :=
  ∀ n, (P7767878905338901914.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P11067809652460373011

`∩[A008578(n+1), A152754(n+1)]`
-/

namespace A152819.P11067809652460373011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P11067809652460373011

namespace A152819

/-- `∩[A008578(n+1), A152754(n+1)]` -/
def P11067809652460373011.Spec : Prop :=
  ∀ n, (P11067809652460373011.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P4254510583743605284

`∩[A045319(n+1), A152754(n+1)]`
-/

namespace A152819.P4254510583743605284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P4254510583743605284

namespace A152819

/-- `∩[A045319(n+1), A152754(n+1)]` -/
def P4254510583743605284.Spec : Prop :=
  ∀ n, (P4254510583743605284.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P11793317093045787907

`∩[A045344(n+1), A152754(n+1)]`
-/

namespace A152819.P11793317093045787907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P11793317093045787907

namespace A152819

/-- `∩[A045344(n+1), A152754(n+1)]` -/
def P11793317093045787907.Spec : Prop :=
  ∀ n, (P11793317093045787907.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P2818565923799555237

`∩[A046022(n+1), A152754(n+1)]`
-/

namespace A152819.P2818565923799555237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P2818565923799555237

namespace A152819

/-- `∩[A046022(n+1), A152754(n+1)]` -/
def P2818565923799555237.Spec : Prop :=
  ∀ n, (P2818565923799555237.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P16912172642674288683

`∩[A051948(n+1), A152754(n+1)]`
-/

namespace A152819.P16912172642674288683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P16912172642674288683

namespace A152819

/-- `∩[A051948(n+1), A152754(n+1)]` -/
def P16912172642674288683.Spec : Prop :=
  ∀ n, (P16912172642674288683.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P8371366585372910922

`∩[A053813(n+1), A152754(n+1)]`
-/

namespace A152819.P8371366585372910922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P8371366585372910922

namespace A152819

/-- `∩[A053813(n+1), A152754(n+1)]` -/
def P8371366585372910922.Spec : Prop :=
  ∀ n, (P8371366585372910922.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P16370512225807440437

`∩[A116974(n+1), A152754(n+1)]`
-/

namespace A152819.P16370512225807440437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P16370512225807440437

namespace A152819

/-- `∩[A116974(n+1), A152754(n+1)]` -/
def P16370512225807440437.Spec : Prop :=
  ∀ n, (P16370512225807440437.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P7578668734847734887

`∩[A138837(n+1), A152754(n+1)]`
-/

namespace A152819.P7578668734847734887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P7578668734847734887

namespace A152819

/-- `∩[A138837(n+1), A152754(n+1)]` -/
def P7578668734847734887.Spec : Prop :=
  ∀ n, (P7578668734847734887.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P15663147393107706156

`∩[A152754(n+1), A158611(n+1)]`
-/

namespace A152819.P15663147393107706156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P15663147393107706156

namespace A152819

/-- `∩[A152754(n+1), A158611(n+1)]` -/
def P15663147393107706156.Spec : Prop :=
  ∀ n, (P15663147393107706156.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P3838013785149630485

`∩[A152754(n+1), A175787(n+1)]`
-/

namespace A152819.P3838013785149630485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P3838013785149630485

namespace A152819

/-- `∩[A152754(n+1), A175787(n+1)]` -/
def P3838013785149630485.Spec : Prop :=
  ∀ n, (P3838013785149630485.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P16131654450198533935

`∩[A152754(n+1), A182986(n+1)]`
-/

namespace A152819.P16131654450198533935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P16131654450198533935

namespace A152819

/-- `∩[A152754(n+1), A182986(n+1)]` -/
def P16131654450198533935.Spec : Prop :=
  ∀ n, (P16131654450198533935.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P4130339154653853717

`∩[A207039(n+1), A152754(n+1)]`
-/

namespace A152819.P4130339154653853717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P4130339154653853717

namespace A152819

/-- `∩[A207039(n+1), A152754(n+1)]` -/
def P4130339154653853717.Spec : Prop :=
  ∀ n, (P4130339154653853717.a n : ℤ) = A152819 (n + 1)

end A152819

/-! ## A152819.P12090880709503657395

`∩[A152754(n+1), A284696(n+1)]`
-/

namespace A152819.P12090880709503657395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284696 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152819.P12090880709503657395

namespace A152819

/-- `∩[A152754(n+1), A284696(n+1)]` -/
def P12090880709503657395.Spec : Prop :=
  ∀ n, (P12090880709503657395.a n : ℤ) = A152819 (n + 1)

end A152819

/-!
# A152820: Non-upper primes (see A152754).

The programs for A152820, the canonical program `A152820.P7903336391829346001` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152820 has offset 1).

The definition of A152820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 983 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152820.P3264705528409976711

`p?[lt[A292372(n), A292371(n)+1]]`
-/

namespace A152820.P3264705528409976711
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152820.P3264705528409976711

namespace A152820

/-- `p?[lt[A292372(n), A292371(n)+1]]` -/
def P3264705528409976711.Spec : Prop :=
  ∀ n, (P3264705528409976711.a n : ℤ) = A152820 (n + 1)

end A152820

/-! ## A152820.P7903336391829346001

`p?[comp[A152754(n+1)]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152820

/-- `p?[comp[A152754(n+1)]]` -/
def P7903336391829346001.Spec : Prop :=
  ∀ n, (P7903336391829346001.a n : ℤ) = A152820 (n + 1)

theorem P7903336391829346001.correct : P7903336391829346001.Spec := by
  intro n
  simp only [A152820, Nat.add_sub_cancel]

end A152820

/-! ## A152820.P9504950700408764118

`record[p?[n%A057300(n+1)+1]]`
-/

namespace A152820.P9504950700408764118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A057300 (n + 1)) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152820.P9504950700408764118

namespace A152820

/-- `record[p?[n%A057300(n+1)+1]]` -/
def P9504950700408764118.Spec : Prop :=
  ∀ n, P9504950700408764118.a n = A152820 (n + 1)

end A152820

/-! ## A152820.P4187566139471022878

`p?[comp[A152819(n+1)]]`
-/

namespace A152820.P4187566139471022878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152819 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152820.P4187566139471022878

namespace A152820

/-- `p?[comp[A152819(n+1)]]` -/
def P4187566139471022878.Spec : Prop :=
  ∀ n, (P4187566139471022878.a n : ℤ) = A152820 (n + 1)

end A152820

/-! ## A152820.P14043777998017875393

`p?[lt[A059906(n), A059905(n)+1]]`
-/

namespace A152820.P14043777998017875393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152820.P14043777998017875393

namespace A152820

/-- `p?[lt[A059906(n), A059905(n)+1]]` -/
def P14043777998017875393.Spec : Prop :=
  ∀ n, (P14043777998017875393.a n : ℤ) = A152820 (n + 1)

end A152820

/-!
# A152821: Decimal expansion of log_20 (2).

The programs for A152821, there is no canonical definition to state claims against.
-/

/-! ## A152821.P13380868875203217666

`9-A154170(n)`
-/

namespace A152821.P13380868875203217666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154170 n

end

end A152821.P13380868875203217666

/-!
# A152822: Periodic sequence [1,1,0,1] of length 4.

The programs for A152822, the canonical program `A152822.P16322060659010648271` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152822 has offset 0).

The definition of A152822 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152822.P16322060659010648271

`A166486(2+n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152822

/-- `A166486(2+n)` -/
def P16322060659010648271.Spec : Prop :=
  ∀ n, P16322060659010648271.a n = A152822 n

theorem P16322060659010648271.correct : P16322060659010648271.Spec := by
  intro n
  simp only [A152822]

end A152822

/-!
# A152823: Largest divisor < n of n^2 + 1, a(1) = 1.

The programs for A152823, there is no canonical definition to state claims against.
-/

/-! ## A152823.P8883592221852773947

`((n+1)²+1)/A259036(n+1)`
-/

namespace A152823.P8883592221852773947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 1 : ℚ) / (A259036 (n + 1) : ℚ)

end

end A152823.P8883592221852773947

/-! ## A152823.P8904288405083020274

`A259036(n+1)-A285122(n+1)`
-/

namespace A152823.P8904288405083020274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259036 (n + 1) - A285122 (n + 1)

end

end A152823.P8904288405083020274

/-! ## A152823.P3674522739936058427

`floor(A007491(n+1)/A259036(n+1))`
-/

namespace A152823.P3674522739936058427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007491 (n + 1) : ℚ) / (A259036 (n + 1) : ℚ)⌋

end

end A152823.P3674522739936058427

/-! ## A152823.P10570873488672361487

`1/A259036(n+1)*A002522(n+1)`
-/

namespace A152823.P10570873488672361487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A259036 (n + 1) : ℚ) * (A002522 (n + 1) : ℚ)

end

end A152823.P10570873488672361487

/-! ## A152823.P12798211167899647142

`A001281(A005893(n+1)/A259036(n+1))`
-/

namespace A152823.P12798211167899647142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (SequenceMachineLib.roundAway ((A005893 (n + 1) : ℚ) / (A259036 (n + 1) : ℚ))).toNat

end

end A152823.P12798211167899647142

/-! ## A152823.P6210950317349311789

`A004526(A005893(n+1)/A259036(n+1))`
-/

namespace A152823.P6210950317349311789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A005893 (n + 1) : ℚ) / (A259036 (n + 1) : ℚ))).toNat

end

end A152823.P6210950317349311789

/-! ## A152823.P4045558108589969337

`A033676((n+1)²+1)`
-/

namespace A152823.P4045558108589969337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 ((n + 1) ^ 2 + 1)

end

end A152823.P4045558108589969337

/-! ## A152823.P14666079758472078850

`A060775((n+1)²+1)`
-/

namespace A152823.P14666079758472078850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 ((n + 1) ^ 2 + 1)

end

end A152823.P14666079758472078850

/-! ## A152823.P16843469270211988363

`A162348(A058331(n+1))`
-/

namespace A152823.P16843469270211988363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (A058331 (n + 1)).toNat

end

end A152823.P16843469270211988363

/-! ## A152823.P9623220794844025658

`A162348(A005893(n+1)-1)`
-/

namespace A152823.P9623220794844025658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (A005893 (n + 1) - 1).toNat

end

end A152823.P9623220794844025658

/-!
# A152827: Partial products of PartitionsQ numbers (A000009).

The programs for A152827, there is no canonical definition to state claims against.
-/

/-! ## A152827.P13450241281418902706

`∏[A000009(n)]`
-/

namespace A152827.P13450241281418902706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P13450241281418902706

/-! ## A152827.P6386357324704419015

`∏[abs(A081360(n))]`
-/

namespace A152827.P6386357324704419015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P6386357324704419015

/-! ## A152827.P15245438389754245995

`∏[sqrt(A304990(n))]`
-/

namespace A152827.P15245438389754245995
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A304990 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P15245438389754245995

/-! ## A152827.P3136257235335599747

`∏[A054242(∑[n])]`
-/

namespace A152827.P3136257235335599747
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054242 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P3136257235335599747

/-! ## A152827.P4091093035641014438

`∏[∑[A087897(n)]]`
-/

namespace A152827.P4091093035641014438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P4091093035641014438

/-! ## A152827.P17869549931157026088

`∏[A201377(∑[n])]`
-/

namespace A152827.P17869549931157026088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201377 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P17869549931157026088

/-! ## A152827.P5355079994463839847

`∏[A264405(∑[n])]`
-/

namespace A152827.P5355079994463839847
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264405 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P5355079994463839847

/-! ## A152827.P14160000714509977424

`∏[A284593(∑[n])]`
-/

namespace A152827.P14160000714509977424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284593 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P14160000714509977424

/-! ## A152827.P7803601908118881317

`∏[A339737(∑[n])]`
-/

namespace A152827.P7803601908118881317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339737 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P7803601908118881317

/-! ## A152827.P3649803154630888947

`∏[A360634(∑[n])]`
-/

namespace A152827.P3649803154630888947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360634 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152827.P3649803154630888947

/-!
# A152828: Triangle read by rows, A007318 rows repeated three times.

The programs for A152828, the canonical program `A152828.P17053707415147750268` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152828 has offset 0).

The definition of A152828 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7515 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152828.P17053707415147750268

`A152830(lt[n, A056011(n+1)])`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A152828

/-- `A152830(lt[n, A056011(n+1)])` -/
def P17053707415147750268.Spec : Prop :=
  ∀ n, P17053707415147750268.a n = A152828 n

theorem P17053707415147750268.correct : P17053707415147750268.Spec := by
  intro n
  simp only [A152828]

end A152828

/-! ## A152828.P14288758513635442452

`A152830(lt[0, A057270(n+1)])`
-/

namespace A152828.P14288758513635442452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152830 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A152828.P14288758513635442452

namespace A152828

/-- `A152830(lt[0, A057270(n+1)])` -/
def P14288758513635442452.Spec : Prop :=
  ∀ n, P14288758513635442452.a n = A152828 n

end A152828

/-! ## A152828.P11928467233382732549

`A152831(lt[A220313(n+1), A220369(n+2)])`
-/

namespace A152828.P11928467233382732549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152831 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152828.P11928467233382732549

namespace A152828

/-- `A152831(lt[A220313(n+1), A220369(n+2)])` -/
def P11928467233382732549.Spec : Prop :=
  ∀ n, P11928467233382732549.a n = A152828 n

end A152828

/-! ## A152828.P11377449473704522606

`A152831(lt[A220369(n+1), A220369(n+2)])`
-/

namespace A152828.P11377449473704522606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220369 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152831 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152828.P11377449473704522606

namespace A152828

/-- `A152831(lt[A220369(n+1), A220369(n+2)])` -/
def P11377449473704522606.Spec : Prop :=
  ∀ n, P11377449473704522606.a n = A152828 n

end A152828

/-! ## A152828.P15764187925813700329

`A115573(A168286(n+1)+A115572(n+1))`
-/

namespace A152828.P15764187925813700329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115573 (A168286 (n + 1) + A115572 (n + 1)).toNat

end

end A152828.P15764187925813700329

namespace A152828

/-- `A115573(A168286(n+1)+A115572(n+1))` -/
def P15764187925813700329.Spec : Prop :=
  ∀ n, P15764187925813700329.a n = A152828 n

end A152828

/-!
# A152829: Numbers k whose squares can be written in exactly one way as a sum of three squares: k^2 = a^2 + b^2 + c^2 with 1 <= a <= b <= c.

The programs for A152829, the canonical program `A152829.P1632755838612136929` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152829 has offset 1).

The definition of A152829 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 990 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152829.P1632755838612136929

`2*a(n-3)` with `a(0)=3, a(1)=6, a(2)=7, a(3)=12, a(4)=13`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152829

/-- `2*a(n-3)` -/
def P1632755838612136929.Spec : Prop :=
  ∀ n, (P1632755838612136929.a n : ℤ) = A152829 (n + 1)

theorem P1632755838612136929.correct : P1632755838612136929.Spec := by
  intro n
  simp only [A152829, Nat.add_sub_cancel]

end A152829

/-! ## A152829.P5785389157490156823

`a(n-3)+a(n-3)` with `a(0)=3, a(1)=6, a(2)=7, a(3)=12, a(4)=13`
-/

namespace A152829.P5785389157490156823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 7, 12, 13] fun n a =>
  a (n - 3) + a (n - 3)

end

end A152829.P5785389157490156823

namespace A152829

/-- `a(n-3)+a(n-3)` -/
def P5785389157490156823.Spec : Prop :=
  ∀ n, (P5785389157490156823.a n : ℤ) = A152829 (n + 1)

theorem P5785389157490156823.correct : P5785389157490156823.Spec := by
  intro n
  simp only [A152829, Nat.add_sub_cancel, A152829.P5785389157490156823.a, A152829.P1632755838612136929.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A152829

/-! ## A152829.P10336843519876668185

`record[or(A130128(n+1), A173786(n))]`
-/

namespace A152829.P10336843519876668185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A130128 (n + 1)) (A173786 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152829.P10336843519876668185

namespace A152829

/-- `record[or(A130128(n+1), A173786(n))]` -/
def P10336843519876668185.Spec : Prop :=
  ∀ n, P10336843519876668185.a n = A152829 (n + 1)

end A152829

/-! ## A152829.P18130400384175759358

`A320674(n+1)+A300724(A320674(n+1))`
-/

namespace A152829.P18130400384175759358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320674 (n + 1) + A300724 (A320674 (n + 1)).toNat

end

end A152829.P18130400384175759358

namespace A152829

/-- `A320674(n+1)+A300724(A320674(n+1))` -/
def P18130400384175759358.Spec : Prop :=
  ∀ n, P18130400384175759358.a n = A152829 (n + 1)

end A152829

/-! ## A152829.P6069285176626689591

`A004755(A029747(n+1))`
-/

namespace A152829.P6069285176626689591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A029747 (n + 1)).toNat

end

end A152829.P6069285176626689591

namespace A152829

/-- `A004755(A029747(n+1))` -/
def P6069285176626689591.Spec : Prop :=
  ∀ n, P6069285176626689591.a n = A152829 (n + 1)

end A152829

/-!
# A152830: Triangle read by rows, A007318 rows repeated four times .

The programs for A152830, the canonical program `A152830.P15574207938550705769` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152830 has offset 0).

The definition of A152830 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152830.P5377309150228937654

`A046854(A379777(n))`
-/

namespace A152830.P5377309150228937654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046854 (A379777 n).toNat

end

end A152830.P5377309150228937654

namespace A152830

/-- `A046854(A379777(n))` -/
def P5377309150228937654.Spec : Prop :=
  ∀ n, P5377309150228937654.a n = A152830 n

end A152830

/-! ## A152830.P8482737043071140159

`A051159(n-A025581(n))`
-/

namespace A152830.P8482737043071140159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 ((n : ℤ) - A025581 n).toNat

end

end A152830.P8482737043071140159

namespace A152830

/-- `A051159(n-A025581(n))` -/
def P8482737043071140159.Spec : Prop :=
  ∀ n, P8482737043071140159.a n = A152830 n

end A152830

/-! ## A152830.P15574207938550705769

`A119963(n-A025581(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A152830

/-- `A119963(n-A025581(n))` -/
def P15574207938550705769.Spec : Prop :=
  ∀ n, P15574207938550705769.a n = A152830 n

theorem P15574207938550705769.correct : P15574207938550705769.Spec := by
  intro n
  simp only [A152830]

end A152830

/-! ## A152830.P4575766771817694345

`A211226(n-A025581(n))`
-/

namespace A152830.P4575766771817694345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211226 ((n : ℤ) - A025581 n).toNat

end

end A152830.P4575766771817694345

namespace A152830

/-- `A211226(n-A025581(n))` -/
def P4575766771817694345.Spec : Prop :=
  ∀ n, P4575766771817694345.a n = A152830 n

end A152830

/-! ## A152830.P15651536956127560985

`A051159(A057944(n)-A114327(n))`
-/

namespace A152830.P15651536956127560985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A057944 n - A114327 n).toNat

end

end A152830.P15651536956127560985

namespace A152830

/-- `A051159(A057944(n)-A114327(n))` -/
def P15651536956127560985.Spec : Prop :=
  ∀ n, P15651536956127560985.a n = A152830 n

end A152830

/-! ## A152830.P7685422428972213880

`A051159(A005408(n)-A127739(n+1))`
-/

namespace A152830.P7685422428972213880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A005408 n - A127739 (n + 1)).toNat

end

end A152830.P7685422428972213880

namespace A152830

/-- `A051159(A005408(n)-A127739(n+1))` -/
def P7685422428972213880.Spec : Prop :=
  ∀ n, P7685422428972213880.a n = A152830 n

end A152830

/-! ## A152830.P4031204331881395985

`A051159(A127739(n+1)-A099375(n))`
-/

namespace A152830.P4031204331881395985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A127739 (n + 1) - A099375 n).toNat

end

end A152830.P4031204331881395985

namespace A152830

/-- `A051159(A127739(n+1)-A099375(n))` -/
def P4031204331881395985.Spec : Prop :=
  ∀ n, P4031204331881395985.a n = A152830 n

end A152830

/-! ## A152830.P15612034305373475042

`A119963(A132118(n+1))`
-/

namespace A152830.P15612034305373475042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A132118 (n + 1)).toNat

end

end A152830.P15612034305373475042

namespace A152830

/-- `A119963(A132118(n+1))` -/
def P15612034305373475042.Spec : Prop :=
  ∀ n, P15612034305373475042.a n = A152830 n

end A152830

/-! ## A152830.P3105679808136169492

`A119963(A002260(n+1)+n)`
-/

namespace A152830.P3105679808136169492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119963 (A002260 (n + 1) + (n : ℤ)).toNat

end

end A152830.P3105679808136169492

namespace A152830

/-- `A119963(A002260(n+1)+n)` -/
def P3105679808136169492.Spec : Prop :=
  ∀ n, P3105679808136169492.a n = A152830 n

end A152830

/-! ## A152830.P1904929503883752318

`A152846(A128217(n+1))`
-/

namespace A152830.P1904929503883752318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152846 (A128217 (n + 1)).toNat

end

end A152830.P1904929503883752318

namespace A152830

/-- `A152846(A128217(n+1))` -/
def P1904929503883752318.Spec : Prop :=
  ∀ n, P1904929503883752318.a n = A152830 n

end A152830

/-!
# A152831: Triangle read by rows, A007318 repeated five times .

The programs for A152831, there is no canonical definition to state claims against.
-/

/-! ## A152831.P5420135948472334913

`A152848(A167384(n)+1)`
-/

namespace A152831.P5420135948472334913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 (A167384 n + 1).toNat

end

end A152831.P5420135948472334913

/-! ## A152831.P18156566545247552489

`A152844(lt[A324384(3*(n+1)), A360007(n+4)])`
-/

namespace A152831.P18156566545247552489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324384 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360007 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152844 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152831.P18156566545247552489

/-! ## A152831.P10906476370386898384

`A152845(lt[A303555(n+1), A355392(n+1)])`
-/

namespace A152831.P10906476370386898384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303555 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152845 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152831.P10906476370386898384

/-! ## A152831.P13898412483463231833

`gcd(A152848(A047240(n+1)), A268448(n+1))`
-/

namespace A152831.P13898412483463231833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A152848 (A047240 (n + 1)).toNat) (A268448 (n + 1))

end

end A152831.P13898412483463231833

/-! ## A152831.P9829989069256114321

`gcd(A114613(n+1), A263110(n+1))`
-/

namespace A152831.P9829989069256114321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114613 (n + 1)) (A263110 (n + 1))

end

end A152831.P9829989069256114321

/-!
# A152832: a(0) = -2; a(n) = n - a(n-1) for n > 0.

The programs for A152832, the canonical program `A152832.P6966607338528358032` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152832 has offset 0).

The definition of A152832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(n-1)` (program `A152832.P6966607338528358032`, by `A152832.P6966607338528358032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152832.P6966607338528358032

`n-a(n-1)` with `a(0)=-2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152832

/-- `n-a(n-1)` -/
def P6966607338528358032.Spec : Prop :=
  ∀ n, P6966607338528358032.a n = A152832 n

theorem P6966607338528358032.correct : P6966607338528358032.Spec := by
  intro n
  simp only [A152832]

end A152832

/-! ## A152832.P141750766507467925

`(n+1)/2-(9*(-1)^n+1)/4`
-/

namespace A152832.P141750766507467925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 - (9 * (-1) ^ n + 1 : ℚ) / 4

end

end A152832.P141750766507467925

namespace A152832

/-- `(n+1)/2-(9*(-1)^n+1)/4` -/
def P141750766507467925.Spec : Prop :=
  ∀ n, P141750766507467925.a n = (A152832 n : ℚ)

theorem P141750766507467925.correct : P141750766507467925.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A152832, Nat.add_sub_cancel, A152832.P141750766507467925.a, A152832.P6966607338528358032.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A152832, Nat.add_sub_cancel, A152832.P141750766507467925.a, A152832.P6966607338528358032.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152832

/-! ## A152832.P5203704758908353605

`ceil(tan(gcd(2, n))+n/2)`
-/

namespace A152832.P5203704758908353605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (Nat.gcd 2 n : ℝ) + ((n : ℚ) / 2 : ℝ)⌉

end

end A152832.P5203704758908353605

namespace A152832

/-- `ceil(tan(gcd(2, n))+n/2)` -/
def P5203704758908353605.Spec : Prop :=
  ∀ n, P5203704758908353605.a n = A152832 n

end A152832

/-! ## A152832.P7091298368663911675

`∑[ogf((2-5x+2x^2)/(-1+x^2))]`
-/

namespace A152832.P7091298368663911675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 5, -2] [1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152832.P7091298368663911675

namespace A152832

/-- `∑[ogf((2-5x+2x^2)/(-1+x^2))]` -/
def P7091298368663911675.Spec : Prop :=
  ∀ n, P7091298368663911675.a n = A152832 n

end A152832

/-! ## A152832.P13325004502777303710

`ogf((2-5x+2x^2)/(-1+x+x^2-x^3))`
-/

namespace A152832.P13325004502777303710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-2, 5, -2] [1, -1, -1, 1] n

end

end A152832.P13325004502777303710

namespace A152832

/-- `ogf((2-5x+2x^2)/(-1+x+x^2-x^3))` -/
def P13325004502777303710.Spec : Prop :=
  ∀ n, P13325004502777303710.a n = A152832 n

end A152832

/-! ## A152832.P11647585356276708608

`floor(4*and(1, n)+(n-3)/2)`
-/

namespace A152832.P11647585356276708608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * Nat.land 1 n : ℚ) + ((n : ℤ) - 3 : ℚ) / 2⌋

end

end A152832.P11647585356276708608

namespace A152832

/-- `floor(4*and(1, n)+(n-3)/2)` -/
def P11647585356276708608.Spec : Prop :=
  ∀ n, P11647585356276708608.a n = A152832 n

end A152832

/-! ## A152832.P5478933948296107315

`A194522(A063289(n+3))`
-/

namespace A152832.P5478933948296107315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194522 (A063289 (n + 3)).toNat

end

end A152832.P5478933948296107315

namespace A152832

/-- `A194522(A063289(n+3))` -/
def P5478933948296107315.Spec : Prop :=
  ∀ n, P5478933948296107315.a n = A152832 n

end A152832

/-! ## A152832.P915290955077598984

`A194518(A090771(n+1))`
-/

namespace A152832.P915290955077598984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194518 (A090771 (n + 1)).toNat

end

end A152832.P915290955077598984

namespace A152832

/-- `A194518(A090771(n+1))` -/
def P915290955077598984.Spec : Prop :=
  ∀ n, P915290955077598984.a n = A152832 n

end A152832

/-! ## A152832.P13451969778249673950

`A194527(A299647(n+1))`
-/

namespace A152832.P13451969778249673950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194527 (A299647 (n + 1)).toNat

end

end A152832.P13451969778249673950

namespace A152832

/-- `A194527(A299647(n+1))` -/
def P13451969778249673950.Spec : Prop :=
  ∀ n, P13451969778249673950.a n = A152832 n

end A152832

/-! ## A152832.P13206679206676672983

`A194529(A092464(n+1))`
-/

namespace A152832.P13206679206676672983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194529 (A092464 (n + 1)).toNat

end

end A152832.P13206679206676672983

namespace A152832

/-- `A194529(A092464(n+1))` -/
def P13206679206676672983.Spec : Prop :=
  ∀ n, P13206679206676672983.a n = A152832 n

end A152832

/-!
# A152833: a(0) = -3; a(n) = n-a(n-1).

The programs for A152833, the canonical program `A152833.P10792130960915510510` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152833 has offset 0).

The definition of A152833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(n-1)` (program `A152833.P10792130960915510510`, by `A152833.P10792130960915510510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152833.P10792130960915510510

`n-a(n-1)` with `a(0)=-3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152833

/-- `n-a(n-1)` -/
def P10792130960915510510.Spec : Prop :=
  ∀ n, P10792130960915510510.a n = A152833 n

theorem P10792130960915510510.correct : P10792130960915510510.Spec := by
  intro n
  simp only [A152833]

end A152833

/-! ## A152833.P17710185990290412055

`(2*n+1-13*(-1)^n)/4`
-/

namespace A152833.P17710185990290412055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - 13 * (-1) ^ n : ℚ) / 4

end

end A152833.P17710185990290412055

namespace A152833

/-- `(2*n+1-13*(-1)^n)/4` -/
def P17710185990290412055.Spec : Prop :=
  ∀ n, P17710185990290412055.a n = (A152833 n : ℚ)

theorem P17710185990290412055.correct : P17710185990290412055.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A152833, Nat.add_sub_cancel, A152833.P17710185990290412055.a, A152833.P10792130960915510510.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A152833, Nat.add_sub_cancel, A152833.P17710185990290412055.a, A152833.P10792130960915510510.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152833

/-! ## A152833.P18418540134455613358

`∑[ogf((3-7x+3x^2)/(-1+x^2))]`
-/

namespace A152833.P18418540134455613358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 7, -3] [1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152833.P18418540134455613358

namespace A152833

/-- `∑[ogf((3-7x+3x^2)/(-1+x^2))]` -/
def P18418540134455613358.Spec : Prop :=
  ∀ n, P18418540134455613358.a n = A152833 n

end A152833

/-! ## A152833.P5133928736778531579

`ogf((3-7x+3x^2)/(-1+x+x^2-x^3))`
-/

namespace A152833.P5133928736778531579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 7, -3] [1, -1, -1, 1] n

end

end A152833.P5133928736778531579

namespace A152833

/-- `ogf((3-7x+3x^2)/(-1+x+x^2-x^3))` -/
def P5133928736778531579.Spec : Prop :=
  ∀ n, P5133928736778531579.a n = A152833 n

end A152833

/-! ## A152833.P2885871365045989524

`3-∑[xor(6, (n+1)%2-1)]`
-/

namespace A152833.P2885871365045989524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 ((((n + 1) % 2 : ℕ) : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152833.P2885871365045989524

namespace A152833

/-- `3-∑[xor(6, (n+1)%2-1)]` -/
def P2885871365045989524.Spec : Prop :=
  ∀ n, P2885871365045989524.a n = A152833 n

end A152833

/-! ## A152833.P4780206456316671131

`2*(n+2)-A147677(n+1)`
-/

namespace A152833.P4780206456316671131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A147677 (n + 1)

end

end A152833.P4780206456316671131

namespace A152833

/-- `2*(n+2)-A147677(n+1)` -/
def P4780206456316671131.Spec : Prop :=
  ∀ n, P4780206456316671131.a n = A152833 n

end A152833

/-! ## A152833.P10657348424067177533

`A152832(n)-A033999(n)`
-/

namespace A152833.P10657348424067177533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 n - A033999 n

end

end A152833.P10657348424067177533

namespace A152833

/-- `A152832(n)-A033999(n)` -/
def P10657348424067177533.Spec : Prop :=
  ∀ n, P10657348424067177533.a n = A152833 n

end A152833

/-! ## A152833.P9586383092924045462

`A110654(n)-A174971(n)`
-/

namespace A152833.P9586383092924045462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - A174971 n

end

end A152833.P9586383092924045462

namespace A152833

/-- `A110654(n)-A174971(n)` -/
def P9586383092924045462.Spec : Prop :=
  ∀ n, P9586383092924045462.a n = A152833 n

end A152833

/-! ## A152833.P1824388809375032567

`A008619(n)-A168309(n+1)`
-/

namespace A152833.P1824388809375032567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - A168309 (n + 1)

end

end A152833.P1824388809375032567

namespace A152833

/-- `A008619(n)-A168309(n+1)` -/
def P1824388809375032567.Spec : Prop :=
  ∀ n, P1824388809375032567.a n = A152833 n

end A152833

/-! ## A152833.P14066197921272743799

`A168321(n+1)-A010702(n)`
-/

namespace A152833.P14066197921272743799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168321 (n + 1) - A010702 n

end

end A152833.P14066197921272743799

namespace A152833

/-- `A168321(n+1)-A010702(n)` -/
def P14066197921272743799.Spec : Prop :=
  ∀ n, P14066197921272743799.a n = A152833 n

end A152833

/-! ## A152833.P2850164705733558284

`A047382(n+1)-A136320(n)`
-/

namespace A152833.P2850164705733558284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047382 (n + 1) - A136320 n

end

end A152833.P2850164705733558284

namespace A152833

/-- `A047382(n+1)-A136320(n)` -/
def P2850164705733558284.Spec : Prop :=
  ∀ n, P2850164705733558284.a n = A152833 n

end A152833

/-! ## A152833.P9637973949108175172

`A030451(n)-A168330(n+1)`
-/

namespace A152833.P9637973949108175172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n - A168330 (n + 1)

end

end A152833.P9637973949108175172

namespace A152833

/-- `A030451(n)-A168330(n+1)` -/
def P9637973949108175172.Spec : Prop :=
  ∀ n, P9637973949108175172.a n = A152833 n

end A152833

/-! ## A152833.P15459823758879938412

`A092464(n+1)-A166639(n)`
-/

namespace A152833.P15459823758879938412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092464 (n + 1) - A166639 n

end

end A152833.P15459823758879938412

namespace A152833

/-- `A092464(n+1)-A166639(n)` -/
def P15459823758879938412.Spec : Prop :=
  ∀ n, P15459823758879938412.a n = A152833 n

end A152833

/-! ## A152833.P2952836192783139505

`A168284(n+1)-A166519(n)`
-/

namespace A152833.P2952836192783139505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168284 (n + 1) - A166519 n

end

end A152833.P2952836192783139505

namespace A152833

/-- `A168284(n+1)-A166519(n)` -/
def P2952836192783139505.Spec : Prop :=
  ∀ n, P2952836192783139505.a n = A152833 n

end A152833

/-! ## A152833.P1201542265501305086

`A168461(n+1)-A016051(n+1)`
-/

namespace A152833.P1201542265501305086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168461 (n + 1) - A016051 (n + 1)

end

end A152833.P1201542265501305086

namespace A152833

/-- `A168461(n+1)-A016051(n+1)` -/
def P1201542265501305086.Spec : Prop :=
  ∀ n, P1201542265501305086.a n = A152833 n

end A152833

/-! ## A152833.P5676228658139628769

`A113801(n+1)-A092464(n+1)`
-/

namespace A152833.P5676228658139628769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113801 (n + 1) - A092464 (n + 1)

end

end A152833.P5676228658139628769

namespace A152833

/-- `A113801(n+1)-A092464(n+1)` -/
def P5676228658139628769.Spec : Prop :=
  ∀ n, P5676228658139628769.a n = A152833 n

end A152833

/-! ## A152833.P6479330856580486148

`A168381(n+1)-A047319(n+1)`
-/

namespace A152833.P6479330856580486148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168381 (n + 1) - A047319 (n + 1)

end

end A152833.P6479330856580486148

namespace A152833

/-- `A168381(n+1)-A047319(n+1)` -/
def P6479330856580486148.Spec : Prop :=
  ∀ n, P6479330856580486148.a n = A152833 n

end A152833

/-! ## A152833.P4837385835582523260

`A168397(n+1)-A047341(n+1)`
-/

namespace A152833.P4837385835582523260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168397 (n + 1) - A047341 (n + 1)

end

end A152833.P4837385835582523260

namespace A152833

/-- `A168397(n+1)-A047341(n+1)` -/
def P4837385835582523260.Spec : Prop :=
  ∀ n, P4837385835582523260.a n = A152833 n

end A152833

/-! ## A152833.P1717498520252181397

`A168390(n+1)-A047374(n+1)`
-/

namespace A152833.P1717498520252181397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (n + 1) - A047374 (n + 1)

end

end A152833.P1717498520252181397

namespace A152833

/-- `A168390(n+1)-A047374(n+1)` -/
def P1717498520252181397.Spec : Prop :=
  ∀ n, P1717498520252181397.a n = A152833 n

end A152833

/-! ## A152833.P1995944397113577184

`A168416(n+1)-A047406(n+1)`
-/

namespace A152833.P1995944397113577184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168416 (n + 1) - A047406 (n + 1)

end

end A152833.P1995944397113577184

namespace A152833

/-- `A168416(n+1)-A047406(n+1)` -/
def P1995944397113577184.Spec : Prop :=
  ∀ n, P1995944397113577184.a n = A152833 n

end A152833

/-!
# A152834: Numbers of the form 6*k+1 that use only digits 2 and 3.

The programs for A152834, there is no canonical definition to state claims against.
-/

/-! ## A152834.P17621011717141106847

`∩[A152824(n+1), A344892(n)]`
-/

namespace A152834.P17621011717141106847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344892 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152834.P17621011717141106847

/-! ## A152834.P2656824547539515471

`∩[A032810(n+1), A152824(n+1)]`
-/

namespace A152834.P2656824547539515471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152834.P2656824547539515471

/-! ## A152834.P16815734706465551751

`∩[A046034(2*(n+1)), A084544(3*n+1)]`
-/

namespace A152834.P16815734706465551751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152834.P16815734706465551751

/-! ## A152834.P965472231453799255

`∩[A046034(4*n+2), A007090(3*n+4)]`
-/

namespace A152834.P965472231453799255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (4 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (3 * n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152834.P965472231453799255

/-! ## A152834.P13722821620097454889

`∩[A007091(A039565(n+1)), A152824(n+1)]`
-/

namespace A152834.P13722821620097454889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A039565 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152824 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152834.P13722821620097454889

/-!
# A152835: a(0) = -22; a(n) = n-a(n-1).

The programs for A152835, the canonical program `A152835.P12211006351286185030` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152835 has offset 0).

The definition of A152835 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(n-1)` (program `A152835.P12211006351286185030`, by `A152835.P12211006351286185030.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A152835.P12211006351286185030

`n-a(n-1)` with `a(0)=-22`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152835

/-- `n-a(n-1)` -/
def P12211006351286185030.Spec : Prop :=
  ∀ n, P12211006351286185030.a n = A152835 n

theorem P12211006351286185030.correct : P12211006351286185030.Spec := by
  intro n
  simp only [A152835]

end A152835

/-! ## A152835.P12157822582720554951

`(1-89*(-1)^n+2*n)/4`
-/

namespace A152835.P12157822582720554951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - 89 * (-1) ^ n + (2 * n : ℤ) : ℚ) / 4

end

end A152835.P12157822582720554951

namespace A152835

/-- `(1-89*(-1)^n+2*n)/4` -/
def P12157822582720554951.Spec : Prop :=
  ∀ n, P12157822582720554951.a n = (A152835 n : ℚ)

theorem P12157822582720554951.correct : P12157822582720554951.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A152835, Nat.add_sub_cancel, A152835.P12157822582720554951.a, A152835.P12211006351286185030.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A152835, Nat.add_sub_cancel, A152835.P12157822582720554951.a, A152835.P12211006351286185030.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A152835

/-! ## A152835.P7299370186778323373

`ceil(xor(1, n)/2)-23*(-1)^n`
-/

namespace A152835.P7299370186778323373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 n : ℚ) / 2⌉ - 23 * (-1) ^ n

end

end A152835.P7299370186778323373

namespace A152835

/-- `ceil(xor(1, n)/2)-23*(-1)^n` -/
def P7299370186778323373.Spec : Prop :=
  ∀ n, P7299370186778323373.a n = A152835 n

end A152835

/-! ## A152835.P11202871466895193792

`A110654(n)-22*A033999(n)`
-/

namespace A152835.P11202871466895193792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n - 22 * A033999 n

end

end A152835.P11202871466895193792

namespace A152835

/-- `A110654(n)-22*A033999(n)` -/
def P11202871466895193792.Spec : Prop :=
  ∀ n, P11202871466895193792.a n = A152835 n

end A152835

/-! ## A152835.P17108086242375576628

`Δ[A004652(n)-A010685(n)!]`
-/

namespace A152835.P17108086242375576628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 n - (Nat.factorial (A010685 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152835.P17108086242375576628

namespace A152835

/-- `Δ[A004652(n)-A010685(n)!]` -/
def P17108086242375576628.Spec : Prop :=
  ∀ n, P17108086242375576628.a n = A152835 n

end A152835

/-! ## A152835.P14737684641289219507

`Δ[A033638(n)-A010218(2*(n+1))]`
-/

namespace A152835.P14737684641289219507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 n - A010218 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A152835.P14737684641289219507

namespace A152835

/-- `Δ[A033638(n)-A010218(2*(n+1))]` -/
def P14737684641289219507.Spec : Prop :=
  ∀ n, P14737684641289219507.a n = A152835 n

end A152835

/-!
# A152836: a(0)=-1; a(n)=n^a(n-1)-a(n-1)^n.

The programs for A152836, the canonical program `A152836.P1769936261938998788` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152836 has offset 0).

The definition of A152836 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152836.P1769936261938998788

`n^a(n-1)-a(n-1)^n` with `a(0)=-1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152836

/-- `n^a(n-1)-a(n-1)^n` -/
def P1769936261938998788.Spec : Prop :=
  ∀ n, P1769936261938998788.a n = (A152836 n : ℝ)

end A152836

/-! ## A152836.P15300685687250803409

`floor(n^a(n-1)-a(n-1)^n)` with `a(0)=-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A152836.P15300685687250803409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  ⌊(n : ℚ) ^ (a (n - 1) : ℤ) - (a (n - 1) ^ n : ℚ)⌋

end

end A152836.P15300685687250803409

namespace A152836

/-- `floor(n^a(n-1)-a(n-1)^n)` -/
def P15300685687250803409.Spec : Prop :=
  ∀ n, P15300685687250803409.a n = A152836 n

end A152836

/-!
# A152838: a(n) = floor(b(n)), where b(0) = 1 and b(n) = b(n-1)^n-n^b(n-1).

The programs for A152838, there is no canonical definition to state claims against.
-/

/-! ## A152838.P2979546227428658242

`A147449(∑[n+1])-n`
-/

namespace A152838.P2979546227428658242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147449 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A152838.P2979546227428658242

/-!
# A152842: Triangle T(n,k), 0 <= k <= n, read by rows, given by [1,0,-1,0,0,0,0,0,0,...] DELTA [3,-2,-1,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A152842, there is no canonical definition to state claims against.
-/

/-! ## A152842.P3257717690309832753

`A180063(n)%A059159(A343277(n))`
-/

namespace A152842.P3257717690309832753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180063 n) (A059159 (A343277 n).toNat)

end

end A152842.P3257717690309832753

/-! ## A152842.P17929589766557020950

`and(A000217(A048468(n)), A180063(n))`
-/

namespace A152842.P17929589766557020950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A048468 n).toNat) (A180063 n)

end

end A152842.P17929589766557020950

/-! ## A152842.P6750636023542123906

`and(A171885(A336724(n)), A180063(n))`
-/

namespace A152842.P6750636023542123906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A171885 (A336724 n).toNat) (A180063 n)

end

end A152842.P6750636023542123906

/-! ## A152842.P13959734524763523801

`and(A000217(A048468(n)), A125077(n+1))`
-/

namespace A152842.P13959734524763523801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000217 (A048468 n).toNat) (A125077 (n + 1))

end

end A152842.P13959734524763523801

/-! ## A152842.P1849139346437951831

`and(A137453(A137450(n+1)), A180063(n))`
-/

namespace A152842.P1849139346437951831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137453 (A137450 (n + 1)).toNat) (A180063 n)

end

end A152842.P1849139346437951831

/-!
# A152843: Numbers n such that both 2n+3 and 4n+7 are prime.

The programs for A152843, the canonical program `A152843.P1180888787900751512` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152843 has offset 1).

The definition of A152843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152843.P1180888787900751512

`A124485(n+1)-2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A152843

/-- `A124485(n+1)-2` -/
def P1180888787900751512.Spec : Prop :=
  ∀ n, P1180888787900751512.a n = A152843 (n + 1)

theorem P1180888787900751512.correct : P1180888787900751512.Spec := by
  intro n
  simp only [A152843, Nat.add_sub_cancel]

end A152843

/-! ## A152843.P17034232838065239598

`(A005384(n+2)-3)/2`
-/

namespace A152843.P17034232838065239598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005384 (n + 2) - 3 : ℚ) / 2

end

end A152843.P17034232838065239598

namespace A152843

/-- `(A005384(n+2)-3)/2` -/
def P17034232838065239598.Spec : Prop :=
  ∀ n, P17034232838065239598.a n = (A152843 (n + 1) : ℚ)

end A152843

/-! ## A152843.P7931060780792121762

`∑[A004526(Δ[A005384(n+1)])]`
-/

namespace A152843.P7931060780792121762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152843.P7931060780792121762

namespace A152843

/-- `∑[A004526(Δ[A005384(n+1)])]` -/
def P7931060780792121762.Spec : Prop :=
  ∀ n, P7931060780792121762.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P5743235297368508723

`∑[A025480(Δ[A005384(n+1)])]`
-/

namespace A152843.P5743235297368508723
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152843.P5743235297368508723

namespace A152843

/-- `∑[A025480(Δ[A005384(n+1)])]` -/
def P5743235297368508723.Spec : Prop :=
  ∀ n, P5743235297368508723.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P3275562112511189037

`∑[A060681(Δ[A005384(n+1)])]`
-/

namespace A152843.P3275562112511189037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152843.P3275562112511189037

namespace A152843

/-- `∑[A060681(Δ[A005384(n+1)])]` -/
def P3275562112511189037.Spec : Prop :=
  ∀ n, P3275562112511189037.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P9155879459607554065

`∑[A142150(Δ[A005384(n+1)])]`
-/

namespace A152843.P9155879459607554065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152843.P9155879459607554065

namespace A152843

/-- `∑[A142150(Δ[A005384(n+1)])]` -/
def P9155879459607554065.Spec : Prop :=
  ∀ n, P9155879459607554065.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P10274250226985110447

`∑[A014682(Δ[A005384(n+1)])]-2`
-/

namespace A152843.P10274250226985110447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A152843.P10274250226985110447

namespace A152843

/-- `∑[A014682(Δ[A005384(n+1)])]-2` -/
def P10274250226985110447.Spec : Prop :=
  ∀ n, P10274250226985110447.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P6243398878354602698

`∑[A160413(Δ[A005384(n+1)])]-2`
-/

namespace A152843.P6243398878354602698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160413 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A152843.P6243398878354602698

namespace A152843

/-- `∑[A160413(Δ[A005384(n+1)])]-2` -/
def P6243398878354602698.Spec : Prop :=
  ∀ n, P6243398878354602698.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P17454884495737439185

`∑[A004526(A005384(n+2)-A005384(n+1))]`
-/

namespace A152843.P17454884495737439185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005384 (n + 2) - A005384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152843.P17454884495737439185

namespace A152843

/-- `∑[A004526(A005384(n+2)-A005384(n+1))]` -/
def P17454884495737439185.Spec : Prop :=
  ∀ n, P17454884495737439185.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P4216943135868294269

`A176045(n+2)/2-2`
-/

namespace A152843.P4216943135868294269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176045 (n + 2) : ℚ) / 2 - 2

end

end A152843.P4216943135868294269

namespace A152843

/-- `A176045(n+2)/2-2` -/
def P4216943135868294269.Spec : Prop :=
  ∀ n, P4216943135868294269.a n = (A152843 (n + 1) : ℚ)

end A152843

/-! ## A152843.P6693065306485033997

`A111333(A072192(n+2))-2`
-/

namespace A152843.P6693065306485033997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A072192 (n + 2)).toNat - 2

end

end A152843.P6693065306485033997

namespace A152843

/-- `A111333(A072192(n+2))-2` -/
def P6693065306485033997.Spec : Prop :=
  ∀ n, P6693065306485033997.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P12709635847069461877

`∩[A067076(n+1), A089986(n+1)]`
-/

namespace A152843.P12709635847069461877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A152843.P12709635847069461877

namespace A152843

/-- `∩[A067076(n+1), A089986(n+1)]` -/
def P12709635847069461877.Spec : Prop :=
  ∀ n, (P12709635847069461877.a n : ℤ) = A152843 (n + 1)

end A152843

/-! ## A152843.P6139205569645411729

`∩[A005099(n+1), A006254(n+1)]-2`
-/

namespace A152843.P6139205569645411729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A152843.P6139205569645411729

namespace A152843

/-- `∩[A005099(n+1), A006254(n+1)]-2` -/
def P6139205569645411729.Spec : Prop :=
  ∀ n, P6139205569645411729.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P13465356631608464124

`lt[A305985(2*n+3), 3]`
-/

namespace A152843.P13465356631608464124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305985 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152843.P13465356631608464124

namespace A152843

/-- `lt[A305985(2*n+3), 3]` -/
def P13465356631608464124.Spec : Prop :=
  ∀ n, (P13465356631608464124.a n : ℤ) = A152843 (n + 1)

end A152843

/-! ## A152843.P16387142591969495243

`eq[2, A305978(2*n+1)]-1`
-/

namespace A152843.P16387142591969495243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305978 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A152843.P16387142591969495243

namespace A152843

/-- `eq[2, A305978(2*n+1)]-1` -/
def P16387142591969495243.Spec : Prop :=
  ∀ n, P16387142591969495243.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P4412758251906518289

`A024698(A266400(n+2))-2`
-/

namespace A152843.P4412758251906518289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024698 (A266400 (n + 2)).toNat - 2

end

end A152843.P4412758251906518289

namespace A152843

/-- `A024698(A266400(n+2))-2` -/
def P4412758251906518289.Spec : Prop :=
  ∀ n, P4412758251906518289.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P17215174801293367350

`A000203(A005385(n+2))/4-2`
-/

namespace A152843.P17215174801293367350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A005385 (n + 2)).toNat : ℚ) / 4 - 2

end

end A152843.P17215174801293367350

namespace A152843

/-- `A000203(A005385(n+2))/4-2` -/
def P17215174801293367350.Spec : Prop :=
  ∀ n, P17215174801293367350.a n = (A152843 (n + 1) : ℚ)

end A152843

/-! ## A152843.P7930478485270996653

`eq[A001222(2*n+1), A101264(2*n+1)]-1`
-/

namespace A152843.P7930478485270996653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A152843.P7930478485270996653

namespace A152843

/-- `eq[A001222(2*n+1), A101264(2*n+1)]-1` -/
def P7930478485270996653.Spec : Prop :=
  ∀ n, P7930478485270996653.a n = A152843 (n + 1)

end A152843

/-! ## A152843.P9638902017438340279

`eq[2, A001222(A000010(2*(n+3)+2*n+1))]`
-/

namespace A152843.P9638902017438340279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (2 * (n + 3) + (2 * n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152843.P9638902017438340279

namespace A152843

/-- `eq[2, A001222(A000010(2*(n+3)+2*n+1))]` -/
def P9638902017438340279.Spec : Prop :=
  ∀ n, (P9638902017438340279.a n : ℤ) = A152843 (n + 1)

end A152843

/-! ## A152843.P11502046281607190756

`lt[1, A067849(n+1)]`
-/

namespace A152843.P11502046281607190756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067849 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152843.P11502046281607190756

namespace A152843

/-- `lt[1, A067849(n+1)]` -/
def P11502046281607190756.Spec : Prop :=
  ∀ n, (P11502046281607190756.a n : ℤ) = A152843 (n + 1)

end A152843

/-!
# A152844: Triangle read by rows, A007318 rows repeated six times .

The programs for A152844, there is no canonical definition to state claims against.
-/

/-! ## A152844.P6433272633793006737

`A152851(A396184(n))`
-/

namespace A152844.P6433272633793006737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 (A396184 n).toNat

end

end A152844.P6433272633793006737

/-! ## A152844.P3179927459585993694

`A152845(lt[A368517(n+1), A057114(n+5)])`
-/

namespace A152844.P3179927459585993694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152845 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152844.P3179927459585993694

/-! ## A152844.P17679291279397970305

`A152845(lt[A080575(n+2), A117192(n+2)])`
-/

namespace A152844.P17679291279397970305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080575 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117192 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152845 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152844.P17679291279397970305

/-! ## A152844.P5593708132550794364

`A055642(A115575(n+1)^A151898(n+1))`
-/

namespace A152844.P5593708132550794364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A115575 (n + 1) : ℚ) ^ (A151898 (n + 1) : ℤ))).toNat

end

end A152844.P5593708132550794364

/-! ## A152844.P5943932864464230764

`A055642(A115576(n+1)^A151898(n+1))`
-/

namespace A152844.P5943932864464230764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A115576 (n + 1) : ℚ) ^ (A151898 (n + 1) : ℤ))).toNat

end

end A152844.P5943932864464230764

/-!
# A152845: Triangle read by rows, A007318 rows repeated seven times .

The programs for A152845, there is no canonical definition to state claims against.
-/

/-! ## A152845.P8893134221361464037

`A152847(A089585(n+1))`
-/

namespace A152845.P8893134221361464037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 (A089585 (n + 1)).toNat

end

end A152845.P8893134221361464037

/-! ## A152845.P13352603900846621772

`A152848(lt[A001606(n+1), A035342(n+1)])`
-/

namespace A152845.P13352603900846621772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152848 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152845.P13352603900846621772

/-! ## A152845.P16460426448809029075

`Δ[lt[A090192(n), A062925(n+1)]]`
-/

namespace A152845.P16460426448809029075
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062925 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152845.P16460426448809029075

/-! ## A152845.P10785215193047367402

`Δ[lt[A047758(n+1), A212556(n+1)]]`
-/

namespace A152845.P10785215193047367402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047758 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212556 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152845.P10785215193047367402

/-!
# A152846: Triangle read by rows, A007318 rows repeated eight times .

The programs for A152846, there is no canonical definition to state claims against.
-/

/-! ## A152846.P10190840533428668186

`A152847(A127161(n+2))`
-/

namespace A152846.P10190840533428668186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152847 (A127161 (n + 2)).toNat

end

end A152846.P10190840533428668186

/-! ## A152846.P7563012022220947243

`Δ[lt[A147654(n+1), A335888(n+1)]]`
-/

namespace A152846.P7563012022220947243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147654 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335888 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152846.P7563012022220947243

/-! ## A152846.P14651197900680802252

`A000142(A152847(n+3)%A162426(n))`
-/

namespace A152846.P14651197900680802252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (Int.tmod (A152847 (n + 3)) (A162426 n)).toNat

end

end A152846.P14651197900680802252

/-!
# A152847: Triangle read by rows, A007318 rows repeated nine times.

The programs for A152847, there is no canonical definition to state claims against.
-/

/-! ## A152847.P5809402074592082857

`ceil(A343347(3*(n+1))/A140384(n+1))`
-/

namespace A152847.P5809402074592082857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A343347 (3 * (n + 1)) : ℚ) / (A140384 (n + 1) : ℚ)⌉

end

end A152847.P5809402074592082857

/-! ## A152847.P5059276725266947355

`A167966(A078689(n))`
-/

namespace A152847.P5059276725266947355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167966 (A078689 n).toNat

end

end A152847.P5059276725266947355

/-! ## A152847.P2929372343393871915

`2-A016345(A011655(n)+1+n)²`
-/

namespace A152847.P2929372343393871915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A016345 (A011655 n + 1 + (n : ℤ)).toNat ^ 2

end

end A152847.P2929372343393871915

/-! ## A152847.P2019077727116040275

`ceil(A301720(n+2)/A108373(n+1))`
-/

namespace A152847.P2019077727116040275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A301720 (n + 2) : ℚ) / (A108373 (n + 1) : ℚ)⌉

end

end A152847.P2019077727116040275

/-!
# A152848: Triangle read by rows, A007318 rows repeated ten times .

The programs for A152848, there is no canonical definition to state claims against.
-/

/-! ## A152848.P5111492324994540731

`A152849(lt[A260590(n+1), A317587(n+3)])`
-/

namespace A152848.P5111492324994540731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317587 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152849 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152848.P5111492324994540731

/-! ## A152848.P4911548612768414668

`n%3*∑[A011646(n)]+1`
-/

namespace A152848.P4911548612768414668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 3 : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A152848.P4911548612768414668

/-! ## A152848.P11145282631442314873

`A011655(n)+∑[A011646(n)]`
-/

namespace A152848.P11145282631442314873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011646 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152848.P11145282631442314873

/-! ## A152848.P7821819783309245474

`gcd(Δ[A032513(n)], A011646(n))`
-/

namespace A152848.P7821819783309245474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A011646 n)

end

end A152848.P7821819783309245474

/-! ## A152848.P8511307773705904054

`A152849(A107834(n+1)+2)`
-/

namespace A152848.P8511307773705904054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152849 (A107834 (n + 1) + 2).toNat

end

end A152848.P8511307773705904054

/-! ## A152848.P5291648741870292238

`A001844(n)%(3-A011646(n))`
-/

namespace A152848.P5291648741870292238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) (3 - A011646 n)

end

end A152848.P5291648741870292238

/-! ## A152848.P17111051657823920913

`gcd(A000079(A048142(n+2)), A100063(2*n+1))`
-/

namespace A152848.P17111051657823920913
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 (A048142 (n + 2)).toNat) (A100063 (2 * n + 1))

end

end A152848.P17111051657823920913

/-!
# A152849: Triangle read by rows, A007318 rows repeated eleven times .

The programs for A152849, there is no canonical definition to state claims against.
-/

/-! ## A152849.P7849385147236771780

`gcd(floor(n^(1/5)), ∑[A352873(n+1)])`
-/

namespace A152849.P7849385147236771780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352873 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℝ) ^ ((1 : ℚ) / 5 : ℝ)⌋ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152849.P7849385147236771780

/-! ## A152849.P5796099777220951040

`A152851(A293754(n+1)+1)`
-/

namespace A152849.P5796099777220951040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 (A293754 (n + 1) + 1).toNat

end

end A152849.P5796099777220951040

/-! ## A152849.P12939321412536860409

`A055642(A362813(n+1)-n)`
-/

namespace A152849.P12939321412536860409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A362813 (n + 1) - (n : ℤ)).toNat

end

end A152849.P12939321412536860409

/-! ## A152849.P10266579935763070983

`A345182(A152851(n+3)*A289353(n+3))`
-/

namespace A152849.P10266579935763070983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345182 (A152851 (n + 3) * A289353 (n + 3)).toNat

end

end A152849.P10266579935763070983

/-! ## A152849.P11211849823876701476

`A152851(A293754(n+2))`
-/

namespace A152849.P11211849823876701476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152851 (A293754 (n + 2)).toNat

end

end A152849.P11211849823876701476

/-!
# A152850: First differences of A152737.

The programs for A152850, the canonical program `A152850.P6492052329027177028` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152850 has offset 0).

The definition of A152850 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152850.P6492052329027177028

`Δ[floor(n^ϕ)]`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152850

/-- `Δ[floor(n^ϕ)]` -/
def P6492052329027177028.Spec : Prop :=
  ∀ n, P6492052329027177028.a n = A152850 n

theorem P6492052329027177028.correct : P6492052329027177028.Spec := by
  intro n
  simp only [A152850]

end A152850

/-! ## A152850.P8236534607119052783

`xor(Δ[ceil(n^ϕ)], char[1])`
-/

namespace A152850.P8236534607119052783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ Real.goldenRatio⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A152850.P8236534607119052783

namespace A152850

/-- `xor(Δ[ceil(n^ϕ)], char[1])` -/
def P8236534607119052783.Spec : Prop :=
  ∀ n, P8236534607119052783.a n = A152850 n

end A152850

/-! ## A152850.P15736430080440713228

`or(n, -1)*Δ[ceil(-n^ϕ)]`
-/

namespace A152850.P15736430080440713228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-1) * (f1 (n + 1) - f1 n)

end

end A152850.P15736430080440713228

namespace A152850

/-- `or(n, -1)*Δ[ceil(-n^ϕ)]` -/
def P15736430080440713228.Spec : Prop :=
  ∀ n, P15736430080440713228.a n = A152850 n

end A152850

/-! ## A152850.P3128466959077689394

`lcm((-1)^n, Δ[ceil(-n^ϕ)])`
-/

namespace A152850.P3128466959077689394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (f1 (n + 1) - f1 n)

end

end A152850.P3128466959077689394

namespace A152850

/-- `lcm((-1)^n, Δ[ceil(-n^ϕ)])` -/
def P3128466959077689394.Spec : Prop :=
  ∀ n, (P3128466959077689394.a n : ℤ) = A152850 n

end A152850

/-! ## A152850.P16198000441830802326

`Δ[ceil(-n^ϕ)]/or(n, -1)`
-/

namespace A152850.P16198000441830802326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈-((n : ℝ) ^ Real.goldenRatio)⌉

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (Int.lor (n : ℤ) (-1) : ℚ)

end

end A152850.P16198000441830802326

namespace A152850

/-- `Δ[ceil(-n^ϕ)]/or(n, -1)` -/
def P16198000441830802326.Spec : Prop :=
  ∀ n, P16198000441830802326.a n = (A152850 n : ℚ)

end A152850

/-! ## A152850.P10794098310293886332

`Δ[ceil(n^ϕ)]-char[A014963(10*(n+1))]`
-/

namespace A152850.P10794098310293886332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ Real.goldenRatio⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A152850.P10794098310293886332

namespace A152850

/-- `Δ[ceil(n^ϕ)]-char[A014963(10*(n+1))]` -/
def P10794098310293886332.Spec : Prop :=
  ∀ n, P10794098310293886332.a n = A152850 n

end A152850

/-! ## A152850.P8928164528611593029

`A152737(n+1)-A152737(n)`
-/

namespace A152850.P8928164528611593029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152737 (n + 1) - A152737 n

end

end A152850.P8928164528611593029

namespace A152850

/-- `A152737(n+1)-A152737(n)` -/
def P8928164528611593029.Spec : Prop :=
  ∀ n, P8928164528611593029.a n = A152850 n

end A152850

/-!
# A152851: Triangle read by rows, A007318 rows repeated twelve times .

The programs for A152851, there is no canonical definition to state claims against.
-/

/-! ## A152851.P10405398740233136266

`A230404(gcd(A230431(n), A230432(3*n+4)))`
-/

namespace A152851.P10405398740233136266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230404 (Int.gcd (A230431 n) (A230432 (3 * n + 4)))

end

end A152851.P10405398740233136266

/-! ## A152851.P547911008171879034

`A052333(n+1)%A055640(A296713(n+1))`
-/

namespace A152851.P547911008171879034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052333 (n + 1)) (A055640 (A296713 (n + 1)).toNat)

end

end A152851.P547911008171879034

/-! ## A152851.P17869101090321114794

`Δ[A004773(n+1)]^A152489(A004773(n)+1)`
-/

namespace A152851.P17869101090321114794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A152489 (A004773 n + 1).toNat : ℤ)

end

end A152851.P17869101090321114794

/-! ## A152851.P6686498967385718698

`A354614(A056530(n+1)%A381432(n+1))`
-/

namespace A152851.P6686498967385718698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354614 (Int.tmod (A056530 (n + 1)) (A381432 (n + 1))).toNat

end

end A152851.P6686498967385718698

/-! ## A152851.P2486590719629758942

`gcd(A092593(n+1), A131556(n))`
-/

namespace A152851.P2486590719629758942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A092593 (n + 1)) (A131556 n)

end

end A152851.P2486590719629758942

/-! ## A152851.P8421964077867716653

`A354902(2*n+1)%A055642(A354904(n+5))`
-/

namespace A152851.P8421964077867716653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A354902 (2 * n + 1)) (A055642 (A354904 (n + 5)).toNat)

end

end A152851.P8421964077867716653

/-! ## A152851.P16839208351352073205

`Δ[lt[A059893(n+1), 57]]`
-/

namespace A152851.P16839208351352073205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  57

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A152851.P16839208351352073205

/-!
# A152854: Numbers n such that either 2n+3 is not prime or 4n+7 is not prime.

The programs for A152854, the canonical program `A152854.P5074765278471973526` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152854 has offset 1).

The definition of A152854 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152854.P1517008794911431083

`comp[A152843(n+1)]`
-/

namespace A152854.P1517008794911431083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A152854.P1517008794911431083

namespace A152854

/-- `comp[A152843(n+1)]` -/
def P1517008794911431083.Spec : Prop :=
  ∀ n, (P1517008794911431083.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P13626075132195290027

`comp[A124485(n+1)-2]`
-/

namespace A152854.P13626075132195290027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124485 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A152854.P13626075132195290027

namespace A152854

/-- `comp[A124485(n+1)-2]` -/
def P13626075132195290027.Spec : Prop :=
  ∀ n, (P13626075132195290027.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P16266694272068814620

`lt[2, A305985(2*n+3)]`
-/

namespace A152854.P16266694272068814620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305985 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152854.P16266694272068814620

namespace A152854

/-- `lt[2, A305985(2*n+3)]` -/
def P16266694272068814620.Spec : Prop :=
  ∀ n, (P16266694272068814620.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P11966105020187965650

`lt[2, A305978(2*n+1)]-1`
-/

namespace A152854.P11966105020187965650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305978 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A152854.P11966105020187965650

namespace A152854

/-- `lt[2, A305978(2*n+1)]-1` -/
def P11966105020187965650.Spec : Prop :=
  ∀ n, P11966105020187965650.a n = A152854 (n + 1)

end A152854

/-! ## A152854.P3313686941755885706

`lt[A339579(2*(n+1)), 2]-1`
-/

namespace A152854.P3313686941755885706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A152854.P3313686941755885706

namespace A152854

/-- `lt[A339579(2*(n+1)), 2]-1` -/
def P3313686941755885706.Spec : Prop :=
  ∀ n, P3313686941755885706.a n = A152854 (n + 1)

end A152854

/-! ## A152854.P5074765278471973526

`∪[A153086(n+1), A153238(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A152854

/-- `∪[A153086(n+1), A153238(n+1)]` -/
def P5074765278471973526.Spec : Prop :=
  ∀ n, (P5074765278471973526.a n : ℤ) = A152854 (n + 1)

theorem P5074765278471973526.correct : P5074765278471973526.Spec := by
  intro n
  simp only [A152854, Nat.add_sub_cancel]

end A152854

/-! ## A152854.P3667650153843783362

`eq[A010051(2*n+1), A339579(2*(n+1))]-1`
-/

namespace A152854.P3667650153843783362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - 1

end

end A152854.P3667650153843783362

namespace A152854

/-- `eq[A010051(2*n+1), A339579(2*(n+1))]-1` -/
def P3667650153843783362.Spec : Prop :=
  ∀ n, P3667650153843783362.a n = A152854 (n + 1)

end A152854

/-! ## A152854.P18270828089626021913

`lt[A067849(n+1), 2]`
-/

namespace A152854.P18270828089626021913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067849 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152854.P18270828089626021913

namespace A152854

/-- `lt[A067849(n+1), 2]` -/
def P18270828089626021913.Spec : Prop :=
  ∀ n, (P18270828089626021913.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P14871845827946829447

`lt[A006530(A274299(n)), n]-1`
-/

namespace A152854.P14871845827946829447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A274299 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A152854.P14871845827946829447

namespace A152854

/-- `lt[A006530(A274299(n)), n]-1` -/
def P14871845827946829447.Spec : Prop :=
  ∀ n, P14871845827946829447.a n = A152854 (n + 1)

end A152854

/-! ## A152854.P12900875428146614118

`lt[A006530(A294673(n)), n]-1`
-/

namespace A152854.P12900875428146614118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A294673 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A152854.P12900875428146614118

namespace A152854

/-- `lt[A006530(A294673(n)), n]-1` -/
def P12900875428146614118.Spec : Prop :=
  ∀ n, P12900875428146614118.a n = A152854 (n + 1)

end A152854

/-! ## A152854.P17245610077305985336

`lt[A063377(2*n+3), 2]`
-/

namespace A152854.P17245610077305985336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (2 * n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A152854.P17245610077305985336

namespace A152854

/-- `lt[A063377(2*n+3), 2]` -/
def P17245610077305985336.Spec : Prop :=
  ∀ n, (P17245610077305985336.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P17627348376682382720

`lt[A101264(n+1), A245203(n+1)+1]`
-/

namespace A152854.P17627348376682382720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152854.P17627348376682382720

namespace A152854

/-- `lt[A101264(n+1), A245203(n+1)+1]` -/
def P17627348376682382720.Spec : Prop :=
  ∀ n, (P17627348376682382720.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P16925328601136186129

`lt[Δ[A090368(A090368(n+1)+1)], 2*n]`
-/

namespace A152854.P16925328601136186129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A090368 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A152854.P16925328601136186129

namespace A152854

/-- `lt[Δ[A090368(A090368(n+1)+1)], 2*n]` -/
def P16925328601136186129.Spec : Prop :=
  ∀ n, (P16925328601136186129.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P975523326929779009

`lt[A090368(A090368(n+2)+1), A090368(n+1)+n]`
-/

namespace A152854.P975523326929779009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A090368 (n + 2) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (n + 1) + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152854.P975523326929779009

namespace A152854

/-- `lt[A090368(A090368(n+2)+1), A090368(n+1)+n]` -/
def P975523326929779009.Spec : Prop :=
  ∀ n, (P975523326929779009.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P14522191337454719065

`eq[0, A156660(2*n+3)]`
-/

namespace A152854.P14522191337454719065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156660 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152854.P14522191337454719065

namespace A152854

/-- `eq[0, A156660(2*n+3)]` -/
def P14522191337454719065.Spec : Prop :=
  ∀ n, (P14522191337454719065.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P13204749564711440615

`eq[1, A167520(Δ[A156874(2*(n+1))]+1)]`
-/

namespace A152854.P13204749564711440615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156874 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167520 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A152854.P13204749564711440615

namespace A152854

/-- `eq[1, A167520(Δ[A156874(2*(n+1))]+1)]` -/
def P13204749564711440615.Spec : Prop :=
  ∀ n, (P13204749564711440615.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P12712395939620860435

`lt[A014963(A003570(2*n+3)), A003605(n)]`
-/

namespace A152854.P12712395939620860435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003570 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003605 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152854.P12712395939620860435

namespace A152854

/-- `lt[A014963(A003570(2*n+3)), A003605(n)]` -/
def P12712395939620860435.Spec : Prop :=
  ∀ n, (P12712395939620860435.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P7689448449250762130

`lt[A014963(A003570(2*n+3)), A003601(n+1)]`
-/

namespace A152854.P7689448449250762130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003570 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152854.P7689448449250762130

namespace A152854

/-- `lt[A014963(A003570(2*n+3)), A003601(n+1)]` -/
def P7689448449250762130.Spec : Prop :=
  ∀ n, (P7689448449250762130.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P15183253092816256297

`lt[A014963(A003570(2*n+3)), A003619(n+1)]`
-/

namespace A152854.P15183253092816256297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A003570 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A152854.P15183253092816256297

namespace A152854

/-- `lt[A014963(A003570(2*n+3)), A003619(n+1)]` -/
def P15183253092816256297.Spec : Prop :=
  ∀ n, (P15183253092816256297.a n : ℤ) = A152854 (n + 1)

end A152854

/-! ## A152854.P13010747437856227626

`A233583(eq[A339579(2*(n+1))², A339579(2*(n+1))])`
-/

namespace A152854.P13010747437856227626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * (n + 1)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A152854.P13010747437856227626

namespace A152854

/-- `A233583(eq[A339579(2*(n+1))², A339579(2*(n+1))])` -/
def P13010747437856227626.Spec : Prop :=
  ∀ n, P13010747437856227626.a n = A152854 (n + 1)

end A152854

/-!
# A152855: Period 5: Repeat [1, 2, 0, 2, 0].

The programs for A152855, the canonical program `A152855.P1581949868025042566` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152855 has offset 0).

The definition of A152855 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152855.P1581949868025042566

`∑[gcd(5, n+2)]%3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152855

/-- `∑[gcd(5, n+2)]%3` -/
def P1581949868025042566.Spec : Prop :=
  ∀ n, (P1581949868025042566.a n : ℤ) = A152855 n

theorem P1581949868025042566.correct : P1581949868025042566.Spec := by
  intro n
  simp only [A152855]

end A152855

/-!
# A152856: Periodic sequence [4,0,4,3,4] of period 5.

The programs for A152856, the canonical program `A152856.P997458315858753793` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152856 has offset 0).

The definition of A152856 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152856.P997458315858753793

`(∑[n²]+4)%5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152856

/-- `(∑[n²]+4)%5` -/
def P997458315858753793.Spec : Prop :=
  ∀ n, (P997458315858753793.a n : ℤ) = A152856 n

theorem P997458315858753793.correct : P997458315858753793.Spec := by
  intro n
  simp only [A152856]

end A152856

/-!
# A152857: Period 5: repeat [0, 2, 3, 0, 0].

The programs for A152857, the canonical program `A152857.P10061646784903816633` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152857 has offset 0).

The definition of A152857 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152857.P10061646784903816633

`∑[∑[2*n]]%5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152857

/-- `∑[∑[2*n]]%5` -/
def P10061646784903816633.Spec : Prop :=
  ∀ n, (P10061646784903816633.a n : ℤ) = A152857 n

theorem P10061646784903816633.correct : P10061646784903816633.Spec := by
  intro n
  simp only [A152857]

end A152857

/-!
# A152858: Decimal expansion of log_22 (2).

The programs for A152858, there is no canonical definition to state claims against.
-/

/-! ## A152858.P5624950876621298434

`9-A154193(n)`
-/

namespace A152858.P5624950876621298434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154193 n

end

end A152858.P5624950876621298434

/-!
# A152863: Numbers for which A000695(p_n) are primes, where p_n is the n-th prime.

The programs for A152863, there is no canonical definition to state claims against.
-/

/-! ## A152863.P16129453595541420856

`lt[1, A064892(n+1)]+1`
-/

namespace A152863.P16129453595541420856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064892 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A152863.P16129453595541420856

/-! ## A152863.P2367639730409478423

`A000720(A152079(n+1))`
-/

namespace A152863.P2367639730409478423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A152079 (n + 1)).toNat

end

end A152863.P2367639730409478423

/-! ## A152863.P8625254481300621569

`lt[1, A064892(A028310(n))]`
-/

namespace A152863.P8625254481300621569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064892 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A152863.P8625254481300621569

/-! ## A152863.P1039923274600234719

`A003963(p?[A152079(n+1)])`
-/

namespace A152863.P1039923274600234719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152863.P1039923274600234719

/-! ## A152863.P3325820539628450355

`A026233(p?[A152079(n+1)])`
-/

namespace A152863.P3325820539628450355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152863.P3325820539628450355

/-! ## A152863.P13750493421486335316

`A049084(p?[A152079(n+1)])`
-/

namespace A152863.P13750493421486335316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152863.P13750493421486335316

/-! ## A152863.P3573084480333609255

`A055396(p?[A152079(n+1)])`
-/

namespace A152863.P3573084480333609255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152863.P3573084480333609255

/-! ## A152863.P10867196013736372469

`A056239(p?[A152079(n+1)])`
-/

namespace A152863.P10867196013736372469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152863.P10867196013736372469

/-! ## A152863.P9350492036614429200

`A061395(p?[A152079(n+1)])`
-/

namespace A152863.P9350492036614429200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A152863.P9350492036614429200

/-! ## A152863.P18366018845444327888

`A230980(A152079(n+1)+1)`
-/

namespace A152863.P18366018845444327888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A152079 (n + 1) + 1).toNat

end

end A152863.P18366018845444327888

/-!
# A152864: Deficiency of n, plus the number of proper divisors of n: a(n) = 2n - sigma(n) + d(n) - 1.

The programs for A152864, the canonical program `A152864.P17433297577997831622` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152864 has offset 1).

The definition of A152864 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A032741, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A152864.P17433297577997831622

`A033879(n+1)+A032741(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152864

/-- `A033879(n+1)+A032741(n+1)` -/
def P17433297577997831622.Spec : Prop :=
  ∀ n, P17433297577997831622.a n = A152864 (n + 1)

theorem P17433297577997831622.correct : P17433297577997831622.Spec := by
  intro n
  simp only [A152864, Nat.add_sub_cancel]

end A152864

/-! ## A152864.P4656324219577515937

`A005843(n+1)-A000203(n+1)+A000005(n+1)-1`
-/

namespace A152864.P4656324219577515937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A000203 (n + 1) + A000005 (n + 1) - 1

end

end A152864.P4656324219577515937

namespace A152864

/-- `A005843(n+1)-A000203(n+1)+A000005(n+1)-1` -/
def P4656324219577515937.Spec : Prop :=
  ∀ n, P4656324219577515937.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P4790180972322556330

`∑{d}[n+1, 1-#]+Δ[n²]`
-/

namespace A152864.P4790180972322556330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A152864.P4790180972322556330

namespace A152864

/-- `∑{d}[n+1, 1-#]+Δ[n²]` -/
def P4790180972322556330.Spec : Prop :=
  ∀ n, P4790180972322556330.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P6704155937745510221

`Δ[n^2]-∑{d}[n+1, #-1]`
-/

namespace A152864.P6704155937745510221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1)

end

end A152864.P6704155937745510221

namespace A152864

/-- `Δ[n^2]-∑{d}[n+1, #-1]` -/
def P6704155937745510221.Spec : Prop :=
  ∀ n, P6704155937745510221.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P6564927305987322129

`2*n+∑{d}[n+1, 1-#]+1`
-/

namespace A152864.P6564927305987322129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + 1)

end

end A152864.P6564927305987322129

namespace A152864

/-- `2*n+∑{d}[n+1, 1-#]+1` -/
def P6564927305987322129.Spec : Prop :=
  ∀ n, P6564927305987322129.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P13738217391906509329

`∑{d}[n+1, 1-#]+1+n+n`
-/

namespace A152864.P13738217391906509329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (1 - (d : ℤ)) + 1 + (n : ℤ) + (n : ℤ)

end

end A152864.P13738217391906509329

namespace A152864

/-- `∑{d}[n+1, 1-#]+1+n+n` -/
def P13738217391906509329.Spec : Prop :=
  ∀ n, P13738217391906509329.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P7234741730746060726

`1-A152770(n+1)+n`
-/

namespace A152864.P7234741730746060726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A152770 (n + 1) + (n : ℤ)

end

end A152864.P7234741730746060726

namespace A152864

/-- `1-A152770(n+1)+n` -/
def P7234741730746060726.Spec : Prop :=
  ∀ n, P7234741730746060726.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P10122300797469866898

`Δ[n²]-A065608(n+1)`
-/

namespace A152864.P10122300797469866898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A065608 (n + 1)

end

end A152864.P10122300797469866898

namespace A152864

/-- `Δ[n²]-A065608(n+1)` -/
def P10122300797469866898.Spec : Prop :=
  ∀ n, P10122300797469866898.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P8835098096754930669

`2*(n+1)-A158901(n+1)`
-/

namespace A152864.P8835098096754930669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A158901 (n + 1)

end

end A152864.P8835098096754930669

namespace A152864

/-- `2*(n+1)-A158901(n+1)` -/
def P8835098096754930669.Spec : Prop :=
  ∀ n, P8835098096754930669.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P1628557209941342916

`A016789(n)-A137319(n+1)`
-/

namespace A152864.P1628557209941342916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A137319 (n + 1)

end

end A152864.P1628557209941342916

namespace A152864

/-- `A016789(n)-A137319(n+1)` -/
def P1628557209941342916.Spec : Prop :=
  ∀ n, P1628557209941342916.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P11485286190101162814

`A344622(n+1)-A161680(n)`
-/

namespace A152864.P11485286190101162814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344622 (n + 1) - A161680 n

end

end A152864.P11485286190101162814

namespace A152864

/-- `A344622(n+1)-A161680(n)` -/
def P11485286190101162814.Spec : Prop :=
  ∀ n, P11485286190101162814.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P6671919343531019532

`Δ[A006218(n)]-A237588(n+1)`
-/

namespace A152864.P6671919343531019532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A237588 (n + 1)

end

end A152864.P6671919343531019532

namespace A152864

/-- `Δ[A006218(n)]-A237588(n+1)` -/
def P6671919343531019532.Spec : Prop :=
  ∀ n, P6671919343531019532.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P5671625302513037712

`A235796(n+1)+A000005(n+1)`
-/

namespace A152864.P5671625302513037712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + A000005 (n + 1)

end

end A152864.P5671625302513037712

namespace A152864

/-- `A235796(n+1)+A000005(n+1)` -/
def P5671625302513037712.Spec : Prop :=
  ∀ n, P5671625302513037712.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P18118641460212561077

`A033885(n+1)-A062968(n+1)`
-/

namespace A152864.P18118641460212561077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (n + 1) - A062968 (n + 1)

end

end A152864.P18118641460212561077

namespace A152864

/-- `A033885(n+1)-A062968(n+1)` -/
def P18118641460212561077.Spec : Prop :=
  ∀ n, P18118641460212561077.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P18159464204472231531

`A073757(n+1)-A051709(n+1)`
-/

namespace A152864.P18159464204472231531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A051709 (n + 1)

end

end A152864.P18159464204472231531

namespace A152864

/-- `A073757(n+1)-A051709(n+1)` -/
def P18159464204472231531.Spec : Prop :=
  ∀ n, P18159464204472231531.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P5519188309547801111

`A158907(n+1)-A001065(n+1)`
-/

namespace A152864.P5519188309547801111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158907 (n + 1) - A001065 (n + 1)

end

end A152864.P5519188309547801111

namespace A152864

/-- `A158907(n+1)-A001065(n+1)` -/
def P5519188309547801111.Spec : Prop :=
  ∀ n, P5519188309547801111.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P17622751412558733967

`A134871(n+1)-A048050(n+1)`
-/

namespace A152864.P17622751412558733967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (n + 1) - A048050 (n + 1)

end

end A152864.P17622751412558733967

namespace A152864

/-- `A134871(n+1)-A048050(n+1)` -/
def P17622751412558733967.Spec : Prop :=
  ∀ n, P17622751412558733967.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P17838426802840838423

`A039649(n+1)-A153011(n+1)`
-/

namespace A152864.P17838426802840838423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A153011 (n + 1)

end

end A152864.P17838426802840838423

namespace A152864

/-- `A039649(n+1)-A153011(n+1)` -/
def P17838426802840838423.Spec : Prop :=
  ∀ n, P17838426802840838423.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P14795473584780273805

`A140482(n+1)-A088580(n+1)`
-/

namespace A152864.P14795473584780273805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140482 (n + 1) - A088580 (n + 1)

end

end A152864.P14795473584780273805

namespace A152864

/-- `A140482(n+1)-A088580(n+1)` -/
def P14795473584780273805.Spec : Prop :=
  ∀ n, P14795473584780273805.a n = A152864 (n + 1)

end A152864

/-! ## A152864.P16343160747859587518

`A000005(n+1)-A237588(n+1)`
-/

namespace A152864.P16343160747859587518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A237588 (n + 1)

end

end A152864.P16343160747859587518

namespace A152864

/-- `A000005(n+1)-A237588(n+1)` -/
def P16343160747859587518.Spec : Prop :=
  ∀ n, P16343160747859587518.a n = A152864 (n + 1)

end A152864

/-!
# A152865: Beginnings of maximal chains of primes with two members (one link).

The programs for A152865, there is no canonical definition to state claims against.
-/

/-! ## A152865.P8934990764878176810

`A152658(eq[1, A152735(n+1)]+1)`
-/

namespace A152865.P8934990764878176810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152865.P8934990764878176810

/-! ## A152865.P11849864472013820040

`p?[A152658(n+1)*A152735(n+1)]`
-/

namespace A152865.P11849864472013820040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152658 (n + 1) * A152735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152865.P11849864472013820040

/-! ## A152865.P2857864049525762990

`record[A152658(n+3)/A152735(n+3)]`
-/

namespace A152865.P2857864049525762990
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152658 (n + 3) : ℚ) / (A152735 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152865.P2857864049525762990

/-! ## A152865.P4028557182736226747

`p?[lcm(A152658(n+2), A152735(n+2))]`
-/

namespace A152865.P4028557182736226747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152658 (n + 2)) (A152735 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A152865.P4028557182736226747

/-!
# A152866: Beginnings of maximal chains of primes with three members (two links).

The programs for A152866, there is no canonical definition to state claims against.
-/

/-! ## A152866.P6357902353157227461

`A152658(eq[2, A152735(n+1)]+1)`
-/

namespace A152866.P6357902353157227461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152866.P6357902353157227461

/-! ## A152866.P4411486396835938187

`p?[(A152735(n+1)-1)*A152658(n+1)]`
-/

namespace A152866.P4411486396835938187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152735 (n + 1) - 1) * A152658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152866.P4411486396835938187

/-!
# A152867: Beginnings of maximal chains of primes with four members (three links).

The programs for A152867, there is no canonical definition to state claims against.
-/

/-! ## A152867.P3719996725013804226

`p?[(A152735(n+1)-2)*A152658(n+1)]`
-/

namespace A152867.P3719996725013804226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152735 (n + 1) - 2) * A152658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A152867.P3719996725013804226

/-!
# A152868: Beginnings of maximal chains of primes with five members (four links).

The programs for A152868, there is no canonical definition to state claims against.
-/

/-! ## A152868.P9114570360203093306

`A152658(eq[4, A152735(n+1)]+1)`
-/

namespace A152868.P9114570360203093306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152658 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A152868.P9114570360203093306

/-!
# A152870: Indices of primes in the Padovan sequence A000931.

The programs for A152870, there is no canonical definition to state claims against.
-/

/-! ## A152870.P13331403698893911728

`A112882(n+1)+5`
-/

namespace A152870.P13331403698893911728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112882 (n + 1) + 5

end

end A152870.P13331403698893911728

/-! ## A152870.P12613449768675183925

`A242963(A112882(n+1))`
-/

namespace A152870.P12613449768675183925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (A112882 (n + 1)).toNat

end

end A152870.P12613449768675183925

/-! ## A152870.P15353589584852815431

`eq[1, ∑{e}[a(n-2)+a(n-3), #]]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A152870.P15353589584852815431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n f3 =>
  f3 (n - 2) + f3 (n - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152870.P15353589584852815431

/-! ## A152870.P8930522823707856050

`eq[1, ∑{e}[A000931(n), #]]`
-/

namespace A152870.P8930522823707856050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152870.P8930522823707856050

/-! ## A152870.P4099284944159850256

`eq[1, ∑{e}[sqrt(A133037(n)), #]]`
-/

namespace A152870.P4099284944159850256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133037 n : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f3 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f3 n)).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152870.P4099284944159850256

/-!
# A152871: Irregular table with first row containing the single term 3; in the n-th row, n>=2, we list in increasing order those d=2^(n+1)-a, for each term a in all the preceding rows, such that d is prime.

The programs for A152871, there is no canonical definition to state claims against.
-/

/-! ## A152871.P1621523591518048497

`record[A381131(Δ[A277023(n)])]`
-/

namespace A152871.P1621523591518048497
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381131 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A152871.P1621523591518048497

/-! ## A152871.P17331030246313277854

`A001122(∑[A007737(n+1)!])`
-/

namespace A152871.P17331030246313277854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A007737 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152871.P17331030246313277854

/-! ## A152871.P564901061124039815

`A001122(∑[A249772(n+1)!])`
-/

namespace A152871.P564901061124039815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A249772 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152871.P564901061124039815

/-! ## A152871.P12400252617847069680

`eq[A224480(n+1), A259656(n+1)]`
-/

namespace A152871.P12400252617847069680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259656 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A152871.P12400252617847069680

/-!
# A152872: The length of the n-th row in A152871.

The programs for A152872, there is no canonical definition to state claims against.
-/

/-! ## A152872.P15986864936280991938

`A001222(A165417(n)+A100517(n))`
-/

namespace A152872.P15986864936280991938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A165417 n + A100517 n).toNat

end

end A152872.P15986864936280991938

/-! ## A152872.P5150557078596589395

`A111076(A294204(n)+A145550(n+1))`
-/

namespace A152872.P5150557078596589395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111076 (A294204 n + A145550 (n + 1)).toNat

end

end A152872.P5150557078596589395

/-! ## A152872.P5547297048601607421

`A001222(A066183(n+2)-A002420(n))`
-/

namespace A152872.P5547297048601607421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A066183 (n + 2) - A002420 n).toNat

end

end A152872.P5547297048601607421

/-! ## A152872.P7453884758327994085

`A355735(A304103(n+1)*A374717(n+1))`
-/

namespace A152872.P7453884758327994085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355735 (A304103 (n + 1) * A374717 (n + 1)).toNat

end

end A152872.P7453884758327994085

/-!
# A152873: Number of permutations of {1,2,...,n} (n>=2) having a single run of even entries. For example, the permutation 513284679 has a single run of even entries: 2846.

The programs for A152873, there is no canonical definition to state claims against.
-/

/-! ## A152873.P1016946433999848311

`∏[a(n-2)+1]` with `a(0)=2, a(1)=3, a(2)=2`
-/

namespace A152873.P1016946433999848311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 2] fun n f1 =>
  f1 (n - 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152873.P1016946433999848311

/-! ## A152873.P1645459620894319226

`∏[3-(a(n-1)-n)]` with `a(0)=2, a(1)=3`
-/

namespace A152873.P1645459620894319226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  3 - (f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152873.P1645459620894319226

/-! ## A152873.P7841075853190357523

`∏[ceil(abs((1-n)/2))+3^(n%2)]`
-/

namespace A152873.P7841075853190357523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉ + (3 ^ (n % 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152873.P7841075853190357523

/-! ## A152873.P11650793043538157120

`floor((n+5)/2)!*ceil((n+1)/2)!`
-/

namespace A152873.P11650793043538157120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ⌊(n + 5 : ℚ) / 2⌋.toNat * Nat.factorial ⌈(n + 1 : ℚ) / 2⌉.toNat

end

end A152873.P11650793043538157120

/-! ## A152873.P12478838334425190876

`a(n-1)*Δ[∑[n+2]-a(n-1)]` with `a(0)=2`
-/

namespace A152873.P12478838334425190876
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * (f1 (n + 1) - f1 n)

end

end A152873.P12478838334425190876

/-! ## A152873.P14934438541197083697

`(n+3-∑[1-a(n-1)])*a(n-1)` with `a(0)=2`
-/

namespace A152873.P14934438541197083697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((n + 3 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j) * a (n - 1)

end

end A152873.P14934438541197083697

/-! ## A152873.P5246568781345767634

`2*∏[A052938(n)]`
-/

namespace A152873.P5246568781345767634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152873.P5246568781345767634

/-! ## A152873.P17579663986612961985

`2*∏[A028242(n+3)]`
-/

namespace A152873.P17579663986612961985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152873.P17579663986612961985

/-! ## A152873.P2568544757775285224

`2*∏[A110657(2*n)+1]`
-/

namespace A152873.P2568544757775285224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A152873.P2568544757775285224

/-! ## A152873.P14689218118771905656

`a(n-1)*(A030451(n)+1)` with `a(0)=2`
-/

namespace A152873.P14689218118771905656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) * (A030451 n + 1)

end

end A152873.P14689218118771905656

/-!
# A152874: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} with k parity changes (n>=2; 1<=k <=n-1); the permutation 372185946 has 5 parity changes: 37-2-1-8-59-46.

The programs for A152874, there is no canonical definition to state claims against.
-/

/-! ## A152874.P13999541410049171703

`A055238(A062684(n+1)-A056951(n+1))`
-/

namespace A152874.P13999541410049171703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055238 (A062684 (n + 1) - A056951 (n + 1)).toNat

end

end A152874.P13999541410049171703

/-! ## A152874.P14287230837772921535

`and(A091999(A062647(n+1)), A192577(n+1))`
-/

namespace A152874.P14287230837772921535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091999 (A062647 (n + 1)).toNat) (A192577 (n + 1))

end

end A152874.P14287230837772921535

/-! ## A152874.P2097021353130597568

`A000005(A337340(3*n+4)+A105309(2*n))`
-/

namespace A152874.P2097021353130597568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A337340 (3 * n + 4) + A105309 (2 * n)).toNat

end

end A152874.P2097021353130597568

/-!
# A152875: Number of permutations of {1,2,...,n} with all odd entries preceding all even entries or all even entries preceding all odd entries.

The programs for A152875, the canonical program `A152875.P4128810341278289020` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152875 has offset 0).

The definition of A152875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152875.P4128810341278289020

`n*(n-1)*a(n-2)/4+a(n-1)/2` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152875

/-- `n*(n-1)*a(n-2)/4+a(n-1)/2` -/
def P4128810341278289020.Spec : Prop :=
  ∀ n, P4128810341278289020.a n = (A152875 n : ℚ)

end A152875

/-! ## A152875.P10660333324638965128

`∏[n-a(n-1)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A152875.P10660333324638965128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 2] fun n f1 =>
  (n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152875.P10660333324638965128

namespace A152875

/-- `∏[n-a(n-1)]` -/
def P10660333324638965128.Spec : Prop :=
  ∀ n, P10660333324638965128.a n = A152875 n

end A152875

/-! ## A152875.P14667378323419043587

`a(n-1)*ceil(n/2)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A152875.P14667378323419043587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 1) * ⌈(n : ℚ) / 2⌉

end

end A152875.P14667378323419043587

namespace A152875

/-- `a(n-1)*ceil(n/2)` -/
def P14667378323419043587.Spec : Prop :=
  ∀ n, P14667378323419043587.a n = A152875 n

end A152875

/-! ## A152875.P12024363453490565662

`floor(∑[n]/n)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A152875.P12024363453490565662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n : ℚ)⌋ * a (n - 1)

end

end A152875.P12024363453490565662

namespace A152875

/-- `floor(∑[n]/n)*a(n-1)` -/
def P12024363453490565662.Spec : Prop :=
  ∀ n, P12024363453490565662.a n = A152875 n

end A152875

/-! ## A152875.P3912241503727657174

`(n%2+n)*a(n-1)/2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A152875.P3912241503727657174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ((n % 2 + n : ℕ) : ℚ) * (a (n - 1) / 2)

end

end A152875.P3912241503727657174

namespace A152875

/-- `(n%2+n)*a(n-1)/2` -/
def P3912241503727657174.Spec : Prop :=
  ∀ n, P3912241503727657174.a n = (A152875 n : ℚ)

end A152875

/-! ## A152875.P8884359200284350478

`floor(floor((n+1)/2)*a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A152875.P8884359200284350478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌊(n + 1 : ℚ) / 2⌋ * a (n - 1)

end

end A152875.P8884359200284350478

namespace A152875

/-- `floor(floor((n+1)/2)*a(n-1))` -/
def P8884359200284350478.Spec : Prop :=
  ∀ n, P8884359200284350478.a n = A152875 n

end A152875

/-! ## A152875.P18055304663739582688

`(n-floor(n/2))*floor(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A152875.P18055304663739582688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ((n : ℤ) - ⌊(n : ℚ) / 2⌋) * a (n - 1)

end

end A152875.P18055304663739582688

namespace A152875

/-- `(n-floor(n/2))*floor(a(n-1))` -/
def P18055304663739582688.Spec : Prop :=
  ∀ n, P18055304663739582688.a n = A152875 n

end A152875

/-! ## A152875.P952473358200117772

`∏[∑[A266611(n)]]`
-/

namespace A152875.P952473358200117772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A152875.P952473358200117772

namespace A152875

/-- `∏[∑[A266611(n)]]` -/
def P952473358200117772.Spec : Prop :=
  ∀ n, P952473358200117772.a n = A152875 n

end A152875

/-! ## A152875.P963586979634999348

`∏[A263997(n+1)]/A263997(n+1)`
-/

namespace A152875.P963586979634999348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263997 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A263997 (n + 1) : ℚ)

end

end A152875.P963586979634999348

namespace A152875

/-- `∏[A263997(n+1)]/A263997(n+1)` -/
def P963586979634999348.Spec : Prop :=
  ∀ n, P963586979634999348.a n = (A152875 n : ℚ)

end A152875

/-! ## A152875.P16211909991895930312

`A010551(n+1)/A364849(n+2)*A010551(n)`
-/

namespace A152875.P16211909991895930312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010551 (n + 1) : ℚ) / (A364849 (n + 2) : ℚ) * (A010551 n : ℚ)

end

end A152875.P16211909991895930312

namespace A152875

/-- `A010551(n+1)/A364849(n+2)*A010551(n)` -/
def P16211909991895930312.Spec : Prop :=
  ∀ n, P16211909991895930312.a n = (A152875 n : ℚ)

end A152875

/-!
# A152876: Number of permutations of {1,2,...,n} having no consecutive triples of the form (odd, even, odd) or (even, odd, even).

The programs for A152876, there is no canonical definition to state claims against.
-/

/-! ## A152876.P12718716033790124101

`A152877(A022856(n+2))`
-/

namespace A152876.P12718716033790124101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152877 (A022856 (n + 2)).toNat

end

end A152876.P12718716033790124101

/-! ## A152876.P7808401518511152273

`A152877(A016028(n+1)-1)`
-/

namespace A152876.P7808401518511152273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152877 (A016028 (n + 1) - 1).toNat

end

end A152876.P7808401518511152273

/-! ## A152876.P16758511724264978798

`A152877(A000124(n)-A004275(n))`
-/

namespace A152876.P16758511724264978798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152877 (A000124 n - A004275 n).toNat

end

end A152876.P16758511724264978798

/-! ## A152876.P9831490431245654217

`A152877(A152947(n+1)-A289207(n))`
-/

namespace A152876.P9831490431245654217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152877 (A152947 (n + 1) - A289207 n).toNat

end

end A152876.P9831490431245654217

/-! ## A152876.P6258638114595160967

`A152877(A152947(n+2)-A004275(n))`
-/

namespace A152876.P6258638114595160967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152877 (A152947 (n + 2) - A004275 n).toNat

end

end A152876.P6258638114595160967

/-!
# A152879: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having k peaks of maximum height (1 <= k <= n).

The programs for A152879, there is no canonical definition to state claims against.
-/

/-! ## A152879.P14850281416037856822

`A085516(A098747(n+1))`
-/

namespace A152879.P14850281416037856822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A098747 (n + 1)).toNat

end

end A152879.P14850281416037856822

/-! ## A152879.P18363159656493993195

`A123731(A124496(n+1))`
-/

namespace A152879.P18363159656493993195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123731 (A124496 (n + 1)).toNat

end

end A152879.P18363159656493993195

/-! ## A152879.P13110183890632114410

`A343234(n)+A111660(A186023(n))`
-/

namespace A152879.P13110183890632114410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343234 n + A111660 (A186023 n).toNat

end

end A152879.P13110183890632114410

/-! ## A152879.P12237939420991785899

`A005185(A047848(n)^A069283(n))`
-/

namespace A152879.P12237939420991785899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (SequenceMachineLib.roundAway ((A047848 n : ℚ) ^ (A069283 n : ℤ))).toNat

end

end A152879.P12237939420991785899

/-! ## A152879.P11767606282203719101

`A005185(A047848(n)%A066688(n+5))`
-/

namespace A152879.P11767606282203719101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (Int.tmod (A047848 n) (A066688 (n + 5))).toNat

end

end A152879.P11767606282203719101

/-!
# A152880: Number of Dyck paths of semilength n having exactly one peak of maximum height.

The programs for A152880, there is no canonical definition to state claims against.
-/

/-! ## A152880.P7733551660425244066

`A152879(∑[n]+1)`
-/

namespace A152880.P7733551660425244066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152879 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A152880.P7733551660425244066

/-! ## A152880.P17924038270769816821

`A000108(C(2, n+2))*A152879(A000124(n))`
-/

namespace A152880.P17924038270769816821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A152879 (A000124 n).toNat

end

end A152880.P17924038270769816821

/-! ## A152880.P1665412208735776409

`A152879(A000124(n))+char[A046310(n+1)+1]`
-/

namespace A152880.P1665412208735776409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046310 (n + 1) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152879 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A152880.P1665412208735776409

/-! ## A152880.P8985768966050471404

`A227291(A096376(n))+A152879(A000124(n))`
-/

namespace A152880.P8985768966050471404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227291 (A096376 n).toNat + A152879 (A000124 n).toNat

end

end A152880.P8985768966050471404

/-! ## A152880.P8207983554346791505

`A007318(∑[n])*A152879(A000124(n))`
-/

namespace A152880.P8207983554346791505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A152879 (A000124 n).toNat

end

end A152880.P8207983554346791505

/-!
# A152881: Positions of those 1's that are followed by a 0, summed over all Fibonacci binary words of length n. A Fibonacci binary word is a binary word having no 00 subword.

The programs for A152881, the canonical program `A152881.P17251037129773782981` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152881 has offset 1).

The definition of A152881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152881.P8712305953896800567

`n/2*A001629(n+2)`
-/

namespace A152881.P8712305953896800567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A001629 (n + 2) : ℚ)

end

end A152881.P8712305953896800567

namespace A152881

/-- `n/2*A001629(n+2)` -/
def P8712305953896800567.Spec : Prop :=
  ∀ n, P8712305953896800567.a n = (A152881 (n + 1) : ℚ)

end A152881

/-! ## A152881.P7178268685627450129

`n/(n+2)*A067988(n)`
-/

namespace A152881.P7178268685627450129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 2 : ℚ) * (A067988 n : ℚ)

end

end A152881.P7178268685627450129

namespace A152881

/-- `n/(n+2)*A067988(n)` -/
def P7178268685627450129.Spec : Prop :=
  ∀ n, P7178268685627450129.a n = (A152881 (n + 1) : ℚ)

end A152881

/-! ## A152881.P15682969875469137079

`n/2*∑[A010049(n+1)]`
-/

namespace A152881.P15682969875469137079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010049 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A152881.P15682969875469137079

namespace A152881

/-- `n/2*∑[A010049(n+1)]` -/
def P15682969875469137079.Spec : Prop :=
  ∀ n, P15682969875469137079.a n = (A152881 (n + 1) : ℚ)

end A152881

/-! ## A152881.P17251037129773782981

`A067988(n)-A001629(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A152881

/-- `A067988(n)-A001629(n+2)` -/
def P17251037129773782981.Spec : Prop :=
  ∀ n, P17251037129773782981.a n = A152881 (n + 1)

theorem P17251037129773782981.correct : P17251037129773782981.Spec := by
  intro n
  simp only [A152881, Nat.add_sub_cancel]

end A152881

/-! ## A152881.P17245320312664564275

`A023610(n)+A067988(n)-A067331(n)`
-/

namespace A152881.P17245320312664564275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n + (A067988 n - A067331 n)

end

end A152881.P17245320312664564275

namespace A152881

/-- `A023610(n)+A067988(n)-A067331(n)` -/
def P17245320312664564275.Spec : Prop :=
  ∀ n, P17245320312664564275.a n = A152881 (n + 1)

end A152881

/-! ## A152881.P6866195152718380007

`n/2*A067418(∑[n])`
-/

namespace A152881.P6866195152718380007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A067418 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A152881.P6866195152718380007

namespace A152881

/-- `n/2*A067418(∑[n])` -/
def P6866195152718380007.Spec : Prop :=
  ∀ n, P6866195152718380007.a n = (A152881 (n + 1) : ℚ)

end A152881

/-! ## A152881.P8021355750615036146

`n/2*record[A067418(n)]`
-/

namespace A152881.P8021355750615036146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067418 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A152881.P8021355750615036146

namespace A152881

/-- `n/2*record[A067418(n)]` -/
def P8021355750615036146.Spec : Prop :=
  ∀ n, P8021355750615036146.a n = (A152881 (n + 1) : ℚ)

end A152881

/-! ## A152881.P8729920313386400107

`n/2*A067330(A000096(n))`
-/

namespace A152881.P8729920313386400107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A067330 (A000096 n).toNat : ℚ)

end

end A152881.P8729920313386400107

namespace A152881

/-- `n/2*A067330(A000096(n))` -/
def P8729920313386400107.Spec : Prop :=
  ∀ n, P8729920313386400107.a n = (A152881 (n + 1) : ℚ)

end A152881

/-! ## A152881.P15643573492101100128

`n/2*A036355(A034856(n+1))`
-/

namespace A152881.P15643573492101100128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A036355 (A034856 (n + 1)).toNat : ℚ)

end

end A152881.P15643573492101100128

namespace A152881

/-- `n/2*A036355(A034856(n+1))` -/
def P15643573492101100128.Spec : Prop :=
  ∀ n, P15643573492101100128.a n = (A152881 (n + 1) : ℚ)

end A152881

/-!
# A152883: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} in which k is an excedance (n >= 2, 1 <= k <= n-1). An excedance of a permutation p is a value j such that p(j) > j.

The programs for A152883, the canonical program `A152883.P12280392344549894985` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152883 has offset 2).

The definition of A152883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152883.P16431498143710397896

`(comp[∑[n]]-n)!-∑[round(sqrt(2*n))!]`
-/

namespace A152883.P16431498143710397896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat : ℤ) - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A152883.P16431498143710397896

namespace A152883

/-- `(comp[∑[n]]-n)!-∑[round(sqrt(2*n))!]` -/
def P16431498143710397896.Spec : Prop :=
  ∀ n, P16431498143710397896.a n = A152883 (n + 2)

end A152883

/-! ## A152883.P11655997774419174131

`(C(comp[∑[n]]-n, 2)-n)*∑[char[∑[n]]]!`
-/

namespace A152883.P11655997774419174131
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial (∑ j ∈ Finset.range (n + 1), f3 j) : ℤ)

end

end A152883.P11655997774419174131

namespace A152883

/-- `(C(comp[∑[n]]-n, 2)-n)*∑[char[∑[n]]]!` -/
def P11655997774419174131.Spec : Prop :=
  ∀ n, P11655997774419174131.a n = A152883 (n + 2)

end A152883

/-! ## A152883.P15268083575131621129

`(C(comp[∑[n]]-n, 2)-n)*∏[round(sqrt(2*n))*char[∑[n]]+1]`
-/

namespace A152883.P15268083575131621129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ)) * ((if ∃ j, f4 j = n then 1 else 0 : ℕ) : ℤ) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (∏ j ∈ Finset.range (n + 1), f3 j)

end

end A152883.P15268083575131621129

namespace A152883

/-- `(C(comp[∑[n]]-n, 2)-n)*∏[round(sqrt(2*n))*char[∑[n]]+1]` -/
def P15268083575131621129.Spec : Prop :=
  ∀ n, P15268083575131621129.a n = A152883 (n + 2)

end A152883

/-! ## A152883.P10107526830923382785

`∑[round(sqrt(2*n))!]*ratio[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]`
-/

namespace A152883.P10107526830923382785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f6 j) 2 : ℤ)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) * ((f2 (n + 1) : ℚ) / (f2 n : ℚ))

end

end A152883.P10107526830923382785

namespace A152883

/-- `∑[round(sqrt(2*n))!]*ratio[C(∑[char[∑[n]]], n-C(∑[char[∑[n]]], 2))]` -/
def P10107526830923382785.Spec : Prop :=
  ∀ n, P10107526830923382785.a n = (A152883 (n + 2) : ℚ)

end A152883

/-! ## A152883.P12771016054879104245

`A051683(∑[char[∑[n]]]²-n)`
-/

namespace A152883.P12771016054879104245
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A152883.P12771016054879104245

namespace A152883

/-- `A051683(∑[char[∑[n]]]²-n)` -/
def P12771016054879104245.Spec : Prop :=
  ∀ n, P12771016054879104245.a n = A152883 (n + 2)

end A152883

/-! ## A152883.P2665145297637563298

`A098361(n)*A171631(n+1)`
-/

namespace A152883.P2665145297637563298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098361 n * A171631 (n + 1)

end

end A152883.P2665145297637563298

namespace A152883

/-- `A098361(n)*A171631(n+1)` -/
def P2665145297637563298.Spec : Prop :=
  ∀ n, P2665145297637563298.a n = A152883 (n + 2)

end A152883

/-! ## A152883.P4009409139076644493

`A003991(n+1)*A094310(n+1)`
-/

namespace A152883.P4009409139076644493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A094310 (n + 1)

end

end A152883.P4009409139076644493

namespace A152883

/-- `A003991(n+1)*A094310(n+1)` -/
def P4009409139076644493.Spec : Prop :=
  ∀ n, P4009409139076644493.a n = A152883 (n + 2)

end A152883

/-! ## A152883.P6257352212394157170

`A055461(n+1)*A077012(n+1)`
-/

namespace A152883.P6257352212394157170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055461 (n + 1) * A077012 (n + 1)

end

end A152883.P6257352212394157170

namespace A152883

/-- `A055461(n+1)*A077012(n+1)` -/
def P6257352212394157170.Spec : Prop :=
  ∀ n, P6257352212394157170.a n = A152883 (n + 2)

end A152883

/-! ## A152883.P12280392344549894985

`A004736(n+1)*A130493(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A152883

/-- `A004736(n+1)*A130493(n+1)` -/
def P12280392344549894985.Spec : Prop :=
  ∀ n, P12280392344549894985.a n = A152883 (n + 2)

theorem P12280392344549894985.correct : P12280392344549894985.Spec := by
  intro n
  simp only [A152883, Nat.add_sub_cancel]

end A152883

/-! ## A152883.P8575015011442343700

`A173333(n+1)*A288777(n+1)`
-/

namespace A152883.P8575015011442343700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173333 (n + 1) * A288777 (n + 1)

end

end A152883.P8575015011442343700

namespace A152883

/-- `A173333(n+1)*A288777(n+1)` -/
def P8575015011442343700.Spec : Prop :=
  ∀ n, P8575015011442343700.a n = A152883 (n + 2)

end A152883

/-!
# A152884: Triangle read by rows: T(n,k) is the number of permutations of {1,2,...,n} with excedance set equal to the k-th subset of {1,2,...,n-1} (n>=0, 0<=k<=ceiling(2^(n-1))-1). The subsets of {1,2,...,n-1} are ordered according to size, while the subsets of the same size follow the lexicographic order.

The programs for A152884, there is no canonical definition to state claims against.
-/

/-! ## A152884.P14368176291719312903

`A360288(A209862(n))`
-/

namespace A152884.P14368176291719312903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360288 (A209862 n).toNat

end

end A152884.P14368176291719312903

/-!
# A152885: Number of descents beginning and ending with an odd number in all permutations of {1,2,...,n}.

The programs for A152885, there is no canonical definition to state claims against.
-/

/-! ## A152885.P12109523664617118781

`n!*∑[n-gcd(n, ∑[n])]`
-/

namespace A152885.P12109523664617118781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152885.P12109523664617118781

/-! ## A152885.P4986012572293815137

`n!*C(∑[(n+1)%2], 2)`
-/

namespace A152885.P4986012572293815137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2

end

end A152885.P4986012572293815137

/-! ## A152885.P116932237721620090

`n!*floor(or(1, n)²/2)/4`
-/

namespace A152885.P116932237721620090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * ⌊(Nat.lor 1 n ^ 2 : ℚ) / 2⌋ : ℚ) / 4

end

end A152885.P116932237721620090

/-! ## A152885.P2275904625293024295

`A077611(n+1)/2`
-/

namespace A152885.P2275904625293024295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077611 (n + 1) : ℚ) / 2

end

end A152885.P2275904625293024295

/-! ## A152885.P15563675504505718222

`n!*∑[A142150(n)]`
-/

namespace A152885.P15563675504505718222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A152885.P15563675504505718222

/-! ## A152885.P8000137777244933039

`n/2*A199495(n+1)`
-/

namespace A152885.P8000137777244933039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A199495 (n + 1) : ℚ)

end

end A152885.P8000137777244933039

/-! ## A152885.P10335926159374353090

`A000142(n)/2*A110660(n)`
-/

namespace A152885.P10335926159374353090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / 2 * (A110660 n : ℚ)

end

end A152885.P10335926159374353090

/-! ## A152885.P13434164213439436085

`A306258(n)-A077612(n+1)/2`
-/

namespace A152885.P13434164213439436085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306258 n : ℚ) - (A077612 (n + 1) : ℚ) / 2

end

end A152885.P13434164213439436085

/-! ## A152885.P9081354690453834961

`(A004526(n)+A004526(n)²)*A001710(n)`
-/

namespace A152885.P9081354690453834961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004526 n + A004526 n ^ 2) * A001710 n

end

end A152885.P9081354690453834961

/-! ## A152885.P8952029935766425578

`(A008619(n)²-A008619(n))*A001710(n)`
-/

namespace A152885.P8952029935766425578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 n ^ 2 - A008619 n) * A001710 n

end

end A152885.P8952029935766425578

/-!
# A152886: Number of descents beginning and ending with an even number in all permutations of {1,2,...,n}.

The programs for A152886, there is no canonical definition to state claims against.
-/

/-! ## A152886.P1995652421540344422

`n!*C(ceil(n/2), 2)`
-/

namespace A152886.P1995652421540344422
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose ⌈(n : ℚ) / 2⌉.toNat 2

end

end A152886.P1995652421540344422

/-! ## A152886.P13225359654187453403

`A077612(n+1)/2`
-/

namespace A152886.P13225359654187453403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077612 (n + 1) : ℚ) / 2

end

end A152886.P13225359654187453403

/-! ## A152886.P322994283646812640

`C(n, 2)*A199495(n)`
-/

namespace A152886.P322994283646812640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) * A199495 n

end

end A152886.P322994283646812640

/-! ## A152886.P16911557772967095420

`sqrt(A000537(∑[char[2*n+3]]))*n!`
-/

namespace A152886.P16911557772967095420
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) * (Nat.factorial n : ℝ)

end

end A152886.P16911557772967095420

/-! ## A152886.P2566852501140152843

`n!*A161680(A065033(n))`
-/

namespace A152886.P2566852501140152843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A161680 (A065033 n).toNat

end

end A152886.P2566852501140152843

/-! ## A152886.P13408243922316380318

`n!*A161680(A110654(n))`
-/

namespace A152886.P13408243922316380318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A161680 (A110654 n).toNat

end

end A152886.P13408243922316380318

/-! ## A152886.P1989627484818232388

`A152887(n+1)-A052591(n)`
-/

namespace A152886.P1989627484818232388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152887 (n + 1) - A052591 n

end

end A152886.P1989627484818232388

/-! ## A152886.P17005103608225778646

`n/2*A077611(A028310(n))`
-/

namespace A152886.P17005103608225778646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A077611 (A028310 n).toNat : ℚ)

end

end A152886.P17005103608225778646

/-! ## A152886.P9196993066566730260

`A000142(n)/2*Δ[A280186(n)]`
-/

namespace A152886.P9196993066566730260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280186 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A152886.P9196993066566730260

/-!
# A152887: Number of descents beginning with an even number and ending with an odd number in all permutations of {1,2,...,n}.

The programs for A152887, the canonical program `A152887.P15487371797738583285` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152887 has offset 1).

The definition of A152887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152887.P15487371797738583285

`n!*(2*(n+1)*(n+2)+(2*(n+1)+1)*(-1)^(n+1)-1)/16`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152887

/-- `n!*(2*(n+1)*(n+2)+(2*(n+1)+1)*(-1)^(n+1)-1)/16` -/
def P15487371797738583285.Spec : Prop :=
  ∀ n, P15487371797738583285.a n = (A152887 (n + 1) : ℚ)

end A152887

/-! ## A152887.P11379387628472528649

`A199495(n+2)/2`
-/

namespace A152887.P11379387628472528649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199495 (n + 2) : ℚ) / 2

end

end A152887.P11379387628472528649

namespace A152887

/-- `A199495(n+2)/2` -/
def P11379387628472528649.Spec : Prop :=
  ∀ n, P11379387628472528649.a n = (A152887 (n + 1) : ℚ)

end A152887

/-! ## A152887.P10195831460781297984

`sqrt(A000537(∑[char[2*n+1]]))*n!`
-/

namespace A152887.P10195831460781297984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000537 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ) * (Nat.factorial n : ℝ)

end

end A152887.P10195831460781297984

namespace A152887

/-- `sqrt(A000537(∑[char[2*n+1]]))*n!` -/
def P10195831460781297984.Spec : Prop :=
  ∀ n, P10195831460781297984.a n = (A152887 (n + 1) : ℝ)

end A152887

/-! ## A152887.P14064398381860764794

`A000142(n)*A000217(ceil(n/2))`
-/

namespace A152887.P14064398381860764794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000217 ⌈(n : ℚ) / 2⌉.toNat

end

end A152887.P14064398381860764794

namespace A152887

/-- `A000142(n)*A000217(ceil(n/2))` -/
def P14064398381860764794.Spec : Prop :=
  ∀ n, P14064398381860764794.a n = A152887 (n + 1)

end A152887

/-! ## A152887.P1190311397921728171

`∑[A000217(n)%(n+1)]*A000142(n)`
-/

namespace A152887.P1190311397921728171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A152887.P1190311397921728171

namespace A152887

/-- `∑[A000217(n)%(n+1)]*A000142(n)` -/
def P1190311397921728171.Spec : Prop :=
  ∀ n, P1190311397921728171.a n = A152887 (n + 1)

end A152887

/-! ## A152887.P672341453777283654

`A077613(n+1)-A077611(n+1)/2`
-/

namespace A152887.P672341453777283654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077613 (n + 1) : ℚ) - (A077611 (n + 1) : ℚ) / 2

end

end A152887.P672341453777283654

namespace A152887

/-- `A077613(n+1)-A077611(n+1)/2` -/
def P672341453777283654.Spec : Prop :=
  ∀ n, P672341453777283654.a n = (A152887 (n + 1) : ℚ)

end A152887

/-! ## A152887.P8679525412039834028

`A152885(n+2)/(n+1)`
-/

namespace A152887.P8679525412039834028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152885 (n + 2) : ℚ) / (n + 1 : ℚ)

end

end A152887.P8679525412039834028

namespace A152887

/-- `A152885(n+2)/(n+1)` -/
def P8679525412039834028.Spec : Prop :=
  ∀ n, P8679525412039834028.a n = (A152887 (n + 1) : ℚ)

end A152887

/-!
# A152888: Partial sums of length of terms in A081368 where A081368(1) is set to 0.

The programs for A152888, there is no canonical definition to state claims against.
-/

/-! ## A152888.P13225332317986124346

`∑[char[∑[n+5]]]%2+∑[n]+n`
-/

namespace A152888.P13225332317986124346
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2 + (∑ j ∈ Finset.range (n + 1), f4 j + n)

end

end A152888.P13225332317986124346

/-! ## A152888.P219338139172494108

`∑[n+1]-A057211(n+11)`
-/

namespace A152888.P219338139172494108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057211 (n + 11)

end

end A152888.P219338139172494108

/-! ## A152888.P11700818866299369396

`∑[n+1]-A143536(n+11)`
-/

namespace A152888.P11700818866299369396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A143536 (n + 11)

end

end A152888.P11700818866299369396

/-! ## A152888.P8207785437388572323

`∑[∑[Δ[A121373(3*n+4)]+1]]`
-/

namespace A152888.P8207785437388572323
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152888.P8207785437388572323

/-! ## A152888.P9383301591682391907

`∑[∑[1-Δ[A143062(3*n+4)]]]`
-/

namespace A152888.P9383301591682391907
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143062 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152888.P9383301591682391907

/-!
# A152889: Periodic sequence [1,0,4,0,0] of period 5.

The programs for A152889, the canonical program `A152889.P3466526501640681349` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152889 has offset 0).

The definition of A152889 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152889.P3466526501640681349

`and(5, 2^(n%5))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152889

/-- `and(5, 2^(n%5))` -/
def P3466526501640681349.Spec : Prop :=
  ∀ n, (P3466526501640681349.a n : ℤ) = A152889 n

theorem P3466526501640681349.correct : P3466526501640681349.Spec := by
  intro n
  simp only [A152889]

end A152889

/-!
# A152890: Periodic sequence [4,1,4,0,1] of period 5.

The programs for A152890, the canonical program `A152890.P13744493197015164839` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152890 has offset 0).

The definition of A152890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152890.P13744493197015164839

`a(n-5)` with `a(0)=4, a(1)=1, a(2)=4, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152890

/-- `a(n-5)` -/
def P13744493197015164839.Spec : Prop :=
  ∀ n, (P13744493197015164839.a n : ℤ) = A152890 n

theorem P13744493197015164839.correct : P13744493197015164839.Spec := by
  intro n
  simp only [A152890]

end A152890

/-!
# A152891: a(1) = b(1) = 0; for n > 1, b(n) = b(n-1) + n-1 + a(n-1) and a(n) = a(n-1) + n-1 + b(n).

The programs for A152891, the canonical program `A152891.P4537449102752213754` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152891 has offset 1).

The definition of A152891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152891.P4537449102752213754

`A001906(n+2)-A001906(n+1)-(n+1)-1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152891

/-- `A001906(n+2)-A001906(n+1)-(n+1)-1` -/
def P4537449102752213754.Spec : Prop :=
  ∀ n, P4537449102752213754.a n = A152891 (n + 1)

theorem P4537449102752213754.correct : P4537449102752213754.Spec := by
  intro n
  simp only [A152891, Nat.add_sub_cancel]

end A152891

/-! ## A152891.P240937978856014361

`∑[∑[ogf((2x-x^2)/(1-3x+x^2))]]`
-/

namespace A152891.P240937978856014361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -1] [1, -3, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P240937978856014361

namespace A152891

/-- `∑[∑[ogf((2x-x^2)/(1-3x+x^2))]]` -/
def P240937978856014361.Spec : Prop :=
  ∀ n, P240937978856014361.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P15202062104730175592

`∑[floor(ϕ²*a(n-1))+2]` with `a(0)=0`
-/

namespace A152891.P15202062104730175592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋ + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P15202062104730175592

namespace A152891

/-- `∑[floor(ϕ²*a(n-1))+2]` -/
def P15202062104730175592.Spec : Prop :=
  ∀ n, P15202062104730175592.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P14717777516561880973

`∑[3*a(n-1)+1-a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A152891.P14717777516561880973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 * f1 (n - 1) + (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P14717777516561880973

namespace A152891

/-- `∑[3*a(n-1)+1-a(n-2)]` -/
def P14717777516561880973.Spec : Prop :=
  ∀ n, P14717777516561880973.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P16257078441684868083

`∑[1-(a(n-2)-3*a(n-1))]` with `a(0)=0, a(1)=2`
-/

namespace A152891.P16257078441684868083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  1 - (f1 (n - 2) - 3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P16257078441684868083

namespace A152891

/-- `∑[1-(a(n-2)-3*a(n-1))]` -/
def P16257078441684868083.Spec : Prop :=
  ∀ n, P16257078441684868083.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P10507681815456937747

`record[a(n-2)-a(n-1)]-(n+2)` with `a(0)=2, a(1)=1`
-/

namespace A152891.P10507681815456937747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 2 : ℤ)

end

end A152891.P10507681815456937747

namespace A152891

/-- `record[a(n-2)-a(n-1)]-(n+2)` -/
def P10507681815456937747.Spec : Prop :=
  ∀ n, P10507681815456937747.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P1146078141720749485

`1-a(n-2)+3*a(n-1)+n` with `a(0)=0, a(1)=2`
-/

namespace A152891.P1146078141720749485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - a (n - 2) + (3 * a (n - 1) + (n : ℤ))

end

end A152891.P1146078141720749485

namespace A152891

/-- `1-a(n-2)+3*a(n-1)+n` -/
def P1146078141720749485.Spec : Prop :=
  ∀ n, P1146078141720749485.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P9198824336244749403

`1-(a(n-2)-3*a(n-1)-n)` with `a(0)=0, a(1)=2`
-/

namespace A152891.P9198824336244749403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  1 - (a (n - 2) - 3 * a (n - 1) - (n : ℤ))

end

end A152891.P9198824336244749403

namespace A152891

/-- `1-(a(n-2)-3*a(n-1)-n)` -/
def P9198824336244749403.Spec : Prop :=
  ∀ n, P9198824336244749403.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P8496738609106269445

`∑[A035508(n)]`
-/

namespace A152891.P8496738609106269445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P8496738609106269445

namespace A152891

/-- `∑[A035508(n)]` -/
def P8496738609106269445.Spec : Prop :=
  ∀ n, P8496738609106269445.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P1497393366849782937

`∑[A333599(2*n)]`
-/

namespace A152891.P1497393366849782937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P1497393366849782937

namespace A152891

/-- `∑[A333599(2*n)]` -/
def P1497393366849782937.Spec : Prop :=
  ∀ n, P1497393366849782937.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P8556830079970621595

`∑[A339572(4*n)]`
-/

namespace A152891.P8556830079970621595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339572 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P8556830079970621595

namespace A152891

/-- `∑[A339572(4*n)]` -/
def P8556830079970621595.Spec : Prop :=
  ∀ n, P8556830079970621595.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P12717476292366980383

`A280523(n+1)-1`
-/

namespace A152891.P12717476292366980383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280523 (n + 1) - 1

end

end A152891.P12717476292366980383

namespace A152891

/-- `A280523(n+1)-1` -/
def P12717476292366980383.Spec : Prop :=
  ∀ n, P12717476292366980383.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P4715334232494855717

`A215004(2*n)-1`
-/

namespace A152891.P4715334232494855717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 (2 * n) - 1

end

end A152891.P4715334232494855717

namespace A152891

/-- `A215004(2*n)-1` -/
def P4715334232494855717.Spec : Prop :=
  ∀ n, P4715334232494855717.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P260208191254162010

`A048575(n)-(n+2)`
-/

namespace A152891.P260208191254162010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - (n + 2 : ℤ)

end

end A152891.P260208191254162010

namespace A152891

/-- `A048575(n)-(n+2)` -/
def P260208191254162010.Spec : Prop :=
  ∀ n, P260208191254162010.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P15861826136184116781

`A001911(2*n)-n`
-/

namespace A152891.P15861826136184116781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (2 * n) - (n : ℤ)

end

end A152891.P15861826136184116781

namespace A152891

/-- `A001911(2*n)-n` -/
def P15861826136184116781.Spec : Prop :=
  ∀ n, P15861826136184116781.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P805551715562392667

`A215006(Δ[n²])-1`
-/

namespace A152891.P805551715562392667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A152891.P805551715562392667

namespace A152891

/-- `A215006(Δ[n²])-1` -/
def P805551715562392667.Spec : Prop :=
  ∀ n, P805551715562392667.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P17442898027388169033

`∑[∑[A122367(n)]-1]`
-/

namespace A152891.P17442898027388169033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P17442898027388169033

namespace A152891

/-- `∑[∑[A122367(n)]-1]` -/
def P17442898027388169033.Spec : Prop :=
  ∀ n, P17442898027388169033.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P6291369570168547113

`A007382(Δ[n²])-n`
-/

namespace A152891.P6291369570168547113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007382 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A152891.P6291369570168547113

namespace A152891

/-- `A007382(Δ[n²])-n` -/
def P6291369570168547113.Spec : Prop :=
  ∀ n, P6291369570168547113.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P6053807171436591794

`∑[∑[A027941(n)]+n]`
-/

namespace A152891.P6053807171436591794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P6053807171436591794

namespace A152891

/-- `∑[∑[A027941(n)]+n]` -/
def P6053807171436591794.Spec : Prop :=
  ∀ n, P6053807171436591794.a n = A152891 (n + 1)

end A152891

/-! ## A152891.P7656941957261925884

`∑[A249450(n+1)+1]`
-/

namespace A152891.P7656941957261925884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152891.P7656941957261925884

namespace A152891

/-- `∑[A249450(n+1)+1]` -/
def P7656941957261925884.Spec : Prop :=
  ∀ n, P7656941957261925884.a n = A152891 (n + 1)

end A152891

/-!
# A152892: Period 5: repeat [0, 3, 1, 0, 1].

The programs for A152892, the canonical program `A152892.P1654131321623310614` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152892 has offset 0).

The definition of A152892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152892.P1654131321623310614

`((n+2)*n²)%5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152892

/-- `((n+2)*n²)%5` -/
def P1654131321623310614.Spec : Prop :=
  ∀ n, (P1654131321623310614.a n : ℤ) = A152892 n

theorem P1654131321623310614.correct : P1654131321623310614.Spec := by
  intro n
  simp only [A152892]

end A152892

/-!
# A152893: Periodic sequence [3, 3, 0, 0, 4] of period 5.

The programs for A152893, the canonical program `A152893.P5642528443472986350` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152893 has offset 0).

The definition of A152893 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152893.P5642528443472986350

`a(n-5)` with `a(0)=3, a(1)=3, a(2)=0, a(3)=0, a(4)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152893

/-- `a(n-5)` -/
def P5642528443472986350.Spec : Prop :=
  ∀ n, (P5642528443472986350.a n : ℤ) = A152893 n

theorem P5642528443472986350.correct : P5642528443472986350.Spec := by
  intro n
  simp only [A152893]

end A152893

/-!
# A152894: Periodic sequence [0,0,1,4,0] of period 5.

The programs for A152894, the canonical program `A152894.P16240370576109982463` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152894 has offset 0).

The definition of A152894 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152894.P16240370576109982463

`∑[C(n, 2)]%5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152894

/-- `∑[C(n, 2)]%5` -/
def P16240370576109982463.Spec : Prop :=
  ∀ n, (P16240370576109982463.a n : ℤ) = A152894 n

theorem P16240370576109982463.correct : P16240370576109982463.Spec := by
  intro n
  simp only [A152894]

end A152894

/-!
# A152895: Partial sums of A152891.

The programs for A152895, the canonical program `A152895.P879316683197725997` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152895 has offset 1).

The definition of A152895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152895.P5528820133745039344

`A001906(n+2)-A000217(n+2)`
-/

namespace A152895.P5528820133745039344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 2) - A000217 (n + 2)

end

end A152895.P5528820133745039344

namespace A152895

/-- `A001906(n+2)-A000217(n+2)` -/
def P5528820133745039344.Spec : Prop :=
  ∀ n, P5528820133745039344.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P879316683197725997

`6*a(n-1)-13*a(n-2)+13*a(n-3)-6*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=11, a(3)=40, a(4)=123`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152895

/-- `6*a(n-1)-13*a(n-2)+13*a(n-3)-6*a(n-4)+a(n-5)` -/
def P879316683197725997.Spec : Prop :=
  ∀ n, P879316683197725997.a n = A152895 (n + 1)

theorem P879316683197725997.correct : P879316683197725997.Spec := by
  intro n
  simp only [A152895, Nat.add_sub_cancel]

end A152895

/-! ## A152895.P13293754412567201742

`∑[3*a(n-1)+n+1-a(n-2)]` with `a(0)=0, a(1)=2`
-/

namespace A152895.P13293754412567201742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  3 * f1 (n - 1) + ((n + 1 : ℤ) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P13293754412567201742

namespace A152895

/-- `∑[3*a(n-1)+n+1-a(n-2)]` -/
def P13293754412567201742.Spec : Prop :=
  ∀ n, P13293754412567201742.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P16896739841478329401

`∑[∑[A035508(n)]]`
-/

namespace A152895.P16896739841478329401
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035508 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P16896739841478329401

namespace A152895

/-- `∑[∑[A035508(n)]]` -/
def P16896739841478329401.Spec : Prop :=
  ∀ n, P16896739841478329401.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P12046627919534887323

`∑[A152891(n+1)]`
-/

namespace A152895.P12046627919534887323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P12046627919534887323

namespace A152895

/-- `∑[A152891(n+1)]` -/
def P12046627919534887323.Spec : Prop :=
  ∀ n, P12046627919534887323.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P14934943709787804259

`∑[∑[A333599(2*n)]]`
-/

namespace A152895.P14934943709787804259
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333599 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P14934943709787804259

namespace A152895

/-- `∑[∑[A333599(2*n)]]` -/
def P14934943709787804259.Spec : Prop :=
  ∀ n, P14934943709787804259.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P17807305591525730580

`∑[A280523(n+1)-1]`
-/

namespace A152895.P17807305591525730580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280523 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P17807305591525730580

namespace A152895

/-- `∑[A280523(n+1)-1]` -/
def P17807305591525730580.Spec : Prop :=
  ∀ n, P17807305591525730580.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P7816689258445864193

`∑[A215004(2*n)-1]`
-/

namespace A152895.P7816689258445864193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215004 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P7816689258445864193

namespace A152895

/-- `∑[A215004(2*n)-1]` -/
def P7816689258445864193.Spec : Prop :=
  ∀ n, P7816689258445864193.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P13638817417485161097

`∑[A048575(n)-(n+2)]`
-/

namespace A152895.P13638817417485161097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P13638817417485161097

namespace A152895

/-- `∑[A048575(n)-(n+2)]` -/
def P13638817417485161097.Spec : Prop :=
  ∀ n, P13638817417485161097.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P10693339373012668180

`∑[A001911(2*n)-n]`
-/

namespace A152895.P10693339373012668180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 (2 * n) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P10693339373012668180

namespace A152895

/-- `∑[A001911(2*n)-n]` -/
def P10693339373012668180.Spec : Prop :=
  ∀ n, P10693339373012668180.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P10855007488562580406

`A001924(2*n)-∑[n]`
-/

namespace A152895.P10855007488562580406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (2 * n) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152895.P10855007488562580406

namespace A152895

/-- `A001924(2*n)-∑[n]` -/
def P10855007488562580406.Spec : Prop :=
  ∀ n, P10855007488562580406.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P11643303637255515983

`∑[∑[A249450(n+1)+1]]`
-/

namespace A152895.P11643303637255515983
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P11643303637255515983

namespace A152895

/-- `∑[∑[A249450(n+1)+1]]` -/
def P11643303637255515983.Spec : Prop :=
  ∀ n, P11643303637255515983.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P1531015995109596046

`∑[∑[A001906(n+1)-1]]`
-/

namespace A152895.P1531015995109596046
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P1531015995109596046

namespace A152895

/-- `∑[∑[A001906(n+1)-1]]` -/
def P1531015995109596046.Spec : Prop :=
  ∀ n, P1531015995109596046.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P10915177512150841414

`∑[∑[A088305(n+1)-1]]`
-/

namespace A152895.P10915177512150841414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P10915177512150841414

namespace A152895

/-- `∑[∑[A088305(n+1)-1]]` -/
def P10915177512150841414.Spec : Prop :=
  ∀ n, P10915177512150841414.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P4008939083644875811

`∑[∑[A052925(n+1)-2]]`
-/

namespace A152895.P4008939083644875811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052925 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P4008939083644875811

namespace A152895

/-- `∑[∑[A052925(n+1)-2]]` -/
def P4008939083644875811.Spec : Prop :=
  ∀ n, P4008939083644875811.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P1079739578861744927

`∑[∑[A000071(2*(n+1))]]`
-/

namespace A152895.P1079739578861744927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P1079739578861744927

namespace A152895

/-- `∑[∑[A000071(2*(n+1))]]` -/
def P1079739578861744927.Spec : Prop :=
  ∀ n, P1079739578861744927.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P10494667206990885949

`∑[A215006(2*n+1)-1]`
-/

namespace A152895.P10494667206990885949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215006 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P10494667206990885949

namespace A152895

/-- `∑[A215006(2*n+1)-1]` -/
def P10494667206990885949.Spec : Prop :=
  ∀ n, P10494667206990885949.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P1735400289322190371

`∑[A027941(n+1)-(n+1)]`
-/

namespace A152895.P1735400289322190371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P1735400289322190371

namespace A152895

/-- `∑[A027941(n+1)-(n+1)]` -/
def P1735400289322190371.Spec : Prop :=
  ∀ n, P1735400289322190371.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P15507211725058226024

`A344004(2*n+1)+∑[n]`
-/

namespace A152895.P15507211725058226024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344004 (2 * n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A152895.P15507211725058226024

namespace A152895

/-- `A344004(2*n+1)+∑[n]` -/
def P15507211725058226024.Spec : Prop :=
  ∀ n, P15507211725058226024.a n = A152895 (n + 1)

end A152895

/-! ## A152895.P11207491429030496385

`∑[∑[A000045(2*(n+1))-1]]`
-/

namespace A152895.P11207491429030496385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (n + 1)) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152895.P11207491429030496385

namespace A152895

/-- `∑[∑[A000045(2*(n+1))-1]]` -/
def P11207491429030496385.Spec : Prop :=
  ∀ n, P11207491429030496385.a n = A152895 (n + 1)

end A152895

/-!
# A152896: a=b=c=0;c(n)=c+n+a;b(n)=b+n+c;a(n)=a+n+b.

The programs for A152896, the canonical program `A152896.P8645147443961009285` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152896 has offset 1).

The definition of A152896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152896.P8645147443961009285

`6*a(n-1)-12*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=15, a(3)=55, a(4)=183`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152896

/-- `6*a(n-1)-12*a(n-2)+11*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8645147443961009285.Spec : Prop :=
  ∀ n, P8645147443961009285.a n = A152896 (n + 1)

theorem P8645147443961009285.correct : P8645147443961009285.Spec := by
  intro n
  simp only [A152896, Nat.add_sub_cancel]

end A152896

/-! ## A152896.P6990978205528405638

`∑[∑[A124820(n)]-1]`
-/

namespace A152896.P6990978205528405638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152896.P6990978205528405638

namespace A152896

/-- `∑[∑[A124820(n)]-1]` -/
def P6990978205528405638.Spec : Prop :=
  ∀ n, P6990978205528405638.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P6462313644792790456

`∑[Δ[A052544(n)]-1]`
-/

namespace A152896.P6462313644792790456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152896.P6462313644792790456

namespace A152896

/-- `∑[Δ[A052544(n)]-1]` -/
def P6462313644792790456.Spec : Prop :=
  ∀ n, P6462313644792790456.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P5657589792051590607

`∑[A052529(n+1)-1]`
-/

namespace A152896.P5657589792051590607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152896.P5657589792051590607

namespace A152896

/-- `∑[A052529(n+1)-1]` -/
def P5657589792051590607.Spec : Prop :=
  ∀ n, P5657589792051590607.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P11930718825737385056

`A052544(n+1)-(n+2)`
-/

namespace A152896.P11930718825737385056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 (n + 1) - (n + 2 : ℤ)

end

end A152896.P11930718825737385056

namespace A152896

/-- `A052544(n+1)-(n+2)` -/
def P11930718825737385056.Spec : Prop :=
  ∀ n, P11930718825737385056.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P944836552269111693

`A204200(n+3)-(n+2)`
-/

namespace A152896.P944836552269111693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204200 (n + 3) - (n + 2 : ℤ)

end

end A152896.P944836552269111693

namespace A152896

/-- `A204200(n+3)-(n+2)` -/
def P944836552269111693.Spec : Prop :=
  ∀ n, P944836552269111693.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P9440234098542063037

`A077868(3*n)-(n+1)`
-/

namespace A152896.P9440234098542063037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077868 (3 * n) - (n + 1 : ℤ)

end

end A152896.P9440234098542063037

namespace A152896

/-- `A077868(3*n)-(n+1)` -/
def P9440234098542063037.Spec : Prop :=
  ∀ n, P9440234098542063037.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P5627487273532799923

`∑[Δ[A000930(3*n)]-1]`
-/

namespace A152896.P5627487273532799923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152896.P5627487273532799923

namespace A152896

/-- `∑[Δ[A000930(3*n)]-1]` -/
def P5627487273532799923.Spec : Prop :=
  ∀ n, P5627487273532799923.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P5402802101783900928

`A000930(3*(n+1))-(n+2)`
-/

namespace A152896.P5402802101783900928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (3 * (n + 1)) - (n + 2 : ℤ)

end

end A152896.P5402802101783900928

namespace A152896

/-- `A000930(3*(n+1))-(n+2)` -/
def P5402802101783900928.Spec : Prop :=
  ∀ n, P5402802101783900928.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P5556473608192505832

`A068921(3*n+2)-(n+2)`
-/

namespace A152896.P5556473608192505832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (3 * n + 2) - (n + 2 : ℤ)

end

end A152896.P5556473608192505832

namespace A152896

/-- `A068921(3*n+2)-(n+2)` -/
def P5556473608192505832.Spec : Prop :=
  ∀ n, P5556473608192505832.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P13426852114351513336

`A078012(3*(n+2))-(n+2)`
-/

namespace A152896.P13426852114351513336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (3 * (n + 2)) - (n + 2 : ℤ)

end

end A152896.P13426852114351513336

namespace A152896

/-- `A078012(3*(n+2))-(n+2)` -/
def P13426852114351513336.Spec : Prop :=
  ∀ n, P13426852114351513336.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P7341472864878056232

`∑[record[A000930(A014682(n))-1]]`
-/

namespace A152896.P7341472864878056232
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (A014682 n).toNat - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152896.P7341472864878056232

namespace A152896

/-- `∑[record[A000930(A014682(n))-1]]` -/
def P7341472864878056232.Spec : Prop :=
  ∀ n, P7341472864878056232.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P17021063056823072095

`A000217(n+1)+A152897(n+1)-A124820(n)`
-/

namespace A152896.P17021063056823072095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A152897 (n + 1) - A124820 n)

end

end A152896.P17021063056823072095

namespace A152896

/-- `A000217(n+1)+A152897(n+1)-A124820(n)` -/
def P17021063056823072095.Spec : Prop :=
  ∀ n, P17021063056823072095.a n = A152896 (n + 1)

end A152896

/-! ## A152896.P5108872682426266671

`A350498(n+2)-(A350498(n+1)+A124820(n))`
-/

namespace A152896.P5108872682426266671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350498 (n + 2) - (A350498 (n + 1) + A124820 n)

end

end A152896.P5108872682426266671

namespace A152896

/-- `A350498(n+2)-(A350498(n+1)+A124820(n))` -/
def P5108872682426266671.Spec : Prop :=
  ∀ n, P5108872682426266671.a n = A152896 (n + 1)

end A152896

/-!
# A152897: Partial sums of A152896.

The programs for A152897, the canonical program `A152897.P14755639083398514386` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152897 has offset 1).

The definition of A152897 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A152897.P14755639083398514386

`A124820(n+1)-A000217(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A152897

/-- `A124820(n+1)-A000217(n+2)` -/
def P14755639083398514386.Spec : Prop :=
  ∀ n, P14755639083398514386.a n = A152897 (n + 1)

theorem P14755639083398514386.correct : P14755639083398514386.Spec := by
  intro n
  simp only [A152897, Nat.add_sub_cancel]

end A152897

/-! ## A152897.P7780958785323227678

`∑[A152896(n+1)]`
-/

namespace A152897.P7780958785323227678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152897.P7780958785323227678

namespace A152897

/-- `∑[A152896(n+1)]` -/
def P7780958785323227678.Spec : Prop :=
  ∀ n, P7780958785323227678.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P4110784878907858378

`∑[∑[Δ[A052544(n)]-1]]`
-/

namespace A152897.P4110784878907858378
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152897.P4110784878907858378

namespace A152897

/-- `∑[∑[Δ[A052544(n)]-1]]` -/
def P4110784878907858378.Spec : Prop :=
  ∀ n, P4110784878907858378.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P13707806067352128519

`∑[∑[A052529(n+1)-1]]`
-/

namespace A152897.P13707806067352128519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052529 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152897.P13707806067352128519

namespace A152897

/-- `∑[∑[A052529(n+1)-1]]` -/
def P13707806067352128519.Spec : Prop :=
  ∀ n, P13707806067352128519.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P1105821394672134770

`∑[Δ[A124820(n)]-(n+2)]`
-/

namespace A152897.P1105821394672134770
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152897.P1105821394672134770

namespace A152897

/-- `∑[Δ[A124820(n)]-(n+2)]` -/
def P1105821394672134770.Spec : Prop :=
  ∀ n, P1105821394672134770.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P13642814244015085144

`∑[A052544(n+1)-(n+2)]`
-/

namespace A152897.P13642814244015085144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052544 (n + 1) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152897.P13642814244015085144

namespace A152897

/-- `∑[A052544(n+1)-(n+2)]` -/
def P13642814244015085144.Spec : Prop :=
  ∀ n, P13642814244015085144.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P16393094260825106727

`∑[A204200(n+3)-(n+2)]`
-/

namespace A152897.P16393094260825106727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204200 (n + 3) - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152897.P16393094260825106727

namespace A152897

/-- `∑[A204200(n+3)-(n+2)]` -/
def P16393094260825106727.Spec : Prop :=
  ∀ n, P16393094260825106727.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P1571355713282490686

`∑[∑[A068921(3*n+1)-1]]`
-/

namespace A152897.P1571355713282490686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068921 (3 * n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152897.P1571355713282490686

namespace A152897

/-- `∑[∑[A068921(3*n+1)-1]]` -/
def P1571355713282490686.Spec : Prop :=
  ∀ n, P1571355713282490686.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P2096338194761488627

`∑[∑[∑[A000930(3*n+1)]-1]]`
-/

namespace A152897.P2096338194761488627
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A152897.P2096338194761488627

namespace A152897

/-- `∑[∑[∑[A000930(3*n+1)]-1]]` -/
def P2096338194761488627.Spec : Prop :=
  ∀ n, P2096338194761488627.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P17078292989442402386

`A350498(n+2)-A052529(n+1)`
-/

namespace A152897.P17078292989442402386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350498 (n + 2) - A052529 (n + 1)

end

end A152897.P17078292989442402386

namespace A152897

/-- `A350498(n+2)-A052529(n+1)` -/
def P17078292989442402386.Spec : Prop :=
  ∀ n, P17078292989442402386.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P1973877731741002936

`A048585(3*n)-A167614(n+1)`
-/

namespace A152897.P1973877731741002936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048585 (3 * n) - A167614 (n + 1)

end

end A152897.P1973877731741002936

namespace A152897

/-- `A048585(3*n)-A167614(n+1)` -/
def P1973877731741002936.Spec : Prop :=
  ∀ n, P1973877731741002936.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P10892488377140931250

`A350498(n+2)+A052544(n)-A052544(n+1)`
-/

namespace A152897.P10892488377140931250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350498 (n + 2) + (A052544 n - A052544 (n + 1))

end

end A152897.P10892488377140931250

namespace A152897

/-- `A350498(n+2)+A052544(n)-A052544(n+1)` -/
def P10892488377140931250.Spec : Prop :=
  ∀ n, P10892488377140931250.a n = A152897 (n + 1)

end A152897

/-! ## A152897.P5748368007019049206

`A350498(n+2)-(A350498(n+1)+A000217(n+1))`
-/

namespace A152897.P5748368007019049206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350498 (n + 2) - (A350498 (n + 1) + A000217 (n + 1))

end

end A152897.P5748368007019049206

namespace A152897

/-- `A350498(n+2)-(A350498(n+1)+A000217(n+1))` -/
def P5748368007019049206.Spec : Prop :=
  ∀ n, P5748368007019049206.a n = A152897 (n + 1)

end A152897

/-!
# A152898: Periodic sequence [1,4,0,0,0] of period 5.

The programs for A152898, the canonical program `A152898.P4601747781776529139` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A152898 has offset 0).

The definition of A152898 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A152898.P4601747781776529139

`C(n+3, 3)%5`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A152898

/-- `C(n+3, 3)%5` -/
def P4601747781776529139.Spec : Prop :=
  ∀ n, (P4601747781776529139.a n : ℤ) = A152898 n

theorem P4601747781776529139.correct : P4601747781776529139.Spec := by
  intro n
  simp only [A152898]

end A152898

/-!
# A152899: Triangular numbers t such that (t-1)/2, (t+1)/2, 2t-1 or 2t+1 is prime.

The programs for A152899, there is no canonical definition to state claims against.
-/

/-! ## A152899.P7187148056912831718

`A000217(lt[A011653(3*n+4), A003987(2*(n+2))])`
-/

namespace A152899.P7187148056912831718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011653 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152899.P7187148056912831718

/-! ## A152899.P4209301440426341826

`A000217(lt[A121434(n), A121424(2*n+1)])`
-/

namespace A152899.P4209301440426341826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121424 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A152899.P4209301440426341826

/-! ## A152899.P4871653738561788925

`A000217(comp[A270393(2*n+1)²-A001075(n)])`
-/

namespace A152899.P4871653738561788925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270393 (2 * n + 1) ^ 2 - A001075 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A152899.P4871653738561788925

