import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A049100: a(n) = Euler phi function applied 4 times to n.

The programs for A049100, the canonical program `A049100.P9945104708846062101` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049100 has offset 1).

The definition of A049100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010554, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049100.P9945104708846062101

`A010554(A010554(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A049100

/-- `A010554(A010554(n+1))` -/
def P9945104708846062101.Spec : Prop :=
  ∀ n, P9945104708846062101.a n = A049100 (n + 1)

theorem P9945104708846062101.correct : P9945104708846062101.Spec := by
  intro n
  simp only [A049100, Nat.add_sub_cancel]

end A049100

/-! ## A049100.P3955302101317244886

`A000010(A049099(n+1))`
-/

namespace A049100.P3955302101317244886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049099 (n + 1)).toNat

end

end A049100.P3955302101317244886

namespace A049100

/-- `A000010(A049099(n+1))` -/
def P3955302101317244886.Spec : Prop :=
  ∀ n, P3955302101317244886.a n = A049100 (n + 1)

end A049100

/-! ## A049100.P3681498780846311514

`A000010(A000010(A000010(A000010(n+1))))`
-/

namespace A049100.P3681498780846311514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000010 (A000010 (A000010 (n + 1)).toNat).toNat).toNat

end

end A049100.P3681498780846311514

namespace A049100

/-- `A000010(A000010(A000010(A000010(n+1))))` -/
def P3681498780846311514.Spec : Prop :=
  ∀ n, P3681498780846311514.a n = A049100 (n + 1)

end A049100

/-! ## A049100.P6830472334424381890

`A049099(1-A051953(n+1)+n)`
-/

namespace A049100.P6830472334424381890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A049100.P6830472334424381890

namespace A049100

/-- `A049099(1-A051953(n+1)+n)` -/
def P6830472334424381890.Spec : Prop :=
  ∀ n, P6830472334424381890.a n = A049100 (n + 1)

end A049100

/-! ## A049100.P2334669572145535627

`A049099(A002618(n+1)/(n+1))`
-/

namespace A049100.P2334669572145535627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A049100.P2334669572145535627

namespace A049100

/-- `A049099(A002618(n+1)/(n+1))` -/
def P2334669572145535627.Spec : Prop :=
  ∀ n, P2334669572145535627.a n = A049100 (n + 1)

end A049100

/-! ## A049100.P7509105245625609990

`A049099(A002088(n+1)-A002088(n))`
-/

namespace A049100.P7509105245625609990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A002088 (n + 1) - A002088 n).toNat

end

end A049100.P7509105245625609990

namespace A049100

/-- `A049099(A002088(n+1)-A002088(n))` -/
def P7509105245625609990.Spec : Prop :=
  ∀ n, P7509105245625609990.a n = A049100 (n + 1)

end A049100

/-! ## A049100.P11804191605628610867

`A049099(A063070(n+1)+A000005(n+1))`
-/

namespace A049100.P11804191605628610867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A063070 (n + 1) + A000005 (n + 1)).toNat

end

end A049100.P11804191605628610867

namespace A049100

/-- `A049099(A063070(n+1)+A000005(n+1))` -/
def P11804191605628610867.Spec : Prop :=
  ∀ n, P11804191605628610867.a n = A049100 (n + 1)

end A049100

/-! ## A049100.P6564021628942649157

`A049099(A384710(n+1))`
-/

namespace A049100.P6564021628942649157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A384710 (n + 1)).toNat

end

end A049100.P6564021628942649157

namespace A049100

/-- `A049099(A384710(n+1))` -/
def P6564021628942649157.Spec : Prop :=
  ∀ n, P6564021628942649157.a n = A049100 (n + 1)

end A049100

/-! ## A049100.P16893106027953006490

`A049099(A225530(n+1))`
-/

namespace A049100.P16893106027953006490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A225530 (n + 1)).toNat

end

end A049100.P16893106027953006490

namespace A049100

/-- `A049099(A225530(n+1))` -/
def P16893106027953006490.Spec : Prop :=
  ∀ n, P16893106027953006490.a n = A049100 (n + 1)

end A049100

/-!
# A049101: Numbers m such that m divides (product of digits of m) * (sum of digits of m).

The programs for A049101, there is no canonical definition to state claims against.
-/

/-! ## A049101.P3910337074042344579

`record[gcd(A004719(n+1), A066308(n+1))]`
-/

namespace A049101.P3910337074042344579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004719 (n + 1)) (A066308 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049101.P3910337074042344579

/-! ## A049101.P22096025500975179

`∑[A005496(A127568(n)*A309630(n))]`
-/

namespace A049101.P22096025500975179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A127568 n * A309630 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049101.P22096025500975179

/-! ## A049101.P9160736808489476615

`A197181(lt[A058142(3*n+5), A089981(n+1)])`
-/

namespace A049101.P9160736808489476615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058142 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197181 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A049101.P9160736808489476615

/-!
# A049103: Numbers k such that k and k+1 both have 6 divisors.

The programs for A049103, there is no canonical definition to state claims against.
-/

/-! ## A049103.P7601180220606406447

`A049104(n+1)-1`
-/

namespace A049103.P7601180220606406447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049104 (n + 1) - 1

end

end A049103.P7601180220606406447

/-! ## A049103.P6842916717797959875

`A115607(A171977(n+1))+A049104(n+1)`
-/

namespace A049103.P6842916717797959875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115607 (A171977 (n + 1)).toNat + A049104 (n + 1)

end

end A049103.P6842916717797959875

/-! ## A049103.P9719758674437163412

`A049347(Δ[A083220(n)]²)+A049104(n+1)`
-/

namespace A049103.P9719758674437163412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 ((f1 (n + 1) - f1 n) ^ 2).toNat + A049104 (n + 1)

end

end A049103.P9719758674437163412

/-! ## A049103.P18151959395172993327

`A255252(Δ[A265187(n+1)])+A049104(n+1)`
-/

namespace A049103.P18151959395172993327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255252 (f1 (n + 1) - f1 n).toNat + A049104 (n + 1)

end

end A049103.P18151959395172993327

/-! ## A049103.P4798128741289567212

`A246027(A117929(2*n+1))+A049104(n+1)`
-/

namespace A049103.P4798128741289567212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246027 (A117929 (2 * n + 1)).toNat + A049104 (n + 1)

end

end A049103.P4798128741289567212

/-! ## A049103.P14665550187889860000

`A049347(Δ[A047431(3*n+1)]²)+A049104(n+1)`
-/

namespace A049103.P14665550187889860000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047431 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 ((f1 (n + 1) - f1 n) ^ 2).toNat + A049104 (n + 1)

end

end A049103.P14665550187889860000

/-! ## A049103.P15785430925832283101

`∩[A038400(n+1), A348345(n+1)]`
-/

namespace A049103.P15785430925832283101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049103.P15785430925832283101

/-! ## A049103.P10702971984045634210

`∩[A030515(n+1), A348345(n+1)]`
-/

namespace A049103.P10702971984045634210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049103.P10702971984045634210

/-! ## A049103.P9320922247624648678

`∩[A030515(n+2)-1, A030515(n+2)]`
-/

namespace A049103.P9320922247624648678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049103.P9320922247624648678

/-! ## A049103.P4409078325402932023

`A030515(eq[1, A030515(n+2)-A030515(n+1)]+1)`
-/

namespace A049103.P4409078325402932023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 2) - A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049103.P4409078325402932023

/-! ## A049103.P4146405392841063711

`∩[A030515(n+1), A171665(n+1)]`
-/

namespace A049103.P4146405392841063711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049103.P4146405392841063711

/-! ## A049103.P313302588742943583

`∩[A038400(n+1), A171665(n+1)]`
-/

namespace A049103.P313302588742943583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049103.P313302588742943583

/-! ## A049103.P18373335199389748811

`∩[A005237(n+1), A030515(n+1)]`
-/

namespace A049103.P18373335199389748811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049103.P18373335199389748811

/-! ## A049103.P9636643955855157511

`∩[A005237(n+1), A038400(n+1)]`
-/

namespace A049103.P9636643955855157511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049103.P9636643955855157511

/-!
# A049104: Numbers k such that k and k-1 both have 6 divisors.

The programs for A049104, there is no canonical definition to state claims against.
-/

/-! ## A049104.P3849912212488997551

`A049103(n+1)+1`
-/

namespace A049104.P3849912212488997551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049103 (n + 1) + 1

end

end A049104.P3849912212488997551

/-! ## A049104.P18055689040262497804

`∩[A038400(n+1)+1, A038400(n+1)]`
-/

namespace A049104.P18055689040262497804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038400 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038400 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049104.P18055689040262497804

/-! ## A049104.P11304159681637516923

`∩[A030515(n+1)+1, A030515(n+1)]`
-/

namespace A049104.P11304159681637516923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049104.P11304159681637516923

/-! ## A049104.P12267474469696190816

`A030515(eq[1, A030515(n+2)-A030515(n+1)]+1)+1`
-/

namespace A049104.P12267474469696190816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 2) - A030515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) + 1

end

end A049104.P12267474469696190816

/-! ## A049104.P11260105773583786762

`∩[A030515(n+1), A083795(n+1)]`
-/

namespace A049104.P11260105773583786762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049104.P11260105773583786762

/-! ## A049104.P10244872692963473551

`∩[A038400(n+1), A083795(n+1)]`
-/

namespace A049104.P10244872692963473551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038400 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049104.P10244872692963473551

/-! ## A049104.P14920143483308126802

`∩[A083795(n+1), A162947(n+1)]`
-/

namespace A049104.P14920143483308126802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162947 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049104.P14920143483308126802

/-! ## A049104.P18232451533911392988

`A011760(A049103(n+1))`
-/

namespace A049104.P18232451533911392988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (A049103 (n + 1)).toNat

end

end A049104.P18232451533911392988

/-!
# A049105: Ratio from A049101.

The programs for A049105, there is no canonical definition to state claims against.
-/

/-! ## A049105.P15558182462969758285

`A062331(A049101(n+1))/A049101(n+1)`
-/

namespace A049105.P15558182462969758285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062331 (A049101 (n + 1)).toNat : ℚ) / (A049101 (n + 1) : ℚ)

end

end A049105.P15558182462969758285

/-! ## A049105.P6255864630811843180

`A066308(A049101(n+1))/A049101(A000027(n+1))`
-/

namespace A049105.P6255864630811843180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066308 (A049101 (n + 1)).toNat : ℚ) / (A049101 (A000027 (n + 1)).toNat : ℚ)

end

end A049105.P6255864630811843180

/-! ## A049105.P12159510579817942530

`A066308(A049101(n+1))/A049101(A032742(2*(n+1)))`
-/

namespace A049105.P12159510579817942530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066308 (A049101 (n + 1)).toNat : ℚ) / (A049101 (A032742 (2 * (n + 1))).toNat : ℚ)

end

end A049105.P12159510579817942530

/-!
# A049106: Ratio from A049102.

The programs for A049106, there is no canonical definition to state claims against.
-/

/-! ## A049106.P16399021457094731344

`A049102(n+1)/A062331(A049102(n+1))`
-/

namespace A049106.P16399021457094731344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049102 (n + 1) : ℚ) / (A062331 (A049102 (n + 1)).toNat : ℚ)

end

end A049106.P16399021457094731344

/-!
# A049107: a(n) = Euler phi function applied 5 times to n.

The programs for A049107, the canonical program `A049107.P6027054522319473251` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049107 has offset 1).

The definition of A049107 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A049100, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049107.P6027054522319473251

`A000010(A049100(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A049107

/-- `A000010(A049100(n+1))` -/
def P6027054522319473251.Spec : Prop :=
  ∀ n, P6027054522319473251.a n = A049107 (n + 1)

theorem P6027054522319473251.correct : P6027054522319473251.Spec := by
  intro n
  simp only [A049107, Nat.add_sub_cancel]

end A049107

/-! ## A049107.P10120026983445577790

`A010554(A049099(n+1))`
-/

namespace A049107.P10120026983445577790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010554 (A049099 (n + 1)).toNat

end

end A049107.P10120026983445577790

namespace A049107

/-- `A010554(A049099(n+1))` -/
def P10120026983445577790.Spec : Prop :=
  ∀ n, P10120026983445577790.a n = A049107 (n + 1)

end A049107

/-! ## A049107.P9627368843921769428

`A049100(n+1-A051953(n+1))`
-/

namespace A049107.P9627368843921769428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 ((n + 1 : ℤ) - A051953 (n + 1)).toNat

end

end A049107.P9627368843921769428

namespace A049107

/-- `A049100(n+1-A051953(n+1))` -/
def P9627368843921769428.Spec : Prop :=
  ∀ n, P9627368843921769428.a n = A049107 (n + 1)

end A049107

/-! ## A049107.P8861188610900102227

`A049100(A002618(n+1)/(n+1))`
-/

namespace A049107.P8861188610900102227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A049107.P8861188610900102227

namespace A049107

/-- `A049100(A002618(n+1)/(n+1))` -/
def P8861188610900102227.Spec : Prop :=
  ∀ n, P8861188610900102227.a n = A049107 (n + 1)

end A049107

/-! ## A049107.P10617961468448870577

`A049100((A049100(n+1)%A049100(n²+1))²+1)`
-/

namespace A049107.P10617961468448870577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049100 (Int.tmod (A049100 (n + 1)) (A049100 (n ^ 2 + 1)) ^ 2 + 1).toNat

end

end A049107.P10617961468448870577

namespace A049107

/-- `A049100((A049100(n+1)%A049100(n²+1))²+1)` -/
def P10617961468448870577.Spec : Prop :=
  ∀ n, P10617961468448870577.a n = A049107 (n + 1)

end A049107

/-! ## A049107.P8570483982555160682

`A049099(A049100(n+1)!)`
-/

namespace A049107.P8570483982555160682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (Nat.factorial (A049100 (n + 1)).toNat)

end

end A049107.P8570483982555160682

namespace A049107

/-- `A049099(A049100(n+1)!)` -/
def P8570483982555160682.Spec : Prop :=
  ∀ n, P8570483982555160682.a n = A049107 (n + 1)

end A049107

/-! ## A049107.P14144132077183141139

`A049100(A049100(n+1)!+1)!`
-/

namespace A049107.P14144132077183141139
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A049100 (Nat.factorial (A049100 (n + 1)).toNat + 1)).toNat

end

end A049107.P14144132077183141139

namespace A049107

/-- `A049100(A049100(n+1)!+1)!` -/
def P14144132077183141139.Spec : Prop :=
  ∀ n, (P14144132077183141139.a n : ℤ) = A049107 (n + 1)

end A049107

/-!
# A049108: a(n) is the number of iterations of Euler phi function needed to reach 1 starting at n (n is counted).

The programs for A049108, the canonical program `A049108.P4100200907408757597` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049108 has offset 1).

The definition of A049108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049108.P5971665136009246948

`A003434(n+1)+1`
-/

namespace A049108.P5971665136009246948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) + 1

end

end A049108.P5971665136009246948

namespace A049108

/-- `A003434(n+1)+1` -/
def P5971665136009246948.Spec : Prop :=
  ∀ n, P5971665136009246948.a n = A049108 (n + 1)

theorem P5971665136009246948.correct : P5971665136009246948.Spec := by
  intro n
  simp only [A049108, Nat.add_sub_cancel, A049108.P5971665136009246948.a, A049108.P4100200907408757597.a, A003434, A003434.P4346144669055339103.a, A054725, A054725.P13629253926091839604.a, A134451, A134451.P12605129592745265341.a, A053735, A053735.P3640341592284089632.a, A309243, A309243.P2615360336711731693.a, A054861, A054861.P6137810495506521191.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049108

/-! ## A049108.P11938690250015363413

`∑[A334196(n+1)]+1`
-/

namespace A049108.P11938690250015363413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334196 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049108.P11938690250015363413

namespace A049108

/-- `∑[A334196(n+1)]+1` -/
def P11938690250015363413.Spec : Prop :=
  ∀ n, P11938690250015363413.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P13306844282748657343

`a(A109606(n+1))+1` with `a(0)=1`
-/

namespace A049108.P13306844282748657343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A109606 (n + 1)).toNat + 1

end

end A049108.P13306844282748657343

namespace A049108

/-- `a(A109606(n+1))+1` -/
def P13306844282748657343.Spec : Prop :=
  ∀ n, (P13306844282748657343.a n : ℤ) = A049108 (n + 1)

end A049108

/-! ## A049108.P11268433622974213660

`a(Δ[A002088(n)]-1)+1` with `a(0)=1`
-/

namespace A049108.P11268433622974213660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + 1

end

end A049108.P11268433622974213660

namespace A049108

/-- `a(Δ[A002088(n)]-1)+1` -/
def P11268433622974213660.Spec : Prop :=
  ∀ n, (P11268433622974213660.a n : ℤ) = A049108 (n + 1)

end A049108

/-! ## A049108.P15960221761880219931

`a(Δ[A005728(n)]-1)+1` with `a(0)=1`
-/

namespace A049108.P15960221761880219931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (f1 (n + 1) - f1 n - 1).toNat + 1

end

end A049108.P15960221761880219931

namespace A049108

/-- `a(Δ[A005728(n)]-1)+1` -/
def P15960221761880219931.Spec : Prop :=
  ∀ n, (P15960221761880219931.a n : ℤ) = A049108 (n + 1)

end A049108

/-! ## A049108.P3374025278854896554

`a(A000010(n+1)-1)+1` with `a(0)=1`
-/

namespace A049108.P3374025278854896554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000010 (n + 1) - 1).toNat + 1

end

end A049108.P3374025278854896554

namespace A049108

/-- `a(A000010(n+1)-1)+1` -/
def P3374025278854896554.Spec : Prop :=
  ∀ n, (P3374025278854896554.a n : ℤ) = A049108 (n + 1)

end A049108

/-! ## A049108.P6584923171925232052

`a(n-A051953(n+1))+1` with `a(0)=1`
-/

namespace A049108.P6584923171925232052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a ((n : ℤ) - A051953 (n + 1)).toNat + 1

end

end A049108.P6584923171925232052

namespace A049108

/-- `a(n-A051953(n+1))+1` -/
def P6584923171925232052.Spec : Prop :=
  ∀ n, (P6584923171925232052.a n : ℤ) = A049108 (n + 1)

end A049108

/-! ## A049108.P15049622515026081519

`A005496(A003434(n+1))`
-/

namespace A049108.P15049622515026081519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A003434 (n + 1)).toNat

end

end A049108.P15049622515026081519

namespace A049108

/-- `A005496(A003434(n+1))` -/
def P15049622515026081519.Spec : Prop :=
  ∀ n, P15049622515026081519.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P16840201149885275953

`A064415(n+1)+A040001(n)`
-/

namespace A049108.P16840201149885275953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + A040001 n

end

end A049108.P16840201149885275953

namespace A049108

/-- `A064415(n+1)+A040001(n)` -/
def P16840201149885275953.Spec : Prop :=
  ∀ n, P16840201149885275953.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P4100200907408757597

`A134451(n)+A054725(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049108

/-- `A134451(n)+A054725(n+1)` -/
def P4100200907408757597.Spec : Prop :=
  ∀ n, P4100200907408757597.a n = A049108 (n + 1)

theorem P4100200907408757597.correct : P4100200907408757597.Spec := by
  intro n
  simp only [A049108, Nat.add_sub_cancel]

end A049108

/-! ## A049108.P11974288955041604747

`A005555(a(A000010(n+1)-1))` with `a(0)=1`
-/

namespace A049108.P11974288955041604747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005555 (a (A000010 (n + 1) - 1).toNat).toNat

end

end A049108.P11974288955041604747

namespace A049108

/-- `A005555(a(A000010(n+1)-1))` -/
def P11974288955041604747.Spec : Prop :=
  ∀ n, P11974288955041604747.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P10309947143744126859

`A159062(a(A000010(n+1)-1))` with `a(0)=1`
-/

namespace A049108.P10309947143744126859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A159062 (a (A000010 (n + 1) - 1).toNat).toNat

end

end A049108.P10309947143744126859

namespace A049108

/-- `A159062(a(A000010(n+1)-1))` -/
def P10309947143744126859.Spec : Prop :=
  ∀ n, P10309947143744126859.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P993764796539020119

`A049115(n+1)+A049113(n+1)`
-/

namespace A049108.P993764796539020119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A049113 (n + 1)

end

end A049108.P993764796539020119

namespace A049108

/-- `A049115(n+1)+A049113(n+1)` -/
def P993764796539020119.Spec : Prop :=
  ∀ n, P993764796539020119.a n = A049108 (n + 1)

theorem P993764796539020119.correct : P993764796539020119.Spec := by
  intro n
  simp only [A049108, Nat.add_sub_cancel, A049108.P993764796539020119.a, A049108.P4100200907408757597.a, A049113, A049113.P626448701058423886.a, A049115, A049115.P2000805014081711622.a, A054725, A054725.P13629253926091839604.a, A134451, A134451.P12605129592745265341.a, A053735, A053735.P3640341592284089632.a, A064415, A064415.P3438679109517359530.a, A259103, A259103.P17430711073458267779.f1, A259103.P17430711073458267779.f2, A259103.P17430711073458267779.f3, A259103.P17430711073458267779.a, A309243, A309243.P2615360336711731693.a, A054861, A054861.P6137810495506521191.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049108

/-! ## A049108.P14717666897190300543

`A049115(n+1)+A000005(A049116(n+1))`
-/

namespace A049108.P14717666897190300543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (n + 1) + A000005 (A049116 (n + 1)).toNat

end

end A049108.P14717666897190300543

namespace A049108

/-- `A049115(n+1)+A000005(A049116(n+1))` -/
def P14717666897190300543.Spec : Prop :=
  ∀ n, P14717666897190300543.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P46354851528901149

`A064415(A140434(n+1))+1`
-/

namespace A049108.P46354851528901149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A140434 (n + 1)).toNat + 1

end

end A049108.P46354851528901149

namespace A049108

/-- `A064415(A140434(n+1))+1` -/
def P46354851528901149.Spec : Prop :=
  ∀ n, P46354851528901149.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P1884025114791469616

`A064415(A066043(n+1))+1`
-/

namespace A049108.P1884025114791469616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A066043 (n + 1)).toNat + 1

end

end A049108.P1884025114791469616

namespace A049108

/-- `A064415(A066043(n+1))+1` -/
def P1884025114791469616.Spec : Prop :=
  ∀ n, P1884025114791469616.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P2927532182887466833

`A054725(A002246(n+1))`
-/

namespace A049108.P2927532182887466833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054725 (A002246 (n + 1)).toNat

end

end A049108.P2927532182887466833

namespace A049108

/-- `A054725(A002246(n+1))` -/
def P2927532182887466833.Spec : Prop :=
  ∀ n, P2927532182887466833.a n = A049108 (n + 1)

end A049108

/-! ## A049108.P12315957159959007069

`A032358(A168101(n+1))`
-/

namespace A049108.P12315957159959007069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (A168101 (n + 1)).toNat

end

end A049108.P12315957159959007069

namespace A049108

/-- `A032358(A168101(n+1))` -/
def P12315957159959007069.Spec : Prop :=
  ∀ n, P12315957159959007069.a n = A049108 (n + 1)

end A049108

/-!
# A049109: Number of divisors of A005238(n).

The programs for A049109, the canonical program `A049109.P12243785010854007688` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049109 has offset 1).

The definition of A049109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049109.P12243785010854007688

`∏{e}[A005238(n+1), #+1]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049109

/-- `∏{e}[A005238(n+1), #+1]` -/
def P12243785010854007688.Spec : Prop :=
  ∀ n, (P12243785010854007688.a n : ℤ) = A049109 (n + 1)

theorem P12243785010854007688.correct : P12243785010854007688.Spec := by
  intro n
  simp only [A049109, Nat.add_sub_cancel]

end A049109

/-! ## A049109.P9209802682395203879

`∑{d}[A005238(n+1), A043564(val(#, 2))]`
-/

namespace A049109.P9209802682395203879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A043564 (SequenceMachineLib.valuation d 2)

end

end A049109.P9209802682395203879

namespace A049109

/-- `∑{d}[A005238(n+1), A043564(val(#, 2))]` -/
def P9209802682395203879.Spec : Prop :=
  ∀ n, P9209802682395203879.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P309115703891684185

`∑{d}[A005238(n+1), A201873(C(2, #)+1)]`
-/

namespace A049109.P309115703891684185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A201873 (Nat.choose 2 d + 1)

end

end A049109.P309115703891684185

namespace A049109

/-- `∑{d}[A005238(n+1), A201873(C(2, #)+1)]` -/
def P309115703891684185.Spec : Prop :=
  ∀ n, P309115703891684185.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P2802474550761832461

`A000005(A005238(n+1))`
-/

namespace A049109.P2802474550761832461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005238 (n + 1)).toNat

end

end A049109.P2802474550761832461

namespace A049109

/-- `A000005(A005238(n+1))` -/
def P2802474550761832461.Spec : Prop :=
  ∀ n, P2802474550761832461.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P17616383937960326251

`A000005(A169834(n+1))`
-/

namespace A049109.P17616383937960326251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A169834 (n + 1)).toNat

end

end A049109.P17616383937960326251

namespace A049109

/-- `A000005(A169834(n+1))` -/
def P17616383937960326251.Spec : Prop :=
  ∀ n, P17616383937960326251.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P11685674855770657386

`∑{d}[A005238(n+1), floor(2/A275735(#))!]`
-/

namespace A049109.P11685674855770657386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial ⌊2 / (A275735 d : ℚ)⌋.toNat

end

end A049109.P11685674855770657386

namespace A049109

/-- `∑{d}[A005238(n+1), floor(2/A275735(#))!]` -/
def P11685674855770657386.Spec : Prop :=
  ∀ n, (P11685674855770657386.a n : ℤ) = A049109 (n + 1)

end A049109

/-! ## A049109.P7383800589596399586

`A320111(or(1, A169834(n+1)))`
-/

namespace A049109.P7383800589596399586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (Int.lor 1 (A169834 (n + 1))).toNat

end

end A049109.P7383800589596399586

namespace A049109

/-- `A320111(or(1, A169834(n+1)))` -/
def P7383800589596399586.Spec : Prop :=
  ∀ n, P7383800589596399586.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P4442950698093787997

`A184395(A005238(n+1)+2)`
-/

namespace A049109.P4442950698093787997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 (A005238 (n + 1) + 2).toNat

end

end A049109.P4442950698093787997

namespace A049109

/-- `A184395(A005238(n+1)+2)` -/
def P4442950698093787997.Spec : Prop :=
  ∀ n, P4442950698093787997.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P17128690037929516749

`A320111(2*A169834(n+1))`
-/

namespace A049109.P17128690037929516749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A169834 (n + 1)).toNat

end

end A049109.P17128690037929516749

namespace A049109

/-- `A320111(2*A169834(n+1))` -/
def P17128690037929516749.Spec : Prop :=
  ∀ n, P17128690037929516749.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P5813483549346873926

`A001227(or(1, A005238(n+1)))`
-/

namespace A049109.P5813483549346873926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Int.lor 1 (A005238 (n + 1))).toNat

end

end A049109.P5813483549346873926

namespace A049109

/-- `A001227(or(1, A005238(n+1)))` -/
def P5813483549346873926.Spec : Prop :=
  ∀ n, P5813483549346873926.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P15015215063946918683

`A001227(or(1, A169834(n+1)))`
-/

namespace A049109.P15015215063946918683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Int.lor 1 (A169834 (n + 1))).toNat

end

end A049109.P15015215063946918683

namespace A049109

/-- `A001227(or(1, A169834(n+1)))` -/
def P15015215063946918683.Spec : Prop :=
  ∀ n, P15015215063946918683.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P9180282038015603941

`∑{d}[A005238(n+1), A001826(A001826(#))]`
-/

namespace A049109.P9180282038015603941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001826 (A001826 d).toNat

end

end A049109.P9180282038015603941

namespace A049109

/-- `∑{d}[A005238(n+1), A001826(A001826(#))]` -/
def P9180282038015603941.Spec : Prop :=
  ∀ n, P9180282038015603941.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P2518423838642015659

`∑{d}[A005238(n+1), A000188(A014963(#))]`
-/

namespace A049109.P2518423838642015659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000188 (A014963 d).toNat

end

end A049109.P2518423838642015659

namespace A049109

/-- `∑{d}[A005238(n+1), A000188(A014963(#))]` -/
def P2518423838642015659.Spec : Prop :=
  ∀ n, P2518423838642015659.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P7500051404356138080

`∑{d}[A005238(n+1), A133707(A133707(#))]`
-/

namespace A049109.P7500051404356138080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133707 (A133707 d).toNat

end

end A049109.P7500051404356138080

namespace A049109

/-- `∑{d}[A005238(n+1), A133707(A133707(#))]` -/
def P7500051404356138080.Spec : Prop :=
  ∀ n, P7500051404356138080.a n = A049109 (n + 1)

end A049109

/-! ## A049109.P16247671277825700220

`A320111(A169834(n+1)+A169834(n+1)+2)`
-/

namespace A049109.P16247671277825700220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (A169834 (n + 1) + (A169834 (n + 1) + 2)).toNat

end

end A049109.P16247671277825700220

namespace A049109

/-- `A320111(A169834(n+1)+A169834(n+1)+2)` -/
def P16247671277825700220.Spec : Prop :=
  ∀ n, P16247671277825700220.a n = A049109 (n + 1)

end A049109

/-!
# A049110: Number of divisors of A006601(n).

The programs for A049110, there is no canonical definition to state claims against.
-/

/-! ## A049110.P8473468506751134895

`A000005(A006601(n+1))`
-/

namespace A049110.P8473468506751134895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A006601 (n + 1)).toNat

end

end A049110.P8473468506751134895

/-! ## A049110.P13564905254855915252

`∏{e}[A039665(A016825(n)), #+1]`
-/

namespace A049110.P13564905254855915252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (A016825 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A049110.P13564905254855915252

/-! ## A049110.P5714673809190565007

`∑{d}[A006601(n+1), gcd(#, A212378(n+1))]`
-/

namespace A049110.P5714673809190565007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.gcd (d : ℤ) (A212378 (n + 1))

end

end A049110.P5714673809190565007

/-! ## A049110.P10220474990896342020

`∏{e}[A039665(A016825(n)-1), A122416(#)]`
-/

namespace A049110.P10220474990896342020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039665 (A016825 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A122416 (Nat.factorization (f1 n).natAbs p)

end

end A049110.P10220474990896342020

/-! ## A049110.P7505928761294566894

`∑{d}[A006601(n+1), A000041(A006601(n+1)%#)]`
-/

namespace A049110.P7505928761294566894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006601 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000041 (Int.tmod (A006601 (n + 1)) (d : ℤ)).toNat

end

end A049110.P7505928761294566894

/-! ## A049110.P14606550954637219261

`A000005(A039665(record[xor(3, n)]))`
-/

namespace A049110.P14606550954637219261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039665 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A049110.P14606550954637219261

/-! ## A049110.P2984951071098305324

`A000005(A039665(2*(2*n+1)))`
-/

namespace A049110.P2984951071098305324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A039665 (2 * (2 * n + 1))).toNat

end

end A049110.P2984951071098305324

/-!
# A049111: Number of divisors of A005237(n).

The programs for A049111, the canonical program `A049111.P637317561935572005` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049111 has offset 1).

The definition of A049111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049111.P637317561935572005

`A000005(A005237(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A049111

/-- `A000005(A005237(n+1))` -/
def P637317561935572005.Spec : Prop :=
  ∀ n, P637317561935572005.a n = A049111 (n + 1)

theorem P637317561935572005.correct : P637317561935572005.Spec := by
  intro n
  simp only [A049111, Nat.add_sub_cancel]

end A049111

/-! ## A049111.P1048246594047879750

`A000005(A083795(n+1))`
-/

namespace A049111.P1048246594047879750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A083795 (n + 1)).toNat

end

end A049111.P1048246594047879750

namespace A049111

/-- `A000005(A083795(n+1))` -/
def P1048246594047879750.Spec : Prop :=
  ∀ n, P1048246594047879750.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P12186617484744499283

`A000005(∪[A052213(n+1), A333055(n+1)])`
-/

namespace A049111.P12186617484744499283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333055 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A049111.P12186617484744499283

namespace A049111

/-- `A000005(∪[A052213(n+1), A333055(n+1)])` -/
def P12186617484744499283.Spec : Prop :=
  ∀ n, P12186617484744499283.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P18036770364400230618

`A331308(A005237(n+1)+1)`
-/

namespace A049111.P18036770364400230618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331308 (A005237 (n + 1) + 1).toNat

end

end A049111.P18036770364400230618

namespace A049111

/-- `A331308(A005237(n+1)+1)` -/
def P18036770364400230618.Spec : Prop :=
  ∀ n, P18036770364400230618.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P1766211883888486699

`A000005(eq[A000005(n+1), A000005(n+2)]+1)`
-/

namespace A049111.P1766211883888486699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A049111.P1766211883888486699

namespace A049111

/-- `A000005(eq[A000005(n+1), A000005(n+2)]+1)` -/
def P1766211883888486699.Spec : Prop :=
  ∀ n, P1766211883888486699.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P5510950680791388150

`A000005(∩[A140128(n+1), A057921(n)])`
-/

namespace A049111.P5510950680791388150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057921 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A049111.P5510950680791388150

namespace A049111

/-- `A000005(∩[A140128(n+1), A057921(n)])` -/
def P5510950680791388150.Spec : Prop :=
  ∀ n, P5510950680791388150.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P9286470267766401083

`A000005(∩[A140128(n+1), A057922(n)])`
-/

namespace A049111.P9286470267766401083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057922 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A049111.P9286470267766401083

namespace A049111

/-- `A000005(∩[A140128(n+1), A057922(n)])` -/
def P9286470267766401083.Spec : Prop :=
  ∀ n, P9286470267766401083.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P3344597348705432431

`A320111(or(1, A005237(n+1)))`
-/

namespace A049111.P3344597348705432431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (Int.lor 1 (A005237 (n + 1))).toNat

end

end A049111.P3344597348705432431

namespace A049111

/-- `A320111(or(1, A005237(n+1)))` -/
def P3344597348705432431.Spec : Prop :=
  ∀ n, P3344597348705432431.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P14173020123268427011

`A320111(2*A005237(n+1))`
-/

namespace A049111.P14173020123268427011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A005237 (n + 1)).toNat

end

end A049111.P14173020123268427011

namespace A049111

/-- `A320111(2*A005237(n+1))` -/
def P14173020123268427011.Spec : Prop :=
  ∀ n, P14173020123268427011.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P16292311027277627558

`A161841(A005237(n+1)+1)`
-/

namespace A049111.P16292311027277627558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161841 (A005237 (n + 1) + 1).toNat

end

end A049111.P16292311027277627558

namespace A049111

/-- `A161841(A005237(n+1)+1)` -/
def P16292311027277627558.Spec : Prop :=
  ∀ n, P16292311027277627558.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P12489198725876234108

`A001227(or(1, A005237(n+1)))`
-/

namespace A049111.P12489198725876234108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (Int.lor 1 (A005237 (n + 1))).toNat

end

end A049111.P12489198725876234108

namespace A049111

/-- `A001227(or(1, A005237(n+1)))` -/
def P12489198725876234108.Spec : Prop :=
  ∀ n, P12489198725876234108.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P9599204238668095384

`A000005(eq[n, A347982(n+1)])`
-/

namespace A049111.P9599204238668095384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A049111.P9599204238668095384

namespace A049111

/-- `A000005(eq[n, A347982(n+1)])` -/
def P9599204238668095384.Spec : Prop :=
  ∀ n, P9599204238668095384.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P16561483435376155118

`A000005(lt[A341062(n+1)², 1])`
-/

namespace A049111.P16561483435376155118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341062 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A049111.P16561483435376155118

namespace A049111

/-- `A000005(lt[A341062(n+1)², 1])` -/
def P16561483435376155118.Spec : Prop :=
  ∀ n, P16561483435376155118.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P11376273430347000382

`A032741(A005237(n+1)+1)+1`
-/

namespace A049111.P11376273430347000382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A005237 (n + 1) + 1).toNat + 1

end

end A049111.P11376273430347000382

namespace A049111

/-- `A032741(A005237(n+1)+1)+1` -/
def P11376273430347000382.Spec : Prop :=
  ∀ n, P11376273430347000382.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P17539710252212159353

`A000005(eq[1, A130638(n+1)]+1)`
-/

namespace A049111.P17539710252212159353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A049111.P17539710252212159353

namespace A049111

/-- `A000005(eq[1, A130638(n+1)]+1)` -/
def P17539710252212159353.Spec : Prop :=
  ∀ n, P17539710252212159353.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P12342399109688314346

`A060778(A005237(2*n+1-n))`
-/

namespace A049111.P12342399109688314346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060778 (A005237 (2 * n + 1 - n)).toNat

end

end A049111.P12342399109688314346

namespace A049111

/-- `A060778(A005237(2*n+1-n))` -/
def P12342399109688314346.Spec : Prop :=
  ∀ n, P12342399109688314346.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P10325051005658462840

`A000005(eq[A145154(n+1), A145154(n)])`
-/

namespace A049111.P10325051005658462840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A049111.P10325051005658462840

namespace A049111

/-- `A000005(eq[A145154(n+1), A145154(n)])` -/
def P10325051005658462840.Spec : Prop :=
  ∀ n, P10325051005658462840.a n = A049111 (n + 1)

end A049111

/-! ## A049111.P9181610698971034458

`A032741(eq[A032741(n), A325765(n)])+1`
-/

namespace A049111.P9181610698971034458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A049111.P9181610698971034458

namespace A049111

/-- `A032741(eq[A032741(n), A325765(n)])+1` -/
def P9181610698971034458.Spec : Prop :=
  ∀ n, P9181610698971034458.a n = A049111 (n + 1)

end A049111

/-!
# A049112: 2-ranks of difference sets constructed from Glynn type I hyperovals.

The programs for A049112, the canonical program `A049112.P4476754032565103304` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049112 has offset 1).

The definition of A049112 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049112.P4476754032565103304

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-1` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7, a(4)=13`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049112

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)-1` -/
def P4476754032565103304.Spec : Prop :=
  ∀ n, P4476754032565103304.a n = A049112 (n + 1)

theorem P4476754032565103304.correct : P4476754032565103304.Spec := by
  intro n
  simp only [A049112, Nat.add_sub_cancel]

end A049112

/-! ## A049112.P6674779986149671314

`2*(A107066(n)-record[A251703(n)])+1`
-/

namespace A049112.P6674779986149671314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A107066 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) + 1

end

end A049112.P6674779986149671314

namespace A049112

/-- `2*(A107066(n)-record[A251703(n)])+1` -/
def P6674779986149671314.Spec : Prop :=
  ∀ n, P6674779986149671314.a n = A049112 (n + 1)

end A049112

/-! ## A049112.P16541464013064070805

`A005408(A107066(n)-record[A251703(n)])`
-/

namespace A049112.P16541464013064070805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A107066 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A049112.P16541464013064070805

namespace A049112

/-- `A005408(A107066(n)-record[A251703(n)])` -/
def P16541464013064070805.Spec : Prop :=
  ∀ n, P16541464013064070805.a n = A049112 (n + 1)

end A049112

/-! ## A049112.P8700276816569434826

`A005408(A107066(n)%record[A251703(n)])`
-/

namespace A049112.P8700276816569434826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A107066 n) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A049112.P8700276816569434826

namespace A049112

/-- `A005408(A107066(n)%record[A251703(n)])` -/
def P8700276816569434826.Spec : Prop :=
  ∀ n, P8700276816569434826.a n = A049112 (n + 1)

end A049112

/-! ## A049112.P18446362375464174653

`A004273(A107066(n)-record[A251703(n)]+1)`
-/

namespace A049112.P18446362375464174653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A107066 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A049112.P18446362375464174653

namespace A049112

/-- `A004273(A107066(n)-record[A251703(n)]+1)` -/
def P18446362375464174653.Spec : Prop :=
  ∀ n, P18446362375464174653.a n = A049112 (n + 1)

end A049112

/-!
# A049113: Number of powers of 2 in sequence obtained when phi (A000010) is repeatedly applied to n.

The programs for A049113, the canonical program `A049113.P626448701058423886` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049113 has offset 1).

The definition of A049113 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049108, A049115, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A049113.P626448701058423886

`A049108(n+1)-A049115(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049113

/-- `A049108(n+1)-A049115(n+1)` -/
def P626448701058423886.Spec : Prop :=
  ∀ n, P626448701058423886.a n = A049113 (n + 1)

theorem P626448701058423886.correct : P626448701058423886.Spec := by
  intro n
  simp only [A049113, Nat.add_sub_cancel]

end A049113

/-! ## A049113.P7839931024911179119

`log2(A049116(n+1))+1`
-/

namespace A049113.P7839931024911179119
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A049116 (n + 1) : ℝ) + 1

end

end A049113.P7839931024911179119

namespace A049113

/-- `log2(A049116(n+1))+1` -/
def P7839931024911179119.Spec : Prop :=
  ∀ n, P7839931024911179119.a n = (A049113 (n + 1) : ℝ)

end A049113

/-! ## A049113.P7327446673544749939

`A000005(A049116(n+1))`
-/

namespace A049113.P7327446673544749939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A049116 (n + 1)).toNat

end

end A049113.P7327446673544749939

namespace A049113

/-- `A000005(A049116(n+1))` -/
def P7327446673544749939.Spec : Prop :=
  ∀ n, P7327446673544749939.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P6910708329782241857

`A002487(A049116(n+1)+1)`
-/

namespace A049113.P6910708329782241857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A049116 (n + 1) + 1).toNat

end

end A049113.P6910708329782241857

namespace A049113

/-- `A002487(A049116(n+1)+1)` -/
def P6910708329782241857.Spec : Prop :=
  ∀ n, P6910708329782241857.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P9096623060757176395

`A002326(A049116(n+1)-1)`
-/

namespace A049113.P9096623060757176395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (A049116 (n + 1) - 1).toNat

end

end A049113.P9096623060757176395

namespace A049113

/-- `A002326(A049116(n+1)-1)` -/
def P9096623060757176395.Spec : Prop :=
  ∀ n, P9096623060757176395.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P12450060457785668688

`A001222(2*A049116(n+1))`
-/

namespace A049113.P12450060457785668688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A049116 (n + 1)).toNat

end

end A049113.P12450060457785668688

namespace A049113

/-- `A001222(2*A049116(n+1))` -/
def P12450060457785668688.Spec : Prop :=
  ∀ n, P12450060457785668688.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P1528958980135721529

`A347387(2*A049116(n+1))`
-/

namespace A049113.P1528958980135721529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347387 (2 * A049116 (n + 1)).toNat

end

end A049113.P1528958980135721529

namespace A049113

/-- `A347387(2*A049116(n+1))` -/
def P1528958980135721529.Spec : Prop :=
  ∀ n, P1528958980135721529.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P10599777651353721826

`A001222(lcm(3, A049116(n+1)))`
-/

namespace A049113.P10599777651353721826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lcm 3 (A049116 (n + 1)))

end

end A049113.P10599777651353721826

namespace A049113

/-- `A001222(lcm(3, A049116(n+1)))` -/
def P10599777651353721826.Spec : Prop :=
  ∀ n, P10599777651353721826.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P13834212493034761192

`∑{d}[A049116(n+1), A000265(#)]`
-/

namespace A049113.P13834212493034761192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000265 d

end

end A049113.P13834212493034761192

namespace A049113

/-- `∑{d}[A049116(n+1), A000265(#)]` -/
def P13834212493034761192.Spec : Prop :=
  ∀ n, P13834212493034761192.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P15145950298256839302

`∑{d}[A049116(n+1), #/A049116(#)]`
-/

namespace A049113.P15145950298256839302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / (A049116 d : ℚ)

end

end A049113.P15145950298256839302

namespace A049113

/-- `∑{d}[A049116(n+1), #/A049116(#)]` -/
def P15145950298256839302.Spec : Prop :=
  ∀ n, P15145950298256839302.a n = (A049113 (n + 1) : ℚ)

end A049113

/-! ## A049113.P7650517178931907628

`A003434(n+1)+1-A049115(n+1)`
-/

namespace A049113.P7650517178931907628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) + (1 - A049115 (n + 1))

end

end A049113.P7650517178931907628

namespace A049113

/-- `A003434(n+1)+1-A049115(n+1)` -/
def P7650517178931907628.Spec : Prop :=
  ∀ n, P7650517178931907628.a n = A049113 (n + 1)

theorem P7650517178931907628.correct : P7650517178931907628.Spec := by
  intro n
  simp only [A049113, Nat.add_sub_cancel, A049113.P7650517178931907628.a, A049113.P626448701058423886.a, A003434, A003434.P4346144669055339103.a, A049108, A049108.P4100200907408757597.a, A049115, A049115.P2000805014081711622.a, A054725, A054725.P13629253926091839604.a, A064415, A064415.P3438679109517359530.a, A134451, A134451.P12605129592745265341.a, A259103, A259103.P17430711073458267779.f1, A259103.P17430711073458267779.f2, A259103.P17430711073458267779.f3, A259103.P17430711073458267779.a, A053735, A053735.P3640341592284089632.a, A309243, A309243.P2615360336711731693.a, A054861, A054861.P6137810495506521191.a, A171462, A171462.P186066025836437895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049113

/-! ## A049113.P8674557501520157416

`A000523(2*A049116(n+1))`
-/

namespace A049113.P8674557501520157416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (2 * A049116 (n + 1)).toNat

end

end A049113.P8674557501520157416

namespace A049113

/-- `A000523(2*A049116(n+1))` -/
def P8674557501520157416.Spec : Prop :=
  ∀ n, P8674557501520157416.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P7570595977144595317

`A003434(2*A049116(n+1))`
-/

namespace A049113.P7570595977144595317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (2 * A049116 (n + 1)).toNat

end

end A049113.P7570595977144595317

namespace A049113

/-- `A003434(2*A049116(n+1))` -/
def P7570595977144595317.Spec : Prop :=
  ∀ n, P7570595977144595317.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P3671110041399156531

`A064415(2*A049116(n+1))`
-/

namespace A049113.P3671110041399156531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (2 * A049116 (n + 1)).toNat

end

end A049113.P3671110041399156531

namespace A049113

/-- `A064415(2*A049116(n+1))` -/
def P3671110041399156531.Spec : Prop :=
  ∀ n, P3671110041399156531.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P16311254491815114390

`∑{e}[A049116(2*A049116(n+1)), #]`
-/

namespace A049113.P16311254491815114390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049116 (2 * A049116 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A049113.P16311254491815114390

namespace A049113

/-- `∑{e}[A049116(2*A049116(n+1)), #]` -/
def P16311254491815114390.Spec : Prop :=
  ∀ n, (P16311254491815114390.a n : ℤ) = A049113 (n + 1)

end A049113

/-! ## A049113.P13383017235530955654

`A003434(A049116(n+1)+A049116(n+1))`
-/

namespace A049113.P13383017235530955654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A049116 (n + 1) + A049116 (n + 1)).toNat

end

end A049113.P13383017235530955654

namespace A049113

/-- `A003434(A049116(n+1)+A049116(n+1))` -/
def P13383017235530955654.Spec : Prop :=
  ∀ n, P13383017235530955654.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P17280394683907120674

`A064415(A049116(n+1)+A049116(n+1))`
-/

namespace A049113.P17280394683907120674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (A049116 (n + 1) + A049116 (n + 1)).toNat

end

end A049113.P17280394683907120674

namespace A049113

/-- `A064415(A049116(n+1)+A049116(n+1))` -/
def P17280394683907120674.Spec : Prop :=
  ∀ n, P17280394683907120674.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P2422005684084922229

`A000523(A049116(n+1)+A049116(n+1)+1)`
-/

namespace A049113.P2422005684084922229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A049116 (n + 1) + (A049116 (n + 1) + 1)).toNat

end

end A049113.P2422005684084922229

namespace A049113

/-- `A000523(A049116(n+1)+A049116(n+1)+1)` -/
def P2422005684084922229.Spec : Prop :=
  ∀ n, P2422005684084922229.a n = A049113 (n + 1)

end A049113

/-! ## A049113.P10124867703682732965

`A001222(A000267(A049116(n+1)²))`
-/

namespace A049113.P10124867703682732965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000267 (A049116 (n + 1) ^ 2).toNat).toNat

end

end A049113.P10124867703682732965

namespace A049113

/-- `A001222(A000267(A049116(n+1)²))` -/
def P10124867703682732965.Spec : Prop :=
  ∀ n, P10124867703682732965.a n = A049113 (n + 1)

end A049113

/-!
# A049114: 2-ranks of difference sets constructed from Glynn type II hyperovals.

The programs for A049114, the canonical program `A049114.P17310726559167198941` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049114 has offset 1).

The definition of A049114 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049114.P17310726559167198941

`a(n-1)+3*a(n-2)-a(n-3)-a(n-4)+1` with `a(0)=1, a(1)=1, a(2)=5, a(3)=7`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049114

/-- `a(n-1)+3*a(n-2)-a(n-3)-a(n-4)+1` -/
def P17310726559167198941.Spec : Prop :=
  ∀ n, P17310726559167198941.a n = A049114 (n + 1)

theorem P17310726559167198941.correct : P17310726559167198941.Spec := by
  intro n
  simp only [A049114, Nat.add_sub_cancel]

end A049114

/-! ## A049114.P15025113567529452127

`∑[A112576(n+1)]-A192422(n)`
-/

namespace A049114.P15025113567529452127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112576 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A192422 n

end

end A049114.P15025113567529452127

namespace A049114

/-- `∑[A112576(n+1)]-A192422(n)` -/
def P15025113567529452127.Spec : Prop :=
  ∀ n, P15025113567529452127.a n = A049114 (n + 1)

end A049114

/-! ## A049114.P14243769832435381711

`A004273(A289846(n)-A192422(n))`
-/

namespace A049114.P14243769832435381711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A289846 n - A192422 n).toNat

end

end A049114.P14243769832435381711

namespace A049114

/-- `A004273(A289846(n)-A192422(n))` -/
def P14243769832435381711.Spec : Prop :=
  ∀ n, P14243769832435381711.a n = A049114 (n + 1)

end A049114

/-! ## A049114.P18306298615958516680

`A163985(A289846(n)-A192422(n))`
-/

namespace A049114.P18306298615958516680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A289846 n - A192422 n).toNat

end

end A049114.P18306298615958516680

namespace A049114

/-- `A163985(A289846(n)-A192422(n))` -/
def P18306298615958516680.Spec : Prop :=
  ∀ n, P18306298615958516680.a n = A049114 (n + 1)

end A049114

/-!
# A049115: a(n) is the number of iterations of the Euler phi function needed to reach a power of 2, when starting from n.

The programs for A049115, the canonical program `A049115.P2000805014081711622` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049115 has offset 1).

The definition of A049115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049115.P5758209124966770776

`A227944(A000265(n+1))`
-/

namespace A049115.P5758209124966770776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (A000265 (n + 1)).toNat

end

end A049115.P5758209124966770776

namespace A049115

/-- `A227944(A000265(n+1))` -/
def P5758209124966770776.Spec : Prop :=
  ∀ n, P5758209124966770776.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P550953138017995565

`A227944(A153733(n)+1)`
-/

namespace A049115.P550953138017995565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (A153733 n + 1).toNat

end

end A049115.P550953138017995565

namespace A049115

/-- `A227944(A153733(n)+1)` -/
def P550953138017995565.Spec : Prop :=
  ∀ n, P550953138017995565.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P11996512906933105497

`A227944(n*A043545(n)+1)`
-/

namespace A049115.P11996512906933105497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 ((n : ℤ) * A043545 n + 1).toNat

end

end A049115.P11996512906933105497

namespace A049115

/-- `A227944(n*A043545(n)+1)` -/
def P11996512906933105497.Spec : Prop :=
  ∀ n, P11996512906933105497.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P15192787917236387394

`A227944(n+1)*A267442(n)`
-/

namespace A049115.P15192787917236387394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (n + 1) * A267442 n

end

end A049115.P15192787917236387394

namespace A049115

/-- `A227944(n+1)*A267442(n)` -/
def P15192787917236387394.Spec : Prop :=
  ∀ n, P15192787917236387394.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P6405812778517292184

`A049108(n+1)-A049113(n+1)`
-/

namespace A049115.P6405812778517292184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1) - A049113 (n + 1)

end

end A049115.P6405812778517292184

namespace A049115

/-- `A049108(n+1)-A049113(n+1)` -/
def P6405812778517292184.Spec : Prop :=
  ∀ n, P6405812778517292184.a n = A049115 (n + 1)

theorem P6405812778517292184.correct : P6405812778517292184.Spec := by
  intro n
  simp only [A049115, Nat.add_sub_cancel, A049115.P6405812778517292184.a, A049115.P2000805014081711622.a, A049108, A049108.P4100200907408757597.a, A049113, A049113.P626448701058423886.a, A064415, A064415.P3438679109517359530.a, A259103, A259103.P17430711073458267779.f1, A259103.P17430711073458267779.f2, A259103.P17430711073458267779.f3, A259103.P17430711073458267779.a, A054725, A054725.P13629253926091839604.a, A134451, A134451.P12605129592745265341.a, A309243, A309243.P2615360336711731693.a, A053735, A053735.P3640341592284089632.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A054861, A054861.P6137810495506521191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049115

/-! ## A049115.P2000805014081711622

`A259103(n+1)-A064415(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A049115

/-- `A259103(n+1)-A064415(n+1)` -/
def P2000805014081711622.Spec : Prop :=
  ∀ n, P2000805014081711622.a n = A049115 (n + 1)

theorem P2000805014081711622.correct : P2000805014081711622.Spec := by
  intro n
  simp only [A049115, Nat.add_sub_cancel]

end A049115

/-! ## A049115.P6004327439919835651

`A227944(n+1-A331739(n+1))`
-/

namespace A049115.P6004327439919835651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 ((n + 1 : ℤ) - A331739 (n + 1)).toNat

end

end A049115.P6004327439919835651

namespace A049115

/-- `A227944(n+1-A331739(n+1))` -/
def P6004327439919835651.Spec : Prop :=
  ∀ n, P6004327439919835651.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P10325998621909614951

`A003434(n+1)+1-A049113(n+1)`
-/

namespace A049115.P10325998621909614951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) + (1 - A049113 (n + 1))

end

end A049115.P10325998621909614951

namespace A049115

/-- `A003434(n+1)+1-A049113(n+1)` -/
def P10325998621909614951.Spec : Prop :=
  ∀ n, P10325998621909614951.a n = A049115 (n + 1)

theorem P10325998621909614951.correct : P10325998621909614951.Spec := by
  intro n
  simp only [A049115, Nat.add_sub_cancel, A049115.P10325998621909614951.a, A049115.P2000805014081711622.a, A003434, A003434.P4346144669055339103.a, A049113, A049113.P626448701058423886.a, A064415, A064415.P3438679109517359530.a, A259103, A259103.P17430711073458267779.f1, A259103.P17430711073458267779.f2, A259103.P17430711073458267779.f3, A259103.P17430711073458267779.a, A049108, A049108.P4100200907408757597.a, A309243, A309243.P2615360336711731693.a, A054725, A054725.P13629253926091839604.a, A134451, A134451.P12605129592745265341.a, A171462, A171462.P186066025836437895.a, A052126, A052126.P1944428405920482243.a, A053735, A053735.P3640341592284089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A049115

/-! ## A049115.P8616616333270465703

`∑[A334196(n+1)]-log2(A049116(n+1))`
-/

namespace A049115.P8616616333270465703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334196 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) - Real.logb 2 (A049116 (n + 1) : ℝ)

end

end A049115.P8616616333270465703

namespace A049115

/-- `∑[A334196(n+1)]-log2(A049116(n+1))` -/
def P8616616333270465703.Spec : Prop :=
  ∀ n, P8616616333270465703.a n = (A049115 (n + 1) : ℝ)

end A049115

/-! ## A049115.P17578693528406687928

`A003434(n+1)-A001222(A049116(n+1))`
-/

namespace A049115.P17578693528406687928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (n + 1) - A001222 (A049116 (n + 1)).toNat

end

end A049115.P17578693528406687928

namespace A049115

/-- `A003434(n+1)-A001222(A049116(n+1))` -/
def P17578693528406687928.Spec : Prop :=
  ∀ n, P17578693528406687928.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P14348247502488236961

`A049108(n+1)-A000005(A049116(n+1))`
-/

namespace A049115.P14348247502488236961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (n + 1) - A000005 (A049116 (n + 1)).toNat

end

end A049115.P14348247502488236961

namespace A049115

/-- `A049108(n+1)-A000005(A049116(n+1))` -/
def P14348247502488236961.Spec : Prop :=
  ∀ n, P14348247502488236961.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P4676273119864249845

`A227944(2*(n+1))-A209229(n+1)`
-/

namespace A049115.P4676273119864249845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (2 * (n + 1)) - A209229 (n + 1)

end

end A049115.P4676273119864249845

namespace A049115

/-- `A227944(2*(n+1))-A209229(n+1)` -/
def P4676273119864249845.Spec : Prop :=
  ∀ n, P4676273119864249845.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P11418345030441885393

`A227944(2*(n+1))+1-A014963(2*(n+1))`
-/

namespace A049115.P11418345030441885393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (2 * (n + 1)) + (1 - A014963 (2 * (n + 1)))

end

end A049115.P11418345030441885393

namespace A049115

/-- `A227944(2*(n+1))+1-A014963(2*(n+1))` -/
def P11418345030441885393.Spec : Prop :=
  ∀ n, P11418345030441885393.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P13955486274439639184

`A064415(n+1)+1-A064415(A049116(2*(n+1)))`
-/

namespace A049115.P13955486274439639184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064415 (n + 1) + 1 - A064415 (A049116 (2 * (n + 1))).toNat

end

end A049115.P13955486274439639184

namespace A049115

/-- `A064415(n+1)+1-A064415(A049116(2*(n+1)))` -/
def P13955486274439639184.Spec : Prop :=
  ∀ n, P13955486274439639184.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P375172937445681049

`A003434(2*(n+1))-A003434(A049116(2*(n+1)))`
-/

namespace A049115.P375172937445681049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (2 * (n + 1)) - A003434 (A049116 (2 * (n + 1))).toNat

end

end A049115.P375172937445681049

namespace A049115

/-- `A003434(2*(n+1))-A003434(A049116(2*(n+1)))` -/
def P375172937445681049.Spec : Prop :=
  ∀ n, P375172937445681049.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P17289274858063717351

`A049108(2*(n+1))-A049108(A049116(2*(n+1)))`
-/

namespace A049115.P17289274858063717351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049108 (2 * (n + 1)) - A049108 (A049116 (2 * (n + 1))).toNat

end

end A049115.P17289274858063717351

namespace A049115

/-- `A049108(2*(n+1))-A049108(A049116(2*(n+1)))` -/
def P17289274858063717351.Spec : Prop :=
  ∀ n, P17289274858063717351.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P2745171747147364796

`A227944(2*(n+1))-A227944(A014963(2*(n+1)))`
-/

namespace A049115.P2745171747147364796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227944 (2 * (n + 1)) - A227944 (A014963 (2 * (n + 1))).toNat

end

end A049115.P2745171747147364796

namespace A049115

/-- `A227944(2*(n+1))-A227944(A014963(2*(n+1)))` -/
def P2745171747147364796.Spec : Prop :=
  ∀ n, P2745171747147364796.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P13765563616100746685

`and(A227944(n+1), A387325(n))`
-/

namespace A049115.P13765563616100746685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A227944 (n + 1)) (A387325 n)

end

end A049115.P13765563616100746685

namespace A049115

/-- `and(A227944(n+1), A387325(n))` -/
def P13765563616100746685.Spec : Prop :=
  ∀ n, P13765563616100746685.a n = A049115 (n + 1)

end A049115

/-! ## A049115.P15771819628121134254

`and(A187767(n+1), A227944(n+1))`
-/

namespace A049115.P15771819628121134254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A187767 (n + 1)) (A227944 (n + 1))

end

end A049115.P15771819628121134254

namespace A049115

/-- `and(A187767(n+1), A227944(n+1))` -/
def P15771819628121134254.Spec : Prop :=
  ∀ n, P15771819628121134254.a n = A049115 (n + 1)

end A049115

/-!
# A049116: Repeatedly apply Euler phi to n; a(n) = highest power of 2 that is seen.

The programs for A049116, the canonical program `A049116.P4118642355827191209` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049116 has offset 1).

The definition of A049116 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049116.P11648554496916771189

`2^(A049113(n+1)-1)`
-/

namespace A049116.P11648554496916771189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A049113 (n + 1) - 1 : ℤ)

end

end A049116.P11648554496916771189

namespace A049116

/-- `2^(A049113(n+1)-1)` -/
def P11648554496916771189.Spec : Prop :=
  ∀ n, P11648554496916771189.a n = (A049116 (n + 1) : ℚ)

end A049116

/-! ## A049116.P3106216994867477953

`A011782(A049113(n+1))`
-/

namespace A049116.P3106216994867477953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A049113 (n + 1)).toNat

end

end A049116.P3106216994867477953

namespace A049116

/-- `A011782(A049113(n+1))` -/
def P3106216994867477953.Spec : Prop :=
  ∀ n, P3106216994867477953.a n = A049116 (n + 1)

end A049116

/-! ## A049116.P1385699797656347450

`A049063(A049113(n+1)²)`
-/

namespace A049116.P1385699797656347450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (A049113 (n + 1) ^ 2).toNat

end

end A049116.P1385699797656347450

namespace A049116

/-- `A049063(A049113(n+1)²)` -/
def P1385699797656347450.Spec : Prop :=
  ∀ n, P1385699797656347450.a n = A049116 (n + 1)

end A049116

/-! ## A049116.P10616244659570548956

`A000079(A049113(n+1)-1)`
-/

namespace A049116.P10616244659570548956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A049113 (n + 1) - 1).toNat

end

end A049116.P10616244659570548956

namespace A049116

/-- `A000079(A049113(n+1)-1)` -/
def P10616244659570548956.Spec : Prop :=
  ∀ n, P10616244659570548956.a n = A049116 (n + 1)

end A049116

/-! ## A049116.P7611321726136224397

`A000010(2^A049113(n+1))`
-/

namespace A049116.P7611321726136224397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A049113 (n + 1) : ℤ))).toNat

end

end A049116.P7611321726136224397

namespace A049116

/-- `A000010(2^A049113(n+1))` -/
def P7611321726136224397.Spec : Prop :=
  ∀ n, P7611321726136224397.a n = A049116 (n + 1)

end A049116

/-! ## A049116.P13578008703618283993

`A000225(A049113(n+1)-1)+1`
-/

namespace A049116.P13578008703618283993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A049113 (n + 1) - 1).toNat + 1

end

end A049116.P13578008703618283993

namespace A049116

/-- `A000225(A049113(n+1)-1)+1` -/
def P13578008703618283993.Spec : Prop :=
  ∀ n, P13578008703618283993.a n = A049116 (n + 1)

end A049116

/-! ## A049116.P4118642355827191209

`lcm(a(A109606(n+1)), A006519(n+1))` with `a(0)=1`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049116

/-- `lcm(a(A109606(n+1)), A006519(n+1))` -/
def P4118642355827191209.Spec : Prop :=
  ∀ n, (P4118642355827191209.a n : ℤ) = A049116 (n + 1)

theorem P4118642355827191209.correct : P4118642355827191209.Spec := by
  intro n
  simp only [A049116, Nat.add_sub_cancel]

end A049116

/-! ## A049116.P17930319613321280360

`A000079(A003434(n+1)-A049115(n+1))`
-/

namespace A049116.P17930319613321280360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A003434 (n + 1) - A049115 (n + 1)).toNat

end

end A049116.P17930319613321280360

namespace A049116

/-- `A000079(A003434(n+1)-A049115(n+1))` -/
def P17930319613321280360.Spec : Prop :=
  ∀ n, P17930319613321280360.a n = A049116 (n + 1)

end A049116

/-! ## A049116.P14784988134931833814

`A020639(A002202(n+1))^(A003434(n+1)-A049115(n+1))`
-/

namespace A049116.P14784988134931833814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A002202 (n + 1)).toNat : ℚ) ^ (A003434 (n + 1) - A049115 (n + 1) : ℤ)

end

end A049116.P14784988134931833814

namespace A049116

/-- `A020639(A002202(n+1))^(A003434(n+1)-A049115(n+1))` -/
def P14784988134931833814.Spec : Prop :=
  ∀ n, P14784988134931833814.a n = (A049116 (n + 1) : ℚ)

end A049116

/-! ## A049116.P1770391811992601584

`A000079(A049113(n+1)+n)/A000079(n+1)`
-/

namespace A049116.P1770391811992601584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (A049113 (n + 1) + (n : ℤ)).toNat : ℚ) / (A000079 (n + 1) : ℚ)

end

end A049116.P1770391811992601584

namespace A049116

/-- `A000079(A049113(n+1)+n)/A000079(n+1)` -/
def P1770391811992601584.Spec : Prop :=
  ∀ n, P1770391811992601584.a n = (A049116 (n + 1) : ℚ)

end A049116

/-! ## A049116.P10526207300180689712

`A020639(A002618(n+1))^(A003434(n+1)-A049115(n+1))`
-/

namespace A049116.P10526207300180689712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (A002618 (n + 1)).toNat : ℚ) ^ (A003434 (n + 1) - A049115 (n + 1) : ℤ)

end

end A049116.P10526207300180689712

namespace A049116

/-- `A020639(A002618(n+1))^(A003434(n+1)-A049115(n+1))` -/
def P10526207300180689712.Spec : Prop :=
  ∀ n, P10526207300180689712.a n = (A049116 (n + 1) : ℚ)

end A049116

/-! ## A049116.P9692913833463048673

`a(A109606(n+1))*A014963(A002618(n+1))` with `a(0)=1`
-/

namespace A049116.P9692913833463048673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A109606 (n + 1)).toNat * A014963 (A002618 (n + 1)).toNat

end

end A049116.P9692913833463048673

namespace A049116

/-- `a(A109606(n+1))*A014963(A002618(n+1))` -/
def P9692913833463048673.Spec : Prop :=
  ∀ n, P9692913833463048673.a n = A049116 (n + 1)

end A049116

/-!
# A049117: Smallest number which when Euler phi function is repeatedly applied have not reached a power of 2 in n steps.

The programs for A049117, there is no canonical definition to state claims against.
-/

/-! ## A049117.P10856360880522977520

`or(1, A227946(n+1))`
-/

namespace A049117.P10856360880522977520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A227946 (n + 1))

end

end A049117.P10856360880522977520

/-! ## A049117.P7916111663262335408

`record[A227946(n)+floor(acot(n)²)]`
-/

namespace A049117.P7916111663262335408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227946 n + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049117.P7916111663262335408

/-! ## A049117.P13207232593697215864

`A227946((n+1)*a(n-1)%2)` with `a(0)=3`
-/

namespace A049117.P13207232593697215864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A227946 ((n + 1 : ℤ) * Int.tmod (a (n - 1)) 2).toNat

end

end A049117.P13207232593697215864

/-! ## A049117.P2667520059958176183

`record[A227946(n)+A000038(n)]`
-/

namespace A049117.P2667520059958176183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227946 n + A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049117.P2667520059958176183

/-! ## A049117.P11767217612515031764

`A227946(n+1)+A000007(n)`
-/

namespace A049117.P11767217612515031764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227946 (n + 1) + A000007 n

end

end A049117.P11767217612515031764

/-!
# A049118: Row sums of triangle A035342 and array A134144.

The programs for A049118, there is no canonical definition to state claims against.
-/

/-! ## A049118.P17445544422115808785

`A081021(n+1)/∏[A005408(n)]`
-/

namespace A049118.P17445544422115808785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081021 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A049118.P17445544422115808785

/-! ## A049118.P2261722516340175582

`A081021(n+1)/record[A001497(n)]`
-/

namespace A049118.P2261722516340175582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081021 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A049118.P2261722516340175582

/-! ## A049118.P12385416722093811447

`A081021(n+1)/record[A055634(n)]`
-/

namespace A049118.P12385416722093811447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081021 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A049118.P12385416722093811447

/-! ## A049118.P14552290400874228270

`A081021(n+1)/A001147(n+1)`
-/

namespace A049118.P14552290400874228270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081021 (n + 1) : ℚ) / (A001147 (n + 1) : ℚ)

end

end A049118.P14552290400874228270

/-! ## A049118.P4487624461156726786

`A081021(n+1)/A055634(2*(n+1))`
-/

namespace A049118.P4487624461156726786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081021 (n + 1) : ℚ) / (A055634 (2 * (n + 1)) : ℚ)

end

end A049118.P4487624461156726786

/-!
# A049119: Row sums of triangle A035469.

The programs for A049119, there is no canonical definition to state claims against.
-/

/-! ## A049119.P6331041787450863900

`A081022(n+1)/∏[A005408(n)]`
-/

namespace A049119.P6331041787450863900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081022 (n + 1) : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A049119.P6331041787450863900

/-! ## A049119.P9577357019623474274

`A081022(n+1)/record[A001497(n)]`
-/

namespace A049119.P9577357019623474274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081022 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A049119.P9577357019623474274

/-! ## A049119.P11374635960458611096

`A081022(n+1)/record[A055634(n)]`
-/

namespace A049119.P11374635960458611096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055634 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081022 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A049119.P11374635960458611096

/-! ## A049119.P5679759897563284370

`A081022(n+1)/record[A305402(n)]`
-/

namespace A049119.P5679759897563284370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305402 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081022 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A049119.P5679759897563284370

/-! ## A049119.P5844113120404750988

`A081022(n+1)/record[A134146(n+1)]`
-/

namespace A049119.P5844113120404750988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134146 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081022 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A049119.P5844113120404750988

/-!
# A049121: If a(n) is prime, a(n+1) = a(n) followed by a 1; if a(n) is composite, a(n+1) = concatenation of prime factors of a(n) (with multiplicity).

The programs for A049121, there is no canonical definition to state claims against.
-/

/-! ## A049121.P7081706061204420897

`record[A055657(A014589(n))]`
-/

namespace A049121.P7081706061204420897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055657 (A014589 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049121.P7081706061204420897

/-! ## A049121.P99832146703131045

`record[A055657(A055648(n))]`
-/

namespace A049121.P99832146703131045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055657 (A055648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049121.P99832146703131045

/-! ## A049121.P11863102341808046317

`record[A055657(A357743(n))]`
-/

namespace A049121.P11863102341808046317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055657 (A357743 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049121.P11863102341808046317

/-! ## A049121.P5802466728496620697

`A055657(A055648(n+1)-1)`
-/

namespace A049121.P5802466728496620697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055657 (A055648 (n + 1) - 1).toNat

end

end A049121.P5802466728496620697

/-! ## A049121.P7851384030522275595

`A154269(A242201(n+4))+A055657(n)`
-/

namespace A049121.P7851384030522275595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A242201 (n + 4)).toNat + A055657 n

end

end A049121.P7851384030522275595

/-!
# A049122: Revert transform of x*(1 + 2*x)/(1 + 3*x + x^2).

The programs for A049122, the canonical program `A049122.P11757817425609271245` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049122 has offset 1).

The definition of A049122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049122.P11757817425609271245

`(A007440(n)+a(n-1))/2` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A049122

/-- `(A007440(n)+a(n-1))/2` -/
def P11757817425609271245.Spec : Prop :=
  ∀ n, P11757817425609271245.a n = (A049122 (n + 1) : ℚ)

end A049122

/-!
# A049123: Revert transform of x*(1 - 3*x + x^2)/(1 - 2*x - x^2).

The programs for A049123, there is no canonical definition to state claims against.
-/

/-! ## A049123.P15564837798735908621

`A004277(A165543(n))-A165542(n)`
-/

namespace A049123.P15564837798735908621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A165543 n).toNat - A165542 n

end

end A049123.P15564837798735908621

/-! ## A049123.P9629398682291222016

`char[7]+A261221(A149775(n))+char[7]`
-/

namespace A049123.P9629398682291222016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A261221 (A149775 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))

end

end A049123.P9629398682291222016

/-! ## A049123.P14651874660054602499

`A165543(n)+A011739(A188570(n))`
-/

namespace A049123.P14651874660054602499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165543 n + A011739 (A188570 n).toNat

end

end A049123.P14651874660054602499

/-! ## A049123.P16677355359091942192

`A165542(n)+A083894(A197772(n))`
-/

namespace A049123.P16677355359091942192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165542 n + A083894 (A197772 n).toNat

end

end A049123.P16677355359091942192

/-!
# A049124: Revert transform of (-1 + x + x^2)/((x - 1)*(x + 1)).

The programs for A049124, there is no canonical definition to state claims against.
-/

/-! ## A049124.P18308875842721782046

`A376958(A124303(n))`
-/

namespace A049124.P18308875842721782046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A124303 n).toNat

end

end A049124.P18308875842721782046

/-! ## A049124.P13863299311096045766

`A376958(A367414(n))`
-/

namespace A049124.P13863299311096045766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376958 (A367414 n).toNat

end

end A049124.P13863299311096045766

/-! ## A049124.P438319684887691990

`A008611(A149994(n)-A174706(n+1))`
-/

namespace A049124.P438319684887691990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A149994 n - A174706 (n + 1)).toNat

end

end A049124.P438319684887691990

/-! ## A049124.P8327514207385645711

`A008620(A149994(n)-A174706(n+1))`
-/

namespace A049124.P8327514207385645711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A149994 n - A174706 (n + 1)).toNat

end

end A049124.P8327514207385645711

/-!
# A049125: Revert transform of (1 + x - x^2) / (1 + x)^2.

The programs for A049125, there is no canonical definition to state claims against.
-/

/-! ## A049125.P3586871689825892666

`A210034(A001844(n))/(n+1)`
-/

namespace A049125.P3586871689825892666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210034 (A001844 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A049125.P3586871689825892666

/-! ## A049125.P17648253954041565501

`A184955(A004273(n))+A124344(n+1)`
-/

namespace A049125.P17648253954041565501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A004273 n).toNat + A124344 (n + 1)

end

end A049125.P17648253954041565501

/-! ## A049125.P2183075689342060665

`or(A124344(n+1), A272894(A032311(n)))`
-/

namespace A049125.P2183075689342060665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124344 (n + 1)) (A272894 (A032311 n).toNat)

end

end A049125.P2183075689342060665

/-! ## A049125.P12365497459438770964

`or(A057979(A309861(n)), A124344(n+1))`
-/

namespace A049125.P12365497459438770964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057979 (A309861 n).toNat) (A124344 (n + 1))

end

end A049125.P12365497459438770964

/-! ## A049125.P17391643541689082390

`or(A124344(n+1), A292547(A208034(n)))`
-/

namespace A049125.P17391643541689082390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A124344 (n + 1)) (A292547 (A208034 n).toNat)

end

end A049125.P17391643541689082390

/-!
# A049126: Revert transform of ((x - 1)(3x - 1))/(1 - 3x + x^3).

The programs for A049126, there is no canonical definition to state claims against.
-/

/-! ## A049126.P8888181036326385927

`A165523(n)+A103919(A001333(n+4))`
-/

namespace A049126.P8888181036326385927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165523 n + A103919 (A001333 (n + 4)).toNat

end

end A049126.P8888181036326385927

/-! ## A049126.P5529911946150749339

`or(A165523(n), A305809(A000225(2*n+1)))`
-/

namespace A049126.P5529911946150749339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A165523 n) (A305809 (A000225 (2 * n + 1)).toNat)

end

end A049126.P5529911946150749339

/-!
# A049127: Revert transform of (-1 + 2x + x^2)/(-1 + x + 2x^2 + x^3).

The programs for A049127, there is no canonical definition to state claims against.
-/

/-! ## A049127.P1424810723355940064

`A038385(n)+A008619(A059278(n))`
-/

namespace A049127.P1424810723355940064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038385 n + A008619 (A059278 n).toNat

end

end A049127.P1424810723355940064

/-! ## A049127.P7338580314852005077

`A199481(n)-A025457(A000142(n))`
-/

namespace A049127.P7338580314852005077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199481 n - A025457 (A000142 n).toNat

end

end A049127.P7338580314852005077

/-! ## A049127.P623110785755975894

`A103221(A038077(n+1)-A114994(n))`
-/

namespace A049127.P623110785755975894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A038077 (n + 1) - A114994 n).toNat

end

end A049127.P623110785755975894

/-! ## A049127.P17740168264053248142

`A049137(n+1)-A324421(A027337(n))`
-/

namespace A049127.P17740168264053248142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049137 (n + 1) - A324421 (A027337 n).toNat

end

end A049127.P17740168264053248142

/-!
# A049128: Revert transform of x*(x - 1)^2/(1 - x + x^3).

The programs for A049128, there is no canonical definition to state claims against.
-/

/-! ## A049128.P8018027975545418259

`A192540(n+1)-A304058(A309861(n))`
-/

namespace A049128.P8018027975545418259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192540 (n + 1) - A304058 (A309861 n).toNat

end

end A049128.P8018027975545418259

/-! ## A049128.P5254704714365226868

`A192540(n+1)-A278987(A283960(n+1))`
-/

namespace A049128.P5254704714365226868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192540 (n + 1) - A278987 (A283960 (n + 1)).toNat

end

end A049128.P5254704714365226868

/-! ## A049128.P6359324791592349288

`A248231(A148940(n)-char[7])`
-/

namespace A049128.P6359324791592349288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (A148940 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A049128.P6359324791592349288

/-! ## A049128.P14968610911364598201

`A034887(A307487(n+1))-char[7]`
-/

namespace A049128.P14968610911364598201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (A307487 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A049128.P14968610911364598201

/-!
# A049129: Revert transform of (3x^2 - 1)/(-1 - x + 2x^2 + x^3).

The programs for A049129, there is no canonical definition to state claims against.
-/

/-! ## A049129.P6696058912327233601

`A244479((ceil(2^(n-1))+1)²)`
-/

namespace A049129.P6696058912327233601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244479 ((⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1) ^ 2).toNat

end

end A049129.P6696058912327233601

/-! ## A049129.P10903168351971755139

`A008621(A094373(n)²-n)`
-/

namespace A049129.P10903168351971755139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A094373 n ^ 2 - (n : ℤ)).toNat

end

end A049129.P10903168351971755139

/-! ## A049129.P1003464571604307170

`ceil(A020703(A011782(n)²+n)/4)`
-/

namespace A049129.P1003464571604307170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A020703 (A011782 n ^ 2 + (n : ℤ)).toNat : ℚ) / 4⌉

end

end A049129.P1003464571604307170

/-! ## A049129.P1488502127434683087

`floor(A074286((A011782(n)+1)²+1)/2)`
-/

namespace A049129.P1488502127434683087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A074286 ((A011782 n + 1) ^ 2 + 1).toNat : ℚ) / 2⌋

end

end A049129.P1488502127434683087

/-!
# A049130: Revert transform of ((x - 1)(x + 1))/(-1 - x + x^3).

The programs for A049130, there is no canonical definition to state claims against.
-/

/-! ## A049130.P6260024024243572050

`A255072(A132838(n)+floor(6^(n/4)))`
-/

namespace A049130.P6260024024243572050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (A132838 n + ⌊(6 : ℝ) ^ ((n : ℚ) / 4 : ℝ)⌋).toNat

end

end A049130.P6260024024243572050

/-! ## A049130.P5692923084600557534

`A008620(A081163(n)+A081149(n))`
-/

namespace A049130.P5692923084600557534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A081163 n + A081149 n).toNat

end

end A049130.P5692923084600557534

/-! ## A049130.P17995865613277573998

`A210043(n)+A093492(A148843(n))`
-/

namespace A049130.P17995865613277573998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210043 n + A093492 (A148843 n).toNat

end

end A049130.P17995865613277573998

/-! ## A049130.P4545351945781965554

`A293162(A001835(n))+A210043(n)`
-/

namespace A049130.P4545351945781965554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (A001835 n).toNat + A210043 n

end

end A049130.P4545351945781965554

/-! ## A049130.P13917565845177982217

`A210043(n)+A037822(A112960(n+1))`
-/

namespace A049130.P13917565845177982217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210043 n + A037822 (A112960 (n + 1)).toNat

end

end A049130.P13917565845177982217

/-!
# A049131: Revert transform of (1 + 2x - x^2)/(1 + 3x + 2x^2 + x^3).

The programs for A049131, there is no canonical definition to state claims against.
-/

/-! ## A049131.P15148341219212562769

`A321211(A321720(n))`
-/

namespace A049131.P15148341219212562769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321211 (A321720 n).toNat

end

end A049131.P15148341219212562769

/-! ## A049131.P13495490829565569717

`A230555(n)-A033665(round(n^n/n!))`
-/

namespace A049131.P13495490829565569717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230555 n - A033665 (SequenceMachineLib.roundAway ((n ^ n : ℚ) / (Nat.factorial n : ℚ))).toNat

end

end A049131.P13495490829565569717

/-! ## A049131.P16350657548927659838

`A023193(A115098(n)-A002843(n))`
-/

namespace A049131.P16350657548927659838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A115098 n - A002843 n).toNat

end

end A049131.P16350657548927659838

/-!
# A049134: Revert transform of (1 - 5x + 6x^2 - x^3)/(1 - 4x + 2x^2 + 2x^3).

The programs for A049134, there is no canonical definition to state claims against.
-/

/-! ## A049134.P10285135563952321750

`A155069(n)-A002620(A309861(n))`
-/

namespace A049134.P10285135563952321750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 n - A002620 (A309861 n).toNat

end

end A049134.P10285135563952321750

/-! ## A049134.P7931341249892122581

`A178798(A000994(n))+A155069(n)`
-/

namespace A049134.P7931341249892122581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A000994 n).toNat + A155069 n

end

end A049134.P7931341249892122581

/-! ## A049134.P13462166951743671712

`A178779(A001037(n))+A155069(n)`
-/

namespace A049134.P13462166951743671712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178779 (A001037 n).toNat + A155069 n

end

end A049134.P13462166951743671712

/-! ## A049134.P15183987039667363113

`A178798(A072964(n))+A155069(n)`
-/

namespace A049134.P15183987039667363113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A072964 n).toNat + A155069 n

end

end A049134.P15183987039667363113

/-!
# A049135: Revert transform of (-1 + 3x - 2x^2 + x^3)/(2x - 1).

The programs for A049135, there is no canonical definition to state claims against.
-/

/-! ## A049135.P6475636549455550775

`A008619(A059278(n)+∑{digits}[n, floor(#/7)])`
-/

namespace A049135.P6475636549455550775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059278 n + ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => ⌊(x : ℚ) / 7⌋).sum).toNat

end

end A049135.P6475636549455550775

/-! ## A049135.P4084649914793990896

`A008619(A059278(n)+∑[floor(dr(n)/7)])`
-/

namespace A049135.P4084649914793990896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.digitalRoot (n : ℤ) : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A059278 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049135.P4084649914793990896

/-! ## A049135.P3228084573655374801

`A004526(A219644(n)+A059278(n))`
-/

namespace A049135.P3228084573655374801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A219644 n + A059278 n).toNat

end

end A049135.P3228084573655374801

/-! ## A049135.P9117079463560745063

`A008619(A269166(n)+A059278(n))`
-/

namespace A049135.P9117079463560745063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A269166 n + A059278 n).toNat

end

end A049135.P9117079463560745063

/-!
# A049136: Revert transform of (1 - 3x + x^3)/(1 - 2x - 2x^2).

The programs for A049136, there is no canonical definition to state claims against.
-/

/-! ## A049136.P4905871614912588391

`A004277(A155069(n))-A053617(n)`
-/

namespace A049136.P4905871614912588391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A155069 n).toNat - A053617 n

end

end A049136.P4905871614912588391

/-! ## A049136.P14360959155004580574

`A008620(A049160(n)+A049139(n+1))`
-/

namespace A049136.P14360959155004580574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A049160 n + A049139 (n + 1)).toNat

end

end A049136.P14360959155004580574

/-! ## A049136.P4697174946566629613

`A373847(A224232(n))`
-/

namespace A049136.P4697174946566629613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A224232 n).toNat

end

end A049136.P4697174946566629613

/-!
# A049137: Revert transform of (1 - x - 4x^2 + x^3)/(1 - 4x^2 - 2x^3).

The programs for A049137, there is no canonical definition to state claims against.
-/

/-! ## A049137.P13448037390252781246

`A324421(A027337(n))+A049127(n+1)`
-/

namespace A049137.P13448037390252781246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324421 (A027337 n).toNat + A049127 (n + 1)

end

end A049137.P13448037390252781246

/-! ## A049137.P16172386185795795874

`A339089(A045625(n))+A049127(n+1)`
-/

namespace A049137.P16172386185795795874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339089 (A045625 n).toNat + A049127 (n + 1)

end

end A049137.P16172386185795795874

/-!
# A049138: Revert transform of (1 - 3x + 2x^2 + x^3)/(1 - 2x + 2x^3).

The programs for A049138, there is no canonical definition to state claims against.
-/

/-! ## A049138.P18348259509671348889

`A386758(A148925(n+1))`
-/

namespace A049138.P18348259509671348889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386758 (A148925 (n + 1)).toNat

end

end A049138.P18348259509671348889

/-! ## A049138.P16633159167187260321

`A008621(∑[xor(1, A149982(n))])`
-/

namespace A049138.P16633159167187260321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A149982 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049138.P16633159167187260321

/-! ## A049138.P2111711974596887811

`A360886(n)+A002265(A007717(n))`
-/

namespace A049138.P2111711974596887811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360886 n + A002265 (A007717 n).toNat

end

end A049138.P2111711974596887811

/-! ## A049138.P14950874691811090814

`A360891(n)+A002265(A007717(n))`
-/

namespace A049138.P14950874691811090814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360891 n + A002265 (A007717 n).toNat

end

end A049138.P14950874691811090814

/-!
# A049139: Revert transform of (1 - x - 2x^2 + x^3)/(1 - 2x^2).

The programs for A049139, there is no canonical definition to state claims against.
-/

/-! ## A049139.P17994742767955357575

`A303843(n+1)+A157271(A107594(n))`
-/

namespace A049139.P17994742767955357575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303843 (n + 1) + A157271 (A107594 n).toNat

end

end A049139.P17994742767955357575

/-! ## A049139.P128162813072471897

`A141200(n+1)-A096972(A020094(n))`
-/

namespace A049139.P128162813072471897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141200 (n + 1) - A096972 (A020094 n).toNat

end

end A049139.P128162813072471897

/-! ## A049139.P4812056788600330917

`A141200(n+1)-A225099(A005043(n))`
-/

namespace A049139.P4812056788600330917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141200 (n + 1) - A225099 (A005043 n).toNat

end

end A049139.P4812056788600330917

/-! ## A049139.P5113314937627195226

`A141200(n+1)-A270417(A000522(n))`
-/

namespace A049139.P5113314937627195226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141200 (n + 1) - A270417 (A000522 n).toNat

end

end A049139.P5113314937627195226

/-!
# A049140: Revert transform of 1 - x - x^3.

The programs for A049140, there is no canonical definition to state claims against.
-/

/-! ## A049140.P8727792713439872229

`A383479(n)/(n+1)`
-/

namespace A049140.P8727792713439872229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383479 n : ℚ) / (n + 1 : ℚ)

end

end A049140.P8727792713439872229

/-! ## A049140.P4473320647639807794

`A001002(n)/A038112(n)*A383479(n)`
-/

namespace A049140.P4473320647639807794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001002 n : ℚ) / (A038112 n : ℚ) * (A383479 n : ℚ)

end

end A049140.P4473320647639807794

/-! ## A049140.P9442685757891678927

`A052740(n+1)/record[A295381(n)]`
-/

namespace A049140.P9442685757891678927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295381 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052740 (n + 1) : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A049140.P9442685757891678927

/-! ## A049140.P7287479265221214634

`A052740(n+1)/A131758(∑[n+2])`
-/

namespace A049140.P7287479265221214634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052740 (n + 1) : ℚ) / (A131758 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A049140.P7287479265221214634

/-! ## A049140.P14742331504190334290

`A052740(n+1)/A295381(∑[n+2])`
-/

namespace A049140.P14742331504190334290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052740 (n + 1) : ℚ) / (A295381 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A049140.P14742331504190334290

/-!
# A049141: Revert transform of (1 + x - 4x^2 - x^3)/(1 + 2x - 2x^2 - 2x^3).

The programs for A049141, there is no canonical definition to state claims against.
-/

/-! ## A049141.P3770462858129097699

`A261585(A149938(n+1)-2)`
-/

namespace A049141.P3770462858129097699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261585 (A149938 (n + 1) - 2).toNat

end

end A049141.P3770462858129097699

/-! ## A049141.P10360123490658159469

`or(A072376(A001353(n)), A389508(n))`
-/

namespace A049141.P10360123490658159469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A072376 (A001353 n).toNat) (A389508 n)

end

end A049141.P10360123490658159469

/-! ## A049141.P11729429824186352405

`A187186(A257273(n)+A101546(n+1))`
-/

namespace A049141.P11729429824186352405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187186 (A257273 n + A101546 (n + 1)).toNat

end

end A049141.P11729429824186352405

/-! ## A049141.P3084161288277102986

`A110656(A332746(2*n)+A007582(n))`
-/

namespace A049141.P3084161288277102986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A332746 (2 * n) + A007582 n).toNat

end

end A049141.P3084161288277102986

/-!
# A049142: Revert transform of (1 - x + 2x^2 - x^3)/(1 + 2x^2).

The programs for A049142, there is no canonical definition to state claims against.
-/

/-! ## A049142.P3464004305140633677

`A141366(n+1)+A054908(A230698(n))`
-/

namespace A049142.P3464004305140633677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141366 (n + 1) + A054908 (A230698 n).toNat

end

end A049142.P3464004305140633677

/-! ## A049142.P8383758282112967625

`A141366(n+1)+A025456(A283011(n))`
-/

namespace A049142.P8383758282112967625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141366 (n + 1) + A025456 (A283011 n).toNat

end

end A049142.P8383758282112967625

/-! ## A049142.P14741591281723672891

`A185284(A089651(n+1))+A141366(n+1)`
-/

namespace A049142.P14741591281723672891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A089651 (n + 1)).toNat + A141366 (n + 1)

end

end A049142.P14741591281723672891

/-! ## A049142.P8755897500926282679

`A141366(A043320(n+1))`
-/

namespace A049142.P8755897500926282679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141366 (A043320 (n + 1)).toNat

end

end A049142.P8755897500926282679

/-! ## A049142.P14952286204081973989

`A141366(A044917(n+1))`
-/

namespace A049142.P14952286204081973989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141366 (A044917 (n + 1)).toNat

end

end A049142.P14952286204081973989

/-!
# A049143: Revert transform of (1 - x - 2x^2 + x^3)/(1 - 2x^2 - 2x^3).

The programs for A049143, there is no canonical definition to state claims against.
-/

/-! ## A049143.P14704749855063255200

`A011960(A099241(n+1))`
-/

namespace A049143.P14704749855063255200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (A099241 (n + 1)).toNat

end

end A049143.P14704749855063255200

/-! ## A049143.P6935724208867703380

`A103221(A264926(n)+A014318(n))`
-/

namespace A049143.P6935724208867703380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A264926 n + A014318 n).toNat

end

end A049143.P6935724208867703380

/-! ## A049143.P9908591823515288227

`A225545(A128086(n)+A036629(n))`
-/

namespace A049143.P9908591823515288227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225545 (A128086 n + A036629 n).toNat

end

end A049143.P9908591823515288227

/-! ## A049143.P10691109173006010050

`A154125(A089429(n))+A025462(A089429(n))`
-/

namespace A049143.P10691109173006010050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A089429 n).toNat + A025462 (A089429 n).toNat

end

end A049143.P10691109173006010050

/-!
# A049144: Revert transform of (1 + x - 2x^2 + x^3)/(1 + 2x).

The programs for A049144, there is no canonical definition to state claims against.
-/

/-! ## A049144.P12165141310458399993

`ceil(sqrt(A110080(n!)))`
-/

namespace A049144.P12165141310458399993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A110080 (Nat.factorial n) : ℝ)⌉

end

end A049144.P12165141310458399993

/-! ## A049144.P6091260349796915813

`A177849(∑[round(ϕ²*a(n-1))])` with `a(0)=6`
-/

namespace A049144.P6091260349796915813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049144.P6091260349796915813

/-! ## A049144.P10732138090149109077

`A026834(A304962(n))`
-/

namespace A049144.P10732138090149109077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A304962 n).toNat

end

end A049144.P10732138090149109077

/-! ## A049144.P14015368971228994301

`A347831(A274860(n))`
-/

namespace A049144.P14015368971228994301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347831 (A274860 n).toNat

end

end A049144.P14015368971228994301

/-!
# A049145: Revert transform of (1 + x - x^3)/(1 + 2x + 2x^2).

The programs for A049145, there is no canonical definition to state claims against.
-/

/-! ## A049145.P12376393079086449741

`A075864(n)+A068106(A309861(n))`
-/

namespace A049145.P12376393079086449741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075864 n + A068106 (A309861 n).toNat

end

end A049145.P12376393079086449741

/-! ## A049145.P16412354379369562468

`A185238(A092893(n))+A154835(n+1)`
-/

namespace A049145.P16412354379369562468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A092893 n).toNat + A154835 (n + 1)

end

end A049145.P16412354379369562468

/-! ## A049145.P5000734731269675046

`A358455(n+1)-A002865(A309861(n))`
-/

namespace A049145.P5000734731269675046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358455 (n + 1) - A002865 (A309861 n).toNat

end

end A049145.P5000734731269675046

/-! ## A049145.P4695909091631401380

`A185238(A209721(n+1))+A154835(n+1)`
-/

namespace A049145.P4695909091631401380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A209721 (n + 1)).toNat + A154835 (n + 1)

end

end A049145.P4695909091631401380

/-! ## A049145.P14337346668725641334

`A185238(A088502(n+4))+A154835(n+1)`
-/

namespace A049145.P14337346668725641334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A088502 (n + 4)).toNat + A154835 (n + 1)

end

end A049145.P14337346668725641334

/-!
# A049146: Revert transform of (1 + 3x - x^3)/(1 + 4x + 4x^2 + 2x^3).

The programs for A049146, there is no canonical definition to state claims against.
-/

/-! ## A049146.P5694339239355183533

`A137842(n)+A023969(A151427(n))`
-/

namespace A049146.P5694339239355183533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137842 n + A023969 (A151427 n).toNat

end

end A049146.P5694339239355183533

/-! ## A049146.P17537458347700476437

`A137842(n)+A102679(A088218(n))`
-/

namespace A049146.P17537458347700476437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137842 n + A102679 (A088218 n).toNat

end

end A049146.P17537458347700476437

/-! ## A049146.P16423365785808878162

`A000682(n+1)-A025427(A003471(n))`
-/

namespace A049146.P16423365785808878162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 1) - A025427 (A003471 n).toNat

end

end A049146.P16423365785808878162

/-! ## A049146.P17081560432711284481

`A000682(n+1)-A070201(A001680(n))`
-/

namespace A049146.P17081560432711284481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000682 (n + 1) - A070201 (A001680 n).toNat

end

end A049146.P17081560432711284481

/-!
# A049149: Numbers k such that the Euler totient function phi(k) is squarefree.

The programs for A049149, the canonical program `A049149.P3106904862429449036` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049149 has offset 1).

The definition of A049149 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5590 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049149.P984875645516084348

`∪[A049196(n+1), A049198(n+1)]`
-/

namespace A049149.P984875645516084348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049149.P984875645516084348

namespace A049149

/-- `∪[A049196(n+1), A049198(n+1)]` -/
def P984875645516084348.Spec : Prop :=
  ∀ n, (P984875645516084348.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P3106904862429449036

`record[(n+1)*A008966(A000010(n+1))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A049149

/-- `record[(n+1)*A008966(A000010(n+1))]` -/
def P3106904862429449036.Spec : Prop :=
  ∀ n, P3106904862429449036.a n = A049149 (n + 1)

theorem P3106904862429449036.correct : P3106904862429449036.Spec := by
  intro n
  simp only [A049149, Nat.add_sub_cancel]

end A049149

/-! ## A049149.P7814368978556232467

`∩[A097987(n+1), A210845(n+1)]`
-/

namespace A049149.P7814368978556232467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049149.P7814368978556232467

namespace A049149

/-- `∩[A097987(n+1), A210845(n+1)]` -/
def P7814368978556232467.Spec : Prop :=
  ∀ n, (P7814368978556232467.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P14629960208445136789

`eq[A317934(A000010(n+1)), A317941(n+1)]+1`
-/

namespace A049149.P14629960208445136789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317934 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049149.P14629960208445136789

namespace A049149

/-- `eq[A317934(A000010(n+1)), A317941(n+1)]+1` -/
def P14629960208445136789.Spec : Prop :=
  ∀ n, (P14629960208445136789.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P4359651331090259390

`∩[A033948(n+1), A336654(n+1)]`
-/

namespace A049149.P4359651331090259390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049149.P4359651331090259390

namespace A049149

/-- `∩[A033948(n+1), A336654(n+1)]` -/
def P4359651331090259390.Spec : Prop :=
  ∀ n, (P4359651331090259390.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P17156563651348047052

`∩[A097987(n+1), A336654(n+1)]`
-/

namespace A049149.P17156563651348047052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049149.P17156563651348047052

namespace A049149

/-- `∩[A097987(n+1), A336654(n+1)]` -/
def P17156563651348047052.Spec : Prop :=
  ∀ n, (P17156563651348047052.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P15687487311383102745

`∩[A300064(n+1), A336654(n+1)]`
-/

namespace A049149.P15687487311383102745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300064 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336654 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049149.P15687487311383102745

namespace A049149

/-- `∩[A300064(n+1), A336654(n+1)]` -/
def P15687487311383102745.Spec : Prop :=
  ∀ n, (P15687487311383102745.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P17698092696200446768

`eq[1, A000688(A000010(n+1))]+1`
-/

namespace A049149.P17698092696200446768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049149.P17698092696200446768

namespace A049149

/-- `eq[1, A000688(A000010(n+1))]+1` -/
def P17698092696200446768.Spec : Prop :=
  ∀ n, (P17698092696200446768.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P5954728716352791851

`lt[A058190(Δ[A049643(n)]), 1]+1`
-/

namespace A049149.P5954728716352791851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A049149.P5954728716352791851

namespace A049149

/-- `lt[A058190(Δ[A049643(n)]), 1]+1` -/
def P5954728716352791851.Spec : Prop :=
  ∀ n, (P5954728716352791851.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P10032156414131779628

`eq[1, A085731(A109606(n+1)+1)]+1`
-/

namespace A049149.P10032156414131779628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049149.P10032156414131779628

namespace A049149

/-- `eq[1, A085731(A109606(n+1)+1)]+1` -/
def P10032156414131779628.Spec : Prop :=
  ∀ n, (P10032156414131779628.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P10492449814658912210

`eq[1, A046951(A039649(n+1)-1)]+1`
-/

namespace A049149.P10492449814658912210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049149.P10492449814658912210

namespace A049149

/-- `eq[1, A046951(A039649(n+1)-1)]+1` -/
def P10492449814658912210.Spec : Prop :=
  ∀ n, (P10492449814658912210.a n : ℤ) = A049149 (n + 1)

end A049149

/-! ## A049149.P2104472572768221381

`eq[1, A057521(A039649(n+1)-1)]+1`
-/

namespace A049149.P2104472572768221381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049149.P2104472572768221381

namespace A049149

/-- `eq[1, A057521(A039649(n+1)-1)]+1` -/
def P2104472572768221381.Spec : Prop :=
  ∀ n, (P2104472572768221381.a n : ℤ) = A049149 (n + 1)

end A049149

/-!
# A049150: Recip transform of 2*(1 + x^2)-1/(1-x).

The programs for A049150, there is no canonical definition to state claims against.
-/

/-! ## A049150.P12823857112333262349

`A340019(A190159(n+1))`
-/

namespace A049150.P12823857112333262349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (A190159 (n + 1)).toNat

end

end A049150.P12823857112333262349

/-! ## A049150.P8879843019235151308

`A293137(∑[A347435(n)]²)`
-/

namespace A049150.P8879843019235151308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A049150.P8879843019235151308

/-! ## A049150.P17665159273485373984

`A106151(round((A177253(n)+1)/4))`
-/

namespace A049150.P17665159273485373984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106151 (SequenceMachineLib.roundAway ((A177253 n + 1 : ℚ) / 4)).toNat

end

end A049150.P17665159273485373984

/-!
# A049151: Recip transform of 2*(1 + x^3)-1/(1-x).

The programs for A049151, there is no canonical definition to state claims against.
-/

/-! ## A049151.P11720178692160495346

`A210713(A014372(n))+A049176(n+1)`
-/

namespace A049151.P11720178692160495346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049176 (n + 1)

end

end A049151.P11720178692160495346

/-! ## A049151.P14127442681125163031

`or(A049176(n+1), A356241(A000142(n)))`
-/

namespace A049151.P14127442681125163031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049176 (n + 1)) (A356241 (A000142 n).toNat)

end

end A049151.P14127442681125163031

/-! ## A049151.P13961663721627924047

`or(A049176(n+1), A284569(A138178(n)))`
-/

namespace A049151.P13961663721627924047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049176 (n + 1)) (A284569 (A138178 n).toNat)

end

end A049151.P13961663721627924047

/-!
# A049152: Recip transform of 2*(1 + x^4)-1/(1-x).

The programs for A049152, there is no canonical definition to state claims against.
-/

/-! ## A049152.P14638922519568576770

`or(A000120(n!), A049180(n+1))`
-/

namespace A049152.P14638922519568576770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000120 (Nat.factorial n)) (A049180 (n + 1))

end

end A049152.P14638922519568576770

/-! ## A049152.P14588901936667020411

`A210713(A014372(n))+A049180(n+1)`
-/

namespace A049152.P14588901936667020411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049180 (n + 1)

end

end A049152.P14588901936667020411

/-! ## A049152.P76044217137578772

`A297240(A014521(n))+A049180(n+1)`
-/

namespace A049152.P76044217137578772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A014521 n).toNat + A049180 (n + 1)

end

end A049152.P76044217137578772

/-! ## A049152.P3713835691270751751

`or(A001222(A003501(n)), A049180(n+1))`
-/

namespace A049152.P3713835691270751751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A003501 n).toNat) (A049180 (n + 1))

end

end A049152.P3713835691270751751

/-!
# A049153: Recip transform of 2*(1 + x^2 + x^4)-1/(1-x).

The programs for A049153, there is no canonical definition to state claims against.
-/

/-! ## A049153.P1036677326935457087

`A133310(∑[3*A035038(n)])`
-/

namespace A049153.P1036677326935457087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A035038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049153.P1036677326935457087

/-! ## A049153.P18207160643122425052

`A008619(4*A035039(n+1))`
-/

namespace A049153.P18207160643122425052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A035039 (n + 1)).toNat

end

end A049153.P18207160643122425052

/-! ## A049153.P1847393473428972683

`A005408(A035039(a(floor(n/2))+n))` with `a(0)=1`
-/

namespace A049153.P1847393473428972683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005408 (A035039 (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ)).toNat).toNat

end

end A049153.P1847393473428972683

/-! ## A049153.P3041769965813853157

`A005408(A035039(n+1)^A055642(n))`
-/

namespace A049153.P3041769965813853157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway ((A035039 (n + 1) : ℚ) ^ (A055642 n : ℤ))).toNat

end

end A049153.P3041769965813853157

/-!
# A049154: Recip transform of 2*(1 + x^3 + x^4)-1/(1-x).

The programs for A049154, there is no canonical definition to state claims against.
-/

/-! ## A049154.P17094352017388680898

`A210713(A014372(n))+A049179(n+1)`
-/

namespace A049154.P17094352017388680898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049179 (n + 1)

end

end A049154.P17094352017388680898

/-! ## A049154.P257150754355414275

`A324802(A049153(n))+A049179(n+1)`
-/

namespace A049154.P257150754355414275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (A049153 n).toNat + A049179 (n + 1)

end

end A049154.P257150754355414275

/-! ## A049154.P15139745964962817509

`or(A005087(A000088(n)), A052709(n+1))`
-/

namespace A049154.P15139745964962817509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005087 (A000088 n).toNat) (A052709 (n + 1))

end

end A049154.P15139745964962817509

/-! ## A049154.P12155232903161699768

`or(A003893(A001791(n)), A052709(n+1))`
-/

namespace A049154.P12155232903161699768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003893 (A001791 n).toNat) (A052709 (n + 1))

end

end A049154.P12155232903161699768

/-!
# A049155: Recip transform of 2*(1 + x^5)-1/(1-x).

The programs for A049155, there is no canonical definition to state claims against.
-/

/-! ## A049155.P10889186172582344661

`A335280(A049172(n+1))`
-/

namespace A049155.P10889186172582344661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335280 (A049172 (n + 1)).toNat

end

end A049155.P10889186172582344661

/-! ## A049155.P3056200585771552634

`A049153(n)+A004442(A049166(n))`
-/

namespace A049155.P3056200585771552634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049153 n + A004442 (A049166 n).toNat

end

end A049155.P3056200585771552634

/-! ## A049155.P16232435423253474218

`A027023(n)+A004442(A049172(n+1))`
-/

namespace A049155.P16232435423253474218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 n + A004442 (A049172 (n + 1)).toNat

end

end A049155.P16232435423253474218

/-! ## A049155.P8626234559586288021

`A210713(A014372(n))+A049172(n+1)`
-/

namespace A049155.P8626234559586288021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049172 (n + 1)

end

end A049155.P8626234559586288021

/-!
# A049156: Recip transform of 2*(1 + x^2 + x^5)-1/(1-x).

The programs for A049156, there is no canonical definition to state claims against.
-/

/-! ## A049156.P15866052957867594231

`A120841(A365756(n))`
-/

namespace A049156.P15866052957867594231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (A365756 n).toNat

end

end A049156.P15866052957867594231

/-! ## A049156.P4940199677472898806

`A071604(A110656(n!))`
-/

namespace A049156.P4940199677472898806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071604 (A110656 (Nat.factorial n)).toNat

end

end A049156.P4940199677472898806

/-! ## A049156.P14613652088061732028

`A000959(A333748(n!))`
-/

namespace A049156.P14613652088061732028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (A333748 (Nat.factorial n)).toNat

end

end A049156.P14613652088061732028

/-! ## A049156.P14035609248771022789

`or(1, A358473(A015128(n)))`
-/

namespace A049156.P14035609248771022789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A358473 (A015128 n).toNat)

end

end A049156.P14035609248771022789

/-!
# A049157: Recip transform of 2*(1 + x^3 + x^5)-1/(1-x).

The programs for A049157, there is no canonical definition to state claims against.
-/

/-! ## A049157.P12029642188136488987

`A341026(A073431(n))+A050387(n+1)`
-/

namespace A049157.P12029642188136488987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341026 ((A073431 n).toNat + 165) + A050387 (n + 1)

end

end A049157.P12029642188136488987

/-! ## A049157.P13819024272249583430

`A320655(A153654(n+4))+A050387(n+1)`
-/

namespace A049157.P13819024272249583430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A153654 (n + 4)).toNat + A050387 (n + 1)

end

end A049157.P13819024272249583430

/-!
# A049158: Recip transform of 2*(1 + x^4 + x^5)-1/(1-x).

The programs for A049158, there is no canonical definition to state claims against.
-/

/-! ## A049158.P14974643385878524446

`A014681(A049169(n)+A049153(n))`
-/

namespace A049158.P14974643385878524446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A049169 n + A049153 n).toNat

end

end A049158.P14974643385878524446

/-! ## A049158.P13100238123798968210

`A210713(A014372(n))+A049175(n+1)`
-/

namespace A049158.P13100238123798968210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049175 (n + 1)

end

end A049158.P13100238123798968210

/-! ## A049158.P16806514934955356573

`A193804(A049153(n))+A049175(n+1)`
-/

namespace A049158.P16806514934955356573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193804 (A049153 n).toNat + A049175 (n + 1)

end

end A049158.P16806514934955356573

/-! ## A049158.P550620628354816777

`A309785(A049142(n+1))+A049169(n)`
-/

namespace A049158.P550620628354816777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A049142 (n + 1)).toNat + A049169 n

end

end A049158.P550620628354816777

/-!
# A049159: Recip transform of 2*(1 + x^3 + x^4 + x^5)-1/(1-x).

The programs for A049159, there is no canonical definition to state claims against.
-/

/-! ## A049159.P6826152743088001110

`or(A029349(n), A209335(A077741(n+1)))`
-/

namespace A049159.P6826152743088001110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A029349 n) (A209335 (A077741 (n + 1)).toNat)

end

end A049159.P6826152743088001110

/-! ## A049159.P6703985220167946263

`or(A001221(A128086(n)), A209335(n+1))`
-/

namespace A049159.P6703985220167946263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A128086 n).toNat) (A209335 (n + 1))

end

end A049159.P6703985220167946263

/-! ## A049159.P18188059538914335983

`A209335(n+1)+A083025(A209330(n+1))`
-/

namespace A049159.P18188059538914335983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209335 (n + 1) + A083025 (A209330 (n + 1)).toNat

end

end A049159.P18188059538914335983

/-! ## A049159.P8651033354400194259

`A209335(A043315(n+1))`
-/

namespace A049159.P8651033354400194259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209335 (A043315 (n + 1)).toNat

end

end A049159.P8651033354400194259

/-! ## A049159.P3463426016062419719

`A209335(A044912(n+1))`
-/

namespace A049159.P3463426016062419719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209335 (A044912 (n + 1)).toNat

end

end A049159.P3463426016062419719

/-!
# A049160: Recip transform of 2*(1 + x^6)-1/(1-x).

The programs for A049160, there is no canonical definition to state claims against.
-/

/-! ## A049160.P6434198772056560302

`A004525(A006318(n)-5*C(n, 6))`
-/

namespace A049160.P6434198772056560302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A006318 n - (5 * Nat.choose n 6 : ℤ)).toNat

end

end A049160.P6434198772056560302

/-! ## A049160.P1220597173598328094

`A210713(A014372(n))+A049186(n+1)`
-/

namespace A049160.P1220597173598328094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049186 (n + 1)

end

end A049160.P1220597173598328094

/-! ## A049160.P14975589583929821215

`A297240(A014521(n))+A049186(n+1)`
-/

namespace A049160.P14975589583929821215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A014521 n).toNat + A049186 (n + 1)

end

end A049160.P14975589583929821215

/-! ## A049160.P3744414153253459482

`A297240(A014522(n))+A049186(n+1)`
-/

namespace A049160.P3744414153253459482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297240 (A014522 n).toNat + A049186 (n + 1)

end

end A049160.P3744414153253459482

/-!
# A049161: Recip transform of 2*(1 + x^2 + x^6)-1/(1-x).

The programs for A049161, there is no canonical definition to state claims against.
-/

/-! ## A049161.P13150359602138604975

`∑[A080741(∑[C(n, 4)])]-n`
-/

namespace A049161.P13150359602138604975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080741 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A049161.P13150359602138604975

/-! ## A049161.P1265809297117864841

`∑[A067722(∑[C(n, 4)]²)]-n`
-/

namespace A049161.P1265809297117864841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067722 ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A049161.P1265809297117864841

/-! ## A049161.P1926775125400688618

`∑[A120841(C(n+1, 5)+1)]-n`
-/

namespace A049161.P1926775125400688618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (Nat.choose (n + 1) 5 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A049161.P1926775125400688618

/-! ## A049161.P2157898751837571640

`∑[∑[A118759(2*C(n, 4))]+1]-n`
-/

namespace A049161.P2157898751837571640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * Nat.choose n 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A049161.P2157898751837571640

/-!
# A049163: Recip transform of 2*(1 + x^4 + x^6)-1/(1-x).

The programs for A049163, there is no canonical definition to state claims against.
-/

/-! ## A049163.P17586091583547983561

`A102669(A058834(n))+A049189(n+1)`
-/

namespace A049163.P17586091583547983561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A058834 n).toNat + A049189 (n + 1)

end

end A049163.P17586091583547983561

/-! ## A049163.P6562916486547026886

`A210713(A014372(n))+A049189(n+1)`
-/

namespace A049163.P6562916486547026886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049189 (n + 1)

end

end A049163.P6562916486547026886

/-! ## A049163.P7962735809969677016

`A229142(n)+A052928(A049189(n+1))`
-/

namespace A049163.P7962735809969677016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229142 n + A052928 (A049189 (n + 1)).toNat

end

end A049163.P7962735809969677016

/-! ## A049163.P7464676785123953932

`A325976(A049189(n+1)+A014473(n))`
-/

namespace A049163.P7464676785123953932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (A049189 (n + 1) + A014473 n).toNat

end

end A049163.P7464676785123953932

/-!
# A049164: Recip transform of 2*(1 + x^2 + x^4 + x^6)-1/(1-x).

The programs for A049164, there is no canonical definition to state claims against.
-/

/-! ## A049164.P4136880943014227485

`A000265(2*A035041(n+1)+1)`
-/

namespace A049164.P4136880943014227485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A035041 (n + 1) + 1).toNat

end

end A049164.P4136880943014227485

/-! ## A049164.P3603453756912495672

`A004273(a(n-1)+C(n, 8))` with `a(0)=1`
-/

namespace A049164.P3603453756912495672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004273 (a (n - 1) + (Nat.choose n 8 : ℤ)).toNat

end

end A049164.P3603453756912495672

/-! ## A049164.P1223906418671220842

`A005408(∑[A035040(n)])`
-/

namespace A049164.P1223906418671220842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049164.P1223906418671220842

/-! ## A049164.P2887640346740253366

`A160144(∑[A035040(n)])`
-/

namespace A049164.P2887640346740253366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049164.P2887640346740253366

/-! ## A049164.P4887817111971732104

`A005408(A035041(n+1))`
-/

namespace A049164.P4887817111971732104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A035041 (n + 1)).toNat

end

end A049164.P4887817111971732104

/-!
# A049165: Recip transform of 2*(1 + x^3 + x^4 + x^6)-1/(1-x).

The programs for A049165, there is no canonical definition to state claims against.
-/

/-! ## A049165.P17684928283108637818

`A210713(A014372(n))+A049188(n+1)`
-/

namespace A049165.P17684928283108637818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049188 (n + 1)

end

end A049165.P17684928283108637818

/-! ## A049165.P15364613898214004861

`A178798(A214899(n))+A049188(n+1)`
-/

namespace A049165.P15364613898214004861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A214899 n).toNat + A049188 (n + 1)

end

end A049165.P15364613898214004861

/-! ## A049165.P12866970618406333814

`A005425(A032551(n+1))-A000129(n)`
-/

namespace A049165.P12866970618406333814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005425 (A032551 (n + 1)).toNat - A000129 n

end

end A049165.P12866970618406333814

/-!
# A049166: Recip transform of 2*(1 + x^5 + x^6)-1/(1-x).

The programs for A049166, there is no canonical definition to state claims against.
-/

/-! ## A049166.P1729969362134166932

`A255407(A049183(n+1))`
-/

namespace A049166.P1729969362134166932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255407 (A049183 (n + 1)).toNat

end

end A049166.P1729969362134166932

/-! ## A049166.P12074118595708334861

`A004442(A049155(n)-A049153(n))`
-/

namespace A049166.P12074118595708334861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A049155 n - A049153 n).toNat

end

end A049166.P12074118595708334861

/-! ## A049166.P17956769651370844746

`A027023(n)+A004442(A049183(n+1))`
-/

namespace A049166.P17956769651370844746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 n + A004442 (A049183 (n + 1)).toNat

end

end A049166.P17956769651370844746

/-! ## A049166.P13835984393670685660

`A210713(A010750(n))+A049183(n+1)`
-/

namespace A049166.P13835984393670685660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A010750 n).toNat + A049183 (n + 1)

end

end A049166.P13835984393670685660

/-!
# A049168: Recip transform of 2*(1 + x^3 + x^5 + x^6)-1/(1-x).

The programs for A049168, there is no canonical definition to state claims against.
-/

/-! ## A049168.P13845215642690211011

`A372530(n+1)+A046660(A003080(n))`
-/

namespace A049168.P13845215642690211011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372530 (n + 1) + A046660 (A003080 n).toNat

end

end A049168.P13845215642690211011

/-! ## A049168.P2760551135743721042

`or(A087117(A000108(n)), A372530(n+1))`
-/

namespace A049168.P2760551135743721042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087117 (A000108 n).toNat) (A372530 (n + 1))

end

end A049168.P2760551135743721042

/-! ## A049168.P13287634594226327646

`or(A066099(A080873(n)), A372530(n+1))`
-/

namespace A049168.P13287634594226327646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066099 (A080873 n).toNat) (A372530 (n + 1))

end

end A049168.P13287634594226327646

/-! ## A049168.P5583076399204698007

`or(A358479(A000032(n)), A372530(n+1))`
-/

namespace A049168.P5583076399204698007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A358479 (A000032 n).toNat) (A372530 (n + 1))

end

end A049168.P5583076399204698007

/-! ## A049168.P315867014964350447

`or(A350849(A100346(n)), A372530(n+1))`
-/

namespace A049168.P315867014964350447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A350849 (A100346 n).toNat) (A372530 (n + 1))

end

end A049168.P315867014964350447

/-!
# A049169: Recip transform of 2*(1 + x^4 + x^5 + x^6)-1/(1-x).

The programs for A049169, there is no canonical definition to state claims against.
-/

/-! ## A049169.P9390228039806278549

`A014681(A049158(n))-A049153(n)`
-/

namespace A049169.P9390228039806278549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A049158 n).toNat - A049153 n

end

end A049169.P9390228039806278549

/-! ## A049169.P10776140798573105652

`A210713(A014372(n))+A049184(n+1)`
-/

namespace A049169.P10776140798573105652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210713 (A014372 n).toNat + A049184 (n + 1)

end

end A049169.P10776140798573105652

/-! ## A049169.P11635226469132476259

`A031218(A049184(n+1))-A144169(n)`
-/

namespace A049169.P11635226469132476259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A049184 (n + 1)).toNat - A144169 n

end

end A049169.P11635226469132476259

/-!
# A049170: Recip transform of 2*(1 + x^3 + x^4 + x^5 + x^6)-1/(1-x).

The programs for A049170, there is no canonical definition to state claims against.
-/

/-! ## A049170.P15981947570630792670

`or(1, A005378(A149537(n)))`
-/

namespace A049170.P15981947570630792670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A005378 (A149537 n).toNat)

end

end A049170.P15981947570630792670

/-! ## A049170.P8960073797487763184

`and(-A049153(n), A194920(A145268(n+1)))`
-/

namespace A049170.P8960073797487763184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A049153 n) (A194920 (A145268 (n + 1)).toNat)

end

end A049170.P8960073797487763184

/-! ## A049170.P9661750139983420816

`A008615(A367317(n+2)+A204516(n+1))`
-/

namespace A049170.P9661750139983420816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A367317 (n + 2) + A204516 (n + 1)).toNat

end

end A049170.P9661750139983420816

/-!
# A049171: Revert transform of 2*x*(1-x)-x/(1+x).

The programs for A049171, there is no canonical definition to state claims against.
-/

/-! ## A049171.P15197464124854630955

`A178798(A280140(n))+A049157(n)`
-/

namespace A049171.P15197464124854630955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A280140 n).toNat + A049157 n

end

end A049171.P15197464124854630955

/-! ## A049171.P18267396225803859576

`A049157(n)-A096972(A020094(n))`
-/

namespace A049171.P18267396225803859576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A096972 (A020094 n).toNat

end

end A049171.P18267396225803859576

/-! ## A049171.P495947731845857857

`A049157(n)-A210713(A014372(n))`
-/

namespace A049171.P495947731845857857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A210713 (A014372 n).toNat

end

end A049171.P495947731845857857

/-!
# A049172: Revert transform of 2*x*(1 - x - x^3)-x/(1+x).

The programs for A049172, there is no canonical definition to state claims against.
-/

/-! ## A049172.P12224648481614077956

`A335280(A049155(n))`
-/

namespace A049172.P12224648481614077956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335280 (A049155 n).toNat

end

end A049172.P12224648481614077956

/-! ## A049172.P8946886384600710065

`A004442(A049155(n)-A027023(n))`
-/

namespace A049172.P8946886384600710065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A049155 n - A027023 n).toNat

end

end A049172.P8946886384600710065

/-! ## A049172.P17344200329794742114

`A049155(n)-A210713(A014372(n))`
-/

namespace A049172.P17344200329794742114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049155 n - A210713 (A014372 n).toNat

end

end A049172.P17344200329794742114

/-! ## A049172.P4145279718089655272

`A004442(A049155(n)-A262809(n))`
-/

namespace A049172.P4145279718089655272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A049155 n - A262809 n).toNat

end

end A049172.P4145279718089655272

/-!
# A049173: Revert transform of 2*x*(1 - x + x^2 - x^3)-x/(1+x).

The programs for A049173, there is no canonical definition to state claims against.
-/

/-! ## A049173.P4783832337716906738

`A080741(∑[C(n, 4)])`
-/

namespace A049173.P4783832337716906738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A049173.P4783832337716906738

/-! ## A049173.P15346653446363786722

`A080741(C(n+1, 5))`
-/

namespace A049173.P15346653446363786722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080741 (Nat.choose (n + 1) 5)

end

end A049173.P15346653446363786722

/-! ## A049173.P12864482462582664053

`A120841(C(n+1, 5)+1)`
-/

namespace A049173.P12864482462582664053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120841 (Nat.choose (n + 1) 5 + 1)

end

end A049173.P12864482462582664053

/-! ## A049173.P12996148075018228931

`∑[A118759(2*C(n, 4))]+1`
-/

namespace A049173.P12996148075018228931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (2 * Nat.choose n 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A049173.P12996148075018228931

/-!
# A049174: Revert transform of 2*x*(1 - x + x^4)-x/(1+x).

The programs for A049174, there is no canonical definition to state claims against.
-/

/-! ## A049174.P17972074894380478786

`A194920(A145268(n+1))`
-/

namespace A049174.P17972074894380478786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (A145268 (n + 1)).toNat

end

end A049174.P17972074894380478786

/-! ## A049174.P399119019202861421

`or(A049170(n), A343720(∑[n]²+1))`
-/

namespace A049174.P399119019202861421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049170 n) (A343720 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 1))

end

end A049174.P399119019202861421

/-! ## A049174.P16868339643052034732

`A004525(A149046(n)+A085449(n))`
-/

namespace A049174.P16868339643052034732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A149046 n + A085449 n).toNat

end

end A049174.P16868339643052034732

/-! ## A049174.P14777877402691379656

`A110654(A149046(n)+A085449(n))`
-/

namespace A049174.P14777877402691379656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A149046 n + A085449 n).toNat

end

end A049174.P14777877402691379656

/-!
# A049175: Revert transform of 2*x*(1 - x - x^3 + x^4)-x/(1+x).

The programs for A049175, there is no canonical definition to state claims against.
-/

/-! ## A049175.P1538831292248496954

`A144169(n)+A109395(A049158(n))`
-/

namespace A049175.P1538831292248496954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144169 n + A109395 (A049158 n).toNat

end

end A049175.P1538831292248496954

/-! ## A049175.P1428761646444586908

`A049158(n)-A210713(A014372(n))`
-/

namespace A049175.P1428761646444586908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049158 n - A210713 (A014372 n).toNat

end

end A049175.P1428761646444586908

/-! ## A049175.P3599216865709727547

`A014681(A049184(n+1)+A049153(n))`
-/

namespace A049175.P3599216865709727547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A049184 (n + 1) + A049153 n).toNat

end

end A049175.P3599216865709727547

/-!
# A049176: Revert transform of 2*x*(1 - x - x^5)-x/(1+x).

The programs for A049176, there is no canonical definition to state claims against.
-/

/-! ## A049176.P17084746706100083717

`A049151(n)-A210713(A014372(n))`
-/

namespace A049176.P17084746706100083717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049151 n - A210713 (A014372 n).toNat

end

end A049176.P17084746706100083717

/-! ## A049176.P896233409984858738

`A049151(n)-A025462(A245898(n+1))`
-/

namespace A049176.P896233409984858738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049151 n - A025462 (A245898 (n + 1)).toNat

end

end A049176.P896233409984858738

/-! ## A049176.P2611018157189302218

`A049151(n)-A010893(A337407(n+1))`
-/

namespace A049176.P2611018157189302218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049151 n - A010893 ((A337407 (n + 1)).toNat + 13)

end

end A049176.P2611018157189302218

/-!
# A049177: Revert transform of 2*x*(1 - x - x^3 - x^5)-x/(1+x).

The programs for A049177, there is no canonical definition to state claims against.
-/

/-! ## A049177.P17213498061980442565

`A093048(A378263(n+1))`
-/

namespace A049177.P17213498061980442565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (A378263 (n + 1)).toNat

end

end A049177.P17213498061980442565

/-! ## A049177.P7746099461739419380

`or(1, A189660(A006318(n)))`
-/

namespace A049177.P7746099461739419380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A189660 (A006318 n).toNat)

end

end A049177.P7746099461739419380

/-! ## A049177.P8828804350349869663

`A008619(A006318(n)-∏{e}[n+1, #!])`
-/

namespace A049177.P8828804350349869663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A006318 n - ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ)).toNat

end

end A049177.P8828804350349869663

/-! ## A049177.P17606487670249486670

`A004525(xor(∑{e}[n+1, #]+1, A035011(n)))`
-/

namespace A049177.P17606487670249486670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.xor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1 : ℕ) : ℤ) (A035011 n)).toNat

end

end A049177.P17606487670249486670

/-!
# A049178: Revert transform of 2*x*(1 - x + x^2 - x^3 - x^5)-x/(1+x).

The programs for A049178, there is no canonical definition to state claims against.
-/

/-! ## A049178.P9223994656033368367

`A244780(A364450(n))`
-/

namespace A049178.P9223994656033368367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244780 (A364450 n).toNat

end

end A049178.P9223994656033368367

/-! ## A049178.P10269476572088304781

`A244780(A143962(n)+1)`
-/

namespace A049178.P10269476572088304781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244780 (A143962 n + 1).toNat

end

end A049178.P10269476572088304781

/-! ## A049178.P12747795472423503522

`A244780(A011782(n)-A161680(n))`
-/

namespace A049178.P12747795472423503522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244780 (A011782 n - A161680 n).toNat

end

end A049178.P12747795472423503522

/-! ## A049178.P17451947663377478096

`or(A121244(n+1), A227394(A000571(n)))`
-/

namespace A049178.P17451947663377478096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A121244 (n + 1)) (A227394 (A000571 n).toNat)

end

end A049178.P17451947663377478096

/-!
# A049179: Revert transform of 2*x*(1 - x + x^4 - x^5)-x/(1+x).

The programs for A049179, there is no canonical definition to state claims against.
-/

/-! ## A049179.P8098354536386014947

`A309882(A309861(n))+A071943(∑[n]+n)`
-/

namespace A049179.P8098354536386014947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309882 (A309861 n).toNat + A071943 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A049179.P8098354536386014947

/-! ## A049179.P5779942953189528008

`A052709(n+1)+A000122(A274605(n+1))`
-/

namespace A049179.P5779942953189528008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052709 (n + 1) + A000122 (A274605 (n + 1)).toNat

end

end A049179.P5779942953189528008

/-! ## A049179.P11497088674325287571

`A086080(A285115(2*n))+A052709(n+1)`
-/

namespace A049179.P11497088674325287571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086080 (A285115 (2 * n)).toNat + A052709 (n + 1)

end

end A049179.P11497088674325287571

/-! ## A049179.P10785665215800810518

`A161594(A073152(∑[n]))`
-/

namespace A049179.P10785665215800810518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161594 (A073152 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049179.P10785665215800810518

/-!
# A049180: Revert transform of 2*x*(1 - x - x^3 + x^4 - x^5)-x/(1+x).

The programs for A049180, there is no canonical definition to state claims against.
-/

/-! ## A049180.P5420121409819155419

`A070321(A049152(n))`
-/

namespace A049180.P5420121409819155419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (A049152 n).toNat

end

end A049180.P5420121409819155419

/-! ## A049180.P15244321821498182230

`A285719(A049152(n)+1)`
-/

namespace A049180.P15244321821498182230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (A049152 n + 1).toNat

end

end A049180.P15244321821498182230

/-! ## A049180.P11367061005442217865

`A285719(A049163(n)+A049153(n))`
-/

namespace A049180.P11367061005442217865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285719 (A049163 n + A049153 n).toNat

end

end A049180.P11367061005442217865

/-! ## A049180.P115355590157459174

`A049152(n)-A297240(A014521(n))`
-/

namespace A049180.P115355590157459174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049152 n - A297240 (A014521 n).toNat

end

end A049180.P115355590157459174

/-!
# A049181: Revert transform of 2*x*(1 - x + x^2 - x^3 + x^4 - x^5)-x/(1+x).

The programs for A049181, there is no canonical definition to state claims against.
-/

/-! ## A049181.P9035092073964086512

`A008611(6*C(n+1, 7))`
-/

namespace A049181.P9035092073964086512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (6 * Nat.choose (n + 1) 7)

end

end A049181.P9035092073964086512

/-! ## A049181.P14262230936649755810

`A008621(Δ[A291700(n+1)])`
-/

namespace A049181.P14262230936649755810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (f1 (n + 1) - f1 n).toNat

end

end A049181.P14262230936649755810

/-! ## A049181.P7561636925720532985

`A008611(∑[6*A000579(n)])`
-/

namespace A049181.P7561636925720532985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A049181.P7561636925720532985

/-! ## A049181.P18357274732738934651

`A276147(A005408(∑[C(n, 6)]))`
-/

namespace A049181.P18357274732738934651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276147 (A005408 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A049181.P18357274732738934651

/-! ## A049181.P1898071385956354590

`A208643(A373912(n))`
-/

namespace A049181.P1898071385956354590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208643 (A373912 n).toNat

end

end A049181.P1898071385956354590

/-!
# A049182: Revert transform of 2*x*(1 - x + x^6)-x/(1+x).

The programs for A049182, there is no canonical definition to state claims against.
-/

/-! ## A049182.P15842894383680546862

`A075054(A049168(n))`
-/

namespace A049182.P15842894383680546862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A049168 n).toNat

end

end A049182.P15842894383680546862

/-! ## A049182.P9586101063547489280

`A088462(A216490(n+1))`
-/

namespace A049182.P9586101063547489280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088462 (A216490 (n + 1)).toNat

end

end A049182.P9586101063547489280

/-! ## A049182.P4775988781143742648

`A075054(A372530(n+1))`
-/

namespace A049182.P4775988781143742648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075054 (A372530 (n + 1)).toNat

end

end A049182.P4775988781143742648

/-! ## A049182.P15416170675395614724

`A184480(A323089(n²+n))`
-/

namespace A049182.P15416170675395614724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184480 (A323089 (n ^ 2 + n)).toNat

end

end A049182.P15416170675395614724

/-!
# A049183: Revert transform of 2*x*(1 - x - x^3 + x^6)-x/(1+x).

The programs for A049183, there is no canonical definition to state claims against.
-/

/-! ## A049183.P16229437450877982556

`A004442(A049166(n)-A027023(n))`
-/

namespace A049183.P16229437450877982556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A049166 n - A027023 n).toNat

end

end A049183.P16229437450877982556

/-! ## A049183.P11887236813720739606

`A049166(n)-A210713(A010750(n))`
-/

namespace A049183.P11887236813720739606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049166 n - A210713 (A010750 n).toNat

end

end A049183.P11887236813720739606

/-! ## A049183.P13663481920932448633

`A049166(n)-A210713(A014372(n))`
-/

namespace A049183.P13663481920932448633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049166 n - A210713 (A014372 n).toNat

end

end A049183.P13663481920932448633

/-!
# A049184: Revert transform of 2*x*(1-x-x^3+x^4+x^6)-x/(1+x).

The programs for A049184, there is no canonical definition to state claims against.
-/

/-! ## A049184.P6534624250746046523

`A031218(A049169(n))`
-/

namespace A049184.P6534624250746046523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031218 (A049169 n).toNat

end

end A049184.P6534624250746046523

/-! ## A049184.P13484679207415689641

`A136548(A049169(n)+1)`
-/

namespace A049184.P13484679207415689641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A049169 n + 1).toNat

end

end A049184.P13484679207415689641

/-! ## A049184.P18424955392137806840

`A053585(A144169(n)+A049169(n))`
-/

namespace A049184.P18424955392137806840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A144169 n + A049169 n).toNat

end

end A049184.P18424955392137806840

/-! ## A049184.P17295055727880498924

`A100994(A144169(n)+A049169(n))`
-/

namespace A049184.P17295055727880498924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100994 (A144169 n + A049169 n).toNat

end

end A049184.P17295055727880498924

/-!
# A049185: Revert transform of 2*x*(1 - x - x^5 + x^6)-x/(1+x).

The programs for A049185, there is no canonical definition to state claims against.
-/

/-! ## A049185.P18011922660428170354

`A335133(A049162(n))`
-/

namespace A049185.P18011922660428170354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A049162 n).toNat

end

end A049185.P18011922660428170354

/-! ## A049185.P10375559529485542360

`A335133(A388734(n))`
-/

namespace A049185.P10375559529485542360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A388734 n).toNat

end

end A049185.P10375559529485542360

/-! ## A049185.P8478423471882122766

`or(1, A110655(A151039(n)))`
-/

namespace A049185.P8478423471882122766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A110655 (A151039 n).toNat)

end

end A049185.P8478423471882122766

/-! ## A049185.P14055019873913404625

`A049162(n)-A210713(A014372(n))`
-/

namespace A049185.P14055019873913404625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049162 n - A210713 (A014372 n).toNat

end

end A049185.P14055019873913404625

/-!
# A049186: Revert transform of 2*x*(1-x-x^3-x^5+x^6)-x/(1+x).

The programs for A049186, there is no canonical definition to state claims against.
-/

/-! ## A049186.P17012772902119103529

`A333838(A049160(n))`
-/

namespace A049186.P17012772902119103529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333838 (A049160 n).toNat

end

end A049186.P17012772902119103529

/-! ## A049186.P13304478536785268594

`A049160(n)-A210713(A014372(n))`
-/

namespace A049186.P13304478536785268594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049160 n - A210713 (A014372 n).toNat

end

end A049186.P13304478536785268594

/-! ## A049186.P13056490205473460259

`A049160(n)-A297240(A014521(n))`
-/

namespace A049186.P13056490205473460259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049160 n - A297240 (A014521 n).toNat

end

end A049186.P13056490205473460259

/-! ## A049186.P4655419054719231509

`A049160(n)-A297240(A014522(n))`
-/

namespace A049186.P4655419054719231509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049160 n - A297240 (A014522 n).toNat

end

end A049186.P4655419054719231509

/-!
# A049187: Revert transform of 2*x*(1-x)*(1+x^2-x^5) -x/(1+x).

The programs for A049187, there is no canonical definition to state claims against.
-/

/-! ## A049187.P4188697282039700672

`A049161(n)-A210713(A014372(n))`
-/

namespace A049187.P4188697282039700672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049161 n - A210713 (A014372 n).toNat

end

end A049187.P4188697282039700672

/-! ## A049187.P4457882990061339040

`A049161(n)-A270417(A000522(n))`
-/

namespace A049187.P4457882990061339040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049161 n - A270417 (A000522 n).toNat

end

end A049187.P4457882990061339040

/-! ## A049187.P13635538193062921972

`A342513(A342495(A062968(A062968(A003242(n+1)))))`
-/

namespace A049187.P13635538193062921972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342513 (A342495 (A062968 (A062968 (A003242 (n + 1)).toNat).toNat).toNat).toNat

end

end A049187.P13635538193062921972

/-!
# A049188: Revert transform of 2*x*(1 - x + x^4 - x^5 + x^6)-x/(1+x).

The programs for A049188, there is no canonical definition to state claims against.
-/

/-! ## A049188.P6703134808868412239

`A049165(n)-A210713(A014372(n))`
-/

namespace A049188.P6703134808868412239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049165 n - A210713 (A014372 n).toNat

end

end A049188.P6703134808868412239

/-! ## A049188.P15182367680149916808

`A049165(n)-A178798(A214899(n))`
-/

namespace A049188.P15182367680149916808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049165 n - A178798 (A214899 n).toNat

end

end A049188.P15182367680149916808

/-! ## A049188.P6422044484498010095

`or(A057355(A007581(n)), A157147(n))`
-/

namespace A049188.P6422044484498010095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057355 (A007581 n).toNat) (A157147 n)

end

end A049188.P6422044484498010095

/-! ## A049188.P15509934179302497421

`A049165(n)-A025462(A245898(n+1))`
-/

namespace A049188.P15509934179302497421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049165 n - A025462 (A245898 (n + 1)).toNat

end

end A049188.P15509934179302497421

/-!
# A049189: Revert transform of 2*x*(1 - x)*(1-x^3-x^5)-x/(1+x).

The programs for A049189, there is no canonical definition to state claims against.
-/

/-! ## A049189.P8371601225754804605

`A049163(n)-A102669(A058834(n))`
-/

namespace A049189.P8371601225754804605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049163 n - A102669 (A058834 n).toNat

end

end A049189.P8371601225754804605

/-! ## A049189.P17671862107596859041

`A049163(n)-A210713(A014372(n))`
-/

namespace A049189.P17671862107596859041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049163 n - A210713 (A014372 n).toNat

end

end A049189.P17671862107596859041

/-! ## A049189.P8574005793751765148

`A049163(n)-A083895(A150563(n))`
-/

namespace A049189.P8574005793751765148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049163 n - A083895 (A150563 n).toNat

end

end A049189.P8574005793751765148

/-! ## A049189.P16940208912890250066

`A291784(A049163(n))-A001592(n)`
-/

namespace A049189.P16940208912890250066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291784 (A049163 n).toNat - A001592 n

end

end A049189.P16940208912890250066

/-!
# A049190: Start with 1. Convert to base 2, describe it in base 2, convert to base 10. Repeat with the new result.

The programs for A049190, there is no canonical definition to state claims against.
-/

/-! ## A049190.P17553484384809123082

`A321226(a(n-1))` with `a(0)=1`
-/

namespace A049190.P17553484384809123082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A321226 (a (n - 1)).toNat

end

end A049190.P17553484384809123082

/-!
# A049191: Start with 1. Convert to base 3, describe it in base 3, convert to base 3.

The programs for A049191, there is no canonical definition to state claims against.
-/

/-! ## A049191.P16650288210782029347

`A255649(A299640(n))`
-/

namespace A049191.P16650288210782029347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255649 (A299640 n).toNat

end

end A049191.P16650288210782029347

/-!
# A049194: Number of digits in n-th term of A001387.

The programs for A049194, the canonical program `A049194.P11881577467293400188` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049194 has offset 1).

The definition of A049194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A049194.P11881577467293400188

`a(n-1)+a(n-2)-a(n-5)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6, a(4)=8, a(5)=12`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A049194

/-- `a(n-1)+a(n-2)-a(n-5)` -/
def P11881577467293400188.Spec : Prop :=
  ∀ n, P11881577467293400188.a n = A049194 (n + 1)

theorem P11881577467293400188.correct : P11881577467293400188.Spec := by
  intro n
  simp only [A049194, Nat.add_sub_cancel]

end A049194

/-! ## A049194.P1561381942344100526

`A003410(n)+∑[A107458(n+1)]`
-/

namespace A049194.P1561381942344100526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049194.P1561381942344100526

namespace A049194

/-- `A003410(n)+∑[A107458(n+1)]` -/
def P1561381942344100526.Spec : Prop :=
  ∀ n, P1561381942344100526.a n = A049194 (n + 1)

end A049194

/-! ## A049194.P14633713739520977475

`A277253(C(2, (n+1)²)+n)+∑[A306276(n)]`
-/

namespace A049194.P14633713739520977475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (Nat.choose 2 ((n + 1) ^ 2) + n) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049194.P14633713739520977475

namespace A049194

/-- `A277253(C(2, (n+1)²)+n)+∑[A306276(n)]` -/
def P14633713739520977475.Spec : Prop :=
  ∀ n, P14633713739520977475.a n = A049194 (n + 1)

end A049194

/-! ## A049194.P3681649902960973130

`A023435(A289207(n))+A003410(n)`
-/

namespace A049194.P3681649902960973130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (A289207 n).toNat + A003410 n

end

end A049194.P3681649902960973130

namespace A049194

/-- `A023435(A289207(n))+A003410(n)` -/
def P3681649902960973130.Spec : Prop :=
  ∀ n, P3681649902960973130.a n = A049194 (n + 1)

end A049194

/-! ## A049194.P11668043951714875199

`A277253(A028310(n))+∑[A306276(n)]`
-/

namespace A049194.P11668043951714875199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (A028310 n).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049194.P11668043951714875199

namespace A049194

/-- `A277253(A028310(n))+∑[A306276(n)]` -/
def P11668043951714875199.Spec : Prop :=
  ∀ n, P11668043951714875199.a n = A049194 (n + 1)

end A049194

/-! ## A049194.P11038419281195813701

`A277253(A000007(n)+n)+∑[A306276(n)]`
-/

namespace A049194.P11038419281195813701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (A000007 n + (n : ℤ)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A049194.P11038419281195813701

namespace A049194

/-- `A277253(A000007(n)+n)+∑[A306276(n)]` -/
def P11038419281195813701.Spec : Prop :=
  ∀ n, P11038419281195813701.a n = A049194 (n + 1)

end A049194

/-!
# A049195: Numbers k such that the Euler totient function phi(k) is divisible by a square.

The programs for A049195, the canonical program `A049195.P7381529559572275784` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049195 has offset 1).

The definition of A049195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9256 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049195.P16841616017809730813

`eq[0, A008683(A000010(n+1))]+1`
-/

namespace A049195.P16841616017809730813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049195.P16841616017809730813

namespace A049195

/-- `eq[0, A008683(A000010(n+1))]+1` -/
def P16841616017809730813.Spec : Prop :=
  ∀ n, (P16841616017809730813.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P2836265899699259526

`∪[A049197(n+1), A049199(n+1)]`
-/

namespace A049195.P2836265899699259526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049195.P2836265899699259526

namespace A049195

/-- `∪[A049197(n+1), A049199(n+1)]` -/
def P2836265899699259526.Spec : Prop :=
  ∀ n, (P2836265899699259526.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P15597408203518122413

`∪[A049199(n+1), A226386(n+1)]`
-/

namespace A049195.P15597408203518122413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A049195.P15597408203518122413

namespace A049195

/-- `∪[A049199(n+1), A226386(n+1)]` -/
def P15597408203518122413.Spec : Prop :=
  ∀ n, (P15597408203518122413.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P16656538347043542660

`lt[1, A005361(A109606(n+1)+1)]+1`
-/

namespace A049195.P16656538347043542660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049195.P16656538347043542660

namespace A049195

/-- `lt[1, A005361(A109606(n+1)+1)]+1` -/
def P16656538347043542660.Spec : Prop :=
  ∀ n, (P16656538347043542660.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P16182730168684341144

`lt[1, A046951(A109606(n+1)+1)]+1`
-/

namespace A049195.P16182730168684341144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A109606 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049195.P16182730168684341144

namespace A049195

/-- `lt[1, A046951(A109606(n+1)+1)]+1` -/
def P16182730168684341144.Spec : Prop :=
  ∀ n, (P16182730168684341144.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P1528448176765064360

`lt[1, A005361(A039649(n+1)-1)]+1`
-/

namespace A049195.P1528448176765064360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A039649 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A049195.P1528448176765064360

namespace A049195

/-- `lt[1, A005361(A039649(n+1)-1)]+1` -/
def P1528448176765064360.Spec : Prop :=
  ∀ n, (P1528448176765064360.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P4245463115565017877

`lt[A008683(A109606(n+1)+1)², 1]+1`
-/

namespace A049195.P4245463115565017877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A109606 (n + 1) + 1).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049195.P4245463115565017877

namespace A049195

/-- `lt[A008683(A109606(n+1)+1)², 1]+1` -/
def P4245463115565017877.Spec : Prop :=
  ∀ n, (P4245463115565017877.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P14801360463458278253

`lt[A008683(A039649(n+1)-1)², 1]+1`
-/

namespace A049195.P14801360463458278253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A039649 (n + 1) - 1).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049195.P14801360463458278253

namespace A049195

/-- `lt[A008683(A039649(n+1)-1)², 1]+1` -/
def P14801360463458278253.Spec : Prop :=
  ∀ n, (P14801360463458278253.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P14374585523599864508

`lt[A008683(n-A219428(n+1))², 1]+1`
-/

namespace A049195.P14374585523599864508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n : ℤ) - A219428 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A049195.P14374585523599864508

namespace A049195

/-- `lt[A008683(n-A219428(n+1))², 1]+1` -/
def P14374585523599864508.Spec : Prop :=
  ∀ n, (P14374585523599864508.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P7381529559572275784

`lt[A008683(∏{p}[n+1, #-1]*A003557(n+1))², 1]+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A049195

/-- `lt[A008683(∏{p}[n+1, #-1]*A003557(n+1))², 1]+1` -/
def P7381529559572275784.Spec : Prop :=
  ∀ n, (P7381529559572275784.a n : ℤ) = A049195 (n + 1)

theorem P7381529559572275784.correct : P7381529559572275784.Spec := by
  intro n
  simp only [A049195, Nat.add_sub_cancel]

end A049195

/-! ## A049195.P8363034835617776700

`eq[2, A020639(A000217(A277906(n+1)))]+1`
-/

namespace A049195.P8363034835617776700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000217 (A277906 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A049195.P8363034835617776700

namespace A049195

/-- `eq[2, A020639(A000217(A277906(n+1)))]+1` -/
def P8363034835617776700.Spec : Prop :=
  ∀ n, (P8363034835617776700.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P16528231814089277067

`eq[0, A008683(A225530(n))]`
-/

namespace A049195.P16528231814089277067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A049195.P16528231814089277067

namespace A049195

/-- `eq[0, A008683(A225530(n))]` -/
def P16528231814089277067.Spec : Prop :=
  ∀ n, (P16528231814089277067.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P16812976735998609175

`eq[A000038(n), A008966(A225530(n))]`
-/

namespace A049195.P16812976735998609175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049195.P16812976735998609175

namespace A049195

/-- `eq[A000038(n), A008966(A225530(n))]` -/
def P16812976735998609175.Spec : Prop :=
  ∀ n, (P16812976735998609175.a n : ℤ) = A049195 (n + 1)

end A049195

/-! ## A049195.P9886139863186565930

`eq[A036453(n+1), A080847(A225530(n))]`
-/

namespace A049195.P9886139863186565930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080847 (A225530 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A049195.P9886139863186565930

namespace A049195

/-- `eq[A036453(n+1), A080847(A225530(n))]` -/
def P9886139863186565930.Spec : Prop :=
  ∀ n, (P9886139863186565930.a n : ℤ) = A049195 (n + 1)

end A049195

/-!
# A049196: Squarefree numbers whose Euler totient function is also squarefree.

The programs for A049196, the canonical program `A049196.P2749344971155733877` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049196 has offset 1).

The definition of A049196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5542 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049196.P11707312594854292819

`∩[A049149(n+1), A069579(n+1)]`
-/

namespace A049196.P11707312594854292819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049196.P11707312594854292819

namespace A049196

/-- `∩[A049149(n+1), A069579(n+1)]` -/
def P11707312594854292819.Spec : Prop :=
  ∀ n, (P11707312594854292819.a n : ℤ) = A049196 (n + 1)

end A049196

/-! ## A049196.P6985854303276902101

`∩[A049149(n+1), A226384(n+1)]`
-/

namespace A049196.P6985854303276902101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049196.P6985854303276902101

namespace A049196

/-- `∩[A049149(n+1), A226384(n+1)]` -/
def P6985854303276902101.Spec : Prop :=
  ∀ n, (P6985854303276902101.a n : ℤ) = A049196 (n + 1)

end A049196

/-! ## A049196.P3603276784483039693

`∩[A097987(n+1), A226384(n+1)]`
-/

namespace A049196.P3603276784483039693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049196.P3603276784483039693

namespace A049196

/-- `∩[A097987(n+1), A226384(n+1)]` -/
def P3603276784483039693.Spec : Prop :=
  ∀ n, (P3603276784483039693.a n : ℤ) = A049196 (n + 1)

end A049196

/-! ## A049196.P2749344971155733877

`record[A007913(A049149(n+1))]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A049196

/-- `record[A007913(A049149(n+1))]` -/
def P2749344971155733877.Spec : Prop :=
  ∀ n, P2749344971155733877.a n = A049196 (n + 1)

theorem P2749344971155733877.correct : P2749344971155733877.Spec := by
  intro n
  simp only [A049196, Nat.add_sub_cancel]

end A049196

/-! ## A049196.P4395519268188215655

`filter[A049149(n+1), A008966(#)]`
-/

namespace A049196.P4395519268188215655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A049196.P4395519268188215655

namespace A049196

/-- `filter[A049149(n+1), A008966(#)]` -/
def P4395519268188215655.Spec : Prop :=
  ∀ n, P4395519268188215655.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P3115815769510353392

`filter[A069579(n+1), A008966(#)]`
-/

namespace A049196.P3115815769510353392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A049196.P3115815769510353392

namespace A049196

/-- `filter[A069579(n+1), A008966(#)]` -/
def P3115815769510353392.Spec : Prop :=
  ∀ n, P3115815769510353392.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P7579973775596842577

`filter[A226384(n+1), A008966(#)]`
-/

namespace A049196.P7579973775596842577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A049196.P7579973775596842577

namespace A049196

/-- `filter[A226384(n+1), A008966(#)]` -/
def P7579973775596842577.Spec : Prop :=
  ∀ n, P7579973775596842577.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P9612840064576740484

`filter[A069579(n+1), A212793(#)]`
-/

namespace A049196.P9612840064576740484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A049196.P9612840064576740484

namespace A049196

/-- `filter[A069579(n+1), A212793(#)]` -/
def P9612840064576740484.Spec : Prop :=
  ∀ n, P9612840064576740484.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P8108425936493674856

`filter[A049149(n+1), A359473(#)]`
-/

namespace A049196.P8108425936493674856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A049196.P8108425936493674856

namespace A049196

/-- `filter[A049149(n+1), A359473(#)]` -/
def P8108425936493674856.Spec : Prop :=
  ∀ n, P8108425936493674856.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P17365364560940675107

`filter[A069579(n+1), A355823(#)]`
-/

namespace A049196.P17365364560940675107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A049196.P17365364560940675107

namespace A049196

/-- `filter[A069579(n+1), A355823(#)]` -/
def P17365364560940675107.Spec : Prop :=
  ∀ n, P17365364560940675107.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P11457526084431949920

`filter[A069579(n+1), A359471(#)]`
-/

namespace A049196.P11457526084431949920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A049196.P11457526084431949920

namespace A049196

/-- `filter[A069579(n+1), A359471(#)]` -/
def P11457526084431949920.Spec : Prop :=
  ∀ n, P11457526084431949920.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P12166230556924107385

`filter[A226384(n+1), A354923(#)]`
-/

namespace A049196.P12166230556924107385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A049196.P12166230556924107385

namespace A049196

/-- `filter[A226384(n+1), A354923(#)]` -/
def P12166230556924107385.Spec : Prop :=
  ∀ n, P12166230556924107385.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P3466571659667660029

`filter[A226384(n+1), A354924(#)]`
-/

namespace A049196.P3466571659667660029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A049196.P3466571659667660029

namespace A049196

/-- `filter[A226384(n+1), A354924(#)]` -/
def P3466571659667660029.Spec : Prop :=
  ∀ n, P3466571659667660029.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P3617731099820295946

`filter[A226384(n+1), A359550(#)]`
-/

namespace A049196.P3617731099820295946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A049196.P3617731099820295946

namespace A049196

/-- `filter[A226384(n+1), A359550(#)]` -/
def P3617731099820295946.Spec : Prop :=
  ∀ n, P3617731099820295946.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P17230266356415324159

`filter[A226384(n+1), A371087(#)]`
-/

namespace A049196.P17230266356415324159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A371087 (f1 j).toNat = 1) n)

end

end A049196.P17230266356415324159

namespace A049196

/-- `filter[A226384(n+1), A371087(#)]` -/
def P17230266356415324159.Spec : Prop :=
  ∀ n, P17230266356415324159.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P17745382676741998738

`∩[A005117(n+1), A049149(n+1)]`
-/

namespace A049196.P17745382676741998738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049196.P17745382676741998738

namespace A049196

/-- `∩[A005117(n+1), A049149(n+1)]` -/
def P17745382676741998738.Spec : Prop :=
  ∀ n, (P17745382676741998738.a n : ℤ) = A049196 (n + 1)

end A049196

/-! ## A049196.P7268851237224123657

`∩[A005117(n+1), A069579(n+1)]`
-/

namespace A049196.P7268851237224123657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069579 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049196.P7268851237224123657

namespace A049196

/-- `∩[A005117(n+1), A069579(n+1)]` -/
def P7268851237224123657.Spec : Prop :=
  ∀ n, (P7268851237224123657.a n : ℤ) = A049196 (n + 1)

end A049196

/-! ## A049196.P10141061347763014761

`∩[A005117(n+1), A226384(n+1)]`
-/

namespace A049196.P10141061347763014761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049196.P10141061347763014761

namespace A049196

/-- `∩[A005117(n+1), A226384(n+1)]` -/
def P10141061347763014761.Spec : Prop :=
  ∀ n, (P10141061347763014761.a n : ℤ) = A049196 (n + 1)

end A049196

/-! ## A049196.P4642302146861811623

`filter[A049149(n+1), A181183(#)]`
-/

namespace A049196.P4642302146861811623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A049196.P4642302146861811623

namespace A049196

/-- `filter[A049149(n+1), A181183(#)]` -/
def P4642302146861811623.Spec : Prop :=
  ∀ n, P4642302146861811623.a n = A049196 (n + 1)

end A049196

/-! ## A049196.P10172081528453544918

`filter[A049149(n+1), A295316(#)]`
-/

namespace A049196.P10172081528453544918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A049196.P10172081528453544918

namespace A049196

/-- `filter[A049149(n+1), A295316(#)]` -/
def P10172081528453544918.Spec : Prop :=
  ∀ n, P10172081528453544918.a n = A049196 (n + 1)

end A049196

/-!
# A049197: Squarefree numbers whose Euler totient function is not squarefree.

The programs for A049197, the canonical program `A049197.P6428426226621759377` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049197 has offset 1).

The definition of A049197 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5792 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049197.P9397602533403574978

`eq[A008683(A000010(n+1)), A048146(n+1)]+1`
-/

namespace A049197.P9397602533403574978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048146 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049197.P9397602533403574978

namespace A049197

/-- `eq[A008683(A000010(n+1)), A048146(n+1)]+1` -/
def P9397602533403574978.Spec : Prop :=
  ∀ n, (P9397602533403574978.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P7147151527160202398

`filter[A226386(n+1), A008966(#)]`
-/

namespace A049197.P7147151527160202398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A049197.P7147151527160202398

namespace A049197

/-- `filter[A226386(n+1), A008966(#)]` -/
def P7147151527160202398.Spec : Prop :=
  ∀ n, P7147151527160202398.a n = A049197 (n + 1)

end A049197

/-! ## A049197.P4424107170357296256

`∩[A005117(n+1), A226386(n+1)]`
-/

namespace A049197.P4424107170357296256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P4424107170357296256

namespace A049197

/-- `∩[A005117(n+1), A226386(n+1)]` -/
def P4424107170357296256.Spec : Prop :=
  ∀ n, (P4424107170357296256.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P10392870033973461524

`∩[A062770(n+1), A226386(n+1)]`
-/

namespace A049197.P10392870033973461524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P10392870033973461524

namespace A049197

/-- `∩[A062770(n+1), A226386(n+1)]` -/
def P10392870033973461524.Spec : Prop :=
  ∀ n, (P10392870033973461524.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P14713672350908876268

`∩[A072774(n+1), A226386(n+1)]`
-/

namespace A049197.P14713672350908876268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P14713672350908876268

namespace A049197

/-- `∩[A072774(n+1), A226386(n+1)]` -/
def P14713672350908876268.Spec : Prop :=
  ∀ n, (P14713672350908876268.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P11523322088420081476

`∩[A144338(n+1), A226386(n+1)]`
-/

namespace A049197.P11523322088420081476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P11523322088420081476

namespace A049197

/-- `∩[A144338(n+1), A226386(n+1)]` -/
def P11523322088420081476.Spec : Prop :=
  ∀ n, (P11523322088420081476.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P5391417210930340398

`∩[A167207(n+1), A226386(n+1)]`
-/

namespace A049197.P5391417210930340398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P5391417210930340398

namespace A049197

/-- `∩[A167207(n+1), A226386(n+1)]` -/
def P5391417210930340398.Spec : Prop :=
  ∀ n, (P5391417210930340398.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P2794562749802127237

`∩[A210490(n+1), A226386(n+1)]`
-/

namespace A049197.P2794562749802127237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P2794562749802127237

namespace A049197

/-- `∩[A210490(n+1), A226386(n+1)]` -/
def P2794562749802127237.Spec : Prop :=
  ∀ n, (P2794562749802127237.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P13979344824556139616

`∩[A226386(n+1), A303554(n+1)]`
-/

namespace A049197.P13979344824556139616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303554 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P13979344824556139616

namespace A049197

/-- `∩[A226386(n+1), A303554(n+1)]` -/
def P13979344824556139616.Spec : Prop :=
  ∀ n, (P13979344824556139616.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P12777256219500058970

`∩[A226386(n+1), A304449(n+1)]`
-/

namespace A049197.P12777256219500058970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P12777256219500058970

namespace A049197

/-- `∩[A226386(n+1), A304449(n+1)]` -/
def P12777256219500058970.Spec : Prop :=
  ∀ n, (P12777256219500058970.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P279553800632552182

`∩[A226386(n+1), A317101(n+1)]`
-/

namespace A049197.P279553800632552182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P279553800632552182

namespace A049197

/-- `∩[A226386(n+1), A317101(n+1)]` -/
def P279553800632552182.Spec : Prop :=
  ∀ n, (P279553800632552182.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P6428426226621759377

`filter[A049195(n+1), A008966(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A049197

/-- `filter[A049195(n+1), A008966(#)]` -/
def P6428426226621759377.Spec : Prop :=
  ∀ n, P6428426226621759377.a n = A049197 (n + 1)

theorem P6428426226621759377.correct : P6428426226621759377.Spec := by
  intro n
  simp only [A049197, Nat.add_sub_cancel]

end A049197

/-! ## A049197.P12938120438535709280

`∩[A005117(n+1), A049195(n+1)]`
-/

namespace A049197.P12938120438535709280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P12938120438535709280

namespace A049197

/-- `∩[A005117(n+1), A049195(n+1)]` -/
def P12938120438535709280.Spec : Prop :=
  ∀ n, (P12938120438535709280.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P2483828922266180501

`∩[A049195(n+1), A144338(n+1)]`
-/

namespace A049197.P2483828922266180501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049197.P2483828922266180501

namespace A049197

/-- `∩[A049195(n+1), A144338(n+1)]` -/
def P2483828922266180501.Spec : Prop :=
  ∀ n, (P2483828922266180501.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P12887673634740710692

`eq[A007424(n+1), A107078(A000010(n+1))]+1`
-/

namespace A049197.P12887673634740710692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049197.P12887673634740710692

namespace A049197

/-- `eq[A007424(n+1), A107078(A000010(n+1))]+1` -/
def P12887673634740710692.Spec : Prop :=
  ∀ n, (P12887673634740710692.a n : ℤ) = A049197 (n + 1)

end A049197

/-! ## A049197.P13683869696112815467

`filter[A226386(n+1), A384667(#)]`
-/

namespace A049197.P13683869696112815467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A049197.P13683869696112815467

namespace A049197

/-- `filter[A226386(n+1), A384667(#)]` -/
def P13683869696112815467.Spec : Prop :=
  ∀ n, P13683869696112815467.a n = A049197 (n + 1)

end A049197

/-! ## A049197.P10270437744950210587

`eq[A000688(n+1), A107078(A000010(n+1))]+1`
-/

namespace A049197.P10270437744950210587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107078 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A049197.P10270437744950210587

namespace A049197

/-- `eq[A000688(n+1), A107078(A000010(n+1))]+1` -/
def P10270437744950210587.Spec : Prop :=
  ∀ n, (P10270437744950210587.a n : ℤ) = A049197 (n + 1)

end A049197

/-!
# A049198: Numbers that are not squarefree and whose Euler totient function is squarefree.

The programs for A049198, there is no canonical definition to state claims against.
-/

/-! ## A049198.P1378766579511981589

`∩[A015713(n+1), A049149(n+1)]`
-/

namespace A049198.P1378766579511981589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P1378766579511981589

/-! ## A049198.P893520889837425561

`∩[A049149(n+1), A057109(n+1)]`
-/

namespace A049198.P893520889837425561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P893520889837425561

/-! ## A049198.P2428578430963393415

`∩[A049149(n+1), A069189(n+1)]`
-/

namespace A049198.P2428578430963393415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P2428578430963393415

/-! ## A049198.P15840854269671083494

`∩[A049149(n+1), A069265(n+1)]`
-/

namespace A049198.P15840854269671083494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P15840854269671083494

/-! ## A049198.P7321034242172439627

`∩[A049149(n+1), A070003(n+1)]`
-/

namespace A049198.P7321034242172439627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P7321034242172439627

/-! ## A049198.P8429115687936438499

`∩[A049149(n+1), A166402(n+1)]`
-/

namespace A049198.P8429115687936438499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166402 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P8429115687936438499

/-! ## A049198.P12068953200493128583

`∩[A049149(n+1), A195212(n+1)]`
-/

namespace A049198.P12068953200493128583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P12068953200493128583

/-! ## A049198.P12366495981019006822

`∩[A049149(n+1), A226385(n+1)]`
-/

namespace A049198.P12366495981019006822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P12366495981019006822

/-! ## A049198.P11527025694212112760

`∩[A049149(n+1), A229027(n+1)]`
-/

namespace A049198.P11527025694212112760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P11527025694212112760

/-! ## A049198.P7158262729674675056

`∩[A049149(n+1), A255586(n+1)]`
-/

namespace A049198.P7158262729674675056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049149 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049198.P7158262729674675056

/-!
# A049199: Nonsquarefree numbers whose Euler totient function is also nonsquarefree.

The programs for A049199, the canonical program `A049199.P14129207223259727457` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A049199 has offset 1).

The definition of A049199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7811 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A049199.P499787045982937881

`record[A105570(A244723(n+2))]`
-/

namespace A049199.P499787045982937881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A244723 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049199.P499787045982937881

namespace A049199

/-- `record[A105570(A244723(n+2))]` -/
def P499787045982937881.Spec : Prop :=
  ∀ n, P499787045982937881.a n = A049199 (n + 1)

end A049199

/-! ## A049199.P10632108573848374029

`filter[A244723(n+2), A087049(#)]`
-/

namespace A049199.P10632108573848374029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A049199.P10632108573848374029

namespace A049199

/-- `filter[A244723(n+2), A087049(#)]` -/
def P10632108573848374029.Spec : Prop :=
  ∀ n, P10632108573848374029.a n = A049199 (n + 1)

end A049199

/-! ## A049199.P13296942274520496824

`filter[A244723(n+2), A105234(#)]`
-/

namespace A049199.P13296942274520496824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A049199.P13296942274520496824

namespace A049199

/-- `filter[A244723(n+2), A105234(#)]` -/
def P13296942274520496824.Spec : Prop :=
  ∀ n, P13296942274520496824.a n = A049199 (n + 1)

end A049199

/-! ## A049199.P13833652269480820847

`∩[A013929(n+1), A244723(n+1)]`
-/

namespace A049199.P13833652269480820847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P13833652269480820847

namespace A049199

/-- `∩[A013929(n+1), A244723(n+1)]` -/
def P13833652269480820847.Spec : Prop :=
  ∀ n, (P13833652269480820847.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P17471677670813417778

`∩[A080756(n+1), A244723(n+1)]`
-/

namespace A049199.P17471677670813417778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P17471677670813417778

namespace A049199

/-- `∩[A080756(n+1), A244723(n+1)]` -/
def P17471677670813417778.Spec : Prop :=
  ∀ n, (P17471677670813417778.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P17823644572960250960

`record[A105570(A255199(n+3))]`
-/

namespace A049199.P17823644572960250960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A255199 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A049199.P17823644572960250960

namespace A049199

/-- `record[A105570(A255199(n+3))]` -/
def P17823644572960250960.Spec : Prop :=
  ∀ n, P17823644572960250960.a n = A049199 (n + 1)

end A049199

/-! ## A049199.P3975053174598847100

`filter[A255199(n+2), A087049(#)]`
-/

namespace A049199.P3975053174598847100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A049199.P3975053174598847100

namespace A049199

/-- `filter[A255199(n+2), A087049(#)]` -/
def P3975053174598847100.Spec : Prop :=
  ∀ n, P3975053174598847100.a n = A049199 (n + 1)

end A049199

/-! ## A049199.P11018016821794319245

`∩[A013929(n+1), A255199(n+1)]`
-/

namespace A049199.P11018016821794319245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P11018016821794319245

namespace A049199

/-- `∩[A013929(n+1), A255199(n+1)]` -/
def P11018016821794319245.Spec : Prop :=
  ∀ n, (P11018016821794319245.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P5133383718248929

`∩[A080756(n+1), A255199(n+1)]`
-/

namespace A049199.P5133383718248929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P5133383718248929

namespace A049199

/-- `∩[A080756(n+1), A255199(n+1)]` -/
def P5133383718248929.Spec : Prop :=
  ∀ n, (P5133383718248929.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P12266968236083562335

`∩[A244723(n+1), A389462(n+1)]`
-/

namespace A049199.P12266968236083562335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P12266968236083562335

namespace A049199

/-- `∩[A244723(n+1), A389462(n+1)]` -/
def P12266968236083562335.Spec : Prop :=
  ∀ n, (P12266968236083562335.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P16537410823621221481

`∩[A255199(n+1), A389462(n+1)]`
-/

namespace A049199.P16537410823621221481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P16537410823621221481

namespace A049199

/-- `∩[A255199(n+1), A389462(n+1)]` -/
def P16537410823621221481.Spec : Prop :=
  ∀ n, (P16537410823621221481.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P14129207223259727457

`eq[A008683(A000010(n+2)), A055615(n+2)]+2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A049199

/-- `eq[A008683(A000010(n+2)), A055615(n+2)]+2` -/
def P14129207223259727457.Spec : Prop :=
  ∀ n, (P14129207223259727457.a n : ℤ) = A049199 (n + 1)

theorem P14129207223259727457.correct : P14129207223259727457.Spec := by
  intro n
  simp only [A049199, Nat.add_sub_cancel]

end A049199

/-! ## A049199.P12706418444687368143

`∩[A244723(n+1), A366288(n+1)]`
-/

namespace A049199.P12706418444687368143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P12706418444687368143

namespace A049199

/-- `∩[A244723(n+1), A366288(n+1)]` -/
def P12706418444687368143.Spec : Prop :=
  ∀ n, (P12706418444687368143.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P11277261585605703721

`filter[A049195(n+1), A087049(#)]`
-/

namespace A049199.P11277261585605703721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A049199.P11277261585605703721

namespace A049199

/-- `filter[A049195(n+1), A087049(#)]` -/
def P11277261585605703721.Spec : Prop :=
  ∀ n, P11277261585605703721.a n = A049199 (n + 1)

end A049199

/-! ## A049199.P542774944128768882

`∩[A013929(n+1), A049195(n+1)]`
-/

namespace A049199.P542774944128768882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P542774944128768882

namespace A049199

/-- `∩[A013929(n+1), A049195(n+1)]` -/
def P542774944128768882.Spec : Prop :=
  ∀ n, (P542774944128768882.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P14722380810755860801

`∩[A049195(n+1), A080756(n+1)]`
-/

namespace A049199.P14722380810755860801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P14722380810755860801

namespace A049199

/-- `∩[A049195(n+1), A080756(n+1)]` -/
def P14722380810755860801.Spec : Prop :=
  ∀ n, (P14722380810755860801.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P12497634045857682272

`∩[A049195(n+1), A162966(n+1)]`
-/

namespace A049199.P12497634045857682272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P12497634045857682272

namespace A049199

/-- `∩[A049195(n+1), A162966(n+1)]` -/
def P12497634045857682272.Spec : Prop :=
  ∀ n, (P12497634045857682272.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P2604322066514848465

`∩[A049195(n+1), A244723(n+1)]`
-/

namespace A049199.P2604322066514848465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244723 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P2604322066514848465

namespace A049199

/-- `∩[A049195(n+1), A244723(n+1)]` -/
def P2604322066514848465.Spec : Prop :=
  ∀ n, (P2604322066514848465.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P15406608287209627531

`∩[A049195(n+1), A255199(n+1)]`
-/

namespace A049199.P15406608287209627531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A049199.P15406608287209627531

namespace A049199

/-- `∩[A049195(n+1), A255199(n+1)]` -/
def P15406608287209627531.Spec : Prop :=
  ∀ n, (P15406608287209627531.a n : ℤ) = A049199 (n + 1)

end A049199

/-! ## A049199.P11116716376003293454

`filter[A049195(n+1), A107078(#)]`
-/

namespace A049199.P11116716376003293454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049195 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A049199.P11116716376003293454

namespace A049199

/-- `filter[A049195(n+1), A107078(#)]` -/
def P11116716376003293454.Spec : Prop :=
  ∀ n, P11116716376003293454.a n = A049199 (n + 1)

end A049199

