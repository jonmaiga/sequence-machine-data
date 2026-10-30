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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A141000: Numbers k for which there is a solution to the Jumping Grasshopper game.

The programs for A141000, the canonical program `A141000.P6914305428412330423` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141000 has offset 1).

The definition of A141000 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141000.P10699251339508730595

`ogf((x+3x^2+4x^3+x^4-2x^5-2x^7-x^8)/(1-x-x^2+x^3))`
-/

namespace A141000.P10699251339508730595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3, 4, 1, -2, 0, -2, -1] [1, -1, -1, 1] n

end

end A141000.P10699251339508730595

namespace A141000

/-- `ogf((x+3x^2+4x^3+x^4-2x^5-2x^7-x^8)/(1-x-x^2+x^3))` -/
def P10699251339508730595.Spec : Prop :=
  ∀ n, P10699251339508730595.a n = A141000 (n + 1)

end A141000

/-! ## A141000.P6914305428412330423

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=13, a(5)=16, a(6)=20, a(7)=21, a(8)=24`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141000

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P6914305428412330423.Spec : Prop :=
  ∀ n, P6914305428412330423.a n = A141000 (n + 1)

theorem P6914305428412330423.correct : P6914305428412330423.Spec := by
  intro n
  simp only [A141000, Nat.add_sub_cancel]

end A141000

/-! ## A141000.P17740309751478462486

`record[(A017017(n)%A003485(n))%A175840(n)]`
-/

namespace A141000.P17740309751478462486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A017017 n) (A003485 n)) (A175840 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141000.P17740309751478462486

namespace A141000

/-- `record[(A017017(n)%A003485(n))%A175840(n)]` -/
def P17740309751478462486.Spec : Prop :=
  ∀ n, P17740309751478462486.a n = A141000 (n + 1)

end A141000

/-! ## A141000.P14368336765326081189

`lt[A064692(A055053(n+1)), A029838(n)]`
-/

namespace A141000.P14368336765326081189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A055053 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141000.P14368336765326081189

namespace A141000

/-- `lt[A064692(A055053(n+1)), A029838(n)]` -/
def P14368336765326081189.Spec : Prop :=
  ∀ n, (P14368336765326081189.a n : ℤ) = A141000 (n + 1)

end A141000

/-! ## A141000.P13925208414317970129

`lt[A263571(n+1), A029838(n)+A000122(n)]`
-/

namespace A141000.P13925208414317970129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029838 n + A000122 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141000.P13925208414317970129

namespace A141000

/-- `lt[A263571(n+1), A029838(n)+A000122(n)]` -/
def P13925208414317970129.Spec : Prop :=
  ∀ n, (P13925208414317970129.a n : ℤ) = A141000 (n + 1)

end A141000

/-! ## A141000.P8638701070135082972

`record[comp[or(2, n)]%A316152(n+1)]`
-/

namespace A141000.P8638701070135082972
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) (A316152 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141000.P8638701070135082972

namespace A141000

/-- `record[comp[or(2, n)]%A316152(n+1)]` -/
def P8638701070135082972.Spec : Prop :=
  ∀ n, P8638701070135082972.a n = A141000 (n + 1)

end A141000

/-! ## A141000.P2718291126531050694

`record[A042948(n)%A316150(n+1)]`
-/

namespace A141000.P2718291126531050694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042948 n) (A316150 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141000.P2718291126531050694

namespace A141000

/-- `record[A042948(n)%A316150(n+1)]` -/
def P2718291126531050694.Spec : Prop :=
  ∀ n, P2718291126531050694.a n = A141000 (n + 1)

end A141000

/-!
# A141001: a(n) = number of different landings of a grasshopper after n hops.

The programs for A141001, the canonical program `A141001.P9726523319809603701` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141001 has offset 0).

The definition of A141001 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141001.P9726523319809603701

`ogf((1-2x+2x^2-x^3+x^5+x^6-x^7+2x^8-2x^9-x^12+x^13)/(1-3x+4x^2-4x^3+3x^4-x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141001

/-- `ogf((1-2x+2x^2-x^3+x^5+x^6-x^7+2x^8-2x^9-x^12+x^13)/(1-3x+4x^2-4x^3+3x^4-x^5))` -/
def P9726523319809603701.Spec : Prop :=
  ∀ n, P9726523319809603701.a n = A141001 n

theorem P9726523319809603701.correct : P9726523319809603701.Spec := by
  intro n
  simp only [A141001]

end A141001

/-!
# A141002: a(n) = total number of different ways a grasshopper can take n hops.

The programs for A141002, there is no canonical definition to state claims against.
-/

/-! ## A141002.P15258327405477696210

`A071626(A214198(n)+2)`
-/

namespace A141002.P15258327405477696210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A214198 n + 2).toNat

end

end A141002.P15258327405477696210

/-! ## A141002.P8492872905857545456

`A135664(3*A000625(n))`
-/

namespace A141002.P8492872905857545456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (3 * A000625 n).toNat

end

end A141002.P8492872905857545456

/-! ## A141002.P12421148249229916280

`A135664(lcm(3, A000625(n)))`
-/

namespace A141002.P12421148249229916280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (Int.lcm 3 (A000625 n))

end

end A141002.P12421148249229916280

/-! ## A141002.P6241324811892224458

`A135660(A183389(n+1)+3)`
-/

namespace A141002.P6241324811892224458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A183389 (n + 1) + 3).toNat

end

end A141002.P6241324811892224458

/-! ## A141002.P5689939645356809752

`A000196(A316078(3*(n+1)))`
-/

namespace A141002.P5689939645356809752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A316078 (3 * (n + 1))).toNat

end

end A141002.P5689939645356809752

/-!
# A141003: Expansion of e.g.f. exp(Sum_{d|M} (exp(d*x)-1)/d), M=4.

The programs for A141003, there is no canonical definition to state claims against.
-/

/-! ## A141003.P5248033469791317980

`A162663(∑[n+3]+n+3)`
-/

namespace A141003.P5248033469791317980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A141003.P5248033469791317980

/-! ## A141003.P11980361041203626294

`record[gcd(A162663(n), A261764(n+4))]`
-/

namespace A141003.P11980361041203626294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A162663 n) (A261764 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141003.P11980361041203626294

/-! ## A141003.P4158489160876037179

`abs(1-A162663(A046691(2+n)))+1`
-/

namespace A141003.P4158489160876037179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A162663 (A046691 (2 + n)).toNat| + 1

end

end A141003.P4158489160876037179

/-! ## A141003.P12624581750764549826

`record[A162663(A046691(A141256(n)))]`
-/

namespace A141003.P12624581750764549826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A046691 (A141256 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141003.P12624581750764549826

/-! ## A141003.P2973042582526427758

`1-(A001222(A086472(n+1))-A162663(A046691(n+2)))`
-/

namespace A141003.P2973042582526427758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A001222 (A086472 (n + 1)).toNat - A162663 (A046691 (n + 2)).toNat)

end

end A141003.P2973042582526427758

/-!
# A141004: Expansion of e.g.f. exp(Sum_{d|6} (exp(d*x)-1)/d).

The programs for A141004, there is no canonical definition to state claims against.
-/

/-! ## A141004.P14106844320172467983

`A162663(A055999(n+3))`
-/

namespace A141004.P14106844320172467983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A055999 (n + 3)).toNat

end

end A141004.P14106844320172467983

/-! ## A141004.P13074323872499436457

`A162663(eq[5, A025581(n)])`
-/

namespace A141004.P13074323872499436457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141004.P13074323872499436457

/-! ## A141004.P1434834173104798422

`A162663(eq[11, A099375(n)])`
-/

namespace A141004.P1434834173104798422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141004.P1434834173104798422

/-! ## A141004.P15533380339379379952

`A162663(Δ[A023551(n+1)])`
-/

namespace A141004.P15533380339379379952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (f1 (n + 1) - f1 n).toNat

end

end A141004.P15533380339379379952

/-! ## A141004.P4191911739125794867

`A162663(A046691(n+4)-2)`
-/

namespace A141004.P4191911739125794867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A046691 (n + 4) - 2).toNat

end

end A141004.P4191911739125794867

/-! ## A141004.P9018693661975235775

`A162663(eq[6, A004736(n+1)])`
-/

namespace A141004.P9018693661975235775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141004.P9018693661975235775

/-!
# A141005: E.g.f. exp(sum_{d|M} (exp(d*x)-1)/d), M=8.

The programs for A141005, there is no canonical definition to state claims against.
-/

/-! ## A141005.P5110604150794512181

`A162663(eq[7, A025581(n)])`
-/

namespace A141005.P5110604150794512181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141005.P5110604150794512181

/-! ## A141005.P5923984928812249423

`A162663(eq[8, A193739(n)])`
-/

namespace A141005.P5923984928812249423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141005.P5923984928812249423

/-! ## A141005.P2930867343624198009

`A162663(eq[15, A099375(n)])`
-/

namespace A141005.P2930867343624198009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141005.P2930867343624198009

/-! ## A141005.P7171018468144103733

`A162663(eq[5, A243070(n+1)])`
-/

namespace A141005.P7171018468144103733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141005.P7171018468144103733

/-! ## A141005.P2400335213260290180

`A162663(eq[8, A004736(n+1)])`
-/

namespace A141005.P2400335213260290180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141005.P2400335213260290180

/-!
# A141006: E.g.f. exp(sum_{d|M} (exp(d*x)-1)/d), M=9.

The programs for A141006, there is no canonical definition to state claims against.
-/

/-! ## A141006.P4670665011015910731

`A162663(eq[7, A116598(n)])`
-/

namespace A141006.P4670665011015910731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141006.P4670665011015910731

/-! ## A141006.P5815851769451800964

`A162663(eq[8, A025581(n)])`
-/

namespace A141006.P5815851769451800964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141006.P5815851769451800964

/-! ## A141006.P11666553639902824971

`A162663(eq[9, A193739(n)])`
-/

namespace A141006.P11666553639902824971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141006.P11666553639902824971

/-! ## A141006.P6543366007376356344

`A162663(A000217(n+9)-9)`
-/

namespace A141006.P6543366007376356344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A000217 (n + 9) - 9).toNat

end

end A141006.P6543366007376356344

/-! ## A141006.P14326964382459134115

`A162663(eq[9, A004736(n+1)])`
-/

namespace A141006.P14326964382459134115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141006.P14326964382459134115

/-!
# A141007: E.g.f. exp(sum_{d|M} (exp(d*x)-1)/d), M=10.

The programs for A141007, there is no canonical definition to state claims against.
-/

/-! ## A141007.P2253112254834761628

`A162663(A056000(n+6))`
-/

namespace A141007.P2253112254834761628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A056000 (n + 6)).toNat

end

end A141007.P2253112254834761628

/-! ## A141007.P7512620644811578681

`A162663(eq[8, A116598(n)])`
-/

namespace A141007.P7512620644811578681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141007.P7512620644811578681

/-! ## A141007.P13441204353150768045

`A162663(eq[9, A025581(n)])`
-/

namespace A141007.P13441204353150768045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141007.P13441204353150768045

/-! ## A141007.P3841835621061453961

`A162663(eq[10, A193739(n)])`
-/

namespace A141007.P3841835621061453961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141007.P3841835621061453961

/-! ## A141007.P7941800758551711825

`A162663(eq[10, A004736(n+1)])`
-/

namespace A141007.P7941800758551711825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141007.P7941800758551711825

/-!
# A141008: E.g.f. exp(sum_{d|M} (exp(d*x)-1)/d), M=12.

The programs for A141008, there is no canonical definition to state claims against.
-/

/-! ## A141008.P313921075220364774

`A162663(eq[11, A025581(n)])`
-/

namespace A141008.P313921075220364774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141008.P313921075220364774

/-! ## A141008.P13706003740640605356

`A162663(eq[12, A193739(n)])`
-/

namespace A141008.P13706003740640605356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141008.P13706003740640605356

/-! ## A141008.P16722833398505105933

`A162663(eq[12, A195663(n)])`
-/

namespace A141008.P16722833398505105933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141008.P16722833398505105933

/-! ## A141008.P11889638310695271372

`A162663(eq[23, A099375(n)])`
-/

namespace A141008.P11889638310695271372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141008.P11889638310695271372

/-! ## A141008.P12678766794141921816

`A162663(eq[12, A004736(n+1)])`
-/

namespace A141008.P12678766794141921816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141008.P12678766794141921816

/-!
# A141009: E.g.f. exp(Sum_{d|M} (exp(d*x)-1)/d), M=13.

The programs for A141009, there is no canonical definition to state claims against.
-/

/-! ## A141009.P804769879101557297

`A162663(eq[12, A025581(n)])`
-/

namespace A141009.P804769879101557297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141009.P804769879101557297

/-! ## A141009.P17382625063408265352

`A162663(eq[13, A193739(n)])`
-/

namespace A141009.P17382625063408265352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141009.P17382625063408265352

/-! ## A141009.P11640191717660996200

`A162663(eq[13, A195663(n)])`
-/

namespace A141009.P11640191717660996200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141009.P11640191717660996200

/-! ## A141009.P6023926473648150001

`A162663(A055999(n+10)-7)`
-/

namespace A141009.P6023926473648150001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (A055999 (n + 10) - 7).toNat

end

end A141009.P6023926473648150001

/-! ## A141009.P10267736695253627718

`A162663(eq[13, A004736(n+1)])`
-/

namespace A141009.P10267736695253627718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141009.P10267736695253627718

/-!
# A141010: E.g.f. exp(sum_{d|M} (exp(d*x)-1)/d), M=14.

The programs for A141010, there is no canonical definition to state claims against.
-/

/-! ## A141010.P5983796422189732494

`A162663(eq[13, A025581(n)])`
-/

namespace A141010.P5983796422189732494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141010.P5983796422189732494

/-! ## A141010.P18180548132350687584

`A162663(eq[14, A193739(n)])`
-/

namespace A141010.P18180548132350687584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141010.P18180548132350687584

/-! ## A141010.P2837930717249881620

`A162663(eq[14, A195663(n)])`
-/

namespace A141010.P2837930717249881620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141010.P2837930717249881620

/-! ## A141010.P4180892269180711453

`A162663(eq[27, A099375(n)])`
-/

namespace A141010.P4180892269180711453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141010.P4180892269180711453

/-! ## A141010.P760130408493142208

`A162663(eq[14, A004736(n+1)])`
-/

namespace A141010.P760130408493142208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141010.P760130408493142208

/-!
# A141011: E.g.f. exp(sum_{d|M} (exp(d*x)-1)/d), M=15.

The programs for A141011, there is no canonical definition to state claims against.
-/

/-! ## A141011.P2597952139860123606

`A162663(eq[14, A025581(n)])`
-/

namespace A141011.P2597952139860123606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141011.P2597952139860123606

/-! ## A141011.P5150078375443193706

`A162663(eq[15, A193739(n)])`
-/

namespace A141011.P5150078375443193706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141011.P5150078375443193706

/-! ## A141011.P11842272863801640848

`A162663(eq[15, A195663(n)])`
-/

namespace A141011.P11842272863801640848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141011.P11842272863801640848

/-! ## A141011.P4041993249430784970

`A162663(eq[29, A099375(n)])`
-/

namespace A141011.P4041993249430784970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141011.P4041993249430784970

/-! ## A141011.P5654281321731184865

`A162663(eq[15, A004736(n+1)])`
-/

namespace A141011.P5654281321731184865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162663 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141011.P5654281321731184865

/-!
# A141012: a(0) = 0, a(n) = 13^(n-1) + 1.

The programs for A141012, the canonical program `A141012.P16176070027898385136` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141012 has offset 0).

The definition of A141012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141012.P11358401395037750551

`ogf((2x-14x^2)/(1-14x+13x^2))`
-/

namespace A141012.P11358401395037750551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, -14] [1, -14, 13] n

end

end A141012.P11358401395037750551

namespace A141012

/-- `ogf((2x-14x^2)/(1-14x+13x^2))` -/
def P11358401395037750551.Spec : Prop :=
  ∀ n, P11358401395037750551.a n = A141012 n

end A141012

/-! ## A141012.P16176070027898385136

`13*a(n-1)-12` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141012

/-- `13*a(n-1)-12` -/
def P16176070027898385136.Spec : Prop :=
  ∀ n, P16176070027898385136.a n = A141012 n

theorem P16176070027898385136.correct : P16176070027898385136.Spec := by
  intro n
  simp only [A141012]

end A141012

/-! ## A141012.P9917225534181767021

`A057427(n)*A072390(A161680(n))`
-/

namespace A141012.P9917225534181767021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A072390 (A161680 n).toNat

end

end A141012.P9917225534181767021

namespace A141012

/-- `A057427(n)*A072390(A161680(n))` -/
def P9917225534181767021.Spec : Prop :=
  ∀ n, P9917225534181767021.a n = A141012 n

end A141012

/-! ## A141012.P15563786730573375668

`A072390(A161680(n))*A178334(n)`
-/

namespace A141012.P15563786730573375668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072390 (A161680 n).toNat * A178334 n

end

end A141012.P15563786730573375668

namespace A141012

/-- `A072390(A161680(n))*A178334(n)` -/
def P15563786730573375668.Spec : Prop :=
  ∀ n, P15563786730573375668.a n = A141012 n

end A141012

/-! ## A141012.P10534686460822839997

`A000035(A124661(n+1))*A072390(A161680(n))`
-/

namespace A141012.P10534686460822839997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A124661 (n + 1)).toNat * A072390 (A161680 n).toNat

end

end A141012.P10534686460822839997

namespace A141012

/-- `A000035(A124661(n+1))*A072390(A161680(n))` -/
def P10534686460822839997.Spec : Prop :=
  ∀ n, P10534686460822839997.a n = A141012 n

end A141012

/-!
# A141013: E.g.f. Sum_{d|M} (exp(d*x)-1)/d, M=14.

The programs for A141013, there is no canonical definition to state claims against.
-/

/-! ## A141013.P736672123969151852

`A050168(n)*A098189(7^n)`
-/

namespace A141013.P736672123969151852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n * A098189 (7 ^ n)

end

end A141013.P736672123969151852

/-!
# A141014: E.g.f. Sum_{d|M} (exp(d*x)-1)/d, M=15.

The programs for A141014, there is no canonical definition to state claims against.
-/

/-! ## A141014.P5830578159496855941

`A291656(A167614(n+1))+A178334(n)`
-/

namespace A141014.P5830578159496855941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A167614 (n + 1)).toNat + A178334 n

end

end A141014.P5830578159496855941

/-! ## A141014.P17754032546708584131

`A291656(A167614(n+1))-A057428(n)`
-/

namespace A141014.P17754032546708584131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A167614 (n + 1)).toNat - A057428 n

end

end A141014.P17754032546708584131

/-! ## A141014.P5790872337273988069

`A291656(A167614(n+1))+A291656(A000124(n))`
-/

namespace A141014.P5790872337273988069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A167614 (n + 1)).toNat + A291656 (A000124 n).toNat

end

end A141014.P5790872337273988069

/-! ## A141014.P2201816022082607207

`A291656(A167614(n+1))+A001221(A001222(n+1)+1)`
-/

namespace A141014.P2201816022082607207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A167614 (n + 1)).toNat + A001221 (A001222 (n + 1) + 1).toNat

end

end A141014.P2201816022082607207

/-! ## A141014.P7684010268199963217

`A291656(A167614(n+1))+A001221(A064289(2*n+1))`
-/

namespace A141014.P7684010268199963217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291656 (A167614 (n + 1)).toNat + A001221 (A064289 (2 * n + 1)).toNat

end

end A141014.P7684010268199963217

/-!
# A141015: a(0) = 0, a(1) = 1, a(2) = 2; for n > 2, a(n) = a(n-1) + 2*a(n-2) + a(n-3).

The programs for A141015, the canonical program `A141015.P2955004518225902035` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141015 has offset 0).

The definition of A141015 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)` (program `A141015.P2955004518225902035`, by `A141015.P2955004518225902035.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141015.P12789022142218856332

`ogf((x+x^2)/(1-x-2x^2-x^3))`
-/

namespace A141015.P12789022142218856332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -1, -2, -1] n

end

end A141015.P12789022142218856332

namespace A141015

/-- `ogf((x+x^2)/(1-x-2x^2-x^3))` -/
def P12789022142218856332.Spec : Prop :=
  ∀ n, P12789022142218856332.a n = A141015 n

end A141015

/-! ## A141015.P2955004518225902035

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141015

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P2955004518225902035.Spec : Prop :=
  ∀ n, (P2955004518225902035.a n : ℤ) = A141015 n

theorem P2955004518225902035.correct : P2955004518225902035.Spec := by
  intro n
  simp only [A141015]

end A141015

/-! ## A141015.P17968723557765106269

`record[-(a(n-3)+a(n-1))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A141015.P17968723557765106269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  -(f1 (n - 3) + f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141015.P17968723557765106269

namespace A141015

/-- `record[-(a(n-3)+a(n-1))]` -/
def P17968723557765106269.Spec : Prop :=
  ∀ n, P17968723557765106269.a n = A141015 n

end A141015

/-! ## A141015.P5418365432226212586

`a(n-1)+a(n-2)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A141015.P5418365432226212586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) + a (n - 3)))

end

end A141015.P5418365432226212586

namespace A141015

/-- `a(n-1)+a(n-2)+a(n-2)+a(n-3)` -/
def P5418365432226212586.Spec : Prop :=
  ∀ n, (P5418365432226212586.a n : ℤ) = A141015 n

theorem P5418365432226212586.correct : P5418365432226212586.Spec := by
  intro n
  simp only [A141015, Nat.add_sub_cancel, A141015.P5418365432226212586.a, A141015.P2955004518225902035.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141015

/-! ## A141015.P9266088946621839131

`A142474(n+2)`
-/

namespace A141015.P9266088946621839131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142474 (n + 2)

end

end A141015.P9266088946621839131

namespace A141015

/-- `A142474(n+2)` -/
def P9266088946621839131.Spec : Prop :=
  ∀ n, P9266088946621839131.a n = A141015 n

end A141015

/-! ## A141015.P11155403384288017557

`∑[A226916(4*n)]`
-/

namespace A141015.P11155403384288017557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141015.P11155403384288017557

namespace A141015

/-- `∑[A226916(4*n)]` -/
def P11155403384288017557.Spec : Prop :=
  ∀ n, P11155403384288017557.a n = A141015 n

end A141015

/-! ## A141015.P12605283393147936588

`A078012(2*(n+1))`
-/

namespace A141015.P12605283393147936588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 (2 * (n + 1))

end

end A141015.P12605283393147936588

namespace A141015

/-- `A078012(2*(n+1))` -/
def P12605283393147936588.Spec : Prop :=
  ∀ n, P12605283393147936588.a n = A141015 n

end A141015

/-! ## A141015.P3835395961570487933

`A135851(2*(n+2))`
-/

namespace A141015.P3835395961570487933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135851 (2 * (n + 2))

end

end A141015.P3835395961570487933

namespace A141015

/-- `A135851(2*(n+2))` -/
def P3835395961570487933.Spec : Prop :=
  ∀ n, P3835395961570487933.a n = A141015 n

end A141015

/-! ## A141015.P1320561854788515541

`record[and(1, n)*A000930(n)]`
-/

namespace A141015.P1320561854788515541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141015.P1320561854788515541

namespace A141015

/-- `record[and(1, n)*A000930(n)]` -/
def P1320561854788515541.Spec : Prop :=
  ∀ n, P1320561854788515541.a n = A141015 n

end A141015

/-! ## A141015.P15324385372951079699

`A078007(n)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A141015.P15324385372951079699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A078007 n + a (n - 2)

end

end A141015.P15324385372951079699

namespace A141015

/-- `A078007(n)+a(n-2)` -/
def P15324385372951079699.Spec : Prop :=
  ∀ n, P15324385372951079699.a n = A141015 n

end A141015

/-! ## A141015.P10075822454861235689

`A226916(3*(n+1)+n+2)`
-/

namespace A141015.P10075822454861235689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (3 * (n + 1) + (n + 2))

end

end A141015.P10075822454861235689

namespace A141015

/-- `A226916(3*(n+1)+n+2)` -/
def P10075822454861235689.Spec : Prop :=
  ∀ n, P10075822454861235689.a n = A141015 n

end A141015

/-! ## A141015.P15920375300324749643

`A141683(n+1)-A000007(n)`
-/

namespace A141015.P15920375300324749643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141683 (n + 1) - A000007 n

end

end A141015.P15920375300324749643

namespace A141015

/-- `A141683(n+1)-A000007(n)` -/
def P15920375300324749643.Spec : Prop :=
  ∀ n, P15920375300324749643.a n = A141015 n

end A141015

/-! ## A141015.P5306357371671756303

`A057427(n)*A141683(n+1)`
-/

namespace A141015.P5306357371671756303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A141683 (n + 1)

end

end A141015.P5306357371671756303

namespace A141015

/-- `A057427(n)*A141683(n+1)` -/
def P5306357371671756303.Spec : Prop :=
  ∀ n, P5306357371671756303.a n = A141015 n

end A141015

/-! ## A141015.P7733012235466694543

`A192805(n+2)-A192805(n)`
-/

namespace A141015.P7733012235466694543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192805 (n + 2) - A192805 n

end

end A141015.P7733012235466694543

namespace A141015

/-- `A192805(n+2)-A192805(n)` -/
def P7733012235466694543.Spec : Prop :=
  ∀ n, P7733012235466694543.a n = A141015 n

end A141015

/-! ## A141015.P17815185951326726890

`and(A057428(n), A141683(n+1))`
-/

namespace A141015.P17815185951326726890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A141683 (n + 1))

end

end A141015.P17815185951326726890

namespace A141015

/-- `and(A057428(n), A141683(n+1))` -/
def P17815185951326726890.Spec : Prop :=
  ∀ n, P17815185951326726890.a n = A141015 n

end A141015

/-! ## A141015.P11881798129890040961

`and(A134824(n), A141683(n+1))`
-/

namespace A141015.P11881798129890040961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134824 n) (A141683 (n + 1))

end

end A141015.P11881798129890040961

namespace A141015

/-- `and(A134824(n), A141683(n+1))` -/
def P11881798129890040961.Spec : Prop :=
  ∀ n, P11881798129890040961.a n = A141015 n

end A141015

/-! ## A141015.P8958659489081755642

`record[(A000034(n)-1)*A000930(n)]`
-/

namespace A141015.P8958659489081755642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000034 n - 1) * A000930 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141015.P8958659489081755642

namespace A141015

/-- `record[(A000034(n)-1)*A000930(n)]` -/
def P8958659489081755642.Spec : Prop :=
  ∀ n, P8958659489081755642.a n = A141015 n

end A141015

/-! ## A141015.P14549560000898855851

`Δ[A078012(n)²]+A000930(n)²`
-/

namespace A141015.P14549560000898855851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078012 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000930 n ^ 2

end

end A141015.P14549560000898855851

namespace A141015

/-- `Δ[A078012(n)²]+A000930(n)²` -/
def P14549560000898855851.Spec : Prop :=
  ∀ n, P14549560000898855851.a n = A141015 n

end A141015

/-! ## A141015.P17899458209323005831

`A099560(2*n+1)+A022003(n)`
-/

namespace A141015.P17899458209323005831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099560 (2 * n + 1) + A022003 n

end

end A141015.P17899458209323005831

namespace A141015

/-- `A099560(2*n+1)+A022003(n)` -/
def P17899458209323005831.Spec : Prop :=
  ∀ n, P17899458209323005831.a n = A141015 n

end A141015

/-! ## A141015.P3695760445031229158

`A099560(2*n+1)+A079978(n+1)`
-/

namespace A141015.P3695760445031229158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099560 (2 * n + 1) + A079978 (n + 1)

end

end A141015.P3695760445031229158

namespace A141015

/-- `A099560(2*n+1)+A079978(n+1)` -/
def P3695760445031229158.Spec : Prop :=
  ∀ n, P3695760445031229158.a n = A141015 n

end A141015

/-!
# A141017: List of largest row numbers of Pascal-like triangles with index of asymmetry y = 1 and index of obliqueness z = 0 or z = 1.

The programs for A141017, there is no canonical definition to state claims against.
-/

/-! ## A141017.P8220541155117669131

`A140993(A090223(n)+A000124(n))`
-/

namespace A141017.P8220541155117669131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140993 (A090223 n + A000124 n).toNat

end

end A141017.P8220541155117669131

/-! ## A141017.P3767912044035688251

`A005041(A000108(n)-A343773(n))`
-/

namespace A141017.P3767912044035688251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A000108 n - A343773 n).toNat

end

end A141017.P3767912044035688251

/-! ## A141017.P9127717767651668350

`A109289(a(n-1))-2` with `a(0)=1, a(1)=1`
-/

namespace A141017.P9127717767651668350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A109289 (a (n - 1)).toNat - 2

end

end A141017.P9127717767651668350

/-! ## A141017.P6038814517272945087

`A137734(A195350(n))`
-/

namespace A141017.P6038814517272945087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A195350 n).toNat

end

end A141017.P6038814517272945087

/-! ## A141017.P11538792898337171759

`A359077(A307058(n+1))`
-/

namespace A141017.P11538792898337171759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359077 (A307058 (n + 1)).toNat

end

end A141017.P11538792898337171759

/-!
# A141018: a(n) is the largest number in the n-th row of triangle A140997.

The programs for A141018, there is no canonical definition to state claims against.
-/

/-! ## A141018.P1270722921286916506

`floor(sqrt(2*A332872(n)))`
-/

namespace A141018.P1270722921286916506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (2 * A332872 n)

end

end A141018.P1270722921286916506

/-! ## A141018.P829679902789741159

`runs[A255121(a(n-1)+n)]` with `a(0)=1`
-/

namespace A141018.P829679902789741159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A255121 (f1 (n - 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A141018.P829679902789741159

/-! ## A141018.P2605387718904550272

`A005041(A148583(n))`
-/

namespace A141018.P2605387718904550272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A148583 n).toNat

end

end A141018.P2605387718904550272

/-! ## A141018.P2917050324121872528

`A055086(A148770(n))`
-/

namespace A141018.P2917050324121872528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A148770 n).toNat

end

end A141018.P2917050324121872528

/-! ## A141018.P2020225778044841423

`A128805(A087036(n))`
-/

namespace A141018.P2020225778044841423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128805 (A087036 n).toNat

end

end A141018.P2020225778044841423

/-!
# A141019: a(n) is the largest number in the n-th row of triangle A140996.

The programs for A141019, there is no canonical definition to state claims against.
-/

/-! ## A141019.P17602281023430229257

`A140996(A185284(2*n+1)+A000124(n))`
-/

namespace A141019.P17602281023430229257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A185284 (2 * n + 1) + A000124 n).toNat

end

end A141019.P17602281023430229257

/-! ## A141019.P14540603135381717898

`A140996(∑[A000005(ceil(2^(n-1)))])`
-/

namespace A141019.P14540603135381717898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141019.P14540603135381717898

/-! ## A141019.P18130410420771867424

`A140996(∑[C(A038137(n), n)+n]-1)`
-/

namespace A141019.P18130410420771867424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038137 n).toNat n + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A141019.P18130410420771867424

/-! ## A141019.P4041547715390781966

`A140996(A000124(n))%A194635(n+1)`
-/

namespace A141019.P4041547715390781966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140996 (A000124 n).toNat) (A194635 (n + 1))

end

end A141019.P4041547715390781966

/-! ## A141019.P15979766330505845677

`A140996(A000124(n)%A069324(n+2))`
-/

namespace A141019.P15979766330505845677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (Int.tmod (A000124 n) (A069324 (n + 2))).toNat

end

end A141019.P15979766330505845677

/-!
# A141020: Pascal-like triangle with index of asymmetry y = 4 and index of obliqueness z = 0.

The programs for A141020, there is no canonical definition to state claims against.
-/

/-! ## A141020.P2805959873988729134

`A141021(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A141020.P2805959873988729134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A141020.P2805959873988729134

/-! ## A141020.P11389095368596093419

`A141021(∑[2*n]%(comp[∑[n+1]]+1))`
-/

namespace A141020.P11389095368596093419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1))

end

end A141020.P11389095368596093419

/-! ## A141020.P14472428230190416741

`A141021(A168038(n)-A326178(n))`
-/

namespace A141020.P14472428230190416741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (A168038 n - A326178 n).toNat

end

end A141020.P14472428230190416741

/-! ## A141020.P12220507566194868528

`A141021(gcd(A010816(n), A061579(n)))`
-/

namespace A141020.P12220507566194868528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (Int.gcd (A010816 n) (A061579 n))

end

end A141020.P12220507566194868528

/-! ## A141020.P9077435323230228226

`A141021(A061579(n)*A114607(n+1))`
-/

namespace A141020.P9077435323230228226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (A061579 n * A114607 (n + 1)).toNat

end

end A141020.P9077435323230228226

/-! ## A141020.P538315803908269819

`A141021((1-A010054(n))*A061579(n))`
-/

namespace A141020.P538315803908269819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 ((1 - A010054 n) * A061579 n).toNat

end

end A141020.P538315803908269819

/-! ## A141020.P3914027132536508579

`A141021(∑[char[∑[n]]]²-(n+1))`
-/

namespace A141020.P3914027132536508579
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A141020.P3914027132536508579

/-! ## A141020.P16313427184222316377

`A141021(A061579(n))^A178334(n)`
-/

namespace A141020.P16313427184222316377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141021 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A141020.P16313427184222316377

/-! ## A141020.P11366345842560266868

`A141021(A061579(n))^A304042(n)`
-/

namespace A141020.P11366345842560266868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141021 (A061579 n).toNat : ℚ) ^ (A304042 n : ℤ)

end

end A141020.P11366345842560266868

/-! ## A141020.P8404830763452551035

`A141021(A061579(n))%A002148(n)`
-/

namespace A141020.P8404830763452551035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141021 (A061579 n).toNat) (A002148 n)

end

end A141020.P8404830763452551035

/-!
# A141021: Pascal-like triangle with index of asymmetry y = 4 and index of obliqueness z = 1.

The programs for A141021, there is no canonical definition to state claims against.
-/

/-! ## A141021.P9552939790363794408

`A141020(C(row(n)+1, 2)+row(n)-col(n))`
-/

namespace A141021.P9552939790363794408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A141021.P9552939790363794408

/-! ## A141021.P6972320511321809924

`A141020(∑[2*n]%comp[∑[n]])`
-/

namespace A141021.P6972320511321809924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A141021.P6972320511321809924

/-! ## A141021.P14852188040678593129

`A141020(∑[char[∑[n]]]²-(n+1))`
-/

namespace A141021.P14852188040678593129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A141021.P14852188040678593129

/-! ## A141021.P12893412965319375089

`or(char[1], A141020(A061579(n)))`
-/

namespace A141021.P12893412965319375089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A141020 (A061579 n).toNat)

end

end A141021.P12893412965319375089

/-! ## A141021.P5798144471394100381

`A141020(A061579(n))*A304042(n)`
-/

namespace A141021.P5798144471394100381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (A061579 n).toNat * A304042 n

end

end A141021.P5798144471394100381

/-! ## A141021.P6041954991051081806

`gcd(A000038(n), A141020(A061579(n)))`
-/

namespace A141021.P6041954991051081806
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A141020 (A061579 n).toNat)

end

end A141021.P6041954991051081806

/-! ## A141021.P9832581497301744370

`A141020(A061579(n))%A000040(n+1)²`
-/

namespace A141021.P9832581497301744370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141020 (A061579 n).toNat) (A000040 (n + 1) ^ 2)

end

end A141021.P9832581497301744370

/-! ## A141021.P8343517869447371890

`A141020(A061579(n))/A000041(C(2, n+2))`
-/

namespace A141021.P8343517869447371890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141020 (A061579 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A141021.P8343517869447371890

/-! ## A141021.P15562743363522033017

`A141020(A061579(n))-(n+1)%A006530(n+1)`
-/

namespace A141021.P15562743363522033017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (A061579 n).toNat - Int.tmod (n + 1 : ℤ) (A006530 (n + 1))

end

end A141021.P15562743363522033017

/-! ## A141021.P55154994901787341

`A141020(A061579(n))+A010674(A082742(n+1))`
-/

namespace A141021.P55154994901787341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141020 (A061579 n).toNat + A010674 (A082742 (n + 1)).toNat

end

end A141021.P55154994901787341

/-!
# A141022: a(n) = n mod ((sum of digits of n)+1).

The programs for A141022, the canonical program `A141022.P7720121601839125489` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141022 has offset 0).

The definition of A141022 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141022.P7720121601839125489

`n%(1+A007953(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141022

/-- `n%(1+A007953(n))` -/
def P7720121601839125489.Spec : Prop :=
  ∀ n, P7720121601839125489.a n = A141022 n

theorem P7720121601839125489.correct : P7720121601839125489.Spec := by
  intro n
  simp only [A141022]

end A141022

/-! ## A141022.P4702329949453590758

`n%(∑{digits}[n, #]+1)`
-/

namespace A141022.P4702329949453590758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 1)

end

end A141022.P4702329949453590758

namespace A141022

/-- `n%(∑{digits}[n, #]+1)` -/
def P4702329949453590758.Spec : Prop :=
  ∀ n, (P4702329949453590758.a n : ℤ) = A141022 n

end A141022

/-! ## A141022.P13007501415928410386

`A160939(n+1)%(log(∏{digits}[n, exp(#)])+1)`
-/

namespace A141022.P13007501415928410386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160939 (n + 1)) (SequenceMachineLib.roundAway (Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod + 1))

end

end A141022.P13007501415928410386

namespace A141022

/-- `A160939(n+1)%(log(∏{digits}[n, exp(#)])+1)` -/
def P13007501415928410386.Spec : Prop :=
  ∀ n, P13007501415928410386.a n = A141022 n

end A141022

/-! ## A141022.P1512035169113026236

`A001281(2*n)%(A062028(n)-n+1)`
-/

namespace A141022.P1512035169113026236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001281 (2 * n)) (A062028 n - (n : ℤ) + 1)

end

end A141022.P1512035169113026236

namespace A141022

/-- `A001281(2*n)%(A062028(n)-n+1)` -/
def P1512035169113026236.Spec : Prop :=
  ∀ n, P1512035169113026236.a n = A141022 n

end A141022

/-! ## A141022.P853745029767008426

`n%A007953(A017281(n))`
-/

namespace A141022.P853745029767008426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A007953 (A017281 n).toNat)

end

end A141022.P853745029767008426

namespace A141022

/-- `n%A007953(A017281(n))` -/
def P853745029767008426.Spec : Prop :=
  ∀ n, P853745029767008426.a n = A141022 n

end A141022

/-!
# A141023: a(n) = 2^n - (3-(-1)^n)/2.

The programs for A141023, the canonical program `A141023.P7306414592760344015` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141023 has offset 0).

The definition of A141023 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141023.P17216921682981961395

`ogf(3x^2/(1-2x-x^2+2x^3))`
-/

namespace A141023.P17216921682981961395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 3] [1, -2, -1, 2] n

end

end A141023.P17216921682981961395

namespace A141023

/-- `ogf(3x^2/(1-2x-x^2+2x^3))` -/
def P17216921682981961395.Spec : Prop :=
  ∀ n, P17216921682981961395.a n = A141023 n

end A141023

/-! ## A141023.P7306414592760344015

`2^n-(3-(-1)^n)/2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141023

/-- `2^n-(3-(-1)^n)/2` -/
def P7306414592760344015.Spec : Prop :=
  ∀ n, P7306414592760344015.a n = (A141023 n : ℚ)

end A141023

/-! ## A141023.P18286468975171098334

`2^n-gcd(2, n+1)`
-/

namespace A141023.P18286468975171098334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.gcd 2 (n + 1) : ℤ)

end

end A141023.P18286468975171098334

namespace A141023

/-- `2^n-gcd(2, n+1)` -/
def P18286468975171098334.Spec : Prop :=
  ∀ n, P18286468975171098334.a n = A141023 n

end A141023

/-! ## A141023.P9916751604444243902

`or(n+1, -2)+2^n`
-/

namespace A141023.P9916751604444243902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2) + (2 ^ n : ℤ)

end

end A141023.P9916751604444243902

namespace A141023

/-- `or(n+1, -2)+2^n` -/
def P9916751604444243902.Spec : Prop :=
  ∀ n, P9916751604444243902.a n = A141023 n

end A141023

/-! ## A141023.P1239270633878831410

`2^n-(2*and(1, n))!`
-/

namespace A141023.P1239270633878831410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (Nat.factorial (2 * Nat.land 1 n) : ℤ)

end

end A141023.P1239270633878831410

namespace A141023

/-- `2^n-(2*and(1, n))!` -/
def P1239270633878831410.Spec : Prop :=
  ∀ n, P1239270633878831410.a n = A141023 n

end A141023

/-! ## A141023.P4105524244047073545

`xor(1, abs(or(n, 2^n-2)))`
-/

namespace A141023.P4105524244047073545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |Int.lor (n : ℤ) ((2 ^ n : ℤ) - 2)|

end

end A141023.P4105524244047073545

namespace A141023

/-- `xor(1, abs(or(n, 2^n-2)))` -/
def P4105524244047073545.Spec : Prop :=
  ∀ n, P4105524244047073545.a n = A141023 n

end A141023

/-! ## A141023.P1081741643816806671

`abs(2^n-gcd(n-1, 2*n))`
-/

namespace A141023.P1081741643816806671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 ^ n : ℤ) - (Int.gcd ((n : ℤ) - 1) (2 * n : ℤ) : ℤ)|

end

end A141023.P1081741643816806671

namespace A141023

/-- `abs(2^n-gcd(n-1, 2*n))` -/
def P1081741643816806671.Spec : Prop :=
  ∀ n, P1081741643816806671.a n = A141023 n

end A141023

/-! ## A141023.P7929407621098802436

`xor(1, a(n-1)+2^(n-1))` with `a(0)=0`
-/

namespace A141023.P7929407621098802436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor 1 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)))

end

end A141023.P7929407621098802436

namespace A141023

/-- `xor(1, a(n-1)+2^(n-1))` -/
def P7929407621098802436.Spec : Prop :=
  ∀ n, P7929407621098802436.a n = A141023 n

end A141023

/-! ## A141023.P14178420128599434044

`or(2*a(n-1), a(n-2))` with `a(0)=0, a(1)=0, a(2)=3`
-/

namespace A141023.P14178420128599434044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 3] fun n a =>
  Nat.lor (2 * a (n - 1)) (a (n - 2))

end

end A141023.P14178420128599434044

namespace A141023

/-- `or(2*a(n-1), a(n-2))` -/
def P14178420128599434044.Spec : Prop :=
  ∀ n, (P14178420128599434044.a n : ℤ) = A141023 n

end A141023

/-! ## A141023.P17896981581354527651

`xor(round(2^n/3), ∑[round(2^n/3)])`
-/

namespace A141023.P17896981581354527651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141023.P17896981581354527651

namespace A141023

/-- `xor(round(2^n/3), ∑[round(2^n/3)])` -/
def P17896981581354527651.Spec : Prop :=
  ∀ n, P17896981581354527651.a n = A141023 n

end A141023

/-! ## A141023.P16774395203418545332

`3*(A005578(n)-1)`
-/

namespace A141023.P16774395203418545332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A005578 n - 1)

end

end A141023.P16774395203418545332

namespace A141023

/-- `3*(A005578(n)-1)` -/
def P16774395203418545332.Spec : Prop :=
  ∀ n, P16774395203418545332.a n = A141023 n

end A141023

/-! ## A141023.P6047218339859944725

`3*(A340849(n)-n)`
-/

namespace A141023.P6047218339859944725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A340849 n - (n : ℤ))

end

end A141023.P6047218339859944725

namespace A141023

/-- `3*(A340849(n)-n)` -/
def P6047218339859944725.Spec : Prop :=
  ∀ n, P6047218339859944725.a n = A141023 n

end A141023

/-! ## A141023.P17897403091891792954

`3*(A023105(n+1)-2)`
-/

namespace A141023.P17897403091891792954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A023105 (n + 1) - 2)

end

end A141023.P17897403091891792954

namespace A141023

/-- `3*(A023105(n+1)-2)` -/
def P17897403091891792954.Spec : Prop :=
  ∀ n, P17897403091891792954.a n = A141023 n

end A141023

/-! ## A141023.P17252970616481032715

`3/2*A167030(n+1)`
-/

namespace A141023.P17252970616481032715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A167030 (n + 1) : ℚ)

end

end A141023.P17252970616481032715

namespace A141023

/-- `3/2*A167030(n+1)` -/
def P17252970616481032715.Spec : Prop :=
  ∀ n, P17252970616481032715.a n = (A141023 n : ℚ)

end A141023

/-! ## A141023.P10415751641540677297

`(A284353(n)-1)/2`
-/

namespace A141023.P10415751641540677297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284353 n - 1 : ℚ) / 2

end

end A141023.P10415751641540677297

namespace A141023

/-- `(A284353(n)-1)/2` -/
def P10415751641540677297.Spec : Prop :=
  ∀ n, P10415751641540677297.a n = (A141023 n : ℚ)

end A141023

/-! ## A141023.P8432066701218261827

`(A062510(n+1)-3)/2`
-/

namespace A141023.P8432066701218261827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062510 (n + 1) - 3 : ℚ) / 2

end

end A141023.P8432066701218261827

namespace A141023

/-- `(A062510(n+1)-3)/2` -/
def P8432066701218261827.Spec : Prop :=
  ∀ n, P8432066701218261827.a n = (A141023 n : ℚ)

end A141023

/-! ## A141023.P4274509415676596872

`A284353(n)%A051049(n)`
-/

namespace A141023.P4274509415676596872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284353 n) (A051049 n)

end

end A141023.P4274509415676596872

namespace A141023

/-- `A284353(n)%A051049(n)` -/
def P4274509415676596872.Spec : Prop :=
  ∀ n, P4274509415676596872.a n = A141023 n

end A141023

/-! ## A141023.P7717558934736690017

`A079583(n)%A084173(n)`
-/

namespace A141023.P7717558934736690017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079583 n) (A084173 n)

end

end A141023.P7717558934736690017

namespace A141023

/-- `A079583(n)%A084173(n)` -/
def P7717558934736690017.Spec : Prop :=
  ∀ n, P7717558934736690017.a n = A141023 n

end A141023

/-! ## A141023.P11897769203114925692

`A166754(n)%A097813(n)`
-/

namespace A141023.P11897769203114925692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166754 n) (A097813 n)

end

end A141023.P11897769203114925692

namespace A141023

/-- `A166754(n)%A097813(n)` -/
def P11897769203114925692.Spec : Prop :=
  ∀ n, P11897769203114925692.a n = A141023 n

end A141023

/-! ## A141023.P2618212471105491731

`A275970(n)%A134522(n)`
-/

namespace A141023.P2618212471105491731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275970 n) (A134522 n)

end

end A141023.P2618212471105491731

namespace A141023

/-- `A275970(n)%A134522(n)` -/
def P2618212471105491731.Spec : Prop :=
  ∀ n, P2618212471105491731.a n = A141023 n

end A141023

/-!
# A141025: a(n) = (2^(2+n)-(-1)^n)/3 - 2*n.

The programs for A141025, the canonical program `A141025.P6773486296332513694` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141025 has offset 0).

The definition of A141025 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(2+n)-(-1)^n)/3-2*n` (program `A141025.P9308530200859705141`, by `A141025.P9308530200859705141.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141025.P6773486296332513694

`3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=5`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141025

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+2*a(n-4)` -/
def P6773486296332513694.Spec : Prop :=
  ∀ n, P6773486296332513694.a n = A141025 n

theorem P6773486296332513694.correct : P6773486296332513694.Spec := by
  intro n
  simp only [A141025]

end A141025

/-! ## A141025.P641405115044314905

`A001045(n+2)-2*n`
-/

namespace A141025.P641405115044314905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) - (2 * n : ℤ)

end

end A141025.P641405115044314905

namespace A141025

/-- `A001045(n+2)-2*n` -/
def P641405115044314905.Spec : Prop :=
  ∀ n, P641405115044314905.a n = A141025 n

end A141025

/-! ## A141025.P9308530200859705141

`(2^(2+n)-(-1)^n)/3-2*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141025.P9308530200859705141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ (2 + n) : ℤ) - (-1) ^ n : ℚ) / 3 - (2 * n : ℚ)

end

end A141025.P9308530200859705141

namespace A141025

/-- `(2^(2+n)-(-1)^n)/3-2*n` -/
def P9308530200859705141.Spec : Prop :=
  ∀ n, P9308530200859705141.a n = (A141025 n : ℚ)

theorem P9308530200859705141.correct : P9308530200859705141.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A141025, Nat.add_sub_cancel, A141025.P9308530200859705141.a, A141025.P6773486296332513694.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A141025, Nat.add_sub_cancel, A141025.P9308530200859705141.a, A141025.P6773486296332513694.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A141025

/-! ## A141025.P7487625754362208520

`2^n+a(n-2)-4` with `a(0)=1, a(1)=1`
-/

namespace A141025.P7487625754362208520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 ^ n : ℤ) + (a (n - 2) - 4)

end

end A141025.P7487625754362208520

namespace A141025

/-- `2^n+a(n-2)-4` -/
def P7487625754362208520.Spec : Prop :=
  ∀ n, P7487625754362208520.a n = A141025 n

end A141025

/-! ## A141025.P3127550551808055759

`xor(2^n, a(n-2))-4` with `a(0)=1, a(1)=1`
-/

namespace A141025.P3127550551808055759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.xor (2 ^ n : ℤ) (a (n - 2)) - 4

end

end A141025.P3127550551808055759

namespace A141025

/-- `xor(2^n, a(n-2))-4` -/
def P3127550551808055759.Spec : Prop :=
  ∀ n, P3127550551808055759.a n = A141025 n

end A141025

/-! ## A141025.P9018183469242612991

`4*floor((a(n-1)+n)/2)-3` with `a(0)=1`
-/

namespace A141025.P9018183469242612991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * ⌊(a (n - 1) + (n : ℤ) : ℚ) / 2⌋ - 3

end

end A141025.P9018183469242612991

namespace A141025

/-- `4*floor((a(n-1)+n)/2)-3` -/
def P9018183469242612991.Spec : Prop :=
  ∀ n, P9018183469242612991.a n = A141025 n

end A141025

/-! ## A141025.P13753738663274876384

`2*(a(n-1)+n-gcd(2, n))-1` with `a(0)=1`
-/

namespace A141025.P13753738663274876384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) + (n : ℤ) - (Nat.gcd 2 n : ℤ)) - 1

end

end A141025.P13753738663274876384

namespace A141025

/-- `2*(a(n-1)+n-gcd(2, n))-1` -/
def P13753738663274876384.Spec : Prop :=
  ∀ n, P13753738663274876384.a n = A141025 n

end A141025

/-! ## A141025.P2853450607191799984

`∑[2*a(n-1)]+a(n-2)-4` with `a(0)=1, a(1)=1`
-/

namespace A141025.P2853450607191799984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 2) - 4

end

end A141025.P2853450607191799984

namespace A141025

/-- `∑[2*a(n-1)]+a(n-2)-4` -/
def P2853450607191799984.Spec : Prop :=
  ∀ n, P2853450607191799984.a n = A141025 n

end A141025

/-! ## A141025.P6851285973825457263

`∑{#}[floor((n+1)/2), C(n+1-#, #)*A186949(#)]`
-/

namespace A141025.P6851285973825457263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose ((n + 1 : ℤ) - (k : ℤ)).toNat k : ℤ) * A186949 k

end

end A141025.P6851285973825457263

namespace A141025

/-- `∑{#}[floor((n+1)/2), C(n+1-#, #)*A186949(#)]` -/
def P6851285973825457263.Spec : Prop :=
  ∀ n, P6851285973825457263.a n = A141025 n

end A141025

/-! ## A141025.P1513081627622345894

`Δ[A340849(n+2)-n²]`
-/

namespace A141025.P1513081627622345894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340849 (n + 2) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141025.P1513081627622345894

namespace A141025

/-- `Δ[A340849(n+2)-n²]` -/
def P1513081627622345894.Spec : Prop :=
  ∀ n, P1513081627622345894.a n = A141025 n

end A141025

/-! ## A141025.P621850815930046162

`Δ[A257198(n+1)-(1-n)²]`
-/

namespace A141025.P621850815930046162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257198 (n + 1) - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141025.P621850815930046162

namespace A141025

/-- `Δ[A257198(n+1)-(1-n)²]` -/
def P621850815930046162.Spec : Prop :=
  ∀ n, P621850815930046162.a n = A141025 n

end A141025

/-!
# A141026: Numbers k such that (k,k+8) forms a pair of consecutive primes ending respectively in 1 and 9.

The programs for A141026, the canonical program `A141026.P13833280663866125837` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141026 has offset 1).

The definition of A141026 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141026.P17895148116382654254

`10*A216305(n+1)+1`
-/

namespace A141026.P17895148116382654254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A216305 (n + 1) + 1

end

end A141026.P17895148116382654254

namespace A141026

/-- `10*A216305(n+1)+1` -/
def P17895148116382654254.Spec : Prop :=
  ∀ n, P17895148116382654254.a n = A141026 (n + 1)

end A141026

/-! ## A141026.P5471201251165830653

`∩[A030430(n+1), A031926(n+1)]`
-/

namespace A141026.P5471201251165830653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P5471201251165830653

namespace A141026

/-- `∩[A030430(n+1), A031926(n+1)]` -/
def P5471201251165830653.Spec : Prop :=
  ∀ n, (P5471201251165830653.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P3131339329699551505

`∩[A031926(n+1), A132232(n+1)]`
-/

namespace A141026.P3131339329699551505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132232 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P3131339329699551505

namespace A141026

/-- `∩[A031926(n+1), A132232(n+1)]` -/
def P3131339329699551505.Spec : Prop :=
  ∀ n, (P3131339329699551505.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P13833280663866125837

`∩[A015915(n+1), A332674(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A141026

/-- `∩[A015915(n+1), A332674(n+1)]` -/
def P13833280663866125837.Spec : Prop :=
  ∀ n, (P13833280663866125837.a n : ℤ) = A141026 (n + 1)

theorem P13833280663866125837.correct : P13833280663866125837.Spec := by
  intro n
  simp only [A141026, Nat.add_sub_cancel]

end A141026

/-! ## A141026.P8848509927184678500

`∩[A023202(n+1), A332674(n+1)]`
-/

namespace A141026.P8848509927184678500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P8848509927184678500

namespace A141026

/-- `∩[A023202(n+1), A332674(n+1)]` -/
def P8848509927184678500.Spec : Prop :=
  ∀ n, (P8848509927184678500.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P16648882252636372092

`∩[A031926(n+1), A332674(n+1)]`
-/

namespace A141026.P16648882252636372092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P16648882252636372092

namespace A141026

/-- `∩[A031926(n+1), A332674(n+1)]` -/
def P16648882252636372092.Spec : Prop :=
  ∀ n, (P16648882252636372092.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P16692729141630233293

`∩[A262085(n+1), A332674(n+1)]`
-/

namespace A141026.P16692729141630233293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P16692729141630233293

namespace A141026

/-- `∩[A262085(n+1), A332674(n+1)]` -/
def P16692729141630233293.Spec : Prop :=
  ∀ n, (P16692729141630233293.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P582717679751637735

`∩[A332674(n+1), A394735(n+1)]`
-/

namespace A141026.P582717679751637735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332674 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394735 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P582717679751637735

namespace A141026

/-- `∩[A332674(n+1), A394735(n+1)]` -/
def P582717679751637735.Spec : Prop :=
  ∀ n, (P582717679751637735.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P4879261938178712474

`∩[A031926(n+1), A045453(n+1)]`
-/

namespace A141026.P4879261938178712474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P4879261938178712474

namespace A141026

/-- `∩[A031926(n+1), A045453(n+1)]` -/
def P4879261938178712474.Spec : Prop :=
  ∀ n, (P4879261938178712474.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P15190426937384453403

`∩[A031926(n+1), A140506(n+1)]`
-/

namespace A141026.P15190426937384453403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140506 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P15190426937384453403

namespace A141026

/-- `∩[A031926(n+1), A140506(n+1)]` -/
def P15190426937384453403.Spec : Prop :=
  ∀ n, (P15190426937384453403.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P13085738007754974847

`∩[A031926(n+1), A290530(n+1)]`
-/

namespace A141026.P13085738007754974847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290530 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P13085738007754974847

namespace A141026

/-- `∩[A031926(n+1), A290530(n+1)]` -/
def P13085738007754974847.Spec : Prop :=
  ∀ n, (P13085738007754974847.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P16136183770751170736

`∩[A031926(n+1), A132238(n+1)]`
-/

namespace A141026.P16136183770751170736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P16136183770751170736

namespace A141026

/-- `∩[A031926(n+1), A132238(n+1)]` -/
def P16136183770751170736.Spec : Prop :=
  ∀ n, (P16136183770751170736.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P5739169456811338770

`∩[A031926(n+1), A090756(n+1)]`
-/

namespace A141026.P5739169456811338770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P5739169456811338770

namespace A141026

/-- `∩[A031926(n+1), A090756(n+1)]` -/
def P5739169456811338770.Spec : Prop :=
  ∀ n, (P5739169456811338770.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P13532545995425713298

`∩[A031926(n+1), A327752(n+1)]`
-/

namespace A141026.P13532545995425713298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327752 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P13532545995425713298

namespace A141026

/-- `∩[A031926(n+1), A327752(n+1)]` -/
def P13532545995425713298.Spec : Prop :=
  ∀ n, (P13532545995425713298.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P4351663010574152197

`∩[A031926(n+1), A383679(n+1)]`
-/

namespace A141026.P4351663010574152197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P4351663010574152197

namespace A141026

/-- `∩[A031926(n+1), A383679(n+1)]` -/
def P4351663010574152197.Spec : Prop :=
  ∀ n, (P4351663010574152197.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P1857619744115341821

`∩[A004615(n+1), A031926(n+1)]`
-/

namespace A141026.P1857619744115341821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P1857619744115341821

namespace A141026

/-- `∩[A004615(n+1), A031926(n+1)]` -/
def P1857619744115341821.Spec : Prop :=
  ∀ n, (P1857619744115341821.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P9176026864059020410

`∩[A061771(n+1), A332674(n+1)]`
-/

namespace A141026.P9176026864059020410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P9176026864059020410

namespace A141026

/-- `∩[A061771(n+1), A332674(n+1)]` -/
def P9176026864059020410.Spec : Prop :=
  ∀ n, (P9176026864059020410.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P16287705096191651102

`∩[A031926(n+1), A128467(n)]`
-/

namespace A141026.P16287705096191651102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128467 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P16287705096191651102

namespace A141026

/-- `∩[A031926(n+1), A128467(n)]` -/
def P16287705096191651102.Spec : Prop :=
  ∀ n, (P16287705096191651102.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P10863759448447602773

`∩[A078500(n+1), A332674(n+1)]`
-/

namespace A141026.P10863759448447602773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P10863759448447602773

namespace A141026

/-- `∩[A078500(n+1), A332674(n+1)]` -/
def P10863759448447602773.Spec : Prop :=
  ∀ n, (P10863759448447602773.a n : ℤ) = A141026 (n + 1)

end A141026

/-! ## A141026.P8331982899782042637

`∩[A031926(n+1), A045349(n+1)]`
-/

namespace A141026.P8331982899782042637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141026.P8331982899782042637

namespace A141026

/-- `∩[A031926(n+1), A045349(n+1)]` -/
def P8331982899782042637.Spec : Prop :=
  ∀ n, (P8331982899782042637.a n : ℤ) = A141026 (n + 1)

end A141026

/-!
# A141027: a(n) = smallest number m which without its leftmost digit is equal to m/n (or 0 if no such number exists).

The programs for A141027, there is no canonical definition to state claims against.
-/

/-! ## A141027.P7644601360793863746

`A118759(A186436(n+2))`
-/

namespace A141027.P7644601360793863746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A186436 (n + 2)).toNat

end

end A141027.P7644601360793863746

/-! ## A141027.P15980173213453621721

`A000194(A186436(n+2)²)`
-/

namespace A141027.P15980173213453621721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A186436 (n + 2) ^ 2).toNat

end

end A141027.P15980173213453621721

/-! ## A141027.P10328503566243552295

`A000196(A186436(n+2)²)`
-/

namespace A141027.P10328503566243552295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A186436 (n + 2) ^ 2).toNat

end

end A141027.P10328503566243552295

/-! ## A141027.P747718281740897319

`A037213(A186436(n+2)²)`
-/

namespace A141027.P747718281740897319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A186436 (n + 2) ^ 2).toNat

end

end A141027.P747718281740897319

/-! ## A141027.P2535611227703594649

`A186436(A077342(n+1)+1)`
-/

namespace A141027.P2535611227703594649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186436 (A077342 (n + 1) + 1).toNat

end

end A141027.P2535611227703594649

/-!
# A141031: Nonprimes in the triangle A141020.

The programs for A141031, there is no canonical definition to state claims against.
-/

/-! ## A141031.P13142126076354706783

`record[A055032(A141021(n))]`
-/

namespace A141031.P13142126076354706783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (A141021 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141031.P13142126076354706783

/-! ## A141031.P9396430678807986399

`record[A141021(∑[A125070(n+1)])]`
-/

namespace A141031.P9396430678807986399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125070 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141031.P9396430678807986399

/-! ## A141031.P2619956854728903196

`record[A141021(A169911(n+1)+6)]`
-/

namespace A141031.P2619956854728903196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 (A169911 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141031.P2619956854728903196

/-! ## A141031.P944949125778760452

`record[A141021(n)/A349685(n+1)]`
-/

namespace A141031.P944949125778760452
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141021 n : ℚ) / (A349685 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141031.P944949125778760452

/-! ## A141031.P11292618369505856928

`∩[record[A141021(n)], A259315(n+1)]`
-/

namespace A141031.P11292618369505856928
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141021 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A141031.P11292618369505856928

/-!
# A141032: a(n) = 4*(16^n - 1)/15.

The programs for A141032, the canonical program `A141032.P8794503586977925027` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141032 has offset 0).

The definition of A141032 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*(16^n-1)/15` (program `A141032.P16184064606601983818`, by `A141032.P16184064606601983818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141032.P5598955517313311005

`ogf(4x/(1-17x+16x^2))`
-/

namespace A141032.P5598955517313311005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -17, 16] n

end

end A141032.P5598955517313311005

namespace A141032

/-- `ogf(4x/(1-17x+16x^2))` -/
def P5598955517313311005.Spec : Prop :=
  ∀ n, P5598955517313311005.a n = A141032 n

end A141032

/-! ## A141032.P8794503586977925027

`16*a(n-1)+4` with `a(0)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141032

/-- `16*a(n-1)+4` -/
def P8794503586977925027.Spec : Prop :=
  ∀ n, (P8794503586977925027.a n : ℤ) = A141032 n

theorem P8794503586977925027.correct : P8794503586977925027.Spec := by
  intro n
  simp only [A141032]

end A141032

/-! ## A141032.P10229806653575690201

`4/15*(16^n-1)`
-/

namespace A141032.P10229806653575690201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 15 * ((16 ^ n : ℤ) - 1 : ℚ)

end

end A141032.P10229806653575690201

namespace A141032

/-- `4/15*(16^n-1)` -/
def P10229806653575690201.Spec : Prop :=
  ∀ n, P10229806653575690201.a n = (A141032 n : ℚ)

theorem P10229806653575690201.correct : P10229806653575690201.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A141032, Nat.add_sub_cancel, A141032.P10229806653575690201.a, A141032.P8794503586977925027.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A141032, Nat.add_sub_cancel, A141032.P10229806653575690201.a, A141032.P8794503586977925027.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A141032

/-! ## A141032.P16184064606601983818

`4*(16^n-1)/15`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141032.P16184064606601983818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * ((16 ^ n : ℤ) - 1) : ℚ) / 15

end

end A141032.P16184064606601983818

namespace A141032

/-- `4*(16^n-1)/15` -/
def P16184064606601983818.Spec : Prop :=
  ∀ n, P16184064606601983818.a n = (A141032 n : ℚ)

theorem P16184064606601983818.correct : P16184064606601983818.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A141032, Nat.add_sub_cancel, A141032.P16184064606601983818.a, A141032.P8794503586977925027.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A141032, Nat.add_sub_cancel, A141032.P16184064606601983818.a, A141032.P8794503586977925027.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A141032

/-! ## A141032.P11733559290412543136

`or(4, 16*a(n-1))` with `a(0)=0`
-/

namespace A141032.P11733559290412543136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 4 (16 * a (n - 1))

end

end A141032.P11733559290412543136

namespace A141032

/-- `or(4, 16*a(n-1))` -/
def P11733559290412543136.Spec : Prop :=
  ∀ n, (P11733559290412543136.a n : ℤ) = A141032 n

end A141032

/-! ## A141032.P11882772299468572140

`xor(4, 16*a(n-1))` with `a(0)=0`
-/

namespace A141032.P11882772299468572140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 4 (16 * a (n - 1))

end

end A141032.P11882772299468572140

namespace A141032

/-- `xor(4, 16*a(n-1))` -/
def P11882772299468572140.Spec : Prop :=
  ∀ n, (P11882772299468572140.a n : ℤ) = A141032 n

end A141032

/-! ## A141032.P8907522928317844061

`lcm(64, a(n-1))+4` with `a(0)=0`
-/

namespace A141032.P8907522928317844061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 64 (a (n - 1)) + 4

end

end A141032.P8907522928317844061

namespace A141032

/-- `lcm(64, a(n-1))+4` -/
def P8907522928317844061.Spec : Prop :=
  ∀ n, (P8907522928317844061.a n : ℤ) = A141032 n

end A141032

/-! ## A141032.P8987754783363402643

`∑[4*4*a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A141032.P8987754783363402643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  4 * (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141032.P8987754783363402643

namespace A141032

/-- `∑[4*4*a(n-1)]` -/
def P8987754783363402643.Spec : Prop :=
  ∀ n, (P8987754783363402643.a n : ℤ) = A141032 n

end A141032

/-! ## A141032.P8790692018716568299

`a(n-1)/(1/4)²+4` with `a(0)=0`
-/

namespace A141032.P8790692018716568299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 + 4

end

end A141032.P8790692018716568299

namespace A141032

/-- `a(n-1)/(1/4)²+4` -/
def P8790692018716568299.Spec : Prop :=
  ∀ n, P8790692018716568299.a n = (A141032 n : ℚ)

end A141032

/-! ## A141032.P6101626645636137601

`a(n-1)+(2^n)^4/4` with `a(0)=0`
-/

namespace A141032.P6101626645636137601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + ((2 ^ n) ^ 4 : ℚ) / 4

end

end A141032.P6101626645636137601

namespace A141032

/-- `a(n-1)+(2^n)^4/4` -/
def P6101626645636137601.Spec : Prop :=
  ∀ n, P6101626645636137601.a n = (A141032 n : ℚ)

end A141032

/-!
# A141035: Period 10: repeat 0, 0, 4, 2, -2, 4, 2, -4, -4, -2.

The programs for A141035, the canonical program `A141035.P16388053810809187672` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141035 has offset 0).

The definition of A141035 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141035.P16388053810809187672

`ogf((4x^2+2x^3+2x^4+6x^5+4x^6+2x^7)/(1+x^2+x^4+x^6+x^8))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141035

/-- `ogf((4x^2+2x^3+2x^4+6x^5+4x^6+2x^7)/(1+x^2+x^4+x^6+x^8))` -/
def P16388053810809187672.Spec : Prop :=
  ∀ n, P16388053810809187672.a n = A141035 n

theorem P16388053810809187672.correct : P16388053810809187672.Spec := by
  intro n
  simp only [A141035]

end A141035

/-!
# A141036: Tribonacci-like sequence; a(0)=2, a(1)=1, a(2)=1, a(n) = a(n-1) + a(n-2) + a(n-3).

The programs for A141036, the canonical program `A141036.P12016863932233638323` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141036 has offset 0).

The definition of A141036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)` (program `A141036.P12016863932233638323`, by `A141036.P12016863932233638323.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141036.P1854946377318928118

`ogf((2-x-2x^2)/(1-x-x^2-x^3))`
-/

namespace A141036.P1854946377318928118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, -2] [1, -1, -1, -1] n

end

end A141036.P1854946377318928118

namespace A141036

/-- `ogf((2-x-2x^2)/(1-x-x^2-x^3))` -/
def P1854946377318928118.Spec : Prop :=
  ∀ n, P1854946377318928118.a n = A141036 n

end A141036

/-! ## A141036.P12016863932233638323

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141036

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P12016863932233638323.Spec : Prop :=
  ∀ n, (P12016863932233638323.a n : ℤ) = A141036 n

theorem P12016863932233638323.correct : P12016863932233638323.Spec := by
  intro n
  simp only [A141036]

end A141036

/-! ## A141036.P4648991781591395105

`2*A000213(n)-A000073(n+1)`
-/

namespace A141036.P4648991781591395105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000213 n - A000073 (n + 1)

end

end A141036.P4648991781591395105

namespace A141036

/-- `2*A000213(n)-A000073(n+1)` -/
def P4648991781591395105.Spec : Prop :=
  ∀ n, P4648991781591395105.a n = A141036 n

end A141036

/-! ## A141036.P14745780592626693152

`2*a(n-1)-a(n-4)` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`
-/

namespace A141036.P14745780592626693152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 4] fun n a =>
  2 * a (n - 1) - a (n - 4)

end

end A141036.P14745780592626693152

namespace A141036

/-- `2*a(n-1)-a(n-4)` -/
def P14745780592626693152.Spec : Prop :=
  ∀ n, P14745780592626693152.a n = A141036 n

end A141036

/-! ## A141036.P12003607187727110805

`a(n-1)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A141036.P12003607187727110805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 3))

end

end A141036.P12003607187727110805

namespace A141036

/-- `a(n-1)+a(n-2)+a(n-3)` -/
def P12003607187727110805.Spec : Prop :=
  ∀ n, (P12003607187727110805.a n : ℤ) = A141036 n

theorem P12003607187727110805.correct : P12003607187727110805.Spec := by
  intro n
  simp only [A141036, Nat.add_sub_cancel, A141036.P12003607187727110805.a, A141036.P12016863932233638323.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141036

/-! ## A141036.P12333044041181810391

`a(n-1)-floor(a(n-4)-a(n-1))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A141036.P12333044041181810391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 4] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 1))

end

end A141036.P12333044041181810391

namespace A141036

/-- `a(n-1)-floor(a(n-4)-a(n-1))` -/
def P12333044041181810391.Spec : Prop :=
  ∀ n, P12333044041181810391.a n = A141036 n

end A141036

/-! ## A141036.P18228029620697947435

`A274761(n-1)-a(n-1)` with `a(0)=2`
-/

namespace A141036.P18228029620697947435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A274761 (n - 1) - a (n - 1)

end

end A141036.P18228029620697947435

namespace A141036

/-- `A274761(n-1)-a(n-1)` -/
def P18228029620697947435.Spec : Prop :=
  ∀ n, P18228029620697947435.a n = A141036 n

end A141036

/-! ## A141036.P14127299294250259499

`A214899(n)-A000073(n)`
-/

namespace A141036.P14127299294250259499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - A000073 n

end

end A141036.P14127299294250259499

namespace A141036

/-- `A214899(n)-A000073(n)` -/
def P14127299294250259499.Spec : Prop :=
  ∀ n, P14127299294250259499.a n = A141036 n

end A141036

/-! ## A141036.P8924952003074249081

`A214899(n)-Δ[A192804(n)]`
-/

namespace A141036.P8924952003074249081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n - (f1 (n + 1) - f1 n)

end

end A141036.P8924952003074249081

namespace A141036

/-- `A214899(n)-Δ[A192804(n)]` -/
def P8924952003074249081.Spec : Prop :=
  ∀ n, P8924952003074249081.a n = A141036 n

end A141036

/-! ## A141036.P3329786653761741672

`A081172(n)+A001590(n+1)`
-/

namespace A141036.P3329786653761741672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + A001590 (n + 1)

end

end A141036.P3329786653761741672

namespace A141036

/-- `A081172(n)+A001590(n+1)` -/
def P3329786653761741672.Spec : Prop :=
  ∀ n, P3329786653761741672.a n = A141036 n

end A141036

/-! ## A141036.P2911289172955586025

`A020992(n+1)-A354784(n)`
-/

namespace A141036.P2911289172955586025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) - A354784 n

end

end A141036.P2911289172955586025

namespace A141036

/-- `A020992(n+1)-A354784(n)` -/
def P2911289172955586025.Spec : Prop :=
  ∀ n, P2911289172955586025.a n = A141036 n

end A141036

/-! ## A141036.P6651518531202211525

`A081172(n)+Δ[A000073(n+1)]`
-/

namespace A141036.P6651518531202211525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + (f1 (n + 1) - f1 n)

end

end A141036.P6651518531202211525

namespace A141036

/-- `A081172(n)+Δ[A000073(n+1)]` -/
def P6651518531202211525.Spec : Prop :=
  ∀ n, P6651518531202211525.a n = A141036 n

end A141036

/-! ## A141036.P13017995559755164509

`A214727(n)-Δ[A001590(n+1)]`
-/

namespace A141036.P13017995559755164509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214727 n - (f1 (n + 1) - f1 n)

end

end A141036.P13017995559755164509

namespace A141036

/-- `A214727(n)-Δ[A001590(n+1)]` -/
def P13017995559755164509.Spec : Prop :=
  ∀ n, P13017995559755164509.a n = A141036 n

end A141036

/-! ## A141036.P14179392913527727670

`2*A000213(n)-∑[A001590(n)]`
-/

namespace A141036.P14179392913527727670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000213 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141036.P14179392913527727670

namespace A141036

/-- `2*A000213(n)-∑[A001590(n)]` -/
def P14179392913527727670.Spec : Prop :=
  ∀ n, P14179392913527727670.a n = A141036 n

end A141036

/-! ## A141036.P12218248708793632241

`A214899(n)-Δ[A000213(n)/2]`
-/

namespace A141036.P12218248708793632241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000213 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214899 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A141036.P12218248708793632241

namespace A141036

/-- `A214899(n)-Δ[A000213(n)/2]` -/
def P12218248708793632241.Spec : Prop :=
  ∀ n, P12218248708793632241.a n = (A141036 n : ℚ)

end A141036

/-! ## A141036.P15456829384249977075

`A020992(n+1)-2*A000073(n)`
-/

namespace A141036.P15456829384249977075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020992 (n + 1) - 2 * A000073 n

end

end A141036.P15456829384249977075

namespace A141036

/-- `A020992(n+1)-2*A000073(n)` -/
def P15456829384249977075.Spec : Prop :=
  ∀ n, P15456829384249977075.a n = A141036 n

end A141036

/-! ## A141036.P3974930120006480668

`A081172(n)+A214727(n)-A020992(n)`
-/

namespace A141036.P3974930120006480668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 n + (A214727 n - A020992 n)

end

end A141036.P3974930120006480668

namespace A141036

/-- `A081172(n)+A214727(n)-A020992(n)` -/
def P3974930120006480668.Spec : Prop :=
  ∀ n, P3974930120006480668.a n = A141036 n

end A141036

/-! ## A141036.P10991150343864916702

`A000213(n)-(A001590(n)-A081172(n))`
-/

namespace A141036.P10991150343864916702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - (A001590 n - A081172 n)

end

end A141036.P10991150343864916702

namespace A141036

/-- `A000213(n)-(A001590(n)-A081172(n))` -/
def P10991150343864916702.Spec : Prop :=
  ∀ n, P10991150343864916702.a n = A141036 n

end A141036

/-! ## A141036.P7537813030375991852

`A001590(n)+A214899(n)-∑[A001590(n)]`
-/

namespace A141036.P7537813030375991852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001590 n + (A214899 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141036.P7537813030375991852

namespace A141036

/-- `A001590(n)+A214899(n)-∑[A001590(n)]` -/
def P7537813030375991852.Spec : Prop :=
  ∀ n, P7537813030375991852.a n = A141036 n

end A141036

/-! ## A141036.P16347919753743034282

`A081172(n+1)+A081172(n)-A000073(n)`
-/

namespace A141036.P16347919753743034282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081172 (n + 1) + (A081172 n - A000073 n)

end

end A141036.P16347919753743034282

namespace A141036

/-- `A081172(n+1)+A081172(n)-A000073(n)` -/
def P16347919753743034282.Spec : Prop :=
  ∀ n, P16347919753743034282.a n = A141036 n

end A141036

/-!
# A141037: Numbers n where the sum of all of its divisors <= sqrt(n) exceeds the sum of all the divisors of m <= sqrt(m) for all m<n.

The programs for A141037, there is no canonical definition to state claims against.
-/

/-! ## A141037.P12365879961861178848

`A000005(A004645(n)*A255645(n))`
-/

namespace A141037.P12365879961861178848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004645 n * A255645 n).toNat

end

end A141037.P12365879961861178848

/-! ## A141037.P3643955196585239058

`record[A107345(A140202(n))*A284559(n)]`
-/

namespace A141037.P3643955196585239058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 (A140202 n).toNat * A284559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141037.P3643955196585239058

/-! ## A141037.P164658223970708794

`A000005(A246391(3*n+1)*A309841(n))`
-/

namespace A141037.P164658223970708794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A246391 (3 * n + 1) * A309841 n).toNat

end

end A141037.P164658223970708794

/-!
# A141038: Padovan-like sequence; a(0)=2, a(1)=1, a(2)=1, a(n) = a(n-2) + a(n-3).

The programs for A141038, the canonical program `A141038.P8561844892133511011` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141038 has offset 0).

The definition of A141038 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)` (program `A141038.P8561844892133511011`, by `A141038.P8561844892133511011.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141038.P1787036434279644205

`ogf((2+x-x^2)/(1-x^2-x^3))`
-/

namespace A141038.P1787036434279644205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 1, -1] [1, 0, -1, -1] n

end

end A141038.P1787036434279644205

namespace A141038

/-- `ogf((2+x-x^2)/(1-x^2-x^3))` -/
def P1787036434279644205.Spec : Prop :=
  ∀ n, P1787036434279644205.a n = A141038 n

end A141038

/-! ## A141038.P8561844892133511011

`a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141038

/-- `a(n-2)+a(n-3)` -/
def P8561844892133511011.Spec : Prop :=
  ∀ n, (P8561844892133511011.a n : ℤ) = A141038 n

theorem P8561844892133511011.correct : P8561844892133511011.Spec := by
  intro n
  simp only [A141038]

end A141038

/-! ## A141038.P2966162982655080428

`2*A000931(n+5)-A000931(n+4)`
-/

namespace A141038.P2966162982655080428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000931 (n + 5) - A000931 (n + 4)

end

end A141038.P2966162982655080428

namespace A141038

/-- `2*A000931(n+5)-A000931(n+4)` -/
def P2966162982655080428.Spec : Prop :=
  ∀ n, P2966162982655080428.a n = A141038 n

end A141038

/-! ## A141038.P14829851026944833447

`a(n-2)-floor(-a(n-3))` with `a(0)=2, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A141038.P14829851026944833447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A141038.P14829851026944833447

namespace A141038

/-- `a(n-2)-floor(-a(n-3))` -/
def P14829851026944833447.Spec : Prop :=
  ∀ n, P14829851026944833447.a n = A141038 n

end A141038

/-! ## A141038.P10043638251006918598

`a(n-2)-ceil(-a(n-3))` with `a(0)=2, a(1)=1, a(2)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A141038.P10043638251006918598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A141038.P10043638251006918598

namespace A141038

/-- `a(n-2)-ceil(-a(n-3))` -/
def P10043638251006918598.Spec : Prop :=
  ∀ n, P10043638251006918598.a n = A141038 n

end A141038

/-! ## A141038.P6211301722596883090

`a(n-2)-round(-a(n-3))` with `a(0)=2, a(1)=1, a(2)=1`

`round` is left out, it is the identity on integers.
-/

namespace A141038.P6211301722596883090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n a =>
  a (n - 2) - (-a (n - 3))

end

end A141038.P6211301722596883090

namespace A141038

/-- `a(n-2)-round(-a(n-3))` -/
def P6211301722596883090.Spec : Prop :=
  ∀ n, P6211301722596883090.a n = A141038 n

end A141038

/-! ## A141038.P11919237700482551916

`a(n-1)-(a(n-4)-a(n-2))` with `a(0)=2, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A141038.P11919237700482551916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1, 3] fun n a =>
  a (n - 1) - (a (n - 4) - a (n - 2))

end

end A141038.P11919237700482551916

namespace A141038

/-- `a(n-1)-(a(n-4)-a(n-2))` -/
def P11919237700482551916.Spec : Prop :=
  ∀ n, P11919237700482551916.a n = A141038 n

end A141038

/-! ## A141038.P13564548658084451864

`A000931(n)+∑[A000931(n)]`
-/

namespace A141038.P13564548658084451864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141038.P13564548658084451864

namespace A141038

/-- `A000931(n)+∑[A000931(n)]` -/
def P13564548658084451864.Spec : Prop :=
  ∀ n, P13564548658084451864.a n = A141038 n

end A141038

/-! ## A141038.P16778815685723897465

`A134816(n+1)+A000931(n)`
-/

namespace A141038.P16778815685723897465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + A000931 n

end

end A141038.P16778815685723897465

namespace A141038

/-- `A134816(n+1)+A000931(n)` -/
def P16778815685723897465.Spec : Prop :=
  ∀ n, P16778815685723897465.a n = A141038 n

end A141038

/-! ## A141038.P489554669831388425

`A291289(n)+A182097(n+1)`
-/

namespace A141038.P489554669831388425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 n + A182097 (n + 1)

end

end A141038.P489554669831388425

namespace A141038

/-- `A291289(n)+A182097(n+1)` -/
def P489554669831388425.Spec : Prop :=
  ∀ n, P489554669831388425.a n = A141038 n

end A141038

/-! ## A141038.P13095205478864524208

`A182097(n+2)+A000931(n)`
-/

namespace A141038.P13095205478864524208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2) + A000931 n

end

end A141038.P13095205478864524208

namespace A141038

/-- `A182097(n+2)+A000931(n)` -/
def P13095205478864524208.Spec : Prop :=
  ∀ n, P13095205478864524208.a n = A141038 n

end A141038

/-! ## A141038.P9741289802126896703

`A134816(n+2)-A133034(n)`
-/

namespace A141038.P9741289802126896703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) - A133034 n

end

end A141038.P9741289802126896703

namespace A141038

/-- `A134816(n+2)-A133034(n)` -/
def P9741289802126896703.Spec : Prop :=
  ∀ n, P9741289802126896703.a n = A141038 n

end A141038

/-! ## A141038.P15924562746707942898

`A182097(n+3)-A133034(n)`
-/

namespace A141038.P15924562746707942898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 3) - A133034 n

end

end A141038.P15924562746707942898

namespace A141038

/-- `A182097(n+3)-A133034(n)` -/
def P15924562746707942898.Spec : Prop :=
  ∀ n, P15924562746707942898.a n = A141038 n

end A141038

/-! ## A141038.P16713349733022969456

`A000931(n+5)+A000931(n)`
-/

namespace A141038.P16713349733022969456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (n + 5) + A000931 n

end

end A141038.P16713349733022969456

namespace A141038

/-- `A000931(n+5)+A000931(n)` -/
def P16713349733022969456.Spec : Prop :=
  ∀ n, P16713349733022969456.a n = A141038 n

end A141038

/-! ## A141038.P5975895091967217453

`A134816(n+1)+A078027(n+2)`
-/

namespace A141038.P5975895091967217453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 1) + A078027 (n + 2)

end

end A141038.P5975895091967217453

namespace A141038

/-- `A134816(n+1)+A078027(n+2)` -/
def P5975895091967217453.Spec : Prop :=
  ∀ n, P5975895091967217453.a n = A141038 n

end A141038

/-! ## A141038.P13858027158238259532

`A182097(n+2)+A078027(n+2)`
-/

namespace A141038.P13858027158238259532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 2) + A078027 (n + 2)

end

end A141038.P13858027158238259532

namespace A141038

/-- `A182097(n+2)+A078027(n+2)` -/
def P13858027158238259532.Spec : Prop :=
  ∀ n, P13858027158238259532.a n = A141038 n

end A141038

/-! ## A141038.P11830469559132545436

`A133034(n+1)+2*A182097(n)`
-/

namespace A141038.P11830469559132545436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 1) + 2 * A182097 n

end

end A141038.P11830469559132545436

namespace A141038

/-- `A133034(n+1)+2*A182097(n)` -/
def P11830469559132545436.Spec : Prop :=
  ∀ n, P11830469559132545436.a n = A141038 n

end A141038

/-! ## A141038.P13000561483375832711

`A291289(n)+A127682(2*n+1)`
-/

namespace A141038.P13000561483375832711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291289 n + A127682 (2 * n + 1)

end

end A141038.P13000561483375832711

namespace A141038

/-- `A291289(n)+A127682(2*n+1)` -/
def P13000561483375832711.Spec : Prop :=
  ∀ n, P13000561483375832711.a n = A141038 n

end A141038

/-! ## A141038.P10118790809321608246

`A133034(n+4)+A133034(n+9)`
-/

namespace A141038.P10118790809321608246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (n + 4) + A133034 (n + 9)

end

end A141038.P10118790809321608246

namespace A141038

/-- `A133034(n+4)+A133034(n+9)` -/
def P10118790809321608246.Spec : Prop :=
  ∀ n, P10118790809321608246.a n = A141038 n

end A141038

/-! ## A141038.P5338670188804380276

`A134816(n+2)-Δ[Δ[A052954(n+1)]]`
-/

namespace A141038.P5338670188804380276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (n + 2) - (f1 (n + 1) - f1 n)

end

end A141038.P5338670188804380276

namespace A141038

/-- `A134816(n+2)-Δ[Δ[A052954(n+1)]]` -/
def P5338670188804380276.Spec : Prop :=
  ∀ n, P5338670188804380276.a n = A141038 n

end A141038

/-!
# A141039: Years in which there are five Wednesdays in the month of February.

The programs for A141039, there is no canonical definition to state claims against.
-/

/-! ## A141039.P16145163536781956593

`A224945(n+8)`
-/

namespace A141039.P16145163536781956593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224945 (n + 8)

end

end A141039.P16145163536781956593

/-! ## A141039.P1590677842191634095

`lcm(2, A224945(A020722(n)))`
-/

namespace A141039.P1590677842191634095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A224945 (A020722 n).toNat)

end

end A141039.P1590677842191634095

/-! ## A141039.P16445299690294295460

`A224945(A020722(n))%A135795(A020715(n))`
-/

namespace A141039.P16445299690294295460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A224945 (A020722 n).toNat) (A135795 (A020715 n).toNat)

end

end A141039.P16445299690294295460

/-! ## A141039.P16265186372674883187

`A144447(A000124(n))*A224945(A020722(n))`
-/

namespace A141039.P16265186372674883187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144447 (A000124 n).toNat * A224945 (A020722 n).toNat

end

end A141039.P16265186372674883187

/-!
# A141040: Number of graphs with 2n vertices that have an odd determinant for their adjacency matrix.

The programs for A141040, there is no canonical definition to state claims against.
-/

/-! ## A141040.P9457242879108945200

`A109717(2*(n+1))-A103869(2*(n+1))`
-/

namespace A141040.P9457242879108945200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109717 (2 * (n + 1)) - A103869 (2 * (n + 1))

end

end A141040.P9457242879108945200

/-!
# A141041: a(n) = ((3 + 2*sqrt(3))^n + (3 - 2*sqrt(3))^n)/2.

The programs for A141041, the canonical program `A141041.P1206500589209288269` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141041 has offset 0).

The definition of A141041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((3+2*sqrt(3))^n+(3-2*sqrt(3))^n)/2` (program `A141041.P8450238831429641611`, by `A141041.P8450238831429641611.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141041.P17552868279254938670

`ogf((1-3x)/(1-6x-3x^2))`
-/

namespace A141041.P17552868279254938670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3] [1, -6, -3] n

end

end A141041.P17552868279254938670

namespace A141041

/-- `ogf((1-3x)/(1-6x-3x^2))` -/
def P17552868279254938670.Spec : Prop :=
  ∀ n, P17552868279254938670.a n = A141041 n

end A141041

/-! ## A141041.P1206500589209288269

`6*a(n-1)+3*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141041

/-- `6*a(n-1)+3*a(n-2)` -/
def P1206500589209288269.Spec : Prop :=
  ∀ n, (P1206500589209288269.a n : ℤ) = A141041 n

theorem P1206500589209288269.correct : P1206500589209288269.Spec := by
  intro n
  simp only [A141041]

end A141041

/-! ## A141041.P8450238831429641611

`((3+2*sqrt(3))^n+(3-2*sqrt(3))^n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A141041.P8450238831429641611
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + 2 * Real.sqrt (3 : ℝ)) ^ n + (3 - 2 * Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A141041.P8450238831429641611

namespace A141041

/-- `((3+2*sqrt(3))^n+(3-2*sqrt(3))^n)/2` -/
def P8450238831429641611.Spec : Prop :=
  ∀ n, P8450238831429641611.a n = (A141041 n : ℝ)

theorem P8450238831429641611.correct : P8450238831429641611.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A141041, Nat.add_sub_cancel, A141041.P8450238831429641611.a, A141041.P1206500589209288269.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A141041, Nat.add_sub_cancel, A141041.P8450238831429641611.a, A141041.P1206500589209288269.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A141041

/-! ## A141041.P3840119724513440562

`∑{#}[n, A201701(C(n+1, 2)+#)*3^(n-#)]`
-/

namespace A141041.P3840119724513440562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A201701 (Nat.choose (n + 1) 2 + k) : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ)

end

end A141041.P3840119724513440562

namespace A141041

/-- `∑{#}[n, A201701(C(n+1, 2)+#)*3^(n-#)]` -/
def P3840119724513440562.Spec : Prop :=
  ∀ n, P3840119724513440562.a n = (A141041 n : ℚ)

end A141041

/-! ## A141041.P5591009704813593115

`3*(a(n-2)+2*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A141041.P5591009704813593115
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (a (n - 2) + 2 * a (n - 1))

end

end A141041.P5591009704813593115

namespace A141041

/-- `3*(a(n-2)+2*a(n-1))` -/
def P5591009704813593115.Spec : Prop :=
  ∀ n, (P5591009704813593115.a n : ℤ) = A141041 n

end A141041

/-! ## A141041.P13663738519344185778

`3*(2-(2*(1-a(n-1))-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A141041.P13663738519344185778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * (2 - (2 * (1 - a (n - 1)) - a (n - 2)))

end

end A141041.P13663738519344185778

namespace A141041

/-- `3*(2-(2*(1-a(n-1))-a(n-2)))` -/
def P13663738519344185778.Spec : Prop :=
  ∀ n, P13663738519344185778.a n = A141041 n

end A141041

/-! ## A141041.P13178992306272299957

`A027151(A004273(n))`
-/

namespace A141041.P13178992306272299957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 (A004273 n).toNat

end

end A141041.P13178992306272299957

namespace A141041

/-- `A027151(A004273(n))` -/
def P13178992306272299957.Spec : Prop :=
  ∀ n, P13178992306272299957.a n = A141041 n

end A141041

/-! ## A141041.P13565505281100513959

`A027151(A014681(2*n))`
-/

namespace A141041.P13565505281100513959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 (A014681 (2 * n)).toNat

end

end A141041.P13565505281100513959

namespace A141041

/-- `A027151(A014681(2*n))` -/
def P13565505281100513959.Spec : Prop :=
  ∀ n, P13565505281100513959.a n = A141041 n

end A141041

/-! ## A141041.P6693445888805136761

`A056449(n)*A144536(n)`
-/

namespace A141041.P6693445888805136761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 n * A144536 n

end

end A141041.P6693445888805136761

namespace A141041

/-- `A056449(n)*A144536(n)` -/
def P6693445888805136761.Spec : Prop :=
  ∀ n, P6693445888805136761.a n = A141041 n

end A141041

/-! ## A141041.P484479021046103900

`A108411(n+1)*A144536(n)`
-/

namespace A141041.P484479021046103900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 1) * A144536 n

end

end A141041.P484479021046103900

namespace A141041

/-- `A108411(n+1)*A144536(n)` -/
def P484479021046103900.Spec : Prop :=
  ∀ n, P484479021046103900.a n = A141041 n

end A141041

/-! ## A141041.P14094959794256756385

`2*A090018(n)-A180028(n)`
-/

namespace A141041.P14094959794256756385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090018 n - A180028 n

end

end A141041.P14094959794256756385

namespace A141041

/-- `2*A090018(n)-A180028(n)` -/
def P14094959794256756385.Spec : Prop :=
  ∀ n, P14094959794256756385.a n = A141041 n

end A141041

/-! ## A141041.P15475033213951469640

`floor(sqrt(A000244(n))*A001075(n))`
-/

namespace A141041.P15475033213951469640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000244 n : ℝ) * (A001075 n : ℝ)⌋

end

end A141041.P15475033213951469640

namespace A141041

/-- `floor(sqrt(A000244(n))*A001075(n))` -/
def P15475033213951469640.Spec : Prop :=
  ∀ n, P15475033213951469640.a n = A141041 n

end A141041

/-! ## A141041.P7997955082438222104

`A027151(A140106(2*n+1)+n)`
-/

namespace A141041.P7997955082438222104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 (A140106 (2 * n + 1) + (n : ℤ)).toNat

end

end A141041.P7997955082438222104

namespace A141041

/-- `A027151(A140106(2*n+1)+n)` -/
def P7997955082438222104.Spec : Prop :=
  ∀ n, P7997955082438222104.a n = A141041 n

end A141041

/-! ## A141041.P5997335110553654566

`A027151(2*n+1-A040000(n))`
-/

namespace A141041.P5997335110553654566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027151 ((2 * n + 1 : ℤ) - A040000 n).toNat

end

end A141041.P5997335110553654566

namespace A141041

/-- `A027151(2*n+1-A040000(n))` -/
def P5997335110553654566.Spec : Prop :=
  ∀ n, P5997335110553654566.a n = A141041 n

end A141041

/-!
# A141042: Product of n and the n-th gap between primes: a(n) = n*A001223(n).

The programs for A141042, the canonical program `A141042.P12825020349384849254` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141042 has offset 1).

The definition of A141042 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*A001223(n+1)` (program `A141042.P12825020349384849254`, by `A141042.P12825020349384849254.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141042.P12825020349384849254

`(n+1)*A001223(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141042

/-- `(n+1)*A001223(n+1)` -/
def P12825020349384849254.Spec : Prop :=
  ∀ n, P12825020349384849254.a n = A141042 (n + 1)

theorem P12825020349384849254.correct : P12825020349384849254.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel]

end A141042

/-! ## A141042.P18303656208202976629

`(n+1)*(1+A046933(n+1))`
-/

namespace A141042.P18303656208202976629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 + A046933 (n + 1))

end

end A141042.P18303656208202976629

namespace A141042

/-- `(n+1)*(1+A046933(n+1))` -/
def P18303656208202976629.Spec : Prop :=
  ∀ n, P18303656208202976629.a n = A141042 (n + 1)

theorem P18303656208202976629.correct : P18303656208202976629.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P18303656208202976629.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A046933, A046933.P9479947770746769512.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P2716572438465086125

`(n+1)*(A000040(n+2)-A000040(n+1))`
-/

namespace A141042.P2716572438465086125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000040 (n + 2) - A000040 (n + 1))

end

end A141042.P2716572438465086125

namespace A141042

/-- `(n+1)*(A000040(n+2)-A000040(n+1))` -/
def P2716572438465086125.Spec : Prop :=
  ∀ n, P2716572438465086125.a n = A141042 (n + 1)

end A141042

/-! ## A141042.P5837479968523585192

`A147967(n+1)+1+n`
-/

namespace A141042.P5837479968523585192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147967 (n + 1) + 1 + (n : ℤ)

end

end A141042.P5837479968523585192

namespace A141042

/-- `A147967(n+1)+1+n` -/
def P5837479968523585192.Spec : Prop :=
  ∀ n, P5837479968523585192.a n = A141042 (n + 1)

theorem P5837479968523585192.correct : P5837479968523585192.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P5837479968523585192.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A147967, A147967.P11868943010124678636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P5967042946682945145

`(n+1)*sqrt(A076821(n+1))`
-/

namespace A141042.P5967042946682945145
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A076821 (n + 1) : ℝ)

end

end A141042.P5967042946682945145

namespace A141042

/-- `(n+1)*sqrt(A076821(n+1))` -/
def P5967042946682945145.Spec : Prop :=
  ∀ n, P5967042946682945145.a n = (A141042 (n + 1) : ℝ)

end A141042

/-! ## A141042.P14380675448257576287

`(n+1)*log2(A218075(n+1))`
-/

namespace A141042.P14380675448257576287
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.logb 2 (A218075 (n + 1) : ℝ)

end

end A141042.P14380675448257576287

namespace A141042

/-- `(n+1)*log2(A218075(n+1))` -/
def P14380675448257576287.Spec : Prop :=
  ∀ n, P14380675448257576287.a n = (A141042 (n + 1) : ℝ)

end A141042

/-! ## A141042.P14693705171224842958

`(n+1)*(A147966(n+1)-n)`
-/

namespace A141042.P14693705171224842958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A147966 (n + 1) - (n : ℤ))

end

end A141042.P14693705171224842958

namespace A141042

/-- `(n+1)*(A147966(n+1)-n)` -/
def P14693705171224842958.Spec : Prop :=
  ∀ n, P14693705171224842958.a n = A141042 (n + 1)

theorem P14693705171224842958.correct : P14693705171224842958.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P14693705171224842958.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A147966, A147966.P17845740115898667296.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P1884858355378920169

`(n+1)*Δ[A001748(n+1)/3]`
-/

namespace A141042.P1884858355378920169
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (f1 (n + 1) - f1 n)

end

end A141042.P1884858355378920169

namespace A141042

/-- `(n+1)*Δ[A001748(n+1)/3]` -/
def P1884858355378920169.Spec : Prop :=
  ∀ n, P1884858355378920169.a n = (A141042 (n + 1) : ℚ)

theorem P1884858355378920169.correct : P1884858355378920169.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P1884858355378920169.f1, A141042.P1884858355378920169.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A001748, A001748.P16019639290970068825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P17927391280523472800

`(n+1)*(A123128(n+1)-(n+1))`
-/

namespace A141042.P17927391280523472800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A123128 (n + 1) - (n + 1 : ℤ))

end

end A141042.P17927391280523472800

namespace A141042

/-- `(n+1)*(A123128(n+1)-(n+1))` -/
def P17927391280523472800.Spec : Prop :=
  ∀ n, P17927391280523472800.a n = A141042 (n + 1)

theorem P17927391280523472800.correct : P17927391280523472800.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P17927391280523472800.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A123128, A123128.P14620295915267660605.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P14584324011009785140

`A033287(n)-A065091(n+1)`
-/

namespace A141042.P14584324011009785140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033287 n - A065091 (n + 1)

end

end A141042.P14584324011009785140

namespace A141042

/-- `A033287(n)-A065091(n+1)` -/
def P14584324011009785140.Spec : Prop :=
  ∀ n, P14584324011009785140.a n = A141042 (n + 1)

theorem P14584324011009785140.correct : P14584324011009785140.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P14584324011009785140.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A033287, A033287.P5066765549217672205.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A062357, A062357.P6547862121818116138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P6479386834345017193

`A062357(n+1)+A000040(n+1)`
-/

namespace A141042.P6479386834345017193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1) + A000040 (n + 1)

end

end A141042.P6479386834345017193

namespace A141042

/-- `A062357(n+1)+A000040(n+1)` -/
def P6479386834345017193.Spec : Prop :=
  ∀ n, P6479386834345017193.a n = A141042 (n + 1)

theorem P6479386834345017193.correct : P6479386834345017193.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P6479386834345017193.a, A141042.P12825020349384849254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A062357, A062357.P6547862121818116138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P1996364739954146895

`A247380(n+1)-A000040(n+1)`
-/

namespace A141042.P1996364739954146895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1) - A000040 (n + 1)

end

end A141042.P1996364739954146895

namespace A141042

/-- `A247380(n+1)-A000040(n+1)` -/
def P1996364739954146895.Spec : Prop :=
  ∀ n, P1996364739954146895.a n = A141042 (n + 1)

theorem P1996364739954146895.correct : P1996364739954146895.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P1996364739954146895.a, A141042.P12825020349384849254.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A247380, A247380.P8040246546011606999.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P7229999990227793803

`(n+1)*A000720(A082910(n+1))`
-/

namespace A141042.P7229999990227793803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000720 (A082910 (n + 1)).toNat

end

end A141042.P7229999990227793803

namespace A141042

/-- `(n+1)*A000720(A082910(n+1))` -/
def P7229999990227793803.Spec : Prop :=
  ∀ n, P7229999990227793803.a n = A141042 (n + 1)

end A141042

/-! ## A141042.P773804016449235746

`A062357(n+1)+A100484(n+1)/2`
-/

namespace A141042.P773804016449235746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062357 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2

end

end A141042.P773804016449235746

namespace A141042

/-- `A062357(n+1)+A100484(n+1)/2` -/
def P773804016449235746.Spec : Prop :=
  ∀ n, P773804016449235746.a n = (A141042 (n + 1) : ℚ)

theorem P773804016449235746.correct : P773804016449235746.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P773804016449235746.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A062357, A062357.P6547862121818116138.a, A100484, A100484.P9678625670825099636.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P4083602874176147496

`A247380(n+1)-A100484(n+1)/2`
-/

namespace A141042.P4083602874176147496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247380 (n + 1) : ℚ) - (A100484 (n + 1) : ℚ) / 2

end

end A141042.P4083602874176147496

namespace A141042

/-- `A247380(n+1)-A100484(n+1)/2` -/
def P4083602874176147496.Spec : Prop :=
  ∀ n, P4083602874176147496.a n = (A141042 (n + 1) : ℚ)

theorem P4083602874176147496.correct : P4083602874176147496.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P4083602874176147496.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A100484, A100484.P9678625670825099636.a, A247380, A247380.P8040246546011606999.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P8774737308629462590

`A062357(n+1)+A095116(n+1)-n`
-/

namespace A141042.P8774737308629462590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062357 (n + 1) + (A095116 (n + 1) - (n : ℤ))

end

end A141042.P8774737308629462590

namespace A141042

/-- `A062357(n+1)+A095116(n+1)-n` -/
def P8774737308629462590.Spec : Prop :=
  ∀ n, P8774737308629462590.a n = A141042 (n + 1)

theorem P8774737308629462590.correct : P8774737308629462590.Spec := by
  intro n
  simp only [A141042, Nat.add_sub_cancel, A141042.P8774737308629462590.a, A141042.P12825020349384849254.a, A001223, A001223.P5034056745985311719.a, A062357, A062357.P6547862121818116138.a, A095116, A095116.P2789422422958858773.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141042

/-! ## A141042.P1926517018314149115

`A247380(n+1)+A007504(n)-A007504(n+1)`
-/

namespace A141042.P1926517018314149115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1) + (A007504 n - A007504 (n + 1))

end

end A141042.P1926517018314149115

namespace A141042

/-- `A247380(n+1)+A007504(n)-A007504(n+1)` -/
def P1926517018314149115.Spec : Prop :=
  ∀ n, P1926517018314149115.a n = A141042 (n + 1)

end A141042

/-! ## A141042.P6225901281202216823

`Δ[A152535(n+1)]`
-/

namespace A141042.P6225901281202216823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141042.P6225901281202216823

namespace A141042

/-- `Δ[A152535(n+1)]` -/
def P6225901281202216823.Spec : Prop :=
  ∀ n, P6225901281202216823.a n = A141042 (n + 1)

end A141042

/-! ## A141042.P17728814803908642705

`(n+1)*A075526(n+1)`
-/

namespace A141042.P17728814803908642705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A075526 (n + 1)

end

end A141042.P17728814803908642705

namespace A141042

/-- `(n+1)*A075526(n+1)` -/
def P17728814803908642705.Spec : Prop :=
  ∀ n, P17728814803908642705.a n = A141042 (n + 1)

end A141042

/-! ## A141042.P7264272179349635734

`(n+1)*A054541(n+2)`
-/

namespace A141042.P7264272179349635734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A054541 (n + 2)

end

end A141042.P7264272179349635734

namespace A141042

/-- `(n+1)*A054541(n+2)` -/
def P7264272179349635734.Spec : Prop :=
  ∀ n, P7264272179349635734.a n = A141042 (n + 1)

end A141042

/-!
# A141043: Number of sequences of length n whose terms are positive integers less than or equal to n in which the i-th term is greater than both the (i-2)nd and (i-3)rd terms.

The programs for A141043, there is no canonical definition to state claims against.
-/

/-! ## A141043.P9285580672880076377

`record[A239366(∑[4*n])]`
-/

namespace A141043.P9285580672880076377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239366 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141043.P9285580672880076377

/-! ## A141043.P8480093977181943070

`A210552(2*(n+1)²)`
-/

namespace A141043.P8480093977181943070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210552 (2 * (n + 1) ^ 2)

end

end A141043.P8480093977181943070

/-! ## A141043.P17814089456901818477

`A053538(∑[4*(n+1)])`
-/

namespace A141043.P17814089456901818477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A141043.P17814089456901818477

/-! ## A141043.P14064825473762068660

`A208342(∑[4*(n+1)]+1)`
-/

namespace A141043.P14064825473762068660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A141043.P14064825473762068660

/-! ## A141043.P11125638321387292478

`record[A053538((n+2)*floor(n/2))]`
-/

namespace A141043.P11125638321387292478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053538 ((n + 2 : ℤ) * ⌊(n : ℚ) / 2⌋).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141043.P11125638321387292478

/-!
# A141044: Two 2's followed by all 1's.

The programs for A141044, the canonical program `A141044.P12728264761853196835` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141044 has offset 0).

The definition of A141044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141044.P12728264761853196835

`ogf((2-x^2)/(1-x))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141044

/-- `ogf((2-x^2)/(1-x))` -/
def P12728264761853196835.Spec : Prop :=
  ∀ n, P12728264761853196835.a n = A141044 n

theorem P12728264761853196835.correct : P12728264761853196835.Spec := by
  intro n
  simp only [A141044]

end A141044

/-!
# A141045: Triangle of subsequences of A140825 with a mirror symmetry.

The programs for A141045, there is no canonical definition to state claims against.
-/

/-! ## A141045.P10360658620731811849

`A140825(comp[∑[n-1]]+comp[∑[n]]-n)`
-/

namespace A141045.P10360658620731811849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140825 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A141045.P10360658620731811849

/-!
# A141046: a(n) = 4*n^4.

The programs for A141046, the canonical program `A141046.P17031355750207900223` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141046 has offset 0).

The definition of A141046 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n^4` (program `A141046.P17031355750207900223`, by `A141046.P17031355750207900223.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141046.P17031355750207900223

`4*n^4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141046

/-- `4*n^4` -/
def P17031355750207900223.Spec : Prop :=
  ∀ n, (P17031355750207900223.a n : ℤ) = A141046 n

theorem P17031355750207900223.correct : P17031355750207900223.Spec := by
  intro n
  simp only [A141046]

end A141046

/-!
# A141047: Numerators of A091137(n)*T(n,n)/n! where T(i,j)=Integral (x= i.. i+1) x*(x-1)*(x-2)* .. *(x-j+1) dx.

The programs for A141047, there is no canonical definition to state claims against.
-/

/-! ## A141047.P3619715638979710768

`A002398(n)/gcd(A002398(n), A002401(n))`
-/

namespace A141047.P3619715638979710768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002398 n : ℚ) / (Int.gcd (A002398 n) (A002401 n) : ℚ)

end

end A141047.P3619715638979710768

/-! ## A141047.P7195903960156689795

`A232193(n+1)/A232248(n+1)*A091137(n)`
-/

namespace A141047.P7195903960156689795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232193 (n + 1) : ℚ) / (A232248 (n + 1) : ℚ) * (A091137 n : ℚ)

end

end A141047.P7195903960156689795

/-! ## A141047.P4937215813593469833

`A140825(∑[n]+n)`
-/

namespace A141047.P4937215813593469833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140825 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A141047.P4937215813593469833

/-! ## A141047.P1824705008905095407

`record[char[∑[n-1]]*A140825(n)]`
-/

namespace A141047.P1824705008905095407
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A140825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141047.P1824705008905095407

/-! ## A141047.P11481920049487089592

`record[A140825(comp[C(n+3, 2)-2])]`
-/

namespace A141047.P11481920049487089592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140825 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141047.P11481920049487089592

/-!
# A141048: Number of n X n binary matrices, symmetric under 180 degree rotation, with rows, considered as binary numbers, in nondecreasing order.

The programs for A141048, there is no canonical definition to state claims against.
-/

/-! ## A141048.P16809557566925957545

`A275877(n+1)+A059995(A002293(n))`
-/

namespace A141048.P16809557566925957545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275877 (n + 1) + A059995 (A002293 n).toNat

end

end A141048.P16809557566925957545

/-! ## A141048.P1269516737356174686

`A247832(A100843(n+1))+A100796(n)`
-/

namespace A141048.P1269516737356174686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (A100843 (n + 1)).toNat + A100796 n

end

end A141048.P1269516737356174686

/-!
# A141049: Number of n X n binary matrices, symmetric under 180 degree rotation, with rows, considered as binary numbers, in strictly increasing order.

The programs for A141049, there is no canonical definition to state claims against.
-/

/-! ## A141049.P10286872985761325705

`record[A027751(∑[3^(n+1)])]`
-/

namespace A141049.P10286872985761325705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141049.P10286872985761325705

/-!
# A141050: Number of n X n binary matrices, symmetric about both diagonal and antidiagonal, with rows, considered as binary numbers, in strictly increasing order.

The programs for A141050, there is no canonical definition to state claims against.
-/

/-! ## A141050.P1781345480599606846

`A151351(n+1)+A038548(A151308(n))`
-/

namespace A141050.P1781345480599606846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151351 (n + 1) + A038548 (A151308 n).toNat

end

end A141050.P1781345480599606846

/-!
# A141051: Number of symmetric n X n binary matrices with rows, considered as binary numbers, in strictly increasing order.

The programs for A141051, there is no canonical definition to state claims against.
-/

/-! ## A141051.P2581152827018610431

`A008934(n+2)+record[A093729(n)]`
-/

namespace A141051.P2581152827018610431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141051.P2581152827018610431

/-! ## A141051.P14202312004032835283

`A008934(n+1)+A008934(n+2)`
-/

namespace A141051.P14202312004032835283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008934 (n + 1) + A008934 (n + 2)

end

end A141051.P14202312004032835283

/-! ## A141051.P16067553174816337843

`A162099(lt[n, ∑{digits}[n, #²]])`
-/

namespace A141051.P16067553174816337843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x ^ 2).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162099 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A141051.P16067553174816337843

/-! ## A141051.P9860491297157934359

`A162099(A061219(n+2))`
-/

namespace A141051.P9860491297157934359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162099 (A061219 (n + 2)).toNat

end

end A141051.P9860491297157934359

/-!
# A141052: Number of runs or rising sequences of length 2 among all permutations of n.

The programs for A141052, the canonical program `A141052.P11343554682888089748` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141052 has offset 2).

The definition of A141052 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141052.P11343554682888089748

`(n+3)*a(n-1)+(n+1)!/6` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141052

/-- `(n+3)*a(n-1)+(n+1)!/6` -/
def P11343554682888089748.Spec : Prop :=
  ∀ n, P11343554682888089748.a n = (A141052 (n + 2) : ℚ)

end A141052

/-! ## A141052.P14290171958515287856

`A122843(∑[n+1]+2)`
-/

namespace A141052.P14290171958515287856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A141052.P14290171958515287856

namespace A141052

/-- `A122843(∑[n+1]+2)` -/
def P14290171958515287856.Spec : Prop :=
  ∀ n, P14290171958515287856.a n = A141052 (n + 2)

end A141052

/-! ## A141052.P8555786701670001402

`record[A122843(A080036(n))]`
-/

namespace A141052.P8555786701670001402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141052.P8555786701670001402

namespace A141052

/-- `record[A122843(A080036(n))]` -/
def P8555786701670001402.Spec : Prop :=
  ∀ n, P8555786701670001402.a n = A141052 (n + 2)

end A141052

/-! ## A141052.P9122482729302563323

`record[A122843(A123110(n)+n)]`
-/

namespace A141052.P9122482729302563323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A123110 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141052.P9122482729302563323

namespace A141052

/-- `record[A122843(A123110(n)+n)]` -/
def P9122482729302563323.Spec : Prop :=
  ∀ n, P9122482729302563323.a n = A141052 (n + 2)

end A141052

/-! ## A141052.P646936741913397586

`record[A122843(A326822(n)+n)]`
-/

namespace A141052.P646936741913397586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (A326822 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141052.P646936741913397586

namespace A141052

/-- `record[A122843(A326822(n)+n)]` -/
def P646936741913397586.Spec : Prop :=
  ∀ n, P646936741913397586.a n = A141052 (n + 2)

end A141052

/-! ## A141052.P2262283105143840911

`record[gcd(A039991(n), A122843(n+1))]`
-/

namespace A141052.P2262283105143840911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039991 n) (A122843 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141052.P2262283105143840911

namespace A141052

/-- `record[gcd(A039991(n), A122843(n+1))]` -/
def P2262283105143840911.Spec : Prop :=
  ∀ n, (P2262283105143840911.a n : ℤ) = A141052 (n + 2)

end A141052

/-! ## A141052.P10773816709087054409

`record[gcd(A048993(n), A122843(n+2))]`
-/

namespace A141052.P10773816709087054409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A122843 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141052.P10773816709087054409

namespace A141052

/-- `record[gcd(A048993(n), A122843(n+2))]` -/
def P10773816709087054409.Spec : Prop :=
  ∀ n, (P10773816709087054409.a n : ℤ) = A141052 (n + 2)

end A141052

/-! ## A141052.P3889588098345908146

`record[or(A103452(n), A122843(n+1))]`
-/

namespace A141052.P3889588098345908146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A103452 n) (A122843 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141052.P3889588098345908146

namespace A141052

/-- `record[or(A103452(n), A122843(n+1))]` -/
def P3889588098345908146.Spec : Prop :=
  ∀ n, P3889588098345908146.a n = A141052 (n + 2)

end A141052

/-! ## A141052.P10310198728790714622

`A284816(n+1)-A216119(n+1)`
-/

namespace A141052.P10310198728790714622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284816 (n + 1) - A216119 (n + 1)

end

end A141052.P10310198728790714622

namespace A141052

/-- `A284816(n+1)-A216119(n+1)` -/
def P10310198728790714622.Spec : Prop :=
  ∀ n, P10310198728790714622.a n = A141052 (n + 2)

end A141052

/-!
# A141053: Most-significant decimal digit of Fibonacci(5n+3).

The programs for A141053, the canonical program `A141053.P15553414134495763727` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141053 has offset 0).

The definition of A141053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141053.P15553414134495763727

`A008963(5*n+3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141053

/-- `A008963(5*n+3)` -/
def P15553414134495763727.Spec : Prop :=
  ∀ n, P15553414134495763727.a n = A141053 n

theorem P15553414134495763727.correct : P15553414134495763727.Spec := by
  intro n
  simp only [A141053]

end A141053

/-! ## A141053.P10973231957868063327

`dr(A008963(A016885(n)))`
-/

namespace A141053.P10973231957868063327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008963 (A016885 n).toNat)

end

end A141053.P10973231957868063327

namespace A141053

/-- `dr(A008963(A016885(n)))` -/
def P10973231957868063327.Spec : Prop :=
  ∀ n, (P10973231957868063327.a n : ℤ) = A141053 n

end A141053

/-! ## A141053.P5820231793281856963

`lcm(A008963(A016885(n)), A033999(n))`
-/

namespace A141053.P5820231793281856963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008963 (A016885 n).toNat) (A033999 n)

end

end A141053.P5820231793281856963

namespace A141053

/-- `lcm(A008963(A016885(n)), A033999(n))` -/
def P5820231793281856963.Spec : Prop :=
  ∀ n, (P5820231793281856963.a n : ℤ) = A141053 n

end A141053

/-! ## A141053.P15469273215826077498

`or(A000038(n), A008963(A016885(n)))`
-/

namespace A141053.P15469273215826077498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A008963 (A016885 n).toNat)

end

end A141053.P15469273215826077498

namespace A141053

/-- `or(A000038(n), A008963(A016885(n)))` -/
def P15469273215826077498.Spec : Prop :=
  ∀ n, P15469273215826077498.a n = A141053 n

end A141053

/-! ## A141053.P7217900166374749459

`A007318(C(2, n))*A008963(A016885(n))`
-/

namespace A141053.P7217900166374749459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A008963 (A016885 n).toNat

end

end A141053.P7217900166374749459

namespace A141053

/-- `A007318(C(2, n))*A008963(A016885(n))` -/
def P7217900166374749459.Spec : Prop :=
  ∀ n, P7217900166374749459.a n = A141053 n

end A141053

/-! ## A141053.P16098629024543080175

`A008963(A016885(n))/A007318(C(2, n+2))`
-/

namespace A141053.P16098629024543080175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008963 (A016885 n).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A141053.P16098629024543080175

namespace A141053

/-- `A008963(A016885(n))/A007318(C(2, n+2))` -/
def P16098629024543080175.Spec : Prop :=
  ∀ n, P16098629024543080175.a n = (A141053 n : ℚ)

end A141053

/-! ## A141053.P8919130694650875067

`A000041(C(2, 2*n))*A008963(A016885(n))`
-/

namespace A141053.P8919130694650875067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A008963 (A016885 n).toNat

end

end A141053.P8919130694650875067

namespace A141053

/-- `A000041(C(2, 2*n))*A008963(A016885(n))` -/
def P8919130694650875067.Spec : Prop :=
  ∀ n, P8919130694650875067.a n = A141053 n

end A141053

/-! ## A141053.P11563326249388709548

`A000041(C(n, n²))+A008963(A016885(n))-1`
-/

namespace A141053.P11563326249388709548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n ^ 2)) + (A008963 (A016885 n).toNat - 1)

end

end A141053.P11563326249388709548

namespace A141053

/-- `A000041(C(n, n²))+A008963(A016885(n))-1` -/
def P11563326249388709548.Spec : Prop :=
  ∀ n, P11563326249388709548.a n = A141053 n

end A141053

/-! ## A141053.P6297063824193635683

`((-1)^A001222(n+1))²+A008963(A016885(n))-1`
-/

namespace A141053.P6297063824193635683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A001222 (n + 1) : ℤ)) ^ 2 + (A008963 (A016885 n).toNat - 1 : ℚ)

end

end A141053.P6297063824193635683

namespace A141053

/-- `((-1)^A001222(n+1))²+A008963(A016885(n))-1` -/
def P6297063824193635683.Spec : Prop :=
  ∀ n, P6297063824193635683.a n = (A141053 n : ℚ)

end A141053

/-! ## A141053.P12142056402248347828

`floor(A000045(5*n+3)/10^floor(log(A000045(5*n+3))/log(10)))`
-/

namespace A141053.P12142056402248347828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (5 * n + 3) : ℚ) / (10 : ℚ) ^ (⌊Real.log (A000045 (5 * n + 3) : ℝ) / Real.log (10 : ℝ)⌋ : ℤ)⌋

end

end A141053.P12142056402248347828

namespace A141053

/-- `floor(A000045(5*n+3)/10^floor(log(A000045(5*n+3))/log(10)))` -/
def P12142056402248347828.Spec : Prop :=
  ∀ n, P12142056402248347828.a n = A141053 n

end A141053

/-!
# A141054: 8-idempotent numbers: a(n) = binomial(n+8,8)*8^n.

The programs for A141054, the canonical program `A141054.P6634795415695906281` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141054 has offset 0).

The definition of A141054 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+8, 8)*8^n` (program `A141054.P6634795415695906281`, by `A141054.P6634795415695906281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141054.P4822872499765061410

`8^n*C(n+8, 8)`
-/

namespace A141054.P4822872499765061410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 ^ n * Nat.choose (n + 8) 8

end

end A141054.P4822872499765061410

namespace A141054

/-- `8^n*C(n+8, 8)` -/
def P4822872499765061410.Spec : Prop :=
  ∀ n, (P4822872499765061410.a n : ℤ) = A141054 n

theorem P4822872499765061410.correct : P4822872499765061410.Spec := by
  intro n
  simp only [A141054, Nat.add_sub_cancel, A141054.P4822872499765061410.a, A141054.P6634795415695906281.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141054

/-! ## A141054.P6634795415695906281

`C(n+8, 8)*8^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141054

/-- `C(n+8, 8)*8^n` -/
def P6634795415695906281.Spec : Prop :=
  ∀ n, (P6634795415695906281.a n : ℤ) = A141054 n

theorem P6634795415695906281.correct : P6634795415695906281.Spec := by
  intro n
  simp only [A141054]

end A141054

/-! ## A141054.P5856703414707312603

`4*(16/n+2)*a(n-1)` with `a(0)=1`
-/

namespace A141054.P5856703414707312603
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  4 * ((16 / (n : ℚ) + 2) * a (n - 1))

end

end A141054.P5856703414707312603

namespace A141054

/-- `4*(16/n+2)*a(n-1)` -/
def P5856703414707312603.Spec : Prop :=
  ∀ n, P5856703414707312603.a n = (A141054 n : ℚ)

end A141054

/-! ## A141054.P16443056401983824524

`(1+n)*A053111(n)`
-/

namespace A141054.P16443056401983824524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + n : ℤ) * A053111 n

end

end A141054.P16443056401983824524

namespace A141054

/-- `(1+n)*A053111(n)` -/
def P16443056401983824524.Spec : Prop :=
  ∀ n, P16443056401983824524.a n = A141054 n

end A141054

/-! ## A141054.P2441334283236276149

`2^n*A054339(n)`
-/

namespace A141054.P2441334283236276149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A054339 n

end

end A141054.P2441334283236276149

namespace A141054

/-- `2^n*A054339(n)` -/
def P2441334283236276149.Spec : Prop :=
  ∀ n, P2441334283236276149.a n = A141054 n

end A141054

/-! ## A141054.P15595214452819472794

`4^n*A140325(n)`
-/

namespace A141054.P15595214452819472794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) * A140325 n

end

end A141054.P15595214452819472794

namespace A141054

/-- `4^n*A140325(n)` -/
def P15595214452819472794.Spec : Prop :=
  ∀ n, P15595214452819472794.a n = A141054 n

end A141054

/-! ## A141054.P6367602722287579319

`8^n*A000581(n+8)`
-/

namespace A141054.P6367602722287579319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 ^ n : ℤ) * A000581 (n + 8)

end

end A141054.P6367602722287579319

namespace A141054

/-- `8^n*A000581(n+8)` -/
def P6367602722287579319.Spec : Prop :=
  ∀ n, P6367602722287579319.a n = A141054 n

theorem P6367602722287579319.correct : P6367602722287579319.Spec := by
  intro n
  simp only [A141054, Nat.add_sub_cancel, A141054.P6367602722287579319.a, A141054.P6634795415695906281.a, A000581, A000581.P12083568850536544774.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141054

/-! ## A141054.P164495936467849204

`2^n*∑[A000580(n+7)]*A000079(n)²`
-/

namespace A141054.P164495936467849204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n ^ 2

end

end A141054.P164495936467849204

namespace A141054

/-- `2^n*∑[A000580(n+7)]*A000079(n)²` -/
def P164495936467849204.Spec : Prop :=
  ∀ n, P164495936467849204.a n = A141054 n

end A141054

/-! ## A141054.P16887449754544603253

`A000581(n+8)*A131577(A005408(n)+n)`
-/

namespace A141054.P16887449754544603253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) * A131577 (A005408 n + (n : ℤ)).toNat

end

end A141054.P16887449754544603253

namespace A141054

/-- `A000581(n+8)*A131577(A005408(n)+n)` -/
def P16887449754544603253.Spec : Prop :=
  ∀ n, P16887449754544603253.a n = A141054 n

end A141054

/-! ## A141054.P5013085495645689307

`A000079(n)*A000581(n+8)*A000079(n)²`
-/

namespace A141054.P5013085495645689307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A000581 (n + 8) * A000079 n ^ 2

end

end A141054.P5013085495645689307

namespace A141054

/-- `A000079(n)*A000581(n+8)*A000079(n)²` -/
def P5013085495645689307.Spec : Prop :=
  ∀ n, P5013085495645689307.a n = A141054 n

end A141054

/-!
# A141055: The n-th differences of the row A141045(n,.).

The programs for A141055, there is no canonical definition to state claims against.
-/

/-! ## A141055.P13705291451471544572

`∏[or(A027641(2*n+1), A027760(n+2))]`
-/

namespace A141055.P13705291451471544572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027641 (2 * n + 1)) (A027760 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141055.P13705291451471544572

/-! ## A141055.P16511933613178777637

`∏[or(A027760(n+2), A120082(2*n+1))]`
-/

namespace A141055.P16511933613178777637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027760 (n + 2)) (A120082 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141055.P16511933613178777637

/-! ## A141055.P7946401887798595583

`∏[or(A027760(n+2), A127187(2*n+1))]`
-/

namespace A141055.P7946401887798595583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027760 (n + 2)) (A127187 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141055.P7946401887798595583

/-! ## A141055.P16430450060167787697

`∏[or(A027641(2*n+1), A141056(n+2))]`
-/

namespace A141055.P16430450060167787697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027641 (2 * n + 1)) (A141056 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141055.P16430450060167787697

/-! ## A141055.P12391342186531544231

`∏[or(A027641(2*n+1), A176591(n+2))]`
-/

namespace A141055.P12391342186531544231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027641 (2 * n + 1)) (A176591 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A141055.P12391342186531544231

/-!
# A141056: 1 followed by A027760, a variant of Bernoulli number denominators.

The programs for A141056, the canonical program `A141056.P945056089172605289` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141056 has offset 0).

The definition of A141056 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141056.P949105126139638951

`A176591(n)+char[1]`
-/

namespace A141056.P949105126139638951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A141056.P949105126139638951

namespace A141056

/-- `A176591(n)+char[1]` -/
def P949105126139638951.Spec : Prop :=
  ∀ n, P949105126139638951.a n = A141056 n

end A141056

/-! ## A141056.P945056089172605289

`∏{d}[n, A089026(#+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A141056

/-- `∏{d}[n, A089026(#+1)]` -/
def P945056089172605289.Spec : Prop :=
  ∀ n, P945056089172605289.a n = A141056 n

theorem P945056089172605289.correct : P945056089172605289.Spec := by
  intro n
  simp only [A141056]

end A141056

/-! ## A141056.P4316195348713864191

`abs(1-A106458(n))+1`
-/

namespace A141056.P4316195348713864191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A106458 n| + 1

end

end A141056.P4316195348713864191

namespace A141056

/-- `abs(1-A106458(n))+1` -/
def P4316195348713864191.Spec : Prop :=
  ∀ n, P4316195348713864191.a n = A141056 n

end A141056

/-! ## A141056.P11255713779753936615

`lcm(1+n%2, A027642(n))`
-/

namespace A141056.P11255713779753936615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((1 + n % 2 : ℕ) : ℤ) (A027642 n)

end

end A141056.P11255713779753936615

namespace A141056

/-- `lcm(1+n%2, A027642(n))` -/
def P11255713779753936615.Spec : Prop :=
  ∀ n, (P11255713779753936615.a n : ℤ) = A141056 n

end A141056

/-! ## A141056.P11289414844435526565

`A027642(gcd(n, xor(1, n+1)))`
-/

namespace A141056.P11289414844435526565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (Nat.gcd n (Nat.xor 1 (n + 1)))

end

end A141056.P11289414844435526565

namespace A141056

/-- `A027642(gcd(n, xor(1, n+1)))` -/
def P11289414844435526565.Spec : Prop :=
  ∀ n, P11289414844435526565.a n = A141056 n

end A141056

/-! ## A141056.P8924830446854106339

`A106458(A141310(n)-1)`
-/

namespace A141056.P8924830446854106339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106458 (A141310 n - 1).toNat

end

end A141056.P8924830446854106339

namespace A141056

/-- `A106458(A141310(n)-1)` -/
def P8924830446854106339.Spec : Prop :=
  ∀ n, P8924830446854106339.a n = A141056 n

end A141056

/-! ## A141056.P8206540500052361438

`A040000(n)*A141459(n)`
-/

namespace A141056.P8206540500052361438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n * A141459 n

end

end A141056.P8206540500052361438

namespace A141056

/-- `A040000(n)*A141459(n)` -/
def P8206540500052361438.Spec : Prop :=
  ∀ n, P8206540500052361438.a n = A141056 n

end A141056

/-! ## A141056.P14715053973326371888

`A176591(n)*A373565(n)`
-/

namespace A141056.P14715053973326371888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 n * A373565 n

end

end A141056.P14715053973326371888

namespace A141056

/-- `A176591(n)*A373565(n)` -/
def P14715053973326371888.Spec : Prop :=
  ∀ n, P14715053973326371888.a n = A141056 n

end A141056

/-! ## A141056.P2048382029514818255

`A027642(n/A093178(n))`
-/

namespace A141056.P2048382029514818255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

end

end A141056.P2048382029514818255

namespace A141056

/-- `A027642(n/A093178(n))` -/
def P2048382029514818255.Spec : Prop :=
  ∀ n, P2048382029514818255.a n = A141056 n

end A141056

/-! ## A141056.P6932754317169546315

`A027642(gcd(n, A077221(n)))`
-/

namespace A141056.P6932754317169546315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (Int.gcd (n : ℤ) (A077221 n))

end

end A141056.P6932754317169546315

namespace A141056

/-- `A027642(gcd(n, A077221(n)))` -/
def P6932754317169546315.Spec : Prop :=
  ∀ n, P6932754317169546315.a n = A141056 n

end A141056

/-! ## A141056.P11628635279826885228

`gcd(A010673(n), A106458(n))`
-/

namespace A141056.P11628635279826885228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010673 n) (A106458 n)

end

end A141056.P11628635279826885228

namespace A141056

/-- `gcd(A010673(n), A106458(n))` -/
def P11628635279826885228.Spec : Prop :=
  ∀ n, (P11628635279826885228.a n : ℤ) = A141056 n

end A141056

/-! ## A141056.P7266371390416710679

`lcm(A000034(n), A027642(n))`
-/

namespace A141056.P7266371390416710679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A027642 n)

end

end A141056.P7266371390416710679

namespace A141056

/-- `lcm(A000034(n), A027642(n))` -/
def P7266371390416710679.Spec : Prop :=
  ∀ n, (P7266371390416710679.a n : ℤ) = A141056 n

end A141056

/-! ## A141056.P14953770510528139418

`lcm(A001285(n), A176591(n))`
-/

namespace A141056.P14953770510528139418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A176591 n)

end

end A141056.P14953770510528139418

namespace A141056

/-- `lcm(A001285(n), A176591(n))` -/
def P14953770510528139418.Spec : Prop :=
  ∀ n, (P14953770510528139418.a n : ℤ) = A141056 n

end A141056

/-! ## A141056.P7628423636283869274

`lcm(A141459(n), A280560(n))`
-/

namespace A141056.P7628423636283869274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A141459 n) (A280560 n)

end

end A141056.P7628423636283869274

namespace A141056

/-- `lcm(A141459(n), A280560(n))` -/
def P7628423636283869274.Spec : Prop :=
  ∀ n, (P7628423636283869274.a n : ℤ) = A141056 n

end A141056

/-! ## A141056.P14189491329580908144

`A027642(1-A093178(n)+n)`
-/

namespace A141056.P14189491329580908144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (1 - A093178 n + (n : ℤ)).toNat

end

end A141056.P14189491329580908144

namespace A141056

/-- `A027642(1-A093178(n)+n)` -/
def P14189491329580908144.Spec : Prop :=
  ∀ n, P14189491329580908144.a n = A141056 n

end A141056

/-! ## A141056.P3460067081713339700

`A027642(n)+1-A266591(n)`
-/

namespace A141056.P3460067081713339700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 n + (1 - A266591 n)

end

end A141056.P3460067081713339700

namespace A141056

/-- `A027642(n)+1-A266591(n)` -/
def P3460067081713339700.Spec : Prop :=
  ∀ n, P3460067081713339700.a n = A141056 n

end A141056

/-! ## A141056.P12630622530944026259

`A027642(1-(A093178(n)-n))`
-/

namespace A141056.P12630622530944026259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027642 (1 - (A093178 n - (n : ℤ))).toNat

end

end A141056.P12630622530944026259

namespace A141056

/-- `A027642(1-(A093178(n)-n))` -/
def P12630622530944026259.Spec : Prop :=
  ∀ n, P12630622530944026259.a n = A141056 n

end A141056

/-! ## A141056.P16972228780098246769

`2*A027642(n)-A106458(n)`
-/

namespace A141056.P16972228780098246769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027642 n - A106458 n

end

end A141056.P16972228780098246769

namespace A141056

/-- `2*A027642(n)-A106458(n)` -/
def P16972228780098246769.Spec : Prop :=
  ∀ n, P16972228780098246769.a n = A141056 n

end A141056

/-! ## A141056.P15148384167614205754

`(2-A000007(n))*A141459(n)`
-/

namespace A141056.P15148384167614205754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A141459 n

end

end A141056.P15148384167614205754

namespace A141056

/-- `(2-A000007(n))*A141459(n)` -/
def P15148384167614205754.Spec : Prop :=
  ∀ n, P15148384167614205754.a n = A141056 n

end A141056

/-! ## A141056.P16212790822614398247

`A176591(xor(1, n+1))`
-/

namespace A141056.P16212790822614398247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176591 (Nat.xor 1 (n + 1))

end

end A141056.P16212790822614398247

namespace A141056

/-- `A176591(xor(1, n+1))` -/
def P16212790822614398247.Spec : Prop :=
  ∀ n, P16212790822614398247.a n = A141056 n

end A141056

/-!
# A141057: Number of Abelian cubes of length 3n over an alphabet of size 3. An Abelian cube is a string of the form x x' x'' with |x| = |x'| = |x''| and x is a permutation of x' and x''.

The programs for A141057, the canonical program `A141057.P14594525708786516923` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141057 has offset 0).

The definition of A141057 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141057.P14594525708786516923

`∑{#}[n, C(n, #)^3*A000172(#)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141057

/-- `∑{#}[n, C(n, #)^3*A000172(#)]` -/
def P14594525708786516923.Spec : Prop :=
  ∀ n, P14594525708786516923.a n = A141057 n

theorem P14594525708786516923.correct : P14594525708786516923.Spec := by
  intro n
  simp only [A141057]

end A141057

/-! ## A141057.P16835359999412094911

`record[A198810(n)]/A006480(n)`
-/

namespace A141057.P16835359999412094911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198810 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A006480 n : ℚ)

end

end A141057.P16835359999412094911

namespace A141057

/-- `record[A198810(n)]/A006480(n)` -/
def P16835359999412094911.Spec : Prop :=
  ∀ n, P16835359999412094911.a n = (A141057 n : ℚ)

end A141057

/-! ## A141057.P9458838993202341811

`record[A198810(n)/A022916(n)]`
-/

namespace A141057.P9458838993202341811
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198810 n : ℚ) / (A022916 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141057.P9458838993202341811

namespace A141057

/-- `record[A198810(n)/A022916(n)]` -/
def P9458838993202341811.Spec : Prop :=
  ∀ n, P9458838993202341811.a n = (A141057 n : ℚ)

end A141057

/-! ## A141057.P13114368224661345275

`A198810(3*n)/A006480(n)`
-/

namespace A141057.P13114368224661345275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198810 (3 * n) : ℚ) / (A006480 n : ℚ)

end

end A141057.P13114368224661345275

namespace A141057

/-- `A198810(3*n)/A006480(n)` -/
def P13114368224661345275.Spec : Prop :=
  ∀ n, P13114368224661345275.a n = (A141057 n : ℚ)

end A141057

/-! ## A141057.P8815601657904292902

`A198810(3*n)/A320824(∑[n])`
-/

namespace A141057.P8815601657904292902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A198810 (3 * n) : ℚ) / (A320824 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A141057.P8815601657904292902

namespace A141057

/-- `A198810(3*n)/A320824(∑[n])` -/
def P8815601657904292902.Spec : Prop :=
  ∀ n, P8815601657904292902.a n = (A141057 n : ℚ)

end A141057

/-!
# A141058: Pats by first entry.

The programs for A141058, there is no canonical definition to state claims against.
-/

/-! ## A141058.P11936459820456265849

`A003056(A059235(n+1))%record[A158853(n)]`
-/

namespace A141058.P11936459820456265849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158853 (n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A059235 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A141058.P11936459820456265849

/-! ## A141058.P13750256737733158437

`A003056(A059235(n+1)%A084293(n+1))`
-/

namespace A141058.P13750256737733158437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A059235 (n + 1)) (A084293 (n + 1))).toNat

end

end A141058.P13750256737733158437

/-! ## A141058.P7462939001734879321

`A178487(2*A059432(n)²)`
-/

namespace A141058.P7462939001734879321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (2 * A059432 n ^ 2).toNat

end

end A141058.P7462939001734879321

/-! ## A141058.P7078984149365572682

`A178489(A350259(n))`
-/

namespace A141058.P7078984149365572682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (A350259 n).toNat

end

end A141058.P7078984149365572682

/-! ## A141058.P10043996685905977560

`A000120(A390723(n)+A348800(n))`
-/

namespace A141058.P10043996685905977560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A390723 n + A348800 n).toNat

end

end A141058.P10043996685905977560

/-!
# A141059: Number of numbers m such that n = 0 (mod usigma(m)), where usigma(m) is the sum of unitary divisors of m (A034448).

The programs for A141059, there is no canonical definition to state claims against.
-/

/-! ## A141059.P17336940186007999411

`∑{d}[n+1, A063974(#)]`
-/

namespace A141059.P17336940186007999411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063974 d

end

end A141059.P17336940186007999411

/-! ## A141059.P3888349960856043201

`A050379(n+1)+A010059(A187829(n+1))`
-/

namespace A141059.P3888349960856043201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (n + 1) + A010059 (A187829 (n + 1)).toNat

end

end A141059.P3888349960856043201

/-! ## A141059.P919230338973207478

`A355741(A240910(2*(n+2)))+A001055(n+1)`
-/

namespace A141059.P919230338973207478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A240910 (2 * (n + 2))).toNat + A001055 (n + 1)

end

end A141059.P919230338973207478

/-!
# A141060: Fourth quadrisection of Jacobsthal numbers A001045: a(n)=16a(n-1)-5.

The programs for A141060, the canonical program `A141060.P19134060271740419` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141060 has offset 0).

The definition of A141060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `16*a(n-1)-5` (program `A141060.P19134060271740419`, by `A141060.P19134060271740419.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141060.P10208819404665513146

`ogf((3-8x)/(1-17x+16x^2))`
-/

namespace A141060.P10208819404665513146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -8] [1, -17, 16] n

end

end A141060.P10208819404665513146

namespace A141060

/-- `ogf((3-8x)/(1-17x+16x^2))` -/
def P10208819404665513146.Spec : Prop :=
  ∀ n, P10208819404665513146.a n = A141060 n

end A141060

/-! ## A141060.P19134060271740419

`16*a(n-1)-5` with `a(0)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141060

/-- `16*a(n-1)-5` -/
def P19134060271740419.Spec : Prop :=
  ∀ n, P19134060271740419.a n = A141060 n

theorem P19134060271740419.correct : P19134060271740419.Spec := by
  intro n
  simp only [A141060]

end A141060

/-! ## A141060.P12775001058025787930

`1/3*(1+8*16^n)`
-/

namespace A141060.P12775001058025787930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 3 * (1 + 8 * 16 ^ n : ℚ)

end

end A141060.P12775001058025787930

namespace A141060

/-- `1/3*(1+8*16^n)` -/
def P12775001058025787930.Spec : Prop :=
  ∀ n, P12775001058025787930.a n = (A141060 n : ℚ)

theorem P12775001058025787930.correct : P12775001058025787930.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A141060, Nat.add_sub_cancel, A141060.P12775001058025787930.a, A141060.P19134060271740419.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A141060, Nat.add_sub_cancel, A141060.P12775001058025787930.a, A141060.P19134060271740419.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A141060

/-! ## A141060.P1585206399573311158

`A001045(4*n+3)`
-/

namespace A141060.P1585206399573311158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (4 * n + 3)

end

end A141060.P1585206399573311158

namespace A141060

/-- `A001045(4*n+3)` -/
def P1585206399573311158.Spec : Prop :=
  ∀ n, P1585206399573311158.a n = A141060 n

end A141060

/-! ## A141060.P4851071394558094346

`10*A141032(n)+3`
-/

namespace A141060.P4851071394558094346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A141032 n + 3

end

end A141060.P4851071394558094346

namespace A141060

/-- `10*A141032(n)+3` -/
def P4851071394558094346.Spec : Prop :=
  ∀ n, P4851071394558094346.a n = A141060 n

end A141060

/-! ## A141060.P8571684495755379831

`A139792(n)+A013776(n)`
-/

namespace A141060.P8571684495755379831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139792 n + A013776 n

end

end A141060.P8571684495755379831

namespace A141060

/-- `A139792(n)+A013776(n)` -/
def P8571684495755379831.Spec : Prop :=
  ∀ n, P8571684495755379831.a n = A141060 n

end A141060

/-! ## A141060.P13722424154484306703

`lcm(16, a(n-1))-5` with `a(0)=3`
-/

namespace A141060.P13722424154484306703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (Int.lcm 16 (a (n - 1)) : ℤ) - 5

end

end A141060.P13722424154484306703

namespace A141060

/-- `lcm(16, a(n-1))-5` -/
def P13722424154484306703.Spec : Prop :=
  ∀ n, P13722424154484306703.a n = A141060 n

end A141060

/-! ## A141060.P2532672818959422450

`a(n-1)/(1/4)²-5` with `a(0)=3`
-/

namespace A141060.P2532672818959422450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - 5

end

end A141060.P2532672818959422450

namespace A141060

/-- `a(n-1)/(1/4)²-5` -/
def P2532672818959422450.Spec : Prop :=
  ∀ n, P2532672818959422450.a n = (A141060 n : ℚ)

end A141060

/-! ## A141060.P788941814006132667

`record[xor(2-a(n-1), 2^(n+1+n))]` with `a(0)=3`
-/

namespace A141060.P788941814006132667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.xor (2 - f1 (n - 1)) (2 ^ (n + 1 + n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141060.P788941814006132667

namespace A141060

/-- `record[xor(2-a(n-1), 2^(n+1+n))]` -/
def P788941814006132667.Spec : Prop :=
  ∀ n, P788941814006132667.a n = A141060 n

end A141060

/-! ## A141060.P10285241444957668583

`A112031(8*n)`
-/

namespace A141060.P10285241444957668583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112031 (8 * n)

end

end A141060.P10285241444957668583

namespace A141060

/-- `A112031(8*n)` -/
def P10285241444957668583.Spec : Prop :=
  ∀ n, P10285241444957668583.a n = A141060 n

end A141060

/-!
# A141061: Number of primes between n*p(n) and (n+1)*p(n+1), where p(n) is the n-th prime.

The programs for A141061, the canonical program `A141061.P17966248916271549610` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141061 has offset 1).

The definition of A141061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141061.P17966248916271549610

`A000720((n+2)*A000040(n+2))-A000720((n+1)*A000040(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141061

/-- `A000720((n+2)*A000040(n+2))-A000720((n+1)*A000040(n+1))` -/
def P17966248916271549610.Spec : Prop :=
  ∀ n, P17966248916271549610.a n = A141061 (n + 1)

theorem P17966248916271549610.correct : P17966248916271549610.Spec := by
  intro n
  simp only [A141061, Nat.add_sub_cancel]

end A141061

/-! ## A141061.P4789439254120666627

`Δ[A057855(n+1)]`
-/

namespace A141061.P4789439254120666627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141061.P4789439254120666627

namespace A141061

/-- `Δ[A057855(n+1)]` -/
def P4789439254120666627.Spec : Prop :=
  ∀ n, P4789439254120666627.a n = A141061 (n + 1)

theorem P4789439254120666627.correct : P4789439254120666627.Spec := by
  intro n
  simp only [A141061, Nat.add_sub_cancel, A141061.P4789439254120666627.f1, A141061.P4789439254120666627.a, A141061.P17966248916271549610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A057855, A057855.P14395477532132651473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141061

/-! ## A141061.P1445735574360099906

`Δ[A065313(p?[comp[n²]])]`
-/

namespace A141061.P1445735574360099906
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141061.P1445735574360099906

namespace A141061

/-- `Δ[A065313(p?[comp[n²]])]` -/
def P1445735574360099906.Spec : Prop :=
  ∀ n, P1445735574360099906.a n = A141061 (n + 1)

end A141061

/-! ## A141061.P14636270441444137349

`Δ[A065313(Δ[A007504(n)])]`
-/

namespace A141061.P14636270441444137349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141061.P14636270441444137349

namespace A141061

/-- `Δ[A065313(Δ[A007504(n)])]` -/
def P14636270441444137349.Spec : Prop :=
  ∀ n, P14636270441444137349.a n = A141061 (n + 1)

end A141061

/-! ## A141061.P15925519594279728243

`Δ[A000720(A033286(n+1))]`
-/

namespace A141061.P15925519594279728243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A033286 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141061.P15925519594279728243

namespace A141061

/-- `Δ[A000720(A033286(n+1))]` -/
def P15925519594279728243.Spec : Prop :=
  ∀ n, P15925519594279728243.a n = A141061 (n + 1)

theorem P15925519594279728243.correct : P15925519594279728243.Spec := by
  intro n
  simp only [A141061, Nat.add_sub_cancel, A141061.P15925519594279728243.f1, A141061.P15925519594279728243.a, A141061.P17966248916271549610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033286, A033286.P2794343547372572705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141061

/-! ## A141061.P16136787745262846982

`Δ[A065313(A000040(n+1))]`
-/

namespace A141061.P16136787745262846982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065313 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141061.P16136787745262846982

namespace A141061

/-- `Δ[A065313(A000040(n+1))]` -/
def P16136787745262846982.Spec : Prop :=
  ∀ n, P16136787745262846982.a n = A141061 (n + 1)

end A141061

/-! ## A141061.P11263652114222087343

`A057855(n+2)-A057855(n+1)`
-/

namespace A141061.P11263652114222087343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057855 (n + 2) - A057855 (n + 1)

end

end A141061.P11263652114222087343

namespace A141061

/-- `A057855(n+2)-A057855(n+1)` -/
def P11263652114222087343.Spec : Prop :=
  ∀ n, P11263652114222087343.a n = A141061 (n + 1)

theorem P11263652114222087343.correct : P11263652114222087343.Spec := by
  intro n
  simp only [A141061, Nat.add_sub_cancel, A141061.P11263652114222087343.a, A141061.P17966248916271549610.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A057855, A057855.P14395477532132651473.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141061

/-! ## A141061.P14271220729179434915

`Δ[A000720((n+1)*A000040(n+1))]`
-/

namespace A141061.P14271220729179434915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141061.P14271220729179434915

namespace A141061

/-- `Δ[A000720((n+1)*A000040(n+1))]` -/
def P14271220729179434915.Spec : Prop :=
  ∀ n, P14271220729179434915.a n = A141061 (n + 1)

theorem P14271220729179434915.correct : P14271220729179434915.Spec := by
  intro n
  simp only [A141061, Nat.add_sub_cancel, A141061.P14271220729179434915.f1, A141061.P14271220729179434915.a, A141061.P17966248916271549610.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141061

/-! ## A141061.P7624205243654596175

`Δ[A000720((n+1)*A008578(n+2))]`
-/

namespace A141061.P7624205243654596175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A008578 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141061.P7624205243654596175

namespace A141061

/-- `Δ[A000720((n+1)*A008578(n+2))]` -/
def P7624205243654596175.Spec : Prop :=
  ∀ n, P7624205243654596175.a n = A141061 (n + 1)

end A141061

/-! ## A141061.P15830575803888673262

`Δ[A000720(lcm(n+1, A000040(n+1)))]`
-/

namespace A141061.P15830575803888673262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lcm (n + 1 : ℤ) (A000040 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A141061.P15830575803888673262

namespace A141061

/-- `Δ[A000720(lcm(n+1, A000040(n+1)))]` -/
def P15830575803888673262.Spec : Prop :=
  ∀ n, P15830575803888673262.a n = A141061 (n + 1)

end A141061

/-!
# A141062: a(n) = (prime(n) - 1) mod (sum of digits of prime(n)).

The programs for A141062, there is no canonical definition to state claims against.
-/

/-! ## A141062.P2462646655397217854

`A141022(A006093(n+1))`
-/

namespace A141062.P2462646655397217854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141022 (A006093 (n + 1)).toNat

end

end A141062.P2462646655397217854

/-! ## A141062.P12296325111929853882

`A141022(record[A000010(n+1)])`
-/

namespace A141062.P12296325111929853882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141062.P12296325111929853882

/-! ## A141062.P11033940418442363180

`A141022(record[A318878(n+1)])`
-/

namespace A141062.P11033940418442363180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141022 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141062.P11033940418442363180

/-! ## A141062.P10492748080383310584

`A141022(A040976(n+1)+1)`
-/

namespace A141062.P10492748080383310584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141022 (A040976 (n + 1) + 1).toNat

end

end A141062.P10492748080383310584

/-! ## A141062.P4365385318476780292

`A141022(A000040(n+1)-1)`
-/

namespace A141062.P4365385318476780292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141022 (A000040 (n + 1) - 1).toNat

end

end A141062.P4365385318476780292

/-! ## A141062.P9241164287590892033

`A141022(eq[1, A001222(n+1)])`
-/

namespace A141062.P9241164287590892033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141062.P9241164287590892033

/-! ## A141062.P17742217380690390915

`A141022(eq[2, A000005(n+1)])`
-/

namespace A141062.P17742217380690390915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141062.P17742217380690390915

/-! ## A141062.P3380065162877920037

`A141022(eq[n, A000010(n+1)])`
-/

namespace A141062.P3380065162877920037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A141062.P3380065162877920037

/-! ## A141062.P16041713744208997199

`A006093(n+1)%A007605(n+1)`
-/

namespace A141062.P16041713744208997199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006093 (n + 1)) (A007605 (n + 1))

end

end A141062.P16041713744208997199

/-! ## A141062.P12555473235046286689

`A039915(n+1)%A007605(n+1)`
-/

namespace A141062.P12555473235046286689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039915 (n + 1)) (A007605 (n + 1))

end

end A141062.P12555473235046286689

/-!
# A141063: a(n) = n mod (sum of digits of prime(n)).

The programs for A141063, the canonical program `A141063.P7516955287568242112` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141063 has offset 1).

The definition of A141063 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141063.P7516955287568242112

`(n+1)%A007953(A000040(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141063

/-- `(n+1)%A007953(A000040(n+1))` -/
def P7516955287568242112.Spec : Prop :=
  ∀ n, P7516955287568242112.a n = A141063 (n + 1)

theorem P7516955287568242112.correct : P7516955287568242112.Spec := by
  intro n
  simp only [A141063, Nat.add_sub_cancel]

end A141063

/-! ## A141063.P7950367501315774802

`(n+1)%Δ[A051351(n)]`
-/

namespace A141063.P7950367501315774802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A141063.P7950367501315774802

namespace A141063

/-- `(n+1)%Δ[A051351(n)]` -/
def P7950367501315774802.Spec : Prop :=
  ∀ n, P7950367501315774802.a n = A141063 (n + 1)

end A141063

/-! ## A141063.P12627014052345650357

`(1+n)%A007605(n+1)`
-/

namespace A141063.P12627014052345650357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 + n : ℤ) (A007605 (n + 1))

end

end A141063.P12627014052345650357

namespace A141063

/-- `(1+n)%A007605(n+1)` -/
def P12627014052345650357.Spec : Prop :=
  ∀ n, P12627014052345650357.a n = A141063 (n + 1)

theorem P12627014052345650357.correct : P12627014052345650357.Spec := by
  intro n
  simp only [A141063, Nat.add_sub_cancel, A141063.P12627014052345650357.a, A141063.P7516955287568242112.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007605, A007605.P14521423581831153617.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141063

/-! ## A141063.P4312872284246677922

`root(n+1, 2)²%∑{digits}[record[A000010(n+1)+1], #]`
-/

namespace A141063.P4312872284246677922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)) ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141063.P4312872284246677922

namespace A141063

/-- `root(n+1, 2)²%∑{digits}[record[A000010(n+1)+1], #]` -/
def P4312872284246677922.Spec : Prop :=
  ∀ n, P4312872284246677922.a n = A141063 (n + 1)

end A141063

/-!
# A141064: List of different primes in Pascal-like triangles with index of asymmetry y = 1 and index of obliquity z = 0 or z = 1.

The programs for A141064, there is no canonical definition to state claims against.
-/

/-! ## A141064.P5375468961392945013

`record[p?[A140993(n+1)]]`
-/

namespace A141064.P5375468961392945013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140993 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141064.P5375468961392945013

/-! ## A141064.P2634387569663247478

`record[A139171(A140993(n+3))]`
-/

namespace A141064.P2634387569663247478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (A140993 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141064.P2634387569663247478

/-! ## A141064.P10062792033385497265

`record[A006530(A140993(n+5))]`
-/

namespace A141064.P10062792033385497265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A140993 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141064.P10062792033385497265

/-!
# A141067: List of different primes in Pascal-like triangles with index of asymmetry y = 2 and index of obliquity z = 0 or z = 1.

The programs for A141067, there is no canonical definition to state claims against.
-/

/-! ## A141067.P9400559847949385604

`record[p?[A000026(A140994(n))]]`
-/

namespace A141067.P9400559847949385604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A140994 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141067.P9400559847949385604

/-! ## A141067.P5855745360099129080

`A246676(record[p?[A140994(n)]])`
-/

namespace A141067.P5855745360099129080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140994 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246676 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141067.P5855745360099129080

/-!
# A141068: List of different primes in Pascal-like triangles with index of asymmetry y = 3 and index of obliquity z = 0 or z = 1.

The programs for A141068, there is no canonical definition to state claims against.
-/

/-! ## A141068.P12602432187022132343

`record[p?[A140996(xor(1, n))]]`
-/

namespace A141068.P12602432187022132343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (Nat.xor 1 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141068.P12602432187022132343

/-! ## A141068.P8225780063495523979

`record[p?[A140996(A004442(n))]]`
-/

namespace A141068.P8225780063495523979
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A004442 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141068.P8225780063495523979

/-!
# A141071: a(n) = prime(n) mod (sum of base-10 digits of n) where prime(n) is the n-th prime.

The programs for A141071, the canonical program `A141071.P16936850486521262733` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141071 has offset 1).

The definition of A141071 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A141071.P16936850486521262733

`A000040(n+1)%A007953(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A141071

/-- `A000040(n+1)%A007953(n+1)` -/
def P16936850486521262733.Spec : Prop :=
  ∀ n, P16936850486521262733.a n = A141071 (n + 1)

theorem P16936850486521262733.correct : P16936850486521262733.Spec := by
  intro n
  simp only [A141071, Nat.add_sub_cancel]

end A141071

/-! ## A141071.P1313905272869372122

`Δ[A007504(n)]%∑{digits}[n+1, #]`
-/

namespace A141071.P1313905272869372122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141071.P1313905272869372122

namespace A141071

/-- `Δ[A007504(n)]%∑{digits}[n+1, #]` -/
def P1313905272869372122.Spec : Prop :=
  ∀ n, P1313905272869372122.a n = A141071 (n + 1)

end A141071

/-! ## A141071.P18080624284161855523

`p?[A259153(n)]%∑{digits}[n+1, #]`
-/

namespace A141071.P18080624284161855523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141071.P18080624284161855523

namespace A141071

/-- `p?[A259153(n)]%∑{digits}[n+1, #]` -/
def P18080624284161855523.Spec : Prop :=
  ∀ n, P18080624284161855523.a n = A141071 (n + 1)

end A141071

/-! ## A141071.P399026688803575045

`sqrt(A001248(n+1))%∑{digits}[n+1, #]`
-/

namespace A141071.P399026688803575045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))) ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141071.P399026688803575045

namespace A141071

/-- `sqrt(A001248(n+1))%∑{digits}[n+1, #]` -/
def P399026688803575045.Spec : Prop :=
  ∀ n, P399026688803575045.a n = A141071 (n + 1)

end A141071

/-! ## A141071.P10128189934173589279

`∑[A054541(n+1)]%∑{digits}[n+1, #]`
-/

namespace A141071.P10128189934173589279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141071.P10128189934173589279

namespace A141071

/-- `∑[A054541(n+1)]%∑{digits}[n+1, #]` -/
def P10128189934173589279.Spec : Prop :=
  ∀ n, P10128189934173589279.a n = A141071 (n + 1)

end A141071

/-! ## A141071.P7768532442151267108

`p?[abs(xor(n, -2))]%∑{digits}[n+1, #]`
-/

namespace A141071.P7768532442151267108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141071.P7768532442151267108

namespace A141071

/-- `p?[abs(xor(n, -2))]%∑{digits}[n+1, #]` -/
def P7768532442151267108.Spec : Prop :=
  ∀ n, P7768532442151267108.a n = A141071 (n + 1)

end A141071

/-! ## A141071.P8412994912588339844

`p?[xor(1, n)+1]%∑{digits}[n+1, #]`
-/

namespace A141071.P8412994912588339844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) % ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

end

end A141071.P8412994912588339844

namespace A141071

/-- `p?[xor(1, n)+1]%∑{digits}[n+1, #]` -/
def P8412994912588339844.Spec : Prop :=
  ∀ n, (P8412994912588339844.a n : ℤ) = A141071 (n + 1)

end A141071

/-! ## A141071.P12028495022172624626

`record[A093074(n+1)]%∑{digits}[n+1, #]`
-/

namespace A141071.P12028495022172624626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141071.P12028495022172624626

namespace A141071

/-- `record[A093074(n+1)]%∑{digits}[n+1, #]` -/
def P12028495022172624626.Spec : Prop :=
  ∀ n, P12028495022172624626.a n = A141071 (n + 1)

end A141071

/-! ## A141071.P7936880009715466930

`record[A263027(n+1)]%∑{digits}[n+1, #]`
-/

namespace A141071.P7936880009715466930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263027 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A141071.P7936880009715466930

namespace A141071

/-- `record[A263027(n+1)]%∑{digits}[n+1, #]` -/
def P7936880009715466930.Spec : Prop :=
  ∀ n, P7936880009715466930.a n = A141071 (n + 1)

end A141071

/-! ## A141071.P6303143281167652569

`A160656(n+1)%A131650(n+1)`
-/

namespace A141071.P6303143281167652569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160656 (n + 1)) (A131650 (n + 1))

end

end A141071.P6303143281167652569

namespace A141071

/-- `A160656(n+1)%A131650(n+1)` -/
def P6303143281167652569.Spec : Prop :=
  ∀ n, P6303143281167652569.a n = A141071 (n + 1)

end A141071

/-!
# A141072: Sum of diagonal numbers in a Pascal-like triangle with index of asymmetry y = 3 and index of obliquity z = 0 (going upwards, left to right).

The programs for A141072, the canonical program `A141072.P406076998904641445` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141072 has offset 1).

The definition of A141072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141072.P406076998904641445

`ogf((1-x^2-x^3-x^4-x^5)/(1-x-2x^2+x^6+x^7))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A141072

/-- `ogf((1-x^2-x^3-x^4-x^5)/(1-x-2x^2+x^6+x^7))` -/
def P406076998904641445.Spec : Prop :=
  ∀ n, P406076998904641445.a n = A141072 (n + 1)

theorem P406076998904641445.correct : P406076998904641445.Spec := by
  intro n
  simp only [A141072, Nat.add_sub_cancel]

end A141072

/-! ## A141072.P18295250080811504403

`ceil(record[∑[A122997(n)/2]])`
-/

namespace A141072.P18295250080811504403
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122997 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)⌉

end

end A141072.P18295250080811504403

namespace A141072

/-- `ceil(record[∑[A122997(n)/2]])` -/
def P18295250080811504403.Spec : Prop :=
  ∀ n, P18295250080811504403.a n = A141072 (n + 1)

end A141072

/-! ## A141072.P16313732016018598880

`A001591(n+3)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A141072.P16313732016018598880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A001591 (n + 3) + a (n - 2)

end

end A141072.P16313732016018598880

namespace A141072

/-- `A001591(n+3)+a(n-2)` -/
def P16313732016018598880.Spec : Prop :=
  ∀ n, P16313732016018598880.a n = A141072 (n + 1)

end A141072

/-! ## A141072.P10510483580596431936

`∑[∑[A124312(n+2)]-a(n-1)]` with `a(0)=1`
-/

namespace A141072.P10510483580596431936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141072.P10510483580596431936

namespace A141072

/-- `∑[∑[A124312(n+2)]-a(n-1)]` -/
def P10510483580596431936.Spec : Prop :=
  ∀ n, P10510483580596431936.a n = A141072 (n + 1)

end A141072

/-! ## A141072.P11350285071169498995

`1-(a(n-1)-A001949(n+4))` with `a(0)=1`
-/

namespace A141072.P11350285071169498995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (a (n - 1) - A001949 (n + 4))

end

end A141072.P11350285071169498995

namespace A141072

/-- `1-(a(n-1)-A001949(n+4))` -/
def P11350285071169498995.Spec : Prop :=
  ∀ n, P11350285071169498995.a n = A141072 (n + 1)

end A141072

/-! ## A141072.P11168574193125363832

`ceil(A107243(n+5)/A001591(n+7))`
-/

namespace A141072.P11168574193125363832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A107243 (n + 5) : ℚ) / (A001591 (n + 7) : ℚ)⌉

end

end A141072.P11168574193125363832

namespace A141072

/-- `ceil(A107243(n+5)/A001591(n+7))` -/
def P11168574193125363832.Spec : Prop :=
  ∀ n, P11168574193125363832.a n = A141072 (n + 1)

end A141072

/-!
# A141073: List of central integer pairs in Pascal-like triangles with index of asymmetry y = 3 and index of obliqueness z = 0 or z = 1.

The programs for A141073, the canonical program `A141073.P12102067151743280568` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141073 has offset 1).

The definition of A141073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141073.P13525085500845172995

`ogf((1+x+3x^2+x^3+3x^4+x^5+3x^6+x^8)/(1-x^2-x^4-2x^6-x^8))`
-/

namespace A141073.P13525085500845172995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 3, 1, 3, 1, 3, 0, 1] [1, 0, -1, 0, -1, 0, -2, 0, -1] n

end

end A141073.P13525085500845172995

namespace A141073

/-- `ogf((1+x+3x^2+x^3+3x^4+x^5+3x^6+x^8)/(1-x^2-x^4-2x^6-x^8))` -/
def P13525085500845172995.Spec : Prop :=
  ∀ n, P13525085500845172995.a n = A141073 (n + 1)

end A141073

/-! ## A141073.P12102067151743280568

`2*a(n-2)+A129847(floor((n+1)/2)-(4+(-1)^(n+1)))` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2, a(4)=8, a(5)=4, a(6)=17, a(7)=8`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141073

/-- `2*a(n-2)+A129847(floor((n+1)/2)-(4+(-1)^(n+1)))` -/
def P12102067151743280568.Spec : Prop :=
  ∀ n, P12102067151743280568.a n = A141073 (n + 1)

theorem P12102067151743280568.correct : P12102067151743280568.Spec := by
  intro n
  simp only [A141073, Nat.add_sub_cancel]

end A141073

/-! ## A141073.P9419442992602185319

`A309462(ceil(xor(1, n)/2)-C(2, n+2))`
-/

namespace A141073.P9419442992602185319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309462 (⌈(Nat.xor 1 n : ℚ) / 2⌉ - (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A141073.P9419442992602185319

namespace A141073

/-- `A309462(ceil(xor(1, n)/2)-C(2, n+2))` -/
def P9419442992602185319.Spec : Prop :=
  ∀ n, P9419442992602185319.a n = A141073 (n + 1)

end A141073

/-! ## A141073.P419725781981137860

`A309462(ceil(xor(1, n)/2)%(or(1, n)+n))`
-/

namespace A141073.P419725781981137860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309462 (Int.tmod ⌈(Nat.xor 1 n : ℚ) / 2⌉ (Nat.lor 1 n + n : ℤ)).toNat

end

end A141073.P419725781981137860

namespace A141073

/-- `A309462(ceil(xor(1, n)/2)%(or(1, n)+n))` -/
def P419725781981137860.Spec : Prop :=
  ∀ n, P419725781981137860.a n = A141073 (n + 1)

end A141073

/-! ## A141073.P8797431573782179326

`A309462(val(A063759(n), 2))`
-/

namespace A141073.P8797431573782179326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309462 (SequenceMachineLib.valuation (A063759 n).toNat 2)

end

end A141073.P8797431573782179326

namespace A141073

/-- `A309462(val(A063759(n), 2))` -/
def P8797431573782179326.Spec : Prop :=
  ∀ n, P8797431573782179326.a n = A141073 (n + 1)

end A141073

/-! ## A141073.P16030754524571015751

`A309462(A028242(n)%(n+1))`
-/

namespace A141073.P16030754524571015751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309462 (Int.tmod (A028242 n) (n + 1 : ℤ)).toNat

end

end A141073.P16030754524571015751

namespace A141073

/-- `A309462(A028242(n)%(n+1))` -/
def P16030754524571015751.Spec : Prop :=
  ∀ n, P16030754524571015751.a n = A141073 (n + 1)

end A141073

/-! ## A141073.P17045416415832113266

`A140996(A178218(n+1))`
-/

namespace A141073.P17045416415832113266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A178218 (n + 1)).toNat

end

end A141073.P17045416415832113266

namespace A141073

/-- `A140996(A178218(n+1))` -/
def P17045416415832113266.Spec : Prop :=
  ∀ n, P17045416415832113266.a n = A141073 (n + 1)

end A141073

/-! ## A141073.P11531913572353029114

`A140996(A213037(n+1))`
-/

namespace A141073.P11531913572353029114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (A213037 (n + 1)).toNat

end

end A141073.P11531913572353029114

namespace A141073

/-- `A140996(A213037(n+1))` -/
def P11531913572353029114.Spec : Prop :=
  ∀ n, P11531913572353029114.a n = A141073 (n + 1)

end A141073

/-! ## A141073.P1656869404210895605

`A140996(∑[n+1]-A001057(n))`
-/

namespace A141073.P1656869404210895605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A001057 n).toNat

end

end A141073.P1656869404210895605

namespace A141073

/-- `A140996(∑[n+1]-A001057(n))` -/
def P1656869404210895605.Spec : Prop :=
  ∀ n, P1656869404210895605.a n = A141073 (n + 1)

end A141073

/-! ## A141073.P13479653724326227963

`A140996(∑[A016813(A142150(n))])`
-/

namespace A141073.P13479653724326227963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140996 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A141073.P13479653724326227963

namespace A141073

/-- `A140996(∑[A016813(A142150(n))])` -/
def P13479653724326227963.Spec : Prop :=
  ∀ n, P13479653724326227963.a n = A141073 (n + 1)

end A141073

/-!
# A141074: a(n) = n^(n+1)-(n+1)^n+1-(-1)^prime(n+1)-(-1)^(n+1).

The programs for A141074, the canonical program `A141074.P14961284055100534606` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141074 has offset 0).

The definition of A141074 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141074.P14961284055100534606

`n^(n+1)-(n+1)^n+1-(-1)^A000040(n+1)-(-1)^(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141074

/-- `n^(n+1)-(n+1)^n+1-(-1)^A000040(n+1)-(-1)^(n+1)` -/
def P14961284055100534606.Spec : Prop :=
  ∀ n, P14961284055100534606.a n = (A141074 n : ℚ)

end A141074

/-! ## A141074.P1867660903546346620

`A007925(n)+A040003(n)-1`
-/

namespace A141074.P1867660903546346620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 n + (A040003 n - 1)

end

end A141074.P1867660903546346620

namespace A141074

/-- `A007925(n)+A040003(n)-1` -/
def P1867660903546346620.Spec : Prop :=
  ∀ n, P1867660903546346620.a n = A141074 n

end A141074

/-! ## A141074.P15191403720183033129

`or(2, A111454(n+4))%A145328(n+1)`
-/

namespace A141074.P15191403720183033129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor 2 (A111454 (n + 4))) (A145328 (n + 1))

end

end A141074.P15191403720183033129

namespace A141074

/-- `or(2, A111454(n+4))%A145328(n+1)` -/
def P15191403720183033129.Spec : Prop :=
  ∀ n, P15191403720183033129.a n = A141074 n

end A141074

/-! ## A141074.P13294110139458643527

`A007925(n)+A020639(A141459(n))`
-/

namespace A141074.P13294110139458643527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007925 n + A020639 (A141459 n).toNat

end

end A141074.P13294110139458643527

namespace A141074

/-- `A007925(n)+A020639(A141459(n))` -/
def P13294110139458643527.Spec : Prop :=
  ∀ n, P13294110139458643527.a n = A141074 n

end A141074

/-!
# A141075: Nonprimes of form (2*3*5*7*11-p), where p is prime.

The programs for A141075, there is no canonical definition to state claims against.
-/

/-! ## A141075.P11943881878104705972

`A084970(n+1)^a(round(C(n, 3)/(2*(n+1))))` with `a(0)=1`
-/

namespace A141075.P11943881878104705972
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A084970 (n + 1) : ℝ) ^ (a (SequenceMachineLib.roundAway ((Nat.choose n 3 : ℚ) / (2 * (n + 1) : ℚ))).toNat)

end

end A141075.P11943881878104705972

/-!
# A141076: Primes of form 2*3*5*7*11 - p, where p is prime.

The programs for A141076, there is no canonical definition to state claims against.
-/

/-! ## A141076.P8138534860125106862

`A141077(Δ[n²])`
-/

namespace A141076.P8138534860125106862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141077 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A141076.P8138534860125106862

/-! ## A141076.P16678519286278775622

`record[A141077(n^(n%2))]`
-/

namespace A141076.P16678519286278775622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141077 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141076.P16678519286278775622

/-! ## A141076.P8078132892747437304

`record[(-1)^n*A141077(n+1)]`
-/

namespace A141076.P8078132892747437304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A141077 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141076.P8078132892747437304

/-! ## A141076.P806211809505366456

`record[A141077(A000265(n+1))]`
-/

namespace A141076.P806211809505366456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141077 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141076.P806211809505366456

/-! ## A141076.P12674063103157822145

`A020639(or(1, A141077(2*n+1)))`
-/

namespace A141076.P12674063103157822145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A141077 (2 * n + 1))).toNat

end

end A141076.P12674063103157822145

/-!
# A141078: a(n) = abs(prime(n)*prime(n+4) - prime(n+1)*prime(n+3)).

The programs for A141078, the canonical program `A141078.P9737585375279582820` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141078 has offset 1).

The definition of A141078 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(A000040(n+1)*A000040(n+5)-A000040(n+2)*A000040(n+4))` (program `A141078.P9737585375279582820`, by `A141078.P9737585375279582820.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141078.P9737585375279582820

`abs(A000040(n+1)*A000040(n+5)-A000040(n+2)*A000040(n+4))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141078

/-- `abs(A000040(n+1)*A000040(n+5)-A000040(n+2)*A000040(n+4))` -/
def P9737585375279582820.Spec : Prop :=
  ∀ n, P9737585375279582820.a n = A141078 (n + 1)

theorem P9737585375279582820.correct : P9737585375279582820.Spec := by
  intro n
  simp only [A141078, Nat.add_sub_cancel]

end A141078

/-!
# A141079: a(n)=abs(p(n)*p(n+3)-p(n+1)*p(n+2)), where p(n)=n-th prime.

The programs for A141079, the canonical program `A141079.P13139860971670868276` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141079 has offset 1).

The definition of A141079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `abs(A000040(n+1)*A000040(n+4)-A000040(n+2)*A000040(n+3))` (program `A141079.P13139860971670868276`, by `A141079.P13139860971670868276.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141079.P13139860971670868276

`abs(A000040(n+1)*A000040(n+4)-A000040(n+2)*A000040(n+3))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141079

/-- `abs(A000040(n+1)*A000040(n+4)-A000040(n+2)*A000040(n+3))` -/
def P13139860971670868276.Spec : Prop :=
  ∀ n, P13139860971670868276.a n = A141079 (n + 1)

theorem P13139860971670868276.correct : P13139860971670868276.Spec := by
  intro n
  simp only [A141079, Nat.add_sub_cancel]

end A141079

/-! ## A141079.P5694863447518529765

`abs(A117301(n+1))`
-/

namespace A141079.P5694863447518529765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117301 (n + 1)|

end

end A141079.P5694863447518529765

namespace A141079

/-- `abs(A117301(n+1))` -/
def P5694863447518529765.Spec : Prop :=
  ∀ n, P5694863447518529765.a n = A141079 (n + 1)

theorem P5694863447518529765.correct : P5694863447518529765.Spec := by
  intro n
  simp only [A141079, Nat.add_sub_cancel, A141079.P5694863447518529765.a, A141079.P13139860971670868276.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A117301, A117301.P14122854279291495979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141079

/-! ## A141079.P5159067174794047596

`gcd(A000038(n), A117301(n+1))`
-/

namespace A141079.P5159067174794047596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A117301 (n + 1))

end

end A141079.P5159067174794047596

namespace A141079

/-- `gcd(A000038(n), A117301(n+1))` -/
def P5159067174794047596.Spec : Prop :=
  ∀ n, (P5159067174794047596.a n : ℤ) = A141079 (n + 1)

end A141079

/-! ## A141079.P11674532436983458331

`lcm(A000034(n), A117301(n+1))`
-/

namespace A141079.P11674532436983458331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A117301 (n + 1))

end

end A141079.P11674532436983458331

namespace A141079

/-- `lcm(A000034(n), A117301(n+1))` -/
def P11674532436983458331.Spec : Prop :=
  ∀ n, (P11674532436983458331.a n : ℤ) = A141079 (n + 1)

end A141079

/-! ## A141079.P15065812447033848553

`abs(A127348(n+1)-(A127345(n+1)+A127345(n+2)))`
-/

namespace A141079.P15065812447033848553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127348 (n + 1) - (A127345 (n + 1) + A127345 (n + 2))|

end

end A141079.P15065812447033848553

namespace A141079

/-- `abs(A127348(n+1)-(A127345(n+1)+A127345(n+2)))` -/
def P15065812447033848553.Spec : Prop :=
  ∀ n, P15065812447033848553.a n = A141079 (n + 1)

theorem P15065812447033848553.correct : P15065812447033848553.Spec := by
  intro n
  simp only [A141079, Nat.add_sub_cancel, A141079.P15065812447033848553.a, A141079.P13139860971670868276.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A127345, A127345.P8011768576743041729.a, A127348, A127348.P2677906627502020316.a, A034961, A034961.P9480249767911558173.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141079

/-! ## A141079.P10865705471346965333

`abs(A000040(n+1)*A034961(n+2)-A127345(n+1))`
-/

namespace A141079.P10865705471346965333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) * A034961 (n + 2) - A127345 (n + 1)|

end

end A141079.P10865705471346965333

namespace A141079

/-- `abs(A000040(n+1)*A034961(n+2)-A127345(n+1))` -/
def P10865705471346965333.Spec : Prop :=
  ∀ n, P10865705471346965333.a n = A141079 (n + 1)

theorem P10865705471346965333.correct : P10865705471346965333.Spec := by
  intro n
  simp only [A141079, Nat.add_sub_cancel, A141079.P10865705471346965333.a, A141079.P13139860971670868276.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A034961, A034961.P9480249767911558173.a, A127345, A127345.P8011768576743041729.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141079

/-! ## A141079.P4258109457896404762

`abs(A046302(n+1)/A006094(n+2)-A006094(n+2))`
-/

namespace A141079.P4258109457896404762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A046302 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ) - (A006094 (n + 2) : ℚ)|

end

end A141079.P4258109457896404762

namespace A141079

/-- `abs(A046302(n+1)/A006094(n+2)-A006094(n+2))` -/
def P4258109457896404762.Spec : Prop :=
  ∀ n, P4258109457896404762.a n = (A141079 (n + 1) : ℚ)

end A141079

/-! ## A141079.P1156330866737404145

`abs(A008578(n+2)*A008578(n+5)-A006094(n+2))`
-/

namespace A141079.P1156330866737404145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (n + 2) * A008578 (n + 5) - A006094 (n + 2)|

end

end A141079.P1156330866737404145

namespace A141079

/-- `abs(A008578(n+2)*A008578(n+5)-A006094(n+2))` -/
def P1156330866737404145.Spec : Prop :=
  ∀ n, P1156330866737404145.a n = A141079 (n + 1)

end A141079

/-! ## A141079.P4189453325378938696

`∑{d}[A127348(n+1)-(A127345(n+1)+A127345(n+2)), A000010(#)]`
-/

namespace A141079.P4189453325378938696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127348 (n + 1) - (A127345 (n + 1) + A127345 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A141079.P4189453325378938696

namespace A141079

/-- `∑{d}[A127348(n+1)-(A127345(n+1)+A127345(n+2)), A000010(#)]` -/
def P4189453325378938696.Spec : Prop :=
  ∀ n, P4189453325378938696.a n = A141079 (n + 1)

end A141079

/-! ## A141079.P5216840693317935823

`∑{d}[A000040(n+1)*A034961(n+2)-A127345(n+1), A000010(#)]`
-/

namespace A141079.P5216840693317935823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A034961 (n + 2) - A127345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A141079.P5216840693317935823

namespace A141079

/-- `∑{d}[A000040(n+1)*A034961(n+2)-A127345(n+1), A000010(#)]` -/
def P5216840693317935823.Spec : Prop :=
  ∀ n, P5216840693317935823.a n = A141079 (n + 1)

end A141079

/-! ## A141079.P8547833084404752922

`∑{d}[A046302(n+1)/A006094(n+2)-A006094(n+2), A000010(#)]`
-/

namespace A141079.P8547833084404752922
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046302 (n + 1) : ℚ) / (A006094 (n + 2) : ℚ) - (A006094 (n + 2) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A141079.P8547833084404752922

namespace A141079

/-- `∑{d}[A046302(n+1)/A006094(n+2)-A006094(n+2), A000010(#)]` -/
def P8547833084404752922.Spec : Prop :=
  ∀ n, P8547833084404752922.a n = A141079 (n + 1)

end A141079

/-!
# A141080: Number of (5,2)-noncrossing partitions of [n].

The programs for A141080, there is no canonical definition to state claims against.
-/

/-! ## A141080.P15173707285601101950

`A214881(A056273(n))`
-/

namespace A141080.P15173707285601101950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214881 (A056273 n).toNat

end

end A141080.P15173707285601101950

/-! ## A141080.P3059057297251133708

`A056273(n)+A025466(A000110(n))`
-/

namespace A141080.P3059057297251133708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 n + A025466 (A000110 n).toNat

end

end A141080.P3059057297251133708

/-! ## A141080.P12296921171112186800

`A036646(n)+A028310(A056273(n))`
-/

namespace A141080.P12296921171112186800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036646 n + A028310 (A056273 n).toNat

end

end A141080.P12296921171112186800

/-! ## A141080.P17097161413899489021

`A056273(n)+A056170(A033321(n))`
-/

namespace A141080.P17097161413899489021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056273 n + A056170 (A033321 n).toNat

end

end A141080.P17097161413899489021

/-! ## A141080.P17741506155192342112

`A098852(A000837(n))+A056273(n)`
-/

namespace A141080.P17741506155192342112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098852 (A000837 n).toNat + A056273 n

end

end A141080.P17741506155192342112

/-!
# A141081: Number of (6,2)-noncrossing partitions of [n].

The programs for A141081, there is no canonical definition to state claims against.
-/

/-! ## A141081.P13472875681164160794

`or(A014082(A000108(n)), A287668(n))`
-/

namespace A141081.P13472875681164160794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014082 (A000108 n).toNat) (A287668 n)

end

end A141081.P13472875681164160794

/-! ## A141081.P6951588179923380986

`or(A001222(A102917(n)), A287668(n))`
-/

namespace A141081.P6951588179923380986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A102917 n).toNat) (A287668 n)

end

end A141081.P6951588179923380986

/-! ## A141081.P15573536449838375417

`or(A095160(A255378(n)), A287256(n))`
-/

namespace A141081.P15573536449838375417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A095160 (A255378 n).toNat) (A287256 n)

end

end A141081.P15573536449838375417

/-! ## A141081.P14930042438166190114

`or(A014081(A340598(n)), A287668(n))`
-/

namespace A141081.P14930042438166190114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014081 (A340598 n).toNat) (A287668 n)

end

end A141081.P14930042438166190114

/-! ## A141081.P16035180387550134931

`A000110(n)-A055012(A324435(n+1))`
-/

namespace A141081.P16035180387550134931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A055012 (A324435 (n + 1)).toNat

end

end A141081.P16035180387550134931

/-!
# A141082: Lengths n for which no normal sequence exists.

The programs for A141082, there is no canonical definition to state claims against.
-/

/-! ## A141082.P17924193567999761007

`lt[A111488(3*(n+1)), A111445(A111477(n+1))]`
-/

namespace A141082.P17924193567999761007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111488 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111445 (A111477 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A141082.P17924193567999761007

/-!
# A141083: a(n) = 2^(p - 2)*(2^p - 2), where p = prime(n).

The programs for A141083, the canonical program `A141083.P9737268071027246249` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141083 has offset 1).

The definition of A141083 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A141083.P9737268071027246249

`A020522(A000040(n+1)-1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141083

/-- `A020522(A000040(n+1)-1)` -/
def P9737268071027246249.Spec : Prop :=
  ∀ n, P9737268071027246249.a n = A141083 (n + 1)

theorem P9737268071027246249.correct : P9737268071027246249.Spec := by
  intro n
  simp only [A141083, Nat.add_sub_cancel]

end A141083

/-! ## A141083.P16713797172902093223

`floor((A001348(n+1)/2)²)`
-/

namespace A141083.P16713797172902093223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A001348 (n + 1) : ℚ) / 2) ^ 2⌋

end

end A141083.P16713797172902093223

namespace A141083

/-- `floor((A001348(n+1)/2)²)` -/
def P16713797172902093223.Spec : Prop :=
  ∀ n, P16713797172902093223.a n = A141083 (n + 1)

end A141083

/-! ## A141083.P1403895135543815989

`A020522(record[ceil((n+1)*∏{p}[n+1, #/(n+3)])])`
-/

namespace A141083.P1403895135543815989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) * (∏ p ∈ Nat.primeFactors (f2 n), (p : ℚ) / (n + 3 : ℚ))⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A141083.P1403895135543815989

namespace A141083

/-- `A020522(record[ceil((n+1)*∏{p}[n+1, #/(n+3)])])` -/
def P1403895135543815989.Spec : Prop :=
  ∀ n, P1403895135543815989.a n = A141083 (n + 1)

end A141083

/-! ## A141083.P3334978732821629252

`A020522(A006093(n+1))`
-/

namespace A141083.P3334978732821629252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020522 (A006093 (n + 1)).toNat

end

end A141083.P3334978732821629252

namespace A141083

/-- `A020522(A006093(n+1))` -/
def P3334978732821629252.Spec : Prop :=
  ∀ n, P3334978732821629252.a n = A141083 (n + 1)

end A141083

/-! ## A141083.P15352413734599469822

`A014236(A037168(n+1))`
-/

namespace A141083.P15352413734599469822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014236 (A037168 (n + 1)).toNat

end

end A141083.P15352413734599469822

namespace A141083

/-- `A014236(A037168(n+1))` -/
def P15352413734599469822.Spec : Prop :=
  ∀ n, P15352413734599469822.a n = A141083 (n + 1)

end A141083

/-!
# A141084: p(p(2^n)-p(n+1)+p(n*2)-p(n^2))-1, where p(n)=n-th prime.

The programs for A141084, the canonical program `A141084.P10531527843710587772` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141084 has offset 1).

The definition of A141084 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(2^(n+1))-A000040(n+2)+A000040((n+1)*2)-A000040((n+1)²))-1` (program `A141084.P10531527843710587772`, by `A141084.P10531527843710587772.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141084.P1061713795956646810

`A000040(A000040(2^(n+1))-A000040(n+2)+A000040(2*(n+1))-A000040((n+1)²))-1`
-/

namespace A141084.P1061713795956646810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (2 ^ (n + 1)) - A000040 (n + 2) + A000040 (2 * (n + 1)) - A000040 ((n + 1) ^ 2)).toNat - 1

end

end A141084.P1061713795956646810

namespace A141084

/-- `A000040(A000040(2^(n+1))-A000040(n+2)+A000040(2*(n+1))-A000040((n+1)²))-1` -/
def P1061713795956646810.Spec : Prop :=
  ∀ n, P1061713795956646810.a n = A141084 (n + 1)

theorem P1061713795956646810.correct : P1061713795956646810.Spec := by
  intro n
  simp only [A141084, Nat.add_sub_cancel, A141084.P1061713795956646810.a, A141084.P10531527843710587772.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A141084

/-! ## A141084.P10531527843710587772

`A000040(A000040(2^(n+1))-A000040(n+2)+A000040((n+1)*2)-A000040((n+1)²))-1`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141084

/-- `A000040(A000040(2^(n+1))-A000040(n+2)+A000040((n+1)*2)-A000040((n+1)²))-1` -/
def P10531527843710587772.Spec : Prop :=
  ∀ n, P10531527843710587772.a n = A141084 (n + 1)

theorem P10531527843710587772.correct : P10531527843710587772.Spec := by
  intro n
  simp only [A141084, Nat.add_sub_cancel]

end A141084

/-!
# A141085: Weight distribution of [256,37,64] Reed-Muller (or RM) code.

The programs for A141085, there is no canonical definition to state claims against.
-/

/-! ## A141085.P14860457460283446155

`A151660(n*ceil(n/2))`
-/

namespace A141085.P14860457460283446155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151660 ((n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat

end

end A141085.P14860457460283446155

/-! ## A141085.P4459365620922854902

`A151623(3*a(n-1)+4*n)` with `a(0)=1`
-/

namespace A141085.P4459365620922854902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151623 (3 * a (n - 1) + (4 * n : ℤ)).toNat

end

end A141085.P4459365620922854902

/-! ## A141085.P10075427347262323564

`A151623(xor(3*a(n-1), 4*n))` with `a(0)=1`
-/

namespace A141085.P10075427347262323564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A151623 (Int.xor (3 * a (n - 1)) (4 * n : ℤ)).toNat

end

end A141085.P10075427347262323564

/-! ## A141085.P6733999080178644534

`A151623(lt[(1/2)², A151619(n)])`
-/

namespace A141085.P6733999080178644534
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151623 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A141085.P6733999080178644534

/-! ## A141085.P4297991743591160197

`A151623(n*∏[A208183(2*n)])`
-/

namespace A141085.P4297991743591160197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208183 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151623 ((n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A141085.P4297991743591160197

/-!
# A141086: a(n) = prime(2*n^2) - 2*n^2.

The programs for A141086, the canonical program `A141086.P8280485409104464558` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141086 has offset 1).

The definition of A141086 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1)²)-2*(n+1)²` (program `A141086.P8280485409104464558`, by `A141086.P8280485409104464558.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141086.P8280485409104464558

`A000040(2*(n+1)²)-2*(n+1)²`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141086

/-- `A000040(2*(n+1)²)-2*(n+1)²` -/
def P8280485409104464558.Spec : Prop :=
  ∀ n, P8280485409104464558.a n = A141086 (n + 1)

theorem P8280485409104464558.correct : P8280485409104464558.Spec := by
  intro n
  simp only [A141086, Nat.add_sub_cancel]

end A141086

/-! ## A141086.P12193542011769711524

`A014689(A001105(n+1))`
-/

namespace A141086.P12193542011769711524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (A001105 (n + 1)).toNat

end

end A141086.P12193542011769711524

namespace A141086

/-- `A014689(A001105(n+1))` -/
def P12193542011769711524.Spec : Prop :=
  ∀ n, P12193542011769711524.a n = A141086 (n + 1)

end A141086

/-! ## A141086.P17058308429461054132

`A141101((1+n)²)`
-/

namespace A141086.P17058308429461054132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141101 ((1 + n) ^ 2)

end

end A141086.P17058308429461054132

namespace A141086

/-- `A141101((1+n)²)` -/
def P17058308429461054132.Spec : Prop :=
  ∀ n, P17058308429461054132.a n = A141086 (n + 1)

end A141086

/-! ## A141086.P1641081762159397586

`A031215((n+1)²)-2*(n+1)²`
-/

namespace A141086.P1641081762159397586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 ((n + 1) ^ 2) - (2 * (n + 1) ^ 2 : ℤ)

end

end A141086.P1641081762159397586

namespace A141086

/-- `A031215((n+1)²)-2*(n+1)²` -/
def P1641081762159397586.Spec : Prop :=
  ∀ n, P1641081762159397586.a n = A141086 (n + 1)

end A141086

/-! ## A141086.P12600543248664915498

`A001749(2*(n+1)²)/4-2*(n+1)²`
-/

namespace A141086.P12600543248664915498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (2 * (n + 1) ^ 2) : ℚ) / 4 - (2 * (n + 1) ^ 2 : ℚ)

end

end A141086.P12600543248664915498

namespace A141086

/-- `A001749(2*(n+1)²)/4-2*(n+1)²` -/
def P12600543248664915498.Spec : Prop :=
  ∀ n, P12600543248664915498.a n = (A141086 (n + 1) : ℚ)

theorem P12600543248664915498.correct : P12600543248664915498.Spec := by
  intro n
  simp only [A141086, Nat.add_sub_cancel, A141086.P12600543248664915498.a, A141086.P8280485409104464558.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001749, A001749.P16106244962881767471.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A141086

/-! ## A141086.P16998747494732081554

`A141101(A000290(n+1))%A016755(n+4)`
-/

namespace A141086.P16998747494732081554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141101 (A000290 (n + 1)).toNat) (A016755 (n + 4))

end

end A141086.P16998747494732081554

namespace A141086

/-- `A141101(A000290(n+1))%A016755(n+4)` -/
def P16998747494732081554.Spec : Prop :=
  ∀ n, P16998747494732081554.a n = A141086 (n + 1)

end A141086

/-! ## A141086.P13229162887279449748

`A014689(2*(n+1)²)`
-/

namespace A141086.P13229162887279449748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (2 * (n + 1) ^ 2)

end

end A141086.P13229162887279449748

namespace A141086

/-- `A014689(2*(n+1)²)` -/
def P13229162887279449748.Spec : Prop :=
  ∀ n, P13229162887279449748.a n = A141086 (n + 1)

end A141086

/-! ## A141086.P5806298300292753985

`A014692(2*(n+1)²)-1`
-/

namespace A141086.P5806298300292753985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014692 (2 * (n + 1) ^ 2) - 1

end

end A141086.P5806298300292753985

namespace A141086

/-- `A014692(2*(n+1)²)-1` -/
def P5806298300292753985.Spec : Prop :=
  ∀ n, P5806298300292753985.a n = A141086 (n + 1)

end A141086

/-! ## A141086.P9007948627656162178

`A006005(2*(n+1)²)-2*(n+1)²`
-/

namespace A141086.P9007948627656162178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (2 * (n + 1) ^ 2) - (2 * (n + 1) ^ 2 : ℤ)

end

end A141086.P9007948627656162178

namespace A141086

/-- `A006005(2*(n+1)²)-2*(n+1)²` -/
def P9007948627656162178.Spec : Prop :=
  ∀ n, P9007948627656162178.a n = A141086 (n + 1)

end A141086

/-! ## A141086.P1883584732921316704

`A073170(A058331(n+1))`
-/

namespace A141086.P1883584732921316704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073170 (A058331 (n + 1)).toNat

end

end A141086.P1883584732921316704

namespace A141086

/-- `A073170(A058331(n+1))` -/
def P1883584732921316704.Spec : Prop :=
  ∀ n, P1883584732921316704.a n = A141086 (n + 1)

end A141086

/-!
# A141088: a(n) = prime(2^n) - 2*n.

The programs for A141088, the canonical program `A141088.P1595580981459965203` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141088 has offset 1).

The definition of A141088 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2^(n+1))-2*(n+1)` (program `A141088.P1595580981459965203`, by `A141088.P1595580981459965203.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141088.P12753926900510021780

`A033844(n+1)-A005843(n+1)`
-/

namespace A141088.P12753926900510021780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 (n + 1) - A005843 (n + 1)

end

end A141088.P12753926900510021780

namespace A141088

/-- `A033844(n+1)-A005843(n+1)` -/
def P12753926900510021780.Spec : Prop :=
  ∀ n, P12753926900510021780.a n = A141088 (n + 1)

theorem P12753926900510021780.correct : P12753926900510021780.Spec := by
  intro n
  simp only [A141088, Nat.add_sub_cancel, A141088.P12753926900510021780.a, A141088.P1595580981459965203.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A005843, A005843.P3167286115683555970.a, A033844, A033844.P10148935378251685530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141088

/-! ## A141088.P1595580981459965203

`A000040(2^(n+1))-2*(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141088

/-- `A000040(2^(n+1))-2*(n+1)` -/
def P1595580981459965203.Spec : Prop :=
  ∀ n, P1595580981459965203.a n = A141088 (n + 1)

theorem P1595580981459965203.correct : P1595580981459965203.Spec := by
  intro n
  simp only [A141088, Nat.add_sub_cancel]

end A141088

/-! ## A141088.P18075226217420624097

`∑[abs(2-A135373(n))]`
-/

namespace A141088.P18075226217420624097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A135373 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141088.P18075226217420624097

namespace A141088

/-- `∑[abs(2-A135373(n))]` -/
def P18075226217420624097.Spec : Prop :=
  ∀ n, P18075226217420624097.a n = A141088 (n + 1)

end A141088

/-! ## A141088.P4128529905288191188

`∑[abs(2-Δ[A033844(n)])]`
-/

namespace A141088.P4128529905288191188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033844 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f2 (n + 1) - f2 n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A141088.P4128529905288191188

namespace A141088

/-- `∑[abs(2-Δ[A033844(n)])]` -/
def P4128529905288191188.Spec : Prop :=
  ∀ n, P4128529905288191188.a n = A141088 (n + 1)

end A141088

/-! ## A141088.P328018410706293282

`A018249(n+1)-Δ[n²]`
-/

namespace A141088.P328018410706293282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A141088.P328018410706293282

namespace A141088

/-- `A018249(n+1)-Δ[n²]` -/
def P328018410706293282.Spec : Prop :=
  ∀ n, P328018410706293282.a n = A141088 (n + 1)

theorem P328018410706293282.correct : P328018410706293282.Spec := by
  intro n
  simp only [A141088, Nat.add_sub_cancel, A141088.P328018410706293282.f1, A141088.P328018410706293282.a, A141088.P1595580981459965203.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A018249, A018249.P2453322492412683053.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141088

/-!
# A141089: Integral quotients of products of consecutive composites divided by their sums: Last consecutive composite.

The programs for A141089, there is no canonical definition to state claims against.
-/

/-! ## A141089.P923089923647951645

`A002808(A196415(n+1))`
-/

namespace A141089.P923089923647951645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A196415 (n + 1)).toNat

end

end A141089.P923089923647951645

/-! ## A141089.P6576555932501002189

`A018252(A196415(n+1)+1)`
-/

namespace A141089.P6576555932501002189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A196415 (n + 1) + 1).toNat

end

end A141089.P6576555932501002189

/-! ## A141089.P915940492168401486

`A141468(A196415(n+1)+2)`
-/

namespace A141089.P915940492168401486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A196415 (n + 1) + 2).toNat

end

end A141089.P915940492168401486

/-! ## A141089.P15353564551494961400

`A065090(A196415(n+1)+2)`
-/

namespace A141089.P15353564551494961400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (A196415 (n + 1) + 2).toNat

end

end A141089.P15353564551494961400

/-! ## A141089.P6199060490662925203

`A051349(A196415(n+1)+1)-A051349(A196415(n+1))`
-/

namespace A141089.P6199060490662925203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A196415 (n + 1) + 1).toNat - A051349 (A196415 (n + 1)).toNat

end

end A141089.P6199060490662925203

/-! ## A141089.P13035260326489902333

`A053767(A196415(n+1))-A053767(A196415(n+1)-1)`
-/

namespace A141089.P13035260326489902333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A196415 (n + 1)).toNat - A053767 (A196415 (n + 1) - 1).toNat

end

end A141089.P13035260326489902333

/-!
# A141090: Integral quotients of products of first k consecutive composites divided by their sums: products (dividends).

The programs for A141090, there is no canonical definition to state claims against.
-/

/-! ## A141090.P1759955535534936460

`A049614(A141089(n+1))`
-/

namespace A141090.P1759955535534936460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049614 (A141089 (n + 1)).toNat

end

end A141090.P1759955535534936460

/-! ## A141090.P5755888797896023753

`A036691(A196415(n+1))`
-/

namespace A141090.P5755888797896023753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036691 (A196415 (n + 1)).toNat

end

end A141090.P5755888797896023753

/-! ## A141090.P11409701778024213490

`A141091(n+1)*A141092(n+1)`
-/

namespace A141090.P11409701778024213490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141091 (n + 1) * A141092 (n + 1)

end

end A141090.P11409701778024213490

/-! ## A141090.P16848059849722558291

`A053767(A196415(n+1))*A141092(n+1)`
-/

namespace A141090.P16848059849722558291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A196415 (n + 1)).toNat * A141092 (n + 1)

end

end A141090.P16848059849722558291

/-!
# A141091: Integral quotients of products of consecutive composites divided by their sums: sums (divisors).

The programs for A141091, there is no canonical definition to state claims against.
-/

/-! ## A141091.P12482085519607585607

`A053767(A196415(n+1))`
-/

namespace A141091.P12482085519607585607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A196415 (n + 1)).toNat

end

end A141091.P12482085519607585607

/-! ## A141091.P9191734802217894197

`A051349(A196415(n+1)+1)-1`
-/

namespace A141091.P9191734802217894197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A196415 (n + 1) + 1).toNat - 1

end

end A141091.P9191734802217894197

/-! ## A141091.P8308932781918040952

`A166698(A066065(n+1))+A051349(A196415(n+1)+1)`
-/

namespace A141091.P8308932781918040952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A066065 (n + 1)).toNat + A051349 (A196415 (n + 1) + 1).toNat

end

end A141091.P8308932781918040952

/-! ## A141091.P10574125668010322235

`A269529(A120880(2*n+1))+A051349(A196415(n+1)+1)`
-/

namespace A141091.P10574125668010322235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269529 (A120880 (2 * n + 1)).toNat + A051349 (A196415 (n + 1) + 1).toNat

end

end A141091.P10574125668010322235

/-! ## A141091.P17719786589777634808

`A101256(A141089(n+1))`
-/

namespace A141091.P17719786589777634808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101256 (A141089 (n + 1)).toNat

end

end A141091.P17719786589777634808

/-!
# A141092: Product of first k composite numbers divided by their sum, when the result is an integer.

The programs for A141092, there is no canonical definition to state claims against.
-/

/-! ## A141092.P4026599241054732465

`A036691(A196415(n+1))/A053767(A196415(n+1))`
-/

namespace A141092.P4026599241054732465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036691 (A196415 (n + 1)).toNat : ℚ) / (A053767 (A196415 (n + 1)).toNat : ℚ)

end

end A141092.P4026599241054732465

/-! ## A141092.P13555598533989687576

`A141090(n+1)/A141091(n+1)`
-/

namespace A141092.P13555598533989687576
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141090 (n + 1) : ℚ) / (A141091 (n + 1) : ℚ)

end

end A141092.P13555598533989687576

/-! ## A141092.P7392628429242246429

`A049614(A141089(n+1))/A141091(n+1)`
-/

namespace A141092.P7392628429242246429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049614 (A141089 (n + 1)).toNat : ℚ) / (A141091 (n + 1) : ℚ)

end

end A141092.P7392628429242246429

/-! ## A141092.P12493208325120945131

`A036691(A196415(n+1))/A141091(n+1)`
-/

namespace A141092.P12493208325120945131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036691 (A196415 (n + 1)).toNat : ℚ) / (A141091 (n + 1) : ℚ)

end

end A141092.P12493208325120945131

/-! ## A141092.P9781390027636687121

`A141090(n+1)/A053767(A196415(n+1))`
-/

namespace A141092.P9781390027636687121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141090 (n + 1) : ℚ) / (A053767 (A196415 (n + 1)).toNat : ℚ)

end

end A141092.P9781390027636687121

/-!
# A141093: a(n) = prime(prime(2*n) - 2*n) - 2*n.

The programs for A141093, the canonical program `A141093.P8105753285669679620` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141093 has offset 1).

The definition of A141093 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(A000040(2*(n+1))-2*(n+1))-2*(n+1)` (program `A141093.P8105753285669679620`, by `A141093.P8105753285669679620.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A141093.P8105753285669679620

`A000040(A000040(2*(n+1))-2*(n+1))-2*(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A141093

/-- `A000040(A000040(2*(n+1))-2*(n+1))-2*(n+1)` -/
def P8105753285669679620.Spec : Prop :=
  ∀ n, P8105753285669679620.a n = A141093 (n + 1)

theorem P8105753285669679620.correct : P8105753285669679620.Spec := by
  intro n
  simp only [A141093, Nat.add_sub_cancel]

end A141093

/-! ## A141093.P15336954112827502955

`A065994(2*(n+1))-A004277(n+1)`
-/

namespace A141093.P15336954112827502955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065994 (2 * (n + 1)) - A004277 (n + 1)

end

end A141093.P15336954112827502955

namespace A141093

/-- `A065994(2*(n+1))-A004277(n+1)` -/
def P15336954112827502955.Spec : Prop :=
  ∀ n, P15336954112827502955.a n = A141093 (n + 1)

end A141093

/-! ## A141093.P2600600733039955357

`A065994(A005408(n)+1)-2*(n+1)`
-/

namespace A141093.P2600600733039955357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065994 (A005408 n + 1).toNat - (2 * (n + 1) : ℤ)

end

end A141093.P2600600733039955357

namespace A141093

/-- `A065994(A005408(n)+1)-2*(n+1)` -/
def P2600600733039955357.Spec : Prop :=
  ∀ n, P2600600733039955357.a n = A141093 (n + 1)

end A141093

/-! ## A141093.P17784169036550423425

`A000040(A141101(n+1))-2*(n+1)`
-/

namespace A141093.P17784169036550423425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A141101 (n + 1)).toNat - (2 * (n + 1) : ℤ)

end

end A141093.P17784169036550423425

namespace A141093

/-- `A000040(A141101(n+1))-2*(n+1)` -/
def P17784169036550423425.Spec : Prop :=
  ∀ n, P17784169036550423425.a n = A141093 (n + 1)

end A141093

/-! ## A141093.P14529471112851695097

`A040976(A014689(2*(n+1)))-n-n`
-/

namespace A141093.P14529471112851695097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (A014689 (2 * (n + 1))).toNat - (n : ℤ) - (n : ℤ)

end

end A141093.P14529471112851695097

namespace A141093

/-- `A040976(A014689(2*(n+1)))-n-n` -/
def P14529471112851695097.Spec : Prop :=
  ∀ n, P14529471112851695097.a n = A141093 (n + 1)

end A141093

/-!
# A141094: Expansion of b(q) / b(q^2) in powers of q where b() is a cubic AGM theta function.

The programs for A141094, there is no canonical definition to state claims against.
-/

/-! ## A141094.P86386782422168088

`(-1)^n*A132972(n)`
-/

namespace A141094.P86386782422168088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A132972 n

end

end A141094.P86386782422168088

/-! ## A141094.P11233658913301875724

`A122553(n)*A145977(n)`
-/

namespace A141094.P11233658913301875724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n * A145977 n

end

end A141094.P11233658913301875724

/-! ## A141094.P1800203514553658667

`A132972(n)/A033999(n)`
-/

namespace A141094.P1800203514553658667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 n : ℚ) / (A033999 n : ℚ)

end

end A141094.P1800203514553658667

/-! ## A141094.P11584320142372316448

`A145977(n)*A254875(n²%(n+1))`
-/

namespace A141094.P11584320142372316448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145977 n * A254875 (n ^ 2 % (n + 1))

end

end A141094.P11584320142372316448

/-! ## A141094.P15809830746516035785

`A003619(A069932(2*n+1))*A145977(n)`
-/

namespace A141094.P15809830746516035785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (A069932 (2 * n + 1)).toNat * A145977 n

end

end A141094.P15809830746516035785

/-! ## A141094.P2947131918970374251

`A132180(n+1)/A124243(n+1)*A132180(n)`
-/

namespace A141094.P2947131918970374251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132180 (n + 1) : ℚ) / (A124243 (n + 1) : ℚ) * (A132180 n : ℚ)

end

end A141094.P2947131918970374251

/-! ## A141094.P8173572243078403180

`A132972(n)/A034947(2*n+1)`
-/

namespace A141094.P8173572243078403180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132972 n : ℚ) / (A034947 (2 * n + 1) : ℚ)

end

end A141094.P8173572243078403180

/-! ## A141094.P1396992878580132378

`(3*A145977(n))%A236002(n+1)`
-/

namespace A141094.P1396992878580132378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (3 * A145977 n) (A236002 (n + 1))

end

end A141094.P1396992878580132378

/-! ## A141094.P13643628440895078233

`(A159853(∑[n+1])+2)*A145977(n)`
-/

namespace A141094.P13643628440895078233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159853 (∑ j ∈ Finset.range (n + 1), f1 j) + 2) * A145977 n

end

end A141094.P13643628440895078233

/-!
# A141095: Number of unordered pairs of coprime nonprime numbers that sum to 2n.

The programs for A141095, the canonical program `A141095.P5876124804023850422` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141095 has offset 1).

The definition of A141095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141095.P6432604224852470245

`A141097(n+1)+A005171(2*n+1)`
-/

namespace A141095.P6432604224852470245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141097 (n + 1) + A005171 (2 * n + 1)

end

end A141095.P6432604224852470245

namespace A141095

/-- `A141097(n+1)+A005171(2*n+1)` -/
def P6432604224852470245.Spec : Prop :=
  ∀ n, P6432604224852470245.a n = A141095 (n + 1)

theorem P6432604224852470245.correct : P6432604224852470245.Spec := by
  intro n
  simp only [A141095, Nat.add_sub_cancel, A141095.P6432604224852470245.a, A141095.P5876124804023850422.a, A005171, A005171.P15860856746370777121.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A141097, A141097.P3917522356591444959.a, A345039, A345039.P8520321823126508405.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A016035, A016035.P2093318257914128569.f1, A016035.P2093318257914128569.f2, A016035.P2093318257914128569.a, A057860, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141095

/-! ## A141095.P5876124804023850422

`A062610(2*(n+1))-A345039(2*(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A141095

/-- `A062610(2*(n+1))-A345039(2*(n+1))` -/
def P5876124804023850422.Spec : Prop :=
  ∀ n, P5876124804023850422.a n = A141095 (n + 1)

theorem P5876124804023850422.correct : P5876124804023850422.Spec := by
  intro n
  simp only [A141095, Nat.add_sub_cancel]

end A141095

/-! ## A141095.P6364686740470259315

`A110654(A076608(2*(n+1)))-A345039(2*(n+1))`
-/

namespace A141095.P6364686740470259315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A076608 (2 * (n + 1))).toNat - A345039 (2 * (n + 1))

end

end A141095.P6364686740470259315

namespace A141095

/-- `A110654(A076608(2*(n+1)))-A345039(2*(n+1))` -/
def P6364686740470259315.Spec : Prop :=
  ∀ n, P6364686740470259315.a n = A141095 (n + 1)

end A141095

/-! ## A141095.P323108917572696652

`A185279(2*(n+1))`
-/

namespace A141095.P323108917572696652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (2 * (n + 1))

end

end A141095.P323108917572696652

namespace A141095

/-- `A185279(2*(n+1))` -/
def P323108917572696652.Spec : Prop :=
  ∀ n, P323108917572696652.a n = A141095 (n + 1)

end A141095

/-! ## A141095.P7318392647942484037

`A185279(A004277(n+1))%(n+2)`
-/

namespace A141095.P7318392647942484037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185279 (A004277 (n + 1)).toNat) (n + 2 : ℤ)

end

end A141095.P7318392647942484037

namespace A141095

/-- `A185279(A004277(n+1))%(n+2)` -/
def P7318392647942484037.Spec : Prop :=
  ∀ n, P7318392647942484037.a n = A141095 (n + 1)

end A141095

/-! ## A141095.P17892777552734164745

`A185279(A005843(n+1))%(n+2)`
-/

namespace A141095.P17892777552734164745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185279 (A005843 (n + 1)).toNat) (n + 2 : ℤ)

end

end A141095.P17892777552734164745

namespace A141095

/-- `A185279(A005843(n+1))%(n+2)` -/
def P17892777552734164745.Spec : Prop :=
  ∀ n, P17892777552734164745.a n = A141095 (n + 1)

end A141095

/-! ## A141095.P6796322681270903147

`A185279(A103517(n))+A000007(n)`
-/

namespace A141095.P6796322681270903147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (A103517 n).toNat + A000007 n

end

end A141095.P6796322681270903147

namespace A141095

/-- `A185279(A103517(n))+A000007(n)` -/
def P6796322681270903147.Spec : Prop :=
  ∀ n, P6796322681270903147.a n = A141095 (n + 1)

end A141095

/-! ## A141095.P6680292830492988698

`A185279(A103517(n))^A057428(n)²`
-/

namespace A141095.P6680292830492988698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185279 (A103517 n).toNat : ℚ) ^ (A057428 n ^ 2 : ℤ)

end

end A141095.P6680292830492988698

namespace A141095

/-- `A185279(A103517(n))^A057428(n)²` -/
def P6680292830492988698.Spec : Prop :=
  ∀ n, P6680292830492988698.a n = (A141095 (n + 1) : ℚ)

end A141095

/-! ## A141095.P3247409292802531146

`A185279(A051755(n+2))+A000007(n)`
-/

namespace A141095.P3247409292802531146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (A051755 (n + 2)).toNat + A000007 n

end

end A141095.P3247409292802531146

namespace A141095

/-- `A185279(A051755(n+2))+A000007(n)` -/
def P3247409292802531146.Spec : Prop :=
  ∀ n, P3247409292802531146.a n = A141095 (n + 1)

end A141095

/-! ## A141095.P4931476039168202081

`A141097(n+1)+A141099(n+1)-A141100(n+1)`
-/

namespace A141095.P4931476039168202081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141097 (n + 1) + (A141099 (n + 1) - A141100 (n + 1))

end

end A141095.P4931476039168202081

namespace A141095

/-- `A141097(n+1)+A141099(n+1)-A141100(n+1)` -/
def P4931476039168202081.Spec : Prop :=
  ∀ n, P4931476039168202081.a n = A141095 (n + 1)

theorem P4931476039168202081.correct : P4931476039168202081.Spec := by
  intro n
  simp only [A141095, Nat.add_sub_cancel, A141095.P4931476039168202081.a, A141095.P5876124804023850422.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A141097, A141097.P3917522356591444959.a, A141099, A141099.P13418424071663914985.a, A141100, A141100.P10527061438519986607.a, A345039, A345039.P8520321823126508405.a, A004526, A004526.P10084182425416171735.a, A005171, A005171.P15860856746370777121.a, A008619, A008619.P16053834178911111118.a, A016035, A016035.P2093318257914128569.f1, A016035.P2093318257914128569.f2, A016035.P2093318257914128569.a, A057860, A057860.P15781516878484293447.a, A171691, A171691.P6852326580406888419.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141095

/-!
# A141096: Even numbers not representable as the sum of two coprime nonprime numbers.

The programs for A141096, there is no canonical definition to state claims against.
-/

/-! ## A141096.P5481093150920751729

`A232721(n+3)`
-/

namespace A141096.P5481093150920751729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232721 (n + 3)

end

end A141096.P5481093150920751729

/-! ## A141096.P13442613648688551696

`p?[A141098(n+1)-1]+1`
-/

namespace A141096.P13442613648688551696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141098 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1

end

end A141096.P13442613648688551696

/-! ## A141096.P955149232387566045

`2*(eq[0, A141095(n+1)]+1)`
-/

namespace A141096.P955149232387566045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141095 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A141096.P955149232387566045

/-! ## A141096.P13556488455256177274

`2*(record[gcd(n, A185279(2*(n+1)))]+1)`
-/

namespace A141096.P13556488455256177274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A185279 (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)

end

end A141096.P13556488455256177274

/-! ## A141096.P9611398575891357510

`eq[A185279(n+1)²+1, n%2]+1`
-/

namespace A141096.P9611398575891357510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (n + 1) ^ 2 + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A141096.P9611398575891357510

/-!
# A141097: Number of unordered pairs of coprime composite numbers that sum to 2n.

The programs for A141097, the canonical program `A141097.P3917522356591444959` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141097 has offset 1).

The definition of A141097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141097.P3917522356591444959

`A141095(n+1)-A005171(2*n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A141097

/-- `A141095(n+1)-A005171(2*n+1)` -/
def P3917522356591444959.Spec : Prop :=
  ∀ n, P3917522356591444959.a n = A141097 (n + 1)

theorem P3917522356591444959.correct : P3917522356591444959.Spec := by
  intro n
  simp only [A141097, Nat.add_sub_cancel]

end A141097

/-! ## A141097.P18002662473214604973

`A141095(n+1)-and(1, A119323(n+1))`
-/

namespace A141097.P18002662473214604973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141095 (n + 1) - Int.land 1 (A119323 (n + 1))

end

end A141097.P18002662473214604973

namespace A141097

/-- `A141095(n+1)-and(1, A119323(n+1))` -/
def P18002662473214604973.Spec : Prop :=
  ∀ n, P18002662473214604973.a n = A141097 (n + 1)

end A141097

/-! ## A141097.P4623809038466727792

`A224708(2*(n+1))-A345039(2*(n+1))`
-/

namespace A141097.P4623809038466727792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224708 (2 * (n + 1)) - A345039 (2 * (n + 1))

end

end A141097.P4623809038466727792

namespace A141097

/-- `A224708(2*(n+1))-A345039(2*(n+1))` -/
def P4623809038466727792.Spec : Prop :=
  ∀ n, P4623809038466727792.a n = A141097 (n + 1)

end A141097

/-! ## A141097.P11938740643353412180

`A185279(2*(n+1))-A005171(2*n+1)`
-/

namespace A141097.P11938740643353412180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185279 (2 * (n + 1)) - A005171 (2 * n + 1)

end

end A141097.P11938740643353412180

namespace A141097

/-- `A185279(2*(n+1))-A005171(2*n+1)` -/
def P11938740643353412180.Spec : Prop :=
  ∀ n, P11938740643353412180.a n = A141097 (n + 1)

end A141097

/-! ## A141097.P1843084365545253897

`A010051(2*n+1)+A185279(2*(n+1))-1`
-/

namespace A141097.P1843084365545253897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * n + 1) + (A185279 (2 * (n + 1)) - 1)

end

end A141097.P1843084365545253897

namespace A141097

/-- `A010051(2*n+1)+A185279(2*(n+1))-1` -/
def P1843084365545253897.Spec : Prop :=
  ∀ n, P1843084365545253897.a n = A141097 (n + 1)

theorem P1843084365545253897.correct : P1843084365545253897.Spec := by
  intro n
  simp only [A141097, Nat.add_sub_cancel, A141097.P1843084365545253897.a, A141097.P3917522356591444959.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A141095, A141095.P5876124804023850422.a, A185279, A185279.P10790172793352354288.a, A008619, A008619.P16053834178911111118.a, A016035, A016035.P2093318257914128569.f1, A016035.P2093318257914128569.f2, A016035.P2093318257914128569.a, A057860, A057860.P15781516878484293447.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A345039, A345039.P8520321823126508405.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, A000010, A000010.P4673923239450215316.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141097

/-! ## A141097.P10555664499033743996

`A141095(n+1)+A141100(n+1)-A141099(n+1)`
-/

namespace A141097.P10555664499033743996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141095 (n + 1) + (A141100 (n + 1) - A141099 (n + 1))

end

end A141097.P10555664499033743996

namespace A141097

/-- `A141095(n+1)+A141100(n+1)-A141099(n+1)` -/
def P10555664499033743996.Spec : Prop :=
  ∀ n, P10555664499033743996.a n = A141097 (n + 1)

theorem P10555664499033743996.correct : P10555664499033743996.Spec := by
  intro n
  simp only [A141097, Nat.add_sub_cancel, A141097.P10555664499033743996.a, A141097.P3917522356591444959.a, A005171, A005171.P15860856746370777121.a, A141095, A141095.P5876124804023850422.a, A141099, A141099.P13418424071663914985.a, A141100, A141100.P10527061438519986607.a, A004526, A004526.P10084182425416171735.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A171691, A171691.P6852326580406888419.a, A345039, A345039.P8520321823126508405.a, A008619, A008619.P16053834178911111118.a, A016035, A016035.P2093318257914128569.f1, A016035.P2093318257914128569.f2, A016035.P2093318257914128569.a, A057860, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141097

/-!
# A141098: Even numbers not representable as the sum of two coprime composite numbers.

The programs for A141098, there is no canonical definition to state claims against.
-/

/-! ## A141098.P15202151560316947006

`∩[2*n, A096076(n)]`
-/

namespace A141098.P15202151560316947006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A141098.P15202151560316947006

/-! ## A141098.P18347243792796014324

`record[gcd(2*(n+1), A141097(n+1))]`
-/

namespace A141098.P18347243792796014324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A141097 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141098.P18347243792796014324

/-! ## A141098.P16339366319065672649

`filter[A096076(n), A059841(#)]`
-/

namespace A141098.P16339366319065672649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A141098.P16339366319065672649

/-! ## A141098.P17775443548587603398

`record[A153733(A096076(n+1))]`
-/

namespace A141098.P17775443548587603398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (A096076 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A141098.P17775443548587603398

/-! ## A141098.P7575211713586924394

`A096076(lt[A096076(n)%2, 1])`
-/

namespace A141098.P7575211713586924394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096076 n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096076 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A141098.P7575211713586924394

/-!
# A141099: Number of unordered pairs of odd nonprime numbers that sum to 2n.

The programs for A141099, the canonical program `A141099.P13418424071663914985` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A141099 has offset 1).

The definition of A141099 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A141099.P951588909397431019

`A334207(n+1)+1-A065033(n)`
-/

namespace A141099.P951588909397431019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 (n + 1) + (1 - A065033 n)

end

end A141099.P951588909397431019

namespace A141099

/-- `A334207(n+1)+1-A065033(n)` -/
def P951588909397431019.Spec : Prop :=
  ∀ n, P951588909397431019.a n = A141099 (n + 1)

end A141099

/-! ## A141099.P15159851977483419154

`A334207(n+1)-A140106(n+1)`
-/

namespace A141099.P15159851977483419154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334207 (n + 1) - A140106 (n + 1)

end

end A141099.P15159851977483419154

namespace A141099

/-- `A334207(n+1)-A140106(n+1)` -/
def P15159851977483419154.Spec : Prop :=
  ∀ n, P15159851977483419154.a n = A141099 (n + 1)

end A141099

/-! ## A141099.P16737193093335519565

`A141100(n+1)+A005171(2*n+1)`
-/

namespace A141099.P16737193093335519565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (n + 1) + A005171 (2 * n + 1)

end

end A141099.P16737193093335519565

namespace A141099

/-- `A141100(n+1)+A005171(2*n+1)` -/
def P16737193093335519565.Spec : Prop :=
  ∀ n, P16737193093335519565.a n = A141099 (n + 1)

theorem P16737193093335519565.correct : P16737193093335519565.Spec := by
  intro n
  simp only [A141099, Nat.add_sub_cancel, A141099.P16737193093335519565.a, A141099.P13418424071663914985.a, A004526, A004526.P10084182425416171735.a, A005171, A005171.P15860856746370777121.a, A141100, A141100.P10527061438519986607.a, A171691, A171691.P6852326580406888419.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141099

/-! ## A141099.P13418424071663914985

`A171691(2*(n+1))-A004526(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A141099

/-- `A171691(2*(n+1))-A004526(n+1)` -/
def P13418424071663914985.Spec : Prop :=
  ∀ n, P13418424071663914985.a n = A141099 (n + 1)

theorem P13418424071663914985.correct : P13418424071663914985.Spec := by
  intro n
  simp only [A141099, Nat.add_sub_cancel]

end A141099

/-! ## A141099.P11284551069484828387

`A141095(n+1)+A141100(n+1)-A141097(n+1)`
-/

namespace A141099.P11284551069484828387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141095 (n + 1) + (A141100 (n + 1) - A141097 (n + 1))

end

end A141099.P11284551069484828387

namespace A141099

/-- `A141095(n+1)+A141100(n+1)-A141097(n+1)` -/
def P11284551069484828387.Spec : Prop :=
  ∀ n, P11284551069484828387.a n = A141099 (n + 1)

theorem P11284551069484828387.correct : P11284551069484828387.Spec := by
  intro n
  simp only [A141099, Nat.add_sub_cancel, A141099.P11284551069484828387.a, A141099.P13418424071663914985.a, A004526, A004526.P10084182425416171735.a, A141095, A141095.P5876124804023850422.a, A141097, A141097.P3917522356591444959.a, A141100, A141100.P10527061438519986607.a, A171691, A171691.P6852326580406888419.a, A005171, A005171.P15860856746370777121.a, A062610, A062610.P4050296161301265459.f1, A062610.P4050296161301265459.a, A345039, A345039.P8520321823126508405.a, A008619, A008619.P16053834178911111118.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A016035, A016035.P2093318257914128569.f1, A016035.P2093318257914128569.f2, A016035.P2093318257914128569.a, A057860, A057860.P15781516878484293447.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A051953, A051953.P11179276897610979764.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A141099

/-! ## A141099.P14712180856794558967

`A110654(A215462(n+1))`
-/

namespace A141099.P14712180856794558967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A215462 (n + 1)).toNat

end

end A141099.P14712180856794558967

namespace A141099

/-- `A110654(A215462(n+1))` -/
def P14712180856794558967.Spec : Prop :=
  ∀ n, P14712180856794558967.a n = A141099 (n + 1)

end A141099

/-! ## A141099.P13148069598629836784

`A004526(A215462(n+1)+1)`
-/

namespace A141099.P13148069598629836784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A215462 (n + 1) + 1).toNat

end

end A141099.P13148069598629836784

namespace A141099

/-- `A004526(A215462(n+1)+1)` -/
def P13148069598629836784.Spec : Prop :=
  ∀ n, P13148069598629836784.a n = A141099 (n + 1)

end A141099

