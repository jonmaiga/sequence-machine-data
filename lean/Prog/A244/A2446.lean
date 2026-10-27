import SequenceMachineLib
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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A244602: First repdigit number with n digits occurring in the decimal expansion of e, starting after the decimal point.

The programs for A244602, there is no canonical definition to state claims against.
-/

/-! ## A244602.P1375602524757478275

`A000042(n+1)*A001113(A244601(n+1))`
-/

namespace A244602.P1375602524757478275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A001113 ((A244601 (n + 1)).toNat + 1)

end

end A244602.P1375602524757478275

/-!
# A244603: Least number k such that n^k contains the digit n n times.

The programs for A244603, there is no canonical definition to state claims against.
-/

/-! ## A244603.P12075199694802311656

`abs(A377163(n+1))`
-/

namespace A244603.P12075199694802311656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A377163 (n + 1)|

end

end A244603.P12075199694802311656

/-! ## A244603.P12300912897799546612

`A377163(∑{digits}[n+1, #])`
-/

namespace A244603.P12300912897799546612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377163 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A244603.P12300912897799546612

/-! ## A244603.P2337720017718212826

`A377163(comp[C(∑[n], 4)])`
-/

namespace A244603.P2337720017718212826
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377163 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A244603.P2337720017718212826

/-! ## A244603.P14821806790687609328

`A377163(C(n+1, dr(n)))`
-/

namespace A244603.P14821806790687609328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377163 (Nat.choose (n + 1) (SequenceMachineLib.digitalRoot (n : ℤ)))

end

end A244603.P14821806790687609328

/-! ## A244603.P2817748144808124836

`A377163(∑[gcd(6*n+1, ∑{d}[n+1, #])])`
-/

namespace A244603.P2817748144808124836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (6 * n + 1) (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377163 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244603.P2817748144808124836

/-!
# A244604: Least number k such that k^n contains the digit n n times.

The programs for A244604, there is no canonical definition to state claims against.
-/

/-! ## A244604.P6783059562922941936

`A063425(A362775(n))%A101070(n+1)`
-/

namespace A244604.P6783059562922941936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063425 (A362775 n).toNat) (A101070 (n + 1))

end

end A244604.P6783059562922941936

/-!
# A244605: Numerators of the Akiyama-Tanigawa transform applied to 1/(n+1) with -1/2 instead of 1/2.

The programs for A244605, there is no canonical definition to state claims against.
-/

/-! ## A244605.P15858198895659056122

`A164555(n)+A000225(n)*A027642(n)`
-/

namespace A244605.P15858198895659056122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164555 n + A000225 n * A027642 n

end

end A244605.P15858198895659056122

/-! ## A244605.P1414939498233362842

`A164558(n)+A000295(n)*A027642(n)`
-/

namespace A244605.P1414939498233362842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 n + A000295 n * A027642 n

end

end A244605.P1414939498233362842

/-! ## A244605.P7605765084444029382

`A164558(n)+A000295(n)*A176289(n)`
-/

namespace A244605.P7605765084444029382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164558 n + A000295 n * A176289 n

end

end A244605.P7605765084444029382

/-! ## A244605.P12855165416330426415

`A000079(n)*A027642(n)-A165226(n)`
-/

namespace A244605.P12855165416330426415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A027642 n - A165226 n

end

end A244605.P12855165416330426415

/-!
# A244607: Numbers k such that (product of digits of k) - 1 is prime.

The programs for A244607, the canonical program `A244607.P4839199191391835478` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244607 has offset 1).

The definition of A244607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244607.P4839199191391835478

`eq[1, ∑{e}[1-A007954(n), #]]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244607

/-- `eq[1, ∑{e}[1-A007954(n), #]]` -/
def P4839199191391835478.Spec : Prop :=
  ∀ n, (P4839199191391835478.a n : ℤ) = A244607 (n + 1)

theorem P4839199191391835478.correct : P4839199191391835478.Spec := by
  intro n
  simp only [A244607, Nat.add_sub_cancel]

end A244607

/-! ## A244607.P17908880653352039217

`eq[1, ∑{e}[1-A230099(n)+n, #]]`
-/

namespace A244607.P17908880653352039217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A230099 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244607.P17908880653352039217

namespace A244607

/-- `eq[1, ∑{e}[1-A230099(n)+n, #]]` -/
def P17908880653352039217.Spec : Prop :=
  ∀ n, (P17908880653352039217.a n : ℤ) = A244607 (n + 1)

end A244607

/-! ## A244607.P10541301751393508917

`eq[A053989(A051801(n)), A168046(n)]`
-/

namespace A244607.P10541301751393508917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A244607.P10541301751393508917

namespace A244607

/-- `eq[A053989(A051801(n)), A168046(n)]` -/
def P10541301751393508917.Spec : Prop :=
  ∀ n, (P10541301751393508917.a n : ℤ) = A244607 (n + 1)

end A244607

/-! ## A244607.P15994673235446796326

`eq[2, A190014(A007954(n))]`
-/

namespace A244607.P15994673235446796326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244607.P15994673235446796326

namespace A244607

/-- `eq[2, A190014(A007954(n))]` -/
def P15994673235446796326.Spec : Prop :=
  ∀ n, (P15994673235446796326.a n : ℤ) = A244607 (n + 1)

end A244607

/-! ## A244607.P11273388580391724791

`eq[2, A190014(abs(A187844(n)))]`
-/

namespace A244607.P11273388580391724791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 |A187844 n|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244607.P11273388580391724791

namespace A244607

/-- `eq[2, A190014(abs(A187844(n)))]` -/
def P11273388580391724791.Spec : Prop :=
  ∀ n, (P11273388580391724791.a n : ℤ) = A244607 (n + 1)

end A244607

/-! ## A244607.P3236799677798906563

`eq[2, A190014(n-A070565(n))]`
-/

namespace A244607.P3236799677798906563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 ((n : ℤ) - A070565 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A244607.P3236799677798906563

namespace A244607

/-- `eq[2, A190014(n-A070565(n))]` -/
def P3236799677798906563.Spec : Prop :=
  ∀ n, (P3236799677798906563.a n : ℤ) = A244607 (n + 1)

end A244607

/-!
# A244609: Least prime divisor of 659*2^n-1.

The programs for A244609, there is no canonical definition to state claims against.
-/

/-! ## A244609.P1557683099709471308

`A020639(p?[A082039(n)]*A000051(n))`
-/

namespace A244609.P1557683099709471308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000051 n).toNat

end

end A244609.P1557683099709471308

/-! ## A244609.P11337063937495661768

`A020639(A000051(n)*A104998(n+1))`
-/

namespace A244609.P11337063937495661768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000051 n * A104998 (n + 1)).toNat

end

end A244609.P11337063937495661768

/-! ## A244609.P3506370113768169383

`A020639(lcm(A000051(n), A104998(n+1)))`
-/

namespace A244609.P3506370113768169383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A000051 n) (A104998 (n + 1)))

end

end A244609.P3506370113768169383

/-! ## A244609.P16908794507417395017

`A020639(A235394(n+1)*A290662(n))`
-/

namespace A244609.P16908794507417395017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A235394 (n + 1) * A290662 n).toNat

end

end A244609.P16908794507417395017

/-! ## A244609.P8554569239468519523

`and(A052291(A241891(n)), A385220(n+1))`
-/

namespace A244609.P8554569239468519523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052291 (A241891 n).toNat) (A385220 (n + 1))

end

end A244609.P8554569239468519523

/-!
# A244610: G.f. satisfies: A(x) = Sum_{n>=0} (1 + A(x)^n)^n * x^n / (1-x)^(n+1).

The programs for A244610, there is no canonical definition to state claims against.
-/

/-! ## A244610.P12087464836780278942

`record[gcd((3*n)², A104573(n))]`
-/

namespace A244610.P12087464836780278942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((3 * n) ^ 2 : ℤ) (A104573 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244610.P12087464836780278942

/-!
# A244611: Expansion of (phi(q) + phi(q^2) - phi(q^3) - phi(q^6)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A244611, the canonical program `A244611.P27362386088133724` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244611 has offset 1).

The definition of A244611 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244611.P27362386088133724

`A010052(n+1)+A010052(2*(n+1))-A010052(3*(n+1))-A010052(6*(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244611

/-- `A010052(n+1)+A010052(2*(n+1))-A010052(3*(n+1))-A010052(6*(n+1))` -/
def P27362386088133724.Spec : Prop :=
  ∀ n, P27362386088133724.a n = A244611 (n + 1)

theorem P27362386088133724.correct : P27362386088133724.Spec := by
  intro n
  simp only [A244611, Nat.add_sub_cancel]

end A244611

/-! ## A244611.P8788851932509350484

`A113446(n+1)%2`
-/

namespace A244611.P8788851932509350484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113446 (n + 1)) 2

end

end A244611.P8788851932509350484

namespace A244611

/-- `A113446(n+1)%2` -/
def P8788851932509350484.Spec : Prop :=
  ∀ n, P8788851932509350484.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P15680507198700871691

`A138950(n+1)%2`
-/

namespace A244611.P15680507198700871691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138950 (n + 1)) 2

end

end A244611.P15680507198700871691

namespace A244611

/-- `A138950(n+1)%2` -/
def P15680507198700871691.Spec : Prop :=
  ∀ n, P15680507198700871691.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P2159629219323894712

`A260301((n+1)/2^val(n+1, 2))%2`
-/

namespace A244611.P2159629219323894712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260301 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat) 2

end

end A244611.P2159629219323894712

namespace A244611

/-- `A260301((n+1)/2^val(n+1, 2))%2` -/
def P2159629219323894712.Spec : Prop :=
  ∀ n, P2159629219323894712.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P2021778468892432581

`A214505(A025480(n))`
-/

namespace A244611.P2021778468892432581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 (A025480 n).toNat

end

end A244611.P2021778468892432581

namespace A244611

/-- `A214505(A025480(n))` -/
def P2021778468892432581.Spec : Prop :=
  ∀ n, P2021778468892432581.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P14731793703050868705

`A143259(A064989(n+1))`
-/

namespace A244611.P14731793703050868705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A064989 (n + 1)).toNat

end

end A244611.P14731793703050868705

namespace A244611

/-- `A143259(A064989(n+1))` -/
def P14731793703050868705.Spec : Prop :=
  ∀ n, P14731793703050868705.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P3183878421764927194

`A214295(A000265(n+1))`
-/

namespace A244611.P3183878421764927194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (A000265 (n + 1)).toNat

end

end A244611.P3183878421764927194

namespace A244611

/-- `A214295(A000265(n+1))` -/
def P3183878421764927194.Spec : Prop :=
  ∀ n, P3183878421764927194.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P2988726305993695023

`A214295(A214682(n+1))`
-/

namespace A244611.P2988726305993695023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (A214682 (n + 1)).toNat

end

end A244611.P2988726305993695023

namespace A244611

/-- `A214295(A214682(n+1))` -/
def P2988726305993695023.Spec : Prop :=
  ∀ n, P2988726305993695023.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P16390767839976683756

`A143259(A332819(n+1))`
-/

namespace A244611.P16390767839976683756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A332819 (n + 1)).toNat

end

end A244611.P16390767839976683756

namespace A244611

/-- `A143259(A332819(n+1))` -/
def P16390767839976683756.Spec : Prop :=
  ∀ n, P16390767839976683756.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P9006518280768025111

`A143259(A348747(n+1))`
-/

namespace A244611.P9006518280768025111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A348747 (n + 1)).toNat

end

end A244611.P9006518280768025111

namespace A244611

/-- `A143259(A348747(n+1))` -/
def P9006518280768025111.Spec : Prop :=
  ∀ n, P9006518280768025111.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P4736723302445146639

`A214295(A354092(n+1))`
-/

namespace A244611.P4736723302445146639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (A354092 (n + 1)).toNat

end

end A244611.P4736723302445146639

namespace A244611

/-- `A214295(A354092(n+1))` -/
def P4736723302445146639.Spec : Prop :=
  ∀ n, P4736723302445146639.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P15847949704244258379

`A244612(2*(n+1))+A244612(n+1)`
-/

namespace A244611.P15847949704244258379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244612 (2 * (n + 1)) + A244612 (n + 1)

end

end A244611.P15847949704244258379

namespace A244611

/-- `A244612(2*(n+1))+A244612(n+1)` -/
def P15847949704244258379.Spec : Prop :=
  ∀ n, P15847949704244258379.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P2724032398923166074

`A053866(n+1)-A053866(3*(n+1))`
-/

namespace A244611.P2724032398923166074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) - A053866 (3 * (n + 1))

end

end A244611.P2724032398923166074

namespace A244611

/-- `A053866(n+1)-A053866(3*(n+1))` -/
def P2724032398923166074.Spec : Prop :=
  ∀ n, P2724032398923166074.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P11478101176307854464

`∑{d}[n+1, A019590(#)*A214295((n+1)/#)]`
-/

namespace A244611.P11478101176307854464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A019590 d * A214295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244611.P11478101176307854464

namespace A244611

/-- `∑{d}[n+1, A019590(#)*A214295((n+1)/#)]` -/
def P11478101176307854464.Spec : Prop :=
  ∀ n, P11478101176307854464.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P5728318353805347093

`∑{d}[n+1, A232991(#-1)*A359154((n+1)/#)]`
-/

namespace A244611.P5728318353805347093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A232991 (d - 1) * A359154 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A244611.P5728318353805347093

namespace A244611

/-- `∑{d}[n+1, A232991(#-1)*A359154((n+1)/#)]` -/
def P5728318353805347093.Spec : Prop :=
  ∀ n, P5728318353805347093.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P17218805523263352259

`∑{d}[n+1, A056594(#-1)*A061347((n+1)/#)]%2`
-/

namespace A244611.P17218805523263352259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ d ∈ Nat.divisors (f1 n), A056594 (d - 1) * A061347 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) 2

end

end A244611.P17218805523263352259

namespace A244611

/-- `∑{d}[n+1, A056594(#-1)*A061347((n+1)/#)]%2` -/
def P17218805523263352259.Spec : Prop :=
  ∀ n, P17218805523263352259.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P10904722655466653539

`A214295(A028234(2*(n+1)))`
-/

namespace A244611.P10904722655466653539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (A028234 (2 * (n + 1))).toNat

end

end A244611.P10904722655466653539

namespace A244611

/-- `A214295(A028234(2*(n+1)))` -/
def P10904722655466653539.Spec : Prop :=
  ∀ n, P10904722655466653539.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P8697640630729829205

`A214295(2*(n+1))+A214295(n+1)`
-/

namespace A244611.P8697640630729829205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214295 (2 * (n + 1)) + A214295 (n + 1)

end

end A244611.P8697640630729829205

namespace A244611

/-- `A214295(2*(n+1))+A214295(n+1)` -/
def P8697640630729829205.Spec : Prop :=
  ∀ n, P8697640630729829205.a n = A244611 (n + 1)

end A244611

/-! ## A244611.P17993926269485283228

`A121450(6*(n+1))%2`
-/

namespace A244611.P17993926269485283228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121450 (6 * (n + 1))) 2

end

end A244611.P17993926269485283228

namespace A244611

/-- `A121450(6*(n+1))%2` -/
def P17993926269485283228.Spec : Prop :=
  ∀ n, P17993926269485283228.a n = A244611 (n + 1)

end A244611

/-!
# A244612: a(n) = 1 if n is a square, -1 if n is six times a square, 0 if n < 1.

The programs for A244612, the canonical program `A244612.P15213446555036488767` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244612 has offset 1).

The definition of A244612 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244612.P15213446555036488767

`A010052(n+1)-A010052(6*(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A244612

/-- `A010052(n+1)-A010052(6*(n+1))` -/
def P15213446555036488767.Spec : Prop :=
  ∀ n, P15213446555036488767.a n = A244612 (n + 1)

theorem P15213446555036488767.correct : P15213446555036488767.Spec := by
  intro n
  simp only [A244612, Nat.add_sub_cancel]

end A244612

/-! ## A244612.P11826543552525463929

`A106665(n)*A244611(n+1)`
-/

namespace A244612.P11826543552525463929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106665 n * A244611 (n + 1)

end

end A244612.P11826543552525463929

namespace A244612

/-- `A106665(n)*A244611(n+1)` -/
def P11826543552525463929.Spec : Prop :=
  ∀ n, P11826543552525463929.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P7103188897092156292

`A065043(n+1)*A244611(n+1)`
-/

namespace A244612.P7103188897092156292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (n + 1) * A244611 (n + 1)

end

end A244612.P7103188897092156292

namespace A244612

/-- `A065043(n+1)*A244611(n+1)` -/
def P7103188897092156292.Spec : Prop :=
  ∀ n, P7103188897092156292.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P16281396457500703856

`A244611(n+1)*A373136(n+1)`
-/

namespace A244612.P16281396457500703856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244611 (n + 1) * A373136 (n + 1)

end

end A244612.P16281396457500703856

namespace A244612

/-- `A244611(n+1)*A373136(n+1)` -/
def P16281396457500703856.Spec : Prop :=
  ∀ n, P16281396457500703856.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P9952917506596504536

`A093829(n+1)%A007421(n+1)`
-/

namespace A244612.P9952917506596504536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093829 (n + 1)) (A007421 (n + 1))

end

end A244612.P9952917506596504536

namespace A244612

/-- `A093829(n+1)%A007421(n+1)` -/
def P9952917506596504536.Spec : Prop :=
  ∀ n, P9952917506596504536.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P7620167494055128812

`A103440(n+1)%A007421(n+1)`
-/

namespace A244612.P7620167494055128812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103440 (n + 1)) (A007421 (n + 1))

end

end A244612.P7620167494055128812

namespace A244612

/-- `A103440(n+1)%A007421(n+1)` -/
def P7620167494055128812.Spec : Prop :=
  ∀ n, P7620167494055128812.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P3279762848299309827

`A112298(n+1)%A007421(n+1)`
-/

namespace A244612.P3279762848299309827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112298 (n + 1)) (A007421 (n + 1))

end

end A244612.P3279762848299309827

namespace A244612

/-- `A112298(n+1)%A007421(n+1)` -/
def P3279762848299309827.Spec : Prop :=
  ∀ n, P3279762848299309827.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P6907798130466650912

`A113446(n+1)%A007421(n+1)`
-/

namespace A244612.P6907798130466650912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113446 (n + 1)) (A007421 (n + 1))

end

end A244612.P6907798130466650912

namespace A244612

/-- `A113446(n+1)%A007421(n+1)` -/
def P6907798130466650912.Spec : Prop :=
  ∀ n, P6907798130466650912.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P1246715378318456058

`A138950(n+1)%A007421(n+1)`
-/

namespace A244612.P1246715378318456058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138950 (n + 1)) (A007421 (n + 1))

end

end A244612.P1246715378318456058

namespace A244612

/-- `A138950(n+1)%A007421(n+1)` -/
def P1246715378318456058.Spec : Prop :=
  ∀ n, P1246715378318456058.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P17753706449886064432

`A244611(n+1)%A007421(n+1)`
-/

namespace A244612.P17753706449886064432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244611 (n + 1)) (A007421 (n + 1))

end

end A244612.P17753706449886064432

namespace A244612

/-- `A244611(n+1)%A007421(n+1)` -/
def P17753706449886064432.Spec : Prop :=
  ∀ n, P17753706449886064432.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P7734610402530687678

`A326503(n+1)%A007421(n+1)`
-/

namespace A244612.P7734610402530687678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326503 (n + 1)) (A007421 (n + 1))

end

end A244612.P7734610402530687678

namespace A244612

/-- `A326503(n+1)%A007421(n+1)` -/
def P7734610402530687678.Spec : Prop :=
  ∀ n, P7734610402530687678.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P5759598759759782649

`A169695(A008588(n+1))-A169695(n+1)`
-/

namespace A244612.P5759598759759782649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169695 (A008588 (n + 1)).toNat - A169695 (n + 1)

end

end A244612.P5759598759759782649

namespace A244612

/-- `A169695(A008588(n+1))-A169695(n+1)` -/
def P5759598759759782649.Spec : Prop :=
  ∀ n, P5759598759759782649.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P11760086908740313191

`A275437(A008619(n)+n)-A275437(n)`
-/

namespace A244612.P11760086908740313191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (A008619 n + (n : ℤ)).toNat - A275437 n

end

end A244612.P11760086908740313191

namespace A244612

/-- `A275437(A008619(n)+n)-A275437(n)` -/
def P11760086908740313191.Spec : Prop :=
  ∀ n, P11760086908740313191.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P9869672279088069605

`A275437(A008619(3*n))-A275437(n)`
-/

namespace A244612.P9869672279088069605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275437 (A008619 (3 * n)).toNat - A275437 n

end

end A244612.P9869672279088069605

namespace A244612

/-- `A275437(A008619(3*n))-A275437(n)` -/
def P9869672279088069605.Spec : Prop :=
  ∀ n, P9869672279088069605.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P2206751260054455795

`A053866(n+1)-A053866(A061898(2*(n+1)))`
-/

namespace A244612.P2206751260054455795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) - A053866 (A061898 (2 * (n + 1))).toNat

end

end A244612.P2206751260054455795

namespace A244612

/-- `A053866(n+1)-A053866(A061898(2*(n+1)))` -/
def P2206751260054455795.Spec : Prop :=
  ∀ n, P2206751260054455795.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P686916600481850391

`A053866(n+1)-A053866(A064614(2*(n+1)))`
-/

namespace A244612.P686916600481850391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053866 (n + 1) - A053866 (A064614 (2 * (n + 1))).toNat

end

end A244612.P686916600481850391

namespace A244612

/-- `A053866(n+1)-A053866(A064614(2*(n+1)))` -/
def P686916600481850391.Spec : Prop :=
  ∀ n, P686916600481850391.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P11981817130871844927

`A143259(A061898(2*(n+1)))-A143259(2*(n+1))`
-/

namespace A244612.P11981817130871844927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A061898 (2 * (n + 1))).toNat - A143259 (2 * (n + 1))

end

end A244612.P11981817130871844927

namespace A244612

/-- `A143259(A061898(2*(n+1)))-A143259(2*(n+1))` -/
def P11981817130871844927.Spec : Prop :=
  ∀ n, P11981817130871844927.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P3536165314000497853

`A143259(A064614(2*(n+1)))-A143259(2*(n+1))`
-/

namespace A244612.P3536165314000497853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A064614 (2 * (n + 1))).toNat - A143259 (2 * (n + 1))

end

end A244612.P3536165314000497853

namespace A244612

/-- `A143259(A064614(2*(n+1)))-A143259(2*(n+1))` -/
def P3536165314000497853.Spec : Prop :=
  ∀ n, P3536165314000497853.a n = A244612 (n + 1)

end A244612

/-! ## A244612.P8307051119163556193

`A143259(A133205(n+1))`
-/

namespace A244612.P8307051119163556193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143259 (A133205 (n + 1)).toNat

end

end A244612.P8307051119163556193

namespace A244612

/-- `A143259(A133205(n+1))` -/
def P8307051119163556193.Spec : Prop :=
  ∀ n, P8307051119163556193.a n = A244612 (n + 1)

end A244612

/-!
# A244613: Least number k > 0 such that 2^k ends in exactly n consecutive increasing digits.

The programs for A244613, there is no canonical definition to state claims against.
-/

/-! ## A244613.P12315037108695327648

`A200750(n+1)*A238690(A083884(n))`
-/

namespace A244613.P12315037108695327648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200750 (n + 1) * A238690 (A083884 n).toNat

end

end A244613.P12315037108695327648

/-!
# A244614: Prime numbers whose decimal expansion has the same digit sum as its hexadecimal expansion, and such that the number of bits in its binary expansion matches the digit sum. Only digits 1-9 are allowed in both the decimal and hexadecimal expansions.

The programs for A244614, there is no canonical definition to state claims against.
-/

/-! ## A244614.P10824379596972079249

`∩[A243620(n+1), A244597(n+1)]`
-/

namespace A244614.P10824379596972079249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244614.P10824379596972079249

/-! ## A244614.P12821778508406121600

`∩[A243619(n+1), A244597(n+1)]`
-/

namespace A244614.P12821778508406121600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244614.P12821778508406121600

/-! ## A244614.P9054516346580476089

`∩[A243615(n+1), A244597(n+1)]`
-/

namespace A244614.P9054516346580476089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244614.P9054516346580476089

/-!
# A244615: G.f.: Sum_{n>=0} (2 + x^n)^n * x^n / (1-x)^(n+1).

The programs for A244615, there is no canonical definition to state claims against.
-/

/-! ## A244615.P13505070102683804181

`A007689(n)-A332268(A356062(n+1))`
-/

namespace A244615.P13505070102683804181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007689 n - A332268 (A356062 (n + 1)).toNat

end

end A244615.P13505070102683804181

/-! ## A244615.P29145236542584632

`A123621(A188464(n+1))`
-/

namespace A244615.P29145236542584632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123621 (A188464 (n + 1)).toNat

end

end A244615.P29145236542584632

/-!
# A244616: G.f.: Sum_{n>=0} (3 + x^n)^n * x^n / (1-x)^(n+1).

The programs for A244616, there is no canonical definition to state claims against.
-/

/-! ## A244616.P10574938675508689755

`A319792(n+2)+A003602(A000225(2*n+1))`
-/

namespace A244616.P10574938675508689755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319792 (n + 2) + A003602 (A000225 (2 * n + 1)).toNat

end

end A244616.P10574938675508689755

/-!
# A244617: G.f.: Sum_{n>=0} (4 + x^n)^n * x^n / (1-x)^(n+1).

The programs for A244617, there is no canonical definition to state claims against.
-/

/-! ## A244617.P13050629129069493629

`A304916(A304912(n))+5^n`
-/

namespace A244617.P13050629129069493629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304916 (A304912 n).toNat + (5 ^ n : ℤ)

end

end A244617.P13050629129069493629

/-! ## A244617.P4330550887171149861

`floor(A074753(A007310(5^n+1)+n)/2)`
-/

namespace A244617.P4330550887171149861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074753 (A007310 (5 ^ n + 1) + (n : ℤ)).toNat : ℚ) / 2⌋

end

end A244617.P4330550887171149861

/-!
# A244618: G.f.: Sum_{n>=0} (5 + x^n)^n * x^n / (1-x)^(n+1).

The programs for A244618, there is no canonical definition to state claims against.
-/

/-! ## A244618.P6393963668342119500

`or(6^n, A267414(n!))`
-/

namespace A244618.P6393963668342119500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (6 ^ n : ℤ) (A267414 (Nat.factorial n))

end

end A244618.P6393963668342119500

/-!
# A244621: (First arithmetic derivative of primorials) read mod 12.

The programs for A244621, the canonical program `A244621.P10991117742551691609` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244621 has offset 1).

The definition of A244621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A244621.P10991117742551691609

`A024451(n+1)%12`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A244621

/-- `A024451(n+1)%12` -/
def P10991117742551691609.Spec : Prop :=
  ∀ n, P10991117742551691609.a n = A244621 (n + 1)

theorem P10991117742551691609.correct : P10991117742551691609.Spec := by
  intro n
  simp only [A244621, Nat.add_sub_cancel]

end A244621

/-! ## A244621.P6944434942243924732

`A106830(Δ[A007504(n)])%12`
-/

namespace A244621.P6944434942243924732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106830 (f1 (n + 1) - f1 n).toNat) 12

end

end A244621.P6944434942243924732

namespace A244621

/-- `A106830(Δ[A007504(n)])%12` -/
def P6944434942243924732.Spec : Prop :=
  ∀ n, P6944434942243924732.a n = A244621 (n + 1)

end A244621

/-! ## A244621.P2048976433154570456

`A260613(A034856(n+1))%12`
-/

namespace A244621.P2048976433154570456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260613 (A034856 (n + 1)).toNat) 12

end

end A244621.P2048976433154570456

namespace A244621

/-- `A260613(A034856(n+1))%12` -/
def P2048976433154570456.Spec : Prop :=
  ∀ n, P2048976433154570456.a n = A244621 (n + 1)

end A244621

/-! ## A244621.P10740659057894956610

`A106830(A008578(n+2))%12`
-/

namespace A244621.P10740659057894956610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106830 (A008578 (n + 2)).toNat) 12

end

end A244621.P10740659057894956610

namespace A244621

/-- `A106830(A008578(n+2))%12` -/
def P10740659057894956610.Spec : Prop :=
  ∀ n, P10740659057894956610.a n = A244621 (n + 1)

end A244621

/-! ## A244621.P3788582934832620268

`A106830(A015919(n+2))%12`
-/

namespace A244621.P3788582934832620268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106830 (A015919 (n + 2)).toNat) 12

end

end A244621.P3788582934832620268

namespace A244621

/-- `A106830(A015919(n+2))%12` -/
def P3788582934832620268.Spec : Prop :=
  ∀ n, P3788582934832620268.a n = A244621 (n + 1)

end A244621

/-!
# A244623: Odd prime powers that are not primes.

The programs for A244623, there is no canonical definition to state claims against.
-/

/-! ## A244623.P13433435082536854196

`A025475(eq[1, A025475(n+1)%2]+1)`
-/

namespace A244623.P13433435082536854196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025475 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244623.P13433435082536854196

/-! ## A244623.P9765850192213176433

`A025475(eq[1, gcd(2, A025475(n+1))]+1)`
-/

namespace A244623.P9765850192213176433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A025475 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A244623.P9765850192213176433

/-! ## A244623.P1476069642248470336

`A025475(eq[1, and(1, A025475(n+1))]+1)`
-/

namespace A244623.P1476069642248470336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A025475 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A244623.P1476069642248470336

/-! ## A244623.P18038817297720872033

`A025475(record[n+1-val(A025475(n+1), 2)])`
-/

namespace A244623.P18038817297720872033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (SequenceMachineLib.valuation (A025475 (n + 1)).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244623.P18038817297720872033

/-! ## A244623.P1569033536132998837

`record[A025475(n+2)^and(1, A025475(n+2))]`
-/

namespace A244623.P1569033536132998837
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025475 (n + 2) : ℚ) ^ (Int.land 1 (A025475 (n + 2)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244623.P1569033536132998837

/-! ## A244623.P1067375356759658751

`∩[A025475(n+1), A075109(n+1)]`
-/

namespace A244623.P1067375356759658751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244623.P1067375356759658751

/-! ## A244623.P7968359426453068344

`∩[A075109(n+1), A134611(n+1)]`
-/

namespace A244623.P7968359426453068344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244623.P7968359426453068344

/-! ## A244623.P12637708169593384849

`∩[A025475(n+1), A062739(n+1)]`
-/

namespace A244623.P12637708169593384849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244623.P12637708169593384849

/-! ## A244623.P8120704620099195410

`record[lcm(2, A163813(n+1))-A163813(n+1)]`
-/

namespace A244623.P8120704620099195410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A163813 (n + 1)) : ℤ) - A163813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244623.P8120704620099195410

/-! ## A244623.P1593106094338586063

`∩[A001597(n+1), A061345(n)]`
-/

namespace A244623.P1593106094338586063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244623.P1593106094338586063

/-!
# A244624: Consider the number of lines in the Pratt certificate for the n-th prime (A037202). This sequence shows where 2n first occurs.

The programs for A244624, there is no canonical definition to state claims against.
-/

/-! ## A244624.P12494342550168051922

`A000720(A037231(n+1))`
-/

namespace A244624.P12494342550168051922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037231 (n + 1)).toNat

end

end A244624.P12494342550168051922

/-! ## A244624.P18403499698299468729

`A061395(or(2, A037231(n+1)))`
-/

namespace A244624.P18403499698299468729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 2 (A037231 (n + 1))).toNat

end

end A244624.P18403499698299468729

/-! ## A244624.P12722185280454292120

`∑{d}[A037231(n+1), A061395(#)]`
-/

namespace A244624.P12722185280454292120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A244624.P12722185280454292120

/-!
# A244626: Composite numbers k congruent to 5 (mod 8) such that 2^((k-1)/2) mod k = k-1.

The programs for A244626, there is no canonical definition to state claims against.
-/

/-! ## A244626.P13139525911272352373

`∩[or(4, A001262(n+1)), A270698(n+1)]`
-/

namespace A244626.P13139525911272352373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A001262 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244626.P13139525911272352373

/-! ## A244626.P11568824959399279061

`∩[A178723(n+1), A356638(n+1)]`
-/

namespace A244626.P11568824959399279061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244626.P11568824959399279061

/-! ## A244626.P647170720454641940

`∩[A270698(n+1), A356638(n+1)]`
-/

namespace A244626.P647170720454641940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244626.P647170720454641940

/-! ## A244626.P5580155011093699209

`A356638(A106000(n+1)%A307712(n+1))`
-/

namespace A244626.P5580155011093699209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356638 (Int.tmod (A106000 (n + 1)) (A307712 (n + 1))).toNat

end

end A244626.P5580155011093699209

/-! ## A244626.P17019161671618313904

`A356638(A061487(n+1))`
-/

namespace A244626.P17019161671618313904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356638 (A061487 (n + 1)).toNat

end

end A244626.P17019161671618313904

/-!
# A244627: G.f. satisfies: A(x) = (4 + A(x)^3) / (5 - 4*x).

The programs for A244627, there is no canonical definition to state claims against.
-/

/-! ## A244627.P18287201151781483134

`A364031(n^(n+1)+1)`
-/

namespace A244627.P18287201151781483134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364031 (n ^ (n + 1) + 1)

end

end A244627.P18287201151781483134

/-!
# A244628: Composite numbers k such that k == 3 (mod 8) and 2^((k-1)/2) == -1 (mod k).

The programs for A244628, there is no canonical definition to state claims against.
-/

/-! ## A244628.P16679927711868203882

`∩[A177884(n+1), A356638(n+1)]`
-/

namespace A244628.P16679927711868203882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244628.P16679927711868203882

/-! ## A244628.P331008790679366540

`∩[A270697(n+1), A356638(n+1)]`
-/

namespace A244628.P331008790679366540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244628.P331008790679366540

/-! ## A244628.P7532070377510510466

`∩[A177884(n+1), A307767(n+1)]`
-/

namespace A244628.P7532070377510510466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244628.P7532070377510510466

/-! ## A244628.P6941551566368774215

`∩[A270697(n+1), A307767(n+1)]`
-/

namespace A244628.P6941551566368774215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A244628.P6941551566368774215

/-!
# A244629: Number of power series 1 + c_1*x^1 + c_2*x^2 + ... + c_{n-1}*x^{n-1} + O(x^n) with c_k in {-1, 0, 1} whose reciprocal has the same property.

The programs for A244629, there is no canonical definition to state claims against.
-/

/-! ## A244629.P10895015261580090267

`A110930(n+1)-A104324(A159083(n))`
-/

namespace A244629.P10895015261580090267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (n + 1) - A104324 (A159083 n).toNat

end

end A244629.P10895015261580090267

/-! ## A244629.P15121871970584409550

`A110930(n+1)-A292547(A292540(n+1))`
-/

namespace A244629.P15121871970584409550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110930 (n + 1) - A292547 (A292540 (n + 1)).toNat

end

end A244629.P15121871970584409550

/-!
# A244630: a(n) = 17*n^2.

The programs for A244630, the canonical program `A244630.P17246717711598176874` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244630 has offset 0).

The definition of A244630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `17*n²` (program `A244630.P17246717711598176874`, by `A244630.P17246717711598176874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244630.P17246717711598176874

`17*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244630

/-- `17*n²` -/
def P17246717711598176874.Spec : Prop :=
  ∀ n, (P17246717711598176874.a n : ℤ) = A244630 n

theorem P17246717711598176874.correct : P17246717711598176874.Spec := by
  intro n
  simp only [A244630]

end A244630

/-!
# A244631: a(n) = 19*n^2.

The programs for A244631, the canonical program `A244631.P16156651558373966406` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244631 has offset 0).

The definition of A244631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `19*n²` (program `A244631.P16156651558373966406`, by `A244631.P16156651558373966406.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244631.P16156651558373966406

`19*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244631

/-- `19*n²` -/
def P16156651558373966406.Spec : Prop :=
  ∀ n, (P16156651558373966406.a n : ℤ) = A244631 n

theorem P16156651558373966406.correct : P16156651558373966406.Spec := by
  intro n
  simp only [A244631]

end A244631

/-!
# A244632: a(n) = 23*n^2.

The programs for A244632, the canonical program `A244632.P16811880726545929646` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244632 has offset 0).

The definition of A244632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `23*n²` (program `A244632.P16811880726545929646`, by `A244632.P16811880726545929646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244632.P16811880726545929646

`23*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244632

/-- `23*n²` -/
def P16811880726545929646.Spec : Prop :=
  ∀ n, (P16811880726545929646.a n : ℤ) = A244632 n

theorem P16811880726545929646.correct : P16811880726545929646.Spec := by
  intro n
  simp only [A244632]

end A244632

/-!
# A244633: a(n) = 26*n^2.

The programs for A244633, the canonical program `A244633.P1225735634971646048` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244633 has offset 0).

The definition of A244633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `26*n²` (program `A244633.P1225735634971646048`, by `A244633.P1225735634971646048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244633.P1225735634971646048

`26*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244633

/-- `26*n²` -/
def P1225735634971646048.Spec : Prop :=
  ∀ n, (P1225735634971646048.a n : ℤ) = A244633 n

theorem P1225735634971646048.correct : P1225735634971646048.Spec := by
  intro n
  simp only [A244633]

end A244633

/-!
# A244634: a(n) = 27*n^2.

The programs for A244634, the canonical program `A244634.P2988327600076018202` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244634 has offset 0).

The definition of A244634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `27*n²` (program `A244634.P2988327600076018202`, by `A244634.P2988327600076018202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244634.P2988327600076018202

`27*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244634

/-- `27*n²` -/
def P2988327600076018202.Spec : Prop :=
  ∀ n, (P2988327600076018202.a n : ℤ) = A244634 n

theorem P2988327600076018202.correct : P2988327600076018202.Spec := by
  intro n
  simp only [A244634]

end A244634

/-!
# A244635: a(n) = 29*n^2.

The programs for A244635, the canonical program `A244635.P2108405721463693193` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244635 has offset 0).

The definition of A244635 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `29*n²` (program `A244635.P2108405721463693193`, by `A244635.P2108405721463693193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244635.P2108405721463693193

`29*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244635

/-- `29*n²` -/
def P2108405721463693193.Spec : Prop :=
  ∀ n, (P2108405721463693193.a n : ℤ) = A244635 n

theorem P2108405721463693193.correct : P2108405721463693193.Spec := by
  intro n
  simp only [A244635]

end A244635

/-!
# A244636: a(n) = 30*n^2.

The programs for A244636, the canonical program `A244636.P15245594885132756061` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244636 has offset 0).

The definition of A244636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*n²` (program `A244636.P15245594885132756061`, by `A244636.P15245594885132756061.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A244636.P15245594885132756061

`30*n²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244636

/-- `30*n²` -/
def P15245594885132756061.Spec : Prop :=
  ∀ n, (P15245594885132756061.a n : ℤ) = A244636 n

theorem P15245594885132756061.correct : P15245594885132756061.Spec := by
  intro n
  simp only [A244636]

end A244636

/-!
# A244637: Primes that are the sum of the squares of distinct primes.

The programs for A244637, the canonical program `A244637.P8806266305917714625` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244637 has offset 1).

The definition of A244637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1111 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244637.P8806266305917714625

`p?[A048261(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A244637

/-- `p?[A048261(n+1)]` -/
def P8806266305917714625.Spec : Prop :=
  ∀ n, P8806266305917714625.a n = A244637 (n + 1)

theorem P8806266305917714625.correct : P8806266305917714625.Spec := by
  intro n
  simp only [A244637, Nat.add_sub_cancel]

end A244637

/-! ## A244637.P322880753430140625

`p?[record[A048261(A291769(n))]]`
-/

namespace A244637.P322880753430140625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244637.P322880753430140625

namespace A244637

/-- `p?[record[A048261(A291769(n))]]` -/
def P322880753430140625.Spec : Prop :=
  ∀ n, P322880753430140625.a n = A244637 (n + 1)

end A244637

/-! ## A244637.P14409810047978494592

`record[A006530(A048261(n+3))]`
-/

namespace A244637.P14409810047978494592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A048261 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244637.P14409810047978494592

namespace A244637

/-- `record[A006530(A048261(n+3))]` -/
def P14409810047978494592.Spec : Prop :=
  ∀ n, P14409810047978494592.a n = A244637 (n + 1)

end A244637

/-! ## A244637.P12420466283428442229

`filter[A048261(n+1), A010051(#)]`
-/

namespace A244637.P12420466283428442229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A244637.P12420466283428442229

namespace A244637

/-- `filter[A048261(n+1), A010051(#)]` -/
def P12420466283428442229.Spec : Prop :=
  ∀ n, P12420466283428442229.a n = A244637 (n + 1)

end A244637

/-! ## A244637.P16064751728977031090

`filter[A048261(n+1), A080339(#)]`
-/

namespace A244637.P16064751728977031090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A244637.P16064751728977031090

namespace A244637

/-- `filter[A048261(n+1), A080339(#)]` -/
def P16064751728977031090.Spec : Prop :=
  ∀ n, P16064751728977031090.a n = A244637 (n + 1)

end A244637

/-! ## A244637.P1116894272445406111

`filter[A048261(n+1), A080545(#)]`
-/

namespace A244637.P1116894272445406111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A244637.P1116894272445406111

namespace A244637

/-- `filter[A048261(n+1), A080545(#)]` -/
def P1116894272445406111.Spec : Prop :=
  ∀ n, P1116894272445406111.a n = A244637 (n + 1)

end A244637

/-! ## A244637.P11906219640570956866

`filter[A048261(n+1), A171387(#)]`
-/

namespace A244637.P11906219640570956866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A244637.P11906219640570956866

namespace A244637

/-- `filter[A048261(n+1), A171387(#)]` -/
def P11906219640570956866.Spec : Prop :=
  ∀ n, P11906219640570956866.a n = A244637 (n + 1)

end A244637

/-! ## A244637.P9664186936956967942

`p?[record[A048261(A117910(n))]]`
-/

namespace A244637.P9664186936956967942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244637.P9664186936956967942

namespace A244637

/-- `p?[record[A048261(A117910(n))]]` -/
def P9664186936956967942.Spec : Prop :=
  ∀ n, P9664186936956967942.a n = A244637 (n + 1)

end A244637

/-! ## A244637.P8611644276905237991

`p?[record[A048261(A126759(n))]]`
-/

namespace A244637.P8611644276905237991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048261 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A244637.P8611644276905237991

namespace A244637

/-- `p?[record[A048261(A126759(n))]]` -/
def P8611644276905237991.Spec : Prop :=
  ∀ n, P8611644276905237991.a n = A244637 (n + 1)

end A244637

/-!
# A244640: a(n) is the number of 2-partitions of the set of primes less than A059756(n) that demonstrate that A059756(n) is prime-partitionable.

The programs for A244640, there is no canonical definition to state claims against.
-/

/-! ## A244640.P8930113941665236378

`A193432(A003319(n))*A193432(n)`
-/

namespace A244640.P8930113941665236378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (A003319 n).toNat * A193432 n

end

end A244640.P8930113941665236378

/-! ## A244640.P4837345741086298104

`A193432(n)*A193432(A230954(n))`
-/

namespace A244640.P4837345741086298104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 n * A193432 (A230954 n).toNat

end

end A244640.P4837345741086298104

/-! ## A244640.P7227761346245919727

`A001227(A150552(n))*A171977(n+1)`
-/

namespace A244640.P7227761346245919727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A150552 n).toNat * A171977 (n + 1)

end

end A244640.P7227761346245919727

/-! ## A244640.P14850993396946184195

`A309894(A319435(3*n))*A365499(n+1)`
-/

namespace A244640.P14850993396946184195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309894 (A319435 (3 * n)).toNat * A365499 (n + 1)

end

end A244640.P14850993396946184195

/-!
# A244643: Number of cells with state 1 at n-th stage in some 2D reversible second order cellular automata (see comments for precise definition).

The programs for A244643, there is no canonical definition to state claims against.
-/

/-! ## A244643.P17565376401239821111

`A002265(A244642(2*n)-A244642(n))`
-/

namespace A244643.P17565376401239821111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A244642 (2 * n) - A244642 n).toNat

end

end A244643.P17565376401239821111

/-! ## A244643.P17179218788434760535

`A090640(A277020(n))`
-/

namespace A244643.P17179218788434760535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090640 (A277020 n).toNat

end

end A244643.P17179218788434760535

/-! ## A244643.P6834870672105277878

`∑{d}[A260443(n), A048675(A014963(#))²]`
-/

namespace A244643.P6834870672105277878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048675 (A014963 d).toNat ^ 2

end

end A244643.P6834870672105277878

/-! ## A244643.P15372029241627180638

`∑{d}[A260443(n), A297108(#)²]`
-/

namespace A244643.P15372029241627180638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d ^ 2

end

end A244643.P15372029241627180638

/-! ## A244643.P12207725418285990984

`A090881(A260443(n))`
-/

namespace A244643.P12207725418285990984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090881 (A260443 n).toNat

end

end A244643.P12207725418285990984

/-!
# A244644: Consider the method used by Archimedes to determine the value of Pi (A000796). This sequence denotes the number of iterations of his algorithm which would result in a difference of less than 1/10^n from that of Pi.

The programs for A244644, there is no canonical definition to state claims against.
-/

/-! ## A244644.P11227451982001469736

`floor(log(log(7))/acot(n)+n)`
-/

namespace A244644.P11227451982001469736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (Real.log (7 : ℝ)) / SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋

end

end A244644.P11227451982001469736

/-! ## A244644.P6045278419163004193

`∑[gcd(2, (n-17)%3)]-2`
-/

namespace A244644.P6045278419163004193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (Int.tmod ((n : ℤ) - 17) 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A244644.P6045278419163004193

/-! ## A244644.P6957553592374400141

`round((n-log(2))*log2(log2(3))+n)`
-/

namespace A244644.P6957553592374400141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n : ℝ) - Real.log (2 : ℝ)) * Real.logb 2 (Real.logb 2 (3 : ℝ)) + (n : ℝ))

end

end A244644.P6957553592374400141

/-! ## A244644.P9030792118961526710

`floor(atan(3)/acot(round(4*n/3)))`
-/

namespace A244644.P9030792118961526710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (3 : ℝ) / SequenceMachineLib.acot (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) : ℝ)⌋

end

end A244644.P9030792118961526710

/-! ## A244644.P6611082004857808143

`floor(log(Δ[A233505(n)]))`
-/

namespace A244644.P6611082004857808143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (f1 (n + 1) - f1 n : ℝ)⌋

end

end A244644.P6611082004857808143

/-! ## A244644.P16903081426864450652

`floor(log(A180965(2*n)))`
-/

namespace A244644.P16903081426864450652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A180965 (2 * n) : ℝ)⌋

end

end A244644.P16903081426864450652

/-! ## A244644.P9230814934468512916

`floor(A315709(2*n)/7)`
-/

namespace A244644.P9230814934468512916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A315709 (2 * n) : ℚ) / 7⌋

end

end A244644.P9230814934468512916

/-! ## A244644.P1171319100577487774

`floor(A067497(5*n)/10)`
-/

namespace A244644.P1171319100577487774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A067497 (5 * n) : ℚ) / 10⌋

end

end A244644.P1171319100577487774

/-! ## A244644.P17514668502622414917

`comp[floor((8*n+7)/A010690(n)*sqrt(2))]`
-/

namespace A244644.P17514668502622414917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((8 * n + 7 : ℚ) / (A010690 n : ℚ) : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A244644.P17514668502622414917

/-! ## A244644.P6210848577075220698

`A063197(A015522(n)+2*n)`
-/

namespace A244644.P6210848577075220698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063197 (A015522 n + (2 * n : ℤ)).toNat

end

end A244644.P6210848577075220698

/-!
# A244650: G.f. A(x) satisfies: Sum_{k=0..n} [x^k] A(x)^n = binomial(5*n,2*n).

The programs for A244650, there is no canonical definition to state claims against.
-/

/-! ## A244650.P7274179537210876816

`∑[A124733(A167614(n+1))]`
-/

namespace A244650.P7274179537210876816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244650.P7274179537210876816

/-! ## A244650.P11393034432726970827

`∑[A124733(A055998(n)+6)]`
-/

namespace A244650.P11393034432726970827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (A055998 n + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244650.P11393034432726970827

/-! ## A244650.P13830200879418533297

`∑[A124733(A046691(n)+7)]`
-/

namespace A244650.P13830200879418533297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (A046691 n + 7).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244650.P13830200879418533297

/-! ## A244650.P13861612028499217917

`∑[A124733(A167499(n)+n)]`
-/

namespace A244650.P13861612028499217917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (A167499 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244650.P13861612028499217917

/-! ## A244650.P6639957177623052036

`∑[A124733(A000217(n+2)+3)]`
-/

namespace A244650.P6639957177623052036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (A000217 (n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244650.P6639957177623052036

/-! ## A244650.P8462129108962553042

`∑[A124733(A034856(n+1)+5)]`
-/

namespace A244650.P8462129108962553042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124733 (A034856 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244650.P8462129108962553042

/-!
# A244651: G.f. A(x) satisfies: Sum_{k=0..n} [x^k] A(x)^n = binomial(6*n,2*n).

The programs for A244651, there is no canonical definition to state claims against.
-/

/-! ## A244651.P4620749638482414024

`∑[A202014(8^n)]`
-/

namespace A244651.P4620749638482414024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202014 (8 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244651.P4620749638482414024

/-!
# A244656: Least product of consecutive positive integers which is divisible by each of 1, 2, ..., n.

The programs for A244656, there is no canonical definition to state claims against.
-/

/-! ## A244656.P15299454563902023026

`A003418(n+1)*A258383(A001924(n+2))`
-/

namespace A244656.P15299454563902023026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * A258383 (A001924 (n + 2)).toNat

end

end A244656.P15299454563902023026

/-! ## A244656.P11517680919333767927

`A003418(n+1)*A230404(A129728(n+6))`
-/

namespace A244656.P11517680919333767927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * A230404 (A129728 (n + 6)).toNat

end

end A244656.P11517680919333767927

/-! ## A244656.P10795646470375355885

`lcm(A001316(A217863(n+1)), A058312(n+1))`
-/

namespace A244656.P10795646470375355885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001316 (A217863 (n + 1)).toNat) (A058312 (n + 1))

end

end A244656.P10795646470375355885

/-! ## A244656.P18015681003845048170

`lcm(n+1, A254667(A347304(n)))`
-/

namespace A244656.P18015681003845048170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A254667 (A347304 n).toNat)

end

end A244656.P18015681003845048170

/-! ## A244656.P16243624977064135497

`A217858(n+1)*A217871(ceil((3^(2/5))^n))`
-/

namespace A244656.P16243624977064135497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217858 (n + 1) * A217871 ⌈((3 : ℝ) ^ ((2 : ℚ) / 5 : ℝ)) ^ n⌉.toNat

end

end A244656.P16243624977064135497

/-!
# A244657: Number T(n,k) of n-node unlabeled rooted trees with thinning limbs and root outdegree (branching factor) k; triangle T(n,k), n>=1, 0<=k<=n-1, read by rows.

The programs for A244657, there is no canonical definition to state claims against.
-/

/-! ## A244657.P1142710867677898586

`A265744(A108934(n)^4)`
-/

namespace A244657.P1142710867677898586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (A108934 n ^ 4).toNat

end

end A244657.P1142710867677898586

/-! ## A244657.P9933171404887879033

`A265744(A108934(n)²²)`
-/

namespace A244657.P9933171404887879033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 ((A108934 n ^ 2) ^ 2).toNat

end

end A244657.P9933171404887879033

/-! ## A244657.P13624336471444470107

`A325678(A135302(n)+A004197(n))`
-/

namespace A244657.P13624336471444470107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A135302 n + A004197 n).toNat

end

end A244657.P13624336471444470107

/-! ## A244657.P14671275354145257312

`A287272(A135302(n))+A068914(n)`
-/

namespace A244657.P14671275354145257312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A135302 n).toNat + A068914 n

end

end A244657.P14671275354145257312

/-! ## A244657.P6572827796498383017

`A325678(A135302(n)+A068914(n))`
-/

namespace A244657.P6572827796498383017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (A135302 n + A068914 n).toNat

end

end A244657.P6572827796498383017

/-!
# A244663: Binary representation of 4^n + 2^(n+1) - 1.

The programs for A244663, there is no canonical definition to state claims against.
-/

/-! ## A244663.P16070275699980597022

`A163664(n+1)+∑[10^n]`
-/

namespace A244663.P16070275699980597022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163664 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A244663.P16070275699980597022

/-! ## A244663.P10597480066249971058

`A098608(n+1)+A002275(n+2)`
-/

namespace A244663.P10597480066249971058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098608 (n + 1) + A002275 (n + 2)

end

end A244663.P10597480066249971058

/-! ## A244663.P1182000401614972860

`A066138(n+1)+10*A002275(n)`
-/

namespace A244663.P1182000401614972860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066138 (n + 1) + 10 * A002275 n

end

end A244663.P1182000401614972860

/-! ## A244663.P17030758245810781001

`A011557(n+1)²+A000042(n+2)`
-/

namespace A244663.P17030758245810781001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) ^ 2 + A000042 (n + 2)

end

end A244663.P17030758245810781001

/-! ## A244663.P9884023290595811702

`A011557(n+1)²+A002275(n+2)`
-/

namespace A244663.P9884023290595811702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) ^ 2 + A002275 (n + 2)

end

end A244663.P9884023290595811702

/-!
# A244668: Numerators of (product of divisors of n / sum of divisors of n).

The programs for A244668, the canonical program `A244668.P10909773268984644874` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244668 has offset 1).

The definition of A244668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5039 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244668.P10909773268984644874

`lcm(∑{d}[n+1, #], ∏{d}[n+1, #])/∑{d}[n+1, #]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A244668

/-- `lcm(∑{d}[n+1, #], ∏{d}[n+1, #])/∑{d}[n+1, #]` -/
def P10909773268984644874.Spec : Prop :=
  ∀ n, P10909773268984644874.a n = (A244668 (n + 1) : ℚ)

end A244668

/-! ## A244668.P10610508964848010543

`∏{d}[n+1, #]/gcd(∑{d}[n+1, #], ∏{d}[n+1, #])`
-/

namespace A244668.P10610508964848010543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.gcd (∑ d ∈ Nat.divisors (f2 n), d) (∏ d ∈ Nat.divisors (f3 n), d) : ℚ)

end

end A244668.P10610508964848010543

namespace A244668

/-- `∏{d}[n+1, #]/gcd(∑{d}[n+1, #], ∏{d}[n+1, #])` -/
def P10610508964848010543.Spec : Prop :=
  ∀ n, P10610508964848010543.a n = (A244668 (n + 1) : ℚ)

end A244668

/-! ## A244668.P2402898126093408757

`A324529(n+1)/∑{d}[n+1, #]`
-/

namespace A244668.P2402898126093408757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324529 (n + 1) : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ)

end

end A244668.P2402898126093408757

namespace A244668

/-- `A324529(n+1)/∑{d}[n+1, #]` -/
def P2402898126093408757.Spec : Prop :=
  ∀ n, P2402898126093408757.a n = (A244668 (n + 1) : ℚ)

end A244668

/-! ## A244668.P17193286024055000411

`∏{d}[n+1, #]/A306682(n+1)`
-/

namespace A244668.P17193286024055000411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A244668.P17193286024055000411

namespace A244668

/-- `∏{d}[n+1, #]/A306682(n+1)` -/
def P17193286024055000411.Spec : Prop :=
  ∀ n, P17193286024055000411.a n = (A244668 (n + 1) : ℚ)

end A244668

/-! ## A244668.P1230876129843679613

`∏{d}[n+1, #]/gcd(∑{d}[n+1, #], A056925(n+1))`
-/

namespace A244668.P1230876129843679613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A056925 (n + 1)) : ℚ)

end

end A244668.P1230876129843679613

namespace A244668

/-- `∏{d}[n+1, #]/gcd(∑{d}[n+1, #], A056925(n+1))` -/
def P1230876129843679613.Spec : Prop :=
  ∀ n, P1230876129843679613.a n = (A244668 (n + 1) : ℚ)

end A244668

/-! ## A244668.P726043609962491998

`A007955(n+1)/A306682(n+1)`
-/

namespace A244668.P726043609962491998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A244668.P726043609962491998

namespace A244668

/-- `A007955(n+1)/A306682(n+1)` -/
def P726043609962491998.Spec : Prop :=
  ∀ n, P726043609962491998.a n = (A244668 (n + 1) : ℚ)

end A244668

/-! ## A244668.P14281301846013695473

`A324529(n+1)/A000203(n+1)`
-/

namespace A244668.P14281301846013695473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324529 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ)

end

end A244668.P14281301846013695473

namespace A244668

/-- `A324529(n+1)/A000203(n+1)` -/
def P14281301846013695473.Spec : Prop :=
  ∀ n, P14281301846013695473.a n = (A244668 (n + 1) : ℚ)

end A244668

/-! ## A244668.P11363624354201225739

`sqrt(n+1)^A000005(n+1)/A306682(n+1)`
-/

namespace A244668.P11363624354201225739
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n + 1 : ℝ) ^ (A000005 (n + 1) : ℤ) / (A306682 (n + 1) : ℝ)

end

end A244668.P11363624354201225739

namespace A244668

/-- `sqrt(n+1)^A000005(n+1)/A306682(n+1)` -/
def P11363624354201225739.Spec : Prop :=
  ∀ n, P11363624354201225739.a n = (A244668 (n + 1) : ℝ)

end A244668

/-! ## A244668.P5185026169750404716

`A007955(n+1)/A000203(n+1)*A244669(n+1)`
-/

namespace A244668.P5185026169750404716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A244669 (n + 1) : ℚ)

end

end A244668.P5185026169750404716

namespace A244668

/-- `A007955(n+1)/A000203(n+1)*A244669(n+1)` -/
def P5185026169750404716.Spec : Prop :=
  ∀ n, P5185026169750404716.a n = (A244668 (n + 1) : ℚ)

end A244668

/-! ## A244668.P7919532385541801797

`sqrt(A062758(n+1))/A306682(n+1)`
-/

namespace A244668.P7919532385541801797
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) / (A306682 (n + 1) : ℝ)

end

end A244668.P7919532385541801797

namespace A244668

/-- `sqrt(A062758(n+1))/A306682(n+1)` -/
def P7919532385541801797.Spec : Prop :=
  ∀ n, P7919532385541801797.a n = (A244668 (n + 1) : ℝ)

end A244668

/-!
# A244669: Denominators of (product of divisors of n / sum of divisors of n).

The programs for A244669, the canonical program `A244669.P10899017682964738725` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244669 has offset 1).

The definition of A244669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A244669.P10899017682964738725

`∑{d}[n+1, #]/A306682(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A244669

/-- `∑{d}[n+1, #]/A306682(n+1)` -/
def P10899017682964738725.Spec : Prop :=
  ∀ n, P10899017682964738725.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P14303119937604025486

`Δ[A160664(n)]/A306682(n+1)`
-/

namespace A244669.P14303119937604025486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A306682 (n + 1) : ℚ)

end

end A244669.P14303119937604025486

namespace A244669

/-- `Δ[A160664(n)]/A306682(n+1)` -/
def P14303119937604025486.Spec : Prop :=
  ∀ n, P14303119937604025486.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P12430169615537908165

`A000203(n+1)/A306682(n+1)`
-/

namespace A244669.P12430169615537908165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A306682 (n + 1) : ℚ)

end

end A244669.P12430169615537908165

namespace A244669

/-- `A000203(n+1)/A306682(n+1)` -/
def P12430169615537908165.Spec : Prop :=
  ∀ n, P12430169615537908165.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P5538641951585695302

`lcm(∑{d}[n+1, #], ∏{d}[n+1, #])/∏{d}[n+1, #]`
-/

namespace A244669.P5538641951585695302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (∑ d ∈ Nat.divisors (f1 n), d) (∏ d ∈ Nat.divisors (f2 n), d) : ℚ) / ((∏ d ∈ Nat.divisors (f3 n), d : ℕ) : ℚ)

end

end A244669.P5538641951585695302

namespace A244669

/-- `lcm(∑{d}[n+1, #], ∏{d}[n+1, #])/∏{d}[n+1, #]` -/
def P5538641951585695302.Spec : Prop :=
  ∀ n, P5538641951585695302.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P2238976009895176842

`∑{d}[n+1, #]/gcd(exp(∑{d}[n+1, log(#)]), ∑{d}[n+1, #])`
-/

namespace A244669.P2238976009895176842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd (SequenceMachineLib.roundAway (Real.exp (∑ d ∈ Nat.divisors (f2 n), Real.log (d : ℝ)))) ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) : ℚ)

end

end A244669.P2238976009895176842

namespace A244669

/-- `∑{d}[n+1, #]/gcd(exp(∑{d}[n+1, log(#)]), ∑{d}[n+1, #])` -/
def P2238976009895176842.Spec : Prop :=
  ∀ n, P2238976009895176842.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P9437948483131489453

`(n+1)*∑{d}[n+1, #]/gcd((n+1)*∑{d}[n+1, #], (n+1)*∏{d}[n+1, #])`
-/

namespace A244669.P9437948483131489453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (∑ d ∈ Nat.divisors (f1 n), d) : ℕ) : ℚ) / (Nat.gcd ((n + 1) * (∑ d ∈ Nat.divisors (f2 n), d)) ((n + 1) * (∏ d ∈ Nat.divisors (f3 n), d)) : ℚ)

end

end A244669.P9437948483131489453

namespace A244669

/-- `(n+1)*∑{d}[n+1, #]/gcd((n+1)*∑{d}[n+1, #], (n+1)*∏{d}[n+1, #])` -/
def P9437948483131489453.Spec : Prop :=
  ∀ n, P9437948483131489453.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P5160609011413387064

`floor(A334794(n+1)/2^∑{d}[n+1, log2(#)])`
-/

namespace A244669.P5160609011413387064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A334794 (n + 1) : ℝ) / (2 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ))⌋

end

end A244669.P5160609011413387064

namespace A244669

/-- `floor(A334794(n+1)/2^∑{d}[n+1, log2(#)])` -/
def P5160609011413387064.Spec : Prop :=
  ∀ n, P5160609011413387064.a n = A244669 (n + 1)

end A244669

/-! ## A244669.P3077352054486676842

`∑{d}[n+1, #]/gcd(∑{d}[n+1, #], A056925(n+1))`
-/

namespace A244669.P3077352054486676842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Int.gcd ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) (A056925 (n + 1)) : ℚ)

end

end A244669.P3077352054486676842

namespace A244669

/-- `∑{d}[n+1, #]/gcd(∑{d}[n+1, #], A056925(n+1))` -/
def P3077352054486676842.Spec : Prop :=
  ∀ n, P3077352054486676842.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P12038588041921610847

`A307893(n+1)/A007956(n+1)`
-/

namespace A244669.P12038588041921610847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307893 (n + 1) : ℚ) / (A007956 (n + 1) : ℚ)

end

end A244669.P12038588041921610847

namespace A244669

/-- `A307893(n+1)/A007956(n+1)` -/
def P12038588041921610847.Spec : Prop :=
  ∀ n, P12038588041921610847.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P13757443470175526262

`A324529(n+1)/A007955(n+1)`
-/

namespace A244669.P13757443470175526262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324529 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A244669.P13757443470175526262

namespace A244669

/-- `A324529(n+1)/A007955(n+1)` -/
def P13757443470175526262.Spec : Prop :=
  ∀ n, P13757443470175526262.a n = (A244669 (n + 1) : ℚ)

end A244669

/-! ## A244669.P15198630572862568300

`A000203(n+1)/A007955(n+1)*A244668(n+1)`
-/

namespace A244669.P15198630572862568300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A244668 (n + 1) : ℚ)

end

end A244669.P15198630572862568300

namespace A244669

/-- `A000203(n+1)/A007955(n+1)*A244668(n+1)` -/
def P15198630572862568300.Spec : Prop :=
  ∀ n, P15198630572862568300.a n = (A244669 (n + 1) : ℚ)

end A244669

/-!
# A244670: Product of divisors of n / sum of divisors of n for n such that product of divisors of n is divisible by sum of divisors of n.

The programs for A244670, the canonical program `A244670.P12427737104699753046` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A244670 has offset 1).

The definition of A244670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145551, A244668, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A244670.P12427737104699753046

`A244668(A145551(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A244670

/-- `A244668(A145551(n+1))` -/
def P12427737104699753046.Spec : Prop :=
  ∀ n, P12427737104699753046.a n = A244670 (n + 1)

theorem P12427737104699753046.correct : P12427737104699753046.Spec := by
  intro n
  simp only [A244670, Nat.add_sub_cancel]

end A244670

/-! ## A244670.P1757799625766755790

`A187942(A321610(n+1)+n)`
-/

namespace A244670.P1757799625766755790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187942 (A321610 (n + 1) + (n : ℤ)).toNat

end

end A244670.P1757799625766755790

namespace A244670

/-- `A187942(A321610(n+1)+n)` -/
def P1757799625766755790.Spec : Prop :=
  ∀ n, P1757799625766755790.a n = A244670 (n + 1)

end A244670

/-! ## A244670.P11903358848212039286

`A187942(A061057(n+1)+A008619(n))`
-/

namespace A244670.P11903358848212039286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187942 (A061057 (n + 1) + A008619 n).toNat

end

end A244670.P11903358848212039286

namespace A244670

/-- `A187942(A061057(n+1)+A008619(n))` -/
def P11903358848212039286.Spec : Prop :=
  ∀ n, P11903358848212039286.a n = A244670 (n + 1)

end A244670

/-!
# A244671: The lexicographically earliest increasing sequence such that a(n) divides the sum of the first a(n) terms.

The programs for A244671, there is no canonical definition to state claims against.
-/

/-! ## A244671.P15766416468662786921

`Δ[A244672(A028310(n))]+floor(acot(n))`
-/

namespace A244671.P15766416468662786921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244672 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A244671.P15766416468662786921

/-! ## A244671.P14522645220456592523

`A000007(n)+Δ[A244672(A028310(n))]`
-/

namespace A244671.P14522645220456592523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244672 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A244671.P14522645220456592523

/-! ## A244671.P10421095278888141722

`Δ[A244672(A028310(n))+A057427(n)]`
-/

namespace A244671.P10421095278888141722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244672 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244671.P10421095278888141722

/-! ## A244671.P8492660343262405931

`Δ[A244672(A028310(n))-A054977(n)]`
-/

namespace A244671.P8492660343262405931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244672 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244671.P8492660343262405931

/-! ## A244671.P809257156062112796

`Δ[A244672(A028310(n))%A000143(n)]`
-/

namespace A244671.P809257156062112796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244672 (A028310 n).toNat) (A000143 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244671.P809257156062112796

/-! ## A244671.P12427550839714690391

`Δ[A244672(A028310(n))]^A019430(2*n)`
-/

namespace A244671.P12427550839714690391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244672 (A028310 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A019430 (2 * n) : ℤ)

end

end A244671.P12427550839714690391

/-! ## A244671.P13263692654216404618

`Δ[A244672(A028310(n))+A000040(n+1)%2]`
-/

namespace A244671.P13263692654216404618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244672 (A028310 n).toNat + Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A244671.P13263692654216404618

/-! ## A244671.P410406106552210752

`Δ[A244672(A028310(n))]-A008683(2*(n+1)²)`
-/

namespace A244671.P410406106552210752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244672 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (2 * (n + 1) ^ 2)

end

end A244671.P410406106552210752

/-! ## A244671.P16004278901842673440

`Δ[A244672(A028310(n))]+A000010(2*n+1)%2`
-/

namespace A244671.P16004278901842673440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244672 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + Int.tmod (A000010 (2 * n + 1)) 2

end

end A244671.P16004278901842673440

/-!
# A244672: Partial sums of A244671.

The programs for A244672, there is no canonical definition to state claims against.
-/

/-! ## A244672.P5995798742079474184

`∑[A244671(n+1)]`
-/

namespace A244672.P5995798742079474184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P5995798742079474184

/-! ## A244672.P157198841193979399

`∑[record[A244671(A028920(n))]]`
-/

namespace A244672.P157198841193979399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P157198841193979399

/-! ## A244672.P16317700480338158452

`∑[record[A244671(A106466(n))]]`
-/

namespace A244672.P16317700480338158452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P16317700480338158452

/-! ## A244672.P10116788895558811422

`∑[record[A244671(A109785(n))]]`
-/

namespace A244672.P10116788895558811422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P10116788895558811422

/-! ## A244672.P5919974046162424522

`∑[record[A244671(A117910(n))]]`
-/

namespace A244672.P5919974046162424522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P5919974046162424522

/-! ## A244672.P1120126136271488911

`∑[record[A244671(A126759(n))]]`
-/

namespace A244672.P1120126136271488911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P1120126136271488911

/-! ## A244672.P200382292017219861

`∑[record[A244671(A133310(n))]]`
-/

namespace A244672.P200382292017219861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P200382292017219861

/-! ## A244672.P15228250067364230029

`∑[record[A244671(A293428(n))]]`
-/

namespace A244672.P15228250067364230029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A293428 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P15228250067364230029

/-! ## A244672.P10051106897663919092

`∑[record[A244671(A323889(n))]]`
-/

namespace A244672.P10051106897663919092
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P10051106897663919092

/-! ## A244672.P379399035040753719

`∑[record[A244671(A324347(n))]]`
-/

namespace A244672.P379399035040753719
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244671 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244672.P379399035040753719

/-!
# A244673: Numbers k that divide 2^k + 4.

The programs for A244673, there is no canonical definition to state claims against.
-/

/-! ## A244673.P3335835221528933827

`A054703(xor(A056986(n+1), A211980(3*n+1)))`
-/

namespace A244673.P3335835221528933827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054703 (Int.xor (A056986 (n + 1)) (A211980 (3 * n + 1))).toNat

end

end A244673.P3335835221528933827

/-! ## A244673.P7926328109595169164

`∑[A034356(a(n-1)+n²*a(n-2))]` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A244673.P7926328109595169164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n f1 =>
  A034356 (f1 (n - 1) + (n ^ 2 : ℤ) * f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A244673.P7926328109595169164

/-!
# A244677: The spiral of Champernowne, read along the East ray.

The programs for A244677, there is no canonical definition to state claims against.
-/

/-! ## A244677.P11998503158813014453

`A007376(∑[8*n-7]+8)`
-/

namespace A244677.P11998503158813014453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 8).toNat

end

end A244677.P11998503158813014453

/-! ## A244677.P14788578553484089964

`dr(A007376(∑[a(n-1)+8]))` with `a(0)=1, a(1)=1`
-/

namespace A244677.P14788578553484089964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244677.P14788578553484089964

/-! ## A244677.P2907146967654351679

`dr(A007376(7-∑[a(n-1)-8]))` with `a(0)=6, a(1)=-1`
-/

namespace A244677.P2907146967654351679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, -1] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (7 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A244677.P2907146967654351679

/-! ## A244677.P9377135614618579851

`A007376(lcm(2*n-1, 2*n)-(n-1))%10`
-/

namespace A244677.P9377135614618579851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 ((Int.lcm ((2 * n : ℤ) - 1) (2 * n : ℤ) : ℤ) - ((n : ℤ) - 1)).toNat) 10

end

end A244677.P9377135614618579851

/-! ## A244677.P13113258401462262878

`dr(A007376(A054552(n)))`
-/

namespace A244677.P13113258401462262878
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A054552 n).toNat)

end

end A244677.P13113258401462262878

/-! ## A244677.P15365073039763877535

`dr(A007376(record[A122918(n)²-n]))`
-/

namespace A244677.P15365073039763877535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122918 n ^ 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A244677.P15365073039763877535

/-! ## A244677.P16414135536401041166

`dr(A007376((A051870(n)+2+n)/2))`
-/

namespace A244677.P16414135536401041166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((A051870 n + 2 + (n : ℤ) : ℚ) / 2)).toNat)

end

end A244677.P16414135536401041166

/-! ## A244677.P13833333083710031918

`A007376((A139272(n)+2-n)/2)%10`
-/

namespace A244677.P13833333083710031918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (SequenceMachineLib.roundAway ((A139272 n + (2 - (n : ℤ)) : ℚ) / 2)).toNat) 10

end

end A244677.P13833333083710031918

/-! ## A244677.P15278961109014791398

`A007376((A185212(n)+2-n)/3)%10`
-/

namespace A244677.P15278961109014791398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (SequenceMachineLib.roundAway ((A185212 n + (2 - (n : ℤ)) : ℚ) / 3)).toNat) 10

end

end A244677.P15278961109014791398

/-! ## A244677.P17603478665555507473

`A007376(A280089(n)%A144916(n+1))%10`
-/

namespace A244677.P17603478665555507473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (Int.tmod (A280089 n) (A144916 (n + 1))).toNat) 10

end

end A244677.P17603478665555507473

/-! ## A244677.P5056620515418484983

`lcm(A007376((A139272(n)+2-n)/2), A257075(n))`
-/

namespace A244677.P5056620515418484983
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (SequenceMachineLib.roundAway ((A139272 n + (2 - (n : ℤ)) : ℚ) / 2)).toNat) (A257075 n)

end

end A244677.P5056620515418484983

/-!
# A244678: The spiral of Champernowne read by the East-Northeast ray.

The programs for A244678, there is no canonical definition to state claims against.
-/

/-! ## A244678.P17453815457384403793

`A007376(∑[a(n-1)+32])` with `a(0)=1, a(1)=11`
-/

namespace A244678.P17453815457384403793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244678.P17453815457384403793

/-! ## A244678.P8418639967932430865

`A007376((1-4*n)²+3*n)`
-/

namespace A244678.P8418639967932430865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((1 - (4 * n : ℤ)) ^ 2 + (3 * n : ℤ)).toNat

end

end A244678.P8418639967932430865

/-! ## A244678.P15980808577160824842

`dr(A007376(2*C(4*n, 2)+1-n))`
-/

namespace A244678.P15980808577160824842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (2 * Nat.choose (4 * n) 2 + 1 - n))

end

end A244678.P15980808577160824842

/-! ## A244678.P11215453931130354759

`dr(A007376(A143856(n+1)))`
-/

namespace A244678.P11215453931130354759
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A143856 (n + 1)).toNat)

end

end A244678.P11215453931130354759

/-! ## A244678.P6419764417303076807

`dr(A007376(abs(n-(A104188(n)+1))))`
-/

namespace A244678.P6419764417303076807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(n : ℤ) - (A104188 n + 1)|.toNat)

end

end A244678.P6419764417303076807

/-! ## A244678.P8582307697278136593

`dr(A007376(abs(2*n-A143861(n+1))))`
-/

namespace A244678.P8582307697278136593
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(2 * n : ℤ) - A143861 (n + 1)|.toNat)

end

end A244678.P8582307697278136593

/-! ## A244678.P1741041150754944292

`lcm(A007376(A143856(n+1)), A257075(n))`
-/

namespace A244678.P1741041150754944292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (A143856 (n + 1)).toNat) (A257075 n)

end

end A244678.P1741041150754944292

/-! ## A244678.P4478125895107969972

`or(A007376(A143856(n+1)), A151909(n))`
-/

namespace A244678.P4478125895107969972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007376 (A143856 (n + 1)).toNat) (A151909 n)

end

end A244678.P4478125895107969972

/-! ## A244678.P8795457249726199518

`A007376(A143856(n+1))+A008683(4*(n+1))`
-/

namespace A244678.P8795457249726199518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A143856 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A244678.P8795457249726199518

/-!
# A244679: The spiral of Champernowne read by the Northeast ray.

The programs for A244679, there is no canonical definition to state claims against.
-/

/-! ## A244679.P5977137687062652629

`A007376(∑[8*n-6]+7)`
-/

namespace A244679.P5977137687062652629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 7).toNat

end

end A244679.P5977137687062652629

/-! ## A244679.P2974488159332766949

`dr(A007376(xor(1, 2*C(2*n, 2))))`
-/

namespace A244679.P2974488159332766949
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.xor 1 (2 * Nat.choose (2 * n) 2)))

end

end A244679.P2974488159332766949

/-! ## A244679.P5447693140390303155

`dr(A007376(∑[a(n-1)+8]))` with `a(0)=1, a(1)=2`
-/

namespace A244679.P5447693140390303155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244679.P5447693140390303155

/-! ## A244679.P3816415999238634655

`dr(A007376(7-∑[a(n-1)-8]))` with `a(0)=6`
-/

namespace A244679.P3816415999238634655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (7 - ∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A244679.P3816415999238634655

/-! ## A244679.P2350863598141508634

`dr(A007376(xor(1, (2*n)²-2*n)))`
-/

namespace A244679.P2350863598141508634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Int.xor 1 (((2 * n) ^ 2 : ℤ) - (2 * n : ℤ))).toNat)

end

end A244679.P2350863598141508634

/-! ## A244679.P6255265432677695000

`A007376(xor(1, (2*n)^3)/(2*n+1))%10`
-/

namespace A244679.P6255265432677695000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (SequenceMachineLib.roundAway ((Nat.xor 1 ((2 * n) ^ 3) : ℚ) / (2 * n + 1 : ℚ))).toNat) 10

end

end A244679.P6255265432677695000

/-! ## A244679.P15111160764432769013

`dr(A007376(A002061(2*n)))`
-/

namespace A244679.P15111160764432769013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A002061 (2 * n)).toNat)

end

end A244679.P15111160764432769013

/-! ## A244679.P14471151622673045710

`A007376((A080856(n)+1)/2)%10`
-/

namespace A244679.P14471151622673045710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (SequenceMachineLib.roundAway ((A080856 n + 1 : ℚ) / 2)).toNat) 10

end

end A244679.P14471151622673045710

/-! ## A244679.P5353521454262709953

`lcm(A007376(xor(1, (2*n)^3)/(2*n+1)), A257075(n))`
-/

namespace A244679.P5353521454262709953
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (SequenceMachineLib.roundAway ((Nat.xor 1 ((2 * n) ^ 3) : ℚ) / (2 * n + 1 : ℚ))).toNat) (A257075 n)

end

end A244679.P5353521454262709953

/-! ## A244679.P6321799696774614908

`A007376(A102083(n)%A059193(n+1))%10`
-/

namespace A244679.P6321799696774614908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (Int.tmod (A102083 n) (A059193 (n + 1))).toNat) 10

end

end A244679.P6321799696774614908

/-!
# A244680: The spiral of Champernowne read by the North-Northeast ray.

The programs for A244680, there is no canonical definition to state claims against.
-/

/-! ## A244680.P13136251670765477044

`A007376(∑[a(n-1)+32])` with `a(0)=1, a(1)=13`
-/

namespace A244680.P13136251670765477044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 13] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244680.P13136251670765477044

/-! ## A244680.P3809420927245491833

`A007376(n*(16*n-3)+1)`
-/

namespace A244680.P3809420927245491833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((n : ℤ) * ((16 * n : ℤ) - 3) + 1).toNat

end

end A244680.P3809420927245491833

/-! ## A244680.P15217659394870829355

`A007376(C(7*n, 2)/7+C(5*n, 2)+1)%11`
-/

namespace A244680.P15217659394870829355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (SequenceMachineLib.roundAway ((Nat.choose (7 * n) 2 : ℚ) / 7 + (Nat.choose (5 * n) 2 + 1 : ℚ))).toNat) 11

end

end A244680.P15217659394870829355

/-! ## A244680.P13347570329898206867

`dr(A007376(A143861(n+1)))`
-/

namespace A244680.P13347570329898206867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A143861 (n + 1)).toNat)

end

end A244680.P13347570329898206867

/-! ## A244680.P1032324441712383991

`A007376(A143861(n%(n+2)+1))%10`
-/

namespace A244680.P1032324441712383991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A143861 (n % (n + 2) + 1)).toNat) 10

end

end A244680.P1032324441712383991

/-!
# A244681: The spiral of Champernowne read by the North ray.

The programs for A244681, there is no canonical definition to state claims against.
-/

/-! ## A244681.P3859123193167357692

`A007376(∑[8*n-5]+6)`
-/

namespace A244681.P3859123193167357692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 6).toNat

end

end A244681.P3859123193167357692

/-! ## A244681.P9887984218098582970

`dr(A007376(∑[a(n-1)+8]))` with `a(0)=1, a(1)=3`
-/

namespace A244681.P9887984218098582970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244681.P9887984218098582970

/-! ## A244681.P13487549678625722498

`A007376((2*n)²-(n-1))%10`
-/

namespace A244681.P13487549678625722498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (((2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1)).toNat) 10

end

end A244681.P13487549678625722498

/-! ## A244681.P9450323030371027485

`dr(A007376(-(xor(-1, (2*n)²)+n)))`
-/

namespace A244681.P9450323030371027485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (-(Int.xor (-1) ((2 * n) ^ 2 : ℤ) + (n : ℤ))).toNat)

end

end A244681.P9450323030371027485

/-! ## A244681.P14223856314543514675

`dr(A007376(xor(2, xor(2, (2*n)²-(n-1)))))`
-/

namespace A244681.P14223856314543514675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Int.xor 2 (Int.xor 2 (((2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1)))).toNat)

end

end A244681.P14223856314543514675

/-! ## A244681.P361506635673883781

`dr(A007376(floor(2*n/acot(2*n)-(n-1))))`
-/

namespace A244681.P361506635673883781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌊(2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - ((n : ℤ) - 1 : ℝ)⌋.toNat)

end

end A244681.P361506635673883781

/-! ## A244681.P10438167289469056863

`dr(A007376(and(ϕ-ϕ², (2*n)²-(n-1))))`
-/

namespace A244681.P10438167289469056863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Int.land (SequenceMachineLib.roundAway (Real.goldenRatio - Real.goldenRatio ^ 2)) (((2 * n) ^ 2 : ℤ) - ((n : ℤ) - 1))).toNat)

end

end A244681.P10438167289469056863

/-! ## A244681.P14940753292696897841

`dr(A007376(A054556(n+1)))`
-/

namespace A244681.P14940753292696897841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A054556 (n + 1)).toNat)

end

end A244681.P14940753292696897841

/-! ## A244681.P1289210519028551408

`gcd(A000038(n), A007376(A054556(n+1)))`
-/

namespace A244681.P1289210519028551408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A054556 (n + 1)).toNat)

end

end A244681.P1289210519028551408

/-! ## A244681.P8250070127881507417

`or(A000007(n), A007376(A054556(n+1)))`
-/

namespace A244681.P8250070127881507417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A054556 (n + 1)).toNat)

end

end A244681.P8250070127881507417

/-! ## A244681.P8595899439051151050

`A007376(A054556(n+1))+A000007(n+1)`
-/

namespace A244681.P8595899439051151050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A054556 (n + 1)).toNat + A000007 (n + 1)

end

end A244681.P8595899439051151050

/-! ## A244681.P8781809654828678099

`A007376(A054556(n+1))*A010684(2*n)`
-/

namespace A244681.P8781809654828678099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A054556 (n + 1)).toNat * A010684 (2 * n)

end

end A244681.P8781809654828678099

/-! ## A244681.P14622866970483530224

`A007318(C(2, n))*A007376(A054556(n+1))`
-/

namespace A244681.P14622866970483530224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A054556 (n + 1)).toNat

end

end A244681.P14622866970483530224

/-! ## A244681.P12137557444294612698

`A007376(A054556(n+1))+A008683(4*(n+1))`
-/

namespace A244681.P12137557444294612698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A054556 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A244681.P12137557444294612698

/-! ## A244681.P12227677952176983299

`A014963(10*(n+1))*A007376(A054556(n+1))`
-/

namespace A244681.P12227677952176983299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A007376 (A054556 (n + 1)).toNat

end

end A244681.P12227677952176983299

/-! ## A244681.P7276964459156669706

`A007376(A054556(n+1))+(2*A000041(n))%2`
-/

namespace A244681.P7276964459156669706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A054556 (n + 1)).toNat + Int.tmod (2 * A000041 n) 2

end

end A244681.P7276964459156669706

/-! ## A244681.P14513925146604671414

`A000041(C(2, n+2))*A007376(A054556(n+1))`
-/

namespace A244681.P14513925146604671414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A007376 (A054556 (n + 1)).toNat

end

end A244681.P14513925146604671414

/-! ## A244681.P9805636327877463974

`A000045((-1)^(2*n))*A007376(A054556(n+1))`
-/

namespace A244681.P9805636327877463974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ (2 * n)).toNat * A007376 (A054556 (n + 1)).toNat

end

end A244681.P9805636327877463974

/-! ## A244681.P10859675096064139624

`A001222(A059843(n+1))*A007376(A054556(n+1))`
-/

namespace A244681.P10859675096064139624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A059843 (n + 1)).toNat * A007376 (A054556 (n + 1)).toNat

end

end A244681.P10859675096064139624

/-! ## A244681.P5079258319064229655

`A007376(A054556(n+1))+A004197(∑[n])`
-/

namespace A244681.P5079258319064229655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A054556 (n + 1)).toNat + A004197 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244681.P5079258319064229655

/-!
# A244682: The spiral of Champernowne read by the North-Northwest ray.

The programs for A244682, there is no canonical definition to state claims against.
-/

/-! ## A244682.P16997513526453800400

`A007376((4*n)²+1-n)`
-/

namespace A244682.P16997513526453800400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (((4 * n) ^ 2 : ℤ) + (1 - (n : ℤ))).toNat

end

end A244682.P16997513526453800400

/-! ## A244682.P10374924799826010333

`dr(A007376(or(1, (4*n)²)-n))`
-/

namespace A244682.P10374924799826010333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.lor 1 ((4 * n) ^ 2) - n))

end

end A244682.P10374924799826010333

/-! ## A244682.P3279655865311502701

`dr(A007376(xor(1, (4*n)²)-n))`
-/

namespace A244682.P3279655865311502701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.xor 1 ((4 * n) ^ 2) - n))

end

end A244682.P3279655865311502701

/-! ## A244682.P3183204696875666084

`dr(A007376(∑[a(n-1)+32]))` with `a(0)=1, a(1)=15`
-/

namespace A244682.P3183204696875666084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 15] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244682.P3183204696875666084

/-! ## A244682.P13846597189444759270

`A007376(Δ[C(4*n, 3)/4]+n*(8*n-5))%10`
-/

namespace A244682.P13846597189444759270
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 3 : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n + ((n : ℤ) * ((8 * n : ℤ) - 5) : ℚ))).toNat) 10

end

end A244682.P13846597189444759270

/-! ## A244682.P17746367235212335127

`dr(A007376(A143860(n+1)))`
-/

namespace A244682.P17746367235212335127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A143860 (n + 1)).toNat)

end

end A244682.P17746367235212335127

/-! ## A244682.P7230097277581577748

`dr(A007376(A002522(4*n)-n))`
-/

namespace A244682.P7230097277581577748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A002522 (4 * n) - (n : ℤ)).toNat)

end

end A244682.P7230097277581577748

/-! ## A244682.P4364364520873336063

`dr(A007376(abs(n-(A016802(n)+1))))`
-/

namespace A244682.P4364364520873336063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(n : ℤ) - (A016802 n + 1)|.toNat)

end

end A244682.P4364364520873336063

/-! ## A244682.P15829401150743398387

`A007318(C(2, n))*A007376(A143860(n+1))`
-/

namespace A244682.P15829401150743398387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A143860 (n + 1)).toNat

end

end A244682.P15829401150743398387

/-! ## A244682.P14518373758213438016

`A007376(A143860(n+1))^A014963(∑[n+1])`
-/

namespace A244682.P14518373758213438016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A143860 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A244682.P14518373758213438016

/-!
# A244683: The spiral of Champernowne read by the Northwest ray.

The programs for A244683, there is no canonical definition to state claims against.
-/

/-! ## A244683.P5387828522552019391

`A007376((2*n)²+1)`
-/

namespace A244683.P5387828522552019391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((2 * n) ^ 2 + 1)

end

end A244683.P5387828522552019391

/-! ## A244683.P7063479926660422522

`dr(A007376(record[or(n², (-1)^n)]))`
-/

namespace A244683.P7063479926660422522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) ((-1) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A244683.P7063479926660422522

/-! ## A244683.P3905188565694765832

`dr(A007376(record[xor(n², (-1)^n)]))`
-/

namespace A244683.P3905188565694765832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n ^ 2 : ℤ) ((-1) ^ n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A244683.P3905188565694765832

/-! ## A244683.P3582832356061239359

`dr(A007376(∑[a(n-1)+8]))` with `a(0)=1, a(1)=4`
-/

namespace A244683.P3582832356061239359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244683.P3582832356061239359

/-! ## A244683.P3966927015447932974

`dr(A007376(A053755(n)))`
-/

namespace A244683.P3966927015447932974
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A053755 n).toNat)

end

end A244683.P3966927015447932974

/-! ## A244683.P1794971852302425950

`dr(A007376(record[A228564(n)]))`
-/

namespace A244683.P1794971852302425950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A244683.P1794971852302425950

/-! ## A244683.P18393031813115820010

`dr(A007376(A000466(n)+2))`
-/

namespace A244683.P18393031813115820010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A000466 n + 2).toNat)

end

end A244683.P18393031813115820010

/-! ## A244683.P3628556192801340142

`dr(A007376(A002522(2*n)))`
-/

namespace A244683.P3628556192801340142
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A002522 (2 * n)).toNat)

end

end A244683.P3628556192801340142

/-! ## A244683.P7935724119582347840

`dr(A007376(A160457(2*n+1)))`
-/

namespace A244683.P7935724119582347840
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A160457 (2 * n + 1)).toNat)

end

end A244683.P7935724119582347840

/-! ## A244683.P975799444898301012

`or(A000007(n), A007376(A053755(n)))`
-/

namespace A244683.P975799444898301012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A053755 n).toNat)

end

end A244683.P975799444898301012

/-! ## A244683.P12114575460957575370

`A007376(A053755(n))+A000038(n+1)`
-/

namespace A244683.P12114575460957575370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A053755 n).toNat + A000038 (n + 1)

end

end A244683.P12114575460957575370

/-! ## A244683.P12899258312077169395

`A007318(C(2, n))*A007376(A053755(n))`
-/

namespace A244683.P12899258312077169395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A053755 n).toNat

end

end A244683.P12899258312077169395

/-! ## A244683.P2783358618849037541

`A000041(and(1, -n))*A007376(A053755(n))`
-/

namespace A244683.P2783358618849037541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A007376 (A053755 n).toNat

end

end A244683.P2783358618849037541

/-! ## A244683.P14819897057906890377

`A007376(A053755(n))+A005925(4*n+1)`
-/

namespace A244683.P14819897057906890377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A053755 n).toNat + A005925 (4 * n + 1)

end

end A244683.P14819897057906890377

/-! ## A244683.P137055915564591928

`gcd(2, A000040(n+2))*A007376(A053755(n))`
-/

namespace A244683.P137055915564591928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A007376 (A053755 n).toNat

end

end A244683.P137055915564591928

/-! ## A244683.P10350572447376061258

`A000041(C(2, n+2))*A007376(A053755(n))`
-/

namespace A244683.P10350572447376061258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A007376 (A053755 n).toNat

end

end A244683.P10350572447376061258

/-! ## A244683.P2542689369645740490

`A014963(9*n+12)*A007376(A053755(n))`
-/

namespace A244683.P2542689369645740490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (9 * n + 12) * A007376 (A053755 n).toNat

end

end A244683.P2542689369645740490

/-! ## A244683.P8293756479990836185

`A014963(10*(n+10))*A007376(A002522(2*n))`
-/

namespace A244683.P8293756479990836185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 10)) * A007376 (A002522 (2 * n)).toNat

end

end A244683.P8293756479990836185

/-! ## A244683.P5596238834324911059

`A007376(A053755(n))*A120004(A219032(n))`
-/

namespace A244683.P5596238834324911059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A053755 n).toNat * A120004 (A219032 n).toNat

end

end A244683.P5596238834324911059

/-! ## A244683.P2843846899404906587

`A007376(A053755(n))*A105700(A000040(n+1))`
-/

namespace A244683.P2843846899404906587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A053755 n).toNat * A105700 (A000040 (n + 1)).toNat

end

end A244683.P2843846899404906587

/-!
# A244684: The spiral of Champernowne read by the West-Northwest ray.

The programs for A244684, there is no canonical definition to state claims against.
-/

/-! ## A244684.P4274417387515445119

`A007376((4*n)²+1+n)`
-/

namespace A244684.P4274417387515445119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((4 * n) ^ 2 + 1 + n)

end

end A244684.P4274417387515445119

/-! ## A244684.P12515502711706646693

`dr(A007376(∑[a(n-1)+32]))` with `a(0)=1, a(1)=17`
-/

namespace A244684.P12515502711706646693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 17] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244684.P12515502711706646693

/-! ## A244684.P16657908240839839084

`dr(A007376(A143859(n+1)))`
-/

namespace A244684.P16657908240839839084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A143859 (n + 1)).toNat)

end

end A244684.P16657908240839839084

/-! ## A244684.P13310401571177438718

`dr(A007376(Δ[A094160(n+1)/4]))`
-/

namespace A244684.P13310401571177438718
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094160 (n + 1) : ℚ) / 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat)

end

end A244684.P13310401571177438718

/-! ## A244684.P3145392352968267658

`dr(A007376(abs(3*n-A082041(n))))`
-/

namespace A244684.P3145392352968267658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(3 * n : ℤ) - A082041 n|.toNat)

end

end A244684.P3145392352968267658

/-! ## A244684.P2369690746848218350

`dr(A007376(abs(4*n-A143838(n+1))))`
-/

namespace A244684.P2369690746848218350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(4 * n : ℤ) - A143838 (n + 1)|.toNat)

end

end A244684.P2369690746848218350

/-! ## A244684.P15948338302537733581

`A007318(C(2, n))*A007376(A143859(n+1))`
-/

namespace A244684.P15948338302537733581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A143859 (n + 1)).toNat

end

end A244684.P15948338302537733581

/-! ## A244684.P13396063779477189432

`(A000041(n)%2)!*A007376(A143859(n+1))`
-/

namespace A244684.P13396063779477189432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A007376 (A143859 (n + 1)).toNat

end

end A244684.P13396063779477189432

/-! ## A244684.P4146505348982248035

`A007318(n*char[1])*A007376(A143859(n+1))`
-/

namespace A244684.P4146505348982248035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n * (if ∃ j, f1 j = n then 1 else 0)) * A007376 (A143859 (n + 1)).toNat

end

end A244684.P4146505348982248035

/-! ## A244684.P12356403363176480878

`A007376(A143859(n+1))+char[A000032(n+15)]`
-/

namespace A244684.P12356403363176480878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 15)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A143859 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A244684.P12356403363176480878

/-!
# A244685: The spiral of Champernowne read by the West ray.

The programs for A244685, there is no canonical definition to state claims against.
-/

/-! ## A244685.P8501335727831400361

`A007376(∑[record[lcm(4, n)+1]])`
-/

namespace A244685.P8501335727831400361
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244685.P8501335727831400361

/-! ## A244685.P11539863088245217093

`A007376(∑[8*n-3]+4)`
-/

namespace A244685.P11539863088245217093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j + 4).toNat

end

end A244685.P11539863088245217093

/-! ## A244685.P6002175149168800658

`dr(A007376(∑[a(n-1)+8]))` with `a(0)=1, a(1)=5`
-/

namespace A244685.P6002175149168800658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244685.P6002175149168800658

/-! ## A244685.P755917377084414807

`dr(A007376(abs(xor(-1, (2*n)²)-n)))`
-/

namespace A244685.P755917377084414807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |Int.xor (-1) ((2 * n) ^ 2 : ℤ) - (n : ℤ)|.toNat)

end

end A244685.P755917377084414807

/-! ## A244685.P5599843062477578119

`dr(A007376((C(4*n+1, 2)+2)/2))`
-/

namespace A244685.P5599843062477578119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((Nat.choose (4 * n + 1) 2 + 2 : ℚ) / 2)).toNat)

end

end A244685.P5599843062477578119

/-! ## A244685.P881367553961826586

`dr(A007376(lcm(2*n+1, 2*n)+1-n))`
-/

namespace A244685.P881367553961826586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((Nat.lcm (2 * n + 1) (2 * n) : ℤ) + (1 - (n : ℤ))).toNat)

end

end A244685.P881367553961826586

/-! ## A244685.P16021805835282447021

`dr(A007376(or(1, (2*n+1)*2*n)-n))`
-/

namespace A244685.P16021805835282447021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.lor 1 ((2 * n + 1) * (2 * n)) - n))

end

end A244685.P16021805835282447021

/-! ## A244685.P15876842971162981780

`dr(A007376(floor(2*n/acot(2*n)+n+1)))`
-/

namespace A244685.P15876842971162981780
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌊(2 * n : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) + (n + 1 : ℝ)⌋.toNat)

end

end A244685.P15876842971162981780

/-! ## A244685.P7649608138094733116

`dr(A007376(ceil((2*n+1)/acot(2*n)-n)))`
-/

namespace A244685.P7649608138094733116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ⌈(2 * n + 1 : ℝ) / SequenceMachineLib.acot (2 * n : ℝ) - (n : ℝ)⌉.toNat)

end

end A244685.P7649608138094733116

/-! ## A244685.P16071902001793122643

`dr(A007376(round((2*n+2*n+1)/acot(n))))`
-/

namespace A244685.P16071902001793122643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((2 * n + (2 * n + 1) : ℝ) / SequenceMachineLib.acot (n : ℝ))).toNat)

end

end A244685.P16071902001793122643

/-! ## A244685.P14192853126915462839

`dr(A007376(abs(n-1-2*C(2*n+1, 2))))`
-/

namespace A244685.P14192853126915462839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(n : ℤ) - 1 - (2 * Nat.choose (2 * n + 1) 2 : ℤ)|.toNat)

end

end A244685.P14192853126915462839

/-! ## A244685.P3373984376874374267

`dr(A007376(abs(n-xor(1, (2*n+1)*2*n))))`
-/

namespace A244685.P3373984376874374267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(n : ℤ) - (Nat.xor 1 ((2 * n + 1) * (2 * n)) : ℤ)|.toNat)

end

end A244685.P3373984376874374267

/-! ## A244685.P13932952617462146212

`A007376((2*n+1)*and(2*n+1, 2*n)-(n-1))%10`
-/

namespace A244685.P13932952617462146212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (((2 * n + 1) * Nat.land (2 * n + 1) (2 * n) : ℤ) - ((n : ℤ) - 1)).toNat) 10

end

end A244685.P13932952617462146212

/-! ## A244685.P7584457943578149867

`dr(A007376(A054567(n+1)))`
-/

namespace A244685.P7584457943578149867
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A054567 (n + 1)).toNat)

end

end A244685.P7584457943578149867

/-! ## A244685.P11123114490939962697

`dr(A007376(∑[A122709(n)-n]))`
-/

namespace A244685.P11123114490939962697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 n - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A244685.P11123114490939962697

/-! ## A244685.P12859797592213892571

`dr(A007376(A033951(n)-2*n))`
-/

namespace A244685.P12859797592213892571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A033951 n - (2 * n : ℤ)).toNat)

end

end A244685.P12859797592213892571

/-! ## A244685.P15240944243431378289

`A007376(A054567(n+1))/(A007318(n)%2)!`
-/

namespace A244685.P15240944243431378289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A054567 (n + 1)).toNat : ℚ) / (Nat.factorial (Int.tmod (A007318 n) 2).toNat : ℚ)

end

end A244685.P15240944243431378289

/-! ## A244685.P2012690955660130559

`A007376(A054567(n+1))^ceil(n/A000041(n))`
-/

namespace A244685.P2012690955660130559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A054567 (n + 1)).toNat : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A244685.P2012690955660130559

/-! ## A244685.P139095219671213837

`A007318(C(2, n))+A007376(A054567(n+1))-1`
-/

namespace A244685.P139095219671213837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) + (A007376 (A054567 (n + 1)).toNat - 1)

end

end A244685.P139095219671213837

/-! ## A244685.P5600915832189991240

`A007376(A054567(n+1))/A000108(C(2, n+2))`
-/

namespace A244685.P5600915832189991240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A054567 (n + 1)).toNat : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A244685.P5600915832189991240

/-!
# A244686: The spiral of Champernowne read by the West-Southwest ray.

The programs for A244686, there is no canonical definition to state claims against.
-/

/-! ## A244686.P333092356268957203

`A007376(∑[a(n-1)+32])` with `a(0)=1, a(1)=19`
-/

namespace A244686.P333092356268957203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 19] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244686.P333092356268957203

/-! ## A244686.P7543579963403390308

`A007376(n*(16*n+4)+1-n)`
-/

namespace A244686.P7543579963403390308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n * (16 * n + 4) + 1 - n)

end

end A244686.P7543579963403390308

/-! ## A244686.P1532989695533947757

`dr(A007376(A143854(n+1)))`
-/

namespace A244686.P1532989695533947757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A143854 (n + 1)).toNat)

end

end A244686.P1532989695533947757

/-! ## A244686.P988875744174017665

`A007376(A143854(n+1))%A040030(n)`
-/

namespace A244686.P988875744174017665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A143854 (n + 1)).toNat) (A040030 n)

end

end A244686.P988875744174017665

/-! ## A244686.P14537267745769182049

`gcd(A000038(n), A007376(A143854(n+1)))`
-/

namespace A244686.P14537267745769182049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A143854 (n + 1)).toNat)

end

end A244686.P14537267745769182049

/-! ## A244686.P5150267691429213327

`lcm(A007376(A143854(n+1)), A033999(n))`
-/

namespace A244686.P5150267691429213327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (A143854 (n + 1)).toNat) (A033999 n)

end

end A244686.P5150267691429213327

/-! ## A244686.P632535665551959969

`A007318(C(2, n))*A007376(A143854(n+1))`
-/

namespace A244686.P632535665551959969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A143854 (n + 1)).toNat

end

end A244686.P632535665551959969

/-! ## A244686.P14745628325652172625

`A007376(A143854(n+1))/A007318(C(2, n+2))`
-/

namespace A244686.P14745628325652172625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A143854 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A244686.P14745628325652172625

/-! ## A244686.P9100323254513462920

`round(A007376(A143854(n+1))+A008683(n+1)/74)`
-/

namespace A244686.P9100323254513462920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A007376 (A143854 (n + 1)).toNat : ℚ) + (A008683 (n + 1) : ℚ) / 74)

end

end A244686.P9100323254513462920

/-!
# A244687: The spiral of Champernowne read by the Southwest ray.

The programs for A244687, there is no canonical definition to state claims against.
-/

/-! ## A244687.P9954165622104200868

`A007376(record[or(1, n)²-n])`
-/

namespace A244687.P9954165622104200868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244687.P9954165622104200868

/-! ## A244687.P8383716281536357458

`A007376(record[xor(1, n)²-n])`
-/

namespace A244687.P8383716281536357458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A244687.P8383716281536357458

/-! ## A244687.P16362970092823551195

`A007376(Δ[n²]²-n-n)`
-/

namespace A244687.P16362970092823551195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - (n : ℤ) - (n : ℤ)).toNat

end

end A244687.P16362970092823551195

/-! ## A244687.P10456639920711422706

`dr(A007376(∑[a(n-1)+8]))` with `a(0)=1, a(1)=6`
-/

namespace A244687.P10456639920711422706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244687.P10456639920711422706

/-! ## A244687.P15004246334370490499

`dr(A007376(record[(n+1)^gcd(2, n)-n]))`
-/

namespace A244687.P15004246334370490499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.gcd 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A244687.P15004246334370490499

/-! ## A244687.P16121878448903329871

`A007376(floor(Δ[n²²]/(n+1)))%10`
-/

namespace A244687.P16121878448903329871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (n + 1 : ℚ)⌋.toNat) 10

end

end A244687.P16121878448903329871

/-! ## A244687.P2122094335542900032

`dr(A007376(A054569(n+1)))`
-/

namespace A244687.P2122094335542900032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A054569 (n + 1)).toNat)

end

end A244687.P2122094335542900032

/-! ## A244687.P11736459516862136624

`dr(A007376(A002061(2*n+1)))`
-/

namespace A244687.P11736459516862136624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A002061 (2 * n + 1)).toNat)

end

end A244687.P11736459516862136624

/-! ## A244687.P8830888164205908821

`gcd(A000038(n), A007376(A054569(n+1)))`
-/

namespace A244687.P8830888164205908821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A054569 (n + 1)).toNat)

end

end A244687.P8830888164205908821

/-! ## A244687.P3778439084253847078

`or(A000007(n), A007376(A054569(n+1)))`
-/

namespace A244687.P3778439084253847078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 (A054569 (n + 1)).toNat)

end

end A244687.P3778439084253847078

/-!
# A244688: The spiral of Champernowne read by the South-Southwest ray.

The programs for A244688, there is no canonical definition to state claims against.
-/

/-! ## A244688.P13780473013620990973

`A007376(∑[a(n-1)+32])` with `a(0)=1, a(1)=21`
-/

namespace A244688.P13780473013620990973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 21] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244688.P13780473013620990973

/-! ## A244688.P5106652101473408941

`A007376((4*n+1)²-3*n)`
-/

namespace A244688.P5106652101473408941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((4 * n + 1) ^ 2 - 3 * n)

end

end A244688.P5106652101473408941

/-! ## A244688.P13155487472245047343

`dr(A007376(A143838(n+1)))`
-/

namespace A244688.P13155487472245047343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A143838 (n + 1)).toNat)

end

end A244688.P13155487472245047343

/-! ## A244688.P12542278177704440519

`A007376(A298791(3*n))%10`
-/

namespace A244688.P12542278177704440519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A298791 (3 * n)).toNat) 10

end

end A244688.P12542278177704440519

/-! ## A244688.P67431521483635391

`A007376(A082041(n)+n)%11`
-/

namespace A244688.P67431521483635391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A082041 n + (n : ℤ)).toNat) 11

end

end A244688.P67431521483635391

/-! ## A244688.P4663103003959376737

`A007376(A033951(2*n)-n)%13`
-/

namespace A244688.P4663103003959376737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A033951 (2 * n) - (n : ℤ)).toNat) 13

end

end A244688.P4663103003959376737

/-! ## A244688.P7790616622836619643

`A007376(∑[A170837(2*n+1)])%13`
-/

namespace A244688.P7790616622836619643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170837 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) 13

end

end A244688.P7790616622836619643

/-! ## A244688.P17392454306623454377

`A007376(abs(3*n-A016814(n)))%13`
-/

namespace A244688.P17392454306623454377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 |(3 * n : ℤ) - A016814 n|.toNat) 13

end

end A244688.P17392454306623454377

/-! ## A244688.P8187796846567863452

`A007376(A143854(n+1)+n+n)%13`
-/

namespace A244688.P8187796846567863452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A143854 (n + 1) + (n : ℤ) + (n : ℤ)).toNat) 13

end

end A244688.P8187796846567863452

/-! ## A244688.P7188299935041560156

`A007376(record[A110091(2*n)²-n])%13`
-/

namespace A244688.P7188299935041560156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110091 (2 * n) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 13

end

end A244688.P7188299935041560156

/-!
# A244690: The spiral of Champernowne read by the South-Southeast ray.

The programs for A244690, there is no canonical definition to state claims against.
-/

/-! ## A244690.P4728762245107977521

`A007376((4*n+1)²-n)`
-/

namespace A244690.P4728762245107977521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((4 * n + 1) ^ 2 - n)

end

end A244690.P4728762245107977521

/-! ## A244690.P25714363114108289

`dr(A007376(xor(1, 4*n)²-n))`
-/

namespace A244690.P25714363114108289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (Nat.xor 1 (4 * n) ^ 2 - n))

end

end A244690.P25714363114108289

/-! ## A244690.P15905913435482905314

`dr(A007376(A143839(n+1)))`
-/

namespace A244690.P15905913435482905314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A143839 (n + 1)).toNat)

end

end A244690.P15905913435482905314

/-! ## A244690.P11057074749409704484

`A007376(A016814(n)-n)%10`
-/

namespace A244690.P11057074749409704484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A016814 n - (n : ℤ)).toNat) 10

end

end A244690.P11057074749409704484

/-! ## A244690.P1037905468015965532

`dr(A007376(A033816(8*n+1)/8))`
-/

namespace A244690.P1037905468015965532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((A033816 (8 * n + 1) : ℚ) / 8)).toNat)

end

end A244690.P1037905468015965532

/-! ## A244690.P10732141149773559633

`A007318(C(2, n))*A007376(A143839(n+1))`
-/

namespace A244690.P10732141149773559633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A143839 (n + 1)).toNat

end

end A244690.P10732141149773559633

/-! ## A244690.P18422132857364852331

`A007376(A143839(n+1))^A014963(∑[n+1])`
-/

namespace A244690.P18422132857364852331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007376 (A143839 (n + 1)).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A244690.P18422132857364852331

/-! ## A244690.P9042202189674840167

`A007376(A143839(n+1))+A008683(4*(n+1))`
-/

namespace A244690.P9042202189674840167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A143839 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A244690.P9042202189674840167

/-! ## A244690.P17106254185422890525

`A000108(and(1, n-1))*A007376(A143839(n+1))`
-/

namespace A244690.P17106254185422890525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 ((n : ℤ) - 1)).toNat * A007376 (A143839 (n + 1)).toNat

end

end A244690.P17106254185422890525

/-!
# A244691: The spiral of Champernowne read by the Southeast ray.

The programs for A244691, there is no canonical definition to state claims against.
-/

/-! ## A244691.P13724412465320303662

`A007376(Δ[n²]²)`
-/

namespace A244691.P13724412465320303662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A244691.P13724412465320303662

/-! ## A244691.P10801122875386914843

`dr(A007376((2*n+1)²))`
-/

namespace A244691.P10801122875386914843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((2 * n + 1) ^ 2))

end

end A244691.P10801122875386914843

/-! ## A244691.P966054278908239322

`A007376(record[xor(1, n)²])%10`
-/

namespace A244691.P966054278908239322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) 10

end

end A244691.P966054278908239322

/-! ## A244691.P11442490412471469280

`A007376(or(1, ∑[8*n]))%10`
-/

namespace A244691.P11442490412471469280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j))) 10

end

end A244691.P11442490412471469280

/-! ## A244691.P11844338696355315830

`A007376((2*n+1)^2)%11`
-/

namespace A244691.P11844338696355315830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 ((2 * n + 1) ^ 2)) 11

end

end A244691.P11844338696355315830

/-! ## A244691.P11841501233145901733

`or(A000007(n), A007376((2*n+1)^2))`
-/

namespace A244691.P11841501233145901733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A007376 ((2 * n + 1) ^ 2))

end

end A244691.P11841501233145901733

/-! ## A244691.P2423804637081463582

`gcd(A000038(n), A007376(A016754(n)))`
-/

namespace A244691.P2423804637081463582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A007376 (A016754 n).toNat)

end

end A244691.P2423804637081463582

/-! ## A244691.P3590905998740190928

`lcm(A007376(A016754(n)), A033999(n))`
-/

namespace A244691.P3590905998740190928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007376 (A016754 n).toNat) (A033999 n)

end

end A244691.P3590905998740190928

/-! ## A244691.P7602191769330280621

`A007376(A016754(n))+A000038(n+1)`
-/

namespace A244691.P7602191769330280621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A016754 n).toNat + A000038 (n + 1)

end

end A244691.P7602191769330280621

/-! ## A244691.P9661517556387512471

`A007376(A016754(n))*A033999(2*n)`
-/

namespace A244691.P9661517556387512471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A016754 n).toNat * A033999 (2 * n)

end

end A244691.P9661517556387512471

/-! ## A244691.P151059547138398129

`A007318(C(2, n))*A007376(A016754(n))`
-/

namespace A244691.P151059547138398129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007376 (A016754 n).toNat

end

end A244691.P151059547138398129

/-! ## A244691.P18127751783026583151

`or(A007376(A016754(n)), A010051(2*(n+1)))`
-/

namespace A244691.P18127751783026583151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007376 (A016754 n).toNat) (A010051 (2 * (n + 1)))

end

end A244691.P18127751783026583151

/-! ## A244691.P11986146221864655562

`A127794(∑[n])`
-/

namespace A244691.P11986146221864655562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244691.P11986146221864655562

/-! ## A244691.P10535384644240846160

`A014963(78*(n+1))*A007376(A016754(n))`
-/

namespace A244691.P10535384644240846160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (78 * (n + 1)) * A007376 (A016754 n).toNat

end

end A244691.P10535384644240846160

/-! ## A244691.P7291055302315875265

`A127414(∑[2*n])`
-/

namespace A244691.P7291055302315875265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127414 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244691.P7291055302315875265

/-!
# A244692: The spiral of Champernowne read by the East-Southeast ray.

The programs for A244692, there is no canonical definition to state claims against.
-/

/-! ## A244692.P16044611806660050476

`A007376((1-4*n)²+n)`
-/

namespace A244692.P16044611806660050476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 ((1 - (4 * n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A244692.P16044611806660050476

/-! ## A244692.P11253130920589195349

`dr(A007376(∑[a(n-1)+32]))` with `a(0)=1, a(1)=9`
-/

namespace A244692.P11253130920589195349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  f1 (n - 1) + 32

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A244692.P11253130920589195349

/-! ## A244692.P18105741999034183122

`dr(A007376(A028994(n)+1-n))`
-/

namespace A244692.P18105741999034183122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A028994 n + (1 - (n : ℤ))).toNat)

end

end A244692.P18105741999034183122

/-! ## A244692.P363258752469773783

`dr(A007376(abs(2*n-A143856(n+1))))`
-/

namespace A244692.P363258752469773783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 |(2 * n : ℤ) - A143856 (n + 1)|.toNat)

end

end A244692.P363258752469773783

/-! ## A244692.P12162240048519862368

`dr(A007376((2*A051870(2*n)+4)/4))`
-/

namespace A244692.P12162240048519862368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (SequenceMachineLib.roundAway ((2 * A051870 (2 * n) + 4 : ℚ) / 4)).toNat)

end

end A244692.P12162240048519862368

/-! ## A244692.P3801410491868833971

`A007376(A143854(n+1)-A008592(n))%10`
-/

namespace A244692.P3801410491868833971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (A143854 (n + 1) - A008592 n).toNat) 10

end

end A244692.P3801410491868833971

/-! ## A244692.P5631402187214096003

`A007376(record[A004526(n+1)+A266724(n+1)²])%10`
-/

namespace A244692.P5631402187214096003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + A266724 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) 10

end

end A244692.P5631402187214096003

/-!
# A244693: Number of length n+4 0..n arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..n introduced in 0..n order.

The programs for A244693, there is no canonical definition to state claims against.
-/

/-! ## A244693.P8814110009851703193

`A244702((n+1)²+n²)`
-/

namespace A244693.P8814110009851703193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 ((n + 1) ^ 2 + n ^ 2)

end

end A244693.P8814110009851703193

/-! ## A244693.P12987776888596072596

`lcm((-1)^n, A244702(A001844(n)))`
-/

namespace A244693.P12987776888596072596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A244702 (A001844 n).toNat)

end

end A244693.P12987776888596072596

/-! ## A244693.P4419395031654373080

`record[gcd(A244702(n+1), A308179(n))]`
-/

namespace A244693.P4419395031654373080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A244702 (n + 1)) (A308179 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244693.P4419395031654373080

/-! ## A244693.P9623901700815715989

`A244702(A001844(n))%A265922(n+1)`
-/

namespace A244693.P9623901700815715989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244702 (A001844 n).toNat) (A265922 (n + 1))

end

end A244693.P9623901700815715989

/-!
# A244694: Number of length n+4 0..2 arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..2 introduced in 0..2 order.

The programs for A244694, there is no canonical definition to state claims against.
-/

/-! ## A244694.P3210710140134330273

`A244702(∑[n+2])`
-/

namespace A244694.P3210710140134330273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A244694.P3210710140134330273

/-! ## A244694.P11902491614419492543

`record[A244702(A000096(A004736(n+1)))]`
-/

namespace A244694.P11902491614419492543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244694.P11902491614419492543

/-! ## A244694.P1940070066778527718

`record[A244702(A000096(A307662(n+1)))]`
-/

namespace A244694.P1940070066778527718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000096 (A307662 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244694.P1940070066778527718

/-! ## A244694.P11954901503865399192

`record[A244702(A209268(n+1)+A008619(n))]`
-/

namespace A244694.P11954901503865399192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A209268 (n + 1) + A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244694.P11954901503865399192

/-! ## A244694.P5787336752459740849

`record[A244702(A233583(A209268(n+1)))]`
-/

namespace A244694.P5787336752459740849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A233583 (A209268 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244694.P5787336752459740849

/-!
# A244695: Number of length n+4 0..3 arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..3 introduced in 0..3 order.

The programs for A244695, there is no canonical definition to state claims against.
-/

/-! ## A244695.P1152378373980029166

`A244702(∑[n+3]+1)`
-/

namespace A244695.P1152378373980029166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A244695.P1152378373980029166

/-! ## A244695.P9158640600187183891

`record[A244702(A186347(n+3))]`
-/

namespace A244695.P9158640600187183891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A186347 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A244695.P9158640600187183891

/-! ## A244695.P5477545800603821937

`A244702(A034856(n+2))+A000007(n+1)`
-/

namespace A244695.P5477545800603821937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A034856 (n + 2)).toNat + A000007 (n + 1)

end

end A244695.P5477545800603821937

/-! ## A244695.P2086655706212839991

`A008836(n+1)²*A244702(A034856(n+2))`
-/

namespace A244695.P2086655706212839991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) ^ 2 * A244702 (A034856 (n + 2)).toNat

end

end A244695.P2086655706212839991

/-! ## A244695.P7473957559444248776

`A244702(A034856(n+2))+A169585(A067870(n+1))`
-/

namespace A244695.P7473957559444248776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A034856 (n + 2)).toNat + A169585 (A067870 (n + 1)).toNat

end

end A244695.P7473957559444248776

/-! ## A244695.P8757641433583951257

`A244702(A034856(n+2))+A169585(A169580(n+1))`
-/

namespace A244695.P8757641433583951257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A034856 (n + 2)).toNat + A169585 (A169580 (n + 1)).toNat

end

end A244695.P8757641433583951257

/-! ## A244695.P1633576944577575241

`A244702(A052905(n)+3)+A000007(A124773(n))`
-/

namespace A244695.P1633576944577575241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A052905 n + 3).toNat + A000007 (A124773 n).toNat

end

end A244695.P1633576944577575241

/-!
# A244696: Number of length n+4 0..4 arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..4 introduced in 0..4 order.

The programs for A244696, there is no canonical definition to state claims against.
-/

/-! ## A244696.P23427042238165485

`A244702(A027379(n+2))`
-/

namespace A244696.P23427042238165485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A027379 (n + 2)).toNat

end

end A244696.P23427042238165485

/-! ## A244696.P13402176052413233213

`A244702(A055998(n+2))`
-/

namespace A244696.P13402176052413233213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A055998 (n + 2)).toNat

end

end A244696.P13402176052413233213

/-! ## A244696.P3705023164447245784

`A244702(A155212(n)+5)`
-/

namespace A244696.P3705023164447245784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A155212 n + 5).toNat

end

end A244696.P3705023164447245784

/-! ## A244696.P13973657814281325338

`A244702(A052905(n+1)+2)`
-/

namespace A244696.P13973657814281325338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A052905 (n + 1) + 2).toNat

end

end A244696.P13973657814281325338

/-! ## A244696.P15962702084900668986

`A244702(A167499(n+3)-8)`
-/

namespace A244696.P15962702084900668986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A167499 (n + 3) - 8).toNat

end

end A244696.P15962702084900668986

/-! ## A244696.P13469278082596182192

`A244702(A122797(Δ[A023545(n+1)]))`
-/

namespace A244696.P13469278082596182192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A122797 (f1 (n + 1) - f1 n).toNat).toNat

end

end A244696.P13469278082596182192

/-! ## A244696.P3076602121396522505

`A244702(A167614(n+1)+A005408(n))`
-/

namespace A244696.P3076602121396522505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A167614 (n + 1) + A005408 n).toNat

end

end A244696.P3076602121396522505

/-!
# A244697: Number of length n+4 0..5 arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..5 introduced in 0..5 order.

The programs for A244697, there is no canonical definition to state claims against.
-/

/-! ## A244697.P9728486901922445994

`A244702(∑[n+5]+6)`
-/

namespace A244697.P9728486901922445994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A244697.P9728486901922445994

/-! ## A244697.P250619230193097167

`A244702(Δ[A023545(n+1)])%A205923(n+1)`
-/

namespace A244697.P250619230193097167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A244702 (f1 (n + 1) - f1 n).toNat) (A205923 (n + 1))

end

end A244697.P250619230193097167

/-! ## A244697.P3074923582856928860

`A244702(Δ[A023545(n+1)])+A028329(n)%2`
-/

namespace A244697.P3074923582856928860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (f1 (n + 1) - f1 n).toNat + Int.tmod (A028329 n) 2

end

end A244697.P3074923582856928860

/-! ## A244697.P4235696034524106779

`A153881(n+2)+A244702(Δ[A023545(n+1)])+1`
-/

namespace A244697.P4235696034524106779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + (A244702 (f1 (n + 1) - f1 n).toNat + 1)

end

end A244697.P4235696034524106779

/-! ## A244697.P10104988542899141402

`A244702(Δ[A023545(n+1)])+A052481(n+1)%2`
-/

namespace A244697.P10104988542899141402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (f1 (n + 1) - f1 n).toNat + Int.tmod (A052481 (n + 1)) 2

end

end A244697.P10104988542899141402

/-! ## A244697.P4970797805649190554

`A244702(Δ[A023545(n+1)])+A087505(n+1)%2`
-/

namespace A244697.P4970797805649190554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (f1 (n + 1) - f1 n).toNat + Int.tmod (A087505 (n + 1)) 2

end

end A244697.P4970797805649190554

/-!
# A244698: Number of length n+4 0..6 arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..6 introduced in 0..6 order.

The programs for A244698, there is no canonical definition to state claims against.
-/

/-! ## A244698.P13375302702237695743

`A244702(A052905(n+3))`
-/

namespace A244698.P13375302702237695743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A052905 (n + 3)).toNat

end

end A244698.P13375302702237695743

/-! ## A244698.P17473439643504932158

`A244702(A055999(n+3)+1)`
-/

namespace A244698.P17473439643504932158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A055999 (n + 3) + 1).toNat

end

end A244698.P17473439643504932158

/-! ## A244698.P2385466847513234966

`A244702(A000124(n+6)-6)`
-/

namespace A244698.P2385466847513234966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000124 (n + 6) - 6).toNat

end

end A244698.P2385466847513234966

/-! ## A244698.P1853316554906075702

`A244702(A167614(n+5)-8)`
-/

namespace A244698.P1853316554906075702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A167614 (n + 5) - 8).toNat

end

end A244698.P1853316554906075702

/-! ## A244698.P15290325992595875772

`A244702(Δ[A023545(n+2)]-1)`
-/

namespace A244698.P15290325992595875772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (f1 (n + 1) - f1 n - 1).toNat

end

end A244698.P15290325992595875772

/-! ## A244698.P17595864770538477406

`A244702(A000217(n+7)-(n+12))`
-/

namespace A244698.P17595864770538477406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000217 (n + 7) - (n + 12 : ℤ)).toNat

end

end A244698.P17595864770538477406

/-!
# A244699: Number of length n+4 0..7 arrays with no five consecutive elements with pattern ababa or abbba (with a!=b) and new values 0..7 introduced in 0..7 order.

The programs for A244699, there is no canonical definition to state claims against.
-/

/-! ## A244699.P2363132927451233666

`A244702(A055999(n+4))`
-/

namespace A244699.P2363132927451233666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A055999 (n + 4)).toNat

end

end A244699.P2363132927451233666

/-! ## A244699.P2527447439495190094

`A244702(A000217(n+6)+n+1)`
-/

namespace A244699.P2527447439495190094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A244699.P2527447439495190094

/-! ## A244699.P2944244659593832350

`A244702(A133263(n+6)+A023443(n))`
-/

namespace A244699.P2944244659593832350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A133263 (n + 6) + A023443 n).toNat

end

end A244699.P2944244659593832350

/-! ## A244699.P492541200480732634

`A244702(A167614(n+3)+A008585(n+3))`
-/

namespace A244699.P492541200480732634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A167614 (n + 3) + A008585 (n + 3)).toNat

end

end A244699.P492541200480732634

/-! ## A244699.P16044389703339623340

`A244702(A005408(n)+A145018(n+6)+2)`
-/

namespace A244699.P16044389703339623340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244702 (A005408 n + (A145018 (n + 6) + 2)).toNat

end

end A244699.P16044389703339623340

