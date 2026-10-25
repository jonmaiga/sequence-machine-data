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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
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
# A089101: a(n) = (n - 4 + prime(n) mod 9) mod 10.

The programs for A089101, the canonical program `A089101.P14565553806755914979` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089101 has offset 1).

The definition of A089101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089101.P14565553806755914979

`(A038194(n+1)+A020719(n))%10`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A089101

/-- `(A038194(n+1)+A020719(n))%10` -/
def P14565553806755914979.Spec : Prop :=
  ∀ n, P14565553806755914979.a n = A089101 (n + 1)

theorem P14565553806755914979.correct : P14565553806755914979.Spec := by
  intro n
  simp only [A089101, Nat.add_sub_cancel]

end A089101

/-! ## A089101.P8153850932690547755

`A010879(A038194(n+1)+n+7)`
-/

namespace A089101.P8153850932690547755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A038194 (n + 1) + (n + 7 : ℤ)).toNat

end

end A089101.P8153850932690547755

namespace A089101

/-- `A010879(A038194(n+1)+n+7)` -/
def P8153850932690547755.Spec : Prop :=
  ∀ n, P8153850932690547755.a n = A089101 (n + 1)

end A089101

/-! ## A089101.P2110175283733456635

`A010879(dr(A004087(n+1))+n+7)`
-/

namespace A089101.P2110175283733456635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.digitalRoot (A004087 (n + 1)) + (n + 7))

end

end A089101.P2110175283733456635

namespace A089101

/-- `A010879(dr(A004087(n+1))+n+7)` -/
def P2110175283733456635.Spec : Prop :=
  ∀ n, P2110175283733456635.a n = A089101 (n + 1)

end A089101

/-! ## A089101.P3615562767638036677

`A010879(A020719(n)+dr(A004087(n+1)))`
-/

namespace A089101.P3615562767638036677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A020719 n + (SequenceMachineLib.digitalRoot (A004087 (n + 1)) : ℤ)).toNat

end

end A089101.P3615562767638036677

namespace A089101

/-- `A010879(A020719(n)+dr(A004087(n+1)))` -/
def P3615562767638036677.Spec : Prop :=
  ∀ n, P3615562767638036677.a n = A089101 (n + 1)

end A089101

/-!
# A089102: Sign twisted convoluted convolved Fibonacci numbers H_j^(6).

The programs for A089102, there is no canonical definition to state claims against.
-/

/-! ## A089102.P10741107054525999567

`A089112(A056119(n)+16)`
-/

namespace A089102.P10741107054525999567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089112 (A056119 n + 16).toNat

end

end A089102.P10741107054525999567

/-! ## A089102.P11746246972274647256

`A089112(eq[3, A219347(n)])`
-/

namespace A089102.P11746246972274647256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089102.P11746246972274647256

/-! ## A089102.P3821230234134717927

`A089112(eq[5, A193592(n)])`
-/

namespace A089102.P3821230234134717927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089102.P3821230234134717927

/-!
# A089103: a(n) = Mod[n+Prime[n],10].

The programs for A089103, the canonical program `A089103.P18032189882898387334` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089103 has offset 1).

The definition of A089103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089103.P16589085924258852528

`A014688(n+1)%10`
-/

namespace A089103.P16589085924258852528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014688 (n + 1)) 10

end

end A089103.P16589085924258852528

namespace A089103

/-- `A014688(n+1)%10` -/
def P16589085924258852528.Spec : Prop :=
  ∀ n, P16589085924258852528.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P10461328294300294429

`∑[A230847(n+1)]%10`
-/

namespace A089103.P10461328294300294429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 10

end

end A089103.P10461328294300294429

namespace A089103

/-- `∑[A230847(n+1)]%10` -/
def P10461328294300294429.Spec : Prop :=
  ∀ n, P10461328294300294429.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P4884961297128429958

`(A095116(n+1)+1)%10`
-/

namespace A089103.P4884961297128429958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095116 (n + 1) + 1) 10

end

end A089103.P4884961297128429958

namespace A089103

/-- `(A095116(n+1)+1)%10` -/
def P4884961297128429958.Spec : Prop :=
  ∀ n, P4884961297128429958.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P18032189882898387334

`(A008864(n+1)+n)%10`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A089103

/-- `(A008864(n+1)+n)%10` -/
def P18032189882898387334.Spec : Prop :=
  ∀ n, P18032189882898387334.a n = A089103 (n + 1)

theorem P18032189882898387334.correct : P18032189882898387334.Spec := by
  intro n
  simp only [A089103, Nat.add_sub_cancel]

end A089103

/-! ## A089103.P14349459788114713213

`(A000040(n+1)+1+n)%10`
-/

namespace A089103.P14349459788114713213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) + 1 + (n : ℤ)) 10

end

end A089103.P14349459788114713213

namespace A089103

/-- `(A000040(n+1)+1+n)%10` -/
def P14349459788114713213.Spec : Prop :=
  ∀ n, P14349459788114713213.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P9973948323768955531

`(sqrt(A001248(n+1))+n+1)%10`
-/

namespace A089103.P9973948323768955531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ) + (n + 1 : ℝ))) 10

end

end A089103.P9973948323768955531

namespace A089103

/-- `(sqrt(A001248(n+1))+n+1)%10` -/
def P9973948323768955531.Spec : Prop :=
  ∀ n, P9973948323768955531.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P2967889356110891969

`A010879(A007652(n+1)+1+n)`
-/

namespace A089103.P2967889356110891969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A007652 (n + 1) + 1 + (n : ℤ)).toNat

end

end A089103.P2967889356110891969

namespace A089103

/-- `A010879(A007652(n+1)+1+n)` -/
def P2967889356110891969.Spec : Prop :=
  ∀ n, P2967889356110891969.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P5522583326401523942

`A010879(A137589(n+1)+1+n)`
-/

namespace A089103.P5522583326401523942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A137589 (n + 1) + 1 + (n : ℤ)).toNat

end

end A089103.P5522583326401523942

namespace A089103

/-- `A010879(A137589(n+1)+1+n)` -/
def P5522583326401523942.Spec : Prop :=
  ∀ n, P5522583326401523942.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P5731514147062945012

`A010879(A095959(n+1)+1+n)`
-/

namespace A089103.P5731514147062945012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A095959 (n + 1) + 1 + (n : ℤ)).toNat

end

end A089103.P5731514147062945012

namespace A089103

/-- `A010879(A095959(n+1)+1+n)` -/
def P5731514147062945012.Spec : Prop :=
  ∀ n, P5731514147062945012.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P2738861762438786232

`A010879(A110923(n+1)+1+n)`
-/

namespace A089103.P2738861762438786232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A110923 (n + 1) + 1 + (n : ℤ)).toNat

end

end A089103.P2738861762438786232

namespace A089103

/-- `A010879(A110923(n+1)+1+n)` -/
def P2738861762438786232.Spec : Prop :=
  ∀ n, P2738861762438786232.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P9614903267493198416

`(p?[abs(xor(n, -2))]+n+1)%10`
-/

namespace A089103.P9614903267493198416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + (n + 1 : ℤ)) 10

end

end A089103.P9614903267493198416

namespace A089103

/-- `(p?[abs(xor(n, -2))]+n+1)%10` -/
def P9614903267493198416.Spec : Prop :=
  ∀ n, P9614903267493198416.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P14884474566101209062

`(p?[xor(1, n)+1]+n+1)%10`
-/

namespace A089103.P14884474566101209062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (n + 1)) % 10

end

end A089103.P14884474566101209062

namespace A089103

/-- `(p?[xor(1, n)+1]+n+1)%10` -/
def P14884474566101209062.Spec : Prop :=
  ∀ n, (P14884474566101209062.a n : ℤ) = A089103 (n + 1)

end A089103

/-! ## A089103.P2849557467354893411

`(p?[n%3+n]+n+1)%10`
-/

namespace A089103.P2849557467354893411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + (n + 1)) % 10

end

end A089103.P2849557467354893411

namespace A089103

/-- `(p?[n%3+n]+n+1)%10` -/
def P2849557467354893411.Spec : Prop :=
  ∀ n, (P2849557467354893411.a n : ℤ) = A089103 (n + 1)

end A089103

/-! ## A089103.P1616377583461949887

`(record[A000010(n+1)+2]+n)%10`
-/

namespace A089103.P1616377583461949887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)) 10

end

end A089103.P1616377583461949887

namespace A089103

/-- `(record[A000010(n+1)+2]+n)%10` -/
def P1616377583461949887.Spec : Prop :=
  ∀ n, P1616377583461949887.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P14869337540771196857

`(record[A006530(n+2)+1]+n)%10`
-/

namespace A089103.P14869337540771196857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)) 10

end

end A089103.P14869337540771196857

namespace A089103

/-- `(record[A006530(n+2)+1]+n)%10` -/
def P14869337540771196857.Spec : Prop :=
  ∀ n, P14869337540771196857.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P7030103927647362810

`(record[A020639(n+2)]+1+n)%10`
-/

namespace A089103.P7030103927647362810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1 + (n : ℤ)) 10

end

end A089103.P7030103927647362810

namespace A089103

/-- `(record[A020639(n+2)]+1+n)%10` -/
def P7030103927647362810.Spec : Prop :=
  ∀ n, P7030103927647362810.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P13463616527476549980

`(eq[2, A000005(n+1)]+n+2)%10`
-/

namespace A089103.P13463616527476549980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + (n + 2)) % 10

end

end A089103.P13463616527476549980

namespace A089103

/-- `(eq[2, A000005(n+1)]+n+2)%10` -/
def P13463616527476549980.Spec : Prop :=
  ∀ n, (P13463616527476549980.a n : ℤ) = A089103 (n + 1)

end A089103

/-! ## A089103.P7819203049085485219

`A010879(A010889(A000040(n+1))+n)`
-/

namespace A089103.P7819203049085485219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A010889 (A000040 (n + 1)).toNat + (n : ℤ)).toNat

end

end A089103.P7819203049085485219

namespace A089103

/-- `A010879(A010889(A000040(n+1))+n)` -/
def P7819203049085485219.Spec : Prop :=
  ∀ n, P7819203049085485219.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P9946777768245308219

`A010879(A010879(n+1)+A008578(n+2))`
-/

namespace A089103.P9946777768245308219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A010879 (n + 1) + A008578 (n + 2)).toNat

end

end A089103.P9946777768245308219

namespace A089103

/-- `A010879(A010879(n+1)+A008578(n+2))` -/
def P9946777768245308219.Spec : Prop :=
  ∀ n, P9946777768245308219.a n = A089103 (n + 1)

end A089103

/-! ## A089103.P11215349947526372998

`A010879(A014688(n+1))`
-/

namespace A089103.P11215349947526372998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A014688 (n + 1)).toNat

end

end A089103.P11215349947526372998

namespace A089103

/-- `A010879(A014688(n+1))` -/
def P11215349947526372998.Spec : Prop :=
  ∀ n, P11215349947526372998.a n = A089103 (n + 1)

end A089103

/-!
# A089106: Sign twisted convoluted convolved Fibonacci numbers H_j^(10).

The programs for A089106, there is no canonical definition to state claims against.
-/

/-! ## A089106.P13202934934818439731

`A085362(n)-A178252(A026383(n))`
-/

namespace A089106.P13202934934818439731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085362 n - A178252 (A026383 n).toNat

end

end A089106.P13202934934818439731

/-! ## A089106.P8191763521811936451

`A022828(∑[A002023(n)]-A278222(n))`
-/

namespace A089106.P8191763521811936451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002023 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022828 (∑ j ∈ Finset.range (n + 1), f1 j - A278222 n).toNat

end

end A089106.P8191763521811936451

/-!
# A089107: Square array T(r,j) (r>=1, j>=1) read by antidiagonals, where T(r,j) is the convoluted convolved Fibonacci number G_j^(r) (see the Moree paper).

The programs for A089107, there is no canonical definition to state claims against.
-/

/-! ## A089107.P18304912584546017709

`A234300(A121462(A077342(n+1)))`
-/

namespace A089107.P18304912584546017709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234300 (A121462 (A077342 (n + 1)).toNat).toNat

end

end A089107.P18304912584546017709

/-! ## A089107.P11989918333492822793

`A113704(n)+A003434(A156953(n))`
-/

namespace A089107.P11989918333492822793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113704 n + A003434 (A156953 n).toNat

end

end A089107.P11989918333492822793

/-! ## A089107.P2888903006272054385

`A068063(A350789(n)+A004248(n))`
-/

namespace A089107.P2888903006272054385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A350789 n + A004248 n).toNat

end

end A089107.P2888903006272054385

/-! ## A089107.P5053987012358467006

`or(A108456(n), A108456(A143632(n)))`
-/

namespace A089107.P5053987012358467006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108456 n) (A108456 (A143632 n).toNat)

end

end A089107.P5053987012358467006

/-! ## A089107.P16156679805624608240

`or(A102673(A156953(n)), A108456(n))`
-/

namespace A089107.P16156679805624608240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102673 (A156953 n).toNat) (A108456 n)

end

end A089107.P16156679805624608240

/-!
# A089108: Convoluted convolved Fibonacci numbers G_4^(r).

The programs for A089108, the canonical program `A089108.P6084886675638830110` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089108 has offset 1).

The definition of A089108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089108.P6084886675638830110

`∑[floor(n/3)+2]+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089108

/-- `∑[floor(n/3)+2]+1` -/
def P6084886675638830110.Spec : Prop :=
  ∀ n, P6084886675638830110.a n = A089108 (n + 1)

theorem P6084886675638830110.correct : P6084886675638830110.Spec := by
  intro n
  simp only [A089108, Nat.add_sub_cancel]

end A089108

/-! ## A089108.P9214537176157234350

`∑[a(n-3)+1]` with `a(0)=3, a(1)=2, a(2)=2, a(3)=3`
-/

namespace A089108.P9214537176157234350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 2, 3] fun n f1 =>
  f1 (n - 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089108.P9214537176157234350

namespace A089108

/-- `∑[a(n-3)+1]` -/
def P9214537176157234350.Spec : Prop :=
  ∀ n, (P9214537176157234350.a n : ℤ) = A089108 (n + 1)

end A089108

/-! ## A089108.P14641491718237597962

`∑[∑[((n-2)%3)%2]+3]`
-/

namespace A089108.P14641491718237597962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((n : ℤ) - 2) 3) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089108.P14641491718237597962

namespace A089108

/-- `∑[∑[((n-2)%3)%2]+3]` -/
def P14641491718237597962.Spec : Prop :=
  ∀ n, P14641491718237597962.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P17949692040559224785

`round(C(n+3, 2)/3+n+2)`
-/

namespace A089108.P17949692040559224785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 3) 2 : ℚ) / 3 + (n + 2 : ℚ))

end

end A089108.P17949692040559224785

namespace A089108

/-- `round(C(n+3, 2)/3+n+2)` -/
def P17949692040559224785.Spec : Prop :=
  ∀ n, P17949692040559224785.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P17124780748450403182

`floor(a(n-1)+n/3+2)` with `a(0)=3`
-/

namespace A089108.P17124780748450403182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℚ) + ((n : ℚ) / 3 + 2)⌋

end

end A089108.P17124780748450403182

namespace A089108

/-- `floor(a(n-1)+n/3+2)` -/
def P17124780748450403182.Spec : Prop :=
  ∀ n, P17124780748450403182.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P14639371709029525775

`∑[∑[a(n-3)²]]` with `a(0)=3, a(1)=-1, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A089108.P14639371709029525775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 0, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089108.P14639371709029525775

namespace A089108

/-- `∑[∑[a(n-3)²]]` -/
def P14639371709029525775.Spec : Prop :=
  ∀ n, P14639371709029525775.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P393463065444875937

`∑[∑[floor(a(n-3))]]` with `a(0)=3, a(1)=-1, a(2)=0, a(3)=1, a(4)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A089108.P393463065444875937
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 0, 1, 0] fun n f2 =>
  f2 (n - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089108.P393463065444875937

namespace A089108

/-- `∑[∑[floor(a(n-3))]]` -/
def P393463065444875937.Spec : Prop :=
  ∀ n, P393463065444875937.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P16684130682950715172

`record[a(n-3)+n+1]` with `a(0)=3, a(1)=0, a(2)=1, a(3)=3`
-/

namespace A089108.P16684130682950715172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 0, 1, 3] fun n f1 =>
  f1 (n - 3) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089108.P16684130682950715172

namespace A089108

/-- `record[a(n-3)+n+1]` -/
def P16684130682950715172.Spec : Prop :=
  ∀ n, (P16684130682950715172.a n : ℤ) = A089108 (n + 1)

end A089108

/-! ## A089108.P12863120045307930377

`∑[∑[a(n-3)^3]]` with `a(0)=3, a(1)=-1, a(2)=0, a(3)=1, a(4)=0`
-/

namespace A089108.P12863120045307930377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -1, 0, 1, 0] fun n f2 =>
  f2 (n - 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089108.P12863120045307930377

namespace A089108

/-- `∑[∑[a(n-3)^3]]` -/
def P12863120045307930377.Spec : Prop :=
  ∀ n, P12863120045307930377.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P4795663640184871981

`∑[A008620(n)+gcd(2, A000040(n+1))]`
-/

namespace A089108.P4795663640184871981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n + (Int.gcd 2 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089108.P4795663640184871981

namespace A089108

/-- `∑[A008620(n)+gcd(2, A000040(n+1))]` -/
def P4795663640184871981.Spec : Prop :=
  ∀ n, P4795663640184871981.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P9600883514124927374

`A186355(n+2)`
-/

namespace A089108.P9600883514124927374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186355 (n + 2)

end

end A089108.P9600883514124927374

namespace A089108

/-- `A186355(n+2)` -/
def P9600883514124927374.Spec : Prop :=
  ∀ n, P9600883514124927374.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P10434293997248402309

`floor(Δ[A055831(n+4)]/3)`
-/

namespace A089108.P10434293997248402309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n : ℚ) / 3⌋

end

end A089108.P10434293997248402309

namespace A089108

/-- `floor(Δ[A055831(n+4)]/3)` -/
def P10434293997248402309.Spec : Prop :=
  ∀ n, P10434293997248402309.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P5083669675033932972

`floor(A006503(n+1)/(n+1))`
-/

namespace A089108.P5083669675033932972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006503 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A089108.P5083669675033932972

namespace A089108

/-- `floor(A006503(n+1)/(n+1))` -/
def P5083669675033932972.Spec : Prop :=
  ∀ n, P5083669675033932972.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P15876109346654648389

`floor(A052905(n+2)/3)`
-/

namespace A089108.P15876109346654648389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052905 (n + 2) : ℚ) / 3⌋

end

end A089108.P15876109346654648389

namespace A089108

/-- `floor(A052905(n+2)/3)` -/
def P15876109346654648389.Spec : Prop :=
  ∀ n, P15876109346654648389.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P3606354765012046177

`floor(A055999(n+2)/3)`
-/

namespace A089108.P3606354765012046177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055999 (n + 2) : ℚ) / 3⌋

end

end A089108.P3606354765012046177

namespace A089108

/-- `floor(A055999(n+2)/3)` -/
def P3606354765012046177.Spec : Prop :=
  ∀ n, P3606354765012046177.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P4917145938348826152

`ceil(A004006(n+2)/(n+1)+n)`
-/

namespace A089108.P4917145938348826152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004006 (n + 2) : ℚ) / (n + 1 : ℚ) + (n : ℚ)⌉

end

end A089108.P4917145938348826152

namespace A089108

/-- `ceil(A004006(n+2)/(n+1)+n)` -/
def P4917145938348826152.Spec : Prop :=
  ∀ n, P4917145938348826152.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P18202659711609649691

`floor((A000096(n+4)-4)/3)`
-/

namespace A089108.P18202659711609649691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000096 (n + 4) - 4 : ℚ) / 3⌋

end

end A089108.P18202659711609649691

namespace A089108

/-- `floor((A000096(n+4)-4)/3)` -/
def P18202659711609649691.Spec : Prop :=
  ∀ n, P18202659711609649691.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P9492168349134319301

`abs(A001840(n+4)-2)`
-/

namespace A089108.P9492168349134319301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001840 (n + 4) - 2|

end

end A089108.P9492168349134319301

namespace A089108

/-- `abs(A001840(n+4)-2)` -/
def P9492168349134319301.Spec : Prop :=
  ∀ n, P9492168349134319301.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P7296698269520747734

`A363433(2*(n+3))`
-/

namespace A089108.P7296698269520747734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363433 (2 * (n + 3))

end

end A089108.P7296698269520747734

namespace A089108

/-- `A363433(2*(n+3))` -/
def P7296698269520747734.Spec : Prop :=
  ∀ n, P7296698269520747734.a n = A089108 (n + 1)

end A089108

/-! ## A089108.P2146548216141180113

`Δ[A001400(2*n+1)+Δ[A008763(2*n+1)]]`
-/

namespace A089108.P2146548216141180113
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (2 * n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089108.P2146548216141180113

namespace A089108

/-- `Δ[A001400(2*n+1)+Δ[A008763(2*n+1)]]` -/
def P2146548216141180113.Spec : Prop :=
  ∀ n, P2146548216141180113.a n = A089108 (n + 1)

end A089108

/-!
# A089109: Convoluted convolved Fibonacci numbers G_5^(r).

The programs for A089109, the canonical program `A089109.P16104004456827407604` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089109 has offset 1).

The definition of A089109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089109.P16104004456827407604

`∑[C(floor(n/2)+4, 2)-2]+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089109

/-- `∑[C(floor(n/2)+4, 2)-2]+1` -/
def P16104004456827407604.Spec : Prop :=
  ∀ n, P16104004456827407604.a n = A089109 (n + 1)

theorem P16104004456827407604.correct : P16104004456827407604.Spec := by
  intro n
  simp only [A089109, Nat.add_sub_cancel]

end A089109

/-! ## A089109.P2370944241176315901

`(66-18*(-1)^(n+1)+(115-3*(-1)^(n+1))*(n+1)+36*(n+1)²+2*(n+1)^3)/48`
-/

namespace A089109.P2370944241176315901
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (66 - 18 * (-1) ^ (n + 1) + (115 - 3 * (-1) ^ (n + 1)) * (n + 1 : ℤ) + (36 * (n + 1) ^ 2 : ℤ) + (2 * (n + 1) ^ 3 : ℤ) : ℚ) / 48

end

end A089109.P2370944241176315901

namespace A089109

/-- `(66-18*(-1)^(n+1)+(115-3*(-1)^(n+1))*(n+1)+36*(n+1)²+2*(n+1)^3)/48` -/
def P2370944241176315901.Spec : Prop :=
  ∀ n, P2370944241176315901.a n = (A089109 (n + 1) : ℚ)

end A089109

/-! ## A089109.P8060125830719749253

`A208971(n+2)+∑[n+2]`
-/

namespace A089109.P8060125830719749253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208971 (n + 2) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A089109.P8060125830719749253

namespace A089109

/-- `A208971(n+2)+∑[n+2]` -/
def P8060125830719749253.Spec : Prop :=
  ∀ n, P8060125830719749253.a n = A089109 (n + 1)

end A089109

/-! ## A089109.P13956657242728394401

`∑[A333616(n+3)]-Δ[n²]`
-/

namespace A089109.P13956657242728394401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333616 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A089109.P13956657242728394401

namespace A089109

/-- `∑[A333616(n+3)]-Δ[n²]` -/
def P13956657242728394401.Spec : Prop :=
  ∀ n, P13956657242728394401.a n = A089109 (n + 1)

end A089109

/-! ## A089109.P4129187376786320000

`∑[A008805(n+4)-2]+1`
-/

namespace A089109.P4129187376786320000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 (n + 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A089109.P4129187376786320000

namespace A089109

/-- `∑[A008805(n+4)-2]+1` -/
def P4129187376786320000.Spec : Prop :=
  ∀ n, P4129187376786320000.a n = A089109 (n + 1)

end A089109

/-! ## A089109.P2722653044225087214

`∑[A080036(a(n-2))]` with `a(0)=5, a(1)=4, a(2)=8`
-/

namespace A089109.P2722653044225087214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 4, 8] fun n f1 =>
  A080036 (f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089109.P2722653044225087214

namespace A089109

/-- `∑[A080036(a(n-2))]` -/
def P2722653044225087214.Spec : Prop :=
  ∀ n, P2722653044225087214.a n = A089109 (n + 1)

end A089109

/-!
# A089110: Sign twisted convoluted convolved Fibonacci numbers H_5^(r).

The programs for A089110, the canonical program `A089110.P11736030232127959961` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089110 has offset 1).

The definition of A089110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089110.P11736030232127959961

`A089109(n+1)+Δ[A008805(A008619(n))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089110

/-- `A089109(n+1)+Δ[A008805(A008619(n))]` -/
def P11736030232127959961.Spec : Prop :=
  ∀ n, P11736030232127959961.a n = A089110 (n + 1)

theorem P11736030232127959961.correct : P11736030232127959961.Spec := by
  intro n
  simp only [A089110, Nat.add_sub_cancel]

end A089110

/-! ## A089110.P9775214918242482462

`A159914(n+8)-(2*n+9)`
-/

namespace A089110.P9775214918242482462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159914 (n + 8) - (2 * n + 9 : ℤ)

end

end A089110.P9775214918242482462

namespace A089110

/-- `A159914(n+8)-(2*n+9)` -/
def P9775214918242482462.Spec : Prop :=
  ∀ n, P9775214918242482462.a n = A089110 (n + 1)

end A089110

/-! ## A089110.P3662141234601601721

`A159914(n+8)-7-A005843(n+1)`
-/

namespace A089110.P3662141234601601721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159914 (n + 8) - 7 - A005843 (n + 1)

end

end A089110.P3662141234601601721

namespace A089110

/-- `A159914(n+8)-7-A005843(n+1)` -/
def P3662141234601601721.Spec : Prop :=
  ∀ n, P3662141234601601721.a n = A089110 (n + 1)

end A089110

/-!
# A089111: Convoluted convolved Fibonacci numbers G_6^(r).

The programs for A089111, the canonical program `A089111.P11309076075631602613` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089111 has offset 1).

The definition of A089111 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089111.P17682805855797855319

`floor(A139798(n+1)/(n+1))`
-/

namespace A089111.P17682805855797855319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139798 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A089111.P17682805855797855319

namespace A089111

/-- `floor(A139798(n+1)/(n+1))` -/
def P17682805855797855319.Spec : Prop :=
  ∀ n, P17682805855797855319.a n = A089111 (n + 1)

end A089111

/-! ## A089111.P11309076075631602613

`floor(∑[A055832(n+5)]/(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089111

/-- `floor(∑[A055832(n+5)]/(n+1))` -/
def P11309076075631602613.Spec : Prop :=
  ∀ n, P11309076075631602613.a n = A089111 (n + 1)

theorem P11309076075631602613.correct : P11309076075631602613.Spec := by
  intro n
  simp only [A089111, Nat.add_sub_cancel]

end A089111

/-! ## A089111.P8828960469760438770

`A026037(n+3)+A011795(n)-3`
-/

namespace A089111.P8828960469760438770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026037 (n + 3) + (A011795 n - 3)

end

end A089111.P8828960469760438770

namespace A089111

/-- `A026037(n+3)+A011795(n)-3` -/
def P8828960469760438770.Spec : Prop :=
  ∀ n, P8828960469760438770.a n = A089111 (n + 1)

end A089111

/-! ## A089111.P12262992666951988255

`A011795(n+5)+Δ[A005582(n+1)]`
-/

namespace A089111.P12262992666951988255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011795 (n + 5) + (f1 (n + 1) - f1 n)

end

end A089111.P12262992666951988255

namespace A089111

/-- `A011795(n+5)+Δ[A005582(n+1)]` -/
def P12262992666951988255.Spec : Prop :=
  ∀ n, P12262992666951988255.a n = A089111 (n + 1)

end A089111

/-! ## A089111.P9640486562999145817

`∑[A029007(2*n)]+A008778(n)+A155212(n)+4`
-/

namespace A089111.P9640486562999145817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029007 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A008778 n + (A155212 n + 4))

end

end A089111.P9640486562999145817

namespace A089111

/-- `∑[A029007(2*n)]+A008778(n)+A155212(n)+4` -/
def P9640486562999145817.Spec : Prop :=
  ∀ n, P9640486562999145817.a n = A089111 (n + 1)

end A089111

/-!
# A089112: Square array T(r,j) (r >= 1, j >= 1) read by antidiagonals, where T(r,j) is the sign twisted convoluted convolved Fibonacci number H_j^(r) (see the Moree paper).

The programs for A089112, there is no canonical definition to state claims against.
-/

/-! ## A089112.P8572798999284049275

`A287272(A141044(n)*A209996(n+1))`
-/

namespace A089112.P8572798999284049275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A141044 n * A209996 (n + 1)).toNat

end

end A089112.P8572798999284049275

/-! ## A089112.P16645596255421869524

`A278043(A002262(n)^A193564(n+1))`
-/

namespace A089112.P16645596255421869524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278043 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A193564 (n + 1) : ℤ))).toNat

end

end A089112.P16645596255421869524

/-! ## A089112.P4344185324499480608

`A287272(lcm(A141044(n), A209996(n+1)))`
-/

namespace A089112.P4344185324499480608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (Int.lcm (A141044 n) (A209996 (n + 1)))

end

end A089112.P4344185324499480608

/-! ## A089112.P12209871602573304650

`or(A088917(A131199(n)), A089107(n+1))`
-/

namespace A089112.P12209871602573304650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A088917 (A131199 n).toNat) (A089107 (n + 1))

end

end A089112.P12209871602573304650

/-! ## A089112.P11836250122774050426

`A287272(or(A141044(n), A209996(n+1)))`
-/

namespace A089112.P11836250122774050426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (Int.lor (A141044 n) (A209996 (n + 1))).toNat

end

end A089112.P11836250122774050426

/-!
# A089113: Convoluted convolved Fibonacci numbers G_7^(r).

The programs for A089113, there is no canonical definition to state claims against.
-/

/-! ## A089113.P3057133669462960954

`A089107(A167487(n+5))`
-/

namespace A089113.P3057133669462960954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (A167487 (n + 5)).toNat

end

end A089113.P3057133669462960954

/-! ## A089113.P13883007924560135309

`A089107(A000096(n+5)+8)`
-/

namespace A089113.P13883007924560135309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (A000096 (n + 5) + 8).toNat

end

end A089113.P13883007924560135309

/-!
# A089114: Sign twisted convoluted convolved Fibonacci numbers H_7^(r).

The programs for A089114, there is no canonical definition to state claims against.
-/

/-! ## A089114.P3901429362330579143

`A089112(A000217(n+6)+7)`
-/

namespace A089114.P3901429362330579143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089112 (A000217 (n + 6) + 7).toNat

end

end A089114.P3901429362330579143

/-! ## A089114.P15474341060074266911

`A089112(eq[8, A131818(n+1)])`
-/

namespace A089114.P15474341060074266911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089114.P15474341060074266911

/-!
# A089115: Convoluted convolved Fibonacci numbers G_8^(r).

The programs for A089115, there is no canonical definition to state claims against.
-/

/-! ## A089115.P8104218094440403197

`floor(A155161(A000217(n+9)-8)/(n+1))`
-/

namespace A089115.P8104218094440403197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A155161 (A000217 (n + 9) - 8).toNat : ℚ) / (n + 1 : ℚ)⌋

end

end A089115.P8104218094440403197

/-!
# A089116: Convoluted convolved Fibonacci numbers G_j^(3).

The programs for A089116, there is no canonical definition to state claims against.
-/

/-! ## A089116.P18220488013669894462

`record[A089102(n+1)-A089093(n+1)]`
-/

namespace A089116.P18220488013669894462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089102 (n + 1) - A089093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089116.P18220488013669894462

/-! ## A089116.P8297877185575845060

`record[A089102(n+2)%A089093(n+2)]`
-/

namespace A089116.P8297877185575845060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089102 (n + 2)) (A089093 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089116.P8297877185575845060

/-! ## A089116.P8537498363280821704

`A089102(2*n+1)-A089093(2*n+1)`
-/

namespace A089116.P8537498363280821704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089102 (2 * n + 1) - A089093 (2 * n + 1)

end

end A089116.P8537498363280821704

/-! ## A089116.P8675283429723836898

`A002264(A047886(n)+A001628(n))`
-/

namespace A089116.P8675283429723836898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A047886 n + A001628 n).toNat

end

end A089116.P8675283429723836898

/-! ## A089116.P14956037906168209414

`A002264(A317302(n)+A001628(n))`
-/

namespace A089116.P14956037906168209414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A317302 n + A001628 n).toNat

end

end A089116.P14956037906168209414

/-!
# A089117: Convoluted convolved Fibonacci numbers G_j^(4).

The programs for A089117, there is no canonical definition to state claims against.
-/

/-! ## A089117.P8042946011458055614

`A089107(A141214(n+1))`
-/

namespace A089117.P8042946011458055614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (A141214 (n + 1)).toNat

end

end A089117.P8042946011458055614

/-! ## A089117.P39310654240538017

`A089107(A027379(n+2))`
-/

namespace A089117.P39310654240538017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (A027379 (n + 2)).toNat

end

end A089117.P39310654240538017

/-! ## A089117.P2077315551289648542

`A089107(A055998(n+2))`
-/

namespace A089117.P2077315551289648542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (A055998 (n + 2)).toNat

end

end A089117.P2077315551289648542

/-! ## A089117.P13973010580645683258

`A089107(A155212(n)+5)`
-/

namespace A089117.P13973010580645683258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089107 (A155212 n + 5).toNat

end

end A089117.P13973010580645683258

/-! ## A089117.P12107464174587463911

`A089112(A155212(n)+5)`
-/

namespace A089117.P12107464174587463911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089112 (A155212 n + 5).toNat

end

end A089117.P12107464174587463911

/-!
# A089118: Nonnegative numbers in (3*A005836 - 1) [A005836 are the numbers with base representation containing no 2].

The programs for A089118, the canonical program `A089118.P9208626228526382448` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089118 has offset 1).

The definition of A089118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089118.P17822165308010757665

`A107757(n+1)-A010060(n+1)`
-/

namespace A089118.P17822165308010757665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107757 (n + 1) - A010060 (n + 1)

end

end A089118.P17822165308010757665

namespace A089118

/-- `A107757(n+1)-A010060(n+1)` -/
def P17822165308010757665.Spec : Prop :=
  ∀ n, P17822165308010757665.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P9208626228526382448

`A074938(n+1)-(A010059(n+1)+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089118

/-- `A074938(n+1)-(A010059(n+1)+1)` -/
def P9208626228526382448.Spec : Prop :=
  ∀ n, P9208626228526382448.a n = A089118 (n + 1)

theorem P9208626228526382448.correct : P9208626228526382448.Spec := by
  intro n
  simp only [A089118, Nat.add_sub_cancel]

end A089118

/-! ## A089118.P2013577124772101431

`A010060(n+1)+A074938(n+1)-2`
-/

namespace A089118.P2013577124772101431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1) + (A074938 (n + 1) - 2)

end

end A089118.P2013577124772101431

namespace A089118

/-- `A010060(n+1)+A074938(n+1)-2` -/
def P2013577124772101431.Spec : Prop :=
  ∀ n, P2013577124772101431.a n = A089118 (n + 1)

theorem P2013577124772101431.correct : P2013577124772101431.Spec := by
  intro n
  simp only [A089118, Nat.add_sub_cancel, A089118.P2013577124772101431.a, A089118.P9208626228526382448.a, A010059, A010059.P6338678923093357896.a, A010060, A010060.P3080921269106500717.a, A074938, A074938.P9120139472351872222.a, A000035, A000035.P2023072528413494694.a, A000120, A000120.P2816527436160941581.a, A081601, A081601.P7694742959722061994.a, A005187, A005187.P3874015513960485494.a, A005836, A005836.P12367569128854000442.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089118

/-! ## A089118.P12182649588724549452

`A081601(n+2)-1`
-/

namespace A089118.P12182649588724549452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081601 (n + 2) - 1

end

end A089118.P12182649588724549452

namespace A089118

/-- `A081601(n+2)-1` -/
def P12182649588724549452.Spec : Prop :=
  ∀ n, P12182649588724549452.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P5647838463477555195

`A191107(n+2)-2`
-/

namespace A089118.P5647838463477555195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191107 (n + 2) - 2

end

end A089118.P5647838463477555195

namespace A089118

/-- `A191107(n+2)-2` -/
def P5647838463477555195.Spec : Prop :=
  ∀ n, P5647838463477555195.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P13395152205838265330

`A356426(n+2)-3`
-/

namespace A089118.P13395152205838265330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356426 (n + 2) - 3

end

end A089118.P13395152205838265330

namespace A089118

/-- `A356426(n+2)-3` -/
def P13395152205838265330.Spec : Prop :=
  ∀ n, P13395152205838265330.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P1566122054882422213

`3*A005836(n+2)-1`
-/

namespace A089118.P1566122054882422213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005836 (n + 2) - 1

end

end A089118.P1566122054882422213

namespace A089118

/-- `3*A005836(n+2)-1` -/
def P1566122054882422213.Spec : Prop :=
  ∀ n, P1566122054882422213.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P14421477133945094636

`A190640(n+2)/2-2`
-/

namespace A089118.P14421477133945094636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190640 (n + 2) : ℚ) / 2 - 2

end

end A089118.P14421477133945094636

namespace A089118

/-- `A190640(n+2)/2-2` -/
def P14421477133945094636.Spec : Prop :=
  ∀ n, P14421477133945094636.a n = (A089118 (n + 1) : ℚ)

end A089118

/-! ## A089118.P6423356154618912934

`A055246(n+2)-(A191106(n+2)+A003278(n+2))`
-/

namespace A089118.P6423356154618912934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055246 (n + 2) - (A191106 (n + 2) + A003278 (n + 2))

end

end A089118.P6423356154618912934

namespace A089118

/-- `A055246(n+2)-(A191106(n+2)+A003278(n+2))` -/
def P6423356154618912934.Spec : Prop :=
  ∀ n, P6423356154618912934.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P2531698887166924609

`A082575(2*(n+1))+1`
-/

namespace A089118.P2531698887166924609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082575 (2 * (n + 1)) + 1

end

end A089118.P2531698887166924609

namespace A089118

/-- `A082575(2*(n+1))+1` -/
def P2531698887166924609.Spec : Prop :=
  ∀ n, P2531698887166924609.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P9249974802078266240

`∑[A236313(2*(n+1))]+n`
-/

namespace A089118.P9249974802078266240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A089118.P9249974802078266240

namespace A089118

/-- `∑[A236313(2*(n+1))]+n` -/
def P9249974802078266240.Spec : Prop :=
  ∀ n, P9249974802078266240.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P7225733274964438617

`A236313(2*(n+1))+A005836(2*n+1)`
-/

namespace A089118.P7225733274964438617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236313 (2 * (n + 1)) + A005836 (2 * n + 1)

end

end A089118.P7225733274964438617

namespace A089118

/-- `A236313(2*(n+1))+A005836(2*n+1)` -/
def P7225733274964438617.Spec : Prop :=
  ∀ n, P7225733274964438617.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P7594457813032436995

`A005836(2*(n+1))+A005836(A006519(2*(n+1)))`
-/

namespace A089118.P7594457813032436995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (2 * (n + 1)) + A005836 (A006519 (2 * (n + 1))).toNat

end

end A089118.P7594457813032436995

namespace A089118

/-- `A005836(2*(n+1))+A005836(A006519(2*(n+1)))` -/
def P7594457813032436995.Spec : Prop :=
  ∀ n, P7594457813032436995.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P18039506567676676871

`A186776(2*n+3)-1`
-/

namespace A089118.P18039506567676676871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (2 * n + 3) - 1

end

end A089118.P18039506567676676871

namespace A089118

/-- `A186776(2*n+3)-1` -/
def P18039506567676676871.Spec : Prop :=
  ∀ n, P18039506567676676871.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P16639215453663792731

`A003278(2*n+3)-2`
-/

namespace A089118.P16639215453663792731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (2 * n + 3) - 2

end

end A089118.P16639215453663792731

namespace A089118

/-- `A003278(2*n+3)-2` -/
def P16639215453663792731.Spec : Prop :=
  ∀ n, P16639215453663792731.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P13107729031820618609

`A004793(2*n+3)-2`
-/

namespace A089118.P13107729031820618609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (2 * n + 3) - 2

end

end A089118.P13107729031820618609

namespace A089118

/-- `A004793(2*n+3)-2` -/
def P13107729031820618609.Spec : Prop :=
  ∀ n, P13107729031820618609.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P8900583497982212771

`A033159(2*n+3)-3`
-/

namespace A089118.P8900583497982212771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (2 * n + 3) - 3

end

end A089118.P8900583497982212771

namespace A089118

/-- `A033159(2*n+3)-3` -/
def P8900583497982212771.Spec : Prop :=
  ∀ n, P8900583497982212771.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P14725612804195151642

`A033160(2*n+3)-3`
-/

namespace A089118.P14725612804195151642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (2 * n + 3) - 3

end

end A089118.P14725612804195151642

namespace A089118

/-- `A033160(2*n+3)-3` -/
def P14725612804195151642.Spec : Prop :=
  ∀ n, P14725612804195151642.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P8114812246803666661

`A005836(Δ[(n+1)²])-1`
-/

namespace A089118.P8114812246803666661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A089118.P8114812246803666661

namespace A089118

/-- `A005836(Δ[(n+1)²])-1` -/
def P8114812246803666661.Spec : Prop :=
  ∀ n, P8114812246803666661.a n = A089118 (n + 1)

end A089118

/-! ## A089118.P11338665280405589546

`A370662(3*(n+1))`
-/

namespace A089118.P11338665280405589546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (3 * (n + 1))

end

end A089118.P11338665280405589546

namespace A089118

/-- `A370662(3*(n+1))` -/
def P11338665280405589546.Spec : Prop :=
  ∀ n, P11338665280405589546.a n = A089118 (n + 1)

end A089118

/-!
# A089119: Complement of ((3*A005836) union (3*A005836 - 1) union (3*A005836 - 2)).

The programs for A089119, the canonical program `A089119.P15893030282403105852` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089119 has offset 1).

The definition of A089119 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089119.P15893030282403105852

`eq[0, (n+1)*a(floor(n/3))²%3]-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089119

/-- `eq[0, (n+1)*a(floor(n/3))²%3]-2` -/
def P15893030282403105852.Spec : Prop :=
  ∀ n, P15893030282403105852.a n = A089119 (n + 1)

theorem P15893030282403105852.correct : P15893030282403105852.Spec := by
  intro n
  simp only [A089119, Nat.add_sub_cancel]

end A089119

/-! ## A089119.P2753586572325825408

`A111018(n+1)-1`
-/

namespace A089119.P2753586572325825408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111018 (n + 1) - 1

end

end A089119.P2753586572325825408

namespace A089119

/-- `A111018(n+1)-1` -/
def P2753586572325825408.Spec : Prop :=
  ∀ n, P2753586572325825408.a n = A089119 (n + 1)

theorem P2753586572325825408.correct : P2753586572325825408.Spec := by
  intro n
  simp only [A089119, Nat.add_sub_cancel, A089119.P2753586572325825408.a, A089119.P15893030282403105852.f1, A089119.P15893030282403105852.f2, A089119.P15893030282403105852.a, A111018, A111018.P13011013396432791406.f1, A111018.P13011013396432791406.f2, A111018.P13011013396432791406.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089119

/-! ## A089119.P1149955919858737479

`lt[2, A300222(n+2)]`
-/

namespace A089119.P1149955919858737479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089119.P1149955919858737479

namespace A089119

/-- `lt[2, A300222(n+2)]` -/
def P1149955919858737479.Spec : Prop :=
  ∀ n, (P1149955919858737479.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P4585584591898066131

`lt[2, A300222(n)]-2`
-/

namespace A089119.P4585584591898066131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A089119.P4585584591898066131

namespace A089119

/-- `lt[2, A300222(n)]-2` -/
def P4585584591898066131.Spec : Prop :=
  ∀ n, P4585584591898066131.a n = A089119 (n + 1)

end A089119

/-! ## A089119.P16015067413237539745

`comp[A370662(n+1)-1]`
-/

namespace A089119.P16015067413237539745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370662 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A089119.P16015067413237539745

namespace A089119

/-- `comp[A370662(n+1)-1]` -/
def P16015067413237539745.Spec : Prop :=
  ∀ n, (P16015067413237539745.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P1632591798087729135

`lt[A117966(n+2), n-1]`
-/

namespace A089119.P1632591798087729135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A089119.P1632591798087729135

namespace A089119

/-- `lt[A117966(n+2), n-1]` -/
def P1632591798087729135.Spec : Prop :=
  ∀ n, (P1632591798087729135.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P7855975379169420324

`lt[A004488(n+2), 2*n]`
-/

namespace A089119.P7855975379169420324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089119.P7855975379169420324

namespace A089119

/-- `lt[A004488(n+2), 2*n]` -/
def P7855975379169420324.Spec : Prop :=
  ∀ n, (P7855975379169420324.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P3482095773754245811

`eq[A039970(2*n+1), 0]-1`
-/

namespace A089119.P3482095773754245811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039970 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n : ℤ) - 1

end

end A089119.P3482095773754245811

namespace A089119

/-- `eq[A039970(2*n+1), 0]-1` -/
def P3482095773754245811.Spec : Prop :=
  ∀ n, P3482095773754245811.a n = A089119 (n + 1)

end A089119

/-! ## A089119.P17490575553909839402

`eq[A039973(2*n+1), 0]-1`
-/

namespace A089119.P17490575553909839402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039973 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n : ℤ) - 1

end

end A089119.P17490575553909839402

namespace A089119

/-- `eq[A039973(2*n+1), 0]-1` -/
def P17490575553909839402.Spec : Prop :=
  ∀ n, P17490575553909839402.a n = A089119 (n + 1)

end A089119

/-! ## A089119.P8366622121166583653

`A107756(A241783(n+1))`
-/

namespace A089119.P8366622121166583653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107756 (A241783 (n + 1)).toNat

end

end A089119.P8366622121166583653

namespace A089119

/-- `A107756(A241783(n+1))` -/
def P8366622121166583653.Spec : Prop :=
  ∀ n, P8366622121166583653.a n = A089119 (n + 1)

end A089119

/-! ## A089119.P6620321448898002609

`∩[A107756(n+1)-1, A107756(n+1)]`
-/

namespace A089119.P6620321448898002609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107756 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089119.P6620321448898002609

namespace A089119

/-- `∩[A107756(n+1)-1, A107756(n+1)]` -/
def P6620321448898002609.Spec : Prop :=
  ∀ n, (P6620321448898002609.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P7464249960722870169

`∩[A074940(n+1), A189822(n+1)]-2`
-/

namespace A089119.P7464249960722870169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189822 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A089119.P7464249960722870169

namespace A089119

/-- `∩[A074940(n+1), A189822(n+1)]-2` -/
def P7464249960722870169.Spec : Prop :=
  ∀ n, P7464249960722870169.a n = A089119 (n + 1)

end A089119

/-! ## A089119.P7299144298802192637

`eq[0, A039964(n)]`
-/

namespace A089119.P7299144298802192637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089119.P7299144298802192637

namespace A089119

/-- `eq[0, A039964(n)]` -/
def P7299144298802192637.Spec : Prop :=
  ∀ n, (P7299144298802192637.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P11478476888556362757

`eq[0, A039969(n+1)]`
-/

namespace A089119.P11478476888556362757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089119.P11478476888556362757

namespace A089119

/-- `eq[0, A039969(n+1)]` -/
def P11478476888556362757.Spec : Prop :=
  ∀ n, (P11478476888556362757.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P3448641754070605270

`eq[0, A039969(n)]-1`
-/

namespace A089119.P3448641754070605270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A089119.P3448641754070605270

namespace A089119

/-- `eq[0, A039969(n)]-1` -/
def P3448641754070605270.Spec : Prop :=
  ∀ n, P3448641754070605270.a n = A089119 (n + 1)

end A089119

/-! ## A089119.P5683420071818207820

`lt[0, A067397(n+1)]`
-/

namespace A089119.P5683420071818207820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067397 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089119.P5683420071818207820

namespace A089119

/-- `lt[0, A067397(n+1)]` -/
def P5683420071818207820.Spec : Prop :=
  ∀ n, (P5683420071818207820.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P5130206908518312213

`lt[1, A060373(n+1)]`
-/

namespace A089119.P5130206908518312213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089119.P5130206908518312213

namespace A089119

/-- `lt[1, A060373(n+1)]` -/
def P5130206908518312213.Spec : Prop :=
  ∀ n, (P5130206908518312213.a n : ℤ) = A089119 (n + 1)

end A089119

/-! ## A089119.P3690426465999546808

`lt[1, A060373(n)]-1`
-/

namespace A089119.P3690426465999546808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060373 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A089119.P3690426465999546808

namespace A089119

/-- `lt[1, A060373(n)]-1` -/
def P3690426465999546808.Spec : Prop :=
  ∀ n, P3690426465999546808.a n = A089119 (n + 1)

end A089119

/-! ## A089119.P11903795573640735664

`lt[0, A067397(n)/4]-1`
-/

namespace A089119.P11903795573640735664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067397 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n : ℤ) - 1

end

end A089119.P11903795573640735664

namespace A089119

/-- `lt[0, A067397(n)/4]-1` -/
def P11903795573640735664.Spec : Prop :=
  ∀ n, P11903795573640735664.a n = A089119 (n + 1)

end A089119

/-! ## A089119.P5833124961086209952

`eq[0, A039965(n+2)]`
-/

namespace A089119.P5833124961086209952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039965 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089119.P5833124961086209952

namespace A089119

/-- `eq[0, A039965(n+2)]` -/
def P5833124961086209952.Spec : Prop :=
  ∀ n, (P5833124961086209952.a n : ℤ) = A089119 (n + 1)

end A089119

/-!
# A089120: Smallest prime factor of n^2 + 1.

The programs for A089120, there is no canonical definition to state claims against.
-/

/-! ## A089120.P11526066213039321876

`A014442(A247339(n+1))`
-/

namespace A089120.P11526066213039321876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (A247339 (n + 1)).toNat

end

end A089120.P11526066213039321876

/-! ## A089120.P13205475371751751727

`A014442(n+1)-A252096(n+1)`
-/

namespace A089120.P13205475371751751727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014442 (n + 1) - A252096 (n + 1)

end

end A089120.P13205475371751751727

/-! ## A089120.P12731028960179132839

`A002313(A248746(n+1))-A252096(n+1)`
-/

namespace A089120.P12731028960179132839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (A248746 (n + 1)).toNat - A252096 (n + 1)

end

end A089120.P12731028960179132839

/-! ## A089120.P10710267979474795755

`A006530(A247339(n+1)²+1)`
-/

namespace A089120.P10710267979474795755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A247339 (n + 1) ^ 2 + 1).toNat

end

end A089120.P10710267979474795755

/-! ## A089120.P9754861859295421528

`A020639((n-(-1)^n)²+1)`
-/

namespace A089120.P9754861859295421528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (((n : ℤ) - (-1) ^ n) ^ 2 + 1).toNat

end

end A089120.P9754861859295421528

/-! ## A089120.P1172827708676727285

`p?[A020639(n²+1)]`
-/

namespace A089120.P1172827708676727285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089120.P1172827708676727285

/-! ## A089120.P10291257704428776330

`A374196((n+1)²+1)`
-/

namespace A089120.P10291257704428776330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374196 ((n + 1) ^ 2 + 1)

end

end A089120.P10291257704428776330

/-! ## A089120.P3308931619415173171

`∏{d}[A020639((n+1)²+1), #]`
-/

namespace A089120.P3308931619415173171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A089120.P3308931619415173171

/-! ## A089120.P18101800475651284124

`∑{p}[A020639(n*(n+2)+2), #]`
-/

namespace A089120.P18101800475651284124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * (n + 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089120.P18101800475651284124

/-! ## A089120.P10187683839477511317

`∏{p}[A020639((n+1)*(n+2)-n), #]`
-/

namespace A089120.P10187683839477511317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * (n + 2) - n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089120.P10187683839477511317

/-! ## A089120.P5625782336605464705

`∑{d}[A020639(n*or(1, n+1)+2), #]-1`
-/

namespace A089120.P5625782336605464705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * Nat.lor 1 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A089120.P5625782336605464705

/-! ## A089120.P6905954469973572380

`A020639((n+1)²+1)%A017114(n)`
-/

namespace A089120.P6905954469973572380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 ((n + 1) ^ 2 + 1)) (A017114 n)

end

end A089120.P6905954469973572380

/-! ## A089120.P11216811224933380825

`A000027(A020639(n²+n+n+2))`
-/

namespace A089120.P11216811224933380825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020639 (n ^ 2 + n + (n + 2))).toNat

end

end A089120.P11216811224933380825

/-! ## A089120.P6170736830860271033

`A020639(A005563(n)+2)+(2*n)%2`
-/

namespace A089120.P6170736830860271033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005563 n + 2).toNat + ((2 * n % 2 : ℕ) : ℤ)

end

end A089120.P6170736830860271033

/-! ## A089120.P16956786458585103487

`A020639(A002522(n+1))%A135177(n+1)`
-/

namespace A089120.P16956786458585103487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A002522 (n + 1)).toNat) (A135177 (n + 1))

end

end A089120.P16956786458585103487

/-! ## A089120.P4598663617042744533

`A020639(A005563(n)+2)%A183981(n+1)`
-/

namespace A089120.P4598663617042744533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A005563 n + 2).toNat) (A183981 (n + 1))

end

end A089120.P4598663617042744533

/-! ## A089120.P3454734192622369034

`A351233(A020639((n+1)²+1))`
-/

namespace A089120.P3454734192622369034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 (A020639 ((n + 1) ^ 2 + 1)).toNat

end

end A089120.P3454734192622369034

/-! ## A089120.P10695420544972605600

`p?[A351233(A020639(∑[2*n+1]+1))]`
-/

namespace A089120.P10695420544972605600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 (A020639 (∑ j ∈ Finset.range (n + 1), f2 j + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089120.P10695420544972605600

/-! ## A089120.P17649322818051473560

`A078311(A102631(n+1))`
-/

namespace A089120.P17649322818051473560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078311 (A102631 (n + 1)).toNat

end

end A089120.P17649322818051473560

/-! ## A089120.P7373678537695995675

`A078311((n+1)*A003557(n+1))`
-/

namespace A089120.P7373678537695995675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078311 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A089120.P7373678537695995675

/-!
# A089122: Triangle read by rows in which row n gives prime factors of n^2 + 1.

The programs for A089122, there is no canonical definition to state claims against.
-/

/-! ## A089122.P6071292786027896104

`A166376(lt[A098550(n+1), A230995(n)])`
-/

namespace A089122.P6071292786027896104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166376 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A089122.P6071292786027896104

/-! ## A089122.P9170134714462593639

`A166376(∑[A299504(A071416(n+1))])`
-/

namespace A089122.P9170134714462593639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299504 (A071416 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166376 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089122.P9170134714462593639

/-! ## A089122.P12041022828044727014

`A166376(A020753(n+1))`
-/

namespace A089122.P12041022828044727014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166376 (A020753 (n + 1)).toNat

end

end A089122.P12041022828044727014

/-! ## A089122.P10602564757067665054

`A166376(A167619(n+1))`
-/

namespace A089122.P10602564757067665054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166376 (A167619 (n + 1)).toNat

end

end A089122.P10602564757067665054

/-! ## A089122.P17042400713126218820

`A166376(floor((n+1)*log(3))%A222555(3*n+2))`
-/

namespace A089122.P17042400713126218820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166376 (Int.tmod ⌊(n + 1 : ℝ) * Real.log (3 : ℝ)⌋ (A222555 (3 * n + 2))).toNat

end

end A089122.P17042400713126218820

/-!
# A089123: Smallest prime factor of numbers of the form A^2 + 3.

The programs for A089123, there is no canonical definition to state claims against.
-/

/-! ## A089123.P4419253943098825997

`A020639(2*(n+2)+n²/(2-n%2))`
-/

namespace A089123.P4419253943098825997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((2 * (n + 2) : ℚ) + (n ^ 2 : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ))).toNat

end

end A089123.P4419253943098825997

/-! ## A089123.P4081733226743702038

`A020639(2*(n+2)+n²/(2-and(1, n)))`
-/

namespace A089123.P4081733226743702038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((2 * (n + 2) : ℚ) + (n ^ 2 : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))).toNat

end

end A089123.P4081733226743702038

/-! ## A089123.P15818236838036155123

`A020639(2*(n+2)+gcd(n*∑[n], n²²))`
-/

namespace A089123.P15818236838036155123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n + 2) + Nat.gcd (n * (∑ j ∈ Finset.range (n + 1), f1 j)) ((n ^ 2) ^ 2))

end

end A089123.P15818236838036155123

/-! ## A089123.P13463500206728724718

`A020639(2*(n+2)+n*n/(2-and(1, n)))`
-/

namespace A089123.P13463500206728724718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((2 * (n + 2) : ℚ) + (n : ℚ) * ((n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ)))).toNat

end

end A089123.P13463500206728724718

/-! ## A089123.P13733770171728254757

`A020639(2*(n+2)+n²/(char[2*n]+1))`
-/

namespace A089123.P13733770171728254757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((2 * (n + 2) : ℚ) + (n ^ 2 : ℚ) / (((if ∃ j, f1 j = n then 1 else 0) + 1 : ℕ) : ℚ))).toNat

end

end A089123.P13733770171728254757

/-! ## A089123.P971742186949178272

`∑{p}[A020639((n+1)²+3), #]`
-/

namespace A089123.P971742186949178272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089123.P971742186949178272

/-! ## A089123.P18368062752661380590

`∏{p}[A020639((n+1)^2+3), #]`
-/

namespace A089123.P18368062752661380590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089123.P18368062752661380590

/-! ## A089123.P1054365498966751691

`∏{d}[A020639(n*(n+2)+4), #]`
-/

namespace A089123.P1054365498966751691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n * (n + 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A089123.P1054365498966751691

/-! ## A089123.P4145405788006631587

`abs(1-A020639(∑[2*n+1]+3))+1`
-/

namespace A089123.P4145405788006631587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 3)| + 1

end

end A089123.P4145405788006631587

/-! ## A089123.P13439835618964149968

`A008472(A020639((n+1)²+3))`
-/

namespace A089123.P13439835618964149968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A020639 ((n + 1) ^ 2 + 3)).toNat

end

end A089123.P13439835618964149968

/-! ## A089123.P1736550306760978420

`A001221(a(n-1))*A020639(A117950(n+1))` with `a(0)=2`
-/

namespace A089123.P1736550306760978420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001221 (a (n - 1)).toNat * A020639 (A117950 (n + 1)).toNat

end

end A089123.P1736550306760978420

/-! ## A089123.P16367610486813950827

`A351233(A020639(∑[comp[2*n]]+3))`
-/

namespace A089123.P16367610486813950827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351233 (A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 3)).toNat

end

end A089123.P16367610486813950827

/-! ## A089123.P18086816386446185611

`A353270(A353270((n+1)²+3))`
-/

namespace A089123.P18086816386446185611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353270 (A353270 ((n + 1) ^ 2 + 3)).toNat

end

end A089123.P18086816386446185611

/-!
# A089124: Largest prime factor of n^2 + 3.

The programs for A089124, the canonical program `A089124.P12332690081814959682` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089124 has offset 1).

The definition of A089124 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089124.P12332690081814959682

`A006530(A117950(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A089124

/-- `A006530(A117950(n+1))` -/
def P12332690081814959682.Spec : Prop :=
  ∀ n, P12332690081814959682.a n = A089124 (n + 1)

theorem P12332690081814959682.correct : P12332690081814959682.Spec := by
  intro n
  simp only [A089124, Nat.add_sub_cancel]

end A089124

/-! ## A089124.P6848549327226222295

`A006530((n+1)²+3)`
-/

namespace A089124.P6848549327226222295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 3)

end

end A089124.P6848549327226222295

namespace A089124

/-- `A006530((n+1)²+3)` -/
def P6848549327226222295.Spec : Prop :=
  ∀ n, P6848549327226222295.a n = A089124 (n + 1)

end A089124

/-! ## A089124.P6307077228785462049

`∑{p}[A006530((n+1)^2+3), #]`
-/

namespace A089124.P6307077228785462049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 1) ^ 2 + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A089124.P6307077228785462049

namespace A089124

/-- `∑{p}[A006530((n+1)^2+3), #]` -/
def P6307077228785462049.Spec : Prop :=
  ∀ n, (P6307077228785462049.a n : ℤ) = A089124 (n + 1)

end A089124

/-! ## A089124.P4332151064248849055

`∏{d}[A006530(n*(n+2)+4), #]`
-/

namespace A089124.P4332151064248849055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n * (n + 2) + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A089124.P4332151064248849055

namespace A089124

/-- `∏{d}[A006530(n*(n+2)+4), #]` -/
def P4332151064248849055.Spec : Prop :=
  ∀ n, (P4332151064248849055.a n : ℤ) = A089124 (n + 1)

end A089124

/-! ## A089124.P2682989816740987000

`A000040(A061395((n+1)²+3))`
-/

namespace A089124.P2682989816740987000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061395 ((n + 1) ^ 2 + 3)).toNat

end

end A089124.P2682989816740987000

namespace A089124

/-- `A000040(A061395((n+1)²+3))` -/
def P2682989816740987000.Spec : Prop :=
  ∀ n, P2682989816740987000.a n = A089124 (n + 1)

end A089124

/-! ## A089124.P5083560783396282746

`A345941(A006530((n+1)^2+3))`
-/

namespace A089124.P5083560783396282746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345941 (A006530 ((n + 1) ^ 2 + 3)).toNat

end

end A089124.P5083560783396282746

namespace A089124

/-- `A345941(A006530((n+1)^2+3))` -/
def P5083560783396282746.Spec : Prop :=
  ∀ n, P5083560783396282746.a n = A089124 (n + 1)

end A089124

/-! ## A089124.P18402889648928720081

`A000015(A006530(n*(n+2)+4))`
-/

namespace A089124.P18402889648928720081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A006530 (n * (n + 2) + 4)).toNat

end

end A089124.P18402889648928720081

namespace A089124

/-- `A000015(A006530(n*(n+2)+4))` -/
def P18402889648928720081.Spec : Prop :=
  ∀ n, P18402889648928720081.a n = A089124 (n + 1)

end A089124

/-! ## A089124.P17849055441273138017

`A081812((n+1)²+3)`
-/

namespace A089124.P17849055441273138017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081812 ((n + 1) ^ 2 + 3)

end

end A089124.P17849055441273138017

namespace A089124

/-- `A081812((n+1)²+3)` -/
def P17849055441273138017.Spec : Prop :=
  ∀ n, P17849055441273138017.a n = A089124 (n + 1)

end A089124

/-! ## A089124.P12589390070757531220

`A111089((n+1)²+3)`
-/

namespace A089124.P12589390070757531220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 ((n + 1) ^ 2 + 3)

end

end A089124.P12589390070757531220

namespace A089124

/-- `A111089((n+1)²+3)` -/
def P12589390070757531220.Spec : Prop :=
  ∀ n, P12589390070757531220.a n = A089124 (n + 1)

end A089124

/-! ## A089124.P2301806200377948764

`A284695((n+1)²+3)`
-/

namespace A089124.P2301806200377948764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 ((n + 1) ^ 2 + 3)

end

end A089124.P2301806200377948764

namespace A089124

/-- `A284695((n+1)²+3)` -/
def P2301806200377948764.Spec : Prop :=
  ∀ n, P2301806200377948764.a n = A089124 (n + 1)

end A089124

/-!
# A089125: a(n+2) = a(n+1) + F(n+1)*a(n), where F = Fibonacci number (A000045) and a(0) = a(1) = 1.

The programs for A089125, there is no canonical definition to state claims against.
-/

/-! ## A089125.P3000612332232593536

`∏[A000045(n-1)/a(n-1)+1]` with `a(0)=1`
-/

namespace A089125.P3000612332232593536
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A000045 (n - 1) : ℚ) / f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089125.P3000612332232593536

/-! ## A089125.P963590256058907445

`a(n-1)+a(n-2)*A212804(n)` with `a(0)=1, a(1)=1`
-/

namespace A089125.P963590256058907445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * A212804 n

end

end A089125.P963590256058907445

/-! ## A089125.P14104215057749822799

`a(n-1)+a(n-2)*A324969(n)` with `a(0)=1, a(1)=1`
-/

namespace A089125.P14104215057749822799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * A324969 n

end

end A089125.P14104215057749822799

/-! ## A089125.P16946847602602780729

`a(n-1)+a(n-2)*Δ[A000045(n)]` with `a(0)=1, a(1)=1`
-/

namespace A089125.P16946847602602780729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + a (n - 2) * (f1 (n + 1) - f1 n)

end

end A089125.P16946847602602780729

/-!
# A089126: a(n+2) = F(n+1)*a(n+1) + F(n)*a(n) where F(n) = Fibonacci number (A000045), a(0) = a(1) = 1.

The programs for A089126, there is no canonical definition to state claims against.
-/

/-! ## A089126.P14510979696623573077

`or(A322396(n), A327230(A056865(n)))`
-/

namespace A089126.P14510979696623573077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A322396 n) (A327230 (A056865 n).toNat)

end

end A089126.P14510979696623573077

/-! ## A089126.P12343421515194461246

`A057355(A007360(n+1)+∏[A327516(n)])`
-/

namespace A089126.P12343421515194461246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 (A007360 (n + 1) + ∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089126.P12343421515194461246

/-! ## A089126.P15839552548275577762

`A330524(n^floor(n-atan(n)))`
-/

namespace A089126.P15839552548275577762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330524 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ : ℤ))).toNat

end

end A089126.P15839552548275577762

/-!
# A089127: a(n+2) = F(n)*a(n+1) + F(n+1)*a(n) where F(n) = Fibonacci number (A000045) and a(0) = a(1) = 1.

The programs for A089127, there is no canonical definition to state claims against.
-/

/-! ## A089127.P5869999659751712882

`A219186(a(n-1)+3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A089127.P5869999659751712882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 4] fun n a =>
  A219186 (a (n - 1) + 3).toNat

end

end A089127.P5869999659751712882

/-! ## A089127.P14254179020483788473

`A325468(round(14^(n/5)))-round(n-sqrt(n))`
-/

namespace A089127.P14254179020483788473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325468 (SequenceMachineLib.roundAway ((14 : ℝ) ^ ((n : ℚ) / 5 : ℝ))).toNat - SequenceMachineLib.roundAway ((n : ℝ) - Real.sqrt (n : ℝ))

end

end A089127.P14254179020483788473

/-! ## A089127.P17745700534275412164

`A294582(n)+A008647(n!)`
-/

namespace A089127.P17745700534275412164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294582 n + A008647 (Nat.factorial n)

end

end A089127.P17745700534275412164

/-! ## A089127.P7624770188268577212

`A171435(n+1)+A008647(n!)`
-/

namespace A089127.P7624770188268577212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 1) + A008647 (Nat.factorial n)

end

end A089127.P7624770188268577212

/-!
# A089128: a(n) = gcd(6,n).

The programs for A089128, the canonical program `A089128.P9470867573708518153` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089128 has offset 0).

The definition of A089128 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(6, n)` (program `A089128.P9470867573708518153`, by `A089128.P9470867573708518153.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089128.P9470867573708518153

`gcd(6, n)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089128

/-- `gcd(6, n)` -/
def P9470867573708518153.Spec : Prop :=
  ∀ n, (P9470867573708518153.a n : ℤ) = A089128 n

theorem P9470867573708518153.correct : P9470867573708518153.Spec := by
  intro n
  simp only [A089128]

end A089128

/-!
# A089129: Greatest common divisor of n^2 - 7 and n^2 + 7.

The programs for A089129, the canonical program `A089129.P15242494376525781756` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089129 has offset 0).

The definition of A089129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089129.P15242494376525781756

`gcd(n+7, 14)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089129

/-- `gcd(n+7, 14)` -/
def P15242494376525781756.Spec : Prop :=
  ∀ n, (P15242494376525781756.a n : ℤ) = A089129 n

theorem P15242494376525781756.correct : P15242494376525781756.Spec := by
  intro n
  simp only [A089129]

end A089129

/-!
# A089130: Primes of the form (k! + 2)/2.

The programs for A089130, there is no canonical definition to state claims against.
-/

/-! ## A089130.P13254922943441239808

`A139149(A082672(n+1))`
-/

namespace A089130.P13254922943441239808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139149 (A082672 (n + 1)).toNat

end

end A089130.P13254922943441239808

/-! ## A089130.P5085915584026727687

`A139149(eq[3, A329684(n)+A093621(n)])`
-/

namespace A089130.P5085915584026727687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n + A093621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089130.P5085915584026727687

/-! ## A089130.P9206897008294293525

`A139149(eq[2, A093621(n*A329684(n))])`
-/

namespace A089130.P9206897008294293525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093621 ((n : ℤ) * A329684 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139149 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089130.P9206897008294293525

/-! ## A089130.P2166043794662750566

`A139149(eq[2/A093621(n), A329684(n)])`
-/

namespace A089130.P2166043794662750566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A093621 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139149 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A089130.P2166043794662750566

/-! ## A089130.P16941379669335451731

`A139172(eq[3, A329684(n)+A093621(n)])+2`
-/

namespace A089130.P16941379669335451731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n + A093621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 2

end

end A089130.P16941379669335451731

/-!
# A089131: Primes of the form (k! + 3)/3.

The programs for A089131, there is no canonical definition to state claims against.
-/

/-! ## A089131.P15117850443165742447

`A139150(A089085(n+1))`
-/

namespace A089131.P15117850443165742447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139150 (A089085 (n + 1)).toNat

end

end A089131.P15117850443165742447

/-! ## A089131.P1593945631942148596

`A139147(n+1)+A002301(A089085(n+1))`
-/

namespace A089131.P1593945631942148596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139147 (n + 1) + A002301 (A089085 (n + 1)).toNat

end

end A089131.P1593945631942148596

/-!
# A089132: First prime in the progression (n!+m)/m.

The programs for A089132, there is no canonical definition to state claims against.
-/

/-! ## A089132.P14842434078837339460

`A020639(∑[floor(n/2)^a(n-1)]+5)` with `a(0)=5, a(1)=4`
-/

namespace A089132.P14842434078837339460
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [5, 4] fun n f1 =>
  (⌊(n : ℚ) / 2⌋ : ℝ) ^ (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 5)).toNat

end

end A089132.P14842434078837339460

/-! ## A089132.P15029041183792478124

`A164962(A000692(n))`
-/

namespace A089132.P15029041183792478124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164962 (A000692 n).toNat

end

end A089132.P15029041183792478124

/-! ## A089132.P17819042526984048619

`A236434(A332398(n))`
-/

namespace A089132.P17819042526984048619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236434 (A332398 n).toNat

end

end A089132.P17819042526984048619

/-!
# A089134: a(n) = -a(n-1) - a(n-2) + a(n-3) - a(n-5).

The programs for A089134, the canonical program `A089134.P752976244864628426` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089134 has offset 1).

The definition of A089134 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-1)-a(n-2)+a(n-3)-a(n-5)` (program `A089134.P752976244864628426`, by `A089134.P752976244864628426.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089134.P752976244864628426

`-a(n-1)-a(n-2)+a(n-3)-a(n-5)` with `a(0)=-1, a(1)=0, a(2)=2, a(3)=-3, a(4)=0`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089134

/-- `-a(n-1)-a(n-2)+a(n-3)-a(n-5)` -/
def P752976244864628426.Spec : Prop :=
  ∀ n, P752976244864628426.a n = A089134 (n + 1)

theorem P752976244864628426.correct : P752976244864628426.Spec := by
  intro n
  simp only [A089134, Nat.add_sub_cancel]

end A089134

/-!
# A089135: a(n) = -a(n-2) + 2*a(n-4) - a(n-10).

The programs for A089135, the canonical program `A089135.P18173854259518683685` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089135 has offset 1).

The definition of A089135 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `-a(n-2)+2*a(n-4)-a(n-10)` (program `A089135.P18173854259518683685`, by `A089135.P18173854259518683685.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089135.P18173854259518683685

`-a(n-2)+2*a(n-4)-a(n-10)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=2, a(4)=3, a(5)=-2, a(6)=-3, a(7)=6, a(8)=9, a(9)=-11`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089135

/-- `-a(n-2)+2*a(n-4)-a(n-10)` -/
def P18173854259518683685.Spec : Prop :=
  ∀ n, P18173854259518683685.a n = A089135 (n + 1)

theorem P18173854259518683685.correct : P18173854259518683685.Spec := by
  intro n
  simp only [A089135, Nat.add_sub_cancel]

end A089135

/-!
# A089137: Primes in the progression (n!- m)/m where n advances by 1 and m resets to 1 upon each prime occurrence.

The programs for A089137, there is no canonical definition to state claims against.
-/

/-! ## A089137.P3921923985654516859

`record[p?[A094310(n+1)-1]]`
-/

namespace A089137.P3921923985654516859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094310 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089137.P3921923985654516859

/-!
# A089138: a(n) = (3^(2*n))*(integral_{x=0 to 1} (1+x^3)^n dx)/(integral_{x=0 to 1} (1-x^3)^n dx).

The programs for A089138, there is no canonical definition to state claims against.
-/

/-! ## A089138.P13078135692037862545

`or(∑[A002888(n+1)], A307349(2*(n+1)))`
-/

namespace A089138.P13078135692037862545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A307349 (2 * (n + 1)))

end

end A089138.P13078135692037862545

/-!
# A089140: Number of subsequences of {1,2,3,...,n} which are p_1-sequences.

The programs for A089140, there is no canonical definition to state claims against.
-/

/-! ## A089140.P10884313725741206138

`A257639(A008414(n))+A008619(n)`
-/

namespace A089140.P10884313725741206138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A008414 n).toNat + A008619 n

end

end A089140.P10884313725741206138

/-! ## A089140.P15554398333395690242

`A185326(n)+A002024(C(n+7, 7))`
-/

namespace A089140.P15554398333395690242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185326 n + A002024 (Nat.choose (n + 7) 7)

end

end A089140.P15554398333395690242

/-! ## A089140.P5616440894291552930

`A003056(ceil(∑[A008413(n)+4]/2))`
-/

namespace A089140.P5616440894291552930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008413 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉.toNat

end

end A089140.P5616440894291552930

/-! ## A089140.P6038488206072932979

`A003056(∑[A291053(n+1)+∑{e}[n+1, #]]+1)`
-/

namespace A089140.P6038488206072932979
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291053 (n + 1) + ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A089140.P6038488206072932979

/-! ## A089140.P994674712538691344

`A003056(A011819(n+2)-A270681(n))`
-/

namespace A089140.P994674712538691344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A011819 (n + 2) - A270681 n).toNat

end

end A089140.P994674712538691344

/-!
# A089141: Square array, read by antidiagonal: T(n,k) = n*T(n,k-1)+(-1)^k*T(n,floor(k/2)).

The programs for A089141, there is no canonical definition to state claims against.
-/

/-! ## A089141.P13721014771899444915

`A057021(A004736(n+1)^A318951(n+1))`
-/

namespace A089141.P13721014771899444915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057021 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A318951 (n + 1) : ℤ))).toNat

end

end A089141.P13721014771899444915

/-!
# A089143: a(n) = 9*2^n - 6.

The programs for A089143, the canonical program `A089143.P6250580932517406891` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089143 has offset 0).

The definition of A089143 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*2^n-6` (program `A089143.P6250580932517406891`, by `A089143.P6250580932517406891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089143.P6250580932517406891

`9*2^n-6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089143

/-- `9*2^n-6` -/
def P6250580932517406891.Spec : Prop :=
  ∀ n, P6250580932517406891.a n = A089143 n

theorem P6250580932517406891.correct : P6250580932517406891.Spec := by
  intro n
  simp only [A089143]

end A089143

/-! ## A089143.P15324635608157714919

`3*A033484(n)`
-/

namespace A089143.P15324635608157714919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033484 n

end

end A089143.P15324635608157714919

namespace A089143

/-- `3*A033484(n)` -/
def P15324635608157714919.Spec : Prop :=
  ∀ n, P15324635608157714919.a n = A089143 n

theorem P15324635608157714919.correct : P15324635608157714919.Spec := by
  intro n
  simp only [A089143, Nat.add_sub_cancel, A089143.P15324635608157714919.a, A089143.P6250580932517406891.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089143

/-! ## A089143.P14786667082952899655

`ogf((3+3x)/(1-3x+2x^2))`
-/

namespace A089143.P14786667082952899655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 3] [1, -3, 2] n

end

end A089143.P14786667082952899655

namespace A089143

/-- `ogf((3+3x)/(1-3x+2x^2))` -/
def P14786667082952899655.Spec : Prop :=
  ∀ n, P14786667082952899655.a n = A089143 n

end A089143

/-! ## A089143.P15966290002534829251

`abs(6-lcm(9, 2^n))`
-/

namespace A089143.P15966290002534829251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |6 - (Nat.lcm 9 (2 ^ n) : ℤ)|

end

end A089143.P15966290002534829251

namespace A089143

/-- `abs(6-lcm(9, 2^n))` -/
def P15966290002534829251.Spec : Prop :=
  ∀ n, P15966290002534829251.a n = A089143 n

end A089143

/-! ## A089143.P10201283451024558530

`2*(a(n-1)+3)` with `a(0)=3`
-/

namespace A089143.P10201283451024558530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  2 * (a (n - 1) + 3)

end

end A089143.P10201283451024558530

namespace A089143

/-- `2*(a(n-1)+3)` -/
def P10201283451024558530.Spec : Prop :=
  ∀ n, (P10201283451024558530.a n : ℤ) = A089143 n

theorem P10201283451024558530.correct : P10201283451024558530.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P10201283451024558530.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P10201283451024558530.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P16203820723446187509

`∑[2*a(n-1)]` with `a(0)=3, a(1)=9`
-/

namespace A089143.P16203820723446187509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089143.P16203820723446187509

namespace A089143

/-- `∑[2*a(n-1)]` -/
def P16203820723446187509.Spec : Prop :=
  ∀ n, (P16203820723446187509.a n : ℤ) = A089143 n

end A089143

/-! ## A089143.P1896398902540271932

`lcm(2, a(n-1)+3)` with `a(0)=3, a(1)=12`
-/

namespace A089143.P1896398902540271932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 12] fun n a =>
  Nat.lcm 2 (a (n - 1) + 3)

end

end A089143.P1896398902540271932

namespace A089143

/-- `lcm(2, a(n-1)+3)` -/
def P1896398902540271932.Spec : Prop :=
  ∀ n, (P1896398902540271932.a n : ℤ) = A089143 n

end A089143

/-! ## A089143.P14110860577071563183

`2*(3-floor(-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A089143.P14110860577071563183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (3 - (-a (n - 1)))

end

end A089143.P14110860577071563183

namespace A089143

/-- `2*(3-floor(-a(n-1)))` -/
def P14110860577071563183.Spec : Prop :=
  ∀ n, P14110860577071563183.a n = A089143 n

theorem P14110860577071563183.correct : P14110860577071563183.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P14110860577071563183.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P14110860577071563183.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P8912215136018048226

`2*(3-ceil(-a(n-1)))` with `a(0)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A089143.P8912215136018048226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (3 - (-a (n - 1)))

end

end A089143.P8912215136018048226

namespace A089143

/-- `2*(3-ceil(-a(n-1)))` -/
def P8912215136018048226.Spec : Prop :=
  ∀ n, P8912215136018048226.a n = A089143 n

theorem P8912215136018048226.correct : P8912215136018048226.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P8912215136018048226.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P8912215136018048226.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P1811793528979743549

`2*(3-round(-a(n-1)))` with `a(0)=3`

`round` is left out, it is the identity on integers.
-/

namespace A089143.P1811793528979743549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (3 - (-a (n - 1)))

end

end A089143.P1811793528979743549

namespace A089143

/-- `2*(3-round(-a(n-1)))` -/
def P1811793528979743549.Spec : Prop :=
  ∀ n, P1811793528979743549.a n = A089143 n

theorem P1811793528979743549.correct : P1811793528979743549.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P1811793528979743549.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P1811793528979743549.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P5785277741993931060

`∑[a(n-1)+a(n-1)]` with `a(0)=3, a(1)=9`
-/

namespace A089143.P5785277741993931060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  f1 (n - 1) + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089143.P5785277741993931060

namespace A089143

/-- `∑[a(n-1)+a(n-1)]` -/
def P5785277741993931060.Spec : Prop :=
  ∀ n, (P5785277741993931060.a n : ℤ) = A089143 n

end A089143

/-! ## A089143.P10208503745485919912

`(a(n-1)+3)/(1-1/2)` with `a(0)=3`
-/

namespace A089143.P10208503745485919912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (a (n - 1) + 3) / (1 - (1 : ℚ) / 2)

end

end A089143.P10208503745485919912

namespace A089143

/-- `(a(n-1)+3)/(1-1/2)` -/
def P10208503745485919912.Spec : Prop :=
  ∀ n, P10208503745485919912.a n = (A089143 n : ℚ)

theorem P10208503745485919912.correct : P10208503745485919912.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P10208503745485919912.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P10208503745485919912.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P4474751100885477316

`4*(2-(1-a(n-1))/2)` with `a(0)=3`
-/

namespace A089143.P4474751100885477316
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * (2 - (1 - a (n - 1)) / 2)

end

end A089143.P4474751100885477316

namespace A089143

/-- `4*(2-(1-a(n-1))/2)` -/
def P4474751100885477316.Spec : Prop :=
  ∀ n, P4474751100885477316.a n = (A089143 n : ℚ)

theorem P4474751100885477316.correct : P4474751100885477316.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P4474751100885477316.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P4474751100885477316.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P12555062861200142149

`floor(a(n-1)+a(n-1)+6)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A089143.P12555062861200142149
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) + 6)

end

end A089143.P12555062861200142149

namespace A089143

/-- `floor(a(n-1)+a(n-1)+6)` -/
def P12555062861200142149.Spec : Prop :=
  ∀ n, (P12555062861200142149.a n : ℤ) = A089143 n

theorem P12555062861200142149.correct : P12555062861200142149.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P12555062861200142149.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P12555062861200142149.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P3945721680878134784

`2*(3-(floor(n-a(n-1))-n))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A089143.P3945721680878134784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (3 - ((n : ℤ) - a (n - 1) - (n : ℤ)))

end

end A089143.P3945721680878134784

namespace A089143

/-- `2*(3-(floor(n-a(n-1))-n))` -/
def P3945721680878134784.Spec : Prop :=
  ∀ n, P3945721680878134784.a n = A089143 n

theorem P3945721680878134784.correct : P3945721680878134784.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P3945721680878134784.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P3945721680878134784.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P14518610204414735837

`2*(2*a(n-1)-(a(n-1)-3))` with `a(0)=3`
-/

namespace A089143.P14518610204414735837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  2 * (2 * a (n - 1) - (a (n - 1) - 3))

end

end A089143.P14518610204414735837

namespace A089143

/-- `2*(2*a(n-1)-(a(n-1)-3))` -/
def P14518610204414735837.Spec : Prop :=
  ∀ n, P14518610204414735837.a n = A089143 n

theorem P14518610204414735837.correct : P14518610204414735837.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A089143, Nat.add_sub_cancel, A089143.P14518610204414735837.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A089143, Nat.add_sub_cancel, A089143.P14518610204414735837.a, A089143.P6250580932517406891.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A089143

/-! ## A089143.P45921736616270358

`A061776(Δ[n²])`
-/

namespace A089143.P45921736616270358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061776 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A089143.P45921736616270358

namespace A089143

/-- `A061776(Δ[n²])` -/
def P45921736616270358.Spec : Prop :=
  ∀ n, P45921736616270358.a n = A089143 n

end A089143

/-! ## A089143.P8867646887097984884

`∑[record[A134693(n)]]`
-/

namespace A089143.P8867646887097984884
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089143.P8867646887097984884

namespace A089143

/-- `∑[record[A134693(n)]]` -/
def P8867646887097984884.Spec : Prop :=
  ∀ n, P8867646887097984884.a n = A089143 n

end A089143

/-! ## A089143.P4743199942467357014

`∑[3*A003945(n)]`
-/

namespace A089143.P4743199942467357014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089143.P4743199942467357014

namespace A089143

/-- `∑[3*A003945(n)]` -/
def P4743199942467357014.Spec : Prop :=
  ∀ n, P4743199942467357014.a n = A089143 n

end A089143

/-! ## A089143.P12331016116648446037

`3*Δ[A050488(n)]`
-/

namespace A089143.P12331016116648446037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (f1 (n + 1) - f1 n)

end

end A089143.P12331016116648446037

namespace A089143

/-- `3*Δ[A050488(n)]` -/
def P12331016116648446037.Spec : Prop :=
  ∀ n, P12331016116648446037.a n = A089143 n

theorem P12331016116648446037.correct : P12331016116648446037.Spec := by
  intro n
  simp only [A089143, Nat.add_sub_cancel, A089143.P12331016116648446037.f1, A089143.P12331016116648446037.a, A089143.P6250580932517406891.a, A050488, A050488.P4828719649079771572.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089143

/-!
# A089144: Primes p such that 6*p-5 and 6*p-1 are primes.

The programs for A089144, there is no canonical definition to state claims against.
-/

/-! ## A089144.P5340651573386539951

`p?[A186243(n+1)]`
-/

namespace A089144.P5340651573386539951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089144.P5340651573386539951

/-! ## A089144.P8923170742748289179

`p?[A056956(n+1)+1]`
-/

namespace A089144.P8923170742748289179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089144.P8923170742748289179

/-! ## A089144.P8823721305109595448

`∩[A158015(n+1), A186243(n+1)]`
-/

namespace A089144.P8823721305109595448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158015 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P8823721305109595448

/-! ## A089144.P11452600553729233255

`∩[A042991(n+1), A186243(n+1)]`
-/

namespace A089144.P11452600553729233255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P11452600553729233255

/-! ## A089144.P13836839252742459623

`∩[A045327(n+1), A186243(n+1)]`
-/

namespace A089144.P13836839252742459623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P13836839252742459623

/-! ## A089144.P8417309171798667397

`∩[A049557(n+1), A186243(n+1)]`
-/

namespace A089144.P8417309171798667397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P8417309171798667397

/-! ## A089144.P13346527582471037518

`∩[A040159(n+1), A186243(n+1)]`
-/

namespace A089144.P13346527582471037518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P13346527582471037518

/-! ## A089144.P10475405254726362745

`∩[A040161(n+1), A186243(n+1)]`
-/

namespace A089144.P10475405254726362745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P10475405254726362745

/-! ## A089144.P12056457139446175394

`∩[A040169(n+1), A186243(n+1)]`
-/

namespace A089144.P12056457139446175394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P12056457139446175394

/-! ## A089144.P46144958547001999

`∩[A040179(n+1), A186243(n+1)]`
-/

namespace A089144.P46144958547001999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P46144958547001999

/-! ## A089144.P2132860037764047552

`∩[A040970(n+1), A186243(n+1)]`
-/

namespace A089144.P2132860037764047552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P2132860037764047552

/-! ## A089144.P12482252415856017342

`∩[A040972(n+1), A186243(n+1)]`
-/

namespace A089144.P12482252415856017342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P12482252415856017342

/-! ## A089144.P8197470701699076387

`∩[A040980(n+1), A186243(n+1)]`
-/

namespace A089144.P8197470701699076387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P8197470701699076387

/-! ## A089144.P7972735307385723937

`∩[A040986(n+1), A186243(n+1)]`
-/

namespace A089144.P7972735307385723937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P7972735307385723937

/-! ## A089144.P8628531405878168262

`∩[A040990(n+1), A186243(n+1)]`
-/

namespace A089144.P8628531405878168262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P8628531405878168262

/-! ## A089144.P1610081933105254352

`∩[A186243(n+1), A216862(n+1)]`
-/

namespace A089144.P1610081933105254352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P1610081933105254352

/-! ## A089144.P1060520966468987857

`∩[A040165(n+1), A186243(n+1)]`
-/

namespace A089144.P1060520966468987857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P1060520966468987857

/-! ## A089144.P244607968913946002

`∩[A040171(n+1), A186243(n+1)]`
-/

namespace A089144.P244607968913946002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P244607968913946002

/-! ## A089144.P11426741762358351118

`∩[A040184(n+1), A186243(n+1)]`
-/

namespace A089144.P11426741762358351118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089144.P11426741762358351118

/-!
# A089145: Greatest common divisor of n^2-3 and n^2+3.

The programs for A089145, the canonical program `A089145.P15049162508104864780` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089145 has offset 0).

The definition of A089145 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089145.P15049162508104864780

`gcd(n+3, 6)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089145

/-- `gcd(n+3, 6)` -/
def P15049162508104864780.Spec : Prop :=
  ∀ n, (P15049162508104864780.a n : ℤ) = A089145 n

theorem P15049162508104864780.correct : P15049162508104864780.Spec := by
  intro n
  simp only [A089145]

end A089145

/-!
# A089146: a(n) = gcd(n^2 - 4, n^2 + 4).

The programs for A089146, the canonical program `A089146.P3033314357646256747` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089146 has offset 0).

The definition of A089146 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(n²-4, n²+4)` (program `A089146.P3033314357646256747`, by `A089146.P3033314357646256747.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089146.P11119137282661016035

`a(n-4)` with `a(0)=4, a(1)=1, a(2)=8, a(3)=1`
-/

namespace A089146.P11119137282661016035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 8, 1] fun n a =>
  a (n - 4)

end

end A089146.P11119137282661016035

namespace A089146

/-- `a(n-4)` -/
def P11119137282661016035.Spec : Prop :=
  ∀ n, (P11119137282661016035.a n : ℤ) = A089146 n

end A089146

/-! ## A089146.P3033314357646256747

`gcd(n²-4, n²+4)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089146

/-- `gcd(n²-4, n²+4)` -/
def P3033314357646256747.Spec : Prop :=
  ∀ n, (P3033314357646256747.a n : ℤ) = A089146 n

theorem P3033314357646256747.correct : P3033314357646256747.Spec := by
  intro n
  simp only [A089146]

end A089146

/-!
# A089147: Numbers k such that 10^k + 7*R_k is prime, where R_k = 11...1 is the repunit (A002275) of length k.

The programs for A089147, there is no canonical definition to state claims against.
-/

/-! ## A089147.P3315326130674401855

`eq[1, A241020(n+2)]+1`
-/

namespace A089147.P3315326130674401855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A089147.P3315326130674401855

/-!
# A089148: Expansion of e.g.f.: 1/(exp(x) - x).

The programs for A089148, there is no canonical definition to state claims against.
-/

/-! ## A089148.P17582537282115386608

`A351791(A055999(n)+4)/(n+1)`
-/

namespace A089148.P17582537282115386608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351791 (A055999 n + 4).toNat : ℚ) / (n + 1 : ℚ)

end

end A089148.P17582537282115386608

/-! ## A089148.P2559420263712891021

`A144452(∑[n+1])/(n+1)`
-/

namespace A089148.P2559420263712891021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144452 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A089148.P2559420263712891021

/-!
# A089149: a(1) = 1; for n > 1, a(n) = smallest power of n such that n^m - a(n-1) is a positive prime.

The programs for A089149, there is no canonical definition to state claims against.
-/

/-! ## A089149.P8371646928548755906

`(n+1)^A089150(n+1)`
-/

namespace A089149.P8371646928548755906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A089150 (n + 1) : ℤ)

end

end A089149.P8371646928548755906

/-! ## A089149.P9311621753237096293

`(n+1)^A233412(A094388(n)-A154992(n))`
-/

namespace A089149.P9311621753237096293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A233412 (A094388 n - A154992 n).toNat : ℤ)

end

end A089149.P9311621753237096293

/-! ## A089149.P6980348792957712323

`(n+1)^A185317(A007980(n))`
-/

namespace A089149.P6980348792957712323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A185317 (A007980 n).toNat : ℤ)

end

end A089149.P6980348792957712323

/-! ## A089149.P5777912642117619184

`(n+1)^A219704(A049885(n+1))`
-/

namespace A089149.P5777912642117619184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A219704 (A049885 (n + 1)).toNat : ℤ)

end

end A089149.P5777912642117619184

/-!
# A089150: a(1) = 1; for > 1, a(n) = smallest m such that n^m - {(n-1)^a(n-1)} is a positive prime.

The programs for A089150, there is no canonical definition to state claims against.
-/

/-! ## A089150.P5877181135978690491

`A233412(A094388(n)-A154992(n))`
-/

namespace A089150.P5877181135978690491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233412 (A094388 n - A154992 n).toNat

end

end A089150.P5877181135978690491

/-!
# A089151: Primes p such that 6*p - 7 and 6*p - 5 are twin primes.

The programs for A089151, the canonical program `A089151.P10663751881803727715` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089151 has offset 1).

The definition of A089151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089151.P10663751881803727715

`p?[ceil(A001359(n+2)/6)+1]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A089151

/-- `p?[ceil(A001359(n+2)/6)+1]` -/
def P10663751881803727715.Spec : Prop :=
  ∀ n, P10663751881803727715.a n = A089151 (n + 1)

theorem P10663751881803727715.correct : P10663751881803727715.Spec := by
  intro n
  simp only [A089151, Nat.add_sub_cancel]

end A089151

/-! ## A089151.P13968493504285903625

`p?[A002822(n+1)+1]`
-/

namespace A089151.P13968493504285903625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089151.P13968493504285903625

namespace A089151

/-- `p?[A002822(n+1)+1]` -/
def P13968493504285903625.Spec : Prop :=
  ∀ n, P13968493504285903625.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P14614800732517751400

`p?[ceil(A177139(n+1)/2)]`
-/

namespace A089151.P14614800732517751400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A177139 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089151.P14614800732517751400

namespace A089151

/-- `p?[ceil(A177139(n+1)/2)]` -/
def P14614800732517751400.Spec : Prop :=
  ∀ n, P14614800732517751400.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P8404069946932683442

`p?[A079310(n+1)]`
-/

namespace A089151.P8404069946932683442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089151.P8404069946932683442

namespace A089151

/-- `p?[A079310(n+1)]` -/
def P8404069946932683442.Spec : Prop :=
  ∀ n, P8404069946932683442.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P18176942672652162881

`∩[A079310(n+1), A153135(n+1)]`
-/

namespace A089151.P18176942672652162881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089151.P18176942672652162881

namespace A089151

/-- `∩[A079310(n+1), A153135(n+1)]` -/
def P18176942672652162881.Spec : Prop :=
  ∀ n, (P18176942672652162881.a n : ℤ) = A089151 (n + 1)

end A089151

/-! ## A089151.P12798840009797555415

`∩[A000040(n+1), A079310(n+1)]`
-/

namespace A089151.P12798840009797555415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089151.P12798840009797555415

namespace A089151

/-- `∩[A000040(n+1), A079310(n+1)]` -/
def P12798840009797555415.Spec : Prop :=
  ∀ n, (P12798840009797555415.a n : ℤ) = A089151 (n + 1)

end A089151

/-! ## A089151.P3888732995488025175

`∩[A045319(n+1), A079310(n+1)]`
-/

namespace A089151.P3888732995488025175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089151.P3888732995488025175

namespace A089151

/-- `∩[A045319(n+1), A079310(n+1)]` -/
def P3888732995488025175.Spec : Prop :=
  ∀ n, (P3888732995488025175.a n : ℤ) = A089151 (n + 1)

end A089151

/-! ## A089151.P1688583560132925792

`∩[A079310(n+1), A182140(n+1)]`
-/

namespace A089151.P1688583560132925792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089151.P1688583560132925792

namespace A089151

/-- `∩[A079310(n+1), A182140(n+1)]` -/
def P1688583560132925792.Spec : Prop :=
  ∀ n, (P1688583560132925792.a n : ℤ) = A089151 (n + 1)

end A089151

/-! ## A089151.P1770827265859346258

`∩[A079310(n+1), A182986(n+1)]`
-/

namespace A089151.P1770827265859346258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089151.P1770827265859346258

namespace A089151

/-- `∩[A079310(n+1), A182986(n+1)]` -/
def P1770827265859346258.Spec : Prop :=
  ∀ n, (P1770827265859346258.a n : ℤ) = A089151 (n + 1)

end A089151

/-! ## A089151.P10601348438918428538

`∩[A000040(n+1), A002822(n+1)+1]`
-/

namespace A089151.P10601348438918428538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089151.P10601348438918428538

namespace A089151

/-- `∩[A000040(n+1), A002822(n+1)+1]` -/
def P10601348438918428538.Spec : Prop :=
  ∀ n, (P10601348438918428538.a n : ℤ) = A089151 (n + 1)

end A089151

/-! ## A089151.P14898803195324972677

`record[A006530(A079310(n+2))]`
-/

namespace A089151.P14898803195324972677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079310 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089151.P14898803195324972677

namespace A089151

/-- `record[A006530(A079310(n+2))]` -/
def P14898803195324972677.Spec : Prop :=
  ∀ n, P14898803195324972677.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P11255779070044888841

`filter[A079310(n+1), A010051(#)]`
-/

namespace A089151.P11255779070044888841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A089151.P11255779070044888841

namespace A089151

/-- `filter[A079310(n+1), A010051(#)]` -/
def P11255779070044888841.Spec : Prop :=
  ∀ n, P11255779070044888841.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P12040306945265686440

`record[A006530(A002822(n+1)+1)]`
-/

namespace A089151.P12040306945265686440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A002822 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089151.P12040306945265686440

namespace A089151

/-- `record[A006530(A002822(n+1)+1)]` -/
def P12040306945265686440.Spec : Prop :=
  ∀ n, P12040306945265686440.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P17872085394679705209

`record[A020639(A002822(n+1)+1)]`
-/

namespace A089151.P17872085394679705209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002822 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089151.P17872085394679705209

namespace A089151

/-- `record[A020639(A002822(n+1)+1)]` -/
def P17872085394679705209.Spec : Prop :=
  ∀ n, P17872085394679705209.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P8420172665563460304

`p?[A014682(A177139(n+1)+1)]`
-/

namespace A089151.P8420172665563460304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A177139 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089151.P8420172665563460304

namespace A089151

/-- `p?[A014682(A177139(n+1)+1)]` -/
def P8420172665563460304.Spec : Prop :=
  ∀ n, P8420172665563460304.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P200612209603381910

`∩[A153135(n+1), A153218(n+1)+2]`
-/

namespace A089151.P200612209603381910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089151.P200612209603381910

namespace A089151

/-- `∩[A153135(n+1), A153218(n+1)+2]` -/
def P200612209603381910.Spec : Prop :=
  ∀ n, (P200612209603381910.a n : ℤ) = A089151 (n + 1)

end A089151

/-! ## A089151.P5311029010122561083

`p?[A153196(n+1)+2]`
-/

namespace A089151.P5311029010122561083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089151.P5311029010122561083

namespace A089151

/-- `p?[A153196(n+1)+2]` -/
def P5311029010122561083.Spec : Prop :=
  ∀ n, P5311029010122561083.a n = A089151 (n + 1)

end A089151

/-! ## A089151.P15666249964057666021

`filter[A079310(n+2), A080339(#)]`
-/

namespace A089151.P15666249964057666021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A089151.P15666249964057666021

namespace A089151

/-- `filter[A079310(n+2), A080339(#)]` -/
def P15666249964057666021.Spec : Prop :=
  ∀ n, P15666249964057666021.a n = A089151 (n + 1)

end A089151

/-!
# A089152: Primes p such that 6*p-7 and 6*p-5 are twin primes and p is also a twin prime.

The programs for A089152, the canonical program `A089152.P14229813649324372795` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089152 has offset 1).

The definition of A089152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 701 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089152.P14229813649324372795

`∩[A001097(n+1), A089151(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A089152

/-- `∩[A001097(n+1), A089151(n+1)]` -/
def P14229813649324372795.Spec : Prop :=
  ∀ n, (P14229813649324372795.a n : ℤ) = A089152 (n + 1)

theorem P14229813649324372795.correct : P14229813649324372795.Spec := by
  intro n
  simp only [A089152, Nat.add_sub_cancel]

end A089152

/-! ## A089152.P9563542730831082816

`∩[A001097(n+1), A160273(n)+a(n-1)]` with `a(0)=2`
-/

namespace A089152.P9563542730831082816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A160273 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089152.P9563542730831082816

namespace A089152

/-- `∩[A001097(n+1), A160273(n)+a(n-1)]` -/
def P9563542730831082816.Spec : Prop :=
  ∀ n, (P9563542730831082816.a n : ℤ) = A089152 (n + 1)

end A089152

/-! ## A089152.P10248222776359259542

`∩[A001097(n+1), A079310(n+1)]`
-/

namespace A089152.P10248222776359259542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089152.P10248222776359259542

namespace A089152

/-- `∩[A001097(n+1), A079310(n+1)]` -/
def P10248222776359259542.Spec : Prop :=
  ∀ n, (P10248222776359259542.a n : ℤ) = A089152 (n + 1)

end A089152

/-! ## A089152.P9272480673765358547

`∩[A089151(n+1), A334141(n+1)]`
-/

namespace A089152.P9272480673765358547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089152.P9272480673765358547

namespace A089152

/-- `∩[A089151(n+1), A334141(n+1)]` -/
def P9272480673765358547.Spec : Prop :=
  ∀ n, (P9272480673765358547.a n : ℤ) = A089152 (n + 1)

end A089152

/-! ## A089152.P807523537218605542

`∩[A062505(n+1), A089151(n+1)]`
-/

namespace A089152.P807523537218605542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089152.P807523537218605542

namespace A089152

/-- `∩[A062505(n+1), A089151(n+1)]` -/
def P807523537218605542.Spec : Prop :=
  ∀ n, (P807523537218605542.a n : ℤ) = A089152 (n + 1)

end A089152

/-! ## A089152.P9665715588823954351

`∩[A062506(n+1), A089151(n+1)]`
-/

namespace A089152.P9665715588823954351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062506 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089152.P9665715588823954351

namespace A089152

/-- `∩[A062506(n+1), A089151(n+1)]` -/
def P9665715588823954351.Spec : Prop :=
  ∀ n, (P9665715588823954351.a n : ℤ) = A089152 (n + 1)

end A089152

/-! ## A089152.P14381480778231927387

`p?[A072963(A089151(n+1))]`
-/

namespace A089152.P14381480778231927387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A089151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089152.P14381480778231927387

namespace A089152

/-- `p?[A072963(A089151(n+1))]` -/
def P14381480778231927387.Spec : Prop :=
  ∀ n, P14381480778231927387.a n = A089152 (n + 1)

end A089152

/-! ## A089152.P13464586883361664263

`record[A072963(A089151(n+2))]`
-/

namespace A089152.P13464586883361664263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A089151 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089152.P13464586883361664263

namespace A089152

/-- `record[A072963(A089151(n+2))]` -/
def P13464586883361664263.Spec : Prop :=
  ∀ n, P13464586883361664263.a n = A089152 (n + 1)

end A089152

/-! ## A089152.P10613304448001784643

`filter[A079310(n+1), A164292(#)]`
-/

namespace A089152.P10613304448001784643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A089152.P10613304448001784643

namespace A089152

/-- `filter[A079310(n+1), A164292(#)]` -/
def P10613304448001784643.Spec : Prop :=
  ∀ n, P10613304448001784643.a n = A089152 (n + 1)

end A089152

/-! ## A089152.P12160955750308956024

`filter[A089151(n+1), A164292(#)]`
-/

namespace A089152.P12160955750308956024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089151 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A164292 (f1 j).toNat = 1) n)

end

end A089152.P12160955750308956024

namespace A089152

/-- `filter[A089151(n+1), A164292(#)]` -/
def P12160955750308956024.Spec : Prop :=
  ∀ n, P12160955750308956024.a n = A089152 (n + 1)

end A089152

/-!
# A089154: Expansion of 2*x*(x+2) / ((x-1)*(x^2+6*x-1)).

The programs for A089154, the canonical program `A089154.P4061706567222345957` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089154 has offset 1).

The definition of A089154 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((4+2x)/(1-7x+5x^2+x^3))` (program `A089154.P4061706567222345957`, by `A089154.P4061706567222345957.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A089154.P4061706567222345957

`ogf((4+2x)/(1-7x+5x^2+x^3))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089154

/-- `ogf((4+2x)/(1-7x+5x^2+x^3))` -/
def P4061706567222345957.Spec : Prop :=
  ∀ n, P4061706567222345957.a n = A089154 (n + 1)

theorem P4061706567222345957.correct : P4061706567222345957.Spec := by
  intro n
  simp only [A089154, Nat.add_sub_cancel]

end A089154

/-! ## A089154.P8868020854807241605

`7*a(n-1)-5*a(n-2)-a(n-3)` with `a(0)=4, a(1)=30, a(2)=190`
-/

namespace A089154.P8868020854807241605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 30, 190] fun n a =>
  7 * a (n - 1) - 5 * a (n - 2) - a (n - 3)

end

end A089154.P8868020854807241605

namespace A089154

/-- `7*a(n-1)-5*a(n-2)-a(n-3)` -/
def P8868020854807241605.Spec : Prop :=
  ∀ n, P8868020854807241605.a n = A089154 (n + 1)

end A089154

/-! ## A089154.P3989690454977134914

`∑[record[a(n-2)+6*a(n-1)]]` with `a(0)=4, a(1)=2, a(2)=4`
-/

namespace A089154.P3989690454977134914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 4] fun n f2 =>
  f2 (n - 2) + 6 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089154.P3989690454977134914

namespace A089154

/-- `∑[record[a(n-2)+6*a(n-1)]]` -/
def P3989690454977134914.Spec : Prop :=
  ∀ n, (P3989690454977134914.a n : ℤ) = A089154 (n + 1)

end A089154

/-! ## A089154.P13319917113327272424

`A228471(Δ[n²])-1`
-/

namespace A089154.P13319917113327272424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228471 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A089154.P13319917113327272424

namespace A089154

/-- `A228471(Δ[n²])-1` -/
def P13319917113327272424.Spec : Prop :=
  ∀ n, P13319917113327272424.a n = A089154 (n + 1)

end A089154

/-! ## A089154.P8691276026542812256

`Δ[A005668(n+1)]-1`
-/

namespace A089154.P8691276026542812256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A089154.P8691276026542812256

namespace A089154

/-- `Δ[A005668(n+1)]-1` -/
def P8691276026542812256.Spec : Prop :=
  ∀ n, P8691276026542812256.a n = A089154 (n + 1)

end A089154

/-! ## A089154.P13931767298687079201

`∑[2*A179237(n+1)]`
-/

namespace A089154.P13931767298687079201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A179237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089154.P13931767298687079201

namespace A089154

/-- `∑[2*A179237(n+1)]` -/
def P13931767298687079201.Spec : Prop :=
  ∀ n, P13931767298687079201.a n = A089154 (n + 1)

end A089154

/-! ## A089154.P1830354445329704202

`A295334(3*(n+1))-1`
-/

namespace A089154.P1830354445329704202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295334 (3 * (n + 1)) - 1

end

end A089154.P1830354445329704202

namespace A089154

/-- `A295334(3*(n+1))-1` -/
def P1830354445329704202.Spec : Prop :=
  ∀ n, P1830354445329704202.a n = A089154 (n + 1)

end A089154

/-!
# A089155: a(n) = (2*n)!*(Integral_{x=0..sqrt(2/3)} 1/(1-x^2)^(n+1/2) dx)/((n!*2^n)*sqrt(2)).

The programs for A089155, there is no canonical definition to state claims against.
-/

/-! ## A089155.P17205400369019063400

`A011781(n)+2*n*a(n-1)` with `a(0)=1`
-/

namespace A089155.P17205400369019063400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A011781 n + (2 * n : ℤ) * a (n - 1)

end

end A089155.P17205400369019063400

/-!
# A089156: a(n) = A069722(n+1)^2.

The programs for A089156, the canonical program `A089156.P12875916019781417277` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089156 has offset 0).

The definition of A089156 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069722, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089156.P12875916019781417277

`A069722(n+1)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089156

/-- `A069722(n+1)²` -/
def P12875916019781417277.Spec : Prop :=
  ∀ n, P12875916019781417277.a n = A089156 n

theorem P12875916019781417277.correct : P12875916019781417277.Spec := by
  intro n
  simp only [A089156]

end A089156

/-! ## A089156.P3121792176564648580

`and(-2, A059304(n)²)`
-/

namespace A089156.P3121792176564648580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A059304 n ^ 2)

end

end A089156.P3121792176564648580

namespace A089156

/-- `and(-2, A059304(n)²)` -/
def P3121792176564648580.Spec : Prop :=
  ∀ n, P3121792176564648580.a n = A089156 n

end A089156

/-! ## A089156.P13967827589674740179

`floor(acot(n)-A343842(n))²`
-/

namespace A089156.P13967827589674740179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (A343842 n : ℝ)⌋ ^ 2

end

end A089156.P13967827589674740179

namespace A089156

/-- `floor(acot(n)-A343842(n))²` -/
def P13967827589674740179.Spec : Prop :=
  ∀ n, P13967827589674740179.a n = A089156 n

end A089156

/-! ## A089156.P3286982079488996673

`(and(-2, 2^n)*A000984(n))²`
-/

namespace A089156.P3286982079488996673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.land (-2) (2 ^ n : ℤ) * A000984 n) ^ 2

end

end A089156.P3286982079488996673

namespace A089156

/-- `(and(-2, 2^n)*A000984(n))²` -/
def P3286982079488996673.Spec : Prop :=
  ∀ n, P3286982079488996673.a n = A089156 n

theorem P3286982079488996673.correct : P3286982079488996673.Spec := by
  intro n
  simp only [A089156, Nat.add_sub_cancel, A089156.P3286982079488996673.a, A089156.P12875916019781417277.a, A000984, A000984.P7946844122574426130.a, A069722, A069722.P7509180552531274418.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A089156

/-! ## A089156.P7895716043380727877

`C(2*n, n)²*A155559(n)²`
-/

namespace A089156.P7895716043380727877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℤ) * A155559 n ^ 2

end

end A089156.P7895716043380727877

namespace A089156

/-- `C(2*n, n)²*A155559(n)²` -/
def P7895716043380727877.Spec : Prop :=
  ∀ n, P7895716043380727877.a n = A089156 n

end A089156

/-! ## A089156.P13662490672008566913

`(A000007(n)-A059304(n))²`
-/

namespace A089156.P13662490672008566913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - A059304 n) ^ 2

end

end A089156.P13662490672008566913

namespace A089156

/-- `(A000007(n)-A059304(n))²` -/
def P13662490672008566913.Spec : Prop :=
  ∀ n, P13662490672008566913.a n = A089156 n

end A089156

/-! ## A089156.P11533676594823268253

`(A004273(n)*A098579(n))²`
-/

namespace A089156.P11533676594823268253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n * A098579 n) ^ 2

end

end A089156.P11533676594823268253

namespace A089156

/-- `(A004273(n)*A098579(n))²` -/
def P11533676594823268253.Spec : Prop :=
  ∀ n, P11533676594823268253.a n = A089156 n

end A089156

/-! ## A089156.P12748624175875735538

`(A000984(n)*A155559(n))²`
-/

namespace A089156.P12748624175875735538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000984 n * A155559 n) ^ 2

end

end A089156.P12748624175875735538

namespace A089156

/-- `(A000984(n)*A155559(n))²` -/
def P12748624175875735538.Spec : Prop :=
  ∀ n, P12748624175875735538.a n = A089156 n

end A089156

/-! ## A089156.P16184243838436415025

`(A028329(n)*A131577(n))²`
-/

namespace A089156.P16184243838436415025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A028329 n * A131577 n) ^ 2

end

end A089156.P16184243838436415025

namespace A089156

/-- `(A028329(n)*A131577(n))²` -/
def P16184243838436415025.Spec : Prop :=
  ∀ n, P16184243838436415025.a n = A089156 n

end A089156

/-! ## A089156.P9381348670647422503

`(A100320(n)*A131577(n))²`
-/

namespace A089156.P9381348670647422503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A100320 n * A131577 n) ^ 2

end

end A089156.P9381348670647422503

namespace A089156

/-- `(A100320(n)*A131577(n))²` -/
def P9381348670647422503.Spec : Prop :=
  ∀ n, P9381348670647422503.a n = A089156 n

end A089156

/-!
# A089157: Numbers n such that 30*n+7, 30*n+11, 30*n+13, 30*n+17, 30*n+19 are consecutive primes.

The programs for A089157, there is no canonical definition to state claims against.
-/

/-! ## A089157.P16968047945100642742

`(A022007(n+1)-7)/30`
-/

namespace A089157.P16968047945100642742
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022007 (n + 1) - 7 : ℚ) / 30

end

end A089157.P16968047945100642742

/-! ## A089157.P14310237768833703133

`floor(A022007(n+1)/30)`
-/

namespace A089157.P14310237768833703133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022007 (n + 1) : ℚ) / 30⌋

end

end A089157.P14310237768833703133

/-! ## A089157.P11756938647684516088

`floor(A270999(A016861(n))/30)`
-/

namespace A089157.P11756938647684516088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270999 (A016861 n).toNat : ℚ) / 30⌋

end

end A089157.P11756938647684516088

/-! ## A089157.P4493041107741285638

`floor(A270999(A016885(n))/30)`
-/

namespace A089157.P4493041107741285638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A270999 (A016885 n).toNat : ℚ) / 30⌋

end

end A089157.P4493041107741285638

/-! ## A089157.P7716509279301280020

`round(A270999(A016861(n))/30*A057427(n))`
-/

namespace A089157.P7716509279301280020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A270999 (A016861 n).toNat : ℚ) / 30 * (A057427 n : ℚ))

end

end A089157.P7716509279301280020

/-! ## A089157.P4347571131140977727

`and(1, A014551(n))*round(A022007(n+1)/30)`
-/

namespace A089157.P4347571131140977727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A014551 n) * SequenceMachineLib.roundAway ((A022007 (n + 1) : ℚ) / 30)

end

end A089157.P4347571131140977727

/-!
# A089158: Second prime factor, if it exists, of Mersenne numbers.

The programs for A089158, there is no canonical definition to state claims against.
-/

/-! ## A089158.P17856807977317034730

`gcd(A086250(A054723(n+1)), A145097(n+1))`
-/

namespace A089158.P17856807977317034730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086250 (A054723 (n + 1)).toNat) (A145097 (n + 1))

end

end A089158.P17856807977317034730

/-! ## A089158.P3654409816524999314

`A244453(A187339(n+1)%A244449(n+1))`
-/

namespace A089158.P3654409816524999314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244453 (Int.tmod (A187339 (n + 1)) (A244449 (n + 1))).toNat

end

end A089158.P3654409816524999314

/-!
# A089159: If Mersenne numbers have 3 or more factors, then list the third factor.

The programs for A089159, there is no canonical definition to state claims against.
-/

/-! ## A089159.P870323389016872133

`A136031(A105070(3*n+4)+A047993(n+3))`
-/

namespace A089159.P870323389016872133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136031 (A105070 (3 * n + 4) + A047993 (n + 3)).toNat

end

end A089159.P870323389016872133

/-!
# A089160: Numbers k such that 30*k + 11 and 30*k + 13 are twin primes.

The programs for A089160, the canonical program `A089160.P16441962555828126250` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089160 has offset 1).

The definition of A089160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089160.P16441962555828126250

`floor(A282321(n+1)/30)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A089160

/-- `floor(A282321(n+1)/30)` -/
def P16441962555828126250.Spec : Prop :=
  ∀ n, P16441962555828126250.a n = A089160 (n + 1)

theorem P16441962555828126250.correct : P16441962555828126250.Spec := by
  intro n
  simp only [A089160, Nat.add_sub_cancel]

end A089160

/-! ## A089160.P9330683341244514844

`floor(A282322(n+1)/30)`
-/

namespace A089160.P9330683341244514844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282322 (n + 1) : ℚ) / 30⌋

end

end A089160.P9330683341244514844

namespace A089160

/-- `floor(A282322(n+1)/30)` -/
def P9330683341244514844.Spec : Prop :=
  ∀ n, P9330683341244514844.a n = A089160 (n + 1)

end A089160

/-! ## A089160.P15735276126411128783

`∩[A158614(n+1), A158746(n+1)]`
-/

namespace A089160.P15735276126411128783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089160.P15735276126411128783

namespace A089160

/-- `∩[A158614(n+1), A158746(n+1)]` -/
def P15735276126411128783.Spec : Prop :=
  ∀ n, (P15735276126411128783.a n : ℤ) = A089160 (n + 1)

end A089160

/-! ## A089160.P3263389325751897654

`eq[0, A283265(A082369(n+1))]`
-/

namespace A089160.P3263389325751897654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A082369 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089160.P3263389325751897654

namespace A089160

/-- `eq[0, A283265(A082369(n+1))]` -/
def P3263389325751897654.Spec : Prop :=
  ∀ n, (P3263389325751897654.a n : ℤ) = A089160 (n + 1)

end A089160

/-! ## A089160.P14251551499286191571

`eq[1, A182481(5*n+2)]`
-/

namespace A089160.P14251551499286191571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089160.P14251551499286191571

namespace A089160

/-- `eq[1, A182481(5*n+2)]` -/
def P14251551499286191571.Spec : Prop :=
  ∀ n, (P14251551499286191571.a n : ℤ) = A089160 (n + 1)

end A089160

/-! ## A089160.P12729071966567834138

`eq[2, A145193(5*n+2)]`
-/

namespace A089160.P12729071966567834138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (5 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089160.P12729071966567834138

namespace A089160

/-- `eq[2, A145193(5*n+2)]` -/
def P12729071966567834138.Spec : Prop :=
  ∀ n, (P12729071966567834138.a n : ℤ) = A089160 (n + 1)

end A089160

/-! ## A089160.P14800549313453406147

`eq[8*n+4, A250476(10*n+4)]`
-/

namespace A089160.P14800549313453406147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250476 (10 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089160.P14800549313453406147

namespace A089160

/-- `eq[8*n+4, A250476(10*n+4)]` -/
def P14800549313453406147.Spec : Prop :=
  ∀ n, (P14800549313453406147.a n : ℤ) = A089160 (n + 1)

end A089160

/-! ## A089160.P9049856352348447355

`A008651(A282321(n+1))`
-/

namespace A089160.P9049856352348447355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A282321 (n + 1)).toNat

end

end A089160.P9049856352348447355

namespace A089160

/-- `A008651(A282321(n+1))` -/
def P9049856352348447355.Spec : Prop :=
  ∀ n, P9049856352348447355.a n = A089160 (n + 1)

end A089160

/-! ## A089160.P3499687845314021988

`A008651(A282322(n+1))`
-/

namespace A089160.P3499687845314021988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A282322 (n + 1)).toNat

end

end A089160.P3499687845314021988

namespace A089160

/-- `A008651(A282322(n+1))` -/
def P3499687845314021988.Spec : Prop :=
  ∀ n, P3499687845314021988.a n = A089160 (n + 1)

end A089160

/-! ## A089160.P13114216851490290648

`A008651(A181604(n+2))`
-/

namespace A089160.P13114216851490290648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A181604 (n + 2)).toNat

end

end A089160.P13114216851490290648

namespace A089160

/-- `A008651(A181604(n+2))` -/
def P13114216851490290648.Spec : Prop :=
  ∀ n, P13114216851490290648.a n = A089160 (n + 1)

end A089160

/-!
# A089161: Numbers k such that 30*k + 17 and 30*k + 19 are twin primes.

The programs for A089161, the canonical program `A089161.P4947751098107378367` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089161 has offset 1).

The definition of A089161 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089161.P4947751098107378367

`A331840(n+1)-1`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A089161

/-- `A331840(n+1)-1` -/
def P4947751098107378367.Spec : Prop :=
  ∀ n, P4947751098107378367.a n = A089161 (n + 1)

theorem P4947751098107378367.correct : P4947751098107378367.Spec := by
  intro n
  simp only [A089161, Nat.add_sub_cancel]

end A089161

/-! ## A089161.P17889237280305342692

`floor(A282323(n+1)/30)`
-/

namespace A089161.P17889237280305342692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282323 (n + 1) : ℚ) / 30⌋

end

end A089161.P17889237280305342692

namespace A089161

/-- `floor(A282323(n+1)/30)` -/
def P17889237280305342692.Spec : Prop :=
  ∀ n, P17889237280305342692.a n = A089161 (n + 1)

end A089161

/-! ## A089161.P3180523296718627413

`floor(A181605(n+2)/30)`
-/

namespace A089161.P3180523296718627413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A181605 (n + 2) : ℚ) / 30⌋

end

end A089161.P3180523296718627413

namespace A089161

/-- `floor(A181605(n+2)/30)` -/
def P3180523296718627413.Spec : Prop :=
  ∀ n, P3180523296718627413.a n = A089161 (n + 1)

end A089161

/-! ## A089161.P18260264180038070826

`∩[A158648(n+1), A158806(n+1)]`
-/

namespace A089161.P18260264180038070826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089161.P18260264180038070826

namespace A089161

/-- `∩[A158648(n+1), A158806(n+1)]` -/
def P18260264180038070826.Spec : Prop :=
  ∀ n, (P18260264180038070826.a n : ℤ) = A089161 (n + 1)

end A089161

/-! ## A089161.P3455456610290563631

`floor(A282324(n+1)/30)`
-/

namespace A089161.P3455456610290563631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282324 (n + 1) : ℚ) / 30⌋

end

end A089161.P3455456610290563631

namespace A089161

/-- `floor(A282324(n+1)/30)` -/
def P3455456610290563631.Spec : Prop :=
  ∀ n, P3455456610290563631.a n = A089161 (n + 1)

end A089161

/-! ## A089161.P18066747710690352834

`A023443(A331840(n+1))`
-/

namespace A089161.P18066747710690352834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A331840 (n + 1)).toNat

end

end A089161.P18066747710690352834

namespace A089161

/-- `A023443(A331840(n+1))` -/
def P18066747710690352834.Spec : Prop :=
  ∀ n, P18066747710690352834.a n = A089161 (n + 1)

end A089161

/-! ## A089161.P3924632164741003242

`eq[2, A166597(A128468(n))]`
-/

namespace A089161.P3924632164741003242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (A128468 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089161.P3924632164741003242

namespace A089161

/-- `eq[2, A166597(A128468(n))]` -/
def P3924632164741003242.Spec : Prop :=
  ∀ n, (P3924632164741003242.a n : ℤ) = A089161 (n + 1)

end A089161

/-! ## A089161.P6821144944847882380

`lt[A283265(A156376(n)), 1]`
-/

namespace A089161.P6821144944847882380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A156376 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A089161.P6821144944847882380

namespace A089161

/-- `lt[A283265(A156376(n)), 1]` -/
def P6821144944847882380.Spec : Prop :=
  ∀ n, (P6821144944847882380.a n : ℤ) = A089161 (n + 1)

end A089161

/-! ## A089161.P2802685129559832039

`eq[2, A072680(A017365(3*n+1))]`
-/

namespace A089161.P2802685129559832039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072680 (A017365 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089161.P2802685129559832039

namespace A089161

/-- `eq[2, A072680(A017365(3*n+1))]` -/
def P2802685129559832039.Spec : Prop :=
  ∀ n, (P2802685129559832039.a n : ℤ) = A089161 (n + 1)

end A089161

/-! ## A089161.P4491565162498109456

`eq[2, A145193(A016885(n))]`
-/

namespace A089161.P4491565162498109456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145193 (A016885 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089161.P4491565162498109456

namespace A089161

/-- `eq[2, A145193(A016885(n))]` -/
def P4491565162498109456.Spec : Prop :=
  ∀ n, (P4491565162498109456.a n : ℤ) = A089161 (n + 1)

end A089161

/-!
# A089162: Triangle read by rows formed by the prime factors of Mersenne number 2^prime(n) - 1, n >= 1.

The programs for A089162, there is no canonical definition to state claims against.
-/

/-! ## A089162.P9631789988076648324

`p?[A141539(n)-A008459(n)]`
-/

namespace A089162.P9631789988076648324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n - A008459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089162.P9631789988076648324

/-! ## A089162.P13369371618127717551

`p?[A141539(n)-A028338(n)]`
-/

namespace A089162.P13369371618127717551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n - A028338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089162.P13369371618127717551

/-! ## A089162.P2288212437955271760

`p?[A141539(n)-A039755(n)]`
-/

namespace A089162.P2288212437955271760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141539 n - A039755 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089162.P2288212437955271760

/-! ## A089162.P9910423239481994285

`p?[A304230(n+1)-A073133(n+1)²]`
-/

namespace A089162.P9910423239481994285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304230 (n + 1) - A073133 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089162.P9910423239481994285

/-!
# A089164: Number of steps in all Schroeder paths (i.e., consisting of steps U=(1,1), D=(1,-1),H=(2,0) and never going below the x-axis) from (0,0) to (2n,0).

The programs for A089164, the canonical program `A089164.P3023028978158092198` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089164 has offset 1).

The definition of A089164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089164.P15417695756166852557

`A002002(n+2)-A006318(n+1)`
-/

namespace A089164.P15417695756166852557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - A006318 (n + 1)

end

end A089164.P15417695756166852557

namespace A089164

/-- `A002002(n+2)-A006318(n+1)` -/
def P15417695756166852557.Spec : Prop :=
  ∀ n, P15417695756166852557.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P15884006493702384707

`A085403(n+2)+A002002(n+2)`
-/

namespace A089164.P15884006493702384707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085403 (n + 2) + A002002 (n + 2)

end

end A089164.P15884006493702384707

namespace A089164

/-- `A085403(n+2)+A002002(n+2)` -/
def P15884006493702384707.Spec : Prop :=
  ∀ n, P15884006493702384707.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P9757103706597269838

`A002002(n+2)-A025240(n+2)`
-/

namespace A089164.P9757103706597269838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - A025240 (n + 2)

end

end A089164.P9757103706597269838

namespace A089164

/-- `A002002(n+2)-A025240(n+2)` -/
def P9757103706597269838.Spec : Prop :=
  ∀ n, P9757103706597269838.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P5762109153652975987

`A002002(n+2)-A155069(n+2)`
-/

namespace A089164.P5762109153652975987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - A155069 (n + 2)

end

end A089164.P5762109153652975987

namespace A089164

/-- `A002002(n+2)-A155069(n+2)` -/
def P5762109153652975987.Spec : Prop :=
  ∀ n, P5762109153652975987.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P9226663613437948612

`A002002(n+2)-abs(A103137(n+2))`
-/

namespace A089164.P9226663613437948612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 2) - |A103137 (n + 2)|

end

end A089164.P9226663613437948612

namespace A089164

/-- `A002002(n+2)-abs(A103137(n+2))` -/
def P9226663613437948612.Spec : Prop :=
  ∀ n, P9226663613437948612.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P11026230864662870979

`Δ[A047665(n+1)]-A006318(n+1)`
-/

namespace A089164.P11026230864662870979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006318 (n + 1)

end

end A089164.P11026230864662870979

namespace A089164

/-- `Δ[A047665(n+1)]-A006318(n+1)` -/
def P11026230864662870979.Spec : Prop :=
  ∀ n, P11026230864662870979.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P2244981441801834686

`∑[A104550(n+2)-A006319(n+1)]`
-/

namespace A089164.P2244981441801834686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 2) - A006319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089164.P2244981441801834686

namespace A089164

/-- `∑[A104550(n+2)-A006319(n+1)]` -/
def P2244981441801834686.Spec : Prop :=
  ∀ n, P2244981441801834686.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P13626496639411252221

`A085403(n+2)+Δ[A047665(n+1)]`
-/

namespace A089164.P13626496639411252221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085403 (n + 2) + (f1 (n + 1) - f1 n)

end

end A089164.P13626496639411252221

namespace A089164

/-- `A085403(n+2)+Δ[A047665(n+1)]` -/
def P13626496639411252221.Spec : Prop :=
  ∀ n, P13626496639411252221.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P1513174365424907801

`∑[A104550(n+2)]-A035011(n+1)`
-/

namespace A089164.P1513174365424907801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035011 (n + 1)

end

end A089164.P1513174365424907801

namespace A089164

/-- `∑[A104550(n+2)]-A035011(n+1)` -/
def P1513174365424907801.Spec : Prop :=
  ∀ n, P1513174365424907801.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P3023028978158092198

`A002002(n+1)+2*A026002(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A089164

/-- `A002002(n+1)+2*A026002(n+1)` -/
def P3023028978158092198.Spec : Prop :=
  ∀ n, P3023028978158092198.a n = A089164 (n + 1)

theorem P3023028978158092198.correct : P3023028978158092198.Spec := by
  intro n
  simp only [A089164, Nat.add_sub_cancel]

end A089164

/-! ## A089164.P14990687007467469184

`A026003(2*n+3)-A006318(n+1)`
-/

namespace A089164.P14990687007467469184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n + 3) - A006318 (n + 1)

end

end A089164.P14990687007467469184

namespace A089164

/-- `A026003(2*n+3)-A006318(n+1)` -/
def P14990687007467469184.Spec : Prop :=
  ∀ n, P14990687007467469184.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P17165183786756868271

`A001850(n+1)+n*A006318(n+1)`
-/

namespace A089164.P17165183786756868271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) + (n : ℤ) * A006318 (n + 1)

end

end A089164.P17165183786756868271

namespace A089164

/-- `A001850(n+1)+n*A006318(n+1)` -/
def P17165183786756868271.Spec : Prop :=
  ∀ n, P17165183786756868271.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P2814607942059721299

`A001850(n+1)+n*A025240(n+2)`
-/

namespace A089164.P2814607942059721299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001850 (n + 1) + (n : ℤ) * A025240 (n + 2)

end

end A089164.P2814607942059721299

namespace A089164

/-- `A001850(n+1)+n*A025240(n+2)` -/
def P2814607942059721299.Spec : Prop :=
  ∀ n, P2814607942059721299.a n = A089164 (n + 1)

end A089164

/-! ## A089164.P2681879198270598420

`A026002(n+2)-(A190666(n)+A001850(n+1))`
-/

namespace A089164.P2681879198270598420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026002 (n + 2) - (A190666 n + A001850 (n + 1))

end

end A089164.P2681879198270598420

namespace A089164

/-- `A026002(n+2)-(A190666(n)+A001850(n+1))` -/
def P2681879198270598420.Spec : Prop :=
  ∀ n, P2681879198270598420.a n = A089164 (n + 1)

end A089164

/-!
# A089165: Partial sums of the central Delannoy numbers (A001850).

The programs for A089165, the canonical program `A089165.P2094944157405990930` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089165 has offset 0).

The definition of A089165 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089165.P2094944157405990930

`∑[A001850(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A089165

/-- `∑[A001850(n)]` -/
def P2094944157405990930.Spec : Prop :=
  ∀ n, P2094944157405990930.a n = A089165 n

theorem P2094944157405990930.correct : P2094944157405990930.Spec := by
  intro n
  simp only [A089165]

end A089165

/-! ## A089165.P3321571042928637992

`Δ[A226995(n)]`
-/

namespace A089165.P3321571042928637992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226995 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089165.P3321571042928637992

namespace A089165

/-- `Δ[A226995(n)]` -/
def P3321571042928637992.Spec : Prop :=
  ∀ n, P3321571042928637992.a n = A089165 n

end A089165

/-! ## A089165.P300776012533620356

`∑[∑[A110170(n)]]`
-/

namespace A089165.P300776012533620356
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P300776012533620356

namespace A089165

/-- `∑[∑[A110170(n)]]` -/
def P300776012533620356.Spec : Prop :=
  ∀ n, P300776012533620356.a n = A089165 n

end A089165

/-! ## A089165.P17466499770592070011

`∑[A118384(∑[n])]`
-/

namespace A089165.P17466499770592070011
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118384 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P17466499770592070011

namespace A089165

/-- `∑[A118384(∑[n])]` -/
def P17466499770592070011.Spec : Prop :=
  ∀ n, P17466499770592070011.a n = A089165 n

end A089165

/-! ## A089165.P5796689743504968628

`∑[A026003(2*n)]`
-/

namespace A089165.P5796689743504968628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P5796689743504968628

namespace A089165

/-- `∑[A026003(2*n)]` -/
def P5796689743504968628.Spec : Prop :=
  ∀ n, P5796689743504968628.a n = A089165 n

end A089165

/-! ## A089165.P3000181987471036168

`∑[∑[A247630(2*n)]]`
-/

namespace A089165.P3000181987471036168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247630 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P3000181987471036168

namespace A089165

/-- `∑[∑[A247630(2*n)]]` -/
def P3000181987471036168.Spec : Prop :=
  ∀ n, P3000181987471036168.a n = A089165 n

end A089165

/-! ## A089165.P17037937343125577338

`∑[2*A047665(n)+1]`
-/

namespace A089165.P17037937343125577338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047665 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P17037937343125577338

namespace A089165

/-- `∑[2*A047665(n)+1]` -/
def P17037937343125577338.Spec : Prop :=
  ∀ n, P17037937343125577338.a n = A089165 n

end A089165

/-! ## A089165.P13897884879505251239

`∑[2*A226994(n)-1]`
-/

namespace A089165.P13897884879505251239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A226994 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P13897884879505251239

namespace A089165

/-- `∑[2*A226994(n)-1]` -/
def P13897884879505251239.Spec : Prop :=
  ∀ n, P13897884879505251239.a n = A089165 n

end A089165

/-! ## A089165.P11541671374083442129

`∑[∑[2*A002002(n)]+1]`
-/

namespace A089165.P11541671374083442129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P11541671374083442129

namespace A089165

/-- `∑[∑[2*A002002(n)]+1]` -/
def P11541671374083442129.Spec : Prop :=
  ∀ n, P11541671374083442129.a n = A089165 n

end A089165

/-! ## A089165.P1523319602989225130

`A241023(n)+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A089165.P1523319602989225130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A241023 n + a (n - 2)

end

end A089165.P1523319602989225130

namespace A089165

/-- `A241023(n)+a(n-2)` -/
def P1523319602989225130.Spec : Prop :=
  ∀ n, P1523319602989225130.a n = A089165 n

end A089165

/-! ## A089165.P2794481692116260769

`A026003(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A089165.P2794481692116260769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A026003 (n + n) + a (n - 1)

end

end A089165.P2794481692116260769

namespace A089165

/-- `A026003(n+n)+a(n-1)` -/
def P2794481692116260769.Spec : Prop :=
  ∀ n, P2794481692116260769.a n = A089165 n

end A089165

/-! ## A089165.P15036092062419373196

`∑[A226994(n)+A047665(n)]`
-/

namespace A089165.P15036092062419373196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + A047665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P15036092062419373196

namespace A089165

/-- `∑[A226994(n)+A047665(n)]` -/
def P15036092062419373196.Spec : Prop :=
  ∀ n, P15036092062419373196.a n = A089165 n

end A089165

/-! ## A089165.P6900629359482116332

`A226995(n+1)-A226995(n)`
-/

namespace A089165.P6900629359482116332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226995 (n + 1) - A226995 n

end

end A089165.P6900629359482116332

namespace A089165

/-- `A226995(n+1)-A226995(n)` -/
def P6900629359482116332.Spec : Prop :=
  ∀ n, P6900629359482116332.a n = A089165 n

end A089165

/-! ## A089165.P3551338202798293484

`∑[A226994(n)+∑[A002002(n)]]`
-/

namespace A089165.P3551338202798293484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P3551338202798293484

namespace A089165

/-- `∑[A226994(n)+∑[A002002(n)]]` -/
def P3551338202798293484.Spec : Prop :=
  ∀ n, P3551338202798293484.a n = A089165 n

end A089165

/-! ## A089165.P12587794537600584106

`∑[A050146(n+1)-A002002(n)]`
-/

namespace A089165.P12587794537600584106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P12587794537600584106

namespace A089165

/-- `∑[A050146(n+1)-A002002(n)]` -/
def P12587794537600584106.Spec : Prop :=
  ∀ n, P12587794537600584106.a n = A089165 n

end A089165

/-! ## A089165.P11364672630321374265

`A002002(n)+∑[A050146(n)+A002002(n)]`
-/

namespace A089165.P11364672630321374265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 n + A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089165.P11364672630321374265

namespace A089165

/-- `A002002(n)+∑[A050146(n)+A002002(n)]` -/
def P11364672630321374265.Spec : Prop :=
  ∀ n, P11364672630321374265.a n = A089165 n

end A089165

/-! ## A089165.P18325585364438977696

`Δ[A047665(n)-A226996(n)]`
-/

namespace A089165.P18325585364438977696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n - A226996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089165.P18325585364438977696

namespace A089165

/-- `Δ[A047665(n)-A226996(n)]` -/
def P18325585364438977696.Spec : Prop :=
  ∀ n, P18325585364438977696.a n = A089165 n

end A089165

/-! ## A089165.P16877126088701152311

`Δ[A226994(n)-A226996(n)]`
-/

namespace A089165.P16877126088701152311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226994 n - A226996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089165.P16877126088701152311

namespace A089165

/-- `Δ[A226994(n)-A226996(n)]` -/
def P16877126088701152311.Spec : Prop :=
  ∀ n, P16877126088701152311.a n = A089165 n

end A089165

/-! ## A089165.P362252819365683409

`Δ[∑[A002002(n)]-A226996(n)]`
-/

namespace A089165.P362252819365683409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A226996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089165.P362252819365683409

namespace A089165

/-- `Δ[∑[A002002(n)]-A226996(n)]` -/
def P362252819365683409.Spec : Prop :=
  ∀ n, P362252819365683409.a n = A089165 n

end A089165

/-! ## A089165.P16122350308610248456

`A002002(n+1)-Δ[A226996(n)]`
-/

namespace A089165.P16122350308610248456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226996 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1) - (f1 (n + 1) - f1 n)

end

end A089165.P16122350308610248456

namespace A089165

/-- `A002002(n+1)-Δ[A226996(n)]` -/
def P16122350308610248456.Spec : Prop :=
  ∀ n, P16122350308610248456.a n = A089165 n

end A089165

/-!
# A089166: Number of primes between squares of successive odd numbers.

The programs for A089166, the canonical program `A089166.P15816680771421305787` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089166 has offset 1).

The definition of A089166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089166.P2544270420139530643

`A014085(2*n+1)+A014085(A004277(n+1))`
-/

namespace A089166.P2544270420139530643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (2 * n + 1) + A014085 (A004277 (n + 1)).toNat

end

end A089166.P2544270420139530643

namespace A089166

/-- `A014085(2*n+1)+A014085(A004277(n+1))` -/
def P2544270420139530643.Spec : Prop :=
  ∀ n, P2544270420139530643.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P16539111695331046620

`A014085(2*n+1)+A014085(A005843(n+1))`
-/

namespace A089166.P16539111695331046620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (2 * n + 1) + A014085 (A005843 (n + 1)).toNat

end

end A089166.P16539111695331046620

namespace A089166

/-- `A014085(2*n+1)+A014085(A005843(n+1))` -/
def P16539111695331046620.Spec : Prop :=
  ∀ n, P16539111695331046620.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P11921004900601695097

`A014085(2*n+1)+A014085(A000027(2*(n+1)))`
-/

namespace A089166.P11921004900601695097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (2 * n + 1) + A014085 (A000027 (2 * (n + 1))).toNat

end

end A089166.P11921004900601695097

namespace A089166

/-- `A014085(2*n+1)+A014085(A000027(2*(n+1)))` -/
def P11921004900601695097.Spec : Prop :=
  ∀ n, P11921004900601695097.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P9913785786866520296

`Δ[A038107(Δ[n²])]`
-/

namespace A089166.P9913785786866520296
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089166.P9913785786866520296

namespace A089166

/-- `Δ[A038107(Δ[n²])]` -/
def P9913785786866520296.Spec : Prop :=
  ∀ n, P9913785786866520296.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P1197072486734759573

`abs(Δ[A038107(2*n+1)])`
-/

namespace A089166.P1197072486734759573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A089166.P1197072486734759573

namespace A089166

/-- `abs(Δ[A038107(2*n+1)])` -/
def P1197072486734759573.Spec : Prop :=
  ∀ n, P1197072486734759573.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P15816680771421305787

`Δ[A161187(2*n+1)]-2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089166

/-- `Δ[A161187(2*n+1)]-2` -/
def P15816680771421305787.Spec : Prop :=
  ∀ n, P15816680771421305787.a n = A089166 (n + 1)

theorem P15816680771421305787.correct : P15816680771421305787.Spec := by
  intro n
  simp only [A089166, Nat.add_sub_cancel]

end A089166

/-! ## A089166.P16366176923734925924

`A038107(A005408(n+1))-A038107(2*n+1)`
-/

namespace A089166.P16366176923734925924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A005408 (n + 1)).toNat - A038107 (2 * n + 1)

end

end A089166.P16366176923734925924

namespace A089166

/-- `A038107(A005408(n+1))-A038107(2*n+1)` -/
def P16366176923734925924.Spec : Prop :=
  ∀ n, P16366176923734925924.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P15555359112352862889

`Δ[A000720(Δ[n²]²)]`
-/

namespace A089166.P15555359112352862889
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089166.P15555359112352862889

namespace A089166

/-- `Δ[A000720(Δ[n²]²)]` -/
def P15555359112352862889.Spec : Prop :=
  ∀ n, P15555359112352862889.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P2377949047135503230

`Δ[record[A000720(n^(2*and(1, n)))]]`
-/

namespace A089166.P2377949047135503230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n ^ (2 * Nat.land 1 n))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089166.P2377949047135503230

namespace A089166

/-- `Δ[record[A000720(n^(2*and(1, n)))]]` -/
def P2377949047135503230.Spec : Prop :=
  ∀ n, P2377949047135503230.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P13186713216250667277

`Δ[A099801(A046092(n))]`
-/

namespace A089166.P13186713216250667277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089166.P13186713216250667277

namespace A089166

/-- `Δ[A099801(A046092(n))]` -/
def P13186713216250667277.Spec : Prop :=
  ∀ n, P13186713216250667277.a n = A089166 (n + 1)

end A089166

/-! ## A089166.P4226693468625497705

`Δ[A099801(A132209(n))]`
-/

namespace A089166.P4226693468625497705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A132209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A089166.P4226693468625497705

namespace A089166

/-- `Δ[A099801(A132209(n))]` -/
def P4226693468625497705.Spec : Prop :=
  ∀ n, P4226693468625497705.a n = A089166 (n + 1)

end A089166

/-!
# A089170: Numerator of 2*BernoulliB[2*(n+1)]*(4^(n+1)-1)/(2*(n+1))] divided by numerator of the series coefficients of 1/(1 + Cosh[x]).

The programs for A089170, there is no canonical definition to state claims against.
-/

/-! ## A089170.P1601428541964702793

`A275994(n+1)/A089171(n)`
-/

namespace A089170.P1601428541964702793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275994 (n + 1) : ℚ) / (A089171 n : ℚ)

end

end A089170.P1601428541964702793

/-! ## A089170.P3558501020344260960

`gcd(A001147(n), A002425(n+1))`
-/

namespace A089170.P3558501020344260960
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001147 n) (A002425 (n + 1))

end

end A089170.P3558501020344260960

/-! ## A089170.P890858598877197073

`abs(A002425(n+1)/A089171(n))`
-/

namespace A089170.P890858598877197073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002425 (n + 1) : ℚ) / (A089171 n : ℚ)|

end

end A089170.P890858598877197073

/-! ## A089170.P17181121500821914797

`abs(A275994(n+1)/A279370(n))`
-/

namespace A089170.P17181121500821914797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A275994 (n + 1) : ℚ) / (A279370 n : ℚ)|

end

end A089170.P17181121500821914797

/-! ## A089170.P16874564328317041178

`gcd(∏[A267872(n)], A275994(n+1))`
-/

namespace A089170.P16874564328317041178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ j ∈ Finset.range (n + 1), f1 j) (A275994 (n + 1))

end

end A089170.P16874564328317041178

/-!
# A089171: Numerators of series coefficients of 1/(1 + cosh(sqrt(x))).

The programs for A089171, there is no canonical definition to state claims against.
-/

/-! ## A089171.P12715682650126055137

`A276592(n+1)/(-1)^n`
-/

namespace A089171.P12715682650126055137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276592 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A089171.P12715682650126055137

/-! ## A089171.P15056253853197567699

`abs(A279370(n))*A033999(n)`
-/

namespace A089171.P15056253853197567699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279370 n| * A033999 n

end

end A089171.P15056253853197567699

/-! ## A089171.P16102571797453303038

`A033999(n)*A276592(n+1)`
-/

namespace A089171.P16102571797453303038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A276592 (n + 1)

end

end A089171.P16102571797453303038

/-! ## A089171.P2732751155067852063

`A275994(n+1)/A089170(n)`
-/

namespace A089171.P2732751155067852063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275994 (n + 1) : ℚ) / (A089170 n : ℚ)

end

end A089171.P2732751155067852063

/-! ## A089171.P450928306553813452

`(-1)^n*A050970(2*(n+1))`
-/

namespace A089171.P450928306553813452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A050970 (2 * (n + 1))

end

end A089171.P450928306553813452

/-!
# A089172: Values of n where numerators of series coefficients of 1/(1 + cosh(sqrt(x))) differ from A002425.

The programs for A089172, there is no canonical definition to state claims against.
-/

/-! ## A089172.P6544587310900743649

`lt[1, A089170(n)]`
-/

namespace A089172.P6544587310900743649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089170 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A089172.P6544587310900743649

/-! ## A089172.P14697632341437930228

`comp[n*A089170(A089196(2*n+1))]`
-/

namespace A089172.P14697632341437930228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A089170 (A089196 (2 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A089172.P14697632341437930228

/-! ## A089172.P17866328497701338650

`comp[n*(A217907(n+1)%A089170(n)+1)]`
-/

namespace A089172.P17866328497701338650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.tmod (A217907 (n + 1)) (A089170 n) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A089172.P17866328497701338650

/-! ## A089172.P5998301662742640412

`comp[n*(A000040(n+2)%A089170(n)+1)]`
-/

namespace A089172.P5998301662742640412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.tmod (A000040 (n + 2)) (A089170 n) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A089172.P5998301662742640412

/-! ## A089172.P12042046706070353600

`comp[n*(A286690(n+4)%A089170(n)+1)]`
-/

namespace A089172.P12042046706070353600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (Int.tmod (A286690 (n + 4)) (A089170 n) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A089172.P12042046706070353600

/-! ## A089172.P13299041085771846637

`eq[2, A006519(2*a(n-1)+2)%A089170(n)]` with `a(0)=3, a(1)=3`
-/

namespace A089172.P13299041085771846637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  Int.tmod (A006519 (2 * f2 (n - 1) + 2).toNat) (A089170 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089172.P13299041085771846637

/-! ## A089172.P17618787138273141888

`eq[A348241(n)%A089170(n), A348241(n)]`
-/

namespace A089172.P17618787138273141888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348241 n) (A089170 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089172.P17618787138273141888

/-! ## A089172.P1060634922541300698

`eq[1, A006519(A073703(n+1)+2)%A089170(n)]`
-/

namespace A089172.P1060634922541300698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (A073703 (n + 1) + 2).toNat) (A089170 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089172.P1060634922541300698

/-! ## A089172.P867065235787759829

`eq[1, A006519(A162787(n+1)+2)%A089170(n)]`
-/

namespace A089172.P867065235787759829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (A162787 (n + 1) + 2).toNat) (A089170 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089172.P867065235787759829

/-! ## A089172.P10236103495002973978

`eq[1, A006519(A121912(3*n+4))%A089170(n)]`
-/

namespace A089172.P10236103495002973978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006519 (A121912 (3 * n + 4)).toNat) (A089170 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A089172.P10236103495002973978

/-!
# A089174: A nonsense sequence (not well-defined).

The programs for A089174, there is no canonical definition to state claims against.
-/

/-! ## A089174.P10003479224595250020

`p?[A135663(∑[A008439(n)])]`
-/

namespace A089174.P10003479224595250020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008439 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135663 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089174.P10003479224595250020

/-! ## A089174.P8051716590301256822

`p?[∑[A010144(A334548(n))]]`
-/

namespace A089174.P8051716590301256822
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010144 (A334548 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089174.P8051716590301256822

/-! ## A089174.P15231239457671072860

`p?[∑[A254765(A131402(n))]]`
-/

namespace A089174.P15231239457671072860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254765 (A131402 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089174.P15231239457671072860

/-! ## A089174.P5839509685063467138

`p?[∑[A350090(A196729(n+1))]]`
-/

namespace A089174.P5839509685063467138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350090 (A196729 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089174.P5839509685063467138

/-! ## A089174.P13492174305356080269

`A000040(lt[A346517(n), A159966(n)])`
-/

namespace A089174.P13492174305356080269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346517 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A089174.P13492174305356080269

/-!
# A089175: a(n) = floor(sqrt(prime(n)*primepi(n))).

The programs for A089175, there is no canonical definition to state claims against.
-/

/-! ## A089175.P13288488282412563660

`floor(sqrt(A128930(n+1)))`
-/

namespace A089175.P13288488282412563660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A128930 (n + 1))

end

end A089175.P13288488282412563660

/-! ## A089175.P593523787704133740

`floor(sqrt(p?[n%3+n]*A000720(n+1)))`
-/

namespace A089175.P593523787704133740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * A000720 (n + 1))

end

end A089175.P593523787704133740

/-! ## A089175.P11254972073594696144

`A000196(A128930(n+1))`
-/

namespace A089175.P11254972073594696144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A128930 (n + 1)).toNat

end

end A089175.P11254972073594696144

/-! ## A089175.P16977714944961308488

`floor(sqrt(A000040(n+1)*A000720(n+1)))`
-/

namespace A089175.P16977714944961308488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1) * A000720 (n + 1))

end

end A089175.P16977714944961308488

/-! ## A089175.P11805330822564421350

`floor(sqrt(A000040(n+1)*A230980(n+1)))`
-/

namespace A089175.P11805330822564421350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1) * A230980 (n + 1))

end

end A089175.P11805330822564421350

/-! ## A089175.P12280517666845433133

`floor(sqrt(A000040(n+1)*∑[A010051(n+1)]))`
-/

namespace A089175.P12280517666845433133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A089175.P12280517666845433133

/-! ## A089175.P17424756113014867937

`floor(sqrt((A036234(n+1)-1)*A000040(n+1)))`
-/

namespace A089175.P17424756113014867937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A036234 (n + 1) - 1) * A000040 (n + 1))

end

end A089175.P17424756113014867937

/-! ## A089175.P16292346553095194069

`floor(sqrt((n-A065855(n+1))*A000040(n+1)))`
-/

namespace A089175.P16292346553095194069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (((n : ℤ) - A065855 (n + 1)) * A000040 (n + 1))

end

end A089175.P16292346553095194069

/-! ## A089175.P9218841772172426534

`A000196(A000040(n+1)*A000720(n+1))`
-/

namespace A089175.P9218841772172426534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A000040 (n + 1) * A000720 (n + 1)).toNat

end

end A089175.P9218841772172426534

/-! ## A089175.P13221742277631949449

`A000196(lcm(A000040(n+1), A000720(n+1)))`
-/

namespace A089175.P13221742277631949449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lcm (A000040 (n + 1)) (A000720 (n + 1)))

end

end A089175.P13221742277631949449

/-!
# A089177: Triangle read by rows: T(n,k) (n >= 0, 0 <= k <= 1+log_2(floor(n))) giving number of non-squashing partitions of n into k parts.

The programs for A089177, there is no canonical definition to state claims against.
-/

/-! ## A089177.P6170115802468287273

`A073463(lt[0, A073463(n)])`
-/

namespace A089177.P6170115802468287273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A089177.P6170115802468287273

/-! ## A089177.P7551633923800904348

`A073463(eq[0, A000007(A073463(n))])`
-/

namespace A089177.P7551633923800904348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A073463 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073463 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A089177.P7551633923800904348

/-! ## A089177.P16643829533139701727

`A092942(A238845(p?[A113238(n+1)]))`
-/

namespace A089177.P16643829533139701727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (A238845 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A089177.P16643829533139701727

/-!
# A089178: Triangle T(n,k) (n >= 0, 0 <= k <= 1+log_2(floor(n+1))) read by rows: row 0 = {1}, row 1 = {1 1}; for n >=2, row n = row n-1 + (row floor((n-1)/2) shifted one place right).

The programs for A089178, there is no canonical definition to state claims against.
-/

/-! ## A089178.P11970907120424491989

`A256544(A321878(n)%A095377(n+1))`
-/

namespace A089178.P11970907120424491989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256544 (Int.tmod (A321878 n) (A095377 (n + 1))).toNat

end

end A089178.P11970907120424491989

/-! ## A089178.P9945930507772311893

`A187489(n)-A260394(A147279(n+1))`
-/

namespace A089178.P9945930507772311893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187489 n - A260394 (A147279 (n + 1)).toNat

end

end A089178.P9945930507772311893

/-! ## A089178.P9145737422995998988

`A187489(n)-A276404(A363250(n))`
-/

namespace A089178.P9145737422995998988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187489 n - A276404 (A363250 n).toNat

end

end A089178.P9145737422995998988

/-! ## A089178.P12036348482059856774

`A362344(A384999(n))`
-/

namespace A089178.P12036348482059856774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362344 (A384999 n).toNat

end

end A089178.P12036348482059856774

/-! ## A089178.P14771675236931614701

`A186188(A321878(n)²+1)`
-/

namespace A089178.P14771675236931614701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186188 (A321878 n ^ 2 + 1).toNat

end

end A089178.P14771675236931614701

/-!
# A089179: Number of equivalence classes of permutations of n letters, where the relation is that f and g are equivalent if every cycle of f is a power of some cycle of g.

The programs for A089179, there is no canonical definition to state claims against.
-/

/-! ## A089179.P6516874754768631266

`A256180(n)-A077267(A294222(n))`
-/

namespace A089179.P6516874754768631266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256180 n - A077267 (A294222 n).toNat

end

end A089179.P6516874754768631266

/-! ## A089179.P12135179081064341874

`A325623(A007476(n))*A347644(n)`
-/

namespace A089179.P12135179081064341874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325623 (A007476 n).toNat * A347644 n

end

end A089179.P12135179081064341874

/-! ## A089179.P9344002779482162185

`A132015(A328588(n!))+A052517(A045931(n))`
-/

namespace A089179.P9344002779482162185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132015 (A328588 (Nat.factorial n)).toNat + A052517 (A045931 n).toNat

end

end A089179.P9344002779482162185

/-!
# A089181: (1,3) entry of powers of the orthogonal design shown in A090592.

The programs for A089181, the canonical program `A089181.P2863084793871956889` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089181 has offset 1).

The definition of A089181 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A089181.P2863084793871956889

`2*a(n-1)-7*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A089181

/-- `2*a(n-1)-7*a(n-2)` -/
def P2863084793871956889.Spec : Prop :=
  ∀ n, P2863084793871956889.a n = A089181 (n + 1)

theorem P2863084793871956889.correct : P2863084793871956889.Spec := by
  intro n
  simp only [A089181, Nat.add_sub_cancel]

end A089181

/-! ## A089181.P5095379990217209270

`ogf(1/(1-2x+7x^2))`
-/

namespace A089181.P5095379990217209270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -2, 7] n

end

end A089181.P5095379990217209270

namespace A089181

/-- `ogf(1/(1-2x+7x^2))` -/
def P5095379990217209270.Spec : Prop :=
  ∀ n, P5095379990217209270.a n = A089181 (n + 1)

end A089181

/-! ## A089181.P9141820490012880768

`∏[2-7/a(n-1)]` with `a(0)=1, a(1)=2`
-/

namespace A089181.P9141820490012880768
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  2 - 7 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A089181.P9141820490012880768

namespace A089181

/-- `∏[2-7/a(n-1)]` -/
def P9141820490012880768.Spec : Prop :=
  ∀ n, P9141820490012880768.a n = (A089181 (n + 1) : ℚ)

end A089181

/-! ## A089181.P12419379628097413318

`A090592(n)+a(n-1)` with `a(0)=1`
-/

namespace A089181.P12419379628097413318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090592 n + a (n - 1)

end

end A089181.P12419379628097413318

namespace A089181

/-- `A090592(n)+a(n-1)` -/
def P12419379628097413318.Spec : Prop :=
  ∀ n, P12419379628097413318.a n = A089181 (n + 1)

end A089181

/-! ## A089181.P7679194498257678296

`∑[A090592(A028310(n))]`
-/

namespace A089181.P7679194498257678296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090592 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089181.P7679194498257678296

namespace A089181

/-- `∑[A090592(A028310(n))]` -/
def P7679194498257678296.Spec : Prop :=
  ∀ n, P7679194498257678296.a n = A089181 (n + 1)

end A089181

/-! ## A089181.P9037963049679953258

`∑[A090592(A000007(n)+n)]`
-/

namespace A089181.P9037963049679953258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090592 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089181.P9037963049679953258

namespace A089181

/-- `∑[A090592(A000007(n)+n)]` -/
def P9037963049679953258.Spec : Prop :=
  ∀ n, P9037963049679953258.a n = A089181 (n + 1)

end A089181

/-! ## A089181.P1476827912439946028

`∑[A090592(and(1, A010079(n))+n)]`
-/

namespace A089181.P1476827912439946028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090592 (Int.land 1 (A010079 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089181.P1476827912439946028

namespace A089181

/-- `∑[A090592(and(1, A010079(n))+n)]` -/
def P1476827912439946028.Spec : Prop :=
  ∀ n, P1476827912439946028.a n = A089181 (n + 1)

end A089181

/-! ## A089181.P15706206028664294115

`∑[A090592(n+1)]+1-A090592(n+1)`
-/

namespace A089181.P15706206028664294115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A090592 (n + 1))

end

end A089181.P15706206028664294115

namespace A089181

/-- `∑[A090592(n+1)]+1-A090592(n+1)` -/
def P15706206028664294115.Spec : Prop :=
  ∀ n, P15706206028664294115.a n = A089181 (n + 1)

end A089181

/-!
# A089183: Palindromes in which, in the first half of the number, digits appear in the order 1, 0, 2, 3, 1, 0, 2, 3, 1, ...

The programs for A089183, there is no canonical definition to state claims against.
-/

/-! ## A089183.P9344787566604750926

`A264406(lt[A297374(n+1), A166520(n+1)])`
-/

namespace A089183.P9344787566604750926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166520 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264406 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A089183.P9344787566604750926

/-!
# A089184: A coding semi-palindromic sequence made by converting a zero containing limited digit set palindromic sequence to a fraction and then converting back to an continued fraction array and making the sequence up from the result.

The programs for A089184, there is no canonical definition to state claims against.
-/

/-! ## A089184.P3200311918552204658

`A000042(n+1)*A214636(A008000(n))`
-/

namespace A089184.P3200311918552204658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A214636 (A008000 n).toNat

end

end A089184.P3200311918552204658

/-! ## A089184.P9811274762550117477

`A000042(n+1)*A001222(A122151(n+1))`
-/

namespace A089184.P9811274762550117477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) * A001222 (A122151 (n + 1)).toNat

end

end A089184.P9811274762550117477

/-! ## A089184.P2882533125253549125

`A001222(A122151(n+1))*A078998(n+1)`
-/

namespace A089184.P2882533125253549125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A122151 (n + 1)).toNat * A078998 (n + 1)

end

end A089184.P2882533125253549125

/-!
# A089186: Decreases from 9 * 10^k down to 1, restarting at 9 * 10^(k+1).

The programs for A089186, the canonical program `A089186.P2318256457982008999` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089186 has offset 1).

The definition of A089186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089186.P2318256457982008999

`A178914(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089186

/-- `A178914(n+1)` -/
def P2318256457982008999.Spec : Prop :=
  ∀ n, P2318256457982008999.a n = A089186 (n + 1)

theorem P2318256457982008999.correct : P2318256457982008999.Spec := by
  intro n
  simp only [A089186, Nat.add_sub_cancel]

end A089186

/-!
# A089187: a(n) is the minimal area of a convex lattice polygon with 2n sides.

The programs for A089187, there is no canonical definition to state claims against.
-/

/-! ## A089187.P18087964354737826551

`A070911(2*(n+2))/2`
-/

namespace A089187.P18087964354737826551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070911 (2 * (n + 2)) : ℚ) / 2

end

end A089187.P18087964354737826551

/-! ## A089187.P8181559158332744765

`record[A289436(A070911(n+4))]`
-/

namespace A089187.P8181559158332744765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289436 (A070911 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089187.P8181559158332744765

/-! ## A089187.P14727431477840403506

`A004526(A070911(2*(n+2)))`
-/

namespace A089187.P14727431477840403506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A070911 (2 * (n + 2))).toNat

end

end A089187.P14727431477840403506

/-! ## A089187.P10839014843364578039

`A004524(A070911(2*(n+2))+1)`
-/

namespace A089187.P10839014843364578039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A070911 (2 * (n + 2)) + 1).toNat

end

end A089187.P10839014843364578039

/-! ## A089187.P9857912111620593119

`A028242(A070911(2*(n+2))+1)`
-/

namespace A089187.P9857912111620593119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A070911 (2 * (n + 2)) + 1).toNat

end

end A089187.P9857912111620593119

/-!
# A089188: Lesser member p of a pair of twin primes such that p-1 is squarefree.

The programs for A089188, the canonical program `A089188.P17705299783274846901` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089188 has offset 1).

The definition of A089188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089188.P17705299783274846901

`p?[A039787(n+1)+2]-2`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A089188

/-- `p?[A039787(n+1)+2]-2` -/
def P17705299783274846901.Spec : Prop :=
  ∀ n, P17705299783274846901.a n = A089188 (n + 1)

theorem P17705299783274846901.correct : P17705299783274846901.Spec := by
  intro n
  simp only [A089188, Nat.add_sub_cancel]

end A089188

/-! ## A089188.P13868589847036803836

`∩[A001359(n+1), A039787(n+1)]`
-/

namespace A089188.P13868589847036803836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P13868589847036803836

namespace A089188

/-- `∩[A001359(n+1), A039787(n+1)]` -/
def P13868589847036803836.Spec : Prop :=
  ∀ n, (P13868589847036803836.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P10162523464275743916

`∩[A001838(n+1), A039787(n+1)]`
-/

namespace A089188.P10162523464275743916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P10162523464275743916

namespace A089188

/-- `∩[A001838(n+1), A039787(n+1)]` -/
def P10162523464275743916.Spec : Prop :=
  ∀ n, (P10162523464275743916.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P8205738125137156068

`∩[A039787(n+1), A054799(n+1)]`
-/

namespace A089188.P8205738125137156068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P8205738125137156068

namespace A089188

/-- `∩[A039787(n+1), A054799(n+1)]` -/
def P8205738125137156068.Spec : Prop :=
  ∀ n, (P8205738125137156068.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P7008901129470527578

`∩[A039787(n+1), A061368(n+1)]`
-/

namespace A089188.P7008901129470527578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P7008901129470527578

namespace A089188

/-- `∩[A039787(n+1), A061368(n+1)]` -/
def P7008901129470527578.Spec : Prop :=
  ∀ n, (P7008901129470527578.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P10650259760966794169

`∩[A039787(n+1), A063693(n+1)]`
-/

namespace A089188.P10650259760966794169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P10650259760966794169

namespace A089188

/-- `∩[A039787(n+1), A063693(n+1)]` -/
def P10650259760966794169.Spec : Prop :=
  ∀ n, (P10650259760966794169.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P10190412058851318138

`∩[A039787(n+1), A063700(n+1)]`
-/

namespace A089188.P10190412058851318138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P10190412058851318138

namespace A089188

/-- `∩[A039787(n+1), A063700(n+1)]` -/
def P10190412058851318138.Spec : Prop :=
  ∀ n, (P10190412058851318138.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P525829724805743487

`∩[A039787(n+1), A071698(n+1)]`
-/

namespace A089188.P525829724805743487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P525829724805743487

namespace A089188

/-- `∩[A039787(n+1), A071698(n+1)]` -/
def P525829724805743487.Spec : Prop :=
  ∀ n, (P525829724805743487.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P17260863765856193831

`∩[A039787(n+1), A181747(n+1)]`
-/

namespace A089188.P17260863765856193831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P17260863765856193831

namespace A089188

/-- `∩[A039787(n+1), A181747(n+1)]` -/
def P17260863765856193831.Spec : Prop :=
  ∀ n, (P17260863765856193831.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P10968959624116140133

`∩[A039787(n+1), A280255(n+1)]`
-/

namespace A089188.P10968959624116140133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P10968959624116140133

namespace A089188

/-- `∩[A039787(n+1), A280255(n+1)]` -/
def P10968959624116140133.Spec : Prop :=
  ∀ n, (P10968959624116140133.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P14475064245518258204

`∩[A039787(n+1), A280590(n+1)]`
-/

namespace A089188.P14475064245518258204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P14475064245518258204

namespace A089188

/-- `∩[A039787(n+1), A280590(n+1)]` -/
def P14475064245518258204.Spec : Prop :=
  ∀ n, (P14475064245518258204.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P2828090951561484828

`∩[A039787(n+1), A274212(n+1)]`
-/

namespace A089188.P2828090951561484828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P2828090951561484828

namespace A089188

/-- `∩[A039787(n+1), A274212(n+1)]` -/
def P2828090951561484828.Spec : Prop :=
  ∀ n, (P2828090951561484828.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P13344701464545907852

`p?[A077064(n+1)+3]-2`
-/

namespace A089188.P13344701464545907852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077064 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2

end

end A089188.P13344701464545907852

namespace A089188

/-- `p?[A077064(n+1)+3]-2` -/
def P13344701464545907852.Spec : Prop :=
  ∀ n, P13344701464545907852.a n = A089188 (n + 1)

end A089188

/-! ## A089188.P17162501401199558078

`∩[A001359(n+1), A393860(n+1)]`
-/

namespace A089188.P17162501401199558078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P17162501401199558078

namespace A089188

/-- `∩[A001359(n+1), A393860(n+1)]` -/
def P17162501401199558078.Spec : Prop :=
  ∀ n, (P17162501401199558078.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P9481981444047390099

`∩[A001838(n+1), A393860(n+1)]`
-/

namespace A089188.P9481981444047390099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P9481981444047390099

namespace A089188

/-- `∩[A001838(n+1), A393860(n+1)]` -/
def P9481981444047390099.Spec : Prop :=
  ∀ n, (P9481981444047390099.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P8754210929218029959

`∩[A054799(n+1), A393860(n+1)]`
-/

namespace A089188.P8754210929218029959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P8754210929218029959

namespace A089188

/-- `∩[A054799(n+1), A393860(n+1)]` -/
def P8754210929218029959.Spec : Prop :=
  ∀ n, (P8754210929218029959.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P11309011338040142419

`∩[A061368(n+1), A393860(n+1)]`
-/

namespace A089188.P11309011338040142419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061368 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P11309011338040142419

namespace A089188

/-- `∩[A061368(n+1), A393860(n+1)]` -/
def P11309011338040142419.Spec : Prop :=
  ∀ n, (P11309011338040142419.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P14773609637234740702

`∩[A063693(n+1), A393860(n+1)]`
-/

namespace A089188.P14773609637234740702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P14773609637234740702

namespace A089188

/-- `∩[A063693(n+1), A393860(n+1)]` -/
def P14773609637234740702.Spec : Prop :=
  ∀ n, (P14773609637234740702.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P5341236723917143662

`∩[A063700(n+1), A393860(n+1)]`
-/

namespace A089188.P5341236723917143662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P5341236723917143662

namespace A089188

/-- `∩[A063700(n+1), A393860(n+1)]` -/
def P5341236723917143662.Spec : Prop :=
  ∀ n, (P5341236723917143662.a n : ℤ) = A089188 (n + 1)

end A089188

/-! ## A089188.P6452366525255029639

`∩[A071698(n+1), A393860(n+1)]`
-/

namespace A089188.P6452366525255029639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393860 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089188.P6452366525255029639

namespace A089188

/-- `∩[A071698(n+1), A393860(n+1)]` -/
def P6452366525255029639.Spec : Prop :=
  ∀ n, (P6452366525255029639.a n : ℤ) = A089188 (n + 1)

end A089188

/-!
# A089189: Primes p such that p-1 is cubefree.

The programs for A089189, the canonical program `A089189.P12304478124887923302` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089189 has offset 1).

The definition of A089189 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6712 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089189.P12304478124887923302

`p?[A212793(n+1)+1+n]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089189

/-- `p?[A212793(n+1)+1+n]` -/
def P12304478124887923302.Spec : Prop :=
  ∀ n, P12304478124887923302.a n = A089189 (n + 1)

theorem P12304478124887923302.correct : P12304478124887923302.Spec := by
  intro n
  simp only [A089189, Nat.add_sub_cancel]

end A089189

/-! ## A089189.P16386699135073045267

`p?[(n+2)*A050361(n+1)]`
-/

namespace A089189.P16386699135073045267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A050361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089189.P16386699135073045267

namespace A089189

/-- `p?[(n+2)*A050361(n+1)]` -/
def P16386699135073045267.Spec : Prop :=
  ∀ n, P16386699135073045267.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P10734122169854094426

`p?[A295657(n+1)+1+n]`
-/

namespace A089189.P10734122169854094426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089189.P10734122169854094426

namespace A089189

/-- `p?[A295657(n+1)+1+n]` -/
def P10734122169854094426.Spec : Prop :=
  ∀ n, P10734122169854094426.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P6520502093700845337

`record[A166333(A212793(n+1)+n)]`
-/

namespace A089189.P6520502093700845337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A212793 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P6520502093700845337

namespace A089189

/-- `record[A166333(A212793(n+1)+n)]` -/
def P6520502093700845337.Spec : Prop :=
  ∀ n, P6520502093700845337.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P15989119672931918734

`p?[A340152(n+1)+1]`
-/

namespace A089189.P15989119672931918734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089189.P15989119672931918734

namespace A089189

/-- `p?[A340152(n+1)+1]` -/
def P15989119672931918734.Spec : Prop :=
  ∀ n, P15989119672931918734.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P10306110807492134366

`record[A006530(A340152(n+1)+1)]`
-/

namespace A089189.P10306110807492134366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A340152 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P10306110807492134366

namespace A089189

/-- `record[A006530(A340152(n+1)+1)]` -/
def P10306110807492134366.Spec : Prop :=
  ∀ n, P10306110807492134366.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P6910903266955463261

`∩[A000040(n+1), A340152(n+1)+1]`
-/

namespace A089189.P6910903266955463261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089189.P6910903266955463261

namespace A089189

/-- `∩[A000040(n+1), A340152(n+1)+1]` -/
def P6910903266955463261.Spec : Prop :=
  ∀ n, (P6910903266955463261.a n : ℤ) = A089189 (n + 1)

end A089189

/-! ## A089189.P2687146134902876336

`∩[A182986(n+1), A340152(n+1)+1]`
-/

namespace A089189.P2687146134902876336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089189.P2687146134902876336

namespace A089189

/-- `∩[A182986(n+1), A340152(n+1)+1]` -/
def P2687146134902876336.Spec : Prop :=
  ∀ n, (P2687146134902876336.a n : ℤ) = A089189 (n + 1)

end A089189

/-! ## A089189.P10220159078910144652

`∩[A186285(n+1), A340152(n+1)+1]`
-/

namespace A089189.P10220159078910144652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089189.P10220159078910144652

namespace A089189

/-- `∩[A186285(n+1), A340152(n+1)+1]` -/
def P10220159078910144652.Spec : Prop :=
  ∀ n, (P10220159078910144652.a n : ℤ) = A089189 (n + 1)

end A089189

/-! ## A089189.P880562049092193765

`∩[A246551(n+1), A340152(n+1)+1]`
-/

namespace A089189.P880562049092193765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089189.P880562049092193765

namespace A089189

/-- `∩[A246551(n+1), A340152(n+1)+1]` -/
def P880562049092193765.Spec : Prop :=
  ∀ n, (P880562049092193765.a n : ℤ) = A089189 (n + 1)

end A089189

/-! ## A089189.P9535967486786013433

`∩[A268391(n+1), A340152(n+1)+1]`
-/

namespace A089189.P9535967486786013433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089189.P9535967486786013433

namespace A089189

/-- `∩[A268391(n+1), A340152(n+1)+1]` -/
def P9535967486786013433.Spec : Prop :=
  ∀ n, (P9535967486786013433.a n : ℤ) = A089189 (n + 1)

end A089189

/-! ## A089189.P7520813302851489903

`p?[A004709(n+1)+1]`
-/

namespace A089189.P7520813302851489903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089189.P7520813302851489903

namespace A089189

/-- `p?[A004709(n+1)+1]` -/
def P7520813302851489903.Spec : Prop :=
  ∀ n, P7520813302851489903.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P6505650173541626762

`record[A020639(lt[A051903(n+1), 3]+2)]`
-/

namespace A089189.P6505650173541626762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P6505650173541626762

namespace A089189

/-- `record[A020639(lt[A051903(n+1), 3]+2)]` -/
def P6505650173541626762.Spec : Prop :=
  ∀ n, P6505650173541626762.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P16485626350582875327

`p?[record[A097377(n+1)]]`
-/

namespace A089189.P16485626350582875327
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089189.P16485626350582875327

namespace A089189

/-- `p?[record[A097377(n+1)]]` -/
def P16485626350582875327.Spec : Prop :=
  ∀ n, P16485626350582875327.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P10691746322958069980

`record[A097377(record[A000010(n+1)])]`
-/

namespace A089189.P10691746322958069980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P10691746322958069980

namespace A089189

/-- `record[A097377(record[A000010(n+1)])]` -/
def P10691746322958069980.Spec : Prop :=
  ∀ n, P10691746322958069980.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P8563508787043126951

`record[A006530(record[A097377(n+1)])]`
-/

namespace A089189.P8563508787043126951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P8563508787043126951

namespace A089189

/-- `record[A006530(record[A097377(n+1)])]` -/
def P8563508787043126951.Spec : Prop :=
  ∀ n, P8563508787043126951.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P15379231022495175383

`record[A006530(A007948(n+1)+1)]`
-/

namespace A089189.P15379231022495175383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007948 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P15379231022495175383

namespace A089189

/-- `record[A006530(A007948(n+1)+1)]` -/
def P15379231022495175383.Spec : Prop :=
  ∀ n, P15379231022495175383.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P7688974643011444927

`record[A020639(A007948(n+1)+1)]`
-/

namespace A089189.P7688974643011444927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007948 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P7688974643011444927

namespace A089189

/-- `record[A020639(A007948(n+1)+1)]` -/
def P7688974643011444927.Spec : Prop :=
  ∀ n, P7688974643011444927.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P10400331216883402340

`record[A006530(A066990(n+1)+1)]`
-/

namespace A089189.P10400331216883402340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066990 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P10400331216883402340

namespace A089189

/-- `record[A006530(A066990(n+1)+1)]` -/
def P10400331216883402340.Spec : Prop :=
  ∀ n, P10400331216883402340.a n = A089189 (n + 1)

end A089189

/-! ## A089189.P16651621897312110596

`record[A089026(A066990(n+1)+1)]`
-/

namespace A089189.P16651621897312110596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (A066990 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089189.P16651621897312110596

namespace A089189

/-- `record[A089026(A066990(n+1)+1)]` -/
def P16651621897312110596.Spec : Prop :=
  ∀ n, P16651621897312110596.a n = A089189 (n + 1)

end A089189

/-!
# A089190: a(n) = Floor[(Prime[n]+PrimePi[n])/2].

The programs for A089190, there is no canonical definition to state claims against.
-/

/-! ## A089190.P4960062260894939657

`floor(A100486(n+1)/2)`
-/

namespace A089190.P4960062260894939657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A100486 (n + 1) : ℚ) / 2⌋

end

end A089190.P4960062260894939657

/-! ## A089190.P18042385745124224440

`floor((A167180(n+1)+1+n)/2)`
-/

namespace A089190.P18042385745124224440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167180 (n + 1) + 1 + (n : ℤ) : ℚ) / 2⌋

end

end A089190.P18042385745124224440

/-! ## A089190.P1416261920537199626

`A004526(A100486(n+1))`
-/

namespace A089190.P1416261920537199626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A100486 (n + 1)).toNat

end

end A089190.P1416261920537199626

/-! ## A089190.P12426752307818147648

`A065033(A100486(n+1)-1)`
-/

namespace A089190.P12426752307818147648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A100486 (n + 1) - 1).toNat

end

end A089190.P12426752307818147648

/-! ## A089190.P6566412361879065410

`A008619(A100486(n+1)-2)`
-/

namespace A089190.P6566412361879065410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A100486 (n + 1) - 2).toNat

end

end A089190.P6566412361879065410

/-! ## A089190.P10348570345436165517

`A008615(3*A100486(n+1))`
-/

namespace A089190.P10348570345436165517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A100486 (n + 1)).toNat

end

end A089190.P10348570345436165517

/-! ## A089190.P17489196262847894904

`A321018(n+1)+A130290(n+1)`
-/

namespace A089190.P17489196262847894904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321018 (n + 1) + A130290 (n + 1)

end

end A089190.P17489196262847894904

/-! ## A089190.P14501704715389810097

`floor((A000720(n+1)+Δ[A007504(n)])/2)`
-/

namespace A089190.P14501704715389810097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000720 (n + 1) + (f1 (n + 1) - f1 n) : ℚ) / 2⌋

end

end A089190.P14501704715389810097

/-! ## A089190.P2680158852211367269

`floor((A000720(n+1)+A000040(n+1))/2)`
-/

namespace A089190.P2680158852211367269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000720 (n + 1) + A000040 (n + 1) : ℚ) / 2⌋

end

end A089190.P2680158852211367269

/-! ## A089190.P7535037952062283244

`floor((A230980(n+1)+A000040(n+1))/2)`
-/

namespace A089190.P7535037952062283244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230980 (n + 1) + A000040 (n + 1) : ℚ) / 2⌋

end

end A089190.P7535037952062283244

/-!
# A089191: Primes p such that p+1 is cubefree.

The programs for A089191, the canonical program `A089191.P6897987938072641486` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089191 has offset 1).

The definition of A089191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089191.P6897987938072641486

`p?[n*A212793(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089191

/-- `p?[n*A212793(n+1)]` -/
def P6897987938072641486.Spec : Prop :=
  ∀ n, P6897987938072641486.a n = A089191 (n + 1)

theorem P6897987938072641486.correct : P6897987938072641486.Spec := by
  intro n
  simp only [A089191, Nat.add_sub_cancel]

end A089191

/-! ## A089191.P394133614914641610

`p?[n*A050361(n+1)]`
-/

namespace A089191.P394133614914641610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A050361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089191.P394133614914641610

namespace A089191

/-- `p?[n*A050361(n+1)]` -/
def P394133614914641610.Spec : Prop :=
  ∀ n, P394133614914641610.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P1091004060497077672

`p?[A398167(n+1)]`
-/

namespace A089191.P1091004060497077672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089191.P1091004060497077672

namespace A089191

/-- `p?[A398167(n+1)]` -/
def P1091004060497077672.Spec : Prop :=
  ∀ n, P1091004060497077672.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P3547898379225913546

`filter[A398167(n+1), A010051(#)]`
-/

namespace A089191.P3547898379225913546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A089191.P3547898379225913546

namespace A089191

/-- `filter[A398167(n+1), A010051(#)]` -/
def P3547898379225913546.Spec : Prop :=
  ∀ n, P3547898379225913546.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P10318973109144985977

`filter[A398167(n+1), A069513(#)]`
-/

namespace A089191.P10318973109144985977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A089191.P10318973109144985977

namespace A089191

/-- `filter[A398167(n+1), A069513(#)]` -/
def P10318973109144985977.Spec : Prop :=
  ∀ n, P10318973109144985977.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P17906558799046341532

`filter[A398167(n+1), A302777(#)]`
-/

namespace A089191.P17906558799046341532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A089191.P17906558799046341532

namespace A089191

/-- `filter[A398167(n+1), A302777(#)]` -/
def P17906558799046341532.Spec : Prop :=
  ∀ n, P17906558799046341532.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P2331084504824246994

`filter[A398167(n+1), A353817(#)]`
-/

namespace A089191.P2331084504824246994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A089191.P2331084504824246994

namespace A089191

/-- `filter[A398167(n+1), A353817(#)]` -/
def P2331084504824246994.Spec : Prop :=
  ∀ n, P2331084504824246994.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P2173776950999924072

`filter[A398167(n+1), A358769(#)]`
-/

namespace A089191.P2173776950999924072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358769 (f1 j).toNat = 1) n)

end

end A089191.P2173776950999924072

namespace A089191

/-- `filter[A398167(n+1), A358769(#)]` -/
def P2173776950999924072.Spec : Prop :=
  ∀ n, P2173776950999924072.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P12717488026832658054

`filter[A398167(n+2), A091862(#)]`
-/

namespace A089191.P12717488026832658054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091862 (f1 j).toNat = 1) n)

end

end A089191.P12717488026832658054

namespace A089191

/-- `filter[A398167(n+2), A091862(#)]` -/
def P12717488026832658054.Spec : Prop :=
  ∀ n, P12717488026832658054.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P3773248761439254075

`filter[A398167(n+2), A174897(#)]`
-/

namespace A089191.P3773248761439254075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A089191.P3773248761439254075

namespace A089191

/-- `filter[A398167(n+2), A174897(#)]` -/
def P3773248761439254075.Spec : Prop :=
  ∀ n, P3773248761439254075.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P9479834108317379723

`filter[A398167(n+2), A342004(#)]`
-/

namespace A089191.P9479834108317379723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342004 (f1 j).toNat = 1) n)

end

end A089191.P9479834108317379723

namespace A089191

/-- `filter[A398167(n+2), A342004(#)]` -/
def P9479834108317379723.Spec : Prop :=
  ∀ n, P9479834108317379723.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P3697472544123479226

`filter[A398167(n+2), A345064(#)]`
-/

namespace A089191.P3697472544123479226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345064 (f1 j).toNat = 1) n)

end

end A089191.P3697472544123479226

namespace A089191

/-- `filter[A398167(n+2), A345064(#)]` -/
def P3697472544123479226.Spec : Prop :=
  ∀ n, P3697472544123479226.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P9738970857370590697

`filter[A398167(n+2), A345950(#)]`
-/

namespace A089191.P9738970857370590697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345950 (f1 j).toNat = 1) n)

end

end A089191.P9738970857370590697

namespace A089191

/-- `filter[A398167(n+2), A345950(#)]` -/
def P9738970857370590697.Spec : Prop :=
  ∀ n, P9738970857370590697.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P807027643789994181

`filter[A398167(n+2), A351564(#)]`
-/

namespace A089191.P807027643789994181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A351564 (f1 j).toNat = 1) n)

end

end A089191.P807027643789994181

namespace A089191

/-- `filter[A398167(n+2), A351564(#)]` -/
def P807027643789994181.Spec : Prop :=
  ∀ n, P807027643789994181.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P14170945057802759239

`filter[A398167(n+2), A353787(#)]`
-/

namespace A089191.P14170945057802759239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A089191.P14170945057802759239

namespace A089191

/-- `filter[A398167(n+2), A353787(#)]` -/
def P14170945057802759239.Spec : Prop :=
  ∀ n, P14170945057802759239.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P14792111010860062391

`filter[A398167(n+2), A355937(#)]`
-/

namespace A089191.P14792111010860062391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A089191.P14792111010860062391

namespace A089191

/-- `filter[A398167(n+2), A355937(#)]` -/
def P14792111010860062391.Spec : Prop :=
  ∀ n, P14792111010860062391.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P4071449988083730552

`filter[A398167(n+2), A369253(#)]`
-/

namespace A089191.P4071449988083730552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369253 (f1 j).toNat = 1) n)

end

end A089191.P4071449988083730552

namespace A089191

/-- `filter[A398167(n+2), A369253(#)]` -/
def P4071449988083730552.Spec : Prop :=
  ∀ n, P4071449988083730552.a n = A089191 (n + 1)

end A089191

/-! ## A089191.P5032942567539578756

`∩[A000040(n+1), A398167(n+1)]`
-/

namespace A089191.P5032942567539578756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089191.P5032942567539578756

namespace A089191

/-- `∩[A000040(n+1), A398167(n+1)]` -/
def P5032942567539578756.Spec : Prop :=
  ∀ n, (P5032942567539578756.a n : ℤ) = A089191 (n + 1)

end A089191

/-! ## A089191.P8379995109787349342

`∩[A000430(n+1), A398167(n+1)]`
-/

namespace A089191.P8379995109787349342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089191.P8379995109787349342

namespace A089191

/-- `∩[A000430(n+1), A398167(n+1)]` -/
def P8379995109787349342.Spec : Prop :=
  ∀ n, (P8379995109787349342.a n : ℤ) = A089191 (n + 1)

end A089191

/-! ## A089191.P11690317304094844292

`∩[A009087(n+1), A398167(n+1)]`
-/

namespace A089191.P11690317304094844292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089191.P11690317304094844292

namespace A089191

/-- `∩[A009087(n+1), A398167(n+1)]` -/
def P11690317304094844292.Spec : Prop :=
  ∀ n, (P11690317304094844292.a n : ℤ) = A089191 (n + 1)

end A089191

/-!
# A089192: Numbers n such that 2n - 7 is a prime.

The programs for A089192, the canonical program `A089192.P5097066678155882464` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089192 has offset 1).

The definition of A089192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089192.P2830316366619961457

`(p?[2*n+1]+7)/2`
-/

namespace A089192.P2830316366619961457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 7 : ℚ) / 2

end

end A089192.P2830316366619961457

namespace A089192

/-- `(p?[2*n+1]+7)/2` -/
def P2830316366619961457.Spec : Prop :=
  ∀ n, P2830316366619961457.a n = (A089192 (n + 1) : ℚ)

end A089192

/-! ## A089192.P4771593388654460478

`A089253(n+1)+1`
-/

namespace A089192.P4771593388654460478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 1) + 1

end

end A089192.P4771593388654460478

namespace A089192

/-- `A089253(n+1)+1` -/
def P4771593388654460478.Spec : Prop :=
  ∀ n, P4771593388654460478.a n = A089192 (n + 1)

theorem P4771593388654460478.correct : P4771593388654460478.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel, A089192.P4771593388654460478.a, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A089253, A089253.P9623062397135395528.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067076, A067076.P14247190955968615804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089192

/-! ## A089192.P12953563256856851933

`A097069(n+1)-1`
-/

namespace A089192.P12953563256856851933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097069 (n + 1) - 1

end

end A089192.P12953563256856851933

namespace A089192

/-- `A097069(n+1)-1` -/
def P12953563256856851933.Spec : Prop :=
  ∀ n, P12953563256856851933.a n = A089192 (n + 1)

theorem P12953563256856851933.correct : P12953563256856851933.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel, A089192.P12953563256856851933.a, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A097069, A097069.P18192174897570610825.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089192

/-! ## A089192.P10691335069227057281

`A098090(n+1)+2`
-/

namespace A089192.P10691335069227057281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) + 2

end

end A089192.P10691335069227057281

namespace A089192

/-- `A098090(n+1)+2` -/
def P10691335069227057281.Spec : Prop :=
  ∀ n, P10691335069227057281.a n = A089192 (n + 1)

end A089192

/-! ## A089192.P5097066678155882464

`A006254(n+1)+3`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A089192

/-- `A006254(n+1)+3` -/
def P5097066678155882464.Spec : Prop :=
  ∀ n, P5097066678155882464.a n = A089192 (n + 1)

theorem P5097066678155882464.correct : P5097066678155882464.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel]

end A089192

/-! ## A089192.P18183471017588160228

`A097338(n+1)-2`
-/

namespace A089192.P18183471017588160228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097338 (n + 1) - 2

end

end A089192.P18183471017588160228

namespace A089192

/-- `A097338(n+1)-2` -/
def P18183471017588160228.Spec : Prop :=
  ∀ n, P18183471017588160228.a n = A089192 (n + 1)

theorem P18183471017588160228.correct : P18183471017588160228.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel, A089192.P18183471017588160228.a, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A097338, A097338.P887064449779485792.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097069, A097069.P18192174897570610825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089192

/-! ## A089192.P5466138871103181723

`A005097(n+1)+4`
-/

namespace A089192.P5466138871103181723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) + 4

end

end A089192.P5466138871103181723

namespace A089192

/-- `A005097(n+1)+4` -/
def P5466138871103181723.Spec : Prop :=
  ∀ n, P5466138871103181723.a n = A089192 (n + 1)

end A089192

/-! ## A089192.P7187566478257050469

`A097363(n+1)-3`
-/

namespace A089192.P7187566478257050469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 3

end

end A089192.P7187566478257050469

namespace A089192

/-- `A097363(n+1)-3` -/
def P7187566478257050469.Spec : Prop :=
  ∀ n, P7187566478257050469.a n = A089192 (n + 1)

theorem P7187566478257050469.correct : P7187566478257050469.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel, A089192.P7187566478257050469.a, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A097363, A097363.P9324045915537457052.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089192

/-! ## A089192.P15296345137044850067

`A067076(n+1)+5`
-/

namespace A089192.P15296345137044850067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) + 5

end

end A089192.P15296345137044850067

namespace A089192

/-- `A067076(n+1)+5` -/
def P15296345137044850067.Spec : Prop :=
  ∀ n, P15296345137044850067.a n = A089192 (n + 1)

theorem P15296345137044850067.correct : P15296345137044850067.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel, A089192.P15296345137044850067.a, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A067076, A067076.P14247190955968615804.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089192

/-! ## A089192.P12114777848861783273

`A097480(n+1)-4`
-/

namespace A089192.P12114777848861783273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097480 (n + 1) - 4

end

end A089192.P12114777848861783273

namespace A089192

/-- `A097480(n+1)-4` -/
def P12114777848861783273.Spec : Prop :=
  ∀ n, P12114777848861783273.a n = A089192 (n + 1)

theorem P12114777848861783273.correct : P12114777848861783273.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel, A089192.P12114777848861783273.a, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A097480, A097480.P24898552055680441.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A097363, A097363.P9324045915537457052.a, A097338, A097338.P887064449779485792.a, A097069, A097069.P18192174897570610825.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089192

/-! ## A089192.P13766803380370162427

`A098605(n+1)-5`
-/

namespace A089192.P13766803380370162427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098605 (n + 1) - 5

end

end A089192.P13766803380370162427

namespace A089192

/-- `A098605(n+1)-5` -/
def P13766803380370162427.Spec : Prop :=
  ∀ n, P13766803380370162427.a n = A089192 (n + 1)

end A089192

/-! ## A089192.P12094486725018979069

`A097932(n+1)-6`
-/

namespace A089192.P12094486725018979069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097932 (n + 1) - 6

end

end A089192.P12094486725018979069

namespace A089192

/-- `A097932(n+1)-6` -/
def P12094486725018979069.Spec : Prop :=
  ∀ n, P12094486725018979069.a n = A089192 (n + 1)

end A089192

/-! ## A089192.P1482471612760392231

`A298252(n+1)/2+2`
-/

namespace A089192.P1482471612760392231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298252 (n + 1) : ℚ) / 2 + 2

end

end A089192.P1482471612760392231

namespace A089192

/-- `A298252(n+1)/2+2` -/
def P1482471612760392231.Spec : Prop :=
  ∀ n, P1482471612760392231.a n = (A089192 (n + 1) : ℚ)

end A089192

/-! ## A089192.P7172668410436903879

`(A048974(n+1)+5)/2`
-/

namespace A089192.P7172668410436903879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048974 (n + 1) + 5 : ℚ) / 2

end

end A089192.P7172668410436903879

namespace A089192

/-- `(A048974(n+1)+5)/2` -/
def P7172668410436903879.Spec : Prop :=
  ∀ n, P7172668410436903879.a n = (A089192 (n + 1) : ℚ)

end A089192

/-! ## A089192.P16564671440126723147

`A154115(n+1)/2+5`
-/

namespace A089192.P16564671440126723147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A154115 (n + 1) : ℚ) / 2 + 5

end

end A089192.P16564671440126723147

namespace A089192

/-- `A154115(n+1)/2+5` -/
def P16564671440126723147.Spec : Prop :=
  ∀ n, P16564671440126723147.a n = (A089192 (n + 1) : ℚ)

end A089192

/-! ## A089192.P12758892363873022572

`A177018(n+1)+2+n`
-/

namespace A089192.P12758892363873022572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177018 (n + 1) + 2 + (n : ℤ)

end

end A089192.P12758892363873022572

namespace A089192

/-- `A177018(n+1)+2+n` -/
def P12758892363873022572.Spec : Prop :=
  ∀ n, P12758892363873022572.a n = A089192 (n + 1)

end A089192

/-! ## A089192.P14208862794715661043

`A020710(n)+A008507(n+1)`
-/

namespace A089192.P14208862794715661043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n + A008507 (n + 1)

end

end A089192.P14208862794715661043

namespace A089192

/-- `A020710(n)+A008507(n+1)` -/
def P14208862794715661043.Spec : Prop :=
  ∀ n, P14208862794715661043.a n = A089192 (n + 1)

theorem P14208862794715661043.correct : P14208862794715661043.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel, A089192.P14208862794715661043.a, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A008507, A008507.P5510179153814837351.a, A020710, A020710.P12161966585787702209.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067076, A067076.P14247190955968615804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089192

/-! ## A089192.P9930414285626197744

`A163057(n+1)+A022959(n)`
-/

namespace A089192.P9930414285626197744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) + A022959 n

end

end A089192.P9930414285626197744

namespace A089192

/-- `A163057(n+1)+A022959(n)` -/
def P9930414285626197744.Spec : Prop :=
  ∀ n, P9930414285626197744.a n = A089192 (n + 1)

end A089192

/-! ## A089192.P18005757789386949689

`A175540(n+1)+A022960(n)`
-/

namespace A089192.P18005757789386949689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175540 (n + 1) + A022960 n

end

end A089192.P18005757789386949689

namespace A089192

/-- `A175540(n+1)+A022960(n)` -/
def P18005757789386949689.Spec : Prop :=
  ∀ n, P18005757789386949689.a n = A089192 (n + 1)

theorem P18005757789386949689.correct : P18005757789386949689.Spec := by
  intro n
  simp only [A089192, Nat.add_sub_cancel, A089192.P18005757789386949689.a, A089192.P5097066678155882464.a, A006254, A006254.P17336495081768971287.a, A022960, A022960.P7847487172736351835.a, A175540, A175540.P17413733986559148913.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A067076, A067076.P14247190955968615804.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089192

/-! ## A089192.P13375415307125275589

`A163057(n+1)-A023445(n)`
-/

namespace A089192.P13375415307125275589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163057 (n + 1) - A023445 n

end

end A089192.P13375415307125275589

namespace A089192

/-- `A163057(n+1)-A023445(n)` -/
def P13375415307125275589.Spec : Prop :=
  ∀ n, P13375415307125275589.a n = A089192 (n + 1)

end A089192

/-!
# A089193: Odd numbers n such that 2*n-7 is a prime of the form 4*k+3.

The programs for A089193, the canonical program `A089193.P2689755802632067634` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089193 has offset 1).

The definition of A089193 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A087915, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A089193.P2689755802632067634

`A087915(n+1)+5`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A089193

/-- `A087915(n+1)+5` -/
def P2689755802632067634.Spec : Prop :=
  ∀ n, P2689755802632067634.a n = A089193 (n + 1)

theorem P2689755802632067634.correct : P2689755802632067634.Spec := by
  intro n
  simp only [A089193, Nat.add_sub_cancel]

end A089193

/-! ## A089193.P11355233485000022376

`(p?[4*n-1]+1)/2+3`
-/

namespace A089193.P11355233485000022376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2 + 3

end

end A089193.P11355233485000022376

namespace A089193

/-- `(p?[4*n-1]+1)/2+3` -/
def P11355233485000022376.Spec : Prop :=
  ∀ n, P11355233485000022376.a n = (A089193 (n + 1) : ℚ)

end A089193

/-! ## A089193.P6247368732344179135

`A089257(n+1)+1`
-/

namespace A089193.P6247368732344179135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089257 (n + 1) + 1

end

end A089193.P6247368732344179135

namespace A089193

/-- `A089257(n+1)+1` -/
def P6247368732344179135.Spec : Prop :=
  ∀ n, P6247368732344179135.a n = A089193 (n + 1)

theorem P6247368732344179135.correct : P6247368732344179135.Spec := by
  intro n
  simp only [A089193, Nat.add_sub_cancel, A089193.P6247368732344179135.a, A089193.P2689755802632067634.a, A087915, A087915.P15618837605475670392.a, A089257, A089257.P243562782731200786.a, A005099, A005099.P16814233129974845155.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089193

/-! ## A089193.P17427166322047189392

`A090670(n+1)+2`
-/

namespace A089193.P17427166322047189392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1) + 2

end

end A089193.P17427166322047189392

namespace A089193

/-- `A090670(n+1)+2` -/
def P17427166322047189392.Spec : Prop :=
  ∀ n, P17427166322047189392.a n = A089193 (n + 1)

theorem P17427166322047189392.correct : P17427166322047189392.Spec := by
  intro n
  simp only [A089193, Nat.add_sub_cancel, A089193.P17427166322047189392.a, A089193.P2689755802632067634.a, A087915, A087915.P15618837605475670392.a, A090670, A090670.P8610966387605569098.a, A005099, A005099.P16814233129974845155.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089193

/-! ## A089193.P569286239427621862

`A104635(n+1)+4`
-/

namespace A089193.P569286239427621862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) + 4

end

end A089193.P569286239427621862

namespace A089193

/-- `A104635(n+1)+4` -/
def P569286239427621862.Spec : Prop :=
  ∀ n, P569286239427621862.a n = A089193 (n + 1)

end A089193

/-! ## A089193.P7595495870729590460

`2*A156287(n+1)+1`
-/

namespace A089193.P7595495870729590460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156287 (n + 1) + 1

end

end A089193.P7595495870729590460

namespace A089193

/-- `2*A156287(n+1)+1` -/
def P7595495870729590460.Spec : Prop :=
  ∀ n, P7595495870729590460.a n = A089193 (n + 1)

theorem P7595495870729590460.correct : P7595495870729590460.Spec := by
  intro n
  simp only [A089193, Nat.add_sub_cancel, A089193.P7595495870729590460.a, A089193.P2689755802632067634.a, A087915, A087915.P15618837605475670392.a, A156287, A156287.P14892850201557753402.a, A005099, A005099.P16814233129974845155.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089193

/-! ## A089193.P13160935854730424576

`2*A005099(n+1)+3`
-/

namespace A089193.P13160935854730424576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005099 (n + 1) + 3

end

end A089193.P13160935854730424576

namespace A089193

/-- `2*A005099(n+1)+3` -/
def P13160935854730424576.Spec : Prop :=
  ∀ n, P13160935854730424576.a n = A089193 (n + 1)

theorem P13160935854730424576.correct : P13160935854730424576.Spec := by
  intro n
  simp only [A089193, Nat.add_sub_cancel, A089193.P13160935854730424576.a, A089193.P2689755802632067634.a, A005099, A005099.P16814233129974845155.a, A087915, A087915.P15618837605475670392.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089193

/-! ## A089193.P11307187211445697360

`A090658(n+1)/2+3`
-/

namespace A089193.P11307187211445697360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 2 + 3

end

end A089193.P11307187211445697360

namespace A089193

/-- `A090658(n+1)/2+3` -/
def P11307187211445697360.Spec : Prop :=
  ∀ n, P11307187211445697360.a n = (A089193 (n + 1) : ℚ)

theorem P11307187211445697360.correct : P11307187211445697360.Spec := by
  intro n
  simp only [A089193, Nat.add_sub_cancel, A089193.P11307187211445697360.a, A089193.P2689755802632067634.a, A087915, A087915.P15618837605475670392.a, A090658, A090658.P13517223795634800117.a, A005099, A005099.P16814233129974845155.a, A089257, A089257.P243562782731200786.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089193

/-! ## A089193.P13818570826382067929

`2*A095278(n+1)+5`
-/

namespace A089193.P13818570826382067929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095278 (n + 1) + 5

end

end A089193.P13818570826382067929

namespace A089193

/-- `2*A095278(n+1)+5` -/
def P13818570826382067929.Spec : Prop :=
  ∀ n, P13818570826382067929.a n = A089193 (n + 1)

end A089193

/-! ## A089193.P3975942602959420757

`(A089217(n+1)+5)/2`
-/

namespace A089193.P3975942602959420757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089217 (n + 1) + 5 : ℚ) / 2

end

end A089193.P3975942602959420757

namespace A089193

/-- `(A089217(n+1)+5)/2` -/
def P3975942602959420757.Spec : Prop :=
  ∀ n, P3975942602959420757.a n = (A089193 (n + 1) : ℚ)

theorem P3975942602959420757.correct : P3975942602959420757.Spec := by
  intro n
  simp only [A089193, Nat.add_sub_cancel, A089193.P3975942602959420757.a, A089193.P2689755802632067634.a, A087915, A087915.P15618837605475670392.a, A089217, A089217.P8919220155031244683.a, A005099, A005099.P16814233129974845155.a, A002145, A002145.P4185971227795926526.f1, A002145.P4185971227795926526.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A089193

/-! ## A089193.P10042663773732415484

`(A002145(n+1)+5)/2+1`
-/

namespace A089193.P10042663773732415484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002145 (n + 1) + 5 : ℚ) / 2 + 1

end

end A089193.P10042663773732415484

namespace A089193

/-- `(A002145(n+1)+5)/2+1` -/
def P10042663773732415484.Spec : Prop :=
  ∀ n, P10042663773732415484.a n = (A089193 (n + 1) : ℚ)

end A089193

/-! ## A089193.P11336504735463960013

`∩[2*n+1, A089192(n+1)]`
-/

namespace A089193.P11336504735463960013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089193.P11336504735463960013

namespace A089193

/-- `∩[2*n+1, A089192(n+1)]` -/
def P11336504735463960013.Spec : Prop :=
  ∀ n, (P11336504735463960013.a n : ℤ) = A089193 (n + 1)

end A089193

/-! ## A089193.P7887191603214191185

`A089192(A138971(n+1))`
-/

namespace A089193.P7887191603214191185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (A138971 (n + 1)).toNat

end

end A089193.P7887191603214191185

namespace A089193

/-- `A089192(A138971(n+1))` -/
def P7887191603214191185.Spec : Prop :=
  ∀ n, P7887191603214191185.a n = A089193 (n + 1)

end A089193

/-! ## A089193.P1355961797476246252

`record[A057023(n+1)+4]`
-/

namespace A089193.P1355961797476246252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057023 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089193.P1355961797476246252

namespace A089193

/-- `record[A057023(n+1)+4]` -/
def P1355961797476246252.Spec : Prop :=
  ∀ n, P1355961797476246252.a n = A089193 (n + 1)

end A089193

/-! ## A089193.P8821175985331096014

`record[lcm(4, 1-A000040(n+1))/4]+4`
-/

namespace A089193.P8821175985331096014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 4 (1 - A000040 (n + 1)) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 4

end

end A089193.P8821175985331096014

namespace A089193

/-- `record[lcm(4, 1-A000040(n+1))/4]+4` -/
def P8821175985331096014.Spec : Prop :=
  ∀ n, P8821175985331096014.a n = (A089193 (n + 1) : ℚ)

end A089193

/-! ## A089193.P16979464167383595831

`record[A000010(or(3, n))/2-1]+5`
-/

namespace A089193.P16979464167383595831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (Nat.lor 3 n) : ℚ) / 2 - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 5

end

end A089193.P16979464167383595831

namespace A089193

/-- `record[A000010(or(3, n))/2-1]+5` -/
def P16979464167383595831.Spec : Prop :=
  ∀ n, P16979464167383595831.a n = (A089193 (n + 1) : ℚ)

end A089193

/-! ## A089193.P4369099880065297836

`2*eq[2, A000005(4*n+3)]+5`
-/

namespace A089193.P4369099880065297836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 5

end

end A089193.P4369099880065297836

namespace A089193

/-- `2*eq[2, A000005(4*n+3)]+5` -/
def P4369099880065297836.Spec : Prop :=
  ∀ n, (P4369099880065297836.a n : ℤ) = A089193 (n + 1)

end A089193

/-! ## A089193.P945748923902761511

`lt[2*n, A000010(or(3, 2*n))]+5`
-/

namespace A089193.P945748923902761511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.lor 3 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 5

end

end A089193.P945748923902761511

namespace A089193

/-- `lt[2*n, A000010(or(3, 2*n))]+5` -/
def P945748923902761511.Spec : Prop :=
  ∀ n, (P945748923902761511.a n : ℤ) = A089193 (n + 1)

end A089193

/-! ## A089193.P5563452083127122308

`eq[2, A000005(lcm(2, n)+n+3)]+5`
-/

namespace A089193.P5563452083127122308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.lcm 2 n + (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 5

end

end A089193.P5563452083127122308

namespace A089193

/-- `eq[2, A000005(lcm(2, n)+n+3)]+5` -/
def P5563452083127122308.Spec : Prop :=
  ∀ n, (P5563452083127122308.a n : ℤ) = A089193 (n + 1)

end A089193

/-! ## A089193.P1739025614153613624

`2*((p?[A004767(n)]+3)/4+1)`
-/

namespace A089193.P1739025614153613624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 3 : ℚ) / 4 + 1)

end

end A089193.P1739025614153613624

namespace A089193

/-- `2*((p?[A004767(n)]+3)/4+1)` -/
def P1739025614153613624.Spec : Prop :=
  ∀ n, P1739025614153613624.a n = (A089193 (n + 1) : ℚ)

end A089193

/-!
# A089194: Primes p such that p-1 and p+1 are cube- or higher power-free.

The programs for A089194, the canonical program `A089194.P11768801553608245987` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089194 has offset 1).

The definition of A089194 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6187 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089194.P11768801553608245987

`∩[A089189(n+1), A089191(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A089194

/-- `∩[A089189(n+1), A089191(n+1)]` -/
def P11768801553608245987.Spec : Prop :=
  ∀ n, (P11768801553608245987.a n : ℤ) = A089194 (n + 1)

theorem P11768801553608245987.correct : P11768801553608245987.Spec := by
  intro n
  simp only [A089194, Nat.add_sub_cancel]

end A089194

/-! ## A089194.P14098286470784560394

`∩[A089189(n+1), A398167(n+1)]`
-/

namespace A089194.P14098286470784560394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089194.P14098286470784560394

namespace A089194

/-- `∩[A089189(n+1), A398167(n+1)]` -/
def P14098286470784560394.Spec : Prop :=
  ∀ n, (P14098286470784560394.a n : ℤ) = A089194 (n + 1)

end A089194

/-! ## A089194.P10334654221213738481

`∩[A089189(n+1), A340152(n+1)]`
-/

namespace A089194.P10334654221213738481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089189 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089194.P10334654221213738481

namespace A089194

/-- `∩[A089189(n+1), A340152(n+1)]` -/
def P10334654221213738481.Spec : Prop :=
  ∀ n, (P10334654221213738481.a n : ℤ) = A089194 (n + 1)

end A089194

/-! ## A089194.P12612905120747369279

`p?[Δ[A000124(A340152(n+1))]]`
-/

namespace A089194.P12612905120747369279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A340152 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089194.P12612905120747369279

namespace A089194

/-- `p?[Δ[A000124(A340152(n+1))]]` -/
def P12612905120747369279.Spec : Prop :=
  ∀ n, P12612905120747369279.a n = A089194 (n + 1)

end A089194

/-! ## A089194.P3935099881228100933

`record[A097377(A089191(n+1)-1)]`
-/

namespace A089194.P3935099881228100933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097377 (A089191 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089194.P3935099881228100933

namespace A089194

/-- `record[A097377(A089191(n+1)-1)]` -/
def P3935099881228100933.Spec : Prop :=
  ∀ n, P3935099881228100933.a n = A089194 (n + 1)

end A089194

/-! ## A089194.P11960026846803936898

`record[A006530(A066990(n+1)+A066990(n+3))]`
-/

namespace A089194.P11960026846803936898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A066990 (n + 1) + A066990 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089194.P11960026846803936898

namespace A089194

/-- `record[A006530(A066990(n+1)+A066990(n+3))]` -/
def P11960026846803936898.Spec : Prop :=
  ∀ n, P11960026846803936898.a n = A089194 (n + 1)

end A089194

/-!
# A089195: Primes p such that all prime factors of p-1 have exponent 2.

The programs for A089195, the canonical program `A089195.P7949513888669680924` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089195 has offset 1).

The definition of A089195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089195.P7949513888669680924

`record[A347230(A005574(n+1))²+1]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A089195

/-- `record[A347230(A005574(n+1))²+1]` -/
def P7949513888669680924.Spec : Prop :=
  ∀ n, P7949513888669680924.a n = A089195 (n + 1)

theorem P7949513888669680924.correct : P7949513888669680924.Spec := by
  intro n
  simp only [A089195, Nat.add_sub_cancel]

end A089195

/-! ## A089195.P11699877675659351294

`record[A078319(A005574(n+1))]`
-/

namespace A089195.P11699877675659351294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078319 (A005574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089195.P11699877675659351294

namespace A089195

/-- `record[A078319(A005574(n+1))]` -/
def P11699877675659351294.Spec : Prop :=
  ∀ n, P11699877675659351294.a n = A089195 (n + 1)

end A089195

/-! ## A089195.P7101734722682612698

`p?[record[A078310(n+1)]]`
-/

namespace A089195.P7101734722682612698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078310 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089195.P7101734722682612698

namespace A089195

/-- `p?[record[A078310(n+1)]]` -/
def P7101734722682612698.Spec : Prop :=
  ∀ n, P7101734722682612698.a n = A089195 (n + 1)

end A089195

/-! ## A089195.P8931618185322397066

`p?[record[A078322(n+1)]]`
-/

namespace A089195.P8931618185322397066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078322 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089195.P8931618185322397066

namespace A089195

/-- `p?[record[A078322(n+1)]]` -/
def P8931618185322397066.Spec : Prop :=
  ∀ n, P8931618185322397066.a n = A089195 (n + 1)

end A089195

/-! ## A089195.P17927336676323161995

`p?[record[A097378(n+1)]]`
-/

namespace A089195.P17927336676323161995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097378 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089195.P17927336676323161995

namespace A089195

/-- `p?[record[A097378(n+1)]]` -/
def P17927336676323161995.Spec : Prop :=
  ∀ n, P17927336676323161995.a n = A089195 (n + 1)

end A089195

/-!
# A089196: Floor(n / (smallest prime factor of n+1)).

The programs for A089196, there is no canonical definition to state claims against.
-/

/-! ## A089196.P3123109094841670840

`A032742(n+2)-1`
-/

namespace A089196.P3123109094841670840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 2) - 1

end

end A089196.P3123109094841670840

/-! ## A089196.P6006123078214706338

`floor(n/A020639(n+2))`
-/

namespace A089196.P6006123078214706338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A020639 (n + 2) : ℚ)⌋

end

end A089196.P6006123078214706338

/-! ## A089196.P9091675401226298296

`A166250(n+2)-(n+2)`
-/

namespace A089196.P9091675401226298296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166250 (n + 2) - (n + 2 : ℤ)

end

end A089196.P9091675401226298296

/-! ## A089196.P15746704909412148494

`A338281(n+2)-(n+3)`
-/

namespace A089196.P15746704909412148494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338281 (n + 2) - (n + 3 : ℤ)

end

end A089196.P15746704909412148494

/-! ## A089196.P11681849824600458958

`A070935(n+2)/(n+2)-1`
-/

namespace A089196.P11681849824600458958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070935 (n + 2) : ℚ) / (n + 2 : ℚ) - 1

end

end A089196.P11681849824600458958

/-! ## A089196.P7723831594315026202

`∑[ceil(Δ[(n+1)/A020639(n+1)])]`
-/

namespace A089196.P7723831594315026202
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (n + 1) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f2 (n + 1) - f2 n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A089196.P7723831594315026202

/-! ## A089196.P9659766867297159328

`(n+2)/A020639(∏{p}[n+2, #])-1`
-/

namespace A089196.P9659766867297159328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) - 1

end

end A089196.P9659766867297159328

/-! ## A089196.P17505099321010843415

`(n+2)/A020639(2*n-(n-2))-1`
-/

namespace A089196.P17505099321010843415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A020639 ((2 * n : ℤ) - ((n : ℤ) - 2)).toNat : ℚ) - 1

end

end A089196.P17505099321010843415

/-! ## A089196.P8525174870407307291

`A166250(n+2)%A057544(n)`
-/

namespace A089196.P8525174870407307291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166250 (n + 2)) (A057544 n)

end

end A089196.P8525174870407307291

/-! ## A089196.P14104828365282231617

`A180486(n+1)-A182084(n+2)`
-/

namespace A089196.P14104828365282231617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1) - A182084 (n + 2)

end

end A089196.P14104828365282231617

/-! ## A089196.P12464139965591143023

`A064916(n+2)-A020639(n+2)`
-/

namespace A089196.P12464139965591143023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064916 (n + 2) - A020639 (n + 2)

end

end A089196.P12464139965591143023

/-! ## A089196.P12477560937588062241

`A046666(n+2)/A020639(n+2)`
-/

namespace A089196.P12477560937588062241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046666 (n + 2) : ℚ) / (A020639 (n + 2) : ℚ)

end

end A089196.P12477560937588062241

/-! ## A089196.P6656959426071173901

`A338281(n+2)%A009056(n+1)`
-/

namespace A089196.P6656959426071173901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338281 (n + 2)) (A009056 (n + 1))

end

end A089196.P6656959426071173901

/-! ## A089196.P16119136605756016875

`A000203(n+2)-(A326061(n+2)+1)`
-/

namespace A089196.P16119136605756016875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (A326061 (n + 2) + 1)

end

end A089196.P16119136605756016875

/-! ## A089196.P15550232783241456307

`Δ[A280050(n+1)]-1`
-/

namespace A089196.P15550232783241456307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280050 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A089196.P15550232783241456307

/-! ## A089196.P5437740298917794998

`1-A060681(n+2)+n`
-/

namespace A089196.P5437740298917794998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060681 (n + 2) + (n : ℤ)

end

end A089196.P5437740298917794998

/-! ## A089196.P13679229799567875130

`(n+1)%A220096(n+2)`
-/

namespace A089196.P13679229799567875130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A220096 (n + 2))

end

end A089196.P13679229799567875130

/-!
# A089197: Nonadjacent Fibonacci currency: number of ways to make change for n units in a currency system with coins of value 1, 2, 5, 13, 34, 89, ..., Fibonacci(2k-1).

The programs for A089197, there is no canonical definition to state claims against.
-/

/-! ## A089197.P5755389178998126172

`A008621(∑[A319951(A008805(n))])`
-/

namespace A089197.P5755389178998126172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319951 (A008805 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A089197.P5755389178998126172

/-! ## A089197.P15461800046274567411

`A056556(A262987(n)+A039900(n))`
-/

namespace A089197.P15461800046274567411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A262987 n + A039900 n).toNat

end

end A089197.P15461800046274567411

/-! ## A089197.P5682228777799504551

`A056556(A123655(n+1)+A026810(n))`
-/

namespace A089197.P5682228777799504551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A123655 (n + 1) + A026810 n).toNat

end

end A089197.P5682228777799504551

/-! ## A089197.P8626571862634086364

`A056556(A123655(n+1)+A036018(n))`
-/

namespace A089197.P8626571862634086364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A123655 (n + 1) + A036018 n).toNat

end

end A089197.P8626571862634086364

/-! ## A089197.P11402907769590511701

`A056556(A123655(n+1)+A096765(n))`
-/

namespace A089197.P11402907769590511701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A123655 (n + 1) + A096765 n).toNat

end

end A089197.P11402907769590511701

/-!
# A089198: Triangle read by rows: T(n,k) (n>=0, 0<=k<=n) = number of non-squashing partitions of n into distinct parts of which the greatest is k.

The programs for A089198, there is no canonical definition to state claims against.
-/

/-! ## A089198.P15690393302214745158

`ceil(sqrt(8*(n+1)))%2*A059607(n)`
-/

namespace A089198.P15690393302214745158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.sqrt (8 * (n + 1) : ℝ)⌉ 2 * A059607 n

end

end A089198.P15690393302214745158

/-! ## A089198.P5389932545465133154

`A059607(n)*A101688(n)`
-/

namespace A089198.P5389932545465133154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 n * A101688 n

end

end A089198.P5389932545465133154

/-! ## A089198.P10001776186597445653

`A059619(n)*A101688(n)`
-/

namespace A089198.P10001776186597445653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059619 n * A101688 n

end

end A089198.P10001776186597445653

/-! ## A089198.P2924125407177024467

`lcm(A059619(n), A187034(n))`
-/

namespace A089198.P2924125407177024467
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059619 n) (A187034 n)

end

end A089198.P2924125407177024467

/-! ## A089198.P14679256642151975090

`A187034(n)²*A059607(n)`
-/

namespace A089198.P14679256642151975090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187034 n ^ 2 * A059607 n

end

end A089198.P14679256642151975090

/-! ## A089198.P15419051056408595015

`A059607(n)*A134541(n+1)`
-/

namespace A089198.P15419051056408595015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 n * A134541 (n + 1)

end

end A089198.P15419051056408595015

/-! ## A089198.P15519066410371093684

`A059607(n)*A319102(n+1)`
-/

namespace A089198.P15519066410371093684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059607 n * A319102 (n + 1)

end

end A089198.P15519066410371093684

/-! ## A089198.P7284914650706731992

`C(A059607(n), A282988(n+1))`
-/

namespace A089198.P7284914650706731992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059607 n).toNat (A282988 (n + 1)).toNat

end

end A089198.P7284914650706731992

/-! ## A089198.P13262526732073072026

`C(A059619(n), A282988(n+1))`
-/

namespace A089198.P13262526732073072026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059619 n).toNat (A282988 (n + 1)).toNat

end

end A089198.P13262526732073072026

/-! ## A089198.P7964249711097451237

`C(A059607(n), A010766(n+1)²)`
-/

namespace A089198.P7964249711097451237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A059607 n).toNat (A010766 (n + 1) ^ 2).toNat

end

end A089198.P7964249711097451237

/-!
# A089199: Primes p such that p+1 is divisible by a cube.

The programs for A089199, the canonical program `A089199.P16774325504568410811` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A089199 has offset 1).

The definition of A089199 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2892 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A089199.P16774325504568410811

`p?[n*(1-A212793(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A089199

/-- `p?[n*(1-A212793(n+1))]` -/
def P16774325504568410811.Spec : Prop :=
  ∀ n, P16774325504568410811.a n = A089199 (n + 1)

theorem P16774325504568410811.correct : P16774325504568410811.Spec := by
  intro n
  simp only [A089199, Nat.add_sub_cancel]

end A089199

/-! ## A089199.P13147516045720091458

`p?[A046099(n+1)-1]`
-/

namespace A089199.P13147516045720091458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089199.P13147516045720091458

namespace A089199

/-- `p?[A046099(n+1)-1]` -/
def P13147516045720091458.Spec : Prop :=
  ∀ n, P13147516045720091458.a n = A089199 (n + 1)

end A089199

/-! ## A089199.P5997783162067908554

`record[A006530(A046099(n+1)-1)]`
-/

namespace A089199.P5997783162067908554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A046099 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089199.P5997783162067908554

namespace A089199

/-- `record[A006530(A046099(n+1)-1)]` -/
def P5997783162067908554.Spec : Prop :=
  ∀ n, P5997783162067908554.a n = A089199 (n + 1)

end A089199

/-! ## A089199.P8068636099592323535

`∩[A000040(n+1), A046099(n+1)-1]`
-/

namespace A089199.P8068636099592323535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046099 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A089199.P8068636099592323535

namespace A089199

/-- `∩[A000040(n+1), A046099(n+1)-1]` -/
def P8068636099592323535.Spec : Prop :=
  ∀ n, (P8068636099592323535.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P10951096859673137619

`p?[lt[A212793(n+1), 1]]`
-/

namespace A089199.P10951096859673137619
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089199.P10951096859673137619

namespace A089199

/-- `p?[lt[A212793(n+1), 1]]` -/
def P10951096859673137619.Spec : Prop :=
  ∀ n, (P10951096859673137619.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P3273767057711354820

`p?[lt[2, A051903(n+1)]]`
-/

namespace A089199.P3273767057711354820
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089199.P3273767057711354820

namespace A089199

/-- `p?[lt[2, A051903(n+1)]]` -/
def P3273767057711354820.Spec : Prop :=
  ∀ n, (P3273767057711354820.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P12069000078329246724

`record[A020639(lt[2, A051903(n+1)])]`
-/

namespace A089199.P12069000078329246724
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A089199.P12069000078329246724

namespace A089199

/-- `record[A020639(lt[2, A051903(n+1)])]` -/
def P12069000078329246724.Spec : Prop :=
  ∀ n, P12069000078329246724.a n = A089199 (n + 1)

end A089199

/-! ## A089199.P6385588232262792808

`p?[A013929(n+1)-A087049(A015049(n+1))]`
-/

namespace A089199.P6385588232262792808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) - A087049 (A015049 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089199.P6385588232262792808

namespace A089199

/-- `p?[A013929(n+1)-A087049(A015049(n+1))]` -/
def P6385588232262792808.Spec : Prop :=
  ∀ n, P6385588232262792808.a n = A089199 (n + 1)

end A089199

/-! ## A089199.P18215784151084370921

`p?[n-abs(A328722(n+1))]`
-/

namespace A089199.P18215784151084370921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - |A328722 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089199.P18215784151084370921

namespace A089199

/-- `p?[n-abs(A328722(n+1))]` -/
def P18215784151084370921.Spec : Prop :=
  ∀ n, P18215784151084370921.a n = A089199 (n + 1)

end A089199

/-! ## A089199.P15377242988411300231

`p?[n-A349441(n+1)²]`
-/

namespace A089199.P15377242988411300231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A349441 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089199.P15377242988411300231

namespace A089199

/-- `p?[n-A349441(n+1)²]` -/
def P15377242988411300231.Spec : Prop :=
  ∀ n, P15377242988411300231.a n = A089199 (n + 1)

end A089199

/-! ## A089199.P4864082964101562556

`p?[lt[0, A056626(n+1)]]`
-/

namespace A089199.P4864082964101562556
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056626 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A089199.P4864082964101562556

namespace A089199

/-- `p?[lt[0, A056626(n+1)]]` -/
def P4864082964101562556.Spec : Prop :=
  ∀ n, (P4864082964101562556.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P7147135563006340968

`p?[n*(A007427(n+1)+1)]`
-/

namespace A089199.P7147135563006340968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A007427 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A089199.P7147135563006340968

namespace A089199

/-- `p?[n*(A007427(n+1)+1)]` -/
def P7147135563006340968.Spec : Prop :=
  ∀ n, P7147135563006340968.a n = A089199 (n + 1)

end A089199

/-! ## A089199.P2254574951273993054

`eq[A007920(n), A053822(n+1)]`
-/

namespace A089199.P2254574951273993054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089199.P2254574951273993054

namespace A089199

/-- `eq[A007920(n), A053822(n+1)]` -/
def P2254574951273993054.Spec : Prop :=
  ∀ n, (P2254574951273993054.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P15244573718874134480

`eq[A007920(n), A053825(n+1)]`
-/

namespace A089199.P15244573718874134480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089199.P15244573718874134480

namespace A089199

/-- `eq[A007920(n), A053825(n+1)]` -/
def P15244573718874134480.Spec : Prop :=
  ∀ n, (P15244573718874134480.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P4696420578686647349

`eq[A007920(n), A053826(n+1)]`
-/

namespace A089199.P4696420578686647349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089199.P4696420578686647349

namespace A089199

/-- `eq[A007920(n), A053826(n+1)]` -/
def P4696420578686647349.Spec : Prop :=
  ∀ n, (P4696420578686647349.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P10900981528200072038

`eq[A007427(n+1), A072480(n)]`
-/

namespace A089199.P10900981528200072038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089199.P10900981528200072038

namespace A089199

/-- `eq[A007427(n+1), A072480(n)]` -/
def P10900981528200072038.Spec : Prop :=
  ∀ n, (P10900981528200072038.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P3375120104054931811

`eq[A007427(n+1), A086134(n)]`
-/

namespace A089199.P3375120104054931811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086134 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089199.P3375120104054931811

namespace A089199

/-- `eq[A007427(n+1), A086134(n)]` -/
def P3375120104054931811.Spec : Prop :=
  ∀ n, (P3375120104054931811.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P3769789320675428184

`eq[A046692(n+1), A051699(n)]`
-/

namespace A089199.P3769789320675428184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046692 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089199.P3769789320675428184

namespace A089199

/-- `eq[A046692(n+1), A051699(n)]` -/
def P3769789320675428184.Spec : Prop :=
  ∀ n, (P3769789320675428184.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P232410807094596783

`eq[A051699(n), A053822(n+1)]`
-/

namespace A089199.P232410807094596783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053822 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089199.P232410807094596783

namespace A089199

/-- `eq[A051699(n), A053822(n+1)]` -/
def P232410807094596783.Spec : Prop :=
  ∀ n, (P232410807094596783.a n : ℤ) = A089199 (n + 1)

end A089199

/-! ## A089199.P51378354489323906

`eq[A051699(n), A053825(n+1)]`
-/

namespace A089199.P51378354489323906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053825 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A089199.P51378354489323906

namespace A089199

/-- `eq[A051699(n), A053825(n+1)]` -/
def P51378354489323906.Spec : Prop :=
  ∀ n, (P51378354489323906.a n : ℤ) = A089199 (n + 1)

end A089199

