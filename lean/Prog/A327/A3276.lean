import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A327600: a(n) is the largest k such that the sum of k consecutive reciprocals 1/p_n + ... + 1/p_(n+k-1) does not exceed 1 (where p_n = n-th prime).

The programs for A327600, there is no canonical definition to state claims against.
-/

/-! ## A327600.P60932988469078951

`A137368(n+1)-1`
-/

namespace A327600.P60932988469078951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137368 (n + 1) - 1

end

end A327600.P60932988469078951

/-! ## A327600.P15862816748520900594

`A092325(n+1)-(n+1)`
-/

namespace A327600.P15862816748520900594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092325 (n + 1) - (n + 1 : ℤ)

end

end A327600.P15862816748520900594

/-! ## A327600.P8730379934017370831

`abs(A092325(n+1)+A001478(n+1))`
-/

namespace A327600.P8730379934017370831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092325 (n + 1) + A001478 (n + 1)|

end

end A327600.P8730379934017370831

/-! ## A327600.P6278970739333959965

`abs(A092325(n+1)+A024000(n+2))`
-/

namespace A327600.P6278970739333959965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A092325 (n + 1) + A024000 (n + 2)|

end

end A327600.P6278970739333959965

/-! ## A327600.P4646465253416285162

`A137388(A000217(n))+A137368(n+1)`
-/

namespace A327600.P4646465253416285162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137388 (A000217 n).toNat + A137368 (n + 1)

end

end A327600.P4646465253416285162

/-!
# A327601: Expansion of e.g.f. exp(x) * Product_{k>=1} 1/(1 - (1 - exp(x))^k).

The programs for A327601, there is no canonical definition to state claims against.
-/

/-! ## A327601.P9451702759542439017

`A335813(n)+A022998(A089677(n))`
-/

namespace A327601.P9451702759542439017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335813 n + A022998 (A089677 n).toNat

end

end A327601.P9451702759542439017

/-! ## A327601.P11875547841127175809

`A335442(A335473(n+2))-A157608(n+1)`
-/

namespace A327601.P11875547841127175809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335442 (A335473 (n + 2)).toNat - A157608 (n + 1)

end

end A327601.P11875547841127175809

/-!
# A327603: Number of digits in (n^n)^(n^n).

The programs for A327603, there is no canonical definition to state claims against.
-/

/-! ## A327603.P6374693317947644614

`A066022(n^n)`
-/

namespace A327603.P6374693317947644614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (n ^ n)

end

end A327603.P6374693317947644614

/-! ## A327603.P6690645034965636197

`∏{p}[A066022(A000312(n)), #]`
-/

namespace A327603.P6690645034965636197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (A000312 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A327603.P6690645034965636197

/-!
# A327604: Number of connected 2n-regular loopless multigraphs on nine unlabeled nodes.

The programs for A327604, there is no canonical definition to state claims against.
-/

/-! ## A327604.P4858533325694147157

`record[A328682(A000217(n)+9)]`
-/

namespace A327604.P4858533325694147157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A000217 n + 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327604.P4858533325694147157

/-! ## A327604.P2055955913424488469

`record[A328682(eq[9, A002262(n)])]`
-/

namespace A327604.P2055955913424488469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327604.P2055955913424488469

/-! ## A327604.P10775332468682300951

`A328682(eq[10, A140756(n+1)])`
-/

namespace A327604.P10775332468682300951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140756 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A327604.P10775332468682300951

/-! ## A327604.P4304217206948328426

`record[Δ[A328682(A167487(n)+2)]]`
-/

namespace A327604.P4304217206948328426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (A167487 n + 2).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327604.P4304217206948328426

/-! ## A327604.P4679255537966915104

`record[A328682(eq[10, A002260(n+1)])]`
-/

namespace A327604.P4679255537966915104
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328682 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327604.P4679255537966915104

/-!
# A327605: Number of parts in all twice partitions of n where both partitions are strict.

The programs for A327605, there is no canonical definition to state claims against.
-/

/-! ## A327605.P9606128975664201314

`A327622(∑[n+3])`
-/

namespace A327605.P9606128975664201314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327605.P9606128975664201314

/-! ## A327605.P6160269988460741274

`A327622(A027379(n+1))%(4^n)`
-/

namespace A327605.P6160269988460741274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327622 (A027379 (n + 1)).toNat) (4 ^ n : ℤ)

end

end A327605.P6160269988460741274

/-! ## A327605.P17999504131732544011

`A057427(n)*A327622(A027379(n+1))`
-/

namespace A327605.P17999504131732544011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327622 (A027379 (n + 1)).toNat

end

end A327605.P17999504131732544011

/-! ## A327605.P10708713743307389669

`A245477(2*n)*A327622(A027379(n+1))`
-/

namespace A327605.P10708713743307389669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245477 (2 * n) * A327622 (A027379 (n + 1)).toNat

end

end A327605.P10708713743307389669

/-! ## A327605.P12942945856936487155

`A327622(A027379(n+1))+A079979(2*n+1)`
-/

namespace A327605.P12942945856936487155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A027379 (n + 1)).toNat + A079979 (2 * n + 1)

end

end A327605.P12942945856936487155

/-! ## A327605.P10008397945546093322

`A327622(A027379(n+1))+A008683(4*(n+1))`
-/

namespace A327605.P10008397945546093322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A027379 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A327605.P10008397945546093322

/-!
# A327606: Expansion of e.g.f. exp(x)*(1-x)*x/(1-2*x)^2.

The programs for A327606, the canonical program `A327606.P14075212698385498205` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327606 has offset 0).

The definition of A327606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327606.P14075212698385498205

`2*(n+2)*a(n-1)-(4*n-1)*a(n-2)+2*(n-2)*a(n-3)` with `a(0)=0, a(1)=1, a(2)=8`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327606

/-- `2*(n+2)*a(n-1)-(4*n-1)*a(n-2)+2*(n-2)*a(n-3)` -/
def P14075212698385498205.Spec : Prop :=
  ∀ n, P14075212698385498205.a n = A327606 n

theorem P14075212698385498205.correct : P14075212698385498205.Spec := by
  intro n
  simp only [A327606]

end A327606

/-! ## A327606.P2552594981235890885

`Δ[C(n, 2)+2*n*a(n-1)]` with `a(0)=0`
-/

namespace A327606.P2552594981235890885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose n 2 + 2 * n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A327606.P2552594981235890885

namespace A327606

/-- `Δ[C(n, 2)+2*n*a(n-1)]` -/
def P2552594981235890885.Spec : Prop :=
  ∀ n, P2552594981235890885.a n = A327606 n

end A327606

/-! ## A327606.P13842466500774300099

`floor(Δ[A067273(n)/4])`
-/

namespace A327606.P13842466500774300099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067273 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f1 (n + 1) - f1 n⌋

end

end A327606.P13842466500774300099

namespace A327606

/-- `floor(Δ[A067273(n)/4])` -/
def P13842466500774300099.Spec : Prop :=
  ∀ n, P13842466500774300099.a n = A327606 n

end A327606

/-! ## A327606.P174749995858167917

`round(Δ[A308876(n)/4])`
-/

namespace A327606.P174749995858167917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A308876 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A327606.P174749995858167917

namespace A327606

/-- `round(Δ[A308876(n)/4])` -/
def P174749995858167917.Spec : Prop :=
  ∀ n, P174749995858167917.a n = A327606 n

end A327606

/-! ## A327606.P2453227550795512352

`round(Δ[A067273(A028310(n))/4])`
-/

namespace A327606.P2453227550795512352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067273 (A028310 n).toNat : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A327606.P2453227550795512352

namespace A327606

/-- `round(Δ[A067273(A028310(n))/4])` -/
def P2453227550795512352.Spec : Prop :=
  ∀ n, P2453227550795512352.a n = A327606 n

end A327606

/-! ## A327606.P17403873571694768309

`round(Δ[A010844(n)/8])`
-/

namespace A327606.P17403873571694768309
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010844 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A327606.P17403873571694768309

namespace A327606

/-- `round(Δ[A010844(n)/8])` -/
def P17403873571694768309.Spec : Prop :=
  ∀ n, P17403873571694768309.a n = A327606 n

end A327606

/-! ## A327606.P18411617445378353787

`floor(A000007(n+1)+Δ[A010844(n)/8])`
-/

namespace A327606.P18411617445378353787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010844 n : ℚ) / 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000007 (n + 1) : ℚ) + (f1 (n + 1) - f1 n)⌋

end

end A327606.P18411617445378353787

namespace A327606

/-- `floor(A000007(n+1)+Δ[A010844(n)/8])` -/
def P18411617445378353787.Spec : Prop :=
  ∀ n, P18411617445378353787.a n = A327606 n

end A327606

/-!
# A327607: Number of parts in all twice partitions of n where the first partition is strict.

The programs for A327607, there is no canonical definition to state claims against.
-/

/-! ## A327607.P10179513893973671456

`A238005(∑[∑[A299926(n+1)]])`
-/

namespace A327607.P10179513893973671456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299926 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327607.P10179513893973671456

/-! ## A327607.P2241621785904578983

`A002478(n+1)-A163258(A174191(n))`
-/

namespace A327607.P2241621785904578983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002478 (n + 1) - A163258 (A174191 n).toNat

end

end A327607.P2241621785904578983

/-!
# A327609: Numbers expressible as a^b + c^d with b&d > 1 and a&c >= 0.

The programs for A327609, there is no canonical definition to state claims against.
-/

/-! ## A327609.P11670007042099662785

`comp[A087642(n+3)]%A087642(3*n+7)`
-/

namespace A327609.P11670007042099662785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087642 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A087642 (3 * n + 7))

end

end A327609.P11670007042099662785

/-! ## A327609.P14725670648388482779

`comp[A087642(n+3)]%A258616(n+1)`
-/

namespace A327609.P14725670648388482779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087642 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A258616 (n + 1))

end

end A327609.P14725670648388482779

/-! ## A327609.P6946209941570907355

`lt[A064874(n), A181144(A152800(n))]`
-/

namespace A327609.P6946209941570907355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064874 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181144 (A152800 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327609.P6946209941570907355

/-! ## A327609.P17785030450466407358

`lt[A204520(n+1), A000312(A267121(n+1))]`
-/

namespace A327609.P17785030450466407358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204520 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A267121 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327609.P17785030450466407358

/-! ## A327609.P8900590205223103809

`lt[A140081(n), A177287(A004018(n))]`
-/

namespace A327609.P8900590205223103809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140081 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177287 (A004018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327609.P8900590205223103809

/-!
# A327610: Number of length n reversible string structures that are not palindromic using exactly three different colors.

The programs for A327610, the canonical program `A327610.P11674541860616960225` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327610 has offset 1).

The definition of A327610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327610.P11674541860616960225

`A056327(n+1)-A000392(A008619(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A327610

/-- `A056327(n+1)-A000392(A008619(n))` -/
def P11674541860616960225.Spec : Prop :=
  ∀ n, P11674541860616960225.a n = A327610 (n + 1)

theorem P11674541860616960225.correct : P11674541860616960225.Spec := by
  intro n
  simp only [A327610, Nat.add_sub_cancel]

end A327610

/-! ## A327610.P12961735039421321420

`A309748(A133263(n)+1)`
-/

namespace A327610.P12961735039421321420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309748 (A133263 n + 1).toNat

end

end A327610.P12961735039421321420

namespace A327610

/-- `A309748(A133263(n)+1)` -/
def P12961735039421321420.Spec : Prop :=
  ∀ n, P12961735039421321420.a n = A327610 (n + 1)

end A327610

/-! ## A327610.P7917241940854862565

`A309748(∑[A233583(n+1)])`
-/

namespace A327610.P7917241940854862565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327610.P7917241940854862565

namespace A327610

/-- `A309748(∑[A233583(n+1)])` -/
def P7917241940854862565.Spec : Prop :=
  ∀ n, P7917241940854862565.a n = A327610 (n + 1)

end A327610

/-! ## A327610.P13044421789155277464

`A309748(∑[A254667(n)]+2)`
-/

namespace A327610.P13044421789155277464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309748 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A327610.P13044421789155277464

namespace A327610

/-- `A309748(∑[A254667(n)]+2)` -/
def P13044421789155277464.Spec : Prop :=
  ∀ n, P13044421789155277464.a n = A327610 (n + 1)

end A327610

/-! ## A327610.P17056773067763003187

`A309748(A238531(n+1)+1)`
-/

namespace A327610.P17056773067763003187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309748 (A238531 (n + 1) + 1).toNat

end

end A327610.P17056773067763003187

namespace A327610

/-- `A309748(A238531(n+1)+1)` -/
def P17056773067763003187.Spec : Prop :=
  ∀ n, P17056773067763003187.a n = A327610 (n + 1)

end A327610

/-!
# A327611: Number of length n reversible string structures that are not palindromic using exactly four different colors.

The programs for A327611, the canonical program `A327611.P162445837171172901` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327611 has offset 1).

The definition of A327611 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327611.P162445837171172901

`A056328(n+1)-A056473(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A327611

/-- `A056328(n+1)-A056473(n+1)` -/
def P162445837171172901.Spec : Prop :=
  ∀ n, P162445837171172901.a n = A327611 (n + 1)

theorem P162445837171172901.correct : P162445837171172901.Spec := by
  intro n
  simp only [A327611, Nat.add_sub_cancel]

end A327611

/-! ## A327611.P12170701736450397956

`A309748(∑[A000194(n²+3)])`
-/

namespace A327611.P12170701736450397956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n ^ 2 + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309748 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327611.P12170701736450397956

namespace A327611

/-- `A309748(∑[A000194(n²+3)])` -/
def P12170701736450397956.Spec : Prop :=
  ∀ n, P12170701736450397956.a n = A327611 (n + 1)

end A327611

/-! ## A327611.P7482709565010994974

`A309748(∑[n+2]-A004275(n))`
-/

namespace A327611.P7482709565010994974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309748 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A004275 n).toNat

end

end A327611.P7482709565010994974

namespace A327611

/-- `A309748(∑[n+2]-A004275(n))` -/
def P7482709565010994974.Spec : Prop :=
  ∀ n, P7482709565010994974.a n = A327611 (n + 1)

end A327611

/-! ## A327611.P17445514012255411079

`A309748(A238531(n)+A065475(n+1))`
-/

namespace A327611.P17445514012255411079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309748 (A238531 n + A065475 (n + 1)).toNat

end

end A327611.P17445514012255411079

namespace A327611

/-- `A309748(A238531(n)+A065475(n+1))` -/
def P17445514012255411079.Spec : Prop :=
  ∀ n, P17445514012255411079.a n = A327611 (n + 1)

end A327611

/-! ## A327611.P2105708961034599759

`A309748(A152950(n+1)%A000051(n)+1)`
-/

namespace A327611.P2105708961034599759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309748 (Int.tmod (A152950 (n + 1)) (A000051 n) + 1).toNat

end

end A327611.P2105708961034599759

namespace A327611

/-- `A309748(A152950(n+1)%A000051(n)+1)` -/
def P2105708961034599759.Spec : Prop :=
  ∀ n, P2105708961034599759.a n = A327611 (n + 1)

end A327611

/-!
# A327612: Number of length n reversible string structures that are not palindromic using any number of colors.

The programs for A327612, there is no canonical definition to state claims against.
-/

/-! ## A327612.P9869590370698742009

`A103293(n+2)-A188164(n+1)`
-/

namespace A327612.P9869590370698742009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103293 (n + 2) - A188164 (n + 1)

end

end A327612.P9869590370698742009

/-! ## A327612.P2437051859999895082

`A065718(A199210(n))`
-/

namespace A327612.P2437051859999895082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065718 (A199210 n).toNat

end

end A327612.P2437051859999895082

/-!
# A327615: Irregular triangle read by rows: T(n,k) is the number of unlabeled multigraphs with loops allowed and n edges covering k vertices, n >= 1, 1 <= k <= 2*n.

The programs for A327615, there is no canonical definition to state claims against.
-/

/-! ## A327615.P8725950621446824711

`A005185(A139623(n+1))`
-/

namespace A327615.P8725950621446824711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005185 (A139623 (n + 1)).toNat

end

end A327615.P8725950621446824711

/-! ## A327615.P12125787777503219688

`A008616(6*A139623(n+1))`
-/

namespace A327615.P12125787777503219688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (6 * A139623 (n + 1)).toNat

end

end A327615.P12125787777503219688

/-! ## A327615.P15466918108553016687

`round(A139623(n+1)/atan(A005993(n)))`
-/

namespace A327615.P15466918108553016687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A139623 (n + 1) : ℝ) / Real.arctan (A005993 n : ℝ))

end

end A327615.P15466918108553016687

/-! ## A327615.P11828489107899939866

`A065033(floor((A139623(n+1)+1)/sin(1)))`
-/

namespace A327615.P11828489107899939866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 ⌊(A139623 (n + 1) + 1 : ℝ) / Real.sin (1 : ℝ)⌋.toNat

end

end A327615.P11828489107899939866

/-! ## A327615.P11084150883991163618

`A110654(floor((A139623(n+1)+1)/sin(1)))`
-/

namespace A327615.P11084150883991163618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ⌊(A139623 (n + 1) + 1 : ℝ) / Real.sin (1 : ℝ)⌋.toNat

end

end A327615.P11084150883991163618

/-!
# A327616: Irregular table read by rows; the first row contains a single 1; for any n > 1, row n+1 corresponds to the ordinal transform of the terms in rows 1..n.

The programs for A327616, there is no canonical definition to state claims against.
-/

/-! ## A327616.P5952382175343459889

`A204988(A344947(n))+A001221(A010893(n)!)`
-/

namespace A327616.P5952382175343459889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A344947 n).toNat + A001221 (Nat.factorial (A010893 (n + 13)).toNat)

end

end A327616.P5952382175343459889

/-! ## A327616.P16846713896109904391

`A336811(A167204(Δ[A000384(n)]))`
-/

namespace A327616.P16846713896109904391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (A167204 (f1 (n + 1) - f1 n).toNat).toNat

end

end A327616.P16846713896109904391

/-! ## A327616.P13303100396127995183

`A336811((1-A053644(n)+n)%A206010(C(n+2, 2)))`
-/

namespace A327616.P13303100396127995183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (Int.tmod (1 - A053644 n + (n : ℤ)) (A206010 (Nat.choose (n + 2) 2))).toNat

end

end A327616.P13303100396127995183

/-! ## A327616.P14305893303130265152

`A204988(A344947(A146888(n)+n))`
-/

namespace A327616.P14305893303130265152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A344947 (A146888 n + (n : ℤ)).toNat).toNat

end

end A327616.P14305893303130265152

/-! ## A327616.P1623925865024330404

`A204988(A065091(n+1)*A344947(n))`
-/

namespace A327616.P1623925865024330404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (A065091 (n + 1) * A344947 n).toNat

end

end A327616.P1623925865024330404

/-!
# A327618: Number A(n,k) of parts in all k-times partitions of n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A327618, there is no canonical definition to state claims against.
-/

/-! ## A327618.P10058061358523144624

`A121314(n)-A008683(A010934(n))`
-/

namespace A327618.P10058061358523144624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 n - A008683 (A010934 n).toNat

end

end A327618.P10058061358523144624

/-! ## A327618.P10887530825956316897

`A003100(A121314(n)%A005452(n))`
-/

namespace A327618.P10887530825956316897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003100 (Int.tmod (A121314 n) (A005452 n)).toNat

end

end A327618.P10887530825956316897

/-! ## A327618.P9496856357224626612

`A121314(n)+A008683(2*A010934(n))`
-/

namespace A327618.P9496856357224626612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121314 n + A008683 (2 * A010934 n).toNat

end

end A327618.P9496856357224626612

/-! ## A327618.P1638920091947829699

`A151511(A219209(n))%8`
-/

namespace A327618.P1638920091947829699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A151511 (A219209 n).toNat) 8

end

end A327618.P1638920091947829699

/-! ## A327618.P14933315681514267748

`A121314(n)%A345670(n)`
-/

namespace A327618.P14933315681514267748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121314 n) (A345670 n)

end

end A327618.P14933315681514267748

/-!
# A327619: Number of parts in all n-times partitions of n.

The programs for A327619, there is no canonical definition to state claims against.
-/

/-! ## A327619.P8024810713457597163

`A327618(∑[4*n])`
-/

namespace A327619.P8024810713457597163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327619.P8024810713457597163

/-! ## A327619.P17739735152119887304

`record[A327618(A092530(n))]`
-/

namespace A327619.P17739735152119887304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A092530 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327619.P17739735152119887304

/-! ## A327619.P2872660179922906017

`record[A327618(∑[A071045(n)])]`
-/

namespace A327619.P2872660179922906017
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327619.P2872660179922906017

/-! ## A327619.P15954739463089384170

`record[gcd(A008482(n), A327618(n))]`
-/

namespace A327619.P15954739463089384170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A327618 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327619.P15954739463089384170

/-! ## A327619.P5443368486679532028

`record[A327618(∑[A064455(n+1)])]`
-/

namespace A327619.P5443368486679532028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327619.P5443368486679532028

/-! ## A327619.P8926759659563563879

`record[A327618((n+1)*A123108(n))]`
-/

namespace A327619.P8926759659563563879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 ((n + 1 : ℤ) * A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327619.P8926759659563563879

/-! ## A327619.P15513846658051086626

`record[A327618(n*A008624(2*n))]`
-/

namespace A327619.P15513846658051086626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 ((n : ℤ) * A008624 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327619.P15513846658051086626

/-! ## A327619.P7310666147033963425

`A057427(n)*A327618(A046092(n))`
-/

namespace A327619.P7310666147033963425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327618 (A046092 n).toNat

end

end A327619.P7310666147033963425

/-! ## A327619.P12103493412419921638

`record[A327618(n*A051731(A080036(n)))]`
-/

namespace A327619.P12103493412419921638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 ((n : ℤ) * A051731 (A080036 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327619.P12103493412419921638

/-! ## A327619.P16467356261481703124

`record[(2-A143182(n))*A327618(n)]`
-/

namespace A327619.P16467356261481703124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A143182 n) * A327618 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327619.P16467356261481703124

/-!
# A327621: Sums of distinct powers of 3 and powers of 4 (greater than 1).

The programs for A327621, there is no canonical definition to state claims against.
-/

/-! ## A327621.P3221041140382066529

`lt[A258383(A073204(3*n)), A256914(n)]`
-/

namespace A327621.P3221041140382066529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258383 (A073204 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327621.P3221041140382066529

/-! ## A327621.P2239512089691561237

`lt[A256914(A073204(3*n+4)), A256914(n)]`
-/

namespace A327621.P2239512089691561237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 (A073204 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256914 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A327621.P2239512089691561237

/-!
# A327622: Number A(n,k) of parts in all k-times partitions of n into distinct parts; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A327622, there is no canonical definition to state claims against.
-/

/-! ## A327622.P9520272699922742794

`A106954(A006094(n+1))%A007723(n)`
-/

namespace A327622.P9520272699922742794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106954 (A006094 (n + 1)).toNat) (A007723 n)

end

end A327622.P9520272699922742794

/-! ## A327622.P6222676093535845176

`A004273(A103631(n)%A133020(n+1))`
-/

namespace A327622.P6222676093535845176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (Int.tmod (A103631 n) (A133020 (n + 1))).toNat

end

end A327622.P6222676093535845176

/-! ## A327622.P14844383298419927552

`p?[A210442(n)]%A227925(n)`
-/

namespace A327622.P14844383298419927552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A227925 n)

end

end A327622.P14844383298419927552

/-! ## A327622.P5874609114805640415

`A000120(A278986(comp[∑[n-1]])²)`
-/

namespace A327622.P5874609114805640415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A278986 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2).toNat

end

end A327622.P5874609114805640415

/-! ## A327622.P16919301858282768332

`A000043(2*n+3)%A060632(A199530(n+1))`
-/

namespace A327622.P16919301858282768332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000043 (2 * n + 3)) (A060632 (A199530 (n + 1)).toNat)

end

end A327622.P16919301858282768332

/-!
# A327623: Number of parts in all n-times partitions of n into distinct parts.

The programs for A327623, there is no canonical definition to state claims against.
-/

/-! ## A327623.P12449320902225582280

`A327622(∑[4*n])`
-/

namespace A327623.P12449320902225582280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327623.P12449320902225582280

/-! ## A327623.P4828760939973697411

`and(1-4/2, A327622((n+1)*2*n))`
-/

namespace A327623.P4828760939973697411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A327622 ((n + 1) * (2 * n)))

end

end A327623.P4828760939973697411

/-! ## A327623.P16977643758723056279

`A304042(n)*A327622((n+1)*2*n)`
-/

namespace A327623.P16977643758723056279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A327622 ((n + 1) * (2 * n))

end

end A327623.P16977643758723056279

/-! ## A327623.P8555459585204522296

`A057427(n)*A327622(A046092(n))`
-/

namespace A327623.P8555459585204522296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327622 (A046092 n).toNat

end

end A327623.P8555459585204522296

/-! ## A327623.P15895803218509192042

`lcm(A033999(n), A327622(A046092(n)))`
-/

namespace A327623.P15895803218509192042
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A327622 (A046092 n).toNat)

end

end A327623.P15895803218509192042

/-!
# A327625: Expansion of Sum_{k>=0} x^(3^k) / (1 - x^(3^k))^2.

The programs for A327625, the canonical program `A327625.P2807763681306950925` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327625 has offset 1).

The definition of A327625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327625.P2807763681306950925

`∑{d}[n+1, A195459(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A327625

/-- `∑{d}[n+1, A195459(#)]` -/
def P2807763681306950925.Spec : Prop :=
  ∀ n, P2807763681306950925.a n = A327625 (n + 1)

theorem P2807763681306950925.correct : P2807763681306950925.Spec := by
  intro n
  simp only [A327625, Nat.add_sub_cancel]

end A327625

/-! ## A327625.P13754102896556765018

`∑{d}[n+1, A000010(3*#)/2]`
-/

namespace A327625.P13754102896556765018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000010 (3 * d) : ℚ) / 2

end

end A327625.P13754102896556765018

namespace A327625

/-- `∑{d}[n+1, A000010(3*#)/2]` -/
def P13754102896556765018.Spec : Prop :=
  ∀ n, P13754102896556765018.a n = (A327625 (n + 1) : ℚ)

end A327625

/-! ## A327625.P12443442422687980209

`∑{d}[A038500(n+1), (n+1)/#]`
-/

namespace A327625.P12443442422687980209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A327625.P12443442422687980209

namespace A327625

/-- `∑{d}[A038500(n+1), (n+1)/#]` -/
def P12443442422687980209.Spec : Prop :=
  ∀ n, P12443442422687980209.a n = (A327625 (n + 1) : ℚ)

end A327625

/-! ## A327625.P316839970033676090

`(n+1)/3^val(n+1, 3)*A000203(3^val(n+1, 3))`
-/

namespace A327625.P316839970033676090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ) * (A000203 (3 ^ SequenceMachineLib.valuation (n + 1) 3) : ℚ)

end

end A327625.P316839970033676090

namespace A327625

/-- `(n+1)/3^val(n+1, 3)*A000203(3^val(n+1, 3))` -/
def P316839970033676090.Spec : Prop :=
  ∀ n, P316839970033676090.a n = (A327625 (n + 1) : ℚ)

end A327625

/-! ## A327625.P14441579187776406597

`Δ[A000217(n)+a(A002264(n))]` with `a(0)=1`
-/

namespace A327625.P14441579187776406597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000217 n + f1 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327625.P14441579187776406597

namespace A327625

/-- `Δ[A000217(n)+a(A002264(n))]` -/
def P14441579187776406597.Spec : Prop :=
  ∀ n, P14441579187776406597.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P268591283661818058

`A373184(n+1)-A051064(n+1)`
-/

namespace A327625.P268591283661818058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373184 (n + 1) - A051064 (n + 1)

end

end A327625.P268591283661818058

namespace A327625

/-- `A373184(n+1)-A051064(n+1)` -/
def P268591283661818058.Spec : Prop :=
  ∀ n, P268591283661818058.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P10363345453345929506

`A038502(n+1)*A080278(n+1)`
-/

namespace A327625.P10363345453345929506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1) * A080278 (n + 1)

end

end A327625.P10363345453345929506

namespace A327625

/-- `A038502(n+1)*A080278(n+1)` -/
def P10363345453345929506.Spec : Prop :=
  ∀ n, P10363345453345929506.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P11985038462119318532

`A064987(n+1)/A078708(n+1)`
-/

namespace A327625.P11985038462119318532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A078708 (n + 1) : ℚ)

end

end A327625.P11985038462119318532

namespace A327625

/-- `A064987(n+1)/A078708(n+1)` -/
def P11985038462119318532.Spec : Prop :=
  ∀ n, P11985038462119318532.a n = (A327625 (n + 1) : ℚ)

end A327625

/-! ## A327625.P16019510555738116865

`A185152(n+1)/A214361(n+1)`
-/

namespace A327625.P16019510555738116865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185152 (n + 1) : ℚ) / (A214361 (n + 1) : ℚ)

end

end A327625.P16019510555738116865

namespace A327625

/-- `A185152(n+1)/A214361(n+1)` -/
def P16019510555738116865.Spec : Prop :=
  ∀ n, P16019510555738116865.a n = (A327625 (n + 1) : ℚ)

end A327625

/-! ## A327625.P9465422006050132626

`A326125(n+1)/A121443(n+1)`
-/

namespace A327625.P9465422006050132626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326125 (n + 1) : ℚ) / (A121443 (n + 1) : ℚ)

end

end A327625.P9465422006050132626

namespace A327625

/-- `A326125(n+1)/A121443(n+1)` -/
def P9465422006050132626.Spec : Prop :=
  ∀ n, P9465422006050132626.a n = (A327625 (n + 1) : ℚ)

end A327625

/-! ## A327625.P2180254058873253074

`A228274(n+1)/A385138(n+1)`
-/

namespace A327625.P2180254058873253074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228274 (n + 1) : ℚ) / (A385138 (n + 1) : ℚ)

end

end A327625.P2180254058873253074

namespace A327625

/-- `A228274(n+1)/A385138(n+1)` -/
def P2180254058873253074.Spec : Prop :=
  ∀ n, P2180254058873253074.a n = (A327625 (n + 1) : ℚ)

end A327625

/-! ## A327625.P15844304734579021057

`A001651(3^val(n+1, 3))*A038502(n+1)`
-/

namespace A327625.P15844304734579021057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (3 ^ SequenceMachineLib.valuation (n + 1) 3) * A038502 (n + 1)

end

end A327625.P15844304734579021057

namespace A327625

/-- `A001651(3^val(n+1, 3))*A038502(n+1)` -/
def P15844304734579021057.Spec : Prop :=
  ∀ n, P15844304734579021057.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P11432662562477509295

`∑{d}[n+1, A026741(#)*A065333((n+1)/#)]`
-/

namespace A327625.P11432662562477509295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d * A065333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327625.P11432662562477509295

namespace A327625

/-- `∑{d}[n+1, A026741(#)*A065333((n+1)/#)]` -/
def P11432662562477509295.Spec : Prop :=
  ∀ n, P11432662562477509295.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P7524652603137553771

`∑{d}[n+1, A000203(#)*A156277((n+1)/#)]`
-/

namespace A327625.P7524652603137553771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A156277 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327625.P7524652603137553771

namespace A327625

/-- `∑{d}[n+1, A000203(#)*A156277((n+1)/#)]` -/
def P7524652603137553771.Spec : Prop :=
  ∀ n, P7524652603137553771.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P10609234132762182432

`∑{d}[n+1, A062570(#)*A284413((n+1)/#)]`
-/

namespace A327625.P10609234132762182432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062570 d * A284413 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327625.P10609234132762182432

namespace A327625

/-- `∑{d}[n+1, A062570(#)*A284413((n+1)/#)]` -/
def P10609234132762182432.Spec : Prop :=
  ∀ n, P10609234132762182432.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P17467688998542712068

`∑{d}[n+1, A002131(#)*A355688((n+1)/#)]`
-/

namespace A327625.P17467688998542712068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002131 d * A355688 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327625.P17467688998542712068

namespace A327625

/-- `∑{d}[n+1, A002131(#)*A355688((n+1)/#)]` -/
def P17467688998542712068.Spec : Prop :=
  ∀ n, P17467688998542712068.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P9987513758795201477

`∑{d}[n+1, A072078(#)*A326305((n+1)/#)]`
-/

namespace A327625.P9987513758795201477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A072078 d * A326305 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327625.P9987513758795201477

namespace A327625

/-- `∑{d}[n+1, A072078(#)*A326305((n+1)/#)]` -/
def P9987513758795201477.Spec : Prop :=
  ∀ n, P9987513758795201477.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P9995941280928338216

`∑{d}[n+1, A227128(#)*A343785((n+1)/#)]`
-/

namespace A327625.P9995941280928338216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A227128 d * A343785 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327625.P9995941280928338216

namespace A327625

/-- `∑{d}[n+1, A227128(#)*A343785((n+1)/#)]` -/
def P9995941280928338216.Spec : Prop :=
  ∀ n, P9995941280928338216.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P7348690988981977578

`∑{d}[n+1, A059841(#-1)*A372671((n+1)/#)]`
-/

namespace A327625.P7348690988981977578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059841 (d - 1) * A372671 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327625.P7348690988981977578

namespace A327625

/-- `∑{d}[n+1, A059841(#-1)*A372671((n+1)/#)]` -/
def P7348690988981977578.Spec : Prop :=
  ∀ n, P7348690988981977578.a n = A327625 (n + 1)

end A327625

/-! ## A327625.P2948007765387957722

`(n+1)/A038500(n+1)*A001651(3^val(n+1, 3))`
-/

namespace A327625.P2948007765387957722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A038500 (n + 1) : ℚ) * (A001651 (3 ^ SequenceMachineLib.valuation (n + 1) 3) : ℚ)

end

end A327625.P2948007765387957722

namespace A327625

/-- `(n+1)/A038500(n+1)*A001651(3^val(n+1, 3))` -/
def P2948007765387957722.Spec : Prop :=
  ∀ n, P2948007765387957722.a n = (A327625 (n + 1) : ℚ)

end A327625

/-!
# A327626: Expansion of Sum_{k>=1} x^(k^3) / (1 - x^(k^3))^2.

The programs for A327626, the canonical program `A327626.P16918329962545563415` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327626 has offset 1).

The definition of A327626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327626.P2678512683652999706

`∑{d}[n+1, A078429(#)]`
-/

namespace A327626.P2678512683652999706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078429 d

end

end A327626.P2678512683652999706

namespace A327626

/-- `∑{d}[n+1, A078429(#)]` -/
def P2678512683652999706.Spec : Prop :=
  ∀ n, P2678512683652999706.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P16918329962545563415

`∑{d}[n+1, #*A010057((n+1)/#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A327626

/-- `∑{d}[n+1, #*A010057((n+1)/#)]` -/
def P16918329962545563415.Spec : Prop :=
  ∀ n, P16918329962545563415.a n = A327626 (n + 1)

theorem P16918329962545563415.correct : P16918329962545563415.Spec := by
  intro n
  simp only [A327626, Nat.add_sub_cancel]

end A327626

/-! ## A327626.P3738077184325059852

`A050985(n+1)*A113061(n+1)`
-/

namespace A327626.P3738077184325059852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050985 (n + 1) * A113061 (n + 1)

end

end A327626.P3738077184325059852

namespace A327626

/-- `A050985(n+1)*A113061(n+1)` -/
def P3738077184325059852.Spec : Prop :=
  ∀ n, P3738077184325059852.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P7880746471262332161

`∑{d}[n+1, A000010(#)*A061704((n+1)/#)]`
-/

namespace A327626.P7880746471262332161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A061704 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P7880746471262332161

namespace A327626

/-- `∑{d}[n+1, A000010(#)*A061704((n+1)/#)]` -/
def P7880746471262332161.Spec : Prop :=
  ∀ n, P7880746471262332161.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P10634567166157696862

`∑{d}[n+1, A000203(#)*A210826((n+1)/#)]`
-/

namespace A327626.P10634567166157696862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A210826 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P10634567166157696862

namespace A327626

/-- `∑{d}[n+1, A000203(#)*A210826((n+1)/#)]` -/
def P10634567166157696862.Spec : Prop :=
  ∀ n, P10634567166157696862.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P17186921540502467909

`∑{d}[n+1, A001615(#)*A307420((n+1)/#)]`
-/

namespace A327626.P17186921540502467909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A307420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P17186921540502467909

namespace A327626

/-- `∑{d}[n+1, A001615(#)*A307420((n+1)/#)]` -/
def P17186921540502467909.Spec : Prop :=
  ∀ n, P17186921540502467909.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P18239791447248191135

`∑{d}[n+1, A076752(#)*A307424((n+1)/#)]`
-/

namespace A327626.P18239791447248191135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A076752 d * A307424 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P18239791447248191135

namespace A327626

/-- `∑{d}[n+1, A076752(#)*A307424((n+1)/#)]` -/
def P18239791447248191135.Spec : Prop :=
  ∀ n, P18239791447248191135.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P17929365126833356808

`∑{d}[n+1, A063659(#)*A370256((n+1)/#)]`
-/

namespace A327626.P17929365126833356808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A370256 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P17929365126833356808

namespace A327626

/-- `∑{d}[n+1, A063659(#)*A370256((n+1)/#)]` -/
def P17929365126833356808.Spec : Prop :=
  ∀ n, P17929365126833356808.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P11068100578190006258

`∑{d}[n+1, A130107(#)*A322885((n+1)/#)]`
-/

namespace A327626.P11068100578190006258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A322885 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P11068100578190006258

namespace A327626

/-- `∑{d}[n+1, A130107(#)*A322885((n+1)/#)]` -/
def P11068100578190006258.Spec : Prop :=
  ∀ n, P11068100578190006258.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P10984689937381910210

`∑{d}[n+1, A206369(#)*A307421((n+1)/#)]`
-/

namespace A327626.P10984689937381910210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A206369 d * A307421 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P10984689937381910210

namespace A327626

/-- `∑{d}[n+1, A206369(#)*A307421((n+1)/#)]` -/
def P10984689937381910210.Spec : Prop :=
  ∀ n, P10984689937381910210.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P14867703333092891630

`∑{d}[n+1, A307427(#)*A332844((n+1)/#)]`
-/

namespace A327626.P14867703333092891630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A307427 d * A332844 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327626.P14867703333092891630

namespace A327626

/-- `∑{d}[n+1, A307427(#)*A332844((n+1)/#)]` -/
def P14867703333092891630.Spec : Prop :=
  ∀ n, P14867703333092891630.a n = A327626 (n + 1)

end A327626

/-! ## A327626.P10369163802743948586

`A048798((n+1)²)*A113061(n+1)`
-/

namespace A327626.P10369163802743948586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 ((n + 1) ^ 2) * A113061 (n + 1)

end

end A327626.P10369163802743948586

namespace A327626

/-- `A048798((n+1)²)*A113061(n+1)` -/
def P10369163802743948586.Spec : Prop :=
  ∀ n, P10369163802743948586.a n = A327626 (n + 1)

end A327626

/-!
# A327627: Number of parts in all thrice partitions of n.

The programs for A327627, there is no canonical definition to state claims against.
-/

/-! ## A327627.P10087531592896544523

`A327618(∑[n+3]+n+3)`
-/

namespace A327627.P10087531592896544523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A327627.P10087531592896544523

/-! ## A327627.P12857454022630785445

`record[A327618(abs(A046691(n)))]`
-/

namespace A327627.P12857454022630785445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327627.P12857454022630785445

/-! ## A327627.P10465529267769748396

`record[A327618(A027379(n)-1)]`
-/

namespace A327627.P10465529267769748396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A027379 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327627.P10465529267769748396

/-! ## A327627.P16098281618090818438

`record[A327618(A004273(n)+A000217(n))]`
-/

namespace A327627.P16098281618090818438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (A004273 n + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327627.P16098281618090818438

/-! ## A327627.P6201829939152380729

`record[A327618(A046691(n)%A027379(n))]`
-/

namespace A327627.P6201829939152380729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327618 (Int.tmod (A046691 n) (A027379 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A327627.P6201829939152380729

/-!
# A327628: Number of parts in all thrice partitions of n into distinct parts.

The programs for A327628, there is no canonical definition to state claims against.
-/

/-! ## A327628.P13237078445610488469

`A327622(∑[n+4]+2)`
-/

namespace A327628.P13237078445610488469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A327628.P13237078445610488469

/-! ## A327628.P636210251313829166

`A057427(n)*A327622(A056000(n)+6)`
-/

namespace A327628.P636210251313829166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A327622 (A056000 n + 6).toNat

end

end A327628.P636210251313829166

/-! ## A327628.P2674199207752193566

`lcm(A057077(n), A327622(A056000(n)+6))`
-/

namespace A327628.P2674199207752193566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A327622 (A056000 n + 6).toNat)

end

end A327628.P2674199207752193566

/-! ## A327628.P3052377082557702959

`A000038(n)!*A327622(A056000(n)+6)`
-/

namespace A327628.P3052377082557702959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) * A327622 (A056000 n + 6).toNat

end

end A327628.P3052377082557702959

/-! ## A327628.P4700008011051170935

`A327622(A056000(n)+6)+A000007(n+1)`
-/

namespace A327628.P4700008011051170935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A056000 n + 6).toNat + A000007 (n + 1)

end

end A327628.P4700008011051170935

/-! ## A327628.P12347284749739588822

`A327622(A056000(n)+6)+A000038(n+1)`
-/

namespace A327628.P12347284749739588822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A056000 n + 6).toNat + A000038 (n + 1)

end

end A327628.P12347284749739588822

/-! ## A327628.P11425224309300320361

`A327622(A056000(n)+6)%A000032(2*n)`
-/

namespace A327628.P11425224309300320361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A327622 (A056000 n + 6).toNat) (A000032 (2 * n))

end

end A327628.P11425224309300320361

/-! ## A327628.P2371996395385917212

`A014963(10*(n+1))*A327622(A056000(n)+6)`
-/

namespace A327628.P2371996395385917212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A327622 (A056000 n + 6).toNat

end

end A327628.P2371996395385917212

/-! ## A327628.P2775752865612803957

`A000041(C(2, n+2))*A327622(A056000(n)+6)`
-/

namespace A327628.P2775752865612803957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A327622 (A056000 n + 6).toNat

end

end A327628.P2775752865612803957

/-! ## A327628.P5795581979478511301

`A007318(C(2, n+2))*A327622(A056000(n)+6)`
-/

namespace A327628.P5795581979478511301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A327622 (A056000 n + 6).toNat

end

end A327628.P5795581979478511301

/-! ## A327628.P10401275177368833563

`A327622(A056000(n)+6)+A104488(A006530(n+1))`
-/

namespace A327628.P10401275177368833563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327622 (A056000 n + 6).toNat + A104488 (A006530 (n + 1)).toNat

end

end A327628.P10401275177368833563

/-! ## A327628.P5571119372341308875

`A001222(A002233(n+1))*A327622(A056000(n)+6)`
-/

namespace A327628.P5571119372341308875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002233 (n + 1)).toNat * A327622 (A056000 n + 6).toNat

end

end A327628.P5571119372341308875

/-! ## A327628.P14318820918874208758

`A000035(A080827(n+1))*A327622(A056000(n)+6)`
-/

namespace A327628.P14318820918874208758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A080827 (n + 1)).toNat * A327622 (A056000 n + 6).toNat

end

end A327628.P14318820918874208758

/-!
# A327629: Expansion of Sum_{k>=1} x^(k*(k + 1)/2) / (1 - x^(k*(k + 1)/2))^2.

The programs for A327629, the canonical program `A327629.P8323413943727263806` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327629 has offset 1).

The definition of A327629 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327629.P8323413943727263806

`∑{d}[n+1, #*A010054((n+1)/#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A327629

/-- `∑{d}[n+1, #*A010054((n+1)/#)]` -/
def P8323413943727263806.Spec : Prop :=
  ∀ n, P8323413943727263806.a n = A327629 (n + 1)

theorem P8323413943727263806.correct : P8323413943727263806.Spec := by
  intro n
  simp only [A327629, Nat.add_sub_cancel]

end A327629

/-! ## A327629.P17909159031761998086

`∑{d}[n+1, #*A073423((n+1)/#)]`
-/

namespace A327629.P17909159031761998086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A073423 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327629.P17909159031761998086

namespace A327629

/-- `∑{d}[n+1, #*A073423((n+1)/#)]` -/
def P17909159031761998086.Spec : Prop :=
  ∀ n, P17909159031761998086.a n = A327629 (n + 1)

end A327629

/-! ## A327629.P2355694508242215190

`∑{d}[n+1, #*A073424((n+1)/#)]`
-/

namespace A327629.P2355694508242215190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A073424 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327629.P2355694508242215190

namespace A327629

/-- `∑{d}[n+1, #*A073424((n+1)/#)]` -/
def P2355694508242215190.Spec : Prop :=
  ∀ n, P2355694508242215190.a n = A327629 (n + 1)

end A327629

/-! ## A327629.P2975623072898029467

`∑{d}[n+1, #*A023531((n+1)/#-1)]`
-/

namespace A327629.P2975623072898029467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A023531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A327629.P2975623072898029467

namespace A327629

/-- `∑{d}[n+1, #*A023531((n+1)/#-1)]` -/
def P2975623072898029467.Spec : Prop :=
  ∀ n, P2975623072898029467.a n = A327629 (n + 1)

end A327629

/-! ## A327629.P3981454910342198934

`∑{d}[n+1, A000010(#)*A007862((n+1)/#)]`
-/

namespace A327629.P3981454910342198934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A007862 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327629.P3981454910342198934

namespace A327629

/-- `∑{d}[n+1, A000010(#)*A007862((n+1)/#)]` -/
def P3981454910342198934.Spec : Prop :=
  ∀ n, P3981454910342198934.a n = A327629 (n + 1)

end A327629

/-! ## A327629.P13230849705014597992

`∑{d}[n+1, A162728(#)*A329801((n+1)/#)]`
-/

namespace A327629.P13230849705014597992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A329801 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327629.P13230849705014597992

namespace A327629

/-- `∑{d}[n+1, A162728(#)*A329801((n+1)/#)]` -/
def P13230849705014597992.Spec : Prop :=
  ∀ n, P13230849705014597992.a n = A327629 (n + 1)

end A327629

/-! ## A327629.P6023493234982096535

`∑{d}[n+1, A327637(#)]`
-/

namespace A327629.P6023493234982096535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327637 d

end

end A327629.P6023493234982096535

namespace A327629

/-- `∑{d}[n+1, A327637(#)]` -/
def P6023493234982096535.Spec : Prop :=
  ∀ n, P6023493234982096535.a n = A327629 (n + 1)

end A327629

/-!
# A327630: a(n) is the least integer k such that sigma(sigma(k)) >= n*k where sigma is A000203, the sum of divisors.

The programs for A327630, there is no canonical definition to state claims against.
-/

/-! ## A327630.P11349044587757122875

`A047726(∑[A145642(n+4)])`
-/

namespace A327630.P11349044587757122875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145642 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327630.P11349044587757122875

/-! ## A327630.P15262071901329875555

`A047726(4*A121591(n+1))`
-/

namespace A327630.P15262071901329875555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (4 * A121591 (n + 1)).toNat

end

end A327630.P15262071901329875555

/-! ## A327630.P5930039606905547099

`A047726(A115653(n+1)^3)`
-/

namespace A327630.P5930039606905547099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A115653 (n + 1) ^ 3).toNat

end

end A327630.P5930039606905547099

/-! ## A327630.P17615657043728911588

`A047726(lcm(∏{e}[n+1, #+1], A254437(n+1)))`
-/

namespace A327630.P17615657043728911588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (Int.lcm ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) (A254437 (n + 1)))

end

end A327630.P17615657043728911588

/-! ## A327630.P17157564086394139139

`A047726(∑{d}[∏{p}[n+1, #], ((n+1)/#)²]*A225196(n+2))`
-/

namespace A327630.P17157564086394139139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (SequenceMachineLib.roundAway ((∑ d ∈ Nat.divisors (f1 n), ((n + 1 : ℚ) / (d : ℚ)) ^ 2) * (A225196 (n + 2) : ℚ))).toNat

end

end A327630.P17157564086394139139

/-!
# A327635: Numbers k such that both k and k+1 are infinitary abundant numbers (A129656).

The programs for A327635, there is no canonical definition to state claims against.
-/

/-! ## A327635.P12600469119209780963

`A318167(∑[A182709(n+1)!])`
-/

namespace A327635.P12600469119209780963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A182709 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318167 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327635.P12600469119209780963

/-!
# A327637: a(n) is the number of integers j such that 1 <= j <= n and gcd(n,j) is a triangular number.

The programs for A327637, there is no canonical definition to state claims against.
-/

/-! ## A327637.P9082617319617315659

`∑{d}[n+1, A000010(#)*A010054((n+1)/#)]`
-/

namespace A327637.P9082617319617315659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A010054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327637.P9082617319617315659

/-! ## A327637.P15183245632533132426

`∑{d}[n+1, A007431(#)*A007862((n+1)/#)]`
-/

namespace A327637.P15183245632533132426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A007862 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327637.P15183245632533132426

/-! ## A327637.P7484350974299132061

`∑{d}[n+1, A000010(#)*A073424((n+1)/#)]`
-/

namespace A327637.P7484350974299132061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A073424 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327637.P7484350974299132061

/-! ## A327637.P15584987553282361060

`∑{d}[n+1, A008683(#)*A327629((n+1)/#)]`
-/

namespace A327637.P15584987553282361060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A327629 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327637.P15584987553282361060

/-! ## A327637.P14850581088794579389

`∑{d}[n+1, A000010(#)*A023531((n+1)/#-1)]`
-/

namespace A327637.P14850581088794579389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A023531 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A327637.P14850581088794579389

/-!
# A327638: a(0)=1, a(1)=5; for n > 2, a(n) is the smallest odd number j not divisible by 3 such that (3*j+1)/2^k = a(n-1) for some k.

The programs for A327638, there is no canonical definition to state claims against.
-/

/-! ## A327638.P16737983940221423842

`filter[A225570(n+1), A373156(#)]`
-/

namespace A327638.P16737983940221423842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A327638.P16737983940221423842

/-! ## A327638.P12074924229169246300

`filter[A225570(n+1), A374134(#)]`
-/

namespace A327638.P12074924229169246300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A327638.P12074924229169246300

/-! ## A327638.P7013011991585979979

`filter[A225570(n+1), A093719(#)]`
-/

namespace A327638.P7013011991585979979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A327638.P7013011991585979979

/-! ## A327638.P7712622054484003181

`filter[A225570(n+1), A320106(#)]`
-/

namespace A327638.P7712622054484003181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A327638.P7712622054484003181

/-!
# A327640: Number of partitions of n into divisors d of n such that n/d is odd.

The programs for A327640, there is no canonical definition to state claims against.
-/

/-! ## A327640.P6612826345141663990

`A018818(A000265(A008574(n)))`
-/

namespace A327640.P6612826345141663990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (A000265 (A008574 n).toNat).toNat

end

end A327640.P6612826345141663990

/-! ## A327640.P2831664454326775212

`A171565(A000265(A028310(n)))`
-/

namespace A327640.P2831664454326775212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 (A000265 (A028310 n).toNat).toNat

end

end A327640.P2831664454326775212

/-! ## A327640.P818549139351335399

`A171565(A030101(A030101(n)))`
-/

namespace A327640.P818549139351335399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 (A030101 (A030101 n).toNat).toNat

end

end A327640.P818549139351335399

/-! ## A327640.P8368060219051767190

`A018818(A000265(record[A124625(n)]))`
-/

namespace A327640.P8368060219051767190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (A000265 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A327640.P8368060219051767190

/-! ## A327640.P15298705759297685696

`A171565(A028234(Δ[A077591(n)]))`
-/

namespace A327640.P15298705759297685696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171565 (A028234 (f1 (n + 1) - f1 n).toNat).toNat

end

end A327640.P15298705759297685696

/-!
# A327641: Number of partitions of n into divisors d of n such that n/d is squarefree.

The programs for A327641, there is no canonical definition to state claims against.
-/

/-! ## A327641.P9589973605044460736

`A018818(∏{p}[n, #])`
-/

namespace A327641.P9589973605044460736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A327641.P9589973605044460736

/-! ## A327641.P5038689367476197938

`A066874(∏{p}[n, #])`
-/

namespace A327641.P5038689367476197938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066874 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A327641.P5038689367476197938

/-! ## A327641.P10538490325401289169

`A225244(∏{p}[n, #])`
-/

namespace A327641.P10538490325401289169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A327641.P10538490325401289169

/-! ## A327641.P1636143166205927672

`A210442(∏{p}[n, #])+1`
-/

namespace A327641.P1636143166205927672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1

end

end A327641.P1636143166205927672

/-! ## A327641.P730344723428627979

`A225244(A007947(A257088(n)))`
-/

namespace A327641.P730344723428627979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (A007947 (A257088 n).toNat).toNat

end

end A327641.P730344723428627979

/-! ## A327641.P13988512681919822703

`A225244(gcd(n, A034386(n)))`
-/

namespace A327641.P13988512681919822703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 (Int.gcd (n : ℤ) (A034386 n))

end

end A327641.P13988512681919822703

/-! ## A327641.P3738577766402831112

`A018818(A160014(∑[n]))`
-/

namespace A327641.P3738577766402831112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018818 (A160014 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A327641.P3738577766402831112

/-!
# A327643: Number of refinement sequences n -> ... -> {1}^n, where in each step one part is replaced by a partition of itself into two smaller parts (in weakly decreasing order).

The programs for A327643, there is no canonical definition to state claims against.
-/

/-! ## A327643.P18085394259621612776

`A327639(∑[n+1])`
-/

namespace A327643.P18085394259621612776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327643.P18085394259621612776

/-! ## A327643.P10219064058230781130

`or(A000007(n), A327639(A000217(n+1)))`
-/

namespace A327643.P10219064058230781130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A327639 (A000217 (n + 1)).toNat)

end

end A327643.P10219064058230781130

/-! ## A327643.P2098278928355401898

`A007318(C(2, n))*A327639(A000217(n+1))`
-/

namespace A327643.P2098278928355401898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A327639 (A000217 (n + 1)).toNat

end

end A327643.P2098278928355401898

/-! ## A327643.P6863960976361200431

`A327639(A000217(n+1))/A014963(10*(n+1))`
-/

namespace A327643.P6863960976361200431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327639 (A000217 (n + 1)).toNat : ℚ) / (A014963 (10 * (n + 1)) : ℚ)

end

end A327643.P6863960976361200431

/-! ## A327643.P18416886387770150829

`A006519(2*n+1)*A327639(A000124(n)+n)`
-/

namespace A327643.P18416886387770150829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A327639 (A000124 n + (n : ℤ)).toNat

end

end A327643.P18416886387770150829

/-! ## A327643.P5507483417465687478

`A007318(ceil(n/(n+1)))*A327639(A000124(n)+n)`
-/

namespace A327643.P5507483417465687478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌈(n : ℚ) / (n + 1 : ℚ)⌉.toNat * A327639 (A000124 n + (n : ℤ)).toNat

end

end A327643.P5507483417465687478

/-! ## A327643.P679451381753678502

`A327631(∑[n+1])/(n+1)`
-/

namespace A327643.P679451381753678502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327631 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A327643.P679451381753678502

/-!
# A327644: Number of proper many times partitions of n.

The programs for A327644, there is no canonical definition to state claims against.
-/

/-! ## A327644.P9713892240562576688

`A129590(a(n-1)+3+n)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A327644.P9713892240562576688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4] fun n a =>
  A129590 (a (n - 1) + 3 + (n : ℤ)).toNat

end

end A327644.P9713892240562576688

/-! ## A327644.P13225187522151840545

`A171573(A001006(n))`
-/

namespace A327644.P13225187522151840545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171573 (A001006 n).toNat

end

end A327644.P13225187522151840545

/-! ## A327644.P15245935085991183100

`A171573(A005207(n))`
-/

namespace A327644.P15245935085991183100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171573 (A005207 n).toNat

end

end A327644.P15245935085991183100

/-!
# A327645: Number of proper n-times partitions of 2n.

The programs for A327645, there is no canonical definition to state claims against.
-/

/-! ## A327645.P13769710363114606962

`A327639(A058331(n))`
-/

namespace A327645.P13769710363114606962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327639 (A058331 n).toNat

end

end A327645.P13769710363114606962

/-! ## A327645.P5706055415038616511

`A327639(A005408(n²))`
-/

namespace A327645.P5706055415038616511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327639 (A005408 (n ^ 2)).toNat

end

end A327645.P5706055415038616511

/-! ## A327645.P14884386288177708616

`A327639(A160144(n²))`
-/

namespace A327645.P14884386288177708616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327639 (A160144 (n ^ 2)).toNat

end

end A327645.P14884386288177708616

/-! ## A327645.P12597084356648853872

`A327639(A005893(n)-1)`
-/

namespace A327645.P12597084356648853872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327639 (A005893 n - 1).toNat

end

end A327645.P12597084356648853872

/-! ## A327645.P7614316339577770194

`A327639(A056220(n)+2)`
-/

namespace A327645.P7614316339577770194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327639 (A056220 n + 2).toNat

end

end A327645.P7614316339577770194

/-!
# A327646: Total number of steps in all proper many times partitions of n.

The programs for A327646, there is no canonical definition to state claims against.
-/

/-! ## A327646.P734088556474141170

`A047207(A028342(n))-A052826(n)`
-/

namespace A327646.P734088556474141170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047207 (A028342 n).toNat - A052826 n

end

end A327646.P734088556474141170

/-! ## A327646.P4462335237692373057

`A274794(floor(sqrt((n+1)!)))`
-/

namespace A327646.P4462335237692373057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274794 (Nat.sqrt (Nat.factorial (n + 1)))

end

end A327646.P4462335237692373057

/-!
# A327647: Number of parts in all proper many times partitions of n into distinct parts.

The programs for A327647, there is no canonical definition to state claims against.
-/

/-! ## A327647.P16544992942733398119

`A338521(A149168(n+1))`
-/

namespace A327647.P16544992942733398119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338521 (A149168 (n + 1)).toNat

end

end A327647.P16544992942733398119

/-! ## A327647.P13218276551479603726

`A347610(A036378(n+1)+n)`
-/

namespace A327647.P13218276551479603726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (A036378 (n + 1) + (n : ℤ)).toNat

end

end A327647.P13218276551479603726

/-! ## A327647.P5871383566773345378

`or(A033183(A007052(n)), A101803(n))`
-/

namespace A327647.P5871383566773345378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033183 (A007052 n).toNat) (A101803 n)

end

end A327647.P5871383566773345378

/-!
# A327648: Number of parts in all proper many times partitions of n.

The programs for A327648, there is no canonical definition to state claims against.
-/

/-! ## A327648.P9550051682236956696

`A141100(A038629(n+1))`
-/

namespace A327648.P9550051682236956696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (A038629 (n + 1)).toNat

end

end A327648.P9550051682236956696

/-! ## A327648.P6766526627634205036

`A345192(n)+A167865(A005649(n))`
-/

namespace A327648.P6766526627634205036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345192 n + A167865 (A005649 n).toNat

end

end A327648.P6766526627634205036

/-!
# A327651: Composite numbers k coprime to 8 such that k divides Pell(k - Kronecker(8,k)), Pell = A000129.

The programs for A327651, there is no canonical definition to state claims against.
-/

/-! ## A327651.P1289360498057387894

`A337233(A018825(n+1)*A147108(n+1))`
-/

namespace A327651.P1289360498057387894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337233 (A018825 (n + 1) * A147108 (n + 1)).toNat

end

end A327651.P1289360498057387894

/-! ## A327651.P9465084402564145023

`A337233(A018825(n+1)*A147109(n+1))`
-/

namespace A327651.P9465084402564145023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337233 (A018825 (n + 1) * A147109 (n + 1)).toNat

end

end A327651.P9465084402564145023

/-! ## A327651.P18076229111193949443

`A337233(A018825(n+1)%A337737(2*(n+2)))`
-/

namespace A327651.P18076229111193949443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337233 (Int.tmod (A018825 (n + 1)) (A337737 (2 * (n + 2)))).toNat

end

end A327651.P18076229111193949443

/-!
# A327652: Intersection of A099011 and A327651.

The programs for A327652, there is no canonical definition to state claims against.
-/

/-! ## A327652.P3796789086069583097

`∩[A099011(n+1), A330276(n+1)]`
-/

namespace A327652.P3796789086069583097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327652.P3796789086069583097

/-! ## A327652.P18391447358309222412

`∩[A099011(n+1), A327651(n+1)]`
-/

namespace A327652.P18391447358309222412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327651 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327652.P18391447358309222412

/-! ## A327652.P4137739835787566639

`∩[A327651(n+1), A330276(n+1)]`
-/

namespace A327652.P4137739835787566639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327652.P4137739835787566639

/-! ## A327652.P12870246944674332976

`filter[A330276(n+1), A236862(#)]`
-/

namespace A327652.P12870246944674332976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330276 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A236862 (f1 j).toNat = 1) n)

end

end A327652.P12870246944674332976

/-!
# A327654: Composite numbers k coprime to 13 such that k divides A006190(k) - Kronecker(13,k).

The programs for A327654, there is no canonical definition to state claims against.
-/

/-! ## A327654.P1272675512736754338

`A128344(n+1)+A002117(A129275(n))`
-/

namespace A327654.P1272675512736754338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128344 (n + 1) + A002117 (A129275 n).toNat

end

end A327654.P1272675512736754338

/-!
# A327655: Intersection of A327653 and A327654.

The programs for A327655, there is no canonical definition to state claims against.
-/

/-! ## A327655.P11487415634425671821

`∩[A327653(n+1), A327654(n+1)]`
-/

namespace A327655.P11487415634425671821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327655.P11487415634425671821

/-! ## A327655.P2405863227147771639

`∩[A327653(n+1), A335669(n+1)]`
-/

namespace A327655.P2405863227147771639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327655.P2405863227147771639

/-! ## A327655.P16765303267840924971

`∩[A327654(n+1), A335669(n+1)]`
-/

namespace A327655.P16765303267840924971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327655.P16765303267840924971

/-! ## A327655.P11817424498543109492

`∩[A327653(n+1), A337626(n+1)]`
-/

namespace A327655.P11817424498543109492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327655.P11817424498543109492

/-! ## A327655.P2238290243613569358

`∩[A327654(n+1), A337626(n+1)]`
-/

namespace A327655.P2238290243613569358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327654 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337626 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A327655.P2238290243613569358

/-!
# A327656: Maximum divisor of n that is 1 or whose prime indices have a common divisor > 1.

The programs for A327656, there is no canonical definition to state claims against.
-/

/-! ## A327656.P10630498540320919121

`(n+1)/A327405(n+1)`
-/

namespace A327656.P10630498540320919121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A327405 (n + 1) : ℚ)

end

end A327656.P10630498540320919121

/-! ## A327656.P9443131049525674329

`A219158(A327405(n+1)+A000217(n))`
-/

namespace A327656.P9443131049525674329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A327405 (n + 1) + A000217 n).toNat

end

end A327656.P9443131049525674329

/-! ## A327656.P5824604980603648775

`A234575(A327405(n+1)+A000217(n))`
-/

namespace A327656.P5824604980603648775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A327405 (n + 1) + A000217 n).toNat

end

end A327656.P5824604980603648775

/-! ## A327656.P15632323997174166742

`A010766(A327405(n+1)+A000217(n))`
-/

namespace A327656.P15632323997174166742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A327405 (n + 1) + A000217 n).toNat

end

end A327656.P15632323997174166742

/-! ## A327656.P17856035115191767166

`A049834(A327405(n+1)+A000217(n))`
-/

namespace A327656.P17856035115191767166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A327405 (n + 1) + A000217 n).toNat

end

end A327656.P17856035115191767166

/-! ## A327656.P16134580009895088460

`A051537(A327405(n+1)+A000217(n))`
-/

namespace A327656.P16134580009895088460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A327405 (n + 1) + A000217 n).toNat

end

end A327656.P16134580009895088460

/-! ## A327656.P5243390525861558674

`A126988(A327405(n+1)+A000217(n))`
-/

namespace A327656.P5243390525861558674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A327405 (n + 1) + A000217 n).toNat

end

end A327656.P5243390525861558674

/-! ## A327656.P16606991970701306014

`A025492(A000265(n+1))*A327401(n+1)`
-/

namespace A327656.P16606991970701306014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025492 (A000265 (n + 1)).toNat * A327401 (n + 1)

end

end A327656.P16606991970701306014

/-! ## A327656.P3548764672130249697

`A093803(2*(n+1))/A327395(A093803(2*(n+1)))`
-/

namespace A327656.P3548764672130249697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093803 (2 * (n + 1)) : ℚ) / (A327395 (A093803 (2 * (n + 1))).toNat : ℚ)

end

end A327656.P3548764672130249697

/-! ## A327656.P763020671337172401

`A000265((n+1)/A327395(n+1))`
-/

namespace A327656.P763020671337172401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A327395 (n + 1) : ℚ))).toNat

end

end A327656.P763020671337172401

/-!
# A327657: Number of divisors of n that are 1 or whose prime indices have a common divisor > 1.

The programs for A327657, there is no canonical definition to state claims against.
-/

/-! ## A327657.P17492076621016429350

`A000005(n+1)-A318979(n+1)`
-/

namespace A327657.P17492076621016429350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A318979 (n + 1)

end

end A327657.P17492076621016429350

/-! ## A327657.P18308367158347269309

`Δ[A054519(n)]-A318979(n+1)`
-/

namespace A327657.P18308367158347269309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A318979 (n + 1)

end

end A327657.P18308367158347269309

/-! ## A327657.P1107186571272292803

`A334954(n+1)-A327530(n+1)`
-/

namespace A327657.P1107186571272292803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (n + 1) - A327530 (n + 1)

end

end A327657.P1107186571272292803

/-! ## A327657.P10787102006512805059

`A000005(n+1)+1-A327530(n+1)`
-/

namespace A327657.P10787102006512805059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (1 - A327530 (n + 1))

end

end A327657.P10787102006512805059

/-! ## A327657.P5273826217233382262

`A001227(n+1)-A318979(A000265(n+1))`
-/

namespace A327657.P5273826217233382262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) - A318979 (A000265 (n + 1)).toNat

end

end A327657.P5273826217233382262

/-! ## A327657.P11140101892853391151

`A056239(n+1)+A325794(n+1)-A318979(n+1)`
-/

namespace A327657.P11140101892853391151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A325794 (n + 1) - A318979 (n + 1))

end

end A327657.P11140101892853391151

/-! ## A327657.P964964814769026956

`A327390(A000265(n+1))`
-/

namespace A327657.P964964814769026956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327390 (A000265 (n + 1)).toNat

end

end A327657.P964964814769026956

/-! ## A327657.P5593925120009272225

`A327390(A153733(n)+1)`
-/

namespace A327657.P5593925120009272225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327390 (A153733 n + 1).toNat

end

end A327657.P5593925120009272225

/-! ## A327657.P12879415979650694844

`A327390(n+1)-n%2`
-/

namespace A327657.P12879415979650694844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327390 (n + 1) - ((n % 2 : ℕ) : ℤ)

end

end A327657.P12879415979650694844

/-!
# A327658: Number of factorizations of n that are empty or whose factors have a common divisor > 1.

The programs for A327658, there is no canonical definition to state claims against.
-/

/-! ## A327658.P3986732479357717594

`A319786(n+1)%12`
-/

namespace A327658.P3986732479357717594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319786 (n + 1)) 12

end

end A327658.P3986732479357717594

/-! ## A327658.P13980058766874681226

`A319786(lcm(and(3, n)+1, n+1))`
-/

namespace A327658.P13980058766874681226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (Nat.lcm (Nat.land 3 n + 1) (n + 1))

end

end A327658.P13980058766874681226

/-! ## A327658.P12045848217763385489

`A000015(A319786(n+1))`
-/

namespace A327658.P12045848217763385489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A319786 (n + 1)).toNat

end

end A327658.P12045848217763385489

/-! ## A327658.P15396216500993175894

`A319786(A130446(n+1))`
-/

namespace A327658.P15396216500993175894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (A130446 (n + 1)).toNat

end

end A327658.P15396216500993175894

/-! ## A327658.P365669767277231311

`A319786(A296882(n+1))`
-/

namespace A327658.P365669767277231311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (A296882 (n + 1)).toNat

end

end A327658.P365669767277231311

/-! ## A327658.P5873634510187703393

`A347043(A319786(n+1)²)`
-/

namespace A327658.P5873634510187703393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347043 (A319786 (n + 1) ^ 2).toNat

end

end A327658.P5873634510187703393

/-! ## A327658.P4740770299797690229

`A319786(A319797(n)!+n)`
-/

namespace A327658.P4740770299797690229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (Nat.factorial (A319797 n).toNat + n)

end

end A327658.P4740770299797690229

/-! ## A327658.P1582059573476909213

`A009996(A319786(n+1)+1)`
-/

namespace A327658.P1582059573476909213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009996 (A319786 (n + 1) + 1).toNat

end

end A327658.P1582059573476909213

/-! ## A327658.P3010457227186425341

`∏{d}[A319786(n+1), A006530(#)]`
-/

namespace A327658.P3010457227186425341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A327658.P3010457227186425341

/-! ## A327658.P4788803439484142832

`∏{d}[A319786(n+1), A020639(#)]`
-/

namespace A327658.P4788803439484142832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A020639 d

end

end A327658.P4788803439484142832

/-!
# A327659: Number of factorizations of A318978(n - 1), the n-th number that is 1 or whose prime indices have a common divisor > 1, into numbers > 1 satisfying the same conditions.

The programs for A327659, there is no canonical definition to state claims against.
-/

/-! ## A327659.P5593721500361633410

`A001055(A328336(n+2))`
-/

namespace A327659.P5593721500361633410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A328336 (n + 2)).toNat

end

end A327659.P5593721500361633410

/-! ## A327659.P12618295652352369541

`A001055(record[A327656(n+1)])`
-/

namespace A327659.P12618295652352369541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327659.P12618295652352369541

/-! ## A327659.P16696406751222791299

`A069016(record[A327656(n+1)])`
-/

namespace A327659.P16696406751222791299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069016 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327659.P16696406751222791299

/-! ## A327659.P7726989610790031829

`A252665(record[A327656(n+1)])`
-/

namespace A327659.P7726989610790031829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327659.P7726989610790031829

/-! ## A327659.P10117256546986034084

`A317791(record[A327656(n+1)])`
-/

namespace A327659.P10117256546986034084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317791 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327659.P10117256546986034084

/-! ## A327659.P6090768096676620177

`A349907(record[A327656(n+1)])`
-/

namespace A327659.P6090768096676620177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349907 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327659.P6090768096676620177

/-! ## A327659.P1951027587574279310

`A001055(lt[A327512(n+1), 2]+1)`
-/

namespace A327659.P1951027587574279310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A327659.P1951027587574279310

/-! ## A327659.P7157229625747741583

`A001055(record[2-A327529(n+1)+n])`
-/

namespace A327659.P7157229625747741583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A327529 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327659.P7157229625747741583

/-! ## A327659.P15519523224506828752

`A317141(A003961(record[A327656(n+1)]))`
-/

namespace A327659.P15519523224506828752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317141 (A003961 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A327659.P15519523224506828752

/-!
# A327660: Least number k > n - 2 such that k*n^k + 1 is prime.

The programs for A327660, there is no canonical definition to state claims against.
-/

/-! ## A327660.P15674027450830725031

`A074525(a(n-1))` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A327660.P15674027450830725031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3] fun n a =>
  A074525 (a (n - 1)).toNat

end

end A327660.P15674027450830725031

/-!
# A327662: Length of shortest word of frequency depth n.

The programs for A327662, there is no canonical definition to state claims against.
-/

/-! ## A327662.P3009706087904074805

`ceil(γ*A261082(n))`
-/

namespace A327662.P3009706087904074805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.eulerMascheroniConstant * (A261082 n : ℝ)⌉

end

end A327662.P3009706087904074805

/-! ## A327662.P9313032036589861834

`floor(3/2*a(n-1))-A083913(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A327662.P9313032036589861834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(3 : ℚ) / 2 * (a (n - 1) : ℚ)⌋ - A083913 (n + 1)

end

end A327662.P9313032036589861834

/-! ## A327662.P13665509770679888116

`A194979(A261082(n))`
-/

namespace A327662.P13665509770679888116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A261082 n).toNat

end

end A327662.P13665509770679888116

/-! ## A327662.P7351808328781100898

`A056155(record[Δ[A023439(n)]])`
-/

namespace A327662.P7351808328781100898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023439 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056155 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A327662.P7351808328781100898

/-! ## A327662.P12019641899112427582

`A204166(A196537(n+1))`
-/

namespace A327662.P12019641899112427582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (A196537 (n + 1)).toNat

end

end A327662.P12019641899112427582

/-!
# A327664: a(n) is the least base >= 2 such that for any k in the range 0..n-1, the sum of digits of k and the sum of digits of n differ for at least one base b in the range 2..a(n).

The programs for A327664, there is no canonical definition to state claims against.
-/

/-! ## A327664.P5171120935295535278

`A069010(∑[or(1, A135797(n+1))])`
-/

namespace A327664.P5171120935295535278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A135797 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327664.P5171120935295535278

/-! ## A327664.P11250645441571211644

`A069010(∑[A109613(A135797(n+1))])`
-/

namespace A327664.P11250645441571211644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A135797 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A327664.P11250645441571211644

/-! ## A327664.P1456699161021077728

`A245574(or(A000064(n), A010184(n)))`
-/

namespace A327664.P1456699161021077728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (Int.lor (A000064 n) (A010184 n)).toNat

end

end A327664.P1456699161021077728

/-! ## A327664.P10715711633416370808

`A358552(A242534(n+1)+n+1)`
-/

namespace A327664.P10715711633416370808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (A242534 (n + 1) + (n + 1 : ℤ)).toNat

end

end A327664.P10715711633416370808

/-! ## A327664.P10140045444463534412

`A109082(A308074(n+1)+A001970(n+2))`
-/

namespace A327664.P10140045444463534412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A308074 (n + 1) + A001970 (n + 2)).toNat

end

end A327664.P10140045444463534412

/-!
# A327665: Fibonacci with binary selection.

The programs for A327665, there is no canonical definition to state claims against.
-/

/-! ## A327665.P15470781237176980643

`A000194((n+1)*2^n-1)-comp[2*n+3]`
-/

namespace A327665.P15470781237176980643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((n + 1) * 2 ^ n - 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A327665.P15470781237176980643

/-! ## A327665.P4607866935472004866

`A178786(A188492(char[1]+n))`
-/

namespace A327665.P4607866935472004866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178786 (A188492 ((if ∃ j, f1 j = n then 1 else 0) + n)).toNat

end

end A327665.P4607866935472004866

/-! ## A327665.P17950937110058914114

`A307707(A294802(n)+A023438(n))`
-/

namespace A327665.P17950937110058914114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307707 (A294802 n + A023438 n).toNat

end

end A327665.P17950937110058914114

/-! ## A327665.P17933002185744853425

`A003056(A018026(n))-A018135(n)`
-/

namespace A327665.P17933002185744853425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A018026 n).toNat - A018135 n

end

end A327665.P17933002185744853425

/-! ## A327665.P14223907571667572174

`A055389(n)-A163352(A055389(n))`
-/

namespace A327665.P14223907571667572174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n - A163352 (A055389 n).toNat

end

end A327665.P14223907571667572174

/-!
# A327666: a(n) = Sum_{k = 1..n} (-1)^(Omega(k) - omega(k)), where Omega(k) counts prime factors of k with multiplicity and omega(k) counts distinct prime factors.

The programs for A327666, the canonical program `A327666.P1599727410967829950` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327666 has offset 1).

The definition of A327666 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327666.P1599727410967829950

`∑[∏{e}[n+1, -(-1)^#]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327666

/-- `∑[∏{e}[n+1, -(-1)^#]]` -/
def P1599727410967829950.Spec : Prop :=
  ∀ n, P1599727410967829950.a n = A327666 (n + 1)

theorem P1599727410967829950.correct : P1599727410967829950.Spec := by
  intro n
  simp only [A327666, Nat.add_sub_cancel]

end A327666

/-! ## A327666.P14876507301551158032

`∑[(-1)^∑{e}[n+1, #+1]]`
-/

namespace A327666.P14876507301551158032
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P14876507301551158032

namespace A327666

/-- `∑[(-1)^∑{e}[n+1, #+1]]` -/
def P14876507301551158032.Spec : Prop :=
  ∀ n, P14876507301551158032.a n = A327666 (n + 1)

end A327666

/-! ## A327666.P12752735142931605122

`∑[A162511(n+1)]`
-/

namespace A327666.P12752735142931605122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P12752735142931605122

namespace A327666

/-- `∑[A162511(n+1)]` -/
def P12752735142931605122.Spec : Prop :=
  ∀ n, P12752735142931605122.a n = A327666 (n + 1)

end A327666

/-! ## A327666.P3139954820149392467

`∑[(-1)^A046660(n+1)]`
-/

namespace A327666.P3139954820149392467
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A046660 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P3139954820149392467

namespace A327666

/-- `∑[(-1)^A046660(n+1)]` -/
def P3139954820149392467.Spec : Prop :=
  ∀ n, P3139954820149392467.a n = (A327666 (n + 1) : ℚ)

end A327666

/-! ## A327666.P8017438481723031269

`∑[(-1)^A162641(n+1)]`
-/

namespace A327666.P8017438481723031269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A162641 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P8017438481723031269

namespace A327666

/-- `∑[(-1)^A162641(n+1)]` -/
def P8017438481723031269.Spec : Prop :=
  ∀ n, P8017438481723031269.a n = (A327666 (n + 1) : ℚ)

end A327666

/-! ## A327666.P4572973679505102479

`∑[A008836((n+1)/∏{p}[n+1, #])]`
-/

namespace A327666.P4572973679505102479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P4572973679505102479

namespace A327666

/-- `∑[A008836((n+1)/∏{p}[n+1, #])]` -/
def P4572973679505102479.Spec : Prop :=
  ∀ n, P4572973679505102479.a n = A327666 (n + 1)

end A327666

/-! ## A327666.P12309730809517273139

`∑[A008836(∏{e}[n+1, (#+1)%2+1])]`
-/

namespace A327666.P12309730809517273139
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (∏ p ∈ Nat.primeFactors (f2 n), ((Nat.factorization (f2 n) p + 1) % 2 + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P12309730809517273139

namespace A327666

/-- `∑[A008836(∏{e}[n+1, (#+1)%2+1])]` -/
def P12309730809517273139.Spec : Prop :=
  ∀ n, P12309730809517273139.a n = A327666 (n + 1)

end A327666

/-! ## A327666.P9374593314469591293

`∑[A008836(A003557(n+1))]`
-/

namespace A327666.P9374593314469591293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A003557 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P9374593314469591293

namespace A327666

/-- `∑[A008836(A003557(n+1))]` -/
def P9374593314469591293.Spec : Prop :=
  ∀ n, P9374593314469591293.a n = A327666 (n + 1)

end A327666

/-! ## A327666.P15175588099037028108

`∑[A008683(A336643(n+1))]`
-/

namespace A327666.P15175588099037028108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A336643 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P15175588099037028108

namespace A327666

/-- `∑[A008683(A336643(n+1))]` -/
def P15175588099037028108.Spec : Prop :=
  ∀ n, P15175588099037028108.a n = A327666 (n + 1)

end A327666

/-! ## A327666.P14666504288772615222

`∑[A011596(abs(A162512(n+1)))]`
-/

namespace A327666.P14666504288772615222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011596 |A162512 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P14666504288772615222

namespace A327666

/-- `∑[A011596(abs(A162512(n+1)))]` -/
def P14666504288772615222.Spec : Prop :=
  ∀ n, P14666504288772615222.a n = A327666 (n + 1)

end A327666

/-! ## A327666.P10774239559873459095

`∑[A008683(A007913((n+1)/∏{p}[n+1, #]))]`
-/

namespace A327666.P10774239559873459095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P10774239559873459095

namespace A327666

/-- `∑[A008683(A007913((n+1)/∏{p}[n+1, #]))]` -/
def P10774239559873459095.Spec : Prop :=
  ∀ n, P10774239559873459095.a n = A327666 (n + 1)

end A327666

/-! ## A327666.P1061864881750289077

`∑[A008836(A092520((n+1)²))]`
-/

namespace A327666.P1061864881750289077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A092520 ((n + 1) ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327666.P1061864881750289077

namespace A327666

/-- `∑[A008836(A092520((n+1)²))]` -/
def P1061864881750289077.Spec : Prop :=
  ∀ n, P1061864881750289077.a n = A327666 (n + 1)

end A327666

/-!
# A327667: a(n) is the least base >= 2 where n is the least number with its sum of digits.

The programs for A327667, there is no canonical definition to state claims against.
-/

/-! ## A327667.P3464716276411950181

`A010894(A122302(n))+A006530(n+1)`
-/

namespace A327667.P3464716276411950181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A122302 n).toNat + 21) + A006530 (n + 1)

end

end A327667.P3464716276411950181

/-! ## A327667.P5145255857122271464

`A010894(A122322(n))+A006530(n+1)`
-/

namespace A327667.P5145255857122271464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 ((A122322 n).toNat + 21) + A006530 (n + 1)

end

end A327667.P5145255857122271464

/-! ## A327667.P612006819042065361

`A010815(A195322(n))+A006530(n+1)`
-/

namespace A327667.P612006819042065361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A195322 n).toNat + A006530 (n + 1)

end

end A327667.P612006819042065361

/-! ## A327667.P1861386031920718934

`A374840(n)+A183097(A000043(n+1))`
-/

namespace A327667.P1861386031920718934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374840 n + A183097 (A000043 (n + 1)).toNat

end

end A327667.P1861386031920718934

/-! ## A327667.P7718203439551865769

`A374840(n)+A344606(A000040(n+1))`
-/

namespace A327667.P7718203439551865769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374840 n + A344606 (A000040 (n + 1)).toNat

end

end A327667.P7718203439551865769

/-!
# A327668: a(n) = n * Sum_{d|n} (-1)^(bigomega(d) - omega(d)) / d.

The programs for A327668, the canonical program `A327668.P8702113189712458297` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327668 has offset 1).

The definition of A327668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327668.P8702113189712458297

`∑{d}[n+1, A333569(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A327668

/-- `∑{d}[n+1, A333569(#)]` -/
def P8702113189712458297.Spec : Prop :=
  ∀ n, P8702113189712458297.a n = A327668 (n + 1)

theorem P8702113189712458297.correct : P8702113189712458297.Spec := by
  intro n
  simp only [A327668, Nat.add_sub_cancel]

end A327668

/-! ## A327668.P4598444667675723837

`∑{d}[n+1, #*A162511((n+1)/#)]`
-/

namespace A327668.P4598444667675723837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A162511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327668.P4598444667675723837

namespace A327668

/-- `∑{d}[n+1, #*A162511((n+1)/#)]` -/
def P4598444667675723837.Spec : Prop :=
  ∀ n, P4598444667675723837.a n = A327668 (n + 1)

end A327668

/-! ## A327668.P14863525762943151806

`∑{d}[n+1, A000010(#)*A055076((n+1)/#)]`
-/

namespace A327668.P14863525762943151806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A055076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327668.P14863525762943151806

namespace A327668

/-- `∑{d}[n+1, A000010(#)*A055076((n+1)/#)]` -/
def P14863525762943151806.Spec : Prop :=
  ∀ n, P14863525762943151806.a n = A327668 (n + 1)

end A327668

/-! ## A327668.P2662797547244567367

`∑{d}[n+1, A074722(#)*A074816((n+1)/#)]`
-/

namespace A327668.P2662797547244567367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074722 d * A074816 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327668.P2662797547244567367

namespace A327668

/-- `∑{d}[n+1, A074722(#)*A074816((n+1)/#)]` -/
def P2662797547244567367.Spec : Prop :=
  ∀ n, P2662797547244567367.a n = A327668 (n + 1)

end A327668

/-! ## A327668.P10703997268557584860

`∑{d}[n+1, A074823(#)*A206369((n+1)/#)]`
-/

namespace A327668.P10703997268557584860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074823 d * A206369 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327668.P10703997268557584860

namespace A327668

/-- `∑{d}[n+1, A074823(#)*A206369((n+1)/#)]` -/
def P10703997268557584860.Spec : Prop :=
  ∀ n, P10703997268557584860.a n = A327668 (n + 1)

end A327668

/-! ## A327668.P6249612264550209132

`∑{d}[n+1, A158522(#)*A344221((n+1)/#)]`
-/

namespace A327668.P6249612264550209132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A344221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A327668.P6249612264550209132

namespace A327668

/-- `∑{d}[n+1, A158522(#)*A344221((n+1)/#)]` -/
def P6249612264550209132.Spec : Prop :=
  ∀ n, P6249612264550209132.a n = A327668 (n + 1)

end A327668

/-!
# A327669: Sum of divisors of n that have an odd number of distinct prime factors.

The programs for A327669, the canonical program `A327669.P18256832601895895184` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327669 has offset 1).

The definition of A327669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A327669.P10871207275448596609

`A000203(n+1)-A327670(n+1)`
-/

namespace A327669.P10871207275448596609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A327670 (n + 1)

end

end A327669.P10871207275448596609

namespace A327669

/-- `A000203(n+1)-A327670(n+1)` -/
def P10871207275448596609.Spec : Prop :=
  ∀ n, P10871207275448596609.a n = A327669 (n + 1)

theorem P10871207275448596609.correct : P10871207275448596609.Spec := by
  intro n
  simp only [A327669, Nat.add_sub_cancel, A327669.P10871207275448596609.a, A327669.P18256832601895895184.f1, A327669.P18256832601895895184.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A092248, A092248.P6012556233968533590.a, A327670, A327670.P15983329548232447165.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327669

/-! ## A327669.P18256832601895895184

`∑{d}[n+1, #*A092248(#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A327669

/-- `∑{d}[n+1, #*A092248(#)]` -/
def P18256832601895895184.Spec : Prop :=
  ∀ n, P18256832601895895184.a n = A327669 (n + 1)

theorem P18256832601895895184.correct : P18256832601895895184.Spec := by
  intro n
  simp only [A327669, Nat.add_sub_cancel]

end A327669

/-! ## A327669.P4868469147859568

`∑{d}[n+1, #*A001221(#)%2]`
-/

namespace A327669.P4868469147859568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A001221 d) 2

end

end A327669.P4868469147859568

namespace A327669

/-- `∑{d}[n+1, #*A001221(#)%2]` -/
def P4868469147859568.Spec : Prop :=
  ∀ n, P4868469147859568.a n = A327669 (n + 1)

end A327669

/-! ## A327669.P2690969012035157677

`Δ[A160664(n)]-A327670(n+1)`
-/

namespace A327669.P2690969012035157677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A327670 (n + 1)

end

end A327669.P2690969012035157677

namespace A327669

/-- `Δ[A160664(n)]-A327670(n+1)` -/
def P2690969012035157677.Spec : Prop :=
  ∀ n, P2690969012035157677.a n = A327669 (n + 1)

end A327669

/-! ## A327669.P16530094271938734304

`A088580(n+1)-(A327670(n+1)+1)`
-/

namespace A327669.P16530094271938734304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A327670 (n + 1) + 1)

end

end A327669.P16530094271938734304

namespace A327669

/-- `A088580(n+1)-(A327670(n+1)+1)` -/
def P16530094271938734304.Spec : Prop :=
  ∀ n, P16530094271938734304.a n = A327669 (n + 1)

theorem P16530094271938734304.correct : P16530094271938734304.Spec := by
  intro n
  simp only [A327669, Nat.add_sub_cancel, A327669.P16530094271938734304.a, A327669.P18256832601895895184.f1, A327669.P18256832601895895184.a, A088580, A088580.P3089093194242277422.a, A092248, A092248.P6012556233968533590.a, A327670, A327670.P15983329548232447165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327669

/-! ## A327669.P2447798483571085592

`A318676(n+1)+A318677(n+1)-A327670(n+1)`
-/

namespace A327669.P2447798483571085592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (n + 1) + (A318677 (n + 1) - A327670 (n + 1))

end

end A327669.P2447798483571085592

namespace A327669

/-- `A318676(n+1)+A318677(n+1)-A327670(n+1)` -/
def P2447798483571085592.Spec : Prop :=
  ∀ n, P2447798483571085592.a n = A327669 (n + 1)

theorem P2447798483571085592.correct : P2447798483571085592.Spec := by
  intro n
  simp only [A327669, Nat.add_sub_cancel, A327669.P2447798483571085592.a, A327669.P18256832601895895184.f1, A327669.P18256832601895895184.a, A092248, A092248.P6012556233968533590.a, A318676, A318676.P13641687183144923031.a, A318677, A318677.P9620612550096439051.a, A327670, A327670.P15983329548232447165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A061020, A061020.P8856517168126816648.f1, A061020.P8856517168126816648.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A298473, A298473.P12382154419653735353.f1, A298473.P12382154419653735353.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A327669

/-!
# A327670: Sum of divisors of n that have an even number of distinct prime factors.

The programs for A327670, the canonical program `A327670.P15983329548232447165` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327670 has offset 1).

The definition of A327670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327669, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A327670.P15983329548232447165

`A000203(n+1)-A327669(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A327670

/-- `A000203(n+1)-A327669(n+1)` -/
def P15983329548232447165.Spec : Prop :=
  ∀ n, P15983329548232447165.a n = A327670 (n + 1)

theorem P15983329548232447165.correct : P15983329548232447165.Spec := by
  intro n
  simp only [A327670, Nat.add_sub_cancel]

end A327670

/-! ## A327670.P3140995267174302643

`∑{d}[n+1, #*(1-A092248(#))]`
-/

namespace A327670.P3140995267174302643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (1 - A092248 d)

end

end A327670.P3140995267174302643

namespace A327670

/-- `∑{d}[n+1, #*(1-A092248(#))]` -/
def P3140995267174302643.Spec : Prop :=
  ∀ n, P3140995267174302643.a n = A327670 (n + 1)

end A327670

/-! ## A327670.P15250526402605721302

`∑{d}[n+1, #*A086664(#)%2]`
-/

namespace A327670.P15250526402605721302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.tmod (A086664 d) 2

end

end A327670.P15250526402605721302

namespace A327670

/-- `∑{d}[n+1, #*A086664(#)%2]` -/
def P15250526402605721302.Spec : Prop :=
  ∀ n, P15250526402605721302.a n = A327670 (n + 1)

end A327670

/-! ## A327670.P11142113520985984728

`A088580(n+1)-(A327669(n+1)+1)`
-/

namespace A327670.P11142113520985984728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (A327669 (n + 1) + 1)

end

end A327670.P11142113520985984728

namespace A327670

/-- `A088580(n+1)-(A327669(n+1)+1)` -/
def P11142113520985984728.Spec : Prop :=
  ∀ n, P11142113520985984728.a n = A327670 (n + 1)

theorem P11142113520985984728.correct : P11142113520985984728.Spec := by
  intro n
  simp only [A327670, Nat.add_sub_cancel, A327670.P11142113520985984728.a, A327670.P15983329548232447165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A088580, A088580.P3089093194242277422.a, A327669, A327669.P18256832601895895184.f1, A327669.P18256832601895895184.a, A092248, A092248.P6012556233968533590.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327670

/-! ## A327670.P10158800943594867650

`A318676(n+1)+A318677(n+1)-A327669(n+1)`
-/

namespace A327670.P10158800943594867650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318676 (n + 1) + (A318677 (n + 1) - A327669 (n + 1))

end

end A327670.P10158800943594867650

namespace A327670

/-- `A318676(n+1)+A318677(n+1)-A327669(n+1)` -/
def P10158800943594867650.Spec : Prop :=
  ∀ n, P10158800943594867650.a n = A327670 (n + 1)

theorem P10158800943594867650.correct : P10158800943594867650.Spec := by
  intro n
  simp only [A327670, Nat.add_sub_cancel, A327670.P10158800943594867650.a, A327670.P15983329548232447165.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A318676, A318676.P13641687183144923031.a, A318677, A318677.P9620612550096439051.a, A327669, A327669.P18256832601895895184.f1, A327669.P18256832601895895184.a, A061020, A061020.P8856517168126816648.f1, A061020.P8856517168126816648.a, A092248, A092248.P6012556233968533590.a, A156552, A156552.P4268073137713085227.a, A268411, A268411.P10692776799510792898.f2, A268411.P10692776799510792898.f1, A268411.P10692776799510792898.a, A298473, A298473.P12382154419653735353.f1, A298473.P12382154419653735353.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A327670

/-!
# A327672: a(n) = Sum_{k=0..n} ceiling(sqrt(k)).

The programs for A327672, the canonical program `A327672.P2292209899610565760` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327672 has offset 0).

The definition of A327672 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327672.P2292209899610565760

`(1+floor(sqrt(n)))*(6*n-floor(sqrt(n))-2*floor(sqrt(n))²)/6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327672

/-- `(1+floor(sqrt(n)))*(6*n-floor(sqrt(n))-2*floor(sqrt(n))²)/6` -/
def P2292209899610565760.Spec : Prop :=
  ∀ n, P2292209899610565760.a n = (A327672 n : ℚ)

end A327672

/-! ## A327672.P15559131110081927727

`ceil(a(n-1)+sqrt(n))` with `a(0)=0`
-/

namespace A327672.P15559131110081927727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.sqrt (n : ℝ)⌉

end

end A327672.P15559131110081927727

namespace A327672

/-- `ceil(a(n-1)+sqrt(n))` -/
def P15559131110081927727.Spec : Prop :=
  ∀ n, P15559131110081927727.a n = A327672 n

end A327672

/-! ## A327672.P6979162006387220844

`∑[A135034(n)]`
-/

namespace A327672.P6979162006387220844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327672.P6979162006387220844

namespace A327672

/-- `∑[A135034(n)]` -/
def P6979162006387220844.Spec : Prop :=
  ∀ n, P6979162006387220844.a n = A327672 n

end A327672

/-! ## A327672.P1070731734318212640

`A028391(n)+A022554(n)`
-/

namespace A327672.P1070731734318212640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n + A022554 n

end

end A327672.P1070731734318212640

namespace A327672

/-- `A028391(n)+A022554(n)` -/
def P1070731734318212640.Spec : Prop :=
  ∀ n, P1070731734318212640.a n = A327672 n

end A327672

/-! ## A327672.P2021981141686047859

`A028391(n)+∑[A000196(n)]`
-/

namespace A327672.P2021981141686047859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028391 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327672.P2021981141686047859

namespace A327672

/-- `A028391(n)+∑[A000196(n)]` -/
def P2021981141686047859.Spec : Prop :=
  ∀ n, P2021981141686047859.a n = A327672 n

end A327672

/-! ## A327672.P1098970115582637879

`A022554(n)+n-A000196(n)`
-/

namespace A327672.P1098970115582637879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022554 n + ((n : ℤ) - A000196 n)

end

end A327672.P1098970115582637879

namespace A327672

/-- `A022554(n)+n-A000196(n)` -/
def P1098970115582637879.Spec : Prop :=
  ∀ n, P1098970115582637879.a n = A327672 n

end A327672

/-! ## A327672.P7612885142614150863

`∑[A003059(n+1)]-A003059(n+1)`
-/

namespace A327672.P7612885142614150863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003059 (n + 1)

end

end A327672.P7612885142614150863

namespace A327672

/-- `∑[A003059(n+1)]-A003059(n+1)` -/
def P7612885142614150863.Spec : Prop :=
  ∀ n, P7612885142614150863.a n = A327672 n

end A327672

/-! ## A327672.P4890685089517213119

`lt[n*A115720(n), 1]`
-/

namespace A327672.P4890685089517213119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A115720 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A327672.P4890685089517213119

namespace A327672

/-- `lt[n*A115720(n), 1]` -/
def P4890685089517213119.Spec : Prop :=
  ∀ n, (P4890685089517213119.a n : ℤ) = A327672 n

end A327672

/-! ## A327672.P14976966274730390053

`eq[A000007(n), A115720(n)]`
-/

namespace A327672.P14976966274730390053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A327672.P14976966274730390053

namespace A327672

/-- `eq[A000007(n), A115720(n)]` -/
def P14976966274730390053.Spec : Prop :=
  ∀ n, (P14976966274730390053.a n : ℤ) = A327672 n

end A327672

/-! ## A327672.P1561492444041950717

`∑[ceil(sqrt(log(cosh(n))))]`
-/

namespace A327672.P1561492444041950717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Real.log (Real.cosh (n : ℝ)))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327672.P1561492444041950717

namespace A327672

/-- `∑[ceil(sqrt(log(cosh(n))))]` -/
def P1561492444041950717.Spec : Prop :=
  ∀ n, P1561492444041950717.a n = A327672 n

end A327672

/-! ## A327672.P1299623308947875717

`∑[ceil(sqrt(∑[tanh(n)]))]`
-/

namespace A327672.P1299623308947875717
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tanh (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (∑ j ∈ Finset.range (n + 1), f2 j)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327672.P1299623308947875717

namespace A327672

/-- `∑[ceil(sqrt(∑[tanh(n)]))]` -/
def P1299623308947875717.Spec : Prop :=
  ∀ n, P1299623308947875717.a n = A327672 n

end A327672

/-! ## A327672.P1204260058419487203

`∑[ceil(n^(tanh(n+1)/2))]`
-/

namespace A327672.P1204260058419487203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) ^ (Real.tanh (n + 1 : ℝ) / 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327672.P1204260058419487203

namespace A327672

/-- `∑[ceil(n^(tanh(n+1)/2))]` -/
def P1204260058419487203.Spec : Prop :=
  ∀ n, P1204260058419487203.a n = A327672 n

end A327672

/-!
# A327673: Number T(n,k) of colored compositions of n using all colors of a k-set such that all parts have different color patterns and the patterns for parts i are sorted and have i colors (in arbitrary order); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A327673, there is no canonical definition to state claims against.
-/

/-! ## A327673.P2826393725101270243

`or(A014473(n), A287315(A062279(n)))`
-/

namespace A327673.P2826393725101270243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014473 n) (A287315 (A062279 n).toNat)

end

end A327673.P2826393725101270243

/-! ## A327673.P16750136443301921876

`or(A062275(n), A287315(A062279(n)))`
-/

namespace A327673.P16750136443301921876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A062275 n) (A287315 (A062279 n).toNat)

end

end A327673.P16750136443301921876

/-! ## A327673.P16977391098996797155

`or(A107846(A022174(n)), A287315(n))`
-/

namespace A327673.P16977391098996797155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A107846 (A022174 n).toNat) (A287315 n)

end

end A327673.P16977391098996797155

/-! ## A327673.P777201458572158024

`or(A093998(A157221(n)), A287315(n))`
-/

namespace A327673.P777201458572158024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A093998 (A157221 n).toNat) (A287315 n)

end

end A327673.P777201458572158024

/-! ## A327673.P15608045704156630285

`A326441(A322670(n)*A341646(n+5))`
-/

namespace A327673.P15608045704156630285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 (A322670 n * A341646 (n + 5)).toNat

end

end A327673.P15608045704156630285

/-!
# A327674: Number of colored compositions of n using all colors of an n-set such that the color patterns for parts i are sorted and have i (distinct) colors (in arbitrary order).

The programs for A327674, there is no canonical definition to state claims against.
-/

/-! ## A327674.P8333211767856736584

`A327673(∑[n]+n)`
-/

namespace A327674.P8333211767856736584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A327674.P8333211767856736584

/-! ## A327674.P1301013819641659994

`or(1, A327673(A000096(n)))`
-/

namespace A327674.P1301013819641659994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A327673 (A000096 n).toNat)

end

end A327674.P1301013819641659994

/-! ## A327674.P12055027670482101593

`A327673(A000096(n))+A000007(n+1)`
-/

namespace A327674.P12055027670482101593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (A000096 n).toNat + A000007 (n + 1)

end

end A327674.P12055027670482101593

/-! ## A327674.P4965022270592766700

`gcd(A057427(n)-1, A327673(A000096(n)))`
-/

namespace A327674.P4965022270592766700
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A057427 n - 1) (A327673 (A000096 n).toNat)

end

end A327674.P4965022270592766700

/-! ## A327674.P18018333099404562752

`lcm(A064179(n+1), A327673(A000096(n)))`
-/

namespace A327674.P18018333099404562752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A064179 (n + 1)) (A327673 (A000096 n).toNat)

end

end A327674.P18018333099404562752

/-! ## A327674.P16436246886736986787

`A327673(A000096(n))^A282655(C(2, n+2))`
-/

namespace A327674.P16436246886736986787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327673 (A000096 n).toNat : ℚ) ^ (A282655 (Nat.choose 2 (n + 2)) : ℤ)

end

end A327674.P16436246886736986787

/-!
# A327675: Number of colored compositions of n using all colors of an initial interval of the color palette such that all parts have different color patterns and the patterns for parts i are sorted and have i colors (in arbitrary order).

The programs for A327675, there is no canonical definition to state claims against.
-/

/-! ## A327675.P5183354362160501291

`A324160(∑[∏[comp[n²]]])`
-/

namespace A327675.P5183354362160501291
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324160 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327675.P5183354362160501291

/-!
# A327676: Total number of colors in all colored compositions of n using all colors of an initial interval of the color palette such that all parts have different color patterns and the patterns for parts i are sorted and have i colors (in arbitrary order).

The programs for A327676, there is no canonical definition to state claims against.
-/

/-! ## A327676.P5110396556983529864

`A235487(n*A007559(n))`
-/

namespace A327676.P5110396556983529864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235487 ((n : ℤ) * A007559 n).toNat

end

end A327676.P5110396556983529864

/-!
# A327677: Number of colored compositions of n using all colors of an n-set such that any part i has a color pattern of i (distinct) colors in increasing order.

The programs for A327677, there is no canonical definition to state claims against.
-/

/-! ## A327677.P14719212022944861119

`A000262(n)-A054899(A064898(n))`
-/

namespace A327677.P14719212022944861119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000262 n - A054899 (A064898 n).toNat

end

end A327677.P14719212022944861119

/-! ## A327677.P9928402163410244340

`ceil(record[A275810(n+1)/12])`
-/

namespace A327677.P9928402163410244340
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275810 (n + 1) : ℚ) / 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A327677.P9928402163410244340

/-!
# A327678: Number of colored compositions of 2n using all colors of an n-set such that all parts have different color patterns and the patterns for parts i are sorted and have i colors (in arbitrary order).

The programs for A327678, there is no canonical definition to state claims against.
-/

/-! ## A327678.P17729355664905490722

`A327673(∑[4*n])`
-/

namespace A327678.P17729355664905490722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327678.P17729355664905490722

/-! ## A327678.P1389716195224386299

`A327673(A046092(n))^A178334(n)`
-/

namespace A327678.P1389716195224386299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327673 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A327678.P1389716195224386299

/-! ## A327678.P2828984068427440692

`gcd(A000038(n), A327673(A046092(n)))`
-/

namespace A327678.P2828984068427440692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A327673 (A046092 n).toNat)

end

end A327678.P2828984068427440692

/-! ## A327678.P3339381609929791128

`A327673(A046092(n))/gcd(n, A014963(n+1))`
-/

namespace A327678.P3339381609929791128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327673 (A046092 n).toNat : ℚ) / (Int.gcd (n : ℤ) (A014963 (n + 1)) : ℚ)

end

end A327678.P3339381609929791128

/-! ## A327678.P11736699782895337554

`A327673(A046092(n))/gcd(n+1, A000040(n+1))`
-/

namespace A327678.P11736699782895337554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327673 (A046092 n).toNat : ℚ) / (Int.gcd (n + 1 : ℤ) (A000040 (n + 1)) : ℚ)

end

end A327678.P11736699782895337554

/-!
# A327679: Number of colored integer partitions of n using all colors of an initial interval of the color palette such that parts i have distinct color patterns in arbitrary order and each pattern for a part i has i colors in (weakly) increasing order.

The programs for A327679, there is no canonical definition to state claims against.
-/

/-! ## A327679.P18157983101641066118

`Δ[A008612(∑[A221988(n)])]`
-/

namespace A327679.P18157983101641066118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A327679.P18157983101641066118

/-! ## A327679.P11467450035139103050

`A008612(xor(5, A221988(n+1)))`
-/

namespace A327679.P11467450035139103050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor 5 (A221988 (n + 1))).toNat

end

end A327679.P11467450035139103050

/-!
# A327681: Number of colored integer partitions of 2n using all colors of an n-set such that parts i have distinct color patterns in arbitrary order and each pattern for a part i has i colors in (weakly) increasing order.

The programs for A327681, there is no canonical definition to state claims against.
-/

/-! ## A327681.P17763014237464237128

`A309973(∑[4*n])`
-/

namespace A327681.P17763014237464237128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A327681.P17763014237464237128

/-! ## A327681.P12888936965471847643

`gcd(A000038(n), A309973(A046092(n)))`
-/

namespace A327681.P12888936965471847643
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A309973 (A046092 n).toNat)

end

end A327681.P12888936965471847643

/-! ## A327681.P10210340018782170988

`lcm(A020985(n), A309973(A046092(n)))`
-/

namespace A327681.P10210340018782170988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A309973 (A046092 n).toNat)

end

end A327681.P10210340018782170988

/-! ## A327681.P17783066463043827481

`A007318(C(2, n))*A309973(A046092(n))`
-/

namespace A327681.P17783066463043827481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A309973 (A046092 n).toNat

end

end A327681.P17783066463043827481

/-! ## A327681.P3211368284432695775

`A020639(2*(n+1))+A309973(A046092(n))-2`
-/

namespace A327681.P3211368284432695775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 1)) + (A309973 (A046092 n).toNat - 2)

end

end A327681.P3211368284432695775

/-!
# A327686: Expansion of Product_{k>=1} 1/(1 + x^k/(1 + x^(2*k)/(1 + x^(3*k)))).

The programs for A327686, there is no canonical definition to state claims against.
-/

/-! ## A327686.P11497184187047678862

`A000086(n+1)-A010051(A105754(n+1))`
-/

namespace A327686.P11497184187047678862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (n + 1) - A010051 (A105754 (n + 1)).toNat

end

end A327686.P11497184187047678862

/-! ## A327686.P13784244224976109038

`A049347(n)*A104124(A171842(n))`
-/

namespace A327686.P13784244224976109038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n * A104124 (A171842 n).toNat

end

end A327686.P13784244224976109038

/-! ## A327686.P13632919414990906158

`A256626(n)*A319993(A286640(n))`
-/

namespace A327686.P13632919414990906158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256626 n * A319993 (A286640 n).toNat

end

end A327686.P13632919414990906158

/-! ## A327686.P11598831902745776700

`A135211(n)%A222601(A222602(n))`
-/

namespace A327686.P11598831902745776700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135211 n) (A222601 (A222602 n).toNat)

end

end A327686.P11598831902745776700

/-! ## A327686.P14421076098559913882

`A033630(n)-A327522(A320629(n+1))`
-/

namespace A327686.P14421076098559913882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 n - A327522 (A320629 (n + 1)).toNat

end

end A327686.P14421076098559913882

/-!
# A327687: Partial sums of Pisano periods (A001175).

The programs for A327687, there is no canonical definition to state claims against.
-/

/-! ## A327687.P5424776227669961836

`∑[A001175(n+1)]`
-/

namespace A327687.P5424776227669961836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327687.P5424776227669961836

/-! ## A327687.P3660356884665413157

`∑[abs(1-A096982(n+1))]`
-/

namespace A327687.P3660356884665413157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A096982 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327687.P3660356884665413157

/-! ## A327687.P9322289582951588621

`A001175(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A327687.P9322289582951588621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001175 (n + 1) + a (A023443 n).toNat

end

end A327687.P9322289582951588621

/-! ## A327687.P3288581468624104759

`∑[A001176(n+1)*A001177(n+1)]`
-/

namespace A327687.P3288581468624104759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001176 (n + 1) * A001177 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327687.P3288581468624104759

/-! ## A327687.P13233354118673411646

`∑[A237836(n+1)/A237517(n+1)]`
-/

namespace A327687.P13233354118673411646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237836 (n + 1) : ℚ) / (A237517 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327687.P13233354118673411646

/-! ## A327687.P15764502728821368844

`∑[lcm(A001177(n+1), A106291(n+1))]`
-/

namespace A327687.P15764502728821368844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001177 (n + 1)) (A106291 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327687.P15764502728821368844

/-! ## A327687.P17928501109761186729

`a(n-1)+A001175(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A327687.P17928501109761186729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001175 (n + 1) + A000038 n)

end

end A327687.P17928501109761186729

/-! ## A327687.P4038796481320399562

`a(n-1)+A281230(n+1)+A281230(n+1)` with `a(0)=1, a(1)=4`
-/

namespace A327687.P4038796481320399562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + (A281230 (n + 1) + A281230 (n + 1))

end

end A327687.P4038796481320399562

/-! ## A327687.P4204504879739313495

`∑[A376082(2*(n+1))]`
-/

namespace A327687.P4204504879739313495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376082 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A327687.P4204504879739313495

/-! ## A327687.P2023464690964021570

`A028310(a(n-1))+A001175(n+1)` with `a(0)=1`
-/

namespace A327687.P2023464690964021570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028310 (a (n - 1)).toNat + A001175 (n + 1)

end

end A327687.P2023464690964021570

/-!
# A327690: Expansion of Product_{k>=1} B(x^k), where B(x) is the g.f. of A003114.

The programs for A327690, there is no canonical definition to state claims against.
-/

/-! ## A327690.P10770381686257192164

`A182269(n)-A178798(A039900(n))`
-/

namespace A327690.P10770381686257192164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182269 n - A178798 (A039900 n).toNat

end

end A327690.P10770381686257192164

/-! ## A327690.P4486310142331063394

`A182269(n)-A072401(A316961(n))`
-/

namespace A327690.P4486310142331063394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182269 n - A072401 (A316961 n).toNat

end

end A327690.P4486310142331063394

/-! ## A327690.P1093363553986028173

`A182269(n)-A178798(A326978(n))`
-/

namespace A327690.P1093363553986028173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182269 n - A178798 (A326978 n).toNat

end

end A327690.P1093363553986028173

/-! ## A327690.P134820017708227753

`A182269(n)-A353812(A202842(n+4))`
-/

namespace A327690.P134820017708227753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182269 n - A353812 (A202842 (n + 4)).toNat

end

end A327690.P134820017708227753

/-! ## A327690.P1114915713503213664

`A182269(n)-A185284(3*n+2)`
-/

namespace A327690.P1114915713503213664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182269 n - A185284 (3 * n + 2)

end

end A327690.P1114915713503213664

/-!
# A327691: Expansion of Product_{k>=1} B(x^k), where B(x) is the g.f. of A003106.

The programs for A327691, there is no canonical definition to state claims against.
-/

/-! ## A327691.P6403007264651879335

`A101707(n)+A003849(A079583(n))`
-/

namespace A327691.P6403007264651879335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101707 n + A003849 (A079583 n).toNat

end

end A327691.P6403007264651879335

/-! ## A327691.P17024328892190462689

`A101707(n)+A071030(A194615(n+1))`
-/

namespace A327691.P17024328892190462689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101707 n + A071030 (A194615 (n + 1)).toNat

end

end A327691.P17024328892190462689

/-! ## A327691.P9201180988133356282

`A032741(2^A339241(n))+A002264(A002865(n))`
-/

namespace A327691.P9201180988133356282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A339241 n : ℤ))).toNat + A002264 (A002865 n).toNat

end

end A327691.P9201180988133356282

/-! ## A327691.P5901144372307110209

`A002264(A002865(n))+A339241(n)^A055963(n)!`
-/

namespace A327691.P5901144372307110209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002865 n).toNat + A339241 n ^ Nat.factorial (A055963 n).toNat

end

end A327691.P5901144372307110209

/-!
# A327692: Number of length-n phone numbers that can be dialed by a chess knight on a 0-9 keypad that starts on any number and takes n-1 steps.

The programs for A327692, the canonical program `A327692.P8258771794969663190` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A327692 has offset 1).

The definition of A327692 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A327692.P8258771794969663190

`6*a(n-2)-4*a(n-4)` with `a(0)=10, a(1)=20, a(2)=46, a(3)=104, a(4)=240`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A327692

/-- `6*a(n-2)-4*a(n-4)` -/
def P8258771794969663190.Spec : Prop :=
  ∀ n, P8258771794969663190.a n = A327692 (n + 1)

theorem P8258771794969663190.correct : P8258771794969663190.Spec := by
  intro n
  simp only [A327692, Nat.add_sub_cancel]

end A327692

/-! ## A327692.P14038032170916728908

`2*floor(ϕ²*a(n-2))` with `a(0)=10, a(1)=20, a(2)=46`
-/

namespace A327692.P14038032170916728908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 20, 46] fun n a =>
  2 * ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋

end

end A327692.P14038032170916728908

namespace A327692

/-- `2*floor(ϕ²*a(n-2))` -/
def P14038032170916728908.Spec : Prop :=
  ∀ n, P14038032170916728908.a n = A327692 (n + 1)

end A327692

/-! ## A327692.P1652476936202773583

`floor(2*(ϕ+1)*a(n-2))` with `a(0)=10, a(1)=20, a(2)=46`
-/

namespace A327692.P1652476936202773583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10, 20, 46] fun n a =>
  ⌊2 * ((Real.goldenRatio + 1) * (a (n - 2) : ℝ))⌋

end

end A327692.P1652476936202773583

namespace A327692

/-- `floor(2*(ϕ+1)*a(n-2))` -/
def P1652476936202773583.Spec : Prop :=
  ∀ n, P1652476936202773583.a n = A327692 (n + 1)

end A327692

/-!
# A327693: Triangle read by rows: T(n,k) is the number of n-bead necklace structures which are not self-equivalent under a nonzero rotation using exactly k different colored beads.

The programs for A327693, there is no canonical definition to state claims against.
-/

/-! ## A327693.P4050868990032032396

`round(A319562(A158117(n))/(n+2))`
-/

namespace A327693.P4050868990032032396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319562 (A158117 n).toNat : ℚ) / (n + 2 : ℚ))

end

end A327693.P4050868990032032396

/-! ## A327693.P9015056715351717926

`A122922(A288108(n)+A201637(n))`
-/

namespace A327693.P9015056715351717926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A288108 n + A201637 n).toNat

end

end A327693.P9015056715351717926

/-! ## A327693.P11064940429352643577

`A156246(n+2)%A156260(A156233(n))`
-/

namespace A327693.P11064940429352643577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156246 (n + 2)) (A156260 (A156233 n).toNat)

end

end A327693.P11064940429352643577

/-! ## A327693.P3717710539960120916

`A032089(A026736(n)%A173063(n+1)+1)`
-/

namespace A327693.P3717710539960120916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032089 (Int.tmod (A026736 n) (A173063 (n + 1)) + 1).toNat

end

end A327693.P3717710539960120916

/-! ## A327693.P10663195322051758072

`A156250(3*n+4)%A156260(A156233(n))`
-/

namespace A327693.P10663195322051758072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156250 (3 * n + 4)) (A156260 (A156233 n).toNat)

end

end A327693.P10663195322051758072

/-!
# A327695: Number of non-constant factorizations of n whose distinct factors are pairwise coprime.

The programs for A327695, there is no canonical definition to state claims against.
-/

/-! ## A327695.P1788204119703672344

`A327399(n+1)-A089723(n+1)`
-/

namespace A327695.P1788204119703672344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327399 (n + 1) - A089723 (n + 1)

end

end A327695.P1788204119703672344

/-! ## A327695.P14068367099745412707

`A328803(∑{e}[n+1, #]!/∏{e}[n+1, #!])`
-/

namespace A327695.P14068367099745412707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328803 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat

end

end A327695.P14068367099745412707

/-! ## A327695.P3593391259430691761

`A065361(∑{e}[n+1, #]!/∏{e}[n+1, #!]-1)`
-/

namespace A327695.P3593391259430691761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - 1)).toNat

end

end A327695.P3593391259430691761

/-! ## A327695.P15473979705493463601

`A154726(∑{e}[n+1, #]!/∏{e}[n+1, #!])-1`
-/

namespace A327695.P15473979705493463601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154726 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat - 1

end

end A327695.P15473979705493463601

/-! ## A327695.P7290311562195963194

`val(A353503(∑{e}[n+1, #]!/∏{e}[n+1, #!]), 2)`
-/

namespace A327695.P7290311562195963194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A353503 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ))).toNat).toNat 2

end

end A327695.P7290311562195963194

/-! ## A327695.P2855246080115388644

`∑{e}[A133808(∑{e}[n+1, #]!/∏{e}[n+1, #!]), #]`
-/

namespace A327695.P2855246080115388644
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133808 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A327695.P2855246080115388644

/-! ## A327695.P8683306887508928250

`∑{e}[A229046(∑{e}[n+1, #]!/∏{e}[n+1, #!]), #]`
-/

namespace A327695.P8683306887508928250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229046 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorial (Nat.factorization (f3 n) p) : ℕ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A327695.P8683306887508928250

/-! ## A327695.P15769744958383067301

`and(7, A007089(∑{e}[n+1, #]!/∏{e}[n+1, #!]-1))`
-/

namespace A327695.P15769744958383067301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A007089 (SequenceMachineLib.roundAway ((Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorial (Nat.factorization (f2 n) p) : ℕ) : ℚ) - 1)).toNat)

end

end A327695.P15769744958383067301

/-! ## A327695.P17226735992815806172

`A219966(A016002(n+1))`
-/

namespace A327695.P17226735992815806172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219966 (A016002 (n + 1)).toNat

end

end A327695.P17226735992815806172

/-! ## A327695.P16250547054265588179

`A065361(A008480(n+1)-1)`
-/

namespace A327695.P16250547054265588179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065361 (A008480 (n + 1) - 1).toNat

end

end A327695.P16250547054265588179

/-!
# A327696: Number of n-bead necklace structures using an infinite alphabet that are not self-equivalent under a nonzero rotation.

The programs for A327696, there is no canonical definition to state claims against.
-/

/-! ## A327696.P4780260598359986737

`A328743(n)+A159632(A320644(n+1)+1)`
-/

namespace A327696.P4780260598359986737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328743 n + A159632 (A320644 (n + 1) + 1).toNat

end

end A327696.P4780260598359986737

/-!
# A327697: Number of refinement sequences n -> ... -> {1}^n, where in each step every single part of a nonempty selection of parts is replaced by a partition of itself into smaller parts (in weakly decreasing order).

The programs for A327697, there is no canonical definition to state claims against.
-/

/-! ## A327697.P8386562042645054946

`ceil(A327644(n+1)/2)`
-/

namespace A327697.P8386562042645054946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A327644 (n + 1) : ℚ) / 2⌉

end

end A327697.P8386562042645054946

/-! ## A327697.P1760726454879008198

`A327644(A028310(n)+1)/2`
-/

namespace A327697.P1760726454879008198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327644 (A028310 n + 1).toNat : ℚ) / 2

end

end A327697.P1760726454879008198

/-! ## A327697.P5851678595695690287

`A327644(n+1)/A000122(n²)`
-/

namespace A327697.P5851678595695690287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327644 (n + 1) : ℚ) / (A000122 (n ^ 2) : ℚ)

end

end A327697.P5851678595695690287

/-! ## A327697.P5759316436206139219

`A327644(n+1)/A020639(A008458(n))`
-/

namespace A327697.P5759316436206139219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327644 (n + 1) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A327697.P5759316436206139219

/-! ## A327697.P3304147529185046605

`A327644(n+1)/A014963(A137688(n))`
-/

namespace A327697.P3304147529185046605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327644 (n + 1) : ℚ) / (A014963 (A137688 n).toNat : ℚ)

end

end A327697.P3304147529185046605

/-!
# A327698: Number of refinement sequences n -> ... -> {1}^n, where in each step exactly one part is replaced by a partition of itself into smaller parts (in weakly decreasing order).

The programs for A327698, there is no canonical definition to state claims against.
-/

/-! ## A327698.P14607883099191686369

`∑[A262689(A301334(n))]-n`
-/

namespace A327698.P14607883099191686369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262689 (A301334 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A327698.P14607883099191686369

/-! ## A327698.P2058132361295333838

`xor(A020639(A224788(n)), A268214(n))`
-/

namespace A327698.P2058132361295333838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020639 (A224788 n).toNat) (A268214 n)

end

end A327698.P2058132361295333838

/-!
# A327699: Number of refinement sequences n -> ... -> {1}^n, where in each step every single part of a nonempty selection of parts is replaced by a partition of itself into two smaller parts (in weakly decreasing order).

The programs for A327699, there is no canonical definition to state claims against.
-/

/-! ## A327699.P7588887737848539367

`A319320(A292037(n+1))`
-/

namespace A327699.P7588887737848539367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319320 (A292037 (n + 1)).toNat

end

end A327699.P7588887737848539367

/-! ## A327699.P2729428385403482533

`A356799(∑[A185134(n)]+2)`
-/

namespace A327699.P2729428385403482533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356799 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A327699.P2729428385403482533

/-! ## A327699.P1610664940286890032

`A008612(xor(1, A296530(2*(n+1))))`
-/

namespace A327699.P1610664940286890032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (Int.xor 1 (A296530 (2 * (n + 1)))).toNat

end

end A327699.P1610664940286890032

