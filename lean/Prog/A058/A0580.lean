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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C047
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A058000: a(n) is smallest prime such that a(n)+1 is a proper multiple of a(n-1)+1 [with a(1)=1].

The programs for A058000, there is no canonical definition to state claims against.
-/

/-! ## A058000.P10482405589992580050

`a(n-1)*A036013(n+1)-1+A036013(n+1)` with `a(0)=1`
-/

namespace A058000.P10482405589992580050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A036013 (n + 1) - 1 + A036013 (n + 1)

end

end A058000.P10482405589992580050

/-! ## A058000.P7471117543293815378

`∏[A036013(n+1)]-1`
-/

namespace A058000.P7471117543293815378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A058000.P7471117543293815378

/-! ## A058000.P2909166458580731988

`A084403(n+1)-A166926(n)`
-/

namespace A058000.P2909166458580731988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084403 (n + 1) - A166926 n

end

end A058000.P2909166458580731988

/-! ## A058000.P11089868469881182997

`∏[A084402(A178915(n+1))]-1`
-/

namespace A058000.P11089868469881182997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084402 (A178915 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A058000.P11089868469881182997

/-! ## A058000.P9734026363091908996

`A057428(n+1)+∏[A036013(n+1)]`
-/

namespace A058000.P9734026363091908996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058000.P9734026363091908996

/-! ## A058000.P550179927743205376

`A033999(2*n+1)+∏[A036013(n+1)]`
-/

namespace A058000.P550179927743205376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036013 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058000.P550179927743205376

/-!
# A058001: Number of 3 X 3 matrices with entries mod n, up to row and column permutation.

The programs for A058001, there is no canonical definition to state claims against.
-/

/-! ## A058001.P12708201155133574778

`A246106(A167614(n+3))`
-/

namespace A058001.P12708201155133574778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A167614 (n + 3)).toNat

end

end A058001.P12708201155133574778

/-! ## A058001.P9891748387051971271

`A246106(A152950(n+5))`
-/

namespace A058001.P9891748387051971271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A152950 (n + 5)).toNat

end

end A058001.P9891748387051971271

/-! ## A058001.P6995391199137567197

`A246106(A155212(n)+11)`
-/

namespace A058001.P6995391199137567197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A155212 n + 11).toNat

end

end A058001.P6995391199137567197

/-! ## A058001.P11993183474034807014

`A246106(A056000(n)+13)`
-/

namespace A058001.P11993183474034807014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A056000 n + 13).toNat

end

end A058001.P11993183474034807014

/-! ## A058001.P2559303016098528066

`record[A246106(A000217(n)+3)]`
-/

namespace A058001.P2559303016098528066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A000217 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058001.P2559303016098528066

/-!
# A058002: Number of 4 X 4 matrices with entries mod n, up to row and column permutation.

The programs for A058002, there is no canonical definition to state claims against.
-/

/-! ## A058002.P1110697559641408344

`A246106(A056115(n)+19)`
-/

namespace A058002.P1110697559641408344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A056115 n + 19).toNat

end

end A058002.P1110697559641408344

/-! ## A058002.P14648772327355088203

`record[A246106(A141214(n)+7)]`
-/

namespace A058002.P14648772327355088203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A141214 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058002.P14648772327355088203

/-! ## A058002.P9185892051093141433

`A246106(A000217(n+5)+4)`
-/

namespace A058002.P9185892051093141433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A000217 (n + 5) + 4).toNat

end

end A058002.P9185892051093141433

/-! ## A058002.P15784701348918354738

`record[A246106(A167614(n+2)+1)]`
-/

namespace A058002.P15784701348918354738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058002.P15784701348918354738

/-! ## A058002.P1305434103181735683

`A246106(eq[7, A131818(n+1)]-2)`
-/

namespace A058002.P1305434103181735683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n - 2)

end

end A058002.P1305434103181735683

/-!
# A058003: Number of 5 X 5 matrices with entries mod n, up to row and column permutation.

The programs for A058003, there is no canonical definition to state claims against.
-/

/-! ## A058003.P17270596884575659704

`A246106(eq[6, A253572(n+1)])`
-/

namespace A058003.P17270596884575659704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246106 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058003.P17270596884575659704

/-!
# A058005: a(n) = gcd(2*n, binomial(2*n, n)).

The programs for A058005, the canonical program `A058005.P18399013216865154681` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058005 has offset 1).

The definition of A058005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(2*(n+1), C(2*(n+1), n+1))` (program `A058005.P18399013216865154681`, by `A058005.P18399013216865154681.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058005.P18399013216865154681

`gcd(2*(n+1), C(2*(n+1), n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058005

/-- `gcd(2*(n+1), C(2*(n+1), n+1))` -/
def P18399013216865154681.Spec : Prop :=
  ∀ n, (P18399013216865154681.a n : ℤ) = A058005 (n + 1)

theorem P18399013216865154681.correct : P18399013216865154681.Spec := by
  intro n
  simp only [A058005, Nat.add_sub_cancel]

end A058005

/-! ## A058005.P6179863510557764062

`2*A333461(n+1)`
-/

namespace A058005.P6179863510557764062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A333461 (n + 1)

end

end A058005.P6179863510557764062

namespace A058005

/-- `2*A333461(n+1)` -/
def P6179863510557764062.Spec : Prop :=
  ∀ n, P6179863510557764062.a n = A058005 (n + 1)

end A058005

/-! ## A058005.P228472034146453325

`2*(n+1)/A201059(n+1)`
-/

namespace A058005.P228472034146453325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A201059 (n + 1) : ℚ))

end

end A058005.P228472034146453325

namespace A058005

/-- `2*(n+1)/A201059(n+1)` -/
def P228472034146453325.Spec : Prop :=
  ∀ n, P228472034146453325.a n = (A058005 (n + 1) : ℚ)

end A058005

/-! ## A058005.P837900183859356837

`2*gcd(n+1, A099906(n+1))`
-/

namespace A058005.P837900183859356837
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (n + 1 : ℤ) (A099906 (n + 1))

end

end A058005.P837900183859356837

namespace A058005

/-- `2*gcd(n+1, A099906(n+1))` -/
def P837900183859356837.Spec : Prop :=
  ∀ n, (P837900183859356837.a n : ℤ) = A058005 (n + 1)

end A058005

/-! ## A058005.P12241332573252939746

`gcd(2*(n+1), A042970(2*(n+1)))`
-/

namespace A058005.P12241332573252939746
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A042970 (2 * (n + 1)))

end

end A058005.P12241332573252939746

namespace A058005

/-- `gcd(2*(n+1), A042970(2*(n+1)))` -/
def P12241332573252939746.Spec : Prop :=
  ∀ n, (P12241332573252939746.a n : ℤ) = A058005 (n + 1)

end A058005

/-! ## A058005.P16795414875058386229

`A004277(A333461(n+1))`
-/

namespace A058005.P16795414875058386229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A333461 (n + 1)).toNat

end

end A058005.P16795414875058386229

namespace A058005

/-- `A004277(A333461(n+1))` -/
def P16795414875058386229.Spec : Prop :=
  ∀ n, P16795414875058386229.a n = A058005 (n + 1)

end A058005

/-! ## A058005.P17598203830387395419

`2*gcd(A014683(n+1), A099905(n+1))`
-/

namespace A058005.P17598203830387395419
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A014683 (n + 1)) (A099905 (n + 1))

end

end A058005.P17598203830387395419

namespace A058005

/-- `2*gcd(A014683(n+1), A099905(n+1))` -/
def P17598203830387395419.Spec : Prop :=
  ∀ n, (P17598203830387395419.a n : ℤ) = A058005 (n + 1)

end A058005

/-! ## A058005.P16151739359249779026

`2*gcd(A048671(n+1), A099907(n+1))`
-/

namespace A058005.P16151739359249779026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A048671 (n + 1)) (A099907 (n + 1))

end

end A058005.P16151739359249779026

namespace A058005

/-- `2*gcd(A048671(n+1), A099907(n+1))` -/
def P16151739359249779026.Spec : Prop :=
  ∀ n, (P16151739359249779026.a n : ℤ) = A058005 (n + 1)

end A058005

/-! ## A058005.P11062398419695052549

`2*gcd(A061019(n+1), A099908(n+1))`
-/

namespace A058005.P11062398419695052549
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A061019 (n + 1)) (A099908 (n + 1))

end

end A058005.P11062398419695052549

namespace A058005

/-- `2*gcd(A061019(n+1), A099908(n+1))` -/
def P11062398419695052549.Spec : Prop :=
  ∀ n, (P11062398419695052549.a n : ℤ) = A058005 (n + 1)

end A058005

/-! ## A058005.P4175559700764397230

`A057815(2*(n+1))`
-/

namespace A058005.P4175559700764397230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (2 * (n + 1))

end

end A058005.P4175559700764397230

namespace A058005

/-- `A057815(2*(n+1))` -/
def P4175559700764397230.Spec : Prop :=
  ∀ n, P4175559700764397230.a n = A058005 (n + 1)

end A058005

/-! ## A058005.P16849240775479455326

`2*(n+1)/A049077(2*(n+1))`
-/

namespace A058005.P16849240775479455326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℚ) / (A049077 (2 * (n + 1)) : ℚ))

end

end A058005.P16849240775479455326

namespace A058005

/-- `2*(n+1)/A049077(2*(n+1))` -/
def P16849240775479455326.Spec : Prop :=
  ∀ n, P16849240775479455326.a n = (A058005 (n + 1) : ℚ)

end A058005

/-! ## A058005.P8604750588635772433

`filter[A057815(n+1), A059841(#)]`
-/

namespace A058005.P8604750588635772433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A058005.P8604750588635772433

namespace A058005

/-- `filter[A057815(n+1), A059841(#)]` -/
def P8604750588635772433.Spec : Prop :=
  ∀ n, P8604750588635772433.a n = A058005 (n + 1)

end A058005

/-! ## A058005.P1810163777792572720

`filter[A057815(n+2), A135528(#)]`
-/

namespace A058005.P1810163777792572720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A058005.P1810163777792572720

namespace A058005

/-- `filter[A057815(n+2), A135528(#)]` -/
def P1810163777792572720.Spec : Prop :=
  ∀ n, P1810163777792572720.a n = A058005 (n + 1)

end A058005

/-! ## A058005.P1295894875875938438

`filter[A057815(n+2), A266591(#)]`
-/

namespace A058005.P1295894875875938438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A058005.P1295894875875938438

namespace A058005

/-- `filter[A057815(n+2), A266591(#)]` -/
def P1295894875875938438.Spec : Prop :=
  ∀ n, P1295894875875938438.a n = A058005 (n + 1)

end A058005

/-! ## A058005.P17546075837493398681

`A004277(n+1)/A049077(2*(n+1))`
-/

namespace A058005.P17546075837493398681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) : ℚ) / (A049077 (2 * (n + 1)) : ℚ)

end

end A058005.P17546075837493398681

namespace A058005

/-- `A004277(n+1)/A049077(2*(n+1))` -/
def P17546075837493398681.Spec : Prop :=
  ∀ n, P17546075837493398681.a n = (A058005 (n + 1) : ℚ)

end A058005

/-! ## A058005.P9629419890883580545

`gcd(n*A263931(n+1), A131738(2*n+1))`
-/

namespace A058005.P9629419890883580545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) * A263931 (n + 1)) (A131738 (2 * n + 1))

end

end A058005.P9629419890883580545

namespace A058005

/-- `gcd(n*A263931(n+1), A131738(2*n+1))` -/
def P9629419890883580545.Spec : Prop :=
  ∀ n, (P9629419890883580545.a n : ℤ) = A058005 (n + 1)

end A058005

/-! ## A058005.P2551710714789945217

`2*gcd(n+1, A000108(n))`
-/

namespace A058005.P2551710714789945217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (n + 1 : ℤ) (A000108 n)

end

end A058005.P2551710714789945217

namespace A058005

/-- `2*gcd(n+1, A000108(n))` -/
def P2551710714789945217.Spec : Prop :=
  ∀ n, (P2551710714789945217.a n : ℤ) = A058005 (n + 1)

end A058005

/-! ## A058005.P3767195611271069045

`A004277(gcd(n+1, A000108(n)))`
-/

namespace A058005.P3767195611271069045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (Int.gcd (n + 1 : ℤ) (A000108 n))

end

end A058005.P3767195611271069045

namespace A058005

/-- `A004277(gcd(n+1, A000108(n)))` -/
def P3767195611271069045.Spec : Prop :=
  ∀ n, P3767195611271069045.a n = A058005 (n + 1)

end A058005

/-! ## A058005.P13659375788648841545

`2*gcd(A009474(n+1), A168491(n))`
-/

namespace A058005.P13659375788648841545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Int.gcd (A009474 (n + 1)) (A168491 n)

end

end A058005.P13659375788648841545

namespace A058005

/-- `2*gcd(A009474(n+1), A168491(n))` -/
def P13659375788648841545.Spec : Prop :=
  ∀ n, (P13659375788648841545.a n : ℤ) = A058005 (n + 1)

end A058005

/-!
# A058006: Alternating factorials: 0! - 1! + 2! - ... + (-1)^n n!

The programs for A058006, the canonical program `A058006.P4738084839548430624` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058006 has offset 0).

The definition of A058006 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058006.P4738084839548430624

`A005165(n)*(-1)^n+1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058006

/-- `A005165(n)*(-1)^n+1` -/
def P4738084839548430624.Spec : Prop :=
  ∀ n, P4738084839548430624.a n = A058006 n

theorem P4738084839548430624.correct : P4738084839548430624.Spec := by
  intro n
  simp only [A058006]

end A058006

/-! ## A058006.P4044889798909874337

`∑[∏[floor(acot(n)-n)]]`
-/

namespace A058006.P4044889798909874337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058006.P4044889798909874337

namespace A058006

/-- `∑[∏[floor(acot(n)-n)]]` -/
def P4044889798909874337.Spec : Prop :=
  ∀ n, P4044889798909874337.a n = A058006 n

end A058006

/-! ## A058006.P1850378392667935484

`∑[(-1)^n*n!]`
-/

namespace A058006.P1850378392667935484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058006.P1850378392667935484

namespace A058006

/-- `∑[(-1)^n*n!]` -/
def P1850378392667935484.Spec : Prop :=
  ∀ n, P1850378392667935484.a n = A058006 n

end A058006

/-! ## A058006.P11526894223405753720

`∑[n!/(-1)^n]`
-/

namespace A058006.P11526894223405753720
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058006.P11526894223405753720

namespace A058006

/-- `∑[n!/(-1)^n]` -/
def P11526894223405753720.Spec : Prop :=
  ∀ n, P11526894223405753720.a n = (A058006 n : ℚ)

end A058006

/-! ## A058006.P680036538143036377

`∑[-(n*a(n-1))]` with `a(0)=1`
-/

namespace A058006.P680036538143036377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  -((n : ℤ) * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058006.P680036538143036377

namespace A058006

/-- `∑[-(n*a(n-1))]` -/
def P680036538143036377.Spec : Prop :=
  ∀ n, P680036538143036377.a n = A058006 n

end A058006

/-! ## A058006.P14550375839365423993

`∑[∏[floor(1/(n+1)-n)]]`
-/

namespace A058006.P14550375839365423993
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (n + 1 : ℚ) - (n : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058006.P14550375839365423993

namespace A058006

/-- `∑[∏[floor(1/(n+1)-n)]]` -/
def P14550375839365423993.Spec : Prop :=
  ∀ n, P14550375839365423993.a n = A058006 n

end A058006

/-! ## A058006.P6489400318400960631

`a(n-1)+(-1)^n*n!` with `a(0)=1`
-/

namespace A058006.P6489400318400960631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (-1) ^ n * (Nat.factorial n : ℤ)

end

end A058006.P6489400318400960631

namespace A058006

/-- `a(n-1)+(-1)^n*n!` -/
def P6489400318400960631.Spec : Prop :=
  ∀ n, P6489400318400960631.a n = A058006 n

end A058006

/-! ## A058006.P5833988524480062697

`∑[(n-2*n)*a(n-1)]/2` with `a(0)=2`
-/

namespace A058006.P5833988524480062697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((n : ℤ) - (2 * n : ℤ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A058006.P5833988524480062697

namespace A058006

/-- `∑[(n-2*n)*a(n-1)]/2` -/
def P5833988524480062697.Spec : Prop :=
  ∀ n, P5833988524480062697.a n = (A058006 n : ℚ)

end A058006

/-! ## A058006.P3520970911811154700

`floor(∑[a(n-1)-(n+1)*a(n-1)])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A058006.P3520970911811154700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (n + 1 : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058006.P3520970911811154700

namespace A058006

/-- `floor(∑[a(n-1)-(n+1)*a(n-1)])` -/
def P3520970911811154700.Spec : Prop :=
  ∀ n, P3520970911811154700.a n = A058006 n

end A058006

/-! ## A058006.P16486423798100879668

`ceil(∑[a(n-1)-(n+1)*a(n-1)])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A058006.P16486423798100879668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (n + 1 : ℤ) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058006.P16486423798100879668

namespace A058006

/-- `ceil(∑[a(n-1)-(n+1)*a(n-1)])` -/
def P16486423798100879668.Spec : Prop :=
  ∀ n, P16486423798100879668.a n = A058006 n

end A058006

/-!
# A058007: Freestyle perfect numbers n = Product_{i=1..k} f_i^e_i where 1 < f_1 < ... < f_k, e_i > 0, such that 2n = Product_{i=1..k} (f_i^(e_i+1)-1)/(f_i-1).

The programs for A058007, there is no canonical definition to state claims against.
-/

/-! ## A058007.P11816042349969649275

`∪[A171496(n), A174292(n+1)]`
-/

namespace A058007.P11816042349969649275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171496 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A058007.P11816042349969649275

/-! ## A058007.P9018263830965222881

`∪[A000396(n+1), A174292(n+1)]%A139229(n+1)`
-/

namespace A058007.P9018263830965222881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174292 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A139229 (n + 1))

end

end A058007.P9018263830965222881

/-!
# A058008: Numbers k such that (2*k - 1)!/(k!)^2 is an integer.

The programs for A058008, there is no canonical definition to state claims against.
-/

/-! ## A058008.P5084842874258708313

`A067348(n+1)/2`
-/

namespace A058008.P5084842874258708313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067348 (n + 1) : ℚ) / 2

end

end A058008.P5084842874258708313

/-! ## A058008.P6943403157077191315

`lt[A080383(2*n+1), 2*A080383(2*n)]`
-/

namespace A058008.P6943403157077191315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080383 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080383 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A058008.P6943403157077191315

/-! ## A058008.P16784933817550270085

`(A056067(2*n+1)+1)/2`
-/

namespace A058008.P16784933817550270085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056067 (2 * n + 1) + 1 : ℚ) / 2

end

end A058008.P16784933817550270085

/-! ## A058008.P4699591941051498131

`eq[0, A053214(n)]`
-/

namespace A058008.P4699591941051498131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058008.P4699591941051498131

/-! ## A058008.P5357095309957770348

`record[A333461(n+1)]`
-/

namespace A058008.P5357095309957770348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058008.P5357095309957770348

/-! ## A058008.P6571416650163127109

`record[A058005(n+1)/2]`
-/

namespace A058008.P6571416650163127109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058005 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058008.P6571416650163127109

/-! ## A058008.P10695541967208375139

`eq[1, A201059(n+1)]+1`
-/

namespace A058008.P10695541967208375139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058008.P10695541967208375139

/-! ## A058008.P3009075226927806294

`record[gcd(n+1, A099908(n+1))]`
-/

namespace A058008.P3009075226927806294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A099908 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058008.P3009075226927806294

/-! ## A058008.P11349971404002969938

`eq[0, A042970(2*(n+1))]+1`
-/

namespace A058008.P11349971404002969938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058008.P11349971404002969938

/-! ## A058008.P17940309108997461917

`lt[A042970(2*n+2), 1]+1`
-/

namespace A058008.P17940309108997461917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042970 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A058008.P17940309108997461917

/-! ## A058008.P15460611274625461395

`eq[1, A000007(A099905(n+1))]+1`
-/

namespace A058008.P15460611274625461395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A099905 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058008.P15460611274625461395

/-! ## A058008.P11772099501952919182

`eq[A000007(n), A099905(A000007(n)+n)]`
-/

namespace A058008.P11772099501952919182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099905 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058008.P11772099501952919182

/-! ## A058008.P9030459192490560810

`∩[A042996(n+1), A005843(n)]/2`
-/

namespace A058008.P9030459192490560810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A058008.P9030459192490560810

/-! ## A058008.P2196968969132178855

`∩[A042996(n+1), A048618(n+1)]/2`
-/

namespace A058008.P2196968969132178855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048618 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A058008.P2196968969132178855

/-! ## A058008.P12371567844753972137

`∩[A042996(n+1), A139270(n+1)]/2`
-/

namespace A058008.P12371567844753972137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139270 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A058008.P12371567844753972137

/-! ## A058008.P4517110519112721740

`∩[A042996(n+1), A176100(n+1)]/2`
-/

namespace A058008.P4517110519112721740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176100 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A058008.P4517110519112721740

/-! ## A058008.P2233490800113823506

`record[A057815(2*(n+1))]/2`
-/

namespace A058008.P2233490800113823506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A058008.P2233490800113823506

/-! ## A058008.P6701254955639532982

`eq[1, A049077(2*(n+1))]+1`
-/

namespace A058008.P6701254955639532982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058008.P6701254955639532982

/-! ## A058008.P10003214445386929516

`A001281(A067348(n+1))`
-/

namespace A058008.P10003214445386929516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A067348 (n + 1)).toNat

end

end A058008.P10003214445386929516

/-!
# A058009: a(n) is obtained by applying the map k -> prime(k) n times, starting at n.

The programs for A058009, there is no canonical definition to state claims against.
-/

/-! ## A058009.P17111847375679937989

`A227413(A000079(n+1)*A135141(n+1))`
-/

namespace A058009.P17111847375679937989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A000079 (n + 1) * A135141 (n + 1)).toNat

end

end A058009.P17111847375679937989

/-! ## A058009.P2898371457082800046

`A227413(A135141(n+1)*A252757(n+2))`
-/

namespace A058009.P2898371457082800046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227413 (A135141 (n + 1) * A252757 (n + 2)).toNat

end

end A058009.P2898371457082800046

/-!
# A058010: The main diagonal of N. Fernandez's Order of Primeness array.

The programs for A058010, there is no canonical definition to state claims against.
-/

/-! ## A058010.P9870861959828334323

`A114537(2*(n+1)²)`
-/

namespace A058010.P9870861959828334323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (2 * (n + 1) ^ 2)

end

end A058010.P9870861959828334323

/-! ## A058010.P7936323766051016960

`record[A114537(A168281(n+1))]`
-/

namespace A058010.P7936323766051016960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A168281 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058010.P7936323766051016960

/-! ## A058010.P1801588296192477945

`record[gcd(A002349(2*(n+2)), A114537(n+2))]`
-/

namespace A058010.P1801588296192477945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002349 (2 * (n + 2))) (A114537 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058010.P1801588296192477945

/-! ## A058010.P8909781428235104019

`A359911(n+1)+A114537(A001105(n+1))`
-/

namespace A058010.P8909781428235104019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359911 (n + 1) + A114537 (A001105 (n + 1)).toNat

end

end A058010.P8909781428235104019

/-! ## A058010.P10475755160895550511

`A114537(A080476(2*(n+1)))+A035655(n+1)`
-/

namespace A058010.P10475755160895550511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114537 (A080476 (2 * (n + 1))).toNat + A035655 (n + 1)

end

end A058010.P10475755160895550511

/-!
# A058011: Consider the sequence {b(m)} of nonprimes; sequence gives values of m where gcd{m, b(m)} increases.

The programs for A058011, there is no canonical definition to state claims against.
-/

/-! ## A058011.P10402564222634192761

`A057809(n+1)-floor(acot(n))`
-/

namespace A058011.P10402564222634192761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A058011.P10402564222634192761

/-! ## A058011.P10405366739697423162

`A087238(n+1)+a(n-1)` with `a(0)=1, a(1)=4`
-/

namespace A058011.P10405366739697423162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A087238 (n + 1) + a (n - 1)

end

end A058011.P10405366739697423162

/-! ## A058011.P13850179159680782132

`A057809((n+1)%a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A058011.P13850179159680782132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A057809 (Int.tmod (n + 1 : ℤ) (a (n - 1))).toNat

end

end A058011.P13850179159680782132

/-! ## A058011.P5782094855273519433

`A057809(a(floor(3/(n+21)))+n)` with `a(0)=1`
-/

namespace A058011.P5782094855273519433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057809 (a ⌊3 / (n + 21 : ℚ)⌋.toNat + (n : ℤ)).toNat

end

end A058011.P5782094855273519433

/-! ## A058011.P3647486437668483522

`A057809(n*a(C(2, n+2))+1)` with `a(0)=1`
-/

namespace A058011.P3647486437668483522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A057809 ((n : ℤ) * a (Nat.choose 2 (n + 2)) + 1).toNat

end

end A058011.P3647486437668483522

/-! ## A058011.P11588245493407657056

`A057809(n+1)-A000007(n)`
-/

namespace A058011.P11588245493407657056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (n + 1) - A000007 n

end

end A058011.P11588245493407657056

/-! ## A058011.P5348200860257143389

`A057809(n+1)-A151878(n)`
-/

namespace A058011.P5348200860257143389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057809 (n + 1) - A151878 n

end

end A058011.P5348200860257143389

/-! ## A058011.P16393585463312071030

`A057809(n+1)/A054977(n)`
-/

namespace A058011.P16393585463312071030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057809 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A058011.P16393585463312071030

/-! ## A058011.P1821303184144041906

`A057809(n+1)/A049076(2*(n+1))`
-/

namespace A058011.P1821303184144041906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057809 (n + 1) : ℚ) / (A049076 (2 * (n + 1)) : ℚ)

end

end A058011.P1821303184144041906

/-! ## A058011.P14952363854131805762

`A057809(n+1)/gcd(2, A000040(n+1))`
-/

namespace A058011.P14952363854131805762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057809 (n + 1) : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A058011.P14952363854131805762

/-!
# A058013: Smallest prime p such that (n+1)^p - n^p is prime.

The programs for A058013, there is no canonical definition to state claims against.
-/

/-! ## A058013.P6338719751793607384

`A020639(A156707(n+1)+A125713(n+1))`
-/

namespace A058013.P6338719751793607384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A156707 (n + 1) + A125713 (n + 1)).toNat

end

end A058013.P6338719751793607384

/-! ## A058013.P13287259719885526406

`A230578(A034887(n)*A115990(n))`
-/

namespace A058013.P13287259719885526406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230578 (A034887 n * A115990 n).toNat

end

end A058013.P13287259719885526406

/-!
# A058014: Number of labeled trees with n+1 nodes such that the degrees of all nodes, excluding the first node, are odd.

The programs for A058014, the canonical program `A058014.P5116330216672823960` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058014 has offset 0).

The definition of A058014 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058014.P5116330216672823960

`1/2^n*∑{#}[n, C(n, #)*(n+1-2*#)^(n-1)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058014

/-- `1/2^n*∑{#}[n, C(n, #)*(n+1-2*#)^(n-1)]` -/
def P5116330216672823960.Spec : Prop :=
  ∀ n, P5116330216672823960.a n = (A058014 n : ℚ)

end A058014

/-! ## A058014.P1266112317826288145

`A303489(n)+A004526(A293488(n))`
-/

namespace A058014.P1266112317826288145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303489 n + A004526 (A293488 n).toNat

end

end A058014.P1266112317826288145

namespace A058014

/-- `A303489(n)+A004526(A293488(n))` -/
def P1266112317826288145.Spec : Prop :=
  ∀ n, P1266112317826288145.a n = A058014 n

end A058014

/-! ## A058014.P10745840581318527910

`A137235(A293488(n)+A265157(n))`
-/

namespace A058014.P10745840581318527910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137235 (A293488 n + A265157 n).toNat

end

end A058014.P10745840581318527910

namespace A058014

/-- `A137235(A293488(n)+A265157(n))` -/
def P10745840581318527910.Spec : Prop :=
  ∀ n, P10745840581318527910.a n = A058014 n

end A058014

/-!
# A058017: a(n) is the smallest prime > LCM(1,...,x), where x is the n-th prime power (A000961).

The programs for A058017, the canonical program `A058017.P15612378644590073186` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058017 has offset 1).

The definition of A058017 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051451, A151800, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A058017.P17506591935039060456

`A051451(n+1)+A058018(n+1)`
-/

namespace A058017.P17506591935039060456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 1) + A058018 (n + 1)

end

end A058017.P17506591935039060456

namespace A058017

/-- `A051451(n+1)+A058018(n+1)` -/
def P17506591935039060456.Spec : Prop :=
  ∀ n, P17506591935039060456.a n = A058017 (n + 1)

theorem P17506591935039060456.correct : P17506591935039060456.Spec := by
  intro n
  simp only [A058017, Nat.add_sub_cancel, A058017.P17506591935039060456.a, A058017.P15612378644590073186.a, A051451, A051451.P7656855382918326739.a, A058018, A058018.P11285752739578243826.a, A151800, A151800.P4570031678714564115.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003418, A003418.P6976248655893080794.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000079, A000079.P10855139691139572931.a, A008864, A008864.P9177617808325052279.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058017

/-! ## A058017.P15612378644590073186

`A151800(A051451(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A058017

/-- `A151800(A051451(n+1))` -/
def P15612378644590073186.Spec : Prop :=
  ∀ n, P15612378644590073186.a n = A058017 (n + 1)

theorem P15612378644590073186.correct : P15612378644590073186.Spec := by
  intro n
  simp only [A058017, Nat.add_sub_cancel]

end A058017

/-! ## A058017.P11795087538609722058

`record[A060357(A008611(n))]`
-/

namespace A058017.P11795087538609722058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058017.P11795087538609722058

namespace A058017

/-- `record[A060357(A008611(n))]` -/
def P11795087538609722058.Spec : Prop :=
  ∀ n, P11795087538609722058.a n = A058017 (n + 1)

end A058017

/-! ## A058017.P18246765013084505142

`record[A060357(A110657(n))]`
-/

namespace A058017.P18246765013084505142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (A110657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058017.P18246765013084505142

namespace A058017

/-- `record[A060357(A110657(n))]` -/
def P18246765013084505142.Spec : Prop :=
  ∀ n, P18246765013084505142.a n = A058017 (n + 1)

end A058017

/-! ## A058017.P12990580712573058177

`record[A060357(A331303(n))]`
-/

namespace A058017.P12990580712573058177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (A331303 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058017.P12990580712573058177

namespace A058017

/-- `record[A060357(A331303(n))]` -/
def P12990580712573058177.Spec : Prop :=
  ∀ n, P12990580712573058177.a n = A058017 (n + 1)

end A058017

/-! ## A058017.P7677554668276848213

`A060357(A000961(n+1))`
-/

namespace A058017.P7677554668276848213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (A000961 (n + 1)).toNat

end

end A058017.P7677554668276848213

namespace A058017

/-- `A060357(A000961(n+1))` -/
def P7677554668276848213.Spec : Prop :=
  ∀ n, P7677554668276848213.a n = A058017 (n + 1)

end A058017

/-! ## A058017.P9979735495317255251

`A060357(A181062(n+2))`
-/

namespace A058017.P9979735495317255251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060357 (A181062 (n + 2)).toNat

end

end A058017.P9979735495317255251

namespace A058017

/-- `A060357(A181062(n+2))` -/
def P9979735495317255251.Spec : Prop :=
  ∀ n, P9979735495317255251.a n = A058017 (n + 1)

end A058017

/-! ## A058017.P9891701780624548115

`A058018(n+1)+A208768(n+1)+1`
-/

namespace A058017.P9891701780624548115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058018 (n + 1) + (A208768 (n + 1) + 1)

end

end A058017.P9891701780624548115

namespace A058017

/-- `A058018(n+1)+A208768(n+1)+1` -/
def P9891701780624548115.Spec : Prop :=
  ∀ n, P9891701780624548115.a n = A058017 (n + 1)

end A058017

/-! ## A058017.P3609808211202285568

`A058018(n+1)+A003418(A000961(n+1))`
-/

namespace A058017.P3609808211202285568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058018 (n + 1) + A003418 (A000961 (n + 1)).toNat

end

end A058017.P3609808211202285568

namespace A058017

/-- `A058018(n+1)+A003418(A000961(n+1))` -/
def P3609808211202285568.Spec : Prop :=
  ∀ n, P3609808211202285568.a n = A058017 (n + 1)

theorem P3609808211202285568.correct : P3609808211202285568.Spec := by
  intro n
  simp only [A058017, Nat.add_sub_cancel, A058017.P3609808211202285568.a, A058017.P15612378644590073186.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003418, A003418.P6976248655893080794.a, A051451, A051451.P7656855382918326739.a, A058018, A058018.P11285752739578243826.a, A151800, A151800.P4570031678714564115.a, A000079, A000079.P10855139691139572931.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, A073491, A073491.P6445803315451258056.f1, A073491.P6445803315451258056.f2, A073491.P6445803315451258056.a, A340363, A340363.P15438000431600784952.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058017

/-!
# A058018: Difference between LCM(1,...,x) and the smallest prime > LCM(1,...,x), where x is the n-th prime power (A000961).

The programs for A058018, the canonical program `A058018.P11285752739578243826` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058018 has offset 1).

The definition of A058018 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051451, A058017, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A058018.P11285752739578243826

`A058017(n+1)-A051451(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A058018

/-- `A058017(n+1)-A051451(n+1)` -/
def P11285752739578243826.Spec : Prop :=
  ∀ n, P11285752739578243826.a n = A058018 (n + 1)

theorem P11285752739578243826.correct : P11285752739578243826.Spec := by
  intro n
  simp only [A058018, Nat.add_sub_cancel]

end A058018

/-! ## A058018.P5904100896728187598

`A060361(A000961(n+1))`
-/

namespace A058018.P5904100896728187598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (A000961 (n + 1)).toNat

end

end A058018.P5904100896728187598

namespace A058018

/-- `A060361(A000961(n+1))` -/
def P5904100896728187598.Spec : Prop :=
  ∀ n, P5904100896728187598.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P6622638280356219678

`A060361(A225657(n+2))`
-/

namespace A058018.P6622638280356219678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (A225657 (n + 2)).toNat

end

end A058018.P6622638280356219678

namespace A058018

/-- `A060361(A225657(n+2))` -/
def P6622638280356219678.Spec : Prop :=
  ∀ n, P6622638280356219678.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P12504101411918699822

`A060361(eq[1, A231813(n)])`
-/

namespace A058018.P12504101411918699822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058018.P12504101411918699822

namespace A058018

/-- `A060361(eq[1, A231813(n)])` -/
def P12504101411918699822.Spec : Prop :=
  ∀ n, P12504101411918699822.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P3064364604027228172

`A060361(eq[1, A327778(n)])`
-/

namespace A058018.P3064364604027228172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058018.P3064364604027228172

namespace A058018

/-- `A060361(eq[1, A327778(n)])` -/
def P3064364604027228172.Spec : Prop :=
  ∀ n, P3064364604027228172.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P8728346131178432207

`A060361(sqrt(A056798(n+1)))`
-/

namespace A058018.P8728346131178432207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (SequenceMachineLib.roundAway (Real.sqrt (A056798 (n + 1) : ℝ))).toNat

end

end A058018.P8728346131178432207

namespace A058018

/-- `A060361(sqrt(A056798(n+1)))` -/
def P8728346131178432207.Spec : Prop :=
  ∀ n, P8728346131178432207.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P15652420606099327191

`A060361(record[A034699(n+1)])`
-/

namespace A058018.P15652420606099327191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058018.P15652420606099327191

namespace A058018

/-- `A060361(record[A034699(n+1)])` -/
def P15652420606099327191.Spec : Prop :=
  ∀ n, P15652420606099327191.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P12843039495785392239

`A060361(record[A222416(n+1)])`
-/

namespace A058018.P12843039495785392239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058018.P12843039495785392239

namespace A058018

/-- `A060361(record[A222416(n+1)])` -/
def P12843039495785392239.Spec : Prop :=
  ∀ n, P12843039495785392239.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P5515379862236274341

`A060361(A181062(n+1)+1)`
-/

namespace A058018.P5515379862236274341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (A181062 (n + 1) + 1).toNat

end

end A058018.P5515379862236274341

namespace A058018

/-- `A060361(A181062(n+1)+1)` -/
def P5515379862236274341.Spec : Prop :=
  ∀ n, P5515379862236274341.a n = A058018 (n + 1)

theorem P5515379862236274341.correct : P5515379862236274341.Spec := by
  intro n
  simp only [A058018, Nat.add_sub_cancel, A058018.P5515379862236274341.a, A058018.P11285752739578243826.a, A051451, A051451.P7656855382918326739.a, A058017, A058017.P15612378644590073186.a, A060361, A060361.P4009678370881410838.a, A181062, A181062.P6529548857799504333.a, A000961, A000961.P15008477845107890738.f1, A000961.P15008477845107890738.f2, A000961.P15008477845107890738.a, A003418, A003418.P6976248655893080794.a, A060357, A060357.P5151139434586093012.a, A151800, A151800.P4570031678714564115.a, A000079, A000079.P10855139691139572931.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A061345, A061345.P12671314331313567408.f1, A061345.P12671314331313567408.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A081061, A081061.P11142281922485975947.f1, A081061.P11142281922485975947.a, A374134, A374134.P15663071369572716484.f1, A374134.P15663071369572716484.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058018

/-! ## A058018.P661137877089708421

`A060361(lt[A001221(n+1), 2]+1)`
-/

namespace A058018.P661137877089708421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A058018.P661137877089708421

namespace A058018

/-- `A060361(lt[A001221(n+1), 2]+1)` -/
def P661137877089708421.Spec : Prop :=
  ∀ n, P661137877089708421.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P12367191506188654405

`A060361(record[n/a(A001221(n))])` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A058018.P12367191506188654405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  (n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A058018.P12367191506188654405

namespace A058018

/-- `A060361(record[n/a(A001221(n))])` -/
def P12367191506188654405.Spec : Prop :=
  ∀ n, P12367191506188654405.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P13655579153074841108

`A060361(record[(n+1)/A001221(n+1)!])`
-/

namespace A058018.P13655579153074841108
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.factorial (A001221 (n + 1)).toNat : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A058018.P13655579153074841108

namespace A058018

/-- `A060361(record[(n+1)/A001221(n+1)!])` -/
def P13655579153074841108.Spec : Prop :=
  ∀ n, P13655579153074841108.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P14971476662163681938

`A060361(record[A020639(n+1)^A001222(n+1)])`
-/

namespace A058018.P14971476662163681938
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (n + 1) : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A058018.P14971476662163681938

namespace A058018

/-- `A060361(record[A020639(n+1)^A001222(n+1)])` -/
def P14971476662163681938.Spec : Prop :=
  ∀ n, P14971476662163681938.a n = A058018 (n + 1)

end A058018

/-! ## A058018.P15776195029093280754

`A060361(A181062(n+2))`
-/

namespace A058018.P15776195029093280754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060361 (A181062 (n + 2)).toNat

end

end A058018.P15776195029093280754

namespace A058018

/-- `A060361(A181062(n+2))` -/
def P15776195029093280754.Spec : Prop :=
  ∀ n, P15776195029093280754.a n = A058018 (n + 1)

end A058018

/-!
# A058019: a(n) is the smallest prime > A051451(n)+1.

The programs for A058019, there is no canonical definition to state claims against.
-/

/-! ## A058019.P1519234857678031225

`A058020(n+1)+A051451(n+2)`
-/

namespace A058019.P1519234857678031225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058020 (n + 1) + A051451 (n + 2)

end

end A058019.P1519234857678031225

/-! ## A058019.P8874886026385182913

`A058020(n+1)+A003418(A246655(n+1))`
-/

namespace A058019.P8874886026385182913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058020 (n + 1) + A003418 (A246655 (n + 1)).toNat

end

end A058019.P8874886026385182913

/-! ## A058019.P9704168369490167371

`A058020(n+1)+A003418(A000961(n+2))`
-/

namespace A058019.P9704168369490167371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058020 (n + 1) + A003418 (A000961 (n + 2)).toNat

end

end A058019.P9704168369490167371

/-! ## A058019.P6776645975427607992

`A058020(n+1)+A058029(n)-A058030(n)`
-/

namespace A058019.P6776645975427607992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058020 (n + 1) + (A058029 n - A058030 n)

end

end A058019.P6776645975427607992

/-!
# A058020: Difference between lcm(1,..,n) and the smallest prime > lcm(1,...,n) + 1, where n runs over A000961, lcm(n) runs through A051451.

The programs for A058020, there is no canonical definition to state claims against.
-/

/-! ## A058020.P15394167386773537226

`A058019(n+2)-A051451(n+2)`
-/

namespace A058020.P15394167386773537226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058019 (n + 2) - A051451 (n + 2)

end

end A058020.P15394167386773537226

/-! ## A058020.P16779525206807309340

`A058019(n+2)-A003418(A246655(n+1))`
-/

namespace A058020.P16779525206807309340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058019 (n + 2) - A003418 (A246655 (n + 1)).toNat

end

end A058020.P16779525206807309340

/-! ## A058020.P17140935098610191138

`A058019(n+2)-A003418(A000961(n+2))`
-/

namespace A058020.P17140935098610191138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058019 (n + 2) - A003418 (A000961 (n + 2)).toNat

end

end A058020.P17140935098610191138

/-! ## A058020.P2404926060104600745

`A058019(n+2)+A058030(n)-A058029(n)`
-/

namespace A058020.P2404926060104600745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058019 (n + 2) + (A058030 n - A058029 n)

end

end A058020.P2404926060104600745

/-! ## A058020.P10993932897572872476

`or(comp[∑[n]], A254578(3^n))`
-/

namespace A058020.P10993932897572872476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A254578 (3 ^ n))

end

end A058020.P10993932897572872476

/-!
# A058021: Largest prime preceding distinct values of lcm(1,...,m): Max{p|p < A003418(A000961(n))}. To get different LCM values, the last arguments(m) of LCM were selected from A000961.

The programs for A058021, there is no canonical definition to state claims against.
-/

/-! ## A058021.P5865419812839002117

`A051451(n+1)-A058022(n+1)`
-/

namespace A058021.P5865419812839002117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 1) - A058022 (n + 1)

end

end A058021.P5865419812839002117

/-! ## A058021.P7855810307417613732

`∏[A025473(n+1)]-A058022(n+1)`
-/

namespace A058021.P7855810307417613732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A058022 (n + 1)

end

end A058021.P7855810307417613732

/-! ## A058021.P16312863150534009759

`record[A003418(A008611(n))]-A058022(n+1)`
-/

namespace A058021.P16312863150534009759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A058022 (n + 1)

end

end A058021.P16312863150534009759

/-! ## A058021.P1731306478392211781

`record[A003418(A025480(n))]-A058022(n+1)`
-/

namespace A058021.P1731306478392211781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A058022 (n + 1)

end

end A058021.P1731306478392211781

/-! ## A058021.P2956327740781677984

`A003418(A000961(n+1))-A058022(n+1)`
-/

namespace A058021.P2956327740781677984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000961 (n + 1)).toNat - A058022 (n + 1)

end

end A058021.P2956327740781677984

/-! ## A058021.P1331632612169247522

`∏[A006530(A056798(n+1))]-A058022(n+1)`
-/

namespace A058021.P1331632612169247522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A056798 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A058022 (n + 1)

end

end A058021.P1331632612169247522

/-! ## A058021.P4207740784366749306

`record[A003418(A004788(n))]-A058022(n+1)`
-/

namespace A058021.P4207740784366749306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A004788 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A058022 (n + 1)

end

end A058021.P4207740784366749306

/-!
# A058022: Difference between lcm(1,..,n) and the largest prime before lcm(1,..,n) where n runs over the prime powers A000961, LCMs are in A051451.

The programs for A058022, there is no canonical definition to state claims against.
-/

/-! ## A058022.P2846649154067668516

`A051451(n+1)-A058021(n)`
-/

namespace A058022.P2846649154067668516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 1) - A058021 n

end

end A058022.P2846649154067668516

/-! ## A058022.P4956266849560866214

`∏[A025473(n+1)]-A058021(n)`
-/

namespace A058022.P4956266849560866214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A058021 n

end

end A058022.P4956266849560866214

/-! ## A058022.P18135950192004273524

`A051452(n+1)-(A058021(n)+1)`
-/

namespace A058022.P18135950192004273524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051452 (n + 1) - (A058021 n + 1)

end

end A058022.P18135950192004273524

/-! ## A058022.P11190651292413560585

`A003418(A000961(n+1))-A058021(n)`
-/

namespace A058022.P11190651292413560585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000961 (n + 1)).toNat - A058021 n

end

end A058022.P11190651292413560585

/-! ## A058022.P3595525440587957510

`A058017(n+1)-(A058021(n)+A058018(n+1))`
-/

namespace A058022.P3595525440587957510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058017 (n + 1) - (A058021 n + A058018 (n + 1))

end

end A058022.P3595525440587957510

/-!
# A058023: a(n) is the largest prime < A051451(n) - 1.

The programs for A058023, there is no canonical definition to state claims against.
-/

/-! ## A058023.P4243978909082216309

`A051451(n+3)-A058024(n+3)`
-/

namespace A058023.P4243978909082216309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 3) - A058024 (n + 3)

end

end A058023.P4243978909082216309

/-! ## A058023.P13095519098214615341

`A003418(A000961(n+3))-A058024(n+3)`
-/

namespace A058023.P13095519098214615341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000961 (n + 3)).toNat - A058024 (n + 3)

end

end A058023.P13095519098214615341

/-!
# A058024: a(n) = A051451(n) - A058023(n).

The programs for A058024, there is no canonical definition to state claims against.
-/

/-! ## A058024.P7804726200637637099

`A051451(n+3)-A058023(n+3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058024.P7804726200637637099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051451 (n + 3) - A058023 (n + 3)

end

end A058024.P7804726200637637099

/-! ## A058024.P2853892372242057766

`A003418(A246655(n+2))-A058023(n+3)`
-/

namespace A058024.P2853892372242057766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A246655 (n + 2)).toNat - A058023 (n + 3)

end

end A058024.P2853892372242057766

/-! ## A058024.P16561361625915843970

`A003418(A000961(n+3))-A058023(n+3)`
-/

namespace A058024.P16561361625915843970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A000961 (n + 3)).toNat - A058023 (n + 3)

end

end A058024.P16561361625915843970

/-!
# A058025: Numbers k such that 3*13^k - 2 is prime.

The programs for A058025, there is no canonical definition to state claims against.
-/

/-! ## A058025.P4654783385653483525

`A034699(A027907(n)+A006879(n))`
-/

namespace A058025.P4654783385653483525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A027907 n + A006879 n).toNat

end

end A058025.P4654783385653483525

/-! ## A058025.P7159499614731501409

`A034699(A026148(n+1)+A006879(n))`
-/

namespace A058025.P7159499614731501409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A026148 (n + 1) + A006879 n).toNat

end

end A058025.P7159499614731501409

/-!
# A058026: Number of positive integers, k, where k <= n and gcd(k,n) = gcd(k+1,n) = 1.

The programs for A058026, the canonical program `A058026.P8969370347995521029` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058026 has offset 1).

The definition of A058026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058026.P1274813694566494257

`∑{d}[n+1, A008683(#)*A306408((n+1)/#)]`
-/

namespace A058026.P1274813694566494257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A306408 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A058026.P1274813694566494257

namespace A058026

/-- `∑{d}[n+1, A008683(#)*A306408((n+1)/#)]` -/
def P1274813694566494257.Spec : Prop :=
  ∀ n, P1274813694566494257.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P11262130670836271135

`∑{d}[n+1, A000203((n+1)/#)*A326814(#)]`
-/

namespace A058026.P11262130670836271135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A326814 d

end

end A058026.P11262130670836271135

namespace A058026

/-- `∑{d}[n+1, A000203((n+1)/#)*A326814(#)]` -/
def P11262130670836271135.Spec : Prop :=
  ∀ n, P11262130670836271135.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P12269946734574490229

`∑{d}[n+1, A007432((n+1)/#)*A326815(#)]`
-/

namespace A058026.P12269946734574490229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A326815 d

end

end A058026.P12269946734574490229

namespace A058026

/-- `∑{d}[n+1, A007432((n+1)/#)*A326815(#)]` -/
def P12269946734574490229.Spec : Prop :=
  ∀ n, P12269946734574490229.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P11537631723379418903

`∑{d}[n+1, (n+1)/#*A008683(#)*A000005(#)]`
-/

namespace A058026.P11537631723379418903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A008683 d : ℚ) * (A000005 d : ℚ)

end

end A058026.P11537631723379418903

namespace A058026

/-- `∑{d}[n+1, (n+1)/#*A008683(#)*A000005(#)]` -/
def P11537631723379418903.Spec : Prop :=
  ∀ n, P11537631723379418903.a n = (A058026 (n + 1) : ℚ)

end A058026

/-! ## A058026.P8969370347995521029

`∑{d}[n+1, (n+1)/#*A008683(#)*2^A001221(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058026

/-- `∑{d}[n+1, (n+1)/#*A008683(#)*2^A001221(#)]` -/
def P8969370347995521029.Spec : Prop :=
  ∀ n, P8969370347995521029.a n = (A058026 (n + 1) : ℚ)

end A058026

/-! ## A058026.P13294012258206747474

`∑{#}[n, (-1)^A001221(gcd(n+1, #))]`
-/

namespace A058026.P13294012258206747474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ (A001221 (Nat.gcd (n + 1) k) : ℤ)

end

end A058026.P13294012258206747474

namespace A058026

/-- `∑{#}[n, (-1)^A001221(gcd(n+1, #))]` -/
def P13294012258206747474.Spec : Prop :=
  ∀ n, P13294012258206747474.a n = (A058026 (n + 1) : ℚ)

end A058026

/-! ## A058026.P7356608336175802337

`(n+1)%2*A184997(n+1)`
-/

namespace A058026.P7356608336175802337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) * A184997 (n + 1)

end

end A058026.P7356608336175802337

namespace A058026

/-- `(n+1)%2*A184997(n+1)` -/
def P7356608336175802337.Spec : Prop :=
  ∀ n, P7356608336175802337.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P13354462320521443041

`∏{p}[n+1, #-2]*A003557(n+1)`
-/

namespace A058026.P13354462320521443041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 2)) * A003557 (n + 1)

end

end A058026.P13354462320521443041

namespace A058026

/-- `∏{p}[n+1, #-2]*A003557(n+1)` -/
def P13354462320521443041.Spec : Prop :=
  ∀ n, P13354462320521443041.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P11778356382949814178

`∑{d}[n+1, #*A226177((n+1)/#)]`
-/

namespace A058026.P11778356382949814178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A226177 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A058026.P11778356382949814178

namespace A058026

/-- `∑{d}[n+1, #*A226177((n+1)/#)]` -/
def P11778356382949814178.Spec : Prop :=
  ∀ n, P11778356382949814178.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P11603320228938296993

`(n+1)*∏{p}[n+1, A241972(#)/#]`
-/

namespace A058026.P11603320228938296993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f1 n), (A241972 p : ℚ) / (p : ℚ))

end

end A058026.P11603320228938296993

namespace A058026

/-- `(n+1)*∏{p}[n+1, A241972(#)/#]` -/
def P11603320228938296993.Spec : Prop :=
  ∀ n, P11603320228938296993.a n = (A058026 (n + 1) : ℚ)

end A058026

/-! ## A058026.P6333413014754266011

`A002472(n+1)*A059841(n)`
-/

namespace A058026.P6333413014754266011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002472 (n + 1) * A059841 n

end

end A058026.P6333413014754266011

namespace A058026

/-- `A002472(n+1)*A059841(n)` -/
def P6333413014754266011.Spec : Prop :=
  ∀ n, P6333413014754266011.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P14190327535226252496

`A059841(n)*A184997(n+1)`
-/

namespace A058026.P14190327535226252496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A184997 (n + 1)

end

end A058026.P14190327535226252496

namespace A058026

/-- `A059841(n)*A184997(n+1)` -/
def P14190327535226252496.Spec : Prop :=
  ∀ n, P14190327535226252496.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P14470564128524625781

`A069828(n+1)/A065033(n)`
-/

namespace A058026.P14470564128524625781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069828 (n + 1) : ℚ) / (A065033 n : ℚ)

end

end A058026.P14470564128524625781

namespace A058026

/-- `A069828(n+1)/A065033(n)` -/
def P14470564128524625781.Spec : Prop :=
  ∀ n, P14470564128524625781.a n = (A058026 (n + 1) : ℚ)

end A058026

/-! ## A058026.P5749579947244410528

`lcm(A002472(n+1), A056594(n))`
-/

namespace A058026.P5749579947244410528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002472 (n + 1)) (A056594 n)

end

end A058026.P5749579947244410528

namespace A058026

/-- `lcm(A002472(n+1), A056594(n))` -/
def P5749579947244410528.Spec : Prop :=
  ∀ n, (P5749579947244410528.a n : ℤ) = A058026 (n + 1)

end A058026

/-! ## A058026.P8589990232700927858

`A069828(n+1)/A101279(n+1)`
-/

namespace A058026.P8589990232700927858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069828 (n + 1) : ℚ) / (A101279 (n + 1) : ℚ)

end

end A058026.P8589990232700927858

namespace A058026

/-- `A069828(n+1)/A101279(n+1)` -/
def P8589990232700927858.Spec : Prop :=
  ∀ n, P8589990232700927858.a n = (A058026 (n + 1) : ℚ)

end A058026

/-! ## A058026.P16026195106474855019

`A069828(n+1)/A165818(n+1)`
-/

namespace A058026.P16026195106474855019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069828 (n + 1) : ℚ) / (A165818 (n + 1) : ℚ)

end

end A058026.P16026195106474855019

namespace A058026

/-- `A069828(n+1)/A165818(n+1)` -/
def P16026195106474855019.Spec : Prop :=
  ∀ n, P16026195106474855019.a n = (A058026 (n + 1) : ℚ)

end A058026

/-! ## A058026.P8091223535776342007

`A069828(n+1)/A249038(n+1)`
-/

namespace A058026.P8091223535776342007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069828 (n + 1) : ℚ) / (A249038 (n + 1) : ℚ)

end

end A058026.P8091223535776342007

namespace A058026

/-- `A069828(n+1)/A249038(n+1)` -/
def P8091223535776342007.Spec : Prop :=
  ∀ n, P8091223535776342007.a n = (A058026 (n + 1) : ℚ)

end A058026

/-! ## A058026.P17555357610508292421

`lcm(A166698(n+1), A184997(n+1))`
-/

namespace A058026.P17555357610508292421
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A166698 (n + 1)) (A184997 (n + 1))

end

end A058026.P17555357610508292421

namespace A058026

/-- `lcm(A166698(n+1), A184997(n+1))` -/
def P17555357610508292421.Spec : Prop :=
  ∀ n, (P17555357610508292421.a n : ℤ) = A058026 (n + 1)

end A058026

/-! ## A058026.P11191077363339733287

`(1-A134451(n))²*A002472(n+1)`
-/

namespace A058026.P11191077363339733287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A134451 n) ^ 2 * A002472 (n + 1)

end

end A058026.P11191077363339733287

namespace A058026

/-- `(1-A134451(n))²*A002472(n+1)` -/
def P11191077363339733287.Spec : Prop :=
  ∀ n, P11191077363339733287.a n = A058026 (n + 1)

end A058026

/-! ## A058026.P5088450004921076716

`∑{d}[n+1, A000010(#)*A076479((n+1)/#)]`
-/

namespace A058026.P5088450004921076716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A076479 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A058026.P5088450004921076716

namespace A058026

/-- `∑{d}[n+1, A000010(#)*A076479((n+1)/#)]` -/
def P5088450004921076716.Spec : Prop :=
  ∀ n, P5088450004921076716.a n = A058026 (n + 1)

end A058026

/-!
# A058029: Primes closest to LCM(1,...,x) either above or below. Arguments x were selected from A000961 (powers of primes including primes) in order to obtain distinct values of LCM exactly once.

The programs for A058029, there is no canonical definition to state claims against.
-/

/-! ## A058029.P188282457612565229

`A058030(n)+A051451(n+2)`
-/

namespace A058029.P188282457612565229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058030 n + A051451 (n + 2)

end

end A058029.P188282457612565229

/-! ## A058029.P15115048160824291912

`A058030(n)+∏[A025473(n+2)]`
-/

namespace A058029.P15115048160824291912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025473 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058030 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058029.P15115048160824291912

/-! ## A058029.P6375307370555874282

`A058030(n)+∏[p?[A020500(n+1)]]`
-/

namespace A058029.P6375307370555874282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020500 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058030 n + ∏ j ∈ Finset.range (n + 1), f1 j

end

end A058029.P6375307370555874282

/-! ## A058029.P8944581454025715683

`A058030(n)+A003418(A246655(n+1))`
-/

namespace A058029.P8944581454025715683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058030 n + A003418 (A246655 (n + 1)).toNat

end

end A058029.P8944581454025715683

/-! ## A058029.P11083274707238423167

`A058030(n)+A003418(A000961(n+2))`
-/

namespace A058029.P11083274707238423167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058030 n + A003418 (A000961 (n + 2)).toNat

end

end A058029.P11083274707238423167

/-!
# A058030: Signed distance of primes from LCM(1,...,x) being closest to it. Arguments x were selected from A000961 (powers of primes including primes) in order to use distinct values of LCM exactly once. When both closest primes are in the same distance, then negative were used.

The programs for A058030, there is no canonical definition to state claims against.
-/

/-! ## A058030.P6442558150458677634

`A058029(n)-A051451(n+2)`
-/

namespace A058030.P6442558150458677634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058029 n - A051451 (n + 2)

end

end A058030.P6442558150458677634

/-! ## A058030.P15572903937503006383

`A058029(n)-A003418(A246655(n+1))`
-/

namespace A058030.P15572903937503006383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058029 n - A003418 (A246655 (n + 1)).toNat

end

end A058030.P15572903937503006383

/-! ## A058030.P6488517388431919880

`A058029(n)-A003418(A000961(n+2))`
-/

namespace A058030.P6488517388431919880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058029 n - A003418 (A000961 (n + 2)).toNat

end

end A058030.P6488517388431919880

/-! ## A058030.P18185952786825911498

`A058029(n)-A003418(∑[A275120(n+1)])`
-/

namespace A058030.P18185952786825911498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058029 n - A003418 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058030.P18185952786825911498

/-! ## A058030.P13423074321975287459

`A058020(n+1)+A058029(n)-A058019(n+2)`
-/

namespace A058030.P13423074321975287459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058020 (n + 1) + (A058029 n - A058019 (n + 2))

end

end A058030.P13423074321975287459

/-!
# A058031: a(n) = n^4 - 2*n^3 + 3*n^2 - 2*n + 1, the Alexander polynomial for reef and granny knots.

The programs for A058031, the canonical program `A058031.P14370880030368765629` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058031 has offset 0).

The definition of A058031 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4-2*n^3+3*n²-2*n+1` (program `A058031.P14370880030368765629`, by `A058031.P14370880030368765629.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058031.P14824459056647849151

`(n²-n+1)²`
-/

namespace A058031.P14824459056647849151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ) + 1) ^ 2

end

end A058031.P14824459056647849151

namespace A058031

/-- `(n²-n+1)²` -/
def P14824459056647849151.Spec : Prop :=
  ∀ n, P14824459056647849151.a n = A058031 n

theorem P14824459056647849151.correct : P14824459056647849151.Spec := by
  intro n
  simp only [A058031, Nat.add_sub_cancel, A058031.P14824459056647849151.a, A058031.P14370880030368765629.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A058031

/-! ## A058031.P12022513966950695502

`ogf((1-4x+14x^2+4x^3+9x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A058031.P12022513966950695502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 14, 4, 9] [1, -5, 10, -10, 5, -1] n

end

end A058031.P12022513966950695502

namespace A058031

/-- `ogf((1-4x+14x^2+4x^3+9x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12022513966950695502.Spec : Prop :=
  ∀ n, P12022513966950695502.a n = A058031 n

end A058031

/-! ## A058031.P14370880030368765629

`n^4-2*n^3+3*n²-2*n+1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058031

/-- `n^4-2*n^3+3*n²-2*n+1` -/
def P14370880030368765629.Spec : Prop :=
  ∀ n, P14370880030368765629.a n = A058031 n

theorem P14370880030368765629.correct : P14370880030368765629.Spec := by
  intro n
  simp only [A058031]

end A058031

/-! ## A058031.P4327948307006304503

`floor(cot(Δ[atan(n-1)]²))`
-/

namespace A058031.P4327948307006304503
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot ((f1 (n + 1) - f1 n) ^ 2)⌋

end

end A058031.P4327948307006304503

namespace A058031

/-- `floor(cot(Δ[atan(n-1)]²))` -/
def P4327948307006304503.Spec : Prop :=
  ∀ n, P4327948307006304503.a n = A058031 n

end A058031

/-! ## A058031.P12734481961749154728

`round(cot(Δ[atan(n-1)])²)`
-/

namespace A058031.P12734481961749154728
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan ((n : ℤ) - 1 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (f1 (n + 1) - f1 n) ^ 2)

end

end A058031.P12734481961749154728

namespace A058031

/-- `round(cot(Δ[atan(n-1)])²)` -/
def P12734481961749154728.Spec : Prop :=
  ∀ n, P12734481961749154728.a n = A058031 n

end A058031

/-! ## A058031.P14602742927096746097

`or(1, (n-1-n²)²)`
-/

namespace A058031.P14602742927096746097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (((n : ℤ) - 1 - (n ^ 2 : ℤ)) ^ 2)

end

end A058031.P14602742927096746097

namespace A058031

/-- `or(1, (n-1-n²)²)` -/
def P14602742927096746097.Spec : Prop :=
  ∀ n, P14602742927096746097.a n = A058031 n

end A058031

/-! ## A058031.P17611268143500373572

`(4*C(n, 2)+2)²/4`
-/

namespace A058031.P17611268143500373572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * Nat.choose n 2 + 2) ^ 2 : ℚ) / 4

end

end A058031.P17611268143500373572

namespace A058031

/-- `(4*C(n, 2)+2)²/4` -/
def P17611268143500373572.Spec : Prop :=
  ∀ n, P17611268143500373572.a n = (A058031 n : ℚ)

theorem P17611268143500373572.correct : P17611268143500373572.Spec := by
  intro n
  simp only [A058031, Nat.add_sub_cancel, A058031.P17611268143500373572.a, A058031.P14370880030368765629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058031

/-! ## A058031.P13261576891010183125

`and(-3, (n-1-n²)²)`
-/

namespace A058031.P13261576891010183125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (((n : ℤ) - 1 - (n ^ 2 : ℤ)) ^ 2)

end

end A058031.P13261576891010183125

namespace A058031

/-- `and(-3, (n-1-n²)²)` -/
def P13261576891010183125.Spec : Prop :=
  ∀ n, P13261576891010183125.a n = A058031 n

end A058031

/-! ## A058031.P987943365796208919

`∑[a(n-1)+2]^2` with `a(0)=1, a(1)=0`
-/

namespace A058031.P987943365796208919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A058031.P987943365796208919

namespace A058031

/-- `∑[a(n-1)+2]^2` -/
def P987943365796208919.Spec : Prop :=
  ∀ n, (P987943365796208919.a n : ℤ) = A058031 n

end A058031

/-! ## A058031.P3275483843597678808

`lcm(2, (n-1-n²)²)/2`
-/

namespace A058031.P3275483843597678808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (((n : ℤ) - 1 - (n ^ 2 : ℤ)) ^ 2) : ℚ) / 2

end

end A058031.P3275483843597678808

namespace A058031

/-- `lcm(2, (n-1-n²)²)/2` -/
def P3275483843597678808.Spec : Prop :=
  ∀ n, P3275483843597678808.a n = (A058031 n : ℚ)

end A058031

/-! ## A058031.P18439045586183138921

`floor(∑[a(n-1)-2]²)` with `a(0)=-1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A058031.P18439045586183138921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A058031.P18439045586183138921

namespace A058031

/-- `floor(∑[a(n-1)-2]²)` -/
def P18439045586183138921.Spec : Prop :=
  ∀ n, P18439045586183138921.a n = A058031 n

end A058031

/-! ## A058031.P5139351477494191957

`(C(2*n, 2)-(n-2))²/4`
-/

namespace A058031.P5139351477494191957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose (2 * n) 2 : ℤ) - ((n : ℤ) - 2)) ^ 2 : ℚ) / 4

end

end A058031.P5139351477494191957

namespace A058031

/-- `(C(2*n, 2)-(n-2))²/4` -/
def P5139351477494191957.Spec : Prop :=
  ∀ n, P5139351477494191957.a n = (A058031 n : ℚ)

theorem P5139351477494191957.correct : P5139351477494191957.Spec := by
  intro n
  simp only [A058031, Nat.add_sub_cancel, A058031.P5139351477494191957.a, A058031.P14370880030368765629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058031

/-! ## A058031.P14873717733494739653

`xor(2, (n-1)*2*n)²/4`
-/

namespace A058031.P14873717733494739653
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor 2 (((n : ℤ) - 1) * (2 * n : ℤ)) ^ 2 : ℚ) / 4

end

end A058031.P14873717733494739653

namespace A058031

/-- `xor(2, (n-1)*2*n)²/4` -/
def P14873717733494739653.Spec : Prop :=
  ∀ n, P14873717733494739653.a n = (A058031 n : ℚ)

end A058031

/-! ## A058031.P11894244203641661021

`(n-1-n²)^gcd(2, 2*n)`
-/

namespace A058031.P11894244203641661021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (n ^ 2 : ℤ)) ^ Nat.gcd 2 (2 * n)

end

end A058031.P11894244203641661021

namespace A058031

/-- `(n-1-n²)^gcd(2, 2*n)` -/
def P11894244203641661021.Spec : Prop :=
  ∀ n, P11894244203641661021.a n = A058031 n

theorem P11894244203641661021.correct : P11894244203641661021.Spec := by
  intro n
  simp only [A058031, Nat.add_sub_cancel, A058031.P11894244203641661021.a, A058031.P14370880030368765629.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A058031

/-! ## A058031.P8071165869042691136

`gcd((n-1-n²)², C(n, n²))`
-/

namespace A058031.P8071165869042691136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((n : ℤ) - 1 - (n ^ 2 : ℤ)) ^ 2) (Nat.choose n (n ^ 2) : ℤ)

end

end A058031.P8071165869042691136

namespace A058031

/-- `gcd((n-1-n²)², C(n, n²))` -/
def P8071165869042691136.Spec : Prop :=
  ∀ n, (P8071165869042691136.a n : ℤ) = A058031 n

end A058031

/-! ## A058031.P14234223325735671818

`(n²-(n-1))²-and(1, 2*n)`
-/

namespace A058031.P14234223325735671818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - ((n : ℤ) - 1)) ^ 2 - (Nat.land 1 (2 * n) : ℤ)

end

end A058031.P14234223325735671818

namespace A058031

/-- `(n²-(n-1))²-and(1, 2*n)` -/
def P14234223325735671818.Spec : Prop :=
  ∀ n, P14234223325735671818.a n = A058031 n

theorem P14234223325735671818.correct : P14234223325735671818.Spec := by
  intro n
  simp only [A058031, Nat.add_sub_cancel, A058031.P14234223325735671818.a, A058031.P14370880030368765629.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A058031

/-! ## A058031.P2803809729345006654

`(n-1-n²)²*gcd(n, n-1)`
-/

namespace A058031.P2803809729345006654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 - (n ^ 2 : ℤ)) ^ 2 * (Int.gcd (n : ℤ) ((n : ℤ) - 1) : ℤ)

end

end A058031.P2803809729345006654

namespace A058031

/-- `(n-1-n²)²*gcd(n, n-1)` -/
def P2803809729345006654.Spec : Prop :=
  ∀ n, P2803809729345006654.a n = A058031 n

theorem P2803809729345006654.correct : P2803809729345006654.Spec := by
  intro n
  simp only [A058031, Nat.add_sub_cancel, A058031.P2803809729345006654.a, A058031.P14370880030368765629.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A058031

/-! ## A058031.P7445482951850915264

`1/∑[a(n-1)-2]^(-2)` with `a(0)=-1, a(1)=0`
-/

namespace A058031.P7445482951850915264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (-2 : ℤ)

end

end A058031.P7445482951850915264

namespace A058031

/-- `1/∑[a(n-1)-2]^(-2)` -/
def P7445482951850915264.Spec : Prop :=
  ∀ n, P7445482951850915264.a n = (A058031 n : ℚ)

end A058031

/-! ## A058031.P945833313738420714

`A173785(n)/2`
-/

namespace A058031.P945833313738420714
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173785 n : ℚ) / 2

end

end A058031.P945833313738420714

namespace A058031

/-- `A173785(n)/2` -/
def P945833313738420714.Spec : Prop :=
  ∀ n, P945833313738420714.a n = (A058031 n : ℚ)

end A058031

/-! ## A058031.P10407559091128710553

`A002061(n)*A002061(n)`
-/

namespace A058031.P10407559091128710553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n * A002061 n

end

end A058031.P10407559091128710553

namespace A058031

/-- `A002061(n)*A002061(n)` -/
def P10407559091128710553.Spec : Prop :=
  ∀ n, P10407559091128710553.a n = A058031 n

theorem P10407559091128710553.correct : P10407559091128710553.Spec := by
  intro n
  simp only [A058031, Nat.add_sub_cancel, A058031.P10407559091128710553.a, A058031.P14370880030368765629.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058031

/-!
# A058032: Largest m such that 2^n / primorial(m) >= 1.

The programs for A058032, the canonical program `A058032.P13195019555166246922` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058032 has offset 0).

The definition of A058032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058032.P13195019555166246922

`∑[char[A045716(n+1)]]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058032

/-- `∑[char[A045716(n+1)]]` -/
def P13195019555166246922.Spec : Prop :=
  ∀ n, (P13195019555166246922.a n : ℤ) = A058032 n

theorem P13195019555166246922.correct : P13195019555166246922.Spec := by
  intro n
  simp only [A058032]

end A058032

/-! ## A058032.P13674051449396419905

`∑[char[ceil(∑[log2(A000040(n+1))])]]`
-/

namespace A058032.P13674051449396419905
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000040 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f3 j⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058032.P13674051449396419905

namespace A058032

/-- `∑[char[ceil(∑[log2(A000040(n+1))])]]` -/
def P13674051449396419905.Spec : Prop :=
  ∀ n, (P13674051449396419905.a n : ℤ) = A058032 n

end A058032

/-! ## A058032.P10757278920837938731

`A135661(A373676(n+1)+A250120(n))`
-/

namespace A058032.P10757278920837938731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A373676 (n + 1) + A250120 n).toNat

end

end A058032.P10757278920837938731

namespace A058032

/-- `A135661(A373676(n+1)+A250120(n))` -/
def P10757278920837938731.Spec : Prop :=
  ∀ n, P10757278920837938731.a n = A058032 n

end A058032

/-! ## A058032.P2494749366729487687

`A345379(A320689(n))`
-/

namespace A058032.P2494749366729487687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A320689 n).toNat

end

end A058032.P2494749366729487687

namespace A058032

/-- `A345379(A320689(n))` -/
def P2494749366729487687.Spec : Prop :=
  ∀ n, P2494749366729487687.a n = A058032 n

end A058032

/-! ## A058032.P6994649119218269468

`A345379(A039894(n+2))`
-/

namespace A058032.P6994649119218269468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345379 (A039894 (n + 2)).toNat

end

end A058032.P6994649119218269468

namespace A058032

/-- `A345379(A039894(n+2))` -/
def P6994649119218269468.Spec : Prop :=
  ∀ n, P6994649119218269468.a n = A058032 n

end A058032

/-!
# A058033: Number of powers of 2 between (but not including) two consecutive primorials.

The programs for A058033, the canonical program `A058033.P17773397942535060581` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058033 has offset 1).

The definition of A058033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058033.P17773397942535060581

`Δ[A054850(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A058033

/-- `Δ[A054850(n+1)]` -/
def P17773397942535060581.Spec : Prop :=
  ∀ n, P17773397942535060581.a n = A058033 (n + 1)

theorem P17773397942535060581.correct : P17773397942535060581.Spec := by
  intro n
  simp only [A058033, Nat.add_sub_cancel]

end A058033

/-! ## A058033.P392377649215239867

`Δ[floor(∑[log2(A000040(n+1))])]`
-/

namespace A058033.P392377649215239867
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A000040 (n + 1) : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058033.P392377649215239867

namespace A058033

/-- `Δ[floor(∑[log2(A000040(n+1))])]` -/
def P392377649215239867.Spec : Prop :=
  ∀ n, P392377649215239867.a n = A058033 (n + 1)

end A058033

/-! ## A058033.P8784547810526405264

`Δ[A045716(n+1)-n²%(n+1)]`
-/

namespace A058033.P8784547810526405264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058033.P8784547810526405264

namespace A058033

/-- `Δ[A045716(n+1)-n²%(n+1)]` -/
def P8784547810526405264.Spec : Prop :=
  ∀ n, P8784547810526405264.a n = A058033 (n + 1)

end A058033

/-! ## A058033.P3064562071274097599

`Δ[A045716(n+1)+A000007(n)]`
-/

namespace A058033.P3064562071274097599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045716 (n + 1) + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058033.P3064562071274097599

namespace A058033

/-- `Δ[A045716(n+1)+A000007(n)]` -/
def P3064562071274097599.Spec : Prop :=
  ∀ n, P3064562071274097599.a n = A058033 (n + 1)

end A058033

/-! ## A058033.P15700903933988005575

`A054850(n+2)-A054850(n+1)`
-/

namespace A058033.P15700903933988005575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054850 (n + 2) - A054850 (n + 1)

end

end A058033.P15700903933988005575

namespace A058033

/-- `A054850(n+2)-A054850(n+1)` -/
def P15700903933988005575.Spec : Prop :=
  ∀ n, P15700903933988005575.a n = A058033 (n + 1)

theorem P15700903933988005575.correct : P15700903933988005575.Spec := by
  intro n
  simp only [A058033, Nat.add_sub_cancel, A058033.P15700903933988005575.a, A058033.P17773397942535060581.f1, A058033.P17773397942535060581.a, SequenceMachineLib.memo_apply]

end A058033

/-! ## A058033.P9389636375092370654

`A045716(n+2)%(A054850(n+1)+1)`
-/

namespace A058033.P9389636375092370654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045716 (n + 2)) (A054850 (n + 1) + 1)

end

end A058033.P9389636375092370654

namespace A058033

/-- `A045716(n+2)%(A054850(n+1)+1)` -/
def P9389636375092370654.Spec : Prop :=
  ∀ n, P9389636375092370654.a n = A058033 (n + 1)

end A058033

/-! ## A058033.P1570544862041093812

`Δ[record[A287010(n+1)]]`
-/

namespace A058033.P1570544862041093812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058033.P1570544862041093812

namespace A058033

/-- `Δ[record[A287010(n+1)]]` -/
def P1570544862041093812.Spec : Prop :=
  ∀ n, P1570544862041093812.a n = A058033 (n + 1)

end A058033

/-! ## A058033.P6441975844894235807

`Δ[A287010(A000124(n))]`
-/

namespace A058033.P6441975844894235807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287010 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A058033.P6441975844894235807

namespace A058033

/-- `Δ[A287010(A000124(n))]` -/
def P6441975844894235807.Spec : Prop :=
  ∀ n, P6441975844894235807.a n = A058033 (n + 1)

end A058033

/-!
# A058034: Number of numbers whose cube root rounds to n.

The programs for A058034, the canonical program `A058034.P2227251057641833865` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058034 has offset 0).

The definition of A058034 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058034.P10173688657685210181

`ogf((1+x+7x^2+6x^3+6x^4+3x^5)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A058034.P10173688657685210181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 7, 6, 6, 3] [1, -2, 1, 0, -1, 2, -1] n

end

end A058034.P10173688657685210181

namespace A058034

/-- `ogf((1+x+7x^2+6x^3+6x^4+3x^5)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P10173688657685210181.Spec : Prop :=
  ∀ n, P10173688657685210181.a n = A058034 n

end A058034

/-! ## A058034.P2227251057641833865

`1+floor((n+1/2)^3)-ceil((n-1/2)^3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058034

/-- `1+floor((n+1/2)^3)-ceil((n-1/2)^3)` -/
def P2227251057641833865.Spec : Prop :=
  ∀ n, P2227251057641833865.a n = A058034 n

theorem P2227251057641833865.correct : P2227251057641833865.Spec := by
  intro n
  simp only [A058034]

end A058034

/-! ## A058034.P3988347533489372205

`or(3*n², char[4*n])`
-/

namespace A058034.P3988347533489372205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (3 * n ^ 2) (if ∃ j, f1 j = n then 1 else 0)

end

end A058034.P3988347533489372205

namespace A058034

/-- `or(3*n², char[4*n])` -/
def P3988347533489372205.Spec : Prop :=
  ∀ n, (P3988347533489372205.a n : ℤ) = A058034 n

end A058034

/-! ## A058034.P10004708010169111051

`xor(3*n², char[4*n])`
-/

namespace A058034.P10004708010169111051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (3 * n ^ 2) (if ∃ j, f1 j = n then 1 else 0)

end

end A058034.P10004708010169111051

namespace A058034

/-- `xor(3*n², char[4*n])` -/
def P10004708010169111051.Spec : Prop :=
  ∀ n, (P10004708010169111051.a n : ℤ) = A058034 n

end A058034

/-! ## A058034.P17434004386184684331

`abs(2*n-floor(sqrt(n%4))+∑[6*n-5]+6)`
-/

namespace A058034.P17434004386184684331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (Nat.sqrt (n % 4) : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + 6)|

end

end A058034.P17434004386184684331

namespace A058034

/-- `abs(2*n-floor(sqrt(n%4))+∑[6*n-5]+6)` -/
def P17434004386184684331.Spec : Prop :=
  ∀ n, P17434004386184684331.a n = A058034 n

end A058034

/-! ## A058034.P8498590750891573953

`round(sqrt((A121262(n)+3*n²)²+1))`
-/

namespace A058034.P8498590750891573953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A121262 n + (3 * n ^ 2 : ℤ)) ^ 2 + 1 : ℝ))

end

end A058034.P8498590750891573953

namespace A058034

/-- `round(sqrt((A121262(n)+3*n²)²+1))` -/
def P8498590750891573953.Spec : Prop :=
  ∀ n, P8498590750891573953.a n = A058034 n

end A058034

/-! ## A058034.P14420023398456020893

`(A121262(A008574(n)+n)+3*n²)^ceil(n/(n+1))`
-/

namespace A058034.P14420023398456020893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121262 (A008574 n + (n : ℤ)).toNat + (3 * n ^ 2 : ℤ) : ℚ) ^ (⌈(n : ℚ) / (n + 1 : ℚ)⌉ : ℤ)

end

end A058034.P14420023398456020893

namespace A058034

/-- `(A121262(A008574(n)+n)+3*n²)^ceil(n/(n+1))` -/
def P14420023398456020893.Spec : Prop :=
  ∀ n, P14420023398456020893.a n = (A058034 n : ℚ)

end A058034

/-! ## A058034.P7851038352766146655

`A047459(A229144(n²+1))`
-/

namespace A058034.P7851038352766146655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047459 (A229144 (n ^ 2 + 1)).toNat

end

end A058034.P7851038352766146655

namespace A058034

/-- `A047459(A229144(n²+1))` -/
def P7851038352766146655.Spec : Prop :=
  ∀ n, P7851038352766146655.a n = A058034 n

end A058034

/-! ## A058034.P3655258853162719013

`A047460(A007494(n²+1))`
-/

namespace A058034.P3655258853162719013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (A007494 (n ^ 2 + 1)).toNat

end

end A058034.P3655258853162719013

namespace A058034

/-- `A047460(A007494(n²+1))` -/
def P3655258853162719013.Spec : Prop :=
  ∀ n, P3655258853162719013.a n = A058034 n

end A058034

/-!
# A058035: Largest 4th-power-free number dividing n.

The programs for A058035, the canonical program `A058035.P10512342517571935865` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058035 has offset 1).

The definition of A058035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058035.P10512342517571935865

`∏{p}[n+1, gcd(n+1, #^3)]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058035

/-- `∏{p}[n+1, gcd(n+1, #^3)]` -/
def P10512342517571935865.Spec : Prop :=
  ∀ n, (P10512342517571935865.a n : ℤ) = A058035 (n + 1)

theorem P10512342517571935865.correct : P10512342517571935865.Spec := by
  intro n
  simp only [A058035, Nat.add_sub_cancel]

end A058035

/-! ## A058035.P15940023743707071657

`(n+1)/A062379(n+1)`
-/

namespace A058035.P15940023743707071657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062379 (n + 1) : ℚ)

end

end A058035.P15940023743707071657

namespace A058035

/-- `(n+1)/A062379(n+1)` -/
def P15940023743707071657.Spec : Prop :=
  ∀ n, P15940023743707071657.a n = (A058035 (n + 1) : ℚ)

end A058035

/-! ## A058035.P10586383383582144375

`gcd(n+1, A007947(n+1)^3)`
-/

namespace A058035.P10586383383582144375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A007947 (n + 1) ^ 3)

end

end A058035.P10586383383582144375

namespace A058035

/-- `gcd(n+1, A007947(n+1)^3)` -/
def P10586383383582144375.Spec : Prop :=
  ∀ n, (P10586383383582144375.a n : ℤ) = A058035 (n + 1)

end A058035

/-! ## A058035.P5214677021797411212

`(n+1)/A062378(A003557(n+1))`
-/

namespace A058035.P5214677021797411212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062378 (A003557 (n + 1)).toNat : ℚ)

end

end A058035.P5214677021797411212

namespace A058035

/-- `(n+1)/A062378(A003557(n+1))` -/
def P5214677021797411212.Spec : Prop :=
  ∀ n, P5214677021797411212.a n = (A058035 (n + 1) : ℚ)

end A058035

/-! ## A058035.P17887715996017025096

`(n+1)/A073752(A062378(n+1))`
-/

namespace A058035.P17887715996017025096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A073752 (A062378 (n + 1)).toNat : ℚ)

end

end A058035.P17887715996017025096

namespace A058035

/-- `(n+1)/A073752(A062378(n+1))` -/
def P17887715996017025096.Spec : Prop :=
  ∀ n, P17887715996017025096.a n = (A058035 (n + 1) : ℚ)

end A058035

/-! ## A058035.P4640317161953678933

`gcd(xor(n, -1), A000578(A007947(n+1)))`
-/

namespace A058035.P4640317161953678933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.xor (n : ℤ) (-1)) (A000578 (A007947 (n + 1)).toNat)

end

end A058035.P4640317161953678933

namespace A058035

/-- `gcd(xor(n, -1), A000578(A007947(n+1)))` -/
def P4640317161953678933.Spec : Prop :=
  ∀ n, (P4640317161953678933.a n : ℤ) = A058035 (n + 1)

end A058035

/-! ## A058035.P4125618466161355142

`A007947(n+1)*A007948(A000189(n+1))`
-/

namespace A058035.P4125618466161355142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007948 (A000189 (n + 1)).toNat

end

end A058035.P4125618466161355142

namespace A058035

/-- `A007947(n+1)*A007948(A000189(n+1))` -/
def P4125618466161355142.Spec : Prop :=
  ∀ n, P4125618466161355142.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P14336163298960768784

`A007947(n+1)*A007948(A003557(n+1))`
-/

namespace A058035.P14336163298960768784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A007948 (A003557 (n + 1)).toNat

end

end A058035.P14336163298960768784

namespace A058035

/-- `A007947(n+1)*A007948(A003557(n+1))` -/
def P14336163298960768784.Spec : Prop :=
  ∀ n, P14336163298960768784.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P2604586917097338760

`A007947(A062378(n+1))*A007948(n+1)`
-/

namespace A058035.P2604586917097338760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A062378 (n + 1)).toNat * A007948 (n + 1)

end

end A058035.P2604586917097338760

namespace A058035

/-- `A007947(A062378(n+1))*A007948(n+1)` -/
def P2604586917097338760.Spec : Prop :=
  ∀ n, P2604586917097338760.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P5028360895303719691

`A007948(n+1)*A071773(A003557(n+1))`
-/

namespace A058035.P5028360895303719691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (n + 1) * A071773 (A003557 (n + 1)).toNat

end

end A058035.P5028360895303719691

namespace A058035

/-- `A007948(n+1)*A071773(A003557(n+1))` -/
def P5028360895303719691.Spec : Prop :=
  ∀ n, P5028360895303719691.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P9874979479755158006

`A053165(n+1)*A056555(A062379(n+1))`
-/

namespace A058035.P9874979479755158006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1) * A056555 (A062379 (n + 1)).toNat

end

end A058035.P9874979479755158006

namespace A058035

/-- `A053165(n+1)*A056555(A062379(n+1))` -/
def P9874979479755158006.Spec : Prop :=
  ∀ n, P9874979479755158006.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P15115255517063684814

`A007948(A019554(n+1))*A056622(A007948(n+1))`
-/

namespace A058035.P15115255517063684814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A019554 (n + 1)).toNat * A056622 (A007948 (n + 1)).toNat

end

end A058035.P15115255517063684814

namespace A058035

/-- `A007948(A019554(n+1))*A056622(A007948(n+1))` -/
def P15115255517063684814.Spec : Prop :=
  ∀ n, P15115255517063684814.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P10915726699956794160

`A343033(A374009(n+1))`
-/

namespace A058035.P10915726699956794160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343033 (A374009 (n + 1)).toNat

end

end A058035.P10915726699956794160

namespace A058035

/-- `A343033(A374009(n+1))` -/
def P10915726699956794160.Spec : Prop :=
  ∀ n, P10915726699956794160.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P18147838506134848037

`A019554((n+1)*A048798(A000188(n+1)))`
-/

namespace A058035.P18147838506134848037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 ((n + 1 : ℤ) * A048798 (A000188 (n + 1)).toNat).toNat

end

end A058035.P18147838506134848037

namespace A058035

/-- `A019554((n+1)*A048798(A000188(n+1)))` -/
def P18147838506134848037.Spec : Prop :=
  ∀ n, P18147838506134848037.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P9239520789056659456

`A019554((n+1)*A050985(A019554(n+1)))`
-/

namespace A058035.P9239520789056659456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 ((n + 1 : ℤ) * A050985 (A019554 (n + 1)).toNat).toNat

end

end A058035.P9239520789056659456

namespace A058035

/-- `A019554((n+1)*A050985(A019554(n+1)))` -/
def P9239520789056659456.Spec : Prop :=
  ∀ n, P9239520789056659456.a n = A058035 (n + 1)

end A058035

/-! ## A058035.P10302690923563204050

`A071773(n+1)²*A071773(A011262(n+1))`
-/

namespace A058035.P10302690923563204050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1) ^ 2 * A071773 (A011262 (n + 1)).toNat

end

end A058035.P10302690923563204050

namespace A058035

/-- `A071773(n+1)²*A071773(A011262(n+1))` -/
def P10302690923563204050.Spec : Prop :=
  ∀ n, P10302690923563204050.a n = A058035 (n + 1)

end A058035

/-!
# A058036: Smallest primitive prime factor of the n-th Lucas number (A000032); i.e., L(n), L(0) = 2, L(1) = 1 and L(n) = L(n-1) + L(n-2).

The programs for A058036, there is no canonical definition to state claims against.
-/

/-! ## A058036.P729508338384734385

`A001578(xor(1, A004277(n)+1))`
-/

namespace A058036.P729508338384734385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (Int.xor 1 (A004277 n + 1)).toNat

end

end A058036.P729508338384734385

/-! ## A058036.P17694819241147149962

`A001578(A004277(n))+A000007(n)`
-/

namespace A058036.P17694819241147149962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (A004277 n).toNat + A000007 n

end

end A058036.P17694819241147149962

/-! ## A058036.P2560108708193659495

`A001578(A004277(n)+A000038(n))`
-/

namespace A058036.P2560108708193659495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (A004277 n + A000038 n).toNat

end

end A058036.P2560108708193659495

/-! ## A058036.P9802879420561042948

`A001578(or(A000038(n), A004277(n)))`
-/

namespace A058036.P9802879420561042948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (Int.lor (A000038 n) (A004277 n)).toNat

end

end A058036.P9802879420561042948

/-! ## A058036.P6105897729364882442

`A001578(xor(A000038(n), A004277(n)))`
-/

namespace A058036.P6105897729364882442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (Int.xor (A000038 n) (A004277 n)).toNat

end

end A058036.P6105897729364882442

/-! ## A058036.P11614034609430536737

`A001578(A252461(A008574(n)))+A000007(n)`
-/

namespace A058036.P11614034609430536737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001578 (A252461 (A008574 n).toNat).toNat + A000007 n

end

end A058036.P11614034609430536737

/-!
# A058037: Numbers k such that 3^k - k is prime.

The programs for A058037, there is no canonical definition to state claims against.
-/

/-! ## A058037.P1767416224038999916

`record[gcd(A001370(n), A349717(n+1))]`
-/

namespace A058037.P1767416224038999916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001370 n) (A349717 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058037.P1767416224038999916

/-! ## A058037.P4437315447556778587

`xor(A098177(n+1), A102577(A003418(n)))`
-/

namespace A058037.P4437315447556778587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A098177 (n + 1)) (A102577 (A003418 n).toNat)

end

end A058037.P4437315447556778587

/-!
# A058038: a(n) = Fibonacci(2*n)*Fibonacci(2*n+2).

The programs for A058038, the canonical program `A058038.P7812140233920500803` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058038 has offset 0).

The definition of A058038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(2*n)*A000045(2*n+2)` (program `A058038.P7812140233920500803`, by `A058038.P7812140233920500803.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058038.P17814123520635243475

`ogf(3x/(1-8x+8x^2-x^3))`
-/

namespace A058038.P17814123520635243475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -8, 8, -1] n

end

end A058038.P17814123520635243475

namespace A058038

/-- `ogf(3x/(1-8x+8x^2-x^3))` -/
def P17814123520635243475.Spec : Prop :=
  ∀ n, P17814123520635243475.a n = A058038 n

end A058038

/-! ## A058038.P15230842452674127712

`7*a(n-1)-a(n-2)+3` with `a(0)=0, a(1)=3`
-/

namespace A058038.P15230842452674127712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  7 * a (n - 1) - a (n - 2) + 3

end

end A058038.P15230842452674127712

namespace A058038

/-- `7*a(n-1)-a(n-2)+3` -/
def P15230842452674127712.Spec : Prop :=
  ∀ n, P15230842452674127712.a n = A058038 n

end A058038

/-! ## A058038.P5526074204418589229

`A081068(n)-1`
-/

namespace A058038.P5526074204418589229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081068 n - 1

end

end A058038.P5526074204418589229

namespace A058038

/-- `A081068(n)-1` -/
def P5526074204418589229.Spec : Prop :=
  ∀ n, P5526074204418589229.a n = A058038 n

end A058038

/-! ## A058038.P7189559141295736280

`(A000032(4*n+2)-3)/5`
-/

namespace A058038.P7189559141295736280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 (4 * n + 2) - 3 : ℚ) / 5

end

end A058038.P7189559141295736280

namespace A058038

/-- `(A000032(4*n+2)-3)/5` -/
def P7189559141295736280.Spec : Prop :=
  ∀ n, P7189559141295736280.a n = (A058038 n : ℚ)

end A058038

/-! ## A058038.P4616357921842064728

`A001906(n)*A001906(n+1)`
-/

namespace A058038.P4616357921842064728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n * A001906 (n + 1)

end

end A058038.P4616357921842064728

namespace A058038

/-- `A001906(n)*A001906(n+1)` -/
def P4616357921842064728.Spec : Prop :=
  ∀ n, P4616357921842064728.a n = A058038 n

end A058038

/-! ## A058038.P7812140233920500803

`A000045(2*n)*A000045(2*n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058038

/-- `A000045(2*n)*A000045(2*n+2)` -/
def P7812140233920500803.Spec : Prop :=
  ∀ n, P7812140233920500803.a n = A058038 n

theorem P7812140233920500803.correct : P7812140233920500803.Spec := by
  intro n
  simp only [A058038]

end A058038

/-! ## A058038.P15928280141777491740

`∑[ogf(3x/(1-7x+x^2))]`
-/

namespace A058038.P15928280141777491740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -7, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P15928280141777491740

namespace A058038

/-- `∑[ogf(3x/(1-7x+x^2))]` -/
def P15928280141777491740.Spec : Prop :=
  ∀ n, P15928280141777491740.a n = A058038 n

end A058038

/-! ## A058038.P4063562339202239358

`floor(∑[(-ϕ²)^n])²-1`
-/

namespace A058038.P4063562339202239358
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (-(Real.goldenRatio ^ 2)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2 - 1

end

end A058038.P4063562339202239358

namespace A058038

/-- `floor(∑[(-ϕ²)^n])²-1` -/
def P4063562339202239358.Spec : Prop :=
  ∀ n, P4063562339202239358.a n = A058038 n

end A058038

/-! ## A058038.P17074376526947579942

`∑[7*a(n-1)-a(n-2)]` with `a(0)=0, a(1)=3`
-/

namespace A058038.P17074376526947579942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  7 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P17074376526947579942

namespace A058038

/-- `∑[7*a(n-1)-a(n-2)]` -/
def P17074376526947579942.Spec : Prop :=
  ∀ n, P17074376526947579942.a n = A058038 n

end A058038

/-! ## A058038.P1065494426376976218

`∑[A033888(n)]`
-/

namespace A058038.P1065494426376976218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033888 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P1065494426376976218

namespace A058038

/-- `∑[A033888(n)]` -/
def P1065494426376976218.Spec : Prop :=
  ∀ n, P1065494426376976218.a n = A058038 n

end A058038

/-! ## A058038.P13071824251783864656

`A059929(2*n)`
-/

namespace A058038.P13071824251783864656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (2 * n)

end

end A058038.P13071824251783864656

namespace A058038

/-- `A059929(2*n)` -/
def P13071824251783864656.Spec : Prop :=
  ∀ n, P13071824251783864656.a n = A058038 n

end A058038

/-! ## A058038.P17262876240085768735

`A064831(2*n)`
-/

namespace A058038.P17262876240085768735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064831 (2 * n)

end

end A058038.P17262876240085768735

namespace A058038

/-- `A064831(2*n)` -/
def P17262876240085768735.Spec : Prop :=
  ∀ n, P17262876240085768735.a n = A058038 n

end A058038

/-! ## A058038.P6250013852279941996

`A081079(n)/5`
-/

namespace A058038.P6250013852279941996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081079 n : ℚ) / 5

end

end A058038.P6250013852279941996

namespace A058038

/-- `A081079(n)/5` -/
def P6250013852279941996.Spec : Prop :=
  ∀ n, P6250013852279941996.a n = (A058038 n : ℚ)

end A058038

/-! ## A058038.P16086564535815282123

`∑[A001906(2*n)]`
-/

namespace A058038.P16086564535815282123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P16086564535815282123

namespace A058038

/-- `∑[A001906(2*n)]` -/
def P16086564535815282123.Spec : Prop :=
  ∀ n, P16086564535815282123.a n = A058038 n

end A058038

/-! ## A058038.P16538074808921593500

`∑[A254884(2*n)]`
-/

namespace A058038.P16538074808921593500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254884 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P16538074808921593500

namespace A058038

/-- `∑[A254884(2*n)]` -/
def P16538074808921593500.Spec : Prop :=
  ∀ n, P16538074808921593500.a n = A058038 n

end A058038

/-! ## A058038.P12191822702049842727

`∑[A142880(3*n)]`
-/

namespace A058038.P12191822702049842727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P12191822702049842727

namespace A058038

/-- `∑[A142880(3*n)]` -/
def P12191822702049842727.Spec : Prop :=
  ∀ n, P12191822702049842727.a n = A058038 n

end A058038

/-! ## A058038.P10607251628055542409

`∑[A142881(3*n)]`
-/

namespace A058038.P10607251628055542409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P10607251628055542409

namespace A058038

/-- `∑[A142881(3*n)]` -/
def P10607251628055542409.Spec : Prop :=
  ∀ n, P10607251628055542409.a n = A058038 n

end A058038

/-! ## A058038.P7972412442952178281

`∑[A000045(4*n)]`
-/

namespace A058038.P7972412442952178281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P7972412442952178281

namespace A058038

/-- `∑[A000045(4*n)]` -/
def P7972412442952178281.Spec : Prop :=
  ∀ n, P7972412442952178281.a n = A058038 n

end A058038

/-! ## A058038.P8752291184750599427

`∑[A005013(4*n)]`
-/

namespace A058038.P8752291184750599427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005013 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P8752291184750599427

namespace A058038

/-- `∑[A005013(4*n)]` -/
def P8752291184750599427.Spec : Prop :=
  ∀ n, P8752291184750599427.a n = A058038 n

end A058038

/-! ## A058038.P7237036332887597556

`∑[A094966(4*n)]`
-/

namespace A058038.P7237036332887597556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058038.P7237036332887597556

namespace A058038

/-- `∑[A094966(4*n)]` -/
def P7237036332887597556.Spec : Prop :=
  ∀ n, P7237036332887597556.a n = A058038 n

end A058038

/-!
# A058039: a(n) = a(n-1) + 2*a(floor(n/2)) if n > 0, otherwise 1.

The programs for A058039, the canonical program `A058039.P4506739972521258702` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058039 has offset 0).

The definition of A058039 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(floor(n/2))` (program `A058039.P4506739972521258702`, by `A058039.P4506739972521258702.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058039.P4506739972521258702

`a(n-1)+2*a(floor(n/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058039

/-- `a(n-1)+2*a(floor(n/2))` -/
def P4506739972521258702.Spec : Prop :=
  ∀ n, (P4506739972521258702.a n : ℤ) = A058039 n

theorem P4506739972521258702.correct : P4506739972521258702.Spec := by
  intro n
  simp only [A058039]

end A058039

/-! ## A058039.P12536161065804517273

`a(n-1)+lcm(2, a(floor(n/2)))` with `a(0)=1`
-/

namespace A058039.P12536161065804517273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Nat.lcm 2 (a ⌊(n : ℚ) / 2⌋.toNat)

end

end A058039.P12536161065804517273

namespace A058039

/-- `a(n-1)+lcm(2, a(floor(n/2)))` -/
def P12536161065804517273.Spec : Prop :=
  ∀ n, (P12536161065804517273.a n : ℤ) = A058039 n

end A058039

/-! ## A058039.P14759495503661210180

`2*a(floor(n/2))-ceil(-a(n-1))` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A058039.P14759495503661210180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat - (-a (n - 1))

end

end A058039.P14759495503661210180

namespace A058039

/-- `2*a(floor(n/2))-ceil(-a(n-1))` -/
def P14759495503661210180.Spec : Prop :=
  ∀ n, P14759495503661210180.a n = A058039 n

end A058039

/-! ## A058039.P5053805782444254669

`a(n-1)+a(floor(n/2))/(1-1/2)` with `a(0)=1, a(1)=3`
-/

namespace A058039.P5053805782444254669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + a ⌊(n : ℚ) / 2⌋.toNat / (1 - (1 : ℚ) / 2)

end

end A058039.P5053805782444254669

namespace A058039

/-- `a(n-1)+a(floor(n/2))/(1-1/2)` -/
def P5053805782444254669.Spec : Prop :=
  ∀ n, P5053805782444254669.a n = (A058039 n : ℚ)

end A058039

/-! ## A058039.P88793311400661444

`record[A010684(n)*A347027(A065033(n))]`
-/

namespace A058039.P88793311400661444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A347027 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058039.P88793311400661444

namespace A058039

/-- `record[A010684(n)*A347027(A065033(n))]` -/
def P88793311400661444.Spec : Prop :=
  ∀ n, P88793311400661444.a n = A058039 n

end A058039

/-! ## A058039.P3411884488169386903

`A004277(a(floor(n/2)))+a(n-1)` with `a(0)=1`
-/

namespace A058039.P3411884488169386903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004277 (a ⌊(n : ℚ) / 2⌋.toNat).toNat + a (n - 1)

end

end A058039.P3411884488169386903

namespace A058039

/-- `A004277(a(floor(n/2)))+a(n-1)` -/
def P3411884488169386903.Spec : Prop :=
  ∀ n, P3411884488169386903.a n = A058039 n

end A058039

/-! ## A058039.P8413056706567038898

`A005843(a(floor(n/2)))+a(n-1)` with `a(0)=1`
-/

namespace A058039.P8413056706567038898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a ⌊(n : ℚ) / 2⌋.toNat).toNat + a (n - 1)

end

end A058039.P8413056706567038898

namespace A058039

/-- `A005843(a(floor(n/2)))+a(n-1)` -/
def P8413056706567038898.Spec : Prop :=
  ∀ n, P8413056706567038898.a n = A058039 n

end A058039

/-! ## A058039.P2845845667939619781

`A109043(a(floor(n/2)))+a(n-1)` with `a(0)=1`
-/

namespace A058039.P2845845667939619781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A109043 (a ⌊(n : ℚ) / 2⌋.toNat).toNat + a (n - 1)

end

end A058039.P2845845667939619781

namespace A058039

/-- `A109043(a(floor(n/2)))+a(n-1)` -/
def P2845845667939619781.Spec : Prop :=
  ∀ n, P2845845667939619781.a n = A058039 n

end A058039

/-! ## A058039.P474367381574399707

`a(n-1)+2*A109613(a(A004526(n)))` with `a(0)=1`
-/

namespace A058039.P474367381574399707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A109613 (a (A004526 n).toNat).toNat

end

end A058039.P474367381574399707

namespace A058039

/-- `a(n-1)+2*A109613(a(A004526(n)))` -/
def P474367381574399707.Spec : Prop :=
  ∀ n, P474367381574399707.a n = A058039 n

end A058039

/-!
# A058042: Trajectory of binary number 10110 under the operation 'Reverse and Add!' carried out in base 2.

The programs for A058042, the canonical program `A058042.P316197935502930513` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058042 has offset 0).

The definition of A058042 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A058042.P316197935502930513

`A007088(A061561(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058042

/-- `A007088(A061561(n))` -/
def P316197935502930513.Spec : Prop :=
  ∀ n, P316197935502930513.a n = A058042 n

theorem P316197935502930513.correct : P316197935502930513.Spec := by
  intro n
  simp only [A058042]

end A058042

/-! ## A058042.P17865288711369789963

`A185544(2*A061561(n))`
-/

namespace A058042.P17865288711369789963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A061561 n).toNat

end

end A058042.P17865288711369789963

namespace A058042

/-- `A185544(2*A061561(n))` -/
def P17865288711369789963.Spec : Prop :=
  ∀ n, P17865288711369789963.a n = A058042 n

end A058042

/-! ## A058042.P17520494887583873847

`A185544(A061561(n)+A061561(n))`
-/

namespace A058042.P17520494887583873847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A061561 n + A061561 n).toNat

end

end A058042.P17520494887583873847

namespace A058042

/-- `A185544(A061561(n)+A061561(n))` -/
def P17520494887583873847.Spec : Prop :=
  ∀ n, P17520494887583873847.a n = A058042 n

end A058042

/-!
# A058043: a(n) = nextprime(n^2) - prevprime(n^2).

The programs for A058043, the canonical program `A058043.P5464834808699039528` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058043 has offset 2).

The definition of A058043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058043.P13606958701114366519

`2*(n+2)-A162417(n+2)`
-/

namespace A058043.P13606958701114366519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) - A162417 (n + 2)

end

end A058043.P13606958701114366519

namespace A058043

/-- `2*(n+2)-A162417(n+2)` -/
def P13606958701114366519.Spec : Prop :=
  ∀ n, P13606958701114366519.a n = A058043 (n + 2)

theorem P13606958701114366519.correct : P13606958701114366519.Spec := by
  intro n
  simp only [A058043, Nat.add_sub_cancel, A058043.P13606958701114366519.a, A058043.P5464834808699039528.a, A053001, A053001.P15315627047163016254.a, A056928, A056928.P1059956196817698277.a, A162417, A162417.P3385297954225530343.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A053000, A053000.P7278427673394138104.a, A056927, A056927.P15198729554865341557.a, A013632, A013632.P6559946879985956067.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058043

/-! ## A058043.P5464834808699039528

`2*(A056928(n+2)-A053001(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A058043

/-- `2*(A056928(n+2)-A053001(n+2))` -/
def P5464834808699039528.Spec : Prop :=
  ∀ n, P5464834808699039528.a n = A058043 (n + 2)

theorem P5464834808699039528.correct : P5464834808699039528.Spec := by
  intro n
  simp only [A058043, Nat.add_sub_cancel]

end A058043

/-! ## A058043.P15214380249096918129

`2*(A056927(n+2)-A056929(n+2))`
-/

namespace A058043.P15214380249096918129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A056927 (n + 2) - A056929 (n + 2))

end

end A058043.P15214380249096918129

namespace A058043

/-- `2*(A056927(n+2)-A056929(n+2))` -/
def P15214380249096918129.Spec : Prop :=
  ∀ n, P15214380249096918129.a n = A058043 (n + 2)

theorem P15214380249096918129.correct : P15214380249096918129.Spec := by
  intro n
  simp only [A058043, Nat.add_sub_cancel, A058043.P15214380249096918129.a, A058043.P5464834808699039528.a, A053001, A053001.P15315627047163016254.a, A056927, A056927.P15198729554865341557.a, A056928, A056928.P1059956196817698277.a, A056929, A056929.P6975652131116657014.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000290, A000290.P12206242496348924484.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A053000, A053000.P7278427673394138104.a, A013632, A013632.P6559946879985956067.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058043

/-! ## A058043.P14251015229429407634

`A056927(n+2)+A053000(n+2)`
-/

namespace A058043.P14251015229429407634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (n + 2) + A053000 (n + 2)

end

end A058043.P14251015229429407634

namespace A058043

/-- `A056927(n+2)+A053000(n+2)` -/
def P14251015229429407634.Spec : Prop :=
  ∀ n, P14251015229429407634.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P3487462200317050644

`A007491(n+2)-A053001(n+2)`
-/

namespace A058043.P3487462200317050644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 2) - A053001 (n + 2)

end

end A058043.P3487462200317050644

namespace A058043

/-- `A007491(n+2)-A053001(n+2)` -/
def P3487462200317050644.Spec : Prop :=
  ∀ n, P3487462200317050644.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P9711485267043991558

`A007491(n+2)-A132657(n+1)/A007491(n+1)`
-/

namespace A058043.P9711485267043991558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007491 (n + 2) : ℚ) - (A132657 (n + 1) : ℚ) / (A007491 (n + 1) : ℚ)

end

end A058043.P9711485267043991558

namespace A058043

/-- `A007491(n+2)-A132657(n+1)/A007491(n+1)` -/
def P9711485267043991558.Spec : Prop :=
  ∀ n, P9711485267043991558.a n = (A058043 (n + 2) : ℚ)

end A058043

/-! ## A058043.P3259753738352161578

`A132657(n+2)/A053001(n+3)-A053001(n+2)`
-/

namespace A058043.P3259753738352161578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132657 (n + 2) : ℚ) / (A053001 (n + 3) : ℚ) - (A053001 (n + 2) : ℚ)

end

end A058043.P3259753738352161578

namespace A058043

/-- `A132657(n+2)/A053001(n+3)-A053001(n+2)` -/
def P3259753738352161578.Spec : Prop :=
  ∀ n, P3259753738352161578.a n = (A058043 (n + 2) : ℚ)

end A058043

/-! ## A058043.P13206763415687157438

`A001223(A038107(n+2))`
-/

namespace A058043.P13206763415687157438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A038107 (n + 2)).toNat

end

end A058043.P13206763415687157438

namespace A058043

/-- `A001223(A038107(n+2))` -/
def P13206763415687157438.Spec : Prop :=
  ∀ n, P13206763415687157438.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P6265535626819091733

`A001223(∑[A014085(n+1)])`
-/

namespace A058043.P6265535626819091733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058043.P6265535626819091733

namespace A058043

/-- `A001223(∑[A014085(n+1)])` -/
def P6265535626819091733.Spec : Prop :=
  ∀ n, P6265535626819091733.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P14033696137209382505

`A075526(∑[A014085(n+1)])`
-/

namespace A058043.P14033696137209382505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058043.P14033696137209382505

namespace A058043

/-- `A075526(∑[A014085(n+1)])` -/
def P14033696137209382505.Spec : Prop :=
  ∀ n, P14033696137209382505.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P18315184547803229256

`A166597((n+2)²)`
-/

namespace A058043.P18315184547803229256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 ((n + 2) ^ 2)

end

end A058043.P18315184547803229256

namespace A058043

/-- `A166597((n+2)²)` -/
def P18315184547803229256.Spec : Prop :=
  ∀ n, P18315184547803229256.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P12203483603913340367

`A001223(A000720((n+2)²))`
-/

namespace A058043.P12203483603913340367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A000720 ((n + 2) ^ 2)).toNat

end

end A058043.P12203483603913340367

namespace A058043

/-- `A001223(A000720((n+2)²))` -/
def P12203483603913340367.Spec : Prop :=
  ∀ n, P12203483603913340367.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P15382093561098258500

`A000040(A000720((n+2)²)+1)-A000040(A000720((n+2)²))`
-/

namespace A058043.P15382093561098258500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 ((n + 2) ^ 2) + 1).toNat - A000040 (A000720 ((n + 2) ^ 2)).toNat

end

end A058043.P15382093561098258500

namespace A058043

/-- `A000040(A000720((n+2)²)+1)-A000040(A000720((n+2)²))` -/
def P15382093561098258500.Spec : Prop :=
  ∀ n, P15382093561098258500.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P17356060146220179105

`A072680((n+2)²)`
-/

namespace A058043.P17356060146220179105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 ((n + 2) ^ 2)

end

end A058043.P17356060146220179105

namespace A058043

/-- `A072680((n+2)²)` -/
def P17356060146220179105.Spec : Prop :=
  ∀ n, P17356060146220179105.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P7523084658233884743

`A116982(A087811(n+1))`
-/

namespace A058043.P7523084658233884743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (A087811 (n + 1)).toNat

end

end A058043.P7523084658233884743

namespace A058043

/-- `A116982(A087811(n+1))` -/
def P7523084658233884743.Spec : Prop :=
  ∀ n, P7523084658233884743.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P1990600482614515652

`A116982(A076921(n+2))`
-/

namespace A058043.P1990600482614515652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (A076921 (n + 2)).toNat

end

end A058043.P1990600482614515652

namespace A058043

/-- `A116982(A076921(n+2))` -/
def P1990600482614515652.Spec : Prop :=
  ∀ n, P1990600482614515652.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P8985549683549438819

`A096501(A007491(n+2))`
-/

namespace A058043.P8985549683549438819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A007491 (n + 2)).toNat

end

end A058043.P8985549683549438819

namespace A058043

/-- `A096501(A007491(n+2))` -/
def P8985549683549438819.Spec : Prop :=
  ∀ n, P8985549683549438819.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P3368270150630003783

`A060267(A080476(n+2))`
-/

namespace A058043.P3368270150630003783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060267 (A080476 (n + 2)).toNat

end

end A058043.P3368270150630003783

namespace A058043

/-- `A060267(A080476(n+2))` -/
def P3368270150630003783.Spec : Prop :=
  ∀ n, P3368270150630003783.a n = A058043 (n + 2)

end A058043

/-! ## A058043.P16587731343012010023

`A096501(A151800((n+2)²))`
-/

namespace A058043.P16587731343012010023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096501 (A151800 ((n + 2) ^ 2)).toNat

end

end A058043.P16587731343012010023

namespace A058043

/-- `A096501(A151800((n+2)²))` -/
def P16587731343012010023.Spec : Prop :=
  ∀ n, P16587731343012010023.a n = A058043 (n + 2)

end A058043

/-!
# A058044: Difference between the smallest prime following and largest prime preceding n-th primorial number.

The programs for A058044, there is no canonical definition to state claims against.
-/

/-! ## A058044.P2603792142540134905

`A038710(n+2)-A007014(n+2)`
-/

namespace A058044.P2603792142540134905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038710 (n + 2) - A007014 (n + 2)

end

end A058044.P2603792142540134905

/-! ## A058044.P6117951049142974684

`2*A340041(n+2)`
-/

namespace A058044.P6117951049142974684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340041 (n + 2)

end

end A058044.P6117951049142974684

/-! ## A058044.P11391337379884262823

`A004277(A340041(n+2))`
-/

namespace A058044.P11391337379884262823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340041 (n + 2)).toNat

end

end A058044.P11391337379884262823

/-! ## A058044.P276224658300939784

`A004275(A340041(n+2)+1)`
-/

namespace A058044.P276224658300939784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A340041 (n + 2) + 1).toNat

end

end A058044.P276224658300939784

/-! ## A058044.P7973909191149347322

`A316571(A340041(n+2)+1)`
-/

namespace A058044.P7973909191149347322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316571 (A340041 (n + 2) + 1).toNat

end

end A058044.P7973909191149347322

/-! ## A058044.P1106429272125315970

`A005843(A340041(n+2)+1)-2`
-/

namespace A058044.P1106429272125315970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A340041 (n + 2) + 1).toNat - 2

end

end A058044.P1106429272125315970

/-! ## A058044.P7703602369313754235

`A038711(n+2)+A060270(n+2)`
-/

namespace A058044.P7703602369313754235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038711 (n + 2) + A060270 (n + 2)

end

end A058044.P7703602369313754235

/-! ## A058044.P7597254163584918751

`A005843(lcm((-1)^n, A340041(n+2)))`
-/

namespace A058044.P7597254163584918751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lcm ((-1) ^ n) (A340041 (n + 2)))

end

end A058044.P7597254163584918751

/-!
# A058046: Numbers k such that 5^k - k is prime.

The programs for A058046, there is no canonical definition to state claims against.
-/

/-! ## A058046.P11791566915849747979

`A284941((n+1)^A060546(n))`
-/

namespace A058046.P11791566915849747979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284941 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A060546 n : ℤ))).toNat

end

end A058046.P11791566915849747979

/-!
# A058048: For each prime P consider the generalized Collatz sequence of each integer N > 1 defined by c(0) = N, c(m+1) = c(m) * P + 1 if F > P, else c(m+1) = c(m) / F, where F is the smallest factor of c(m), until the sequence cycles. If all c(i) > 1 for some starting number N then P belongs to the sequence (and vice versa).

The programs for A058048, there is no canonical definition to state claims against.
-/

/-! ## A058048.P8135491741938414220

`p?[A325368(n+1)+A122257(3*n+1)]`
-/

namespace A058048.P8135491741938414220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (n + 1) + A122257 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058048.P8135491741938414220

/-! ## A058048.P8885010385958579157

`p?[∑[A261675(A142614(n+1))]]`
-/

namespace A058048.P8885010385958579157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261675 (A142614 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A058048.P8885010385958579157

/-! ## A058048.P3519103039360792779

`record[A014963(A088750(n+10)-1)]`
-/

namespace A058048.P3519103039360792779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A088750 (n + 10) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058048.P3519103039360792779

/-! ## A058048.P1038728416057808278

`record[A020639(A088750(n+10)-1)]`
-/

namespace A058048.P1038728416057808278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A088750 (n + 10) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058048.P1038728416057808278

/-! ## A058048.P2308326501699395577

`A000040(lt[A240825(n+1), A105626(2*n)])`
-/

namespace A058048.P2308326501699395577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105626 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A058048.P2308326501699395577

/-!
# A058049: Numbers k such that the sum of the digits of the first k primes is a prime.

The programs for A058049, the canonical program `A058049.P13942602292199883948` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058049 has offset 1).

The definition of A058049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058049.P10801560278264653932

`A000720(A129633(n+1))`
-/

namespace A058049.P10801560278264653932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A129633 (n + 1)).toNat

end

end A058049.P10801560278264653932

namespace A058049

/-- `A000720(A129633(n+1))` -/
def P10801560278264653932.Spec : Prop :=
  ∀ n, P10801560278264653932.a n = A058049 (n + 1)

end A058049

/-! ## A058049.P14101345325132526044

`A061395(2*A129633(n+1))`
-/

namespace A058049.P14101345325132526044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A129633 (n + 1)).toNat

end

end A058049.P14101345325132526044

namespace A058049

/-- `A061395(2*A129633(n+1))` -/
def P14101345325132526044.Spec : Prop :=
  ∀ n, P14101345325132526044.a n = A058049 (n + 1)

end A058049

/-! ## A058049.P13942602292199883948

`eq[2, A000005(A051351(n+1))]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A058049

/-- `eq[2, A000005(A051351(n+1))]+1` -/
def P13942602292199883948.Spec : Prop :=
  ∀ n, (P13942602292199883948.a n : ℤ) = A058049 (n + 1)

theorem P13942602292199883948.correct : P13942602292199883948.Spec := by
  intro n
  simp only [A058049, Nat.add_sub_cancel]

end A058049

/-! ## A058049.P14890323923438770510

`eq[1, A001222(∑[A007605(n+1)])]+1`
-/

namespace A058049.P14890323923438770510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058049.P14890323923438770510

namespace A058049

/-- `eq[1, A001222(∑[A007605(n+1)])]+1` -/
def P14890323923438770510.Spec : Prop :=
  ∀ n, (P14890323923438770510.a n : ℤ) = A058049 (n + 1)

end A058049

/-! ## A058049.P5216297773083237951

`lt[n, A020639(∑[A007605(n+1)])]+1`
-/

namespace A058049.P5216297773083237951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058049.P5216297773083237951

namespace A058049

/-- `lt[n, A020639(∑[A007605(n+1)])]+1` -/
def P5216297773083237951.Spec : Prop :=
  ∀ n, (P5216297773083237951.a n : ℤ) = A058049 (n + 1)

end A058049

/-! ## A058049.P12571045296551050997

`A036234(A129633(n+1)-1)`
-/

namespace A058049.P12571045296551050997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A129633 (n + 1) - 1).toNat

end

end A058049.P12571045296551050997

namespace A058049

/-- `A036234(A129633(n+1)-1)` -/
def P12571045296551050997.Spec : Prop :=
  ∀ n, P12571045296551050997.a n = A058049 (n + 1)

end A058049

/-! ## A058049.P1393230002350381440

`A055396(2*A129633(n+1)-A129633(n+1))`
-/

namespace A058049.P1393230002350381440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (2 * A129633 (n + 1) - A129633 (n + 1)).toNat

end

end A058049.P1393230002350381440

namespace A058049

/-- `A055396(2*A129633(n+1)-A129633(n+1))` -/
def P1393230002350381440.Spec : Prop :=
  ∀ n, P1393230002350381440.a n = A058049 (n + 1)

end A058049

/-!
# A058050: a(n) is the number of different graphs drawn in the following way: you decide for each number k <= n on a pair of positive numbers (x(k),y(k)) such that x(k)+y(k)=k; you draw n points numbered 1 to n; draw two arrows from n, one to x(n) and one to y(n); draw two arrows from each k already reached by an arrow, one to x(k) and one to y(k). The process stops when 1 is the only point reached by an arrow without any arrow leaving it; you can also erase the isolated points.

The programs for A058050, there is no canonical definition to state claims against.
-/

/-! ## A058050.P13199033129815055543

`A054846(or(A065033(n), A317974(n)))`
-/

namespace A058050.P13199033129815055543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (Int.lor (A065033 n) (A317974 n)).toNat

end

end A058050.P13199033129815055543

/-! ## A058050.P5307267554765279877

`A101276(∑[char[1]+1+n]-1)`
-/

namespace A058050.P5307267554765279877
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101276 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A058050.P5307267554765279877

/-! ## A058050.P12279427224194322844

`or(A026418(n+1), A209229(A058699(n)))`
-/

namespace A058050.P12279427224194322844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A026418 (n + 1)) (A209229 (A058699 n).toNat)

end

end A058050.P12279427224194322844

/-! ## A058050.P11484902619050383799

`A209229(A116149(n+1))+A026418(n+1)`
-/

namespace A058050.P11484902619050383799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A116149 (n + 1)).toNat + A026418 (n + 1)

end

end A058050.P11484902619050383799

/-! ## A058050.P2598611845848690879

`A046155(A278428(n+1)+A059897(n+1))`
-/

namespace A058050.P2598611845848690879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046155 (A278428 (n + 1) + A059897 (n + 1)).toNat

end

end A058050.P2598611845848690879

/-!
# A058051: a(n) = F(F(F(n))), where F is a Fibonacci number (A000045).

The programs for A058051, the canonical program `A058051.P5420670977741492477` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058051 has offset 0).

The definition of A058051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000045(A000045(n)))` (program `A058051.P5420670977741492477`, by `A058051.P5420670977741492477.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058051.P5420670977741492477

`A000045(A000045(A000045(n)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058051

/-- `A000045(A000045(A000045(n)))` -/
def P5420670977741492477.Spec : Prop :=
  ∀ n, P5420670977741492477.a n = A058051 n

theorem P5420670977741492477.correct : P5420670977741492477.Spec := by
  intro n
  simp only [A058051]

end A058051

/-! ## A058051.P8368524396139922458

`A007570(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A058051.P8368524396139922458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007570 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A058051.P8368524396139922458

namespace A058051

/-- `A007570(∑[a(n-1)-(1-a(n-2))]-n)` -/
def P8368524396139922458.Spec : Prop :=
  ∀ n, P8368524396139922458.a n = A058051 n

end A058051

/-! ## A058051.P2418117886186162586

`A007570(A000045(n))`
-/

namespace A058051.P2418117886186162586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007570 (A000045 n).toNat

end

end A058051.P2418117886186162586

namespace A058051

/-- `A007570(A000045(n))` -/
def P2418117886186162586.Spec : Prop :=
  ∀ n, P2418117886186162586.a n = A058051 n

end A058051

/-! ## A058051.P4570344319840728243

`A007570(A001129(n))`
-/

namespace A058051.P4570344319840728243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007570 (A001129 n).toNat

end

end A058051.P4570344319840728243

namespace A058051

/-- `A007570(A001129(n))` -/
def P4570344319840728243.Spec : Prop :=
  ∀ n, P4570344319840728243.a n = A058051 n

end A058051

/-!
# A058052: Sum of the distances between the 2^n vertices in the De Bruijn Graphs on words of length n on alphabet {0,1}.

The programs for A058052, there is no canonical definition to state claims against.
-/

/-! ## A058052.P2178403702077022045

`A201629(A074141(2*n+1)-A048728(n))`
-/

namespace A058052.P2178403702077022045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 (A074141 (2 * n + 1) - A048728 n).toNat

end

end A058052.P2178403702077022045

/-!
# A058053: Number of 3-rowed binary matrices with n ones and no zero columns, up to row and column permutation.

The programs for A058053, the canonical program `A058053.P2509255081695082303` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058053 has offset 0).

The definition of A058053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 280 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058053.P17758627988410856792

`ogf((1-x+x^2+x^4+x^6-x^7+x^8)/(1-2x+2x^4+2x^5-4x^6+2x^7-3x^8+2x^9-2x^11+3x^12-2x^13+4x^14-2x^15-2x^16+2x^19-x^20))`
-/

namespace A058053.P17758627988410856792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 1, 0, 1, 0, 1, -1, 1] [1, -2, 0, 0, 2, 2, -4, 2, -3, 2, 0, -2, 3, -2, 4, -2, -2, 0, 0, 2, -1] n

end

end A058053.P17758627988410856792

namespace A058053

/-- `ogf((1-x+x^2+x^4+x^6-x^7+x^8)/(1-2x+2x^4+2x^5-4x^6+2x^7-3x^8+2x^9-2x^11+3x^12-2x^13+4x^14-2x^15-2x^16+2x^19-x^20))` -/
def P17758627988410856792.Spec : Prop :=
  ∀ n, P17758627988410856792.a n = A058053 n

end A058053

/-! ## A058053.P2509255081695082303

`A097513(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058053

/-- `A097513(n)+a(n-3)` -/
def P2509255081695082303.Spec : Prop :=
  ∀ n, P2509255081695082303.a n = A058053 n

theorem P2509255081695082303.correct : P2509255081695082303.Spec := by
  intro n
  simp only [A058053]

end A058053

/-! ## A058053.P449797507368891225

`A244644(A353863(2*n))`
-/

namespace A058053.P449797507368891225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244644 (A353863 (2 * n)).toNat

end

end A058053.P449797507368891225

namespace A058053

/-- `A244644(A353863(2*n))` -/
def P449797507368891225.Spec : Prop :=
  ∀ n, P449797507368891225.a n = A058053 n

end A058053

/-! ## A058053.P10613146922377537272

`A133137(A070559(n))+A069905(n)`
-/

namespace A058053.P10613146922377537272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A070559 n).toNat + A069905 n

end

end A058053.P10613146922377537272

namespace A058053

/-- `A133137(A070559(n))+A069905(n)` -/
def P10613146922377537272.Spec : Prop :=
  ∀ n, P10613146922377537272.a n = A058053 n

end A058053

/-! ## A058053.P3199567852031379642

`A133137(A070559(n))+A111133(n)`
-/

namespace A058053.P3199567852031379642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133137 (A070559 n).toNat + A111133 n

end

end A058053.P3199567852031379642

namespace A058053

/-- `A133137(A070559(n))+A111133(n)` -/
def P3199567852031379642.Spec : Prop :=
  ∀ n, P3199567852031379642.a n = A058053 n

end A058053

/-!
# A058054: Smallest prime > n! minus largest prime <= n!.

The programs for A058054, there is no canonical definition to state claims against.
-/

/-! ## A058054.P11440321839884917295

`A033932(n+2)+A033933(n+2)`
-/

namespace A058054.P11440321839884917295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 (n + 2) + A033933 (n + 2)

end

end A058054.P11440321839884917295

/-! ## A058054.P16069551290091305587

`A037151(n+2)-A006990(n+2)`
-/

namespace A058054.P16069551290091305587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037151 (n + 2) - A006990 (n + 2)

end

end A058054.P16069551290091305587

/-! ## A058054.P3219120247069488600

`A340802(n+2)+1`
-/

namespace A058054.P3219120247069488600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (n + 2) + 1

end

end A058054.P3219120247069488600

/-! ## A058054.P17384917397956530365

`A033932(n+2)+A245696(n+3)/(n+3)`
-/

namespace A058054.P17384917397956530365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033932 (n + 2) : ℚ) + (A245696 (n + 3) : ℚ) / (n + 3 : ℚ)

end

end A058054.P17384917397956530365

/-! ## A058054.P10410825289464843608

`A015906(A340802(n+2))`
-/

namespace A058054.P10410825289464843608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (A340802 (n + 2)).toNat

end

end A058054.P10410825289464843608

/-! ## A058054.P1736380567781354015

`A037151(A000027(n+2))%A006990(n+2)`
-/

namespace A058054.P1736380567781354015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037151 (A000027 (n + 2)).toNat) (A006990 (n + 2))

end

end A058054.P1736380567781354015

/-!
# A058055: a(n) is the smallest positive number m such that m^2 + n is the next prime > m^2.

The programs for A058055, there is no canonical definition to state claims against.
-/

/-! ## A058055.P3151900621281116600

`floor(sqrt(A058056(n+1)))`
-/

namespace A058055.P3151900621281116600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A058056 (n + 1))

end

end A058055.P3151900621281116600

/-! ## A058055.P14866852103461161341

`round(sqrt(A058056(n+1)+A004526(n)))`
-/

namespace A058055.P14866852103461161341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A058056 (n + 1) + A004526 n : ℝ))

end

end A058055.P14866852103461161341

/-! ## A058055.P16346731020994500627

`round(sqrt(A090001(n)+A058056(n+1)))`
-/

namespace A058055.P16346731020994500627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A090001 n + A058056 (n + 1) : ℝ))

end

end A058055.P16346731020994500627

/-! ## A058055.P7463254848293900047

`round(sqrt(A058056(n+1)-A003056(n)))`
-/

namespace A058055.P7463254848293900047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A058056 (n + 1) - A003056 n : ℝ))

end

end A058055.P7463254848293900047

/-! ## A058055.P18021519332300244598

`floor(root(A153000(n)+A058056(n+1), 2))`
-/

namespace A058055.P18021519332300244598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A153000 n + A058056 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A058055.P18021519332300244598

/-! ## A058055.P16180152580842886219

`sqrt(A058056(n+1)-sqrt(A000290(n+1)))`
-/

namespace A058055.P16180152580842886219
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A058056 (n + 1) : ℝ) - Real.sqrt (A000290 (n + 1) : ℝ))

end

end A058055.P16180152580842886219

/-! ## A058055.P712852674777086082

`sqrt(A058056(n+1)-A260316(3*(n+1)))`
-/

namespace A058055.P712852674777086082
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A058056 (n + 1) - A260316 (3 * (n + 1)) : ℝ)

end

end A058055.P712852674777086082

/-! ## A058055.P4030528491557645720

`floor(root(A058056(n+1)+A009194(n+1), 2))`
-/

namespace A058055.P4030528491557645720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A058056 (n + 1) + A009194 (n + 1) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A058055.P4030528491557645720

/-!
# A058056: a(n) = p is the smallest prime such that p = n + h(n)^2 and p is the first prime following h(n)^2. The smallest immediate post-square primes with distance n = p - h(n)^2.

The programs for A058056, there is no canonical definition to state claims against.
-/

/-! ## A058056.P17282956754715028078

`n+1+A058055(n+1)²`
-/

namespace A058056.P17282956754715028078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A058055 (n + 1) ^ 2

end

end A058056.P17282956754715028078

/-! ## A058056.P6701931741191693887

`A000027(n+1)+A058055(n+1)^2`
-/

namespace A058056.P6701931741191693887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) + A058055 (n + 1) ^ 2

end

end A058056.P6701931741191693887

/-! ## A058056.P4549933849499433747

`A321474(A321474(n+1))+A058055(n+1)^2`
-/

namespace A058056.P4549933849499433747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321474 (A321474 (n + 1)).toNat + A058055 (n + 1) ^ 2

end

end A058056.P4549933849499433747

/-! ## A058056.P1073574709117492003

`A058055(n+1)^A001221(A296096(n+1))+n+1`
-/

namespace A058056.P1073574709117492003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058055 (n + 1) : ℚ) ^ (A001221 (A296096 (n + 1)).toNat : ℤ) + (n + 1 : ℚ)

end

end A058056.P1073574709117492003

/-! ## A058056.P3787750317182451045

`A007491(A058055(n+1))`
-/

namespace A058056.P3787750317182451045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A058055 (n + 1)).toNat

end

end A058056.P3787750317182451045

/-! ## A058056.P16969993629517922366

`A002260(∑[n+1])+A000290(A058055(n+1))`
-/

namespace A058056.P16969993629517922366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j) + A000290 (A058055 (n + 1)).toNat

end

end A058056.P16969993629517922366

/-!
# A058057: Triangle giving coefficients of ménage hit polynomials.

The programs for A058057, there is no canonical definition to state claims against.
-/

/-! ## A058057.P15670959818694431344

`A156368(A061579(n))`
-/

namespace A058057.P15670959818694431344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A061579 n).toNat

end

end A058057.P15670959818694431344

/-! ## A058057.P771604697620574660

`A156368(A114327(n)+n)`
-/

namespace A058057.P771604697620574660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A114327 n + (n : ℤ)).toNat

end

end A058057.P771604697620574660

/-! ## A058057.P4308868989201467665

`A156368(A038722(n+1)-1)`
-/

namespace A058057.P4308868989201467665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A038722 (n + 1) - 1).toNat

end

end A058057.P4308868989201467665

/-! ## A058057.P10803591271069006823

`A156368(A093995(n+1)-(n+1))`
-/

namespace A058057.P10803591271069006823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A058057.P10803591271069006823

/-! ## A058057.P12794132251919069120

`A156368(A057944(n)+A025581(n))`
-/

namespace A058057.P12794132251919069120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A057944 n + A025581 n).toNat

end

end A058057.P12794132251919069120

/-! ## A058057.P16351612330375512289

`A156368(A002378(n)%A014132(n+1))`
-/

namespace A058057.P16351612330375512289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A058057.P16351612330375512289

/-! ## A058057.P12007673254766246304

`A156368(A127739(n+1)-A002260(n+1))`
-/

namespace A058057.P12007673254766246304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (A127739 (n + 1) - A002260 (n + 1)).toNat

end

end A058057.P12007673254766246304

/-!
# A058058: Generalized Somos-7 sequence: a(n)*a(n+7) = 3*a(n+1)*a(n+6) - 4*a(n+2)* a(n+5) + 4*a(n+3)*a(n+4).

The programs for A058058, there is no canonical definition to state claims against.
-/

/-! ## A058058.P5572231131799557075

`A146393(n+1)-A067168(A146391(n+1))`
-/

namespace A058058.P5572231131799557075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146393 (n + 1) - A067168 ((A146391 (n + 1)).toNat + 10)

end

end A058058.P5572231131799557075

/-! ## A058058.P6288199125095548193

`A146638(A004186(n+1))%A050216(3*(n+1))`
-/

namespace A058058.P6288199125095548193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146638 (A004186 (n + 1)).toNat) (A050216 (3 * (n + 1)))

end

end A058058.P6288199125095548193

/-! ## A058058.P15022902377133486584

`A291168(2*(floor((11/8)^n)+8))`
-/

namespace A058058.P15022902377133486584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291168 (2 * (⌊((11 : ℚ) / 8) ^ n⌋ + 8)).toNat

end

end A058058.P15022902377133486584

/-! ## A058058.P11217877848232668705

`A146614(∑[n*val(∏{p}[n, #], 11)+1])`
-/

namespace A058058.P11217877848232668705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 11 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146614 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A058058.P11217877848232668705

/-! ## A058058.P6497861800814112208

`A146614(n*val(∏{p}[n, #], 11)+n+1)`
-/

namespace A058058.P6497861800814112208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146614 (n * SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), p) 11 + (n + 1))

end

end A058058.P6497861800814112208

/-!
# A058059: Numbers n such that x^n + x + 2 is irreducible over GF(3).

The programs for A058059, there is no canonical definition to state claims against.
-/

/-! ## A058059.P8954698413674949250

`∩[2*n, A223938(n+1)]`
-/

namespace A058059.P8954698413674949250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058059.P8954698413674949250

/-! ## A058059.P915181631102245778

`record[abs(A009531(A223938(n+1)))]`
-/

namespace A058059.P915181631102245778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009531 (A223938 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058059.P915181631102245778

/-! ## A058059.P2012105767086763348

`∩[A223938(n+1), A254748(n+1)]`
-/

namespace A058059.P2012105767086763348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058059.P2012105767086763348

/-! ## A058059.P9567336854931260757

`∩[A223938(n+1), A260391(n+1)]`
-/

namespace A058059.P9567336854931260757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058059.P9567336854931260757

/-!
# A058060: Number of distinct prime factors of d(n), the number of divisors of n.

The programs for A058060, the canonical program `A058060.P4447355735283951934` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058060 has offset 1).

The definition of A058060 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058060.P4447355735283951934

`A001221(A000005(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058060

/-- `A001221(A000005(n+1))` -/
def P4447355735283951934.Spec : Prop :=
  ∀ n, P4447355735283951934.a n = A058060 (n + 1)

theorem P4447355735283951934.correct : P4447355735283951934.Spec := by
  intro n
  simp only [A058060, Nat.add_sub_cancel]

end A058060

/-! ## A058060.P6722072494669887363

`∑{e}[A152235(n+1), #]`
-/

namespace A058060.P6722072494669887363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058060.P6722072494669887363

namespace A058060

/-- `∑{e}[A152235(n+1), #]` -/
def P6722072494669887363.Spec : Prop :=
  ∀ n, (P6722072494669887363.a n : ℤ) = A058060 (n + 1)

end A058060

/-! ## A058060.P13279003975916764481

`A001221(∏{e}[n+1, #+1])`
-/

namespace A058060.P13279003975916764481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A058060.P13279003975916764481

namespace A058060

/-- `A001221(∏{e}[n+1, #+1])` -/
def P13279003975916764481.Spec : Prop :=
  ∀ n, P13279003975916764481.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P18061240133970961250

`A001221(∑{d}[n+1, gcd(n, #)])`
-/

namespace A058060.P18061240133970961250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A058060.P18061240133970961250

namespace A058060

/-- `A001221(∑{d}[n+1, gcd(n, #)])` -/
def P18061240133970961250.Spec : Prop :=
  ∀ n, P18061240133970961250.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P11491644022888360669

`A001221(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A058060.P11491644022888360669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A058060.P11491644022888360669

namespace A058060

/-- `A001221(∑{d}[n+1, ceil(acot(#))])` -/
def P11491644022888360669.Spec : Prop :=
  ∀ n, P11491644022888360669.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P249274880546645917

`A001221(∑{d}[n+1, (#%2)!])`
-/

namespace A058060.P249274880546645917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2))

end

end A058060.P249274880546645917

namespace A058060

/-- `A001221(∑{d}[n+1, (#%2)!])` -/
def P249274880546645917.Spec : Prop :=
  ∀ n, P249274880546645917.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P17540175044482288233

`A001221(∑{d}[n+1, ((-1)^#)²])`
-/

namespace A058060.P17540175044482288233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2).toNat

end

end A058060.P17540175044482288233

namespace A058060

/-- `A001221(∑{d}[n+1, ((-1)^#)²])` -/
def P17540175044482288233.Spec : Prop :=
  ∀ n, P17540175044482288233.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P7145505519729234973

`A001221(Δ[A006218(n)])`
-/

namespace A058060.P7145505519729234973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A058060.P7145505519729234973

namespace A058060

/-- `A001221(Δ[A006218(n)])` -/
def P7145505519729234973.Spec : Prop :=
  ∀ n, P7145505519729234973.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P4348485622528080292

`A001221(Δ[A054519(n)])`
-/

namespace A058060.P4348485622528080292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A058060.P4348485622528080292

namespace A058060

/-- `A001221(Δ[A054519(n)])` -/
def P4348485622528080292.Spec : Prop :=
  ∀ n, P4348485622528080292.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P17537487334618916577

`A001221(A035116(n+1))`
-/

namespace A058060.P17537487334618916577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A035116 (n + 1)).toNat

end

end A058060.P17537487334618916577

namespace A058060

/-- `A001221(A035116(n+1))` -/
def P17537487334618916577.Spec : Prop :=
  ∀ n, P17537487334618916577.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P17197102942627734344

`A001221(A152235(n+1))`
-/

namespace A058060.P17197102942627734344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A152235 (n + 1)).toNat

end

end A058060.P17197102942627734344

namespace A058060

/-- `A001221(A152235(n+1))` -/
def P17197102942627734344.Spec : Prop :=
  ∀ n, P17197102942627734344.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P6562330890395145888

`A106404(A062011(n+1))`
-/

namespace A058060.P6562330890395145888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (A062011 (n + 1)).toNat

end

end A058060.P6562330890395145888

namespace A058060

/-- `A106404(A062011(n+1))` -/
def P6562330890395145888.Spec : Prop :=
  ∀ n, P6562330890395145888.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P621380258324555738

`A056170(A000005(n+1)²)`
-/

namespace A058060.P621380258324555738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A000005 (n + 1) ^ 2).toNat

end

end A058060.P621380258324555738

namespace A058060

/-- `A056170(A000005(n+1)²)` -/
def P621380258324555738.Spec : Prop :=
  ∀ n, P621380258324555738.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P5290209768291202906

`A063962(A000005(n+1)²)`
-/

namespace A058060.P5290209768291202906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063962 (A000005 (n + 1) ^ 2).toNat

end

end A058060.P5290209768291202906

namespace A058060

/-- `A063962(A000005(n+1)²)` -/
def P5290209768291202906.Spec : Prop :=
  ∀ n, P5290209768291202906.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P5975286684341664109

`A087624(A000005(n+1)²)`
-/

namespace A058060.P5975286684341664109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087624 (A000005 (n + 1) ^ 2).toNat

end

end A058060.P5975286684341664109

namespace A058060

/-- `A087624(A000005(n+1)²)` -/
def P5975286684341664109.Spec : Prop :=
  ∀ n, P5975286684341664109.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P15964031486532595185

`A158210(A000005(n+1)²)`
-/

namespace A058060.P15964031486532595185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158210 (A000005 (n + 1) ^ 2).toNat

end

end A058060.P15964031486532595185

namespace A058060

/-- `A158210(A000005(n+1)²)` -/
def P15964031486532595185.Spec : Prop :=
  ∀ n, P15964031486532595185.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P5146075059355676569

`A322811(A000005(n+1)²)`
-/

namespace A058060.P5146075059355676569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (A000005 (n + 1) ^ 2).toNat

end

end A058060.P5146075059355676569

namespace A058060

/-- `A322811(A000005(n+1)²)` -/
def P5146075059355676569.Spec : Prop :=
  ∀ n, P5146075059355676569.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P13785305643085893419

`A001221(A032741(n+1)+1)`
-/

namespace A058060.P13785305643085893419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A032741 (n + 1) + 1).toNat

end

end A058060.P13785305643085893419

namespace A058060

/-- `A001221(A032741(n+1)+1)` -/
def P13785305643085893419.Spec : Prop :=
  ∀ n, P13785305643085893419.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P4501880733059094344

`A106404(2*A000005(n+1))`
-/

namespace A058060.P4501880733059094344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (2 * A000005 (n + 1)).toNat

end

end A058060.P4501880733059094344

namespace A058060

/-- `A106404(2*A000005(n+1))` -/
def P4501880733059094344.Spec : Prop :=
  ∀ n, P4501880733059094344.a n = A058060 (n + 1)

end A058060

/-! ## A058060.P18407110908202254781

`A001221(A110088(n+1))`
-/

namespace A058060.P18407110908202254781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A110088 (n + 1)).toNat

end

end A058060.P18407110908202254781

namespace A058060

/-- `A001221(A110088(n+1))` -/
def P18407110908202254781.Spec : Prop :=
  ∀ n, P18407110908202254781.a n = A058060 (n + 1)

end A058060

/-!
# A058061: Number of prime factors (counted with multiplicity) of d(n), the number of divisors of n.

The programs for A058061, the canonical program `A058061.P15238060395017308637` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058061 has offset 1).

The definition of A058061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058061.P15238060395017308637

`A001222(A000005(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058061

/-- `A001222(A000005(n+1))` -/
def P15238060395017308637.Spec : Prop :=
  ∀ n, P15238060395017308637.a n = A058061 (n + 1)

theorem P15238060395017308637.correct : P15238060395017308637.Spec := by
  intro n
  simp only [A058061, Nat.add_sub_cancel]

end A058061

/-! ## A058061.P6455060076598981458

`∑{e}[∏{e}[n+1, #+1], #]`
-/

namespace A058061.P6455060076598981458
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A058061.P6455060076598981458

namespace A058061

/-- `∑{e}[∏{e}[n+1, #+1], #]` -/
def P6455060076598981458.Spec : Prop :=
  ∀ n, (P6455060076598981458.a n : ℤ) = A058061 (n + 1)

end A058061

/-! ## A058061.P17392655369217170638

`∑{e}[∑{d}[n+1, gcd(n, #)], #]`
-/

namespace A058061.P17392655369217170638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A058061.P17392655369217170638

namespace A058061

/-- `∑{e}[∑{d}[n+1, gcd(n, #)], #]` -/
def P17392655369217170638.Spec : Prop :=
  ∀ n, (P17392655369217170638.a n : ℤ) = A058061 (n + 1)

end A058061

/-! ## A058061.P9914746116073452860

`∑{e}[A000005(n+1), #]`
-/

namespace A058061.P9914746116073452860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058061.P9914746116073452860

namespace A058061

/-- `∑{e}[A000005(n+1), #]` -/
def P9914746116073452860.Spec : Prop :=
  ∀ n, (P9914746116073452860.a n : ℤ) = A058061 (n + 1)

end A058061

/-! ## A058061.P13799062629222027191

`∑{e}[A329484(n+1), #]`
-/

namespace A058061.P13799062629222027191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329484 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058061.P13799062629222027191

namespace A058061

/-- `∑{e}[A329484(n+1), #]` -/
def P13799062629222027191.Spec : Prop :=
  ∀ n, (P13799062629222027191.a n : ℤ) = A058061 (n + 1)

end A058061

/-! ## A058061.P12611002249229377694

`∑{e}[n+1, A001222(#+1)]`
-/

namespace A058061.P12611002249229377694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (Nat.factorization (f1 n) p + 1)

end

end A058061.P12611002249229377694

namespace A058061

/-- `∑{e}[n+1, A001222(#+1)]` -/
def P12611002249229377694.Spec : Prop :=
  ∀ n, P12611002249229377694.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P13414659300703149716

`A001222(∏{e}[n+1, #+1])`
-/

namespace A058061.P13414659300703149716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A058061.P13414659300703149716

namespace A058061

/-- `A001222(∏{e}[n+1, #+1])` -/
def P13414659300703149716.Spec : Prop :=
  ∀ n, P13414659300703149716.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P809465392258555269

`A001222(∑{d}[n+1, gcd(n, #)])`
-/

namespace A058061.P809465392258555269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A058061.P809465392258555269

namespace A058061

/-- `A001222(∑{d}[n+1, gcd(n, #)])` -/
def P809465392258555269.Spec : Prop :=
  ∀ n, P809465392258555269.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P10853325075137699430

`A001222(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A058061.P10853325075137699430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A058061.P10853325075137699430

namespace A058061

/-- `A001222(∑{d}[n+1, ceil(acot(#))])` -/
def P10853325075137699430.Spec : Prop :=
  ∀ n, P10853325075137699430.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P14277289986000143976

`A001222(∑{d}[n+1, (#%2)!])`
-/

namespace A058061.P14277289986000143976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (d % 2))

end

end A058061.P14277289986000143976

namespace A058061

/-- `A001222(∑{d}[n+1, (#%2)!])` -/
def P14277289986000143976.Spec : Prop :=
  ∀ n, P14277289986000143976.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P12443031765479318109

`A001222(∑{d}[n+1, ((-1)^#)²])`
-/

namespace A058061.P12443031765479318109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), ((-1) ^ d) ^ 2).toNat

end

end A058061.P12443031765479318109

namespace A058061

/-- `A001222(∑{d}[n+1, ((-1)^#)²])` -/
def P12443031765479318109.Spec : Prop :=
  ∀ n, P12443031765479318109.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P11845590271781778653

`A001222(Δ[A006218(n)])`
-/

namespace A058061.P11845590271781778653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A058061.P11845590271781778653

namespace A058061

/-- `A001222(Δ[A006218(n)])` -/
def P11845590271781778653.Spec : Prop :=
  ∀ n, P11845590271781778653.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P9133732709183528137

`A001222(Δ[A054519(n)])`
-/

namespace A058061.P9133732709183528137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A058061.P9133732709183528137

namespace A058061

/-- `A001222(Δ[A054519(n)])` -/
def P9133732709183528137.Spec : Prop :=
  ∀ n, P9133732709183528137.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P11210784919148082745

`A001222(sqrt(A035116(n+1)))`
-/

namespace A058061.P11210784919148082745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A035116 (n + 1) : ℝ))).toNat

end

end A058061.P11210784919148082745

namespace A058061

/-- `A001222(sqrt(A035116(n+1)))` -/
def P11210784919148082745.Spec : Prop :=
  ∀ n, P11210784919148082745.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P10106242411381951252

`A001222(A032741(n+1)+1)`
-/

namespace A058061.P10106242411381951252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A032741 (n + 1) + 1).toNat

end

end A058061.P10106242411381951252

namespace A058061

/-- `A001222(A032741(n+1)+1)` -/
def P10106242411381951252.Spec : Prop :=
  ∀ n, P10106242411381951252.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P6296153329944055462

`A001222(A145154(n+1))-2`
-/

namespace A058061.P6296153329944055462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A145154 (n + 1)).toNat - 2

end

end A058061.P6296153329944055462

namespace A058061

/-- `A001222(A145154(n+1))-2` -/
def P6296153329944055462.Spec : Prop :=
  ∀ n, P6296153329944055462.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P9839996175587670368

`A001222(A320111(2*(n+1)))`
-/

namespace A058061.P9839996175587670368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A320111 (2 * (n + 1))).toNat

end

end A058061.P9839996175587670368

namespace A058061

/-- `A001222(A320111(2*(n+1)))` -/
def P9839996175587670368.Spec : Prop :=
  ∀ n, P9839996175587670368.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P10638084152548141369

`∑{d}[A000005(n+1), A069513(#)]`
-/

namespace A058061.P10638084152548141369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A058061.P10638084152548141369

namespace A058061

/-- `∑{d}[A000005(n+1), A069513(#)]` -/
def P10638084152548141369.Spec : Prop :=
  ∀ n, P10638084152548141369.a n = A058061 (n + 1)

end A058061

/-! ## A058061.P9922164638596234696

`A001222(1-A049820(n+1)+n)`
-/

namespace A058061.P9922164638596234696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (1 - A049820 (n + 1) + (n : ℤ)).toNat

end

end A058061.P9922164638596234696

namespace A058061

/-- `A001222(1-A049820(n+1)+n)` -/
def P9922164638596234696.Spec : Prop :=
  ∀ n, P9922164638596234696.a n = A058061 (n + 1)

theorem P9922164638596234696.correct : P9922164638596234696.Spec := by
  intro n
  simp only [A058061, Nat.add_sub_cancel, A058061.P9922164638596234696.a, A058061.P15238060395017308637.a, A000005, A000005.P16091521709108585461.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A049820, A049820.P9428372222244335888.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058061

/-! ## A058061.P5058301574315133413

`A001222(A000005(2*n-(n-1))²)/2`
-/

namespace A058061.P5058301574315133413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A000005 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat ^ 2).toNat : ℚ) / 2

end

end A058061.P5058301574315133413

namespace A058061

/-- `A001222(A000005(2*n-(n-1))²)/2` -/
def P5058301574315133413.Spec : Prop :=
  ∀ n, P5058301574315133413.a n = (A058061 (n + 1) : ℚ)

end A058061

/-!
# A058062: Number of distinct prime factors of sigma(n), the sum of the divisors of n.

The programs for A058062, the canonical program `A058062.P890749106992542312` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058062 has offset 1).

The definition of A058062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058062.P890749106992542312

`A001221(A000203(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058062

/-- `A001221(A000203(n+1))` -/
def P890749106992542312.Spec : Prop :=
  ∀ n, P890749106992542312.a n = A058062 (n + 1)

theorem P890749106992542312.correct : P890749106992542312.Spec := by
  intro n
  simp only [A058062, Nat.add_sub_cancel]

end A058062

/-! ## A058062.P12386774677883962625

`A001221(∑{d}[n+1, #])`
-/

namespace A058062.P12386774677883962625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A058062.P12386774677883962625

namespace A058062

/-- `A001221(∑{d}[n+1, #])` -/
def P12386774677883962625.Spec : Prop :=
  ∀ n, P12386774677883962625.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P3866462899688406170

`∑{e}[A080398(n+1), #]`
-/

namespace A058062.P3866462899688406170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080398 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058062.P3866462899688406170

namespace A058062

/-- `∑{e}[A080398(n+1), #]` -/
def P3866462899688406170.Spec : Prop :=
  ∀ n, (P3866462899688406170.a n : ℤ) = A058062 (n + 1)

end A058062

/-! ## A058062.P5619689969684259476

`∑{p}[∑{d}[n+1, #], A227320(#)]`
-/

namespace A058062.P5619689969684259476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A227320 p

end

end A058062.P5619689969684259476

namespace A058062

/-- `∑{p}[∑{d}[n+1, #], A227320(#)]` -/
def P5619689969684259476.Spec : Prop :=
  ∀ n, P5619689969684259476.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P18386291760095624739

`A001222(∏{p}[∑{d}[n+1, #], #])`
-/

namespace A058062.P18386291760095624739
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A058062.P18386291760095624739

namespace A058062

/-- `A001222(∏{p}[∑{d}[n+1, #], #])` -/
def P18386291760095624739.Spec : Prop :=
  ∀ n, P18386291760095624739.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P12732141030151579509

`A001221(Δ[A160664(n)])`
-/

namespace A058062.P12732141030151579509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A058062.P12732141030151579509

namespace A058062

/-- `A001221(Δ[A160664(n)])` -/
def P12732141030151579509.Spec : Prop :=
  ∀ n, P12732141030151579509.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P12331439242599076701

`A001221(A080398(n+1))`
-/

namespace A058062.P12331439242599076701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A080398 (n + 1)).toNat

end

end A058062.P12331439242599076701

namespace A058062

/-- `A001221(A080398(n+1))` -/
def P12331439242599076701.Spec : Prop :=
  ∀ n, P12331439242599076701.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P16218651586077945795

`A001221(A175433(n+1))`
-/

namespace A058062.P16218651586077945795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A175433 (n + 1)).toNat

end

end A058062.P16218651586077945795

namespace A058062

/-- `A001221(A175433(n+1))` -/
def P16218651586077945795.Spec : Prop :=
  ∀ n, P16218651586077945795.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P8019115654995510034

`A001221(A276528(n+1))`
-/

namespace A058062.P8019115654995510034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A276528 (n + 1)).toNat

end

end A058062.P8019115654995510034

namespace A058062

/-- `A001221(A276528(n+1))` -/
def P8019115654995510034.Spec : Prop :=
  ∀ n, P8019115654995510034.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P7447316990186508180

`A001221(A353783(n+1))`
-/

namespace A058062.P7447316990186508180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A353783 (n + 1)).toNat

end

end A058062.P7447316990186508180

namespace A058062

/-- `A001221(A353783(n+1))` -/
def P7447316990186508180.Spec : Prop :=
  ∀ n, P7447316990186508180.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P666202878261575951

`A001221(A039653(n+1)+1)`
-/

namespace A058062.P666202878261575951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A039653 (n + 1) + 1).toNat

end

end A058062.P666202878261575951

namespace A058062

/-- `A001221(A039653(n+1)+1)` -/
def P666202878261575951.Spec : Prop :=
  ∀ n, P666202878261575951.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P7261779281580194020

`A001221(A088580(n+1)-1)`
-/

namespace A058062.P7261779281580194020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A088580 (n + 1) - 1).toNat

end

end A058062.P7261779281580194020

namespace A058062

/-- `A001221(A088580(n+1)-1)` -/
def P7261779281580194020.Spec : Prop :=
  ∀ n, P7261779281580194020.a n = A058062 (n + 1)

theorem P7261779281580194020.correct : P7261779281580194020.Spec := by
  intro n
  simp only [A058062, Nat.add_sub_cancel, A058062.P7261779281580194020.a, A058062.P890749106992542312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058062

/-! ## A058062.P13203663208821727302

`A001221(A245092(2*n+1))`
-/

namespace A058062.P13203663208821727302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A245092 (2 * n + 1)).toNat

end

end A058062.P13203663208821727302

namespace A058062

/-- `A001221(A245092(2*n+1))` -/
def P13203663208821727302.Spec : Prop :=
  ∀ n, P13203663208821727302.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P13070479414059896744

`A001221(A074400(n+1)/2)`
-/

namespace A058062.P13070479414059896744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A058062.P13070479414059896744

namespace A058062

/-- `A001221(A074400(n+1)/2)` -/
def P13070479414059896744.Spec : Prop :=
  ∀ n, P13070479414059896744.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P16845697988718335860

`∑{d}[A000203(n+1), A010051(#)]`
-/

namespace A058062.P16845697988718335860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A058062.P16845697988718335860

namespace A058062

/-- `∑{d}[A000203(n+1), A010051(#)]` -/
def P16845697988718335860.Spec : Prop :=
  ∀ n, P16845697988718335860.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P2162275076159337980

`∑{p}[A000203(n+1), A001222(#)]`
-/

namespace A058062.P2162275076159337980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A058062.P2162275076159337980

namespace A058062

/-- `∑{p}[A000203(n+1), A001222(#)]` -/
def P2162275076159337980.Spec : Prop :=
  ∀ n, P2162275076159337980.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P3536913005017496518

`∑{p}[A000203(n+1), A345305(#)]`
-/

namespace A058062.P3536913005017496518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A345305 p

end

end A058062.P3536913005017496518

namespace A058062

/-- `∑{p}[A000203(n+1), A345305(#)]` -/
def P3536913005017496518.Spec : Prop :=
  ∀ n, P3536913005017496518.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P2301386528030480106

`A001222(∏{p}[A000203(n+1), #])`
-/

namespace A058062.P2301386528030480106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A058062.P2301386528030480106

namespace A058062

/-- `A001222(∏{p}[A000203(n+1), #])` -/
def P2301386528030480106.Spec : Prop :=
  ∀ n, P2301386528030480106.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P4601282224377671423

`∑{p}[A000203(n+1), abs(A008683(#))]`
-/

namespace A058062.P4601282224377671423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, |A008683 p|

end

end A058062.P4601282224377671423

namespace A058062

/-- `∑{p}[A000203(n+1), abs(A008683(#))]` -/
def P4601282224377671423.Spec : Prop :=
  ∀ n, P4601282224377671423.a n = A058062 (n + 1)

end A058062

/-! ## A058062.P13264382374354022216

`A001221(A001065(n+1)+n+1)`
-/

namespace A058062.P13264382374354022216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A058062.P13264382374354022216

namespace A058062

/-- `A001221(A001065(n+1)+n+1)` -/
def P13264382374354022216.Spec : Prop :=
  ∀ n, P13264382374354022216.a n = A058062 (n + 1)

theorem P13264382374354022216.correct : P13264382374354022216.Spec := by
  intro n
  simp only [A058062, Nat.add_sub_cancel, A058062.P13264382374354022216.a, A058062.P890749106992542312.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058062

/-!
# A058063: Number of prime factors (when counted with multiplicity) of sigma(n), the sum of divisors of n.

The programs for A058063, the canonical program `A058063.P11490708493934352292` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058063 has offset 1).

The definition of A058063 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058063.P11490708493934352292

`A001222(A000203(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058063

/-- `A001222(A000203(n+1))` -/
def P11490708493934352292.Spec : Prop :=
  ∀ n, P11490708493934352292.a n = A058063 (n + 1)

theorem P11490708493934352292.correct : P11490708493934352292.Spec := by
  intro n
  simp only [A058063, Nat.add_sub_cancel]

end A058063

/-! ## A058063.P7114251510187325033

`A000120(A332221(n+1))`
-/

namespace A058063.P7114251510187325033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A332221 (n + 1)).toNat

end

end A058063.P7114251510187325033

namespace A058063

/-- `A000120(A332221(n+1))` -/
def P7114251510187325033.Spec : Prop :=
  ∀ n, P7114251510187325033.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P4478531461532170947

`∑{e}[∑{d}[n+1, #], #]`
-/

namespace A058063.P4478531461532170947
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A058063.P4478531461532170947

namespace A058063

/-- `∑{e}[∑{d}[n+1, #], #]` -/
def P4478531461532170947.Spec : Prop :=
  ∀ n, (P4478531461532170947.a n : ℤ) = A058063 (n + 1)

end A058063

/-! ## A058063.P382555283197046217

`A001222(∑{d}[n+1, #])`
-/

namespace A058063.P382555283197046217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A058063.P382555283197046217

namespace A058063

/-- `A001222(∑{d}[n+1, #])` -/
def P382555283197046217.Spec : Prop :=
  ∀ n, P382555283197046217.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P4082168654229903191

`∑{e}[A000203(n+1), #]`
-/

namespace A058063.P4082168654229903191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058063.P4082168654229903191

namespace A058063

/-- `∑{e}[A000203(n+1), #]` -/
def P4082168654229903191.Spec : Prop :=
  ∀ n, (P4082168654229903191.a n : ℤ) = A058063 (n + 1)

end A058063

/-! ## A058063.P4107683282392516116

`∑{e}[A143348(n+1), #]`
-/

namespace A058063.P4107683282392516116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143348 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058063.P4107683282392516116

namespace A058063

/-- `∑{e}[A143348(n+1), #]` -/
def P4107683282392516116.Spec : Prop :=
  ∀ n, (P4107683282392516116.a n : ℤ) = A058063 (n + 1)

end A058063

/-! ## A058063.P11250412679382472977

`∑{e}[A276528(n+1), #]`
-/

namespace A058063.P11250412679382472977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276528 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058063.P11250412679382472977

namespace A058063

/-- `∑{e}[A276528(n+1), #]` -/
def P11250412679382472977.Spec : Prop :=
  ∀ n, (P11250412679382472977.a n : ℤ) = A058063 (n + 1)

end A058063

/-! ## A058063.P3326511630368789164

`∑{e}[A245092(2*n+1), #]`
-/

namespace A058063.P3326511630368789164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058063.P3326511630368789164

namespace A058063

/-- `∑{e}[A245092(2*n+1), #]` -/
def P3326511630368789164.Spec : Prop :=
  ∀ n, (P3326511630368789164.a n : ℤ) = A058063 (n + 1)

end A058063

/-! ## A058063.P14112433435861545724

`A001222(Δ[A160664(n)])`
-/

namespace A058063.P14112433435861545724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A058063.P14112433435861545724

namespace A058063

/-- `A001222(Δ[A160664(n)])` -/
def P14112433435861545724.Spec : Prop :=
  ∀ n, P14112433435861545724.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P5884020804903662062

`A001222(A276528(n+1))`
-/

namespace A058063.P5884020804903662062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276528 (n + 1)).toNat

end

end A058063.P5884020804903662062

namespace A058063

/-- `A001222(A276528(n+1))` -/
def P5884020804903662062.Spec : Prop :=
  ∀ n, P5884020804903662062.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P9278817745213848850

`A001222(abs(A143348(n+1)))`
-/

namespace A058063.P9278817745213848850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 |A143348 (n + 1)|.toNat

end

end A058063.P9278817745213848850

namespace A058063

/-- `A001222(abs(A143348(n+1)))` -/
def P9278817745213848850.Spec : Prop :=
  ∀ n, P9278817745213848850.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P1602815003336163364

`A001222(sqrt(A072861(n+1)))`
-/

namespace A058063.P1602815003336163364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A058063.P1602815003336163364

namespace A058063

/-- `A001222(sqrt(A072861(n+1)))` -/
def P1602815003336163364.Spec : Prop :=
  ∀ n, P1602815003336163364.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P12889240214786133403

`A001222(∑[A340793(n+1)])`
-/

namespace A058063.P12889240214786133403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058063.P12889240214786133403

namespace A058063

/-- `A001222(∑[A340793(n+1)])` -/
def P12889240214786133403.Spec : Prop :=
  ∀ n, P12889240214786133403.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P7626792489209252867

`A001222(A039653(n+1)+1)`
-/

namespace A058063.P7626792489209252867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A039653 (n + 1) + 1).toNat

end

end A058063.P7626792489209252867

namespace A058063

/-- `A001222(A039653(n+1)+1)` -/
def P7626792489209252867.Spec : Prop :=
  ∀ n, P7626792489209252867.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P5011663616123193478

`A001222(A074400(n+1))-1`
-/

namespace A058063.P5011663616123193478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074400 (n + 1)).toNat - 1

end

end A058063.P5011663616123193478

namespace A058063

/-- `A001222(A074400(n+1))-1` -/
def P5011663616123193478.Spec : Prop :=
  ∀ n, P5011663616123193478.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P4661038273465890811

`A001222(A088580(n+1)-1)`
-/

namespace A058063.P4661038273465890811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088580 (n + 1) - 1).toNat

end

end A058063.P4661038273465890811

namespace A058063

/-- `A001222(A088580(n+1)-1)` -/
def P4661038273465890811.Spec : Prop :=
  ∀ n, P4661038273465890811.a n = A058063 (n + 1)

theorem P4661038273465890811.correct : P4661038273465890811.Spec := by
  intro n
  simp only [A058063, Nat.add_sub_cancel, A058063.P4661038273465890811.a, A058063.P11490708493934352292.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058063

/-! ## A058063.P1229305431768522539

`A001222(A245092(2*n+1))`
-/

namespace A058063.P1229305431768522539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245092 (2 * n + 1)).toNat

end

end A058063.P1229305431768522539

namespace A058063

/-- `A001222(A245092(2*n+1))` -/
def P1229305431768522539.Spec : Prop :=
  ∀ n, P1229305431768522539.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P12470189433087027497

`A001222(A074400(n+1)/2)`
-/

namespace A058063.P12470189433087027497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A058063.P12470189433087027497

namespace A058063

/-- `A001222(A074400(n+1)/2)` -/
def P12470189433087027497.Spec : Prop :=
  ∀ n, P12470189433087027497.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P15596487100814111225

`∑{d}[A000203(n+1), A069513(#)]`
-/

namespace A058063.P15596487100814111225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A069513 d

end

end A058063.P15596487100814111225

namespace A058063

/-- `∑{d}[A000203(n+1), A069513(#)]` -/
def P15596487100814111225.Spec : Prop :=
  ∀ n, P15596487100814111225.a n = A058063 (n + 1)

end A058063

/-! ## A058063.P16338639168263426185

`A001222(A002659(n+1)+1)-1`
-/

namespace A058063.P16338639168263426185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002659 (n + 1) + 1).toNat - 1

end

end A058063.P16338639168263426185

namespace A058063

/-- `A001222(A002659(n+1)+1)-1` -/
def P16338639168263426185.Spec : Prop :=
  ∀ n, P16338639168263426185.a n = A058063 (n + 1)

end A058063

/-!
# A058064: Find least k such that (n+1)^k + n^k is a prime (A057856); then k=2^m and sequence gives values of m.

The programs for A058064, there is no canonical definition to state claims against.
-/

/-! ## A058064.P6185868335324483309

`A007814(A057856(n+1))`
-/

namespace A058064.P6185868335324483309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A057856 (n + 1)).toNat

end

end A058064.P6185868335324483309

/-! ## A058064.P662688582436877853

`log2(A057856(n+1))`
-/

namespace A058064.P662688582436877853
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057856 (n + 1) : ℝ)

end

end A058064.P662688582436877853

/-! ## A058064.P14842752449171065211

`∑{e}[A057856(C(n+1, n)), #]`
-/

namespace A058064.P14842752449171065211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057856 (Nat.choose (n + 1) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058064.P14842752449171065211

/-! ## A058064.P3312120957804799037

`A083345(A057856(n+1)²)`
-/

namespace A058064.P3312120957804799037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083345 (A057856 (n + 1) ^ 2).toNat

end

end A058064.P3312120957804799037

/-! ## A058064.P5491815004768326176

`A066272(A057856(n+1)+1)`
-/

namespace A058064.P5491815004768326176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066272 (A057856 (n + 1) + 1).toNat

end

end A058064.P5491815004768326176

/-!
# A058065: Complement of A057843.

The programs for A058065, the canonical program `A058065.P2977995929745028148` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058065 has offset 0).

The definition of A058065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058065.P2977995929745028148

`floor(ϕ*n+sqrt(5))-2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058065

/-- `floor(ϕ*n+sqrt(5))-2` -/
def P2977995929745028148.Spec : Prop :=
  ∀ n, P2977995929745028148.a n = A058065 n

theorem P2977995929745028148.correct : P2977995929745028148.Spec := by
  intro n
  simp only [A058065]

end A058065

/-! ## A058065.P8591390180666453903

`∑[Δ[floor(ϕ*(n+1))]%(n+1)]`
-/

namespace A058065.P8591390180666453903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058065.P8591390180666453903

namespace A058065

/-- `∑[Δ[floor(ϕ*(n+1))]%(n+1)]` -/
def P8591390180666453903.Spec : Prop :=
  ∀ n, P8591390180666453903.a n = A058065 n

end A058065

/-! ## A058065.P5154444020541881526

`comp[floor(C(n+1, n)/(2-ϕ))-3]`
-/

namespace A058065.P5154444020541881526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) n : ℝ) / (2 - Real.goldenRatio)⌋ - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A058065.P5154444020541881526

namespace A058065

/-- `comp[floor(C(n+1, n)/(2-ϕ))-3]` -/
def P5154444020541881526.Spec : Prop :=
  ∀ n, (P5154444020541881526.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P5624587532181139550

`floor(C(n+2, n+1)/ϕ+n-1)`
-/

namespace A058065.P5624587532181139550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 2) (n + 1) : ℝ) / Real.goldenRatio + ((n : ℤ) - 1 : ℝ)⌋

end

end A058065.P5624587532181139550

namespace A058065

/-- `floor(C(n+2, n+1)/ϕ+n-1)` -/
def P5624587532181139550.Spec : Prop :=
  ∀ n, P5624587532181139550.a n = A058065 n

end A058065

/-! ## A058065.P6550023659833613004

`ceil(C(n+2, n+1)/ϕ+n-2)`
-/

namespace A058065.P6550023659833613004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (n + 2) (n + 1) : ℝ) / Real.goldenRatio + ((n : ℤ) - 2 : ℝ)⌉

end

end A058065.P6550023659833613004

namespace A058065

/-- `ceil(C(n+2, n+1)/ϕ+n-2)` -/
def P6550023659833613004.Spec : Prop :=
  ∀ n, P6550023659833613004.a n = A058065 n

end A058065

/-! ## A058065.P16438919389393849317

`∑[2-A316825(n)]`
-/

namespace A058065.P16438919389393849317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A316825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058065.P16438919389393849317

namespace A058065

/-- `∑[2-A316825(n)]` -/
def P16438919389393849317.Spec : Prop :=
  ∀ n, P16438919389393849317.a n = A058065 n

end A058065

/-! ## A058065.P12270183948084794663

`comp[A057843(n+1)]`
-/

namespace A058065.P12270183948084794663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A058065.P12270183948084794663

namespace A058065

/-- `comp[A057843(n+1)]` -/
def P12270183948084794663.Spec : Prop :=
  ∀ n, (P12270183948084794663.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P10808866280099448721

`comp[A003622(n+1)-2]`
-/

namespace A058065.P10808866280099448721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A058065.P10808866280099448721

namespace A058065

/-- `comp[A003622(n+1)-2]` -/
def P10808866280099448721.Spec : Prop :=
  ∀ n, (P10808866280099448721.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P13865605937506646098

`comp[A001950(n+1)-3]`
-/

namespace A058065.P13865605937506646098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A058065.P13865605937506646098

namespace A058065

/-- `comp[A001950(n+1)-3]` -/
def P13865605937506646098.Spec : Prop :=
  ∀ n, (P13865605937506646098.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P15203942184594663625

`comp[A000201(n+1)-2+n]`
-/

namespace A058065.P15203942184594663625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A058065.P15203942184594663625

namespace A058065

/-- `comp[A000201(n+1)-2+n]` -/
def P15203942184594663625.Spec : Prop :=
  ∀ n, (P15203942184594663625.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P6045049250858172395

`comp[A035337(n)-(A035336(n+1)+2)]`
-/

namespace A058065.P6045049250858172395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035337 n - (A035336 (n + 1) + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A058065.P6045049250858172395

namespace A058065

/-- `comp[A035337(n)-(A035336(n+1)+2)]` -/
def P6045049250858172395.Spec : Prop :=
  ∀ n, (P6045049250858172395.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P13007658013188888819

`comp[A066096(A066096(n))-2]`
-/

namespace A058065.P13007658013188888819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (A066096 n).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A058065.P13007658013188888819

namespace A058065

/-- `comp[A066096(A066096(n))-2]` -/
def P13007658013188888819.Spec : Prop :=
  ∀ n, (P13007658013188888819.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P15302590230047631311

`A319433(A319433(n)+2*n)`
-/

namespace A058065.P15302590230047631311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319433 (A319433 n + (2 * n : ℤ)).toNat

end

end A058065.P15302590230047631311

namespace A058065

/-- `A319433(A319433(n)+2*n)` -/
def P15302590230047631311.Spec : Prop :=
  ∀ n, P15302590230047631311.a n = A058065 n

end A058065

/-! ## A058065.P10445866443449662304

`eq[1, A261095(n)]`
-/

namespace A058065.P10445866443449662304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058065.P10445866443449662304

namespace A058065

/-- `eq[1, A261095(n)]` -/
def P10445866443449662304.Spec : Prop :=
  ∀ n, (P10445866443449662304.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P7880935450493563158

`eq[0, A239003(n+1)]`
-/

namespace A058065.P7880935450493563158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058065.P7880935450493563158

namespace A058065

/-- `eq[0, A239003(n+1)]` -/
def P7880935450493563158.Spec : Prop :=
  ∀ n, (P7880935450493563158.a n : ℤ) = A058065 n

end A058065

/-! ## A058065.P1318311090696424166

`eq[0, A003849(n+2)]`
-/

namespace A058065.P1318311090696424166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058065.P1318311090696424166

namespace A058065

/-- `eq[0, A003849(n+2)]` -/
def P1318311090696424166.Spec : Prop :=
  ∀ n, (P1318311090696424166.a n : ℤ) = A058065 n

end A058065

/-!
# A058066: a(n) = floor(n*t), t = 1 + sqrt(5)/2.

The programs for A058066, the canonical program `A058066.P2646629522755663195` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058066 has offset 0).

The definition of A058066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058066.P2646629522755663195

`floor(n*(1/2+ϕ))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058066

/-- `floor(n*(1/2+ϕ))` -/
def P2646629522755663195.Spec : Prop :=
  ∀ n, P2646629522755663195.a n = A058066 n

theorem P2646629522755663195.correct : P2646629522755663195.Spec := by
  intro n
  simp only [A058066]

end A058066

/-! ## A058066.P3292150965642431628

`floor(n/sin(atan(2)))+n`
-/

namespace A058066.P3292150965642431628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.sin (Real.arctan (2 : ℝ))⌋ + (n : ℤ)

end

end A058066.P3292150965642431628

namespace A058066

/-- `floor(n/sin(atan(2)))+n` -/
def P3292150965642431628.Spec : Prop :=
  ∀ n, P3292150965642431628.a n = A058066 n

end A058066

/-! ## A058066.P7693616824908990045

`floor(n/cos(acot(2)))+n`
-/

namespace A058066.P7693616824908990045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.cos (SequenceMachineLib.acot (2 : ℝ))⌋ + (n : ℤ)

end

end A058066.P7693616824908990045

namespace A058066

/-- `floor(n/cos(acot(2)))+n` -/
def P7693616824908990045.Spec : Prop :=
  ∀ n, P7693616824908990045.a n = A058066 n

end A058066

/-! ## A058066.P17452861144391573800

`floor(n*cosh(log(ϕ)))+n`
-/

namespace A058066.P17452861144391573800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.cosh (Real.log Real.goldenRatio)⌋ + (n : ℤ)

end

end A058066.P17452861144391573800

namespace A058066

/-- `floor(n*cosh(log(ϕ)))+n` -/
def P17452861144391573800.Spec : Prop :=
  ∀ n, P17452861144391573800.a n = A058066 n

end A058066

/-! ## A058066.P17837748378058880581

`comp[A194152(n+1)]+n`
-/

namespace A058066.P17837748378058880581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A058066.P17837748378058880581

namespace A058066

/-- `comp[A194152(n+1)]+n` -/
def P17837748378058880581.Spec : Prop :=
  ∀ n, (P17837748378058880581.a n : ℤ) = A058066 n

end A058066

/-! ## A058066.P13520106285501041605

`ceil((A000201(A004277(n))+n-1)/2)`
-/

namespace A058066.P13520106285501041605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000201 (A004277 n).toNat + (n : ℤ) - 1 : ℚ) / 2⌉

end

end A058066.P13520106285501041605

namespace A058066

/-- `ceil((A000201(A004277(n))+n-1)/2)` -/
def P13520106285501041605.Spec : Prop :=
  ∀ n, P13520106285501041605.a n = A058066 n

end A058066

/-! ## A058066.P10360157470721839690

`A004526(floor(n*sqrt(5)))+n`
-/

namespace A058066.P10360157470721839690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ⌊(n : ℝ) * Real.sqrt (5 : ℝ)⌋.toNat + (n : ℤ)

end

end A058066.P10360157470721839690

namespace A058066

/-- `A004526(floor(n*sqrt(5)))+n` -/
def P10360157470721839690.Spec : Prop :=
  ∀ n, P10360157470721839690.a n = A058066 n

end A058066

/-! ## A058066.P14396691324209873039

`A276854(n)-A110654(A276854(n)-n)`
-/

namespace A058066.P14396691324209873039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n - A110654 (A276854 n - (n : ℤ)).toNat

end

end A058066.P14396691324209873039

namespace A058066

/-- `A276854(n)-A110654(A276854(n)-n)` -/
def P14396691324209873039.Spec : Prop :=
  ∀ n, P14396691324209873039.a n = A058066 n

end A058066

/-! ## A058066.P15429851579187880057

`record[n*Δ[A300763(2*n)]]`
-/

namespace A058066.P15429851579187880057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300763 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058066.P15429851579187880057

namespace A058066

/-- `record[n*Δ[A300763(2*n)]]` -/
def P15429851579187880057.Spec : Prop :=
  ∀ n, P15429851579187880057.a n = A058066 n

end A058066

/-! ## A058066.P15439618682524798450

`A004526(floor(2*ϕ*n)+n)`
-/

namespace A058066.P15439618682524798450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (⌊2 * (Real.goldenRatio * (n : ℝ))⌋ + (n : ℤ)).toNat

end

end A058066.P15439618682524798450

namespace A058066

/-- `A004526(floor(2*ϕ*n)+n)` -/
def P15439618682524798450.Spec : Prop :=
  ∀ n, P15439618682524798450.a n = A058066 n

end A058066

/-! ## A058066.P11354668558572508007

`eq[n, n*A188189(2*(n+1))]`
-/

namespace A058066.P11354668558572508007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A188189 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058066.P11354668558572508007

namespace A058066

/-- `eq[n, n*A188189(2*(n+1))]` -/
def P11354668558572508007.Spec : Prop :=
  ∀ n, (P11354668558572508007.a n : ℤ) = A058066 n

end A058066

/-! ## A058066.P5446478461558934431

`A110654(A004976(n)+1)-1`
-/

namespace A058066.P5446478461558934431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A004976 n + 1).toNat - 1

end

end A058066.P5446478461558934431

namespace A058066

/-- `A110654(A004976(n)+1)-1` -/
def P5446478461558934431.Spec : Prop :=
  ∀ n, P5446478461558934431.a n = A058066 n

end A058066

/-! ## A058066.P9039266360942894579

`A123108(A004976(n)+2)-1`
-/

namespace A058066.P9039266360942894579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004976 n + 2).toNat - 1

end

end A058066.P9039266360942894579

namespace A058066

/-- `A123108(A004976(n)+2)-1` -/
def P9039266360942894579.Spec : Prop :=
  ∀ n, P9039266360942894579.a n = A058066 n

end A058066

/-! ## A058066.P726825221326590996

`A008619(A004976(n)+2)-2`
-/

namespace A058066.P726825221326590996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004976 n + 2).toNat - 2

end

end A058066.P726825221326590996

namespace A058066

/-- `A008619(A004976(n)+2)-2` -/
def P726825221326590996.Spec : Prop :=
  ∀ n, P726825221326590996.a n = A058066 n

end A058066

/-! ## A058066.P10242018077965114594

`A002265(A004976(2*n))`
-/

namespace A058066.P10242018077965114594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004976 (2 * n)).toNat

end

end A058066.P10242018077965114594

namespace A058066

/-- `A002265(A004976(2*n))` -/
def P10242018077965114594.Spec : Prop :=
  ∀ n, P10242018077965114594.a n = A058066 n

end A058066

/-! ## A058066.P13976712558960067536

`A002265(2*(comp[A001961(n+1)]-n))`
-/

namespace A058066.P13976712558960067536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))).toNat

end

end A058066.P13976712558960067536

namespace A058066

/-- `A002265(2*(comp[A001961(n+1)]-n))` -/
def P13976712558960067536.Spec : Prop :=
  ∀ n, P13976712558960067536.a n = A058066 n

end A058066

/-! ## A058066.P15875904001161340977

`A002265(A004976(n)+A004976(n)+1)`
-/

namespace A058066.P15875904001161340977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004976 n + (A004976 n + 1)).toNat

end

end A058066.P15875904001161340977

namespace A058066

/-- `A002265(A004976(n)+A004976(n)+1)` -/
def P15875904001161340977.Spec : Prop :=
  ∀ n, P15875904001161340977.a n = A058066 n

end A058066

/-! ## A058066.P5580622270039155101

`A008615(3*A004976(n))`
-/

namespace A058066.P5580622270039155101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A004976 n).toNat

end

end A058066.P5580622270039155101

namespace A058066

/-- `A008615(3*A004976(n))` -/
def P5580622270039155101.Spec : Prop :=
  ∀ n, P5580622270039155101.a n = A058066 n

end A058066

/-! ## A058066.P13903009217215409583

`A152467(A004976(2*n)+A004976(n))`
-/

namespace A058066.P13903009217215409583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A004976 (2 * n) + A004976 n).toNat

end

end A058066.P13903009217215409583

namespace A058066

/-- `A152467(A004976(2*n)+A004976(n))` -/
def P13903009217215409583.Spec : Prop :=
  ∀ n, P13903009217215409583.a n = A058066 n

end A058066

/-! ## A058066.P3357377460498196284

`A132292(A188219(n+1)-n)`
-/

namespace A058066.P3357377460498196284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A188219 (n + 1) - (n : ℤ)).toNat

end

end A058066.P3357377460498196284

namespace A058066

/-- `A132292(A188219(n+1)-n)` -/
def P3357377460498196284.Spec : Prop :=
  ∀ n, P3357377460498196284.a n = A058066 n

end A058066

/-!
# A058067: Number of polynomial functions from Z to Z/nZ.

The programs for A058067, there is no canonical definition to state claims against.
-/

/-! ## A058067.P17234698753607215527

`A000312(n)/A240098(A028310(n))`
-/

namespace A058067.P17234698753607215527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000312 n : ℚ) / (A240098 (A028310 n).toNat : ℚ)

end

end A058067.P17234698753607215527

/-! ## A058067.P4186061889071242675

`A294038(A001222(5^n))`
-/

namespace A058067.P4186061889071242675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294038 (A001222 (5 ^ n)).toNat

end

end A058067.P4186061889071242675

/-!
# A058070: "A sorry sequence".

The programs for A058070, there is no canonical definition to state claims against.
-/

/-! ## A058070.P2376745597720559237

`∑[A100516(2*a(and(n, n-2)))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A058070.P2376745597720559237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  A100516 (2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058070.P2376745597720559237

/-! ## A058070.P11680695723034596176

`∑[A150920(2*a(and(n, n-2)))]` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A058070.P11680695723034596176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  A150920 (2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058070.P11680695723034596176

/-!
# A058071: A Fibonacci triangle: triangle T(n,k) = Fibonacci(k+1)*Fibonacci(n-k+1), for n >= 0, 0 <= k <= n.

The programs for A058071, the canonical program `A058071.P16199175726489099126` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058071 has offset 0).

The definition of A058071 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(col(n)+1)*A000045(row(n)+1-col(n))` (program `A058071.P16199175726489099126`, by `A058071.P16199175726489099126.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058071.P16199175726489099126

`A000045(col(n)+1)*A000045(row(n)+1-col(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058071

/-- `A000045(col(n)+1)*A000045(row(n)+1-col(n))` -/
def P16199175726489099126.Spec : Prop :=
  ∀ n, P16199175726489099126.a n = A058071 n

theorem P16199175726489099126.correct : P16199175726489099126.Spec := by
  intro n
  simp only [A058071]

end A058071

/-! ## A058071.P9815466400969492658

`A000045(col(n)+1)*A000045(row(n)-col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058071.P9815466400969492658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.triCol n + 1) * A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat

end

end A058071.P9815466400969492658

namespace A058071

/-- `A000045(col(n)+1)*A000045(row(n)-col(n)+1)` -/
def P9815466400969492658.Spec : Prop :=
  ∀ n, P9815466400969492658.a n = A058071 n

end A058071

/-! ## A058071.P12520612335647907299

`A000045(row(n)-col(n)+1)*A000045(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A058071.P12520612335647907299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000045 (SequenceMachineLib.triCol n + 1)

end

end A058071.P12520612335647907299

namespace A058071

/-- `A000045(row(n)-col(n)+1)*A000045(col(n)+1)` -/
def P12520612335647907299.Spec : Prop :=
  ∀ n, P12520612335647907299.a n = A058071 n

end A058071

/-! ## A058071.P5109536326561591783

`A098356(lt[0, A098356(n)])`
-/

namespace A058071.P5109536326561591783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A058071.P5109536326561591783

namespace A058071

/-- `A098356(lt[0, A098356(n)])` -/
def P5109536326561591783.Spec : Prop :=
  ∀ n, P5109536326561591783.a n = A058071 n

end A058071

/-! ## A058071.P5694349407027278719

`A109906(n)/A007318(n)`
-/

namespace A058071.P5694349407027278719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109906 n : ℚ) / (A007318 n : ℚ)

end

end A058071.P5694349407027278719

namespace A058071

/-- `A109906(n)/A007318(n)` -/
def P5694349407027278719.Spec : Prop :=
  ∀ n, P5694349407027278719.a n = (A058071 n : ℚ)

end A058071

/-! ## A058071.P7092547267287022096

`abs(A109906(n)/A108086(n))`
-/

namespace A058071.P7092547267287022096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A109906 n : ℚ) / (A108086 n : ℚ)|

end

end A058071.P7092547267287022096

namespace A058071

/-- `abs(A109906(n)/A108086(n))` -/
def P7092547267287022096.Spec : Prop :=
  ∀ n, P7092547267287022096.a n = (A058071 n : ℚ)

end A058071

/-! ## A058071.P17905087607382413861

`A108035(n+1)-A039913(n)`
-/

namespace A058071.P17905087607382413861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108035 (n + 1) - A039913 n

end

end A058071.P17905087607382413861

namespace A058071

/-- `A108035(n+1)-A039913(n)` -/
def P17905087607382413861.Spec : Prop :=
  ∀ n, P17905087607382413861.a n = A058071 n

end A058071

/-! ## A058071.P10873780395555238963

`A131410(n+1)-A098356(n)`
-/

namespace A058071.P10873780395555238963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131410 (n + 1) - A098356 n

end

end A058071.P10873780395555238963

namespace A058071

/-- `A131410(n+1)-A098356(n)` -/
def P10873780395555238963.Spec : Prop :=
  ∀ n, P10873780395555238963.a n = A058071 n

end A058071

/-! ## A058071.P6287347528229758099

`A104762(n+1)*A104763(n+1)`
-/

namespace A058071.P6287347528229758099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) * A104763 (n + 1)

end

end A058071.P6287347528229758099

namespace A058071

/-- `A104762(n+1)*A104763(n+1)` -/
def P6287347528229758099.Spec : Prop :=
  ∀ n, P6287347528229758099.a n = A058071 n

theorem P6287347528229758099.correct : P6287347528229758099.Spec := by
  intro n
  simp only [A058071, Nat.add_sub_cancel, A058071.P6287347528229758099.a, A058071.P16199175726489099126.a, A000045, A000045.P11838749114346432762.a, A104762, A104762.P3269042206724362753.a, A104763, A104763.P8153138766110593277.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A058071

/-! ## A058071.P10956002967871323567

`A000045(A003056(n)+1)-A098356(n)`
-/

namespace A058071.P10956002967871323567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A003056 n + 1).toNat - A098356 n

end

end A058071.P10956002967871323567

namespace A058071

/-- `A000045(A003056(n)+1)-A098356(n)` -/
def P10956002967871323567.Spec : Prop :=
  ∀ n, P10956002967871323567.a n = A058071 n

end A058071

/-! ## A058071.P17486925697830839380

`A302126(A131507(n)+1)-A098356(n)`
-/

namespace A058071.P17486925697830839380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A131507 n + 1).toNat - A098356 n

end

end A058071.P17486925697830839380

namespace A058071

/-- `A302126(A131507(n)+1)-A098356(n)` -/
def P17486925697830839380.Spec : Prop :=
  ∀ n, P17486925697830839380.a n = A058071 n

end A058071

/-! ## A058071.P5801476761781599753

`A110102(n+1)/A110023(n+1)*A109906(n)`
-/

namespace A058071.P5801476761781599753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110102 (n + 1) : ℚ) / (A110023 (n + 1) : ℚ) * (A109906 n : ℚ)

end

end A058071.P5801476761781599753

namespace A058071

/-- `A110102(n+1)/A110023(n+1)*A109906(n)` -/
def P5801476761781599753.Spec : Prop :=
  ∀ n, P5801476761781599753.a n = (A058071 n : ℚ)

end A058071

/-! ## A058071.P17570707102642967147

`A000045(A002260(n+1))*A000045(A004736(n+1))`
-/

namespace A058071.P17570707102642967147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A002260 (n + 1)).toNat * A000045 (A004736 (n + 1)).toNat

end

end A058071.P17570707102642967147

namespace A058071

/-- `A000045(A002260(n+1))*A000045(A004736(n+1))` -/
def P17570707102642967147.Spec : Prop :=
  ∀ n, P17570707102642967147.a n = A058071 n

end A058071

/-! ## A058071.P647431611672432871

`A000045(A004736(n+1))*A000045(A134868(n+1))`
-/

namespace A058071.P647431611672432871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004736 (n + 1)).toNat * A000045 (A134868 (n + 1)).toNat

end

end A058071.P647431611672432871

namespace A058071

/-- `A000045(A004736(n+1))*A000045(A134868(n+1))` -/
def P647431611672432871.Spec : Prop :=
  ∀ n, P647431611672432871.a n = A058071 n

end A058071

/-! ## A058071.P18096917889676346701

`A104762(A038722(n+1))*A104762(n+1)`
-/

namespace A058071.P18096917889676346701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (A038722 (n + 1)).toNat * A104762 (n + 1)

end

end A058071.P18096917889676346701

namespace A058071

/-- `A104762(A038722(n+1))*A104762(n+1)` -/
def P18096917889676346701.Spec : Prop :=
  ∀ n, P18096917889676346701.a n = A058071 n

end A058071

/-! ## A058071.P11290169367020995513

`A104763(A038722(n+1))*A104763(n+1)`
-/

namespace A058071.P11290169367020995513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A038722 (n + 1)).toNat * A104763 (n + 1)

end

end A058071.P11290169367020995513

namespace A058071

/-- `A104763(A038722(n+1))*A104763(n+1)` -/
def P11290169367020995513.Spec : Prop :=
  ∀ n, P11290169367020995513.a n = A058071 n

end A058071

/-! ## A058071.P12768384347693831356

`A104763(n+1)*A104763(A061579(n)+1)`
-/

namespace A058071.P12768384347693831356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A104763 (A061579 n + 1).toNat

end

end A058071.P12768384347693831356

namespace A058071

/-- `A104763(n+1)*A104763(A061579(n)+1)` -/
def P12768384347693831356.Spec : Prop :=
  ∀ n, P12768384347693831356.a n = A058071 n

end A058071

/-! ## A058071.P10820533377262266362

`A104763(n+1)*A104763(A278818(n))`
-/

namespace A058071.P10820533377262266362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) * A104763 (A278818 n).toNat

end

end A058071.P10820533377262266362

namespace A058071

/-- `A104763(n+1)*A104763(A278818(n))` -/
def P10820533377262266362.Spec : Prop :=
  ∀ n, P10820533377262266362.a n = A058071 n

end A058071

/-! ## A058071.P4008319358146859143

`A141678(n+1)/A284115(n+1)`
-/

namespace A058071.P4008319358146859143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141678 (n + 1) : ℚ) / (A284115 (n + 1) : ℚ)

end

end A058071.P4008319358146859143

namespace A058071

/-- `A141678(n+1)/A284115(n+1)` -/
def P4008319358146859143.Spec : Prop :=
  ∀ n, P4008319358146859143.a n = (A058071 n : ℚ)

end A058071

/-! ## A058071.P4610924775249255189

`A000045(A057555(2*n+1))*A000045(A057555(2*(n+1)))`
-/

namespace A058071.P4610924775249255189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A057555 (2 * n + 1)).toNat * A000045 (A057555 (2 * (n + 1))).toNat

end

end A058071.P4610924775249255189

namespace A058071

/-- `A000045(A057555(2*n+1))*A000045(A057555(2*(n+1)))` -/
def P4610924775249255189.Spec : Prop :=
  ∀ n, P4610924775249255189.a n = A058071 n

end A058071

/-!
# A058072: Numbers k such that sigma(k) divides sigma(k+1), where sigma(k) is sum of positive divisors of k.

The programs for A058072, there is no canonical definition to state claims against.
-/

/-! ## A058072.P748495991335229266

`eq[1, A282255(n+1)]+1`
-/

namespace A058072.P748495991335229266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058072.P748495991335229266

/-! ## A058072.P13792022420988950219

`eq[n+2, A069789(n+1)]+1`
-/

namespace A058072.P13792022420988950219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069789 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058072.P13792022420988950219

/-! ## A058072.P18013715245868488135

`eq[n+1, A069789(A028310(n))]`
-/

namespace A058072.P18013715245868488135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069789 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A058072.P18013715245868488135

/-! ## A058072.P9545727234129869407

`eq[A000203(n+1), A060780(n+1)]+1`
-/

namespace A058072.P9545727234129869407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058072.P9545727234129869407

/-! ## A058072.P18379854338303887404

`eq[A000007(n), A077086(A028310(n))]`
-/

namespace A058072.P18379854338303887404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077086 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058072.P18379854338303887404

/-!
# A058073: Numbers k such that sigma(k+1) divides sigma(k), where sigma(k) is the sum of positive divisors of k.

The programs for A058073, there is no canonical definition to state claims against.
-/

/-! ## A058073.P14961197749054136368

`∩[A047229(n+1), A066025(n+1)]`
-/

namespace A058073.P14961197749054136368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058073.P14961197749054136368

/-! ## A058073.P1029835203003597581

`eq[A000203(n+1), A060781(n+1)]+1`
-/

namespace A058073.P1029835203003597581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060781 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058073.P1029835203003597581

/-! ## A058073.P7573040429494242816

`eq[A000203(n+2), A060780(n+1)]+1`
-/

namespace A058073.P7573040429494242816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058073.P7573040429494242816

/-! ## A058073.P4652212268037248514

`filter[A066025(n+2), A316343(#)]`
-/

namespace A058073.P4652212268037248514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066025 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316343 (f1 j).toNat = 1) n)

end

end A058073.P4652212268037248514

/-!
# A058074: Integers m such that gcd(d(m),d(m+1)) = 1, where d(m) is number of positive divisors of m.

The programs for A058074, the canonical program `A058074.P81869804986245876` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058074 has offset 1).

The definition of A058074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 511 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058074.P81869804986245876

`record[(n+1)/gcd(A000005(n+2), A000005(n+1))]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058074

/-- `record[(n+1)/gcd(A000005(n+2), A000005(n+1))]` -/
def P81869804986245876.Spec : Prop :=
  ∀ n, P81869804986245876.a n = (A058074 (n + 1) : ℚ)

end A058074

/-! ## A058074.P5194013548447765824

`eq[1, A060778(n+1)]+1`
-/

namespace A058074.P5194013548447765824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058074.P5194013548447765824

namespace A058074

/-- `eq[1, A060778(n+1)]+1` -/
def P5194013548447765824.Spec : Prop :=
  ∀ n, (P5194013548447765824.a n : ℤ) = A058074 (n + 1)

end A058074

/-! ## A058074.P7280048846924140075

`record[A000027(n+1)/A060778(n+1)]`
-/

namespace A058074.P7280048846924140075
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A060778 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P7280048846924140075

namespace A058074

/-- `record[A000027(n+1)/A060778(n+1)]` -/
def P7280048846924140075.Spec : Prop :=
  ∀ n, P7280048846924140075.a n = (A058074 (n + 1) : ℚ)

end A058074

/-! ## A058074.P5906403366536162367

`record[A005408(n)-n*A060778(n+1)]`
-/

namespace A058074.P5906403366536162367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A060778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P5906403366536162367

namespace A058074

/-- `record[A005408(n)-n*A060778(n+1)]` -/
def P5906403366536162367.Spec : Prop :=
  ∀ n, P5906403366536162367.a n = A058074 (n + 1)

end A058074

/-! ## A058074.P16071170437997168017

`record[(n+1)/A003754(A060778(n+1)+1)]`
-/

namespace A058074.P16071170437997168017
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003754 (A060778 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P16071170437997168017

namespace A058074

/-- `record[(n+1)/A003754(A060778(n+1)+1)]` -/
def P16071170437997168017.Spec : Prop :=
  ∀ n, P16071170437997168017.a n = (A058074 (n + 1) : ℚ)

end A058074

/-! ## A058074.P10817342969989266865

`record[(n+1)/A106055(A060778(n+1)-1)]`
-/

namespace A058074.P10817342969989266865
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A106055 (A060778 (n + 1) - 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P10817342969989266865

namespace A058074

/-- `record[(n+1)/A106055(A060778(n+1)-1)]` -/
def P10817342969989266865.Spec : Prop :=
  ∀ n, P10817342969989266865.a n = (A058074 (n + 1) : ℚ)

end A058074

/-! ## A058074.P12392499702822237319

`lcm(record[(n+1)/A060778(n+1)], A057077(n))`
-/

namespace A058074.P12392499702822237319
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A060778 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A057077 n)

end

end A058074.P12392499702822237319

namespace A058074

/-- `lcm(record[(n+1)/A060778(n+1)], A057077(n))` -/
def P12392499702822237319.Spec : Prop :=
  ∀ n, (P12392499702822237319.a n : ℤ) = A058074 (n + 1)

end A058074

/-! ## A058074.P634469781533617845

`eq[4, gcd(A145154(n+1), A145154(n))]`
-/

namespace A058074.P634469781533617845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A145154 (n + 1)) (A145154 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A058074.P634469781533617845

namespace A058074

/-- `eq[4, gcd(A145154(n+1), A145154(n))]` -/
def P634469781533617845.Spec : Prop :=
  ∀ n, (P634469781533617845.a n : ℤ) = A058074 (n + 1)

end A058074

/-! ## A058074.P9397584503122126448

`record[A008619(n)/A060778(A008619(n))]`
-/

namespace A058074.P9397584503122126448
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A060778 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P9397584503122126448

namespace A058074

/-- `record[A008619(n)/A060778(A008619(n))]` -/
def P9397584503122126448.Spec : Prop :=
  ∀ n, P9397584503122126448.a n = (A058074 (n + 1) : ℚ)

end A058074

/-! ## A058074.P18332952677485231991

`record[A214701(n+1)/A060778(A214701(n+1))]`
-/

namespace A058074.P18332952677485231991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214701 (n + 1) : ℚ) / (A060778 (A214701 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058074.P18332952677485231991

namespace A058074

/-- `record[A214701(n+1)/A060778(A214701(n+1))]` -/
def P18332952677485231991.Spec : Prop :=
  ∀ n, P18332952677485231991.a n = (A058074 (n + 1) : ℚ)

end A058074

/-!
# A058075: Numbers k such that gcd(sigma(k), sigma(k+1)) = 1, where sigma(k) is sum of positive divisors of k.

The programs for A058075, the canonical program `A058075.P17438524686900330364` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058075 has offset 1).

The definition of A058075 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 448 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058075.P17438524686900330364

`record[(n+1)/gcd(A000203(n+1), A000203(n+2))]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058075

/-- `record[(n+1)/gcd(A000203(n+1), A000203(n+2))]` -/
def P17438524686900330364.Spec : Prop :=
  ∀ n, P17438524686900330364.a n = (A058075 (n + 1) : ℚ)

end A058075

/-! ## A058075.P8155829251495475684

`eq[1, A060780(n+1)]+1`
-/

namespace A058075.P8155829251495475684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060780 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A058075.P8155829251495475684

namespace A058075

/-- `eq[1, A060780(n+1)]+1` -/
def P8155829251495475684.Spec : Prop :=
  ∀ n, (P8155829251495475684.a n : ℤ) = A058075 (n + 1)

end A058075

/-! ## A058075.P5137944075500077857

`lt[n², A083538(n+1)]+1`
-/

namespace A058075.P5137944075500077857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058075.P5137944075500077857

namespace A058075

/-- `lt[n², A083538(n+1)]+1` -/
def P5137944075500077857.Spec : Prop :=
  ∀ n, (P5137944075500077857.a n : ℤ) = A058075 (n + 1)

end A058075

/-! ## A058075.P4831997891630669811

`record[A000027(n+1)/A060780(n+1)]`
-/

namespace A058075.P4831997891630669811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A060780 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058075.P4831997891630669811

namespace A058075

/-- `record[A000027(n+1)/A060780(n+1)]` -/
def P4831997891630669811.Spec : Prop :=
  ∀ n, P4831997891630669811.a n = (A058075 (n + 1) : ℚ)

end A058075

/-! ## A058075.P7802934635662064761

`eq[A060781(n+1), A083538(n+1)]+1`
-/

namespace A058075.P7802934635662064761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083538 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058075.P7802934635662064761

namespace A058075

/-- `eq[A060781(n+1), A083538(n+1)]+1` -/
def P7802934635662064761.Spec : Prop :=
  ∀ n, (P7802934635662064761.a n : ℤ) = A058075 (n + 1)

end A058075

/-! ## A058075.P17992625270868255105

`eq[A060781(n+1), A083539(n+1)]+1`
-/

namespace A058075.P17992625270868255105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058075.P17992625270868255105

namespace A058075

/-- `eq[A060781(n+1), A083539(n+1)]+1` -/
def P17992625270868255105.Spec : Prop :=
  ∀ n, (P17992625270868255105.a n : ℤ) = A058075 (n + 1)

end A058075

/-! ## A058075.P17170184407443509488

`eq[A083538(n+1), A083539(n+1)]+1`
-/

namespace A058075.P17170184407443509488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083538 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A058075.P17170184407443509488

namespace A058075

/-- `eq[A083538(n+1), A083539(n+1)]+1` -/
def P17170184407443509488.Spec : Prop :=
  ∀ n, (P17170184407443509488.a n : ℤ) = A058075 (n + 1)

end A058075

/-! ## A058075.P16081957328712281102

`record[A008619(n)/A060780(A008619(n))]`
-/

namespace A058075.P16081957328712281102
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 n : ℚ) / (A060780 (A008619 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058075.P16081957328712281102

namespace A058075

/-- `record[A008619(n)/A060780(A008619(n))]` -/
def P16081957328712281102.Spec : Prop :=
  ∀ n, P16081957328712281102.a n = (A058075 (n + 1) : ℚ)

end A058075

/-!
# A058077: Binomial coefficients formed from consecutive primes: a(n) = binomial( prime(n+1), prime(n) ).

The programs for A058077, the canonical program `A058077.P5624321515049190518` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058077 has offset 1).

The definition of A058077 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(A000040(n+2), A000040(n+1))` (program `A058077.P5624321515049190518`, by `A058077.P5624321515049190518.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058077.P5624321515049190518

`C(A000040(n+2), A000040(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058077

/-- `C(A000040(n+2), A000040(n+1))` -/
def P5624321515049190518.Spec : Prop :=
  ∀ n, (P5624321515049190518.a n : ℤ) = A058077 (n + 1)

theorem P5624321515049190518.correct : P5624321515049190518.Spec := by
  intro n
  simp only [A058077, Nat.add_sub_cancel]

end A058077

/-! ## A058077.P4144931412640826282

`C(p?[2*n+1], record[A093074(n+1)])`
-/

namespace A058077.P4144931412640826282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A058077.P4144931412640826282

namespace A058077

/-- `C(p?[2*n+1], record[A093074(n+1)])` -/
def P4144931412640826282.Spec : Prop :=
  ∀ n, (P4144931412640826282.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P16225246140216100198

`C(p?[2*n+1], record[A006530(n+2)])`
-/

namespace A058077.P16225246140216100198
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A058077.P16225246140216100198

namespace A058077

/-- `C(p?[2*n+1], record[A006530(n+2)])` -/
def P16225246140216100198.Spec : Prop :=
  ∀ n, (P16225246140216100198.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P11922498573686138437

`C(p?[2*n+1], record[A014963(n+2)])`
-/

namespace A058077.P11922498573686138437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A058077.P11922498573686138437

namespace A058077

/-- `C(p?[2*n+1], record[A014963(n+2)])` -/
def P11922498573686138437.Spec : Prop :=
  ∀ n, (P11922498573686138437.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P3532099969590285251

`C(p?[2*n+1], record[A020639(n+2)])`
-/

namespace A058077.P3532099969590285251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

end

end A058077.P3532099969590285251

namespace A058077

/-- `C(p?[2*n+1], record[A020639(n+2)])` -/
def P3532099969590285251.Spec : Prop :=
  ∀ n, (P3532099969590285251.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P10855769285912485311

`C(A000040(n+2), Δ[A007504(n)])`
-/

namespace A058077.P10855769285912485311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 2)).toNat (f1 (n + 1) - f1 n).toNat

end

end A058077.P10855769285912485311

namespace A058077

/-- `C(A000040(n+2), Δ[A007504(n)])` -/
def P10855769285912485311.Spec : Prop :=
  ∀ n, (P10855769285912485311.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P11516288754473132834

`C(A065091(n+1), record[A051698(n)])`
-/

namespace A058077.P11516288754473132834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A058077.P11516288754473132834

namespace A058077

/-- `C(A065091(n+1), record[A051698(n)])` -/
def P11516288754473132834.Spec : Prop :=
  ∀ n, (P11516288754473132834.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P10852698004103063982

`C(A000040(n+2), p?[A259153(n)])`
-/

namespace A058077.P10852698004103063982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A058077.P10852698004103063982

namespace A058077

/-- `C(A000040(n+2), p?[A259153(n)])` -/
def P10852698004103063982.Spec : Prop :=
  ∀ n, (P10852698004103063982.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P2950746641381948374

`C(A000040(n+2), p?[A352844(n)])`
-/

namespace A058077.P2950746641381948374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352844 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000040 (n + 2)).toNat (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A058077.P2950746641381948374

namespace A058077

/-- `C(A000040(n+2), p?[A352844(n)])` -/
def P2950746641381948374.Spec : Prop :=
  ∀ n, (P2950746641381948374.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P8061046532286523051

`C(A065091(n+1), A001223(n+1))`
-/

namespace A058077.P8061046532286523051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat (A001223 (n + 1)).toNat

end

end A058077.P8061046532286523051

namespace A058077

/-- `C(A065091(n+1), A001223(n+1))` -/
def P8061046532286523051.Spec : Prop :=
  ∀ n, (P8061046532286523051.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P7429019391071701254

`C(A006005(n+2), A006005(n+1))`
-/

namespace A058077.P7429019391071701254
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006005 (n + 2)).toNat (A006005 (n + 1)).toNat

end

end A058077.P7429019391071701254

namespace A058077

/-- `C(A006005(n+2), A006005(n+1))` -/
def P7429019391071701254.Spec : Prop :=
  ∀ n, (P7429019391071701254.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P9280175328963839031

`C(A065091(n+1), A008578(n+2))`
-/

namespace A058077.P9280175328963839031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat (A008578 (n + 2)).toNat

end

end A058077.P9280175328963839031

namespace A058077

/-- `C(A065091(n+1), A008578(n+2))` -/
def P9280175328963839031.Spec : Prop :=
  ∀ n, (P9280175328963839031.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P16551327466045641001

`C(A065091(n+1), A054541(n+2))`
-/

namespace A058077.P16551327466045641001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat (A054541 (n + 2)).toNat

end

end A058077.P16551327466045641001

namespace A058077

/-- `C(A065091(n+1), A054541(n+2))` -/
def P16551327466045641001.Spec : Prop :=
  ∀ n, (P16551327466045641001.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P4115957334848936157

`C(A065091(n+1), A182986(n+2))`
-/

namespace A058077.P4115957334848936157
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat (A182986 (n + 2)).toNat

end

end A058077.P4115957334848936157

namespace A058077

/-- `C(A065091(n+1), A182986(n+2))` -/
def P4115957334848936157.Spec : Prop :=
  ∀ n, (P4115957334848936157.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P10265425636507389466

`C(A065091(n+1), A006093(n+1)+1)`
-/

namespace A058077.P10265425636507389466
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat (A006093 (n + 1) + 1).toNat

end

end A058077.P10265425636507389466

namespace A058077

/-- `C(A065091(n+1), A006093(n+1)+1)` -/
def P10265425636507389466.Spec : Prop :=
  ∀ n, (P10265425636507389466.a n : ℤ) = A058077 (n + 1)

theorem P10265425636507389466.correct : P10265425636507389466.Spec := by
  intro n
  simp only [A058077, Nat.add_sub_cancel, A058077.P10265425636507389466.a, A058077.P5624321515049190518.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058077

/-! ## A058077.P14991901696734511690

`C(A065091(n+1), A008864(n+1)-1)`
-/

namespace A058077.P14991901696734511690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat (A008864 (n + 1) - 1).toNat

end

end A058077.P14991901696734511690

namespace A058077

/-- `C(A065091(n+1), A008864(n+1)-1)` -/
def P14991901696734511690.Spec : Prop :=
  ∀ n, (P14991901696734511690.a n : ℤ) = A058077 (n + 1)

theorem P14991901696734511690.correct : P14991901696734511690.Spec := by
  intro n
  simp only [A058077, Nat.add_sub_cancel, A058077.P14991901696734511690.a, A058077.P5624321515049190518.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058077

/-! ## A058077.P12162154623352737747

`C(A008864(n+2)-1, A182986(n+2))`
-/

namespace A058077.P12162154623352737747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008864 (n + 2) - 1).toNat (A182986 (n + 2)).toNat

end

end A058077.P12162154623352737747

namespace A058077

/-- `C(A008864(n+2)-1, A182986(n+2))` -/
def P12162154623352737747.Spec : Prop :=
  ∀ n, (P12162154623352737747.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P13233062222646510318

`C(A100484(n+2)/2, A008578(n+2))`
-/

namespace A058077.P13233062222646510318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A100484 (n + 2) : ℚ) / 2)).toNat (A008578 (n + 2)).toNat

end

end A058077.P13233062222646510318

namespace A058077

/-- `C(A100484(n+2)/2, A008578(n+2))` -/
def P13233062222646510318.Spec : Prop :=
  ∀ n, (P13233062222646510318.a n : ℤ) = A058077 (n + 1)

end A058077

/-! ## A058077.P16428994298788801906

`C(A065091(n+1), A014692(n+1)+n)`
-/

namespace A058077.P16428994298788801906
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A065091 (n + 1)).toNat (A014692 (n + 1) + (n : ℤ)).toNat

end

end A058077.P16428994298788801906

namespace A058077

/-- `C(A065091(n+1), A014692(n+1)+n)` -/
def P16428994298788801906.Spec : Prop :=
  ∀ n, (P16428994298788801906.a n : ℤ) = A058077 (n + 1)

theorem P16428994298788801906.correct : P16428994298788801906.Spec := by
  intro n
  simp only [A058077, Nat.add_sub_cancel, A058077.P16428994298788801906.a, A058077.P5624321515049190518.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A014692, A014692.P2004927767556050134.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A058077

/-! ## A058077.P2560789517266806569

`A000040(n+2)*A261726(n+1)/A000040(n+1)`
-/

namespace A058077.P2560789517266806569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) * A261726 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A058077.P2560789517266806569

namespace A058077

/-- `A000040(n+2)*A261726(n+1)/A000040(n+1)` -/
def P2560789517266806569.Spec : Prop :=
  ∀ n, P2560789517266806569.a n = (A058077 (n + 1) : ℚ)

end A058077

/-!
# A058078: Greatest common divisor of two binomial coefficients formed from consecutive primes: a(n) = gcd(C(prime(n+2), prime(n+1)), C(prime(n+1), prime(n))).

The programs for A058078, the canonical program `A058078.P7505527746908547517` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058078 has offset 1).

The definition of A058078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(C(A000040(n+3), A000040(n+2)), C(A000040(n+2), A000040(n+1)))` (program `A058078.P7505527746908547517`, by `A058078.P7505527746908547517.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A058078.P7505527746908547517

`gcd(C(A000040(n+3), A000040(n+2)), C(A000040(n+2), A000040(n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058078

/-- `gcd(C(A000040(n+3), A000040(n+2)), C(A000040(n+2), A000040(n+1)))` -/
def P7505527746908547517.Spec : Prop :=
  ∀ n, (P7505527746908547517.a n : ℤ) = A058078 (n + 1)

theorem P7505527746908547517.correct : P7505527746908547517.Spec := by
  intro n
  simp only [A058078, Nat.add_sub_cancel]

end A058078

/-! ## A058078.P15001168305673574876

`gcd(A058077(n+1), A058077(n+2))`
-/

namespace A058078.P15001168305673574876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058077 (n + 1)) (A058077 (n + 2))

end

end A058078.P15001168305673574876

namespace A058078

/-- `gcd(A058077(n+1), A058077(n+2))` -/
def P15001168305673574876.Spec : Prop :=
  ∀ n, (P15001168305673574876.a n : ℤ) = A058078 (n + 1)

end A058078

/-! ## A058078.P9711997353893739580

`gcd(C(p?[2*n+1], Δ[A006093(n+1)]), Δ[A261726(n+1)])`
-/

namespace A058078.P9711997353893739580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) (f2 (n + 1) - f2 n).toNat : ℤ) (f3 (n + 1) - f3 n)

end

end A058078.P9711997353893739580

namespace A058078

/-- `gcd(C(p?[2*n+1], Δ[A006093(n+1)]), Δ[A261726(n+1)])` -/
def P9711997353893739580.Spec : Prop :=
  ∀ n, (P9711997353893739580.a n : ℤ) = A058078 (n + 1)

end A058078

/-! ## A058078.P682126127042970184

`gcd(C(A065091(n+1), A008578(n+2)), Δ[A261726(n+1)])`
-/

namespace A058078.P682126127042970184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (A065091 (n + 1)).toNat (A008578 (n + 2)).toNat : ℤ) (f1 (n + 1) - f1 n)

end

end A058078.P682126127042970184

namespace A058078

/-- `gcd(C(A065091(n+1), A008578(n+2)), Δ[A261726(n+1)])` -/
def P682126127042970184.Spec : Prop :=
  ∀ n, (P682126127042970184.a n : ℤ) = A058078 (n + 1)

end A058078

/-!
# A058079: a(n) = p3, where {p1,p2,p3} are 3 consecutive primes with increasing order such that gcd(C(p3,p2), C(p2,p1)) = 1, where C is the binomial coefficient.

The programs for A058079, the canonical program `A058079.P6918650657682453408` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058079 has offset 1).

The definition of A058079 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1290 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058079.P18395184716263065273

`A215848(A334906(n+1))`
-/

namespace A058079.P18395184716263065273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (A334906 (n + 1)).toNat

end

end A058079.P18395184716263065273

namespace A058079

/-- `A215848(A334906(n+1))` -/
def P18395184716263065273.Spec : Prop :=
  ∀ n, P18395184716263065273.a n = A058079 (n + 1)

end A058079

/-! ## A058079.P8736751802651224940

`A045344(A334906(n+1)+1)`
-/

namespace A058079.P8736751802651224940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A334906 (n + 1) + 1).toNat

end

end A058079.P8736751802651224940

namespace A058079

/-- `A045344(A334906(n+1)+1)` -/
def P8736751802651224940.Spec : Prop :=
  ∀ n, P8736751802651224940.a n = A058079 (n + 1)

end A058079

/-! ## A058079.P4548448882390306610

`A065091(A334906(n+1)+1)`
-/

namespace A058079.P4548448882390306610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A334906 (n + 1) + 1).toNat

end

end A058079.P4548448882390306610

namespace A058079

/-- `A065091(A334906(n+1)+1)` -/
def P4548448882390306610.Spec : Prop :=
  ∀ n, P4548448882390306610.a n = A058079 (n + 1)

end A058079

/-! ## A058079.P12935186548303477127

`A000040(A334906(n+1)+2)`
-/

namespace A058079.P12935186548303477127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A334906 (n + 1) + 2).toNat

end

end A058079.P12935186548303477127

namespace A058079

/-- `A000040(A334906(n+1)+2)` -/
def P12935186548303477127.Spec : Prop :=
  ∀ n, P12935186548303477127.a n = A058079 (n + 1)

end A058079

/-! ## A058079.P3854870689394477813

`A008578(A334906(n+1)+3)`
-/

namespace A058079.P3854870689394477813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A334906 (n + 1) + 3).toNat

end

end A058079.P3854870689394477813

namespace A058079

/-- `A008578(A334906(n+1)+3)` -/
def P3854870689394477813.Spec : Prop :=
  ∀ n, P3854870689394477813.a n = A058079 (n + 1)

end A058079

/-! ## A058079.P6918650657682453408

`A000040(eq[1, A058078(n+1)]+3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A058079

/-- `A000040(eq[1, A058078(n+1)]+3)` -/
def P6918650657682453408.Spec : Prop :=
  ∀ n, P6918650657682453408.a n = A058079 (n + 1)

theorem P6918650657682453408.correct : P6918650657682453408.Spec := by
  intro n
  simp only [A058079, Nat.add_sub_cancel]

end A058079

/-!
# A058080: Numbers whose product of divisors exceeds their square.

The programs for A058080, the canonical program `A058080.P7483339280694489428` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058080 has offset 1).

The definition of A058080 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A058080.P15278075732954550530

`lt[4, A074206(n)]`
-/

namespace A058080.P15278075732954550530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P15278075732954550530

namespace A058080

/-- `lt[4, A074206(n)]` -/
def P15278075732954550530.Spec : Prop :=
  ∀ n, (P15278075732954550530.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P12672207348300078121

`lt[5, A077462(n)]`
-/

namespace A058080.P12672207348300078121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P12672207348300078121

namespace A058080

/-- `lt[5, A077462(n)]` -/
def P12672207348300078121.Spec : Prop :=
  ∀ n, (P12672207348300078121.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P7483339280694489428

`lt[9, A226602(n)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A058080

/-- `lt[9, A226602(n)]` -/
def P7483339280694489428.Spec : Prop :=
  ∀ n, (P7483339280694489428.a n : ℤ) = A058080 (n + 1)

theorem P7483339280694489428.correct : P7483339280694489428.Spec := by
  intro n
  simp only [A058080, Nat.add_sub_cancel]

end A058080

/-! ## A058080.P3867805753475754103

`lt[1, A339846(n+1)]+1`
-/

namespace A058080.P3867805753475754103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339846 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058080.P3867805753475754103

namespace A058080

/-- `lt[1, A339846(n+1)]+1` -/
def P3867805753475754103.Spec : Prop :=
  ∀ n, (P3867805753475754103.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P7127016944795552587

`lt[2, A113309(n+1)]+1`
-/

namespace A058080.P7127016944795552587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058080.P7127016944795552587

namespace A058080

/-- `lt[2, A113309(n+1)]+1` -/
def P7127016944795552587.Spec : Prop :=
  ∀ n, (P7127016944795552587.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P11546092377114336190

`lt[2, A307409(n+1)]+1`
-/

namespace A058080.P11546092377114336190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058080.P11546092377114336190

namespace A058080

/-- `lt[2, A307409(n+1)]+1` -/
def P11546092377114336190.Spec : Prop :=
  ∀ n, (P11546092377114336190.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P5796697502317047380

`lt[2, A337135(n+1)]+1`
-/

namespace A058080.P5796697502317047380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337135 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058080.P5796697502317047380

namespace A058080

/-- `lt[2, A337135(n+1)]+1` -/
def P5796697502317047380.Spec : Prop :=
  ∀ n, (P5796697502317047380.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P15251574244477426280

`lt[2, A348955(n+1)]+1`
-/

namespace A058080.P15251574244477426280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348955 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058080.P15251574244477426280

namespace A058080

/-- `lt[2, A348955(n+1)]+1` -/
def P15251574244477426280.Spec : Prop :=
  ∀ n, (P15251574244477426280.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P7097048553174717449

`lt[4, A000005(n+1)]+1`
-/

namespace A058080.P7097048553174717449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058080.P7097048553174717449

namespace A058080

/-- `lt[4, A000005(n+1)]+1` -/
def P7097048553174717449.Spec : Prop :=
  ∀ n, (P7097048553174717449.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P15159552835523555759

`lt[2, A117621(n+1)-2]`
-/

namespace A058080.P15159552835523555759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117621 (n + 1) - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P15159552835523555759

namespace A058080

/-- `lt[2, A117621(n+1)-2]` -/
def P15159552835523555759.Spec : Prop :=
  ∀ n, (P15159552835523555759.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P18160143591350509231

`lt[2, A303386(n+2)]+2`
-/

namespace A058080.P18160143591350509231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303386 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A058080.P18160143591350509231

namespace A058080

/-- `lt[2, A303386(n+2)]+2` -/
def P18160143591350509231.Spec : Prop :=
  ∀ n, (P18160143591350509231.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P18328715845511240305

`∩[A066423(n+1), A033942(n+1)]`
-/

namespace A058080.P18328715845511240305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058080.P18328715845511240305

namespace A058080

/-- `∩[A066423(n+1), A033942(n+1)]` -/
def P18328715845511240305.Spec : Prop :=
  ∀ n, (P18328715845511240305.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P5791231345535317033

`∩[A100959(n+1), A066423(n+1)]`
-/

namespace A058080.P5791231345535317033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058080.P5791231345535317033

namespace A058080

/-- `∩[A100959(n+1), A066423(n+1)]` -/
def P5791231345535317033.Spec : Prop :=
  ∀ n, (P5791231345535317033.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P7606677416038235926

`∩[A088381(n+1), A033942(n+1)]`
-/

namespace A058080.P7606677416038235926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088381 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058080.P7606677416038235926

namespace A058080

/-- `∩[A088381(n+1), A033942(n+1)]` -/
def P7606677416038235926.Spec : Prop :=
  ∀ n, (P7606677416038235926.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P4436484977540145333

`∩[A246716(n+1), A088381(n+1)]`
-/

namespace A058080.P4436484977540145333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A058080.P4436484977540145333

namespace A058080

/-- `∩[A246716(n+1), A088381(n+1)]` -/
def P4436484977540145333.Spec : Prop :=
  ∀ n, (P4436484977540145333.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P3219771477370717980

`lt[1, A160086(n)]`
-/

namespace A058080.P3219771477370717980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P3219771477370717980

namespace A058080

/-- `lt[1, A160086(n)]` -/
def P3219771477370717980.Spec : Prop :=
  ∀ n, (P3219771477370717980.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P13049717192332077771

`lt[2, A223135(n)]`
-/

namespace A058080.P13049717192332077771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223135 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P13049717192332077771

namespace A058080

/-- `lt[2, A223135(n)]` -/
def P13049717192332077771.Spec : Prop :=
  ∀ n, (P13049717192332077771.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P9831538933605590321

`lt[3, A032741(n)]`
-/

namespace A058080.P9831538933605590321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P9831538933605590321

namespace A058080

/-- `lt[3, A032741(n)]` -/
def P9831538933605590321.Spec : Prop :=
  ∀ n, (P9831538933605590321.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P5263544340855289477

`lt[3, A226378(n)]`
-/

namespace A058080.P5263544340855289477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A058080.P5263544340855289477

namespace A058080

/-- `lt[3, A226378(n)]` -/
def P5263544340855289477.Spec : Prop :=
  ∀ n, (P5263544340855289477.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P9659095268503515934

`lt[1, A072670(n)]+1`
-/

namespace A058080.P9659095268503515934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A058080.P9659095268503515934

namespace A058080

/-- `lt[1, A072670(n)]+1` -/
def P9659095268503515934.Spec : Prop :=
  ∀ n, (P9659095268503515934.a n : ℤ) = A058080 (n + 1)

end A058080

/-! ## A058080.P8952954196506240038

`lt[6, ∑{d}[n, atan(#)]]`
-/

namespace A058080.P8952954196506240038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Real.arctan (d : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A058080.P8952954196506240038

namespace A058080

/-- `lt[6, ∑{d}[n, atan(#)]]` -/
def P8952954196506240038.Spec : Prop :=
  ∀ n, (P8952954196506240038.a n : ℤ) = A058080 (n + 1)

end A058080

/-!
# A058081: a(1) = 1; a(n+1) = sum of terms in continued fraction for the sum of the continued fractions, [a(1); a(2), a(3),...,a(n-1),a(n)] and [a(n); a(n-1), a(n-2),...,a(2), a(1)].

The programs for A058081, there is no canonical definition to state claims against.
-/

/-! ## A058081.P8748599968153794074

`∑[A321228(comp[comp[4*n]+n])]`
-/

namespace A058081.P8748599968153794074
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321228 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058081.P8748599968153794074

/-! ## A058081.P10665886392102051632

`A094739(A240026(2*n))`
-/

namespace A058081.P10665886392102051632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094739 (A240026 (2 * n)).toNat

end

end A058081.P10665886392102051632

/-!
# A058083: a(1) = 1; a(n+1) = sum of terms in continued fraction for sum of continued fractions, [a(n); a(n-1), a(n-2),...,a(1)] and [0; a(n), a(n-1), a(n-2),...,a(1)].

The programs for A058083, there is no canonical definition to state claims against.
-/

/-! ## A058083.P13526675533580719565

`A003056(∑[A365292(n)])`
-/

namespace A058083.P13526675533580719565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A058083.P13526675533580719565

/-! ## A058083.P14624483335078435214

`A119502(n)*A335661(A090245(n))`
-/

namespace A058083.P14624483335078435214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A335661 (A090245 n).toNat

end

end A058083.P14624483335078435214

/-!
# A058084: Smallest m such that binomial(m,k) = n for some k.

The programs for A058084, there is no canonical definition to state claims against.
-/

/-! ## A058084.P10929267829552822988

`A265912(A119629(n+1))`
-/

namespace A058084.P10929267829552822988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265912 (A119629 (n + 1)).toNat

end

end A058084.P10929267829552822988

/-! ## A058084.P13573577261520566274

`A374691(n+1)-A357327(n+1)`
-/

namespace A058084.P13573577261520566274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374691 (n + 1) - A357327 (n + 1)

end

end A058084.P13573577261520566274

/-! ## A058084.P16004538199154244472

`∑{e}[A355391(n+1), #]`
-/

namespace A058084.P16004538199154244472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A058084.P16004538199154244472

/-! ## A058084.P10671595453849395116

`A001222(A355391(n+1))`
-/

namespace A058084.P10671595453849395116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A355391 (n + 1)).toNat

end

end A058084.P10671595453849395116

/-! ## A058084.P8071798522953142889

`A136565(A355391(2*n+1-n))`
-/

namespace A058084.P8071798522953142889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136565 (A355391 (2 * n + 1 - n)).toNat

end

end A058084.P8071798522953142889

/-!
# A058085: a(n) = A058057(n,n-5).

The programs for A058085, there is no canonical definition to state claims against.
-/

/-! ## A058085.P2488821754254808988

`A058057(A055999(n+3))`
-/

namespace A058085.P2488821754254808988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A055999 (n + 3)).toNat

end

end A058085.P2488821754254808988

/-! ## A058085.P13891451611739996005

`record[A058057(A055999(A008611(n)))]`
-/

namespace A058085.P13891451611739996005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A055999 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058085.P13891451611739996005

/-! ## A058085.P10256103473013771651

`record[A058057(A055999(A008624(n)))]`
-/

namespace A058085.P10256103473013771651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A055999 (A008624 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058085.P10256103473013771651

/-! ## A058085.P4001224640058717815

`record[A058057(A055999(A008647(n)))]`
-/

namespace A058085.P4001224640058717815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A055999 (A008647 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058085.P4001224640058717815

/-! ## A058085.P17065597011866926808

`record[A058057(A055999(A025480(n)))]`
-/

namespace A058085.P17065597011866926808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (A055999 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058085.P17065597011866926808

/-!
# A058086: a(n) = A058057(n,n-6).

The programs for A058086, there is no canonical definition to state claims against.
-/

/-! ## A058086.P10379572913252400483

`A058057(eq[6, A025581(n)])`
-/

namespace A058086.P10379572913252400483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058086.P10379572913252400483

/-! ## A058086.P4321496410053922951

`A058057(eq[7, A004736(n+1)])`
-/

namespace A058086.P4321496410053922951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058057 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058086.P4321496410053922951

/-! ## A058086.P5700467239160498586

`∑[A058089(n+6)-A058085(n+5)]`
-/

namespace A058086.P5700467239160498586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058089 (n + 6) - A058085 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A058086.P5700467239160498586

/-! ## A058086.P4345319012807396622

`A156368(eq[6, A002262(n)])`
-/

namespace A058086.P4345319012807396622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058086.P4345319012807396622

/-! ## A058086.P3764779908294807112

`A156368(eq[7, A002260(n+1)])`
-/

namespace A058086.P3764779908294807112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156368 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058086.P3764779908294807112

/-!
# A058087: Triangle read by rows, giving coefficients of the ménage hit polynomials ordered by descending powers. T(n, k) for 0 <= k <= n.

The programs for A058087, there is no canonical definition to state claims against.
-/

/-! ## A058087.P10345817459153573098

`A156996(A061579(n))`
-/

namespace A058087.P10345817459153573098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (A061579 n).toNat

end

end A058087.P10345817459153573098

/-! ## A058087.P4310450764757708504

`A156996(A114327(n)+n)`
-/

namespace A058087.P4310450764757708504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (A114327 n + (n : ℤ)).toNat

end

end A058087.P4310450764757708504

/-! ## A058087.P7368381582720956472

`A156996(A038722(n+1)-1)`
-/

namespace A058087.P7368381582720956472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (A038722 (n + 1) - 1).toNat

end

end A058087.P7368381582720956472

/-! ## A058087.P9059091097040242341

`A156996(A002378(n)%A014132(n+1))`
-/

namespace A058087.P9059091097040242341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (Int.tmod (A002378 n) (A014132 (n + 1))).toNat

end

end A058087.P9059091097040242341

/-!
# A058088: McKay-Thompson series of class 8b for Monster.

The programs for A058088, there is no canonical definition to state claims against.
-/

/-! ## A058088.P11947673412547718735

`A112145(n)/(-1)^n`
-/

namespace A058088.P11947673412547718735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112145 n : ℚ) / ((-1) ^ n : ℚ)

end

end A058088.P11947673412547718735

/-! ## A058088.P3229462256395771510

`A033999(n)*A112145(n)`
-/

namespace A058088.P3229462256395771510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A112145 n

end

end A058088.P3229462256395771510

/-! ## A058088.P3975602185075461831

`(A004442(n)-n)*A112145(n)`
-/

namespace A058088.P3975602185075461831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A112145 n

end

end A058088.P3975602185075461831

/-! ## A058088.P13049946676875905275

`A009531(2*n+1)*A112145(n)`
-/

namespace A058088.P13049946676875905275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A112145 n

end

end A058088.P13049946676875905275

/-! ## A058088.P11994402312262033504

`A034947(2*n+1)*A112145(n)`
-/

namespace A058088.P11994402312262033504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A112145 n

end

end A058088.P11994402312262033504

/-! ## A058088.P3894995631889445591

`A022601(n)*A112145(n)/A112150(n)`
-/

namespace A058088.P3894995631889445591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022601 n * A112145 n : ℚ) / (A112150 n : ℚ)

end

end A058088.P3894995631889445591

/-!
# A058089: a(n) = A058087(n,n-6).

The programs for A058089, there is no canonical definition to state claims against.
-/

/-! ## A058089.P16852318292870389804

`A058087(eq[6, A025581(n)])`
-/

namespace A058089.P16852318292870389804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058089.P16852318292870389804

/-! ## A058089.P8021460874438837205

`A058087(A055999(n+4)-1)`
-/

namespace A058089.P8021460874438837205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A055999 (n + 4) - 1).toNat

end

end A058089.P8021460874438837205

/-! ## A058089.P4144136479813451513

`A058087(Δ[A023551(n+2)]-1)`
-/

namespace A058089.P4144136479813451513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (f1 (n + 1) - f1 n - 1).toNat

end

end A058089.P4144136479813451513

/-! ## A058089.P17049767929653092133

`record[A058087(A052905(n+1)-2)]`
-/

namespace A058089.P17049767929653092133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (A052905 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A058089.P17049767929653092133

/-! ## A058089.P11618061407062274524

`A094314(eq[6, A002262(n)])`
-/

namespace A058089.P11618061407062274524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058089.P11618061407062274524

/-!
# A058090: a(n) = A058087(n,n-7).

The programs for A058090, there is no canonical definition to state claims against.
-/

/-! ## A058090.P4023554639332982815

`A058087(eq[7, A025581(n)])`
-/

namespace A058090.P4023554639332982815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058087 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058090.P4023554639332982815

/-! ## A058090.P16148802450863748800

`A094314(eq[7, A002262(n)])`
-/

namespace A058090.P16148802450863748800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058090.P16148802450863748800

/-! ## A058090.P15027318232669075320

`A156996(eq[7, A002262(n)])`
-/

namespace A058090.P15027318232669075320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058090.P15027318232669075320

/-! ## A058090.P7532593497945305054

`A156996(eq[7, A144328(n+1)])`
-/

namespace A058090.P7532593497945305054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156996 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058090.P7532593497945305054

/-! ## A058090.P1889518967776550963

`A094314(eq[8, A002260(n+1)])`
-/

namespace A058090.P1889518967776550963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094314 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A058090.P1889518967776550963

/-!
# A058094: Number of 321-hexagon-avoiding permutations in S_n, i.e., permutations of 1..n with no submatrix equivalent to 321, 56781234, 46781235, 56718234 or 46718235.

The programs for A058094, the canonical program `A058094.P7220490547193309932` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A058094 has offset 0).

The definition of A058094 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A058094.P7220490547193309932

`ogf((1-5x+7x^2-5x^3+x^4+3x^5)/(1-6x+11x^2-9x^3+4x^4+4x^5-x^6))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A058094

/-- `ogf((1-5x+7x^2-5x^3+x^4+3x^5)/(1-6x+11x^2-9x^3+4x^4+4x^5-x^6))` -/
def P7220490547193309932.Spec : Prop :=
  ∀ n, P7220490547193309932.a n = A058094 n

theorem P7220490547193309932.correct : P7220490547193309932.Spec := by
  intro n
  simp only [A058094]

end A058094

/-! ## A058094.P5258119467902052363

`A024175(n)+A002262(A058275(n))`
-/

namespace A058094.P5258119467902052363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024175 n + A002262 (A058275 n).toNat

end

end A058094.P5258119467902052363

namespace A058094

/-- `A024175(n)+A002262(A058275(n))` -/
def P5258119467902052363.Spec : Prop :=
  ∀ n, P5258119467902052363.a n = A058094 n

end A058094

/-! ## A058094.P16429708750292168620

`A299202(A287021(n))+A000108(n)`
-/

namespace A058094.P16429708750292168620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299202 (A287021 n).toNat + A000108 n

end

end A058094.P16429708750292168620

namespace A058094

/-- `A299202(A287021(n))+A000108(n)` -/
def P16429708750292168620.Spec : Prop :=
  ∀ n, P16429708750292168620.a n = A058094 n

end A058094

/-! ## A058094.P9779714113920405133

`A292042(A309861(n))+A000108(n)`
-/

namespace A058094.P9779714113920405133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 (A309861 n).toNat + A000108 n

end

end A058094.P9779714113920405133

namespace A058094

/-- `A292042(A309861(n))+A000108(n)` -/
def P9779714113920405133.Spec : Prop :=
  ∀ n, P9779714113920405133.a n = A058094 n

end A058094

/-! ## A058094.P14059360936181597069

`A000108(n)-A054907(A000602(n))`
-/

namespace A058094.P14059360936181597069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A054907 (A000602 n).toNat

end

end A058094.P14059360936181597069

namespace A058094

/-- `A000108(n)-A054907(A000602(n))` -/
def P14059360936181597069.Spec : Prop :=
  ∀ n, P14059360936181597069.a n = A058094 n

end A058094

/-!
# A058097: McKay-Thompson series of class 10A for Monster.

The programs for A058097, there is no canonical definition to state claims against.
-/

/-! ## A058097.P13759026453886460495

`and(A341375(n), A341376((1-n)²+n))`
-/

namespace A058097.P13759026453886460495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A341375 n) (A341376 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat)

end

end A058097.P13759026453886460495

