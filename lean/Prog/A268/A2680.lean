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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A268000: p*B_(p-1)+1 modulo p^2, where p = prime(n) and B_i denotes the i-th Bernoulli number.

The programs for A268000, the canonical program `A268000.P6584107503855115913` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268000 has offset 1).

The definition of A268000 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268000.P6584107503855115913

`(A112660(n+1)+A008864(n+1))%A001248(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A268000

/-- `(A112660(n+1)+A008864(n+1))%A001248(n+1)` -/
def P6584107503855115913.Spec : Prop :=
  ∀ n, P6584107503855115913.a n = A268000 (n + 1)

theorem P6584107503855115913.correct : P6584107503855115913.Spec := by
  intro n
  simp only [A268000, Nat.add_sub_cancel]

end A268000

/-! ## A268000.P8267913875190673086

`(A112660(n+1)+A060800(n+1))%A001248(n+1)`
-/

namespace A268000.P8267913875190673086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112660 (n + 1) + A060800 (n + 1)) (A001248 (n + 1))

end

end A268000.P8267913875190673086

namespace A268000

/-- `(A112660(n+1)+A060800(n+1))%A001248(n+1)` -/
def P8267913875190673086.Spec : Prop :=
  ∀ n, P8267913875190673086.a n = A268000 (n + 1)

end A268000

/-! ## A268000.P4288276756041921870

`(A330526(n+1)+A008864(n+1))%A001248(n+1)`
-/

namespace A268000.P4288276756041921870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330526 (n + 1) + A008864 (n + 1)) (A001248 (n + 1))

end

end A268000.P4288276756041921870

namespace A268000

/-- `(A330526(n+1)+A008864(n+1))%A001248(n+1)` -/
def P4288276756041921870.Spec : Prop :=
  ∀ n, P4288276756041921870.a n = A268000 (n + 1)

end A268000

/-! ## A268000.P1897190391810782571

`(A330526(n+1)+A060800(n+1))%A001248(n+1)`
-/

namespace A268000.P1897190391810782571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330526 (n + 1) + A060800 (n + 1)) (A001248 (n + 1))

end

end A268000.P1897190391810782571

namespace A268000

/-- `(A330526(n+1)+A060800(n+1))%A001248(n+1)` -/
def P1897190391810782571.Spec : Prop :=
  ∀ n, P1897190391810782571.a n = A268000 (n + 1)

end A268000

/-!
# A268001: Number of nX3 0..3 arrays with every repeated value in every row and column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268001, there is no canonical definition to state claims against.
-/

/-! ## A268001.P11771853674090009888

`A268003(∑[n+3]+1)`
-/

namespace A268001.P11771853674090009888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268001.P11771853674090009888

/-! ## A268001.P3177263273792197655

`A268003(A027379(n+1)+1)-A000007(n+1)`
-/

namespace A268001.P3177263273792197655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (A027379 (n + 1) + 1).toNat - A000007 (n + 1)

end

end A268001.P3177263273792197655

/-!
# A268002: Number of nX4 0..4 arrays with every repeated value in every row and column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268002, there is no canonical definition to state claims against.
-/

/-! ## A268002.P7603931794342844738

`A268003(A141214(n+1))`
-/

namespace A268002.P7603931794342844738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (A141214 (n + 1)).toNat

end

end A268002.P7603931794342844738

/-! ## A268002.P16645918956317218069

`A268003(A027379(n+2))`
-/

namespace A268002.P16645918956317218069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (A027379 (n + 2)).toNat

end

end A268002.P16645918956317218069

/-!
# A268003: T(n,k)=Number of nXk 0..k arrays with every repeated value in every row and column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268003, there is no canonical definition to state claims against.
-/

/-! ## A268003.P16295377465387859183

`A268180(n+1)+A011745(A000166(n))`
-/

namespace A268003.P16295377465387859183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (n + 1) + A011745 (A000166 n).toNat

end

end A268003.P16295377465387859183

/-! ## A268003.P7585967394440219438

`A268180(n+1)+A023969(A000088(n))`
-/

namespace A268003.P7585967394440219438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (n + 1) + A023969 (A000088 n).toNat

end

end A268003.P7585967394440219438

/-! ## A268003.P15166276554554951297

`A268180(n+1)+A025465(A001003(n))`
-/

namespace A268003.P15166276554554951297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (n + 1) + A025465 (A001003 n).toNat

end

end A268003.P15166276554554951297

/-! ## A268003.P2382899530961137365

`A268180(n+1)+A025465(A002135(n))`
-/

namespace A268003.P2382899530961137365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (n + 1) + A025465 (A002135 n).toNat

end

end A268003.P2382899530961137365

/-!
# A268004: Number of 1Xn 0..n arrays with every repeated value in every row and column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268004, there is no canonical definition to state claims against.
-/

/-! ## A268004.P18145019461195794727

`A261041(n+1)-record[A095149(n)]`
-/

namespace A268004.P18145019461195794727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268004.P18145019461195794727

/-! ## A268004.P4713251580840918564

`A261041(n+1)-record[A108087(n)]`
-/

namespace A268004.P4713251580840918564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268004.P4713251580840918564

/-! ## A268004.P4313788428811160351

`A261041(n+1)-record[A186020(n)]`
-/

namespace A268004.P4313788428811160351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268004.P4313788428811160351

/-! ## A268004.P14754271577342543592

`A261041(n+1)-record[A212431(n)]`
-/

namespace A268004.P14754271577342543592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268004.P14754271577342543592

/-! ## A268004.P14194226637909099795

`A261041(n+1)-A000110(n+1)`
-/

namespace A268004.P14194226637909099795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (n + 1) - A000110 (n + 1)

end

end A268004.P14194226637909099795

/-!
# A268005: Number of 2Xn 0..n arrays with every repeated value in every row and column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268005, there is no canonical definition to state claims against.
-/

/-! ## A268005.P2387394899556944674

`A268003(∑[n+1]+2)`
-/

namespace A268005.P2387394899556944674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268005.P2387394899556944674

/-! ## A268005.P9203333856654753544

`A268180(∑[n+1]+2)`
-/

namespace A268005.P9203333856654753544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268180 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268005.P9203333856654753544

/-! ## A268005.P17931366201947783596

`record[gcd(A002262(n), A268180(n+2))]`
-/

namespace A268005.P17931366201947783596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A268180 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268005.P17931366201947783596

/-! ## A268005.P6117791372195674787

`record[gcd(A173787(n), A268180(n+3))]`
-/

namespace A268005.P6117791372195674787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A173787 n) (A268180 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268005.P6117791372195674787

/-!
# A268006: Number of 3 X n 0..n arrays with every repeated value in every row and column equal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268006, there is no canonical definition to state claims against.
-/

/-! ## A268006.P13829568240776909459

`A268003(∑[n+2]+4)`
-/

namespace A268006.P13829568240776909459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268006.P13829568240776909459

/-! ## A268006.P16403532125973986677

`and(-1, A268003(A167614(n+1)))`
-/

namespace A268006.P16403532125973986677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A268003 (A167614 (n + 1)).toNat)

end

end A268006.P16403532125973986677

/-! ## A268006.P2587490279338289653

`A268003(A167614(n+1))+A011742(n)`
-/

namespace A268006.P2587490279338289653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268003 (A167614 (n + 1)).toNat + A011742 n

end

end A268006.P2587490279338289653

/-!
# A268007: Number of nX3 0..3 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268007, there is no canonical definition to state claims against.
-/

/-! ## A268007.P15154666302658715302

`A268073(∑[n+2]+4)`
-/

namespace A268007.P15154666302658715302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268007.P15154666302658715302

/-! ## A268007.P10122713319488204059

`lcm(1-and(2, n), A268073(A167614(n+1)))`
-/

namespace A268007.P10122713319488204059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (Nat.land 2 n : ℤ)) (A268073 (A167614 (n + 1)).toNat)

end

end A268007.P10122713319488204059

/-! ## A268007.P13633602823165247090

`A268073(A167614(n+1))+A025437(n)`
-/

namespace A268007.P13633602823165247090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (A167614 (n + 1)).toNat + A025437 n

end

end A268007.P13633602823165247090

/-! ## A268007.P12663307520150409047

`A268073(A167614(n+1))+A025465(n)`
-/

namespace A268007.P12663307520150409047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (A167614 (n + 1)).toNat + A025465 n

end

end A268007.P12663307520150409047

/-! ## A268007.P6819465968029660339

`A268073(A167614(n+1))+A025469(n)`
-/

namespace A268007.P6819465968029660339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (A167614 (n + 1)).toNat + A025469 n

end

end A268007.P6819465968029660339

/-!
# A268008: Number of nX4 0..4 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268008, there is no canonical definition to state claims against.
-/

/-! ## A268008.P15491037430366863909

`A268009(A141214(n+1))`
-/

namespace A268008.P15491037430366863909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (A141214 (n + 1)).toNat

end

end A268008.P15491037430366863909

/-! ## A268008.P243849664950820172

`A268009(A155212(n)+5)`
-/

namespace A268008.P243849664950820172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (A155212 n + 5).toNat

end

end A268008.P243849664950820172

/-!
# A268009: T(n,k)=Number of nXk 0..k arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268009, there is no canonical definition to state claims against.
-/

/-! ## A268009.P1797931984832151082

`A268049(n+1)+A010815(A042194(n))`
-/

namespace A268009.P1797931984832151082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (n + 1) + A010815 (A042194 n).toNat

end

end A268009.P1797931984832151082

/-! ## A268009.P6252572928316692311

`A268049(n+1)-A011745(A000166(n))`
-/

namespace A268009.P6252572928316692311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (n + 1) - A011745 (A000166 n).toNat

end

end A268009.P6252572928316692311

/-! ## A268009.P4694250719440023490

`A268049(n+1)-A023969(A000088(n))`
-/

namespace A268009.P4694250719440023490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (n + 1) - A023969 (A000088 n).toNat

end

end A268009.P4694250719440023490

/-! ## A268009.P3671001497353722200

`A268049(n+1)-A025465(A001003(n))`
-/

namespace A268009.P3671001497353722200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (n + 1) - A025465 (A001003 n).toNat

end

end A268009.P3671001497353722200

/-!
# A268010: Number of 1Xn 0..n arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268010, there is no canonical definition to state claims against.
-/

/-! ## A268010.P4879914343102768795

`A268956(2*n²+1)`
-/

namespace A268010.P4879914343102768795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (2 * n ^ 2 + 1)

end

end A268010.P4879914343102768795

/-! ## A268010.P2210455276326680158

`record[A268956(A008818(n+2))]`
-/

namespace A268010.P2210455276326680158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A008818 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268010.P2210455276326680158

/-! ## A268010.P15333756033887040759

`record[gcd(A114327(n), A268956(n+1))]`
-/

namespace A268010.P15333756033887040759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A268956 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268010.P15333756033887040759

/-! ## A268010.P2531419233752366980

`record[A268956(A003602(n+1)+∑[n])]`
-/

namespace A268010.P2531419233752366980
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A003602 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268010.P2531419233752366980

/-! ## A268010.P10498511825112191877

`A268956(A001844(n))%A268937(n+1)`
-/

namespace A268010.P10498511825112191877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268956 (A001844 n).toNat) (A268937 (n + 1))

end

end A268010.P10498511825112191877

/-! ## A268010.P18217258333470971855

`record[A268956(2*(n+1))/A114327(2*n+1)]`
-/

namespace A268010.P18217258333470971855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268956 (2 * (n + 1)) : ℚ) / (A114327 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268010.P18217258333470971855

/-! ## A268010.P15861806684647876256

`record[A268956(A003602((n+1)²))]`
-/

namespace A268010.P15861806684647876256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A003602 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268010.P15861806684647876256

/-! ## A268010.P12918408638096034191

`record[A268956(A008619(n^gcd(2, n+1)))]`
-/

namespace A268010.P12918408638096034191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A008619 (n ^ Nat.gcd 2 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268010.P12918408638096034191

/-!
# A268011: Number of 2 X n 0..n arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268011, there is no canonical definition to state claims against.
-/

/-! ## A268011.P2228123619981517103

`A268049(∑[n+1]+2)`
-/

namespace A268011.P2228123619981517103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268011.P2228123619981517103

/-! ## A268011.P980510487505440498

`record[A268049(n+3)/A046089(n+1)]`
-/

namespace A268011.P980510487505440498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268049 (n + 3) : ℚ) / (A046089 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268011.P980510487505440498

/-! ## A268011.P10706246140676714275

`A268009(∑[n+1]+2)`
-/

namespace A268011.P10706246140676714275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268011.P10706246140676714275

/-! ## A268011.P11955959863271997911

`record[A010054(n)*A268009(n+2)]`
-/

namespace A268011.P11955959863271997911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A268009 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268011.P11955959863271997911

/-!
# A268012: Number of 3Xn 0..n arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268012, there is no canonical definition to state claims against.
-/

/-! ## A268012.P2985144593563067528

`A268009(∑[n+2]+4)`
-/

namespace A268012.P2985144593563067528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268012.P2985144593563067528

/-! ## A268012.P5469336174597293746

`and(-1, A268009(A167614(n+1)))`
-/

namespace A268012.P5469336174597293746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A268009 (A167614 (n + 1)).toNat)

end

end A268012.P5469336174597293746

/-! ## A268012.P16768462241265175644

`A268009(A167614(n+1))+A025437(n)`
-/

namespace A268012.P16768462241265175644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (A167614 (n + 1)).toNat + A025437 n

end

end A268012.P16768462241265175644

/-!
# A268013: Number of n X 1 0..2 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268013, there is no canonical definition to state claims against.
-/

/-! ## A268013.P15436345548039196409

`A208517((n+3)²-∑[n+1])`
-/

namespace A268013.P15436345548039196409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208517 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268013.P15436345548039196409

/-! ## A268013.P11802417386632968738

`sqrt(A268014(n+1))`
-/

namespace A268013.P11802417386632968738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A268014 (n + 1) : ℝ)

end

end A268013.P11802417386632968738

/-! ## A268013.P1091135869429211803

`A269435(∑[n+2])`
-/

namespace A268013.P1091135869429211803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268013.P1091135869429211803

/-! ## A268013.P5427836639423996964

`record[A269435(A000096(A004736(n+1)))]`
-/

namespace A268013.P5427836639423996964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000096 (A004736 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268013.P5427836639423996964

/-! ## A268013.P18090134540046060681

`record[A269435(A000096(A020653(n+1)))]`
-/

namespace A268013.P18090134540046060681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (A000096 (A020653 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268013.P18090134540046060681

/-! ## A268013.P13072607556315506492

`A269435(A000096(n+1))%A000588(n+4)`
-/

namespace A268013.P13072607556315506492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269435 (A000096 (n + 1)).toNat) (A000588 (n + 4))

end

end A268013.P13072607556315506492

/-! ## A268013.P3613352838187508585

`A268015(n+1)^(1/3)`
-/

namespace A268013.P3613352838187508585
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268015 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A268013.P3613352838187508585

/-! ## A268013.P4199352100200122350

`A268015(n+1)/A268014(n+1)`
-/

namespace A268013.P4199352100200122350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268015 (n + 1) : ℚ) / (A268014 (n + 1) : ℚ)

end

end A268013.P4199352100200122350

/-!
# A268014: Number of n X 2 0..2 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268014, there is no canonical definition to state claims against.
-/

/-! ## A268014.P16507540523480198188

`A268013(n+1)²`
-/

namespace A268014.P16507540523480198188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268013 (n + 1) ^ 2

end

end A268014.P16507540523480198188

/-! ## A268014.P521419216321567580

`A268013(n+1)^A020639(2*(n+1))`
-/

namespace A268014.P521419216321567580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268013 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A268014.P521419216321567580

/-! ## A268014.P11622729814136649092

`A268013(n+1)^A000005(A007918(n))`
-/

namespace A268014.P11622729814136649092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268013 (n + 1) : ℚ) ^ (A000005 (A007918 n).toNat : ℤ)

end

end A268014.P11622729814136649092

/-! ## A268014.P12048709994275925617

`A268013(n+1)^A000005(A031215(n+1))`
-/

namespace A268014.P12048709994275925617
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268013 (n + 1) : ℚ) ^ (A000005 (A031215 (n + 1)).toNat : ℤ)

end

end A268014.P12048709994275925617

/-! ## A268014.P13921625581893590984

`A268013(n+1)^A000005(A080437(n+1))`
-/

namespace A268014.P13921625581893590984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268013 (n + 1) : ℚ) ^ (A000005 (A080437 (n + 1)).toNat : ℤ)

end

end A268014.P13921625581893590984

/-! ## A268014.P2772711602996858904

`A268013(n+1)^A010673(A079578(n+1))`
-/

namespace A268014.P2772711602996858904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268013 (n + 1) : ℚ) ^ (A010673 (A079578 (n + 1)).toNat : ℤ)

end

end A268014.P2772711602996858904

/-! ## A268014.P18093346082425806456

`A268013(n+1)^A329607(A280872(n+1))`
-/

namespace A268014.P18093346082425806456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268013 (n + 1) : ℚ) ^ (A329607 (A280872 (n + 1)).toNat : ℤ)

end

end A268014.P18093346082425806456

/-! ## A268014.P2951591885853889303

`A268013(n+1)^(A348945(A348969(n+1))+2)`
-/

namespace A268014.P2951591885853889303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268013 (n + 1) : ℚ) ^ (A348945 (A348969 (n + 1)).toNat + 2 : ℤ)

end

end A268014.P2951591885853889303

/-! ## A268014.P6382111526955647966

`A269435(∑[n+2])²`
-/

namespace A268014.P6382111526955647966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A268014.P6382111526955647966

/-! ## A268014.P9429472815202330448

`A268015(n+1)/A268013(n+1)`
-/

namespace A268014.P9429472815202330448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268015 (n + 1) : ℚ) / (A268013 (n + 1) : ℚ)

end

end A268014.P9429472815202330448

/-!
# A268015: Number of nX3 0..2 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268015, there is no canonical definition to state claims against.
-/

/-! ## A268015.P15321945184282194046

`A268013(n+1)^3`
-/

namespace A268015.P15321945184282194046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268013 (n + 1) ^ 3

end

end A268015.P15321945184282194046

/-! ## A268015.P13166500825626450451

`sqrt(A268014(n+1))^3`
-/

namespace A268015.P13166500825626450451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A268014 (n + 1) : ℝ) ^ 3

end

end A268015.P13166500825626450451

/-! ## A268015.P12576919097854685438

`A269435(∑[n+2])^3`
-/

namespace A268015.P12576919097854685438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269435 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A268015.P12576919097854685438

/-! ## A268015.P3075916365265238764

`A268013(n+1)*A268014(n+1)`
-/

namespace A268015.P3075916365265238764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268013 (n + 1) * A268014 (n + 1)

end

end A268015.P3075916365265238764

/-! ## A268015.P17410630553159722626

`A268014(n+1)*A269435(∑[n+2])`
-/

namespace A268015.P17410630553159722626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268014 (n + 1) * A269435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268015.P17410630553159722626

/-!
# A268016: Number of nX4 0..2 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268016, there is no canonical definition to state claims against.
-/

/-! ## A268016.P316534709721497398

`A268019(A374004(n+1))`
-/

namespace A268016.P316534709721497398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A374004 (n + 1)).toNat

end

end A268016.P316534709721497398

/-! ## A268016.P17817479861215653283

`A268019(A167614(n+2)+1)`
-/

namespace A268016.P17817479861215653283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A167614 (n + 2) + 1).toNat

end

end A268016.P17817479861215653283

/-! ## A268016.P1491630802272938234

`A268019(A141214(n+1))`
-/

namespace A268016.P1491630802272938234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A141214 (n + 1)).toNat

end

end A268016.P1491630802272938234

/-! ## A268016.P13910200816663013202

`A268019(A056000(n)+7)`
-/

namespace A268016.P13910200816663013202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A056000 n + 7).toNat

end

end A268016.P13910200816663013202

/-! ## A268016.P9891097065770358131

`A268019(eq[3, A193592(n)])`
-/

namespace A268016.P9891097065770358131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268016.P9891097065770358131

/-!
# A268017: Number of nX5 0..2 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268017, there is no canonical definition to state claims against.
-/

/-! ## A268017.P5895399212447726620

`A268019(A374005(n+1))`
-/

namespace A268017.P5895399212447726620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A374005 (n + 1)).toNat

end

end A268017.P5895399212447726620

/-! ## A268017.P7107649281562671858

`A268019(A000217(n+4)+5)`
-/

namespace A268017.P7107649281562671858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A000217 (n + 4) + 5).toNat

end

end A268017.P7107649281562671858

/-! ## A268017.P15562979121244879498

`A268019(A133263(n+4)+3)+A025442(n)`
-/

namespace A268017.P15562979121244879498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A133263 (n + 4) + 3).toNat + A025442 n

end

end A268017.P15562979121244879498

/-! ## A268017.P14044176530921725751

`A268019(A133263(n+4)+3)+A000007(n+2)`
-/

namespace A268017.P14044176530921725751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A133263 (n + 4) + 3).toNat + A000007 (n + 2)

end

end A268017.P14044176530921725751

/-!
# A268018: Number of n X 6 0..2 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268018, there is no canonical definition to state claims against.
-/

/-! ## A268018.P15455674505673638913

`A268019(A374007(n+1))`
-/

namespace A268018.P15455674505673638913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (A374007 (n + 1)).toNat

end

end A268018.P15455674505673638913

/-! ## A268018.P3874004614846574102

`A268019(eq[5, A193592(n)])`
-/

namespace A268018.P3874004614846574102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268018.P3874004614846574102

/-! ## A268018.P395211091183974571

`A268019(eq[6, A200370(n+1)])`
-/

namespace A268018.P395211091183974571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268019 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268018.P395211091183974571

/-!
# A268019: T(n,k)=Number of nXk 0..2 arrays with every repeated value in every row and column greater than or equal to the previous repeated value.

The programs for A268019, there is no canonical definition to state claims against.
-/

/-! ## A268019.P7824815546951827052

`or(A265584(A038503(n)), A268026(n+1))`
-/

namespace A268019.P7824815546951827052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A265584 (A038503 n).toNat) (A268026 (n + 1))

end

end A268019.P7824815546951827052

/-! ## A268019.P9581272699292731394

`or(A268026(n+1), A348528(A000292(n)))`
-/

namespace A268019.P9581272699292731394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268026 (n + 1)) (A348528 (A000292 n).toNat)

end

end A268019.P9581272699292731394

/-! ## A268019.P8823994068529020269

`or(A268026(n+1), A348528(A339617(n)))`
-/

namespace A268019.P8823994068529020269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A268026 (n + 1)) (A348528 (A339617 n).toNat)

end

end A268019.P8823994068529020269

/-!
# A268021: a(1) = a(2) = 1; if n > 2 then a(n) = a(n-1)*a(n-2) - a(n-2) - a(n-1).

The programs for A268021, the canonical program `A268021.P16688630765161857710` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268021 has offset 1).

The definition of A268021 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)-a(n-2)-a(n-1)` (program `A268021.P16688630765161857710`, by `A268021.P16688630765161857710.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A268021.P16688630765161857710

`a(n-1)*a(n-2)-a(n-2)-a(n-1)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268021

/-- `a(n-1)*a(n-2)-a(n-2)-a(n-1)` -/
def P16688630765161857710.Spec : Prop :=
  ∀ n, P16688630765161857710.a n = A268021 (n + 1)

theorem P16688630765161857710.correct : P16688630765161857710.Spec := by
  intro n
  simp only [A268021, Nat.add_sub_cancel]

end A268021

/-! ## A268021.P9889591881646329244

`(1-a(n-1))*(1-a(n-2))-1` with `a(0)=1, a(1)=1`
-/

namespace A268021.P9889591881646329244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (1 - a (n - 1)) * (1 - a (n - 2)) - 1

end

end A268021.P9889591881646329244

namespace A268021

/-- `(1-a(n-1))*(1-a(n-2))-1` -/
def P9889591881646329244.Spec : Prop :=
  ∀ n, P9889591881646329244.a n = A268021 (n + 1)

theorem P9889591881646329244.correct : P9889591881646329244.Spec := by
  intro n
  simp only [A268021, Nat.add_sub_cancel, A268021.P9889591881646329244.a, A268021.P16688630765161857710.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A268021

/-!
# A268022: Number of nX3 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268022, there is no canonical definition to state claims against.
-/

/-! ## A268022.P3840065946163408470

`A267960(n+1)^3`
-/

namespace A268022.P3840065946163408470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267960 (n + 1) ^ 3

end

end A268022.P3840065946163408470

/-! ## A268022.P17099226417057347760

`sqrt(A267961(n+1))^3`
-/

namespace A268022.P17099226417057347760
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A267961 (n + 1) : ℝ) ^ 3

end

end A268022.P17099226417057347760

/-! ## A268022.P12847205484777504601

`A267960(n+1)*A267961(n+1)`
-/

namespace A268022.P12847205484777504601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267960 (n + 1) * A267961 (n + 1)

end

end A268022.P12847205484777504601

/-! ## A268022.P13573951853721237460

`A267960(A000027(n+1))*A267960(n+1)*A267960(n+1)`
-/

namespace A268022.P13573951853721237460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267960 (A000027 (n + 1)).toNat * A267960 (n + 1) * A267960 (n + 1)

end

end A268022.P13573951853721237460

/-! ## A268022.P7036158939731047371

`A269409(∑[n+2])^3`
-/

namespace A268022.P7036158939731047371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269409 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 3

end

end A268022.P7036158939731047371

/-! ## A268022.P14040123757595515483

`A267960(n+1)²*A269409(∑[n+2])`
-/

namespace A268022.P14040123757595515483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267960 (n + 1) ^ 2 * A269409 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268022.P14040123757595515483

/-! ## A268022.P9177667575562888234

`A267960(A000027(n+1))²²/A267960(n+1)`
-/

namespace A268022.P9177667575562888234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A267960 (A000027 (n + 1)).toNat ^ 2) ^ 2 : ℚ) / (A267960 (n + 1) : ℚ)

end

end A268022.P9177667575562888234

/-!
# A268023: Number of nX4 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268023, there is no canonical definition to state claims against.
-/

/-! ## A268023.P4198445210871379805

`A268026(A141214(n+1))`
-/

namespace A268023.P4198445210871379805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A141214 (n + 1)).toNat

end

end A268023.P4198445210871379805

/-! ## A268023.P7944315872982385832

`A268026(A056000(n)+7)`
-/

namespace A268023.P7944315872982385832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A056000 n + 7).toNat

end

end A268023.P7944315872982385832

/-! ## A268023.P8662503912360203875

`A268026(eq[3, A193592(n)])`
-/

namespace A268023.P8662503912360203875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268023.P8662503912360203875

/-! ## A268023.P10345110149941988686

`A268026(eq[4, A140996(n)])`
-/

namespace A268023.P10345110149941988686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268023.P10345110149941988686

/-! ## A268023.P17983745443436562321

`A268026(A052905(n+1)+2)`
-/

namespace A268023.P17983745443436562321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A052905 (n + 1) + 2).toNat

end

end A268023.P17983745443436562321

/-!
# A268024: Number of nX5 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268024, there is no canonical definition to state claims against.
-/

/-! ## A268024.P10274990705922532674

`A268026(∑[n+5]+6)`
-/

namespace A268024.P10274990705922532674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A268024.P10274990705922532674

/-! ## A268024.P11649733501107505887

`gcd(n, n+1)*A268026(A046691(n+3))`
-/

namespace A268024.P11649733501107505887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A268026 (A046691 (n + 3)).toNat

end

end A268024.P11649733501107505887

/-! ## A268024.P11426909389363492298

`A008835(n+1)*A268026(A046691(n+3))`
-/

namespace A268024.P11426909389363492298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1) * A268026 (A046691 (n + 3)).toNat

end

end A268024.P11426909389363492298

/-! ## A268024.P8413072071926520306

`A268026(A046691(n+3))%A267965(n+1)`
-/

namespace A268024.P8413072071926520306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268026 (A046691 (n + 3)).toNat) (A267965 (n + 1))

end

end A268024.P8413072071926520306

/-!
# A268025: Number of n X 6 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268025, there is no canonical definition to state claims against.
-/

/-! ## A268025.P1820173284659510467

`A268026(A052905(n+3))`
-/

namespace A268025.P1820173284659510467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A052905 (n + 3)).toNat

end

end A268025.P1820173284659510467

/-! ## A268025.P8189710216730934312

`A268026(Δ[A023545(n+2)]-1)`
-/

namespace A268025.P8189710216730934312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (f1 (n + 1) - f1 n - 1).toNat

end

end A268025.P8189710216730934312

/-!
# A268026: T(n,k)=Number of nXk 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268026, there is no canonical definition to state claims against.
-/

/-! ## A268026.P12328597277437878091

`3*A268092(A043320(n+1))`
-/

namespace A268026.P12328597277437878091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268092 (A043320 (n + 1)).toNat

end

end A268026.P12328597277437878091

/-! ## A268026.P18443193625770764977

`3*A268092(A044917(n+1))`
-/

namespace A268026.P18443193625770764977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268092 (A044917 (n + 1)).toNat

end

end A268026.P18443193625770764977

/-! ## A268026.P6412094934472392568

`3*A268092(A161953(n+1))`
-/

namespace A268026.P6412094934472392568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268092 (A161953 (n + 1)).toNat

end

end A268026.P6412094934472392568

/-! ## A268026.P3029138322786972175

`3*A268092(A187829(n+1))`
-/

namespace A268026.P3029138322786972175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268092 (A187829 (n + 1)).toNat

end

end A268026.P3029138322786972175

/-! ## A268026.P13992092178191553160

`3*A268092(A246337(n+1))`
-/

namespace A268026.P13992092178191553160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A268092 (A246337 (n + 1)).toNat

end

end A268026.P13992092178191553160

/-!
# A268027: Number of 3Xn 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268027, there is no canonical definition to state claims against.
-/

/-! ## A268027.P44356293038864602

`A268026(∑[n+2]+4)`
-/

namespace A268027.P44356293038864602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268027.P44356293038864602

/-! ## A268027.P4613998674085918249

`lcm(2, A268026(A167614(n+1)))`
-/

namespace A268027.P4613998674085918249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268026 (A167614 (n + 1)).toNat)

end

end A268027.P4613998674085918249

/-! ## A268027.P1901208446216904084

`A068045(n)*A268026(A167614(n+1))`
-/

namespace A268027.P1901208446216904084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068045 n * A268026 (A167614 (n + 1)).toNat

end

end A268027.P1901208446216904084

/-! ## A268027.P7907455142207869821

`A208673(n)*A268026(A167614(n+1))`
-/

namespace A268027.P7907455142207869821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 n * A268026 (A167614 (n + 1)).toNat

end

end A268027.P7907455142207869821

/-! ## A268027.P4117914452859248159

`A268026(A167614(n+1))+A000035(2*n)`
-/

namespace A268027.P4117914452859248159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A167614 (n + 1)).toNat + A000035 (2 * n)

end

end A268027.P4117914452859248159

/-!
# A268028: Number of 4Xn 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268028, there is no canonical definition to state claims against.
-/

/-! ## A268028.P5352167574697810488

`A268026(A141214(n)+7)`
-/

namespace A268028.P5352167574697810488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A141214 n + 7).toNat

end

end A268028.P5352167574697810488

/-! ## A268028.P12364407382830147656

`A268026(A052905(n)+9)`
-/

namespace A268028.P12364407382830147656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A052905 n + 9).toNat

end

end A268028.P12364407382830147656

/-! ## A268028.P11430973571517699451

`A268026(A055999(n)+10)`
-/

namespace A268028.P11430973571517699451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A055999 n + 10).toNat

end

end A268028.P11430973571517699451

/-! ## A268028.P17955717604901828545

`A268026(A167614(n+2)+1)`
-/

namespace A268028.P17955717604901828545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A167614 (n + 2) + 1).toNat

end

end A268028.P17955717604901828545

/-! ## A268028.P11982786968528359004

`A268026(eq[5, A131818(n+1)])`
-/

namespace A268028.P11982786968528359004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268028.P11982786968528359004

/-!
# A268029: Number of 5Xn 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268029, there is no canonical definition to state claims against.
-/

/-! ## A268029.P8728849394103703727

`A268026(A167499(n+3))`
-/

namespace A268029.P8728849394103703727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A167499 (n + 3)).toNat

end

end A268029.P8728849394103703727

/-! ## A268029.P14227074095048180656

`A268026(A155212(n)+13)`
-/

namespace A268029.P14227074095048180656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A155212 n + 13).toNat

end

end A268029.P14227074095048180656

/-! ## A268029.P5071562029060624536

`A268026(A056000(n)+15)`
-/

namespace A268029.P5071562029060624536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A056000 n + 15).toNat

end

end A268029.P5071562029060624536

/-! ## A268029.P10385606578557853097

`A268026(A000124(n+4)+4)`
-/

namespace A268029.P10385606578557853097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (A000124 (n + 4) + 4).toNat

end

end A268029.P10385606578557853097

/-! ## A268029.P7794936920407712708

`A268026(eq[6, A131818(n+1)])`
-/

namespace A268029.P7794936920407712708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268029.P7794936920407712708

/-!
# A268030: Number of 6Xn 0..2 arrays with every repeated value in every row greater than or equal to, and in every column greater than, the previous repeated value.

The programs for A268030, there is no canonical definition to state claims against.
-/

/-! ## A268030.P7070262058171578841

`A268026(eq[7, A131818(n+1)])`
-/

namespace A268030.P7070262058171578841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268026 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268030.P7070262058171578841

/-!
# A268031: Primes with the property that deleting some two digits one at a time in unique order gives a prime (with an even number of digits) at each step, until the empty string is reached.

The programs for A268031, there is no canonical definition to state claims against.
-/

/-! ## A268031.P2777555012135909332

`p?[A001637(A137734(n²))]`
-/

namespace A268031.P2777555012135909332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268031.P2777555012135909332

/-! ## A268031.P15928895272158161240

`p?[A001637(A137735(n²))]`
-/

namespace A268031.P15928895272158161240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268031.P15928895272158161240

/-! ## A268031.P15712002641240333209

`p?[A001637(A000196((n+1)²))]`
-/

namespace A268031.P15712002641240333209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (A000196 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268031.P15712002641240333209

/-! ## A268031.P6808186967867811491

`p?[A001637(n+1)*A332202(n)]`
-/

namespace A268031.P6808186967867811491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001637 (n + 1) * A332202 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268031.P6808186967867811491

/-!
# A268032: Run lengths in the parity of A233312.

The programs for A268032, the canonical program `A268032.P15572940692286677339` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268032 has offset 1).

The definition of A268032 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268032.P15572940692286677339

`Δ[lt[and(n, 2*n), 3]]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268032

/-- `Δ[lt[and(n, 2*n), 3]]` -/
def P15572940692286677339.Spec : Prop :=
  ∀ n, P15572940692286677339.a n = A268032 (n + 1)

theorem P15572940692286677339.correct : P15572940692286677339.Spec := by
  intro n
  simp only [A268032, Nat.add_sub_cancel]

end A268032

/-! ## A268032.P16188075958181111381

`Δ[eq[1, (1-and(n, 2*n))²]]`
-/

namespace A268032.P16188075958181111381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.land n (2 * n) : ℤ)) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A268032.P16188075958181111381

namespace A268032

/-- `Δ[eq[1, (1-and(n, 2*n))²]]` -/
def P16188075958181111381.Spec : Prop :=
  ∀ n, P16188075958181111381.a n = A268032 (n + 1)

end A268032

/-! ## A268032.P2646549930908824418

`Δ[lt[A048735(n), 2]]`
-/

namespace A268032.P2646549930908824418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A268032.P2646549930908824418

namespace A268032

/-- `Δ[lt[A048735(n), 2]]` -/
def P2646549930908824418.Spec : Prop :=
  ∀ n, P2646549930908824418.a n = A268032 (n + 1)

end A268032

/-! ## A268032.P13652809341909792292

`Δ[lt[A348710(n), 2]]`
-/

namespace A268032.P13652809341909792292
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A268032.P13652809341909792292

namespace A268032

/-- `Δ[lt[A348710(n), 2]]` -/
def P13652809341909792292.Spec : Prop :=
  ∀ n, P13652809341909792292.a n = A268032 (n + 1)

end A268032

/-! ## A268032.P14451826849431052217

`Δ[lt[A048728(n), 5]]`
-/

namespace A268032.P14451826849431052217
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A268032.P14451826849431052217

namespace A268032

/-- `Δ[lt[A048728(n), 5]]` -/
def P14451826849431052217.Spec : Prop :=
  ∀ n, P14451826849431052217.a n = A268032 (n + 1)

end A268032

/-!
# A268034: A268032 with repeated 1's removed.

The programs for A268034, there is no canonical definition to state claims against.
-/

/-! ## A268034.P15866202071804699909

`2*A085358(n)+1`
-/

namespace A268034.P15866202071804699909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085358 n + 1

end

end A268034.P15866202071804699909

/-! ## A268034.P8481194938397609675

`2*A319432(n+1)-1`
-/

namespace A268034.P8481194938397609675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A319432 (n + 1) - 1

end

end A268034.P8481194938397609675

/-! ## A268034.P14566627098389609483

`A268032(2*floor(ϕ*(n+2)+n))`
-/

namespace A268034.P14566627098389609483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268032 (2 * ⌊Real.goldenRatio * (n + 2 : ℝ) + (n : ℝ)⌋).toNat

end

end A268034.P14566627098389609483

/-! ## A268034.P185202070187149185

`A283642(val(record[xor(n+1, 2*(n+1))], 2)+1)`
-/

namespace A268034.P185202070187149185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 + 1)

end

end A268034.P185202070187149185

/-! ## A268034.P14896428447376754853

`A001045(val(record[xor(n+1, 2*(n+1))], 2)+3)`
-/

namespace A268034.P14896428447376754853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 + 3)

end

end A268034.P14896428447376754853

/-! ## A268034.P7987353608481363581

`Δ[A213540(n+1)-(2*floor(ϕ*(n+1))+n)]`
-/

namespace A268034.P7987353608481363581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213540 (n + 1) - (2 * ⌊Real.goldenRatio * (n + 1 : ℝ)⌋ + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A268034.P7987353608481363581

/-! ## A268034.P16283377821558375017

`A005408(A085358(n))`
-/

namespace A268034.P16283377821558375017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A085358 n).toNat

end

end A268034.P16283377821558375017

/-! ## A268034.P814465281648922528

`A004273(A085358(n)+1)`
-/

namespace A268034.P814465281648922528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A085358 n + 1).toNat

end

end A268034.P814465281648922528

/-! ## A268034.P17096302632274985130

`A085407(A026274(n+1))`
-/

namespace A268034.P17096302632274985130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085407 (A026274 (n + 1)).toNat

end

end A268034.P17096302632274985130

/-! ## A268034.P15401838766589016051

`A283642(A035612(n+1))`
-/

namespace A268034.P15401838766589016051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 (A035612 (n + 1)).toNat

end

end A268034.P15401838766589016051

/-!
# A268035: a(n) is the smallest integer m such that each of the numbers m, 2*m, 3*m, ..., n*m is the sum of two successive primes.

The programs for A268035, there is no canonical definition to state claims against.
-/

/-! ## A268035.P6423916733590991027

`6*A242733(a(n-1))` with `a(0)=5, a(1)=12, a(2)=12`
-/

namespace A268035.P6423916733590991027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 12, 12] fun n a =>
  6 * A242733 (a (n - 1)).toNat

end

end A268035.P6423916733590991027

/-!
# A268036: Cubes of the prime factors (with multiplicity) of n add up to n.

The programs for A268036, there is no canonical definition to state claims against.
-/

/-! ## A268036.P16010057092787604081

`A067688(A101881(n)+8)`
-/

namespace A268036.P16010057092787604081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067688 (A101881 n + 8).toNat

end

end A268036.P16010057092787604081

/-!
# A268037: Numbers k such that the number of divisors of k+2 divides k and the number of divisors of k divides k+2.

The programs for A268037, there is no canonical definition to state claims against.
-/

/-! ## A268037.P16982302837662377618

`∩[A219239(n+1), A239943(n+1)]`
-/

namespace A268037.P16982302837662377618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268037.P16982302837662377618

/-!
# A268038: List of y-coordinates of point moving in clockwise square spiral.

The programs for A268038, the canonical program `A268038.P1884153619043895769` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268038 has offset 1).

The definition of A268038 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268038.P1884153619043895769

`a(n-1)+cos(floor(sqrt(4*(n-1)+1))%4*π/2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268038

/-- `a(n-1)+cos(floor(sqrt(4*(n-1)+1))%4*π/2)` -/
def P1884153619043895769.Spec : Prop :=
  ∀ n, P1884153619043895769.a n = (A268038 (n + 1) : ℝ)

end A268038

/-! ## A268038.P14691257226962708331

`-A274923(n+1)`
-/

namespace A268038.P14691257226962708331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A274923 (n + 1)

end

end A268038.P14691257226962708331

namespace A268038

/-- `-A274923(n+1)` -/
def P14691257226962708331.Spec : Prop :=
  ∀ n, P14691257226962708331.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P8788235749367215488

`-A296030(2*(n+1))`
-/

namespace A268038.P8788235749367215488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A296030 (2 * (n + 1))

end

end A268038.P8788235749367215488

namespace A268038

/-- `-A296030(2*(n+1))` -/
def P8788235749367215488.Spec : Prop :=
  ∀ n, P8788235749367215488.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P13887345002917618489

`-A174344(A020703(n+1))`
-/

namespace A268038.P13887345002917618489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174344 (A020703 (n + 1)).toNat

end

end A268038.P13887345002917618489

namespace A268038

/-- `-A174344(A020703(n+1))` -/
def P13887345002917618489.Spec : Prop :=
  ∀ n, P13887345002917618489.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P9392593939567109421

`-A174344(A028391(n)+1)`
-/

namespace A268038.P9392593939567109421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A174344 (A028391 n + 1).toNat

end

end A268038.P9392593939567109421

namespace A268038

/-- `-A174344(A028391(n)+1)` -/
def P9392593939567109421.Spec : Prop :=
  ∀ n, P9392593939567109421.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P14130937373229067385

`-A305576(A308081(n+1))`
-/

namespace A268038.P14130937373229067385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A305576 (A308081 (n + 1)).toNat

end

end A268038.P14130937373229067385

namespace A268038

/-- `-A305576(A308081(n+1))` -/
def P14130937373229067385.Spec : Prop :=
  ∀ n, P14130937373229067385.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P17087901453206838007

`A174344(n+1)-A180714(n)`
-/

namespace A268038.P17087901453206838007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174344 (n + 1) - A180714 n

end

end A268038.P17087901453206838007

namespace A268038

/-- `A174344(n+1)-A180714(n)` -/
def P17087901453206838007.Spec : Prop :=
  ∀ n, P17087901453206838007.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P8990780451751611355

`A329116(n)-A174344(n+1)`
-/

namespace A268038.P8990780451751611355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n - A174344 (n + 1)

end

end A268038.P8990780451751611355

namespace A268038

/-- `A329116(n)-A174344(n+1)` -/
def P8990780451751611355.Spec : Prop :=
  ∀ n, P8990780451751611355.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P7959231829205555621

`A057428(n)*A274923(n+1)`
-/

namespace A268038.P7959231829205555621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n * A274923 (n + 1)

end

end A268038.P7959231829205555621

namespace A268038

/-- `A057428(n)*A274923(n+1)` -/
def P7959231829205555621.Spec : Prop :=
  ∀ n, P7959231829205555621.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P4693421277652591659

`A134824(n)*A274923(n+1)`
-/

namespace A268038.P4693421277652591659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 n * A274923 (n + 1)

end

end A268038.P4693421277652591659

namespace A268038

/-- `A134824(n)*A274923(n+1)` -/
def P4693421277652591659.Spec : Prop :=
  ∀ n, P4693421277652591659.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P11650482104999915464

`A260196(n)*A274923(n+1)`
-/

namespace A268038.P11650482104999915464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n * A274923 (n + 1)

end

end A268038.P11650482104999915464

namespace A268038

/-- `A260196(n)*A274923(n+1)` -/
def P11650482104999915464.Spec : Prop :=
  ∀ n, P11650482104999915464.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P4216343054606756970

`(A329116(n)-A180714(n))/2`
-/

namespace A268038.P4216343054606756970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329116 n - A180714 n : ℚ) / 2

end

end A268038.P4216343054606756970

namespace A268038

/-- `(A329116(n)-A180714(n))/2` -/
def P4216343054606756970.Spec : Prop :=
  ∀ n, P4216343054606756970.a n = (A268038 (n + 1) : ℚ)

end A268038

/-! ## A268038.P15943877263869011474

`-A010751(∑[char[A004202(n+1)]])`
-/

namespace A268038.P15943877263869011474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004202 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A010751 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268038.P15943877263869011474

namespace A268038

/-- `-A010751(∑[char[A004202(n+1)]])` -/
def P15943877263869011474.Spec : Prop :=
  ∀ n, P15943877263869011474.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P17926190590687938481

`A153881(n+1)*A274923(n+1)`
-/

namespace A268038.P17926190590687938481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 1) * A274923 (n + 1)

end

end A268038.P17926190590687938481

namespace A268038

/-- `A153881(n+1)*A274923(n+1)` -/
def P17926190590687938481.Spec : Prop :=
  ∀ n, P17926190590687938481.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P16610246131052400023

`A296030(2*n+1)-A180714(n)`
-/

namespace A268038.P16610246131052400023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 1) - A180714 n

end

end A268038.P16610246131052400023

namespace A268038

/-- `A296030(2*n+1)-A180714(n)` -/
def P16610246131052400023.Spec : Prop :=
  ∀ n, P16610246131052400023.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P11573821908243045869

`A329116(n)-A296030(2*n+1)`
-/

namespace A268038.P11573821908243045869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 n - A296030 (2 * n + 1)

end

end A268038.P11573821908243045869

namespace A268038

/-- `A329116(n)-A296030(2*n+1)` -/
def P11573821908243045869.Spec : Prop :=
  ∀ n, P11573821908243045869.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P16129741611816615133

`A296030(2*n+2)-2*A296030(2*n+2)`
-/

namespace A268038.P16129741611816615133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296030 (2 * n + 2) - 2 * A296030 (2 * n + 2)

end

end A268038.P16129741611816615133

namespace A268038

/-- `A296030(2*n+2)-2*A296030(2*n+2)` -/
def P16129741611816615133.Spec : Prop :=
  ∀ n, P16129741611816615133.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P8234342803904790613

`A055667(A055667(n))-A274923(n+1)`
-/

namespace A268038.P8234342803904790613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055667 (A055667 n).toNat - A274923 (n + 1)

end

end A268038.P8234342803904790613

namespace A268038

/-- `A055667(A055667(n))-A274923(n+1)` -/
def P8234342803904790613.Spec : Prop :=
  ∀ n, P8234342803904790613.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P14183007898592968896

`A002262(n-A002262(n))-A274923(n+1)`
-/

namespace A268038.P14183007898592968896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - A002262 n).toNat - A274923 (n + 1)

end

end A268038.P14183007898592968896

namespace A268038

/-- `A002262(n-A002262(n))-A274923(n+1)` -/
def P14183007898592968896.Spec : Prop :=
  ∀ n, P14183007898592968896.a n = A268038 (n + 1)

end A268038

/-! ## A268038.P12529909123155992142

`(A274641(n)-A274640(n))*A274923(n+1)`
-/

namespace A268038.P12529909123155992142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A274641 n - A274640 n) * A274923 (n + 1)

end

end A268038.P12529909123155992142

namespace A268038

/-- `(A274641(n)-A274640(n))*A274923(n+1)` -/
def P12529909123155992142.Spec : Prop :=
  ∀ n, P12529909123155992142.a n = A268038 (n + 1)

end A268038

/-!
# A268039: G.f. A(x) satisfies: A( x*A(x) - A(x)^3 ) = x^2.

The programs for A268039, there is no canonical definition to state claims against.
-/

/-! ## A268039.P11046469640567670487

`A323467(A206228(n))`
-/

namespace A268039.P11046469640567670487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323467 (A206228 n).toNat

end

end A268039.P11046469640567670487

/-! ## A268039.P6953995607965728570

`A080513(A102286(n+1)-A197211(n+1))`
-/

namespace A268039.P6953995607965728570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A102286 (n + 1) - A197211 (n + 1)).toNat

end

end A268039.P6953995607965728570

/-!
# A268040: Array y AND NOT x, read by antidiagonals.

The programs for A268040, the canonical program `A268040.P2413962629400240570` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268040 has offset 0).

The definition of A268040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268040.P4849210685159769217

`n-A286098(n)`
-/

namespace A268040.P4849210685159769217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A286098 n

end

end A268040.P4849210685159769217

namespace A268040

/-- `n-A286098(n)` -/
def P4849210685159769217.Spec : Prop :=
  ∀ n, P4849210685159769217.a n = A268040 n

end A268040

/-! ## A268040.P17862704091788244712

`A286099(n)-∑[2*n]%comp[∑[n]]`
-/

namespace A268040.P17862704091788244712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286099 n - (((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℕ) : ℤ)

end

end A268040.P17862704091788244712

namespace A268040

/-- `A286099(n)-∑[2*n]%comp[∑[n]]` -/
def P17862704091788244712.Spec : Prop :=
  ∀ n, P17862704091788244712.a n = A268040 n

end A268040

/-! ## A268040.P6500210248584474849

`A003986(n)-(C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A268040.P6500210248584474849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ))

end

end A268040.P6500210248584474849

namespace A268040

/-- `A003986(n)-(C(comp[∑[n]]-n, 2)-(n+1))` -/
def P6500210248584474849.Spec : Prop :=
  ∀ n, P6500210248584474849.a n = A268040 n

end A268040

/-! ## A268040.P2413962629400240570

`A099026(A061579(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A268040

/-- `A099026(A061579(n))` -/
def P2413962629400240570.Spec : Prop :=
  ∀ n, P2413962629400240570.a n = A268040 n

theorem P2413962629400240570.correct : P2413962629400240570.Spec := by
  intro n
  simp only [A268040]

end A268040

/-! ## A268040.P15432835203804364801

`A292372(A054238(n))`
-/

namespace A268040.P15432835203804364801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292372 (A054238 n).toNat

end

end A268040.P15432835203804364801

namespace A268040

/-- `A292372(A054238(n))` -/
def P15432835203804364801.Spec : Prop :=
  ∀ n, P15432835203804364801.a n = A268040 n

end A268040

/-! ## A268040.P9575470615118277477

`A292371(A346453(n))`
-/

namespace A268040.P9575470615118277477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292371 (A346453 n).toNat

end

end A268040.P9575470615118277477

namespace A268040

/-- `A292371(A346453(n))` -/
def P9575470615118277477.Spec : Prop :=
  ∀ n, P9575470615118277477.a n = A268040 n

end A268040

/-! ## A268040.P6076718804102733853

`A099026(A114327(n)+n)`
-/

namespace A268040.P6076718804102733853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 (A114327 n + (n : ℤ)).toNat

end

end A268040.P6076718804102733853

namespace A268040

/-- `A099026(A114327(n)+n)` -/
def P6076718804102733853.Spec : Prop :=
  ∀ n, P6076718804102733853.a n = A268040 n

end A268040

/-! ## A268040.P17014756365644465409

`A002262(n-A004198(n))`
-/

namespace A268040.P17014756365644465409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((n : ℤ) - A004198 n).toNat

end

end A268040.P17014756365644465409

namespace A268040

/-- `A002262(n-A004198(n))` -/
def P17014756365644465409.Spec : Prop :=
  ∀ n, P17014756365644465409.a n = A268040 n

end A268040

/-! ## A268040.P8792325825374160947

`A003986(n)-A025581(n)`
-/

namespace A268040.P8792325825374160947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 n - A025581 n

end

end A268040.P8792325825374160947

namespace A268040

/-- `A003986(n)-A025581(n)` -/
def P8792325825374160947.Spec : Prop :=
  ∀ n, P8792325825374160947.a n = A268040 n

end A268040

/-! ## A268040.P6753719086917745147

`A003987(n)-A099026(n)`
-/

namespace A268040.P6753719086917745147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n - A099026 n

end

end A268040.P6753719086917745147

namespace A268040

/-- `A003987(n)-A099026(n)` -/
def P6753719086917745147.Spec : Prop :=
  ∀ n, P6753719086917745147.a n = A268040 n

end A268040

/-! ## A268040.P5344083207745882607

`A099026(n)-A114327(n)`
-/

namespace A268040.P5344083207745882607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099026 n - A114327 n

end

end A268040.P5344083207745882607

namespace A268040

/-- `A099026(n)-A114327(n)` -/
def P5344083207745882607.Spec : Prop :=
  ∀ n, P5344083207745882607.a n = A268040 n

end A268040

/-! ## A268040.P11070440532887743139

`n-A061579(A286099(n))`
-/

namespace A268040.P11070440532887743139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A061579 (A286099 n).toNat

end

end A268040.P11070440532887743139

namespace A268040

/-- `n-A061579(A286099(n))` -/
def P11070440532887743139.Spec : Prop :=
  ∀ n, P11070440532887743139.a n = A268040 n

end A268040

/-! ## A268040.P5215346553701269762

`and(A002262(n), A003987(n))`
-/

namespace A268040.P5215346553701269762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 n) (A003987 n)

end

end A268040.P5215346553701269762

namespace A268040

/-- `and(A002262(n), A003987(n))` -/
def P5215346553701269762.Spec : Prop :=
  ∀ n, P5215346553701269762.a n = A268040 n

end A268040

/-! ## A268040.P15433388627304605047

`xor(A002262(n), A004198(n))`
-/

namespace A268040.P15433388627304605047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002262 n) (A004198 n)

end

end A268040.P15433388627304605047

namespace A268040

/-- `xor(A002262(n), A004198(n))` -/
def P15433388627304605047.Spec : Prop :=
  ∀ n, P15433388627304605047.a n = A268040 n

end A268040

/-! ## A268040.P8462387725864552989

`A002262(A003986(n)+1+n)`
-/

namespace A268040.P8462387725864552989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A003986 n + 1 + (n : ℤ)).toNat

end

end A268040.P8462387725864552989

namespace A268040

/-- `A002262(A003986(n)+1+n)` -/
def P8462387725864552989.Spec : Prop :=
  ∀ n, P8462387725864552989.a n = A268040 n

end A268040

/-! ## A268040.P3471273439311328656

`n-(A057944(n)+A004198(n))`
-/

namespace A268040.P3471273439311328656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A057944 n + A004198 n)

end

end A268040.P3471273439311328656

namespace A268040

/-- `n-(A057944(n)+A004198(n))` -/
def P3471273439311328656.Spec : Prop :=
  ∀ n, P3471273439311328656.a n = A268040 n

end A268040

/-! ## A268040.P15341533321263442309

`A003987(n)+n-A286099(n)`
-/

namespace A268040.P15341533321263442309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n + ((n : ℤ) - A286099 n)

end

end A268040.P15341533321263442309

namespace A268040

/-- `A003987(n)+n-A286099(n)` -/
def P15341533321263442309.Spec : Prop :=
  ∀ n, P15341533321263442309.a n = A268040 n

end A268040

/-! ## A268040.P3703205578698772123

`A004198(n)+n-A286108(n)`
-/

namespace A268040.P3703205578698772123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004198 n + ((n : ℤ) - A286108 n)

end

end A268040.P3703205578698772123

namespace A268040

/-- `A004198(n)+n-A286108(n)` -/
def P3703205578698772123.Spec : Prop :=
  ∀ n, P3703205578698772123.a n = A268040 n

end A268040

/-! ## A268040.P17519581751851529212

`A002260(n+1)-(A004198(n)+1)`
-/

namespace A268040.P17519581751851529212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - (A004198 n + 1)

end

end A268040.P17519581751851529212

namespace A268040

/-- `A002260(n+1)-(A004198(n)+1)` -/
def P17519581751851529212.Spec : Prop :=
  ∀ n, P17519581751851529212.a n = A268040 n

end A268040

/-! ## A268040.P9948973020339105987

`A025581(A286098(n)+A025581(n))`
-/

namespace A268040.P9948973020339105987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A286098 n + A025581 n).toNat

end

end A268040.P9948973020339105987

namespace A268040

/-- `A025581(A286098(n)+A025581(n))` -/
def P9948973020339105987.Spec : Prop :=
  ∀ n, P9948973020339105987.a n = A268040 n

end A268040

/-!
# A268041: Table array: T(n,m) is the number of non-crossings matchings of curves embedded within an annulus with n exterior endpoints and m interior endpoints.

The programs for A268041, there is no canonical definition to state claims against.
-/

/-! ## A268041.P16788591591417161256

`A318499(A183642(n+1))`
-/

namespace A268041.P16788591591417161256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318499 (A183642 (n + 1)).toNat

end

end A268041.P16788591591417161256

/-! ## A268041.P2617496299818858682

`A345989(A271709(n))%3`
-/

namespace A268041.P2617496299818858682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345989 (A271709 n).toNat) 3

end

end A268041.P2617496299818858682

/-! ## A268041.P3983077756609972672

`val(A112355(A131816(n)), 3)`
-/

namespace A268041.P3983077756609972672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A112355 (A131816 n).toNat).toNat 3

end

end A268041.P3983077756609972672

/-! ## A268041.P14315124919534124661

`A036586(A235310(n+1)/2)`
-/

namespace A268041.P14315124919534124661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036586 (SequenceMachineLib.roundAway ((A235310 (n + 1) : ℚ) / 2)).toNat

end

end A268041.P14315124919534124661

/-! ## A268041.P3220446930673871241

`A202869(n+1)%(3%A183557(n+5))`
-/

namespace A268041.P3220446930673871241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202869 (n + 1)) (Int.tmod 3 (A183557 (n + 5)))

end

end A268041.P3220446930673871241

/-!
# A268042: a(n) = Ann(2n) where Ann(n) is the number of annular non-crossing matchings with n total endpoints.

The programs for A268042, there is no canonical definition to state claims against.
-/

/-! ## A268042.P15524185647094654325

`xor(ceil(n/2), A321994(comp[n²]))`
-/

namespace A268042.P15524185647094654325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌈(n : ℚ) / 2⌉ (A321994 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A268042.P15524185647094654325

/-! ## A268042.P6839862653735553239

`A347831(a(n-1)+2*n)` with `a(0)=1`
-/

namespace A268042.P6839862653735553239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A347831 (a (n - 1) + (2 * n : ℤ)).toNat

end

end A268042.P6839862653735553239

/-!
# A268043: Numbers k such that k^3 - 1 and k^3 + 1 are both semiprimes.

The programs for A268043, there is no canonical definition to state claims against.
-/

/-! ## A268043.P15178310990105479088

`∩[A070020(n+1), A081945(n+1)]`
-/

namespace A268043.P15178310990105479088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268043.P15178310990105479088

/-! ## A268043.P12372485811011261211

`∩[A070020(n+1), A136242(n+1)]`
-/

namespace A268043.P12372485811011261211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268043.P12372485811011261211

/-! ## A268043.P7385122855710848178

`∩[A136240(n+1), A136242(n+1)]`
-/

namespace A268043.P7385122855710848178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268043.P7385122855710848178

/-! ## A268043.P18113175070912153404

`∩[A014574(n+1), A081945(n+1)]`
-/

namespace A268043.P18113175070912153404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268043.P18113175070912153404

/-! ## A268043.P8502533950685346120

`∩[A070020(n+1), A096173(n+1)]`
-/

namespace A268043.P8502533950685346120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096173 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268043.P8502533950685346120

/-!
# A268044: The odd numbers congruent to {3, 4} mod 5.

The programs for A268044, the canonical program `A268044.P7855711022382735548` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268044 has offset 1).

The definition of A268044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268044.P7855711022382735548

`5*(n+1)-(3-(-1)^(n+1))/2`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268044

/-- `5*(n+1)-(3-(-1)^(n+1))/2` -/
def P7855711022382735548.Spec : Prop :=
  ∀ n, P7855711022382735548.a n = (A268044 (n + 1) : ℚ)

end A268044

/-! ## A268044.P7692122135782043894

`or(1, 5*n+3)`
-/

namespace A268044.P7692122135782043894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n + 3)

end

end A268044.P7692122135782043894

namespace A268044

/-- `or(1, 5*n+3)` -/
def P7692122135782043894.Spec : Prop :=
  ∀ n, (P7692122135782043894.a n : ℤ) = A268044 (n + 1)

end A268044

/-! ## A268044.P2427763896886035606

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=6, a(2)=4`
-/

namespace A268044.P2427763896886035606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 6, 4] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P2427763896886035606

namespace A268044

/-- `∑[abs(a(n-2))]` -/
def P2427763896886035606.Spec : Prop :=
  ∀ n, (P2427763896886035606.a n : ℤ) = A268044 (n + 1)

end A268044

/-! ## A268044.P9062366102939881514

`∑[10-a(n-1)]` with `a(0)=3, a(1)=6`
-/

namespace A268044.P9062366102939881514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P9062366102939881514

namespace A268044

/-- `∑[10-a(n-1)]` -/
def P9062366102939881514.Spec : Prop :=
  ∀ n, P9062366102939881514.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P7347577276226352731

`∑[∑[ogf((3+6x+x^2)/(1+x))]]`
-/

namespace A268044.P7347577276226352731
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P7347577276226352731

namespace A268044

/-- `∑[∑[ogf((3+6x+x^2)/(1+x))]]` -/
def P7347577276226352731.Spec : Prop :=
  ∀ n, P7347577276226352731.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P2603466026467487826

`ogf((3+6x+x^2)/(1-x-x^2+x^3))`
-/

namespace A268044.P2603466026467487826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 6, 1] [1, -1, -1, 1] n

end

end A268044.P2603466026467487826

namespace A268044

/-- `ogf((3+6x+x^2)/(1-x-x^2+x^3))` -/
def P2603466026467487826.Spec : Prop :=
  ∀ n, P2603466026467487826.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P964261090573646638

`record[(n+2)²%10+n-1]`
-/

namespace A268044.P964261090573646638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 % 10 : ℕ) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268044.P964261090573646638

namespace A268044

/-- `record[(n+2)²%10+n-1]` -/
def P964261090573646638.Spec : Prop :=
  ∀ n, P964261090573646638.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P2312253293763863314

`record[5*(n-1)-a(n-2)]` with `a(0)=3, a(1)=1`
-/

namespace A268044.P2312253293763863314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  5 * ((n : ℤ) - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268044.P2312253293763863314

namespace A268044

/-- `record[5*(n-1)-a(n-2)]` -/
def P2312253293763863314.Spec : Prop :=
  ∀ n, P2312253293763863314.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P15858932824209594003

`floor(a(n-1)-2*(gcd(2, n)-4))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A268044.P15858932824209594003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) - 2 * ((Nat.gcd 2 n : ℤ) - 4)

end

end A268044.P15858932824209594003

namespace A268044

/-- `floor(a(n-1)-2*(gcd(2, n)-4))` -/
def P15858932824209594003.Spec : Prop :=
  ∀ n, P15858932824209594003.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P4692749469407392130

`∑[A382713(n)+2]`
-/

namespace A268044.P4692749469407392130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382713 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P4692749469407392130

namespace A268044

/-- `∑[A382713(n)+2]` -/
def P4692749469407392130.Spec : Prop :=
  ∀ n, P4692749469407392130.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P13930921572186224322

`∑[A019559(a(n-1))]` with `a(0)=3`
-/

namespace A268044.P13930921572186224322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A019559 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P13930921572186224322

namespace A268044

/-- `∑[A019559(a(n-1))]` -/
def P13930921572186224322.Spec : Prop :=
  ∀ n, P13930921572186224322.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P10864415128739613509

`∑[A060779(a(n-1))]` with `a(0)=3`
-/

namespace A268044.P10864415128739613509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A060779 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P10864415128739613509

namespace A268044

/-- `∑[A060779(a(n-1))]` -/
def P10864415128739613509.Spec : Prop :=
  ∀ n, P10864415128739613509.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P5113635591649146244

`∑[A097466(a(n-1))]` with `a(0)=3`
-/

namespace A268044.P5113635591649146244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A097466 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P5113635591649146244

namespace A268044

/-- `∑[A097466(a(n-1))]` -/
def P5113635591649146244.Spec : Prop :=
  ∀ n, P5113635591649146244.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P3511185569838591693

`∑[A160995(a(n-1))]` with `a(0)=3`
-/

namespace A268044.P3511185569838591693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A160995 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P3511185569838591693

namespace A268044

/-- `∑[A160995(a(n-1))]` -/
def P3511185569838591693.Spec : Prop :=
  ∀ n, P3511185569838591693.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P2003308153606040975

`∑[A175123(a(n-1))]` with `a(0)=3`
-/

namespace A268044.P2003308153606040975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A175123 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P2003308153606040975

namespace A268044

/-- `∑[A175123(a(n-1))]` -/
def P2003308153606040975.Spec : Prop :=
  ∀ n, P2003308153606040975.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P664176833705303308

`∑[A248738(a(n-1))]` with `a(0)=3`
-/

namespace A268044.P664176833705303308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A248738 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P664176833705303308

namespace A268044

/-- `∑[A248738(a(n-1))]` -/
def P664176833705303308.Spec : Prop :=
  ∀ n, P664176833705303308.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P8963933259999984888

`∑[A255013(a(n-1))]` with `a(0)=3`
-/

namespace A268044.P8963933259999984888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A255013 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268044.P8963933259999984888

namespace A268044

/-- `∑[A255013(a(n-1))]` -/
def P8963933259999984888.Spec : Prop :=
  ∀ n, P8963933259999984888.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P17305702900508129921

`lt[A020639(n+1)², 2*n%5]`
-/

namespace A268044.P17305702900508129921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A268044.P17305702900508129921

namespace A268044

/-- `lt[A020639(n+1)², 2*n%5]` -/
def P17305702900508129921.Spec : Prop :=
  ∀ n, (P17305702900508129921.a n : ℤ) = A268044 (n + 1)

end A268044

/-! ## A268044.P4683205121669144217

`xor(A000035(n), A016885(n))`
-/

namespace A268044.P4683205121669144217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A016885 n)

end

end A268044.P4683205121669144217

namespace A268044

/-- `xor(A000035(n), A016885(n))` -/
def P4683205121669144217.Spec : Prop :=
  ∀ n, P4683205121669144217.a n = A268044 (n + 1)

end A268044

/-! ## A268044.P14381123316306234259

`∪[A017305(n), A017377(n)]`
-/

namespace A268044.P14381123316306234259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A268044.P14381123316306234259

namespace A268044

/-- `∪[A017305(n), A017377(n)]` -/
def P14381123316306234259.Spec : Prop :=
  ∀ n, (P14381123316306234259.a n : ℤ) = A268044 (n + 1)

end A268044

/-!
# A268047: Number of nX3 0..3 arrays with every repeated value in every row unequal to, and in every column equal to, the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268047, there is no canonical definition to state claims against.
-/

/-! ## A268047.P9177251102595797735

`A268423(∑[n+3]+1)`
-/

namespace A268047.P9177251102595797735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268047.P9177251102595797735

/-! ## A268047.P10720398847967475961

`A268049(∑[n+3]+1)`
-/

namespace A268047.P10720398847967475961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268047.P10720398847967475961

/-! ## A268047.P3032280230576877304

`A268049(A034856(n+2))/A259341(n+1)`
-/

namespace A268047.P3032280230576877304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268049 (A034856 (n + 2)).toNat : ℚ) / (A259341 (n + 1) : ℚ)

end

end A268047.P3032280230576877304

/-!
# A268048: Number of nX4 0..4 arrays with every repeated value in every row unequal to, and in every column equal to, the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268048, there is no canonical definition to state claims against.
-/

/-! ## A268048.P5864754674438208723

`A268049(A141214(n+1))`
-/

namespace A268048.P5864754674438208723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (A141214 (n + 1)).toNat

end

end A268048.P5864754674438208723

/-! ## A268048.P13287535756527129971

`A268049(A055998(n+2))`
-/

namespace A268048.P13287535756527129971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (A055998 (n + 2)).toNat

end

end A268048.P13287535756527129971

/-!
# A268049: T(n,k)=Number of nXk 0..k arrays with every repeated value in every row unequal to, and in every column equal to, the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268049, there is no canonical definition to state claims against.
-/

/-! ## A268049.P7736148030452955561

`A268009(n+1)+A011745(A000166(n))`
-/

namespace A268049.P7736148030452955561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (n + 1) + A011745 (A000166 n).toNat

end

end A268049.P7736148030452955561

/-! ## A268049.P16256355648591022669

`A268009(n+1)+A023969(A000088(n))`
-/

namespace A268049.P16256355648591022669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (n + 1) + A023969 (A000088 n).toNat

end

end A268049.P16256355648591022669

/-! ## A268049.P1747380628527054894

`A268009(n+1)+A025465(A001003(n))`
-/

namespace A268049.P1747380628527054894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (n + 1) + A025465 (A001003 n).toNat

end

end A268049.P1747380628527054894

/-! ## A268049.P11753158446199329576

`A268009(n+1)+A025465(A002135(n))`
-/

namespace A268049.P11753158446199329576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268009 (n + 1) + A025465 (A002135 n).toNat

end

end A268049.P11753158446199329576

/-!
# A268050: Number of 3Xn 0..n arrays with every repeated value in every row unequal to, and in every column equal to, the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268050, there is no canonical definition to state claims against.
-/

/-! ## A268050.P12612373035370378676

`A268049(∑[n+2]+4)`
-/

namespace A268050.P12612373035370378676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268050.P12612373035370378676

/-! ## A268050.P8925724172296559216

`and(-1, A268049(A167614(n+1)))`
-/

namespace A268050.P8925724172296559216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A268049 (A167614 (n + 1)).toNat)

end

end A268050.P8925724172296559216

/-! ## A268050.P12749056196594699322

`record[gcd(A221200(n+1), A268049(n+4))]`
-/

namespace A268050.P12749056196594699322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A221200 (n + 1)) (A268049 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268050.P12749056196594699322

/-! ## A268050.P13797367739618007308

`A268049(A167614(n+1))+A025437(n)`
-/

namespace A268050.P13797367739618007308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268049 (A167614 (n + 1)).toNat + A025437 n

end

end A268050.P13797367739618007308

/-!
# A268051: Number of n X n 0..2 arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268051, there is no canonical definition to state claims against.
-/

/-! ## A268051.P4502503290219300909

`A268056(∑[4*n]+1)`
-/

namespace A268051.P4502503290219300909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268051.P4502503290219300909

/-! ## A268051.P12411179053375866428

`record[A268056(abs(A069480(n+1)))]`
-/

namespace A268051.P12411179053375866428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 |A069480 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268051.P12411179053375866428

/-! ## A268051.P3233865135046584809

`record[gcd(A268056(n+1), A296339(n))]`
-/

namespace A268051.P3233865135046584809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A268056 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268051.P3233865135046584809

/-! ## A268051.P9144035320393530324

`gcd(A000038(n), A268056(A001844(n)))`
-/

namespace A268051.P9144035320393530324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A268056 (A001844 n).toNat)

end

end A268051.P9144035320393530324

/-! ## A268051.P15613302560326659818

`lcm(A000034(n), A268056(A001844(n)))`
-/

namespace A268051.P15613302560326659818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A268056 (A001844 n).toNat)

end

end A268051.P15613302560326659818

/-!
# A268052: Number of n X 4 0..2 arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268052, there is no canonical definition to state claims against.
-/

/-! ## A268052.P1911997743842815885

`21*a(n-1)-108*a(n-2)+140*a(n-3)` with `a(0)=1, a(1)=8, a(2)=86`
-/

namespace A268052.P1911997743842815885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 86] fun n a =>
  21 * a (n - 1) - 108 * a (n - 2) + 140 * a (n - 3)

end

end A268052.P1911997743842815885

/-! ## A268052.P4216383398154626127

`A268056(A141214(n)+7)`
-/

namespace A268052.P4216383398154626127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A141214 n + 7).toNat

end

end A268052.P4216383398154626127

/-! ## A268052.P17804176412803471648

`A268056(A052905(n)+9)`
-/

namespace A268052.P17804176412803471648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A052905 n + 9).toNat

end

end A268052.P17804176412803471648

/-! ## A268052.P17259371227764033206

`A268056(A055999(n)+10)`
-/

namespace A268052.P17259371227764033206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A055999 n + 10).toNat

end

end A268052.P17259371227764033206

/-! ## A268052.P13785380521036299596

`A268056(A167614(n+2)+1)`
-/

namespace A268052.P13785380521036299596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A167614 (n + 2) + 1).toNat

end

end A268052.P13785380521036299596

/-!
# A268053: Number of n X 5 0..2 arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268053, there is no canonical definition to state claims against.
-/

/-! ## A268053.P621680660117924730

`A268056(A155212(n)+13)`
-/

namespace A268053.P621680660117924730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A155212 n + 13).toNat

end

end A268053.P621680660117924730

/-! ## A268053.P10826525714865296928

`A268056(A056000(n)+15)`
-/

namespace A268053.P10826525714865296928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A056000 n + 15).toNat

end

end A268053.P10826525714865296928

/-! ## A268053.P8694690097701375848

`A268056(A052905(n+1)+10)`
-/

namespace A268053.P8694690097701375848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A052905 (n + 1) + 10).toNat

end

end A268053.P8694690097701375848

/-! ## A268053.P4143672630862026393

`A268056(eq[6, A131818(n+1)])`
-/

namespace A268053.P4143672630862026393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268053.P4143672630862026393

/-! ## A268053.P10538202508119201973

`A268056(Δ[A006416(n+2)]+8)`
-/

namespace A268053.P10538202508119201973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006416 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (f1 (n + 1) - f1 n + 8).toNat

end

end A268053.P10538202508119201973

/-!
# A268054: Number of n X 6 0..2 arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268054, there is no canonical definition to state claims against.
-/

/-! ## A268054.P5240098759784768723

`A268056(eq[7, A131818(n+1)])`
-/

namespace A268054.P5240098759784768723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268054.P5240098759784768723

/-! ## A268054.P8069597166616971306

`A268056(A167499(n+5)-(n+5))`
-/

namespace A268054.P8069597166616971306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A167499 (n + 5) - (n + 5 : ℤ)).toNat

end

end A268054.P8069597166616971306

/-! ## A268054.P7807003178794890220

`A268056(A374007(n+1))`
-/

namespace A268054.P7807003178794890220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A374007 (n + 1)).toNat

end

end A268054.P7807003178794890220

/-! ## A268054.P15452083568872135798

`A268056(A052905(n+3))`
-/

namespace A268054.P15452083568872135798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A052905 (n + 3)).toNat

end

end A268054.P15452083568872135798

/-! ## A268054.P5211601210815145129

`A268056(A056119(n)+16)`
-/

namespace A268054.P5211601210815145129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A056119 n + 16).toNat

end

end A268054.P5211601210815145129

/-!
# A268055: Number of nX7 0..2 arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268055, there is no canonical definition to state claims against.
-/

/-! ## A268055.P7208435790317202382

`A268056(eq[11, A066657(n)])`
-/

namespace A268055.P7208435790317202382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268055.P7208435790317202382

/-! ## A268055.P2399976422436532231

`A268056(A167499(n+5)+2)`
-/

namespace A268055.P2399976422436532231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A167499 (n + 5) + 2).toNat

end

end A268055.P2399976422436532231

/-! ## A268055.P8253354320100907050

`A268056(eq[8, A131818(n+1)])`
-/

namespace A268055.P8253354320100907050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268055.P8253354320100907050

/-! ## A268055.P2512691396493844549

`A268056(A374008(n+1))`
-/

namespace A268055.P2512691396493844549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (A374008 (n + 1)).toNat

end

end A268055.P2512691396493844549

/-! ## A268055.P16253506685997433846

`A268056(eq[4, A219347(n)])`
-/

namespace A268055.P16253506685997433846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268055.P16253506685997433846

/-!
# A268057: Triangle T(n,k), 1<=k<=n, read by rows: T(n,k) = number of iterations of A048158(n, A048158(n, ... A048158(n, k)...)) to reach 0.

The programs for A268057, there is no canonical definition to state claims against.
-/

/-! ## A268057.P13804395446514318859

`A103306(A058348(n))+A049816(n+1)`
-/

namespace A268057.P13804395446514318859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103306 (A058348 n).toNat + A049816 (n + 1)

end

end A268057.P13804395446514318859

/-! ## A268057.P17469424224590432025

`A103306(A184946(n))+A049816(n+1)`
-/

namespace A268057.P17469424224590432025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103306 (A184946 n).toNat + A049816 (n + 1)

end

end A268057.P17469424224590432025

/-! ## A268057.P11809372783479903230

`A107435(∑[A058348(n)!])`
-/

namespace A268057.P11809372783479903230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A058348 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268057.P11809372783479903230

/-! ## A268057.P1893467889181080774

`A107435(A058348(n)!+n)`
-/

namespace A268057.P1893467889181080774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107435 (Nat.factorial (A058348 n).toNat + n)

end

end A268057.P1893467889181080774

/-! ## A268057.P147468773138339455

`dr(or(A107435(n+1), A185255(n)))`
-/

namespace A268057.P147468773138339455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.lor (A107435 (n + 1)) (A185255 n))

end

end A268057.P147468773138339455

/-!
# A268058: Maximum value of n-th row of A268057.

The programs for A268058, there is no canonical definition to state claims against.
-/

/-! ## A268058.P5747616424431787241

`A268057(A268060(n+1)+∑[n])`
-/

namespace A268058.P5747616424431787241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268057 (A268060 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A268058.P5747616424431787241

/-!
# A268060: Least k such that A268057(n, k) = A268058(n).

The programs for A268060, there is no canonical definition to state claims against.
-/

/-! ## A268060.P5986248042368019516

`or(A004001(n+1), A323000(A001405(n)))`
-/

namespace A268060.P5986248042368019516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004001 (n + 1)) (A323000 (A001405 n).toNat)

end

end A268060.P5986248042368019516

/-! ## A268060.P18415949494029414530

`A000193(A336707(3*n+4)+A293076(n))`
-/

namespace A268060.P18415949494029414530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000193 (A336707 (3 * n + 4) + A293076 n).toNat

end

end A268060.P18415949494029414530

/-! ## A268060.P14978990323251867995

`or(A004001(n+1), A085981(A325017(n+1)))`
-/

namespace A268060.P14978990323251867995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004001 (n + 1)) (A085981 (A325017 (n + 1)).toNat)

end

end A268060.P14978990323251867995

/-! ## A268060.P5643249568511612326

`or(A004001(n+1), A289165(A233940(3*n+2)))`
-/

namespace A268060.P5643249568511612326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004001 (n + 1)) (A289165 (A233940 (3 * n + 2)).toNat)

end

end A268060.P5643249568511612326

/-! ## A268060.P7927725347523088997

`A295753(A123945(n+1))`
-/

namespace A268060.P7927725347523088997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295753 (A123945 (n + 1)).toNat

end

end A268060.P7927725347523088997

/-!
# A268061: Numbers k such that 7*8^k - 1 is prime.

The programs for A268061, there is no canonical definition to state claims against.
-/

/-! ## A268061.P14276816195710266195

`or(A000058(n), A162722(A000058(n)))`
-/

namespace A268061.P14276816195710266195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000058 n) (A162722 (A000058 n).toNat)

end

end A268061.P14276816195710266195

/-!
# A268062: a(n) = Sum_{k=1..n} prime(k+1)^prime(k).

The programs for A268062, there is no canonical definition to state claims against.
-/

/-! ## A268062.P12934312682570652600

`∑[A078422(n+1)]`
-/

namespace A268062.P12934312682570652600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078422 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268062.P12934312682570652600

/-! ## A268062.P5511032558191648930

`∑[∏{d}[p?[2*n+1], #]^A216883(n+1)]`
-/

namespace A268062.P5511032558191648930
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) ^ (A216883 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268062.P5511032558191648930

/-! ## A268062.P5877663950250849087

`∑[A000040(n+2)^p?[A014681(n)]]`
-/

namespace A268062.P5877663950250849087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) ^ (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268062.P5877663950250849087

/-! ## A268062.P3678270576834258719

`∑[A000040(n+2)^A000040(n+1)]`
-/

namespace A268062.P3678270576834258719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) : ℚ) ^ (A000040 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268062.P3678270576834258719

/-! ## A268062.P9585427644222520961

`∑[A196230(n+2)^A196230(n+1)]`
-/

namespace A268062.P9585427644222520961
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196230 (n + 2) : ℚ) ^ (A196230 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268062.P9585427644222520961

/-!
# A268063: Primes of the form (k^3 - k^2 - k - 1)/2 for some integer k > 0.

The programs for A268063, there is no canonical definition to state claims against.
-/

/-! ## A268063.P8826000140799660696

`p?[(n+1)*(2*n)²-1]`
-/

namespace A268063.P8826000140799660696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (2 * n) ^ 2 : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A268063.P8826000140799660696

/-! ## A268063.P905356502721907241

`∏{p}[p?[2*n*2*A002378(n)-1], #]`
-/

namespace A268063.P905356502721907241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * (2 * A002378 n) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A268063.P905356502721907241

/-! ## A268063.P8117041128412084643

`abs(p?[n*A005563(2*n)-1]-2)+2`
-/

namespace A268063.P8117041128412084643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A005563 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2| + 2

end

end A268063.P8117041128412084643

/-! ## A268063.P14109109839015116443

`or(1, p?[A036487(n)-A000217(n)])`
-/

namespace A268063.P14109109839015116443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036487 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A268063.P14109109839015116443

/-!
# A268064: Integers k such that (2^k + 1) + (3^k + 1) + (5^k + 1) is prime.

The programs for A268064, there is no canonical definition to state claims against.
-/

/-! ## A268064.P12432598067372523080

`record[record[A328571(n)]%A328118(n+1)]`
-/

namespace A268064.P12432598067372523080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) (A328118 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268064.P12432598067372523080

/-!
# A268066: Even numbers coprime to the number of their divisors.

The programs for A268066, the canonical program `A268066.P13943974798166471358` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268066 has offset 1).

The definition of A268066 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 102 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268066.P13943974798166471358

`filter[A016742(n+1), A322980(#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A268066

/-- `filter[A016742(n+1), A322980(#)]` -/
def P13943974798166471358.Spec : Prop :=
  ∀ n, P13943974798166471358.a n = A268066 (n + 1)

theorem P13943974798166471358.correct : P13943974798166471358.Spec := by
  intro n
  simp only [A268066, Nat.add_sub_cancel]

end A268066

/-! ## A268066.P17461502379323616439

`filter[A075090(n+1), A322980(#)]`
-/

namespace A268066.P17461502379323616439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P17461502379323616439

namespace A268066

/-- `filter[A075090(n+1), A322980(#)]` -/
def P17461502379323616439.Spec : Prop :=
  ∀ n, P17461502379323616439.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P12912870308280115935

`filter[A088827(n+1), A322980(#)]`
-/

namespace A268066.P12912870308280115935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P12912870308280115935

namespace A268066

/-- `filter[A088827(n+1), A322980(#)]` -/
def P12912870308280115935.Spec : Prop :=
  ∀ n, P12912870308280115935.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P16521734176496065679

`filter[A137928(n+1), A322980(#)]`
-/

namespace A268066.P16521734176496065679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137928 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P16521734176496065679

namespace A268066

/-- `filter[A137928(n+1), A322980(#)]` -/
def P16521734176496065679.Spec : Prop :=
  ∀ n, P16521734176496065679.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P3435462051050914314

`filter[A139719(n+1), A322980(#)]`
-/

namespace A268066.P3435462051050914314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P3435462051050914314

namespace A268066

/-- `filter[A139719(n+1), A322980(#)]` -/
def P3435462051050914314.Spec : Prop :=
  ∀ n, P3435462051050914314.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P3855189395352740306

`filter[A216033(n+1), A322980(#)]`
-/

namespace A268066.P3855189395352740306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P3855189395352740306

namespace A268066

/-- `filter[A216033(n+1), A322980(#)]` -/
def P3855189395352740306.Spec : Prop :=
  ∀ n, P3855189395352740306.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P15539845812037141878

`filter[A324174(n+1), A322980(#)]`
-/

namespace A268066.P15539845812037141878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P15539845812037141878

namespace A268066

/-- `filter[A324174(n+1), A322980(#)]` -/
def P15539845812037141878.Spec : Prop :=
  ∀ n, P15539845812037141878.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P8875437671998852833

`filter[A390010(n+1), A322980(#)]`
-/

namespace A268066.P8875437671998852833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P8875437671998852833

namespace A268066

/-- `filter[A390010(n+1), A322980(#)]` -/
def P8875437671998852833.Spec : Prop :=
  ∀ n, P8875437671998852833.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P13237310189909293092

`filter[A055808(n+2), A322980(#)]`
-/

namespace A268066.P13237310189909293092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P13237310189909293092

namespace A268066

/-- `filter[A055808(n+2), A322980(#)]` -/
def P13237310189909293092.Spec : Prop :=
  ∀ n, P13237310189909293092.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P8675813085417645543

`filter[A238411(n+2), A322980(#)]`
-/

namespace A268066.P8675813085417645543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238411 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P8675813085417645543

namespace A268066

/-- `filter[A238411(n+2), A322980(#)]` -/
def P8675813085417645543.Spec : Prop :=
  ∀ n, P8675813085417645543.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P14775357276447211929

`filter[A270248(n+2), A322980(#)]`
-/

namespace A268066.P14775357276447211929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P14775357276447211929

namespace A268066

/-- `filter[A270248(n+2), A322980(#)]` -/
def P14775357276447211929.Spec : Prop :=
  ∀ n, P14775357276447211929.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P2118037109126288549

`filter[A269512(2*n), A322980(#)]`
-/

namespace A268066.P2118037109126288549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269512 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P2118037109126288549

namespace A268066

/-- `filter[A269512(2*n), A322980(#)]` -/
def P2118037109126288549.Spec : Prop :=
  ∀ n, P2118037109126288549.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P13722741984198359466

`filter[A006446(2*(n+1)), A322980(#)]`
-/

namespace A268066.P13722741984198359466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006446 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P13722741984198359466

namespace A268066

/-- `filter[A006446(2*(n+1)), A322980(#)]` -/
def P13722741984198359466.Spec : Prop :=
  ∀ n, P13722741984198359466.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P8358995445680642724

`filter[A008726(2*n+1), A322980(#)]`
-/

namespace A268066.P8358995445680642724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008726 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P8358995445680642724

namespace A268066

/-- `filter[A008726(2*n+1), A322980(#)]` -/
def P8358995445680642724.Spec : Prop :=
  ∀ n, P8358995445680642724.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P18267276481926211442

`filter[A050271(2*(n+1)), A322980(#)]`
-/

namespace A268066.P18267276481926211442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050271 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P18267276481926211442

namespace A268066

/-- `filter[A050271(2*(n+1)), A322980(#)]` -/
def P18267276481926211442.Spec : Prop :=
  ∀ n, P18267276481926211442.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P9180225438414646959

`filter[A081345(2*n+1), A322980(#)]`
-/

namespace A268066.P9180225438414646959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081345 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P9180225438414646959

namespace A268066

/-- `filter[A081345(2*n+1), A322980(#)]` -/
def P9180225438414646959.Spec : Prop :=
  ∀ n, P9180225438414646959.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P7239004223699651149

`filter[A081350(2*n+1), A322980(#)]`
-/

namespace A268066.P7239004223699651149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081350 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P7239004223699651149

namespace A268066

/-- `filter[A081350(2*n+1), A322980(#)]` -/
def P7239004223699651149.Spec : Prop :=
  ∀ n, P7239004223699651149.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P10822016857553226545

`filter[A106545(2*(n+1)), A322980(#)]`
-/

namespace A268066.P10822016857553226545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P10822016857553226545

namespace A268066

/-- `filter[A106545(2*(n+1)), A322980(#)]` -/
def P10822016857553226545.Spec : Prop :=
  ∀ n, P10822016857553226545.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P14333903430325882818

`filter[A133092(2*(n+1)), A322980(#)]`
-/

namespace A268066.P14333903430325882818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133092 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P14333903430325882818

namespace A268066

/-- `filter[A133092(2*(n+1)), A322980(#)]` -/
def P14333903430325882818.Spec : Prop :=
  ∀ n, P14333903430325882818.a n = A268066 (n + 1)

end A268066

/-! ## A268066.P1148099958887047284

`filter[A137933(2*(n+1)), A322980(#)]`
-/

namespace A268066.P1148099958887047284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137933 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A268066.P1148099958887047284

namespace A268066

/-- `filter[A137933(2*(n+1)), A322980(#)]` -/
def P1148099958887047284.Spec : Prop :=
  ∀ n, P1148099958887047284.a n = A268066 (n + 1)

end A268066

/-!
# A268069: Number of n X 1 0..3 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268069, there is no canonical definition to state claims against.
-/

/-! ## A268069.P2042874194372883110

`A268956(∑[n+3]+1)`
-/

namespace A268069.P2042874194372883110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268069.P2042874194372883110

/-! ## A268069.P7968012275769784318

`char[A061579(n)]*A268956(A034856(n+2))`
-/

namespace A268069.P7968012275769784318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A268956 (A034856 (n + 2)).toNat

end

end A268069.P7968012275769784318

/-! ## A268069.P6537038488149062307

`A033999(n)²+A268956(A034856(n+2))-1`
-/

namespace A268069.P6537038488149062307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 + (A268956 (A034856 (n + 2)).toNat - 1)

end

end A268069.P6537038488149062307

/-! ## A268069.P1450638248694734656

`A006519(2*n+1)*A268956(A034856(n+2))`
-/

namespace A268069.P1450638248694734656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A268956 (A034856 (n + 2)).toNat

end

end A268069.P1450638248694734656

/-! ## A268069.P12436490441658015617

`A010121(2*n+1)*A268956(A034856(n+2))`
-/

namespace A268069.P12436490441658015617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (2 * n + 1) * A268956 (A034856 (n + 2)).toNat

end

end A268069.P12436490441658015617

/-! ## A268069.P1266685106266264429

`A268956(A034856(n+2))+A000122(7*n+6)`
-/

namespace A268069.P1266685106266264429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A034856 (n + 2)).toNat + A000122 (7 * n + 6)

end

end A268069.P1266685106266264429

/-! ## A268069.P10910166324848871058

`A001222(A051698(n))*A268956(A034856(n+2))`
-/

namespace A268069.P10910166324848871058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051698 n).toNat * A268956 (A034856 (n + 2)).toNat

end

end A268069.P10910166324848871058

/-! ## A268069.P4158900778041732

`A268956(A034856(n+2))+A000035(A008458(n+1))`
-/

namespace A268069.P4158900778041732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268956 (A034856 (n + 2)).toNat + A000035 (A008458 (n + 1)).toNat

end

end A268069.P4158900778041732

/-! ## A268069.P5541405954517265016

`A001222(A001359(n+1))*A268956(A034856(n+2))`
-/

namespace A268069.P5541405954517265016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001359 (n + 1)).toNat * A268956 (A034856 (n + 2)).toNat

end

end A268069.P5541405954517265016

/-!
# A268070: Number of nX2 0..3 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268070, there is no canonical definition to state claims against.
-/

/-! ## A268070.P5007490936037534717

`A268073(∑[n+1]+2)`
-/

namespace A268070.P5007490936037534717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268070.P5007490936037534717

/-! ## A268070.P2754929055560261031

`A268423(∑[n+1]+2)`
-/

namespace A268070.P2754929055560261031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268423 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A268070.P2754929055560261031

/-! ## A268070.P11289176414634487589

`record[A010054(n)*A268073(n+2)]`
-/

namespace A268070.P11289176414634487589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A268073 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268070.P11289176414634487589

/-! ## A268070.P9373951616249983881

`record[root(A268073(n+2), A268956(n+1))]`
-/

namespace A268070.P9373951616249983881
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268073 (n + 2) : ℝ) ^ (1 / (A268956 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268070.P9373951616249983881

/-! ## A268070.P3997167358161690607

`record[root(A268423(n+2), A268956(n+1))]`
-/

namespace A268070.P3997167358161690607
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A268423 (n + 2) : ℝ) ^ (1 / (A268956 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268070.P3997167358161690607

/-!
# A268071: Number of nX4 0..3 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268071, there is no canonical definition to state claims against.
-/

/-! ## A268071.P6090452917939567597

`A268073(∑[n+1]+2*n+9)`
-/

namespace A268071.P6090452917939567597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 9))

end

end A268071.P6090452917939567597

/-!
# A268072: Number of nX5 0..3 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268072, there is no canonical definition to state claims against.
-/

/-! ## A268072.P3831173076784204122

`A268073(A374005(n+1))`
-/

namespace A268072.P3831173076784204122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (A374005 (n + 1)).toNat

end

end A268072.P3831173076784204122

/-! ## A268072.P13365237327267630420

`A268073(A155212(n)+13)`
-/

namespace A268072.P13365237327267630420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (A155212 n + 13).toNat

end

end A268072.P13365237327267630420

/-! ## A268072.P9838189072954111531

`A268073(A056000(n)+15)`
-/

namespace A268072.P9838189072954111531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268073 (A056000 n + 15).toNat

end

end A268072.P9838189072954111531

/-!
# A268073: T(n,k)=Number of nXk 0..3 arrays with every repeated value in every row and column unequal to the previous repeated value, and new values introduced in row-major sequential order.

The programs for A268073, there is no canonical definition to state claims against.
-/

/-! ## A268073.P17728020175429386430

`A205310(n+1)-A185036(A078391(n))`
-/

namespace A268073.P17728020175429386430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (n + 1) - A185036 (A078391 n).toNat

end

end A268073.P17728020175429386430

/-! ## A268073.P14565002556290317892

`A205310(n+1)-A091888(A131577(n)+2)`
-/

namespace A268073.P14565002556290317892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (n + 1) - A091888 (A131577 n + 2).toNat

end

end A268073.P14565002556290317892

/-! ## A268073.P2879103924627281022

`A205310(n+1)-A346619(2^n-1)`
-/

namespace A268073.P2879103924627281022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (n + 1) - A346619 (2 ^ n - 1)

end

end A268073.P2879103924627281022

/-! ## A268073.P8525314754670163160

`A205310(n+1)-A318950(A319005(n))`
-/

namespace A268073.P8525314754670163160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (n + 1) - A318950 (A319005 n).toNat

end

end A268073.P8525314754670163160

/-! ## A268073.P2883064023876667403

`A205310(n+1)-A346619(A000225(n))-char[21]`
-/

namespace A268073.P2883064023876667403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205310 (n + 1) - A346619 (A000225 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A268073.P2883064023876667403

/-!
# A268074: Number of n X n nonnegative integer arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268074, there is no canonical definition to state claims against.
-/

/-! ## A268074.P4503714969719404581

`A268079(∑[4*n]+1)`
-/

namespace A268074.P4503714969719404581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A268074.P4503714969719404581

/-! ## A268074.P9863159103291475474

`record[A003982(n)*A268079(n+1)]`
-/

namespace A268074.P9863159103291475474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A268079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268074.P9863159103291475474

/-! ## A268074.P1885404141108106521

`record[gcd(A049581(n), A268079(n+1))]`
-/

namespace A268074.P1885404141108106521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A268079 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268074.P1885404141108106521

/-! ## A268074.P17771846176178483268

`record[A203994(n+1)*A268079(n+1)]`
-/

namespace A268074.P17771846176178483268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A268079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268074.P17771846176178483268

/-! ## A268074.P6107910049429765482

`record[A000005(Δ[n²])%2*A268079(n+1)]`
-/

namespace A268074.P6107910049429765482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat) 2 * A268079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268074.P6107910049429765482

/-!
# A268075: Number of n X 4 nonnegative integer arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268075, there is no canonical definition to state claims against.
-/

/-! ## A268075.P18029032265154776170

`A268079(A374004(n+1))`
-/

namespace A268075.P18029032265154776170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A374004 (n + 1)).toNat

end

end A268075.P18029032265154776170

/-! ## A268075.P1592767277138689671

`A268079(A141214(n)+7)`
-/

namespace A268075.P1592767277138689671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A141214 n + 7).toNat

end

end A268075.P1592767277138689671

/-! ## A268075.P4370290733790180391

`A268079(A052905(n)+9)`
-/

namespace A268075.P4370290733790180391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A052905 n + 9).toNat

end

end A268075.P4370290733790180391

/-! ## A268075.P7659344744189999497

`A268079(A167614(n+2)+1)`
-/

namespace A268075.P7659344744189999497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A167614 (n + 2) + 1).toNat

end

end A268075.P7659344744189999497

/-! ## A268075.P15087035498725980823

`A268079(A166136(n+2)-2)`
-/

namespace A268075.P15087035498725980823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A166136 (n + 2) - 2).toNat

end

end A268075.P15087035498725980823

/-!
# A268076: Number of nX5 nonnegative integer arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268076, there is no canonical definition to state claims against.
-/

/-! ## A268076.P2382558073163998020

`A268079(A374005(n+1))`
-/

namespace A268076.P2382558073163998020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A374005 (n + 1)).toNat

end

end A268076.P2382558073163998020

/-! ## A268076.P14533300106046019454

`A268079(A167499(n+3))`
-/

namespace A268076.P14533300106046019454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A167499 (n + 3)).toNat

end

end A268076.P14533300106046019454

/-! ## A268076.P4328110272512979552

`A268079(A167614(n+3)+2)`
-/

namespace A268076.P4328110272512979552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A167614 (n + 3) + 2).toNat

end

end A268076.P4328110272512979552

/-! ## A268076.P12908488688468334267

`record[A268079(A167499(A067628(n)))]`
-/

namespace A268076.P12908488688468334267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A167499 (A067628 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268076.P12908488688468334267

/-! ## A268076.P12377915038358323677

`A268079(Δ[A264443(n)])`
-/

namespace A268076.P12377915038358323677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (f1 (n + 1) - f1 n).toNat

end

end A268076.P12377915038358323677

/-!
# A268077: Number of nX6 nonnegative integer arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268077, there is no canonical definition to state claims against.
-/

/-! ## A268077.P16073639584861710474

`A268079(A374007(n+1))`
-/

namespace A268077.P16073639584861710474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A374007 (n + 1)).toNat

end

end A268077.P16073639584861710474

/-! ## A268077.P9975635994559693418

`A268079(eq[7, A131818(n+1)])`
-/

namespace A268077.P9975635994559693418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268077.P9975635994559693418

/-! ## A268077.P17456882628426875864

`A268079(A052905(n+3))`
-/

namespace A268077.P17456882628426875864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A052905 (n + 3)).toNat

end

end A268077.P17456882628426875864

/-! ## A268077.P17923873899064941772

`A268079(eq[5, A152157(n)])`
-/

namespace A268077.P17923873899064941772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268077.P17923873899064941772

/-! ## A268077.P16978199090419346465

`A268079(eq[5, A193592(n)])`
-/

namespace A268077.P16978199090419346465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268077.P16978199090419346465

/-!
# A268078: Number of nX7 nonnegative integer arrays with new values introduced in each row and column in sequential order starting with zero.

The programs for A268078, there is no canonical definition to state claims against.
-/

/-! ## A268078.P4627861779078714728

`A268079(A374008(n+1))`
-/

namespace A268078.P4627861779078714728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (A374008 (n + 1)).toNat

end

end A268078.P4627861779078714728

/-! ## A268078.P10610967990033636446

`A268079(eq[8, A131818(n+1)])`
-/

namespace A268078.P10610967990033636446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268078.P10610967990033636446

/-! ## A268078.P5227955532488883168

`A268079(eq[6, A193592(n)])`
-/

namespace A268078.P5227955532488883168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268078.P5227955532488883168

/-! ## A268078.P1584405265870717658

`A268079(eq[7, A152157(n)])`
-/

namespace A268078.P1584405265870717658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268078.P1584405265870717658

/-! ## A268078.P15299961787331408462

`A268079(eq[3, A316074(n+1)])`
-/

namespace A268078.P15299961787331408462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316074 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268079 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268078.P15299961787331408462

/-!
# A268080: Difference between total number of Boolean functions of n variables and total number of monotonic Boolean functions of n variables.

The programs for A268080, there is no canonical definition to state claims against.
-/

/-! ## A268080.P13851559159577679133

`A001146(n)-A000372(n)`
-/

namespace A268080.P13851559159577679133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001146 n - A000372 n

end

end A268080.P13851559159577679133

/-! ## A268080.P4968903704077543731

`A058891(n+1)+A058891(n+1)-A000372(n)`
-/

namespace A268080.P4968903704077543731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058891 (n + 1) + (A058891 (n + 1) - A000372 n)

end

end A268080.P4968903704077543731

/-!
# A268082: Numbers n such that gcd(binomial(2*n-1,n), n) is equal to 1.

The programs for A268082, the canonical program `A268082.P7438264569753008377` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268082 has offset 1).

The definition of A268082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268082.P7438264569753008377

`∪[A000961(n+1), A268083(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A268082

/-- `∪[A000961(n+1), A268083(n+1)]` -/
def P7438264569753008377.Spec : Prop :=
  ∀ n, (P7438264569753008377.a n : ℤ) = A268082 (n + 1)

theorem P7438264569753008377.correct : P7438264569753008377.Spec := by
  intro n
  simp only [A268082, Nat.add_sub_cancel]

end A268082

/-! ## A268082.P4253318715911638098

`record[A201059(n+1)]`
-/

namespace A268082.P4253318715911638098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268082.P4253318715911638098

namespace A268082

/-- `record[A201059(n+1)]` -/
def P4253318715911638098.Spec : Prop :=
  ∀ n, P4253318715911638098.a n = A268082 (n + 1)

end A268082

/-! ## A268082.P1825130432284314667

`eq[1, A333461(n+1)]+1`
-/

namespace A268082.P1825130432284314667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333461 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268082.P1825130432284314667

namespace A268082

/-- `eq[1, A333461(n+1)]+1` -/
def P1825130432284314667.Spec : Prop :=
  ∀ n, (P1825130432284314667.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P5889447635359084445

`eq[2, A058005(n+1)]+1`
-/

namespace A268082.P5889447635359084445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268082.P5889447635359084445

namespace A268082

/-- `eq[2, A058005(n+1)]+1` -/
def P5889447635359084445.Spec : Prop :=
  ∀ n, (P5889447635359084445.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P3730497956920404268

`record[(n+1)/gcd(n+1, A099908(n+1))]`
-/

namespace A268082.P3730497956920404268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A099908 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268082.P3730497956920404268

namespace A268082

/-- `record[(n+1)/gcd(n+1, A099908(n+1))]` -/
def P3730497956920404268.Spec : Prop :=
  ∀ n, P3730497956920404268.a n = (A268082 (n + 1) : ℚ)

end A268082

/-! ## A268082.P160526272557353259

`record[(n+1)/A000010(A333461(n+1)+1)]`
-/

namespace A268082.P160526272557353259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000010 (A333461 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268082.P160526272557353259

namespace A268082

/-- `record[(n+1)/A000010(A333461(n+1)+1)]` -/
def P160526272557353259.Spec : Prop :=
  ∀ n, P160526272557353259.a n = (A268082 (n + 1) : ℚ)

end A268082

/-! ## A268082.P5591535064423545496

`record[A049077(n+1)]`
-/

namespace A268082.P5591535064423545496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268082.P5591535064423545496

namespace A268082

/-- `record[A049077(n+1)]` -/
def P5591535064423545496.Spec : Prop :=
  ∀ n, P5591535064423545496.a n = A268082 (n + 1)

end A268082

/-! ## A268082.P10619604253515699352

`record[(n+1)/A057815(n+1)]`
-/

namespace A268082.P10619604253515699352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057815 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A268082.P10619604253515699352

namespace A268082

/-- `record[(n+1)/A057815(n+1)]` -/
def P10619604253515699352.Spec : Prop :=
  ∀ n, P10619604253515699352.a n = (A268082 (n + 1) : ℚ)

end A268082

/-! ## A268082.P1694141710718654586

`eq[2, A057815(2*(n+1))]+1`
-/

namespace A268082.P1694141710718654586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057815 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268082.P1694141710718654586

namespace A268082

/-- `eq[2, A057815(2*(n+1))]+1` -/
def P1694141710718654586.Spec : Prop :=
  ∀ n, (P1694141710718654586.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P4966592968952429671

`eq[2, A091963(2*(n+1))]+1`
-/

namespace A268082.P4966592968952429671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091963 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A268082.P4966592968952429671

namespace A268082

/-- `eq[2, A091963(2*(n+1))]+1` -/
def P4966592968952429671.Spec : Prop :=
  ∀ n, (P4966592968952429671.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P8345003354462029005

`lt[n, A049077(2*(n+1))]+1`
-/

namespace A268082.P8345003354462029005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A268082.P8345003354462029005

namespace A268082

/-- `lt[n, A049077(2*(n+1))]+1` -/
def P8345003354462029005.Spec : Prop :=
  ∀ n, (P8345003354462029005.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P8117164726866940300

`eq[n, A049077(A004277(n))]`
-/

namespace A268082.P8117164726866940300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A268082.P8117164726866940300

namespace A268082

/-- `eq[n, A049077(A004277(n))]` -/
def P8117164726866940300.Spec : Prop :=
  ∀ n, (P8117164726866940300.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P3473096944169038676

`eq[A008619(2*n), A049077(2*n+2)]+1`
-/

namespace A268082.P3473096944169038676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268082.P3473096944169038676

namespace A268082

/-- `eq[A008619(2*n), A049077(2*n+2)]+1` -/
def P3473096944169038676.Spec : Prop :=
  ∀ n, (P3473096944169038676.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P4121994891389402746

`eq[A003602(2*n+1), A049077(2*(n+1))]+1`
-/

namespace A268082.P4121994891389402746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268082.P4121994891389402746

namespace A268082

/-- `eq[A003602(2*n+1), A049077(2*(n+1))]+1` -/
def P4121994891389402746.Spec : Prop :=
  ∀ n, (P4121994891389402746.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P3745650630276312250

`eq[A049077(2*(n+1)), A065033(2*n+1)]+1`
-/

namespace A268082.P3745650630276312250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268082.P3745650630276312250

namespace A268082

/-- `eq[A049077(2*(n+1)), A065033(2*n+1)]+1` -/
def P3745650630276312250.Spec : Prop :=
  ∀ n, (P3745650630276312250.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P7491322457884071382

`eq[A049077(2*(n+1)), A110654(2*n+1)]+1`
-/

namespace A268082.P7491322457884071382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A268082.P7491322457884071382

namespace A268082

/-- `eq[A049077(2*(n+1)), A110654(2*n+1)]+1` -/
def P7491322457884071382.Spec : Prop :=
  ∀ n, (P7491322457884071382.a n : ℤ) = A268082 (n + 1)

end A268082

/-! ## A268082.P12762978052234728402

`A008619(eq[A008619(n+1), A049077(n+2)])`
-/

namespace A268082.P12762978052234728402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049077 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A268082.P12762978052234728402

namespace A268082

/-- `A008619(eq[A008619(n+1), A049077(n+2)])` -/
def P12762978052234728402.Spec : Prop :=
  ∀ n, P12762978052234728402.a n = A268082 (n + 1)

end A268082

/-!
# A268083: Numbers k that are not prime powers and such that gcd(binomial(2*k-1,k), k) = 1.

The programs for A268083, the canonical program `A268083.P14251606824912960542` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268083 has offset 1).

The definition of A268083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2788 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268083.P14251606824912960542

`filter[A082916(n+3), A354108(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A268083

/-- `filter[A082916(n+3), A354108(#)]` -/
def P14251606824912960542.Spec : Prop :=
  ∀ n, P14251606824912960542.a n = A268083 (n + 1)

theorem P14251606824912960542.correct : P14251606824912960542.Spec := by
  intro n
  simp only [A268083, Nat.add_sub_cancel]

end A268083

/-! ## A268083.P9153331572066759745

`∩[A061346(n+1), A082916(n+1)]`
-/

namespace A268083.P9153331572066759745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P9153331572066759745

namespace A268083

/-- `∩[A061346(n+1), A082916(n+1)]` -/
def P9153331572066759745.Spec : Prop :=
  ∀ n, (P9153331572066759745.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P16189418269214508160

`∩[A061346(n+1), A268082(n+1)]`
-/

namespace A268083.P16189418269214508160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P16189418269214508160

namespace A268083

/-- `∩[A061346(n+1), A268082(n+1)]` -/
def P16189418269214508160.Spec : Prop :=
  ∀ n, (P16189418269214508160.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P15163119855239787747

`∩[A082916(n+1), A156683(n+1)]`
-/

namespace A268083.P15163119855239787747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P15163119855239787747

namespace A268083

/-- `∩[A082916(n+1), A156683(n+1)]` -/
def P15163119855239787747.Spec : Prop :=
  ∀ n, (P15163119855239787747.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P6311390733687815305

`∩[A156683(n+1), A268082(n+1)]`
-/

namespace A268083.P6311390733687815305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P6311390733687815305

namespace A268083

/-- `∩[A156683(n+1), A268082(n+1)]` -/
def P6311390733687815305.Spec : Prop :=
  ∀ n, (P6311390733687815305.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P6933365541689189929

`∩[A082916(n+1), A324110(n+1)]`
-/

namespace A268083.P6933365541689189929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P6933365541689189929

namespace A268083

/-- `∩[A082916(n+1), A324110(n+1)]` -/
def P6933365541689189929.Spec : Prop :=
  ∀ n, (P6933365541689189929.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P4878797896487705725

`∩[A268082(n+1), A324110(n+1)]`
-/

namespace A268083.P4878797896487705725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324110 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P4878797896487705725

namespace A268083

/-- `∩[A268082(n+1), A324110(n+1)]` -/
def P4878797896487705725.Spec : Prop :=
  ∀ n, (P4878797896487705725.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P11457719525404376631

`∩[A033949(n+1), A082916(n+1)]`
-/

namespace A268083.P11457719525404376631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P11457719525404376631

namespace A268083

/-- `∩[A033949(n+1), A082916(n+1)]` -/
def P11457719525404376631.Spec : Prop :=
  ∀ n, (P11457719525404376631.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P12365411243600429935

`∩[A082916(n+1), A346608(n+1)]`
-/

namespace A268083.P12365411243600429935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P12365411243600429935

namespace A268083

/-- `∩[A082916(n+1), A346608(n+1)]` -/
def P12365411243600429935.Spec : Prop :=
  ∀ n, (P12365411243600429935.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P8811459028900190629

`∩[A268082(n+1), A346608(n+1)]`
-/

namespace A268083.P8811459028900190629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P8811459028900190629

namespace A268083

/-- `∩[A268082(n+1), A346608(n+1)]` -/
def P8811459028900190629.Spec : Prop :=
  ∀ n, (P8811459028900190629.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P1009912001868719553

`∩[A081062(n+1), A082916(n+1)]`
-/

namespace A268083.P1009912001868719553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P1009912001868719553

namespace A268083

/-- `∩[A081062(n+1), A082916(n+1)]` -/
def P1009912001868719553.Spec : Prop :=
  ∀ n, (P1009912001868719553.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P8045983002896127859

`∩[A081062(n+1), A268082(n+1)]`
-/

namespace A268083.P8045983002896127859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P8045983002896127859

namespace A268083

/-- `∩[A081062(n+1), A268082(n+1)]` -/
def P8045983002896127859.Spec : Prop :=
  ∀ n, (P8045983002896127859.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P8416217690451401164

`∩[A024619(n+1), A082916(n+1)]`
-/

namespace A268083.P8416217690451401164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P8416217690451401164

namespace A268083

/-- `∩[A024619(n+1), A082916(n+1)]` -/
def P8416217690451401164.Spec : Prop :=
  ∀ n, (P8416217690451401164.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P16500469447380493058

`∩[A024619(n+1), A268082(n+1)]`
-/

namespace A268083.P16500469447380493058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A268083.P16500469447380493058

namespace A268083

/-- `∩[A024619(n+1), A268082(n+1)]` -/
def P16500469447380493058.Spec : Prop :=
  ∀ n, (P16500469447380493058.a n : ℤ) = A268083 (n + 1)

end A268083

/-! ## A268083.P14198126877889728238

`filter[A268082(n+1), A143731(#)]`
-/

namespace A268083.P14198126877889728238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A268083.P14198126877889728238

namespace A268083

/-- `filter[A268082(n+1), A143731(#)]` -/
def P14198126877889728238.Spec : Prop :=
  ∀ n, P14198126877889728238.a n = A268083 (n + 1)

end A268083

/-! ## A268083.P6422442513215808640

`filter[A082916(n+2), A143731(#)]`
-/

namespace A268083.P6422442513215808640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082916 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A268083.P6422442513215808640

namespace A268083

/-- `filter[A082916(n+2), A143731(#)]` -/
def P6422442513215808640.Spec : Prop :=
  ∀ n, P6422442513215808640.a n = A268083 (n + 1)

end A268083

/-!
# A268084: Minimum number of occurrences of abelian squares in a binary word of length n.

The programs for A268084, there is no canonical definition to state claims against.
-/

/-! ## A268084.P3648769005252425410

`A127321(A241343(2*n+3)-A382269(n))`
-/

namespace A268084.P3648769005252425410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A241343 (2 * n + 3) - A382269 n).toNat

end

end A268084.P3648769005252425410

/-!
# A268085: a(n) = Catalan(n)^2*n.

The programs for A268085, the canonical program `A268085.P18672722463515769` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268085 has offset 0).

The definition of A268085 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268085.P18672722463515769

`n*(C(2*n, n)/(n+1))²`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268085

/-- `n*(C(2*n, n)/(n+1))²` -/
def P18672722463515769.Spec : Prop :=
  ∀ n, P18672722463515769.a n = (A268085 n : ℚ)

end A268085

/-! ## A268085.P1885785247267060540

`C(2*n, n+1)/(n+1)*C(2*n, n)`
-/

namespace A268085.P1885785247267060540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) (n + 1) : ℚ) / (n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A268085.P1885785247267060540

namespace A268085

/-- `C(2*n, n+1)/(n+1)*C(2*n, n)` -/
def P1885785247267060540.Spec : Prop :=
  ∀ n, P1885785247267060540.a n = (A268085 n : ℚ)

end A268085

/-! ## A268085.P657259009209340615

`A267982(n)/4`
-/

namespace A268085.P657259009209340615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267982 n : ℚ) / 4

end

end A268085.P657259009209340615

namespace A268085

/-- `A267982(n)/4` -/
def P657259009209340615.Spec : Prop :=
  ∀ n, P657259009209340615.a n = (A268085 n : ℚ)

end A268085

/-! ## A268085.P12195834497688626061

`n*A001246(n)`
-/

namespace A268085.P12195834497688626061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001246 n

end

end A268085.P12195834497688626061

namespace A268085

/-- `n*A001246(n)` -/
def P12195834497688626061.Spec : Prop :=
  ∀ n, P12195834497688626061.a n = A268085 n

end A268085

/-! ## A268085.P14480139041149552901

`n*A000108(n)²`
-/

namespace A268085.P14480139041149552901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000108 n ^ 2

end

end A268085.P14480139041149552901

namespace A268085

/-- `n*A000108(n)²` -/
def P14480139041149552901.Spec : Prop :=
  ∀ n, P14480139041149552901.a n = A268085 n

end A268085

/-! ## A268085.P12785394596189179860

`n*A168491(n)²`
-/

namespace A268085.P12785394596189179860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A168491 n ^ 2

end

end A268085.P12785394596189179860

namespace A268085

/-- `n*A168491(n)²` -/
def P12785394596189179860.Spec : Prop :=
  ∀ n, P12785394596189179860.a n = A268085 n

end A268085

/-! ## A268085.P8752266406209632745

`n*A008313(n²)²`
-/

namespace A268085.P8752266406209632745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008313 (n ^ 2) ^ 2

end

end A268085.P8752266406209632745

namespace A268085

/-- `n*A008313(n²)²` -/
def P8752266406209632745.Spec : Prop :=
  ∀ n, P8752266406209632745.a n = A268085 n

end A268085

/-! ## A268085.P18389812437532081289

`n*A172414(n²)²`
-/

namespace A268085.P18389812437532081289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A172414 (n ^ 2) ^ 2

end

end A268085.P18389812437532081289

namespace A268085

/-- `n*A172414(n²)²` -/
def P18389812437532081289.Spec : Prop :=
  ∀ n, P18389812437532081289.a n = A268085 n

end A268085

/-! ## A268085.P7535808531757342754

`n*A259992(n²)²`
-/

namespace A268085.P7535808531757342754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A259992 (n ^ 2) ^ 2

end

end A268085.P7535808531757342754

namespace A268085

/-- `n*A259992(n²)²` -/
def P7535808531757342754.Spec : Prop :=
  ∀ n, P7535808531757342754.a n = A268085 n

end A268085

/-!
# A268087: a(n) = A162909(n) + A162910(n).

The programs for A268087, the canonical program `A268087.P6457942966447393227` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268087 has offset 1).

The definition of A268087 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A162909, A162910, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A268087.P6457942966447393227

`A162909(n+1)+A162910(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A268087

/-- `A162909(n+1)+A162910(n+1)` -/
def P6457942966447393227.Spec : Prop :=
  ∀ n, P6457942966447393227.a n = A268087 (n + 1)

theorem P6457942966447393227.correct : P6457942966447393227.Spec := by
  intro n
  simp only [A268087, Nat.add_sub_cancel]

end A268087

/-! ## A268087.P11340140223460002237

`A273494(A233280(n+1))`
-/

namespace A268087.P11340140223460002237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (A233280 (n + 1)).toNat

end

end A268087.P11340140223460002237

namespace A268087

/-- `A273494(A233280(n+1))` -/
def P11340140223460002237.Spec : Prop :=
  ∀ n, P11340140223460002237.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P4871064315710535936

`A071585(A180201(n+1))`
-/

namespace A268087.P4871064315710535936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A180201 (n + 1)).toNat

end

end A268087.P4871064315710535936

namespace A268087

/-- `A071585(A180201(n+1))` -/
def P4871064315710535936.Spec : Prop :=
  ∀ n, P4871064315710535936.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P7003657990464307475

`A273494(A003188(n+1))`
-/

namespace A268087.P7003657990464307475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (A003188 (n + 1)).toNat

end

end A268087.P7003657990464307475

namespace A268087

/-- `A273494(A003188(n+1))` -/
def P7003657990464307475.Spec : Prop :=
  ∀ n, P7003657990464307475.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P1237603570881674257

`A086592(A284460(n+1))`
-/

namespace A268087.P1237603570881674257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (A284460 (n + 1)).toNat

end

end A268087.P1237603570881674257

namespace A268087

/-- `A086592(A284460(n+1))` -/
def P1237603570881674257.Spec : Prop :=
  ∀ n, P1237603570881674257.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P17591784881612250078

`A086592(A340250(n+1))`
-/

namespace A268087.P17591784881612250078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (A340250 (n + 1)).toNat

end

end A268087.P17591784881612250078

namespace A268087

/-- `A086592(A340250(n+1))` -/
def P17591784881612250078.Spec : Prop :=
  ∀ n, P17591784881612250078.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P15154717070613151809

`A007306(A258746(n+1)+1)`
-/

namespace A268087.P15154717070613151809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A258746 (n + 1) + 1).toNat

end

end A268087.P15154717070613151809

namespace A268087

/-- `A007306(A258746(n+1)+1)` -/
def P15154717070613151809.Spec : Prop :=
  ∀ n, P15154717070613151809.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P10136447897422330149

`A007306(A332769(n+1)+1)`
-/

namespace A268087.P10136447897422330149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A332769 (n + 1) + 1).toNat

end

end A268087.P10136447897422330149

namespace A268087

/-- `A007306(A332769(n+1)+1)` -/
def P10136447897422330149.Spec : Prop :=
  ∀ n, P10136447897422330149.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P5639094878653227115

`A273494(A180201(A258746(n+1)))`
-/

namespace A268087.P5639094878653227115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (A180201 (A258746 (n + 1)).toNat).toNat

end

end A268087.P5639094878653227115

namespace A268087

/-- `A273494(A180201(A258746(n+1)))` -/
def P5639094878653227115.Spec : Prop :=
  ∀ n, P5639094878653227115.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P11660172438171312863

`A273493(A231550(n+1))`
-/

namespace A268087.P11660172438171312863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273493 (A231550 (n + 1)).toNat

end

end A268087.P11660172438171312863

namespace A268087

/-- `A273493(A231550(n+1))` -/
def P11660172438171312863.Spec : Prop :=
  ∀ n, P11660172438171312863.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P5951526514867409653

`A273493(A284460(A258996(n+1)))`
-/

namespace A268087.P5951526514867409653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273493 (A284460 (A258996 (n + 1)).toNat).toNat

end

end A268087.P5951526514867409653

namespace A268087

/-- `A273493(A284460(A258996(n+1)))` -/
def P5951526514867409653.Spec : Prop :=
  ∀ n, P5951526514867409653.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P15093945303336643351

`A273493(A341915(n+1))`
-/

namespace A268087.P15093945303336643351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273493 (A341915 (n + 1)).toNat

end

end A268087.P15093945303336643351

namespace A268087

/-- `A273493(A341915(n+1))` -/
def P15093945303336643351.Spec : Prop :=
  ∀ n, P15093945303336643351.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P15891872136099676617

`A245328(A231550(2*(n+1)))`
-/

namespace A268087.P15891872136099676617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A231550 (2 * (n + 1))).toNat

end

end A268087.P15891872136099676617

namespace A268087

/-- `A245328(A231550(2*(n+1)))` -/
def P15891872136099676617.Spec : Prop :=
  ∀ n, P15891872136099676617.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P3599693054480204384

`A020650(A284460(2*(n+1)))`
-/

namespace A268087.P3599693054480204384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A284460 (2 * (n + 1))).toNat

end

end A268087.P3599693054480204384

namespace A268087

/-- `A020650(A284460(2*(n+1)))` -/
def P3599693054480204384.Spec : Prop :=
  ∀ n, P3599693054480204384.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P12729041693294535738

`A002487(A332769(2*(n+1)))`
-/

namespace A268087.P12729041693294535738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A332769 (2 * (n + 1))).toNat

end

end A268087.P12729041693294535738

namespace A268087

/-- `A002487(A332769(2*(n+1)))` -/
def P12729041693294535738.Spec : Prop :=
  ∀ n, P12729041693294535738.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P10427214248357654551

`A127971(2*A332769(n+1))`
-/

namespace A268087.P10427214248357654551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127971 (2 * A332769 (n + 1)).toNat

end

end A268087.P10427214248357654551

namespace A268087

/-- `A127971(2*A332769(n+1))` -/
def P10427214248357654551.Spec : Prop :=
  ∀ n, P10427214248357654551.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P12142568459408267773

`A020650(A284460(n+1)+A284460(n+1))`
-/

namespace A268087.P12142568459408267773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A284460 (n + 1) + A284460 (n + 1)).toNat

end

end A268087.P12142568459408267773

namespace A268087

/-- `A020650(A284460(n+1)+A284460(n+1))` -/
def P12142568459408267773.Spec : Prop :=
  ∀ n, P12142568459408267773.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P7343493365087445665

`A071585(A154436(n+1))`
-/

namespace A268087.P7343493365087445665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A154436 (n + 1)).toNat

end

end A268087.P7343493365087445665

namespace A268087

/-- `A071585(A154436(n+1))` -/
def P7343493365087445665.Spec : Prop :=
  ∀ n, P7343493365087445665.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P3092361773644615595

`A086592(A154438(n+1))`
-/

namespace A268087.P3092361773644615595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (A154438 (n + 1)).toNat

end

end A268087.P3092361773644615595

namespace A268087

/-- `A086592(A154438(n+1))` -/
def P3092361773644615595.Spec : Prop :=
  ∀ n, P3092361773644615595.a n = A268087 (n + 1)

end A268087

/-! ## A268087.P5405891410281172486

`A273493(A153153(n+1))`
-/

namespace A268087.P5405891410281172486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273493 (A153153 (n + 1)).toNat

end

end A268087.P5405891410281172486

namespace A268087

/-- `A273493(A153153(n+1))` -/
def P5405891410281172486.Spec : Prop :=
  ∀ n, P5405891410281172486.a n = A268087 (n + 1)

end A268087

/-!
# A268088: Number of nX3 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268088, there is no canonical definition to state claims against.
-/

/-! ## A268088.P11083932366975629855

`A268938(n+1)^3/3`
-/

namespace A268088.P11083932366975629855
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268938 (n + 1) ^ 3 : ℚ) / 3

end

end A268088.P11083932366975629855

/-! ## A268088.P4445923806754518470

`9*A267946(n+1)^3`
-/

namespace A268088.P4445923806754518470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A267946 (n + 1) ^ 3

end

end A268088.P4445923806754518470

/-! ## A268088.P771205690113114959

`A267947(n+1)*A268938(n+1)`
-/

namespace A268088.P771205690113114959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267947 (n + 1) * A268938 (n + 1)

end

end A268088.P771205690113114959

/-! ## A268088.P10055519547121322641

`A268938(n+1)²*A267946(n+1)`
-/

namespace A268088.P10055519547121322641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268938 (n + 1) ^ 2 * A267946 (n + 1)

end

end A268088.P10055519547121322641

/-! ## A268088.P2159968141703035652

`A267947(n+1)*A268944(∑[n+2])`
-/

namespace A268088.P2159968141703035652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267947 (n + 1) * A268944 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268088.P2159968141703035652

/-! ## A268088.P6190884711663890791

`A267947(n+1)*A269640(∑[n+2])`
-/

namespace A268088.P6190884711663890791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267947 (n + 1) * A269640 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A268088.P6190884711663890791

/-! ## A268088.P14578749324359598849

`3*A267946(n+1)*A267947(n+1)`
-/

namespace A268088.P14578749324359598849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A267946 (n + 1) * A267947 (n + 1))

end

end A268088.P14578749324359598849

/-! ## A268088.P5155663824494548372

`3*(A175654(n+1)-A105476(n+1))*A267947(n+1)`
-/

namespace A268088.P5155663824494548372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A175654 (n + 1) - A105476 (n + 1)) * A267947 (n + 1)

end

end A268088.P5155663824494548372

/-! ## A268088.P11923976684543543266

`A242179(n)²*A268944(A000096(n+1))*A267947(n+1)`
-/

namespace A268088.P11923976684543543266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242179 n ^ 2 * A268944 (A000096 (n + 1)).toNat * A267947 (n + 1)

end

end A268088.P11923976684543543266

/-! ## A268088.P11908133964905393867

`A267947(n+1)²/A267946(n+1)`
-/

namespace A268088.P11908133964905393867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A267947 (n + 1) ^ 2 : ℚ) / (A267946 (n + 1) : ℚ)

end

end A268088.P11908133964905393867

/-!
# A268089: Number of nX4 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268089, there is no canonical definition to state claims against.
-/

/-! ## A268089.P13514315488290512361

`A268092(A141214(n+1))`
-/

namespace A268089.P13514315488290512361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A141214 (n + 1)).toNat

end

end A268089.P13514315488290512361

/-! ## A268089.P15024698146371290176

`A268092(A155212(n)+5)`
-/

namespace A268089.P15024698146371290176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A155212 n + 5).toNat

end

end A268089.P15024698146371290176

/-! ## A268089.P9191344025369897401

`A268092(eq[2, A152157(n)])`
-/

namespace A268089.P9191344025369897401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268089.P9191344025369897401

/-! ## A268089.P11150314327676739387

`A268092(eq[2, A155586(n)])`
-/

namespace A268089.P11150314327676739387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155586 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268089.P11150314327676739387

/-! ## A268089.P439130710262022929

`A268092(eq[3, A193592(n)])`
-/

namespace A268089.P439130710262022929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268089.P439130710262022929

/-!
# A268090: Number of n X 5 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268090, there is no canonical definition to state claims against.
-/

/-! ## A268090.P10397433007708113647

`A268092(Δ[A264443(n)])`
-/

namespace A268090.P10397433007708113647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (f1 (n + 1) - f1 n).toNat

end

end A268090.P10397433007708113647

/-! ## A268090.P3951635663107560053

`A268092(A046691(n+3))`
-/

namespace A268090.P3951635663107560053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A046691 (n + 3)).toNat

end

end A268090.P3951635663107560053

/-! ## A268090.P13667663347133137416

`A268092(eq[3, A152157(n)])`
-/

namespace A268090.P13667663347133137416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268090.P13667663347133137416

/-! ## A268090.P1994845433960757104

`A268092(eq[4, A193592(n)])`
-/

namespace A268090.P1994845433960757104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268090.P1994845433960757104

/-!
# A268091: Number of nX6 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268091, there is no canonical definition to state claims against.
-/

/-! ## A268091.P16993917751154024117

`A268092(A052905(n+3))`
-/

namespace A268091.P16993917751154024117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A052905 (n + 3)).toNat

end

end A268091.P16993917751154024117

/-! ## A268091.P14366743461855869339

`A268092(eq[8, A185782(n+1)])`
-/

namespace A268091.P14366743461855869339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268091.P14366743461855869339

/-! ## A268091.P6250364943175498437

`A268092(Δ[A264443(n+1)]-1)`
-/

namespace A268091.P6250364943175498437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (f1 (n + 1) - f1 n - 1).toNat

end

end A268091.P6250364943175498437

/-!
# A268092: T(n,k)=Number of nXk 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268092, there is no canonical definition to state claims against.
-/

/-! ## A268092.P15445850936400283720

`A268026(A043320(n+1))/3`
-/

namespace A268092.P15445850936400283720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268026 (A043320 (n + 1)).toNat : ℚ) / 3

end

end A268092.P15445850936400283720

/-! ## A268092.P4709736780906368019

`A268026(A044917(n+1))/3`
-/

namespace A268092.P4709736780906368019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268026 (A044917 (n + 1)).toNat : ℚ) / 3

end

end A268092.P4709736780906368019

/-! ## A268092.P7839896571319176160

`A268026(A161953(n+1))/3`
-/

namespace A268092.P7839896571319176160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268026 (A161953 (n + 1)).toNat : ℚ) / 3

end

end A268092.P7839896571319176160

/-! ## A268092.P3588222394697437817

`A268026(A187829(n+1))/3`
-/

namespace A268092.P3588222394697437817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268026 (A187829 (n + 1)).toNat : ℚ) / 3

end

end A268092.P3588222394697437817

/-! ## A268092.P7591845087962286509

`A268026(A246337(n+1))/3`
-/

namespace A268092.P7591845087962286509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A268026 (A246337 (n + 1)).toNat : ℚ) / 3

end

end A268092.P7591845087962286509

/-!
# A268093: Number of 1 X n 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268093, the canonical program `A268093.P10214138090894839707` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268093 has offset 1).

The definition of A268093 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268093.P17463657713103128061

`ogf((1-x-x^2)/(1-4x+2x^2+4x^3))`
-/

namespace A268093.P17463657713103128061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -4, 2, 4] n

end

end A268093.P17463657713103128061

namespace A268093

/-- `ogf((1-x-x^2)/(1-4x+2x^2+4x^3))` -/
def P17463657713103128061.Spec : Prop :=
  ∀ n, P17463657713103128061.a n = A268093 (n + 1)

end A268093

/-! ## A268093.P10214138090894839707

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268093

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P10214138090894839707.Spec : Prop :=
  ∀ n, P10214138090894839707.a n = A268093 (n + 1)

theorem P10214138090894839707.correct : P10214138090894839707.Spec := by
  intro n
  simp only [A268093, Nat.add_sub_cancel]

end A268093

/-! ## A268093.P10715199207213192413

`(A028859(n+1)-2^n)/2`
-/

namespace A268093.P10715199207213192413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028859 (n + 1) - (2 ^ n : ℤ) : ℚ) / 2

end

end A268093.P10715199207213192413

namespace A268093

/-- `(A028859(n+1)-2^n)/2` -/
def P10715199207213192413.Spec : Prop :=
  ∀ n, P10715199207213192413.a n = (A268093 (n + 1) : ℚ)

end A268093

/-! ## A268093.P4161099634412841710

`A155020(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A268093.P4161099634412841710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A155020 n + 2 * a (n - 1)

end

end A268093.P4161099634412841710

namespace A268093

/-- `A155020(n)+2*a(n-1)` -/
def P4161099634412841710.Spec : Prop :=
  ∀ n, P4161099634412841710.a n = A268093 (n + 1)

end A268093

/-! ## A268093.P18434230018516627687

`Δ[A005666(n)]-A038508(n)`
-/

namespace A268093.P18434230018516627687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005666 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038508 n

end

end A268093.P18434230018516627687

namespace A268093

/-- `Δ[A005666(n)]-A038508(n)` -/
def P18434230018516627687.Spec : Prop :=
  ∀ n, P18434230018516627687.a n = A268093 (n + 1)

end A268093

/-! ## A268093.P5081957743071294484

`Δ[A028859(n)]-A038508(n)`
-/

namespace A268093.P5081957743071294484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A038508 n

end

end A268093.P5081957743071294484

namespace A268093

/-- `Δ[A028859(n)]-A038508(n)` -/
def P5081957743071294484.Spec : Prop :=
  ∀ n, P5081957743071294484.a n = A268093 (n + 1)

end A268093

/-! ## A268093.P16344073739899007435

`A002605(n+2)-A094297(n+1)`
-/

namespace A268093.P16344073739899007435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 2) - A094297 (n + 1)

end

end A268093.P16344073739899007435

namespace A268093

/-- `A002605(n+2)-A094297(n+1)` -/
def P16344073739899007435.Spec : Prop :=
  ∀ n, P16344073739899007435.a n = A268093 (n + 1)

end A268093

/-! ## A268093.P4530923810403084907

`(A094309(n+3)+A000079(n))/2`
-/

namespace A268093.P4530923810403084907
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094309 (n + 3) + A000079 n : ℚ) / 2

end

end A268093.P4530923810403084907

namespace A268093

/-- `(A094309(n+3)+A000079(n))/2` -/
def P4530923810403084907.Spec : Prop :=
  ∀ n, P4530923810403084907.a n = (A268093 (n + 1) : ℚ)

end A268093

/-! ## A268093.P16063839375483746506

`A026150(n+1)+A026150(n)-A038508(n)`
-/

namespace A268093.P16063839375483746506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (n + 1) + (A026150 n - A038508 n)

end

end A268093.P16063839375483746506

namespace A268093

/-- `A026150(n+1)+A026150(n)-A038508(n)` -/
def P16063839375483746506.Spec : Prop :=
  ∀ n, P16063839375483746506.a n = A268093 (n + 1)

end A268093

/-! ## A268093.P13610659975741167191

`A269613(n+1)/3`
-/

namespace A268093.P13610659975741167191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269613 (n + 1) : ℚ) / 3

end

end A268093.P13610659975741167191

namespace A268093

/-- `A269613(n+1)/3` -/
def P13610659975741167191.Spec : Prop :=
  ∀ n, P13610659975741167191.a n = (A268093 (n + 1) : ℚ)

end A268093

/-! ## A268093.P5973143183512600724

`sqrt(A268094(n+1)/3)`
-/

namespace A268093.P5973143183512600724
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A268094 (n + 1) : ℚ) / 3 : ℝ)

end

end A268093.P5973143183512600724

namespace A268093

/-- `sqrt(A268094(n+1)/3)` -/
def P5973143183512600724.Spec : Prop :=
  ∀ n, P5973143183512600724.a n = (A268093 (n + 1) : ℝ)

end A268093

/-!
# A268094: Number of 2 X n 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268094, the canonical program `A268094.P12267973900043072189` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268094 has offset 1).

The definition of A268094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 114 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A268094.P12267973900043072189

`3*A268093(n+1)²`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A268094

/-- `3*A268093(n+1)²` -/
def P12267973900043072189.Spec : Prop :=
  ∀ n, P12267973900043072189.a n = A268094 (n + 1)

theorem P12267973900043072189.correct : P12267973900043072189.Spec := by
  intro n
  simp only [A268094, Nat.add_sub_cancel]

end A268094

/-! ## A268094.P12837417272417857334

`A269613(n+1)²/3`
-/

namespace A268094.P12837417272417857334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269613 (n + 1) ^ 2 : ℚ) / 3

end

end A268094.P12837417272417857334

namespace A268094

/-- `A269613(n+1)²/3` -/
def P12837417272417857334.Spec : Prop :=
  ∀ n, P12837417272417857334.a n = (A268094 (n + 1) : ℚ)

end A268094

/-! ## A268094.P12945374928988718688

`A268093(n+1)*A269613(n+1)`
-/

namespace A268094.P12945374928988718688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268093 (n + 1) * A269613 (n + 1)

end

end A268094.P12945374928988718688

namespace A268094

/-- `A268093(n+1)*A269613(n+1)` -/
def P12945374928988718688.Spec : Prop :=
  ∀ n, P12945374928988718688.a n = A268094 (n + 1)

end A268094

/-! ## A268094.P13845398828396662230

`(A094306(n+2)+Δ[A268093(n+1)])*A268093(n+1)`
-/

namespace A268094.P13845398828396662230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A094306 (n + 2) + (f1 (n + 1) - f1 n)) * A268093 (n + 1)

end

end A268094.P13845398828396662230

namespace A268094

/-- `(A094306(n+2)+Δ[A268093(n+1)])*A268093(n+1)` -/
def P13845398828396662230.Spec : Prop :=
  ∀ n, P13845398828396662230.a n = A268094 (n + 1)

end A268094

/-! ## A268094.P18129119883041877412

`A269619(∑[n+2])²/3`
-/

namespace A268094.P18129119883041877412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269619 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) / 3

end

end A268094.P18129119883041877412

namespace A268094

/-- `A269619(∑[n+2])²/3` -/
def P18129119883041877412.Spec : Prop :=
  ∀ n, P18129119883041877412.a n = (A268094 (n + 1) : ℚ)

end A268094

/-! ## A268094.P8487790029118226156

`A269776(∑[n+2])²/3`
-/

namespace A268094.P8487790029118226156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269776 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℚ) / 3

end

end A268094.P8487790029118226156

namespace A268094

/-- `A269776(∑[n+2])²/3` -/
def P8487790029118226156.Spec : Prop :=
  ∀ n, P8487790029118226156.a n = (A268094 (n + 1) : ℚ)

end A268094

/-!
# A268095: Number of 3Xn 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268095, there is no canonical definition to state claims against.
-/

/-! ## A268095.P7838431450238689831

`A268092(∑[n+2]+4)`
-/

namespace A268095.P7838431450238689831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A268095.P7838431450238689831

/-! ## A268095.P2616100372761309017

`lcm(2, A268092(A167614(n+1)))`
-/

namespace A268095.P2616100372761309017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A268092 (A167614 (n + 1)).toNat)

end

end A268095.P2616100372761309017

/-! ## A268095.P13675989165718636878

`A268092(A167614(n+1))+A107846(n)`
-/

namespace A268095.P13675989165718636878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A167614 (n + 1)).toNat + A107846 n

end

end A268095.P13675989165718636878

/-! ## A268095.P9867712360727600520

`A068045(n)*A268092(A167614(n+1))`
-/

namespace A268095.P9867712360727600520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068045 n * A268092 (A167614 (n + 1)).toNat

end

end A268095.P9867712360727600520

/-! ## A268095.P16756376875341146351

`A206244(n)*A268092(A167614(n+1))`
-/

namespace A268095.P16756376875341146351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206244 n * A268092 (A167614 (n + 1)).toNat

end

end A268095.P16756376875341146351

/-!
# A268096: Number of 4Xn 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268096, there is no canonical definition to state claims against.
-/

/-! ## A268096.P12519970042117903312

`A268092(A141214(n)+7)`
-/

namespace A268096.P12519970042117903312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A141214 n + 7).toNat

end

end A268096.P12519970042117903312

/-! ## A268096.P1259948678127706792

`A268092(A052905(n)+9)`
-/

namespace A268096.P1259948678127706792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A052905 n + 9).toNat

end

end A268096.P1259948678127706792

/-! ## A268096.P12760741027359700207

`A268092(A055999(n)+10)`
-/

namespace A268096.P12760741027359700207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A055999 n + 10).toNat

end

end A268096.P12760741027359700207

/-! ## A268096.P8088030434710444704

`A268092(A167614(n+2)+1)`
-/

namespace A268096.P8088030434710444704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A167614 (n + 2) + 1).toNat

end

end A268096.P8088030434710444704

/-! ## A268096.P9172886068640956467

`A268092(eq[5, A131818(n+1)])`
-/

namespace A268096.P9172886068640956467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268096.P9172886068640956467

/-!
# A268097: Number of 5Xn 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268097, there is no canonical definition to state claims against.
-/

/-! ## A268097.P17861790298302594000

`A268092(A056000(n)+15)`
-/

namespace A268097.P17861790298302594000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A056000 n + 15).toNat

end

end A268097.P17861790298302594000

/-! ## A268097.P800873288187234636

`A268092(eq[6, A131818(n+1)])`
-/

namespace A268097.P800873288187234636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268097.P800873288187234636

/-! ## A268097.P9619000525437882967

`A268092(Δ[A034857(n+1)]+8)`
-/

namespace A268097.P9619000525437882967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (f1 (n + 1) - f1 n + 8).toNat

end

end A268097.P9619000525437882967

/-! ## A268097.P5942304818470832908

`A268092(A000096(n+4)-(n-1))`
-/

namespace A268097.P5942304818470832908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A000096 (n + 4) - ((n : ℤ) - 1)).toNat

end

end A268097.P5942304818470832908

/-! ## A268097.P15559080899179564225

`A268092(A000124(n+5)-(n+1))`
-/

namespace A268097.P15559080899179564225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A268097.P15559080899179564225

/-!
# A268098: Number of 6Xn 0..2 arrays with every repeated value in every row not one larger and in every column one larger mod 3 than the previous repeated value, and upper left element zero.

The programs for A268098, there is no canonical definition to state claims against.
-/

/-! ## A268098.P18343557643188895578

`A268092(eq[7, A131818(n+1)])`
-/

namespace A268098.P18343557643188895578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268092 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A268098.P18343557643188895578

/-!
# A268099: a(n) = 2^(n mod 2)*5*10^floor(n/2) - 1.

The programs for A268099, the canonical program `A268099.P7554043384823958390` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A268099 has offset 0).

The definition of A268099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A268099.P7554043384823958390

`2^(n%2)*5*10^floor(n/2)-1`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A268099

/-- `2^(n%2)*5*10^floor(n/2)-1` -/
def P7554043384823958390.Spec : Prop :=
  ∀ n, P7554043384823958390.a n = (A268099 n : ℚ)

end A268099

/-! ## A268099.P16242743504557752111

`∑[ogf((4+5x)/(1-10x^2))]`
-/

namespace A268099.P16242743504557752111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5] [1, 0, -10] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268099.P16242743504557752111

namespace A268099

/-- `∑[ogf((4+5x)/(1-10x^2))]` -/
def P16242743504557752111.Spec : Prop :=
  ∀ n, P16242743504557752111.a n = A268099 n

end A268099

/-! ## A268099.P4088078163343474147

`ogf((4+5x)/(1-x-10x^2+10x^3))`
-/

namespace A268099.P4088078163343474147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 5] [1, -1, -10, 10] n

end

end A268099.P4088078163343474147

namespace A268099

/-- `ogf((4+5x)/(1-x-10x^2+10x^3))` -/
def P4088078163343474147.Spec : Prop :=
  ∀ n, P4088078163343474147.a n = A268099 n

end A268099

/-! ## A268099.P3440489505380219826

`∑[10*a(n-2)]` with `a(0)=4, a(1)=5`
-/

namespace A268099.P3440489505380219826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 5] fun n f1 =>
  10 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A268099.P3440489505380219826

namespace A268099

/-- `∑[10*a(n-2)]` -/
def P3440489505380219826.Spec : Prop :=
  ∀ n, (P3440489505380219826.a n : ℤ) = A268099 n

end A268099

/-! ## A268099.P6717218170567576209

`∏[gcd(2, n)²+1]-1`
-/

namespace A268099.P6717218170567576209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268099.P6717218170567576209

namespace A268099

/-- `∏[gcd(2, n)²+1]-1` -/
def P6717218170567576209.Spec : Prop :=
  ∀ n, P6717218170567576209.a n = A268099 n

end A268099

/-! ## A268099.P9163065541811505207

`10*a(n-2)+9` with `a(0)=4, a(1)=9`
-/

namespace A268099.P9163065541811505207
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 9] fun n a =>
  10 * a (n - 2) + 9

end

end A268099.P9163065541811505207

namespace A268099

/-- `10*a(n-2)+9` -/
def P9163065541811505207.Spec : Prop :=
  ∀ n, (P9163065541811505207.a n : ℤ) = A268099 n

end A268099

/-! ## A268099.P5921790789303635636

`∏[abs(a(n-2))]-1` with `a(0)=5, a(1)=2`
-/

namespace A268099.P5921790789303635636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268099.P5921790789303635636

namespace A268099

/-- `∏[abs(a(n-2))]-1` -/
def P5921790789303635636.Spec : Prop :=
  ∀ n, P5921790789303635636.a n = A268099 n

end A268099

/-! ## A268099.P16000241780402028866

`∏[7-a(n-1)]-1` with `a(0)=5`
-/

namespace A268099.P16000241780402028866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  7 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268099.P16000241780402028866

namespace A268099

/-- `∏[7-a(n-1)]-1` -/
def P16000241780402028866.Spec : Prop :=
  ∀ n, P16000241780402028866.a n = A268099 n

end A268099

/-! ## A268099.P11969083255147546093

`A268100(n+1)-1`
-/

namespace A268099.P11969083255147546093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268100 (n + 1) - 1

end

end A268099.P11969083255147546093

namespace A268099

/-- `A268100(n+1)-1` -/
def P11969083255147546093.Spec : Prop :=
  ∀ n, P11969083255147546093.a n = A268099 n

end A268099

/-! ## A268099.P8516602630423547604

`5*A004643(n)-1`
-/

namespace A268099.P8516602630423547604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A004643 n - 1

end

end A268099.P8516602630423547604

namespace A268099

/-- `5*A004643(n)-1` -/
def P8516602630423547604.Spec : Prop :=
  ∀ n, P8516602630423547604.a n = A268099 n

end A268099

/-! ## A268099.P12604587724409868489

`∏[dr(A040093(n+1))]-1`
-/

namespace A268099.P12604587724409868489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040093 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268099.P12604587724409868489

namespace A268099

/-- `∏[dr(A040093(n+1))]-1` -/
def P12604587724409868489.Spec : Prop :=
  ∀ n, P12604587724409868489.a n = A268099 n

end A268099

/-! ## A268099.P898683217885692514

`∏[dr(A040348(n+1))]-1`
-/

namespace A268099.P898683217885692514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040348 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268099.P898683217885692514

namespace A268099

/-- `∏[dr(A040348(n+1))]-1` -/
def P898683217885692514.Spec : Prop :=
  ∀ n, P898683217885692514.a n = A268099 n

end A268099

/-! ## A268099.P2612705549434679224

`∏[dr(A040759(n+1))]-1`
-/

namespace A268099.P2612705549434679224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040759 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268099.P2612705549434679224

namespace A268099

/-- `∏[dr(A040759(n+1))]-1` -/
def P2612705549434679224.Spec : Prop :=
  ∀ n, P2612705549434679224.a n = A268099 n

end A268099

/-! ## A268099.P4020447603786811467

`∏[dr(A052940(n+1))]-1`
-/

namespace A268099.P4020447603786811467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A052940 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A268099.P4020447603786811467

namespace A268099

/-- `∏[dr(A052940(n+1))]-1` -/
def P4020447603786811467.Spec : Prop :=
  ∀ n, P4020447603786811467.a n = A268099 n

end A268099

/-! ## A268099.P16481713581034573271

`∏[A280193(n+2)²+1]-1`
-/

namespace A268099.P16481713581034573271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (n + 2) ^ 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268099.P16481713581034573271

namespace A268099

/-- `∏[A280193(n+2)²+1]-1` -/
def P16481713581034573271.Spec : Prop :=
  ∀ n, P16481713581034573271.a n = A268099 n

end A268099

/-! ## A268099.P17530585022819051876

`∏[A177499(2*(n+1))+1]-1`
-/

namespace A268099.P17530585022819051876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177499 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268099.P17530585022819051876

namespace A268099

/-- `∏[A177499(2*(n+1))+1]-1` -/
def P17530585022819051876.Spec : Prop :=
  ∀ n, P17530585022819051876.a n = A268099 n

end A268099

/-! ## A268099.P385204827435208972

`A077491(A274406(n+2))`
-/

namespace A268099.P385204827435208972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077491 (A274406 (n + 2)).toNat

end

end A268099.P385204827435208972

namespace A268099

/-- `A077491(A274406(n+2))` -/
def P385204827435208972.Spec : Prop :=
  ∀ n, P385204827435208972.a n = A268099 n

end A268099

/-! ## A268099.P15469304114530646840

`A051885(A056991(2*(n+1)))`
-/

namespace A268099.P15469304114530646840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (A056991 (2 * (n + 1))).toNat

end

end A268099.P15469304114530646840

namespace A268099

/-- `A051885(A056991(2*(n+1)))` -/
def P15469304114530646840.Spec : Prop :=
  ∀ n, P15469304114530646840.a n = A268099 n

end A268099

/-! ## A268099.P11977679297430015083

`∏[A006530(A269695(n+1))]-1`
-/

namespace A268099.P11977679297430015083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A269695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268099.P11977679297430015083

namespace A268099

/-- `∏[A006530(A269695(n+1))]-1` -/
def P11977679297430015083.Spec : Prop :=
  ∀ n, P11977679297430015083.a n = A268099 n

end A268099

/-! ## A268099.P18033398497008564946

`∏[A286142(A020639(n+2))]-1`
-/

namespace A268099.P18033398497008564946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286142 (A020639 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - 1

end

end A268099.P18033398497008564946

namespace A268099

/-- `∏[A286142(A020639(n+2))]-1` -/
def P18033398497008564946.Spec : Prop :=
  ∀ n, P18033398497008564946.a n = A268099 n

end A268099

