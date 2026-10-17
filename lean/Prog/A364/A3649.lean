import SequenceMachineLib.Basic
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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C005
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A364900: The n-volume of the unit regular n-simplex is sqrt(a(n))/A364901(n), with a(n) being squarefree.

The programs for A364900, the canonical program `A364900.P10521200387080380125` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364900 has offset 0).

The definition of A364900 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364900.P3778115773215060289

`gcd(n+1, A361670(n+1))`
-/

namespace A364900.P3778115773215060289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A361670 (n + 1))

end

end A364900.P3778115773215060289

namespace A364900

/-- `gcd(n+1, A361670(n+1))` -/
def P3778115773215060289.Spec : Prop :=
  ∀ n, (P3778115773215060289.a n : ℤ) = A364900 n

end A364900

/-! ## A364900.P475248345394960307

`A361670(n)/a(n-1)` with `a(0)=1`
-/

namespace A364900.P475248345394960307
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A361670 n : ℚ) / a (n - 1)

end

end A364900.P475248345394960307

namespace A364900

/-- `A361670(n)/a(n-1)` -/
def P475248345394960307.Spec : Prop :=
  ∀ n, P475248345394960307.a n = (A364900 n : ℚ)

end A364900

/-! ## A364900.P10521200387080380125

`A007913(A022998(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364900

/-- `A007913(A022998(n+1))` -/
def P10521200387080380125.Spec : Prop :=
  ∀ n, P10521200387080380125.a n = A364900 n

theorem P10521200387080380125.correct : P10521200387080380125.Spec := by
  intro n
  simp only [A364900]

end A364900

/-! ## A364900.P4465634674072285953

`A007913(A026741(n+1))`
-/

namespace A364900.P4465634674072285953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A026741 (n + 1)).toNat

end

end A364900.P4465634674072285953

namespace A364900

/-- `A007913(A026741(n+1))` -/
def P4465634674072285953.Spec : Prop :=
  ∀ n, P4465634674072285953.a n = A364900 n

end A364900

/-! ## A364900.P10509545150612313062

`A026741(A038387(n+1))`
-/

namespace A364900.P10509545150612313062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A038387 (n + 1)).toNat

end

end A364900.P10509545150612313062

namespace A364900

/-- `A026741(A038387(n+1))` -/
def P10509545150612313062.Spec : Prop :=
  ∀ n, P10509545150612313062.a n = A364900 n

end A364900

/-! ## A364900.P9815869368364628343

`A007913(A195312(n+1))`
-/

namespace A364900.P9815869368364628343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A195312 (n + 1)).toNat

end

end A364900.P9815869368364628343

namespace A364900

/-- `A007913(A195312(n+1))` -/
def P9815869368364628343.Spec : Prop :=
  ∀ n, P9815869368364628343.a n = A364900 n

end A364900

/-! ## A364900.P14000512355935621955

`A007913(A382154(n+1))`
-/

namespace A364900.P14000512355935621955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A382154 (n + 1)).toNat

end

end A364900.P14000512355935621955

namespace A364900

/-- `A007913(A382154(n+1))` -/
def P14000512355935621955.Spec : Prop :=
  ∀ n, P14000512355935621955.a n = A364900 n

end A364900

/-! ## A364900.P17157132065350392582

`A038387(n+1)/A000034(n)`
-/

namespace A364900.P17157132065350392582
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038387 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A364900.P17157132065350392582

namespace A364900

/-- `A038387(n+1)/A000034(n)` -/
def P17157132065350392582.Spec : Prop :=
  ∀ n, P17157132065350392582.a n = (A364900 n : ℚ)

end A364900

/-! ## A364900.P14657350545945528680

`gcd(A030640(n), A038389(n+1))`
-/

namespace A364900.P14657350545945528680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030640 n) (A038389 (n + 1))

end

end A364900.P14657350545945528680

namespace A364900

/-- `gcd(A030640(n), A038389(n+1))` -/
def P14657350545945528680.Spec : Prop :=
  ∀ n, (P14657350545945528680.a n : ℤ) = A364900 n

end A364900

/-! ## A364900.P13595467750306656767

`gcd(A005565(n), A068310(n+2))`
-/

namespace A364900.P13595467750306656767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005565 n) (A068310 (n + 2))

end

end A364900.P13595467750306656767

namespace A364900

/-- `gcd(A005565(n), A068310(n+2))` -/
def P13595467750306656767.Spec : Prop :=
  ∀ n, (P13595467750306656767.a n : ℤ) = A364900 n

end A364900

/-! ## A364900.P15317886794424005687

`A038387(n+1)/(A000035(n)+1)`
-/

namespace A364900.P15317886794424005687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038387 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A364900.P15317886794424005687

namespace A364900

/-- `A038387(n+1)/(A000035(n)+1)` -/
def P15317886794424005687.Spec : Prop :=
  ∀ n, P15317886794424005687.a n = (A364900 n : ℚ)

end A364900

/-! ## A364900.P2326907489741573389

`A007947(n+1)/A336643(2*(n+1))`
-/

namespace A364900.P2326907489741573389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (A336643 (2 * (n + 1)) : ℚ)

end

end A364900.P2326907489741573389

namespace A364900

/-- `A007947(n+1)/A336643(2*(n+1))` -/
def P2326907489741573389.Spec : Prop :=
  ∀ n, P2326907489741573389.a n = (A364900 n : ℚ)

end A364900

/-! ## A364900.P4159414962145303735

`gcd(A000578(n+1), A007913(2*(n+1)))`
-/

namespace A364900.P4159414962145303735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000578 (n + 1)) (A007913 (2 * (n + 1)))

end

end A364900.P4159414962145303735

namespace A364900

/-- `gcd(A000578(n+1), A007913(2*(n+1)))` -/
def P4159414962145303735.Spec : Prop :=
  ∀ n, (P4159414962145303735.a n : ℤ) = A364900 n

end A364900

/-! ## A364900.P1855854614396021770

`A007913(A000034(n)*A007913(n+1))`
-/

namespace A364900.P1855854614396021770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000034 n * A007913 (n + 1)).toNat

end

end A364900.P1855854614396021770

namespace A364900

/-- `A007913(A000034(n)*A007913(n+1))` -/
def P1855854614396021770.Spec : Prop :=
  ∀ n, P1855854614396021770.a n = A364900 n

end A364900

/-! ## A364900.P11179397443158098544

`A007913(A007913(n+1)*A177002(n))`
-/

namespace A364900.P11179397443158098544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A007913 (n + 1) * A177002 n).toNat

end

end A364900.P11179397443158098544

namespace A364900

/-- `A007913(A007913(n+1)*A177002(n))` -/
def P11179397443158098544.Spec : Prop :=
  ∀ n, P11179397443158098544.a n = A364900 n

end A364900

/-! ## A364900.P9723845966686679724

`A007913(A257088(n+1))`
-/

namespace A364900.P9723845966686679724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A257088 (n + 1)).toNat

end

end A364900.P9723845966686679724

namespace A364900

/-- `A007913(A257088(n+1))` -/
def P9723845966686679724.Spec : Prop :=
  ∀ n, P9723845966686679724.a n = A364900 n

end A364900

/-! ## A364900.P3444782771322223976

`A007913(A317316(n+1))`
-/

namespace A364900.P3444782771322223976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A317316 (n + 1)).toNat

end

end A364900.P3444782771322223976

namespace A364900

/-- `A007913(A317316(n+1))` -/
def P3444782771322223976.Spec : Prop :=
  ∀ n, P3444782771322223976.a n = A364900 n

end A364900

/-! ## A364900.P14383967085670581497

`A007913(A323072(2*(n+1)))`
-/

namespace A364900.P14383967085670581497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A323072 (2 * (n + 1))).toNat

end

end A364900.P14383967085670581497

namespace A364900

/-- `A007913(A323072(2*(n+1)))` -/
def P14383967085670581497.Spec : Prop :=
  ∀ n, P14383967085670581497.a n = A364900 n

end A364900

/-! ## A364900.P10077557490939392020

`A007913(A317325(n+1))`
-/

namespace A364900.P10077557490939392020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A317325 (n + 1)).toNat

end

end A364900.P10077557490939392020

namespace A364900

/-- `A007913(A317325(n+1))` -/
def P10077557490939392020.Spec : Prop :=
  ∀ n, P10077557490939392020.a n = A364900 n

end A364900

/-! ## A364900.P2006410617341061171

`A117811(A133090(n+1))`
-/

namespace A364900.P2006410617341061171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117811 (A133090 (n + 1)).toNat

end

end A364900.P2006410617341061171

namespace A364900

/-- `A117811(A133090(n+1))` -/
def P2006410617341061171.Spec : Prop :=
  ∀ n, P2006410617341061171.a n = A364900 n

end A364900

/-!
# A364901: The n-volume of the unit regular n-simplex is sqrt(A364900(n))/a(n), with A364900(n) being squarefree.

The programs for A364901, there is no canonical definition to state claims against.
-/

/-! ## A364901.P7908000386375596082

`A099146(n+1)!*A300123(n+1)`
-/

namespace A364901.P7908000386375596082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A099146 (n + 1)).toNat : ℤ) * A300123 (n + 1)

end

end A364901.P7908000386375596082

/-! ## A364901.P7695570622040935368

`A000142(n)*A139560(A001405(n))`
-/

namespace A364901.P7695570622040935368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A139560 (A001405 n).toNat

end

end A364901.P7695570622040935368

/-! ## A364901.P17360482567461094003

`A000005(A230008(n))*A000142(n)`
-/

namespace A364901.P17360482567461094003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A230008 n).toNat * A000142 n

end

end A364901.P17360482567461094003

/-! ## A364901.P2593592566487111200

`A000005(A234239(n))*A000142(n)`
-/

namespace A364901.P2593592566487111200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A234239 n).toNat * A000142 n

end

end A364901.P2593592566487111200

/-!
# A364904: a(n) = |Aut^n(C_32)|: order of the group obtained by applying G -> Aut(G) n times to the cyclic group of order 32.

The programs for A364904, there is no canonical definition to state claims against.
-/

/-! ## A364904.P15973701974281407785

`A322328(A004823(n+1))`
-/

namespace A364904.P15973701974281407785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322328 (A004823 (n + 1)).toNat

end

end A364904.P15973701974281407785

/-!
# A364905: Sphenic numbers with no squarefree neighbors.

The programs for A364905, the canonical program `A364905.P262514306637378074` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364905 has offset 1).

The definition of A364905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1965 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364905.P3099116217704971904

`filter[A073249(n+1), A354926(#)]`
-/

namespace A364905.P3099116217704971904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A364905.P3099116217704971904

namespace A364905

/-- `filter[A073249(n+1), A354926(#)]` -/
def P3099116217704971904.Spec : Prop :=
  ∀ n, P3099116217704971904.a n = A364905 (n + 1)

end A364905

/-! ## A364905.P15954412326308971767

`filter[A073249(n+1), A358753(#)]`
-/

namespace A364905.P15954412326308971767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358753 (f1 j).toNat = 1) n)

end

end A364905.P15954412326308971767

namespace A364905

/-- `filter[A073249(n+1), A358753(#)]` -/
def P15954412326308971767.Spec : Prop :=
  ∀ n, P15954412326308971767.a n = A364905 (n + 1)

end A364905

/-! ## A364905.P262514306637378074

`filter[A073249(n+1), A373975(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A364905

/-- `filter[A073249(n+1), A373975(#)]` -/
def P262514306637378074.Spec : Prop :=
  ∀ n, P262514306637378074.a n = A364905 (n + 1)

theorem P262514306637378074.correct : P262514306637378074.Spec := by
  intro n
  simp only [A364905, Nat.add_sub_cancel]

end A364905

/-! ## A364905.P2950041560566779381

`∩[A007304(n+1), A073247(n+1)]`
-/

namespace A364905.P2950041560566779381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P2950041560566779381

namespace A364905

/-- `∩[A007304(n+1), A073247(n+1)]` -/
def P2950041560566779381.Spec : Prop :=
  ∀ n, (P2950041560566779381.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P3042431099262146049

`∩[A007304(n+1), A073249(n+1)]`
-/

namespace A364905.P3042431099262146049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P3042431099262146049

namespace A364905

/-- `∩[A007304(n+1), A073249(n+1)]` -/
def P3042431099262146049.Spec : Prop :=
  ∀ n, (P3042431099262146049.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P15922583912566019587

`∩[A007304(n+1), A281192(n+1)]`
-/

namespace A364905.P15922583912566019587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P15922583912566019587

namespace A364905

/-- `∩[A007304(n+1), A281192(n+1)]` -/
def P15922583912566019587.Spec : Prop :=
  ∀ n, (P15922583912566019587.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P3543583751331182135

`∩[A073247(n+1), A345382(n+1)]`
-/

namespace A364905.P3543583751331182135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P3543583751331182135

namespace A364905

/-- `∩[A073247(n+1), A345382(n+1)]` -/
def P3543583751331182135.Spec : Prop :=
  ∀ n, (P3543583751331182135.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P3530215020539390924

`∩[A073249(n+1), A345382(n+1)]`
-/

namespace A364905.P3530215020539390924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P3530215020539390924

namespace A364905

/-- `∩[A073249(n+1), A345382(n+1)]` -/
def P3530215020539390924.Spec : Prop :=
  ∀ n, (P3530215020539390924.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P13752708317436414923

`∩[A073247(n+1), A225228(n+1)]`
-/

namespace A364905.P13752708317436414923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P13752708317436414923

namespace A364905

/-- `∩[A073247(n+1), A225228(n+1)]` -/
def P13752708317436414923.Spec : Prop :=
  ∀ n, (P13752708317436414923.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P1241701670370760505

`∩[A073249(n+1), A225228(n+1)]`
-/

namespace A364905.P1241701670370760505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P1241701670370760505

namespace A364905

/-- `∩[A073249(n+1), A225228(n+1)]` -/
def P1241701670370760505.Spec : Prop :=
  ∀ n, (P1241701670370760505.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P10065256005103006796

`∩[A030626(n+1), A073247(n+1)]`
-/

namespace A364905.P10065256005103006796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P10065256005103006796

namespace A364905

/-- `∩[A030626(n+1), A073247(n+1)]` -/
def P10065256005103006796.Spec : Prop :=
  ∀ n, (P10065256005103006796.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P13586626157978728273

`∩[A030626(n+1), A073249(n+1)]`
-/

namespace A364905.P13586626157978728273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P13586626157978728273

namespace A364905

/-- `∩[A030626(n+1), A073249(n+1)]` -/
def P13586626157978728273.Spec : Prop :=
  ∀ n, (P13586626157978728273.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P7035933927504345841

`∩[A073247(n+1), A111398(n+1)]`
-/

namespace A364905.P7035933927504345841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P7035933927504345841

namespace A364905

/-- `∩[A073247(n+1), A111398(n+1)]` -/
def P7035933927504345841.Spec : Prop :=
  ∀ n, (P7035933927504345841.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P17620078271186216007

`∩[A073249(n+1), A111398(n+1)]`
-/

namespace A364905.P17620078271186216007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P17620078271186216007

namespace A364905

/-- `∩[A073249(n+1), A111398(n+1)]` -/
def P17620078271186216007.Spec : Prop :=
  ∀ n, (P17620078271186216007.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P127770947879512416

`∩[A073247(n+1), A217856(n+1)]`
-/

namespace A364905.P127770947879512416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P127770947879512416

namespace A364905

/-- `∩[A073247(n+1), A217856(n+1)]` -/
def P127770947879512416.Spec : Prop :=
  ∀ n, (P127770947879512416.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P11591734211942094550

`∩[A073249(n+1), A217856(n+1)]`
-/

namespace A364905.P11591734211942094550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P11591734211942094550

namespace A364905

/-- `∩[A073249(n+1), A217856(n+1)]` -/
def P11591734211942094550.Spec : Prop :=
  ∀ n, (P11591734211942094550.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P3226183915684714579

`∩[A014612(n+1), A073247(n+1)]`
-/

namespace A364905.P3226183915684714579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P3226183915684714579

namespace A364905

/-- `∩[A014612(n+1), A073247(n+1)]` -/
def P3226183915684714579.Spec : Prop :=
  ∀ n, (P3226183915684714579.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P17556531340852281389

`∩[A014612(n+1), A073249(n+1)]`
-/

namespace A364905.P17556531340852281389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P17556531340852281389

namespace A364905

/-- `∩[A014612(n+1), A073249(n+1)]` -/
def P17556531340852281389.Spec : Prop :=
  ∀ n, (P17556531340852281389.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P5172649597630063654

`∩[A073247(n+1), A358763(n+1)]`
-/

namespace A364905.P5172649597630063654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P5172649597630063654

namespace A364905

/-- `∩[A073247(n+1), A358763(n+1)]` -/
def P5172649597630063654.Spec : Prop :=
  ∀ n, (P5172649597630063654.a n : ℤ) = A364905 (n + 1)

end A364905

/-! ## A364905.P4503511348919352724

`∩[A073249(n+1), A358763(n+1)]`
-/

namespace A364905.P4503511348919352724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364905.P4503511348919352724

namespace A364905

/-- `∩[A073249(n+1), A358763(n+1)]` -/
def P4503511348919352724.Spec : Prop :=
  ∀ n, (P4503511348919352724.a n : ℤ) = A364905 (n + 1)

end A364905

/-!
# A364907: Number of ways to write n as a nonnegative linear combination of an integer partition of n.

The programs for A364907, there is no canonical definition to state claims against.
-/

/-! ## A364907.P3621621425102680619

`A365004(∑[4*n])`
-/

namespace A364907.P3621621425102680619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365004 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364907.P3621621425102680619

/-! ## A364907.P5053426037000375368

`or(A000007(n), A365004(A046092(n)))`
-/

namespace A364907.P5053426037000375368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A365004 (A046092 n).toNat)

end

end A364907.P5053426037000375368

/-! ## A364907.P2048086229236773158

`A365004(A046092(n))+A000007(2*(n+2))`
-/

namespace A364907.P2048086229236773158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365004 (A046092 n).toNat + A000007 (2 * (n + 2))

end

end A364907.P2048086229236773158

/-! ## A364907.P5707246177843202894

`A365004(A046092(n))+A000035(2*(n+2))`
-/

namespace A364907.P5707246177843202894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365004 (A046092 n).toNat + A000035 (2 * (n + 2))

end

end A364907.P5707246177843202894

/-! ## A364907.P15672663996292493364

`A365004(A046092(n))+A056512(A165001(n+1))`
-/

namespace A364907.P15672663996292493364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365004 (A046092 n).toNat + A056512 (A165001 (n + 1)).toNat

end

end A364907.P15672663996292493364

/-!
# A364908: Number of ways to write n as a nonnegative linear combination of an integer composition of n.

The programs for A364908, there is no canonical definition to state claims against.
-/

/-! ## A364908.P18237407200233656872

`A084869(n)-∑{e}[A084869(2*n), #]`
-/

namespace A364908.P18237407200233656872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A364908.P18237407200233656872

/-! ## A364908.P15551116049660790948

`A084869(n)-A001221(A141047(n))`
-/

namespace A364908.P15551116049660790948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084869 n - A001221 (A141047 n).toNat

end

end A364908.P15551116049660790948

/-!
# A364910: Number of integer partitions of 2n whose distinct parts sum to n.

The programs for A364910, there is no canonical definition to state claims against.
-/

/-! ## A364910.P3869101637094524513

`A364916(∑[4*n])`
-/

namespace A364910.P3869101637094524513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A364910.P3869101637094524513

/-! ## A364910.P8626185003308956030

`abs(1-A364916(A046092(n)))+1`
-/

namespace A364910.P8626185003308956030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A364916 (A046092 n).toNat| + 1

end

end A364910.P8626185003308956030

/-! ## A364910.P14649557401963375699

`A057427(n+1)*A364916(A046092(n))`
-/

namespace A364910.P14649557401963375699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A364916 (A046092 n).toNat

end

end A364910.P14649557401963375699

/-! ## A364910.P5496795450779223240

`A364916(A046092(n))%A116331(n+1)`
-/

namespace A364910.P5496795450779223240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364916 (A046092 n).toNat) (A116331 (n + 1))

end

end A364910.P5496795450779223240

/-! ## A364910.P9177424235677745752

`A364916(A046092(n))+char[A179645(n+1)]`
-/

namespace A364910.P9177424235677745752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179645 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A046092 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A364910.P9177424235677745752

/-! ## A364910.P3046675192086089769

`A364916(A046092(n))+A121262(A002522(n))`
-/

namespace A364910.P3046675192086089769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A046092 n).toNat + A121262 (A002522 n).toNat

end

end A364910.P3046675192086089769

/-! ## A364910.P11542956411273050809

`A364916(A046092(n))+A121262(A152204(n))`
-/

namespace A364910.P11542956411273050809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A046092 n).toNat + A121262 (A152204 n).toNat

end

end A364910.P11542956411273050809

/-! ## A364910.P1622359838480920421

`A364916(A046092(n))+A121262(A002144(n+1))`
-/

namespace A364910.P1622359838480920421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A046092 n).toNat + A121262 (A002144 (n + 1)).toNat

end

end A364910.P1622359838480920421

/-! ## A364910.P886370574648261501

`A364916(A046092(n))+A004524(A373974(n+1))`
-/

namespace A364910.P886370574648261501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A046092 n).toNat + A004524 (A373974 (n + 1)).toNat

end

end A364910.P886370574648261501

/-! ## A364910.P11602026805083378713

`A373974(A347045(3*n+1))+A364916(A046092(n))`
-/

namespace A364910.P11602026805083378713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373974 (A347045 (3 * n + 1)).toNat + A364916 (A046092 n).toNat

end

end A364910.P11602026805083378713

/-!
# A364911: Triangle read by rows where T(n,k) is the number of integer partitions with sum <= n and with distinct parts summing to k.

The programs for A364911, there is no canonical definition to state claims against.
-/

/-! ## A364911.P13581808320251057888

`A319420(A028246(n+1))`
-/

namespace A364911.P13581808320251057888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319420 (A028246 (n + 1)).toNat

end

end A364911.P13581808320251057888

/-! ## A364911.P16093998813389125936

`A339443(A208931(n+1))`
-/

namespace A364911.P16093998813389125936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339443 (A208931 (n + 1)).toNat

end

end A364911.P16093998813389125936

/-! ## A364911.P2299373594401606792

`A167269(n)*A380395(A101817(n+1))`
-/

namespace A364911.P2299373594401606792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167269 n * A380395 (A101817 (n + 1)).toNat

end

end A364911.P2299373594401606792

/-! ## A364911.P17947027389101085554

`gcd(A010554(A184643(2*n)), A034807(2*n))`
-/

namespace A364911.P17947027389101085554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010554 (A184643 (2 * n)).toNat) (A034807 (2 * n))

end

end A364911.P17947027389101085554

/-! ## A364911.P16974277400482549492

`A098280(A054115(n))`
-/

namespace A364911.P16974277400482549492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098280 (A054115 n).toNat

end

end A364911.P16974277400482549492

/-!
# A364912: Triangle read by rows where T(n,k) is the number of ways to write n as a positive linear combination of an integer partition of k.

The programs for A364912, there is no canonical definition to state claims against.
-/

/-! ## A364912.P7103233375127660831

`A365004(∑[2*n]%comp[∑[n]])`
-/

namespace A364912.P7103233375127660831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365004 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A364912.P7103233375127660831

/-! ## A364912.P14621314815734909844

`A365004(∑[char[∑[n]]]²-n-1)`
-/

namespace A364912.P14621314815734909844
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365004 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A364912.P14621314815734909844

/-! ## A364912.P11144841160009354175

`A321449(n)-A212619(A294675(n+3))`
-/

namespace A364912.P11144841160009354175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321449 n - A212619 (A294675 (n + 3)).toNat

end

end A364912.P11144841160009354175

/-! ## A364912.P5256340158056730827

`A321449(n)-A212619(A156953(n))`
-/

namespace A364912.P5256340158056730827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321449 n - A212619 (A156953 n).toNat

end

end A364912.P5256340158056730827

/-! ## A364912.P5881446634026288350

`A320808(lt[A320808(n+1), A303837(2*(n+2))])`
-/

namespace A364912.P5881446634026288350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303837 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320808 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A364912.P5881446634026288350

/-!
# A364913: Number of integer partitions of n having a part that can be written as a nonnegative linear combination of the other (possibly equal) parts.

The programs for A364913, there is no canonical definition to state claims against.
-/

/-! ## A364913.P8911380224991505111

`A364839(n)+A047967(n)`
-/

namespace A364913.P8911380224991505111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364839 n + A047967 n

end

end A364913.P8911380224991505111

/-! ## A364913.P13552407513524383887

`A000041(n)-A364350(n)`
-/

namespace A364913.P13552407513524383887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A364350 n

end

end A364913.P13552407513524383887

/-! ## A364913.P15093980992167320528

`A213598(n)-A364350(n)`
-/

namespace A364913.P15093980992167320528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A364350 n

end

end A364913.P15093980992167320528

/-! ## A364913.P3694093888455555021

`∑[A002865(n)]-A364350(n)`
-/

namespace A364913.P3694093888455555021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364350 n

end

end A364913.P3694093888455555021

/-! ## A364913.P12109716408898372060

`A000065(n)+1-A364350(n)`
-/

namespace A364913.P12109716408898372060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A364350 n)

end

end A364913.P12109716408898372060

/-!
# A364914: Number of subsets of {1..n} such that some element can be written as a nonnegative linear combination of the others.

The programs for A364914, there is no canonical definition to state claims against.
-/

/-! ## A364914.P5527677613928225015

`∑[A365046(n)]`
-/

namespace A364914.P5527677613928225015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364914.P5527677613928225015

/-! ## A364914.P13338223584672675570

`2^n-A326083(n)`
-/

namespace A364914.P13338223584672675570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A326083 n

end

end A364914.P13338223584672675570

/-! ## A364914.P1154902198677786489

`abs(A000079(n)-A326083(n))`
-/

namespace A364914.P1154902198677786489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A326083 n|

end

end A364914.P1154902198677786489

/-! ## A364914.P15520839978330900623

`and(-A326083(n), A000225(n))`
-/

namespace A364914.P15520839978330900623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A326083 n) (A000225 n)

end

end A364914.P15520839978330900623

/-! ## A364914.P5092043605936259911

`A000051(n)-(A326083(n)+1)`
-/

namespace A364914.P5092043605936259911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A326083 n + 1)

end

end A364914.P5092043605936259911

/-!
# A364915: Number of integer partitions of n such that no distinct part can be written as a nonnegative linear combination of other distinct parts.

The programs for A364915, there is no canonical definition to state claims against.
-/

/-! ## A364915.P6728875944607343567

`A000041(n)-A365068(n)`
-/

namespace A364915.P6728875944607343567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A365068 n

end

end A364915.P6728875944607343567

/-! ## A364915.P124788538548419562

`A213598(n)-A365068(n)`
-/

namespace A364915.P124788538548419562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A365068 n

end

end A364915.P124788538548419562

/-! ## A364915.P12159255776352635099

`∑[A002865(n)]-A365068(n)`
-/

namespace A364915.P12159255776352635099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A365068 n

end

end A364915.P12159255776352635099

/-! ## A364915.P14564277306207108476

`A133041(n)-(A365068(n)+n)`
-/

namespace A364915.P14564277306207108476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (A365068 n + (n : ℤ))

end

end A364915.P14564277306207108476

/-! ## A364915.P2331040321799998755

`∑{d}[n+1, A133732(#)]-A365068(n)`
-/

namespace A364915.P2331040321799998755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A133732 d - A365068 n

end

end A364915.P2331040321799998755

/-!
# A364916: Array read by antidiagonals downwards where A(n,k) is the number of ways to write n as a nonnegative linear combination of the parts of a strict integer partition of k.

The programs for A364916, there is no canonical definition to state claims against.
-/

/-! ## A364916.P18170804317593171103

`A339737(n)+A188014(A259465(n))`
-/

namespace A364916.P18170804317593171103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339737 n + A188014 (A259465 n).toNat

end

end A364916.P18170804317593171103

/-! ## A364916.P2662263773102090534

`A339737(n)+A098852(A073133(n+1))`
-/

namespace A364916.P2662263773102090534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339737 n + A098852 (A073133 (n + 1)).toNat

end

end A364916.P2662263773102090534

/-! ## A364916.P15758649399207791160

`C(A146289(n+1), A133233(A176744(3*(n+1))))`
-/

namespace A364916.P15758649399207791160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A146289 (n + 1)).toNat (A133233 (A176744 (3 * (n + 1))).toNat).toNat

end

end A364916.P15758649399207791160

/-! ## A364916.P14601690391907984891

`A339737(A001222(2^n))`
-/

namespace A364916.P14601690391907984891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339737 (A001222 (2 ^ n)).toNat

end

end A364916.P14601690391907984891

/-! ## A364916.P17399922958255184007

`A339737(n)%A337790(n)`
-/

namespace A364916.P17399922958255184007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A339737 n) (A337790 n)

end

end A364916.P17399922958255184007

/-!
# A364917: For each n, if the sequence defined by G_0 = C_n, G_k = Aut(G_{k-1}) for k >= 1 stabilizes, then a(n) is the order of G_k for sufficiently large k; otherwise a(n) = 0. Here C_n is the cyclic group of order n.

The programs for A364917, there is no canonical definition to state claims against.
-/

/-! ## A364917.P3979463860115939968

`A005451(A364944(n+1))`
-/

namespace A364917.P3979463860115939968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A364944 (n + 1)).toNat

end

end A364917.P3979463860115939968

/-! ## A364917.P9563651835160755647

`A364944(A014684(n+1))`
-/

namespace A364917.P9563651835160755647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364944 (A014684 (n + 1)).toNat

end

end A364917.P9563651835160755647

/-! ## A364917.P13803897198605350265

`A364944(A113638(n+1))`
-/

namespace A364917.P13803897198605350265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364944 (A113638 (n + 1)).toNat

end

end A364917.P13803897198605350265

/-! ## A364917.P15869853881368884218

`A364944(A179278(n+1))`
-/

namespace A364917.P15869853881368884218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364944 (A179278 (n + 1)).toNat

end

end A364917.P15869853881368884218

/-! ## A364917.P12452094695096227294

`floor(A364944(n+1)/A275216(n))`
-/

namespace A364917.P12452094695096227294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A364944 (n + 1) : ℚ) / (A275216 n : ℚ)⌋

end

end A364917.P12452094695096227294

/-!
# A364918: a(1) = 1; for n >= 2, a(n) = a(n - GCD(n - 1, a(n - 1))) + GCD(n, a(n - 1)).

The programs for A364918, there is no canonical definition to state claims against.
-/

/-! ## A364918.P1397737348951050801

`∑{e}[A206734(A061979(n+1)), #]`
-/

namespace A364918.P1397737348951050801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206734 (A061979 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A364918.P1397737348951050801

/-! ## A364918.P17088682585713261292

`A124762(A160714(n+4))+A000005(n+1)`
-/

namespace A364918.P17088682585713261292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A160714 (n + 4)).toNat + A000005 (n + 1)

end

end A364918.P17088682585713261292

/-!
# A364922: a(n) is the square of the side length of a simplex whose n-dimensional inner hypervolume is equal to its (n-1)-dimensional surface hypervolume. As a result, the sequence starts at n=2.

The programs for A364922, the canonical program `A364922.P17593704846871778946` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364922 has offset 2).

The definition of A364922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A364922.P17593704846871778946

`2*A179824(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364922

/-- `2*A179824(n+3)` -/
def P17593704846871778946.Spec : Prop :=
  ∀ n, P17593704846871778946.a n = A364922 (n + 2)

theorem P17593704846871778946.correct : P17593704846871778946.Spec := by
  intro n
  simp only [A364922, Nat.add_sub_cancel]

end A364922

/-! ## A364922.P7493800874037076520

`2*(n+2)^3*(n+3)`
-/

namespace A364922.P7493800874037076520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2) ^ 3 * (n + 3)

end

end A364922.P7493800874037076520

namespace A364922

/-- `2*(n+2)^3*(n+3)` -/
def P7493800874037076520.Spec : Prop :=
  ∀ n, (P7493800874037076520.a n : ℤ) = A364922 (n + 2)

end A364922

/-! ## A364922.P7406758123293393766

`2*lcm(n+3, (n+2)²²)/(n+2)`
-/

namespace A364922.P7406758123293393766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm (n + 3) (((n + 2) ^ 2) ^ 2) : ℚ) / (n + 2 : ℚ)

end

end A364922.P7406758123293393766

namespace A364922

/-- `2*lcm(n+3, (n+2)²²)/(n+2)` -/
def P7406758123293393766.Spec : Prop :=
  ∀ n, P7406758123293393766.a n = (A364922 (n + 2) : ℚ)

end A364922

/-! ## A364922.P11060551456721571372

`((n+3)*(n+2)²)²/C(n+3, 2)`
-/

namespace A364922.P11060551456721571372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 3) * (n + 2) ^ 2) ^ 2 : ℚ) / (Nat.choose (n + 3) 2 : ℚ)

end

end A364922.P11060551456721571372

namespace A364922

/-- `((n+3)*(n+2)²)²/C(n+3, 2)` -/
def P11060551456721571372.Spec : Prop :=
  ∀ n, P11060551456721571372.a n = (A364922 (n + 2) : ℚ)

end A364922

/-! ## A364922.P14808460463452327924

`Δ[4*A086689(n+1)]`
-/

namespace A364922.P14808460463452327924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A086689 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A364922.P14808460463452327924

namespace A364922

/-- `Δ[4*A086689(n+1)]` -/
def P14808460463452327924.Spec : Prop :=
  ∀ n, P14808460463452327924.a n = A364922 (n + 2)

end A364922

/-! ## A364922.P2770234107907644863

`A100256(n+2)-A000537(n+1)`
-/

namespace A364922.P2770234107907644863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100256 (n + 2) - A000537 (n + 1)

end

end A364922.P2770234107907644863

namespace A364922

/-- `A100256(n+2)-A000537(n+1)` -/
def P2770234107907644863.Spec : Prop :=
  ∀ n, P2770234107907644863.a n = A364922 (n + 2)

end A364922

/-! ## A364922.P8600531051502964361

`A006009(2*n+3)`
-/

namespace A364922.P8600531051502964361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006009 (2 * n + 3)

end

end A364922.P8600531051502964361

namespace A364922

/-- `A006009(2*n+3)` -/
def P8600531051502964361.Spec : Prop :=
  ∀ n, P8600531051502964361.a n = A364922 (n + 2)

end A364922

/-! ## A364922.P15435892242093404334

`Δ[2*n*(n+3)!]/(n+1)!`
-/

namespace A364922.P15435892242093404334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.factorial (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A364922.P15435892242093404334

namespace A364922

/-- `Δ[2*n*(n+3)!]/(n+1)!` -/
def P15435892242093404334.Spec : Prop :=
  ∀ n, P15435892242093404334.a n = (A364922 (n + 2) : ℚ)

end A364922

/-!
# A364923: G.f. satisfies A(x) = 1 + x*A(x)^4 / (1 - 2*x*A(x)^3).

The programs for A364923, there is no canonical definition to state claims against.
-/

/-! ## A364923.P17878910268446072019

`A344105(2*n+1)+comp[2*n+3]²`
-/

namespace A364923.P17878910268446072019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344105 (2 * n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ)

end

end A364923.P17878910268446072019

/-!
# A364924: G.f. satisfies A(x) = 1 + x*A(x)^5 / (1 - 2*x*A(x)^4).

The programs for A364924, there is no canonical definition to state claims against.
-/

/-! ## A364924.P13126337305706348877

`A231810(3*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A364924.P13126337305706348877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A231810 (3 * a (n - 1)).toNat

end

end A364924.P13126337305706348877

/-!
# A364925: If the Sylow 2-subgroup of the multiplicative group modulo n is isomorphic to the direct product of (C_(2^i))^(e_i) for 1 <= i <= k, where C_m denotes the cyclic group of order m, then a(n) = Product_{i=1..k} prime(i)^(e_i).

The programs for A364925, there is no canonical definition to state claims against.
-/

/-! ## A364925.P14708424275719263019

`A392447(A289625(n+1))`
-/

namespace A364925.P14708424275719263019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A289625 (n + 1)).toNat

end

end A364925.P14708424275719263019

/-! ## A364925.P14445581093621324287

`or(A057985(A216244(2*n+5)), A060594(n+1))`
-/

namespace A364925.P14445581093621324287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057985 (A216244 (2 * n + 5)).toNat) (A060594 (n + 1))

end

end A364925.P14445581093621324287

/-! ## A364925.P15410971065273197092

`A134024(A020713(n))`
-/

namespace A364925.P15410971065273197092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134024 (A020713 n).toNat

end

end A364925.P15410971065273197092

/-! ## A364925.P6023638911941314268

`A139352(A046081(3*(n+1))!)+1`
-/

namespace A364925.P6023638911941314268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139352 (Nat.factorial (A046081 (3 * (n + 1))).toNat) + 1

end

end A364925.P6023638911941314268

/-! ## A364925.P6169186879945043387

`A087116(A005902(n)-A015765(n+1))`
-/

namespace A364925.P6169186879945043387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (A005902 n - A015765 (n + 1)).toNat

end

end A364925.P6169186879945043387

/-!
# A364926: Prime powers (A000961) q such that 2*q+1 is a prime.

The programs for A364926, there is no canonical definition to state claims against.
-/

/-! ## A364926.P12355493045054339998

`(A048184(n+1)-1)/2`
-/

namespace A364926.P12355493045054339998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048184 (n + 1) - 1 : ℚ) / 2

end

end A364926.P12355493045054339998

/-! ## A364926.P17692963965992169571

`(p?[A138929(n+1)+1]-1)/2`
-/

namespace A364926.P17692963965992169571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138929 (n + 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A364926.P17692963965992169571

/-! ## A364926.P6342419750572254626

`∩[A000961(n+1), A005097(n+1)]`
-/

namespace A364926.P6342419750572254626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364926.P6342419750572254626

/-! ## A364926.P5158524878189856226

`∩[A000961(n+1), A102781(n+1)]`
-/

namespace A364926.P5158524878189856226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364926.P5158524878189856226

/-! ## A364926.P18102628125629285593

`∩[A000961(n+1), A139791(n+1)]`
-/

namespace A364926.P18102628125629285593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364926.P18102628125629285593

/-! ## A364926.P17014031998006881725

`filter[A000961(n+1), A101264(#)]`
-/

namespace A364926.P17014031998006881725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A364926.P17014031998006881725

/-! ## A364926.P11509398074828121416

`eq[A225700(n), A231813(n)]`
-/

namespace A364926.P11509398074828121416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364926.P11509398074828121416

/-! ## A364926.P15498491100610953136

`filter[A005097(n+1), A010055(#)]`
-/

namespace A364926.P15498491100610953136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A364926.P15498491100610953136

/-! ## A364926.P8447640329988622816

`filter[A139791(n+1), A010055(#)]`
-/

namespace A364926.P8447640329988622816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A364926.P8447640329988622816

/-! ## A364926.P205959980531966843

`filter[A102781(n+2), A010055(#)]`
-/

namespace A364926.P205959980531966843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A364926.P205959980531966843

/-! ## A364926.P2090776036392304930

`filter[A130290(n+2), A010055(#)]`
-/

namespace A364926.P2090776036392304930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010055 (f1 j).toNat = 1) n)

end

end A364926.P2090776036392304930

/-! ## A364926.P11651871918795451533

`eq[A136623(n+1), A219695(n+1)]`
-/

namespace A364926.P11651871918795451533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364926.P11651871918795451533

/-! ## A364926.P721105275147261806

`record[A046073(n+1)/A028234(A046073(n+1))]`
-/

namespace A364926.P721105275147261806
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046073 (n + 1) : ℚ) / (A028234 (A046073 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364926.P721105275147261806

/-! ## A364926.P6575464151917761526

`A002616(A048184(n+1))`
-/

namespace A364926.P6575464151917761526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002616 (A048184 (n + 1)).toNat

end

end A364926.P6575464151917761526

/-!
# A364930: Products of primorials that are squareful but not prime powers.

The programs for A364930, there is no canonical definition to state claims against.
-/

/-! ## A364930.P3157875384582450388

`∪[A368682(n+1), A378002(n+1)]`
-/

namespace A364930.P3157875384582450388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P3157875384582450388

/-! ## A364930.P14828073501256253833

`∩[A181800(n+1), A364710(n+1)]`
-/

namespace A364930.P14828073501256253833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P14828073501256253833

/-! ## A364930.P16116716892230165722

`∩[A025487(n+1), A369374(n+1)]`
-/

namespace A364930.P16116716892230165722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P16116716892230165722

/-! ## A364930.P11009216326844443645

`∩[A181800(n+1), A369374(n+1)]`
-/

namespace A364930.P11009216326844443645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P11009216326844443645

/-! ## A364930.P1940350418458361737

`∩[A364710(n+1), A369374(n+1)]`
-/

namespace A364930.P1940350418458361737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P1940350418458361737

/-! ## A364930.P10856675130402154444

`∩[A364710(n+1), A387901(n+1)]`
-/

namespace A364930.P10856675130402154444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387901 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P10856675130402154444

/-! ## A364930.P12004040958591735350

`∩[2*A363814(n+1), A181800(n+1)]`
-/

namespace A364930.P12004040958591735350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P12004040958591735350

/-! ## A364930.P3605537136313828007

`∩[A181800(n+1), A363814(n+1)]`
-/

namespace A364930.P3605537136313828007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P3605537136313828007

/-! ## A364930.P11371480226613071751

`∩[2*A055744(n+1), A364710(n+1)]`
-/

namespace A364930.P11371480226613071751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P11371480226613071751

/-! ## A364930.P4379849992906187294

`∩[A055744(n+1), A364710(n+1)]`
-/

namespace A364930.P4379849992906187294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P4379849992906187294

/-! ## A364930.P5602362682227528355

`∩[A363169(n+1), A364710(n+1)]`
-/

namespace A364930.P5602362682227528355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P5602362682227528355

/-! ## A364930.P4861672512514502143

`∩[A025487(n+1), A363169(n+1)]`
-/

namespace A364930.P4861672512514502143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P4861672512514502143

/-! ## A364930.P432499359989649588

`∩[A181800(n+1), A363169(n+1)]`
-/

namespace A364930.P432499359989649588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P432499359989649588

/-! ## A364930.P13576444437730218762

`∩[A025487(n+1), A363216(n+1)]`
-/

namespace A364930.P13576444437730218762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P13576444437730218762

/-! ## A364930.P8412117751795080714

`∩[A181800(n+1), A363216(n+1)]`
-/

namespace A364930.P8412117751795080714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P8412117751795080714

/-! ## A364930.P9150417322028531297

`∩[A363216(n+1), A364710(n+1)]`
-/

namespace A364930.P9150417322028531297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P9150417322028531297

/-! ## A364930.P4782201300633528308

`∩[A364710(n+1), A390010(n+1)]`
-/

namespace A364930.P4782201300633528308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P4782201300633528308

/-! ## A364930.P3865305947889348622

`∩[2*A066312(n+1), A181800(n+1)]`
-/

namespace A364930.P3865305947889348622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A066312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P3865305947889348622

/-! ## A364930.P3673520823161291003

`∩[A353485(n+1), A364710(n+1)]`
-/

namespace A364930.P3673520823161291003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353485 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P3673520823161291003

/-! ## A364930.P85411266872657325

`∩[A025487(n+1), A286708(n+1)]`
-/

namespace A364930.P85411266872657325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364930.P85411266872657325

/-!
# A364932: a(n) = phi(psi(n)).

The programs for A364932, the canonical program `A364932.P6679838922947751694` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364932 has offset 1).

The definition of A364932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364932.P6679838922947751694

`A000010(A001615(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364932

/-- `A000010(A001615(n+1))` -/
def P6679838922947751694.Spec : Prop :=
  ∀ n, P6679838922947751694.a n = A364932 (n + 1)

theorem P6679838922947751694.correct : P6679838922947751694.Spec := by
  intro n
  simp only [A364932, Nat.add_sub_cancel]

end A364932

/-! ## A364932.P6428386150617388293

`A000010(A306927(n+1)+n+1)`
-/

namespace A364932.P6428386150617388293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A306927 (n + 1) + (n + 1 : ℤ)).toNat

end

end A364932.P6428386150617388293

namespace A364932

/-- `A000010(A306927(n+1)+n+1)` -/
def P6428386150617388293.Spec : Prop :=
  ∀ n, P6428386150617388293.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P367528942773585513

`A000010(A000082(n+1)/(n+1))`
-/

namespace A364932.P367528942773585513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000082 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A364932.P367528942773585513

namespace A364932

/-- `A000010(A000082(n+1)/(n+1))` -/
def P367528942773585513.Spec : Prop :=
  ∀ n, P367528942773585513.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P10082689677128271457

`A000010(A292786(n+1)+A000010(n+1))`
-/

namespace A364932.P10082689677128271457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A292786 (n + 1) + A000010 (n + 1)).toNat

end

end A364932.P10082689677128271457

namespace A364932

/-- `A000010(A292786(n+1)+A000010(n+1))` -/
def P10082689677128271457.Spec : Prop :=
  ∀ n, P10082689677128271457.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P5359046715685056926

`A000010(A318320(n+1)+A291784(n+1))`
-/

namespace A364932.P5359046715685056926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A318320 (n + 1) + A291784 (n + 1)).toNat

end

end A364932.P5359046715685056926

namespace A364932

/-- `A000010(A318320(n+1)+A291784(n+1))` -/
def P5359046715685056926.Spec : Prop :=
  ∀ n, P5359046715685056926.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P16828156095056955871

`A000010(A003557(n+1)*A048250(n+1))`
-/

namespace A364932.P16828156095056955871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003557 (n + 1) * A048250 (n + 1)).toNat

end

end A364932.P16828156095056955871

namespace A364932

/-- `A000010(A003557(n+1)*A048250(n+1))` -/
def P16828156095056955871.Spec : Prop :=
  ∀ n, P16828156095056955871.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P5989216277973467108

`A000010(A007434(n+1)/A000010(n+1))`
-/

namespace A364932.P5989216277973467108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A007434 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ))).toNat

end

end A364932.P5989216277973467108

namespace A364932

/-- `A000010(A007434(n+1)/A000010(n+1))` -/
def P5989216277973467108.Spec : Prop :=
  ∀ n, P5989216277973467108.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P14562784325666750370

`A000010(A000252(n+1)/A327570(n+1))`
-/

namespace A364932.P14562784325666750370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000252 (n + 1) : ℚ) / (A327570 (n + 1) : ℚ))).toNat

end

end A364932.P14562784325666750370

namespace A364932

/-- `A000010(A000252(n+1)/A327570(n+1))` -/
def P14562784325666750370.Spec : Prop :=
  ∀ n, P14562784325666750370.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P1789880500024683239

`A000010(A345052(n+1)/A173557(n+1))`
-/

namespace A364932.P1789880500024683239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A345052 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ))).toNat

end

end A364932.P1789880500024683239

namespace A364932

/-- `A000010(A345052(n+1)/A173557(n+1))` -/
def P1789880500024683239.Spec : Prop :=
  ∀ n, P1789880500024683239.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P1410486663168615886

`A000010(A001616((n+1)²))`
-/

namespace A364932.P1410486663168615886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001616 ((n + 1) ^ 2)).toNat

end

end A364932.P1410486663168615886

namespace A364932

/-- `A000010(A001616((n+1)²))` -/
def P1410486663168615886.Spec : Prop :=
  ∀ n, P1410486663168615886.a n = A364932 (n + 1)

end A364932

/-! ## A364932.P2621685351685374912

`A000010(A392166((n+1)²))`
-/

namespace A364932.P2621685351685374912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A392166 ((n + 1) ^ 2)).toNat

end

end A364932.P2621685351685374912

namespace A364932

/-- `A000010(A392166((n+1)²))` -/
def P2621685351685374912.Spec : Prop :=
  ∀ n, P2621685351685374912.a n = A364932 (n + 1)

end A364932

/-!
# A364933: a(n) = Sum_{k=1..n} A191898(n,k)*[A191904(n,k) = A191898(n,k)].

The programs for A364933, the canonical program `A364933.P7847543960833524069` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364933 has offset 1).

The definition of A364933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A364933.P7580898597720627264

`A057859(n+1)-A074372(n+1)`
-/

namespace A364933.P7580898597720627264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - A074372 (n + 1)

end

end A364933.P7580898597720627264

namespace A364933

/-- `A057859(n+1)-A074372(n+1)` -/
def P7580898597720627264.Spec : Prop :=
  ∀ n, P7580898597720627264.a n = A364933 (n + 1)

end A364933

/-! ## A364933.P7847543960833524069

`A109606(n+1)-A055631(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A364933

/-- `A109606(n+1)-A055631(n+1)` -/
def P7847543960833524069.Spec : Prop :=
  ∀ n, P7847543960833524069.a n = A364933 (n + 1)

theorem P7847543960833524069.correct : P7847543960833524069.Spec := by
  intro n
  simp only [A364933, Nat.add_sub_cancel]

end A364933

/-! ## A364933.P4451092659396012589

`A073757(n+1)-A349215(n+1)`
-/

namespace A364933.P4451092659396012589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A349215 (n + 1)

end

end A364933.P4451092659396012589

namespace A364933

/-- `A073757(n+1)-A349215(n+1)` -/
def P4451092659396012589.Spec : Prop :=
  ∀ n, P4451092659396012589.a n = A364933 (n + 1)

end A364933

/-! ## A364933.P5791298655317827343

`A000010(n+1)-(A055631(n+1)+1)`
-/

namespace A364933.P5791298655317827343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - (A055631 (n + 1) + 1)

end

end A364933.P5791298655317827343

namespace A364933

/-- `A000010(n+1)-(A055631(n+1)+1)` -/
def P5791298655317827343.Spec : Prop :=
  ∀ n, P5791298655317827343.a n = A364933 (n + 1)

end A364933

/-! ## A364933.P1345044012085730072

`A057859(n+1)-(A008472(n+1)+1)`
-/

namespace A364933.P1345044012085730072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - (A008472 (n + 1) + 1)

end

end A364933.P1345044012085730072

namespace A364933

/-- `A057859(n+1)-(A008472(n+1)+1)` -/
def P1345044012085730072.Spec : Prop :=
  ∀ n, P1345044012085730072.a n = A364933 (n + 1)

end A364933

/-!
# A364938: E.g.f. satisfies A(x) = exp( x / (1 - x*A(x))^3 ).

The programs for A364938, there is no canonical definition to state claims against.
-/

/-! ## A364938.P15709091889709206178

`A004273(A172416(∑[n]))`
-/

namespace A364938.P15709091889709206178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A172416 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A364938.P15709091889709206178

/-!
# A364939: E.g.f. satisfies A(x) = exp( x*A(x) / (1 - x*A(x))^2 ).

The programs for A364939, there is no canonical definition to state claims against.
-/

/-! ## A364939.P14488110238125550099

`xor(1, A132270(A007696(n+1)))`
-/

namespace A364939.P14488110238125550099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A132270 (A007696 (n + 1)).toNat)

end

end A364939.P14488110238125550099

/-!
# A364940: E.g.f. satisfies A(x) = exp( x*A(x) / (1 - x*A(x))^3 ).

The programs for A364940, there is no canonical definition to state claims against.
-/

/-! ## A364940.P196402916707986473

`A028242(A059760(n+1))+n`
-/

namespace A364940.P196402916707986473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A059760 (n + 1)).toNat + (n : ℤ)

end

end A364940.P196402916707986473

/-!
# A364941: E.g.f. satisfies A(x) = exp( x*A(x)^2 / (1 - x*A(x))^2 ).

The programs for A364941, there is no canonical definition to state claims against.
-/

/-! ## A364941.P4121931928722115391

`A074184(A366235(n))`
-/

namespace A364941.P4121931928722115391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074184 (A366235 n).toNat

end

end A364941.P4121931928722115391

/-!
# A364942: E.g.f. satisfies A(x) = exp( x*A(x)^2 / (1 - x*A(x))^3 ).

The programs for A364942, there is no canonical definition to state claims against.
-/

/-! ## A364942.P11589968261200665453

`ceil((ceil((A000203(A138178(2*n))-n)/2)-n)/2)`
-/

namespace A364942.P11589968261200665453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A000203 (A138178 (2 * n)).toNat - (n : ℤ) : ℚ) / 2⌉ - (n : ℤ) : ℚ) / 2⌉

end

end A364942.P11589968261200665453

/-!
# A364944: Order of Aut^4(C_n) = Aut(Aut(Aut(Aut(C_n)))), where C_n is the cyclic group of order n.

The programs for A364944, there is no canonical definition to state claims against.
-/

/-! ## A364944.P17444530952470778626

`A275216(n)*A364917(n+1)`
-/

namespace A364944.P17444530952470778626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275216 n * A364917 (n + 1)

end

end A364944.P17444530952470778626

/-! ## A364944.P4377182477335383631

`lcm(A152831(n), A364917(n+1))`
-/

namespace A364944.P4377182477335383631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A152831 n) (A364917 (n + 1))

end

end A364944.P4377182477335383631

/-! ## A364944.P2176072638697726266

`A364917(n+1)+A076142(n+1)`
-/

namespace A364944.P2176072638697726266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364917 (n + 1) + A076142 (n + 1)

end

end A364944.P2176072638697726266

/-! ## A364944.P2070375263780105809

`Δ[A379096(n+1)]*A364917(n+1)`
-/

namespace A364944.P2070375263780105809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A364917 (n + 1)

end

end A364944.P2070375263780105809

/-! ## A364944.P5989564010561538908

`A364917(n+1)+char[A255048(3*n+2)]`
-/

namespace A364944.P5989564010561538908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255048 (3 * n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364917 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A364944.P5989564010561538908

/-!
# A364945: Decimal expansion of 1-Catalan.

The programs for A364945, there is no canonical definition to state claims against.
-/

/-! ## A364945.P6706863419311988459

`9-A006752(n)`
-/

namespace A364945.P6706863419311988459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A006752 n

end

end A364945.P6706863419311988459

/-!
# A364946: Sixth Lie-Betti number of a path graph on n vertices.

The programs for A364946, there is no canonical definition to state claims against.
-/

/-! ## A364946.P1765404589111718285

`A000045(n)*A305928(A005803(n))`
-/

namespace A364946.P1765404589111718285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A305928 (A005803 n).toNat

end

end A364946.P1765404589111718285

/-! ## A364946.P11949489890544617414

`A172471(A179424(n+1))`
-/

namespace A364946.P11949489890544617414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A179424 (n + 1)).toNat

end

end A364946.P11949489890544617414

/-!
# A364947: Prime powers that are equal to the sum of the first k prime powers (including 1) for some k.

The programs for A364947, there is no canonical definition to state claims against.
-/

/-! ## A364947.P14005699090645470144

`record[A020639(A024918(n+1))]`
-/

namespace A364947.P14005699090645470144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A024918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364947.P14005699090645470144

/-! ## A364947.P4113846906276357207

`filter[A024918(n+1), A355937(#)]`
-/

namespace A364947.P4113846906276357207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A364947.P4113846906276357207

/-! ## A364947.P5899612447436210119

`∩[A024918(n+1), A061345(n)]`
-/

namespace A364947.P5899612447436210119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364947.P5899612447436210119

/-! ## A364947.P6624770363413553137

`∩[A000961(n+1), A024918(n+1)]`
-/

namespace A364947.P6624770363413553137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364947.P6624770363413553137

/-! ## A364947.P1728459459108159571

`∩[A006005(n+1), A024918(n+1)]`
-/

namespace A364947.P1728459459108159571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364947.P1728459459108159571

/-!
# A364949: a(n) = gcd(A348717(n), A348717(A163511(n))).

The programs for A364949, there is no canonical definition to state claims against.
-/

/-! ## A364949.P9542549826814060567

`gcd(A348717(A163511(n+1)), A348717(n+1))`
-/

namespace A364949.P9542549826814060567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A348717 (A163511 (n + 1)).toNat) (A348717 (n + 1))

end

end A364949.P9542549826814060567

/-! ## A364949.P5857590427849301618

`gcd(A001222(A056450(n)), A046523(n+1))`
-/

namespace A364949.P5857590427849301618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A056450 n).toNat) (A046523 (n + 1))

end

end A364949.P5857590427849301618

/-! ## A364949.P11039455998391687568

`and(A046523(n+1), A161387(A157703(n)))`
-/

namespace A364949.P11039455998391687568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046523 (n + 1)) (A161387 (A157703 n).toNat)

end

end A364949.P11039455998391687568

/-! ## A364949.P3638729562621971109

`A118914(A057876(n+5))*A328400(n+1)`
-/

namespace A364949.P3638729562621971109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A057876 (n + 5)).toNat * A328400 (n + 1)

end

end A364949.P3638729562621971109

/-! ## A364949.P13059574190701843011

`gcd(A000005(A213248(n+1)), A002378(n))`
-/

namespace A364949.P13059574190701843011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A213248 (n + 1)).toNat) (A002378 n)

end

end A364949.P13059574190701843011

/-!
# A364950: Lexicographically earliest infinite sequence such that a(i) = a(j) => A025480(i) = A025480(j) and A348717(i) = A348717(j) for all i, j >= 1.

The programs for A364950, there is no canonical definition to state claims against.
-/

/-! ## A364950.P10727764039409658304

`A373371(A112770(n+1))+A364951(n+1)`
-/

namespace A364950.P10727764039409658304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373371 (A112770 (n + 1)).toNat + A364951 (n + 1)

end

end A364950.P10727764039409658304

/-! ## A364950.P885461996875357808

`A364951(n+1)%A277319(A161612(n+1))`
-/

namespace A364950.P885461996875357808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364951 (n + 1)) (A277319 (A161612 (n + 1)).toNat)

end

end A364950.P885461996875357808

/-! ## A364950.P13671888099468644558

`A001221(A048059(2*n+3))*A364951(n+1)`
-/

namespace A364950.P13671888099468644558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A048059 (2 * n + 3)).toNat * A364951 (n + 1)

end

end A364950.P13671888099468644558

/-! ## A364950.P17154075211027252246

`A364951(n+1)+A000122(A205533(n+1))`
-/

namespace A364950.P17154075211027252246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364951 (n + 1) + A000122 (A205533 (n + 1)).toNat

end

end A364950.P17154075211027252246

/-! ## A364950.P17816830620204410566

`A364951(n+1)+A000035(A337666(n+1))`
-/

namespace A364950.P17816830620204410566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364951 (n + 1) + A000035 (A337666 (n + 1)).toNat

end

end A364950.P17816830620204410566

/-! ## A364950.P5859848879163366424

`A364951(n+1)+A098725(A000040(n+2)²)-1`
-/

namespace A364950.P5859848879163366424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364951 (n + 1) + (A098725 (A000040 (n + 2) ^ 2).toNat - 1)

end

end A364950.P5859848879163366424

/-! ## A364950.P8981653347761794973

`A364951(n+1)+A000007(A191612(n+1))`
-/

namespace A364950.P8981653347761794973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364951 (n + 1) + A000007 (A191612 (n + 1)).toNat

end

end A364950.P8981653347761794973

/-! ## A364950.P8060702680382612029

`A364951(n+1)+A325780(n+2)%2`
-/

namespace A364950.P8060702680382612029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364951 (n + 1) + Int.tmod (A325780 (n + 2)) 2

end

end A364950.P8060702680382612029

/-!
# A364952: Dirichlet inverse of A364557, which is Möbius transform of A005941.

The programs for A364952, there is no canonical definition to state claims against.
-/

/-! ## A364952.P7302293112465408545

`∑{d}[n+1, A364574(#)]`
-/

namespace A364952.P7302293112465408545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A364574 d

end

end A364952.P7302293112465408545

/-! ## A364952.P4942019393350479514

`A364953(A156552(n+1))`
-/

namespace A364952.P4942019393350479514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364953 (A156552 (n + 1)).toNat

end

end A364952.P4942019393350479514

/-! ## A364952.P4965499545024455379

`A364953(A005941(n+1)-1)`
-/

namespace A364952.P4965499545024455379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364953 (A005941 (n + 1) - 1).toNat

end

end A364952.P4965499545024455379

/-! ## A364952.P7075631150308900646

`A364953(A364559(n+1)+n)`
-/

namespace A364952.P7075631150308900646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364953 (A364559 (n + 1) + (n : ℤ)).toNat

end

end A364952.P7075631150308900646

/-! ## A364952.P4061487350323090087

`A364953((A322993(2*(n+1))-1)/2)`
-/

namespace A364952.P4061487350323090087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364953 (SequenceMachineLib.roundAway ((A322993 (2 * (n + 1)) - 1 : ℚ) / 2)).toNat

end

end A364952.P4061487350323090087

/-!
# A364953: a(n) = A364952(A005940(1+n)), where A364952 is Dirichlet inverse of A364557, which is Möbius transform of A005941 [the inverse permutation of A005940].

The programs for A364953, there is no canonical definition to state claims against.
-/

/-! ## A364953.P17428099724464033048

`A364952(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364953.P17428099724464033048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364952 (A005940 (1 + n)).toNat

end

end A364953.P17428099724464033048

/-! ## A364953.P11482517581129359110

`A364952(A340362(n+1)+A324106(n+1))`
-/

namespace A364953.P11482517581129359110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364952 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A364953.P11482517581129359110

/-! ## A364953.P17686163491742411680

`A364952(A324641(n+1)-A324640(n+1))`
-/

namespace A364953.P17686163491742411680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364952 (A324641 (n + 1) - A324640 (n + 1)).toNat

end

end A364953.P17686163491742411680

/-!
# A364954: The length of the common prefix in the binary expansions of A156552(n) and A156552(A163511(n)).

The programs for A364954, there is no canonical definition to state claims against.
-/

/-! ## A364954.P16767839934256110733

`A252464(n+1)-A364955(n+1)`
-/

namespace A364954.P16767839934256110733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A364955 (n + 1)

end

end A364954.P16767839934256110733

/-! ## A364954.P15390379616137421857

`A364569(n+1)+A364570(n+1)-A364955(n+1)`
-/

namespace A364954.P15390379616137421857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364569 (n + 1) + (A364570 (n + 1) - A364955 (n + 1))

end

end A364954.P15390379616137421857

/-! ## A364954.P10014593843998130695

`A051903(A179872(3*n+1)^A051903(n+1))`
-/

namespace A364954.P10014593843998130695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((A179872 (3 * n + 1) : ℚ) ^ (A051903 (n + 1) : ℤ))).toNat

end

end A364954.P10014593843998130695

/-!
# A364955: a(n) = A252464(n) - A364954(n), where A364954(n) is the length of the common prefix in the binary expansions of A156552(n) and A156552(A163511(n)).

The programs for A364955, there is no canonical definition to state claims against.
-/

/-! ## A364955.P3130582295829491611

`A252464(n+1)-A364954(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A364955.P3130582295829491611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252464 (n + 1) - A364954 (n + 1)

end

end A364955.P3130582295829491611

/-! ## A364955.P10056111201975839165

`A056239(A325351(n+1))-A364954(n+1)`
-/

namespace A364955.P10056111201975839165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A325351 (n + 1)).toNat - A364954 (n + 1)

end

end A364955.P10056111201975839165

/-! ## A364955.P1142807470904899538

`A364569(n+1)+A364570(n+1)-A364954(n+1)`
-/

namespace A364955.P1142807470904899538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364569 (n + 1) + (A364570 (n + 1) - A364954 (n + 1))

end

end A364955.P1142807470904899538

/-! ## A364955.P11209823745020341353

`A048865(A006530(n+1))+A001222(n+1)-A364954(n+1)`
-/

namespace A364955.P11209823745020341353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A006530 (n + 1)).toNat + A001222 (n + 1) - A364954 (n + 1)

end

end A364955.P11209823745020341353

/-! ## A364955.P625850354353927883

`A196358(record[and(2*n, -n)+1])%∏{p}[n+1, #-1]`
-/

namespace A364955.P625850354353927883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ)) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1))

end

end A364955.P625850354353927883

/-!
# A364958: Fixed points of A356867, where A356867 is Sycamore's Doudna variant D(3).

The programs for A364958, there is no canonical definition to state claims against.
-/

/-! ## A364958.P15906131533962802616

`eq[1, A365715(n+1)]+1`
-/

namespace A364958.P15906131533962802616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365715 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364958.P15906131533962802616

/-! ## A364958.P12922147475829045893

`eq[1, A365465(n+1)]+1`
-/

namespace A364958.P12922147475829045893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364958.P12922147475829045893

/-! ## A364958.P10221536771486994353

`eq[1, A365462(n+1)+1]+1`
-/

namespace A364958.P10221536771486994353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365462 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364958.P10221536771486994353

/-! ## A364958.P5941019459147334113

`eq[n+1, A356867(n+1)]+1`
-/

namespace A364958.P5941019459147334113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356867 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364958.P5941019459147334113

/-! ## A364958.P2590106745695391121

`record[A000027(n+1)/A365465(n+1)]`
-/

namespace A364958.P2590106745695391121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A365465 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364958.P2590106745695391121

/-!
# A364960: Numbers k such that A005940(k) is either k itself or its descendant in Doudna-tree, A005940.

The programs for A364960, there is no canonical definition to state claims against.
-/

/-! ## A364960.P11271276857375474136

`lt[A364570(n+1), 1]+1`
-/

namespace A364960.P11271276857375474136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364570 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A364960.P11271276857375474136

/-! ## A364960.P13054978936440386269

`eq[A000007(n), A364570(A028310(n))]`
-/

namespace A364960.P13054978936440386269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364570 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364960.P13054978936440386269

/-! ## A364960.P3350405440804868746

`record[gcd(A005941(n+1), A368815(n+1))]`
-/

namespace A364960.P3350405440804868746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005941 (n + 1)) (A368815 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364960.P3350405440804868746

/-! ## A364960.P2565776999709412525

`record[A335460(2*n+3)+A333219(n+1)]`
-/

namespace A364960.P2565776999709412525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335460 (2 * n + 3) + A333219 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364960.P2565776999709412525

/-! ## A364960.P13655128577225585954

`∩[A067939(n+1), A380573(n+1)]`
-/

namespace A364960.P13655128577225585954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067939 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364960.P13655128577225585954

/-!
# A364961: Odd numbers k such that A005940(k) is either k itself or its descendant in Doudna-tree, A005940.

The programs for A364961, there is no canonical definition to state claims against.
-/

/-! ## A364961.P14360132546214172650

`record[A000265(A364960(n+1))]`
-/

namespace A364961.P14360132546214172650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A364960 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364961.P14360132546214172650

/-! ## A364961.P14431581552381663101

`filter[A364960(n+1), A374134(#)]`
-/

namespace A364961.P14431581552381663101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A364961.P14431581552381663101

/-!
# A364962: Odd numbers k such that A005941(k) is either k itself or its descendant in Doudna-tree, A005940.

The programs for A364962, there is no canonical definition to state claims against.
-/

/-! ## A364962.P7350369937008603251

`lt[A321452(n), A321878(n+1)]`
-/

namespace A364962.P7350369937008603251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321452 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321878 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A364962.P7350369937008603251

/-! ## A364962.P16964824768084263449

`eq[A026498(A054554(n+1)), A304442(n)]`
-/

namespace A364962.P16964824768084263449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026498 (A054554 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A364962.P16964824768084263449

/-! ## A364962.P14641677686293870514

`A008578(A325440(n+1))%A068590(n+3)`
-/

namespace A364962.P14641677686293870514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (A325440 (n + 1)).toNat) (A068590 (n + 3))

end

end A364962.P14641677686293870514

/-! ## A364962.P11659139090558548390

`A008578(A325440(n+1)%A259081(n))`
-/

namespace A364962.P11659139090558548390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Int.tmod (A325440 (n + 1)) (A259081 n)).toNat

end

end A364962.P11659139090558548390

/-! ## A364962.P14462056999183917510

`record[A020639(A123682(n+1)+n)]`
-/

namespace A364962.P14462056999183917510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A123682 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364962.P14462056999183917510

/-!
# A364964: Numbers k such that k is a multiple of A243071(k).

The programs for A364964, there is no canonical definition to state claims against.
-/

/-! ## A364964.P17895001646024967093

`∩[A092232(n+1), A331819(n+1)]`
-/

namespace A364964.P17895001646024967093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331819 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364964.P17895001646024967093

/-! ## A364964.P8477228364581970491

`∩[A067290(n+1), A092232(n+1)]`
-/

namespace A364964.P8477228364581970491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067290 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364964.P8477228364581970491

/-! ## A364964.P3034486802313110151

`A138768(A016028(n+2))`
-/

namespace A364964.P3034486802313110151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138768 (A016028 (n + 2)).toNat

end

end A364964.P3034486802313110151

/-! ## A364964.P2416953378237540973

`∩[A092232(n+1), A055562(n)]`
-/

namespace A364964.P2416953378237540973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055562 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364964.P2416953378237540973

/-! ## A364964.P6857204699259145839

`∩[A092232(n+1), A230319(n)]`
-/

namespace A364964.P6857204699259145839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230319 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364964.P6857204699259145839

/-!
# A364969: a(n) = a(a(n-1)) if n is even, a(n) is the number of times a(n-1) occurs in the sequence so far if n is odd, with a(1) = 1.

The programs for A364969, there is no canonical definition to state claims against.
-/

/-! ## A364969.P10075641269923898099

`A344616(lcm(A000005(n+2), A085788(n+3)))`
-/

namespace A364969.P10075641269923898099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.lcm (A000005 (n + 2)) (A085788 (n + 3)))

end

end A364969.P10075641269923898099

/-! ## A364969.P7693726275041220030

`A374769(A052049(n+1))+A008284(3*n+1)`
-/

namespace A364969.P7693726275041220030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374769 (A052049 (n + 1)).toNat + A008284 (3 * n + 1)

end

end A364969.P7693726275041220030

/-! ## A364969.P1013967296121948188

`A297770(A008277(3*n+2)*A297791(n+5))`
-/

namespace A364969.P1013967296121948188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A008277 (3 * n + 2) * A297791 (n + 5)).toNat

end

end A364969.P1013967296121948188

/-! ## A364969.P14397040238973551643

`gcd(A007090(A139331(3*n+1)), A286610(n+1))`
-/

namespace A364969.P14397040238973551643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007090 (A139331 (3 * n + 1)).toNat) (A286610 (n + 1))

end

end A364969.P14397040238973551643

/-! ## A364969.P11048104784307056703

`A274353(A061279(n+1))`
-/

namespace A364969.P11048104784307056703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274353 (A061279 (n + 1)).toNat

end

end A364969.P11048104784307056703

/-!
# A364970: a(n) = Sum_{k=1..n} binomial(floor(n/k)+2,3).

The programs for A364970, the canonical program `A364970.P269985968203337812` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364970 has offset 1).

The definition of A364970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024916, A064602, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364970.P269985968203337812

`(A064602(n+1)+A024916(n+1))/2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A364970

/-- `(A064602(n+1)+A024916(n+1))/2` -/
def P269985968203337812.Spec : Prop :=
  ∀ n, P269985968203337812.a n = (A364970 (n + 1) : ℚ)

end A364970

/-! ## A364970.P18405168688651036868

`∑[∑{d}[n+1, C(#+1, 2)]]`
-/

namespace A364970.P18405168688651036868
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose (d + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364970.P18405168688651036868

namespace A364970

/-- `∑[∑{d}[n+1, C(#+1, 2)]]` -/
def P18405168688651036868.Spec : Prop :=
  ∀ n, (P18405168688651036868.a n : ℤ) = A364970 (n + 1)

end A364970

/-! ## A364970.P2342329820147755131

`∑[A007437(n+1)]`
-/

namespace A364970.P2342329820147755131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364970.P2342329820147755131

namespace A364970

/-- `∑[A007437(n+1)]` -/
def P2342329820147755131.Spec : Prop :=
  ∀ n, P2342329820147755131.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P11137102933583251461

`∑[∑{d}[n+1, A000217(#)]]`
-/

namespace A364970.P11137102933583251461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000217 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364970.P11137102933583251461

namespace A364970

/-- `∑[∑{d}[n+1, A000217(#)]]` -/
def P11137102933583251461.Spec : Prop :=
  ∀ n, P11137102933583251461.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P3388210656917833575

`A366970(n+1)+A222548(n+1)`
-/

namespace A364970.P3388210656917833575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366970 (n + 1) + A222548 (n + 1)

end

end A364970.P3388210656917833575

namespace A364970

/-- `A366970(n+1)+A222548(n+1)` -/
def P3388210656917833575.Spec : Prop :=
  ∀ n, P3388210656917833575.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P17247231395817212225

`A366984(n+1)-A366983(n+1)`
-/

namespace A364970.P17247231395817212225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366984 (n + 1) - A366983 (n + 1)

end

end A364970.P17247231395817212225

namespace A364970

/-- `A366984(n+1)-A366983(n+1)` -/
def P17247231395817212225.Spec : Prop :=
  ∀ n, P17247231395817212225.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P7269929334309048727

`A366984(n+1)-(A024916(n+1)+A006218(n+1))`
-/

namespace A364970.P7269929334309048727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366984 (n + 1) - (A024916 (n + 1) + A006218 (n + 1))

end

end A364970.P7269929334309048727

namespace A364970

/-- `A366984(n+1)-(A024916(n+1)+A006218(n+1))` -/
def P7269929334309048727.Spec : Prop :=
  ∀ n, P7269929334309048727.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P14969142117743281357

`∑[A092346(n+1)/2]`
-/

namespace A364970.P14969142117743281357
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092346 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A364970.P14969142117743281357

namespace A364970

/-- `∑[A092346(n+1)/2]` -/
def P14969142117743281357.Spec : Prop :=
  ∀ n, P14969142117743281357.a n = (A364970 (n + 1) : ℚ)

end A364970

/-! ## A364970.P1718092283443861070

`A366967(n+1)+A024916(n+1)`
-/

namespace A364970.P1718092283443861070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366967 (n + 1) + A024916 (n + 1)

end

end A364970.P1718092283443861070

namespace A364970

/-- `A366967(n+1)+A024916(n+1)` -/
def P1718092283443861070.Spec : Prop :=
  ∀ n, P1718092283443861070.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P7733780041491293140

`A064602(n+1)-A366967(n+1)`
-/

namespace A364970.P7733780041491293140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064602 (n + 1) - A366967 (n + 1)

end

end A364970.P7733780041491293140

namespace A364970

/-- `A064602(n+1)-A366967(n+1)` -/
def P7733780041491293140.Spec : Prop :=
  ∀ n, P7733780041491293140.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P2857535539988787756

`A006218(n+1)+A366967(n+1)+A236632(n+1)`
-/

namespace A364970.P2857535539988787756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (n + 1) + (A366967 (n + 1) + A236632 (n + 1))

end

end A364970.P2857535539988787756

namespace A364970

/-- `A006218(n+1)+A366967(n+1)+A236632(n+1)` -/
def P2857535539988787756.Spec : Prop :=
  ∀ n, P2857535539988787756.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P597741531713869256

`A366967(n+1)+A366983(n+1)-A006218(n+1)`
-/

namespace A364970.P597741531713869256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366967 (n + 1) + (A366983 (n + 1) - A006218 (n + 1))

end

end A364970.P597741531713869256

namespace A364970

/-- `A366967(n+1)+A366983(n+1)-A006218(n+1)` -/
def P597741531713869256.Spec : Prop :=
  ∀ n, P597741531713869256.a n = A364970 (n + 1)

end A364970

/-! ## A364970.P7575300933688201242

`A222548(n+1)+A366967(n+1)-A236632(n+1)`
-/

namespace A364970.P7575300933688201242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222548 (n + 1) + (A366967 (n + 1) - A236632 (n + 1))

end

end A364970.P7575300933688201242

namespace A364970

/-- `A222548(n+1)+A366967(n+1)-A236632(n+1)` -/
def P7575300933688201242.Spec : Prop :=
  ∀ n, P7575300933688201242.a n = A364970 (n + 1)

end A364970

/-!
# A364973: a(n) = number of degree n rational curves in the complex projective plane which satisfy an order 3n-1 local tangency constraint.

The programs for A364973, there is no canonical definition to state claims against.
-/

/-! ## A364973.P4462593021913252559

`A353195(n+1)/A016789(n)`
-/

namespace A364973.P4462593021913252559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353195 (n + 1) : ℚ) / (A016789 n : ℚ)

end

end A364973.P4462593021913252559

/-! ## A364973.P8552095352964718616

`A353195(n+1)/A069770(A069770(3*n+2))`
-/

namespace A364973.P8552095352964718616
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A353195 (n + 1) : ℚ) / (A069770 (A069770 (3 * n + 2)).toNat : ℚ)

end

end A364973.P8552095352964718616

/-!
# A364975: Admirable numbers (A111592) with a record gap to the next admirable number.

The programs for A364975, there is no canonical definition to state claims against.
-/

/-! ## A364975.P7507334683739958402

`A175837(A005509(n))`
-/

namespace A364975.P7507334683739958402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175837 (A005509 n).toNat

end

end A364975.P7507334683739958402

/-!
# A364976: 3-abundant numbers k such that k/(sigma(k)-3*k) is an integer.

The programs for A364976, there is no canonical definition to state claims against.
-/

/-! ## A364976.P92063366325899809

`∩[A068545(n+1), A215012(n+1)]`
-/

namespace A364976.P92063366325899809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364976.P92063366325899809

/-! ## A364976.P16747104930027274296

`∩[A169644(n+1), A215012(n+1)]`
-/

namespace A364976.P16747104930027274296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169644 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364976.P16747104930027274296

/-!
# A364977: Numbers k such that k/(3*k - sigma(k)) is a positive integer.

The programs for A364977, there is no canonical definition to state claims against.
-/

/-! ## A364977.P11136907222162429730

`eq[1, A388283(n+1)]+1`
-/

namespace A364977.P11136907222162429730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A364977.P11136907222162429730

/-! ## A364977.P15369443954835704259

`A065475(eq[1, A388283(n+1)])`
-/

namespace A364977.P15369443954835704259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A364977.P15369443954835704259

/-!
# A364978: E.g.f. satisfies A(x) = 1 + x*exp(x*A(x)^2).

The programs for A364978, there is no canonical definition to state claims against.
-/

/-! ## A364978.P3963878129373549296

`A138585(n^n+1)`
-/

namespace A364978.P3963878129373549296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138585 (n ^ n + 1)

end

end A364978.P3963878129373549296

/-! ## A364978.P4718957212834181385

`or(n, A065033(A239840(n)))`
-/

namespace A364978.P4718957212834181385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A065033 (A239840 n).toNat)

end

end A364978.P4718957212834181385

/-!
# A364979: E.g.f. satisfies A(x) = 1 + x*exp(x*A(x)^3).

The programs for A364979, there is no canonical definition to state claims against.
-/

/-! ## A364979.P11800498301744391407

`A249773(n^6+1)`
-/

namespace A364979.P11800498301744391407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249773 (n ^ 6 + 1)

end

end A364979.P11800498301744391407

/-!
# A364980: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x*A(x)^2).

The programs for A364980, there is no canonical definition to state claims against.
-/

/-! ## A364980.P11438717020423759961

`A281144(A184884(n))`
-/

namespace A364980.P11438717020423759961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281144 (A184884 n).toNat

end

end A364980.P11438717020423759961

/-!
# A364981: E.g.f. satisfies A(x) = 1 + x*A(x)*exp(x*A(x)^3).

The programs for A364981, there is no canonical definition to state claims against.
-/

/-! ## A364981.P3373124319289572052

`A320509(n)+A001481(A301419(n))`
-/

namespace A364981.P3373124319289572052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320509 n + A001481 (A301419 n).toNat

end

end A364981.P3373124319289572052

/-!
# A364982: E.g.f. satisfies A(x) = 1 + x*A(x)^2*exp(x*A(x)^2).

The programs for A364982, there is no canonical definition to state claims against.
-/

/-! ## A364982.P18270219986640508443

`A043096(A113669(n)+1)`
-/

namespace A364982.P18270219986640508443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (A113669 n + 1).toNat

end

end A364982.P18270219986640508443

/-!
# A364983: E.g.f. satisfies A(x) = 1 + x*exp(x)*A(x)^3.

The programs for A364983, there is no canonical definition to state claims against.
-/

/-! ## A364983.P16549007639133808108

`A262038(A098623(n))`
-/

namespace A364983.P16549007639133808108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (A098623 n).toNat

end

end A364983.P16549007639133808108

/-!
# A364984: E.g.f. satisfies A(x) = 1 + x*A(x)^3*exp(x*A(x)).

The programs for A364984, there is no canonical definition to state claims against.
-/

/-! ## A364984.P13154325038236878703

`A169679(A377065(n))+A115066(n)`
-/

namespace A364984.P13154325038236878703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169679 (A377065 n).toNat + A115066 n

end

end A364984.P13154325038236878703

/-!
# A364985: E.g.f. satisfies A(x) = 1 + x*A(x)^3*exp(x*A(x)^2).

The programs for A364985, there is no canonical definition to state claims against.
-/

/-! ## A364985.P8926987751260719189

`A048050(C(A191876(2*n+1), n))+1`
-/

namespace A364985.P8926987751260719189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (Nat.choose (A191876 (2 * n + 1)).toNat n) + 1

end

end A364985.P8926987751260719189

/-!
# A364986: E.g.f. satisfies A(x) = 1 + x*A(x)^3*exp(x*A(x)^3).

The programs for A364986, there is no canonical definition to state claims against.
-/

/-! ## A364986.P7716118357242599632

`A356914(n)+A188333(A001187(n))`
-/

namespace A364986.P7716118357242599632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356914 n + A188333 (A001187 n).toNat

end

end A364986.P7716118357242599632

/-!
# A364989: E.g.f. satisfies A(x) = 1 + x*A(x)^4*exp(x*A(x)^4).

The programs for A364989, there is no canonical definition to state claims against.
-/

/-! ## A364989.P2918931745449501217

`A356960(n)+A107017(A060434(n))`
-/

namespace A364989.P2918931745449501217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356960 n + A107017 (A060434 n).toNat

end

end A364989.P2918931745449501217

/-!
# A364991: Primitive coreful 3-abundant numbers: coreful 3-abundant numbers (A340109) that are powerful numbers (A001694).

The programs for A364991, there is no canonical definition to state claims against.
-/

/-! ## A364991.P17782730615974326357

`∩[A340109(n+1), A356871(n+1)]`
-/

namespace A364991.P17782730615974326357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356871 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364991.P17782730615974326357

/-! ## A364991.P16856272913503511394

`∩[A340109(n+1), A363169(n+1)]`
-/

namespace A364991.P16856272913503511394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364991.P16856272913503511394

/-! ## A364991.P5532991724404863549

`∩[A340109(n+1), A363216(n+1)]`
-/

namespace A364991.P5532991724404863549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364991.P5532991724404863549

/-! ## A364991.P1368640260505605388

`∩[A340109(n+1), A372404(n+1)]`
-/

namespace A364991.P1368640260505605388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364991.P1368640260505605388

/-! ## A364991.P2760050996240002695

`∩[A340109(n+1), A390010(n+1)]`
-/

namespace A364991.P2760050996240002695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364991.P2760050996240002695

/-! ## A364991.P5131834179106012613

`∩[A340109(n+1), A390950(n+1)]`
-/

namespace A364991.P5131834179106012613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364991.P5131834179106012613

/-! ## A364991.P12879349251122323859

`∩[A340109(n+1), A395197(n+1)]`
-/

namespace A364991.P12879349251122323859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364991.P12879349251122323859

/-!
# A364992: Number of chordless cycles (of length >=4) in the complement of the n-halved cube graph.

The programs for A364992, there is no canonical definition to state claims against.
-/

/-! ## A364992.P13255358862552894378

`A008665(A261005(n))%A000169(n+1)`
-/

namespace A364992.P13255358862552894378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008665 (A261005 n).toNat) (A000169 (n + 1))

end

end A364992.P13255358862552894378

/-! ## A364992.P9009533228787393393

`A114632(A000010(3*(n+1)))%A159604(n)`
-/

namespace A364992.P9009533228787393393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114632 (A000010 (3 * (n + 1))).toNat) (A159604 n)

end

end A364992.P9009533228787393393

/-!
# A364994: Number of chordless cycles (of length >=4) in the complement of the n-Mycielski graph.

The programs for A364994, there is no canonical definition to state claims against.
-/

/-! ## A364994.P13801141663668212683

`A004086(A112332(n))-1`
-/

namespace A364994.P13801141663668212683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A112332 n).toNat - 1

end

end A364994.P13801141663668212683

/-!
# A364996: Union of A360767 and A363082.

The programs for A364996, there is no canonical definition to state claims against.
-/

/-! ## A364996.P2509561260851168997

`∪[A360767(n+1), A363082(n+1)]`
-/

namespace A364996.P2509561260851168997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364996.P2509561260851168997

/-! ## A364996.P17035255236634200842

`∪[A360767(n+1), A364998(n+1)]`
-/

namespace A364996.P17035255236634200842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364996.P17035255236634200842

/-! ## A364996.P14370435980142697578

`∪[A363082(n+1), A364997(n+1)]`
-/

namespace A364996.P14370435980142697578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364996.P14370435980142697578

/-! ## A364996.P6653309613380429858

`∩[A323733(n+1), A389227(n+1)]`
-/

namespace A364996.P6653309613380429858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389227 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364996.P6653309613380429858

/-! ## A364996.P15123863141082212869

`∩[A323733(n+1), A392537(n+1)]`
-/

namespace A364996.P15123863141082212869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364996.P15123863141082212869

/-!
# A364997: Numbers k neither squarefree nor prime power such that rad(k)*A119288(k) > k but rad(k)*A053669(k) < k.

The programs for A364997, there is no canonical definition to state claims against.
-/

/-! ## A364997.P3925729554480745724

`∪[A366460(n+1), A369150(n+1)]`
-/

namespace A364997.P3925729554480745724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366460 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P3925729554480745724

/-! ## A364997.P5822765515532413130

`∩[A360765(n+1), A360767(n+1)]`
-/

namespace A364997.P5822765515532413130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P5822765515532413130

/-! ## A364997.P7060752661182543090

`∩[A360767(n+1), A393869(n+1)]`
-/

namespace A364997.P7060752661182543090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P7060752661182543090

/-! ## A364997.P16976679428284436805

`∩[A360765(n+1), A364996(n+1)]`
-/

namespace A364997.P16976679428284436805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360765 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P16976679428284436805

/-! ## A364997.P16978572384169363556

`∩[A364996(n+1), A393869(n+1)]`
-/

namespace A364997.P16978572384169363556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P16978572384169363556

/-! ## A364997.P12790962066176033536

`∩[A046790(n+1), A360767(n+1)]`
-/

namespace A364997.P12790962066176033536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P12790962066176033536

/-! ## A364997.P10421525358531556515

`∩[A082377(n+1), A360767(n+1)]`
-/

namespace A364997.P10421525358531556515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P10421525358531556515

/-! ## A364997.P6782010931175145937

`∩[A047486(n+1), A360767(n+1)]`
-/

namespace A364997.P6782010931175145937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P6782010931175145937

/-! ## A364997.P10191976094301031853

`∩[A106505(n+1), A360767(n+1)]`
-/

namespace A364997.P10191976094301031853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P10191976094301031853

/-! ## A364997.P3015425523048064606

`∩[A229838(n+1), A360767(n+1)]`
-/

namespace A364997.P3015425523048064606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P3015425523048064606

/-! ## A364997.P2819630284496736635

`∩[A321499(n+1), A360767(n+1)]`
-/

namespace A364997.P2819630284496736635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321499 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P2819630284496736635

/-! ## A364997.P10538009795618774675

`∩[A047490(n+1), A360767(n+1)]`
-/

namespace A364997.P10538009795618774675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P10538009795618774675

/-! ## A364997.P9139603768117193161

`∩[A047585(n+1), A360767(n+1)]`
-/

namespace A364997.P9139603768117193161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P9139603768117193161

/-! ## A364997.P1300814895733682152

`∩[A047588(n+1), A360767(n+1)]`
-/

namespace A364997.P1300814895733682152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P1300814895733682152

/-! ## A364997.P18193838710929642353

`filter[A360767(n+1), A144101(#)]`
-/

namespace A364997.P18193838710929642353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A364997.P18193838710929642353

/-! ## A364997.P16307924645724663784

`∩[A144100(n+1), A360767(n+1)]`
-/

namespace A364997.P16307924645724663784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364997.P16307924645724663784

/-!
# A364998: Numbers k neither squarefree nor prime power such that rad(k)*A119288(k) <= k but rad(k)*A053669(k) > k.

The programs for A364998, there is no canonical definition to state claims against.
-/

/-! ## A364998.P18322012838995007741

`filter[A363082(n+1), A105597(#)]`
-/

namespace A364998.P18322012838995007741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A364998.P18322012838995007741

/-! ## A364998.P9221785263233964667

`∩[A360768(n+1), A363082(n+1)]`
-/

namespace A364998.P9221785263233964667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364998.P9221785263233964667

/-! ## A364998.P9635749379636368467

`∩[A363082(n+1), A393201(n+1)]`
-/

namespace A364998.P9635749379636368467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364998.P9635749379636368467

/-! ## A364998.P2941594446373667841

`∩[A360768(n+1), A364996(n+1)]`
-/

namespace A364998.P2941594446373667841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364998.P2941594446373667841

/-! ## A364998.P6533707628053199784

`∩[A046790(n+1), A363082(n+1)]`
-/

namespace A364998.P6533707628053199784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046790 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364998.P6533707628053199784

/-! ## A364998.P9645086457737824249

`filter[A363082(n+1), A144101(#)]`
-/

namespace A364998.P9645086457737824249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144101 (f1 j).toNat = 1) n)

end

end A364998.P9645086457737824249

/-! ## A364998.P5015855728694980960

`∩[A144100(n+1), A363082(n+1)]`
-/

namespace A364998.P5015855728694980960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A364998.P5015855728694980960

/-!
# A364999: Numbers k neither squarefree nor prime power such that both rad(k)*A119288(k) > k and rad(k)*A053669(k) > k.

The programs for A364999, the canonical program `A364999.P3621329991387479077` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A364999 has offset 1).

The definition of A364999 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A039956, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A364999.P3621329991387479077

`2*A039956(n+2)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A364999

/-- `2*A039956(n+2)` -/
def P3621329991387479077.Spec : Prop :=
  ∀ n, P3621329991387479077.a n = A364999 (n + 1)

theorem P3621329991387479077.correct : P3621329991387479077.Spec := by
  intro n
  simp only [A364999, Nat.add_sub_cancel]

end A364999

/-! ## A364999.P15730746003358179689

`4*A056911(n+2)`
-/

namespace A364999.P15730746003358179689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A056911 (n + 2)

end

end A364999.P15730746003358179689

namespace A364999

/-- `4*A056911(n+2)` -/
def P15730746003358179689.Spec : Prop :=
  ∀ n, P15730746003358179689.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P13819938476094454442

`A081770(n+2)`
-/

namespace A364999.P13819938476094454442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081770 (n + 2)

end

end A364999.P13819938476094454442

namespace A364999

/-- `A081770(n+2)` -/
def P13819938476094454442.Spec : Prop :=
  ∀ n, P13819938476094454442.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P3986152271888855144

`2*A016825(A264387(n+2))`
-/

namespace A364999.P3986152271888855144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016825 (A264387 (n + 2)).toNat

end

end A364999.P3986152271888855144

namespace A364999

/-- `2*A016825(A264387(n+2))` -/
def P3986152271888855144.Spec : Prop :=
  ∀ n, P3986152271888855144.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P2814446906147548682

`2*A005117(A383008(n+2))`
-/

namespace A364999.P2814446906147548682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005117 (A383008 (n + 2)).toNat

end

end A364999.P2814446906147548682

namespace A364999

/-- `2*A005117(A383008(n+2))` -/
def P2814446906147548682.Spec : Prop :=
  ∀ n, P2814446906147548682.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P8892561241448597066

`A039956(n+2)²/A056911(n+2)`
-/

namespace A364999.P8892561241448597066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039956 (n + 2) ^ 2 : ℚ) / (A056911 (n + 2) : ℚ)

end

end A364999.P8892561241448597066

namespace A364999

/-- `A039956(n+2)²/A056911(n+2)` -/
def P8892561241448597066.Spec : Prop :=
  ∀ n, P8892561241448597066.a n = (A364999 (n + 1) : ℚ)

end A364999

/-! ## A364999.P3401952732438038630

`record[4*∏{p}[2*n+3, #]]`
-/

namespace A364999.P3401952732438038630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A364999.P3401952732438038630

namespace A364999

/-- `record[4*∏{p}[2*n+3, #]]` -/
def P3401952732438038630.Spec : Prop :=
  ∀ n, (P3401952732438038630.a n : ℤ) = A364999 (n + 1)

end A364999

/-! ## A364999.P2834484339392399333

`A017113(A264387(n+2))`
-/

namespace A364999.P2834484339392399333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (A264387 (n + 2)).toNat

end

end A364999.P2834484339392399333

namespace A364999

/-- `A017113(A264387(n+2))` -/
def P2834484339392399333.Spec : Prop :=
  ∀ n, P2834484339392399333.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P15182295313631288158

`filter[A017113(n+1), A359466(#)]`
-/

namespace A364999.P15182295313631288158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A364999.P15182295313631288158

namespace A364999

/-- `filter[A017113(n+1), A359466(#)]` -/
def P15182295313631288158.Spec : Prop :=
  ∀ n, P15182295313631288158.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P1112510477839653984

`filter[A017113(n+1), A359471(#)]`
-/

namespace A364999.P1112510477839653984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A364999.P1112510477839653984

namespace A364999

/-- `filter[A017113(n+1), A359471(#)]` -/
def P1112510477839653984.Spec : Prop :=
  ∀ n, P1112510477839653984.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P14609752678636999705

`filter[A017113(n+1), A359474(#)]`
-/

namespace A364999.P14609752678636999705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A364999.P14609752678636999705

namespace A364999

/-- `filter[A017113(n+1), A359474(#)]` -/
def P14609752678636999705.Spec : Prop :=
  ∀ n, P14609752678636999705.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P196345756732570727

`filter[A017113(n+1), A359475(#)]`
-/

namespace A364999.P196345756732570727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359475 (f1 j).toNat = 1) n)

end

end A364999.P196345756732570727

namespace A364999

/-- `filter[A017113(n+1), A359475(#)]` -/
def P196345756732570727.Spec : Prop :=
  ∀ n, P196345756732570727.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P17503556512515536862

`filter[A017113(n+1), A359590(#)]`
-/

namespace A364999.P17503556512515536862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359590 (f1 j).toNat = 1) n)

end

end A364999.P17503556512515536862

namespace A364999

/-- `filter[A017113(n+1), A359590(#)]` -/
def P17503556512515536862.Spec : Prop :=
  ∀ n, P17503556512515536862.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P78021365939830874

`filter[A017113(n+1), A359592(#)]`
-/

namespace A364999.P78021365939830874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359592 (f1 j).toNat = 1) n)

end

end A364999.P78021365939830874

namespace A364999

/-- `filter[A017113(n+1), A359592(#)]` -/
def P78021365939830874.Spec : Prop :=
  ∀ n, P78021365939830874.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P14428208469951299318

`filter[A017113(n+1), A359834(#)]`
-/

namespace A364999.P14428208469951299318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A364999.P14428208469951299318

namespace A364999

/-- `filter[A017113(n+1), A359834(#)]` -/
def P14428208469951299318.Spec : Prop :=
  ∀ n, P14428208469951299318.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P795505443024536293

`filter[A281813(n+1), A359466(#)]`
-/

namespace A364999.P795505443024536293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A364999.P795505443024536293

namespace A364999

/-- `filter[A281813(n+1), A359466(#)]` -/
def P795505443024536293.Spec : Prop :=
  ∀ n, P795505443024536293.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P18192774876789224817

`filter[A281813(n+1), A359471(#)]`
-/

namespace A364999.P18192774876789224817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A364999.P18192774876789224817

namespace A364999

/-- `filter[A281813(n+1), A359471(#)]` -/
def P18192774876789224817.Spec : Prop :=
  ∀ n, P18192774876789224817.a n = A364999 (n + 1)

end A364999

/-! ## A364999.P12450704468388269775

`filter[A281813(n+1), A359474(#)]`
-/

namespace A364999.P12450704468388269775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281813 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359474 (f1 j).toNat = 1) n)

end

end A364999.P12450704468388269775

namespace A364999

/-- `filter[A281813(n+1), A359474(#)]` -/
def P12450704468388269775.Spec : Prop :=
  ∀ n, P12450704468388269775.a n = A364999 (n + 1)

end A364999

