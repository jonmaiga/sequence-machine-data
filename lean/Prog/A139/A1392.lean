import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A139204: Numbers k such that (k!-9)/9 is prime.

The programs for A139204, there is no canonical definition to state claims against.
-/

/-! ## A139204.P3496591869767631209

`A177763(n+2)-A057559(A320155(n+1))`
-/

namespace A139204.P3496591869767631209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177763 (n + 2) - A057559 (A320155 (n + 1)).toNat

end

end A139204.P3496591869767631209

/-!
# A139208: Numbers 2*k+1 for which numbers A006694(k) are record values for A006694.

The programs for A139208, there is no canonical definition to state claims against.
-/

/-! ## A139208.P10214341079125453612

`A175198(record[A081844(n)])`
-/

namespace A139208.P10214341079125453612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139208.P10214341079125453612

/-! ## A139208.P15014620699614988631

`A175198(record[A006694(n)+1])`
-/

namespace A139208.P15014620699614988631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139208.P15014620699614988631

/-! ## A139208.P6192871244277834970

`A175198(record[A000374(n+1)])`
-/

namespace A139208.P6192871244277834970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139208.P6192871244277834970

/-! ## A139208.P9073183847744098106

`A175198(record[A091248(2*n+1)])`
-/

namespace A139208.P9073183847744098106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091248 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175198 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139208.P9073183847744098106

/-! ## A139208.P677512956267807603

`A143088(eq[A018843(n), A026729(n)])`
-/

namespace A139208.P677512956267807603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143088 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A139208.P677512956267807603

/-!
# A139209: Fibonacci bisection minus powers of 2.

The programs for A139209, the canonical program `A139209.P15313262022134198685` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139209 has offset 0).

The definition of A139209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139209.P15313262022134198685

`A001906(n)-A000079(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139209

/-- `A001906(n)-A000079(n)` -/
def P15313262022134198685.Spec : Prop :=
  ∀ n, P15313262022134198685.a n = A139209 n

theorem P15313262022134198685.correct : P15313262022134198685.Spec := by
  intro n
  simp only [A139209]

end A139209

/-! ## A139209.P13553350679394004467

`5*a(n-1)-7*a(n-2)+2*a(n-3)` with `a(0)=-1, a(1)=-1, a(2)=-1`
-/

namespace A139209.P13553350679394004467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, -1] fun n a =>
  5 * a (n - 1) - 7 * a (n - 2) + 2 * a (n - 3)

end

end A139209.P13553350679394004467

namespace A139209

/-- `5*a(n-1)-7*a(n-2)+2*a(n-3)` -/
def P13553350679394004467.Spec : Prop :=
  ∀ n, P13553350679394004467.a n = A139209 n

end A139209

/-! ## A139209.P2817864084294066583

`ogf((1-4x+3x^2)/(-1+5x-7x^2+2x^3))`
-/

namespace A139209.P2817864084294066583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 4, -3] [1, -5, 7, -2] n

end

end A139209.P2817864084294066583

namespace A139209

/-- `ogf((1-4x+3x^2)/(-1+5x-7x^2+2x^3))` -/
def P2817864084294066583.Spec : Prop :=
  ∀ n, P2817864084294066583.a n = A139209 n

end A139209

/-! ## A139209.P12493226032344152315

`A047790(n)-1`
-/

namespace A139209.P12493226032344152315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047790 n - 1

end

end A139209.P12493226032344152315

namespace A139209

/-- `A047790(n)-1` -/
def P12493226032344152315.Spec : Prop :=
  ∀ n, P12493226032344152315.a n = A139209 n

end A139209

/-! ## A139209.P8391826387040104919

`A028892(2*n)`
-/

namespace A139209.P8391826387040104919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028892 (2 * n)

end

end A139209.P8391826387040104919

namespace A139209

/-- `A028892(2*n)` -/
def P8391826387040104919.Spec : Prop :=
  ∀ n, P8391826387040104919.a n = A139209 n

end A139209

/-! ## A139209.P4992825954848468787

`A174959(2*n)-1`
-/

namespace A139209.P4992825954848468787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174959 (2 * n) - 1

end

end A139209.P4992825954848468787

namespace A139209

/-- `A174959(2*n)-1` -/
def P4992825954848468787.Spec : Prop :=
  ∀ n, P4992825954848468787.a n = A139209 n

end A139209

/-! ## A139209.P5499888705297471850

`A000045(2*n)-2^n`
-/

namespace A139209.P5499888705297471850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - (2 ^ n : ℤ)

end

end A139209.P5499888705297471850

namespace A139209

/-- `A000045(2*n)-2^n` -/
def P5499888705297471850.Spec : Prop :=
  ∀ n, P5499888705297471850.a n = A139209 n

end A139209

/-! ## A139209.P2303820208492826772

`A001611(2*n)-(2^n+1)`
-/

namespace A139209.P2303820208492826772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n) - (2 ^ n + 1 : ℤ)

end

end A139209.P2303820208492826772

namespace A139209

/-- `A001611(2*n)-(2^n+1)` -/
def P2303820208492826772.Spec : Prop :=
  ∀ n, P2303820208492826772.a n = A139209 n

end A139209

/-! ## A139209.P14587756568708464158

`record[A000045(n%4+n)]-2^n`
-/

namespace A139209.P14587756568708464158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 ^ n : ℤ)

end

end A139209.P14587756568708464158

namespace A139209

/-- `record[A000045(n%4+n)]-2^n` -/
def P14587756568708464158.Spec : Prop :=
  ∀ n, P14587756568708464158.a n = A139209 n

end A139209

/-! ## A139209.P16168290728008653859

`record[A000045(and(n, n+1))]-2^n`
-/

namespace A139209.P16168290728008653859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 ^ n : ℤ)

end

end A139209.P16168290728008653859

namespace A139209

/-- `record[A000045(and(n, n+1))]-2^n` -/
def P16168290728008653859.Spec : Prop :=
  ∀ n, P16168290728008653859.a n = A139209 n

end A139209

/-! ## A139209.P6427280144013178061

`∑[A000045(comp[n+2+n])]-2^n`
-/

namespace A139209.P6427280144013178061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2 + n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 ^ n : ℤ)

end

end A139209.P6427280144013178061

namespace A139209

/-- `∑[A000045(comp[n+2+n])]-2^n` -/
def P6427280144013178061.Spec : Prop :=
  ∀ n, P6427280144013178061.a n = A139209 n

end A139209

/-! ## A139209.P1859452112003992814

`A005673(A004275(n))-1`
-/

namespace A139209.P1859452112003992814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A004275 n).toNat - 1

end

end A139209.P1859452112003992814

namespace A139209

/-- `A005673(A004275(n))-1` -/
def P1859452112003992814.Spec : Prop :=
  ∀ n, P1859452112003992814.a n = A139209 n

end A139209

/-! ## A139209.P12699348863103196201

`A005673(A092535(n))-1`
-/

namespace A139209.P12699348863103196201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A092535 n).toNat - 1

end

end A139209.P12699348863103196201

namespace A139209

/-- `A005673(A092535(n))-1` -/
def P12699348863103196201.Spec : Prop :=
  ∀ n, P12699348863103196201.a n = A139209 n

end A139209

/-! ## A139209.P16648667761516944942

`A192727(A004273(n))-1`
-/

namespace A139209.P16648667761516944942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (A004273 n).toNat - 1

end

end A139209.P16648667761516944942

namespace A139209

/-- `A192727(A004273(n))-1` -/
def P16648667761516944942.Spec : Prop :=
  ∀ n, P16648667761516944942.a n = A139209 n

end A139209

/-! ## A139209.P17846966568069953341

`A192727(A163985(n))-1`
-/

namespace A139209.P17846966568069953341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192727 (A163985 n).toNat - 1

end

end A139209.P17846966568069953341

namespace A139209

/-- `A192727(A163985(n))-1` -/
def P17846966568069953341.Spec : Prop :=
  ∀ n, P17846966568069953341.a n = A139209 n

end A139209

/-! ## A139209.P11424516708622295115

`A054452(n)-A000325(n)`
-/

namespace A139209.P11424516708622295115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054452 n - A000325 n

end

end A139209.P11424516708622295115

namespace A139209

/-- `A054452(n)-A000325(n)` -/
def P11424516708622295115.Spec : Prop :=
  ∀ n, P11424516708622295115.a n = A139209 n

end A139209

/-! ## A139209.P12106889960774623486

`A055588(n)-A000051(n)`
-/

namespace A139209.P12106889960774623486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 n - A000051 n

end

end A139209.P12106889960774623486

namespace A139209

/-- `A055588(n)-A000051(n)` -/
def P12106889960774623486.Spec : Prop :=
  ∀ n, P12106889960774623486.a n = A139209 n

end A139209

/-! ## A139209.P3879410866636820260

`A249450(n)-A000918(n)`
-/

namespace A139209.P3879410866636820260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 n - A000918 n

end

end A139209.P3879410866636820260

namespace A139209

/-- `A249450(n)-A000918(n)` -/
def P3879410866636820260.Spec : Prop :=
  ∀ n, P3879410866636820260.a n = A139209 n

end A139209

/-! ## A139209.P10163334313838606905

`A005673(A004271(n+1))-1`
-/

namespace A139209.P10163334313838606905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A004271 (n + 1)).toNat - 1

end

end A139209.P10163334313838606905

namespace A139209

/-- `A005673(A004271(n+1))-1` -/
def P10163334313838606905.Spec : Prop :=
  ∀ n, P10163334313838606905.a n = A139209 n

end A139209

/-! ## A139209.P2143833815042250533

`A005673(A004278(n+1))-1`
-/

namespace A139209.P2143833815042250533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005673 (A004278 (n + 1)).toNat - 1

end

end A139209.P2143833815042250533

namespace A139209

/-- `A005673(A004278(n+1))-1` -/
def P2143833815042250533.Spec : Prop :=
  ∀ n, P2143833815042250533.a n = A139209 n

end A139209

/-!
# A139210: Number of recursively 3-palindromic words of length n over an alphabet of 2 letters.

The programs for A139210, there is no canonical definition to state claims against.
-/

/-! ## A139210.P6178447243547905010

`A331109(A050293(n+1))`
-/

namespace A139210.P6178447243547905010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331109 (A050293 (n + 1)).toNat

end

end A139210.P6178447243547905010

/-! ## A139210.P13886037935711168554

`A001316(∑[A290415(A001065(n+1))])`
-/

namespace A139210.P13886037935711168554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290415 (A001065 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139210.P13886037935711168554

/-! ## A139210.P18259936109727263864

`A060594(4*A063549(n+1))`
-/

namespace A139210.P18259936109727263864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (4 * A063549 (n + 1)).toNat

end

end A139210.P18259936109727263864

/-! ## A139210.P14240622728050051038

`A286324(4*A063549(n+1))`
-/

namespace A139210.P14240622728050051038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (4 * A063549 (n + 1)).toNat

end

end A139210.P14240622728050051038

/-! ## A139210.P2004205137660667595

`A001316(floor(sqrt(A145012(n+2))))`
-/

namespace A139210.P2004205137660667595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (Int.sqrt (A145012 (n + 2))).toNat

end

end A139210.P2004205137660667595

/-!
# A139211: Partial sums of A003325.

The programs for A139211, there is no canonical definition to state claims against.
-/

/-! ## A139211.P2214256838302994598

`∑[A003325(n+1)]`
-/

namespace A139211.P2214256838302994598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P2214256838302994598

/-! ## A139211.P17321554885569582314

`∑[A339993(n+1)/8]`
-/

namespace A139211.P17321554885569582314
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339993 (n + 1) : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P17321554885569582314

/-! ## A139211.P18312492600989144048

`∑[record[A003325(A291769(n))]]`
-/

namespace A139211.P18312492600989144048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P18312492600989144048

/-! ## A139211.P329326865711655004

`∑[record[A003325(A344180(n))]]`
-/

namespace A139211.P329326865711655004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P329326865711655004

/-! ## A139211.P6502060741936024122

`∑[∪[A024670(n+1), A337529(n+1)]]`
-/

namespace A139211.P6502060741936024122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337529 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P6502060741936024122

/-! ## A139211.P14642129584608817773

`∑[record[A003325(A246694(n))]]`
-/

namespace A139211.P14642129584608817773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P14642129584608817773

/-! ## A139211.P13104945796468808038

`∑[record[A003325(A263111(n))]]`
-/

namespace A139211.P13104945796468808038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A263111 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P13104945796468808038

/-! ## A139211.P8384901026719555676

`∑[lt[0, A280618(n)]]`
-/

namespace A139211.P8384901026719555676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280618 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P8384901026719555676

/-! ## A139211.P18303330553025202182

`∑[record[A003325(A051340(n))]]`
-/

namespace A139211.P18303330553025202182
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (A051340 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P18303330553025202182

/-! ## A139211.P6497857397084143922

`∑[A338667(n+1)%∑[A257718(n+1)+1]]`
-/

namespace A139211.P6497857397084143922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257718 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338667 (n + 1)) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139211.P6497857397084143922

/-!
# A139213: Expansion of phi(q) * phi(-q^18) / (phi(-q^3) * phi(-q^6)) in powers of q where phi() is a Ramanujan theta function.

The programs for A139213, there is no canonical definition to state claims against.
-/

/-! ## A139213.P7729426568968439868

`(n+1)%3*A261154(n)`
-/

namespace A139213.P7729426568968439868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 3 : ℕ) : ℤ) * A261154 n

end

end A139213.P7729426568968439868

/-! ## A139213.P11712176816944122463

`A057079(n)*A233672(n)`
-/

namespace A139213.P11712176816944122463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057079 n * A233672 n

end

end A139213.P11712176816944122463

/-! ## A139213.P15914091444770530971

`A132954(n)*A233672(n)`
-/

namespace A139213.P15914091444770530971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132954 n * A233672 n

end

end A139213.P15914091444770530971

/-! ## A139213.P11716058363656992487

`A233673(n)/A100051(n)`
-/

namespace A139213.P11716058363656992487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 n : ℚ) / (A100051 n : ℚ)

end

end A139213.P11716058363656992487

/-! ## A139213.P1190657810383562005

`abs(A060236(n+1)*A233672(n))`
-/

namespace A139213.P1190657810383562005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A060236 (n + 1) * A233672 n|

end

end A139213.P1190657810383562005

/-! ## A139213.P5789957695966770255

`∑[A061347(n+1)]*A261154(n)`
-/

namespace A139213.P5789957695966770255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A261154 n

end

end A139213.P5789957695966770255

/-! ## A139213.P9780718676463288958

`Δ[A130481(n)]*A261154(n)`
-/

namespace A139213.P9780718676463288958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A261154 n

end

end A139213.P9780718676463288958

/-!
# A139214: Expansion of q * psi(q^2) * psi(-q^9) / (phi(-q^3) * psi(-q^3)) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A139214, there is no canonical definition to state claims against.
-/

/-! ## A139214.P8168914163625702753

`A057078(n)*A123649(n+1)`
-/

namespace A139214.P8168914163625702753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 n * A123649 (n + 1)

end

end A139214.P8168914163625702753

/-! ## A139214.P11456191552438280690

`A233670(n+1)/A132419(n)`
-/

namespace A139214.P11456191552438280690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233670 (n + 1) : ℚ) / (A132419 n : ℚ)

end

end A139214.P11456191552438280690

/-! ## A139214.P15096580666036341374

`lcm(A187153(n+1), A260190(n))`
-/

namespace A139214.P15096580666036341374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A187153 (n + 1)) (A260190 n)

end

end A139214.P15096580666036341374

/-! ## A139214.P17346004403602324839

`lcm(Δ[A004396(n)], A123649(n+1))`
-/

namespace A139214.P17346004403602324839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (f1 (n + 1) - f1 n) (A123649 (n + 1))

end

end A139214.P17346004403602324839

/-! ## A139214.P15911328368557581030

`A139213(n+1)/2`
-/

namespace A139214.P15911328368557581030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139213 (n + 1) : ℚ) / 2

end

end A139214.P15911328368557581030

/-! ## A139214.P5215481750006972440

`A057079(n+1)/2*A233672(n+1)`
-/

namespace A139214.P5215481750006972440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057079 (n + 1) : ℚ) / 2 * (A233672 (n + 1) : ℚ)

end

end A139214.P5215481750006972440

/-! ## A139214.P17268712968633627596

`A233673(n+1)/(2*A100051(n+1))`
-/

namespace A139214.P17268712968633627596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233673 (n + 1) : ℚ) / (2 * A100051 (n + 1) : ℚ)

end

end A139214.P17268712968633627596

/-! ## A139214.P6698036265885057315

`A132954(n+1)/2*A233672(n+1)`
-/

namespace A139214.P6698036265885057315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132954 (n + 1) : ℚ) / 2 * (A233672 (n + 1) : ℚ)

end

end A139214.P6698036265885057315

/-! ## A139214.P9117256420748373576

`A049347(2*n)*A123649(n+1)`
-/

namespace A139214.P9117256420748373576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * n) * A123649 (n + 1)

end

end A139214.P9117256420748373576

/-! ## A139214.P4962988261616801977

`abs(A233672(n+1)/A060236(2*n+1))`
-/

namespace A139214.P4962988261616801977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A233672 (n + 1) : ℚ) / (A060236 (2 * n + 1) : ℚ)|

end

end A139214.P4962988261616801977

/-! ## A139214.P13824950275852705955

`A233672(n+1)/A057079(n²)`
-/

namespace A139214.P13824950275852705955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233672 (n + 1) : ℚ) / (A057079 (n ^ 2) : ℚ)

end

end A139214.P13824950275852705955

/-! ## A139214.P14128159779663680227

`A233672(n+1)/A132954(n²)`
-/

namespace A139214.P14128159779663680227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233672 (n + 1) : ℚ) / (A132954 (n ^ 2) : ℚ)

end

end A139214.P14128159779663680227

/-!
# A139217: Smallest positive integer of the form 3k+1 such that all subsets of {a(1),...,a(n)} have a different sum.

The programs for A139217, there is no canonical definition to state claims against.
-/

/-! ## A139217.P18086117308744765892

`ogf((-1-3x-2x^2+6x^4)/(-1+x+x^2+2x^3))`
-/

namespace A139217.P18086117308744765892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 2, 0, -6] [1, -1, -1, -2] n

end

end A139217.P18086117308744765892

/-! ## A139217.P10043420595434956608

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=4, a(2)=7, a(3)=13, a(4)=22`
-/

namespace A139217.P10043420595434956608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 7, 13, 22] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3)

end

end A139217.P10043420595434956608

/-! ## A139217.P14904926670494311828

`A131713(n)+6*A166444(n)`
-/

namespace A139217.P14904926670494311828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131713 n + 6 * A166444 n

end

end A139217.P14904926670494311828

/-! ## A139217.P16159615780097787693

`record[A249714(n+1)+A131713(n)]`
-/

namespace A139217.P16159615780097787693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249714 (n + 1) + A131713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139217.P16159615780097787693

/-! ## A139217.P4824628015295015047

`Δ[xor(A003945(n), A220659(n+1))]`
-/

namespace A139217.P4824628015295015047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003945 n) (A220659 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139217.P4824628015295015047

/-!
# A139218: Smallest positive integer of the form 3k+2 such that all subsets of {a(1),...,a(n)} have a different sum.

The programs for A139218, there is no canonical definition to state claims against.
-/

/-! ## A139218.P11206709071716421623

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=5, a(2)=8, a(3)=14, a(4)=23, a(5)=41`
-/

namespace A139218.P11206709071716421623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 8, 14, 23, 41] fun n a =>
  a (n - 1) + a (n - 2) + 2 * a (n - 3)

end

end A139218.P11206709071716421623

/-! ## A139218.P1240069205792680843

`A004186(2*n+1)+A003056(A371724(n))`
-/

namespace A139218.P1240069205792680843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004186 (2 * n + 1) + A003056 (A371724 n).toNat

end

end A139218.P1240069205792680843

/-!
# A139219: Primes of the form 41+(n+n^2)/2=41+A000217(n).

The programs for A139219, the canonical program `A139219.P13936176518258541401` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139219 has offset 1).

The definition of A139219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 117 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139219.P13936176518258541401

`p?[∑[n]+41]`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139219

/-- `p?[∑[n]+41]` -/
def P13936176518258541401.Spec : Prop :=
  ∀ n, (P13936176518258541401.a n : ℤ) = A139219 (n + 1)

theorem P13936176518258541401.correct : P13936176518258541401.Spec := by
  intro n
  simp only [A139219, Nat.add_sub_cancel]

end A139219

/-! ## A139219.P1746881238154161176

`or(1, p?[C(n+1, 2)+41])`
-/

namespace A139219.P1746881238154161176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A139219.P1746881238154161176

namespace A139219

/-- `or(1, p?[C(n+1, 2)+41])` -/
def P1746881238154161176.Spec : Prop :=
  ∀ n, (P1746881238154161176.a n : ℤ) = A139219 (n + 1)

end A139219

/-! ## A139219.P7931196567917924388

`∏{d}[p?[C(n+1, 2)+41], #]`
-/

namespace A139219.P7931196567917924388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A139219.P7931196567917924388

namespace A139219

/-- `∏{d}[p?[C(n+1, 2)+41], #]` -/
def P7931196567917924388.Spec : Prop :=
  ∀ n, (P7931196567917924388.a n : ℤ) = A139219 (n + 1)

end A139219

/-! ## A139219.P9162660917647420582

`∑{p}[p?[C(n+1, 2)+41], #]`
-/

namespace A139219.P9162660917647420582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A139219.P9162660917647420582

namespace A139219

/-- `∑{p}[p?[C(n+1, 2)+41], #]` -/
def P9162660917647420582.Spec : Prop :=
  ∀ n, (P9162660917647420582.a n : ℤ) = A139219 (n + 1)

end A139219

/-! ## A139219.P8345776620485989236

`∏{p}[p?[C(n+1, 2)+41], #]`
-/

namespace A139219.P8345776620485989236
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 41

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A139219.P8345776620485989236

namespace A139219

/-- `∏{p}[p?[C(n+1, 2)+41], #]` -/
def P8345776620485989236.Spec : Prop :=
  ∀ n, (P8345776620485989236.a n : ℤ) = A139219 (n + 1)

end A139219

/-! ## A139219.P14667288198092468096

`∑{p}[p?[a(n-1)+n], #]` with `a(0)=41`
-/

namespace A139219.P14667288198092468096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [41] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A139219.P14667288198092468096

namespace A139219

/-- `∑{p}[p?[a(n-1)+n], #]` -/
def P14667288198092468096.Spec : Prop :=
  ∀ n, (P14667288198092468096.a n : ℤ) = A139219 (n + 1)

end A139219

/-! ## A139219.P783878759860680432

`∏{p}[p?[a(n-1)+n], #]` with `a(0)=41`
-/

namespace A139219.P783878759860680432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [41] fun n f2 =>
  f2 (n - 1) + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A139219.P783878759860680432

namespace A139219

/-- `∏{p}[p?[a(n-1)+n], #]` -/
def P783878759860680432.Spec : Prop :=
  ∀ n, (P783878759860680432.a n : ℤ) = A139219 (n + 1)

end A139219

/-! ## A139219.P11621017888574131037

`abs(2-p?[C(n+1, 2)+41])+2`
-/

namespace A139219.P11621017888574131037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)| + 2

end

end A139219.P11621017888574131037

namespace A139219

/-- `abs(2-p?[C(n+1, 2)+41])+2` -/
def P11621017888574131037.Spec : Prop :=
  ∀ n, P11621017888574131037.a n = A139219 (n + 1)

end A139219

/-! ## A139219.P6246815541512399627

`(p?[C(n+1, 2)+41]^(1/2))²`
-/

namespace A139219.P6246815541512399627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 41

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A139219.P6246815541512399627

namespace A139219

/-- `(p?[C(n+1, 2)+41]^(1/2))²` -/
def P6246815541512399627.Spec : Prop :=
  ∀ n, P6246815541512399627.a n = (A139219 (n + 1) : ℝ)

end A139219

/-! ## A139219.P4756423887548955

`gcd(n, n+1)*p?[C(n+1, 2)+41]`
-/

namespace A139219.P4756423887548955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139219.P4756423887548955

namespace A139219

/-- `gcd(n, n+1)*p?[C(n+1, 2)+41]` -/
def P4756423887548955.Spec : Prop :=
  ∀ n, (P4756423887548955.a n : ℤ) = A139219 (n + 1)

end A139219

/-! ## A139219.P9216110594329342911

`p?[C(n+1, 2)+41]+C(n, n+1)`
-/

namespace A139219.P9216110594329342911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 + 41

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + Nat.choose n (n + 1)

end

end A139219.P9216110594329342911

namespace A139219

/-- `p?[C(n+1, 2)+41]+C(n, n+1)` -/
def P9216110594329342911.Spec : Prop :=
  ∀ n, (P9216110594329342911.a n : ℤ) = A139219 (n + 1)

end A139219

/-! ## A139219.P12401449542603860236

`or(1, p?[A000217(n)+41])`
-/

namespace A139219.P12401449542603860236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A139219.P12401449542603860236

namespace A139219

/-- `or(1, p?[A000217(n)+41])` -/
def P12401449542603860236.Spec : Prop :=
  ∀ n, P12401449542603860236.a n = A139219 (n + 1)

end A139219

/-! ## A139219.P15625613374797719078

`or(1, p?[A022856(n+1)+39])`
-/

namespace A139219.P15625613374797719078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (n + 1) + 39

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A139219.P15625613374797719078

namespace A139219

/-- `or(1, p?[A022856(n+1)+39])` -/
def P15625613374797719078.Spec : Prop :=
  ∀ n, P15625613374797719078.a n = A139219 (n + 1)

end A139219

/-! ## A139219.P2351620162990851575

`or(1, p?[A134869(n+1)+40])`
-/

namespace A139219.P2351620162990851575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134869 (n + 1) + 40

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A139219.P2351620162990851575

namespace A139219

/-- `or(1, p?[A134869(n+1)+40])` -/
def P2351620162990851575.Spec : Prop :=
  ∀ n, P2351620162990851575.a n = A139219 (n + 1)

end A139219

/-! ## A139219.P4032189075743283278

`or(1, p?[A202018(n)-A000217(n)])`
-/

namespace A139219.P4032189075743283278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 n - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A139219.P4032189075743283278

namespace A139219

/-- `or(1, p?[A202018(n)-A000217(n)])` -/
def P4032189075743283278.Spec : Prop :=
  ∀ n, P4032189075743283278.a n = A139219 (n + 1)

end A139219

/-! ## A139219.P15103036333533736980

`p?[A000217(n)+41]%A016973(n)`
-/

namespace A139219.P15103036333533736980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A016973 n)

end

end A139219.P15103036333533736980

namespace A139219

/-- `p?[A000217(n)+41]%A016973(n)` -/
def P15103036333533736980.Spec : Prop :=
  ∀ n, P15103036333533736980.a n = A139219 (n + 1)

end A139219

/-! ## A139219.P5779714103116477155

`p?[A000217(n)+41]+A000038(n)%2`
-/

namespace A139219.P5779714103116477155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A000038 n) 2

end

end A139219.P5779714103116477155

namespace A139219

/-- `p?[A000217(n)+41]+A000038(n)%2` -/
def P5779714103116477155.Spec : Prop :=
  ∀ n, P5779714103116477155.a n = A139219 (n + 1)

end A139219

/-! ## A139219.P17112117482507757548

`p?[A000217(n)+41]/A005408(n)%2`
-/

namespace A139219.P17112117482507757548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 41

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / (Int.tmod (A005408 n) 2 : ℚ)

end

end A139219.P17112117482507757548

namespace A139219

/-- `p?[A000217(n)+41]/A005408(n)%2` -/
def P17112117482507757548.Spec : Prop :=
  ∀ n, P17112117482507757548.a n = (A139219 (n + 1) : ℚ)

end A139219

/-! ## A139219.P12657547483651956123

`p?[A000217(n)+41]+A103517(n)%(n+1)`
-/

namespace A139219.P12657547483651956123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + 41

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + Int.tmod (A103517 n) (n + 1 : ℤ)

end

end A139219.P12657547483651956123

namespace A139219

/-- `p?[A000217(n)+41]+A103517(n)%(n+1)` -/
def P12657547483651956123.Spec : Prop :=
  ∀ n, P12657547483651956123.a n = A139219 (n + 1)

end A139219

/-!
# A139220: Numbers k such that 41+(k+k^2)/2 = 41+A000217(k) is prime.

The programs for A139220, there is no canonical definition to state claims against.
-/

/-! ## A139220.P17818629809701346341

`eq[2, A000005(∑[n]+41)]`
-/

namespace A139220.P17818629809701346341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∑ j ∈ Finset.range (n + 1), f3 j + 41)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139220.P17818629809701346341

/-! ## A139220.P8119863297377386023

`lt[A001222(∑[n]+41), 2]`
-/

namespace A139220.P8119863297377386023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ j ∈ Finset.range (n + 1), f2 j + 41)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A139220.P8119863297377386023

/-! ## A139220.P14041395711585571635

`eq[1, A001222(C(n+1, 2)+41)]`
-/

namespace A139220.P14041395711585571635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose (n + 1) 2 + 41)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139220.P14041395711585571635

/-! ## A139220.P10238606111345377441

`eq[1, A001222(A000217(n)+41)]`
-/

namespace A139220.P10238606111345377441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000217 n + 41).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139220.P10238606111345377441

/-! ## A139220.P8379436180519923607

`lt[n+1, A020639(A000217(n)+41)]`
-/

namespace A139220.P8379436180519923607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000217 n + 41).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A139220.P8379436180519923607

/-!
# A139221: Numbers k such that both 41+(k+k^2)/2 and 41+(k+k^2) are primes.

The programs for A139221, there is no canonical definition to state claims against.
-/

/-! ## A139221.P6212225715333457213

`∩[A056561(n+1), A139220(n+1)]`
-/

namespace A139221.P6212225715333457213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139221.P6212225715333457213

/-! ## A139221.P22076262269032833

`∩[A002837(n+1)-1, A139220(n+1)]`
-/

namespace A139221.P22076262269032833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139221.P22076262269032833

/-! ## A139221.P360920580283525715

`∩[eq[1, A001222(n²+41+n)], A139220(n+1)]`
-/

namespace A139221.P360920580283525715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n ^ 2 + 41 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A139221.P360920580283525715

/-! ## A139221.P12174899126279201066

`∩[eq[2, A000005(n²+41+n)], A139220(n+1)]`
-/

namespace A139221.P12174899126279201066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n ^ 2 + 41 + n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A139221.P12174899126279201066

/-!
# A139222: a(n) = 30*n - 27.

The programs for A139222, the canonical program `A139222.P4263325917857880321` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139222 has offset 1).

The definition of A139222 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*(n+1)-27` (program `A139222.P4263325917857880321`, by `A139222.P4263325917857880321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139222.P17573406300069523429

`a(n-1)+30` with `a(0)=3`
-/

namespace A139222.P17573406300069523429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + 30

end

end A139222.P17573406300069523429

namespace A139222

/-- `a(n-1)+30` -/
def P17573406300069523429.Spec : Prop :=
  ∀ n, (P17573406300069523429.a n : ℤ) = A139222 (n + 1)

theorem P17573406300069523429.correct : P17573406300069523429.Spec := by
  intro n
  induction n with
  | zero => simp [A139222, A139222.P17573406300069523429.a, A139222.P4263325917857880321.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139222, Nat.add_sub_cancel, A139222.P17573406300069523429.a, A139222.P4263325917857880321.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139222

/-! ## A139222.P4263325917857880321

`30*(n+1)-27`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139222

/-- `30*(n+1)-27` -/
def P4263325917857880321.Spec : Prop :=
  ∀ n, P4263325917857880321.a n = A139222 (n + 1)

theorem P4263325917857880321.correct : P4263325917857880321.Spec := by
  intro n
  simp only [A139222, Nat.add_sub_cancel]

end A139222

/-!
# A139223: M*(M-1), where M is Mersenne prime A000668(n).

The programs for A139223, there is no canonical definition to state claims against.
-/

/-! ## A139223.P6278115376292786398

`A000668(n+1)*(A000668(n+1)-1)`
-/

namespace A139223.P6278115376292786398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * (A000668 (n + 1) - 1)

end

end A139223.P6278115376292786398

/-! ## A139223.P4905591981187450715

`2*A139224(n+1)`
-/

namespace A139223.P4905591981187450715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139224 (n + 1)

end

end A139223.P4905591981187450715

/-! ## A139223.P16454529749385265071

`3*A139225(n+1)`
-/

namespace A139223.P16454529749385265071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139225 (n + 1)

end

end A139223.P16454529749385265071

/-! ## A139223.P6725857475613019076

`6*A139226(n+1)`
-/

namespace A139223.P6725857475613019076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A139226 (n + 1)

end

end A139223.P6725857475613019076

/-! ## A139223.P16887102545823715347

`4*A162385(n+1)-2`
-/

namespace A139223.P16887102545823715347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A162385 (n + 1) - 2

end

end A139223.P16887102545823715347

/-!
# A139224: M(M-1)/2, where M is Mersenne prime A000668(n).

The programs for A139224, there is no canonical definition to state claims against.
-/

/-! ## A139224.P632529745776872439

`A000396(n+1)-A000668(n+1)`
-/

namespace A139224.P632529745776872439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1) - A000668 (n + 1)

end

end A139224.P632529745776872439

/-! ## A139224.P358621114878584825

`3*A139226(n+1)`
-/

namespace A139224.P358621114878584825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A139226 (n + 1)

end

end A139224.P358621114878584825

/-! ## A139224.P13453985629105759194

`A139223(n+1)/2`
-/

namespace A139224.P13453985629105759194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139223 (n + 1) : ℚ) / 2

end

end A139224.P13453985629105759194

/-! ## A139224.P16722987075340839569

`C(A000668(n+1), 2)`
-/

namespace A139224.P16722987075340839569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000668 (n + 1)).toNat 2

end

end A139224.P16722987075340839569

/-! ## A139224.P14306858816218609756

`C(A343733(n+2), 2)`
-/

namespace A139224.P14306858816218609756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A343733 (n + 2)).toNat 2

end

end A139224.P14306858816218609756

/-!
# A139225: M(M-1)/3, where M is Mersenne prime A000668(n).

The programs for A139225, there is no canonical definition to state claims against.
-/

/-! ## A139225.P13477499496474288113

`A000668(n+1)*(A000668(n+1)-1)/3`
-/

namespace A139225.P13477499496474288113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000668 (n + 1) * (A000668 (n + 1) - 1) : ℚ) / 3

end

end A139225.P13477499496474288113

/-! ## A139225.P18172716700725126482

`2*A139226(n+1)`
-/

namespace A139225.P18172716700725126482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139226 (n + 1)

end

end A139225.P18172716700725126482

/-! ## A139225.P15031116856491719751

`A139223(n+1)/3`
-/

namespace A139225.P15031116856491719751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139223 (n + 1) : ℚ) / 3

end

end A139225.P15031116856491719751

/-! ## A139225.P6863602137773511415

`2/3*A139224(n+1)`
-/

namespace A139225.P6863602137773511415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A139224 (n + 1) : ℚ)

end

end A139225.P6863602137773511415

/-! ## A139225.P6227862585381383257

`A203241(A000043(n+1))`
-/

namespace A139225.P6227862585381383257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203241 (A000043 (n + 1)).toNat

end

end A139225.P6227862585381383257

/-!
# A139226: M(M-1)/6, where M is Mersenne prime A000668(n).

The programs for A139226, there is no canonical definition to state claims against.
-/

/-! ## A139226.P15611613091385495325

`A139224(n+1)/3`
-/

namespace A139226.P15611613091385495325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139224 (n + 1) : ℚ) / 3

end

end A139226.P15611613091385495325

/-! ## A139226.P7386504360844398641

`A139223(n+1)/6`
-/

namespace A139226.P7386504360844398641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139223 (n + 1) : ℚ) / 6

end

end A139226.P7386504360844398641

/-! ## A139226.P15086244361862715182

`(A000396(n+1)-A000668(n+1))/3`
-/

namespace A139226.P15086244361862715182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) - A000668 (n + 1) : ℚ) / 3

end

end A139226.P15086244361862715182

/-! ## A139226.P6840153908970540506

`A139225(n+1)/2`
-/

namespace A139226.P6840153908970540506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139225 (n + 1) : ℚ) / 2

end

end A139226.P6840153908970540506

/-! ## A139226.P13762535892785224428

`A006095(A000043(n+1))`
-/

namespace A139226.P13762535892785224428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006095 (A000043 (n + 1)).toNat

end

end A139226.P13762535892785224428

/-!
# A139227: Array read by rows: row n lists the proper divisors of n-th Fibonacci number A000045(n).

The programs for A139227, there is no canonical definition to state claims against.
-/

/-! ## A139227.P4547409927361512682

`A133021(lt[1, A133021(n+1)])`
-/

namespace A139227.P4547409927361512682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A139227.P4547409927361512682

/-! ## A139227.P14077765543650478493

`A133021(comp[eq[1, A133021(n+1)]])`
-/

namespace A139227.P14077765543650478493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133021 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A139227.P14077765543650478493

/-!
# A139228: First differences of perfect numbers A000396.

The programs for A139228, there is no canonical definition to state claims against.
-/

/-! ## A139228.P1005662965354806276

`A000396(n+2)-A000396(n+1)`
-/

namespace A139228.P1005662965354806276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 2) - A000396 (n + 1)

end

end A139228.P1005662965354806276

/-! ## A139228.P18126307156231220009

`Δ[A000396(n+1)]`
-/

namespace A139228.P18126307156231220009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139228.P18126307156231220009

/-! ## A139228.P16431278248525743966

`Δ[A135627(n+1)]`
-/

namespace A139228.P16431278248525743966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135627 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139228.P16431278248525743966

/-! ## A139228.P10517093391161315748

`Δ[A135629(n+1)]`
-/

namespace A139228.P10517093391161315748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139228.P10517093391161315748

/-! ## A139228.P18324144072079960953

`2*A139229(n+1)`
-/

namespace A139228.P18324144072079960953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139229 (n + 1)

end

end A139228.P18324144072079960953

/-!
# A139229: First differences of perfect numbers A000396, divided by 2.

The programs for A139229, there is no canonical definition to state claims against.
-/

/-! ## A139229.P10349297072317253589

`A139228(n+1)/2`
-/

namespace A139229.P10349297072317253589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139228 (n + 1) : ℚ) / 2

end

end A139229.P10349297072317253589

/-! ## A139229.P12547108300855657744

`Δ[A133028(n+1)]`
-/

namespace A139229.P12547108300855657744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139229.P12547108300855657744

/-! ## A139229.P13621528510035844680

`Δ[A133067(n+1)]`
-/

namespace A139229.P13621528510035844680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139229.P13621528510035844680

/-! ## A139229.P1950014564287694802

`Δ[A000396(n+1)/2]`
-/

namespace A139229.P1950014564287694802
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000396 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139229.P1950014564287694802

/-! ## A139229.P16492015505950178762

`Δ[A135627(n+1)/2]`
-/

namespace A139229.P16492015505950178762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135627 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139229.P16492015505950178762

/-!
# A139230: Second differences of perfect numbers A000396.

The programs for A139230, there is no canonical definition to state claims against.
-/

/-! ## A139230.P14218463474053726661

`A139228(n+2)-A139228(n+1)`
-/

namespace A139230.P14218463474053726661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139228 (n + 2) - A139228 (n + 1)

end

end A139230.P14218463474053726661

/-! ## A139230.P14388163116442602165

`Δ[A139228(n+1)]`
-/

namespace A139230.P14388163116442602165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139230.P14388163116442602165

/-! ## A139230.P11735942278279659774

`2*A139233(n+1)`
-/

namespace A139230.P11735942278279659774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139233 (n + 1)

end

end A139230.P11735942278279659774

/-! ## A139230.P5060864521845853434

`Δ[Δ[A000396(n+1)]]`
-/

namespace A139230.P5060864521845853434
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000396 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139230.P5060864521845853434

/-! ## A139230.P11942280641279102513

`Δ[Δ[A135627(n+1)]]`
-/

namespace A139230.P11942280641279102513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135627 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139230.P11942280641279102513

/-!
# A139231: First differences of Mersenne primes A000668.

The programs for A139231, there is no canonical definition to state claims against.
-/

/-! ## A139231.P108118431616514402

`A000668(n+2)-A000668(n+1)`
-/

namespace A139231.P108118431616514402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 2) - A000668 (n + 1)

end

end A139231.P108118431616514402

/-! ## A139231.P6559435131746773795

`Δ[A000668(n+1)]`
-/

namespace A139231.P6559435131746773795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139231.P6559435131746773795

/-! ## A139231.P12900308856283034998

`Δ[A239546(n+1)]`
-/

namespace A139231.P12900308856283034998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139231.P12900308856283034998

/-! ## A139231.P6450907951014399865

`Δ[A379724(n+1)]`
-/

namespace A139231.P6450907951014399865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139231.P6450907951014399865

/-! ## A139231.P2528825744879906537

`Δ[A343733(n+2)]`
-/

namespace A139231.P2528825744879906537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139231.P2528825744879906537

/-!
# A139232: Second differences of Mersenne primes A000668.

The programs for A139232, there is no canonical definition to state claims against.
-/

/-! ## A139232.P15276962222300122006

`A139236(n+1)*2`
-/

namespace A139232.P15276962222300122006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139236 (n + 1) * 2

end

end A139232.P15276962222300122006

/-! ## A139232.P3799127126130154392

`Δ[A139231(n+1)]`
-/

namespace A139232.P3799127126130154392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139232.P3799127126130154392

/-! ## A139232.P6776730771108750173

`Δ[A301580(n+1)]`
-/

namespace A139232.P6776730771108750173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301580 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139232.P6776730771108750173

/-! ## A139232.P1500482264864366256

`4*A139237(n+1)`
-/

namespace A139232.P1500482264864366256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A139237 (n + 1)

end

end A139232.P1500482264864366256

/-! ## A139232.P16606071593827807228

`Δ[Δ[A000668(n+1)]]`
-/

namespace A139232.P16606071593827807228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139232.P16606071593827807228

/-!
# A139233: Second differences of perfect numbers A000396, divided by 2.

The programs for A139233, there is no canonical definition to state claims against.
-/

/-! ## A139233.P14291569800700359864

`A139230(n+1)/2`
-/

namespace A139233.P14291569800700359864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139230 (n + 1) : ℚ) / 2

end

end A139233.P14291569800700359864

/-! ## A139233.P1071622000866694332

`Δ[A139229(n+1)]`
-/

namespace A139233.P1071622000866694332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139233.P1071622000866694332

/-! ## A139233.P15867391818990284120

`Δ[Δ[A133028(n+1)]]`
-/

namespace A139233.P15867391818990284120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133028 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139233.P15867391818990284120

/-! ## A139233.P10832843919148872456

`Δ[Δ[A133067(n+1)]]`
-/

namespace A139233.P10832843919148872456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133067 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139233.P10832843919148872456

/-! ## A139233.P14451647893416752581

`Δ[A139228(n+1)/2]`
-/

namespace A139233.P14451647893416752581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139228 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139233.P14451647893416752581

/-!
# A139234: First differences of even superperfect numbers A061652.

The programs for A139234, there is no canonical definition to state claims against.
-/

/-! ## A139234.P863078790499414933

`A139231(n+1)/2`
-/

namespace A139234.P863078790499414933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139231 (n + 1) : ℚ) / 2

end

end A139234.P863078790499414933

/-! ## A139234.P17415586885759142943

`A019279(n+2)-A019279(n+1)`
-/

namespace A139234.P17415586885759142943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 2) - A019279 (n + 1)

end

end A139234.P17415586885759142943

/-! ## A139234.P10249889256589287056

`Δ[A019279(n+1)]`
-/

namespace A139234.P10249889256589287056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139234.P10249889256589287056

/-! ## A139234.P4424668094678840450

`Δ[A256438(n+1)]`
-/

namespace A139234.P4424668094678840450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256438 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139234.P4424668094678840450

/-! ## A139234.P13291403670449935663

`2*A139235(n+1)`
-/

namespace A139234.P13291403670449935663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139235 (n + 1)

end

end A139234.P13291403670449935663

/-!
# A139235: First differences of even superperfect numbers A061652, divided by 2.

The programs for A139235, there is no canonical definition to state claims against.
-/

/-! ## A139235.P7100864511187003132

`A139234(n+1)/2`
-/

namespace A139235.P7100864511187003132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139234 (n + 1) : ℚ) / 2

end

end A139235.P7100864511187003132

/-! ## A139235.P6902164755046060673

`Δ[A134708(n+1)]`
-/

namespace A139235.P6902164755046060673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139235.P6902164755046060673

/-! ## A139235.P13022739649584216910

`Δ[A134709(n+1)]`
-/

namespace A139235.P13022739649584216910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139235.P13022739649584216910

/-! ## A139235.P3690201941495907412

`A139231(n+1)/4`
-/

namespace A139235.P3690201941495907412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139231 (n + 1) : ℚ) / 4

end

end A139235.P3690201941495907412

/-! ## A139235.P16293437831198915235

`Δ[sqrt(A152923(n+1))]`
-/

namespace A139235.P16293437831198915235
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A152923 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139235.P16293437831198915235

/-!
# A139236: Second differences of even superperfect numbers A061652.

The programs for A139236, there is no canonical definition to state claims against.
-/

/-! ## A139236.P16766495660573738422

`A139234(n+2)-A139234(n+1)`
-/

namespace A139236.P16766495660573738422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139234 (n + 2) - A139234 (n + 1)

end

end A139236.P16766495660573738422

/-! ## A139236.P13673966902955423372

`Δ[A139234(n+1)]`
-/

namespace A139236.P13673966902955423372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139236.P13673966902955423372

/-! ## A139236.P13679623125453725254

`2*A139237(n+1)`
-/

namespace A139236.P13679623125453725254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139237 (n + 1)

end

end A139236.P13679623125453725254

/-! ## A139236.P2319370542218762358

`A139232(n+1)/2`
-/

namespace A139236.P2319370542218762358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139232 (n + 1) : ℚ) / 2

end

end A139236.P2319370542218762358

/-!
# A139237: Second differences of even superperfect numbers A061652, divided by 2.

The programs for A139237, there is no canonical definition to state claims against.
-/

/-! ## A139237.P10255806800245091261

`A139236(n+1)/2`
-/

namespace A139237.P10255806800245091261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139236 (n + 1) : ℚ) / 2

end

end A139237.P10255806800245091261

/-! ## A139237.P14221245823402195430

`Δ[A139235(n+1)]`
-/

namespace A139237.P14221245823402195430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139237.P14221245823402195430

/-! ## A139237.P7300898400122000541

`A139232(n+1)/4`
-/

namespace A139237.P7300898400122000541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139232 (n + 1) : ℚ) / 4

end

end A139237.P7300898400122000541

/-! ## A139237.P12468168239320186914

`Δ[Δ[A134708(n+1)]]`
-/

namespace A139237.P12468168239320186914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134708 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139237.P12468168239320186914

/-! ## A139237.P18403214508730892133

`Δ[Δ[A134709(n+1)]]`
-/

namespace A139237.P18403214508730892133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134709 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139237.P18403214508730892133

/-!
# A139238: First differences of Mersenne numbers A001348.

The programs for A139238, the canonical program `A139238.P2423314639559160566` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139238 has offset 1).

The definition of A139238 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139238.P2423314639559160566

`A001348(n+2)-A001348(n+1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139238

/-- `A001348(n+2)-A001348(n+1)` -/
def P2423314639559160566.Spec : Prop :=
  ∀ n, P2423314639559160566.a n = A139238 (n + 1)

theorem P2423314639559160566.correct : P2423314639559160566.Spec := by
  intro n
  simp only [A139238, Nat.add_sub_cancel]

end A139238

/-! ## A139238.P17924562745453040488

`A034785(n+2)-A034785(n+1)`
-/

namespace A139238.P17924562745453040488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 2) - A034785 (n + 1)

end

end A139238.P17924562745453040488

namespace A139238

/-- `A034785(n+2)-A034785(n+1)` -/
def P17924562745453040488.Spec : Prop :=
  ∀ n, P17924562745453040488.a n = A139238 (n + 1)

end A139238

/-! ## A139238.P11402385657022316618

`Δ[Δ[A076793(n)]]`
-/

namespace A139238.P11402385657022316618
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139238.P11402385657022316618

namespace A139238

/-- `Δ[Δ[A076793(n)]]` -/
def P11402385657022316618.Spec : Prop :=
  ∀ n, P11402385657022316618.a n = A139238 (n + 1)

end A139238

/-! ## A139238.P14037518334269447362

`Δ[Δ[A320877(n)]]`
-/

namespace A139238.P14037518334269447362
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320877 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139238.P14037518334269447362

namespace A139238

/-- `Δ[Δ[A320877(n)]]` -/
def P14037518334269447362.Spec : Prop :=
  ∀ n, P14037518334269447362.a n = A139238 (n + 1)

end A139238

/-! ## A139238.P15171465766403105216

`Δ[A001348(n+1)]`
-/

namespace A139238.P15171465766403105216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139238.P15171465766403105216

namespace A139238

/-- `Δ[A001348(n+1)]` -/
def P15171465766403105216.Spec : Prop :=
  ∀ n, P15171465766403105216.a n = A139238 (n + 1)

theorem P15171465766403105216.correct : P15171465766403105216.Spec := by
  intro n
  simp only [A139238, Nat.add_sub_cancel, A139238.P15171465766403105216.f1, A139238.P15171465766403105216.a, A139238.P2423314639559160566.a, SequenceMachineLib.memo_apply]

end A139238

/-! ## A139238.P6356405234926266898

`Δ[A034785(n+1)]`
-/

namespace A139238.P6356405234926266898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139238.P6356405234926266898

namespace A139238

/-- `Δ[A034785(n+1)]` -/
def P6356405234926266898.Spec : Prop :=
  ∀ n, P6356405234926266898.a n = A139238 (n + 1)

end A139238

/-! ## A139238.P7088168734596423755

`Δ[A098231(n+1)]`
-/

namespace A139238.P7088168734596423755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139238.P7088168734596423755

namespace A139238

/-- `Δ[A098231(n+1)]` -/
def P7088168734596423755.Spec : Prop :=
  ∀ n, P7088168734596423755.a n = A139238 (n + 1)

end A139238

/-! ## A139238.P6550872012462407594

`Δ[A098640(n+1)]`
-/

namespace A139238.P6550872012462407594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139238.P6550872012462407594

namespace A139238

/-- `Δ[A098640(n+1)]` -/
def P6550872012462407594.Spec : Prop :=
  ∀ n, P6550872012462407594.a n = A139238 (n + 1)

end A139238

/-! ## A139238.P15246341333302273700

`Δ[A098815(n+1)]`
-/

namespace A139238.P15246341333302273700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098815 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139238.P15246341333302273700

namespace A139238

/-- `Δ[A098815(n+1)]` -/
def P15246341333302273700.Spec : Prop :=
  ∀ n, P15246341333302273700.a n = A139238 (n + 1)

end A139238

/-! ## A139238.P17386746632627725543

`Δ[A241573(n+1)]`
-/

namespace A139238.P17386746632627725543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241573 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139238.P17386746632627725543

namespace A139238

/-- `Δ[A241573(n+1)]` -/
def P17386746632627725543.Spec : Prop :=
  ∀ n, P17386746632627725543.a n = A139238 (n + 1)

end A139238

/-!
# A139239: First differences of Mersenne numbers A001348, divided by 2.

The programs for A139239, the canonical program `A139239.P5695854646472699783` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139239 has offset 1).

The definition of A139239 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139239.P5695854646472699783

`A139238(n+1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139239

/-- `A139238(n+1)/2` -/
def P5695854646472699783.Spec : Prop :=
  ∀ n, P5695854646472699783.a n = (A139239 (n + 1) : ℚ)

end A139239

/-! ## A139239.P11489484148726271741

`Δ[A061286(n+1)]`
-/

namespace A139239.P11489484148726271741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139239.P11489484148726271741

namespace A139239

/-- `Δ[A061286(n+1)]` -/
def P11489484148726271741.Spec : Prop :=
  ∀ n, P11489484148726271741.a n = A139239 (n + 1)

end A139239

/-! ## A139239.P4553736226418172995

`Δ[A098102(n+1)]`
-/

namespace A139239.P4553736226418172995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139239.P4553736226418172995

namespace A139239

/-- `Δ[A098102(n+1)]` -/
def P4553736226418172995.Spec : Prop :=
  ∀ n, P4553736226418172995.a n = A139239 (n + 1)

end A139239

/-! ## A139239.P6446568812071203906

`Δ[A229065(n+1)]`
-/

namespace A139239.P6446568812071203906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139239.P6446568812071203906

namespace A139239

/-- `Δ[A229065(n+1)]` -/
def P6446568812071203906.Spec : Prop :=
  ∀ n, P6446568812071203906.a n = A139239 (n + 1)

end A139239

/-! ## A139239.P12246206353687148598

`Δ[A278741(n+1)]`
-/

namespace A139239.P12246206353687148598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139239.P12246206353687148598

namespace A139239

/-- `Δ[A278741(n+1)]` -/
def P12246206353687148598.Spec : Prop :=
  ∀ n, P12246206353687148598.a n = A139239 (n + 1)

end A139239

/-! ## A139239.P12588709700176453303

`2*A139240(n+1)`
-/

namespace A139239.P12588709700176453303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139240 (n + 1)

end

end A139239.P12588709700176453303

namespace A139239

/-- `2*A139240(n+1)` -/
def P12588709700176453303.Spec : Prop :=
  ∀ n, P12588709700176453303.a n = A139239 (n + 1)

end A139239

/-! ## A139239.P3286582103834412212

`Δ[Δ[A080355(n+1)]]`
-/

namespace A139239.P3286582103834412212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080355 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139239.P3286582103834412212

namespace A139239

/-- `Δ[Δ[A080355(n+1)]]` -/
def P3286582103834412212.Spec : Prop :=
  ∀ n, P3286582103834412212.a n = A139239 (n + 1)

end A139239

/-! ## A139239.P11655952581099138314

`Δ[Δ[2*A135482(n)]]`
-/

namespace A139239.P11655952581099138314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139239.P11655952581099138314

namespace A139239

/-- `Δ[Δ[2*A135482(n)]]` -/
def P11655952581099138314.Spec : Prop :=
  ∀ n, P11655952581099138314.a n = A139239 (n + 1)

end A139239

/-! ## A139239.P13831440603667423234

`Δ[Δ[A076793(n)/2]]`
-/

namespace A139239.P13831440603667423234
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076793 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139239.P13831440603667423234

namespace A139239

/-- `Δ[Δ[A076793(n)/2]]` -/
def P13831440603667423234.Spec : Prop :=
  ∀ n, P13831440603667423234.a n = (A139239 (n + 1) : ℚ)

end A139239

/-! ## A139239.P13818777026591896437

`Δ[Δ[A320877(n)/2]]`
-/

namespace A139239.P13818777026591896437
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320877 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139239.P13818777026591896437

namespace A139239

/-- `Δ[Δ[A320877(n)/2]]` -/
def P13818777026591896437.Spec : Prop :=
  ∀ n, P13818777026591896437.a n = (A139239 (n + 1) : ℚ)

end A139239

/-!
# A139240: First differences of Mersenne numbers A001348, divided by 4.

The programs for A139240, the canonical program `A139240.P18445357465252311486` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139240 has offset 1).

The definition of A139240 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139240.P18445357465252311486

`A139239(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139240

/-- `A139239(n+1)/2` -/
def P18445357465252311486.Spec : Prop :=
  ∀ n, P18445357465252311486.a n = (A139240 (n + 1) : ℚ)

end A139240

/-! ## A139240.P4360987687958807736

`A139238(n+1)/4`
-/

namespace A139240.P4360987687958807736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139238 (n + 1) : ℚ) / 4

end

end A139240.P4360987687958807736

namespace A139240

/-- `A139238(n+1)/4` -/
def P4360987687958807736.Spec : Prop :=
  ∀ n, P4360987687958807736.a n = (A139240 (n + 1) : ℚ)

end A139240

/-! ## A139240.P2819995560739579491

`Δ[Δ[A135482(n)]]`
-/

namespace A139240.P2819995560739579491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135482 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139240.P2819995560739579491

namespace A139240

/-- `Δ[Δ[A135482(n)]]` -/
def P2819995560739579491.Spec : Prop :=
  ∀ n, P2819995560739579491.a n = A139240 (n + 1)

end A139240

/-! ## A139240.P13625190396132453759

`Δ[A135620(n+1)]`
-/

namespace A139240.P13625190396132453759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139240.P13625190396132453759

namespace A139240

/-- `Δ[A135620(n+1)]` -/
def P13625190396132453759.Spec : Prop :=
  ∀ n, P13625190396132453759.a n = A139240 (n + 1)

end A139240

/-! ## A139240.P6942412792018507626

`Δ[A135630(n+1)]`
-/

namespace A139240.P6942412792018507626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135630 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139240.P6942412792018507626

namespace A139240

/-- `Δ[A135630(n+1)]` -/
def P6942412792018507626.Spec : Prop :=
  ∀ n, P6942412792018507626.a n = A139240 (n + 1)

end A139240

/-! ## A139240.P9524124056911581584

`Δ[A061286(n+1)/2]`
-/

namespace A139240.P9524124056911581584
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061286 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139240.P9524124056911581584

namespace A139240

/-- `Δ[A061286(n+1)/2]` -/
def P9524124056911581584.Spec : Prop :=
  ∀ n, P9524124056911581584.a n = (A139240 (n + 1) : ℚ)

end A139240

/-! ## A139240.P3591787304359746009

`Δ[A098102(n+1)/2]`
-/

namespace A139240.P3591787304359746009
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098102 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139240.P3591787304359746009

namespace A139240

/-- `Δ[A098102(n+1)/2]` -/
def P3591787304359746009.Spec : Prop :=
  ∀ n, P3591787304359746009.a n = (A139240 (n + 1) : ℚ)

end A139240

/-! ## A139240.P7349915808217696348

`Δ[A229065(n+1)/2]`
-/

namespace A139240.P7349915808217696348
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229065 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139240.P7349915808217696348

namespace A139240

/-- `Δ[A229065(n+1)/2]` -/
def P7349915808217696348.Spec : Prop :=
  ∀ n, P7349915808217696348.a n = (A139240 (n + 1) : ℚ)

end A139240

/-! ## A139240.P16304705112714013256

`Δ[A278741(n+1)/2]`
-/

namespace A139240.P16304705112714013256
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278741 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139240.P16304705112714013256

namespace A139240

/-- `Δ[A278741(n+1)/2]` -/
def P16304705112714013256.Spec : Prop :=
  ∀ n, P16304705112714013256.a n = (A139240 (n + 1) : ℚ)

end A139240

/-! ## A139240.P12988154568571034044

`Δ[2^A040976(n+1)]`
-/

namespace A139240.P12988154568571034044
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A040976 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139240.P12988154568571034044

namespace A139240

/-- `Δ[2^A040976(n+1)]` -/
def P12988154568571034044.Spec : Prop :=
  ∀ n, P12988154568571034044.a n = (A139240 (n + 1) : ℚ)

end A139240

/-!
# A139241: Second differences of Mersenne numbers A001348.

The programs for A139241, there is no canonical definition to state claims against.
-/

/-! ## A139241.P10554245121895160568

`Δ[A139238(n+1)]`
-/

namespace A139241.P10554245121895160568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139241.P10554245121895160568

/-! ## A139241.P3504729576238769146

`2*A139242(n+1)`
-/

namespace A139241.P3504729576238769146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139242 (n + 1)

end

end A139241.P3504729576238769146

/-! ## A139241.P12272799060344848347

`4*A139243(n+1)`
-/

namespace A139241.P12272799060344848347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A139243 (n + 1)

end

end A139241.P12272799060344848347

/-! ## A139241.P7841900081214584864

`Δ[Δ[A001348(n+1)]]`
-/

namespace A139241.P7841900081214584864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139241.P7841900081214584864

/-! ## A139241.P5821100298651944016

`Δ[Δ[A034785(n+1)]]`
-/

namespace A139241.P5821100298651944016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139241.P5821100298651944016

/-! ## A139241.P12991719287569216943

`Δ[Δ[A098231(n+1)]]`
-/

namespace A139241.P12991719287569216943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098231 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139241.P12991719287569216943

/-! ## A139241.P13262089142730584273

`Δ[Δ[A098640(n+1)]]`
-/

namespace A139241.P13262089142730584273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098640 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139241.P13262089142730584273

/-! ## A139241.P1737877415348695038

`Δ[Δ[A098815(n+1)]]`
-/

namespace A139241.P1737877415348695038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139241.P1737877415348695038

/-! ## A139241.P4532735178925955466

`Δ[Δ[A241573(n+1)]]`
-/

namespace A139241.P4532735178925955466
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241573 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139241.P4532735178925955466

/-! ## A139241.P10971494761563472925

`Δ[Δ[A241676(n+1)]]`
-/

namespace A139241.P10971494761563472925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241676 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139241.P10971494761563472925

/-!
# A139242: Second differences of Mersenne numbers A001348, divided by 2.

The programs for A139242, there is no canonical definition to state claims against.
-/

/-! ## A139242.P14895267864890977807

`A139241(n+1)/2`
-/

namespace A139242.P14895267864890977807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139241 (n + 1) : ℚ) / 2

end

end A139242.P14895267864890977807

/-! ## A139242.P11594391787532191517

`Δ[A139239(n+1)]`
-/

namespace A139242.P11594391787532191517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139242.P11594391787532191517

/-! ## A139242.P143645681767880187

`2*A139243(n+1)`
-/

namespace A139242.P143645681767880187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139243 (n + 1)

end

end A139242.P143645681767880187

/-! ## A139242.P9680465562518343081

`Δ[Δ[A061286(n+1)]]`
-/

namespace A139242.P9680465562518343081
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061286 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139242.P9680465562518343081

/-! ## A139242.P2970747964732258535

`Δ[Δ[A098102(n+1)]]`
-/

namespace A139242.P2970747964732258535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098102 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139242.P2970747964732258535

/-! ## A139242.P10774366290391243787

`Δ[Δ[A229065(n+1)]]`
-/

namespace A139242.P10774366290391243787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229065 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139242.P10774366290391243787

/-! ## A139242.P18335358837128652576

`Δ[Δ[A278741(n+1)]]`
-/

namespace A139242.P18335358837128652576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278741 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139242.P18335358837128652576

/-! ## A139242.P10391607654924626977

`Δ[2*A139240(n+1)]`
-/

namespace A139242.P10391607654924626977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139242.P10391607654924626977

/-! ## A139242.P17758747404754595133

`Δ[A139238(n+1)/2]`
-/

namespace A139242.P17758747404754595133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139238 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139242.P17758747404754595133

/-! ## A139242.P7474957576024180785

`Δ[Δ[2*A135620(n+1)]]`
-/

namespace A139242.P7474957576024180785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A135620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139242.P7474957576024180785

/-!
# A139243: Second differences of Mersenne numbers A001348, divided by 4.

The programs for A139243, there is no canonical definition to state claims against.
-/

/-! ## A139243.P1022064537807245001

`A139242(n+1)/2`
-/

namespace A139243.P1022064537807245001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139242 (n + 1) : ℚ) / 2

end

end A139243.P1022064537807245001

/-! ## A139243.P4658709032880889078

`A139241(n+1)/4`
-/

namespace A139243.P4658709032880889078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139241 (n + 1) : ℚ) / 4

end

end A139243.P4658709032880889078

/-! ## A139243.P15594829587511060439

`Δ[A139240(n+1)]`
-/

namespace A139243.P15594829587511060439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139243.P15594829587511060439

/-! ## A139243.P6251117056019641727

`Δ[Δ[Δ[A135482(n)]]]`
-/

namespace A139243.P6251117056019641727
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139243.P6251117056019641727

/-! ## A139243.P1733642366987261802

`Δ[Δ[A135620(n+1)]]`
-/

namespace A139243.P1733642366987261802
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135620 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139243.P1733642366987261802

/-! ## A139243.P13781552854836526330

`Δ[Δ[A135630(n+1)]]`
-/

namespace A139243.P13781552854836526330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135630 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139243.P13781552854836526330

/-! ## A139243.P12737305089439913623

`Δ[A139239(n+1)/2]`
-/

namespace A139243.P12737305089439913623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139239 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139243.P12737305089439913623

/-! ## A139243.P16589249651719501035

`Δ[Δ[A061286(n+1)/2]]`
-/

namespace A139243.P16589249651719501035
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061286 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139243.P16589249651719501035

/-! ## A139243.P2744234721011243917

`Δ[Δ[A098102(n+1)/2]]`
-/

namespace A139243.P2744234721011243917
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098102 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139243.P2744234721011243917

/-! ## A139243.P14059336160965912774

`Δ[Δ[A229065(n+1)/2]]`
-/

namespace A139243.P14059336160965912774
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A229065 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139243.P14059336160965912774

/-!
# A139244: a(0) = 4; a(n) = a(n-1)^2 - 1.

The programs for A139244, the canonical program `A139244.P2714268655090088540` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139244 has offset 0).

The definition of A139244 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-1` (program `A139244.P2714268655090088540`, by `A139244.P2714268655090088540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139244.P2714268655090088540

`a(n-1)²-1` with `a(0)=4`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139244

/-- `a(n-1)²-1` -/
def P2714268655090088540.Spec : Prop :=
  ∀ n, P2714268655090088540.a n = A139244 n

theorem P2714268655090088540.correct : P2714268655090088540.Spec := by
  intro n
  simp only [A139244]

end A139244

/-! ## A139244.P8492386829802899126

`root(a(n-1), 1/2)-1` with `a(0)=4`
-/

namespace A139244.P8492386829802899126
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - 1

end

end A139244.P8492386829802899126

namespace A139244

/-- `root(a(n-1), 1/2)-1` -/
def P8492386829802899126.Spec : Prop :=
  ∀ n, P8492386829802899126.a n = (A139244 n : ℝ)

end A139244

/-! ## A139244.P2786494696046882755

`a(n-1)^(4/2)-1` with `a(0)=4`
-/

namespace A139244.P2786494696046882755
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ ((4 : ℚ) / 2 : ℝ) - 1

end

end A139244.P2786494696046882755

namespace A139244

/-- `a(n-1)^(4/2)-1` -/
def P2786494696046882755.Spec : Prop :=
  ∀ n, P2786494696046882755.a n = (A139244 n : ℝ)

end A139244

/-! ## A139244.P15228564070494805238

`(-sqrt(a(n-1)))^4-1` with `a(0)=4`
-/

namespace A139244.P15228564070494805238
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  (-Real.sqrt (a (n - 1))) ^ 4 - 1

end

end A139244.P15228564070494805238

namespace A139244

/-- `(-sqrt(a(n-1)))^4-1` -/
def P15228564070494805238.Spec : Prop :=
  ∀ n, P15228564070494805238.a n = (A139244 n : ℝ)

end A139244

/-!
# A139245: a(n) = 20*n - 16.

The programs for A139245, the canonical program `A139245.P8764148854706106174` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139245 has offset 1).

The definition of A139245 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `20*(n+1)-16` (program `A139245.P8764148854706106174`, by `A139245.P8764148854706106174.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139245.P8764148854706106174

`20*(n+1)-16`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139245

/-- `20*(n+1)-16` -/
def P8764148854706106174.Spec : Prop :=
  ∀ n, P8764148854706106174.a n = A139245 (n + 1)

theorem P8764148854706106174.correct : P8764148854706106174.Spec := by
  intro n
  simp only [A139245, Nat.add_sub_cancel]

end A139245

/-!
# A139246: Triangle read by rows: row n lists the proper divisors of n-th perfect number A000396(n).

The programs for A139246, there is no canonical definition to state claims against.
-/

/-! ## A139246.P722191921061620718

`A133031(lt[1, A133031(n+1)])`
-/

namespace A139246.P722191921061620718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A139246.P722191921061620718

/-! ## A139246.P4160474919994139448

`A133031(eq[2, 2%A133031(n+1)²])`
-/

namespace A139246.P4160474919994139448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A133031 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139246.P4160474919994139448

/-! ## A139246.P7664954981199783803

`filter[A133031(n+1), A294934(#)]`
-/

namespace A139246.P7664954981199783803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A139246.P7664954981199783803

/-!
# A139247: Triangle read by rows: row n lists the divisors of n-th perfect number A000396(n) that are multiples of n-th Mersenne prime A000668(n).

The programs for A139247, there is no canonical definition to state claims against.
-/

/-! ## A139247.P10296263623993094078

`filter[A133031(n+1), A324903(#)]`
-/

namespace A139247.P10296263623993094078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324903 (f1 j).toNat = 1) n)

end

end A139247.P10296263623993094078

/-! ## A139247.P18592486602776289

`filter[A133031(n+1), A340373(#)]`
-/

namespace A139247.P18592486602776289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A139247.P18592486602776289

/-! ## A139247.P17490126269612522094

`filter[A133031(n+1), A347523(#)]`
-/

namespace A139247.P17490126269612522094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A139247.P17490126269612522094

/-! ## A139247.P3780117769248493122

`filter[A133031(n+1), A353670(#)]`
-/

namespace A139247.P3780117769248493122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A139247.P3780117769248493122

/-! ## A139247.P8103893208533534718

`filter[A133031(n+1), A364251(#)]`
-/

namespace A139247.P8103893208533534718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364251 (f1 j).toNat = 1) n)

end

end A139247.P8103893208533534718

/-!
# A139248: Triangle read by rows: row n lists the proper divisors of n-th even superperfect number A061652(n).

The programs for A139248, there is no canonical definition to state claims against.
-/

/-! ## A139248.P9073310378807131938

`A138882(lt[1, A138882(n+1)])`
-/

namespace A139248.P9073310378807131938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A139248.P9073310378807131938

/-! ## A139248.P17457293225207537501

`A138882(eq[1, A001221(A138882(n+1))])`
-/

namespace A139248.P17457293225207537501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A138882 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139248.P17457293225207537501

/-! ## A139248.P18089070891999839377

`A138882(eq[2, A006530(A138882(n+1))])`
-/

namespace A139248.P18089070891999839377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A138882 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139248.P18089070891999839377

/-! ## A139248.P17490649158533396572

`A138882(eq[2, A020639(A138882(n+1))])`
-/

namespace A139248.P17490649158533396572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A138882 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139248.P17490649158533396572

/-! ## A139248.P9008823534081224269

`A138882(eq[2*A138882(n+1), A138882(n+2)]+1)`
-/

namespace A139248.P9008823534081224269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A139248.P9008823534081224269

/-! ## A139248.P1513284066138800558

`A138882(eq[2, A138882(n+2)/A138882(n+1)]+1)`
-/

namespace A139248.P1513284066138800558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138882 (n + 2) : ℚ) / (A138882 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138882 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A139248.P1513284066138800558

/-!
# A139249: a(n) = 30*n - 24.

The programs for A139249, the canonical program `A139249.P4650883977916051975` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139249 has offset 1).

The definition of A139249 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `30*(n+1)-24` (program `A139249.P4650883977916051975`, by `A139249.P4650883977916051975.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139249.P4650883977916051975

`30*(n+1)-24`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139249

/-- `30*(n+1)-24` -/
def P4650883977916051975.Spec : Prop :=
  ∀ n, P4650883977916051975.a n = A139249 (n + 1)

theorem P4650883977916051975.correct : P4650883977916051975.Spec := by
  intro n
  simp only [A139249, Nat.add_sub_cancel]

end A139249

/-!
# A139250: Toothpick sequence (see Comments lines for definition).

The programs for A139250, there is no canonical definition to state claims against.
-/

/-! ## A139250.P8680206193424638963

`∑[A139251(n)]`
-/

namespace A139250.P8680206193424638963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139250.P8680206193424638963

/-! ## A139250.P14299747812201883928

`A160164(n)/2`
-/

namespace A139250.P14299747812201883928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n : ℚ) / 2

end

end A139250.P14299747812201883928

/-! ## A139250.P6985175630798317979

`floor(A187220(n+1)/2)`
-/

namespace A139250.P6985175630798317979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 (n + 1) : ℚ) / 2⌋

end

end A139250.P6985175630798317979

/-! ## A139250.P7195179968875155523

`∑[floor(Δ[A187220(n)/2])]`
-/

namespace A139250.P7195179968875155523
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139250.P7195179968875155523

/-! ## A139250.P1975442790223546061

`A173522(n)+A173454(n)`
-/

namespace A139250.P1975442790223546061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 n + A173454 n

end

end A139250.P1975442790223546061

/-! ## A139250.P18018277606309697069

`2*A153006(n)-A152998(n)`
-/

namespace A139250.P18018277606309697069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n - A152998 n

end

end A139250.P18018277606309697069

/-! ## A139250.P10726255465141287219

`2*A255747(n)-A160552(n)`
-/

namespace A139250.P10726255465141287219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255747 n - A160552 n

end

end A139250.P10726255465141287219

/-! ## A139250.P8066099192334171189

`A255747(A004273(n)-n)+A255747(n)`
-/

namespace A139250.P8066099192334171189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (A004273 n - (n : ℤ)).toNat + A255747 n

end

end A139250.P8066099192334171189

/-! ## A139250.P12379236618140049684

`A390468(n)+A390468(n)-A147562(n)`
-/

namespace A139250.P12379236618140049684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390468 n + (A390468 n - A147562 n)

end

end A139250.P12379236618140049684

/-! ## A139250.P17790503205653594913

`A160424(n+1)-(A160424(n)+A139251(n+1))`
-/

namespace A139250.P17790503205653594913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 (n + 1) - (A160424 n + A139251 (n + 1))

end

end A139250.P17790503205653594913

/-! ## A139250.P2578428137864739272

`A246336(n)-(A255747(n+1)+A160552(n))`
-/

namespace A139250.P2578428137864739272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 n - (A255747 (n + 1) + A160552 n)

end

end A139250.P2578428137864739272

/-! ## A139250.P2476051022910235140

`A159793(n)-A152998(n)`
-/

namespace A139250.P2476051022910235140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159793 n - A152998 n

end

end A139250.P2476051022910235140

/-! ## A139250.P10632989786938140333

`A266530(Δ[n²])`
-/

namespace A139250.P10632989786938140333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139250.P10632989786938140333

/-! ## A139250.P12646103420309064946

`record[lcm(2, A266530(n+1))/2]`
-/

namespace A139250.P12646103420309064946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A266530 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139250.P12646103420309064946

/-! ## A139250.P2050459957006404883

`xor(1, xor(1, A266530(2*n+1)))`
-/

namespace A139250.P2050459957006404883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A266530 (2 * n + 1)))

end

end A139250.P2050459957006404883

/-! ## A139250.P4981484075544835727

`record[A266530(A000265(n+1))]`
-/

namespace A139250.P4981484075544835727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139250.P4981484075544835727

/-! ## A139250.P12554790629032758027

`A266530(2*(n+1))-A160552(n)`
-/

namespace A139250.P12554790629032758027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1)) - A160552 n

end

end A139250.P12554790629032758027

/-! ## A139250.P15693191824217107035

`A057427(n)*A266530(2*n+1)`
-/

namespace A139250.P15693191824217107035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A266530 (2 * n + 1)

end

end A139250.P15693191824217107035

/-! ## A139250.P17366167449790141089

`A266530(2*(n+1))-A266529(2*(n+1))`
-/

namespace A139250.P17366167449790141089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * (n + 1)) - A266529 (2 * (n + 1))

end

end A139250.P17366167449790141089

/-! ## A139250.P683939539588426736

`A266530(2*n+1)+A235796(A001316(n))`
-/

namespace A139250.P683939539588426736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (2 * n + 1) + A235796 (A001316 n).toNat

end

end A139250.P683939539588426736

/-!
# A139251: First differences of toothpicks numbers A139250.

The programs for A139251, there is no canonical definition to state claims against.
-/

/-! ## A139251.P14605005889885638085

`Δ[floor(A187220(n)/2)]`
-/

namespace A139251.P14605005889885638085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139251.P14605005889885638085

/-! ## A139251.P18171050150303212127

`Δ[A139250(n-ceil(n/(n+1)))]`
-/

namespace A139251.P18171050150303212127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139251.P18171050150303212127

/-! ## A139251.P9002511027246389497

`floor((A187220(n+1)-A187220(n))/2)`
-/

namespace A139251.P9002511027246389497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 (n + 1) - A187220 n : ℚ) / 2⌋

end

end A139251.P9002511027246389497

/-! ## A139251.P9679236296150289581

`A139250(n)-A139250(A028310(n)-1)`
-/

namespace A139251.P9679236296150289581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A139250 (A028310 n - 1).toNat

end

end A139251.P9679236296150289581

/-! ## A139251.P7880770048886714427

`A160552(A004273(n)-n)+A160552(n)`
-/

namespace A139251.P7880770048886714427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A004273 n - (n : ℤ)).toNat + A160552 n

end

end A139251.P7880770048886714427

/-! ## A139251.P12175110874569674409

`A139250(n)-A139250(A057428(n)+n)`
-/

namespace A139251.P12175110874569674409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A139250 (A057428 n + (n : ℤ)).toNat

end

end A139251.P12175110874569674409

/-! ## A139251.P9903538567563984298

`A160552(n-A057427(n))+A160552(n)`
-/

namespace A139251.P9903538567563984298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 ((n : ℤ) - A057427 n).toNat + A160552 n

end

end A139251.P9903538567563984298

/-! ## A139251.P5530341635479506088

`A139250(n)-A139250(A004273(n)-n)`
-/

namespace A139251.P5530341635479506088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A139250 (A004273 n - (n : ℤ)).toNat

end

end A139251.P5530341635479506088

/-! ## A139251.P4724735348535294869

`A139250(n)-A139250(n-A057427(n))`
-/

namespace A139251.P4724735348535294869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A139250 ((n : ℤ) - A057427 n).toNat

end

end A139251.P4724735348535294869

/-! ## A139251.P4128761520846659799

`Δ[A187220(A000007(n)+n)/2]`
-/

namespace A139251.P4128761520846659799
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (A000007 n + (n : ℤ)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139251.P4128761520846659799

/-! ## A139251.P17743287940560912445

`Δ[(A187220(n)-A057427(n))/2]`
-/

namespace A139251.P17743287940560912445
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 n - A057427 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139251.P17743287940560912445

/-! ## A139251.P6692238540441478066

`(A160552(A004760(n+1))+A160552(n))/2`
-/

namespace A139251.P6692238540441478066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160552 (A004760 (n + 1)).toNat + A160552 n : ℚ) / 2

end

end A139251.P6692238540441478066

/-! ## A139251.P10023818372179760461

`A162777(A206332(n+1)-1)-A162777(n)`
-/

namespace A139251.P10023818372179760461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 (A206332 (n + 1) - 1).toNat - A162777 n

end

end A139251.P10023818372179760461

/-! ## A139251.P12427140661895534899

`A160552(A140106(2*n+1))+A160552(n)`
-/

namespace A139251.P12427140661895534899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (A140106 (2 * n + 1)).toNat + A160552 n

end

end A139251.P12427140661895534899

/-! ## A139251.P10474698493109435535

`A266529(A004277(n))+A160552(n)`
-/

namespace A139251.P10474698493109435535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (A004277 n).toNat + A160552 n

end

end A139251.P10474698493109435535

/-! ## A139251.P6575903686433114937

`A266529(A004277(n))+A151569(n)-A151568(n)`
-/

namespace A139251.P6575903686433114937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (A004277 n).toNat + (A151569 n - A151568 n)

end

end A139251.P6575903686433114937

/-! ## A139251.P10080279876322666713

`floor(A187221(n+1)/2)`
-/

namespace A139251.P10080279876322666713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187221 (n + 1) : ℚ) / 2⌋

end

end A139251.P10080279876322666713

/-! ## A139251.P5006020937576874686

`A173069(n)+A105321(n)`
-/

namespace A139251.P5006020937576874686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173069 n + A105321 n

end

end A139251.P5006020937576874686

/-! ## A139251.P18262545030835770526

`A173531(n)-A173532(n)`
-/

namespace A139251.P18262545030835770526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173531 n - A173532 n

end

end A139251.P18262545030835770526

/-! ## A139251.P5168407793046115900

`A173522(n+1)+A173069(n)-A173522(n)`
-/

namespace A139251.P5168407793046115900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173522 (n + 1) + (A173069 n - A173522 n)

end

end A139251.P5168407793046115900

/-!
# A139252: Number of segments needed to draw the toothpick structure of A139250 as it is after n stages.

The programs for A139252, there is no canonical definition to state claims against.
-/

/-! ## A139252.P8029160197573216571

`A147614(n)%(A139250(n)+1)`
-/

namespace A139252.P8029160197573216571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147614 n) (A139250 n + 1)

end

end A139252.P8029160197573216571

/-! ## A139252.P13410854035368515340

`A147614(n)-∑[lcm(2, A139251(n))]`
-/

namespace A139252.P13410854035368515340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A139251 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139252.P13410854035368515340

/-! ## A139252.P17073378928869770920

`A147614(n)-(A139250(n)+char[A344180(n)])`
-/

namespace A139252.P17073378928869770920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n - (A139250 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A139252.P17073378928869770920

/-! ## A139252.P8300932016102179864

`A147614(n)-∑[A139251(n)]-A165586(n²)`
-/

namespace A139252.P8300932016102179864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n - ∑ j ∈ Finset.range (n + 1), f1 j - A165586 (n ^ 2)

end

end A139252.P8300932016102179864

/-! ## A139252.P10497396825880315045

`A147614(n)-A139250(n)-char[A001057(n+1)]`
-/

namespace A139252.P10497396825880315045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n - A139250 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A139252.P10497396825880315045

/-! ## A139252.P17422501111736617786

`A147614(n)-A139250(n)-A008683(A001747(n+2))`
-/

namespace A139252.P17422501111736617786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147614 n - A139250 n - A008683 (A001747 (n + 2)).toNat

end

end A139252.P17422501111736617786

/-! ## A139252.P516023663174037307

`A014681(A147614(n)-A139250(n))`
-/

namespace A139252.P516023663174037307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A147614 n - A139250 n).toNat

end

end A139252.P516023663174037307

/-! ## A139252.P9248188648839395080

`A014681(A147614(n)-∑[A139251(n)])`
-/

namespace A139252.P9248188648839395080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A147614 n - ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139252.P9248188648839395080

/-! ## A139252.P13546106253121239868

`A147614(n)%A328399(A160164(n))`
-/

namespace A139252.P13546106253121239868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147614 n) (A328399 (A160164 n).toNat)

end

end A139252.P13546106253121239868

/-! ## A139252.P939467491807712003

`A139250(n)-A160124(n)`
-/

namespace A139252.P939467491807712003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A160124 n

end

end A139252.P939467491807712003

/-!
# A139253: Toothpick primes: primes in the toothpick sequence A139250.

The programs for A139253, there is no canonical definition to state claims against.
-/

/-! ## A139253.P2660781175247889958

`p?[A139250(n)]`
-/

namespace A139253.P2660781175247889958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P2660781175247889958

/-! ## A139253.P11488948097015222393

`p?[∑[A139251(n)]]`
-/

namespace A139253.P11488948097015222393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P11488948097015222393

/-! ## A139253.P16479387511855606688

`p?[Δ[A160424(n)]]`
-/

namespace A139253.P16479387511855606688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P16479387511855606688

/-! ## A139253.P13851119277597516133

`p?[A266530(n+5)]`
-/

namespace A139253.P13851119277597516133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P13851119277597516133

/-! ## A139253.P688214461769855999

`p?[floor(A187220(n)/2)]`
-/

namespace A139253.P688214461769855999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P688214461769855999

/-! ## A139253.P8764226146168834063

`p?[2*A152998(n)+1]`
-/

namespace A139253.P8764226146168834063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152998 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P8764226146168834063

/-! ## A139253.P5052553656819644274

`p?[or(1, A266530(Δ[n²]))]`
-/

namespace A139253.P5052553656819644274
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A266530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P5052553656819644274

/-! ## A139253.P13979098260266288321

`p?[2*(2*A153000(n)+1)+1]`
-/

namespace A139253.P13979098260266288321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A153000 n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P13979098260266288321

/-! ## A139253.P5614717381573554363

`p?[A160424(n+1)-A160424(n)]`
-/

namespace A139253.P5614717381573554363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 (n + 1) - A160424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P5614717381573554363

/-! ## A139253.P5870735240588669394

`p?[2*A153006(n)-A152998(n)]`
-/

namespace A139253.P5870735240588669394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153006 n - A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139253.P5870735240588669394

/-! ## A139253.P15930997733484466645

`∩[A002145(n+1), A139250(n)]`
-/

namespace A139253.P15930997733484466645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002145 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P15930997733484466645

/-! ## A139253.P8961469348837651179

`∩[A045326(n+1), A139250(n)]`
-/

namespace A139253.P8961469348837651179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P8961469348837651179

/-! ## A139253.P1588581086651146135

`∩[A085760(n+1), A139250(n)]`
-/

namespace A139253.P1588581086651146135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P1588581086651146135

/-! ## A139253.P14205523733879645083

`∩[A285015(n+1), A139250(n)]`
-/

namespace A139253.P14205523733879645083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P14205523733879645083

/-! ## A139253.P18150697816844897269

`∩[A292762(n+1), A139250(n)]`
-/

namespace A139253.P18150697816844897269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P18150697816844897269

/-! ## A139253.P9419133424570863096

`∩[A385221(n+1), A139250(n)]`
-/

namespace A139253.P9419133424570863096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P9419133424570863096

/-! ## A139253.P12309065321686177468

`∩[A049098(n+1), A139250(n)]`
-/

namespace A139253.P12309065321686177468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P12309065321686177468

/-! ## A139253.P2553692029836692606

`∩[A140409(n+1), A139250(n)]`
-/

namespace A139253.P2553692029836692606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P2553692029836692606

/-! ## A139253.P15071433495504961574

`∩[A301590(n+1), A139250(n)]`
-/

namespace A139253.P15071433495504961574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139253.P15071433495504961574

/-!
# A139254: Primes that are not toothpick primes.

The programs for A139254, there is no canonical definition to state claims against.
-/

/-! ## A139254.P3777410468024199122

`p?[comp[A139250(n)]]`
-/

namespace A139254.P3777410468024199122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139254.P3777410468024199122

/-! ## A139254.P12321032729462349843

`p?[comp[∑[A139251(n)]]]`
-/

namespace A139254.P12321032729462349843
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139254.P12321032729462349843

/-! ## A139254.P8780573758578094736

`p?[comp[A256265(n+1)]]`
-/

namespace A139254.P8780573758578094736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256265 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A139254.P8780573758578094736

/-! ## A139254.P6975137399657023150

`record[A006530(comp[A139250(n)])]`
-/

namespace A139254.P6975137399657023150
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139254.P6975137399657023150

/-! ## A139254.P15843829487711998756

`record[A014963(comp[A139250(n)])]`
-/

namespace A139254.P15843829487711998756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139254.P15843829487711998756

/-!
# A139255: Complement of toothpick sequence A139250.

The programs for A139255, there is no canonical definition to state claims against.
-/

/-! ## A139255.P9353377588734087738

`comp[A139250(n)]`
-/

namespace A139255.P9353377588734087738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139255.P9353377588734087738

/-! ## A139255.P3187639692748020093

`comp[A151567(n)]`
-/

namespace A139255.P3187639692748020093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151567 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139255.P3187639692748020093

/-! ## A139255.P13440338415012867447

`comp[A266535(n)]`
-/

namespace A139255.P13440338415012867447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139255.P13440338415012867447

/-! ## A139255.P3104740913241686445

`comp[∑[A139251(n)]]`
-/

namespace A139255.P3104740913241686445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139255.P3104740913241686445

/-! ## A139255.P1077297390710491550

`comp[A266530(Δ[n²])]`
-/

namespace A139255.P1077297390710491550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266530 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139255.P1077297390710491550

/-! ## A139255.P9563588209213904124

`comp[A266540(Δ[n²])]`
-/

namespace A139255.P9563588209213904124
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266540 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139255.P9563588209213904124

/-! ## A139255.P13940878744671765991

`comp[A266510(comp[2*n])]`
-/

namespace A139255.P13940878744671765991
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266510 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139255.P13940878744671765991

/-! ## A139255.P4231021213891278434

`comp[2*A152998(n)]+1`
-/

namespace A139255.P4231021213891278434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152998 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A139255.P4231021213891278434

/-! ## A139255.P12026652004317825339

`comp[A256265(n+1)-1]+1`
-/

namespace A139255.P12026652004317825339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256265 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A139255.P12026652004317825339

/-!
# A139256: Twice even perfect numbers. Also a(n) = M(n)*(M(n)+1), where M(n) is the n-th Mersenne prime A000668(n).

The programs for A139256, there is no canonical definition to state claims against.
-/

/-! ## A139256.P15109352210676260878

`2*A000396(n+1)`
-/

namespace A139256.P15109352210676260878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000396 (n + 1)

end

end A139256.P15109352210676260878

/-! ## A139256.P3452235344105640402

`A000668(n+1)*(A000668(n+1)+1)`
-/

namespace A139256.P3452235344105640402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) * (A000668 (n + 1) + 1)

end

end A139256.P3452235344105640402

/-! ## A139256.P3091855490120499700

`A065125(n+2)`
-/

namespace A139256.P3091855490120499700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065125 (n + 2)

end

end A139256.P3091855490120499700

/-! ## A139256.P17862197633990774108

`4*A133028(n+1)`
-/

namespace A139256.P17862197633990774108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A133028 (n + 1)

end

end A139256.P17862197633990774108

/-! ## A139256.P1211097733056660164

`2*Δ[A185351(2^n)]`
-/

namespace A139256.P1211097733056660164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185351 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A139256.P1211097733056660164

/-!
# A139257: Twice Mersenne primes A000668(n).

The programs for A139257, there is no canonical definition to state claims against.
-/

/-! ## A139257.P1599033779582353225

`2*A000668(n+1)`
-/

namespace A139257.P1599033779582353225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000668 (n + 1)

end

end A139257.P1599033779582353225

/-! ## A139257.P15649712818591877713

`A095121(A000043(n+1))`
-/

namespace A139257.P15649712818591877713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 (A000043 (n + 1)).toNat

end

end A139257.P15649712818591877713

/-! ## A139257.P6408492586339944495

`A000918(1+A000043(n+1))`
-/

namespace A139257.P6408492586339944495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (1 + A000043 (n + 1)).toNat

end

end A139257.P6408492586339944495

/-! ## A139257.P10639258349424866797

`2*A343733(n+2)`
-/

namespace A139257.P10639258349424866797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343733 (n + 2)

end

end A139257.P10639258349424866797

/-! ## A139257.P6855357386428037006

`2*sqrt(A133049(n+1))`
-/

namespace A139257.P6855357386428037006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A133049 (n + 1) : ℝ)

end

end A139257.P6855357386428037006

/-!
# A139258: Palindromes formed from the reflected decimal expansion of Euler's constant (or Euler-Mascheroni constant) gamma.

The programs for A139258, there is no canonical definition to state claims against.
-/

/-! ## A139258.P9023799881803464658

`A061829(A005054(n))`
-/

namespace A139258.P9023799881803464658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061829 (A005054 n).toNat

end

end A139258.P9023799881803464658

/-! ## A139258.P9595410991880652762

`A061829(A000010(5^n))`
-/

namespace A139258.P9595410991880652762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061829 (A000010 (5 ^ n)).toNat

end

end A139258.P9595410991880652762

/-!
# A139259: Triangle read by rows: row n lists the digits of A139258(n), the palindromic number formed from the reflected decimal expansion of Euler's constant (or Euler-Mascheroni constant) gamma.

The programs for A139259, there is no canonical definition to state claims against.
-/

/-! ## A139259.P16858384539794234788

`A001620(A004197(n))`
-/

namespace A139259.P16858384539794234788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A004197 n).toNat

end

end A139259.P16858384539794234788

/-! ## A139259.P14509195122585725234

`A001620(log2(A144464(n)))`
-/

namespace A139259.P14509195122585725234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (SequenceMachineLib.roundAway (Real.logb 2 (A144464 n : ℝ))).toNat

end

end A139259.P14509195122585725234

/-! ## A139259.P14810090955643976071

`A139261(A106255(n+1))`
-/

namespace A139259.P14810090955643976071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (A106255 (n + 1)).toNat

end

end A139259.P14810090955643976071

/-! ## A139259.P17821596995280369037

`A139261(A168281(n+1))`
-/

namespace A139259.P17821596995280369037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (A168281 (n + 1)).toNat

end

end A139259.P17821596995280369037

/-! ## A139259.P9708097351620682387

`A139261(A004197(n)+11)`
-/

namespace A139259.P9708097351620682387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139261 (A004197 n + 11).toNat

end

end A139259.P9708097351620682387

/-! ## A139259.P611721278319427115

`A001620(val(A152714(n), 3))`
-/

namespace A139259.P611721278319427115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (SequenceMachineLib.valuation (A152714 n).toNat 3)

end

end A139259.P611721278319427115

/-! ## A139259.P13933207056788134379

`A001620(val(A036561(n), 6))`
-/

namespace A139259.P13933207056788134379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (SequenceMachineLib.valuation (A036561 n).toNat 6)

end

end A139259.P13933207056788134379

/-! ## A139259.P7306592626474981300

`A001620(val(A175840(n), 6))`
-/

namespace A139259.P7306592626474981300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (SequenceMachineLib.valuation (A175840 n).toNat 6)

end

end A139259.P7306592626474981300

/-! ## A139259.P14363143465127878122

`A001620(floor(log(A152714(n))))`
-/

namespace A139259.P14363143465127878122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 ⌊Real.log (A152714 n : ℝ)⌋.toNat

end

end A139259.P14363143465127878122

/-! ## A139259.P9894440310589317151

`A001620(∑{e}[A152714(n), #])`
-/

namespace A139259.P9894440310589317151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A139259.P9894440310589317151

/-!
# A139260: Decimal expansion of Euler's constant (or Euler-Mascheroni constant) gamma truncated to n places.

The programs for A139260, the canonical program `A139260.P15610500747434863268` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139260 has offset 1).

The definition of A139260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139260.P15610500747434863268

`floor(γ*10^(n+1))`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139260

/-- `floor(γ*10^(n+1))` -/
def P15610500747434863268.Spec : Prop :=
  ∀ n, P15610500747434863268.a n = A139260 (n + 1)

theorem P15610500747434863268.correct : P15610500747434863268.Spec := by
  intro n
  simp only [A139260, Nat.add_sub_cancel]

end A139260

/-! ## A139260.P16596135831160786391

`A001620(n)+10*a(n-1)` with `a(0)=5`
-/

namespace A139260.P16596135831160786391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A001620 n + 10 * a (n - 1)

end

end A139260.P16596135831160786391

namespace A139260

/-- `A001620(n)+10*a(n-1)` -/
def P16596135831160786391.Spec : Prop :=
  ∀ n, P16596135831160786391.a n = A139260 (n + 1)

end A139260

/-! ## A139260.P143323612739480077

`A098368(A055999(n+3)-(n+5))+10*a(n-1)` with `a(0)=5`
-/

namespace A139260.P143323612739480077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A098368 (A055999 (n + 3) - (n + 5 : ℤ)).toNat + 10 * a (n - 1)

end

end A139260.P143323612739480077

namespace A139260

/-- `A098368(A055999(n+3)-(n+5))+10*a(n-1)` -/
def P143323612739480077.Spec : Prop :=
  ∀ n, P143323612739480077.a n = A139260 (n + 1)

end A139260

/-!
# A139261: Triangle read by rows: row n lists the first n digits of the decimal expansion of Euler's constant (or Euler-Mascheroni constant) gamma.

The programs for A139261, the canonical program `A139261.P3950349203648259578` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139261 has offset 1).

The definition of A139261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139261.P7498524007185340541

`A001620(n-C(∑[char[∑[n]]], 2))`
-/

namespace A139261.P7498524007185340541
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A139261.P7498524007185340541

namespace A139261

/-- `A001620(n-C(∑[char[∑[n]]], 2))` -/
def P7498524007185340541.Spec : Prop :=
  ∀ n, P7498524007185340541.a n = A139261 (n + 1)

end A139261

/-! ## A139261.P3509883882636879701

`9-A153810(n-C(∑[char[∑[n]]], 2))`
-/

namespace A139261.P3509883882636879701
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153810 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2)

end

end A139261.P3509883882636879701

namespace A139261

/-- `9-A153810(n-C(∑[char[∑[n]]], 2))` -/
def P3509883882636879701.Spec : Prop :=
  ∀ n, P3509883882636879701.a n = A139261 (n + 1)

end A139261

/-! ## A139261.P1224742835756750119

`A001620((C(∑[char[∑[n]]], 2)+n)%∑[char[∑[n]]])`
-/

namespace A139261.P1224742835756750119
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 + n) % (∑ j ∈ Finset.range (n + 1), f4 j))

end

end A139261.P1224742835756750119

namespace A139261

/-- `A001620((C(∑[char[∑[n]]], 2)+n)%∑[char[∑[n]]])` -/
def P1224742835756750119.Spec : Prop :=
  ∀ n, P1224742835756750119.a n = A139261 (n + 1)

end A139261

/-! ## A139261.P14829300549543785465

`A001620(A002262(n))`
-/

namespace A139261.P14829300549543785465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A002262 n).toNat

end

end A139261.P14829300549543785465

namespace A139261

/-- `A001620(A002262(n))` -/
def P14829300549543785465.Spec : Prop :=
  ∀ n, P14829300549543785465.a n = A139261 (n + 1)

end A139261

/-! ## A139261.P16895988741754070027

`A001620(sqrt(A143844(n)))`
-/

namespace A139261.P16895988741754070027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (SequenceMachineLib.roundAway (Real.sqrt (A143844 n : ℝ))).toNat

end

end A139261.P16895988741754070027

namespace A139261

/-- `A001620(sqrt(A143844(n)))` -/
def P16895988741754070027.Spec : Prop :=
  ∀ n, P16895988741754070027.a n = A139261 (n + 1)

end A139261

/-! ## A139261.P12455491207131376811

`A001620(log2(A059268(n)))`
-/

namespace A139261.P12455491207131376811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat

end

end A139261.P12455491207131376811

namespace A139261

/-- `A001620(log2(A059268(n)))` -/
def P12455491207131376811.Spec : Prop :=
  ∀ n, P12455491207131376811.a n = A139261 (n + 1)

end A139261

/-! ## A139261.P16656381176253341431

`A001620(val(A175840(n), 2))`
-/

namespace A139261.P16656381176253341431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (SequenceMachineLib.valuation (A175840 n).toNat 2)

end

end A139261.P16656381176253341431

namespace A139261

/-- `A001620(val(A175840(n), 2))` -/
def P16656381176253341431.Spec : Prop :=
  ∀ n, P16656381176253341431.a n = A139261 (n + 1)

end A139261

/-! ## A139261.P3950349203648259578

`A139260(n-C(∑[char[∑[n]]], 2))%10`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A139261

/-- `A139260(n-C(∑[char[∑[n]]], 2))%10` -/
def P3950349203648259578.Spec : Prop :=
  ∀ n, P3950349203648259578.a n = A139261 (n + 1)

theorem P3950349203648259578.correct : P3950349203648259578.Spec := by
  intro n
  simp only [A139261, Nat.add_sub_cancel]

end A139261

/-! ## A139261.P16301657238067746497

`A001620(A077264(∑[n]))`
-/

namespace A139261.P16301657238067746497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 (A077264 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A139261.P16301657238067746497

namespace A139261

/-- `A001620(A077264(∑[n]))` -/
def P16301657238067746497.Spec : Prop :=
  ∀ n, P16301657238067746497.a n = A139261 (n + 1)

end A139261

/-!
# A139262: Total number of two-element anti-chains over all ordered trees on n edges.

The programs for A139262, the canonical program `A139262.P8524009422663711179` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139262 has offset 0).

The definition of A139262 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139262.P9071566280457813463

`A191309(2*n)`
-/

namespace A139262.P9071566280457813463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191309 (2 * n)

end

end A139262.P9071566280457813463

namespace A139262

/-- `A191309(2*n)` -/
def P9071566280457813463.Spec : Prop :=
  ∀ n, P9071566280457813463.a n = A139262 n

end A139262

/-! ## A139262.P236824162070994397

`A116078(n)-A000984(n)`
-/

namespace A139262.P236824162070994397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116078 n - A000984 n

end

end A139262.P236824162070994397

namespace A139262

/-- `A116078(n)-A000984(n)` -/
def P236824162070994397.Spec : Prop :=
  ∀ n, P236824162070994397.a n = A139262 n

theorem P236824162070994397.correct : P236824162070994397.Spec := by
  intro n
  simp only [A139262, Nat.add_sub_cancel, A139262.P236824162070994397.a, A139262.P8524009422663711179.a, A000984, A000984.P7946844122574426130.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A116078, A116078.P123251626147989566.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, A005408, A005408.P17437947328870227736.a, A051924, A051924.P18005250198217998116.a, A133263, A133263.P2239587293626440969.a, A246432, A246432.P7367098291756528111.a, A120588, A120588.P13914353350146187734.a, A260196, A260196.P12598155231434087214.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139262

/-! ## A139262.P10169430622481425947

`A394529(n)-A008549(n)`
-/

namespace A139262.P10169430622481425947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394529 n - A008549 n

end

end A139262.P10169430622481425947

namespace A139262

/-- `A394529(n)-A008549(n)` -/
def P10169430622481425947.Spec : Prop :=
  ∀ n, P10169430622481425947.a n = A139262 n

end A139262

/-! ## A139262.P8524009422663711179

`A097070(n+1)-A081294(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A139262

/-- `A097070(n+1)-A081294(n)` -/
def P8524009422663711179.Spec : Prop :=
  ∀ n, P8524009422663711179.a n = A139262 n

theorem P8524009422663711179.correct : P8524009422663711179.Spec := by
  intro n
  simp only [A139262]

end A139262

/-! ## A139262.P10051576853830844664

`A132820(n+1)-A277924(n)`
-/

namespace A139262.P10051576853830844664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132820 (n + 1) - A277924 n

end

end A139262.P10051576853830844664

namespace A139262

/-- `A132820(n+1)-A277924(n)` -/
def P10051576853830844664.Spec : Prop :=
  ∀ n, P10051576853830844664.a n = A139262 n

end A139262

/-! ## A139262.P13305355359616558265

`A116078(n)-A001405(2*n)`
-/

namespace A139262.P13305355359616558265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116078 n - A001405 (2 * n)

end

end A139262.P13305355359616558265

namespace A139262

/-- `A116078(n)-A001405(2*n)` -/
def P13305355359616558265.Spec : Prop :=
  ∀ n, P13305355359616558265.a n = A139262 n

end A139262

/-! ## A139262.P9149331476021118498

`A116078(n)-A126869(2*n)`
-/

namespace A139262.P9149331476021118498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116078 n - A126869 (2 * n)

end

end A139262.P9149331476021118498

namespace A139262

/-- `A116078(n)-A126869(2*n)` -/
def P9149331476021118498.Spec : Prop :=
  ∀ n, P9149331476021118498.a n = A139262 n

end A139262

/-! ## A139262.P13241086378820252287

`n*A210736(2*n)-A058622(2*n)`
-/

namespace A139262.P13241086378820252287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A210736 (2 * n) - A058622 (2 * n)

end

end A139262.P13241086378820252287

namespace A139262

/-- `n*A210736(2*n)-A058622(2*n)` -/
def P13241086378820252287.Spec : Prop :=
  ∀ n, P13241086378820252287.a n = A139262 n

end A139262

/-! ## A139262.P15225998931859319005

`(n+1)*A210736(2*n)-A011782(2*n)`
-/

namespace A139262.P15225998931859319005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A210736 (2 * n) - A011782 (2 * n)

end

end A139262.P15225998931859319005

namespace A139262

/-- `(n+1)*A210736(2*n)-A011782(2*n)` -/
def P15225998931859319005.Spec : Prop :=
  ∀ n, P15225998931859319005.a n = A139262 n

end A139262

/-! ## A139262.P4733823974168169243

`A000108(n)*A000217(n+1)-A032443(n)`
-/

namespace A139262.P4733823974168169243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A000217 (n + 1) - A032443 n

end

end A139262.P4733823974168169243

namespace A139262

/-- `A000108(n)*A000217(n+1)-A032443(n)` -/
def P4733823974168169243.Spec : Prop :=
  ∀ n, P4733823974168169243.a n = A139262 n

end A139262

/-! ## A139262.P12033555782503403478

`A191309(Δ[n²])/2`
-/

namespace A139262.P12033555782503403478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191309 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A139262.P12033555782503403478

namespace A139262

/-- `A191309(Δ[n²])/2` -/
def P12033555782503403478.Spec : Prop :=
  ∀ n, P12033555782503403478.a n = (A139262 n : ℚ)

end A139262

/-! ## A139262.P15991562643708262429

`A110609(n)-A394529(n)`
-/

namespace A139262.P15991562643708262429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110609 n - A394529 n

end

end A139262.P15991562643708262429

namespace A139262

/-- `A110609(n)-A394529(n)` -/
def P15991562643708262429.Spec : Prop :=
  ∀ n, P15991562643708262429.a n = A139262 n

end A139262

/-! ## A139262.P2574014481530302275

`A191527(2*n)-A191524(2*n)`
-/

namespace A139262.P2574014481530302275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 (2 * n) - A191524 (2 * n)

end

end A139262.P2574014481530302275

namespace A139262

/-- `A191527(2*n)-A191524(2*n)` -/
def P2574014481530302275.Spec : Prop :=
  ∀ n, P2574014481530302275.a n = A139262 n

end A139262

/-! ## A139262.P2548487779816767150

`A340568(2*n)-A191522(2*n)`
-/

namespace A139262.P2548487779816767150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 (2 * n) - A191522 (2 * n)

end

end A139262.P2548487779816767150

namespace A139262

/-- `A340568(2*n)-A191522(2*n)` -/
def P2548487779816767150.Spec : Prop :=
  ∀ n, P2548487779816767150.a n = A139262 n

end A139262

/-! ## A139262.P14909945510641505418

`(A189911(2*n)-A000079(n)²)/2`
-/

namespace A139262.P14909945510641505418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189911 (2 * n) - A000079 n ^ 2 : ℚ) / 2

end

end A139262.P14909945510641505418

namespace A139262

/-- `(A189911(2*n)-A000079(n)²)/2` -/
def P14909945510641505418.Spec : Prop :=
  ∀ n, P14909945510641505418.a n = (A139262 n : ℚ)

end A139262

/-! ## A139262.P298239059836561661

`(A100071(2*n)-A045621(2*n))/2`
-/

namespace A139262.P298239059836561661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (2 * n) - A045621 (2 * n) : ℚ) / 2

end

end A139262.P298239059836561661

namespace A139262

/-- `(A100071(2*n)-A045621(2*n))/2` -/
def P298239059836561661.Spec : Prop :=
  ∀ n, P298239059836561661.a n = (A139262 n : ℚ)

end A139262

/-! ## A139262.P1740994584469697861

`A100071(2*n)/2-A058622(2*n)`
-/

namespace A139262.P1740994584469697861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (2 * n) : ℚ) / 2 - (A058622 (2 * n) : ℚ)

end

end A139262.P1740994584469697861

namespace A139262

/-- `A100071(2*n)/2-A058622(2*n)` -/
def P1740994584469697861.Spec : Prop :=
  ∀ n, P1740994584469697861.a n = (A139262 n : ℚ)

end A139262

/-! ## A139262.P15476572351935917625

`(A189911(2*n)-A000079(2*n))/2`
-/

namespace A139262.P15476572351935917625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189911 (2 * n) - A000079 (2 * n) : ℚ) / 2

end

end A139262.P15476572351935917625

namespace A139262

/-- `(A189911(2*n)-A000079(2*n))/2` -/
def P15476572351935917625.Spec : Prop :=
  ∀ n, P15476572351935917625.a n = (A139262 n : ℚ)

end A139262

/-! ## A139262.P11134582078751926818

`A100071(2*n)/2-A294175(2*n)`
-/

namespace A139262.P11134582078751926818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100071 (2 * n) : ℚ) / 2 - (A294175 (2 * n) : ℚ)

end

end A139262.P11134582078751926818

namespace A139262

/-- `A100071(2*n)/2-A294175(2*n)` -/
def P11134582078751926818.Spec : Prop :=
  ∀ n, P11134582078751926818.a n = (A139262 n : ℚ)

end A139262

/-! ## A139262.P17822224144925580712

`(A107373(2*n+1)-A058622(2*n))/2`
-/

namespace A139262.P17822224144925580712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107373 (2 * n + 1) - A058622 (2 * n) : ℚ) / 2

end

end A139262.P17822224144925580712

namespace A139262

/-- `(A107373(2*n+1)-A058622(2*n))/2` -/
def P17822224144925580712.Spec : Prop :=
  ∀ n, P17822224144925580712.a n = (A139262 n : ℚ)

end A139262

/-!
# A139263: Number of two element anti-chains in Riordan trees on n edges (also called non-redundant trees, i.e., ordered trees where no vertex has out-degree equal to 1).

The programs for A139263, there is no canonical definition to state claims against.
-/

/-! ## A139263.P9080729278660732457

`A317685(A150844(n))`
-/

namespace A139263.P9080729278660732457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317685 (A150844 n).toNat

end

end A139263.P9080729278660732457

/-! ## A139263.P16780163114419213623

`A226190(A148814(n))-1`
-/

namespace A139263.P16780163114419213623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A148814 n).toNat - 1

end

end A139263.P16780163114419213623

/-! ## A139263.P12893069417562752645

`A226190(A148831(n))-1`
-/

namespace A139263.P12893069417562752645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A148831 n).toNat - 1

end

end A139263.P12893069417562752645

/-!
# A139264: a(n) = 70*n - 63.

The programs for A139264, the canonical program `A139264.P8588517345746508126` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139264 has offset 1).

The definition of A139264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `70*(n+1)-63` (program `A139264.P8588517345746508126`, by `A139264.P8588517345746508126.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139264.P11520617082605501272

`a(n-1)+70` with `a(0)=7`
-/

namespace A139264.P11520617082605501272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + 70

end

end A139264.P11520617082605501272

namespace A139264

/-- `a(n-1)+70` -/
def P11520617082605501272.Spec : Prop :=
  ∀ n, (P11520617082605501272.a n : ℤ) = A139264 (n + 1)

theorem P11520617082605501272.correct : P11520617082605501272.Spec := by
  intro n
  induction n with
  | zero => simp [A139264, A139264.P11520617082605501272.a, A139264.P8588517345746508126.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139264, Nat.add_sub_cancel, A139264.P11520617082605501272.a, A139264.P8588517345746508126.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139264

/-! ## A139264.P8588517345746508126

`70*(n+1)-63`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139264

/-- `70*(n+1)-63` -/
def P8588517345746508126.Spec : Prop :=
  ∀ n, P8588517345746508126.a n = A139264 (n + 1)

theorem P8588517345746508126.correct : P8588517345746508126.Spec := by
  intro n
  simp only [A139264, Nat.add_sub_cancel]

end A139264

/-!
# A139267: Twice octagonal numbers: 2*n*(3*n-2).

The programs for A139267, the canonical program `A139267.P13870518576682485828` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139267 has offset 0).

The definition of A139267 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(3*n-2)` (program `A139267.P13870518576682485828`, by `A139267.P13870518576682485828.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139267.P8170884913242914305

`6*n²-4*n`
-/

namespace A139267.P8170884913242914305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n ^ 2 : ℤ) - (4 * n : ℤ)

end

end A139267.P8170884913242914305

namespace A139267

/-- `6*n²-4*n` -/
def P8170884913242914305.Spec : Prop :=
  ∀ n, P8170884913242914305.a n = A139267 n

theorem P8170884913242914305.correct : P8170884913242914305.Spec := by
  intro n
  simp only [A139267, Nat.add_sub_cancel, A139267.P8170884913242914305.a, A139267.P13870518576682485828.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A139267

/-! ## A139267.P13870518576682485828

`2*n*(3*n-2)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139267

/-- `2*n*(3*n-2)` -/
def P13870518576682485828.Spec : Prop :=
  ∀ n, P13870518576682485828.a n = A139267 n

theorem P13870518576682485828.correct : P13870518576682485828.Spec := by
  intro n
  simp only [A139267]

end A139267

/-! ## A139267.P1079250733415555730

`∑[a(n-1)+12]` with `a(0)=0, a(1)=2`
-/

namespace A139267.P1079250733415555730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139267.P1079250733415555730

namespace A139267

/-- `∑[a(n-1)+12]` -/
def P1079250733415555730.Spec : Prop :=
  ∀ n, (P1079250733415555730.a n : ℤ) = A139267 n

end A139267

/-! ## A139267.P17422774391052028199

`∑[ogf((2x+10x^2)/(1-2x+x^2))]`
-/

namespace A139267.P17422774391052028199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139267.P17422774391052028199

namespace A139267

/-- `∑[ogf((2x+10x^2)/(1-2x+x^2))]` -/
def P17422774391052028199.Spec : Prop :=
  ∀ n, P17422774391052028199.a n = A139267 n

end A139267

/-! ## A139267.P14720179914605979952

`ogf((2x+10x^2)/(1-3x+3x^2-x^3))`
-/

namespace A139267.P14720179914605979952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 10] [1, -3, 3, -1] n

end

end A139267.P14720179914605979952

namespace A139267

/-- `ogf((2x+10x^2)/(1-3x+3x^2-x^3))` -/
def P14720179914605979952.Spec : Prop :=
  ∀ n, P14720179914605979952.a n = A139267 n

end A139267

/-! ## A139267.P6939924479954531384

`A153794(n)/2`
-/

namespace A139267.P6939924479954531384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153794 n : ℚ) / 2

end

end A139267.P6939924479954531384

namespace A139267

/-- `A153794(n)/2` -/
def P6939924479954531384.Spec : Prop :=
  ∀ n, P6939924479954531384.a n = (A139267 n : ℚ)

theorem P6939924479954531384.correct : P6939924479954531384.Spec := by
  intro n
  simp only [A139267, Nat.add_sub_cancel, A139267.P6939924479954531384.a, A139267.P13870518576682485828.a, A153794, A153794.P7722697537094786455.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139267

/-! ## A139267.P8712682646147930586

`A153796(n)/3`
-/

namespace A139267.P8712682646147930586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153796 n : ℚ) / 3

end

end A139267.P8712682646147930586

namespace A139267

/-- `A153796(n)/3` -/
def P8712682646147930586.Spec : Prop :=
  ∀ n, P8712682646147930586.a n = (A139267 n : ℚ)

theorem P8712682646147930586.correct : P8712682646147930586.Spec := by
  intro n
  simp only [A139267, Nat.add_sub_cancel, A139267.P8712682646147930586.a, A139267.P13870518576682485828.a, A153796, A153796.P2544292493987041900.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139267

/-! ## A139267.P12567926087031468818

`A153808(n)/4`
-/

namespace A139267.P12567926087031468818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153808 n : ℚ) / 4

end

end A139267.P12567926087031468818

namespace A139267

/-- `A153808(n)/4` -/
def P12567926087031468818.Spec : Prop :=
  ∀ n, P12567926087031468818.a n = (A139267 n : ℚ)

theorem P12567926087031468818.correct : P12567926087031468818.Spec := by
  intro n
  simp only [A139267, Nat.add_sub_cancel, A139267.P12567926087031468818.a, A139267.P13870518576682485828.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139267

/-! ## A139267.P6156169947342615230

`(A185212(n)-1)/2`
-/

namespace A139267.P6156169947342615230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185212 n - 1 : ℚ) / 2

end

end A139267.P6156169947342615230

namespace A139267

/-- `(A185212(n)-1)/2` -/
def P6156169947342615230.Spec : Prop :=
  ∀ n, P6156169947342615230.a n = (A139267 n : ℚ)

theorem P6156169947342615230.correct : P6156169947342615230.Spec := by
  intro n
  simp only [A139267, Nat.add_sub_cancel, A139267.P6156169947342615230.a, A139267.P13870518576682485828.a, A185212, A185212.P9778455479555571894.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139267

/-! ## A139267.P1052245435288043135

`2*A152751(n)/3`
-/

namespace A139267.P1052245435288043135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A152751 n : ℚ) / 3

end

end A139267.P1052245435288043135

namespace A139267

/-- `2*A152751(n)/3` -/
def P1052245435288043135.Spec : Prop :=
  ∀ n, P1052245435288043135.a n = (A139267 n : ℚ)

theorem P1052245435288043135.correct : P1052245435288043135.Spec := by
  intro n
  simp only [A139267, Nat.add_sub_cancel, A139267.P1052245435288043135.a, A139267.P13870518576682485828.a, A152751, A152751.P17200692832550794912.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139267

/-! ## A139267.P8152441629364199930

`(A152767(n)+n)/2`
-/

namespace A139267.P8152441629364199930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152767 n + (n : ℤ) : ℚ) / 2

end

end A139267.P8152441629364199930

namespace A139267

/-- `(A152767(n)+n)/2` -/
def P8152441629364199930.Spec : Prop :=
  ∀ n, P8152441629364199930.a n = (A139267 n : ℚ)

theorem P8152441629364199930.correct : P8152441629364199930.Spec := by
  intro n
  simp only [A139267, Nat.add_sub_cancel, A139267.P8152441629364199930.a, A139267.P13870518576682485828.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139267

/-! ## A139267.P11045265637150963502

`A022145(n)%A005905(n)`
-/

namespace A139267.P11045265637150963502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022145 n) (A005905 n)

end

end A139267.P11045265637150963502

namespace A139267

/-- `A022145(n)%A005905(n)` -/
def P11045265637150963502.Spec : Prop :=
  ∀ n, P11045265637150963502.a n = A139267 n

end A139267

/-! ## A139267.P13492022102804567890

`A087887(n)%A010002(n)`
-/

namespace A139267.P13492022102804567890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087887 n) (A010002 n)

end

end A139267.P13492022102804567890

namespace A139267

/-- `A087887(n)%A010002(n)` -/
def P13492022102804567890.Spec : Prop :=
  ∀ n, P13492022102804567890.a n = A139267 n

end A139267

/-! ## A139267.P2885590342523652453

`A190705(n)%A005897(n)`
-/

namespace A139267.P2885590342523652453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190705 n) (A005897 n)

end

end A139267.P2885590342523652453

namespace A139267

/-- `A190705(n)%A005897(n)` -/
def P2885590342523652453.Spec : Prop :=
  ∀ n, P2885590342523652453.a n = A139267 n

end A139267

/-! ## A139267.P4178553039983246695

`A010012(n)%A188135(n)`
-/

namespace A139267.P4178553039983246695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010012 n) (A188135 n)

end

end A139267.P4178553039983246695

namespace A139267

/-- `A010012(n)%A188135(n)` -/
def P4178553039983246695.Spec : Prop :=
  ∀ n, P4178553039983246695.a n = A139267 n

end A139267

/-! ## A139267.P10496110434144440912

`A005903(n)%A194454(n)`
-/

namespace A139267.P10496110434144440912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005903 n) (A194454 n)

end

end A139267.P10496110434144440912

namespace A139267

/-- `A005903(n)%A194454(n)` -/
def P10496110434144440912.Spec : Prop :=
  ∀ n, P10496110434144440912.a n = A139267 n

end A139267

/-! ## A139267.P2822977582101816113

`A158480(n)%A080859(n)`
-/

namespace A139267.P2822977582101816113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158480 n) (A080859 n)

end

end A139267.P2822977582101816113

namespace A139267

/-- `A158480(n)%A080859(n)` -/
def P2822977582101816113.Spec : Prop :=
  ∀ n, P2822977582101816113.a n = A139267 n

end A139267

/-! ## A139267.P3893489427248732376

`A158537(n)%A082041(n)`
-/

namespace A139267.P3893489427248732376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158537 n) (A082041 n)

end

end A139267.P3893489427248732376

namespace A139267

/-- `A158537(n)%A082041(n)` -/
def P3893489427248732376.Spec : Prop :=
  ∀ n, P3893489427248732376.a n = A139267 n

end A139267

/-! ## A139267.P2793039633722035919

`A001513(n)%A239325(n)`
-/

namespace A139267.P2793039633722035919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001513 n) (A239325 n)

end

end A139267.P2793039633722035919

namespace A139267

/-- `A001513(n)%A239325(n)` -/
def P2793039633722035919.Spec : Prop :=
  ∀ n, P2793039633722035919.a n = A139267 n

end A139267

/-! ## A139267.P16994514143139519844

`A161587(n)%A131878(n)`
-/

namespace A139267.P16994514143139519844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A161587 n) (A131878 n)

end

end A139267.P16994514143139519844

namespace A139267

/-- `A161587(n)%A131878(n)` -/
def P16994514143139519844.Spec : Prop :=
  ∀ n, P16994514143139519844.a n = A139267 n

end A139267

/-!
# A139268: Twice nonagonal numbers (or twice 9-gonal numbers): a(n) = n*(7*n-5).

The programs for A139268, the canonical program `A139268.P11340989614029244212` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139268 has offset 0).

The definition of A139268 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*n-5)` (program `A139268.P11340989614029244212`, by `A139268.P11340989614029244212.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139268.P11340989614029244212

`n*(7*n-5)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139268

/-- `n*(7*n-5)` -/
def P11340989614029244212.Spec : Prop :=
  ∀ n, P11340989614029244212.a n = A139268 n

theorem P11340989614029244212.correct : P11340989614029244212.Spec := by
  intro n
  simp only [A139268]

end A139268

/-! ## A139268.P11485566467165488044

`n+A051868(n)`
-/

namespace A139268.P11485566467165488044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A051868 n

end

end A139268.P11485566467165488044

namespace A139268

/-- `n+A051868(n)` -/
def P11485566467165488044.Spec : Prop :=
  ∀ n, P11485566467165488044.a n = A139268 n

theorem P11485566467165488044.correct : P11485566467165488044.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P11485566467165488044.a, A139268.P11340989614029244212.a, A051868, A051868.P8510755596375269483.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P4910867642796734060

`∑[a(n-1)+14]` with `a(0)=0, a(1)=2`
-/

namespace A139268.P4910867642796734060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139268.P4910867642796734060

namespace A139268

/-- `∑[a(n-1)+14]` -/
def P4910867642796734060.Spec : Prop :=
  ∀ n, (P4910867642796734060.a n : ℤ) = A139268 n

end A139268

/-! ## A139268.P1310395858342567132

`12-∑[a(n-1)-14]` with `a(0)=12`
-/

namespace A139268.P1310395858342567132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [12] fun n f1 =>
  f1 (n - 1) - 14

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139268.P1310395858342567132

namespace A139268

/-- `12-∑[a(n-1)-14]` -/
def P1310395858342567132.Spec : Prop :=
  ∀ n, P1310395858342567132.a n = A139268 n

end A139268

/-! ## A139268.P18091278061960030859

`A239449(n)-1`
-/

namespace A139268.P18091278061960030859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239449 n - 1

end

end A139268.P18091278061960030859

namespace A139268

/-- `A239449(n)-1` -/
def P18091278061960030859.Spec : Prop :=
  ∀ n, P18091278061960030859.a n = A139268 n

theorem P18091278061960030859.correct : P18091278061960030859.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P18091278061960030859.a, A139268.P11340989614029244212.a, A239449, A239449.P12701582002852355718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P234838556881515918

`A152760(n)/2`
-/

namespace A139268.P234838556881515918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152760 n : ℚ) / 2

end

end A139268.P234838556881515918

namespace A139268

/-- `A152760(n)/2` -/
def P234838556881515918.Spec : Prop :=
  ∀ n, P234838556881515918.a n = (A139268 n : ℚ)

theorem P234838556881515918.correct : P234838556881515918.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P234838556881515918.a, A139268.P11340989614029244212.a, A152760, A152760.P16098557334382843204.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P11020740256514296868

`A051866(n)+n²`
-/

namespace A139268.P11020740256514296868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051866 n + (n ^ 2 : ℤ)

end

end A139268.P11020740256514296868

namespace A139268

/-- `A051866(n)+n²` -/
def P11020740256514296868.Spec : Prop :=
  ∀ n, P11020740256514296868.a n = A139268 n

theorem P11020740256514296868.correct : P11020740256514296868.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P11020740256514296868.a, A139268.P11340989614029244212.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P10803237816192115378

`A139272(n)-n²`
-/

namespace A139268.P10803237816192115378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n - (n ^ 2 : ℤ)

end

end A139268.P10803237816192115378

namespace A139268

/-- `A139272(n)-n²` -/
def P10803237816192115378.Spec : Prop :=
  ∀ n, P10803237816192115378.a n = A139268 n

theorem P10803237816192115378.correct : P10803237816192115378.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P10803237816192115378.a, A139268.P11340989614029244212.a, A139272, A139272.P2664436555885625264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P8410726241547906672

`A051867(n)+∑[n]`
-/

namespace A139268.P8410726241547906672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139268.P8410726241547906672

namespace A139268

/-- `A051867(n)+∑[n]` -/
def P8410726241547906672.Spec : Prop :=
  ∀ n, P8410726241547906672.a n = A139268 n

end A139268

/-! ## A139268.P1703802609073914019

`A152773(n)-∑[n]`
-/

namespace A139268.P1703802609073914019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152773 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139268.P1703802609073914019

namespace A139268

/-- `A152773(n)-∑[n]` -/
def P1703802609073914019.Spec : Prop :=
  ∀ n, P1703802609073914019.a n = A139268 n

end A139268

/-! ## A139268.P14825106813348758866

`2*A152759(n)/3`
-/

namespace A139268.P14825106813348758866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A152759 n : ℚ) / 3

end

end A139268.P14825106813348758866

namespace A139268

/-- `2*A152759(n)/3` -/
def P14825106813348758866.Spec : Prop :=
  ∀ n, P14825106813348758866.a n = (A139268 n : ℚ)

end A139268

/-! ## A139268.P3399006603440749214

`(A195021(n)+n)/2`
-/

namespace A139268.P3399006603440749214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A195021 n + (n : ℤ) : ℚ) / 2

end

end A139268.P3399006603440749214

namespace A139268

/-- `(A195021(n)+n)/2` -/
def P3399006603440749214.Spec : Prop :=
  ∀ n, P3399006603440749214.a n = (A139268 n : ℚ)

theorem P3399006603440749214.correct : P3399006603440749214.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P3399006603440749214.a, A139268.P11340989614029244212.a, A195021, A195021.P8547858062426879313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P7935798265628725260

`A135703(n)-3*n`
-/

namespace A139268.P7935798265628725260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135703 n - (3 * n : ℤ)

end

end A139268.P7935798265628725260

namespace A139268

/-- `A135703(n)-3*n` -/
def P7935798265628725260.Spec : Prop :=
  ∀ n, P7935798265628725260.a n = A139268 n

theorem P7935798265628725260.correct : P7935798265628725260.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P7935798265628725260.a, A139268.P11340989614029244212.a, A135703, A135703.P16089761573645246278.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P17962172094901464369

`(A153797(n)-n)/3`
-/

namespace A139268.P17962172094901464369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153797 n - (n : ℤ) : ℚ) / 3

end

end A139268.P17962172094901464369

namespace A139268

/-- `(A153797(n)-n)/3` -/
def P17962172094901464369.Spec : Prop :=
  ∀ n, P17962172094901464369.a n = (A139268 n : ℚ)

theorem P17962172094901464369.correct : P17962172094901464369.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P17962172094901464369.a, A139268.P11340989614029244212.a, A153797, A153797.P1020360065334955704.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P4865018927378643359

`A033582(n)-5*n`
-/

namespace A139268.P4865018927378643359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033582 n - (5 * n : ℤ)

end

end A139268.P4865018927378643359

namespace A139268

/-- `A033582(n)-5*n` -/
def P4865018927378643359.Spec : Prop :=
  ∀ n, P4865018927378643359.a n = A139268 n

theorem P4865018927378643359.correct : P4865018927378643359.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P4865018927378643359.a, A139268.P11340989614029244212.a, A033582, A033582.P4303886374806047270.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P2440689520662438381

`(A153795(n)-n²)/2`
-/

namespace A139268.P2440689520662438381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153795 n - (n ^ 2 : ℤ) : ℚ) / 2

end

end A139268.P2440689520662438381

namespace A139268

/-- `(A153795(n)-n²)/2` -/
def P2440689520662438381.Spec : Prop :=
  ∀ n, P2440689520662438381.a n = (A139268 n : ℚ)

theorem P2440689520662438381.correct : P2440689520662438381.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P2440689520662438381.a, A139268.P11340989614029244212.a, A153795, A153795.P4253151262494616072.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P4098255333969320551

`(A153783(n)+∑[n])/2`
-/

namespace A139268.P4098255333969320551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153783 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℚ) / 2

end

end A139268.P4098255333969320551

namespace A139268

/-- `(A153783(n)+∑[n])/2` -/
def P4098255333969320551.Spec : Prop :=
  ∀ n, P4098255333969320551.a n = (A139268 n : ℚ)

end A139268

/-! ## A139268.P17882936937345673902

`A001107(n)+A000567(n)`
-/

namespace A139268.P17882936937345673902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n + A000567 n

end

end A139268.P17882936937345673902

namespace A139268

/-- `A001107(n)+A000567(n)` -/
def P17882936937345673902.Spec : Prop :=
  ∀ n, P17882936937345673902.a n = A139268 n

theorem P17882936937345673902.correct : P17882936937345673902.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P17882936937345673902.a, A139268.P11340989614029244212.a, A000567, A000567.P17850767079432249295.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P1065280373032127893

`A051624(n)+A000384(n)`
-/

namespace A139268.P1065280373032127893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 n + A000384 n

end

end A139268.P1065280373032127893

namespace A139268

/-- `A051624(n)+A000384(n)` -/
def P1065280373032127893.Spec : Prop :=
  ∀ n, P1065280373032127893.a n = A139268 n

theorem P1065280373032127893.correct : P1065280373032127893.Spec := by
  intro n
  simp only [A139268, Nat.add_sub_cancel, A139268.P1065280373032127893.a, A139268.P11340989614029244212.a, A000384, A000384.P5392390561999168282.a, A051624, A051624.P2353499915457724243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139268

/-! ## A139268.P15806404751025732725

`A051865(n)+A000326(n)`
-/

namespace A139268.P15806404751025732725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051865 n + A000326 n

end

end A139268.P15806404751025732725

namespace A139268

/-- `A051865(n)+A000326(n)` -/
def P15806404751025732725.Spec : Prop :=
  ∀ n, P15806404751025732725.a n = A139268 n

end A139268

/-!
# A139269: Twice lucky numbers.

The programs for A139269, there is no canonical definition to state claims against.
-/

/-! ## A139269.P7390363097123324802

`A000959(n+1)*2`
-/

namespace A139269.P7390363097123324802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) * 2

end

end A139269.P7390363097123324802

/-! ## A139269.P16778599314160011768

`2*sqrt(A032598(n+1))`
-/

namespace A139269.P16778599314160011768
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A032598 (n + 1) : ℝ)

end

end A139269.P16778599314160011768

/-! ## A139269.P1899067980415060260

`4*A049781(n+1)-2`
-/

namespace A139269.P1899067980415060260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049781 (n + 1) - 2

end

end A139269.P1899067980415060260

/-! ## A139269.P10668272697274819028

`a(n-1)+2*A031883(n)` with `a(0)=2`
-/

namespace A139269.P10668272697274819028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A031883 n

end

end A139269.P10668272697274819028

/-! ## A139269.P15500689939897454860

`record[2*A000959(A305297(n))]`
-/

namespace A139269.P15500689939897454860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000959 (A305297 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139269.P15500689939897454860

/-! ## A139269.P6093628623458150877

`record[2*A000959(A324347(n))]`
-/

namespace A139269.P6093628623458150877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000959 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139269.P6093628623458150877

/-! ## A139269.P13789886002086905794

`record[2*A000959(A328399(n))]`
-/

namespace A139269.P13789886002086905794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000959 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139269.P13789886002086905794

/-! ## A139269.P6380860946600363098

`record[2*A000959(A344180(n))]`
-/

namespace A139269.P6380860946600363098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000959 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139269.P6380860946600363098

/-! ## A139269.P3508393695315378072

`A032602(n+1)+A032600(n+1)`
-/

namespace A139269.P3508393695315378072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) + A032600 (n + 1)

end

end A139269.P3508393695315378072

/-! ## A139269.P9168976352669238030

`2*(A032600(n+1)+A000040(n+1))`
-/

namespace A139269.P9168976352669238030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A032600 (n + 1) + A000040 (n + 1))

end

end A139269.P9168976352669238030

/-! ## A139269.P10632390914097466897

`A100484(n+1)+2*A032600(n+1)`
-/

namespace A139269.P10632390914097466897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + 2 * A032600 (n + 1)

end

end A139269.P10632390914097466897

/-! ## A139269.P16820341990618279249

`lcm(A001222(A001358(n+1)), A000959(n+1))`
-/

namespace A139269.P16820341990618279249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A001358 (n + 1)).toNat) (A000959 (n + 1))

end

end A139269.P16820341990618279249

/-! ## A139269.P488688231975191557

`A000040(n+1)+A032600(n+1)+A000959(n+1)`
-/

namespace A139269.P488688231975191557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A032600 (n + 1) + A000959 (n + 1))

end

end A139269.P488688231975191557

/-! ## A139269.P17641254494070077317

`A000959(n+1)+A118125(n+1)+A045954(n+1)`
-/

namespace A139269.P17641254494070077317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A118125 (n + 1) + A045954 (n + 1))

end

end A139269.P17641254494070077317

/-! ## A139269.P15147226157379757557

`A000959(n+1)+A032602(n+1)-A000040(n+1)`
-/

namespace A139269.P15147226157379757557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A032602 (n + 1) - A000040 (n + 1))

end

end A139269.P15147226157379757557

/-! ## A139269.P13440731457012363359

`A000959(n+1)+A000959(n+2)-A031883(n+1)`
-/

namespace A139269.P13440731457012363359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1) + (A000959 (n + 2) - A031883 (n + 1))

end

end A139269.P13440731457012363359

/-! ## A139269.P17100534310044779580

`A000959(n+1)+A032601(n+1)/A000040(n+1)`
-/

namespace A139269.P17100534310044779580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) : ℚ) + (A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A139269.P17100534310044779580

/-! ## A139269.P5979313331531661423

`A000959(n+1)+A032598(n+1)/A000959(n+1)`
-/

namespace A139269.P5979313331531661423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000959 (n + 1) : ℚ) + (A032598 (n + 1) : ℚ) / (A000959 (n + 1) : ℚ)

end

end A139269.P5979313331531661423

/-! ## A139269.P4519997162942702253

`A130824(A049781(n+1))`
-/

namespace A139269.P4519997162942702253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 (A049781 (n + 1)).toNat

end

end A139269.P4519997162942702253

/-! ## A139269.P14170159391073362903

`A004277(A000959(n+1))`
-/

namespace A139269.P14170159391073362903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000959 (n + 1)).toNat

end

end A139269.P14170159391073362903

/-!
# A139270: Twice nonprime numbers.

The programs for A139270, the canonical program `A139270.P18097877948354523741` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139270 has offset 1).

The definition of A139270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139270.P18097877948354523741

`A018252(n+1)*2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139270

/-- `A018252(n+1)*2` -/
def P18097877948354523741.Spec : Prop :=
  ∀ n, P18097877948354523741.a n = A139270 (n + 1)

theorem P18097877948354523741.correct : P18097877948354523741.Spec := by
  intro n
  simp only [A139270, Nat.add_sub_cancel]

end A139270

/-! ## A139270.P8034751249698333134

`Δ[2*A051349(n)]`
-/

namespace A139270.P8034751249698333134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051349 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139270.P8034751249698333134

namespace A139270

/-- `Δ[2*A051349(n)]` -/
def P8034751249698333134.Spec : Prop :=
  ∀ n, P8034751249698333134.a n = A139270 (n + 1)

end A139270

/-! ## A139270.P4749416830169766110

`2*A141468(n+2)`
-/

namespace A139270.P4749416830169766110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A141468 (n + 2)

end

end A139270.P4749416830169766110

namespace A139270

/-- `2*A141468(n+2)` -/
def P4749416830169766110.Spec : Prop :=
  ∀ n, P4749416830169766110.a n = A139270 (n + 1)

end A139270

/-! ## A139270.P8104520884297987874

`2*A222307(Δ[n²])`
-/

namespace A139270.P8104520884297987874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222307 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139270.P8104520884297987874

namespace A139270

/-- `2*A222307(Δ[n²])` -/
def P8104520884297987874.Spec : Prop :=
  ∀ n, P8104520884297987874.a n = A139270 (n + 1)

end A139270

/-! ## A139270.P17229841335305708825

`2*sqrt(A062312(n+1))`
-/

namespace A139270.P17229841335305708825
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A062312 (n + 1) : ℝ)

end

end A139270.P17229841335305708825

namespace A139270

/-- `2*sqrt(A062312(n+1))` -/
def P17229841335305708825.Spec : Prop :=
  ∀ n, P17229841335305708825.a n = (A139270 (n + 1) : ℝ)

end A139270

/-! ## A139270.P5811191055593610132

`∑[2*A054546(n+1)]`
-/

namespace A139270.P5811191055593610132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139270.P5811191055593610132

namespace A139270

/-- `∑[2*A054546(n+1)]` -/
def P5811191055593610132.Spec : Prop :=
  ∀ n, P5811191055593610132.a n = A139270 (n + 1)

end A139270

/-! ## A139270.P16497552785911393199

`2*(A073425(n)+1+n)`
-/

namespace A139270.P16497552785911393199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A073425 n + 1 + (n : ℤ))

end

end A139270.P16497552785911393199

namespace A139270

/-- `2*(A073425(n)+1+n)` -/
def P16497552785911393199.Spec : Prop :=
  ∀ n, P16497552785911393199.a n = A139270 (n + 1)

end A139270

/-! ## A139270.P7238959233830835159

`2*(A171504(n+1)-(n+1))`
-/

namespace A139270.P7238959233830835159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171504 (n + 1) - (n + 1 : ℤ))

end

end A139270.P7238959233830835159

namespace A139270

/-- `2*(A171504(n+1)-(n+1))` -/
def P7238959233830835159.Spec : Prop :=
  ∀ n, P7238959233830835159.a n = A139270 (n + 1)

theorem P7238959233830835159.correct : P7238959233830835159.Spec := by
  intro n
  simp only [A139270, Nat.add_sub_cancel, A139270.P7238959233830835159.a, A139270.P18097877948354523741.a, A018252, A018252.P16557407491482004301.f1, A018252.P16557407491482004301.a, A171504, A171504.P6118621284767366624.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139270

/-! ## A139270.P18350411432254966219

`2/(n+1)*A171523(n+1)`
-/

namespace A139270.P18350411432254966219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A171523 (n + 1) : ℚ)

end

end A139270.P18350411432254966219

namespace A139270

/-- `2/(n+1)*A171523(n+1)` -/
def P18350411432254966219.Spec : Prop :=
  ∀ n, P18350411432254966219.a n = (A139270 (n + 1) : ℚ)

end A139270

/-! ## A139270.P6832200833946140882

`a(n-1)+2*A065310(n)` with `a(0)=2`
-/

namespace A139270.P6832200833946140882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 * A065310 n

end

end A139270.P6832200833946140882

namespace A139270

/-- `a(n-1)+2*A065310(n)` -/
def P6832200833946140882.Spec : Prop :=
  ∀ n, P6832200833946140882.a n = A139270 (n + 1)

end A139270

/-! ## A139270.P1786177215085887689

`2*(comp[record[A000010(n+1)]]+1)`
-/

namespace A139270.P1786177215085887689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A139270.P1786177215085887689

namespace A139270

/-- `2*(comp[record[A000010(n+1)]]+1)` -/
def P1786177215085887689.Spec : Prop :=
  ∀ n, (P1786177215085887689.a n : ℤ) = A139270 (n + 1)

end A139270

/-! ## A139270.P1635625124602151331

`4*A018252(2*n-(n-1))/2`
-/

namespace A139270.P1635625124602151331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A018252 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat : ℚ) / 2)

end

end A139270.P1635625124602151331

namespace A139270

/-- `4*A018252(2*n-(n-1))/2` -/
def P1635625124602151331.Spec : Prop :=
  ∀ n, P1635625124602151331.a n = (A139270 (n + 1) : ℚ)

end A139270

/-! ## A139270.P7959347912222248942

`2*record[n%(2-A000203(n+1))+1]`
-/

namespace A139270.P7959347912222248942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (2 - A000203 (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139270.P7959347912222248942

namespace A139270

/-- `2*record[n%(2-A000203(n+1))+1]` -/
def P7959347912222248942.Spec : Prop :=
  ∀ n, P7959347912222248942.a n = A139270 (n + 1)

end A139270

/-! ## A139270.P9366330531250478602

`2*record[gcd(n+2, C(2, A000005(n+2)))]`
-/

namespace A139270.P9366330531250478602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (Nat.choose 2 (A000005 (n + 2)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139270.P9366330531250478602

namespace A139270

/-- `2*record[gcd(n+2, C(2, A000005(n+2)))]` -/
def P9366330531250478602.Spec : Prop :=
  ∀ n, (P9366330531250478602.a n : ℤ) = A139270 (n + 1)

end A139270

/-! ## A139270.P13808054933868941836

`2*record[lcm(n+1, 1-C(2, A000005(n+1)))]`
-/

namespace A139270.P13808054933868941836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (1 - (Nat.choose 2 (A000005 (n + 1)).toNat : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139270.P13808054933868941836

namespace A139270

/-- `2*record[lcm(n+1, 1-C(2, A000005(n+1)))]` -/
def P13808054933868941836.Spec : Prop :=
  ∀ n, (P13808054933868941836.a n : ℤ) = A139270 (n + 1)

end A139270

/-! ## A139270.P865267922479620359

`A171504(n+1)+A073425(n)`
-/

namespace A139270.P865267922479620359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171504 (n + 1) + A073425 n

end

end A139270.P865267922479620359

namespace A139270

/-- `A171504(n+1)+A073425(n)` -/
def P865267922479620359.Spec : Prop :=
  ∀ n, P865267922479620359.a n = A139270 (n + 1)

end A139270

/-! ## A139270.P9235228400808941583

`∪[A282671(n+1), A001504(n)]`
-/

namespace A139270.P9235228400808941583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001504 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139270.P9235228400808941583

namespace A139270

/-- `∪[A282671(n+1), A001504(n)]` -/
def P9235228400808941583.Spec : Prop :=
  ∀ n, (P9235228400808941583.a n : ℤ) = A139270 (n + 1)

end A139270

/-! ## A139270.P11062440178593400548

`∪[A004171(n), A282671(n+1)]`
-/

namespace A139270.P11062440178593400548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139270.P11062440178593400548

namespace A139270

/-- `∪[A004171(n), A282671(n+1)]` -/
def P11062440178593400548.Spec : Prop :=
  ∀ n, (P11062440178593400548.a n : ℤ) = A139270 (n + 1)

end A139270

/-! ## A139270.P11266348747165060144

`∪[A006043(n), A282671(n+1)]`
-/

namespace A139270.P11266348747165060144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139270.P11266348747165060144

namespace A139270

/-- `∪[A006043(n), A282671(n+1)]` -/
def P11266348747165060144.Spec : Prop :=
  ∀ n, (P11266348747165060144.a n : ℤ) = A139270 (n + 1)

end A139270

/-! ## A139270.P12249080074818165424

`∪[A027655(n), A282671(n+1)]`
-/

namespace A139270.P12249080074818165424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A139270.P12249080074818165424

namespace A139270

/-- `∪[A027655(n), A282671(n+1)]` -/
def P12249080074818165424.Spec : Prop :=
  ∀ n, (P12249080074818165424.a n : ℤ) = A139270 (n + 1)

end A139270

/-!
# A139271: a(n) = 2*n*(4*n-3).

The programs for A139271, the canonical program `A139271.P9268409364969855600` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139271 has offset 0).

The definition of A139271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(4*n-3)` (program `A139271.P9268409364969855600`, by `A139271.P9268409364969855600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139271.P8496817842757085410

`8*n²-6*n`
-/

namespace A139271.P8496817842757085410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (8 * n ^ 2 : ℤ) - (6 * n : ℤ)

end

end A139271.P8496817842757085410

namespace A139271

/-- `8*n²-6*n` -/
def P8496817842757085410.Spec : Prop :=
  ∀ n, P8496817842757085410.a n = A139271 n

theorem P8496817842757085410.correct : P8496817842757085410.Spec := by
  intro n
  simp only [A139271, Nat.add_sub_cancel, A139271.P8496817842757085410.a, A139271.P9268409364969855600.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A139271

/-! ## A139271.P9268409364969855600

`2*n*(4*n-3)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139271

/-- `2*n*(4*n-3)` -/
def P9268409364969855600.Spec : Prop :=
  ∀ n, P9268409364969855600.a n = A139271 n

theorem P9268409364969855600.correct : P9268409364969855600.Spec := by
  intro n
  simp only [A139271]

end A139271

/-! ## A139271.P15874008442698529690

`∑[a(n-1)+16]` with `a(0)=0, a(1)=2`
-/

namespace A139271.P15874008442698529690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139271.P15874008442698529690

namespace A139271

/-- `∑[a(n-1)+16]` -/
def P15874008442698529690.Spec : Prop :=
  ∀ n, (P15874008442698529690.a n : ℤ) = A139271 n

end A139271

/-! ## A139271.P6908459002638685500

`2*A152767(n)/3`
-/

namespace A139271.P6908459002638685500
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A152767 n : ℚ) / 3

end

end A139271.P6908459002638685500

namespace A139271

/-- `2*A152767(n)/3` -/
def P6908459002638685500.Spec : Prop :=
  ∀ n, P6908459002638685500.a n = (A139271 n : ℚ)

theorem P6908459002638685500.correct : P6908459002638685500.Spec := by
  intro n
  simp only [A139271, Nat.add_sub_cancel, A139271.P6908459002638685500.a, A139271.P9268409364969855600.a, A152767, A152767.P6665928962877378068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139271

/-! ## A139271.P10290852828837408414

`A010016(n)%A082040(n)`
-/

namespace A139271.P10290852828837408414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010016 n) (A082040 n)

end

end A139271.P10290852828837408414

namespace A139271

/-- `A010016(n)%A082040(n)` -/
def P10290852828837408414.Spec : Prop :=
  ∀ n, P10290852828837408414.a n = A139271 n

end A139271

/-! ## A139271.P17506197920481311614

`A152100(n)%A001386(n)`
-/

namespace A139271.P17506197920481311614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152100 n) (A001386 n)

end

end A139271.P17506197920481311614

namespace A139271

/-- `A152100(n)%A001386(n)` -/
def P17506197920481311614.Spec : Prop :=
  ∀ n, P17506197920481311614.a n = A139271 n

end A139271

/-! ## A139271.P13832927414728176809

`A081589(n)%A158187(n)`
-/

namespace A139271.P13832927414728176809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081589 n) (A158187 n)

end

end A139271.P13832927414728176809

namespace A139271

/-- `A081589(n)%A158187(n)` -/
def P13832927414728176809.Spec : Prop :=
  ∀ n, P13832927414728176809.a n = A139271 n

end A139271

/-! ## A139271.P3114247015186466881

`A158549(n)%A081272(n)`
-/

namespace A139271.P3114247015186466881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158549 n) (A081272 n)

end

end A139271.P3114247015186466881

namespace A139271

/-- `A158549(n)%A081272(n)` -/
def P3114247015186466881.Spec : Prop :=
  ∀ n, P3114247015186466881.a n = A139271 n

end A139271

/-! ## A139271.P780565782984943719

`A010014(n)%A236267(n)`
-/

namespace A139271.P780565782984943719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010014 n) (A236267 n)

end

end A139271.P780565782984943719

namespace A139271

/-- `A010014(n)%A236267(n)` -/
def P780565782984943719.Spec : Prop :=
  ∀ n, P780565782984943719.a n = A139271 n

end A139271

/-! ## A139271.P2320359193350906313

`A258617(n)%A008532(n)`
-/

namespace A139271.P2320359193350906313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258617 n) (A008532 n)

end

end A139271.P2320359193350906313

namespace A139271

/-- `A258617(n)%A008532(n)` -/
def P2320359193350906313.Spec : Prop :=
  ∀ n, P2320359193350906313.a n = A139271 n

end A139271

/-! ## A139271.P9171868372371310374

`A242854(n)%A067239(n)`
-/

namespace A139271.P9171868372371310374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A242854 n) (A067239 n)

end

end A139271.P9171868372371310374

namespace A139271

/-- `A242854(n)%A067239(n)` -/
def P9171868372371310374.Spec : Prop :=
  ∀ n, P9171868372371310374.a n = A139271 n

end A139271

/-! ## A139271.P14421547513906704462

`A158575(n)%A381424(n)`
-/

namespace A139271.P14421547513906704462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158575 n) (A381424 n)

end

end A139271.P14421547513906704462

namespace A139271

/-- `A158575(n)%A381424(n)` -/
def P14421547513906704462.Spec : Prop :=
  ∀ n, P14421547513906704462.a n = A139271 n

end A139271

/-! ## A139271.P11174214370250185833

`lcm(A001107(n), A004277(n))`
-/

namespace A139271.P11174214370250185833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001107 n) (A004277 n)

end

end A139271.P11174214370250185833

namespace A139271

/-- `lcm(A001107(n), A004277(n))` -/
def P11174214370250185833.Spec : Prop :=
  ∀ n, (P11174214370250185833.a n : ℤ) = A139271 n

end A139271

/-! ## A139271.P17642544847641242350

`A010022(n)%A143854(n+1)`
-/

namespace A139271.P17642544847641242350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010022 n) (A143854 (n + 1))

end

end A139271.P17642544847641242350

namespace A139271

/-- `A010022(n)%A143854(n+1)` -/
def P17642544847641242350.Spec : Prop :=
  ∀ n, P17642544847641242350.a n = A139271 n

end A139271

/-! ## A139271.P14860846460552568178

`A001533(n)%A194431(n+1)`
-/

namespace A139271.P14860846460552568178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001533 n) (A194431 (n + 1))

end

end A139271.P14860846460552568178

namespace A139271

/-- `A001533(n)%A194431(n+1)` -/
def P14860846460552568178.Spec : Prop :=
  ∀ n, P14860846460552568178.a n = A139271 n

end A139271

/-! ## A139271.P8127252917982654899

`A010021(n)%A244805(n+1)`
-/

namespace A139271.P8127252917982654899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010021 n) (A244805 (n + 1))

end

end A139271.P8127252917982654899

namespace A139271

/-- `A010021(n)%A244805(n+1)` -/
def P8127252917982654899.Spec : Prop :=
  ∀ n, P8127252917982654899.a n = A139271 n

end A139271

/-! ## A139271.P9279015587608893305

`A204675(n)%A069129(n+1)`
-/

namespace A139271.P9279015587608893305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204675 n) (A069129 (n + 1))

end

end A139271.P9279015587608893305

namespace A139271

/-- `A204675(n)%A069129(n+1)` -/
def P9279015587608893305.Spec : Prop :=
  ∀ n, P9279015587608893305.a n = A139271 n

end A139271

/-! ## A139271.P1557033230645361481

`A082041(n)%A194431(n+1)`
-/

namespace A139271.P1557033230645361481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082041 n) (A194431 (n + 1))

end

end A139271.P1557033230645361481

namespace A139271

/-- `A082041(n)%A194431(n+1)` -/
def P1557033230645361481.Spec : Prop :=
  ∀ n, P1557033230645361481.a n = A139271 n

end A139271

/-! ## A139271.P16543442567088450035

`A143859(n+1)%A194268(n)`
-/

namespace A139271.P16543442567088450035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143859 (n + 1)) (A194268 n)

end

end A139271.P16543442567088450035

namespace A139271

/-- `A143859(n+1)%A194268(n)` -/
def P16543442567088450035.Spec : Prop :=
  ∀ n, P16543442567088450035.a n = A139271 n

end A139271

/-! ## A139271.P16077215449937685930

`A143861(n+1)%A236267(n)`
-/

namespace A139271.P16077215449937685930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143861 (n + 1)) (A236267 n)

end

end A139271.P16077215449937685930

namespace A139271

/-- `A143861(n+1)%A236267(n)` -/
def P16077215449937685930.Spec : Prop :=
  ∀ n, P16077215449937685930.a n = A139271 n

end A139271

/-!
# A139272: a(n) = n*(8*n-5).

The programs for A139272, the canonical program `A139272.P2664436555885625264` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139272 has offset 0).

The definition of A139272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n-5)` (program `A139272.P2664436555885625264`, by `A139272.P2664436555885625264.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139272.P2664436555885625264

`n*(8*n-5)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139272

/-- `n*(8*n-5)` -/
def P2664436555885625264.Spec : Prop :=
  ∀ n, P2664436555885625264.a n = A139272 n

theorem P2664436555885625264.correct : P2664436555885625264.Spec := by
  intro n
  simp only [A139272]

end A139272

/-! ## A139272.P7462735477596256118

`∑[a(n-1)+16]` with `a(0)=0, a(1)=3`
-/

namespace A139272.P7462735477596256118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139272.P7462735477596256118

namespace A139272

/-- `∑[a(n-1)+16]` -/
def P7462735477596256118.Spec : Prop :=
  ∀ n, (P7462735477596256118.a n : ℤ) = A139272 n

end A139272

/-! ## A139272.P14421237035731306443

`13-∑[a(n-1)-16]` with `a(0)=13`
-/

namespace A139272.P14421237035731306443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139272.P14421237035731306443

namespace A139272

/-- `13-∑[a(n-1)-16]` -/
def P14421237035731306443.Spec : Prop :=
  ∀ n, P14421237035731306443.a n = A139272 n

end A139272

/-! ## A139272.P778997035176551226

`A383464(n)-1`
-/

namespace A139272.P778997035176551226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383464 n - 1

end

end A139272.P778997035176551226

namespace A139272

/-- `A383464(n)-1` -/
def P778997035176551226.Spec : Prop :=
  ∀ n, P778997035176551226.a n = A139272 n

theorem P778997035176551226.correct : P778997035176551226.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P778997035176551226.a, A139272.P2664436555885625264.a, A383464, A383464.P11239286275469596508.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P10847946920143078598

`A139271(n)+n`
-/

namespace A139272.P10847946920143078598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n + (n : ℤ)

end

end A139272.P10847946920143078598

namespace A139272

/-- `A139271(n)+n` -/
def P10847946920143078598.Spec : Prop :=
  ∀ n, P10847946920143078598.a n = A139272 n

theorem P10847946920143078598.correct : P10847946920143078598.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P10847946920143078598.a, A139272.P2664436555885625264.a, A139271, A139271.P9268409364969855600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P9433471257646375311

`A085250(n)-n`
-/

namespace A139272.P9433471257646375311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n - (n : ℤ)

end

end A139272.P9433471257646375311

namespace A139272

/-- `A085250(n)-n` -/
def P9433471257646375311.Spec : Prop :=
  ∀ n, P9433471257646375311.a n = A139272 n

theorem P9433471257646375311.correct : P9433471257646375311.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P9433471257646375311.a, A139272.P2664436555885625264.a, A085250, A085250.P6274301986790995116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P11159303792413102784

`A139268(n)+n²`
-/

namespace A139272.P11159303792413102784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139268 n + (n ^ 2 : ℤ)

end

end A139272.P11159303792413102784

namespace A139272

/-- `A139268(n)+n²` -/
def P11159303792413102784.Spec : Prop :=
  ∀ n, P11159303792413102784.a n = A139272 n

theorem P11159303792413102784.correct : P11159303792413102784.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P11159303792413102784.a, A139272.P2664436555885625264.a, A139268, A139268.P11340989614029244212.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P3823331439166428115

`A226489(n)+∑[n]`
-/

namespace A139272.P3823331439166428115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226489 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A139272.P3823331439166428115

namespace A139272

/-- `A226489(n)+∑[n]` -/
def P3823331439166428115.Spec : Prop :=
  ∀ n, P3823331439166428115.a n = A139272 n

end A139272

/-! ## A139272.P12203540625812276017

`A033567(n)-1+n`
-/

namespace A139272.P12203540625812276017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033567 n - 1 + (n : ℤ)

end

end A139272.P12203540625812276017

namespace A139272

/-- `A033567(n)-1+n` -/
def P12203540625812276017.Spec : Prop :=
  ∀ n, P12203540625812276017.a n = A139272 n

theorem P12203540625812276017.correct : P12203540625812276017.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P12203540625812276017.a, A139272.P2664436555885625264.a, A033567, A033567.P4876348831150855649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P14522750491733712079

`A080856(n)-(n+1)`
-/

namespace A139272.P14522750491733712079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n - (n + 1 : ℤ)

end

end A139272.P14522750491733712079

namespace A139272

/-- `A080856(n)-(n+1)` -/
def P14522750491733712079.Spec : Prop :=
  ∀ n, P14522750491733712079.a n = A139272 n

theorem P14522750491733712079.correct : P14522750491733712079.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P14522750491733712079.a, A139272.P2664436555885625264.a, A080856, A080856.P3251155691184586344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P4236683016070600114

`2*A001107(n)+n`
-/

namespace A139272.P4236683016070600114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001107 n + (n : ℤ)

end

end A139272.P4236683016070600114

namespace A139272

/-- `2*A001107(n)+n` -/
def P4236683016070600114.Spec : Prop :=
  ∀ n, P4236683016070600114.a n = A139272 n

theorem P4236683016070600114.correct : P4236683016070600114.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P4236683016070600114.a, A139272.P2664436555885625264.a, A001107, A001107.P15766833630772781234.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P5151231911678275550

`A051870(n)+2*n`
-/

namespace A139272.P5151231911678275550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051870 n + (2 * n : ℤ)

end

end A139272.P5151231911678275550

namespace A139272

/-- `A051870(n)+2*n` -/
def P5151231911678275550.Spec : Prop :=
  ∀ n, P5151231911678275550.a n = A139272 n

theorem P5151231911678275550.correct : P5151231911678275550.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P5151231911678275550.a, A139272.P2664436555885625264.a, A051870, A051870.P3674433124874018284.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P16344844591916578747

`2*A002939(n)-n`
-/

namespace A139272.P16344844591916578747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002939 n - (n : ℤ)

end

end A139272.P16344844591916578747

namespace A139272

/-- `2*A002939(n)-n` -/
def P16344844591916578747.Spec : Prop :=
  ∀ n, P16344844591916578747.a n = A139272 n

theorem P16344844591916578747.correct : P16344844591916578747.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P16344844591916578747.a, A139272.P2664436555885625264.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P9601485228932463308

`A139273(n)-2*n`
-/

namespace A139272.P9601485228932463308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 n - (2 * n : ℤ)

end

end A139272.P9601485228932463308

namespace A139272

/-- `A139273(n)-2*n` -/
def P9601485228932463308.Spec : Prop :=
  ∀ n, P9601485228932463308.a n = A139272 n

theorem P9601485228932463308.correct : P9601485228932463308.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P9601485228932463308.a, A139272.P2664436555885625264.a, A139273, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P15121633794304281604

`A014635(n)-3*n`
-/

namespace A139272.P15121633794304281604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - (3 * n : ℤ)

end

end A139272.P15121633794304281604

namespace A139272

/-- `A014635(n)-3*n` -/
def P15121633794304281604.Spec : Prop :=
  ∀ n, P15121633794304281604.a n = A139272 n

theorem P15121633794304281604.correct : P15121633794304281604.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P15121633794304281604.a, A139272.P2664436555885625264.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P10825606487583686276

`A152750(n)/2-n`
-/

namespace A139272.P10825606487583686276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152750 n : ℚ) / 2 - (n : ℚ)

end

end A139272.P10825606487583686276

namespace A139272

/-- `A152750(n)/2-n` -/
def P10825606487583686276.Spec : Prop :=
  ∀ n, P10825606487583686276.a n = (A139272 n : ℚ)

theorem P10825606487583686276.correct : P10825606487583686276.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P10825606487583686276.a, A139272.P2664436555885625264.a, A152750, A152750.P9324821272604293728.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P6161993070625555866

`(A153808(n)+n)/3`
-/

namespace A139272.P6161993070625555866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153808 n + (n : ℤ) : ℚ) / 3

end

end A139272.P6161993070625555866

namespace A139272

/-- `(A153808(n)+n)/3` -/
def P6161993070625555866.Spec : Prop :=
  ∀ n, P6161993070625555866.a n = (A139272 n : ℚ)

theorem P6161993070625555866.correct : P6161993070625555866.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P6161993070625555866.a, A139272.P2664436555885625264.a, A153808, A153808.P12582623721954130915.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P3312987954962280705

`4*A000384(n)-n`
-/

namespace A139272.P3312987954962280705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000384 n - (n : ℤ)

end

end A139272.P3312987954962280705

namespace A139272

/-- `4*A000384(n)-n` -/
def P3312987954962280705.Spec : Prop :=
  ∀ n, P3312987954962280705.a n = A139272 n

theorem P3312987954962280705.correct : P3312987954962280705.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P3312987954962280705.a, A139272.P2664436555885625264.a, A000384, A000384.P5392390561999168282.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P6094462535062462677

`A139274(n)-4*n`
-/

namespace A139272.P6094462535062462677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139274 n - (4 * n : ℤ)

end

end A139272.P6094462535062462677

namespace A139272

/-- `A139274(n)-4*n` -/
def P6094462535062462677.Spec : Prop :=
  ∀ n, P6094462535062462677.a n = A139272 n

theorem P6094462535062462677.correct : P6094462535062462677.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P6094462535062462677.a, A139272.P2664436555885625264.a, A139274, A139274.P5572148062200826074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-! ## A139272.P16570189373009208571

`A143698(n)/3-n`
-/

namespace A139272.P16570189373009208571
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143698 n : ℚ) / 3 - (n : ℚ)

end

end A139272.P16570189373009208571

namespace A139272

/-- `A143698(n)/3-n` -/
def P16570189373009208571.Spec : Prop :=
  ∀ n, P16570189373009208571.a n = (A139272 n : ℚ)

theorem P16570189373009208571.correct : P16570189373009208571.Spec := by
  intro n
  simp only [A139272, Nat.add_sub_cancel, A139272.P16570189373009208571.a, A139272.P2664436555885625264.a, A143698, A143698.P346745898935711225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139272

/-!
# A139273: a(n) = n*(8*n - 3).

The programs for A139273, the canonical program `A139273.P14013562454579091989` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139273 has offset 0).

The definition of A139273 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n-3)` (program `A139273.P14013562454579091989`, by `A139273.P14013562454579091989.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139273.P14013562454579091989

`n*(8*n-3)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139273

/-- `n*(8*n-3)` -/
def P14013562454579091989.Spec : Prop :=
  ∀ n, P14013562454579091989.a n = A139273 n

theorem P14013562454579091989.correct : P14013562454579091989.Spec := by
  intro n
  simp only [A139273]

end A139273

/-! ## A139273.P9440777504726595037

`A028994(n)/2`
-/

namespace A139273.P9440777504726595037
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028994 n : ℚ) / 2

end

end A139273.P9440777504726595037

namespace A139273

/-- `A028994(n)/2` -/
def P9440777504726595037.Spec : Prop :=
  ∀ n, P9440777504726595037.a n = (A139273 n : ℚ)

theorem P9440777504726595037.correct : P9440777504726595037.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P9440777504726595037.a, A139273.P14013562454579091989.a, A028994, A028994.P2614720213617424781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P13552987297531342482

`4*A000217(n)+A051866(n)`
-/

namespace A139273.P13552987297531342482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000217 n + A051866 n

end

end A139273.P13552987297531342482

namespace A139273

/-- `4*A000217(n)+A051866(n)` -/
def P13552987297531342482.Spec : Prop :=
  ∀ n, P13552987297531342482.a n = A139273 n

theorem P13552987297531342482.correct : P13552987297531342482.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P13552987297531342482.a, A139273.P14013562454579091989.a, A000217, A000217.P10269402890581615239.a, A051866, A051866.P7037994286834974710.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P16770948769332596788

`n*record[lcm(4, n)]+n`
-/

namespace A139273.P16770948769332596788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + n

end

end A139273.P16770948769332596788

namespace A139273

/-- `n*record[lcm(4, n)]+n` -/
def P16770948769332596788.Spec : Prop :=
  ∀ n, (P16770948769332596788.a n : ℤ) = A139273 n

end A139273

/-! ## A139273.P5846141720972593517

`∑[a(n-1)+16]` with `a(0)=0, a(1)=5`
-/

namespace A139273.P5846141720972593517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139273.P5846141720972593517

namespace A139273

/-- `∑[a(n-1)+16]` -/
def P5846141720972593517.Spec : Prop :=
  ∀ n, (P5846141720972593517.a n : ℤ) = A139273 n

end A139273

/-! ## A139273.P12189788670173605936

`4*C(2*n, 2)+n`
-/

namespace A139273.P12189788670173605936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.choose (2 * n) 2 + n

end

end A139273.P12189788670173605936

namespace A139273

/-- `4*C(2*n, 2)+n` -/
def P12189788670173605936.Spec : Prop :=
  ∀ n, (P12189788670173605936.a n : ℤ) = A139273 n

theorem P12189788670173605936.correct : P12189788670173605936.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P12189788670173605936.a, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P6194462151612388932

`11-∑[a(n-1)-16]` with `a(0)=11`
-/

namespace A139273.P6194462151612388932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [11] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139273.P6194462151612388932

namespace A139273

/-- `11-∑[a(n-1)-16]` -/
def P6194462151612388932.Spec : Prop :=
  ∀ n, P6194462151612388932.a n = A139273 n

end A139273

/-! ## A139273.P426014396933840844

`C(eq[n, and(n, n+3)], 2)-n`
-/

namespace A139273.P426014396933840844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) 2 : ℤ) - (n : ℤ)

end

end A139273.P426014396933840844

namespace A139273

/-- `C(eq[n, and(n, n+3)], 2)-n` -/
def P426014396933840844.Spec : Prop :=
  ∀ n, P426014396933840844.a n = A139273 n

end A139273

/-! ## A139273.P6800047747131187563

`∑[ogf((6x+10x^2)/(1-2x+x^2))]-n`
-/

namespace A139273.P6800047747131187563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 10] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A139273.P6800047747131187563

namespace A139273

/-- `∑[ogf((6x+10x^2)/(1-2x+x^2))]-n` -/
def P6800047747131187563.Spec : Prop :=
  ∀ n, P6800047747131187563.a n = A139273 n

end A139273

/-! ## A139273.P5832926588863189156

`C((n+1)²-(1-n)², 2)-n`
-/

namespace A139273.P5832926588863189156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (((n + 1) ^ 2 : ℤ) - (1 - (n : ℤ)) ^ 2).toNat 2 : ℤ) - (n : ℤ)

end

end A139273.P5832926588863189156

namespace A139273

/-- `C((n+1)²-(1-n)², 2)-n` -/
def P5832926588863189156.Spec : Prop :=
  ∀ n, P5832926588863189156.a n = A139273 n

end A139273

/-! ## A139273.P11121067482281448847

`4*∑[ogf((x+3x^2)/(1-2x+x^2))]+n`
-/

namespace A139273.P11121067482281448847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ)

end

end A139273.P11121067482281448847

namespace A139273

/-- `4*∑[ogf((x+3x^2)/(1-2x+x^2))]+n` -/
def P11121067482281448847.Spec : Prop :=
  ∀ n, P11121067482281448847.a n = A139273 n

end A139273

/-! ## A139273.P3129583930555301989

`A085250(n)+n`
-/

namespace A139273.P3129583930555301989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085250 n + (n : ℤ)

end

end A139273.P3129583930555301989

namespace A139273

/-- `A085250(n)+n` -/
def P3129583930555301989.Spec : Prop :=
  ∀ n, P3129583930555301989.a n = A139273 n

theorem P3129583930555301989.correct : P3129583930555301989.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P3129583930555301989.a, A139273.P14013562454579091989.a, A085250, A085250.P6274301986790995116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P15388986490317826669

`A014635(n)-n`
-/

namespace A139273.P15388986490317826669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n - (n : ℤ)

end

end A139273.P15388986490317826669

namespace A139273

/-- `A014635(n)-n` -/
def P15388986490317826669.Spec : Prop :=
  ∀ n, P15388986490317826669.a n = A139273 n

theorem P15388986490317826669.correct : P15388986490317826669.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P15388986490317826669.a, A139273.P14013562454579091989.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P16183053484175039972

`A152743(n)-n²`
-/

namespace A139273.P16183053484175039972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152743 n - (n ^ 2 : ℤ)

end

end A139273.P16183053484175039972

namespace A139273

/-- `A152743(n)-n²` -/
def P16183053484175039972.Spec : Prop :=
  ∀ n, P16183053484175039972.a n = A139273 n

theorem P16183053484175039972.correct : P16183053484175039972.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P16183053484175039972.a, A139273.P14013562454579091989.a, A152743, A152743.P11194544778889005777.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P5764079170593982269

`A080856(n)-1+n`
-/

namespace A139273.P5764079170593982269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080856 n - 1 + (n : ℤ)

end

end A139273.P5764079170593982269

namespace A139273

/-- `A080856(n)-1+n` -/
def P5764079170593982269.Spec : Prop :=
  ∀ n, P5764079170593982269.a n = A139273 n

theorem P5764079170593982269.correct : P5764079170593982269.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P5764079170593982269.a, A139273.P14013562454579091989.a, A080856, A080856.P3251155691184586344.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P4295484691533988970

`A185438(n)-(n+1)`
-/

namespace A139273.P4295484691533988970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 n - (n + 1 : ℤ)

end

end A139273.P4295484691533988970

namespace A139273

/-- `A185438(n)-(n+1)` -/
def P4295484691533988970.Spec : Prop :=
  ∀ n, P4295484691533988970.a n = A139273 n

theorem P4295484691533988970.correct : P4295484691533988970.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P4295484691533988970.a, A139273.P14013562454579091989.a, A185438, A185438.P17362725107201576435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P9305188296400126095

`2*A002939(n)+n`
-/

namespace A139273.P9305188296400126095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002939 n + (n : ℤ)

end

end A139273.P9305188296400126095

namespace A139273

/-- `2*A002939(n)+n` -/
def P9305188296400126095.Spec : Prop :=
  ∀ n, P9305188296400126095.a n = A139273 n

theorem P9305188296400126095.correct : P9305188296400126095.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P9305188296400126095.a, A139273.P14013562454579091989.a, A002939, A002939.P11095602872349887610.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P8471840696150466060

`A139272(n)+2*n`
-/

namespace A139273.P8471840696150466060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139272 n + (2 * n : ℤ)

end

end A139273.P8471840696150466060

namespace A139273

/-- `A139272(n)+2*n` -/
def P8471840696150466060.Spec : Prop :=
  ∀ n, P8471840696150466060.a n = A139273 n

theorem P8471840696150466060.correct : P8471840696150466060.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P8471840696150466060.a, A139273.P14013562454579091989.a, A139272, A139272.P2664436555885625264.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P11008154871515754723

`2*A033991(n)-n`
-/

namespace A139273.P11008154871515754723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033991 n - (n : ℤ)

end

end A139273.P11008154871515754723

namespace A139273

/-- `2*A033991(n)-n` -/
def P11008154871515754723.Spec : Prop :=
  ∀ n, P11008154871515754723.a n = A139273 n

theorem P11008154871515754723.correct : P11008154871515754723.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P11008154871515754723.a, A139273.P14013562454579091989.a, A033991, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-! ## A139273.P13678510225824813627

`A139271(n)+3*n`
-/

namespace A139273.P13678510225824813627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139271 n + (3 * n : ℤ)

end

end A139273.P13678510225824813627

namespace A139273

/-- `A139271(n)+3*n` -/
def P13678510225824813627.Spec : Prop :=
  ∀ n, P13678510225824813627.a n = A139273 n

theorem P13678510225824813627.correct : P13678510225824813627.Spec := by
  intro n
  simp only [A139273, Nat.add_sub_cancel, A139273.P13678510225824813627.a, A139273.P14013562454579091989.a, A139271, A139271.P9268409364969855600.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139273

/-!
# A139274: a(n) = n*(8*n-1).

The programs for A139274, the canonical program `A139274.P5572148062200826074` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139274 has offset 0).

The definition of A139274 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n-1)` (program `A139274.P5572148062200826074`, by `A139274.P5572148062200826074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139274.P5572148062200826074

`n*(8*n-1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139274

/-- `n*(8*n-1)` -/
def P5572148062200826074.Spec : Prop :=
  ∀ n, P5572148062200826074.a n = A139274 n

theorem P5572148062200826074.correct : P5572148062200826074.Spec := by
  intro n
  simp only [A139274]

end A139274

/-! ## A139274.P14125194505769440983

`C(8*n, 2)/4`
-/

namespace A139274.P14125194505769440983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (8 * n) 2 : ℚ) / 4

end

end A139274.P14125194505769440983

namespace A139274

/-- `C(8*n, 2)/4` -/
def P14125194505769440983.Spec : Prop :=
  ∀ n, P14125194505769440983.a n = (A139274 n : ℚ)

theorem P14125194505769440983.correct : P14125194505769440983.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P14125194505769440983.a, A139274.P5572148062200826074.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P7196979893231075105

`∑[a(n-1)+16]` with `a(0)=0, a(1)=7`
-/

namespace A139274.P7196979893231075105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139274.P7196979893231075105

namespace A139274

/-- `∑[a(n-1)+16]` -/
def P7196979893231075105.Spec : Prop :=
  ∀ n, (P7196979893231075105.a n : ℤ) = A139274 n

end A139274

/-! ## A139274.P17424952195609478065

`∑[ogf((7x+9x^2)/(1-2x+x^2))]`
-/

namespace A139274.P17424952195609478065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 9] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139274.P17424952195609478065

namespace A139274

/-- `∑[ogf((7x+9x^2)/(1-2x+x^2))]` -/
def P17424952195609478065.Spec : Prop :=
  ∀ n, P17424952195609478065.a n = A139274 n

end A139274

/-! ## A139274.P11722360718496435147

`ogf((7x+9x^2)/(1-3x+3x^2-x^3))`
-/

namespace A139274.P11722360718496435147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 9] [1, -3, 3, -1] n

end

end A139274.P11722360718496435147

namespace A139274

/-- `ogf((7x+9x^2)/(1-3x+3x^2-x^3))` -/
def P11722360718496435147.Spec : Prop :=
  ∀ n, P11722360718496435147.a n = A139274 n

end A139274

/-! ## A139274.P3476258061368207349

`(C(4*n, 2)+n)%C(4*n+2, 2)²`
-/

namespace A139274.P3476258061368207349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 2 + n) % Nat.choose (4 * n + 2) 2 ^ 2

end

end A139274.P3476258061368207349

namespace A139274

/-- `(C(4*n, 2)+n)%C(4*n+2, 2)²` -/
def P3476258061368207349.Spec : Prop :=
  ∀ n, (P3476258061368207349.a n : ℤ) = A139274 n

end A139274

/-! ## A139274.P9177133941815245979

`A014635(n)+n`
-/

namespace A139274.P9177133941815245979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014635 n + (n : ℤ)

end

end A139274.P9177133941815245979

namespace A139274

/-- `A014635(n)+n` -/
def P9177133941815245979.Spec : Prop :=
  ∀ n, P9177133941815245979.a n = A139274 n

theorem P9177133941815245979.correct : P9177133941815245979.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P9177133941815245979.a, A139274.P5572148062200826074.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P5760558065325064270

`A139098(n)-n`
-/

namespace A139274.P5760558065325064270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139098 n - (n : ℤ)

end

end A139274.P5760558065325064270

namespace A139274

/-- `A139098(n)-n` -/
def P5760558065325064270.Spec : Prop :=
  ∀ n, P5760558065325064270.a n = A139274 n

theorem P5760558065325064270.correct : P5760558065325064270.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P5760558065325064270.a, A139274.P5572148062200826074.a, A139098, A139098.P9529922579529552041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P7837959500981617044

`A081585(n)-(n+1)`
-/

namespace A139274.P7837959500981617044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081585 n - (n + 1 : ℤ)

end

end A139274.P7837959500981617044

namespace A139274

/-- `A081585(n)-(n+1)` -/
def P7837959500981617044.Spec : Prop :=
  ∀ n, P7837959500981617044.a n = A139274 n

theorem P7837959500981617044.correct : P7837959500981617044.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P7837959500981617044.a, A139274.P5572148062200826074.a, A081585, A081585.P16109978161650450954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P11702515148477729855

`A185438(n)-1+n`
-/

namespace A139274.P11702515148477729855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185438 n - 1 + (n : ℤ)

end

end A139274.P11702515148477729855

namespace A139274

/-- `A185438(n)-1+n` -/
def P11702515148477729855.Spec : Prop :=
  ∀ n, P11702515148477729855.a n = A139274 n

theorem P11702515148477729855.correct : P11702515148477729855.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P11702515148477729855.a, A139274.P5572148062200826074.a, A185438, A185438.P17362725107201576435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P11310056659843140183

`A108100(n)-(n+2)`
-/

namespace A139274.P11310056659843140183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108100 n - (n + 2 : ℤ)

end

end A139274.P11310056659843140183

namespace A139274

/-- `A108100(n)-(n+2)` -/
def P11310056659843140183.Spec : Prop :=
  ∀ n, P11310056659843140183.a n = A139274 n

theorem P11310056659843140183.correct : P11310056659843140183.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P11310056659843140183.a, A139274.P5572148062200826074.a, A108100, A108100.P3833022910287010970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P10542543809666700004

`2*A033991(n)+n`
-/

namespace A139274.P10542543809666700004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033991 n + (n : ℤ)

end

end A139274.P10542543809666700004

namespace A139274

/-- `2*A033991(n)+n` -/
def P10542543809666700004.Spec : Prop :=
  ∀ n, P10542543809666700004.a n = A139274 n

theorem P10542543809666700004.correct : P10542543809666700004.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P10542543809666700004.a, A139274.P5572148062200826074.a, A033991, A033991.P11968073306702908903.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P11806617488424280830

`A139273(n)+2*n`
-/

namespace A139274.P11806617488424280830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 n + (2 * n : ℤ)

end

end A139274.P11806617488424280830

namespace A139274

/-- `A139273(n)+2*n` -/
def P11806617488424280830.Spec : Prop :=
  ∀ n, P11806617488424280830.a n = A139274 n

theorem P11806617488424280830.correct : P11806617488424280830.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P11806617488424280830.a, A139274.P5572148062200826074.a, A139273, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P6574521213059071343

`2*A016742(n)-n`
-/

namespace A139274.P6574521213059071343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016742 n - (n : ℤ)

end

end A139274.P6574521213059071343

namespace A139274

/-- `2*A016742(n)-n` -/
def P6574521213059071343.Spec : Prop :=
  ∀ n, P6574521213059071343.a n = A139274 n

theorem P6574521213059071343.correct : P6574521213059071343.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P6574521213059071343.a, A139274.P5572148062200826074.a, A016742, A016742.P17821809754172938154.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P3549926442908410835

`A139275(n)-2*n`
-/

namespace A139274.P3549926442908410835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n - (2 * n : ℤ)

end

end A139274.P3549926442908410835

namespace A139274

/-- `A139275(n)-2*n` -/
def P3549926442908410835.Spec : Prop :=
  ∀ n, P3549926442908410835.a n = A139274 n

theorem P3549926442908410835.correct : P3549926442908410835.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P3549926442908410835.a, A139274.P5572148062200826074.a, A139275, A139275.P8551963079479354628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P4255144686295134923

`∑[A270704(n)]/(n+1)`
-/

namespace A139274.P4255144686295134923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270704 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A139274.P4255144686295134923

namespace A139274

/-- `∑[A270704(n)]/(n+1)` -/
def P4255144686295134923.Spec : Prop :=
  ∀ n, P4255144686295134923.a n = (A139274 n : ℚ)

end A139274

/-! ## A139274.P10325156986233295852

`(A143860(n+1)-(n+1))/2`
-/

namespace A139274.P10325156986233295852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143860 (n + 1) - (n + 1 : ℤ) : ℚ) / 2

end

end A139274.P10325156986233295852

namespace A139274

/-- `(A143860(n+1)-(n+1))/2` -/
def P10325156986233295852.Spec : Prop :=
  ∀ n, P10325156986233295852.a n = (A139274 n : ℚ)

end A139274

/-! ## A139274.P118514791535842375

`A002943(n)+A001107(n)`
-/

namespace A139274.P118514791535842375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n + A001107 n

end

end A139274.P118514791535842375

namespace A139274

/-- `A002943(n)+A001107(n)` -/
def P118514791535842375.Spec : Prop :=
  ∀ n, P118514791535842375.a n = A139274 n

theorem P118514791535842375.correct : P118514791535842375.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P118514791535842375.a, A139274.P5572148062200826074.a, A001107, A001107.P15766833630772781234.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P3180141666166554577

`A007742(n)+A002939(n)`
-/

namespace A139274.P3180141666166554577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007742 n + A002939 n

end

end A139274.P3180141666166554577

namespace A139274

/-- `A007742(n)+A002939(n)` -/
def P3180141666166554577.Spec : Prop :=
  ∀ n, P3180141666166554577.a n = A139274 n

theorem P3180141666166554577.correct : P3180141666166554577.Spec := by
  intro n
  simp only [A139274, Nat.add_sub_cancel, A139274.P3180141666166554577.a, A139274.P5572148062200826074.a, A002939, A002939.P11095602872349887610.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139274

/-! ## A139274.P12440390896980008375

`A022270(n)+A000326(n)`
-/

namespace A139274.P12440390896980008375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022270 n + A000326 n

end

end A139274.P12440390896980008375

namespace A139274

/-- `A022270(n)+A000326(n)` -/
def P12440390896980008375.Spec : Prop :=
  ∀ n, P12440390896980008375.a n = A139274 n

end A139274

/-!
# A139275: a(n) = n*(8*n+1).

The programs for A139275, the canonical program `A139275.P8551963079479354628` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139275 has offset 0).

The definition of A139275 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n+1)` (program `A139275.P8551963079479354628`, by `A139275.P8551963079479354628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139275.P14927823080830492659

`8*n²+n`
-/

namespace A139275.P14927823080830492659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + n

end

end A139275.P14927823080830492659

namespace A139275

/-- `8*n²+n` -/
def P14927823080830492659.Spec : Prop :=
  ∀ n, (P14927823080830492659.a n : ℤ) = A139275 n

theorem P14927823080830492659.correct : P14927823080830492659.Spec := by
  intro n
  simp only [A139275, Nat.add_sub_cancel, A139275.P14927823080830492659.a, A139275.P8551963079479354628.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A139275

/-! ## A139275.P8551963079479354628

`n*(8*n+1)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139275

/-- `n*(8*n+1)` -/
def P8551963079479354628.Spec : Prop :=
  ∀ n, (P8551963079479354628.a n : ℤ) = A139275 n

theorem P8551963079479354628.correct : P8551963079479354628.Spec := by
  intro n
  simp only [A139275]

end A139275

/-! ## A139275.P4828322997774519711

`∑[a(n-1)+16]` with `a(0)=0, a(1)=9`
-/

namespace A139275.P4828322997774519711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139275.P4828322997774519711

namespace A139275

/-- `∑[a(n-1)+16]` -/
def P4828322997774519711.Spec : Prop :=
  ∀ n, (P4828322997774519711.a n : ℤ) = A139275 n

end A139275

/-! ## A139275.P5156591045665355463

`∑[ogf((9x+7x^2)/(1-2x+x^2))]`
-/

namespace A139275.P5156591045665355463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139275.P5156591045665355463

namespace A139275

/-- `∑[ogf((9x+7x^2)/(1-2x+x^2))]` -/
def P5156591045665355463.Spec : Prop :=
  ∀ n, P5156591045665355463.a n = A139275 n

end A139275

/-! ## A139275.P14560987256455991730

`ogf((9x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A139275.P14560987256455991730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9, 7] [1, -3, 3, -1] n

end

end A139275.P14560987256455991730

namespace A139275

/-- `ogf((9x+7x^2)/(1-3x+3x^2-x^3))` -/
def P14560987256455991730.Spec : Prop :=
  ∀ n, P14560987256455991730.a n = A139275 n

end A139275

/-! ## A139275.P381144833503375308

`floor(A204675(n)/2)`
-/

namespace A139275.P381144833503375308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A204675 n : ℚ) / 2⌋

end

end A139275.P381144833503375308

namespace A139275

/-- `floor(A204675(n)/2)` -/
def P381144833503375308.Spec : Prop :=
  ∀ n, P381144833503375308.a n = A139275 n

end A139275

/-! ## A139275.P8363126851344697335

`∑[A113770(n)-1]`
-/

namespace A139275.P8363126851344697335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113770 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139275.P8363126851344697335

namespace A139275

/-- `∑[A113770(n)-1]` -/
def P8363126851344697335.Spec : Prop :=
  ∀ n, P8363126851344697335.a n = A139275 n

end A139275

/-! ## A139275.P17100434533665053177

`A081272(n)%A080860(n)`
-/

namespace A139275.P17100434533665053177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081272 n) (A080860 n)

end

end A139275.P17100434533665053177

namespace A139275

/-- `A081272(n)%A080860(n)` -/
def P17100434533665053177.Spec : Prop :=
  ∀ n, P17100434533665053177.a n = A139275 n

end A139275

/-! ## A139275.P8998117529020411044

`A069073(n)%A108099(n)`
-/

namespace A139275.P8998117529020411044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069073 n) (A108099 n)

end

end A139275.P8998117529020411044

namespace A139275

/-- `A069073(n)%A108099(n)` -/
def P8998117529020411044.Spec : Prop :=
  ∀ n, P8998117529020411044.a n = A139275 n

end A139275

/-! ## A139275.P13044717898465511709

`A016814(n)%A194268(n)`
-/

namespace A139275.P13044717898465511709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016814 n) (A194268 n)

end

end A139275.P13044717898465511709

namespace A139275

/-- `A016814(n)%A194268(n)` -/
def P13044717898465511709.Spec : Prop :=
  ∀ n, P13044717898465511709.a n = A139275 n

end A139275

/-! ## A139275.P3358057201565898589

`A164016(n)%A153127(n)`
-/

namespace A139275.P3358057201565898589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164016 n) (A153127 n)

end

end A139275.P3358057201565898589

namespace A139275

/-- `A164016(n)%A153127(n)` -/
def P3358057201565898589.Spec : Prop :=
  ∀ n, P3358057201565898589.a n = A139275 n

end A139275

/-! ## A139275.P11789426291802805080

`A082041(n)%A236267(n)`
-/

namespace A139275.P11789426291802805080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082041 n) (A236267 n)

end

end A139275.P11789426291802805080

namespace A139275

/-- `A082041(n)%A236267(n)` -/
def P11789426291802805080.Spec : Prop :=
  ∀ n, P11789426291802805080.a n = A139275 n

end A139275

/-! ## A139275.P1451384477078801710

`A381196(n)%A033577(n)`
-/

namespace A139275.P1451384477078801710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A381196 n) (A033577 n)

end

end A139275.P1451384477078801710

namespace A139275

/-- `A381196(n)%A033577(n)` -/
def P1451384477078801710.Spec : Prop :=
  ∀ n, P1451384477078801710.a n = A139275 n

end A139275

/-! ## A139275.P878060879200173861

`A322675(n)%A108099(n)`
-/

namespace A139275.P878060879200173861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322675 n) (A108099 n)

end

end A139275.P878060879200173861

namespace A139275

/-- `A322675(n)%A108099(n)` -/
def P878060879200173861.Spec : Prop :=
  ∀ n, P878060879200173861.a n = A139275 n

end A139275

/-! ## A139275.P932385532439931117

`lcm(A017077(n), A038608(n))`
-/

namespace A139275.P932385532439931117
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A017077 n) (A038608 n)

end

end A139275.P932385532439931117

namespace A139275

/-- `lcm(A017077(n), A038608(n))` -/
def P932385532439931117.Spec : Prop :=
  ∀ n, (P932385532439931117.a n : ℤ) = A139275 n

end A139275

/-! ## A139275.P18411224561807361757

`A033573(n)%A069133(n+1)`
-/

namespace A139275.P18411224561807361757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033573 n) (A069133 (n + 1))

end

end A139275.P18411224561807361757

namespace A139275

/-- `A033573(n)%A069133(n+1)` -/
def P18411224561807361757.Spec : Prop :=
  ∀ n, P18411224561807361757.a n = A139275 n

end A139275

/-! ## A139275.P12924633261488892771

`A143839(n+1)%A014634(n)`
-/

namespace A139275.P12924633261488892771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143839 (n + 1)) (A014634 n)

end

end A139275.P12924633261488892771

namespace A139275

/-- `A143839(n+1)%A014634(n)` -/
def P12924633261488892771.Spec : Prop :=
  ∀ n, P12924633261488892771.a n = A139275 n

end A139275

/-! ## A139275.P5105169187801427669

`A160174(n+1)%A082041(n)`
-/

namespace A139275.P5105169187801427669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160174 (n + 1)) (A082041 n)

end

end A139275.P5105169187801427669

namespace A139275

/-- `A160174(n+1)%A082041(n)` -/
def P5105169187801427669.Spec : Prop :=
  ∀ n, P5105169187801427669.a n = A139275 n

end A139275

/-! ## A139275.P10389778952325915649

`A143838(n+1)%A102083(n)`
-/

namespace A139275.P10389778952325915649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143838 (n + 1)) (A102083 n)

end

end A139275.P10389778952325915649

namespace A139275

/-- `A143838(n+1)%A102083(n)` -/
def P10389778952325915649.Spec : Prop :=
  ∀ n, P10389778952325915649.a n = A139275 n

end A139275

/-! ## A139275.P7041711003585159337

`A158547(n)%A143860(n+1)`
-/

namespace A139275.P7041711003585159337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158547 n) (A143860 (n + 1))

end

end A139275.P7041711003585159337

namespace A139275

/-- `A158547(n)%A143860(n+1)` -/
def P7041711003585159337.Spec : Prop :=
  ∀ n, P7041711003585159337.a n = A139275 n

end A139275

/-!
# A139276: a(n) = n*(8*n+3).

The programs for A139276, the canonical program `A139276.P12504943694030977300` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139276 has offset 0).

The definition of A139276 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n+3)` (program `A139276.P12504943694030977300`, by `A139276.P12504943694030977300.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139276.P12504943694030977300

`n*(8*n+3)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139276

/-- `n*(8*n+3)` -/
def P12504943694030977300.Spec : Prop :=
  ∀ n, (P12504943694030977300.a n : ℤ) = A139276 n

theorem P12504943694030977300.correct : P12504943694030977300.Spec := by
  intro n
  simp only [A139276]

end A139276

/-! ## A139276.P10309850148005466228

`∑[a(n-1)+16]` with `a(0)=0, a(1)=11`
-/

namespace A139276.P10309850148005466228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 11] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139276.P10309850148005466228

namespace A139276

/-- `∑[a(n-1)+16]` -/
def P10309850148005466228.Spec : Prop :=
  ∀ n, (P10309850148005466228.a n : ℤ) = A139276 n

end A139276

/-! ## A139276.P12893795919024887242

`4*C(Δ[n²], 2)-n`
-/

namespace A139276.P12893795919024887242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

end

end A139276.P12893795919024887242

namespace A139276

/-- `4*C(Δ[n²], 2)-n` -/
def P12893795919024887242.Spec : Prop :=
  ∀ n, P12893795919024887242.a n = A139276 n

end A139276

/-! ## A139276.P1838671525343642270

`∑[ogf((11x+5x^2)/(1-2x+x^2))]`
-/

namespace A139276.P1838671525343642270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 11, 5] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139276.P1838671525343642270

namespace A139276

/-- `∑[ogf((11x+5x^2)/(1-2x+x^2))]` -/
def P1838671525343642270.Spec : Prop :=
  ∀ n, P1838671525343642270.a n = A139276 n

end A139276

/-! ## A139276.P469151867980078030

`5-∑[a(n-1)-16]` with `a(0)=5`
-/

namespace A139276.P469151867980078030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139276.P469151867980078030

namespace A139276

/-- `5-∑[a(n-1)-16]` -/
def P469151867980078030.Spec : Prop :=
  ∀ n, P469151867980078030.a n = A139276 n

end A139276

/-! ## A139276.P3405272705017643776

`n*record[lcm(4, 1-n)]-n`
-/

namespace A139276.P3405272705017643776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A139276.P3405272705017643776

namespace A139276

/-- `n*record[lcm(4, 1-n)]-n` -/
def P3405272705017643776.Spec : Prop :=
  ∀ n, P3405272705017643776.a n = A139276 n

end A139276

/-! ## A139276.P1329908102065903566

`16*n-(5-a(n-1))` with `a(0)=0`
-/

namespace A139276.P1329908102065903566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (16 * n : ℤ) - (5 - a (n - 1))

end

end A139276.P1329908102065903566

namespace A139276

/-- `16*n-(5-a(n-1))` -/
def P1329908102065903566.Spec : Prop :=
  ∀ n, P1329908102065903566.a n = A139276 n

theorem P1329908102065903566.correct : P1329908102065903566.Spec := by
  intro n
  induction n with
  | zero => simp [A139276, A139276.P1329908102065903566.a, A139276.P12504943694030977300.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139276, Nat.add_sub_cancel, A139276.P1329908102065903566.a, A139276.P12504943694030977300.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139276

/-! ## A139276.P12698239546453478756

`lcm(n, n*(1-Δ[(2*n)²]))`
-/

namespace A139276.P12698239546453478756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))))

end

end A139276.P12698239546453478756

namespace A139276

/-- `lcm(n, n*(1-Δ[(2*n)²]))` -/
def P12698239546453478756.Spec : Prop :=
  ∀ n, (P12698239546453478756.a n : ℤ) = A139276 n

end A139276

/-! ## A139276.P12741598142776590625

`Δ[C(4*n, 3)/4]-1-n`
-/

namespace A139276.P12741598142776590625
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1 - (n : ℚ)

end

end A139276.P12741598142776590625

namespace A139276

/-- `Δ[C(4*n, 3)/4]-1-n` -/
def P12741598142776590625.Spec : Prop :=
  ∀ n, P12741598142776590625.a n = (A139276 n : ℚ)

theorem P12741598142776590625.correct : P12741598142776590625.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P12741598142776590625.f1, A139276.P12741598142776590625.a, A139276.P12504943694030977300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139276

/-! ## A139276.P14896175010685156504

`2*n*record[2*xor(1, n)]-n`
-/

namespace A139276.P14896175010685156504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (n : ℤ)

end

end A139276.P14896175010685156504

namespace A139276

/-- `2*n*record[2*xor(1, n)]-n` -/
def P14896175010685156504.Spec : Prop :=
  ∀ n, P14896175010685156504.a n = A139276 n

end A139276

/-! ## A139276.P14022526534711533377

`C(eq[n-1, and(n, n+1)], 2)+n`
-/

namespace A139276.P14022526534711533377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n) 2 + n

end

end A139276.P14022526534711533377

namespace A139276

/-- `C(eq[n-1, and(n, n+1)], 2)+n` -/
def P14022526534711533377.Spec : Prop :=
  ∀ n, (P14022526534711533377.a n : ℤ) = A139276 n

end A139276

/-! ## A139276.P9213345060365040517

`n*Δ[(2*n)²]-gcd(n, 2*n)`
-/

namespace A139276.P9213345060365040517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (Nat.gcd n (2 * n) : ℤ)

end

end A139276.P9213345060365040517

namespace A139276

/-- `n*Δ[(2*n)²]-gcd(n, 2*n)` -/
def P9213345060365040517.Spec : Prop :=
  ∀ n, P9213345060365040517.a n = A139276 n

theorem P9213345060365040517.correct : P9213345060365040517.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P9213345060365040517.f1, A139276.P9213345060365040517.a, A139276.P12504943694030977300.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A139276

/-! ## A139276.P15746478668361202803

`A236267(n)-1`
-/

namespace A139276.P15746478668361202803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236267 n - 1

end

end A139276.P15746478668361202803

namespace A139276

/-- `A236267(n)-1` -/
def P15746478668361202803.Spec : Prop :=
  ∀ n, P15746478668361202803.a n = A139276 n

theorem P15746478668361202803.correct : P15746478668361202803.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P15746478668361202803.a, A139276.P12504943694030977300.a, A236267, A236267.P9314982073022898083.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139276

/-! ## A139276.P10507302749606592003

`A033585(n)+n`
-/

namespace A139276.P10507302749606592003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + (n : ℤ)

end

end A139276.P10507302749606592003

namespace A139276

/-- `A033585(n)+n` -/
def P10507302749606592003.Spec : Prop :=
  ∀ n, P10507302749606592003.a n = A139276 n

theorem P10507302749606592003.correct : P10507302749606592003.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P10507302749606592003.a, A139276.P12504943694030977300.a, A033585, A033585.P9867637388797284521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139276

/-! ## A139276.P13316327455962358277

`A033586(n)-n`
-/

namespace A139276.P13316327455962358277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n - (n : ℤ)

end

end A139276.P13316327455962358277

namespace A139276

/-- `A033586(n)-n` -/
def P13316327455962358277.Spec : Prop :=
  ∀ n, P13316327455962358277.a n = A139276 n

theorem P13316327455962358277.correct : P13316327455962358277.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P13316327455962358277.a, A139276.P12504943694030977300.a, A033586, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139276

/-! ## A139276.P4633594780453868640

`A045945(n)-n²`
-/

namespace A139276.P4633594780453868640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045945 n - (n ^ 2 : ℤ)

end

end A139276.P4633594780453868640

namespace A139276

/-- `A045945(n)-n²` -/
def P4633594780453868640.Spec : Prop :=
  ∀ n, P4633594780453868640.a n = A139276 n

theorem P4633594780453868640.correct : P4633594780453868640.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P4633594780453868640.a, A139276.P12504943694030977300.a, A045945, A045945.P14001929662270589613.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139276

/-! ## A139276.P4656925587401425346

`A033566(n)+1+n`
-/

namespace A139276.P4656925587401425346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033566 n + 1 + (n : ℤ)

end

end A139276.P4656925587401425346

namespace A139276

/-- `A033566(n)+1+n` -/
def P4656925587401425346.Spec : Prop :=
  ∀ n, P4656925587401425346.a n = A139276 n

theorem P4656925587401425346.correct : P4656925587401425346.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P4656925587401425346.a, A139276.P12504943694030977300.a, A033566, A033566.P726618908899133796.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139276

/-! ## A139276.P6925698205007759335

`A102083(n)-(n+1)`
-/

namespace A139276.P6925698205007759335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n - (n + 1 : ℤ)

end

end A139276.P6925698205007759335

namespace A139276

/-- `A102083(n)-(n+1)` -/
def P6925698205007759335.Spec : Prop :=
  ∀ n, P6925698205007759335.a n = A139276 n

theorem P6925698205007759335.correct : P6925698205007759335.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P6925698205007759335.a, A139276.P12504943694030977300.a, A102083, A102083.P4890678275567249568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139276

/-! ## A139276.P13512841585974356250

`A188135(n)-1+n`
-/

namespace A139276.P13512841585974356250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188135 n - 1 + (n : ℤ)

end

end A139276.P13512841585974356250

namespace A139276

/-- `A188135(n)-1+n` -/
def P13512841585974356250.Spec : Prop :=
  ∀ n, P13512841585974356250.a n = A139276 n

theorem P13512841585974356250.correct : P13512841585974356250.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P13512841585974356250.a, A139276.P12504943694030977300.a, A188135, A188135.P13478576752506582860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139276

/-! ## A139276.P12893702240758341569

`2*A007742(n)+n`
-/

namespace A139276.P12893702240758341569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007742 n + (n : ℤ)

end

end A139276.P12893702240758341569

namespace A139276

/-- `2*A007742(n)+n` -/
def P12893702240758341569.Spec : Prop :=
  ∀ n, P12893702240758341569.a n = A139276 n

theorem P12893702240758341569.correct : P12893702240758341569.Spec := by
  intro n
  simp only [A139276, Nat.add_sub_cancel, A139276.P12893702240758341569.a, A139276.P12504943694030977300.a, A007742, A007742.P14173437786459717136.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139276

/-!
# A139277: a(n) = n*(8*n+5).

The programs for A139277, the canonical program `A139277.P7712727305449482595` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139277 has offset 0).

The definition of A139277 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n+5)` (program `A139277.P7712727305449482595`, by `A139277.P7712727305449482595.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139277.P7712727305449482595

`n*(8*n+5)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139277

/-- `n*(8*n+5)` -/
def P7712727305449482595.Spec : Prop :=
  ∀ n, (P7712727305449482595.a n : ℤ) = A139277 n

theorem P7712727305449482595.correct : P7712727305449482595.Spec := by
  intro n
  simp only [A139277]

end A139277

/-! ## A139277.P3501398489049219644

`∑[a(n-1)+16]` with `a(0)=0, a(1)=13`
-/

namespace A139277.P3501398489049219644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 13] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139277.P3501398489049219644

namespace A139277

/-- `∑[a(n-1)+16]` -/
def P3501398489049219644.Spec : Prop :=
  ∀ n, (P3501398489049219644.a n : ℤ) = A139277 n

end A139277

/-! ## A139277.P2405392974937524890

`n*or(6, 8*n)-n`
-/

namespace A139277.P2405392974937524890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.lor 6 (8 * n) : ℤ) - (n : ℤ)

end

end A139277.P2405392974937524890

namespace A139277

/-- `n*or(6, 8*n)-n` -/
def P2405392974937524890.Spec : Prop :=
  ∀ n, P2405392974937524890.a n = A139277 n

end A139277

/-! ## A139277.P1286484858044707921

`n*xor(6, 8*n)-n`
-/

namespace A139277.P1286484858044707921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.xor 6 (8 * n) : ℤ) - (n : ℤ)

end

end A139277.P1286484858044707921

namespace A139277

/-- `n*xor(6, 8*n)-n` -/
def P1286484858044707921.Spec : Prop :=
  ∀ n, P1286484858044707921.a n = A139277 n

end A139277

/-! ## A139277.P3749788109607693299

`∑[ogf((13x+3x^2)/(1-2x+x^2))]`
-/

namespace A139277.P3749788109607693299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 13, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139277.P3749788109607693299

namespace A139277

/-- `∑[ogf((13x+3x^2)/(1-2x+x^2))]` -/
def P3749788109607693299.Spec : Prop :=
  ∀ n, P3749788109607693299.a n = A139277 n

end A139277

/-! ## A139277.P4702598672351726088

`3-∑[a(n-1)-16]` with `a(0)=3`
-/

namespace A139277.P4702598672351726088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139277.P4702598672351726088

namespace A139277

/-- `3-∑[a(n-1)-16]` -/
def P4702598672351726088.Spec : Prop :=
  ∀ n, P4702598672351726088.a n = A139277 n

end A139277

/-! ## A139277.P1659869513130733144

`16*n-(3-a(n-1))` with `a(0)=0`
-/

namespace A139277.P1659869513130733144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (16 * n : ℤ) - (3 - a (n - 1))

end

end A139277.P1659869513130733144

namespace A139277

/-- `16*n-(3-a(n-1))` -/
def P1659869513130733144.Spec : Prop :=
  ∀ n, P1659869513130733144.a n = A139277 n

theorem P1659869513130733144.correct : P1659869513130733144.Spec := by
  intro n
  induction n with
  | zero => simp [A139277, A139277.P1659869513130733144.a, A139277.P7712727305449482595.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139277, Nat.add_sub_cancel, A139277.P1659869513130733144.a, A139277.P7712727305449482595.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139277

/-! ## A139277.P294711947502385070

`C(lcm(2, Δ[n²]), 2)-(n+1)`
-/

namespace A139277.P294711947502385070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (Int.lcm 2 ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) 2 : ℤ) - (n + 1 : ℤ)

end

end A139277.P294711947502385070

namespace A139277

/-- `C(lcm(2, Δ[n²]), 2)-(n+1)` -/
def P294711947502385070.Spec : Prop :=
  ∀ n, P294711947502385070.a n = A139277 n

end A139277

/-! ## A139277.P16940111726416773994

`Δ[C(4*n, 3)/4]-(1-n)`
-/

namespace A139277.P16940111726416773994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) 3 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (1 - (n : ℤ) : ℚ)

end

end A139277.P16940111726416773994

namespace A139277

/-- `Δ[C(4*n, 3)/4]-(1-n)` -/
def P16940111726416773994.Spec : Prop :=
  ∀ n, P16940111726416773994.a n = (A139277 n : ℚ)

theorem P16940111726416773994.correct : P16940111726416773994.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P16940111726416773994.f1, A139277.P16940111726416773994.a, A139277.P7712727305449482595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P7456831686937676315

`2*n*eq[n-3, and(n, n-3)]-n`
-/

namespace A139277.P7456831686937676315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n * SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - (n : ℤ)

end

end A139277.P7456831686937676315

namespace A139277

/-- `2*n*eq[n-3, and(n, n-3)]-n` -/
def P7456831686937676315.Spec : Prop :=
  ∀ n, P7456831686937676315.a n = A139277 n

end A139277

/-! ## A139277.P7205880573070065081

`A033586(n)+n`
-/

namespace A139277.P7205880573070065081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + (n : ℤ)

end

end A139277.P7205880573070065081

namespace A139277

/-- `A033586(n)+n` -/
def P7205880573070065081.Spec : Prop :=
  ∀ n, P7205880573070065081.a n = A139277 n

theorem P7205880573070065081.correct : P7205880573070065081.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P7205880573070065081.a, A139277.P7712727305449482595.a, A033586, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P1642853397595450335

`A033587(n)-n`
-/

namespace A139277.P1642853397595450335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033587 n - (n : ℤ)

end

end A139277.P1642853397595450335

namespace A139277

/-- `A033587(n)-n` -/
def P1642853397595450335.Spec : Prop :=
  ∀ n, P1642853397595450335.a n = A139277 n

theorem P1642853397595450335.correct : P1642853397595450335.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P1642853397595450335.a, A139277.P7712727305449482595.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P6210697823454364368

`(A028993(n)-1)/2`
-/

namespace A139277.P6210697823454364368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028993 n - 1 : ℚ) / 2

end

end A139277.P6210697823454364368

namespace A139277

/-- `(A028993(n)-1)/2` -/
def P6210697823454364368.Spec : Prop :=
  ∀ n, P6210697823454364368.a n = (A139277 n : ℚ)

theorem P6210697823454364368.correct : P6210697823454364368.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P6210697823454364368.a, A139277.P7712727305449482595.a, A028993, A028993.P16249693597712452027.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P4435419215721059712

`A014634(n)-(n+1)`
-/

namespace A139277.P4435419215721059712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n - (n + 1 : ℤ)

end

end A139277.P4435419215721059712

namespace A139277

/-- `A014634(n)-(n+1)` -/
def P4435419215721059712.Spec : Prop :=
  ∀ n, P4435419215721059712.a n = A139277 n

theorem P4435419215721059712.correct : P4435419215721059712.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P4435419215721059712.a, A139277.P7712727305449482595.a, A014634, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P9686932515964259305

`A102083(n)-1+n`
-/

namespace A139277.P9686932515964259305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102083 n - 1 + (n : ℤ)

end

end A139277.P9686932515964259305

namespace A139277

/-- `A102083(n)-1+n` -/
def P9686932515964259305.Spec : Prop :=
  ∀ n, P9686932515964259305.a n = A139277 n

theorem P9686932515964259305.correct : P9686932515964259305.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P9686932515964259305.a, A139277.P7712727305449482595.a, A102083, A102083.P4890678275567249568.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P4510693194233773420

`2*A002943(n)+n`
-/

namespace A139277.P4510693194233773420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002943 n + (n : ℤ)

end

end A139277.P4510693194233773420

namespace A139277

/-- `2*A002943(n)+n` -/
def P4510693194233773420.Spec : Prop :=
  ∀ n, P4510693194233773420.a n = A139277 n

theorem P4510693194233773420.correct : P4510693194233773420.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P4510693194233773420.a, A139277.P7712727305449482595.a, A002943, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P9971056030825444732

`A139276(n)+2*n`
-/

namespace A139277.P9971056030825444732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139276 n + (2 * n : ℤ)

end

end A139277.P9971056030825444732

namespace A139277

/-- `A139276(n)+2*n` -/
def P9971056030825444732.Spec : Prop :=
  ∀ n, P9971056030825444732.a n = A139277 n

theorem P9971056030825444732.correct : P9971056030825444732.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P9971056030825444732.a, A139277.P7712727305449482595.a, A139276, A139276.P12504943694030977300.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P7979886562327670979

`A033585(n)+3*n`
-/

namespace A139277.P7979886562327670979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033585 n + (3 * n : ℤ)

end

end A139277.P7979886562327670979

namespace A139277

/-- `A033585(n)+3*n` -/
def P7979886562327670979.Spec : Prop :=
  ∀ n, P7979886562327670979.a n = A139277 n

theorem P7979886562327670979.correct : P7979886562327670979.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P7979886562327670979.a, A139277.P7712727305449482595.a, A033585, A033585.P9867637388797284521.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P9082152261000547369

`2*A033954(n)-n`
-/

namespace A139277.P9082152261000547369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033954 n - (n : ℤ)

end

end A139277.P9082152261000547369

namespace A139277

/-- `2*A033954(n)-n` -/
def P9082152261000547369.Spec : Prop :=
  ∀ n, P9082152261000547369.a n = A139277 n

theorem P9082152261000547369.correct : P9082152261000547369.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P9082152261000547369.a, A139277.P7712727305449482595.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-! ## A139277.P17621690063434852275

`A139278(n)-2*n`
-/

namespace A139277.P17621690063434852275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139278 n - (2 * n : ℤ)

end

end A139277.P17621690063434852275

namespace A139277

/-- `A139278(n)-2*n` -/
def P17621690063434852275.Spec : Prop :=
  ∀ n, P17621690063434852275.a n = A139277 n

theorem P17621690063434852275.correct : P17621690063434852275.Spec := by
  intro n
  simp only [A139277, Nat.add_sub_cancel, A139277.P17621690063434852275.a, A139277.P7712727305449482595.a, A139278, A139278.P6728910123385272055.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139277

/-!
# A139278: a(n) = n*(8*n+7).

The programs for A139278, the canonical program `A139278.P6728910123385272055` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139278 has offset 0).

The definition of A139278 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(8*n+7)` (program `A139278.P6728910123385272055`, by `A139278.P6728910123385272055.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139278.P6728910123385272055

`n*(8*n+7)`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139278

/-- `n*(8*n+7)` -/
def P6728910123385272055.Spec : Prop :=
  ∀ n, (P6728910123385272055.a n : ℤ) = A139278 n

theorem P6728910123385272055.correct : P6728910123385272055.Spec := by
  intro n
  simp only [A139278]

end A139278

/-! ## A139278.P16577599619152469572

`∑[a(n-1)+16]` with `a(0)=0, a(1)=15`
-/

namespace A139278.P16577599619152469572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 15] fun n f1 =>
  f1 (n - 1) + 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139278.P16577599619152469572

namespace A139278

/-- `∑[a(n-1)+16]` -/
def P16577599619152469572.Spec : Prop :=
  ∀ n, (P16577599619152469572.a n : ℤ) = A139278 n

end A139278

/-! ## A139278.P7701330667205433657

`∑[ogf((15x+x^2)/(1-2x+x^2))]`
-/

namespace A139278.P7701330667205433657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 15, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139278.P7701330667205433657

namespace A139278

/-- `∑[ogf((15x+x^2)/(1-2x+x^2))]` -/
def P7701330667205433657.Spec : Prop :=
  ∀ n, P7701330667205433657.a n = A139278 n

end A139278

/-! ## A139278.P11426102855847421504

`lcm(2, Δ[n²]²)-(n+2)`
-/

namespace A139278.P11426102855847421504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) : ℤ) - (n + 2 : ℤ)

end

end A139278.P11426102855847421504

namespace A139278

/-- `lcm(2, Δ[n²]²)-(n+2)` -/
def P11426102855847421504.Spec : Prop :=
  ∀ n, P11426102855847421504.a n = A139278 n

end A139278

/-! ## A139278.P7966838911423939125

`abs(∑[a(n-1)-16]-1)` with `a(0)=1`
-/

namespace A139278.P7966838911423939125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 16

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A139278.P7966838911423939125

namespace A139278

/-- `abs(∑[a(n-1)-16]-1)` -/
def P7966838911423939125.Spec : Prop :=
  ∀ n, P7966838911423939125.a n = A139278 n

end A139278

/-! ## A139278.P9293624849067759599

`4*4*n-(1-a(n-1))` with `a(0)=0`
-/

namespace A139278.P9293624849067759599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (4 * (4 * n) : ℤ) - (1 - a (n - 1))

end

end A139278.P9293624849067759599

namespace A139278

/-- `4*4*n-(1-a(n-1))` -/
def P9293624849067759599.Spec : Prop :=
  ∀ n, P9293624849067759599.a n = A139278 n

theorem P9293624849067759599.correct : P9293624849067759599.Spec := by
  intro n
  induction n with
  | zero => simp [A139278, A139278.P9293624849067759599.a, A139278.P6728910123385272055.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139278, Nat.add_sub_cancel, A139278.P9293624849067759599.a, A139278.P6728910123385272055.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139278

/-! ## A139278.P3914539030800851094

`record[lcm(n-1, 2*n)-2*n]-n`
-/

namespace A139278.P3914539030800851094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n : ℤ) - 1) (2 * n : ℤ) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A139278.P3914539030800851094

namespace A139278

/-- `record[lcm(n-1, 2*n)-2*n]-n` -/
def P3914539030800851094.Spec : Prop :=
  ∀ n, P3914539030800851094.a n = A139278 n

end A139278

/-! ## A139278.P4264892205506237783

`A194268(n)-1`
-/

namespace A139278.P4264892205506237783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194268 n - 1

end

end A139278.P4264892205506237783

namespace A139278

/-- `A194268(n)-1` -/
def P4264892205506237783.Spec : Prop :=
  ∀ n, P4264892205506237783.a n = A139278 n

theorem P4264892205506237783.correct : P4264892205506237783.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P4264892205506237783.a, A139278.P6728910123385272055.a, A194268, A194268.P13709870917259288745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P18100826393070495615

`A033587(n)+n`
-/

namespace A139278.P18100826393070495615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033587 n + (n : ℤ)

end

end A139278.P18100826393070495615

namespace A139278

/-- `A033587(n)+n` -/
def P18100826393070495615.Spec : Prop :=
  ∀ n, P18100826393070495615.a n = A139278 n

theorem P18100826393070495615.correct : P18100826393070495615.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P18100826393070495615.a, A139278.P6728910123385272055.a, A033587, A033587.P16272004082571904291.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P4994583651717618968

`A035008(n)-n`
-/

namespace A139278.P4994583651717618968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035008 n - (n : ℤ)

end

end A139278.P4994583651717618968

namespace A139278

/-- `A035008(n)-n` -/
def P4994583651717618968.Spec : Prop :=
  ∀ n, P4994583651717618968.a n = A139278 n

theorem P4994583651717618968.correct : P4994583651717618968.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P4994583651717618968.a, A139278.P6728910123385272055.a, A035008, A035008.P9220570800855289153.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P4086939759365783475

`A014634(n)-1+n`
-/

namespace A139278.P4086939759365783475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014634 n - 1 + (n : ℤ)

end

end A139278.P4086939759365783475

namespace A139278

/-- `A014634(n)-1+n` -/
def P4086939759365783475.Spec : Prop :=
  ∀ n, P4086939759365783475.a n = A139278 n

theorem P4086939759365783475.correct : P4086939759365783475.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P4086939759365783475.a, A139278.P6728910123385272055.a, A014634, A014634.P13834563675282914036.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P4843215425872104005

`2*A033954(n)+n`
-/

namespace A139278.P4843215425872104005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033954 n + (n : ℤ)

end

end A139278.P4843215425872104005

namespace A139278

/-- `2*A033954(n)+n` -/
def P4843215425872104005.Spec : Prop :=
  ∀ n, P4843215425872104005.a n = A139278 n

theorem P4843215425872104005.correct : P4843215425872104005.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P4843215425872104005.a, A139278.P6728910123385272055.a, A033954, A033954.P6740312584908585872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P5320224275277454676

`A139277(n)+2*n`
-/

namespace A139278.P5320224275277454676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139277 n + (2 * n : ℤ)

end

end A139278.P5320224275277454676

namespace A139278

/-- `A139277(n)+2*n` -/
def P5320224275277454676.Spec : Prop :=
  ∀ n, P5320224275277454676.a n = A139278 n

theorem P5320224275277454676.correct : P5320224275277454676.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P5320224275277454676.a, A139278.P6728910123385272055.a, A139277, A139277.P7712727305449482595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P2599254911165450262

`A033586(n)+3*n`
-/

namespace A139278.P2599254911165450262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033586 n + (3 * n : ℤ)

end

end A139278.P2599254911165450262

namespace A139278

/-- `A033586(n)+3*n` -/
def P2599254911165450262.Spec : Prop :=
  ∀ n, P2599254911165450262.a n = A139278 n

theorem P2599254911165450262.correct : P2599254911165450262.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P2599254911165450262.a, A139278.P6728910123385272055.a, A033586, A033586.P18185911393067431697.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P8639325222587552332

`2*A033996(n)-n`
-/

namespace A139278.P8639325222587552332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033996 n - (n : ℤ)

end

end A139278.P8639325222587552332

namespace A139278

/-- `2*A033996(n)-n` -/
def P8639325222587552332.Spec : Prop :=
  ∀ n, P8639325222587552332.a n = A139278 n

theorem P8639325222587552332.correct : P8639325222587552332.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P8639325222587552332.a, A139278.P6728910123385272055.a, A033996, A033996.P3972738276246908348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P17651578050902116440

`A108099(n)-(n+4)`
-/

namespace A139278.P17651578050902116440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108099 n - (n + 4 : ℤ)

end

end A139278.P17651578050902116440

namespace A139278

/-- `A108099(n)-(n+4)` -/
def P17651578050902116440.Spec : Prop :=
  ∀ n, P17651578050902116440.a n = A139278 n

theorem P17651578050902116440.correct : P17651578050902116440.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P17651578050902116440.a, A139278.P6728910123385272055.a, A108099, A108099.P5915517825114269260.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P17462931180511435233

`n*A102603(n)/3`
-/

namespace A139278.P17462931180511435233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A102603 n : ℚ) / 3

end

end A139278.P17462931180511435233

namespace A139278

/-- `n*A102603(n)/3` -/
def P17462931180511435233.Spec : Prop :=
  ∀ n, P17462931180511435233.a n = (A139278 n : ℚ)

theorem P17462931180511435233.correct : P17462931180511435233.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P17462931180511435233.a, A139278.P6728910123385272055.a, A102603, A102603.P3247987965860974134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-! ## A139278.P16364430542886797732

`A069129(n+1)-(n+1)`
-/

namespace A139278.P16364430542886797732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069129 (n + 1) - (n + 1 : ℤ)

end

end A139278.P16364430542886797732

namespace A139278

/-- `A069129(n+1)-(n+1)` -/
def P16364430542886797732.Spec : Prop :=
  ∀ n, P16364430542886797732.a n = A139278 n

end A139278

/-! ## A139278.P3042809365045230715

`A077591(n+1)-(n+2)`
-/

namespace A139278.P3042809365045230715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077591 (n + 1) - (n + 2 : ℤ)

end

end A139278.P3042809365045230715

namespace A139278

/-- `A077591(n+1)-(n+2)` -/
def P3042809365045230715.Spec : Prop :=
  ∀ n, P3042809365045230715.a n = A139278 n

end A139278

/-! ## A139278.P10633852069130043920

`A014209(n)+A005892(n)`
-/

namespace A139278.P10633852069130043920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014209 n + A005892 n

end

end A139278.P10633852069130043920

namespace A139278

/-- `A014209(n)+A005892(n)` -/
def P10633852069130043920.Spec : Prop :=
  ∀ n, P10633852069130043920.a n = A139278 n

theorem P10633852069130043920.correct : P10633852069130043920.Spec := by
  intro n
  simp only [A139278, Nat.add_sub_cancel, A139278.P10633852069130043920.a, A139278.P6728910123385272055.a, A005892, A005892.P14421385829800175738.a, A014209, A014209.P8391054817103649375.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139278

/-!
# A139279: a(n) = 40*n - 32.

The programs for A139279, the canonical program `A139279.P12774484099064457542` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139279 has offset 1).

The definition of A139279 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `40*(n+1)-32` (program `A139279.P12774484099064457542`, by `A139279.P12774484099064457542.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139279.P8599534744943881092

`a(n-1)+40` with `a(0)=8`
-/

namespace A139279.P8599534744943881092
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [8] fun n a =>
  a (n - 1) + 40

end

end A139279.P8599534744943881092

namespace A139279

/-- `a(n-1)+40` -/
def P8599534744943881092.Spec : Prop :=
  ∀ n, (P8599534744943881092.a n : ℤ) = A139279 (n + 1)

theorem P8599534744943881092.correct : P8599534744943881092.Spec := by
  intro n
  induction n with
  | zero => simp [A139279, A139279.P8599534744943881092.a, A139279.P12774484099064457542.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139279, Nat.add_sub_cancel, A139279.P8599534744943881092.a, A139279.P12774484099064457542.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139279

/-! ## A139279.P12774484099064457542

`40*(n+1)-32`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139279

/-- `40*(n+1)-32` -/
def P12774484099064457542.Spec : Prop :=
  ∀ n, P12774484099064457542.a n = A139279 (n + 1)

theorem P12774484099064457542.correct : P12774484099064457542.Spec := by
  intro n
  simp only [A139279, Nat.add_sub_cancel]

end A139279

/-!
# A139280: a(n) = 90*n - 81.

The programs for A139280, the canonical program `A139280.P15838564291208081942` is in `Seq.B000.C020`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139280 has offset 1).

The definition of A139280 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `90*(n+1)-81` (program `A139280.P15838564291208081942`, by `A139280.P15838564291208081942.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139280.P3937827100822558467

`a(n-1)+90` with `a(0)=9`
-/

namespace A139280.P3937827100822558467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + 90

end

end A139280.P3937827100822558467

namespace A139280

/-- `a(n-1)+90` -/
def P3937827100822558467.Spec : Prop :=
  ∀ n, (P3937827100822558467.a n : ℤ) = A139280 (n + 1)

theorem P3937827100822558467.correct : P3937827100822558467.Spec := by
  intro n
  induction n with
  | zero => simp [A139280, A139280.P3937827100822558467.a, A139280.P15838564291208081942.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A139280, Nat.add_sub_cancel, A139280.P3937827100822558467.a, A139280.P15838564291208081942.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A139280

/-! ## A139280.P15838564291208081942

`90*(n+1)-81`

The canonical program, it is in `Seq.B000.C020`.
-/

namespace A139280

/-- `90*(n+1)-81` -/
def P15838564291208081942.Spec : Prop :=
  ∀ n, P15838564291208081942.a n = A139280 (n + 1)

theorem P15838564291208081942.correct : P15838564291208081942.Spec := by
  intro n
  simp only [A139280, Nat.add_sub_cancel]

end A139280

/-!
# A139281: If all digits are the same mod 3, stop; otherwise write down the number formed by the 1 mod 3 digits and the number formed by the 2 mod 3 digits and the number formed by the 3 mod 3 digits and multiply them; repeat.

The programs for A139281, there is no canonical definition to state claims against.
-/

/-! ## A139281.P1186867722099229052

`n%A352240(A275069(3*n))`
-/

namespace A139281.P1186867722099229052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A352240 (A275069 (3 * n)).toNat)

end

end A139281.P1186867722099229052

/-!
# A139284: Analog of A121805, but starting with 2.

The programs for A139284, there is no canonical definition to state claims against.
-/

/-! ## A139284.P17439820797433146564

`A367338(a(n-1))` with `a(0)=2`
-/

namespace A139284.P17439820797433146564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A367338 (a (n - 1)).toNat

end

end A139284.P17439820797433146564

/-! ## A139284.P12179913397875495766

`eq[2, A367366(n+1)]+1`
-/

namespace A139284.P12179913397875495766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139284.P12179913397875495766

/-! ## A139284.P6153896883613955525

`eq[2, A367366(A000007(n)+n)]`
-/

namespace A139284.P6153896883613955525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367366 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139284.P6153896883613955525

/-!
# A139285: Smallest nontrivial number m that when expressed in base n and then interpreted in base 10, is a multiple of the original number.

The programs for A139285, there is no canonical definition to state claims against.
-/

/-! ## A139285.P6178363939874958896

`xor(n+2, A178095(A014137(n)))`
-/

namespace A139285.P6178363939874958896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (A178095 (A014137 n).toNat)

end

end A139285.P6178363939874958896

/-! ## A139285.P9692554922005324125

`A132776(A000108(n)*A374724(n))`
-/

namespace A139285.P9692554922005324125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132776 (A000108 n * A374724 n).toNat

end

end A139285.P9692554922005324125

/-!
# A139286: a(n) = 2^(2*prime(n) - 1).

The programs for A139286, there is no canonical definition to state claims against.
-/

/-! ## A139286.P14257354128103763649

`4^p?[comp[n²]]/2`
-/

namespace A139286.P14257354128103763649
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 2

end

end A139286.P14257354128103763649

/-! ## A139286.P14861041499127921716

`record[4^∑{p}[n+2, #]/2]`
-/

namespace A139286.P14861041499127921716
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139286.P14861041499127921716

/-! ## A139286.P18385032251708309429

`record[∏{p}[n+2, 4^#/2]]`
-/

namespace A139286.P18385032251708309429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (4 ^ p : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139286.P18385032251708309429

/-! ## A139286.P7949486330345683269

`2*record[2^∏{p}[n, #-1]]²`
-/

namespace A139286.P7949486330345683269
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A139286.P7949486330345683269

/-! ## A139286.P13770474577913352167

`A139287(n+1)+1`
-/

namespace A139286.P13770474577913352167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139287 (n + 1) + 1

end

end A139286.P13770474577913352167

/-!
# A139287: 2^(2p - 1) - 1, where p is prime.

The programs for A139287, there is no canonical definition to state claims against.
-/

/-! ## A139287.P13739384593373094050

`2^(2*p?[xor(1, n)+1]-1)-1`
-/

namespace A139287.P13739384593373094050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℤ) - 1

end

end A139287.P13739384593373094050

/-! ## A139287.P2401406403250615764

`A139286(n+1)-1`
-/

namespace A139287.P2401406403250615764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139286 (n + 1) - 1

end

end A139287.P2401406403250615764

/-! ## A139287.P7231698473520706926

`A083420(p?[comp[n²]]-1)`
-/

namespace A139287.P7231698473520706926
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) - 1)

end

end A139287.P7231698473520706926

/-! ## A139287.P17162939998812907127

`2*A139289(n+1)+1`
-/

namespace A139287.P17162939998812907127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139289 (n + 1) + 1

end

end A139287.P17162939998812907127

/-! ## A139287.P9637921355901309437

`2*A139288(n+1)-1`
-/

namespace A139287.P9637921355901309437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139288 (n + 1) - 1

end

end A139287.P9637921355901309437

/-!
# A139288: 2^(2p - 1)/2, where p is prime.

The programs for A139288, there is no canonical definition to state claims against.
-/

/-! ## A139288.P6523589594996836718

`A139286(n+1)/2`
-/

namespace A139288.P6523589594996836718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 2

end

end A139288.P6523589594996836718

/-! ## A139288.P10780091147156736303

`record[4^∏{p}[n, #-1]]`
-/

namespace A139288.P10780091147156736303
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139288.P10780091147156736303

/-! ## A139288.P13623697588046338175

`4^eq[1, ∑{e}[n+1, #]]`
-/

namespace A139288.P13623697588046338175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139288.P13623697588046338175

/-! ## A139288.P10612156763521378121

`4^lt[n, ∑{p}[n+1, #]]`
-/

namespace A139288.P10612156763521378121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A139288.P10612156763521378121

/-! ## A139288.P792968701758715100

`record[4^∑{p}[n+2, #-1]]`
-/

namespace A139288.P792968701758715100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139288.P792968701758715100

/-!
# A139289: (2^(2p - 1)/2)-1, where p is prime.

The programs for A139289, there is no canonical definition to state claims against.
-/

/-! ## A139289.P16340206791071745644

`A139286(n+1)/2-1`
-/

namespace A139289.P16340206791071745644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 2 - 1

end

end A139289.P16340206791071745644

/-! ## A139289.P15175678019141449482

`record[2^∏{p}[n, #-1]]²-1`
-/

namespace A139289.P15175678019141449482
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2 - 1

end

end A139289.P15175678019141449482

/-! ## A139289.P3237985354805671288

`4^(p?[abs(xor(n, -2))]-1)-1`
-/

namespace A139289.P3237985354805671288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℤ) - 1

end

end A139289.P3237985354805671288

/-! ## A139289.P13200768692562028232

`4^(p?[n%3+n]-1)-1`
-/

namespace A139289.P13200768692562028232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1 : ℤ) - 1

end

end A139289.P13200768692562028232

/-! ## A139289.P6030687043354999584

`A139288(n+1)-1`
-/

namespace A139289.P6030687043354999584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139288 (n + 1) - 1

end

end A139289.P6030687043354999584

/-!
# A139290: 2^(2p - 1)/4, where p is prime.

The programs for A139290, there is no canonical definition to state claims against.
-/

/-! ## A139290.P17657296340908338458

`A139286(n+1)/4`
-/

namespace A139290.P17657296340908338458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 4

end

end A139290.P17657296340908338458

/-! ## A139290.P17293266473548785997

`record[2^((2*n+1)/∑{e}[n+2, #])]`
-/

namespace A139290.P17293266473548785997
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ ((2 * n + 1 : ℚ) / ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139290.P17293266473548785997

/-! ## A139290.P10210766432220460642

`A139291(n+1)+1`
-/

namespace A139290.P10210766432220460642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139291 (n + 1) + 1

end

end A139290.P10210766432220460642

/-! ## A139290.P8419408650676627017

`2*A139292(n+1)`
-/

namespace A139290.P8419408650676627017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139292 (n + 1)

end

end A139290.P8419408650676627017

/-! ## A139290.P8333784082619942524

`A139288(n+1)/2`
-/

namespace A139290.P8333784082619942524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139288 (n + 1) : ℚ) / 2

end

end A139290.P8333784082619942524

/-!
# A139291: a(n) = 2^(2*prime(n) - 3) - 1.

The programs for A139291, the canonical program `A139291.P4704060389980798102` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139291 has offset 1).

The definition of A139291 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139291.P18210699381875382812

`A139290(n+1)-1`
-/

namespace A139291.P18210699381875382812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139290 (n + 1) - 1

end

end A139291.P18210699381875382812

namespace A139291

/-- `A139290(n+1)-1` -/
def P18210699381875382812.Spec : Prop :=
  ∀ n, P18210699381875382812.a n = A139291 (n + 1)

end A139291

/-! ## A139291.P4704060389980798102

`A000225(A131426(n+1))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A139291

/-- `A000225(A131426(n+1))` -/
def P4704060389980798102.Spec : Prop :=
  ∀ n, P4704060389980798102.a n = A139291 (n + 1)

theorem P4704060389980798102.correct : P4704060389980798102.Spec := by
  intro n
  simp only [A139291, Nat.add_sub_cancel]

end A139291

/-! ## A139291.P7050943454588365484

`A139286(n+1)/4-1`
-/

namespace A139291.P7050943454588365484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 4 - 1

end

end A139291.P7050943454588365484

namespace A139291

/-- `A139286(n+1)/4-1` -/
def P7050943454588365484.Spec : Prop :=
  ∀ n, P7050943454588365484.a n = (A139291 (n + 1) : ℚ)

end A139291

/-! ## A139291.P8692321940425096921

`floor(A139289(n+1)/2)`
-/

namespace A139291.P8692321940425096921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139289 (n + 1) : ℚ) / 2⌋

end

end A139291.P8692321940425096921

namespace A139291

/-- `floor(A139289(n+1)/2)` -/
def P8692321940425096921.Spec : Prop :=
  ∀ n, P8692321940425096921.a n = A139291 (n + 1)

end A139291

/-! ## A139291.P12040009964958097613

`2*A139293(n+1)+1`
-/

namespace A139291.P12040009964958097613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A139293 (n + 1) + 1

end

end A139291.P12040009964958097613

namespace A139291

/-- `2*A139293(n+1)+1` -/
def P12040009964958097613.Spec : Prop :=
  ∀ n, P12040009964958097613.a n = A139291 (n + 1)

end A139291

/-!
# A139292: 2^(2p - 1)/8, where p is prime.

The programs for A139292, there is no canonical definition to state claims against.
-/

/-! ## A139292.P6878076174781687127

`A139286(n+1)/8`
-/

namespace A139292.P6878076174781687127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 8

end

end A139292.P6878076174781687127

/-! ## A139292.P6991682251591549190

`record[4^∑{p}[n, #-2]]`
-/

namespace A139292.P6991682251591549190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139292.P6991682251591549190

/-! ## A139292.P14983113013324849198

`record[∏{p}[n, 4^(#-2)]]`
-/

namespace A139292.P14983113013324849198
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (4 : ℚ) ^ ((p : ℤ) - 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139292.P14983113013324849198

/-! ## A139292.P9039232728698260859

`4^eq[1, ∑{e}[n+2, #]]`
-/

namespace A139292.P9039232728698260859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139292.P9039232728698260859

/-! ## A139292.P13187146343242629436

`4^lt[∑{e}[n+2, #], 2]`
-/

namespace A139292.P13187146343242629436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A139292.P13187146343242629436

/-!
# A139293: (2^(2p - 1)/8)-1, where p is prime.

The programs for A139293, there is no canonical definition to state claims against.
-/

/-! ## A139293.P13592913446811254453

`A139286(n+1)/8-1`
-/

namespace A139293.P13592913446811254453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139286 (n + 1) : ℚ) / 8 - 1

end

end A139293.P13592913446811254453

/-! ## A139293.P15389343669427810204

`A139292(n+1)-1`
-/

namespace A139293.P15389343669427810204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139292 (n + 1) - 1

end

end A139293.P15389343669427810204

/-! ## A139293.P16798962252433559668

`Δ[A135482(n)]²-1`
-/

namespace A139293.P16798962252433559668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135482 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - 1

end

end A139293.P16798962252433559668

/-! ## A139293.P9382133148092385841

`A135620(n+1)²-1`
-/

namespace A139293.P9382133148092385841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135620 (n + 1) ^ 2 - 1

end

end A139293.P9382133148092385841

/-! ## A139293.P5463358058995210216

`A139290(n+1)/2-1`
-/

namespace A139293.P5463358058995210216
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139290 (n + 1) : ℚ) / 2 - 1

end

end A139293.P5463358058995210216

