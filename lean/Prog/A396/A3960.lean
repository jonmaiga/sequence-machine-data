import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C045
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C012
import Seq.B001.C014
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
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
import Seq.Opaque.C024

/-!
# A396000: Denominators k such that the greedy Egyptian fraction expansion of j/k has the smallest possible number of terms, i.e., such that A097847(k,j) = A050205(k,j), for all 1 <= j < k with GCD(k,j) = 1.

The programs for A396000, there is no canonical definition to state claims against.
-/

/-! ## A396000.P17339916887230685158

`eq[0, A395995(n+1)]+1`
-/

namespace A396000.P17339916887230685158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395995 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396000.P17339916887230685158

/-! ## A396000.P13084871270271664287

`record[gcd(n+1, A395994(n+1))]`
-/

namespace A396000.P13084871270271664287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A395994 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A396000.P13084871270271664287

/-! ## A396000.P5511011576640564537

`eq[1, A004275(A395994(n+1)+1)]+1`
-/

namespace A396000.P5511011576640564537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A395994 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A396000.P5511011576640564537

/-! ## A396000.P8901603775778906000

`eq[A395994(n+1), A395996(n+1)]+1`
-/

namespace A396000.P8901603775778906000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395996 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A396000.P8901603775778906000

/-!
# A396002: Primes p that are the least prime factor of 2^k + 1 for some k >= 1.

The programs for A396002, there is no canonical definition to state claims against.
-/

/-! ## A396002.P1195497894005593161

`A002586(A396043(n+1))`
-/

namespace A396002.P1195497894005593161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002586 (A396043 (n + 1)).toNat

end

end A396002.P1195497894005593161

/-! ## A396002.P7655982206044895899

`∩[A070806(n+1), A348153(n+1)]`
-/

namespace A396002.P7655982206044895899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396002.P7655982206044895899

/-! ## A396002.P10111402207774414168

`∩[A224195(n+1), A348153(n+1)]`
-/

namespace A396002.P10111402207774414168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396002.P10111402207774414168

/-!
# A396005: Numbers k such that tau(2*k) = tau(k + 2) where tau = A000005.

The programs for A396005, the canonical program `A396005.P3331202337071795760` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396005 has offset 1).

The definition of A396005 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396005.P3331202337071795760

`eq[A000005(n+2), A000005(A004277(n))]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A396005

/-- `eq[A000005(n+2), A000005(A004277(n))]` -/
def P3331202337071795760.Spec : Prop :=
  ∀ n, (P3331202337071795760.a n : ℤ) = A396005 (n + 1)

theorem P3331202337071795760.correct : P3331202337071795760.Spec := by
  intro n
  simp only [A396005, Nat.add_sub_cancel]

end A396005

/-! ## A396005.P13140146676996560177

`eq[A000005(n+2), A000005(A028310(2*n))]`
-/

namespace A396005.P13140146676996560177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396005.P13140146676996560177

namespace A396005

/-- `eq[A000005(n+2), A000005(A028310(2*n))]` -/
def P13140146676996560177.Spec : Prop :=
  ∀ n, (P13140146676996560177.a n : ℤ) = A396005 (n + 1)

end A396005

/-! ## A396005.P3380941187578974252

`eq[A032741(2*n), A032741(A142150(2*(n+2)))]`
-/

namespace A396005.P3380941187578974252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A142150 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396005.P3380941187578974252

namespace A396005

/-- `eq[A032741(2*n), A032741(A142150(2*(n+2)))]` -/
def P3380941187578974252.Spec : Prop :=
  ∀ n, (P3380941187578974252.a n : ℤ) = A396005 (n + 1)

end A396005

/-! ## A396005.P2818237685496659857

`eq[A032741(A289439(2*(n+2))), A032741(2*n)]`
-/

namespace A396005.P2818237685496659857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A289439 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396005.P2818237685496659857

namespace A396005

/-- `eq[A032741(A289439(2*(n+2))), A032741(2*n)]` -/
def P2818237685496659857.Spec : Prop :=
  ∀ n, (P2818237685496659857.a n : ℤ) = A396005 (n + 1)

end A396005

/-! ## A396005.P9788350503751615782

`eq[A062069(n+2), A062069(A131737(3*n+1))]`
-/

namespace A396005.P9788350503751615782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062069 (A131737 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396005.P9788350503751615782

namespace A396005

/-- `eq[A062069(n+2), A062069(A131737(3*n+1))]` -/
def P9788350503751615782.Spec : Prop :=
  ∀ n, (P9788350503751615782.a n : ℤ) = A396005 (n + 1)

end A396005

/-! ## A396005.P16652649690302185222

`eq[A032741(A083802(2*n+5)), A032741(2*n)]`
-/

namespace A396005.P16652649690302185222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A083802 (2 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396005.P16652649690302185222

namespace A396005

/-- `eq[A032741(A083802(2*n+5)), A032741(2*n)]` -/
def P16652649690302185222.Spec : Prop :=
  ∀ n, (P16652649690302185222.a n : ℤ) = A396005 (n + 1)

end A396005

/-!
# A396006: Numbers having a representation as the quotient of two fibbinary numbers (A003714).

The programs for A396006, there is no canonical definition to state claims against.
-/

/-! ## A396006.P1184276176401062213

`A396008(n+1)/A396007(n+1)`
-/

namespace A396006.P1184276176401062213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396008 (n + 1) : ℚ) / (A396007 (n + 1) : ℚ)

end

end A396006.P1184276176401062213

/-! ## A396006.P9424706742057683680

`∩[A091072(n+1), A335469(n+1)]`
-/

namespace A396006.P9424706742057683680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396006.P9424706742057683680

/-! ## A396006.P13925495807506683488

`∩[A091072(n+1), A357875(n+1)]`
-/

namespace A396006.P13925495807506683488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357875 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396006.P13925495807506683488

/-!
# A396007: Smallest fibbinary multiplier k such that k*A396006(n) is fibbinary.

The programs for A396007, there is no canonical definition to state claims against.
-/

/-! ## A396007.P11864830708211043310

`A396008(n+1)/A396006(n+1)`
-/

namespace A396007.P11864830708211043310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A396008 (n + 1) : ℚ) / (A396006 (n + 1) : ℚ)

end

end A396007.P11864830708211043310

/-! ## A396007.P9323825558505478857

`A059592(A014003(n))`
-/

namespace A396007.P9323825558505478857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059592 (A014003 n).toNat

end

end A396007.P9323825558505478857

/-! ## A396007.P4300082882441318086

`A379288(A393249(n))`
-/

namespace A396007.P4300082882441318086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379288 (A393249 n).toNat

end

end A396007.P4300082882441318086

/-! ## A396007.P16868115383457007112

`A348735(A035317(n²))`
-/

namespace A396007.P16868115383457007112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348735 (A035317 (n ^ 2)).toNat

end

end A396007.P16868115383457007112

/-! ## A396007.P3574050409187006881

`A067815(A107785(n+1))`
-/

namespace A396007.P3574050409187006881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (A107785 (n + 1)).toNat

end

end A396007.P3574050409187006881

/-!
# A396008: a(n) = A396006(n)*A396007(n).

The programs for A396008, there is no canonical definition to state claims against.
-/

/-! ## A396008.P7858865610874408938

`A396006(n+1)*A396007(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A396008.P7858865610874408938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396006 (n + 1) * A396007 (n + 1)

end

end A396008.P7858865610874408938

/-!
# A396016: Number of nonisomorphic serial binary relations on an n-set having the diamond property.

The programs for A396016, there is no canonical definition to state claims against.
-/

/-! ## A396016.P3070641538766511569

`A187180(A300474(n)+A000217(n))`
-/

namespace A396016.P3070641538766511569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187180 (A300474 n + A000217 n).toNat

end

end A396016.P3070641538766511569

/-!
# A396031: Growth series of higher Heisenberg group H_2, with standard generators.

The programs for A396031, there is no canonical definition to state claims against.
-/

/-! ## A396031.P3628796593610828225

`and(A024495(2*n+3), A345201(A388411(n)))`
-/

namespace A396031.P3628796593610828225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024495 (2 * n + 3)) (A345201 (A388411 n).toNat)

end

end A396031.P3628796593610828225

/-!
# A396041: Primes q such that each prime factor of (q^2+1)/2 is congruent to 1 modulo 8.

The programs for A396041, there is no canonical definition to state claims against.
-/

/-! ## A396041.P18209661730920870942

`A107808(A104801(n+2))`
-/

namespace A396041.P18209661730920870942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107808 (A104801 (n + 2)).toNat

end

end A396041.P18209661730920870942

/-!
# A396043: a(n) is the least k >= 1 such that A396002(n) is the least prime factor of 2^k + 1.

The programs for A396043, there is no canonical definition to state claims against.
-/

/-! ## A396043.P2242247791321352584

`A007735(A396002(n+1))`
-/

namespace A396043.P2242247791321352584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A396002 (n + 1)).toNat

end

end A396043.P2242247791321352584

/-!
# A396044: a(n) is the least k >= 1 such that A393641(n) is the greatest prime factor of 2^k + 1.

The programs for A396044, there is no canonical definition to state claims against.
-/

/-! ## A396044.P2454301277121835081

`A119513(A393641(n+1))`
-/

namespace A396044.P2454301277121835081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119513 (A393641 (n + 1)).toNat

end

end A396044.P2454301277121835081

/-!
# A396045: a(n) = T(n, 2*n), where T(n, m) is the forward-difference table of the Catalan numbers.

The programs for A396045, the canonical program `A396045.P14652935241505845905` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396045 has offset 0).

The definition of A396045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396045.P14652935241505845905

`∑{#}[n, (-1)^(n-#)*C(n, #)*A000108(2*n+#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396045

/-- `∑{#}[n, (-1)^(n-#)*C(n, #)*A000108(2*n+#)]` -/
def P14652935241505845905.Spec : Prop :=
  ∀ n, P14652935241505845905.a n = (A396045 n : ℚ)

end A396045

/-! ## A396045.P11148833053691102959

`A059346(A062728(n))`
-/

namespace A396045.P11148833053691102959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059346 (A062728 n).toNat

end

end A396045.P11148833053691102959

namespace A396045

/-- `A059346(A062728(n))` -/
def P11148833053691102959.Spec : Prop :=
  ∀ n, P11148833053691102959.a n = A396045 n

end A396045

/-! ## A396045.P14416636736429028851

`A398996(A139274(n))`
-/

namespace A396045.P14416636736429028851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398996 (A139274 n).toNat

end

end A396045.P14416636736429028851

namespace A396045

/-- `A398996(A139274(n))` -/
def P14416636736429028851.Spec : Prop :=
  ∀ n, P14416636736429028851.a n = A396045 n

end A396045

/-! ## A396045.P13897612317048983227

`A399330(A139276(n))`
-/

namespace A396045.P13897612317048983227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399330 (A139276 n).toNat

end

end A396045.P13897612317048983227

namespace A396045

/-- `A399330(A139276(n))` -/
def P13897612317048983227.Spec : Prop :=
  ∀ n, P13897612317048983227.a n = A396045 n

end A396045

/-! ## A396045.P1220578594217683101

`A399000(A093485(n)-A002061(n))`
-/

namespace A396045.P1220578594217683101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A399000 (A093485 n - A002061 n).toNat

end

end A396045.P1220578594217683101

namespace A396045

/-- `A399000(A093485(n)-A002061(n))` -/
def P1220578594217683101.Spec : Prop :=
  ∀ n, P1220578594217683101.a n = A396045 n

end A396045

/-!
# A396046: Numbers not of the form Sum_{k=1..m} floor(m/k^3).

The programs for A396046, the canonical program `A396046.P971276664437156168` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396046 has offset 1).

The definition of A396046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2002 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396046.P971276664437156168

`comp[A013937(n)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A396046

/-- `comp[A013937(n)]` -/
def P971276664437156168.Spec : Prop :=
  ∀ n, (P971276664437156168.a n : ℤ) = A396046 (n + 1)

theorem P971276664437156168.correct : P971276664437156168.Spec := by
  intro n
  simp only [A396046, Nat.add_sub_cancel]

end A396046

/-! ## A396046.P1265525625248182433

`A061479(A061479(n))+A046099(n+1)`
-/

namespace A396046.P1265525625248182433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061479 (A061479 n).toNat + A046099 (n + 1)

end

end A396046.P1265525625248182433

namespace A396046

/-- `A061479(A061479(n))+A046099(n+1)` -/
def P1265525625248182433.Spec : Prop :=
  ∀ n, P1265525625248182433.a n = A396046 (n + 1)

end A396046

/-! ## A396046.P14809335136291325351

`A257992(A000244(n))+A046099(n+1)`
-/

namespace A396046.P14809335136291325351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A000244 n).toNat + A046099 (n + 1)

end

end A396046.P14809335136291325351

namespace A396046

/-- `A257992(A000244(n))+A046099(n+1)` -/
def P14809335136291325351.Spec : Prop :=
  ∀ n, P14809335136291325351.a n = A396046 (n + 1)

end A396046

/-! ## A396046.P17774060614340967151

`A344653(n+1)+A235875(A000079(n))`
-/

namespace A396046.P17774060614340967151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344653 (n + 1) + A235875 (A000079 n).toNat

end

end A396046.P17774060614340967151

namespace A396046

/-- `A344653(n+1)+A235875(A000079(n))` -/
def P17774060614340967151.Spec : Prop :=
  ∀ n, P17774060614340967151.a n = A396046 (n + 1)

end A396046

/-! ## A396046.P12776064233527729918

`A046099(n+1)+A355444(A179327(n))+n`
-/

namespace A396046.P12776064233527729918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) + (A355444 (A179327 n).toNat + (n : ℤ))

end

end A396046.P12776064233527729918

namespace A396046

/-- `A046099(n+1)+A355444(A179327(n))+n` -/
def P12776064233527729918.Spec : Prop :=
  ∀ n, P12776064233527729918.a n = A396046 (n + 1)

end A396046

/-!
# A396048: Number of equivalence classes of full-rank n-element subsets of complement pairs in the n-dimensional Boolean hypercube under coordinate permutation.

The programs for A396048, there is no canonical definition to state claims against.
-/

/-! ## A396048.P4611204283619938845

`A370803(A307545(n))`
-/

namespace A396048.P4611204283619938845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370803 (A307545 n).toNat

end

end A396048.P4611204283619938845

/-! ## A396048.P3721126295645404831

`A370803(A019299(n)-1)`
-/

namespace A396048.P3721126295645404831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370803 (A019299 n - 1).toNat

end

end A396048.P3721126295645404831

/-!
# A396049: a(n) is the least number k that has exactly n divisors d <= sqrt(k) such that omega(d + k/d) = omega(k), where omega = A001221.

The programs for A396049, there is no canonical definition to state claims against.
-/

/-! ## A396049.P13619708905972593484

`∏[A228726((n+1)²)]`
-/

namespace A396049.P13619708905972593484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228726 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A396049.P13619708905972593484

/-!
# A396053: Number of relations R on an n-element set such that the transitive closure of R has exactly four elements more than R.

The programs for A396053, there is no canonical definition to state claims against.
-/

/-! ## A396053.P9950650748185604912

`A180191(A299433(n))*A284425(n)`
-/

namespace A396053.P9950650748185604912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180191 (A299433 n).toNat * A284425 n

end

end A396053.P9950650748185604912

/-!
# A396054: Number of relations R on an n-element set such that the transitive closure of R has exactly five elements more than R.

The programs for A396054, there is no canonical definition to state claims against.
-/

/-! ## A396054.P9983397322973434854

`5*A360242(A349088(n))`
-/

namespace A396054.P9983397322973434854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A360242 (A349088 n).toNat

end

end A396054.P9983397322973434854

/-!
# A396055: Number of relations R on an n-element set such that the transitive closure of R has exactly six elements more than R.

The programs for A396055, there is no canonical definition to state claims against.
-/

/-! ## A396055.P1916225956851102762

`A299805(a(n-1))*n!` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2`
-/

namespace A396055.P1916225956851102762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 2] fun n a =>
  A299805 (a (n - 1)).toNat * (Nat.factorial n : ℤ)

end

end A396055.P1916225956851102762

/-!
# A396056: Numbers not of the form Sum_{k=1..m} floor(m/k^4).

The programs for A396056, there is no canonical definition to state claims against.
-/

/-! ## A396056.P14413772234353182935

`(A046101(n+1)+n)/A006257(2^n)`
-/

namespace A396056.P14413772234353182935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046101 (n + 1) + (n : ℤ) : ℚ) / (A006257 (2 ^ n) : ℚ)

end

end A396056.P14413772234353182935

/-! ## A396056.P13937867026090581958

`A046101(n+1)+A001222(A000079(n))`
-/

namespace A396056.P13937867026090581958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1) + A001222 (A000079 n).toNat

end

end A396056.P13937867026090581958

/-! ## A396056.P396059015636210484

`A066301(A000079(n+1))+lt[1, A008835(n+1)]+1`
-/

namespace A396056.P396059015636210484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008835 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A000079 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ)

end

end A396056.P396059015636210484

/-! ## A396056.P69900405917545687

`A066301(A000079(n+1))+lt[A053165(n+1), n]+1`
-/

namespace A396056.P69900405917545687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (A000079 (n + 1)).toNat + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A396056.P69900405917545687

/-!
# A396059: a(n) is the action of "Rule 90" elementary cellular automaton on the binary representation of n if the cells may only expand into the significant bit.

The programs for A396059, the canonical program `A396059.P9001877094237801459` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396059 has offset 0).

The definition of A396059 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396059.P9001877094237801459

`xor(2*n, floor(n/2))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396059

/-- `xor(2*n, floor(n/2))` -/
def P9001877094237801459.Spec : Prop :=
  ∀ n, P9001877094237801459.a n = A396059 n

theorem P9001877094237801459.correct : P9001877094237801459.Spec := by
  intro n
  simp only [A396059]

end A396059

/-! ## A396059.P5968586975685263015

`ceil(xor(n-1, 4*n)/2)`
-/

namespace A396059.P5968586975685263015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.xor ((n : ℤ) - 1) (4 * n : ℤ) : ℚ) / 2⌉

end

end A396059.P5968586975685263015

namespace A396059

/-- `ceil(xor(n-1, 4*n)/2)` -/
def P5968586975685263015.Spec : Prop :=
  ∀ n, P5968586975685263015.a n = A396059 n

end A396059

/-! ## A396059.P12878042212639317138

`floor(abs(xor(n, (n+1)²-(1-n)²))/2)`
-/

namespace A396059.P12878042212639317138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(|Int.xor (n : ℤ) (((n + 1) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2)| : ℚ) / 2⌋

end

end A396059.P12878042212639317138

namespace A396059

/-- `floor(abs(xor(n, (n+1)²-(1-n)²))/2)` -/
def P12878042212639317138.Spec : Prop :=
  ∀ n, P12878042212639317138.a n = A396059 n

end A396059

/-! ## A396059.P5996431665914421425

`floor(A048725(n)/2)`
-/

namespace A396059.P5996431665914421425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A048725 n : ℚ) / 2⌋

end

end A396059.P5996431665914421425

namespace A396059

/-- `floor(A048725(n)/2)` -/
def P5996431665914421425.Spec : Prop :=
  ∀ n, P5996431665914421425.a n = A396059 n

end A396059

/-! ## A396059.P4662928850302526201

`A003188(xor(2*n, n))`
-/

namespace A396059.P4662928850302526201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Nat.xor (2 * n) n)

end

end A396059.P4662928850302526201

namespace A396059

/-- `A003188(xor(2*n, n))` -/
def P4662928850302526201.Spec : Prop :=
  ∀ n, P4662928850302526201.a n = A396059 n

end A396059

/-! ## A396059.P11312171648366049346

`A003188(A048724(n))`
-/

namespace A396059.P11312171648366049346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A048724 n).toNat

end

end A396059.P11312171648366049346

namespace A396059

/-- `A003188(A048724(n))` -/
def P11312171648366049346.Spec : Prop :=
  ∀ n, P11312171648366049346.a n = A396059 n

end A396059

/-! ## A396059.P4501052608566963288

`A003188(A003188(2*n))`
-/

namespace A396059.P4501052608566963288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (2 * n)).toNat

end

end A396059.P4501052608566963288

namespace A396059

/-- `A003188(A003188(2*n))` -/
def P4501052608566963288.Spec : Prop :=
  ∀ n, P4501052608566963288.a n = A396059 n

end A396059

/-! ## A396059.P15284260577471741069

`A178891(n)-A047218(n+1)`
-/

namespace A396059.P15284260577471741069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 n - A047218 (n + 1)

end

end A396059.P15284260577471741069

namespace A396059

/-- `A178891(n)-A047218(n+1)` -/
def P15284260577471741069.Spec : Prop :=
  ∀ n, P15284260577471741069.a n = A396059 n

end A396059

/-! ## A396059.P7319791685813432855

`A064706(2*n)`
-/

namespace A396059.P7319791685813432855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (2 * n)

end

end A396059.P7319791685813432855

namespace A396059

/-- `A064706(2*n)` -/
def P7319791685813432855.Spec : Prop :=
  ∀ n, P7319791685813432855.a n = A396059 n

end A396059

/-! ## A396059.P8258469555083084094

`A302846(A163355(2*n))`
-/

namespace A396059.P8258469555083084094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302846 (A163355 (2 * n)).toNat

end

end A396059.P8258469555083084094

namespace A396059

/-- `A302846(A163355(2*n))` -/
def P8258469555083084094.Spec : Prop :=
  ∀ n, P8258469555083084094.a n = A396059 n

end A396059

/-! ## A396059.P16248794378944037630

`A234612(2*A193231(n))`
-/

namespace A396059.P16248794378944037630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (2 * A193231 n).toNat

end

end A396059.P16248794378944037630

namespace A396059

/-- `A234612(2*A193231(n))` -/
def P16248794378944037630.Spec : Prop :=
  ∀ n, P16248794378944037630.a n = A396059 n

end A396059

/-! ## A396059.P11072223994236964018

`A234612(A234613(2*n))`
-/

namespace A396059.P11072223994236964018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234612 (A234613 (2 * n)).toNat

end

end A396059.P11072223994236964018

namespace A396059

/-- `A234612(A234613(2*n))` -/
def P11072223994236964018.Spec : Prop :=
  ∀ n, P11072223994236964018.a n = A396059 n

end A396059

/-! ## A396059.P10400041946871810372

`A233280(A180201(2*n))`
-/

namespace A396059.P10400041946871810372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233280 (A180201 (2 * n)).toNat

end

end A396059.P10400041946871810372

namespace A396059

/-- `A233280(A180201(2*n))` -/
def P10400041946871810372.Spec : Prop :=
  ∀ n, P10400041946871810372.a n = A396059 n

end A396059

/-! ## A396059.P1777618390924202067

`A105081(A105081(2*n+1))-1`
-/

namespace A396059.P1777618390924202067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105081 (A105081 (2 * n + 1)).toNat - 1

end

end A396059.P1777618390924202067

namespace A396059

/-- `A105081(A105081(2*n+1))-1` -/
def P1777618390924202067.Spec : Prop :=
  ∀ n, P1777618390924202067.a n = A396059 n

end A396059

/-! ## A396059.P5638483324745169372

`A193231(A006068(2*A193231(n)))`
-/

namespace A396059.P5638483324745169372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A006068 (2 * A193231 n).toNat).toNat

end

end A396059.P5638483324745169372

namespace A396059

/-- `A193231(A006068(2*A193231(n)))` -/
def P5638483324745169372.Spec : Prop :=
  ∀ n, P5638483324745169372.a n = A396059 n

end A396059

/-! ## A396059.P12074753317087127775

`A004526(xor(n, 4*n+1))`
-/

namespace A396059.P12074753317087127775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Nat.xor n (4 * n + 1))

end

end A396059.P12074753317087127775

namespace A396059

/-- `A004526(xor(n, 4*n+1))` -/
def P12074753317087127775.Spec : Prop :=
  ∀ n, P12074753317087127775.a n = A396059 n

end A396059

/-! ## A396059.P6288187635307512279

`A004526(A048725(n))`
-/

namespace A396059.P6288187635307512279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A048725 n).toNat

end

end A396059.P6288187635307512279

namespace A396059

/-- `A004526(A048725(n))` -/
def P6288187635307512279.Spec : Prop :=
  ∀ n, P6288187635307512279.a n = A396059 n

end A396059

/-! ## A396059.P13753773463679297069

`A269856(A252755(A269856(A252755(2*n))))`
-/

namespace A396059.P13753773463679297069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269856 (A252755 (A269856 (A252755 (2 * n)).toNat).toNat).toNat

end

end A396059.P13753773463679297069

namespace A396059

/-- `A269856(A252755(A269856(A252755(2*n))))` -/
def P13753773463679297069.Spec : Prop :=
  ∀ n, P13753773463679297069.a n = A396059 n

end A396059

/-!
# A396060: Numbers m such that m^2 + 1 and m^2 - m + 1 are both prime numbers.

The programs for A396060, there is no canonical definition to state claims against.
-/

/-! ## A396060.P15262480841904178607

`∩[A005574(n+1), A096174(n+1)]`
-/

namespace A396060.P15262480841904178607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396060.P15262480841904178607

/-! ## A396060.P17010892173472049814

`filter[A096174(n+1), A295405(#)]`
-/

namespace A396060.P17010892173472049814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A396060.P17010892173472049814

/-! ## A396060.P7371955642249751674

`filter[A055494(n+1), A295405(#)]`
-/

namespace A396060.P7371955642249751674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295405 (f1 j).toNat = 1) n)

end

end A396060.P7371955642249751674

/-! ## A396060.P5161270832240095285

`∩[A005574(n+1), A055494(n+1)]`
-/

namespace A396060.P5161270832240095285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396060.P5161270832240095285

/-! ## A396060.P7524208120772085655

`∩[A096174(n+1), A181436(n+1)]`
-/

namespace A396060.P7524208120772085655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396060.P7524208120772085655

/-! ## A396060.P9399520242970786365

`∩[A071557(n+1), A096174(n+1)]`
-/

namespace A396060.P9399520242970786365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396060.P9399520242970786365

/-!
# A396061: Numbers k such that k < reverse(k) and reverse(k^2) = reverse(k)^2.

The programs for A396061, there is no canonical definition to state claims against.
-/

/-! ## A396061.P774242146581312224

`∩[A061909(n+1), A071589(n+1)]`
-/

namespace A396061.P774242146581312224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396061.P774242146581312224

/-! ## A396061.P14094934781226141214

`∩[A071589(n+1), A085305(n+1)]`
-/

namespace A396061.P14094934781226141214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396061.P14094934781226141214

/-! ## A396061.P9143332300773227999

`∩[A071589(n+1), A140212(n+1)]`
-/

namespace A396061.P9143332300773227999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396061.P9143332300773227999

/-! ## A396061.P9131287633244471147

`∩[A061909(n+1), A106323(n+1)]`
-/

namespace A396061.P9131287633244471147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061909 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396061.P9131287633244471147

/-! ## A396061.P9141675685720660578

`∩[A062996(n+1), A106323(n+1)]`
-/

namespace A396061.P9141675685720660578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A396061.P9141675685720660578

/-!
# A396063: E.g.f. A(x) satisfies A'(x) = 1/(1 - A(x)*A'(x))^2, with A(0)=0.

The programs for A396063, there is no canonical definition to state claims against.
-/

/-! ## A396063.P3604981666088258162

`A064150(A000670(n)*A213683(n+3))`
-/

namespace A396063.P3604981666088258162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064150 (A000670 n * A213683 (n + 3)).toNat

end

end A396063.P3604981666088258162

/-!
# A396065: The total number of at-most-4-furcating labeled histories that can be constructed for n labeled leaves.

The programs for A396065, the canonical program `A396065.P15859994651627376683` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396065 has offset 1).

The definition of A396065 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396065.P15859994651627376683

`C(n+1, 2)*a(n-1)+C(n+1, 3)*a(n-2)+C(n+1, 4)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396065

/-- `C(n+1, 2)*a(n-1)+C(n+1, 3)*a(n-2)+C(n+1, 4)*a(n-3)` -/
def P15859994651627376683.Spec : Prop :=
  ∀ n, (P15859994651627376683.a n : ℤ) = A396065 (n + 1)

theorem P15859994651627376683.correct : P15859994651627376683.Spec := by
  intro n
  simp only [A396065, Nat.add_sub_cancel]

end A396065

/-!
# A396067: Product of odd divisors of n that are <= sqrt(n).

The programs for A396067, there is no canonical definition to state claims against.
-/

/-! ## A396067.P7851803802896797316

`gcd(A072499(n+1), A237628(n+3))`
-/

namespace A396067.P7851803802896797316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072499 (n + 1)) (A237628 (n + 3))

end

end A396067.P7851803802896797316

/-! ## A396067.P1402114271313357249

`gcd(A072504(n+1), A140864(n+1))`
-/

namespace A396067.P1402114271313357249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072504 (n + 1)) (A140864 (n + 1))

end

end A396067.P1402114271313357249

/-! ## A396067.P11451631318712433560

`gcd(A336454(n-A002487(n)), A396068(n+1))`
-/

namespace A396067.P11451631318712433560
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336454 ((n : ℤ) - A002487 n).toNat) (A396068 (n + 1))

end

end A396067.P11451631318712433560

/-! ## A396067.P421451418857777030

`gcd(A336454(n), A396068(n+1))`
-/

namespace A396067.P421451418857777030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A336454 n) (A396068 (n + 1))

end

end A396067.P421451418857777030

/-! ## A396067.P17744760736565642476

`gcd(A072504(n+1), A078631(n))`
-/

namespace A396067.P17744760736565642476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072504 (n + 1)) (A078631 n)

end

end A396067.P17744760736565642476

/-!
# A396068: Product of squarefree divisors of n that are <= sqrt(n).

The programs for A396068, there is no canonical definition to state claims against.
-/

/-! ## A396068.P17107394212199565548

`gcd(A072499(n+1), A399529(n+1))`
-/

namespace A396068.P17107394212199565548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072499 (n + 1)) (A399529 (n + 1))

end

end A396068.P17107394212199565548

/-!
# A396072: Numbers not of the form Sum_{k=1..m} floor(m/k^2).

The programs for A396072, the canonical program `A396072.P11544927877256094205` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396072 has offset 1).

The definition of A396072 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396072.P11544927877256094205

`comp[∑[A046951(n+1)]-1]+1`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A396072

/-- `comp[∑[A046951(n+1)]-1]+1` -/
def P11544927877256094205.Spec : Prop :=
  ∀ n, (P11544927877256094205.a n : ℤ) = A396072 (n + 1)

theorem P11544927877256094205.correct : P11544927877256094205.Spec := by
  intro n
  simp only [A396072, Nat.add_sub_cancel]

end A396072

/-! ## A396072.P3362150164605296572

`lt[1, A381522(n+1)]`
-/

namespace A396072.P3362150164605296572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396072.P3362150164605296572

namespace A396072

/-- `lt[1, A381522(n+1)]` -/
def P3362150164605296572.Spec : Prop :=
  ∀ n, (P3362150164605296572.a n : ℤ) = A396072 (n + 1)

end A396072

/-! ## A396072.P16351451316386642822

`lt[1, A326128(A395001(n+1))]`
-/

namespace A396072.P16351451316386642822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (A395001 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396072.P16351451316386642822

namespace A396072

/-- `lt[1, A326128(A395001(n+1))]` -/
def P16351451316386642822.Spec : Prop :=
  ∀ n, (P16351451316386642822.a n : ℤ) = A396072 (n + 1)

end A396072

/-! ## A396072.P6903000302124161027

`lt[A396405(A014462(2*(n+2))), A396405(n+1)]`
-/

namespace A396072.P6903000302124161027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396405 (A014462 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396072.P6903000302124161027

namespace A396072

/-- `lt[A396405(A014462(2*(n+2))), A396405(n+1)]` -/
def P6903000302124161027.Spec : Prop :=
  ∀ n, (P6903000302124161027.a n : ℤ) = A396072 (n + 1)

end A396072

/-! ## A396072.P7747719423761116486

`lt[A322791(2*(n+2)), A351308(A322791(n+1))]`
-/

namespace A396072.P7747719423761116486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322791 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351308 (A322791 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A396072.P7747719423761116486

namespace A396072

/-- `lt[A322791(2*(n+2)), A351308(A322791(n+1))]` -/
def P7747719423761116486.Spec : Prop :=
  ∀ n, (P7747719423761116486.a n : ℤ) = A396072 (n + 1)

end A396072

/-!
# A396073: Numbers not of the form Sum_{k=1..m} floor(m/k).

The programs for A396073, the canonical program `A396073.P3494542612140640641` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396073 has offset 1).

The definition of A396073 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A396073.P3494542612140640641

`comp[∑[∑{d}[n, ceil(1/#)]]]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A396073

/-- `comp[∑[∑{d}[n, ceil(1/#)]]]` -/
def P3494542612140640641.Spec : Prop :=
  ∀ n, (P3494542612140640641.a n : ℤ) = A396073 (n + 1)

theorem P3494542612140640641.correct : P3494542612140640641.Spec := by
  intro n
  simp only [A396073, Nat.add_sub_cancel]

end A396073

/-! ## A396073.P12741262782600093183

`comp[∑[∏{e}[n, #+1]]-1]`
-/

namespace A396073.P12741262782600093183
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P12741262782600093183

namespace A396073

/-- `comp[∑[∏{e}[n, #+1]]-1]` -/
def P12741262782600093183.Spec : Prop :=
  ∀ n, (P12741262782600093183.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P12469535462514035654

`comp[∑[∏{e}[n, #+1]%(n+1)]]`
-/

namespace A396073.P12469535462514035654
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)) % (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A396073.P12469535462514035654

namespace A396073

/-- `comp[∑[∏{e}[n, #+1]%(n+1)]]` -/
def P12469535462514035654.Spec : Prop :=
  ∀ n, (P12469535462514035654.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P13694645193188718549

`comp[A006218(n)]`
-/

namespace A396073.P13694645193188718549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P13694645193188718549

namespace A396073

/-- `comp[A006218(n)]` -/
def P13694645193188718549.Spec : Prop :=
  ∀ n, (P13694645193188718549.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P2117757759137947160

`comp[A077597(n)]+1`
-/

namespace A396073.P2117757759137947160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077597 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396073.P2117757759137947160

namespace A396073

/-- `comp[A077597(n)]+1` -/
def P2117757759137947160.Spec : Prop :=
  ∀ n, (P2117757759137947160.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P3069017617032183086

`comp[A362059(n+1)]`
-/

namespace A396073.P3069017617032183086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P3069017617032183086

namespace A396073

/-- `comp[A362059(n+1)]` -/
def P3069017617032183086.Spec : Prop :=
  ∀ n, (P3069017617032183086.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P15412457833185206575

`comp[A054519(n)-1]`
-/

namespace A396073.P15412457833185206575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P15412457833185206575

namespace A396073

/-- `comp[A054519(n)-1]` -/
def P15412457833185206575.Spec : Prop :=
  ∀ n, (P15412457833185206575.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P9872544135963057030

`comp[∑[A183063(n+1)]]`
-/

namespace A396073.P9872544135963057030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P9872544135963057030

namespace A396073

/-- `comp[∑[A183063(n+1)]]` -/
def P9872544135963057030.Spec : Prop :=
  ∀ n, (P9872544135963057030.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P6954837202041953496

`comp[∑[A000005(n+1)]-1]+1`
-/

namespace A396073.P6954837202041953496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A396073.P6954837202041953496

namespace A396073

/-- `comp[∑[A000005(n+1)]-1]+1` -/
def P6954837202041953496.Spec : Prop :=
  ∀ n, (P6954837202041953496.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P1894284803204813586

`comp[∑[A000005(A028310(n))]-1]`
-/

namespace A396073.P1894284803204813586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P1894284803204813586

namespace A396073

/-- `comp[∑[A000005(A028310(n))]-1]` -/
def P1894284803204813586.Spec : Prop :=
  ∀ n, (P1894284803204813586.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P11470875554593485903

`lt[1, A275055(n+1)]`
-/

namespace A396073.P11470875554593485903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396073.P11470875554593485903

namespace A396073

/-- `lt[1, A275055(n+1)]` -/
def P11470875554593485903.Spec : Prop :=
  ∀ n, (P11470875554593485903.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P10277917790389504616

`lt[1, A290478(n+1)]`
-/

namespace A396073.P10277917790389504616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396073.P10277917790389504616

namespace A396073

/-- `lt[1, A290478(n+1)]` -/
def P10277917790389504616.Spec : Prop :=
  ∀ n, (P10277917790389504616.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P15011748602597056510

`lt[A233772(n+1), 0]`
-/

namespace A396073.P15011748602597056510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233772 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A396073.P15011748602597056510

namespace A396073

/-- `lt[A233772(n+1), 0]` -/
def P15011748602597056510.Spec : Prop :=
  ∀ n, (P15011748602597056510.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P7196298915755707993

`lt[1, A027750(n+1)]`
-/

namespace A396073.P7196298915755707993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396073.P7196298915755707993

namespace A396073

/-- `lt[1, A027750(n+1)]` -/
def P7196298915755707993.Spec : Prop :=
  ∀ n, (P7196298915755707993.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P13724723457970256671

`eq[A153881(A027750(n+1)), A153881(n+2)]`
-/

namespace A396073.P13724723457970256671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (A027750 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A396073.P13724723457970256671

namespace A396073

/-- `eq[A153881(A027750(n+1)), A153881(n+2)]` -/
def P13724723457970256671.Spec : Prop :=
  ∀ n, (P13724723457970256671.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P8946317642715268738

`comp[∑{#}[n-1, floor(n/(#+1))]]`
-/

namespace A396073.P8946317642715268738
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1).toNat, ⌊(n : ℚ) / (k + 1 : ℚ)⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P8946317642715268738

namespace A396073

/-- `comp[∑{#}[n-1, floor(n/(#+1))]]` -/
def P8946317642715268738.Spec : Prop :=
  ∀ n, (P8946317642715268738.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P16548574906394390764

`lt[1, A210959(n+1)]`
-/

namespace A396073.P16548574906394390764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210959 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396073.P16548574906394390764

namespace A396073

/-- `lt[1, A210959(n+1)]` -/
def P16548574906394390764.Spec : Prop :=
  ∀ n, (P16548574906394390764.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P15182735545721748663

`lt[1, A240698(n+1)]`
-/

namespace A396073.P15182735545721748663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240698 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A396073.P15182735545721748663

namespace A396073

/-- `lt[1, A240698(n+1)]` -/
def P15182735545721748663.Spec : Prop :=
  ∀ n, (P15182735545721748663.a n : ℤ) = A396073 (n + 1)

end A396073

/-! ## A396073.P7441043386991756676

`comp[A113215(n)]`
-/

namespace A396073.P7441043386991756676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A396073.P7441043386991756676

namespace A396073

/-- `comp[A113215(n)]` -/
def P7441043386991756676.Spec : Prop :=
  ∀ n, (P7441043386991756676.a n : ℤ) = A396073 (n + 1)

end A396073

/-!
# A396079: Product of the least factors in all proper factorizations of n into factors > 1, up to permutation; a(n) = 1 for noncomposite n.

The programs for A396079, there is no canonical definition to state claims against.
-/

/-! ## A396079.P1135675426942245537

`A395579(n+1)/(n+1)`
-/

namespace A396079.P1135675426942245537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A395579 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A396079.P1135675426942245537

/-! ## A396079.P2517302703635618051

`A327979(A048788(n+1))`
-/

namespace A396079.P2517302703635618051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327979 (A048788 (n + 1)).toNat

end

end A396079.P2517302703635618051

/-! ## A396079.P10203644635488567965

`gcd(n+1, ∏{p}[n+1, (n+1)/#])%A263873(4^∑{e}[n+1, #])`
-/

namespace A396079.P10203644635488567965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))) : ℤ) (A263873 (4 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)))

end

end A396079.P10203644635488567965

/-! ## A396079.P1596308747249836349

`gcd(n+1, A120383(A280543(n)))`
-/

namespace A396079.P1596308747249836349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A120383 (A280543 n).toNat)

end

end A396079.P1596308747249836349

/-! ## A396079.P5782318349485889747

`gcd(∑[A390758(3*n+4)], A327486(n+1))`
-/

namespace A396079.P5782318349485889747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390758 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A327486 (n + 1))

end

end A396079.P5782318349485889747

/-!
# A396082: Primes p such that A381466(2p) > 2p.

The programs for A396082, there is no canonical definition to state claims against.
-/

/-! ## A396082.P2764127656874711707

`filter[A216509(n+2), A104120(#)]`
-/

namespace A396082.P2764127656874711707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216509 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104120 (f1 j).toNat = 1) n)

end

end A396082.P2764127656874711707

/-! ## A396082.P9701000157271675421

`A325390(A091206(n+1))`
-/

namespace A396082.P9701000157271675421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325390 (A091206 (n + 1)).toNat

end

end A396082.P9701000157271675421

/-! ## A396082.P5606017957062626409

`A094548(A091206(n+1))`
-/

namespace A396082.P5606017957062626409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094548 (A091206 (n + 1)).toNat

end

end A396082.P5606017957062626409

/-! ## A396082.P3236786893269166259

`A307701(A071979(n+1))`
-/

namespace A396082.P3236786893269166259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307701 (A071979 (n + 1)).toNat

end

end A396082.P3236786893269166259

/-! ## A396082.P2461466426845667280

`A019565(2^A249053(n+1))`
-/

namespace A396082.P2461466426845667280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A249053 (n + 1) : ℤ))).toNat

end

end A396082.P2461466426845667280

/-!
# A396086: Number of dyadic intervals of length 2^(-n) that intersect the classical middle-third Cantor set.

The programs for A396086, there is no canonical definition to state claims against.
-/

/-! ## A396086.P4758725459866343606

`A162002(A015897(n+1))`
-/

namespace A396086.P4758725459866343606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162002 (A015897 (n + 1)).toNat

end

end A396086.P4758725459866343606

/-! ## A396086.P9452247690969900780

`A139716(A071255(n+1))`
-/

namespace A396086.P9452247690969900780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139716 (A071255 (n + 1)).toNat

end

end A396086.P9452247690969900780

/-! ## A396086.P13421415861045256189

`A335523(A130137(n+1))`
-/

namespace A396086.P13421415861045256189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335523 (A130137 (n + 1)).toNat

end

end A396086.P13421415861045256189

/-! ## A396086.P5558189023542859071

`A167482(A128588(n+1)+1)`
-/

namespace A396086.P5558189023542859071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167482 (A128588 (n + 1) + 1).toNat

end

end A396086.P5558189023542859071

/-! ## A396086.P17027102977566369043

`A230775(A000285(2*n))-1`
-/

namespace A396086.P17027102977566369043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A000285 (2 * n)).toNat - 1

end

end A396086.P17027102977566369043

/-!
# A396088: Number of labeled histories for rooted at-most-trifurcating trees with n leaves, if simultaneous branching events are allowed.

The programs for A396088, there is no canonical definition to state claims against.
-/

/-! ## A396088.P2461952783099744836

`A210062(n²*a(n-1))` with `a(0)=1`
-/

namespace A396088.P2461952783099744836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A210062 ((n ^ 2 : ℤ) * a (n - 1)).toNat

end

end A396088.P2461952783099744836

/-!
# A396090: Number of integer partitions of 2*n with reverse-alternating sum 6.

The programs for A396090, there is no canonical definition to state claims against.
-/

/-! ## A396090.P17178155163020416616

`∑{#}[n, A395257(#)*A000041(n-#)]`
-/

namespace A396090.P17178155163020416616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A395257 k * A000041 (n - k)

end

end A396090.P17178155163020416616

/-! ## A396090.P14041114656936687481

`A101788(A228646(n))`
-/

namespace A396090.P14041114656936687481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101788 (A228646 n).toNat

end

end A396090.P14041114656936687481

/-! ## A396090.P2114480624573277442

`A093700(A286496(n))`
-/

namespace A396090.P2114480624573277442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093700 (A286496 n).toNat

end

end A396090.P2114480624573277442

/-! ## A396090.P10344666230595221810

`A121902(A294807(n))`
-/

namespace A396090.P10344666230595221810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (A294807 n).toNat

end

end A396090.P10344666230595221810

/-! ## A396090.P17999048064125234771

`A123576(A261866(n+1))`
-/

namespace A396090.P17999048064125234771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A261866 (n + 1)).toNat

end

end A396090.P17999048064125234771

/-!
# A396091: Number of integer partitions of 2*n with reverse-alternating sum 8.

The programs for A396091, there is no canonical definition to state claims against.
-/

/-! ## A396091.P8193843969995515976

`∑{#}[n, A396075(#)*A000041(n-#)]`
-/

namespace A396091.P8193843969995515976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A396075 k * A000041 (n - k)

end

end A396091.P8193843969995515976

/-! ## A396091.P2346192028631237567

`A123576(A261866(n))`
-/

namespace A396091.P2346192028631237567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123576 (A261866 n).toNat

end

end A396091.P2346192028631237567

/-! ## A396091.P12111112730563495582

`A131829(A124286(n+2))`
-/

namespace A396091.P12111112730563495582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131829 (A124286 (n + 2)).toNat

end

end A396091.P12111112730563495582

/-!
# A396092: G.f. satisfies A(x) = 1 + x*A(x)^2 + 2*x^2*A(x)^4.

The programs for A396092, there is no canonical definition to state claims against.
-/

/-! ## A396092.P7027143531428197897

`A054846(A243668(n))`
-/

namespace A396092.P7027143531428197897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A243668 n).toNat

end

end A396092.P7027143531428197897

/-! ## A396092.P7383336316170276064

`A002266(A038725(n))+A000931(3*(n+1))`
-/

namespace A396092.P7383336316170276064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A038725 n).toNat + A000931 (3 * (n + 1))

end

end A396092.P7383336316170276064

/-!
# A396093: G.f. A(x) = B(B(B(x))), the third iteration of B(x) = x/(1-x)^2.

The programs for A396093, the canonical program `A396093.P6069863032043368090` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A396093 has offset 0).

The definition of A396093 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A396093.P6069863032043368090

`∑{#}[n-1, A166482(n-#-1)*A166482(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A396093

/-- `∑{#}[n-1, A166482(n-#-1)*A166482(#)]` -/
def P6069863032043368090.Spec : Prop :=
  ∀ n, P6069863032043368090.a n = A396093 n

theorem P6069863032043368090.correct : P6069863032043368090.Spec := by
  intro n
  simp only [A396093]

end A396093

/-! ## A396093.P4372854567479417950

`∑[A101402(A151253(n)-A149936(n))]`
-/

namespace A396093.P4372854567479417950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A151253 n - A149936 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396093.P4372854567479417950

namespace A396093

/-- `∑[A101402(A151253(n)-A149936(n))]` -/
def P4372854567479417950.Spec : Prop :=
  ∀ n, P4372854567479417950.a n = A396093 n

end A396093

/-!
# A396094: G.f. A(x) = B^4(x), the fourth iteration of B(x) = x/(1-x)^2.

The programs for A396094, there is no canonical definition to state claims against.
-/

/-! ## A396094.P6143424125699389095

`∑[A350296(A105633(n))]`
-/

namespace A396094.P6143424125699389095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350296 (A105633 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A396094.P6143424125699389095

/-!
# A396095: O.g.f. Sum_{n>=0} n^n*x^n/(1 + n*x)^(n-1).

The programs for A396095, there is no canonical definition to state claims against.
-/

/-! ## A396095.P1402606092411859964

`A060905(n)-A071667(A184993(n))`
-/

namespace A396095.P1402606092411859964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060905 n - A071667 (A184993 n).toNat

end

end A396095.P1402606092411859964

/-! ## A396095.P14992254180923293905

`A074290(A219925(n))+A060905(n)`
-/

namespace A396095.P14992254180923293905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074290 (A219925 n).toNat + A060905 n

end

end A396095.P14992254180923293905

/-!
# A396097: G.f. A(x) satisfies Sum_{k=0..n} [x^k] A(x)^n = Sum_{k=0..2*n} [x^k] C(x)^n for n >= 0, where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan function.

The programs for A396097, there is no canonical definition to state claims against.
-/

/-! ## A396097.P14870053496417349732

`A264482(n+1)+A171946(A380761(n))`
-/

namespace A396097.P14870053496417349732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264482 (n + 1) + A171946 (A380761 n).toNat

end

end A396097.P14870053496417349732

/-!
# A396098: G.f. A(x) satisfies Sum_{k=0..n} [x^k] A(x)^n = Sum_{k=0..n} ( [x^k] 1/(1-x)^n )^2 for n >= 0.

The programs for A396098, there is no canonical definition to state claims against.
-/

/-! ## A396098.P4573756123298546330

`A005408(A399966(n)-A002033(n))`
-/

namespace A396098.P4573756123298546330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A399966 n - A002033 n).toNat

end

end A396098.P4573756123298546330

/-! ## A396098.P3574873367030658453

`A005408(A399966(n)-A226080(n+1))`
-/

namespace A396098.P3574873367030658453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A399966 n - A226080 (n + 1)).toNat

end

end A396098.P3574873367030658453

/-!
# A396099: G.f. satisfies A(x) = x + A^2(x)*A^3(x).

The programs for A396099, there is no canonical definition to state claims against.
-/

/-! ## A396099.P2709865194718900470

`A098181(A381600(n)-A325683(n))`
-/

namespace A396099.P2709865194718900470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098181 (A381600 n - A325683 n).toNat

end

end A396099.P2709865194718900470

