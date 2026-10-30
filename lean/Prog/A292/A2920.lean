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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
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
import Seq.B010.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A292000: Number of (undirected) paths in the n-gear graph.

The programs for A292000, the canonical program `A292000.P14087584617709412817` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292000 has offset 1).

The definition of A292000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292000.P8499388999430425902

`ogf((5+8x+2x^2+17x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A292000.P8499388999430425902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 8, 2, 17] [1, -5, 10, -10, 5, -1] n

end

end A292000.P8499388999430425902

namespace A292000

/-- `ogf((5+8x+2x^2+17x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8499388999430425902.Spec : Prop :=
  ∀ n, P8499388999430425902.a n = A292000 (n + 1)

end A292000

/-! ## A292000.P14087584617709412817

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=5, a(1)=33, a(2)=117, a(3)=322, a(4)=745`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292000

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14087584617709412817.Spec : Prop :=
  ∀ n, P14087584617709412817.a n = A292000 (n + 1)

theorem P14087584617709412817.correct : P14087584617709412817.Spec := by
  intro n
  simp only [A292000, Nat.add_sub_cancel]

end A292000

/-! ## A292000.P7966679737109876039

`∑[A181890(n)+A094160(n+1)/4]`
-/

namespace A292000.P7966679737109876039
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181890 n : ℚ) + (A094160 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292000.P7966679737109876039

namespace A292000

/-- `∑[A181890(n)+A094160(n+1)/4]` -/
def P7966679737109876039.Spec : Prop :=
  ∀ n, P7966679737109876039.a n = (A292000 (n + 1) : ℚ)

end A292000

/-!
# A292001: Number of (undirected) paths in the n-helm graph.

The programs for A292001, the canonical program `A292001.P8695862297647354230` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292001 has offset 1).

The definition of A292001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292001.P11228798522655674949

`ogf((3+11x-7x^2+25x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A292001.P11228798522655674949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 11, -7, 25] [1, -5, 10, -10, 5, -1] n

end

end A292001.P11228798522655674949

namespace A292001

/-- `ogf((3+11x-7x^2+25x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P11228798522655674949.Spec : Prop :=
  ∀ n, P11228798522655674949.a n = A292001 (n + 1)

end A292001

/-! ## A292001.P8695862297647354230

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=26, a(2)=93, a(3)=260, a(4)=615`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292001

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P8695862297647354230.Spec : Prop :=
  ∀ n, P8695862297647354230.a n = A292001 (n + 1)

theorem P8695862297647354230.correct : P8695862297647354230.Spec := by
  intro n
  simp only [A292001, Nat.add_sub_cancel]

end A292001

/-! ## A292001.P680426032535996597

`4*A378023(n+1)-(n+1)`
-/

namespace A292001.P680426032535996597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A378023 (n + 1) - (n + 1 : ℤ)

end

end A292001.P680426032535996597

namespace A292001

/-- `4*A378023(n+1)-(n+1)` -/
def P680426032535996597.Spec : Prop :=
  ∀ n, P680426032535996597.a n = A292001 (n + 1)

end A292001

/-! ## A292001.P10879294600879234445

`(n+1)*(A017197(n)+A000447(n))`
-/

namespace A292001.P10879294600879234445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A017197 n + A000447 n)

end

end A292001.P10879294600879234445

namespace A292001

/-- `(n+1)*(A017197(n)+A000447(n))` -/
def P10879294600879234445.Spec : Prop :=
  ∀ n, P10879294600879234445.a n = A292001 (n + 1)

end A292001

/-! ## A292001.P15005664562095743124

`(n+1)*(A017209(n)-(1-A000447(n)))`
-/

namespace A292001.P15005664562095743124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A017209 n - (1 - A000447 n))

end

end A292001.P15005664562095743124

namespace A292001

/-- `(n+1)*(A017209(n)-(1-A000447(n)))` -/
def P15005664562095743124.Spec : Prop :=
  ∀ n, P15005664562095743124.a n = A292001 (n + 1)

end A292001

/-! ## A292001.P10417509589084685395

`A219810(A004275(n+2))-A002061(n+2)`
-/

namespace A292001.P10417509589084685395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219810 (A004275 (n + 2)).toNat - A002061 (n + 2)

end

end A292001.P10417509589084685395

namespace A292001

/-- `A219810(A004275(n+2))-A002061(n+2)` -/
def P10417509589084685395.Spec : Prop :=
  ∀ n, P10417509589084685395.a n = A292001 (n + 1)

end A292001

/-! ## A292001.P638259213355064024

`(A017209(n)-(1-A000447(n)))*A029579(2*n)`
-/

namespace A292001.P638259213355064024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A017209 n - (1 - A000447 n)) * A029579 (2 * n)

end

end A292001.P638259213355064024

namespace A292001

/-- `(A017209(n)-(1-A000447(n)))*A029579(2*n)` -/
def P638259213355064024.Spec : Prop :=
  ∀ n, P638259213355064024.a n = A292001 (n + 1)

end A292001

/-! ## A292001.P8363235943029359453

`A034827(A103517(n))+A005563(3*n+1)`
-/

namespace A292001.P8363235943029359453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 (A103517 n).toNat + A005563 (3 * n + 1)

end

end A292001.P8363235943029359453

namespace A292001

/-- `A034827(A103517(n))+A005563(3*n+1)` -/
def P8363235943029359453.Spec : Prop :=
  ∀ n, P8363235943029359453.a n = A292001 (n + 1)

end A292001

/-!
# A292003: Primes of the form Phi(k, -4), where Phi is the cyclotomic polynomial.

The programs for A292003, there is no canonical definition to state claims against.
-/

/-! ## A292003.P9945487422706635396

`A020503(A138926(n+1))`
-/

namespace A292003.P9945487422706635396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020503 (A138926 (n + 1)).toNat

end

end A292003.P9945487422706635396

/-! ## A292003.P10396194572384172297

`A020503(eq[A064130(n), A098178(n)])`
-/

namespace A292003.P10396194572384172297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064130 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020503 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292003.P10396194572384172297

/-! ## A292003.P14374664816519720648

`A020503(lt[A086257(n), A098178(n)])`
-/

namespace A292003.P14374664816519720648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020503 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292003.P14374664816519720648

/-! ## A292003.P6654117944909348391

`A020503(eq[A064130(n)², A010121(n)])`
-/

namespace A292003.P6654117944909348391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064130 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020503 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292003.P6654117944909348391

/-! ## A292003.P2826739204602891614

`A020503(eq[(A086257(n)+1)², A010121(n)])`
-/

namespace A292003.P2826739204602891614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A086257 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020503 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292003.P2826739204602891614

/-!
# A292004: Primes of the form Phi(k, -3), where Phi is the cyclotomic polynomial.

The programs for A292004, there is no canonical definition to state claims against.
-/

/-! ## A292004.P16282699169233122843

`A020502(A138927(n+1))`
-/

namespace A292004.P16282699169233122843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020502 (A138927 (n + 1)).toNat

end

end A292004.P16282699169233122843

/-! ## A292004.P13129104909998101191

`p?[A020502(A017909(n))]`
-/

namespace A292004.P13129104909998101191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020502 (A017909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292004.P13129104909998101191

/-! ## A292004.P192563277316837745

`p?[A020502(A319656(n))]`
-/

namespace A292004.P192563277316837745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020502 (A319656 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292004.P192563277316837745

/-! ## A292004.P8744056985152272931

`p?[A020502(∑[A043568(n)])]`
-/

namespace A292004.P8744056985152272931
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043568 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020502 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292004.P8744056985152272931

/-!
# A292006: Primes of the form Phi(k, -2), where Phi is the cyclotomic polynomial.

The programs for A292006, there is no canonical definition to state claims against.
-/

/-! ## A292006.P12002368777939271360

`A020501(A138928(1+n))`
-/

namespace A292006.P12002368777939271360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020501 (A138928 (1 + n)).toNat

end

end A292006.P12002368777939271360

/-! ## A292006.P13087445843293258719

`A105603(A138928(2*n+1-n))`
-/

namespace A292006.P13087445843293258719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (A138928 (2 * n + 1 - n)).toNat

end

end A292006.P13087445843293258719

/-! ## A292006.P13803482948239153599

`A105603(or(A000007(n), A138928(n+1)))`
-/

namespace A292006.P13803482948239153599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (Int.lor (A000007 n) (A138928 (n + 1))).toNat

end

end A292006.P13803482948239153599

/-! ## A292006.P17319237937513882323

`or(A063524(n), A105603(A138928(n+1)))`
-/

namespace A292006.P17319237937513882323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 n) (A105603 (A138928 (n + 1)).toNat)

end

end A292006.P17319237937513882323

/-! ## A292006.P1667475908298601794

`A105603(A138928(n+1)%A138920(n+1))`
-/

namespace A292006.P1667475908298601794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (Int.tmod (A138928 (n + 1)) (A138920 (n + 1))).toNat

end

end A292006.P1667475908298601794

/-! ## A292006.P16381970892523919508

`A105603(A020500(6*(n+1))*A138928(n+1))`
-/

namespace A292006.P16381970892523919508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105603 (A020500 (6 * (n + 1)) * A138928 (n + 1)).toNat

end

end A292006.P16381970892523919508

/-!
# A292007: Primes of the form Phi(k, 3), where Phi is the cyclotomic polynomial.

The programs for A292007, there is no canonical definition to state claims against.
-/

/-! ## A292007.P1515515628470783840

`A143663(A138933(n+1))`
-/

namespace A292007.P1515515628470783840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143663 (A138933 (n + 1)).toNat

end

end A292007.P1515515628470783840

/-! ## A292007.P8294227677906382611

`A019321(A138933(n+1))`
-/

namespace A292007.P8294227677906382611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019321 (A138933 (n + 1)).toNat

end

end A292007.P8294227677906382611

/-! ## A292007.P16276627898196218160

`A019321(eq[1, A085028(n+1)]+1)`
-/

namespace A292007.P16276627898196218160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292007.P16276627898196218160

/-! ## A292007.P12393884652629927398

`A019321(record[(n+2)/A085028(n+2)])`
-/

namespace A292007.P12393884652629927398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A085028 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019321 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A292007.P12393884652629927398

/-! ## A292007.P17256927680436426219

`p?[A019321(n+1)]`
-/

namespace A292007.P17256927680436426219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A292007.P17256927680436426219

/-!
# A292008: Primes of the form Phi(k, 4), where Phi is the cyclotomic polynomial.

The programs for A292008, there is no canonical definition to state claims against.
-/

/-! ## A292008.P11845802166443072297

`A002587(A138934(n+1))`
-/

namespace A292008.P11845802166443072297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002587 (A138934 (n + 1)).toNat

end

end A292008.P11845802166443072297

/-! ## A292008.P531004604938050395

`A066845(lcm(A000034(n), A138934(n+1)))`
-/

namespace A292008.P531004604938050395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066845 (Int.lcm (A000034 n) (A138934 (n + 1)))

end

end A292008.P531004604938050395

/-! ## A292008.P16104915162014261160

`or(A010052(n), A066845(A138934(n+1)))`
-/

namespace A292008.P16104915162014261160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010052 n) (A066845 (A138934 (n + 1)).toNat)

end

end A292008.P16104915162014261160

/-! ## A292008.P12404760404013496065

`A066845(gcd(A069650(n+1), A138934(n+1)))`
-/

namespace A292008.P12404760404013496065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066845 (Int.gcd (A069650 (n + 1)) (A138934 (n + 1)))

end

end A292008.P12404760404013496065

/-! ## A292008.P4665054720737162445

`A019320(2*A138934(n+1))`
-/

namespace A292008.P4665054720737162445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (2 * A138934 (n + 1)).toNat

end

end A292008.P4665054720737162445

/-!
# A292009: Primes of the form Phi(k, 5), where Phi is the cyclotomic polynomial.

The programs for A292009, there is no canonical definition to state claims against.
-/

/-! ## A292009.P7372032019536642974

`A019323(A138935(n+1))`
-/

namespace A292009.P7372032019536642974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019323 (A138935 (n + 1)).toNat

end

end A292009.P7372032019536642974

/-! ## A292009.P15567983762617062611

`A019323(eq[1, A085030(n+1)]+1)`
-/

namespace A292009.P15567983762617062611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292009.P15567983762617062611

/-! ## A292009.P18024233393059185746

`A064081(A138935(2*n+1-n))`
-/

namespace A292009.P18024233393059185746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064081 (A138935 (2 * n + 1 - n)).toNat

end

end A292009.P18024233393059185746

/-!
# A292010: Primes of the form Phi(k, 6), where Phi is the cyclotomic polynomial.

The programs for A292010, there is no canonical definition to state claims against.
-/

/-! ## A292010.P3936733233678952311

`A379639(A138936(n+1))`
-/

namespace A292010.P3936733233678952311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379639 (A138936 (n + 1)).toNat

end

end A292010.P3936733233678952311

/-! ## A292010.P8891717620491406887

`A379639(eq[1, A085031(n+1)]+1)`
-/

namespace A292010.P8891717620491406887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379639 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292010.P8891717620491406887

/-! ## A292010.P12215024948506159599

`A379639(record[(n+1)/A085031(n+1)])`
-/

namespace A292010.P12215024948506159599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A085031 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379639 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A292010.P12215024948506159599

/-! ## A292010.P12651589535209151323

`A019324(A138936(n+1))`
-/

namespace A292010.P12651589535209151323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019324 (A138936 (n + 1)).toNat

end

end A292010.P12651589535209151323

/-!
# A292011: Primes of the form Phi(k, 7), where Phi is the cyclotomic polynomial.

The programs for A292011, there is no canonical definition to state claims against.
-/

/-! ## A292011.P9693354168866617908

`A019325(A138937(n+1))`
-/

namespace A292011.P9693354168866617908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019325 (A138937 (n + 1)).toNat

end

end A292011.P9693354168866617908

/-! ## A292011.P5174635933189532944

`A074249(eq[1, A085032(n+1)]+1)`
-/

namespace A292011.P5174635933189532944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292011.P5174635933189532944

/-! ## A292011.P11614789616669965285

`A074249(A054977(n)*A138937(n+1))`
-/

namespace A292011.P11614789616669965285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074249 (A054977 n * A138937 (n + 1)).toNat

end

end A292011.P11614789616669965285

/-! ## A292011.P15941652811272090906

`A074249(A138937(n+1)*A291168(n))`
-/

namespace A292011.P15941652811272090906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074249 (A138937 (n + 1) * A291168 n).toNat

end

end A292011.P15941652811272090906

/-! ## A292011.P2384171003500820364

`A074249(A138937(n+1)/A054977(n+3))`
-/

namespace A292011.P2384171003500820364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074249 (SequenceMachineLib.roundAway ((A138937 (n + 1) : ℚ) / (A054977 (n + 3) : ℚ))).toNat

end

end A292011.P2384171003500820364

/-!
# A292012: Primes of the form Phi(k, 8), where Phi is the cyclotomic polynomial.

The programs for A292012, there is no canonical definition to state claims against.
-/

/-! ## A292012.P17754256982281410113

`A379641(A138938(n+1))`
-/

namespace A292012.P17754256982281410113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379641 (A138938 (n + 1)).toNat

end

end A292012.P17754256982281410113

/-! ## A292012.P16480158701067567961

`A019326(eq[1, A085033(n+1)]+1)`
-/

namespace A292012.P16480158701067567961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292012.P16480158701067567961

/-!
# A292013: Primes of the form Phi(k, 9), where Phi is the cyclotomic polynomial.

The programs for A292013, there is no canonical definition to state claims against.
-/

/-! ## A292013.P5884075483873129493

`A074476(A138939(n+1))`
-/

namespace A292013.P5884075483873129493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074476 (A138939 (n + 1)).toNat

end

end A292013.P5884075483873129493

/-! ## A292013.P2369593182747133564

`A019327(A138939(n+1)-A337690(3*n+1))`
-/

namespace A292013.P2369593182747133564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019327 (A138939 (n + 1) - A337690 (3 * n + 1)).toNat

end

end A292013.P2369593182747133564

/-!
# A292014: Primes of the form Phi(k, 10), where Phi is the cyclotomic polynomial.

The programs for A292014, there is no canonical definition to state claims against.
-/

/-! ## A292014.P5385031000866764110

`A019328(A138940(n+1))`
-/

namespace A292014.P5385031000866764110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019328 (A138940 (n + 1)).toNat

end

end A292014.P5385031000866764110

/-! ## A292014.P17126263227811165844

`A019328(eq[1, A085035(n+1)]+1)`
-/

namespace A292014.P17126263227811165844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292014.P17126263227811165844

/-! ## A292014.P2896045288664073411

`A019328(record[root(n+2, A085035(n+2))])`
-/

namespace A292014.P2896045288664073411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℝ) ^ (1 / (A085035 (n + 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019328 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A292014.P2896045288664073411

/-!
# A292015: Primes of the form Phi(k, 2), where Phi is the cyclotomic polynomial.

The programs for A292015, there is no canonical definition to state claims against.
-/

/-! ## A292015.P8384735859155805320

`A019320(A072226(n+1))`
-/

namespace A292015.P8384735859155805320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (A072226 (n + 1)).toNat

end

end A292015.P8384735859155805320

/-! ## A292015.P5421783954455137174

`A019320(eq[1, A085021(n+1)]+1)`
-/

namespace A292015.P5421783954455137174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292015.P5421783954455137174

/-! ## A292015.P12353326089127657015

`A019320(eq[2, A085398(n+1)]+1)`
-/

namespace A292015.P12353326089127657015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292015.P12353326089127657015

/-! ## A292015.P1924205637150472965

`A019320(eq[2, A252503(n+1)]+1)`
-/

namespace A292015.P1924205637150472965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A292015.P1924205637150472965

/-! ## A292015.P10536372612662007232

`A019320(eq[2, A250201(n+2)]+2)`
-/

namespace A292015.P10536372612662007232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250201 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019320 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A292015.P10536372612662007232

/-!
# A292016: Number of maximal irredundant sets in the n-Fibonacci cube graph.

The programs for A292016, there is no canonical definition to state claims against.
-/

/-! ## A292016.P8895452070090211016

`A171101(a(n-1))-2` with `a(0)=2, a(1)=2`
-/

namespace A292016.P8895452070090211016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A171101 (a (n - 1)).toNat - 2

end

end A292016.P8895452070090211016

/-!
# A292018: Wiener index for the n-Andrásfai graph.

The programs for A292018, the canonical program `A292018.P15408502437347333623` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292018 has offset 1).

The definition of A292018 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292018.P13419437810125683804

`ogf((1+12x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A292018.P13419437810125683804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 2] [1, -3, 3, -1] n

end

end A292018.P13419437810125683804

namespace A292018

/-- `ogf((1+12x+2x^2)/(1-3x+3x^2-x^3))` -/
def P13419437810125683804.Spec : Prop :=
  ∀ n, P13419437810125683804.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P6764374044500455978

`(5*(n+1)-4)*(3*(n+1)-1)/2`
-/

namespace A292018.P6764374044500455978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((5 * (n + 1) : ℤ) - 4) * ((3 * (n + 1) : ℤ) - 1) : ℚ) / 2

end

end A292018.P6764374044500455978

namespace A292018

/-- `(5*(n+1)-4)*(3*(n+1)-1)/2` -/
def P6764374044500455978.Spec : Prop :=
  ∀ n, P6764374044500455978.a n = (A292018 (n + 1) : ℚ)

theorem P6764374044500455978.correct : P6764374044500455978.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A292018, Nat.add_sub_cancel, A292018.P6764374044500455978.a, A292018.P15408502437347333623.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A292018, Nat.add_sub_cancel, A292018.P6764374044500455978.a, A292018.P15408502437347333623.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A292018

/-! ## A292018.P15408502437347333623

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=15, a(2)=44`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292018

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P15408502437347333623.Spec : Prop :=
  ∀ n, P15408502437347333623.a n = A292018 (n + 1)

theorem P15408502437347333623.correct : P15408502437347333623.Spec := by
  intro n
  simp only [A292018, Nat.add_sub_cancel]

end A292018

/-! ## A292018.P1297260960237700058

`∑[a(n-1)+15]` with `a(0)=1, a(1)=14`
-/

namespace A292018.P1297260960237700058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 14] fun n f1 =>
  f1 (n - 1) + 15

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292018.P1297260960237700058

namespace A292018

/-- `∑[a(n-1)+15]` -/
def P1297260960237700058.Spec : Prop :=
  ∀ n, (P1297260960237700058.a n : ℤ) = A292018 (n + 1)

end A292018

/-! ## A292018.P16141981302230654508

`∑[ogf((1+12x+2x^2)/(1-2x+x^2))]`
-/

namespace A292018.P16141981302230654508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 12, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292018.P16141981302230654508

namespace A292018

/-- `∑[ogf((1+12x+2x^2)/(1-2x+x^2))]` -/
def P16141981302230654508.Spec : Prop :=
  ∀ n, P16141981302230654508.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P9151677469521041084

`15*n+a(n-1)-1` with `a(0)=1`
-/

namespace A292018.P9151677469521041084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (15 * n : ℤ) + a (n - 1) - 1

end

end A292018.P9151677469521041084

namespace A292018

/-- `15*n+a(n-1)-1` -/
def P9151677469521041084.Spec : Prop :=
  ∀ n, P9151677469521041084.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P9355860684797313943

`∑[or(1, -n)%2+15*n]`
-/

namespace A292018.P9355860684797313943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 1 (-(n : ℤ))) 2 + (15 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292018.P9355860684797313943

namespace A292018

/-- `∑[or(1, -n)%2+15*n]` -/
def P9355860684797313943.Spec : Prop :=
  ∀ n, P9355860684797313943.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P15153935833765080972

`(3*n+1)²-(C(n, 2)+n²)`
-/

namespace A292018.P15153935833765080972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((3 * n + 1) ^ 2 : ℤ) - (Nat.choose n 2 + n ^ 2 : ℤ)

end

end A292018.P15153935833765080972

namespace A292018

/-- `(3*n+1)²-(C(n, 2)+n²)` -/
def P15153935833765080972.Spec : Prop :=
  ∀ n, P15153935833765080972.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P15794131178229285261

`A194268(n)-∑[n]`
-/

namespace A292018.P15794131178229285261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194268 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A292018.P15794131178229285261

namespace A292018

/-- `A194268(n)-∑[n]` -/
def P15794131178229285261.Spec : Prop :=
  ∀ n, P15794131178229285261.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P9453515678145806470

`A069128(n+1)-n`
-/

namespace A292018.P9453515678145806470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069128 (n + 1) - (n : ℤ)

end

end A292018.P9453515678145806470

namespace A292018

/-- `A069128(n+1)-n` -/
def P9453515678145806470.Spec : Prop :=
  ∀ n, P9453515678145806470.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P13684439048866796106

`A194715(n)+1-n`
-/

namespace A292018.P13684439048866796106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194715 n + (1 - (n : ℤ))

end

end A292018.P13684439048866796106

namespace A292018

/-- `A194715(n)+1-n` -/
def P13684439048866796106.Spec : Prop :=
  ∀ n, P13684439048866796106.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P12513183133903661106

`A220083(n)+2*n`
-/

namespace A292018.P12513183133903661106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 n + (2 * n : ℤ)

end

end A292018.P12513183133903661106

namespace A292018

/-- `A220083(n)+2*n` -/
def P12513183133903661106.Spec : Prop :=
  ∀ n, P12513183133903661106.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P3755670638209882445

`A069126(n+1)+n²`
-/

namespace A292018.P3755670638209882445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1) + (n ^ 2 : ℤ)

end

end A292018.P3755670638209882445

namespace A292018

/-- `A069126(n+1)+n²` -/
def P3755670638209882445.Spec : Prop :=
  ∀ n, P3755670638209882445.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P9331561524953859210

`∑[abs(A158057(n)-(n+2))]`
-/

namespace A292018.P9331561524953859210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158057 n - (n + 2 : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292018.P9331561524953859210

namespace A292018

/-- `∑[abs(A158057(n)-(n+2))]` -/
def P9331561524953859210.Spec : Prop :=
  ∀ n, P9331561524953859210.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P1385463131391565939

`A077591(n+1)-∑[n+1]`
-/

namespace A292018.P1385463131391565939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A292018.P1385463131391565939

namespace A292018

/-- `A077591(n+1)-∑[n+1]` -/
def P1385463131391565939.Spec : Prop :=
  ∀ n, P1385463131391565939.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P3558274437683149948

`A022273(n)+A016921(n)`
-/

namespace A292018.P3558274437683149948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022273 n + A016921 n

end

end A292018.P3558274437683149948

namespace A292018

/-- `A022273(n)+A016921(n)` -/
def P3558274437683149948.Spec : Prop :=
  ∀ n, P3558274437683149948.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P8851785684436048875

`A022272(n)+A016993(n)`
-/

namespace A292018.P8851785684436048875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022272 n + A016993 n

end

end A292018.P8851785684436048875

namespace A292018

/-- `A022272(n)+A016993(n)` -/
def P8851785684436048875.Spec : Prop :=
  ∀ n, P8851785684436048875.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P8932492786700378377

`A028884(n)+A022271(n)`
-/

namespace A292018.P8932492786700378377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028884 n + A022271 n

end

end A292018.P8932492786700378377

namespace A292018

/-- `A028884(n)+A022271(n)` -/
def P8932492786700378377.Spec : Prop :=
  ∀ n, P8932492786700378377.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P2959198596359035152

`A033951(n)+A024966(n)`
-/

namespace A292018.P2959198596359035152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033951 n + A024966 n

end

end A292018.P2959198596359035152

namespace A292018

/-- `A033951(n)+A024966(n)` -/
def P2959198596359035152.Spec : Prop :=
  ∀ n, P2959198596359035152.a n = A292018 (n + 1)

end A292018

/-! ## A292018.P4488592774872193441

`A055998(n)+A005892(n)`
-/

namespace A292018.P4488592774872193441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055998 n + A005892 n

end

end A292018.P4488592774872193441

namespace A292018

/-- `A055998(n)+A005892(n)` -/
def P4488592774872193441.Spec : Prop :=
  ∀ n, P4488592774872193441.a n = A292018 (n + 1)

end A292018

/-!
# A292020: List of pairs of unitary amicable numbers (m, n) with record low values of m/n.

The programs for A292020, there is no canonical definition to state claims against.
-/

/-! ## A292020.P1735374992471841049

`filter[A063991(n+1), A389913(#)]`
-/

namespace A292020.P1735374992471841049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389913 (f1 j).toNat = 1) n)

end

end A292020.P1735374992471841049

/-! ## A292020.P9287405185806819040

`record[A063991(n+1)%A063990(A063979(n))]`
-/

namespace A292020.P9287405185806819040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063991 (n + 1)) (A063990 (A063979 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292020.P9287405185806819040

/-!
# A292022: a(n) = 4*n*(n^2 + 2).

The programs for A292022, the canonical program `A292022.P2362487258136494988` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292022 has offset 1).

The definition of A292022 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(n+1)*((n+1)²+2)` (program `A292022.P2362487258136494988`, by `A292022.P2362487258136494988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292022.P17195191575479634675

`ogf((12+12x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A292022.P17195191575479634675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [12, 0, 12] [1, -4, 6, -4, 1] n

end

end A292022.P17195191575479634675

namespace A292022

/-- `ogf((12+12x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P17195191575479634675.Spec : Prop :=
  ∀ n, P17195191575479634675.a n = A292022 (n + 1)

end A292022

/-! ## A292022.P2362487258136494988

`4*(n+1)*((n+1)²+2)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292022

/-- `4*(n+1)*((n+1)²+2)` -/
def P2362487258136494988.Spec : Prop :=
  ∀ n, (P2362487258136494988.a n : ℤ) = A292022 (n + 1)

theorem P2362487258136494988.correct : P2362487258136494988.Spec := by
  intro n
  simp only [A292022, Nat.add_sub_cancel]

end A292022

/-! ## A292022.P897346409961041882

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=12, a(1)=48, a(2)=132, a(3)=288`
-/

namespace A292022.P897346409961041882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [12, 48, 132, 288] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A292022.P897346409961041882

namespace A292022

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P897346409961041882.Spec : Prop :=
  ∀ n, P897346409961041882.a n = A292022 (n + 1)

theorem P897346409961041882.correct : P897346409961041882.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A292022, Nat.add_sub_cancel, A292022.P897346409961041882.a, A292022.P2362487258136494988.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A292022, Nat.add_sub_cancel, A292022.P897346409961041882.a, A292022.P2362487258136494988.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A292022

/-! ## A292022.P4709137873822625774

`∑[24*n+a(n-1)]` with `a(0)=12`
-/

namespace A292022.P4709137873822625774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [12] fun n f1 =>
  24 * n + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292022.P4709137873822625774

namespace A292022

/-- `∑[24*n+a(n-1)]` -/
def P4709137873822625774.Spec : Prop :=
  ∀ n, (P4709137873822625774.a n : ℤ) = A292022 (n + 1)

end A292022

/-! ## A292022.P9740414284268180724

`lcm(2, Δ[(n²+n+2)²])`
-/

namespace A292022.P9740414284268180724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + (n + 2)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A292022.P9740414284268180724

namespace A292022

/-- `lcm(2, Δ[(n²+n+2)²])` -/
def P9740414284268180724.Spec : Prop :=
  ∀ n, (P9740414284268180724.a n : ℤ) = A292022 (n + 1)

end A292022

/-! ## A292022.P2771978884622610679

`∑[3*xor(5, (2*n+1)²)]`
-/

namespace A292022.P2771978884622610679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.xor 5 ((2 * n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292022.P2771978884622610679

namespace A292022

/-- `∑[3*xor(5, (2*n+1)²)]` -/
def P2771978884622610679.Spec : Prop :=
  ∀ n, (P2771978884622610679.a n : ℤ) = A292022 (n + 1)

end A292022

/-! ## A292022.P357457687943187578

`4*A027602(n)/3`
-/

namespace A292022.P357457687943187578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * A027602 n : ℚ) / 3

end

end A292022.P357457687943187578

namespace A292022

/-- `4*A027602(n)/3` -/
def P357457687943187578.Spec : Prop :=
  ∀ n, P357457687943187578.a n = (A292022 (n + 1) : ℚ)

theorem P357457687943187578.correct : P357457687943187578.Spec := by
  intro n
  simp only [A292022, Nat.add_sub_cancel, A292022.P357457687943187578.a, A292022.P2362487258136494988.a, A027602, A027602.P2679377937091624113.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292022

/-! ## A292022.P18058746343530721459

`∑[3*A112087(n+1)]`
-/

namespace A292022.P18058746343530721459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A112087 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292022.P18058746343530721459

namespace A292022

/-- `∑[3*A112087(n+1)]` -/
def P18058746343530721459.Spec : Prop :=
  ∀ n, P18058746343530721459.a n = A292022 (n + 1)

end A292022

/-! ## A292022.P12695238621936060906

`A307921(n+1)-n²`
-/

namespace A292022.P12695238621936060906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307921 (n + 1) - (n ^ 2 : ℤ)

end

end A292022.P12695238621936060906

namespace A292022

/-- `A307921(n+1)-n²` -/
def P12695238621936060906.Spec : Prop :=
  ∀ n, P12695238621936060906.a n = A292022 (n + 1)

theorem P12695238621936060906.correct : P12695238621936060906.Spec := by
  intro n
  simp only [A292022, Nat.add_sub_cancel, A292022.P12695238621936060906.a, A292022.P2362487258136494988.a, A307921, A307921.P4320545813709548895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292022

/-! ## A292022.P7104155806620512899

`A033581(n+1)+A272871(n)+A033581(n+1)`
-/

namespace A292022.P7104155806620512899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033581 (n + 1) + (A272871 n + A033581 (n + 1))

end

end A292022.P7104155806620512899

namespace A292022

/-- `A033581(n+1)+A272871(n)+A033581(n+1)` -/
def P7104155806620512899.Spec : Prop :=
  ∀ n, P7104155806620512899.a n = A292022 (n + 1)

theorem P7104155806620512899.correct : P7104155806620512899.Spec := by
  intro n
  simp only [A292022, Nat.add_sub_cancel, A292022.P7104155806620512899.a, A292022.P2362487258136494988.a, A033581, A033581.P13583599227635646969.a, A272871, A272871.P8216137526329413230.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A292022

/-! ## A292022.P5505354333448827376

`Δ[A014206(n)²]`
-/

namespace A292022.P5505354333448827376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P5505354333448827376

namespace A292022

/-- `Δ[A014206(n)²]` -/
def P5505354333448827376.Spec : Prop :=
  ∀ n, P5505354333448827376.a n = A292022 (n + 1)

theorem P5505354333448827376.correct : P5505354333448827376.Spec := by
  intro n
  simp only [A292022, Nat.add_sub_cancel, A292022.P5505354333448827376.f1, A292022.P5505354333448827376.a, A292022.P2362487258136494988.a, A014206, A014206.P11460808999648819084.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292022

/-! ## A292022.P6218160404308104314

`Δ[A047673(n+1)]`
-/

namespace A292022.P6218160404308104314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P6218160404308104314

namespace A292022

/-- `Δ[A047673(n+1)]` -/
def P6218160404308104314.Spec : Prop :=
  ∀ n, P6218160404308104314.a n = A292022 (n + 1)

end A292022

/-! ## A292022.P3077814417990664224

`Δ[2*A383834(n)]`
-/

namespace A292022.P3077814417990664224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A383834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P3077814417990664224

namespace A292022

/-- `Δ[2*A383834(n)]` -/
def P3077814417990664224.Spec : Prop :=
  ∀ n, P3077814417990664224.a n = A292022 (n + 1)

end A292022

/-! ## A292022.P5392861122693481011

`Δ[4*A061316(n)]`
-/

namespace A292022.P5392861122693481011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A061316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P5392861122693481011

namespace A292022

/-- `Δ[4*A061316(n)]` -/
def P5392861122693481011.Spec : Prop :=
  ∀ n, P5392861122693481011.a n = A292022 (n + 1)

end A292022

/-! ## A292022.P10659481391898172269

`Δ[4*A086601(n)]`
-/

namespace A292022.P10659481391898172269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A086601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P10659481391898172269

namespace A292022

/-- `Δ[4*A086601(n)]` -/
def P10659481391898172269.Spec : Prop :=
  ∀ n, P10659481391898172269.a n = A292022 (n + 1)

end A292022

/-! ## A292022.P11921812369938050002

`Δ[A386480(n+1)²]`
-/

namespace A292022.P11921812369938050002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386480 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P11921812369938050002

namespace A292022

/-- `Δ[A386480(n+1)²]` -/
def P11921812369938050002.Spec : Prop :=
  ∀ n, P11921812369938050002.a n = A292022 (n + 1)

end A292022

/-! ## A292022.P16253201390998333869

`Δ[(A002378(n)+2)²]`
-/

namespace A292022.P16253201390998333869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002378 n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P16253201390998333869

namespace A292022

/-- `Δ[(A002378(n)+2)²]` -/
def P16253201390998333869.Spec : Prop :=
  ∀ n, P16253201390998333869.a n = A292022 (n + 1)

theorem P16253201390998333869.correct : P16253201390998333869.Spec := by
  intro n
  simp only [A292022, Nat.add_sub_cancel, A292022.P16253201390998333869.f1, A292022.P16253201390998333869.a, A292022.P2362487258136494988.a, A002378, A002378.P6342434596694243671.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292022

/-! ## A292022.P5508678941855388496

`Δ[(1-A027688(n))²]`
-/

namespace A292022.P5508678941855388496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A027688 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P5508678941855388496

namespace A292022

/-- `Δ[(1-A027688(n))²]` -/
def P5508678941855388496.Spec : Prop :=
  ∀ n, P5508678941855388496.a n = A292022 (n + 1)

theorem P5508678941855388496.correct : P5508678941855388496.Spec := by
  intro n
  simp only [A292022, Nat.add_sub_cancel, A292022.P5508678941855388496.f1, A292022.P5508678941855388496.a, A292022.P2362487258136494988.a, A027688, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292022

/-! ## A292022.P29624682003105862

`Δ[(2-A027689(n))²]`
-/

namespace A292022.P29624682003105862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A027689 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P29624682003105862

namespace A292022

/-- `Δ[(2-A027689(n))²]` -/
def P29624682003105862.Spec : Prop :=
  ∀ n, P29624682003105862.a n = A292022 (n + 1)

theorem P29624682003105862.correct : P29624682003105862.Spec := by
  intro n
  simp only [A292022, Nat.add_sub_cancel, A292022.P29624682003105862.f1, A292022.P29624682003105862.a, A292022.P2362487258136494988.a, A027689, A027689.P1842390006618827741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292022

/-! ## A292022.P929185011907837667

`Δ[(2*A000124(n))²]`
-/

namespace A292022.P929185011907837667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A000124 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A292022.P929185011907837667

namespace A292022

/-- `Δ[(2*A000124(n))²]` -/
def P929185011907837667.Spec : Prop :=
  ∀ n, P929185011907837667.a n = A292022 (n + 1)

end A292022

/-!
# A292023: Smallest number starting a longest interval of consecutive integers, each of which is divisible by at least one of n primes specifically chosen to minimize the number.

The programs for A292023, there is no canonical definition to state claims against.
-/

/-! ## A292023.P13747094100714404223

`A193977(8*C(n, 4))`
-/

namespace A292023.P13747094100714404223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193977 (8 * Nat.choose n 4)

end

end A292023.P13747094100714404223

/-! ## A292023.P12484048871066336861

`A233583(Δ[C(n, 4)²]+1)`
-/

namespace A292023.P12484048871066336861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A292023.P12484048871066336861

/-!
# A292027: a(n) = a(n-7) + a(n-11), starting a(0)=a(1)=...= a(10) = 1.

The programs for A292027, the canonical program `A292027.P4820981141221351682` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292027 has offset 0).

The definition of A292027 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292027.P4820981141221351682

`ogf((1+x+x^2+x^3+x^4+x^5+x^6)/(1-x^7-x^11))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292027

/-- `ogf((1+x+x^2+x^3+x^4+x^5+x^6)/(1-x^7-x^11))` -/
def P4820981141221351682.Spec : Prop :=
  ∀ n, P4820981141221351682.a n = A292027 n

theorem P4820981141221351682.correct : P4820981141221351682.Spec := by
  intro n
  simp only [A292027]

end A292027

/-!
# A292029: Wiener index of the n-folded cube graph.

The programs for A292029, the canonical program `A292029.P10955351823681342748` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292029 has offset 2).

The definition of A292029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292029.P10955351823681342748

`2^(n-1)*(n+2)*(2^(n+1)-C(n+1, floor((n+1)/2)))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292029

/-- `2^(n-1)*(n+2)*(2^(n+1)-C(n+1, floor((n+1)/2)))` -/
def P10955351823681342748.Spec : Prop :=
  ∀ n, P10955351823681342748.a n = (A292029 (n + 2) : ℚ)

end A292029

/-! ## A292029.P5206720464358759330

`2^n*A130783(n+1)`
-/

namespace A292029.P5206720464358759330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A130783 (n + 1)

end

end A292029.P5206720464358759330

namespace A292029

/-- `2^n*A130783(n+1)` -/
def P5206720464358759330.Spec : Prop :=
  ∀ n, P5206720464358759330.a n = A292029 (n + 2)

end A292029

/-! ## A292029.P12428121302060882714

`A001792(n)*A045621(n+1)`
-/

namespace A292029.P12428121302060882714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n * A045621 (n + 1)

end

end A292029.P12428121302060882714

namespace A292029

/-- `A001792(n)*A045621(n+1)` -/
def P12428121302060882714.Spec : Prop :=
  ∀ n, P12428121302060882714.a n = A292029 (n + 2)

end A292029

/-! ## A292029.P2426590059634715112

`∑[A045623(n)]*A045621(n+1)`
-/

namespace A292029.P2426590059634715112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A045621 (n + 1)

end

end A292029.P2426590059634715112

namespace A292029

/-- `∑[A045623(n)]*A045621(n+1)` -/
def P2426590059634715112.Spec : Prop :=
  ∀ n, P2426590059634715112.a n = A292029 (n + 2)

end A292029

/-! ## A292029.P901069411167371446

`A130783(n+1)*A131577(n+1)`
-/

namespace A292029.P901069411167371446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (n + 1) * A131577 (n + 1)

end

end A292029.P901069411167371446

namespace A292029

/-- `A130783(n+1)*A131577(n+1)` -/
def P901069411167371446.Spec : Prop :=
  ∀ n, P901069411167371446.a n = A292029 (n + 2)

end A292029

/-! ## A292029.P5894653515939666929

`A130783(n+1)*A164073(Δ[n²])`
-/

namespace A292029.P5894653515939666929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (n + 1) * A164073 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A292029.P5894653515939666929

namespace A292029

/-- `A130783(n+1)*A164073(Δ[n²])` -/
def P5894653515939666929.Spec : Prop :=
  ∀ n, P5894653515939666929.a n = A292029 (n + 2)

end A292029

/-! ## A292029.P7728606923688391683

`A130783(n+1)+A000225(n)*A130783(n+1)`
-/

namespace A292029.P7728606923688391683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130783 (n + 1) + A000225 n * A130783 (n + 1)

end

end A292029.P7728606923688391683

namespace A292029

/-- `A130783(n+1)+A000225(n)*A130783(n+1)` -/
def P7728606923688391683.Spec : Prop :=
  ∀ n, P7728606923688391683.a n = A292029 (n + 2)

end A292029

/-! ## A292029.P13538961598324114126

`A000079(n+1)*A130783(n+1)/2`
-/

namespace A292029.P13538961598324114126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) * A130783 (n + 1) : ℚ) / 2

end

end A292029.P13538961598324114126

namespace A292029

/-- `A000079(n+1)*A130783(n+1)/2` -/
def P13538961598324114126.Spec : Prop :=
  ∀ n, P13538961598324114126.a n = (A292029 (n + 2) : ℚ)

end A292029

/-!
# A292030: Table read by ascending antidiagonals: T(n,k) = A000045(k+1)*n + A000045(k).

The programs for A292030, the canonical program `A292030.P6609219519012494129` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292030 has offset 0).

The definition of A292030 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(col(n)+1)*(row(n)-col(n))+A000045(col(n))` (program `A292030.P6609219519012494129`, by `A292030.P6609219519012494129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292030.P6609219519012494129

`A000045(col(n)+1)*(row(n)-col(n))+A000045(col(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292030

/-- `A000045(col(n)+1)*(row(n)-col(n))+A000045(col(n))` -/
def P6609219519012494129.Spec : Prop :=
  ∀ n, P6609219519012494129.a n = A292030 n

theorem P6609219519012494129.correct : P6609219519012494129.Spec := by
  intro n
  simp only [A292030]

end A292030

/-! ## A292030.P15227462893493143006

`A141169(n)+A025581(n)*A104763(n+1)`
-/

namespace A292030.P15227462893493143006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n + A025581 n * A104763 (n + 1)

end

end A292030.P15227462893493143006

namespace A292030

/-- `A141169(n)+A025581(n)*A104763(n+1)` -/
def P15227462893493143006.Spec : Prop :=
  ∀ n, P15227462893493143006.a n = A292030 n

theorem P15227462893493143006.correct : P15227462893493143006.Spec := by
  intro n
  simp only [A292030, Nat.add_sub_cancel, A292030.P15227462893493143006.a, A292030.P6609219519012494129.a, A000045, A000045.P11838749114346432762.a, A025581, A025581.P16112744757063613497.a, A104763, A104763.P8153138766110593277.a, A141169, A141169.P5864777374650614929.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292030

/-! ## A292030.P12714278063428355952

`A352744(comp[∑[n]])`
-/

namespace A292030.P12714278063428355952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A292030.P12714278063428355952

namespace A292030

/-- `A352744(comp[∑[n]])` -/
def P12714278063428355952.Spec : Prop :=
  ∀ n, P12714278063428355952.a n = A292030 n

end A292030

/-! ## A292030.P6271451690613747143

`A210874(n+1)-(A141169(n)+A117501(n+1))`
-/

namespace A292030.P6271451690613747143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210874 (n + 1) - (A141169 n + A117501 (n + 1))

end

end A292030.P6271451690613747143

namespace A292030

/-- `A210874(n+1)-(A141169(n)+A117501(n+1))` -/
def P6271451690613747143.Spec : Prop :=
  ∀ n, P6271451690613747143.a n = A292030 n

end A292030

/-! ## A292030.P10871438407384244561

`A004736(n+1)*A193588(n)-A117501(n+1)`
-/

namespace A292030.P10871438407384244561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A193588 n - A117501 (n + 1)

end

end A292030.P10871438407384244561

namespace A292030

/-- `A004736(n+1)*A193588(n)-A117501(n+1)` -/
def P10871438407384244561.Spec : Prop :=
  ∀ n, P10871438407384244561.a n = A292030 n

end A292030

/-! ## A292030.P5279763043037645781

`(A025581(n)+1)*A193588(n)-A117501(n+1)`
-/

namespace A292030.P5279763043037645781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A193588 n - A117501 (n + 1)

end

end A292030.P5279763043037645781

namespace A292030

/-- `(A025581(n)+1)*A193588(n)-A117501(n+1)` -/
def P5279763043037645781.Spec : Prop :=
  ∀ n, P5279763043037645781.a n = A292030 n

end A292030

/-! ## A292030.P16774439149033553987

`A210874(n+1)-A117501(A014132(n+1))`
-/

namespace A292030.P16774439149033553987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210874 (n + 1) - A117501 (A014132 (n + 1)).toNat

end

end A292030.P16774439149033553987

namespace A292030

/-- `A210874(n+1)-A117501(A014132(n+1))` -/
def P16774439149033553987.Spec : Prop :=
  ∀ n, P16774439149033553987.a n = A292030 n

end A292030

/-! ## A292030.P13305400352992817881

`A119457(n+1)-A117501(n+1)`
-/

namespace A292030.P13305400352992817881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119457 (n + 1) - A117501 (n + 1)

end

end A292030.P13305400352992817881

namespace A292030

/-- `A119457(n+1)-A117501(n+1)` -/
def P13305400352992817881.Spec : Prop :=
  ∀ n, P13305400352992817881.a n = A292030 n

theorem P13305400352992817881.correct : P13305400352992817881.Spec := by
  intro n
  simp only [A292030, Nat.add_sub_cancel, A292030.P13305400352992817881.a, A292030.P6609219519012494129.a, A000045, A000045.P11838749114346432762.a, A117501, A117501.P18074844376975616405.a, A119457, A119457.P468492089180334650.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292030

/-! ## A292030.P14241093186810966683

`A119457(n+1)-A109754(A014132(n+1))`
-/

namespace A292030.P14241093186810966683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119457 (n + 1) - A109754 (A014132 (n + 1)).toNat

end

end A292030.P14241093186810966683

namespace A292030

/-- `A119457(n+1)-A109754(A014132(n+1))` -/
def P14241093186810966683.Spec : Prop :=
  ∀ n, P14241093186810966683.a n = A292030 n

end A292030

/-! ## A292030.P9110567758473355316

`A119457(n+1)-A093873(A099627(n))`
-/

namespace A292030.P9110567758473355316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119457 (n + 1) - A093873 (A099627 n).toNat

end

end A292030.P9110567758473355316

namespace A292030

/-- `A119457(n+1)-A093873(A099627(n))` -/
def P9110567758473355316.Spec : Prop :=
  ∀ n, P9110567758473355316.a n = A292030 n

end A292030

/-! ## A292030.P2410787550764661508

`A210874(n+1)-A020651(A099627(n))`
-/

namespace A292030.P2410787550764661508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210874 (n + 1) - A020651 (A099627 n).toNat

end

end A292030.P2410787550764661508

namespace A292030

/-- `A210874(n+1)-A020651(A099627(n))` -/
def P2410787550764661508.Spec : Prop :=
  ∀ n, P2410787550764661508.a n = A292030 n

end A292030

/-!
# A292031: a(n) is the smallest value m such that n appears in row m of A292030.

The programs for A292031, there is no canonical definition to state claims against.
-/

/-! ## A292031.P14389615924500569837

`A275812(A279966(n+1)^A108500(n+1))`
-/

namespace A292031.P14389615924500569837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275812 (SequenceMachineLib.roundAway ((A279966 (n + 1) : ℚ) ^ (A108500 (n + 1) : ℤ))).toNat

end

end A292031.P14389615924500569837

/-! ## A292031.P10244766968147873080

`A108500(n+1)%A277604(A030096(n+1))`
-/

namespace A292031.P10244766968147873080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108500 (n + 1)) (A277604 (A030096 (n + 1)).toNat)

end

end A292031.P10244766968147873080

/-!
# A292032: a(n) is the value k such that A292030(A292031(n), k) = n.

The programs for A292032, there is no canonical definition to state claims against.
-/

/-! ## A292032.P15372550261398717657

`A001222(A004620(n+2))%A004631(n)`
-/

namespace A292032.P15372550261398717657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A004620 (n + 2)).toNat) (A004631 n)

end

end A292032.P15372550261398717657

/-!
# A292033: Unitary phibonacci numbers: solutions k of the equation uphi(k) = uphi(k-1) + uphi(k-2), where uphi(k) is the unitary totient function (A047994).

The programs for A292033, there is no canonical definition to state claims against.
-/

/-! ## A292033.P13707983979644260330

`A298762(n+1)+2`
-/

namespace A292033.P13707983979644260330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298762 (n + 1) + 2

end

end A292033.P13707983979644260330

/-!
# A292034: Linear divisibility sequence based on Salem number of order 4 (case t=6, see formula).

The programs for A292034, the canonical program `A292034.P14564518295591131488` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292034 has offset 1).

The definition of A292034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 143 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292034.P15607713471335231860

`ogf((1-x^2)/(1-6x+6x^2-6x^3+x^4))`
-/

namespace A292034.P15607713471335231860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -6, 6, -6, 1] n

end

end A292034.P15607713471335231860

namespace A292034

/-- `ogf((1-x^2)/(1-6x+6x^2-6x^3+x^4))` -/
def P15607713471335231860.Spec : Prop :=
  ∀ n, P15607713471335231860.a n = A292034 (n + 1)

end A292034

/-! ## A292034.P14564518295591131488

`6*a(n-1)-6*a(n-2)+6*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=29, a(3)=144`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292034

/-- `6*a(n-1)-6*a(n-2)+6*a(n-3)-a(n-4)` -/
def P14564518295591131488.Spec : Prop :=
  ∀ n, P14564518295591131488.a n = A292034 (n + 1)

theorem P14564518295591131488.correct : P14564518295591131488.Spec := by
  intro n
  simp only [A292034, Nat.add_sub_cancel]

end A292034

/-!
# A292035: Linear divisibility sequence based on Salem number of order 4 (case t=7, see formula).

The programs for A292035, the canonical program `A292035.P15208481102381089312` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292035 has offset 1).

The definition of A292035 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292035.P4897293440657625470

`ogf((1-x^2)/(1-7x+7x^2-7x^3+x^4))`
-/

namespace A292035.P4897293440657625470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -7, 7, -7, 1] n

end

end A292035.P4897293440657625470

namespace A292035

/-- `ogf((1-x^2)/(1-7x+7x^2-7x^3+x^4))` -/
def P4897293440657625470.Spec : Prop :=
  ∀ n, P4897293440657625470.a n = A292035 (n + 1)

end A292035

/-! ## A292035.P15208481102381089312

`7*a(n-1)-7*a(n-2)+7*a(n-3)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=41, a(3)=245`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292035

/-- `7*a(n-1)-7*a(n-2)+7*a(n-3)-a(n-4)` -/
def P15208481102381089312.Spec : Prop :=
  ∀ n, P15208481102381089312.a n = A292035 (n + 1)

theorem P15208481102381089312.correct : P15208481102381089312.Spec := by
  intro n
  simp only [A292035, Nat.add_sub_cancel]

end A292035

/-!
# A292037: Expansion of Product_{k>=1} ((1 + x^(2*k-1)) / (1 - x^(2*k-1)))^k.

The programs for A292037, there is no canonical definition to state claims against.
-/

/-! ## A292037.P1834266496241200282

`A320921(n)+A302982(A240012(2*n+7))`
-/

namespace A292037.P1834266496241200282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320921 n + A302982 (A240012 (2 * n + 7)).toNat

end

end A292037.P1834266496241200282

/-!
# A292042: G.f.: Re((i*x; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292042, there is no canonical definition to state claims against.
-/

/-! ## A292042.P1460288688440377942

`A292052(n)+A278399(n)`
-/

namespace A292042.P1460288688440377942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292052 n + A278399 n

end

end A292042.P1460288688440377942

/-! ## A292042.P10841544130804152976

`A278399(n)-A292043(n)`
-/

namespace A292042.P10841544130804152976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278399 n - A292043 n

end

end A292042.P10841544130804152976

/-! ## A292042.P4149681391299752965

`A292043(n)-A278400(n)`
-/

namespace A292042.P4149681391299752965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 n - A278400 n

end

end A292042.P4149681391299752965

/-! ## A292042.P5087411302547024388

`-(A292052(n)+A278400(n))`
-/

namespace A292042.P5087411302547024388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A292052 n + A278400 n)

end

end A292042.P5087411302547024388

/-! ## A292042.P4332539835951148548

`(A278399(n)-A278400(n))/2`
-/

namespace A292042.P4332539835951148548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278399 n - A278400 n : ℚ) / 2

end

end A292042.P4332539835951148548

/-! ## A292042.P9367373637624008686

`2*A372703(n)-A067661(n)`
-/

namespace A292042.P9367373637624008686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A372703 n - A067661 n

end

end A292042.P9367373637624008686

/-!
# A292043: G.f.: Im((i*x; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292043, there is no canonical definition to state claims against.
-/

/-! ## A292043.P3623332482081344211

`-A292052(n)`
-/

namespace A292043.P3623332482081344211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292052 n

end

end A292043.P3623332482081344211

/-! ## A292043.P1353671181090015680

`A292042(n)+A278400(n)`
-/

namespace A292043.P1353671181090015680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 n + A278400 n

end

end A292043.P1353671181090015680

/-! ## A292043.P14823785752385378312

`A278399(n)-A292042(n)`
-/

namespace A292043.P14823785752385378312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278399 n - A292042 n

end

end A292043.P14823785752385378312

/-! ## A292043.P4887013809268414468

`A057428(n)*A292052(n)`
-/

namespace A292043.P4887013809268414468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A292052 n

end

end A292043.P4887013809268414468

/-! ## A292043.P16963589504431053502

`A153881(n+1)*A292052(n)`
-/

namespace A292043.P16963589504431053502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A292052 n

end

end A292043.P16963589504431053502

/-! ## A292043.P5973034351175144658

`A292052(n)/A057428(n+1)`
-/

namespace A292043.P5973034351175144658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292052 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A292043.P5973034351175144658

/-! ## A292043.P16055504208108528848

`(A278400(n)+A278399(n))/2`
-/

namespace A292043.P16055504208108528848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278400 n + A278399 n : ℚ) / 2

end

end A292043.P16055504208108528848

/-! ## A292043.P17595265462531078303

`A278400(n*char[1])*A292052(n)`
-/

namespace A292043.P17595265462531078303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278400 (n * (if ∃ j, f1 j = n then 1 else 0)) * A292052 n

end

end A292043.P17595265462531078303

/-! ## A292043.P15106898522170997172

`A292149(A000120(n+1))-A292052(n)`
-/

namespace A292043.P15106898522170997172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292149 (A000120 (n + 1)).toNat - A292052 n

end

end A292043.P15106898522170997172

/-! ## A292043.P16741386953333280774

`A278399(n)+A292052(n)+A278400(n)`
-/

namespace A292043.P16741386953333280774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278399 n + (A292052 n + A278400 n)

end

end A292043.P16741386953333280774

/-! ## A292043.P8137727949494478347

`A292152(A139337(n))-A292052(n)`
-/

namespace A292043.P8137727949494478347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292152 (A139337 n).toNat - A292052 n

end

end A292043.P8137727949494478347

/-!
# A292044: Wiener index of the n-halved cube graph.

The programs for A292044, the canonical program `A292044.P11746342970775384918` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292044 has offset 1).

The definition of A292044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292044.P5421275284894695266

`ogf((x-2x^2)/(1-8x+16x^2))`
-/

namespace A292044.P5421275284894695266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -8, 16] n

end

end A292044.P5421275284894695266

namespace A292044

/-- `ogf((x-2x^2)/(1-8x+16x^2))` -/
def P5421275284894695266.Spec : Prop :=
  ∀ n, P5421275284894695266.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P11746342970775384918

`8*a(n-1)-16*a(n-2)` with `a(0)=0, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292044

/-- `8*a(n-1)-16*a(n-2)` -/
def P11746342970775384918.Spec : Prop :=
  ∀ n, P11746342970775384918.a n = A292044 (n + 1)

theorem P11746342970775384918.correct : P11746342970775384918.Spec := by
  intro n
  simp only [A292044, Nat.add_sub_cancel]

end A292044

/-! ## A292044.P11374863864554374700

`floor((n+1)*4^n/8)`
-/

namespace A292044.P11374863864554374700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) * ((4 ^ n : ℚ) / 8)⌋

end

end A292044.P11374863864554374700

namespace A292044

/-- `floor((n+1)*4^n/8)` -/
def P11374863864554374700.Spec : Prop :=
  ∀ n, P11374863864554374700.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P15038051719784602243

`(4/n+4)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A292044.P15038051719784602243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (4 / (n : ℚ) + 4) * a (n - 1)

end

end A292044.P15038051719784602243

namespace A292044

/-- `(4/n+4)*a(n-1)` -/
def P15038051719784602243.Spec : Prop :=
  ∀ n, P15038051719784602243.a n = (A292044 (n + 1) : ℚ)

end A292044

/-! ## A292044.P17890769151431144428

`record[ceil((n+3)*(-2)^(n-3))]`
-/

namespace A292044.P17890769151431144428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292044.P17890769151431144428

namespace A292044

/-- `record[ceil((n+3)*(-2)^(n-3))]` -/
def P17890769151431144428.Spec : Prop :=
  ∀ n, P17890769151431144428.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P17301182554048346390

`round(record[(n+3)*(-2)^(n-3)])`
-/

namespace A292044.P17301182554048346390
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * (-2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A292044.P17301182554048346390

namespace A292044

/-- `round(record[(n+3)*(-2)^(n-3)])` -/
def P17301182554048346390.Spec : Prop :=
  ∀ n, P17301182554048346390.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P1838976790389719961

`∑{#}[n, C(n, #)*A119916(#)]`
-/

namespace A292044.P1838976790389719961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A119916 k

end

end A292044.P1838976790389719961

namespace A292044

/-- `∑{#}[n, C(n, #)*A119916(#)]` -/
def P1838976790389719961.Spec : Prop :=
  ∀ n, P1838976790389719961.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P12524395082626865027

`(n+1)/2*A131577(n)²`
-/

namespace A292044.P12524395082626865027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A131577 n ^ 2 : ℚ)

end

end A292044.P12524395082626865027

namespace A292044

/-- `(n+1)/2*A131577(n)²` -/
def P12524395082626865027.Spec : Prop :=
  ∀ n, P12524395082626865027.a n = (A292044 (n + 1) : ℚ)

end A292044

/-! ## A292044.P816145609687870547

`2^n/2*Δ[A139756(n)]`
-/

namespace A292044.P816145609687870547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A292044.P816145609687870547

namespace A292044

/-- `2^n/2*Δ[A139756(n)]` -/
def P816145609687870547.Spec : Prop :=
  ∀ n, P816145609687870547.a n = (A292044 (n + 1) : ℚ)

end A292044

/-! ## A292044.P2830898563069919866

`A166444(2*n)/2*(n+1)`
-/

namespace A292044.P2830898563069919866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166444 (2 * n) : ℚ) / 2 * (n + 1 : ℚ)

end

end A292044.P2830898563069919866

namespace A292044

/-- `A166444(2*n)/2*(n+1)` -/
def P2830898563069919866.Spec : Prop :=
  ∀ n, P2830898563069919866.a n = (A292044 (n + 1) : ℚ)

end A292044

/-! ## A292044.P799151203265632249

`2^(n-1)*A049610(n+1)`
-/

namespace A292044.P799151203265632249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A049610 (n + 1) : ℚ)

end

end A292044.P799151203265632249

namespace A292044

/-- `2^(n-1)*A049610(n+1)` -/
def P799151203265632249.Spec : Prop :=
  ∀ n, P799151203265632249.a n = (A292044 (n + 1) : ℚ)

end A292044

/-! ## A292044.P5028983059129404320

`A082134(n)+A000431(n)`
-/

namespace A292044.P5028983059129404320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082134 n + A000431 n

end

end A292044.P5028983059129404320

namespace A292044

/-- `A082134(n)+A000431(n)` -/
def P5028983059129404320.Spec : Prop :=
  ∀ n, P5028983059129404320.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P1483735527469012073

`Δ[A139756(n)]*A131577(n)`
-/

namespace A292044.P1483735527469012073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A131577 n

end

end A292044.P1483735527469012073

namespace A292044

/-- `Δ[A139756(n)]*A131577(n)` -/
def P1483735527469012073.Spec : Prop :=
  ∀ n, P1483735527469012073.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P13498575854398366893

`A011782(n)*A336102(2*n)`
-/

namespace A292044.P13498575854398366893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A336102 (2 * n)

end

end A292044.P13498575854398366893

namespace A292044

/-- `A011782(n)*A336102(2*n)` -/
def P13498575854398366893.Spec : Prop :=
  ∀ n, P13498575854398366893.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P8096252527708029070

`A011782(n)*A349050(2*n)`
-/

namespace A292044.P8096252527708029070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A349050 (2 * n)

end

end A292044.P8096252527708029070

namespace A292044

/-- `A011782(n)*A349050(2*n)` -/
def P8096252527708029070.Spec : Prop :=
  ∀ n, P8096252527708029070.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P4511859056225565021

`A131577(n)*A336102(2*n)`
-/

namespace A292044.P4511859056225565021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n * A336102 (2 * n)

end

end A292044.P4511859056225565021

namespace A292044

/-- `A131577(n)*A336102(2*n)` -/
def P4511859056225565021.Spec : Prop :=
  ∀ n, P4511859056225565021.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P13147524075341229077

`Δ[A011782(n)]*Δ[A097067(n)]`
-/

namespace A292044.P13147524075341229077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097067 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A292044.P13147524075341229077

namespace A292044

/-- `Δ[A011782(n)]*Δ[A097067(n)]` -/
def P13147524075341229077.Spec : Prop :=
  ∀ n, P13147524075341229077.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P9400404617199015534

`abs(A168150(n+1))*A131577(n)`
-/

namespace A292044.P9400404617199015534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168150 (n + 1)| * A131577 n

end

end A292044.P9400404617199015534

namespace A292044

/-- `abs(A168150(n+1))*A131577(n)` -/
def P9400404617199015534.Spec : Prop :=
  ∀ n, P9400404617199015534.a n = A292044 (n + 1)

end A292044

/-! ## A292044.P1538581531058739376

`(A002697(n)+A131577(n)²)/2`
-/

namespace A292044.P1538581531058739376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002697 n + A131577 n ^ 2 : ℚ) / 2

end

end A292044.P1538581531058739376

namespace A292044

/-- `(A002697(n)+A131577(n)²)/2` -/
def P1538581531058739376.Spec : Prop :=
  ∀ n, P1538581531058739376.a n = (A292044 (n + 1) : ℚ)

end A292044

/-! ## A292044.P7315784611359485671

`(A131577(n)/2)²*A103517(n)`
-/

namespace A292044.P7315784611359485671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A131577 n : ℚ) / 2) ^ 2 * (A103517 n : ℚ)

end

end A292044.P7315784611359485671

namespace A292044

/-- `(A131577(n)/2)²*A103517(n)` -/
def P7315784611359485671.Spec : Prop :=
  ∀ n, P7315784611359485671.a n = (A292044 (n + 1) : ℚ)

end A292044

/-!
# A292045: Wiener index of the n X n X n grid graph.

The programs for A292045, the canonical program `A292045.P3582807488034710193` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292045 has offset 1).

The definition of A292045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292045.P3582807488034710193

`n*(n+2)*(n+1)^5/2`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292045

/-- `n*(n+2)*(n+1)^5/2` -/
def P3582807488034710193.Spec : Prop :=
  ∀ n, P3582807488034710193.a n = (A292045 (n + 1) : ℚ)

end A292045

/-! ## A292045.P12431285892664244603

`C((n+1)², 2)*Δ[∑[n]²]`
-/

namespace A292045.P12431285892664244603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((n + 1) ^ 2) 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A292045.P12431285892664244603

namespace A292045

/-- `C((n+1)², 2)*Δ[∑[n]²]` -/
def P12431285892664244603.Spec : Prop :=
  ∀ n, P12431285892664244603.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P7040424264634054912

`(n+1)^3*C((n+1)², 2)`
-/

namespace A292045.P7040424264634054912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3 * Nat.choose ((n + 1) ^ 2) 2

end

end A292045.P7040424264634054912

namespace A292045

/-- `(n+1)^3*C((n+1)², 2)` -/
def P7040424264634054912.Spec : Prop :=
  ∀ n, (P7040424264634054912.a n : ℤ) = A292045 (n + 1)

end A292045

/-! ## A292045.P5151250201682624647

`((n+1)^3)²*sinh(log(n+1))`
-/

namespace A292045.P5151250201682624647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 3) ^ 2 : ℝ) * Real.sinh (Real.log (n + 1 : ℝ))

end

end A292045.P5151250201682624647

namespace A292045

/-- `((n+1)^3)²*sinh(log(n+1))` -/
def P5151250201682624647.Spec : Prop :=
  ∀ n, P5151250201682624647.a n = (A292045 (n + 1) : ℝ)

end A292045

/-! ## A292045.P13711740728546593286

`C((n+1)², 2)*(n+1)*(n+1)*(n+1)`
-/

namespace A292045.P13711740728546593286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2 * (n + 1) * (n + 1) * (n + 1)

end

end A292045.P13711740728546593286

namespace A292045

/-- `C((n+1)², 2)*(n+1)*(n+1)*(n+1)` -/
def P13711740728546593286.Spec : Prop :=
  ∀ n, (P13711740728546593286.a n : ℤ) = A292045 (n + 1)

end A292045

/-! ## A292045.P13509900222406968731

`n/2*lcm(n+2, (n+1)²)*(n+1)*(n+1)*(n+1)`
-/

namespace A292045.P13509900222406968731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (Nat.lcm (n + 2) ((n + 1) ^ 2) : ℚ) * (n + 1 : ℚ) * (n + 1 : ℚ) * (n + 1 : ℚ)

end

end A292045.P13509900222406968731

namespace A292045

/-- `n/2*lcm(n+2, (n+1)²)*(n+1)*(n+1)*(n+1)` -/
def P13509900222406968731.Spec : Prop :=
  ∀ n, P13509900222406968731.a n = (A292045 (n + 1) : ℚ)

end A292045

/-! ## A292045.P9891890203960708131

`n*A168351(n+1)`
-/

namespace A292045.P9891890203960708131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168351 (n + 1)

end

end A292045.P9891890203960708131

namespace A292045

/-- `n*A168351(n+1)` -/
def P9891890203960708131.Spec : Prop :=
  ∀ n, P9891890203960708131.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P18355268578508369968

`(n+1)²²*A027480(n)`
-/

namespace A292045.P18355268578508369968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) * A027480 n

end

end A292045.P18355268578508369968

namespace A292045

/-- `(n+1)²²*A027480(n)` -/
def P18355268578508369968.Spec : Prop :=
  ∀ n, P18355268578508369968.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P2782624620667442723

`∑[n+1]*A085538(n+1)`
-/

namespace A292045.P2782624620667442723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A085538 (n + 1)

end

end A292045.P2782624620667442723

namespace A292045

/-- `∑[n+1]*A085538(n+1)` -/
def P2782624620667442723.Spec : Prop :=
  ∀ n, P2782624620667442723.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P11455166662815480923

`(n+1)/2*A136038(n+1)`
-/

namespace A292045.P11455166662815480923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A136038 (n + 1) : ℚ)

end

end A292045.P11455166662815480923

namespace A292045

/-- `(n+1)/2*A136038(n+1)` -/
def P11455166662815480923.Spec : Prop :=
  ∀ n, P11455166662815480923.a n = (A292045 (n + 1) : ℚ)

end A292045

/-! ## A292045.P4880647332344737822

`(n+1)^3*A083374(n+1)`
-/

namespace A292045.P4880647332344737822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) * A083374 (n + 1)

end

end A292045.P4880647332344737822

namespace A292045

/-- `(n+1)^3*A083374(n+1)` -/
def P4880647332344737822.Spec : Prop :=
  ∀ n, P4880647332344737822.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P17716659765549080416

`A191494(n)-A191484(n)`
-/

namespace A292045.P17716659765549080416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191494 n - A191484 n

end

end A292045.P17716659765549080416

namespace A292045

/-- `A191494(n)-A191484(n)` -/
def P17716659765549080416.Spec : Prop :=
  ∀ n, P17716659765549080416.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P126413280070047571

`A191900(n)-A191902(n)`
-/

namespace A292045.P126413280070047571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191900 n - A191902 n

end

end A292045.P126413280070047571

namespace A292045

/-- `A191900(n)-A191902(n)` -/
def P126413280070047571.Spec : Prop :=
  ∀ n, P126413280070047571.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P487087056049265447

`A006002(n)*A179824(n+2)`
-/

namespace A292045.P487087056049265447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n * A179824 (n + 2)

end

end A292045.P487087056049265447

namespace A292045

/-- `A006002(n)*A179824(n+2)` -/
def P487087056049265447.Spec : Prop :=
  ∀ n, P487087056049265447.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P7023645997212806611

`A168029(n+1)-A021003(n+1)`
-/

namespace A292045.P7023645997212806611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 (n + 1) - A021003 (n + 1)

end

end A292045.P7023645997212806611

namespace A292045

/-- `A168029(n+1)-A021003(n+1)` -/
def P7023645997212806611.Spec : Prop :=
  ∀ n, P7023645997212806611.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P9533743295978136781

`A190636(n+1)-A052460(n+1)`
-/

namespace A292045.P9533743295978136781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190636 (n + 1) - A052460 (n + 1)

end

end A292045.P9533743295978136781

namespace A292045

/-- `A190636(n+1)-A052460(n+1)` -/
def P9533743295978136781.Spec : Prop :=
  ∀ n, P9533743295978136781.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P6531028072450654305

`A083374(n+1)*A184628(n+1)`
-/

namespace A292045.P6531028072450654305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083374 (n + 1) * A184628 (n + 1)

end

end A292045.P6531028072450654305

namespace A292045

/-- `A083374(n+1)*A184628(n+1)` -/
def P6531028072450654305.Spec : Prop :=
  ∀ n, P6531028072450654305.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P5312352616722028039

`A208954(n+1)*A230628(n+1)`
-/

namespace A292045.P5312352616722028039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208954 (n + 1) * A230628 (n + 1)

end

end A292045.P5312352616722028039

namespace A292045

/-- `A208954(n+1)*A230628(n+1)` -/
def P5312352616722028039.Spec : Prop :=
  ∀ n, P5312352616722028039.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P11835084612686065721

`A168364(n+1)-(n+1)²*A000578(n+1)`
-/

namespace A292045.P11835084612686065721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168364 (n + 1) - ((n + 1) ^ 2 : ℤ) * A000578 (n + 1)

end

end A292045.P11835084612686065721

namespace A292045

/-- `A168364(n+1)-(n+1)²*A000578(n+1)` -/
def P11835084612686065721.Spec : Prop :=
  ∀ n, P11835084612686065721.a n = A292045 (n + 1)

end A292045

/-! ## A292045.P9192952824914236073

`∑[n]*A101362(n+1)`
-/

namespace A292045.P9192952824914236073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A101362 (n + 1)

end

end A292045.P9192952824914236073

namespace A292045

/-- `∑[n]*A101362(n+1)` -/
def P9192952824914236073.Spec : Prop :=
  ∀ n, P9192952824914236073.a n = A292045 (n + 1)

end A292045

/-!
# A292046: List of distinct values of A072464.

The programs for A292046, the canonical program `A292046.P14422673525401607874` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292046 has offset 1).

The definition of A292046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A292046.P14422673525401607874

`a(floor(log2(n)))+1+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292046

/-- `a(floor(log2(n)))+1+n` -/
def P14422673525401607874.Spec : Prop :=
  ∀ n, (P14422673525401607874.a n : ℤ) = A292046 (n + 1)

theorem P14422673525401607874.correct : P14422673525401607874.Spec := by
  intro n
  simp only [A292046, Nat.add_sub_cancel]

end A292046

/-! ## A292046.P18148287453071442470

`a(ceil(log2(n+1))-1)+n+1` with `a(0)=1`
-/

namespace A292046.P18148287453071442470
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (⌈Real.logb 2 (n + 1 : ℝ)⌉ - 1).toNat + (n + 1)

end

end A292046.P18148287453071442470

namespace A292046

/-- `a(ceil(log2(n+1))-1)+n+1` -/
def P18148287453071442470.Spec : Prop :=
  ∀ n, (P18148287453071442470.a n : ℤ) = A292046 (n + 1)

end A292046

/-! ## A292046.P6498546523747805531

`abs(a(∑[char[2^n]]-1)+n)+1` with `a(0)=1`
-/

namespace A292046.P6498546523747805531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + n + 1

end

end A292046.P6498546523747805531

namespace A292046

/-- `abs(a(∑[char[2^n]]-1)+n)+1` -/
def P6498546523747805531.Spec : Prop :=
  ∀ n, (P6498546523747805531.a n : ℤ) = A292046 (n + 1)

end A292046

/-! ## A292046.P18133477712420181829

`n-floor(-a(∑[char[2^n]]-1))+1` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A292046.P18133477712420181829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (-a (∑ j ∈ Finset.range (n + 1), f1 j - 1)) + 1

end

end A292046.P18133477712420181829

namespace A292046

/-- `n-floor(-a(∑[char[2^n]]-1))+1` -/
def P18133477712420181829.Spec : Prop :=
  ∀ n, P18133477712420181829.a n = A292046 (n + 1)

end A292046

/-! ## A292046.P13473989960601159570

`∑[A293668(n)]`
-/

namespace A292046.P13473989960601159570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292046.P13473989960601159570

namespace A292046

/-- `∑[A293668(n)]` -/
def P13473989960601159570.Spec : Prop :=
  ∀ n, P13473989960601159570.a n = A292046 (n + 1)

end A292046

/-! ## A292046.P8861029721277211147

`∑[1+A255308(n)]`
-/

namespace A292046.P8861029721277211147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A255308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292046.P8861029721277211147

namespace A292046

/-- `∑[1+A255308(n)]` -/
def P8861029721277211147.Spec : Prop :=
  ∀ n, P8861029721277211147.a n = A292046 (n + 1)

end A292046

/-! ## A292046.P14867880512530082437

`∑[1-A014653(A277561(n))*A255308(n)]`
-/

namespace A292046.P14867880512530082437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014653 (A277561 n).toNat * A255308 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292046.P14867880512530082437

namespace A292046

/-- `∑[1-A014653(A277561(n))*A255308(n)]` -/
def P14867880512530082437.Spec : Prop :=
  ∀ n, P14867880512530082437.a n = A292046 (n + 1)

end A292046

/-! ## A292046.P10414684791928182818

`∑[1-(A255308(A033587(n))-A255308(n))]`
-/

namespace A292046.P10414684791928182818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A255308 (A033587 n).toNat - A255308 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292046.P10414684791928182818

namespace A292046

/-- `∑[1-(A255308(A033587(n))-A255308(n))]` -/
def P10414684791928182818.Spec : Prop :=
  ∀ n, P10414684791928182818.a n = A292046 (n + 1)

end A292046

/-!
# A292047: Triangle read by rows: T(n,k) = (-1)^k * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A292047, there is no canonical definition to state claims against.
-/

/-! ## A292047.P8223966985254953107

`A033999(A237451(n+1))*A292049(n)`
-/

namespace A292047.P8223966985254953107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A237451 (n + 1)).toNat * A292049 n

end

end A292047.P8223966985254953107

/-! ## A292047.P8325645436127227158

`A292049(n)/A033999(A237451(n+1)²)`
-/

namespace A292047.P8325645436127227158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292049 n : ℚ) / (A033999 (A237451 (n + 1) ^ 2).toNat : ℚ)

end

end A292047.P8325645436127227158

/-! ## A292047.P3785329357225456515

`A292049(n)/A033999(A237451(n+1)+2)`
-/

namespace A292047.P3785329357225456515
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292049 n : ℚ) / (A033999 (A237451 (n + 1) + 2).toNat : ℚ)

end

end A292047.P3785329357225456515

/-! ## A292047.P14052104553023749378

`A292142(n)%A007978(A147675(n+1))`
-/

namespace A292047.P14052104553023749378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292142 n) (A007978 (A147675 (n + 1)).toNat)

end

end A292047.P14052104553023749378

/-! ## A292047.P184105306030998299

`A292143(n)%A323082(p?[5*n²+2])*A033999(A237451(n+1))`
-/

namespace A292047.P184105306030998299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292143 n) (A323082 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))) * A033999 (A237451 (n + 1)).toNat

end

end A292047.P184105306030998299

/-!
# A292049: Triangle read by rows: T(n,k) = (-1)^(k-1) * T(n-k,k-1) + T(n-k,k) with T(0,0) = 1 for 0 <= k <= A003056(n).

The programs for A292049, there is no canonical definition to state claims against.
-/

/-! ## A292049.P5603746602704859783

`A033999(A237451(n+1))*A292047(n)`
-/

namespace A292049.P5603746602704859783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A237451 (n + 1)).toNat * A292047 n

end

end A292049.P5603746602704859783

/-! ## A292049.P17925140916700164303

`A292143(n)%A323082(p?[5*n²+2])`
-/

namespace A292049.P17925140916700164303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292143 n) (A323082 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A292049.P17925140916700164303

/-! ## A292049.P1648704225046352704

`∑{d}[A292143(n), A292117(A292113(#))]`
-/

namespace A292049.P1648704225046352704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A292117 (A292113 d).toNat

end

end A292049.P1648704225046352704

/-! ## A292049.P3133112396907756736

`A292143(n)%A010708(A292156(n+1))`
-/

namespace A292049.P3133112396907756736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292143 n) (A010708 (A292156 (n + 1)).toNat)

end

end A292049.P3133112396907756736

/-! ## A292049.P12145864358313936716

`A292143(n)%A006530(A007283(n))`
-/

namespace A292049.P12145864358313936716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292143 n) (A006530 (A007283 n).toNat)

end

end A292049.P12145864358313936716

/-!
# A292050: Matula-Goebel numbers of semi-binary rooted trees.

The programs for A292050, there is no canonical definition to state claims against.
-/

/-! ## A292050.P12504681707828766816

`lt[A355661(n+1), 3]+1`
-/

namespace A292050.P12504681707828766816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355661 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A292050.P12504681707828766816

/-! ## A292050.P9558327378373023443

`A037143(A318991(n+1)%A355732(2*n+3))`
-/

namespace A292050.P9558327378373023443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037143 (Int.tmod (A318991 (n + 1)) (A355732 (2 * n + 3))).toNat

end

end A292050.P9558327378373023443

/-! ## A292050.P821836248771940168

`eq[A197219(A000001(n)), A325825(3*n+5)]`
-/

namespace A292050.P821836248771940168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197219 (A000001 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325825 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A292050.P821836248771940168

/-! ## A292050.P17182158181346885508

`lt[A157985(n+1), A330994(A160552(n))]`
-/

namespace A292050.P17182158181346885508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330994 (A160552 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A292050.P17182158181346885508

/-! ## A292050.P11767614279523920917

`A037143(A318991(n+1))%A309903(n+4)`
-/

namespace A292050.P11767614279523920917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037143 (A318991 (n + 1)).toNat) (A309903 (n + 4))

end

end A292050.P11767614279523920917

/-!
# A292051: Wiener index of the n X n black bishop graph.

The programs for A292051, the canonical program `A292051.P10095635029363457211` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292051 has offset 1).

The definition of A292051 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292051.P10095635029363457211

`ogf((x+12x^2+12x^3+18x^4+3x^5+2x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292051

/-- `ogf((x+12x^2+12x^3+18x^4+3x^5+2x^6)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P10095635029363457211.Spec : Prop :=
  ∀ n, P10095635029363457211.a n = A292051 (n + 1)

theorem P10095635029363457211.correct : P10095635029363457211.Spec := by
  intro n
  simp only [A292051, Nat.add_sub_cancel]

end A292051

/-! ## A292051.P4710405735727671808

`A212893(n)-A178946(n+1)`
-/

namespace A292051.P4710405735727671808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 n - A178946 (n + 1)

end

end A292051.P4710405735727671808

namespace A292051

/-- `A212893(n)-A178946(n+1)` -/
def P4710405735727671808.Spec : Prop :=
  ∀ n, P4710405735727671808.a n = A292051 (n + 1)

end A292051

/-! ## A292051.P3104016659226844492

`A212893(n)-∑[A074377(n)+1]`
-/

namespace A292051.P3104016659226844492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074377 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212893 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292051.P3104016659226844492

namespace A292051

/-- `A212893(n)-∑[A074377(n)+1]` -/
def P3104016659226844492.Spec : Prop :=
  ∀ n, P3104016659226844492.a n = A292051 (n + 1)

end A292051

/-! ## A292051.P4656066151131740216

`∑[A171218(A052928(n))+A002412(n)]`
-/

namespace A292051.P4656066151131740216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171218 (A052928 n).toNat + A002412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292051.P4656066151131740216

namespace A292051

/-- `∑[A171218(A052928(n))+A002412(n)]` -/
def P4656066151131740216.Spec : Prop :=
  ∀ n, P4656066151131740216.a n = A292051 (n + 1)

end A292051

/-! ## A292051.P7771992285546068566

`A176060(n)-Δ[(1-A158416(n))²]`
-/

namespace A292051.P7771992285546068566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A158416 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176060 n - (f1 (n + 1) - f1 n)

end

end A292051.P7771992285546068566

namespace A292051

/-- `A176060(n)-Δ[(1-A158416(n))²]` -/
def P7771992285546068566.Spec : Prop :=
  ∀ n, P7771992285546068566.a n = A292051 (n + 1)

end A292051

/-! ## A292051.P13487779236113440148

`∑[A059270(n)-A014682(n²)]`
-/

namespace A292051.P13487779236113440148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059270 n - A014682 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292051.P13487779236113440148

namespace A292051

/-- `∑[A059270(n)-A014682(n²)]` -/
def P13487779236113440148.Spec : Prop :=
  ∀ n, P13487779236113440148.a n = A292051 (n + 1)

end A292051

/-! ## A292051.P7236777800235008693

`A000982(n+1)²-A060432(A000982(n+1))`
-/

namespace A292051.P7236777800235008693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 (n + 1) ^ 2 - A060432 (A000982 (n + 1)).toNat

end

end A292051.P7236777800235008693

namespace A292051

/-- `A000982(n+1)²-A060432(A000982(n+1))` -/
def P7236777800235008693.Spec : Prop :=
  ∀ n, P7236777800235008693.a n = A292051 (n + 1)

end A292051

/-!
# A292052: G.f.: Im((-i*x; x)_inf), where (a; q)_inf is the q-Pochhammer symbol, i = sqrt(-1).

The programs for A292052, there is no canonical definition to state claims against.
-/

/-! ## A292052.P15485622927463321483

`-A292043(n)`
-/

namespace A292052.P15485622927463321483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A292043 n

end

end A292052.P15485622927463321483

/-! ## A292052.P11074932886226316787

`A292042(n)-A278399(n)`
-/

namespace A292052.P11074932886226316787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292042 n - A278399 n

end

end A292052.P11074932886226316787

/-! ## A292052.P10827586292544645309

`A057428(n)*A292043(n)`
-/

namespace A292052.P10827586292544645309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A292043 n

end

end A292052.P10827586292544645309

/-! ## A292052.P8699640051495865743

`A153881(n+1)*A292043(n)`
-/

namespace A292052.P8699640051495865743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A292043 n

end

end A292052.P8699640051495865743

/-! ## A292052.P10215403999980232833

`A292043(n)/A057428(n+1)`
-/

namespace A292052.P10215403999980232833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292043 n : ℚ) / (A057428 (n + 1) : ℚ)

end

end A292052.P10215403999980232833

/-! ## A292052.P13934251462472275161

`and(4, A228085(n))-A292043(n)`
-/

namespace A292052.P13934251462472275161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A228085 n) - A292043 n

end

end A292052.P13934251462472275161

/-! ## A292052.P5180091558276933598

`A292043(Δ[comp[n²]])*A292043(n)`
-/

namespace A292052.P5180091558276933598
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A292043 n

end

end A292052.P5180091558276933598

/-! ## A292052.P10612492644221365615

`A292043(n)-(A278400(n)+A278399(n))`
-/

namespace A292052.P10612492644221365615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 n - (A278400 n + A278399 n)

end

end A292052.P10612492644221365615

/-! ## A292052.P5239210863226203904

`A292043(n)/A292043(A160338(n+1)+1)`
-/

namespace A292052.P5239210863226203904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292043 n : ℚ) / (A292043 (A160338 (n + 1) + 1).toNat : ℚ)

end

end A292052.P5239210863226203904

/-! ## A292052.P5071585856408087885

`Δ[A292043(n)]-A292043(n+1)`
-/

namespace A292052.P5071585856408087885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A292043 (n + 1)

end

end A292052.P5071585856408087885

/-! ## A292052.P1838878016318494771

`C(n, A002387(n))-A292043(n)`
-/

namespace A292052.P1838878016318494771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (A002387 n).toNat : ℤ) - A292043 n

end

end A292052.P1838878016318494771

/-!
# A292053: Wiener index of the n X n king graph.

The programs for A292053, the canonical program `A292053.P10650577323359149645` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292053 has offset 1).

The definition of A292053 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292053.P7546403642471474788

`ogf((6x+16x^2+6x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A292053.P7546403642471474788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 16, 6] [1, -6, 15, -20, 15, -6, 1] n

end

end A292053.P7546403642471474788

namespace A292053

/-- `ogf((6x+16x^2+6x^3)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P7546403642471474788.Spec : Prop :=
  ∀ n, P7546403642471474788.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P10650577323359149645

`n*(n+1)*(n+2)*(7*(n+1)²+2)/30`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292053

/-- `n*(n+1)*(n+2)*(7*(n+1)²+2)/30` -/
def P10650577323359149645.Spec : Prop :=
  ∀ n, P10650577323359149645.a n = (A292053 (n + 1) : ℚ)

end A292053

/-! ## A292053.P3689482147615039385

`∑[A008384(n)-A160747(n)]`
-/

namespace A292053.P3689482147615039385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008384 n - A160747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P3689482147615039385

namespace A292053

/-- `∑[A008384(n)-A160747(n)]` -/
def P3689482147615039385.Spec : Prop :=
  ∀ n, P3689482147615039385.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P15993555509203343531

`∑[∑[A143166(n)+A061317(n)]]`
-/

namespace A292053.P15993555509203343531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n + A061317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P15993555509203343531

namespace A292053

/-- `∑[∑[A143166(n)+A061317(n)]]` -/
def P15993555509203343531.Spec : Prop :=
  ∀ n, P15993555509203343531.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P614909704137872556

`∑[A219086(n)+∑[A005900(n)]]`
-/

namespace A292053.P614909704137872556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005900 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P614909704137872556

namespace A292053

/-- `∑[A219086(n)+∑[A005900(n)]]` -/
def P614909704137872556.Spec : Prop :=
  ∀ n, P614909704137872556.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P16574958005418373083

`∑[A110450(n)+∑[A143166(n)]]`
-/

namespace A292053.P16574958005418373083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110450 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P16574958005418373083

namespace A292053

/-- `∑[A110450(n)+∑[A143166(n)]]` -/
def P16574958005418373083.Spec : Prop :=
  ∀ n, P16574958005418373083.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P12908641370003458879

`∑[∑[A054410(n)-A008458(n)]]`
-/

namespace A292053.P12908641370003458879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054410 n - A008458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P12908641370003458879

namespace A292053

/-- `∑[∑[A054410(n)-A008458(n)]]` -/
def P12908641370003458879.Spec : Prop :=
  ∀ n, P12908641370003458879.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P10528755931471771298

`A213546(n+1)-A213556(n+1)`
-/

namespace A292053.P10528755931471771298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213546 (n + 1) - A213556 (n + 1)

end

end A292053.P10528755931471771298

namespace A292053

/-- `A213546(n+1)-A213556(n+1)` -/
def P10528755931471771298.Spec : Prop :=
  ∀ n, P10528755931471771298.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P3160144300769855623

`A387429(n+1)-A337895(n+1)`
-/

namespace A292053.P3160144300769855623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387429 (n + 1) - A337895 (n + 1)

end

end A292053.P3160144300769855623

namespace A292053

/-- `A387429(n+1)-A337895(n+1)` -/
def P3160144300769855623.Spec : Prop :=
  ∀ n, P3160144300769855623.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P10558928835862559715

`∑[A006325(n+1)*7-∑[n]]`
-/

namespace A292053.P10558928835862559715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) * 7 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P10558928835862559715

namespace A292053

/-- `∑[A006325(n+1)*7-∑[n]]` -/
def P10558928835862559715.Spec : Prop :=
  ∀ n, P10558928835862559715.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P11661004621840781631

`∑[∑[A061349(2*n)]]`
-/

namespace A292053.P11661004621840781631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061349 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P11661004621840781631

namespace A292053

/-- `∑[∑[A061349(2*n)]]` -/
def P11661004621840781631.Spec : Prop :=
  ∀ n, P11661004621840781631.a n = A292053 (n + 1)

end A292053

/-! ## A292053.P15785929610546946266

`∑[A006325(n+1)+∑[A006003(2*n)]]`
-/

namespace A292053.P15785929610546946266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292053.P15785929610546946266

namespace A292053

/-- `∑[A006325(n+1)+∑[A006003(2*n)]]` -/
def P15785929610546946266.Spec : Prop :=
  ∀ n, P15785929610546946266.a n = A292053 (n + 1)

end A292053

/-!
# A292055: Wiener index of the n-Mycielski graph.

The programs for A292055, the canonical program `A292055.P14260670670481731691` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292055 has offset 1).

The definition of A292055 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292055.P16004867402666163572

`ogf((x+5x^2-25x^3+10x^4)/(1-10x+35x^2-50x^3+24x^4))`
-/

namespace A292055.P16004867402666163572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5, -25, 10] [1, -10, 35, -50, 24] n

end

end A292055.P16004867402666163572

namespace A292055

/-- `ogf((x+5x^2-25x^3+10x^4)/(1-10x+35x^2-50x^3+24x^4))` -/
def P16004867402666163572.Spec : Prop :=
  ∀ n, P16004867402666163572.a n = A292055 (n + 1)

end A292055

/-! ## A292055.P14260670670481731691

`10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` with `a(0)=0, a(1)=1, a(2)=15, a(3)=90, a(4)=435`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292055

/-- `10*a(n-1)-35*a(n-2)+50*a(n-3)-24*a(n-4)` -/
def P14260670670481731691.Spec : Prop :=
  ∀ n, P14260670670481731691.a n = A292055 (n + 1)

theorem P14260670670481731691.correct : P14260670670481731691.Spec := by
  intro n
  simp only [A292055, Nat.add_sub_cancel]

end A292055

/-!
# A292056: Wiener index of the n-Keller graph.

The programs for A292056, the canonical program `A292056.P16646033030615675885` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292056 has offset 1).

The definition of A292056 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292056.P16646033030615675885

`4^(n+1)*(4^(n+1)+3^(n+1)+n+1-2)/2`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292056

/-- `4^(n+1)*(4^(n+1)+3^(n+1)+n+1-2)/2` -/
def P16646033030615675885.Spec : Prop :=
  ∀ n, P16646033030615675885.a n = (A292056 (n + 1) : ℚ)

end A292056

/-! ## A292056.P11321519314586650798

`A242026(2*(n+1))-A284838(n+1)`
-/

namespace A292056.P11321519314586650798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242026 (2 * (n + 1)) - A284838 (n + 1)

end

end A292056.P11321519314586650798

namespace A292056

/-- `A242026(2*(n+1))-A284838(n+1)` -/
def P11321519314586650798.Spec : Prop :=
  ∀ n, P11321519314586650798.a n = A292056 (n + 1)

end A292056

/-!
# A292057: Wiener index of the n X n queen graph.

The programs for A292057, the canonical program `A292057.P12736380069118471021` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292057 has offset 1).

The definition of A292057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292057.P17429796087512650206

`ogf((6x+14x^2+4x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A292057.P17429796087512650206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 14, 4] [1, -5, 10, -10, 5, -1] n

end

end A292057.P17429796087512650206

namespace A292057

/-- `ogf((6x+14x^2+4x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P17429796087512650206.Spec : Prop :=
  ∀ n, P17429796087512650206.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P18348544041206445403

`n*(n+1)*(3*(n+1)²-2*(n+1)+1)/3`
-/

namespace A292057.P18348544041206445403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 1) : ℤ) * ((3 * (n + 1) ^ 2 : ℤ) - (2 * (n + 1) : ℤ) + 1) : ℚ) / 3

end

end A292057.P18348544041206445403

namespace A292057

/-- `n*(n+1)*(3*(n+1)²-2*(n+1)+1)/3` -/
def P18348544041206445403.Spec : Prop :=
  ∀ n, P18348544041206445403.a n = (A292057 (n + 1) : ℚ)

theorem P18348544041206445403.correct : P18348544041206445403.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A292057, Nat.add_sub_cancel, A292057.P18348544041206445403.a, A292057.P12736380069118471021.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A292057, Nat.add_sub_cancel, A292057.P18348544041206445403.a, A292057.P12736380069118471021.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A292057

/-! ## A292057.P12736380069118471021

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=6, a(2)=44, a(3)=164, a(4)=440`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292057

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P12736380069118471021.Spec : Prop :=
  ∀ n, P12736380069118471021.a n = A292057 (n + 1)

theorem P12736380069118471021.correct : P12736380069118471021.Spec := by
  intro n
  simp only [A292057, Nat.add_sub_cancel]

end A292057

/-! ## A292057.P11377553724102134520

`∑[n*∑[record[lcm(4, n)+1]]]`
-/

namespace A292057.P11377553724102134520
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292057.P11377553724102134520

namespace A292057

/-- `∑[n*∑[record[lcm(4, n)+1]]]` -/
def P11377553724102134520.Spec : Prop :=
  ∀ n, (P11377553724102134520.a n : ℤ) = A292057 (n + 1)

end A292057

/-! ## A292057.P12242341861266601384

`∑[2*n]²+2*C(n+2, 3)`
-/

namespace A292057.P12242341861266601384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * Nat.choose (n + 2) 3

end

end A292057.P12242341861266601384

namespace A292057

/-- `∑[2*n]²+2*C(n+2, 3)` -/
def P12242341861266601384.Spec : Prop :=
  ∀ n, (P12242341861266601384.a n : ℤ) = A292057 (n + 1)

end A292057

/-! ## A292057.P4567301887463468688

`a(n-1)+n*((2*n)²+n+1)` with `a(0)=0`
-/

namespace A292057.P4567301887463468688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n * ((2 * n) ^ 2 + (n + 1))

end

end A292057.P4567301887463468688

namespace A292057

/-- `a(n-1)+n*((2*n)²+n+1)` -/
def P4567301887463468688.Spec : Prop :=
  ∀ n, (P4567301887463468688.a n : ℤ) = A292057 (n + 1)

end A292057

/-! ## A292057.P12641185616004961207

`∑[2*n]²-∑[a(n-1)-2*n]` with `a(0)=0`
-/

namespace A292057.P12641185616004961207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A292057.P12641185616004961207

namespace A292057

/-- `∑[2*n]²-∑[a(n-1)-2*n]` -/
def P12641185616004961207.Spec : Prop :=
  ∀ n, P12641185616004961207.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P16039589194847350851

`A219086(n)+∑[n²]`
-/

namespace A292057.P16039589194847350851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219086 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A292057.P16039589194847350851

namespace A292057

/-- `A219086(n)+∑[n²]` -/
def P16039589194847350851.Spec : Prop :=
  ∀ n, P16039589194847350851.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P7174902924248006045

`∑[A110451(n)-n²]`
-/

namespace A292057.P7174902924248006045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110451 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292057.P7174902924248006045

namespace A292057

/-- `∑[A110451(n)-n²]` -/
def P7174902924248006045.Spec : Prop :=
  ∀ n, P7174902924248006045.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P13225109346512980477

`∑[n*A054567(n+1)]`
-/

namespace A292057.P13225109346512980477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292057.P13225109346512980477

namespace A292057

/-- `∑[n*A054567(n+1)]` -/
def P13225109346512980477.Spec : Prop :=
  ∀ n, P13225109346512980477.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P9699263457996232167

`(n+1)²²-A096000(n)`
-/

namespace A292057.P9699263457996232167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2) ^ 2 : ℤ) - A096000 n

end

end A292057.P9699263457996232167

namespace A292057

/-- `(n+1)²²-A096000(n)` -/
def P9699263457996232167.Spec : Prop :=
  ∀ n, P9699263457996232167.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P16416417914754966670

`∑[A317297(n+1)+n²]`
-/

namespace A292057.P16416417914754966670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317297 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292057.P16416417914754966670

namespace A292057

/-- `∑[A317297(n+1)+n²]` -/
def P16416417914754966670.Spec : Prop :=
  ∀ n, P16416417914754966670.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P16385561844067993869

`A011195(n)+A006002(n)`
-/

namespace A292057.P16385561844067993869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011195 n + A006002 n

end

end A292057.P16385561844067993869

namespace A292057

/-- `A011195(n)+A006002(n)` -/
def P16385561844067993869.Spec : Prop :=
  ∀ n, P16385561844067993869.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P5694827904917205262

`A178617(n)+A005902(n)`
-/

namespace A292057.P5694827904917205262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178617 n + A005902 n

end

end A292057.P5694827904917205262

namespace A292057

/-- `A178617(n)+A005902(n)` -/
def P5694827904917205262.Spec : Prop :=
  ∀ n, P5694827904917205262.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P9744146301515943877

`A186636(n)+A000447(n)`
-/

namespace A292057.P9744146301515943877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186636 n + A000447 n

end

end A292057.P9744146301515943877

namespace A292057

/-- `A186636(n)+A000447(n)` -/
def P9744146301515943877.Spec : Prop :=
  ∀ n, P9744146301515943877.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P3519123011583388681

`A268684(n)+A027445(n)`
-/

namespace A292057.P3519123011583388681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A027445 n

end

end A292057.P3519123011583388681

namespace A292057

/-- `A268684(n)+A027445(n)` -/
def P3519123011583388681.Spec : Prop :=
  ∀ n, P3519123011583388681.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P7451824881254379014

`A085540(n)-A006331(n)`
-/

namespace A292057.P7451824881254379014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085540 n - A006331 n

end

end A292057.P7451824881254379014

namespace A292057

/-- `A085540(n)-A006331(n)` -/
def P7451824881254379014.Spec : Prop :=
  ∀ n, P7451824881254379014.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P13649146033829534246

`A172123(n+1)+A163102(n)`
-/

namespace A292057.P13649146033829534246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172123 (n + 1) + A163102 n

end

end A292057.P13649146033829534246

namespace A292057

/-- `A172123(n+1)+A163102(n)` -/
def P13649146033829534246.Spec : Prop :=
  ∀ n, P13649146033829534246.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P5424990111082126084

`A297662(n+1)+A152457(n)`
-/

namespace A292057.P5424990111082126084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297662 (n + 1) + A152457 n

end

end A292057.P5424990111082126084

namespace A292057

/-- `A297662(n+1)+A152457(n)` -/
def P5424990111082126084.Spec : Prop :=
  ∀ n, P5424990111082126084.a n = A292057 (n + 1)

end A292057

/-! ## A292057.P14564356443901807074

`n*A081436(n)-A000292(n)`
-/

namespace A292057.P14564356443901807074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A081436 n - A000292 n

end

end A292057.P14564356443901807074

namespace A292057

/-- `n*A081436(n)-A000292(n)` -/
def P14564356443901807074.Spec : Prop :=
  ∀ n, P14564356443901807074.a n = A292057 (n + 1)

end A292057

/-!
# A292058: Wiener index of the n X n rook complement graph.

The programs for A292058, the canonical program `A292058.P826891010732806113` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292058 has offset 1).

The definition of A292058 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292058.P4667167847200053496

`n*(n+1)²*(n+4)/2`
-/

namespace A292058.P4667167847200053496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) ^ 2 * (n + 4) : ℚ) / 2

end

end A292058.P4667167847200053496

namespace A292058

/-- `n*(n+1)²*(n+4)/2` -/
def P4667167847200053496.Spec : Prop :=
  ∀ n, P4667167847200053496.a n = (A292058 (n + 1) : ℚ)

theorem P4667167847200053496.correct : P4667167847200053496.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A292058, Nat.add_sub_cancel, A292058.P4667167847200053496.a, A292058.P826891010732806113.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A292058, Nat.add_sub_cancel, A292058.P4667167847200053496.a, A292058.P826891010732806113.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A292058

/-! ## A292058.P10035590340494212067

`ogf((10x+4x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A292058.P10035590340494212067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 4, -2] [1, -5, 10, -10, 5, -1] n

end

end A292058.P10035590340494212067

namespace A292058

/-- `ogf((10x+4x^2-2x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P10035590340494212067.Spec : Prop :=
  ∀ n, P10035590340494212067.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P826891010732806113

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=10, a(2)=54, a(3)=168, a(4)=400`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292058

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P826891010732806113.Spec : Prop :=
  ∀ n, P826891010732806113.a n = A292058 (n + 1)

theorem P826891010732806113.correct : P826891010732806113.Spec := by
  intro n
  simp only [A292058, Nat.add_sub_cancel]

end A292058

/-! ## A292058.P16576034696276085374

`∑[lcm((n+1)²+n, 2*n)]`
-/

namespace A292058.P16576034696276085374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((n + 1) ^ 2 + n) (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292058.P16576034696276085374

namespace A292058

/-- `∑[lcm((n+1)²+n, 2*n)]` -/
def P16576034696276085374.Spec : Prop :=
  ∀ n, (P16576034696276085374.a n : ℤ) = A292058 (n + 1)

end A292058

/-! ## A292058.P3533233664767948548

`C(n+1, 2)*∑[2*(n+2)]`
-/

namespace A292058.P3533233664767948548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292058.P3533233664767948548

namespace A292058

/-- `C(n+1, 2)*∑[2*(n+2)]` -/
def P3533233664767948548.Spec : Prop :=
  ∀ n, (P3533233664767948548.a n : ℤ) = A292058 (n + 1)

end A292058

/-! ## A292058.P15528652638519681801

`∑[2*n*record[(1-n)²-n]]`
-/

namespace A292058.P15528652638519681801
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292058.P15528652638519681801

namespace A292058

/-- `∑[2*n*record[(1-n)²-n]]` -/
def P15528652638519681801.Spec : Prop :=
  ∀ n, P15528652638519681801.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P278214285347123253

`C((n+1)², 2)+n*(n+1)²`
-/

namespace A292058.P278214285347123253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((n + 1) ^ 2) 2 + n * (n + 1) ^ 2

end

end A292058.P278214285347123253

namespace A292058

/-- `C((n+1)², 2)+n*(n+1)²` -/
def P278214285347123253.Spec : Prop :=
  ∀ n, (P278214285347123253.a n : ℤ) = A292058 (n + 1)

end A292058

/-! ## A292058.P11593752711411243749

`n*Δ[C(C(n+2, 2)-1, 2)]+n`
-/

namespace A292058.P11593752711411243749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose (n + 2) 2 : ℤ) - 1).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A292058.P11593752711411243749

namespace A292058

/-- `n*Δ[C(C(n+2, 2)-1, 2)]+n` -/
def P11593752711411243749.Spec : Prop :=
  ∀ n, P11593752711411243749.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P14085537759221308101

`lcm(2, ∑[n-2-2*n]*∑[2*n])`
-/

namespace A292058.P14085537759221308101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 - (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A292058.P14085537759221308101

namespace A292058

/-- `lcm(2, ∑[n-2-2*n]*∑[2*n])` -/
def P14085537759221308101.Spec : Prop :=
  ∀ n, (P14085537759221308101.a n : ℤ) = A292058 (n + 1)

end A292058

/-! ## A292058.P13671381491726239857

`a(n-1)+((n+1)²+n)*2*n` with `a(0)=0`
-/

namespace A292058.P13671381491726239857
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((n + 1) ^ 2 + n) * (2 * n)

end

end A292058.P13671381491726239857

namespace A292058

/-- `a(n-1)+((n+1)²+n)*2*n` -/
def P13671381491726239857.Spec : Prop :=
  ∀ n, (P13671381491726239857.a n : ℤ) = A292058 (n + 1)

end A292058

/-! ## A292058.P18441692057343557899

`∑[n*A090288(n)]`
-/

namespace A292058.P18441692057343557899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A090288 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292058.P18441692057343557899

namespace A292058

/-- `∑[n*A090288(n)]` -/
def P18441692057343557899.Spec : Prop :=
  ∀ n, P18441692057343557899.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P4117740524038421226

`2*A085740(n+1)`
-/

namespace A292058.P4117740524038421226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085740 (n + 1)

end

end A292058.P4117740524038421226

namespace A292058

/-- `2*A085740(n+1)` -/
def P4117740524038421226.Spec : Prop :=
  ∀ n, P4117740524038421226.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P15317056460152427685

`n*(A154560(n)+1)`
-/

namespace A292058.P15317056460152427685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A154560 n + 1)

end

end A292058.P15317056460152427685

namespace A292058

/-- `n*(A154560(n)+1)` -/
def P15317056460152427685.Spec : Prop :=
  ∀ n, P15317056460152427685.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P6606727095832533698

`(n+4)*A006002(n)`
-/

namespace A292058.P6606727095832533698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A006002 n

end

end A292058.P6606727095832533698

namespace A292058

/-- `(n+4)*A006002(n)` -/
def P6606727095832533698.Spec : Prop :=
  ∀ n, P6606727095832533698.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P9288006118556720286

`∑[2*(A318765(n)+2)]`
-/

namespace A292058.P9288006118556720286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A318765 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292058.P9288006118556720286

namespace A292058

/-- `∑[2*(A318765(n)+2)]` -/
def P9288006118556720286.Spec : Prop :=
  ∀ n, P9288006118556720286.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P9524115671814633600

`∑[n]*A028552(n+1)`
-/

namespace A292058.P9524115671814633600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A028552 (n + 1)

end

end A292058.P9524115671814633600

namespace A292058

/-- `∑[n]*A028552(n+1)` -/
def P9524115671814633600.Spec : Prop :=
  ∀ n, P9524115671814633600.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P4503054348065184364

`∑[n*(A059993(n)+1)]`
-/

namespace A292058.P4503054348065184364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A059993 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292058.P4503054348065184364

namespace A292058

/-- `∑[n*(A059993(n)+1)]` -/
def P4503054348065184364.Spec : Prop :=
  ∀ n, P4503054348065184364.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P6916731760181460769

`(n+1)*∑[A140090(n)]`
-/

namespace A292058.P6916731760181460769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140090 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292058.P6916731760181460769

namespace A292058

/-- `(n+1)*∑[A140090(n)]` -/
def P6916731760181460769.Spec : Prop :=
  ∀ n, P6916731760181460769.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P14576778911797129901

`∑[n*(A139570(n)+2)]`
-/

namespace A292058.P14576778911797129901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A139570 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292058.P14576778911797129901

namespace A292058

/-- `∑[n*(A139570(n)+2)]` -/
def P14576778911797129901.Spec : Prop :=
  ∀ n, P14576778911797129901.a n = A292058 (n + 1)

end A292058

/-! ## A292058.P14193658823546775582

`A033486(n)-∑[2*n]`
-/

namespace A292058.P14193658823546775582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A292058.P14193658823546775582

namespace A292058

/-- `A033486(n)-∑[2*n]` -/
def P14193658823546775582.Spec : Prop :=
  ∀ n, P14193658823546775582.a n = A292058 (n + 1)

end A292058

/-!
# A292059: Wiener index of the n X n white bishop graph.

The programs for A292059, the canonical program `A292059.P3874372301770734441` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292059 has offset 2).

The definition of A292059 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292059.P3874372301770734441

`ogf((1+6x+24x^2+10x^3+7x^4)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292059

/-- `ogf((1+6x+24x^2+10x^3+7x^4)/(1-2x-2x^2+6x^3-6x^5+2x^6+2x^7-x^8))` -/
def P3874372301770734441.Spec : Prop :=
  ∀ n, P3874372301770734441.a n = A292059 (n + 2)

theorem P3874372301770734441.correct : P3874372301770734441.Spec := by
  intro n
  simp only [A292059, Nat.add_sub_cancel]

end A292059

/-! ## A292059.P210696164583073247

`∑[∑[4*lcm(n, ∑[n])+n+1]]`
-/

namespace A292059.P210696164583073247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.lcm n (∑ j ∈ Finset.range (n + 1), f3 j) + (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P210696164583073247

namespace A292059

/-- `∑[∑[4*lcm(n, ∑[n])+n+1]]` -/
def P210696164583073247.Spec : Prop :=
  ∀ n, (P210696164583073247.a n : ℤ) = A292059 (n + 2)

end A292059

/-! ## A292059.P6641540796799010143

`∑[∑[(n+1)*A178414(n+1)]]`
-/

namespace A292059.P6641540796799010143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A178414 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P6641540796799010143

namespace A292059

/-- `∑[∑[(n+1)*A178414(n+1)]]` -/
def P6641540796799010143.Spec : Prop :=
  ∀ n, P6641540796799010143.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P16280265097025386868

`∑[∑[(n+1)*(n*gcd(4, A255177(n))+1)]]`
-/

namespace A292059.P16280265097025386868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n * Int.gcd 4 (A255177 n) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P16280265097025386868

namespace A292059

/-- `∑[∑[(n+1)*(n*gcd(4, A255177(n))+1)]]` -/
def P16280265097025386868.Spec : Prop :=
  ∀ n, (P16280265097025386868.a n : ℤ) = A292059 (n + 2)

end A292059

/-! ## A292059.P7148601948312373218

`∑[A008619(n)*A056220(n+1)]`
-/

namespace A292059.P7148601948312373218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A056220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P7148601948312373218

namespace A292059

/-- `∑[A008619(n)*A056220(n+1)]` -/
def P7148601948312373218.Spec : Prop :=
  ∀ n, P7148601948312373218.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P3161520452583396786

`∑[(∑[A016825(n)]-1)*A008619(n)]`
-/

namespace A292059.P3161520452583396786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j - 1) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P3161520452583396786

namespace A292059

/-- `∑[(∑[A016825(n)]-1)*A008619(n)]` -/
def P3161520452583396786.Spec : Prop :=
  ∀ n, P3161520452583396786.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P512365378366629581

`∑[(A014106(n)+1+n)*A008619(n)]`
-/

namespace A292059.P512365378366629581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014106 n + 1 + (n : ℤ)) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P512365378366629581

namespace A292059

/-- `∑[(A014106(n)+1+n)*A008619(n)]` -/
def P512365378366629581.Spec : Prop :=
  ∀ n, P512365378366629581.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P2991572802374305391

`∑[(A001844(n)+2*n)*A008619(n)]`
-/

namespace A292059.P2991572802374305391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001844 n + (2 * n : ℤ)) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P2991572802374305391

namespace A292059

/-- `∑[(A001844(n)+2*n)*A008619(n)]` -/
def P2991572802374305391.Spec : Prop :=
  ∀ n, P2991572802374305391.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P8771879512033901197

`∑[(A005563(n)+(n+1)²)*A008619(n)]`
-/

namespace A292059.P8771879512033901197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005563 n + ((n + 1) ^ 2 : ℤ)) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P8771879512033901197

namespace A292059

/-- `∑[(A005563(n)+(n+1)²)*A008619(n)]` -/
def P8771879512033901197.Spec : Prop :=
  ∀ n, P8771879512033901197.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P12251222471390364289

`∑[A008619(n)*A047838(2*(n+1))]`
-/

namespace A292059.P12251222471390364289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A047838 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P12251222471390364289

namespace A292059

/-- `∑[A008619(n)*A047838(2*(n+1))]` -/
def P12251222471390364289.Spec : Prop :=
  ∀ n, P12251222471390364289.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P9750290113283466171

`∑[A008619(n)*A213037(2*n+1)]`
-/

namespace A292059.P9750290113283466171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A213037 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P9750290113283466171

namespace A292059

/-- `∑[A008619(n)*A213037(2*n+1)]` -/
def P9750290113283466171.Spec : Prop :=
  ∀ n, P9750290113283466171.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P13714045582975643580

`∑[A004273((n+1)²)*A008619(n)]`
-/

namespace A292059.P13714045582975643580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 ((n + 1) ^ 2) * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P13714045582975643580

namespace A292059

/-- `∑[A004273((n+1)²)*A008619(n)]` -/
def P13714045582975643580.Spec : Prop :=
  ∀ n, P13714045582975643580.a n = A292059 (n + 2)

end A292059

/-! ## A292059.P4877980728806818012

`∑[A008619(n)*A047268((n+1)²)]`
-/

namespace A292059.P4877980728806818012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A047268 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292059.P4877980728806818012

namespace A292059

/-- `∑[A008619(n)*A047268((n+1)²)]` -/
def P4877980728806818012.Spec : Prop :=
  ∀ n, P4877980728806818012.a n = A292059 (n + 2)

end A292059

/-!
# A292060: Minimum number of points of the square lattice falling strictly inside an equilateral triangle of side n.

The programs for A292060, there is no canonical definition to state claims against.
-/

/-! ## A292060.P1261092227126412075

`floor(sqrt((n+2)*C(n, 3)))`
-/

namespace A292060.P1261092227126412075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((n + 2) * Nat.choose n 3)

end

end A292060.P1261092227126412075

/-! ## A292060.P4147331235447630094

`floor(∑[n-∑[n]^(1/5)])`
-/

namespace A292060.P4147331235447630094
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) ^ ((1 : ℚ) / 5 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A292060.P4147331235447630094

/-! ## A292060.P5555405890114614111

`row(C(C(n, 2), 2)-floor((n²-n)*(n-2)*(n-3)/20))`
-/

namespace A292060.P5555405890114614111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow ((Nat.choose (Nat.choose n 2) 2 : ℤ) - ⌊(((n ^ 2 : ℤ) - (n : ℤ)) * ((n : ℤ) - 2) * ((n : ℤ) - 3) : ℚ) / 20⌋).toNat

end

end A292060.P5555405890114614111

/-! ## A292060.P10948609958184016159

`round(log(A128761(n))²)`
-/

namespace A292060.P10948609958184016159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A128761 n : ℝ) ^ 2)

end

end A292060.P10948609958184016159

/-!
# A292061: a(n) = (n-3)*(n-2)^2*(n-1)^2*n/24.

The programs for A292061, the canonical program `A292061.P8566333683621435124` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292061 has offset 1).

The definition of A292061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-2)*(n-1)²*n²*(n+1)/24` (program `A292061.P4755506329418906753`, by `A292061.P4755506329418906753.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A292061.P11167954693394174427

`ogf((6x^3+18x^4+6x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A292061.P11167954693394174427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 6, 18, 6] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A292061.P11167954693394174427

namespace A292061

/-- `ogf((6x^3+18x^4+6x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P11167954693394174427.Spec : Prop :=
  ∀ n, P11167954693394174427.a n = A292061 (n + 1)

end A292061

/-! ## A292061.P4755506329418906753

`(n-2)*(n-1)²*n²*(n+1)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A292061.P4755506329418906753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 2) * ((n : ℤ) - 1) ^ 2 * (n ^ 2 : ℤ) * (n + 1 : ℤ) : ℚ) / 24

end

end A292061.P4755506329418906753

namespace A292061

/-- `(n-2)*(n-1)²*n²*(n+1)/24` -/
def P4755506329418906753.Spec : Prop :=
  ∀ n, P4755506329418906753.a n = (A292061 (n + 1) : ℚ)

theorem P4755506329418906753.correct : P4755506329418906753.Spec := by
  intro n
  simp only [A292061, Nat.add_sub_cancel, A292061.P4755506329418906753.a, A292061.P8566333683621435124.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A292061

/-! ## A292061.P8566333683621435124

`(n²-n)*C(n+1, 4)`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292061

/-- `(n²-n)*C(n+1, 4)` -/
def P8566333683621435124.Spec : Prop :=
  ∀ n, P8566333683621435124.a n = A292061 (n + 1)

theorem P8566333683621435124.correct : P8566333683621435124.Spec := by
  intro n
  simp only [A292061, Nat.add_sub_cancel]

end A292061

/-! ## A292061.P2569680637954709139

`(n-1)*n*∑[C(n, 3)]`
-/

namespace A292061.P2569680637954709139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A292061.P2569680637954709139

namespace A292061

/-- `(n-1)*n*∑[C(n, 3)]` -/
def P2569680637954709139.Spec : Prop :=
  ∀ n, P2569680637954709139.a n = A292061 (n + 1)

end A292061

/-! ## A292061.P8973904225011718647

`(n-1)*n*C(n+1, 4)`
-/

namespace A292061.P8973904225011718647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n * Nat.choose (n + 1) 4 : ℤ)

end

end A292061.P8973904225011718647

namespace A292061

/-- `(n-1)*n*C(n+1, 4)` -/
def P8973904225011718647.Spec : Prop :=
  ∀ n, P8973904225011718647.a n = A292061 (n + 1)

theorem P8973904225011718647.correct : P8973904225011718647.Spec := by
  intro n
  simp only [A292061, Nat.add_sub_cancel, A292061.P8973904225011718647.a, A292061.P8566333683621435124.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A292061

/-! ## A292061.P13677071167141273872

`∑[A019584(n)-A019582(n)]`
-/

namespace A292061.P13677071167141273872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019584 n - A019582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292061.P13677071167141273872

namespace A292061

/-- `∑[A019584(n)-A019582(n)]` -/
def P13677071167141273872.Spec : Prop :=
  ∀ n, P13677071167141273872.a n = A292061 (n + 1)

end A292061

/-! ## A292061.P11580302536717350298

`∑[A019583(n)-A019584(n)]`
-/

namespace A292061.P11580302536717350298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019583 n - A019584 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292061.P11580302536717350298

namespace A292061

/-- `∑[A019583(n)-A019584(n)]` -/
def P11580302536717350298.Spec : Prop :=
  ∀ n, P11580302536717350298.a n = A292061 (n + 1)

end A292061

/-! ## A292061.P2816672859077062632

`(n²-n)*A000332(n+1)`
-/

namespace A292061.P2816672859077062632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ)) * A000332 (n + 1)

end

end A292061.P2816672859077062632

namespace A292061

/-- `(n²-n)*A000332(n+1)` -/
def P2816672859077062632.Spec : Prop :=
  ∀ n, P2816672859077062632.a n = A292061 (n + 1)

end A292061

/-! ## A292061.P16275159736608876948

`(A000332(n+1)+A000332(n))*A000217(n)`
-/

namespace A292061.P16275159736608876948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000332 (n + 1) + A000332 n) * A000217 n

end

end A292061.P16275159736608876948

namespace A292061

/-- `(A000332(n+1)+A000332(n))*A000217(n)` -/
def P16275159736608876948.Spec : Prop :=
  ∀ n, P16275159736608876948.a n = A292061 (n + 1)

theorem P16275159736608876948.correct : P16275159736608876948.Spec := by
  intro n
  simp only [A292061, Nat.add_sub_cancel, A292061.P16275159736608876948.a, A292061.P8566333683621435124.a, A000217, A000217.P10269402890581615239.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A292061

/-! ## A292061.P5812234593507323799

`A000332(n+1)*A002061(n)-A000332(n+1)`
-/

namespace A292061.P5812234593507323799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 (n + 1) * A002061 n - A000332 (n + 1)

end

end A292061.P5812234593507323799

namespace A292061

/-- `A000332(n+1)*A002061(n)-A000332(n+1)` -/
def P5812234593507323799.Spec : Prop :=
  ∀ n, P5812234593507323799.a n = A292061 (n + 1)

theorem P5812234593507323799.correct : P5812234593507323799.Spec := by
  intro n
  simp only [A292061, Nat.add_sub_cancel, A292061.P5812234593507323799.a, A292061.P8566333683621435124.a, A000332, A000332.P5946310388023661265.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A292061

/-! ## A292061.P15212998995385205025

`(n-1)*A333320(2*n+1)`
-/

namespace A292061.P15212998995385205025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A333320 (2 * n + 1)

end

end A292061.P15212998995385205025

namespace A292061

/-- `(n-1)*A333320(2*n+1)` -/
def P15212998995385205025.Spec : Prop :=
  ∀ n, P15212998995385205025.a n = A292061 (n + 1)

end A292061

/-! ## A292061.P12851173571168763207

`A331574(2*n+1)+A331574(2*n+1)/2`
-/

namespace A292061.P12851173571168763207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331574 (2 * n + 1) : ℚ) + (A331574 (2 * n + 1) : ℚ) / 2

end

end A292061.P12851173571168763207

namespace A292061

/-- `A331574(2*n+1)+A331574(2*n+1)/2` -/
def P12851173571168763207.Spec : Prop :=
  ∀ n, P12851173571168763207.a n = (A292061 (n + 1) : ℚ)

end A292061

/-! ## A292061.P16575234660917405031

`A330300(2*n+1)+n*A333321(2*n+1)`
-/

namespace A292061.P16575234660917405031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330300 (2 * n + 1) + (n : ℤ) * A333321 (2 * n + 1)

end

end A292061.P16575234660917405031

namespace A292061

/-- `A330300(2*n+1)+n*A333321(2*n+1)` -/
def P16575234660917405031.Spec : Prop :=
  ∀ n, P16575234660917405031.a n = A292061 (n + 1)

end A292061

/-! ## A292061.P18236787091762387885

`∑[(n-1)*A054925((1-n)²)]`
-/

namespace A292061.P18236787091762387885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A054925 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292061.P18236787091762387885

namespace A292061

/-- `∑[(n-1)*A054925((1-n)²)]` -/
def P18236787091762387885.Spec : Prop :=
  ∀ n, P18236787091762387885.a n = A292061 (n + 1)

end A292061

/-! ## A292061.P7035701182116341418

`∑[(n-1)*A011848((1-n)²)]`
-/

namespace A292061.P7035701182116341418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A011848 ((1 - (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292061.P7035701182116341418

namespace A292061

/-- `∑[(n-1)*A011848((1-n)²)]` -/
def P7035701182116341418.Spec : Prop :=
  ∀ n, P7035701182116341418.a n = A292061 (n + 1)

end A292061

/-!
# A292062: Wiener index of the n-transposition graph.

The programs for A292062, the canonical program `A292062.P7356258512734055693` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292062 has offset 1).

The definition of A292062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292062.P7356258512734055693

`(n+1)!*A067318(n+1)/2`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292062

/-- `(n+1)!*A067318(n+1)/2` -/
def P7356258512734055693.Spec : Prop :=
  ∀ n, P7356258512734055693.a n = (A292062 (n + 1) : ℚ)

end A292062

/-! ## A292062.P11060086046230212928

`A001710(n+1)*A067318(n+1)`
-/

namespace A292062.P11060086046230212928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001710 (n + 1) * A067318 (n + 1)

end

end A292062.P11060086046230212928

namespace A292062

/-- `A001710(n+1)*A067318(n+1)` -/
def P11060086046230212928.Spec : Prop :=
  ∀ n, P11060086046230212928.a n = A292062 (n + 1)

end A292062

/-! ## A292062.P11346118041443669493

`A008279(A055998(n))*A067318(n+1)`
-/

namespace A292062.P11346118041443669493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A055998 n).toNat * A067318 (n + 1)

end

end A292062.P11346118041443669493

namespace A292062

/-- `A008279(A055998(n))*A067318(n+1)` -/
def P11346118041443669493.Spec : Prop :=
  ∀ n, P11346118041443669493.a n = A292062 (n + 1)

end A292062

/-! ## A292062.P262895721831729682

`A067318(n+1)*A092580(A000124(n))`
-/

namespace A292062.P262895721831729682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067318 (n + 1) * A092580 (A000124 n).toNat

end

end A292062.P262895721831729682

namespace A292062

/-- `A067318(n+1)*A092580(A000124(n))` -/
def P262895721831729682.Spec : Prop :=
  ∀ n, P262895721831729682.a n = A292062 (n + 1)

end A292062

/-! ## A292062.P4171824626358125735

`(A062119(n+1)-A001705(n))*A001710(n+1)`
-/

namespace A292062.P4171824626358125735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A062119 (n + 1) - A001705 n) * A001710 (n + 1)

end

end A292062.P4171824626358125735

namespace A292062

/-- `(A062119(n+1)-A001705(n))*A001710(n+1)` -/
def P4171824626358125735.Spec : Prop :=
  ∀ n, P4171824626358125735.a n = A292062 (n + 1)

end A292062

/-!
# A292064: Triangular numbers k such that psi(k) is a square, where psi(k) is the Dedekind psi function (A001615).

The programs for A292064, there is no canonical definition to state claims against.
-/

/-! ## A292064.P16344583739863671919

`∩[A291167(n+1), ∑[n]]`
-/

namespace A292064.P16344583739863671919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A292064.P16344583739863671919

/-! ## A292064.P11821622171176072394

`∩[A000217(n), A291167(n+1)]`
-/

namespace A292064.P11821622171176072394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292064.P11821622171176072394

/-! ## A292064.P11256551510900265788

`∩[A122493(n), A291167(n+1)]`
-/

namespace A292064.P11256551510900265788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292064.P11256551510900265788

/-! ## A292064.P10127331774454960455

`∩[A005214(n+1), A291167(n+1)]`
-/

namespace A292064.P10127331774454960455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292064.P10127331774454960455

/-! ## A292064.P17344830499590292197

`∩[A179865(n+2), A291167(n+1)]`
-/

namespace A292064.P17344830499590292197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A292064.P17344830499590292197

/-!
# A292065: Number of Besźel [Beszel] Polycubes with n cells, distinguishing mirror images. A Besźel polycube is a polycube whose cells each have two or more even coordinates.

The programs for A292065, there is no canonical definition to state claims against.
-/

/-! ## A292065.P18060657785410270280

`A088458(A026307(n))`
-/

namespace A292065.P18060657785410270280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088458 (A026307 n).toNat

end

end A292065.P18060657785410270280

/-! ## A292065.P17917046533976686226

`A087419(A169949(n))`
-/

namespace A292065.P17917046533976686226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087419 (A169949 n).toNat

end

end A292065.P17917046533976686226

/-! ## A292065.P17991906030716581018

`A132083(A148056(n))`
-/

namespace A292065.P17991906030716581018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132083 (A148056 n).toNat

end

end A292065.P17991906030716581018

/-!
# A292066: Number of (non-null) connected induced subgraphs in the n-Fibonacci cube graph.

The programs for A292066, there is no canonical definition to state claims against.
-/

/-! ## A292066.P10631130847202978371

`A000225(A000045(n+3))-A362515(n+1)`
-/

namespace A292066.P10631130847202978371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A000045 (n + 3)).toNat - A362515 (n + 1)

end

end A292066.P10631130847202978371

/-!
# A292068: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where column k is the expansion of Product_{j>=1} 1/(1 + j^k*x^j).

The programs for A292068, there is no canonical definition to state claims against.
-/

/-! ## A292068.P13253085757154305397

`A284993(n)+A089311(A094544(n))`
-/

namespace A292068.P13253085757154305397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 n + A089311 (A094544 n).toNat

end

end A292068.P13253085757154305397

/-! ## A292068.P1476118094259781218

`A284993(n)+A025469(A163661(n))`
-/

namespace A292068.P1476118094259781218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 n + A025469 (A163661 n).toNat

end

end A292068.P1476118094259781218

/-! ## A292068.P14702065468697290633

`A284993(n)+A151795(A060475(n))`
-/

namespace A292068.P14702065468697290633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 n + A151795 (A060475 n).toNat

end

end A292068.P14702065468697290633

/-! ## A292068.P6032570337063595823

`A284993(n)+A025469(A256116(n))`
-/

namespace A292068.P6032570337063595823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 n + A025469 (A256116 n).toNat

end

end A292068.P6032570337063595823

/-! ## A292068.P15019054247352620724

`A284993(n)+A016396(A294582(n))`
-/

namespace A292068.P15019054247352620724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284993 n + A016396 (A294582 n).toNat

end

end A292068.P15019054247352620724

/-!
# A292072: Main diagonal of A292068.

The programs for A292072, there is no canonical definition to state claims against.
-/

/-! ## A292072.P735488284427254127

`A292068(∑[4*n])`
-/

namespace A292072.P735488284427254127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292072.P735488284427254127

/-! ## A292072.P14281060182161289453

`A292068(A046092(n))+val(n+1, 10)`
-/

namespace A292072.P14281060182161289453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292068 (A046092 n).toNat + (SequenceMachineLib.valuation (n + 1) 10 : ℤ)

end

end A292072.P14281060182161289453

/-!
# A292073: Number of dominating sets in the n X n rook complement graph.

The programs for A292073, there is no canonical definition to state claims against.
-/

/-! ## A292073.P17350745745986706728

`A384121(∑[4*(n+1)])`
-/

namespace A292073.P17350745745986706728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384121 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292073.P17350745745986706728

/-!
# A292074: Number of minimum dominating sets in the n X n rook complement graph.

The programs for A292074, there is no canonical definition to state claims against.
-/

/-! ## A292074.P11036327127876335731

`A384122(∑[4*(n+1)])`
-/

namespace A292074.P11036327127876335731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384122 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A292074.P11036327127876335731

/-!
# A292076: Number of 4-cycles in the n-Menger sponge graph.

The programs for A292076, the canonical program `A292076.P10124766324268441643` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292076 has offset 1).

The definition of A292076 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A292076.P10124766324268441643

`16*(5*20^(n+1)-17*8^(n+1)+12*3^(n+1))/85`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A292076

/-- `16*(5*20^(n+1)-17*8^(n+1)+12*3^(n+1))/85` -/
def P10124766324268441643.Spec : Prop :=
  ∀ n, P10124766324268441643.a n = (A292076 (n + 1) : ℚ)

end A292076

/-!
# A292077: a(n) = 0 if n=1; a(n) = 1-a(n-2) if n is odd; a(n) = 1-a(n/2) if n is even.

The programs for A292077, the canonical program `A292077.P208369071452103874` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A292077 has offset 1).

The definition of A292077 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A106665, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A292077.P208369071452103874

`1-A106665(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A292077

/-- `1-A106665(n)` -/
def P208369071452103874.Spec : Prop :=
  ∀ n, P208369071452103874.a n = A292077 (n + 1)

theorem P208369071452103874.correct : P208369071452103874.Spec := by
  intro n
  simp only [A292077, Nat.add_sub_cancel]

end A292077

/-! ## A292077.P8142897308287002742

`A085062(n)%2`
-/

namespace A292077.P8142897308287002742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085062 n) 2

end

end A292077.P8142897308287002742

namespace A292077

/-- `A085062(n)%2` -/
def P8142897308287002742.Spec : Prop :=
  ∀ n, P8142897308287002742.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P6511920754418173670

`(1+(-1)^((A000265(n+1)+1)/2+A007814(n+1)))/2`
-/

namespace A292077.P6511920754418173670
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 + (-1 : ℝ) ^ ((A000265 (n + 1) + 1 : ℚ) / 2 + (A007814 (n + 1) : ℚ) : ℝ)) / 2

end

end A292077.P6511920754418173670

namespace A292077

/-- `(1+(-1)^((A000265(n+1)+1)/2+A007814(n+1)))/2` -/
def P6511920754418173670.Spec : Prop :=
  ∀ n, P6511920754418173670.a n = (A292077 (n + 1) : ℝ)

end A292077

/-! ## A292077.P8286576664735305079

`1-Δ[or(2*n+1, -n)]²%3`
-/

namespace A292077.P8286576664735305079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n + 1 : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod ((f1 (n + 1) - f1 n) ^ 2) 3

end

end A292077.P8286576664735305079

namespace A292077

/-- `1-Δ[or(2*n+1, -n)]²%3` -/
def P8286576664735305079.Spec : Prop :=
  ∀ n, P8286576664735305079.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P6150626194172092441

`1-(Δ[or(n+1, 2*n)]+1)²%3`
-/

namespace A292077.P6150626194172092441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n + 1) (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1) ^ 2) 3

end

end A292077.P6150626194172092441

namespace A292077

/-- `1-(Δ[or(n+1, 2*n)]+1)²%3` -/
def P6150626194172092441.Spec : Prop :=
  ∀ n, P6150626194172092441.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P5403231354294665128

`xor(xor(n, n+1)%3, char[and(n, n+1)+n])`
-/

namespace A292077.P5403231354294665128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (Nat.xor n (n + 1) % 3) (if ∃ j, f1 j = n then 1 else 0)

end

end A292077.P5403231354294665128

namespace A292077

/-- `xor(xor(n, n+1)%3, char[and(n, n+1)+n])` -/
def P5403231354294665128.Spec : Prop :=
  ∀ n, (P5403231354294665128.a n : ℤ) = A292077 (n + 1)

end A292077

/-! ## A292077.P15445647580100405611

`xor(1, 2-gcd(4*(n+1), and(n, n+1))%3)`
-/

namespace A292077.P15445647580100405611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (2 - ((Nat.gcd (4 * (n + 1)) (Nat.land n (n + 1)) % 3 : ℕ) : ℤ))

end

end A292077.P15445647580100405611

namespace A292077

/-- `xor(1, 2-gcd(4*(n+1), and(n, n+1))%3)` -/
def P15445647580100405611.Spec : Prop :=
  ∀ n, P15445647580100405611.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P8545221963425159082

`(floor(n/(xor(n, n+1)+1))+val(n+1, 2))%2`
-/

namespace A292077.P8545221963425159082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)) 2

end

end A292077.P8545221963425159082

namespace A292077

/-- `(floor(n/(xor(n, n+1)+1))+val(n+1, 2))%2` -/
def P8545221963425159082.Spec : Prop :=
  ∀ n, P8545221963425159082.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P16493114226003482572

`val(A085060(n), 6)`
-/

namespace A292077.P16493114226003482572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A085060 n).toNat 6

end

end A292077.P16493114226003482572

namespace A292077

/-- `val(A085060(n), 6)` -/
def P16493114226003482572.Spec : Prop :=
  ∀ n, (P16493114226003482572.a n : ℤ) = A292077 (n + 1)

end A292077

/-! ## A292077.P11872460078499436124

`A271519(n+1)%2`
-/

namespace A292077.P11872460078499436124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271519 (n + 1)) 2

end

end A292077.P11872460078499436124

namespace A292077

/-- `A271519(n+1)%2` -/
def P11872460078499436124.Spec : Prop :=
  ∀ n, P11872460078499436124.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P14145657868983370296

`A378879(n+1)%2`
-/

namespace A292077.P14145657868983370296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378879 (n + 1)) 2

end

end A292077.P14145657868983370296

namespace A292077

/-- `A378879(n+1)%2` -/
def P14145657868983370296.Spec : Prop :=
  ∀ n, P14145657868983370296.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P2169893941880384002

`floor(acot(Δ[A317050(n)]))²`
-/

namespace A292077.P2169893941880384002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (f1 (n + 1) - f1 n : ℝ)⌋ ^ 2

end

end A292077.P2169893941880384002

namespace A292077

/-- `floor(acot(Δ[A317050(n)]))²` -/
def P2169893941880384002.Spec : Prop :=
  ∀ n, P2169893941880384002.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P7285443312343409709

`char[A338691(n+1)-1]`
-/

namespace A292077.P7285443312343409709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A292077.P7285443312343409709

namespace A292077

/-- `char[A338691(n+1)-1]` -/
def P7285443312343409709.Spec : Prop :=
  ∀ n, (P7285443312343409709.a n : ℤ) = A292077 (n + 1)

end A292077

/-! ## A292077.P1319960854576503908

`(1-A209615(n+1))/2`
-/

namespace A292077.P1319960854576503908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A209615 (n + 1) : ℚ) / 2

end

end A292077.P1319960854576503908

namespace A292077

/-- `(1-A209615(n+1))/2` -/
def P1319960854576503908.Spec : Prop :=
  ∀ n, P1319960854576503908.a n = (A292077 (n + 1) : ℚ)

theorem P1319960854576503908.correct : P1319960854576503908.Spec := by
  intro n
  simp only [A292077, Nat.add_sub_cancel, A292077.P1319960854576503908.a, A292077.P208369071452103874.a, A106665, A106665.P2238379894768869187.f1, A106665.P2238379894768869187.a, A209615, A209615.P8843447964390947707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A292077

/-! ## A292077.P8156192642085847703

`and(2, A003324(n+1))/2`
-/

namespace A292077.P8156192642085847703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A003324 (n + 1)) : ℚ) / 2

end

end A292077.P8156192642085847703

namespace A292077

/-- `and(2, A003324(n+1))/2` -/
def P8156192642085847703.Spec : Prop :=
  ∀ n, P8156192642085847703.a n = (A292077 (n + 1) : ℚ)

end A292077

/-! ## A292077.P10849619082776649803

`and(1, A046081(n+1)+n)`
-/

namespace A292077.P10849619082776649803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046081 (n + 1) + (n : ℤ))

end

end A292077.P10849619082776649803

namespace A292077

/-- `and(1, A046081(n+1)+n)` -/
def P10849619082776649803.Spec : Prop :=
  ∀ n, P10849619082776649803.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P17445072219914873314

`and(2, A152985(2*(n+1)))/2`
-/

namespace A292077.P17445072219914873314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A152985 (2 * (n + 1))) : ℚ) / 2

end

end A292077.P17445072219914873314

namespace A292077

/-- `and(2, A152985(2*(n+1)))/2` -/
def P17445072219914873314.Spec : Prop :=
  ∀ n, P17445072219914873314.a n = (A292077 (n + 1) : ℚ)

end A292077

/-! ## A292077.P6017418575205735980

`A096268(A241816(n))`
-/

namespace A292077.P6017418575205735980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096268 (A241816 n).toNat

end

end A292077.P6017418575205735980

namespace A292077

/-- `A096268(A241816(n))` -/
def P6017418575205735980.Spec : Prop :=
  ∀ n, P6017418575205735980.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P17051935436604290003

`A059841(A330393(n))`
-/

namespace A292077.P17051935436604290003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A330393 n).toNat

end

end A292077.P17051935436604290003

namespace A292077

/-- `A059841(A330393(n))` -/
def P17051935436604290003.Spec : Prop :=
  ∀ n, P17051935436604290003.a n = A292077 (n + 1)

end A292077

/-! ## A292077.P15490407413910349354

`A021913(A071322(n+1))`
-/

namespace A292077.P15490407413910349354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A071322 (n + 1)).toNat

end

end A292077.P15490407413910349354

namespace A292077

/-- `A021913(A071322(n+1))` -/
def P15490407413910349354.Spec : Prop :=
  ∀ n, P15490407413910349354.a n = A292077 (n + 1)

end A292077

/-!
# A292078: G.f. A(x) satisfies: A( x*A(x) - x*A(x)^3 ) = x^2.

The programs for A292078, there is no canonical definition to state claims against.
-/

/-! ## A292078.P13315387986691852669

`A227590(∑[ceil(2^(n-2))])-n`
-/

namespace A292078.P13315387986691852669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227590 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A292078.P13315387986691852669

/-! ## A292078.P4502452098731786868

`∑[∑[n!-A000005(n^7+1)%2+n-3]+4]`
-/

namespace A292078.P4502452098731786868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - Int.tmod (A000005 (n ^ 7 + 1)) 2 + ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A292078.P4502452098731786868

/-!
# A292079: Composite numbers m such that 2^m - 1 has a single prime factor of the form k*m + 1.

The programs for A292079, there is no canonical definition to state claims against.
-/

/-! ## A292079.P11316118109130923236

`A018252(eq[A000122(n), A090225(3*n)])`
-/

namespace A292079.P11316118109130923236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090225 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A292079.P11316118109130923236

/-! ## A292079.P12815012115110323825

`A002808(lt[A199041(3*n+4), A061041(n+4)])`
-/

namespace A292079.P12815012115110323825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199041 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061041 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A292079.P12815012115110323825

/-!
# A292081: Let b(k) be A056240(k); this sequence lists numbers b(2n) such that for some m > n, b(2m) < b(2n).

The programs for A292081, there is no canonical definition to state claims against.
-/

/-! ## A292081.P15054005832664421854

`A056240(A071904(n+1)+3)`
-/

namespace A292081.P15054005832664421854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A071904 (n + 1) + 3).toNat

end

end A292081.P15054005832664421854

/-! ## A292081.P8903511677484107503

`A064502(A071904(n+1)+3)`
-/

namespace A292081.P8903511677484107503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 (A071904 (n + 1) + 3).toNat

end

end A292081.P8903511677484107503

/-! ## A292081.P8080483801756867489

`A288814(A071904(n+1)+3)`
-/

namespace A292081.P8080483801756867489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A071904 (n + 1) + 3).toNat

end

end A292081.P8080483801756867489

/-! ## A292081.P11472947648818721646

`A056240(A309355(n+1)+4)`
-/

namespace A292081.P11472947648818721646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A309355 (n + 1) + 4).toNat

end

end A292081.P11472947648818721646

/-! ## A292081.P14927935906442848244

`A288814(A309355(n+1)+4)`
-/

namespace A292081.P14927935906442848244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A309355 (n + 1) + 4).toNat

end

end A292081.P14927935906442848244

/-! ## A292081.P8130474814790536866

`A056240(A007921(n+1)+5)`
-/

namespace A292081.P8130474814790536866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (A007921 (n + 1) + 5).toNat

end

end A292081.P8130474814790536866

/-! ## A292081.P1441350125034176225

`A288814(A007921(n+1)+5)`
-/

namespace A292081.P1441350125034176225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (A007921 (n + 1) + 5).toNat

end

end A292081.P1441350125034176225

/-! ## A292081.P4336368735100416605

`filter[A288814(2*(n+2)), A359374(#)]`
-/

namespace A292081.P4336368735100416605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A292081.P4336368735100416605

/-! ## A292081.P2771820185306460228

`filter[A288814(2*(n+2)), A359377(#)]`
-/

namespace A292081.P2771820185306460228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359377 (f1 j).toNat = 1) n)

end

end A292081.P2771820185306460228

/-! ## A292081.P16402990589697869879

`A056240(∩[2*n+1, A018252(n+2)]+3)`
-/

namespace A292081.P16402990589697869879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056240 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 3)

end

end A292081.P16402990589697869879

/-! ## A292081.P15947849047596372092

`A064502(∩[2*n+1, A018252(n+2)]+3)`
-/

namespace A292081.P15947849047596372092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 3)

end

end A292081.P15947849047596372092

/-! ## A292081.P13368377402834193771

`A288814(∩[2*n+1, A018252(n+2)]+3)`
-/

namespace A292081.P13368377402834193771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n + 3)

end

end A292081.P13368377402834193771

/-!
# A292085: Number A(n,k) of (unlabeled) rooted trees with n leaf nodes and without unary nodes or outdegrees larger than k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A292085, there is no canonical definition to state claims against.
-/

/-! ## A292085.P13544278408950426789

`A117707(A295028(n+1)+A262163(n))`
-/

namespace A292085.P13544278408950426789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A295028 (n + 1) + A262163 n).toNat

end

end A292085.P13544278408950426789

/-! ## A292085.P13314504618316845275

`A163352(A295028(n+1)+A262163(n))`
-/

namespace A292085.P13314504618316845275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A295028 (n + 1) + A262163 n).toNat

end

end A292085.P13314504618316845275

/-! ## A292085.P2919088255633371232

`A117707(A320751(n+1)+A295028(n+1))`
-/

namespace A292085.P2919088255633371232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 (A320751 (n + 1) + A295028 (n + 1)).toNat

end

end A292085.P2919088255633371232

/-! ## A292085.P13294034568473637414

`A163352(A320751(n+1)+A295028(n+1))`
-/

namespace A292085.P13294034568473637414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A320751 (n + 1) + A295028 (n + 1)).toNat

end

end A292085.P13294034568473637414

/-! ## A292085.P14954826062419068432

`A325678(and(A247504(n), A294212(n)))`
-/

namespace A292085.P14954826062419068432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325678 (Int.land (A247504 n) (A294212 n)).toNat

end

end A292085.P14954826062419068432

/-!
# A292086: Number T(n,k) of (unlabeled) rooted trees with n leaf nodes and without unary nodes such that k is the maximum of 1 and the node outdegrees; triangle T(n,k), n>=1, 1<=k<=n, read by rows.

The programs for A292086, there is no canonical definition to state claims against.
-/

/-! ## A292086.P16833325648967972539

`A064044(n)-A107846(A170829(n))`
-/

namespace A292086.P16833325648967972539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 n - A107846 (A170829 n).toNat

end

end A292086.P16833325648967972539

/-! ## A292086.P6147405604817876929

`A064044(n)-A206499(A092195(n+1))`
-/

namespace A292086.P6147405604817876929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 n - A206499 (A092195 (n + 1)).toNat

end

end A292086.P6147405604817876929

/-! ## A292086.P16233511083426379602

`A064044(n)-A321936(A288972(n)+2)`
-/

namespace A292086.P16233511083426379602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064044 n - A321936 (A288972 n + 2).toNat

end

end A292086.P16233511083426379602

/-! ## A292086.P18133938099509139838

`A069772(A107424(n+1)%A170890(3*n+4))`
-/

namespace A292086.P18133938099509139838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069772 (Int.tmod (A107424 (n + 1)) (A170890 (3 * n + 4))).toNat

end

end A292086.P18133938099509139838

/-! ## A292086.P7386094914761528866

`A222245(A107424(n+1))%A092195(3*n+4)`
-/

namespace A292086.P7386094914761528866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222245 (A107424 (n + 1)).toNat) (A092195 (3 * n + 4))

end

end A292086.P7386094914761528866

/-!
# A292087: Limit of the number of (unlabeled) rooted trees without unary nodes where n is the difference between the number of leaves and the maximal outdegree as the tree size increases.

The programs for A292087, there is no canonical definition to state claims against.
-/

/-! ## A292087.P3957804364595872368

`A292086(A001844(n))-A057428(n)`
-/

namespace A292087.P3957804364595872368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A001844 n).toNat - A057428 n

end

end A292087.P3957804364595872368

/-! ## A292087.P505318504294857281

`A292086(2*(n+1)²+1)`
-/

namespace A292087.P505318504294857281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (2 * (n + 1) ^ 2 + 1)

end

end A292087.P505318504294857281

/-! ## A292087.P16412439663211698263

`record[A292086(A000124(n)-A004526(n))]`
-/

namespace A292087.P16412439663211698263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A000124 n - A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292087.P16412439663211698263

/-! ## A292087.P7558768180122265962

`record[A292086(A004767(∑[n]))]`
-/

namespace A292087.P7558768180122265962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A004767 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292087.P7558768180122265962

/-! ## A292087.P13686029026606032317

`record[A292086(A133263(2*n)-n)]`
-/

namespace A292087.P13686029026606032317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A133263 (2 * n) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292087.P13686029026606032317

/-! ## A292087.P2688695908808127806

`record[A292086(A016028(2*n+1)-n)]`
-/

namespace A292087.P2688695908808127806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A016028 (2 * n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292087.P2688695908808127806

/-! ## A292087.P5482211874757491956

`A292086(A008619((n+1+n)²))+A057427(n)`
-/

namespace A292087.P5482211874757491956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292086 (A008619 ((n + 1 + n) ^ 2)).toNat + A057427 n

end

end A292087.P5482211874757491956

/-!
# A292088: G.f. A(x) satisfies: 2 = Sum_{n=-oo..+oo} x^n * A(x)^n * (A(x)^n + x^n)^n.

The programs for A292088, there is no canonical definition to state claims against.
-/

/-! ## A292088.P10701012577758841939

`A020064(n)*A084558(A086347(n))`
-/

namespace A292088.P10701012577758841939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n * A084558 (A086347 n).toNat

end

end A292088.P10701012577758841939

/-! ## A292088.P7134383053467614494

`A020064(n)*A329362(A329383(n+1))`
-/

namespace A292088.P7134383053467614494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020064 n * A329362 (A329383 (n + 1)).toNat

end

end A292088.P7134383053467614494

/-!
# A292089: Numbers n such that Watanabe's 3-shift tag system {00/1011} started at the word (100)^n eventually dies (i.e., reaches the empty string).

The programs for A292089, there is no canonical definition to state claims against.
-/

/-! ## A292089.P10158855618362736471

`eq[0, A292091(1+n)]+1`
-/

namespace A292089.P10158855618362736471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292091 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292089.P10158855618362736471

/-! ## A292089.P15880895684364331947

`eq[0, A292092(n+1)]+1`
-/

namespace A292089.P15880895684364331947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A292089.P15880895684364331947

/-! ## A292089.P2924781779732260791

`lt[A292092(A028310(n)), 1]`
-/

namespace A292089.P2924781779732260791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292092 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A292089.P2924781779732260791

/-! ## A292089.P727822107084453900

`eq[0, A292091(A000007(n)+n)]`
-/

namespace A292089.P727822107084453900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292091 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292089.P727822107084453900

/-! ## A292089.P9565712231190805998

`eq[0, A292092(A000007(n)+n)]`
-/

namespace A292089.P9565712231190805998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292092 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292089.P9565712231190805998

/-! ## A292089.P10685458082480322108

`eq[0, A292092(xor(n, A000007(n)))]`
-/

namespace A292089.P10685458082480322108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292092 (Int.xor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292089.P10685458082480322108

/-! ## A292089.P11166720533707361900

`eq[0, A292091(A233583(n+1))]`
-/

namespace A292089.P11166720533707361900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292091 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A292089.P11166720533707361900

/-!
# A292091: Period of orbit of Watanabe's 3-shift tag system {00/1011} applied to the word (100)^n.

The programs for A292091, there is no canonical definition to state claims against.
-/

/-! ## A292091.P14770187470754111535

`A291793(A215661(n)+1)`
-/

namespace A292091.P14770187470754111535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291793 (A215661 n + 1).toNat

end

end A292091.P14770187470754111535

/-! ## A292091.P2832786473315326151

`xor(6, A090786(A090753(n)))`
-/

namespace A292091.P2832786473315326151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 6 (A090786 (A090753 n).toNat)

end

end A292091.P2832786473315326151

/-!
# A292095: Minimal number of nodes of a tree requiring width n in any LR-drawing.

The programs for A292095, there is no canonical definition to state claims against.
-/

/-! ## A292095.P15550151384652861802

`or(1, A003059(A034263(n)))`
-/

namespace A292095.P15550151384652861802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003059 (A034263 n).toNat)

end

end A292095.P15550151384652861802

/-! ## A292095.P6571322345443540153

`A046074(∑[xor(2, A005117(2*n+5))])`
-/

namespace A292095.P6571322345443540153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A005117 (2 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292095.P6571322345443540153

/-! ## A292095.P10014433089095179374

`or(A000194(A034263(n)), A000929(n))`
-/

namespace A292095.P10014433089095179374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (A034263 n).toNat) (A000929 n)

end

end A292095.P10014433089095179374

/-! ## A292095.P1274172356375204196

`or(A000194(A034263(n)), A004525(n))`
-/

namespace A292095.P1274172356375204196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (A034263 n).toNat) (A004525 n)

end

end A292095.P1274172356375204196

/-! ## A292095.P11402346902563956420

`or(A000194(A034263(n)), A004526(n))`
-/

namespace A292095.P11402346902563956420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000194 (A034263 n).toNat) (A004526 n)

end

end A292095.P11402346902563956420

/-!
# A292096: Number of net regularizable trees with 4n+2 vertices.

The programs for A292096, there is no canonical definition to state claims against.
-/

/-! ## A292096.P18281760165297162023

`A301716(A279573(n))/6`
-/

namespace A292096.P18281760165297162023
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A301716 (A279573 n).toNat : ℚ) / 6

end

end A292096.P18281760165297162023

/-! ## A292096.P16375413206025600227

`A214701(floor(sqrt(A352658(n))))`
-/

namespace A292096.P16375413206025600227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214701 (Int.sqrt (A352658 n)).toNat

end

end A292096.P16375413206025600227

/-! ## A292096.P16486487290389714570

`A187251(n)+A007570(A115981(n))`
-/

namespace A292096.P16486487290389714570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187251 n + A007570 (A115981 n).toNat

end

end A292096.P16486487290389714570

/-!
# A292097: Number of chair trees constructed from n chairs.

The programs for A292097, there is no canonical definition to state claims against.
-/

/-! ## A292097.P589481648039686806

`A070090(A134350(n+1))`
-/

namespace A292097.P589481648039686806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070090 (A134350 (n + 1)).toNat

end

end A292097.P589481648039686806

/-! ## A292097.P10330346315826067580

`or(n, A008618(A030240(n)))`
-/

namespace A292097.P10330346315826067580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A008618 (A030240 n).toNat)

end

end A292097.P10330346315826067580

/-!
# A292098: Number of multisets of chair trees constructed from n chairs.

The programs for A292098, there is no canonical definition to state claims against.
-/

/-! ## A292098.P12554164402135751088

`A277015(a(n-1)+n-2)` with `a(0)=1, a(1)=1`
-/

namespace A292098.P12554164402135751088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A277015 (a (n - 1) + ((n : ℤ) - 2)).toNat

end

end A292098.P12554164402135751088

/-! ## A292098.P2100479611230125955

`A008620(Δ[A242798(n)])`
-/

namespace A292098.P2100479611230125955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242798 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (f1 (n + 1) - f1 n).toNat

end

end A292098.P2100479611230125955

/-!
# A292099: Number of P_3 chair trees constructed from n chairs.

The programs for A292099, there is no canonical definition to state claims against.
-/

/-! ## A292099.P12069116116127243827

`A008620(∑[∑[A026032(n)]])`
-/

namespace A292099.P12069116116127243827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A292099.P12069116116127243827

/-! ## A292099.P8129345144709060894

`xor(∑[A213076(n+2)], A276603(n))`
-/

namespace A292099.P8129345144709060894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (∑ j ∈ Finset.range (n + 1), f1 j) (A276603 n)

end

end A292099.P8129345144709060894

