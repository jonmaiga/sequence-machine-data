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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B000.C032
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
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
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
import Seq.B008.C001
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
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A109000: Antidiagonal sums of square array A108998, in which row n equals the coordination sequence of B_n lattice.

The programs for A109000, there is no canonical definition to state claims against.
-/

/-! ## A109000.P3358112215613720875

`or(n, A110655(A136775(n+1)))`
-/

namespace A109000.P3358112215613720875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A110655 (A136775 (n + 1)).toNat)

end

end A109000.P3358112215613720875

/-! ## A109000.P1649000045850522270

`or(n, A110266(A150096(n)))`
-/

namespace A109000.P1649000045850522270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A110266 (A150096 n).toNat)

end

end A109000.P1649000045850522270

/-!
# A109001: Triangle, read by rows, where g.f. of row n equals the product of (1-x)^n and the g.f. of the coordination sequence for root lattice B_n, for n >= 0.

The programs for A109001, the canonical program `A109001.P9628727548173392022` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109001 has offset 0).

The definition of A109001 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109001.P9628727548173392022

`A091042(n)-A002262(n)*A028326(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A109001

/-- `A091042(n)-A002262(n)*A028326(n)` -/
def P9628727548173392022.Spec : Prop :=
  ∀ n, P9628727548173392022.a n = A109001 n

theorem P9628727548173392022.correct : P9628727548173392022.Spec := by
  intro n
  simp only [A109001]

end A109001

/-!
# A109002: Maximal difference between two n-digit numbers.

The programs for A109002, the canonical program `A109002.P16848678298124710293` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109002 has offset 1).

The definition of A109002 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109002.P16848678298124710293

`11*a(n-1)-10*a(n-2)` with `a(0)=9, a(1)=89, a(2)=899`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109002

/-- `11*a(n-1)-10*a(n-2)` -/
def P16848678298124710293.Spec : Prop :=
  ∀ n, P16848678298124710293.a n = A109002 (n + 1)

theorem P16848678298124710293.correct : P16848678298124710293.Spec := by
  intro n
  simp only [A109002, Nat.add_sub_cancel]

end A109002

/-!
# A109003: Number of equivalence classes of Boolean functions, that is, maps from GF(2)^n to GF(2), where maps f and g are equivalent iff one can be obtained from the other by a combination of (i) permuting the variables, (ii) complementing the variables, (iii) mapping f(x) to f(x) + b.x + c for a binary vector b and a binary scalar c.

The programs for A109003, there is no canonical definition to state claims against.
-/

/-! ## A109003.P10445743148286829030

`A139627(A308842(2*n+3))+A122323(n)`
-/

namespace A109003.P10445743148286829030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139627 (A308842 (2 * n + 3)).toNat + A122323 n

end

end A109003.P10445743148286829030

/-!
# A109004: Table of gcd(n, m) read by antidiagonals, n >= 0, m >= 0.

The programs for A109004, the canonical program `A109004.P14948550553895644887` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109004 has offset 0).

The definition of A109004 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109004.P9295703108118378463

`A281726(n+1)-1`
-/

namespace A109004.P9295703108118378463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281726 (n + 1) - 1

end

end A109004.P9295703108118378463

namespace A109004

/-- `A281726(n+1)-1` -/
def P9295703108118378463.Spec : Prop :=
  ∀ n, P9295703108118378463.a n = A109004 n

end A109004

/-! ## A109004.P9048857187634206426

`A140682(n)+A007318(n)`
-/

namespace A109004.P9048857187634206426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140682 n + A007318 n

end

end A109004.P9048857187634206426

namespace A109004

/-- `A140682(n)+A007318(n)` -/
def P9048857187634206426.Spec : Prop :=
  ∀ n, P9048857187634206426.a n = A109004 n

end A109004

/-! ## A109004.P14948550553895644887

`gcd(A002262(n), A003056(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109004

/-- `gcd(A002262(n), A003056(n))` -/
def P14948550553895644887.Spec : Prop :=
  ∀ n, (P14948550553895644887.a n : ℤ) = A109004 n

theorem P14948550553895644887.correct : P14948550553895644887.Spec := by
  intro n
  simp only [A109004]

end A109004

/-! ## A109004.P16754933038077935938

`gcd(A003984(n), A004197(n))`
-/

namespace A109004.P16754933038077935938
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003984 n) (A004197 n)

end

end A109004.P16754933038077935938

namespace A109004

/-- `gcd(A003984(n), A004197(n))` -/
def P16754933038077935938.Spec : Prop :=
  ∀ n, (P16754933038077935938.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P12015510328738556796

`gcd(A025581(n), A049581(n))`
-/

namespace A109004.P12015510328738556796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A049581 n)

end

end A109004.P12015510328738556796

namespace A109004

/-- `gcd(A025581(n), A049581(n))` -/
def P12015510328738556796.Spec : Prop :=
  ∀ n, (P12015510328738556796.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P1790117708345230339

`gcd(A061885(n), A063656(n))`
-/

namespace A109004.P1790117708345230339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A061885 n) (A063656 n)

end

end A109004.P1790117708345230339

namespace A109004

/-- `gcd(A061885(n), A063656(n))` -/
def P1790117708345230339.Spec : Prop :=
  ∀ n, (P1790117708345230339.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P7913611392783067486

`gcd(A103822(n), A103823(n))`
-/

namespace A109004.P7913611392783067486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103822 n) (A103823 n)

end

end A109004.P7913611392783067486

namespace A109004

/-- `gcd(A103822(n), A103823(n))` -/
def P7913611392783067486.Spec : Prop :=
  ∀ n, (P7913611392783067486.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P11220252317107746499

`gcd(A056942(n), A162611(n))`
-/

namespace A109004.P11220252317107746499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056942 n) (A162611 n)

end

end A109004.P11220252317107746499

namespace A109004

/-- `gcd(A056942(n), A162611(n))` -/
def P11220252317107746499.Spec : Prop :=
  ∀ n, (P11220252317107746499.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P18169918965234176336

`gcd(A109042(n), A114327(n))`
-/

namespace A109004.P18169918965234176336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109042 n) (A114327 n)

end

end A109004.P18169918965234176336

namespace A109004

/-- `gcd(A109042(n), A114327(n))` -/
def P18169918965234176336.Spec : Prop :=
  ∀ n, (P18169918965234176336.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P17287709537886814645

`A003056(C(A281726(n+1), 2))`
-/

namespace A109004.P17287709537886814645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A281726 (n + 1)).toNat 2)

end

end A109004.P17287709537886814645

namespace A109004

/-- `A003056(C(A281726(n+1), 2))` -/
def P17287709537886814645.Spec : Prop :=
  ∀ n, P17287709537886814645.a n = A109004 n

end A109004

/-! ## A109004.P8979966099613418455

`gcd(1-A101447(n), A141387(n))`
-/

namespace A109004.P8979966099613418455
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A101447 n) (A141387 n)

end

end A109004.P8979966099613418455

namespace A109004

/-- `gcd(1-A101447(n), A141387(n))` -/
def P8979966099613418455.Spec : Prop :=
  ∀ n, (P8979966099613418455.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P9966024339129989351

`gcd(1-A051125(n+1), A220508(n))`
-/

namespace A109004.P9966024339129989351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A051125 (n + 1)) (A220508 n)

end

end A109004.P9966024339129989351

namespace A109004

/-- `gcd(1-A051125(n+1), A220508(n))` -/
def P9966024339129989351.Spec : Prop :=
  ∀ n, (P9966024339129989351.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P15504589790063754411

`gcd(2-A141429(n+1), A059036(n))`
-/

namespace A109004.P15504589790063754411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A141429 (n + 1)) (A059036 n)

end

end A109004.P15504589790063754411

namespace A109004

/-- `gcd(2-A141429(n+1), A059036(n))` -/
def P15504589790063754411.Spec : Prop :=
  ∀ n, (P15504589790063754411.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P4607798012807619137

`gcd(2-A003057(n+2), log2(A059268(n)))`
-/

namespace A109004.P4607798012807619137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A003057 (n + 2)) (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ)))

end

end A109004.P4607798012807619137

namespace A109004

/-- `gcd(2-A003057(n+2), log2(A059268(n)))` -/
def P4607798012807619137.Spec : Prop :=
  ∀ n, (P4607798012807619137.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P17242944793146099163

`gcd(A002260(n+1)-1, A004736(n+1)-1)`
-/

namespace A109004.P17242944793146099163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1) - 1) (A004736 (n + 1) - 1)

end

end A109004.P17242944793146099163

namespace A109004

/-- `gcd(A002260(n+1)-1, A004736(n+1)-1)` -/
def P17242944793146099163.Spec : Prop :=
  ∀ n, (P17242944793146099163.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P7348365400909613682

`gcd(A002024(n+1)-1, A057554(2*n+1))`
-/

namespace A109004.P7348365400909613682
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002024 (n + 1) - 1) (A057554 (2 * n + 1))

end

end A109004.P7348365400909613682

namespace A109004

/-- `gcd(A002024(n+1)-1, A057554(2*n+1))` -/
def P7348365400909613682.Spec : Prop :=
  ∀ n, (P7348365400909613682.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P2662078197203454184

`gcd(A057944(n)+n, A003056(A057944(n)))`
-/

namespace A109004.P2662078197203454184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057944 n + (n : ℤ)) (A003056 (A057944 n).toNat)

end

end A109004.P2662078197203454184

namespace A109004

/-- `gcd(A057944(n)+n, A003056(A057944(n)))` -/
def P2662078197203454184.Spec : Prop :=
  ∀ n, (P2662078197203454184.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P18338031430574538821

`A279417(n+1)-(A279416(n+1)+1)`
-/

namespace A109004.P18338031430574538821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279417 (n + 1) - (A279416 (n + 1) + 1)

end

end A109004.P18338031430574538821

namespace A109004

/-- `A279417(n+1)-(A279416(n+1)+1)` -/
def P18338031430574538821.Spec : Prop :=
  ∀ n, P18338031430574538821.a n = A109004 n

end A109004

/-! ## A109004.P16559219196882787248

`gcd(A319571(2*n+1), A319571(2*n))`
-/

namespace A109004.P16559219196882787248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A319571 (2 * n + 1)) (A319571 (2 * n))

end

end A109004.P16559219196882787248

namespace A109004

/-- `gcd(A319571(2*n+1), A319571(2*n))` -/
def P16559219196882787248.Spec : Prop :=
  ∀ n, (P16559219196882787248.a n : ℤ) = A109004 n

end A109004

/-! ## A109004.P15553182904797549420

`gcd(A330709(2*n+1), A330709(2*n))`
-/

namespace A109004.P15553182904797549420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A330709 (2 * n + 1)) (A330709 (2 * n))

end

end A109004.P15553182904797549420

namespace A109004

/-- `gcd(A330709(2*n+1), A330709(2*n))` -/
def P15553182904797549420.Spec : Prop :=
  ∀ n, (P15553182904797549420.a n : ℤ) = A109004 n

end A109004

/-!
# A109006: 18th root of theta series in A109005.

The programs for A109006, there is no canonical definition to state claims against.
-/

/-! ## A109006.P289403285395731821

`∑{d}[A326156(A007216(n)), #]`
-/

namespace A109006.P289403285395731821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326156 (A007216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A109006.P289403285395731821

/-!
# A109007: a(n) = gcd(n,3).

The programs for A109007, the canonical program `A109007.P2466095578235204701` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109007 has offset 0).

The definition of A109007 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 3)` (program `A109007.P2466095578235204701`, by `A109007.P2466095578235204701.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109007.P2466095578235204701

`gcd(n, 3)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109007

/-- `gcd(n, 3)` -/
def P2466095578235204701.Spec : Prop :=
  ∀ n, (P2466095578235204701.a n : ℤ) = A109007 n

theorem P2466095578235204701.correct : P2466095578235204701.Spec := by
  intro n
  simp only [A109007]

end A109007

/-!
# A109008: a(n) = gcd(n,4).

The programs for A109008, the canonical program `A109008.P17072687275678363517` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109008 has offset 0).

The definition of A109008 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 4)` (program `A109008.P17072687275678363517`, by `A109008.P17072687275678363517.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109008.P17072687275678363517

`gcd(n, 4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109008

/-- `gcd(n, 4)` -/
def P17072687275678363517.Spec : Prop :=
  ∀ n, (P17072687275678363517.a n : ℤ) = A109008 n

theorem P17072687275678363517.correct : P17072687275678363517.Spec := by
  intro n
  simp only [A109008]

end A109008

/-!
# A109009: a(n) = gcd(n,5).

The programs for A109009, the canonical program `A109009.P7417354479421455813` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109009 has offset 0).

The definition of A109009 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 5)` (program `A109009.P7417354479421455813`, by `A109009.P7417354479421455813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109009.P7417354479421455813

`gcd(n, 5)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109009

/-- `gcd(n, 5)` -/
def P7417354479421455813.Spec : Prop :=
  ∀ n, (P7417354479421455813.a n : ℤ) = A109009 n

theorem P7417354479421455813.correct : P7417354479421455813.Spec := by
  intro n
  simp only [A109009]

end A109009

/-!
# A109010: a(n) = gcd(n,7).

The programs for A109010, the canonical program `A109010.P14854606571228748434` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109010 has offset 0).

The definition of A109010 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 7)` (program `A109010.P14854606571228748434`, by `A109010.P14854606571228748434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109010.P14854606571228748434

`gcd(n, 7)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109010

/-- `gcd(n, 7)` -/
def P14854606571228748434.Spec : Prop :=
  ∀ n, (P14854606571228748434.a n : ℤ) = A109010 n

theorem P14854606571228748434.correct : P14854606571228748434.Spec := by
  intro n
  simp only [A109010]

end A109010

/-!
# A109011: a(n) = gcd(n,8).

The programs for A109011, the canonical program `A109011.P12562433080328436663` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109011 has offset 0).

The definition of A109011 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 8)` (program `A109011.P12562433080328436663`, by `A109011.P12562433080328436663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109011.P12562433080328436663

`gcd(n, 8)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109011

/-- `gcd(n, 8)` -/
def P12562433080328436663.Spec : Prop :=
  ∀ n, (P12562433080328436663.a n : ℤ) = A109011 n

theorem P12562433080328436663.correct : P12562433080328436663.Spec := by
  intro n
  simp only [A109011]

end A109011

/-!
# A109012: a(n) = gcd(n,9).

The programs for A109012, the canonical program `A109012.P9107427478947479588` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109012 has offset 0).

The definition of A109012 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 9)` (program `A109012.P9107427478947479588`, by `A109012.P9107427478947479588.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109012.P9107427478947479588

`gcd(n, 9)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109012

/-- `gcd(n, 9)` -/
def P9107427478947479588.Spec : Prop :=
  ∀ n, (P9107427478947479588.a n : ℤ) = A109012 n

theorem P9107427478947479588.correct : P9107427478947479588.Spec := by
  intro n
  simp only [A109012]

end A109012

/-!
# A109013: a(n) = gcd(n,10).

The programs for A109013, the canonical program `A109013.P14803278909047872837` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109013 has offset 0).

The definition of A109013 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 10)` (program `A109013.P14803278909047872837`, by `A109013.P14803278909047872837.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109013.P14803278909047872837

`gcd(n, 10)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109013

/-- `gcd(n, 10)` -/
def P14803278909047872837.Spec : Prop :=
  ∀ n, (P14803278909047872837.a n : ℤ) = A109013 n

theorem P14803278909047872837.correct : P14803278909047872837.Spec := by
  intro n
  simp only [A109013]

end A109013

/-!
# A109014: a(n) = gcd(n,11).

The programs for A109014, the canonical program `A109014.P16390687205008799048` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109014 has offset 0).

The definition of A109014 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 11)` (program `A109014.P16390687205008799048`, by `A109014.P16390687205008799048.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109014.P16390687205008799048

`gcd(n, 11)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109014

/-- `gcd(n, 11)` -/
def P16390687205008799048.Spec : Prop :=
  ∀ n, (P16390687205008799048.a n : ℤ) = A109014 n

theorem P16390687205008799048.correct : P16390687205008799048.Spec := by
  intro n
  simp only [A109014]

end A109014

/-!
# A109015: a(n) = gcd(n,12).

The programs for A109015, the canonical program `A109015.P12884763892222899426` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109015 has offset 0).

The definition of A109015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n, 12)` (program `A109015.P12884763892222899426`, by `A109015.P12884763892222899426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109015.P12884763892222899426

`gcd(n, 12)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109015

/-- `gcd(n, 12)` -/
def P12884763892222899426.Spec : Prop :=
  ∀ n, (P12884763892222899426.a n : ℤ) = A109015 n

theorem P12884763892222899426.correct : P12884763892222899426.Spec := by
  intro n
  simp only [A109015]

end A109015

/-!
# A109016: Concatenate n and the sum of factorials of the digits of n.

The programs for A109016, there is no canonical definition to state claims against.
-/

/-! ## A109016.P1596976197254180396

`A272215(A174183(n)+n)`
-/

namespace A109016.P1596976197254180396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272215 (A174183 n + (n : ℤ)).toNat

end

end A109016.P1596976197254180396

/-! ## A109016.P16402630279229243828

`A272215(or(n, A174183(n)))`
-/

namespace A109016.P16402630279229243828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272215 (Int.lor (n : ℤ) (A174183 n)).toNat

end

end A109016.P16402630279229243828

/-! ## A109016.P457765016578447144

`A272215(xor(n, A174183(n)))`
-/

namespace A109016.P457765016578447144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272215 (Int.xor (n : ℤ) (A174183 n)).toNat

end

end A109016.P457765016578447144

/-!
# A109017: a(n) = Kronecker symbol (-6/n).

The programs for A109017, there is no canonical definition to state claims against.
-/

/-! ## A109017.P10474384743134094477

`A260190(A057979(n))`
-/

namespace A109017.P10474384743134094477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260190 (A057979 n).toNat

end

end A109017.P10474384743134094477

/-!
# A109019: Numbers whose digit reversal is different and has the same number of prime factors (with multiplicity).

The programs for A109019, there is no canonical definition to state claims against.
-/

/-! ## A109019.P9022502624775696355

`A118759(∪[A050699(n+1), A129338(n+1)])`
-/

namespace A109019.P9022502624775696355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050699 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A109019.P9022502624775696355

/-! ## A109019.P5406917935451341861

`A118759(∪[A097393(n+1), A129338(n+1)])`
-/

namespace A109019.P5406917935451341861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A109019.P5406917935451341861

/-! ## A109019.P12829497817608652631

`A118759(∪[A097393(n+1), A317688(n+5)])`
-/

namespace A109019.P12829497817608652631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317688 (n + 5)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A109019.P12829497817608652631

/-! ## A109019.P2848895498663863143

`∪[A068893(n+1), A106325(A097393(n+1))]`
-/

namespace A109019.P2848895498663863143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106325 (A097393 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109019.P2848895498663863143

/-!
# A109020: a(n) = (2*7^n - 3*3^n + 1)/6.

The programs for A109020, the canonical program `A109020.P8949039612476367640` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109020 has offset 0).

The definition of A109020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109020.P8949039612476367640

`11*a(n-1)-31*a(n-2)+21*a(n-3)` with `a(0)=0, a(1)=1, a(2)=12`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109020

/-- `11*a(n-1)-31*a(n-2)+21*a(n-3)` -/
def P8949039612476367640.Spec : Prop :=
  ∀ n, P8949039612476367640.a n = A109020 n

theorem P8949039612476367640.correct : P8949039612476367640.Spec := by
  intro n
  simp only [A109020]

end A109020

/-! ## A109020.P10228680385898761728

`(2*7^n-3*3^n+1)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109020.P10228680385898761728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 7 ^ n : ℤ) - (3 * 3 ^ n : ℤ) + 1 : ℚ) / 6

end

end A109020.P10228680385898761728

namespace A109020

/-- `(2*7^n-3*3^n+1)/6` -/
def P10228680385898761728.Spec : Prop :=
  ∀ n, P10228680385898761728.a n = (A109020 n : ℚ)

end A109020

/-! ## A109020.P10747518472596554543

`A109021(n)+A003462(n)`
-/

namespace A109020.P10747518472596554543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109021 n + A003462 n

end

end A109020.P10747518472596554543

namespace A109020

/-- `A109021(n)+A003462(n)` -/
def P10747518472596554543.Spec : Prop :=
  ∀ n, P10747518472596554543.a n = A109020 n

end A109020

/-! ## A109020.P17209984838462045275

`A125725(n+1)-(A007051(n)-1)`
-/

namespace A109020.P17209984838462045275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) - (A007051 n - 1)

end

end A109020.P17209984838462045275

namespace A109020

/-- `A125725(n+1)-(A007051(n)-1)` -/
def P17209984838462045275.Spec : Prop :=
  ∀ n, P17209984838462045275.a n = A109020 n

end A109020

/-! ## A109020.P6909787391058027625

`∑[2*7^n-3^n]%(2*7^n-3^n)`
-/

namespace A109020.P6909787391058027625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * 7 ^ n : ℤ) - (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((2 * 7 ^ n : ℤ) - (3 ^ n : ℤ))

end

end A109020.P6909787391058027625

namespace A109020

/-- `∑[2*7^n-3^n]%(2*7^n-3^n)` -/
def P6909787391058027625.Spec : Prop :=
  ∀ n, P6909787391058027625.a n = A109020 n

end A109020

/-!
# A109021: a(n) = (2*7^n - 6*3^n + 4)/6.

The programs for A109021, the canonical program `A109021.P7136898163842674405` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109021 has offset 0).

The definition of A109021 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A109021.P7136898163842674405

`11*a(n-1)-31*a(n-2)+21*a(n-3)` with `a(0)=0, a(1)=0, a(2)=8`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109021

/-- `11*a(n-1)-31*a(n-2)+21*a(n-3)` -/
def P7136898163842674405.Spec : Prop :=
  ∀ n, P7136898163842674405.a n = A109021 n

theorem P7136898163842674405.correct : P7136898163842674405.Spec := by
  intro n
  simp only [A109021]

end A109021

/-! ## A109021.P3067426691788066342

`(2*7^n-6*3^n+4)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A109021.P3067426691788066342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * 7 ^ n : ℤ) - (6 * 3 ^ n : ℤ) + 4 : ℚ) / 6

end

end A109021.P3067426691788066342

namespace A109021

/-- `(2*7^n-6*3^n+4)/6` -/
def P3067426691788066342.Spec : Prop :=
  ∀ n, P3067426691788066342.a n = (A109021 n : ℚ)

end A109021

/-! ## A109021.P11031021101196455868

`2*A341590(n)`
-/

namespace A109021.P11031021101196455868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A341590 n

end

end A109021.P11031021101196455868

namespace A109021

/-- `2*A341590(n)` -/
def P11031021101196455868.Spec : Prop :=
  ∀ n, P11031021101196455868.a n = A109021 n

end A109021

/-! ## A109021.P12782741418401169178

`ceil(7^n/3-A000244(n))`
-/

namespace A109021.P12782741418401169178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(7 ^ n : ℚ) / 3 - (A000244 n : ℚ)⌉

end

end A109021.P12782741418401169178

namespace A109021

/-- `ceil(7^n/3-A000244(n))` -/
def P12782741418401169178.Spec : Prop :=
  ∀ n, P12782741418401169178.a n = A109021 n

end A109021

/-! ## A109021.P4690741476757353007

`A125725(n+1)-A024023(n)`
-/

namespace A109021.P4690741476757353007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) - A024023 n

end

end A109021.P4690741476757353007

namespace A109021

/-- `A125725(n+1)-A024023(n)` -/
def P4690741476757353007.Spec : Prop :=
  ∀ n, P4690741476757353007.a n = A109021 n

end A109021

/-! ## A109021.P852286169905083402

`2*(A023000(n)-A003462(n))`
-/

namespace A109021.P852286169905083402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A023000 n - A003462 n)

end

end A109021.P852286169905083402

namespace A109021

/-- `2*(A023000(n)-A003462(n))` -/
def P852286169905083402.Spec : Prop :=
  ∀ n, P852286169905083402.a n = A109021 n

end A109021

/-! ## A109021.P8915111334198799364

`2*(A083076(n)-A081336(n))`
-/

namespace A109021.P8915111334198799364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A083076 n - A081336 n)

end

end A109021.P8915111334198799364

namespace A109021

/-- `2*(A083076(n)-A081336(n))` -/
def P8915111334198799364.Spec : Prop :=
  ∀ n, P8915111334198799364.a n = A109021 n

end A109021

/-! ## A109021.P6367527316929857796

`2*(∑[A190541(n)]-A190541(n))`
-/

namespace A109021.P6367527316929857796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A190541 n)

end

end A109021.P6367527316929857796

namespace A109021

/-- `2*(∑[A190541(n)]-A190541(n))` -/
def P6367527316929857796.Spec : Prop :=
  ∀ n, P6367527316929857796.a n = A109021 n

end A109021

/-!
# A109023: 3-almost primes (A014612) whose digit reversal is different and also has 3 prime factors (with multiplicity).

The programs for A109023, there is no canonical definition to state claims against.
-/

/-! ## A109023.P3164699642979871532

`∩[A109019(n+1), A366430(n+1)]`
-/

namespace A109023.P3164699642979871532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109023.P3164699642979871532

/-! ## A109023.P15988499852797298612

`∩[A109019(n+1), A217856(n+1)]`
-/

namespace A109023.P15988499852797298612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109023.P15988499852797298612

/-! ## A109023.P993876854052059

`∩[A014612(n+1), A109019(n+1)]`
-/

namespace A109023.P993876854052059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109023.P993876854052059

/-! ## A109023.P6789064598420809781

`∩[A054518(n+1), A366430(n+1)]`
-/

namespace A109023.P6789064598420809781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054518 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109023.P6789064598420809781

/-! ## A109023.P5587746778209136931

`∩[A029742(n+1), A366430(n+1)]`
-/

namespace A109023.P5587746778209136931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366430 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109023.P5587746778209136931

/-! ## A109023.P778252429497226923

`filter[A109019(n+1), A101605(#)]`
-/

namespace A109023.P778252429497226923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A109023.P778252429497226923

/-!
# A109024: Numbers that have exactly four prime factors counted with multiplicity (A014613) whose digit reversal is different and also has 4 prime factors (with multiplicity).

The programs for A109024, there is no canonical definition to state claims against.
-/

/-! ## A109024.P591387432228112639

`∩[A014613(n+1), A109019(n+1)]`
-/

namespace A109024.P591387432228112639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109024.P591387432228112639

/-! ## A109024.P1089966060918082621

`∩[A109019(n+1), A307342(n+1)]`
-/

namespace A109024.P1089966060918082621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109024.P1089966060918082621

/-!
# A109033: Number of permutations in S_n avoiding the patterns 1342 and 2143.

The programs for A109033, there is no canonical definition to state claims against.
-/

/-! ## A109033.P13889021677276801538

`∑[A109034(n)]`
-/

namespace A109033.P13889021677276801538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109033.P13889021677276801538

/-! ## A109033.P17431457598776030252

`ceil(A059278(n)/2)`
-/

namespace A109033.P17431457598776030252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059278 n : ℚ) / 2⌉

end

end A109033.P17431457598776030252

/-! ## A109033.P1494861144049450102

`A007318(C(2, n))/2+A059278(n)/2`
-/

namespace A109033.P1494861144049450102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (Nat.choose 2 n) : ℚ) / 2 + (A059278 n : ℚ) / 2

end

end A109033.P1494861144049450102

/-! ## A109033.P16600824195653038895

`A000045(C(n, n+1))+round(A059278(n)/2)`
-/

namespace A109033.P16600824195653038895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (n + 1)) + SequenceMachineLib.roundAway ((A059278 n : ℚ) / 2)

end

end A109033.P16600824195653038895

/-! ## A109033.P18046381834828500589

`round(A059278(n)/A000034(A005408(n)))`
-/

namespace A109033.P18046381834828500589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A059278 n : ℚ) / (A000034 (A005408 n).toNat : ℚ))

end

end A109033.P18046381834828500589

/-! ## A109033.P11377911879957354965

`(A059278(n)+A001222(A190731(n+1)))/2`
-/

namespace A109033.P11377911879957354965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059278 n + A001222 (A190731 (n + 1)).toNat : ℚ) / 2

end

end A109033.P11377911879957354965

/-!
# A109034: First differences of A109033.

The programs for A109034, there is no canonical definition to state claims against.
-/

/-! ## A109034.P9104054345424928547

`A005843(A185967(∑[n]))-A262441(n)`
-/

namespace A109034.P9104054345424928547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A185967 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A262441 n

end

end A109034.P9104054345424928547

/-! ## A109034.P4794876346536191774

`A110654(A115140(n)+A109081(n+1))`
-/

namespace A109034.P4794876346536191774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A115140 n + A109081 (n + 1)).toNat

end

end A109034.P4794876346536191774

/-! ## A109034.P3546937425228853437

`A004277(A109081(n+1))-A262441(n)`
-/

namespace A109034.P3546937425228853437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A109081 (n + 1)).toNat - A262441 n

end

end A109034.P3546937425228853437

/-! ## A109034.P14953435665201427846

`A004277(A215067(2*n))-A262441(n)`
-/

namespace A109034.P14953435665201427846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A215067 (2 * n)).toNat - A262441 n

end

end A109034.P14953435665201427846

/-!
# A109035: Number of irreducible partitions into squares. A partition is irreducible if no subpartition with 2 or more parts sums to a square.

The programs for A109035, there is no canonical definition to state claims against.
-/

/-! ## A109035.P15060089749095455775

`A109036(n*char[comp[(n+1)²]])`
-/

namespace A109035.P15060089749095455775
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109036 (n * (if ∃ j, f1 j = n then 1 else 0))

end

end A109035.P15060089749095455775

/-! ## A109035.P5644883986324822140

`gcd(A089807(n), A109036(n))`
-/

namespace A109035.P5644883986324822140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089807 n) (A109036 n)

end

end A109035.P5644883986324822140

/-!
# A109037: Number of irreducible partitions into triangular numbers. A partition is irreducible if no subpartition with 2 or more parts sums to a triangular number.

The programs for A109037, there is no canonical definition to state claims against.
-/

/-! ## A109037.P18308813423518326558

`A109038(n)^(1-char[∑[n]])`
-/

namespace A109037.P18308813423518326558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109038 n : ℚ) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A109037.P18308813423518326558

/-! ## A109037.P9982350310089801873

`A109038(n%A193633(n))`
-/

namespace A109037.P9982350310089801873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109038 (Int.tmod (n : ℤ) (A193633 n)).toNat

end

end A109037.P9982350310089801873

/-! ## A109037.P11580551375038804371

`gcd(A073423(n), A109038(n))`
-/

namespace A109037.P11580551375038804371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A109038 n)

end

end A109037.P11580551375038804371

/-! ## A109037.P9592432070468231459

`gcd(A109038(n)+A066387(n+1), A066387(n+1))`
-/

namespace A109037.P9592432070468231459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109038 n + A066387 (n + 1)) (A066387 (n + 1))

end

end A109037.P9592432070468231459

/-!
# A109039: Expansion of eta(q) * eta(q^3) * (eta(q^4) * eta(q^6) / eta(q^12))^2 in powers of q.

The programs for A109039, there is no canonical definition to state claims against.
-/

/-! ## A109039.P13897740931424651277

`A033999(n)*A257656(n)`
-/

namespace A109039.P13897740931424651277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A257656 n

end

end A109039.P13897740931424651277

/-! ## A109039.P13876747452223093608

`A257656(n)/A257656(A006519(n+1))`
-/

namespace A109039.P13876747452223093608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 n : ℚ) / (A257656 (A006519 (n + 1)).toNat : ℚ)

end

end A109039.P13876747452223093608

/-! ## A109039.P7915095718811872631

`A113417(n)/A113419(n)*A257656(n)`
-/

namespace A109039.P7915095718811872631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113417 n : ℚ) / (A113419 n : ℚ) * (A257656 n : ℚ)

end

end A109039.P7915095718811872631

/-! ## A109039.P14865115589807604007

`A209940(n)*A257656(n)/A258096(n)`
-/

namespace A109039.P14865115589807604007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209940 n * A257656 n : ℚ) / (A258096 n : ℚ)

end

end A109039.P14865115589807604007

/-! ## A109039.P13860307834426045117

`A109040(n+1)/A257656(n+1)*A257656(n)`
-/

namespace A109039.P13860307834426045117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109040 (n + 1) : ℚ) / (A257656 (n + 1) : ℚ) * (A257656 n : ℚ)

end

end A109039.P13860307834426045117

/-! ## A109039.P8699912399245283868

`A257656(n)/A033999(n+2)`
-/

namespace A109039.P8699912399245283868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 n : ℚ) / (A033999 (n + 2) : ℚ)

end

end A109039.P8699912399245283868

/-! ## A109039.P9818685491900839687

`A257656(2*n)`
-/

namespace A109039.P9818685491900839687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257656 (2 * n)

end

end A109039.P9818685491900839687

/-! ## A109039.P5577284994237419314

`or(A000007(n), A257656(A005843(n)))`
-/

namespace A109039.P5577284994237419314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A257656 (A005843 n).toNat)

end

end A109039.P5577284994237419314

/-! ## A109039.P6601944716686088888

`A257656(n)²/A257656(A005843(n))`
-/

namespace A109039.P6601944716686088888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 n ^ 2 : ℚ) / (A257656 (A005843 n).toNat : ℚ)

end

end A109039.P6601944716686088888

/-! ## A109039.P15447002043301732862

`A257656(A005843(n))+A000007(n+1)`
-/

namespace A109039.P15447002043301732862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257656 (A005843 n).toNat + A000007 (n + 1)

end

end A109039.P15447002043301732862

/-! ## A109039.P12427347625816567460

`(A266684(2*n)+A260301(2*n))/2`
-/

namespace A109039.P12427347625816567460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266684 (2 * n) + A260301 (2 * n) : ℚ) / 2

end

end A109039.P12427347625816567460

/-! ## A109039.P13413908758658927330

`A257656(A008574(n))%A119874(n)`
-/

namespace A109039.P13413908758658927330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257656 (A008574 n).toNat) (A119874 n)

end

end A109039.P13413908758658927330

/-! ## A109039.P16376410494791367875

`A257656(n)²/A257656(A008574(n))`
-/

namespace A109039.P16376410494791367875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 n ^ 2 : ℚ) / (A257656 (A008574 n).toNat : ℚ)

end

end A109039.P16376410494791367875

/-! ## A109039.P17652335170475273092

`A257656(n)²/A257656(A008586(n))`
-/

namespace A109039.P17652335170475273092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 n ^ 2 : ℚ) / (A257656 (A008586 n).toNat : ℚ)

end

end A109039.P17652335170475273092

/-! ## A109039.P3755855872317512270

`A257656(A008458(n))%A017581(n)`
-/

namespace A109039.P3755855872317512270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257656 (A008458 n).toNat) (A017581 n)

end

end A109039.P3755855872317512270

/-! ## A109039.P2025219242299079156

`A257656(n)²/A257656(A008458(n))`
-/

namespace A109039.P2025219242299079156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 n ^ 2 : ℚ) / (A257656 (A008458 n).toNat : ℚ)

end

end A109039.P2025219242299079156

/-! ## A109039.P9646642849117822820

`A257656(A005843(n))%A001060(n)`
-/

namespace A109039.P9646642849117822820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257656 (A005843 n).toNat) (A001060 n)

end

end A109039.P9646642849117822820

/-!
# A109040: Expansion of 1-eta(q)*eta(q^3)*(eta(q^4)*eta(q^6))^2/eta(q^12)^2 in powers of q.

The programs for A109040, there is no canonical definition to state claims against.
-/

/-! ## A109040.P9837629389589292435

`∑{d}[n+1, #*A110161(#)]`
-/

namespace A109040.P9837629389589292435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A110161 d

end

end A109040.P9837629389589292435

/-! ## A109040.P9549780925223430538

`A257656(n+1)/(-1)^n`
-/

namespace A109040.P9549780925223430538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A109040.P9549780925223430538

/-! ## A109040.P2603532085474010060

`-A109039((n+1)/2^val(n+1, 2))`
-/

namespace A109040.P2603532085474010060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A109039 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A109040.P2603532085474010060

/-! ## A109040.P2591452329470873657

`A257656(A000265(n+1))`
-/

namespace A109040.P2591452329470873657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257656 (A000265 (n + 1)).toNat

end

end A109040.P2591452329470873657

/-! ## A109040.P6697107591833808988

`A257656(A065330(n+1))`
-/

namespace A109040.P6697107591833808988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257656 (A065330 (n + 1)).toNat

end

end A109040.P6697107591833808988

/-! ## A109040.P12842148636821338145

`A033999(n)*A257656(n+1)`
-/

namespace A109040.P12842148636821338145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A257656 (n + 1)

end

end A109040.P12842148636821338145

/-! ## A109040.P17669666800840341099

`A257656((n+1)/A006519(n+1))`
-/

namespace A109040.P17669666800840341099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257656 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A006519 (n + 1) : ℚ))).toNat

end

end A109040.P17669666800840341099

/-! ## A109040.P2762445407037616456

`A257656(n+1)/A109039(n)*A257656(n)`
-/

namespace A109040.P2762445407037616456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A257656 (n + 1) : ℚ) / (A109039 n : ℚ) * (A257656 n : ℚ)

end

end A109040.P2762445407037616456

/-! ## A109040.P8064196008753662607

`-A109039(n+1)`
-/

namespace A109040.P8064196008753662607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A109039 (n + 1)

end

end A109040.P8064196008753662607

/-! ## A109040.P12234054578671367744

`Δ[a(n-1)-A109039(n)]` with `a(0)=0`
-/

namespace A109040.P12234054578671367744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - A109039 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109040.P12234054578671367744

/-! ## A109040.P8365340012489694613

`and(2, A010051(n+2))-A109039(n+1)`
-/

namespace A109040.P8365340012489694613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A010051 (n + 2)) - A109039 (n + 1)

end

end A109040.P8365340012489694613

/-! ## A109040.P2156034567775909766

`and(2, A000005(n+1)²)-A109039(n+1)`
-/

namespace A109040.P2156034567775909766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000005 (n + 1) ^ 2) - A109039 (n + 1)

end

end A109040.P2156034567775909766

/-! ## A109040.P7976624472209825682

`A109039(n+1)*A109039(A001316(n))`
-/

namespace A109040.P7976624472209825682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (n + 1) * A109039 (A001316 n).toNat

end

end A109040.P7976624472209825682

/-! ## A109040.P9305033818359782091

`A109039(n+1)*A109039(A006047(n))`
-/

namespace A109040.P9305033818359782091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (n + 1) * A109039 (A006047 n).toNat

end

end A109040.P9305033818359782091

/-! ## A109040.P5066708581196139519

`A109039(n+1)*A109039(A006519(n+2))`
-/

namespace A109040.P5066708581196139519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (n + 1) * A109039 (A006519 (n + 2)).toNat

end

end A109040.P5066708581196139519

/-! ## A109040.P12906559966509695466

`A109039(n+1)*A109039(A038148(n+2))`
-/

namespace A109040.P12906559966509695466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109039 (n + 1) * A109039 (A038148 (n + 2)).toNat

end

end A109040.P12906559966509695466

/-! ## A109040.P17027525296942395841

`A001222(A007318(C(2, n)))-A109039(n+1)`
-/

namespace A109040.P17027525296942395841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007318 (Nat.choose 2 n)).toNat - A109039 (n + 1)

end

end A109040.P17027525296942395841

/-! ## A109040.P2776867151444061375

`A008683(16*(n+1))-A109039(n+1)`
-/

namespace A109040.P2776867151444061375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (16 * (n + 1)) - A109039 (n + 1)

end

end A109040.P2776867151444061375

/-! ## A109040.P7060606546109951809

`(n-A008619(2*n))*A109039(n+1)`
-/

namespace A109040.P7060606546109951809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008619 (2 * n)) * A109039 (n + 1)

end

end A109040.P7060606546109951809

/-! ## A109040.P11403544955902390227

`-A257656(2*(n+1))`
-/

namespace A109040.P11403544955902390227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A257656 (2 * (n + 1))

end

end A109040.P11403544955902390227

/-!
# A109041: Expansion of eta(q)^9 / eta(q^3)^3 in powers of q.

The programs for A109041, there is no canonical definition to state claims against.
-/

/-! ## A109041.P2331442272038286943

`2*A132000(2*n)-A132000(n)`
-/

namespace A109041.P2331442272038286943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132000 (2 * n) - A132000 n

end

end A109041.P2331442272038286943

/-! ## A109041.P16250518556767315568

`(A231962(n)+abs(A130196(n)*A181976(n)))/2`
-/

namespace A109041.P16250518556767315568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n + |A130196 n * A181976 n| : ℚ) / 2

end

end A109041.P16250518556767315568

/-! ## A109041.P16164591528018565469

`(A231962(n)+abs(A181976(n)*A280048(n)))/2`
-/

namespace A109041.P16164591528018565469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n + |A181976 n * A280048 n| : ℚ) / 2

end

end A109041.P16164591528018565469

/-! ## A109041.P18271610485340457987

`(A231961(n)+A004007(n))/2`
-/

namespace A109041.P18271610485340457987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231961 n + A004007 n : ℚ) / 2

end

end A109041.P18271610485340457987

/-! ## A109041.P10434971532705110824

`(A231962(n)+A005129(n))/2`
-/

namespace A109041.P10434971532705110824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A231962 n + A005129 n : ℚ) / 2

end

end A109041.P10434971532705110824

/-! ## A109041.P15916612432980456554

`A205973(n)/A324969(n+1)`
-/

namespace A109041.P15916612432980456554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205973 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A109041.P15916612432980456554

/-! ## A109041.P4446152840941357598

`A209453(n)/A215928(n)`
-/

namespace A109041.P4446152840941357598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209453 n : ℚ) / (A215928 n : ℚ)

end

end A109041.P4446152840941357598

/-! ## A109041.P6301303723047689126

`A209453(n)/A249576(A008486(n))`
-/

namespace A109041.P6301303723047689126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209453 n : ℚ) / (A249576 (A008486 n).toNat : ℚ)

end

end A109041.P6301303723047689126

/-! ## A109041.P5266384406969897176

`A034896(n)/A209451(n)*A209453(n)`
-/

namespace A109041.P5266384406969897176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A209451 n : ℚ) * (A209453 n : ℚ)

end

end A109041.P5266384406969897176

/-! ## A109041.P2144463275826959462

`A209453(n)/gcd(A000129(n), A209446(n))`
-/

namespace A109041.P2144463275826959462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209453 n : ℚ) / (Int.gcd (A000129 n) (A209446 n) : ℚ)

end

end A109041.P2144463275826959462

/-!
# A109042: Square array read by antidiagonals: A(n, k) = lcm(n, k) for n >= 0, k >= 0.

The programs for A109042, the canonical program `A109042.P10372275233379341162` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109042 has offset 0).

The definition of A109042 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109042.P14014528122198829182

`lcm(A003984(n), A004197(n))`
-/

namespace A109042.P14014528122198829182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003984 n) (A004197 n)

end

end A109042.P14014528122198829182

namespace A109042

/-- `lcm(A003984(n), A004197(n))` -/
def P14014528122198829182.Spec : Prop :=
  ∀ n, (P14014528122198829182.a n : ℤ) = A109042 n

end A109042

/-! ## A109042.P10372275233379341162

`lcm(A002262(n), A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109042

/-- `lcm(A002262(n), A025581(n))` -/
def P10372275233379341162.Spec : Prop :=
  ∀ n, (P10372275233379341162.a n : ℤ) = A109042 n

theorem P10372275233379341162.correct : P10372275233379341162.Spec := by
  intro n
  simp only [A109042]

end A109042

/-! ## A109042.P11786496697435710626

`lcm(A103822(n), A103823(n))`
-/

namespace A109042.P11786496697435710626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A103822 n) (A103823 n)

end

end A109042.P11786496697435710626

namespace A109042

/-- `lcm(A103822(n), A103823(n))` -/
def P11786496697435710626.Spec : Prop :=
  ∀ n, (P11786496697435710626.a n : ℤ) = A109042 n

end A109042

/-! ## A109042.P780881746597906184

`lcm(A004736(n+1)-1, A057554(Δ[n²]))`
-/

namespace A109042.P780881746597906184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004736 (n + 1) - 1) (A057554 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A109042.P780881746597906184

namespace A109042

/-- `lcm(A004736(n+1)-1, A057554(Δ[n²]))` -/
def P780881746597906184.Spec : Prop :=
  ∀ n, (P780881746597906184.a n : ℤ) = A109042 n

end A109042

/-! ## A109042.P11125034978075879046

`lcm(A057554(2*n+1), A057554(2*(n+1)))`
-/

namespace A109042.P11125034978075879046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057554 (2 * n + 1)) (A057554 (2 * (n + 1)))

end

end A109042.P11125034978075879046

namespace A109042

/-- `lcm(A057554(2*n+1), A057554(2*(n+1)))` -/
def P11125034978075879046.Spec : Prop :=
  ∀ n, (P11125034978075879046.a n : ℤ) = A109042 n

end A109042

/-! ## A109042.P10414826513542567513

`lcm(A002260(n+1)-1, A000096(A003056(n))-n)`
-/

namespace A109042.P10414826513542567513
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002260 (n + 1) - 1) (A000096 (A003056 n).toNat - (n : ℤ))

end

end A109042.P10414826513542567513

namespace A109042

/-- `lcm(A002260(n+1)-1, A000096(A003056(n))-n)` -/
def P10414826513542567513.Spec : Prop :=
  ∀ n, (P10414826513542567513.a n : ℤ) = A109042 n

end A109042

/-! ## A109042.P5346475123977560293

`lcm(1-A193592(n), A193592(A038722(n+1)))`
-/

namespace A109042.P5346475123977560293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A193592 n) (A193592 (A038722 (n + 1)).toNat)

end

end A109042.P5346475123977560293

namespace A109042

/-- `lcm(1-A193592(n), A193592(A038722(n+1)))` -/
def P5346475123977560293.Spec : Prop :=
  ∀ n, (P5346475123977560293.a n : ℤ) = A109042 n

end A109042

/-! ## A109042.P9009005066662810367

`lcm(A002262(n)%(n+1), A002262(A061579(n)))`
-/

namespace A109042.P9009005066662810367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.tmod (A002262 n) (n + 1 : ℤ)) (A002262 (A061579 n).toNat)

end

end A109042.P9009005066662810367

namespace A109042

/-- `lcm(A002262(n)%(n+1), A002262(A061579(n)))` -/
def P9009005066662810367.Spec : Prop :=
  ∀ n, (P9009005066662810367.a n : ℤ) = A109042 n

end A109042

/-! ## A109042.P6058181791516346556

`lcm(A319571(2*n+1), A319571(2*n))`
-/

namespace A109042.P6058181791516346556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A319571 (2 * n + 1)) (A319571 (2 * n))

end

end A109042.P6058181791516346556

namespace A109042

/-- `lcm(A319571(2*n+1), A319571(2*n))` -/
def P6058181791516346556.Spec : Prop :=
  ∀ n, (P6058181791516346556.a n : ℤ) = A109042 n

end A109042

/-! ## A109042.P5432645796006223745

`lcm(1-A002262(n+1), A003987(A286147(n)))`
-/

namespace A109042.P5432645796006223745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A002262 (n + 1)) (A003987 (A286147 n).toNat)

end

end A109042.P5432645796006223745

namespace A109042

/-- `lcm(1-A002262(n+1), A003987(A286147(n)))` -/
def P5432645796006223745.Spec : Prop :=
  ∀ n, (P5432645796006223745.a n : ℤ) = A109042 n

end A109042

/-!
# A109043: a(n) = lcm(n,2).

The programs for A109043, the canonical program `A109043.P13676580040803735715` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109043 has offset 0).

The definition of A109043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 2)` (program `A109043.P13676580040803735715`, by `A109043.P13676580040803735715.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109043.P13676580040803735715

`lcm(n, 2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109043

/-- `lcm(n, 2)` -/
def P13676580040803735715.Spec : Prop :=
  ∀ n, (P13676580040803735715.a n : ℤ) = A109043 n

theorem P13676580040803735715.correct : P13676580040803735715.Spec := by
  intro n
  simp only [A109043]

end A109043

/-! ## A109043.P520370865192001076

`n*2/gcd(n, 2)`
-/

namespace A109043.P520370865192001076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 / (Nat.gcd n 2 : ℚ))

end

end A109043.P520370865192001076

namespace A109043

/-- `n*2/gcd(n, 2)` -/
def P520370865192001076.Spec : Prop :=
  ∀ n, P520370865192001076.a n = (A109043 n : ℚ)

end A109043

/-! ## A109043.P11365574825811843925

`2*A026741(n)`
-/

namespace A109043.P11365574825811843925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026741 n

end

end A109043.P11365574825811843925

namespace A109043

/-- `2*A026741(n)` -/
def P11365574825811843925.Spec : Prop :=
  ∀ n, P11365574825811843925.a n = A109043 n

end A109043

/-! ## A109043.P12882115840579799550

`n*A000034(n)`
-/

namespace A109043.P12882115840579799550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000034 n

end

end A109043.P12882115840579799550

namespace A109043

/-- `n*A000034(n)` -/
def P12882115840579799550.Spec : Prop :=
  ∀ n, P12882115840579799550.a n = A109043 n

end A109043

/-! ## A109043.P17356267306821460283

`2*gcd(n, ∑[n])`
-/

namespace A109043.P17356267306821460283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109043.P17356267306821460283

namespace A109043

/-- `2*gcd(n, ∑[n])` -/
def P17356267306821460283.Spec : Prop :=
  ∀ n, (P17356267306821460283.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P10483770864132094181

`n*(1+n%2)`
-/

namespace A109043.P10483770864132094181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (1 + n % 2)

end

end A109043.P10483770864132094181

namespace A109043

/-- `n*(1+n%2)` -/
def P10483770864132094181.Spec : Prop :=
  ∀ n, (P10483770864132094181.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P3697805124079556220

`n*(and(1, n)+1)`
-/

namespace A109043.P3697805124079556220
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.land 1 n + 1)

end

end A109043.P3697805124079556220

namespace A109043

/-- `n*(and(1, n)+1)` -/
def P3697805124079556220.Spec : Prop :=
  ∀ n, (P3697805124079556220.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P12297236186613419601

`n*2^and(1, n)`
-/

namespace A109043.P12297236186613419601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 2 ^ Nat.land 1 n

end

end A109043.P12297236186613419601

namespace A109043

/-- `n*2^and(1, n)` -/
def P12297236186613419601.Spec : Prop :=
  ∀ n, (P12297236186613419601.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P12621554379691349587

`n*C(2, and(1, n))`
-/

namespace A109043.P12621554379691349587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (Nat.land 1 n)

end

end A109043.P12621554379691349587

namespace A109043

/-- `n*C(2, and(1, n))` -/
def P12621554379691349587.Spec : Prop :=
  ∀ n, (P12621554379691349587.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P11867600996909995948

`C(n, xor(1, n))+n`
-/

namespace A109043.P11867600996909995948
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.xor 1 n) + n

end

end A109043.P11867600996909995948

namespace A109043

/-- `C(n, xor(1, n))+n` -/
def P11867600996909995948.Spec : Prop :=
  ∀ n, (P11867600996909995948.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P4279892573555132681

`n*Δ[or(1, n)]!`
-/

namespace A109043.P4279892573555132681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A109043.P4279892573555132681

namespace A109043

/-- `n*Δ[or(1, n)]!` -/
def P4279892573555132681.Spec : Prop :=
  ∀ n, (P4279892573555132681.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P14931553878157620853

`n*(or(n, -2)+3)`
-/

namespace A109043.P14931553878157620853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.lor (n : ℤ) (-2) + 3)

end

end A109043.P14931553878157620853

namespace A109043

/-- `n*(or(n, -2)+3)` -/
def P14931553878157620853.Spec : Prop :=
  ∀ n, P14931553878157620853.a n = A109043 n

end A109043

/-! ## A109043.P12678058465597409351

`n*and(3, n²-3)`
-/

namespace A109043.P12678058465597409351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 3 ((n ^ 2 : ℤ) - 3)

end

end A109043.P12678058465597409351

namespace A109043

/-- `n*and(3, n²-3)` -/
def P12678058465597409351.Spec : Prop :=
  ∀ n, P12678058465597409351.a n = A109043 n

end A109043

/-! ## A109043.P1020760938877704780

`n/2^-and(1, n)`
-/

namespace A109043.P1020760938877704780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 : ℚ) ^ (-(Nat.land 1 n : ℤ) : ℤ)

end

end A109043.P1020760938877704780

namespace A109043

/-- `n/2^-and(1, n)` -/
def P1020760938877704780.Spec : Prop :=
  ∀ n, P1020760938877704780.a n = (A109043 n : ℚ)

end A109043

/-! ## A109043.P11826491633536136488

`n*((2*n)%4)!`
-/

namespace A109043.P11826491633536136488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 * n % 4)

end

end A109043.P11826491633536136488

namespace A109043

/-- `n*((2*n)%4)!` -/
def P11826491633536136488.Spec : Prop :=
  ∀ n, (P11826491633536136488.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P13510170542181710253

`n*(2*and(1, n))!`
-/

namespace A109043.P13510170542181710253
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.factorial (2 * Nat.land 1 n)

end

end A109043.P13510170542181710253

namespace A109043

/-- `n*(2*and(1, n))!` -/
def P13510170542181710253.Spec : Prop :=
  ∀ n, (P13510170542181710253.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P879232521114832012

`n*C(2, n²%2)`
-/

namespace A109043.P879232521114832012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 2 (n ^ 2 % 2)

end

end A109043.P879232521114832012

namespace A109043

/-- `n*C(2, n²%2)` -/
def P879232521114832012.Spec : Prop :=
  ∀ n, (P879232521114832012.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P14272155902209408038

`n*(2-char[2*n])`
-/

namespace A109043.P14272155902209408038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A109043.P14272155902209408038

namespace A109043

/-- `n*(2-char[2*n])` -/
def P14272155902209408038.Spec : Prop :=
  ∀ n, P14272155902209408038.a n = A109043 n

end A109043

/-! ## A109043.P7940442458647085005

`gcd(n²+n, 2*n)`
-/

namespace A109043.P7940442458647085005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n ^ 2 + n) (2 * n)

end

end A109043.P7940442458647085005

namespace A109043

/-- `gcd(n²+n, 2*n)` -/
def P7940442458647085005.Spec : Prop :=
  ∀ n, (P7940442458647085005.a n : ℤ) = A109043 n

end A109043

/-! ## A109043.P7945029623914266363

`and(n, (-1)^n)+n`
-/

namespace A109043.P7945029623914266363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((-1) ^ n) + (n : ℤ)

end

end A109043.P7945029623914266363

namespace A109043

/-- `and(n, (-1)^n)+n` -/
def P7945029623914266363.Spec : Prop :=
  ∀ n, P7945029623914266363.a n = A109043 n

end A109043

/-!
# A109044: a(n) = lcm(n,3).

The programs for A109044, the canonical program `A109044.P18058097096370641077` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109044 has offset 0).

The definition of A109044 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 3)` (program `A109044.P18058097096370641077`, by `A109044.P18058097096370641077.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109044.P18058097096370641077

`lcm(n, 3)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109044

/-- `lcm(n, 3)` -/
def P18058097096370641077.Spec : Prop :=
  ∀ n, (P18058097096370641077.a n : ℤ) = A109044 n

theorem P18058097096370641077.correct : P18058097096370641077.Spec := by
  intro n
  simp only [A109044]

end A109044

/-! ## A109044.P15195101622620418827

`3*n/gcd(n, 3)`
-/

namespace A109044.P15195101622620418827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / (Nat.gcd n 3 : ℚ))

end

end A109044.P15195101622620418827

namespace A109044

/-- `3*n/gcd(n, 3)` -/
def P15195101622620418827.Spec : Prop :=
  ∀ n, P15195101622620418827.a n = (A109044 n : ℚ)

end A109044

/-! ## A109044.P11137646125134932732

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=6, a(3)=3, a(4)=12, a(5)=15`
-/

namespace A109044.P11137646125134932732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 6, 3, 12, 15] fun n a =>
  2 * a (n - 3) - a (n - 6)

end

end A109044.P11137646125134932732

namespace A109044

/-- `2*a(n-3)-a(n-6)` -/
def P11137646125134932732.Spec : Prop :=
  ∀ n, P11137646125134932732.a n = A109044 n

end A109044

/-! ## A109044.P23158410691483136

`3*A051176(n)`
-/

namespace A109044.P23158410691483136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A051176 n

end

end A109044.P23158410691483136

namespace A109044

/-- `3*A051176(n)` -/
def P23158410691483136.Spec : Prop :=
  ∀ n, P23158410691483136.a n = A109044 n

end A109044

/-! ## A109044.P9496556897293548419

`3*n/A109007(n)`
-/

namespace A109044.P9496556897293548419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / (A109007 n : ℚ))

end

end A109044.P9496556897293548419

namespace A109044

/-- `3*n/A109007(n)` -/
def P9496556897293548419.Spec : Prop :=
  ∀ n, P9496556897293548419.a n = (A109044 n : ℚ)

end A109044

/-! ## A109044.P317997324815757948

`n*(7-2*A099837(n))/3`
-/

namespace A109044.P317997324815757948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((7 - 2 * A099837 n : ℚ) / 3)

end

end A109044.P317997324815757948

namespace A109044

/-- `n*(7-2*A099837(n))/3` -/
def P317997324815757948.Spec : Prop :=
  ∀ n, P317997324815757948.a n = (A109044 n : ℚ)

end A109044

/-! ## A109044.P6896161173475268661

`n*C(3, n%3)`
-/

namespace A109044.P6896161173475268661
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose 3 (n % 3)

end

end A109044.P6896161173475268661

namespace A109044

/-- `n*C(3, n%3)` -/
def P6896161173475268661.Spec : Prop :=
  ∀ n, (P6896161173475268661.a n : ℤ) = A109044 n

end A109044

/-! ## A109044.P8750702584266490772

`n*3^(n²%3)`
-/

namespace A109044.P8750702584266490772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 3 ^ (n ^ 2 % 3)

end

end A109044.P8750702584266490772

namespace A109044

/-- `n*3^(n²%3)` -/
def P8750702584266490772.Spec : Prop :=
  ∀ n, (P8750702584266490772.a n : ℤ) = A109044 n

end A109044

/-! ## A109044.P13990931237535794038

`gcd(3*n, ∑[6*n²])`
-/

namespace A109044.P13990931237535794038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109044.P13990931237535794038

namespace A109044

/-- `gcd(3*n, ∑[6*n²])` -/
def P13990931237535794038.Spec : Prop :=
  ∀ n, (P13990931237535794038.a n : ℤ) = A109044 n

end A109044

/-! ## A109044.P10786838599749593935

`n*sqrt(dr((n²+8)²))`
-/

namespace A109044.P10786838599749593935
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (SequenceMachineLib.digitalRoot ((n ^ 2 + 8) ^ 2 : ℤ) : ℝ)

end

end A109044.P10786838599749593935

namespace A109044

/-- `n*sqrt(dr((n²+8)²))` -/
def P10786838599749593935.Spec : Prop :=
  ∀ n, P10786838599749593935.a n = (A109044 n : ℝ)

end A109044

/-! ## A109044.P1628692752003801039

`n*((1-n²)%3+3)`
-/

namespace A109044.P1628692752003801039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.tmod (1 - (n ^ 2 : ℤ)) 3 + 3)

end

end A109044.P1628692752003801039

namespace A109044

/-- `n*((1-n²)%3+3)` -/
def P1628692752003801039.Spec : Prop :=
  ∀ n, P1628692752003801039.a n = A109044 n

end A109044

/-! ## A109044.P12772347603450599554

`n*(3-(n²-1)%3)`
-/

namespace A109044.P12772347603450599554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - Int.tmod ((n ^ 2 : ℤ) - 1) 3)

end

end A109044.P12772347603450599554

namespace A109044

/-- `n*(3-(n²-1)%3)` -/
def P12772347603450599554.Spec : Prop :=
  ∀ n, P12772347603450599554.a n = A109044 n

end A109044

/-! ## A109044.P5503868008619331496

`n*root(dr((n²+8)²), 2)`
-/

namespace A109044.P5503868008619331496
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * (SequenceMachineLib.digitalRoot ((n ^ 2 + 8) ^ 2 : ℤ) : ℝ) ^ (1 / (2 : ℝ))

end

end A109044.P5503868008619331496

namespace A109044

/-- `n*root(dr((n²+8)²), 2)` -/
def P5503868008619331496.Spec : Prop :=
  ∀ n, P5503868008619331496.a n = (A109044 n : ℝ)

end A109044

/-! ## A109044.P7286281267259962313

`n*dr(n²+n²²+1)`
-/

namespace A109044.P7286281267259962313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n ^ 2 + ((n ^ 2) ^ 2 + 1) : ℤ)

end

end A109044.P7286281267259962313

namespace A109044

/-- `n*dr(n²+n²²+1)` -/
def P7286281267259962313.Spec : Prop :=
  ∀ n, (P7286281267259962313.a n : ℤ) = A109044 n

end A109044

/-! ## A109044.P14169848792233745725

`3*gcd(n², C(2*n+1, 3))`
-/

namespace A109044.P14169848792233745725
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd (n ^ 2) (Nat.choose (2 * n + 1) 3)

end

end A109044.P14169848792233745725

namespace A109044

/-- `3*gcd(n², C(2*n+1, 3))` -/
def P14169848792233745725.Spec : Prop :=
  ∀ n, (P14169848792233745725.a n : ℤ) = A109044 n

end A109044

/-! ## A109044.P10802253338245691863

`n/3^(∑[n+1]%3-1)`
-/

namespace A109044.P10802253338245691863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (3 : ℚ) ^ ((((∑ j ∈ Finset.range (n + 1), f1 j) % 3 : ℕ) : ℤ) - 1 : ℤ)

end

end A109044.P10802253338245691863

namespace A109044

/-- `n/3^(∑[n+1]%3-1)` -/
def P10802253338245691863.Spec : Prop :=
  ∀ n, P10802253338245691863.a n = (A109044 n : ℚ)

end A109044

/-! ## A109044.P16080281380600446599

`2*n*(2*n)²%3+n`
-/

namespace A109044.P16080281380600446599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * ((2 * n) ^ 2 % 3) + n

end

end A109044.P16080281380600446599

namespace A109044

/-- `2*n*(2*n)²%3+n` -/
def P16080281380600446599.Spec : Prop :=
  ∀ n, (P16080281380600446599.a n : ℤ) = A109044 n

end A109044

/-! ## A109044.P4220145133301011181

`n*∑[floor(a(n-3))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A109044.P4220145133301011181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, -2] fun n f1 =>
  f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109044.P4220145133301011181

namespace A109044

/-- `n*∑[floor(a(n-3))]` -/
def P4220145133301011181.Spec : Prop :=
  ∀ n, P4220145133301011181.a n = A109044 n

end A109044

/-! ## A109044.P10276016742530669219

`n*A169609(n)`
-/

namespace A109044.P10276016742530669219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A169609 n

end

end A109044.P10276016742530669219

namespace A109044

/-- `n*A169609(n)` -/
def P10276016742530669219.Spec : Prop :=
  ∀ n, P10276016742530669219.a n = A109044 n

end A109044

/-!
# A109045: a(n) = lcm(n,4).

The programs for A109045, the canonical program `A109045.P12927425357470194196` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109045 has offset 0).

The definition of A109045 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 4)` (program `A109045.P12927425357470194196`, by `A109045.P12927425357470194196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109045.P12927425357470194196

`lcm(n, 4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109045

/-- `lcm(n, 4)` -/
def P12927425357470194196.Spec : Prop :=
  ∀ n, (P12927425357470194196.a n : ℤ) = A109045 n

theorem P12927425357470194196.correct : P12927425357470194196.Spec := by
  intro n
  simp only [A109045]

end A109045

/-! ## A109045.P6108317613314770745

`4*n/gcd(n, 4)`
-/

namespace A109045.P6108317613314770745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (Nat.gcd n 4 : ℚ))

end

end A109045.P6108317613314770745

namespace A109045

/-- `4*n/gcd(n, 4)` -/
def P6108317613314770745.Spec : Prop :=
  ∀ n, P6108317613314770745.a n = (A109045 n : ℚ)

end A109045

/-! ## A109045.P10991502615024167000

`4*n/A109008(n)`
-/

namespace A109045.P10991502615024167000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((n : ℚ) / (A109008 n : ℚ))

end

end A109045.P10991502615024167000

namespace A109045

/-- `4*n/A109008(n)` -/
def P10991502615024167000.Spec : Prop :=
  ∀ n, P10991502615024167000.a n = (A109045 n : ℚ)

end A109045

/-! ## A109045.P1217771337079921223

`n*ceil(4/xor(n, n-1))`
-/

namespace A109045.P1217771337079921223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌈4 / (Int.xor (n : ℤ) ((n : ℤ) - 1) : ℚ)⌉

end

end A109045.P1217771337079921223

namespace A109045

/-- `n*ceil(4/xor(n, n-1))` -/
def P1217771337079921223.Spec : Prop :=
  ∀ n, P1217771337079921223.a n = A109045 n

end A109045

/-! ## A109045.P5929128473905718940

`n*(3-(char[4*(n+1)]+(-1)^n))`
-/

namespace A109045.P5929128473905718940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (-1) ^ n))

end

end A109045.P5929128473905718940

namespace A109045

/-- `n*(3-(char[4*(n+1)]+(-1)^n))` -/
def P5929128473905718940.Spec : Prop :=
  ∀ n, P5929128473905718940.a n = A109045 n

end A109045

/-! ## A109045.P5664382312013698290

`sqrt(n²*A177499(n))`
-/

namespace A109045.P5664382312013698290
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((n ^ 2 : ℤ) * A177499 n : ℝ)

end

end A109045.P5664382312013698290

namespace A109045

/-- `sqrt(n²*A177499(n))` -/
def P5664382312013698290.Spec : Prop :=
  ∀ n, P5664382312013698290.a n = (A109045 n : ℝ)

end A109045

/-! ## A109045.P2837127843223782312

`gcd((2*n)², A109053(n))`
-/

namespace A109045.P2837127843223782312
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * n) ^ 2 : ℤ) (A109053 n)

end

end A109045.P2837127843223782312

namespace A109045

/-- `gcd((2*n)², A109053(n))` -/
def P2837127843223782312.Spec : Prop :=
  ∀ n, (P2837127843223782312.a n : ℤ) = A109045 n

end A109045

/-! ## A109045.P6956317304117110681

`A347365(A190621(n))+n`
-/

namespace A109045.P6956317304117110681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 (A190621 n).toNat + (n : ℤ)

end

end A109045.P6956317304117110681

namespace A109045

/-- `A347365(A190621(n))+n` -/
def P6956317304117110681.Spec : Prop :=
  ∀ n, P6956317304117110681.a n = A109045 n

end A109045

/-! ## A109045.P9927403460254416097

`A008586(n/A109008(n))`
-/

namespace A109045.P9927403460254416097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (SequenceMachineLib.roundAway ((n : ℚ) / (A109008 n : ℚ))).toNat

end

end A109045.P9927403460254416097

namespace A109045

/-- `A008586(n/A109008(n))` -/
def P9927403460254416097.Spec : Prop :=
  ∀ n, P9927403460254416097.a n = A109045 n

end A109045

/-! ## A109045.P6206372540930495684

`A109053(n)/A169609(n)`
-/

namespace A109045.P6206372540930495684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109053 n : ℚ) / (A169609 n : ℚ)

end

end A109045.P6206372540930495684

namespace A109045

/-- `A109053(n)/A169609(n)` -/
def P6206372540930495684.Spec : Prop :=
  ∀ n, P6206372540930495684.a n = (A109045 n : ℚ)

end A109045

/-! ## A109045.P11696247535162400911

`A138129(n)%A164355(n)`
-/

namespace A109045.P11696247535162400911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138129 n) (A164355 n)

end

end A109045.P11696247535162400911

namespace A109045

/-- `A138129(n)%A164355(n)` -/
def P11696247535162400911.Spec : Prop :=
  ∀ n, P11696247535162400911.a n = A109045 n

end A109045

/-! ## A109045.P5188364809983661621

`A008586(A026741(A026741(n)))`
-/

namespace A109045.P5188364809983661621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A026741 (A026741 n).toNat).toNat

end

end A109045.P5188364809983661621

namespace A109045

/-- `A008586(A026741(A026741(n)))` -/
def P5188364809983661621.Spec : Prop :=
  ∀ n, P5188364809983661621.a n = A109045 n

end A109045

/-! ## A109045.P15225941644150233933

`gcd(A046092(A029578(n)), A046092(n))`
-/

namespace A109045.P15225941644150233933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046092 (A029578 n).toNat) (A046092 n)

end

end A109045.P15225941644150233933

namespace A109045

/-- `gcd(A046092(A029578(n)), A046092(n))` -/
def P15225941644150233933.Spec : Prop :=
  ∀ n, (P15225941644150233933.a n : ℤ) = A109045 n

end A109045

/-! ## A109045.P4515333595790122955

`A246943(n/A177704(n+1))`
-/

namespace A109045.P4515333595790122955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246943 (SequenceMachineLib.roundAway ((n : ℚ) / (A177704 (n + 1) : ℚ))).toNat

end

end A109045.P4515333595790122955

namespace A109045

/-- `A246943(n/A177704(n+1))` -/
def P4515333595790122955.Spec : Prop :=
  ∀ n, P4515333595790122955.a n = A109045 n

end A109045

/-! ## A109045.P4116855860056649930

`A246943(n*A177704(n+1))`
-/

namespace A109045.P4116855860056649930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246943 ((n : ℤ) * A177704 (n + 1)).toNat

end

end A109045.P4116855860056649930

namespace A109045

/-- `A246943(n*A177704(n+1))` -/
def P4116855860056649930.Spec : Prop :=
  ∀ n, P4116855860056649930.a n = A109045 n

end A109045

/-! ## A109045.P12670853663780363905

`A109049(2*n)/2`
-/

namespace A109045.P12670853663780363905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109049 (2 * n) : ℚ) / 2

end

end A109045.P12670853663780363905

namespace A109045

/-- `A109049(2*n)/2` -/
def P12670853663780363905.Spec : Prop :=
  ∀ n, P12670853663780363905.a n = (A109045 n : ℚ)

end A109045

/-! ## A109045.P14976503460254038136

`A266491(A109043(n))`
-/

namespace A109045.P14976503460254038136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A109043 n).toNat

end

end A109045.P14976503460254038136

namespace A109045

/-- `A266491(A109043(n))` -/
def P14976503460254038136.Spec : Prop :=
  ∀ n, P14976503460254038136.a n = A109045 n

end A109045

/-! ## A109045.P11018626214730747307

`A266491(A190621(n)+n)`
-/

namespace A109045.P11018626214730747307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A190621 n + (n : ℤ)).toNat

end

end A109045.P11018626214730747307

namespace A109045

/-- `A266491(A190621(n)+n)` -/
def P11018626214730747307.Spec : Prop :=
  ∀ n, P11018626214730747307.a n = A109045 n

end A109045

/-! ## A109045.P15292403039725340395

`A005843(2*A106609(2*n))`
-/

namespace A109045.P15292403039725340395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * A106609 (2 * n)).toNat

end

end A109045.P15292403039725340395

namespace A109045

/-- `A005843(2*A106609(2*n))` -/
def P15292403039725340395.Spec : Prop :=
  ∀ n, P15292403039725340395.a n = A109045 n

end A109045

/-!
# A109046: a(n) = lcm(n, 5).

The programs for A109046, the canonical program `A109046.P13151115108493953302` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109046 has offset 0).

The definition of A109046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 5)` (program `A109046.P13151115108493953302`, by `A109046.P13151115108493953302.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109046.P13151115108493953302

`lcm(n, 5)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109046

/-- `lcm(n, 5)` -/
def P13151115108493953302.Spec : Prop :=
  ∀ n, (P13151115108493953302.a n : ℤ) = A109046 n

theorem P13151115108493953302.correct : P13151115108493953302.Spec := by
  intro n
  simp only [A109046]

end A109046

/-! ## A109046.P15267759981556828417

`n*5/gcd(n, 5)`
-/

namespace A109046.P15267759981556828417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (5 / (Nat.gcd n 5 : ℚ))

end

end A109046.P15267759981556828417

namespace A109046

/-- `n*5/gcd(n, 5)` -/
def P15267759981556828417.Spec : Prop :=
  ∀ n, P15267759981556828417.a n = (A109046 n : ℚ)

end A109046

/-! ## A109046.P5764536757070686960

`5*n/A109009(n)`
-/

namespace A109046.P5764536757070686960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℚ) / (A109009 n : ℚ))

end

end A109046.P5764536757070686960

namespace A109046

/-- `5*n/A109009(n)` -/
def P5764536757070686960.Spec : Prop :=
  ∀ n, P5764536757070686960.a n = (A109046 n : ℚ)

end A109046

/-! ## A109046.P10883250858454250965

`n*5^((n^4)%5)`
-/

namespace A109046.P10883250858454250965
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 5 ^ (n ^ 4 % 5)

end

end A109046.P10883250858454250965

namespace A109046

/-- `n*5^((n^4)%5)` -/
def P10883250858454250965.Spec : Prop :=
  ∀ n, (P10883250858454250965.a n : ℤ) = A109046 n

end A109046

/-! ## A109046.P1926757770461244266

`gcd(5*n, 30*C(n, 5))`
-/

namespace A109046.P1926757770461244266
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (5 * n) (30 * Nat.choose n 5)

end

end A109046.P1926757770461244266

namespace A109046

/-- `gcd(5*n, 30*C(n, 5))` -/
def P1926757770461244266.Spec : Prop :=
  ∀ n, (P1926757770461244266.a n : ℤ) = A109046 n

end A109046

/-! ## A109046.P9224680959126294341

`n*5%(n%5+2)²`
-/

namespace A109046.P9224680959126294341
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (5 % (n % 5 + 2) ^ 2)

end

end A109046.P9224680959126294341

namespace A109046

/-- `n*5%(n%5+2)²` -/
def P9224680959126294341.Spec : Prop :=
  ∀ n, (P9224680959126294341.a n : ℤ) = A109046 n

end A109046

/-! ## A109046.P4867400075568252076

`n*A171372(n)`
-/

namespace A109046.P4867400075568252076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A171372 n

end

end A109046.P4867400075568252076

namespace A109046

/-- `n*A171372(n)` -/
def P4867400075568252076.Spec : Prop :=
  ∀ n, P4867400075568252076.a n = A109046 n

end A109046

/-! ## A109046.P12107332137382091648

`4*A091703(n)+n`
-/

namespace A109046.P12107332137382091648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A091703 n + (n : ℤ)

end

end A109046.P12107332137382091648

namespace A109046

/-- `4*A091703(n)+n` -/
def P12107332137382091648.Spec : Prop :=
  ∀ n, P12107332137382091648.a n = A109046 n

end A109046

/-! ## A109046.P17449582774987445061

`gcd(5*n, A061167(n))`
-/

namespace A109046.P17449582774987445061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (5 * n : ℤ) (A061167 n)

end

end A109046.P17449582774987445061

namespace A109046

/-- `gcd(5*n, A061167(n))` -/
def P17449582774987445061.Spec : Prop :=
  ∀ n, (P17449582774987445061.a n : ℤ) = A109046 n

end A109046

/-! ## A109046.P2834833384406407648

`n*(A305029(n)²+1)`
-/

namespace A109046.P2834833384406407648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A305029 n ^ 2 + 1)

end

end A109046.P2834833384406407648

namespace A109046

/-- `n*(A305029(n)²+1)` -/
def P2834833384406407648.Spec : Prop :=
  ∀ n, P2834833384406407648.a n = A109046 n

end A109046

/-! ## A109046.P18035721785222302218

`A040021(n)*A106611(n)`
-/

namespace A109046.P18035721785222302218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 n * A106611 n

end

end A109046.P18035721785222302218

namespace A109046

/-- `A040021(n)*A106611(n)` -/
def P18035721785222302218.Spec : Prop :=
  ∀ n, P18035721785222302218.a n = A109046 n

end A109046

/-! ## A109046.P949483468746792700

`A109009(n)*A283442(n)`
-/

namespace A109046.P949483468746792700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109009 n * A283442 n

end

end A109046.P949483468746792700

namespace A109046

/-- `A109009(n)*A283442(n)` -/
def P949483468746792700.Spec : Prop :=
  ∀ n, P949483468746792700.a n = A109046 n

end A109046

/-! ## A109046.P179069298403552197

`A109051(n)/A000034(n)`
-/

namespace A109046.P179069298403552197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109051 n : ℚ) / (A000034 n : ℚ)

end

end A109046.P179069298403552197

namespace A109046

/-- `A109051(n)/A000034(n)` -/
def P179069298403552197.Spec : Prop :=
  ∀ n, P179069298403552197.a n = (A109046 n : ℚ)

end A109046

/-! ## A109046.P14012737031923319478

`A008587(n/A109009(n))`
-/

namespace A109046.P14012737031923319478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (SequenceMachineLib.roundAway ((n : ℚ) / (A109009 n : ℚ))).toNat

end

end A109046.P14012737031923319478

namespace A109046

/-- `A008587(n/A109009(n))` -/
def P14012737031923319478.Spec : Prop :=
  ∀ n, P14012737031923319478.a n = A109046 n

end A109046

/-! ## A109046.P14743567186428888729

`A174002(n)/A234042(n)`
-/

namespace A109046.P14743567186428888729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174002 n : ℚ) / (A234042 n : ℚ)

end

end A109046.P14743567186428888729

namespace A109046

/-- `A174002(n)/A234042(n)` -/
def P14743567186428888729.Spec : Prop :=
  ∀ n, P14743567186428888729.a n = (A109046 n : ℚ)

end A109046

/-! ## A109046.P1727442027159549653

`gcd(A008587(n), A052787(n))`
-/

namespace A109046.P1727442027159549653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008587 n) (A052787 n)

end

end A109046.P1727442027159549653

namespace A109046

/-- `gcd(A008587(n), A052787(n))` -/
def P1727442027159549653.Spec : Prop :=
  ∀ n, (P1727442027159549653.a n : ℤ) = A109046 n

end A109046

/-! ## A109046.P1010988550044048779

`gcd(A008597(n), A054604(n))`
-/

namespace A109046.P1010988550044048779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008597 n) (A054604 n)

end

end A109046.P1010988550044048779

namespace A109046

/-- `gcd(A008597(n), A054604(n))` -/
def P1010988550044048779.Spec : Prop :=
  ∀ n, (P1010988550044048779.a n : ℤ) = A109046 n

end A109046

/-! ## A109046.P8642260373405736375

`gcd(A008592(n), A069078(n))`
-/

namespace A109046.P8642260373405736375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n) (A069078 n)

end

end A109046.P8642260373405736375

namespace A109046

/-- `gcd(A008592(n), A069078(n))` -/
def P8642260373405736375.Spec : Prop :=
  ∀ n, (P8642260373405736375.a n : ℤ) = A109046 n

end A109046

/-! ## A109046.P17647206789068993007

`gcd(A008607(n), A109051(n))`
-/

namespace A109046.P17647206789068993007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008607 n) (A109051 n)

end

end A109046.P17647206789068993007

namespace A109046

/-- `gcd(A008607(n), A109051(n))` -/
def P17647206789068993007.Spec : Prop :=
  ∀ n, (P17647206789068993007.a n : ℤ) = A109046 n

end A109046

/-! ## A109046.P6536603008653496369

`gcd(A064046(n), A180359(n))`
-/

namespace A109046.P6536603008653496369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064046 n) (A180359 n)

end

end A109046.P6536603008653496369

namespace A109046

/-- `gcd(A064046(n), A180359(n))` -/
def P6536603008653496369.Spec : Prop :=
  ∀ n, (P6536603008653496369.a n : ℤ) = A109046 n

end A109046

/-!
# A109047: a(n) = lcm(n, 6).

The programs for A109047, the canonical program `A109047.P9817353617332006450` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109047 has offset 0).

The definition of A109047 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 6)` (program `A109047.P9817353617332006450`, by `A109047.P9817353617332006450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109047.P9817353617332006450

`lcm(n, 6)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109047

/-- `lcm(n, 6)` -/
def P9817353617332006450.Spec : Prop :=
  ∀ n, (P9817353617332006450.a n : ℤ) = A109047 n

theorem P9817353617332006450.correct : P9817353617332006450.Spec := by
  intro n
  simp only [A109047]

end A109047

/-! ## A109047.P14432980598363336594

`n*6/gcd(n, 6)`
-/

namespace A109047.P14432980598363336594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (6 / (Nat.gcd n 6 : ℚ))

end

end A109047.P14432980598363336594

namespace A109047

/-- `n*6/gcd(n, 6)` -/
def P14432980598363336594.Spec : Prop :=
  ∀ n, P14432980598363336594.a n = (A109047 n : ℚ)

end A109047

/-! ## A109047.P7621401388579545068

`6*n/A089128(n)`
-/

namespace A109047.P7621401388579545068
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((n : ℚ) / (A089128 n : ℚ))

end

end A109047.P7621401388579545068

namespace A109047

/-- `6*n/A089128(n)` -/
def P7621401388579545068.Spec : Prop :=
  ∀ n, P7621401388579545068.a n = (A109047 n : ℚ)

end A109047

/-! ## A109047.P9169311944423027619

`n*gcd(12, n²+5)`
-/

namespace A109047.P9169311944423027619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.gcd 12 (n ^ 2 + 5)

end

end A109047.P9169311944423027619

namespace A109047

/-- `n*gcd(12, n²+5)` -/
def P9169311944423027619.Spec : Prop :=
  ∀ n, (P9169311944423027619.a n : ℤ) = A109047 n

end A109047

/-! ## A109047.P15407912188030365594

`gcd(n^3-n, 6*n)`
-/

namespace A109047.P15407912188030365594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 3 : ℤ) - (n : ℤ)) (6 * n : ℤ)

end

end A109047.P15407912188030365594

namespace A109047

/-- `gcd(n^3-n, 6*n)` -/
def P15407912188030365594.Spec : Prop :=
  ∀ n, (P15407912188030365594.a n : ℤ) = A109047 n

end A109047

/-! ## A109047.P6054208342275440205

`sqrt(3*2*n*A283443(n))`
-/

namespace A109047.P6054208342275440205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (3 * ((2 * n : ℤ) * A283443 n) : ℝ)

end

end A109047.P6054208342275440205

namespace A109047

/-- `sqrt(3*2*n*A283443(n))` -/
def P6054208342275440205.Spec : Prop :=
  ∀ n, P6054208342275440205.a n = (A109047 n : ℝ)

end A109047

/-! ## A109047.P5189016870470668350

`2*A109044(A026741(n))`
-/

namespace A109047.P5189016870470668350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109044 (A026741 n).toNat

end

end A109047.P5189016870470668350

namespace A109047

/-- `2*A109044(A026741(n))` -/
def P5189016870470668350.Spec : Prop :=
  ∀ n, P5189016870470668350.a n = A109047 n

end A109047

/-! ## A109047.P2066384480586528519

`A010704(n)*A051176(n)`
-/

namespace A109047.P2066384480586528519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010704 n * A051176 n

end

end A109047.P2066384480586528519

namespace A109047

/-- `A010704(n)*A051176(n)` -/
def P2066384480586528519.Spec : Prop :=
  ∀ n, P2066384480586528519.a n = A109047 n

end A109047

/-! ## A109047.P6383710891269302680

`A000034(n)*A109044(n)`
-/

namespace A109047.P6383710891269302680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A109044 n

end

end A109047.P6383710891269302680

namespace A109047

/-- `A000034(n)*A109044(n)` -/
def P6383710891269302680.Spec : Prop :=
  ∀ n, P6383710891269302680.a n = A109047 n

end A109047

/-! ## A109047.P7343584385532862579

`A089145(n)*A130724(n)`
-/

namespace A109047.P7343584385532862579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089145 n * A130724 n

end

end A109047.P7343584385532862579

namespace A109047

/-- `A089145(n)*A130724(n)` -/
def P7343584385532862579.Spec : Prop :=
  ∀ n, P7343584385532862579.a n = A109047 n

end A109047

/-! ## A109047.P1265749013574303290

`A109043(n)*A169609(n)`
-/

namespace A109047.P1265749013574303290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n * A169609 n

end

end A109047.P1265749013574303290

namespace A109047

/-- `A109043(n)*A169609(n)` -/
def P1265749013574303290.Spec : Prop :=
  ∀ n, P1265749013574303290.a n = A109047 n

end A109047

/-! ## A109047.P14404530715465989186

`A089128(n)*A283443(n)`
-/

namespace A109047.P14404530715465989186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 n * A283443 n

end

end A109047.P14404530715465989186

namespace A109047

/-- `A089128(n)*A283443(n)` -/
def P14404530715465989186.Spec : Prop :=
  ∀ n, P14404530715465989186.a n = A109047 n

end A109047

/-! ## A109047.P11999884546634119475

`A008588(n/A089128(n))`
-/

namespace A109047.P11999884546634119475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (SequenceMachineLib.roundAway ((n : ℚ) / (A089128 n : ℚ))).toNat

end

end A109047.P11999884546634119475

namespace A109047

/-- `A008588(n/A089128(n))` -/
def P11999884546634119475.Spec : Prop :=
  ∀ n, P11999884546634119475.a n = A109047 n

end A109047

/-! ## A109047.P7520266542771909135

`A008588(gcd(n, A108495(n)))`
-/

namespace A109047.P7520266542771909135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (Int.gcd (n : ℤ) (A108495 n))

end

end A109047.P7520266542771909135

namespace A109047

/-- `A008588(gcd(n, A108495(n)))` -/
def P7520266542771909135.Spec : Prop :=
  ∀ n, P7520266542771909135.a n = A109047 n

end A109047

/-! ## A109047.P468052213202547403

`2*A026741(n)*A169609(n)`
-/

namespace A109047.P468052213202547403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A026741 n * A169609 n)

end

end A109047.P468052213202547403

namespace A109047

/-- `2*A026741(n)*A169609(n)` -/
def P468052213202547403.Spec : Prop :=
  ∀ n, P468052213202547403.a n = A109047 n

end A109047

/-! ## A109047.P6379005337102708034

`3*A000034(n)*A051176(n)`
-/

namespace A109047.P6379005337102708034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000034 n * A051176 n

end

end A109047.P6379005337102708034

namespace A109047

/-- `3*A000034(n)*A051176(n)` -/
def P6379005337102708034.Spec : Prop :=
  ∀ n, P6379005337102708034.a n = A109047 n

end A109047

/-! ## A109047.P18092180411611463731

`gcd(3*n, (n-1)*∑[n])*A020639(A004277(n))`
-/

namespace A109047.P18092180411611463731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (3 * n : ℤ) (((n : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℤ) * A020639 (A004277 n).toNat

end

end A109047.P18092180411611463731

namespace A109047

/-- `gcd(3*n, (n-1)*∑[n])*A020639(A004277(n))` -/
def P18092180411611463731.Spec : Prop :=
  ∀ n, P18092180411611463731.a n = A109047 n

end A109047

/-! ## A109047.P194509963048868968

`(A008585(n)+A008585(n))/A089128(n)`
-/

namespace A109047.P194509963048868968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008585 n + A008585 n : ℚ) / (A089128 n : ℚ)

end

end A109047.P194509963048868968

namespace A109047

/-- `(A008585(n)+A008585(n))/A089128(n)` -/
def P194509963048868968.Spec : Prop :=
  ∀ n, P194509963048868968.a n = (A109047 n : ℚ)

end A109047

/-! ## A109047.P1890922431386778606

`A089128(n+3)*A130724(n)`
-/

namespace A109047.P1890922431386778606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089128 (n + 3) * A130724 n

end

end A109047.P1890922431386778606

namespace A109047

/-- `A089128(n+3)*A130724(n)` -/
def P1890922431386778606.Spec : Prop :=
  ∀ n, P1890922431386778606.a n = A109047 n

end A109047

/-! ## A109047.P15843901251324673054

`A008585(A005843(n/A089128(n)))`
-/

namespace A109047.P15843901251324673054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A005843 (SequenceMachineLib.roundAway ((n : ℚ) / (A089128 n : ℚ))).toNat).toNat

end

end A109047.P15843901251324673054

namespace A109047

/-- `A008585(A005843(n/A089128(n)))` -/
def P15843901251324673054.Spec : Prop :=
  ∀ n, P15843901251324673054.a n = A109047 n

end A109047

/-!
# A109048: a(n) = lcm(n,7).

The programs for A109048, the canonical program `A109048.P8170319726393261012` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109048 has offset 0).

The definition of A109048 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 7)` (program `A109048.P8170319726393261012`, by `A109048.P8170319726393261012.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109048.P8170319726393261012

`lcm(n, 7)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109048

/-- `lcm(n, 7)` -/
def P8170319726393261012.Spec : Prop :=
  ∀ n, (P8170319726393261012.a n : ℤ) = A109048 n

theorem P8170319726393261012.correct : P8170319726393261012.Spec := by
  intro n
  simp only [A109048]

end A109048

/-! ## A109048.P13908914557261795498

`n*7/gcd(n, 7)`
-/

namespace A109048.P13908914557261795498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (7 / (Nat.gcd n 7 : ℚ))

end

end A109048.P13908914557261795498

namespace A109048

/-- `n*7/gcd(n, 7)` -/
def P13908914557261795498.Spec : Prop :=
  ∀ n, P13908914557261795498.a n = (A109048 n : ℚ)

end A109048

/-! ## A109048.P17546952475767262208

`7*A106608(n)`
-/

namespace A109048.P17546952475767262208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A106608 n

end

end A109048.P17546952475767262208

namespace A109048

/-- `7*A106608(n)` -/
def P17546952475767262208.Spec : Prop :=
  ∀ n, P17546952475767262208.a n = A109048 n

end A109048

/-! ## A109048.P7155420024458577268

`7*n/A109010(n)`
-/

namespace A109048.P7155420024458577268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℚ) / (A109010 n : ℚ))

end

end A109048.P7155420024458577268

namespace A109048

/-- `7*n/A109010(n)` -/
def P7155420024458577268.Spec : Prop :=
  ∀ n, P7155420024458577268.a n = (A109048 n : ℚ)

end A109048

/-! ## A109048.P7326241952654081803

`n*7^((n^6)%7)`
-/

namespace A109048.P7326241952654081803
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * 7 ^ (n ^ 6 % 7)

end

end A109048.P7326241952654081803

namespace A109048

/-- `n*7^((n^6)%7)` -/
def P7326241952654081803.Spec : Prop :=
  ∀ n, (P7326241952654081803.a n : ℤ) = A109048 n

end A109048

/-! ## A109048.P7213708053368187265

`n*(7-6*char[7*n])`
-/

namespace A109048.P7213708053368187265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (7 - ((6 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ))

end

end A109048.P7213708053368187265

namespace A109048

/-- `n*(7-6*char[7*n])` -/
def P7213708053368187265.Spec : Prop :=
  ∀ n, P7213708053368187265.a n = A109048 n

end A109048

/-! ## A109048.P15363490234359473908

`A008589(A106608(n))`
-/

namespace A109048.P15363490234359473908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A106608 n).toNat

end

end A109048.P15363490234359473908

namespace A109048

/-- `A008589(A106608(n))` -/
def P15363490234359473908.Spec : Prop :=
  ∀ n, P15363490234359473908.a n = A109048 n

end A109048

/-! ## A109048.P7729996334015449861

`A008589(n/A109010(n))`
-/

namespace A109048.P7729996334015449861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (SequenceMachineLib.roundAway ((n : ℚ) / (A109010 n : ℚ))).toNat

end

end A109048.P7729996334015449861

namespace A109048

/-- `A008589(n/A109010(n))` -/
def P7729996334015449861.Spec : Prop :=
  ∀ n, P7729996334015449861.a n = A109048 n

end A109048

/-! ## A109048.P2073516997423146108

`gcd(A008589(n), A054606(n))`
-/

namespace A109048.P2073516997423146108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008589 n) (A054606 n)

end

end A109048.P2073516997423146108

namespace A109048

/-- `gcd(A008589(n), A054606(n))` -/
def P2073516997423146108.Spec : Prop :=
  ∀ n, (P2073516997423146108.a n : ℤ) = A109048 n

end A109048

/-! ## A109048.P16464753279851065559

`gcd(A033582(n), A133499(n))`
-/

namespace A109048.P16464753279851065559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033582 n) (A133499 n)

end

end A109048.P16464753279851065559

namespace A109048

/-- `gcd(A033582(n), A133499(n))` -/
def P16464753279851065559.Spec : Prop :=
  ∀ n, (P16464753279851065559.a n : ℤ) = A109048 n

end A109048

/-! ## A109048.P8359589115665463850

`A008458(n)*A109720(n)+n`
-/

namespace A109048.P8359589115665463850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n * A109720 n + (n : ℤ)

end

end A109048.P8359589115665463850

namespace A109048

/-- `A008458(n)*A109720(n)+n` -/
def P8359589115665463850.Spec : Prop :=
  ∀ n, P8359589115665463850.a n = A109048 n

end A109048

/-! ## A109048.P15863141549318159244

`A008589(A106615(2*n))`
-/

namespace A109048.P15863141549318159244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 (A106615 (2 * n)).toNat

end

end A109048.P15863141549318159244

namespace A109048

/-- `A008589(A106615(2*n))` -/
def P15863141549318159244.Spec : Prop :=
  ∀ n, P15863141549318159244.a n = A109048 n

end A109048

/-! ## A109048.P4285389090525557370

`A040043(2*n)*A106615(2*n)/2`
-/

namespace A109048.P4285389090525557370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A040043 (2 * n) * A106615 (2 * n) : ℚ) / 2

end

end A109048.P4285389090525557370

namespace A109048

/-- `A040043(2*n)*A106615(2*n)/2` -/
def P4285389090525557370.Spec : Prop :=
  ∀ n, P4285389090525557370.a n = (A109048 n : ℚ)

end A109048

/-! ## A109048.P5642363965833761961

`gcd(7*n, A108495(A008588(n)))`
-/

namespace A109048.P5642363965833761961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (7 * n : ℤ) (A108495 (A008588 n).toNat)

end

end A109048.P5642363965833761961

namespace A109048

/-- `gcd(7*n, A108495(A008588(n)))` -/
def P5642363965833761961.Spec : Prop :=
  ∀ n, (P5642363965833761961.a n : ℤ) = A109048 n

end A109048

/-! ## A109048.P8115745693832112624

`A283444(n*A109010(n))`
-/

namespace A109048.P8115745693832112624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283444 ((n : ℤ) * A109010 n).toNat

end

end A109048.P8115745693832112624

namespace A109048

/-- `A283444(n*A109010(n))` -/
def P8115745693832112624.Spec : Prop :=
  ∀ n, P8115745693832112624.a n = A109048 n

end A109048

/-! ## A109048.P14412482838917177010

`A283444(gcd(n², A055999(2*n)))`
-/

namespace A109048.P14412482838917177010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283444 (Int.gcd (n ^ 2 : ℤ) (A055999 (2 * n)))

end

end A109048.P14412482838917177010

namespace A109048

/-- `A283444(gcd(n², A055999(2*n)))` -/
def P14412482838917177010.Spec : Prop :=
  ∀ n, P14412482838917177010.a n = A109048 n

end A109048

/-! ## A109048.P7372634989625339615

`A106615(A040043(n)²*A106615(n))`
-/

namespace A109048.P7372634989625339615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (A040043 n ^ 2 * A106615 n).toNat

end

end A109048.P7372634989625339615

namespace A109048

/-- `A106615(A040043(n)²*A106615(n))` -/
def P7372634989625339615.Spec : Prop :=
  ∀ n, P7372634989625339615.a n = A109048 n

end A109048

/-! ## A109048.P14572840770596811699

`A106615(A040043(n)*A106615(n)*A040043(n))`
-/

namespace A109048.P14572840770596811699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (A040043 n * A106615 n * A040043 n).toNat

end

end A109048.P14572840770596811699

namespace A109048

/-- `A106615(A040043(n)*A106615(n)*A040043(n))` -/
def P14572840770596811699.Spec : Prop :=
  ∀ n, P14572840770596811699.a n = A109048 n

end A109048

/-!
# A109049: a(n) = lcm(n, 8).

The programs for A109049, the canonical program `A109049.P12995910146829499873` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109049 has offset 0).

The definition of A109049 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 8)` (program `A109049.P12995910146829499873`, by `A109049.P12995910146829499873.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109049.P12995910146829499873

`lcm(n, 8)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109049

/-- `lcm(n, 8)` -/
def P12995910146829499873.Spec : Prop :=
  ∀ n, (P12995910146829499873.a n : ℤ) = A109049 n

theorem P12995910146829499873.correct : P12995910146829499873.Spec := by
  intro n
  simp only [A109049]

end A109049

/-! ## A109049.P3225634413782063113

`n*8/gcd(n, 8)`
-/

namespace A109049.P3225634413782063113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (8 / (Nat.gcd n 8 : ℚ))

end

end A109049.P3225634413782063113

namespace A109049

/-- `n*8/gcd(n, 8)` -/
def P3225634413782063113.Spec : Prop :=
  ∀ n, P3225634413782063113.a n = (A109049 n : ℚ)

end A109049

/-! ## A109049.P9333992571010123139

`8*A106609(n)`
-/

namespace A109049.P9333992571010123139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A106609 n

end

end A109049.P9333992571010123139

namespace A109049

/-- `8*A106609(n)` -/
def P9333992571010123139.Spec : Prop :=
  ∀ n, P9333992571010123139.a n = A109049 n

end A109049

/-! ## A109049.P1521167059186659842

`8*n/A109011(n)`
-/

namespace A109049.P1521167059186659842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  8 * ((n : ℚ) / (A109011 n : ℚ))

end

end A109049.P1521167059186659842

namespace A109049

/-- `8*n/A109011(n)` -/
def P1521167059186659842.Spec : Prop :=
  ∀ n, P1521167059186659842.a n = (A109049 n : ℚ)

end A109049

/-! ## A109049.P3518722982874678090

`n*sqrt(A226044(n))`
-/

namespace A109049.P3518722982874678090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.sqrt (A226044 n : ℝ)

end

end A109049.P3518722982874678090

namespace A109049

/-- `n*sqrt(A226044(n))` -/
def P3518722982874678090.Spec : Prop :=
  ∀ n, P3518722982874678090.a n = (A109049 n : ℝ)

end A109049

/-! ## A109049.P1142607599637672299

`A008590(A106609(n))`
-/

namespace A109049.P1142607599637672299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A106609 n).toNat

end

end A109049.P1142607599637672299

namespace A109049

/-- `A008590(A106609(n))` -/
def P1142607599637672299.Spec : Prop :=
  ∀ n, P1142607599637672299.a n = A109049 n

end A109049

/-! ## A109049.P7726846572543154831

`2*A109045(A026741(n))`
-/

namespace A109049.P7726846572543154831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109045 (A026741 n).toNat

end

end A109049.P7726846572543154831

namespace A109049

/-- `2*A109045(A026741(n))` -/
def P7726846572543154831.Spec : Prop :=
  ∀ n, P7726846572543154831.a n = A109049 n

end A109049

/-! ## A109049.P16981289180864924229

`A008590(n/A109011(n))`
-/

namespace A109049.P16981289180864924229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (SequenceMachineLib.roundAway ((n : ℚ) / (A109011 n : ℚ))).toNat

end

end A109049.P16981289180864924229

namespace A109049

/-- `A008590(n/A109011(n))` -/
def P16981289180864924229.Spec : Prop :=
  ∀ n, P16981289180864924229.a n = A109049 n

end A109049

/-! ## A109049.P1156697533917180724

`2*2*A109043(A214392(n))`
-/

namespace A109049.P1156697533917180724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A109043 (A214392 n).toNat)

end

end A109049.P1156697533917180724

namespace A109049

/-- `2*2*A109043(A214392(n))` -/
def P1156697533917180724.Spec : Prop :=
  ∀ n, P1156697533917180724.a n = A109049 n

end A109049

/-! ## A109049.P825698306492718865

`2*A109045(n-A142150(n))`
-/

namespace A109049.P825698306492718865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109045 ((n : ℤ) - A142150 n).toNat

end

end A109049.P825698306492718865

namespace A109049

/-- `2*A109045(n-A142150(n))` -/
def P825698306492718865.Spec : Prop :=
  ∀ n, P825698306492718865.a n = A109049 n

end A109049

/-! ## A109049.P11131476833902966606

`n*A205383(n+8)`
-/

namespace A109049.P11131476833902966606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A205383 (n + 8)

end

end A109049.P11131476833902966606

namespace A109049

/-- `n*A205383(n+8)` -/
def P11131476833902966606.Spec : Prop :=
  ∀ n, P11131476833902966606.a n = A109049 n

end A109049

/-! ## A109049.P13824069755488003575

`8*A106617(2*n)`
-/

namespace A109049.P13824069755488003575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A106617 (2 * n)

end

end A109049.P13824069755488003575

namespace A109049

/-- `8*A106617(2*n)` -/
def P13824069755488003575.Spec : Prop :=
  ∀ n, P13824069755488003575.a n = A109049 n

end A109049

/-! ## A109049.P17569719641109458260

`A008590(A106617(2*n))`
-/

namespace A109049.P17569719641109458260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A106617 (2 * n)).toNat

end

end A109049.P17569719641109458260

namespace A109049

/-- `A008590(A106617(2*n))` -/
def P17569719641109458260.Spec : Prop :=
  ∀ n, P17569719641109458260.a n = A109049 n

end A109049

/-! ## A109049.P11972703833272921419

`2*A109045(A064680(n))`
-/

namespace A109049.P11972703833272921419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109045 (A064680 n).toNat

end

end A109049.P11972703833272921419

namespace A109049

/-- `2*A109045(A064680(n))` -/
def P11972703833272921419.Spec : Prop :=
  ∀ n, P11972703833272921419.a n = A109049 n

end A109049

/-! ## A109049.P10628096686839022075

`2*A109045(A109045(n)/2)`
-/

namespace A109049.P10628096686839022075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109045 (SequenceMachineLib.roundAway ((A109045 n : ℚ) / 2)).toNat

end

end A109049.P10628096686839022075

namespace A109049

/-- `2*A109045(A109045(n)/2)` -/
def P10628096686839022075.Spec : Prop :=
  ∀ n, P10628096686839022075.a n = A109049 n

end A109049

/-! ## A109049.P15084573211825488321

`2*A109045(A188134(2*n))`
-/

namespace A109049.P15084573211825488321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109045 (A188134 (2 * n)).toNat

end

end A109049.P15084573211825488321

namespace A109049

/-- `2*A109045(A188134(2*n))` -/
def P15084573211825488321.Spec : Prop :=
  ∀ n, P15084573211825488321.a n = A109049 n

end A109049

/-! ## A109049.P15256457858984505590

`n*A228437(3*n)`
-/

namespace A109049.P15256457858984505590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228437 (3 * n)

end

end A109049.P15256457858984505590

namespace A109049

/-- `n*A228437(3*n)` -/
def P15256457858984505590.Spec : Prop :=
  ∀ n, P15256457858984505590.a n = A109049 n

end A109049

/-!
# A109050: a(n) = lcm(n,9).

The programs for A109050, the canonical program `A109050.P3438275380211842094` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109050 has offset 0).

The definition of A109050 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 9)` (program `A109050.P3438275380211842094`, by `A109050.P3438275380211842094.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109050.P3438275380211842094

`lcm(n, 9)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109050

/-- `lcm(n, 9)` -/
def P3438275380211842094.Spec : Prop :=
  ∀ n, (P3438275380211842094.a n : ℤ) = A109050 n

theorem P3438275380211842094.correct : P3438275380211842094.Spec := by
  intro n
  simp only [A109050]

end A109050

/-! ## A109050.P1606171716255631988

`n*9/gcd(n, 9)`
-/

namespace A109050.P1606171716255631988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (9 / (Nat.gcd n 9 : ℚ))

end

end A109050.P1606171716255631988

namespace A109050

/-- `n*9/gcd(n, 9)` -/
def P1606171716255631988.Spec : Prop :=
  ∀ n, P1606171716255631988.a n = (A109050 n : ℚ)

end A109050

/-! ## A109050.P17203396815598122678

`9*A106610(n)`
-/

namespace A109050.P17203396815598122678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A106610 n

end

end A109050.P17203396815598122678

namespace A109050

/-- `9*A106610(n)` -/
def P17203396815598122678.Spec : Prop :=
  ∀ n, P17203396815598122678.a n = A109050 n

end A109050

/-! ## A109050.P5070024930801496680

`9*n/A109012(n)`
-/

namespace A109050.P5070024930801496680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((n : ℚ) / (A109012 n : ℚ))

end

end A109050.P5070024930801496680

namespace A109050

/-- `9*n/A109012(n)` -/
def P5070024930801496680.Spec : Prop :=
  ∀ n, P5070024930801496680.a n = (A109050 n : ℚ)

end A109050

/-! ## A109050.P11928793907716116890

`n*dr(A100406(n+1))`
-/

namespace A109050.P11928793907716116890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (A100406 (n + 1))

end

end A109050.P11928793907716116890

namespace A109050

/-- `n*dr(A100406(n+1))` -/
def P11928793907716116890.Spec : Prop :=
  ∀ n, (P11928793907716116890.a n : ℤ) = A109050 n

end A109050

/-! ## A109050.P16480631925783051178

`A008591(A106610(n))`
-/

namespace A109050.P16480631925783051178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A106610 n).toNat

end

end A109050.P16480631925783051178

namespace A109050

/-- `A008591(A106610(n))` -/
def P16480631925783051178.Spec : Prop :=
  ∀ n, P16480631925783051178.a n = A109050 n

end A109050

/-! ## A109050.P12145633511990852313

`9*A051176(A051176(n))`
-/

namespace A109050.P12145633511990852313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A051176 (A051176 n).toNat

end

end A109050.P12145633511990852313

namespace A109050

/-- `9*A051176(A051176(n))` -/
def P12145633511990852313.Spec : Prop :=
  ∀ n, P12145633511990852313.a n = A109050 n

end A109050

/-! ## A109050.P18145333764298597131

`A040073(n)*A106619(n)`
-/

namespace A109050.P18145333764298597131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040073 n * A106619 n

end

end A109050.P18145333764298597131

namespace A109050

/-- `A040073(n)*A106619(n)` -/
def P18145333764298597131.Spec : Prop :=
  ∀ n, P18145333764298597131.a n = A109050 n

end A109050

/-! ## A109050.P11638545203658367187

`A008591(n/A109012(n))`
-/

namespace A109050.P11638545203658367187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (SequenceMachineLib.roundAway ((n : ℚ) / (A109012 n : ℚ))).toNat

end

end A109050.P11638545203658367187

namespace A109050

/-- `A008591(n/A109012(n))` -/
def P11638545203658367187.Spec : Prop :=
  ∀ n, P11638545203658367187.a n = A109050 n

end A109050

/-! ## A109050.P8397728716882981027

`A008591(A051176(A051176(n)))`
-/

namespace A109050.P8397728716882981027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A051176 (A051176 n).toNat).toNat

end

end A109050.P8397728716882981027

namespace A109050

/-- `A008591(A051176(A051176(n)))` -/
def P8397728716882981027.Spec : Prop :=
  ∀ n, P8397728716882981027.a n = A109050 n

end A109050

/-! ## A109050.P11047881955107259155

`9*A106619(2*n)`
-/

namespace A109050.P11047881955107259155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A106619 (2 * n)

end

end A109050.P11047881955107259155

namespace A109050

/-- `9*A106619(2*n)` -/
def P11047881955107259155.Spec : Prop :=
  ∀ n, P11047881955107259155.a n = A109050 n

end A109050

/-! ## A109050.P17311746973105721568

`A008591(A106619(2*n))`
-/

namespace A109050.P17311746973105721568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A106619 (2 * n)).toNat

end

end A109050.P17311746973105721568

namespace A109050

/-- `A008591(A106619(2*n))` -/
def P17311746973105721568.Spec : Prop :=
  ∀ n, P17311746973105721568.a n = A109050 n

end A109050

/-! ## A109050.P4689444537579121432

`3*A109044(A130724(n))`
-/

namespace A109050.P4689444537579121432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A109044 (A130724 n).toNat

end

end A109050.P4689444537579121432

namespace A109050

/-- `3*A109044(A130724(n))` -/
def P4689444537579121432.Spec : Prop :=
  ∀ n, P4689444537579121432.a n = A109050 n

end A109050

/-!
# A109051: a(n) = lcm(n,10).

The programs for A109051, the canonical program `A109051.P16765314666934180457` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109051 has offset 0).

The definition of A109051 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 10)` (program `A109051.P16765314666934180457`, by `A109051.P16765314666934180457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109051.P16765314666934180457

`lcm(n, 10)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109051

/-- `lcm(n, 10)` -/
def P16765314666934180457.Spec : Prop :=
  ∀ n, (P16765314666934180457.a n : ℤ) = A109051 n

theorem P16765314666934180457.correct : P16765314666934180457.Spec := by
  intro n
  simp only [A109051]

end A109051

/-! ## A109051.P12742301334353986335

`n*10/gcd(n, 10)`
-/

namespace A109051.P12742301334353986335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (10 / (Nat.gcd n 10 : ℚ))

end

end A109051.P12742301334353986335

namespace A109051

/-- `n*10/gcd(n, 10)` -/
def P12742301334353986335.Spec : Prop :=
  ∀ n, P12742301334353986335.a n = (A109051 n : ℚ)

end A109051

/-! ## A109051.P12846715065585202703

`10*A106611(n)`
-/

namespace A109051.P12846715065585202703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A106611 n

end

end A109051.P12846715065585202703

namespace A109051

/-- `10*A106611(n)` -/
def P12846715065585202703.Spec : Prop :=
  ∀ n, P12846715065585202703.a n = A109051 n

end A109051

/-! ## A109051.P497240466628856383

`10*n/A109013(n)`
-/

namespace A109051.P497240466628856383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * ((n : ℚ) / (A109013 n : ℚ))

end

end A109051.P497240466628856383

namespace A109051

/-- `10*n/A109013(n)` -/
def P497240466628856383.Spec : Prop :=
  ∀ n, P497240466628856383.a n = (A109051 n : ℚ)

end A109051

/-! ## A109051.P2487163088953328079

`gcd(n^5-n, 10*n)`
-/

namespace A109051.P2487163088953328079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n ^ 5 : ℤ) - (n : ℤ)) (10 * n : ℤ)

end

end A109051.P2487163088953328079

namespace A109051

/-- `gcd(n^5-n, 10*n)` -/
def P2487163088953328079.Spec : Prop :=
  ∀ n, (P2487163088953328079.a n : ℤ) = A109051 n

end A109051

/-! ## A109051.P3683576124916709767

`5*gcd(2*n, C((2*n+1)², 5))`
-/

namespace A109051.P3683576124916709767
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.gcd (2 * n) (Nat.choose ((2 * n + 1) ^ 2) 5)

end

end A109051.P3683576124916709767

namespace A109051

/-- `5*gcd(2*n, C((2*n+1)², 5))` -/
def P3683576124916709767.Spec : Prop :=
  ∀ n, (P3683576124916709767.a n : ℤ) = A109051 n

end A109051

/-! ## A109051.P10872202949640435488

`n*A296420(n)`
-/

namespace A109051.P10872202949640435488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A296420 n

end

end A109051.P10872202949640435488

namespace A109051

/-- `n*A296420(n)` -/
def P10872202949640435488.Spec : Prop :=
  ∀ n, P10872202949640435488.a n = A109051 n

end A109051

/-! ## A109051.P17929156118817707292

`A008592(n/gcd(10, n))`
-/

namespace A109051.P17929156118817707292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 10 n : ℚ))).toNat

end

end A109051.P17929156118817707292

namespace A109051

/-- `A008592(n/gcd(10, n))` -/
def P17929156118817707292.Spec : Prop :=
  ∀ n, P17929156118817707292.a n = A109051 n

end A109051

/-! ## A109051.P16782700310524381566

`A008592(A106611(n))`
-/

namespace A109051.P16782700310524381566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A106611 n).toNat

end

end A109051.P16782700310524381566

namespace A109051

/-- `A008592(A106611(n))` -/
def P16782700310524381566.Spec : Prop :=
  ∀ n, P16782700310524381566.a n = A109051 n

end A109051

/-! ## A109051.P5610878660758180775

`2*A109046(A026741(n))`
-/

namespace A109051.P5610878660758180775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109046 (A026741 n).toNat

end

end A109051.P5610878660758180775

namespace A109051

/-- `2*A109046(A026741(n))` -/
def P5610878660758180775.Spec : Prop :=
  ∀ n, P5610878660758180775.a n = A109051 n

end A109051

/-! ## A109051.P13356313644213308590

`A000034(n)*A109046(n)`
-/

namespace A109051.P13356313644213308590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A109046 n

end

end A109051.P13356313644213308590

namespace A109051

/-- `A000034(n)*A109046(n)` -/
def P13356313644213308590.Spec : Prop :=
  ∀ n, P13356313644213308590.a n = A109051 n

end A109051

/-! ## A109051.P15563429741183339182

`A109043(n)*A171372(n)`
-/

namespace A109051.P15563429741183339182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n * A171372 n

end

end A109051.P15563429741183339182

namespace A109051

/-- `A109043(n)*A171372(n)` -/
def P15563429741183339182.Spec : Prop :=
  ∀ n, P15563429741183339182.a n = A109051 n

end A109051

/-! ## A109051.P4487355867887147296

`A008592(n/A109013(n))`
-/

namespace A109051.P4487355867887147296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.roundAway ((n : ℚ) / (A109013 n : ℚ))).toNat

end

end A109051.P4487355867887147296

namespace A109051

/-- `A008592(n/A109013(n))` -/
def P4487355867887147296.Spec : Prop :=
  ∀ n, P4487355867887147296.a n = A109051 n

end A109051

/-! ## A109051.P9223309332099927590

`A000010(Δ[xor(1, n)]+3)*A109046(n)`
-/

namespace A109051.P9223309332099927590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat * A109046 n

end

end A109051.P9223309332099927590

namespace A109051

/-- `A000010(Δ[xor(1, n)]+3)*A109046(n)` -/
def P9223309332099927590.Spec : Prop :=
  ∀ n, P9223309332099927590.a n = A109051 n

end A109051

/-! ## A109051.P6005177204466182384

`A109046(A109043(n))`
-/

namespace A109051.P6005177204466182384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 (A109043 n).toNat

end

end A109051.P6005177204466182384

namespace A109051

/-- `A109046(A109043(n))` -/
def P6005177204466182384.Spec : Prop :=
  ∀ n, P6005177204466182384.a n = A109051 n

end A109051

/-! ## A109051.P17321708521687654809

`A109046(A109045(2*n)/2)`
-/

namespace A109051.P17321708521687654809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 (SequenceMachineLib.roundAway ((A109045 (2 * n) : ℚ) / 2)).toNat

end

end A109051.P17321708521687654809

namespace A109051

/-- `A109046(A109045(2*n)/2)` -/
def P17321708521687654809.Spec : Prop :=
  ∀ n, P17321708521687654809.a n = A109051 n

end A109051

/-! ## A109051.P17078172934984198580

`A109046(A026741(n)+A026741(n))`
-/

namespace A109051.P17078172934984198580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 (A026741 n + A026741 n).toNat

end

end A109051.P17078172934984198580

namespace A109051

/-- `A109046(A026741(n)+A026741(n))` -/
def P17078172934984198580.Spec : Prop :=
  ∀ n, P17078172934984198580.a n = A109051 n

end A109051

/-! ## A109051.P387278101415815751

`A008592(A106621(2*n))`
-/

namespace A109051.P387278101415815751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (A106621 (2 * n)).toNat

end

end A109051.P387278101415815751

namespace A109051

/-- `A008592(A106621(2*n))` -/
def P387278101415815751.Spec : Prop :=
  ∀ n, P387278101415815751.a n = A109051 n

end A109051

/-! ## A109051.P10823913337088486687

`A109046(n*A176895(2*n))`
-/

namespace A109051.P10823913337088486687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 ((n : ℤ) * A176895 (2 * n)).toNat

end

end A109051.P10823913337088486687

namespace A109051

/-- `A109046(n*A176895(2*n))` -/
def P10823913337088486687.Spec : Prop :=
  ∀ n, P10823913337088486687.a n = A109051 n

end A109051

/-! ## A109051.P2995694252252298571

`A109046(n*A109013(n+1))`
-/

namespace A109051.P2995694252252298571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109046 ((n : ℤ) * A109013 (n + 1)).toNat

end

end A109051.P2995694252252298571

namespace A109051

/-- `A109046(n*A109013(n+1))` -/
def P2995694252252298571.Spec : Prop :=
  ∀ n, P2995694252252298571.a n = A109051 n

end A109051

/-!
# A109052: a(n) = lcm(n,11).

The programs for A109052, the canonical program `A109052.P12988037459647777454` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109052 has offset 0).

The definition of A109052 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 11)` (program `A109052.P12988037459647777454`, by `A109052.P12988037459647777454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109052.P12988037459647777454

`lcm(n, 11)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109052

/-- `lcm(n, 11)` -/
def P12988037459647777454.Spec : Prop :=
  ∀ n, (P12988037459647777454.a n : ℤ) = A109052 n

theorem P12988037459647777454.correct : P12988037459647777454.Spec := by
  intro n
  simp only [A109052]

end A109052

/-! ## A109052.P6175162205213259272

`n*11/gcd(n, 11)`
-/

namespace A109052.P6175162205213259272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (11 / (Nat.gcd n 11 : ℚ))

end

end A109052.P6175162205213259272

namespace A109052

/-- `n*11/gcd(n, 11)` -/
def P6175162205213259272.Spec : Prop :=
  ∀ n, P6175162205213259272.a n = (A109052 n : ℚ)

end A109052

/-! ## A109052.P7175801155971550776

`11*A106612(n)`
-/

namespace A109052.P7175801155971550776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A106612 n

end

end A109052.P7175801155971550776

namespace A109052

/-- `11*A106612(n)` -/
def P7175801155971550776.Spec : Prop :=
  ∀ n, P7175801155971550776.a n = A109052 n

end A109052

/-! ## A109052.P5410997942447963612

`11*n/A109014(n)`
-/

namespace A109052.P5410997942447963612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  11 * ((n : ℚ) / (A109014 n : ℚ))

end

end A109052.P5410997942447963612

namespace A109052

/-- `11*n/A109014(n)` -/
def P5410997942447963612.Spec : Prop :=
  ∀ n, P5410997942447963612.a n = (A109052 n : ℚ)

end A109052

/-! ## A109052.P8358772897852632878

`A008593(n/gcd(11, n))`
-/

namespace A109052.P8358772897852632878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.gcd 11 n : ℚ))).toNat

end

end A109052.P8358772897852632878

namespace A109052

/-- `A008593(n/gcd(11, n))` -/
def P8358772897852632878.Spec : Prop :=
  ∀ n, P8358772897852632878.a n = A109052 n

end A109052

/-! ## A109052.P7790856790810969616

`A008593(A106612(n))`
-/

namespace A109052.P7790856790810969616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (A106612 n).toNat

end

end A109052.P7790856790810969616

namespace A109052

/-- `A008593(A106612(n))` -/
def P7790856790810969616.Spec : Prop :=
  ∀ n, P7790856790810969616.a n = A109052 n

end A109052

/-! ## A109052.P7948083089260366840

`A008593(n/A109014(n))`
-/

namespace A109052.P7948083089260366840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008593 (SequenceMachineLib.roundAway ((n : ℚ) / (A109014 n : ℚ))).toNat

end

end A109052.P7948083089260366840

namespace A109052

/-- `A008593(n/A109014(n))` -/
def P7948083089260366840.Spec : Prop :=
  ∀ n, P7948083089260366840.a n = A109052 n

end A109052

/-! ## A109052.P6228464350509079510

`A017509(n)-A017509(n-A106612(n))`
-/

namespace A109052.P6228464350509079510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n - A017509 ((n : ℤ) - A106612 n).toNat

end

end A109052.P6228464350509079510

namespace A109052

/-- `A017509(n)-A017509(n-A106612(n))` -/
def P6228464350509079510.Spec : Prop :=
  ∀ n, P6228464350509079510.a n = A109052 n

end A109052

/-! ## A109052.P14275149648768109781

`n*A109014(A321536(n))`
-/

namespace A109052.P14275149648768109781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A109014 (A321536 n).toNat

end

end A109052.P14275149648768109781

namespace A109052

/-- `n*A109014(A321536(n))` -/
def P14275149648768109781.Spec : Prop :=
  ∀ n, P14275149648768109781.a n = A109052 n

end A109052

/-!
# A109053: a(n) = lcm(n,12).

The programs for A109053, the canonical program `A109053.P9686996204177584815` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109053 has offset 0).

The definition of A109053 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `lcm(n, 12)` (program `A109053.P9686996204177584815`, by `A109053.P9686996204177584815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A109053.P9686996204177584815

`lcm(n, 12)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109053

/-- `lcm(n, 12)` -/
def P9686996204177584815.Spec : Prop :=
  ∀ n, (P9686996204177584815.a n : ℤ) = A109053 n

theorem P9686996204177584815.correct : P9686996204177584815.Spec := by
  intro n
  simp only [A109053]

end A109053

/-! ## A109053.P2879357060753940046

`n*12/gcd(n, 12)`
-/

namespace A109053.P2879357060753940046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (12 / (Nat.gcd n 12 : ℚ))

end

end A109053.P2879357060753940046

namespace A109053

/-- `n*12/gcd(n, 12)` -/
def P2879357060753940046.Spec : Prop :=
  ∀ n, P2879357060753940046.a n = (A109053 n : ℚ)

end A109053

/-! ## A109053.P5079892666952848318

`12*A051724(n)`
-/

namespace A109053.P5079892666952848318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A051724 n

end

end A109053.P5079892666952848318

namespace A109053

/-- `12*A051724(n)` -/
def P5079892666952848318.Spec : Prop :=
  ∀ n, P5079892666952848318.a n = A109053 n

end A109053

/-! ## A109053.P13890522046639367198

`n*A051725(n)`
-/

namespace A109053.P13890522046639367198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051725 n

end

end A109053.P13890522046639367198

namespace A109053

/-- `n*A051725(n)` -/
def P13890522046639367198.Spec : Prop :=
  ∀ n, P13890522046639367198.a n = A109053 n

end A109053

/-! ## A109053.P16575050475835254881

`12*n/A109015(n)`
-/

namespace A109053.P16575050475835254881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  12 * ((n : ℚ) / (A109015 n : ℚ))

end

end A109053.P16575050475835254881

namespace A109053

/-- `12*n/A109015(n)` -/
def P16575050475835254881.Spec : Prop :=
  ∀ n, P16575050475835254881.a n = (A109053 n : ℚ)

end A109053

/-! ## A109053.P8957325649997288772

`A008594(A051724(n))`
-/

namespace A109053.P8957325649997288772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A051724 n).toNat

end

end A109053.P8957325649997288772

namespace A109053

/-- `A008594(A051724(n))` -/
def P8957325649997288772.Spec : Prop :=
  ∀ n, P8957325649997288772.a n = A109053 n

end A109053

/-! ## A109053.P11600470693806822541

`2*A109047(A026741(n))`
-/

namespace A109053.P11600470693806822541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109047 (A026741 n).toNat

end

end A109053.P11600470693806822541

namespace A109053

/-- `2*A109047(A026741(n))` -/
def P11600470693806822541.Spec : Prop :=
  ∀ n, P11600470693806822541.a n = A109053 n

end A109053

/-! ## A109053.P14794058053200059415

`A109045(n)*A169609(n)`
-/

namespace A109053.P14794058053200059415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 n * A169609 n

end

end A109053.P14794058053200059415

namespace A109053

/-- `A109045(n)*A169609(n)` -/
def P14794058053200059415.Spec : Prop :=
  ∀ n, P14794058053200059415.a n = A109053 n

end A109053

/-! ## A109053.P4213596780555912949

`A109044(n)*A176895(n)`
-/

namespace A109053.P4213596780555912949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109044 n * A176895 n

end

end A109053.P4213596780555912949

namespace A109053

/-- `A109044(n)*A176895(n)` -/
def P4213596780555912949.Spec : Prop :=
  ∀ n, P4213596780555912949.a n = A109053 n

end A109053

/-! ## A109053.P1459379006265866863

`A008594(n/A109015(n))`
-/

namespace A109053.P1459379006265866863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (SequenceMachineLib.roundAway ((n : ℚ) / (A109015 n : ℚ))).toNat

end

end A109053.P1459379006265866863

namespace A109053

/-- `A008594(n/A109015(n))` -/
def P1459379006265866863.Spec : Prop :=
  ∀ n, P1459379006265866863.a n = A109053 n

end A109053

/-! ## A109053.P264855587673696903

`A008588(A051724(n)+A051724(n))`
-/

namespace A109053.P264855587673696903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A051724 n + A051724 n).toNat

end

end A109053.P264855587673696903

namespace A109053

/-- `A008588(A051724(n)+A051724(n))` -/
def P264855587673696903.Spec : Prop :=
  ∀ n, P264855587673696903.a n = A109053 n

end A109053

/-! ## A109053.P17924563434246691111

`2*A109047(A064680(n))`
-/

namespace A109053.P17924563434246691111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109047 (A064680 n).toNat

end

end A109053.P17924563434246691111

namespace A109053

/-- `2*A109047(A064680(n))` -/
def P17924563434246691111.Spec : Prop :=
  ∀ n, P17924563434246691111.a n = A109053 n

end A109053

/-! ## A109053.P14281907859449476775

`n*A228437(2*n)`
-/

namespace A109053.P14281907859449476775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A228437 (2 * n)

end

end A109053.P14281907859449476775

namespace A109053

/-- `n*A228437(2*n)` -/
def P14281907859449476775.Spec : Prop :=
  ∀ n, P14281907859449476775.a n = A109053 n

end A109053

/-! ## A109053.P14166281605464947322

`2*A109047(A188134(2*n))`
-/

namespace A109053.P14166281605464947322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109047 (A188134 (2 * n)).toNat

end

end A109053.P14166281605464947322

namespace A109053

/-- `2*A109047(A188134(2*n))` -/
def P14166281605464947322.Spec : Prop :=
  ∀ n, P14166281605464947322.a n = A109053 n

end A109053

/-! ## A109053.P10966943439675446803

`2*A109047(A109047(n)/2)`
-/

namespace A109053.P10966943439675446803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109047 (SequenceMachineLib.roundAway ((A109047 n : ℚ) / 2)).toNat

end

end A109053.P10966943439675446803

namespace A109053

/-- `2*A109047(A109047(n)/2)` -/
def P10966943439675446803.Spec : Prop :=
  ∀ n, P10966943439675446803.a n = A109053 n

end A109053

/-! ## A109053.P12326902712508779073

`A109045(A109044(n))`
-/

namespace A109053.P12326902712508779073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109045 (A109044 n).toNat

end

end A109053.P12326902712508779073

namespace A109053

/-- `A109045(A109044(n))` -/
def P12326902712508779073.Spec : Prop :=
  ∀ n, P12326902712508779073.a n = A109053 n

end A109053

/-! ## A109053.P18262699844139779234

`A109015(n)*A188134(A130724(n))`
-/

namespace A109053.P18262699844139779234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109015 n * A188134 (A130724 n).toNat

end

end A109053.P18262699844139779234

namespace A109053

/-- `A109015(n)*A188134(A130724(n))` -/
def P18262699844139779234.Spec : Prop :=
  ∀ n, P18262699844139779234.a n = A109053 n

end A109053

/-! ## A109053.P1844580859583966409

`A109047(A109045(n))`
-/

namespace A109053.P1844580859583966409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109047 (A109045 n).toNat

end

end A109053.P1844580859583966409

namespace A109053

/-- `A109047(A109045(n))` -/
def P1844580859583966409.Spec : Prop :=
  ∀ n, P1844580859583966409.a n = A109053 n

end A109053

/-! ## A109053.P16142668036155257195

`A109044(A109049(2*n)/2)`
-/

namespace A109053.P16142668036155257195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109044 (SequenceMachineLib.roundAway ((A109049 (2 * n) : ℚ) / 2)).toNat

end

end A109053.P16142668036155257195

namespace A109053

/-- `A109044(A109049(2*n)/2)` -/
def P16142668036155257195.Spec : Prop :=
  ∀ n, P16142668036155257195.a n = A109053 n

end A109053

/-! ## A109053.P14500391793436391516

`A266491(A109047(n))`
-/

namespace A109053.P14500391793436391516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 (A109047 n).toNat

end

end A109053.P14500391793436391516

namespace A109053

/-- `A266491(A109047(n))` -/
def P14500391793436391516.Spec : Prop :=
  ∀ n, P14500391793436391516.a n = A109053 n

end A109053

/-!
# A109054: Squares and numbers k such that the continued fraction expansion of sqrt(k) is multiplicative.

The programs for A109054, there is no canonical definition to state claims against.
-/

/-! ## A109054.P18032106786934220291

`∪[A108575(n+1), n²]`
-/

namespace A109054.P18032106786934220291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108575 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A109054.P18032106786934220291

/-! ## A109054.P17008892488534801566

`∪[A000290(n), A108575(n+1)]`
-/

namespace A109054.P17008892488534801566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A109054.P17008892488534801566

/-! ## A109054.P1883354521914778312

`eq[char[A108575(n+1)], A091453(n)]`
-/

namespace A109054.P1883354521914778312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108575 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A109054.P1883354521914778312

/-! ## A109054.P7186868472251056748

`eq[1, A010052(n)+char[A108575(n+1)]]`
-/

namespace A109054.P7186868472251056748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108575 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A109054.P7186868472251056748

/-! ## A109054.P13314819752145853692

`comp[A109150(n+1)]%A109182(n+2)`
-/

namespace A109054.P13314819752145853692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109150 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A109182 (n + 2))

end

end A109054.P13314819752145853692

/-!
# A109055: To compute a(n) we first write down 3^n 1's in a row. Each row takes the rightmost 3rd part of the previous row and each element in it equals sum of the elements of the previous row starting with the first of the rightmost 3rd part. The single element in the last row is a(n).

The programs for A109055, there is no canonical definition to state claims against.
-/

/-! ## A109055.P17170493988222700205

`A355576(eq[2, A129713(n)])`
-/

namespace A109055.P17170493988222700205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109055.P17170493988222700205

/-! ## A109055.P15285461091452238670

`A355576(eq[3, A025581(n)])`
-/

namespace A109055.P15285461091452238670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109055.P15285461091452238670

/-! ## A109055.P5656229998796275500

`A355576(eq[4, A193739(n)])`
-/

namespace A109055.P5656229998796275500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109055.P5656229998796275500

/-! ## A109055.P15101127188332440919

`A355576(A052905(n+1)+1)`
-/

namespace A109055.P15101127188332440919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A052905 (n + 1) + 1).toNat

end

end A109055.P15101127188332440919

/-! ## A109055.P12370041222281865624

`A355576(A055999(n+1)+2)`
-/

namespace A109055.P12370041222281865624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A055999 (n + 1) + 2).toNat

end

end A109055.P12370041222281865624

/-!
# A109056: To compute a(n) we first write down 4^n 1's in a row. Each row takes the rightmost 4th part of the previous row and each element in it equals sum of the elements of the previous row starting with the first of the rightmost 4th part. The single element in the last row is a(n).

The programs for A109056, there is no canonical definition to state claims against.
-/

/-! ## A109056.P15188975725129993354

`A355576(A052905(n+2))`
-/

namespace A109056.P15188975725129993354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A052905 (n + 2)).toNat

end

end A109056.P15188975725129993354

/-! ## A109056.P11646436991223992659

`A355576(eq[3, A129713(n)])`
-/

namespace A109056.P11646436991223992659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109056.P11646436991223992659

/-! ## A109056.P12151642256574286684

`A355576(eq[3, A212551(n)])`
-/

namespace A109056.P12151642256574286684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212551 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109056.P12151642256574286684

/-! ## A109056.P8952158702602341421

`A355576(eq[4, A025581(n)])`
-/

namespace A109056.P8952158702602341421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109056.P8952158702602341421

/-! ## A109056.P14076932811850594633

`A355576(eq[5, A193739(n)])`
-/

namespace A109056.P14076932811850594633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109056.P14076932811850594633

/-!
# A109057: To compute a(n) we first write down 5^n 1's in a row. Each row takes the rightmost 5th part of the previous row and each element in it equals sum of the elements of the previous row starting with the first of the rightmost 5th part. The single element in the last row is a(n).

The programs for A109057, there is no canonical definition to state claims against.
-/

/-! ## A109057.P9844046241833321198

`A355576(A056119(n)+15)`
-/

namespace A109057.P9844046241833321198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A056119 n + 15).toNat

end

end A109057.P9844046241833321198

/-! ## A109057.P12872186953250029162

`A355576(eq[5, A025581(n)])`
-/

namespace A109057.P12872186953250029162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109057.P12872186953250029162

/-! ## A109057.P14845125835515546393

`A355576(eq[6, A193739(n)])`
-/

namespace A109057.P14845125835515546393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109057.P14845125835515546393

/-! ## A109057.P14378486495286567037

`A355576(Δ[Δ[A095667(n)]])`
-/

namespace A109057.P14378486495286567037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (f1 (n + 1) - f1 n).toNat

end

end A109057.P14378486495286567037

/-! ## A109057.P16553153426436399143

`A355576(Δ[A023551(n+1)])`
-/

namespace A109057.P16553153426436399143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (f1 (n + 1) - f1 n).toNat

end

end A109057.P16553153426436399143

/-!
# A109058: To compute a(n) we first write down 6^n 1's in a row. Each row takes the rightmost 6th part of the previous row and each element in it equals sum of the elements of the previous row starting with the first of the rightmost 6th part. The single element in the last row is a(n).

The programs for A109058, there is no canonical definition to state claims against.
-/

/-! ## A109058.P13630788319918473602

`A355576(eq[6, A025581(n)])`
-/

namespace A109058.P13630788319918473602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109058.P13630788319918473602

/-! ## A109058.P14309095213898974462

`A355576(eq[7, A193739(n)])`
-/

namespace A109058.P14309095213898974462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109058.P14309095213898974462

/-! ## A109058.P8833786792618783748

`A355576(eq[13, A099375(n)])`
-/

namespace A109058.P8833786792618783748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109058.P8833786792618783748

/-! ## A109058.P14474755646299812991

`A355576(A052905(n+4)-2)`
-/

namespace A109058.P14474755646299812991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A052905 (n + 4) - 2).toNat

end

end A109058.P14474755646299812991

/-! ## A109058.P15370015686329089034

`A355576(Δ[A023551(n+2)]-1)`
-/

namespace A109058.P15370015686329089034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (f1 (n + 1) - f1 n - 1).toNat

end

end A109058.P15370015686329089034

/-!
# A109059: To compute a(n) we first write down 7^n 1's in a row. Each row takes the rightmost 7th part of the previous row and each element in it equals sum of the elements of the previous row starting with the first of the rightmost 7th part. The single element in the last row is a(n).

The programs for A109059, there is no canonical definition to state claims against.
-/

/-! ## A109059.P9594576530613608168

`A355576(eq[7, A025581(n)])`
-/

namespace A109059.P9594576530613608168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109059.P9594576530613608168

/-! ## A109059.P15555514894415235535

`A355576(eq[8, A193739(n)])`
-/

namespace A109059.P15555514894415235535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109059.P15555514894415235535

/-! ## A109059.P16875161147333283134

`A355576(eq[13, A129713(n)])`
-/

namespace A109059.P16875161147333283134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109059.P16875161147333283134

/-! ## A109059.P14539881269342456563

`A355576(eq[15, A099375(n)])`
-/

namespace A109059.P14539881269342456563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109059.P14539881269342456563

/-! ## A109059.P16971374574463911940

`A355576(A056119(n+2)+13)`
-/

namespace A109059.P16971374574463911940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A056119 (n + 2) + 13).toNat

end

end A109059.P16971374574463911940

/-!
# A109060: To compute a(n) we first write down 8^n 1's in a row. Each row takes the rightmost 8th part of the previous row and each element in it equals sum of the elements of the previous row starting with the first of the rightmost 8th part. The single element in the last row is a(n).

The programs for A109060, there is no canonical definition to state claims against.
-/

/-! ## A109060.P1016023753743594689

`A355576(eq[8, A025581(n)])`
-/

namespace A109060.P1016023753743594689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109060.P1016023753743594689

/-! ## A109060.P1117803826731475436

`A355576(eq[9, A193739(n)])`
-/

namespace A109060.P1117803826731475436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109060.P1117803826731475436

/-! ## A109060.P17640066599124651700

`A355576(A056115(n+4)+6)`
-/

namespace A109060.P17640066599124651700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A056115 (n + 4) + 6).toNat

end

end A109060.P17640066599124651700

/-! ## A109060.P5401167706183554280

`A355576(A000217(n+9)-9)`
-/

namespace A109060.P5401167706183554280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (A000217 (n + 9) - 9).toNat

end

end A109060.P5401167706183554280

/-! ## A109060.P14926713470144844967

`A355576(eq[9, A004736(n+1)])`
-/

namespace A109060.P14926713470144844967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355576 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A109060.P14926713470144844967

/-!
# A109063: Expansion of eta(q)/eta(q^5)^5 in powers of q.

The programs for A109063, there is no canonical definition to state claims against.
-/

/-! ## A109063.P1597631466918916506

`A286950(A055999(n+3))`
-/

namespace A109063.P1597631466918916506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A055999 (n + 3)).toNat

end

end A109063.P1597631466918916506

/-! ## A109063.P9018345017934875619

`A286950(Δ[A023551(n+1)])`
-/

namespace A109063.P9018345017934875619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (f1 (n + 1) - f1 n).toNat

end

end A109063.P9018345017934875619

/-! ## A109063.P2562232780249938755

`A286950(Δ[A026054(n+3)])`
-/

namespace A109063.P2562232780249938755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (f1 (n + 1) - f1 n).toNat

end

end A109063.P2562232780249938755

/-! ## A109063.P11037226055732621940

`A286950(A046691(n+4)-2)`
-/

namespace A109063.P11037226055732621940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A046691 (n + 4) - 2).toNat

end

end A109063.P11037226055732621940

/-! ## A109063.P12303361414469587652

`A286950(A000096(n+5)-5)`
-/

namespace A109063.P12303361414469587652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A000096 (n + 5) - 5).toNat

end

end A109063.P12303361414469587652

/-! ## A109063.P7854434756886946262

`A286950(A000217(n+6)-6)`
-/

namespace A109063.P7854434756886946262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A000217 (n + 6) - 6).toNat

end

end A109063.P7854434756886946262

/-! ## A109063.P7872339958827571522

`A286950(A167614(n+5)-9)`
-/

namespace A109063.P7872339958827571522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A167614 (n + 5) - 9).toNat

end

end A109063.P7872339958827571522

/-! ## A109063.P3357242396656868871

`A286950(Δ[A023545(n+2)]-2)`
-/

namespace A109063.P3357242396656868871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (f1 (n + 1) - f1 n - 2).toNat

end

end A109063.P3357242396656868871

/-! ## A109063.P2607191072627135863

`A286950(A000124(n+5)+n-1)`
-/

namespace A109063.P2607191072627135863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A000124 (n + 5) + ((n : ℤ) - 1)).toNat

end

end A109063.P2607191072627135863

/-! ## A109063.P17519631225183576049

`A286950(2*n+A000124(n+4)+4)`
-/

namespace A109063.P17519631225183576049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 ((2 * n : ℤ) + (A000124 (n + 4) + 4)).toNat

end

end A109063.P17519631225183576049

/-! ## A109063.P14356204150424232353

`A286950(2*n+A000096(n+3)+6)`
-/

namespace A109063.P14356204150424232353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 ((2 * n : ℤ) + (A000096 (n + 3) + 6)).toNat

end

end A109063.P14356204150424232353

/-! ## A109063.P2468164891528288699

`A286950(4*n+9+A167614(n+1))`
-/

namespace A109063.P2468164891528288699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 ((4 * n + 9 : ℤ) + A167614 (n + 1)).toNat

end

end A109063.P2468164891528288699

/-! ## A109063.P17523556597446406990

`A286950(A005843(n+2)+A000124(n+4))`
-/

namespace A109063.P17523556597446406990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286950 (A005843 (n + 2) + A000124 (n + 4)).toNat

end

end A109063.P17523556597446406990

/-!
# A109064: Expansion of eta(q)^5 / eta(q^5) in powers of q.

The programs for A109064, there is no canonical definition to state claims against.
-/

/-! ## A109064.P1060562707207044920

`(-1)^n*A138506(n)`
-/

namespace A109064.P1060562707207044920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A138506 n

end

end A109064.P1060562707207044920

/-! ## A109064.P236307385443554876

`A138506(n)/A033999(n)`
-/

namespace A109064.P236307385443554876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138506 n : ℚ) / (A033999 n : ℚ)

end

end A109064.P236307385443554876

/-! ## A109064.P10471677923784887589

`A109091(n+1)*A138506(n)/A138507(n+1)`
-/

namespace A109064.P10471677923784887589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109091 (n + 1) * A138506 n : ℚ) / (A138507 (n + 1) : ℚ)

end

end A109064.P10471677923784887589

/-! ## A109064.P1399374934696784744

`(A138506(2*n)+A138506(4*n))/2`
-/

namespace A109064.P1399374934696784744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138506 (2 * n) + A138506 (4 * n) : ℚ) / 2

end

end A109064.P1399374934696784744

/-! ## A109064.P2992529797164992083

`A004413(n)*A138506(n)/A319554(n)`
-/

namespace A109064.P2992529797164992083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004413 n * A138506 n : ℚ) / (A319554 n : ℚ)

end

end A109064.P2992529797164992083

/-! ## A109064.P6427085220594688052

`A205882(n)/A324969(n+1)`
-/

namespace A109064.P6427085220594688052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205882 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A109064.P6427085220594688052

/-! ## A109064.P3928131057009658871

`A205884(n)/A215928(n)`
-/

namespace A109064.P3928131057009658871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205884 n : ℚ) / (A215928 n : ℚ)

end

end A109064.P3928131057009658871

/-! ## A109064.P13869003439014118549

`A138506(n)/(-1)^A138509(n+1)`
-/

namespace A109064.P13869003439014118549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138506 n : ℚ) / (-1 : ℚ) ^ (A138509 (n + 1) : ℤ)

end

end A109064.P13869003439014118549

/-!
# A109066: Number of prime digits in n-th prime.

The programs for A109066, the canonical program `A109066.P12295407533363932252` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109066 has offset 1).

The definition of A109066 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A193238, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109066.P12295407533363932252

`A193238(A000040(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A109066

/-- `A193238(A000040(n+1))` -/
def P12295407533363932252.Spec : Prop :=
  ∀ n, P12295407533363932252.a n = A109066 (n + 1)

theorem P12295407533363932252.correct : P12295407533363932252.Spec := by
  intro n
  simp only [A109066, Nat.add_sub_cancel]

end A109066

/-! ## A109066.P10101514246403482740

`∑{digits}[A000040(n+1), A090418(#)]`
-/

namespace A109066.P10101514246403482740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A090418 x).sum

end

end A109066.P10101514246403482740

namespace A109066

/-- `∑{digits}[A000040(n+1), A090418(#)]` -/
def P10101514246403482740.Spec : Prop :=
  ∀ n, P10101514246403482740.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P4019922790587464774

`A193238(A171013(n+1))`
-/

namespace A109066.P4019922790587464774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171013 (n + 1)).toNat

end

end A109066.P4019922790587464774

namespace A109066

/-- `A193238(A171013(n+1))` -/
def P4019922790587464774.Spec : Prop :=
  ∀ n, P4019922790587464774.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P6376700910900753016

`A193238(A028905(n+1))`
-/

namespace A109066.P6376700910900753016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A028905 (n + 1)).toNat

end

end A109066.P6376700910900753016

namespace A109066

/-- `A193238(A028905(n+1))` -/
def P6376700910900753016.Spec : Prop :=
  ∀ n, P6376700910900753016.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P12716171293635973359

`A193238(p?[xor(1, n)])`
-/

namespace A109066.P12716171293635973359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A109066.P12716171293635973359

namespace A109066

/-- `A193238(p?[xor(1, n)])` -/
def P12716171293635973359.Spec : Prop :=
  ∀ n, P12716171293635973359.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P13639484529113948465

`A193238(Δ[A007504(n)])`
-/

namespace A109066.P13639484529113948465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (f1 (n + 1) - f1 n).toNat

end

end A109066.P13639484529113948465

namespace A109066

/-- `A193238(Δ[A007504(n)])` -/
def P13639484529113948465.Spec : Prop :=
  ∀ n, P13639484529113948465.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P3169768860456012494

`A193238(A004087(n+1))`
-/

namespace A109066.P3169768860456012494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A004087 (n + 1)).toNat

end

end A109066.P3169768860456012494

namespace A109066

/-- `A193238(A004087(n+1))` -/
def P3169768860456012494.Spec : Prop :=
  ∀ n, P3169768860456012494.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P13088013387087166605

`A193238(A028906(n+1))`
-/

namespace A109066.P13088013387087166605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A028906 (n + 1)).toNat

end

end A109066.P13088013387087166605

namespace A109066

/-- `A193238(A028906(n+1))` -/
def P13088013387087166605.Spec : Prop :=
  ∀ n, P13088013387087166605.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P5078995720505605641

`A193238(A171018(n+1))`
-/

namespace A109066.P5078995720505605641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171018 (n + 1)).toNat

end

end A109066.P5078995720505605641

namespace A109066

/-- `A193238(A171018(n+1))` -/
def P5078995720505605641.Spec : Prop :=
  ∀ n, P5078995720505605641.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P10095868377114825063

`A193238(A171019(n+1))`
-/

namespace A109066.P10095868377114825063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171019 (n + 1)).toNat

end

end A109066.P10095868377114825063

namespace A109066

/-- `A193238(A171019(n+1))` -/
def P10095868377114825063.Spec : Prop :=
  ∀ n, P10095868377114825063.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P17354422759229381391

`A193238(A171020(n+1))`
-/

namespace A109066.P17354422759229381391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171020 (n + 1)).toNat

end

end A109066.P17354422759229381391

namespace A109066

/-- `A193238(A171020(n+1))` -/
def P17354422759229381391.Spec : Prop :=
  ∀ n, P17354422759229381391.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P10492622596431373925

`A193238(A171025(n+1))`
-/

namespace A109066.P10492622596431373925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171025 (n + 1)).toNat

end

end A109066.P10492622596431373925

namespace A109066

/-- `A193238(A171025(n+1))` -/
def P10492622596431373925.Spec : Prop :=
  ∀ n, P10492622596431373925.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P9432938511089885724

`A193238(A171026(n+1))`
-/

namespace A109066.P9432938511089885724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171026 (n + 1)).toNat

end

end A109066.P9432938511089885724

namespace A109066

/-- `A193238(A171026(n+1))` -/
def P9432938511089885724.Spec : Prop :=
  ∀ n, P9432938511089885724.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P15581885034963722032

`A193238(A171028(n+1))`
-/

namespace A109066.P15581885034963722032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171028 (n + 1)).toNat

end

end A109066.P15581885034963722032

namespace A109066

/-- `A193238(A171028(n+1))` -/
def P15581885034963722032.Spec : Prop :=
  ∀ n, P15581885034963722032.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P10726147379578718238

`A193238(A171029(n+1))`
-/

namespace A109066.P10726147379578718238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171029 (n + 1)).toNat

end

end A109066.P10726147379578718238

namespace A109066

/-- `A193238(A171029(n+1))` -/
def P10726147379578718238.Spec : Prop :=
  ∀ n, P10726147379578718238.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P2221363043559235738

`A193238(A171032(n+1))`
-/

namespace A109066.P2221363043559235738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171032 (n + 1)).toNat

end

end A109066.P2221363043559235738

namespace A109066

/-- `A193238(A171032(n+1))` -/
def P2221363043559235738.Spec : Prop :=
  ∀ n, P2221363043559235738.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P2218279829289688797

`A193238(A171036(n+1))`
-/

namespace A109066.P2218279829289688797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171036 (n + 1)).toNat

end

end A109066.P2218279829289688797

namespace A109066

/-- `A193238(A171036(n+1))` -/
def P2218279829289688797.Spec : Prop :=
  ∀ n, P2218279829289688797.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P14365516841956679237

`A193238(A171037(n+1))`
-/

namespace A109066.P14365516841956679237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171037 (n + 1)).toNat

end

end A109066.P14365516841956679237

namespace A109066

/-- `A193238(A171037(n+1))` -/
def P14365516841956679237.Spec : Prop :=
  ∀ n, P14365516841956679237.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P16688943606292093813

`A193238(A171039(n+1))`
-/

namespace A109066.P16688943606292093813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A171039 (n + 1)).toNat

end

end A109066.P16688943606292093813

namespace A109066

/-- `A193238(A171039(n+1))` -/
def P16688943606292093813.Spec : Prop :=
  ∀ n, P16688943606292093813.a n = A109066 (n + 1)

end A109066

/-! ## A109066.P12131697172326212400

`A193238(A008578(n+2))`
-/

namespace A109066.P12131697172326212400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193238 (A008578 (n + 2)).toNat

end

end A109066.P12131697172326212400

namespace A109066

/-- `A193238(A008578(n+2))` -/
def P12131697172326212400.Spec : Prop :=
  ∀ n, P12131697172326212400.a n = A109066 (n + 1)

end A109066

/-!
# A109067: 3-almost primes of the form semiprime + 1.

The programs for A109067, the canonical program `A109067.P1494710875506635394` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109067 has offset 1).

The definition of A109067 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109067.P1494710875506635394

`∩[A014612(n+1), A088707(n+1)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A109067

/-- `∩[A014612(n+1), A088707(n+1)]` -/
def P1494710875506635394.Spec : Prop :=
  ∀ n, (P1494710875506635394.a n : ℤ) = A109067 (n + 1)

theorem P1494710875506635394.correct : P1494710875506635394.Spec := by
  intro n
  simp only [A109067, Nat.add_sub_cancel]

end A109067

/-! ## A109067.P10243346422053851642

`∩[A001358(n+1)+1, A014612(n+1)]`
-/

namespace A109067.P10243346422053851642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109067.P10243346422053851642

namespace A109067

/-- `∩[A001358(n+1)+1, A014612(n+1)]` -/
def P10243346422053851642.Spec : Prop :=
  ∀ n, (P10243346422053851642.a n : ℤ) = A109067 (n + 1)

end A109067

/-! ## A109067.P13357642832825935320

`∩[eq[3, A001222(n+1)]+1, A088707(n+1)]`
-/

namespace A109067.P13357642832825935320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A109067.P13357642832825935320

namespace A109067

/-- `∩[eq[3, A001222(n+1)]+1, A088707(n+1)]` -/
def P13357642832825935320.Spec : Prop :=
  ∀ n, (P13357642832825935320.a n : ℤ) = A109067 (n + 1)

end A109067

/-! ## A109067.P10042948290809168615

`∩[A014612(n+1), A065516(n)+a(n-1)]` with `a(0)=5`
-/

namespace A109067.P10042948290809168615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A065516 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109067.P10042948290809168615

namespace A109067

/-- `∩[A014612(n+1), A065516(n)+a(n-1)]` -/
def P10042948290809168615.Spec : Prop :=
  ∀ n, (P10042948290809168615.a n : ℤ) = A109067 (n + 1)

end A109067

/-! ## A109067.P10997763612906242647

`∩[A088707(n+1), eq[1, A101637(2*(n+1))]+1]`
-/

namespace A109067.P10997763612906242647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A109067.P10997763612906242647

namespace A109067

/-- `∩[A088707(n+1), eq[1, A101637(2*(n+1))]+1]` -/
def P10997763612906242647.Spec : Prop :=
  ∀ n, (P10997763612906242647.a n : ℤ) = A109067 (n + 1)

end A109067

/-! ## A109067.P7949066464871390987

`∩[A014612(n+1), A103391(A075818(n+1))]`
-/

namespace A109067.P7949066464871390987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A075818 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109067.P7949066464871390987

namespace A109067

/-- `∩[A014612(n+1), A103391(A075818(n+1))]` -/
def P7949066464871390987.Spec : Prop :=
  ∀ n, (P7949066464871390987.a n : ℤ) = A109067 (n + 1)

end A109067

/-! ## A109067.P13918199400834839560

`filter[A088707(n+1), A101605(#)]`
-/

namespace A109067.P13918199400834839560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101605 (f1 j).toNat = 1) n)

end

end A109067.P13918199400834839560

namespace A109067

/-- `filter[A088707(n+1), A101605(#)]` -/
def P13918199400834839560.Spec : Prop :=
  ∀ n, P13918199400834839560.a n = A109067 (n + 1)

end A109067

/-! ## A109067.P152899263682645121

`∩[A088707(n+1), A165712(a(n-1))]` with `a(0)=8`
-/

namespace A109067.P152899263682645121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A165712 (f2 (n - 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109067.P152899263682645121

namespace A109067

/-- `∩[A088707(n+1), A165712(a(n-1))]` -/
def P152899263682645121.Spec : Prop :=
  ∀ n, (P152899263682645121.a n : ℤ) = A109067 (n + 1)

end A109067

/-! ## A109067.P9631026890374377276

`∩[A088707(n+5), A000720(A124268(n+1))]`
-/

namespace A109067.P9631026890374377276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A124268 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109067.P9631026890374377276

namespace A109067

/-- `∩[A088707(n+5), A000720(A124268(n+1))]` -/
def P9631026890374377276.Spec : Prop :=
  ∀ n, (P9631026890374377276.a n : ℤ) = A109067 (n + 1)

end A109067

/-!
# A109068: Products of two successive primes that can be partitioned in sum of three distinct primes which contain the prime divisors.

The programs for A109068, there is no canonical definition to state claims against.
-/

/-! ## A109068.P12963220801643734410

`ceil((sqrt(A096345(n+1))+1)²)+1`
-/

namespace A109068.P12963220801643734410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (A096345 (n + 1) : ℝ) + 1) ^ 2⌉ + 1

end

end A109068.P12963220801643734410

/-! ## A109068.P10996067305574344502

`A013636(A128547(n+1))`
-/

namespace A109068.P10996067305574344502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013636 (A128547 (n + 1)).toNat

end

end A109068.P10996067305574344502

/-! ## A109068.P10561512965405843288

`A013638(A128547(n+1)+1)`
-/

namespace A109068.P10561512965405843288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013638 (A128547 (n + 1) + 1).toNat

end

end A109068.P10561512965405843288

/-! ## A109068.P12934643256939768890

`A030664(A128547(n+1)+1)`
-/

namespace A109068.P12934643256939768890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030664 (A128547 (n + 1) + 1).toNat

end

end A109068.P12934643256939768890

/-! ## A109068.P612162735420941913

`A030661(A128547(n+1)-1)`
-/

namespace A109068.P612162735420941913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030661 (A128547 (n + 1) - 1).toNat

end

end A109068.P612162735420941913

/-!
# A109069: Numbers n such that the string n2323 is prime.

The programs for A109069, there is no canonical definition to state claims against.
-/

/-! ## A109069.P10554579976119240899

`eq[A233284(n+1), A239366(A135233(n))]`
-/

namespace A109069.P10554579976119240899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A135233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109069.P10554579976119240899

/-! ## A109069.P10100012756722701654

`eq[A233285(n+1), A239366(A135233(n))]`
-/

namespace A109069.P10100012756722701654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (A135233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A109069.P10100012756722701654

/-!
# A109070: Number of digits in numbers appearing in A108225.

The programs for A109070, there is no canonical definition to state claims against.
-/

/-! ## A109070.P10441031485641856316

`ceil(ceil(A060819(A011782(n))/ϕ)/ϕ)`
-/

namespace A109070.P10441031485641856316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(⌈(A060819 (A011782 n).toNat : ℝ) / Real.goldenRatio⌉ : ℝ) / Real.goldenRatio⌉

end

end A109070.P10441031485641856316

/-! ## A109070.P7387765193146366912

`A008617(A222253(n)+A000975(n))`
-/

namespace A109070.P7387765193146366912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A222253 n + A000975 n).toNat

end

end A109070.P7387765193146366912

/-! ## A109070.P4016567373393331130

`A008617(A332057(n+1)+A130781(n))`
-/

namespace A109070.P4016567373393331130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A332057 (n + 1) + A130781 n).toNat

end

end A109070.P4016567373393331130

/-! ## A109070.P14890245148693583638

`A103960(A000598(n))`
-/

namespace A109070.P14890245148693583638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103960 (A000598 n).toNat

end

end A109070.P14890245148693583638

/-! ## A109070.P12206371870580953397

`A257212(A003320(n))`
-/

namespace A109070.P12206371870580953397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A003320 n).toNat

end

end A109070.P12206371870580953397

/-!
# A109073: Number of decimal digits (counted with multiplicity) in n^2 but not in n.

The programs for A109073, there is no canonical definition to state claims against.
-/

/-! ## A109073.P8975747627365120322

`A055640(A258682(n)%A120897(n))`
-/

namespace A109073.P8975747627365120322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (Int.tmod (A258682 n) (A120897 n)).toNat

end

end A109073.P8975747627365120322

/-!
# A109074: Numerator of binomial(6*n-2,2*n)/(2*binomial(4*n-1,2*n)).

The programs for A109074, there is no canonical definition to state claims against.
-/

/-! ## A109074.P299266566259283085

`A005156(n)/A172528(A290517(n))`
-/

namespace A109074.P299266566259283085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005156 n : ℚ) / (A172528 (A290517 n).toNat : ℚ)

end

end A109074.P299266566259283085

/-!
# A109076: Numbers n such that 11^n + 2 is prime.

The programs for A109076, there is no canonical definition to state claims against.
-/

/-! ## A109076.P2923300624283530587

`A036717(a(n-1))` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A109076.P2923300624283530587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  A036717 (a (n - 1)).toNat

end

end A109076.P2923300624283530587

/-!
# A109077: Triangle read by rows: T(n,k) is the number of symmetric Dyck paths of semilength n and having k hills (i.e., peaks at level 1).

The programs for A109077, there is no canonical definition to state claims against.
-/

/-! ## A109077.P10834243998072137912

`A162590(A055356(n+2))`
-/

namespace A109077.P10834243998072137912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162590 (A055356 (n + 2)).toNat

end

end A109077.P10834243998072137912

/-! ## A109077.P14992320533733400898

`A194711(n+1)-A276974(A276974(n))`
-/

namespace A109077.P14992320533733400898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194711 (n + 1) - A276974 (A276974 n).toNat

end

end A109077.P14992320533733400898

/-! ## A109077.P2606690015727705653

`A194711(n+1)-A281446(A281446(n))`
-/

namespace A109077.P2606690015727705653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194711 (n + 1) - A281446 (A281446 n).toNat

end

end A109077.P2606690015727705653

/-! ## A109077.P1190365020369822767

`A055277(n+2)%A331258(A301730(n))`
-/

namespace A109077.P1190365020369822767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055277 (n + 2)) (A331258 (A301730 n).toNat)

end

end A109077.P1190365020369822767

/-! ## A109077.P18279774080534219538

`lcm(A053534(A123125(n+2)), A239366(n))`
-/

namespace A109077.P18279774080534219538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A053534 (A123125 (n + 2)).toNat) (A239366 n)

end

end A109077.P18279774080534219538

/-!
# A109078: Number of symmetric Dyck paths of semilength n and having no hills (i.e., no peaks at level 1).

The programs for A109078, there is no canonical definition to state claims against.
-/

/-! ## A109078.P4295979504016763488

`2*A191526(n+1)-A001405(n+1)`
-/

namespace A109078.P4295979504016763488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191526 (n + 1) - A001405 (n + 1)

end

end A109078.P4295979504016763488

/-! ## A109078.P16028684749500413641

`A201635(A101881(n))`
-/

namespace A109078.P16028684749500413641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A101881 n).toNat

end

end A109078.P16028684749500413641

/-! ## A109078.P12844087959021715844

`A201635(A165157(n)+1)`
-/

namespace A109078.P12844087959021715844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A165157 n + 1).toNat

end

end A109078.P12844087959021715844

/-! ## A109078.P4722588261991888971

`A201635(∑[A001405(n)/A057977(n)])`
-/

namespace A109078.P4722588261991888971
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 n : ℚ) / (A057977 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A109078.P4722588261991888971

/-! ## A109078.P13838445532256040722

`A059259(∑[n]+ceil(n/2))`
-/

namespace A109078.P13838445532256040722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ⌈(n : ℚ) / 2⌉).toNat

end

end A109078.P13838445532256040722

/-! ## A109078.P4386574151248092840

`A059260(A007590(n)+n)`
-/

namespace A109078.P4386574151248092840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A007590 n + (n : ℤ)).toNat

end

end A109078.P4386574151248092840

/-! ## A109078.P14734272684936094815

`A059260(2*A002620(n)+n)`
-/

namespace A109078.P14734272684936094815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (2 * A002620 n + (n : ℤ)).toNat

end

end A109078.P14734272684936094815

/-! ## A109078.P9658825710799315640

`A059260(A002620(n)+A002620(n)+n)`
-/

namespace A109078.P9658825710799315640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A002620 n + (A002620 n + (n : ℤ))).toNat

end

end A109078.P9658825710799315640

/-! ## A109078.P14278783900981319318

`A108561(∑[or(1, n+1)])`
-/

namespace A109078.P14278783900981319318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109078.P14278783900981319318

/-! ## A109078.P13664901475890931430

`A108561(∑[and(1, n)+1+n])`
-/

namespace A109078.P13664901475890931430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109078.P13664901475890931430

/-! ## A109078.P6944808120926460694

`A108561(A074148(n+1))`
-/

namespace A109078.P6944808120926460694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A074148 (n + 1)).toNat

end

end A109078.P6944808120926460694

/-! ## A109078.P16980636799907629425

`A112465(A080476(n+2))`
-/

namespace A109078.P16980636799907629425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A080476 (n + 2)).toNat

end

end A109078.P16980636799907629425

/-! ## A109078.P17524589694138466126

`A112465(∑[2*A008619(n)])`
-/

namespace A109078.P17524589694138466126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A109078.P17524589694138466126

/-! ## A109078.P5462654849238911300

`A108561(record[A245300(n+1)])`
-/

namespace A109078.P5462654849238911300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109078.P5462654849238911300

/-! ## A109078.P10773831940981331957

`A108561(A000982(n+2)-1)`
-/

namespace A109078.P10773831940981331957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A000982 (n + 2) - 1).toNat

end

end A109078.P10773831940981331957

/-! ## A109078.P15054134040435063876

`A112465(2*A002620(n+2))`
-/

namespace A109078.P15054134040435063876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (2 * A002620 (n + 2)).toNat

end

end A109078.P15054134040435063876

/-! ## A109078.P17130920054369113896

`A112465(2*A008642(2*n))`
-/

namespace A109078.P17130920054369113896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (2 * A008642 (2 * n)).toNat

end

end A109078.P17130920054369113896

/-! ## A109078.P10265331575306682077

`A112465(A005843(∑[A008619(n)]))`
-/

namespace A109078.P10265331575306682077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A109078.P10265331575306682077

/-! ## A109078.P9018523554492446617

`A112465(A002620(n+2)+A002620(n+2))`
-/

namespace A109078.P9018523554492446617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A002620 (n + 2) + A002620 (n + 2)).toNat

end

end A109078.P9018523554492446617

/-! ## A109078.P8086121066692792270

`A201635(lt[A201637(n+1), A201634(n)])`
-/

namespace A109078.P8086121066692792270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A109078.P8086121066692792270

/-!
# A109080: Numbers k such that 5^k - 2 is prime.

The programs for A109080, there is no canonical definition to state claims against.
-/

/-! ## A109080.P16842084143345770263

`eq[2, A013605(n+1)]+1`
-/

namespace A109080.P16842084143345770263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013605 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A109080.P16842084143345770263

/-! ## A109080.P10362689298063756040

`lt[A013605(n+1), A153727(3*n+4)]+1`
-/

namespace A109080.P10362689298063756040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153727 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A109080.P10362689298063756040

/-!
# A109081: Reversion of x*(1-x)*(1-x^2)*(1-x^3)/(1-x^6) = x*(1-x)^2/(1-x+x^2).

The programs for A109081, there is no canonical definition to state claims against.
-/

/-! ## A109081.P13883673476288101679

`A215067(2*n)`
-/

namespace A109081.P13883673476288101679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215067 (2 * n)

end

end A109081.P13883673476288101679

/-! ## A109081.P9330435288423886713

`A215067(n+n)+A034852(∑[n])`
-/

namespace A109081.P9330435288423886713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215067 (n + n) + A034852 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109081.P9330435288423886713

/-! ## A109081.P14671191160398328229

`A308583(A124758(n))+A215067(n+n)`
-/

namespace A109081.P14671191160398328229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308583 (A124758 n).toNat + A215067 (n + n)

end

end A109081.P14671191160398328229

/-! ## A109081.P15165712804538612746

`A215067(n+n)+A036987(A273855(n+1))`
-/

namespace A109081.P15165712804538612746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215067 (n + n) + A036987 (A273855 (n + 1)).toNat

end

end A109081.P15165712804538612746

/-! ## A109081.P17383861799151437992

`A215067(n+n)+A036987(record[A019433(n+1)])`
-/

namespace A109081.P17383861799151437992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215067 (n + n) + A036987 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A109081.P17383861799151437992

/-! ## A109081.P11834589669470159443

`A185967(∑[n])`
-/

namespace A109081.P11834589669470159443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185967 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A109081.P11834589669470159443

/-! ## A109081.P1308102396485562176

`A215067(n+n)/A325931(n+1)²`
-/

namespace A109081.P1308102396485562176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215067 (n + n) : ℚ) / (A325931 (n + 1) ^ 2 : ℚ)

end

end A109081.P1308102396485562176

/-!
# A109082: Depth of rooted tree having Matula-Goebel number n.

The programs for A109082, the canonical program `A109082.P2849542924064461301` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109082 has offset 1).

The definition of A109082 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A358552, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109082.P2849542924064461301

`A358552(n+1)-1`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109082

/-- `A358552(n+1)-1` -/
def P2849542924064461301.Spec : Prop :=
  ∀ n, P2849542924064461301.a n = A109082 (n + 1)

theorem P2849542924064461301.correct : P2849542924064461301.Spec := by
  intro n
  simp only [A109082, Nat.add_sub_cancel]

end A109082

/-! ## A109082.P7877293085418220981

`a(A003963(n+1)-1)+1` with `a(0)=0`
-/

namespace A109082.P7877293085418220981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A003963 (n + 1) - 1).toNat + 1

end

end A109082.P7877293085418220981

namespace A109082

/-- `a(A003963(n+1)-1)+1` -/
def P7877293085418220981.Spec : Prop :=
  ∀ n, (P7877293085418220981.a n : ℤ) = A109082 (n + 1)

end A109082

/-! ## A109082.P12766718165857815137

`a(A156061(n+1)-1)+1` with `a(0)=0`
-/

namespace A109082.P12766718165857815137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A156061 (n + 1) - 1).toNat + 1

end

end A109082.P12766718165857815137

namespace A109082

/-- `a(A156061(n+1)-1)+1` -/
def P12766718165857815137.Spec : Prop :=
  ∀ n, (P12766718165857815137.a n : ℤ) = A109082 (n + 1)

end A109082

/-! ## A109082.P9280529837066906394

`a(A290103(n+1)-1)+1` with `a(0)=0`
-/

namespace A109082.P9280529837066906394
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A290103 (n + 1) - 1).toNat + 1

end

end A109082.P9280529837066906394

namespace A109082

/-- `a(A290103(n+1)-1)+1` -/
def P9280529837066906394.Spec : Prop :=
  ∀ n, (P9280529837066906394.a n : ℤ) = A109082 (n + 1)

end A109082

/-! ## A109082.P18057014727718720635

`A196050(n+1)-A358729(n+1)`
-/

namespace A109082.P18057014727718720635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) - A358729 (n + 1)

end

end A109082.P18057014727718720635

namespace A109082

/-- `A196050(n+1)-A358729(n+1)` -/
def P18057014727718720635.Spec : Prop :=
  ∀ n, P18057014727718720635.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P17935607047057052478

`A166931(n+1)%A358552(n+1)`
-/

namespace A109082.P17935607047057052478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A358552 (n + 1))

end

end A109082.P17935607047057052478

namespace A109082

/-- `A166931(n+1)%A358552(n+1)` -/
def P17935607047057052478.Spec : Prop :=
  ∀ n, P17935607047057052478.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P10664599332624344448

`A127229(n+5)%A358552(n+1)`
-/

namespace A109082.P10664599332624344448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A358552 (n + 1))

end

end A109082.P10664599332624344448

namespace A109082

/-- `A127229(n+5)%A358552(n+1)` -/
def P10664599332624344448.Spec : Prop :=
  ∀ n, P10664599332624344448.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P17352423636719857932

`A061775(n+1)-(A358729(n+1)+1)`
-/

namespace A109082.P17352423636719857932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - (A358729 (n + 1) + 1)

end

end A109082.P17352423636719857932

namespace A109082

/-- `A061775(n+1)-(A358729(n+1)+1)` -/
def P17352423636719857932.Spec : Prop :=
  ∀ n, P17352423636719857932.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P4989958172791537443

`A324923(n+1)+A366386(n+1)-A358729(n+1)`
-/

namespace A109082.P4989958172791537443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (n + 1) + (A366386 (n + 1) - A358729 (n + 1))

end

end A109082.P4989958172791537443

namespace A109082

/-- `A324923(n+1)+A366386(n+1)-A358729(n+1)` -/
def P4989958172791537443.Spec : Prop :=
  ∀ n, P4989958172791537443.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P9461646406771374945

`A325544(n+1)-(A358729(n+1)+A325544(n))`
-/

namespace A109082.P9461646406771374945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325544 (n + 1) - (A358729 (n + 1) + A325544 n)

end

end A109082.P9461646406771374945

namespace A109082

/-- `A325544(n+1)-(A358729(n+1)+A325544(n))` -/
def P9461646406771374945.Spec : Prop :=
  ∀ n, P9461646406771374945.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P15317851975839013087

`A058197(n+1)%A358552(n+1)`
-/

namespace A109082.P15317851975839013087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A358552 (n + 1))

end

end A109082.P15317851975839013087

namespace A109082

/-- `A058197(n+1)%A358552(n+1)` -/
def P15317851975839013087.Spec : Prop :=
  ∀ n, P15317851975839013087.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P15463093049531648557

`A196058(A008593(n+1))-4`
-/

namespace A109082.P15463093049531648557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (A008593 (n + 1)).toNat - 4

end

end A109082.P15463093049531648557

namespace A109082

/-- `A196058(A008593(n+1))-4` -/
def P15463093049531648557.Spec : Prop :=
  ∀ n, P15463093049531648557.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P2503458977606526184

`A196058(A001750(n+1))-4`
-/

namespace A109082.P2503458977606526184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196058 (A001750 (n + 1)).toNat - 4

end

end A109082.P2503458977606526184

namespace A109082

/-- `A196058(A001750(n+1))-4` -/
def P2503458977606526184.Spec : Prop :=
  ∀ n, P2503458977606526184.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P1315115068832218699

`A083800(n+1)%A358552(n+1)`
-/

namespace A109082.P1315115068832218699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A358552 (n + 1))

end

end A109082.P1315115068832218699

namespace A109082

/-- `A083800(n+1)%A358552(n+1)` -/
def P1315115068832218699.Spec : Prop :=
  ∀ n, P1315115068832218699.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P16060389511091670465

`A070198(n)%A358552(n+1)`
-/

namespace A109082.P16060389511091670465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A358552 (n + 1))

end

end A109082.P16060389511091670465

namespace A109082

/-- `A070198(n)%A358552(n+1)` -/
def P16060389511091670465.Spec : Prop :=
  ∀ n, P16060389511091670465.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P666869968974061510

`A079782(n+1)%A358552(n+1)`
-/

namespace A109082.P666869968974061510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A358552 (n + 1))

end

end A109082.P666869968974061510

namespace A109082

/-- `A079782(n+1)%A358552(n+1)` -/
def P666869968974061510.Spec : Prop :=
  ∀ n, P666869968974061510.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P2776753322803739121

`A083685(n+1)%A358552(n+1)`
-/

namespace A109082.P2776753322803739121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A358552 (n + 1))

end

end A109082.P2776753322803739121

namespace A109082

/-- `A083685(n+1)%A358552(n+1)` -/
def P2776753322803739121.Spec : Prop :=
  ∀ n, P2776753322803739121.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P70064826404524112

`A121934(n+1)%A358552(n+1)`
-/

namespace A109082.P70064826404524112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A358552 (n + 1))

end

end A109082.P70064826404524112

namespace A109082

/-- `A121934(n+1)%A358552(n+1)` -/
def P70064826404524112.Spec : Prop :=
  ∀ n, P70064826404524112.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P1952377528870249719

`A030494(n+1)%A358552(n+1)`
-/

namespace A109082.P1952377528870249719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A358552 (n + 1))

end

end A109082.P1952377528870249719

namespace A109082

/-- `A030494(n+1)%A358552(n+1)` -/
def P1952377528870249719.Spec : Prop :=
  ∀ n, P1952377528870249719.a n = A109082 (n + 1)

end A109082

/-! ## A109082.P9354026706314586093

`A072828(n+1)%A358552(n+1)`
-/

namespace A109082.P9354026706314586093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A358552 (n + 1))

end

end A109082.P9354026706314586093

namespace A109082

/-- `A072828(n+1)%A358552(n+1)` -/
def P9354026706314586093.Spec : Prop :=
  ∀ n, P9354026706314586093.a n = A109082 (n + 1)

end A109082

/-!
# A109083: Convolution of A002324 and A010815.

The programs for A109083, the canonical program `A109083.P1945678919087495791` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109083 has offset 1).

The definition of A109083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109083.P5329153541834087729

`round(A116916(n+1)/6)`
-/

namespace A109083.P5329153541834087729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A116916 (n + 1) : ℚ) / 6)

end

end A109083.P5329153541834087729

namespace A109083

/-- `round(A116916(n+1)/6)` -/
def P5329153541834087729.Spec : Prop :=
  ∀ n, P5329153541834087729.a n = A109083 (n + 1)

end A109083

/-! ## A109083.P1945678919087495791

`round(A010816(3*(n+1))/6)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A109083

/-- `round(A010816(3*(n+1))/6)` -/
def P1945678919087495791.Spec : Prop :=
  ∀ n, P1945678919087495791.a n = A109083 (n + 1)

theorem P1945678919087495791.correct : P1945678919087495791.Spec := by
  intro n
  simp only [A109083, Nat.add_sub_cancel]

end A109083

/-! ## A109083.P6060169344174893974

`∑[∑[A010815(n)]]*A203568(n+1)`
-/

namespace A109083.P6060169344174893974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A203568 (n + 1)

end

end A109083.P6060169344174893974

namespace A109083

/-- `∑[∑[A010815(n)]]*A203568(n+1)` -/
def P6060169344174893974.Spec : Prop :=
  ∀ n, P6060169344174893974.a n = A109083 (n + 1)

end A109083

/-! ## A109083.P6823348626837629095

`Δ[A049310(A000124(A235963(n)))]`
-/

namespace A109083.P6823348626837629095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (A000124 (A235963 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109083.P6823348626837629095

namespace A109083

/-- `Δ[A049310(A000124(A235963(n)))]` -/
def P6823348626837629095.Spec : Prop :=
  ∀ n, P6823348626837629095.a n = A109083 (n + 1)

end A109083

/-! ## A109083.P9293972829053186348

`Δ[A329116(A002620(A193832(n+1)))]`
-/

namespace A109083.P9293972829053186348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329116 (A002620 (A193832 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A109083.P9293972829053186348

namespace A109083

/-- `Δ[A329116(A002620(A193832(n+1)))]` -/
def P9293972829053186348.Spec : Prop :=
  ∀ n, P9293972829053186348.a n = A109083 (n + 1)

end A109083

/-!
# A109085: G.f. A(x) satisfies A(x) = P(x*A(x)) where P(x) = A(x/P(x)) is the g.f. of the partition numbers A000041.

The programs for A109085, there is no canonical definition to state claims against.
-/

/-! ## A109085.P2660446883947471536

`A392804(n)/(n+1)`
-/

namespace A109085.P2660446883947471536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392804 n : ℚ) / (n + 1 : ℚ)

end

end A109085.P2660446883947471536

/-! ## A109085.P7736989062806616815

`A144064(A056220(n+1))/(n+1)`
-/

namespace A109085.P7736989062806616815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 (A056220 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A109085.P7736989062806616815

/-! ## A109085.P12080421499762075417

`A144064(A005563(n)+(n+1)²)/(n+1)`
-/

namespace A109085.P12080421499762075417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144064 (A005563 n + ((n + 1) ^ 2 : ℤ)).toNat : ℚ) / (n + 1 : ℚ)

end

end A109085.P12080421499762075417

/-!
# A109086: Recursively defined polynomials, read by row.

The programs for A109086, there is no canonical definition to state claims against.
-/

/-! ## A109086.P9778658247221327569

`A117479(n)^A117479(floor(n²/2))`
-/

namespace A109086.P9778658247221327569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117479 n : ℚ) ^ (A117479 ⌊(n ^ 2 : ℚ) / 2⌋.toNat : ℤ)

end

end A109086.P9778658247221327569

/-! ## A109086.P14949344508055449647

`A117479(n)^A386585(record[and(2*n, -n)])`
-/

namespace A109086.P14949344508055449647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117479 n : ℚ) ^ (A386585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℤ)

end

end A109086.P14949344508055449647

/-! ## A109086.P3184720630310965077

`A255318(A008000(n)+A000079(n))`
-/

namespace A109086.P3184720630310965077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255318 (A008000 n + A000079 n).toNat

end

end A109086.P3184720630310965077

/-! ## A109086.P17946740092928776241

`A000188(A090344(n))*A117479(n)`
-/

namespace A109086.P17946740092928776241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A090344 n).toNat * A117479 n

end

end A109086.P17946740092928776241

/-! ## A109086.P2088917323704909264

`A117479(n)^A000034(A005908(n))`
-/

namespace A109086.P2088917323704909264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117479 n : ℚ) ^ (A000034 (A005908 n).toNat : ℤ)

end

end A109086.P2088917323704909264

/-!
# A109091: Expansion of (1 - eta(q)^5 / eta(q^5)) / 5 in powers of q.

The programs for A109091, the canonical program `A109091.P7060246415763713748` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109091 has offset 1).

The definition of A109091 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284097, A284103, A284280, A284281, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A109091.P160910696026528407

`A284150(n+1)-A284152(n+1)`
-/

namespace A109091.P160910696026528407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (n + 1) - A284152 (n + 1)

end

end A109091.P160910696026528407

namespace A109091

/-- `A284150(n+1)-A284152(n+1)` -/
def P160910696026528407.Spec : Prop :=
  ∀ n, P160910696026528407.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P7060246415763713748

`A284097(n+1)+A284103(n+1)-A284280(n+1)-A284281(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A109091

/-- `A284097(n+1)+A284103(n+1)-A284280(n+1)-A284281(n+1)` -/
def P7060246415763713748.Spec : Prop :=
  ∀ n, P7060246415763713748.a n = A109091 (n + 1)

theorem P7060246415763713748.correct : P7060246415763713748.Spec := by
  intro n
  simp only [A109091, Nat.add_sub_cancel]

end A109091

/-! ## A109091.P13982420171541477050

`A033999(n)*A138507(n+1)`
-/

namespace A109091.P13982420171541477050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138507 (n + 1)

end

end A109091.P13982420171541477050

namespace A109091

/-- `A033999(n)*A138507(n+1)` -/
def P13982420171541477050.Spec : Prop :=
  ∀ n, P13982420171541477050.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P16683065395256505775

`2*A284150(n+1)-A116073(n+1)`
-/

namespace A109091.P16683065395256505775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284150 (n + 1) - A116073 (n + 1)

end

end A109091.P16683065395256505775

namespace A109091

/-- `2*A284150(n+1)-A116073(n+1)` -/
def P16683065395256505775.Spec : Prop :=
  ∀ n, P16683065395256505775.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P16169017384535452667

`A116073(n+1)-2*A284152(n+1)`
-/

namespace A109091.P16169017384535452667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116073 (n + 1) - 2 * A284152 (n + 1)

end

end A109091.P16169017384535452667

namespace A109091

/-- `A116073(n+1)-2*A284152(n+1)` -/
def P16169017384535452667.Spec : Prop :=
  ∀ n, P16169017384535452667.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P1699980715689410344

`A109064(n+1)/A109064(n)*a(n-1)` with `a(0)=1`
-/

namespace A109091.P1699980715689410344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A109064 (n + 1) : ℚ) / (A109064 n : ℚ) * a (n - 1)

end

end A109091.P1699980715689410344

namespace A109091

/-- `A109064(n+1)/A109064(n)*a(n-1)` -/
def P1699980715689410344.Spec : Prop :=
  ∀ n, P1699980715689410344.a n = (A109091 (n + 1) : ℚ)

end A109091

/-! ## A109091.P2631473694688755854

`∑{d}[n+1, A111580(#)*A209229((n+1)/#)]`
-/

namespace A109091.P2631473694688755854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A111580 d * A209229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109091.P2631473694688755854

namespace A109091

/-- `∑{d}[n+1, A111580(#)*A209229((n+1)/#)]` -/
def P2631473694688755854.Spec : Prop :=
  ∀ n, P2631473694688755854.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P5078535949620881863

`∑{d}[n+1, A036987(#-1)*A111580((n+1)/#)]`
-/

namespace A109091.P5078535949620881863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A111580 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109091.P5078535949620881863

namespace A109091

/-- `∑{d}[n+1, A036987(#-1)*A111580((n+1)/#)]` -/
def P5078535949620881863.Spec : Prop :=
  ∀ n, P5078535949620881863.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P5849783750865235502

`∑{d}[n+1, A099894(#-1)*A113260((n+1)/#)]`
-/

namespace A109091.P5849783750865235502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A113260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A109091.P5849783750865235502

namespace A109091

/-- `∑{d}[n+1, A099894(#-1)*A113260((n+1)/#)]` -/
def P5849783750865235502.Spec : Prop :=
  ∀ n, P5849783750865235502.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P15695430708196268433

`A138507(n+1)/A109064(n)*A138506(n)`
-/

namespace A109091.P15695430708196268433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138507 (n + 1) : ℚ) / (A109064 n : ℚ) * (A138506 n : ℚ)

end

end A109091.P15695430708196268433

namespace A109091

/-- `A138507(n+1)/A109064(n)*A138506(n)` -/
def P15695430708196268433.Spec : Prop :=
  ∀ n, P15695430708196268433.a n = (A109091 (n + 1) : ℚ)

end A109091

/-! ## A109091.P9600478293034384043

`A138558(n+1)/A138557(n+1)*A053723(n)`
-/

namespace A109091.P9600478293034384043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138558 (n + 1) : ℚ) / (A138557 (n + 1) : ℚ) * (A053723 n : ℚ)

end

end A109091.P9600478293034384043

namespace A109091

/-- `A138558(n+1)/A138557(n+1)*A053723(n)` -/
def P9600478293034384043.Spec : Prop :=
  ∀ n, P9600478293034384043.a n = (A109091 (n + 1) : ℚ)

end A109091

/-! ## A109091.P17856985825961039048

`A284097(n+1)+A284103(n+1)-A284152(n+1)`
-/

namespace A109091.P17856985825961039048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284097 (n + 1) + (A284103 (n + 1) - A284152 (n + 1))

end

end A109091.P17856985825961039048

namespace A109091

/-- `A284097(n+1)+A284103(n+1)-A284152(n+1)` -/
def P17856985825961039048.Spec : Prop :=
  ∀ n, P17856985825961039048.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P17377542980843627657

`A284150(n+1)-(A284281(n+1)+A284280(n+1))`
-/

namespace A109091.P17377542980843627657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284150 (n + 1) - (A284281 (n + 1) + A284280 (n + 1))

end

end A109091.P17377542980843627657

namespace A109091

/-- `A284150(n+1)-(A284281(n+1)+A284280(n+1))` -/
def P17377542980843627657.Spec : Prop :=
  ∀ n, P17377542980843627657.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P18195362815206471673

`A111580(n+1)*A138512(n+1)/A138557(n+1)`
-/

namespace A109091.P18195362815206471673
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111580 (n + 1) * A138512 (n + 1) : ℚ) / (A138557 (n + 1) : ℚ)

end

end A109091.P18195362815206471673

namespace A109091

/-- `A111580(n+1)*A138512(n+1)/A138557(n+1)` -/
def P18195362815206471673.Spec : Prop :=
  ∀ n, P18195362815206471673.a n = (A109091 (n + 1) : ℚ)

end A109091

/-! ## A109091.P3293727076367236819

`A138512(n+1)/A129303(n+1)*A138558(n+1)`
-/

namespace A109091.P3293727076367236819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138512 (n + 1) : ℚ) / (A129303 (n + 1) : ℚ) * (A138558 (n + 1) : ℚ)

end

end A109091.P3293727076367236819

namespace A109091

/-- `A138512(n+1)/A129303(n+1)*A138558(n+1)` -/
def P3293727076367236819.Spec : Prop :=
  ∀ n, P3293727076367236819.a n = (A109091 (n + 1) : ℚ)

end A109091

/-! ## A109091.P14112943707565921942

`∑{d}[n+1, #*A080891(#)]`
-/

namespace A109091.P14112943707565921942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A080891 d

end

end A109091.P14112943707565921942

namespace A109091

/-- `∑{d}[n+1, #*A080891(#)]` -/
def P14112943707565921942.Spec : Prop :=
  ∀ n, P14112943707565921942.a n = A109091 (n + 1)

end A109091

/-! ## A109091.P9691899566250112354

`A138507(2*n+1)/A109064(2*n+1)*A109064(n+1)`
-/

namespace A109091.P9691899566250112354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138507 (2 * n + 1) : ℚ) / (A109064 (2 * n + 1) : ℚ) * (A109064 (n + 1) : ℚ)

end

end A109091.P9691899566250112354

namespace A109091

/-- `A138507(2*n+1)/A109064(2*n+1)*A109064(n+1)` -/
def P9691899566250112354.Spec : Prop :=
  ∀ n, P9691899566250112354.a n = (A109091 (n + 1) : ℚ)

end A109091

/-! ## A109091.P8157587999768422683

`A138507(n+1)/A004413(n)*A319554(n)`
-/

namespace A109091.P8157587999768422683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138507 (n + 1) : ℚ) / (A004413 n : ℚ) * (A319554 n : ℚ)

end

end A109091.P8157587999768422683

namespace A109091

/-- `A138507(n+1)/A004413(n)*A319554(n)` -/
def P8157587999768422683.Spec : Prop :=
  ∀ n, P8157587999768422683.a n = (A109091 (n + 1) : ℚ)

end A109091

/-!
# A109092: Number of hierarchical orderings for n labeled elements with 2 possible classes A and B for levels l>=2. Labeled analog of A104460.

The programs for A109092, there is no canonical definition to state claims against.
-/

/-! ## A109092.P12591139046247609390

`A321000(∑[n+3]+1)`
-/

namespace A109092.P12591139046247609390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321000 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A109092.P12591139046247609390

/-! ## A109092.P12037009048886410510

`record[A321000(A131819(n+1))]`
-/

namespace A109092.P12037009048886410510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321000 (A131819 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109092.P12037009048886410510

/-! ## A109092.P11889331381898611321

`record[A321000(A198464(n+1))]`
-/

namespace A109092.P11889331381898611321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321000 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109092.P11889331381898611321

/-! ## A109092.P1738798137169297638

`record[A321000(eq[2, A325200(n)])]`
-/

namespace A109092.P1738798137169297638
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325200 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321000 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109092.P1738798137169297638

/-!
# A109094: Length of the longest path (repeated edges not allowed) between two arbitrary, distinct nodes in K_n, the complete graph on n vertices.

The programs for A109094, the canonical program `A109094.P18081796367498479497` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A109094 has offset 1).

The definition of A109094 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A109094.P18081796367498479497

`∑[n]-ceil(a(n-1)%n/2)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A109094

/-- `∑[n]-ceil(a(n-1)%n/2)` -/
def P18081796367498479497.Spec : Prop :=
  ∀ n, P18081796367498479497.a n = A109094 (n + 1)

theorem P18081796367498479497.correct : P18081796367498479497.Spec := by
  intro n
  simp only [A109094, Nat.add_sub_cancel]

end A109094

/-! ## A109094.P7125655880482301736

`∑[n]-floor(n/2)^∏{p}[n, #%2]`
-/

namespace A109094.P7125655880482301736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊(n : ℚ) / 2⌋ ^ (∏ p ∈ Nat.primeFactors (f2 n), p % 2)

end

end A109094.P7125655880482301736

namespace A109094

/-- `∑[n]-floor(n/2)^∏{p}[n, #%2]` -/
def P7125655880482301736.Spec : Prop :=
  ∀ n, P7125655880482301736.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P12940802364578253207

`floor(∑[n]-floor(a(n-1))%n/2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A109094.P12940802364578253207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (Int.tmod (a (n - 1)) (n : ℤ) : ℚ) / 2⌋

end

end A109094.P12940802364578253207

namespace A109094

/-- `floor(∑[n]-floor(a(n-1))%n/2)` -/
def P12940802364578253207.Spec : Prop :=
  ∀ n, P12940802364578253207.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P14189442460597273213

`(a(n-2)%(1-n)+n²)/2` with `a(0)=0, a(1)=1`
-/

namespace A109094.P14189442460597273213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) (1 - (n : ℤ)) + (n ^ 2 : ℤ) : ℚ) / 2

end

end A109094.P14189442460597273213

namespace A109094

/-- `(a(n-2)%(1-n)+n²)/2` -/
def P14189442460597273213.Spec : Prop :=
  ∀ n, P14189442460597273213.a n = (A109094 (n + 1) : ℚ)

end A109094

/-! ## A109094.P14936695520226596486

`floor(n*(n-1/2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A109094.P14936695520226596486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ⌊(n : ℚ) * ((n : ℚ) - (1 : ℚ) / 2) - (a (n - 1) : ℚ)⌋

end

end A109094.P14936695520226596486

namespace A109094

/-- `floor(n*(n-1/2)-a(n-1))` -/
def P14936695520226596486.Spec : Prop :=
  ∀ n, P14936695520226596486.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P14231911139645142773

`∑[floor(3/a(n-1))]+a(n-2)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A109094.P14231911139645142773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  ⌊3 / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A109094.P14231911139645142773

namespace A109094

/-- `∑[floor(3/a(n-1))]+a(n-2)` -/
def P14231911139645142773.Spec : Prop :=
  ∀ n, P14231911139645142773.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P3612305315364063946

`∑[a(n-2)+4]-(a(n-1)+n)` with `a(0)=0, a(1)=1`
-/

namespace A109094.P3612305315364063946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) + 4

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (a (n - 1) + (n : ℤ))

end

end A109094.P3612305315364063946

namespace A109094

/-- `∑[a(n-2)+4]-(a(n-1)+n)` -/
def P3612305315364063946.Spec : Prop :=
  ∀ n, P3612305315364063946.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P3464517169679779185

`n²-a(n-1)-∑[a(n-2)²]` with `a(0)=0, a(1)=1`
-/

namespace A109094.P3464517169679779185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (n ^ 2 : ℤ) - a (n - 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A109094.P3464517169679779185

namespace A109094

/-- `n²-a(n-1)-∑[a(n-2)²]` -/
def P3464517169679779185.Spec : Prop :=
  ∀ n, P3464517169679779185.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P17872288521011677394

`2*n+a(n-2)-gcd(2, n+1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A109094.P17872288521011677394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (2 * n : ℤ) + (a (n - 2) - (Nat.gcd 2 (n + 1) : ℤ))

end

end A109094.P17872288521011677394

namespace A109094

/-- `2*n+a(n-2)-gcd(2, n+1)` -/
def P17872288521011677394.Spec : Prop :=
  ∀ n, P17872288521011677394.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P15177541673381747238

`∑[n]-A057979(A028310(n))`
-/

namespace A109094.P15177541673381747238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057979 (A028310 n).toNat

end

end A109094.P15177541673381747238

namespace A109094

/-- `∑[n]-A057979(A028310(n))` -/
def P15177541673381747238.Spec : Prop :=
  ∀ n, P15177541673381747238.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P13040183042468122232

`A080476(n+1)-A029579(n)`
-/

namespace A109094.P13040183042468122232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080476 (n + 1) - A029579 n

end

end A109094.P13040183042468122232

namespace A109094

/-- `A080476(n+1)-A029579(n)` -/
def P13040183042468122232.Spec : Prop :=
  ∀ n, P13040183042468122232.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P16845676463033716209

`A179865(n+1)-A057979(n)`
-/

namespace A109094.P16845676463033716209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (n + 1) - A057979 n

end

end A109094.P16845676463033716209

namespace A109094

/-- `A179865(n+1)-A057979(n)` -/
def P16845676463033716209.Spec : Prop :=
  ∀ n, P16845676463033716209.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P2210571727309355793

`A266287(n)-A063196(n+1)`
-/

namespace A109094.P2210571727309355793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266287 n - A063196 (n + 1)

end

end A109094.P2210571727309355793

namespace A109094

/-- `A266287(n)-A063196(n+1)` -/
def P2210571727309355793.Spec : Prop :=
  ∀ n, P2210571727309355793.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P2543543948074366488

`A266665(n)-A065423(n+1)`
-/

namespace A109094.P2543543948074366488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266665 n - A065423 (n + 1)

end

end A109094.P2543543948074366488

namespace A109094

/-- `A266665(n)-A065423(n+1)` -/
def P2543543948074366488.Spec : Prop :=
  ∀ n, P2543543948074366488.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P13442622746243888382

`A062157(n)+∑[n-A001057(n)]`
-/

namespace A109094.P13442622746243888382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A109094.P13442622746243888382

namespace A109094

/-- `A062157(n)+∑[n-A001057(n)]` -/
def P13442622746243888382.Spec : Prop :=
  ∀ n, P13442622746243888382.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P2144990677391630592

`∑[n]-A057427(n)*A057979(n)`
-/

namespace A109094.P2144990677391630592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A057427 n * A057979 n

end

end A109094.P2144990677391630592

namespace A109094

/-- `∑[n]-A057427(n)*A057979(n)` -/
def P2144990677391630592.Spec : Prop :=
  ∀ n, P2144990677391630592.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P14801933579835783443

`(n+1)*A028242(or(1, n))+A004277(n)%4-1`
-/

namespace A109094.P14801933579835783443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A028242 (Nat.lor 1 n) + (Int.tmod (A004277 n) 4 - 1)

end

end A109094.P14801933579835783443

namespace A109094

/-- `(n+1)*A028242(or(1, n))+A004277(n)%4-1` -/
def P14801933579835783443.Spec : Prop :=
  ∀ n, P14801933579835783443.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P6868576234200971961

`A000096(n+1)-A008579(n+1)/2`
-/

namespace A109094.P6868576234200971961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 (n + 1) : ℚ) - (A008579 (n + 1) : ℚ) / 2

end

end A109094.P6868576234200971961

namespace A109094

/-- `A000096(n+1)-A008579(n+1)/2` -/
def P6868576234200971961.Spec : Prop :=
  ∀ n, P6868576234200971961.a n = (A109094 (n + 1) : ℚ)

end A109094

/-! ## A109094.P3674864218277405362

`A004526(A014681(n))+n*A004526(n)`
-/

namespace A109094.P3674864218277405362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A014681 n).toNat + (n : ℤ) * A004526 n

end

end A109094.P3674864218277405362

namespace A109094

/-- `A004526(A014681(n))+n*A004526(n)` -/
def P3674864218277405362.Spec : Prop :=
  ∀ n, P3674864218277405362.a n = A109094 (n + 1)

end A109094

/-! ## A109094.P6362014351022160791

`A055802(n+2)+A000217(n)-A055802(n+3)`
-/

namespace A109094.P6362014351022160791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (n + 2) + (A000217 n - A055802 (n + 3))

end

end A109094.P6362014351022160791

namespace A109094

/-- `A055802(n+2)+A000217(n)-A055802(n+3)` -/
def P6362014351022160791.Spec : Prop :=
  ∀ n, P6362014351022160791.a n = A109094 (n + 1)

end A109094

/-!
# A109095: Numbers N such that N! is the product of exactly two smaller factorials (larger than 1).

The programs for A109095, there is no canonical definition to state claims against.
-/

/-! ## A109095.P6570107833852444567

`xor(2, (n+2)!+2)`
-/

namespace A109095.P6570107833852444567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.factorial (n + 2) + 2)

end

end A109095.P6570107833852444567

/-! ## A109095.P7268507545823433938

`xor(2, ∏[n+2]+2)`
-/

namespace A109095.P7268507545823433938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∏ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A109095.P7268507545823433938

/-! ## A109095.P16264124363996055673

`record[n*a(n-1)]` with `a(0)=6, a(1)=10, a(2)=2`
-/

namespace A109095.P16264124363996055673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 10, 2] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109095.P16264124363996055673

/-! ## A109095.P2329753208448897584

`C(4, 3^n)+(n+2)!`
-/

namespace A109095.P2329753208448897584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 4 (3 ^ n) + Nat.factorial (n + 2)

end

end A109095.P2329753208448897584

/-! ## A109095.P13858858056078457972

`∏[n+2]+C(4, 3^n)`
-/

namespace A109095.P13858858056078457972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + Nat.choose 4 (3 ^ n)

end

end A109095.P13858858056078457972

/-!
# A109096: Numbers k such that k! is the product of exactly three smaller factorials.

The programs for A109096, there is no canonical definition to state claims against.
-/

/-! ## A109096.P4309173763628189348

`record[root(A328166(n+5), A113370(n))]`
-/

namespace A109096.P4309173763628189348
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A328166 (n + 5) : ℝ) ^ (1 / (A113370 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109096.P4309173763628189348

/-! ## A109096.P4530746875820863245

`record[A080917(A112798(n+6)+A014260(n))]`
-/

namespace A109096.P4530746875820863245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080917 (A112798 (n + 6) + A014260 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109096.P4530746875820863245

/-! ## A109096.P1613798076064827257

`A263098(A104534(n+1)-A082858(3*n+2))`
-/

namespace A109096.P1613798076064827257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263098 (A104534 (n + 1) - A082858 (3 * n + 2)).toNat

end

end A109096.P1613798076064827257

/-!
# A109097: Numbers k such that k! is the product of exactly four smaller factorials.

The programs for A109097, there is no canonical definition to state claims against.
-/

/-! ## A109097.P15587570469713173181

`A000120(A004981(n))*A033950(n+3)`
-/

namespace A109097.P15587570469713173181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A004981 n).toNat * A033950 (n + 3)

end

end A109097.P15587570469713173181

/-! ## A109097.P5230610740031068440

`A000120(A328857(n+1))*A033950(n+3)`
-/

namespace A109097.P5230610740031068440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A328857 (n + 1)).toNat * A033950 (n + 3)

end

end A109097.P5230610740031068440

/-!
# A109098: Numbers k such that k! is the product of exactly 5 smaller factorials (greater than 1).

The programs for A109098, there is no canonical definition to state claims against.
-/

/-! ## A109098.P9724472921896186733

`2*∩[A001013(n+1), A109097(n+1)]`
-/

namespace A109098.P9724472921896186733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A109098.P9724472921896186733

/-! ## A109098.P9239265720493379948

`record[A000005(A197863(3*n+1))/(1/4)²]`
-/

namespace A109098.P9239265720493379948
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A197863 (3 * n + 1)).toNat : ℚ) / ((1 : ℚ) / 4) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109098.P9239265720493379948

/-!
# A109099: Numbers k such that k! can be expressed as the product of smaller factorials > 2.

The programs for A109099, there is no canonical definition to state claims against.
-/

/-! ## A109099.P14465836482807932482

`A367463(A315977(n+1))`
-/

namespace A109099.P14465836482807932482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367463 (A315977 (n + 1)).toNat

end

end A109099.P14465836482807932482

/-! ## A109099.P9255737778505942098

`record[Δ[A029681(A064084(n+1))]]`
-/

namespace A109099.P9255737778505942098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029681 (A064084 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A109099.P9255737778505942098

