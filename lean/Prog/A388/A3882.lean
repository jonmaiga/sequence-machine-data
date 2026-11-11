import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C005
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C016
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
# A388200: Array read by antidiagonals: T(n,k) is the number of length n binary palindromic words in which 1's occur in blocks of at least k, n >= 0, k >= 1.

The programs for A388200, there is no canonical definition to state claims against.
-/

/-! ## A388200.P11601171300358056526

`A366563(A210545(n+1))`
-/

namespace A388200.P11601171300358056526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (A210545 (n + 1)).toNat

end

end A388200.P11601171300358056526

/-! ## A388200.P4429686268375583135

`gcd(A155164(A395262(n)), A395218(2*(n+2)))`
-/

namespace A388200.P4429686268375583135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A155164 (A395262 n).toNat) (A395218 (2 * (n + 2)))

end

end A388200.P4429686268375583135

/-! ## A388200.P6727163141259874742

`A102669(A359212(n+1)^A342243(n+1))+1`
-/

namespace A388200.P6727163141259874742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.roundAway ((A359212 (n + 1) : ℚ) ^ (A342243 (n + 1) : ℤ))).toNat + 1

end

end A388200.P6727163141259874742

/-! ## A388200.P5151028972426901945

`gcd(4, A196138(∑[A196146(n+1)]))`
-/

namespace A388200.P5151028972426901945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A196138 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A388200.P5151028972426901945

/-! ## A388200.P3828415426938896019

`A193432(A113129(n)*A367394(n))`
-/

namespace A388200.P3828415426938896019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193432 (A113129 n * A367394 n).toNat

end

end A388200.P3828415426938896019

/-!
# A388202: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(n+2,k).

The programs for A388202, the canonical program `A388202.P3668464456802932074` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388202 has offset 0).

The definition of A388202 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)*C(n+2, #)]` (program `A388202.P3668464456802932074`, by `A388202.P3668464456802932074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388202.P3668464456802932074

`∑{#}[n, 3^#*C(n, #)*C(n+2, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388202

/-- `∑{#}[n, 3^#*C(n, #)*C(n+2, #)]` -/
def P3668464456802932074.Spec : Prop :=
  ∀ n, (P3668464456802932074.a n : ℤ) = A388202 n

theorem P3668464456802932074.correct : P3668464456802932074.Spec := by
  intro n
  simp only [A388202]

end A388202

/-! ## A388202.P15678394550238438175

`A081577(∑[a(n-1)+4])` with `a(0)=1, a(1)=12, a(2)=12`
-/

namespace A388202.P15678394550238438175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 12, 12] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A388202.P15678394550238438175

namespace A388202

/-- `A081577(∑[a(n-1)+4])` -/
def P15678394550238438175.Spec : Prop :=
  ∀ n, P15678394550238438175.a n = A388202 n

end A388202

/-! ## A388202.P15747712219323026675

`A081577(A001844(1+n))`
-/

namespace A388202.P15747712219323026675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A001844 (1 + n)).toNat

end

end A388202.P15747712219323026675

namespace A388202

/-- `A081577(A001844(1+n))` -/
def P15747712219323026675.Spec : Prop :=
  ∀ n, P15747712219323026675.a n = A388202 n

end A388202

/-! ## A388202.P7011905370919854158

`A081577(A090288(n)+1)`
-/

namespace A388202.P7011905370919854158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A090288 n + 1).toNat

end

end A388202.P7011905370919854158

namespace A388202

/-- `A081577(A090288(n)+1)` -/
def P7011905370919854158.Spec : Prop :=
  ∀ n, P7011905370919854158.a n = A388202 n

end A388202

/-! ## A388202.P10499207815823524765

`A081577(A099776(1+n))`
-/

namespace A388202.P10499207815823524765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A099776 (1 + n)).toNat

end

end A388202.P10499207815823524765

namespace A388202

/-- `A081577(A099776(1+n))` -/
def P10499207815823524765.Spec : Prop :=
  ∀ n, P10499207815823524765.a n = A388202 n

end A388202

/-! ## A388202.P7151390107033521129

`A081577(A132209(n+1))`
-/

namespace A388202.P7151390107033521129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A132209 (n + 1)).toNat

end

end A388202.P7151390107033521129

namespace A388202

/-- `A081577(A132209(n+1))` -/
def P7151390107033521129.Spec : Prop :=
  ∀ n, P7151390107033521129.a n = A388202 n

end A388202

/-! ## A388202.P3192874717751305645

`A081577(A142463(n+1))`
-/

namespace A388202.P3192874717751305645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A142463 (n + 1)).toNat

end

end A388202.P3192874717751305645

namespace A388202

/-- `A081577(A142463(n+1))` -/
def P3192874717751305645.Spec : Prop :=
  ∀ n, P3192874717751305645.a n = A388202 n

end A388202

/-! ## A388202.P16208078063134272026

`A081577(A296911(n+1))`
-/

namespace A388202.P16208078063134272026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A296911 (n + 1)).toNat

end

end A388202.P16208078063134272026

namespace A388202

/-- `A081577(A296911(n+1))` -/
def P16208078063134272026.Spec : Prop :=
  ∀ n, P16208078063134272026.a n = A388202 n

end A388202

/-!
# A388203: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(n+3,k).

The programs for A388203, the canonical program `A388203.P11432256757722668655` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388203 has offset 0).

The definition of A388203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)*C(n+3, #)]` (program `A388203.P11432256757722668655`, by `A388203.P11432256757722668655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388203.P11432256757722668655

`∑{#}[n, 3^#*C(n, #)*C(n+3, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388203

/-- `∑{#}[n, 3^#*C(n, #)*C(n+3, #)]` -/
def P11432256757722668655.Spec : Prop :=
  ∀ n, (P11432256757722668655.a n : ℤ) = A388203 n

theorem P11432256757722668655.correct : P11432256757722668655.Spec := by
  intro n
  simp only [A388203]

end A388203

/-! ## A388203.P15479760365106189381

`A081577(∑[4+a(n-1)])` with `a(0)=6`
-/

namespace A388203.P15479760365106189381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6] fun n f1 =>
  4 + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A388203.P15479760365106189381

namespace A388203

/-- `A081577(∑[4+a(n-1)])` -/
def P15479760365106189381.Spec : Prop :=
  ∀ n, P15479760365106189381.a n = A388203 n

end A388203

/-! ## A388203.P9329271359447342200

`A081577(2*(n+1)*(n+3))`
-/

namespace A388203.P9329271359447342200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (2 * (n + 1) * (n + 3))

end

end A388203.P9329271359447342200

namespace A388203

/-- `A081577(2*(n+1)*(n+3))` -/
def P9329271359447342200.Spec : Prop :=
  ∀ n, P9329271359447342200.a n = A388203 n

end A388203

/-! ## A388203.P10717211660032418390

`record[gcd(A081577(n+3), A081577(n))]`
-/

namespace A388203.P10717211660032418390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081577 (n + 3)) (A081577 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388203.P10717211660032418390

namespace A388203

/-- `record[gcd(A081577(n+3), A081577(n))]` -/
def P10717211660032418390.Spec : Prop :=
  ∀ n, (P10717211660032418390.a n : ℤ) = A388203 n

end A388203

/-!
# A388204: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(n+4,k).

The programs for A388204, the canonical program `A388204.P16658367577341108015` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388204 has offset 0).

The definition of A388204 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 3^#*C(n, #)*C(n+4, #)]` (program `A388204.P16658367577341108015`, by `A388204.P16658367577341108015.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388204.P16658367577341108015

`∑{#}[n, 3^#*C(n, #)*C(n+4, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388204

/-- `∑{#}[n, 3^#*C(n, #)*C(n+4, #)]` -/
def P16658367577341108015.Spec : Prop :=
  ∀ n, (P16658367577341108015.a n : ℤ) = A388204 n

theorem P16658367577341108015.correct : P16658367577341108015.Spec := by
  intro n
  simp only [A388204]

end A388204

/-! ## A388204.P7202656532647341968

`A081577(A090288(1+n))`
-/

namespace A388204.P7202656532647341968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A090288 (1 + n)).toNat

end

end A388204.P7202656532647341968

namespace A388204

/-- `A081577(A090288(1+n))` -/
def P7202656532647341968.Spec : Prop :=
  ∀ n, P7202656532647341968.a n = A388204 n

end A388204

/-! ## A388204.P5773139609377594898

`A081577(A051890(3+n))`
-/

namespace A388204.P5773139609377594898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A051890 (3 + n)).toNat

end

end A388204.P5773139609377594898

namespace A388204

/-- `A081577(A051890(3+n))` -/
def P5773139609377594898.Spec : Prop :=
  ∀ n, P5773139609377594898.a n = A388204 n

end A388204

/-! ## A388204.P12150094091654266324

`A081577(A059993(n+1)+1)`
-/

namespace A388204.P12150094091654266324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A059993 (n + 1) + 1).toNat

end

end A388204.P12150094091654266324

namespace A388204

/-- `A081577(A059993(n+1)+1)` -/
def P12150094091654266324.Spec : Prop :=
  ∀ n, P12150094091654266324.a n = A388204 n

end A388204

/-! ## A388204.P16568498211824832913

`A081577(A001844(n+2)+1)`
-/

namespace A388204.P16568498211824832913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A001844 (n + 2) + 1).toNat

end

end A388204.P16568498211824832913

namespace A388204

/-- `A081577(A001844(n+2)+1)` -/
def P16568498211824832913.Spec : Prop :=
  ∀ n, P16568498211824832913.a n = A388204 n

end A388204

/-! ## A388204.P11172520843700175542

`A081577(A046092(n+2)+2)`
-/

namespace A388204.P11172520843700175542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A046092 (n + 2) + 2).toNat

end

end A388204.P11172520843700175542

namespace A388204

/-- `A081577(A046092(n+2)+2)` -/
def P11172520843700175542.Spec : Prop :=
  ∀ n, P11172520843700175542.a n = A388204 n

end A388204

/-! ## A388204.P6132113736184410460

`A081577(A000217(2*(n+2))+n)`
-/

namespace A388204.P6132113736184410460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A000217 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A388204.P6132113736184410460

namespace A388204

/-- `A081577(A000217(2*(n+2))+n)` -/
def P6132113736184410460.Spec : Prop :=
  ∀ n, P6132113736184410460.a n = A388204 n

end A388204

/-! ## A388204.P11176474174822542386

`A081577(A093005(2*n+5)-(n+1))`
-/

namespace A388204.P11176474174822542386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A093005 (2 * n + 5) - (n + 1 : ℤ)).toNat

end

end A388204.P11176474174822542386

namespace A388204

/-- `A081577(A093005(2*n+5)-(n+1))` -/
def P11176474174822542386.Spec : Prop :=
  ∀ n, P11176474174822542386.a n = A388204 n

end A388204

/-!
# A388205: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+2,k).

The programs for A388205, the canonical program `A388205.P5807925496052018808` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388205 has offset 0).

The definition of A388205 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 4^#*C(n, #)*C(n+2, #)]` (program `A388205.P5807925496052018808`, by `A388205.P5807925496052018808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388205.P5807925496052018808

`∑{#}[n, 4^#*C(n, #)*C(n+2, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388205

/-- `∑{#}[n, 4^#*C(n, #)*C(n+2, #)]` -/
def P5807925496052018808.Spec : Prop :=
  ∀ n, (P5807925496052018808.a n : ℤ) = A388205 n

theorem P5807925496052018808.correct : P5807925496052018808.Spec := by
  intro n
  simp only [A388205]

end A388205

/-! ## A388205.P2001815608982507891

`A081578(∑[4*(n+1)]+1)`
-/

namespace A388205.P2001815608982507891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A388205.P2001815608982507891

namespace A388205

/-- `A081578(∑[4*(n+1)]+1)` -/
def P2001815608982507891.Spec : Prop :=
  ∀ n, P2001815608982507891.a n = A388205 n

end A388205

/-! ## A388205.P11262122067306970443

`∑[A348595(∑[n+3])]`
-/

namespace A388205.P11262122067306970443
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348595 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388205.P11262122067306970443

namespace A388205

/-- `∑[A348595(∑[n+3])]` -/
def P11262122067306970443.Spec : Prop :=
  ∀ n, P11262122067306970443.a n = A388205 n

end A388205

/-!
# A388206: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+3,k).

The programs for A388206, the canonical program `A388206.P17460349749003568202` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388206 has offset 0).

The definition of A388206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 4^#*C(n, #)*C(n+3, #)]` (program `A388206.P17460349749003568202`, by `A388206.P17460349749003568202.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388206.P17460349749003568202

`∑{#}[n, 4^#*C(n, #)*C(n+3, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388206

/-- `∑{#}[n, 4^#*C(n, #)*C(n+3, #)]` -/
def P17460349749003568202.Spec : Prop :=
  ∀ n, (P17460349749003568202.a n : ℤ) = A388206 n

theorem P17460349749003568202.correct : P17460349749003568202.Spec := by
  intro n
  simp only [A388206]

end A388206

/-! ## A388206.P8092675303687749376

`A081578(2*(n+2)*(n+2)+1)`
-/

namespace A388206.P8092675303687749376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (2 * (n + 2) * (n + 2) + 1)

end

end A388206.P8092675303687749376

namespace A388206

/-- `A081578(2*(n+2)*(n+2)+1)` -/
def P8092675303687749376.Spec : Prop :=
  ∀ n, P8092675303687749376.a n = A388206 n

end A388206

/-!
# A388207: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+4,k).

The programs for A388207, the canonical program `A388207.P8706996796988572558` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388207 has offset 0).

The definition of A388207 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 4^#*C(n, #)*C(n+4, #)]` (program `A388207.P8706996796988572558`, by `A388207.P8706996796988572558.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A388207.P8706996796988572558

`∑{#}[n, 4^#*C(n, #)*C(n+4, #)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A388207

/-- `∑{#}[n, 4^#*C(n, #)*C(n+4, #)]` -/
def P8706996796988572558.Spec : Prop :=
  ∀ n, (P8706996796988572558.a n : ℤ) = A388207 n

theorem P8706996796988572558.correct : P8706996796988572558.Spec := by
  intro n
  simp only [A388207]

end A388207

/-! ## A388207.P6142696911542451914

`A081578(A090288(n+1))`
-/

namespace A388207.P6142696911542451914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A090288 (n + 1)).toNat

end

end A388207.P6142696911542451914

namespace A388207

/-- `A081578(A090288(n+1))` -/
def P6142696911542451914.Spec : Prop :=
  ∀ n, P6142696911542451914.a n = A388207 n

end A388207

/-! ## A388207.P1608376697647973916

`A081578(A000217(2*(n+2))+n)`
-/

namespace A388207.P1608376697647973916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A000217 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A388207.P1608376697647973916

namespace A388207

/-- `A081578(A000217(2*(n+2))+n)` -/
def P1608376697647973916.Spec : Prop :=
  ∀ n, P1608376697647973916.a n = A388207 n

end A388207

/-!
# A388258: Number of divisors d of n such that d^d == -(-d)^n (mod n).

The programs for A388258, there is no canonical definition to state claims against.
-/

/-! ## A388258.P3308255570677431967

`A000005(A000005(A358916(A054008(A066708(n+1)))))`
-/

namespace A388258.P3308255570677431967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A358916 (A054008 (A066708 (n + 1)).toNat).toNat).toNat).toNat

end

end A388258.P3308255570677431967

/-! ## A388258.P11501357201813358771

`A000005(A000005(A358916(A000005(A005179(n+1)))))`
-/

namespace A388258.P11501357201813358771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A358916 (A000005 (A005179 (n + 1)).toNat).toNat).toNat).toNat

end

end A388258.P11501357201813358771

/-!
# A388261: Primes that are the sum of some first primes minus one.

The programs for A388261, there is no canonical definition to state claims against.
-/

/-! ## A388261.P3226585743522265903

`A237589(A388066(n+1))`
-/

namespace A388261.P3226585743522265903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A388066 (n + 1)).toNat

end

end A388261.P3226585743522265903

/-! ## A388261.P16322468372999282237

`A007504(A388066(1+n))-1`
-/

namespace A388261.P16322468372999282237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A388066 (1 + n)).toNat - 1

end

end A388261.P16322468372999282237

/-! ## A388261.P6562321681320438462

`A066039(A388066(1+n))`
-/

namespace A388261.P6562321681320438462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (A388066 (1 + n)).toNat

end

end A388261.P6562321681320438462

/-! ## A388261.P10370694231048602321

`A366094(A388066(2*n+1-n))`
-/

namespace A388261.P10370694231048602321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366094 (A388066 (2 * n + 1 - n)).toNat

end

end A388261.P10370694231048602321

/-! ## A388261.P13160057128574407376

`∩[A066039(n+1), A237589(n+1)]`
-/

namespace A388261.P13160057128574407376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388261.P13160057128574407376

/-! ## A388261.P14080208258799977312

`p?[A237589(n+1)]`
-/

namespace A388261.P14080208258799977312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A388261.P14080208258799977312

/-!
# A388262: Records in A388038.

The programs for A388262, there is no canonical definition to state claims against.
-/

/-! ## A388262.P15466300935801055566

`record[A388038(n+1)]`
-/

namespace A388262.P15466300935801055566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388262.P15466300935801055566

/-! ## A388262.P15680464124317072813

`A388038(A388263(1+n))`
-/

namespace A388262.P15680464124317072813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388038 (A388263 (1 + n)).toNat

end

end A388262.P15680464124317072813

/-! ## A388262.P7238522573490429992

`record[A388038(A109449(n))]*A340811(n)`
-/

namespace A388262.P7238522573490429992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388038 (A109449 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A340811 n

end

end A388262.P7238522573490429992

/-!
# A388263: Indices of records of A388038.

The programs for A388263, there is no canonical definition to state claims against.
-/

/-! ## A388263.P2486607404794205565

`A235963(A149905(n))`
-/

namespace A388263.P2486607404794205565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A149905 n).toNat

end

end A388263.P2486607404794205565

/-! ## A388263.P10292728197181269868

`A182028(n)+A115570(A135186(n+1))`
-/

namespace A388263.P10292728197181269868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A115570 (A135186 (n + 1)).toNat

end

end A388263.P10292728197181269868

/-!
# A388264: a(n) = gcd(A276086(n), A276086(sigma(n)-n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388264, there is no canonical definition to state claims against.
-/

/-! ## A388264.P2928534481958859634

`gcd(A276086(n+1), A379493(n+1))`
-/

namespace A388264.P2928534481958859634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A379493 (n + 1))

end

end A388264.P2928534481958859634

/-! ## A388264.P9362685053159324435

`gcd(A276086(n+1), A276086(A000203(n+1)-(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388264.P9362685053159324435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (n + 1)) (A276086 (A000203 (n + 1) - (n + 1 : ℤ)).toNat)

end

end A388264.P9362685053159324435

/-!
# A388266: Primitive terms of A388265.

The programs for A388266, there is no canonical definition to state claims against.
-/

/-! ## A388266.P4772449821164617120

`A337814(A152820(n+1))`
-/

namespace A388266.P4772449821164617120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337814 (A152820 (n + 1)).toNat

end

end A388266.P4772449821164617120

/-! ## A388266.P13052655426602748022

`A337814(A154320(n+1))`
-/

namespace A388266.P13052655426602748022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337814 (A154320 (n + 1)).toNat

end

end A388266.P13052655426602748022

/-! ## A388266.P14430663861164687726

`A378530(A355547(n+1))`
-/

namespace A388266.P14430663861164687726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (A355547 (n + 1)).toNat

end

end A388266.P14430663861164687726

/-! ## A388266.P13073761741420847992

`filter[A278374(n+1), A378529(#)]`
-/

namespace A388266.P13073761741420847992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A388266.P13073761741420847992

/-!
# A388267: Odd numbers k such that gcd(A276086(sigma(k)-k), A276086(k)) is equal to A276086(k), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388267, there is no canonical definition to state claims against.
-/

/-! ## A388267.P3081774013716607487

`filter[A388265(n+1), A324908(#)]`
-/

namespace A388267.P3081774013716607487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A388267.P3081774013716607487

/-! ## A388267.P10943221627758965493

`filter[A388265(n+1), A000035(#)]`
-/

namespace A388267.P10943221627758965493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A388267.P10943221627758965493

/-! ## A388267.P6541475963092470057

`filter[A388265(n+1), A266070(#)]`
-/

namespace A388267.P6541475963092470057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266070 (f1 j).toNat = 1) n)

end

end A388267.P6541475963092470057

/-! ## A388267.P13649008270592685477

`filter[A388265(n+1), A266246(#)]`
-/

namespace A388267.P13649008270592685477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266246 (f1 j).toNat = 1) n)

end

end A388267.P13649008270592685477

/-! ## A388267.P15389383711088889067

`filter[A388265(n+1), A266611(#)]`
-/

namespace A388267.P15389383711088889067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266611 (f1 j).toNat = 1) n)

end

end A388267.P15389383711088889067

/-!
# A388268: Numbers k for which A000005(k) >= A017665(k), where A000005 is the number of divisors function, and A017665 is the numerator of the abundancy ratio, sigma(k)/k.

The programs for A388268, there is no canonical definition to state claims against.
-/

/-! ## A388268.P16009395153820929415

`lt[A017665(n+1)-1, A000005(n+1)]+1`
-/

namespace A388268.P16009395153820929415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388268.P16009395153820929415

/-! ## A388268.P11833222503671910556

`A358150(A008216(n))`
-/

namespace A388268.P11833222503671910556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358150 (A008216 n).toNat

end

end A388268.P11833222503671910556

/-!
# A388270: a(n) = d(n) * gcd(n, sigma(n)), where d is the number of divisors function (A000005), and sigma is the sum of divisors.

The programs for A388270, the canonical program `A388270.P10233009455192801401` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388270 has offset 1).

The definition of A388270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388270.P10233009455192801401

`A000005(n+1)*A009194(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A388270

/-- `A000005(n+1)*A009194(n+1)` -/
def P10233009455192801401.Spec : Prop :=
  ∀ n, P10233009455192801401.a n = A388270 (n + 1)

theorem P10233009455192801401.correct : P10233009455192801401.Spec := by
  intro n
  simp only [A388270, Nat.add_sub_cancel]

end A388270

/-! ## A388270.P1635140434113202113

`A000005(n+1)*gcd(n+1, A000203(n+1))`
-/

namespace A388270.P1635140434113202113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℤ)

end

end A388270.P1635140434113202113

namespace A388270

/-- `A000005(n+1)*gcd(n+1, A000203(n+1))` -/
def P1635140434113202113.Spec : Prop :=
  ∀ n, P1635140434113202113.a n = A388270 (n + 1)

end A388270

/-! ## A388270.P6902611056639493267

`∏{e}[1+n, #+1]*A009194(n+1)`
-/

namespace A388270.P6902611056639493267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A009194 (n + 1)

end

end A388270.P6902611056639493267

namespace A388270

/-- `∏{e}[1+n, #+1]*A009194(n+1)` -/
def P6902611056639493267.Spec : Prop :=
  ∀ n, P6902611056639493267.a n = A388270 (n + 1)

end A388270

/-! ## A388270.P13383393971738277850

`gcd(n+1, ∑{d}[n+1, #])*A000005(n+1)`
-/

namespace A388270.P13383393971738277850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d) : ℤ) * A000005 (n + 1)

end

end A388270.P13383393971738277850

namespace A388270

/-- `gcd(n+1, ∑{d}[n+1, #])*A000005(n+1)` -/
def P13383393971738277850.Spec : Prop :=
  ∀ n, P13383393971738277850.a n = A388270 (n + 1)

end A388270

/-! ## A388270.P7947375910294490114

`∑{d}[n+1, lcm(#, n+1)]/A017666(n+1)`
-/

namespace A388270.P7947375910294490114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (A017666 (n + 1) : ℚ)

end

end A388270.P7947375910294490114

namespace A388270

/-- `∑{d}[n+1, lcm(#, n+1)]/A017666(n+1)` -/
def P7947375910294490114.Spec : Prop :=
  ∀ n, P7947375910294490114.a n = (A388270 (n + 1) : ℚ)

end A388270

/-! ## A388270.P13715086051368073661

`Δ[A006218(n)]*A009194(n+1)`
-/

namespace A388270.P13715086051368073661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A009194 (n + 1)

end

end A388270.P13715086051368073661

namespace A388270

/-- `Δ[A006218(n)]*A009194(n+1)` -/
def P13715086051368073661.Spec : Prop :=
  ∀ n, P13715086051368073661.a n = A388270 (n + 1)

end A388270

/-! ## A388270.P6275882232940736057

`A038040(n+1)/A017666(n+1)`
-/

namespace A388270.P6275882232940736057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ)

end

end A388270.P6275882232940736057

namespace A388270

/-- `A038040(n+1)/A017666(n+1)` -/
def P6275882232940736057.Spec : Prop :=
  ∀ n, P6275882232940736057.a n = (A388270 (n + 1) : ℚ)

end A388270

/-! ## A388270.P7507802189912792832

`A064840(n+1)/A017665(n+1)`
-/

namespace A388270.P7507802189912792832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ)

end

end A388270.P7507802189912792832

namespace A388270

/-- `A064840(n+1)/A017665(n+1)` -/
def P7507802189912792832.Spec : Prop :=
  ∀ n, P7507802189912792832.a n = (A388270 (n + 1) : ℚ)

end A388270

/-! ## A388270.P10378875138549938562

`gcd(A038040(n+1), A064840(n+1))`
-/

namespace A388270.P10378875138549938562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038040 (n + 1)) (A064840 (n + 1))

end

end A388270.P10378875138549938562

namespace A388270

/-- `gcd(A038040(n+1), A064840(n+1))` -/
def P10378875138549938562.Spec : Prop :=
  ∀ n, (P10378875138549938562.a n : ℤ) = A388270 (n + 1)

end A388270

/-! ## A388270.P1827167091611408411

`(A173438(n+1)+A073802(n+1))*A009194(n+1)`
-/

namespace A388270.P1827167091611408411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173438 (n + 1) + A073802 (n + 1)) * A009194 (n + 1)

end

end A388270.P1827167091611408411

namespace A388270

/-- `(A173438(n+1)+A073802(n+1))*A009194(n+1)` -/
def P1827167091611408411.Spec : Prop :=
  ∀ n, P1827167091611408411.a n = A388270 (n + 1)

theorem P1827167091611408411.correct : P1827167091611408411.Spec := by
  intro n
  simp only [A388270, Nat.add_sub_cancel, A388270.P1827167091611408411.a, A388270.P10233009455192801401.a, A000005, A000005.P16091521709108585461.a, A009194, A009194.P14144043731484759061.a, A073802, A073802.P5532415741210097139.a, A173438, A173438.P11158591540045006980.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A388270

/-! ## A388270.P3395151595323512266

`(A326197(n+1)+A326196(n+1))*A009194(n+1)`
-/

namespace A388270.P3395151595323512266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326197 (n + 1) + A326196 (n + 1)) * A009194 (n + 1)

end

end A388270.P3395151595323512266

namespace A388270

/-- `(A326197(n+1)+A326196(n+1))*A009194(n+1)` -/
def P3395151595323512266.Spec : Prop :=
  ∀ n, P3395151595323512266.a n = A388270 (n + 1)

end A388270

/-! ## A388270.P17609966846376387416

`(A007503(n+1)-A000203(n+1))*A009194(n+1)`
-/

namespace A388270.P17609966846376387416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007503 (n + 1) - A000203 (n + 1)) * A009194 (n + 1)

end

end A388270.P17609966846376387416

namespace A388270

/-- `(A007503(n+1)-A000203(n+1))*A009194(n+1)` -/
def P17609966846376387416.Spec : Prop :=
  ∀ n, P17609966846376387416.a n = A388270 (n + 1)

theorem P17609966846376387416.correct : P17609966846376387416.Spec := by
  intro n
  simp only [A388270, Nat.add_sub_cancel, A388270.P17609966846376387416.a, A388270.P10233009455192801401.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007503, A007503.P13484425310514315912.a, A009194, A009194.P14144043731484759061.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A388270

/-! ## A388270.P16560975443664042741

`A009194(n+1)/A000203(n+1)*A064840(n+1)`
-/

namespace A388270.P16560975443664042741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009194 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A064840 (n + 1) : ℚ)

end

end A388270.P16560975443664042741

namespace A388270

/-- `A009194(n+1)/A000203(n+1)*A064840(n+1)` -/
def P16560975443664042741.Spec : Prop :=
  ∀ n, P16560975443664042741.a n = (A388270 (n + 1) : ℚ)

end A388270

/-! ## A388270.P14588834415278926105

`∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]*A009194(1+n)`
-/

namespace A388270.P14588834415278926105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ k ∈ Finset.range (f1 n + 1), (⌊(n + 1 : ℚ) / (k + 1 : ℚ)⌋ - ⌊(n : ℚ) / (k + 1 : ℚ)⌋)) * A009194 (1 + n)

end

end A388270.P14588834415278926105

namespace A388270

/-- `∑{#}[n, floor((n+1)/(#+1))-floor(n/(#+1))]*A009194(1+n)` -/
def P14588834415278926105.Spec : Prop :=
  ∀ n, P14588834415278926105.a n = A388270 (n + 1)

end A388270

/-!
# A388271: Numbers k, neither squares nor twice squares, such that gcd(A276086(sigma(k)/2), A276086(k)) is equal to A276086(k), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388271, there is no canonical definition to state claims against.
-/

/-! ## A388271.P2526383216673194232

`filter[A317492(n+1), A378540(#)]`
-/

namespace A388271.P2526383216673194232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378540 (f1 j).toNat = 1) n)

end

end A388271.P2526383216673194232

/-! ## A388271.P1064379946637393747

`∩[A317492(n+1), A378541(n+1)]`
-/

namespace A388271.P1064379946637393747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388271.P1064379946637393747

/-!
# A388272: Primitive terms of A388271.

The programs for A388272, there is no canonical definition to state claims against.
-/

/-! ## A388272.P15989524521980482750

`filter[A273886(n+2), A378529(#)]`
-/

namespace A388272.P15989524521980482750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273886 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378529 (f1 j).toNat = 1) n)

end

end A388272.P15989524521980482750

/-! ## A388272.P9402844989148316856

`∩[A388266(n+1), A388271(A388292(n+1))]`
-/

namespace A388272.P9402844989148316856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388271 (A388292 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388272.P9402844989148316856

/-! ## A388272.P16380589166622916113

`record[A179850(A088218(n))*A388266(n+1)]`
-/

namespace A388272.P16380589166622916113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179850 (A088218 n).toNat * A388266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388272.P16380589166622916113

/-!
# A388274: a(n) = A053585(sigma(n)).

The programs for A388274, the canonical program `A388274.P18350149075822119324` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388274 has offset 1).

The definition of A388274 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071178, A071190, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388274.P8225117107597274990

`A053585(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388274.P8225117107597274990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A000203 (n + 1)).toNat

end

end A388274.P8225117107597274990

namespace A388274

/-- `A053585(A000203(n+1))` -/
def P8225117107597274990.Spec : Prop :=
  ∀ n, P8225117107597274990.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P18350149075822119324

`A071190(n+1)^A071178(A000203(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A388274

/-- `A071190(n+1)^A071178(A000203(n+1))` -/
def P18350149075822119324.Spec : Prop :=
  ∀ n, P18350149075822119324.a n = (A388274 (n + 1) : ℚ)

end A388274

/-! ## A388274.P13052634295448414461

`A053585(∑{d}[1+n, #])`
-/

namespace A388274.P13052634295448414461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A388274.P13052634295448414461

namespace A388274

/-- `A053585(∑{d}[1+n, #])` -/
def P13052634295448414461.Spec : Prop :=
  ∀ n, P13052634295448414461.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P6447896731540042213

`∑{d}[n+1, #]/A051119(∑{d}[n+1, #])`
-/

namespace A388274.P6447896731540042213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (A051119 (∑ d ∈ Nat.divisors (f2 n), d) : ℚ)

end

end A388274.P6447896731540042213

namespace A388274

/-- `∑{d}[n+1, #]/A051119(∑{d}[n+1, #])` -/
def P6447896731540042213.Spec : Prop :=
  ∀ n, P6447896731540042213.a n = (A388274 (n + 1) : ℚ)

end A388274

/-! ## A388274.P10592087694695230950

`A053585(A088580(n+1)-1)`
-/

namespace A388274.P10592087694695230950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A088580 (n + 1) - 1).toNat

end

end A388274.P10592087694695230950

namespace A388274

/-- `A053585(A088580(n+1)-1)` -/
def P10592087694695230950.Spec : Prop :=
  ∀ n, P10592087694695230950.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P251514311610861828

`A053585(2*(n+1)-A033879(n+1))`
-/

namespace A388274.P251514311610861828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A388274.P251514311610861828

namespace A388274

/-- `A053585(2*(n+1)-A033879(n+1))` -/
def P251514311610861828.Spec : Prop :=
  ∀ n, P251514311610861828.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P11555843134826302256

`A053585(A394790(n+1))`
-/

namespace A388274.P11555843134826302256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A394790 (n + 1)).toNat

end

end A388274.P11555843134826302256

namespace A388274

/-- `A053585(A394790(n+1))` -/
def P11555843134826302256.Spec : Prop :=
  ∀ n, P11555843134826302256.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P5158983407747890657

`A053585(A009278(n+1))`
-/

namespace A388274.P5158983407747890657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A009278 (n + 1)).toNat

end

end A388274.P5158983407747890657

namespace A388274

/-- `A053585(A009278(n+1))` -/
def P5158983407747890657.Spec : Prop :=
  ∀ n, P5158983407747890657.a n = A388274 (n + 1)

end A388274

/-!
# A388275: Numbers k such that k and sigma(k) have the same largest prime factor and also its exponent is equal in their prime factorizations, with a(1) = 1 included by convention.

The programs for A388275, there is no canonical definition to state claims against.
-/

/-! ## A388275.P4505870073303166879

`eq[A053585(n+1), A388274(n+1)]+1`
-/

namespace A388275.P4505870073303166879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388274 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A388275.P4505870073303166879

/-! ## A388275.P14784640985490302731

`∏{e}[A000420(n), A071834(#)]`
-/

namespace A388275.P14784640985490302731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A071834 (Nat.factorization (f1 n).natAbs p)

end

end A388275.P14784640985490302731

/-! ## A388275.P4713705212172069583

`∪[A071834(n+1), A094278(A070826(n+1))]`
-/

namespace A388275.P4713705212172069583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094278 (A070826 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388275.P4713705212172069583

/-!
# A388278: a(n) = gcd(sigma(n), A276086(sigma(n))), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388278, there is no canonical definition to state claims against.
-/

/-! ## A388278.P8198056352750449505

`A324198(A000203(n+1))`
-/

namespace A388278.P8198056352750449505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A000203 (n + 1)).toNat

end

end A388278.P8198056352750449505

/-! ## A388278.P1962643621381362676

`gcd(A000203(n+1), A388031(n+1))`
-/

namespace A388278.P1962643621381362676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A388031 (n + 1))

end

end A388278.P1962643621381362676

/-! ## A388278.P45431919474992745

`gcd(A000203(n+1), A276086(A000203(n+1)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388278.P45431919474992745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A276086 (A000203 (n + 1)).toNat)

end

end A388278.P45431919474992745

/-! ## A388278.P7712821941428378792

`A324198(∑{d}[1+n, #])`
-/

namespace A388278.P7712821941428378792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A388278.P7712821941428378792

/-! ## A388278.P14558771585117728713

`A324198(A324644(n+1)*A369445(n+1))`
-/

namespace A388278.P14558771585117728713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A324644 (n + 1) * A369445 (n + 1)).toNat

end

end A388278.P14558771585117728713

/-! ## A388278.P400121618997865339

`gcd(∑{d}[n+1, #], A276086(∑{d}[n+1, #]))`
-/

namespace A388278.P400121618997865339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A276086 (∑ d ∈ Nat.divisors (f2 n), d))

end

end A388278.P400121618997865339

/-! ## A388278.P2855923649734355167

`gcd(A039653(n+1)+1, A276086(A039653(n+1)+1))`
-/

namespace A388278.P2855923649734355167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039653 (n + 1) + 1) (A276086 (A039653 (n + 1) + 1).toNat)

end

end A388278.P2855923649734355167

/-! ## A388278.P5489535546574139746

`A373361(A388031(n+1))`
-/

namespace A388278.P5489535546574139746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373361 (A388031 (n + 1)).toNat

end

end A388278.P5489535546574139746

/-!
# A388280: Numbers k for which the sum of k and sigma(k)-k does not generate any carries when done in the primorial base (A049345).

The programs for A388280, there is no canonical definition to state claims against.
-/

/-! ## A388280.P3456588769958199962

`eq[0, A388281(n+1)]+1`
-/

namespace A388280.P3456588769958199962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388280.P3456588769958199962

/-! ## A388280.P8082803742495929326

`record[A000027(n+1)-A388281(n+1)]`
-/

namespace A388280.P8082803742495929326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A388281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388280.P8082803742495929326

/-! ## A388280.P16364271385737205877

`record[A140106(2*(n+2))-A388281(n+1)]`
-/

namespace A388280.P16364271385737205877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * (n + 2)) - A388281 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388280.P16364271385737205877

/-!
# A388281: a(n) = A276086(n)*A276086(sigma(n)-n) - A276086(sigma(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388281, there is no canonical definition to state claims against.
-/

/-! ## A388281.P1773245061527074517

`A388282(n+1)-A388031(n+1)`
-/

namespace A388281.P1773245061527074517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A388031 (n + 1)

end

end A388281.P1773245061527074517

/-! ## A388281.P18417286155662754871

`A276086(n+1)*A379493(n+1)-A388031(n+1)`
-/

namespace A388281.P18417286155662754871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A379493 (n + 1) - A388031 (n + 1)

end

end A388281.P18417286155662754871

/-! ## A388281.P10751153511483400946

`A276086(n+1)*A276086(A000203(n+1)-(n+1))-A276086(A000203(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388281.P10751153511483400946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A276086 (A000203 (n + 1) - (n + 1 : ℤ)).toNat - A276086 (A000203 (n + 1)).toNat

end

end A388281.P10751153511483400946

/-! ## A388281.P1593346535824146009

`A388282(n+1)-(A351225(∑{d}[n+1, #])+∑{d}[n+1, #])`
-/

namespace A388281.P1593346535824146009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - (A351225 (∑ d ∈ Nat.divisors (f1 n), d) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ))

end

end A388281.P1593346535824146009

/-! ## A388281.P18129805867191652301

`A388282(n+1)-A276086(A000203(n+1))`
-/

namespace A388281.P18129805867191652301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A276086 (A000203 (n + 1)).toNat

end

end A388281.P18129805867191652301

/-! ## A388281.P12604774053721095956

`A388282(n+1)-A276086(A039653(n+1)+1)`
-/

namespace A388281.P12604774053721095956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A276086 (A039653 (n + 1) + 1).toNat

end

end A388281.P12604774053721095956

/-! ## A388281.P16479377879955327861

`A388282(n+1)-A276086(A088580(n+1)-1)`
-/

namespace A388281.P16479377879955327861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A276086 (A088580 (n + 1) - 1).toNat

end

end A388281.P16479377879955327861

/-! ## A388281.P16983082133735244249

`A388282(n+1)-A276086(A239050(n+1)/4)`
-/

namespace A388281.P16983082133735244249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A276086 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 4)).toNat

end

end A388281.P16983082133735244249

/-! ## A388281.P1272443259430636386

`A276086(n+1)*A379493(n+1)-A276086(A239050(n+1)/4)`
-/

namespace A388281.P1272443259430636386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A379493 (n + 1) - A276086 (SequenceMachineLib.roundAway ((A239050 (n + 1) : ℚ) / 4)).toNat

end

end A388281.P1272443259430636386

/-!
# A388282: a(n) = A276086(n) * A276086(sigma(n)-n), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388282, there is no canonical definition to state claims against.
-/

/-! ## A388282.P17173445839209294039

`A276086(n+1)*A379493(n+1)`
-/

namespace A388282.P17173445839209294039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A379493 (n + 1)

end

end A388282.P17173445839209294039

/-! ## A388282.P4645080312831076640

`A276086(n+1)*A276086(A000203(n+1)-(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388282.P4645080312831076640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A276086 (A000203 (n + 1) - (n + 1 : ℤ)).toNat

end

end A388282.P4645080312831076640

/-! ## A388282.P14521251831194968931

`A388281(1+n)+A388031(n+1)`
-/

namespace A388282.P14521251831194968931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (1 + n) + A388031 (n + 1)

end

end A388282.P14521251831194968931

/-! ## A388282.P10091968935793953696

`A276086(n+1)*A276086(∑{d}[n+1, #]-(1+n))`
-/

namespace A388282.P10091968935793953696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A276086 (∑ d ∈ Nat.divisors (f1 n), d - (1 + n))

end

end A388282.P10091968935793953696

/-! ## A388282.P15603811226643722257

`A276086(A001065(n+1))*A276086(n+1)`
-/

namespace A388282.P15603811226643722257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A001065 (n + 1)).toNat * A276086 (n + 1)

end

end A388282.P15603811226643722257

/-! ## A388282.P14194616548931151964

`A388281(n+1)+A351225(∑{d}[n+1, #])+A000203(n+1)`
-/

namespace A388282.P14194616548931151964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + (A351225 (∑ d ∈ Nat.divisors (f1 n), d) + A000203 (n + 1))

end

end A388282.P14194616548931151964

/-! ## A388282.P2786645831472378233

`A388281(n+1)+A276086(∑{d}[n+1, #])`
-/

namespace A388282.P2786645831472378233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + A276086 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A388282.P2786645831472378233

/-! ## A388282.P14816077984455513703

`A388281(n+1)+A324580(∑{d}[n+1, #])/∑{d}[n+1, #]`
-/

namespace A388282.P14816077984455513703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388281 (n + 1) : ℚ) + (A324580 (∑ d ∈ Nat.divisors (f1 n), d) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ)

end

end A388282.P14816077984455513703

/-! ## A388282.P9916980675699786965

`A388281(n+1)+A276086(A000203(n+1))`
-/

namespace A388282.P9916980675699786965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + A276086 (A000203 (n + 1)).toNat

end

end A388282.P9916980675699786965

/-! ## A388282.P4755498121849780071

`A388281(n+1)+A276086(A245092(Δ[n²]))`
-/

namespace A388282.P4755498121849780071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + A276086 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A388282.P4755498121849780071

/-! ## A388282.P902685135472657378

`A388281(n+1)+A276086(A074400(n+1)/2)`
-/

namespace A388282.P902685135472657378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + A276086 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A388282.P902685135472657378

/-!
# A388283: Numerator of (3*n - sigma(n)) / n.

The programs for A388283, the canonical program `A388283.P448465908817760903` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388283 has offset 1).

The definition of A388283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388283.P448465908817760903

`A033885(n+1)/A009194(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A388283

/-- `A033885(n+1)/A009194(n+1)` -/
def P448465908817760903.Spec : Prop :=
  ∀ n, P448465908817760903.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P2162163234683963414

`(3*(n+1)-A000203(n+1))/gcd(n+1, A000203(n+1))`
-/

namespace A388283.P2162163234683963414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - A000203 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A000203 (n + 1)) : ℚ)

end

end A388283.P2162163234683963414

namespace A388283

/-- `(3*(n+1)-A000203(n+1))/gcd(n+1, A000203(n+1))` -/
def P2162163234683963414.Spec : Prop :=
  ∀ n, P2162163234683963414.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P685262172390505586

`A390582(n+1)+(n+1)/gcd(n+1, ∑{d}[n+1, #])`
-/

namespace A388283.P685262172390505586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390582 (n + 1) : ℚ) + (n + 1 : ℚ) / (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f1 n), d) : ℚ)

end

end A388283.P685262172390505586

namespace A388283

/-- `A390582(n+1)+(n+1)/gcd(n+1, ∑{d}[n+1, #])` -/
def P685262172390505586.Spec : Prop :=
  ∀ n, P685262172390505586.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P1912923491218226302

`A390582(1+n)+A017666(n+1)`
-/

namespace A388283.P1912923491218226302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390582 (1 + n) + A017666 (n + 1)

end

end A388283.P1912923491218226302

namespace A388283

/-- `A390582(1+n)+A017666(n+1)` -/
def P1912923491218226302.Spec : Prop :=
  ∀ n, P1912923491218226302.a n = A388283 (n + 1)

end A388283

/-! ## A388283.P17663756413653619925

`A033885(n+1)/ceil((n+1)/A017666(n+1))`
-/

namespace A388283.P17663756413653619925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (⌈(n + 1 : ℚ) / (A017666 (n + 1) : ℚ)⌉ : ℚ)

end

end A388283.P17663756413653619925

namespace A388283

/-- `A033885(n+1)/ceil((n+1)/A017666(n+1))` -/
def P17663756413653619925.Spec : Prop :=
  ∀ n, P17663756413653619925.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P11124914101750590650

`A033885(n+1)/gcd(2*n+1-n, A155085(n+1))`
-/

namespace A388283.P11124914101750590650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (Int.gcd ((2 * n + 1 : ℤ) - (n : ℤ)) (A155085 (n + 1)) : ℚ)

end

end A388283.P11124914101750590650

namespace A388283

/-- `A033885(n+1)/gcd(2*n+1-n, A155085(n+1))` -/
def P11124914101750590650.Spec : Prop :=
  ∀ n, P11124914101750590650.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P15285744019804458285

`A390582(n+1)+(n+1)/gcd(n²+n, A306682(n+1))`
-/

namespace A388283.P15285744019804458285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390582 (n + 1) : ℚ) + (n + 1 : ℚ) / (Int.gcd (n ^ 2 + n : ℤ) (A306682 (n + 1)) : ℚ)

end

end A388283.P15285744019804458285

namespace A388283

/-- `A390582(n+1)+(n+1)/gcd(n²+n, A306682(n+1))` -/
def P15285744019804458285.Spec : Prop :=
  ∀ n, P15285744019804458285.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P17180433507516624605

`(5*(n+1)-A224880(n+1))/(n%A325636(n+1)+1)`
-/

namespace A388283.P17180433507516624605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * (n + 1) : ℤ) - A224880 (n + 1) : ℚ) / (Int.tmod (n : ℤ) (A325636 (n + 1)) + 1 : ℚ)

end

end A388283.P17180433507516624605

namespace A388283

/-- `(5*(n+1)-A224880(n+1))/(n%A325636(n+1)+1)` -/
def P17180433507516624605.Spec : Prop :=
  ∀ n, P17180433507516624605.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P9991559742169177564

`A033885(n+1)/gcd(A033879(n+1), A153152(n))`
-/

namespace A388283.P9991559742169177564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033885 (n + 1) : ℚ) / (Int.gcd (A033879 (n + 1)) (A153152 n) : ℚ)

end

end A388283.P9991559742169177564

namespace A388283

/-- `A033885(n+1)/gcd(A033879(n+1), A153152(n))` -/
def P9991559742169177564.Spec : Prop :=
  ∀ n, P9991559742169177564.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P17384309255887798987

`A017666(n+1)+A017666(n+1)-A243473(n+1)`
-/

namespace A388283.P17384309255887798987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) + (A017666 (n + 1) - A243473 (n + 1))

end

end A388283.P17384309255887798987

namespace A388283

/-- `A017666(n+1)+A017666(n+1)-A243473(n+1)` -/
def P17384309255887798987.Spec : Prop :=
  ∀ n, P17384309255887798987.a n = A388283 (n + 1)

end A388283

/-!
# A388284: Square array A(n, k) = A388283(A246278(n, k)), read by falling antidiagonals. Numerator of (3*n-sigma(n))/n, as applied to the prime shift array.

The programs for A388284, there is no canonical definition to state claims against.
-/

/-! ## A388284.P1047261519084911132

`A388285(n+1)/A355925(n+1)`
-/

namespace A388284.P1047261519084911132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388285 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A388284.P1047261519084911132

/-! ## A388284.P13304705817033368126

`A341606(n+1)+A378979(n+1)/A355925(n+1)`
-/

namespace A388284.P13304705817033368126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341606 (n + 1) : ℚ) + (A378979 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A388284.P13304705817033368126

/-! ## A388284.P7980318056654544800

`(A378979(n+1)+A246278(n+2))/A355925(n+1)`
-/

namespace A388284.P7980318056654544800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378979 (n + 1) + A246278 (n + 2) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A388284.P7980318056654544800

/-! ## A388284.P16530367122302501869

`A341606(n+1)*A388285(n+1)/A246278(n+2)`
-/

namespace A388284.P16530367122302501869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341606 (n + 1) * A388285 (n + 1) : ℚ) / (A246278 (n + 2) : ℚ)

end

end A388284.P16530367122302501869

/-! ## A388284.P3607951424709476896

`A388285(n+1)/A249818(A246278(n+2)/A341606(n+1))`
-/

namespace A388284.P3607951424709476896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388285 (n + 1) : ℚ) / (A249818 (SequenceMachineLib.roundAway ((A246278 (n + 2) : ℚ) / (A341606 (n + 1) : ℚ))).toNat : ℚ)

end

end A388284.P3607951424709476896

/-! ## A388284.P2612882320741202902

`A388285(n+1)/A324394(A253551(n+1))`
-/

namespace A388284.P2612882320741202902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388285 (n + 1) : ℚ) / (A324394 (A253551 (n + 1)).toNat : ℚ)

end

end A388284.P2612882320741202902

/-! ## A388284.P3075419639047135900

`A388283(A246278(n+2))`
-/

namespace A388284.P3075419639047135900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (A246278 (n + 2)).toNat

end

end A388284.P3075419639047135900

/-! ## A388284.P3082181765005233763

`A388283(A341606(n+1)*A355925(n+1))`
-/

namespace A388284.P3082181765005233763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A388284.P3082181765005233763

/-!
# A388285: Square array A(n, k) = 3*A246278(n, k) - sigma(A246278(n, k)), read by falling antidiagonals. A033885(n) = 3*n-sigma(n) as applied to the prime shift array.

The programs for A388285, there is no canonical definition to state claims against.
-/

/-! ## A388285.P843521515818267512

`A355925(n+1)*A388284(n+1)`
-/

namespace A388285.P843521515818267512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355925 (n + 1) * A388284 (n + 1)

end

end A388285.P843521515818267512

/-! ## A388285.P8837062981504073320

`A378979(n+1)+A341606(n+1)*A355925(n+1)`
-/

namespace A388285.P8837062981504073320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378979 (n + 1) + A341606 (n + 1) * A355925 (n + 1)

end

end A388285.P8837062981504073320

/-! ## A388285.P8224614900367926069

`A378979(n+1)+A246275(1+n)+1`
-/

namespace A388285.P8224614900367926069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378979 (n + 1) + (A246275 (1 + n) + 1)

end

end A388285.P8224614900367926069

/-! ## A388285.P1627783555902294004

`A378979(1+n)+A246278(n+2)`
-/

namespace A388285.P1627783555902294004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378979 (1 + n) + A246278 (n + 2)

end

end A388285.P1627783555902294004

/-! ## A388285.P5306282794358503940

`3*A246278(n+2)-A355927(n+1)`
-/

namespace A388285.P5306282794358503940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A246278 (n + 2) - A355927 (n + 1)

end

end A388285.P5306282794358503940

/-! ## A388285.P14940063870667645659

`A372563(n+1)+A246278(n+2)-A372562(n+1)`
-/

namespace A388285.P14940063870667645659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372563 (n + 1) + (A246278 (n + 2) - A372562 (n + 1))

end

end A388285.P14940063870667645659

/-! ## A388285.P17124859805968851861

`A388284(n+1)/A341606(n+1)*A246278(n+2)`
-/

namespace A388285.P17124859805968851861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388284 (n + 1) : ℚ) / (A341606 (n + 1) : ℚ) * (A246278 (n + 2) : ℚ)

end

end A388285.P17124859805968851861

/-! ## A388285.P8073428454515977296

`A033885(A246278(n+2))`
-/

namespace A388285.P8073428454515977296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A246278 (n + 2)).toNat

end

end A388285.P8073428454515977296

/-! ## A388285.P13216885670173711987

`A033885(A341606(n+1)*A355925(n+1))`
-/

namespace A388285.P13216885670173711987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A388285.P13216885670173711987

/-!
# A388286: Möbius transform of A325973, where A325973 is the arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors}.

The programs for A388286, the canonical program `A388286.P13565212649214377843` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388286 has offset 1).

The definition of A388286 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A388286.P10525627154902684061

`n+1-A389072(n+1)`
-/

namespace A388286.P10525627154902684061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A389072 (n + 1)

end

end A388286.P10525627154902684061

namespace A388286

/-- `n+1-A389072(n+1)` -/
def P10525627154902684061.Spec : Prop :=
  ∀ n, P10525627154902684061.a n = A388286 (n + 1)

end A388286

/-! ## A388286.P16302998766655429499

`∑{d}[n+1, A008683((n+1)/#)*A325973(#)]`
-/

namespace A388286.P16302998766655429499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A325973 d

end

end A388286.P16302998766655429499

namespace A388286

/-- `∑{d}[n+1, A008683((n+1)/#)*A325973(#)]` -/
def P16302998766655429499.Spec : Prop :=
  ∀ n, P16302998766655429499.a n = A388286 (n + 1)

end A388286

/-! ## A388286.P13565212649214377843

`1/2*(A254503(n+1)+abs(A055615(n+1)))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A388286

/-- `1/2*(A254503(n+1)+abs(A055615(n+1)))` -/
def P13565212649214377843.Spec : Prop :=
  ∀ n, P13565212649214377843.a n = (A388286 (n + 1) : ℚ)

end A388286

/-! ## A388286.P1697028803092839392

`1-A389072(n+1)+n`
-/

namespace A388286.P1697028803092839392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A389072 (n + 1) + (n : ℤ)

end

end A388286.P1697028803092839392

namespace A388286

/-- `1-A389072(n+1)+n` -/
def P1697028803092839392.Spec : Prop :=
  ∀ n, P1697028803092839392.a n = A388286 (n + 1)

end A388286

/-! ## A388286.P10861393503815840679

`n+1-∑{d}[n+1, A008683((n+1)/#)*A325974(#)]`
-/

namespace A388286.P10861393503815840679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat * A325974 d

end

end A388286.P10861393503815840679

namespace A388286

/-- `n+1-∑{d}[n+1, A008683((n+1)/#)*A325974(#)]` -/
def P10861393503815840679.Spec : Prop :=
  ∀ n, P10861393503815840679.a n = A388286 (n + 1)

end A388286

/-!
# A388288: The least number whose sum of digits in base b is divisible by b for all bases b = 2, 3, ..., n.

The programs for A388288, there is no canonical definition to state claims against.
-/

/-! ## A388288.P16963499923766181227

`A017666(A050381(∑{d}[n+1, #/gcd(#, 2)]+1))`
-/

namespace A388288.P16963499923766181227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (A050381 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (Nat.gcd d 2 : ℚ) + 1)).toNat).toNat

end

end A388288.P16963499923766181227

/-!
# A388289: One half of the even Markoff numbers.

The programs for A388289, there is no canonical definition to state claims against.
-/

/-! ## A388289.P10253077204985807891

`A002559(A388290(n+1))/2`
-/

namespace A388289.P10253077204985807891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002559 (A388290 (n + 1)).toNat : ℚ) / 2

end

end A388289.P10253077204985807891

/-! ## A388289.P4196636666512508266

`A002559(lt[A002559(n+1)%2, 1]+1)/2`
-/

namespace A388289.P4196636666512508266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002559 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002559 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A388289.P4196636666512508266

/-!
# A388290: Position of the even Markoff numbers 2*A388289 in A002559.

The programs for A388290, there is no canonical definition to state claims against.
-/

/-! ## A388290.P4156951708487232286

`lt[A002559(n+1)%2, 1]+1`
-/

namespace A388290.P4156951708487232286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002559 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388290.P4156951708487232286

/-! ## A388290.P12323003851871688923

`eq[2, gcd(A045623(n), A002559(n+1))]+1`
-/

namespace A388290.P12323003851871688923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A045623 n) (A002559 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A388290.P12323003851871688923

/-! ## A388290.P1160744215554061759

`A190364(n+1)+A023416(A001117(n))`
-/

namespace A388290.P1160744215554061759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190364 (n + 1) + A023416 (A001117 n).toNat

end

end A388290.P1160744215554061759

/-!
# A388291: The odd Markoff numbers.

The programs for A388291, there is no canonical definition to state claims against.
-/

/-! ## A388291.P3825056896574584549

`A002559(A388292(n+1))`
-/

namespace A388291.P3825056896574584549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (A388292 (n + 1)).toNat

end

end A388291.P3825056896574584549

/-! ## A388291.P10028191853256351004

`record[sqrt(A382099(n+1))]`
-/

namespace A388291.P10028191853256351004
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382099 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388291.P10028191853256351004

/-! ## A388291.P7830339754408929037

`record[gcd(A002559(n+1), A382099(n+1))]`
-/

namespace A388291.P7830339754408929037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002559 (n + 1)) (A382099 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388291.P7830339754408929037

/-! ## A388291.P11144393244657675329

`∩[2*n+1, A002559(n+1)]`
-/

namespace A388291.P11144393244657675329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388291.P11144393244657675329

/-! ## A388291.P7708756446897206970

`record[A000265(A002559(n+1))]`
-/

namespace A388291.P7708756446897206970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388291.P7708756446897206970

/-!
# A388292: Position of the odd Markoff numbers A388291 in A002559.

The programs for A388292, there is no canonical definition to state claims against.
-/

/-! ## A388292.P17639378383805984440

`comp[A388290(n+1)-1]+1`
-/

namespace A388292.P17639378383805984440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388290 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A388292.P17639378383805984440

/-! ## A388292.P880266031006611842

`eq[1, A002559(n+1)%2]+1`
-/

namespace A388292.P880266031006611842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002559 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A388292.P880266031006611842

/-! ## A388292.P13902383907765154149

`lt[A058011(val(A002559(n+1), 2)), 2]+1`
-/

namespace A388292.P13902383907765154149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058011 (SequenceMachineLib.valuation (A002559 (n + 1)).toNat 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388292.P13902383907765154149

/-! ## A388292.P5564967595247589428

`lt[A154323(val(A002559(n+1), 2)), 2]+1`
-/

namespace A388292.P5564967595247589428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154323 (SequenceMachineLib.valuation (A002559 (n + 1)).toNat 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388292.P5564967595247589428

/-! ## A388292.P1004947201511851157

`lt[A362713(val(A002559(n+1), 2)), 2]+1`
-/

namespace A388292.P1004947201511851157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362713 (SequenceMachineLib.valuation (A002559 (n + 1)).toNat 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388292.P1004947201511851157

/-! ## A388292.P3249261014521814267

`lt[A032822(val(A002559(n+1), 2)+1), 2]+1`
-/

namespace A388292.P3249261014521814267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032822 (SequenceMachineLib.valuation (A002559 (n + 1)).toNat 2 + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388292.P3249261014521814267

/-!
# A388293: Cubefull Achilles numbers.

The programs for A388293, there is no canonical definition to state claims against.
-/

/-! ## A388293.P16182673368187340094

`∩[A036966(n+1), A391980(n+1)]`
-/

namespace A388293.P16182673368187340094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P16182673368187340094

/-! ## A388293.P4005300970996676723

`∩[A372695(n+1), A391980(n+1)]`
-/

namespace A388293.P4005300970996676723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P4005300970996676723

/-! ## A388293.P8183106531936350346

`∩[A389551(n+1), A391980(n+1)]`
-/

namespace A388293.P8183106531936350346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P8183106531936350346

/-! ## A388293.P2926240062576340049

`∩[A036966(n+1), A052486(n+1)]`
-/

namespace A388293.P2926240062576340049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P2926240062576340049

/-! ## A388293.P11031569597412909227

`∩[A052486(n+1), A372695(n+1)]`
-/

namespace A388293.P11031569597412909227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P11031569597412909227

/-! ## A388293.P7238659036107102355

`∩[A052486(n+1), A389551(n+1)]`
-/

namespace A388293.P7238659036107102355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P7238659036107102355

/-! ## A388293.P13609616531351257596

`∩[A036966(n+1), A389753(n+1)]`
-/

namespace A388293.P13609616531351257596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P13609616531351257596

/-! ## A388293.P3860956849968472417

`∩[A372695(n+1), A389753(n+1)]`
-/

namespace A388293.P3860956849968472417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P3860956849968472417

/-! ## A388293.P7754290588845208516

`∩[A389551(n+1), A389753(n+1)]`
-/

namespace A388293.P7754290588845208516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P7754290588845208516

/-! ## A388293.P11846900484291751409

`∪[A391011(n+1), A392908(n+1)]`
-/

namespace A388293.P11846900484291751409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P11846900484291751409

/-!
# A388299: a(n) is the least base b >= 2 such that the base-b representation of n is the base-10 representation of a prime.

The programs for A388299, there is no canonical definition to state claims against.
-/

/-! ## A388299.P593449970959953854

`A386929(n+2)+A010054(A192823(n+1))`
-/

namespace A388299.P593449970959953854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386929 (n + 2) + A010054 (A192823 (n + 1)).toNat

end

end A388299.P593449970959953854

/-! ## A388299.P12306876884788695139

`A390675(A386954(n+1))+A386929(n+2)`
-/

namespace A388299.P12306876884788695139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390675 (A386954 (n + 1)).toNat + A386929 (n + 2)

end

end A388299.P12306876884788695139

