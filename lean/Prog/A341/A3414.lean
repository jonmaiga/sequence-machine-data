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
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A341400: Number of nonnegative solutions to (x_1)^2 + (x_2)^2 + ... + (x_5)^2 <= n.

The programs for A341400, there is no canonical definition to state claims against.
-/

/-! ## A341400.P4440150065750313193

`∑[A038671(n)]`
-/

namespace A341400.P4440150065750313193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038671 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341400.P4440150065750313193

/-! ## A341400.P18325039018747799701

`A038671(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A341400.P18325039018747799701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038671 n + a (A023443 n).toNat

end

end A341400.P18325039018747799701

/-! ## A341400.P15253923958179808424

`A038671(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A341400.P15253923958179808424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038671 n + a (A004273 n - (n : ℤ)).toNat

end

end A341400.P15253923958179808424

/-! ## A341400.P16327536180812295047

`A038671(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A341400.P16327536180812295047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A038671 n + a ((n : ℤ) - A057427 n).toNat

end

end A341400.P16327536180812295047

/-! ## A341400.P7050691296098220118

`A000027(A038671(n)+a(n-1))` with `a(0)=1`
-/

namespace A341400.P7050691296098220118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000027 (A038671 n + a (n - 1)).toNat

end

end A341400.P7050691296098220118

/-! ## A341400.P590718923491444156

`∑[A045847(A055999(n+3))]`
-/

namespace A341400.P590718923491444156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A055999 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341400.P590718923491444156

/-! ## A341400.P8355779094565945408

`∑[A045847(Δ[A023551(n+1)])]`
-/

namespace A341400.P8355779094565945408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341400.P8355779094565945408

/-! ## A341400.P3131469267054015222

`∑[A045847(Δ[A026054(n+3)])]`
-/

namespace A341400.P3131469267054015222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341400.P3131469267054015222

/-!
# A341401: Number of nonnegative solutions to (x_1)^2 + (x_2)^2 + ... + (x_6)^2 <= n.

The programs for A341401, there is no canonical definition to state claims against.
-/

/-! ## A341401.P2603690252666562925

`∑[A045848(n)]`
-/

namespace A341401.P2603690252666562925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341401.P2603690252666562925

/-! ## A341401.P6441548849800073191

`A045848(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A341401.P6441548849800073191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045848 n + a (A023443 n).toNat

end

end A341401.P6441548849800073191

/-! ## A341401.P18020505481869966277

`A045848(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A341401.P18020505481869966277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045848 n + a (A028310 n - 1).toNat

end

end A341401.P18020505481869966277

/-! ## A341401.P17147121811926320998

`A045848(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A341401.P17147121811926320998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045848 n + a (A004273 n - (n : ℤ)).toNat

end

end A341401.P17147121811926320998

/-! ## A341401.P16646706396291370609

`A045848(n)+a(A005843(n)/2-1)` with `a(0)=1`
-/

namespace A341401.P16646706396291370609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045848 n + a (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2 - 1)).toNat

end

end A341401.P16646706396291370609

/-! ## A341401.P8631077033411606377

`A045848(n)+a(n%A080036(n)-1)` with `a(0)=1`
-/

namespace A341401.P8631077033411606377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045848 n + a (Int.tmod (n : ℤ) (A080036 n) - 1).toNat

end

end A341401.P8631077033411606377

/-! ## A341401.P2367624267848083401

`∑[A045847(eq[6, A025581(n)])]`
-/

namespace A341401.P2367624267848083401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341401.P2367624267848083401

/-! ## A341401.P11702202410380895323

`∑[A045847(eq[7, A193739(n)])]`
-/

namespace A341401.P11702202410380895323
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341401.P11702202410380895323

/-! ## A341401.P14270226759046486918

`∑[A045847(eq[7, A004736(n+1)])]`
-/

namespace A341401.P14270226759046486918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341401.P14270226759046486918

/-!
# A341402: Number of nonnegative solutions to (x_1)^2 + (x_2)^2 + ... + (x_7)^2 <= n.

The programs for A341402, there is no canonical definition to state claims against.
-/

/-! ## A341402.P3969492945654613266

`∑[A045849(n)]`
-/

namespace A341402.P3969492945654613266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341402.P3969492945654613266

/-! ## A341402.P7002402303694486

`A045849(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A341402.P7002402303694486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045849 n + a (A023443 n).toNat

end

end A341402.P7002402303694486

/-! ## A341402.P17732306140012875435

`a(n-1)-1+A045849(n)+record[A020639(n+2)]%2` with `a(0)=1`
-/

namespace A341402.P17732306140012875435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - 1 + (A045849 n + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2)

end

end A341402.P17732306140012875435

/-! ## A341402.P11702291084675370374

`∑[A045847(A155212(n+4))]`
-/

namespace A341402.P11702291084675370374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A155212 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341402.P11702291084675370374

/-! ## A341402.P13355781016860330936

`∑[A045847(eq[7, A025581(n)])]`
-/

namespace A341402.P13355781016860330936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341402.P13355781016860330936

/-! ## A341402.P1690955860054782968

`∑[A045847(A000217(n+8)-8)]`
-/

namespace A341402.P1690955860054782968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 8) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341402.P1690955860054782968

/-! ## A341402.P4094367282007645781

`∑[A045847(eq[8, A004736(n+1)])]`
-/

namespace A341402.P4094367282007645781
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341402.P4094367282007645781

/-!
# A341403: Number of nonnegative solutions to (x_1)^2 + (x_2)^2 + ... + (x_8)^2 <= n.

The programs for A341403, the canonical program `A341403.P9679903586376955087` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341403 has offset 0).

The definition of A341403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341403.P9679903586376955087

`∑[A045850(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A341403

/-- `∑[A045850(n)]` -/
def P9679903586376955087.Spec : Prop :=
  ∀ n, P9679903586376955087.a n = A341403 n

theorem P9679903586376955087.correct : P9679903586376955087.Spec := by
  intro n
  simp only [A341403]

end A341403

/-! ## A341403.P9926739376754511821

`A045850(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A341403.P9926739376754511821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045850 n + a (A023443 n).toNat

end

end A341403.P9926739376754511821

namespace A341403

/-- `A045850(n)+a(A023443(n))` -/
def P9926739376754511821.Spec : Prop :=
  ∀ n, P9926739376754511821.a n = A341403 n

end A341403

/-! ## A341403.P9719653314936645247

`A045850(n)+a(n-dr(A033999(n)))` with `a(0)=1`
-/

namespace A341403.P9719653314936645247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045850 n + a (n - SequenceMachineLib.digitalRoot (A033999 n))

end

end A341403.P9719653314936645247

namespace A341403

/-- `A045850(n)+a(n-dr(A033999(n)))` -/
def P9719653314936645247.Spec : Prop :=
  ∀ n, P9719653314936645247.a n = A341403 n

end A341403

/-! ## A341403.P14611763241633150015

`A045850(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A341403.P14611763241633150015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045850 n + a (A000027 (n + 1) - 2).toNat

end

end A341403.P14611763241633150015

namespace A341403

/-- `A045850(n)+a(A000027(n+1)-2)` -/
def P14611763241633150015.Spec : Prop :=
  ∀ n, P14611763241633150015.a n = A341403 n

end A341403

/-! ## A341403.P2752337149160020181

`A045850(n)+a(n-(A000038(n)+1))` with `a(0)=1`
-/

namespace A341403.P2752337149160020181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045850 n + a ((n : ℤ) - (A000038 n + 1)).toNat

end

end A341403.P2752337149160020181

namespace A341403

/-- `A045850(n)+a(n-(A000038(n)+1))` -/
def P2752337149160020181.Spec : Prop :=
  ∀ n, P2752337149160020181.a n = A341403 n

end A341403

/-! ## A341403.P5898241359653086200

`A045850(n)+a(n-1)^A001221(A000961(n+1))` with `a(0)=1`
-/

namespace A341403.P5898241359653086200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A045850 n : ℚ) + a (n - 1) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A341403.P5898241359653086200

namespace A341403

/-- `A045850(n)+a(n-1)^A001221(A000961(n+1))` -/
def P5898241359653086200.Spec : Prop :=
  ∀ n, P5898241359653086200.a n = (A341403 n : ℚ)

end A341403

/-! ## A341403.P17859308833404668302

`∑[A045847(A000217(n+9)-9)]`
-/

namespace A341403.P17859308833404668302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000217 (n + 9) - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341403.P17859308833404668302

namespace A341403

/-- `∑[A045847(A000217(n+9)-9)]` -/
def P17859308833404668302.Spec : Prop :=
  ∀ n, P17859308833404668302.a n = A341403 n

end A341403

/-! ## A341403.P6634232473272960511

`∑[A045847(A000124(n+9)-10)]`
-/

namespace A341403.P6634232473272960511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A000124 (n + 9) - 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341403.P6634232473272960511

namespace A341403

/-- `∑[A045847(A000124(n+9)-10)]` -/
def P6634232473272960511.Spec : Prop :=
  ∀ n, P6634232473272960511.a n = A341403 n

end A341403

/-! ## A341403.P11388158959929708145

`∑[A045847(A161680(n+10)-9)]`
-/

namespace A341403.P11388158959929708145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A161680 (n + 10) - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341403.P11388158959929708145

namespace A341403

/-- `∑[A045847(A161680(n+10)-9)]` -/
def P11388158959929708145.Spec : Prop :=
  ∀ n, P11388158959929708145.a n = A341403 n

end A341403

/-!
# A341404: Number of nonnegative solutions to (x_1)^2 + (x_2)^2 + ... + (x_9)^2 <= n.

The programs for A341404, there is no canonical definition to state claims against.
-/

/-! ## A341404.P16254222010041546811

`∑[A045851(n)]`
-/

namespace A341404.P16254222010041546811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341404.P16254222010041546811

/-! ## A341404.P15381454922282786373

`A045851(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A341404.P15381454922282786373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045851 n + a (A023443 n).toNat

end

end A341404.P15381454922282786373

/-! ## A341404.P9865399859303808245

`A045851(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A341404.P9865399859303808245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045851 (A028310 n).toNat + a (n - 1)

end

end A341404.P9865399859303808245

/-! ## A341404.P2714753707481239737

`A045851(A065033(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A341404.P2714753707481239737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045851 (A065033 (2 * n)).toNat + a (n - 1)

end

end A341404.P2714753707481239737

/-! ## A341404.P7548387198308294928

`A045851(val(A011782(n+1), 2))+a(n-1)` with `a(0)=1`
-/

namespace A341404.P7548387198308294928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045851 (SequenceMachineLib.valuation (A011782 (n + 1)).toNat 2) + a (n - 1)

end

end A341404.P7548387198308294928

/-! ## A341404.P12355213157280821083

`∑[A045847(A056000(n+6))]`
-/

namespace A341404.P12355213157280821083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A056000 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341404.P12355213157280821083

/-! ## A341404.P11339766619625789160

`∑[A045847(A052905(n+7)-5)]`
-/

namespace A341404.P11339766619625789160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A052905 (n + 7) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341404.P11339766619625789160

/-! ## A341404.P889599388946122472

`∑[A045847(eq[10, A004736(n+1)])]`
-/

namespace A341404.P889599388946122472
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341404.P889599388946122472

/-!
# A341405: Number of nonnegative solutions to (x_1)^2 + (x_2)^2 + ... + (x_10)^2 <= n.

The programs for A341405, there is no canonical definition to state claims against.
-/

/-! ## A341405.P9331012247236613186

`∑[A045852(n)]`
-/

namespace A341405.P9331012247236613186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045852 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341405.P9331012247236613186

/-! ## A341405.P4908137989012738569

`A045852(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A341405.P4908137989012738569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045852 n + a (A023443 n).toNat

end

end A341405.P4908137989012738569

/-! ## A341405.P14960381698265073260

`A045852(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A341405.P14960381698265073260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045852 n + a ((n : ℤ) - A057427 n).toNat

end

end A341405.P14960381698265073260

/-! ## A341405.P1952340889385245349

`A045852(n)+a(n-gcd(2, A000040(n+1)))` with `a(0)=1`
-/

namespace A341405.P1952340889385245349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A045852 n + a (n - Int.gcd 2 (A000040 (n + 1)))

end

end A341405.P1952340889385245349

/-! ## A341405.P12078197349852751431

`∑[A045847(A055998(n+9)-8)]`
-/

namespace A341405.P12078197349852751431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A055998 (n + 9) - 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341405.P12078197349852751431

/-! ## A341405.P4054239364158677318

`∑[A045847(Δ[A000292(n+9)]+n)]`
-/

namespace A341405.P4054239364158677318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 9)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341405.P4054239364158677318

/-! ## A341405.P18227592218290512490

`∑[A045847(A017329(n+5)+A000096(n))]`
-/

namespace A341405.P18227592218290512490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A017329 (n + 5) + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341405.P18227592218290512490

/-!
# A341406: Run lengths of the bits in A308092, read in binary.

The programs for A341406, there is no canonical definition to state claims against.
-/

/-! ## A341406.P16485735427221362671

`A342937(n+1)-A102683(A306100(n))`
-/

namespace A341406.P16485735427221362671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342937 (n + 1) - A102683 (A306100 n).toNat

end

end A341406.P16485735427221362671

/-! ## A341406.P11925976626567675191

`runs[A324608(n+1)]-A102683(A306100(n))`
-/

namespace A341406.P11925976626567675191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) - A102683 (A306100 n).toNat

end

end A341406.P11925976626567675191

/-! ## A341406.P13707292410493349638

`A342937(A057979((2*n)²)+n)`
-/

namespace A341406.P13707292410493349638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342937 (A057979 ((2 * n) ^ 2) + (n : ℤ)).toNat

end

end A341406.P13707292410493349638

/-! ## A341406.P5282221555272436335

`A342937(n+1)%A342974(n+1)`
-/

namespace A341406.P5282221555272436335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342937 (n + 1)) (A342974 (n + 1))

end

end A341406.P5282221555272436335

/-! ## A341406.P4518279048907447108

`A342937(n+1)%A047948(A239312(n))`
-/

namespace A341406.P4518279048907447108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342937 (n + 1)) (A047948 (A239312 n).toNat)

end

end A341406.P4518279048907447108

/-! ## A341406.P10512767412781392181

`A001222(A185446(n+1))*A342937(n+1)`
-/

namespace A341406.P10512767412781392181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A185446 (n + 1)).toNat * A342937 (n + 1)

end

end A341406.P10512767412781392181

/-!
# A341407: INVERT transform of pi (A000720).

The programs for A341407, there is no canonical definition to state claims against.
-/

/-! ## A341407.P10569292689496742423

`Δ[floor((A001462(A001372(n)+4+n)+1)/ϕ)]`
-/

namespace A341407.P10569292689496742423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001462 (A001372 n + 4 + (n : ℤ)).toNat + 1 : ℝ) / Real.goldenRatio⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341407.P10569292689496742423

/-! ## A341407.P3555772294640104255

`A238351(n)+A004216(A001004(n))`
-/

namespace A341407.P3555772294640104255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238351 n + A004216 (A001004 n).toNat

end

end A341407.P3555772294640104255

/-! ## A341407.P9330286912179164202

`A000196(A300668(n)-A004396(n))`
-/

namespace A341407.P9330286912179164202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A300668 n - A004396 n).toNat

end

end A341407.P9330286912179164202

/-! ## A341407.P6901533270206486697

`A000196(A300668(n)-A194640(n))`
-/

namespace A341407.P6901533270206486697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A300668 n - A194640 n).toNat

end

end A341407.P6901533270206486697

/-! ## A341407.P7901382257852154107

`Δ[A000194(Δ[A283109(n)])]`
-/

namespace A341407.P7901382257852154107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283109 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341407.P7901382257852154107

/-!
# A341408: Number of partitions of n into 3 nonprime parts.

The programs for A341408, there is no canonical definition to state claims against.
-/

/-! ## A341408.P17660478779083355592

`round((n+3)²/12)-A348588(n+3)`
-/

namespace A341408.P17660478779083355592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12) - A348588 (n + 3)

end

end A341408.P17660478779083355592

/-! ## A341408.P166497661052792274

`A055091(A341460(n)^A008621(n))`
-/

namespace A341408.P166497661052792274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (SequenceMachineLib.roundAway ((A341460 (n + 10) : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A341408.P166497661052792274

/-! ## A341408.P9216311902316413226

`A055091(A341460(n)^A076885(n))`
-/

namespace A341408.P9216311902316413226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (SequenceMachineLib.roundAway ((A341460 (n + 10) : ℚ) ^ (A076885 n : ℤ))).toNat

end

end A341408.P9216311902316413226

/-! ## A341408.P3529729041785197702

`A055091(A341452(n+5)^A008621(n))`
-/

namespace A341408.P3529729041785197702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (SequenceMachineLib.roundAway ((A341452 (n + 5) : ℚ) ^ (A008621 n : ℤ))).toNat

end

end A341408.P3529729041785197702

/-! ## A341408.P3888992796743412538

`A067394(A153905(n+1))`
-/

namespace A341408.P3888992796743412538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067394 (A153905 (n + 1)).toNat

end

end A341408.P3888992796743412538

/-!
# A341409: a(n) = (Sum_{k=1..3} k^n) mod n.

The programs for A341409, the canonical program `A341409.P6639943802806359847` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341409 has offset 1).

The definition of A341409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[3-1, (#+1)^(n+1)]%(n+1)` (program `A341409.P6639943802806359847`, by `A341409.P6639943802806359847.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341409.P6639943802806359847

`∑{#}[3-1, (#+1)^(n+1)]%(n+1)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A341409

/-- `∑{#}[3-1, (#+1)^(n+1)]%(n+1)` -/
def P6639943802806359847.Spec : Prop :=
  ∀ n, (P6639943802806359847.a n : ℤ) = A341409 (n + 1)

theorem P6639943802806359847.correct : P6639943802806359847.Spec := by
  intro n
  simp only [A341409, Nat.add_sub_cancel]

end A341409

/-! ## A341409.P10809366576266439182

`A001550(n+1)%(n+1)`
-/

namespace A341409.P10809366576266439182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001550 (n + 1)) (n + 1 : ℤ)

end

end A341409.P10809366576266439182

namespace A341409

/-- `A001550(n+1)%(n+1)` -/
def P10809366576266439182.Spec : Prop :=
  ∀ n, P10809366576266439182.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P3107248310107854820

`(A220235(n+1)+1)%(n+1)`
-/

namespace A341409.P3107248310107854820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220235 (n + 1) + 1) (n + 1 : ℤ)

end

end A341409.P3107248310107854820

namespace A341409

/-- `(A220235(n+1)+1)%(n+1)` -/
def P3107248310107854820.Spec : Prop :=
  ∀ n, P3107248310107854820.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P14829907809079596930

`(A096196(n+1)+A066601(n+1))%(n+1)`
-/

namespace A341409.P14829907809079596930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096196 (n + 1) + A066601 (n + 1)) (n + 1 : ℤ)

end

end A341409.P14829907809079596930

namespace A341409

/-- `(A096196(n+1)+A066601(n+1))%(n+1)` -/
def P14829907809079596930.Spec : Prop :=
  ∀ n, P14829907809079596930.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P11953834218565987955

`(A066601(n+1)+A015910(n+1)+1)%(n+1)`
-/

namespace A341409.P11953834218565987955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066601 (n + 1) + A015910 (n + 1) + 1) (n + 1 : ℤ)

end

end A341409.P11953834218565987955

namespace A341409

/-- `(A066601(n+1)+A015910(n+1)+1)%(n+1)` -/
def P11953834218565987955.Spec : Prop :=
  ∀ n, P11953834218565987955.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P647452735981163514

`(A007689(n+1)+1)%(n+1)`
-/

namespace A341409.P647452735981163514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007689 (n + 1) + 1) (n + 1 : ℤ)

end

end A341409.P647452735981163514

namespace A341409

/-- `(A007689(n+1)+1)%(n+1)` -/
def P647452735981163514.Spec : Prop :=
  ∀ n, P647452735981163514.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P12921035497833548559

`(A085281(n+2)+1)%(n+1)`
-/

namespace A341409.P12921035497833548559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085281 (n + 2) + 1) (n + 1 : ℤ)

end

end A341409.P12921035497833548559

namespace A341409

/-- `(A085281(n+2)+1)%(n+1)` -/
def P12921035497833548559.Spec : Prop :=
  ∀ n, P12921035497833548559.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P18045147355996417053

`(A171270(n+1)+3)%(n+1)`
-/

namespace A341409.P18045147355996417053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171270 (n + 1) + 3) (n + 1 : ℤ)

end

end A341409.P18045147355996417053

namespace A341409

/-- `(A171270(n+1)+3)%(n+1)` -/
def P18045147355996417053.Spec : Prop :=
  ∀ n, P18045147355996417053.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P16116881261490077916

`(A034472(n+1)+2^(n+1))%(n+1)`
-/

namespace A341409.P16116881261490077916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034472 (n + 1) + (2 ^ (n + 1) : ℤ)) (n + 1 : ℤ)

end

end A341409.P16116881261490077916

namespace A341409

/-- `(A034472(n+1)+2^(n+1))%(n+1)` -/
def P16116881261490077916.Spec : Prop :=
  ∀ n, P16116881261490077916.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P4884489028358875723

`(A000244(n+1)+A000051(n+1))%(n+1)`
-/

namespace A341409.P4884489028358875723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 (n + 1) + A000051 (n + 1)) (n + 1 : ℤ)

end

end A341409.P4884489028358875723

namespace A341409

/-- `(A000244(n+1)+A000051(n+1))%(n+1)` -/
def P4884489028358875723.Spec : Prop :=
  ∀ n, P4884489028358875723.a n = A341409 (n + 1)

end A341409

/-! ## A341409.P2771567457714209249

`A002262(A220235(n+1)+A000124(n))`
-/

namespace A341409.P2771567457714209249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A220235 (n + 1) + A000124 n).toNat

end

end A341409.P2771567457714209249

namespace A341409

/-- `A002262(A220235(n+1)+A000124(n))` -/
def P2771567457714209249.Spec : Prop :=
  ∀ n, P2771567457714209249.a n = A341409 (n + 1)

end A341409

/-!
# A341410: a(n) = (Sum_{k=1..4} k^n) mod n.

The programs for A341410, the canonical program `A341410.P4787776249193978243` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341410 has offset 1).

The definition of A341410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[4-1, (#+1)^(n+1)]%(n+1)` (program `A341410.P4787776249193978243`, by `A341410.P4787776249193978243.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341410.P4787776249193978243

`∑{#}[4-1, (#+1)^(n+1)]%(n+1)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A341410

/-- `∑{#}[4-1, (#+1)^(n+1)]%(n+1)` -/
def P4787776249193978243.Spec : Prop :=
  ∀ n, (P4787776249193978243.a n : ℤ) = A341410 (n + 1)

theorem P4787776249193978243.correct : P4787776249193978243.Spec := by
  intro n
  simp only [A341410, Nat.add_sub_cancel]

end A341410

/-! ## A341410.P3390611556042934909

`A001551(n+1)%(n+1)`
-/

namespace A341410.P3390611556042934909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001551 (n + 1)) (n + 1 : ℤ)

end

end A341410.P3390611556042934909

namespace A341410

/-- `A001551(n+1)%(n+1)` -/
def P3390611556042934909.Spec : Prop :=
  ∀ n, P3390611556042934909.a n = A341410 (n + 1)

end A341410

/-! ## A341410.P90024228361485510

`(A074526(n+1)+1)%(n+1)`
-/

namespace A341410.P90024228361485510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074526 (n + 1) + 1) (n + 1 : ℤ)

end

end A341410.P90024228361485510

namespace A341410

/-- `(A074526(n+1)+1)%(n+1)` -/
def P90024228361485510.Spec : Prop :=
  ∀ n, P90024228361485510.a n = A341410 (n + 1)

end A341410

/-! ## A341410.P17330397164548919998

`(A001576(n+1)+3^(n+1))%(n+1)`
-/

namespace A341410.P17330397164548919998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001576 (n + 1) + (3 ^ (n + 1) : ℤ)) (n + 1 : ℤ)

end

end A341410.P17330397164548919998

namespace A341410

/-- `(A001576(n+1)+3^(n+1))%(n+1)` -/
def P17330397164548919998.Spec : Prop :=
  ∀ n, P17330397164548919998.a n = A341410 (n + 1)

end A341410

/-!
# A341411: a(n) = (Sum_{k=1..5} k^n) mod n.

The programs for A341411, the canonical program `A341411.P16165282094271962669` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341411 has offset 1).

The definition of A341411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[5-1, (#+1)^(n+1)]%(n+1)` (program `A341411.P16165282094271962669`, by `A341411.P16165282094271962669.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341411.P16165282094271962669

`∑{#}[5-1, (#+1)^(n+1)]%(n+1)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A341411

/-- `∑{#}[5-1, (#+1)^(n+1)]%(n+1)` -/
def P16165282094271962669.Spec : Prop :=
  ∀ n, (P16165282094271962669.a n : ℤ) = A341411 (n + 1)

theorem P16165282094271962669.correct : P16165282094271962669.Spec := by
  intro n
  simp only [A341411, Nat.add_sub_cancel]

end A341411

/-! ## A341411.P4872283021762007525

`A001552(n+1)%(n+1)`
-/

namespace A341411.P4872283021762007525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001552 (n + 1)) (n + 1 : ℤ)

end

end A341411.P4872283021762007525

namespace A341411

/-- `A001552(n+1)%(n+1)` -/
def P4872283021762007525.Spec : Prop :=
  ∀ n, P4872283021762007525.a n = A341411 (n + 1)

end A341411

/-! ## A341411.P4385638487456994833

`A103438(A077169(n+7))%(n+1)`
-/

namespace A341411.P4385638487456994833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103438 (A077169 (n + 7)).toNat) (n + 1 : ℤ)

end

end A341411.P4385638487456994833

namespace A341411

/-- `A103438(A077169(n+7))%(n+1)` -/
def P4385638487456994833.Spec : Prop :=
  ∀ n, P4385638487456994833.a n = A341411 (n + 1)

end A341411

/-! ## A341411.P11855694403106044197

`A194454(A126646(n))%(n+1)`
-/

namespace A341411.P11855694403106044197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194454 (A126646 n).toNat) (n + 1 : ℤ)

end

end A341411.P11855694403106044197

namespace A341411

/-- `A194454(A126646(n))%(n+1)` -/
def P11855694403106044197.Spec : Prop :=
  ∀ n, P11855694403106044197.a n = A341411 (n + 1)

end A341411

/-! ## A341411.P17895220360865895788

`A164619(A151821(n+1))%(n+1)`
-/

namespace A341411.P17895220360865895788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A164619 (A151821 (n + 1)).toNat) (n + 1 : ℤ)

end

end A341411.P17895220360865895788

namespace A341411

/-- `A164619(A151821(n+1))%(n+1)` -/
def P17895220360865895788.Spec : Prop :=
  ∀ n, P17895220360865895788.a n = A341411 (n + 1)

end A341411

/-!
# A341412: a(n) = (Sum_{k=1..6} k^n) mod n.

The programs for A341412, the canonical program `A341412.P10845432417335801310` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341412 has offset 1).

The definition of A341412 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[6-1, (#+1)^(n+1)]%(n+1)` (program `A341412.P10845432417335801310`, by `A341412.P10845432417335801310.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341412.P10845432417335801310

`∑{#}[6-1, (#+1)^(n+1)]%(n+1)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A341412

/-- `∑{#}[6-1, (#+1)^(n+1)]%(n+1)` -/
def P10845432417335801310.Spec : Prop :=
  ∀ n, (P10845432417335801310.a n : ℤ) = A341412 (n + 1)

theorem P10845432417335801310.correct : P10845432417335801310.Spec := by
  intro n
  simp only [A341412, Nat.add_sub_cancel]

end A341412

/-! ## A341412.P2078653138376470389

`A001553(n+1)%(n+1)`
-/

namespace A341412.P2078653138376470389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001553 (n + 1)) (n + 1 : ℤ)

end

end A341412.P2078653138376470389

namespace A341412

/-- `A001553(n+1)%(n+1)` -/
def P2078653138376470389.Spec : Prop :=
  ∀ n, P2078653138376470389.a n = A341412 (n + 1)

end A341412

/-! ## A341412.P7023208891729677219

`A146461(A047742(n%or(1, n)+20))%(n+1)`
-/

namespace A341412.P7023208891729677219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146461 (A047742 (n % Nat.lor 1 n + 20)).toNat) (n + 1 : ℤ)

end

end A341412.P7023208891729677219

namespace A341412

/-- `A146461(A047742(n%or(1, n)+20))%(n+1)` -/
def P7023208891729677219.Spec : Prop :=
  ∀ n, P7023208891729677219.a n = A341412 (n + 1)

end A341412

/-! ## A341412.P16934431514975546249

`A266221(A020737(n))%A199343(n)`
-/

namespace A341412.P16934431514975546249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266221 (A020737 n).toNat) (A199343 n)

end

end A341412.P16934431514975546249

namespace A341412

/-- `A266221(A020737(n))%A199343(n)` -/
def P16934431514975546249.Spec : Prop :=
  ∀ n, P16934431514975546249.a n = A341412 (n + 1)

end A341412

/-! ## A341412.P9710707889356438223

`A266221(A048578(n+1))%A199343(n)`
-/

namespace A341412.P9710707889356438223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A266221 (A048578 (n + 1)).toNat) (A199343 n)

end

end A341412.P9710707889356438223

namespace A341412

/-- `A266221(A048578(n+1))%A199343(n)` -/
def P9710707889356438223.Spec : Prop :=
  ∀ n, P9710707889356438223.a n = A341412 (n + 1)

end A341412

/-!
# A341413: a(n) = (Sum_{k=1..7} k^n) mod n.

The programs for A341413, the canonical program `A341413.P9034475533414766726` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341413 has offset 1).

The definition of A341413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[7-1, (#+1)^(n+1)]%(n+1)` (program `A341413.P9034475533414766726`, by `A341413.P9034475533414766726.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341413.P9034475533414766726

`∑{#}[7-1, (#+1)^(n+1)]%(n+1)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A341413

/-- `∑{#}[7-1, (#+1)^(n+1)]%(n+1)` -/
def P9034475533414766726.Spec : Prop :=
  ∀ n, (P9034475533414766726.a n : ℤ) = A341413 (n + 1)

theorem P9034475533414766726.correct : P9034475533414766726.Spec := by
  intro n
  simp only [A341413, Nat.add_sub_cancel]

end A341413

/-! ## A341413.P16648535749904419886

`A001554(n+1)%(n+1)`
-/

namespace A341413.P16648535749904419886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001554 (n + 1)) (n + 1 : ℤ)

end

end A341413.P16648535749904419886

namespace A341413

/-- `A001554(n+1)%(n+1)` -/
def P16648535749904419886.Spec : Prop :=
  ∀ n, P16648535749904419886.a n = A341413 (n + 1)

end A341413

/-! ## A341413.P16729964500815762989

`(28*A093178(3*2^n-(n+2)))%(n+1)`
-/

namespace A341413.P16729964500815762989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (28 * A093178 (3 * 2 ^ n - (n + 2))) (n + 1 : ℤ)

end

end A341413.P16729964500815762989

namespace A341413

/-- `(28*A093178(3*2^n-(n+2)))%(n+1)` -/
def P16729964500815762989.Spec : Prop :=
  ∀ n, P16729964500815762989.a n = A341413 (n + 1)

end A341413

/-! ## A341413.P1042096116064473002

`A017113(A287192(n))%(n+1)`
-/

namespace A341413.P1042096116064473002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017113 (A287192 n).toNat) (n + 1 : ℤ)

end

end A341413.P1042096116064473002

namespace A341413

/-- `A017113(A287192(n))%(n+1)` -/
def P1042096116064473002.Spec : Prop :=
  ∀ n, P1042096116064473002.a n = A341413 (n + 1)

end A341413

/-! ## A341413.P5206121486101480794

`A017113(A098646(n))%(n+1)`
-/

namespace A341413.P5206121486101480794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017113 (A098646 n).toNat) (n + 1 : ℤ)

end

end A341413.P5206121486101480794

namespace A341413

/-- `A017113(A098646(n))%(n+1)` -/
def P5206121486101480794.Spec : Prop :=
  ∀ n, P5206121486101480794.a n = A341413 (n + 1)

end A341413

/-!
# A341414: a(n) = (Fibonacci(n)*Lucas(n)) mod 10.

The programs for A341414, the canonical program `A341414.P17491311129451261685` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341414 has offset 0).

The definition of A341414 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(A000045(n)*A000032(n))%10` (program `A341414.P17491311129451261685`, by `A341414.P17491311129451261685.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A341414.P15951645055392298282

`A003893(2*n)`
-/

namespace A341414.P15951645055392298282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (2 * n)

end

end A341414.P15951645055392298282

namespace A341414

/-- `A003893(2*n)` -/
def P15951645055392298282.Spec : Prop :=
  ∀ n, P15951645055392298282.a n = A341414 n

end A341414

/-! ## A341414.P17491311129451261685

`(A000045(n)*A000032(n))%10`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A341414

/-- `(A000045(n)*A000032(n))%10` -/
def P17491311129451261685.Spec : Prop :=
  ∀ n, P17491311129451261685.a n = A341414 n

theorem P17491311129451261685.correct : P17491311129451261685.Spec := by
  intro n
  simp only [A341414]

end A341414

/-!
# A341417: Row sums of triangle A339885.

The programs for A341417, there is no canonical definition to state claims against.
-/

/-! ## A341417.P12040039075464694753

`A123884(lcm(A157725(n), A308569(n+1)))`
-/

namespace A341417.P12040039075464694753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123884 (Int.lcm (A157725 n) (A308569 (n + 1)))

end

end A341417.P12040039075464694753

/-!
# A341418: Triangle read by rows: T(n, m) gives the sum of the weights of weighted compositions of n with m parts from generalized pentagonal numbers {A001318(k)}_{k>=1}.

The programs for A341418, there is no canonical definition to state claims against.
-/

/-! ## A341418.P7894663709829346550

`(and(2, comp[∑[n]]+n)-1)*A047265(n+1)`
-/

namespace A341418.P7894663709829346550
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 2 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) : ℤ) - 1) * A047265 (n + 1)

end

end A341418.P7894663709829346550

/-! ## A341418.P7044731753155835267

`A047265(n+1)*A097807(n)`
-/

namespace A341418.P7044731753155835267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047265 (n + 1) * A097807 n

end

end A341418.P7044731753155835267

/-! ## A341418.P14134910646512241771

`A047265(abs(1-n)+2)/A097807(n)`
-/

namespace A341418.P14134910646512241771
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047265 (|1 - (n : ℤ)| + 2).toNat : ℚ) / (A097807 n : ℚ)

end

end A341418.P14134910646512241771

/-! ## A341418.P3214569416661193215

`A033999(C(comp[∑[n]]-n, 2)-(n+1))*A047265(n+1)`
-/

namespace A341418.P3214569416661193215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) * A047265 (n + 1)

end

end A341418.P3214569416661193215

/-! ## A341418.P14334176738162229466

`A033999(n-C(∑[char[∑[n+1]]], 2)+2)*A047265(n+1)`
-/

namespace A341418.P14334176738162229466
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2).toNat * A047265 (n + 1)

end

end A341418.P14334176738162229466

/-! ## A341418.P8528458862715149606

`A014815(A025581(n))*A047265(n+1)`
-/

namespace A341418.P8528458862715149606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 (A025581 n).toNat * A047265 (n + 1)

end

end A341418.P8528458862715149606

/-! ## A341418.P13265646233227057105

`A015343(A051162(n))*A047265(n+1)`
-/

namespace A341418.P13265646233227057105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015343 (A051162 n).toNat * A047265 (n + 1)

end

end A341418.P13265646233227057105

/-! ## A341418.P6627951195383441103

`A014815(A067731(n))*A047265(n+1)`
-/

namespace A341418.P6627951195383441103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014815 (A067731 n).toNat * A047265 (n + 1)

end

end A341418.P6627951195383441103

/-! ## A341418.P9647393279083999798

`A009531(A099375(n))*A047265(n+1)`
-/

namespace A341418.P9647393279083999798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A047265 (n + 1)

end

end A341418.P9647393279083999798

/-! ## A341418.P3901597955859166631

`A047265(n+1)/A097807(n)^A000040(n+1)`
-/

namespace A341418.P3901597955859166631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047265 (n + 1) : ℚ) / (A097807 n : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A341418.P3901597955859166631

/-!
# A341420: The positive integer numbers k represented properly by the binary quadratic form x^2 + 4*y^2.

The programs for A341420, there is no canonical definition to state claims against.
-/

/-! ## A341420.P8884053119181793427

`record[A094758(A057129(n+1))]`
-/

namespace A341420.P8884053119181793427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094758 (A057129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341420.P8884053119181793427

/-! ## A341420.P13109207973325859197

`filter[A057129(n+1), A039963(#)]`
-/

namespace A341420.P13109207973325859197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A341420.P13109207973325859197

/-! ## A341420.P9001440324481502801

`filter[A057129(n+1), A133872(#)]`
-/

namespace A341420.P9001440324481502801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A341420.P9001440324481502801

/-! ## A341420.P3059780194373594885

`filter[A057129(n+1), A152822(#)]`
-/

namespace A341420.P3059780194373594885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A341420.P3059780194373594885

/-! ## A341420.P13899120960826025239

`filter[A057129(n+1), A187074(#)]`
-/

namespace A341420.P13899120960826025239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A341420.P13899120960826025239

/-! ## A341420.P16449054081252072945

`filter[A057129(n+1), A209198(#)]`
-/

namespace A341420.P16449054081252072945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209198 (f1 j).toNat = 1) n)

end

end A341420.P16449054081252072945

/-! ## A341420.P9779462209658313242

`∩[A057129(n+1), A042948(n)]`
-/

namespace A341420.P9779462209658313242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341420.P9779462209658313242

/-! ## A341420.P9619428097530950920

`∩[A020668(n+1), A057129(n+1)]`
-/

namespace A341420.P9619428097530950920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341420.P9619428097530950920

/-! ## A341420.P13468216679076701270

`∩[A042965(n+1), A057129(n+1)]`
-/

namespace A341420.P13468216679076701270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341420.P13468216679076701270

/-! ## A341420.P7884421403249763742

`∩[A047428(n+1), A057129(n+1)]`
-/

namespace A341420.P7884421403249763742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341420.P7884421403249763742

/-!
# A341422: a(n) is the number of solutions of the congruence j^2 + j + 1 == 0 (mod k = A034017(n+1)), for j from {0, 1, 2, ..., k-1}, for n >= 1.

The programs for A341422, there is no canonical definition to state claims against.
-/

/-! ## A341422.P6142803019980177473

`p?[A000086(n+1)+1]-1`
-/

namespace A341422.P6142803019980177473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A341422.P6142803019980177473

/-! ## A341422.P2245377003660184626

`A000086(A034017(n+2))`
-/

namespace A341422.P2245377003660184626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A034017 (n + 2)).toNat

end

end A341422.P2245377003660184626

/-! ## A341422.P14983972523643486555

`A086669(3*A034017(n+2))`
-/

namespace A341422.P14983972523643486555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (3 * A034017 (n + 2)).toNat

end

end A341422.P14983972523643486555

/-! ## A341422.P7548534495625803358

`A091393(3*A034017(n+2))`
-/

namespace A341422.P7548534495625803358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (3 * A034017 (n + 2)).toNat

end

end A341422.P7548534495625803358

/-! ## A341422.P16636884691156304643

`A091393(lcm(3, A034017(n+2)))`
-/

namespace A341422.P16636884691156304643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (Int.lcm 3 (A034017 (n + 2)))

end

end A341422.P16636884691156304643

/-! ## A341422.P8438349212985070209

`A091393(or(1, A034017(n+2)))`
-/

namespace A341422.P8438349212985070209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (Int.lor 1 (A034017 (n + 2))).toNat

end

end A341422.P8438349212985070209

/-! ## A341422.P8866414079787762423

`A091393(∏{p}[A034017(n+2), #])`
-/

namespace A341422.P8866414079787762423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091393 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A341422.P8866414079787762423

/-! ## A341422.P12509538090278743842

`A000010(∏{p}[3*A034017(n+2), A000005(#)])`
-/

namespace A341422.P12509538090278743842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p).toNat

end

end A341422.P12509538090278743842

/-! ## A341422.P5414566352487201931

`A000720(∏{p}[3*A034017(n+2), A000005(#)])`
-/

namespace A341422.P5414566352487201931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A034017 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000005 p).toNat

end

end A341422.P5414566352487201931

/-! ## A341422.P10590566261491202575

`A000010(p?[A000086(n+1)+1]*A057979(2*n))`
-/

namespace A341422.P10590566261491202575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A057979 (2 * n)).toNat

end

end A341422.P10590566261491202575

/-!
# A341423: Number of positive solutions to (x_1)^2 + (x_2)^2 + (x_3)^2 + (x_4)^2 <= n^2.

The programs for A341423, there is no canonical definition to state claims against.
-/

/-! ## A341423.P12779126304361533167

`A239353(A119354(n+3))`
-/

namespace A341423.P12779126304361533167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239353 (A119354 (n + 3)).toNat

end

end A341423.P12779126304361533167

/-!
# A341430: Leaders in the race of digits of Catalan's constant.

The programs for A341430, there is no canonical definition to state claims against.
-/

/-! ## A341430.P285445844214759787

`A341438(∑[runs[A341438(n+1)]])`
-/

namespace A341430.P285445844214759787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341438 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341438 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341430.P285445844214759787

/-!
# A341432: a(n) is the denominator of the asymptotic density of numbers divisible by their last digit in base n.

The programs for A341432, there is no canonical definition to state claims against.
-/

/-! ## A341432.P13783762754734281337

`lcm(A005843(A001405(n)), A138321(n+1))`
-/

namespace A341432.P13783762754734281337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005843 (A001405 n).toNat) (A138321 (n + 1))

end

end A341432.P13783762754734281337

/-! ## A341432.P911754088742468880

`lcm(A000265(n+1)+1, A232112(A077168(n)))`
-/

namespace A341432.P911754088742468880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (n + 1) + 1) (A232112 (A077168 n).toNat)

end

end A341432.P911754088742468880

/-! ## A341432.P7662345161042622297

`lcm(A002805(n+1), A253139(A092559(3*n+4)))`
-/

namespace A341432.P7662345161042622297
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002805 (n + 1)) (A253139 (A092559 (3 * n + 4)).toNat)

end

end A341432.P7662345161042622297

/-! ## A341432.P6455300222502375186

`lcm(A002805(n+1), A005843(A046826(n)))`
-/

namespace A341432.P6455300222502375186
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002805 (n + 1)) (A005843 (A046826 n).toNat)

end

end A341432.P6455300222502375186

/-! ## A341432.P1054848521990071404

`lcm(A131904(A133263(n)), A232090(n+1))`
-/

namespace A341432.P1054848521990071404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131904 (A133263 n).toNat) (A232090 (n + 1))

end

end A341432.P1054848521990071404

/-!
# A341433: Numbers that are divisible by the product of their digits in primorial base representation.

The programs for A341433, there is no canonical definition to state claims against.
-/

/-! ## A341433.P6087598741997096850

`eq[1, A355037(A355037(n)²)]`
-/

namespace A341433.P6087598741997096850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355037 (A355037 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341433.P6087598741997096850

/-! ## A341433.P15565906367725147172

`A351576(A286590(n+1)^A136400(n))`
-/

namespace A341433.P15565906367725147172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351576 (SequenceMachineLib.roundAway ((A286590 (n + 1) : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A341433.P15565906367725147172

/-!
# A341434: a(n) is the number of bases 1 < b < n in which n is divisible by its product of digits.

The programs for A341434, there is no canonical definition to state claims against.
-/

/-! ## A341434.P16748100587466069859

`A302242(A084797(A079097(n)))`
-/

namespace A341434.P16748100587466069859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A084797 (A079097 n).toNat).toNat

end

end A341434.P16748100587466069859

/-! ## A341434.P757227841133605389

`A001221(C(A325548(n), A001055(n+1)))`
-/

namespace A341434.P757227841133605389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.choose (A325548 n).toNat (A001055 (n + 1)).toNat)

end

end A341434.P757227841133605389

/-! ## A341434.P17328844370334577869

`A001222(xor(A041175(n), A180793(n+1)))`
-/

namespace A341434.P17328844370334577869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A041175 n) (A180793 (n + 1))).toNat

end

end A341434.P17328844370334577869

/-! ## A341434.P12427241097295090258

`A053188(A053188(n))+A023645(A187829(n+1))`
-/

namespace A341434.P12427241097295090258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A053188 n).toNat + A023645 (A187829 (n + 1)).toNat

end

end A341434.P12427241097295090258

/-!
# A341435: Numbers k that are divisible by their product of digits in a record number of bases 1 < b < k.

The programs for A341435, there is no canonical definition to state claims against.
-/

/-! ## A341435.P1706393472562515348

`record[A000005(A005086(n+1)*A088902(n+1))]`
-/

namespace A341435.P1706393472562515348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005086 (n + 1) * A088902 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341435.P1706393472562515348

/-! ## A341435.P1259096427489176977

`record[A000005(A008023(n))]`
-/

namespace A341435.P1259096427489176977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A008023 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341435.P1259096427489176977

/-! ## A341435.P11328158723217536513

`A141219(A066699(n+2))`
-/

namespace A341435.P11328158723217536513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141219 (A066699 (n + 2)).toNat

end

end A341435.P11328158723217536513

/-! ## A341435.P10283980333670947623

`record[A000005(A310502(n²))]`
-/

namespace A341435.P10283980333670947623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A310502 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341435.P10283980333670947623

/-! ## A341435.P10293602190246038018

`record[A355731(A360013(3*n+5))]`
-/

namespace A341435.P10293602190246038018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355731 (A360013 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341435.P10293602190246038018

/-!
# A341436: Numbers k such that k divides Sum_{j=1..k} j^(k+1-j).

The programs for A341436, there is no canonical definition to state claims against.
-/

/-! ## A341436.P7557558039416223651

`A322791(A025629(n+1))*A336127(n)`
-/

namespace A341436.P7557558039416223651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322791 (A025629 (n + 1)).toNat * A336127 n

end

end A341436.P7557558039416223651

/-!
# A341439: Table of generalized ménage numbers read by antidiagonals upward: T(n,k) is the number of permutations pi in S_k such that pi(i) != i, i+n (mod k) for all i; n, k >= 1.

The programs for A341439, there is no canonical definition to state claims against.
-/

/-! ## A341439.P11872393505114166992

`(A121240(n+1)-A057640(n+1))%A059268(n)`
-/

namespace A341439.P11872393505114166992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121240 (n + 1) - A057640 (n + 1)) (A059268 n)

end

end A341439.P11872393505114166992

/-! ## A341439.P4610429355856701109

`and(A219052(A219035(n+1)), A219108(n))`
-/

namespace A341439.P4610429355856701109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A219052 (A219035 (n + 1)).toNat) (A219108 n)

end

end A341439.P4610429355856701109

/-!
# A341441: Total number of triangles visible in a regular (2n+1)-gon with all diagonals drawn.

The programs for A341441, the canonical program `A341441.P10761316837159518611` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341441 has offset 1).

The definition of A341441 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341441.P8455998882927043135

`ogf((1+28x+63x^2-7x^3-20x^4-x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A341441.P8455998882927043135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28, 63, -7, -20, -1] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A341441.P8455998882927043135

namespace A341441

/-- `ogf((1+28x+63x^2-7x^3-20x^4-x^5)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P8455998882927043135.Spec : Prop :=
  ∀ n, P8455998882927043135.a n = A341441 (n + 1)

end A341441

/-! ## A341441.P10761316837159518611

`(n+1)*(2*(n+1)+1)*(2*(n+1)-1)*(2*(n+1)^3+21*(n+1)²-2*(n+1)+9)/90`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A341441

/-- `(n+1)*(2*(n+1)+1)*(2*(n+1)-1)*(2*(n+1)^3+21*(n+1)²-2*(n+1)+9)/90` -/
def P10761316837159518611.Spec : Prop :=
  ∀ n, P10761316837159518611.a n = (A341441 (n + 1) : ℚ)

end A341441

/-! ## A341441.P14857881591071919357

`A005732(2*n+3)`
-/

namespace A341441.P14857881591071919357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005732 (2 * n + 3)

end

end A341441.P14857881591071919357

namespace A341441

/-- `A005732(2*n+3)` -/
def P14857881591071919357.Spec : Prop :=
  ∀ n, P14857881591071919357.a n = A341441 (n + 1)

end A341441

/-! ## A341441.P16471640444972759606

`A006600(2*n+3)`
-/

namespace A341441.P16471640444972759606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006600 (2 * n + 3)

end

end A341441.P16471640444972759606

namespace A341441

/-- `A006600(2*n+3)` -/
def P16471640444972759606.Spec : Prop :=
  ∀ n, P16471640444972759606.a n = A341441 (n + 1)

end A341441

/-! ## A341441.P18364195618751148753

`record[A005732(n+3)/(-1)^n]`
-/

namespace A341441.P18364195618751148753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005732 (n + 3) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341441.P18364195618751148753

namespace A341441

/-- `record[A005732(n+3)/(-1)^n]` -/
def P18364195618751148753.Spec : Prop :=
  ∀ n, P18364195618751148753.a n = (A341441 (n + 1) : ℚ)

end A341441

/-! ## A341441.P14443569258567862868

`record[A006600(n+3)/(-1)^n]`
-/

namespace A341441.P14443569258567862868
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006600 (n + 3) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341441.P14443569258567862868

namespace A341441

/-- `record[A006600(n+3)/(-1)^n]` -/
def P14443569258567862868.Spec : Prop :=
  ∀ n, P14443569258567862868.a n = (A341441 (n + 1) : ℚ)

end A341441

/-! ## A341441.P15578078254732602689

`record[A005732(n+3)^A033999(n)]`
-/

namespace A341441.P15578078254732602689
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005732 (n + 3) : ℚ) ^ (A033999 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341441.P15578078254732602689

namespace A341441

/-- `record[A005732(n+3)^A033999(n)]` -/
def P15578078254732602689.Spec : Prop :=
  ∀ n, P15578078254732602689.a n = (A341441 (n + 1) : ℚ)

end A341441

/-! ## A341441.P6136232941888044964

`record[A005732(A029579(n+3))]`
-/

namespace A341441.P6136232941888044964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005732 (A029579 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341441.P6136232941888044964

namespace A341441

/-- `record[A005732(A029579(n+3))]` -/
def P6136232941888044964.Spec : Prop :=
  ∀ n, P6136232941888044964.a n = A341441 (n + 1)

end A341441

/-! ## A341441.P11197968544595836999

`A363173(2*n+3)+A244882(2*n)`
-/

namespace A341441.P11197968544595836999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363173 (2 * n + 3) + A244882 (2 * n)

end

end A341441.P11197968544595836999

namespace A341441

/-- `A363173(2*n+3)+A244882(2*n)` -/
def P11197968544595836999.Spec : Prop :=
  ∀ n, P11197968544595836999.a n = A341441 (n + 1)

end A341441

/-! ## A341441.P511687915148797060

`A095662(2*n)-A000914(2*n+1)`
-/

namespace A341441.P511687915148797060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095662 (2 * n) - A000914 (2 * n + 1)

end

end A341441.P511687915148797060

namespace A341441

/-- `A095662(2*n)-A000914(2*n+1)` -/
def P511687915148797060.Spec : Prop :=
  ∀ n, P511687915148797060.a n = A341441 (n + 1)

end A341441

/-!
# A341442: a(n) is the position of the start of the first occurrence of prime(n) after the decimal point in the expansion of e.

The programs for A341442, there is no canonical definition to state claims against.
-/

/-! ## A341442.P7813222307226469978

`A078197(A000040(n+1))`
-/

namespace A341442.P7813222307226469978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078197 (A000040 (n + 1)).toNat

end

end A341442.P7813222307226469978

/-! ## A341442.P13038264520981423586

`A078197(p?[xor(1, n)+1])`
-/

namespace A341442.P13038264520981423586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078197 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A341442.P13038264520981423586

/-! ## A341442.P15474291145822231270

`A078197(Δ[A007504(n)])`
-/

namespace A341442.P15474291145822231270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078197 (f1 (n + 1) - f1 n).toNat

end

end A341442.P15474291145822231270

/-! ## A341442.P270641012819245137

`A078197(A008578(n+2))`
-/

namespace A341442.P270641012819245137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078197 (A008578 (n + 2)).toNat

end

end A341442.P270641012819245137

/-! ## A341442.P9010130876052480227

`A078197(A182986(n+2))`
-/

namespace A341442.P9010130876052480227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078197 (A182986 (n + 2)).toNat

end

end A341442.P9010130876052480227

/-!
# A341443: a(n) is the number of subfields of the (2n)-th cyclotomic field Q(zeta_(2n)) = Q(exp(2*Pi*i/(2n))).

The programs for A341443, there is no canonical definition to state claims against.
-/

/-! ## A341443.P7597947883166427785

`A272831(2*(n+1))`
-/

namespace A341443.P7597947883166427785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272831 (2 * (n + 1))

end

end A341443.P7597947883166427785

/-! ## A341443.P4757082012749797242

`root(A272831(n+2+n), 2)²`
-/

namespace A341443.P4757082012749797242
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A272831 (n + 2 + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A341443.P4757082012749797242

/-! ## A341443.P12821596775003915510

`A000027(A272831(n+2+n))`
-/

namespace A341443.P12821596775003915510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A272831 (n + 2 + n)).toNat

end

end A341443.P12821596775003915510

/-! ## A341443.P11287672129497095855

`and(-1, A272831(A005843(n+1)))`
-/

namespace A341443.P11287672129497095855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A272831 (A005843 (n + 1)).toNat)

end

end A341443.P11287672129497095855

/-! ## A341443.P16985631792815091

`and(-1, A272831(A317440(n+1)))`
-/

namespace A341443.P16985631792815091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A272831 (A317440 (n + 1)).toNat)

end

end A341443.P16985631792815091

/-! ## A341443.P15701842354188890845

`A272831(n+2+n)%A038867(n)`
-/

namespace A341443.P15701842354188890845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272831 (n + 2 + n)) (A038867 n)

end

end A341443.P15701842354188890845

/-! ## A341443.P3757697290886853882

`lcm(A033999(n), A272831(n+2+n))`
-/

namespace A341443.P3757697290886853882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A272831 (n + 2 + n))

end

end A341443.P3757697290886853882

/-! ## A341443.P12260878134653321132

`A272831(n+2+n)^A007318(C(2, n))`
-/

namespace A341443.P12260878134653321132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272831 (n + 2 + n) : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A341443.P12260878134653321132

/-! ## A341443.P16590898008851587766

`A272831(n+2+n)/A000045(gcd(n, n+1))`
-/

namespace A341443.P16590898008851587766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272831 (n + 2 + n) : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A341443.P16590898008851587766

/-!
# A341444: Dirichlet inverse of A083399, where A083399(n) = 1 + omega(n).

The programs for A341444, the canonical program `A341444.P650715000189111678` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341444 has offset 1).

The definition of A341444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008480, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A341444.P650715000189111678

`(-1)^A001222(n+1)*∑{d}[n+1, A008683((n+1)/#)²*A008480(#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A341444

/-- `(-1)^A001222(n+1)*∑{d}[n+1, A008683((n+1)/#)²*A008480(#)]` -/
def P650715000189111678.Spec : Prop :=
  ∀ n, P650715000189111678.a n = (A341444 (n + 1) : ℚ)

end A341444

/-! ## A341444.P11570381312783074822

`∑{d}[n+1, A000010(#)*A349337((n+1)/#)]`
-/

namespace A341444.P11570381312783074822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A349337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341444.P11570381312783074822

namespace A341444

/-- `∑{d}[n+1, A000010(#)*A349337((n+1)/#)]` -/
def P11570381312783074822.Spec : Prop :=
  ∀ n, P11570381312783074822.a n = A341444 (n + 1)

end A341444

/-! ## A341444.P11886379743056068504

`∑{d}[n+1, A008683(#)*A355939((n+1)/#)]`
-/

namespace A341444.P11886379743056068504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A355939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A341444.P11886379743056068504

namespace A341444

/-- `∑{d}[n+1, A008683(#)*A355939((n+1)/#)]` -/
def P11886379743056068504.Spec : Prop :=
  ∀ n, P11886379743056068504.a n = A341444 (n + 1)

end A341444

/-!
# A341445: Triangle read by rows: T(n,k) is the number of Dyck paths of semilength n having degree of symmetry k (n >= 1, 1 <= k <= n).

The programs for A341445, there is no canonical definition to state claims against.
-/

/-! ## A341445.P3084548478639360895

`A298645(∑[char[∑[n]]]²-n)`
-/

namespace A341445.P3084548478639360895
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298645 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A341445.P3084548478639360895

/-! ## A341445.P10572182538875704291

`and(-1, A298645(A038722(n+1)))`
-/

namespace A341445.P10572182538875704291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298645 (A038722 (n + 1)).toNat)

end

end A341445.P10572182538875704291

/-! ## A341445.P1711911572820398797

`A298645(A038722(n+1))%A000032(n)`
-/

namespace A341445.P1711911572820398797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298645 (A038722 (n + 1)).toNat) (A000032 n)

end

end A341445.P1711911572820398797

/-! ## A341445.P10593290811145278304

`gcd(A000038(n), A298645(A038722(n+1)))`
-/

namespace A341445.P10593290811145278304
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A298645 (A038722 (n + 1)).toNat)

end

end A341445.P10593290811145278304

/-! ## A341445.P10972146663143448959

`lcm(A020985(n), A298645(A038722(n+1)))`
-/

namespace A341445.P10972146663143448959
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A298645 (A038722 (n + 1)).toNat)

end

end A341445.P10972146663143448959

/-! ## A341445.P17293880496370441021

`or(A151934(n), A298645(A038722(n+1)))`
-/

namespace A341445.P17293880496370441021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A151934 n) (A298645 (A038722 (n + 1)).toNat)

end

end A341445.P17293880496370441021

/-! ## A341445.P10199760944218637479

`A298645(A038722(n+1))^(A000040(n+1)%2)`
-/

namespace A341445.P10199760944218637479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298645 (A038722 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A341445.P10199760944218637479

/-! ## A341445.P2622162318788483396

`A298645(A038722(n+1))+A008683(32*(n+1))`
-/

namespace A341445.P2622162318788483396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298645 (A038722 (n + 1)).toNat + A008683 (32 * (n + 1))

end

end A341445.P2622162318788483396

/-!
# A341446: Heinz numbers of integer partitions whose only odd part is the smallest.

The programs for A341446, there is no canonical definition to state claims against.
-/

/-! ## A341446.P14166475734035687520

`∩[A340932(n+1), A349158(n+1)]`
-/

namespace A341446.P14166475734035687520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341446.P14166475734035687520

/-! ## A341446.P16988487482912138564

`∩[comp[A340933(n+1)], A349158(n+1)]`
-/

namespace A341446.P16988487482912138564
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340933 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A341446.P16988487482912138564

/-! ## A341446.P5273713687404987853

`∩[A340932(n+1), A349150(n+1)]`
-/

namespace A341446.P5273713687404987853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341446.P5273713687404987853

/-!
# A341447: Heinz numbers of integer partitions whose only even part is the smallest.

The programs for A341447, there is no canonical definition to state claims against.
-/

/-! ## A341447.P15751560386495662064

`eq[A028233(n+1), A344931(n+1)]+1`
-/

namespace A341447.P15751560386495662064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A341447.P15751560386495662064

/-! ## A341447.P9993822219244959036

`eq[A020639(n+2), A248101(n+2)]+2`
-/

namespace A341447.P9993822219244959036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A341447.P9993822219244959036

/-! ## A341447.P8201972574520225982

`A109613(eq[A028233(n+1), A344931(n+1)])`
-/

namespace A341447.P8201972574520225982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341447.P8201972574520225982

/-! ## A341447.P8422774794678716605

`A131738(eq[A028233(n+1), A344931(n+1)])`
-/

namespace A341447.P8422774794678716605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341447.P8422774794678716605

/-! ## A341447.P725973180011402061

`A165998(eq[A028233(n+1), A344931(n+1)])`
-/

namespace A341447.P725973180011402061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A341447.P725973180011402061

/-!
# A341448: Heinz numbers of integer partitions of type OO.

The programs for A341448, there is no canonical definition to state claims against.
-/

/-! ## A341448.P5290751468055907759

`eq[1, A353331(6*(n+1))]+1`
-/

namespace A341448.P5290751468055907759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353331 (6 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341448.P5290751468055907759

/-! ## A341448.P8300548594629779313

`eq[1, A261079(n+1)%2]+1`
-/

namespace A341448.P8300548594629779313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261079 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341448.P8300548594629779313

/-! ## A341448.P6658868016029302255

`eq[-1, A316524(n+1)%2]+1`
-/

namespace A341448.P6658868016029302255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316524 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A341448.P6658868016029302255

/-! ## A341448.P7434709721871193157

`lt[1, A353333(A008458(n))]`
-/

namespace A341448.P7434709721871193157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353333 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A341448.P7434709721871193157

/-! ## A341448.P14058382304642958902

`filter[A300063(n+1), A065043(#)]`
-/

namespace A341448.P14058382304642958902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A341448.P14058382304642958902

/-! ## A341448.P16611895161394774624

`filter[A300063(n+1), A353669(#)]`
-/

namespace A341448.P16611895161394774624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353669 (f1 j).toNat = 1) n)

end

end A341448.P16611895161394774624

/-! ## A341448.P11261343519373881210

`eq[2, A040035(A261079(n+1))]+1`
-/

namespace A341448.P11261343519373881210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040035 (A261079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341448.P11261343519373881210

/-! ## A341448.P5784801880584710163

`eq[2, A353381(A007913(n+1))]+1`
-/

namespace A341448.P5784801880584710163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353381 (A007913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A341448.P5784801880584710163

/-! ## A341448.P4276842759701275126

`eq[1, A261079(A065033(2*n))%2]`
-/

namespace A341448.P4276842759701275126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261079 (A065033 (2 * n)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341448.P4276842759701275126

/-! ## A341448.P4827783533175322510

`∩[A028260(n+1), A300063(n+1)]`
-/

namespace A341448.P4827783533175322510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A341448.P4827783533175322510

/-!
# A341449: Heinz numbers of integer partitions into odd parts > 1.

The programs for A341449, there is no canonical definition to state claims against.
-/

/-! ## A341449.P5299529428412190731

`record[A247503(or(1, n))]`
-/

namespace A341449.P5299529428412190731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (Nat.lor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341449.P5299529428412190731

/-! ## A341449.P11500993818031727096

`record[A247503(Δ[n²])]`
-/

namespace A341449.P11500993818031727096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341449.P11500993818031727096

/-! ## A341449.P14506122859294721287

`filter[2*n+1, A248101(#)]`
-/

namespace A341449.P14506122859294721287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248101 (f1 j) = 1) n)

end

end A341449.P14506122859294721287

/-! ## A341449.P45151288989085307

`filter[2*n+1, A319522(#)]`
-/

namespace A341449.P45151288989085307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319522 (f1 j) = 1) n)

end

end A341449.P45151288989085307

/-! ## A341449.P12441915629668504813

`filter[2*n+1, A351518(#)]`
-/

namespace A341449.P12441915629668504813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351518 (f1 j) = 1) n)

end

end A341449.P12441915629668504813

/-! ## A341449.P10170680190323211350

`eq[n, A247503(or(1, 3*n))]`
-/

namespace A341449.P10170680190323211350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (Nat.lor 1 (3 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A341449.P10170680190323211350

/-! ## A341449.P12447568491597140895

`eq[1, char[A247503(2*n+1)]]`
-/

namespace A341449.P12447568491597140895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341449.P12447568491597140895

/-! ## A341449.P15905123036517162824

`eq[1, char[A319525(2*n+1)]]`
-/

namespace A341449.P15905123036517162824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (2 * n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341449.P15905123036517162824

/-! ## A341449.P10426616363039205419

`sqrt(record[A247503(2*n+3)²])`
-/

namespace A341449.P10426616363039205419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (2 * n + 3) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)

end

end A341449.P10426616363039205419

/-! ## A341449.P13197261092146490467

`record[C(A247503(n+2), and(1, n))]`
-/

namespace A341449.P13197261092146490467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A247503 (n + 2)).toNat (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341449.P13197261092146490467

/-!
# A341450: Number of strict integer partitions of n that are empty or have smallest part not dividing all the others.

The programs for A341450, there is no canonical definition to state claims against.
-/

/-! ## A341450.P3722068633244010167

`A000009(n)-∑{d}[n, A025147(#-1)]`
-/

namespace A341450.P3722068633244010167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - ∑ d ∈ Nat.divisors (f1 n), A025147 (d - 1)

end

end A341450.P3722068633244010167

/-! ## A341450.P11026896677917038508

`A343379(n)+A343380(n)%(n+1)`
-/

namespace A341450.P11026896677917038508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343379 n + Int.tmod (A343380 n) (n + 1 : ℤ)

end

end A341450.P11026896677917038508

/-! ## A341450.P10492619102120764424

`A343380(round(acot(n)+n))+A343379(n)`
-/

namespace A341450.P10492619102120764424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A343379 n

end

end A341450.P10492619102120764424

/-! ## A341450.P10332094562088104678

`A343380(abs(1-n)+1)+A343379(n)`
-/

namespace A341450.P10332094562088104678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (|1 - (n : ℤ)| + 1).toNat + A343379 n

end

end A341450.P10332094562088104678

/-! ## A341450.P8235298563031807578

`A025147(n)-A098965(A028310(n))`
-/

namespace A341450.P8235298563031807578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A098965 (A028310 n).toNat

end

end A341450.P8235298563031807578

/-! ## A341450.P17911457791572442542

`A025147(n)-A098965(A123108(2*n))`
-/

namespace A341450.P17911457791572442542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A098965 (A123108 (2 * n)).toNat

end

end A341450.P17911457791572442542

/-! ## A341450.P16301423392791947145

`A343379(n)+A343380(A000007(n)+n)`
-/

namespace A341450.P16301423392791947145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343379 n + A343380 (A000007 n + (n : ℤ)).toNat

end

end A341450.P16301423392791947145

/-! ## A341450.P2584738592723433799

`A025147(n)-A098965(A000007(n)+n)`
-/

namespace A341450.P2584738592723433799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025147 n - A098965 (A000007 n + (n : ℤ)).toNat

end

end A341450.P2584738592723433799

/-! ## A341450.P5042295805544400802

`A343347(n)+A343379(n)-A343378(n)`
-/

namespace A341450.P5042295805544400802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343347 n + (A343379 n - A343378 n)

end

end A341450.P5042295805544400802

/-! ## A341450.P101207746887507691

`A343379(n)-(A000007(n)-A343380(n))`
-/

namespace A341450.P101207746887507691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343379 n - (A000007 n - A343380 n)

end

end A341450.P101207746887507691

/-!
# A341451: Number of partitions of n into 4 nonprime parts.

The programs for A341451, there is no canonical definition to state claims against.
-/

/-! ## A341451.P2154131491658663386

`A347662(n+4)-A307857(n+4)`
-/

namespace A341451.P2154131491658663386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347662 (n + 4) - A307857 (n + 4)

end

end A341451.P2154131491658663386

/-! ## A341451.P1550678961673322009

`A330956(A133684(n))+A005171(n+1)`
-/

namespace A341451.P1550678961673322009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330956 (A133684 n).toNat + A005171 (n + 1)

end

end A341451.P1550678961673322009

/-! ## A341451.P13033290703420055115

`A341460(n)-A285957(A285906(n+1))`
-/

namespace A341451.P13033290703420055115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A285957 (A285906 (n + 1)).toNat

end

end A341451.P13033290703420055115

/-! ## A341451.P564322448262518779

`A341460(n)-A006926(A035582(n+3))`
-/

namespace A341451.P564322448262518779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A006926 (A035582 (n + 3)).toNat

end

end A341451.P564322448262518779

/-! ## A341451.P13983979533665658604

`A341454(n+7)-A285957(A285906(n+1))`
-/

namespace A341451.P13983979533665658604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341454 (n + 7) - A285957 (A285906 (n + 1)).toNat

end

end A341451.P13983979533665658604

/-!
# A341452: Number of partitions of n into 5 nonprime parts.

The programs for A341452, there is no canonical definition to state claims against.
-/

/-! ## A341452.P10578413550825457661

`A347663(n+5)-A347662(n+5)`
-/

namespace A341452.P10578413550825457661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347663 (n + 5) - A347662 (n + 5)

end

end A341452.P10578413550825457661

/-! ## A341452.P17758253394869718067

`A341460(n)-A006926(A035582(n))`
-/

namespace A341452.P17758253394869718067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A006926 (A035582 n).toNat

end

end A341452.P17758253394869718067

/-! ## A341452.P11599627059280237459

`A341453(n+6)-A006926(A035582(n))`
-/

namespace A341452.P11599627059280237459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341453 (n + 6) - A006926 (A035582 n).toNat

end

end A341452.P11599627059280237459

/-! ## A341452.P4321476374902241255

`A341454(n+7)-A006926(A035582(n))`
-/

namespace A341452.P4321476374902241255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341454 (n + 7) - A006926 (A035582 n).toNat

end

end A341452.P4321476374902241255

/-! ## A341452.P16228793097388718358

`A341457(n+9)-A006926(A035582(n))`
-/

namespace A341452.P16228793097388718358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341457 (n + 9) - A006926 (A035582 n).toNat

end

end A341452.P16228793097388718358

/-!
# A341453: Number of partitions of n into 6 nonprime parts.

The programs for A341453, there is no canonical definition to state claims against.
-/

/-! ## A341453.P8134686140457863805

`A347664(n+6)-A347663(n+6)`
-/

namespace A341453.P8134686140457863805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347664 (n + 6) - A347663 (n + 6)

end

end A341453.P8134686140457863805

/-! ## A341453.P2619273759844495194

`A341460(n)-(A192541(n)+A178798(A340621(n)))`
-/

namespace A341453.P2619273759844495194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - (A192541 n + A178798 (A340621 n).toNat)

end

end A341453.P2619273759844495194

/-! ## A341453.P17116556380013738973

`A341457(n+9)-(A192541(n)+A185284(A175740(n)))`
-/

namespace A341453.P17116556380013738973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341457 (n + 9) - (A192541 n + A185284 (A175740 n).toNat)

end

end A341453.P17116556380013738973

/-! ## A341453.P14707366964225353500

`A341454(n+7)-A185284(A005117(n+1))`
-/

namespace A341453.P14707366964225353500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341454 (n + 7) - A185284 (A005117 (n + 1)).toNat

end

end A341453.P14707366964225353500

/-! ## A341453.P3826842485045254693

`A341454(n+7)-A206499(A000009(n))`
-/

namespace A341453.P3826842485045254693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341454 (n + 7) - A206499 (A000009 n).toNat

end

end A341453.P3826842485045254693

/-!
# A341454: Number of partitions of n into 7 nonprime parts.

The programs for A341454, there is no canonical definition to state claims against.
-/

/-! ## A341454.P2984613559560972423

`A341460(n)-A185284(A175439(n+1))`
-/

namespace A341454.P2984613559560972423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A185284 (A175439 (n + 1)).toNat

end

end A341454.P2984613559560972423

/-! ## A341454.P2781884164195288175

`A341457(n+9)-A185284(A175439(n+1))`
-/

namespace A341454.P2781884164195288175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341457 (n + 9) - A185284 (A175439 (n + 1)).toNat

end

end A341454.P2781884164195288175

/-! ## A341454.P705483253498107640

`A341455(n+8)+A121373(A345924(2*n+3))`
-/

namespace A341454.P705483253498107640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341455 (n + 8) + A121373 (A345924 (2 * n + 3)).toNat

end

end A341454.P705483253498107640

/-! ## A341454.P610183109056072845

`A341460(n)-A185284(A175740(n))`
-/

namespace A341454.P610183109056072845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A185284 (A175740 n).toNat

end

end A341454.P610183109056072845

/-! ## A341454.P4833112557861610503

`A341460(n)-A178798(A340621(n))`
-/

namespace A341454.P4833112557861610503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A178798 (A340621 n).toNat

end

end A341454.P4833112557861610503

/-!
# A341455: Number of partitions of n into 8 nonprime parts.

The programs for A341455, there is no canonical definition to state claims against.
-/

/-! ## A341455.P12833727209556322383

`A341460(n)-A185284(A013919(n+1))`
-/

namespace A341455.P12833727209556322383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A185284 (A013919 (n + 1)).toNat

end

end A341455.P12833727209556322383

/-! ## A341455.P7366835154462326109

`A341457(n+9)-A185284(A013919(n+1))`
-/

namespace A341455.P7366835154462326109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341457 (n + 9) - A185284 (A013919 (n + 1)).toNat

end

end A341455.P7366835154462326109

/-! ## A341455.P16539053893635312898

`A341460(n)-A185284(A023895(n+1))`
-/

namespace A341455.P16539053893635312898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A185284 (A023895 (n + 1)).toNat

end

end A341455.P16539053893635312898

/-! ## A341455.P9223158443558550631

`A341457(n+9)-A185284(A023895(n+1))`
-/

namespace A341455.P9223158443558550631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341457 (n + 9) - A185284 (A023895 (n + 1)).toNat

end

end A341455.P9223158443558550631

/-! ## A341455.P18446102308240763382

`A341457(n+9)-A121373(A087442(n+5))`
-/

namespace A341455.P18446102308240763382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341457 (n + 9) - A121373 (A087442 (n + 5)).toNat

end

end A341455.P18446102308240763382

/-!
# A341456: Let T be the set of sequences {t(k), k >= 0} such that for any k >= 3, t(k) = t(k-1) + t(k-2) + t(k-3); a(n) is the least possible value of t(0) + t(1) + t(2) for an element t of T containing n.

The programs for A341456, there is no canonical definition to state claims against.
-/

/-! ## A341456.P1198480575551511634

`A341018(A341474(n))^A089723(A000032(n))`
-/

namespace A341456.P1198480575551511634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341018 (A341474 n).toNat : ℚ) ^ (A089723 (A000032 n).toNat : ℤ)

end

end A341456.P1198480575551511634

/-! ## A341456.P1861644150714711514

`A001221(A140952(2*n+1)+A139439(n+1))`
-/

namespace A341456.P1861644150714711514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A140952 (2 * n + 1) + A139439 (n + 1)).toNat

end

end A341456.P1861644150714711514

/-! ## A341456.P9742269638133585257

`A087436(A194531(3*n+1)+A035690(3*n+1))`
-/

namespace A341456.P9742269638133585257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A194531 (3 * n + 1) + A035690 (3 * n + 1)).toNat

end

end A341456.P9742269638133585257

/-! ## A341456.P6708270716319789177

`A067148(A066679(n+1))`
-/

namespace A341456.P6708270716319789177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (A066679 (n + 1)).toNat

end

end A341456.P6708270716319789177

/-! ## A341456.P9761944650042056031

`A117118(A238961(n+1))`
-/

namespace A341456.P9761944650042056031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117118 (A238961 (n + 1)).toNat

end

end A341456.P9761944650042056031

/-!
# A341457: Number of partitions of n into 9 nonprime parts.

The programs for A341457, there is no canonical definition to state claims against.
-/

/-! ## A341457.P13626196634171088605

`A341460(n)-A025456(A185255(n))`
-/

namespace A341457.P13626196634171088605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A025456 (A185255 n).toNat

end

end A341457.P13626196634171088605

/-! ## A341457.P9953646270912843777

`A341460(n)-A029331(A034461(n+1)!)`
-/

namespace A341457.P9953646270912843777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - A029331 (Nat.factorial (A034461 (n + 1)).toNat)

end

end A341457.P9953646270912843777

/-! ## A341457.P3441518642276739958

`A341460(n)-val(A002095(n), A126357(2*(n+2)))`
-/

namespace A341457.P3441518642276739958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341460 (n + 10) - (SequenceMachineLib.valuation (A002095 n).toNat (A126357 (2 * (n + 2))).toNat : ℤ)

end

end A341457.P3441518642276739958

/-! ## A341457.P13541356748706084173

`xor(A324095(A034851(n)), A341460(n))`
-/

namespace A341457.P13541356748706084173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A324095 (A034851 n).toNat) (A341460 (n + 10))

end

end A341457.P13541356748706084173

/-! ## A341457.P445579741493192493

`A025469(n)+A341460(n)-A238016(A185255(n))`
-/

namespace A341457.P445579741493192493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 n + (A341460 (n + 10) - A238016 (A185255 n).toNat)

end

end A341457.P445579741493192493

/-!
# A341458: Unique square array T(n, k) read by antidiagonals, n, k > 0, such that A000069(T(n, k)) = A341288(A000069(n), A000069(k)).

The programs for A341458, there is no canonical definition to state claims against.
-/

/-! ## A341458.P13271189021339294523

`A000005(5^A257092(n))`
-/

namespace A341458.P13271189021339294523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A257092 n : ℤ))).toNat

end

end A341458.P13271189021339294523

/-! ## A341458.P9892422726156770457

`A257564((A257092(n)+1)²)`
-/

namespace A341458.P9892422726156770457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257564 ((A257092 n + 1) ^ 2).toNat

end

end A341458.P9892422726156770457

/-! ## A341458.P2132992504892768996

`A001222(5^A257092(n))+1`
-/

namespace A341458.P2132992504892768996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A257092 n : ℤ))).toNat + 1

end

end A341458.P2132992504892768996

/-! ## A341458.P14651211138947166816

`A257092(n)+A057427(A091965(n))`
-/

namespace A341458.P14651211138947166816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257092 n + A057427 (A091965 n).toNat

end

end A341458.P14651211138947166816

/-! ## A341458.P1023230940869812000

`A356157(A000079(n))+A257092(n)`
-/

namespace A341458.P1023230940869812000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356157 (A000079 n).toNat + A257092 n

end

end A341458.P1023230940869812000

/-!
# A341459: Number of compositions of n^2 into n prime parts.

The programs for A341459, there is no canonical definition to state claims against.
-/

/-! ## A341459.P8545753324607982069

`A117483(ceil(cosh(1-n)))`
-/

namespace A341459.P8545753324607982069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117483 ⌈Real.cosh (1 - (n : ℤ) : ℝ)⌉.toNat

end

end A341459.P8545753324607982069

/-! ## A341459.P2259098440779981697

`A240219(a(n-1)+10)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=4`
-/

namespace A341459.P2259098440779981697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 4] fun n a =>
  A240219 (a (n - 1) + 10).toNat

end

end A341459.P2259098440779981697

/-!
# A341460: Number of partitions of n into 10 nonprime parts.

The programs for A341460, there is no canonical definition to state claims against.
-/

/-! ## A341460.P2672907047983576085

`A341457(n+9)+A025456(A185255(n))`
-/

namespace A341460.P2672907047983576085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341457 (n + 9) + A025456 (A185255 n).toNat

end

end A341460.P2672907047983576085

/-! ## A341460.P16946537662085142662

`A341457(n+9)+A185238(A362905(n))`
-/

namespace A341460.P16946537662085142662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341457 (n + 9) + A185238 (A362905 n).toNat

end

end A341460.P16946537662085142662

/-!
# A341461: Number of partitions of n into 3 distinct nonprime parts.

The programs for A341461, there is no canonical definition to state claims against.
-/

/-! ## A341461.P16626875915783552091

`A266755(n)-A000007(A066814(n+1))`
-/

namespace A341461.P16626875915783552091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266755 n - A000007 (A066814 (n + 1)).toNat

end

end A341461.P16626875915783552091

/-! ## A341461.P11615203467716629431

`and(A055268(A001045(n)), A266755(n))`
-/

namespace A341461.P11615203467716629431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055268 (A001045 n).toNat) (A266755 n)

end

end A341461.P11615203467716629431

/-! ## A341461.P3572664330035200321

`A029172(n)+A025456(2*A022092(n))`
-/

namespace A341461.P3572664330035200321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029172 n + A025456 (2 * A022092 n).toNat

end

end A341461.P3572664330035200321

/-! ## A341461.P333629080548453295

`and(A007069(A007068(n+1)), A266755(n))`
-/

namespace A341461.P333629080548453295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007069 (A007068 (n + 1)).toNat) (A266755 n)

end

end A341461.P333629080548453295

/-! ## A341461.P5324228871008426719

`A285573(2^floor(n/2))-A160385(n)`
-/

namespace A341461.P5324228871008426719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ))).toNat - A160385 n

end

end A341461.P5324228871008426719

/-!
# A341462: Number of partitions of n into 4 distinct nonprime parts.

The programs for A341462, there is no canonical definition to state claims against.
-/

/-! ## A341462.P12978251480658818782

`A319951(A035363(n)+A062157(n+1)*A106507(n))`
-/

namespace A341462.P12978251480658818782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A035363 n + A062157 (n + 1) * A106507 n).toNat

end

end A341462.P12978251480658818782

/-! ## A341462.P16050130182974927101

`A228710(n)+A000523(A004526(n)!)`
-/

namespace A341462.P16050130182974927101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 n + A000523 (Nat.factorial (A004526 n).toNat)

end

end A341462.P16050130182974927101

/-! ## A341462.P12791574971107373786

`A061775(C(A367221(n+3), A367221(n)))`
-/

namespace A341462.P12791574971107373786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (Nat.choose (A367221 (n + 3)).toNat (A367221 n).toNat)

end

end A341462.P12791574971107373786

/-!
# A341463: a(n) = (-1)^(n+1) * (3^n+1)/2.

The programs for A341463, the canonical program `A341463.P16241205650339934599` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341463 has offset 0).

The definition of A341463 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341463.P16241205650339934599

`ogf((-1-2x)/(1+4x+3x^2))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A341463

/-- `ogf((-1-2x)/(1+4x+3x^2))` -/
def P16241205650339934599.Spec : Prop :=
  ∀ n, P16241205650339934599.a n = A341463 n

theorem P16241205650339934599.correct : P16241205650339934599.Spec := by
  intro n
  simp only [A341463]

end A341463

/-! ## A341463.P4018950542329110226

`(-1)^(n+1)*(3^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341463.P4018950542329110226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ (n + 1) * (3 ^ n + 1 : ℤ) : ℚ) / 2

end

end A341463.P4018950542329110226

namespace A341463

/-- `(-1)^(n+1)*(3^n+1)/2` -/
def P4018950542329110226.Spec : Prop :=
  ∀ n, P4018950542329110226.a n = (A341463 n : ℚ)

end A341463

/-! ## A341463.P8721614873731695018

`xor(3*a(n-1)+1, -4)` with `a(0)=-1`
-/

namespace A341463.P8721614873731695018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  Int.xor (3 * a (n - 1) + 1) (-4)

end

end A341463.P8721614873731695018

namespace A341463

/-- `xor(3*a(n-1)+1, -4)` -/
def P8721614873731695018.Spec : Prop :=
  ∀ n, P8721614873731695018.a n = A341463 n

end A341463

/-! ## A341463.P7943698036152508736

`(-3)^(n-1)-a(n-1)` with `a(0)=-1`
-/

namespace A341463.P7943698036152508736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [-1] fun n a =>
  (-3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A341463.P7943698036152508736

namespace A341463

/-- `(-3)^(n-1)-a(n-1)` -/
def P7943698036152508736.Spec : Prop :=
  ∀ n, P7943698036152508736.a n = (A341463 n : ℚ)

end A341463

/-! ## A341463.P9371726015611878426

`xor(4-3*(1-a(n-1)), -4)` with `a(0)=-1`
-/

namespace A341463.P9371726015611878426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  Int.xor (4 - 3 * (1 - a (n - 1))) (-4)

end

end A341463.P9371726015611878426

namespace A341463

/-- `xor(4-3*(1-a(n-1)), -4)` -/
def P9371726015611878426.Spec : Prop :=
  ∀ n, P9371726015611878426.a n = A341463 n

end A341463

/-! ## A341463.P9812661568574202901

`Δ[and(1, n)-2-3*a(n-1)]` with `a(0)=0`
-/

namespace A341463.P9812661568574202901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (Nat.land 1 n : ℤ) - 2 - 3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A341463.P9812661568574202901

namespace A341463

/-- `Δ[and(1, n)-2-3*a(n-1)]` -/
def P9812661568574202901.Spec : Prop :=
  ∀ n, P9812661568574202901.a n = A341463 n

end A341463

/-! ## A341463.P542282970002931612

`a(n-2)-4*(a(n-1)+a(n-2))` with `a(0)=-1, a(1)=2`
-/

namespace A341463.P542282970002931612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, 2] fun n a =>
  a (n - 2) - 4 * (a (n - 1) + a (n - 2))

end

end A341463.P542282970002931612

namespace A341463

/-- `a(n-2)-4*(a(n-1)+a(n-2))` -/
def P542282970002931612.Spec : Prop :=
  ∀ n, P542282970002931612.a n = A341463 n

end A341463

/-! ## A341463.P2042515392570733463

`1-or(2, A076040(n))`
-/

namespace A341463.P2042515392570733463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 2 (A076040 n)

end

end A341463.P2042515392570733463

namespace A341463

/-- `1-or(2, A076040(n))` -/
def P2042515392570733463.Spec : Prop :=
  ∀ n, P2042515392570733463.a n = A341463 n

end A341463

/-! ## A341463.P7829244931658973870

`xor(Δ[xor(1, n)], A003462(n))`
-/

namespace A341463.P7829244931658973870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) (A003462 n)

end

end A341463.P7829244931658973870

namespace A341463

/-- `xor(Δ[xor(1, n)], A003462(n))` -/
def P7829244931658973870.Spec : Prop :=
  ∀ n, P7829244931658973870.a n = A341463 n

end A341463

/-! ## A341463.P14961470480296140279

`A033999(n+1)-A076040(n)`
-/

namespace A341463.P14961470480296140279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A076040 n

end

end A341463.P14961470480296140279

namespace A341463

/-- `A033999(n+1)-A076040(n)` -/
def P14961470480296140279.Spec : Prop :=
  ∀ n, P14961470480296140279.a n = A341463 n

end A341463

/-! ## A341463.P6706583994700825203

`A165553(n)-A000034(n+1)`
-/

namespace A341463.P6706583994700825203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165553 n - A000034 (n + 1)

end

end A341463.P6706583994700825203

namespace A341463

/-- `A165553(n)-A000034(n+1)` -/
def P6706583994700825203.Spec : Prop :=
  ∀ n, P6706583994700825203.a n = A341463 n

end A341463

/-! ## A341463.P4346195311323140266

`A105812(n+2)-A076040(n)`
-/

namespace A341463.P4346195311323140266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105812 (n + 2) - A076040 n

end

end A341463.P4346195311323140266

namespace A341463

/-- `A105812(n+2)-A076040(n)` -/
def P4346195311323140266.Spec : Prop :=
  ∀ n, P4346195311323140266.a n = A341463 n

end A341463

/-! ## A341463.P479289976303092510

`A000034(n)-2*A084567(n)`
-/

namespace A341463.P479289976303092510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - 2 * A084567 n

end

end A341463.P479289976303092510

namespace A341463

/-- `A000034(n)-2*A084567(n)` -/
def P479289976303092510.Spec : Prop :=
  ∀ n, P479289976303092510.a n = A341463 n

end A341463

/-! ## A341463.P8834626411224533497

`A165553(n)-2/A000034(n)`
-/

namespace A341463.P8834626411224533497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165553 n : ℚ) - 2 / (A000034 n : ℚ)

end

end A341463.P8834626411224533497

namespace A341463

/-- `A165553(n)-2/A000034(n)` -/
def P8834626411224533497.Spec : Prop :=
  ∀ n, P8834626411224533497.a n = (A341463 n : ℚ)

end A341463

/-! ## A341463.P5705882406708275051

`A038608(n+1)+A038608(n)-A076040(n)`
-/

namespace A341463.P5705882406708275051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (n + 1) + (A038608 n - A076040 n)

end

end A341463.P5705882406708275051

namespace A341463

/-- `A038608(n+1)+A038608(n)-A076040(n)` -/
def P5705882406708275051.Spec : Prop :=
  ∀ n, P5705882406708275051.a n = A341463 n

end A341463

/-! ## A341463.P2564897212319798618

`A033999(n+1)-A003462(n)*A033999(n)`
-/

namespace A341463.P2564897212319798618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A003462 n * A033999 n

end

end A341463.P2564897212319798618

namespace A341463

/-- `A033999(n+1)-A003462(n)*A033999(n)` -/
def P2564897212319798618.Spec : Prop :=
  ∀ n, P2564897212319798618.a n = A341463 n

end A341463

/-! ## A341463.P10848773184018138321

`(A005578(n)-A135351(n+1))*A007051(n)`
-/

namespace A341463.P10848773184018138321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005578 n - A135351 (n + 1)) * A007051 n

end

end A341463.P10848773184018138321

namespace A341463

/-- `(A005578(n)-A135351(n+1))*A007051(n)` -/
def P10848773184018138321.Spec : Prop :=
  ∀ n, P10848773184018138321.a n = A341463 n

end A341463

/-! ## A341463.P1395412380609276063

`A076040(n)-A352779(n)`
-/

namespace A341463.P1395412380609276063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n - A352779 n

end

end A341463.P1395412380609276063

namespace A341463

/-- `A076040(n)-A352779(n)` -/
def P1395412380609276063.Spec : Prop :=
  ∀ n, P1395412380609276063.a n = A341463 n

end A341463

/-! ## A341463.P12955341282526811736

`A076040(n+1)+2*A076040(n)`
-/

namespace A341463.P12955341282526811736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 (n + 1) + 2 * A076040 n

end

end A341463.P12955341282526811736

namespace A341463

/-- `A076040(n+1)+2*A076040(n)` -/
def P12955341282526811736.Spec : Prop :=
  ∀ n, P12955341282526811736.a n = A341463 n

end A341463

/-!
# A341465: Number of partitions of n into 6 distinct nonprime parts.

The programs for A341465, there is no canonical definition to state claims against.
-/

/-! ## A341465.P12673736762520481500

`A302777(A001198(n+4))+A087153(n)`
-/

namespace A341465.P12673736762520481500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (A001198 (n + 4)).toNat + A087153 n

end

end A341465.P12673736762520481500

/-! ## A341465.P13908923153875244568

`A363370(n)-A000120(A214202(n))`
-/

namespace A341465.P13908923153875244568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363370 n - A000120 (A214202 n).toNat

end

end A341465.P13908923153875244568

/-! ## A341465.P12839159102914906651

`A087153(n)+A010051(A340472(n+1))`
-/

namespace A341465.P12839159102914906651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087153 n + A010051 (A340472 (n + 1)).toNat

end

end A341465.P12839159102914906651

/-! ## A341465.P12032834825059929818

`A265744(A006882(n)-A265404(2*n))`
-/

namespace A341465.P12032834825059929818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265744 (A006882 n - A265404 (2 * n)).toNat

end

end A341465.P12032834825059929818

/-!
# A341466: Number of partitions of n into 7 distinct nonprime parts.

The programs for A341466, there is no canonical definition to state claims against.
-/

/-! ## A341466.P14613586840992269514

`A000009(n)-A029240(A187829(n+1))`
-/

namespace A341466.P14613586840992269514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A029240 (A187829 (n + 1)).toNat

end

end A341466.P14613586840992269514

/-! ## A341466.P15959616514809235032

`A060025(n)+A024791(A077168(n))`
-/

namespace A341466.P15959616514809235032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060025 n + A024791 (A077168 n).toNat

end

end A341466.P15959616514809235032

/-! ## A341466.P3135329756899829135

`A111429(A251760(n))+A037145(n)`
-/

namespace A341466.P3135329756899829135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111429 (A251760 n).toNat + A037145 n

end

end A341466.P3135329756899829135

/-! ## A341466.P11604209959716024214

`A325193(n)+A144611(A155559(n))`
-/

namespace A341466.P11604209959716024214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325193 n + A144611 (A155559 n).toNat

end

end A341466.P11604209959716024214

/-! ## A341466.P16260994692137520934

`A000009(n)-A029240(A077168(n))`
-/

namespace A341466.P16260994692137520934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A029240 (A077168 n).toNat

end

end A341466.P16260994692137520934

/-!
# A341467: Number of partitions of n into 8 distinct nonprime parts.

The programs for A341467, there is no canonical definition to state claims against.
-/

/-! ## A341467.P5895609976340733291

`A092984(A001522(n))+A026810(n)`
-/

namespace A341467.P5895609976340733291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092984 (A001522 n).toNat + A026810 n

end

end A341467.P5895609976340733291

/-! ## A341467.P6625365896644996451

`A026810(n)+A000034(A332727(n))`
-/

namespace A341467.P6625365896644996451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n + A000034 (A332727 n).toNat

end

end A341467.P6625365896644996451

/-! ## A341467.P17707020191052272451

`A290310(A290300(n))+A026810(n)`
-/

namespace A341467.P17707020191052272451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290310 (A290300 n).toNat + A026810 n

end

end A341467.P17707020191052272451

/-! ## A341467.P5591207102681821315

`A268643(A353952(n+1))+A026810(n)`
-/

namespace A341467.P5591207102681821315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 (A353952 (n + 1)).toNat + A026810 n

end

end A341467.P5591207102681821315

/-!
# A341469: Number of partitions of n into 10 distinct nonprime parts.

The programs for A341469, there is no canonical definition to state claims against.
-/

/-! ## A341469.P15367861936357680331

`A344635(A187829(n+1))+A037145(n)`
-/

namespace A341469.P15367861936357680331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344635 (A187829 (n + 1)).toNat + A037145 n

end

end A341469.P15367861936357680331

/-! ## A341469.P8189723268293384237

`A101200(n+4)-A001899(A056730(n+1))`
-/

namespace A341469.P8189723268293384237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101200 (n + 4) - A001899 (A056730 (n + 1)).toNat

end

end A341469.P8189723268293384237

/-! ## A341469.P10663184674359942611

`A344635(A077168(n))+A037145(n)`
-/

namespace A341469.P10663184674359942611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344635 (A077168 n).toNat + A037145 n

end

end A341469.P10663184674359942611

/-! ## A341469.P11126861337287537907

`A002865(n)-A328499(A000837(n))`
-/

namespace A341469.P11126861337287537907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A328499 (A000837 n).toNat

end

end A341469.P11126861337287537907

/-! ## A341469.P10663438719165591562

`A048766(A000032(n)*A007690(n))`
-/

namespace A341469.P10663438719165591562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A000032 n * A007690 n).toNat

end

end A341469.P10663438719165591562

/-!
# A341470: Square array T(n,k), n >= 0, k >= 0, read by antidiagonals, where T(n,k) = Sum_{j=0..n} binomial(k*n,n-j) * binomial(k*n+j,j).

The programs for A341470, the canonical program `A341470.P2028729651161999736` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341470 has offset 0).

The definition of A341470 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341470.P2028729651161999736

`A008288(C(col(n)+(row(n)-col(n))*col(n)+1, 2)+col(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A341470

/-- `A008288(C(col(n)+(row(n)-col(n))*col(n)+1, 2)+col(n))` -/
def P2028729651161999736.Spec : Prop :=
  ∀ n, P2028729651161999736.a n = A341470 n

theorem P2028729651161999736.correct : P2028729651161999736.Spec := by
  intro n
  simp only [A341470]

end A341470

/-! ## A341470.P8151853210075042127

`A335333(n)-A088194(A294950(n))`
-/

namespace A341470.P8151853210075042127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 n - A088194 (A294950 n).toNat

end

end A341470.P8151853210075042127

namespace A341470

/-- `A335333(n)-A088194(A294950(n))` -/
def P8151853210075042127.Spec : Prop :=
  ∀ n, P8151853210075042127.a n = A341470 n

end A341470

/-! ## A341470.P5989134822460403620

`A335333(n)-A111829(A299905(n))`
-/

namespace A341470.P5989134822460403620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335333 n - A111829 (A299905 n).toNat

end

end A341470.P5989134822460403620

namespace A341470

/-- `A335333(n)-A111829(A299905(n))` -/
def P5989134822460403620.Spec : Prop :=
  ∀ n, P5989134822460403620.a n = A341470 n

end A341470

/-! ## A341470.P5511660004664137036

`or(A058175(A059922(n)), A083075(n))`
-/

namespace A341470.P5511660004664137036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A058175 (A059922 n).toNat) (A083075 n)

end

end A341470.P5511660004664137036

namespace A341470

/-- `or(A058175(A059922(n)), A083075(n))` -/
def P5511660004664137036.Spec : Prop :=
  ∀ n, P5511660004664137036.a n = A341470 n

end A341470

/-! ## A341470.P8179144786271553499

`or(A083075(n), A218452(A054142(n)))`
-/

namespace A341470.P8179144786271553499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A083075 n) (A218452 (A054142 n).toNat)

end

end A341470.P8179144786271553499

namespace A341470

/-- `or(A083075(n), A218452(A054142(n)))` -/
def P8179144786271553499.Spec : Prop :=
  ∀ n, P8179144786271553499.a n = A341470 n

end A341470

/-!
# A341471: Number of antisymmetric, antitransitive relations on n labeled nodes.

The programs for A341471, there is no canonical definition to state claims against.
-/

/-! ## A341471.P9710234883837268978

`A280226(n!²)`
-/

namespace A341471.P9710234883837268978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280226 (Nat.factorial n ^ 2)

end

end A341471.P9710234883837268978

/-!
# A341472: Partial sums of A341444.

The programs for A341472, the canonical program `A341472.P14428044219851837605` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341472 has offset 1).

The definition of A341472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341472.P14428044219851837605

`∑[A341444(n+1)]`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341472

/-- `∑[A341444(n+1)]` -/
def P14428044219851837605.Spec : Prop :=
  ∀ n, P14428044219851837605.a n = A341472 (n + 1)

theorem P14428044219851837605.correct : P14428044219851837605.Spec := by
  intro n
  simp only [A341472, Nat.add_sub_cancel]

end A341472

/-! ## A341472.P3116647890116699477

`a(n-1)+A341444(n+1)%A301730(n)` with `a(0)=1`
-/

namespace A341472.P3116647890116699477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A341444 (n + 1)) (A301730 n)

end

end A341472.P3116647890116699477

namespace A341472

/-- `a(n-1)+A341444(n+1)%A301730(n)` -/
def P3116647890116699477.Spec : Prop :=
  ∀ n, P3116647890116699477.a n = A341472 (n + 1)

end A341472

/-! ## A341472.P3945482807403919896

`∑[∑{d}[n+1, A000010(#)*A349337((n+1)/#)]]`
-/

namespace A341472.P3945482807403919896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000010 d * A349337 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341472.P3945482807403919896

namespace A341472

/-- `∑[∑{d}[n+1, A000010(#)*A349337((n+1)/#)]]` -/
def P3945482807403919896.Spec : Prop :=
  ∀ n, P3945482807403919896.a n = A341472 (n + 1)

end A341472

/-! ## A341472.P18091366204659024474

`∑[∑{d}[n+1, A008683(#)*A355939((n+1)/#)]]`
-/

namespace A341472.P18091366204659024474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A008683 d * A355939 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341472.P18091366204659024474

namespace A341472

/-- `∑[∑{d}[n+1, A008683(#)*A355939((n+1)/#)]]` -/
def P18091366204659024474.Spec : Prop :=
  ∀ n, P18091366204659024474.a n = A341472 (n + 1)

end A341472

/-! ## A341472.P6276368848770854713

`a(n-1)--A341444(n+1)%A000420(n)` with `a(0)=1`
-/

namespace A341472.P6276368848770854713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - Int.tmod (-A341444 (n + 1)) (A000420 n)

end

end A341472.P6276368848770854713

namespace A341472

/-- `a(n-1)--A341444(n+1)%A000420(n)` -/
def P6276368848770854713.Spec : Prop :=
  ∀ n, P6276368848770854713.a n = A341472 (n + 1)

end A341472

/-!
# A341473: The number of antitransitive relations on n labeled nodes.

The programs for A341473, there is no canonical definition to state claims against.
-/

/-! ## A341473.P3265280417851601479

`A120712((n-1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A341473.P3265280417851601479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A120712 (((n : ℤ) - 1) * a (n - 1)).toNat

end

end A341473.P3265280417851601479

/-!
# A341474: Let T be the set of sequences {t(k), k >= 0} such that for any k >= 3, t(k) = t(k-1) + t(k-2) + t(k-3); a(n) is the least possible value of t(0)^2 + t(1)^2 + t(2)^2 for an element t of T containing n.

The programs for A341474, there is no canonical definition to state claims against.
-/

/-! ## A341474.P2748004966737566443

`A341456(n)^A232550(A104664(n+1))`
-/

namespace A341474.P2748004966737566443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341456 n : ℚ) ^ (A232550 (A104664 (n + 1)).toNat : ℤ)

end

end A341474.P2748004966737566443

/-! ## A341474.P12492143752842327896

`A117118(A238961(n+1))^A232550(A104664(n+1))`
-/

namespace A341474.P12492143752842327896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117118 (A238961 (n + 1)).toNat : ℚ) ^ (A232550 (A104664 (n + 1)).toNat : ℤ)

end

end A341474.P12492143752842327896

/-!
# A341475: 2-near-perfect numbers.

The programs for A341475, there is no canonical definition to state claims against.
-/

/-! ## A341475.P14431721154195704219

`eq[A338117(A033630(n)), A353742(n+1)]`
-/

namespace A341475.P14431721154195704219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338117 (A033630 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353742 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A341475.P14431721154195704219

/-! ## A341475.P8804660533691304966

`lt[A348616(n+3), A337512(A219208(n))]`
-/

namespace A341475.P8804660533691304966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348616 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337512 (A219208 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341475.P8804660533691304966

/-! ## A341475.P7541293239273762140

`lt[A142724(n), A084273(A033630(n))]`
-/

namespace A341475.P7541293239273762140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142724 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084273 (A033630 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341475.P7541293239273762140

/-! ## A341475.P14949577890248926815

`lt[A000203(n+1), A000290(A331979(n))]`
-/

namespace A341475.P14949577890248926815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A331979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341475.P14949577890248926815

/-! ## A341475.P9837914184177730849

`lt[A001175(n+1), A000290(A331979(n))]`
-/

namespace A341475.P9837914184177730849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A331979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A341475.P9837914184177730849

/-!
# A341476: Coefficients related to the asymptotics of generalized Delannoy numbers.

The programs for A341476, there is no canonical definition to state claims against.
-/

/-! ## A341476.P15479472305744752886

`A047227(A003581(n)+A000217(n))`
-/

namespace A341476.P15479472305744752886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (A003581 n + A000217 n).toNat

end

end A341476.P15479472305744752886

/-!
# A341477: Coefficients related to the asymptotics of generalized Delannoy numbers.

The programs for A341477, there is no canonical definition to state claims against.
-/

/-! ## A341477.P3852848703905199285

`A052928(A002522(n)*A346220(n))`
-/

namespace A341477.P3852848703905199285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A002522 n * A346220 n).toNat

end

end A341477.P3852848703905199285

/-!
# A341478: a(n) = sqrt( Product_{1<=j<=n-1} Product_{1<=k<=n} (4*sin(j*Pi/n)^2 + 4*sin((2*k-1)*Pi/(2*n))^2) ).

The programs for A341478, there is no canonical definition to state claims against.
-/

/-! ## A341478.P13700702663529330921

`A187203(A351013(n²))`
-/

namespace A341478.P13700702663529330921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187203 (A351013 (n ^ 2)).toNat

end

end A341478.P13700702663529330921

/-!
# A341479: a(n) = Product_{1<=j,k<=n} (4*sin((2*j-1)*Pi/(2*n))^2 + 4*sin((2*k-1)*Pi/(2*n))^2).

The programs for A341479, there is no canonical definition to state claims against.
-/

/-! ## A341479.P7897007743900408973

`A081294(n)*A309263(∑[A026395(n)])`
-/

namespace A341479.P7897007743900408973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n * A309263 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A341479.P7897007743900408973

/-!
# A341480: Number of ways to write n as an ordered sum of 3 nonprime numbers.

The programs for A341480, there is no canonical definition to state claims against.
-/

/-! ## A341480.P13751032903875690702

`A347796(n+3)-A347788(n+3)`
-/

namespace A341480.P13751032903875690702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347796 (n + 3) - A347788 (n + 3)

end

end A341480.P13751032903875690702

/-!
# A341481: Number of ways to write n as an ordered sum of 4 nonprime numbers.

The programs for A341481, there is no canonical definition to state claims against.
-/

/-! ## A341481.P4385458095152507527

`A347797(n+4)-A347796(n+4)`
-/

namespace A341481.P4385458095152507527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347797 (n + 4) - A347796 (n + 4)

end

end A341481.P4385458095152507527

/-!
# A341482: Number of ways to write n as an ordered sum of 5 nonprime numbers.

The programs for A341482, there is no canonical definition to state claims against.
-/

/-! ## A341482.P4779470595897459495

`A347798(n+5)-A347797(n+5)`
-/

namespace A341482.P4779470595897459495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347798 (n + 5) - A347797 (n + 5)

end

end A341482.P4779470595897459495

/-!
# A341483: Number of ways to write n as an ordered sum of 6 nonprime numbers.

The programs for A341483, there is no canonical definition to state claims against.
-/

/-! ## A341483.P14195694471086463626

`∑{#}[n, A341480(#+3)*A341480(n-#+3)]`
-/

namespace A341483.P14195694471086463626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A341480 (k + 3) * A341480 ((n : ℤ) - (k : ℤ) + 3).toNat

end

end A341483.P14195694471086463626

/-! ## A341483.P4521102082498046816

`A347799(n+6)-A347798(n+6)`
-/

namespace A341483.P4521102082498046816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347799 (n + 6) - A347798 (n + 6)

end

end A341483.P4521102082498046816

/-! ## A341483.P8758594315815135525

`A001117(n)%A104583(A005508(n))`
-/

namespace A341483.P8758594315815135525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001117 n) (A104583 (A005508 n).toNat)

end

end A341483.P8758594315815135525

/-!
# A341485: Number of ways to write n as an ordered sum of 8 nonprime numbers.

The programs for A341485, there is no canonical definition to state claims against.
-/

/-! ## A341485.P8758299375420230221

`∑{#}[n, A341481(#+4)*A341481(n-#+4)]`
-/

namespace A341485.P8758299375420230221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A341481 (k + 4) * A341481 ((n : ℤ) - (k : ℤ) + 4).toNat

end

end A341485.P8758299375420230221

/-!
# A341487: Second row of A341458.

The programs for A341487, the canonical program `A341487.P2776632459971476031` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341487 has offset 1).

The definition of A341487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A341487.P4898209347389522340

`ceil((A057300(A000069(n+1))+1)/2)`
-/

namespace A341487.P4898209347389522340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057300 (A000069 (n + 1)).toNat + 1 : ℚ) / 2⌉

end

end A341487.P4898209347389522340

namespace A341487

/-- `ceil((A057300(A000069(n+1))+1)/2)` -/
def P4898209347389522340.Spec : Prop :=
  ∀ n, P4898209347389522340.a n = A341487 (n + 1)

end A341487

/-! ## A341487.P2776632459971476031

`A008619(A057300(A000069(n+1)))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A341487

/-- `A008619(A057300(A000069(n+1)))` -/
def P2776632459971476031.Spec : Prop :=
  ∀ n, P2776632459971476031.a n = A341487 (n + 1)

theorem P2776632459971476031.correct : P2776632459971476031.Spec := by
  intro n
  simp only [A341487, Nat.add_sub_cancel]

end A341487

/-! ## A341487.P2630160622776126083

`A008619(A057300(eq[1, A010060(n)]))`
-/

namespace A341487.P2630160622776126083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057300 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A341487.P2630160622776126083

namespace A341487

/-- `A008619(A057300(eq[1, A010060(n)]))` -/
def P2630160622776126083.Spec : Prop :=
  ∀ n, P2630160622776126083.a n = A341487 (n + 1)

end A341487

/-! ## A341487.P13068585557843642366

`A008619(A057300(record[A277812(n+1)]))`
-/

namespace A341487.P13068585557843642366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A057300 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A341487.P13068585557843642366

namespace A341487

/-- `A008619(A057300(record[A277812(n+1)]))` -/
def P13068585557843642366.Spec : Prop :=
  ∀ n, P13068585557843642366.a n = A341487 (n + 1)

end A341487

/-! ## A341487.P9369837038333122995

`1-A010060(n)+A008619(A057300(2*n))`
-/

namespace A341487.P9369837038333122995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n + A008619 (A057300 (2 * n)).toNat

end

end A341487.P9369837038333122995

namespace A341487

/-- `1-A010060(n)+A008619(A057300(2*n))` -/
def P9369837038333122995.Spec : Prop :=
  ∀ n, P9369837038333122995.a n = A341487 (n + 1)

end A341487

/-! ## A341487.P16223117953462693513

`A004524(A057300(2*n))+3-A001285(n)`
-/

namespace A341487.P16223117953462693513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A057300 (2 * n)).toNat + (3 - A001285 n)

end

end A341487.P16223117953462693513

namespace A341487

/-- `A004524(A057300(2*n))+3-A001285(n)` -/
def P16223117953462693513.Spec : Prop :=
  ∀ n, P16223117953462693513.a n = A341487 (n + 1)

end A341487

/-! ## A341487.P7619186573769921649

`A004524(A057300(2*n))+A001285(2*n+1)`
-/

namespace A341487.P7619186573769921649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A057300 (2 * n)).toNat + A001285 (2 * n + 1)

end

end A341487.P7619186573769921649

namespace A341487

/-- `A004524(A057300(2*n))+A001285(2*n+1)` -/
def P7619186573769921649.Spec : Prop :=
  ∀ n, P7619186573769921649.a n = A341487 (n + 1)

end A341487

/-! ## A341487.P16614909613041104460

`A010060(2*n+1)+A008619(A057300(2*n))`
-/

namespace A341487.P16614909613041104460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (2 * n + 1) + A008619 (A057300 (2 * n)).toNat

end

end A341487.P16614909613041104460

namespace A341487

/-- `A010060(2*n+1)+A008619(A057300(2*n))` -/
def P16614909613041104460.Spec : Prop :=
  ∀ n, P16614909613041104460.a n = A341487 (n + 1)

end A341487

/-! ## A341487.P2180709177327892552

`A341458(∑[n+2])`
-/

namespace A341487.P2180709177327892552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341458 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341487.P2180709177327892552

namespace A341487

/-- `A341458(∑[n+2])` -/
def P2180709177327892552.Spec : Prop :=
  ∀ n, P2180709177327892552.a n = A341487 (n + 1)

end A341487

/-!
# A341488: a(0) = 1, and for any n > 0, a(n) = A341458(a(n-1), n).

The programs for A341488, there is no canonical definition to state claims against.
-/

/-! ## A341488.P14496352793287737398

`A341458(C(a(n-1)+n-1, 2)+n)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341488.P14496352793287737398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341458 (Nat.choose (a (n - 1) + (n : ℤ) - 1).toNat 2 + n)

end

end A341488.P14496352793287737398

/-! ## A341488.P6410791421029360239

`A341458(C(a(n-1)+n-1, 2)+a(n-1))` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A341488.P6410791421029360239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A341458 ((Nat.choose (a (n - 1) + (n : ℤ) - 1).toNat 2 : ℤ) + a (n - 1)).toNat

end

end A341488.P6410791421029360239

/-!
# A341489: Third row of A341458.

The programs for A341489, there is no canonical definition to state claims against.
-/

/-! ## A341489.P876890148915097040

`A341458(∑[n+3]+1)`
-/

namespace A341489.P876890148915097040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341458 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A341489.P876890148915097040

/-! ## A341489.P11338158721629951521

`and(-1, A341458(A167614(n+1)))`
-/

namespace A341489.P11338158721629951521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A341458 (A167614 (n + 1)).toNat)

end

end A341489.P11338158721629951521

/-! ## A341489.P402757297406929786

`or(char[1], A341458(A167499(n)+n))`
-/

namespace A341489.P402757297406929786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A341458 (A167499 n + (n : ℤ)).toNat)

end

end A341489.P402757297406929786

/-! ## A341489.P3193383872983770844

`A341458(A027379(n)+6)-A000007(n)`
-/

namespace A341489.P3193383872983770844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341458 (A027379 n + 6).toNat - A000007 n

end

end A341489.P3193383872983770844

/-! ## A341489.P1152454251931608405

`A341458(A167614(n+1))%A000465(n)`
-/

namespace A341489.P1152454251931608405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A341458 (A167614 (n + 1)).toNat) (A000465 n)

end

end A341489.P1152454251931608405

/-! ## A341489.P9533394959030226460

`A007318(C(2, n))*A341458(A167614(n+1))`
-/

namespace A341489.P9533394959030226460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A341458 (A167614 (n + 1)).toNat

end

end A341489.P9533394959030226460

/-! ## A341489.P15675913126589595863

`A008683(gcd(n, n+2))²*A341458(A167614(n+1))`
-/

namespace A341489.P15675913126589595863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Nat.gcd n (n + 2)) ^ 2 * A341458 (A167614 (n + 1)).toNat

end

end A341489.P15675913126589595863

/-! ## A341489.P13423542822673355710

`A242763(A000120(n)+1)*A341458(A167614(n+1))`
-/

namespace A341489.P13423542822673355710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242763 (A000120 n + 1).toNat * A341458 (A167614 (n + 1)).toNat

end

end A341489.P13423542822673355710

/-!
# A341490: Numbers k such that A088177(k) = 1.

The programs for A341490, there is no canonical definition to state claims against.
-/

/-! ## A341490.P17165935223713632760

`record[A341492(n+1)+A257992(n+1)]`
-/

namespace A341490.P17165935223713632760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (n + 1) + A257992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341490.P17165935223713632760

/-! ## A341490.P15084706753043260449

`A341492(A008578(A004277(n)))`
-/

namespace A341490.P15084706753043260449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A008578 (A004277 n).toNat).toNat

end

end A341490.P15084706753043260449

/-! ## A341490.P5451609895252679752

`A341492(A008578(record[A005131(n)]))`
-/

namespace A341490.P5451609895252679752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A008578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A341490.P5451609895252679752

/-! ## A341490.P14692338484159592815

`A341492(A073846(record[A266303(n)]))`
-/

namespace A341490.P14692338484159592815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A073846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A341490.P14692338484159592815

/-! ## A341490.P9089388751992459744

`record[A341492(A065769(A057811(n+1)))]`
-/

namespace A341490.P9089388751992459744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (A065769 (A057811 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341490.P9089388751992459744

/-! ## A341490.P8379556982430560826

`A341492(record[A247503(A006530(n+1))])`
-/

namespace A341490.P8379556982430560826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A006530 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341492 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A341490.P8379556982430560826

/-!
# A341491: a(n) = binomial(6*n, n) * hypergeom([-5*n, -n], [-6*n], -1).

The programs for A341491, the canonical program `A341491.P14286358158548847943` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A341491 has offset 0).

The definition of A341491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A341491.P14286358158548847943

`∑{#}[n, C(n, #)*C(5*n+#, n)]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A341491

/-- `∑{#}[n, C(n, #)*C(5*n+#, n)]` -/
def P14286358158548847943.Spec : Prop :=
  ∀ n, (P14286358158548847943.a n : ℤ) = A341491 n

theorem P14286358158548847943.correct : P14286358158548847943.Spec := by
  intro n
  simp only [A341491]

end A341491

/-! ## A341491.P16849257968281327259

`∑{#}[n, 2^#*C(n, #)*C(5*n, #)]`
-/

namespace A341491.P16849257968281327259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 ^ k * Nat.choose n k * Nat.choose (5 * n) k

end

end A341491.P16849257968281327259

namespace A341491

/-- `∑{#}[n, 2^#*C(n, #)*C(5*n, #)]` -/
def P16849257968281327259.Spec : Prop :=
  ∀ n, (P16849257968281327259.a n : ℤ) = A341491 n

end A341491

/-! ## A341491.P10466743385088286959

`A297192(A062725(n))`
-/

namespace A341491.P10466743385088286959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (A062725 n).toNat

end

end A341491.P10466743385088286959

namespace A341491

/-- `A297192(A062725(n))` -/
def P10466743385088286959.Spec : Prop :=
  ∀ n, P10466743385088286959.a n = A341491 n

end A341491

/-! ## A341491.P15119742911177443286

`A297191(2*A062725(n))`
-/

namespace A341491.P15119742911177443286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297191 (2 * A062725 n).toNat

end

end A341491.P15119742911177443286

namespace A341491

/-- `A297191(2*A062725(n))` -/
def P15119742911177443286.Spec : Prop :=
  ∀ n, P15119742911177443286.a n = A341491 n

end A341491

/-! ## A341491.P7020088489607722626

`A297192(A062728(n)-n)`
-/

namespace A341491.P7020088489607722626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297192 (A062728 n - (n : ℤ)).toNat

end

end A341491.P7020088489607722626

namespace A341491

/-- `A297192(A062728(n)-n)` -/
def P7020088489607722626.Spec : Prop :=
  ∀ n, P7020088489607722626.a n = A341491 n

end A341491

/-!
# A341492: Inverse permutation to A088178.

The programs for A341492, there is no canonical definition to state claims against.
-/

/-! ## A341492.P11102201977949688737

`∑{e}[A106429(A160516(n+1)), #]`
-/

namespace A341492.P11102201977949688737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106429 (A160516 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A341492.P11102201977949688737

/-! ## A341492.P15896167137099941982

`A160516(n+1)%A050969(3*n+1)`
-/

namespace A341492.P15896167137099941982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160516 (n + 1)) (A050969 (3 * n + 1))

end

end A341492.P15896167137099941982

/-! ## A341492.P5559629277982858047

`A160516(n+1)*A288226(∑[(4*n+2)²])`
-/

namespace A341492.P5559629277982858047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (4 * n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160516 (n + 1) * A288226 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A341492.P5559629277982858047

/-! ## A341492.P2674407384059092627

`A160256(A151413(A160516(n+1)))`
-/

namespace A341492.P2674407384059092627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160256 (A151413 (A160516 (n + 1)).toNat).toNat

end

end A341492.P2674407384059092627

/-! ## A341492.P3304542461054013607

`A160516(n+1)+A000007(A002524(n))`
-/

namespace A341492.P3304542461054013607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160516 (n + 1) + A000007 (A002524 n).toNat

end

end A341492.P3304542461054013607

/-!
# A341493: a(n) = ( Product_{j=1..n} Product_{k=1..n+1} (4*sin((2*j-1)*Pi/n)^2 + 4*sin((2*k-1)*Pi/(n+1))^2) )^(1/4).

The programs for A341493, there is no canonical definition to state claims against.
-/

/-! ## A341493.P8243025110892367070

`∑[A139251(A058785(n))]`
-/

namespace A341493.P8243025110892367070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (A058785 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A341493.P8243025110892367070

/-!
# A341494: Number of partitions of n into an even number of parts such that the set of even parts has only one element.

The programs for A341494, there is no canonical definition to state claims against.
-/

/-! ## A341494.P13465169734434972541

`A090867(n)-A341495(n)`
-/

namespace A341494.P13465169734434972541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090867 n - A341495 n

end

end A341494.P13465169734434972541

/-! ## A341494.P13454985672928777686

`A341496(n)+A116680(A093178(n))`
-/

namespace A341494.P13454985672928777686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341496 n + A116680 (A093178 n).toNat

end

end A341494.P13454985672928777686

/-! ## A341494.P4721207594619636769

`A341497(n)-A116680(A237420(n))`
-/

namespace A341494.P4721207594619636769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341497 n - A116680 (A237420 n).toNat

end

end A341494.P4721207594619636769

/-! ## A341494.P12862889466589416138

`A341496(n)+A116680(n-A237420(n))`
-/

namespace A341494.P12862889466589416138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341496 n + A116680 ((n : ℤ) - A237420 n).toNat

end

end A341494.P12862889466589416138

/-! ## A341494.P13248864364565204511

`A305082(n)-(A341495(n)+A067588(n))`
-/

namespace A341494.P13248864364565204511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n - (A341495 n + A067588 n)

end

end A341494.P13248864364565204511

/-! ## A341494.P14109149063878431078

`A341496(n)+A341497(n)-A341495(n)`
-/

namespace A341494.P14109149063878431078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341496 n + (A341497 n - A341495 n)

end

end A341494.P14109149063878431078

/-! ## A341494.P4294543652411256014

`A341495(n)-A033999(n)*A116680(n)`
-/

namespace A341494.P4294543652411256014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341495 n - A033999 n * A116680 n

end

end A341494.P4294543652411256014

/-! ## A341494.P5032820276342409613

`A341497(n)-A116680(n/A093178(n))`
-/

namespace A341494.P5032820276342409613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341497 n - A116680 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

end

end A341494.P5032820276342409613

/-! ## A341494.P619420406682460270

`A116680(A093178(n))+A341497(n)-A116680(n)`
-/

namespace A341494.P619420406682460270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116680 (A093178 n).toNat + (A341497 n - A116680 n)

end

end A341494.P619420406682460270

/-! ## A341494.P9248420104394042729

`A341496(n)-(A116680(A237420(n))-A116680(n))`
-/

namespace A341494.P9248420104394042729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341496 n - (A116680 (A237420 n).toNat - A116680 n)

end

end A341494.P9248420104394042729

/-!
# A341495: Number of partitions of n into an odd number of parts such that the set of even parts has only one element.

The programs for A341495, there is no canonical definition to state claims against.
-/

/-! ## A341495.P6625887777145269640

`A090867(n)-A341494(n)`
-/

namespace A341495.P6625887777145269640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090867 n - A341494 n

end

end A341495.P6625887777145269640

/-! ## A341495.P571764311030723866

`A341496(n)+A116680(A237420(n))`
-/

namespace A341495.P571764311030723866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341496 n + A116680 (A237420 n).toNat

end

end A341495.P571764311030723866

/-! ## A341495.P12877422059673253954

`A341497(n)-A116680(A093178(n))`
-/

namespace A341495.P12877422059673253954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341497 n - A116680 (A093178 n).toNat

end

end A341495.P12877422059673253954

/-! ## A341495.P16084724300353588874

`A305082(n)-(A341494(n)+A067588(n))`
-/

namespace A341495.P16084724300353588874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n - (A341494 n + A067588 n)

end

end A341495.P16084724300353588874

/-! ## A341495.P9992863117175761979

`A341496(n)+A341497(n)-A341494(n)`
-/

namespace A341495.P9992863117175761979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341496 n + (A341497 n - A341494 n)

end

end A341495.P9992863117175761979

/-! ## A341495.P10582239405588898126

`A341494(n)+A033999(n)*A116680(n)`
-/

namespace A341495.P10582239405588898126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341494 n + A033999 n * A116680 n

end

end A341495.P10582239405588898126

/-! ## A341495.P8429276602763589797

`A341497(n)-A116680(n-A237420(n))`
-/

namespace A341495.P8429276602763589797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341497 n - A116680 ((n : ℤ) - A237420 n).toNat

end

end A341495.P8429276602763589797

/-! ## A341495.P4220805493265980667

`A341496(n)+A116680(n/A093178(n))`
-/

namespace A341495.P4220805493265980667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341496 n + A116680 (SequenceMachineLib.roundAway ((n : ℚ) / (A093178 n : ℚ))).toNat

end

end A341495.P4220805493265980667

/-! ## A341495.P12598638538386286984

`A116680(n)+A341496(n)-A116680(A093178(n))`
-/

namespace A341495.P12598638538386286984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116680 n + (A341496 n - A116680 (A093178 n).toNat)

end

end A341495.P12598638538386286984

/-!
# A341496: Number of partitions of n with exactly one repeated part and that part is even.

The programs for A341496, there is no canonical definition to state claims against.
-/

/-! ## A341496.P16288096862069847664

`A090867(n)-A341497(n)`
-/

namespace A341496.P16288096862069847664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090867 n - A341497 n

end

end A341496.P16288096862069847664

/-! ## A341496.P3701900829336946629

`A341497(n)-A116680(n)`
-/

namespace A341496.P3701900829336946629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341497 n - A116680 n

end

end A341496.P3701900829336946629

/-! ## A341496.P6595925147415652372

`(A090867(n)-A116680(n))/2`
-/

namespace A341496.P6595925147415652372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090867 n - A116680 n : ℚ) / 2

end

end A341496.P6595925147415652372

/-! ## A341496.P5472997369711149588

`A305082(n)-(A341497(n)+A067588(n))`
-/

namespace A341496.P5472997369711149588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305082 n - (A341497 n + A067588 n)

end

end A341496.P5472997369711149588

/-! ## A341496.P1360229160060360758

`A341494(n)+A341495(n)-A341497(n)`
-/

namespace A341496.P1360229160060360758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341494 n + (A341495 n - A341497 n)

end

end A341496.P1360229160060360758

/-!
# A341497: Number of partitions of n with exactly one repeated part and that part is odd.

The programs for A341497, there is no canonical definition to state claims against.
-/

/-! ## A341497.P533716413287701199

`A116680(n)+A341496(n)`
-/

namespace A341497.P533716413287701199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116680 n + A341496 n

end

end A341497.P533716413287701199

/-! ## A341497.P541679842221341610

`A090867(n)-A341496(n)`
-/

namespace A341497.P541679842221341610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090867 n - A341496 n

end

end A341497.P541679842221341610

/-! ## A341497.P10022035565818012878

`(A067588(n)-A116676(n))/2`
-/

namespace A341497.P10022035565818012878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067588 n - A116676 n : ℚ) / 2

end

end A341497.P10022035565818012878

/-! ## A341497.P11081875038635482028

`(A116680(n)+A090867(n))/2`
-/

namespace A341497.P11081875038635482028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116680 n + A090867 n : ℚ) / 2

end

end A341497.P11081875038635482028

/-! ## A341497.P2230108790043141268

`A341494(n)+A341495(n)-A341496(n)`
-/

namespace A341497.P2230108790043141268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341494 n + (A341495 n - A341496 n)

end

end A341497.P2230108790043141268

/-!
# A341498: Number of Hamiltonian cycles in the 3 X n rook graph.

The programs for A341498, there is no canonical definition to state claims against.
-/

/-! ## A341498.P3795677145987747183

`A269562(∑[n+2]+4)`
-/

namespace A341498.P3795677145987747183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269562 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A341498.P3795677145987747183

/-! ## A341498.P18362460217047222883

`record[A269562(n+4)/A035342(n+1)]`
-/

namespace A341498.P18362460217047222883
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A269562 (n + 4) : ℚ) / (A035342 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A341498.P18362460217047222883

/-! ## A341498.P11007150304269135155

`A269562(A167614(n+1))+A025466(n)`
-/

namespace A341498.P11007150304269135155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269562 (A167614 (n + 1)).toNat + A025466 n

end

end A341498.P11007150304269135155

/-! ## A341498.P9422776942330623549

`A269562(A167614(n+1))+A185238(n)`
-/

namespace A341498.P9422776942330623549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269562 (A167614 (n + 1)).toNat + A185238 n

end

end A341498.P9422776942330623549

/-! ## A341498.P18114865543902384241

`A196879(n)*A269562(A167614(n+1))`
-/

namespace A341498.P18114865543902384241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196879 n * A269562 (A167614 (n + 1)).toNat

end

end A341498.P18114865543902384241

/-!
# A341499: Number of Hamiltonian cycles in the 4 X n rook graph.

The programs for A341499, there is no canonical definition to state claims against.
-/

/-! ## A341499.P2076347013119966150

`A269562(A055999(n)+10)`
-/

namespace A341499.P2076347013119966150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269562 (A055999 n + 10).toNat

end

end A341499.P2076347013119966150

/-! ## A341499.P15329850204296588753

`A269562(A167614(n+2)+1)`
-/

namespace A341499.P15329850204296588753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269562 (A167614 (n + 2) + 1).toNat

end

end A341499.P15329850204296588753

/-! ## A341499.P10366371594380913450

`A269562(A141214(n+1))`
-/

namespace A341499.P10366371594380913450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269562 (A141214 (n + 1)).toNat

end

end A341499.P10366371594380913450

/-! ## A341499.P7117112604285498817

`A269562(A374004(n+1))`
-/

namespace A341499.P7117112604285498817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269562 (A374004 (n + 1)).toNat

end

end A341499.P7117112604285498817

/-! ## A341499.P5231480497164491626

`A269562(A155212(n)+5)`
-/

namespace A341499.P5231480497164491626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269562 (A155212 n + 5).toNat

end

end A341499.P5231480497164491626

