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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A145400: Number of 2-factors in P_6 X P_n.

The programs for A145400, there is no canonical definition to state claims against.
-/

/-! ## A145400.P2053307575444161136

`A352318(A255490(n))-A152285(n)`
-/

namespace A145400.P2053307575444161136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352318 (A255490 n).toNat - A152285 n

end

end A145400.P2053307575444161136

/-!
# A145401: Number of Hamiltonian cycles in P_6 X P_n.

The programs for A145401, there is no canonical definition to state claims against.
-/

/-! ## A145401.P5007877560487794344

`record[A321172(A107576(n+1))]`
-/

namespace A145401.P5007877560487794344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321172 (A107576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145401.P5007877560487794344

/-! ## A145401.P2940977066964911926

`record[A321172(n+2)%A103599(n+1)]`
-/

namespace A145401.P2940977066964911926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A321172 (n + 2)) (A103599 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145401.P2940977066964911926

/-!
# A145402: Number of Hamiltonian paths in P_6 X P_n.

The programs for A145402, there is no canonical definition to state claims against.
-/

/-! ## A145402.P3016877084606550891

`A332307(A374007(n+1))`
-/

namespace A145402.P3016877084606550891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A374007 (n + 1)).toNat

end

end A145402.P3016877084606550891

/-! ## A145402.P5220119972268737816

`A332307(A052905(n+3))`
-/

namespace A145402.P5220119972268737816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A052905 (n + 3)).toNat

end

end A145402.P5220119972268737816

/-! ## A145402.P12497317235867989976

`A332307(A155212(n+2)+3)`
-/

namespace A145402.P12497317235867989976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A155212 (n + 2) + 3).toNat

end

end A145402.P12497317235867989976

/-! ## A145402.P688346720250526986

`A332307(A000124(n+5)+5)`
-/

namespace A145402.P688346720250526986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A000124 (n + 5) + 5).toNat

end

end A145402.P688346720250526986

/-! ## A145402.P1731589893146739732

`A332307(A000217(n+5)+6)`
-/

namespace A145402.P1731589893146739732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332307 (A000217 (n + 5) + 6).toNat

end

end A145402.P1731589893146739732

/-!
# A145403: Number of nonintersecting rook paths joining opposite corners of 6 X n board.

The programs for A145403, there is no canonical definition to state claims against.
-/

/-! ## A145403.P5471283001335776909

`A064298(A374007(n+1))`
-/

namespace A145403.P5471283001335776909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A374007 (n + 1)).toNat

end

end A145403.P5471283001335776909

/-! ## A145403.P6514529330311605072

`A064298(A052905(n+3))`
-/

namespace A145403.P6514529330311605072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (A052905 (n + 3)).toNat

end

end A145403.P6514529330311605072

/-! ## A145403.P1025731893806486542

`A064298(eq[3, A219347(n)])`
-/

namespace A145403.P1025731893806486542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145403.P1025731893806486542

/-! ## A145403.P9877403011074906755

`A064298(eq[5, A193592(n)])`
-/

namespace A145403.P9877403011074906755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145403.P9877403011074906755

/-! ## A145403.P13566336410460794527

`A064298(eq[8, A185782(n+1)])`
-/

namespace A145403.P13566336410460794527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064298 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145403.P13566336410460794527

/-!
# A145423: Decimal expansion of Sum_{n>=1} (-1)^(n-1)/(n^2-1/4)^2.

The programs for A145423, there is no canonical definition to state claims against.
-/

/-! ## A145423.P11465873288065506683

`dr((A006512(n+1)-1)²)-A019692(n)`
-/

namespace A145423.P11465873288065506683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot ((A006512 (n + 1) - 1) ^ 2) : ℤ) - A019692 (n + 1)

end

end A145423.P11465873288065506683

/-!
# A145426: Decimal expansion of Sum_{k>=0} (k!/(k+2)!)^2.

The programs for A145426, there is no canonical definition to state claims against.
-/

/-! ## A145426.P17689017388716921311

`A195055(n+1)`
-/

namespace A145426.P17689017388716921311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195055 (n + 1 + 1)

end

end A145426.P17689017388716921311

/-! ## A145426.P1486376455468060901

`Δ[A028310(∑[A195055(n)])]`
-/

namespace A145426.P1486376455468060901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195055 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A145426.P1486376455468060901

/-!
# A145440: Primes of the form 8^k + 9.

The programs for A145440, there is no canonical definition to state claims against.
-/

/-! ## A145440.P2091702572932171563

`A104070(A316492(n+1)+2)`
-/

namespace A145440.P2091702572932171563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104070 (A316492 (n + 1) + 2).toNat

end

end A145440.P2091702572932171563

/-!
# A145442: Multipliers of SI prefixes, in increasing order.

The programs for A145442, there is no canonical definition to state claims against.
-/

/-! ## A145442.P708252001846815701

`a(2%n)*a(n-1)` with `a(0)=10`
-/

namespace A145442.P708252001846815701
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [10] fun n a =>
  a (2 % n) * a (n - 1)

end

end A145442.P708252001846815701

/-! ## A145442.P15168251885915629622

`10^A308012(n+1)`
-/

namespace A145442.P15168251885915629622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A308012 (n + 1) : ℤ)

end

end A145442.P15168251885915629622

/-! ## A145442.P5267362875510190682

`A004647(A050625(n+1))`
-/

namespace A145442.P5267362875510190682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004647 (A050625 (n + 1)).toNat

end

end A145442.P5267362875510190682

/-! ## A145442.P12876737627560263357

`10^A000005(A025579(n+1))`
-/

namespace A145442.P12876737627560263357
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A000005 (A025579 (n + 1)).toNat : ℤ)

end

end A145442.P12876737627560263357

/-!
# A145444: Dirichlet g.f.: (1+3/4^s+2/8^s)*zeta(s)^3.

The programs for A145444, there is no canonical definition to state claims against.
-/

/-! ## A145444.P12067351788290432857

`A158327(n+1)+A145511(n+1)`
-/

namespace A145444.P12067351788290432857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158327 (n + 1) + A145511 (n + 1)

end

end A145444.P12067351788290432857

/-! ## A145444.P5668582139424982873

`A158801(n+1)+A145501(n+1)`
-/

namespace A145444.P5668582139424982873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158801 (n + 1) + A145501 (n + 1)

end

end A145444.P5668582139424982873

/-! ## A145444.P14105840615505888872

`A158327(n+1)+A145399(A026741(n+1))`
-/

namespace A145444.P14105840615505888872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158327 (n + 1) + A145399 (A026741 (n + 1)).toNat

end

end A145444.P14105840615505888872

/-! ## A145444.P10676710995587135363

`A145511(n+1)-A158360(A259445(n+1))`
-/

namespace A145444.P10676710995587135363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (n + 1) - A158360 (A259445 (n + 1)).toNat

end

end A145444.P10676710995587135363

/-! ## A145444.P17683096702590340817

`A145501(n+1)+A158360(n+1)+A158327(n+1)`
-/

namespace A145444.P17683096702590340817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145501 (n + 1) + (A158360 (n + 1) + A158327 (n + 1))

end

end A145444.P17683096702590340817

/-! ## A145444.P17283362944387191849

`A145511(n+1)+A158801(n+1)-A158360(n+1)`
-/

namespace A145444.P17283362944387191849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145511 (n + 1) + (A158801 (n + 1) - A158360 (n + 1))

end

end A145444.P17283362944387191849

/-!
# A145445: a(n) = the smallest square > n-th prime.

The programs for A145445, the canonical program `A145445.P2754052225407888285` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145445 has offset 1).

The definition of A145445 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145445.P2754052225407888285

`A104103(n+1)²`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145445

/-- `A104103(n+1)²` -/
def P2754052225407888285.Spec : Prop :=
  ∀ n, P2754052225407888285.a n = A145445 (n + 1)

theorem P2754052225407888285.correct : P2754052225407888285.Spec := by
  intro n
  simp only [A145445, Nat.add_sub_cancel]

end A145445

/-! ## A145445.P13520951253420485716

`ceil(sqrt(Δ[A007504(n)]))²`
-/

namespace A145445.P13520951253420485716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (f1 (n + 1) - f1 n : ℝ)⌉ ^ 2

end

end A145445.P13520951253420485716

namespace A145445

/-- `ceil(sqrt(Δ[A007504(n)]))²` -/
def P13520951253420485716.Spec : Prop :=
  ∀ n, P13520951253420485716.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P1824331893945967998

`(A000006(n+1)+1)²`
-/

namespace A145445.P1824331893945967998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000006 (n + 1) + 1) ^ 2

end

end A145445.P1824331893945967998

namespace A145445

/-- `(A000006(n+1)+1)²` -/
def P1824331893945967998.Spec : Prop :=
  ∀ n, P1824331893945967998.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P4460534019048606660

`(n+1-A103416(n))²`
-/

namespace A145445.P4460534019048606660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A103416 n) ^ 2

end

end A145445.P4460534019048606660

namespace A145445

/-- `(n+1-A103416(n))²` -/
def P4460534019048606660.Spec : Prop :=
  ∀ n, P4460534019048606660.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P1507611515469947665

`(A161188(n+1)-n)²`
-/

namespace A145445.P1507611515469947665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A161188 (n + 1) - (n : ℤ)) ^ 2

end

end A145445.P1507611515469947665

namespace A145445

/-- `(A161188(n+1)-n)²` -/
def P1507611515469947665.Spec : Prop :=
  ∀ n, P1507611515469947665.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P4979143581296127083

`floor(sqrt(A145826(n+1)))²`
-/

namespace A145445.P4979143581296127083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A145826 (n + 1)) ^ 2

end

end A145445.P4979143581296127083

namespace A145445

/-- `floor(sqrt(A145826(n+1)))²` -/
def P4979143581296127083.Spec : Prop :=
  ∀ n, P4979143581296127083.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P13877547340796761882

`ceil(sqrt(A000040(n+1)))²`
-/

namespace A145445.P13877547340796761882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000040 (n + 1) : ℝ)⌉ ^ 2

end

end A145445.P13877547340796761882

namespace A145445

/-- `ceil(sqrt(A000040(n+1)))²` -/
def P13877547340796761882.Spec : Prop :=
  ∀ n, P13877547340796761882.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P16034919843114930103

`ceil(sqrt(A008864(n+1)))²`
-/

namespace A145445.P16034919843114930103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A008864 (n + 1) : ℝ)⌉ ^ 2

end

end A145445.P16034919843114930103

namespace A145445

/-- `ceil(sqrt(A008864(n+1)))²` -/
def P16034919843114930103.Spec : Prop :=
  ∀ n, P16034919843114930103.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P2321722319799455654

`ceil(sqrt(A028815(n+1)))²`
-/

namespace A145445.P2321722319799455654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A028815 (n + 1) : ℝ)⌉ ^ 2

end

end A145445.P2321722319799455654

namespace A145445

/-- `ceil(sqrt(A028815(n+1)))²` -/
def P2321722319799455654.Spec : Prop :=
  ∀ n, P2321722319799455654.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P1867338412854778433

`ceil(sqrt(A082542(n+1)))²`
-/

namespace A145445.P1867338412854778433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A082542 (n + 1) : ℝ)⌉ ^ 2

end

end A145445.P1867338412854778433

namespace A145445

/-- `ceil(sqrt(A082542(n+1)))²` -/
def P1867338412854778433.Spec : Prop :=
  ∀ n, P1867338412854778433.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P3005199182610132046

`ceil(sqrt(A175216(n+1)))²`
-/

namespace A145445.P3005199182610132046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A175216 (n + 1) : ℝ)⌉ ^ 2

end

end A145445.P3005199182610132046

namespace A145445

/-- `ceil(sqrt(A175216(n+1)))²` -/
def P3005199182610132046.Spec : Prop :=
  ∀ n, P3005199182610132046.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P13629152474742366071

`(sqrt(A065730(n+1))+1)²`
-/

namespace A145445.P13629152474742366071
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.sqrt (A065730 (n + 1) : ℝ) + 1) ^ 2

end

end A145445.P13629152474742366071

namespace A145445

/-- `(sqrt(A065730(n+1))+1)²` -/
def P13629152474742366071.Spec : Prop :=
  ∀ n, P13629152474742366071.a n = (A145445 (n + 1) : ℝ)

end A145445

/-! ## A145445.P16782835078518510257

`ceil(sqrt(sqrt(A001248(n+1))))²`
-/

namespace A145445.P16782835078518510257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A001248 (n + 1) : ℝ))⌉ ^ 2

end

end A145445.P16782835078518510257

namespace A145445

/-- `ceil(sqrt(sqrt(A001248(n+1))))²` -/
def P16782835078518510257.Spec : Prop :=
  ∀ n, P16782835078518510257.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P1719801606314498351

`ceil(sqrt(sqrt(A036689(n+1))))²`
-/

namespace A145445.P1719801606314498351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A036689 (n + 1) : ℝ))⌉ ^ 2

end

end A145445.P1719801606314498351

namespace A145445

/-- `ceil(sqrt(sqrt(A036689(n+1))))²` -/
def P1719801606314498351.Spec : Prop :=
  ∀ n, P1719801606314498351.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P554154835941079828

`ceil(sqrt(sqrt(A036690(n+1))))²`
-/

namespace A145445.P554154835941079828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A036690 (n + 1) : ℝ))⌉ ^ 2

end

end A145445.P554154835941079828

namespace A145445

/-- `ceil(sqrt(sqrt(A036690(n+1))))²` -/
def P554154835941079828.Spec : Prop :=
  ∀ n, P554154835941079828.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P12335678983043691525

`ceil(sqrt(sqrt(A049001(n+1))))²`
-/

namespace A145445.P12335678983043691525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A049001 (n + 1) : ℝ))⌉ ^ 2

end

end A145445.P12335678983043691525

namespace A145445

/-- `ceil(sqrt(sqrt(A049001(n+1))))²` -/
def P12335678983043691525.Spec : Prop :=
  ∀ n, P12335678983043691525.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P95622061306137883

`ceil(sqrt(sqrt(A054270(n+1))))²`
-/

namespace A145445.P95622061306137883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A054270 (n + 1) : ℝ))⌉ ^ 2

end

end A145445.P95622061306137883

namespace A145445

/-- `ceil(sqrt(sqrt(A054270(n+1))))²` -/
def P95622061306137883.Spec : Prop :=
  ∀ n, P95622061306137883.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P6681134457157537812

`ceil(sqrt(sqrt(A084920(n+1))))²`
-/

namespace A145445.P6681134457157537812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.sqrt (A084920 (n + 1) : ℝ))⌉ ^ 2

end

end A145445.P6681134457157537812

namespace A145445

/-- `ceil(sqrt(sqrt(A084920(n+1))))²` -/
def P6681134457157537812.Spec : Prop :=
  ∀ n, P6681134457157537812.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P14755480423931367100

`A051494(A096494(n+1))`
-/

namespace A145445.P14755480423931367100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (A096494 (n + 1)).toNat

end

end A145445.P14755480423931367100

namespace A145445

/-- `A051494(A096494(n+1))` -/
def P14755480423931367100.Spec : Prop :=
  ∀ n, P14755480423931367100.a n = A145445 (n + 1)

end A145445

/-! ## A145445.P4412189053106961633

`A079097(A117767(n+1))`
-/

namespace A145445.P4412189053106961633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (A117767 (n + 1)).toNat

end

end A145445.P4412189053106961633

namespace A145445

/-- `A079097(A117767(n+1))` -/
def P4412189053106961633.Spec : Prop :=
  ∀ n, P4412189053106961633.a n = A145445 (n + 1)

end A145445

/-!
# A145446: a(n) = the smallest cube > n-th prime.

The programs for A145446, the canonical program `A145446.P12610412576762922366` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145446 has offset 1).

The definition of A145446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145446.P12610412576762922366

`A104147(n)^3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145446

/-- `A104147(n)^3` -/
def P12610412576762922366.Spec : Prop :=
  ∀ n, P12610412576762922366.a n = A145446 (n + 1)

theorem P12610412576762922366.correct : P12610412576762922366.Spec := by
  intro n
  simp only [A145446, Nat.add_sub_cancel]

end A145446

/-! ## A145446.P11629506614411074796

`A048763(p?[comp[n²]])`
-/

namespace A145446.P11629506614411074796
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A145446.P11629506614411074796

namespace A145446

/-- `A048763(p?[comp[n²]])` -/
def P11629506614411074796.Spec : Prop :=
  ∀ n, P11629506614411074796.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P17404923953296093409

`(A263846(n+1)+1)^3`
-/

namespace A145446.P17404923953296093409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A263846 (n + 1) + 1) ^ 3

end

end A145446.P17404923953296093409

namespace A145446

/-- `(A263846(n+1)+1)^3` -/
def P17404923953296093409.Spec : Prop :=
  ∀ n, P17404923953296093409.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P1260676705773952830

`ceil(root(A000040(n+1), 3))^3`
-/

namespace A145446.P1260676705773952830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3

end

end A145446.P1260676705773952830

namespace A145446

/-- `ceil(root(A000040(n+1), 3))^3` -/
def P1260676705773952830.Spec : Prop :=
  ∀ n, P1260676705773952830.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P5587030780447131550

`ceil(root(A131733(n+1)+2*(n+1), 3))^3`
-/

namespace A145446.P5587030780447131550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131733 (n + 1) + (2 * (n + 1) : ℤ) : ℝ) ^ (1 / (3 : ℝ))⌉ ^ 3

end

end A145446.P5587030780447131550

namespace A145446

/-- `ceil(root(A131733(n+1)+2*(n+1), 3))^3` -/
def P5587030780447131550.Spec : Prop :=
  ∀ n, P5587030780447131550.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P4984766022676349192

`A000578(A104147(n))`
-/

namespace A145446.P4984766022676349192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A104147 n).toNat

end

end A145446.P4984766022676349192

namespace A145446

/-- `A000578(A104147(n))` -/
def P4984766022676349192.Spec : Prop :=
  ∀ n, P4984766022676349192.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P17143368647414424026

`A048763(A000040(n+1))`
-/

namespace A145446.P17143368647414424026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A000040 (n + 1)).toNat

end

end A145446.P17143368647414424026

namespace A145446

/-- `A048763(A000040(n+1))` -/
def P17143368647414424026.Spec : Prop :=
  ∀ n, P17143368647414424026.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P17068123966644486497

`A048763(A008864(n+1))`
-/

namespace A145446.P17068123966644486497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A008864 (n + 1)).toNat

end

end A145446.P17068123966644486497

namespace A145446

/-- `A048763(A008864(n+1))` -/
def P17068123966644486497.Spec : Prop :=
  ∀ n, P17068123966644486497.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P605033183800786720

`A048763(A014193(n+1))`
-/

namespace A145446.P605033183800786720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A014193 (n + 1)).toNat

end

end A145446.P605033183800786720

namespace A145446

/-- `A048763(A014193(n+1))` -/
def P605033183800786720.Spec : Prop :=
  ∀ n, P605033183800786720.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P16151145162160353747

`A048763(A014686(n+1))`
-/

namespace A145446.P16151145162160353747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A014686 (n + 1)).toNat

end

end A145446.P16151145162160353747

namespace A145446

/-- `A048763(A014686(n+1))` -/
def P16151145162160353747.Spec : Prop :=
  ∀ n, P16151145162160353747.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P10739908539905607533

`A048763(A028815(n+1))`
-/

namespace A145446.P10739908539905607533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A028815 (n + 1)).toNat

end

end A145446.P10739908539905607533

namespace A145446

/-- `A048763(A028815(n+1))` -/
def P10739908539905607533.Spec : Prop :=
  ∀ n, P10739908539905607533.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P15242021048065614802

`A048763(A039915(n+1))`
-/

namespace A145446.P15242021048065614802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A039915 (n + 1)).toNat

end

end A145446.P15242021048065614802

namespace A145446

/-- `A048763(A039915(n+1))` -/
def P15242021048065614802.Spec : Prop :=
  ∀ n, P15242021048065614802.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P13935006757154239841

`A048763(A076342(n+1))`
-/

namespace A145446.P13935006757154239841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A076342 (n + 1)).toNat

end

end A145446.P13935006757154239841

namespace A145446

/-- `A048763(A076342(n+1))` -/
def P13935006757154239841.Spec : Prop :=
  ∀ n, P13935006757154239841.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P701947919906870057

`A048763(A082542(n+1))`
-/

namespace A145446.P701947919906870057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A082542 (n + 1)).toNat

end

end A145446.P701947919906870057

namespace A145446

/-- `A048763(A082542(n+1))` -/
def P701947919906870057.Spec : Prop :=
  ∀ n, P701947919906870057.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P7555375201591418268

`A048763(A254669(n+1))`
-/

namespace A145446.P7555375201591418268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A254669 (n + 1)).toNat

end

end A145446.P7555375201591418268

namespace A145446

/-- `A048763(A254669(n+1))` -/
def P7555375201591418268.Spec : Prop :=
  ∀ n, P7555375201591418268.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P16177854447968964837

`A048763(A008578(n+2))`
-/

namespace A145446.P16177854447968964837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A008578 (n + 2)).toNat

end

end A145446.P16177854447968964837

namespace A145446

/-- `A048763(A008578(n+2))` -/
def P16177854447968964837.Spec : Prop :=
  ∀ n, P16177854447968964837.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P11504931704966014184

`A048763(A068499(n+2))`
-/

namespace A145446.P11504931704966014184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A068499 (n + 2)).toNat

end

end A145446.P11504931704966014184

namespace A145446

/-- `A048763(A068499(n+2))` -/
def P11504931704966014184.Spec : Prop :=
  ∀ n, P11504931704966014184.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P13686871316674600645

`A048763(A175787(n+2))`
-/

namespace A145446.P13686871316674600645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A175787 (n + 2)).toNat

end

end A145446.P13686871316674600645

namespace A145446

/-- `A048763(A175787(n+2))` -/
def P13686871316674600645.Spec : Prop :=
  ∀ n, P13686871316674600645.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P6505977305100610362

`A048763(record[A006530(n+2)])`
-/

namespace A145446.P6505977305100610362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145446.P6505977305100610362

namespace A145446

/-- `A048763(record[A006530(n+2)])` -/
def P6505977305100610362.Spec : Prop :=
  ∀ n, P6505977305100610362.a n = A145446 (n + 1)

end A145446

/-! ## A145446.P8203029787128863745

`A048763(record[A020639(n+2)])`
-/

namespace A145446.P8203029787128863745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A145446.P8203029787128863745

namespace A145446

/-- `A048763(record[A020639(n+2)])` -/
def P8203029787128863745.Spec : Prop :=
  ∀ n, P8203029787128863745.a n = A145446 (n + 1)

end A145446

/-!
# A145447: a(n) = the smallest square (and/or cube) > n-th prime.

The programs for A145447, there is no canonical definition to state claims against.
-/

/-! ## A145447.P16406800278553663695

`A145445(n+1)-A202108(A145445(n+1))`
-/

namespace A145447.P16406800278553663695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145445 (n + 1) - A202108 (A145445 (n + 1)).toNat

end

end A145447.P16406800278553663695

/-! ## A145447.P809793607020825861

`A232271(A145445(n+1))`
-/

namespace A145447.P809793607020825861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232271 (A145445 (n + 1)).toNat

end

end A145447.P809793607020825861

/-! ## A145447.P76611756208702595

`A377468(A378035(n+1)+A076411(3*n+4))`
-/

namespace A145447.P76611756208702595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A378035 (n + 1) + A076411 (3 * n + 4)).toNat

end

end A145447.P76611756208702595

/-! ## A145447.P16821569585492180391

`A377468(A360288(n)+A000040(n+1))`
-/

namespace A145447.P16821569585492180391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A360288 n + A000040 (n + 1)).toNat

end

end A145447.P16821569585492180391

/-! ## A145447.P42731311679450295

`A104103(n+1)²-A010051(A007661(n))`
-/

namespace A145447.P42731311679450295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104103 (n + 1) ^ 2 - A010051 (A007661 n).toNat

end

end A145447.P42731311679450295

/-!
# A145448: a(n) = 12^n*n!.

The programs for A145448, the canonical program `A145448.P7715098146730046431` is in `Seq.B000.C019`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145448 has offset 0).

The definition of A145448 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `12^n*n!` (program `A145448.P7715098146730046431`, by `A145448.P7715098146730046431.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A145448.P7715098146730046431

`12^n*n!`

The canonical program, it is in `Seq.B000.C019`.
-/

namespace A145448

/-- `12^n*n!` -/
def P7715098146730046431.Spec : Prop :=
  ∀ n, (P7715098146730046431.a n : ℤ) = A145448 n

theorem P7715098146730046431.correct : P7715098146730046431.Spec := by
  intro n
  simp only [A145448]

end A145448

/-! ## A145448.P6008955629917529953

`n!/(1/12)^n`
-/

namespace A145448.P6008955629917529953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / ((1 : ℚ) / 12) ^ n

end

end A145448.P6008955629917529953

namespace A145448

/-- `n!/(1/12)^n` -/
def P6008955629917529953.Spec : Prop :=
  ∀ n, P6008955629917529953.a n = (A145448 n : ℚ)

end A145448

/-! ## A145448.P15942488020310816803

`∏[round(2/acot(6*n))]`
-/

namespace A145448.P15942488020310816803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (6 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A145448.P15942488020310816803

namespace A145448

/-- `∏[round(2/acot(6*n))]` -/
def P15942488020310816803.Spec : Prop :=
  ∀ n, P15942488020310816803.a n = A145448 n

end A145448

/-! ## A145448.P12079061860577049279

`∏[floor(acot(n))+12*n]`
-/

namespace A145448.P12079061860577049279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (12 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A145448.P12079061860577049279

namespace A145448

/-- `∏[floor(acot(n))+12*n]` -/
def P12079061860577049279.Spec : Prop :=
  ∀ n, P12079061860577049279.a n = A145448 n

end A145448

/-! ## A145448.P3378715886898599935

`∏[gcd(12*n, floor(acot(n)))]`
-/

namespace A145448.P3378715886898599935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (12 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A145448.P3378715886898599935

namespace A145448

/-- `∏[gcd(12*n, floor(acot(n)))]` -/
def P3378715886898599935.Spec : Prop :=
  ∀ n, (P3378715886898599935.a n : ℤ) = A145448 n

end A145448

/-!
# A145449: Numbers n such that A145445(n) = A145446(n).

The programs for A145449, there is no canonical definition to state claims against.
-/

/-! ## A145449.P4569553507522659320

`A102461(A085237(n+4))+n`
-/

namespace A145449.P4569553507522659320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102461 (A085237 (n + 4)).toNat + (n : ℤ)

end

end A145449.P4569553507522659320

/-! ## A145449.P9027660057739966097

`A063924(A063905(n+3))+n`
-/

namespace A145449.P9027660057739966097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063924 (A063905 (n + 3)).toNat + (n : ℤ)

end

end A145449.P9027660057739966097

/-! ## A145449.P9923147996329900959

`A069482(A002110(A104588(n+1)))+n`
-/

namespace A145449.P9923147996329900959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069482 (A002110 (A104588 (n + 1)).toNat).toNat + (n : ℤ)

end

end A145449.P9923147996329900959

/-!
# A145450: Numbers k such that k/A000005(k) is a square.

The programs for A145450, the canonical program `A145450.P1966516073320817296` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145450 has offset 1).

The definition of A145450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145450.P1966516073320817296

`∩[A033950(n+1), A069067(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145450

/-- `∩[A033950(n+1), A069067(n+1)]` -/
def P1966516073320817296.Spec : Prop :=
  ∀ n, (P1966516073320817296.a n : ℤ) = A145450 (n + 1)

theorem P1966516073320817296.correct : P1966516073320817296.Spec := by
  intro n
  simp only [A145450, Nat.add_sub_cancel]

end A145450

/-! ## A145450.P4170149253359648908

`filter[A069067(n+1), A336040(#)]`
-/

namespace A145450.P4170149253359648908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A145450.P4170149253359648908

namespace A145450

/-- `filter[A069067(n+1), A336040(#)]` -/
def P4170149253359648908.Spec : Prop :=
  ∀ n, P4170149253359648908.a n = A145450 (n + 1)

end A145450

/-!
# A145451: 

The programs for A145451, there is no canonical definition to state claims against.
-/

/-! ## A145451.P11837223999748653993

`((2*a(n-1))²+3)*a(n-1)` with `a(0)=1`
-/

namespace A145451.P11837223999748653993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * a (n - 1)) ^ 2 + 3) * a (n - 1)

end

end A145451.P11837223999748653993

/-!
# A145452: 

The programs for A145452, there is no canonical definition to state claims against.
-/

/-! ## A145452.P3057457107888003547

`A041085(3^n-1)`
-/

namespace A145452.P3057457107888003547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041085 (3 ^ n - 1)

end

end A145452.P3057457107888003547

/-!
# A145453: Exponential transform of binomial(n,3) = A000292(n-2).

The programs for A145453, there is no canonical definition to state claims against.
-/

/-! ## A145453.P14206318336437007211

`A145460(∑[n+4]+2)`
-/

namespace A145453.P14206318336437007211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A145453.P14206318336437007211

/-! ## A145453.P13114498182831730121

`A143398(A238531(n)+1+n)`
-/

namespace A145453.P13114498182831730121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A238531 n + 1 + (n : ℤ)).toNat

end

end A145453.P13114498182831730121

/-! ## A145453.P8125508071613426057

`lcm((-1)^n, A145460(A046691(n+2)))`
-/

namespace A145453.P8125508071613426057
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A145460 (A046691 (n + 2)).toNat)

end

end A145453.P8125508071613426057

/-! ## A145453.P5085733992307827808

`A143398(A133263(n)-A260196(n))`
-/

namespace A145453.P5085733992307827808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A133263 n - A260196 n).toNat

end

end A145453.P5085733992307827808

/-! ## A145453.P7348071073444106622

`A143398(A052905(n)-A033627(n+1))`
-/

namespace A145453.P7348071073444106622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143398 (A052905 n - A033627 (n + 1)).toNat

end

end A145453.P7348071073444106622

/-! ## A145453.P7782474984565721821

`or(A000007(n), A145460(A046691(n+2)))`
-/

namespace A145453.P7782474984565721821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A145460 (A046691 (n + 2)).toNat)

end

end A145453.P7782474984565721821

/-! ## A145453.P1905382299678877262

`A145460(A046691(n+2))^(record[A020639(n+2)]%2)`
-/

namespace A145453.P1905382299678877262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145460 (A046691 (n + 2)).toNat : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 : ℤ)

end

end A145453.P1905382299678877262

/-!
# A145454: Exponential transform of binomial(n,4) = A000332.

The programs for A145454, there is no canonical definition to state claims against.
-/

/-! ## A145454.P10952721472845689591

`abs(A292912(n))`
-/

namespace A145454.P10952721472845689591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292912 n|

end

end A145454.P10952721472845689591

/-! ## A145454.P18161690376451645663

`A033999(n)*A292912(n)`
-/

namespace A145454.P18161690376451645663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A292912 n

end

end A145454.P18161690376451645663

/-! ## A145454.P16270047113471939484

`lcm(A009001(n), A292912(n))`
-/

namespace A145454.P16270047113471939484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A009001 n) (A292912 n)

end

end A145454.P16270047113471939484

/-! ## A145454.P3172200972555508537

`A009001(2*n)*A292912(n)`
-/

namespace A145454.P3172200972555508537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A292912 n

end

end A145454.P3172200972555508537

/-! ## A145454.P2762224950165662066

`A292912(n)/A009001(A005843(n))`
-/

namespace A145454.P2762224950165662066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292912 n : ℚ) / (A009001 (A005843 n).toNat : ℚ)

end

end A145454.P2762224950165662066

/-! ## A145454.P2290609256625494896

`gcd(A000161(A017233(n)), A292912(n))`
-/

namespace A145454.P2290609256625494896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000161 (A017233 n).toNat) (A292912 n)

end

end A145454.P2290609256625494896

/-! ## A145454.P13390637791639833085

`A145460(6*n+10+C(n, 2))`
-/

namespace A145454.P13390637791639833085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (6 * n + 10 + Nat.choose n 2)

end

end A145454.P13390637791639833085

/-! ## A145454.P8688165874658521979

`A145460(A052905(n+2))`
-/

namespace A145454.P8688165874658521979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A052905 (n + 2)).toNat

end

end A145454.P8688165874658521979

/-!
# A145455: Exponential transform of C(n,5) = A000389.

The programs for A145455, there is no canonical definition to state claims against.
-/

/-! ## A145455.P623330041051151887

`A145460(A055999(n+3))`
-/

namespace A145455.P623330041051151887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A055999 (n + 3)).toNat

end

end A145455.P623330041051151887

/-! ## A145455.P13465317921829286984

`A145460(A046691(n+4)-2)`
-/

namespace A145455.P13465317921829286984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A046691 (n + 4) - 2).toNat

end

end A145455.P13465317921829286984

/-! ## A145455.P1303949029440605480

`A145460(A027379(n+4)-3)`
-/

namespace A145455.P1303949029440605480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A027379 (n + 4) - 3).toNat

end

end A145455.P1303949029440605480

/-! ## A145455.P15770607454518828977

`A145460(A000217(n+6)-6)`
-/

namespace A145455.P15770607454518828977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A000217 (n + 6) - 6).toNat

end

end A145455.P15770607454518828977

/-! ## A145455.P11648445776941526751

`A145460(A161680(n+7)-6)`
-/

namespace A145455.P11648445776941526751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A161680 (n + 7) - 6).toNat

end

end A145455.P11648445776941526751

/-!
# A145456: Exponential transform of C(n,6) = A000579.

The programs for A145456, there is no canonical definition to state claims against.
-/

/-! ## A145456.P4738538181911531619

`A145460(A052905(n+4)-2)`
-/

namespace A145456.P4738538181911531619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A052905 (n + 4) - 2).toNat

end

end A145456.P4738538181911531619

/-! ## A145456.P4231220073939727674

`A145460(A046691(n+5)-3)`
-/

namespace A145456.P4231220073939727674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A046691 (n + 5) - 3).toNat

end

end A145456.P4231220073939727674

/-! ## A145456.P8665289165089057126

`A145460(A000217(n+7)-7)`
-/

namespace A145456.P8665289165089057126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A000217 (n + 7) - 7).toNat

end

end A145456.P8665289165089057126

/-! ## A145456.P9719552073779548832

`A145460(A161680(n+8)-7)`
-/

namespace A145456.P9719552073779548832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A161680 (n + 8) - 7).toNat

end

end A145456.P9719552073779548832

/-! ## A145456.P13790072608339111193

`A145460(A027379(n+3)+A005408(n+4))`
-/

namespace A145456.P13790072608339111193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A027379 (n + 3) + A005408 (n + 4)).toNat

end

end A145456.P13790072608339111193

/-!
# A145457: Exponential transform of C(n,7) = A000580.

The programs for A145457, there is no canonical definition to state claims against.
-/

/-! ## A145457.P6932935137747758803

`A145460(eq[7, A025581(n)])`
-/

namespace A145457.P6932935137747758803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145457.P6932935137747758803

/-! ## A145457.P12244592682356232690

`A145460(eq[8, A193739(n)])`
-/

namespace A145457.P12244592682356232690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A145457.P12244592682356232690

/-! ## A145457.P5489536893729707643

`A145460(A000217(n+8)-8)`
-/

namespace A145457.P5489536893729707643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A000217 (n + 8) - 8).toNat

end

end A145457.P5489536893729707643

/-! ## A145457.P1143777416994743379

`A145460(2*n+A000124(n+6)+6)`
-/

namespace A145457.P1143777416994743379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 ((2 * n : ℤ) + (A000124 (n + 6) + 6)).toNat

end

end A145457.P1143777416994743379

/-! ## A145457.P7677270079414871778

`A145460(A155212(A020705(n)))`
-/

namespace A145457.P7677270079414871778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145460 (A155212 (A020705 n).toNat).toNat

end

end A145457.P7677270079414871778

/-!
# A145458: Exponential transform of C(n,8) = A000581.

The programs for A145458, there is no canonical definition to state claims against.
-/

/-! ## A145458.P15720571677967487512

`C(n, 8%A079737(n))`
-/

namespace A145458.P15720571677967487512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.tmod 8 (A079737 n)).toNat

end

end A145458.P15720571677967487512

/-! ## A145458.P16596525807237173898

`A109681(C(n, dr(1-3^n)))`
-/

namespace A145458.P16596525807237173898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109681 (Nat.choose n (SequenceMachineLib.digitalRoot (1 - (3 ^ n : ℤ))))

end

end A145458.P16596525807237173898

/-! ## A145458.P11181359380030778094

`A222257(C(n, 8))-ceil(sin(n)²)`
-/

namespace A145458.P11181359380030778094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222257 (Nat.choose n 8) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A145458.P11181359380030778094

/-! ## A145458.P9341971408186376289

`A022998(C(n, 8))+C(2, n+2)`
-/

namespace A145458.P9341971408186376289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (Nat.choose n 8) + (Nat.choose 2 (n + 2) : ℤ)

end

end A145458.P9341971408186376289

/-! ## A145458.P7082202524465098984

`A022998(A243743(n+8))`
-/

namespace A145458.P7082202524465098984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (A243743 (n + 8)).toNat

end

end A145458.P7082202524465098984

/-!
# A145459: Exponential transform of C(n,9) = A000582.

The programs for A145459, there is no canonical definition to state claims against.
-/

/-! ## A145459.P4302198777525941252

`C(n, dr(A179330(n)))`
-/

namespace A145459.P4302198777525941252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.digitalRoot (A179330 n))

end

end A145459.P4302198777525941252

/-! ## A145459.P15677804084590718215

`C(n, 9%A005392(n))`
-/

namespace A145459.P15677804084590718215
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Int.tmod 9 (A005392 n)).toNat

end

end A145459.P15677804084590718215

/-! ## A145459.P14968635070332692279

`C(n, dr(A166720(3*n)))`
-/

namespace A145459.P14968635070332692279
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (SequenceMachineLib.digitalRoot (A166720 (3 * n)))

end

end A145459.P14968635070332692279

/-! ## A145459.P16588991930736130966

`C(n, comp[A316978(n+1)]-n)`
-/

namespace A145459.P16588991930736130966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)).toNat

end

end A145459.P16588991930736130966

/-! ## A145459.P4620071706138534935

`C(n, A180599(A029994(n+1)))`
-/

namespace A145459.P4620071706138534935
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A180599 (A029994 (n + 1)).toNat).toNat

end

end A145459.P4620071706138534935

/-!
# A145460: Square array A(n,k), n>=0, k>=0, read by antidiagonals, where sequence a_k of column k is the exponential transform of C(n,k).

The programs for A145460, there is no canonical definition to state claims against.
-/

/-! ## A145460.P2683858050862077026

`A292978(n)/A096591(A048993(n))`
-/

namespace A145460.P2683858050862077026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292978 n : ℚ) / (A096591 (A048993 n).toNat : ℚ)

end

end A145460.P2683858050862077026

/-! ## A145460.P838045760536994021

`A292978(n)/A000120(A155971(n))`
-/

namespace A145460.P838045760536994021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292978 n : ℚ) / (A000120 (A155971 n).toNat : ℚ)

end

end A145460.P838045760536994021

/-! ## A145460.P13210680784898713064

`A292978(n)/A010177(A288972(n))`
-/

namespace A145460.P13210680784898713064
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292978 n : ℚ) / (A010177 (A288972 n).toNat : ℚ)

end

end A145460.P13210680784898713064

/-! ## A145460.P3829409899997584246

`A292978(n)/A040001(A273712(n))`
-/

namespace A145460.P3829409899997584246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292978 n : ℚ) / (A040001 (A273712 n).toNat : ℚ)

end

end A145460.P3829409899997584246

/-! ## A145460.P12951253430217101337

`A292978(n)/A143965(A333901(n))`
-/

namespace A145460.P12951253430217101337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292978 n : ℚ) / (A143965 (A333901 n).toNat : ℚ)

end

end A145460.P12951253430217101337

/-!
# A145461: Numbers that can be written with a single digit in base 10 as well as in some base b

The programs for A145461, there is no canonical definition to state claims against.
-/

/-! ## A145461.P867357458521426260

`A055010(n-∑{digits}[n, #])+n`
-/

namespace A145461.P867357458521426260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + (n : ℤ)

end

end A145461.P867357458521426260

/-! ## A145461.P13498198481292876501

`A250412(∑[1-∑{digits}[n, #]+n])`
-/

namespace A145461.P13498198481292876501
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250412 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A145461.P13498198481292876501

/-! ## A145461.P17024244448955756218

`A250412(1-∑{digits}[n, #]+n+n)`
-/

namespace A145461.P17024244448955756218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250412 (1 - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) + (n : ℤ) + (n : ℤ)).toNat

end

end A145461.P17024244448955756218

/-! ## A145461.P976570327480005055

`A003945(n-∑{digits}[n, #])+n-1`
-/

namespace A145461.P976570327480005055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum) + ((n : ℤ) - 1)

end

end A145461.P976570327480005055

/-! ## A145461.P7467585364598468400

`A035934(n-n%10)-∏{digits}[n, -#]`
-/

namespace A145461.P7467585364598468400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035934 (n - n % 10) - ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => -(x : ℤ)).prod

end

end A145461.P7467585364598468400

/-!
# A145462: Eigentriangle, row sums = the Padovan sequence, A000931.

The programs for A145462, there is no canonical definition to state claims against.
-/

/-! ## A145462.P883008314310540480

`A020985(A145457(n))*A159934(n+1)`
-/

namespace A145462.P883008314310540480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (A145457 n).toNat * A159934 (n + 1)

end

end A145462.P883008314310540480

/-! ## A145462.P4720519163799314773

`A159934(n+1)^A000045(A119502(n))`
-/

namespace A145462.P4720519163799314773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159934 (n + 1) : ℚ) ^ (A000045 (A119502 n).toNat : ℤ)

end

end A145462.P4720519163799314773

/-! ## A145462.P14650461146434703156

`A159934(n+1)^A054651(A100100(n))`
-/

namespace A145462.P14650461146434703156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159934 (n + 1) : ℚ) ^ (A054651 (A100100 n).toNat : ℤ)

end

end A145462.P14650461146434703156

/-! ## A145462.P1261482881069850500

`A159934(n+1)^A054651(A135899(n))`
-/

namespace A145462.P1261482881069850500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159934 (n + 1) : ℚ) ^ (A054651 (A135899 n).toNat : ℤ)

end

end A145462.P1261482881069850500

/-! ## A145462.P11478682289839397648

`A159934(n+1)^A000142(A238349(n))`
-/

namespace A145462.P11478682289839397648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159934 (n + 1) : ℚ) ^ (A000142 (A238349 n).toNat : ℤ)

end

end A145462.P11478682289839397648

/-!
# A145463: Eigentriangle, row sums = A084509.

The programs for A145463, there is no canonical definition to state claims against.
-/

/-! ## A145463.P556990331443617775

`A118766(A144156(n))`
-/

namespace A145463.P556990331443617775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118766 (A144156 n).toNat

end

end A145463.P556990331443617775

/-!
# A145464: Cubes ending in a square.

The programs for A145464, there is no canonical definition to state claims against.
-/

/-! ## A145464.P18392949581429818531

`A008854(A032555(n+1))^3`
-/

namespace A145464.P18392949581429818531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (A032555 (n + 1)).toNat ^ 3

end

end A145464.P18392949581429818531

/-! ## A145464.P9982193169877952599

`A008854(A032559(n+1))^3`
-/

namespace A145464.P9982193169877952599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008854 (A032559 (n + 1)).toNat ^ 3

end

end A145464.P9982193169877952599

/-!
# A145465: a(0) = 2, a(1) = 2, and for n > 1, a(n) = a(n-1) + a((a(n-1) - 1) mod n).

The programs for A145465, there is no canonical definition to state claims against.
-/

/-! ## A145465.P16351951878111803156

`A131308(eq[A008949(n), A166486(n)])`
-/

namespace A145465.P16351951878111803156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008949 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A145465.P16351951878111803156

/-! ## A145465.P152432516710333414

`A108891(n+1)+A004198(A154956(n))`
-/

namespace A145465.P152432516710333414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108891 (n + 1) + A004198 (A154956 n).toNat

end

end A145465.P152432516710333414

/-! ## A145465.P10870544939548368450

`A131308(eq[A093190(n+1), A166486(n)])`
-/

namespace A145465.P10870544939548368450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A145465.P10870544939548368450

/-! ## A145465.P9251084061576506737

`A131308(eq[A166486(n), A239986(n+1)])`
-/

namespace A145465.P9251084061576506737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A145465.P9251084061576506737

/-!
# A145466: Expansion of q^(1/6) * eta(q) / eta(q^5) in powers of q.

The programs for A145466, there is no canonical definition to state claims against.
-/

/-! ## A145466.P16490409722679266033

`A285932(5*n)`
-/

namespace A145466.P16490409722679266033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285932 (5 * n)

end

end A145466.P16490409722679266033

/-! ## A145466.P17870693630222559460

`or(A000007(n), A285932(A008587(n)))`
-/

namespace A145466.P17870693630222559460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A285932 (A008587 n).toNat)

end

end A145466.P17870693630222559460

/-! ## A145466.P6173873962090184527

`A285932(A008587(n))^A020985(n)²`
-/

namespace A145466.P6173873962090184527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285932 (A008587 n).toNat : ℚ) ^ (A020985 n ^ 2 : ℤ)

end

end A145466.P6173873962090184527

/-! ## A145466.P3195528271403793551

`A285932(A008587(n))^A033999(n)²`
-/

namespace A145466.P3195528271403793551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285932 (A008587 n).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A145466.P3195528271403793551

/-! ## A145466.P14745635956365119703

`A285932(A008587(n))^A054977(n)²`
-/

namespace A145466.P14745635956365119703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285932 (A008587 n).toNat : ℚ) ^ (A054977 n ^ 2 : ℤ)

end

end A145466.P14745635956365119703

/-! ## A145466.P14360527776659000613

`A285932(A008587(n))^A057428(n)²`
-/

namespace A145466.P14360527776659000613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285932 (A008587 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A145466.P14360527776659000613

/-! ## A145466.P15258344239453520945

`A285932(A008587(n))^A014963(∑[n+1])`
-/

namespace A145466.P15258344239453520945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285932 (A008587 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A145466.P15258344239453520945

/-! ## A145466.P13297705807369291394

`A285932(A008587(n))-A001055(A030291(n+1))+1`
-/

namespace A145466.P13297705807369291394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285932 (A008587 n).toNat - A001055 (A030291 (n + 1)).toNat + 1

end

end A145466.P13297705807369291394

/-! ## A145466.P12025598417800372175

`A000007(n²)+A285932(A008587(n))%(n+1)²`
-/

namespace A145466.P12025598417800372175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n ^ 2) + Int.tmod (A285932 (A008587 n).toNat) ((n + 1) ^ 2 : ℤ)

end

end A145466.P12025598417800372175

/-!
# A145467: Convolution square of A003114.

The programs for A145467, there is no canonical definition to state claims against.
-/

/-! ## A145467.P9634435901090582366

`A145466(5*n)`
-/

namespace A145467.P9634435901090582366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145466 (5 * n)

end

end A145467.P9634435901090582366

/-! ## A145467.P14342111955201271036

`record[A145466(n)]`
-/

namespace A145467.P14342111955201271036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145467.P14342111955201271036

/-! ## A145467.P13425890661803004221

`abs(A145466(A008706(n)))`
-/

namespace A145467.P13425890661803004221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145466 (A008706 n).toNat|

end

end A145467.P13425890661803004221

/-! ## A145467.P10810131858658732050

`record[A285932(5*n)]`
-/

namespace A145467.P10810131858658732050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285932 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145467.P10810131858658732050

/-! ## A145467.P12470240299069448286

`A285932(5*5*n)`
-/

namespace A145467.P12470240299069448286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285932 (5 * (5 * n))

end

end A145467.P12470240299069448286

/-!
# A145468: Convolution square of A003106.

The programs for A145468, there is no canonical definition to state claims against.
-/

/-! ## A145468.P14515724638571489065

`abs(A145466(5*n+2))`
-/

namespace A145468.P14515724638571489065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A145466 (5 * n + 2)|

end

end A145468.P14515724638571489065

/-! ## A145468.P2252617267371598179

`-A145466(A047221(2*n+1))`
-/

namespace A145468.P2252617267371598179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145466 (A047221 (2 * n + 1)).toNat

end

end A145468.P2252617267371598179

/-! ## A145468.P3139846001259261766

`-A145466(A016813(n)+n+1)`
-/

namespace A145468.P3139846001259261766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A145466 (A016813 n + (n + 1 : ℤ)).toNat

end

end A145468.P3139846001259261766

/-! ## A145468.P10907501194583422406

`(n-A000027(n+1))*A145466(5*n+2)`
-/

namespace A145468.P10907501194583422406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A000027 (n + 1)) * A145466 (5 * n + 2)

end

end A145468.P10907501194583422406

/-! ## A145468.P5123690906156303755

`A046665(A025492(n+1))-A145466(A016813(n)+n+1)`
-/

namespace A145468.P5123690906156303755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A025492 (n + 1)).toNat - A145466 (A016813 n + (n + 1 : ℤ)).toNat

end

end A145468.P5123690906156303755

/-! ## A145468.P10082841248715930683

`A046665(A034699(n+1))-A145466(A016813(n)+n+1)`
-/

namespace A145468.P10082841248715930683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (A034699 (n + 1)).toNat - A145466 (A016813 n + (n + 1 : ℤ)).toNat

end

end A145468.P10082841248715930683

/-! ## A145468.P2014679868958125564

`A145466(A047221(2*(n+1)))-A145466(A047221(2*n+1))`
-/

namespace A145468.P2014679868958125564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145466 (A047221 (2 * (n + 1))).toNat - A145466 (A047221 (2 * n + 1)).toNat

end

end A145468.P2014679868958125564

/-! ## A145468.P17767593068372347010

`A010893(A001222(∑[n+1]+2))-A145466(5*n+2)`
-/

namespace A145468.P17767593068372347010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A001222 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat + 13) - A145466 (5 * n + 2)

end

end A145468.P17767593068372347010

/-!
# A145469: Positive integers k such that d(k) = d(k-1) + d(k-2), where d(k) is the number of divisors of k.

The programs for A145469, the canonical program `A145469.P15784535459110344665` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145469 has offset 1).

The definition of A145469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 876 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145469.P15784535459110344665

`eq[A000005(n+2), A051950(n+4)]+4`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A145469

/-- `eq[A000005(n+2), A051950(n+4)]+4` -/
def P15784535459110344665.Spec : Prop :=
  ∀ n, (P15784535459110344665.a n : ℤ) = A145469 (n + 1)

theorem P15784535459110344665.correct : P15784535459110344665.Spec := by
  intro n
  simp only [A145469, Nat.add_sub_cancel]

end A145469

/-! ## A145469.P14656811416411279627

`eq[A051950(n+2), A096737(A233583(n+1))]+2`
-/

namespace A145469.P14656811416411279627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051950 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096737 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A145469.P14656811416411279627

namespace A145469

/-- `eq[A051950(n+2), A096737(A233583(n+1))]+2` -/
def P14656811416411279627.Spec : Prop :=
  ∀ n, (P14656811416411279627.a n : ℤ) = A145469 (n + 1)

end A145469

/-!
# A145470: A positive integer k is included if d(k) = d(k+1) + d(k+2), where d(k) is the number of divisors of k.

The programs for A145470, the canonical program `A145470.P2630551547142641674` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145470 has offset 1).

The definition of A145470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 439 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145470.P2630551547142641674

`eq[A032741(n), A092338(n+2)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A145470

/-- `eq[A032741(n), A092338(n+2)]` -/
def P2630551547142641674.Spec : Prop :=
  ∀ n, (P2630551547142641674.a n : ℤ) = A145470 (n + 1)

theorem P2630551547142641674.correct : P2630551547142641674.Spec := by
  intro n
  simp only [A145470, Nat.add_sub_cancel]

end A145470

/-! ## A145470.P10440427129511445050

`eq[A032741(n)+1, A092405(n+1)]`
-/

namespace A145470.P10440427129511445050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145470.P10440427129511445050

namespace A145470

/-- `eq[A032741(n)+1, A092405(n+1)]` -/
def P10440427129511445050.Spec : Prop :=
  ∀ n, (P10440427129511445050.a n : ℤ) = A145470 (n + 1)

end A145470

/-! ## A145470.P12702027679771413854

`eq[A000005(A028310(n)), A092405(n+1)]`
-/

namespace A145470.P12702027679771413854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145470.P12702027679771413854

namespace A145470

/-- `eq[A000005(A028310(n)), A092405(n+1)]` -/
def P12702027679771413854.Spec : Prop :=
  ∀ n, (P12702027679771413854.a n : ℤ) = A145470 (n + 1)

end A145470

/-! ## A145470.P4508679073607638514

`eq[A014681(A092405(n+1)), A032741(n)]`
-/

namespace A145470.P4508679073607638514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A092405 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145470.P4508679073607638514

namespace A145470

/-- `eq[A014681(A092405(n+1)), A032741(n)]` -/
def P4508679073607638514.Spec : Prop :=
  ∀ n, (P4508679073607638514.a n : ℤ) = A145470 (n + 1)

end A145470

/-! ## A145470.P1483266346806089048

`eq[A000005(A060000(n+1)), A092405(n+1)]`
-/

namespace A145470.P1483266346806089048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A060000 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145470.P1483266346806089048

namespace A145470

/-- `eq[A000005(A060000(n+1)), A092405(n+1)]` -/
def P1483266346806089048.Spec : Prop :=
  ∀ n, (P1483266346806089048.a n : ℤ) = A145470 (n + 1)

end A145470

/-! ## A145470.P5994029263214069282

`eq[A000005(A233583(n+1)), A092405(n+1)]`
-/

namespace A145470.P5994029263214069282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092405 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145470.P5994029263214069282

namespace A145470

/-- `eq[A000005(A233583(n+1)), A092405(n+1)]` -/
def P5994029263214069282.Spec : Prop :=
  ∀ n, (P5994029263214069282.a n : ℤ) = A145470 (n + 1)

end A145470

/-!
# A145471: Primes p such that (5+p)/2 is prime.

The programs for A145471, the canonical program `A145471.P5456915067997334848` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145471 has offset 1).

The definition of A145471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5803 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145471.P11294792718228326769

`2*A063909(n+1)-5`
-/

namespace A145471.P11294792718228326769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063909 (n + 1) - 5

end

end A145471.P11294792718228326769

namespace A145471

/-- `2*A063909(n+1)-5` -/
def P11294792718228326769.Spec : Prop :=
  ∀ n, P11294792718228326769.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P5456915067997334848

`p?[a(n-1)+2*A001223(n+1)]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145471

/-- `p?[a(n-1)+2*A001223(n+1)]` -/
def P5456915067997334848.Spec : Prop :=
  ∀ n, P5456915067997334848.a n = A145471 (n + 1)

theorem P5456915067997334848.correct : P5456915067997334848.Spec := by
  intro n
  simp only [A145471, Nat.add_sub_cancel]

end A145471

/-! ## A145471.P18235132082892581794

`p?[A131426(n+1)-2]`
-/

namespace A145471.P18235132082892581794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P18235132082892581794

namespace A145471

/-- `p?[A131426(n+1)-2]` -/
def P18235132082892581794.Spec : Prop :=
  ∀ n, P18235132082892581794.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P2752784063674498294

`p?[A072055(n+1)-6]`
-/

namespace A145471.P2752784063674498294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P2752784063674498294

namespace A145471

/-- `p?[A072055(n+1)-6]` -/
def P2752784063674498294.Spec : Prop :=
  ∀ n, P2752784063674498294.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P4078809281265060095

`p?[2*A086801(n+1)+1]`
-/

namespace A145471.P4078809281265060095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086801 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P4078809281265060095

namespace A145471

/-- `p?[2*A086801(n+1)+1]` -/
def P4078809281265060095.Spec : Prop :=
  ∀ n, P4078809281265060095.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P11300140872454258797

`p?[2*A154115(n+1)+1]`
-/

namespace A145471.P11300140872454258797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154115 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P11300140872454258797

namespace A145471

/-- `p?[2*A154115(n+1)+1]` -/
def P11300140872454258797.Spec : Prop :=
  ∀ n, P11300140872454258797.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P7409816813065988289

`p?[2*A040976(n+1)-1]`
-/

namespace A145471.P7409816813065988289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P7409816813065988289

namespace A145471

/-- `p?[2*A040976(n+1)-1]` -/
def P7409816813065988289.Spec : Prop :=
  ∀ n, P7409816813065988289.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P15390140224010287641

`p?[2*A000040(n+1)-5]`
-/

namespace A145471.P15390140224010287641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P15390140224010287641

namespace A145471

/-- `p?[2*A000040(n+1)-5]` -/
def P15390140224010287641.Spec : Prop :=
  ∀ n, P15390140224010287641.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P3319436045984980018

`p?[2*A065091(n+1)-5]`
-/

namespace A145471.P3319436045984980018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065091 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P3319436045984980018

namespace A145471

/-- `p?[2*A065091(n+1)-5]` -/
def P3319436045984980018.Spec : Prop :=
  ∀ n, P3319436045984980018.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P6483776287066455403

`p?[A065091(n+2)+A065091(n+2)-5]`
-/

namespace A145471.P6483776287066455403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) + (A065091 (n + 2) - 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P6483776287066455403

namespace A145471

/-- `p?[A065091(n+2)+A065091(n+2)-5]` -/
def P6483776287066455403.Spec : Prop :=
  ∀ n, P6483776287066455403.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P5661412107091280613

`p?[record[A006530(n+2)+n-3]]`
-/

namespace A145471.P5661412107091280613
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P5661412107091280613

namespace A145471

/-- `p?[record[A006530(n+2)+n-3]]` -/
def P5661412107091280613.Spec : Prop :=
  ∀ n, P5661412107091280613.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P12952644494447405633

`p?[record[A020639(n+2)+n-3]]`
-/

namespace A145471.P12952644494447405633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) + ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P12952644494447405633

namespace A145471

/-- `p?[record[A020639(n+2)+n-3]]` -/
def P12952644494447405633.Spec : Prop :=
  ∀ n, P12952644494447405633.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P16308431409658739580

`p?[A000010(A000005(n+3))+2*n]`
-/

namespace A145471.P16308431409658739580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 3)).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P16308431409658739580

namespace A145471

/-- `p?[A000010(A000005(n+3))+2*n]` -/
def P16308431409658739580.Spec : Prop :=
  ∀ n, P16308431409658739580.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P2248476513475563435

`A017581(A145487(n+1))`
-/

namespace A145471.P2248476513475563435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (A145487 (n + 1)).toNat

end

end A145471.P2248476513475563435

namespace A145471

/-- `A017581(A145487(n+1))` -/
def P2248476513475563435.Spec : Prop :=
  ∀ n, P2248476513475563435.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P3679664137447482875

`2*p?[A089253(n+1)]-5`
-/

namespace A145471.P3679664137447482875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 5

end

end A145471.P3679664137447482875

namespace A145471

/-- `2*p?[A089253(n+1)]-5` -/
def P3679664137447482875.Spec : Prop :=
  ∀ n, P3679664137447482875.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P3881010966648493113

`∩[A000040(n+1), A131426(n+1)-2]`
-/

namespace A145471.P3881010966648493113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145471.P3881010966648493113

namespace A145471

/-- `∩[A000040(n+1), A131426(n+1)-2]` -/
def P3881010966648493113.Spec : Prop :=
  ∀ n, (P3881010966648493113.a n : ℤ) = A145471 (n + 1)

end A145471

/-! ## A145471.P17311232021012271316

`2*record[A006530(A000040(n+3)+5)]-5`
-/

namespace A145471.P17311232021012271316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 3) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 5

end

end A145471.P17311232021012271316

namespace A145471

/-- `2*record[A006530(A000040(n+3)+5)]-5` -/
def P17311232021012271316.Spec : Prop :=
  ∀ n, P17311232021012271316.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P9638473660046467381

`A016969(2*A145487(n+1))`
-/

namespace A145471.P9638473660046467381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * A145487 (n + 1)).toNat

end

end A145471.P9638473660046467381

namespace A145471

/-- `A016969(2*A145487(n+1))` -/
def P9638473660046467381.Spec : Prop :=
  ∀ n, P9638473660046467381.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P7201853445925564663

`p?[A016969(2*A059325(n+1))]`
-/

namespace A145471.P7201853445925564663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * A059325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P7201853445925564663

namespace A145471

/-- `p?[A016969(2*A059325(n+1))]` -/
def P7201853445925564663.Spec : Prop :=
  ∀ n, P7201853445925564663.a n = A145471 (n + 1)

end A145471

/-! ## A145471.P12666103912455740100

`p?[A001222(A047270(n+2))*(6*n+5)]`
-/

namespace A145471.P12666103912455740100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A047270 (n + 2)).toNat * (6 * n + 5 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145471.P12666103912455740100

namespace A145471

/-- `p?[A001222(A047270(n+2))*(6*n+5)]` -/
def P12666103912455740100.Spec : Prop :=
  ∀ n, P12666103912455740100.a n = A145471 (n + 1)

end A145471

/-!
# A145472: Primes p such that (p+7)/2 is prime.

The programs for A145472, the canonical program `A145472.P4180650491768818475` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145472 has offset 1).

The definition of A145472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1470 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145472.P10850775920210352372

`p?[A001747(n+1)-7]`
-/

namespace A145472.P10850775920210352372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P10850775920210352372

namespace A145472

/-- `p?[A001747(n+1)-7]` -/
def P10850775920210352372.Spec : Prop :=
  ∀ n, P10850775920210352372.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P4180650491768818475

`p?[A100484(n+1)-7]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145472

/-- `p?[A100484(n+1)-7]` -/
def P4180650491768818475.Spec : Prop :=
  ∀ n, P4180650491768818475.a n = A145472 (n + 1)

theorem P4180650491768818475.correct : P4180650491768818475.Spec := by
  intro n
  simp only [A145472, Nat.add_sub_cancel]

end A145472

/-! ## A145472.P8019020166046351479

`p?[A072055(n+1)-8]`
-/

namespace A145472.P8019020166046351479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P8019020166046351479

namespace A145472

/-- `p?[A072055(n+1)-8]` -/
def P8019020166046351479.Spec : Prop :=
  ∀ n, P8019020166046351479.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P10511271027939210261

`p?[2*A172367(n+1)+1]`
-/

namespace A145472.P10511271027939210261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172367 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P10511271027939210261

namespace A145472

/-- `p?[2*A172367(n+1)+1]` -/
def P10511271027939210261.Spec : Prop :=
  ∀ n, P10511271027939210261.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P13714453772696164810

`p?[2*A086801(n+1)-1]`
-/

namespace A145472.P13714453772696164810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086801 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P13714453772696164810

namespace A145472

/-- `p?[2*A086801(n+1)-1]` -/
def P13714453772696164810.Spec : Prop :=
  ∀ n, P13714453772696164810.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P7145893012396863266

`p?[2*A154115(n+1)-1]`
-/

namespace A145472.P7145893012396863266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A154115 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P7145893012396863266

namespace A145472

/-- `p?[2*A154115(n+1)-1]` -/
def P7145893012396863266.Spec : Prop :=
  ∀ n, P7145893012396863266.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P13022993128326972541

`p?[2*A000040(n+1)-7]`
-/

namespace A145472.P13022993128326972541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P13022993128326972541

namespace A145472

/-- `p?[2*A000040(n+1)-7]` -/
def P13022993128326972541.Spec : Prop :=
  ∀ n, P13022993128326972541.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P5850855431714706304

`p?[2*A008864(n+1)-9]`
-/

namespace A145472.P5850855431714706304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008864 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P5850855431714706304

namespace A145472

/-- `p?[2*A008864(n+1)-9]` -/
def P5850855431714706304.Spec : Prop :=
  ∀ n, P5850855431714706304.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P14239760376823164695

`p?[4*n-A101264(n+1)]`
-/

namespace A145472.P14239760376823164695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - A101264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P14239760376823164695

namespace A145472

/-- `p?[4*n-A101264(n+1)]` -/
def P14239760376823164695.Spec : Prop :=
  ∀ n, P14239760376823164695.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P7059146376271640006

`p?[record[A000010(n+3)+n-3]]`
-/

namespace A145472.P7059146376271640006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3) + ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P7059146376271640006

namespace A145472

/-- `p?[record[A000010(n+3)+n-3]]` -/
def P7059146376271640006.Spec : Prop :=
  ∀ n, P7059146376271640006.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P4419618410328713312

`p?[2*n-A000010(A000005(n+3))]`
-/

namespace A145472.P4419618410328713312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A000010 (A000005 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P4419618410328713312

namespace A145472

/-- `p?[2*n-A000010(A000005(n+3))]` -/
def P4419618410328713312.Spec : Prop :=
  ∀ n, P4419618410328713312.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P3653284801161098435

`p?[A138511(n+1)-7]`
-/

namespace A145472.P3653284801161098435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138511 (n + 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P3653284801161098435

namespace A145472

/-- `p?[A138511(n+1)-7]` -/
def P3653284801161098435.Spec : Prop :=
  ∀ n, P3653284801161098435.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P9562001648111497960

`p?[A323644(n+5)-7]`
-/

namespace A145472.P9562001648111497960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 5) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P9562001648111497960

namespace A145472

/-- `p?[A323644(n+5)-7]` -/
def P9562001648111497960.Spec : Prop :=
  ∀ n, P9562001648111497960.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P449727829631772026

`p?[record[xor(3, n)]*A353376(2*n+5)]`
-/

namespace A145472.P449727829631772026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℤ) * A353376 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P449727829631772026

namespace A145472

/-- `p?[record[xor(3, n)]*A353376(2*n+5)]` -/
def P449727829631772026.Spec : Prop :=
  ∀ n, P449727829631772026.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P1161378571414224776

`p?[n²-A033558(n+1)²]`
-/

namespace A145472.P1161378571414224776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A033558 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P1161378571414224776

namespace A145472

/-- `p?[n²-A033558(n+1)²]` -/
def P1161378571414224776.Spec : Prop :=
  ∀ n, P1161378571414224776.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P15654643579648347740

`record[p?[2*A014963(n+1)-7]]`
-/

namespace A145472.P15654643579648347740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145472.P15654643579648347740

namespace A145472

/-- `record[p?[2*A014963(n+1)-7]]` -/
def P15654643579648347740.Spec : Prop :=
  ∀ n, P15654643579648347740.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P3126590718411505635

`p?[A004274(p?[A004274(n)]-2)]`
-/

namespace A145472.P3126590718411505635
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P3126590718411505635

namespace A145472

/-- `p?[A004274(p?[A004274(n)]-2)]` -/
def P3126590718411505635.Spec : Prop :=
  ∀ n, P3126590718411505635.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P17173594197866897118

`p?[A004276(p?[A004276(n)])-2]`
-/

namespace A145472.P17173594197866897118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P17173594197866897118

namespace A145472

/-- `p?[A004276(p?[A004276(n)])-2]` -/
def P17173594197866897118.Spec : Prop :=
  ∀ n, P17173594197866897118.a n = A145472 (n + 1)

end A145472

/-! ## A145472.P9681385978131727127

`p?[A004280(A000040(n+2)-2)]`
-/

namespace A145472.P9681385978131727127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A000040 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145472.P9681385978131727127

namespace A145472

/-- `p?[A004280(A000040(n+2)-2)]` -/
def P9681385978131727127.Spec : Prop :=
  ∀ n, P9681385978131727127.a n = A145472 (n + 1)

end A145472

/-!
# A145473: Primes p such that (11 + p)/2 is prime.

The programs for A145473, the canonical program `A145473.P9926158279256282826` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145473 has offset 1).

The definition of A145473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1309 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145473.P9119286060337154520

`p?[A076274(n+1)-10]`
-/

namespace A145473.P9119286060337154520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P9119286060337154520

namespace A145473

/-- `p?[A076274(n+1)-10]` -/
def P9119286060337154520.Spec : Prop :=
  ∀ n, P9119286060337154520.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P12685058802430656542

`p?[A001747(n+1)-11]`
-/

namespace A145473.P12685058802430656542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P12685058802430656542

namespace A145473

/-- `p?[A001747(n+1)-11]` -/
def P12685058802430656542.Spec : Prop :=
  ∀ n, P12685058802430656542.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P14250126092619686218

`p?[A074845(n+1)-11]`
-/

namespace A145473.P14250126092619686218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P14250126092619686218

namespace A145473

/-- `p?[A074845(n+1)-11]` -/
def P14250126092619686218.Spec : Prop :=
  ∀ n, P14250126092619686218.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P9926158279256282826

`p?[A100484(n+1)-11]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145473

/-- `p?[A100484(n+1)-11]` -/
def P9926158279256282826.Spec : Prop :=
  ∀ n, P9926158279256282826.a n = A145473 (n + 1)

theorem P9926158279256282826.correct : P9926158279256282826.Spec := by
  intro n
  simp only [A145473, Nat.add_sub_cancel]

end A145473

/-! ## A145473.P3796495292942334253

`p?[A072055(n+1)-12]`
-/

namespace A145473.P3796495292942334253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P3796495292942334253

namespace A145473

/-- `p?[A072055(n+1)-12]` -/
def P3796495292942334253.Spec : Prop :=
  ∀ n, P3796495292942334253.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P7832134686856069887

`p?[2*A086304(n+1)+1]`
-/

namespace A145473.P7832134686856069887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086304 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P7832134686856069887

namespace A145473

/-- `p?[2*A086304(n+1)+1]` -/
def P7832134686856069887.Spec : Prop :=
  ∀ n, P7832134686856069887.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P13874391517999182038

`p?[2*A118538(n+1)+1]`
-/

namespace A145473.P13874391517999182038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118538 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P13874391517999182038

namespace A145473

/-- `p?[2*A118538(n+1)+1]` -/
def P13874391517999182038.Spec : Prop :=
  ∀ n, P13874391517999182038.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P11379762242776614093

`p?[2*A173064(n+3)-1]`
-/

namespace A145473.P11379762242776614093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173064 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P11379762242776614093

namespace A145473

/-- `p?[2*A173064(n+3)-1]` -/
def P11379762242776614093.Spec : Prop :=
  ∀ n, P11379762242776614093.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P16483671666966700015

`p?[2*A006093(n+1)-9]`
-/

namespace A145473.P16483671666966700015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P16483671666966700015

namespace A145473

/-- `p?[2*A006093(n+1)-9]` -/
def P16483671666966700015.Spec : Prop :=
  ∀ n, P16483671666966700015.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P11020138778655291668

`p?[2*A000040(n+1)-11]`
-/

namespace A145473.P11020138778655291668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P11020138778655291668

namespace A145473

/-- `p?[2*A000040(n+1)-11]` -/
def P11020138778655291668.Spec : Prop :=
  ∀ n, P11020138778655291668.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P15722361323119819355

`p?[2*A065091(n+1)-11]`
-/

namespace A145473.P15722361323119819355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065091 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P15722361323119819355

namespace A145473

/-- `p?[2*A065091(n+1)-11]` -/
def P15722361323119819355.Spec : Prop :=
  ∀ n, P15722361323119819355.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P5898501852802704950

`p?[A172367(n+1)+A173064(n+3)-2]`
-/

namespace A145473.P5898501852802704950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172367 (n + 1) + (A173064 (n + 3) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P5898501852802704950

namespace A145473

/-- `p?[A172367(n+1)+A173064(n+3)-2]` -/
def P5898501852802704950.Spec : Prop :=
  ∀ n, P5898501852802704950.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P5572735882716120680

`p?[A000040(n+2)+A000040(n+2)-11]`
-/

namespace A145473.P5572735882716120680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A000040 (n + 2) - 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P5572735882716120680

namespace A145473

/-- `p?[A000040(n+2)+A000040(n+2)-11]` -/
def P5572735882716120680.Spec : Prop :=
  ∀ n, P5572735882716120680.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P2346033538761036655

`p?[A323644(n+1)-11]`
-/

namespace A145473.P2346033538761036655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323644 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P2346033538761036655

namespace A145473

/-- `p?[A323644(n+1)-11]` -/
def P2346033538761036655.Spec : Prop :=
  ∀ n, P2346033538761036655.a n = A145473 (n + 1)

end A145473

/-! ## A145473.P17550347357581165402

`p?[A284278(2*n+5)-10]`
-/

namespace A145473.P17550347357581165402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284278 (2 * n + 5) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145473.P17550347357581165402

namespace A145473

/-- `p?[A284278(2*n+5)-10]` -/
def P17550347357581165402.Spec : Prop :=
  ∀ n, P17550347357581165402.a n = A145473 (n + 1)

end A145473

/-!
# A145474: Primes p such that (13+p)/2 is prime.

The programs for A145474, the canonical program `A145474.P15416868064403667784` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145474 has offset 1).

The definition of A145474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1362 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145474.P15416868064403667784

`p?[2*A156037(n+1)-11]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A145474

/-- `p?[2*A156037(n+1)-11]` -/
def P15416868064403667784.Spec : Prop :=
  ∀ n, P15416868064403667784.a n = A145474 (n + 1)

theorem P15416868064403667784.correct : P15416868064403667784.Spec := by
  intro n
  simp only [A145474, Nat.add_sub_cancel]

end A145474

/-! ## A145474.P13211597198275634229

`p?[A131426(n+1)-10]`
-/

namespace A145474.P13211597198275634229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131426 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P13211597198275634229

namespace A145474

/-- `p?[A131426(n+1)-10]` -/
def P13211597198275634229.Spec : Prop :=
  ∀ n, P13211597198275634229.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P3576664544967976683

`p?[A037168(n+1)-11]`
-/

namespace A145474.P3576664544967976683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P3576664544967976683

namespace A145474

/-- `p?[A037168(n+1)-11]` -/
def P3576664544967976683.Spec : Prop :=
  ∀ n, P3576664544967976683.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P15803318055236131603

`p?[A076274(n+1)-12]`
-/

namespace A145474.P15803318055236131603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P15803318055236131603

namespace A145474

/-- `p?[A076274(n+1)-12]` -/
def P15803318055236131603.Spec : Prop :=
  ∀ n, P15803318055236131603.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P1499788006789046733

`p?[A001747(n+1)-13]`
-/

namespace A145474.P1499788006789046733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P1499788006789046733

namespace A145474

/-- `p?[A001747(n+1)-13]` -/
def P1499788006789046733.Spec : Prop :=
  ∀ n, P1499788006789046733.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P2468739421639520449

`p?[A074845(n+1)-13]`
-/

namespace A145474.P2468739421639520449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074845 (n + 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P2468739421639520449

namespace A145474

/-- `p?[A074845(n+1)-13]` -/
def P2468739421639520449.Spec : Prop :=
  ∀ n, P2468739421639520449.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P4692118122817952609

`p?[A100484(n+1)-13]`
-/

namespace A145474.P4692118122817952609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P4692118122817952609

namespace A145474

/-- `p?[A100484(n+1)-13]` -/
def P4692118122817952609.Spec : Prop :=
  ∀ n, P4692118122817952609.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P3506441320971671729

`p?[A207574(n+1)-13]`
-/

namespace A145474.P3506441320971671729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207574 (n + 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P3506441320971671729

namespace A145474

/-- `p?[A207574(n+1)-13]` -/
def P3506441320971671729.Spec : Prop :=
  ∀ n, P3506441320971671729.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P17844429297617522006

`p?[A072055(n+1)-14]`
-/

namespace A145474.P17844429297617522006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P17844429297617522006

namespace A145474

/-- `p?[A072055(n+1)-14]` -/
def P17844429297617522006.Spec : Prop :=
  ∀ n, P17844429297617522006.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P1454139091992688460

`p?[A089241(n+1)-15]`
-/

namespace A145474.P1454139091992688460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P1454139091992688460

namespace A145474

/-- `p?[A089241(n+1)-15]` -/
def P1454139091992688460.Spec : Prop :=
  ∀ n, P1454139091992688460.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P9083218529982766961

`p?[2*A086304(n+1)-1]`
-/

namespace A145474.P9083218529982766961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086304 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P9083218529982766961

namespace A145474

/-- `p?[2*A086304(n+1)-1]` -/
def P9083218529982766961.Spec : Prop :=
  ∀ n, P9083218529982766961.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P5770188048440651967

`p?[2*A118538(n+1)-1]`
-/

namespace A145474.P5770188048440651967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118538 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P5770188048440651967

namespace A145474

/-- `p?[2*A118538(n+1)-1]` -/
def P5770188048440651967.Spec : Prop :=
  ∀ n, P5770188048440651967.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P15139612079037978602

`p?[2*A173064(n+3)-3]`
-/

namespace A145474.P15139612079037978602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173064 (n + 3) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P15139612079037978602

namespace A145474

/-- `p?[2*A173064(n+3)-3]` -/
def P15139612079037978602.Spec : Prop :=
  ∀ n, P15139612079037978602.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P17325359679697399634

`p?[2*A000040(n+1)-13]`
-/

namespace A145474.P17325359679697399634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P17325359679697399634

namespace A145474

/-- `p?[2*A000040(n+1)-13]` -/
def P17325359679697399634.Spec : Prop :=
  ∀ n, P17325359679697399634.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P3444517652873901843

`p?[2*A008578(n+1)-13]`
-/

namespace A145474.P3444517652873901843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P3444517652873901843

namespace A145474

/-- `p?[2*A008578(n+1)-13]` -/
def P3444517652873901843.Spec : Prop :=
  ∀ n, P3444517652873901843.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P7841354896014551098

`p?[2*n+1-A319353(n+5)²]`
-/

namespace A145474.P7841354896014551098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A319353 (n + 5) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P7841354896014551098

namespace A145474

/-- `p?[2*n+1-A319353(n+5)²]` -/
def P7841354896014551098.Spec : Prop :=
  ∀ n, P7841354896014551098.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P15306461409792141968

`p?[A016921(A089953(n+1))]`
-/

namespace A145474.P15306461409792141968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A089953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P15306461409792141968

namespace A145474

/-- `p?[A016921(A089953(n+1))]` -/
def P15306461409792141968.Spec : Prop :=
  ∀ n, P15306461409792141968.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P12769845717572611659

`A004273(A063913(n+1)-6)`
-/

namespace A145474.P12769845717572611659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A063913 (n + 1) - 6).toNat

end

end A145474.P12769845717572611659

namespace A145474

/-- `A004273(A063913(n+1)-6)` -/
def P12769845717572611659.Spec : Prop :=
  ∀ n, P12769845717572611659.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P18346094029843980285

`p?[A005408(A040976(n+1))-10]`
-/

namespace A145474.P18346094029843980285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A040976 (n + 1)).toNat - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P18346094029843980285

namespace A145474

/-- `p?[A005408(A040976(n+1))-10]` -/
def P18346094029843980285.Spec : Prop :=
  ∀ n, P18346094029843980285.a n = A145474 (n + 1)

end A145474

/-! ## A145474.P388285775689257301

`p?[A047259(A047259(n+1))-A020483(n)²]`
-/

namespace A145474.P388285775689257301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (A047259 (n + 1)).toNat - A020483 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145474.P388285775689257301

namespace A145474

/-- `p?[A047259(A047259(n+1))-A020483(n)²]` -/
def P388285775689257301.Spec : Prop :=
  ∀ n, P388285775689257301.a n = A145474 (n + 1)

end A145474

/-!
# A145475: Primes p such that (17+p)/2 is prime.

The programs for A145475, the canonical program `A145475.P16725095266388124518` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145475 has offset 1).

The definition of A145475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145475.P16725095266388124518

`p?[A100484(n+1)-17]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145475

/-- `p?[A100484(n+1)-17]` -/
def P16725095266388124518.Spec : Prop :=
  ∀ n, P16725095266388124518.a n = A145475 (n + 1)

theorem P16725095266388124518.correct : P16725095266388124518.Spec := by
  intro n
  simp only [A145475, Nat.add_sub_cancel]

end A145475

/-! ## A145475.P16876770075576862235

`p?[2*A088967(n+1)+1]`
-/

namespace A145475.P16876770075576862235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088967 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P16876770075576862235

namespace A145475

/-- `p?[2*A088967(n+1)+1]` -/
def P16876770075576862235.Spec : Prop :=
  ∀ n, P16876770075576862235.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P414859357923276936

`p?[4*A101448(n+1)+5]`
-/

namespace A145475.P414859357923276936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101448 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P414859357923276936

namespace A145475

/-- `p?[4*A101448(n+1)+5]` -/
def P414859357923276936.Spec : Prop :=
  ∀ n, P414859357923276936.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P3799925329445844255

`p?[2*A040976(n+1)-13]`
-/

namespace A145475.P3799925329445844255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040976 (n + 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P3799925329445844255

namespace A145475

/-- `p?[2*A040976(n+1)-13]` -/
def P3799925329445844255.Spec : Prop :=
  ∀ n, P3799925329445844255.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P1514774223159692156

`p?[2*A000040(n+1)-17]`
-/

namespace A145475.P1514774223159692156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P1514774223159692156

namespace A145475

/-- `p?[2*A000040(n+1)-17]` -/
def P1514774223159692156.Spec : Prop :=
  ∀ n, P1514774223159692156.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P6064119391893889123

`p?[4*(A005097(n+1)-4)+1]`
-/

namespace A145475.P6064119391893889123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A005097 (n + 1) - 4) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P6064119391893889123

namespace A145475

/-- `p?[4*(A005097(n+1)-4)+1]` -/
def P6064119391893889123.Spec : Prop :=
  ∀ n, P6064119391893889123.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P6273326546955125026

`p?[A001748(n+1)-(A052147(n+1)+15)]`
-/

namespace A145475.P6273326546955125026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - (A052147 (n + 1) + 15)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P6273326546955125026

namespace A145475

/-- `p?[A001748(n+1)-(A052147(n+1)+15)]` -/
def P6273326546955125026.Spec : Prop :=
  ∀ n, P6273326546955125026.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P17264162727030959159

`p?[A076274(n+1)-16]`
-/

namespace A145475.P17264162727030959159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P17264162727030959159

namespace A145475

/-- `p?[A076274(n+1)-16]` -/
def P17264162727030959159.Spec : Prop :=
  ∀ n, P17264162727030959159.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P319580364665136129

`p?[A001747(n+1)-17]`
-/

namespace A145475.P319580364665136129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P319580364665136129

namespace A145475

/-- `p?[A001747(n+1)-17]` -/
def P319580364665136129.Spec : Prop :=
  ∀ n, P319580364665136129.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P11643387956946614673

`p?[A008578(n+1)+A008578(n+1)-17]`
-/

namespace A145475.P11643387956946614673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A008578 (n + 1) - 17)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P11643387956946614673

namespace A145475

/-- `p?[A008578(n+1)+A008578(n+1)-17]` -/
def P11643387956946614673.Spec : Prop :=
  ∀ n, P11643387956946614673.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P12170657756100004858

`A017581(A145489(n+1))`
-/

namespace A145475.P12170657756100004858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (A145489 (n + 1)).toNat

end

end A145475.P12170657756100004858

namespace A145475

/-- `A017581(A145489(n+1))` -/
def P12170657756100004858.Spec : Prop :=
  ∀ n, P12170657756100004858.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P13467643394662285714

`p?[A001358(n+1)-17]`
-/

namespace A145475.P13467643394662285714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P13467643394662285714

namespace A145475

/-- `p?[A001358(n+1)-17]` -/
def P13467643394662285714.Spec : Prop :=
  ∀ n, P13467643394662285714.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P10895906763773623823

`p?[A001222(A016969(n+1))*A016969(2*n)]`
-/

namespace A145475.P10895906763773623823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 (n + 1)).toNat * A016969 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P10895906763773623823

namespace A145475

/-- `p?[A001222(A016969(n+1))*A016969(2*n)]` -/
def P10895906763773623823.Spec : Prop :=
  ∀ n, P10895906763773623823.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P293610829868855471

`p?[A014682(A004767(2*n)*A167020(n+2))]`
-/

namespace A145475.P293610829868855471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A004767 (2 * n) * A167020 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P293610829868855471

namespace A145475

/-- `p?[A014682(A004767(2*n)*A167020(n+2))]` -/
def P293610829868855471.Spec : Prop :=
  ∀ n, P293610829868855471.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P18190862832091156973

`p?[A006881(n+1)-17]`
-/

namespace A145475.P18190862832091156973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P18190862832091156973

namespace A145475

/-- `p?[A006881(n+1)-17]` -/
def P18190862832091156973.Spec : Prop :=
  ∀ n, P18190862832091156973.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P15508128581572843899

`p?[A088707(n+1)-18]`
-/

namespace A145475.P15508128581572843899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P15508128581572843899

namespace A145475

/-- `p?[A088707(n+1)-18]` -/
def P15508128581572843899.Spec : Prop :=
  ∀ n, P15508128581572843899.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P7805389296304590563

`p?[A047270(4*n+3-A167020(n+2))]`
-/

namespace A145475.P7805389296304590563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 ((4 * n + 3 : ℤ) - A167020 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P7805389296304590563

namespace A145475

/-- `p?[A047270(4*n+3-A167020(n+2))]` -/
def P7805389296304590563.Spec : Prop :=
  ∀ n, P7805389296304590563.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P15721002045742466106

`p?[A005843(A000040(n+1))-17]`
-/

namespace A145475.P15721002045742466106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000040 (n + 1)).toNat - 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P15721002045742466106

namespace A145475

/-- `p?[A005843(A000040(n+1))-17]` -/
def P15721002045742466106.Spec : Prop :=
  ∀ n, P15721002045742466106.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P1977485710698663562

`p?[record[n-A130065(n+1)²]]`
-/

namespace A145475.P1977485710698663562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A130065 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P1977485710698663562

namespace A145475

/-- `p?[record[n-A130065(n+1)²]]` -/
def P1977485710698663562.Spec : Prop :=
  ∀ n, P1977485710698663562.a n = A145475 (n + 1)

end A145475

/-! ## A145475.P4003624319296529015

`p?[n-A325314(2*(n+1))²]`
-/

namespace A145475.P4003624319296529015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A325314 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145475.P4003624319296529015

namespace A145475

/-- `p?[n-A325314(2*(n+1))²]` -/
def P4003624319296529015.Spec : Prop :=
  ∀ n, P4003624319296529015.a n = A145475 (n + 1)

end A145475

/-!
# A145476: Primes p such that (19 + p)/2 is prime.

The programs for A145476, the canonical program `A145476.P10984387256319330847` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145476 has offset 1).

The definition of A145476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145476.P10984387256319330847

`2*(A145482(n+1)-3)-13`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A145476

/-- `2*(A145482(n+1)-3)-13` -/
def P10984387256319330847.Spec : Prop :=
  ∀ n, P10984387256319330847.a n = A145476 (n + 1)

theorem P10984387256319330847.correct : P10984387256319330847.Spec := by
  intro n
  simp only [A145476, Nat.add_sub_cancel]

end A145476

/-! ## A145476.P4856779457673665145

`p?[4*n+3-A305901(n+2)²]`
-/

namespace A145476.P4856779457673665145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - A305901 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P4856779457673665145

namespace A145476

/-- `p?[4*n+3-A305901(n+2)²]` -/
def P4856779457673665145.Spec : Prop :=
  ∀ n, P4856779457673665145.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P17281244419342922361

`p?[A076274(n+1)-18]`
-/

namespace A145476.P17281244419342922361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P17281244419342922361

namespace A145476

/-- `p?[A076274(n+1)-18]` -/
def P17281244419342922361.Spec : Prop :=
  ∀ n, P17281244419342922361.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P15994225659786312067

`p?[A001747(n+1)-19]`
-/

namespace A145476.P15994225659786312067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P15994225659786312067

namespace A145476

/-- `p?[A001747(n+1)-19]` -/
def P15994225659786312067.Spec : Prop :=
  ∀ n, P15994225659786312067.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P9698001762611136904

`p?[A100484(n+1)-19]`
-/

namespace A145476.P9698001762611136904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P9698001762611136904

namespace A145476

/-- `p?[A100484(n+1)-19]` -/
def P9698001762611136904.Spec : Prop :=
  ∀ n, P9698001762611136904.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P1993597482433193259

`p?[A072055(n+1)-20]`
-/

namespace A145476.P1993597482433193259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P1993597482433193259

namespace A145476

/-- `p?[A072055(n+1)-20]` -/
def P1993597482433193259.Spec : Prop :=
  ∀ n, P1993597482433193259.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P18366443061342387670

`p?[2*A088967(n+1)-1]`
-/

namespace A145476.P18366443061342387670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088967 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P18366443061342387670

namespace A145476

/-- `p?[2*A088967(n+1)-1]` -/
def P18366443061342387670.Spec : Prop :=
  ∀ n, P18366443061342387670.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P9875626709100183256

`p?[4*A101448(n+1)+3]`
-/

namespace A145476.P9875626709100183256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A101448 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P9875626709100183256

namespace A145476

/-- `p?[4*A101448(n+1)+3]` -/
def P9875626709100183256.Spec : Prop :=
  ∀ n, P9875626709100183256.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P17110900644767029435

`p?[2*A000040(n+1)-19]`
-/

namespace A145476.P17110900644767029435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P17110900644767029435

namespace A145476

/-- `p?[2*A000040(n+1)-19]` -/
def P17110900644767029435.Spec : Prop :=
  ∀ n, P17110900644767029435.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P6069078459612313317

`p?[2*(A040976(n+1)-10)+5]`
-/

namespace A145476.P6069078459612313317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040976 (n + 1) - 10) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P6069078459612313317

namespace A145476

/-- `p?[2*(A040976(n+1)-10)+5]` -/
def P6069078459612313317.Spec : Prop :=
  ∀ n, P6069078459612313317.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P5423762736243322285

`p?[A008578(n+1)+A008578(n+1)-19]`
-/

namespace A145476.P5423762736243322285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) + (A008578 (n + 1) - 19)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P5423762736243322285

namespace A145476

/-- `p?[A008578(n+1)+A008578(n+1)-19]` -/
def P5423762736243322285.Spec : Prop :=
  ∀ n, P5423762736243322285.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P12372407873104838450

`p?[2*(p?[A000430(n+1)]-10)+1]`
-/

namespace A145476.P12372407873104838450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - 10) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P12372407873104838450

namespace A145476

/-- `p?[2*(p?[A000430(n+1)]-10)+1]` -/
def P12372407873104838450.Spec : Prop :=
  ∀ n, P12372407873104838450.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P8937596529328097566

`p?[2*(A089026(n+1)-10)+1]`
-/

namespace A145476.P8937596529328097566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089026 (n + 1) - 10) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P8937596529328097566

namespace A145476

/-- `p?[2*(A089026(n+1)-10)+1]` -/
def P8937596529328097566.Spec : Prop :=
  ∀ n, P8937596529328097566.a n = A145476 (n + 1)

end A145476

/-! ## A145476.P7581476245993438520

`p?[A284879(A000040(n+2))-18]`
-/

namespace A145476.P7581476245993438520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284879 (A000040 (n + 2)).toNat - 18

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145476.P7581476245993438520

namespace A145476

/-- `p?[A284879(A000040(n+2))-18]` -/
def P7581476245993438520.Spec : Prop :=
  ∀ n, P7581476245993438520.a n = A145476 (n + 1)

end A145476

/-!
# A145477: Primes p such that (23 + p)/2 is prime.

The programs for A145477, the canonical program `A145477.P7650776150596688372` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145477 has offset 1).

The definition of A145477 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1283 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145477.P11496379421956292305

`p?[A076274(n+1)-22]`
-/

namespace A145477.P11496379421956292305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P11496379421956292305

namespace A145477

/-- `p?[A076274(n+1)-22]` -/
def P11496379421956292305.Spec : Prop :=
  ∀ n, P11496379421956292305.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P7773995007741369642

`p?[A072055(n+1)-24]`
-/

namespace A145477.P7773995007741369642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P7773995007741369642

namespace A145477

/-- `p?[A072055(n+1)-24]` -/
def P7773995007741369642.Spec : Prop :=
  ∀ n, P7773995007741369642.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P7650776150596688372

`p?[2*A006093(n+1)-21]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145477

/-- `p?[2*A006093(n+1)-21]` -/
def P7650776150596688372.Spec : Prop :=
  ∀ n, P7650776150596688372.a n = A145477 (n + 1)

theorem P7650776150596688372.correct : P7650776150596688372.Spec := by
  intro n
  simp only [A145477, Nat.add_sub_cancel]

end A145477

/-! ## A145477.P679672712932411251

`p?[2*A000040(n+1)-23]`
-/

namespace A145477.P679672712932411251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P679672712932411251

namespace A145477

/-- `p?[2*A000040(n+1)-23]` -/
def P679672712932411251.Spec : Prop :=
  ∀ n, P679672712932411251.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P11902905288953152971

`p?[2*A008578(n+1)-23]`
-/

namespace A145477.P11902905288953152971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P11902905288953152971

namespace A145477

/-- `p?[2*A008578(n+1)-23]` -/
def P11902905288953152971.Spec : Prop :=
  ∀ n, P11902905288953152971.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P5185500179343781477

`p?[2*(A040976(n+1)-10)+1]`
-/

namespace A145477.P5185500179343781477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A040976 (n + 1) - 10) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P5185500179343781477

namespace A145477

/-- `p?[2*(A040976(n+1)-10)+1]` -/
def P5185500179343781477.Spec : Prop :=
  ∀ n, P5185500179343781477.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P14875259897116813792

`p?[2*(lt[n, A006530(n+1)]-11)+1]`
-/

namespace A145477.P14875259897116813792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 11) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P14875259897116813792

namespace A145477

/-- `p?[2*(lt[n, A006530(n+1)]-11)+1]` -/
def P14875259897116813792.Spec : Prop :=
  ∀ n, P14875259897116813792.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P5502751428950434258

`p?[A241013(n+1)-23]`
-/

namespace A145477.P5502751428950434258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241013 (n + 1) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P5502751428950434258

namespace A145477

/-- `p?[A241013(n+1)-23]` -/
def P5502751428950434258.Spec : Prop :=
  ∀ n, P5502751428950434258.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P6958537325857024620

`p?[A006881(n+1)-23]`
-/

namespace A145477.P6958537325857024620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P6958537325857024620

namespace A145477

/-- `p?[A006881(n+1)-23]` -/
def P6958537325857024620.Spec : Prop :=
  ∀ n, P6958537325857024620.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P1685254031606469624

`p?[A005843(A000040(n+1))-23]`
-/

namespace A145477.P1685254031606469624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000040 (n + 1)).toNat - 23

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P1685254031606469624

namespace A145477

/-- `p?[A005843(A000040(n+1))-23]` -/
def P1685254031606469624.Spec : Prop :=
  ∀ n, P1685254031606469624.a n = A145477 (n + 1)

end A145477

/-! ## A145477.P15078749767372710212

`p?[A042948(A000040(n+1)-1)-21]`
-/

namespace A145477.P15078749767372710212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A000040 (n + 1) - 1).toNat - 21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145477.P15078749767372710212

namespace A145477

/-- `p?[A042948(A000040(n+1)-1)-21]` -/
def P15078749767372710212.Spec : Prop :=
  ∀ n, P15078749767372710212.a n = A145477 (n + 1)

end A145477

/-!
# A145478: Primes p such that (29 + p)/2 is prime.

The programs for A145478, the canonical program `A145478.P8300234844944673233` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145478 has offset 1).

The definition of A145478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145478.P2148369624039135295

`p?[2*A086303(n+1)+1]`
-/

namespace A145478.P2148369624039135295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086303 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P2148369624039135295

namespace A145478

/-- `p?[2*A086303(n+1)+1]` -/
def P2148369624039135295.Spec : Prop :=
  ∀ n, P2148369624039135295.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P8300234844944673233

`p?[A001747(n+1)-29]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145478

/-- `p?[A001747(n+1)-29]` -/
def P8300234844944673233.Spec : Prop :=
  ∀ n, P8300234844944673233.a n = A145478 (n + 1)

theorem P8300234844944673233.correct : P8300234844944673233.Spec := by
  intro n
  simp only [A145478, Nat.add_sub_cancel]

end A145478

/-! ## A145478.P12890955017244156713

`p?[A100484(n+1)-29]`
-/

namespace A145478.P12890955017244156713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P12890955017244156713

namespace A145478

/-- `p?[A100484(n+1)-29]` -/
def P12890955017244156713.Spec : Prop :=
  ∀ n, P12890955017244156713.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P16801173909189336106

`p?[A072055(n+1)-30]`
-/

namespace A145478.P16801173909189336106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P16801173909189336106

namespace A145478

/-- `p?[A072055(n+1)-30]` -/
def P16801173909189336106.Spec : Prop :=
  ∀ n, P16801173909189336106.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P1684267356963375134

`p?[2*A006093(n+1)-27]`
-/

namespace A145478.P1684267356963375134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - 27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P1684267356963375134

namespace A145478

/-- `p?[2*A006093(n+1)-27]` -/
def P1684267356963375134.Spec : Prop :=
  ∀ n, P1684267356963375134.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P9729950158898029542

`p?[2*A000040(n+1)-29]`
-/

namespace A145478.P9729950158898029542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P9729950158898029542

namespace A145478

/-- `p?[2*A000040(n+1)-29]` -/
def P9729950158898029542.Spec : Prop :=
  ∀ n, P9729950158898029542.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P9513552579719529595

`p?[2*A008578(n+1)-29]`
-/

namespace A145478.P9513552579719529595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P9513552579719529595

namespace A145478

/-- `p?[2*A008578(n+1)-29]` -/
def P9513552579719529595.Spec : Prop :=
  ∀ n, P9513552579719529595.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P10476382113712693569

`p?[A000040(n+2)+A000040(n+2)-29]`
-/

namespace A145478.P10476382113712693569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) + (A000040 (n + 2) - 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P10476382113712693569

namespace A145478

/-- `p?[A000040(n+2)+A000040(n+2)-29]` -/
def P10476382113712693569.Spec : Prop :=
  ∀ n, P10476382113712693569.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P18439166436156215329

`p?[A157931(n+1)-29]`
-/

namespace A145478.P18439166436156215329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P18439166436156215329

namespace A145478

/-- `p?[A157931(n+1)-29]` -/
def P18439166436156215329.Spec : Prop :=
  ∀ n, P18439166436156215329.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P2517484871272380086

`p?[A001358(n+1)-29]`
-/

namespace A145478.P2517484871272380086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P2517484871272380086

namespace A145478

/-- `p?[A001358(n+1)-29]` -/
def P2517484871272380086.Spec : Prop :=
  ∀ n, P2517484871272380086.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P5824556505854321552

`p?[A138511(n+1)-29]`
-/

namespace A145478.P5824556505854321552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138511 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P5824556505854321552

namespace A145478

/-- `p?[A138511(n+1)-29]` -/
def P5824556505854321552.Spec : Prop :=
  ∀ n, P5824556505854321552.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P3988249126218835360

`p?[A006881(n+1)-29]`
-/

namespace A145478.P3988249126218835360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P3988249126218835360

namespace A145478

/-- `p?[A006881(n+1)-29]` -/
def P3988249126218835360.Spec : Prop :=
  ∀ n, P3988249126218835360.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P7467141887977272276

`p?[A088707(n+1)-30]`
-/

namespace A145478.P7467141887977272276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P7467141887977272276

namespace A145478

/-- `p?[A088707(n+1)-30]` -/
def P7467141887977272276.Spec : Prop :=
  ∀ n, P7467141887977272276.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P14679778154426833306

`p?[4*n+9-A139608(A171435(2*n+1))]`
-/

namespace A145478.P14679778154426833306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 9 : ℤ) - A139608 (A171435 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P14679778154426833306

namespace A145478

/-- `p?[4*n+9-A139608(A171435(2*n+1))]` -/
def P14679778154426833306.Spec : Prop :=
  ∀ n, P14679778154426833306.a n = A145478 (n + 1)

end A145478

/-! ## A145478.P10848346390521413743

`p?[A288814(3*n+4)-29]`
-/

namespace A145478.P10848346390521413743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288814 (3 * n + 4) - 29

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145478.P10848346390521413743

namespace A145478

/-- `p?[A288814(3*n+4)-29]` -/
def P10848346390521413743.Spec : Prop :=
  ∀ n, P10848346390521413743.a n = A145478 (n + 1)

end A145478

/-!
# A145479: Primes p such that (31+p)/2 is prime.

The programs for A145479, the canonical program `A145479.P5146856284210812585` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145479 has offset 1).

The definition of A145479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1407 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145479.P5146856284210812585

`p?[A053177(n+1)-32]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A145479

/-- `p?[A053177(n+1)-32]` -/
def P5146856284210812585.Spec : Prop :=
  ∀ n, P5146856284210812585.a n = A145479 (n + 1)

theorem P5146856284210812585.correct : P5146856284210812585.Spec := by
  intro n
  simp only [A145479, Nat.add_sub_cancel]

end A145479

/-! ## A145479.P11620065678750176907

`p?[A033945(n+1)-30]`
-/

namespace A145479.P11620065678750176907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033945 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P11620065678750176907

namespace A145479

/-- `p?[A033945(n+1)-30]` -/
def P11620065678750176907.Spec : Prop :=
  ∀ n, P11620065678750176907.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P13982116432140146019

`p?[A076274(n+1)-30]`
-/

namespace A145479.P13982116432140146019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - 30

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P13982116432140146019

namespace A145479

/-- `p?[A076274(n+1)-30]` -/
def P13982116432140146019.Spec : Prop :=
  ∀ n, P13982116432140146019.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P10769276323297137054

`p?[A100484(n+1)-31]`
-/

namespace A145479.P10769276323297137054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P10769276323297137054

namespace A145479

/-- `p?[A100484(n+1)-31]` -/
def P10769276323297137054.Spec : Prop :=
  ∀ n, P10769276323297137054.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P9407064855658340936

`p?[A072055(n+1)-32]`
-/

namespace A145479.P9407064855658340936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P9407064855658340936

namespace A145479

/-- `p?[A072055(n+1)-32]` -/
def P9407064855658340936.Spec : Prop :=
  ∀ n, P9407064855658340936.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P1450043712104774448

`p?[2*A086303(n+1)-1]`
-/

namespace A145479.P1450043712104774448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086303 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P1450043712104774448

namespace A145479

/-- `p?[2*A086303(n+1)-1]` -/
def P1450043712104774448.Spec : Prop :=
  ∀ n, P1450043712104774448.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P16013291693239933660

`p?[2*A000040(n+1)-31]`
-/

namespace A145479.P16013291693239933660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P16013291693239933660

namespace A145479

/-- `p?[2*A000040(n+1)-31]` -/
def P16013291693239933660.Spec : Prop :=
  ∀ n, P16013291693239933660.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P14819545863296114740

`p?[or(2, A001747(n+1)-33)]`
-/

namespace A145479.P14819545863296114740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A001747 (n + 1) - 33)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P14819545863296114740

namespace A145479

/-- `p?[or(2, A001747(n+1)-33)]` -/
def P14819545863296114740.Spec : Prop :=
  ∀ n, P14819545863296114740.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P8734493002748821896

`p?[A004273(2*A089559(n+1))]`
-/

namespace A145479.P8734493002748821896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * A089559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P8734493002748821896

namespace A145479

/-- `p?[A004273(2*A089559(n+1))]` -/
def P8734493002748821896.Spec : Prop :=
  ∀ n, P8734493002748821896.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P1080010255437423374

`p?[A005843(A000040(n+1))-31]`
-/

namespace A145479.P1080010255437423374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A000040 (n + 1)).toNat - 31

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P1080010255437423374

namespace A145479

/-- `p?[A005843(A000040(n+1))-31]` -/
def P1080010255437423374.Spec : Prop :=
  ∀ n, P1080010255437423374.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P11608121725691419480

`p?[A114562(2*A089559(n+1))-1]`
-/

namespace A145479.P11608121725691419480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114562 (2 * A089559 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P11608121725691419480

namespace A145479

/-- `p?[A114562(2*A089559(n+1))-1]` -/
def P11608121725691419480.Spec : Prop :=
  ∀ n, P11608121725691419480.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P6410462275993350971

`p?[A064680(lt[A001222(n+16), 2])+1]`
-/

namespace A145479.P6410462275993350971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 16)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P6410462275993350971

namespace A145479

/-- `p?[A064680(lt[A001222(n+16), 2])+1]` -/
def P6410462275993350971.Spec : Prop :=
  ∀ n, P6410462275993350971.a n = A145479 (n + 1)

end A145479

/-! ## A145479.P2151002097269677654

`p?[A020742(2*n)-A139608(A171435(2*n+1))]`
-/

namespace A145479.P2151002097269677654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 (2 * n) - A139608 (A171435 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145479.P2151002097269677654

namespace A145479

/-- `p?[A020742(2*n)-A139608(A171435(2*n+1))]` -/
def P2151002097269677654.Spec : Prop :=
  ∀ n, P2151002097269677654.a n = A145479 (n + 1)

end A145479

/-!
# A145480: Primes p such that (p+37)/2 is prime.

The programs for A145480, the canonical program `A145480.P15131600134034301357` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145480 has offset 1).

The definition of A145480 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145480.P15131600134034301357

`p?[2*A002476(n+1)-37]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A145480

/-- `p?[2*A002476(n+1)-37]` -/
def P15131600134034301357.Spec : Prop :=
  ∀ n, P15131600134034301357.a n = A145480 (n + 1)

theorem P15131600134034301357.correct : P15131600134034301357.Spec := by
  intro n
  simp only [A145480, Nat.add_sub_cancel]

end A145480

/-! ## A145480.P15126538942610407789

`p?[4*A153143(n+1)+1]`
-/

namespace A145480.P15126538942610407789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A153143 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P15126538942610407789

namespace A145480

/-- `p?[4*A153143(n+1)+1]` -/
def P15126538942610407789.Spec : Prop :=
  ∀ n, P15126538942610407789.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P69898027096086916

`p?[4*(A005097(n+1)-7)-7]`
-/

namespace A145480.P69898027096086916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A005097 (n + 1) - 7) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P69898027096086916

namespace A145480

/-- `p?[4*(A005097(n+1)-7)-7]` -/
def P69898027096086916.Spec : Prop :=
  ∀ n, P69898027096086916.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P13109699845855035608

`p?[A076274(n+1)-36]`
-/

namespace A145480.P13109699845855035608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) - 36

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P13109699845855035608

namespace A145480

/-- `p?[A076274(n+1)-36]` -/
def P13109699845855035608.Spec : Prop :=
  ∀ n, P13109699845855035608.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P6362654066007128004

`p?[A100484(n+1)-37]`
-/

namespace A145480.P6362654066007128004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P6362654066007128004

namespace A145480

/-- `p?[A100484(n+1)-37]` -/
def P6362654066007128004.Spec : Prop :=
  ∀ n, P6362654066007128004.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P6670373749126740781

`p?[A161344(n+1)-37]`
-/

namespace A145480.P6670373749126740781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161344 (n + 1) - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P6670373749126740781

namespace A145480

/-- `p?[A161344(n+1)-37]` -/
def P6670373749126740781.Spec : Prop :=
  ∀ n, P6670373749126740781.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P10084485921245606271

`p?[2*A006093(n+1)-35]`
-/

namespace A145480.P10084485921245606271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006093 (n + 1) - 35

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P10084485921245606271

namespace A145480

/-- `p?[2*A006093(n+1)-35]` -/
def P10084485921245606271.Spec : Prop :=
  ∀ n, P10084485921245606271.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P18319610212530288005

`p?[2*A000040(n+1)-37]`
-/

namespace A145480.P18319610212530288005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000040 (n + 1) - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P18319610212530288005

namespace A145480

/-- `p?[2*A000040(n+1)-37]` -/
def P18319610212530288005.Spec : Prop :=
  ∀ n, P18319610212530288005.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P13896526606457274885

`p?[2*A008578(n+1)-37]`
-/

namespace A145480.P13896526606457274885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1) - 37

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P13896526606457274885

namespace A145480

/-- `p?[2*A008578(n+1)-37]` -/
def P13896526606457274885.Spec : Prop :=
  ∀ n, P13896526606457274885.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P5841561624882058362

`p?[A008578(n+2)+A008578(n+2)-37]`
-/

namespace A145480.P5841561624882058362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + (A008578 (n + 2) - 37)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P5841561624882058362

namespace A145480

/-- `p?[A008578(n+2)+A008578(n+2)-37]` -/
def P5841561624882058362.Spec : Prop :=
  ∀ n, P5841561624882058362.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P14892383121475772378

`p?[A074828(2*n+1)-A161705(A074828(2*(n+1)))]`
-/

namespace A145480.P14892383121475772378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (2 * n + 1) - A161705 (A074828 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P14892383121475772378

namespace A145480

/-- `p?[A074828(2*n+1)-A161705(A074828(2*(n+1)))]` -/
def P14892383121475772378.Spec : Prop :=
  ∀ n, P14892383121475772378.a n = A145480 (n + 1)

end A145480

/-! ## A145480.P8958741073354661342

`p?[A005408(A000040(n+1))-38]`
-/

namespace A145480.P8958741073354661342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A000040 (n + 1)).toNat - 38

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145480.P8958741073354661342

namespace A145480

/-- `p?[A005408(A000040(n+1))-38]` -/
def P8958741073354661342.Spec : Prop :=
  ∀ n, P8958741073354661342.a n = A145480 (n + 1)

end A145480

/-!
# A145481: Primes p such that 2*p - 17 is prime.

The programs for A145481, there is no canonical definition to state claims against.
-/

/-! ## A145481.P17068524476798054661

`p?[A098605(n+1)]`
-/

namespace A145481.P17068524476798054661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P17068524476798054661

/-! ## A145481.P5723543640885934532

`p?[A097480(n+1)+1]`
-/

namespace A145481.P5723543640885934532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P5723543640885934532

/-! ## A145481.P14617027792396457130

`p?[A097363(n+1)+2]`
-/

namespace A145481.P14617027792396457130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P14617027792396457130

/-! ## A145481.P9139254082566533901

`p?[A097932(n+1)-1]`
-/

namespace A145481.P9139254082566533901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P9139254082566533901

/-! ## A145481.P10701744491901696234

`p?[A097338(n+1)+3]`
-/

namespace A145481.P10701744491901696234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P10701744491901696234

/-! ## A145481.P15476201787675552413

`p?[A089192(n+1)+5]`
-/

namespace A145481.P15476201787675552413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P15476201787675552413

/-! ## A145481.P16987607440917211878

`p?[A089253(n+1)+6]`
-/

namespace A145481.P16987607440917211878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P16987607440917211878

/-! ## A145481.P6629279734859863361

`p?[A098090(n+1)+7]`
-/

namespace A145481.P6629279734859863361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P6629279734859863361

/-! ## A145481.P12597586410275697384

`p?[A006254(n+1)+8]`
-/

namespace A145481.P12597586410275697384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P12597586410275697384

/-! ## A145481.P10803430777825923390

`p?[A005097(n+1)+9]`
-/

namespace A145481.P10803430777825923390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P10803430777825923390

/-! ## A145481.P1687635041601025704

`p?[A130290(n+1)+9]`
-/

namespace A145481.P1687635041601025704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P1687635041601025704

/-! ## A145481.P14040394370162618925

`p?[floor(A000040(n+2)/2)+9]`
-/

namespace A145481.P14040394370162618925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / 2⌋ + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P14040394370162618925

/-! ## A145481.P9370071986419438227

`p?[round((A008864(n+1)+15)/2)]`
-/

namespace A145481.P9370071986419438227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008864 (n + 1) + 15 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P9370071986419438227

/-! ## A145481.P10039473054575982564

`p?[ceil((A000040(n+1)+17)/2)]`
-/

namespace A145481.P10039473054575982564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000040 (n + 1) + 17 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145481.P10039473054575982564

/-! ## A145481.P2948422546811535442

`record[A006530(A098605(n+2))]`
-/

namespace A145481.P2948422546811535442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098605 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145481.P2948422546811535442

/-! ## A145481.P16423496499217414577

`filter[A098605(n+1), A010051(#)]`
-/

namespace A145481.P16423496499217414577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A145481.P16423496499217414577

/-! ## A145481.P4282064731717805718

`filter[A098605(n+1), A302777(#)]`
-/

namespace A145481.P4282064731717805718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A145481.P4282064731717805718

/-! ## A145481.P13524488060518142479

`filter[A098605(n+1), A323153(#)]`
-/

namespace A145481.P13524488060518142479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A145481.P13524488060518142479

/-!
# A145482: Primes p such that 2*p - 19 is prime.

The programs for A145482, the canonical program `A145482.P8102989359742908315` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145482 has offset 1).

The definition of A145482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 715 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145482.P8102989359742908315

`p?[A097932(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A145482

/-- `p?[A097932(n+1)]` -/
def P8102989359742908315.Spec : Prop :=
  ∀ n, P8102989359742908315.a n = A145482 (n + 1)

theorem P8102989359742908315.correct : P8102989359742908315.Spec := by
  intro n
  simp only [A145482, Nat.add_sub_cancel]

end A145482

/-! ## A145482.P1569983950852749773

`p?[A098605(n+1)+1]`
-/

namespace A145482.P1569983950852749773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P1569983950852749773

namespace A145482

/-- `p?[A098605(n+1)+1]` -/
def P1569983950852749773.Spec : Prop :=
  ∀ n, P1569983950852749773.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P15665461477889122629

`p?[A097480(n+1)+2]`
-/

namespace A145482.P15665461477889122629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P15665461477889122629

namespace A145482

/-- `p?[A097480(n+1)+2]` -/
def P15665461477889122629.Spec : Prop :=
  ∀ n, P15665461477889122629.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P12550367579459539130

`p?[A097338(n+1)+4]`
-/

namespace A145482.P12550367579459539130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P12550367579459539130

namespace A145482

/-- `p?[A097338(n+1)+4]` -/
def P12550367579459539130.Spec : Prop :=
  ∀ n, P12550367579459539130.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P1428882874928729891

`p?[A089192(n+1)+6]`
-/

namespace A145482.P1428882874928729891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P1428882874928729891

namespace A145482

/-- `p?[A089192(n+1)+6]` -/
def P1428882874928729891.Spec : Prop :=
  ∀ n, P1428882874928729891.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P9187211454581324441

`p?[A089253(n+1)+7]`
-/

namespace A145482.P9187211454581324441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P9187211454581324441

namespace A145482

/-- `p?[A089253(n+1)+7]` -/
def P9187211454581324441.Spec : Prop :=
  ∀ n, P9187211454581324441.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P1560708774589282726

`p?[A098090(n+1)+8]`
-/

namespace A145482.P1560708774589282726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P1560708774589282726

namespace A145482

/-- `p?[A098090(n+1)+8]` -/
def P1560708774589282726.Spec : Prop :=
  ∀ n, P1560708774589282726.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P9859885051879593943

`p?[A006254(n+1)+9]`
-/

namespace A145482.P9859885051879593943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P9859885051879593943

namespace A145482

/-- `p?[A006254(n+1)+9]` -/
def P9859885051879593943.Spec : Prop :=
  ∀ n, P9859885051879593943.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P8174482311904480440

`p?[A005097(n+1)+10]`
-/

namespace A145482.P8174482311904480440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P8174482311904480440

namespace A145482

/-- `p?[A005097(n+1)+10]` -/
def P8174482311904480440.Spec : Prop :=
  ∀ n, P8174482311904480440.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P17631143251338544588

`p?[floor(A000040(n+2)/2)+10]`
-/

namespace A145482.P17631143251338544588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / 2⌋ + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145482.P17631143251338544588

namespace A145482

/-- `p?[floor(A000040(n+2)/2)+10]` -/
def P17631143251338544588.Spec : Prop :=
  ∀ n, P17631143251338544588.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P10607670010297913156

`filter[A097932(n+1), A010051(#)]`
-/

namespace A145482.P10607670010297913156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A145482.P10607670010297913156

namespace A145482

/-- `filter[A097932(n+1), A010051(#)]` -/
def P10607670010297913156.Spec : Prop :=
  ∀ n, P10607670010297913156.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P6750478147590553976

`record[A006530(A098605(n+1)+1)]`
-/

namespace A145482.P6750478147590553976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A098605 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145482.P6750478147590553976

namespace A145482

/-- `record[A006530(A098605(n+1)+1)]` -/
def P6750478147590553976.Spec : Prop :=
  ∀ n, P6750478147590553976.a n = A145482 (n + 1)

end A145482

/-! ## A145482.P15820718907779357641

`∩[A000040(n+1), A097932(n+1)]`
-/

namespace A145482.P15820718907779357641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145482.P15820718907779357641

namespace A145482

/-- `∩[A000040(n+1), A097932(n+1)]` -/
def P15820718907779357641.Spec : Prop :=
  ∀ n, (P15820718907779357641.a n : ℤ) = A145482 (n + 1)

end A145482

/-! ## A145482.P6118746634848294099

`∩[A004139(n+1), A097932(n+1)]`
-/

namespace A145482.P6118746634848294099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145482.P6118746634848294099

namespace A145482

/-- `∩[A004139(n+1), A097932(n+1)]` -/
def P6118746634848294099.Spec : Prop :=
  ∀ n, (P6118746634848294099.a n : ℤ) = A145482 (n + 1)

end A145482

/-! ## A145482.P10803701959209437292

`∩[A006005(n+1), A097932(n+1)]`
-/

namespace A145482.P10803701959209437292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145482.P10803701959209437292

namespace A145482

/-- `∩[A006005(n+1), A097932(n+1)]` -/
def P10803701959209437292.Spec : Prop :=
  ∀ n, (P10803701959209437292.a n : ℤ) = A145482 (n + 1)

end A145482

/-! ## A145482.P2801972545188746304

`∩[A008578(n+1), A097932(n+1)]`
-/

namespace A145482.P2801972545188746304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145482.P2801972545188746304

namespace A145482

/-- `∩[A008578(n+1), A097932(n+1)]` -/
def P2801972545188746304.Spec : Prop :=
  ∀ n, (P2801972545188746304.a n : ℤ) = A145482 (n + 1)

end A145482

/-! ## A145482.P17318907598610387901

`∩[A040116(n+1), A097932(n+1)]`
-/

namespace A145482.P17318907598610387901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145482.P17318907598610387901

namespace A145482

/-- `∩[A040116(n+1), A097932(n+1)]` -/
def P17318907598610387901.Spec : Prop :=
  ∀ n, (P17318907598610387901.a n : ℤ) = A145482 (n + 1)

end A145482

/-! ## A145482.P4954242592842357834

`∩[A045319(n+1), A097932(n+1)]`
-/

namespace A145482.P4954242592842357834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145482.P4954242592842357834

namespace A145482

/-- `∩[A045319(n+1), A097932(n+1)]` -/
def P4954242592842357834.Spec : Prop :=
  ∀ n, (P4954242592842357834.a n : ℤ) = A145482 (n + 1)

end A145482

/-! ## A145482.P5729668495119339414

`∩[A045344(n+1), A097932(n+1)]`
-/

namespace A145482.P5729668495119339414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145482.P5729668495119339414

namespace A145482

/-- `∩[A045344(n+1), A097932(n+1)]` -/
def P5729668495119339414.Spec : Prop :=
  ∀ n, (P5729668495119339414.a n : ℤ) = A145482 (n + 1)

end A145482

/-!
# A145483: Primes p such that 2*p - 23 is prime.

The programs for A145483, the canonical program `A145483.P10721197384634604581` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145483 has offset 1).

The definition of A145483 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 838 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145483.P10721197384634604581

`p?[A104279(n+1)+12]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A145483

/-- `p?[A104279(n+1)+12]` -/
def P10721197384634604581.Spec : Prop :=
  ∀ n, P10721197384634604581.a n = A145483 (n + 1)

theorem P10721197384634604581.correct : P10721197384634604581.Spec := by
  intro n
  simp only [A145483, Nat.add_sub_cancel]

end A145483

/-! ## A145483.P15177081975422129891

`p?[A097932(n+1)+2]`
-/

namespace A145483.P15177081975422129891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P15177081975422129891

namespace A145483

/-- `p?[A097932(n+1)+2]` -/
def P15177081975422129891.Spec : Prop :=
  ∀ n, P15177081975422129891.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P10872131670882701236

`p?[A098605(n+1)+3]`
-/

namespace A145483.P10872131670882701236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P10872131670882701236

namespace A145483

/-- `p?[A098605(n+1)+3]` -/
def P10872131670882701236.Spec : Prop :=
  ∀ n, P10872131670882701236.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P16777738054196866083

`p?[A097480(n+1)+4]`
-/

namespace A145483.P16777738054196866083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P16777738054196866083

namespace A145483

/-- `p?[A097480(n+1)+4]` -/
def P16777738054196866083.Spec : Prop :=
  ∀ n, P16777738054196866083.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P5158698411006282894

`p?[A097338(n+1)+6]`
-/

namespace A145483.P5158698411006282894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P5158698411006282894

namespace A145483

/-- `p?[A097338(n+1)+6]` -/
def P5158698411006282894.Spec : Prop :=
  ∀ n, P5158698411006282894.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P2811413585179749298

`p?[A089192(n+1)+8]`
-/

namespace A145483.P2811413585179749298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P2811413585179749298

namespace A145483

/-- `p?[A089192(n+1)+8]` -/
def P2811413585179749298.Spec : Prop :=
  ∀ n, P2811413585179749298.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P11244991954931685466

`p?[A098090(n+1)+10]`
-/

namespace A145483.P11244991954931685466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P11244991954931685466

namespace A145483

/-- `p?[A098090(n+1)+10]` -/
def P11244991954931685466.Spec : Prop :=
  ∀ n, P11244991954931685466.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P17567086980496371980

`p?[A006254(n+1)+11]`
-/

namespace A145483.P17567086980496371980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P17567086980496371980

namespace A145483

/-- `p?[A006254(n+1)+11]` -/
def P17567086980496371980.Spec : Prop :=
  ∀ n, P17567086980496371980.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P16324038543657046750

`p?[A005097(n+1)+12]`
-/

namespace A145483.P16324038543657046750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P16324038543657046750

namespace A145483

/-- `p?[A005097(n+1)+12]` -/
def P16324038543657046750.Spec : Prop :=
  ∀ n, P16324038543657046750.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P124453408500143929

`p?[A102781(n+1)+12]`
-/

namespace A145483.P124453408500143929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P124453408500143929

namespace A145483

/-- `p?[A102781(n+1)+12]` -/
def P124453408500143929.Spec : Prop :=
  ∀ n, P124453408500143929.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P16912856391927984999

`p?[A067076(n+1)+13]`
-/

namespace A145483.P16912856391927984999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P16912856391927984999

namespace A145483

/-- `p?[A067076(n+1)+13]` -/
def P16912856391927984999.Spec : Prop :=
  ∀ n, P16912856391927984999.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P1294598082552487660

`p?[floor(A006093(n+1)/2)+12]`
-/

namespace A145483.P1294598082552487660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006093 (n + 1) : ℚ) / 2⌋ + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P1294598082552487660

namespace A145483

/-- `p?[floor(A006093(n+1)/2)+12]` -/
def P1294598082552487660.Spec : Prop :=
  ∀ n, P1294598082552487660.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P7639936427881855414

`p?[round(A000040(n+1)/2)+11]`
-/

namespace A145483.P7639936427881855414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 2) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145483.P7639936427881855414

namespace A145483

/-- `p?[round(A000040(n+1)/2)+11]` -/
def P7639936427881855414.Spec : Prop :=
  ∀ n, P7639936427881855414.a n = A145483 (n + 1)

end A145483

/-! ## A145483.P14046841624673949346

`∩[A000040(n+1), A097932(n+1)+2]`
-/

namespace A145483.P14046841624673949346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145483.P14046841624673949346

namespace A145483

/-- `∩[A000040(n+1), A097932(n+1)+2]` -/
def P14046841624673949346.Spec : Prop :=
  ∀ n, (P14046841624673949346.a n : ℤ) = A145483 (n + 1)

end A145483

/-! ## A145483.P3880855967976943313

`∩[A004139(n+1), A097932(n+1)+2]`
-/

namespace A145483.P3880855967976943313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145483.P3880855967976943313

namespace A145483

/-- `∩[A004139(n+1), A097932(n+1)+2]` -/
def P3880855967976943313.Spec : Prop :=
  ∀ n, (P3880855967976943313.a n : ℤ) = A145483 (n + 1)

end A145483

/-! ## A145483.P6170164513716850424

`∩[A006005(n+1), A097932(n+1)+2]`
-/

namespace A145483.P6170164513716850424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145483.P6170164513716850424

namespace A145483

/-- `∩[A006005(n+1), A097932(n+1)+2]` -/
def P6170164513716850424.Spec : Prop :=
  ∀ n, (P6170164513716850424.a n : ℤ) = A145483 (n + 1)

end A145483

/-! ## A145483.P1505246406233144280

`∩[A008578(n+1), A097932(n+1)+2]`
-/

namespace A145483.P1505246406233144280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145483.P1505246406233144280

namespace A145483

/-- `∩[A008578(n+1), A097932(n+1)+2]` -/
def P1505246406233144280.Spec : Prop :=
  ∀ n, (P1505246406233144280.a n : ℤ) = A145483 (n + 1)

end A145483

/-! ## A145483.P11767865779226201060

`∩[A045319(n+1), A097932(n+1)+2]`
-/

namespace A145483.P11767865779226201060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145483.P11767865779226201060

namespace A145483

/-- `∩[A045319(n+1), A097932(n+1)+2]` -/
def P11767865779226201060.Spec : Prop :=
  ∀ n, (P11767865779226201060.a n : ℤ) = A145483 (n + 1)

end A145483

/-! ## A145483.P4689611390061232741

`∩[A045344(n+1), A097932(n+1)+2]`
-/

namespace A145483.P4689611390061232741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145483.P4689611390061232741

namespace A145483

/-- `∩[A045344(n+1), A097932(n+1)+2]` -/
def P4689611390061232741.Spec : Prop :=
  ∀ n, (P4689611390061232741.a n : ℤ) = A145483 (n + 1)

end A145483

/-! ## A145483.P11024063103600715655

`∩[A065091(n+1), A097932(n+1)+2]`
-/

namespace A145483.P11024063103600715655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145483.P11024063103600715655

namespace A145483

/-- `∩[A065091(n+1), A097932(n+1)+2]` -/
def P11024063103600715655.Spec : Prop :=
  ∀ n, (P11024063103600715655.a n : ℤ) = A145483 (n + 1)

end A145483

/-!
# A145484: Primes p such that 2*p - 29 is a positive prime.

The programs for A145484, the canonical program `A145484.P14134080532556417672` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145484 has offset 1).

The definition of A145484 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 732 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145484.P14134080532556417672

`p?[A098605(n+1)+6]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A145484

/-- `p?[A098605(n+1)+6]` -/
def P14134080532556417672.Spec : Prop :=
  ∀ n, P14134080532556417672.a n = A145484 (n + 1)

theorem P14134080532556417672.correct : P14134080532556417672.Spec := by
  intro n
  simp only [A145484, Nat.add_sub_cancel]

end A145484

/-! ## A145484.P12507029303113716879

`p?[A097363(n+1)+8]`
-/

namespace A145484.P12507029303113716879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) + 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P12507029303113716879

namespace A145484

/-- `p?[A097363(n+1)+8]` -/
def P12507029303113716879.Spec : Prop :=
  ∀ n, P12507029303113716879.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P15857828636562357865

`p?[A097338(n+1)+9]`
-/

namespace A145484.P15857828636562357865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P15857828636562357865

namespace A145484

/-- `p?[A097338(n+1)+9]` -/
def P15857828636562357865.Spec : Prop :=
  ∀ n, P15857828636562357865.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P11934720107595825549

`p?[A089192(n+1)+11]`
-/

namespace A145484.P11934720107595825549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P11934720107595825549

namespace A145484

/-- `p?[A089192(n+1)+11]` -/
def P11934720107595825549.Spec : Prop :=
  ∀ n, P11934720107595825549.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P11979048627752411958

`p?[A089253(n+1)+12]`
-/

namespace A145484.P11979048627752411958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P11979048627752411958

namespace A145484

/-- `p?[A089253(n+1)+12]` -/
def P11979048627752411958.Spec : Prop :=
  ∀ n, P11979048627752411958.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P9311677295046603883

`p?[A098090(n+1)+13]`
-/

namespace A145484.P9311677295046603883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P9311677295046603883

namespace A145484

/-- `p?[A098090(n+1)+13]` -/
def P9311677295046603883.Spec : Prop :=
  ∀ n, P9311677295046603883.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P3183085807545486388

`p?[A006254(n+1)+14]`
-/

namespace A145484.P3183085807545486388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P3183085807545486388

namespace A145484

/-- `p?[A006254(n+1)+14]` -/
def P3183085807545486388.Spec : Prop :=
  ∀ n, P3183085807545486388.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P12560042478389123937

`p?[A005097(n+1)+15]`
-/

namespace A145484.P12560042478389123937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P12560042478389123937

namespace A145484

/-- `p?[A005097(n+1)+15]` -/
def P12560042478389123937.Spec : Prop :=
  ∀ n, P12560042478389123937.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P14451920147566990446

`p?[A102781(n+1)+15]`
-/

namespace A145484.P14451920147566990446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P14451920147566990446

namespace A145484

/-- `p?[A102781(n+1)+15]` -/
def P14451920147566990446.Spec : Prop :=
  ∀ n, P14451920147566990446.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P6116542444264827368

`p?[(n+17)*A156707(n+2)]`
-/

namespace A145484.P6116542444264827368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 17 : ℤ) * A156707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P6116542444264827368

namespace A145484

/-- `p?[(n+17)*A156707(n+2)]` -/
def P6116542444264827368.Spec : Prop :=
  ∀ n, P6116542444264827368.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P9349987937837743791

`record[A006530(A002144(n+1)+29)]`
-/

namespace A145484.P9349987937837743791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002144 (n + 1) + 29).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145484.P9349987937837743791

namespace A145484

/-- `record[A006530(A002144(n+1)+29)]` -/
def P9349987937837743791.Spec : Prop :=
  ∀ n, P9349987937837743791.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P6708082811108412032

`p?[xor(1, A000265(A002144(n+1)+1))+15]`
-/

namespace A145484.P6708082811108412032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A000265 (A002144 (n + 1) + 1).toNat) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P6708082811108412032

namespace A145484

/-- `p?[xor(1, A000265(A002144(n+1)+1))+15]` -/
def P6708082811108412032.Spec : Prop :=
  ∀ n, P6708082811108412032.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P1974567060445883709

`p?[A072480(A006093(n+1)+30)]`
-/

namespace A145484.P1974567060445883709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A006093 (n + 1) + 30).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P1974567060445883709

namespace A145484

/-- `p?[A072480(A006093(n+1)+30)]` -/
def P1974567060445883709.Spec : Prop :=
  ∀ n, P1974567060445883709.a n = A145484 (n + 1)

end A145484

/-! ## A145484.P981865209193158712

`p?[A032742(A008578(n+1)+29)]`
-/

namespace A145484.P981865209193158712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A008578 (n + 1) + 29).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145484.P981865209193158712

namespace A145484

/-- `p?[A032742(A008578(n+1)+29)]` -/
def P981865209193158712.Spec : Prop :=
  ∀ n, P981865209193158712.a n = A145484 (n + 1)

end A145484

/-!
# A145485: Primes p such that 2*p - 31 is prime.

The programs for A145485, the canonical program `A145485.P6572718752289477689` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145485 has offset 1).

The definition of A145485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 714 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145485.P6572718752289477689

`p?[A098605(n+1)+7]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A145485

/-- `p?[A098605(n+1)+7]` -/
def P6572718752289477689.Spec : Prop :=
  ∀ n, P6572718752289477689.a n = A145485 (n + 1)

theorem P6572718752289477689.correct : P6572718752289477689.Spec := by
  intro n
  simp only [A145485, Nat.add_sub_cancel]

end A145485

/-! ## A145485.P3175036202464141753

`p?[A097338(n+1)+10]`
-/

namespace A145485.P3175036202464141753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P3175036202464141753

namespace A145485

/-- `p?[A097338(n+1)+10]` -/
def P3175036202464141753.Spec : Prop :=
  ∀ n, P3175036202464141753.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P17362881644013170004

`p?[A098090(n+1)+14]`
-/

namespace A145485.P17362881644013170004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P17362881644013170004

namespace A145485

/-- `p?[A098090(n+1)+14]` -/
def P17362881644013170004.Spec : Prop :=
  ∀ n, P17362881644013170004.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P3630029617756357701

`p?[A006254(n+1)+15]`
-/

namespace A145485.P3630029617756357701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P3630029617756357701

namespace A145485

/-- `p?[A006254(n+1)+15]` -/
def P3630029617756357701.Spec : Prop :=
  ∀ n, P3630029617756357701.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P13293546340613497837

`p?[A005097(n+1)+16]`
-/

namespace A145485.P13293546340613497837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P13293546340613497837

namespace A145485

/-- `p?[A005097(n+1)+16]` -/
def P13293546340613497837.Spec : Prop :=
  ∀ n, P13293546340613497837.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P7774838277639880363

`p?[A067076(n+1)+17]`
-/

namespace A145485.P7774838277639880363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P7774838277639880363

namespace A145485

/-- `p?[A067076(n+1)+17]` -/
def P7774838277639880363.Spec : Prop :=
  ∀ n, P7774838277639880363.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P11049760647640111898

`p?[A111333(n+1)+15]`
-/

namespace A145485.P11049760647640111898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P11049760647640111898

namespace A145485

/-- `p?[A111333(n+1)+15]` -/
def P11049760647640111898.Spec : Prop :=
  ∀ n, P11049760647640111898.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P4206333734769596668

`p?[A102781(n+1)+16]`
-/

namespace A145485.P4206333734769596668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P4206333734769596668

namespace A145485

/-- `p?[A102781(n+1)+16]` -/
def P4206333734769596668.Spec : Prop :=
  ∀ n, P4206333734769596668.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P1397430721121946743

`p?[round(A000040(n+1)/2)+15]`
-/

namespace A145485.P1397430721121946743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 2) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P1397430721121946743

namespace A145485

/-- `p?[round(A000040(n+1)/2)+15]` -/
def P1397430721121946743.Spec : Prop :=
  ∀ n, P1397430721121946743.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P5754902867138846019

`p?[floor(A000040(n+2)/2)+16]`
-/

namespace A145485.P5754902867138846019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 2) : ℚ) / 2⌋ + 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P5754902867138846019

namespace A145485

/-- `p?[floor(A000040(n+2)/2)+16]` -/
def P5754902867138846019.Spec : Prop :=
  ∀ n, P5754902867138846019.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P3359469826540535259

`p?[round(A008578(n+1)/2)+15]`
-/

namespace A145485.P3359469826540535259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A008578 (n + 1) : ℚ) / 2) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P3359469826540535259

namespace A145485

/-- `p?[round(A008578(n+1)/2)+15]` -/
def P3359469826540535259.Spec : Prop :=
  ∀ n, P3359469826540535259.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P3446364122722212226

`p?[eq[2, A000005(2*n+3)]+17]`
-/

namespace A145485.P3446364122722212226
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145485.P3446364122722212226

namespace A145485

/-- `p?[eq[2, A000005(2*n+3)]+17]` -/
def P3446364122722212226.Spec : Prop :=
  ∀ n, (P3446364122722212226.a n : ℤ) = A145485 (n + 1)

end A145485

/-! ## A145485.P3458990036464533494

`p?[lt[A001222(2*(n+1)+1), 2]+17]`
-/

namespace A145485.P3458990036464533494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145485.P3458990036464533494

namespace A145485

/-- `p?[lt[A001222(2*(n+1)+1), 2]+17]` -/
def P3458990036464533494.Spec : Prop :=
  ∀ n, (P3458990036464533494.a n : ℤ) = A145485 (n + 1)

end A145485

/-! ## A145485.P6019891588499211616

`p?[lt[n, A006530(2*(n+1)+1)]+17]`
-/

namespace A145485.P6019891588499211616
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A145485.P6019891588499211616

namespace A145485

/-- `p?[lt[n, A006530(2*(n+1)+1)]+17]` -/
def P6019891588499211616.Spec : Prop :=
  ∀ n, (P6019891588499211616.a n : ℤ) = A145485 (n + 1)

end A145485

/-! ## A145485.P4287158236374221373

`record[A006530(A002145(n+1)+31)]`
-/

namespace A145485.P4287158236374221373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002145 (n + 1) + 31).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145485.P4287158236374221373

namespace A145485

/-- `record[A006530(A002145(n+1)+31)]` -/
def P4287158236374221373.Spec : Prop :=
  ∀ n, P4287158236374221373.a n = A145485 (n + 1)

end A145485

/-! ## A145485.P4572053779643245187

`p?[A060681(A008578(n+1)+31)]`
-/

namespace A145485.P4572053779643245187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (A008578 (n + 1) + 31).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145485.P4572053779643245187

namespace A145485

/-- `p?[A060681(A008578(n+1)+31)]` -/
def P4572053779643245187.Spec : Prop :=
  ∀ n, P4572053779643245187.a n = A145485 (n + 1)

end A145485

/-!
# A145486: Primes p such that 2*p - 37 is prime.

The programs for A145486, the canonical program `A145486.P840962072842077579` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145486 has offset 1).

The definition of A145486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 699 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A145486.P1422575089800747416

`p?[2*(A111215(n+1)+3)+15]`
-/

namespace A145486.P1422575089800747416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A111215 (n + 1) + 3) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P1422575089800747416

namespace A145486

/-- `p?[2*(A111215(n+1)+3)+15]` -/
def P1422575089800747416.Spec : Prop :=
  ∀ n, P1422575089800747416.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P840962072842077579

`p?[A098605(n+1)+10]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A145486

/-- `p?[A098605(n+1)+10]` -/
def P840962072842077579.Spec : Prop :=
  ∀ n, P840962072842077579.a n = A145486 (n + 1)

theorem P840962072842077579.correct : P840962072842077579.Spec := by
  intro n
  simp only [A145486, Nat.add_sub_cancel]

end A145486

/-! ## A145486.P9149303927116987004

`p?[A089192(n+1)+15]`
-/

namespace A145486.P9149303927116987004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P9149303927116987004

namespace A145486

/-- `p?[A089192(n+1)+15]` -/
def P9149303927116987004.Spec : Prop :=
  ∀ n, P9149303927116987004.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P10227809119128591922

`p?[A098090(n+1)+17]`
-/

namespace A145486.P10227809119128591922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P10227809119128591922

namespace A145486

/-- `p?[A098090(n+1)+17]` -/
def P10227809119128591922.Spec : Prop :=
  ∀ n, P10227809119128591922.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P6372830922410247906

`p?[A005097(n+1)+19]`
-/

namespace A145486.P6372830922410247906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P6372830922410247906

namespace A145486

/-- `p?[A005097(n+1)+19]` -/
def P6372830922410247906.Spec : Prop :=
  ∀ n, P6372830922410247906.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P1719657871316257164

`p?[A067076(n+1)+20]`
-/

namespace A145486.P1719657871316257164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P1719657871316257164

namespace A145486

/-- `p?[A067076(n+1)+20]` -/
def P1719657871316257164.Spec : Prop :=
  ∀ n, P1719657871316257164.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P6273010653688825999

`p?[A105760(n+1)+22]`
-/

namespace A145486.P6273010653688825999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) + 22

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P6273010653688825999

namespace A145486

/-- `p?[A105760(n+1)+22]` -/
def P6273010653688825999.Spec : Prop :=
  ∀ n, P6273010653688825999.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P5725716018994105303

`p?[floor(A000040(n+1)/2)+19]`
-/

namespace A145486.P5725716018994105303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋ + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P5725716018994105303

namespace A145486

/-- `p?[floor(A000040(n+1)/2)+19]` -/
def P5725716018994105303.Spec : Prop :=
  ∀ n, P5725716018994105303.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P2562569531251946066

`p?[A089253(n+2)+A010685(2*n+1)²]`
-/

namespace A145486.P2562569531251946066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 2) + A010685 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P2562569531251946066

namespace A145486

/-- `p?[A089253(n+2)+A010685(2*n+1)²]` -/
def P2562569531251946066.Spec : Prop :=
  ∀ n, P2562569531251946066.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P12801377151828407374

`p?[A026741(A000040(n+1)+37)]`
-/

namespace A145486.P12801377151828407374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A000040 (n + 1) + 37).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P12801377151828407374

namespace A145486

/-- `p?[A026741(A000040(n+1)+37)]` -/
def P12801377151828407374.Spec : Prop :=
  ∀ n, P12801377151828407374.a n = A145486 (n + 1)

end A145486

/-! ## A145486.P16356193059526174481

`p?[A032742(A000040(n+1)-1)+19]`
-/

namespace A145486.P16356193059526174481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000040 (n + 1) - 1).toNat + 19

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A145486.P16356193059526174481

namespace A145486

/-- `p?[A032742(A000040(n+1)-1)+19]` -/
def P16356193059526174481.Spec : Prop :=
  ∀ n, P16356193059526174481.a n = A145486 (n + 1)

end A145486

/-!
# A145487: Numbers k such that 6k+5 is prime and 12k+5 is also prime.

The programs for A145487, the canonical program `A145487.P16425779050793417673` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145487 has offset 1).

The definition of A145487 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145471, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145487.P16425779050793417673

`(A145471(n+1)-5)/12`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A145487

/-- `(A145471(n+1)-5)/12` -/
def P16425779050793417673.Spec : Prop :=
  ∀ n, P16425779050793417673.a n = (A145487 (n + 1) : ℚ)

end A145487

/-! ## A145487.P16414746732706488811

`floor(A063909(n+1)/6)`
-/

namespace A145487.P16414746732706488811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A063909 (n + 1) : ℚ) / 6⌋

end

end A145487.P16414746732706488811

namespace A145487

/-- `floor(A063909(n+1)/6)` -/
def P16414746732706488811.Spec : Prop :=
  ∀ n, P16414746732706488811.a n = A145487 (n + 1)

end A145487

/-! ## A145487.P5829890580337972866

`floor(A145471(n+1)/12)`
-/

namespace A145487.P5829890580337972866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145471 (n + 1) : ℚ) / 12⌋

end

end A145487.P5829890580337972866

namespace A145487

/-- `floor(A145471(n+1)/12)` -/
def P5829890580337972866.Spec : Prop :=
  ∀ n, P5829890580337972866.a n = A145487 (n + 1)

end A145487

/-! ## A145487.P11502103587966939555

`∩[A059325(n+1), A167055(n+1)]`
-/

namespace A145487.P11502103587966939555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145487.P11502103587966939555

namespace A145487

/-- `∩[A059325(n+1), A167055(n+1)]` -/
def P11502103587966939555.Spec : Prop :=
  ∀ n, (P11502103587966939555.a n : ℤ) = A145487 (n + 1)

end A145487

/-! ## A145487.P14699381507353652486

`eq[2, A075743(2*n+1)+A075743(4*n+1)]`
-/

namespace A145487.P14699381507353652486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1) + A075743 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145487.P14699381507353652486

namespace A145487

/-- `eq[2, A075743(2*n+1)+A075743(4*n+1)]` -/
def P14699381507353652486.Spec : Prop :=
  ∀ n, (P14699381507353652486.a n : ℤ) = A145487 (n + 1)

end A145487

/-! ## A145487.P598823287817646422

`eq[1, A156706(2*n+1)*A156706(4*n+1)]`
-/

namespace A145487.P598823287817646422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 1) * A156706 (4 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145487.P598823287817646422

namespace A145487

/-- `eq[1, A156706(2*n+1)*A156706(4*n+1)]` -/
def P598823287817646422.Spec : Prop :=
  ∀ n, (P598823287817646422.a n : ℤ) = A145487 (n + 1)

end A145487

/-! ## A145487.P14797373898932100510

`eq[A005171(A017581(n))+1, A167020(n+1)]`
-/

namespace A145487.P14797373898932100510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A017581 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145487.P14797373898932100510

namespace A145487

/-- `eq[A005171(A017581(n))+1, A167020(n+1)]` -/
def P14797373898932100510.Spec : Prop :=
  ∀ n, (P14797373898932100510.a n : ℤ) = A145487 (n + 1)

end A145487

/-! ## A145487.P7583139894089973093

`eq[A167020(2*n+1), A231776(2*(n+1))]`
-/

namespace A145487.P7583139894089973093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231776 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145487.P7583139894089973093

namespace A145487

/-- `eq[A167020(2*n+1), A231776(2*(n+1))]` -/
def P7583139894089973093.Spec : Prop :=
  ∀ n, (P7583139894089973093.a n : ℤ) = A145487 (n + 1)

end A145487

/-! ## A145487.P4427392016740096171

`A001617(A145471(n+1))`
-/

namespace A145487.P4427392016740096171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A145471 (n + 1)).toNat

end

end A145487.P4427392016740096171

namespace A145487

/-- `A001617(A145471(n+1))` -/
def P4427392016740096171.Spec : Prop :=
  ∀ n, P4427392016740096171.a n = A145487 (n + 1)

end A145487

/-! ## A145487.P2616286389529313755

`A008612(A063909(n+1))`
-/

namespace A145487.P2616286389529313755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A063909 (n + 1)).toNat

end

end A145487.P2616286389529313755

namespace A145487

/-- `A008612(A063909(n+1))` -/
def P2616286389529313755.Spec : Prop :=
  ∀ n, P2616286389529313755.a n = A145487 (n + 1)

end A145487

/-! ## A145487.P11217721327392260780

`A008615(A063909(n+1)-2)`
-/

namespace A145487.P11217721327392260780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A063909 (n + 1) - 2).toNat

end

end A145487.P11217721327392260780

namespace A145487

/-- `A008615(A063909(n+1)-2)` -/
def P11217721327392260780.Spec : Prop :=
  ∀ n, P11217721327392260780.a n = A145487 (n + 1)

end A145487

/-! ## A145487.P11712070472752755842

`A008615((A145471(n+1)+1)/2)`
-/

namespace A145487.P11712070472752755842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (SequenceMachineLib.roundAway ((A145471 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A145487.P11712070472752755842

namespace A145487

/-- `A008615((A145471(n+1)+1)/2)` -/
def P11712070472752755842.Spec : Prop :=
  ∀ n, P11712070472752755842.a n = A145487 (n + 1)

end A145487

/-!
# A145488: Numbers k such that 6k+13 is prime and 12k+13 is also prime.

The programs for A145488, the canonical program `A145488.P501580674884008196` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145488 has offset 1).

The definition of A145488 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145474, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145488.P501580674884008196

`(A145474(n+1)-13)/12`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A145488

/-- `(A145474(n+1)-13)/12` -/
def P501580674884008196.Spec : Prop :=
  ∀ n, P501580674884008196.a n = (A145488 (n + 1) : ℚ)

end A145488

/-! ## A145488.P13096642110221013134

`eq[2, A075743(2*(n+2))+A075743(4*(n+1))]`
-/

namespace A145488.P13096642110221013134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * (n + 2)) + A075743 (4 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145488.P13096642110221013134

namespace A145488

/-- `eq[2, A075743(2*(n+2))+A075743(4*(n+1))]` -/
def P13096642110221013134.Spec : Prop :=
  ∀ n, (P13096642110221013134.a n : ℤ) = A145488 (n + 1)

end A145488

/-! ## A145488.P1120113733713397619

`A001617(A145474(n+1))`
-/

namespace A145488.P1120113733713397619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A145474 (n + 1)).toNat

end

end A145488.P1120113733713397619

namespace A145488

/-- `A001617(A145474(n+1))` -/
def P1120113733713397619.Spec : Prop :=
  ∀ n, P1120113733713397619.a n = A145488 (n + 1)

end A145488

/-! ## A145488.P13367192357001923368

`A001617(p?[A016921(A089953(n+1))])`
-/

namespace A145488.P13367192357001923368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A089953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A145488.P13367192357001923368

namespace A145488

/-- `A001617(p?[A016921(A089953(n+1))])` -/
def P13367192357001923368.Spec : Prop :=
  ∀ n, P13367192357001923368.a n = A145488 (n + 1)

end A145488

/-! ## A145488.P6019017157520911354

`eq[A116933(4*n+3), A275862(A116933(2*n+3))]`
-/

namespace A145488.P6019017157520911354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116933 (4 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275862 (A116933 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145488.P6019017157520911354

namespace A145488

/-- `eq[A116933(4*n+3), A275862(A116933(2*n+3))]` -/
def P6019017157520911354.Spec : Prop :=
  ∀ n, (P6019017157520911354.a n : ℤ) = A145488 (n + 1)

end A145488

/-! ## A145488.P3371827064845447904

`A293483(A063913(n+1))-2`
-/

namespace A145488.P3371827064845447904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293483 (A063913 (n + 1)).toNat - 2

end

end A145488.P3371827064845447904

namespace A145488

/-- `A293483(A063913(n+1))-2` -/
def P3371827064845447904.Spec : Prop :=
  ∀ n, P3371827064845447904.a n = A145488 (n + 1)

end A145488

/-! ## A145488.P8122979037056043184

`eq[1, A250204(2*(n+1))*A250204(n+2)]`
-/

namespace A145488.P8122979037056043184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250204 (2 * (n + 1)) * A250204 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145488.P8122979037056043184

namespace A145488

/-- `eq[1, A250204(2*(n+1))*A250204(n+2)]` -/
def P8122979037056043184.Spec : Prop :=
  ∀ n, (P8122979037056043184.a n : ℤ) = A145488 (n + 1)

end A145488

/-!
# A145489: Numbers k such that 6k + 11 is prime and 12k + 5 is also prime.

The programs for A145489, the canonical program `A145489.P2407978232716720199` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A145489 has offset 1).

The definition of A145489 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A145475, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A145489.P2407978232716720199

`(A145475(n+1)-5)/12`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A145489

/-- `(A145475(n+1)-5)/12` -/
def P2407978232716720199.Spec : Prop :=
  ∀ n, P2407978232716720199.a n = (A145489 (n + 1) : ℚ)

end A145489

/-! ## A145489.P10162218470072475189

`floor((A145481(n+1)-8)/6)`
-/

namespace A145489.P10162218470072475189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A145481 (n + 1) - 8 : ℚ) / 6⌋

end

end A145489.P10162218470072475189

namespace A145489

/-- `floor((A145481(n+1)-8)/6)` -/
def P10162218470072475189.Spec : Prop :=
  ∀ n, P10162218470072475189.a n = A145489 (n + 1)

end A145489

/-! ## A145489.P11787148364208925526

`∩[A059325(n+1)-1, A167055(n+1)]`
-/

namespace A145489.P11787148364208925526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167055 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A145489.P11787148364208925526

namespace A145489

/-- `∩[A059325(n+1)-1, A167055(n+1)]` -/
def P11787148364208925526.Spec : Prop :=
  ∀ n, (P11787148364208925526.a n : ℤ) = A145489 (n + 1)

end A145489

/-! ## A145489.P13063651329436620758

`eq[2, A167020(2*n+1)+A167020(n+2)]`
-/

namespace A145489.P13063651329436620758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (2 * n + 1) + A167020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A145489.P13063651329436620758

namespace A145489

/-- `eq[2, A167020(2*n+1)+A167020(n+2)]` -/
def P13063651329436620758.Spec : Prop :=
  ∀ n, (P13063651329436620758.a n : ℤ) = A145489 (n + 1)

end A145489

/-! ## A145489.P6191874289996711791

`eq[A078898(A231776(2*n+1)), A167020(n+2)]`
-/

namespace A145489.P6191874289996711791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A231776 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145489.P6191874289996711791

namespace A145489

/-- `eq[A078898(A231776(2*n+1)), A167020(n+2)]` -/
def P6191874289996711791.Spec : Prop :=
  ∀ n, (P6191874289996711791.a n : ℤ) = A145489 (n + 1)

end A145489

/-! ## A145489.P15085969960017529780

`A001617(A145475(n+1))`
-/

namespace A145489.P15085969960017529780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001617 (A145475 (n + 1)).toNat

end

end A145489.P15085969960017529780

namespace A145489

/-- `A001617(A145475(n+1))` -/
def P15085969960017529780.Spec : Prop :=
  ∀ n, P15085969960017529780.a n = A145489 (n + 1)

end A145489

/-! ## A145489.P1717696595841584555

`A008615(A145481(n+1)-8)`
-/

namespace A145489.P1717696595841584555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A145481 (n + 1) - 8).toNat

end

end A145489.P1717696595841584555

namespace A145489

/-- `A008615(A145481(n+1)-8)` -/
def P1717696595841584555.Spec : Prop :=
  ∀ n, P1717696595841584555.a n = A145489 (n + 1)

end A145489

/-! ## A145489.P11943793007680980792

`A025480(A004396(p?[A145475(n+1)]))`
-/

namespace A145489.P11943793007680980792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A004396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A145489.P11943793007680980792

namespace A145489

/-- `A025480(A004396(p?[A145475(n+1)]))` -/
def P11943793007680980792.Spec : Prop :=
  ∀ n, P11943793007680980792.a n = A145489 (n + 1)

end A145489

/-! ## A145489.P16351984245345192355

`A008611(A025480(p?[A145475(n+1)]))`
-/

namespace A145489.P16351984245345192355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A025480 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A145489.P16351984245345192355

namespace A145489

/-- `A008611(A025480(p?[A145475(n+1)]))` -/
def P16351984245345192355.Spec : Prop :=
  ∀ n, P16351984245345192355.a n = A145489 (n + 1)

end A145489

/-! ## A145489.P522035262196515830

`A004526(A103221(p?[A145475(n+1)]))`
-/

namespace A145489.P522035262196515830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A103221 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A145489.P522035262196515830

namespace A145489

/-- `A004526(A103221(p?[A145475(n+1)]))` -/
def P522035262196515830.Spec : Prop :=
  ∀ n, P522035262196515830.a n = A145489 (n + 1)

end A145489

/-!
# A145491: In these bases, there exist numbers written with only one distinct digit whose translation in binary is also written with the same lonely digit.

The programs for A145491, there is no canonical definition to state claims against.
-/

/-! ## A145491.P18056650325160172919

`record[or(A100484(n+1), A243071(2*(n+1)))]`
-/

namespace A145491.P18056650325160172919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100484 (n + 1)) (A243071 (2 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A145491.P18056650325160172919

/-! ## A145491.P15206936743848097351

`eq[A037870(n+1), A154269(A000124(n))]`
-/

namespace A145491.P15206936743848097351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145491.P15206936743848097351

/-! ## A145491.P10616359208704878082

`eq[A073267(n+2), A347523(A000124(n))]`
-/

namespace A145491.P10616359208704878082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073267 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347523 (A000124 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A145491.P10616359208704878082

/-!
# A145493: Coefficients of certain power series associated with Atkin polynomials (see Kaneko-Zagier reference for precise definition).

The programs for A145493, there is no canonical definition to state claims against.
-/

/-! ## A145493.P4946248565227027140

`(A145492(n+1)-A001421(n+1))/330`
-/

namespace A145493.P4946248565227027140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145492 (n + 1) - A001421 (n + 1) : ℚ) / 330

end

end A145493.P4946248565227027140

/-!
# A145494: Coefficients of certain power series associated with Atkin polynomials (see Kaneko-Zagier reference for precise definition).

The programs for A145494, there is no canonical definition to state claims against.
-/

/-! ## A145494.P6642954559663858245

`(A145493(n+1)-A145492(n+1))/494`
-/

namespace A145494.P6642954559663858245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145493 (n + 1) - A145492 (n + 1) : ℚ) / 494

end

end A145494.P6642954559663858245

/-!
# A145499: Partial sums of A156832.

The programs for A145499, there is no canonical definition to state claims against.
-/

/-! ## A145499.P1307150555230710567

`∑[A156832(n+1)]`
-/

namespace A145499.P1307150555230710567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145499.P1307150555230710567

/-! ## A145499.P10321089681679258624

`∑[A000142(n+1)/A145500(n+1)]`
-/

namespace A145499.P10321089681679258624
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A145500 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A145499.P10321089681679258624

/-! ## A145499.P116349779807797672

`a(n-1)+A156832(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A145499.P116349779807797672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A156832 (n + 1) + A000038 n)

end

end A145499.P116349779807797672

/-! ## A145499.P16096134825288219469

`a(n-1)+A007318(C(n, 2))*A156832(n+1)` with `a(0)=1`
-/

namespace A145499.P16096134825288219469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (Nat.choose n 2) * A156832 (n + 1)

end

end A145499.P16096134825288219469

/-! ## A145499.P17991440468867635491

`a(n-1)+A000040(n+1)%2*A156832(n+1)` with `a(0)=1`
-/

namespace A145499.P17991440468867635491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A000040 (n + 1)) 2 * A156832 (n + 1)

end

end A145499.P17991440468867635491

