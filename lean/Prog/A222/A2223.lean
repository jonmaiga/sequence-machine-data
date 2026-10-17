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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A222300: Length of the closed curve through Gaussian primes described in A222298.

The programs for A222300, there is no canonical definition to state claims against.
-/

/-! ## A222300.P12718605863857235059

`A222596(A222629(n+3)+A041090(n))`
-/

namespace A222300.P12718605863857235059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222596 (A222629 (n + 3) + A041090 n).toNat

end

end A222300.P12718605863857235059

/-!
# A222301: Number of points in n-th shell of mcc lattice.

The programs for A222301, there is no canonical definition to state claims against.
-/

/-! ## A222301.P9582345311092507162

`A299150(A010686(n)+A000032(2*n+1))`
-/

namespace A222301.P9582345311092507162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299150 (A010686 n + A000032 (2 * n + 1)).toNat

end

end A222301.P9582345311092507162

/-!
# A222302: Value of s corresponding to norm of n-th shell of points in mcc lattice.

The programs for A222302, there is no canonical definition to state claims against.
-/

/-! ## A222302.P17081418229872524888

`(A223472(n+1)%A143825(n+1))²`
-/

namespace A222302.P17081418229872524888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223472 (n + 1)) (A143825 (n + 1)) ^ 2

end

end A222302.P17081418229872524888

/-! ## A222302.P3440047865019331399

`and(A004760(n+1), A246544(A345254(n+1)))`
-/

namespace A222302.P3440047865019331399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004760 (n + 1)) (A246544 (A345254 (n + 1)).toNat)

end

end A222302.P3440047865019331399

/-! ## A222302.P8178483854537720469

`(A033676(n+1)*A057078(A257200(n+1)))²`
-/

namespace A222302.P8178483854537720469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033676 (n + 1) * A057078 (A257200 (n + 1)).toNat) ^ 2

end

end A222302.P8178483854537720469

/-!
# A222304: Numbers k such that 2k is in A045980.

The programs for A222304, there is no canonical definition to state claims against.
-/

/-! ## A222304.P5218208949117011449

`∪[A135783(n+1), A000578(n)]`
-/

namespace A222304.P5218208949117011449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A222304.P5218208949117011449

/-! ## A222304.P14672276999967184549

`record[A273943(A045980(n+1))]`
-/

namespace A222304.P14672276999967184549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A045980 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P14672276999967184549

/-! ## A222304.P4339560325274960193

`record[A273943(∪[A020894(n+1), n*n²])]`
-/

namespace A222304.P4339560325274960193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P4339560325274960193

/-! ## A222304.P1866630963519574771

`record[A025480(A045980(n+2))]`
-/

namespace A222304.P1866630963519574771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A045980 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P1866630963519574771

/-! ## A222304.P13881960550408190403

`record[A279119(A045980(n+1)+2)]`
-/

namespace A222304.P13881960550408190403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A045980 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P13881960550408190403

/-! ## A222304.P10924310403495909857

`record[A078898(A045980(floor(n/4)+1))]`
-/

namespace A222304.P10924310403495909857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A045980 (⌊(n : ℚ) / 4⌋ + 1).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P10924310403495909857

/-! ## A222304.P5104963305263888214

`record[A025480(∪[A020894(n+1), n*n²])]`
-/

namespace A222304.P5104963305263888214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P5104963305263888214

/-! ## A222304.P12188498032887698105

`record[A142150(∪[A020894(n+1), n*n²])]`
-/

namespace A222304.P12188498032887698105
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n ^ 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P12188498032887698105

/-! ## A222304.P13734704222420684025

`record[A078898(A045980(n+1))%A000124(n)]`
-/

namespace A222304.P13734704222420684025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078898 (A045980 (n + 1)).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P13734704222420684025

/-! ## A222304.P2060564706360478467

`record[A078898(A045980(n+1)%A001844(n))]`
-/

namespace A222304.P2060564706360478467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (Int.tmod (A045980 (n + 1)) (A001844 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P2060564706360478467

/-! ## A222304.P12437180960596861735

`record[A078898(A045980(n+1))]%A058331(n)`
-/

namespace A222304.P12437180960596861735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A045980 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A058331 n)

end

end A222304.P12437180960596861735

/-! ## A222304.P11487823208037687241

`record[A038608(A045980(n+1))/A036453(n+1)]`
-/

namespace A222304.P11487823208037687241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038608 (A045980 (n + 1)).toNat : ℚ) / (A036453 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222304.P11487823208037687241

/-! ## A222304.P17619048771054706897

`record[A038608(A045980(n+1))]/A020639(2*(n+1))`
-/

namespace A222304.P17619048771054706897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A045980 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A222304.P17619048771054706897

/-!
# A222306: Numbers k such that 4k is in A045980.

The programs for A222306, there is no canonical definition to state claims against.
-/

/-! ## A222306.P10446336301429521219

`record[A025480(A222304(n+1))]`
-/

namespace A222306.P10446336301429521219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A222304 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222306.P10446336301429521219

/-! ## A222306.P6887939153152611675

`record[A279119(A222304(n+1)+2)]`
-/

namespace A222306.P6887939153152611675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279119 (A222304 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222306.P6887939153152611675

/-! ## A222306.P138335700015442653

`record[A142150(A222304(A008620(n)))]`
-/

namespace A222306.P138335700015442653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A222304 (A008620 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222306.P138335700015442653

/-! ## A222306.P7311990229962051451

`record[A142150(A222304(A052938(n)))]`
-/

namespace A222306.P7311990229962051451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A222304 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222306.P7311990229962051451

/-! ## A222306.P8190506181462807479

`record[A142150(A222304(A003963(n+1)))]`
-/

namespace A222306.P8190506181462807479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A222304 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222306.P8190506181462807479

/-! ## A222306.P9985753690623169088

`A006370(record[A153733(A222304(n+1))])`
-/

namespace A222306.P9985753690623169088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A222304 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A222306.P9985753690623169088

/-!
# A222308: Let P be a one-move "rider" with move set M={(1,2)}; a(n) is the number of non-attacking positions of two indistinguishable pieces P on an n X n board.

The programs for A222308, the canonical program `A222308.P9372387281242253620` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222308 has offset 1).

The definition of A222308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222308.P9372387281242253620

`∑[A048395(n)+A001318(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A222308

/-- `∑[A048395(n)+A001318(n)]` -/
def P9372387281242253620.Spec : Prop :=
  ∀ n, P9372387281242253620.a n = A222308 (n + 1)

theorem P9372387281242253620.correct : P9372387281242253620.Spec := by
  intro n
  simp only [A222308, Nat.add_sub_cancel]

end A222308

/-! ## A222308.P12245397087188877565

`A109900(n)+∑[A048395(n)]`
-/

namespace A222308.P12245397087188877565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109900 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222308.P12245397087188877565

namespace A222308

/-- `A109900(n)+∑[A048395(n)]` -/
def P12245397087188877565.Spec : Prop :=
  ∀ n, P12245397087188877565.a n = A222308 (n + 1)

end A222308

/-! ## A222308.P9332184204346470175

`A342397(n)+A092364(n+1)`
-/

namespace A222308.P9332184204346470175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342397 n + A092364 (n + 1)

end

end A222308.P9332184204346470175

namespace A222308

/-- `A342397(n)+A092364(n+1)` -/
def P9332184204346470175.Spec : Prop :=
  ∀ n, P9332184204346470175.a n = A222308 (n + 1)

end A222308

/-! ## A222308.P646121954843550252

`∑[A048395(n)+∑[A026741(n)]]`
-/

namespace A222308.P646121954843550252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222308.P646121954843550252

namespace A222308

/-- `∑[A048395(n)+∑[A026741(n)]]` -/
def P646121954843550252.Spec : Prop :=
  ∀ n, P646121954843550252.a n = A222308 (n + 1)

end A222308

/-! ## A222308.P7564093429103571644

`∑[A048395(n)+Δ[A034828(n)]]`
-/

namespace A222308.P7564093429103571644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222308.P7564093429103571644

namespace A222308

/-- `∑[A048395(n)+Δ[A034828(n)]]` -/
def P7564093429103571644.Spec : Prop :=
  ∀ n, P7564093429103571644.a n = A222308 (n + 1)

end A222308

/-! ## A222308.P12164677683329169091

`∑[A001318(n)+Δ[A212523(n)]]`
-/

namespace A222308.P12164677683329169091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222308.P12164677683329169091

namespace A222308

/-- `∑[A001318(n)+Δ[A212523(n)]]` -/
def P12164677683329169091.Spec : Prop :=
  ∀ n, P12164677683329169091.a n = A222308 (n + 1)

end A222308

/-! ## A222308.P4527762011179601370

`A034828(n+1)+∑[A048395(n)]`
-/

namespace A222308.P4527762011179601370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034828 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222308.P4527762011179601370

namespace A222308

/-- `A034828(n+1)+∑[A048395(n)]` -/
def P4527762011179601370.Spec : Prop :=
  ∀ n, P4527762011179601370.a n = A222308 (n + 1)

end A222308

/-! ## A222308.P4961189649552512408

`A212523(n+1)+∑[A001318(n)]`
-/

namespace A222308.P4961189649552512408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212523 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222308.P4961189649552512408

namespace A222308

/-- `A212523(n+1)+∑[A001318(n)]` -/
def P4961189649552512408.Spec : Prop :=
  ∀ n, P4961189649552512408.a n = A222308 (n + 1)

end A222308

/-! ## A222308.P7176045125789286924

`A000537(n+1)+A000537(n)-A088003(n+1)`
-/

namespace A222308.P7176045125789286924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (n + 1) + (A000537 n - A088003 (n + 1))

end

end A222308.P7176045125789286924

namespace A222308

/-- `A000537(n+1)+A000537(n)-A088003(n+1)` -/
def P7176045125789286924.Spec : Prop :=
  ∀ n, P7176045125789286924.a n = A222308 (n + 1)

end A222308

/-! ## A222308.P2046221874469322482

`A000217((n+1)²)-A088003(n+1)`
-/

namespace A222308.P2046221874469322482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((n + 1) ^ 2) - A088003 (n + 1)

end

end A222308.P2046221874469322482

namespace A222308

/-- `A000217((n+1)²)-A088003(n+1)` -/
def P2046221874469322482.Spec : Prop :=
  ∀ n, P2046221874469322482.a n = A222308 (n + 1)

end A222308

/-!
# A222311: Leading diagonal of triangle in A222310.

The programs for A222311, there is no canonical definition to state claims against.
-/

/-! ## A222311.P5547245918224128148

`A222310(∑[n]+1)`
-/

namespace A222311.P5547245918224128148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222310 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222311.P5547245918224128148

/-! ## A222311.P6987842036555759094

`gcd(A000038(n), A222310(A000124(n)))`
-/

namespace A222311.P6987842036555759094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222310 (A000124 n).toNat)

end

end A222311.P6987842036555759094

/-! ## A222311.P9724504254010464677

`lcm(A020985(n), A222310(A000124(n)))`
-/

namespace A222311.P9724504254010464677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A222310 (A000124 n).toNat)

end

end A222311.P9724504254010464677

/-! ## A222311.P4565615329110411355

`or(A000007(n), A222310(A000124(n)))`
-/

namespace A222311.P4565615329110411355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222310 (A000124 n).toNat)

end

end A222311.P4565615329110411355

/-! ## A222311.P1117372002459614135

`A222310(A000124(n))^-A057428(n)`
-/

namespace A222311.P1117372002459614135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222310 (A000124 n).toNat : ℚ) ^ (-A057428 n : ℤ)

end

end A222311.P1117372002459614135

/-! ## A222311.P7596257358581501666

`A222310(A000124(n))%Δ[A140290(n)]`
-/

namespace A222311.P7596257358581501666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222310 (A000124 n).toNat) (f1 (n + 1) - f1 n)

end

end A222311.P7596257358581501666

/-! ## A222311.P16428164226636000417

`A222310(A000124(n))+A000007(n+1)`
-/

namespace A222311.P16428164226636000417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222310 (A000124 n).toNat + A000007 (n + 1)

end

end A222311.P16428164226636000417

/-! ## A222311.P6565293387258618057

`A222310(A000124(n))+A000038(n+1)`
-/

namespace A222311.P6565293387258618057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222310 (A000124 n).toNat + A000038 (n + 1)

end

end A222311.P6565293387258618057

/-! ## A222311.P3590048955050260763

`A000034(2*n)*A222310(A000124(n))`
-/

namespace A222311.P3590048955050260763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A222310 (A000124 n).toNat

end

end A222311.P3590048955050260763

/-! ## A222311.P17287797826531831984

`or(A010051(2*(n+1)), A222310(A000124(n)))`
-/

namespace A222311.P17287797826531831984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010051 (2 * (n + 1))) (A222310 (A000124 n).toNat)

end

end A222311.P17287797826531831984

/-! ## A222311.P5228827295458829587

`A001222(A151800(n+2))*A222310(A000124(n))`
-/

namespace A222311.P5228827295458829587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A151800 (n + 2)).toNat * A222310 (A000124 n).toNat

end

end A222311.P5228827295458829587

/-! ## A222311.P12296992127782976656

`A222310(A000124(n))%A199685(n)`
-/

namespace A222311.P12296992127782976656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222310 (A000124 n).toNat) (A199685 n)

end

end A222311.P12296992127782976656

/-!
# A222312: a(n) = n + A001222(n) - 1.

The programs for A222312, the canonical program `A222312.P5225546657519994950` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222312 has offset 1).

The definition of A222312 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A222312.P5225546657519994950

`n+A001222(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A222312

/-- `n+A001222(n+1)` -/
def P5225546657519994950.Spec : Prop :=
  ∀ n, P5225546657519994950.a n = A222312 (n + 1)

theorem P5225546657519994950.correct : P5225546657519994950.Spec := by
  intro n
  simp only [A222312, Nat.add_sub_cancel]

end A222312

/-! ## A222312.P14316533144271009797

`∑{e}[n+1, #]+n`
-/

namespace A222312.P14316533144271009797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + n

end

end A222312.P14316533144271009797

namespace A222312

/-- `∑{e}[n+1, #]+n` -/
def P14316533144271009797.Spec : Prop :=
  ∀ n, (P14316533144271009797.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P6333016979404375474

`log2(∏{e}[n+1, 2^#])+n`
-/

namespace A222312.P6333016979404375474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ) + (n : ℝ)

end

end A222312.P6333016979404375474

namespace A222312

/-- `log2(∏{e}[n+1, 2^#])+n` -/
def P6333016979404375474.Spec : Prop :=
  ∀ n, P6333016979404375474.a n = (A222312 (n + 1) : ℝ)

end A222312

/-! ## A222312.P8065017183733145601

`∑{p}[n+1, val(n+1, #)]+n`
-/

namespace A222312.P8065017183733145601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p + n

end

end A222312.P8065017183733145601

namespace A222312

/-- `∑{p}[n+1, val(n+1, #)]+n` -/
def P8065017183733145601.Spec : Prop :=
  ∀ n, (P8065017183733145601.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P2995097042038702054

`Δ[A022559(n)]+n`
-/

namespace A222312.P2995097042038702054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A222312.P2995097042038702054

namespace A222312

/-- `Δ[A022559(n)]+n` -/
def P2995097042038702054.Spec : Prop :=
  ∀ n, P2995097042038702054.a n = A222312 (n + 1)

end A222312

/-! ## A222312.P2531548315639123259

`A064800(n+1)-1`
-/

namespace A222312.P2531548315639123259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064800 (n + 1) - 1

end

end A222312.P2531548315639123259

namespace A222312

/-- `A064800(n+1)-1` -/
def P2531548315639123259.Spec : Prop :=
  ∀ n, P2531548315639123259.a n = A222312 (n + 1)

end A222312

/-! ## A222312.P10116375953590690683

`log2(A061142(n+1))+n`
-/

namespace A222312.P10116375953590690683
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A061142 (n + 1) : ℝ) + (n : ℝ)

end

end A222312.P10116375953590690683

namespace A222312

/-- `log2(A061142(n+1))+n` -/
def P10116375953590690683.Spec : Prop :=
  ∀ n, P10116375953590690683.a n = (A222312 (n + 1) : ℝ)

end A222312

/-! ## A222312.P6038178496721110353

`A073093(n+1)-1+n`
-/

namespace A222312.P6038178496721110353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073093 (n + 1) - 1 + (n : ℤ)

end

end A222312.P6038178496721110353

namespace A222312

/-- `A073093(n+1)-1+n` -/
def P6038178496721110353.Spec : Prop :=
  ∀ n, P6038178496721110353.a n = A222312 (n + 1)

end A222312

/-! ## A222312.P9430852485179969659

`2*n-A075795(n+1)`
-/

namespace A222312.P9430852485179969659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A075795 (n + 1)

end

end A222312.P9430852485179969659

namespace A222312

/-- `2*n-A075795(n+1)` -/
def P9430852485179969659.Spec : Prop :=
  ∀ n, P9430852485179969659.a n = A222312 (n + 1)

end A222312

/-! ## A222312.P8419973496270381369

`A255201(n+1)/2+n`
-/

namespace A222312.P8419973496270381369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255201 (n + 1) : ℚ) / 2 + (n : ℚ)

end

end A222312.P8419973496270381369

namespace A222312

/-- `A255201(n+1)/2+n` -/
def P8419973496270381369.Spec : Prop :=
  ∀ n, P8419973496270381369.a n = (A222312 (n + 1) : ℚ)

end A222312

/-! ## A222312.P3772823923888476734

`val(A124508(n+1), 2)+n`
-/

namespace A222312.P3772823923888476734
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A124508 (n + 1)).toNat 2 + n

end

end A222312.P3772823923888476734

namespace A222312

/-- `val(A124508(n+1), 2)+n` -/
def P3772823923888476734.Spec : Prop :=
  ∀ n, (P3772823923888476734.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P5501516164767476829

`val(A165827(n+1), 2)+n`
-/

namespace A222312.P5501516164767476829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165827 (n + 1)).toNat 2 + n

end

end A222312.P5501516164767476829

namespace A222312

/-- `val(A165827(n+1), 2)+n` -/
def P5501516164767476829.Spec : Prop :=
  ∀ n, (P5501516164767476829.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P11430810093089583128

`val(A165831(n+1), 2)+n`
-/

namespace A222312.P11430810093089583128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165831 (n + 1)).toNat 2 + n

end

end A222312.P11430810093089583128

namespace A222312

/-- `val(A165831(n+1), 2)+n` -/
def P11430810093089583128.Spec : Prop :=
  ∀ n, (P11430810093089583128.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P1273013211124620350

`val(A165835(n+1), 2)+n`
-/

namespace A222312.P1273013211124620350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165835 (n + 1)).toNat 2 + n

end

end A222312.P1273013211124620350

namespace A222312

/-- `val(A165835(n+1), 2)+n` -/
def P1273013211124620350.Spec : Prop :=
  ∀ n, (P1273013211124620350.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P7912713028096857235

`val(A165839(n+1), 2)+n`
-/

namespace A222312.P7912713028096857235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165839 (n + 1)).toNat 2 + n

end

end A222312.P7912713028096857235

namespace A222312

/-- `val(A165839(n+1), 2)+n` -/
def P7912713028096857235.Spec : Prop :=
  ∀ n, (P7912713028096857235.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P3531393619365748640

`val(A165843(n+1), 2)+n`
-/

namespace A222312.P3531393619365748640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165843 (n + 1)).toNat 2 + n

end

end A222312.P3531393619365748640

namespace A222312

/-- `val(A165843(n+1), 2)+n` -/
def P3531393619365748640.Spec : Prop :=
  ∀ n, (P3531393619365748640.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P12875877153859334184

`val(A165847(n+1), 2)+n`
-/

namespace A222312.P12875877153859334184
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165847 (n + 1)).toNat 2 + n

end

end A222312.P12875877153859334184

namespace A222312

/-- `val(A165847(n+1), 2)+n` -/
def P12875877153859334184.Spec : Prop :=
  ∀ n, (P12875877153859334184.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P3989978049160834404

`val(A165851(n+1), 2)+n`
-/

namespace A222312.P3989978049160834404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165851 (n + 1)).toNat 2 + n

end

end A222312.P3989978049160834404

namespace A222312

/-- `val(A165851(n+1), 2)+n` -/
def P3989978049160834404.Spec : Prop :=
  ∀ n, (P3989978049160834404.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P4262005763521200313

`val(A165855(n+1), 2)+n`
-/

namespace A222312.P4262005763521200313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165855 (n + 1)).toNat 2 + n

end

end A222312.P4262005763521200313

namespace A222312

/-- `val(A165855(n+1), 2)+n` -/
def P4262005763521200313.Spec : Prop :=
  ∀ n, (P4262005763521200313.a n : ℤ) = A222312 (n + 1)

end A222312

/-! ## A222312.P14320163249614150542

`val(A165859(n+1), 2)+n`
-/

namespace A222312.P14320163249614150542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A165859 (n + 1)).toNat 2 + n

end

end A222312.P14320163249614150542

namespace A222312

/-- `val(A165859(n+1), 2)+n` -/
def P14320163249614150542.Spec : Prop :=
  ∀ n, (P14320163249614150542.a n : ℤ) = A222312 (n + 1)

end A222312

/-!
# A222313: A222311 sorted and duplicates removed (conjectured).

The programs for A222313, there is no canonical definition to state claims against.
-/

/-! ## A222313.P13435615161732954821

`A238424(n)+A135660(A321540(n))`
-/

namespace A222313.P13435615161732954821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238424 n + A135660 (A321540 n).toNat

end

end A222313.P13435615161732954821

/-! ## A222313.P17310562941921377867

`∩[A002384(n+1), A330977(A002384(n+1))]`
-/

namespace A222313.P17310562941921377867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330977 (A002384 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222313.P17310562941921377867

/-! ## A222313.P1310087710388769458

`∩[A002384(n+1), A344742(A117142(n+1))]`
-/

namespace A222313.P1310087710388769458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (A117142 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A222313.P1310087710388769458

/-!
# A222314: Number of characters when n-th row of Pascal's triangle is written in base 10 (including the n spaces).

The programs for A222314, there is no canonical definition to state claims against.
-/

/-! ## A222314.P14532523383755588505

`A369152(n)+n`
-/

namespace A222314.P14532523383755588505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369152 n + (n : ℤ)

end

end A222314.P14532523383755588505

/-! ## A222314.P14938549351961141832

`lt[2, A095276(A117384(2*(n+2)))]`
-/

namespace A222314.P14938549351961141832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095276 (A117384 (2 * (n + 2))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A222314.P14938549351961141832

/-! ## A222314.P16536047351969310912

`A181834(A000045(n))+A010784(2*(n+1))`
-/

namespace A222314.P16536047351969310912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181834 (A000045 n).toNat + A010784 (2 * (n + 1))

end

end A222314.P16536047351969310912

/-! ## A222314.P9514157352234444783

`eq[A243348(A325277(2*(n+1))), A244226(n+2)]`
-/

namespace A222314.P9514157352234444783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243348 (A325277 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244226 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A222314.P9514157352234444783

/-!
# A222315: Second-from-right diagonal of A063851.

The programs for A222315, there is no canonical definition to state claims against.
-/

/-! ## A222315.P4996040337504735859

`A063851(∑[n+2]+2)`
-/

namespace A222315.P4996040337504735859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063851 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222315.P4996040337504735859

/-!
# A222318: Number of 4-dimensional simplicial convex polytopes with n nodes.

The programs for A222318, there is no canonical definition to state claims against.
-/

/-! ## A222318.P14818558984433725268

`ceil(∏[sqrt(A273046(2*n+3))])`
-/

namespace A222318.P14818558984433725268
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A273046 (2 * n + 3) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f1 j⌉

end

end A222318.P14818558984433725268

/-!
# A222319: Number of classes created in S_n by the {132, 231}{213, 312}-equivalence.

The programs for A222319, there is no canonical definition to state claims against.
-/

/-! ## A222319.P152026332767567655

`A058032(A149040(n+1))`
-/

namespace A222319.P152026332767567655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058032 (A149040 (n + 1)).toNat

end

end A222319.P152026332767567655

/-! ## A222319.P18334709242051956755

`A023190(A057766(n+1))`
-/

namespace A222319.P18334709242051956755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A057766 (n + 1)).toNat

end

end A222319.P18334709242051956755

/-! ## A222319.P12386815828038811594

`A023193(A188622(n)+1)`
-/

namespace A222319.P12386815828038811594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A188622 n + 1).toNat

end

end A222319.P12386815828038811594

/-!
# A222320: Number of open Skolem sequences of order n.

The programs for A222320, there is no canonical definition to state claims against.
-/

/-! ## A222320.P13658716361831958915

`A108071(n+2)-A321728(A000055(n))`
-/

namespace A222320.P13658716361831958915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108071 (n + 2) - A321728 (A000055 n).toNat

end

end A222320.P13658716361831958915

/-! ## A222320.P13230689420939151501

`A000006(A110149(n))`
-/

namespace A222320.P13230689420939151501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A110149 n).toNat

end

end A222320.P13230689420939151501

/-! ## A222320.P14699080390689896025

`A325363(A080889(n))`
-/

namespace A222320.P14699080390689896025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325363 (A080889 n).toNat

end

end A222320.P14699080390689896025

/-!
# A222321: Number of n X n 0..1 arrays with exactly floor(n X n/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222321, there is no canonical definition to state claims against.
-/

/-! ## A222321.P6105357135194741233

`A222328(∑[4*n]+1)`
-/

namespace A222321.P6105357135194741233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222321.P6105357135194741233

/-! ## A222321.P15630114678356112977

`and(-1, A222328(A001844(n)))`
-/

namespace A222321.P15630114678356112977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222328 (A001844 n).toNat)

end

end A222321.P15630114678356112977

/-! ## A222321.P9627147184725324609

`or(A058348(n), A222328(A001844(n)))`
-/

namespace A222321.P9627147184725324609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058348 n) (A222328 (A001844 n).toNat)

end

end A222321.P9627147184725324609

/-! ## A222321.P16533337412287131500

`A007318(∑[n])*A222328(A001844(n))`
-/

namespace A222321.P16533337412287131500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A222328 (A001844 n).toNat

end

end A222321.P16533337412287131500

/-! ## A222321.P6578201317292065364

`A244606(n+1)+A222328(A001844(n))`
-/

namespace A222321.P6578201317292065364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244606 (n + 1) + A222328 (A001844 n).toNat

end

end A222321.P6578201317292065364

/-!
# A222322: Number of nX2 0..1 arrays with exactly floor(nX2/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222322, there is no canonical definition to state claims against.
-/

/-! ## A222322.P16020613227059810667

`A222328(∑[n+1]+2)`
-/

namespace A222322.P16020613227059810667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222322.P16020613227059810667

/-! ## A222322.P6540331759287728568

`A222328(A000217(n+1)+2)+char[19]`
-/

namespace A222322.P6540331759287728568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A000217 (n + 1) + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222322.P6540331759287728568

/-! ## A222322.P11215546067947129110

`A222328(A000217(n+1)+2)%A000108(n+1)`
-/

namespace A222322.P11215546067947129110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222328 (A000217 (n + 1) + 2).toNat) (A000108 (n + 1))

end

end A222322.P11215546067947129110

/-! ## A222322.P1291986721567562367

`lcm(A001222(n+2), A222328(A000217(n+1)+2))`
-/

namespace A222322.P1291986721567562367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (n + 2)) (A222328 (A000217 (n + 1) + 2).toNat)

end

end A222322.P1291986721567562367

/-! ## A222322.P11557511797010366988

`A000041(C(2, n))*A222328(A000217(n+1)+2)`
-/

namespace A222322.P11557511797010366988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 n) * A222328 (A000217 (n + 1) + 2).toNat

end

end A222322.P11557511797010366988

/-!
# A222323: Number of nX3 0..1 arrays with exactly floor(nX3/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222323, there is no canonical definition to state claims against.
-/

/-! ## A222323.P9367635389348849486

`A222328(∑[n+2]+4)`
-/

namespace A222323.P9367635389348849486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222323.P9367635389348849486

/-! ## A222323.P1290939266391406533

`A222328(A167614(n+1))+char[18]`
-/

namespace A222323.P1290939266391406533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222323.P1290939266391406533

/-! ## A222323.P1915469928813282692

`A222328(A000096(n+1)+4)+char[19]`
-/

namespace A222323.P1915469928813282692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A000096 (n + 1) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222323.P1915469928813282692

/-! ## A222323.P17847005177278136168

`A057427(n)*A222328(A167614(n+1))`
-/

namespace A222323.P17847005177278136168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A222328 (A167614 (n + 1)).toNat

end

end A222323.P17847005177278136168

/-! ## A222323.P9458871812214805391

`A139551(n)*A222328(A167614(n+1))`
-/

namespace A222323.P9458871812214805391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139551 n * A222328 (A167614 (n + 1)).toNat

end

end A222323.P9458871812214805391

/-!
# A222324: Number of nX4 0..1 arrays with exactly floor(nX4/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222324, there is no canonical definition to state claims against.
-/

/-! ## A222324.P17164462526758827574

`A222328(∑[n+3]+7)`
-/

namespace A222324.P17164462526758827574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222324.P17164462526758827574

/-! ## A222324.P12243022478438117683

`A222328(A055999(n)+10)+char[20]`
-/

namespace A222324.P12243022478438117683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222324.P12243022478438117683

/-! ## A222324.P16054057847987640128

`A222328(A055999(n)+10)%A000108(n+7)`
-/

namespace A222324.P16054057847987640128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222328 (A055999 n + 10).toNat) (A000108 (n + 7))

end

end A222324.P16054057847987640128

/-! ## A222324.P6332496261359904251

`A007318(C(2, n))*A222328(A055999(n)+10)`
-/

namespace A222324.P6332496261359904251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A222328 (A055999 n + 10).toNat

end

end A222324.P6332496261359904251

/-! ## A222324.P2752440678922877560

`A222328(A055999(n)+10)^A007318(C(3, n))`
-/

namespace A222324.P2752440678922877560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222328 (A055999 n + 10).toNat : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A222324.P2752440678922877560

/-!
# A222325: Number of nX5 0..1 arrays with exactly floor(nX5/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222325, there is no canonical definition to state claims against.
-/

/-! ## A222325.P8365040500071041778

`A222328(∑[n+4]+11)`
-/

namespace A222325.P8365040500071041778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A222325.P8365040500071041778

/-! ## A222325.P12902300199812932346

`A222328(A027379(n+3)-1)+A011737(n)`
-/

namespace A222325.P12902300199812932346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A027379 (n + 3) - 1).toNat + A011737 n

end

end A222325.P12902300199812932346

/-! ## A222325.P16248841230744253982

`A222328(A046691(n+3))%A222342(n+2)`
-/

namespace A222325.P16248841230744253982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222328 (A046691 (n + 3)).toNat) (A222342 (n + 2))

end

end A222325.P16248841230744253982

/-!
# A222326: Number of nX6 0..1 arrays with exactly floor(nX6/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222326, there is no canonical definition to state claims against.
-/

/-! ## A222326.P16110299158894612328

`A222328(A056115(n)+21)`
-/

namespace A222326.P16110299158894612328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A056115 n + 21).toNat

end

end A222326.P16110299158894612328

/-! ## A222326.P10848364722407976703

`A222328(∑[A020710(n)]+16)`
-/

namespace A222326.P10848364722407976703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A222326.P10848364722407976703

/-! ## A222326.P16113037979646327176

`A222328(A167614(n+4)+3)`
-/

namespace A222326.P16113037979646327176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A167614 (n + 4) + 3).toNat

end

end A222326.P16113037979646327176

/-! ## A222326.P9352470534371004524

`A222328(A000124(n+5)+5)`
-/

namespace A222326.P9352470534371004524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A000124 (n + 5) + 5).toNat

end

end A222326.P9352470534371004524

/-! ## A222326.P17203580664658082354

`A222328(A000096(n+4)+7)`
-/

namespace A222326.P17203580664658082354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A000096 (n + 4) + 7).toNat

end

end A222326.P17203580664658082354

/-!
# A222327: Number of nX7 0..1 arrays with exactly floor(nX7/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222327, there is no canonical definition to state claims against.
-/

/-! ## A222327.P1272321268725595197

`A222328(A056119(n)+28)`
-/

namespace A222327.P1272321268725595197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A056119 n + 28).toNat

end

end A222327.P1272321268725595197

/-! ## A222327.P11509559966728395618

`A222328(eq[11, A066657(n)])`
-/

namespace A222327.P11509559966728395618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222327.P11509559966728395618

/-! ## A222327.P3763394455318997488

`A222328(A000124(n+6)+6)`
-/

namespace A222327.P3763394455318997488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A000124 (n + 6) + 6).toNat

end

end A222327.P3763394455318997488

/-! ## A222327.P12967363041614552461

`A222328(A000096(n+5)+8)`
-/

namespace A222327.P12967363041614552461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A000096 (n + 5) + 8).toNat

end

end A222327.P12967363041614552461

/-! ## A222327.P49662157448327234

`A222328(A155212(n+2)+15)`
-/

namespace A222327.P49662157448327234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222328 (A155212 (n + 2) + 15).toNat

end

end A222327.P49662157448327234

/-!
# A222328: T(n,k)=Number of nXk 0..1 arrays with exactly floor(nXk/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222328, there is no canonical definition to state claims against.
-/

/-! ## A222328.P2022588061345136257

`A000120(A071239(A222402(n+1)))`
-/

namespace A222328.P2022588061345136257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A071239 (A222402 (n + 1)).toNat).toNat

end

end A222328.P2022588061345136257

/-! ## A222328.P6547669924144608809

`A063647(A164231(A222522(n+1)))`
-/

namespace A222328.P6547669924144608809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (A164231 (A222522 (n + 1)).toNat).toNat

end

end A222328.P6547669924144608809

/-! ## A222328.P3482883302737745544

`A001222(A276086(A222522(n+1)²))`
-/

namespace A222328.P3482883302737745544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276086 (A222522 (n + 1) ^ 2).toNat).toNat

end

end A222328.P3482883302737745544

/-! ## A222328.P15856212595716626606

`A001222(A278226(A222522(n+1)²))`
-/

namespace A222328.P15856212595716626606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278226 (A222522 (n + 1) ^ 2).toNat).toNat

end

end A222328.P15856212595716626606

/-! ## A222328.P10617105868941847474

`A222360(n+1)-A000035(A001045(n))`
-/

namespace A222328.P10617105868941847474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (n + 1) - A000035 (A001045 n).toNat

end

end A222328.P10617105868941847474

/-!
# A222329: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..3 array extended with zeros and convolved with 1,1.

The programs for A222329, the canonical program `A222329.P17540358593720861092` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222329 has offset 1).

The definition of A222329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222329.P17540358593720861092

`a(n-1)+a(n-3)+a(n-5)+a(n-7)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7, a(4)=11, a(5)=18, a(6)=29`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A222329

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-7)` -/
def P17540358593720861092.Spec : Prop :=
  ∀ n, (P17540358593720861092.a n : ℤ) = A222329 (n + 1)

theorem P17540358593720861092.correct : P17540358593720861092.Spec := by
  intro n
  simp only [A222329, Nat.add_sub_cancel]

end A222329

/-! ## A222329.P1396893135237865690

`A117760(n+2)+A117760(n)`
-/

namespace A222329.P1396893135237865690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117760 (n + 2) + A117760 n

end

end A222329.P1396893135237865690

namespace A222329

/-- `A117760(n+2)+A117760(n)` -/
def P1396893135237865690.Spec : Prop :=
  ∀ n, P1396893135237865690.a n = A222329 (n + 1)

end A222329

/-! ## A222329.P12586419329800740020

`A222334(∑[n+3]+1)`
-/

namespace A222329.P12586419329800740020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222329.P12586419329800740020

namespace A222329

/-- `A222334(∑[n+3]+1)` -/
def P12586419329800740020.Spec : Prop :=
  ∀ n, P12586419329800740020.a n = A222329 (n + 1)

end A222329

/-! ## A222329.P17536837837513927376

`or(char[1], A222334(A052905(n)+3))`
-/

namespace A222329.P17536837837513927376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222334 (A052905 n + 3).toNat)

end

end A222329.P17536837837513927376

namespace A222329

/-- `or(char[1], A222334(A052905(n)+3))` -/
def P17536837837513927376.Spec : Prop :=
  ∀ n, P17536837837513927376.a n = A222329 (n + 1)

end A222329

/-! ## A222329.P14931010513205441922

`record[A222334(A060577(n+1)-n)]`
-/

namespace A222329.P14931010513205441922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A060577 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222329.P14931010513205441922

namespace A222329

/-- `record[A222334(A060577(n+1)-n)]` -/
def P14931010513205441922.Spec : Prop :=
  ∀ n, P14931010513205441922.a n = A222329 (n + 1)

end A222329

/-! ## A222329.P13982059363091001277

`A087960(n)²*A222334(A052905(n)+3)`
-/

namespace A222329.P13982059363091001277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A222334 (A052905 n + 3).toNat

end

end A222329.P13982059363091001277

namespace A222329

/-- `A087960(n)²*A222334(A052905(n)+3)` -/
def P13982059363091001277.Spec : Prop :=
  ∀ n, P13982059363091001277.a n = A222329 (n + 1)

end A222329

/-! ## A222329.P12294529502931150064

`char[A061579(n)]*A222334(A052905(n)+3)`
-/

namespace A222329.P12294529502931150064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A222334 (A052905 n + 3).toNat

end

end A222329.P12294529502931150064

namespace A222329

/-- `char[A061579(n)]*A222334(A052905(n)+3)` -/
def P12294529502931150064.Spec : Prop :=
  ∀ n, P12294529502931150064.a n = A222329 (n + 1)

end A222329

/-! ## A222329.P9502892990052102555

`A222334(A052905(n)+3)+A000035(10*n)`
-/

namespace A222329.P9502892990052102555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A052905 n + 3).toNat + A000035 (10 * n)

end

end A222329.P9502892990052102555

namespace A222329

/-- `A222334(A052905(n)+3)+A000035(10*n)` -/
def P9502892990052102555.Spec : Prop :=
  ∀ n, P9502892990052102555.a n = A222329 (n + 1)

end A222329

/-! ## A222329.P14392950408386479338

`A001222(A227196(2*n+3))*A222334(A052905(n)+3)`
-/

namespace A222329.P14392950408386479338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A227196 (2 * n + 3)).toNat * A222334 (A052905 n + 3).toNat

end

end A222329.P14392950408386479338

namespace A222329

/-- `A001222(A227196(2*n+3))*A222334(A052905(n)+3)` -/
def P14392950408386479338.Spec : Prop :=
  ∀ n, P14392950408386479338.a n = A222329 (n + 1)

end A222329

/-!
# A222330: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..4 array extended with zeros and convolved with 1,1.

The programs for A222330, the canonical program `A222330.P8424002690590136284` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222330 has offset 1).

The definition of A222330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 482 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222330.P8424002690590136284

`a(n-1)+a(n-3)+a(n-5)+a(n-7)+a(n-9)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=7, a(4)=11, a(5)=18, a(6)=29, a(7)=47, a(8)=76`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A222330

/-- `a(n-1)+a(n-3)+a(n-5)+a(n-7)+a(n-9)` -/
def P8424002690590136284.Spec : Prop :=
  ∀ n, (P8424002690590136284.a n : ℤ) = A222330 (n + 1)

theorem P8424002690590136284.correct : P8424002690590136284.Spec := by
  intro n
  simp only [A222330, Nat.add_sub_cancel]

end A222330

/-! ## A222330.P17722083631765927228

`record[A222334(A027379(n))]`
-/

namespace A222330.P17722083631765927228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222330.P17722083631765927228

namespace A222330

/-- `record[A222334(A027379(n))]` -/
def P17722083631765927228.Spec : Prop :=
  ∀ n, P17722083631765927228.a n = A222330 (n + 1)

end A222330

/-! ## A222330.P3840490867707554337

`A222334(A027379(n+2))`
-/

namespace A222330.P3840490867707554337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A027379 (n + 2)).toNat

end

end A222330.P3840490867707554337

namespace A222330

/-- `A222334(A027379(n+2))` -/
def P3840490867707554337.Spec : Prop :=
  ∀ n, P3840490867707554337.a n = A222330 (n + 1)

end A222330

/-! ## A222330.P6011065975004464162

`A222334(A056000(n)+7)`
-/

namespace A222330.P6011065975004464162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A056000 n + 7).toNat

end

end A222330.P6011065975004464162

namespace A222330

/-- `A222334(A056000(n)+7)` -/
def P6011065975004464162.Spec : Prop :=
  ∀ n, P6011065975004464162.a n = A222330 (n + 1)

end A222330

/-! ## A222330.P5936728740693398485

`A222334(Δ[A034857(n+1)])`
-/

namespace A222330.P5936728740693398485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (f1 (n + 1) - f1 n).toNat

end

end A222330.P5936728740693398485

namespace A222330

/-- `A222334(Δ[A034857(n+1)])` -/
def P5936728740693398485.Spec : Prop :=
  ∀ n, P5936728740693398485.a n = A222330 (n + 1)

end A222330

/-! ## A222330.P5459755370077132679

`record[A222334(A060577(n)+1)]`
-/

namespace A222330.P5459755370077132679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A060577 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222330.P5459755370077132679

namespace A222330

/-- `record[A222334(A060577(n)+1)]` -/
def P5459755370077132679.Spec : Prop :=
  ∀ n, P5459755370077132679.a n = A222330 (n + 1)

end A222330

/-! ## A222330.P12397573461704313629

`A222334(A052905(n+1)+2)`
-/

namespace A222330.P12397573461704313629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A052905 (n + 1) + 2).toNat

end

end A222330.P12397573461704313629

namespace A222330

/-- `A222334(A052905(n+1)+2)` -/
def P12397573461704313629.Spec : Prop :=
  ∀ n, P12397573461704313629.a n = A222330 (n + 1)

end A222330

/-! ## A222330.P7291321437125089974

`record[A222334(record[A060577(n)-n])]`
-/

namespace A222330.P7291321437125089974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060577 n - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222330.P7291321437125089974

namespace A222330

/-- `record[A222334(record[A060577(n)-n])]` -/
def P7291321437125089974.Spec : Prop :=
  ∀ n, P7291321437125089974.a n = A222330 (n + 1)

end A222330

/-! ## A222330.P12130082170193219922

`A222334(Δ[A008778(n+1)]-1)`
-/

namespace A222330.P12130082170193219922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (f1 (n + 1) - f1 n - 1).toNat

end

end A222330.P12130082170193219922

namespace A222330

/-- `A222334(Δ[A008778(n+1)]-1)` -/
def P12130082170193219922.Spec : Prop :=
  ∀ n, P12130082170193219922.a n = A222330 (n + 1)

end A222330

/-!
# A222331: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..5 array extended with zeros and convolved with 1,1.

The programs for A222331, there is no canonical definition to state claims against.
-/

/-! ## A222331.P15400982723490283769

`A000044(n+2)+A000044(n)`
-/

namespace A222331.P15400982723490283769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000044 (n + 2) + A000044 n

end

end A222331.P15400982723490283769

/-! ## A222331.P17525422843497061069

`A222334(A046691(n+3))`
-/

namespace A222331.P17525422843497061069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A046691 (n + 3)).toNat

end

end A222331.P17525422843497061069

/-! ## A222331.P9126631348407457313

`A222334(Δ[A023545(n+1)])`
-/

namespace A222331.P9126631348407457313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (f1 (n + 1) - f1 n).toNat

end

end A222331.P9126631348407457313

/-! ## A222331.P10622373411339533602

`A222334(A000217(n+5)-4)`
-/

namespace A222331.P10622373411339533602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A000217 (n + 5) - 4).toNat

end

end A222331.P10622373411339533602

/-! ## A222331.P17575487651575912959

`A222334(A000124(n+5)-5)`
-/

namespace A222331.P17575487651575912959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A000124 (n + 5) - 5).toNat

end

end A222331.P17575487651575912959

/-! ## A222331.P11073845919908489860

`A222334(Δ[A034857(n+2)]-1)`
-/

namespace A222331.P11073845919908489860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034857 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (f1 (n + 1) - f1 n - 1).toNat

end

end A222331.P11073845919908489860

/-!
# A222332: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..6 array extended with zeros and convolved with 1,1.

The programs for A222332, there is no canonical definition to state claims against.
-/

/-! ## A222332.P11635961217337389961

`A222334(A052905(n+3))`
-/

namespace A222332.P11635961217337389961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A052905 (n + 3)).toNat

end

end A222332.P11635961217337389961

/-! ## A222332.P15481225454906012313

`A222334(A000124(n+6)-6)`
-/

namespace A222332.P15481225454906012313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A000124 (n + 6) - 6).toNat

end

end A222332.P15481225454906012313

/-! ## A222332.P7202795636726216658

`A222334(Δ[A023545(n+2)]-1)`
-/

namespace A222332.P7202795636726216658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (f1 (n + 1) - f1 n - 1).toNat

end

end A222332.P7202795636726216658

/-! ## A222332.P8298027445020206434

`A222334(Δ[A026054(n+3)]+1)`
-/

namespace A222332.P8298027445020206434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (f1 (n + 1) - f1 n + 1).toNat

end

end A222332.P8298027445020206434

/-! ## A222332.P16045932993357071989

`A222334(A000217(n+5)+n+1)`
-/

namespace A222332.P16045932993357071989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A000217 (n + 5) + (n + 1 : ℤ)).toNat

end

end A222332.P16045932993357071989

/-! ## A222332.P9103273718954926405

`A222334(A167499(n+3)+2*n+1)`
-/

namespace A222332.P9103273718954926405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A167499 (n + 3) + (2 * n + 1 : ℤ)).toNat

end

end A222332.P9103273718954926405

/-!
# A222333: Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..7 array extended with zeros and convolved with 1,1.

The programs for A222333, there is no canonical definition to state claims against.
-/

/-! ## A222333.P4279777466426778618

`A222334(A055999(n+4))`
-/

namespace A222333.P4279777466426778618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A055999 (n + 4)).toNat

end

end A222333.P4279777466426778618

/-! ## A222333.P10981389727324724479

`A222334(Δ[A026054(n+4)])`
-/

namespace A222333.P10981389727324724479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (f1 (n + 1) - f1 n).toNat

end

end A222333.P10981389727324724479

/-! ## A222333.P14252985672748038718

`A222334(A000124(n+7)-7)`
-/

namespace A222333.P14252985672748038718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A000124 (n + 7) - 7).toNat

end

end A222333.P14252985672748038718

/-! ## A222333.P3363085217806507182

`A222334(A152947(n+9)-7)`
-/

namespace A222333.P3363085217806507182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A152947 (n + 9) - 7).toNat

end

end A222333.P3363085217806507182

/-! ## A222333.P14192000285639872702

`A222334(eq[13, A099375(n)]+1)`
-/

namespace A222333.P14192000285639872702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A222333.P14192000285639872702

/-! ## A222333.P14448891257698962252

`A222334(A000096(n+5)+n+2)`
-/

namespace A222333.P14448891257698962252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A222333.P14448891257698962252

/-! ## A222333.P9578010773372939569

`A222334(A000217(n+6)+n+1)`
-/

namespace A222333.P9578010773372939569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222334 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A222333.P9578010773372939569

/-!
# A222334: T(n,k)=Number of binary arrays indicating the locations of trailing edge maxima of a random length-n 0..k array extended with zeros and convolved with 1,1.

The programs for A222334, there is no canonical definition to state claims against.
-/

/-! ## A222334.P5314392896996037370

`A330780(A187152(n+1)%A080021(n+2))`
-/

namespace A222334.P5314392896996037370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330780 (Int.tmod (A187152 (n + 1)) (A080021 (n + 2))).toNat

end

end A222334.P5314392896996037370

/-! ## A222334.P7841468794378952603

`A330780(A187152(n+1))%A000203(A000211(n))`
-/

namespace A222334.P7841468794378952603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330780 (A187152 (n + 1)).toNat) (A000203 (A000211 n).toNat)

end

end A222334.P7841468794378952603

/-! ## A222334.P4298049617897638232

`A222027(n+1)+A010060(A022089(n))`
-/

namespace A222334.P4298049617897638232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (n + 1) + A010060 (A022089 n).toNat

end

end A222334.P4298049617897638232

/-! ## A222334.P15965178070348278424

`A222027(n+1)+A055641(A000045(n+2))`
-/

namespace A222334.P15965178070348278424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222027 (n + 1) + A055641 (A000045 (n + 2)).toNat

end

end A222334.P15965178070348278424

/-! ## A222334.P9511339460961545579

`A208343(n+1)+A130130(A325012(n+1))`
-/

namespace A222334.P9511339460961545579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208343 (n + 1) + A130130 (A325012 (n + 1)).toNat

end

end A222334.P9511339460961545579

/-!
# A222335: Number of nX2 0..6 arrays with no entry increasing mod 7 by 6 rightwards or downwards, starting with upper left zero.

The programs for A222335, there is no canonical definition to state claims against.
-/

/-! ## A222335.P5465571321684131106

`6*31^n`
-/

namespace A222335.P5465571321684131106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * 31 ^ n

end

end A222335.P5465571321684131106

/-!
# A222336: Number of n X 3 0..6 arrays with no entry increasing mod 7 by 6 rightwards or downwards, starting with upper left zero.

The programs for A222336, there is no canonical definition to state claims against.
-/

/-! ## A222336.P14659454518367899781

`A222340(∑[n+2]+4)`
-/

namespace A222336.P14659454518367899781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222340 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222336.P14659454518367899781

/-! ## A222336.P1075212758205342665

`lcm(2, A222340(A167614(n+1)))`
-/

namespace A222336.P1075212758205342665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222340 (A167614 (n + 1)).toNat)

end

end A222336.P1075212758205342665

/-! ## A222336.P11096110139712931459

`A222340(A167614(n+1))*A287091(n)`
-/

namespace A222336.P11096110139712931459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222340 (A167614 (n + 1)).toNat * A287091 n

end

end A222336.P11096110139712931459

/-! ## A222336.P3926272639687944606

`A326291(n+1)+A222340(A167614(n+1))`
-/

namespace A222336.P3926272639687944606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326291 (n + 1) + A222340 (A167614 (n + 1)).toNat

end

end A222336.P3926272639687944606

/-! ## A222336.P18250618113040471018

`A222340(A167614(n+1))%A222442(n+1)`
-/

namespace A222336.P18250618113040471018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222340 (A167614 (n + 1)).toNat) (A222442 (n + 1))

end

end A222336.P18250618113040471018

/-!
# A222337: Number of n X 4 0..6 arrays with no entry increasing mod 7 by 6 rightwards or downwards, starting with upper left zero.

The programs for A222337, there is no canonical definition to state claims against.
-/

/-! ## A222337.P13150892987373755370

`A222340(A167614(n+2)+1)`
-/

namespace A222337.P13150892987373755370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222340 (A167614 (n + 2) + 1).toNat

end

end A222337.P13150892987373755370

/-! ## A222337.P607648290822279172

`A222340(A167499(n+2)-1)`
-/

namespace A222337.P607648290822279172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222340 (A167499 (n + 2) - 1).toNat

end

end A222337.P607648290822279172

/-! ## A222337.P13462158358037883702

`A222340(A052905(n+2)-2*n)`
-/

namespace A222337.P13462158358037883702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222340 (A052905 (n + 2) - (2 * n : ℤ)).toNat

end

end A222337.P13462158358037883702

/-! ## A222337.P18435753733081593902

`A222340(A155212(A080683(n+1))-n)`
-/

namespace A222337.P18435753733081593902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222340 (A155212 (A080683 (n + 1)).toNat - (n : ℤ)).toNat

end

end A222337.P18435753733081593902

/-!
# A222338: 

The programs for A222338, there is no canonical definition to state claims against.
-/

/-! ## A222338.P7575408111141837706

`A222340(A052905(n+2)+1)`
-/

namespace A222338.P7575408111141837706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222340 (A052905 (n + 2) + 1).toNat

end

end A222338.P7575408111141837706

/-!
# A222340: T(n,k) = number of n X k 0..6 arrays with no entry increasing mod 7 by 6 rightwards or downwards, starting with upper left zero.

The programs for A222340, there is no canonical definition to state claims against.
-/

/-! ## A222340.P5923914684396612801

`A303788(A222462(n+1))`
-/

namespace A222340.P5923914684396612801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (A222462 (n + 1)).toNat

end

end A222340.P5923914684396612801

/-! ## A222340.P6583868361124615349

`∑{d}[A118171(n), A165826(#)]`
-/

namespace A222340.P6583868361124615349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A165826 d

end

end A222340.P6583868361124615349

/-! ## A222340.P4475318522943943767

`∏{e}[A148406(2*n), A005891(#)]`
-/

namespace A222340.P4475318522943943767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148406 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A005891 (Nat.factorization (f1 n).natAbs p)

end

end A222340.P4475318522943943767

/-!
# A222341: Number of (n+4) X 1 arrays of occupancy after each element moves up to +-4 places including 0.

The programs for A222341, the canonical program `A222341.P3104510988022230488` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222341 has offset 1).

The definition of A222341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222341.P3104510988022230488

`A216710(n+4)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A222341

/-- `A216710(n+4)` -/
def P3104510988022230488.Spec : Prop :=
  ∀ n, P3104510988022230488.a n = A222341 (n + 1)

theorem P3104510988022230488.correct : P3104510988022230488.Spec := by
  intro n
  simp only [A222341, Nat.add_sub_cancel]

end A222341

/-! ## A222341.P15873117089539354203

`A336675(2*n+9)`
-/

namespace A222341.P15873117089539354203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336675 (2 * n + 9)

end

end A222341.P15873117089539354203

namespace A222341

/-- `A336675(2*n+9)` -/
def P15873117089539354203.Spec : Prop :=
  ∀ n, P15873117089539354203.a n = A222341 (n + 1)

end A222341

/-! ## A222341.P9128109970793344823

`record[A216710(A178915(A008619(n)))]`
-/

namespace A222341.P9128109970793344823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 (A178915 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222341.P9128109970793344823

namespace A222341

/-- `record[A216710(A178915(A008619(n)))]` -/
def P9128109970793344823.Spec : Prop :=
  ∀ n, P9128109970793344823.a n = A222341 (n + 1)

end A222341

/-! ## A222341.P1760042509290879788

`record[A216710(A178915(A028920(n)))]`
-/

namespace A222341.P1760042509290879788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 (A178915 (A028920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222341.P1760042509290879788

namespace A222341

/-- `record[A216710(A178915(A028920(n)))]` -/
def P1760042509290879788.Spec : Prop :=
  ∀ n, P1760042509290879788.a n = A222341 (n + 1)

end A222341

/-! ## A222341.P15073544196825746930

`record[A216710(A324733(A020742(n)))]`
-/

namespace A222341.P15073544196825746930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216710 (A324733 (A020742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222341.P15073544196825746930

namespace A222341

/-- `record[A216710(A324733(A020742(n)))]` -/
def P15073544196825746930.Spec : Prop :=
  ∀ n, P15073544196825746930.a n = A222341 (n + 1)

end A222341

/-!
# A222342: Number of (n+5) X 1 arrays of occupancy after each element moves up to +-5 places including 0.

The programs for A222342, there is no canonical definition to state claims against.
-/

/-! ## A222342.P16242626540484517649

`A222345(Δ[A264443(n)])`
-/

namespace A222342.P16242626540484517649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (f1 (n + 1) - f1 n).toNat

end

end A222342.P16242626540484517649

/-! ## A222342.P4984458274718118711

`A222345(A046691(n+3))`
-/

namespace A222342.P4984458274718118711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A046691 (n + 3)).toNat

end

end A222342.P4984458274718118711

/-! ## A222342.P7272756032448996191

`A222345(A056115(n)+11)`
-/

namespace A222342.P7272756032448996191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A056115 n + 11).toNat

end

end A222342.P7272756032448996191

/-!
# A222343: Number of (n+6)X1 arrays of occupancy after each element moves up to +-6 places including 0.

The programs for A222343, there is no canonical definition to state claims against.
-/

/-! ## A222343.P8161671285381753063

`A222345(A052905(n+3))`
-/

namespace A222343.P8161671285381753063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A052905 (n + 3)).toNat

end

end A222343.P8161671285381753063

/-! ## A222343.P15162335761612977808

`A222345(eq[3, A219347(n)])`
-/

namespace A222343.P15162335761612977808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222343.P15162335761612977808

/-!
# A222344: Number of (n+7)X1 arrays of occupancy after each element moves up to +-7 places including 0.

The programs for A222344, there is no canonical definition to state claims against.
-/

/-! ## A222344.P3165052595700076328

`A222345(A055999(n+4))`
-/

namespace A222344.P3165052595700076328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A055999 (n + 4)).toNat

end

end A222344.P3165052595700076328

/-!
# A222346: Number of (n+2) X 1 arrays of occupancy after each element moves up to +-n places including 0.

The programs for A222346, there is no canonical definition to state claims against.
-/

/-! ## A222346.P17159112674172148676

`C(2*n+5, n+2)-2`
-/

namespace A222346.P17159112674172148676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 5) (n + 2) : ℤ) - 2

end

end A222346.P17159112674172148676

/-! ## A222346.P17809568561449221630

`abs(2-C(Δ[(n+2)²], n+2))`
-/

namespace A222346.P17809568561449221630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat (n + 2) : ℤ)|

end

end A222346.P17809568561449221630

/-! ## A222346.P8179716387967299200

`∑[abs(Δ[C(2*n+3, n+1)])]+1`
-/

namespace A222346.P8179716387967299200
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 3) (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A222346.P8179716387967299200

/-! ## A222346.P10537890742992917834

`record[(4-2/n)*a(n-1)]-2` with `a(0)=10, a(1)=1`
-/

namespace A222346.P10537890742992917834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  (4 - 2 / (n : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A222346.P10537890742992917834

/-! ## A222346.P17125687025654240183

`record[a(n-1)/(floor(n/2)/n-1)]-2` with `a(0)=10, a(1)=1`
-/

namespace A222346.P17125687025654240183
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [10, 1] fun n f1 =>
  f1 (n - 1) / ((⌊(n : ℚ) / 2⌋ : ℚ) / (n : ℚ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 2

end

end A222346.P17125687025654240183

/-!
# A222347: Number of (n+3) X 1 arrays of occupancy after each element moves up to +-n places including 0.

The programs for A222347, there is no canonical definition to state claims against.
-/

/-! ## A222347.P4761000909592405760

`A222345(∑[n+2]+4)`
-/

namespace A222347.P4761000909592405760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222347.P4761000909592405760

/-! ## A222347.P5789723573483484769

`∑[A024482(n+4)-4]`
-/

namespace A222347.P5789723573483484769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024482 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222347.P5789723573483484769

/-! ## A222347.P8424309291698878270

`∑[A097613(n+4)-4]`
-/

namespace A222347.P8424309291698878270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097613 (n + 4) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222347.P8424309291698878270

/-! ## A222347.P13412173648699660476

`∑[Δ[A222346(n+1)]-4]`
-/

namespace A222347.P13412173648699660476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222346 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222347.P13412173648699660476

/-! ## A222347.P9899021044726196496

`∑[Δ[A001700(n+2)]-4]`
-/

namespace A222347.P9899021044726196496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001700 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222347.P9899021044726196496

/-!
# A222348: Number of (n+4)X1 arrays of occupancy after each element moves up to +-n places including 0.

The programs for A222348, there is no canonical definition to state claims against.
-/

/-! ## A222348.P7401764637064803522

`A222345(∑[n+3]+7)`
-/

namespace A222348.P7401764637064803522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222348.P7401764637064803522

/-!
# A222349: Number of (n+5)X1 arrays of occupancy after each element moves up to +-n places including 0.

The programs for A222349, there is no canonical definition to state claims against.
-/

/-! ## A222349.P3079618906348304846

`A222345(A167499(n+3))`
-/

namespace A222349.P3079618906348304846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A167499 (n + 3)).toNat

end

end A222349.P3079618906348304846

/-! ## A222349.P12302878615470620101

`A222345(A155212(n)+13)`
-/

namespace A222349.P12302878615470620101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A155212 n + 13).toNat

end

end A222349.P12302878615470620101

/-! ## A222349.P3658962773827691457

`A222345(A056000(n)+15)`
-/

namespace A222349.P3658962773827691457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A056000 n + 15).toNat

end

end A222349.P3658962773827691457

/-!
# A222350: Number of (n+6)X1 arrays of occupancy after each element moves up to +-n places including 0.

The programs for A222350, there is no canonical definition to state claims against.
-/

/-! ## A222350.P12651356856444823172

`A222345(A166136(n+4))`
-/

namespace A222350.P12651356856444823172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A166136 (n + 4)).toNat

end

end A222350.P12651356856444823172

/-! ## A222350.P7429906082420880502

`A222345(A056115(n)+21)`
-/

namespace A222350.P7429906082420880502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A056115 n + 21).toNat

end

end A222350.P7429906082420880502

/-!
# A222351: Number of (n+7)X1 arrays of occupancy after each element moves up to +-n places including 0.

The programs for A222351, there is no canonical definition to state claims against.
-/

/-! ## A222351.P4053146319380789071

`A222345(A167487(n+5))`
-/

namespace A222351.P4053146319380789071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222345 (A167487 (n + 5)).toNat

end

end A222351.P4053146319380789071

/-!
# A222352: Number of n X n 0..1 arrays with no more than floor(n X n/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222352, there is no canonical definition to state claims against.
-/

/-! ## A222352.P4767556035736628319

`A222360(∑[4*n]+1)`
-/

namespace A222352.P4767556035736628319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222352.P4767556035736628319

/-! ## A222352.P2831010919981111343

`and(-1, A222360(A001844(n)))`
-/

namespace A222352.P2831010919981111343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222360 (A001844 n).toNat)

end

end A222352.P2831010919981111343

/-! ## A222352.P16013875459186967264

`A222360(A001844(n))+A011731(n)`
-/

namespace A222352.P16013875459186967264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A001844 n).toNat + A011731 n

end

end A222352.P16013875459186967264

/-! ## A222352.P18142332301185509267

`A308923(n)+A222360(A001844(n))`
-/

namespace A222352.P18142332301185509267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308923 n + A222360 (A001844 n).toNat

end

end A222352.P18142332301185509267

/-! ## A222352.P13401791438606742811

`A222360(A001844(n))*A351086(n)`
-/

namespace A222352.P13401791438606742811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A001844 n).toNat * A351086 n

end

end A222352.P13401791438606742811

/-!
# A222353: Number of nX1 0..1 arrays with no more than floor(nX1/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222353, there is no canonical definition to state claims against.
-/

/-! ## A222353.P1115579711887739463

`A223012(∑[n]+1)`
-/

namespace A222353.P1115579711887739463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222353.P1115579711887739463

/-! ## A222353.P8571472004592406074

`lcm(or(n, -1), A223012(A000124(n)))`
-/

namespace A222353.P8571472004592406074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor (n : ℤ) (-1)) (A223012 (A000124 n).toNat)

end

end A222353.P8571472004592406074

/-! ## A222353.P2801091754836452344

`A223012(A000124(n))+A178798(n)`
-/

namespace A222353.P2801091754836452344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223012 (A000124 n).toNat + A178798 n

end

end A222353.P2801091754836452344

/-! ## A222353.P3240959554207379660

`A223012(A000124(n))%A000051(n)`
-/

namespace A222353.P3240959554207379660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223012 (A000124 n).toNat) (A000051 n)

end

end A222353.P3240959554207379660

/-! ## A222353.P10210300502809531397

`A287160(A287161(n+1))+A223012(A000124(n))`
-/

namespace A222353.P10210300502809531397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287160 (A287161 (n + 1)).toNat + A223012 (A000124 n).toNat

end

end A222353.P10210300502809531397

/-!
# A222354: Number of nX2 0..1 arrays with no more than floor(nX2/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222354, there is no canonical definition to state claims against.
-/

/-! ## A222354.P18083366037038272008

`A222360(∑[n+1]+2)`
-/

namespace A222354.P18083366037038272008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222354.P18083366037038272008

/-! ## A222354.P14140061984115556709

`A222360(A133263(n+1))+char[19]`
-/

namespace A222354.P14140061984115556709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222354.P14140061984115556709

/-! ## A222354.P1432168270467732618

`A222360(A133263(n+1))%A000108(n+2)`
-/

namespace A222354.P1432168270467732618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222360 (A133263 (n + 1)).toNat) (A000108 (n + 2))

end

end A222354.P1432168270467732618

/-! ## A222354.P8022335083306744065

`A007318(C(n, 2))*A222360(A133263(n+1))`
-/

namespace A222354.P8022335083306744065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A222360 (A133263 (n + 1)).toNat

end

end A222354.P8022335083306744065

/-! ## A222354.P10033435316829368493

`A222360(A133263(n+1))/A007318(C(2, n²))`
-/

namespace A222354.P10033435316829368493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222360 (A133263 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 (n ^ 2)) : ℚ)

end

end A222354.P10033435316829368493

/-!
# A222355: Number of nX3 0..1 arrays with no more than floor(nX3/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222355, there is no canonical definition to state claims against.
-/

/-! ## A222355.P7874710233657360769

`A222360(∑[n+2]+4)`
-/

namespace A222355.P7874710233657360769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222355.P7874710233657360769

/-! ## A222355.P8097957581849080358

`and(-1, A222360(A167614(n+1)))`
-/

namespace A222355.P8097957581849080358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222360 (A167614 (n + 1)).toNat)

end

end A222355.P8097957581849080358

/-! ## A222355.P4933659369795305944

`gcd(A025469(n), A222360(A167614(n+1)))`
-/

namespace A222355.P4933659369795305944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025469 n) (A222360 (A167614 (n + 1)).toNat)

end

end A222355.P4933659369795305944

/-! ## A222355.P7965077400130458604

`or(A000007(n), A222360(A167614(n+1)))`
-/

namespace A222355.P7965077400130458604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222360 (A167614 (n + 1)).toNat)

end

end A222355.P7965077400130458604

/-! ## A222355.P3317198602197734868

`or(A184945(n), A222360(A167614(n+1)))`
-/

namespace A222355.P3317198602197734868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A184945 n) (A222360 (A167614 (n + 1)).toNat)

end

end A222355.P3317198602197734868

/-!
# A222356: Number of nX4 0..1 arrays with no more than floor(nX4/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222356, there is no canonical definition to state claims against.
-/

/-! ## A222356.P15622589346669132427

`A222360(∑[n+3]+7)`
-/

namespace A222356.P15622589346669132427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222356.P15622589346669132427

/-! ## A222356.P7263160424983856368

`A222360(A167487(n+2)-3)+char[22]`
-/

namespace A222356.P7263160424983856368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A167487 (n + 2) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222356.P7263160424983856368

/-! ## A222356.P11500961232543104298

`A000108(and(1, -n))*A222360(A167487(n+2)-3)`
-/

namespace A222356.P11500961232543104298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.land 1 (-(n : ℤ))).toNat * A222360 (A167487 (n + 2) - 3).toNat

end

end A222356.P11500961232543104298

/-! ## A222356.P3817872303530233332

`A007318(and(1, -n))*A222360(A167487(n+2)-3)`
-/

namespace A222356.P3817872303530233332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 1 (-(n : ℤ))).toNat * A222360 (A167487 (n + 2) - 3).toNat

end

end A222356.P3817872303530233332

/-! ## A222356.P17932675708846294554

`A222360(A167487(n+2)-3)%A000045(n+12)²`
-/

namespace A222356.P17932675708846294554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222360 (A167487 (n + 2) - 3).toNat) (A000045 (n + 12) ^ 2)

end

end A222356.P17932675708846294554

/-!
# A222357: Number of nX5 0..1 arrays with no more than floor(nX5/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222357, there is no canonical definition to state claims against.
-/

/-! ## A222357.P3804749316893223715

`A222360(A167499(n+3))`
-/

namespace A222357.P3804749316893223715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A167499 (n + 3)).toNat

end

end A222357.P3804749316893223715

/-! ## A222357.P15351197295643919848

`A222360(A155212(n)+13)`
-/

namespace A222357.P15351197295643919848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A155212 n + 13).toNat

end

end A222357.P15351197295643919848

/-! ## A222357.P4564894330481881775

`A222360(A056000(n)+15)`
-/

namespace A222357.P4564894330481881775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A056000 n + 15).toNat

end

end A222357.P4564894330481881775

/-! ## A222357.P13091713187111798383

`A222360(eq[7, A066657(n)])`
-/

namespace A222357.P13091713187111798383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222357.P13091713187111798383

/-! ## A222357.P10210698426163755351

`A222360(A166136(n+3)-1)`
-/

namespace A222357.P10210698426163755351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A166136 (n + 3) - 1).toNat

end

end A222357.P10210698426163755351

/-!
# A222358: Number of nX6 0..1 arrays with no more than floor(nX6/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222358, there is no canonical definition to state claims against.
-/

/-! ## A222358.P7962276640340384630

`A222360(A166136(n+4))`
-/

namespace A222358.P7962276640340384630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A166136 (n + 4)).toNat

end

end A222358.P7962276640340384630

/-! ## A222358.P12541961051605122754

`A222360(A056115(n)+21)`
-/

namespace A222358.P12541961051605122754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A056115 n + 21).toNat

end

end A222358.P12541961051605122754

/-! ## A222358.P12042003855394496885

`A222360(A167499(n+4)+1)`
-/

namespace A222358.P12042003855394496885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A167499 (n + 4) + 1).toNat

end

end A222358.P12042003855394496885

/-! ## A222358.P10294825957725174525

`A222360(A000124(n+5)+5)`
-/

namespace A222358.P10294825957725174525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A000124 (n + 5) + 5).toNat

end

end A222358.P10294825957725174525

/-! ## A222358.P12421477921927016542

`A222360(A000096(n+4)+7)`
-/

namespace A222358.P12421477921927016542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A000096 (n + 4) + 7).toNat

end

end A222358.P12421477921927016542

/-!
# A222359: Number of nX7 0..1 arrays with no more than floor(nX7/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222359, there is no canonical definition to state claims against.
-/

/-! ## A222359.P1206127734542411067

`A222360(eq[11, A066657(n)])`
-/

namespace A222359.P1206127734542411067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222359.P1206127734542411067

/-! ## A222359.P17921172380437294053

`A222360(A167614(n+5)+4)`
-/

namespace A222359.P17921172380437294053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A167614 (n + 5) + 4).toNat

end

end A222359.P17921172380437294053

/-! ## A222359.P14638681193412175616

`A222360(A000124(n+6)+6)`
-/

namespace A222359.P14638681193412175616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A000124 (n + 6) + 6).toNat

end

end A222359.P14638681193412175616

/-! ## A222359.P17022575909009772055

`A222360(A000096(n+5)+8)`
-/

namespace A222359.P17022575909009772055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (A000096 (n + 5) + 8).toNat

end

end A222359.P17022575909009772055

/-! ## A222359.P402548399629008416

`A222360(eq[8, A131818(n+1)])`
-/

namespace A222359.P402548399629008416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222360 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222359.P402548399629008416

/-!
# A222360: T(n,k)=Number of nXk 0..1 arrays with no more than floor(nXk/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..1 order.

The programs for A222360, there is no canonical definition to state claims against.
-/

/-! ## A222360.P13085834109164080114

`A070939(2*C(A222371(n+1), 3))`
-/

namespace A222360.P13085834109164080114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (2 * Nat.choose (A222371 (n + 1)).toNat 3)

end

end A222360.P13085834109164080114

/-! ## A222360.P4695799055348992265

`and(A050217(A201105(n+1)), A222371(n+1))`
-/

namespace A222360.P4695799055348992265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050217 (A201105 (n + 1)).toNat) (A222371 (n + 1))

end

end A222360.P4695799055348992265

/-! ## A222360.P17112348771945405481

`and(A050217(A201105(n+1)), A222479(n+1))`
-/

namespace A222360.P17112348771945405481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A050217 (A201105 (n + 1)).toNat) (A222479 (n + 1))

end

end A222360.P17112348771945405481

/-! ## A222360.P4266046152019737114

`and(A222371(n+1), A262360(A222649(n+1)))`
-/

namespace A222360.P4266046152019737114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A222371 (n + 1)) (A262360 (A222649 (n + 1)).toNat)

end

end A222360.P4266046152019737114

/-! ## A222360.P11154629623302721726

`and(A222479(n+1), A262360(A222649(n+1)))`
-/

namespace A222360.P11154629623302721726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A222479 (n + 1)) (A262360 (A222649 (n + 1)).toNat)

end

end A222360.P11154629623302721726

/-!
# A222361: Fibonacci-Legendre quotients: (Fibonacci(p) - L(p/5)) / p, where p = prime(n) and L(p/5) is the Legendre symbol.

The programs for A222361, there is no canonical definition to state claims against.
-/

/-! ## A222361.P14025879569621944276

`round(A000045(A000040(n+1))/A000040(n+1))`
-/

namespace A222361.P14025879569621944276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (A000040 (n + 1)).toNat : ℚ) / (A000040 (n + 1) : ℚ))

end

end A222361.P14025879569621944276

/-! ## A222361.P9775358205497047521

`round(A000045(A161847(n+1))/A161847(n+1))`
-/

namespace A222361.P9775358205497047521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (A161847 (n + 1)).toNat : ℚ) / (A161847 (n + 1) : ℚ))

end

end A222361.P9775358205497047521

/-! ## A222361.P16037450042203167063

`round(A000045(A008578(n+2))/A008578(n+2))`
-/

namespace A222361.P16037450042203167063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (A008578 (n + 2)).toNat : ℚ) / (A008578 (n + 2) : ℚ))

end

end A222361.P16037450042203167063

/-! ## A222361.P331998957504977234

`round(A000045(A238853(n+1))/A238853(n+1))`
-/

namespace A222361.P331998957504977234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000045 (A238853 (n + 1)).toNat : ℚ) / (A238853 (n + 1) : ℚ))

end

end A222361.P331998957504977234

/-!
# A222363: Number of n X n 0..2 arrays with no more than floor(n X n/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222363, there is no canonical definition to state claims against.
-/

/-! ## A222363.P12140207393232595440

`A222371(∑[4*n]+1)`
-/

namespace A222363.P12140207393232595440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222363.P12140207393232595440

/-! ## A222363.P17894813873518018514

`and(-1, A222371(A001844(n)))`
-/

namespace A222363.P17894813873518018514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222371 (A001844 n).toNat)

end

end A222363.P17894813873518018514

/-! ## A222363.P7537251546920121307

`A332639(n)+A222371(A001844(n))`
-/

namespace A222363.P7537251546920121307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332639 n + A222371 (A001844 n).toNat

end

end A222363.P7537251546920121307

/-! ## A222363.P6296180209038594452

`A109035(n)*A222371(A001844(n))`
-/

namespace A222363.P6296180209038594452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109035 n * A222371 (A001844 n).toNat

end

end A222363.P6296180209038594452

/-!
# A222364: Number of nX1 0..2 arrays with no more than floor(nX1/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222364, there is no canonical definition to state claims against.
-/

/-! ## A222364.P12067222898469050101

`A222986(∑[n]+1)`
-/

namespace A222364.P12067222898469050101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222986 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222364.P12067222898469050101

/-! ## A222364.P13007794697633649740

`A222371(∑[n]+1)`
-/

namespace A222364.P13007794697633649740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222364.P13007794697633649740

/-! ## A222364.P6514630741555814224

`A222649(∑[n]+1)`
-/

namespace A222364.P6514630741555814224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222364.P6514630741555814224

/-! ## A222364.P613153668635210789

`and(-1, A222371(A000124(n)))`
-/

namespace A222364.P613153668635210789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A222371 (A000124 n).toNat)

end

end A222364.P613153668635210789

/-! ## A222364.P10882257734974818963

`A222649(A000124(n))+A025469(n)`
-/

namespace A222364.P10882257734974818963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222649 (A000124 n).toNat + A025469 n

end

end A222364.P10882257734974818963

/-!
# A222365: Number of nX2 0..2 arrays with no more than floor(nX2/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222365, there is no canonical definition to state claims against.
-/

/-! ## A222365.P4557091714274533384

`A222371(∑[n+1]+2)`
-/

namespace A222365.P4557091714274533384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222365.P4557091714274533384

/-! ## A222365.P2106803450004478943

`A222371(A133263(n+1))%A222575(n+1)`
-/

namespace A222365.P2106803450004478943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222371 (A133263 (n + 1)).toNat) (A222575 (n + 1))

end

end A222365.P2106803450004478943

/-! ## A222365.P9663958768123808851

`A222371(A167487(n)-5)%A222356(n+1)`
-/

namespace A222365.P9663958768123808851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222371 (A167487 n - 5).toNat) (A222356 (n + 1))

end

end A222365.P9663958768123808851

/-! ## A222365.P16250540830833759825

`A222371(A133263(n+1))+A000038(2*n+1)`
-/

namespace A222365.P16250540830833759825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A133263 (n + 1)).toNat + A000038 (2 * n + 1)

end

end A222365.P16250540830833759825

/-! ## A222365.P9028086128857342811

`A222371(A000096(n+1))+A185037(n)`
-/

namespace A222365.P9028086128857342811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A000096 (n + 1)).toNat + A185037 n

end

end A222365.P9028086128857342811

/-!
# A222366: Number of nX3 0..2 arrays with no more than floor(nX3/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222366, there is no canonical definition to state claims against.
-/

/-! ## A222366.P9968466621885215253

`A222371(∑[n+2]+4)`
-/

namespace A222366.P9968466621885215253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222366.P9968466621885215253

/-! ## A222366.P15362603870590005026

`A222371(A167614(n+1))+char[15]`
-/

namespace A222366.P15362603870590005026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222366.P15362603870590005026

/-! ## A222366.P2004648076609394938

`A326455(n)+A222371(A167614(n+1))`
-/

namespace A222366.P2004648076609394938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326455 n + A222371 (A167614 (n + 1)).toNat

end

end A222366.P2004648076609394938

/-! ## A222366.P13662324074085046375

`gcd(A000038(n), A222371(A167614(n+1)))`
-/

namespace A222366.P13662324074085046375
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222371 (A167614 (n + 1)).toNat)

end

end A222366.P13662324074085046375

/-! ## A222366.P17521308594030261820

`lcm(A020985(n), A222371(A167614(n+1)))`
-/

namespace A222366.P17521308594030261820
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A222371 (A167614 (n + 1)).toNat)

end

end A222366.P17521308594030261820

/-!
# A222367: Number of nX4 0..2 arrays with no more than floor(nX4/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222367, there is no canonical definition to state claims against.
-/

/-! ## A222367.P8732475148887521997

`A222371(A374004(n+1))`
-/

namespace A222367.P8732475148887521997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A374004 (n + 1)).toNat

end

end A222367.P8732475148887521997

/-! ## A222367.P3681033490073988009

`A222371(A141214(n)+7)`
-/

namespace A222367.P3681033490073988009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A141214 n + 7).toNat

end

end A222367.P3681033490073988009

/-! ## A222367.P3000486575762693904

`A222371(A052905(n)+9)`
-/

namespace A222367.P3000486575762693904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A052905 n + 9).toNat

end

end A222367.P3000486575762693904

/-! ## A222367.P17748119617343620897

`A222371(A055999(n)+10)`
-/

namespace A222367.P17748119617343620897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A055999 n + 10).toNat

end

end A222367.P17748119617343620897

/-! ## A222367.P16506375866440225939

`A222371(eq[5, A066657(n)])`
-/

namespace A222367.P16506375866440225939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222367.P16506375866440225939

/-!
# A222368: Number of nX5 0..2 arrays with no more than floor(nX5/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222368, there is no canonical definition to state claims against.
-/

/-! ## A222368.P9887090385628480023

`A222371(∑[n+4]+11)`
-/

namespace A222368.P9887090385628480023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A222368.P9887090385628480023

/-!
# A222369: Number of nX6 0..2 arrays with no more than floor(nX6/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222369, there is no canonical definition to state claims against.
-/

/-! ## A222369.P17075795854311877291

`A222371(A374007(n+1))`
-/

namespace A222369.P17075795854311877291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A374007 (n + 1)).toNat

end

end A222369.P17075795854311877291

/-! ## A222369.P2737733812190271512

`A222371(A166136(n+4))`
-/

namespace A222369.P2737733812190271512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A166136 (n + 4)).toNat

end

end A222369.P2737733812190271512

/-! ## A222369.P6631272847842357069

`A222371(A056115(n)+21)`
-/

namespace A222369.P6631272847842357069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A056115 n + 21).toNat

end

end A222369.P6631272847842357069

/-! ## A222369.P3563929815710012005

`A222371(A167499(n+4)+1)`
-/

namespace A222369.P3563929815710012005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A167499 (n + 4) + 1).toNat

end

end A222369.P3563929815710012005

/-! ## A222369.P10782525900692757362

`A222371(A167614(n+4)+3)`
-/

namespace A222369.P10782525900692757362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A167614 (n + 4) + 3).toNat

end

end A222369.P10782525900692757362

/-!
# A222370: Number of nX7 0..2 arrays with no more than floor(nX7/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222370, there is no canonical definition to state claims against.
-/

/-! ## A222370.P14533326405835380401

`A222371(A374008(n+1))`
-/

namespace A222370.P14533326405835380401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A374008 (n + 1)).toNat

end

end A222370.P14533326405835380401

/-! ## A222370.P10779330561011305239

`A222371(A167487(n+5))`
-/

namespace A222370.P10779330561011305239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A167487 (n + 5)).toNat

end

end A222370.P10779330561011305239

/-! ## A222370.P3137970168072446251

`A222371(A056119(n)+28)`
-/

namespace A222370.P3137970168072446251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A056119 n + 28).toNat

end

end A222370.P3137970168072446251

/-! ## A222370.P15128907467483017013

`A222371(eq[11, A066657(n)])`
-/

namespace A222370.P15128907467483017013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222370.P15128907467483017013

/-! ## A222370.P14712722007026068181

`A222371(A167614(n+5)+4)`
-/

namespace A222370.P14712722007026068181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222371 (A167614 (n + 5) + 4).toNat

end

end A222370.P14712722007026068181

/-!
# A222371: T(n,k)=Number of nXk 0..2 arrays with no more than floor(nXk/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222371, there is no canonical definition to state claims against.
-/

/-! ## A222371.P17243770392971228327

`A158366(A222479(n+1))`
-/

namespace A222371.P17243770392971228327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158366 (A222479 (n + 1)).toNat

end

end A222371.P17243770392971228327

/-! ## A222371.P8546361478850952716

`A222479(A000005(2^n))`
-/

namespace A222371.P8546361478850952716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (A000005 (2 ^ n)).toNat

end

end A222371.P8546361478850952716

/-! ## A222371.P7972986810506094384

`A351831(A222479(n+1)+1)`
-/

namespace A222371.P7972986810506094384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351831 (A222479 (n + 1) + 1).toNat

end

end A222371.P7972986810506094384

/-! ## A222371.P5329487963527890528

`A001222(2^A222479(n+1))`
-/

namespace A222371.P5329487963527890528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A222479 (n + 1) : ℤ))).toNat

end

end A222371.P5329487963527890528

/-! ## A222371.P13954686614080711170

`A005361(2^A222479(n+1))`
-/

namespace A222371.P13954686614080711170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A222479 (n + 1) : ℤ))).toNat

end

end A222371.P13954686614080711170

/-!
# A222372: Number of nX1 0..3 arrays with no more than floor(nX1/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222372, there is no canonical definition to state claims against.
-/

/-! ## A222372.P17260245148932744397

`A222479(∑[n]+1)`
-/

namespace A222372.P17260245148932744397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222479 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222372.P17260245148932744397

/-! ## A222372.P14012211295362569314

`or(gcd(2, n)-1, A222479(A000124(n)))`
-/

namespace A222372.P14012211295362569314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((Nat.gcd 2 n : ℤ) - 1) (A222479 (A000124 n).toNat)

end

end A222372.P14012211295362569314

/-! ## A222372.P17505129044167417066

`A222479(A000124(n))%A020707(n)`
-/

namespace A222372.P17505129044167417066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222479 (A000124 n).toNat) (A020707 n)

end

end A222372.P17505129044167417066

/-! ## A222372.P165932067415729942

`or(A000007(n), A222479(A000124(n)))`
-/

namespace A222372.P165932067415729942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222479 (A000124 n).toNat)

end

end A222372.P165932067415729942

/-! ## A222372.P8819104922998899983

`or(A085855(n), A222479(A000124(n)))`
-/

namespace A222372.P8819104922998899983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A085855 n) (A222479 (A000124 n).toNat)

end

end A222372.P8819104922998899983

/-!
# A222373: Number of nX2 0..3 arrays with no more than floor(nX2/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222373, there is no canonical definition to state claims against.
-/

/-! ## A222373.P16868642945460008710

`A222378(∑[n+1]+2)`
-/

namespace A222373.P16868642945460008710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222373.P16868642945460008710

/-! ## A222373.P7789224080565298428

`A222378(A133263(n+1))^floor(atan(n))`
-/

namespace A222373.P7789224080565298428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222378 (A133263 (n + 1)).toNat : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A222373.P7789224080565298428

/-! ## A222373.P16246307015829520565

`A222378(A133263(n+1))+A014083(n)`
-/

namespace A222373.P16246307015829520565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A133263 (n + 1)).toNat + A014083 n

end

end A222373.P16246307015829520565

/-! ## A222373.P4102727635370260185

`A222378(A000096(n)+3)+A014083(n)`
-/

namespace A222373.P4102727635370260185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A000096 n + 3).toNat + A014083 n

end

end A222373.P4102727635370260185

/-! ## A222373.P9962334291579060835

`gcd(A000038(n), A222378(A133263(n+1)))`
-/

namespace A222373.P9962334291579060835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A222378 (A133263 (n + 1)).toNat)

end

end A222373.P9962334291579060835

/-!
# A222374: Number of nX3 0..3 arrays with no more than floor(nX3/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222374, there is no canonical definition to state claims against.
-/

/-! ## A222374.P8577119216274116448

`A222378(∑[n+2]+4)`
-/

namespace A222374.P8577119216274116448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222374.P8577119216274116448

/-! ## A222374.P149836604628659548

`lcm((-1)^n, A222378(A167614(n+1)))`
-/

namespace A222374.P149836604628659548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A222378 (A167614 (n + 1)).toNat)

end

end A222374.P149836604628659548

/-! ## A222374.P1954073320324335397

`record[A222378(n+4)/A035324(n+1)]`
-/

namespace A222374.P1954073320324335397
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222378 (n + 4) : ℚ) / (A035324 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222374.P1954073320324335397

/-! ## A222374.P8856789157908836303

`A222378(A167614(n+1))+A011744(n)`
-/

namespace A222374.P8856789157908836303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A167614 (n + 1)).toNat + A011744 n

end

end A222374.P8856789157908836303

/-! ## A222374.P17609021968005009299

`A222378(A167614(n+1))+A025469(n)`
-/

namespace A222374.P17609021968005009299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A167614 (n + 1)).toNat + A025469 n

end

end A222374.P17609021968005009299

/-!
# A222375: Number of nX4 0..3 arrays with no more than floor(nX4/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222375, there is no canonical definition to state claims against.
-/

/-! ## A222375.P1401009059308739298

`A222378(∑[n+3]+7)`
-/

namespace A222375.P1401009059308739298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A222375.P1401009059308739298

/-! ## A222375.P12894814562322553598

`A222378(A374004(n+1))+A084904(n)`
-/

namespace A222375.P12894814562322553598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A374004 (n + 1)).toNat + A084904 n

end

end A222375.P12894814562322553598

/-! ## A222375.P10846196739275114328

`A222378(A374004(n+1))+A178798(n)`
-/

namespace A222375.P10846196739275114328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A374004 (n + 1)).toNat + A178798 n

end

end A222375.P10846196739275114328

/-! ## A222375.P12623513184487911072

`A222378(A374004(n+1))+A135297(n+1)`
-/

namespace A222375.P12623513184487911072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A374004 (n + 1)).toNat + A135297 (n + 1)

end

end A222375.P12623513184487911072

/-! ## A222375.P1447588021444561062

`A222378(A027379(n+2))%A152933(n+1)`
-/

namespace A222375.P1447588021444561062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222378 (A027379 (n + 2)).toNat) (A152933 (n + 1))

end

end A222375.P1447588021444561062

/-!
# A222376: Number of nX5 0..3 arrays with no more than floor(nX5/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222376, there is no canonical definition to state claims against.
-/

/-! ## A222376.P14909691778756402262

`A222378(∑[n+4]+11)`
-/

namespace A222376.P14909691778756402262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A222376.P14909691778756402262

/-!
# A222377: Number of nX6 0..3 arrays with no more than floor(nX6/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222377, there is no canonical definition to state claims against.
-/

/-! ## A222377.P10235743540358362974

`A222378(A374007(n+1))`
-/

namespace A222377.P10235743540358362974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A374007 (n + 1)).toNat

end

end A222377.P10235743540358362974

/-! ## A222377.P9847785209235994982

`A222378(A166136(n+4))`
-/

namespace A222377.P9847785209235994982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A166136 (n + 4)).toNat

end

end A222377.P9847785209235994982

/-! ## A222377.P7153325830907335770

`A222378(A056115(n)+21)`
-/

namespace A222377.P7153325830907335770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A056115 n + 21).toNat

end

end A222377.P7153325830907335770

/-! ## A222377.P15057504531978927863

`A222378(A167499(n+4)+1)`
-/

namespace A222377.P15057504531978927863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222378 (A167499 (n + 4) + 1).toNat

end

end A222377.P15057504531978927863

/-!
# A222378: T(n,k)=Number of nXk 0..3 arrays with no more than floor(nXk/2) elements unequal to at least one horizontal or vertical neighbor, with new values introduced in row major 0..3 order.

The programs for A222378, there is no canonical definition to state claims against.
-/

/-! ## A222378.P13024871684746923492

`A089867(A222587(n+1))`
-/

namespace A222378.P13024871684746923492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A222587 (n + 1)).toNat

end

end A222378.P13024871684746923492

/-! ## A222378.P2783022574327314018

`A089869(root(A222587(n+1), 2)²)`
-/

namespace A222378.P2783022574327314018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (SequenceMachineLib.roundAway (((A222587 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A222378.P2783022574327314018

/-! ## A222378.P3297148778208277448

`A089868(A222587(n+1)-char[16])`
-/

namespace A222378.P3297148778208277448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A222587 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A222378.P3297148778208277448

/-! ## A222378.P2341191730997624054

`A089869(A222587(n+1)+char[21])`
-/

namespace A222378.P2341191730997624054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A222587 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A222378.P2341191730997624054

/-! ## A222378.P16439023705198413331

`A089868(xor(char[16], A222587(n+1)))`
-/

namespace A222378.P16439023705198413331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A222587 (n + 1))).toNat

end

end A222378.P16439023705198413331

/-!
# A222379: Number of distinct functions f representable as x -> x^x^...^x with n x's and parentheses inserted in all possible ways giving result f(0)=0, with conventions that 0^0=1^0=1^1=1, 0^1=0.

The programs for A222379, there is no canonical definition to state claims against.
-/

/-! ## A222379.P14710127899081355950

`A222380(n)-A211192(n)`
-/

namespace A222379.P14710127899081355950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 n - A211192 n

end

end A222379.P14710127899081355950

/-! ## A222379.P2518238610572795945

`A222380(n)+A057428(n)*A211192(n)`
-/

namespace A222379.P2518238610572795945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222380 n + A057428 n * A211192 n

end

end A222379.P2518238610572795945

/-! ## A222379.P2792888426461196737

`A000081(n)-A222380(n)`
-/

namespace A222379.P2792888426461196737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n - A222380 n

end

end A222379.P2792888426461196737

/-! ## A222379.P432721524645172726

`(A000081(n)-A211192(n))/2`
-/

namespace A222379.P432721524645172726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000081 n - A211192 n : ℚ) / 2

end

end A222379.P432721524645172726

/-! ## A222379.P6103276647006340088

`∑[A174145(abs(1-n))]-A222380(n)`
-/

namespace A222379.P6103276647006340088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A222380 n

end

end A222379.P6103276647006340088

/-! ## A222379.P4868401830481172737

`A000081(n)+A057428(n)*A222380(n)`
-/

namespace A222379.P4868401830481172737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n + A057428 n * A222380 n

end

end A222379.P4868401830481172737

/-! ## A222379.P4858658937745336141

`∑[A174145(n)]-(A222380(n)+A174145(n))`
-/

namespace A222379.P4858658937745336141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A222380 n + A174145 n)

end

end A222379.P4858658937745336141

/-! ## A222379.P13036371472997768490

`A213674(n)-(A222380(n)+A213683(n))`
-/

namespace A222379.P13036371472997768490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - (A222380 n + A213683 n)

end

end A222379.P13036371472997768490

/-! ## A222379.P8208596839187799959

`A318753(A001105(n))-A222380(n)`
-/

namespace A222379.P8208596839187799959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A001105 n).toNat - A222380 n

end

end A222379.P8208596839187799959

/-! ## A222379.P6624920628584585279

`A318753(A046092(n))-A222380(n)`
-/

namespace A222379.P6624920628584585279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A046092 n).toNat - A222380 n

end

end A222379.P6624920628584585279

/-!
# A222380: Number of distinct functions f representable as x -> x^x^...^x with n x's and parentheses inserted in all possible ways giving result f(0)=1, with conventions that 0^0=1^0=1^1=1, 0^1=0.

The programs for A222380, there is no canonical definition to state claims against.
-/

/-! ## A222380.P6854725131029120067

`A222379(n)+A211192(n)`
-/

namespace A222380.P6854725131029120067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222379 n + A211192 n

end

end A222380.P6854725131029120067

/-! ## A222380.P17464517646568740399

`A211192(n)-A057428(n)*A222379(n)`
-/

namespace A222380.P17464517646568740399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211192 n - A057428 n * A222379 n

end

end A222380.P17464517646568740399

/-! ## A222380.P4232261941103725141

`A000081(n)-A222379(n)`
-/

namespace A222380.P4232261941103725141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n - A222379 n

end

end A222380.P4232261941103725141

/-! ## A222380.P12743000738503063245

`(A211192(n)+A000081(n))/2`
-/

namespace A222380.P12743000738503063245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211192 n + A000081 n : ℚ) / 2

end

end A222380.P12743000738503063245

/-! ## A222380.P3467410359747816143

`∑[A174145(abs(1-n))]-A222379(n)`
-/

namespace A222380.P3467410359747816143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A222379 n

end

end A222380.P3467410359747816143

/-! ## A222380.P17209075530071688785

`A000081(n)+A057428(n)*A222379(n)`
-/

namespace A222380.P17209075530071688785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n + A057428 n * A222379 n

end

end A222380.P17209075530071688785

/-! ## A222380.P2987623589609448833

`∑[A174145(n)]-(A222379(n)+A174145(n))`
-/

namespace A222380.P2987623589609448833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A222379 n + A174145 n)

end

end A222380.P2987623589609448833

/-! ## A222380.P12659678847677311254

`A213674(n)-(A222379(n)+A213683(n))`
-/

namespace A222380.P12659678847677311254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213674 n - (A222379 n + A213683 n)

end

end A222380.P12659678847677311254

/-! ## A222380.P15241465064991485648

`A106234(A133263(n))-A222379(A028310(n))`
-/

namespace A222380.P15241465064991485648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (A133263 n).toNat - A222379 (A028310 n).toNat

end

end A222380.P15241465064991485648

/-! ## A222380.P1522511274717115854

`A318753(A001105(n))-A222379(n)`
-/

namespace A222380.P1522511274717115854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A001105 n).toNat - A222379 n

end

end A222380.P1522511274717115854

/-! ## A222380.P3456628332446960753

`A318753(A046092(n))-A222379(n)`
-/

namespace A222380.P3456628332446960753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318753 (A046092 n).toNat - A222379 n

end

end A222380.P3456628332446960753

/-!
# A222381: Sum of neighbor maps: number of n X 2 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 n X 2 array.

The programs for A222381, there is no canonical definition to state claims against.
-/

/-! ## A222381.P17796181347137520497

`A220172(2*(n+1))`
-/

namespace A222381.P17796181347137520497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220172 (2 * (n + 1))

end

end A222381.P17796181347137520497

/-! ## A222381.P4610164792591769335

`record[A220172(A014681(n+1))]`
-/

namespace A222381.P4610164792591769335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220172 (A014681 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222381.P4610164792591769335

/-! ## A222381.P10406938263263200219

`record[A220172(A026741(n)+1)]`
-/

namespace A222381.P10406938263263200219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220172 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222381.P10406938263263200219

/-! ## A222381.P17570518854903691177

`record[A220172(A000265(n+1)+1)]`
-/

namespace A222381.P17570518854903691177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220172 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222381.P17570518854903691177

/-! ## A222381.P1714917580272473677

`record[A220172(1-A009947(n)+n)]`
-/

namespace A222381.P1714917580272473677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220172 (1 - A009947 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222381.P1714917580272473677

/-! ## A222381.P14769548987393717543

`record[A220172(n+1)/A176289(n)]`
-/

namespace A222381.P14769548987393717543
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220172 (n + 1) : ℚ) / (A176289 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222381.P14769548987393717543

/-! ## A222381.P15772457345078006269

`record[A220172(n+2)/A033999(n)]`
-/

namespace A222381.P15772457345078006269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220172 (n + 2) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222381.P15772457345078006269

/-! ## A222381.P18007841134128857491

`char[A004448(n)]*A220172(A103517(n))`
-/

namespace A222381.P18007841134128857491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004448 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A220172 (A103517 n).toNat

end

end A222381.P18007841134128857491

/-! ## A222381.P11517670293272160678

`A220172(A103517(n))+A000007(n+1)`
-/

namespace A222381.P11517670293272160678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220172 (A103517 n).toNat + A000007 (n + 1)

end

end A222381.P11517670293272160678

/-! ## A222381.P14426272445926946263

`A220172(A103517(n))-A000035(2*n)`
-/

namespace A222381.P14426272445926946263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220172 (A103517 n).toNat - A000035 (2 * n)

end

end A222381.P14426272445926946263

/-! ## A222381.P7751340911986550836

`A220172(A103517(n))-n*A000007(n)`
-/

namespace A222381.P7751340911986550836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220172 (A103517 n).toNat - (n : ℤ) * A000007 n

end

end A222381.P7751340911986550836

/-! ## A222381.P10110678981559133104

`A220172(A103517(n))/((-1)^A000005(n+1))²`
-/

namespace A222381.P10110678981559133104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220172 (A103517 n).toNat : ℚ) / ((-1 : ℚ) ^ (A000005 (n + 1) : ℤ)) ^ 2

end

end A222381.P10110678981559133104

/-!
# A222382: Sum of neighbor maps: number of n X 3 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 n X 3 array.

The programs for A222382, the canonical program `A222382.P18149104342996100947` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222382 has offset 1).

The definition of A222382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 110 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A222382.P18149104342996100947

`(A000079(n)²-A142150(n+1))*A000079(n+3)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A222382

/-- `(A000079(n)²-A142150(n+1))*A000079(n+3)` -/
def P18149104342996100947.Spec : Prop :=
  ∀ n, P18149104342996100947.a n = A222382 (n + 1)

theorem P18149104342996100947.correct : P18149104342996100947.Spec := by
  intro n
  simp only [A222382, Nat.add_sub_cancel]

end A222382

/-! ## A222382.P5086781370255575983

`(A000079(2*n)-A142150(n+1))*A000079(n+3)`
-/

namespace A222382.P5086781370255575983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000079 (2 * n) - A142150 (n + 1)) * A000079 (n + 3)

end

end A222382.P5086781370255575983

namespace A222382

/-- `(A000079(2*n)-A142150(n+1))*A000079(n+3)` -/
def P5086781370255575983.Spec : Prop :=
  ∀ n, P5086781370255575983.a n = A222382 (n + 1)

end A222382

/-! ## A222382.P2706801962395239366

`A222386(∑[n+3]+1)`
-/

namespace A222382.P2706801962395239366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222382.P2706801962395239366

namespace A222382

/-- `A222386(∑[n+3]+1)` -/
def P2706801962395239366.Spec : Prop :=
  ∀ n, P2706801962395239366.a n = A222382 (n + 1)

end A222382

/-! ## A222382.P10629182632631910605

`record[A222386(A198464(n+1))]`
-/

namespace A222382.P10629182632631910605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222382.P10629182632631910605

namespace A222382

/-- `record[A222386(A198464(n+1))]` -/
def P10629182632631910605.Spec : Prop :=
  ∀ n, P10629182632631910605.a n = A222382 (n + 1)

end A222382

/-!
# A222383: Sum of neighbor maps: number of nX4 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 nX4 array.

The programs for A222383, there is no canonical definition to state claims against.
-/

/-! ## A222383.P7305279282071552577

`A222386(A141214(n+1))`
-/

namespace A222383.P7305279282071552577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A141214 (n + 1)).toNat

end

end A222383.P7305279282071552577

/-! ## A222383.P14188956552510121434

`A222386(A027379(n+2))`
-/

namespace A222383.P14188956552510121434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A027379 (n + 2)).toNat

end

end A222383.P14188956552510121434

/-! ## A222383.P3247599735268958851

`A222386(A055998(n+2))`
-/

namespace A222383.P3247599735268958851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A055998 (n + 2)).toNat

end

end A222383.P3247599735268958851

/-! ## A222383.P4065489727460885136

`A222386(A155212(n)+5)`
-/

namespace A222383.P4065489727460885136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A155212 n + 5).toNat

end

end A222383.P4065489727460885136

/-!
# A222384: Sum of neighbor maps: number of nX5 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 nX5 array.

The programs for A222384, there is no canonical definition to state claims against.
-/

/-! ## A222384.P2288781365000071790

`A222386(∑[n+5]+6)`
-/

namespace A222384.P2288781365000071790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A222384.P2288781365000071790

/-!
# A222385: Sum of neighbor maps: number of nX6 binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 nX6 array.

The programs for A222385, there is no canonical definition to state claims against.
-/

/-! ## A222385.P11222738286513845512

`A222386(A052905(n+3))`
-/

namespace A222385.P11222738286513845512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A052905 (n + 3)).toNat

end

end A222385.P11222738286513845512

/-! ## A222385.P13233506336711946001

`A222386(A056119(n)+16)`
-/

namespace A222385.P13233506336711946001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A056119 n + 16).toNat

end

end A222385.P13233506336711946001

/-!
# A222386: T(n,k)=Sum of neighbor maps: number of nXk binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 nXk array.

The programs for A222386, there is no canonical definition to state claims against.
-/

/-! ## A222386.P16788523779532694913

`A222935(n+1)-A256974(A221072(n+1))`
-/

namespace A222386.P16788523779532694913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (n + 1) - A256974 (A221072 (n + 1)).toNat

end

end A222386.P16788523779532694913

/-! ## A222386.P13902074467339794374

`A222935(n+1)-A304589(A034523(3*n+4))`
-/

namespace A222386.P13902074467339794374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (n + 1) - A304589 (A034523 (3 * n + 4)).toNat

end

end A222386.P13902074467339794374

/-! ## A222386.P4519294108207467

`A222935(A381225(n))`
-/

namespace A222386.P4519294108207467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A381225 n).toNat

end

end A222386.P4519294108207467

/-! ## A222386.P8183387070738838019

`A222935(∑[A287378(n)])`
-/

namespace A222386.P8183387070738838019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A222386.P8183387070738838019

/-! ## A222386.P8809265981019528828

`A222935(A001104(n+1))`
-/

namespace A222386.P8809265981019528828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222935 (A001104 (n + 1)).toNat

end

end A222386.P8809265981019528828

/-!
# A222387: Sum of neighbor maps: number of 2Xn binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 2Xn array.

The programs for A222387, there is no canonical definition to state claims against.
-/

/-! ## A222387.P6133639013290457046

`A222386(∑[n+1]+2)`
-/

namespace A222387.P6133639013290457046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222387.P6133639013290457046

/-! ## A222387.P13684872391638696289

`record[root(A222386(n+3), A214676(n+2))]`
-/

namespace A222387.P13684872391638696289
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A222386 (n + 3) : ℝ) ^ (1 / (A214676 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222387.P13684872391638696289

/-!
# A222388: Sum of neighbor maps: number of 3Xn binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 3Xn array.

The programs for A222388, there is no canonical definition to state claims against.
-/

/-! ## A222388.P11854521733079392552

`A222386(∑[n+2]+4)`
-/

namespace A222388.P11854521733079392552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222388.P11854521733079392552

/-! ## A222388.P4605177600824559345

`lcm(2, A222386(A167614(n+1)))`
-/

namespace A222388.P4605177600824559345
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A222386 (A167614 (n + 1)).toNat)

end

end A222388.P4605177600824559345

/-! ## A222388.P15852922793411659274

`record[A222386(n+4)/A286781(n)]`
-/

namespace A222388.P15852922793411659274
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222386 (n + 4) : ℚ) / (A286781 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222388.P15852922793411659274

/-! ## A222388.P720059015123030099

`record[A010054(n+1)*A222386(n+4)]`
-/

namespace A222388.P720059015123030099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (n + 1) * A222386 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222388.P720059015123030099

/-! ## A222388.P3041539063072293158

`record[A222386(n+4)/A039816(n+1)]`
-/

namespace A222388.P3041539063072293158
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222386 (n + 4) : ℚ) / (A039816 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A222388.P3041539063072293158

/-!
# A222389: Sum of neighbor maps: number of 4Xn binary arrays indicating the locations of corresponding elements equal to the sum mod 3 of their horizontal and antidiagonal neighbors in a random 0..2 4Xn array.

The programs for A222389, there is no canonical definition to state claims against.
-/

/-! ## A222389.P8184815030112901961

`A222386(A141214(n)+7)`
-/

namespace A222389.P8184815030112901961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A141214 n + 7).toNat

end

end A222389.P8184815030112901961

/-! ## A222389.P7493670406098396089

`A222386(A052905(n)+9)`
-/

namespace A222389.P7493670406098396089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A052905 n + 9).toNat

end

end A222389.P7493670406098396089

/-! ## A222389.P12100457527320632503

`A222386(A055999(n)+10)`
-/

namespace A222389.P12100457527320632503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (A055999 n + 10).toNat

end

end A222389.P12100457527320632503

/-! ## A222389.P16947947324174146462

`A222386(eq[5, A066657(n)])`
-/

namespace A222389.P16947947324174146462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222389.P16947947324174146462

/-! ## A222389.P2605742685390388068

`A222386(Δ[A005286(n)]+5)`
-/

namespace A222389.P2605742685390388068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222386 (f1 (n + 1) - f1 n + 5).toNat

end

end A222389.P2605742685390388068

/-!
# A222390: Nonnegative integers m such that 10*m*(m+1)+1 is a square.

The programs for A222390, the canonical program `A222390.P8927852132431872865` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222390 has offset 1).

The definition of A222390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222390.P8927852132431872865

`a(n-1)+38*a(n-2)-38*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=3, a(2)=15, a(3)=132, a(4)=588`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A222390

/-- `a(n-1)+38*a(n-2)-38*a(n-3)-a(n-4)+a(n-5)` -/
def P8927852132431872865.Spec : Prop :=
  ∀ n, P8927852132431872865.a n = A222390 (n + 1)

theorem P8927852132431872865.correct : P8927852132431872865.Spec := by
  intro n
  simp only [A222390, Nat.add_sub_cancel]

end A222390

/-! ## A222390.P17562316631734781415

`floor(A221875(n+1)/2)`
-/

namespace A222390.P17562316631734781415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A221875 (n + 1) : ℚ) / 2⌋

end

end A222390.P17562316631734781415

namespace A222390

/-- `floor(A221875(n+1)/2)` -/
def P17562316631734781415.Spec : Prop :=
  ∀ n, P17562316631734781415.a n = A222390 (n + 1)

end A222390

/-! ## A222390.P3347631884949281827

`(A295334(A047233(n+1))-1)/2`
-/

namespace A222390.P3347631884949281827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295334 (A047233 (n + 1)).toNat - 1 : ℚ) / 2

end

end A222390.P3347631884949281827

namespace A222390

/-- `(A295334(A047233(n+1))-1)/2` -/
def P3347631884949281827.Spec : Prop :=
  ∀ n, P3347631884949281827.a n = (A222390 (n + 1) : ℚ)

end A222390

/-! ## A222390.P8952186888787600385

`A005668(n+1)-A254332(n+1)`
-/

namespace A222390.P8952186888787600385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (n + 1) - A254332 (n + 1)

end

end A222390.P8952186888787600385

namespace A222390

/-- `A005668(n+1)-A254332(n+1)` -/
def P8952186888787600385.Spec : Prop :=
  ∀ n, P8952186888787600385.a n = A222390 (n + 1)

end A222390

/-! ## A222390.P16344799978545757525

`∑[A295334(A008486(n))]-A254332(n+1)`
-/

namespace A222390.P16344799978545757525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A254332 (n + 1)

end

end A222390.P16344799978545757525

namespace A222390

/-- `∑[A295334(A008486(n))]-A254332(n+1)` -/
def P16344799978545757525.Spec : Prop :=
  ∀ n, P16344799978545757525.a n = A222390 (n + 1)

end A222390

/-! ## A222390.P13850417521182239756

`∑[A295334(A008585(n))]-A254332(n+1)`
-/

namespace A222390.P13850417521182239756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A254332 (n + 1)

end

end A222390.P13850417521182239756

namespace A222390

/-- `∑[A295334(A008585(n))]-A254332(n+1)` -/
def P13850417521182239756.Spec : Prop :=
  ∀ n, P13850417521182239756.a n = A222390 (n + 1)

end A222390

/-! ## A222390.P245772043563593268

`∑[gcd(A084070(n), A132593(n))]`
-/

namespace A222390.P245772043563593268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084070 n) (A132593 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222390.P245772043563593268

namespace A222390

/-- `∑[gcd(A084070(n), A132593(n))]` -/
def P245772043563593268.Spec : Prop :=
  ∀ n, (P245772043563593268.a n : ℤ) = A222390 (n + 1)

end A222390

/-!
# A222393: Nonnegative integers m such that 18*m*(m+1)+1 is a square.

The programs for A222393, the canonical program `A222393.P9334340232448556840` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A222393 has offset 1).

The definition of A222393 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A222393.P9334340232448556840

`a(n-1)+34*a(n-2)-34*a(n-3)-a(n-4)+a(n-5)` with `a(0)=0, a(1)=4, a(2)=12, a(3)=152, a(4)=424`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A222393

/-- `a(n-1)+34*a(n-2)-34*a(n-3)-a(n-4)+a(n-5)` -/
def P9334340232448556840.Spec : Prop :=
  ∀ n, P9334340232448556840.a n = A222393 (n + 1)

theorem P9334340232448556840.correct : P9334340232448556840.Spec := by
  intro n
  simp only [A222393, Nat.add_sub_cancel]

end A222393

/-! ## A222393.P9359924090446030639

`round(A124124(A338062(n+1))/3)`
-/

namespace A222393.P9359924090446030639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A124124 (A338062 (n + 1)).toNat : ℚ) / 3)

end

end A222393.P9359924090446030639

namespace A222393

/-- `round(A124124(A338062(n+1))/3)` -/
def P9359924090446030639.Spec : Prop :=
  ∀ n, P9359924090446030639.a n = A222393 (n + 1)

end A222393

/-! ## A222393.P5681097563787385534

`∑[A005319(n)/A153284(n+1)]`
-/

namespace A222393.P5681097563787385534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005319 n : ℚ) / (A153284 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222393.P5681097563787385534

namespace A222393

/-- `∑[A005319(n)/A153284(n+1)]` -/
def P5681097563787385534.Spec : Prop :=
  ∀ n, P5681097563787385534.a n = (A222393 (n + 1) : ℚ)

end A222393

/-! ## A222393.P2105014504473755842

`∑[(A054490(n)-A002315(n))/gcd(3, n%2)]`
-/

namespace A222393.P2105014504473755842
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054490 n - A002315 n : ℚ) / (Nat.gcd 3 (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222393.P2105014504473755842

namespace A222393

/-- `∑[(A054490(n)-A002315(n))/gcd(3, n%2)]` -/
def P2105014504473755842.Spec : Prop :=
  ∀ n, P2105014504473755842.a n = (A222393 (n + 1) : ℚ)

end A222393

/-! ## A222393.P5777721621944380190

`∑[A163271(2*n+1)/A073575(3*n+2)]`
-/

namespace A222393.P5777721621944380190
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163271 (2 * n + 1) : ℚ) / (A073575 (3 * n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A222393.P5777721621944380190

namespace A222393

/-- `∑[A163271(2*n+1)/A073575(3*n+2)]` -/
def P5777721621944380190.Spec : Prop :=
  ∀ n, P5777721621944380190.a n = (A222393 (n + 1) : ℚ)

end A222393

/-!
# A222394: Number of n X n 0..2 arrays with exactly floor(n X n/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222394, there is no canonical definition to state claims against.
-/

/-! ## A222394.P12448694636457349576

`A222402(∑[4*n]+1)`
-/

namespace A222394.P12448694636457349576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222394.P12448694636457349576

/-! ## A222394.P5115856794030259360

`A222402(A001844(n))+char[8]`
-/

namespace A222394.P5115856794030259360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222394.P5115856794030259360

/-! ## A222394.P8528258181036355884

`A326627(n)+A222402(A001844(n))`
-/

namespace A222394.P8528258181036355884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n + A222402 (A001844 n).toNat

end

end A222394.P8528258181036355884

/-! ## A222394.P8824225846156576355

`A014802(n)*A222402(A001844(n))`
-/

namespace A222394.P8824225846156576355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014802 n * A222402 (A001844 n).toNat

end

end A222394.P8824225846156576355

/-!
# A222395: Number of nX1 0..2 arrays with exactly floor(nX1/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222395, there is no canonical definition to state claims against.
-/

/-! ## A222395.P6959771938615750616

`A222690(∑[n]+1)`
-/

namespace A222395.P6959771938615750616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222690 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A222395.P6959771938615750616

/-! ## A222395.P11794020802827739987

`A222690(A000124(n))%A198275(n)`
-/

namespace A222395.P11794020802827739987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A222690 (A000124 n).toNat) (A198275 n)

end

end A222395.P11794020802827739987

/-! ## A222395.P10163336881582208979

`or(A000007(n), A222690(A000124(n)))`
-/

namespace A222395.P10163336881582208979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A222690 (A000124 n).toNat)

end

end A222395.P10163336881582208979

/-! ## A222395.P18020018748323756189

`and(A002321(n+1), A222690(A000124(n)))`
-/

namespace A222395.P18020018748323756189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002321 (n + 1)) (A222690 (A000124 n).toNat)

end

end A222395.P18020018748323756189

/-! ## A222395.P12237130976467722783

`and(A003261(n+1), A222690(A000124(n)))`
-/

namespace A222395.P12237130976467722783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003261 (n + 1)) (A222690 (A000124 n).toNat)

end

end A222395.P12237130976467722783

/-!
# A222396: Number of nX2 0..2 arrays with exactly floor(nX2/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222396, there is no canonical definition to state claims against.
-/

/-! ## A222396.P10843550877617300675

`A222402(A133263(n*∏{p}[n+1, C(#%n, #)]+1))`
-/

namespace A222396.P10843550877617300675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A133263 (n * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p) + 1)).toNat

end

end A222396.P10843550877617300675

/-! ## A222396.P1805575774238184159

`A222402(A133263(A234586(n+1)))`
-/

namespace A222396.P1805575774238184159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A133263 (A234586 (n + 1)).toNat).toNat

end

end A222396.P1805575774238184159

/-! ## A222396.P7950162671622792548

`A222402(A000217(A014681(n))+2)`
-/

namespace A222396.P7950162671622792548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A000217 (A014681 n).toNat + 2).toNat

end

end A222396.P7950162671622792548

/-! ## A222396.P3292985956074546637

`A222402(∑[n+1]+2)`
-/

namespace A222396.P3292985956074546637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A222396.P3292985956074546637

/-! ## A222396.P13026509740123995604

`A222402(A133263(n+1))+char[16]`
-/

namespace A222396.P13026509740123995604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222396.P13026509740123995604

/-!
# A222397: Number of nX3 0..2 arrays with exactly floor(nX3/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222397, there is no canonical definition to state claims against.
-/

/-! ## A222397.P3176997816639026275

`A222402(∑[n+2]+4)`
-/

namespace A222397.P3176997816639026275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A222397.P3176997816639026275

/-! ## A222397.P14383135951529708898

`A222402(A167614(n+1))+char[16]`
-/

namespace A222397.P14383135951529708898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222397.P14383135951529708898

/-! ## A222397.P6906414857955495251

`A222402(A340266(n+1)+1)+char[15]`
-/

namespace A222397.P6906414857955495251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A340266 (n + 1) + 1).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A222397.P6906414857955495251

/-! ## A222397.P7701343493947323050

`A256974(n)+A222402(A167614(n+1))`
-/

namespace A222397.P7701343493947323050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A222402 (A167614 (n + 1)).toNat

end

end A222397.P7701343493947323050

/-! ## A222397.P3246508548657563888

`A054977(n)*A222402(A167614(n+1))`
-/

namespace A222397.P3246508548657563888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A222402 (A167614 (n + 1)).toNat

end

end A222397.P3246508548657563888

/-!
# A222398: Number of nX4 0..2 arrays with exactly floor(nX4/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222398, there is no canonical definition to state claims against.
-/

/-! ## A222398.P1599955970642383341

`A222402(A374004(n+1))`
-/

namespace A222398.P1599955970642383341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A374004 (n + 1)).toNat

end

end A222398.P1599955970642383341

/-! ## A222398.P10198025320009661598

`A222402(A141214(n)+7)`
-/

namespace A222398.P10198025320009661598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A141214 n + 7).toNat

end

end A222398.P10198025320009661598

/-! ## A222398.P13758659853251874424

`A222402(A052905(n)+9)`
-/

namespace A222398.P13758659853251874424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A052905 n + 9).toNat

end

end A222398.P13758659853251874424

/-! ## A222398.P8222684882493633790

`A222402(A055999(n)+10)`
-/

namespace A222398.P8222684882493633790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A055999 n + 10).toNat

end

end A222398.P8222684882493633790

/-! ## A222398.P7091115153325012874

`A222402(eq[5, A066657(n)])`
-/

namespace A222398.P7091115153325012874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222398.P7091115153325012874

/-!
# A222399: Number of nX5 0..2 arrays with exactly floor(nX5/2) elements unequal to at least one king-move neighbor, with new values introduced in row major 0..2 order.

The programs for A222399, there is no canonical definition to state claims against.
-/

/-! ## A222399.P4060038170275607191

`A222402(A374005(n+1))`
-/

namespace A222399.P4060038170275607191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A374005 (n + 1)).toNat

end

end A222399.P4060038170275607191

/-! ## A222399.P8123407171799028168

`A222402(A167499(n+3))`
-/

namespace A222399.P8123407171799028168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A167499 (n + 3)).toNat

end

end A222399.P8123407171799028168

/-! ## A222399.P17996241921999735385

`A222402(A155212(n)+13)`
-/

namespace A222399.P17996241921999735385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A155212 n + 13).toNat

end

end A222399.P17996241921999735385

/-! ## A222399.P11063733085134894439

`A222402(A056000(n)+15)`
-/

namespace A222399.P11063733085134894439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (A056000 n + 15).toNat

end

end A222399.P11063733085134894439

/-! ## A222399.P12113238185072531725

`A222402(eq[7, A066657(n)])`
-/

namespace A222399.P12113238185072531725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222402 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A222399.P12113238185072531725

