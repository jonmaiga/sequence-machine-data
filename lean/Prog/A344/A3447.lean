import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A344700: Numbers k for which A306927(k) [= A001615(k)-k] is a multiple of A344705(k) [= A001615(k)-A001065(k)], and their quotient is nonnegative.

The programs for A344700, there is no canonical definition to state claims against.
-/

/-! ## A344700.P1260035701744148362

`eq[A344704(n+1), A344705(n+1)]+1`
-/

namespace A344700.P1260035701744148362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344705 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A344700.P1260035701744148362

/-! ## A344700.P15429841813918435158

`∪[A000396(n+1), A293869(A049629(n))]`
-/

namespace A344700.P15429841813918435158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A049629 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344700.P15429841813918435158

/-!
# A344701: Positions of records in A344698.

The programs for A344701, there is no canonical definition to state claims against.
-/

/-! ## A344701.P9394152118895543114

`record[(A363944(n+1)+A151552(n))²]`
-/

namespace A344701.P9394152118895543114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A363944 (n + 1) + A151552 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344701.P9394152118895543114

/-! ## A344701.P11392388603508188707

`lt[A319071(n), A319081(n)]²`
-/

namespace A344701.P11392388603508188707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319071 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A344701.P11392388603508188707

/-! ## A344701.P4712814467967899558

`lt[A353851(n), A110639(3*n)]²`
-/

namespace A344701.P4712814467967899558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353851 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110639 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n ^ 2

end

end A344701.P4712814467967899558

/-! ## A344701.P3222111310886020971

`(A027193(n+1)-A260794(n+3))²`
-/

namespace A344701.P3222111310886020971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A027193 (n + 1) - A260794 (n + 3)) ^ 2

end

end A344701.P3222111310886020971

/-! ## A344701.P6605778911529027513

`lt[Δ[ceil(n²/24)], A050326(2*n+1)]²`
-/

namespace A344701.P6605778911529027513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 24⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n ^ 2

end

end A344701.P6605778911529027513

/-!
# A344702: Positions k where A344695(k) is not multiplicative.

The programs for A344702, there is no canonical definition to state claims against.
-/

/-! ## A344702.P11450217500402391923

`record[A286708(A108755(n+5))]`
-/

namespace A344702.P11450217500402391923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (A108755 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344702.P11450217500402391923

/-!
# A344703: Numbers k for which sigma(k^2) and psi(k^2) share a factor, where sigma is the sum of divisors, A000203, and psi is the Dedekind psi function, A001615.

The programs for A344703, there is no canonical definition to state claims against.
-/

/-! ## A344703.P11617068023619895404

`lt[1, A344695(A028310(n)²)]`
-/

namespace A344703.P11617068023619895404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344695 (A028310 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344703.P11617068023619895404

/-!
# A344704: a(n) = gcd(A001615(n)-n, sigma(n)-(A001615(n)+n)).

The programs for A344704, the canonical program `A344704.P7153165842392398829` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344704 has offset 1).

The definition of A344704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344704.P7153165842392398829

`gcd(2*(n+1)-∑{d}[n+1, #], ∑{d}[∏{p}[n+1, #], (n+1)/#]-(n+1))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344704

/-- `gcd(2*(n+1)-∑{d}[n+1, #], ∑{d}[∏{p}[n+1, #], (n+1)/#]-(n+1))` -/
def P7153165842392398829.Spec : Prop :=
  ∀ n, (P7153165842392398829.a n : ℤ) = A344704 (n + 1)

theorem P7153165842392398829.correct : P7153165842392398829.Spec := by
  intro n
  simp only [A344704, Nat.add_sub_cancel]

end A344704

/-! ## A344704.P18029967799608721648

`gcd(A033879(n+1), A306927(n+1))`
-/

namespace A344704.P18029967799608721648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033879 (n + 1)) (A306927 (n + 1))

end

end A344704.P18029967799608721648

namespace A344704

/-- `gcd(A033879(n+1), A306927(n+1))` -/
def P18029967799608721648.Spec : Prop :=
  ∀ n, (P18029967799608721648.a n : ℤ) = A344704 (n + 1)

end A344704

/-! ## A344704.P9359535156914268019

`gcd(A033880(n+1), A344705(n+1))`
-/

namespace A344704.P9359535156914268019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 1)) (A344705 (n + 1))

end

end A344704.P9359535156914268019

namespace A344704

/-- `gcd(A033880(n+1), A344705(n+1))` -/
def P9359535156914268019.Spec : Prop :=
  ∀ n, (P9359535156914268019.a n : ℤ) = A344704 (n + 1)

end A344704

/-! ## A344704.P8264030494837109011

`gcd(2*n+1-A039653(n+1), abs(A344705(n+1)))`
-/

namespace A344704.P8264030494837109011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n + 1 : ℤ) - A039653 (n + 1)) |A344705 (n + 1)|

end

end A344704.P8264030494837109011

namespace A344704

/-- `gcd(2*n+1-A039653(n+1), abs(A344705(n+1)))` -/
def P8264030494837109011.Spec : Prop :=
  ∀ n, (P8264030494837109011.a n : ℤ) = A344704 (n + 1)

end A344704

/-! ## A344704.P744359435420468607

`gcd(-A344705(n+1), A306927(A000027(n+1)))`
-/

namespace A344704.P744359435420468607
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A344705 (n + 1)) (A306927 (A000027 (n + 1)).toNat)

end

end A344704.P744359435420468607

namespace A344704

/-- `gcd(-A344705(n+1), A306927(A000027(n+1)))` -/
def P744359435420468607.Spec : Prop :=
  ∀ n, (P744359435420468607.a n : ℤ) = A344704 (n + 1)

end A344704

/-! ## A344704.P5074729313004941169

`and(A004767(A333854(n+1)), A009194(n+1))`
-/

namespace A344704.P5074729313004941169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004767 (A333854 (n + 1)).toNat) (A009194 (n + 1))

end

end A344704.P5074729313004941169

namespace A344704

/-- `and(A004767(A333854(n+1)), A009194(n+1))` -/
def P5074729313004941169.Spec : Prop :=
  ∀ n, P5074729313004941169.a n = A344704 (n + 1)

end A344704

/-! ## A344704.P9525131488358641891

`and(A009194(n+1), A045535(A134225(n+1)))`
-/

namespace A344704.P9525131488358641891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A009194 (n + 1)) (A045535 (A134225 (n + 1)).toNat)

end

end A344704.P9525131488358641891

namespace A344704

/-- `and(A009194(n+1), A045535(A134225(n+1)))` -/
def P9525131488358641891.Spec : Prop :=
  ∀ n, P9525131488358641891.a n = A344704 (n + 1)

end A344704

/-!
# A344705: a(n) = n + A001615(n) - sigma(n), where A001615 is the Dedekind psi-function, and sigma(n) gives the sum of divisors of n; difference between psi and the sum of proper divisors.

The programs for A344705, the canonical program `A344705.P11814210103337563169` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344705 has offset 1).

The definition of A344705 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033879, A306927, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344705.P11814210103337563169

`A033879(n+1)+A306927(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344705

/-- `A033879(n+1)+A306927(n+1)` -/
def P11814210103337563169.Spec : Prop :=
  ∀ n, P11814210103337563169.a n = A344705 (n + 1)

theorem P11814210103337563169.correct : P11814210103337563169.Spec := by
  intro n
  simp only [A344705, Nat.add_sub_cancel]

end A344705

/-! ## A344705.P18297753619471013341

`A001615(n+1)-A001065(n+1)`
-/

namespace A344705.P18297753619471013341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - A001065 (n + 1)

end

end A344705.P18297753619471013341

namespace A344705

/-- `A001615(n+1)-A001065(n+1)` -/
def P18297753619471013341.Spec : Prop :=
  ∀ n, P18297753619471013341.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P17447616910036326457

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]-(∑{d}[n+1, #]-(n+1))`
-/

namespace A344705.P17447616910036326457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ) - (((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ) - (n + 1 : ℤ) : ℚ)

end

end A344705.P17447616910036326457

namespace A344705

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]-(∑{d}[n+1, #]-(n+1))` -/
def P17447616910036326457.Spec : Prop :=
  ∀ n, P17447616910036326457.a n = (A344705 (n + 1) : ℚ)

end A344705

/-! ## A344705.P2407523744102936071

`1-A244963(n+1)+n`
-/

namespace A344705.P2407523744102936071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A244963 (n + 1) + (n : ℤ)

end

end A344705.P2407523744102936071

namespace A344705

/-- `1-A244963(n+1)+n` -/
def P2407523744102936071.Spec : Prop :=
  ∀ n, P2407523744102936071.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P16963349085967764902

`1-∑{d}[n+1, A063658(#)]+n`
-/

namespace A344705.P16963349085967764902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A063658 d + (n : ℤ)

end

end A344705.P16963349085967764902

namespace A344705

/-- `1-∑{d}[n+1, A063658(#)]+n` -/
def P16963349085967764902.Spec : Prop :=
  ∀ n, P16963349085967764902.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P13644190192111596436

`A306927(n+1)-A033880(n+1)`
-/

namespace A344705.P13644190192111596436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (n + 1) - A033880 (n + 1)

end

end A344705.P13644190192111596436

namespace A344705

/-- `A306927(n+1)-A033880(n+1)` -/
def P13644190192111596436.Spec : Prop :=
  ∀ n, P13644190192111596436.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P9553075285363661691

`A292786(n+1)-A228947(n+1)`
-/

namespace A344705.P9553075285363661691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292786 (n + 1) - A228947 (n + 1)

end

end A344705.P9553075285363661691

namespace A344705

/-- `A292786(n+1)-A228947(n+1)` -/
def P9553075285363661691.Spec : Prop :=
  ∀ n, P9553075285363661691.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P18408212409812749855

`A001615(n+1)+n+1-A000203(n+1)`
-/

namespace A344705.P18408212409812749855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + ((n + 1 : ℤ) - A000203 (n + 1))

end

end A344705.P18408212409812749855

namespace A344705

/-- `A001615(n+1)+n+1-A000203(n+1)` -/
def P18408212409812749855.Spec : Prop :=
  ∀ n, P18408212409812749855.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P2435045849170162552

`A001615(n+1)-(A325313(n+1)+A162296(n+1))`
-/

namespace A344705.P2435045849170162552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - (A325313 (n + 1) + A162296 (n + 1))

end

end A344705.P2435045849170162552

namespace A344705

/-- `A001615(n+1)-(A325313(n+1)+A162296(n+1))` -/
def P2435045849170162552.Spec : Prop :=
  ∀ n, P2435045849170162552.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P6287379328855679113

`A291784(n+1)+A318320(n+1)-A001065(n+1)`
-/

namespace A344705.P6287379328855679113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) + (A318320 (n + 1) - A001065 (n + 1))

end

end A344705.P6287379328855679113

namespace A344705

/-- `A291784(n+1)+A318320(n+1)-A001065(n+1)` -/
def P6287379328855679113.Spec : Prop :=
  ∀ n, P6287379328855679113.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P10653483555190451391

`A001615(n+1)+A306927(n+1)-A344753(n+1)`
-/

namespace A344705.P10653483555190451391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + (A306927 (n + 1) - A344753 (n + 1))

end

end A344705.P10653483555190451391

namespace A344705

/-- `A001615(n+1)+A306927(n+1)-A344753(n+1)` -/
def P10653483555190451391.Spec : Prop :=
  ∀ n, P10653483555190451391.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P4968548759666474579

`A003557(n+1)*A048250(n+1)-A001065(n+1)`
-/

namespace A344705.P4968548759666474579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1) - A001065 (n + 1)

end

end A344705.P4968548759666474579

namespace A344705

/-- `A003557(n+1)*A048250(n+1)-A001065(n+1)` -/
def P4968548759666474579.Spec : Prop :=
  ∀ n, P4968548759666474579.a n = A344705 (n + 1)

end A344705

/-! ## A344705.P13365931402916096732

`A007434(n+1)/A000010(n+1)-A001065(n+1)`
-/

namespace A344705.P13365931402916096732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) - (A001065 (n + 1) : ℚ)

end

end A344705.P13365931402916096732

namespace A344705

/-- `A007434(n+1)/A000010(n+1)-A001065(n+1)` -/
def P13365931402916096732.Spec : Prop :=
  ∀ n, P13365931402916096732.a n = (A344705 (n + 1) : ℚ)

end A344705

/-!
# A344706: Odd squarefree numbers k such that the expansion of the inverse of the k-th cyclotomic polynomial has a coefficient other than -1, 0 or 1.

The programs for A344706, there is no canonical definition to state claims against.
-/

/-! ## A344706.P10707307976361810686

`filter[A344673(n+1), A323239(#)]`
-/

namespace A344706.P10707307976361810686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A344706.P10707307976361810686

/-! ## A344706.P17105908989259596728

`∩[A344673(n+1), A392008(n+1)]`
-/

namespace A344706.P17105908989259596728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344706.P17105908989259596728

/-! ## A344706.P8411192134340518384

`record[A076109(A344673(n+1))]`
-/

namespace A344706.P8411192134340518384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076109 (A344673 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344706.P8411192134340518384

/-! ## A344706.P15266673464927015293

`A344673(∑[A309861(n)!])`
-/

namespace A344706.P15266673464927015293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A309861 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344706.P15266673464927015293

/-!
# A344707: Number of partitions of the n-th triangular number n*(n+1)/2 into a triangular number of triangular parts.

The programs for A344707, there is no canonical definition to state claims against.
-/

/-! ## A344707.P15536818115694185552

`A339444(∑[n])`
-/

namespace A344707.P15536818115694185552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339444 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344707.P15536818115694185552

/-! ## A344707.P17065696353140815488

`and(-1, A339444(C(n+1, 2)))`
-/

namespace A344707.P17065696353140815488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A339444 (Nat.choose (n + 1) 2))

end

end A344707.P17065696353140815488

/-! ## A344707.P8266930074219476911

`and(-1, A339444((n²+n)/2))`
-/

namespace A344707.P8266930074219476911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A339444 (SequenceMachineLib.roundAway ((n ^ 2 + n : ℚ) / 2)).toNat)

end

end A344707.P8266930074219476911

/-! ## A344707.P9862288899689578977

`A339444(C(n+1, 2))+A184955(n)`
-/

namespace A344707.P9862288899689578977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339444 (Nat.choose (n + 1) 2) + A184955 n

end

end A344707.P9862288899689578977

/-! ## A344707.P748215136631738277

`gcd(C(2, n+1), A339444(A000217(n)))`
-/

namespace A344707.P748215136631738277
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 (n + 1) : ℤ) (A339444 (A000217 n).toNat)

end

end A344707.P748215136631738277

/-!
# A344708: Number of partitions of n^2 into a square number of square parts.

The programs for A344708, there is no canonical definition to state claims against.
-/

/-! ## A344708.P16006228339709295657

`A339445(n²)`
-/

namespace A344708.P16006228339709295657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339445 (n ^ 2)

end

end A344708.P16006228339709295657

/-! ## A344708.P5624056656144922394

`and(A255047(n), A339445(A000290(n)))`
-/

namespace A344708.P5624056656144922394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A255047 n) (A339445 (A000290 n).toNat)

end

end A344708.P5624056656144922394

/-! ## A344708.P1467652929296331182

`A339445(A000290(n))+A000007(n+4)`
-/

namespace A344708.P1467652929296331182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339445 (A000290 n).toNat + A000007 (n + 4)

end

end A344708.P1467652929296331182

/-! ## A344708.P12462782403591039062

`A339445(A000290(n))+char[A324404(n+1)]`
-/

namespace A344708.P12462782403591039062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324404 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339445 (A000290 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344708.P12462782403591039062

/-! ## A344708.P4216250484825002446

`A339445(A000290(n))+char[A077705(n+3)]`
-/

namespace A344708.P4216250484825002446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077705 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339445 (A000290 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344708.P4216250484825002446

/-! ## A344708.P1956518031737098283

`A339445(A000290(n))+char[A092562(n+4)]`
-/

namespace A344708.P1956518031737098283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092562 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339445 (A000290 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344708.P1956518031737098283

/-! ## A344708.P2307605605239270498

`A339445(A000290(n))+char[A032094(n+13)]`
-/

namespace A344708.P2307605605239270498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032094 (n + 13)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339445 (A000290 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A344708.P2307605605239270498

/-! ## A344708.P14107351852948980880

`A339445(A000290(n))^A080940(2*n+1)`
-/

namespace A344708.P14107351852948980880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339445 (A000290 n).toNat : ℚ) ^ (A080940 (2 * n + 1) : ℤ)

end

end A344708.P14107351852948980880

/-! ## A344708.P5214053658061380353

`A339445(A000290(n))^(A248981(n+1)%2)`
-/

namespace A344708.P5214053658061380353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339445 (A000290 n).toNat : ℚ) ^ (Int.tmod (A248981 (n + 1)) 2 : ℤ)

end

end A344708.P5214053658061380353

/-!
# A344709: Terms of A343376 that are divisible by their indices.

The programs for A344709, there is no canonical definition to state claims against.
-/

/-! ## A344709.P15587955373096566385

`A343376(A343456(n+1))`
-/

namespace A344709.P15587955373096566385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343376 (A343456 (n + 1)).toNat

end

end A344709.P15587955373096566385

/-! ## A344709.P2441819162202382411

`A343376(∑[A344712(n)]-1)`
-/

namespace A344709.P2441819162202382411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344712 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343376 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A344709.P2441819162202382411

/-! ## A344709.P2420652035142334061

`A343456(n+1)*A343457(n+1)`
-/

namespace A344709.P2420652035142334061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343456 (n + 1) * A343457 (n + 1)

end

end A344709.P2420652035142334061

/-! ## A344709.P3931746893900772019

`A343376(∑[A344712(n)/A054977(n)])`
-/

namespace A344709.P3931746893900772019
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344712 n : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343376 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344709.P3931746893900772019

/-! ## A344709.P3944001406095973171

`A343376(∑[A344712(n)/A014963(4*n+2)])`
-/

namespace A344709.P3944001406095973171
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344712 n : ℚ) / (A014963 (4 * n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343376 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344709.P3944001406095973171

/-!
# A344711: a(n) = Sum_{k=1..n} (A000330(n) mod k^2).

The programs for A344711, there is no canonical definition to state claims against.
-/

/-! ## A344711.P8850745980165430236

`A057710(A057698(2*n+5))%A014950(n+1)`
-/

namespace A344711.P8850745980165430236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057710 (A057698 (2 * n + 5)).toNat) (A014950 (n + 1))

end

end A344711.P8850745980165430236

/-!
# A344713: a(n) is the number of iterations needed for n to reach 0 under the mapping x -> A055212(x).

The programs for A344713, there is no canonical definition to state claims against.
-/

/-! ## A344713.P10573109713568399709

`A292585(∏{e}[n+1, #+1]-∑{p}[n+1, gcd(n, #)])`
-/

namespace A344713.P10573109713568399709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292585 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) - ∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p)

end

end A344713.P10573109713568399709

/-! ## A344713.P12051002941805783644

`A292585(A033273(n+1))`
-/

namespace A344713.P12051002941805783644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292585 (A033273 (n + 1)).toNat

end

end A344713.P12051002941805783644

/-! ## A344713.P16819769148678687984

`A057226(A351348(n+1))`
-/

namespace A344713.P16819769148678687984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057226 (A351348 (n + 1)).toNat

end

end A344713.P16819769148678687984

/-! ## A344713.P17305439917734028444

`A062843(A033273(n+1)²)`
-/

namespace A344713.P17305439917734028444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062843 (A033273 (n + 1) ^ 2).toNat

end

end A344713.P17305439917734028444

/-! ## A344713.P6591620058486805077

`A297770(A033273(n+1)²)`
-/

namespace A344713.P6591620058486805077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A033273 (n + 1) ^ 2).toNat

end

end A344713.P6591620058486805077

/-! ## A344713.P7968585098699757128

`A055980(∑{digits}[A002033(n)², #])`
-/

namespace A344713.P7968585098699757128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055980 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A344713.P7968585098699757128

/-! ## A344713.P13704797612147281135

`A292585(A055212(n+1)+1)`
-/

namespace A344713.P13704797612147281135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292585 (A055212 (n + 1) + 1).toNat

end

end A344713.P13704797612147281135

/-! ## A344713.P399859473771563277

`A184956(A055212(n+1)+6)`
-/

namespace A344713.P399859473771563277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184956 (A055212 (n + 1) + 6).toNat

end

end A344713.P399859473771563277

/-! ## A344713.P11783021029349011364

`A001221(11*A296119(n+1))`
-/

namespace A344713.P11783021029349011364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (11 * A296119 (n + 1)).toNat

end

end A344713.P11783021029349011364

/-! ## A344713.P17388528991812792511

`A001221(lcm(11, A296119(n+1)))`
-/

namespace A344713.P17388528991812792511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm 11 (A296119 (n + 1)))

end

end A344713.P17388528991812792511

/-! ## A344713.P16121027370413430168

`A001222(∏{p}[11*A296119(n+1), #])`
-/

namespace A344713.P16121027370413430168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A296119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A344713.P16121027370413430168

/-! ## A344713.P15041815440445335158

`A001222(lcm(2, ∏{e}[n+1, A175089(#)]))`
-/

namespace A344713.P15041815440445335158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 2 (∏ p ∈ Nat.primeFactors (f1 n), A175089 (Nat.factorization (f1 n) p)))

end

end A344713.P15041815440445335158

/-! ## A344713.P3706732891512733918

`dr(A085217(A004159(A002033(n))))`
-/

namespace A344713.P3706732891512733918
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A085217 (A004159 (A002033 n).toNat).toNat)

end

end A344713.P3706732891512733918

/-! ## A344713.P5685630042388995401

`A001221(A000143(A034836(n+1)))`
-/

namespace A344713.P5685630042388995401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000143 (A034836 (n + 1)).toNat).toNat

end

end A344713.P5685630042388995401

/-! ## A344713.P14958611182652865135

`A006530(A187941(A055212(n+1)))`
-/

namespace A344713.P14958611182652865135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A187941 (A055212 (n + 1)).toNat).toNat

end

end A344713.P14958611182652865135

/-! ## A344713.P988865954303597003

`A059896(A134478(A319685(n+1)))`
-/

namespace A344713.P988865954303597003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059896 (A134478 (A319685 (n + 1)).toNat).toNat

end

end A344713.P988865954303597003

/-! ## A344713.P11534881043437847340

`A001221(A090423(A002033(n))-3)`
-/

namespace A344713.P11534881043437847340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A090423 (A002033 n).toNat - 3).toNat

end

end A344713.P11534881043437847340

/-! ## A344713.P1264658018388780006

`A001221(A007094(or(1, A074206(n+1))))+1`
-/

namespace A344713.P1264658018388780006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007094 (Int.lor 1 (A074206 (n + 1))).toNat).toNat + 1

end

end A344713.P1264658018388780006

/-! ## A344713.P7346007232139836077

`A001221((A342086(n+1)+2)*A342086(n+1))`
-/

namespace A344713.P7346007232139836077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A342086 (n + 1) + 2) * A342086 (n + 1)).toNat

end

end A344713.P7346007232139836077

/-! ## A344713.P8459551279615231747

`A000005(A000005(A058084(A033273(n+1))+1))`
-/

namespace A344713.P8459551279615231747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A058084 (A033273 (n + 1)).toNat + 1).toNat).toNat

end

end A344713.P8459551279615231747

/-!
# A344714: Numbers k such that A008477(k) > k.

The programs for A344714, the canonical program `A344714.P9250157481973261528` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344714 has offset 1).

The definition of A344714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344714.P9250157481973261528

`lt[n+1, A008477(n+1)]+1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344714

/-- `lt[n+1, A008477(n+1)]+1` -/
def P9250157481973261528.Spec : Prop :=
  ∀ n, (P9250157481973261528.a n : ℤ) = A344714 (n + 1)

theorem P9250157481973261528.correct : P9250157481973261528.Spec := by
  intro n
  simp only [A344714, Nat.add_sub_cancel]

end A344714

/-! ## A344714.P12716408870291191592

`A065475(lt[n+1, A008477(n+1)])`
-/

namespace A344714.P12716408870291191592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A344714.P12716408870291191592

namespace A344714

/-- `A065475(lt[n+1, A008477(n+1)])` -/
def P12716408870291191592.Spec : Prop :=
  ∀ n, P12716408870291191592.a n = A344714 (n + 1)

end A344714

/-! ## A344714.P10656251114192297919

`lt[A028310(n), A008477(A028310(n))]`
-/

namespace A344714.P10656251114192297919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008477 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344714.P10656251114192297919

namespace A344714

/-- `lt[A028310(n), A008477(A028310(n))]` -/
def P10656251114192297919.Spec : Prop :=
  ∀ n, (P10656251114192297919.a n : ℤ) = A344714 (n + 1)

end A344714

/-!
# A344717: a(n) = (3n - 9/2 - 1/n + 6/(n+1))*binomial(2n-2,n-1).

The programs for A344717, the canonical program `A344717.P7261977043513756479` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344717 has offset 2).

The definition of A344717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 163 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344717.P7261977043513756479

`A001791(n+1)+Δ[A002737(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344717

/-- `A001791(n+1)+Δ[A002737(n)]` -/
def P7261977043513756479.Spec : Prop :=
  ∀ n, P7261977043513756479.a n = A344717 (n + 2)

theorem P7261977043513756479.correct : P7261977043513756479.Spec := by
  intro n
  simp only [A344717, Nat.add_sub_cancel]

end A344717

/-! ## A344717.P104315737937250382

`Δ[A191522(2*n+3)-A024718(n)]`
-/

namespace A344717.P104315737937250382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 (2 * n + 3) - A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344717.P104315737937250382

namespace A344717

/-- `Δ[A191522(2*n+3)-A024718(n)]` -/
def P104315737937250382.Spec : Prop :=
  ∀ n, P104315737937250382.a n = A344717 (n + 2)

end A344717

/-! ## A344717.P5504045125840540066

`Δ[A191522(2*n+3)]-A210736(2*(n+1))`
-/

namespace A344717.P5504045125840540066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A210736 (2 * (n + 1))

end

end A344717.P5504045125840540066

namespace A344717

/-- `Δ[A191522(2*n+3)]-A210736(2*(n+1))` -/
def P5504045125840540066.Spec : Prop :=
  ∀ n, P5504045125840540066.a n = A344717 (n + 2)

end A344717

/-!
# A344718: Divide the positive integers into subsets of lengths given by successive primes. a(n) is the sum of primes contained in the n-th subset.

The programs for A344718, there is no canonical definition to state claims against.
-/

/-! ## A344718.P16342054557171939295

`Δ[A034387(record[A160793(n+1)])]`
-/

namespace A344718.P16342054557171939295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344718.P16342054557171939295

/-! ## A344718.P608239257747708616

`Δ[A158662(record[A160793(n+1)])]`
-/

namespace A344718.P608239257747708616
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344718.P608239257747708616

/-! ## A344718.P12995172621164590859

`Δ[A034387(A007504(n)+A000007(n))]`
-/

namespace A344718.P12995172621164590859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A007504 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344718.P12995172621164590859

/-! ## A344718.P3913745149297960876

`Δ[A034387(A059841(n)+A007504(n))]`
-/

namespace A344718.P3913745149297960876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (A059841 n + A007504 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344718.P3913745149297960876

/-! ## A344718.P11813361256621579248

`Δ[A158662(A007504(n)+A000007(n))]`
-/

namespace A344718.P11813361256621579248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158662 (A007504 n + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A344718.P11813361256621579248

/-!
# A344719: Minimum number of cells in an n X n grid that need to be painted so that each unpainted cell is orthogonally adjacent to exactly two painted cells.

The programs for A344719, there is no canonical definition to state claims against.
-/

/-! ## A344719.P11949297836338157562

`A008612(∑[A311356(n)+6])`
-/

namespace A344719.P11949297836338157562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311356 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344719.P11949297836338157562

/-! ## A344719.P7087797045305618819

`A285759(∑[A278055(2*n+1)])`
-/

namespace A344719.P7087797045305618819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278055 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285759 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344719.P7087797045305618819

/-! ## A344719.P1871104883387467627

`A195172(∑[A140397(n+1)+n])`
-/

namespace A344719.P1871104883387467627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140397 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195172 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344719.P1871104883387467627

/-! ## A344719.P2914346008048819822

`char[5]+A004524(A006578(n))+n+1`
-/

namespace A344719.P2914346008048819822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A004524 (A006578 n).toNat + (n + 1 : ℤ))

end

end A344719.P2914346008048819822

/-! ## A344719.P707216573480125564

`∑[A001961(A140397(n+1)+A005206(n))]`
-/

namespace A344719.P707216573480125564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001961 (A140397 (n + 1) + A005206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344719.P707216573480125564

/-!
# A344720: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/k)^2.

The programs for A344720, the canonical program `A344720.P5143817129039334171` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344720 has offset 1).

The definition of A344720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344720.P16653908886583698769

`∑[A000203(n+1)-A325940(n+1)]`
-/

namespace A344720.P16653908886583698769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A325940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344720.P16653908886583698769

namespace A344720

/-- `∑[A000203(n+1)-A325940(n+1)]` -/
def P16653908886583698769.Spec : Prop :=
  ∀ n, P16653908886583698769.a n = A344720 (n + 1)

end A344720

/-! ## A344720.P9321997722818944299

`∑[2*A000593(n+1)-A048272(n+1)]`
-/

namespace A344720.P9321997722818944299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000593 (n + 1) - A048272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344720.P9321997722818944299

namespace A344720

/-- `∑[2*A000593(n+1)-A048272(n+1)]` -/
def P9321997722818944299.Spec : Prop :=
  ∀ n, P9321997722818944299.a n = A344720 (n + 1)

end A344720

/-! ## A344720.P17572936303708606338

`A078471(n+1)+A078471(n+1)-A059851(n+1)`
-/

namespace A344720.P17572936303708606338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078471 (n + 1) + (A078471 (n + 1) - A059851 (n + 1))

end

end A344720.P17572936303708606338

namespace A344720

/-- `A078471(n+1)+A078471(n+1)-A059851(n+1)` -/
def P17572936303708606338.Spec : Prop :=
  ∀ n, P17572936303708606338.a n = A344720 (n + 1)

end A344720

/-! ## A344720.P5143817129039334171

`∑[∑{d}[n+1, A266072(#)]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A344720

/-- `∑[∑{d}[n+1, A266072(#)]]` -/
def P5143817129039334171.Spec : Prop :=
  ∀ n, P5143817129039334171.a n = A344720 (n + 1)

theorem P5143817129039334171.correct : P5143817129039334171.Spec := by
  intro n
  simp only [A344720, Nat.add_sub_cancel]

end A344720

/-! ## A344720.P10757073953154474307

`∑[∑{d}[n+1, A014681(#)-A097141(#)]]`
-/

namespace A344720.P10757073953154474307
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (A014681 d - A097141 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344720.P10757073953154474307

namespace A344720

/-- `∑[∑{d}[n+1, A014681(#)-A097141(#)]]` -/
def P10757073953154474307.Spec : Prop :=
  ∀ n, P10757073953154474307.a n = A344720 (n + 1)

end A344720

/-! ## A344720.P12337058404084013334

`A344726(∑[n+2])`
-/

namespace A344720.P12337058404084013334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A344720.P12337058404084013334

namespace A344720

/-- `A344726(∑[n+2])` -/
def P12337058404084013334.Spec : Prop :=
  ∀ n, P12337058404084013334.a n = A344720 (n + 1)

end A344720

/-!
# A344721: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/k)^3.

The programs for A344721, there is no canonical definition to state claims against.
-/

/-! ## A344721.P8491817923788685322

`2*A350144(n+1)-A318742(n+1)`
-/

namespace A344721.P8491817923788685322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350144 (n + 1) - A318742 (n + 1)

end

end A344721.P8491817923788685322

/-! ## A344721.P3843572223478912980

`A344726(∑[n+3]+1)`
-/

namespace A344721.P3843572223478912980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A344721.P3843572223478912980

/-! ## A344721.P1427596356557120208

`record[A344726(A034856(A137735(n)))]`
-/

namespace A344721.P1427596356557120208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A034856 (A137735 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344721.P1427596356557120208

/-! ## A344721.P17392475309003145040

`A344726(Δ[A008778(n)])%A201960(n+1)`
-/

namespace A344721.P17392475309003145040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344726 (f1 (n + 1) - f1 n).toNat) (A201960 (n + 1))

end

end A344721.P17392475309003145040

/-! ## A344721.P8827609524762529421

`A344726(A055998(n+1)+1)%A063262(n)`
-/

namespace A344721.P8827609524762529421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344726 (A055998 (n + 1) + 1).toNat) (A063262 n)

end

end A344721.P8827609524762529421

/-!
# A344722: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/k)^4.

The programs for A344722, there is no canonical definition to state claims against.
-/

/-! ## A344722.P13284343691178580529

`A344726(A027379(n+2))`
-/

namespace A344722.P13284343691178580529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A027379 (n + 2)).toNat

end

end A344722.P13284343691178580529

/-! ## A344722.P3756761572674136720

`A344726(A055998(n+2))`
-/

namespace A344722.P3756761572674136720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A055998 (n + 2)).toNat

end

end A344722.P3756761572674136720

/-! ## A344722.P13579092030575614434

`A344726(A056000(n)+7)`
-/

namespace A344722.P13579092030575614434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A056000 n + 7).toNat

end

end A344722.P13579092030575614434

/-! ## A344722.P17545675849639223286

`A344726(Δ[A008778(n+1)]-1)`
-/

namespace A344722.P17545675849639223286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (f1 (n + 1) - f1 n - 1).toNat

end

end A344722.P17545675849639223286

/-! ## A344722.P641484528572238597

`record[A344726(A055998(A286543(n)))]`
-/

namespace A344722.P641484528572238597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A055998 (A286543 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344722.P641484528572238597

/-! ## A344722.P2276951138438365756

`A344726(A167614(n+1)+A005408(n))`
-/

namespace A344722.P2276951138438365756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A167614 (n + 1) + A005408 n).toNat

end

end A344722.P2276951138438365756

/-!
# A344723: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/k)^5.

The programs for A344723, there is no canonical definition to state claims against.
-/

/-! ## A344723.P793193362512034014

`A344726(A046691(n+3))`
-/

namespace A344723.P793193362512034014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A046691 (n + 3)).toNat

end

end A344723.P793193362512034014

/-! ## A344723.P16956918412458208093

`A344726(Δ[A023545(n+1)])`
-/

namespace A344723.P16956918412458208093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (f1 (n + 1) - f1 n).toNat

end

end A344723.P16956918412458208093

/-! ## A344723.P16907079049465606342

`A344726(A000124(n+5)-5)`
-/

namespace A344723.P16907079049465606342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A000124 (n + 5) - 5).toNat

end

end A344723.P16907079049465606342

/-! ## A344723.P189624205929220478

`A344726(n+1+A000217(n+4))`
-/

namespace A344723.P189624205929220478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 ((n + 1 : ℤ) + A000217 (n + 4)).toNat

end

end A344723.P189624205929220478

/-! ## A344723.P17935963791532339454

`A344726(A167499(n)+4*n+5)`
-/

namespace A344723.P17935963791532339454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 (A167499 n + (4 * n + 5 : ℤ)).toNat

end

end A344723.P17935963791532339454

/-!
# A344724: a(n) = Sum_{k=1..n} (-1)^(k+1) * floor(n/k)^n.

The programs for A344724, there is no canonical definition to state claims against.
-/

/-! ## A344724.P911919065191662627

`A344726((n+1)²+n²)`
-/

namespace A344724.P911919065191662627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344726 ((n + 1) ^ 2 + n ^ 2)

end

end A344724.P911919065191662627

/-! ## A344724.P14023419567807677226

`record[A003982(n)*A344726(n+1)]`
-/

namespace A344724.P14023419567807677226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A344726 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344724.P14023419567807677226

/-! ## A344724.P13785748561744374823

`record[gcd(A114327(n), A344726(n+1))]`
-/

namespace A344724.P13785748561744374823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A344726 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344724.P13785748561744374823

/-! ## A344724.P13387467226674985947

`gcd(A000038(n), A344726(A001844(n)))`
-/

namespace A344724.P13387467226674985947
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A344726 (A001844 n).toNat)

end

end A344724.P13387467226674985947

/-! ## A344724.P13152731497841135727

`A007318(A000096(n))*A344726(A001844(n))`
-/

namespace A344724.P13152731497841135727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A344726 (A001844 n).toNat

end

end A344724.P13152731497841135727

/-!
# A344725: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} floor(n/j)^k.

The programs for A344725, there is no canonical definition to state claims against.
-/

/-! ## A344725.P11307991461212853906

`A350122(n+1)+A350122(n+1)-A344726(n+1)`
-/

namespace A344725.P11307991461212853906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350122 (n + 1) + (A350122 (n + 1) - A344726 (n + 1))

end

end A344725.P11307991461212853906

/-! ## A344725.P6640769262292674032

`2*A350122(n+1)-A344726(n+1)`
-/

namespace A344725.P6640769262292674032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350122 (n + 1) - A344726 (n + 1)

end

end A344725.P6640769262292674032

/-! ## A344725.P558686531249631720

`A004277(A350122(n+1))-A344726(n+1)`
-/

namespace A344725.P558686531249631720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A350122 (n + 1)).toNat - A344726 (n + 1)

end

end A344725.P558686531249631720

/-! ## A344725.P14260373753178099585

`A343510(n+1)+A076142(A203150(n+1))`
-/

namespace A344725.P14260373753178099585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (n + 1) + A076142 (A203150 (n + 1)).toNat

end

end A344725.P14260373753178099585

/-! ## A344725.P14528234629191310182

`A343510(n+1)+A235127(A002991(n))`
-/

namespace A344725.P14528234629191310182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343510 (n + 1) + A235127 (A002991 n).toNat

end

end A344725.P14528234629191310182

/-!
# A344726: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals downwards, where T(n,k) = Sum_{j=1..n} (-1)^(j+1) * floor(n/j)^k.

The programs for A344726, there is no canonical definition to state claims against.
-/

/-! ## A344726.P2259318544822171977

`A350122(n+1)+A350122(n+1)-A344725(n+1)`
-/

namespace A344726.P2259318544822171977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350122 (n + 1) + (A350122 (n + 1) - A344725 (n + 1))

end

end A344726.P2259318544822171977

/-! ## A344726.P10154950110593561574

`2*A350122(n+1)-A344725(n+1)`
-/

namespace A344726.P10154950110593561574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A350122 (n + 1) - A344725 (n + 1)

end

end A344726.P10154950110593561574

/-! ## A344726.P13154903404971219538

`A004277(A350122(n+1))-A344725(n+1)`
-/

namespace A344726.P13154903404971219538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A350122 (n + 1)).toNat - A344725 (n + 1)

end

end A344726.P13154903404971219538

/-! ## A344726.P12309835255491931887

`A059380(n+1)+A014018(A089072(n+1))`
-/

namespace A344726.P12309835255491931887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059380 (n + 1) + A014018 (A089072 (n + 1)).toNat

end

end A344726.P12309835255491931887

/-!
# A344734: a(n) is the smallest divisibility checking number for the n-th number coprime to 10.

The programs for A344734, the canonical program `A344734.P16512929077149102254` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344734 has offset 1).

The definition of A344734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A344734.P16512929077149102254

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=8, a(4)=1, a(5)=9, a(6)=5, a(7)=17, a(8)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344734

/-- `2*a(n-4)-a(n-8)` -/
def P16512929077149102254.Spec : Prop :=
  ∀ n, P16512929077149102254.a n = A344734 (n + 1)

theorem P16512929077149102254.correct : P16512929077149102254.Spec := by
  intro n
  simp only [A344734, Nat.add_sub_cancel]

end A344734

/-! ## A344734.P714163649209972904

`A045572(n+1)-A057427(n)*A333448(n+1)`
-/

namespace A344734.P714163649209972904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1) - A057427 n * A333448 (n + 1)

end

end A344734.P714163649209972904

namespace A344734

/-- `A045572(n+1)-A057427(n)*A333448(n+1)` -/
def P714163649209972904.Spec : Prop :=
  ∀ n, P714163649209972904.a n = A344734 (n + 1)

end A344734

/-! ## A344734.P4492752993827945800

`A028310(lt[5*n, lcm(10, n)]-A333448(n+1))`
-/

namespace A344734.P4492752993827945800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - A333448 (n + 1)).toNat

end

end A344734.P4492752993827945800

namespace A344734

/-- `A028310(lt[5*n, lcm(10, n)]-A333448(n+1))` -/
def P4492752993827945800.Spec : Prop :=
  ∀ n, P4492752993827945800.a n = A344734 (n + 1)

end A344734

/-! ## A344734.P13336893809852954962

`A028310(record[lcm(50, n+5)/50]-A333448(n+1))`
-/

namespace A344734.P13336893809852954962
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 50 (n + 5) : ℚ) / 50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (A333448 (n + 1) : ℚ))).toNat

end

end A344734.P13336893809852954962

namespace A344734

/-- `A028310(record[lcm(50, n+5)/50]-A333448(n+1))` -/
def P13336893809852954962.Spec : Prop :=
  ∀ n, P13336893809852954962.a n = A344734 (n + 1)

end A344734

/-! ## A344734.P11629308868712890511

`A028310(or(1, comp[3*n]+n)-A333448(n+1))`
-/

namespace A344734.P11629308868712890511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((Nat.lor 1 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - A333448 (n + 1)).toNat

end

end A344734.P11629308868712890511

namespace A344734

/-- `A028310(or(1, comp[3*n]+n)-A333448(n+1))` -/
def P11629308868712890511.Spec : Prop :=
  ∀ n, P11629308868712890511.a n = A344734 (n + 1)

end A344734

/-! ## A344734.P8229794901978122553

`A028310(eq[gcd(10, n)+n, n+1]-A333448(n+1))`
-/

namespace A344734.P8229794901978122553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 n + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A333448 (n + 1)).toNat

end

end A344734.P8229794901978122553

namespace A344734

/-- `A028310(eq[gcd(10, n)+n, n+1]-A333448(n+1))` -/
def P8229794901978122553.Spec : Prop :=
  ∀ n, P8229794901978122553.a n = A344734 (n + 1)

end A344734

/-! ## A344734.P13518081442272776081

`A028310(2*round(5*n/4)+1-A333448(n+1))`
-/

namespace A344734.P13518081442272776081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * SequenceMachineLib.roundAway (5 * ((n : ℚ) / 4)) + 1 - A333448 (n + 1)).toNat

end

end A344734.P13518081442272776081

namespace A344734

/-- `A028310(2*round(5*n/4)+1-A333448(n+1))` -/
def P13518081442272776081.Spec : Prop :=
  ∀ n, P13518081442272776081.a n = A344734 (n + 1)

end A344734

/-! ## A344734.P12433411243275065189

`A045572(n+1)-A333448(n+1)%A001589(n)`
-/

namespace A344734.P12433411243275065189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1) - Int.tmod (A333448 (n + 1)) (A001589 n)

end

end A344734.P12433411243275065189

namespace A344734

/-- `A045572(n+1)-A333448(n+1)%A001589(n)` -/
def P12433411243275065189.Spec : Prop :=
  ∀ n, P12433411243275065189.a n = A344734 (n + 1)

end A344734

/-!
# A344735: a(0) = 1; a(n) = 4 * Sum_{k=1..n} binomial(n,k) * a(k-1).

The programs for A344735, there is no canonical definition to state claims against.
-/

/-! ## A344735.P17807891209153091645

`A321232(A201374(n+1))`
-/

namespace A344735.P17807891209153091645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321232 (A201374 (n + 1)).toNat

end

end A344735.P17807891209153091645

/-!
# A344737: Numbers that are the sum of three fourth powers in eight or more ways.

The programs for A344737, there is no canonical definition to state claims against.
-/

/-! ## A344737.P2788035687593137598

`∪[A344738(n+1), A344862(n+1)]%A344862(n+1)`
-/

namespace A344737.P2788035687593137598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344862 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A344862 (n + 1))

end

end A344737.P2788035687593137598

/-! ## A344737.P770789009392020816

`A344729(comp[A200741(2*n+3)-A302829(n+1)])`
-/

namespace A344737.P770789009392020816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200741 (2 * n + 3) - A302829 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344729 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A344737.P770789009392020816

/-! ## A344737.P1326409976654884726

`record[A344738(A116188(n))]`
-/

namespace A344737.P1326409976654884726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344738 (A116188 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A344737.P1326409976654884726

/-! ## A344737.P8232214549305603729

`A344738(A043318(n+1))`
-/

namespace A344737.P8232214549305603729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344738 (A043318 (n + 1)).toNat

end

end A344737.P8232214549305603729

/-! ## A344737.P8405065438740406218

`A344738(A044915(n+1))`
-/

namespace A344737.P8405065438740406218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344738 (A044915 (n + 1)).toNat

end

end A344737.P8405065438740406218

/-!
# A344738: Numbers that are the sum of three fourth powers in exactly eight ways.

The programs for A344738, there is no canonical definition to state claims against.
-/

/-! ## A344738.P17708539781197110156

`A344737(A122526(n+1)%A008716(n))`
-/

namespace A344738.P17708539781197110156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344737 (Int.tmod (A122526 (n + 1)) (A008716 n)).toNat

end

end A344738.P17708539781197110156

/-! ## A344738.P4797649114807519627

`A344737(A298534(n+1)%A008716(n))`
-/

namespace A344738.P4797649114807519627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344737 (Int.tmod (A298534 (n + 1)) (A008716 n)).toNat

end

end A344738.P4797649114807519627

/-! ## A344738.P6681824505482121565

`A344737(A122526(n+1))%A344750(2*n+5)`
-/

namespace A344738.P6681824505482121565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344737 (A122526 (n + 1)).toNat) (A344750 (2 * n + 5))

end

end A344738.P6681824505482121565

/-! ## A344738.P4272246213241925459

`A344737(A298534(n+1))%A344750(2*n+5)`
-/

namespace A344738.P4272246213241925459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344737 (A298534 (n + 1)).toNat) (A344750 (2 * n + 5))

end

end A344738.P4272246213241925459

/-! ## A344738.P8006102440673430115

`A344737(∪[A344750(2*n+5), A122526(n+1)])`
-/

namespace A344738.P8006102440673430115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344750 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122526 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344737 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A344738.P8006102440673430115

/-!
# A344739: Triangle read by rows where T(n,k) is the number of strict integer partitions of n with reverse-alternating sum k, with k ranging from -n to n in steps of 2.

The programs for A344739, there is no canonical definition to state claims against.
-/

/-! ## A344739.P17258953494318861550

`A316343(3*and(A128722(n), A174669(n)))`
-/

namespace A344739.P17258953494318861550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316343 (3 * Int.land (A128722 n) (A174669 n)).toNat

end

end A344739.P17258953494318861550

/-! ## A344739.P16676517965126936686

`A057427(18*and(A128722(n), A174669(n)))`
-/

namespace A344739.P16676517965126936686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (18 * Int.land (A128722 n) (A174669 n)).toNat

end

end A344739.P16676517965126936686

/-! ## A344739.P3744589163569808640

`A000007(and(A029631(n), A100218(n)))`
-/

namespace A344739.P3744589163569808640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (Int.land (A029631 n) (A100218 n)).toNat

end

end A344739.P3744589163569808640

/-! ## A344739.P11558848265214947159

`A118175(A055807(n)%A283195(n+1))`
-/

namespace A344739.P11558848265214947159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 (Int.tmod (A055807 n) (A283195 (n + 1))).toNat

end

end A344739.P11558848265214947159

/-! ## A344739.P1294757627344642295

`A088150(A269955(n+1))`
-/

namespace A344739.P1294757627344642295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088150 (A269955 (n + 1)).toNat

end

end A344739.P1294757627344642295

/-!
# A344740: Number of integer partitions of n with a permutation that has no consecutive monotone triple, i.e., no triple (..., x, y, z, ...) such that either x <= y <= z or x >= y >= z.

The programs for A344740, there is no canonical definition to state claims against.
-/

/-! ## A344740.P4104826512224620018

`A345170(n)+char[2*(n+1)]`
-/

namespace A344740.P4104826512224620018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345170 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A344740.P4104826512224620018

/-! ## A344740.P15719059047021969911

`A000041(n)-A344654(n)`
-/

namespace A344740.P15719059047021969911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A344654 n

end

end A344740.P15719059047021969911

/-! ## A344740.P4698380764270253224

`sqrt(A001255(n))-A344654(n)`
-/

namespace A344740.P4698380764270253224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A344654 n : ℝ)

end

end A344740.P4698380764270253224

/-! ## A344740.P7408047584135791270

`A119620(2*n)-A344654(n)`
-/

namespace A344740.P7408047584135791270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119620 (2 * n) - A344654 n

end

end A344740.P7408047584135791270

/-! ## A344740.P17478279661848034645

`A000009(n)+A047967(n)-A344654(n)`
-/

namespace A344740.P17478279661848034645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n + (A047967 n - A344654 n)

end

end A344740.P17478279661848034645

/-!
# A344741: Number of integer partitions of 2n with reverse-alternating sum -2.

The programs for A344741, there is no canonical definition to state claims against.
-/

/-! ## A344741.P10408062860128681811

`∑[∑[A240486(A289207(n+1))]]`
-/

namespace A344741.P10408062860128681811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 (A289207 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344741.P10408062860128681811

/-! ## A344741.P10279229982397719085

`∑[∑[A240486(A057428(n)+n)]]`
-/

namespace A344741.P10279229982397719085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 (A057428 n + (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344741.P10279229982397719085

/-! ## A344741.P17371228033250562932

`∑[∑[A240486(A004273(n)-n)]]`
-/

namespace A344741.P17371228033250562932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 (A004273 n - (n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344741.P17371228033250562932

/-! ## A344741.P8794095556470307014

`∑[∑[A240486(n)]-A240486(n)]`
-/

namespace A344741.P8794095556470307014
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A240486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344741.P8794095556470307014

/-! ## A344741.P18307105521477763323

`∑[A212551(A001844(n))+A085811(n+1)]`
-/

namespace A344741.P18307105521477763323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 (A001844 n).toNat + A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344741.P18307105521477763323

/-!
# A344742: Numbers whose prime factors have a permutation with no consecutive monotone triple, i.e., no triple (..., x, y, z, ...) such that either x <= y <= z or x >= y >= z.

The programs for A344742, there is no canonical definition to state claims against.
-/

/-! ## A344742.P16627079159142837704

`comp[(n+1)*∑{p}[(n+1)/∏{p}[n+1, #], #]]`
-/

namespace A344742.P16627079159142837704
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A344742.P16627079159142837704

/-! ## A344742.P15236010373920211883

`eq[1, A304327(n+1)]+1`
-/

namespace A344742.P15236010373920211883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A344742.P15236010373920211883

/-! ## A344742.P6363436655504257590

`lt[0, A344606(n+1)]+1`
-/

namespace A344742.P6363436655504257590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344606 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A344742.P6363436655504257590

/-! ## A344742.P2135760768794913925

`lt[A088388(n+1), 3]+1`
-/

namespace A344742.P2135760768794913925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A344742.P2135760768794913925

/-! ## A344742.P2577118242964336657

`comp[A344653(n+1)-1]+1`
-/

namespace A344742.P2577118242964336657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344742.P2577118242964336657

/-! ## A344742.P4807978722434841259

`comp[A345193(n+1)-1]+1`
-/

namespace A344742.P4807978722434841259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345193 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A344742.P4807978722434841259

/-! ## A344742.P17936497486981972756

`comp[(n+1)*A063958(n+1)]`
-/

namespace A344742.P17936497486981972756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A063958 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A344742.P17936497486981972756

/-! ## A344742.P5304732627439845235

`∪[∑[(n+1)%2+5], A004709(n+1)]`
-/

namespace A344742.P5304732627439845235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A344742.P5304732627439845235

/-! ## A344742.P4137899351871191377

`∪[A048107(n+1), A005010(n)]`
-/

namespace A344742.P4137899351871191377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344742.P4137899351871191377

/-! ## A344742.P9773684582189230178

`∪[A313780(n), A048107(n+1)]`
-/

namespace A344742.P9773684582189230178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313780 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A344742.P9773684582189230178

/-!
# A344743: Number of integer partitions of 2n with reverse-alternating sum < 0.

The programs for A344743, there is no canonical definition to state claims against.
-/

/-! ## A344743.P13073858307395318160

`A058696(n)-A344611(n)`
-/

namespace A344743.P13073858307395318160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058696 n - A344611 n

end

end A344743.P13073858307395318160

/-! ## A344743.P11672032490067271060

`A236913(n)-A000041(n)`
-/

namespace A344743.P11672032490067271060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236913 n - A000041 n

end

end A344743.P11672032490067271060

/-! ## A344743.P16145140396109402451

`A182616(n)-A236559(n)`
-/

namespace A344743.P16145140396109402451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182616 n - A236559 n

end

end A344743.P16145140396109402451

/-! ## A344743.P16327336316192672014

`A236913(n)-A213598(n)`
-/

namespace A344743.P16327336316192672014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236913 n - A213598 n

end

end A344743.P16327336316192672014

/-! ## A344743.P3783222763190683035

`A236913(n)-∑[A002865(n)]`
-/

namespace A344743.P3783222763190683035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236913 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344743.P3783222763190683035

/-!
# A344744: a(n) is the n-th power of the concatenation of the integers from 0 through n-1.

The programs for A344744, there is no canonical definition to state claims against.
-/

/-! ## A344744.P8936542053741607535

`∑[floor(10^n/9)]^(n+1)`
-/

namespace A344744.P8936542053741607535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1)

end

end A344744.P8936542053741607535

/-! ## A344744.P10789347822255778746

`A014824(n)^n*A014824(n)`
-/

namespace A344744.P10789347822255778746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014824 n ^ n * A014824 n

end

end A344744.P10789347822255778746

/-! ## A344744.P3450670611437619481

`∑[A002275(n)]^(n+1)/A034887(A061394(n+1))`
-/

namespace A344744.P3450670611437619481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ (n + 1) : ℤ) : ℚ) / (A034887 (A061394 (n + 1)).toNat : ℚ)

end

end A344744.P3450670611437619481

/-!
# A344747: a(n) = (1/6)*(3^n + (-2)^n - 1).

The programs for A344747, the canonical program `A344747.P12766655845295545449` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344747 has offset 1).

The definition of A344747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344747.P12766655845295545449

`6*a(n-2)+a(n-1)+1` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344747

/-- `6*a(n-2)+a(n-1)+1` -/
def P12766655845295545449.Spec : Prop :=
  ∀ n, (P12766655845295545449.a n : ℤ) = A344747 (n + 1)

theorem P12766655845295545449.correct : P12766655845295545449.Spec := by
  intro n
  simp only [A344747, Nat.add_sub_cancel]

end A344747

/-! ## A344747.P1759010806619312960

`2*3*a(n-2)-xor(-1, a(n-1))` with `a(0)=0, a(1)=2`
-/

namespace A344747.P1759010806619312960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n a =>
  2 * (3 * a (n - 2)) - Int.xor (-1) (a (n - 1))

end

end A344747.P1759010806619312960

namespace A344747

/-- `2*3*a(n-2)-xor(-1, a(n-1))` -/
def P1759010806619312960.Spec : Prop :=
  ∀ n, P1759010806619312960.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P10546272764671199540

`A140429(n)+A094556(n)`
-/

namespace A344747.P10546272764671199540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 n + A094556 n

end

end A344747.P10546272764671199540

namespace A344747

/-- `A140429(n)+A094556(n)` -/
def P10546272764671199540.Spec : Prop :=
  ∀ n, P10546272764671199540.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P13381920940335054381

`A094374(n)-A052992(n)`
-/

namespace A344747.P13381920940335054381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094374 n - A052992 n

end

end A344747.P13381920940335054381

namespace A344747

/-- `A094374(n)-A052992(n)` -/
def P13381920940335054381.Spec : Prop :=
  ∀ n, P13381920940335054381.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P11942599628998306249

`A007051(n)-A151575(n)`
-/

namespace A344747.P11942599628998306249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n - A151575 n

end

end A344747.P11942599628998306249

namespace A344747

/-- `A007051(n)-A151575(n)` -/
def P11942599628998306249.Spec : Prop :=
  ∀ n, P11942599628998306249.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P1326871521734758616

`A115098(n)-A140966(n)`
-/

namespace A344747.P1326871521734758616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115098 n - A140966 n

end

end A344747.P1326871521734758616

namespace A344747

/-- `A115098(n)-A140966(n)` -/
def P1326871521734758616.Spec : Prop :=
  ∀ n, P1326871521734758616.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P3078561063619310318

`A389124(n)-A166752(n)`
-/

namespace A344747.P3078561063619310318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389124 n - A166752 n

end

end A344747.P3078561063619310318

namespace A344747

/-- `A389124(n)-A166752(n)` -/
def P3078561063619310318.Spec : Prop :=
  ∀ n, P3078561063619310318.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P11799674647726258476

`A015441(n)+∑[A015441(n)]`
-/

namespace A344747.P11799674647726258476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015441 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344747.P11799674647726258476

namespace A344747

/-- `A015441(n)+∑[A015441(n)]` -/
def P11799674647726258476.Spec : Prop :=
  ∀ n, P11799674647726258476.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P10445204571154847365

`∑[A094556(n)+A094555(n)]`
-/

namespace A344747.P10445204571154847365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n + A094555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344747.P10445204571154847365

namespace A344747

/-- `∑[A094556(n)+A094555(n)]` -/
def P10445204571154847365.Spec : Prop :=
  ∀ n, P10445204571154847365.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P5986045026999737648

`A094556(n)+Δ[A124302(n)]`
-/

namespace A344747.P5986045026999737648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 n + (f1 (n + 1) - f1 n)

end

end A344747.P5986045026999737648

namespace A344747

/-- `A094556(n)+Δ[A124302(n)]` -/
def P5986045026999737648.Spec : Prop :=
  ∀ n, P5986045026999737648.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P2027330918850713105

`A091002(n+1)+A015441(n)`
-/

namespace A344747.P2027330918850713105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (n + 1) + A015441 n

end

end A344747.P2027330918850713105

namespace A344747

/-- `A091002(n+1)+A015441(n)` -/
def P2027330918850713105.Spec : Prop :=
  ∀ n, P2027330918850713105.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P5070989745630306750

`A007051(n)+1-A140966(n)`
-/

namespace A344747.P5070989745630306750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + (1 - A140966 n)

end

end A344747.P5070989745630306750

namespace A344747

/-- `A007051(n)+1-A140966(n)` -/
def P5070989745630306750.Spec : Prop :=
  ∀ n, P5070989745630306750.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P12395415388964034665

`A094555(n+1)-A077925(n)`
-/

namespace A344747.P12395415388964034665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094555 (n + 1) - A077925 n

end

end A344747.P12395415388964034665

namespace A344747

/-- `A094555(n+1)-A077925(n)` -/
def P12395415388964034665.Spec : Prop :=
  ∀ n, P12395415388964034665.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P16971300538154167793

`A094556(n+1)-A122803(n)`
-/

namespace A344747.P16971300538154167793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094556 (n + 1) - A122803 n

end

end A344747.P16971300538154167793

namespace A344747

/-- `A094556(n+1)-A122803(n)` -/
def P16971300538154167793.Spec : Prop :=
  ∀ n, P16971300538154167793.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P8365775332845016842

`A124302(n+1)-A151575(n)`
-/

namespace A344747.P8365775332845016842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) - A151575 n

end

end A344747.P8365775332845016842

namespace A344747

/-- `A124302(n+1)-A151575(n)` -/
def P8365775332845016842.Spec : Prop :=
  ∀ n, P8365775332845016842.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P618951796020222221

`A003462(n)+2-A140966(n)`
-/

namespace A344747.P618951796020222221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + (2 - A140966 n)

end

end A344747.P618951796020222221

namespace A344747

/-- `A003462(n)+2-A140966(n)` -/
def P618951796020222221.Spec : Prop :=
  ∀ n, P618951796020222221.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P6551644516750770059

`A091002(n+1)+Δ[A091002(n)]`
-/

namespace A344747.P6551644516750770059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091002 (n + 1) + (f1 (n + 1) - f1 n)

end

end A344747.P6551644516750770059

namespace A344747

/-- `A091002(n+1)+Δ[A091002(n)]` -/
def P6551644516750770059.Spec : Prop :=
  ∀ n, P6551644516750770059.a n = A344747 (n + 1)

end A344747

/-! ## A344747.P2487296154692540993

`A124302(n+1)+Δ[A140962(n)]`
-/

namespace A344747.P2487296154692540993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140962 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 (n + 1) + (f1 (n + 1) - f1 n)

end

end A344747.P2487296154692540993

namespace A344747

/-- `A124302(n+1)+Δ[A140962(n)]` -/
def P2487296154692540993.Spec : Prop :=
  ∀ n, P2487296154692540993.a n = A344747 (n + 1)

end A344747

/-!
# A344748: Numbers m with decimal expansion (d_k, ..., d_1) such that d_i = m * i mod 10 for i = 1..k.

The programs for A344748, there is no canonical definition to state claims against.
-/

/-! ## A344748.P12244231612707298078

`eq[A098488(n), A331162(A106649(n))]`
-/

namespace A344748.P12244231612707298078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098488 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331162 (A106649 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344748.P12244231612707298078

/-! ## A344748.P2743640309273743675

`eq[A025794(n), A171890(n)]`
-/

namespace A344748.P2743640309273743675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025794 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344748.P2743640309273743675

/-! ## A344748.P3609012549948475250

`∩[A050724(n+1), A247813(n+1)]`
-/

namespace A344748.P3609012549948475250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050724 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344748.P3609012549948475250

/-! ## A344748.P13801447691925758915

`eq[∏{e}[A023729(3*(n+1)), 4^#/4], A103377(n+1)]`
-/

namespace A344748.P13801447691925758915
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023729 (3 * (n + 1))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, (4 ^ Nat.factorization (f2 n).natAbs p : ℚ) / 4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103377 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A344748.P13801447691925758915

/-!
# A344749: Numbers m with decimal expansion (d_k, ..., d_1) such that d_i = m ^ i mod 10 for i = 1..k.

The programs for A344749, there is no canonical definition to state claims against.
-/

/-! ## A344749.P12861368682196378705

`eq[A059995(n), A337605(A000010(n+2))]`
-/

namespace A344749.P12861368682196378705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337605 (A000010 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344749.P12861368682196378705

/-! ## A344749.P18426668187808601556

`A055212(A056767(n+1))`
-/

namespace A344749.P18426668187808601556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055212 (A056767 (n + 1)).toNat

end

end A344749.P18426668187808601556

/-! ## A344749.P9300795641088432221

`eq[A105591(n), A171890(n)]`
-/

namespace A344749.P9300795641088432221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171890 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A344749.P9300795641088432221

/-! ## A344749.P16736216466263180034

`lt[A343605(A326645(n+1)), 12]`
-/

namespace A344749.P16736216466263180034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343605 (A326645 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A344749.P16736216466263180034

/-! ## A344749.P12646164727551188054

`A072088(A034453(2*n+3))+n`
-/

namespace A344749.P12646164727551188054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A034453 (2 * n + 3)).toNat + (n : ℤ)

end

end A344749.P12646164727551188054

/-!
# A344751: Numbers that are the sum of three fourth powers in exactly nine ways.

The programs for A344751, there is no canonical definition to state claims against.
-/

/-! ## A344751.P9889331304525768027

`A344750(A065975(n)+A001104(n+1))`
-/

namespace A344751.P9889331304525768027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344750 (A065975 n + A001104 (n + 1)).toNat

end

end A344751.P9889331304525768027

/-! ## A344751.P9582038422478523038

`A344750(A065975(n)+A002473(n+1))`
-/

namespace A344751.P9582038422478523038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344750 (A065975 n + A002473 (n + 1)).toNat

end

end A344751.P9582038422478523038

/-!
# A344752: Quotient A306927(k) / A344705(k) computed for such k >= 1 that the quotient is a nonnegative natural number. (The k are given by A344700.)

The programs for A344752, there is no canonical definition to state claims against.
-/

/-! ## A344752.P17846185940623552149

`A306927(A344700(n+1))/A344704(A344700(n+1))`
-/

namespace A344752.P17846185940623552149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306927 (A344700 (n + 1)).toNat : ℚ) / (A344704 (A344700 (n + 1)).toNat : ℚ)

end

end A344752.P17846185940623552149

/-!
# A344753: a(n) = sigma(n) + psi(n) - 2n = Sum_{d|n, d

The programs for A344753, the canonical program `A344753.P96052968177767744` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344753 has offset 1).

The definition of A344753 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001065, A306927, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A344753.P96052968177767744

`A001065(n+1)+A306927(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A344753

/-- `A001065(n+1)+A306927(n+1)` -/
def P96052968177767744.Spec : Prop :=
  ∀ n, P96052968177767744.a n = A344753 (n + 1)

theorem P96052968177767744.correct : P96052968177767744.Spec := by
  intro n
  simp only [A344753, Nat.add_sub_cancel]

end A344753

/-! ## A344753.P12771515507016064742

`A001615(n+1)-A033879(n+1)`
-/

namespace A344753.P12771515507016064742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) - A033879 (n + 1)

end

end A344753.P12771515507016064742

namespace A344753

/-- `A001615(n+1)-A033879(n+1)` -/
def P12771515507016064742.Spec : Prop :=
  ∀ n, P12771515507016064742.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P839376471697729264

`A344997(n+1)/A173557(n+1)`
-/

namespace A344753.P839376471697729264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344997 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)

end

end A344753.P839376471697729264

namespace A344753

/-- `A344997(n+1)/A173557(n+1)` -/
def P839376471697729264.Spec : Prop :=
  ∀ n, P839376471697729264.a n = (A344753 (n + 1) : ℚ)

end A344753

/-! ## A344753.P17879536639290809738

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]-(2*n+2-∑{d}[n+1, #])`
-/

namespace A344753.P17879536639290809738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), (p + 1) : ℕ) : ℚ) - ((2 * n : ℤ) + (2 - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)) : ℚ)

end

end A344753.P17879536639290809738

namespace A344753

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #+1]-(2*n+2-∑{d}[n+1, #])` -/
def P17879536639290809738.Spec : Prop :=
  ∀ n, P17879536639290809738.a n = (A344753 (n + 1) : ℚ)

end A344753

/-! ## A344753.P13601361996481110328

`A033880(n+1)+A001615(n+1)`
-/

namespace A344753.P13601361996481110328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A001615 (n + 1)

end

end A344753.P13601361996481110328

namespace A344753

/-- `A033880(n+1)+A001615(n+1)` -/
def P13601361996481110328.Spec : Prop :=
  ∀ n, P13601361996481110328.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P4412753725023481577

`A292786(n+1)+A051709(n+1)`
-/

namespace A344753.P4412753725023481577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292786 (n + 1) + A051709 (n + 1)

end

end A344753.P4412753725023481577

namespace A344753

/-- `A292786(n+1)+A051709(n+1)` -/
def P4412753725023481577.Spec : Prop :=
  ∀ n, P4412753725023481577.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P5722173097464409356

`A091818(n+1)-A244963(n+1)`
-/

namespace A344753.P5722173097464409356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A244963 (n + 1)

end

end A344753.P5722173097464409356

namespace A344753

/-- `A091818(n+1)-A244963(n+1)` -/
def P5722173097464409356.Spec : Prop :=
  ∀ n, P5722173097464409356.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P13500999171269623926

`A244963(n+1)+2*A306927(n+1)`
-/

namespace A344753.P13500999171269623926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244963 (n + 1) + 2 * A306927 (n + 1)

end

end A344753.P13500999171269623926

namespace A344753

/-- `A244963(n+1)+2*A306927(n+1)` -/
def P13500999171269623926.Spec : Prop :=
  ∀ n, P13500999171269623926.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P8831635787232704954

`2*A001065(n+1)-A244963(n+1)`
-/

namespace A344753.P8831635787232704954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001065 (n + 1) - A244963 (n + 1)

end

end A344753.P8831635787232704954

namespace A344753

/-- `2*A001065(n+1)-A244963(n+1)` -/
def P8831635787232704954.Spec : Prop :=
  ∀ n, P8831635787232704954.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P727326218666488098

`A001615(n+1)+A001065(n+1)-(n+1)`
-/

namespace A344753.P727326218666488098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + A001065 (n + 1) - (n + 1 : ℤ)

end

end A344753.P727326218666488098

namespace A344753

/-- `A001615(n+1)+A001065(n+1)-(n+1)` -/
def P727326218666488098.Spec : Prop :=
  ∀ n, P727326218666488098.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P2067682658971570551

`A000203(n+1)-(A244963(n+1)+A033879(n+1))`
-/

namespace A344753.P2067682658971570551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (A244963 (n + 1) + A033879 (n + 1))

end

end A344753.P2067682658971570551

namespace A344753

/-- `A000203(n+1)-(A244963(n+1)+A033879(n+1))` -/
def P2067682658971570551.Spec : Prop :=
  ∀ n, P2067682658971570551.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P17384166467348565049

`A000010(n+1)+A292786(n+1)-A033879(n+1)`
-/

namespace A344753.P17384166467348565049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A292786 (n + 1) - A033879 (n + 1))

end

end A344753.P17384166467348565049

namespace A344753

/-- `A000010(n+1)+A292786(n+1)-A033879(n+1)` -/
def P17384166467348565049.Spec : Prop :=
  ∀ n, P17384166467348565049.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P4655754418181470848

`A001065(n+1)+A344705(n+1)-A033879(n+1)`
-/

namespace A344753.P4655754418181470848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A344705 (n + 1) - A033879 (n + 1))

end

end A344753.P4655754418181470848

namespace A344753

/-- `A001065(n+1)+A344705(n+1)-A033879(n+1)` -/
def P4655754418181470848.Spec : Prop :=
  ∀ n, P4655754418181470848.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P18409261367389914017

`A291784(n+1)+A318320(n+1)-A033879(n+1)`
-/

namespace A344753.P18409261367389914017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (n + 1) + (A318320 (n + 1) - A033879 (n + 1))

end

end A344753.P18409261367389914017

namespace A344753

/-- `A291784(n+1)+A318320(n+1)-A033879(n+1)` -/
def P18409261367389914017.Spec : Prop :=
  ∀ n, P18409261367389914017.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P4754913243341466749

`A001615(n+1)+A306927(n+1)-A344705(n+1)`
-/

namespace A344753.P4754913243341466749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (n + 1) + (A306927 (n + 1) - A344705 (n + 1))

end

end A344753.P4754913243341466749

namespace A344753

/-- `A001615(n+1)+A306927(n+1)-A344705(n+1)` -/
def P4754913243341466749.Spec : Prop :=
  ∀ n, P4754913243341466749.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P3889238524218547518

`A003557(n+1)*A048250(n+1)-A033879(n+1)`
-/

namespace A344753.P3889238524218547518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A048250 (n + 1) - A033879 (n + 1)

end

end A344753.P3889238524218547518

namespace A344753

/-- `A003557(n+1)*A048250(n+1)-A033879(n+1)` -/
def P3889238524218547518.Spec : Prop :=
  ∀ n, P3889238524218547518.a n = A344753 (n + 1)

end A344753

/-! ## A344753.P14955905518811184615

`A001065(n+1)+A001065(A007947(n+1))*A003557(n+1)`
-/

namespace A344753.P14955905518811184615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A001065 (A007947 (n + 1)).toNat * A003557 (n + 1)

end

end A344753.P14955905518811184615

namespace A344753

/-- `A001065(n+1)+A001065(A007947(n+1))*A003557(n+1)` -/
def P14955905518811184615.Spec : Prop :=
  ∀ n, P14955905518811184615.a n = A344753 (n + 1)

end A344753

/-!
# A344754: Numbers k such that A344753(k) is a multiple of A048250(k).

The programs for A344754, there is no canonical definition to state claims against.
-/

/-! ## A344754.P14081641367182426568

`filter[A304231(n+1), A325321(#)]`
-/

namespace A344754.P14081641367182426568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A325321 (f1 j).toNat = 1) n)

end

end A344754.P14081641367182426568

/-! ## A344754.P14370773292137381496

`∩[A063752(n+1), A304231(n+1)]`
-/

namespace A344754.P14370773292137381496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A344754.P14370773292137381496

/-!
# A344755: Numbers k such that A344753(k) is a multiple of A048250(k), and k is a multiple of A344753(k)/A048250(k).

The programs for A344755, there is no canonical definition to state claims against.
-/

/-! ## A344755.P2616132861099731490

`A344754(A052501(n)*A140117(n+1))`
-/

namespace A344755.P2616132861099731490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344754 (A052501 n * A140117 (n + 1)).toNat

end

end A344755.P2616132861099731490

/-!
# A344756: a(n) = A003415(n) / gcd(A003415(n), A069359(n)).

The programs for A344756, the canonical program `A344756.P12165048524653787342` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344756 has offset 2).

The definition of A344756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344756.P12165048524653787342

`(A329039(n+2)+A069359(n+2))/A340070(n+2)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A344756

/-- `(A329039(n+2)+A069359(n+2))/A340070(n+2)` -/
def P12165048524653787342.Spec : Prop :=
  ∀ n, P12165048524653787342.a n = (A344756 (n + 2) : ℚ)

end A344756

/-! ## A344756.P8017357769148678950

`(A300252(n+2)+A300251(n+2))/A340070(n+2)`
-/

namespace A344756.P8017357769148678950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300252 (n + 2) + A300251 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344756.P8017357769148678950

namespace A344756

/-- `(A300252(n+2)+A300251(n+2))/A340070(n+2)` -/
def P8017357769148678950.Spec : Prop :=
  ∀ n, P8017357769148678950.a n = (A344756 (n + 2) : ℚ)

end A344756

/-! ## A344756.P17544828455411584901

`A344757(n+2)+A329039(n+2)/A340070(n+2)`
-/

namespace A344756.P17544828455411584901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344757 (n + 2) : ℚ) + (A329039 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344756.P17544828455411584901

namespace A344756

/-- `A344757(n+2)+A329039(n+2)/A340070(n+2)` -/
def P17544828455411584901.Spec : Prop :=
  ∀ n, P17544828455411584901.a n = (A344756 (n + 2) : ℚ)

end A344756

/-! ## A344756.P8531448200212779788

`A003415(n+2)/A340070(n+2)`
-/

namespace A344756.P8531448200212779788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344756.P8531448200212779788

namespace A344756

/-- `A003415(n+2)/A340070(n+2)` -/
def P8531448200212779788.Spec : Prop :=
  ∀ n, P8531448200212779788.a n = (A344756 (n + 2) : ℚ)

end A344756

/-! ## A344756.P4268923680808187150

`A258197(A000124(n+2))/A340070(n+2)`
-/

namespace A344756.P4268923680808187150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A258197 (A000124 (n + 2)).toNat : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344756.P4268923680808187150

namespace A344756

/-- `A258197(A000124(n+2))/A340070(n+2)` -/
def P4268923680808187150.Spec : Prop :=
  ∀ n, P4268923680808187150.a n = (A344756 (n + 2) : ℚ)

end A344756

/-!
# A344757: a(n) = A069359(n) / gcd(A003415(n), A069359(n)).

The programs for A344757, the canonical program `A344757.P15343085714571016600` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344757 has offset 2).

The definition of A344757 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344757.P15343085714571016600

`A069359(n+2)/A340070(n+2)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A344757

/-- `A069359(n+2)/A340070(n+2)` -/
def P15343085714571016600.Spec : Prop :=
  ∀ n, P15343085714571016600.a n = (A344757 (n + 2) : ℚ)

end A344757

/-! ## A344757.P2969984564571595137

`A344756(n+2)-A329039(n+2)/A340070(n+2)`
-/

namespace A344757.P2969984564571595137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344756 (n + 2) : ℚ) - (A329039 (n + 2) : ℚ) / (A340070 (n + 2) : ℚ)

end

end A344757.P2969984564571595137

namespace A344757

/-- `A344756(n+2)-A329039(n+2)/A340070(n+2)` -/
def P2969984564571595137.Spec : Prop :=
  ∀ n, P2969984564571595137.a n = (A344757 (n + 2) : ℚ)

end A344757

/-! ## A344757.P12558987157057513113

`A344756(A064549(n+2))-A344756(n+2)`
-/

namespace A344757.P12558987157057513113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344756 (A064549 (n + 2)).toNat - A344756 (n + 2)

end

end A344757.P12558987157057513113

namespace A344757

/-- `A344756(A064549(n+2))-A344756(n+2)` -/
def P12558987157057513113.Spec : Prop :=
  ∀ n, P12558987157057513113.a n = A344757 (n + 2)

end A344757

/-! ## A344757.P8647900606388545138

`A351942(A048767(n+2))`
-/

namespace A344757.P8647900606388545138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351942 (A048767 (n + 2)).toNat

end

end A344757.P8647900606388545138

namespace A344757

/-- `A351942(A048767(n+2))` -/
def P8647900606388545138.Spec : Prop :=
  ∀ n, P8647900606388545138.a n = A344757 (n + 2)

end A344757

/-! ## A344757.P9251432158365214888

`A028235(A367859(n+2)²)`
-/

namespace A344757.P9251432158365214888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028235 (A367859 (n + 2) ^ 2).toNat

end

end A344757.P9251432158365214888

namespace A344757

/-- `A028235(A367859(n+2)²)` -/
def P9251432158365214888.Spec : Prop :=
  ∀ n, P9251432158365214888.a n = A344757 (n + 2)

end A344757

/-!
# A344758: Smallest divisor d of n for which A011772(d) = A011772(n), where A011772(n) is the smallest number m such that m(m+1)/2 is divisible by n.

The programs for A344758, there is no canonical definition to state claims against.
-/

/-! ## A344758.P10500001272901569662

`(n+1)/A344759(n+1)`
-/

namespace A344758.P10500001272901569662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A344759 (n + 1) : ℚ)

end

end A344758.P10500001272901569662

/-! ## A344758.P3357084643134470709

`(n+1)*A344759(n+1)^(char[A038722(n+1)]-2)`
-/

namespace A344758.P3357084643134470709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A344759 (n + 1) : ℚ) ^ (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - 2 : ℤ)

end

end A344758.P3357084643134470709

/-! ## A344758.P8196512532196126886

`(n+1)*A344759(n+1)^(A344759(A089992(n+1))-2)`
-/

namespace A344758.P8196512532196126886
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A344759 (n + 1) : ℚ) ^ (A344759 (A089992 (n + 1)).toNat - 2 : ℤ)

end

end A344758.P8196512532196126886

/-! ## A344758.P1773403319270627025

`A234575(A344759(n+1)+∑[n])`
-/

namespace A344758.P1773403319270627025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A344759 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A344758.P1773403319270627025

/-! ## A344758.P14455502875421607338

`A051537(A344759(n+1)+∑[n])`
-/

namespace A344758.P14455502875421607338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A344759 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A344758.P14455502875421607338

/-! ## A344758.P17397998388387169771

`(n+1)*A344759(n+1)^(A131060(∑[n])-2)`
-/

namespace A344758.P17397998388387169771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A344759 (n + 1) : ℚ) ^ (A131060 (∑ j ∈ Finset.range (n + 1), f1 j) - 2 : ℤ)

end

end A344758.P17397998388387169771

/-! ## A344758.P8480339395412637487

`A126988(A344759(n+1)+A000217(n))`
-/

namespace A344758.P8480339395412637487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A344759 (n + 1) + A000217 n).toNat

end

end A344758.P8480339395412637487

/-!
# A344759: a(n) = n divided by the smallest divisor d of n for which A011772(d) = A011772(n), where A011772(n) is the smallest number m such that m(m+1)/2 is divisible by n.

The programs for A344759, there is no canonical definition to state claims against.
-/

/-! ## A344759.P18390112992314528592

`(n+1)/A344758(n+1)`
-/

namespace A344759.P18390112992314528592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A344758 (n + 1) : ℚ)

end

end A344759.P18390112992314528592

/-! ## A344759.P7007277977400062053

`A008586(n+1)%(1-A008586(A344758(n+1)))`
-/

namespace A344759.P7007277977400062053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (n + 1)) (1 - A008586 (A344758 (n + 1)).toNat)

end

end A344759.P7007277977400062053

/-! ## A344759.P13925674348664107736

`A219158(A344758(n+1)+A000217(n))`
-/

namespace A344759.P13925674348664107736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A344758 (n + 1) + A000217 n).toNat

end

end A344759.P13925674348664107736

/-! ## A344759.P612933761043757293

`A234575(A344758(n+1)+A000217(n))`
-/

namespace A344759.P612933761043757293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A344758 (n + 1) + A000217 n).toNat

end

end A344759.P612933761043757293

/-! ## A344759.P16110704249242766717

`A126988(A344758(n+1)+∑[n])`
-/

namespace A344759.P16110704249242766717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A344758 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A344759.P16110704249242766717

/-! ## A344759.P10263001427371996585

`A010766(A344758(n+1)+A000217(n))`
-/

namespace A344759.P10263001427371996585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A344758 (n + 1) + A000217 n).toNat

end

end A344759.P10263001427371996585

/-! ## A344759.P392864529791136884

`A049834(A344758(n+1)+A000217(n))`
-/

namespace A344759.P392864529791136884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A344758 (n + 1) + A000217 n).toNat

end

end A344759.P392864529791136884

/-! ## A344759.P10895620041590216079

`A051537(A344758(n+1)+A000217(n))`
-/

namespace A344759.P10895620041590216079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A344758 (n + 1) + A000217 n).toNat

end

end A344759.P10895620041590216079

/-! ## A344759.P12526453653686175574

`A054531(A344758(n+1)+A000217(n))`
-/

namespace A344759.P12526453653686175574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A344758 (n + 1) + A000217 n).toNat

end

end A344759.P12526453653686175574

/-!
# A344760: "Inverted variant" of A342002: a(n) = A342002(A289234(n)).

The programs for A344760, there is no canonical definition to state claims against.
-/

/-! ## A344760.P12746189580181562192

`A342002(A289234(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344760.P12746189580181562192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A289234 n).toNat

end

end A344760.P12746189580181562192

/-! ## A344760.P10423971587734756171

`A342001(A346101(n))`
-/

namespace A344760.P10423971587734756171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A346101 n).toNat

end

end A344760.P10423971587734756171

/-! ## A344760.P2263566044585639652

`A346252(A289234(A328622(n)))`
-/

namespace A344760.P2263566044585639652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346252 (A289234 (A328622 n).toNat).toNat

end

end A344760.P2263566044585639652

/-! ## A344760.P10173865024323713062

`A346253(A289234(A328623(n)))`
-/

namespace A344760.P10173865024323713062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346253 (A289234 (A328623 n).toNat).toNat

end

end A344760.P10173865024323713062

/-! ## A344760.P10973326505228681314

`A342002(n)+A007949(A319559(n))`
-/

namespace A344760.P10973326505228681314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 n + A007949 (A319559 n).toNat

end

end A344760.P10973326505228681314

/-!
# A344761: "Twisted variant" of A342002: a(n) = A342001(A328624(n)) = A342002(A328625(n)).

The programs for A344761, there is no canonical definition to state claims against.
-/

/-! ## A344761.P6474491227008136962

`A342002(A328625(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344761.P6474491227008136962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A328625 n).toNat

end

end A344761.P6474491227008136962

/-! ## A344761.P5679403128410560032

`A342001(A328624(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344761.P5679403128410560032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A328624 n).toNat

end

end A344761.P5679403128410560032

/-! ## A344761.P6179586450836659365

`A344762(A328625(A328625(2*n-n)))`
-/

namespace A344761.P6179586450836659365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344762 (A328625 (A328625 (2 * n - n)).toNat).toNat

end

end A344761.P6179586450836659365

/-! ## A344761.P10758042552179439080

`A346252(A328623(A328625(A289234(A289234(n)))))`
-/

namespace A344761.P10758042552179439080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346252 (A328623 (A328625 (A289234 (A289234 n).toNat).toNat).toNat).toNat

end

end A344761.P10758042552179439080

/-! ## A344761.P5787041592261705135

`A346252(A328623(A328625(A328623(A328622(n)))))`
-/

namespace A344761.P5787041592261705135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346252 (A328623 (A328625 (A328623 (A328622 n).toNat).toNat).toNat).toNat

end

end A344761.P5787041592261705135

/-!
# A344762: "Twisted variant" of A342002: a(n) = A342001(A328627(n)) = A342002(A328626(n)).

The programs for A344762, there is no canonical definition to state claims against.
-/

/-! ## A344762.P15549163494867342833

`A342002(A328626(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344762.P15549163494867342833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A328626 n).toNat

end

end A344762.P15549163494867342833

/-! ## A344762.P16090522725177877071

`A342001(A328627(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A344762.P16090522725177877071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A328627 n).toNat

end

end A344762.P16090522725177877071

/-! ## A344762.P13424347488567127603

`A344760(A289234(A328626(A289234(A289234(n)))))`
-/

namespace A344762.P13424347488567127603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (A289234 (A328626 (A289234 (A289234 n).toNat).toNat).toNat).toNat

end

end A344762.P13424347488567127603

/-! ## A344762.P1476672032520956550

`A344761(n)+A007949(A266887(n+1))`
-/

namespace A344762.P1476672032520956550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344761 n + A007949 (A266887 (n + 1)).toNat

end

end A344762.P1476672032520956550

/-!
# A344763: a(n) = n - A011772(n).

The programs for A344763, there is no canonical definition to state claims against.
-/

/-! ## A344763.P15797496370692752528

`A344765(n+1)-A001065(n+1)`
-/

namespace A344763.P15797496370692752528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 1) - A001065 (n + 1)

end

end A344763.P15797496370692752528

/-! ## A344763.P3434364222345124891

`1-A011772(n+1)+n`
-/

namespace A344763.P3434364222345124891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A011772 (n + 1) + (n : ℤ)

end

end A344763.P3434364222345124891

/-! ## A344763.P3170899417011206313

`2-A321366(n+1)+n`
-/

namespace A344763.P3170899417011206313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A321366 (n + 1) + (n : ℤ)

end

end A344763.P3170899417011206313

/-! ## A344763.P5353269319558747392

`2*(n+1)-A081467(n+1)`
-/

namespace A344763.P5353269319558747392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A081467 (n + 1)

end

end A344763.P5353269319558747392

/-! ## A344763.P2353961608151007000

`A344874(n+1)+A323410(n+1)`
-/

namespace A344763.P2353961608151007000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344874 (n + 1) + A323410 (n + 1)

end

end A344763.P2353961608151007000

/-! ## A344763.P415998760588480698

`A344765(n+1)-(A237588(n+1)+n)`
-/

namespace A344763.P415998760588480698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 1) - (A237588 (n + 1) + (n : ℤ))

end

end A344763.P415998760588480698

/-! ## A344763.P935561345425970559

`n+1+A344876(n+1)-A344875(n+1)`
-/

namespace A344763.P935561345425970559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A344876 (n + 1) - A344875 (n + 1))

end

end A344763.P935561345425970559

/-! ## A344763.P11374073946949577690

`n+1-(A000203(n+1)-A344765(n+1))`
-/

namespace A344763.P11374073946949577690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A000203 (n + 1) - A344765 (n + 1))

end

end A344763.P11374073946949577690

/-! ## A344763.P9709642020698390284

`A344765(n+1)-(A152770(n+1)+A032741(n+1))`
-/

namespace A344763.P9709642020698390284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 1) - (A152770 (n + 1) + A032741 (n + 1))

end

end A344763.P9709642020698390284

/-! ## A344763.P16108569344755721177

`A344769(n+1)-(A294898(n+1)+A001065(n+1))`
-/

namespace A344763.P16108569344755721177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344769 (n + 1) - (A294898 (n + 1) + A001065 (n + 1))

end

end A344763.P16108569344755721177

/-! ## A344763.P5397659842170648027

`A344765(n+1)-A007517(n+1)/A000010(n+1)`
-/

namespace A344763.P5397659842170648027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344765 (n + 1) : ℚ) - (A007517 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A344763.P5397659842170648027

/-! ## A344763.P17963172848325471506

`n+1-abs(A344765(n+1)-(A146076(n+1)+A000593(n+1)))`
-/

namespace A344763.P17963172848325471506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - |A344765 (n + 1) - (A146076 (n + 1) + A000593 (n + 1))|

end

end A344763.P17963172848325471506

/-! ## A344763.P10226745510291400419

`n-A023443(A011772(n+1))`
-/

namespace A344763.P10226745510291400419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A011772 (n + 1)).toNat

end

end A344763.P10226745510291400419

/-! ## A344763.P95284001546360912

`n+1-A344005(A022998(n+1))`
-/

namespace A344763.P95284001546360912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A344005 (A022998 (n + 1)).toNat

end

end A344763.P95284001546360912

/-! ## A344763.P17044992739161033928

`A008619(2*n)-A011772(A008619(2*n))`
-/

namespace A344763.P17044992739161033928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A011772 (A008619 (2 * n)).toNat

end

end A344763.P17044992739161033928

/-! ## A344763.P16814063655464980598

`A182665(2*(n+1))-(n+1)`
-/

namespace A344763.P16814063655464980598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 (2 * (n + 1)) - (n + 1 : ℤ)

end

end A344763.P16814063655464980598

/-! ## A344763.P14521869083565082374

`1-A344005(2*(n+1))+n`
-/

namespace A344763.P14521869083565082374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344005 (2 * (n + 1)) + (n : ℤ)

end

end A344763.P14521869083565082374

/-! ## A344763.P10028510622152284919

`round(n+1-sqrt(A345988(2*(n+1))))`
-/

namespace A344763.P10028510622152284919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) - Real.sqrt (A345988 (2 * (n + 1)) : ℝ))

end

end A344763.P10028510622152284919

/-! ## A344763.P1405801351431782280

`n+1-A344005(A103517(n))`
-/

namespace A344763.P1405801351431782280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A344005 (A103517 n).toNat

end

end A344763.P1405801351431782280

/-! ## A344763.P2392309233585543547

`A028242(2*n)-A011772(A028242(2*n))`
-/

namespace A344763.P2392309233585543547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * n) - A011772 (A028242 (2 * n)).toNat

end

end A344763.P2392309233585543547

/-!
# A344764: a(n) = gcd(n, A011772(n)).

The programs for A344764, there is no canonical definition to state claims against.
-/

/-! ## A344764.P10191262575771384831

`gcd(n+1, A011772(n+1))`
-/

namespace A344764.P10191262575771384831
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A011772 (n + 1))

end

end A344764.P10191262575771384831

/-! ## A344764.P17651970048493414828

`gcd(A011772(n+1), A131738(n))`
-/

namespace A344764.P17651970048493414828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011772 (n + 1)) (A131738 n)

end

end A344764.P17651970048493414828

/-! ## A344764.P16452297446472468402

`gcd(A000027(n+1), A344763(n+1))`
-/

namespace A344764.P16452297446472468402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A344763 (n + 1))

end

end A344764.P16452297446472468402

/-! ## A344764.P7090004046419841013

`gcd(-A001478(n+1), -A344763(n+1))`
-/

namespace A344764.P7090004046419841013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A001478 (n + 1)) (-A344763 (n + 1))

end

end A344764.P7090004046419841013

/-! ## A344764.P5196995876410690739

`gcd(A321366(n+1)-1, A061395(A000040(n+1)))`
-/

namespace A344764.P5196995876410690739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321366 (n + 1) - 1) (A061395 (A000040 (n + 1)).toNat)

end

end A344764.P5196995876410690739

/-! ## A344764.P2098029412965320046

`lcm(2, A345992(2*(n+1)))/2`
-/

namespace A344764.P2098029412965320046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A345992 (2 * (n + 1))) : ℚ) / 2

end

end A344764.P2098029412965320046

/-! ## A344764.P11412085604906964163

`gcd(n+1, A344005(A103517(n)))`
-/

namespace A344764.P11412085604906964163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A344005 (A103517 n).toNat)

end

end A344764.P11412085604906964163

/-! ## A344764.P6011738626482580927

`gcd(A153152(n), A344005(2*(n+1)))`
-/

namespace A344764.P6011738626482580927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A153152 n) (A344005 (2 * (n + 1)))

end

end A344764.P6011738626482580927

/-!
# A344765: a(n) = sigma(n) - A011772(n).

The programs for A344765, there is no canonical definition to state claims against.
-/

/-! ## A344765.P16156390636055405305

`A001065(n+1)+A344763(n+1)`
-/

namespace A344765.P16156390636055405305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + A344763 (n + 1)

end

end A344765.P16156390636055405305

/-! ## A344765.P4935427777640137925

`A000203(n+1)-A011772(n+1)`
-/

namespace A344765.P4935427777640137925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A011772 (n + 1)

end

end A344765.P4935427777640137925

/-! ## A344765.P14647118836402736478

`A344769(n+1)-A294898(n+1)`
-/

namespace A344765.P14647118836402736478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344769 (n + 1) - A294898 (n + 1)

end

end A344765.P14647118836402736478

/-! ## A344765.P17578856947087093330

`∑{d}[n+1, A344768(#)]`
-/

namespace A344765.P17578856947087093330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344768 d

end

end A344765.P17578856947087093330

/-! ## A344765.P9429982759060500969

`Δ[A160664(n)]-A011772(n+1)`
-/

namespace A344765.P9429982759060500969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A011772 (n + 1)

end

end A344765.P9429982759060500969

/-! ## A344765.P8202772527374971518

`A155085(n+1)-A081467(n+1)`
-/

namespace A344765.P8202772527374971518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - A081467 (n + 1)

end

end A344765.P8202772527374971518

/-! ## A344765.P6533619998522539865

`A088580(n+1)-A321366(n+1)`
-/

namespace A344765.P6533619998522539865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - A321366 (n + 1)

end

end A344765.P6533619998522539865

/-! ## A344765.P7504179451475812676

`A000203(n+1)+1-A321366(n+1)`
-/

namespace A344765.P7504179451475812676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (1 - A321366 (n + 1))

end

end A344765.P7504179451475812676

/-! ## A344765.P2998254176021892303

`A001065(n+1)+n+1-A011772(n+1)`
-/

namespace A344765.P2998254176021892303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (n + 1 : ℤ) - A011772 (n + 1)

end

end A344765.P2998254176021892303

/-! ## A344765.P18181249984066861701

`A155085(n+1)-(n+1)-A011772(n+1)`
-/

namespace A344765.P18181249984066861701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (n + 1 : ℤ) - A011772 (n + 1)

end

end A344765.P18181249984066861701

/-! ## A344765.P14775625541399731261

`A064987(n+1)/(n+1)-A011772(n+1)`
-/

namespace A344765.P14775625541399731261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A011772 (n + 1) : ℚ)

end

end A344765.P14775625541399731261

/-! ## A344765.P385853065201081372

`A237588(n+1)+(n+1)²-n²-A011772(n+1)`
-/

namespace A344765.P385853065201081372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + ((n + 1) ^ 2 : ℤ) - (n ^ 2 : ℤ) - A011772 (n + 1)

end

end A344765.P385853065201081372

/-! ## A344765.P13598464649467029444

`A005187(n+1)-(A294898(n+1)+A011772(n+1))`
-/

namespace A344765.P13598464649467029444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - (A294898 (n + 1) + A011772 (n + 1))

end

end A344765.P13598464649467029444

/-! ## A344765.P16857013391187380026

`A000203(n+1)+A344769(n+1)-A005187(n+1)`
-/

namespace A344765.P16857013391187380026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A344769 (n + 1) - A005187 (n + 1))

end

end A344765.P16857013391187380026

/-! ## A344765.P11374267977708925041

`A134675(n+1)+A344763(n+1)-A007434(n+1)`
-/

namespace A344765.P11374267977708925041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134675 (n + 1) + (A344763 (n + 1) - A007434 (n + 1))

end

end A344765.P11374267977708925041

/-! ## A344765.P1468460562710815574

`A003415(n+1)+A344763(n+1)-A211991(n+1)`
-/

namespace A344765.P1468460562710815574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1) + (A344763 (n + 1) - A211991 (n + 1))

end

end A344765.P1468460562710815574

/-! ## A344765.P16728974442346237216

`A076720(n+1)-(A011772(n+1)+A007955(n+1))`
-/

namespace A344765.P16728974442346237216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076720 (n + 1) - (A011772 (n + 1) + A007955 (n + 1))

end

end A344765.P16728974442346237216

/-! ## A344765.P4458732586298032266

`∑{d}[n+1, #]-A344005(2*(n+1))`
-/

namespace A344765.P4458732586298032266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A344005 (2 * (n + 1))

end

end A344765.P4458732586298032266

/-! ## A344765.P3311381614176865904

`A000203(n+1)-A344005(2*(n+1))`
-/

namespace A344765.P3311381614176865904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A344005 (2 * (n + 1))

end

end A344765.P3311381614176865904

/-! ## A344765.P18278796150959486390

`A146076(2*(n+1))/2-A344005(2*(n+1))`
-/

namespace A344765.P18278796150959486390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146076 (2 * (n + 1)) : ℚ) / 2 - (A344005 (2 * (n + 1)) : ℚ)

end

end A344765.P18278796150959486390

/-!
# A344766: a(n) = gcd(sigma(n), A011772(n)).

The programs for A344766, there is no canonical definition to state claims against.
-/

/-! ## A344766.P9986437567969910165

`gcd(1-A321366(n+1), ∑{d}[n+1, #])`
-/

namespace A344766.P9986437567969910165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A321366 (n + 1)) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A344766.P9986437567969910165

/-! ## A344766.P12884186863795043288

`gcd(Δ[A160664(n)], A011772(n+1))`
-/

namespace A344766.P12884186863795043288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A011772 (n + 1))

end

end A344766.P12884186863795043288

/-! ## A344766.P12920550562860416360

`gcd(A000203(n+1), A344765(n+1))`
-/

namespace A344766.P12920550562860416360
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A344765 (n + 1))

end

end A344766.P12920550562860416360

/-! ## A344766.P5153454872983070291

`gcd(A321366(n+1)-1, A000203(A000027(n+1)))`
-/

namespace A344766.P5153454872983070291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A321366 (n + 1) - 1) (A000203 (A000027 (n + 1)).toNat)

end

end A344766.P5153454872983070291

/-! ## A344766.P11976936558260234428

`gcd(A000203(n+1), A344005(A103517(n)))`
-/

namespace A344766.P11976936558260234428
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A344005 (A103517 n).toNat)

end

end A344766.P11976936558260234428

/-!
# A344767: Möbius transform of A011772.

The programs for A344767, there is no canonical definition to state claims against.
-/

/-! ## A344767.P7594248654786881074

`1-A344768(n+1)+n`
-/

namespace A344767.P7594248654786881074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344768 (n + 1) + (n : ℤ)

end

end A344767.P7594248654786881074

/-! ## A344767.P7153610866133939980

`-(A344768(n+1)+A001478(n+1))`
-/

namespace A344767.P7153610866133939980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A344768 (n + 1) + A001478 (n + 1))

end

end A344767.P7153610866133939980

/-! ## A344767.P5229818578890587477

`∑{d}[n+1, A008683(#)*A011772((n+1)/#)]`
-/

namespace A344767.P5229818578890587477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A011772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344767.P5229818578890587477

/-! ## A344767.P4270348859841094909

`∑{d}[n+1, A007427(#)*A346614((n+1)/#)]`
-/

namespace A344767.P4270348859841094909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A346614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344767.P4270348859841094909

/-! ## A344767.P9022587748422492308

`A024000(A344768(n+1))+n`
-/

namespace A344767.P9022587748422492308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A344768 (n + 1)).toNat + (n : ℤ)

end

end A344767.P9022587748422492308

/-! ## A344767.P18142736642695150371

`A001489(A344768(n+1))+A000027(n+1)`
-/

namespace A344767.P18142736642695150371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A344768 (n + 1)).toNat + A000027 (n + 1)

end

end A344767.P18142736642695150371

/-! ## A344767.P17236130846764383199

`A346615(A059029(n))`
-/

namespace A344767.P17236130846764383199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346615 (A059029 n).toNat

end

end A344767.P17236130846764383199

/-!
# A344768: a(n) = n - A344767(n); Möbius transform of A344765.

The programs for A344768, there is no canonical definition to state claims against.
-/

/-! ## A344768.P4733528695216215985

`1-A344767(n+1)+n`
-/

namespace A344768.P4733528695216215985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A344767 (n + 1) + (n : ℤ)

end

end A344768.P4733528695216215985

/-! ## A344768.P12901868734316113663

`abs(A344767(n+1)+A001478(n+1))`
-/

namespace A344768.P12901868734316113663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A344767 (n + 1) + A001478 (n + 1)|

end

end A344768.P12901868734316113663

/-! ## A344768.P1067182291237648158

`∑{d}[n+1, A008683(#)*A344765((n+1)/#)]`
-/

namespace A344768.P1067182291237648158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A344765 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A344768.P1067182291237648158

/-! ## A344768.P24643389939396760

`1-∑{d}[n+1, A008683(#)*A011772((n+1)/#)]+n`
-/

namespace A344768.P24643389939396760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A008683 d * A011772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat + (n : ℤ)

end

end A344768.P24643389939396760

/-! ## A344768.P5034191292141624923

`A008619(2*n)-A344767(A008619(2*n))`
-/

namespace A344768.P5034191292141624923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A344767 (A008619 (2 * n)).toNat

end

end A344768.P5034191292141624923

/-! ## A344768.P2795381317086973369

`A008620(3*n)-A344767(A008620(3*n))`
-/

namespace A344768.P2795381317086973369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * n) - A344767 (A008620 (3 * n)).toNat

end

end A344768.P2795381317086973369

/-!
# A344769: a(n) = A005187(n) - A011772(n).

The programs for A344769, there is no canonical definition to state claims against.
-/

/-! ## A344769.P12402318806010888050

`A344765(n+1)+A294898(n+1)`
-/

namespace A344769.P12402318806010888050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344765 (n + 1) + A294898 (n + 1)

end

end A344769.P12402318806010888050

/-! ## A344769.P4200302501320564157

`A005187(n+1)-A011772(n+1)`
-/

namespace A344769.P4200302501320564157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) - A011772 (n + 1)

end

end A344769.P4200302501320564157

/-! ## A344769.P526618344557304017

`∑[A001511(n+1)]-A011772(n+1)`
-/

namespace A344769.P526618344557304017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A011772 (n + 1)

end

end A344769.P526618344557304017

/-! ## A344769.P6843769836784493464

`A001065(n+1)+A344763(n+1)+A294898(n+1)`
-/

namespace A344769.P6843769836784493464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A344763 (n + 1) + A294898 (n + 1))

end

end A344769.P6843769836784493464

/-! ## A344769.P4896183543215758233

`A000203(n+1)+A294898(n+1)-A011772(n+1)`
-/

namespace A344769.P4896183543215758233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A294898 (n + 1) - A011772 (n + 1))

end

end A344769.P4896183543215758233

/-! ## A344769.P2256869653127170712

`A005187(n+1)+A344765(n+1)-A000203(n+1)`
-/

namespace A344769.P2256869653127170712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + (A344765 (n + 1) - A000203 (n + 1))

end

end A344769.P2256869653127170712

/-!
# A344770: Ordinal transform of A011772.

The programs for A344770, there is no canonical definition to state claims against.
-/

/-! ## A344770.P15096404354521102076

`A055642(A000079(n+1)²%A300832(n+1))`
-/

namespace A344770.P15096404354521102076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A000079 (n + 1) ^ 2) (A300832 (n + 1))).toNat

end

end A344770.P15096404354521102076

/-! ## A344770.P2728902972563823048

`A055642(A000079(2*(n+1))%A300832(n+1))`
-/

namespace A344770.P2728902972563823048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (Int.tmod (A000079 (2 * (n + 1))) (A300832 (n + 1))).toNat

end

end A344770.P2728902972563823048

/-! ## A344770.P17681862146954034051

`A081651(A358194(3*n+2)+A344877(n+1))`
-/

namespace A344770.P17681862146954034051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081651 (A358194 (3 * n + 2) + A344877 (n + 1)).toNat

end

end A344770.P17681862146954034051

/-! ## A344770.P16257372083352653541

`A008619(A007021(n+3)%A106491(n+1))`
-/

namespace A344770.P16257372083352653541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A007021 (n + 3)) (A106491 (n + 1))).toNat

end

end A344770.P16257372083352653541

/-! ## A344770.P10819889536601306043

`gcd(A033619(A309150(2*n+3)), A334461(n+1))`
-/

namespace A344770.P10819889536601306043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033619 (A309150 (2 * n + 3)).toNat) (A334461 (n + 1))

end

end A344770.P10819889536601306043

/-!
# A344771: Ordinal transform of A342915, where A342915(n) = gcd(1+n, psi(n)).

The programs for A344771, there is no canonical definition to state claims against.
-/

/-! ## A344771.P10648728898614627125

`A339914(n+1)%p?[A131060(A342918(n+1))]`
-/

namespace A344771.P10648728898614627125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131060 (A342918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339914 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A344771.P10648728898614627125

/-! ## A344771.P4833666468636991261

`gcd(A185284(A339919(n)), A339914(n+1))`
-/

namespace A344771.P4833666468636991261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 (A339919 n).toNat) (A339914 (n + 1))

end

end A344771.P4833666468636991261

/-!
# A344772: Ordinal transform of infinitary phi, A091732.

The programs for A344772, there is no canonical definition to state claims against.
-/

/-! ## A344772.P11185694640016657615

`A002024(A330739(n+1)+A123671(n+1))`
-/

namespace A344772.P11185694640016657615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A330739 (n + 1) + A123671 (n + 1)).toNat

end

end A344772.P11185694640016657615

/-! ## A344772.P17968702560892898965

`A330739(n+1)-A010815(A302081(2*(n+2)))`
-/

namespace A344772.P17968702560892898965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330739 (n + 1) - A010815 (A302081 (2 * (n + 2))).toNat

end

end A344772.P17968702560892898965

/-! ## A344772.P14342847523890284768

`A330739(n+1)+A097806(A051435(A204922(n+1)))`
-/

namespace A344772.P14342847523890284768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330739 (n + 1) + A097806 (A051435 (A204922 (n + 1)).toNat).toNat

end

end A344772.P14342847523890284768

/-! ## A344772.P494090875640359682

`A001221(A000108(A322822(n+1))+12)`
-/

namespace A344772.P494090875640359682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000108 (A322822 (n + 1)).toNat + 12).toNat

end

end A344772.P494090875640359682

/-! ## A344772.P8039509217619346206

`A330739(n+1)+A102683(A135372(n+1))`
-/

namespace A344772.P8039509217619346206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330739 (n + 1) + A102683 (A135372 (n + 1)).toNat

end

end A344772.P8039509217619346206

/-!
# A344773: Number of divisors d of n for which A342915(d) = A342915(n), where A342915(n) = gcd(1+n, psi(n)).

The programs for A344773, there is no canonical definition to state claims against.
-/

/-! ## A344773.P16064457537556559964

`A330957(A328166(n+1))`
-/

namespace A344773.P16064457537556559964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330957 (A328166 (n + 1)).toNat

end

end A344773.P16064457537556559964

/-! ## A344773.P14873273471537047068

`A321944(A322672(n+1)+2)`
-/

namespace A344773.P14873273471537047068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321944 (A322672 (n + 1) + 2).toNat

end

end A344773.P14873273471537047068

/-! ## A344773.P16274325675769320697

`A088530(A007955(n+1)+12)`
-/

namespace A344773.P16274325675769320697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088530 (A007955 (n + 1) + 12).toNat

end

end A344773.P16274325675769320697

/-! ## A344773.P10331146358469001047

`A046951(A001386(A238618(n+1)))`
-/

namespace A344773.P10331146358469001047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A001386 (A238618 (n + 1)).toNat).toNat

end

end A344773.P10331146358469001047

/-! ## A344773.P14207201451248883006

`A001221(A295721(A133265(n))+4)`
-/

namespace A344773.P14207201451248883006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A295721 (A133265 n).toNat + 4).toNat

end

end A344773.P14207201451248883006

/-!
# A344774: Number of divisors d of n for which A049559(d) = A049559(n), where A049559(n) = gcd(n-1, phi(n)).

The programs for A344774, there is no canonical definition to state claims against.
-/

/-! ## A344774.P4799366329157933169

`A183063(n+1)+A006466(A004188(n))`
-/

namespace A344774.P4799366329157933169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A006466 (A004188 n).toNat

end

end A344774.P4799366329157933169

/-! ## A344774.P5031769834930676374

`lcm(A117365(A056941(n)), A327530(n+1))`
-/

namespace A344774.P5031769834930676374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A117365 (A056941 n).toNat) (A327530 (n + 1))

end

end A344774.P5031769834930676374

/-! ## A344774.P7711100230291004722

`A327530(n+1)+A276794(A321312(n))`
-/

namespace A344774.P7711100230291004722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327530 (n + 1) + A276794 (A321312 n).toNat

end

end A344774.P7711100230291004722

/-! ## A344774.P5767807083678031483

`A183063(n+1)+A053589(A053534(3*n))`
-/

namespace A344774.P5767807083678031483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1) + A053589 (A053534 (3 * n)).toNat

end

end A344774.P5767807083678031483

/-! ## A344774.P14294606862919916597

`A034836(n+1)+A007814(A038754(n))`
-/

namespace A344774.P14294606862919916597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) + A007814 (A038754 n).toNat

end

end A344774.P14294606862919916597

/-!
# A344775: a(n) is the number of 2-balanced partitions of a set of n elements.

The programs for A344775, there is no canonical definition to state claims against.
-/

/-! ## A344775.P9646505109645888148

`A036234(A365878(n)-A075518(n+1))`
-/

namespace A344775.P9646505109645888148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A365878 n - A075518 (n + 1)).toNat

end

end A344775.P9646505109645888148

/-! ## A344775.P2865706552621478231

`xor(A011930(n), A111772(n+1))`
-/

namespace A344775.P2865706552621478231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011930 n) (A111772 (n + 1))

end

end A344775.P2865706552621478231

/-! ## A344775.P9415890831346126367

`A226190(A084781(n)+A071052(n))`
-/

namespace A344775.P9415890831346126367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A084781 n + A071052 n).toNat

end

end A344775.P9415890831346126367

/-!
# A344776: a(n) is the least prime p such that there are exactly n pairs of primes (q,r) with p > q > r such that q | r + p and r | q + p.

The programs for A344776, there is no canonical definition to state claims against.
-/

/-! ## A344776.P11497769360539757855

`p?[A229565(n+1)+A029803(n+1)]`
-/

namespace A344776.P11497769360539757855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229565 (n + 1) + A029803 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A344776.P11497769360539757855

/-! ## A344776.P17202792012744458428

`A195584(n)+A082209(A048410(3*n+1))`
-/

namespace A344776.P17202792012744458428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195584 n + A082209 (A048410 (3 * n + 1)).toNat

end

end A344776.P17202792012744458428

/-!
# A344782: Number of compositions of the n-th prime into a prime number of prime parts.

The programs for A344782, there is no canonical definition to state claims against.
-/

/-! ## A344782.P18181841204948594924

`A257684(A133655(n!))`
-/

namespace A344782.P18181841204948594924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 (A133655 (Nat.factorial n)).toNat

end

end A344782.P18181841204948594924

/-! ## A344782.P16084306129805496533

`A316565(A337664(n))-1`
-/

namespace A344782.P16084306129805496533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316565 (A337664 n).toNat - 1

end

end A344782.P16084306129805496533

/-! ## A344782.P3052690214736284393

`A068307(∑[∑[A228621(n+2)]])`
-/

namespace A344782.P3052690214736284393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228621 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068307 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A344782.P3052690214736284393

/-!
# A344787: a(n) = n * Sum_{d|n} sigma_d(d) / d, where sigma_k(n) is the sum of the k-th powers of the divisors of n.

The programs for A344787, there is no canonical definition to state claims against.
-/

/-! ## A344787.P8703473621920843924

`or(∏{d}[n+1, #+1]-1, A171463(∑{d}[n+1, #^(n+1)]))`
-/

namespace A344787.P8703473621920843924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∏ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - 1) (A171463 (∑ d ∈ Nat.divisors (f2 n), d ^ (n + 1)))

end

end A344787.P8703473621920843924

/-!
# A344788: a(n) is the number of pairs of primes (q,r) with prime(n) > q > r such that q | r + prime(n) and r | q + prime(n).

The programs for A344788, there is no canonical definition to state claims against.
-/

/-! ## A344788.P12383371266990552083

`A219923(A275960(n+2))%4`
-/

namespace A344788.P12383371266990552083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219923 (A275960 (n + 2)).toNat) 4

end

end A344788.P12383371266990552083

/-! ## A344788.P16145418095225251423

`xor(A000035(A004148(n)), A122197(n+1))`
-/

namespace A344788.P16145418095225251423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (A004148 n).toNat) (A122197 (n + 1))

end

end A344788.P16145418095225251423

/-!
# A344790: Number of compositions of the n-th Fibonacci number into a Fibonacci number of Fibonacci parts.

The programs for A344790, there is no canonical definition to state claims against.
-/

/-! ## A344790.P5149685471570533926

`A364345(A035451(∑[n]))`
-/

namespace A344790.P5149685471570533926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364345 (A035451 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A344790.P5149685471570533926

/-!
# A344791: a(n) is the number of 2-point antichains in the poset D_{2n+1} of type D, whose elements are compositions of 2n+1.

The programs for A344791, the canonical program `A344791.P17572927292968593830` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A344791 has offset 2).

The definition of A344791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A344791.P17572927292968593830

`∑[∑[∑[a(n-2)+3]]]` with `a(0)=2, a(1)=4`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A344791

/-- `∑[∑[∑[a(n-2)+3]]]` -/
def P17572927292968593830.Spec : Prop :=
  ∀ n, (P17572927292968593830.a n : ℤ) = A344791 (n + 2)

theorem P17572927292968593830.correct : P17572927292968593830.Spec := by
  intro n
  simp only [A344791, Nat.add_sub_cancel]

end A344791

/-! ## A344791.P696374552734839144

`∑[∑[∑[∑[n%2+1]+1]]]`
-/

namespace A344791.P696374552734839144
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344791.P696374552734839144

namespace A344791

/-- `∑[∑[∑[∑[n%2+1]+1]]]` -/
def P696374552734839144.Spec : Prop :=
  ∀ n, (P696374552734839144.a n : ℤ) = A344791 (n + 2)

end A344791

/-! ## A344791.P12071647534666596360

`∑[∑[∑[∑[gcd(2, n+1)]+1]]]`
-/

namespace A344791.P12071647534666596360
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344791.P12071647534666596360

namespace A344791

/-- `∑[∑[∑[∑[gcd(2, n+1)]+1]]]` -/
def P12071647534666596360.Spec : Prop :=
  ∀ n, (P12071647534666596360.a n : ℤ) = A344791 (n + 2)

end A344791

/-! ## A344791.P4547541748832723720

`∑[∑[∑[comp[3*n+1]+2]]]`
-/

namespace A344791.P4547541748832723720
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344791.P4547541748832723720

namespace A344791

/-- `∑[∑[∑[comp[3*n+1]+2]]]` -/
def P4547541748832723720.Spec : Prop :=
  ∀ n, (P4547541748832723720.a n : ℤ) = A344791 (n + 2)

end A344791

/-! ## A344791.P5411960977066094762

`A331390(n+1)+∑[1-n]`
-/

namespace A344791.P5411960977066094762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331390 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344791.P5411960977066094762

namespace A344791

/-- `A331390(n+1)+∑[1-n]` -/
def P5411960977066094762.Spec : Prop :=
  ∀ n, P5411960977066094762.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P12164207813361680129

`A005701(n)-A001752(n)`
-/

namespace A344791.P12164207813361680129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A001752 n

end

end A344791.P12164207813361680129

namespace A344791

/-- `A005701(n)-A001752(n)` -/
def P12164207813361680129.Spec : Prop :=
  ∀ n, P12164207813361680129.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P857845528606810866

`A070893(n+1)+A000292(n+1)`
-/

namespace A344791.P857845528606810866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070893 (n + 1) + A000292 (n + 1)

end

end A344791.P857845528606810866

namespace A344791

/-- `A070893(n+1)+A000292(n+1)` -/
def P857845528606810866.Spec : Prop :=
  ∀ n, P857845528606810866.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P6101253896789605793

`A045947(n+1)+A082289(n+4)-A000292(n)`
-/

namespace A344791.P6101253896789605793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045947 (n + 1) + (A082289 (n + 4) - A000292 n)

end

end A344791.P6101253896789605793

namespace A344791

/-- `A045947(n+1)+A082289(n+4)-A000292(n)` -/
def P6101253896789605793.Spec : Prop :=
  ∀ n, P6101253896789605793.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P1038929349469586758

`A000292(n+1)+A216175(n+1)-A216172(n+1)`
-/

namespace A344791.P1038929349469586758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A216175 (n + 1) - A216172 (n + 1))

end

end A344791.P1038929349469586758

namespace A344791

/-- `A000292(n+1)+A216175(n+1)-A216172(n+1)` -/
def P1038929349469586758.Spec : Prop :=
  ∀ n, P1038929349469586758.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P8397603042387436427

`A000292(n+1)+∑[A002717(n+1)]`
-/

namespace A344791.P8397603042387436427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A344791.P8397603042387436427

namespace A344791

/-- `A000292(n+1)+∑[A002717(n+1)]` -/
def P8397603042387436427.Spec : Prop :=
  ∀ n, P8397603042387436427.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P15101228555255733411

`A086602(n+2)-a(n-1)` with `a(0)=2`
-/

namespace A344791.P15101228555255733411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A086602 (n + 2) - a (n - 1)

end

end A344791.P15101228555255733411

namespace A344791

/-- `A086602(n+2)-a(n-1)` -/
def P15101228555255733411.Spec : Prop :=
  ∀ n, P15101228555255733411.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P4821390880184137188

`A082290(2*n)+A000292(n+1)`
-/

namespace A344791.P4821390880184137188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082290 (2 * n) + A000292 (n + 1)

end

end A344791.P4821390880184137188

namespace A344791

/-- `A082290(2*n)+A000292(n+1)` -/
def P4821390880184137188.Spec : Prop :=
  ∀ n, P4821390880184137188.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P11205345742304346124

`A000914(n+1)+A011863(n+1)-A000914(n)`
-/

namespace A344791.P11205345742304346124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000914 (n + 1) + (A011863 (n + 1) - A000914 n)

end

end A344791.P11205345742304346124

namespace A344791

/-- `A000914(n+1)+A011863(n+1)-A000914(n)` -/
def P11205345742304346124.Spec : Prop :=
  ∀ n, P11205345742304346124.a n = A344791 (n + 2)

end A344791

/-! ## A344791.P18234326758245534442

`∑[A117143(3*(n+1))-2]+1-C(n, 2)`
-/

namespace A344791.P18234326758245534442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117143 (3 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 - (Nat.choose n 2 : ℤ)

end

end A344791.P18234326758245534442

namespace A344791

/-- `∑[A117143(3*(n+1))-2]+1-C(n, 2)` -/
def P18234326758245534442.Spec : Prop :=
  ∀ n, P18234326758245534442.a n = A344791 (n + 2)

end A344791

/-!
# A344793: a(n) is the number of primes of the form prime(n) + 2*q where q < prime(n) is prime.

The programs for A344793, there is no canonical definition to state claims against.
-/

/-! ## A344793.P8854189918944350721

`A246359(A023436(n)*A033267(n+1))`
-/

namespace A344793.P8854189918944350721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246359 (A023436 n * A033267 (n + 1)).toNat

end

end A344793.P8854189918944350721

/-!
# A344795: Numbers that are the sum of five squares in two or more ways.

The programs for A344795, there is no canonical definition to state claims against.
-/

/-! ## A344795.P3145743668785893969

`lt[A000001(A000040(2*n+1)), A025429(n)]`
-/

namespace A344795.P3145743668785893969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A000040 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344795.P3145743668785893969

/-!
# A344796: Numbers that are the sum of five squares in three or more ways.

The programs for A344796, there is no canonical definition to state claims against.
-/

/-! ## A344796.P13424774550167784523

`lt[A037445(A023234(n+1)), A025429(n)]`
-/

namespace A344796.P13424774550167784523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A023234 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025429 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A344796.P13424774550167784523

/-!
# A344797: Numbers that are the sum of five squares in four or more ways.

The programs for A344797, there is no canonical definition to state claims against.
-/

/-! ## A344797.P12430015284945498149

`lt[1, A000170(A025429(n))]`
-/

namespace A344797.P12430015284945498149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000170 (A025429 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A344797.P12430015284945498149

