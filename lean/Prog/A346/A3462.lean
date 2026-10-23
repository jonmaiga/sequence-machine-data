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
import Seq.B000.C012
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C001
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

/-!
# A346202: a(n) = L(n)^2, where L is Liouville's function.

The programs for A346202, the canonical program `A346202.P5807257763949245432` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346202 has offset 1).

The definition of A346202 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002819, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346202.P5807257763949245432

`A002819(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A346202

/-- `A002819(n+1)²` -/
def P5807257763949245432.Spec : Prop :=
  ∀ n, P5807257763949245432.a n = A346202 (n + 1)

theorem P5807257763949245432.correct : P5807257763949245432.Spec := by
  intro n
  simp only [A346202, Nat.add_sub_cancel]

end A346202

/-! ## A346202.P8607753005589388553

`∑[(-1)^∑{e}[n+1, #]]²`
-/

namespace A346202.P8607753005589388553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P8607753005589388553

namespace A346202

/-- `∑[(-1)^∑{e}[n+1, #]]²` -/
def P8607753005589388553.Spec : Prop :=
  ∀ n, P8607753005589388553.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P16573553648997471178

`∑[∏{e}[n+1, (-1)^#]]²`
-/

namespace A346202.P16573553648997471178
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (-1) ^ Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P16573553648997471178

namespace A346202

/-- `∑[∏{e}[n+1, (-1)^#]]²` -/
def P16573553648997471178.Spec : Prop :=
  ∀ n, P16573553648997471178.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P3567992584759918843

`∑[A008836(n+1)]²`
-/

namespace A346202.P3567992584759918843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P3567992584759918843

namespace A346202

/-- `∑[A008836(n+1)]²` -/
def P3567992584759918843.Spec : Prop :=
  ∀ n, P3567992584759918843.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P13465457552009609708

`(1-A072203(n+1))²`
-/

namespace A346202.P13465457552009609708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A072203 (n + 1)) ^ 2

end

end A346202.P13465457552009609708

namespace A346202

/-- `(1-A072203(n+1))²` -/
def P13465457552009609708.Spec : Prop :=
  ∀ n, P13465457552009609708.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P4140624308784353784

`∑[(-1)^A001222(n+1)]²`
-/

namespace A346202.P4140624308784353784
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P4140624308784353784

namespace A346202

/-- `∑[(-1)^A001222(n+1)]²` -/
def P4140624308784353784.Spec : Prop :=
  ∀ n, P4140624308784353784.a n = (A346202 (n + 1) : ℚ)

end A346202

/-! ## A346202.P589918445501100877

`∑[(n+1)/A061019(n+1)]²`
-/

namespace A346202.P589918445501100877
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A061019 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P589918445501100877

namespace A346202

/-- `∑[(n+1)/A061019(n+1)]²` -/
def P589918445501100877.Spec : Prop :=
  ∀ n, P589918445501100877.a n = (A346202 (n + 1) : ℚ)

end A346202

/-! ## A346202.P8702976312901381855

`∑[A008683(A007913(n+1))]²`
-/

namespace A346202.P8702976312901381855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P8702976312901381855

namespace A346202

/-- `∑[A008683(A007913(n+1))]²` -/
def P8702976312901381855.Spec : Prop :=
  ∀ n, P8702976312901381855.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P11636041035263109703

`∑[A015795(A001222(n+1))]²`
-/

namespace A346202.P11636041035263109703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015795 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P11636041035263109703

namespace A346202

/-- `∑[A015795(A001222(n+1))]²` -/
def P11636041035263109703.Spec : Prop :=
  ∀ n, P11636041035263109703.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P5123883237133981447

`∑[A033999(A001222(n+1)²)]²`
-/

namespace A346202.P5123883237133981447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A001222 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P5123883237133981447

namespace A346202

/-- `∑[A033999(A001222(n+1)²)]²` -/
def P5123883237133981447.Spec : Prop :=
  ∀ n, P5123883237133981447.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P17864902077385672830

`∑[A062157(A001222(n+1)+1)]²`
-/

namespace A346202.P17864902077385672830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A001222 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P17864902077385672830

namespace A346202

/-- `∑[A062157(A001222(n+1)+1)]²` -/
def P17864902077385672830.Spec : Prop :=
  ∀ n, P17864902077385672830.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P1510967027072320704

`∑[A033999(A046079(2*(n+1)))]²`
-/

namespace A346202.P1510967027072320704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A046079 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P1510967027072320704

namespace A346202

/-- `∑[A033999(A046079(2*(n+1)))]²` -/
def P1510967027072320704.Spec : Prop :=
  ∀ n, P1510967027072320704.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P5309223066019686717

`(A055037(n+1)-A055038(n+1))²`
-/

namespace A346202.P5309223066019686717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055037 (n + 1) - A055038 (n + 1)) ^ 2

end

end A346202.P5309223066019686717

namespace A346202

/-- `(A055037(n+1)-A055038(n+1))²` -/
def P5309223066019686717.Spec : Prop :=
  ∀ n, P5309223066019686717.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P2102390287139478204

`A002819(n+1)*A002819(A028310(n+1))`
-/

namespace A346202.P2102390287139478204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 (n + 1) * A002819 (A028310 (n + 1)).toNat

end

end A346202.P2102390287139478204

namespace A346202

/-- `A002819(n+1)*A002819(A028310(n+1))` -/
def P2102390287139478204.Spec : Prop :=
  ∀ n, P2102390287139478204.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P13017261863203612077

`A002819(A008619(2*n))*A002819(n+1)`
-/

namespace A346202.P13017261863203612077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002819 (A008619 (2 * n)).toNat * A002819 (n + 1)

end

end A346202.P13017261863203612077

namespace A346202

/-- `A002819(A008619(2*n))*A002819(n+1)` -/
def P13017261863203612077.Spec : Prop :=
  ∀ n, P13017261863203612077.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P11927400684588549274

`∑[A355684((n+1)²)]²`
-/

namespace A346202.P11927400684588549274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355684 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P11927400684588549274

namespace A346202

/-- `∑[A355684((n+1)²)]²` -/
def P11927400684588549274.Spec : Prop :=
  ∀ n, P11927400684588549274.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P17255211417074125068

`∑[1-and(2, A000005((n+1)²))]²`
-/

namespace A346202.P17255211417074125068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A000005 ((n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P17255211417074125068

namespace A346202

/-- `∑[1-and(2, A000005((n+1)²))]²` -/
def P17255211417074125068.Spec : Prop :=
  ∀ n, P17255211417074125068.a n = A346202 (n + 1)

end A346202

/-! ## A346202.P15617793860269770880

`∑[1-and(2, A001222((n+1)²))]²`
-/

namespace A346202.P15617793860269770880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 2 (A001222 ((n + 1) ^ 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A346202.P15617793860269770880

namespace A346202

/-- `∑[1-and(2, A001222((n+1)²))]²` -/
def P15617793860269770880.Spec : Prop :=
  ∀ n, P15617793860269770880.a n = A346202 (n + 1)

end A346202

/-!
# A346204: a(n) is the number of permutations on [n] with at least one strong fixed point and at least one small descent.

The programs for A346204, there is no canonical definition to state claims against.
-/

/-! ## A346204.P78584641531172031

`A006932(n+1)-A346199(n+1)`
-/

namespace A346204.P78584641531172031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006932 (n + 1) - A346199 (n + 1)

end

end A346204.P78584641531172031

/-! ## A346204.P2974729760578850912

`A180191(n+1)-A346198(n+1)`
-/

namespace A346204.P2974729760578850912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180191 (n + 1) - A346198 (n + 1)

end

end A346204.P2974729760578850912

/-! ## A346204.P5182520510760307195

`(n+1)!-A000255(n)-A346198(n+1)`
-/

namespace A346204.P5182520510760307195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A000255 n - A346198 (n + 1)

end

end A346204.P5182520510760307195

/-! ## A346204.P15295448729890182049

`A324362(A034856(n+1))-A346198(n+1)`
-/

namespace A346204.P15295448729890182049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324362 (A034856 (n + 1)).toNat - A346198 (n + 1)

end

end A346204.P15295448729890182049

/-! ## A346204.P10622599582302647904

`A006932(n+1)+A346189(n+1)-A000255(n)`
-/

namespace A346204.P10622599582302647904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006932 (n + 1) + (A346189 (n + 1) - A000255 n)

end

end A346204.P10622599582302647904

/-!
# A346208: Expansion of e.g.f.: exp(-3*x) / (2 - exp(x)).

The programs for A346208, there is no canonical definition to state claims against.
-/

/-! ## A346208.P1881159981985343446

`A033999(n)*A171694(A000096(n))`
-/

namespace A346208.P1881159981985343446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A171694 (A000096 n).toNat

end

end A346208.P1881159981985343446

/-! ## A346208.P8211583925346983963

`A171694(A000096(n))*A242652(n-A052928(n))`
-/

namespace A346208.P8211583925346983963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171694 (A000096 n).toNat * A242652 ((n : ℤ) - A052928 n).toNat

end

end A346208.P8211583925346983963

/-!
# A346209: Number of n X n matrices over GF(3) with no eigenvalues in GF(3), i.e., neither 0 nor 1 nor 2 is an eigenvalue.

The programs for A346209, there is no canonical definition to state claims against.
-/

/-! ## A346209.P17839860965914096133

`A346421(∑[n])`
-/

namespace A346209.P17839860965914096133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346421 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346209.P17839860965914096133

/-!
# A346211: Numbers m such that abs(K(m+1) - K(m)) = 1, where K(m) = A002034(m) is the Kempner function.

The programs for A346211, there is no canonical definition to state claims against.
-/

/-! ## A346211.P11004654958945767385

`eq[1, abs(A029717(n+1))]+1`
-/

namespace A346211.P11004654958945767385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A029717 (n + 1)|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346211.P11004654958945767385

/-! ## A346211.P18415845658448121439

`eq[0, A001222(A029717(n+1)²)]+1`
-/

namespace A346211.P18415845658448121439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A029717 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346211.P18415845658448121439

/-! ## A346211.P10229681140218643772

`lt[A067721(n)², A087256(n+1)]`
-/

namespace A346211.P10229681140218643772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067721 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346211.P10229681140218643772

/-!
# A346212: Numbers m such that abs(K(m+1) - K(m)) = 2, and both m and m+1 are squarefree (A005117), where K(m) = A002034(m) is the Kempner function.

The programs for A346212, there is no canonical definition to state claims against.
-/

/-! ## A346212.P8438899553174455296

`A168578(A023856(n+2))`
-/

namespace A346212.P8438899553174455296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168578 (A023856 (n + 2)).toNat

end

end A346212.P8438899553174455296

/-!
# A346213: Number of iterations of A000688 needed to reach 1 starting at n (n is counted).

The programs for A346213, there is no canonical definition to state claims against.
-/

/-! ## A346213.P8478956674262130690

`a(A000688(n+1)-1)+1` with `a(0)=1`
-/

namespace A346213.P8478956674262130690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A000688 (n + 1) - 1).toNat + 1

end

end A346213.P8478956674262130690

/-! ## A346213.P4635656877238308553

`a(∑{d}[n+1, A188585(#)]-1)+1` with `a(0)=1`
-/

namespace A346213.P4635656877238308553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∑ d ∈ Nat.divisors (f1 n), A188585 d - 1).toNat + 1

end

end A346213.P4635656877238308553

/-! ## A346213.P16731945930146502767

`a(∏{e}[n+1, A000041(#)]-1)+1` with `a(0)=1`
-/

namespace A346213.P16731945930146502767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∏ p ∈ Nat.primeFactors (f1 n), A000041 (Nat.factorization (f1 n) p) - 1).toNat + 1

end

end A346213.P16731945930146502767

/-! ## A346213.P16739477082205286565

`a(∏{p}[n+1, A000041(val(n+1, #))]-1)+1` with `a(0)=1`
-/

namespace A346213.P16739477082205286565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (∏ p ∈ Nat.primeFactors (f1 n), A000041 (SequenceMachineLib.valuation (n + 1) p) - 1).toNat + 1

end

end A346213.P16739477082205286565

/-! ## A346213.P6099000991260732863

`a(A238877(2*n+1)-1)+1` with `a(0)=1`
-/

namespace A346213.P6099000991260732863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (A238877 (2 * n + 1) - 1).toNat + 1

end

end A346213.P6099000991260732863

/-!
# A346214: Triangular array read by rows. T(n,k) is the number of nilpotent n X n matrices over GF(2) with index k, 1 <= k <= n, n >= 1.

The programs for A346214, there is no canonical definition to state claims against.
-/

/-! ## A346214.P1955643224051606980

`A011781(A011815(n))*A346412(n+1)`
-/

namespace A346214.P1955643224051606980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011781 (A011815 n).toNat * A346412 (n + 1)

end

end A346214.P1955643224051606980

/-! ## A346214.P3706736593632384328

`A036036(A013991(n))*A346412(n+1)`
-/

namespace A346214.P3706736593632384328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036036 (A013991 n).toNat * A346412 (n + 1)

end

end A346214.P3706736593632384328

/-! ## A346214.P6813260770881965615

`A147351(A059450(n))*A346412(n+1)`
-/

namespace A346214.P6813260770881965615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147351 (A059450 n).toNat * A346412 (n + 1)

end

end A346214.P6813260770881965615

/-! ## A346214.P13954871621800135022

`A382079(A027424(n+1)*A361957(n))`
-/

namespace A346214.P13954871621800135022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382079 (A027424 (n + 1) * A361957 n).toNat

end

end A346214.P13954871621800135022

/-!
# A346215: a(n) is the start of the first maximal string of n consecutive primes such that the sum of squares of pairs of consecutive primes in the string is always divisible by 10.

The programs for A346215, there is no canonical definition to state claims against.
-/

/-! ## A346215.P9809969628408855293

`A006530(A191427(n+1)+A005460(n+1))`
-/

namespace A346215.P9809969628408855293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A191427 (n + 1) + A005460 (n + 1)).toNat

end

end A346215.P9809969628408855293

/-!
# A346216: a(n) = (10^n)-th Ulam number A002858.

The programs for A346216, there is no canonical definition to state claims against.
-/

/-! ## A346216.P15994126996039124841

`A002858(10^n)`
-/

namespace A346216.P15994126996039124841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002858 (10 ^ n)

end

end A346216.P15994126996039124841

/-!
# A346218: Expansion of 1/Pi in signed binary nonadjacent form.

The programs for A346218, there is no canonical definition to state claims against.
-/

/-! ## A346218.P10215584965824803631

`round(sin(2^(n-1))^5)`
-/

namespace A346218.P10215584965824803631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) ^ 5)

end

end A346218.P10215584965824803631

/-! ## A346218.P15948617851142359654

`A353354(A185589(n+4)*A190492(n+2))`
-/

namespace A346218.P15948617851142359654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A185589 (n + 4) * A190492 (n + 2)).toNat

end

end A346218.P15948617851142359654

/-! ## A346218.P5037966386848394536

`A014019(∑{p}[∑[n]+2, #]*A311347(n))`
-/

namespace A346218.P5037966386848394536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014019 (((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) * A311347 n).toNat

end

end A346218.P5037966386848394536

/-! ## A346218.P4266052639197866871

`A353354(A263230(3*(n+1))+A000079(n))`
-/

namespace A346218.P4266052639197866871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353354 (A263230 (3 * (n + 1)) + A000079 n).toNat

end

end A346218.P4266052639197866871

/-! ## A346218.P5193523511539314557

`A033999(n+1)*A106667(A106706(2*n+3))`
-/

namespace A346218.P5193523511539314557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A106667 (A106706 (2 * n + 3)).toNat

end

end A346218.P5193523511539314557

/-!
# A346221: Palindromes that are multiples of 11 and whose digit sum is also a multiple of 11.

The programs for A346221, there is no canonical definition to state claims against.
-/

/-! ## A346221.P11779221098330636057

`∩[A002113(n+1), A216995(n+1)]`
-/

namespace A346221.P11779221098330636057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346221.P11779221098330636057

/-! ## A346221.P15344835483335416926

`∩[A032350(n+1), A216995(n+1)]`
-/

namespace A346221.P15344835483335416926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346221.P15344835483335416926

/-! ## A346221.P278441649599576002

`∩[A082208(n+1), A216995(n+1)]`
-/

namespace A346221.P278441649599576002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346221.P278441649599576002

/-! ## A346221.P12194915454100868460

`∩[A083852(n+1), A216995(n+1)]`
-/

namespace A346221.P12194915454100868460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346221.P12194915454100868460

/-! ## A346221.P6622429160716831923

`∩[A088882(n+1), A216995(n+1)]`
-/

namespace A346221.P6622429160716831923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346221.P6622429160716831923

/-! ## A346221.P17176275306926725842

`∩[A216995(n+1), A325322(n+1)]`
-/

namespace A346221.P17176275306926725842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346221.P17176275306926725842

/-!
# A346224: a(n) = (n!)^2 * Sum_{k=0..floor(n/2)} 1 / ((n-2*k)! * 4^k * k!).

The programs for A346224, the canonical program `A346224.P16692126472245550700` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346224 has offset 0).

The definition of A346224 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346224.P16692126472245550700

`n*a(n-1)+n*(n-1)²*a(n-2)/2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346224

/-- `n*a(n-1)+n*(n-1)²*a(n-2)/2` -/
def P16692126472245550700.Spec : Prop :=
  ∀ n, P16692126472245550700.a n = (A346224 n : ℚ)

end A346224

/-! ## A346224.P17564863357458151948

`A000898(n)/A000079(n)*n!`
-/

namespace A346224.P17564863357458151948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (A000079 n : ℚ) * (Nat.factorial n : ℚ)

end

end A346224.P17564863357458151948

namespace A346224

/-- `A000898(n)/A000079(n)*n!` -/
def P17564863357458151948.Spec : Prop :=
  ∀ n, P17564863357458151948.a n = (A346224 n : ℚ)

end A346224

/-! ## A346224.P1439841194202454874

`A000142(n)/A011782(n)*A000902(n)`
-/

namespace A346224.P1439841194202454874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A011782 n : ℚ) * (A000902 n : ℚ)

end

end A346224.P1439841194202454874

namespace A346224

/-- `A000142(n)/A011782(n)*A000902(n)` -/
def P1439841194202454874.Spec : Prop :=
  ∀ n, P1439841194202454874.a n = (A346224 n : ℚ)

end A346224

/-! ## A346224.P8299729523248565304

`A000898(n)/A004981(n)*A007696(n)`
-/

namespace A346224.P8299729523248565304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (A004981 n : ℚ) * (A007696 n : ℚ)

end

end A346224.P8299729523248565304

namespace A346224

/-- `A000898(n)/A004981(n)*A007696(n)` -/
def P8299729523248565304.Spec : Prop :=
  ∀ n, P8299729523248565304.a n = (A346224 n : ℚ)

end A346224

/-! ## A346224.P18307615381452601739

`A000898(n)/A000079(n)*∏[A028310(n)]`
-/

namespace A346224.P18307615381452601739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000898 n : ℚ) / (A000079 n : ℚ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A346224.P18307615381452601739

namespace A346224

/-- `A000898(n)/A000079(n)*∏[A028310(n)]` -/
def P18307615381452601739.Spec : Prop :=
  ∀ n, P18307615381452601739.a n = (A346224 n : ℚ)

end A346224

/-!
# A346225: Number of n-step 4-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A346225, there is no canonical definition to state claims against.
-/

/-! ## A346225.P15199020127782173433

`A335570(A052905(n+2))`
-/

namespace A346225.P15199020127782173433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A052905 (n + 2)).toNat

end

end A346225.P15199020127782173433

/-! ## A346225.P14660891032978225887

`A335570(eq[4, A025581(n)])`
-/

namespace A346225.P14660891032978225887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346225.P14660891032978225887

/-! ## A346225.P11393150623293587044

`A335570(eq[16, A130321(n)])`
-/

namespace A346225.P11393150623293587044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346225.P11393150623293587044

/-! ## A346225.P10852993284250277242

`A335570(A000217(n+5)-5)`
-/

namespace A346225.P10852993284250277242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A000217 (n + 5) - 5).toNat

end

end A346225.P10852993284250277242

/-! ## A346225.P1439377792741394627

`A335570(A167487(n)+2*A005408(n))`
-/

namespace A346225.P1439377792741394627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A167487 n + 2 * A005408 n).toNat

end

end A346225.P1439377792741394627

/-! ## A346225.P8629900867273834157

`A335570(A005408(n)+A167487(n)+A005408(n))`
-/

namespace A346225.P8629900867273834157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A005408 n + (A167487 n + A005408 n)).toNat

end

end A346225.P8629900867273834157

/-! ## A346225.P1520267701572231560

`A335570(A003057(A000124(2*(n+1)))+A000124(n+3))`
-/

namespace A346225.P1520267701572231560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A003057 (A000124 (2 * (n + 1))).toNat + A000124 (n + 3)).toNat

end

end A346225.P1520267701572231560

/-!
# A346226: Number of n-step 5-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A346226, there is no canonical definition to state claims against.
-/

/-! ## A346226.P1815076472934755717

`A335570(A055999(n+3))`
-/

namespace A346226.P1815076472934755717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A055999 (n + 3)).toNat

end

end A346226.P1815076472934755717

/-! ## A346226.P9313863631562546744

`A335570(eq[32, A130321(n)])`
-/

namespace A346226.P9313863631562546744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346226.P9313863631562546744

/-! ## A346226.P16894427158956881835

`A335570(Δ[A023551(n+1)])`
-/

namespace A346226.P16894427158956881835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (f1 (n + 1) - f1 n).toNat

end

end A346226.P16894427158956881835

/-! ## A346226.P3263295819441927217

`A335570(Δ[A026054(n+3)])`
-/

namespace A346226.P3263295819441927217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (f1 (n + 1) - f1 n).toNat

end

end A346226.P3263295819441927217

/-! ## A346226.P15475669792458323215

`A335570(A000124(n+2)+Δ[A000124(2*(n+2))])`
-/

namespace A346226.P15475669792458323215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A000124 (n + 2) + (f1 (n + 1) - f1 n)).toNat

end

end A346226.P15475669792458323215

/-!
# A346227: Number of n-step 6-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A346227, there is no canonical definition to state claims against.
-/

/-! ## A346227.P733820236380386075

`A335570(eq[6, A025581(n)])`
-/

namespace A346227.P733820236380386075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346227.P733820236380386075

/-! ## A346227.P12894053878397157099

`A335570(eq[7, A193739(n)])`
-/

namespace A346227.P12894053878397157099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346227.P12894053878397157099

/-! ## A346227.P16500333468755014977

`A335570(eq[64, A130321(n)])`
-/

namespace A346227.P16500333468755014977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346227.P16500333468755014977

/-! ## A346227.P7371591008903998427

`A335570(A134869(n+7)-8)`
-/

namespace A346227.P7371591008903998427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A134869 (n + 7) - 8).toNat

end

end A346227.P7371591008903998427

/-! ## A346227.P12344439492110204382

`A335570(eq[7, A004736(n+1)])`
-/

namespace A346227.P12344439492110204382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346227.P12344439492110204382

/-! ## A346227.P11796357647594863294

`A335570(eq[42, A095832(n+1)])`
-/

namespace A346227.P11796357647594863294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095832 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346227.P11796357647594863294

/-! ## A346227.P17164540832191398135

`A335570(Δ[A023551(n+2)]-1)`
-/

namespace A346227.P17164540832191398135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (f1 (n + 1) - f1 n - 1).toNat

end

end A346227.P17164540832191398135

/-! ## A346227.P1892355939765014636

`A335570(Δ[A026054(n+4)]-1)`
-/

namespace A346227.P1892355939765014636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (f1 (n + 1) - f1 n - 1).toNat

end

end A346227.P1892355939765014636

/-!
# A346228: Number of n-step 7-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A346228, there is no canonical definition to state claims against.
-/

/-! ## A346228.P12010208011864567753

`A335570(eq[7, A025581(n)])`
-/

namespace A346228.P12010208011864567753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346228.P12010208011864567753

/-! ## A346228.P3099384911391922895

`A335570(eq[8, A193739(n)])`
-/

namespace A346228.P3099384911391922895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346228.P3099384911391922895

/-! ## A346228.P6506015963534979648

`A335570(A052905(n+5)-3)`
-/

namespace A346228.P6506015963534979648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A052905 (n + 5) - 3).toNat

end

end A346228.P6506015963534979648

/-! ## A346228.P2731925361567657759

`A335570(A161680(n+9)-8)`
-/

namespace A346228.P2731925361567657759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A161680 (n + 9) - 8).toNat

end

end A346228.P2731925361567657759

/-! ## A346228.P1929823268213431836

`A335570(eq[8, A004736(n+1)])`
-/

namespace A346228.P1929823268213431836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346228.P1929823268213431836

/-! ## A346228.P17121278983198781099

`A335570(A000124(n+7)+n-1)`
-/

namespace A346228.P17121278983198781099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A346228.P17121278983198781099

/-! ## A346228.P18305732755301156463

`A335570(A005843(n)+A056119(n)+28)`
-/

namespace A346228.P18305732755301156463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A005843 n + (A056119 n + 28)).toNat

end

end A346228.P18305732755301156463

/-!
# A346229: Number of n-step 8-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A346229, there is no canonical definition to state claims against.
-/

/-! ## A346229.P5833976576621690261

`A335570(A000217(n+9)-9)`
-/

namespace A346229.P5833976576621690261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A000217 (n + 9) - 9).toNat

end

end A346229.P5833976576621690261

/-! ## A346229.P13962416696347189553

`A335570(A000124(n+8)+n-1)`
-/

namespace A346229.P13962416696347189553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A346229.P13962416696347189553

/-! ## A346229.P14970610308210050428

`A335570(A134869(n+8)+n-1)`
-/

namespace A346229.P14970610308210050428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A134869 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A346229.P14970610308210050428

/-! ## A346229.P8778707207809460604

`A335570(A167487(n+6)+A005408(n))`
-/

namespace A346229.P8778707207809460604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A167487 (n + 6) + A005408 n).toNat

end

end A346229.P8778707207809460604

/-! ## A346229.P15633759922203016627

`A335570(A023443(n)+A000124(n+8))`
-/

namespace A346229.P15633759922203016627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A023443 n + A000124 (n + 8)).toNat

end

end A346229.P15633759922203016627

/-!
# A346230: Number of n-step 9-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A346230, there is no canonical definition to state claims against.
-/

/-! ## A346230.P15726331706808596743

`A335570(A000217(n+10)-10)`
-/

namespace A346230.P15726331706808596743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A000217 (n + 10) - 10).toNat

end

end A346230.P15726331706808596743

/-! ## A346230.P9389726583908827547

`A335570(Δ[A026060(n+5)]+10)`
-/

namespace A346230.P9389726583908827547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026060 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (f1 (n + 1) - f1 n + 10).toNat

end

end A346230.P9389726583908827547

/-! ## A346230.P10756653261139307379

`A335570(A000096(n+8)+n+1)`
-/

namespace A346230.P10756653261139307379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A346230.P10756653261139307379

/-! ## A346230.P17238677811134008492

`A335570(2*n+A161680(n+9)+9)`
-/

namespace A346230.P17238677811134008492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 ((2 * n : ℤ) + (A161680 (n + 9) + 9)).toNat

end

end A346230.P17238677811134008492

/-! ## A346230.P1666029146888889823

`A335570(A023443(n)+A000124(n+9))`
-/

namespace A346230.P1666029146888889823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A023443 n + A000124 (n + 9)).toNat

end

end A346230.P1666029146888889823

/-!
# A346231: Number of n-step 10-dimensional nonnegative lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A346231, there is no canonical definition to state claims against.
-/

/-! ## A346231.P13234976576728005642

`A335570(eq[10, A025581(n)])`
-/

namespace A346231.P13234976576728005642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346231.P13234976576728005642

/-! ## A346231.P16740321981257641483

`A335570(eq[11, A193739(n)])`
-/

namespace A346231.P16740321981257641483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346231.P16740321981257641483

/-! ## A346231.P12269116919545760051

`A335570(eq[21, A099375(n)])`
-/

namespace A346231.P12269116919545760051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346231.P12269116919545760051

/-! ## A346231.P990362180664440917

`A335570(A155212(n+7)-3)`
-/

namespace A346231.P990362180664440917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (A155212 (n + 7) - 3).toNat

end

end A346231.P990362180664440917

/-! ## A346231.P2673683512410813714

`A335570(eq[11, A004736(n+1)])`
-/

namespace A346231.P2673683512410813714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335570 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346231.P2673683512410813714

/-!
# A346232: Maximum number of squares in a square grid whose interiors can be touched by a (possibly skew) line segment of length n.

The programs for A346232, the canonical program `A346232.P3483990341073923454` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346232 has offset 1).

The definition of A346232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346232.P3483990341073923454

`floor(sqrt(2*(n+1)²-2))+3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346232

/-- `floor(sqrt(2*(n+1)²-2))+3` -/
def P3483990341073923454.Spec : Prop :=
  ∀ n, P3483990341073923454.a n = A346232 (n + 1)

theorem P3483990341073923454.correct : P3483990341073923454.Spec := by
  intro n
  simp only [A346232, Nat.add_sub_cancel]

end A346232

/-! ## A346232.P376936065844425356

`A000267(A190329(n+1)+A061925(n))`
-/

namespace A346232.P376936065844425356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 (A190329 (n + 1) + A061925 n).toNat

end

end A346232.P376936065844425356

namespace A346232

/-- `A000267(A190329(n+1)+A061925(n))` -/
def P376936065844425356.Spec : Prop :=
  ∀ n, P376936065844425356.a n = A346232 (n + 1)

end A346232

/-! ## A346232.P18031573623425043226

`A293137(A167614(n+1)+A047517(n+1))`
-/

namespace A346232.P18031573623425043226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (A167614 (n + 1) + A047517 (n + 1)).toNat

end

end A346232.P18031573623425043226

namespace A346232

/-- `A293137(A167614(n+1)+A047517(n+1))` -/
def P18031573623425043226.Spec : Prop :=
  ∀ n, P18031573623425043226.a n = A346232 (n + 1)

end A346232

/-! ## A346232.P15668726942077459086

`A003057(A005563(n)+comp[n²]+n+2)`
-/

namespace A346232.P15668726942077459086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A005563 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + (n + 2) : ℤ)).toNat

end

end A346232.P15668726942077459086

namespace A346232

/-- `A003057(A005563(n)+comp[n²]+n+2)` -/
def P15668726942077459086.Spec : Prop :=
  ∀ n, P15668726942077459086.a n = A346232 (n + 1)

end A346232

/-! ## A346232.P16400908049437568503

`A003057(A000037(n+1)+A016789(n)+n²)`
-/

namespace A346232.P16400908049437568503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A000037 (n + 1) + (A016789 n + (n ^ 2 : ℤ))).toNat

end

end A346232.P16400908049437568503

namespace A346232

/-- `A003057(A000037(n+1)+A016789(n)+n²)` -/
def P16400908049437568503.Spec : Prop :=
  ∀ n, P16400908049437568503.a n = A346232 (n + 1)

end A346232

/-!
# A346233: a(n) = A276086(A328623(n)).

The programs for A346233, there is no canonical definition to state claims against.
-/

/-! ## A346233.P9610043364592077483

`A276086(A328623(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346233.P9610043364592077483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A328623 n).toNat

end

end A346233.P9610043364592077483

/-! ## A346233.P3707299768161908474

`A346101(A328622(A289234(n)))`
-/

namespace A346233.P3707299768161908474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346101 (A328622 (A289234 n).toNat).toNat

end

end A346233.P3707299768161908474

/-! ## A346233.P1436423842711917308

`A328580(n)+A328476(A328623(n))`
-/

namespace A346233.P1436423842711917308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328580 n + A328476 (A328623 n).toNat

end

end A346233.P1436423842711917308

/-! ## A346233.P4699322468576049376

`A328571(n)*A328572(A328623(n))`
-/

namespace A346233.P4699322468576049376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328571 n * A328572 (A328623 n).toNat

end

end A346233.P4699322468576049376

/-! ## A346233.P16368334490975116543

`A328627(A328626(A328623(A328626(A328626(n)))))`
-/

namespace A346233.P16368334490975116543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328627 (A328626 (A328623 (A328626 (A328626 n).toNat).toNat).toNat).toNat

end

end A346233.P16368334490975116543

/-!
# A346234: Dirichlet inverse of A003961, where A003961(n) is fully multiplicative with a(prime(k)) = prime(k+1).

The programs for A346234, the canonical program `A346234.P13693537449081961436` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346234 has offset 1).

The definition of A346234 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A008683, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346234.P13693537449081961436

`A008683(n+1)*A003961(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A346234

/-- `A008683(n+1)*A003961(n+1)` -/
def P13693537449081961436.Spec : Prop :=
  ∀ n, P13693537449081961436.a n = A346234 (n + 1)

theorem P13693537449081961436.correct : P13693537449081961436.Spec := by
  intro n
  simp only [A346234, Nat.add_sub_cancel]

end A346234

/-! ## A346234.P16768159536231472461

`A055615(A003961(n+1))`
-/

namespace A346234.P16768159536231472461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A003961 (n + 1)).toNat

end

end A346234.P16768159536231472461

namespace A346234

/-- `A055615(A003961(n+1))` -/
def P16768159536231472461.Spec : Prop :=
  ∀ n, P16768159536231472461.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P7374618530156355670

`∑{d}[n+1, A378221(#)]`
-/

namespace A346234.P7374618530156355670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378221 d

end

end A346234.P7374618530156355670

namespace A346234

/-- `∑{d}[n+1, A378221(#)]` -/
def P7374618530156355670.Spec : Prop :=
  ∀ n, P7374618530156355670.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P17193159513762550885

`(A253885(n)+1)*A008683(n+1)`
-/

namespace A346234.P17193159513762550885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A253885 n + 1) * A008683 (n + 1)

end

end A346234.P17193159513762550885

namespace A346234

/-- `(A253885(n)+1)*A008683(n+1)` -/
def P17193159513762550885.Spec : Prop :=
  ∀ n, P17193159513762550885.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P10711143002200391251

`A008683(n+1)*A318321(n+1)`
-/

namespace A346234.P10711143002200391251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A318321 (n + 1)

end

end A346234.P10711143002200391251

namespace A346234

/-- `A008683(n+1)*A318321(n+1)` -/
def P10711143002200391251.Spec : Prop :=
  ∀ n, P10711143002200391251.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P12294451675722715252

`A008683(n+1)*A328915(n+1)`
-/

namespace A346234.P12294451675722715252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1) * A328915 (n + 1)

end

end A346234.P12294451675722715252

namespace A346234

/-- `A008683(n+1)*A328915(n+1)` -/
def P12294451675722715252.Spec : Prop :=
  ∀ n, P12294451675722715252.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P8528753150981770146

`(A007423(n+1)-1)*A003961(n+1)`
-/

namespace A346234.P8528753150981770146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007423 (n + 1) - 1) * A003961 (n + 1)

end

end A346234.P8528753150981770146

namespace A346234

/-- `(A007423(n+1)-1)*A003961(n+1)` -/
def P8528753150981770146.Spec : Prop :=
  ∀ n, P8528753150981770146.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P11163908260005086941

`floor(A262804(n+1)/2)*A003961(n+1)`
-/

namespace A346234.P11163908260005086941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A262804 (n + 1) : ℚ) / 2⌋ * A003961 (n + 1)

end

end A346234.P11163908260005086941

namespace A346234

/-- `floor(A262804(n+1)/2)*A003961(n+1)` -/
def P11163908260005086941.Spec : Prop :=
  ∀ n, P11163908260005086941.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P18041837414543000803

`∑{d}[n+1, A008683(#)*A378220((n+1)/#)]`
-/

namespace A346234.P18041837414543000803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P18041837414543000803

namespace A346234

/-- `∑{d}[n+1, A008683(#)*A378220((n+1)/#)]` -/
def P18041837414543000803.Spec : Prop :=
  ∀ n, P18041837414543000803.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P3207890578520396273

`∑{d}[n+1, A055615(#)*A349388((n+1)/#)]`
-/

namespace A346234.P3207890578520396273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P3207890578520396273

namespace A346234

/-- `∑{d}[n+1, A055615(#)*A349388((n+1)/#)]` -/
def P3207890578520396273.Spec : Prop :=
  ∀ n, P3207890578520396273.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P10750550103982809458

`∑{d}[n+1, A061019(#)*A347238((n+1)/#)]`
-/

namespace A346234.P10750550103982809458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A061019 d * A347238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P10750550103982809458

namespace A346234

/-- `∑{d}[n+1, A061019(#)*A347238((n+1)/#)]` -/
def P10750550103982809458.Spec : Prop :=
  ∀ n, P10750550103982809458.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P35175637458370924

`∑{d}[n+1, A046692(#)*A378607((n+1)/#)]`
-/

namespace A346234.P35175637458370924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A378607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P35175637458370924

namespace A346234

/-- `∑{d}[n+1, A046692(#)*A378607((n+1)/#)]` -/
def P35175637458370924.Spec : Prop :=
  ∀ n, P35175637458370924.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P12007541879571362504

`∑{d}[n+1, A153881(#)*A346246((n+1)/#)]`
-/

namespace A346234.P12007541879571362504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A153881 d * A346246 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P12007541879571362504

namespace A346234

/-- `∑{d}[n+1, A153881(#)*A346246((n+1)/#)]` -/
def P12007541879571362504.Spec : Prop :=
  ∀ n, P12007541879571362504.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P9066955651934843975

`∑{d}[n+1, A191002(#)*A378229((n+1)/#)]`
-/

namespace A346234.P9066955651934843975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191002 d * A378229 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P9066955651934843975

namespace A346234

/-- `∑{d}[n+1, A191002(#)*A378229((n+1)/#)]` -/
def P9066955651934843975.Spec : Prop :=
  ∀ n, P9066955651934843975.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P16153874778363741033

`∑{d}[n+1, A323893(#)*A349385((n+1)/#)]`
-/

namespace A346234.P16153874778363741033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323893 d * A349385 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P16153874778363741033

namespace A346234

/-- `∑{d}[n+1, A323893(#)*A349385((n+1)/#)]` -/
def P16153874778363741033.Spec : Prop :=
  ∀ n, P16153874778363741033.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P13983466167584316583

`∑{d}[n+1, A346479(#)*A349632((n+1)/#)]`
-/

namespace A346234.P13983466167584316583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346479 d * A349632 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P13983466167584316583

namespace A346234

/-- `∑{d}[n+1, A346479(#)*A349632((n+1)/#)]` -/
def P13983466167584316583.Spec : Prop :=
  ∀ n, P13983466167584316583.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P4014245832151565104

`∑{d}[n+1, A349125(#)*A349382((n+1)/#)]`
-/

namespace A346234.P4014245832151565104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349125 d * A349382 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346234.P4014245832151565104

namespace A346234

/-- `∑{d}[n+1, A349125(#)*A349382((n+1)/#)]` -/
def P4014245832151565104.Spec : Prop :=
  ∀ n, P4014245832151565104.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P8132311877505791895

`A003961(n+1)*A008836(n+1)*A008966(n+1)`
-/

namespace A346234.P8132311877505791895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A008836 (n + 1) * A008966 (n + 1)

end

end A346234.P8132311877505791895

namespace A346234

/-- `A003961(n+1)*A008836(n+1)*A008966(n+1)` -/
def P8132311877505791895.Spec : Prop :=
  ∀ n, P8132311877505791895.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P968871429514703901

`A003961(n+1)*A353457(n+1)*A353458(n+1)`
-/

namespace A346234.P968871429514703901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A353457 (n + 1) * A353458 (n + 1)

end

end A346234.P968871429514703901

namespace A346234

/-- `A003961(n+1)*A353457(n+1)*A353458(n+1)` -/
def P968871429514703901.Spec : Prop :=
  ∀ n, P968871429514703901.a n = A346234 (n + 1)

end A346234

/-! ## A346234.P55066092008422983

`A003961(n+1)*A359154(n+1)*A359155(n+1)`
-/

namespace A346234.P55066092008422983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) * A359154 (n + 1) * A359155 (n + 1)

end

end A346234.P55066092008422983

namespace A346234

/-- `A003961(n+1)*A359154(n+1)*A359155(n+1)` -/
def P55066092008422983.Spec : Prop :=
  ∀ n, P55066092008422983.a n = A346234 (n + 1)

end A346234

/-!
# A346235: Dirichlet inverse of A341530, gcd(n*sigma(A003961(n)), sigma(n)*A003961(n)).

The programs for A346235, there is no canonical definition to state claims against.
-/

/-! ## A346235.P10967645636920477178

`A346236(n+1)-A341530(n+1)`
-/

namespace A346235.P10967645636920477178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346236 (n + 1) - A341530 (n + 1)

end

end A346235.P10967645636920477178

/-! ## A346235.P4264512767157479527

`A346236(n+1)-A341528(n+1)/A341526(n+1)`
-/

namespace A346235.P4264512767157479527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346236 (n + 1) : ℚ) - (A341528 (n + 1) : ℚ) / (A341526 (n + 1) : ℚ)

end

end A346235.P4264512767157479527

/-! ## A346235.P2604549168575934630

`A346236(n+1)-gcd(A341512(n+1), A341528(n+1))`
-/

namespace A346235.P2604549168575934630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346236 (n + 1) - (Int.gcd (A341512 (n + 1)) (A341528 (n + 1)) : ℤ)

end

end A346235.P2604549168575934630

/-! ## A346235.P14176444165338888207

`A346236(n+1)-A342670(A003961(n+1))`
-/

namespace A346235.P14176444165338888207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346236 (n + 1) - A342670 (A003961 (n + 1)).toNat

end

end A346235.P14176444165338888207

/-! ## A346235.P16034079406688365014

`A346236(n+1)-A342670(A045965(n+1))`
-/

namespace A346235.P16034079406688365014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346236 (n + 1) - A342670 (A045965 (n + 1)).toNat

end

end A346235.P16034079406688365014

/-!
# A346236: Sum of A341530 and its Dirichlet inverse.

The programs for A346236, there is no canonical definition to state claims against.
-/

/-! ## A346236.P17152342421471425815

`A341530(n+1)+A346235(n+1)`
-/

namespace A346236.P17152342421471425815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341530 (n + 1) + A346235 (n + 1)

end

end A346236.P17152342421471425815

/-! ## A346236.P2947209275424751954

`A346235(n+1)+gcd(A341512(n+1), A341528(n+1))`
-/

namespace A346236.P2947209275424751954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346235 (n + 1) + (Int.gcd (A341512 (n + 1)) (A341528 (n + 1)) : ℤ)

end

end A346236.P2947209275424751954

/-! ## A346236.P6659815447912655299

`A346235(n+1)+(A341528(n+1)+A341512(n+1))/A341527(n+1)`
-/

namespace A346236.P6659815447912655299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346235 (n + 1) : ℚ) + (A341528 (n + 1) + A341512 (n + 1) : ℚ) / (A341527 (n + 1) : ℚ)

end

end A346236.P6659815447912655299

/-! ## A346236.P17844703091896958054

`A346235(n+1)+A342670(A003961(n+1))`
-/

namespace A346236.P17844703091896958054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346235 (n + 1) + A342670 (A003961 (n + 1)).toNat

end

end A346236.P17844703091896958054

/-! ## A346236.P16779847498711791640

`A346235(n+1)+A342670(A045965(n+1))`
-/

namespace A346236.P16779847498711791640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346235 (n + 1) + A342670 (A045965 (n + 1)).toNat

end

end A346236.P16779847498711791640

/-!
# A346237: Dirichlet inverse of A005187.

The programs for A346237, there is no canonical definition to state claims against.
-/

/-! ## A346237.P8589527868691145798

`A346238(n+1)-A005187(n+1)`
-/

namespace A346237.P8589527868691145798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (n + 1) - A005187 (n + 1)

end

end A346237.P8589527868691145798

/-! ## A346237.P17232225594862360722

`A346238(n+1)-∑[A001511(n+1)]`
-/

namespace A346237.P17232225594862360722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346237.P17232225594862360722

/-! ## A346237.P16528812134071222866

`∑{d}[n+1, A008683(#)*A378991((n+1)/#)]`
-/

namespace A346237.P16528812134071222866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378991 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346237.P16528812134071222866

/-! ## A346237.P1511391159198058326

`∑{d}[n+1, A046692(#)*A378757((n+1)/#)]`
-/

namespace A346237.P1511391159198058326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A378757 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346237.P1511391159198058326

/-! ## A346237.P15746872469995852611

`A346238(n+1)-(A300244(n+1)+A297111(n+1))`
-/

namespace A346237.P15746872469995852611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (n + 1) - (A300244 (n + 1) + A297111 (n + 1))

end

end A346237.P15746872469995852611

/-! ## A346237.P17795447539236687979

`A346238(n+1)-record[A078896(n+1)]`
-/

namespace A346237.P17795447539236687979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346237.P17795447539236687979

/-! ## A346237.P12872630628110042690

`A346238(n+1)-A078896(A103517(n))`
-/

namespace A346237.P12872630628110042690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (n + 1) - A078896 (A103517 n).toNat

end

end A346237.P12872630628110042690

/-! ## A346237.P6319129810498660562

`A346238(n+1)-A011371(2*(n+1))`
-/

namespace A346237.P6319129810498660562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346238 (n + 1) - A011371 (2 * (n + 1))

end

end A346237.P6319129810498660562

/-!
# A346238: Sum of A005187 and its Dirichlet inverse.

The programs for A346238, there is no canonical definition to state claims against.
-/

/-! ## A346238.P11629948941154812560

`A005187(n+1)+A346237(n+1)`
-/

namespace A346238.P11629948941154812560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + A346237 (n + 1)

end

end A346238.P11629948941154812560

/-! ## A346238.P9522614682408538634

`A346237(n+1)+∑[A001511(n+1)]`
-/

namespace A346238.P9522614682408538634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346237 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346238.P9522614682408538634

/-! ## A346238.P15322683962980988906

`A000203(n+1)+A346237(n+1)+A294898(n+1)`
-/

namespace A346238.P15322683962980988906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) + (A346237 (n + 1) + A294898 (n + 1))

end

end A346238.P15322683962980988906

/-! ## A346238.P17527119443362327523

`A297111(n+1)+A346237(n+1)+A300244(n+1)`
-/

namespace A346238.P17527119443362327523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297111 (n + 1) + (A346237 (n + 1) + A300244 (n + 1))

end

end A346238.P17527119443362327523

/-! ## A346238.P6885820471036372015

`A346237(n+1)+record[A078896(n+1)]`
-/

namespace A346238.P6885820471036372015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078896 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346237 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346238.P6885820471036372015

/-! ## A346238.P11636204141979540559

`A346237(n+1)+A078896(A103517(n))`
-/

namespace A346238.P11636204141979540559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346237 (n + 1) + A078896 (A103517 n).toNat

end

end A346238.P11636204141979540559

/-! ## A346238.P4065903381988477417

`A346237(n+1)+A011371(2*(n+1))`
-/

namespace A346238.P4065903381988477417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346237 (n + 1) + A011371 (2 * (n + 1))

end

end A346238.P4065903381988477417

/-!
# A346239: Möbius transform of A341512, sigma(n)*A003961(n) - n*sigma(A003961(n)).

The programs for A346239, the canonical program `A346239.P15670279633828823301` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346239 has offset 1).

The definition of A346239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346239.P3230173341995700908

`A341512(n+1)-A346240(n+1)`
-/

namespace A346239.P3230173341995700908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341512 (n + 1) - A346240 (n + 1)

end

end A346239.P3230173341995700908

namespace A346239

/-- `A341512(n+1)-A346240(n+1)` -/
def P3230173341995700908.Spec : Prop :=
  ∀ n, P3230173341995700908.a n = A346239 (n + 1)

end A346239

/-! ## A346239.P16735966682490682881

`A347125(n+1)-A347124(n+1)`
-/

namespace A346239.P16735966682490682881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347125 (n + 1) - A347124 (n + 1)

end

end A346239.P16735966682490682881

namespace A346239

/-- `A347125(n+1)-A347124(n+1)` -/
def P16735966682490682881.Spec : Prop :=
  ∀ n, P16735966682490682881.a n = A346239 (n + 1)

end A346239

/-! ## A346239.P15670279633828823301

`∑{d}[n+1, A008683(#)*A341512((n+1)/#)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A346239

/-- `∑{d}[n+1, A008683(#)*A341512((n+1)/#)]` -/
def P15670279633828823301.Spec : Prop :=
  ∀ n, P15670279633828823301.a n = A346239 (n + 1)

theorem P15670279633828823301.correct : P15670279633828823301.Spec := by
  intro n
  simp only [A346239, Nat.add_sub_cancel]

end A346239

/-! ## A346239.P10385795463993600522

`∑{d}[n+1, A191002(#)*A347100((n+1)/#)]`
-/

namespace A346239.P10385795463993600522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191002 d * A347100 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346239.P10385795463993600522

namespace A346239

/-- `∑{d}[n+1, A191002(#)*A347100((n+1)/#)]` -/
def P10385795463993600522.Spec : Prop :=
  ∀ n, P10385795463993600522.a n = A346239 (n + 1)

end A346239

/-! ## A346239.P15784077139751913785

`A341529(n+1)-(A346240(n+1)+A341528(n+1))`
-/

namespace A346239.P15784077139751913785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - (A346240 (n + 1) + A341528 (n + 1))

end

end A346239.P15784077139751913785

namespace A346239

/-- `A341529(n+1)-(A346240(n+1)+A341528(n+1))` -/
def P15784077139751913785.Spec : Prop :=
  ∀ n, P15784077139751913785.a n = A346239 (n + 1)

end A346239

/-! ## A346239.P15159912391236945230

`(A347125(n+1)%A347124(n+1))%A341528(n+1)`
-/

namespace A346239.P15159912391236945230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A347125 (n + 1)) (A347124 (n + 1))) (A341528 (n + 1))

end

end A346239.P15159912391236945230

namespace A346239

/-- `(A347125(n+1)%A347124(n+1))%A341528(n+1)` -/
def P15159912391236945230.Spec : Prop :=
  ∀ n, P15159912391236945230.a n = A346239 (n + 1)

end A346239

/-!
# A346240: Difference between A341512 and its Möbius transform.

The programs for A346240, the canonical program `A346240.P13978465434129994439` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346240 has offset 1).

The definition of A346240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A341512, A346239, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346240.P13978465434129994439

`A341512(n+1)-A346239(n+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A346240

/-- `A341512(n+1)-A346239(n+1)` -/
def P13978465434129994439.Spec : Prop :=
  ∀ n, P13978465434129994439.a n = A346240 (n + 1)

theorem P13978465434129994439.correct : P13978465434129994439.Spec := by
  intro n
  simp only [A346240, Nat.add_sub_cancel]

end A346240

/-! ## A346240.P18055110097532946988

`∑{d}[n+1, A157658(#)*A341512((n+1)/#)]`
-/

namespace A346240.P18055110097532946988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157658 d * A341512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346240.P18055110097532946988

namespace A346240

/-- `∑{d}[n+1, A157658(#)*A341512((n+1)/#)]` -/
def P18055110097532946988.Spec : Prop :=
  ∀ n, P18055110097532946988.a n = A346240 (n + 1)

end A346240

/-! ## A346240.P8852381978549104213

`∑{d}[n+1, A057427(#-1)*A346239((n+1)/#)]`
-/

namespace A346240.P8852381978549104213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A346239 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346240.P8852381978549104213

namespace A346240

/-- `∑{d}[n+1, A057427(#-1)*A346239((n+1)/#)]` -/
def P8852381978549104213.Spec : Prop :=
  ∀ n, P8852381978549104213.a n = A346240 (n + 1)

end A346240

/-! ## A346240.P755429056518774181

`A341529(n+1)-(A346239(n+1)+A341528(n+1))`
-/

namespace A346240.P755429056518774181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - (A346239 (n + 1) + A341528 (n + 1))

end

end A346240.P755429056518774181

namespace A346240

/-- `A341529(n+1)-(A346239(n+1)+A341528(n+1))` -/
def P755429056518774181.Spec : Prop :=
  ∀ n, P755429056518774181.a n = A346240 (n + 1)

end A346240

/-! ## A346240.P5657933107184422555

`A341512(n+1)+A347124(n+1)-A347125(n+1)`
-/

namespace A346240.P5657933107184422555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341512 (n + 1) + (A347124 (n + 1) - A347125 (n + 1))

end

end A346240.P5657933107184422555

namespace A346240

/-- `A341512(n+1)+A347124(n+1)-A347125(n+1)` -/
def P5657933107184422555.Spec : Prop :=
  ∀ n, P5657933107184422555.a n = A346240 (n + 1)

end A346240

/-! ## A346240.P5759183853386073705

`A341529(n+1)-(A341528(n+1)-(A347124(n+1)-A347125(n+1)))`
-/

namespace A346240.P5759183853386073705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341529 (n + 1) - (A341528 (n + 1) - (A347124 (n + 1) - A347125 (n + 1)))

end

end A346240.P5759183853386073705

namespace A346240

/-- `A341529(n+1)-(A341528(n+1)-(A347124(n+1)-A347125(n+1)))` -/
def P5759183853386073705.Spec : Prop :=
  ∀ n, P5759183853386073705.a n = A346240 (n + 1)

end A346240

/-!
# A346242: Dirichlet inverse of A324198, where A324198(n) = gcd(n, A276086(n)).

The programs for A346242, there is no canonical definition to state claims against.
-/

/-! ## A346242.P2145363986817294130

`A346243(n+1)-A324198(n+1)`
-/

namespace A346242.P2145363986817294130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346243 (n + 1) - A324198 (n + 1)

end

end A346242.P2145363986817294130

/-! ## A346242.P6265280107721748370

`∑{d}[n+1, A008683(#)*A372568((n+1)/#)]`
-/

namespace A346242.P6265280107721748370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A372568 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346242.P6265280107721748370

/-!
# A346243: Sum of A324198 and its Dirichlet inverse.

The programs for A346243, there is no canonical definition to state claims against.
-/

/-! ## A346243.P8098669253578020128

`A324198(n+1)+A346242(n+1)`
-/

namespace A346243.P8098669253578020128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (n + 1) + A346242 (n + 1)

end

end A346243.P8098669253578020128

/-! ## A346243.P16247038895465525065

`A346242(n+1)+A276086(A351254(n+1))`
-/

namespace A346243.P16247038895465525065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346242 (n + 1) + A276086 (A351254 (n + 1)).toNat

end

end A346243.P16247038895465525065

/-!
# A346244: a(n) = n - A342001(n).

The programs for A346244, the canonical program `A346244.P12938821840467746322` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346244 has offset 1).

The definition of A346244 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A346244.P12938821840467746322

`n+1-A342001(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A346244

/-- `n+1-A342001(n+1)` -/
def P12938821840467746322.Spec : Prop :=
  ∀ n, P12938821840467746322.a n = A346244 (n + 1)

theorem P12938821840467746322.correct : P12938821840467746322.Spec := by
  intro n
  simp only [A346244, Nat.add_sub_cancel]

end A346244

/-! ## A346244.P11325140108243773809

`n+1-A003415(n+1)/A003557(n+1)`
-/

namespace A346244.P11325140108243773809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (A003415 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A346244.P11325140108243773809

namespace A346244

/-- `n+1-A003415(n+1)/A003557(n+1)` -/
def P11325140108243773809.Spec : Prop :=
  ∀ n, P11325140108243773809.a n = (A346244 (n + 1) : ℚ)

end A346244

/-! ## A346244.P14242375871236041361

`1-∑{d}[n+1, A346485(#)]+n`
-/

namespace A346244.P14242375871236041361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ d ∈ Nat.divisors (f1 n), A346485 d + (n : ℤ)

end

end A346244.P14242375871236041361

namespace A346244

/-- `1-∑{d}[n+1, A346485(#)]+n` -/
def P14242375871236041361.Spec : Prop :=
  ∀ n, P14242375871236041361.a n = A346244 (n + 1)

end A346244

/-! ## A346244.P9778975749040194528

`1-(A342001(Δ[n²]-n)-n)`
-/

namespace A346244.P9778975749040194528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A342001 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ))

end

end A346244.P9778975749040194528

namespace A346244

/-- `1-(A342001(Δ[n²]-n)-n)` -/
def P9778975749040194528.Spec : Prop :=
  ∀ n, P9778975749040194528.a n = A346244 (n + 1)

end A346244

/-! ## A346244.P2569773891916623981

`-(A342001(n+1)+A001478(n+1))`
-/

namespace A346244.P2569773891916623981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A342001 (n + 1) + A001478 (n + 1))

end

end A346244.P2569773891916623981

namespace A346244

/-- `-(A342001(n+1)+A001478(n+1))` -/
def P2569773891916623981.Spec : Prop :=
  ∀ n, P2569773891916623981.a n = A346244 (n + 1)

end A346244

/-! ## A346244.P18132485192900233924

`n+1-2/A000005(n+1)*A347129(n+1)`
-/

namespace A346244.P18132485192900233924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - 2 / (A000005 (n + 1) : ℚ) * (A347129 (n + 1) : ℚ)

end

end A346244.P18132485192900233924

namespace A346244

/-- `n+1-2/A000005(n+1)*A347129(n+1)` -/
def P18132485192900233924.Spec : Prop :=
  ∀ n, P18132485192900233924.a n = (A346244 (n + 1) : ℚ)

end A346244

/-! ## A346244.P16349585473385236473

`-(A342001(n+1)+A001489(n+1))`
-/

namespace A346244.P16349585473385236473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A342001 (n + 1) + A001489 (n + 1))

end

end A346244.P16349585473385236473

namespace A346244

/-- `-(A342001(n+1)+A001489(n+1))` -/
def P16349585473385236473.Spec : Prop :=
  ∀ n, P16349585473385236473.a n = A346244 (n + 1)

end A346244

/-! ## A346244.P6427193561671983408

`A024000(A342001(n+1))+n`
-/

namespace A346244.P6427193561671983408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A342001 (n + 1)).toNat + (n : ℤ)

end

end A346244.P6427193561671983408

namespace A346244

/-- `A024000(A342001(n+1))+n` -/
def P6427193561671983408.Spec : Prop :=
  ∀ n, P6427193561671983408.a n = A346244 (n + 1)

end A346244

/-! ## A346244.P1359822314597275091

`1-A348498((n+1)²)+n`
-/

namespace A346244.P1359822314597275091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A348498 ((n + 1) ^ 2) + (n : ℤ)

end

end A346244.P1359822314597275091

namespace A346244

/-- `1-A348498((n+1)²)+n` -/
def P1359822314597275091.Spec : Prop :=
  ∀ n, P1359822314597275091.a n = A346244 (n + 1)

end A346244

/-! ## A346244.P518553537948670422

`n+1-A348498(∑[2*n+1])`
-/

namespace A346244.P518553537948670422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A348498 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346244.P518553537948670422

namespace A346244

/-- `n+1-A348498(∑[2*n+1])` -/
def P518553537948670422.Spec : Prop :=
  ∀ n, P518553537948670422.a n = A346244 (n + 1)

end A346244

/-!
# A346245: Numbers k for which A003415(k) > k*A003557(k).

The programs for A346245, the canonical program `A346245.P11917362753608670902` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346245 has offset 1).

The definition of A346245 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1970 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346245.P11917362753608670902

`∩[A087248(n+1), A226944(n+1)]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A346245

/-- `∩[A087248(n+1), A226944(n+1)]` -/
def P11917362753608670902.Spec : Prop :=
  ∀ n, (P11917362753608670902.a n : ℤ) = A346245 (n + 1)

theorem P11917362753608670902.correct : P11917362753608670902.Spec := by
  intro n
  simp only [A346245, Nat.add_sub_cancel]

end A346245

/-! ## A346245.P10521688949984875458

`∩[A226944(n+1), A389463(n+1)]`
-/

namespace A346245.P10521688949984875458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P10521688949984875458

namespace A346245

/-- `∩[A226944(n+1), A389463(n+1)]` -/
def P10521688949984875458.Spec : Prop :=
  ∀ n, (P10521688949984875458.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P15507202669867068620

`∩[A226944(n+1), A381740(n+1)]`
-/

namespace A346245.P15507202669867068620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P15507202669867068620

namespace A346245

/-- `∩[A226944(n+1), A381740(n+1)]` -/
def P15507202669867068620.Spec : Prop :=
  ∀ n, (P15507202669867068620.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P14487539621200192487

`record[A007913(A226944(n+1))]`
-/

namespace A346245.P14487539621200192487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A226944 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346245.P14487539621200192487

namespace A346245

/-- `record[A007913(A226944(n+1))]` -/
def P14487539621200192487.Spec : Prop :=
  ∀ n, P14487539621200192487.a n = A346245 (n + 1)

end A346245

/-! ## A346245.P14241169721128990849

`record[A007947(A226944(n+2))]`
-/

namespace A346245.P14241169721128990849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A226944 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346245.P14241169721128990849

namespace A346245

/-- `record[A007947(A226944(n+2))]` -/
def P14241169721128990849.Spec : Prop :=
  ∀ n, P14241169721128990849.a n = A346245 (n + 1)

end A346245

/-! ## A346245.P6543193097013444912

`filter[A226944(n+1), A008966(#)]`
-/

namespace A346245.P6543193097013444912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A346245.P6543193097013444912

namespace A346245

/-- `filter[A226944(n+1), A008966(#)]` -/
def P6543193097013444912.Spec : Prop :=
  ∀ n, P6543193097013444912.a n = A346245 (n + 1)

end A346245

/-! ## A346245.P5807935449746391657

`filter[A087248(n+1), A369048(#)]`
-/

namespace A346245.P5807935449746391657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A346245.P5807935449746391657

namespace A346245

/-- `filter[A087248(n+1), A369048(#)]` -/
def P5807935449746391657.Spec : Prop :=
  ∀ n, P5807935449746391657.a n = A346245 (n + 1)

end A346245

/-! ## A346245.P15826425729904227218

`filter[A226944(n+1), A354819(#)]`
-/

namespace A346245.P15826425729904227218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A346245.P15826425729904227218

namespace A346245

/-- `filter[A226944(n+1), A354819(#)]` -/
def P15826425729904227218.Spec : Prop :=
  ∀ n, P15826425729904227218.a n = A346245 (n + 1)

end A346245

/-! ## A346245.P1211858407807808624

`filter[A226944(n+1), A380469(#)]`
-/

namespace A346245.P1211858407807808624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A346245.P1211858407807808624

namespace A346245

/-- `filter[A226944(n+1), A380469(#)]` -/
def P1211858407807808624.Spec : Prop :=
  ∀ n, P1211858407807808624.a n = A346245 (n + 1)

end A346245

/-! ## A346245.P8765758553460440034

`filter[A164596(n+1), A369048(#)]`
-/

namespace A346245.P8765758553460440034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369048 (f1 j).toNat = 1) n)

end

end A346245.P8765758553460440034

namespace A346245

/-- `filter[A164596(n+1), A369048(#)]` -/
def P8765758553460440034.Spec : Prop :=
  ∀ n, P8765758553460440034.a n = A346245 (n + 1)

end A346245

/-! ## A346245.P15314252540579927000

`∩[A164596(n+1), A226944(n+1)]`
-/

namespace A346245.P15314252540579927000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P15314252540579927000

namespace A346245

/-- `∩[A164596(n+1), A226944(n+1)]` -/
def P15314252540579927000.Spec : Prop :=
  ∀ n, (P15314252540579927000.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P16914689988265703996

`∩[A226944(n+1), A392009(n+1)]`
-/

namespace A346245.P16914689988265703996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P16914689988265703996

namespace A346245

/-- `∩[A226944(n+1), A392009(n+1)]` -/
def P16914689988265703996.Spec : Prop :=
  ∀ n, (P16914689988265703996.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P16374392766307486783

`filter[A226944(n+1), A379966(#)]`
-/

namespace A346245.P16374392766307486783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379966 (f1 j).toNat = 1) n)

end

end A346245.P16374392766307486783

namespace A346245

/-- `filter[A226944(n+1), A379966(#)]` -/
def P16374392766307486783.Spec : Prop :=
  ∀ n, P16374392766307486783.a n = A346245 (n + 1)

end A346245

/-! ## A346245.P4667339086024968600

`∩[A039956(n+1), A226944(n+1)]`
-/

namespace A346245.P4667339086024968600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P4667339086024968600

namespace A346245

/-- `∩[A039956(n+1), A226944(n+1)]` -/
def P4667339086024968600.Spec : Prop :=
  ∀ n, (P4667339086024968600.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P13476110975237835861

`∩[A226944(n+1), A392262(n+1)]`
-/

namespace A346245.P13476110975237835861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P13476110975237835861

namespace A346245

/-- `∩[A226944(n+1), A392262(n+1)]` -/
def P13476110975237835861.Spec : Prop :=
  ∀ n, (P13476110975237835861.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P14396270707005092202

`∩[A226944(n+1), A395270(n+1)]`
-/

namespace A346245.P14396270707005092202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395270 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P14396270707005092202

namespace A346245

/-- `∩[A226944(n+1), A395270(n+1)]` -/
def P14396270707005092202.Spec : Prop :=
  ∀ n, (P14396270707005092202.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P15710131639995332619

`∩[A226944(n+1), A350352(n+1)]`
-/

namespace A346245.P15710131639995332619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P15710131639995332619

namespace A346245

/-- `∩[A226944(n+1), A350352(n+1)]` -/
def P15710131639995332619.Spec : Prop :=
  ∀ n, (P15710131639995332619.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P7739009686080575683

`∩[A068919(n+1), A226944(n+1)]`
-/

namespace A346245.P7739009686080575683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P7739009686080575683

namespace A346245

/-- `∩[A068919(n+1), A226944(n+1)]` -/
def P7739009686080575683.Spec : Prop :=
  ∀ n, (P7739009686080575683.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P12861010118736023325

`∩[A039956(n+1), A083348(n+1)]`
-/

namespace A346245.P12861010118736023325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P12861010118736023325

namespace A346245

/-- `∩[A039956(n+1), A083348(n+1)]` -/
def P12861010118736023325.Spec : Prop :=
  ∀ n, (P12861010118736023325.a n : ℤ) = A346245 (n + 1)

end A346245

/-! ## A346245.P17608757149344846035

`∩[A068919(n+1), A083348(n+1)]`
-/

namespace A346245.P17608757149344846035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A346245.P17608757149344846035

namespace A346245

/-- `∩[A068919(n+1), A083348(n+1)]` -/
def P17608757149344846035.Spec : Prop :=
  ∀ n, (P17608757149344846035.a n : ℤ) = A346245 (n + 1)

end A346245

/-!
# A346246: Dirichlet inverse of A344587, 2*A003961(n) - sigma(A003961(n)).

The programs for A346246, there is no canonical definition to state claims against.
-/

/-! ## A346246.P5996344341277351224

`A346247(n+1)-A344587(n+1)`
-/

namespace A346246.P5996344341277351224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346247 (n + 1) - A344587 (n + 1)

end

end A346246.P5996344341277351224

/-! ## A346246.P13294367924343275264

`A323910(A003961(n+1))`
-/

namespace A346246.P13294367924343275264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (A003961 (n + 1)).toNat

end

end A346246.P13294367924343275264

/-! ## A346246.P16050707187036981587

`∑{d}[n+1, A074206(#)*A346234((n+1)/#)]`
-/

namespace A346246.P16050707187036981587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A074206 d * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346246.P16050707187036981587

/-! ## A346246.P18119198040963633515

`∑{d}[n+1, A067824(#)*A378221((n+1)/#)]`
-/

namespace A346246.P18119198040963633515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067824 d * A378221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346246.P18119198040963633515

/-! ## A346246.P1301559603431041772

`∑{d}[n+1, A174725(#)*A378220((n+1)/#)]`
-/

namespace A346246.P1301559603431041772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d * A378220 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346246.P1301559603431041772

/-! ## A346246.P12807063170631790709

`∑{d}[n+1, A323910(#)*A349388((n+1)/#)]`
-/

namespace A346246.P12807063170631790709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346246.P12807063170631790709

/-! ## A346246.P1960503511229352064

`∑{d}[n+1, A378432(#)*A378607((n+1)/#)]`
-/

namespace A346246.P1960503511229352064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378432 d * A378607 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346246.P1960503511229352064

/-! ## A346246.P1412278440377324054

`∑{d}[n+1, A002033(#-1)*A346234((n+1)/#)]`
-/

namespace A346246.P1412278440377324054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002033 (d - 1) * A346234 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346246.P1412278440377324054

/-! ## A346246.P294346500233375800

`A346247(n+1)+A153881(n+2)*A344587(n+1)`
-/

namespace A346246.P294346500233375800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346247 (n + 1) + A153881 (n + 2) * A344587 (n + 1)

end

end A346246.P294346500233375800

/-! ## A346246.P14476350206206614328

`A323910(A253885(n)+1)`
-/

namespace A346246.P14476350206206614328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (A253885 n + 1).toNat

end

end A346246.P14476350206206614328

/-! ## A346246.P7105872289060256153

`A323910(or(1, A253885(n)))`
-/

namespace A346246.P7105872289060256153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (Int.lor 1 (A253885 n)).toNat

end

end A346246.P7105872289060256153

/-! ## A346246.P32645971221452147

`A323910(xor(1, A253885(n)))`
-/

namespace A346246.P32645971221452147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (Int.xor 1 (A253885 n)).toNat

end

end A346246.P32645971221452147

/-! ## A346246.P4862048521941628368

`A323910(A297166(2*(n+1)))`
-/

namespace A346246.P4862048521941628368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (A297166 (2 * (n + 1))).toNat

end

end A346246.P4862048521941628368

/-! ## A346246.P17615667506298540111

`A323910(2*A048673(n+1)-1)`
-/

namespace A346246.P17615667506298540111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (2 * A048673 (n + 1) - 1).toNat

end

end A346246.P17615667506298540111

/-! ## A346246.P11159368664309440887

`A323910(round(A246676(4*n+2)/3))`
-/

namespace A346246.P11159368664309440887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3)).toNat

end

end A346246.P11159368664309440887

/-! ## A346246.P5734045498428341804

`A346247(n+1)-A033879(A003961(n+1))`
-/

namespace A346246.P5734045498428341804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346247 (n + 1) - A033879 (A003961 (n + 1)).toNat

end

end A346246.P5734045498428341804

/-! ## A346246.P2113437350344523706

`A323911(A003961(n+1))-A344587(n+1)`
-/

namespace A346246.P2113437350344523706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323911 (A003961 (n + 1)).toNat - A344587 (n + 1)

end

end A346246.P2113437350344523706

/-! ## A346246.P17961956412473154342

`A323910(A048673(n+1)+A048673(n+1)-1)`
-/

namespace A346246.P17961956412473154342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323910 (A048673 (n + 1) + (A048673 (n + 1) - 1)).toNat

end

end A346246.P17961956412473154342

/-!
# A346247: Sum of A344587 (the deficiency of prime shifted n) and its Dirichlet inverse.

The programs for A346247, there is no canonical definition to state claims against.
-/

/-! ## A346247.P16436778595105473167

`A344587(n+1)+A346246(n+1)`
-/

namespace A346247.P16436778595105473167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A346246 (n + 1)

end

end A346247.P16436778595105473167

/-! ## A346247.P17915048156717653399

`A323911(A003961(n+1))`
-/

namespace A346247.P17915048156717653399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323911 (A003961 (n + 1)).toNat

end

end A346247.P17915048156717653399

/-! ## A346247.P15950892349578832337

`A323911(A253885(n)+1)`
-/

namespace A346247.P15950892349578832337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323911 (A253885 n + 1).toNat

end

end A346247.P15950892349578832337

/-! ## A346247.P8268809195452496537

`A346246(n+1)+A033879(A003961(n+1))`
-/

namespace A346247.P8268809195452496537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346246 (n + 1) + A033879 (A003961 (n + 1)).toNat

end

end A346247.P8268809195452496537

/-! ## A346247.P3522171030936615965

`A346246(n+1)+A033879(A045965(n+1))`
-/

namespace A346247.P3522171030936615965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346246 (n + 1) + A033879 (A045965 (n + 1)).toNat

end

end A346247.P3522171030936615965

/-! ## A346247.P6662473659837330477

`A323911(A286385(n+1)+A000203(n+1))`
-/

namespace A346247.P6662473659837330477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323911 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A346247.P6662473659837330477

/-! ## A346247.P10022853562002773445

`A346246(n+1)+A033879(A253885(n)+1)`
-/

namespace A346247.P10022853562002773445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346246 (n + 1) + A033879 (A253885 n + 1).toNat

end

end A346247.P10022853562002773445

/-! ## A346247.P15831113716914499654

`A344587(n+1)+A323910(A003961(n+1))`
-/

namespace A346247.P15831113716914499654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A323910 (A003961 (n + 1)).toNat

end

end A346247.P15831113716914499654

/-! ## A346247.P3620511643920899484

`A344587(n+1)+A323910(A253885(n)+1)`
-/

namespace A346247.P3620511643920899484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A323910 (A253885 n + 1).toNat

end

end A346247.P3620511643920899484

/-! ## A346247.P2243721411664825667

`A346246(n+1)+A033879(A297166(2*(n+1)))`
-/

namespace A346247.P2243721411664825667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346246 (n + 1) + A033879 (A297166 (2 * (n + 1))).toNat

end

end A346247.P2243721411664825667

/-! ## A346247.P2999313728079526078

`A344587(n+1)+A323910(A297166(2*(n+1)))`
-/

namespace A346247.P2999313728079526078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A323910 (A297166 (2 * (n + 1))).toNat

end

end A346247.P2999313728079526078

/-! ## A346247.P10249483093469523853

`A344587(n+1)+A323910(2*A048673(n+1)-1)`
-/

namespace A346247.P10249483093469523853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A323910 (2 * A048673 (n + 1) - 1).toNat

end

end A346247.P10249483093469523853

/-! ## A346247.P7784568228811269348

`A344587(n+1)+A323910(round(A246676(4*n+2)/3))`
-/

namespace A346247.P7784568228811269348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344587 (n + 1) + A323910 (SequenceMachineLib.roundAway ((A246676 (4 * n + 2) : ℚ) / 3)).toNat

end

end A346247.P7784568228811269348

/-!
# A346248: Dirichlet inverse of -A252748, 2*n - A003961(n).

The programs for A346248, there is no canonical definition to state claims against.
-/

/-! ## A346248.P11854462101380250976

`A346250(n+1)+A252748(n+1)`
-/

namespace A346248.P11854462101380250976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346250 (n + 1) + A252748 (n + 1)

end

end A346248.P11854462101380250976

/-! ## A346248.P8491007586178458824

`∑{d}[n+1, A378753(#)]`
-/

namespace A346248.P8491007586178458824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378753 d

end

end A346248.P8491007586178458824

/-! ## A346248.P13203167479284936221

`A346250(n+1)+Δ[A252749(n)]`
-/

namespace A346248.P13203167479284936221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346250 (n + 1) + (f1 (n + 1) - f1 n)

end

end A346248.P13203167479284936221

/-! ## A346248.P1108810748597095843

`∑{d}[n+1, A008683(#)*A376404((n+1)/#)]`
-/

namespace A346248.P1108810748597095843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A376404 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346248.P1108810748597095843

/-! ## A346248.P2206696254851001338

`∑{d}[n+1, A323910(#)*A378755((n+1)/#)]`
-/

namespace A346248.P2206696254851001338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A323910 d * A378755 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346248.P2206696254851001338

/-! ## A346248.P4048284578496377644

`A003961(n+1)+A346250(n+1)-2*(n+1)`
-/

namespace A346248.P4048284578496377644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1) + (A346250 (n + 1) - (2 * (n + 1) : ℤ))

end

end A346248.P4048284578496377644

/-! ## A346248.P11738388098085111715

`A346250(n+1)+A253885(n)-A005408(n)`
-/

namespace A346248.P11738388098085111715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346250 (n + 1) + (A253885 n - A005408 n)

end

end A346248.P11738388098085111715

/-! ## A346248.P17324448760056111952

`A045965(n+1)+A346250(n+1)-A051755(n+2)`
-/

namespace A346248.P17324448760056111952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045965 (n + 1) + (A346250 (n + 1) - A051755 (n + 2))

end

end A346248.P17324448760056111952

/-!
# A346249: Möbius transform of A337549.

The programs for A346249, the canonical program `A346249.P5829520662776676678` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346249 has offset 1).

The definition of A346249 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346249.P5829520662776676678

`∑{d}[n+1, A007427(#)*A286385((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A346249

/-- `∑{d}[n+1, A007427(#)*A286385((n+1)/#)]` -/
def P5829520662776676678.Spec : Prop :=
  ∀ n, P5829520662776676678.a n = A346249 (n + 1)

theorem P5829520662776676678.correct : P5829520662776676678.Spec := by
  intro n
  simp only [A346249, Nat.add_sub_cancel]

end A346249

/-! ## A346249.P9283323413835089109

`∑{d}[n+1, A008683(#)*A337549((n+1)/#)]`
-/

namespace A346249.P9283323413835089109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A337549 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A346249.P9283323413835089109

namespace A346249

/-- `∑{d}[n+1, A008683(#)*A337549((n+1)/#)]` -/
def P9283323413835089109.Spec : Prop :=
  ∀ n, P9283323413835089109.a n = A346249 (n + 1)

end A346249

/-! ## A346249.P17755977141369629249

`A007431(A003961(n+1))-Δ[A005728(n)]`
-/

namespace A346249.P17755977141369629249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A003961 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A346249.P17755977141369629249

namespace A346249

/-- `A007431(A003961(n+1))-Δ[A005728(n)]` -/
def P17755977141369629249.Spec : Prop :=
  ∀ n, P17755977141369629249.a n = A346249 (n + 1)

end A346249

/-! ## A346249.P1824932439206132507

`A007431(A003961(n+1))-A000010(n+1)`
-/

namespace A346249.P1824932439206132507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 (A003961 (n + 1)).toNat - A000010 (n + 1)

end

end A346249.P1824932439206132507

namespace A346249

/-- `A007431(A003961(n+1))-A000010(n+1)` -/
def P1824932439206132507.Spec : Prop :=
  ∀ n, P1824932439206132507.a n = A346249 (n + 1)

end A346249

/-! ## A346249.P18078417259732095012

`A007431(A003961(n+1))-log2(A066781(n+1))`
-/

namespace A346249.P18078417259732095012
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A007431 (A003961 (n + 1)).toNat : ℝ) - Real.logb 2 (A066781 (n + 1) : ℝ)

end

end A346249.P18078417259732095012

namespace A346249

/-- `A007431(A003961(n+1))-log2(A066781(n+1))` -/
def P18078417259732095012.Spec : Prop :=
  ∀ n, P18078417259732095012.a n = (A346249 (n + 1) : ℝ)

end A346249

/-!
# A346250: Sum of -A252748 and its Dirichlet inverse.

The programs for A346250, there is no canonical definition to state claims against.
-/

/-! ## A346250.P17969183673367490629

`A346248(n+1)-A252748(n+1)`
-/

namespace A346250.P17969183673367490629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346248 (n + 1) - A252748 (n + 1)

end

end A346250.P17969183673367490629

/-! ## A346250.P3899490362315401387

`A346248(n+1)-Δ[A252749(n)]`
-/

namespace A346250.P3899490362315401387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346248 (n + 1) - (f1 (n + 1) - f1 n)

end

end A346250.P3899490362315401387

/-! ## A346250.P9468098715468524512

`A346248(n+1)+n+1-A336853(n+1)`
-/

namespace A346250.P9468098715468524512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346248 (n + 1) + ((n + 1 : ℤ) - A336853 (n + 1))

end

end A346250.P9468098715468524512

/-! ## A346250.P931950269868062122

`A346248(n+1)+A005408(n)-A253885(n)`
-/

namespace A346250.P931950269868062122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346248 (n + 1) + (A005408 n - A253885 n)

end

end A346250.P931950269868062122

/-! ## A346250.P7449070884245307867

`A346248(n+1)+Δ[A027688(n)]-A003961(n+1)`
-/

namespace A346250.P7449070884245307867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027688 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346248 (n + 1) + (f1 (n + 1) - f1 n - A003961 (n + 1))

end

end A346250.P7449070884245307867

/-!
# A346252: a(n) = A342002(A328622(n)).

The programs for A346252, there is no canonical definition to state claims against.
-/

/-! ## A346252.P14050176358598948861

`A342002(A328622(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346252.P14050176358598948861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A328622 n).toNat

end

end A346252.P14050176358598948861

/-! ## A346252.P10774909244603147175

`A342001(A346102(n))`
-/

namespace A346252.P10774909244603147175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A346102 n).toNat

end

end A346252.P10774909244603147175

/-! ## A346252.P4200125020500868664

`A344762(A328625(A328622(2*n-n)))`
-/

namespace A346252.P4200125020500868664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344762 (A328625 (A328622 (2 * n - n)).toNat).toNat

end

end A346252.P4200125020500868664

/-! ## A346252.P12586768057667073233

`A344760(A328623(A289234(n)))`
-/

namespace A346252.P12586768057667073233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (A328623 (A289234 n).toNat).toNat

end

end A346252.P12586768057667073233

/-! ## A346252.P12583261974339883790

`A346253(A328622(A328622(A328622(A328623(n)))))`
-/

namespace A346252.P12583261974339883790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346253 (A328622 (A328622 (A328622 (A328623 n).toNat).toNat).toNat).toNat

end

end A346252.P12583261974339883790

/-!
# A346253: a(n) = A342002(A328623(n)).

The programs for A346253, there is no canonical definition to state claims against.
-/

/-! ## A346253.P7289976454466105772

`A342002(A328623(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A346253.P7289976454466105772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A328623 n).toNat

end

end A346253.P7289976454466105772

/-! ## A346253.P8569668398963126395

`A342001(A346233(n))`
-/

namespace A346253.P8569668398963126395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342001 (A346233 n).toNat

end

end A346253.P8569668398963126395

/-! ## A346253.P17869155114020037176

`A344760(A328622(A289234(n)))`
-/

namespace A346253.P17869155114020037176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (A328622 (A289234 n).toNat).toNat

end

end A346253.P17869155114020037176

/-! ## A346253.P12644935123815509400

`A346252(A328623(A328623(A328623(A328622(n)))))`
-/

namespace A346253.P12644935123815509400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346252 (A328623 (A328623 (A328623 (A328622 n).toNat).toNat).toNat).toNat

end

end A346253.P12644935123815509400

/-! ## A346253.P7696784045246733002

`A351953(n)/A040290(A368546(n))`
-/

namespace A346253.P7696784045246733002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351953 n : ℚ) / (A040290 (A368546 n).toNat : ℚ)

end

end A346253.P7696784045246733002

/-!
# A346254: Dirichlet inverse of A336849.

The programs for A346254, there is no canonical definition to state claims against.
-/

/-! ## A346254.P17635173989601428234

`A346255(n+1)-A336849(n+1)`
-/

namespace A346254.P17635173989601428234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346255 (n + 1) - A336849 (n + 1)

end

end A346254.P17635173989601428234

/-! ## A346254.P7899154547227541010

`A346255(n+1)-A003961(A348941(n+1))`
-/

namespace A346254.P7899154547227541010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346255 (n + 1) - A003961 (A348941 (n + 1)).toNat

end

end A346254.P7899154547227541010

/-! ## A346254.P3872644380638865756

`A346255(n+1)-A003961(n+1)/A336850(n+1)`
-/

namespace A346254.P3872644380638865756
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346255 (n + 1) : ℚ) - (A003961 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A346254.P3872644380638865756

/-! ## A346254.P288941308750421813

`A346255(n+1)-(A003973(n+1)-A336851(n+1))/A336850(n+1)`
-/

namespace A346254.P288941308750421813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346255 (n + 1) : ℚ) - (A003973 (n + 1) - A336851 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A346254.P288941308750421813

/-! ## A346254.P8030662205298301419

`A346255(n+1)-A017666(A003961(n+1))`
-/

namespace A346254.P8030662205298301419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346255 (n + 1) - A017666 (A003961 (n + 1)).toNat

end

end A346254.P8030662205298301419

/-!
# A346255: Sum of A336849 and its Dirichlet inverse.

The programs for A346255, there is no canonical definition to state claims against.
-/

/-! ## A346255.P8743597264326541108

`A336849(n+1)+A346254(n+1)`
-/

namespace A346255.P8743597264326541108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (n + 1) + A346254 (n + 1)

end

end A346255.P8743597264326541108

/-! ## A346255.P17273699411662741626

`A346254(n+1)+A003961(A348941(n+1))`
-/

namespace A346255.P17273699411662741626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (n + 1) + A003961 (A348941 (n + 1)).toNat

end

end A346255.P17273699411662741626

/-! ## A346255.P14995115304660884807

`A346254(n+1)+A003961(n+1)/A336850(n+1)`
-/

namespace A346255.P14995115304660884807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346254 (n + 1) : ℚ) + (A003961 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A346255.P14995115304660884807

/-! ## A346255.P1600881601909254458

`A346254(n+1)+A017666(A003961(n+1))`
-/

namespace A346255.P1600881601909254458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (n + 1) + A017666 (A003961 (n + 1)).toNat

end

end A346255.P1600881601909254458

/-! ## A346255.P6548592552676471660

`A346254(n+1)+A017666(2*A048673(n+1)-1)`
-/

namespace A346255.P6548592552676471660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (n + 1) + A017666 (2 * A048673 (n + 1) - 1).toNat

end

end A346255.P6548592552676471660

/-! ## A346255.P4310249082805508406

`A346254(n+1)+A017666(A336845(n+1)/A000005(n+1))`
-/

namespace A346255.P4310249082805508406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (n + 1) + A017666 (SequenceMachineLib.roundAway ((A336845 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ))).toNat

end

end A346255.P4310249082805508406

/-!
# A346256: Positions of zeros in A346254.

The programs for A346256, there is no canonical definition to state claims against.
-/

/-! ## A346256.P13142652305238398845

`eq[0, A346254(n+1)]+1`
-/

namespace A346256.P13142652305238398845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A346256.P13142652305238398845

/-! ## A346256.P14906616081418039542

`eq[A336849(n+1), A346255(n+1)]+1`
-/

namespace A346256.P14906616081418039542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A346256.P14906616081418039542

/-! ## A346256.P9462363115082038428

`eq[0, A346254(A028310(n))]`
-/

namespace A346256.P9462363115082038428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346256.P9462363115082038428

/-! ## A346256.P18424549205986535648

`A020725(eq[0, A346254(n+1)])`
-/

namespace A346256.P18424549205986535648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A346256.P18424549205986535648

/-! ## A346256.P9453142040988515128

`eq[0, A346254(A123108(2*n))]`
-/

namespace A346256.P9453142040988515128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346256.P9453142040988515128

/-! ## A346256.P14293803097328196507

`eq[0, A346254(A233583(n+1))]`
-/

namespace A346256.P14293803097328196507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346254 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346256.P14293803097328196507

/-!
# A346257: Numbers that are the sum of five fifth powers in exactly five ways.

The programs for A346257, there is no canonical definition to state claims against.
-/

/-! ## A346257.P16914496343692236259

`A345863(A333764(n+1)^(∑{digits}[n, 10^#]%9))`
-/

namespace A346257.P16914496343692236259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345863 (A333764 (n + 1) ^ (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum % 9)).toNat

end

end A346257.P16914496343692236259

/-! ## A346257.P12553843125281890769

`A345863(A228913(n)+A228869(n+1))`
-/

namespace A346257.P12553843125281890769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345863 (A228913 n + A228869 (n + 1)).toNat

end

end A346257.P12553843125281890769

/-! ## A346257.P17415601878722491923

`A345863(A129511(n+1)%A129537(3*n+5))`
-/

namespace A346257.P17415601878722491923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345863 (Int.tmod (A129511 (n + 1)) (A129537 (3 * n + 5))).toNat

end

end A346257.P17415601878722491923

/-! ## A346257.P14210543823808177539

`A345863(A228912(n)+A228869(n+1))`
-/

namespace A346257.P14210543823808177539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345863 (A228912 n + A228869 (n + 1)).toNat

end

end A346257.P14210543823808177539

/-!
# A346258: E.g.f.: exp(x) / (1 - 3 * x)^(1/3).

The programs for A346258, the canonical program `A346258.P8103706443554744590` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346258 has offset 0).

The definition of A346258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346258.P8103706443554744590

`(3*n-1)*a(n-1)+3*(1-n)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346258

/-- `(3*n-1)*a(n-1)+3*(1-n)*a(n-2)` -/
def P8103706443554744590.Spec : Prop :=
  ∀ n, P8103706443554744590.a n = A346258 n

theorem P8103706443554744590.correct : P8103706443554744590.Spec := by
  intro n
  simp only [A346258]

end A346258

/-! ## A346258.P7940941921851524954

`or(A004523(A209668(n)), A007955(n+1))`
-/

namespace A346258.P7940941921851524954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004523 (A209668 n).toNat) (A007955 (n + 1))

end

end A346258.P7940941921851524954

namespace A346258

/-- `or(A004523(A209668(n)), A007955(n+1))` -/
def P7940941921851524954.Spec : Prop :=
  ∀ n, P7940941921851524954.a n = A346258 n

end A346258

/-!
# A346259: Numbers that are the sum of seven fifth powers in exactly ten ways.

The programs for A346259, there is no canonical definition to state claims against.
-/

/-! ## A346259.P15347230029393487833

`A345643(A018321(n+1)%A018321(2*n+3))`
-/

namespace A346259.P15347230029393487833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345643 (Int.tmod (A018321 (n + 1)) (A018321 (2 * n + 3))).toNat

end

end A346259.P15347230029393487833

/-! ## A346259.P1402958632943287980

`A345643(A332815(n)^A240830(n+1))`
-/

namespace A346259.P1402958632943287980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345643 (SequenceMachineLib.roundAway ((A332815 n : ℚ) ^ (A240830 (n + 1) : ℤ))).toNat

end

end A346259.P1402958632943287980

/-! ## A346259.P198862705324158987

`A345643(A332815(n)^A128936(n+3))`
-/

namespace A346259.P198862705324158987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345643 (SequenceMachineLib.roundAway ((A332815 n : ℚ) ^ (A128936 (n + 3) : ℤ))).toNat

end

end A346259.P198862705324158987

/-!
# A346261: Lexicographically earliest sequence of decimal words starting with 10 such that each term has Hamming distance at least 2 from all earlier terms.

The programs for A346261, there is no canonical definition to state claims against.
-/

/-! ## A346261.P9537852797018981965

`∑[10^A249351(A250120(n))]+n`
-/

namespace A346261.P9537852797018981965
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (A249351 (A250120 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A346261.P9537852797018981965

/-! ## A346261.P14348048768700382519

`∑[A163139(A236112(n+1)+A162263(n+1))]+n`
-/

namespace A346261.P14348048768700382519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163139 (A236112 (n + 1) + A162263 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A346261.P14348048768700382519

/-! ## A346261.P3744041018892632440

`∑[A163139(A360393(3*n+5)+A162261(n+1))]+n`
-/

namespace A346261.P3744041018892632440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163139 (A360393 (3 * n + 5) + A162261 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A346261.P3744041018892632440

/-! ## A346261.P12048703995583284913

`A061470((n+1)%A232010(3*n+5)+1)`
-/

namespace A346261.P12048703995583284913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061470 (Int.tmod (n + 1 : ℤ) (A232010 (3 * n + 5)) + 1).toNat

end

end A346261.P12048703995583284913

/-! ## A346261.P16697547116405396517

`A061470(n+2)+A000122(A000230(n))`
-/

namespace A346261.P16697547116405396517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061470 (n + 2) + A000122 (A000230 n).toNat

end

end A346261.P16697547116405396517

/-!
# A346263: Irregular triangle of numbers T(n,k) read by rows where each T(n,k) is the number of large or small squares that are used to tile elementary squares of type 2 whose length of side is A344332(n).

The programs for A346263, there is no canonical definition to state claims against.
-/

/-! ## A346263.P3415974866322412012

`A282242(A025047(n))`
-/

namespace A346263.P3415974866322412012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282242 (A025047 n).toNat

end

end A346263.P3415974866322412012

/-!
# A346264: a(n) is the number of distinct possible tilings of type 2 for squares with side = A344332(n) and that can be tiled with squares of two different sizes so that the numbers of large or small squares are equal.

The programs for A346264, there is no canonical definition to state claims against.
-/

/-! ## A346264.P519923181367833348

`A001221(A063968(3*n+1)+ceil(2^(n-1)))`
-/

namespace A346264.P519923181367833348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A063968 (3 * n + 1) + ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉).toNat

end

end A346264.P519923181367833348

/-! ## A346264.P3313131420724045908

`∏{e}[∑[4*n]+1, #+1]-A185709(A006131(n))`
-/

namespace A346264.P3313131420724045908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - A185709 (A006131 n).toNat

end

end A346264.P3313131420724045908

/-! ## A346264.P9571713455457135982

`A347730(or(1, n)*ceil(n/2))+A052344(3*(n+1))`
-/

namespace A346264.P9571713455457135982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347730 ((Nat.lor 1 n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat + A052344 (3 * (n + 1))

end

end A346264.P9571713455457135982

/-! ## A346264.P10662995077004002173

`A369376(A022165(n)+A000079(n))`
-/

namespace A346264.P10662995077004002173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369376 (A022165 n + A000079 n).toNat

end

end A346264.P10662995077004002173

/-! ## A346264.P4300412807610338872

`A347730(A000217(n))+char[A347732(n)]`
-/

namespace A346264.P4300412807610338872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347732 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347730 (A000217 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A346264.P4300412807610338872

/-!
# A346269: Expansion of e.g.f. 1/(2 - x^2 - exp(x)).

The programs for A346269, there is no canonical definition to state claims against.
-/

/-! ## A346269.P17258371605860007227

`A289435(A255927(n)+A143562(n))`
-/

namespace A346269.P17258371605860007227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (A255927 n + A143562 n).toNat

end

end A346269.P17258371605860007227

/-! ## A346269.P15381728990546224002

`A313707(A006455(n)-A183568(n))`
-/

namespace A346269.P15381728990546224002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 (A006455 n - A183568 n).toNat

end

end A346269.P15381728990546224002

/-!
# A346270: Number of distinct solutions for the maximum value of the Gilbreath equation of an ordered sequence of n integers.

The programs for A346270, there is no canonical definition to state claims against.
-/

/-! ## A346270.P6459752443240363039

`n*A166018(a(n-1))` with `a(0)=1`
-/

namespace A346270.P6459752443240363039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A166018 (a (n - 1)).toNat

end

end A346270.P6459752443240363039

/-! ## A346270.P3114191991900415928

`n*A276887(a(n-1))` with `a(0)=1`
-/

namespace A346270.P3114191991900415928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A276887 (a (n - 1)).toNat

end

end A346270.P3114191991900415928

/-!
# A346271: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp( BesselI(0,2*sqrt(x)) - 1 - x^2 / 4 ).

The programs for A346271, there is no canonical definition to state claims against.
-/

/-! ## A346271.P6967395007357396388

`A109497(ceil((n+1)^n/3))`
-/

namespace A346271.P6967395007357396388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 ⌈((n + 1) ^ n : ℚ) / 3⌉.toNat

end

end A346271.P6967395007357396388

/-! ## A346271.P6435874988518256725

`round(sqrt(A058112(comp[2*n+3])))`
-/

namespace A346271.P6435874988518256725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A058112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℝ))

end

end A346271.P6435874988518256725

/-!
# A346272: Sum_{n>=0} a(n) * x^n / (n!)^2 = exp( BesselI(0,2*sqrt(x)) - 1 - x^3 / 36 ).

The programs for A346272, there is no canonical definition to state claims against.
-/

/-! ## A346272.P1681871883575291843

`A195178(A267196(n))-1`
-/

namespace A346272.P1681871883575291843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195178 (A267196 n).toNat - 1

end

end A346272.P1681871883575291843

/-! ## A346272.P12097649661830200840

`A194979(or(1, A099021(n)))`
-/

namespace A346272.P12097649661830200840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (Int.lor 1 (A099021 n)).toNat

end

end A346272.P12097649661830200840

/-!
# A346274: Number of n-digit primes with digital product = 7.

The programs for A346274, there is no canonical definition to state claims against.
-/

/-! ## A346274.P16851005372263609537

`A010873(A282825(n)*A318362(n+1))`
-/

namespace A346274.P16851005372263609537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A282825 n * A318362 (n + 1)).toNat

end

end A346274.P16851005372263609537

/-! ## A346274.P7443815943638482542

`∑[A000384(A027187(3*n))]%4`
-/

namespace A346274.P7443815943638482542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A027187 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A346274.P7443815943638482542

/-! ## A346274.P6549829396486567520

`C(A136757(A254751(3*(n+1))), A001222(2*n+5))`
-/

namespace A346274.P6549829396486567520
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A136757 (A254751 (3 * (n + 1))).toNat).toNat (A001222 (2 * n + 5)).toNat

end

end A346274.P6549829396486567520

/-! ## A346274.P13733884425281332238

`A153439(A018018(n))%4`
-/

namespace A346274.P13733884425281332238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153439 (A018018 n).toNat) 4

end

end A346274.P13733884425281332238

/-!
# A346277: Primitive terms of A108569.

The programs for A346277, there is no canonical definition to state claims against.
-/

/-! ## A346277.P4028477861524519436

`∑{d}[A346694(n+1), A062790(#)]`
-/

namespace A346277.P4028477861524519436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A062790 d

end

end A346277.P4028477861524519436

/-! ## A346277.P5849252174261655207

`A051953(A346694(n+1))`
-/

namespace A346277.P5849252174261655207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (A346694 (n + 1)).toNat

end

end A346277.P5849252174261655207

/-! ## A346277.P4948042193675731390

`A208673(n)+A016035(A346694(n+1))`
-/

namespace A346277.P4948042193675731390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208673 n + A016035 (A346694 (n + 1)).toNat

end

end A346277.P4948042193675731390

/-! ## A346277.P907531715875176532

`A219428(A346694(n+1))+A014808(n)`
-/

namespace A346277.P907531715875176532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (A346694 (n + 1)).toNat + A014808 n

end

end A346277.P907531715875176532

/-! ## A346277.P17346865435834468834

`A051953(∩[A051487(n+1), A017593(n)])`
-/

namespace A346277.P17346865435834468834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017593 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A346277.P17346865435834468834

/-!
# A346280: Numbers that are the sum of seven fifth powers in exactly three ways.

The programs for A346280, there is no canonical definition to state claims against.
-/

/-! ## A346280.P11606667098641824724

`A345606(∑[A185245(n+1)!])`
-/

namespace A346280.P11606667098641824724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A185245 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345606 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346280.P11606667098641824724

/-!
# A346282: Numbers that are the sum of seven fifth powers in exactly five ways.

The programs for A346282, there is no canonical definition to state claims against.
-/

/-! ## A346282.P4651000431430007467

`A345608(A187829(n+1)%A077168(n+4))`
-/

namespace A346282.P4651000431430007467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345608 (Int.tmod (A187829 (n + 1)) (A077168 (n + 4))).toNat

end

end A346282.P4651000431430007467

/-! ## A346282.P10171293164044358696

`A345608(A288139(n+1)%A358889(3*(n+1)))`
-/

namespace A346282.P10171293164044358696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345608 (Int.tmod (A288139 (n + 1)) (A358889 (3 * (n + 1)))).toNat

end

end A346282.P10171293164044358696

/-!
# A346283: Numbers that are the sum of seven fifth powers in exactly six ways.

The programs for A346283, there is no canonical definition to state claims against.
-/

/-! ## A346283.P1056602613414102254

`A345609(A318991(n+1)%A350196(3*n+2))`
-/

namespace A346283.P1056602613414102254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345609 (Int.tmod (A318991 (n + 1)) (A350196 (3 * n + 2))).toNat

end

end A346283.P1056602613414102254

/-!
# A346284: Numbers that are the sum of seven fifth powers in exactly seven ways.

The programs for A346284, there is no canonical definition to state claims against.
-/

/-! ## A346284.P2092696929603461519

`record[A345629(A253893(n+1)+A046540(n+1))]`
-/

namespace A346284.P2092696929603461519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345629 (A253893 (n + 1) + A046540 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346284.P2092696929603461519

/-! ## A346284.P11118106671435216972

`record[gcd(A345629(n+1), A350898(n+1))]`
-/

namespace A346284.P11118106671435216972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A345629 (n + 1)) (A350898 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346284.P11118106671435216972

/-! ## A346284.P2291623604975204747

`record[A345629(n+1)/(A074792(A350898(n+1)+1)-1)]`
-/

namespace A346284.P2291623604975204747
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345629 (n + 1) : ℚ) / (A074792 (A350898 (n + 1) + 1).toNat - 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346284.P2291623604975204747

/-! ## A346284.P3999124936828084678

`A345629(A019569(∏[n+1])+1)`
-/

namespace A346284.P3999124936828084678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345629 (A019569 (∏ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A346284.P3999124936828084678

/-!
# A346285: Numbers that are the sum of seven fifth powers in exactly eight ways.

The programs for A346285, there is no canonical definition to state claims against.
-/

/-! ## A346285.P14920732233795242822

`A345630(A062399(n)+∑[char[10*n]])`
-/

namespace A346285.P14920732233795242822
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345630 (A062399 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346285.P14920732233795242822

/-! ## A346285.P7952259495611518045

`A345630(A351870(n)+∑[char[10*n]])`
-/

namespace A346285.P7952259495611518045
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345630 (A351870 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A346285.P7952259495611518045

/-! ## A346285.P2401161961039611758

`A345630(A286520(n+2)+A062399(n))`
-/

namespace A346285.P2401161961039611758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345630 (A286520 (n + 2) + A062399 n).toNat

end

end A346285.P2401161961039611758

/-! ## A346285.P12155603964618926786

`lcm((-1)^n, A345630(A351870(n)+A286520(n+2)))`
-/

namespace A346285.P12155603964618926786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A345630 (A351870 n + A286520 (n + 2)).toNat)

end

end A346285.P12155603964618926786

/-! ## A346285.P1614182909929593814

`A345630(A351870(n)+A286520(n+2))+A341880(n^(n%2))`
-/

namespace A346285.P1614182909929593814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345630 (A351870 n + A286520 (n + 2)).toNat + A341880 (n ^ (n % 2) + 16)

end

end A346285.P1614182909929593814

/-!
# A346286: Numbers that are the sum of seven fifth powers in exactly nine ways.

The programs for A346286, there is no canonical definition to state claims against.
-/

/-! ## A346286.P15969516008986390182

`A345631(record[A163107(n+1)])`
-/

namespace A346286.P15969516008986390182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345631 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346286.P15969516008986390182

/-! ## A346286.P6050491787341636624

`A345631(record[A346264(n+1)])`
-/

namespace A346286.P6050491787341636624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345631 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346286.P6050491787341636624

/-! ## A346286.P12404577803216014623

`record[A345631(A163107(Δ[n²]))]`
-/

namespace A346286.P12404577803216014623
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345631 (A163107 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A346286.P12404577803216014623

/-! ## A346286.P5533791538441978085

`A345631(record[A325770(n+1)+1])`
-/

namespace A346286.P5533791538441978085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345631 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A346286.P5533791538441978085

/-! ## A346286.P3414281432866873365

`A345631(A108408(n+1)%A138717(n+1))`
-/

namespace A346286.P3414281432866873365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345631 (Int.tmod (A108408 (n + 1)) (A138717 (n + 1))).toNat

end

end A346286.P3414281432866873365

/-!
# A346287: Numbers that are of both forms x^k+x+1 and x^k-(x+1) with k>=2 and x>=0.

The programs for A346287, there is no canonical definition to state claims against.
-/

/-! ## A346287.P9782103622540464815

`A306661(A041047(n))`
-/

namespace A346287.P9782103622540464815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306661 (A041047 n).toNat

end

end A346287.P9782103622540464815

/-!
# A346288: Base-10 numbers k such that k has no solutions to k = A * B and R(k) = R(A) * R(B) in any base from base 2 to base 10, and where R(k), the digit reversal of k, is read as a number in the same base.

The programs for A346288, there is no canonical definition to state claims against.
-/

/-! ## A346288.P513760262596678191

`lt[A318921(A000041(n)), A071883(n)]`
-/

namespace A346288.P513760262596678191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 (A000041 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071883 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346288.P513760262596678191

/-! ## A346288.P17490454943801629544

`∑[gcd(2*n, A043562(A104144(n)))]`
-/

namespace A346288.P17490454943801629544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A043562 (A104144 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346288.P17490454943801629544

/-! ## A346288.P1874178640386734098

`lt[A341978(n), Δ[A257688(n+1)]]`
-/

namespace A346288.P1874178640386734098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341978 (n + 42)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257688 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346288.P1874178640386734098

/-! ## A346288.P7602275687689902098

`lt[A057732(n+5)/3^(n%2), A111396(n)]`
-/

namespace A346288.P7602275687689902098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057732 (n + 5) : ℚ) / (3 ^ (n % 2) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A346288.P7602275687689902098

/-! ## A346288.P15113049544749115859

`lt[A304952(A328673(n)), A005100(n+1)]`
-/

namespace A346288.P15113049544749115859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304952 (A328673 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346288.P15113049544749115859

/-!
# A346290: Numbers k = s * t such that reverse(k) = reverse(s) * reverse(t) where reverse(k) is k with its digits reversed. A single-digit number is its own reversal and neither s nor t has a leading zero. No pair (s, t) has both s and t palindromic or single-digit.

The programs for A346290, there is no canonical definition to state claims against.
-/

/-! ## A346290.P7232315034195349159

`eq[A178401(n), A379512(n)]`
-/

namespace A346290.P7232315034195349159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178401 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346290.P7232315034195349159

/-! ## A346290.P5613856159395212340

`eq[A118626(n+1), A379512(n)]`
-/

namespace A346290.P5613856159395212340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379512 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346290.P5613856159395212340

/-!
# A346291: a(0) = 1; a(n) = (1/n) * Sum_{k=2..n} (binomial(n,k) * k!)^2 * a(n-k) / k.

The programs for A346291, there is no canonical definition to state claims against.
-/

/-! ## A346291.P16673822113588206226

`A233574(A000166(n)²)`
-/

namespace A346291.P16673822113588206226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233574 (A000166 n ^ 2).toNat

end

end A346291.P16673822113588206226

/-! ## A346291.P14284834872778395471

`A233574(A182386(n)²)`
-/

namespace A346291.P14284834872778395471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233574 (A182386 n ^ 2).toNat

end

end A346291.P14284834872778395471

/-!
# A346292: a(0) = 1; a(n) = (1/n) * Sum_{k=3..n} (binomial(n,k) * k!)^2 * a(n-k) / k.

The programs for A346292, there is no canonical definition to state claims against.
-/

/-! ## A346292.P3341279590731241741

`∏{e}[10^n, A038205(#)]`
-/

namespace A346292.P3341279590731241741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A038205 (Nat.factorization (f1 n) p)

end

end A346292.P3341279590731241741

/-! ## A346292.P4841778514300656863

`∏{e}[10^n, A124355(#)]`
-/

namespace A346292.P4841778514300656863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A124355 (Nat.factorization (f1 n) p)

end

end A346292.P4841778514300656863

/-!
# A346295: a(n) = Sum_{k=0..n} (2^k + 1) * (2^k + 2) / 2.

The programs for A346295, the canonical program `A346295.P1748724611634293460` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346295 has offset 0).

The definition of A346295 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A346295.P1748724611634293460

`(2^(n+1)+4)*(2^(n+1)+5)/6-4+n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346295

/-- `(2^(n+1)+4)*(2^(n+1)+5)/6-4+n` -/
def P1748724611634293460.Spec : Prop :=
  ∀ n, P1748724611634293460.a n = (A346295 n : ℚ)

end A346295

/-! ## A346295.P10970456521251587084

`3*∑[or(2^n, ∑[floor(((2^n-1)/2)²)/2])]`
-/

namespace A346295.P10970456521251587084
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(((2 ^ n : ℤ) - 1 : ℚ) / 2) ^ 2⌋ : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n : ℤ) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346295.P10970456521251587084

namespace A346295

/-- `3*∑[or(2^n, ∑[floor(((2^n-1)/2)²)/2])]` -/
def P10970456521251587084.Spec : Prop :=
  ∀ n, P10970456521251587084.a n = A346295 n

end A346295

/-! ## A346295.P1638611060486060526

`3*∑[xor((2^n-1)*(2^n-2)/6, 2^n)]`
-/

namespace A346295.P1638611060486060526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway (((2 ^ n : ℤ) - 1 : ℚ) * (((2 ^ n : ℤ) - 2 : ℚ) / 6))) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346295.P1638611060486060526

namespace A346295

/-- `3*∑[xor((2^n-1)*(2^n-2)/6, 2^n)]` -/
def P1638611060486060526.Spec : Prop :=
  ∀ n, P1638611060486060526.a n = A346295 n

end A346295

/-! ## A346295.P11803589139225387888

`abs(∑[a(n-1)+a(n-1)+4^(n-1)-1])` with `a(0)=3`
-/

namespace A346295.P11803589139225387888
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A346295.P11803589139225387888

namespace A346295

/-- `abs(∑[a(n-1)+a(n-1)+4^(n-1)-1])` -/
def P11803589139225387888.Spec : Prop :=
  ∀ n, P11803589139225387888.a n = (A346295 n : ℚ)

end A346295

/-! ## A346295.P17323400966188370142

`floor(∑[a(n-1)+a(n-1)+4^(n-1)-1])` with `a(0)=3`
-/

namespace A346295.P17323400966188370142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A346295.P17323400966188370142

namespace A346295

/-- `floor(∑[a(n-1)+a(n-1)+4^(n-1)-1])` -/
def P17323400966188370142.Spec : Prop :=
  ∀ n, P17323400966188370142.a n = A346295 n

end A346295

/-! ## A346295.P16680753930169569724

`ceil(∑[a(n-1)+a(n-1)+4^(n-1)-1])` with `a(0)=3`
-/

namespace A346295.P16680753930169569724
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A346295.P16680753930169569724

namespace A346295

/-- `ceil(∑[a(n-1)+a(n-1)+4^(n-1)-1])` -/
def P16680753930169569724.Spec : Prop :=
  ∀ n, P16680753930169569724.a n = A346295 n

end A346295

/-! ## A346295.P7771045100438961783

`∑[A257273(n)+1]`
-/

namespace A346295.P7771045100438961783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257273 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346295.P7771045100438961783

namespace A346295

/-- `∑[A257273(n)+1]` -/
def P7771045100438961783.Spec : Prop :=
  ∀ n, P7771045100438961783.a n = A346295 n

end A346295

/-! ## A346295.P1296649403620865895

`∑[A028401(n+2)]`
-/

namespace A346295.P1296649403620865895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028401 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346295.P1296649403620865895

namespace A346295

/-- `∑[A028401(n+2)]` -/
def P1296649403620865895.Spec : Prop :=
  ∀ n, P1296649403620865895.a n = A346295 n

end A346295

/-! ## A346295.P9036606591962448222

`∑[3*A007581(n)]`
-/

namespace A346295.P9036606591962448222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346295.P9036606591962448222

namespace A346295

/-- `∑[3*A007581(n)]` -/
def P9036606591962448222.Spec : Prop :=
  ∀ n, P9036606591962448222.a n = A346295 n

end A346295

/-! ## A346295.P3094633132896687280

`3*∑[A076024(n)+1]`
-/

namespace A346295.P3094633132896687280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076024 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A346295.P3094633132896687280

namespace A346295

/-- `3*∑[A076024(n)+1]` -/
def P3094633132896687280.Spec : Prop :=
  ∀ n, P3094633132896687280.a n = A346295 n

end A346295

/-! ## A346295.P16318169918712304093

`∑[3*A124303(n+1)]`
-/

namespace A346295.P16318169918712304093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A124303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346295.P16318169918712304093

namespace A346295

/-- `∑[3*A124303(n+1)]` -/
def P16318169918712304093.Spec : Prop :=
  ∀ n, P16318169918712304093.a n = A346295 n

end A346295

/-! ## A346295.P3397501194996414125

`3*(A243514(n+1)-2)`
-/

namespace A346295.P3397501194996414125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A243514 (n + 1) - 2)

end

end A346295.P3397501194996414125

namespace A346295

/-- `3*(A243514(n+1)-2)` -/
def P3397501194996414125.Spec : Prop :=
  ∀ n, P3397501194996414125.a n = A346295 n

end A346295

/-! ## A346295.P9700872514887209913

`∑[C(2^n+2, 2)]`
-/

namespace A346295.P9700872514887209913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ n + 2) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A346295.P9700872514887209913

namespace A346295

/-- `∑[C(2^n+2, 2)]` -/
def P9700872514887209913.Spec : Prop :=
  ∀ n, (P9700872514887209913.a n : ℤ) = A346295 n

end A346295

/-!
# A346296: a(0) = 1; thereafter a(n) = 2*a(n-1) + 1, with digits rearranged into nondecreasing order.

The programs for A346296, there is no canonical definition to state claims against.
-/

/-! ## A346296.P9345415441580279597

`A004185(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A346296.P9345415441580279597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (2 * a (n - 1) + 1).toNat

end

end A346296.P9345415441580279597

/-! ## A346296.P1546459427734875642

`A328447(2*a(n-1)+1)` with `a(0)=1`
-/

namespace A346296.P1546459427734875642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A328447 (2 * a (n - 1) + 1).toNat

end

end A346296.P1546459427734875642

/-! ## A346296.P11191909356159714917

`A004185(lcm(2, a(n-1))+1)` with `a(0)=1`
-/

namespace A346296.P11191909356159714917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (Int.lcm 2 (a (n - 1)) + 1)

end

end A346296.P11191909356159714917

/-! ## A346296.P6403626564371944669

`A004185(or(1, 2*a(n-1)))` with `a(0)=1`
-/

namespace A346296.P6403626564371944669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (Int.lor 1 (2 * a (n - 1))).toNat

end

end A346296.P6403626564371944669

/-! ## A346296.P3941475736452869235

`A004185(xor(1, 2*a(n-1)))` with `a(0)=1`
-/

namespace A346296.P3941475736452869235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (Int.xor 1 (2 * a (n - 1))).toNat

end

end A346296.P3941475736452869235

/-!
# A346299: Positions of words in A076478 in which #0's < #1's.

The programs for A346299, the canonical program `A346299.P4561893886857288816` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A346299 has offset 1).

The definition of A346299 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A346299.P4561893886857288816

`lt[1, a(floor((n-1)/2))+(-1)^n]` with `a(0)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A346299

/-- `lt[1, a(floor((n-1)/2))+(-1)^n]` -/
def P4561893886857288816.Spec : Prop :=
  ∀ n, (P4561893886857288816.a n : ℤ) = A346299 (n + 1)

theorem P4561893886857288816.correct : P4561893886857288816.Spec := by
  intro n
  simp only [A346299, Nat.add_sub_cancel]

end A346299

/-! ## A346299.P9155651889486661892

`lt[0, a(floor(n/2))-(-1)^n]-1` with `a(0)=0, a(1)=0`
-/

namespace A346299.P9155651889486661892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A346299.P9155651889486661892

namespace A346299

/-- `lt[0, a(floor(n/2))-(-1)^n]-1` -/
def P9155651889486661892.Spec : Prop :=
  ∀ n, P9155651889486661892.a n = A346299 (n + 1)

end A346299

/-! ## A346299.P10055140488230288459

`lt[1, A145037(n+1)]`
-/

namespace A346299.P10055140488230288459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346299.P10055140488230288459

namespace A346299

/-- `lt[1, A145037(n+1)]` -/
def P10055140488230288459.Spec : Prop :=
  ∀ n, (P10055140488230288459.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P11950723429293152045

`lt[1, A145037(n)]-1`
-/

namespace A346299.P11950723429293152045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A346299.P11950723429293152045

namespace A346299

/-- `lt[1, A145037(n)]-1` -/
def P11950723429293152045.Spec : Prop :=
  ∀ n, P11950723429293152045.a n = A346299 (n + 1)

end A346299

/-! ## A346299.P18355845446202875221

`lt[A296062(n+1), A296062(n)]`
-/

namespace A346299.P18355845446202875221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346299.P18355845446202875221

namespace A346299

/-- `lt[A296062(n+1), A296062(n)]` -/
def P18355845446202875221.Spec : Prop :=
  ∀ n, (P18355845446202875221.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P15092055915949518768

`lt[1, Δ[A301336(n)]]`
-/

namespace A346299.P15092055915949518768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301336 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346299.P15092055915949518768

namespace A346299

/-- `lt[1, Δ[A301336(n)]]` -/
def P15092055915949518768.Spec : Prop :=
  ∀ n, (P15092055915949518768.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P3262645190405239023

`lt[1, -A037861(n+1)]`
-/

namespace A346299.P3262645190405239023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A037861 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346299.P3262645190405239023

namespace A346299

/-- `lt[1, -A037861(n+1)]` -/
def P3262645190405239023.Spec : Prop :=
  ∀ n, (P3262645190405239023.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P11976012012644181449

`lt[n+1, A048896(n)²]`
-/

namespace A346299.P11976012012644181449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346299.P11976012012644181449

namespace A346299

/-- `lt[n+1, A048896(n)²]` -/
def P11976012012644181449.Spec : Prop :=
  ∀ n, (P11976012012644181449.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P7440049455504457260

`lt[n+1, A151783(n+1)]`
-/

namespace A346299.P7440049455504457260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A346299.P7440049455504457260

namespace A346299

/-- `lt[n+1, A151783(n+1)]` -/
def P7440049455504457260.Spec : Prop :=
  ∀ n, (P7440049455504457260.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P947219101597462534

`lt[4*n+2, 4^A000120(n)]-1`
-/

namespace A346299.P947219101597462534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n : ℤ) - 1

end

end A346299.P947219101597462534

namespace A346299

/-- `lt[4*n+2, 4^A000120(n)]-1` -/
def P947219101597462534.Spec : Prop :=
  ∀ n, P947219101597462534.a n = A346299 (n + 1)

end A346299

/-! ## A346299.P11378718969866185933

`lt[A160380(n), A160383(n)]-1`
-/

namespace A346299.P11378718969866185933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A346299.P11378718969866185933

namespace A346299

/-- `lt[A160380(n), A160383(n)]-1` -/
def P11378718969866185933.Spec : Prop :=
  ∀ n, P11378718969866185933.a n = A346299 (n + 1)

end A346299

/-! ## A346299.P17141212517089445767

`lt[A023416(n+1), log2(A048896(n))]`
-/

namespace A346299.P17141212517089445767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A048896 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A346299.P17141212517089445767

namespace A346299

/-- `lt[A023416(n+1), log2(A048896(n))]` -/
def P17141212517089445767.Spec : Prop :=
  ∀ n, (P17141212517089445767.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P7510101553834914734

`lt[A160380(n+1), A160383(n+1)]`
-/

namespace A346299.P7510101553834914734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346299.P7510101553834914734

namespace A346299

/-- `lt[A160380(n+1), A160383(n+1)]` -/
def P7510101553834914734.Spec : Prop :=
  ∀ n, (P7510101553834914734.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P5378784576926549182

`lt[A023416(n+1)+1, A000120(n+1)]`
-/

namespace A346299.P5378784576926549182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346299.P5378784576926549182

namespace A346299

/-- `lt[A023416(n+1)+1, A000120(n+1)]` -/
def P5378784576926549182.Spec : Prop :=
  ∀ n, (P5378784576926549182.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P2007074372522104995

`lt[A080791(n+1)+1, A000120(n+1)]`
-/

namespace A346299.P2007074372522104995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346299.P2007074372522104995

namespace A346299

/-- `lt[A080791(n+1)+1, A000120(n+1)]` -/
def P2007074372522104995.Spec : Prop :=
  ∀ n, (P2007074372522104995.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P9438718194500454391

`lt[A001316(A054429(n+1)), A001316(n+1)]`
-/

namespace A346299.P9438718194500454391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (A054429 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A346299.P9438718194500454391

namespace A346299

/-- `lt[A001316(A054429(n+1)), A001316(n+1)]` -/
def P9438718194500454391.Spec : Prop :=
  ∀ n, (P9438718194500454391.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P3962891887447025239

`eq[A298847(n+1)%(n+1), A298847(n+1)]`
-/

namespace A346299.P3962891887447025239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298847 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298847 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A346299.P3962891887447025239

namespace A346299

/-- `eq[A298847(n+1)%(n+1), A298847(n+1)]` -/
def P3962891887447025239.Spec : Prop :=
  ∀ n, (P3962891887447025239.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P5743318148014267541

`eq[1, A265917(A004754(n+1))]`
-/

namespace A346299.P5743318148014267541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (A004754 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346299.P5743318148014267541

namespace A346299

/-- `eq[1, A265917(A004754(n+1))]` -/
def P5743318148014267541.Spec : Prop :=
  ∀ n, (P5743318148014267541.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P11254617022412096813

`eq[1, A265917(2*(n+1))]`
-/

namespace A346299.P11254617022412096813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265917 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A346299.P11254617022412096813

namespace A346299

/-- `eq[1, A265917(2*(n+1))]` -/
def P11254617022412096813.Spec : Prop :=
  ∀ n, (P11254617022412096813.a n : ℤ) = A346299 (n + 1)

end A346299

/-! ## A346299.P8062378420523809052

`lt[A023416(2*n), A000120(n)]-1`
-/

namespace A346299.P8062378420523809052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A346299.P8062378420523809052

namespace A346299

/-- `lt[A023416(2*n), A000120(n)]-1` -/
def P8062378420523809052.Spec : Prop :=
  ∀ n, P8062378420523809052.a n = A346299 (n + 1)

end A346299

