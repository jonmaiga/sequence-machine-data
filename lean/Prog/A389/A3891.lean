import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A389101: Array read by ascending antidiagonals: A(n, k) = gcd(n^k, k).

The programs for A389101, the canonical program `A389101.P527784350690185921` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389101 has offset 0).

The definition of A389101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4823 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389101.P527784350690185921

`gcd(A002262(n), A003992(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A389101

/-- `gcd(A002262(n), A003992(n))` -/
def P527784350690185921.Spec : Prop :=
  ∀ n, (P527784350690185921.a n : ℤ) = A389101 n

theorem P527784350690185921.correct : P527784350690185921.Spec := by
  intro n
  simp only [A389101]

end A389101

/-! ## A389101.P10317394369042120346

`gcd(A079901(n), A329221(n))`
-/

namespace A389101.P10317394369042120346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A079901 n) (A329221 n)

end

end A389101.P10317394369042120346

namespace A389101

/-- `gcd(A079901(n), A329221(n))` -/
def P10317394369042120346.Spec : Prop :=
  ∀ n, (P10317394369042120346.a n : ℤ) = A389101 n

end A389101

/-! ## A389101.P14506187310895892393

`gcd(A001222(A059268(n)), A384860(n))`
-/

namespace A389101.P14506187310895892393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A059268 n).toNat) (A384860 n)

end

end A389101.P14506187310895892393

namespace A389101

/-- `gcd(A001222(A059268(n)), A384860(n))` -/
def P14506187310895892393.Spec : Prop :=
  ∀ n, (P14506187310895892393.a n : ℤ) = A389101 n

end A389101

/-! ## A389101.P16682480864731115141

`gcd(A095859(n+1), A144328(n+1))`
-/

namespace A389101.P16682480864731115141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095859 (n + 1)) (A144328 (n + 1))

end

end A389101.P16682480864731115141

namespace A389101

/-- `gcd(A095859(n+1), A144328(n+1))` -/
def P16682480864731115141.Spec : Prop :=
  ∀ n, (P16682480864731115141.a n : ℤ) = A389101 n

end A389101

/-! ## A389101.P2401251155831299201

`A194417(gcd(A025675(n+1), A080955(n)))`
-/

namespace A389101.P2401251155831299201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (Int.gcd (A025675 (n + 1)) (A080955 n))

end

end A389101.P2401251155831299201

namespace A389101

/-- `A194417(gcd(A025675(n+1), A080955(n)))` -/
def P2401251155831299201.Spec : Prop :=
  ∀ n, P2401251155831299201.a n = A389101 n

end A389101

/-! ## A389101.P13739116928335237551

`gcd(A294118(n), A373748(n))`
-/

namespace A389101.P13739116928335237551
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A294118 n) (A373748 n)

end

end A389101.P13739116928335237551

namespace A389101

/-- `gcd(A294118(n), A373748(n))` -/
def P13739116928335237551.Spec : Prop :=
  ∀ n, (P13739116928335237551.a n : ℤ) = A389101 n

end A389101

/-!
# A389104: E.g.f. A(x) satisfies A(x) = exp( x * (1-x) * A(x) ).

The programs for A389104, there is no canonical definition to state claims against.
-/

/-! ## A389104.P8257262237475769697

`3-A162487(A091285(n+1))`
-/

namespace A389104.P8257262237475769697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A162487 (A091285 (n + 1)).toNat

end

end A389104.P8257262237475769697

/-!
# A389108: Number of 4 X 4 matrices in Hermite normal form with determinant n.

The programs for A389108, there is no canonical definition to state claims against.
-/

/-! ## A389108.P2965017080659093840

`(A370220(A090450(n))^(n%2)+n)*(n+1)²`
-/

namespace A389108.P2965017080659093840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A370220 (A090450 n).toNat ^ (n % 2) + (n : ℤ)) * ((n + 1) ^ 2 : ℤ)

end

end A389108.P2965017080659093840

/-! ## A389108.P297503365886372141

`A000005(A011557(n))*A070038(n+1)`
-/

namespace A389108.P297503365886372141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011557 n).toNat * A070038 (n + 1)

end

end A389108.P297503365886372141

/-!
# A389110: Least m such that the two-sided exact 95% Clopper-Pearson binomial confidence interval has worst-case width <= 1/n.

The programs for A389110, there is no canonical definition to state claims against.
-/

/-! ## A389110.P7989255825891569615

`A191932(A016813(3*n))+A016813(n)`
-/

namespace A389110.P7989255825891569615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191932 (A016813 (3 * n)).toNat + A016813 n

end

end A389110.P7989255825891569615

/-!
# A389111: Write 0,1,2,3,4,... in a triangular spiral, a(n) is such that n lies geometrically half way between 0 and a(n).

The programs for A389111, there is no canonical definition to state claims against.
-/

/-! ## A389111.P11750647406284757822

`eq[A040007(n), A307707(n+1)]`
-/

namespace A389111.P11750647406284757822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389111.P11750647406284757822

/-! ## A389111.P12923510504781803325

`eq[A178815(n+1), A307193(n)]`
-/

namespace A389111.P12923510504781803325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178815 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389111.P12923510504781803325

/-! ## A389111.P1863196609314682558

`eq[A060594(A005385(n+1)), A307193(n)]`
-/

namespace A389111.P1863196609314682558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (A005385 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A389111.P1863196609314682558

/-! ## A389111.P10867650006806916969

`lt[A307193(n+1), A107286(A136063(n+1))]`
-/

namespace A389111.P10867650006806916969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 (A136063 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389111.P10867650006806916969

/-! ## A389111.P3565087426603618412

`lt[A307193(n+1), A001222(A136063(3*n+5))]`
-/

namespace A389111.P3565087426603618412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A136063 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A389111.P3565087426603618412

/-!
# A389112: Expansion of g^2/(1 - x^2*g), where g = 1+x*g^4 is the g.f. of A002293.

The programs for A389112, there is no canonical definition to state claims against.
-/

/-! ## A389112.P8076989199994261088

`A390280(n+2)-A002293(n+2)`
-/

namespace A389112.P8076989199994261088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390280 (n + 2) - A002293 (n + 2)

end

end A389112.P8076989199994261088

/-!
# A389115: Expansion of g^3/(1 + x*g)^2, where g = 1+x*g^2 is the g.f. of A000108.

The programs for A389115, the canonical program `A389115.P8667954685780618499` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389115 has offset 0).

The definition of A389115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 171 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389115.P704883175267277935

`A114495(n+1)+A065601(n+1)`
-/

namespace A389115.P704883175267277935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114495 (n + 1) + A065601 (n + 1)

end

end A389115.P704883175267277935

namespace A389115

/-- `A114495(n+1)+A065601(n+1)` -/
def P704883175267277935.Spec : Prop :=
  ∀ n, P704883175267277935.a n = A389115 n

end A389115

/-! ## A389115.P8667954685780618499

`A104629(n)-A114495(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A389115

/-- `A104629(n)-A114495(n+1)` -/
def P8667954685780618499.Spec : Prop :=
  ∀ n, P8667954685780618499.a n = A389115 n

theorem P8667954685780618499.correct : P8667954685780618499.Spec := by
  intro n
  simp only [A389115]

end A389115

/-! ## A389115.P6782132830069790081

`A116914(n+2)-A119012(n+1)`
-/

namespace A389115.P6782132830069790081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116914 (n + 2) - A119012 (n + 1)

end

end A389115.P6782132830069790081

namespace A389115

/-- `A116914(n+2)-A119012(n+1)` -/
def P6782132830069790081.Spec : Prop :=
  ∀ n, P6782132830069790081.a n = A389115 n

end A389115

/-! ## A389115.P350813613652463052

`A014300(n+2)+A114590(n)-A114590(n+1)`
-/

namespace A389115.P350813613652463052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014300 (n + 2) + (A114590 n - A114590 (n + 1))

end

end A389115.P350813613652463052

namespace A389115

/-- `A014300(n+2)+A114590(n)-A114590(n+1)` -/
def P350813613652463052.Spec : Prop :=
  ∀ n, P350813613652463052.a n = A389115 n

end A389115

/-! ## A389115.P2188283193400682375

`A098747(∑[n+1]+2)`
-/

namespace A389115.P2188283193400682375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098747 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A389115.P2188283193400682375

namespace A389115

/-- `A098747(∑[n+1]+2)` -/
def P2188283193400682375.Spec : Prop :=
  ∀ n, P2188283193400682375.a n = A389115 n

end A389115

/-!
# A389119: Numbers that only use the digits 0 and 1 in both base 3 and 10.

The programs for A389119, there is no canonical definition to state claims against.
-/

/-! ## A389119.P17428055613008179878

`filter[A007088(n), A039966(#)]`
-/

namespace A389119.P17428055613008179878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039966 (f1 j).toNat = 1) n)

end

end A389119.P17428055613008179878

/-! ## A389119.P9604827436837033057

`∩[A005836(n+1), A007088(n)]`
-/

namespace A389119.P9604827436837033057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389119.P9604827436837033057

/-!
# A389120: a(n) = 2*a(n-1) + 2*a(n-2) + 2*a(n-3) - a(n-4) with a(0)=0, a(1)=1, a(2)=2, a(3)=7.

The programs for A389120, the canonical program `A389120.P1395821468702004072` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389120 has offset 0).

The definition of A389120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` (program `A389120.P1395821468702004072`, by `A389120.P1395821468702004072.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389120.P1395821468702004072

`2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=7`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389120

/-- `2*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)` -/
def P1395821468702004072.Spec : Prop :=
  ∀ n, P1395821468702004072.a n = A389120 n

theorem P1395821468702004072.correct : P1395821468702004072.Spec := by
  intro n
  simp only [A389120]

end A389120

/-! ## A389120.P5370890330506366222

`ogf((x+x^3)/(1-2x-2x^2-2x^3+x^4))`
-/

namespace A389120.P5370890330506366222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, -2, -2, -2, 1] n

end

end A389120.P5370890330506366222

namespace A389120

/-- `ogf((x+x^3)/(1-2x-2x^2-2x^3+x^4))` -/
def P5370890330506366222.Spec : Prop :=
  ∀ n, P5370890330506366222.a n = A389120 n

end A389120

/-! ## A389120.P15572072599772059943

`A192237(n+2)+A192237(n)`
-/

namespace A389120.P15572072599772059943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192237 (n + 2) + A192237 n

end

end A389120.P15572072599772059943

namespace A389120

/-- `A192237(n+2)+A192237(n)` -/
def P15572072599772059943.Spec : Prop :=
  ∀ n, P15572072599772059943.a n = A389120 n

end A389120

/-! ## A389120.P16374863846633653945

`A045821(n+1)+A045821(n)-A192234(n)`
-/

namespace A389120.P16374863846633653945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045821 (n + 1) + (A045821 n - A192234 n)

end

end A389120.P16374863846633653945

namespace A389120

/-- `A045821(n+1)+A045821(n)-A192234(n)` -/
def P16374863846633653945.Spec : Prop :=
  ∀ n, P16374863846633653945.a n = A389120 n

end A389120

/-! ## A389120.P17810009348072717857

`A317974(n+1)+A317974(n+1)-A192234(n)`
-/

namespace A389120.P17810009348072717857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317974 (n + 1) + (A317974 (n + 1) - A192234 n)

end

end A389120.P17810009348072717857

namespace A389120

/-- `A317974(n+1)+A317974(n+1)-A192234(n)` -/
def P17810009348072717857.Spec : Prop :=
  ∀ n, P17810009348072717857.a n = A389120 n

end A389120

/-! ## A389120.P2991888780929993276

`A387018(n+1)-A138574(n+1)`
-/

namespace A389120.P2991888780929993276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387018 (n + 1) - A138574 (n + 1)

end

end A389120.P2991888780929993276

namespace A389120

/-- `A387018(n+1)-A138574(n+1)` -/
def P2991888780929993276.Spec : Prop :=
  ∀ n, P2991888780929993276.a n = A389120 n

end A389120

/-!
# A389121: Lower (2/3)-midsequence of A000032 (Lucas numbers) and A000045 (Fibonacci numbers); see Comments.

The programs for A389121, the canonical program `A389121.P1288163863579185815` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389121 has offset 0).

The definition of A389121 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389121.P1288163863579185815

`a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=6, a(5)=10, a(6)=17, a(7)=28, a(8)=45, a(9)=73`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389121

/-- `a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` -/
def P1288163863579185815.Spec : Prop :=
  ∀ n, P1288163863579185815.a n = A389121 n

theorem P1288163863579185815.correct : P1288163863579185815.Spec := by
  intro n
  simp only [A389121]

end A389121

/-! ## A389121.P11821232163005289613

`floor(2/3*(A000032(n)+A000045(n)))`
-/

namespace A389121.P11821232163005289613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) / 3 * (A000032 n + A000045 n : ℚ)⌋

end

end A389121.P11821232163005289613

namespace A389121

/-- `floor(2/3*(A000032(n)+A000045(n)))` -/
def P11821232163005289613.Spec : Prop :=
  ∀ n, P11821232163005289613.a n = A389121 n

end A389121

/-! ## A389121.P17851200802003232733

`A004696(n+1)+A000045(n+1)`
-/

namespace A389121.P17851200802003232733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004696 (n + 1) + A000045 (n + 1)

end

end A389121.P17851200802003232733

namespace A389121

/-- `A004696(n+1)+A000045(n+1)` -/
def P17851200802003232733.Spec : Prop :=
  ∀ n, P17851200802003232733.a n = A389121 n

end A389121

/-! ## A389121.P10281074553294169451

`A293547(n+1)+A293545(n+1)`
-/

namespace A389121.P10281074553294169451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293547 (n + 1) + A293545 (n + 1)

end

end A389121.P10281074553294169451

namespace A389121

/-- `A293547(n+1)+A293545(n+1)` -/
def P10281074553294169451.Spec : Prop :=
  ∀ n, P10281074553294169451.a n = A389121 n

end A389121

/-! ## A389121.P10140550013630367156

`A212804(n+2)+A004696(n+1)`
-/

namespace A389121.P10140550013630367156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 2) + A004696 (n + 1)

end

end A389121.P10140550013630367156

namespace A389121

/-- `A212804(n+2)+A004696(n+1)` -/
def P10140550013630367156.Spec : Prop :=
  ∀ n, P10140550013630367156.a n = A389121 n

end A389121

/-! ## A389121.P439714794415863792

`A000032(n)+A000045(n)-A293546(n+1)`
-/

namespace A389121.P439714794415863792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A000045 n - A293546 (n + 1))

end

end A389121.P439714794415863792

namespace A389121

/-- `A000032(n)+A000045(n)-A293546(n+1)` -/
def P439714794415863792.Spec : Prop :=
  ∀ n, P439714794415863792.a n = A389121 n

end A389121

/-! ## A389121.P10309978966332177152

`A000045(n+1)+A179001(n+1)-A179001(n)`
-/

namespace A389121.P10309978966332177152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A179001 (n + 1) - A179001 n)

end

end A389121.P10309978966332177152

namespace A389121

/-- `A000045(n+1)+A179001(n+1)-A179001(n)` -/
def P10309978966332177152.Spec : Prop :=
  ∀ n, P10309978966332177152.a n = A389121 n

end A389121

/-! ## A389121.P237557424521707338

`A293545(n+1)+A389122(n)-A293546(n+1)`
-/

namespace A389121.P237557424521707338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 (n + 1) + (A389122 n - A293546 (n + 1))

end

end A389121.P237557424521707338

namespace A389121

/-- `A293545(n+1)+A389122(n)-A293546(n+1)` -/
def P237557424521707338.Spec : Prop :=
  ∀ n, P237557424521707338.a n = A389121 n

end A389121

/-! ## A389121.P9847973255141604162

`A000045(n+1)+A000045(n+1)-A293546(n+1)`
-/

namespace A389121.P9847973255141604162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000045 (n + 1) - A293546 (n + 1))

end

end A389121.P9847973255141604162

namespace A389121

/-- `A000045(n+1)+A000045(n+1)-A293546(n+1)` -/
def P9847973255141604162.Spec : Prop :=
  ∀ n, P9847973255141604162.a n = A389121 n

end A389121

/-! ## A389121.P14526777575004000822

`floor(∑[a(n-1)+a(n-2)]/3)` with `a(0)=4, a(1)=0`
-/

namespace A389121.P14526777575004000822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3⌋

end

end A389121.P14526777575004000822

namespace A389121

/-- `floor(∑[a(n-1)+a(n-2)]/3)` -/
def P14526777575004000822.Spec : Prop :=
  ∀ n, P14526777575004000822.a n = A389121 n

end A389121

/-!
# A389122: Upper (2/3)-midsequence of A000032 (Lucas numbers) and A000045 (Fibonacci numbers); see Comments.

The programs for A389122, the canonical program `A389122.P14383533839839385431` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389122 has offset 0).

The definition of A389122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389122.P14383533839839385431

`a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=4, a(4)=7, a(5)=11, a(6)=18, a(7)=28, a(8)=46, a(9)=74`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389122

/-- `a(n-1)+a(n-2)+a(n-8)-a(n-9)-a(n-10)` -/
def P14383533839839385431.Spec : Prop :=
  ∀ n, P14383533839839385431.a n = A389122 n

theorem P14383533839839385431.correct : P14383533839839385431.Spec := by
  intro n
  simp only [A389122]

end A389122

/-! ## A389122.P10210060161499727724

`ceil(2/3*(A000032(n)+A000045(n)))`
-/

namespace A389122.P10210060161499727724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) / 3 * (A000032 n + A000045 n : ℚ)⌉

end

end A389122.P10210060161499727724

namespace A389122

/-- `ceil(2/3*(A000032(n)+A000045(n)))` -/
def P10210060161499727724.Spec : Prop :=
  ∀ n, P10210060161499727724.a n = A389122 n

end A389122

/-! ## A389122.P2805126192079060733

`A293543(n+1)+A000045(n+1)`
-/

namespace A389122.P2805126192079060733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (n + 1) + A000045 (n + 1)

end

end A389122.P2805126192079060733

namespace A389122

/-- `A293543(n+1)+A000045(n+1)` -/
def P2805126192079060733.Spec : Prop :=
  ∀ n, P2805126192079060733.a n = A389122 n

end A389122

/-! ## A389122.P7204955682143058124

`A293547(n+1)+A293546(n+1)`
-/

namespace A389122.P7204955682143058124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293547 (n + 1) + A293546 (n + 1)

end

end A389122.P7204955682143058124

namespace A389122

/-- `A293547(n+1)+A293546(n+1)` -/
def P7204955682143058124.Spec : Prop :=
  ∀ n, P7204955682143058124.a n = A389122 n

end A389122

/-! ## A389122.P16344928406285691912

`A293543(n+1)+A212804(n+2)`
-/

namespace A389122.P16344928406285691912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293543 (n + 1) + A212804 (n + 2)

end

end A389122.P16344928406285691912

namespace A389122

/-- `A293543(n+1)+A212804(n+2)` -/
def P16344928406285691912.Spec : Prop :=
  ∀ n, P16344928406285691912.a n = A389122 n

end A389122

/-! ## A389122.P14242422617777306393

`A000032(n)+A000045(n)-A293545(n+1)`
-/

namespace A389122.P14242422617777306393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A000045 n - A293545 (n + 1))

end

end A389122.P14242422617777306393

namespace A389122

/-- `A000032(n)+A000045(n)-A293545(n+1)` -/
def P14242422617777306393.Spec : Prop :=
  ∀ n, P14242422617777306393.a n = A389122 n

end A389122

/-! ## A389122.P15518217723715080258

`A293546(n+1)+A389121(n)-A293545(n+1)`
-/

namespace A389122.P15518217723715080258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293546 (n + 1) + (A389121 n - A293545 (n + 1))

end

end A389122.P15518217723715080258

namespace A389122

/-- `A293546(n+1)+A389121(n)-A293545(n+1)` -/
def P15518217723715080258.Spec : Prop :=
  ∀ n, P15518217723715080258.a n = A389122 n

end A389122

/-! ## A389122.P10815071768543142385

`A000045(n+1)+A000045(n+1)-A293545(n+1)`
-/

namespace A389122.P10815071768543142385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A000045 (n + 1) - A293545 (n + 1))

end

end A389122.P10815071768543142385

namespace A389122

/-- `A000045(n+1)+A000045(n+1)-A293545(n+1)` -/
def P10815071768543142385.Spec : Prop :=
  ∀ n, P10815071768543142385.a n = A389122 n

end A389122

/-!
# A389123: Lower (1/3,1/2)-midsequence of ((2^n)) and ((3^n)); see Comments.

The programs for A389123, the canonical program `A389123.P2459231206358201143` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389123 has offset 0).

The definition of A389123 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389123.P2459231206358201143

`floor(1/3*2^n+1/2*3^n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389123

/-- `floor(1/3*2^n+1/2*3^n)` -/
def P2459231206358201143.Spec : Prop :=
  ∀ n, P2459231206358201143.a n = A389123 n

theorem P2459231206358201143.correct : P2459231206358201143.Spec := by
  intro n
  simp only [A389123]

end A389123

/-! ## A389123.P794902716576646628

`5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` with `a(0)=0, a(1)=2, a(2)=5, a(3)=16`
-/

namespace A389123.P794902716576646628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 5, 16] fun n a =>
  5 * a (n - 1) - 5 * a (n - 2) - 5 * a (n - 3) + 6 * a (n - 4)

end

end A389123.P794902716576646628

namespace A389123

/-- `5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` -/
def P794902716576646628.Spec : Prop :=
  ∀ n, P794902716576646628.a n = A389123 n

end A389123

/-! ## A389123.P1370815115064252935

`A389124(n)-1`
-/

namespace A389123.P1370815115064252935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389124 n - 1

end

end A389123.P1370815115064252935

namespace A389123

/-- `A389124(n)-1` -/
def P1370815115064252935.Spec : Prop :=
  ∀ n, P1370815115064252935.a n = A389123 n

end A389123

/-! ## A389123.P17865388814577763554

`A003462(n)+A001045(n)`
-/

namespace A389123.P17865388814577763554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + A001045 n

end

end A389123.P17865388814577763554

namespace A389123

/-- `A003462(n)+A001045(n)` -/
def P17865388814577763554.Spec : Prop :=
  ∀ n, P17865388814577763554.a n = A389123 n

end A389123

/-! ## A389123.P17334263891552586718

`A167030(n)+A007051(n)`
-/

namespace A389123.P17334263891552586718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n + A007051 n

end

end A389123.P17334263891552586718

namespace A389123

/-- `A167030(n)+A007051(n)` -/
def P17334263891552586718.Spec : Prop :=
  ∀ n, P17334263891552586718.a n = A389123 n

end A389123

/-! ## A389123.P7330593408530721421

`A261547(n)+A167167(n)`
-/

namespace A389123.P7330593408530721421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261547 n + A167167 n

end

end A389123.P7330593408530721421

namespace A389123

/-- `A261547(n)+A167167(n)` -/
def P7330593408530721421.Spec : Prop :=
  ∀ n, P7330593408530721421.a n = A389123 n

end A389123

/-! ## A389123.P8015789719775891285

`A099754(n)-A052953(n)`
-/

namespace A389123.P8015789719775891285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n - A052953 n

end

end A389123.P8015789719775891285

namespace A389123

/-- `A099754(n)-A052953(n)` -/
def P8015789719775891285.Spec : Prop :=
  ∀ n, P8015789719775891285.a n = A389123 n

end A389123

/-! ## A389123.P7287401635341558923

`A087432(n+1)-A005578(n)`
-/

namespace A389123.P7287401635341558923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087432 (n + 1) - A005578 n

end

end A389123.P7287401635341558923

namespace A389123

/-- `A087432(n+1)-A005578(n)` -/
def P7287401635341558923.Spec : Prop :=
  ∀ n, P7287401635341558923.a n = A389123 n

end A389123

/-! ## A389123.P5446186419393893224

`xor(A153284(n+1), A389124(n))`
-/

namespace A389123.P5446186419393893224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A153284 (n + 1)) (A389124 n)

end

end A389123.P5446186419393893224

namespace A389123

/-- `xor(A153284(n+1), A389124(n))` -/
def P5446186419393893224.Spec : Prop :=
  ∀ n, P5446186419393893224.a n = A389123 n

end A389123

/-! ## A389123.P13192733236901830510

`A099754(n)-A005578(n)-A005578(n)`
-/

namespace A389123.P13192733236901830510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099754 n - A005578 n - A005578 n

end

end A389123.P13192733236901830510

namespace A389123

/-- `A099754(n)-A005578(n)-A005578(n)` -/
def P13192733236901830510.Spec : Prop :=
  ∀ n, P13192733236901830510.a n = A389123 n

end A389123

/-! ## A389123.P3563067004475972050

`A007051(n+1)+A001045(n)-A034472(n)`
-/

namespace A389123.P3563067004475972050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) + (A001045 n - A034472 n)

end

end A389123.P3563067004475972050

namespace A389123

/-- `A007051(n+1)+A001045(n)-A034472(n)` -/
def P3563067004475972050.Spec : Prop :=
  ∀ n, P3563067004475972050.a n = A389123 n

end A389123

/-! ## A389123.P16057095278790586337

`A007051(n+1)+A001045(n)-A094388(n+1)`
-/

namespace A389123.P16057095278790586337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (n + 1) + (A001045 n - A094388 (n + 1))

end

end A389123.P16057095278790586337

namespace A389123

/-- `A007051(n+1)+A001045(n)-A094388(n+1)` -/
def P16057095278790586337.Spec : Prop :=
  ∀ n, P16057095278790586337.a n = A389123 n

end A389123

/-! ## A389123.P16862378506361678282

`A344747(n+2)+A001045(n)-A140431(n+1)`
-/

namespace A389123.P16862378506361678282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344747 (n + 2) + (A001045 n - A140431 (n + 1))

end

end A389123.P16862378506361678282

namespace A389123

/-- `A344747(n+2)+A001045(n)-A140431(n+1)` -/
def P16862378506361678282.Spec : Prop :=
  ∀ n, P16862378506361678282.a n = A389123 n

end A389123

/-!
# A389124: Upper (1/3,1/2)-midsequence of ((2^n)) and ((3^n)); see Comments.

The programs for A389124, the canonical program `A389124.P2451251241919747109` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389124 has offset 0).

The definition of A389124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389124.P2451251241919747109

`5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=17`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389124

/-- `5*a(n-1)-5*a(n-2)-5*a(n-3)+6*a(n-4)` -/
def P2451251241919747109.Spec : Prop :=
  ∀ n, P2451251241919747109.a n = A389124 n

theorem P2451251241919747109.correct : P2451251241919747109.Spec := by
  intro n
  simp only [A389124]

end A389124

/-! ## A389124.P1395928810915431793

`A389123(n)+1`
-/

namespace A389124.P1395928810915431793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389123 n + 1

end

end A389124.P1395928810915431793

namespace A389124

/-- `A389123(n)+1` -/
def P1395928810915431793.Spec : Prop :=
  ∀ n, P1395928810915431793.a n = A389124 n

end A389124

/-! ## A389124.P12042818577524223359

`A007051(n)+A001045(n)`
-/

namespace A389124.P12042818577524223359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A001045 n

end

end A389124.P12042818577524223359

namespace A389124

/-- `A007051(n)+A001045(n)` -/
def P12042818577524223359.Spec : Prop :=
  ∀ n, P12042818577524223359.a n = A389124 n

end A389124

/-! ## A389124.P16858181450633092700

`A128209(n)+A003462(n)`
-/

namespace A389124.P16858181450633092700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n + A003462 n

end

end A389124.P16858181450633092700

namespace A389124

/-- `A128209(n)+A003462(n)` -/
def P16858181450633092700.Spec : Prop :=
  ∀ n, P16858181450633092700.a n = A389124 n

end A389124

/-! ## A389124.P17193514642452478297

`A155944(n)+A046717(n)`
-/

namespace A389124.P17193514642452478297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155944 n + A046717 n

end

end A389124.P17193514642452478297

namespace A389124

/-- `A155944(n)+A046717(n)` -/
def P17193514642452478297.Spec : Prop :=
  ∀ n, P17193514642452478297.a n = A389124 n

end A389124

/-! ## A389124.P3781790197143219413

`A167030(n)+A115098(n)`
-/

namespace A389124.P3781790197143219413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167030 n + A115098 n

end

end A389124.P3781790197143219413

namespace A389124

/-- `A167030(n)+A115098(n)` -/
def P3781790197143219413.Spec : Prop :=
  ∀ n, P3781790197143219413.a n = A389124 n

end A389124

/-! ## A389124.P13399623635882413487

`A124302(n+1)+A001045(n)`
-/

namespace A389124.P13399623635882413487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) + A001045 n

end

end A389124.P13399623635882413487

namespace A389124

/-- `A124302(n+1)+A001045(n)` -/
def P13399623635882413487.Spec : Prop :=
  ∀ n, P13399623635882413487.a n = A389124 n

end A389124

/-! ## A389124.P2837495794533839905

`A001045(n+2)+A000392(n+1)`
-/

namespace A389124.P2837495794533839905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) + A000392 (n + 1)

end

end A389124.P2837495794533839905

namespace A389124

/-- `A001045(n+2)+A000392(n+1)` -/
def P2837495794533839905.Spec : Prop :=
  ∀ n, P2837495794533839905.a n = A389124 n

end A389124

/-! ## A389124.P2289065710765224613

`A091000(n+1)+A232015(n)+A001045(n)`
-/

namespace A389124.P2289065710765224613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091000 (n + 1) + (A232015 n + A001045 n)

end

end A389124.P2289065710765224613

namespace A389124

/-- `A091000(n+1)+A232015(n)+A001045(n)` -/
def P2289065710765224613.Spec : Prop :=
  ∀ n, P2289065710765224613.a n = A389124 n

end A389124

/-! ## A389124.P5011175210076090876

`A005578(n+1)+A007051(n)-A005578(n)`
-/

namespace A389124.P5011175210076090876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 (n + 1) + (A007051 n - A005578 n)

end

end A389124.P5011175210076090876

namespace A389124

/-- `A005578(n+1)+A007051(n)-A005578(n)` -/
def P5011175210076090876.Spec : Prop :=
  ∀ n, P5011175210076090876.a n = A389124 n

end A389124

/-! ## A389124.P10295419622664711758

`A140431(n+1)+A001045(n)-A094556(n+1)`
-/

namespace A389124.P10295419622664711758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140431 (n + 1) + (A001045 n - A094556 (n + 1))

end

end A389124.P10295419622664711758

namespace A389124

/-- `A140431(n+1)+A001045(n)-A094556(n+1)` -/
def P10295419622664711758.Spec : Prop :=
  ∀ n, P10295419622664711758.a n = A389124 n

end A389124

/-!
# A389127: a(n) = Sum_{k=0..floor(n/3)} binomial(n,k) * binomial(n+k,n-3*k).

The programs for A389127, there is no canonical definition to state claims against.
-/

/-! ## A389127.P4426042791918017935

`A002526(n)-∑{e}[A113147(n), #]`
-/

namespace A389127.P4426042791918017935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113147 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002526 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A389127.P4426042791918017935

/-! ## A389127.P2667167535476121908

`A002526(n)-A001222(A113147(n))`
-/

namespace A389127.P2667167535476121908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002526 n - A001222 (A113147 n).toNat

end

end A389127.P2667167535476121908

/-!
# A389128: a(n) = Sum_{k=0..floor(n/4)} binomial(n,k) * binomial(n+k,n-4*k).

The programs for A389128, there is no canonical definition to state claims against.
-/

/-! ## A389128.P13036643070252188104

`A088607(A097081(n))`
-/

namespace A389128.P13036643070252188104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088607 (A097081 n).toNat

end

end A389128.P13036643070252188104

/-! ## A389128.P18369181409712028721

`A088607(A107587(n))`
-/

namespace A389128.P18369181409712028721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088607 (A107587 n).toNat

end

end A389128.P18369181409712028721

/-! ## A389128.P1760259027684158190

`A002229(A276308(n))`
-/

namespace A389128.P1760259027684158190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002229 (A276308 n).toNat

end

end A389128.P1760259027684158190

/-!
# A389131: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^3 * (1 + x)^2) ).

The programs for A389131, there is no canonical definition to state claims against.
-/

/-! ## A389131.P3639343333285296205

`A005041(A249934(n)-1)`
-/

namespace A389131.P3639343333285296205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A249934 n - 1).toNat

end

end A389131.P3639343333285296205

/-! ## A389131.P11044656421842689573

`A380059(A032557(n+1))-A335803(A367342(n+1))`
-/

namespace A389131.P11044656421842689573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A032557 (n + 1)).toNat - A335803 (A367342 (n + 1)).toNat

end

end A389131.P11044656421842689573

/-! ## A389131.P8001722491113394876

`A380059(A032563(n+1))-A335803(A367342(n+1))`
-/

namespace A389131.P8001722491113394876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380059 (A032563 (n + 1)).toNat - A335803 (A367342 (n + 1)).toNat

end

end A389131.P8001722491113394876

/-!
# A389132: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^4 * (1 + x)^2) ).

The programs for A389132, there is no canonical definition to state claims against.
-/

/-! ## A389132.P622104695767580488

`or(A285007(A141214(n)), A306847(n+2))`
-/

namespace A389132.P622104695767580488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285007 (A141214 n).toNat) (A306847 (n + 2))

end

end A389132.P622104695767580488

/-! ## A389132.P4867074379571455552

`or(A285007(A047993(2*n+5)), A373906(n))`
-/

namespace A389132.P4867074379571455552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285007 (A047993 (2 * n + 5)).toNat) (A373906 n)

end

end A389132.P4867074379571455552

/-! ## A389132.P13221199986413805504

`or(A285007(A197561(2*n+1)), A306847(n+2))`
-/

namespace A389132.P13221199986413805504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285007 (A197561 (2 * n + 1)).toNat) (A306847 (n + 2))

end

end A389132.P13221199986413805504

/-! ## A389132.P1602487227375307219

`or(A285007(A047993(2*n+5)), A306847(n+2))`
-/

namespace A389132.P1602487227375307219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285007 (A047993 (2 * n + 5)).toNat) (A306847 (n + 2))

end

end A389132.P1602487227375307219

/-!
# A389136: a(n) = 2*sqrt(n/A037449(n)).

The programs for A389136, the canonical program `A389136.P1117857567589598408` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389136 has offset 1).

The definition of A389136 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389136.P1117857567589598408

`2*sqrt((n+1)/A037449(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A389136

/-- `2*sqrt((n+1)/A037449(n+1))` -/
def P1117857567589598408.Spec : Prop :=
  ∀ n, P1117857567589598408.a n = (A389136 (n + 1) : ℝ)

end A389136

/-! ## A389136.P12889468773481399292

`A278541(A063890(n+1))`
-/

namespace A389136.P12889468773481399292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (A063890 (n + 1)).toNat

end

end A389136.P12889468773481399292

namespace A389136

/-- `A278541(A063890(n+1))` -/
def P12889468773481399292.Spec : Prop :=
  ∀ n, P12889468773481399292.a n = A389136 (n + 1)

end A389136

/-! ## A389136.P6991949605528614616

`A050603(A269375(2*(n+2))+A269342(n))`
-/

namespace A389136.P6991949605528614616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A269375 (2 * (n + 2)) + A269342 n).toNat

end

end A389136.P6991949605528614616

namespace A389136

/-- `A050603(A269375(2*(n+2))+A269342(n))` -/
def P6991949605528614616.Spec : Prop :=
  ∀ n, P6991949605528614616.a n = A389136 (n + 1)

end A389136

/-! ## A389136.P8743127895562910663

`gcd(A000217(n+4), A007067(A264428(3*n+2)))`
-/

namespace A389136.P8743127895562910663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000217 (n + 4)) (A007067 (A264428 (3 * n + 2)).toNat)

end

end A389136.P8743127895562910663

namespace A389136

/-- `gcd(A000217(n+4), A007067(A264428(3*n+2)))` -/
def P8743127895562910663.Spec : Prop :=
  ∀ n, (P8743127895562910663.a n : ℤ) = A389136 (n + 1)

end A389136

/-! ## A389136.P220438888598044963

`gcd(A014848(n), A138125(A364345(n)))`
-/

namespace A389136.P220438888598044963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014848 n) (A138125 (A364345 n).toNat)

end

end A389136.P220438888598044963

namespace A389136

/-- `gcd(A014848(n), A138125(A364345(n)))` -/
def P220438888598044963.Spec : Prop :=
  ∀ n, (P220438888598044963.a n : ℤ) = A389136 (n + 1)

end A389136

/-!
# A389139: Primes that remain prime when their digits are rotated once to the right in both binary and decimal.

The programs for A389139, there is no canonical definition to state claims against.
-/

/-! ## A389139.P5249174806758501943

`∩[A234901(n+1), A389481(n+1)]`
-/

namespace A389139.P5249174806758501943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234901 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389139.P5249174806758501943

/-! ## A389139.P13206159380192469537

`∩[A068652(n+1), A189534(n+1)]`
-/

namespace A389139.P13206159380192469537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389139.P13206159380192469537

/-! ## A389139.P16887266838721563160

`∩[A210394(n+1), A228118(n+1)]`
-/

namespace A389139.P16887266838721563160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210394 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389139.P16887266838721563160

/-!
# A389140: Smallest final number reachable by successively dividing a substring of digits of n by 2.

The programs for A389140, there is no canonical definition to state claims against.
-/

/-! ## A389140.P6595006682690861563

`((n+1)/2^val(n+1, 2))%A272610(A353431(3*(n+1)))`
-/

namespace A389140.P6595006682690861563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A272610 (A353431 (3 * (n + 1))).toNat)

end

end A389140.P6595006682690861563

/-! ## A389140.P12326461155765725135

`A000265(n+1)-A280823(A351241(n+1))`
-/

namespace A389140.P12326461155765725135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A280823 (A351241 (n + 1)).toNat

end

end A389140.P12326461155765725135

/-! ## A389140.P12100548626373349336

`A000265(n+1)-A333755(A007318(3*n))`
-/

namespace A389140.P12100548626373349336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A333755 (A007318 (3 * n)).toNat

end

end A389140.P12100548626373349336

/-! ## A389140.P117379659112054047

`A000265(xor(A043547(2*n+3), A351241(n+1)))`
-/

namespace A389140.P117379659112054047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (Int.xor (A043547 (2 * n + 3)) (A351241 (n + 1))).toNat

end

end A389140.P117379659112054047

/-! ## A389140.P8025286001382181201

`(n+1)/2^val(n+1, 2)-A010879(A205295(n+2))`
-/

namespace A389140.P8025286001382181201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) - (A010879 (A205295 (n + 2)).toNat : ℚ)

end

end A389140.P8025286001382181201

/-!
# A389142: Lower (1/3)-midsequence of square numbers and triangular numbers; see Comments.

The programs for A389142, the canonical program `A389142.P3959257341600142451` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389142 has offset 0).

The definition of A389142 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389142.P3959257341600142451

`floor((3*n²+n+1)/6)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389142

/-- `floor((3*n²+n+1)/6)` -/
def P3959257341600142451.Spec : Prop :=
  ∀ n, P3959257341600142451.a n = A389142 n

theorem P3959257341600142451.correct : P3959257341600142451.Spec := by
  intro n
  simp only [A389142]

end A389142

/-! ## A389142.P3673296786485181643

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=5, a(4)=8`
-/

namespace A389142.P3673296786485181643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 5, 8] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A389142.P3673296786485181643

namespace A389142

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P3673296786485181643.Spec : Prop :=
  ∀ n, P3673296786485181643.a n = A389142 n

end A389142

/-! ## A389142.P15926330741385926438

`∑[n-∑[n]%3]`
-/

namespace A389142.P15926330741385926438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P15926330741385926438

namespace A389142

/-- `∑[n-∑[n]%3]` -/
def P15926330741385926438.Spec : Prop :=
  ∀ n, P15926330741385926438.a n = A389142 n

end A389142

/-! ## A389142.P1079222729880678750

`∑[∑[-n]%3+n]`
-/

namespace A389142.P1079222729880678750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P1079222729880678750

namespace A389142

/-- `∑[∑[-n]%3+n]` -/
def P1079222729880678750.Spec : Prop :=
  ∀ n, P1079222729880678750.a n = A389142 n

end A389142

/-! ## A389142.P13598025918783262356

`∑[a(n-3)+3]` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A389142.P13598025918783262356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P13598025918783262356

namespace A389142

/-- `∑[a(n-3)+3]` -/
def P13598025918783262356.Spec : Prop :=
  ∀ n, (P13598025918783262356.a n : ℤ) = A389142 n

end A389142

/-! ## A389142.P1736734082728761559

`C(n+1, 2)-ceil(n/3)`
-/

namespace A389142.P1736734082728761559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) - ⌈(n : ℚ) / 3⌉

end

end A389142.P1736734082728761559

namespace A389142

/-- `C(n+1, 2)-ceil(n/3)` -/
def P1736734082728761559.Spec : Prop :=
  ∀ n, P1736734082728761559.a n = A389142 n

end A389142

/-! ## A389142.P2947996374650345399

`floor(2*n/3)+C(n, 2)`
-/

namespace A389142.P2947996374650345399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / 3⌋ + (Nat.choose n 2 : ℤ)

end

end A389142.P2947996374650345399

namespace A389142

/-- `floor(2*n/3)+C(n, 2)` -/
def P2947996374650345399.Spec : Prop :=
  ∀ n, P2947996374650345399.a n = A389142 n

end A389142

/-! ## A389142.P13045363324870910014

`∑[∑[abs(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A389142.P13045363324870910014
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P13045363324870910014

namespace A389142

/-- `∑[∑[abs(a(n-3))]]` -/
def P13045363324870910014.Spec : Prop :=
  ∀ n, (P13045363324870910014.a n : ℤ) = A389142 n

end A389142

/-! ## A389142.P3565512707335306046

`∑[∑[dr(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`
-/

namespace A389142.P3565512707335306046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1] fun n f2 =>
  SequenceMachineLib.digitalRoot (f2 (n - 3) : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P3565512707335306046

namespace A389142

/-- `∑[∑[dr(a(n-3))]]` -/
def P3565512707335306046.Spec : Prop :=
  ∀ n, (P3565512707335306046.a n : ℤ) = A389142 n

end A389142

/-! ## A389142.P2777948917830905982

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A389142.P2777948917830905982
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P2777948917830905982

namespace A389142

/-- `∑[∑[floor(a(n-3))]]` -/
def P2777948917830905982.Spec : Prop :=
  ∀ n, (P2777948917830905982.a n : ℤ) = A389142 n

end A389142

/-! ## A389142.P1923389362554185642

`∑[∑[ceil(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A389142.P1923389362554185642
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P1923389362554185642

namespace A389142

/-- `∑[∑[ceil(a(n-3))]]` -/
def P1923389362554185642.Spec : Prop :=
  ∀ n, (P1923389362554185642.a n : ℤ) = A389142 n

end A389142

/-! ## A389142.P16344893921536834086

`∑[∑[round(a(n-3))]]` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`

`round` is left out, it is the identity on integers.
-/

namespace A389142.P16344893921536834086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 2, 1] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P16344893921536834086

namespace A389142

/-- `∑[∑[round(a(n-3))]]` -/
def P16344893921536834086.Spec : Prop :=
  ∀ n, (P16344893921536834086.a n : ℤ) = A389142 n

end A389142

/-! ## A389142.P128167000203928837

`∑[n]-∑[a(n-3)²]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A389142.P128167000203928837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A389142.P128167000203928837

namespace A389142

/-- `∑[n]-∑[a(n-3)²]` -/
def P128167000203928837.Spec : Prop :=
  ∀ n, P128167000203928837.a n = A389142 n

end A389142

/-! ## A389142.P7735734055342775059

`(n+1)²%∑[∑[(n+1)%3]]`
-/

namespace A389142.P7735734055342775059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A389142.P7735734055342775059

namespace A389142

/-- `(n+1)²%∑[∑[(n+1)%3]]` -/
def P7735734055342775059.Spec : Prop :=
  ∀ n, (P7735734055342775059.a n : ℤ) = A389142 n

end A389142

/-! ## A389142.P15709921323869159046

`3*n+a(n-3)-4` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A389142.P15709921323869159046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  (3 * n : ℤ) + (a (n - 3) - 4)

end

end A389142.P15709921323869159046

namespace A389142

/-- `3*n+a(n-3)-4` -/
def P15709921323869159046.Spec : Prop :=
  ∀ n, P15709921323869159046.a n = A389142 n

end A389142

/-! ## A389142.P13523918444131506865

`3*n-(4-a(n-3))` with `a(0)=0, a(1)=0, a(2)=2`
-/

namespace A389142.P13523918444131506865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2] fun n a =>
  (3 * n : ℤ) - (4 - a (n - 3))

end

end A389142.P13523918444131506865

namespace A389142

/-- `3*n-(4-a(n-3))` -/
def P13523918444131506865.Spec : Prop :=
  ∀ n, P13523918444131506865.a n = A389142 n

end A389142

/-! ## A389142.P7777280178200321743

`∑[n]-∑[a(n-3)^3]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A389142.P7777280178200321743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A389142.P7777280178200321743

namespace A389142

/-- `∑[n]-∑[a(n-3)^3]` -/
def P7777280178200321743.Spec : Prop :=
  ∀ n, P7777280178200321743.a n = A389142 n

end A389142

/-! ## A389142.P15767365371857555731

`∑[∑[2-a(a(n-2))]-1]` with `a(0)=1, a(1)=0`
-/

namespace A389142.P15767365371857555731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 - f2 (f2 (n - 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389142.P15767365371857555731

namespace A389142

/-- `∑[∑[2-a(a(n-2))]-1]` -/
def P15767365371857555731.Spec : Prop :=
  ∀ n, P15767365371857555731.a n = A389142 n

end A389142

/-!
# A389143: Upper (1/3)-midsequence of square numbers and triangular numbers; see Comments.

The programs for A389143, the canonical program `A389143.P8194175019073902030` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389143 has offset 0).

The definition of A389143 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389143.P8194175019073902030

`ceil((3*n²+n)/6)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389143

/-- `ceil((3*n²+n)/6)` -/
def P8194175019073902030.Spec : Prop :=
  ∀ n, P8194175019073902030.a n = A389143 n

theorem P8194175019073902030.correct : P8194175019073902030.Spec := by
  intro n
  simp only [A389143]

end A389143

/-! ## A389143.P12431063845769225321

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5, a(4)=9`
-/

namespace A389143.P12431063845769225321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5, 9] fun n a =>
  2 * a (n - 1) - a (n - 2) + a (n - 3) - 2 * a (n - 4) + a (n - 5)

end

end A389143.P12431063845769225321

namespace A389143

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P12431063845769225321.Spec : Prop :=
  ∀ n, P12431063845769225321.a n = A389143 n

end A389143

/-! ## A389143.P13416898641422301349

`∑[n-∑{p}[n, val(#, 3)]]`
-/

namespace A389143.P13416898641422301349
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 3 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389143.P13416898641422301349

namespace A389143

/-- `∑[n-∑{p}[n, val(#, 3)]]` -/
def P13416898641422301349.Spec : Prop :=
  ∀ n, P13416898641422301349.a n = A389143 n

end A389143

/-! ## A389143.P3826095363863380180

`∑[n-val(∏{p}[n, #], 3)]`
-/

namespace A389143.P3826095363863380180
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389143.P3826095363863380180

namespace A389143

/-- `∑[n-val(∏{p}[n, #], 3)]` -/
def P3826095363863380180.Spec : Prop :=
  ∀ n, P3826095363863380180.a n = A389143 n

end A389143

/-! ## A389143.P12260933294686075129

`∑[n-char[lcm(3, n+1)]]`
-/

namespace A389143.P12260933294686075129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389143.P12260933294686075129

namespace A389143

/-- `∑[n-char[lcm(3, n+1)]]` -/
def P12260933294686075129.Spec : Prop :=
  ∀ n, P12260933294686075129.a n = A389143 n

end A389143

/-! ## A389143.P10345612586226068167

`C(n+1, 2)-floor(n/3)`
-/

namespace A389143.P10345612586226068167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) - ⌊(n : ℚ) / 3⌋

end

end A389143.P10345612586226068167

namespace A389143

/-- `C(n+1, 2)-floor(n/3)` -/
def P10345612586226068167.Spec : Prop :=
  ∀ n, P10345612586226068167.a n = A389143 n

end A389143

/-! ## A389143.P13694032530281255477

`ceil(2*n/3)+C(n, 2)`
-/

namespace A389143.P13694032530281255477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℚ) / 3⌉ + (Nat.choose n 2 : ℤ)

end

end A389143.P13694032530281255477

namespace A389143

/-- `ceil(2*n/3)+C(n, 2)` -/
def P13694032530281255477.Spec : Prop :=
  ∀ n, P13694032530281255477.a n = A389143 n

end A389143

/-! ## A389143.P925549907896308204

`∑[a(n-3)+3]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2`
-/

namespace A389143.P925549907896308204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2] fun n f1 =>
  f1 (n - 3) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389143.P925549907896308204

namespace A389143

/-- `∑[a(n-3)+3]` -/
def P925549907896308204.Spec : Prop :=
  ∀ n, (P925549907896308204.a n : ℤ) = A389143 n

end A389143

/-! ## A389143.P13281127640560156962

`∑[∑[floor(a(n-3))]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A389143.P13281127640560156962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389143.P13281127640560156962

namespace A389143

/-- `∑[∑[floor(a(n-3))]]` -/
def P13281127640560156962.Spec : Prop :=
  ∀ n, (P13281127640560156962.a n : ℤ) = A389143 n

end A389143

/-! ## A389143.P14592167861370731157

`round(C(n+1, 2)-(n-1)/3)`
-/

namespace A389143.P14592167861370731157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) 2 : ℚ) - ((n : ℤ) - 1 : ℚ) / 3)

end

end A389143.P14592167861370731157

namespace A389143

/-- `round(C(n+1, 2)-(n-1)/3)` -/
def P14592167861370731157.Spec : Prop :=
  ∀ n, P14592167861370731157.a n = A389143 n

end A389143

/-! ## A389143.P4642521862960831784

`a(n-1)-4%gcd(3, n)+n` with `a(0)=0`
-/

namespace A389143.P4642521862960831784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - ((4 % Nat.gcd 3 n : ℕ) : ℤ) + (n : ℤ)

end

end A389143.P4642521862960831784

namespace A389143

/-- `a(n-1)-4%gcd(3, n)+n` -/
def P4642521862960831784.Spec : Prop :=
  ∀ n, P4642521862960831784.a n = A389143 n

end A389143

/-! ## A389143.P86203108387139740

`∑[∑[a(n-3)^a(n-2)]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=0, a(4)=2`
-/

namespace A389143.P86203108387139740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 0, 2] fun n f2 =>
  f2 (n - 3) ^ f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389143.P86203108387139740

namespace A389143

/-- `∑[∑[a(n-3)^a(n-2)]]` -/
def P86203108387139740.Spec : Prop :=
  ∀ n, (P86203108387139740.a n : ℤ) = A389143 n

end A389143

/-! ## A389143.P10588541060382342882

`∑[n+1]-∪[2*(2*n+1), 2*n+1]`
-/

namespace A389143.P10588541060382342882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n : ℤ)

end

end A389143.P10588541060382342882

namespace A389143

/-- `∑[n+1]-∪[2*(2*n+1), 2*n+1]` -/
def P10588541060382342882.Spec : Prop :=
  ∀ n, P10588541060382342882.a n = A389143 n

end A389143

/-! ## A389143.P3015236186823251765

`∑[A335129(n+3)]`
-/

namespace A389143.P3015236186823251765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335129 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389143.P3015236186823251765

namespace A389143

/-- `∑[A335129(n+3)]` -/
def P3015236186823251765.Spec : Prop :=
  ∀ n, P3015236186823251765.a n = A389143 n

end A389143

/-! ## A389143.P6885272307788405693

`n²-A171452(n)`
-/

namespace A389143.P6885272307788405693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A171452 n

end

end A389143.P6885272307788405693

namespace A389143

/-- `n²-A171452(n)` -/
def P6885272307788405693.Spec : Prop :=
  ∀ n, P6885272307788405693.a n = A389143 n

end A389143

/-! ## A389143.P14501658182266089458

`∑[n]-A002264(n)`
-/

namespace A389143.P14501658182266089458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A002264 n

end

end A389143.P14501658182266089458

namespace A389143

/-- `∑[n]-A002264(n)` -/
def P14501658182266089458.Spec : Prop :=
  ∀ n, P14501658182266089458.a n = A389143 n

end A389143

/-! ## A389143.P12025943286038114894

`∑[n²]-A131476(n)`
-/

namespace A389143.P12025943286038114894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A131476 n

end

end A389143.P12025943286038114894

namespace A389143

/-- `∑[n²]-A131476(n)` -/
def P12025943286038114894.Spec : Prop :=
  ∀ n, P12025943286038114894.a n = A389143 n

end A389143

/-! ## A389143.P6903341978209794297

`∑[n+1-A100063(n)]`
-/

namespace A389143.P6903341978209794297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A100063 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389143.P6903341978209794297

namespace A389143

/-- `∑[n+1-A100063(n)]` -/
def P6903341978209794297.Spec : Prop :=
  ∀ n, P6903341978209794297.a n = A389143 n

end A389143

/-! ## A389143.P13951551086636872476

`(n+1)²-A024401(n+1)`
-/

namespace A389143.P13951551086636872476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A024401 (n + 1)

end

end A389143.P13951551086636872476

namespace A389143

/-- `(n+1)²-A024401(n+1)` -/
def P13951551086636872476.Spec : Prop :=
  ∀ n, P13951551086636872476.a n = A389143 n

end A389143

/-! ## A389143.P9304185925436985626

`∑[n+1]-A042968(n+1)`
-/

namespace A389143.P9304185925436985626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A042968 (n + 1)

end

end A389143.P9304185925436985626

namespace A389143

/-- `∑[n+1]-A042968(n+1)` -/
def P9304185925436985626.Spec : Prop :=
  ∀ n, P9304185925436985626.a n = A389143 n

end A389143

/-!
# A389144: Weak numbers k such that lpf(k)^2 | k, where lpf(n) denotes the least prime factor of n (A020639).

The programs for A389144, the canonical program `A389144.P13442328069711189050` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389144 has offset 1).

The definition of A389144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8372 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389144.P17569700161974423594

`filter[A283050(n+1), A389905(#)]`
-/

namespace A389144.P17569700161974423594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A389144.P17569700161974423594

namespace A389144

/-- `filter[A283050(n+1), A389905(#)]` -/
def P17569700161974423594.Spec : Prop :=
  ∀ n, P17569700161974423594.a n = A389144 (n + 1)

end A389144

/-! ## A389144.P13442328069711189050

`filter[A332785(n+1), A319710(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A389144

/-- `filter[A332785(n+1), A319710(#)]` -/
def P13442328069711189050.Spec : Prop :=
  ∀ n, P13442328069711189050.a n = A389144 (n + 1)

theorem P13442328069711189050.correct : P13442328069711189050.Spec := by
  intro n
  simp only [A389144, Nat.add_sub_cancel]

end A389144

/-! ## A389144.P7200404172060455141

`∩[A283050(n+1), A332785(n+1)]`
-/

namespace A389144.P7200404172060455141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389144.P7200404172060455141

namespace A389144

/-- `∩[A283050(n+1), A332785(n+1)]` -/
def P7200404172060455141.Spec : Prop :=
  ∀ n, (P7200404172060455141.a n : ℤ) = A389144 (n + 1)

end A389144

/-! ## A389144.P459142762206757930

`filter[A389065(n+1), A319710(#)]`
-/

namespace A389144.P459142762206757930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A389144.P459142762206757930

namespace A389144

/-- `filter[A389065(n+1), A319710(#)]` -/
def P459142762206757930.Spec : Prop :=
  ∀ n, P459142762206757930.a n = A389144 (n + 1)

end A389144

/-! ## A389144.P1711843292230733263

`∩[A283050(n+1), A389065(n+1)]`
-/

namespace A389144.P1711843292230733263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389144.P1711843292230733263

namespace A389144

/-- `∩[A283050(n+1), A389065(n+1)]` -/
def P1711843292230733263.Spec : Prop :=
  ∀ n, (P1711843292230733263.a n : ℤ) = A389144 (n + 1)

end A389144

/-! ## A389144.P859200420968393552

`filter[A052485(n+1), A319710(#)]`
-/

namespace A389144.P859200420968393552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A389144.P859200420968393552

namespace A389144

/-- `filter[A052485(n+1), A319710(#)]` -/
def P859200420968393552.Spec : Prop :=
  ∀ n, P859200420968393552.a n = A389144 (n + 1)

end A389144

/-! ## A389144.P1228460916116535744

`∩[A052485(n+1), A283050(n+1)]`
-/

namespace A389144.P1228460916116535744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283050 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389144.P1228460916116535744

namespace A389144

/-- `∩[A052485(n+1), A283050(n+1)]` -/
def P1228460916116535744.Spec : Prop :=
  ∀ n, (P1228460916116535744.a n : ℤ) = A389144 (n + 1)

end A389144

/-!
# A389145: Weak numbers k such that gpf(k)^2 | k, where gpf(n) denotes the greatest prime factor of n (A006530).

The programs for A389145, the canonical program `A389145.P1473204687618999298` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389145 has offset 1).

The definition of A389145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 929 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389145.P1473204687618999298

`filter[A070003(n+1), A389905(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A389145

/-- `filter[A070003(n+1), A389905(#)]` -/
def P1473204687618999298.Spec : Prop :=
  ∀ n, P1473204687618999298.a n = A389145 (n + 1)

theorem P1473204687618999298.correct : P1473204687618999298.Spec := by
  intro n
  simp only [A389145, Nat.add_sub_cancel]

end A389145

/-! ## A389145.P8987934393305272790

`filter[A388306(n+1), A389905(#)]`
-/

namespace A389145.P8987934393305272790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A389145.P8987934393305272790

namespace A389145

/-- `filter[A388306(n+1), A389905(#)]` -/
def P8987934393305272790.Spec : Prop :=
  ∀ n, P8987934393305272790.a n = A389145 (n + 1)

end A389145

/-! ## A389145.P10941054272378470566

`filter[A387919(n+1), A319988(#)]`
-/

namespace A389145.P10941054272378470566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A389145.P10941054272378470566

namespace A389145

/-- `filter[A387919(n+1), A319988(#)]` -/
def P10941054272378470566.Spec : Prop :=
  ∀ n, P10941054272378470566.a n = A389145 (n + 1)

end A389145

/-! ## A389145.P17142462220003466255

`∩[A070003(n+1), A387919(n+1)]`
-/

namespace A389145.P17142462220003466255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389145.P17142462220003466255

namespace A389145

/-- `∩[A070003(n+1), A387919(n+1)]` -/
def P17142462220003466255.Spec : Prop :=
  ∀ n, (P17142462220003466255.a n : ℤ) = A389145 (n + 1)

end A389145

/-! ## A389145.P4977317032155933751

`∩[A387919(n+1), A388306(n+1)]`
-/

namespace A389145.P4977317032155933751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389145.P4977317032155933751

namespace A389145

/-- `∩[A387919(n+1), A388306(n+1)]` -/
def P4977317032155933751.Spec : Prop :=
  ∀ n, (P4977317032155933751.a n : ℤ) = A389145 (n + 1)

end A389145

/-! ## A389145.P9668424797004658782

`filter[A332785(n+1), A319988(#)]`
-/

namespace A389145.P9668424797004658782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319988 (f1 j).toNat = 1) n)

end

end A389145.P9668424797004658782

namespace A389145

/-- `filter[A332785(n+1), A319988(#)]` -/
def P9668424797004658782.Spec : Prop :=
  ∀ n, P9668424797004658782.a n = A389145 (n + 1)

end A389145

/-! ## A389145.P15988091112116024300

`∩[A070003(n+1), A332785(n+1)]`
-/

namespace A389145.P15988091112116024300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389145.P15988091112116024300

namespace A389145

/-- `∩[A070003(n+1), A332785(n+1)]` -/
def P15988091112116024300.Spec : Prop :=
  ∀ n, (P15988091112116024300.a n : ℤ) = A389145 (n + 1)

end A389145

/-! ## A389145.P13165433081660098051

`∩[A332785(n+1), A388306(n+1)]`
-/

namespace A389145.P13165433081660098051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389145.P13165433081660098051

namespace A389145

/-- `∩[A332785(n+1), A388306(n+1)]` -/
def P13165433081660098051.Spec : Prop :=
  ∀ n, (P13165433081660098051.a n : ℤ) = A389145 (n + 1)

end A389145

/-! ## A389145.P591363603397091581

`∩[A070003(n+1), A389065(n+1)]`
-/

namespace A389145.P591363603397091581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389145.P591363603397091581

namespace A389145

/-- `∩[A070003(n+1), A389065(n+1)]` -/
def P591363603397091581.Spec : Prop :=
  ∀ n, (P591363603397091581.a n : ℤ) = A389145 (n + 1)

end A389145

/-! ## A389145.P10195106515967634284

`∩[A388306(n+1), A389065(n+1)]`
-/

namespace A389145.P10195106515967634284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389145.P10195106515967634284

namespace A389145

/-- `∩[A388306(n+1), A389065(n+1)]` -/
def P10195106515967634284.Spec : Prop :=
  ∀ n, (P10195106515967634284.a n : ℤ) = A389145 (n + 1)

end A389145

/-! ## A389145.P3992508681244879489

`∩[A052485(n+1), A070003(n+1)]`
-/

namespace A389145.P3992508681244879489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389145.P3992508681244879489

namespace A389145

/-- `∩[A052485(n+1), A070003(n+1)]` -/
def P3992508681244879489.Spec : Prop :=
  ∀ n, (P3992508681244879489.a n : ℤ) = A389145 (n + 1)

end A389145

/-! ## A389145.P13751892347106297977

`∩[A052485(n+1), A388306(n+1)]`
-/

namespace A389145.P13751892347106297977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389145.P13751892347106297977

namespace A389145

/-- `∩[A052485(n+1), A388306(n+1)]` -/
def P13751892347106297977.Spec : Prop :=
  ∀ n, (P13751892347106297977.a n : ℤ) = A389145 (n + 1)

end A389145

/-!
# A389146: Classification of nonnegative integers into numbers in {0, 1}, primes, proper prime powers, weak composites, and powerful numbers that are not prime powers.

The programs for A389146, there is no canonical definition to state claims against.
-/

/-! ## A389146.P15999833408853985367

`A294901(gcd(n, A338439(n)))`
-/

namespace A389146.P15999833408853985367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294901 (Int.gcd (n : ℤ) (A338439 n))

end

end A389146.P15999833408853985367

/-! ## A389146.P17178087546963354865

`A059252(A000005(∏{d}[n, #]))`
-/

namespace A389146.P17178087546963354865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A000005 (∏ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A389146.P17178087546963354865

/-! ## A389146.P10041484987228490419

`∑{e}[A000079(n), A294901(#)]`
-/

namespace A389146.P10041484987228490419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A294901 (Nat.factorization (f1 n).natAbs p)

end

end A389146.P10041484987228490419

/-! ## A389146.P3652928823658006683

`A031346(A223195(n+1)+A049820(n+1))`
-/

namespace A389146.P3652928823658006683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A223195 (n + 1) + A049820 (n + 1)).toNat

end

end A389146.P3652928823658006683

/-! ## A389146.P4903317267507826988

`A388303(A374431(n))`
-/

namespace A389146.P4903317267507826988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388303 (A374431 n).toNat

end

end A389146.P4903317267507826988

/-!
# A389150: Nonprimes k with no proper divisor d such that gcd(d^2 - 1, k) = 1.

The programs for A389150, there is no canonical definition to state claims against.
-/

/-! ## A389150.P6994131232328651271

`A110936(A265052(n))`
-/

namespace A389150.P6994131232328651271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110936 (A265052 n).toNat

end

end A389150.P6994131232328651271

/-!
# A389153: a(n) = Sum_{k=0..floor(n/2)} binomial(n,k) * binomial(n+3*k,n-2*k).

The programs for A389153, there is no canonical definition to state claims against.
-/

/-! ## A389153.P9250267405411283032

`A006318(n)-A051277(A381817(n))+1`
-/

namespace A389153.P9250267405411283032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n - A051277 (A381817 n).toNat + 1

end

end A389153.P9250267405411283032

/-!
# A389154: a(n) = Sum_{k=0..floor(n/3)} binomial(n,k) * binomial(n+3*k,n-3*k).

The programs for A389154, there is no canonical definition to state claims against.
-/

/-! ## A389154.P2327078981478776623

`A032547(A102881(n))`
-/

namespace A389154.P2327078981478776623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032547 (A102881 n).toNat

end

end A389154.P2327078981478776623

/-! ## A389154.P5032030193678636624

`A254524(A295258(n)+3)`
-/

namespace A389154.P5032030193678636624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254524 (A295258 n + 3).toNat

end

end A389154.P5032030193678636624

/-!
# A389157: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^2 * (1 + x)^4) ).

The programs for A389157, there is no canonical definition to state claims against.
-/

/-! ## A389157.P7754028316248713920

`A209081(A149455(n))`
-/

namespace A389157.P7754028316248713920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209081 (A149455 n).toNat

end

end A389157.P7754028316248713920

/-! ## A389157.P13927506220565139662

`A358024(C(n+3, 4))`
-/

namespace A389157.P13927506220565139662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358024 (Nat.choose (n + 3) 4)

end

end A389157.P13927506220565139662

/-!
# A389158: Expansion of (1/x) * Series_Reversion( x / (1 + x + x^3 * (1 + x)^4) ).

The programs for A389158, there is no canonical definition to state claims against.
-/

/-! ## A389158.P1281505089966577629

`A131280(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A389158.P1281505089966577629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A131280 (a (n - 1)).toNat

end

end A389158.P1281505089966577629

/-! ## A389158.P2629653642710889822

`A350799(A212961(n))`
-/

namespace A389158.P2629653642710889822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350799 (A212961 n).toNat

end

end A389158.P2629653642710889822

/-! ## A389158.P4882641159833620712

`A331593(A308113(n))`
-/

namespace A389158.P4882641159833620712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331593 (A308113 n).toNat

end

end A389158.P4882641159833620712

/-!
# A389159: Maximal number of complex spherical realizations among all minimally rigid graphs on n vertices.

The programs for A389159, there is no canonical definition to state claims against.
-/

/-! ## A389159.P14080596689123384664

`A010554(3^n+3)`
-/

namespace A389159.P14080596689123384664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (3 ^ n + 3)

end

end A389159.P14080596689123384664

/-! ## A389159.P9231902934745377337

`∏[A354582(A001595(n))]`
-/

namespace A389159.P9231902934745377337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354582 (A001595 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A389159.P9231902934745377337

/-! ## A389159.P10811141191974006925

`round(2^(n-1))*A282622(2^((n-1)%(n+1)))`
-/

namespace A389159.P10811141191974006925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) * A282622 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ))).toNat

end

end A389159.P10811141191974006925

/-! ## A389159.P7400045159198767113

`2^(-1%(n+1)+n)*A282622(round(2^xor(-1, -n)))`
-/

namespace A389159.P7400045159198767113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ) * (A282622 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.xor (-1) (-(n : ℤ)) : ℤ))).toNat : ℚ)

end

end A389159.P7400045159198767113

/-!
# A389160: a(n) = A350388(A228058(n)), where A350388(x) is the largest unitary divisor of x that is a square, and A228058 gives the numbers satisfying Euler's condition for odd perfect numbers.

The programs for A389160, there is no canonical definition to state claims against.
-/

/-! ## A389160.P10828819897831829562

`A228058(n+1)/A389161(n+1)`
-/

namespace A389160.P10828819897831829562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228058 (n + 1) : ℚ) / (A389161 (n + 1) : ℚ)

end

end A389160.P10828819897831829562

/-! ## A389160.P6140452436842775829

`A350388(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389160.P6140452436842775829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350388 (A228058 (n + 1)).toNat

end

end A389160.P6140452436842775829

/-! ## A389160.P7937433619031410419

`(A325379(n+1)+A325377(n+1))/A389161(n+1)`
-/

namespace A389160.P7937433619031410419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325379 (n + 1) + A325377 (n + 1) : ℚ) / (A389161 (n + 1) : ℚ)

end

end A389160.P7937433619031410419

/-! ## A389160.P12276501340239121695

`A057637(A389200(n+1))`
-/

namespace A389160.P12276501340239121695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (A389200 (n + 1)).toNat

end

end A389160.P12276501340239121695

/-! ## A389160.P5601170023868792597

`A057521(2*A228058(n+1))`
-/

namespace A389160.P5601170023868792597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (2 * A228058 (n + 1)).toNat

end

end A389160.P5601170023868792597

/-!
# A389161: a(n) = A350389(A228058(n)), where A350389(x) is the largest unitary divisor of x that is an exponentially odd number, and A228058 gives the numbers satisfying Euler's condition for odd perfect numbers.

The programs for A389161, there is no canonical definition to state claims against.
-/

/-! ## A389161.P4624294122994631717

`A228058(n+1)/A389160(n+1)`
-/

namespace A389161.P4624294122994631717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228058 (n + 1) : ℚ) / (A389160 (n + 1) : ℚ)

end

end A389161.P4624294122994631717

/-! ## A389161.P10446003666195733966

`A350389(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389161.P10446003666195733966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A228058 (n + 1)).toNat

end

end A389161.P10446003666195733966

/-! ## A389161.P688989320473221005

`A388997(n+1)/A389160(n+1)*A389167(n+1)`
-/

namespace A389161.P688989320473221005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388997 (n + 1) : ℚ) / (A389160 (n + 1) : ℚ) * (A389167 (n + 1) : ℚ)

end

end A389161.P688989320473221005

/-! ## A389161.P10675035063162331784

`A001065(A228058(n+1))-A389207(n+1)`
-/

namespace A389161.P10675035063162331784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A228058 (n + 1)).toNat - A389207 (n + 1)

end

end A389161.P10675035063162331784

/-!
# A389162: a(n) = A034448(n) - A048250(n), where A034448 is the sum of unitary divisors and A048250 is the sum of squarefree divisors.

The programs for A389162, the canonical program `A389162.P5482749429256733056` is in `Seq.B007.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389162 has offset 1).

The definition of A389162 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389162.P5482749429256733056

`A034448(n+1)-A048250(n+1)`

The canonical program, it is in `Seq.B007.C002`.
-/

namespace A389162

/-- `A034448(n+1)-A048250(n+1)` -/
def P5482749429256733056.Spec : Prop :=
  ∀ n, P5482749429256733056.a n = A389162 (n + 1)

theorem P5482749429256733056.correct : P5482749429256733056.Spec := by
  intro n
  simp only [A389162, Nat.add_sub_cancel]

end A389162

/-! ## A389162.P9885514891061274117

`A162296(n+1)-A048146(n+1)`
-/

namespace A389162.P9885514891061274117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (n + 1) - A048146 (n + 1)

end

end A389162.P9885514891061274117

namespace A389162

/-- `A162296(n+1)-A048146(n+1)` -/
def P9885514891061274117.Spec : Prop :=
  ∀ n, P9885514891061274117.a n = A389162 (n + 1)

end A389162

/-! ## A389162.P10543381590770618939

`A034460(n+1)-A325313(n+1)`
-/

namespace A389162.P10543381590770618939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) - A325313 (n + 1)

end

end A389162.P10543381590770618939

namespace A389162

/-- `A034460(n+1)-A325313(n+1)` -/
def P10543381590770618939.Spec : Prop :=
  ∀ n, P10543381590770618939.a n = A389162 (n + 1)

end A389162

/-! ## A389162.P10596183247705452879

`A325814(n+1)-A325314(n+1)`
-/

namespace A389162.P10596183247705452879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) - A325314 (n + 1)

end

end A389162.P10596183247705452879

namespace A389162

/-- `A325814(n+1)-A325314(n+1)` -/
def P10596183247705452879.Spec : Prop :=
  ∀ n, P10596183247705452879.a n = A389162 (n + 1)

end A389162

/-! ## A389162.P16232199589760416326

`A389204(n+1)-A388994(n+1)`
-/

namespace A389162.P16232199589760416326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389204 (n + 1) - A388994 (n + 1)

end

end A389162.P16232199589760416326

namespace A389162

/-- `A389204(n+1)-A388994(n+1)` -/
def P16232199589760416326.Spec : Prop :=
  ∀ n, P16232199589760416326.a n = A389162 (n + 1)

end A389162

/-! ## A389162.P18346216344427156661

`A034448(n+1)-A000203(A007947(n+1))`
-/

namespace A389162.P18346216344427156661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A000203 (A007947 (n + 1)).toNat

end

end A389162.P18346216344427156661

namespace A389162

/-- `A034448(n+1)-A000203(A007947(n+1))` -/
def P18346216344427156661.Spec : Prop :=
  ∀ n, P18346216344427156661.a n = A389162 (n + 1)

end A389162

/-! ## A389162.P8310456407165754294

`A034448(n+1)-A323159(n+1)*A389075(n+1)`
-/

namespace A389162.P8310456407165754294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A323159 (n + 1) * A389075 (n + 1)

end

end A389162.P8310456407165754294

namespace A389162

/-- `A034448(n+1)-A323159(n+1)*A389075(n+1)` -/
def P8310456407165754294.Spec : Prop :=
  ∀ n, P8310456407165754294.a n = A389162 (n + 1)

end A389162

/-! ## A389162.P4816832728315700047

`(A389074(n+1)-A389075(n+1))*A323159(n+1)`
-/

namespace A389162.P4816832728315700047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A389074 (n + 1) - A389075 (n + 1)) * A323159 (n + 1)

end

end A389162.P4816832728315700047

namespace A389162

/-- `(A389074(n+1)-A389075(n+1))*A323159(n+1)` -/
def P4816832728315700047.Spec : Prop :=
  ∀ n, P4816832728315700047.a n = A389162 (n + 1)

end A389162

/-! ## A389162.P4075861914299257680

`A394481(n+1)-A344465(n+1)`
-/

namespace A389162.P4075861914299257680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394481 (n + 1) - A344465 (n + 1)

end

end A389162.P4075861914299257680

namespace A389162

/-- `A394481(n+1)-A344465(n+1)` -/
def P4075861914299257680.Spec : Prop :=
  ∀ n, P4075861914299257680.a n = A389162 (n + 1)

end A389162

/-!
# A389163: a(n) = A325973(A228058(n)), where A325973 is the arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors} and A228058 gives the numbers satisfying Euler's condition for odd perfect numbers.

The programs for A389163, there is no canonical definition to state claims against.
-/

/-! ## A389163.P17550063345932230761

`A325973(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389163.P17550063345932230761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325973 (A228058 (n + 1)).toNat

end

end A389163.P17550063345932230761

/-! ## A389163.P6919170381571992815

`A389217(n+1)+A228058(n+1)`
-/

namespace A389163.P6919170381571992815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389217 (n + 1) + A228058 (n + 1)

end

end A389163.P6919170381571992815

/-! ## A389163.P2768754314983000480

`A389218(n+1)+A325377(n+1)`
-/

namespace A389163.P2768754314983000480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389218 (n + 1) + A325377 (n + 1)

end

end A389163.P2768754314983000480

/-! ## A389163.P4208758046239528726

`A389217(n+1)+A325379(n+1)+A325377(n+1)`
-/

namespace A389163.P4208758046239528726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389217 (n + 1) + (A325379 (n + 1) + A325377 (n + 1))

end

end A389163.P4208758046239528726

/-! ## A389163.P7610148520373215196

`A389217(n+1)+A389164(n+1)+A325319(n+1)`
-/

namespace A389163.P7610148520373215196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389217 (n + 1) + (A389164 (n + 1) + A325319 (n + 1))

end

end A389163.P7610148520373215196

/-! ## A389163.P4483396203707260660

`A389217(n+1)+A389203(n+1)-A325377(n+1)`
-/

namespace A389163.P4483396203707260660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389217 (n + 1) + (A389203 (n + 1) - A325377 (n + 1))

end

end A389163.P4483396203707260660

/-! ## A389163.P2408621047083404544

`A389217(n+1)+∪[A351574(n+1), A386429(n+1)]`
-/

namespace A389163.P2408621047083404544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386429 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389217 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A389163.P2408621047083404544

/-! ## A389163.P1976707120424102927

`A389217(n+1)+∩[A191218(n+1), A360769(n+1)]`
-/

namespace A389163.P1976707120424102927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389217 (n + 1) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A389163.P1976707120424102927

/-!
# A389164: Sum of the squarefree divisors of the numbers satisfying Euler's condition for odd perfect numbers: a(n) = A048250(A228058(n)).

The programs for A389164, there is no canonical definition to state claims against.
-/

/-! ## A389164.P12174241593643755593

`A389096(n+1)-A325378(n+1)`
-/

namespace A389164.P12174241593643755593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - A325378 (n + 1)

end

end A389164.P12174241593643755593

/-! ## A389164.P12298369242302575240

`A389203(n+1)-A389096(n+1)`
-/

namespace A389164.P12298369242302575240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A389096 (n + 1)

end

end A389164.P12298369242302575240

/-! ## A389164.P14595628969014509849

`A000203(A389167(n+1))`
-/

namespace A389164.P14595628969014509849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A389167 (n + 1)).toNat

end

end A389164.P14595628969014509849

/-! ## A389164.P15134725065887172007

`A048250(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389164.P15134725065887172007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A228058 (n + 1)).toNat

end

end A389164.P15134725065887172007

/-! ## A389164.P14911878673149982074

`A228058(n+1)-A325319(n+1)`
-/

namespace A389164.P14911878673149982074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - A325319 (n + 1)

end

end A389164.P14911878673149982074

/-! ## A389164.P15290228065716635391

`A325377(n+1)-A325320(n+1)`
-/

namespace A389164.P15290228065716635391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) - A325320 (n + 1)

end

end A389164.P15290228065716635391

/-! ## A389164.P9679275877129907866

`A228058(n+1)+A325320(n+1)-A325378(n+1)`
-/

namespace A389164.P9679275877129907866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325320 (n + 1) - A325378 (n + 1))

end

end A389164.P9679275877129907866

/-! ## A389164.P8624108257740283995

`A228058(n+1)-(A325379(n+1)+A325320(n+1))`
-/

namespace A389164.P8624108257740283995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - (A325379 (n + 1) + A325320 (n + 1))

end

end A389164.P8624108257740283995

/-! ## A389164.P12275990187156968487

`A389203(n+1)-(A325320(n+1)+A228058(n+1))`
-/

namespace A389164.P12275990187156968487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - (A325320 (n + 1) + A228058 (n + 1))

end

end A389164.P12275990187156968487

/-! ## A389164.P17903456309991145305

`A389096(n+1)-(A325320(n+1)+A325319(n+1))`
-/

namespace A389164.P17903456309991145305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389096 (n + 1) - (A325320 (n + 1) + A325319 (n + 1))

end

end A389164.P17903456309991145305

/-! ## A389164.P1695899319333187493

`A389198(n+1)-(A325823(n+1)+A325319(n+1))`
-/

namespace A389164.P1695899319333187493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389198 (n + 1) - (A325823 (n + 1) + A325319 (n + 1))

end

end A389164.P1695899319333187493

/-! ## A389164.P7256767951585641371

`A389163(n+1)-(A389217(n+1)+A325319(n+1))`
-/

namespace A389164.P7256767951585641371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) - (A389217 (n + 1) + A325319 (n + 1))

end

end A389164.P7256767951585641371

/-! ## A389164.P16425378621168755011

`A389206(n+1)-(A389208(n+1)+A325320(n+1))`
-/

namespace A389164.P16425378621168755011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389206 (n + 1) - (A389208 (n + 1) + A325320 (n + 1))

end

end A389164.P16425378621168755011

/-! ## A389164.P18113988059241776662

`A389163(n+1)+A389218(n+1)-A325824(n+1)`
-/

namespace A389164.P18113988059241776662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389163 (n + 1) + (A389218 (n + 1) - A325824 (n + 1))

end

end A389164.P18113988059241776662

/-! ## A389164.P474159949108801861

`A000203(A228058(n+1))-A389096(n+1)`
-/

namespace A389164.P474159949108801861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A228058 (n + 1)).toNat - A389096 (n + 1)

end

end A389164.P474159949108801861

/-! ## A389164.P15763901069237223922

`A048250(A389167(2*n+1-n))`
-/

namespace A389164.P15763901069237223922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (A389167 (2 * n + 1 - n)).toNat

end

end A389164.P15763901069237223922

/-! ## A389164.P16703109793968129787

`A162296(A228058(n+1))-A325378(n+1)`
-/

namespace A389164.P16703109793968129787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (A228058 (n + 1)).toNat - A325378 (n + 1)

end

end A389164.P16703109793968129787

/-! ## A389164.P15918051527597820106

`A389203(n+1)-A162296(A228058(n+1))`
-/

namespace A389164.P15918051527597820106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A162296 (A228058 (n + 1)).toNat

end

end A389164.P15918051527597820106

/-! ## A389164.P1709191828653184017

`A001065(A228058(n+1))-A325320(n+1)`
-/

namespace A389164.P1709191828653184017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A228058 (n + 1)).toNat - A325320 (n + 1)

end

end A389164.P1709191828653184017

/-!
# A389165: 

The programs for A389165, there is no canonical definition to state claims against.
-/

/-! ## A389165.P4943051734981940809

`A228058(n+1)-A389208(n+1)`
-/

namespace A389165.P4943051734981940809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) - A389208 (n + 1)

end

end A389165.P4943051734981940809

/-! ## A389165.P4065410883370590435

`A325377(n+1)-A389207(n+1)`
-/

namespace A389165.P4065410883370590435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) - A389207 (n + 1)

end

end A389165.P4065410883370590435

/-! ## A389165.P1589634186630827905

`A389203(n+1)-A389206(n+1)`
-/

namespace A389165.P1589634186630827905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389203 (n + 1) - A389206 (n + 1)

end

end A389165.P1589634186630827905

/-! ## A389165.P1799245157496904828

`gcd(A389167(n+1), A389208(n+1))`
-/

namespace A389165.P1799245157496904828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A389167 (n + 1)) (A389208 (n + 1))

end

end A389165.P1799245157496904828

/-! ## A389165.P2681297105674205598

`A389206(n+1)-(A389208(n+1)+A389207(n+1))`
-/

namespace A389165.P2681297105674205598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389206 (n + 1) - (A389208 (n + 1) + A389207 (n + 1))

end

end A389165.P2681297105674205598

/-! ## A389165.P11698670539676795427

`A007913(A228058(n+1))`
-/

namespace A389165.P11698670539676795427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A228058 (n + 1)).toNat

end

end A389165.P11698670539676795427

/-!
# A389166: 

The programs for A389166, there is no canonical definition to state claims against.
-/

/-! ## A389166.P3719384149486924690

`A228058(n+1)/(A228058(n+1)-A389208(n+1))`
-/

namespace A389166.P3719384149486924690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228058 (n + 1) : ℚ) / (A228058 (n + 1) - A389208 (n + 1) : ℚ)

end

end A389166.P3719384149486924690

/-! ## A389166.P14740826676593486222

`A008833(A228058(n+1))`
-/

namespace A389166.P14740826676593486222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A228058 (n + 1)).toNat

end

end A389166.P14740826676593486222

/-! ## A389166.P3517922771953814697

`A008833(A388997(n+1)*A389167(n+1))`
-/

namespace A389166.P3517922771953814697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008833 (A388997 (n + 1) * A389167 (n + 1)).toNat

end

end A389166.P3517922771953814697

/-!
# A389167: Largest squarefree number dividing the numbers satisfying Euler's condition for odd perfect numbers: a(n) = A007947(A228058(n)).

The programs for A389167, there is no canonical definition to state claims against.
-/

/-! ## A389167.P3986195266541036320

`A228058(n+1)/A388997(n+1)`
-/

namespace A389167.P3986195266541036320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228058 (n + 1) : ℚ) / (A388997 (n + 1) : ℚ)

end

end A389167.P3986195266541036320

/-! ## A389167.P16485435406043909693

`A007947(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389167.P16485435406043909693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A228058 (n + 1)).toNat

end

end A389167.P16485435406043909693

/-!
# A389168: Square array A(n,k) = A388978(A388981(n, k)), read by descending antidiagonals.

The programs for A389168, there is no canonical definition to state claims against.
-/

/-! ## A389168.P16372405149919231100

`A388978(A388981(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389168.P16372405149919231100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388978 (A388981 (n + 1)).toNat

end

end A389168.P16372405149919231100

/-! ## A389168.P10684368007813729915

`A388978(A388993(n+1)+A388988(n+1))`
-/

namespace A389168.P10684368007813729915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388978 (A388993 (n + 1) + A388988 (n + 1)).toNat

end

end A389168.P10684368007813729915

/-!
# A389169: Square array A(n,k) = A388979(A388981(n, k)), read by descending antidiagonals.

The programs for A389169, there is no canonical definition to state claims against.
-/

/-! ## A389169.P6939808752835754924

`A388979(A388981(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389169.P6939808752835754924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388979 (A388981 (n + 1)).toNat

end

end A389169.P6939808752835754924

/-! ## A389169.P2652213134969392806

`A388979(A388993(n+1)+A388988(n+1))`
-/

namespace A389169.P2652213134969392806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388979 (A388993 (n + 1) + A388988 (n + 1)).toNat

end

end A389169.P2652213134969392806

/-!
# A389170: a(n) = A057723(n) - A048146(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

The programs for A389170, the canonical program `A389170.P11666675562721126669` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389170 has offset 1).

The definition of A389170 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389170.P11744386937725447009

`n+1-A389171(n+1)`
-/

namespace A389170.P11744386937725447009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A389171 (n + 1)

end

end A389170.P11744386937725447009

namespace A389170

/-- `n+1-A389171(n+1)` -/
def P11744386937725447009.Spec : Prop :=
  ∀ n, P11744386937725447009.a n = A389170 (n + 1)

end A389170

/-! ## A389170.P11666675562721126669

`A057723(n+1)-A048146(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A389170

/-- `A057723(n+1)-A048146(n+1)` -/
def P11666675562721126669.Spec : Prop :=
  ∀ n, P11666675562721126669.a n = A389170 (n + 1)

theorem P11666675562721126669.correct : P11666675562721126669.Spec := by
  intro n
  simp only [A389170, Nat.add_sub_cancel]

end A389170

/-! ## A389170.P11519888612091638100

`A336564(n+1)+A034460(n+1)`
-/

namespace A389170.P11519888612091638100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336564 (n + 1) + A034460 (n + 1)

end

end A389170.P11519888612091638100

namespace A389170

/-- `A336564(n+1)+A034460(n+1)` -/
def P11519888612091638100.Spec : Prop :=
  ∀ n, P11519888612091638100.a n = A389170 (n + 1)

end A389170

/-! ## A389170.P1484543150921257071

`A336563(n+1)+A325814(n+1)`
-/

namespace A389170.P1484543150921257071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336563 (n + 1) + A325814 (n + 1)

end

end A389170.P1484543150921257071

namespace A389170

/-- `A336563(n+1)+A325814(n+1)` -/
def P1484543150921257071.Spec : Prop :=
  ∀ n, P1484543150921257071.a n = A389170 (n + 1)

end A389170

/-! ## A389170.P6480845434679086331

`A034448(n+1)-A308135(n+1)`
-/

namespace A389170.P6480845434679086331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1) - A308135 (n + 1)

end

end A389170.P6480845434679086331

namespace A389170

/-- `A034448(n+1)-A308135(n+1)` -/
def P6480845434679086331.Spec : Prop :=
  ∀ n, P6480845434679086331.a n = A389170 (n + 1)

end A389170

/-!
# A389171: a(n) = n + A048146(n) - A057723(n), where A048146 is sum of non-unitary divisors and A057723 is sum of positive divisors of n that are divisible by every prime that divides n.

The programs for A389171, the canonical program `A389171.P8921738463794581484` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389171 has offset 1).

The definition of A389171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048146, A057723, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A389171.P12167348751121344528

`n+1-A389170(n+1)`
-/

namespace A389171.P12167348751121344528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A389170 (n + 1)

end

end A389171.P12167348751121344528

namespace A389171

/-- `n+1-A389170(n+1)` -/
def P12167348751121344528.Spec : Prop :=
  ∀ n, P12167348751121344528.a n = A389171 (n + 1)

end A389171

/-! ## A389171.P8921738463794581484

`n+1+A048146(n+1)-A057723(n+1)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A389171

/-- `n+1+A048146(n+1)-A057723(n+1)` -/
def P8921738463794581484.Spec : Prop :=
  ∀ n, P8921738463794581484.a n = A389171 (n + 1)

theorem P8921738463794581484.correct : P8921738463794581484.Spec := by
  intro n
  simp only [A389171, Nat.add_sub_cancel]

end A389171

/-! ## A389171.P12491784071691826404

`A308135(n+1)-A034460(n+1)`
-/

namespace A389171.P12491784071691826404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308135 (n + 1) - A034460 (n + 1)

end

end A389171.P12491784071691826404

namespace A389171

/-- `A308135(n+1)-A034460(n+1)` -/
def P12491784071691826404.Spec : Prop :=
  ∀ n, P12491784071691826404.a n = A389171 (n + 1)

end A389171

/-! ## A389171.P12465429733194804431

`A048146(n+1)-A336563(n+1)`
-/

namespace A389171.P12465429733194804431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1) - A336563 (n + 1)

end

end A389171.P12465429733194804431

namespace A389171

/-- `A048146(n+1)-A336563(n+1)` -/
def P12465429733194804431.Spec : Prop :=
  ∀ n, P12465429733194804431.a n = A389171 (n + 1)

end A389171

/-! ## A389171.P7393748319044928843

`A060401(n+1)%A389170(n+1)`
-/

namespace A389171.P7393748319044928843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060401 (n + 1)) (A389170 (n + 1))

end

end A389171.P7393748319044928843

namespace A389171

/-- `A060401(n+1)%A389170(n+1)` -/
def P7393748319044928843.Spec : Prop :=
  ∀ n, P7393748319044928843.a n = A389171 (n + 1)

end A389171

/-! ## A389171.P14394797608552025407

`A095208(n+1)%A389170(n+1)`
-/

namespace A389171.P14394797608552025407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095208 (n + 1)) (A389170 (n + 1))

end

end A389171.P14394797608552025407

namespace A389171

/-- `A095208(n+1)%A389170(n+1)` -/
def P14394797608552025407.Spec : Prop :=
  ∀ n, P14394797608552025407.a n = A389171 (n + 1)

end A389171

/-!
# A389172: a(n) = 2^(n+1) + 4^(n-1) - 1.

The programs for A389172, the canonical program `A389172.P979450038217868466` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389172 has offset 1).

The definition of A389172 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+2)+4^n-1` (program `A389172.P979450038217868466`, by `A389172.P979450038217868466.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389172.P979450038217868466

`2^(n+2)+4^n-1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389172

/-- `2^(n+2)+4^n-1` -/
def P979450038217868466.Spec : Prop :=
  ∀ n, P979450038217868466.a n = A389172 (n + 1)

theorem P979450038217868466.correct : P979450038217868466.Spec := by
  intro n
  simp only [A389172, Nat.add_sub_cancel]

end A389172

/-! ## A389172.P12911224873648301002

`Δ[A125128(n+1)+A002450(n)]`
-/

namespace A389172.P12911224873648301002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125128 (n + 1) + A002450 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389172.P12911224873648301002

namespace A389172

/-- `Δ[A125128(n+1)+A002450(n)]` -/
def P12911224873648301002.Spec : Prop :=
  ∀ n, P12911224873648301002.a n = A389172 (n + 1)

end A389172

/-! ## A389172.P2991820695968496738

`A131816(A276819(n+1))`
-/

namespace A389172.P2991820695968496738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 (A276819 (n + 1)).toNat

end

end A389172.P2991820695968496738

namespace A389172

/-- `A131816(A276819(n+1))` -/
def P2991820695968496738.Spec : Prop :=
  ∀ n, P2991820695968496738.a n = A389172 (n + 1)

end A389172

/-!
# A389173: Number of mutual-visibility sets in the n-sun graph.

The programs for A389173, the canonical program `A389173.P9350498967192247457` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389173 has offset 1).

The definition of A389173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389173.P9350498967192247457

`5*a(n-1)-6*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=4, a(1)=13, a(2)=42, a(3)=135, a(4)=448`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389173

/-- `5*a(n-1)-6*a(n-2)+2*a(n-3)-a(n-4)+a(n-5)` -/
def P9350498967192247457.Spec : Prop :=
  ∀ n, P9350498967192247457.a n = A389173 (n + 1)

theorem P9350498967192247457.correct : P9350498967192247457.Spec := by
  intro n
  simp only [A389173, Nat.add_sub_cancel]

end A389173

/-! ## A389173.P11575773061299418962

`2*A108627(n+1)+n`
-/

namespace A389173.P11575773061299418962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108627 (n + 1) + (n : ℤ)

end

end A389173.P11575773061299418962

namespace A389173

/-- `2*A108627(n+1)+n` -/
def P11575773061299418962.Spec : Prop :=
  ∀ n, P11575773061299418962.a n = A389173 (n + 1)

end A389173

/-! ## A389173.P2492486934792912195

`A001644(2*(n+1))+n+1`
-/

namespace A389173.P2492486934792912195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001644 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A389173.P2492486934792912195

namespace A389173

/-- `A001644(2*(n+1))+n+1` -/
def P2492486934792912195.Spec : Prop :=
  ∀ n, P2492486934792912195.a n = A389173 (n + 1)

end A389173

/-! ## A389173.P10824296297348503848

`A075676(2*(n+1))+n+1`
-/

namespace A389173.P10824296297348503848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075676 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A389173.P10824296297348503848

namespace A389173

/-- `A075676(2*(n+1))+n+1` -/
def P10824296297348503848.Spec : Prop :=
  ∀ n, P10824296297348503848.a n = A389173 (n + 1)

end A389173

/-! ## A389173.P316405891997031574

`Δ[A214727(2*n+1)+A000124(n)]`
-/

namespace A389173.P316405891997031574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 (2 * n + 1) + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A389173.P316405891997031574

namespace A389173

/-- `Δ[A214727(2*n+1)+A000124(n)]` -/
def P316405891997031574.Spec : Prop :=
  ∀ n, P316405891997031574.a n = A389173 (n + 1)

end A389173

/-!
# A389175: Period of all n-th order linear recurrence integers sequence with constant integer coefficients mod 9.

The programs for A389175, there is no canonical definition to state claims against.
-/

/-! ## A389175.P5335765265494504789

`A000010(A342883(n)-A337893(n+2))`
-/

namespace A389175.P5335765265494504789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A342883 n - A337893 (n + 2)).toNat

end

end A389175.P5335765265494504789

/-!
# A389178: a(n) = 3*2^n + 3*n + 1.

The programs for A389178, the canonical program `A389178.P3385213191501255692` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389178 has offset 0).

The definition of A389178 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*2^n+3*n+1` (program `A389178.P3385213191501255692`, by `A389178.P3385213191501255692.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A389178.P3385213191501255692

`3*2^n+3*n+1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389178

/-- `3*2^n+3*n+1` -/
def P3385213191501255692.Spec : Prop :=
  ∀ n, (P3385213191501255692.a n : ℤ) = A389178 n

theorem P3385213191501255692.correct : P3385213191501255692.Spec := by
  intro n
  simp only [A389178]

end A389178

/-! ## A389178.P14972968924097717999

`ogf((-4+6x+x^2)/(-1+4x-5x^2+2x^3))`
-/

namespace A389178.P14972968924097717999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, -1] [1, -4, 5, -2] n

end

end A389178.P14972968924097717999

namespace A389178

/-- `ogf((-4+6x+x^2)/(-1+4x-5x^2+2x^3))` -/
def P14972968924097717999.Spec : Prop :=
  ∀ n, P14972968924097717999.a n = A389178 n

end A389178

/-! ## A389178.P4677285063895619587

`∑[2*a(n-1)-3]` with `a(0)=4, a(1)=6`
-/

namespace A389178.P4677285063895619587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  2 * f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389178.P4677285063895619587

namespace A389178

/-- `∑[2*a(n-1)-3]` -/
def P4677285063895619587.Spec : Prop :=
  ∀ n, P4677285063895619587.a n = A389178 n

end A389178

/-! ## A389178.P7192431768843649638

`∑[a(n-1)+a(n-1)-3]` with `a(0)=4, a(1)=6`
-/

namespace A389178.P7192431768843649638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389178.P7192431768843649638

namespace A389178

/-- `∑[a(n-1)+a(n-1)-3]` -/
def P7192431768843649638.Spec : Prop :=
  ∀ n, P7192431768843649638.a n = A389178 n

end A389178

/-! ## A389178.P4847978243941091772

`∑[a(n-1)-(3-a(n-1))]` with `a(0)=4, a(1)=6`
-/

namespace A389178.P4847978243941091772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 6] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389178.P4847978243941091772

namespace A389178

/-- `∑[a(n-1)-(3-a(n-1))]` -/
def P4847978243941091772.Spec : Prop :=
  ∀ n, P4847978243941091772.a n = A389178 n

end A389178

/-! ## A389178.P15988204337541494408

`∑[A003945(n)+3]`
-/

namespace A389178.P15988204337541494408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389178.P15988204337541494408

namespace A389178

/-- `∑[A003945(n)+3]` -/
def P15988204337541494408.Spec : Prop :=
  ∀ n, P15988204337541494408.a n = A389178 n

end A389178

/-! ## A389178.P434099899947329053

`∑[A055010(n)+4]`
-/

namespace A389178.P434099899947329053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389178.P434099899947329053

namespace A389178

/-- `∑[A055010(n)+4]` -/
def P434099899947329053.Spec : Prop :=
  ∀ n, P434099899947329053.a n = A389178 n

end A389178

/-! ## A389178.P15228317799846351610

`∑[A103204(n+1)+2]`
-/

namespace A389178.P15228317799846351610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389178.P15228317799846351610

namespace A389178

/-- `∑[A103204(n+1)+2]` -/
def P15228317799846351610.Spec : Prop :=
  ∀ n, P15228317799846351610.a n = A389178 n

end A389178

/-! ## A389178.P10296156360515441537

`∑[A146529(n+1)/2]`
-/

namespace A389178.P10296156360515441537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146529 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389178.P10296156360515441537

namespace A389178

/-- `∑[A146529(n+1)/2]` -/
def P10296156360515441537.Spec : Prop :=
  ∀ n, P10296156360515441537.a n = (A389178 n : ℚ)

end A389178

/-!
# A389182: Maximum cardinality of a subset of {1,...,n} in which all sums a+b of elements a<=b are distinct except possibly one.

The programs for A389182, there is no canonical definition to state claims against.
-/

/-! ## A389182.P7410944425531083346

`A002024(lt[A220670(n+3), A343435(n+3)])`
-/

namespace A389182.P7410944425531083346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220670 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343435 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389182.P7410944425531083346

/-! ## A389182.P5324001824553934984

`A003056(lt[A371447(n+1), A055103(n)])`
-/

namespace A389182.P5324001824553934984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055103 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A389182.P5324001824553934984

/-! ## A389182.P15279215013921761846

`round(sqrt(A374519(2*n+1)))+1`
-/

namespace A389182.P15279215013921761846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A374519 (2 * n + 1) : ℝ)) + 1

end

end A389182.P15279215013921761846

/-! ## A389182.P4243341937177589854

`round(sqrt(A175089(2*n+1)))`
-/

namespace A389182.P4243341937177589854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A175089 (2 * n + 1) : ℝ))

end

end A389182.P4243341937177589854

/-! ## A389182.P16391092991852915721

`A000196(A336426(2*n+1)+n)`
-/

namespace A389182.P16391092991852915721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A336426 (2 * n + 1) + (n : ℤ)).toNat

end

end A389182.P16391092991852915721

/-!
# A389183: Number of mutual-visibility sets in the n-ladder graph.

The programs for A389183, the canonical program `A389183.P1499694214318350192` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389183 has offset 1).

The definition of A389183 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A389183.P8591909256186070604

`(n+1)*(13+8*(n+1)+2*(n+1)²+(n+1)^3)/6`
-/

namespace A389183.P8591909256186070604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((13 + 8 * (n + 1) + 2 * (n + 1) ^ 2 + (n + 1) ^ 3 : ℚ) / 6)

end

end A389183.P8591909256186070604

namespace A389183

/-- `(n+1)*(13+8*(n+1)+2*(n+1)²+(n+1)^3)/6` -/
def P8591909256186070604.Spec : Prop :=
  ∀ n, P8591909256186070604.a n = (A389183 (n + 1) : ℚ)

theorem P8591909256186070604.correct : P8591909256186070604.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A389183, Nat.add_sub_cancel, A389183.P8591909256186070604.a, A389183.P1499694214318350192.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A389183, Nat.add_sub_cancel, A389183.P8591909256186070604.a, A389183.P1499694214318350192.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A389183

/-! ## A389183.P1499694214318350192

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=4, a(1)=15, a(2)=41, a(3)=94, a(4)=190`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A389183

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1499694214318350192.Spec : Prop :=
  ∀ n, P1499694214318350192.a n = A389183 (n + 1)

theorem P1499694214318350192.correct : P1499694214318350192.Spec := by
  intro n
  simp only [A389183, Nat.add_sub_cancel]

end A389183

/-! ## A389183.P14623934216672598302

`A063258(n)+A001296(n)`
-/

namespace A389183.P14623934216672598302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + A001296 n

end

end A389183.P14623934216672598302

namespace A389183

/-- `A063258(n)+A001296(n)` -/
def P14623934216672598302.Spec : Prop :=
  ∀ n, P14623934216672598302.a n = A389183 (n + 1)

end A389183

/-! ## A389183.P18033046134331008214

`A130218(n+1)+A005718(n)`
-/

namespace A389183.P18033046134331008214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130218 (n + 1) + A005718 n

end

end A389183.P18033046134331008214

namespace A389183

/-- `A130218(n+1)+A005718(n)` -/
def P18033046134331008214.Spec : Prop :=
  ∀ n, P18033046134331008214.a n = A389183 (n + 1)

end A389183

/-! ## A389183.P7927860603459314673

`∑[A179903(n+1)]+(n+1)²`
-/

namespace A389183.P7927860603459314673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A389183.P7927860603459314673

namespace A389183

/-- `∑[A179903(n+1)]+(n+1)²` -/
def P7927860603459314673.Spec : Prop :=
  ∀ n, P7927860603459314673.a n = A389183 (n + 1)

end A389183

/-! ## A389183.P11286672665800913270

`A071239(n+1)+A062748(n)`
-/

namespace A389183.P11286672665800913270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071239 (n + 1) + A062748 n

end

end A389183.P11286672665800913270

namespace A389183

/-- `A071239(n+1)+A062748(n)` -/
def P11286672665800913270.Spec : Prop :=
  ∀ n, P11286672665800913270.a n = A389183 (n + 1)

end A389183

/-! ## A389183.P16124816010660474059

`Δ[A082045(n+1)]+n`
-/

namespace A389183.P16124816010660474059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A389183.P16124816010660474059

namespace A389183

/-- `Δ[A082045(n+1)]+n` -/
def P16124816010660474059.Spec : Prop :=
  ∀ n, P16124816010660474059.a n = A389183 (n + 1)

end A389183

/-! ## A389183.P9001785946591671105

`A327032(n)+A000124(A000124(n+1))`
-/

namespace A389183.P9001785946591671105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327032 n + A000124 (A000124 (n + 1)).toNat

end

end A389183.P9001785946591671105

namespace A389183

/-- `A327032(n)+A000124(A000124(n+1))` -/
def P9001785946591671105.Spec : Prop :=
  ∀ n, P9001785946591671105.a n = A389183 (n + 1)

end A389183

/-!
# A389190: Number of fixed polyiamonds of area n with holes.

The programs for A389190, there is no canonical definition to state claims against.
-/

/-! ## A389190.P18435447391796810377

`A001420(n+1)-A341630(n+1)`
-/

namespace A389190.P18435447391796810377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001420 (n + 1) - A341630 (n + 1)

end

end A389190.P18435447391796810377

/-! ## A389190.P3615801457379830456

`A371192(C(n+1, 8))`
-/

namespace A389190.P3615801457379830456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371192 (Nat.choose (n + 1) 8)

end

end A389190.P3615801457379830456

/-! ## A389190.P9099685405818076983

`(n-1)^((1-(-1)^n)/2)*A346632(floor(n/2)!)`
-/

namespace A389190.P9099685405818076983
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ) * (A346632 (Nat.factorial ⌊(n : ℚ) / 2⌋.toNat) : ℝ)

end

end A389190.P9099685405818076983

/-! ## A389190.P1960909664256769077

`A036856(A274836(n))`
-/

namespace A389190.P1960909664256769077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036856 (A274836 n).toNat

end

end A389190.P1960909664256769077

/-! ## A389190.P17924985061008522894

`A282289(A064292(n))`
-/

namespace A389190.P17924985061008522894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282289 (A064292 n).toNat

end

end A389190.P17924985061008522894

/-!
# A389191: Number of fixed polyhexes of area n with holes.

The programs for A389191, there is no canonical definition to state claims against.
-/

/-! ## A389191.P10699769651730124484

`A001207(n+1)-A121220(n+1)`
-/

namespace A389191.P10699769651730124484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001207 (n + 1) - A121220 (n + 1)

end

end A389191.P10699769651730124484

/-! ## A389191.P18366839762297812646

`A001207(n+1)%A121220(A174228(n+1))`
-/

namespace A389191.P18366839762297812646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001207 (n + 1)) (A121220 (A174228 (n + 1)).toNat)

end

end A389191.P18366839762297812646

/-!
# A389193: Number of fixed polyominoes of area n with holes.

The programs for A389193, there is no canonical definition to state claims against.
-/

/-! ## A389193.P5970836438687668371

`A001168(n+1)-A006724(n+1)`
-/

namespace A389193.P5970836438687668371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001168 (n + 1) - A006724 (n + 1)

end

end A389193.P5970836438687668371

/-!
# A389194: Number of chiral pairs of asymmetric polyominoes with n pentagonal cells of the hyperbolic regular tiling with Schläfli symbol {5,oo}.

The programs for A389194, there is no canonical definition to state claims against.
-/

/-! ## A389194.P11876596629512427659

`A033105(A046165(n))`
-/

namespace A389194.P11876596629512427659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033105 (A046165 n).toNat

end

end A389194.P11876596629512427659

/-! ## A389194.P7991834617644753806

`A243652(A290893(n))`
-/

namespace A389194.P7991834617644753806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243652 (A290893 n).toNat

end

end A389194.P7991834617644753806

/-! ## A389194.P12821413088202632512

`∑[A160812(A367862(n))]`
-/

namespace A389194.P12821413088202632512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160812 (A367862 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A389194.P12821413088202632512

/-!
# A389196: G.f. A(x) satisfies A(x) = 1 + x/(1-x^2) * A(x)^3.

The programs for A389196, there is no canonical definition to state claims against.
-/

/-! ## A389196.P8112196180528252204

`A204085(A389874(n))`
-/

namespace A389196.P8112196180528252204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204085 (A389874 n).toNat

end

end A389196.P8112196180528252204

/-! ## A389196.P10841949892122977358

`A036234(A271960(n+1))-n`
-/

namespace A389196.P10841949892122977358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A271960 (n + 1)).toNat - (n : ℤ)

end

end A389196.P10841949892122977358

/-!
# A389197: Numbers whose sum of unitary divisors (usigma, A034448) is congruent to 2 modulo 4.

The programs for A389197, the canonical program `A389197.P3690758276685081400` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389197 has offset 1).

The definition of A389197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389197.P3690758276685081400

`filter[A336101(n+1), A229062(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A389197

/-- `filter[A336101(n+1), A229062(#)]` -/
def P3690758276685081400.Spec : Prop :=
  ∀ n, P3690758276685081400.a n = A389197 (n + 1)

theorem P3690758276685081400.correct : P3690758276685081400.Spec := by
  intro n
  simp only [A389197, Nat.add_sub_cancel]

end A389197

/-! ## A389197.P16921461757027623496

`filter[A001481(n+2), A340373(#)]`
-/

namespace A389197.P16921461757027623496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A389197.P16921461757027623496

namespace A389197

/-- `filter[A001481(n+2), A340373(#)]` -/
def P16921461757027623496.Spec : Prop :=
  ∀ n, P16921461757027623496.a n = A389197 (n + 1)

end A389197

/-! ## A389197.P17064605402206994713

`∩[A001481(n+1), A336101(n+1)]`
-/

namespace A389197.P17064605402206994713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001481 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389197.P17064605402206994713

namespace A389197

/-- `∩[A001481(n+1), A336101(n+1)]` -/
def P17064605402206994713.Spec : Prop :=
  ∀ n, (P17064605402206994713.a n : ℤ) = A389197 (n + 1)

end A389197

/-! ## A389197.P11768303413342552576

`filter[A225836(n+1), A340363(#)]`
-/

namespace A389197.P11768303413342552576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A389197.P11768303413342552576

namespace A389197

/-- `filter[A225836(n+1), A340363(#)]` -/
def P11768303413342552576.Spec : Prop :=
  ∀ n, P11768303413342552576.a n = A389197 (n + 1)

end A389197

/-! ## A389197.P7904390624339305982

`filter[A225836(n+1), A340373(#)]`
-/

namespace A389197.P7904390624339305982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A389197.P7904390624339305982

namespace A389197

/-- `filter[A225836(n+1), A340373(#)]` -/
def P7904390624339305982.Spec : Prop :=
  ∀ n, P7904390624339305982.a n = A389197 (n + 1)

end A389197

/-! ## A389197.P12004153243921662819

`∩[A070776(n+1), A225836(n+1)]`
-/

namespace A389197.P12004153243921662819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389197.P12004153243921662819

namespace A389197

/-- `∩[A070776(n+1), A225836(n+1)]` -/
def P12004153243921662819.Spec : Prop :=
  ∀ n, (P12004153243921662819.a n : ℤ) = A389197 (n + 1)

end A389197

/-! ## A389197.P14766611376396656791

`∩[A225836(n+1), A324109(n+1)]`
-/

namespace A389197.P14766611376396656791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389197.P14766611376396656791

namespace A389197

/-- `∩[A225836(n+1), A324109(n+1)]` -/
def P14766611376396656791.Spec : Prop :=
  ∀ n, (P14766611376396656791.a n : ℤ) = A389197 (n + 1)

end A389197

/-! ## A389197.P8380614283670950511

`∩[A225836(n+1), A336101(n+1)]`
-/

namespace A389197.P8380614283670950511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225836 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389197.P8380614283670950511

namespace A389197

/-- `∩[A225836(n+1), A336101(n+1)]` -/
def P8380614283670950511.Spec : Prop :=
  ∀ n, (P8380614283670950511.a n : ℤ) = A389197 (n + 1)

end A389197

/-! ## A389197.P16022107039215846261

`filter[A091072(n+1), A340373(#)]`
-/

namespace A389197.P16022107039215846261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A389197.P16022107039215846261

namespace A389197

/-- `filter[A091072(n+1), A340373(#)]` -/
def P16022107039215846261.Spec : Prop :=
  ∀ n, P16022107039215846261.a n = A389197 (n + 1)

end A389197

/-! ## A389197.P9819603599430828754

`∩[A091072(n+1), A336101(n+1)]`
-/

namespace A389197.P9819603599430828754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389197.P9819603599430828754

namespace A389197

/-- `∩[A091072(n+1), A336101(n+1)]` -/
def P9819603599430828754.Spec : Prop :=
  ∀ n, (P9819603599430828754.a n : ℤ) = A389197 (n + 1)

end A389197

/-!
# A389198: Sum of unitary divisors of the numbers satisfying Euler's condition for odd perfect numbers: a(n) = A034448(A228058(n)).

The programs for A389198, there is no canonical definition to state claims against.
-/

/-! ## A389198.P7897090228725898289

`A228058(n+1)+A325823(n+1)`
-/

namespace A389198.P7897090228725898289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + A325823 (n + 1)

end

end A389198.P7897090228725898289

/-! ## A389198.P5572160587372302904

`A325377(n+1)+A325824(n+1)`
-/

namespace A389198.P5572160587372302904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325377 (n + 1) + A325824 (n + 1)

end

end A389198.P5572160587372302904

/-! ## A389198.P2106456788848244357

`A034448(A228058(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A389198.P2106456788848244357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A228058 (n + 1)).toNat

end

end A389198.P2106456788848244357

/-! ## A389198.P10863349037986997479

`A325319(n+1)+A389217(n+1)+A389163(n+1)`
-/

namespace A389198.P10863349037986997479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325319 (n + 1) + (A389217 (n + 1) + A389163 (n + 1))

end

end A389198.P10863349037986997479

/-! ## A389198.P3750958502275782416

`A228058(n+1)+A325824(n+1)-A325379(n+1)`
-/

namespace A389198.P3750958502275782416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228058 (n + 1) + (A325824 (n + 1) - A325379 (n + 1))

end

end A389198.P3750958502275782416

/-! ## A389198.P10645425608315297869

`A325824(n+1)+A389163(n+1)-A389218(n+1)`
-/

namespace A389198.P10645425608315297869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325824 (n + 1) + (A389163 (n + 1) - A389218 (n + 1))

end

end A389198.P10645425608315297869

/-! ## A389198.P6445593506147980138

`A034448(A389203(n+1)-A325377(n+1))`
-/

namespace A389198.P6445593506147980138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (A389203 (n + 1) - A325377 (n + 1)).toNat

end

end A389198.P6445593506147980138

/-!
# A389199: Numbers whose sum of squarefree divisors (A048250) is congruent to 2 modulo 4.

The programs for A389199, the canonical program `A389199.P2572344504919042834` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A389199 has offset 1).

The definition of A389199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9835 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A389199.P2572344504919042834

`filter[A389197(n+1), A353814(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A389199

/-- `filter[A389197(n+1), A353814(#)]` -/
def P2572344504919042834.Spec : Prop :=
  ∀ n, P2572344504919042834.a n = A389199 (n + 1)

theorem P2572344504919042834.correct : P2572344504919042834.Spec := by
  intro n
  simp only [A389199, Nat.add_sub_cancel]

end A389199

/-! ## A389199.P7075396637147009865

`filter[A072437(n+1), A340373(#)]`
-/

namespace A389199.P7075396637147009865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A389199.P7075396637147009865

namespace A389199

/-- `filter[A072437(n+1), A340373(#)]` -/
def P7075396637147009865.Spec : Prop :=
  ∀ n, P7075396637147009865.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P4797315293637467807

`∩[A072437(n+1), A389197(n+1)]`
-/

namespace A389199.P4797315293637467807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P4797315293637467807

namespace A389199

/-- `∩[A072437(n+1), A389197(n+1)]` -/
def P4797315293637467807.Spec : Prop :=
  ∀ n, (P4797315293637467807.a n : ℤ) = A389199 (n + 1)

end A389199

/-! ## A389199.P11511692867129939398

`filter[A336101(n+1), A353814(#)]`
-/

namespace A389199.P11511692867129939398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389199.P11511692867129939398

namespace A389199

/-- `filter[A336101(n+1), A353814(#)]` -/
def P11511692867129939398.Spec : Prop :=
  ∀ n, P11511692867129939398.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P11270942120762106696

`∩[A072437(n+1), A336101(n+1)]`
-/

namespace A389199.P11270942120762106696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P11270942120762106696

namespace A389199

/-- `∩[A072437(n+1), A336101(n+1)]` -/
def P11270942120762106696.Spec : Prop :=
  ∀ n, (P11270942120762106696.a n : ℤ) = A389199 (n + 1)

end A389199

/-! ## A389199.P10007302115413224406

`filter[A070776(n+1), A353814(#)]`
-/

namespace A389199.P10007302115413224406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389199.P10007302115413224406

namespace A389199

/-- `filter[A070776(n+1), A353814(#)]` -/
def P10007302115413224406.Spec : Prop :=
  ∀ n, P10007302115413224406.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P1885147632031822656

`filter[A324109(n+1), A353814(#)]`
-/

namespace A389199.P1885147632031822656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353814 (f1 j).toNat = 1) n)

end

end A389199.P1885147632031822656

namespace A389199

/-- `filter[A324109(n+1), A353814(#)]` -/
def P1885147632031822656.Spec : Prop :=
  ∀ n, P1885147632031822656.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P7329998971063834575

`filter[A004431(n+1), A340363(#)]`
-/

namespace A389199.P7329998971063834575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A389199.P7329998971063834575

namespace A389199

/-- `filter[A004431(n+1), A340363(#)]` -/
def P7329998971063834575.Spec : Prop :=
  ∀ n, P7329998971063834575.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P1062390377065693907

`filter[A004431(n+1), A340373(#)]`
-/

namespace A389199.P1062390377065693907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A389199.P1062390377065693907

namespace A389199

/-- `filter[A004431(n+1), A340373(#)]` -/
def P1062390377065693907.Spec : Prop :=
  ∀ n, P1062390377065693907.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P18235642298696309368

`∩[A004431(n+1), A070776(n+1)]`
-/

namespace A389199.P18235642298696309368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P18235642298696309368

namespace A389199

/-- `∩[A004431(n+1), A070776(n+1)]` -/
def P18235642298696309368.Spec : Prop :=
  ∀ n, (P18235642298696309368.a n : ℤ) = A389199 (n + 1)

end A389199

/-! ## A389199.P10292382665304325652

`∩[A004431(n+1), A324109(n+1)]`
-/

namespace A389199.P10292382665304325652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P10292382665304325652

namespace A389199

/-- `∩[A004431(n+1), A324109(n+1)]` -/
def P10292382665304325652.Spec : Prop :=
  ∀ n, (P10292382665304325652.a n : ℤ) = A389199 (n + 1)

end A389199

/-! ## A389199.P12490534399960621518

`∩[A004431(n+1), A336101(n+1)]`
-/

namespace A389199.P12490534399960621518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P12490534399960621518

namespace A389199

/-- `∩[A004431(n+1), A336101(n+1)]` -/
def P12490534399960621518.Spec : Prop :=
  ∀ n, (P12490534399960621518.a n : ℤ) = A389199 (n + 1)

end A389199

/-! ## A389199.P6650418952999616406

`∩[A004431(n+1), A389197(n+1)]`
-/

namespace A389199.P6650418952999616406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004431 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P6650418952999616406

namespace A389199

/-- `∩[A004431(n+1), A389197(n+1)]` -/
def P6650418952999616406.Spec : Prop :=
  ∀ n, (P6650418952999616406.a n : ℤ) = A389199 (n + 1)

end A389199

/-! ## A389199.P12760242507476952785

`filter[A221265(n+1), A340363(#)]`
-/

namespace A389199.P12760242507476952785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A389199.P12760242507476952785

namespace A389199

/-- `filter[A221265(n+1), A340363(#)]` -/
def P12760242507476952785.Spec : Prop :=
  ∀ n, P12760242507476952785.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P8222750644672582411

`filter[A221265(n+1), A340373(#)]`
-/

namespace A389199.P8222750644672582411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A389199.P8222750644672582411

namespace A389199

/-- `filter[A221265(n+1), A340373(#)]` -/
def P8222750644672582411.Spec : Prop :=
  ∀ n, P8222750644672582411.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P6143176126745125008

`∩[A070776(n+1), A221265(n+1)]`
-/

namespace A389199.P6143176126745125008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P6143176126745125008

namespace A389199

/-- `∩[A070776(n+1), A221265(n+1)]` -/
def P6143176126745125008.Spec : Prop :=
  ∀ n, (P6143176126745125008.a n : ℤ) = A389199 (n + 1)

end A389199

/-! ## A389199.P12714521772729425909

`∩[A221265(n+1), A336101(n+1)]`
-/

namespace A389199.P12714521772729425909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P12714521772729425909

namespace A389199

/-- `∩[A221265(n+1), A336101(n+1)]` -/
def P12714521772729425909.Spec : Prop :=
  ∀ n, (P12714521772729425909.a n : ℤ) = A389199 (n + 1)

end A389199

/-! ## A389199.P6709585655766255569

`filter[A268379(n+1), A340363(#)]`
-/

namespace A389199.P6709585655766255569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A389199.P6709585655766255569

namespace A389199

/-- `filter[A268379(n+1), A340363(#)]` -/
def P6709585655766255569.Spec : Prop :=
  ∀ n, P6709585655766255569.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P1809930588603717311

`filter[A268379(n+1), A340373(#)]`
-/

namespace A389199.P1809930588603717311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268379 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A389199.P1809930588603717311

namespace A389199

/-- `filter[A268379(n+1), A340373(#)]` -/
def P1809930588603717311.Spec : Prop :=
  ∀ n, P1809930588603717311.a n = A389199 (n + 1)

end A389199

/-! ## A389199.P5541370103665688224

`∩[A070776(n+1), A268379(n+1)]`
-/

namespace A389199.P5541370103665688224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A389199.P5541370103665688224

namespace A389199

/-- `∩[A070776(n+1), A268379(n+1)]` -/
def P5541370103665688224.Spec : Prop :=
  ∀ n, (P5541370103665688224.a n : ℤ) = A389199 (n + 1)

end A389199

