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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A353600: Second-smallest Wieferich base of n, i.e., second-smallest b > 1 such that b^(n-1) == 1 (mod n^2).

The programs for A353600, there is no canonical definition to state claims against.
-/

/-! ## A353600.P774767264870000417

`A353602(C(n+3, 2))`
-/

namespace A353600.P774767264870000417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353602 (Nat.choose (n + 3) 2)

end

end A353600.P774767264870000417

/-! ## A353600.P8028826643076840271

`A353602(∑[n+2]+1)`
-/

namespace A353600.P8028826643076840271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353602 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A353600.P8028826643076840271

/-! ## A353600.P12165502230791122318

`A353602(A000217(n+2))+A335460(n+1)`
-/

namespace A353600.P12165502230791122318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353602 (A000217 (n + 2)).toNat + A335460 (n + 1)

end

end A353600.P12165502230791122318

/-!
# A353607: Product_{n>=1} (1 + a(n)*x^n/n!) = 1 + sin(x).

The programs for A353607, there is no canonical definition to state claims against.
-/

/-! ## A353607.P3697963034985453430

`A170914(n+1)*A329317(A340814(3*n+4))`
-/

namespace A353607.P3697963034985453430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170914 (n + 1) * A329317 (A340814 (3 * n + 4)).toNat

end

end A353607.P3697963034985453430

/-! ## A353607.P2092042715647131647

`A000120(A000312(n))*A170914(n+1)`
-/

namespace A353607.P2092042715647131647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000312 n).toNat * A170914 (n + 1)

end

end A353607.P2092042715647131647

/-!
# A353608: Product_{n>=1} (1 + a(n)*x^n/n!) = 1 + sinh(x).

The programs for A353608, there is no canonical definition to state claims against.
-/

/-! ## A353608.P8486651437184853024

`A032326(A032555(n+1))*A033999(n)`
-/

namespace A353608.P8486651437184853024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032326 (A032555 (n + 1)).toNat * A033999 n

end

end A353608.P8486651437184853024

/-! ## A353608.P5800518755063824044

`A032326(n+1)*A062157(A221905(n))`
-/

namespace A353608.P5800518755063824044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032326 (n + 1) * A062157 (A221905 n).toNat

end

end A353608.P5800518755063824044

/-! ## A353608.P7050958599271456459

`A032326(n+1)*A062157(A309845(n))`
-/

namespace A353608.P7050958599271456459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032326 (n + 1) * A062157 (A309845 n).toNat

end

end A353608.P7050958599271456459

/-! ## A353608.P2719516190026129095

`A032326(n+1)*A062157(A336024(n))`
-/

namespace A353608.P2719516190026129095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032326 (n + 1) * A062157 (A336024 n).toNat

end

end A353608.P2719516190026129095

/-! ## A353608.P11660554410758250252

`A032326(n+1)*A062157(A032555(n+1))`
-/

namespace A353608.P11660554410758250252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032326 (n + 1) * A062157 (A032555 (n + 1)).toNat

end

end A353608.P11660554410758250252

/-!
# A353611: Product_{n>=1} (1 + a(n)*x^n/n!) = 1 + tan(x).

The programs for A353611, there is no canonical definition to state claims against.
-/

/-! ## A353611.P5893080825871201179

`A354175(n+1)-A200513(2^n-1)`
-/

namespace A353611.P5893080825871201179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354175 (n + 1) - A200513 (2 ^ n - 1)

end

end A353611.P5893080825871201179

/-! ## A353611.P6824342732552145042

`A321928(A148306(n))-A009343(n)`
-/

namespace A353611.P6824342732552145042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321928 (A148306 n).toNat - A009343 n

end

end A353611.P6824342732552145042

/-!
# A353612: Triangle read by rows: T(n,k) = (n + k) if (n + k) is a prime number, otherwise T(n,k) = 0; n >= 1, k >= 1.

The programs for A353612, the canonical program `A353612.P5678627208239049230` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353612 has offset 1).

The definition of A353612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353612.P5678627208239049230

`A061397(A108872(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353612

/-- `A061397(A108872(n+1))` -/
def P5678627208239049230.Spec : Prop :=
  ∀ n, P5678627208239049230.a n = A353612 (n + 1)

theorem P5678627208239049230.correct : P5678627208239049230.Spec := by
  intro n
  simp only [A353612, Nat.add_sub_cancel]

end A353612

/-! ## A353612.P13825421750978067351

`A061397(A051162(n)+2)`
-/

namespace A353612.P13825421750978067351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A051162 n + 2).toNat

end

end A353612.P13825421750978067351

namespace A353612

/-- `A061397(A051162(n)+2)` -/
def P13825421750978067351.Spec : Prop :=
  ∀ n, P13825421750978067351.a n = A353612 (n + 1)

end A353612

/-! ## A353612.P8115712181409934545

`A061397(A094727(n+1)+1)`
-/

namespace A353612.P8115712181409934545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A094727 (n + 1) + 1).toNat

end

end A353612.P8115712181409934545

namespace A353612

/-- `A061397(A094727(n+1)+1)` -/
def P8115712181409934545.Spec : Prop :=
  ∀ n, P8115712181409934545.a n = A353612 (n + 1)

end A353612

/-! ## A353612.P2383479259123580431

`A108872(n+1)*A353663(n+1)`
-/

namespace A353612.P2383479259123580431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108872 (n + 1) * A353663 (n + 1)

end

end A353612.P2383479259123580431

namespace A353612

/-- `A108872(n+1)*A353663(n+1)` -/
def P2383479259123580431.Spec : Prop :=
  ∀ n, P2383479259123580431.a n = A353612 (n + 1)

end A353612

/-! ## A353612.P11818876707518402625

`A221919(n+1)*A353663(n+1)`
-/

namespace A353612.P11818876707518402625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221919 (n + 1) * A353663 (n + 1)

end

end A353612.P11818876707518402625

namespace A353612

/-- `A221919(n+1)*A353663(n+1)` -/
def P11818876707518402625.Spec : Prop :=
  ∀ n, P11818876707518402625.a n = A353612 (n + 1)

end A353612

/-! ## A353612.P2547283332800141056

`C(A020639(A108872(n+1)), A094727(n+1))`
-/

namespace A353612.P2547283332800141056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (A108872 (n + 1)).toNat).toNat (A094727 (n + 1)).toNat

end

end A353612.P2547283332800141056

namespace A353612

/-- `C(A020639(A108872(n+1)), A094727(n+1))` -/
def P2547283332800141056.Spec : Prop :=
  ∀ n, (P2547283332800141056.a n : ℤ) = A353612 (n + 1)

end A353612

/-! ## A353612.P17396847542130728993

`C(A020639(A094727(n+1)+1), A094727(n+1))`
-/

namespace A353612.P17396847542130728993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (A094727 (n + 1) + 1).toNat).toNat (A094727 (n + 1)).toNat

end

end A353612.P17396847542130728993

namespace A353612

/-- `C(A020639(A094727(n+1)+1), A094727(n+1))` -/
def P17396847542130728993.Spec : Prop :=
  ∀ n, (P17396847542130728993.a n : ℤ) = A353612 (n + 1)

end A353612

/-! ## A353612.P12600921436691309871

`A143655(A292565(n+1))`
-/

namespace A353612.P12600921436691309871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143655 (A292565 (n + 1)).toNat

end

end A353612.P12600921436691309871

namespace A353612

/-- `A143655(A292565(n+1))` -/
def P12600921436691309871.Spec : Prop :=
  ∀ n, P12600921436691309871.a n = A353612 (n + 1)

end A353612

/-!
# A353616: a(n) is the denominator of the median abundancy index of the first 2^n + 1 positive integers.

The programs for A353616, there is no canonical definition to state claims against.
-/

/-! ## A353616.P15984020647056396594

`A017666(A256566(2^n+1))`
-/

namespace A353616.P15984020647056396594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A256566 (2 ^ n + 1)).toNat

end

end A353616.P15984020647056396594

/-!
# A353619: Side a of primitive integer-sided triangles (a, b, c) whose angle B = 3*C.

The programs for A353619, there is no canonical definition to state claims against.
-/

/-! ## A353619.P5999249973914188691

`A353622(n+1)-(A353621(n+1)+A353620(n+1))`
-/

namespace A353619.P5999249973914188691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353622 (n + 1) - (A353621 (n + 1) + A353620 (n + 1))

end

end A353619.P5999249973914188691

/-! ## A353619.P1274449040248530854

`A353618(3*n+1)`
-/

namespace A353619.P1274449040248530854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (3 * n + 1)

end

end A353619.P1274449040248530854

/-! ## A353619.P5009522596830782879

`and(-1, A353618(A016777(n)))`
-/

namespace A353619.P5009522596830782879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A353618 (A016777 n).toNat)

end

end A353619.P5009522596830782879

/-! ## A353619.P1408858517200789809

`A036225(n)*A353618(A016777(n))`
-/

namespace A353619.P1408858517200789809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A353618 (A016777 n).toNat

end

end A353619.P1408858517200789809

/-! ## A353619.P12380483973163981541

`∑{d}[A353618(A016777(n)), A000010(#)]`
-/

namespace A353619.P12380483973163981541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (A016777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A353619.P12380483973163981541

/-!
# A353620: Side b of primitive integer-sided triangles (a, b, c) whose angle B = 3*C.

The programs for A353620, there is no canonical definition to state claims against.
-/

/-! ## A353620.P2861651594851514155

`A353622(n+1)-(A353621(n+1)+A353619(n+1))`
-/

namespace A353620.P2861651594851514155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353622 (n + 1) - (A353621 (n + 1) + A353619 (n + 1))

end

end A353620.P2861651594851514155

/-! ## A353620.P705613321104703230

`A353622(n+1)-(A353621(n+1)+A353618(3*n+1))`
-/

namespace A353620.P705613321104703230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353622 (n + 1) - (A353621 (n + 1) + A353618 (3 * n + 1))

end

end A353620.P705613321104703230

/-! ## A353620.P16969691045967999411

`A353618(3*n+2)`
-/

namespace A353620.P16969691045967999411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (3 * n + 2)

end

end A353620.P16969691045967999411

/-! ## A353620.P10395907896203734980

`and(-1, A353618(A016789(n)))`
-/

namespace A353620.P10395907896203734980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A353618 (A016789 n).toNat)

end

end A353620.P10395907896203734980

/-! ## A353620.P17922843478603966543

`A036225(n)*A353618(A016789(n))`
-/

namespace A353620.P17922843478603966543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A353618 (A016789 n).toNat

end

end A353620.P17922843478603966543

/-!
# A353621: Side c of primitive integer-sided triangles (a, b, c) whose angle B = 3*C.

The programs for A353621, there is no canonical definition to state claims against.
-/

/-! ## A353621.P7234479818820309001

`A353622(n+1)-(A353620(n+1)+A353619(n+1))`
-/

namespace A353621.P7234479818820309001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353622 (n + 1) - (A353620 (n + 1) + A353619 (n + 1))

end

end A353621.P7234479818820309001

/-! ## A353621.P3251997682917651105

`A353622(n+1)-(A353620(n+1)+A353618(3*n+1))`
-/

namespace A353621.P3251997682917651105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353622 (n + 1) - (A353620 (n + 1) + A353618 (3 * n + 1))

end

end A353621.P3251997682917651105

/-! ## A353621.P13504591399591698878

`A353618(3*(n+1))`
-/

namespace A353621.P13504591399591698878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (3 * (n + 1))

end

end A353621.P13504591399591698878

/-! ## A353621.P6931061353022957192

`filter[A353618(n+1), A010057(#)]`
-/

namespace A353621.P6931061353022957192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010057 (f1 j).toNat = 1) n)

end

end A353621.P6931061353022957192

/-! ## A353621.P3891340862080855797

`filter[A353618(n+1), A075802(#)]`
-/

namespace A353621.P3891340862080855797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A353621.P3891340862080855797

/-!
# A353622: Perimeter of integer-sided primitive triangles (a, b, c) whose angle B = 3*C.

The programs for A353622, there is no canonical definition to state claims against.
-/

/-! ## A353622.P1550868114776386701

`A353619(n+1)+A353620(n+1)+A353621(n+1)`
-/

namespace A353622.P1550868114776386701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353619 (n + 1) + A353620 (n + 1) + A353621 (n + 1)

end

end A353622.P1550868114776386701

/-! ## A353622.P3486660134312098297

`A353618(3*n+1)+A353621(n+1)+A353620(n+1)`
-/

namespace A353622.P3486660134312098297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (3 * n + 1) + (A353621 (n + 1) + A353620 (n + 1))

end

end A353622.P3486660134312098297

/-! ## A353622.P5467145601716932

`A353618(3*(n+1))+A353620(n+1)+A353619(n+1)`
-/

namespace A353622.P5467145601716932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (3 * (n + 1)) + (A353620 (n + 1) + A353619 (n + 1))

end

end A353622.P5467145601716932

/-! ## A353622.P15031739260256555560

`A353618(3*n+2)+A353621(n+1)+A353619(n+1)`
-/

namespace A353622.P15031739260256555560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (3 * n + 2) + (A353621 (n + 1) + A353619 (n + 1))

end

end A353622.P15031739260256555560

/-! ## A353622.P3757112002220757943

`A353618(3*(n+1))+A353620(n+1)+A353618(3*n+1)`
-/

namespace A353622.P3757112002220757943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353618 (3 * (n + 1)) + (A353620 (n + 1) + A353618 (3 * n + 1))

end

end A353622.P3757112002220757943

/-!
# A353623: a(n) is the least k > 0 such that n and k*n can be added without carries in balanced ternary.

The programs for A353623, there is no canonical definition to state claims against.
-/

/-! ## A353623.P1502347105214398973

`A028310(A353624(n)/A028310(n))`
-/

namespace A353623.P1502347105214398973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A353624 n : ℚ) / (A028310 n : ℚ))).toNat

end

end A353623.P1502347105214398973

/-! ## A353623.P13939895988717204239

`A004277(A353624(n))/A004277(n)`
-/

namespace A353623.P13939895988717204239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (A353624 n).toNat : ℚ) / (A004277 n : ℚ)

end

end A353623.P13939895988717204239

/-! ## A353623.P15809406583934602513

`A008458(A353624(n))/A008458(n)`
-/

namespace A353623.P15809406583934602513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (A353624 n).toNat : ℚ) / (A008458 n : ℚ)

end

end A353623.P15809406583934602513

/-! ## A353623.P15999440504392897763

`A008486(A353624(n))/A008486(n)`
-/

namespace A353623.P15999440504392897763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008486 (A353624 n).toNat : ℚ) / (A008486 n : ℚ)

end

end A353623.P15999440504392897763

/-! ## A353623.P15083378414677207579

`A008574(A353624(n))/A008574(n)`
-/

namespace A353623.P15083378414677207579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A353624 n).toNat : ℚ) / (A008574 n : ℚ)

end

end A353623.P15083378414677207579

/-!
# A353624: a(0) = 0, and for n > 0, a(n) is the least multiple of n that can be added to n without carries in balanced ternary.

The programs for A353624, there is no canonical definition to state claims against.
-/

/-! ## A353624.P5009656336156398537

`n*A353623(n)`
-/

namespace A353624.P5009656336156398537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353623 n

end

end A353624.P5009656336156398537

/-!
# A353625: a(n) = 1 if n is divisible by the squares of two distinct primes, otherwise 0.

The programs for A353625, the canonical program `A353625.P123800280512251556` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353625 has offset 1).

The definition of A353625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353625.P123800280512251556

`floor(∑{e}[n+1, 1-1/#])`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353625

/-- `floor(∑{e}[n+1, 1-1/#])` -/
def P123800280512251556.Spec : Prop :=
  ∀ n, P123800280512251556.a n = A353625 (n + 1)

theorem P123800280512251556.correct : P123800280512251556.Spec := by
  intro n
  simp only [A353625, Nat.add_sub_cancel]

end A353625

/-! ## A353625.P4649803895384421414

`val(A323308(n+1), 4)`
-/

namespace A353625.P4649803895384421414
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A323308 (n + 1)).toNat 4

end

end A353625.P4649803895384421414

namespace A353625

/-- `val(A323308(n+1), 4)` -/
def P4649803895384421414.Spec : Prop :=
  ∀ n, (P4649803895384421414.a n : ℤ) = A353625 (n + 1)

end A353625

/-! ## A353625.P15946769924377358921

`floor(A056170(n+1)/2)`
-/

namespace A353625.P15946769924377358921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056170 (n + 1) : ℚ) / 2⌋

end

end A353625.P15946769924377358921

namespace A353625

/-- `floor(A056170(n+1)/2)` -/
def P15946769924377358921.Spec : Prop :=
  ∀ n, P15946769924377358921.a n = A353625 (n + 1)

end A353625

/-! ## A353625.P9813978163609707944

`char[A036785(n+1)-1]`
-/

namespace A353625.P9813978163609707944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353625.P9813978163609707944

namespace A353625

/-- `char[A036785(n+1)-1]` -/
def P9813978163609707944.Spec : Prop :=
  ∀ n, (P9813978163609707944.a n : ℤ) = A353625 (n + 1)

end A353625

/-! ## A353625.P15312864094106428224

`val(dr(A046523(n+1)), 9)`
-/

namespace A353625.P15312864094106428224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.digitalRoot (A046523 (n + 1))) 9

end

end A353625.P15312864094106428224

namespace A353625

/-- `val(dr(A046523(n+1)), 9)` -/
def P15312864094106428224.Spec : Prop :=
  ∀ n, (P15312864094106428224.a n : ℤ) = A353625 (n + 1)

end A353625

/-! ## A353625.P8713515995126607545

`round(sqrt(and(2, A294874(n+1)-1)))`
-/

namespace A353625.P8713515995126607545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Int.land 2 (A294874 (n + 1) - 1) : ℝ))

end

end A353625.P8713515995126607545

namespace A353625

/-- `round(sqrt(and(2, A294874(n+1)-1)))` -/
def P8713515995126607545.Spec : Prop :=
  ∀ n, P8713515995126607545.a n = A353625 (n + 1)

end A353625

/-! ## A353625.P10396922111198743960

`floor(atan(A001221((n+1)/∏{p}[n+1, #])))`
-/

namespace A353625.P10396922111198743960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat : ℝ)⌋

end

end A353625.P10396922111198743960

namespace A353625

/-- `floor(atan(A001221((n+1)/∏{p}[n+1, #])))` -/
def P10396922111198743960.Spec : Prop :=
  ∀ n, P10396922111198743960.a n = A353625 (n + 1)

end A353625

/-! ## A353625.P221673294563573046

`val(A000005(∏{p}[(n+1)/∏{p}[n+1, #], #]), 4)`
-/

namespace A353625.P221673294563573046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p)).toNat 4

end

end A353625.P221673294563573046

namespace A353625

/-- `val(A000005(∏{p}[(n+1)/∏{p}[n+1, #], #]), 4)` -/
def P221673294563573046.Spec : Prop :=
  ∀ n, (P221673294563573046.a n : ℤ) = A353625 (n + 1)

end A353625

/-! ## A353625.P3390204293199305099

`A014963((n+1)/∏{p}[n+1, #])%∏{p}[(n+1)/∏{p}[n+1, #], #]`
-/

namespace A353625.P3390204293199305099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat) ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℤ)

end

end A353625.P3390204293199305099

namespace A353625

/-- `A014963((n+1)/∏{p}[n+1, #])%∏{p}[(n+1)/∏{p}[n+1, #], #]` -/
def P3390204293199305099.Spec : Prop :=
  ∀ n, P3390204293199305099.a n = A353625 (n + 1)

end A353625

/-! ## A353625.P7482628800579314846

`A065202(A000188(n+1)²)`
-/

namespace A353625.P7482628800579314846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (A000188 (n + 1) ^ 2).toNat

end

end A353625.P7482628800579314846

namespace A353625

/-- `A065202(A000188(n+1)²)` -/
def P7482628800579314846.Spec : Prop :=
  ∀ n, P7482628800579314846.a n = A353625 (n + 1)

end A353625

/-! ## A353625.P5076778888214506278

`val(A000005(A007948(n+1)), 9)`
-/

namespace A353625.P5076778888214506278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000005 (A007948 (n + 1)).toNat).toNat 9

end

end A353625.P5076778888214506278

namespace A353625

/-- `val(A000005(A007948(n+1)), 9)` -/
def P5076778888214506278.Spec : Prop :=
  ∀ n, (P5076778888214506278.a n : ℤ) = A353625 (n + 1)

end A353625

/-! ## A353625.P14708368792539486498

`floor(A001221(A003557(n+1))/2)`
-/

namespace A353625.P14708368792539486498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001221 (A003557 (n + 1)).toNat : ℚ) / 2⌋

end

end A353625.P14708368792539486498

namespace A353625

/-- `floor(A001221(A003557(n+1))/2)` -/
def P14708368792539486498.Spec : Prop :=
  ∀ n, P14708368792539486498.a n = A353625 (n + 1)

end A353625

/-! ## A353625.P12736147210763248038

`char[lt[A249739(n+1), A071773(n+1)]]`
-/

namespace A353625.P12736147210763248038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249739 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353625.P12736147210763248038

namespace A353625

/-- `char[lt[A249739(n+1), A071773(n+1)]]` -/
def P12736147210763248038.Spec : Prop :=
  ∀ n, (P12736147210763248038.a n : ℤ) = A353625 (n + 1)

end A353625

/-! ## A353625.P16922915767318420040

`A065202(A000188(n+1)^3)`
-/

namespace A353625.P16922915767318420040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (A000188 (n + 1) ^ 3).toNat

end

end A353625.P16922915767318420040

namespace A353625

/-- `A065202(A000188(n+1)^3)` -/
def P16922915767318420040.Spec : Prop :=
  ∀ n, P16922915767318420040.a n = A353625 (n + 1)

end A353625

/-! ## A353625.P2752946216113304906

`and(1, A294874(A294874(n+1))+A269964(n+1))`
-/

namespace A353625.P2752946216113304906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A294874 (A294874 (n + 1)).toNat + A269964 (n + 1))

end

end A353625.P2752946216113304906

namespace A353625

/-- `and(1, A294874(A294874(n+1))+A269964(n+1))` -/
def P2752946216113304906.Spec : Prop :=
  ∀ n, P2752946216113304906.a n = A353625 (n + 1)

end A353625

/-!
# A353626: a(n) = 1 if n is a multiple of the square of an odd prime (equally: if the odd part of n is not squarefree), otherwise 0.

The programs for A353626, the canonical program `A353626.P12115139591417466746` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353626 has offset 1).

The definition of A353626 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209635, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353626.P1026467383801776706

`1-A353627(n+1)`
-/

namespace A353626.P1026467383801776706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353627 (n + 1)

end

end A353626.P1026467383801776706

namespace A353626

/-- `1-A353627(n+1)` -/
def P1026467383801776706.Spec : Prop :=
  ∀ n, P1026467383801776706.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P12115139591417466746

`1-abs(A209635(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353626

/-- `1-abs(A209635(n+1))` -/
def P12115139591417466746.Spec : Prop :=
  ∀ n, P12115139591417466746.a n = A353626 (n + 1)

theorem P12115139591417466746.correct : P12115139591417466746.Spec := by
  intro n
  simp only [A353626, Nat.add_sub_cancel]

end A353626

/-! ## A353626.P7199178298996603265

`A107078(A000265(n+1))`
-/

namespace A353626.P7199178298996603265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (A000265 (n + 1)).toNat

end

end A353626.P7199178298996603265

namespace A353626

/-- `A107078(A000265(n+1))` -/
def P7199178298996603265.Spec : Prop :=
  ∀ n, P7199178298996603265.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P16057804642178664912

`A353625(4*(n+1))`
-/

namespace A353626.P16057804642178664912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353625 (4 * (n + 1))

end

end A353626.P16057804642178664912

namespace A353626

/-- `A353625(4*(n+1))` -/
def P16057804642178664912.Spec : Prop :=
  ∀ n, P16057804642178664912.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P9606093369594817928

`A392109(n+1)%2`
-/

namespace A353626.P9606093369594817928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392109 (n + 1)) 2

end

end A353626.P9606093369594817928

namespace A353626

/-- `A392109(n+1)%2` -/
def P9606093369594817928.Spec : Prop :=
  ∀ n, P9606093369594817928.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P16039160440358649782

`1-abs(A355689(n+1))`
-/

namespace A353626.P16039160440358649782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A355689 (n + 1)|

end

end A353626.P16039160440358649782

namespace A353626

/-- `1-abs(A355689(n+1))` -/
def P16039160440358649782.Spec : Prop :=
  ∀ n, P16039160440358649782.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P3537266182442234457

`log2(gcd(2, A305807(n+1)))`
-/

namespace A353626.P3537266182442234457
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A305807 (n + 1)) : ℝ)

end

end A353626.P3537266182442234457

namespace A353626

/-- `log2(gcd(2, A305807(n+1)))` -/
def P3537266182442234457.Spec : Prop :=
  ∀ n, P3537266182442234457.a n = (A353626 (n + 1) : ℝ)

end A353626

/-! ## A353626.P15264210176703194600

`char[lt[2, A071773(n+1)]]`
-/

namespace A353626.P15264210176703194600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071773 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353626.P15264210176703194600

namespace A353626

/-- `char[lt[2, A071773(n+1)]]` -/
def P15264210176703194600.Spec : Prop :=
  ∀ n, (P15264210176703194600.a n : ℤ) = A353626 (n + 1)

end A353626

/-! ## A353626.P10306427502674977975

`and(1, A101035(n+1)+1)`
-/

namespace A353626.P10306427502674977975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A101035 (n + 1) + 1)

end

end A353626.P10306427502674977975

namespace A353626

/-- `and(1, A101035(n+1)+1)` -/
def P10306427502674977975.Spec : Prop :=
  ∀ n, P10306427502674977975.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P18224518710386919437

`and(1, A326297(n+1)+1)`
-/

namespace A353626.P18224518710386919437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A326297 (n + 1) + 1)

end

end A353626.P18224518710386919437

namespace A353626

/-- `and(1, A326297(n+1)+1)` -/
def P18224518710386919437.Spec : Prop :=
  ∀ n, P18224518710386919437.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P14560033565875488524

`and(1, A348049(n+1)+1)`
-/

namespace A353626.P14560033565875488524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A348049 (n + 1) + 1)

end

end A353626.P14560033565875488524

namespace A353626

/-- `and(1, A348049(n+1)+1)` -/
def P14560033565875488524.Spec : Prop :=
  ∀ n, P14560033565875488524.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P8626624648394882593

`and(1, A359433(n+1)+1)`
-/

namespace A353626.P8626624648394882593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359433 (n + 1) + 1)

end

end A353626.P8626624648394882593

namespace A353626

/-- `and(1, A359433(n+1)+1)` -/
def P8626624648394882593.Spec : Prop :=
  ∀ n, P8626624648394882593.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P14658800129001227367

`(n+2)%A336651(n+1)`
-/

namespace A353626.P14658800129001227367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A336651 (n + 1))

end

end A353626.P14658800129001227367

namespace A353626

/-- `(n+2)%A336651(n+1)` -/
def P14658800129001227367.Spec : Prop :=
  ∀ n, P14658800129001227367.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P10665096295339364919

`1-floor(sqrt(A078461(n+1)))`
-/

namespace A353626.P10665096295339364919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.sqrt (A078461 (n + 1))

end

end A353626.P10665096295339364919

namespace A353626

/-- `1-floor(sqrt(A078461(n+1)))` -/
def P10665096295339364919.Spec : Prop :=
  ∀ n, P10665096295339364919.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P405992418042678676

`A073089(A336158(n+1))`
-/

namespace A353626.P405992418042678676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073089 (A336158 (n + 1)).toNat

end

end A353626.P405992418042678676

namespace A353626

/-- `A073089(A336158(n+1))` -/
def P405992418042678676.Spec : Prop :=
  ∀ n, P405992418042678676.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P1259688453557046889

`A166486(A392109(n+1)²)`
-/

namespace A353626.P1259688453557046889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 (A392109 (n + 1) ^ 2).toNat

end

end A353626.P1259688453557046889

namespace A353626

/-- `A166486(A392109(n+1)²)` -/
def P1259688453557046889.Spec : Prop :=
  ∀ n, P1259688453557046889.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P2933975899239382378

`A000035(A295295(n+1)+1)`
-/

namespace A353626.P2933975899239382378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A295295 (n + 1) + 1).toNat

end

end A353626.P2933975899239382378

namespace A353626

/-- `A000035(A295295(n+1)+1)` -/
def P2933975899239382378.Spec : Prop :=
  ∀ n, P2933975899239382378.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P7113725638854730900

`1-A003966(A326297(n+1))`
-/

namespace A353626.P7113725638854730900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A003966 (A326297 (n + 1)).toNat

end

end A353626.P7113725638854730900

namespace A353626

/-- `1-A003966(A326297(n+1))` -/
def P7113725638854730900.Spec : Prop :=
  ∀ n, P7113725638854730900.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P16980667859168646872

`A249442(A083730(n+1)-1)`
-/

namespace A353626.P16980667859168646872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249442 (A083730 (n + 1) - 1).toNat

end

end A353626.P16980667859168646872

namespace A353626

/-- `A249442(A083730(n+1)-1)` -/
def P16980667859168646872.Spec : Prop :=
  ∀ n, P16980667859168646872.a n = A353626 (n + 1)

end A353626

/-! ## A353626.P4262606360045971811

`A353569(A000265(2*(n+1)))`
-/

namespace A353626.P4262606360045971811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353569 (A000265 (2 * (n + 1))).toNat

end

end A353626.P4262606360045971811

namespace A353626

/-- `A353569(A000265(2*(n+1)))` -/
def P4262606360045971811.Spec : Prop :=
  ∀ n, P4262606360045971811.a n = A353626 (n + 1)

end A353626

/-!
# A353627: a(n) = 1 if the odd part of n is squarefree, otherwise 0.

The programs for A353627, the canonical program `A353627.P16518077331837195055` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353627 has offset 1).

The definition of A353627 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209635, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353627.P16518077331837195055

`abs(A209635(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353627

/-- `abs(A209635(n+1))` -/
def P16518077331837195055.Spec : Prop :=
  ∀ n, P16518077331837195055.a n = A353627 (n + 1)

theorem P16518077331837195055.correct : P16518077331837195055.Spec := by
  intro n
  simp only [A353627, Nat.add_sub_cancel]

end A353627

/-! ## A353627.P13337412782698092294

`abs(A355689(n+1))`
-/

namespace A353627.P13337412782698092294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355689 (n + 1)|

end

end A353627.P13337412782698092294

namespace A353627

/-- `abs(A355689(n+1))` -/
def P13337412782698092294.Spec : Prop :=
  ∀ n, P13337412782698092294.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P2438492867032980063

`1-A353626(n+1)`
-/

namespace A353627.P2438492867032980063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A353626 (n + 1)

end

end A353627.P2438492867032980063

namespace A353627

/-- `1-A353626(n+1)` -/
def P2438492867032980063.Spec : Prop :=
  ∀ n, P2438492867032980063.a n = A353627 (n + 1)

theorem P2438492867032980063.correct : P2438492867032980063.Spec := by
  intro n
  simp only [A353627, Nat.add_sub_cancel, A353627.P2438492867032980063.a, A353627.P16518077331837195055.a, A209635, A209635.P16478505308631433079.a, A353626, A353626.P12115139591417466746.a, A000265, A000265.P2772582252347773295.a, A008683, A008683.P18254306604665478110.a, A003602, A003602.P7612175048291952394.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353627

/-! ## A353627.P12795624560638408079

`A008966(A000265(n+1))`
-/

namespace A353627.P12795624560638408079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A000265 (n + 1)).toNat

end

end A353627.P12795624560638408079

namespace A353627

/-- `A008966(A000265(n+1))` -/
def P12795624560638408079.Spec : Prop :=
  ∀ n, P12795624560638408079.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P1679482604061327013

`A359156(n+1)+A359158(n+1)`
-/

namespace A353627.P1679482604061327013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359156 (n + 1) + A359158 (n + 1)

end

end A353627.P1679482604061327013

namespace A353627

/-- `A359156(n+1)+A359158(n+1)` -/
def P1679482604061327013.Spec : Prop :=
  ∀ n, P1679482604061327013.a n = A353627 (n + 1)

theorem P1679482604061327013.correct : P1679482604061327013.Spec := by
  intro n
  simp only [A353627, Nat.add_sub_cancel, A353627.P1679482604061327013.a, A353627.P16518077331837195055.a, A209635, A209635.P16478505308631433079.a, A359156, A359156.P3267023376151009926.a, A359158, A359158.P14804396004552753222.a, A000265, A000265.P2772582252347773295.a, A008683, A008683.P18254306604665478110.a, A065043, A065043.P15027714353296076488.a, A003602, A003602.P7612175048291952394.a, A007421, A007421.P2546261311158381976.f1, A007421.P2546261311158381976.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A110963, A110963.P3344771894533151408.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A353627

/-! ## A353627.P9987437766972131387

`floor(1/gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#]))`
-/

namespace A353627.P9987437766972131387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℚ)⌋

end

end A353627.P9987437766972131387

namespace A353627

/-- `floor(1/gcd((n+1)/and(n+1, -(n+1)), ∑{p}[n+1, (n+1)/#]))` -/
def P9987437766972131387.Spec : Prop :=
  ∀ n, P9987437766972131387.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P6263749060470879385

`A359466(4*(n+1))`
-/

namespace A353627.P6263749060470879385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359466 (4 * (n + 1))

end

end A353627.P6263749060470879385

namespace A353627

/-- `A359466(4*(n+1))` -/
def P6263749060470879385.Spec : Prop :=
  ∀ n, P6263749060470879385.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P1989461686101673467

`A327564(n+1)%2`
-/

namespace A353627.P1989461686101673467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327564 (n + 1)) 2

end

end A353627.P1989461686101673467

namespace A353627

/-- `A327564(n+1)%2` -/
def P1989461686101673467.Spec : Prop :=
  ∀ n, P1989461686101673467.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P12385137108527313933

`A348734(n+1)%2`
-/

namespace A353627.P12385137108527313933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348734 (n + 1)) 2

end

end A353627.P12385137108527313933

namespace A353627

/-- `A348734(n+1)%2` -/
def P12385137108527313933.Spec : Prop :=
  ∀ n, P12385137108527313933.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P215903500508652398

`and(1, A101035(n+1))`
-/

namespace A353627.P215903500508652398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A101035 (n + 1))

end

end A353627.P215903500508652398

namespace A353627

/-- `and(1, A101035(n+1))` -/
def P215903500508652398.Spec : Prop :=
  ∀ n, P215903500508652398.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P1376443341559746769

`and(1, A305807(n+1))`
-/

namespace A353627.P1376443341559746769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A305807 (n + 1))

end

end A353627.P1376443341559746769

namespace A353627

/-- `and(1, A305807(n+1))` -/
def P1376443341559746769.Spec : Prop :=
  ∀ n, P1376443341559746769.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P1992311225255463435

`and(1, A326297(n+1))`
-/

namespace A353627.P1992311225255463435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A326297 (n + 1))

end

end A353627.P1992311225255463435

namespace A353627

/-- `and(1, A326297(n+1))` -/
def P1992311225255463435.Spec : Prop :=
  ∀ n, P1992311225255463435.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P14825529301275422497

`and(1, A348049(n+1))`
-/

namespace A353627.P14825529301275422497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A348049 (n + 1))

end

end A353627.P14825529301275422497

namespace A353627

/-- `and(1, A348049(n+1))` -/
def P14825529301275422497.Spec : Prop :=
  ∀ n, P14825529301275422497.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P16167506552880600834

`and(1, A359433(n+1))`
-/

namespace A353627.P16167506552880600834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A359433 (n + 1))

end

end A353627.P16167506552880600834

namespace A353627

/-- `and(1, A359433(n+1))` -/
def P16167506552880600834.Spec : Prop :=
  ∀ n, P16167506552880600834.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P3874996793216740263

`and(1, A360720(n+1))`
-/

namespace A353627.P3874996793216740263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A360720 (n + 1))

end

end A353627.P3874996793216740263

namespace A353627

/-- `and(1, A360720(n+1))` -/
def P3874996793216740263.Spec : Prop :=
  ∀ n, P3874996793216740263.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P10985397020345353162

`and(1, A365404(n+1))`
-/

namespace A353627.P10985397020345353162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A365404 (n + 1))

end

end A353627.P10985397020345353162

namespace A353627

/-- `and(1, A365404(n+1))` -/
def P10985397020345353162.Spec : Prop :=
  ∀ n, P10985397020345353162.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P12334229787948790997

`floor(sqrt(A078461(n+1)))`
-/

namespace A353627.P12334229787948790997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A078461 (n + 1))

end

end A353627.P12334229787948790997

namespace A353627

/-- `floor(sqrt(A078461(n+1)))` -/
def P12334229787948790997.Spec : Prop :=
  ∀ n, P12334229787948790997.a n = A353627 (n + 1)

end A353627

/-! ## A353627.P14835489887598289533

`A078461(2*(n+1))/2`
-/

namespace A353627.P14835489887598289533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078461 (2 * (n + 1)) : ℚ) / 2

end

end A353627.P14835489887598289533

namespace A353627

/-- `A078461(2*(n+1))/2` -/
def P14835489887598289533.Spec : Prop :=
  ∀ n, P14835489887598289533.a n = (A353627 (n + 1) : ℚ)

end A353627

/-! ## A353627.P15247412458870633428

`A008683((n+1)/and(n+1, -(n+1)))²`
-/

namespace A353627.P15247412458870633428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat ^ 2

end

end A353627.P15247412458870633428

namespace A353627

/-- `A008683((n+1)/and(n+1, -(n+1)))²` -/
def P15247412458870633428.Spec : Prop :=
  ∀ n, P15247412458870633428.a n = A353627 (n + 1)

end A353627

/-!
# A353628: Parity of A001001(n), where A001001(n) = Sum_{d|n} d*sigma(d).

The programs for A353628, the canonical program `A353628.P1094902956190282200` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353628 has offset 1).

The definition of A353628 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353628.P1094902956190282200

`A001001(n+1)%2`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A353628

/-- `A001001(n+1)%2` -/
def P1094902956190282200.Spec : Prop :=
  ∀ n, P1094902956190282200.a n = A353628 (n + 1)

theorem P1094902956190282200.correct : P1094902956190282200.Spec := by
  intro n
  simp only [A353628, Nat.add_sub_cancel]

end A353628

/-! ## A353628.P9970155103931136869

`A027844(n+1)%2`
-/

namespace A353628.P9970155103931136869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027844 (n + 1)) 2

end

end A353628.P9970155103931136869

namespace A353628

/-- `A027844(n+1)%2` -/
def P9970155103931136869.Spec : Prop :=
  ∀ n, P9970155103931136869.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P2145976060162807378

`A027847(n+1)%2`
-/

namespace A353628.P2145976060162807378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027847 (n + 1)) 2

end

end A353628.P2145976060162807378

namespace A353628

/-- `A027847(n+1)%2` -/
def P2145976060162807378.Spec : Prop :=
  ∀ n, P2145976060162807378.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P5167154769143991758

`A027848(n+1)%2`
-/

namespace A353628.P5167154769143991758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027848 (n + 1)) 2

end

end A353628.P5167154769143991758

namespace A353628

/-- `A027848(n+1)%2` -/
def P5167154769143991758.Spec : Prop :=
  ∀ n, P5167154769143991758.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P18308430982691119938

`A035316(n+1)%2`
-/

namespace A353628.P18308430982691119938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035316 (n + 1)) 2

end

end A353628.P18308430982691119938

namespace A353628

/-- `A035316(n+1)%2` -/
def P18308430982691119938.Spec : Prop :=
  ∀ n, P18308430982691119938.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P6303000324159100140

`A060640(n+1)%2`
-/

namespace A353628.P6303000324159100140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060640 (n + 1)) 2

end

end A353628.P6303000324159100140

namespace A353628

/-- `A060640(n+1)%2` -/
def P6303000324159100140.Spec : Prop :=
  ∀ n, P6303000324159100140.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P3255619315521651942

`A065745(n+1)%2`
-/

namespace A353628.P3255619315521651942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065745 (n + 1)) 2

end

end A353628.P3255619315521651942

namespace A353628

/-- `A065745(n+1)%2` -/
def P3255619315521651942.Spec : Prop :=
  ∀ n, P3255619315521651942.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P7249895270269074076

`A068984(n+1)%2`
-/

namespace A353628.P7249895270269074076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A068984 (n + 1)) 2

end

end A353628.P7249895270269074076

namespace A353628

/-- `A068984(n+1)%2` -/
def P7249895270269074076.Spec : Prop :=
  ∀ n, P7249895270269074076.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P632314071356249882

`A069290(n+1)%2`
-/

namespace A353628.P632314071356249882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069290 (n + 1)) 2

end

end A353628.P632314071356249882

namespace A353628

/-- `A069290(n+1)%2` -/
def P632314071356249882.Spec : Prop :=
  ∀ n, P632314071356249882.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P16221066722374138773

`A109386(n+1)%2`
-/

namespace A353628.P16221066722374138773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109386 (n + 1)) 2

end

end A353628.P16221066722374138773

namespace A353628

/-- `A109386(n+1)%2` -/
def P16221066722374138773.Spec : Prop :=
  ∀ n, P16221066722374138773.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P17406478908713646121

`A145396(n+1)%2`
-/

namespace A353628.P17406478908713646121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145396 (n + 1)) 2

end

end A353628.P17406478908713646121

namespace A353628

/-- `A145396(n+1)%2` -/
def P17406478908713646121.Spec : Prop :=
  ∀ n, P17406478908713646121.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P17435270919314308320

`A145398(n+1)%2`
-/

namespace A353628.P17435270919314308320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145398 (n + 1)) 2

end

end A353628.P17435270919314308320

namespace A353628

/-- `A145398(n+1)%2` -/
def P17435270919314308320.Spec : Prop :=
  ∀ n, P17435270919314308320.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P2206096385149863156

`A145399(n+1)%2`
-/

namespace A353628.P2206096385149863156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145399 (n + 1)) 2

end

end A353628.P2206096385149863156

namespace A353628

/-- `A145399(n+1)%2` -/
def P2206096385149863156.Spec : Prop :=
  ∀ n, P2206096385149863156.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P8804743241376577251

`A145444(n+1)%2`
-/

namespace A353628.P8804743241376577251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145444 (n + 1)) 2

end

end A353628.P8804743241376577251

namespace A353628

/-- `A145444(n+1)%2` -/
def P8804743241376577251.Spec : Prop :=
  ∀ n, P8804743241376577251.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P10013158187718967977

`A145511(n+1)%2`
-/

namespace A353628.P10013158187718967977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145511 (n + 1)) 2

end

end A353628.P10013158187718967977

namespace A353628

/-- `A145511(n+1)%2` -/
def P10013158187718967977.Spec : Prop :=
  ∀ n, P10013158187718967977.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P4241416857423241352

`A263829(n+1)%2`
-/

namespace A353628.P4241416857423241352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263829 (n + 1)) 2

end

end A353628.P4241416857423241352

namespace A353628

/-- `A263829(n+1)%2` -/
def P4241416857423241352.Spec : Prop :=
  ∀ n, P4241416857423241352.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P8823438847669509623

`A298735(n+1)%2`
-/

namespace A353628.P8823438847669509623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298735 (n + 1)) 2

end

end A353628.P8823438847669509623

namespace A353628

/-- `A298735(n+1)%2` -/
def P8823438847669509623.Spec : Prop :=
  ∀ n, P8823438847669509623.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P163625205361050605

`A327122(n+1)%2`
-/

namespace A353628.P163625205361050605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327122 (n + 1)) 2

end

end A353628.P163625205361050605

namespace A353628

/-- `A327122(n+1)%2` -/
def P163625205361050605.Spec : Prop :=
  ∀ n, P163625205361050605.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P6594482326757380202

`A351316(n+1)%2`
-/

namespace A353628.P6594482326757380202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351316 (n + 1)) 2

end

end A353628.P6594482326757380202

namespace A353628

/-- `A351316(n+1)%2` -/
def P6594482326757380202.Spec : Prop :=
  ∀ n, P6594482326757380202.a n = A353628 (n + 1)

end A353628

/-! ## A353628.P2622321922648514121

`and(1, A288420(n+1))`
-/

namespace A353628.P2622321922648514121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A288420 (n + 1))

end

end A353628.P2622321922648514121

namespace A353628

/-- `and(1, A288420(n+1))` -/
def P2622321922648514121.Spec : Prop :=
  ∀ n, P2622321922648514121.a n = A353628 (n + 1)

end A353628

/-!
# A353629: a(n) = 1 if n is a product of an even number of distinct primes, otherwise 0.

The programs for A353629, the canonical program `A353629.P4050321300049934292` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353629 has offset 1).

The definition of A353629 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A252233, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353629.P4050321300049934292

`A008966(n+1)-A252233(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A353629

/-- `A008966(n+1)-A252233(n+1)` -/
def P4050321300049934292.Spec : Prop :=
  ∀ n, P4050321300049934292.a n = A353629 (n + 1)

theorem P4050321300049934292.correct : P4050321300049934292.Spec := by
  intro n
  simp only [A353629, Nat.add_sub_cancel]

end A353629

/-! ## A353629.P7137135595303974465

`A008966(n+1)*A065043(n+1)`
-/

namespace A353629.P7137135595303974465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A065043 (n + 1)

end

end A353629.P7137135595303974465

namespace A353629

/-- `A008966(n+1)*A065043(n+1)` -/
def P7137135595303974465.Spec : Prop :=
  ∀ n, P7137135595303974465.a n = A353629 (n + 1)

end A353629

/-! ## A353629.P15787139634723229363

`C(2, n+1-∏{p}[n+1, -#])`
-/

namespace A353629.P15787139634723229363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 ((n + 1 : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), (-(p : ℤ))).toNat

end

end A353629.P15787139634723229363

namespace A353629

/-- `C(2, n+1-∏{p}[n+1, -#])` -/
def P15787139634723229363.Spec : Prop :=
  ∀ n, (P15787139634723229363.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P1370874622205179639

`val(∏{e}[n+1, -#]+n+1, n+2)`
-/

namespace A353629.P1370874622205179639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) + (n + 1 : ℤ)).toNat (n + 2)

end

end A353629.P1370874622205179639

namespace A353629

/-- `val(∏{e}[n+1, -#]+n+1, n+2)` -/
def P1370874622205179639.Spec : Prop :=
  ∀ n, (P1370874622205179639.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P14855389918824548370

`A378531(n+1)%2`
-/

namespace A353629.P14855389918824548370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378531 (n + 1)) 2

end

end A353629.P14855389918824548370

namespace A353629

/-- `A378531(n+1)%2` -/
def P14855389918824548370.Spec : Prop :=
  ∀ n, P14855389918824548370.a n = A353629 (n + 1)

end A353629

/-! ## A353629.P7859814474392128519

`4%A080847(n+1)`
-/

namespace A353629.P7859814474392128519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 4 (A080847 (n + 1))

end

end A353629.P7859814474392128519

namespace A353629

/-- `4%A080847(n+1)` -/
def P7859814474392128519.Spec : Prop :=
  ∀ n, P7859814474392128519.a n = A353629 (n + 1)

end A353629

/-! ## A353629.P757516600502408534

`C(A007423(n+1), 2)`
-/

namespace A353629.P757516600502408534
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007423 (n + 1)).toNat 2

end

end A353629.P757516600502408534

namespace A353629

/-- `C(A007423(n+1), 2)` -/
def P757516600502408534.Spec : Prop :=
  ∀ n, (P757516600502408534.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P11919641347032370940

`val(A231821(n+1), 4)`
-/

namespace A353629.P11919641347032370940
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A231821 (n + 1)).toNat 4

end

end A353629.P11919641347032370940

namespace A353629

/-- `val(A231821(n+1), 4)` -/
def P11919641347032370940.Spec : Prop :=
  ∀ n, (P11919641347032370940.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P11809147926452170580

`val(A228409(n+1), 9)`
-/

namespace A353629.P11809147926452170580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A228409 (n + 1)).toNat 9

end

end A353629.P11809147926452170580

namespace A353629

/-- `val(A228409(n+1), 9)` -/
def P11809147926452170580.Spec : Prop :=
  ∀ n, (P11809147926452170580.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P5313452132839054385

`ceil(sin(A008683(n+1)))`
-/

namespace A353629.P5313452132839054385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (A008683 (n + 1) : ℝ)⌉

end

end A353629.P5313452132839054385

namespace A353629

/-- `ceil(sin(A008683(n+1)))` -/
def P5313452132839054385.Spec : Prop :=
  ∀ n, P5313452132839054385.a n = A353629 (n + 1)

end A353629

/-! ## A353629.P864425883828686908

`(A010555(n+1)+1)/2`
-/

namespace A353629.P864425883828686908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010555 (n + 1) + 1 : ℚ) / 2

end

end A353629.P864425883828686908

namespace A353629

/-- `(A010555(n+1)+1)/2` -/
def P864425883828686908.Spec : Prop :=
  ∀ n, P864425883828686908.a n = (A353629 (n + 1) : ℚ)

end A353629

/-! ## A353629.P2576318599377969166

`val(A076369(n+1), n+2)`
-/

namespace A353629.P2576318599377969166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A076369 (n + 1)).toNat (n + 2)

end

end A353629.P2576318599377969166

namespace A353629

/-- `val(A076369(n+1), n+2)` -/
def P2576318599377969166.Spec : Prop :=
  ∀ n, (P2576318599377969166.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P3911883752713140602

`C(A080304(n+1), n+1)`
-/

namespace A353629.P3911883752713140602
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A080304 (n + 1)).toNat (n + 1)

end

end A353629.P3911883752713140602

namespace A353629

/-- `C(A080304(n+1), n+1)` -/
def P3911883752713140602.Spec : Prop :=
  ∀ n, (P3911883752713140602.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P2253243397348944488

`C(A140668(n+1), n+2)`
-/

namespace A353629.P2253243397348944488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A140668 (n + 1)).toNat (n + 2)

end

end A353629.P2253243397348944488

namespace A353629

/-- `C(A140668(n+1), n+2)` -/
def P2253243397348944488.Spec : Prop :=
  ∀ n, (P2253243397348944488.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P3449867618020465760

`floor((A262804(n+1)/2)²)`
-/

namespace A353629.P3449867618020465760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A262804 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A353629.P3449867618020465760

namespace A353629

/-- `floor((A262804(n+1)/2)²)` -/
def P3449867618020465760.Spec : Prop :=
  ∀ n, P3449867618020465760.a n = A353629 (n + 1)

end A353629

/-! ## A353629.P14624855972947488737

`floor(exp(A140664(n+1)-1))`
-/

namespace A353629.P14624855972947488737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (A140664 (n + 1) - 1 : ℝ)⌋

end

end A353629.P14624855972947488737

namespace A353629

/-- `floor(exp(A140664(n+1)-1))` -/
def P14624855972947488737.Spec : Prop :=
  ∀ n, P14624855972947488737.a n = A353629 (n + 1)

end A353629

/-! ## A353629.P8586527490292110094

`ceil(atan(A008683(C(n+1, n))))`
-/

namespace A353629.P8586527490292110094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (A008683 (Nat.choose (n + 1) n) : ℝ)⌉

end

end A353629.P8586527490292110094

namespace A353629

/-- `ceil(atan(A008683(C(n+1, n))))` -/
def P8586527490292110094.Spec : Prop :=
  ∀ n, P8586527490292110094.a n = A353629 (n + 1)

end A353629

/-! ## A353629.P1679429025377028518

`char[(n+1)*A008683(n+2)]`
-/

namespace A353629.P1679429025377028518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008683 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353629.P1679429025377028518

namespace A353629

/-- `char[(n+1)*A008683(n+2)]` -/
def P1679429025377028518.Spec : Prop :=
  ∀ n, (P1679429025377028518.a n : ℤ) = A353629 (n + 1)

end A353629

/-! ## A353629.P15578344727224065434

`A002033(n)%A007421(n+1)`
-/

namespace A353629.P15578344727224065434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 n) (A007421 (n + 1))

end

end A353629.P15578344727224065434

namespace A353629

/-- `A002033(n)%A007421(n+1)` -/
def P15578344727224065434.Spec : Prop :=
  ∀ n, P15578344727224065434.a n = A353629 (n + 1)

end A353629

/-! ## A353629.P12839593735600288963

`and(A002033(n), A065043(n+1))`
-/

namespace A353629.P12839593735600288963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002033 n) (A065043 (n + 1))

end

end A353629.P12839593735600288963

namespace A353629

/-- `and(A002033(n), A065043(n+1))` -/
def P12839593735600288963.Spec : Prop :=
  ∀ n, P12839593735600288963.a n = A353629 (n + 1)

end A353629

/-!
# A353630: Arithmetic derivative of primorial base exp-function, reduced modulo 4.

The programs for A353630, there is no canonical definition to state claims against.
-/

/-! ## A353630.P10838099038594588919

`A010873(A328572(n)*A353640(n))`
-/

namespace A353630.P10838099038594588919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A328572 n * A353640 n).toNat

end

end A353630.P10838099038594588919

/-!
# A353631: Arithmetic derivative of primorial base exp-function, reduced modulo 4, computed for odd numbers.

The programs for A353631, there is no canonical definition to state claims against.
-/

/-! ## A353631.P16052917783383333602

`A353630(2*n+1)`
-/

namespace A353631.P16052917783383333602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353630 (2 * n + 1)

end

end A353631.P16052917783383333602

/-!
# A353632: Even bisection of A353630: Arithmetic derivative of primorial base exp-function, reduced modulo 4, computed for even numbers.

The programs for A353632, there is no canonical definition to state claims against.
-/

/-! ## A353632.P1942094796537579057

`A353630(2*n)`
-/

namespace A353632.P1942094796537579057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353630 (2 * n)

end

end A353632.P1942094796537579057

/-!
# A353633: a(n) = 1 if A351546(n) is a unitary divisor of n, otherwise 0. Here A351546(n) is the largest unitary divisor of sigma(n) coprime with A003961(n).

The programs for A353633, there is no canonical definition to state claims against.
-/

/-! ## A353633.P7294567492441806440

`char[A351551(n+1)-1]`
-/

namespace A353633.P7294567492441806440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351551 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353633.P7294567492441806440

/-! ## A353633.P11509851665385710664

`char[Δ[A351551(A051340(n))]]`
-/

namespace A353633.P11509851665385710664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351551 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353633.P11509851665385710664

/-! ## A353633.P3372969260953545772

`char[Δ[A351551(A152271(n))]]`
-/

namespace A353633.P3372969260953545772
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351551 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353633.P3372969260953545772

/-! ## A353633.P18291315788925085349

`char[Δ[A351551(A193592(n))]]`
-/

namespace A353633.P18291315788925085349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351551 (A193592 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353633.P18291315788925085349

/-! ## A353633.P10750497565818504994

`char[Δ[A351551(A193739(n))]]`
-/

namespace A353633.P10750497565818504994
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351551 (A193739 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353633.P10750497565818504994

/-! ## A353633.P10412472652947927520

`char[Δ[A351551(A010766(n+1))]]`
-/

namespace A353633.P10412472652947927520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351551 (A010766 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353633.P10412472652947927520

/-! ## A353633.P5349379893583394135

`char[A023443(A351551(n+1))]`
-/

namespace A353633.P5349379893583394135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A351551 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353633.P5349379893583394135

/-! ## A353633.P9276511740654495665

`A010052(A016897(n)*A035936(n))`
-/

namespace A353633.P9276511740654495665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A016897 n * A035936 n).toNat

end

end A353633.P9276511740654495665

/-! ## A353633.P3662334107419224862

`∏{e}[A096338(n), and(#, A096338(n))]`
-/

namespace A353633.P3662334107419224862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Int.land (Nat.factorization (f1 n).natAbs p : ℤ) (A096338 n)

end

end A353633.P3662334107419224862

/-! ## A353633.P8777796002407146839

`char[A008346(n)]*A098800(n)`
-/

namespace A353633.P8777796002407146839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A098800 n

end

end A353633.P8777796002407146839

/-! ## A353633.P2062841708869719748

`and(Δ[A253180(n)], A141727(n))`
-/

namespace A353633.P2062841708869719748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A141727 n)

end

end A353633.P2062841708869719748

/-! ## A353633.P1413273294702920231

`and(char[A007489(n)], A171810(n))`
-/

namespace A353633.P1413273294702920231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A171810 n)

end

end A353633.P1413273294702920231

/-! ## A353633.P4024578610375089966

`A118626(n+1)*A205988(n)`
-/

namespace A353633.P4024578610375089966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118626 (n + 1) * A205988 n

end

end A353633.P4024578610375089966

/-! ## A353633.P4744819827842263947

`and(A133388(A052330(n)), A136442(n))`
-/

namespace A353633.P4744819827842263947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A133388 (A052330 n).toNat) (A136442 n)

end

end A353633.P4744819827842263947

/-! ## A353633.P6160951020863240831

`A205988(A082216(n))`
-/

namespace A353633.P6160951020863240831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205988 (A082216 n).toNat

end

end A353633.P6160951020863240831

/-! ## A353633.P16344446976127766471

`A151666(A129194(n))`
-/

namespace A353633.P16344446976127766471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A129194 n).toNat

end

end A353633.P16344446976127766471

/-! ## A353633.P1574346102720990615

`A151666(A132411(n))`
-/

namespace A353633.P1574346102720990615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A132411 n).toNat

end

end A353633.P1574346102720990615

/-! ## A353633.P1250115945622206108

`A151666(A074377(n))`
-/

namespace A353633.P1250115945622206108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151666 (A074377 n).toNat

end

end A353633.P1250115945622206108

/-!
# A353635: Numbers k such that phi(k) = phi(sigma(k)) and A003958(k) = A003958(sigma(k)).

The programs for A353635, there is no canonical definition to state claims against.
-/

/-! ## A353635.P16103691189845880155

`A078689(A005383(n+2))`
-/

namespace A353635.P16103691189845880155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 (A005383 (n + 2)).toNat

end

end A353635.P16103691189845880155

/-! ## A353635.P14873476925320661415

`record[A078689(A023583(n+1))]`
-/

namespace A353635.P14873476925320661415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 (A023583 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353635.P14873476925320661415

/-! ## A353635.P16901412457165395413

`record[A078689(A023585(n+1))]`
-/

namespace A353635.P16901412457165395413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 (A023585 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353635.P16901412457165395413

/-! ## A353635.P5076297983593328700

`record[A078689(A023587(n+1))]`
-/

namespace A353635.P5076297983593328700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 (A023587 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353635.P5076297983593328700

/-! ## A353635.P3985180057893267846

`record[A078689(A265396(n+1))]`
-/

namespace A353635.P3985180057893267846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078689 (A265396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353635.P3985180057893267846

/-! ## A353635.P7288734521353230261

`filter[A006872(n+1), A380477(#)]`
-/

namespace A353635.P7288734521353230261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380477 (f1 j).toNat = 1) n)

end

end A353635.P7288734521353230261

/-! ## A353635.P15456477210727059678

`filter[A065301(n+1), A353637(#)]`
-/

namespace A353635.P15456477210727059678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353637 (f1 j).toNat = 1) n)

end

end A353635.P15456477210727059678

/-! ## A353635.P10811039708866610447

`filter[A065302(n+1), A353637(#)]`
-/

namespace A353635.P10811039708866610447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353637 (f1 j).toNat = 1) n)

end

end A353635.P10811039708866610447

/-! ## A353635.P7332724213573947408

`filter[A065302(n+1), A353682(#)]`
-/

namespace A353635.P7332724213573947408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A353635.P7332724213573947408

/-! ## A353635.P18229873787807446946

`filter[A088686(n+1), A353637(#)]`
-/

namespace A353635.P18229873787807446946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353637 (f1 j).toNat = 1) n)

end

end A353635.P18229873787807446946

/-!
# A353636: Difference between phi(sigma(n)) and phi(n).

The programs for A353636, the canonical program `A353636.P9241397115263292708` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353636 has offset 1).

The definition of A353636 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353636.P9241397115263292708

`A062401(n+1)-A000010(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353636

/-- `A062401(n+1)-A000010(n+1)` -/
def P9241397115263292708.Spec : Prop :=
  ∀ n, P9241397115263292708.a n = A353636 (n + 1)

theorem P9241397115263292708.correct : P9241397115263292708.Spec := by
  intro n
  simp only [A353636, Nat.add_sub_cancel]

end A353636

/-! ## A353636.P3677203443470537928

`A000010(A000203(n+1))-A000010(n+1)`
-/

namespace A353636.P3677203443470537928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat - A000010 (n + 1)

end

end A353636.P3677203443470537928

namespace A353636

/-- `A000010(A000203(n+1))-A000010(n+1)` -/
def P3677203443470537928.Spec : Prop :=
  ∀ n, P3677203443470537928.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P8828342797644632703

`A062401(n+1)-Δ[A002088(n)]`
-/

namespace A353636.P8828342797644632703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - (f1 (n + 1) - f1 n)

end

end A353636.P8828342797644632703

namespace A353636

/-- `A062401(n+1)-Δ[A002088(n)]` -/
def P8828342797644632703.Spec : Prop :=
  ∀ n, P8828342797644632703.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P1693140176831526132

`A062401(n+1)-Δ[A005728(n)]`
-/

namespace A353636.P1693140176831526132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - (f1 (n + 1) - f1 n)

end

end A353636.P1693140176831526132

namespace A353636

/-- `A062401(n+1)-Δ[A005728(n)]` -/
def P1693140176831526132.Spec : Prop :=
  ∀ n, P1693140176831526132.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P16962669735442526983

`A051953(n+1)-A295301(n+1)`
-/

namespace A353636.P16962669735442526983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A295301 (n + 1)

end

end A353636.P16962669735442526983

namespace A353636

/-- `A051953(n+1)-A295301(n+1)` -/
def P16962669735442526983.Spec : Prop :=
  ∀ n, P16962669735442526983.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P18388227748904158893

`A062401(n+1)-sqrt(A127473(n+1))`
-/

namespace A353636.P18388227748904158893
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℝ) - Real.sqrt (A127473 (n + 1) : ℝ)

end

end A353636.P18388227748904158893

namespace A353636

/-- `A062401(n+1)-sqrt(A127473(n+1))` -/
def P18388227748904158893.Spec : Prop :=
  ∀ n, P18388227748904158893.a n = (A353636 (n + 1) : ℝ)

end A353636

/-! ## A353636.P16134714806329600536

`A062401(n+1)+1-A039649(n+1)`
-/

namespace A353636.P16134714806329600536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) + (1 - A039649 (n + 1))

end

end A353636.P16134714806329600536

namespace A353636

/-- `A062401(n+1)+1-A039649(n+1)` -/
def P16134714806329600536.Spec : Prop :=
  ∀ n, P16134714806329600536.a n = A353636 (n + 1)

theorem P16134714806329600536.correct : P16134714806329600536.Spec := by
  intro n
  simp only [A353636, Nat.add_sub_cancel, A353636.P16134714806329600536.a, A353636.P9241397115263292708.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A062401, A062401.P14719521271091436929.f1, A062401.P14719521271091436929.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353636

/-! ## A353636.P2086592667635766458

`A062401(n+1)-(A109606(n+1)+1)`
-/

namespace A353636.P2086592667635766458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - (A109606 (n + 1) + 1)

end

end A353636.P2086592667635766458

namespace A353636

/-- `A062401(n+1)-(A109606(n+1)+1)` -/
def P2086592667635766458.Spec : Prop :=
  ∀ n, P2086592667635766458.a n = A353636 (n + 1)

theorem P2086592667635766458.correct : P2086592667635766458.Spec := by
  intro n
  simp only [A353636, Nat.add_sub_cancel, A353636.P2086592667635766458.a, A353636.P9241397115263292708.a, A000010, A000010.P4673923239450215316.a, A062401, A062401.P14719521271091436929.f1, A062401.P14719521271091436929.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353636

/-! ## A353636.P1235096897472907474

`A000010(∑{d}[n+1, #])-A000010(n+1)`
-/

namespace A353636.P1235096897472907474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ d ∈ Nat.divisors (f1 n), d) - A000010 (n + 1)

end

end A353636.P1235096897472907474

namespace A353636

/-- `A000010(∑{d}[n+1, #])-A000010(n+1)` -/
def P1235096897472907474.Spec : Prop :=
  ∀ n, P1235096897472907474.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P107985953832758166

`A000010(A000203(n+1))-Δ[A002088(n)]`
-/

namespace A353636.P107985953832758166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A353636.P107985953832758166

namespace A353636

/-- `A000010(A000203(n+1))-Δ[A002088(n)]` -/
def P107985953832758166.Spec : Prop :=
  ∀ n, P107985953832758166.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P6782051329143483274

`A000010(A000203(n+1))-Δ[A005728(n)]`
-/

namespace A353636.P6782051329143483274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A353636.P6782051329143483274

namespace A353636

/-- `A000010(A000203(n+1))-Δ[A005728(n)]` -/
def P6782051329143483274.Spec : Prop :=
  ∀ n, P6782051329143483274.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P14647576735359031136

`A000010(Δ[A160664(n)])-A000010(n+1)`
-/

namespace A353636.P14647576735359031136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat - A000010 (n + 1)

end

end A353636.P14647576735359031136

namespace A353636

/-- `A000010(Δ[A160664(n)])-A000010(n+1)` -/
def P14647576735359031136.Spec : Prop :=
  ∀ n, P14647576735359031136.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P17074857595815670726

`A000010(abs(A143348(n+1)))-A000010(n+1)`
-/

namespace A353636.P17074857595815670726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 |A143348 (n + 1)|.toNat - A000010 (n + 1)

end

end A353636.P17074857595815670726

namespace A353636

/-- `A000010(abs(A143348(n+1)))-A000010(n+1)` -/
def P17074857595815670726.Spec : Prop :=
  ∀ n, P17074857595815670726.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P7193569134171075940

`A000010(sqrt(A072861(n+1)))-A000010(n+1)`
-/

namespace A353636.P7193569134171075940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat - A000010 (n + 1)

end

end A353636.P7193569134171075940

namespace A353636

/-- `A000010(sqrt(A072861(n+1)))-A000010(n+1)` -/
def P7193569134171075940.Spec : Prop :=
  ∀ n, P7193569134171075940.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P8678571522425006143

`A000010(∑[A340793(n+1)])-A000010(n+1)`
-/

namespace A353636.P8678571522425006143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000010 (n + 1)

end

end A353636.P8678571522425006143

namespace A353636

/-- `A000010(∑[A340793(n+1)])-A000010(n+1)` -/
def P8678571522425006143.Spec : Prop :=
  ∀ n, P8678571522425006143.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P16636571426604704772

`A000010(A088580(n+1)-1)-A000010(n+1)`
-/

namespace A353636.P16636571426604704772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A088580 (n + 1) - 1).toNat - A000010 (n + 1)

end

end A353636.P16636571426604704772

namespace A353636

/-- `A000010(A088580(n+1)-1)-A000010(n+1)` -/
def P16636571426604704772.Spec : Prop :=
  ∀ n, P16636571426604704772.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P8142811192583673609

`A000010(A245092(2*n+1))-A000010(n+1)`
-/

namespace A353636.P8142811192583673609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A245092 (2 * n + 1)).toNat - A000010 (n + 1)

end

end A353636.P8142811192583673609

namespace A353636

/-- `A000010(A245092(2*n+1))-A000010(n+1)` -/
def P8142811192583673609.Spec : Prop :=
  ∀ n, P8142811192583673609.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P889297264461525470

`A000010(A074400(n+1)/2)-A000010(n+1)`
-/

namespace A353636.P889297264461525470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat - A000010 (n + 1)

end

end A353636.P889297264461525470

namespace A353636

/-- `A000010(A074400(n+1)/2)-A000010(n+1)` -/
def P889297264461525470.Spec : Prop :=
  ∀ n, P889297264461525470.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P10689649264692711263

`A000010(n+1)-(A295301(n+1)+A083254(n+1))`
-/

namespace A353636.P10689649264692711263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A295301 (n + 1) + A083254 (n + 1))

end

end A353636.P10689649264692711263

namespace A353636

/-- `A000010(n+1)-(A295301(n+1)+A083254(n+1))` -/
def P10689649264692711263.Spec : Prop :=
  ∀ n, P10689649264692711263.a n = A353636 (n + 1)

end A353636

/-! ## A353636.P16980478751173426251

`A295310(n+1)*A295312(n+1)-A000010(n+1)`
-/

namespace A353636.P16980478751173426251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295310 (n + 1) * A295312 (n + 1) - A000010 (n + 1)

end

end A353636.P16980478751173426251

namespace A353636

/-- `A295310(n+1)*A295312(n+1)-A000010(n+1)` -/
def P16980478751173426251.Spec : Prop :=
  ∀ n, P16980478751173426251.a n = A353636 (n + 1)

end A353636

/-!
# A353637: a(n) = 1 if phi(sigma(n)) is equal to phi(n), otherwise 0.

The programs for A353637, the canonical program `A353637.P5440180522401724762` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353637 has offset 1).

The definition of A353637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353637.P1904957084865805237

`A353682(n+1)-A353681(n+1)`
-/

namespace A353637.P1904957084865805237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 1) - A353681 (n + 1)

end

end A353637.P1904957084865805237

namespace A353637

/-- `A353682(n+1)-A353681(n+1)` -/
def P1904957084865805237.Spec : Prop :=
  ∀ n, P1904957084865805237.a n = A353637 (n + 1)

theorem P1904957084865805237.correct : P1904957084865805237.Spec := by
  intro n
  simp only [A353637, Nat.add_sub_cancel, A353637.P1904957084865805237.a, A353637.P5440180522401724762.f1, A353637.P5440180522401724762.a, A001221, A001221.P10258181745752134128.a, A353636, A353636.P9241397115263292708.a, A353681, A353681.P403205491971656766.a, A353682, A353682.P1510457161453438165.a, A000010, A000010.P4673923239450215316.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A008000, A008000.P14598701383781270205.a, A059841, A059841.P2666504972441551157.a, A062401, A062401.P14719521271091436929.f1, A062401.P14719521271091436929.a, A003557, A003557.P6364735403900941810.a, A005893, A005893.P12560717778126936227.a, A008130, A008130.P6850248859462288160.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353637

/-! ## A353637.P15780473214013960131

`char[A006872(n+1)-1]`
-/

namespace A353637.P15780473214013960131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353637.P15780473214013960131

namespace A353637

/-- `char[A006872(n+1)-1]` -/
def P15780473214013960131.Spec : Prop :=
  ∀ n, (P15780473214013960131.a n : ℤ) = A353637 (n + 1)

end A353637

/-! ## A353637.P5440180522401724762

`∏{d}[A353636(n+1), A001221(#)]`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353637

/-- `∏{d}[A353636(n+1), A001221(#)]` -/
def P5440180522401724762.Spec : Prop :=
  ∀ n, P5440180522401724762.a n = A353637 (n + 1)

theorem P5440180522401724762.correct : P5440180522401724762.Spec := by
  intro n
  simp only [A353637, Nat.add_sub_cancel]

end A353637

/-! ## A353637.P2265699324834804553

`∏{d}[A353636(n+1), A307597(#)]`
-/

namespace A353637.P2265699324834804553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A307597 d

end

end A353637.P2265699324834804553

namespace A353637

/-- `∏{d}[A353636(n+1), A307597(#)]` -/
def P2265699324834804553.Spec : Prop :=
  ∀ n, P2265699324834804553.a n = A353637 (n + 1)

end A353637

/-! ## A353637.P14683648003525771413

`A000038(n)^abs(A353636(n+1))`
-/

namespace A353637.P14683648003525771413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (|A353636 (n + 1)| : ℤ)

end

end A353637.P14683648003525771413

namespace A353637

/-- `A000038(n)^abs(A353636(n+1))` -/
def P14683648003525771413.Spec : Prop :=
  ∀ n, P14683648003525771413.a n = (A353637 (n + 1) : ℚ)

end A353637

/-! ## A353637.P16471792847620672119

`A353633(or(A353644(n+1), A353646(n+1)))`
-/

namespace A353637.P16471792847620672119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353633 (Int.lor (A353644 (n + 1)) (A353646 (n + 1))).toNat

end

end A353637.P16471792847620672119

namespace A353637

/-- `A353633(or(A353644(n+1), A353646(n+1)))` -/
def P16471792847620672119.Spec : Prop :=
  ∀ n, P16471792847620672119.a n = A353637 (n + 1)

end A353637

/-! ## A353637.P16513359494000103558

`A000007(abs(A353636(n+1)))`
-/

namespace A353637.P16513359494000103558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 |A353636 (n + 1)|.toNat

end

end A353637.P16513359494000103558

namespace A353637

/-- `A000007(abs(A353636(n+1)))` -/
def P16513359494000103558.Spec : Prop :=
  ∀ n, P16513359494000103558.a n = A353637 (n + 1)

end A353637

/-! ## A353637.P17776758156702080648

`A000007(lcm(2, A353636(n+1)))`
-/

namespace A353637.P17776758156702080648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.lcm 2 (A353636 (n + 1)))

end

end A353637.P17776758156702080648

namespace A353637

/-- `A000007(lcm(2, A353636(n+1)))` -/
def P17776758156702080648.Spec : Prop :=
  ∀ n, P17776758156702080648.a n = A353637 (n + 1)

end A353637

/-! ## A353637.P3200974190468842209

`A000038(abs(A353636(n+1)))/2`
-/

namespace A353637.P3200974190468842209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 |A353636 (n + 1)|.toNat : ℚ) / 2

end

end A353637.P3200974190468842209

namespace A353637

/-- `A000038(abs(A353636(n+1)))/2` -/
def P3200974190468842209.Spec : Prop :=
  ∀ n, P3200974190468842209.a n = (A353637 (n + 1) : ℚ)

end A353637

/-! ## A353637.P2935660337659150246

`∏{d}[A353636(n+1), A353636(#)]²`
-/

namespace A353637.P2935660337659150246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, A353636 d) ^ 2

end

end A353637.P2935660337659150246

namespace A353637

/-- `∏{d}[A353636(n+1), A353636(#)]²` -/
def P2935660337659150246.Spec : Prop :=
  ∀ n, P2935660337659150246.a n = A353637 (n + 1)

end A353637

/-! ## A353637.P15586032677855606196

`val(A039649(∑{d}[n+1, #]), A039649(n+1))`
-/

namespace A353637.P15586032677855606196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039649 (∑ d ∈ Nat.divisors (f1 n), d)).toNat (A039649 (n + 1)).toNat

end

end A353637.P15586032677855606196

namespace A353637

/-- `val(A039649(∑{d}[n+1, #]), A039649(n+1))` -/
def P15586032677855606196.Spec : Prop :=
  ∀ n, (P15586032677855606196.a n : ℤ) = A353637 (n + 1)

end A353637

/-! ## A353637.P7408933303604779379

`val(A039649(A000203(n+1)), A039649(n+1))`
-/

namespace A353637.P7408933303604779379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039649 (A000203 (n + 1)).toNat).toNat (A039649 (n + 1)).toNat

end

end A353637.P7408933303604779379

namespace A353637

/-- `val(A039649(A000203(n+1)), A039649(n+1))` -/
def P7408933303604779379.Spec : Prop :=
  ∀ n, (P7408933303604779379.a n : ℤ) = A353637 (n + 1)

end A353637

/-! ## A353637.P6412141409950548134

`val(A039649(A245092(2*n+1)), A039649(n+1))`
-/

namespace A353637.P6412141409950548134
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039649 (A245092 (2 * n + 1)).toNat).toNat (A039649 (n + 1)).toNat

end

end A353637.P6412141409950548134

namespace A353637

/-- `val(A039649(A245092(2*n+1)), A039649(n+1))` -/
def P6412141409950548134.Spec : Prop :=
  ∀ n, (P6412141409950548134.a n : ℤ) = A353637 (n + 1)

end A353637

/-! ## A353637.P17081423065156569810

`val(A039649(n+1), A039649(A155085(n+1)-(n+1)))`
-/

namespace A353637.P17081423065156569810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039649 (n + 1)).toNat (A039649 (A155085 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A353637.P17081423065156569810

namespace A353637

/-- `val(A039649(n+1), A039649(A155085(n+1)-(n+1)))` -/
def P17081423065156569810.Spec : Prop :=
  ∀ n, (P17081423065156569810.a n : ℤ) = A353637 (n + 1)

end A353637

/-! ## A353637.P11613322433161238325

`val(A039649(n+1), A039649(A064987(n+1)/(n+1)))`
-/

namespace A353637.P11613322433161238325
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A039649 (n + 1)).toNat (A039649 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A353637.P11613322433161238325

namespace A353637

/-- `val(A039649(n+1), A039649(A064987(n+1)/(n+1)))` -/
def P11613322433161238325.Spec : Prop :=
  ∀ n, (P11613322433161238325.a n : ℤ) = A353637 (n + 1)

end A353637

/-!
# A353638: a(n) = 1 if n is odd and A064989(sigma(n)) < A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A353638, the canonical program `A353638.P14021207844737996786` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353638 has offset 1).

The definition of A353638 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A348737, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353638.P14021207844737996786

`A000035(n+1)*A348737(A064989(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353638

/-- `A000035(n+1)*A348737(A064989(n+1))` -/
def P14021207844737996786.Spec : Prop :=
  ∀ n, P14021207844737996786.a n = A353638 (n + 1)

theorem P14021207844737996786.correct : P14021207844737996786.Spec := by
  intro n
  simp only [A353638, Nat.add_sub_cancel]

end A353638

/-! ## A353638.P1013213135955051325

`log2(A040001(n)-A353639(n+1))`
-/

namespace A353638.P1013213135955051325
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040001 n - A353639 (n + 1) : ℝ)

end

end A353638.P1013213135955051325

namespace A353638

/-- `log2(A040001(n)-A353639(n+1))` -/
def P1013213135955051325.Spec : Prop :=
  ∀ n, P1013213135955051325.a n = (A353638 (n + 1) : ℝ)

end A353638

/-! ## A353638.P12027816267545925494

`A040001(A353639(n+1)+n)-1`
-/

namespace A353638.P12027816267545925494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A353639 (n + 1) + (n : ℤ)).toNat - 1

end

end A353638.P12027816267545925494

namespace A353638

/-- `A040001(A353639(n+1)+n)-1` -/
def P12027816267545925494.Spec : Prop :=
  ∀ n, P12027816267545925494.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P14211606763911119463

`and(n+1, A348737(A064989(n+1)))`
-/

namespace A353638.P14211606763911119463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A348737 (A064989 (n + 1)).toNat)

end

end A353638.P14211606763911119463

namespace A353638

/-- `and(n+1, A348737(A064989(n+1)))` -/
def P14211606763911119463.Spec : Prop :=
  ∀ n, P14211606763911119463.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P4602339420883778614

`floor(A348737(A064989(n+1))/(A020639(n+2)-1))`
-/

namespace A353638.P4602339420883778614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A348737 (A064989 (n + 1)).toNat : ℚ) / (A020639 (n + 2) - 1 : ℚ)⌋

end

end A353638.P4602339420883778614

namespace A353638

/-- `floor(A348737(A064989(n+1))/(A020639(n+2)-1))` -/
def P4602339420883778614.Spec : Prop :=
  ∀ n, P4602339420883778614.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P12481402022867209780

`char[eq[A266437(n), A353639(n+1)]]`
-/

namespace A353638.P12481402022867209780
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353638.P12481402022867209780

namespace A353638

/-- `char[eq[A266437(n), A353639(n+1)]]` -/
def P12481402022867209780.Spec : Prop :=
  ∀ n, (P12481402022867209780.a n : ℤ) = A353638 (n + 1)

end A353638

/-! ## A353638.P18215488539599583878

`and(A004733(n), A353760(n+1))`
-/

namespace A353638.P18215488539599583878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004733 n) (A353760 (n + 1))

end

end A353638.P18215488539599583878

namespace A353638

/-- `and(A004733(n), A353760(n+1))` -/
def P18215488539599583878.Spec : Prop :=
  ∀ n, P18215488539599583878.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P10038318671160939273

`and(A036542(n), A353760(n+1))`
-/

namespace A353638.P10038318671160939273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A036542 n) (A353760 (n + 1))

end

end A353638.P10038318671160939273

namespace A353638

/-- `and(A036542(n), A353760(n+1))` -/
def P10038318671160939273.Spec : Prop :=
  ∀ n, P10038318671160939273.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P8554609113502238004

`and(A059673(n), A353760(n+1))`
-/

namespace A353638.P8554609113502238004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A059673 n) (A353760 (n + 1))

end

end A353638.P8554609113502238004

namespace A353638

/-- `and(A059673(n), A353760(n+1))` -/
def P8554609113502238004.Spec : Prop :=
  ∀ n, P8554609113502238004.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P4644356505249952698

`and(A045618(n), A353760(n+1))`
-/

namespace A353638.P4644356505249952698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045618 n) (A353760 (n + 1))

end

end A353638.P4644356505249952698

namespace A353638

/-- `and(A045618(n), A353760(n+1))` -/
def P4644356505249952698.Spec : Prop :=
  ∀ n, P4644356505249952698.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P12070627726798842439

`and(A026383(n), A353760(n+1))`
-/

namespace A353638.P12070627726798842439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026383 n) (A353760 (n + 1))

end

end A353638.P12070627726798842439

namespace A353638

/-- `and(A026383(n), A353760(n+1))` -/
def P12070627726798842439.Spec : Prop :=
  ∀ n, P12070627726798842439.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P9579059322559806365

`and(A099456(n), A353760(n+1))`
-/

namespace A353638.P9579059322559806365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099456 n) (A353760 (n + 1))

end

end A353638.P9579059322559806365

namespace A353638

/-- `and(A099456(n), A353760(n+1))` -/
def P9579059322559806365.Spec : Prop :=
  ∀ n, P9579059322559806365.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P16568212015689359330

`and(A077900(n), A353760(n+1))`
-/

namespace A353638.P16568212015689359330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077900 n) (A353760 (n + 1))

end

end A353638.P16568212015689359330

namespace A353638

/-- `and(A077900(n), A353760(n+1))` -/
def P16568212015689359330.Spec : Prop :=
  ∀ n, P16568212015689359330.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P9418099541079332258

`and(A077863(n), A353760(n+1))`
-/

namespace A353638.P9418099541079332258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077863 n) (A353760 (n + 1))

end

end A353638.P9418099541079332258

namespace A353638

/-- `and(A077863(n), A353760(n+1))` -/
def P9418099541079332258.Spec : Prop :=
  ∀ n, P9418099541079332258.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P7683086260816873541

`A353760(A065679(n+1))`
-/

namespace A353638.P7683086260816873541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353760 (A065679 (n + 1)).toNat

end

end A353638.P7683086260816873541

namespace A353638

/-- `A353760(A065679(n+1))` -/
def P7683086260816873541.Spec : Prop :=
  ∀ n, P7683086260816873541.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P6263190982860315525

`and(A055461(A167614(n+1)), A353760(n+1))`
-/

namespace A353638.P6263190982860315525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055461 (A167614 (n + 1)).toNat) (A353760 (n + 1))

end

end A353638.P6263190982860315525

namespace A353638

/-- `and(A055461(A167614(n+1)), A353760(n+1))` -/
def P6263190982860315525.Spec : Prop :=
  ∀ n, P6263190982860315525.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P13761167937023639466

`A000035(A002034(n+1)*A049820(n+1))`
-/

namespace A353638.P13761167937023639466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002034 (n + 1) * A049820 (n + 1)).toNat

end

end A353638.P13761167937023639466

namespace A353638

/-- `A000035(A002034(n+1)*A049820(n+1))` -/
def P13761167937023639466.Spec : Prop :=
  ∀ n, P13761167937023639466.a n = A353638 (n + 1)

end A353638

/-! ## A353638.P12423801684044191771

`A000035(lcm(A002034(n+1), A049820(n+1)))`
-/

namespace A353638.P12423801684044191771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.lcm (A002034 (n + 1)) (A049820 (n + 1)))

end

end A353638.P12423801684044191771

namespace A353638

/-- `A000035(lcm(A002034(n+1), A049820(n+1)))` -/
def P12423801684044191771.Spec : Prop :=
  ∀ n, P12423801684044191771.a n = A353638 (n + 1)

end A353638

/-!
# A353639: a(n) = 1 if n is odd and A064989(sigma(n)) > A064989(n), otherwise 0. Here A064989 shifts the prime factorization one step towards lower primes, and sigma is the sum of divisors function.

The programs for A353639, the canonical program `A353639.P13459626096142204888` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353639 has offset 1).

The definition of A353639 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9925 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353639.P3835739053212809113

`log2(A040001(n)-A353638(n+1))`
-/

namespace A353639.P3835739053212809113
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040001 n - A353638 (n + 1) : ℝ)

end

end A353639.P3835739053212809113

namespace A353639

/-- `log2(A040001(n)-A353638(n+1))` -/
def P3835739053212809113.Spec : Prop :=
  ∀ n, P3835739053212809113.a n = (A353639 (n + 1) : ℝ)

end A353639

/-! ## A353639.P18218452625478821810

`A040001(n)-A353638(n+1)-abs(A033999(n))`
-/

namespace A353639.P18218452625478821810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - A353638 (n + 1) - |A033999 n|

end

end A353639.P18218452625478821810

namespace A353639

/-- `A040001(n)-A353638(n+1)-abs(A033999(n))` -/
def P18218452625478821810.Spec : Prop :=
  ∀ n, P18218452625478821810.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P8787119753374662364

`A040001(n)-A353638(n+1)-abs(A008836(n+1))`
-/

namespace A353639.P8787119753374662364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - A353638 (n + 1) - |A008836 (n + 1)|

end

end A353639.P8787119753374662364

namespace A353639

/-- `A040001(n)-A353638(n+1)-abs(A008836(n+1))` -/
def P8787119753374662364.Spec : Prop :=
  ∀ n, P8787119753374662364.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P11440714816454009747

`A040001(n)-A353638(n+1)-A000045(A020639(2*(n+1)))`
-/

namespace A353639.P11440714816454009747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - A353638 (n + 1) - A000045 (A020639 (2 * (n + 1))).toNat

end

end A353639.P11440714816454009747

namespace A353639

/-- `A040001(n)-A353638(n+1)-A000045(A020639(2*(n+1)))` -/
def P11440714816454009747.Spec : Prop :=
  ∀ n, P11440714816454009747.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P13459626096142204888

`char[eq[A266437(n), A353638(n+1)]]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353639

/-- `char[eq[A266437(n), A353638(n+1)]]` -/
def P13459626096142204888.Spec : Prop :=
  ∀ n, (P13459626096142204888.a n : ℤ) = A353639 (n + 1)

theorem P13459626096142204888.correct : P13459626096142204888.Spec := by
  intro n
  simp only [A353639, Nat.add_sub_cancel]

end A353639

/-! ## A353639.P528568351235941703

`char[2*A026233(n+1)]-A353638(n+1)`
-/

namespace A353639.P528568351235941703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026233 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - A353638 (n + 1)

end

end A353639.P528568351235941703

namespace A353639

/-- `char[2*A026233(n+1)]-A353638(n+1)` -/
def P528568351235941703.Spec : Prop :=
  ∀ n, P528568351235941703.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P9841071733572169514

`A040001(n)-A353638(n+1)-A055975(2*n+1)²`
-/

namespace A353639.P9841071733572169514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n - A353638 (n + 1) - A055975 (2 * n + 1) ^ 2

end

end A353639.P9841071733572169514

namespace A353639

/-- `A040001(n)-A353638(n+1)-A055975(2*n+1)²` -/
def P9841071733572169514.Spec : Prop :=
  ∀ n, P9841071733572169514.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P1139802801520726742

`A353638(A353638(n+1)+A267459(n))`
-/

namespace A353639.P1139802801520726742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (A353638 (n + 1) + A267459 n).toNat

end

end A353639.P1139802801520726742

namespace A353639

/-- `A353638(A353638(n+1)+A267459(n))` -/
def P1139802801520726742.Spec : Prop :=
  ∀ n, P1139802801520726742.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P6824293556326324649

`and(1-A353760(n+1), A059673(n))`
-/

namespace A353639.P6824293556326324649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - A353760 (n + 1)) (A059673 n)

end

end A353639.P6824293556326324649

namespace A353639

/-- `and(1-A353760(n+1), A059673(n))` -/
def P6824293556326324649.Spec : Prop :=
  ∀ n, P6824293556326324649.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P14993873181627203697

`A353638(A353638(n+1)+A002522(n))`
-/

namespace A353639.P14993873181627203697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (A353638 (n + 1) + A002522 n).toNat

end

end A353639.P14993873181627203697

namespace A353639

/-- `A353638(A353638(n+1)+A002522(n))` -/
def P14993873181627203697.Spec : Prop :=
  ∀ n, P14993873181627203697.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P15508466421766923070

`A353638(A353638(n+1)+∑[A003961(n+1)])`
-/

namespace A353639.P15508466421766923070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353638 (A353638 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A353639.P15508466421766923070

namespace A353639

/-- `A353638(A353638(n+1)+∑[A003961(n+1)])` -/
def P15508466421766923070.Spec : Prop :=
  ∀ n, P15508466421766923070.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P4970957229633039465

`and(A152228(A140207(n)), A329039(n+1))`
-/

namespace A353639.P4970957229633039465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A152228 (A140207 n).toNat) (A329039 (n + 1))

end

end A353639.P4970957229633039465

namespace A353639

/-- `and(A152228(A140207(n)), A329039(n+1))` -/
def P4970957229633039465.Spec : Prop :=
  ∀ n, P4970957229633039465.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P11768500652837476811

`A001221(∏{e}[n+1, #])%A095346(n+1)`
-/

namespace A353639.P11768500652837476811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A095346 (n + 1))

end

end A353639.P11768500652837476811

namespace A353639

/-- `A001221(∏{e}[n+1, #])%A095346(n+1)` -/
def P11768500652837476811.Spec : Prop :=
  ∀ n, P11768500652837476811.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P4792634483085888931

`A095346(∏{e}[n+1, #])%A095346(n+1)`
-/

namespace A353639.P4792634483085888931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095346 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)) (A095346 (n + 1))

end

end A353639.P4792634483085888931

namespace A353639

/-- `A095346(∏{e}[n+1, #])%A095346(n+1)` -/
def P4792634483085888931.Spec : Prop :=
  ∀ n, P4792634483085888931.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P13053430211825787007

`A001221(A073752(n+1))%A095346(n+1)`
-/

namespace A353639.P13053430211825787007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (A073752 (n + 1)).toNat) (A095346 (n + 1))

end

end A353639.P13053430211825787007

namespace A353639

/-- `A001221(A073752(n+1))%A095346(n+1)` -/
def P13053430211825787007.Spec : Prop :=
  ∀ n, P13053430211825787007.a n = A353639 (n + 1)

end A353639

/-! ## A353639.P15308627527720186108

`A086401(A139770(n+1))%A095346(n+1)`
-/

namespace A353639.P15308627527720186108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A086401 (A139770 (n + 1)).toNat) (A095346 (n + 1))

end

end A353639.P15308627527720186108

namespace A353639

/-- `A086401(A139770(n+1))%A095346(n+1)` -/
def P15308627527720186108.Spec : Prop :=
  ∀ n, P15308627527720186108.a n = A353639 (n + 1)

end A353639

/-!
# A353640: Čiurlionis sequence A342002, reduced modulo 4.

The programs for A353640, there is no canonical definition to state claims against.
-/

/-! ## A353640.P6882568474020267579

`A010873(A342002(n))`
-/

namespace A353640.P6882568474020267579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A342002 n).toNat

end

end A353640.P6882568474020267579

/-!
# A353641: Odd bisection of A353640.

The programs for A353641, there is no canonical definition to state claims against.
-/

/-! ## A353641.P17870588084467332955

`A353640(2*n+1)`
-/

namespace A353641.P17870588084467332955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353640 (2 * n + 1)

end

end A353641.P17870588084467332955

/-!
# A353642: Even bisection of A353640.

The programs for A353642, there is no canonical definition to state claims against.
-/

/-! ## A353642.P12124461592786815874

`A353640(2*n)`
-/

namespace A353642.P12124461592786815874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353640 (2 * n)

end

end A353642.P12124461592786815874

/-!
# A353643: The greatest common divisor of phi(n) and phi(sigma(n)).

The programs for A353643, the canonical program `A353643.P5389742288665032552` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353643 has offset 1).

The definition of A353643 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A062401, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353643.P8971846232273272278

`A000010(n+1)/A353644(n+1)`
-/

namespace A353643.P8971846232273272278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A353644 (n + 1) : ℚ)

end

end A353643.P8971846232273272278

namespace A353643

/-- `A000010(n+1)/A353644(n+1)` -/
def P8971846232273272278.Spec : Prop :=
  ∀ n, P8971846232273272278.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P6665801282334692836

`A062401(n+1)/A353646(n+1)`
-/

namespace A353643.P6665801282334692836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A353646 (n + 1) : ℚ)

end

end A353643.P6665801282334692836

namespace A353643

/-- `A062401(n+1)/A353646(n+1)` -/
def P6665801282334692836.Spec : Prop :=
  ∀ n, P6665801282334692836.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P5389742288665032552

`gcd(A000010(n+1), A062401(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A353643

/-- `gcd(A000010(n+1), A062401(n+1))` -/
def P5389742288665032552.Spec : Prop :=
  ∀ n, (P5389742288665032552.a n : ℤ) = A353643 (n + 1)

theorem P5389742288665032552.correct : P5389742288665032552.Spec := by
  intro n
  simp only [A353643, Nat.add_sub_cancel]

end A353643

/-! ## A353643.P5157323999892245378

`gcd(A009279(n+1), A353636(n+1))`
-/

namespace A353643.P5157323999892245378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A009279 (n + 1)) (A353636 (n + 1))

end

end A353643.P5157323999892245378

namespace A353643

/-- `gcd(A009279(n+1), A353636(n+1))` -/
def P5157323999892245378.Spec : Prop :=
  ∀ n, (P5157323999892245378.a n : ℤ) = A353643 (n + 1)

end A353643

/-! ## A353643.P2659579858820192444

`(A039649(n+1)-1)/A353644(n+1)`
-/

namespace A353643.P2659579858820192444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A353644 (n + 1) : ℚ)

end

end A353643.P2659579858820192444

namespace A353643

/-- `(A039649(n+1)-1)/A353644(n+1)` -/
def P2659579858820192444.Spec : Prop :=
  ∀ n, P2659579858820192444.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P10993288760267557563

`(n-A219428(n+1))/A353644(n+1)`
-/

namespace A353643.P10993288760267557563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A353644 (n + 1) : ℚ)

end

end A353643.P10993288760267557563

namespace A353643

/-- `(n-A219428(n+1))/A353644(n+1)` -/
def P10993288760267557563.Spec : Prop :=
  ∀ n, P10993288760267557563.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P13999007923168371113

`gcd(A109606(n+1)+1, A000010(∑{d}[n+1, #]))`
-/

namespace A353643.P13999007923168371113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109606 (n + 1) + 1) (A000010 (∑ d ∈ Nat.divisors (f1 n), d))

end

end A353643.P13999007923168371113

namespace A353643

/-- `gcd(A109606(n+1)+1, A000010(∑{d}[n+1, #]))` -/
def P13999007923168371113.Spec : Prop :=
  ∀ n, (P13999007923168371113.a n : ℤ) = A353643 (n + 1)

theorem P13999007923168371113.correct : P13999007923168371113.Spec := by
  intro n
  simp only [A353643, Nat.add_sub_cancel, A353643.P13999007923168371113.f1, A353643.P13999007923168371113.a, A353643.P5389742288665032552.a, A000010, A000010.P4673923239450215316.a, A062401, A062401.P14719521271091436929.f1, A062401.P14719521271091436929.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353643

/-! ## A353643.P17200676968765374138

`(abs(A051953(n+1)-n)+1)/A353644(n+1)`
-/

namespace A353643.P17200676968765374138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A051953 (n + 1) - (n : ℤ)| + 1 : ℚ) / (A353644 (n + 1) : ℚ)

end

end A353643.P17200676968765374138

namespace A353643

/-- `(abs(A051953(n+1)-n)+1)/A353644(n+1)` -/
def P17200676968765374138.Spec : Prop :=
  ∀ n, P17200676968765374138.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P9542115579849894322

`∏{p}[n+1, #-1]*A003557(n+1)/A353644(n+1)`
-/

namespace A353643.P9542115579849894322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A353644 (n + 1) : ℚ)

end

end A353643.P9542115579849894322

namespace A353643

/-- `∏{p}[n+1, #-1]*A003557(n+1)/A353644(n+1)` -/
def P9542115579849894322.Spec : Prop :=
  ∀ n, P9542115579849894322.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P1280085348101004416

`A000010(A000203(n+1))/A353646(n+1)`
-/

namespace A353643.P1280085348101004416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A353646 (n + 1) : ℚ)

end

end A353643.P1280085348101004416

namespace A353643

/-- `A000010(A000203(n+1))/A353646(n+1)` -/
def P1280085348101004416.Spec : Prop :=
  ∀ n, P1280085348101004416.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P450000941934441373

`gcd(A039649(n+1)-1, A000010(A245092(2*n+1)))`
-/

namespace A353643.P450000941934441373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039649 (n + 1) - 1) (A000010 (A245092 (2 * n + 1)).toNat)

end

end A353643.P450000941934441373

namespace A353643

/-- `gcd(A039649(n+1)-1, A000010(A245092(2*n+1)))` -/
def P450000941934441373.Spec : Prop :=
  ∀ n, (P450000941934441373.a n : ℤ) = A353643 (n + 1)

end A353643

/-! ## A353643.P4118436747949112930

`(A353636(n+1)+A000010(n+1))/A353646(n+1)`
-/

namespace A353643.P4118436747949112930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353636 (n + 1) + A000010 (n + 1) : ℚ) / (A353646 (n + 1) : ℚ)

end

end A353643.P4118436747949112930

namespace A353643

/-- `(A353636(n+1)+A000010(n+1))/A353646(n+1)` -/
def P4118436747949112930.Spec : Prop :=
  ∀ n, P4118436747949112930.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P16640811527241241087

`(A062401(n+1)-A353636(n+1))/A353644(n+1)`
-/

namespace A353643.P16640811527241241087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) - A353636 (n + 1) : ℚ) / (A353644 (n + 1) : ℚ)

end

end A353643.P16640811527241241087

namespace A353643

/-- `(A062401(n+1)-A353636(n+1))/A353644(n+1)` -/
def P16640811527241241087.Spec : Prop :=
  ∀ n, P16640811527241241087.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P16201970161142425592

`A046073(n+1)*A060594(n+1)/A353644(n+1)`
-/

namespace A353643.P16201970161142425592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) * A060594 (n + 1) : ℚ) / (A353644 (n + 1) : ℚ)

end

end A353643.P16201970161142425592

namespace A353643

/-- `A046073(n+1)*A060594(n+1)/A353644(n+1)` -/
def P16201970161142425592.Spec : Prop :=
  ∀ n, P16201970161142425592.a n = (A353643 (n + 1) : ℚ)

end A353643

/-! ## A353643.P17748078078224797180

`log2(A243305(n+1)-1)/A353644(n+1)`
-/

namespace A353643.P17748078078224797180
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A243305 (n + 1) - 1 : ℝ) / (A353644 (n + 1) : ℝ)

end

end A353643.P17748078078224797180

namespace A353643

/-- `log2(A243305(n+1)-1)/A353644(n+1)` -/
def P17748078078224797180.Spec : Prop :=
  ∀ n, P17748078078224797180.a n = (A353643 (n + 1) : ℝ)

end A353643

/-!
# A353644: a(n) = phi(n) / gcd(phi(n), phi(sigma(n))).

The programs for A353644, the canonical program `A353644.P12499979160227092597` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353644 has offset 1).

The definition of A353644 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353644.P12499979160227092597

`A000010(n+1)/A353643(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353644

/-- `A000010(n+1)/A353643(n+1)` -/
def P12499979160227092597.Spec : Prop :=
  ∀ n, P12499979160227092597.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P12618355824492318320

`A000010(n+1)/gcd(A000010(n+1), A062401(n+1))`
-/

namespace A353644.P12618355824492318320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (Int.gcd (A000010 (n + 1)) (A062401 (n + 1)) : ℚ)

end

end A353644.P12618355824492318320

namespace A353644

/-- `A000010(n+1)/gcd(A000010(n+1), A062401(n+1))` -/
def P12618355824492318320.Spec : Prop :=
  ∀ n, P12618355824492318320.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P12217245874921595865

`Δ[A002088(n)]/A353643(n+1)`
-/

namespace A353644.P12217245874921595865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P12217245874921595865

namespace A353644

/-- `Δ[A002088(n)]/A353643(n+1)` -/
def P12217245874921595865.Spec : Prop :=
  ∀ n, P12217245874921595865.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P16004502000481153802

`Δ[A005728(n)]/A353643(n+1)`
-/

namespace A353644.P16004502000481153802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P16004502000481153802

namespace A353644

/-- `Δ[A005728(n)]/A353643(n+1)` -/
def P16004502000481153802.Spec : Prop :=
  ∀ n, P16004502000481153802.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P747720093169230277

`(A109606(n+1)+1)/A353643(n+1)`
-/

namespace A353644.P747720093169230277
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109606 (n + 1) + 1 : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P747720093169230277

namespace A353644

/-- `(A109606(n+1)+1)/A353643(n+1)` -/
def P747720093169230277.Spec : Prop :=
  ∀ n, P747720093169230277.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P2819129816256546908

`(A039649(n+1)-1)/A353643(n+1)`
-/

namespace A353644.P2819129816256546908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039649 (n + 1) - 1 : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P2819129816256546908

namespace A353644

/-- `(A039649(n+1)-1)/A353643(n+1)` -/
def P2819129816256546908.Spec : Prop :=
  ∀ n, P2819129816256546908.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P17892912129816384365

`(n-A219428(n+1))/A353643(n+1)`
-/

namespace A353644.P17892912129816384365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A219428 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P17892912129816384365

namespace A353644

/-- `(n-A219428(n+1))/A353643(n+1)` -/
def P17892912129816384365.Spec : Prop :=
  ∀ n, P17892912129816384365.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P14343053487801857221

`(1-A051953(n+1)+n)/A353643(n+1)`
-/

namespace A353644.P14343053487801857221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A051953 (n + 1) + (n : ℤ) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P14343053487801857221

namespace A353644

/-- `(1-A051953(n+1)+n)/A353643(n+1)` -/
def P14343053487801857221.Spec : Prop :=
  ∀ n, P14343053487801857221.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P17872973630082005519

`∏{p}[n+1, #-1]*A003557(n+1)/A353643(n+1)`
-/

namespace A353644.P17872973630082005519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P17872973630082005519

namespace A353644

/-- `∏{p}[n+1, #-1]*A003557(n+1)/A353643(n+1)` -/
def P17872973630082005519.Spec : Prop :=
  ∀ n, P17872973630082005519.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P11132195409589273663

`(n+1)/∏{p}[n+1, #]*A173557(n+1)/A353643(n+1)`
-/

namespace A353644.P11132195409589273663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P11132195409589273663

namespace A353644

/-- `(n+1)/∏{p}[n+1, #]*A173557(n+1)/A353643(n+1)` -/
def P11132195409589273663.Spec : Prop :=
  ∀ n, P11132195409589273663.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P17344712428426905079

`(A002088(n+1)-A002088(n))/A353643(n+1)`
-/

namespace A353644.P17344712428426905079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002088 (n + 1) - A002088 n : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P17344712428426905079

namespace A353644

/-- `(A002088(n+1)-A002088(n))/A353643(n+1)` -/
def P17344712428426905079.Spec : Prop :=
  ∀ n, P17344712428426905079.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P14079319352685678755

`(A005728(n+1)-A005728(n))/A353643(n+1)`
-/

namespace A353644.P14079319352685678755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005728 (n + 1) - A005728 n : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P14079319352685678755

namespace A353644

/-- `(A005728(n+1)-A005728(n))/A353643(n+1)` -/
def P14079319352685678755.Spec : Prop :=
  ∀ n, P14079319352685678755.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P5073798318456676860

`(A076363(n+1)+A061498(n+1))/A353643(n+1)`
-/

namespace A353644.P5073798318456676860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076363 (n + 1) + A061498 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P5073798318456676860

namespace A353644

/-- `(A076363(n+1)+A061498(n+1))/A353643(n+1)` -/
def P5073798318456676860.Spec : Prop :=
  ∀ n, P5073798318456676860.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P10273477405360215226

`(A000040(n+1)-A104192(n+1))/A353643(n+1)`
-/

namespace A353644.P10273477405360215226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) - A104192 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P10273477405360215226

namespace A353644

/-- `(A000040(n+1)-A104192(n+1))/A353643(n+1)` -/
def P10273477405360215226.Spec : Prop :=
  ∀ n, P10273477405360215226.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P1017408898331665179

`(A062401(n+1)-A353636(n+1))/A353643(n+1)`
-/

namespace A353644.P1017408898331665179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) - A353636 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P1017408898331665179

namespace A353644

/-- `(A062401(n+1)-A353636(n+1))/A353643(n+1)` -/
def P1017408898331665179.Spec : Prop :=
  ∀ n, P1017408898331665179.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P16864281001642577364

`A353646(n+1)-A353636(n+1)/A353643(n+1)`
-/

namespace A353644.P16864281001642577364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353646 (n + 1) : ℚ) - (A353636 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P16864281001642577364

namespace A353644

/-- `A353646(n+1)-A353636(n+1)/A353643(n+1)` -/
def P16864281001642577364.Spec : Prop :=
  ∀ n, P16864281001642577364.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P11045376918869684952

`A002322(n+1)*A034380(n+1)/A353643(n+1)`
-/

namespace A353644.P11045376918869684952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002322 (n + 1) * A034380 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P11045376918869684952

namespace A353644

/-- `A002322(n+1)*A034380(n+1)/A353643(n+1)` -/
def P11045376918869684952.Spec : Prop :=
  ∀ n, P11045376918869684952.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P3667436816411845318

`A000010(n+1)/A062401(n+1)*A353646(n+1)`
-/

namespace A353644.P3667436816411845318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A062401 (n + 1) : ℚ) * (A353646 (n + 1) : ℚ)

end

end A353644.P3667436816411845318

namespace A353644

/-- `A000010(n+1)/A062401(n+1)*A353646(n+1)` -/
def P3667436816411845318.Spec : Prop :=
  ∀ n, P3667436816411845318.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P10695232117777873871

`A046073(n+1)*A060594(n+1)/A353643(n+1)`
-/

namespace A353644.P10695232117777873871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) * A060594 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P10695232117777873871

namespace A353644

/-- `A046073(n+1)*A060594(n+1)/A353643(n+1)` -/
def P10695232117777873871.Spec : Prop :=
  ∀ n, P10695232117777873871.a n = (A353644 (n + 1) : ℚ)

end A353644

/-! ## A353644.P2702131741604981655

`(A345674(n+1)+A046144(n+1))/A353643(n+1)`
-/

namespace A353644.P2702131741604981655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345674 (n + 1) + A046144 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353644.P2702131741604981655

namespace A353644

/-- `(A345674(n+1)+A046144(n+1))/A353643(n+1)` -/
def P2702131741604981655.Spec : Prop :=
  ∀ n, P2702131741604981655.a n = (A353644 (n + 1) : ℚ)

end A353644

/-!
# A353645: a(1) = 1, and for n > 1, number of ways to write the square of n as a product of at least two factors, the largest two of which are equal.

The programs for A353645, there is no canonical definition to state claims against.
-/

/-! ## A353645.P2980669687276279527

`A325045((n+1)²)`
-/

namespace A353645.P2980669687276279527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325045 ((n + 1) ^ 2)

end

end A353645.P2980669687276279527

/-! ## A353645.P14008326764620475653

`A325045(A137442(2*n+1))+A317542(3*n)`
-/

namespace A353645.P14008326764620475653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325045 (A137442 (2 * n + 1)).toNat + A317542 (3 * n)

end

end A353645.P14008326764620475653

/-! ## A353645.P13427972988551923300

`A073490(A046611(n+1))+A001055(n+1)`
-/

namespace A353645.P13427972988551923300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A046611 (n + 1)).toNat + A001055 (n + 1)

end

end A353645.P13427972988551923300

/-! ## A353645.P15286793607436126852

`A247223(A000045(n))+A136167(3*(n+1))`
-/

namespace A353645.P15286793607436126852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247223 (A000045 n).toNat + A136167 (3 * (n + 1))

end

end A353645.P15286793607436126852

/-! ## A353645.P11788877238471774317

`A073490(A046611(n+1))+A344368(n+1)/(n+1)`
-/

namespace A353645.P11788877238471774317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073490 (A046611 (n + 1)).toNat : ℚ) + (A344368 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A353645.P11788877238471774317

/-!
# A353646: a(n) = phi(sigma(n)) / gcd(phi(n), phi(sigma(n))).

The programs for A353646, the canonical program `A353646.P14527440753907412208` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353646 has offset 1).

The definition of A353646 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062401, A353643, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353646.P14527440753907412208

`A062401(n+1)/A353643(n+1)`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353646

/-- `A062401(n+1)/A353643(n+1)` -/
def P14527440753907412208.Spec : Prop :=
  ∀ n, P14527440753907412208.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P6499522053882191059

`A062401(n+1)/gcd(A062401(n+1), A353636(n+1))`
-/

namespace A353646.P6499522053882191059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (Int.gcd (A062401 (n + 1)) (A353636 (n + 1)) : ℚ)

end

end A353646.P6499522053882191059

namespace A353646

/-- `A062401(n+1)/gcd(A062401(n+1), A353636(n+1))` -/
def P6499522053882191059.Spec : Prop :=
  ∀ n, P6499522053882191059.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P17138529269780709782

`A000010(∑{d}[n+1, #])/A353643(n+1)`
-/

namespace A353646.P17138529269780709782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P17138529269780709782

namespace A353646

/-- `A000010(∑{d}[n+1, #])/A353643(n+1)` -/
def P17138529269780709782.Spec : Prop :=
  ∀ n, P17138529269780709782.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P10679047129449311612

`A000010(A000203(n+1))/A353643(n+1)`
-/

namespace A353646.P10679047129449311612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A000203 (n + 1)).toNat : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P10679047129449311612

namespace A353646

/-- `A000010(A000203(n+1))/A353643(n+1)` -/
def P10679047129449311612.Spec : Prop :=
  ∀ n, P10679047129449311612.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P10195807580069387280

`A000010(A088580(n+1)-1)/A353643(n+1)`
-/

namespace A353646.P10195807580069387280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A088580 (n + 1) - 1).toNat : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P10195807580069387280

namespace A353646

/-- `A000010(A088580(n+1)-1)/A353643(n+1)` -/
def P10195807580069387280.Spec : Prop :=
  ∀ n, P10195807580069387280.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P10764301521357225501

`(A353636(n+1)+A000010(n+1))/A353643(n+1)`
-/

namespace A353646.P10764301521357225501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353636 (n + 1) + A000010 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P10764301521357225501

namespace A353646

/-- `(A353636(n+1)+A000010(n+1))/A353643(n+1)` -/
def P10764301521357225501.Spec : Prop :=
  ∀ n, P10764301521357225501.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P10629417399800797969

`A353644(n+1)+A353636(n+1)/A353643(n+1)`
-/

namespace A353646.P10629417399800797969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353644 (n + 1) : ℚ) + (A353636 (n + 1) : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P10629417399800797969

namespace A353646

/-- `A353644(n+1)+A353636(n+1)/A353643(n+1)` -/
def P10629417399800797969.Spec : Prop :=
  ∀ n, P10629417399800797969.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P17410291832140789287

`A062401(n+1)/A000010(n+1)*A353644(n+1)`
-/

namespace A353646.P17410291832140789287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062401 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A353644 (n + 1) : ℚ)

end

end A353646.P17410291832140789287

namespace A353646

/-- `A062401(n+1)/A000010(n+1)*A353644(n+1)` -/
def P17410291832140789287.Spec : Prop :=
  ∀ n, P17410291832140789287.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P7872683771266780844

`A000010(A178637(n+1)+A023889(n+1))/A353643(n+1)`
-/

namespace A353646.P7872683771266780844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A178637 (n + 1) + A023889 (n + 1)).toNat : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P7872683771266780844

namespace A353646

/-- `A000010(A178637(n+1)+A023889(n+1))/A353643(n+1)` -/
def P7872683771266780844.Spec : Prop :=
  ∀ n, P7872683771266780844.a n = (A353646 (n + 1) : ℚ)

end A353646

/-! ## A353646.P13237886063485704728

`A349137(A002659(n+1))/A353643(n+1)`
-/

namespace A353646.P13237886063485704728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349137 (A002659 (n + 1)).toNat : ℚ) / (A353643 (n + 1) : ℚ)

end

end A353646.P13237886063485704728

namespace A353646

/-- `A349137(A002659(n+1))/A353643(n+1)` -/
def P13237886063485704728.Spec : Prop :=
  ∀ n, P13237886063485704728.a n = (A353646 (n + 1) : ℚ)

end A353646

/-!
# A353647: Möbius transform of A062401, where A062401(n) = phi(sigma(n)).

The programs for A353647, the canonical program `A353647.P1812791141809575009` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353647 has offset 1).

The definition of A353647 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353647.P1812791141809575009

`∑{d}[n+1, A008683(#)*A062401((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353647

/-- `∑{d}[n+1, A008683(#)*A062401((n+1)/#)]` -/
def P1812791141809575009.Spec : Prop :=
  ∀ n, P1812791141809575009.a n = A353647 (n + 1)

theorem P1812791141809575009.correct : P1812791141809575009.Spec := by
  intro n
  simp only [A353647, Nat.add_sub_cancel]

end A353647

/-!
# A353651: Unique monotonic sequence of positive integers satisfying a(a(n)) = k*(n-1) + 3, where k = 4.

The programs for A353651, the canonical program `A353651.P6349234532942003500` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353651 has offset 1).

The definition of A353651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353651.P6349234532942003500

`∑[floor(a(floor((n+1)/4)))]` with `a(0)=2, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353651

/-- `∑[floor(a(floor((n+1)/4)))]` -/
def P6349234532942003500.Spec : Prop :=
  ∀ n, (P6349234532942003500.a n : ℤ) = A353651 (n + 1)

theorem P6349234532942003500.correct : P6349234532942003500.Spec := by
  intro n
  simp only [A353651, Nat.add_sub_cancel]

end A353651

/-! ## A353651.P1750891434880415672

`ceil(A080633(2*n+1)/2)`
-/

namespace A353651.P1750891434880415672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A080633 (2 * n + 1) : ℚ) / 2⌉

end

end A353651.P1750891434880415672

namespace A353651

/-- `ceil(A080633(2*n+1)/2)` -/
def P1750891434880415672.Spec : Prop :=
  ∀ n, P1750891434880415672.a n = A353651 (n + 1)

end A353651

/-! ## A353651.P12550079613502552322

`A008619(A080633(2*n+1))`
-/

namespace A353651.P12550079613502552322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A080633 (2 * n + 1)).toNat

end

end A353651.P12550079613502552322

namespace A353651

/-- `A008619(A080633(2*n+1))` -/
def P12550079613502552322.Spec : Prop :=
  ∀ n, P12550079613502552322.a n = A353651 (n + 1)

end A353651

/-! ## A353651.P4650756598156846336

`A006370(A080633(2*n+1)+1)`
-/

namespace A353651.P4650756598156846336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A080633 (2 * n + 1) + 1).toNat

end

end A353651.P4650756598156846336

namespace A353651

/-- `A006370(A080633(2*n+1)+1)` -/
def P4650756598156846336.Spec : Prop :=
  ∀ n, P4650756598156846336.a n = A353651 (n + 1)

end A353651

/-! ## A353651.P1021183864673510773

`A028242(A080646(2*n+1)-1)`
-/

namespace A353651.P1021183864673510773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A080646 (2 * n + 1) - 1).toNat

end

end A353651.P1021183864673510773

namespace A353651

/-- `A028242(A080646(2*n+1)-1)` -/
def P1021183864673510773.Spec : Prop :=
  ∀ n, P1021183864673510773.a n = A353651 (n + 1)

end A353651

/-!
# A353652: Unique monotonic sequence of positive integers satisfying a(a(n)) = k*(n-1) + 3, where k = 5.

The programs for A353652, there is no canonical definition to state claims against.
-/

/-! ## A353652.P9287558449787712772

`ceil(A079351(2*n+1)/2)`
-/

namespace A353652.P9287558449787712772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A079351 (2 * n + 1) : ℚ) / 2⌉

end

end A353652.P9287558449787712772

/-! ## A353652.P6703527414611336590

`A065033(A079351(2*n+1))`
-/

namespace A353652.P6703527414611336590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A079351 (2 * n + 1)).toNat

end

end A353652.P6703527414611336590

/-! ## A353652.P17444408044676505345

`A004526(A079351(2*n+1)+1)`
-/

namespace A353652.P17444408044676505345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A079351 (2 * n + 1) + 1).toNat

end

end A353652.P17444408044676505345

/-! ## A353652.P16244110999098988692

`A006370(A079351(2*n+1)+1)`
-/

namespace A353652.P16244110999098988692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A079351 (2 * n + 1) + 1).toNat

end

end A353652.P16244110999098988692

/-! ## A353652.P13030985199063193564

`A181762(A079351(2*n+1)+1)`
-/

namespace A353652.P13030985199063193564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 (A079351 (2 * n + 1) + 1).toNat

end

end A353652.P13030985199063193564

/-!
# A353653: Unique monotonic sequence of positive integers satisfying a(a(n)) = k*(n-1) + 3, where k = 6.

The programs for A353653, there is no canonical definition to state claims against.
-/

/-! ## A353653.P17064036142678242689

`∑[(A233134(record[A264996(3*n+1)])%4)!]`
-/

namespace A353653.P17064036142678242689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264996 (3 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.tmod (A233134 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat) 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353653.P17064036142678242689

/-!
# A353654: Numbers whose binary expansion has the same number of trailing 0 bits as other 0 bits.

The programs for A353654, there is no canonical definition to state claims against.
-/

/-! ## A353654.P7517211798932341719

`a(n-1)+A356385(n)` with `a(0)=1`
-/

namespace A353654.P7517211798932341719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A356385 n

end

end A353654.P7517211798932341719

/-! ## A353654.P16409006778516859479

`eq[A000120(n), A119387(n)]+1`
-/

namespace A353654.P16409006778516859479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353654.P16409006778516859479

/-! ## A353654.P8910275070291327965

`eq[2*A086784(n), A023416(n)]`
-/

namespace A353654.P8910275070291327965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086784 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A353654.P8910275070291327965

/-! ## A353654.P12188399899356781263

`eq[A001511(n+1), A023416(n)]+1`
-/

namespace A353654.P12188399899356781263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353654.P12188399899356781263

/-! ## A353654.P12987020266840100645

`A353292(lt[A080100(n), A006519(n+1)])`
-/

namespace A353654.P12987020266840100645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353292 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353654.P12987020266840100645

/-! ## A353654.P1927493768396680119

`eq[A000005(A006519(n+1)), A023416(n)]+1`
-/

namespace A353654.P1927493768396680119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006519 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353654.P1927493768396680119

/-!
# A353655: Number of terms in the Fibonacci-Lucas representation of n.

The programs for A353655, there is no canonical definition to state claims against.
-/

/-! ## A353655.P9717066616150056472

`A353657(n+1)+A353656(n+1)`
-/

namespace A353655.P9717066616150056472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353657 (n + 1) + A353656 (n + 1)

end

end A353655.P9717066616150056472

/-! ## A353655.P16242051677172023928

`A352513(10*A194029(n+1))`
-/

namespace A353655.P16242051677172023928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (10 * A194029 (n + 1)).toNat

end

end A353655.P16242051677172023928

/-! ## A353655.P17634732282471911261

`gcd(6, A087802(A327991(n)))`
-/

namespace A353655.P17634732282471911261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A087802 (A327991 n).toNat)

end

end A353655.P17634732282471911261

/-! ## A353655.P18401700576687678945

`A001221(A102369(n)*A204810(n+1)+3)`
-/

namespace A353655.P18401700576687678945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102369 n * A204810 (n + 1) + 3).toNat

end

end A353655.P18401700576687678945

/-! ## A353655.P10700490145521293551

`A302243(A238954(n)²)`
-/

namespace A353655.P10700490145521293551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302243 (A238954 n ^ 2).toNat

end

end A353655.P10700490145521293551

/-!
# A353656: Number of terms in the Lucas-Fibonacci representation of n.

The programs for A353656, there is no canonical definition to state claims against.
-/

/-! ## A353656.P10213697151936834314

`A353655(n+1)-A353657(n+1)`
-/

namespace A353656.P10213697151936834314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353655 (n + 1) - A353657 (n + 1)

end

end A353656.P10213697151936834314

/-! ## A353656.P1097465274569992120

`gcd(6, A087802(A327991(n)))-A353657(n+1)`
-/

namespace A353656.P1097465274569992120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A087802 (A327991 n).toNat) : ℤ) - A353657 (n + 1)

end

end A353656.P1097465274569992120

/-! ## A353656.P3446519270535802243

`A001221(A102369(n)*A204810(n+1)+3)-A353657(n+1)`
-/

namespace A353656.P3446519270535802243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A102369 n * A204810 (n + 1) + 3).toNat - A353657 (n + 1)

end

end A353656.P3446519270535802243

/-! ## A353656.P11418002381704609460

`A287170(A054256(n)+A188814(n)+A182984(n))`
-/

namespace A353656.P11418002381704609460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A054256 n + (A188814 n + A182984 n)).toNat

end

end A353656.P11418002381704609460

/-! ## A353656.P7376567244520155146

`A001221(A112838(n+3)+A081502(n))`
-/

namespace A353656.P7376567244520155146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A112838 (n + 3) + A081502 n).toNat

end

end A353656.P7376567244520155146

/-!
# A353657: a(n) = A353655(n) - A353656(n).

The programs for A353657, there is no canonical definition to state claims against.
-/

/-! ## A353657.P18087262085773547777

`A353655(n+1)-A353656(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353657.P18087262085773547777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353655 (n + 1) - A353656 (n + 1)

end

end A353657.P18087262085773547777

/-! ## A353657.P16171941153607746692

`gcd(6, A087802(A327991(n)))-A353656(n+1)`
-/

namespace A353657.P16171941153607746692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 6 (A087802 (A327991 n).toNat) : ℤ) - A353656 (n + 1)

end

end A353657.P16171941153607746692

/-! ## A353657.P17353632222379136055

`A135910(4^A194029(n+1))-A353656(n+1)`
-/

namespace A353657.P17353632222379136055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135910 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A194029 (n + 1) : ℤ))).toNat - A353656 (n + 1)

end

end A353657.P17353632222379136055

/-! ## A353657.P6192589846167630863

`A020639(C(34, A255120(n)))-A353656(n+1)`
-/

namespace A353657.P6192589846167630863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Nat.choose 34 (A255120 n).toNat) - A353656 (n + 1)

end

end A353657.P6192589846167630863

/-! ## A353657.P7912730310225131573

`A353655(n+1)-A001221(A206700(n+1)+A000720(3*n+2))`
-/

namespace A353657.P7912730310225131573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353655 (n + 1) - A001221 (A206700 (n + 1) + A000720 (3 * n + 2)).toNat

end

end A353657.P7912730310225131573

/-!
# A353660: The binary expansions of A352909(n+1, 1) and A352909(n+1, 2) encode respectively the 1's and the 2's in the ternary expansion of a(n).

The programs for A353660, there is no canonical definition to state claims against.
-/

/-! ## A353660.P502005295325479188

`A004488(A368229(n))`
-/

namespace A353660.P502005295325479188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A368229 n).toNat

end

end A353660.P502005295325479188

/-! ## A353660.P16486255842530768862

`A368229(n)-A353662(n)`
-/

namespace A353660.P16486255842530768862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368229 n - A353662 n

end

end A353660.P16486255842530768862

/-! ## A353660.P1953314111446881806

`A253587(eq[A253586(n), A279891(n)])`
-/

namespace A353660.P1953314111446881806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253587 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A353660.P1953314111446881806

/-! ## A353660.P4625465841425357198

`A294317(eq[A253586(n), A279891(n)])`
-/

namespace A353660.P4625465841425357198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294317 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A353660.P4625465841425357198

/-! ## A353660.P3430417678728837263

`A025581(eq[0, A004489(n)])`
-/

namespace A353660.P3430417678728837263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353660.P3430417678728837263

/-! ## A353660.P9385255743573920777

`A025581(eq[0, A253586(n)])`
-/

namespace A353660.P9385255743573920777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353660.P9385255743573920777

/-!
# A353661: Inverse permutation to A353660.

The programs for A353661, there is no canonical definition to state claims against.
-/

/-! ## A353661.P7816523294436480149

`A368230(A004488(n))`
-/

namespace A353661.P7816523294436480149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368230 (A004488 n).toNat

end

end A353661.P7816523294436480149

/-! ## A353661.P10609276470140476847

`A368230(A117966(n)+n)`
-/

namespace A353661.P10609276470140476847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368230 (A117966 n + (n : ℤ)).toNat

end

end A353661.P10609276470140476847

/-! ## A353661.P14814218694227661253

`A368230(n-A353662(A368230(n)))`
-/

namespace A353661.P14814218694227661253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368230 ((n : ℤ) - A353662 (A368230 n).toNat).toNat

end

end A353661.P14814218694227661253

/-! ## A353661.P14034601374926682817

`A368230(A117967(n)-A117966(2*n))`
-/

namespace A353661.P14034601374926682817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368230 (A117967 n - A117966 (2 * n)).toNat

end

end A353661.P14034601374926682817

/-! ## A353661.P18378859703180824502

`A368230(A134028(n)+A274107(n)+n)`
-/

namespace A353661.P18378859703180824502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368230 (A134028 n + (A274107 n + (n : ℤ))).toNat

end

end A353661.P18378859703180824502

/-!
# A353662: The binary expansions of A352909(n+1, 1) and A352909(n+1, 2) encode respectively the 1's and the -1's in the balanced ternary expansion of a(n).

The programs for A353662, there is no canonical definition to state claims against.
-/

/-! ## A353662.P9096147678837412421

`A117966(A353660(n))`
-/

namespace A353662.P9096147678837412421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A353660 n).toNat

end

end A353662.P9096147678837412421

/-! ## A353662.P8838084127162878723

`A368229(n)-A353660(n)`
-/

namespace A353662.P8838084127162878723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368229 n - A353660 n

end

end A353662.P8838084127162878723

/-! ## A353662.P6212901907764781806

`A117966(A368229(n))*A153881(n+1)`
-/

namespace A353662.P6212901907764781806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A368229 n).toNat * A153881 (n + 1)

end

end A353662.P6212901907764781806

/-! ## A353662.P8795719802093597970

`A379275(A008586(n))-A117966(A368229(n))`
-/

namespace A353662.P8795719802093597970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379275 (A008586 n).toNat - A117966 (A368229 n).toNat

end

end A353662.P8795719802093597970

/-!
# A353663: Triangle read by rows: T(n,k) = 1 if n+k is a prime, otherwise T(n,k) = 0; n >= 1, k >= 1.

The programs for A353663, the canonical program `A353663.P11512810289068741425` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353663 has offset 1).

The definition of A353663 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353612, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353663.P11512810289068741425

`A057427(A353612(n+1))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353663

/-- `A057427(A353612(n+1))` -/
def P11512810289068741425.Spec : Prop :=
  ∀ n, P11512810289068741425.a n = A353663 (n + 1)

theorem P11512810289068741425.correct : P11512810289068741425.Spec := by
  intro n
  simp only [A353663, Nat.add_sub_cancel]

end A353663

/-! ## A353663.P13997079084027308379

`∑{e}[A094727(n+1)+1, #]!%2`
-/

namespace A353663.P13997079084027308379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094727 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) % 2

end

end A353663.P13997079084027308379

namespace A353663

/-- `∑{e}[A094727(n+1)+1, #]!%2` -/
def P13997079084027308379.Spec : Prop :=
  ∀ n, (P13997079084027308379.a n : ℤ) = A353663 (n + 1)

end A353663

/-! ## A353663.P4065367636627788976

`A010051(A108872(n+1))`
-/

namespace A353663.P4065367636627788976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A108872 (n + 1)).toNat

end

end A353663.P4065367636627788976

namespace A353663

/-- `A010051(A108872(n+1))` -/
def P4065367636627788976.Spec : Prop :=
  ∀ n, P4065367636627788976.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P536365311401111549

`A010051(A051162(n)+2)`
-/

namespace A353663.P536365311401111549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A051162 n + 2).toNat

end

end A353663.P536365311401111549

namespace A353663

/-- `A010051(A051162(n)+2)` -/
def P536365311401111549.Spec : Prop :=
  ∀ n, P536365311401111549.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P10187300182433659493

`A080339(A051162(n)+2)`
-/

namespace A353663.P10187300182433659493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080339 (A051162 n + 2).toNat

end

end A353663.P10187300182433659493

namespace A353663

/-- `A080339(A051162(n)+2)` -/
def P10187300182433659493.Spec : Prop :=
  ∀ n, P10187300182433659493.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P13706612874568516065

`A010051(A134478(n)+2)`
-/

namespace A353663.P13706612874568516065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A134478 n + 2).toNat

end

end A353663.P13706612874568516065

namespace A353663

/-- `A010051(A134478(n)+2)` -/
def P13706612874568516065.Spec : Prop :=
  ∀ n, P13706612874568516065.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P16853618574879133328

`A010051(A094727(comp[∑[n]]))`
-/

namespace A353663.P16853618574879133328
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A094727 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A353663.P16853618574879133328

namespace A353663

/-- `A010051(A094727(comp[∑[n]]))` -/
def P16853618574879133328.Spec : Prop :=
  ∀ n, P16853618574879133328.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P2950748045743708400

`abs(A151763(A134478(n)+2))`
-/

namespace A353663.P2950748045743708400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A151763 (A134478 n + 2).toNat|

end

end A353663.P2950748045743708400

namespace A353663

/-- `abs(A151763(A134478(n)+2))` -/
def P2950748045743708400.Spec : Prop :=
  ∀ n, P2950748045743708400.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P4139178089201715891

`A010051(A094727(n+1)+1)`
-/

namespace A353663.P4139178089201715891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A094727 (n + 1) + 1).toNat

end

end A353663.P4139178089201715891

namespace A353663

/-- `A010051(A094727(n+1)+1)` -/
def P4139178089201715891.Spec : Prop :=
  ∀ n, P4139178089201715891.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P6189384810652728341

`A157928(A353612(n+1)+1)`
-/

namespace A353663.P6189384810652728341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A353612 (n + 1) + 1).toNat

end

end A353663.P6189384810652728341

namespace A353663

/-- `A157928(A353612(n+1)+1)` -/
def P6189384810652728341.Spec : Prop :=
  ∀ n, P6189384810652728341.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P10968679493319060659

`A353612(n+1)/A108872(n+1)`
-/

namespace A353663.P10968679493319060659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353612 (n + 1) : ℚ) / (A108872 (n + 1) : ℚ)

end

end A353663.P10968679493319060659

namespace A353663

/-- `A353612(n+1)/A108872(n+1)` -/
def P10968679493319060659.Spec : Prop :=
  ∀ n, P10968679493319060659.a n = (A353663 (n + 1) : ℚ)

end A353663

/-! ## A353663.P11125281223121217655

`A353612(n+1)/A221919(n+1)`
-/

namespace A353663.P11125281223121217655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353612 (n + 1) : ℚ) / (A221919 (n + 1) : ℚ)

end

end A353663.P11125281223121217655

namespace A353663

/-- `A353612(n+1)/A221919(n+1)` -/
def P11125281223121217655.Spec : Prop :=
  ∀ n, P11125281223121217655.a n = (A353663 (n + 1) : ℚ)

end A353663

/-! ## A353663.P2556403194984617233

`C(A020639(A108872(n+1)²), A108872(n+1))`
-/

namespace A353663.P2556403194984617233
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (A108872 (n + 1) ^ 2).toNat).toNat (A108872 (n + 1)).toNat

end

end A353663.P2556403194984617233

namespace A353663

/-- `C(A020639(A108872(n+1)²), A108872(n+1))` -/
def P2556403194984617233.Spec : Prop :=
  ∀ n, (P2556403194984617233.a n : ℤ) = A353663 (n + 1)

end A353663

/-! ## A353663.P8478266862841790011

`A143538(A292565(n+1))`
-/

namespace A353663.P8478266862841790011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (A292565 (n + 1)).toNat

end

end A353663.P8478266862841790011

namespace A353663

/-- `A143538(A292565(n+1))` -/
def P8478266862841790011.Spec : Prop :=
  ∀ n, P8478266862841790011.a n = A353663 (n + 1)

end A353663

/-! ## A353663.P3452879041180530159

`A157928(A353612(n+1)²)`
-/

namespace A353663.P3452879041180530159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A353612 (n + 1) ^ 2).toNat

end

end A353663.P3452879041180530159

namespace A353663

/-- `A157928(A353612(n+1)²)` -/
def P3452879041180530159.Spec : Prop :=
  ∀ n, P3452879041180530159.a n = A353663 (n + 1)

end A353663

/-!
# A353664: Expansion of e.g.f. exp((exp(x) - 1)^3).

The programs for A353664, there is no canonical definition to state claims against.
-/

/-! ## A353664.P4594944658454942448

`A357869(A155212(n)+4)`
-/

namespace A353664.P4594944658454942448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357869 (A155212 n + 4).toNat

end

end A353664.P4594944658454942448

/-! ## A353664.P3210824533995354520

`A357869(A056000(n)+6)`
-/

namespace A353664.P3210824533995354520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357869 (A056000 n + 6).toNat

end

end A353664.P3210824533995354520

/-! ## A353664.P6683832538104187079

`A357869(A133263(n+4)-6)`
-/

namespace A353664.P6683832538104187079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357869 (A133263 (n + 4) - 6).toNat

end

end A353664.P6683832538104187079

/-! ## A353664.P17728228283370963129

`A357869(A000217(n+3)+n)`
-/

namespace A353664.P17728228283370963129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357869 (A000217 (n + 3) + (n : ℤ)).toNat

end

end A353664.P17728228283370963129

/-! ## A353664.P13574984210704181944

`A357869(eq[3, A122201(n)])`
-/

namespace A353664.P13574984210704181944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357869 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353664.P13574984210704181944

/-!
# A353665: Expansion of e.g.f. exp((exp(x) - 1)^4).

The programs for A353665, there is no canonical definition to state claims against.
-/

/-! ## A353665.P18071034431738726232

`A357869(Δ[A111396(n)]-2)`
-/

namespace A353665.P18071034431738726232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357869 (f1 (n + 1) - f1 n - 2).toNat

end

end A353665.P18071034431738726232

/-! ## A353665.P1919536348842736452

`A357869(A000096(n+3)+n+1)`
-/

namespace A353665.P1919536348842736452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357869 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A353665.P1919536348842736452

/-! ## A353665.P10639618865538179552

`A353775(gcd(4*C(C(n, 2)+1, 2), n*(n*(n-5)+5)²))`
-/

namespace A353665.P10639618865538179552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353775 (Int.gcd (4 * Nat.choose (Nat.choose n 2 + 1) 2 : ℤ) ((n : ℤ) * ((n : ℤ) * ((n : ℤ) - 5) + 5) ^ 2))

end

end A353665.P10639618865538179552

/-! ## A353665.P3875141485816134754

`A088440(A353775(n))`
-/

namespace A353665.P3875141485816134754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088440 (A353775 n).toNat

end

end A353665.P3875141485816134754

/-!
# A353666: a(n) = gcd(n, A351546(n)).

The programs for A353666, the canonical program `A353666.P3692679567967800425` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353666 has offset 1).

The definition of A353666 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353666.P15502047705627734324

`(n+1)/A353667(n+1)`
-/

namespace A353666.P15502047705627734324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353667 (n + 1) : ℚ)

end

end A353666.P15502047705627734324

namespace A353666

/-- `(n+1)/A353667(n+1)` -/
def P15502047705627734324.Spec : Prop :=
  ∀ n, P15502047705627734324.a n = (A353666 (n + 1) : ℚ)

end A353666

/-! ## A353666.P3692679567967800425

`gcd(n+1, A351546(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353666

/-- `gcd(n+1, A351546(n+1))` -/
def P3692679567967800425.Spec : Prop :=
  ∀ n, (P3692679567967800425.a n : ℤ) = A353666 (n + 1)

theorem P3692679567967800425.correct : P3692679567967800425.Spec := by
  intro n
  simp only [A353666, Nat.add_sub_cancel]

end A353666

/-! ## A353666.P4041480978844553922

`A351546(n+1)/A353668(n+1)`
-/

namespace A353666.P4041480978844553922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351546 (n + 1) : ℚ) / (A353668 (n + 1) : ℚ)

end

end A353666.P4041480978844553922

namespace A353666

/-- `A351546(n+1)/A353668(n+1)` -/
def P4041480978844553922.Spec : Prop :=
  ∀ n, P4041480978844553922.a n = (A353666 (n + 1) : ℚ)

end A353666

/-! ## A353666.P16751591288066860722

`A000203(n+1)/(A351544(n+1)*A353668(n+1))`
-/

namespace A353666.P16751591288066860722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A351544 (n + 1) * A353668 (n + 1) : ℚ)

end

end A353666.P16751591288066860722

namespace A353666

/-- `A000203(n+1)/(A351544(n+1)*A353668(n+1))` -/
def P16751591288066860722.Spec : Prop :=
  ∀ n, P16751591288066860722.a n = (A353666 (n + 1) : ℚ)

end A353666

/-! ## A353666.P4482184773739107449

`gcd(A000203(n+1)/A351544(n+1), A009194(n+1))`
-/

namespace A353666.P4482184773739107449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ))) (A009194 (n + 1))

end

end A353666.P4482184773739107449

namespace A353666

/-- `gcd(A000203(n+1)/A351544(n+1), A009194(n+1))` -/
def P4482184773739107449.Spec : Prop :=
  ∀ n, (P4482184773739107449.a n : ℤ) = A353666 (n + 1)

end A353666

/-! ## A353666.P6113782103982321476

`lcm(A017665(n+1), A351546(n+1))/A017665(n+1)`
-/

namespace A353666.P6113782103982321476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A017665 (n + 1)) (A351546 (n + 1)) : ℚ) / (A017665 (n + 1) : ℚ)

end

end A353666.P6113782103982321476

namespace A353666

/-- `lcm(A017665(n+1), A351546(n+1))/A017665(n+1)` -/
def P6113782103982321476.Spec : Prop :=
  ∀ n, P6113782103982321476.a n = (A353666 (n + 1) : ℚ)

end A353666

/-! ## A353666.P3999791323843183619

`abs(A143348(n+1)/(A351544(n+1)*A353668(n+1)))`
-/

namespace A353666.P3999791323843183619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A351544 (n + 1) * A353668 (n + 1) : ℚ)|

end

end A353666.P3999791323843183619

namespace A353666

/-- `abs(A143348(n+1)/(A351544(n+1)*A353668(n+1)))` -/
def P3999791323843183619.Spec : Prop :=
  ∀ n, P3999791323843183619.a n = (A353666 (n + 1) : ℚ)

end A353666

/-! ## A353666.P13642737374046620181

`A004525(A074400(n+1)/(A351544(n+1)*A353668(n+1)))`
-/

namespace A353666.P13642737374046620181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A351544 (n + 1) * A353668 (n + 1) : ℚ))).toNat

end

end A353666.P13642737374046620181

namespace A353666

/-- `A004525(A074400(n+1)/(A351544(n+1)*A353668(n+1)))` -/
def P13642737374046620181.Spec : Prop :=
  ∀ n, P13642737374046620181.a n = A353666 (n + 1)

end A353666

/-! ## A353666.P8207527254494341870

`A004525(A074400(n+1)/A353668(n+1))/A351544(n+1)`
-/

namespace A353666.P8207527254494341870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A353668 (n + 1) : ℚ))).toNat : ℚ) / (A351544 (n + 1) : ℚ)

end

end A353666.P8207527254494341870

namespace A353666

/-- `A004525(A074400(n+1)/A353668(n+1))/A351544(n+1)` -/
def P8207527254494341870.Spec : Prop :=
  ∀ n, P8207527254494341870.a n = (A353666 (n + 1) : ℚ)

end A353666

/-! ## A353666.P10196537880920186582

`gcd(A137668(n+1), A325640(n+1))`
-/

namespace A353666.P10196537880920186582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A137668 (n + 1)) (A325640 (n + 1))

end

end A353666.P10196537880920186582

namespace A353666

/-- `gcd(A137668(n+1), A325640(n+1))` -/
def P10196537880920186582.Spec : Prop :=
  ∀ n, (P10196537880920186582.a n : ℤ) = A353666 (n + 1)

end A353666

/-!
# A353667: a(n) = n / gcd(n, A351546(n)).

The programs for A353667, the canonical program `A353667.P4254365963197736758` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353667 has offset 1).

The definition of A353667 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353666, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353667.P4254365963197736758

`(n+1)/A353666(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353667

/-- `(n+1)/A353666(n+1)` -/
def P4254365963197736758.Spec : Prop :=
  ∀ n, P4254365963197736758.a n = (A353667 (n + 1) : ℚ)

end A353667

/-! ## A353667.P3770039754859252641

`(n+1)/gcd(n+1, A351546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353667.P3770039754859252641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A351546 (n + 1)) : ℚ)

end

end A353667.P3770039754859252641

namespace A353667

/-- `(n+1)/gcd(n+1, A351546(n+1))` -/
def P3770039754859252641.Spec : Prop :=
  ∀ n, P3770039754859252641.a n = (A353667 (n + 1) : ℚ)

end A353667

/-! ## A353667.P1417725628121252151

`(n+1)/gcd(A000203(n+1)/A351544(n+1), A009194(n+1))`
-/

namespace A353667.P1417725628121252151
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((A000203 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ))) (A009194 (n + 1)) : ℚ)

end

end A353667.P1417725628121252151

namespace A353667

/-- `(n+1)/gcd(A000203(n+1)/A351544(n+1), A009194(n+1))` -/
def P1417725628121252151.Spec : Prop :=
  ∀ n, P1417725628121252151.a n = (A353667 (n + 1) : ℚ)

end A353667

/-! ## A353667.P9721902108077620683

`(n+1)/floor(lcm(A017665(n+1), A351546(n+1))/A017665(n+1))`
-/

namespace A353667.P9721902108077620683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (⌊(Int.lcm (A017665 (n + 1)) (A351546 (n + 1)) : ℚ) / (A017665 (n + 1) : ℚ)⌋ : ℚ)

end

end A353667.P9721902108077620683

namespace A353667

/-- `(n+1)/floor(lcm(A017665(n+1), A351546(n+1))/A017665(n+1))` -/
def P9721902108077620683.Spec : Prop :=
  ∀ n, P9721902108077620683.a n = (A353667 (n + 1) : ℚ)

end A353667

/-! ## A353667.P2567104204304466781

`(n+1)/gcd(A009194(n+1), A036898(A116533(n+1)))`
-/

namespace A353667.P2567104204304466781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A009194 (n + 1)) (A036898 (A116533 (n + 1)).toNat) : ℚ)

end

end A353667.P2567104204304466781

namespace A353667

/-- `(n+1)/gcd(A009194(n+1), A036898(A116533(n+1)))` -/
def P2567104204304466781.Spec : Prop :=
  ∀ n, P2567104204304466781.a n = (A353667 (n + 1) : ℚ)

end A353667

/-!
# A353668: a(n) = A351546(n) / gcd(n, A351546(n)).

The programs for A353668, the canonical program `A353668.P18386353074867683989` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353668 has offset 1).

The definition of A353668 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353668.P18386353074867683989

`A351546(n+1)/gcd(n+1, A351546(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A353668

/-- `A351546(n+1)/gcd(n+1, A351546(n+1))` -/
def P18386353074867683989.Spec : Prop :=
  ∀ n, P18386353074867683989.a n = (A353668 (n + 1) : ℚ)

end A353668

/-! ## A353668.P73168624146697010

`A351546(n+1)/A353666(n+1)`
-/

namespace A353668.P73168624146697010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351546 (n + 1) : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353668.P73168624146697010

namespace A353668

/-- `A351546(n+1)/A353666(n+1)` -/
def P73168624146697010.Spec : Prop :=
  ∀ n, P73168624146697010.a n = (A353668 (n + 1) : ℚ)

end A353668

/-! ## A353668.P16879900792343962685

`gcd(A017665(n+1), A351546(n+1))`
-/

namespace A353668.P16879900792343962685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017665 (n + 1)) (A351546 (n + 1))

end

end A353668.P16879900792343962685

namespace A353668

/-- `gcd(A017665(n+1), A351546(n+1))` -/
def P16879900792343962685.Spec : Prop :=
  ∀ n, (P16879900792343962685.a n : ℤ) = A353668 (n + 1)

end A353668

/-! ## A353668.P12862573369932698086

`A351547(n+1)/(A353666(n+1)*A354997(n+1))`
-/

namespace A353668.P12862573369932698086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351547 (n + 1) : ℚ) / (A353666 (n + 1) * A354997 (n + 1) : ℚ)

end

end A353668.P12862573369932698086

namespace A353668

/-- `A351547(n+1)/(A353666(n+1)*A354997(n+1))` -/
def P12862573369932698086.Spec : Prop :=
  ∀ n, P12862573369932698086.a n = (A353668 (n + 1) : ℚ)

end A353668

/-! ## A353668.P6033905004044026900

`abs(A143348(n+1)/(A351544(n+1)*A353666(n+1)))`
-/

namespace A353668.P6033905004044026900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A143348 (n + 1) : ℚ) / (A351544 (n + 1) * A353666 (n + 1) : ℚ)|

end

end A353668.P6033905004044026900

namespace A353668

/-- `abs(A143348(n+1)/(A351544(n+1)*A353666(n+1)))` -/
def P6033905004044026900.Spec : Prop :=
  ∀ n, P6033905004044026900.a n = (A353668 (n + 1) : ℚ)

end A353668

/-! ## A353668.P8869728637578306526

`A351545(n+1)/A351544(n+1)*A351547(n+1)/A353666(n+1)`
-/

namespace A353668.P8869728637578306526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351545 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ) * (A351547 (n + 1) : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353668.P8869728637578306526

namespace A353668

/-- `A351545(n+1)/A351544(n+1)*A351547(n+1)/A353666(n+1)` -/
def P8869728637578306526.Spec : Prop :=
  ∀ n, P8869728637578306526.a n = (A353668 (n + 1) : ℚ)

end A353668

/-! ## A353668.P9417698803628300262

`A004525(A074400(n+1)/(A351544(n+1)*A353666(n+1)))`
-/

namespace A353668.P9417698803628300262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A351544 (n + 1) * A353666 (n + 1) : ℚ))).toNat

end

end A353668.P9417698803628300262

namespace A353668

/-- `A004525(A074400(n+1)/(A351544(n+1)*A353666(n+1)))` -/
def P9417698803628300262.Spec : Prop :=
  ∀ n, P9417698803628300262.a n = A353668 (n + 1)

end A353668

/-! ## A353668.P387881049683882221

`A004525(A074400(n+1)/A351544(n+1))/A353666(n+1)`
-/

namespace A353668.P387881049683882221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / (A351544 (n + 1) : ℚ))).toNat : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353668.P387881049683882221

namespace A353668

/-- `A004525(A074400(n+1)/A351544(n+1))/A353666(n+1)` -/
def P387881049683882221.Spec : Prop :=
  ∀ n, P387881049683882221.a n = (A353668 (n + 1) : ℚ)

end A353668

/-!
# A353669: a(n) = 1 if n is a nonsquare that has an even number of prime factors with multiplicity, otherwise 0.

The programs for A353669, the canonical program `A353669.P11051102965587005951` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353669 has offset 1).

The definition of A353669 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A065043, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353669.P11051102965587005951

`A065043(n+1)-A010052(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A353669

/-- `A065043(n+1)-A010052(n+1)` -/
def P11051102965587005951.Spec : Prop :=
  ∀ n, P11051102965587005951.a n = A353669 (n + 1)

theorem P11051102965587005951.correct : P11051102965587005951.Spec := by
  intro n
  simp only [A353669, Nat.add_sub_cancel]

end A353669

/-! ## A353669.P1575941050235659521

`1-Δ[floor(sqrt(n))]-∑{e}[n+1, #]%2`
-/

namespace A353669.P1575941050235659521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2 : ℕ) : ℤ)

end

end A353669.P1575941050235659521

namespace A353669

/-- `1-Δ[floor(sqrt(n))]-∑{e}[n+1, #]%2` -/
def P1575941050235659521.Spec : Prop :=
  ∀ n, P1575941050235659521.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P3631262401882015052

`A089233(n+1)%2`
-/

namespace A353669.P3631262401882015052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089233 (n + 1)) 2

end

end A353669.P3631262401882015052

namespace A353669

/-- `A089233(n+1)%2` -/
def P3631262401882015052.Spec : Prop :=
  ∀ n, P3631262401882015052.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P11015960316603831909

`A268374(n+1)%2`
-/

namespace A353669.P11015960316603831909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268374 (n + 1)) 2

end

end A353669.P11015960316603831909

namespace A353669

/-- `A268374(n+1)%2` -/
def P11015960316603831909.Spec : Prop :=
  ∀ n, P11015960316603831909.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P5250336705388891637

`A076413(n+1)%3`
-/

namespace A353669.P5250336705388891637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076413 (n + 1)) 3

end

end A353669.P5250336705388891637

namespace A353669

/-- `A076413(n+1)%3` -/
def P5250336705388891637.Spec : Prop :=
  ∀ n, P5250336705388891637.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P14840320273564209324

`char[A119899(n+1)-1]`
-/

namespace A353669.P14840320273564209324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119899 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353669.P14840320273564209324

namespace A353669

/-- `char[A119899(n+1)-1]` -/
def P14840320273564209324.Spec : Prop :=
  ∀ n, (P14840320273564209324.a n : ℤ) = A353669 (n + 1)

end A353669

/-! ## A353669.P10164259547168074422

`char[lt[A316524(n+1), 0]]`
-/

namespace A353669.P10164259547168074422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353669.P10164259547168074422

namespace A353669

/-- `char[lt[A316524(n+1), 0]]` -/
def P10164259547168074422.Spec : Prop :=
  ∀ n, (P10164259547168074422.a n : ℤ) = A353669 (n + 1)

end A353669

/-! ## A353669.P2885027647797603548

`gcd(2, A081707(n+1))-1`
-/

namespace A353669.P2885027647797603548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A081707 (n + 1)) : ℤ) - 1

end

end A353669.P2885027647797603548

namespace A353669

/-- `gcd(2, A081707(n+1))-1` -/
def P2885027647797603548.Spec : Prop :=
  ∀ n, P2885027647797603548.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P1333726397602003524

`floor(A344617(n+1)/2)²`
-/

namespace A353669.P1333726397602003524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A344617 (n + 1) : ℚ) / 2⌋ ^ 2

end

end A353669.P1333726397602003524

namespace A353669

/-- `floor(A344617(n+1)/2)²` -/
def P1333726397602003524.Spec : Prop :=
  ∀ n, P1333726397602003524.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P589857700669785359

`(A015996(n+1)+∏{e}[n+1, #+1])%2`
-/

namespace A353669.P589857700669785359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015996 (n + 1) + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)) 2

end

end A353669.P589857700669785359

namespace A353669

/-- `(A015996(n+1)+∏{e}[n+1, #+1])%2` -/
def P589857700669785359.Spec : Prop :=
  ∀ n, P589857700669785359.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P5891099183135547435

`A021913(A065814(n+1))`
-/

namespace A353669.P5891099183135547435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A065814 (n + 1)).toNat

end

end A353669.P5891099183135547435

namespace A353669

/-- `A021913(A065814(n+1))` -/
def P5891099183135547435.Spec : Prop :=
  ∀ n, P5891099183135547435.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P12357519814244844321

`A162641(A055076(n+1))`
-/

namespace A353669.P12357519814244844321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162641 (A055076 (n + 1)).toNat

end

end A353669.P12357519814244844321

namespace A353669

/-- `A162641(A055076(n+1))` -/
def P12357519814244844321.Spec : Prop :=
  ∀ n, P12357519814244844321.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P14648717229313350761

`val(A020639(A081707(n+1)), 2)`
-/

namespace A353669.P14648717229313350761
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A020639 (A081707 (n + 1)).toNat).toNat 2

end

end A353669.P14648717229313350761

namespace A353669

/-- `val(A020639(A081707(n+1)), 2)` -/
def P14648717229313350761.Spec : Prop :=
  ∀ n, (P14648717229313350761.a n : ℤ) = A353669 (n + 1)

end A353669

/-! ## A353669.P15223881201763770534

`A057427(val(A081707(n+1), 2))`
-/

namespace A353669.P15223881201763770534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.valuation (A081707 (n + 1)).toNat 2)

end

end A353669.P15223881201763770534

namespace A353669

/-- `A057427(val(A081707(n+1), 2))` -/
def P15223881201763770534.Spec : Prop :=
  ∀ n, P15223881201763770534.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P8300414164934317299

`A015996(n+1)%A275437(n)`
-/

namespace A353669.P8300414164934317299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015996 (n + 1)) (A275437 n)

end

end A353669.P8300414164934317299

namespace A353669

/-- `A015996(n+1)%A275437(n)` -/
def P8300414164934317299.Spec : Prop :=
  ∀ n, P8300414164934317299.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P12332031185120357689

`A016001(n+1)%A275437(n)`
-/

namespace A353669.P12332031185120357689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016001 (n + 1)) (A275437 n)

end

end A353669.P12332031185120357689

namespace A353669

/-- `A016001(n+1)%A275437(n)` -/
def P12332031185120357689.Spec : Prop :=
  ∀ n, P12332031185120357689.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P16336233471631636204

`A016003(n+1)%A275437(n)`
-/

namespace A353669.P16336233471631636204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016003 (n + 1)) (A275437 n)

end

end A353669.P16336233471631636204

namespace A353669

/-- `A016003(n+1)%A275437(n)` -/
def P16336233471631636204.Spec : Prop :=
  ∀ n, P16336233471631636204.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P4293938171143547658

`A016006(n+1)%A275437(n)`
-/

namespace A353669.P4293938171143547658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016006 (n + 1)) (A275437 n)

end

end A353669.P4293938171143547658

namespace A353669

/-- `A016006(n+1)%A275437(n)` -/
def P4293938171143547658.Spec : Prop :=
  ∀ n, P4293938171143547658.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P10292753484769626507

`A016008(n+1)%A275437(n)`
-/

namespace A353669.P10292753484769626507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016008 (n + 1)) (A275437 n)

end

end A353669.P10292753484769626507

namespace A353669

/-- `A016008(n+1)%A275437(n)` -/
def P10292753484769626507.Spec : Prop :=
  ∀ n, P10292753484769626507.a n = A353669 (n + 1)

end A353669

/-! ## A353669.P17003786354679593363

`A018892(n+1)%A275437(n)`
-/

namespace A353669.P17003786354679593363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018892 (n + 1)) (A275437 n)

end

end A353669.P17003786354679593363

namespace A353669

/-- `A018892(n+1)%A275437(n)` -/
def P17003786354679593363.Spec : Prop :=
  ∀ n, P17003786354679593363.a n = A353669 (n + 1)

end A353669

/-!
# A353670: a(n) = 1 if the odd part of n is a prime, otherwise 0.

The programs for A353670, the canonical program `A353670.P11477558282565807478` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353670 has offset 1).

The definition of A353670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, A010051, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353670.P11477558282565807478

`A010051(A000265(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353670

/-- `A010051(A000265(n+1))` -/
def P11477558282565807478.Spec : Prop :=
  ∀ n, P11477558282565807478.a n = A353670 (n + 1)

theorem P11477558282565807478.correct : P11477558282565807478.Spec := by
  intro n
  simp only [A353670, Nat.add_sub_cancel]

end A353670

/-! ## A353670.P13795722475615890458

`A353671(2*(n+1))`
-/

namespace A353670.P13795722475615890458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353671 (2 * (n + 1))

end

end A353670.P13795722475615890458

namespace A353670

/-- `A353671(2*(n+1))` -/
def P13795722475615890458.Spec : Prop :=
  ∀ n, P13795722475615890458.a n = A353670 (n + 1)

end A353670

/-! ## A353670.P10574758453614802119

`and(1, A289311(n+1))`
-/

namespace A353670.P10574758453614802119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A289311 (n + 1))

end

end A353670.P10574758453614802119

namespace A353670

/-- `and(1, A289311(n+1))` -/
def P10574758453614802119.Spec : Prop :=
  ∀ n, P10574758453614802119.a n = A353670 (n + 1)

end A353670

/-! ## A353670.P18315740005161792521

`char[A038550(n+1)-1]`
-/

namespace A353670.P18315740005161792521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353670.P18315740005161792521

namespace A353670

/-- `char[A038550(n+1)-1]` -/
def P18315740005161792521.Spec : Prop :=
  ∀ n, (P18315740005161792521.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P8779346535158500979

`C(C(2, Δ[A248517(n)]), 2)`
-/

namespace A353670.P8779346535158500979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (f1 (n + 1) - f1 n).toNat) 2

end

end A353670.P8779346535158500979

namespace A353670

/-- `C(C(2, Δ[A248517(n)]), 2)` -/
def P8779346535158500979.Spec : Prop :=
  ∀ n, (P8779346535158500979.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P16634231217459825770

`char[eq[1, A087436(n+1)]]`
-/

namespace A353670.P16634231217459825770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353670.P16634231217459825770

namespace A353670

/-- `char[eq[1, A087436(n+1)]]` -/
def P16634231217459825770.Spec : Prop :=
  ∀ n, (P16634231217459825770.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P2919941680059773354

`char[eq[2, A301957(n+1)]]`
-/

namespace A353670.P2919941680059773354
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353670.P2919941680059773354

namespace A353670

/-- `char[eq[2, A301957(n+1)]]` -/
def P2919941680059773354.Spec : Prop :=
  ∀ n, (P2919941680059773354.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P16840621335327231595

`char[eq[2, A318450(n+1)]]`
-/

namespace A353670.P16840621335327231595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318450 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353670.P16840621335327231595

namespace A353670

/-- `char[eq[2, A318450(n+1)]]` -/
def P16840621335327231595.Spec : Prop :=
  ∀ n, (P16840621335327231595.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P13903799372931025237

`and(2, A126865(n+1))/2`
-/

namespace A353670.P13903799372931025237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A126865 (n + 1)) : ℚ) / 2

end

end A353670.P13903799372931025237

namespace A353670

/-- `and(2, A126865(n+1))/2` -/
def P13903799372931025237.Spec : Prop :=
  ∀ n, P13903799372931025237.a n = (A353670 (n + 1) : ℚ)

end A353670

/-! ## A353670.P17045062251713275178

`C(C(2, A069283(n+1)), 2)`
-/

namespace A353670.P17045062251713275178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A069283 (n + 1)).toNat) 2

end

end A353670.P17045062251713275178

namespace A353670

/-- `C(C(2, A069283(n+1)), 2)` -/
def P17045062251713275178.Spec : Prop :=
  ∀ n, (P17045062251713275178.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P11742438333353250006

`C(C(2, A318451(n+1)), 2)`
-/

namespace A353670.P11742438333353250006
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A318451 (n + 1)).toNat) 2

end

end A353670.P11742438333353250006

namespace A353670

/-- `C(C(2, A318451(n+1)), 2)` -/
def P11742438333353250006.Spec : Prop :=
  ∀ n, (P11742438333353250006.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P11186464874219449017

`and(1, C(2, A336158(n+1)))`
-/

namespace A353670.P11186464874219449017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.choose 2 (A336158 (n + 1)).toNat)

end

end A353670.P11186464874219449017

namespace A353670

/-- `and(1, C(2, A336158(n+1)))` -/
def P11186464874219449017.Spec : Prop :=
  ∀ n, (P11186464874219449017.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P9555168196152060661

`C(C(2, A325392(2*(n+1))), 2)`
-/

namespace A353670.P9555168196152060661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A325392 (2 * (n + 1))).toNat) 2

end

end A353670.P9555168196152060661

namespace A353670

/-- `C(C(2, A325392(2*(n+1))), 2)` -/
def P9555168196152060661.Spec : Prop :=
  ∀ n, (P9555168196152060661.a n : ℤ) = A353670 (n + 1)

end A353670

/-! ## A353670.P6584750162951740252

`A101264(A025480(n))`
-/

namespace A353670.P6584750162951740252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (A025480 n).toNat

end

end A353670.P6584750162951740252

namespace A353670

/-- `A101264(A025480(n))` -/
def P6584750162951740252.Spec : Prop :=
  ∀ n, P6584750162951740252.a n = A353670 (n + 1)

end A353670

/-! ## A353670.P12634845445407016014

`A014061(A001227(n+1))`
-/

namespace A353670.P12634845445407016014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014061 (A001227 (n + 1)).toNat

end

end A353670.P12634845445407016014

namespace A353670

/-- `A014061(A001227(n+1))` -/
def P12634845445407016014.Spec : Prop :=
  ∀ n, P12634845445407016014.a n = A353670 (n + 1)

end A353670

/-! ## A353670.P3233319550860607449

`A010051(A064989(n+1))`
-/

namespace A353670.P3233319550860607449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A064989 (n + 1)).toNat

end

end A353670.P3233319550860607449

namespace A353670

/-- `A010051(A064989(n+1))` -/
def P3233319550860607449.Spec : Prop :=
  ∀ n, P3233319550860607449.a n = A353670 (n + 1)

end A353670

/-! ## A353670.P10528294504002965298

`A014707(A126865(n+1))`
-/

namespace A353670.P10528294504002965298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A126865 (n + 1)).toNat

end

end A353670.P10528294504002965298

namespace A353670

/-- `A014707(A126865(n+1))` -/
def P10528294504002965298.Spec : Prop :=
  ∀ n, P10528294504002965298.a n = A353670 (n + 1)

end A353670

/-! ## A353670.P15258391883129929351

`A099395(A097272(n+1))`
-/

namespace A353670.P15258391883129929351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099395 (A097272 (n + 1)).toNat

end

end A353670.P15258391883129929351

namespace A353670

/-- `A099395(A097272(n+1))` -/
def P15258391883129929351.Spec : Prop :=
  ∀ n, P15258391883129929351.a n = A353670 (n + 1)

end A353670

/-! ## A353670.P6637794654688100218

`A010051(A198328(n+1))`
-/

namespace A353670.P6637794654688100218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A198328 (n + 1)).toNat

end

end A353670.P6637794654688100218

namespace A353670

/-- `A010051(A198328(n+1))` -/
def P6637794654688100218.Spec : Prop :=
  ∀ n, P6637794654688100218.a n = A353670 (n + 1)

end A353670

/-! ## A353670.P2906682078527879551

`A010051(A348747(n+1))`
-/

namespace A353670.P2906682078527879551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A348747 (n + 1)).toNat

end

end A353670.P2906682078527879551

namespace A353670

/-- `A010051(A348747(n+1))` -/
def P2906682078527879551.Spec : Prop :=
  ∀ n, P2906682078527879551.a n = A353670 (n + 1)

end A353670

/-!
# A353671: a(n) = 1 if n is even and the odd part of n is a prime, otherwise 0.

The programs for A353671, the canonical program `A353671.P4076259781783744274` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353671 has offset 1).

The definition of A353671 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353670, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353671.P4076259781783744274

`A059841(n+1)*A353670(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A353671

/-- `A059841(n+1)*A353670(n+1)` -/
def P4076259781783744274.Spec : Prop :=
  ∀ n, P4076259781783744274.a n = A353671 (n + 1)

theorem P4076259781783744274.correct : P4076259781783744274.Spec := by
  intro n
  simp only [A353671, Nat.add_sub_cancel]

end A353671

/-! ## A353671.P4769147733091499863

`A353670(n+1)-A000035(n+1)*A010051(n+1)`
-/

namespace A353671.P4769147733091499863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1) - A000035 (n + 1) * A010051 (n + 1)

end

end A353671.P4769147733091499863

namespace A353671

/-- `A353670(n+1)-A000035(n+1)*A010051(n+1)` -/
def P4769147733091499863.Spec : Prop :=
  ∀ n, P4769147733091499863.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P17951679190738340339

`and(n, A353670(n+1))`
-/

namespace A353671.P17951679190738340339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A353670 (n + 1))

end

end A353671.P17951679190738340339

namespace A353671

/-- `and(n, A353670(n+1))` -/
def P17951679190738340339.Spec : Prop :=
  ∀ n, P17951679190738340339.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P7939499839891630840

`char[A100368(n+1)-1]`
-/

namespace A353671.P7939499839891630840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353671.P7939499839891630840

namespace A353671

/-- `char[A100368(n+1)-1]` -/
def P7939499839891630840.Spec : Prop :=
  ∀ n, (P7939499839891630840.a n : ℤ) = A353671 (n + 1)

end A353671

/-! ## A353671.P5440946479181220816

`and(1, n*A289311(n+1))`
-/

namespace A353671.P5440946479181220816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A289311 (n + 1))

end

end A353671.P5440946479181220816

namespace A353671

/-- `and(1, n*A289311(n+1))` -/
def P5440946479181220816.Spec : Prop :=
  ∀ n, P5440946479181220816.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P11860466095915002225

`char[2*A038550(n+1)-1]`
-/

namespace A353671.P11860466095915002225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038550 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353671.P11860466095915002225

namespace A353671

/-- `char[2*A038550(n+1)-1]` -/
def P11860466095915002225.Spec : Prop :=
  ∀ n, (P11860466095915002225.a n : ℤ) = A353671 (n + 1)

end A353671

/-! ## A353671.P9234121161213292911

`and(n², C(2, A336158(n+1)))`
-/

namespace A353671.P9234121161213292911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n ^ 2) (Nat.choose 2 (A336158 (n + 1)).toNat)

end

end A353671.P9234121161213292911

namespace A353671

/-- `and(n², C(2, A336158(n+1)))` -/
def P9234121161213292911.Spec : Prop :=
  ∀ n, (P9234121161213292911.a n : ℤ) = A353671 (n + 1)

end A353671

/-! ## A353671.P13255282280630279760

`and(n, A101264(floor(n/(xor(n, n+1)+1))))`
-/

namespace A353671.P13255282280630279760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A101264 ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋.toNat)

end

end A353671.P13255282280630279760

namespace A353671

/-- `and(n, A101264(floor(n/(xor(n, n+1)+1))))` -/
def P13255282280630279760.Spec : Prop :=
  ∀ n, P13255282280630279760.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P18262963183463777928

`and(n, A010051((n+1)/and(n+1, -(n+1))))`
-/

namespace A353671.P18262963183463777928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat)

end

end A353671.P18262963183463777928

namespace A353671

/-- `and(n, A010051((n+1)/and(n+1, -(n+1))))` -/
def P18262963183463777928.Spec : Prop :=
  ∀ n, P18262963183463777928.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P14509033289933657017

`A010051(A086767(n))`
-/

namespace A353671.P14509033289933657017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A086767 n).toNat

end

end A353671.P14509033289933657017

namespace A353671

/-- `A010051(A086767(n))` -/
def P14509033289933657017.Spec : Prop :=
  ∀ n, P14509033289933657017.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P4088290596353927523

`A353670(A133265(n))`
-/

namespace A353671.P4088290596353927523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (A133265 n).toNat

end

end A353671.P4088290596353927523

namespace A353671

/-- `A353670(A133265(n))` -/
def P4088290596353927523.Spec : Prop :=
  ∀ n, P4088290596353927523.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P17915286728098937257

`A353670(A152271(n))`
-/

namespace A353671.P17915286728098937257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (A152271 n).toNat

end

end A353671.P17915286728098937257

namespace A353671

/-- `A353670(A152271(n))` -/
def P17915286728098937257.Spec : Prop :=
  ∀ n, P17915286728098937257.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P5531278566524170931

`A010051(A171435(n+1))`
-/

namespace A353671.P5531278566524170931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A171435 (n + 1)).toNat

end

end A353671.P5531278566524170931

namespace A353671

/-- `A010051(A171435(n+1))` -/
def P5531278566524170931.Spec : Prop :=
  ∀ n, P5531278566524170931.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P15295386529126869339

`A010051(A306546(n+1))`
-/

namespace A353671.P15295386529126869339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A306546 (n + 1)).toNat

end

end A353671.P15295386529126869339

namespace A353671

/-- `A010051(A306546(n+1))` -/
def P15295386529126869339.Spec : Prop :=
  ∀ n, P15295386529126869339.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P2401690292259280160

`A165560(A179312(n+1))`
-/

namespace A353671.P2401690292259280160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165560 (A179312 (n + 1)).toNat

end

end A353671.P2401690292259280160

namespace A353671

/-- `A165560(A179312(n+1))` -/
def P2401690292259280160.Spec : Prop :=
  ∀ n, P2401690292259280160.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P9075939763904930437

`A353670(A005451(n+1))`
-/

namespace A353671.P9075939763904930437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (A005451 (n + 1)).toNat

end

end A353671.P9075939763904930437

namespace A353671

/-- `A353670(A005451(n+1))` -/
def P9075939763904930437.Spec : Prop :=
  ∀ n, P9075939763904930437.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P4899409811409049306

`val(A000040(A336156(n+1)), 11)`
-/

namespace A353671.P4899409811409049306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000040 (A336156 (n + 1)).toNat).toNat 11

end

end A353671.P4899409811409049306

namespace A353671

/-- `val(A000040(A336156(n+1)), 11)` -/
def P4899409811409049306.Spec : Prop :=
  ∀ n, (P4899409811409049306.a n : ℤ) = A353671 (n + 1)

end A353671

/-! ## A353671.P12922510884964291738

`A000035(n*A353670(n+1))`
-/

namespace A353671.P12922510884964291738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) * A353670 (n + 1)).toNat

end

end A353671.P12922510884964291738

namespace A353671

/-- `A000035(n*A353670(n+1))` -/
def P12922510884964291738.Spec : Prop :=
  ∀ n, P12922510884964291738.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P187078158175502338

`A266070(n)*A353670(n+1)`
-/

namespace A353671.P187078158175502338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n * A353670 (n + 1)

end

end A353671.P187078158175502338

namespace A353671

/-- `A266070(n)*A353670(n+1)` -/
def P187078158175502338.Spec : Prop :=
  ∀ n, P187078158175502338.a n = A353671 (n + 1)

end A353671

/-! ## A353671.P12958888662638062761

`and(n, A010051(A000265(n+1)))`
-/

namespace A353671.P12958888662638062761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A010051 (A000265 (n + 1)).toNat)

end

end A353671.P12958888662638062761

namespace A353671

/-- `and(n, A010051(A000265(n+1)))` -/
def P12958888662638062761.Spec : Prop :=
  ∀ n, P12958888662638062761.a n = A353671 (n + 1)

end A353671

/-!
# A353672: a(n) = 1 if n is an even number with an even number of distinct prime factors, otherwise 0.

The programs for A353672, the canonical program `A353672.P6082994054517516666` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353672 has offset 1).

The definition of A353672 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353674, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353672.P6082994054517516666

`A059841(n+1)-A353674(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A353672

/-- `A059841(n+1)-A353674(n+1)` -/
def P6082994054517516666.Spec : Prop :=
  ∀ n, P6082994054517516666.a n = A353672 (n + 1)

theorem P6082994054517516666.correct : P6082994054517516666.Spec := by
  intro n
  simp only [A353672, Nat.add_sub_cancel]

end A353672

/-! ## A353672.P17748345274863581601

`A059841(n+1)*(1-A092248(n+1))`
-/

namespace A353672.P17748345274863581601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * (1 - A092248 (n + 1))

end

end A353672.P17748345274863581601

namespace A353672

/-- `A059841(n+1)*(1-A092248(n+1))` -/
def P17748345274863581601.Spec : Prop :=
  ∀ n, P17748345274863581601.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P13217625963057493160

`∑{p}[n+1, n*#]%2`
-/

namespace A353672.P13217625963057493160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), n * p) % 2

end

end A353672.P13217625963057493160

namespace A353672

/-- `∑{p}[n+1, n*#]%2` -/
def P13217625963057493160.Spec : Prop :=
  ∀ n, (P13217625963057493160.a n : ℤ) = A353672 (n + 1)

end A353672

/-! ## A353672.P10598631889392439222

`and(1, ∑{p}[n+1, n*#])`
-/

namespace A353672.P10598631889392439222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), n * p)

end

end A353672.P10598631889392439222

namespace A353672

/-- `and(1, ∑{p}[n+1, n*#])` -/
def P10598631889392439222.Spec : Prop :=
  ∀ n, (P10598631889392439222.a n : ℤ) = A353672 (n + 1)

end A353672

/-! ## A353672.P4469689290476614324

`lcm(n, ∑{p}[n+1, #])%2`
-/

namespace A353672.P4469689290476614324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (∑ p ∈ Nat.primeFactors (f1 n), p) % 2

end

end A353672.P4469689290476614324

namespace A353672

/-- `lcm(n, ∑{p}[n+1, #])%2` -/
def P4469689290476614324.Spec : Prop :=
  ∀ n, (P4469689290476614324.a n : ℤ) = A353672 (n + 1)

end A353672

/-! ## A353672.P10116760752363408326

`and(n, ∑{p}[n+1, #]%2)`
-/

namespace A353672.P10116760752363408326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n ((∑ p ∈ Nat.primeFactors (f1 n), p) % 2)

end

end A353672.P10116760752363408326

namespace A353672

/-- `and(n, ∑{p}[n+1, #]%2)` -/
def P10116760752363408326.Spec : Prop :=
  ∀ n, (P10116760752363408326.a n : ℤ) = A353672 (n + 1)

end A353672

/-! ## A353672.P1671485331829879538

`and(1, and(n, ∑{p}[n+1, #]))`
-/

namespace A353672.P1671485331829879538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.land n (∑ p ∈ Nat.primeFactors (f1 n), p))

end

end A353672.P1671485331829879538

namespace A353672

/-- `and(1, and(n, ∑{p}[n+1, #]))` -/
def P1671485331829879538.Spec : Prop :=
  ∀ n, (P1671485331829879538.a n : ℤ) = A353672 (n + 1)

end A353672

/-! ## A353672.P10873380590852109044

`(∑{p}[n+1, n+1+#]%2)²`
-/

namespace A353672.P10873380590852109044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), (n + 1 + p)) % 2) ^ 2

end

end A353672.P10873380590852109044

namespace A353672

/-- `(∑{p}[n+1, n+1+#]%2)²` -/
def P10873380590852109044.Spec : Prop :=
  ∀ n, (P10873380590852109044.a n : ℤ) = A353672 (n + 1)

end A353672

/-! ## A353672.P5007639476909512849

`A334341(n+1)%2`
-/

namespace A353672.P5007639476909512849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A334341 (n + 1)) 2

end

end A353672.P5007639476909512849

namespace A353672

/-- `A334341(n+1)%2` -/
def P5007639476909512849.Spec : Prop :=
  ∀ n, P5007639476909512849.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P14784035803331030998

`val(A340677(n+1), 2)`
-/

namespace A353672.P14784035803331030998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A340677 (n + 1)).toNat 2

end

end A353672.P14784035803331030998

namespace A353672

/-- `val(A340677(n+1), 2)` -/
def P14784035803331030998.Spec : Prop :=
  ∀ n, (P14784035803331030998.a n : ℤ) = A353672 (n + 1)

end A353672

/-! ## A353672.P23973837191624914

`A353555(∏{p}[n+1, #])`
-/

namespace A353672.P23973837191624914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353555 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353672.P23973837191624914

namespace A353672

/-- `A353555(∏{p}[n+1, #])` -/
def P23973837191624914.Spec : Prop :=
  ∀ n, P23973837191624914.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P13225469031345921501

`A358775(∏{p}[n+1, #])`
-/

namespace A353672.P13225469031345921501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358775 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353672.P13225469031345921501

namespace A353672

/-- `A358775(∏{p}[n+1, #])` -/
def P13225469031345921501.Spec : Prop :=
  ∀ n, P13225469031345921501.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P14769128555635843074

`A369965(∏{p}[n+1, #])`
-/

namespace A353672.P14769128555635843074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369965 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353672.P14769128555635843074

namespace A353672

/-- `A369965(∏{p}[n+1, #])` -/
def P14769128555635843074.Spec : Prop :=
  ∀ n, P14769128555635843074.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P1533239883340597684

`and(n², A297155(n+1))`
-/

namespace A353672.P1533239883340597684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n ^ 2 : ℤ) (A297155 (n + 1))

end

end A353672.P1533239883340597684

namespace A353672

/-- `and(n², A297155(n+1))` -/
def P1533239883340597684.Spec : Prop :=
  ∀ n, P1533239883340597684.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P9226283678707342868

`and(n, 1-A092248(n+1))`
-/

namespace A353672.P9226283678707342868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (1 - A092248 (n + 1))

end

end A353672.P9226283678707342868

namespace A353672

/-- `and(n, 1-A092248(n+1))` -/
def P9226283678707342868.Spec : Prop :=
  ∀ n, P9226283678707342868.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P4338940616176369105

`and(1, n*A005067(n+1))`
-/

namespace A353672.P4338940616176369105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A005067 (n + 1))

end

end A353672.P4338940616176369105

namespace A353672

/-- `and(1, n*A005067(n+1))` -/
def P4338940616176369105.Spec : Prop :=
  ∀ n, P4338940616176369105.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P13979439189330185430

`and(1, n*A008472(n+1))`
-/

namespace A353672.P13979439189330185430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A008472 (n + 1))

end

end A353672.P13979439189330185430

namespace A353672

/-- `and(1, n*A008472(n+1))` -/
def P13979439189330185430.Spec : Prop :=
  ∀ n, P13979439189330185430.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P16774060197553889719

`and(1, n*A222416(n+1))`
-/

namespace A353672.P16774060197553889719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A222416 (n + 1))

end

end A353672.P16774060197553889719

namespace A353672

/-- `and(1, n*A222416(n+1))` -/
def P16774060197553889719.Spec : Prop :=
  ∀ n, P16774060197553889719.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P13994871713688498558

`and(1, n*A300852(n+1))`
-/

namespace A353672.P13994871713688498558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A300852 (n + 1))

end

end A353672.P13994871713688498558

namespace A353672

/-- `and(1, n*A300852(n+1))` -/
def P13994871713688498558.Spec : Prop :=
  ∀ n, P13994871713688498558.a n = A353672 (n + 1)

end A353672

/-! ## A353672.P115989352369336962

`n%gcd(2, A001221(n+1))`
-/

namespace A353672.P115989352369336962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Int.gcd 2 (A001221 (n + 1))

end

end A353672.P115989352369336962

namespace A353672

/-- `n%gcd(2, A001221(n+1))` -/
def P115989352369336962.Spec : Prop :=
  ∀ n, (P115989352369336962.a n : ℤ) = A353672 (n + 1)

end A353672

/-!
# A353673: a(n) = 1 if n is an odd number with an odd number of distinct prime factors, otherwise 0.

The programs for A353673, the canonical program `A353673.P8628848255766858977` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353673 has offset 1).

The definition of A353673 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092248, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353673.P17666940928097989664

`A092248(n+1)-A353674(n+1)`
-/

namespace A353673.P17666940928097989664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092248 (n + 1) - A353674 (n + 1)

end

end A353673.P17666940928097989664

namespace A353673

/-- `A092248(n+1)-A353674(n+1)` -/
def P17666940928097989664.Spec : Prop :=
  ∀ n, P17666940928097989664.a n = A353673 (n + 1)

theorem P17666940928097989664.correct : P17666940928097989664.Spec := by
  intro n
  simp only [A353673, Nat.add_sub_cancel, A353673.P17666940928097989664.a, A353673.P8628848255766858977.a, A000035, A000035.P2023072528413494694.a, A092248, A092248.P6012556233968533590.a, A353674, A353674.P6834734169791984961.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353673

/-! ## A353673.P4795996721254144514

`A000035(n+1)-A353675(n+1)`
-/

namespace A353673.P4795996721254144514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) - A353675 (n + 1)

end

end A353673.P4795996721254144514

namespace A353673

/-- `A000035(n+1)-A353675(n+1)` -/
def P4795996721254144514.Spec : Prop :=
  ∀ n, P4795996721254144514.a n = A353673 (n + 1)

theorem P4795996721254144514.correct : P4795996721254144514.Spec := by
  intro n
  simp only [A353673, Nat.add_sub_cancel, A353673.P4795996721254144514.a, A353673.P8628848255766858977.a, A000035, A000035.P2023072528413494694.a, A092248, A092248.P6012556233968533590.a, A353675, A353675.P18320268670417396297.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353673

/-! ## A353673.P8628848255766858977

`A000035(n+1)*A092248(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353673

/-- `A000035(n+1)*A092248(n+1)` -/
def P8628848255766858977.Spec : Prop :=
  ∀ n, P8628848255766858977.a n = A353673 (n + 1)

theorem P8628848255766858977.correct : P8628848255766858977.Spec := by
  intro n
  simp only [A353673, Nat.add_sub_cancel]

end A353673

/-! ## A353673.P11909082664861948415

`∑{p}[n+1, #]%gcd(2, n)`
-/

namespace A353673.P11909082664861948415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p) % Nat.gcd 2 n

end

end A353673.P11909082664861948415

namespace A353673

/-- `∑{p}[n+1, #]%gcd(2, n)` -/
def P11909082664861948415.Spec : Prop :=
  ∀ n, (P11909082664861948415.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P16945128051169629927

`and(char[2*n], ∑{p}[n+1, #])`
-/

namespace A353673.P16945128051169629927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), p)

end

end A353673.P16945128051169629927

namespace A353673

/-- `and(char[2*n], ∑{p}[n+1, #])` -/
def P16945128051169629927.Spec : Prop :=
  ∀ n, (P16945128051169629927.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P15845064408703339241

`((n+1)*∑{p}[n+1, #])%2`
-/

namespace A353673.P15845064408703339241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), p) % 2

end

end A353673.P15845064408703339241

namespace A353673

/-- `((n+1)*∑{p}[n+1, #])%2` -/
def P15845064408703339241.Spec : Prop :=
  ∀ n, (P15845064408703339241.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P9641977547098980284

`and(1, (n+1)*∑{p}[n+1, #])`
-/

namespace A353673.P9641977547098980284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((n + 1) * (∑ p ∈ Nat.primeFactors (f1 n), p))

end

end A353673.P9641977547098980284

namespace A353673

/-- `and(1, (n+1)*∑{p}[n+1, #])` -/
def P9641977547098980284.Spec : Prop :=
  ∀ n, (P9641977547098980284.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P10680555795077321077

`∑{e}[n+1, (n+1)^#]%2`
-/

namespace A353673.P10680555795077321077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ Nat.factorization (f1 n) p) % 2

end

end A353673.P10680555795077321077

namespace A353673

/-- `∑{e}[n+1, (n+1)^#]%2` -/
def P10680555795077321077.Spec : Prop :=
  ∀ n, (P10680555795077321077.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P12164571214223160340

`and(1, ∑{e}[n+1, (n+1)^#])`
-/

namespace A353673.P12164571214223160340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), (n + 1) ^ Nat.factorization (f1 n) p)

end

end A353673.P12164571214223160340

namespace A353673

/-- `and(1, ∑{e}[n+1, (n+1)^#])` -/
def P12164571214223160340.Spec : Prop :=
  ∀ n, (P12164571214223160340.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P5026668985878900946

`lcm(n+1, ∑{p}[n+1, #])%2`
-/

namespace A353673.P5026668985878900946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), p) % 2

end

end A353673.P5026668985878900946

namespace A353673

/-- `lcm(n+1, ∑{p}[n+1, #])%2` -/
def P5026668985878900946.Spec : Prop :=
  ∀ n, (P5026668985878900946.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P1101812873244265202

`and(n+1, ∑{p}[n+1, #])%2`
-/

namespace A353673.P1101812873244265202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), p) % 2

end

end A353673.P1101812873244265202

namespace A353673

/-- `and(n+1, ∑{p}[n+1, #])%2` -/
def P1101812873244265202.Spec : Prop :=
  ∀ n, (P1101812873244265202.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P2538566957435001595

`and(1, and(n+1, ∑{p}[n+1, #]))`
-/

namespace A353673.P2538566957435001595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (Nat.land (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), p))

end

end A353673.P2538566957435001595

namespace A353673

/-- `and(1, and(n+1, ∑{p}[n+1, #]))` -/
def P2538566957435001595.Spec : Prop :=
  ∀ n, (P2538566957435001595.a n : ℤ) = A353673 (n + 1)

end A353673

/-! ## A353673.P12817301126606134760

`∑{p}[n+1, (n+1)²/#]%2`
-/

namespace A353673.P12817301126606134760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ 2 : ℚ) / (p : ℚ))) 2

end

end A353673.P12817301126606134760

namespace A353673

/-- `∑{p}[n+1, (n+1)²/#]%2` -/
def P12817301126606134760.Spec : Prop :=
  ∀ n, P12817301126606134760.a n = A353673 (n + 1)

end A353673

/-! ## A353673.P14753017730055593452

`A328260(n+1)%2`
-/

namespace A353673.P14753017730055593452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328260 (n + 1)) 2

end

end A353673.P14753017730055593452

namespace A353673

/-- `A328260(n+1)%2` -/
def P14753017730055593452.Spec : Prop :=
  ∀ n, P14753017730055593452.a n = A353673 (n + 1)

end A353673

/-! ## A353673.P9193987483964491494

`A345302(n+1)%2`
-/

namespace A353673.P9193987483964491494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345302 (n + 1)) 2

end

end A353673.P9193987483964491494

namespace A353673

/-- `A345302(n+1)%2` -/
def P9193987483964491494.Spec : Prop :=
  ∀ n, P9193987483964491494.a n = A353673 (n + 1)

end A353673

/-! ## A353673.P1740673907964072316

`A345304(n+1)%2`
-/

namespace A353673.P1740673907964072316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345304 (n + 1)) 2

end

end A353673.P1740673907964072316

namespace A353673

/-- `A345304(n+1)%2` -/
def P1740673907964072316.Spec : Prop :=
  ∀ n, P1740673907964072316.a n = A353673 (n + 1)

end A353673

/-! ## A353673.P7545577398646242550

`A345306(n+1)%2`
-/

namespace A353673.P7545577398646242550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345306 (n + 1)) 2

end

end A353673.P7545577398646242550

namespace A353673

/-- `A345306(n+1)%2` -/
def P7545577398646242550.Spec : Prop :=
  ∀ n, P7545577398646242550.a n = A353673 (n + 1)

end A353673

/-! ## A353673.P16354732320987169025

`A367167(n+1)%2`
-/

namespace A353673.P16354732320987169025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A367167 (n + 1)) 2

end

end A353673.P16354732320987169025

namespace A353673

/-- `A367167(n+1)%2` -/
def P16354732320987169025.Spec : Prop :=
  ∀ n, P16354732320987169025.a n = A353673 (n + 1)

end A353673

/-! ## A353673.P4376419244700131659

`A353558(∏{p}[n+1, #])`
-/

namespace A353673.P4376419244700131659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353558 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353673.P4376419244700131659

namespace A353673

/-- `A353558(∏{p}[n+1, #])` -/
def P4376419244700131659.Spec : Prop :=
  ∀ n, P4376419244700131659.a n = A353673 (n + 1)

end A353673

/-! ## A353673.P8889819692329000529

`A359606(∏{p}[n+1, #])`
-/

namespace A353673.P8889819692329000529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359606 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353673.P8889819692329000529

namespace A353673

/-- `A359606(∏{p}[n+1, #])` -/
def P8889819692329000529.Spec : Prop :=
  ∀ n, P8889819692329000529.a n = A353673 (n + 1)

end A353673

/-!
# A353674: a(n) = 1 if n is an even number with an odd number of distinct prime factors, otherwise 0.

The programs for A353674, the canonical program `A353674.P6834734169791984961` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353674 has offset 1).

The definition of A353674 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092248, A353673, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353674.P6834734169791984961

`A092248(n+1)-A353673(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353674

/-- `A092248(n+1)-A353673(n+1)` -/
def P6834734169791984961.Spec : Prop :=
  ∀ n, P6834734169791984961.a n = A353674 (n + 1)

theorem P6834734169791984961.correct : P6834734169791984961.Spec := by
  intro n
  simp only [A353674, Nat.add_sub_cancel]

end A353674

/-! ## A353674.P14512748423027704638

`A059841(n+1)*A092248(n+1)`
-/

namespace A353674.P14512748423027704638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) * A092248 (n + 1)

end

end A353674.P14512748423027704638

namespace A353674

/-- `A059841(n+1)*A092248(n+1)` -/
def P14512748423027704638.Spec : Prop :=
  ∀ n, P14512748423027704638.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P8051050292245223313

`∑{e}[n+1, n^#]%2`
-/

namespace A353674.P8051050292245223313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), n ^ Nat.factorization (f1 n) p) % 2

end

end A353674.P8051050292245223313

namespace A353674

/-- `∑{e}[n+1, n^#]%2` -/
def P8051050292245223313.Spec : Prop :=
  ∀ n, (P8051050292245223313.a n : ℤ) = A353674 (n + 1)

end A353674

/-! ## A353674.P15335786844770919014

`n%gcd(2, ∑{p}[n+1, #])`
-/

namespace A353674.P15335786844770919014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A353674.P15335786844770919014

namespace A353674

/-- `n%gcd(2, ∑{p}[n+1, #])` -/
def P15335786844770919014.Spec : Prop :=
  ∀ n, (P15335786844770919014.a n : ℤ) = A353674 (n + 1)

end A353674

/-! ## A353674.P13472444739098382148

`and(1, ∑{e}[n+1, n^#])`
-/

namespace A353674.P13472444739098382148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ p ∈ Nat.primeFactors (f1 n), n ^ Nat.factorization (f1 n) p)

end

end A353674.P13472444739098382148

namespace A353674

/-- `and(1, ∑{e}[n+1, n^#])` -/
def P13472444739098382148.Spec : Prop :=
  ∀ n, (P13472444739098382148.a n : ℤ) = A353674 (n + 1)

end A353674

/-! ## A353674.P7046004756235340934

`val(A099636(n+1), 2)`
-/

namespace A353674.P7046004756235340934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A099636 (n + 1)).toNat 2

end

end A353674.P7046004756235340934

namespace A353674

/-- `val(A099636(n+1), 2)` -/
def P7046004756235340934.Spec : Prop :=
  ∀ n, (P7046004756235340934.a n : ℤ) = A353674 (n + 1)

end A353674

/-! ## A353674.P2405843356221594389

`and(n, A092248(n+1))`
-/

namespace A353674.P2405843356221594389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A092248 (n + 1))

end

end A353674.P2405843356221594389

namespace A353674

/-- `and(n, A092248(n+1))` -/
def P2405843356221594389.Spec : Prop :=
  ∀ n, P2405843356221594389.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P8902544102281312437

`A353556(∏{p}[n+1, #])`
-/

namespace A353674.P8902544102281312437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353674.P8902544102281312437

namespace A353674

/-- `A353556(∏{p}[n+1, #])` -/
def P8902544102281312437.Spec : Prop :=
  ∀ n, P8902544102281312437.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P10230627070166397487

`gcd(2, A099635(n+1))-1`
-/

namespace A353674.P10230627070166397487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A099635 (n + 1)) : ℤ) - 1

end

end A353674.P10230627070166397487

namespace A353674

/-- `gcd(2, A099635(n+1))-1` -/
def P10230627070166397487.Spec : Prop :=
  ∀ n, P10230627070166397487.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P2281720126929297105

`(n*A001221(n+1))%2`
-/

namespace A353674.P2281720126929297105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A001221 (n + 1)) 2

end

end A353674.P2281720126929297105

namespace A353674

/-- `(n*A001221(n+1))%2` -/
def P2281720126929297105.Spec : Prop :=
  ∀ n, P2281720126929297105.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P1455531567843896737

`and(1, n*A158210(n+1))`
-/

namespace A353674.P1455531567843896737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A158210 (n + 1))

end

end A353674.P1455531567843896737

namespace A353674

/-- `and(1, n*A158210(n+1))` -/
def P1455531567843896737.Spec : Prop :=
  ∀ n, P1455531567843896737.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P16903145758330444736

`and(1, n*A229109(n+1))`
-/

namespace A353674.P16903145758330444736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A229109 (n + 1))

end

end A353674.P16903145758330444736

namespace A353674

/-- `and(1, n*A229109(n+1))` -/
def P16903145758330444736.Spec : Prop :=
  ∀ n, P16903145758330444736.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P16419080370005723806

`and(1, n*A316523(n+1))`
-/

namespace A353674.P16419080370005723806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A316523 (n + 1))

end

end A353674.P16419080370005723806

namespace A353674

/-- `and(1, n*A316523(n+1))` -/
def P16419080370005723806.Spec : Prop :=
  ∀ n, P16419080370005723806.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P3583488398205804781

`and(1, n*A001221(2*(n+1)))`
-/

namespace A353674.P3583488398205804781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((n : ℤ) * A001221 (2 * (n + 1)))

end

end A353674.P3583488398205804781

namespace A353674

/-- `and(1, n*A001221(2*(n+1)))` -/
def P3583488398205804781.Spec : Prop :=
  ∀ n, P3583488398205804781.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P3995010767662750137

`A007814(A099636(n+1))`
-/

namespace A353674.P3995010767662750137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A099636 (n + 1)).toNat

end

end A353674.P3995010767662750137

namespace A353674

/-- `A007814(A099636(n+1))` -/
def P3995010767662750137.Spec : Prop :=
  ∀ n, P3995010767662750137.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P6635099725392051733

`A353556(A007947(n+1))`
-/

namespace A353674.P6635099725392051733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (A007947 (n + 1)).toNat

end

end A353674.P6635099725392051733

namespace A353674

/-- `A353556(A007947(n+1))` -/
def P6635099725392051733.Spec : Prop :=
  ∀ n, P6635099725392051733.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P12189835204402933272

`A353556(A372379(n+1))`
-/

namespace A353674.P12189835204402933272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353556 (A372379 (n + 1)).toNat

end

end A353674.P12189835204402933272

namespace A353674

/-- `A353556(A372379(n+1))` -/
def P12189835204402933272.Spec : Prop :=
  ∀ n, P12189835204402933272.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P10190357115730534913

`A000035(n)-A353672(n+1)`
-/

namespace A353674.P10190357115730534913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n - A353672 (n + 1)

end

end A353674.P10190357115730534913

namespace A353674

/-- `A000035(n)-A353672(n+1)` -/
def P10190357115730534913.Spec : Prop :=
  ∀ n, P10190357115730534913.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P16837772910432321971

`A000035(n*A092248(n+1))`
-/

namespace A353674.P16837772910432321971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((n : ℤ) * A092248 (n + 1)).toNat

end

end A353674.P16837772910432321971

namespace A353674

/-- `A000035(n*A092248(n+1))` -/
def P16837772910432321971.Spec : Prop :=
  ∀ n, P16837772910432321971.a n = A353674 (n + 1)

end A353674

/-! ## A353674.P8982612799037963834

`A001221(n+1)%A000034(n)`
-/

namespace A353674.P8982612799037963834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001221 (n + 1)) (A000034 n)

end

end A353674.P8982612799037963834

namespace A353674

/-- `A001221(n+1)%A000034(n)` -/
def P8982612799037963834.Spec : Prop :=
  ∀ n, P8982612799037963834.a n = A353674 (n + 1)

end A353674

/-!
# A353675: a(n) = 1 if n is an odd number with an even number of distinct prime factors, otherwise 0.

The programs for A353675, the canonical program `A353675.P18320268670417396297` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353675 has offset 1).

The definition of A353675 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353675.P18320268670417396297

`A000035(n+1)-A353673(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A353675

/-- `A000035(n+1)-A353673(n+1)` -/
def P18320268670417396297.Spec : Prop :=
  ∀ n, P18320268670417396297.a n = A353675 (n + 1)

theorem P18320268670417396297.correct : P18320268670417396297.Spec := by
  intro n
  simp only [A353675, Nat.add_sub_cancel]

end A353675

/-! ## A353675.P814267650625027573

`A000035(n+1)*(1-A092248(n+1))`
-/

namespace A353675.P814267650625027573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * (1 - A092248 (n + 1))

end

end A353675.P814267650625027573

namespace A353675

/-- `A000035(n+1)*(1-A092248(n+1))` -/
def P814267650625027573.Spec : Prop :=
  ∀ n, P814267650625027573.a n = A353675 (n + 1)

theorem P814267650625027573.correct : P814267650625027573.Spec := by
  intro n
  simp only [A353675, Nat.add_sub_cancel, A353675.P814267650625027573.a, A353675.P18320268670417396297.a, A000035, A000035.P2023072528413494694.a, A092248, A092248.P6012556233968533590.a, A353673, A353673.P8628848255766858977.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353675

/-! ## A353675.P17141564657100030987

`ceil(∏{p}[n+1, 2/#-1])`
-/

namespace A353675.P17141564657100030987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (2 / (p : ℚ) - 1)⌉

end

end A353675.P17141564657100030987

namespace A353675

/-- `ceil(∏{p}[n+1, 2/#-1])` -/
def P17141564657100030987.Spec : Prop :=
  ∀ n, P17141564657100030987.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P7137439879217448984

`(n+1)%gcd(2, ∑{p}[n+1, #])`
-/

namespace A353675.P7137439879217448984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.gcd 2 (∑ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P7137439879217448984

namespace A353675

/-- `(n+1)%gcd(2, ∑{p}[n+1, #])` -/
def P7137439879217448984.Spec : Prop :=
  ∀ n, (P7137439879217448984.a n : ℤ) = A353675 (n + 1)

end A353675

/-! ## A353675.P13768072119026789172

`and(∑{p}[n+1, #]+1, char[2*n])`
-/

namespace A353675.P13768072119026789172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (∑ p ∈ Nat.primeFactors (f1 n), p + 1) (if ∃ j, f2 j = n then 1 else 0)

end

end A353675.P13768072119026789172

namespace A353675

/-- `and(∑{p}[n+1, #]+1, char[2*n])` -/
def P13768072119026789172.Spec : Prop :=
  ∀ n, (P13768072119026789172.a n : ℤ) = A353675 (n + 1)

end A353675

/-! ## A353675.P4241272073006248804

`((∑{p}[n+1, #]+1)*(n+1))%2`
-/

namespace A353675.P4241272073006248804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), p + 1) * (n + 1) % 2

end

end A353675.P4241272073006248804

namespace A353675

/-- `((∑{p}[n+1, #]+1)*(n+1))%2` -/
def P4241272073006248804.Spec : Prop :=
  ∀ n, (P4241272073006248804.a n : ℤ) = A353675 (n + 1)

end A353675

/-! ## A353675.P2737630062870137300

`and(val(n+1, 2)+1, (∑{p}[n+1, ceil(n/#)]+1+n)²)`
-/

namespace A353675.P2737630062870137300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ) ((∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ + 1 + (n : ℤ)) ^ 2)

end

end A353675.P2737630062870137300

namespace A353675

/-- `and(val(n+1, 2)+1, (∑{p}[n+1, ceil(n/#)]+1+n)²)` -/
def P2737630062870137300.Spec : Prop :=
  ∀ n, P2737630062870137300.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P16542557758891327653

`A353374(∏{p}[n+1, #])`
-/

namespace A353675.P16542557758891327653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353374 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P16542557758891327653

namespace A353675

/-- `A353374(∏{p}[n+1, #])` -/
def P16542557758891327653.Spec : Prop :=
  ∀ n, P16542557758891327653.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P7579097566516048792

`A353557(∏{p}[n+1, #])`
-/

namespace A353675.P7579097566516048792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353557 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P7579097566516048792

namespace A353675

/-- `A353557(∏{p}[n+1, #])` -/
def P7579097566516048792.Spec : Prop :=
  ∀ n, P7579097566516048792.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P3381683960142693930

`A358680(∏{p}[n+1, #])`
-/

namespace A353675.P3381683960142693930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358680 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P3381683960142693930

namespace A353675

/-- `A358680(∏{p}[n+1, #])` -/
def P3381683960142693930.Spec : Prop :=
  ∀ n, P3381683960142693930.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P1514519242678811492

`A359465(∏{p}[n+1, #])`
-/

namespace A353675.P1514519242678811492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359465 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P1514519242678811492

namespace A353675

/-- `A359465(∏{p}[n+1, #])` -/
def P1514519242678811492.Spec : Prop :=
  ∀ n, P1514519242678811492.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P9728019133194338126

`A359595(∏{p}[n+1, #])`
-/

namespace A353675.P9728019133194338126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359595 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P9728019133194338126

namespace A353675

/-- `A359595(∏{p}[n+1, #])` -/
def P9728019133194338126.Spec : Prop :=
  ∀ n, P9728019133194338126.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P16630644289966454668

`A359605(∏{p}[n+1, #])`
-/

namespace A353675.P16630644289966454668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359605 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P16630644289966454668

namespace A353675

/-- `A359605(∏{p}[n+1, #])` -/
def P16630644289966454668.Spec : Prop :=
  ∀ n, P16630644289966454668.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P17662842526926305210

`A359781(∏{p}[n+1, #])`
-/

namespace A353675.P17662842526926305210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359781 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P17662842526926305210

namespace A353675

/-- `A359781(∏{p}[n+1, #])` -/
def P17662842526926305210.Spec : Prop :=
  ∀ n, P17662842526926305210.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P1140664513544980294

`A368997(∏{p}[n+1, #])`
-/

namespace A353675.P1140664513544980294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368997 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P1140664513544980294

namespace A353675

/-- `A368997(∏{p}[n+1, #])` -/
def P1140664513544980294.Spec : Prop :=
  ∀ n, P1140664513544980294.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P16743297309074375870

`A369001(∏{p}[n+1, #])`
-/

namespace A353675.P16743297309074375870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P16743297309074375870

namespace A353675

/-- `A369001(∏{p}[n+1, #])` -/
def P16743297309074375870.Spec : Prop :=
  ∀ n, P16743297309074375870.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P2669035869372666394

`A369975(∏{p}[n+1, #])`
-/

namespace A353675.P2669035869372666394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369975 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P2669035869372666394

namespace A353675

/-- `A369975(∏{p}[n+1, #])` -/
def P2669035869372666394.Spec : Prop :=
  ∀ n, P2669035869372666394.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P17633591713382907979

`A373374(∏{p}[n+1, #])`
-/

namespace A353675.P17633591713382907979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373374 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353675.P17633591713382907979

namespace A353675

/-- `A373374(∏{p}[n+1, #])` -/
def P17633591713382907979.Spec : Prop :=
  ∀ n, P17633591713382907979.a n = A353675 (n + 1)

end A353675

/-! ## A353675.P5544090118492143746

`log2(gcd(2, A028235(n+1)))`
-/

namespace A353675.P5544090118492143746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A028235 (n + 1)) : ℝ)

end

end A353675.P5544090118492143746

namespace A353675

/-- `log2(gcd(2, A028235(n+1)))` -/
def P5544090118492143746.Spec : Prop :=
  ∀ n, P5544090118492143746.a n = (A353675 (n + 1) : ℝ)

end A353675

/-! ## A353675.P9396143380134724343

`and(1, A066504(n+1)+1)`
-/

namespace A353675.P9396143380134724343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A066504 (n + 1) + 1)

end

end A353675.P9396143380134724343

namespace A353675

/-- `and(1, A066504(n+1)+1)` -/
def P9396143380134724343.Spec : Prop :=
  ∀ n, P9396143380134724343.a n = A353675 (n + 1)

end A353675

/-!
# A353676: a(n) = 1 if n is an odd number with exactly 2 distinct prime factors, otherwise 0.

The programs for A353676, the canonical program `A353676.P532583491734346456` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353676 has offset 1).

The definition of A353676 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A215480, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353676.P532583491734346456

`A000035(n+1)*A215480(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A353676

/-- `A000035(n+1)*A215480(n+1)` -/
def P532583491734346456.Spec : Prop :=
  ∀ n, P532583491734346456.a n = A353676 (n + 1)

theorem P532583491734346456.correct : P532583491734346456.Spec := by
  intro n
  simp only [A353676, Nat.add_sub_cancel]

end A353676

/-! ## A353676.P3363051343323187263

`A353480(∏{p}[n+1, #])`
-/

namespace A353676.P3363051343323187263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353676.P3363051343323187263

namespace A353676

/-- `A353480(∏{p}[n+1, #])` -/
def P3363051343323187263.Spec : Prop :=
  ∀ n, P3363051343323187263.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P6257159932607076619

`A353481(∏{p}[n+1, #])`
-/

namespace A353676.P6257159932607076619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A353676.P6257159932607076619

namespace A353676

/-- `A353481(∏{p}[n+1, #])` -/
def P6257159932607076619.Spec : Prop :=
  ∀ n, P6257159932607076619.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P6663834749596679019

`char[eq[2, A132468(n+1)]]`
-/

namespace A353676.P6663834749596679019
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132468 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353676.P6663834749596679019

namespace A353676

/-- `char[eq[2, A132468(n+1)]]` -/
def P6663834749596679019.Spec : Prop :=
  ∀ n, (P6663834749596679019.a n : ℤ) = A353676 (n + 1)

end A353676

/-! ## A353676.P2387871929394225412

`char[eq[4, A317528(n+1)]]`
-/

namespace A353676.P2387871929394225412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317528 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353676.P2387871929394225412

namespace A353676

/-- `char[eq[4, A317528(n+1)]]` -/
def P2387871929394225412.Spec : Prop :=
  ∀ n, (P2387871929394225412.a n : ℤ) = A353676 (n + 1)

end A353676

/-! ## A353676.P10501437918657408232

`and(n+1, A215480(n+1))`
-/

namespace A353676.P10501437918657408232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A215480 (n + 1))

end

end A353676.P10501437918657408232

namespace A353676

/-- `and(n+1, A215480(n+1))` -/
def P10501437918657408232.Spec : Prop :=
  ∀ n, P10501437918657408232.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P17305086728425212016

`A215480(A141310(n))`
-/

namespace A353676.P17305086728425212016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (A141310 n).toNat

end

end A353676.P17305086728425212016

namespace A353676

/-- `A215480(A141310(n))` -/
def P17305086728425212016.Spec : Prop :=
  ∀ n, P17305086728425212016.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P10697170457572856173

`A008437(A048669(n+1))`
-/

namespace A353676.P10697170457572856173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008437 (A048669 (n + 1)).toNat

end

end A353676.P10697170457572856173

namespace A353676

/-- `A008437(A048669(n+1))` -/
def P10697170457572856173.Spec : Prop :=
  ∀ n, P10697170457572856173.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P4419792903177447949

`A353481(A007947(n+1))`
-/

namespace A353676.P4419792903177447949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353481 (A007947 (n + 1)).toNat

end

end A353676.P4419792903177447949

namespace A353676

/-- `A353481(A007947(n+1))` -/
def P4419792903177447949.Spec : Prop :=
  ∀ n, P4419792903177447949.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P11321642415820324936

`A059841(n)*A215480(n+1)`
-/

namespace A353676.P11321642415820324936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A215480 (n + 1)

end

end A353676.P11321642415820324936

namespace A353676

/-- `A059841(n)*A215480(n+1)` -/
def P11321642415820324936.Spec : Prop :=
  ∀ n, P11321642415820324936.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P8928716845021126853

`A215480(n+1)*A353675(n+1)`
-/

namespace A353676.P8928716845021126853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215480 (n + 1) * A353675 (n + 1)

end

end A353676.P8928716845021126853

namespace A353676

/-- `A215480(n+1)*A353675(n+1)` -/
def P8928716845021126853.Spec : Prop :=
  ∀ n, P8928716845021126853.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P5983138644014315317

`A024155(A040727(n)+∑{p}[n+1, A001222(#)])`
-/

namespace A353676.P5983138644014315317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (A040727 n + ∑ p ∈ Nat.primeFactors (f1 n), A001222 p).toNat

end

end A353676.P5983138644014315317

namespace A353676

/-- `A024155(A040727(n)+∑{p}[n+1, A001222(#)])` -/
def P5983138644014315317.Spec : Prop :=
  ∀ n, P5983138644014315317.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P2627168014498486629

`char[eq[2, A205745(n+1)]]`
-/

namespace A353676.P2627168014498486629
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353676.P2627168014498486629

namespace A353676

/-- `char[eq[2, A205745(n+1)]]` -/
def P2627168014498486629.Spec : Prop :=
  ∀ n, (P2627168014498486629.a n : ℤ) = A353676 (n + 1)

end A353676

/-! ## A353676.P17811045280567504998

`char[eq[2, A305614(n+1)]]`
-/

namespace A353676.P17811045280567504998
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353676.P17811045280567504998

namespace A353676

/-- `char[eq[2, A305614(n+1)]]` -/
def P17811045280567504998.Spec : Prop :=
  ∀ n, (P17811045280567504998.a n : ℤ) = A353676 (n + 1)

end A353676

/-! ## A353676.P4933000410865399026

`char[eq[2, A305614(n)]-1]`
-/

namespace A353676.P4933000410865399026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353676.P4933000410865399026

namespace A353676

/-- `char[eq[2, A305614(n)]-1]` -/
def P4933000410865399026.Spec : Prop :=
  ∀ n, (P4933000410865399026.a n : ℤ) = A353676 (n + 1)

end A353676

/-! ## A353676.P5300479856410460856

`(A215480(n+1)*A215486(n+4))%2`
-/

namespace A353676.P5300479856410460856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215480 (n + 1) * A215486 (n + 4)) 2

end

end A353676.P5300479856410460856

namespace A353676

/-- `(A215480(n+1)*A215486(n+4))%2` -/
def P5300479856410460856.Spec : Prop :=
  ∀ n, P5300479856410460856.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P6004857144289422605

`A354981(A284600(2*(n+1)))`
-/

namespace A353676.P6004857144289422605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354981 (A284600 (2 * (n + 1))).toNat

end

end A353676.P6004857144289422605

namespace A353676

/-- `A354981(A284600(2*(n+1)))` -/
def P6004857144289422605.Spec : Prop :=
  ∀ n, P6004857144289422605.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P3991433303752565918

`A003272(n)*A353675(n+1)`
-/

namespace A353676.P3991433303752565918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003272 n * A353675 (n + 1)

end

end A353676.P3991433303752565918

namespace A353676

/-- `A003272(n)*A353675(n+1)` -/
def P3991433303752565918.Spec : Prop :=
  ∀ n, P3991433303752565918.a n = A353676 (n + 1)

end A353676

/-! ## A353676.P16096744546559121570

`A066504(gcd(2-A336399(n+1), A066504(n+1)))`
-/

namespace A353676.P16096744546559121570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066504 (Int.gcd (2 - A336399 (n + 1)) (A066504 (n + 1)))

end

end A353676.P16096744546559121570

namespace A353676

/-- `A066504(gcd(2-A336399(n+1), A066504(n+1)))` -/
def P16096744546559121570.Spec : Prop :=
  ∀ n, P16096744546559121570.a n = A353676 (n + 1)

end A353676

/-!
# A353677: a(n) = 1 if n is an odd number of the form p^j * q^k, with p and q primes and gcd(phi(p^j), phi(q^k)) = 2, otherwise 0.

The programs for A353677, there is no canonical definition to state claims against.
-/

/-! ## A353677.P5337246596140243075

`A000035(n+1)*A353678(n+1)`
-/

namespace A353677.P5337246596140243075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A353678 (n + 1)

end

end A353677.P5337246596140243075

/-! ## A353677.P3088846855813900650

`and(n+1, A353678(n+1))`
-/

namespace A353677.P3088846855813900650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A353678 (n + 1))

end

end A353677.P3088846855813900650

/-! ## A353677.P12494974171374371263

`floor(A353678(n+1)/A000034(n))`
-/

namespace A353677.P12494974171374371263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353678 (n + 1) : ℚ) / (A000034 n : ℚ)⌋

end

end A353677.P12494974171374371263

/-! ## A353677.P11729172657440602426

`A353675(n+1)*A353678(n+1)`
-/

namespace A353677.P11729172657440602426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353675 (n + 1) * A353678 (n + 1)

end

end A353677.P11729172657440602426

/-! ## A353677.P8492190403594453626

`A353676(n+1)*A353678(n+1)`
-/

namespace A353677.P8492190403594453626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353676 (n + 1) * A353678 (n + 1)

end

end A353677.P8492190403594453626

/-! ## A353677.P2965379302757528678

`A353694(n+1)%(A353678(n+1)+1)`
-/

namespace A353677.P2965379302757528678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353694 (n + 1)) (A353678 (n + 1) + 1)

end

end A353677.P2965379302757528678

/-! ## A353677.P12928434439095534300

`and(A010051(A034380(n+1)), A019565(n))`
-/

namespace A353677.P12928434439095534300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (A034380 (n + 1)).toNat) (A019565 n)

end

end A353677.P12928434439095534300

/-! ## A353677.P12018579710485673319

`and(A010051(A034380(n+1)), A033573(n))`
-/

namespace A353677.P12018579710485673319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (A034380 (n + 1)).toNat) (A033573 n)

end

end A353677.P12018579710485673319

/-! ## A353677.P13070746735569522884

`and(A010051(A034380(n+1)), A080940(n+1))`
-/

namespace A353677.P13070746735569522884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010051 (A034380 (n + 1)).toNat) (A080940 (n + 1))

end

end A353677.P13070746735569522884

/-! ## A353677.P13544011313847940891

`char[eq[A034380(n+1), A053669(n+1)]]`
-/

namespace A353677.P13544011313847940891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034380 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353677.P13544011313847940891

/-!
# A353678: a(n) = 1 if the ratio of Euler totient phi to Carmichael's lambda function is 2, otherwise 0.

The programs for A353678, there is no canonical definition to state claims against.
-/

/-! ## A353678.P4741083478508691115

`char[A062373(n+1)-1]`
-/

namespace A353678.P4741083478508691115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062373 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A353678.P4741083478508691115

/-! ## A353678.P4984867233901131549

`A010051(A034380(n+1))`
-/

namespace A353678.P4984867233901131549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A034380 (n + 1)).toNat

end

end A353678.P4984867233901131549

/-! ## A353678.P15154600189952440366

`A064911(A034380(n+1)²)`
-/

namespace A353678.P15154600189952440366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A034380 (n + 1) ^ 2).toNat

end

end A353678.P15154600189952440366

/-! ## A353678.P5228540764935243172

`A211487(A034380(n+1)²)`
-/

namespace A353678.P5228540764935243172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A034380 (n + 1) ^ 2).toNat

end

end A353678.P5228540764935243172

/-! ## A353678.P1363559653931912620

`A185013(A034380(n+1)+1)`
-/

namespace A353678.P1363559653931912620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185013 (A034380 (n + 1) + 1).toNat

end

end A353678.P1363559653931912620

/-! ## A353678.P1756485118243705951

`A064911(2*A034380(n+1))`
-/

namespace A353678.P1756485118243705951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (2 * A034380 (n + 1)).toNat

end

end A353678.P1756485118243705951

/-! ## A353678.P7306687110813751933

`A324053((A034380(n+1)+1)²)`
-/

namespace A353678.P7306687110813751933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324053 ((A034380 (n + 1) + 1) ^ 2).toNat

end

end A353678.P7306687110813751933

/-! ## A353678.P1211751645507444903

`A211487(A034380(n+1)*A034380(n+1))`
-/

namespace A353678.P1211751645507444903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211487 (A034380 (n + 1) * A034380 (n + 1)).toNat

end

end A353678.P1211751645507444903

/-! ## A353678.P2852590705101294885

`A010051(A000010(n+1)/A002322(n+1))`
-/

namespace A353678.P2852590705101294885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((A000010 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ))).toNat

end

end A353678.P2852590705101294885

/-! ## A353678.P1822161236321989968

`A010051((A109606(n+1)+1)/A002322(n+1))`
-/

namespace A353678.P1822161236321989968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((A109606 (n + 1) + 1 : ℚ) / (A002322 (n + 1) : ℚ))).toNat

end

end A353678.P1822161236321989968

/-! ## A353678.P228949391658966618

`A010051((n-A219428(n+1))/A002322(n+1))`
-/

namespace A353678.P228949391658966618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway (((n : ℤ) - A219428 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ))).toNat

end

end A353678.P228949391658966618

/-! ## A353678.P12927463103918269311

`A010051(∏{p}[n+1, #-1]*A003557(n+1)/A002322(n+1))`
-/

namespace A353678.P12927463103918269311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((((∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) : ℤ) : ℚ) / (A002322 (n + 1) : ℚ))).toNat

end

end A353678.P12927463103918269311

/-! ## A353678.P15887160377061466453

`A010051((n+1)/∏{p}[n+1, #]*A173557(n+1)/A002322(n+1))`
-/

namespace A353678.P15887160377061466453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ))).toNat

end

end A353678.P15887160377061466453

/-! ## A353678.P10901181593150372308

`A010051((A048865(n+1)+A048864(n+1))/A002322(n+1))`
-/

namespace A353678.P10901181593150372308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((A048865 (n + 1) + A048864 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ))).toNat

end

end A353678.P10901181593150372308

/-! ## A353678.P1280019852710734582

`A010051(A322320(n+1)*A322321(n+1)/A002322(n+1))`
-/

namespace A353678.P1280019852710734582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((A322320 (n + 1) * A322321 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ))).toNat

end

end A353678.P1280019852710734582

/-! ## A353678.P16008560393541931492

`A010051(A322351(n+1)*A322352(n+1)/A002322(n+1))`
-/

namespace A353678.P16008560393541931492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (SequenceMachineLib.roundAway ((A322351 (n + 1) * A322352 (n + 1) : ℚ) / (A002322 (n + 1) : ℚ))).toNat

end

end A353678.P16008560393541931492

/-! ## A353678.P16353924334813424046

`A324053(A200982(A034380(n+1))²)`
-/

namespace A353678.P16353924334813424046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324053 (A200982 (A034380 (n + 1)).toNat ^ 2).toNat

end

end A353678.P16353924334813424046

/-! ## A353678.P339370804626438019

`A324053(A341860(A034380(n+1))²)`
-/

namespace A353678.P339370804626438019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324053 (A341860 (A034380 (n + 1)).toNat ^ 2).toNat

end

end A353678.P339370804626438019

/-! ## A353678.P6065224286955800470

`A046145(A034380(n+1)²-A034380(n+1))`
-/

namespace A353678.P6065224286955800470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (A034380 (n + 1) ^ 2 - A034380 (n + 1)).toNat

end

end A353678.P6065224286955800470

/-!
# A353679: Odd numbers k for which phi(k) = phi(sigma(k)).

The programs for A353679, the canonical program `A353679.P2765792584734807979` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353679 has offset 1).

The definition of A353679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 657 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353679.P14457798533248246089

`∩[2*n+1, A006872(n+1)]`
-/

namespace A353679.P14457798533248246089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P14457798533248246089

namespace A353679

/-- `∩[2*n+1, A006872(n+1)]` -/
def P14457798533248246089.Spec : Prop :=
  ∀ n, (P14457798533248246089.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P2765792584734807979

`record[A000265(A006872(n+1))]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A353679

/-- `record[A000265(A006872(n+1))]` -/
def P2765792584734807979.Spec : Prop :=
  ∀ n, P2765792584734807979.a n = A353679 (n + 1)

theorem P2765792584734807979.correct : P2765792584734807979.Spec := by
  intro n
  simp only [A353679, Nat.add_sub_cancel]

end A353679

/-! ## A353679.P13200696596145129215

`filter[A006872(n+1), A353680(#)]`
-/

namespace A353679.P13200696596145129215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353680 (f1 j).toNat = 1) n)

end

end A353679.P13200696596145129215

namespace A353679

/-- `filter[A006872(n+1), A353680(#)]` -/
def P13200696596145129215.Spec : Prop :=
  ∀ n, P13200696596145129215.a n = A353679 (n + 1)

end A353679

/-! ## A353679.P17462363734406963102

`filter[A006872(n+1), A379952(#)]`
-/

namespace A353679.P17462363734406963102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A353679.P17462363734406963102

namespace A353679

/-- `filter[A006872(n+1), A379952(#)]` -/
def P17462363734406963102.Spec : Prop :=
  ∀ n, P17462363734406963102.a n = A353679 (n + 1)

end A353679

/-! ## A353679.P10019169902564761561

`filter[A006872(n+1), A093719(#)]`
-/

namespace A353679.P10019169902564761561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A353679.P10019169902564761561

namespace A353679

/-- `filter[A006872(n+1), A093719(#)]` -/
def P10019169902564761561.Spec : Prop :=
  ∀ n, P10019169902564761561.a n = A353679 (n + 1)

end A353679

/-! ## A353679.P14454608381662875968

`lt[0, A353680(n+1)]+1`
-/

namespace A353679.P14454608381662875968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A353679.P14454608381662875968

namespace A353679

/-- `lt[0, A353680(n+1)]+1` -/
def P14454608381662875968.Spec : Prop :=
  ∀ n, (P14454608381662875968.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P18334760464680545529

`filter[A047241(n+1), A353637(#)]`
-/

namespace A353679.P18334760464680545529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353637 (f1 j).toNat = 1) n)

end

end A353679.P18334760464680545529

namespace A353679

/-- `filter[A047241(n+1), A353637(#)]` -/
def P18334760464680545529.Spec : Prop :=
  ∀ n, P18334760464680545529.a n = A353679 (n + 1)

end A353679

/-! ## A353679.P9058505051172134484

`filter[A047241(n+1), A353680(#)]`
-/

namespace A353679.P9058505051172134484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353680 (f1 j).toNat = 1) n)

end

end A353679.P9058505051172134484

namespace A353679

/-- `filter[A047241(n+1), A353680(#)]` -/
def P9058505051172134484.Spec : Prop :=
  ∀ n, P9058505051172134484.a n = A353679 (n + 1)

end A353679

/-! ## A353679.P2845827922621953215

`∩[A006872(n+1), A047241(n+1)]`
-/

namespace A353679.P2845827922621953215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P2845827922621953215

namespace A353679

/-- `∩[A006872(n+1), A047241(n+1)]` -/
def P2845827922621953215.Spec : Prop :=
  ∀ n, (P2845827922621953215.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P1625772083642809499

`∩[A006872(n+1), A204454(n+1)]`
-/

namespace A353679.P1625772083642809499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P1625772083642809499

namespace A353679

/-- `∩[A006872(n+1), A204454(n+1)]` -/
def P1625772083642809499.Spec : Prop :=
  ∀ n, (P1625772083642809499.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P4578260854572103231

`∩[A006872(n+1), A004273(n)]`
-/

namespace A353679.P4578260854572103231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P4578260854572103231

namespace A353679

/-- `∩[A006872(n+1), A004273(n)]` -/
def P4578260854572103231.Spec : Prop :=
  ∀ n, (P4578260854572103231.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P13115061049868322323

`∩[A006872(n+1), A004274(n)]`
-/

namespace A353679.P13115061049868322323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P13115061049868322323

namespace A353679

/-- `∩[A006872(n+1), A004274(n)]` -/
def P13115061049868322323.Spec : Prop :=
  ∀ n, (P13115061049868322323.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P16132065030405145426

`∩[A006872(n+1), A004276(n)]`
-/

namespace A353679.P16132065030405145426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P16132065030405145426

namespace A353679

/-- `∩[A006872(n+1), A004276(n)]` -/
def P16132065030405145426.Spec : Prop :=
  ∀ n, (P16132065030405145426.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P13625986111276355625

`∩[A006872(n+1), A004281(n)]`
-/

namespace A353679.P13625986111276355625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P13625986111276355625

namespace A353679

/-- `∩[A006872(n+1), A004281(n)]` -/
def P13625986111276355625.Spec : Prop :=
  ∀ n, (P13625986111276355625.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P13076468515495477164

`∩[A006872(n+1), A060747(n)]`
-/

namespace A353679.P13076468515495477164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P13076468515495477164

namespace A353679

/-- `∩[A006872(n+1), A060747(n)]` -/
def P13076468515495477164.Spec : Prop :=
  ∀ n, (P13076468515495477164.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P4011919219278712937

`∩[A006872(n+1), A047242(n+1)]`
-/

namespace A353679.P4011919219278712937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P4011919219278712937

namespace A353679

/-- `∩[A006872(n+1), A047242(n+1)]` -/
def P4011919219278712937.Spec : Prop :=
  ∀ n, (P4011919219278712937.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P3273088299198564983

`∩[A006872(n+1), A299231(n+1)]`
-/

namespace A353679.P3273088299198564983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P3273088299198564983

namespace A353679

/-- `∩[A006872(n+1), A299231(n+1)]` -/
def P3273088299198564983.Spec : Prop :=
  ∀ n, (P3273088299198564983.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P1921215500761913132

`∩[A006872(n+1), A305635(n+1)]`
-/

namespace A353679.P1921215500761913132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305635 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P1921215500761913132

namespace A353679

/-- `∩[A006872(n+1), A305635(n+1)]` -/
def P1921215500761913132.Spec : Prop :=
  ∀ n, (P1921215500761913132.a n : ℤ) = A353679 (n + 1)

end A353679

/-! ## A353679.P17068294906832792771

`∩[A006872(n+1), A128201(n+1)]`
-/

namespace A353679.P17068294906832792771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A353679.P17068294906832792771

namespace A353679

/-- `∩[A006872(n+1), A128201(n+1)]` -/
def P17068294906832792771.Spec : Prop :=
  ∀ n, (P17068294906832792771.a n : ℤ) = A353679 (n + 1)

end A353679

/-!
# A353680: a(n) = 1 if n is odd and phi(sigma(n)) is equal to phi(n), otherwise 0.

The programs for A353680, the canonical program `A353680.P13504511753846744607` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353680 has offset 1).

The definition of A353680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353680.P13504511753846744607

`A000035(n+1)*A353637(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353680

/-- `A000035(n+1)*A353637(n+1)` -/
def P13504511753846744607.Spec : Prop :=
  ∀ n, P13504511753846744607.a n = A353680 (n + 1)

theorem P13504511753846744607.correct : P13504511753846744607.Spec := by
  intro n
  simp only [A353680, Nat.add_sub_cancel]

end A353680

/-! ## A353680.P7395800500249692636

`and(n+1, A353637(n+1))`
-/

namespace A353680.P7395800500249692636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A353637 (n + 1))

end

end A353680.P7395800500249692636

namespace A353680

/-- `and(n+1, A353637(n+1))` -/
def P7395800500249692636.Spec : Prop :=
  ∀ n, P7395800500249692636.a n = A353680 (n + 1)

end A353680

/-! ## A353680.P8288387239659364041

`A353637(A141310(n))`
-/

namespace A353680.P8288387239659364041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (A141310 n).toNat

end

end A353680.P8288387239659364041

namespace A353680

/-- `A353637(A141310(n))` -/
def P8288387239659364041.Spec : Prop :=
  ∀ n, P8288387239659364041.a n = A353680 (n + 1)

end A353680

/-! ## A353680.P4014807380064984406

`A353637(A165998(n))`
-/

namespace A353680.P4014807380064984406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (A165998 n).toNat

end

end A353680.P4014807380064984406

namespace A353680

/-- `A353637(A165998(n))` -/
def P4014807380064984406.Spec : Prop :=
  ∀ n, P4014807380064984406.a n = A353680 (n + 1)

end A353680

/-! ## A353680.P5851799881424699683

`A059841(n)*A353637(n+1)`
-/

namespace A353680.P5851799881424699683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A353637 (n + 1)

end

end A353680.P5851799881424699683

namespace A353680

/-- `A059841(n)*A353637(n+1)` -/
def P5851799881424699683.Spec : Prop :=
  ∀ n, P5851799881424699683.a n = A353680 (n + 1)

end A353680

/-! ## A353680.P1961867356294500487

`(A056594(n)*A353637(n+1))²`
-/

namespace A353680.P1961867356294500487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056594 n * A353637 (n + 1)) ^ 2

end

end A353680.P1961867356294500487

namespace A353680

/-- `(A056594(n)*A353637(n+1))²` -/
def P1961867356294500487.Spec : Prop :=
  ∀ n, P1961867356294500487.a n = A353680 (n + 1)

end A353680

/-! ## A353680.P9275666446059927015

`A014577(2*n)*A353637(n+1)`
-/

namespace A353680.P9275666446059927015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 (2 * n) * A353637 (n + 1)

end

end A353680.P9275666446059927015

namespace A353680

/-- `A014577(2*n)*A353637(n+1)` -/
def P9275666446059927015.Spec : Prop :=
  ∀ n, P9275666446059927015.a n = A353680 (n + 1)

end A353680

/-! ## A353680.P1661117011987454590

`A353637(A065679(n+1))`
-/

namespace A353680.P1661117011987454590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (A065679 (n + 1)).toNat

end

end A353680.P1661117011987454590

namespace A353680

/-- `A353637(A065679(n+1))` -/
def P1661117011987454590.Spec : Prop :=
  ∀ n, P1661117011987454590.a n = A353680 (n + 1)

end A353680

/-! ## A353680.P6053496199827752195

`and(A353637(n+1), A357532(n))`
-/

namespace A353680.P6053496199827752195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A353637 (n + 1)) (A357532 n)

end

end A353680.P6053496199827752195

namespace A353680

/-- `and(A353637(n+1), A357532(n))` -/
def P6053496199827752195.Spec : Prop :=
  ∀ n, P6053496199827752195.a n = A353680 (n + 1)

end A353680

/-! ## A353680.P10442130119594156899

`and(A067316(n), A169591(n))`
-/

namespace A353680.P10442130119594156899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A067316 n) (A169591 n)

end

end A353680.P10442130119594156899

namespace A353680

/-- `and(A067316(n), A169591(n))` -/
def P10442130119594156899.Spec : Prop :=
  ∀ n, P10442130119594156899.a n = A353680 (n + 1)

end A353680

/-!
# A353681: a(n) = 1 if phi(sigma(n)) > phi(n), otherwise 0.

The programs for A353681, the canonical program `A353681.P403205491971656766` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353681 has offset 1).

The definition of A353681 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353681.P14617462460204846071

`A353682(n+1)-A353637(n+1)`
-/

namespace A353681.P14617462460204846071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 1) - A353637 (n + 1)

end

end A353681.P14617462460204846071

namespace A353681

/-- `A353682(n+1)-A353637(n+1)` -/
def P14617462460204846071.Spec : Prop :=
  ∀ n, P14617462460204846071.a n = A353681 (n + 1)

theorem P14617462460204846071.correct : P14617462460204846071.Spec := by
  intro n
  simp only [A353681, Nat.add_sub_cancel, A353681.P14617462460204846071.a, A353681.P403205491971656766.a, A008000, A008000.P14598701383781270205.a, A353636, A353636.P9241397115263292708.a, A353637, A353637.P5440180522401724762.f1, A353637.P5440180522401724762.a, A353682, A353682.P1510457161453438165.a, A000010, A000010.P4673923239450215316.a, A001221, A001221.P10258181745752134128.a, A005893, A005893.P12560717778126936227.a, A008130, A008130.P6850248859462288160.a, A062401, A062401.P14719521271091436929.f1, A062401.P14719521271091436929.a, A003557, A003557.P6364735403900941810.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A353681

/-! ## A353681.P5848687610577065886

`char[lt[0, A353636(n+1)]]`
-/

namespace A353681.P5848687610577065886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353681.P5848687610577065886

namespace A353681

/-- `char[lt[0, A353636(n+1)]]` -/
def P5848687610577065886.Spec : Prop :=
  ∀ n, (P5848687610577065886.a n : ℤ) = A353681 (n + 1)

end A353681

/-! ## A353681.P403205491971656766

`ceil(A353636(n+1)/A008000(n))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A353681

/-- `ceil(A353636(n+1)/A008000(n))` -/
def P403205491971656766.Spec : Prop :=
  ∀ n, P403205491971656766.a n = A353681 (n + 1)

theorem P403205491971656766.correct : P403205491971656766.Spec := by
  intro n
  simp only [A353681, Nat.add_sub_cancel]

end A353681

/-! ## A353681.P7341074391537440444

`ceil(A353636(n+1)/A052905(n))`
-/

namespace A353681.P7341074391537440444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A052905 n : ℚ)⌉

end

end A353681.P7341074391537440444

namespace A353681

/-- `ceil(A353636(n+1)/A052905(n))` -/
def P7341074391537440444.Spec : Prop :=
  ∀ n, P7341074391537440444.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P15681376986127446023

`ceil(A353636(n+1)/A133263(n))`
-/

namespace A353681.P15681376986127446023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A133263 n : ℚ)⌉

end

end A353681.P15681376986127446023

namespace A353681

/-- `ceil(A353636(n+1)/A133263(n))` -/
def P15681376986127446023.Spec : Prop :=
  ∀ n, P15681376986127446023.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P13465848521016709955

`ceil(A353636(n+1)/A250120(n))`
-/

namespace A353681.P13465848521016709955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A250120 n : ℚ)⌉

end

end A353681.P13465848521016709955

namespace A353681

/-- `ceil(A353636(n+1)/A250120(n))` -/
def P13465848521016709955.Spec : Prop :=
  ∀ n, P13465848521016709955.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P13141239147971406415

`ceil(A353636(n+1)/A255842(n))`
-/

namespace A353681.P13141239147971406415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A255842 n : ℚ)⌉

end

end A353681.P13141239147971406415

namespace A353681

/-- `ceil(A353636(n+1)/A255842(n))` -/
def P13141239147971406415.Spec : Prop :=
  ∀ n, P13141239147971406415.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P14894655090963740527

`ceil(A353636(n+1)/A299266(n))`
-/

namespace A353681.P14894655090963740527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A299266 n : ℚ)⌉

end

end A353681.P14894655090963740527

namespace A353681

/-- `ceil(A353636(n+1)/A299266(n))` -/
def P14894655090963740527.Spec : Prop :=
  ∀ n, P14894655090963740527.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P16595118332695746058

`ceil(A353636(n+1)/A005585(n+1))`
-/

namespace A353681.P16595118332695746058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A005585 (n + 1) : ℚ)⌉

end

end A353681.P16595118332695746058

namespace A353681

/-- `ceil(A353636(n+1)/A005585(n+1))` -/
def P16595118332695746058.Spec : Prop :=
  ∀ n, P16595118332695746058.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P12325849404082652721

`ceil(A353636(n+1)/A023515(n+1))`
-/

namespace A353681.P12325849404082652721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A023515 (n + 1) : ℚ)⌉

end

end A353681.P12325849404082652721

namespace A353681

/-- `ceil(A353636(n+1)/A023515(n+1))` -/
def P12325849404082652721.Spec : Prop :=
  ∀ n, P12325849404082652721.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P5509607844665076915

`ceil(A353636(n+1)/A027811(n+1))`
-/

namespace A353681.P5509607844665076915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A027811 (n + 1) : ℚ)⌉

end

end A353681.P5509607844665076915

namespace A353681

/-- `ceil(A353636(n+1)/A027811(n+1))` -/
def P5509607844665076915.Spec : Prop :=
  ∀ n, P5509607844665076915.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P18307700992837355576

`ceil(A353636(n+1)/A034856(n+1))`
-/

namespace A353681.P18307700992837355576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A034856 (n + 1) : ℚ)⌉

end

end A353681.P18307700992837355576

namespace A353681

/-- `ceil(A353636(n+1)/A034856(n+1))` -/
def P18307700992837355576.Spec : Prop :=
  ∀ n, P18307700992837355576.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P11600139653758308505

`ceil(A353636(n+1)/A036957(n+1))`
-/

namespace A353681.P11600139653758308505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A036957 (n + 1) : ℚ)⌉

end

end A353681.P11600139653758308505

namespace A353681

/-- `ceil(A353636(n+1)/A036957(n+1))` -/
def P11600139653758308505.Spec : Prop :=
  ∀ n, P11600139653758308505.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P11492305303392385009

`ceil(A353636(n+1)/A044979(n+1))`
-/

namespace A353681.P11492305303392385009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A044979 (n + 1) : ℚ)⌉

end

end A353681.P11492305303392385009

namespace A353681

/-- `ceil(A353636(n+1)/A044979(n+1))` -/
def P11492305303392385009.Spec : Prop :=
  ∀ n, P11492305303392385009.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P6910508423617058094

`ceil(A353636(n+1)/A062087(n+1))`
-/

namespace A353681.P6910508423617058094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A062087 (n + 1) : ℚ)⌉

end

end A353681.P6910508423617058094

namespace A353681

/-- `ceil(A353636(n+1)/A062087(n+1))` -/
def P6910508423617058094.Spec : Prop :=
  ∀ n, P6910508423617058094.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P2930788742835071335

`ceil(A353636(n+1)/A116699(n+1))`
-/

namespace A353681.P2930788742835071335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) : ℚ) / (A116699 (n + 1) : ℚ)⌉

end

end A353681.P2930788742835071335

namespace A353681

/-- `ceil(A353636(n+1)/A116699(n+1))` -/
def P2930788742835071335.Spec : Prop :=
  ∀ n, P2930788742835071335.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P4181362432655431845

`ceil((A062401(n+1)-A000010(n+1))/A005728(n))`
-/

namespace A353681.P4181362432655431845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062401 (n + 1) - A000010 (n + 1) : ℚ) / (A005728 n : ℚ)⌉

end

end A353681.P4181362432655431845

namespace A353681

/-- `ceil((A062401(n+1)-A000010(n+1))/A005728(n))` -/
def P4181362432655431845.Spec : Prop :=
  ∀ n, P4181362432655431845.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P7996560873101657189

`ceil((A062401(n+1)-A000010(n+1))/A047800(n))`
-/

namespace A353681.P7996560873101657189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062401 (n + 1) - A000010 (n + 1) : ℚ) / (A047800 n : ℚ)⌉

end

end A353681.P7996560873101657189

namespace A353681

/-- `ceil((A062401(n+1)-A000010(n+1))/A047800(n))` -/
def P7996560873101657189.Spec : Prop :=
  ∀ n, P7996560873101657189.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P8161529072173158411

`ceil((A062401(n+1)-A000010(n+1))/A100449(n))`
-/

namespace A353681.P8161529072173158411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062401 (n + 1) - A000010 (n + 1) : ℚ) / (A100449 n : ℚ)⌉

end

end A353681.P8161529072173158411

namespace A353681

/-- `ceil((A062401(n+1)-A000010(n+1))/A100449(n))` -/
def P8161529072173158411.Spec : Prop :=
  ∀ n, P8161529072173158411.a n = A353681 (n + 1)

end A353681

/-! ## A353681.P3309057457492389919

`ceil((A062401(n+1)-A000010(n+1))/A067792(n+1))`
-/

namespace A353681.P3309057457492389919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062401 (n + 1) - A000010 (n + 1) : ℚ) / (A067792 (n + 1) : ℚ)⌉

end

end A353681.P3309057457492389919

namespace A353681

/-- `ceil((A062401(n+1)-A000010(n+1))/A067792(n+1))` -/
def P3309057457492389919.Spec : Prop :=
  ∀ n, P3309057457492389919.a n = A353681 (n + 1)

end A353681

/-!
# A353682: a(n) = 1 if phi(sigma(n)) >= phi(n), otherwise 0.

The programs for A353682, the canonical program `A353682.P1510457161453438165` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353682 has offset 1).

The definition of A353682 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A353637, A353681, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A353682.P1510457161453438165

`A353637(n+1)+A353681(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353682

/-- `A353637(n+1)+A353681(n+1)` -/
def P1510457161453438165.Spec : Prop :=
  ∀ n, P1510457161453438165.a n = A353682 (n + 1)

theorem P1510457161453438165.correct : P1510457161453438165.Spec := by
  intro n
  simp only [A353682, Nat.add_sub_cancel]

end A353682

/-! ## A353682.P6356201120602763742

`ceil(sin(acot(A353636(n+1))))`
-/

namespace A353682.P6356201120602763742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (SequenceMachineLib.acot (A353636 (n + 1) : ℝ))⌉

end

end A353682.P6356201120602763742

namespace A353682

/-- `ceil(sin(acot(A353636(n+1))))` -/
def P6356201120602763742.Spec : Prop :=
  ∀ n, P6356201120602763742.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P9903370385600129530

`floor(A353636(n+1)/A052905(n))+1`
-/

namespace A353682.P9903370385600129530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353636 (n + 1) : ℚ) / (A052905 n : ℚ)⌋ + 1

end

end A353682.P9903370385600129530

namespace A353682

/-- `floor(A353636(n+1)/A052905(n))+1` -/
def P9903370385600129530.Spec : Prop :=
  ∀ n, P9903370385600129530.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P17788158658950404537

`floor(A353636(n+1)/A255842(n))+1`
-/

namespace A353682.P17788158658950404537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A353636 (n + 1) : ℚ) / (A255842 n : ℚ)⌋ + 1

end

end A353682.P17788158658950404537

namespace A353682

/-- `floor(A353636(n+1)/A255842(n))+1` -/
def P17788158658950404537.Spec : Prop :=
  ∀ n, P17788158658950404537.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P14372729091030463942

`ceil((A353636(n+1)+1)/A133263(n))`
-/

namespace A353682.P14372729091030463942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A133263 n : ℚ)⌉

end

end A353682.P14372729091030463942

namespace A353682

/-- `ceil((A353636(n+1)+1)/A133263(n))` -/
def P14372729091030463942.Spec : Prop :=
  ∀ n, P14372729091030463942.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P15937953982467054924

`ceil((A353636(n+1)+1)/A005585(n+1))`
-/

namespace A353682.P15937953982467054924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A005585 (n + 1) : ℚ)⌉

end

end A353682.P15937953982467054924

namespace A353682

/-- `ceil((A353636(n+1)+1)/A005585(n+1))` -/
def P15937953982467054924.Spec : Prop :=
  ∀ n, P15937953982467054924.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P161891612435968296

`ceil((A353636(n+1)+1)/A023515(n+1))`
-/

namespace A353682.P161891612435968296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A023515 (n + 1) : ℚ)⌉

end

end A353682.P161891612435968296

namespace A353682

/-- `ceil((A353636(n+1)+1)/A023515(n+1))` -/
def P161891612435968296.Spec : Prop :=
  ∀ n, P161891612435968296.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P5944942573670470043

`ceil((A353636(n+1)+1)/A027811(n+1))`
-/

namespace A353682.P5944942573670470043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A027811 (n + 1) : ℚ)⌉

end

end A353682.P5944942573670470043

namespace A353682

/-- `ceil((A353636(n+1)+1)/A027811(n+1))` -/
def P5944942573670470043.Spec : Prop :=
  ∀ n, P5944942573670470043.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P14856519516503688732

`ceil((A353636(n+1)+1)/A034856(n+1))`
-/

namespace A353682.P14856519516503688732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A034856 (n + 1) : ℚ)⌉

end

end A353682.P14856519516503688732

namespace A353682

/-- `ceil((A353636(n+1)+1)/A034856(n+1))` -/
def P14856519516503688732.Spec : Prop :=
  ∀ n, P14856519516503688732.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P17724927514105239806

`ceil((A353636(n+1)+1)/A036957(n+1))`
-/

namespace A353682.P17724927514105239806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A036957 (n + 1) : ℚ)⌉

end

end A353682.P17724927514105239806

namespace A353682

/-- `ceil((A353636(n+1)+1)/A036957(n+1))` -/
def P17724927514105239806.Spec : Prop :=
  ∀ n, P17724927514105239806.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P16377067296011438558

`ceil((A353636(n+1)+1)/A044979(n+1))`
-/

namespace A353682.P16377067296011438558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A044979 (n + 1) : ℚ)⌉

end

end A353682.P16377067296011438558

namespace A353682

/-- `ceil((A353636(n+1)+1)/A044979(n+1))` -/
def P16377067296011438558.Spec : Prop :=
  ∀ n, P16377067296011438558.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P709509102221779782

`ceil((A353636(n+1)+1)/A062087(n+1))`
-/

namespace A353682.P709509102221779782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A062087 (n + 1) : ℚ)⌉

end

end A353682.P709509102221779782

namespace A353682

/-- `ceil((A353636(n+1)+1)/A062087(n+1))` -/
def P709509102221779782.Spec : Prop :=
  ∀ n, P709509102221779782.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P16385058835580377164

`ceil((A353636(n+1)+1)/A116699(n+1))`
-/

namespace A353682.P16385058835580377164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A116699 (n + 1) : ℚ)⌉

end

end A353682.P16385058835580377164

namespace A353682

/-- `ceil((A353636(n+1)+1)/A116699(n+1))` -/
def P16385058835580377164.Spec : Prop :=
  ∀ n, P16385058835580377164.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P7819590055059646186

`A000007(abs(A353636(n+1))-A353636(n+1))`
-/

namespace A353682.P7819590055059646186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (|A353636 (n + 1)| - A353636 (n + 1)).toNat

end

end A353682.P7819590055059646186

namespace A353682

/-- `A000007(abs(A353636(n+1))-A353636(n+1))` -/
def P7819590055059646186.Spec : Prop :=
  ∀ n, P7819590055059646186.a n = A353682 (n + 1)

end A353682

/-! ## A353682.P212667766369922979

`ceil((A353636(n+1)+1)/A311947(n))`
-/

namespace A353682.P212667766369922979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A353636 (n + 1) + 1 : ℚ) / (A311947 n : ℚ)⌉

end

end A353682.P212667766369922979

namespace A353682

/-- `ceil((A353636(n+1)+1)/A311947(n))` -/
def P212667766369922979.Spec : Prop :=
  ∀ n, P212667766369922979.a n = A353682 (n + 1)

end A353682

/-!
# A353683: Numbers k for which phi(sigma(k)) > phi(k).

The programs for A353683, the canonical program `A353683.P12717263372713688347` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353683 has offset 1).

The definition of A353683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353683.P12717263372713688347

`lt[0, A353681(n+1)]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A353683

/-- `lt[0, A353681(n+1)]+1` -/
def P12717263372713688347.Spec : Prop :=
  ∀ n, (P12717263372713688347.a n : ℤ) = A353683 (n + 1)

theorem P12717263372713688347.correct : P12717263372713688347.Spec := by
  intro n
  simp only [A353683, Nat.add_sub_cancel]

end A353683

/-! ## A353683.P15217729305524581032

`eq[1, A353681(n+2)]+2`
-/

namespace A353683.P15217729305524581032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353681 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A353683.P15217729305524581032

namespace A353683

/-- `eq[1, A353681(n+2)]+2` -/
def P15217729305524581032.Spec : Prop :=
  ∀ n, (P15217729305524581032.a n : ℤ) = A353683 (n + 1)

end A353683

/-! ## A353683.P5796934695021261205

`eq[1, A353681(n^floor(atan(n)))]`
-/

namespace A353683.P5796934695021261205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353681 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353683.P5796934695021261205

namespace A353683

/-- `eq[1, A353681(n^floor(atan(n)))]` -/
def P5796934695021261205.Spec : Prop :=
  ∀ n, (P5796934695021261205.a n : ℤ) = A353683 (n + 1)

end A353683

/-! ## A353683.P13013305293517121032

`filter[A353684(n+1), A353681(#)]`
-/

namespace A353683.P13013305293517121032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P13013305293517121032

namespace A353683

/-- `filter[A353684(n+1), A353681(#)]` -/
def P13013305293517121032.Spec : Prop :=
  ∀ n, P13013305293517121032.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P17984330333056167444

`lt[A353644(n+1), A353646(n+1)]+1`
-/

namespace A353683.P17984330333056167444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353646 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353683.P17984330333056167444

namespace A353683

/-- `lt[A353644(n+1), A353646(n+1)]+1` -/
def P17984330333056167444.Spec : Prop :=
  ∀ n, (P17984330333056167444.a n : ℤ) = A353683 (n + 1)

end A353683

/-! ## A353683.P13988759249524197258

`filter[A047226(n+2), A353681(#)]`
-/

namespace A353683.P13988759249524197258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P13988759249524197258

namespace A353683

/-- `filter[A047226(n+2), A353681(#)]` -/
def P13988759249524197258.Spec : Prop :=
  ∀ n, P13988759249524197258.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P2335088923352954119

`filter[A065090(n+1), A353681(#)]`
-/

namespace A353683.P2335088923352954119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P2335088923352954119

namespace A353683

/-- `filter[A065090(n+1), A353681(#)]` -/
def P2335088923352954119.Spec : Prop :=
  ∀ n, P2335088923352954119.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P12269730761238252147

`filter[A171581(n+1), A353681(#)]`
-/

namespace A353683.P12269730761238252147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P12269730761238252147

namespace A353683

/-- `filter[A171581(n+1), A353681(#)]` -/
def P12269730761238252147.Spec : Prop :=
  ∀ n, P12269730761238252147.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P156532728351575657

`filter[A173905(n+2), A353681(#)]`
-/

namespace A353683.P156532728351575657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P156532728351575657

namespace A353683

/-- `filter[A173905(n+2), A353681(#)]` -/
def P156532728351575657.Spec : Prop :=
  ∀ n, P156532728351575657.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P13019702051067503082

`filter[A338924(n+1), A353681(#)]`
-/

namespace A353683.P13019702051067503082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P13019702051067503082

namespace A353683

/-- `filter[A338924(n+1), A353681(#)]` -/
def P13019702051067503082.Spec : Prop :=
  ∀ n, P13019702051067503082.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P14905239838971302460

`filter[A073900(n+1), A353681(#)]`
-/

namespace A353683.P14905239838971302460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P14905239838971302460

namespace A353683

/-- `filter[A073900(n+1), A353681(#)]` -/
def P14905239838971302460.Spec : Prop :=
  ∀ n, P14905239838971302460.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P15553832919733709721

`filter[A073899(n+1), A353681(#)]`
-/

namespace A353683.P15553832919733709721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P15553832919733709721

namespace A353683

/-- `filter[A073899(n+1), A353681(#)]` -/
def P15553832919733709721.Spec : Prop :=
  ∀ n, P15553832919733709721.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P2617112745439127784

`filter[A171085(n+1), A353681(#)]`
-/

namespace A353683.P2617112745439127784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P2617112745439127784

namespace A353683

/-- `filter[A171085(n+1), A353681(#)]` -/
def P2617112745439127784.Spec : Prop :=
  ∀ n, P2617112745439127784.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P262737726421191485

`filter[A379051(n+1), A353681(#)]`
-/

namespace A353683.P262737726421191485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P262737726421191485

namespace A353683

/-- `filter[A379051(n+1), A353681(#)]` -/
def P262737726421191485.Spec : Prop :=
  ∀ n, P262737726421191485.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P4147667399898946909

`filter[A073884(n+1), A353681(#)]`
-/

namespace A353683.P4147667399898946909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P4147667399898946909

namespace A353683

/-- `filter[A073884(n+1), A353681(#)]` -/
def P4147667399898946909.Spec : Prop :=
  ∀ n, P4147667399898946909.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P9664847798970641157

`filter[A101513(n+1), A353681(#)]`
-/

namespace A353683.P9664847798970641157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P9664847798970641157

namespace A353683

/-- `filter[A101513(n+1), A353681(#)]` -/
def P9664847798970641157.Spec : Prop :=
  ∀ n, P9664847798970641157.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P14134485485493199483

`filter[A089088(n), A353681(#)]`
-/

namespace A353683.P14134485485493199483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P14134485485493199483

namespace A353683

/-- `filter[A089088(n), A353681(#)]` -/
def P14134485485493199483.Spec : Prop :=
  ∀ n, P14134485485493199483.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P14915340379363940884

`filter[A137621(n+1), A353681(#)]`
-/

namespace A353683.P14915340379363940884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137621 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P14915340379363940884

namespace A353683

/-- `filter[A137621(n+1), A353681(#)]` -/
def P14915340379363940884.Spec : Prop :=
  ∀ n, P14915340379363940884.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P15965155821540829406

`filter[A376198(n+1), A353681(#)]`
-/

namespace A353683.P15965155821540829406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P15965155821540829406

namespace A353683

/-- `filter[A376198(n+1), A353681(#)]` -/
def P15965155821540829406.Spec : Prop :=
  ∀ n, P15965155821540829406.a n = A353683 (n + 1)

end A353683

/-! ## A353683.P1382068545502513882

`filter[A156657(n+2), A353681(#)]`
-/

namespace A353683.P1382068545502513882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353681 (f1 j).toNat = 1) n)

end

end A353683.P1382068545502513882

namespace A353683

/-- `filter[A156657(n+2), A353681(#)]` -/
def P1382068545502513882.Spec : Prop :=
  ∀ n, P1382068545502513882.a n = A353683 (n + 1)

end A353683

/-!
# A353684: Numbers k for which phi(sigma(k)) >= phi(k).

The programs for A353684, the canonical program `A353684.P9788669644601584113` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353684 has offset 1).

The definition of A353684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353684.P9788669644601584113

`lt[0, A353682(n+1)]+1`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A353684

/-- `lt[0, A353682(n+1)]+1` -/
def P9788669644601584113.Spec : Prop :=
  ∀ n, (P9788669644601584113.a n : ℤ) = A353684 (n + 1)

theorem P9788669644601584113.correct : P9788669644601584113.Spec := by
  intro n
  simp only [A353684, Nat.add_sub_cancel]

end A353684

/-! ## A353684.P5778444569740302492

`eq[1, A353682(-xor(n, -1))]+1`
-/

namespace A353684.P5778444569740302492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (-Int.xor (n : ℤ) (-1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353684.P5778444569740302492

namespace A353684

/-- `eq[1, A353682(-xor(n, -1))]+1` -/
def P5778444569740302492.Spec : Prop :=
  ∀ n, (P5778444569740302492.a n : ℤ) = A353684 (n + 1)

end A353684

/-! ## A353684.P12645842761437595401

`eq[1, A353682(ceil(acot(n)+n))]+1`
-/

namespace A353684.P12645842761437595401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353684.P12645842761437595401

namespace A353684

/-- `eq[1, A353682(ceil(acot(n)+n))]+1` -/
def P12645842761437595401.Spec : Prop :=
  ∀ n, (P12645842761437595401.a n : ℤ) = A353684 (n + 1)

end A353684

/-! ## A353684.P8334861480825109680

`eq[1, A353682(2*n-n+1)]+1`
-/

namespace A353684.P8334861480825109680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 ((2 * n : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353684.P8334861480825109680

namespace A353684

/-- `eq[1, A353682(2*n-n+1)]+1` -/
def P8334861480825109680.Spec : Prop :=
  ∀ n, (P8334861480825109680.a n : ℤ) = A353684 (n + 1)

end A353684

/-! ## A353684.P17130309604477680480

`∪[A006872(n+1), A353683(n+1)]`
-/

namespace A353684.P17130309604477680480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353684.P17130309604477680480

namespace A353684

/-- `∪[A006872(n+1), A353683(n+1)]` -/
def P17130309604477680480.Spec : Prop :=
  ∀ n, (P17130309604477680480.a n : ℤ) = A353684 (n + 1)

end A353684

/-! ## A353684.P16440101528173719734

`record[A000027(n+1)*A353682(n+1)]`
-/

namespace A353684.P16440101528173719734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A353682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353684.P16440101528173719734

namespace A353684

/-- `record[A000027(n+1)*A353682(n+1)]` -/
def P16440101528173719734.Spec : Prop :=
  ∀ n, P16440101528173719734.a n = A353684 (n + 1)

end A353684

/-! ## A353684.P14371310606886199942

`filter[A047226(n+2), A353682(#)]`
-/

namespace A353684.P14371310606886199942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047226 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A353684.P14371310606886199942

namespace A353684

/-- `filter[A047226(n+2), A353682(#)]` -/
def P14371310606886199942.Spec : Prop :=
  ∀ n, P14371310606886199942.a n = A353684 (n + 1)

end A353684

/-! ## A353684.P10561416123392550453

`filter[A171581(n+1), A353682(#)]`
-/

namespace A353684.P10561416123392550453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A353684.P10561416123392550453

namespace A353684

/-- `filter[A171581(n+1), A353682(#)]` -/
def P10561416123392550453.Spec : Prop :=
  ∀ n, P10561416123392550453.a n = A353684 (n + 1)

end A353684

/-! ## A353684.P11831902747586164377

`filter[A173905(n+2), A353682(#)]`
-/

namespace A353684.P11831902747586164377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A353684.P11831902747586164377

namespace A353684

/-- `filter[A173905(n+2), A353682(#)]` -/
def P11831902747586164377.Spec : Prop :=
  ∀ n, P11831902747586164377.a n = A353684 (n + 1)

end A353684

/-! ## A353684.P9799114628679082849

`filter[A101513(n+1), A353682(#)]`
-/

namespace A353684.P9799114628679082849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A353684.P9799114628679082849

namespace A353684

/-- `filter[A101513(n+1), A353682(#)]` -/
def P9799114628679082849.Spec : Prop :=
  ∀ n, P9799114628679082849.a n = A353684 (n + 1)

end A353684

/-! ## A353684.P15278301677468435216

`filter[A376198(n+1), A353682(#)]`
-/

namespace A353684.P15278301677468435216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A353684.P15278301677468435216

namespace A353684

/-- `filter[A376198(n+1), A353682(#)]` -/
def P15278301677468435216.Spec : Prop :=
  ∀ n, P15278301677468435216.a n = A353684 (n + 1)

end A353684

/-! ## A353684.P15684890149695221202

`filter[A156657(n+2), A353682(#)]`
-/

namespace A353684.P15684890149695221202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j).toNat = 1) n)

end

end A353684.P15684890149695221202

namespace A353684

/-- `filter[A156657(n+2), A353682(#)]` -/
def P15684890149695221202.Spec : Prop :=
  ∀ n, P15684890149695221202.a n = A353684 (n + 1)

end A353684

/-! ## A353684.P6230507709518947528

`filter[n+1, A353682(#)]`
-/

namespace A353684.P6230507709518947528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353682 (f1 j) = 1) n)

end

end A353684.P6230507709518947528

namespace A353684

/-- `filter[n+1, A353682(#)]` -/
def P6230507709518947528.Spec : Prop :=
  ∀ n, (P6230507709518947528.a n : ℤ) = A353684 (n + 1)

end A353684

/-! ## A353684.P7648901309602363139

`lt[-1, A353636(n+1)]+1`
-/

namespace A353684.P7648901309602363139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353684.P7648901309602363139

namespace A353684

/-- `lt[-1, A353636(n+1)]+1` -/
def P7648901309602363139.Spec : Prop :=
  ∀ n, (P7648901309602363139.a n : ℤ) = A353684 (n + 1)

end A353684

/-! ## A353684.P13303078042767634838

`record[A028310(n+1)*A353682(n+1)]`
-/

namespace A353684.P13303078042767634838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n + 1) * A353682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353684.P13303078042767634838

namespace A353684

/-- `record[A028310(n+1)*A353682(n+1)]` -/
def P13303078042767634838.Spec : Prop :=
  ∀ n, P13303078042767634838.a n = A353684 (n + 1)

end A353684

/-!
# A353685: Numbers k for which phi(sigma(k)) <= phi(k).

The programs for A353685, there is no canonical definition to state claims against.
-/

/-! ## A353685.P18162283729167588420

`eq[0, A353681(n+1)]+1`
-/

namespace A353685.P18162283729167588420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353681 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353685.P18162283729167588420

/-! ## A353685.P957691465011319426

`lt[A353636(n+1), 1]+1`
-/

namespace A353685.P957691465011319426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353685.P957691465011319426

/-! ## A353685.P8196011328650694792

`comp[A353683(1+n)-1]+1`
-/

namespace A353685.P8196011328650694792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353683 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A353685.P8196011328650694792

/-! ## A353685.P13189250035785186236

`lt[A353681(abs(1-n)+1), 1]`
-/

namespace A353685.P13189250035785186236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353681 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A353685.P13189250035785186236

/-! ## A353685.P1084340850270161960

`comp[n*A353681(A028310(n))]`
-/

namespace A353685.P1084340850270161960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A353681 (A028310 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353685.P1084340850270161960

/-! ## A353685.P12526549968797258039

`∪[A006872(n+1), A353686(n+1)]`
-/

namespace A353685.P12526549968797258039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A353685.P12526549968797258039

/-! ## A353685.P17332493035294865833

`comp[A000027(n+1)*A353681(n+1)]`
-/

namespace A353685.P17332493035294865833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A353681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A353685.P17332493035294865833

/-! ## A353685.P399416600656778151

`eq[A353637(n+1), A353682(n+1)]+1`
-/

namespace A353685.P399416600656778151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353685.P399416600656778151

/-! ## A353685.P3238994786605565261

`lt[A062401(n+1), A000010(n+1)+1]+1`
-/

namespace A353685.P3238994786605565261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353685.P3238994786605565261

/-! ## A353685.P6725845601710246297

`lt[A000010(A000203(n+1)), A000010(n+1)+1]+1`
-/

namespace A353685.P6725845601710246297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353685.P6725845601710246297

/-!
# A353686: Numbers k for which phi(sigma(k)) < phi(k).

The programs for A353686, there is no canonical definition to state claims against.
-/

/-! ## A353686.P3584389919067614992

`eq[0, A353682(n+1)]+1`
-/

namespace A353686.P3584389919067614992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353686.P3584389919067614992

/-! ## A353686.P15371731064563143247

`lt[A353636(n+1), 0]+1`
-/

namespace A353686.P15371731064563143247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353636 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A353686.P15371731064563143247

/-! ## A353686.P13045276008173779447

`lt[A353682(n+2), 1]+2`
-/

namespace A353686.P13045276008173779447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A353686.P13045276008173779447

/-! ## A353686.P3905281545774698986

`eq[0, A353682(A028310(n))]`
-/

namespace A353686.P3905281545774698986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353686.P3905281545774698986

/-! ## A353686.P2518453547025871096

`A020725(eq[0, A353682(n+1)])`
-/

namespace A353686.P2518453547025871096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353686.P2518453547025871096

/-! ## A353686.P16645133335274092822

`A065475(eq[0, A353682(n+1)])`
-/

namespace A353686.P16645133335274092822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A353686.P16645133335274092822

/-! ## A353686.P15911436271755763430

`eq[0, A353682(A233583(n+1))]`
-/

namespace A353686.P15911436271755763430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353682 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A353686.P15911436271755763430

/-! ## A353686.P9324471493964456927

`lt[A062401(n+1), A000010(n+1)]+1`
-/

namespace A353686.P9324471493964456927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353686.P9324471493964456927

/-! ## A353686.P2725757204731055971

`lt[A353646(n+1), A353644(n+1)]+1`
-/

namespace A353686.P2725757204731055971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353646 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353686.P2725757204731055971

/-! ## A353686.P13464100215250893583

`lt[A000010(A000203(n+1)), A000010(n+1)]+1`
-/

namespace A353686.P13464100215250893583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000203 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A353686.P13464100215250893583

/-!
# A353687: a(n) = 1 if A098987(n) == 1, otherwise 0.

The programs for A353687, the canonical program `A353687.P5974908490086111933` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353687 has offset 1).

The definition of A353687 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353687.P5974908490086111933

`C(n+1, lcm(n+1, ∑{d}[n+1, #]/xor(n, n+1)))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A353687

/-- `C(n+1, lcm(n+1, ∑{d}[n+1, #]/xor(n, n+1)))` -/
def P5974908490086111933.Spec : Prop :=
  ∀ n, (P5974908490086111933.a n : ℤ) = A353687 (n + 1)

theorem P5974908490086111933.correct : P5974908490086111933.Spec := by
  intro n
  simp only [A353687, Nat.add_sub_cancel]

end A353687

/-! ## A353687.P13122644212792066909

`C(gcd((n+1)²*(-1)^n, ∑{d}[n+1, (n+1)*#*#%2]), ∑{d}[n+1, (n+1)*#*#%2])`
-/

namespace A353687.P13122644212792066909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.gcd (((n + 1) ^ 2 : ℤ) * (-1) ^ n) ((∑ d ∈ Nat.divisors (f1 n), (n + 1) * (d * (d % 2)) : ℕ) : ℤ)) (∑ d ∈ Nat.divisors (f2 n), (n + 1) * (d * (d % 2)))

end

end A353687.P13122644212792066909

namespace A353687

/-- `C(gcd((n+1)²*(-1)^n, ∑{d}[n+1, (n+1)*#*#%2]), ∑{d}[n+1, (n+1)*#*#%2])` -/
def P13122644212792066909.Spec : Prop :=
  ∀ n, (P13122644212792066909.a n : ℤ) = A353687 (n + 1)

end A353687

/-! ## A353687.P2621440133520011699

`floor(1/A098987(n+1))`
-/

namespace A353687.P2621440133520011699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A098987 (n + 1) : ℚ)⌋

end

end A353687.P2621440133520011699

namespace A353687

/-- `floor(1/A098987(n+1))` -/
def P2621440133520011699.Spec : Prop :=
  ∀ n, P2621440133520011699.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P8799114557387395140

`A000007((n+1)%(∑{d}[n+1, #]/xor(n, n+1)))`
-/

namespace A353687.P8799114557387395140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)))).toNat

end

end A353687.P8799114557387395140

namespace A353687

/-- `A000007((n+1)%(∑{d}[n+1, #]/xor(n, n+1)))` -/
def P8799114557387395140.Spec : Prop :=
  ∀ n, P8799114557387395140.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P16852472512523657103

`A000007((n+1)%A000593(n+1))`
-/

namespace A353687.P16852472512523657103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (n + 1 : ℤ) (A000593 (n + 1))).toNat

end

end A353687.P16852472512523657103

namespace A353687

/-- `A000007((n+1)%A000593(n+1))` -/
def P16852472512523657103.Spec : Prop :=
  ∀ n, P16852472512523657103.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P12945407361634751817

`C(A326069(n+1), A000593(n+1))`
-/

namespace A353687.P12945407361634751817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A326069 (n + 1)).toNat (A000593 (n + 1)).toNat

end

end A353687.P12945407361634751817

namespace A353687

/-- `C(A326069(n+1), A000593(n+1))` -/
def P12945407361634751817.Spec : Prop :=
  ∀ n, (P12945407361634751817.a n : ℤ) = A353687 (n + 1)

end A353687

/-! ## A353687.P266102631976458726

`C(A353688(n+1), A000593(n+1))`
-/

namespace A353687.P266102631976458726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A353688 (n + 1)).toNat (A000593 (n + 1)).toNat

end

end A353687.P266102631976458726

namespace A353687

/-- `C(A353688(n+1), A000593(n+1))` -/
def P266102631976458726.Spec : Prop :=
  ∀ n, (P266102631976458726.a n : ℤ) = A353687 (n + 1)

end A353687

/-! ## A353687.P6672155542004022061

`char[eq[A326069(n+1), A326135(n+1)]]`
-/

namespace A353687.P6672155542004022061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326069 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326135 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A353687.P6672155542004022061

namespace A353687

/-- `char[eq[A326069(n+1), A326135(n+1)]]` -/
def P6672155542004022061.Spec : Prop :=
  ∀ n, (P6672155542004022061.a n : ℤ) = A353687 (n + 1)

end A353687

/-! ## A353687.P8750936094867465824

`A000007(A153152(n)%A115607(n+1))`
-/

namespace A353687.P8750936094867465824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A153152 n) (A115607 (n + 1))).toNat

end

end A353687.P8750936094867465824

namespace A353687

/-- `A000007(A153152(n)%A115607(n+1))` -/
def P8750936094867465824.Spec : Prop :=
  ∀ n, P8750936094867465824.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P12768782060139235143

`A000007(A326988(n+1)%A017665(n+1))`
-/

namespace A353687.P12768782060139235143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.tmod (A326988 (n + 1)) (A017665 (n + 1))).toNat

end

end A353687.P12768782060139235143

namespace A353687

/-- `A000007(A326988(n+1)%A017665(n+1))` -/
def P12768782060139235143.Spec : Prop :=
  ∀ n, P12768782060139235143.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P6417745210441877592

`A151933(A325640(n+1)%A115607(n+1))`
-/

namespace A353687.P6417745210441877592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 (Int.tmod (A325640 (n + 1)) (A115607 (n + 1))).toNat

end

end A353687.P6417745210441877592

namespace A353687

/-- `A151933(A325640(n+1)%A115607(n+1))` -/
def P6417745210441877592.Spec : Prop :=
  ∀ n, P6417745210441877592.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P10243422335028131117

`A209229(A003602(n+1)*A034699(n+1))`
-/

namespace A353687.P10243422335028131117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A003602 (n + 1) * A034699 (n + 1)).toNat

end

end A353687.P10243422335028131117

namespace A353687

/-- `A209229(A003602(n+1)*A034699(n+1))` -/
def P10243422335028131117.Spec : Prop :=
  ∀ n, P10243422335028131117.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P17306045506444026860

`A209229(A003602(n+1)*A088387(n+1))`
-/

namespace A353687.P17306045506444026860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A003602 (n + 1) * A088387 (n + 1)).toNat

end

end A353687.P17306045506444026860

namespace A353687

/-- `A209229(A003602(n+1)*A088387(n+1))` -/
def P17306045506444026860.Spec : Prop :=
  ∀ n, P17306045506444026860.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P10184806310421643776

`A353633(A098987(n+1)²)`
-/

namespace A353687.P10184806310421643776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353633 (A098987 (n + 1) ^ 2).toNat

end

end A353687.P10184806310421643776

namespace A353687

/-- `A353633(A098987(n+1)²)` -/
def P10184806310421643776.Spec : Prop :=
  ∀ n, P10184806310421643776.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P3662664267977346822

`A209229(A081472(n+1)²)`
-/

namespace A353687.P3662664267977346822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A081472 (n + 1) ^ 2).toNat

end

end A353687.P3662664267977346822

namespace A353687

/-- `A209229(A081472(n+1)²)` -/
def P3662664267977346822.Spec : Prop :=
  ∀ n, P3662664267977346822.a n = A353687 (n + 1)

end A353687

/-! ## A353687.P1917315545796244590

`C(val(n+1, 2), A000120(∑[2*n]))`
-/

namespace A353687.P1917315545796244590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.valuation (n + 1) 2) (A000120 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A353687.P1917315545796244590

namespace A353687

/-- `C(val(n+1, 2), A000120(∑[2*n]))` -/
def P1917315545796244590.Spec : Prop :=
  ∀ n, (P1917315545796244590.a n : ℤ) = A353687 (n + 1)

end A353687

/-!
# A353688: a(n) = n / A098988(n).

The programs for A353688, the canonical program `A353688.P4343176064690707847` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A353688 has offset 0).

The definition of A353688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A353688.P7805667793792062624

`n/A098988(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A353688.P7805667793792062624
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A098988 n : ℚ)

end

end A353688.P7805667793792062624

namespace A353688

/-- `n/A098988(n)` -/
def P7805667793792062624.Spec : Prop :=
  ∀ n, P7805667793792062624.a n = (A353688 n : ℚ)

end A353688

/-! ## A353688.P4343176064690707847

`gcd(n, ∑{d}[n, A193356(#)])`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A353688

/-- `gcd(n, ∑{d}[n, A193356(#)])` -/
def P4343176064690707847.Spec : Prop :=
  ∀ n, (P4343176064690707847.a n : ℤ) = A353688 n

theorem P4343176064690707847.correct : P4343176064690707847.Spec := by
  intro n
  simp only [A353688]

end A353688

/-! ## A353688.P8876380497182377365

`gcd(n, A091570(A028310(n)))`
-/

namespace A353688.P8876380497182377365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A091570 (A028310 n).toNat)

end

end A353688.P8876380497182377365

namespace A353688

/-- `gcd(n, A091570(A028310(n)))` -/
def P8876380497182377365.Spec : Prop :=
  ∀ n, (P8876380497182377365.a n : ℤ) = A353688 n

end A353688

/-! ## A353688.P7126777858767326413

`gcd(A038608(n), A325941(A028310(n)))`
-/

namespace A353688.P7126777858767326413
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038608 n) (A325941 (A028310 n).toNat)

end

end A353688.P7126777858767326413

namespace A353688

/-- `gcd(A038608(n), A325941(A028310(n)))` -/
def P7126777858767326413.Spec : Prop :=
  ∀ n, (P7126777858767326413.a n : ℤ) = A353688 n

end A353688

/-! ## A353688.P14095787799159655984

`gcd(A091570(A004277(n)), A254667(n))`
-/

namespace A353688.P14095787799159655984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091570 (A004277 n).toNat) (A254667 n)

end

end A353688.P14095787799159655984

namespace A353688

/-- `gcd(A091570(A004277(n)), A254667(n))` -/
def P14095787799159655984.Spec : Prop :=
  ∀ n, (P14095787799159655984.a n : ℤ) = A353688 n

end A353688

/-! ## A353688.P17492109605318523299

`gcd(A091570(A008574(n)), A181983(n))`
-/

namespace A353688.P17492109605318523299
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091570 (A008574 n).toNat) (A181983 n)

end

end A353688.P17492109605318523299

namespace A353688

/-- `gcd(A091570(A008574(n)), A181983(n))` -/
def P17492109605318523299.Spec : Prop :=
  ∀ n, (P17492109605318523299.a n : ℤ) = A353688 n

end A353688

/-! ## A353688.P8039573502753024745

`val(A000079(n), A000079(A098988(n)))`
-/

namespace A353688.P8039573502753024745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 n).toNat (A000079 (A098988 n).toNat).toNat

end

end A353688.P8039573502753024745

namespace A353688

/-- `val(A000079(n), A000079(A098988(n)))` -/
def P8039573502753024745.Spec : Prop :=
  ∀ n, (P8039573502753024745.a n : ℤ) = A353688 n

end A353688

/-!
# A353689: Convolution of A000716 and the positive integers.

The programs for A353689, there is no canonical definition to state claims against.
-/

/-! ## A353689.P15853902365584058557

`∑[∑[A000716(n)]]`
-/

namespace A353689.P15853902365584058557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000716 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353689.P15853902365584058557

/-! ## A353689.P17708218478833307089

`∑[A210843(n+1)]`
-/

namespace A353689.P17708218478833307089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210843 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353689.P17708218478833307089

/-! ## A353689.P4512871746913729867

`A210843(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A353689.P4512871746913729867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210843 (n + 1) + a (A023443 n).toNat

end

end A353689.P4512871746913729867

/-! ## A353689.P16139067942286963718

`∑[A210764(∑[n+3]+6)]`
-/

namespace A353689.P16139067942286963718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210764 (∑ j ∈ Finset.range (n + 1), f2 j + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353689.P16139067942286963718

/-! ## A353689.P6626242252927347449

`∑[∑[A144064(∑[n+4]+2)]]`
-/

namespace A353689.P6626242252927347449
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144064 (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353689.P6626242252927347449

/-! ## A353689.P3848758393082948348

`∑[∑[A355350(A000217(n+1)+1)]]`
-/

namespace A353689.P3848758393082948348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355350 (A000217 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353689.P3848758393082948348

/-! ## A353689.P7362977142816121925

`∑[∑[A039805(∑[4*n]+1)]]`
-/

namespace A353689.P7362977142816121925
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039805 (∑ j ∈ Finset.range (n + 1), f3 j + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A353689.P7362977142816121925

/-!
# A353693: a(n) is the least multiplier k such that the exponents in the prime factorization of k*n are mutually distinct (A130091).

The programs for A353693, there is no canonical definition to state claims against.
-/

/-! ## A353693.P14892729135515054353

`A353694(n+1)/(n+1)`
-/

namespace A353693.P14892729135515054353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353694 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A353693.P14892729135515054353

/-! ## A353693.P5399488295914192358

`A327499(A011262(n+1)%A212141(2*(n+1)))`
-/

namespace A353693.P5399488295914192358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (Int.tmod (A011262 (n + 1)) (A212141 (2 * (n + 1)))).toNat

end

end A353693.P5399488295914192358

/-! ## A353693.P529190342982576572

`A327499(2*A295417(2*(n+1)))`
-/

namespace A353693.P529190342982576572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (2 * A295417 (2 * (n + 1))).toNat

end

end A353693.P529190342982576572

/-! ## A353693.P9904384321790083663

`A327499(4*A066636(4*(n+1)))`
-/

namespace A353693.P9904384321790083663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327499 (4 * A066636 (4 * (n + 1))).toNat

end

end A353693.P9904384321790083663

/-! ## A353693.P4921842211166618235

`A011262(n+1)/A327498(A011262(n+1))`
-/

namespace A353693.P4921842211166618235
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011262 (n + 1) : ℚ) / (A327498 (A011262 (n + 1)).toNat : ℚ)

end

end A353693.P4921842211166618235

/-! ## A353693.P3106733688490916470

`A065033(A327499(n+1)*A344606(n+1))`
-/

namespace A353693.P3106733688490916470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A327499 (n + 1) * A344606 (n + 1)).toNat

end

end A353693.P3106733688490916470

/-! ## A353693.P2887965051878388942

`A005361(A351944(n+1)^A293810(n+1))`
-/

namespace A353693.P2887965051878388942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((A351944 (n + 1) : ℚ) ^ (A293810 (n + 1) : ℤ))).toNat

end

end A353693.P2887965051878388942

/-! ## A353693.P224528633984708961

`A066636(A318956(n+1))`
-/

namespace A353693.P224528633984708961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A318956 (n + 1)).toNat

end

end A353693.P224528633984708961

/-! ## A353693.P1709757489177485222

`A353694(A327499(n+1)^A066636(n+1))`
-/

namespace A353693.P1709757489177485222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353694 (SequenceMachineLib.roundAway ((A327499 (n + 1) : ℚ) ^ (A066636 (n + 1) : ℤ))).toNat

end

end A353693.P1709757489177485222

/-! ## A353693.P2593871288119283460

`A327499((n+1)²)%A122040(n+1)`
-/

namespace A353693.P2593871288119283460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327499 ((n + 1) ^ 2)) (A122040 (n + 1))

end

end A353693.P2593871288119283460

/-!
# A353694: a(n) is the least multiple of n with mutually distinct exponents in its prime factorization (A130091).

The programs for A353694, there is no canonical definition to state claims against.
-/

/-! ## A353694.P1173952324708615560

`(n+1)*A353693(n+1)`
-/

namespace A353694.P1173952324708615560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A353693 (n + 1)

end

end A353694.P1173952324708615560

/-! ## A353694.P15503451224797961370

`A128228(A353693(n+1)+A000217(n))`
-/

namespace A353694.P15503451224797961370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128228 (A353693 (n + 1) + A000217 n).toNat

end

end A353694.P15503451224797961370

/-! ## A353694.P1881384890040591628

`(n+1)*A327499(2*A295417(2*(n+1)))`
-/

namespace A353694.P1881384890040591628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327499 (2 * A295417 (2 * (n + 1))).toNat

end

end A353694.P1881384890040591628

/-! ## A353694.P1170852584870152167

`(n+1)*A327499(4*A066636(4*(n+1)))`
-/

namespace A353694.P1170852584870152167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A327499 (4 * A066636 (4 * (n + 1))).toNat

end

end A353694.P1170852584870152167

/-! ## A353694.P15615356498994109544

`(n+1)*A011262(n+1)/A327498(A011262(n+1))`
-/

namespace A353694.P15615356498994109544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A011262 (n + 1) : ℚ) / (A327498 (A011262 (n + 1)).toNat : ℚ))

end

end A353694.P15615356498994109544

/-! ## A353694.P8854198977728982359

`A011262(A011262(n+1))*A327499(A011262(n+1))`
-/

namespace A353694.P8854198977728982359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011262 (A011262 (n + 1)).toNat * A327499 (A011262 (n + 1)).toNat

end

end A353694.P8854198977728982359

/-! ## A353694.P14071213985828760680

`(n+1)*A065033(A327499(n+1)*A344606(n+1))`
-/

namespace A353694.P14071213985828760680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065033 (A327499 (n + 1) * A344606 (n + 1)).toNat

end

end A353694.P14071213985828760680

/-! ## A353694.P2091977301482877052

`(n+1)*A066636(A318956(n+1))`
-/

namespace A353694.P2091977301482877052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A066636 (A318956 (n + 1)).toNat

end

end A353694.P2091977301482877052

/-!
# A353695: Indices of records in A353693.

The programs for A353695, there is no canonical definition to state claims against.
-/

/-! ## A353695.P6539939057055003866

`A019565(A359756(n)%A071382(n+1))`
-/

namespace A353695.P6539939057055003866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (Int.tmod (A359756 n) (A071382 (n + 1))).toNat

end

end A353695.P6539939057055003866

/-! ## A353695.P4877252552714275121

`A077011(lt[A060810(n+1), A279168(2*n+5)])`
-/

namespace A353695.P4877252552714275121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279168 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A353695.P4877252552714275121

/-! ## A353695.P2515216901152066323

`record[gcd(A063007(n), A119319(n+1))]`
-/

namespace A353695.P2515216901152066323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063007 n) (A119319 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353695.P2515216901152066323

/-! ## A353695.P17108917864843044090

`record[gcd(A291549(n+1), A292586(2*(n+2)))]`
-/

namespace A353695.P17108917864843044090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A291549 (n + 1)) (A292586 (2 * (n + 2)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A353695.P17108917864843044090

/-!
# A353698: Number of integer partitions of n whose product equals their length.

The programs for A353698, there is no canonical definition to state claims against.
-/

/-! ## A353698.P11032720123014450110

`A260804(n+4)%A260777(n+1)`
-/

namespace A353698.P11032720123014450110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260804 (n + 4)) (A260777 (n + 1))

end

end A353698.P11032720123014450110

/-! ## A353698.P6099291146505583996

`A260804(n+4)%A017185(A027187(n))`
-/

namespace A353698.P6099291146505583996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260804 (n + 4)) (A017185 (A027187 n).toNat)

end

end A353698.P6099291146505583996

/-! ## A353698.P17197677992412959057

`A260804(A000027(n+4))%A278441(n+1)`
-/

namespace A353698.P17197677992412959057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260804 (A000027 (n + 4)).toNat) (A278441 (n + 1))

end

end A353698.P17197677992412959057

/-! ## A353698.P9591016501815696462

`A053150(A185341(n+1))*A260803(n+3)`
-/

namespace A353698.P9591016501815696462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053150 (A185341 (n + 1)).toNat * A260803 (n + 3)

end

end A353698.P9591016501815696462

/-!
# A353699: Heinz numbers of integer partitions whose product equals their length.

The programs for A353699, there is no canonical definition to state claims against.
-/

/-! ## A353699.P18024671852787246605

`eq[A001222(n+1), A003963(n+1)]+1`
-/

namespace A353699.P18024671852787246605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A353699.P18024671852787246605

/-! ## A353699.P162935282784221955

`eq[log2(A061142(n+1)), A003963(n+1)]+1`
-/

namespace A353699.P162935282784221955
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A353699.P162935282784221955

/-! ## A353699.P7931289879970996241

`eq[val(A165831(n+1), 2), A003963(n+1)]+1`
-/

namespace A353699.P7931289879970996241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165831 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353699.P7931289879970996241

/-! ## A353699.P17469991566223248084

`eq[val(A165835(n+1), 2), A003963(n+1)]+1`
-/

namespace A353699.P17469991566223248084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353699.P17469991566223248084

/-! ## A353699.P10796556630966617498

`eq[val(A167334(n+1), 2), A003963(n+1)]+1`
-/

namespace A353699.P10796556630966617498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A167334 (n + 1)).toNat 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A353699.P10796556630966617498

