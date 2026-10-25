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
import Seq.B006.C001
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
# A163501: Lexicographically earliest sequence of distinct positive integers such that a(n) shares no digit with a(a(n)) for all n.

The programs for A163501, there is no canonical definition to state claims against.
-/

/-! ## A163501.P3039525272054661048

`A152209(n+1)+1+n`
-/

namespace A163501.P3039525272054661048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152209 (n + 1) + 1 + (n : ℤ)

end

end A163501.P3039525272054661048

/-! ## A163501.P12886018462371338621

`A152209(A005496(n))+A005496(A055646(n))`
-/

namespace A163501.P12886018462371338621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152209 (A005496 n).toNat + A005496 (A055646 n).toNat

end

end A163501.P12886018462371338621

/-! ## A163501.P11270680422480843174

`A152209(A077168(n))+n+1`
-/

namespace A163501.P11270680422480843174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152209 (A077168 n).toNat + (n + 1 : ℤ)

end

end A163501.P11270680422480843174

/-! ## A163501.P3256556041898832016

`A152209(A005496(n))-A001478(A077168(n))`
-/

namespace A163501.P3256556041898832016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152209 (A005496 n).toNat - A001478 (A077168 n).toNat

end

end A163501.P3256556041898832016

/-! ## A163501.P2675324118431123409

`A265603(A013610(n))+xor(1, n)`
-/

namespace A163501.P2675324118431123409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265603 (A013610 n).toNat + (Nat.xor 1 n : ℤ)

end

end A163501.P2675324118431123409

/-!
# A163504: a(n) = abs(n-th prime minus n-th odd nonprime).

The programs for A163504, the canonical program `A163504.P9591765712020297815` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163504 has offset 1).

The definition of A163504 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163504.P9591765712020297815

`abs(A000040(n+1)-A014076(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163504

/-- `abs(A000040(n+1)-A014076(n+1))` -/
def P9591765712020297815.Spec : Prop :=
  ∀ n, P9591765712020297815.a n = A163504 (n + 1)

theorem P9591765712020297815.correct : P9591765712020297815.Spec := by
  intro n
  simp only [A163504, Nat.add_sub_cancel]

end A163504

/-! ## A163504.P11963294542304818991

`abs(sqrt(A001248(n+1))-A014076(n+1))`
-/

namespace A163504.P11963294542304818991
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.sqrt (A001248 (n + 1) : ℝ) - (A014076 (n + 1) : ℝ)|

end

end A163504.P11963294542304818991

namespace A163504

/-- `abs(sqrt(A001248(n+1))-A014076(n+1))` -/
def P11963294542304818991.Spec : Prop :=
  ∀ n, P11963294542304818991.a n = (A163504 (n + 1) : ℝ)

end A163504

/-! ## A163504.P6006442566099720578

`abs(A014076(n+1)-∑[A054541(n+1)])`
-/

namespace A163504.P6006442566099720578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014076 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A163504.P6006442566099720578

namespace A163504

/-- `abs(A014076(n+1)-∑[A054541(n+1)])` -/
def P6006442566099720578.Spec : Prop :=
  ∀ n, P6006442566099720578.a n = A163504 (n + 1)

end A163504

/-! ## A163504.P17206029120305266717

`abs(A006093(n+1)+1-A014076(n+1))`
-/

namespace A163504.P17206029120305266717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A006093 (n + 1) + (1 - A014076 (n + 1))|

end

end A163504.P17206029120305266717

namespace A163504

/-- `abs(A006093(n+1)+1-A014076(n+1))` -/
def P17206029120305266717.Spec : Prop :=
  ∀ n, P17206029120305266717.a n = A163504 (n + 1)

theorem P17206029120305266717.correct : P17206029120305266717.Spec := by
  intro n
  simp only [A163504, Nat.add_sub_cancel, A163504.P17206029120305266717.a, A163504.P9591765712020297815.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163504

/-! ## A163504.P11673696376440885615

`abs(A008864(n+1)-1-A014076(n+1))`
-/

namespace A163504.P11673696376440885615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008864 (n + 1) - 1 - A014076 (n + 1)|

end

end A163504.P11673696376440885615

namespace A163504

/-- `abs(A008864(n+1)-1-A014076(n+1))` -/
def P11673696376440885615.Spec : Prop :=
  ∀ n, P11673696376440885615.a n = A163504 (n + 1)

theorem P11673696376440885615.correct : P11673696376440885615.Spec := by
  intro n
  simp only [A163504, Nat.add_sub_cancel, A163504.P11673696376440885615.a, A163504.P9591765712020297815.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163504

/-! ## A163504.P5327863980357276014

`abs(A014076(n+1)-(A040976(n+1)+2))`
-/

namespace A163504.P5327863980357276014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014076 (n + 1) - (A040976 (n + 1) + 2)|

end

end A163504.P5327863980357276014

namespace A163504

/-- `abs(A014076(n+1)-(A040976(n+1)+2))` -/
def P5327863980357276014.Spec : Prop :=
  ∀ n, P5327863980357276014.a n = A163504 (n + 1)

end A163504

/-! ## A163504.P13701052082382313987

`abs(2*A047845(n+1)-A006093(n+1))`
-/

namespace A163504.P13701052082382313987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A047845 (n + 1) - A006093 (n + 1)|

end

end A163504.P13701052082382313987

namespace A163504

/-- `abs(2*A047845(n+1)-A006093(n+1))` -/
def P13701052082382313987.Spec : Prop :=
  ∀ n, P13701052082382313987.a n = A163504 (n + 1)

end A163504

/-! ## A163504.P10860346490477626836

`∑{d}[A000040(n+1)-A014076(n+1), A000010(#)]`
-/

namespace A163504.P10860346490477626836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A014076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A163504.P10860346490477626836

namespace A163504

/-- `∑{d}[A000040(n+1)-A014076(n+1), A000010(#)]` -/
def P10860346490477626836.Spec : Prop :=
  ∀ n, P10860346490477626836.a n = A163504 (n + 1)

end A163504

/-! ## A163504.P18325517820732748528

`abs(A008578(n+2)-A014076(n+1))`
-/

namespace A163504.P18325517820732748528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008578 (n + 2) - A014076 (n + 1)|

end

end A163504.P18325517820732748528

namespace A163504

/-- `abs(A008578(n+2)-A014076(n+1))` -/
def P18325517820732748528.Spec : Prop :=
  ∀ n, P18325517820732748528.a n = A163504 (n + 1)

end A163504

/-! ## A163504.P8223665999747974280

`abs(A014076(n+1)-(lt[n, A006530(n+2)]+2))`
-/

namespace A163504.P8223665999747974280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014076 (n + 1) - (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2 : ℤ)|

end

end A163504.P8223665999747974280

namespace A163504

/-- `abs(A014076(n+1)-(lt[n, A006530(n+2)]+2))` -/
def P8223665999747974280.Spec : Prop :=
  ∀ n, P8223665999747974280.a n = A163504 (n + 1)

end A163504

/-! ## A163504.P2989685233088829184

`abs(A207790(2*(n+1))-A014076(n+1))`
-/

namespace A163504.P2989685233088829184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A207790 (2 * (n + 1)) - A014076 (n + 1)|

end

end A163504.P2989685233088829184

namespace A163504

/-- `abs(A207790(2*(n+1))-A014076(n+1))` -/
def P2989685233088829184.Spec : Prop :=
  ∀ n, P2989685233088829184.a n = A163504 (n + 1)

end A163504

/-! ## A163504.P12987563870082328267

`abs(A014076(n+1)-p?[A326578(n+1)])`
-/

namespace A163504.P12987563870082328267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A014076 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)|

end

end A163504.P12987563870082328267

namespace A163504

/-- `abs(A014076(n+1)-p?[A326578(n+1)])` -/
def P12987563870082328267.Spec : Prop :=
  ∀ n, P12987563870082328267.a n = A163504 (n + 1)

end A163504

/-!
# A163505: a(n) = (n-th odd nonprime) mod (n-th odd number).

The programs for A163505, the canonical program `A163505.P16929550261276324882` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163505 has offset 1).

The definition of A163505 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163505.P16929550261276324882

`A014076(n+1)%(2*(n+1)-1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163505

/-- `A014076(n+1)%(2*(n+1)-1)` -/
def P16929550261276324882.Spec : Prop :=
  ∀ n, P16929550261276324882.a n = A163505 (n + 1)

theorem P16929550261276324882.correct : P16929550261276324882.Spec := by
  intro n
  simp only [A163505, Nat.add_sub_cancel]

end A163505

/-! ## A163505.P9901471951683986369

`sqrt(A062532(n+1))%Δ[n²]`
-/

namespace A163505.P9901471951683986369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A062532 (n + 1) : ℝ))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A163505.P9901471951683986369

namespace A163505

/-- `sqrt(A062532(n+1))%Δ[n²]` -/
def P9901471951683986369.Spec : Prop :=
  ∀ n, P9901471951683986369.a n = A163505 (n + 1)

end A163505

/-! ## A163505.P12124307759205409388

`(A165971(n+1)+1)%(2*n+1)`
-/

namespace A163505.P12124307759205409388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165971 (n + 1) + 1) (2 * n + 1 : ℤ)

end

end A163505.P12124307759205409388

namespace A163505

/-- `(A165971(n+1)+1)%(2*n+1)` -/
def P12124307759205409388.Spec : Prop :=
  ∀ n, P12124307759205409388.a n = A163505 (n + 1)

end A163505

/-! ## A163505.P8462871251287061415

`(A165955(n+1)-1)%(2*n+1)`
-/

namespace A163505.P8462871251287061415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165955 (n + 1) - 1) (2 * n + 1 : ℤ)

end

end A163505.P8462871251287061415

namespace A163505

/-- `(A165955(n+1)-1)%(2*n+1)` -/
def P8462871251287061415.Spec : Prop :=
  ∀ n, P8462871251287061415.a n = A163505 (n + 1)

end A163505

/-! ## A163505.P3550885540281586544

`(2*A104275(n+1)-1)%Δ[n²]`
-/

namespace A163505.P3550885540281586544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A104275 (n + 1) - 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A163505.P3550885540281586544

namespace A163505

/-- `(2*A104275(n+1)-1)%Δ[n²]` -/
def P3550885540281586544.Spec : Prop :=
  ∀ n, P3550885540281586544.a n = A163505 (n + 1)

end A163505

/-! ## A163505.P147037038028141959

`A000265(A014076(n+1))%A000265(n+1+n)`
-/

namespace A163505.P147037038028141959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (A014076 (n + 1)).toNat) (A000265 (n + 1 + n))

end

end A163505.P147037038028141959

namespace A163505

/-- `A000265(A014076(n+1))%A000265(n+1+n)` -/
def P147037038028141959.Spec : Prop :=
  ∀ n, P147037038028141959.a n = A163505 (n + 1)

end A163505

/-! ## A163505.P2896369573634661782

`∩[2*n+1, A018252(n+1)]%(2*n+1)`
-/

namespace A163505.P2896369573634661782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n % (2 * n + 1)

end

end A163505.P2896369573634661782

namespace A163505

/-- `∩[2*n+1, A018252(n+1)]%(2*n+1)` -/
def P2896369573634661782.Spec : Prop :=
  ∀ n, (P2896369573634661782.a n : ℤ) = A163505 (n + 1)

end A163505

/-! ## A163505.P15304647999920675169

`A002808(A073432(n+1))%(2*n+1)`
-/

namespace A163505.P15304647999920675169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (A073432 (n + 1)).toNat) (2 * n + 1 : ℤ)

end

end A163505.P15304647999920675169

namespace A163505

/-- `A002808(A073432(n+1))%(2*n+1)` -/
def P15304647999920675169.Spec : Prop :=
  ∀ n, P15304647999920675169.a n = A163505 (n + 1)

end A163505

/-! ## A163505.P11992701380560551691

`A075065(2*n+1)%(2*n+1)`
-/

namespace A163505.P11992701380560551691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075065 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A163505.P11992701380560551691

namespace A163505

/-- `A075065(2*n+1)%(2*n+1)` -/
def P11992701380560551691.Spec : Prop :=
  ∀ n, P11992701380560551691.a n = A163505 (n + 1)

end A163505

/-!
# A163506: a(n) = n-th odd nonprime * n-th odd number.

The programs for A163506, the canonical program `A163506.P13187708398187560085` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163506 has offset 1).

The definition of A163506 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A014076, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163506.P13187708398187560085

`A014076(n+1)*(2*(n+1)-1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A163506

/-- `A014076(n+1)*(2*(n+1)-1)` -/
def P13187708398187560085.Spec : Prop :=
  ∀ n, P13187708398187560085.a n = A163506 (n + 1)

theorem P13187708398187560085.correct : P13187708398187560085.Spec := by
  intro n
  simp only [A163506, Nat.add_sub_cancel]

end A163506

/-! ## A163506.P7821797974687468042

`Δ[n²]*A014076(n+1)`
-/

namespace A163506.P7821797974687468042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A014076 (n + 1)

end

end A163506.P7821797974687468042

namespace A163506

/-- `Δ[n²]*A014076(n+1)` -/
def P7821797974687468042.Spec : Prop :=
  ∀ n, P7821797974687468042.a n = A163506 (n + 1)

theorem P7821797974687468042.correct : P7821797974687468042.Spec := by
  intro n
  simp only [A163506, Nat.add_sub_cancel, A163506.P7821797974687468042.f1, A163506.P7821797974687468042.a, A163506.P13187708398187560085.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163506

/-! ## A163506.P7822858806210448958

`sqrt(A062532(n+1))*Δ[n²]`
-/

namespace A163506.P7822858806210448958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062532 (n + 1) : ℝ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)

end

end A163506.P7822858806210448958

namespace A163506

/-- `sqrt(A062532(n+1))*Δ[n²]` -/
def P7822858806210448958.Spec : Prop :=
  ∀ n, P7822858806210448958.a n = (A163506 (n + 1) : ℝ)

end A163506

/-! ## A163506.P3412850920340156099

`(2*n+1)*record[A171435(n+7)]`
-/

namespace A163506.P3412850920340156099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163506.P3412850920340156099

namespace A163506

/-- `(2*n+1)*record[A171435(n+7)]` -/
def P3412850920340156099.Spec : Prop :=
  ∀ n, P3412850920340156099.a n = A163506 (n + 1)

end A163506

/-! ## A163506.P11758106064554469306

`(2*A104275(n+1)-1)*Δ[n²]`
-/

namespace A163506.P11758106064554469306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A104275 (n + 1) - 1) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A163506.P11758106064554469306

namespace A163506

/-- `(2*A104275(n+1)-1)*Δ[n²]` -/
def P11758106064554469306.Spec : Prop :=
  ∀ n, P11758106064554469306.a n = A163506 (n + 1)

end A163506

/-! ## A163506.P7994997113676844317

`(2*n+1)*eq[gcd(2, n), A292438(n)]`
-/

namespace A163506.P7994997113676844317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163506.P7994997113676844317

namespace A163506

/-- `(2*n+1)*eq[gcd(2, n), A292438(n)]` -/
def P7994997113676844317.Spec : Prop :=
  ∀ n, (P7994997113676844317.a n : ℤ) = A163506 (n + 1)

end A163506

/-! ## A163506.P9292350434638251314

`(2*lt[A006530(2*n+1), n+2]+1)*(2*n+1)`
-/

namespace A163506.P9292350434638251314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) * (2 * n + 1)

end

end A163506.P9292350434638251314

namespace A163506

/-- `(2*lt[A006530(2*n+1), n+2]+1)*(2*n+1)` -/
def P9292350434638251314.Spec : Prop :=
  ∀ n, (P9292350434638251314.a n : ℤ) = A163506 (n + 1)

end A163506

/-! ## A163506.P18246019454515603736

`A014076(n+1)+A005843(n)*A014076(n+1)`
-/

namespace A163506.P18246019454515603736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1) + A005843 n * A014076 (n + 1)

end

end A163506.P18246019454515603736

namespace A163506

/-- `A014076(n+1)+A005843(n)*A014076(n+1)` -/
def P18246019454515603736.Spec : Prop :=
  ∀ n, P18246019454515603736.a n = A163506 (n + 1)

theorem P18246019454515603736.correct : P18246019454515603736.Spec := by
  intro n
  simp only [A163506, Nat.add_sub_cancel, A163506.P18246019454515603736.a, A163506.P13187708398187560085.a, A005843, A005843.P3167286115683555970.a, A014076, A014076.P11944548580381270581.f1, A014076.P11944548580381270581.f2, A014076.P11944548580381270581.a, A370482, A370482.P9499058320465952393.f1, A370482.P9499058320465952393.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163506

/-! ## A163506.P17197493528186725463

`A005408(A047845(n+1))*A005408(n)`
-/

namespace A163506.P17197493528186725463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A047845 (n + 1)).toNat * A005408 n

end

end A163506.P17197493528186725463

namespace A163506

/-- `A005408(A047845(n+1))*A005408(n)` -/
def P17197493528186725463.Spec : Prop :=
  ∀ n, P17197493528186725463.a n = A163506 (n + 1)

end A163506

/-! ## A163506.P2740349302683144135

`A005408(comp[A005097(n+1)])*A005408(n)`
-/

namespace A163506.P2740349302683144135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) * A005408 n

end

end A163506.P2740349302683144135

namespace A163506

/-- `A005408(comp[A005097(n+1)])*A005408(n)` -/
def P2740349302683144135.Spec : Prop :=
  ∀ n, P2740349302683144135.a n = A163506 (n + 1)

end A163506

/-! ## A163506.P10681965339294445826

`(2*n+1)*∩[2*n+1, A018252(n+1)]`
-/

namespace A163506.P10681965339294445826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163506.P10681965339294445826

namespace A163506

/-- `(2*n+1)*∩[2*n+1, A018252(n+1)]` -/
def P10681965339294445826.Spec : Prop :=
  ∀ n, (P10681965339294445826.a n : ℤ) = A163506 (n + 1)

end A163506

/-! ## A163506.P8514261903903688808

`record[A093411(A018252(n+1))]*(2*n+1)`
-/

namespace A163506.P8514261903903688808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * (2 * n + 1 : ℤ)

end

end A163506.P8514261903903688808

namespace A163506

/-- `record[A093411(A018252(n+1))]*(2*n+1)` -/
def P8514261903903688808.Spec : Prop :=
  ∀ n, P8514261903903688808.a n = A163506 (n + 1)

end A163506

/-! ## A163506.P18383779878200935196

`record[A328478(A018252(n+2))]*A328478(2*n+1)`
-/

namespace A163506.P18383779878200935196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (A018252 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A328478 (2 * n + 1)

end

end A163506.P18383779878200935196

namespace A163506

/-- `record[A328478(A018252(n+2))]*A328478(2*n+1)` -/
def P18383779878200935196.Spec : Prop :=
  ∀ n, P18383779878200935196.a n = A163506 (n + 1)

end A163506

/-! ## A163506.P5383920936288034485

`(2*n+1)*A075065(2*n+1)`
-/

namespace A163506.P5383920936288034485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A075065 (2 * n + 1)

end

end A163506.P5383920936288034485

namespace A163506

/-- `(2*n+1)*A075065(2*n+1)` -/
def P5383920936288034485.Spec : Prop :=
  ∀ n, P5383920936288034485.a n = A163506 (n + 1)

end A163506

/-!
# A163508: The sum of the prime factors (with repetition) of the sum of 2 successive primes.

The programs for A163508, the canonical program `A163508.P3710448584942683645` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163508 has offset 1).

The definition of A163508 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163508.P3710448584942683645

`A001414(A001043(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163508

/-- `A001414(A001043(n+1))` -/
def P3710448584942683645.Spec : Prop :=
  ∀ n, P3710448584942683645.a n = A163508 (n + 1)

theorem P3710448584942683645.correct : P3710448584942683645.Spec := by
  intro n
  simp only [A163508, Nat.add_sub_cancel]

end A163508

/-! ## A163508.P2387051790155868881

`A001414(Δ[A061802(n)])`
-/

namespace A163508.P2387051790155868881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n).toNat

end

end A163508.P2387051790155868881

namespace A163508

/-- `A001414(Δ[A061802(n)])` -/
def P2387051790155868881.Spec : Prop :=
  ∀ n, P2387051790155868881.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P15390301352000819719

`A001414(A011974(n+2))`
-/

namespace A163508.P15390301352000819719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A011974 (n + 2)).toNat

end

end A163508.P15390301352000819719

namespace A163508

/-- `A001414(A011974(n+2))` -/
def P15390301352000819719.Spec : Prop :=
  ∀ n, P15390301352000819719.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P10920119002034776158

`A001414(A076273(n+2)+1)`
-/

namespace A163508.P10920119002034776158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A076273 (n + 2) + 1).toNat

end

end A163508.P10920119002034776158

namespace A163508

/-- `A001414(A076273(n+2)+1)` -/
def P10920119002034776158.Spec : Prop :=
  ∀ n, P10920119002034776158.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P14444019531407161509

`A001414(A092949(n+1)-1)`
-/

namespace A163508.P14444019531407161509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A092949 (n + 1) - 1).toNat

end

end A163508.P14444019531407161509

namespace A163508

/-- `A001414(A092949(n+1)-1)` -/
def P14444019531407161509.Spec : Prop :=
  ∀ n, P14444019531407161509.a n = A163508 (n + 1)

theorem P14444019531407161509.correct : P14444019531407161509.Spec := by
  intro n
  simp only [A163508, Nat.add_sub_cancel, A163508.P14444019531407161509.a, A163508.P3710448584942683645.a, A001043, A001043.P18269783162673735460.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A092949, A092949.P1382492647621219255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163508

/-! ## A163508.P1796006874523781958

`A001414(A061802(n+1)-A061802(n))`
-/

namespace A163508.P1796006874523781958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A061802 (n + 1) - A061802 n).toNat

end

end A163508.P1796006874523781958

namespace A163508

/-- `A001414(A061802(n+1)-A061802(n))` -/
def P1796006874523781958.Spec : Prop :=
  ∀ n, P1796006874523781958.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P13986528777198536316

`A001414(Δ[A007504(n)]+A000040(n+2))`
-/

namespace A163508.P13986528777198536316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n + A000040 (n + 2)).toNat

end

end A163508.P13986528777198536316

namespace A163508

/-- `A001414(Δ[A007504(n)]+A000040(n+2))` -/
def P13986528777198536316.Spec : Prop :=
  ∀ n, P13986528777198536316.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P15969913270904775703

`A001414(A000040(n+1)+A000040(n+2))`
-/

namespace A163508.P15969913270904775703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000040 (n + 1) + A000040 (n + 2)).toNat

end

end A163508.P15969913270904775703

namespace A163508

/-- `A001414(A000040(n+1)+A000040(n+2))` -/
def P15969913270904775703.Spec : Prop :=
  ∀ n, P15969913270904775703.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P7129796278779153300

`A001414(A065091(n+1)+A008578(n+2))`
-/

namespace A163508.P7129796278779153300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A065091 (n + 1) + A008578 (n + 2)).toNat

end

end A163508.P7129796278779153300

namespace A163508

/-- `A001414(A065091(n+1)+A008578(n+2))` -/
def P7129796278779153300.Spec : Prop :=
  ∀ n, P7129796278779153300.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P8753956323671667915

`A001414(A069482(n+1)/A001223(n+1))`
-/

namespace A163508.P8753956323671667915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (SequenceMachineLib.roundAway ((A069482 (n + 1) : ℚ) / (A001223 (n + 1) : ℚ))).toNat

end

end A163508.P8753956323671667915

namespace A163508

/-- `A001414(A069482(n+1)/A001223(n+1))` -/
def P8753956323671667915.Spec : Prop :=
  ∀ n, P8753956323671667915.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P7860619526118471638

`A001414(A013635(p?[2*n+1]))`
-/

namespace A163508.P7860619526118471638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A013635 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A163508.P7860619526118471638

namespace A163508

/-- `A001414(A013635(p?[2*n+1]))` -/
def P7860619526118471638.Spec : Prop :=
  ∀ n, P7860619526118471638.a n = A163508 (n + 1)

end A163508

/-! ## A163508.P1176281393246844834

`A107463(2*A001043(n+1))-2`
-/

namespace A163508.P1176281393246844834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (2 * A001043 (n + 1)).toNat - 2

end

end A163508.P1176281393246844834

namespace A163508

/-- `A107463(2*A001043(n+1))-2` -/
def P1176281393246844834.Spec : Prop :=
  ∀ n, P1176281393246844834.a n = A163508 (n + 1)

end A163508

/-!
# A163509: Take n written in binary. Replace the leftmost run of 1's with just a single 1. a(n) is the decimal equivalent of the result.

The programs for A163509, the canonical program `A163509.P2719261823814048895` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163509 has offset 1).

The definition of A163509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163509.P2719261823814048895

`A010078(A080079(n+1))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163509

/-- `A010078(A080079(n+1))` -/
def P2719261823814048895.Spec : Prop :=
  ∀ n, P2719261823814048895.a n = A163509 (n + 1)

theorem P2719261823814048895.correct : P2719261823814048895.Spec := by
  intro n
  simp only [A163509, Nat.add_sub_cancel]

end A163509

/-! ## A163509.P4139317294361568767

`A010078(A035327(n+1)+1)`
-/

namespace A163509.P4139317294361568767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A035327 (n + 1) + 1).toNat

end

end A163509.P4139317294361568767

namespace A163509

/-- `A010078(A035327(n+1)+1)` -/
def P4139317294361568767.Spec : Prop :=
  ∀ n, P4139317294361568767.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P13311432138536461228

`A010078(A003817(n+1)-n)`
-/

namespace A163509.P13311432138536461228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A003817 (n + 1) - (n : ℤ)).toNat

end

end A163509.P13311432138536461228

namespace A163509

/-- `A010078(A003817(n+1)-n)` -/
def P13311432138536461228.Spec : Prop :=
  ∀ n, P13311432138536461228.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P2121265918693815055

`A010078(n+2-A006257(n+1))`
-/

namespace A163509.P2121265918693815055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 ((n + 2 : ℤ) - A006257 (n + 1)).toNat

end

end A163509.P2121265918693815055

namespace A163509

/-- `A010078(n+2-A006257(n+1))` -/
def P2121265918693815055.Spec : Prop :=
  ∀ n, P2121265918693815055.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P8822916643392129472

`A010078(and(A142151(n)+1, A010078(n+1)))`
-/

namespace A163509.P8822916643392129472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (Int.land (A142151 n + 1) (A010078 (n + 1))).toNat

end

end A163509.P8822916643392129472

namespace A163509

/-- `A010078(and(A142151(n)+1, A010078(n+1)))` -/
def P8822916643392129472.Spec : Prop :=
  ∀ n, P8822916643392129472.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P18408400461170952148

`n+1-A129760(A342126(n+1))`
-/

namespace A163509.P18408400461170952148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A129760 (A342126 (n + 1)).toNat

end

end A163509.P18408400461170952148

namespace A163509

/-- `n+1-A129760(A342126(n+1))` -/
def P18408400461170952148.Spec : Prop :=
  ∀ n, P18408400461170952148.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P10834745487105355351

`A341916(A000265(A341915(n+1)))`
-/

namespace A163509.P10834745487105355351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A000265 (A341915 (n + 1)).toNat).toNat

end

end A163509.P10834745487105355351

namespace A163509

/-- `A341916(A000265(A341915(n+1)))` -/
def P10834745487105355351.Spec : Prop :=
  ∀ n, P10834745487105355351.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P11871073533140261228

`A010078(A092323(2*(n+1))-n)`
-/

namespace A163509.P11871073533140261228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A092323 (2 * (n + 1)) - (n : ℤ)).toNat

end

end A163509.P11871073533140261228

namespace A163509

/-- `A010078(A092323(2*(n+1))-n)` -/
def P11871073533140261228.Spec : Prop :=
  ∀ n, P11871073533140261228.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P1032115608283448961

`A010078(xor(n, A092323(2*(n+1))))`
-/

namespace A163509.P1032115608283448961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (Int.xor (n : ℤ) (A092323 (2 * (n + 1)))).toNat

end

end A163509.P1032115608283448961

namespace A163509

/-- `A010078(xor(n, A092323(2*(n+1))))` -/
def P1032115608283448961.Spec : Prop :=
  ∀ n, P1032115608283448961.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P13257502372079260523

`A059894(A000265(A059894(n+1)))`
-/

namespace A163509.P13257502372079260523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (A000265 (A059894 (n + 1)).toNat).toNat

end

end A163509.P13257502372079260523

namespace A163509

/-- `A059894(A000265(A059894(n+1)))` -/
def P13257502372079260523.Spec : Prop :=
  ∀ n, P13257502372079260523.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P10404676929207282649

`A059893(A036044(A036044(A059893(n+1))))`
-/

namespace A163509.P10404676929207282649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A036044 (A036044 (A059893 (n + 1)).toNat).toNat).toNat

end

end A163509.P10404676929207282649

namespace A163509

/-- `A059893(A036044(A036044(A059893(n+1))))` -/
def P10404676929207282649.Spec : Prop :=
  ∀ n, P10404676929207282649.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P6940867854726921490

`A341916(A000265(A059893(A003188(n+1))))`
-/

namespace A163509.P6940867854726921490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 (A000265 (A059893 (A003188 (n + 1)).toNat).toNat).toNat

end

end A163509.P6940867854726921490

namespace A163509

/-- `A341916(A000265(A059893(A003188(n+1))))` -/
def P6940867854726921490.Spec : Prop :=
  ∀ n, P6940867854726921490.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P5627527390168013977

`A080079(n+1)+A035327(A035327(2*(n+1)))`
-/

namespace A163509.P5627527390168013977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080079 (n + 1) + A035327 (A035327 (2 * (n + 1))).toNat

end

end A163509.P5627527390168013977

namespace A163509

/-- `A080079(n+1)+A035327(A035327(2*(n+1)))` -/
def P5627527390168013977.Spec : Prop :=
  ∀ n, P5627527390168013977.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P7212055028740885316

`A010078(A054429(2*(n+1))-A010078(n+2))`
-/

namespace A163509.P7212055028740885316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A054429 (2 * (n + 1)) - A010078 (n + 2)).toNat

end

end A163509.P7212055028740885316

namespace A163509

/-- `A010078(A054429(2*(n+1))-A010078(n+2))` -/
def P7212055028740885316.Spec : Prop :=
  ∀ n, P7212055028740885316.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P11359308721231001059

`A038572(2*n+3)-A342126(2*(n+1))`
-/

namespace A163509.P11359308721231001059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (2 * n + 3) - A342126 (2 * (n + 1))

end

end A163509.P11359308721231001059

namespace A163509

/-- `A038572(2*n+3)-A342126(2*(n+1))` -/
def P11359308721231001059.Spec : Prop :=
  ∀ n, P11359308721231001059.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P3926355784039387148

`A062383(A080079(2*n+3))-A080079(n+1)`
-/

namespace A163509.P3926355784039387148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A080079 (2 * n + 3)).toNat - A080079 (n + 1)

end

end A163509.P3926355784039387148

namespace A163509

/-- `A062383(A080079(2*n+3))-A080079(n+1)` -/
def P3926355784039387148.Spec : Prop :=
  ∀ n, P3926355784039387148.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P9165447556731666741

`A020330(n+1)%A062383(A080079(2*n+3))`
-/

namespace A163509.P9165447556731666741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020330 (n + 1)) (A062383 (A080079 (2 * n + 3)).toNat)

end

end A163509.P9165447556731666741

namespace A163509

/-- `A020330(n+1)%A062383(A080079(2*n+3))` -/
def P9165447556731666741.Spec : Prop :=
  ∀ n, P9165447556731666741.a n = A163509 (n + 1)

end A163509

/-! ## A163509.P6756587755569250844

`A010078(A062050(A010078(n+2)))`
-/

namespace A163509.P6756587755569250844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A062050 (A010078 (n + 2)).toNat).toNat

end

end A163509.P6756587755569250844

namespace A163509

/-- `A010078(A062050(A010078(n+2)))` -/
def P6756587755569250844.Spec : Prop :=
  ∀ n, P6756587755569250844.a n = A163509 (n + 1)

end A163509

/-!
# A163510: Irregular table read by rows: Write n in binary. For each 1, the m-th term of row n is the number of 0's between the m-th 1, reading right to left, and the (m-1)th 1 (or the right side of the number if m-1 = 0).

The programs for A163510, there is no canonical definition to state claims against.
-/

/-! ## A163510.P2962717812543913013

`A228351(n+1)-1`
-/

namespace A163510.P2962717812543913013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228351 (n + 1) - 1

end

end A163510.P2962717812543913013

/-! ## A163510.P15524340273091657348

`A004829(A228351(n+1))`
-/

namespace A163510.P15524340273091657348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004829 (A228351 (n + 1)).toNat

end

end A163510.P15524340273091657348

/-! ## A163510.P15985408102087900109

`A023444(A228351(n+1)+1)`
-/

namespace A163510.P15985408102087900109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A228351 (n + 1) + 1).toNat

end

end A163510.P15985408102087900109

/-! ## A163510.P10843924821465600079

`A289207(A228351(n+1)+1)`
-/

namespace A163510.P10843924821465600079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A228351 (n + 1) + 1).toNat

end

end A163510.P10843924821465600079

/-! ## A163510.P5328372772124299649

`A140106(2*A228351(n+1))`
-/

namespace A163510.P5328372772124299649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A228351 (n + 1)).toNat

end

end A163510.P5328372772124299649

/-! ## A163510.P1208445501037893476

`A048105(2^A228351(n+1))`
-/

namespace A163510.P1208445501037893476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A228351 (n + 1) : ℤ))).toNat

end

end A163510.P1208445501037893476

/-! ## A163510.P7587948436163657230

`A162611(C(A228351(n+1), 2))`
-/

namespace A163510.P7587948436163657230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162611 (Nat.choose (A228351 (n + 1)).toNat 2)

end

end A163510.P7587948436163657230

/-! ## A163510.P10539396792340161243

`A127229(n+5)%A228351(n+1)`
-/

namespace A163510.P10539396792340161243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A228351 (n + 1))

end

end A163510.P10539396792340161243

/-! ## A163510.P9631641494095389086

`A043096(A228351(n+1)%(2*(n+1)))`
-/

namespace A163510.P9631641494095389086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043096 (Int.tmod (A228351 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A163510.P9631641494095389086

/-! ## A163510.P9726287186172494387

`(A228351(n+1)+A158412(n+1))%(n+1)`
-/

namespace A163510.P9726287186172494387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A228351 (n + 1) + A158412 (n + 1)) (n + 1 : ℤ)

end

end A163510.P9726287186172494387

/-! ## A163510.P3831460563130038513

`A066566(A228351(n+1))%A008576(n)`
-/

namespace A163510.P3831460563130038513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066566 (A228351 (n + 1)).toNat) (A008576 n)

end

end A163510.P3831460563130038513

/-! ## A163510.P7702246157024411547

`A247752(A228351(n+1)%A016934(n))`
-/

namespace A163510.P7702246157024411547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247752 (Int.tmod (A228351 (n + 1)) (A016934 n)).toNat

end

end A163510.P7702246157024411547

/-! ## A163510.P10439713282647103209

`A247752(A228351(n+1))%A050216(n)`
-/

namespace A163510.P10439713282647103209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247752 (A228351 (n + 1)).toNat) (A050216 n)

end

end A163510.P10439713282647103209

/-! ## A163510.P14626467176138649310

`A358151(A020639(2*(n+2)))+A228351(n+1)`
-/

namespace A163510.P14626467176138649310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358151 (A020639 (2 * (n + 2))).toNat + A228351 (n + 1)

end

end A163510.P14626467176138649310

/-! ## A163510.P2548409352005678756

`Δ[eq[A030308(n), A057427(n)]]-1`
-/

namespace A163510.P2548409352005678756
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A163510.P2548409352005678756

/-! ## A163510.P10095297355245120129

`A323202(2*n+1)+A228351(n+1)`
-/

namespace A163510.P10095297355245120129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * n + 1) + A228351 (n + 1)

end

end A163510.P10095297355245120129

/-! ## A163510.P5872421275899986781

`A296765(A228351(n+1))+A153881(3*n+2)`
-/

namespace A163510.P5872421275899986781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296765 (A228351 (n + 1)).toNat + A153881 (3 * n + 2)

end

end A163510.P5872421275899986781

/-! ## A163510.P6093685080065409110

`A200748(n)%A228351(n+1)`
-/

namespace A163510.P6093685080065409110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A228351 (n + 1))

end

end A163510.P6093685080065409110

/-! ## A163510.P8732053634609747208

`A058197(n+1)%A228351(n+1)`
-/

namespace A163510.P8732053634609747208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A228351 (n + 1))

end

end A163510.P8732053634609747208

/-!
# A163511: a(0)=1. a(n) = p(A000120(n)) * Product_{m=1..A000120(n)} p(m)^A163510(n,m), where p(m) is the m-th prime.

The programs for A163511, the canonical program `A163511.P5635496813650871695` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163511 has offset 0).

The definition of A163511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163511.P10408431184706586240

`A064216(A245612(n))`
-/

namespace A163511.P10408431184706586240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (A245612 n).toNat

end

end A163511.P10408431184706586240

namespace A163511

/-- `A064216(A245612(n))` -/
def P10408431184706586240.Spec : Prop :=
  ∀ n, P10408431184706586240.a n = A163511 n

end A163511

/-! ## A163511.P5860254605401300011

`A364258(n)+n`
-/

namespace A163511.P5860254605401300011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364258 n + (n : ℤ)

end

end A163511.P5860254605401300011

namespace A163511

/-- `A364258(n)+n` -/
def P5860254605401300011.Spec : Prop :=
  ∀ n, P5860254605401300011.a n = A163511 n

theorem P5860254605401300011.correct : P5860254605401300011.Spec := by
  intro n
  simp only [A163511, Nat.add_sub_cancel, A163511.P5860254605401300011.a, A163511.P5635496813650871695.a, A145342, A145342.P11180459690303212781.a, A253563, A253563.P3695549317124564486.a, A364258, A364258.P6786196179042320049.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000120, A000120.P2816527436160941581.a, A025480, A025480.P15873863116418380882.a, A145341, A145341.P17834554394848515737.a, A005187, A005187.P3874015513960485494.a, A006519, A006519.P10435570611646570274.a, A030101, A030101.P16184294017372777612.a, A055945, A055945.P5963763732554067333.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163511

/-! ## A163511.P6310291990003063986

`A366275(A057889(n))`
-/

namespace A163511.P6310291990003063986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (A057889 n).toNat

end

end A163511.P6310291990003063986

namespace A163511

/-- `A366275(A057889(n))` -/
def P6310291990003063986.Spec : Prop :=
  ∀ n, P6310291990003063986.a n = A163511 n

end A163511

/-! ## A163511.P15734390902944364820

`A075157(A006068(n))+1`
-/

namespace A163511.P15734390902944364820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075157 (A006068 n).toNat + 1

end

end A163511.P15734390902944364820

namespace A163511

/-- `A075157(A006068(n))+1` -/
def P15734390902944364820.Spec : Prop :=
  ∀ n, P15734390902944364820.a n = A163511 n

end A163511

/-! ## A163511.P3853410979775251661

`A364255(n)*A364492(n)`
-/

namespace A163511.P3853410979775251661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364255 n * A364492 n

end

end A163511.P3853410979775251661

namespace A163511

/-- `A364255(n)*A364492(n)` -/
def P3853410979775251661.Spec : Prop :=
  ∀ n, P3853410979775251661.a n = A163511 n

end A163511

/-! ## A163511.P8002547031336286631

`gcd(n, A364258(n))*A364492(n)`
-/

namespace A163511.P8002547031336286631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A364258 n) : ℤ) * A364492 n

end

end A163511.P8002547031336286631

namespace A163511

/-- `gcd(n, A364258(n))*A364492(n)` -/
def P8002547031336286631.Spec : Prop :=
  ∀ n, P8002547031336286631.a n = A163511 n

end A163511

/-! ## A163511.P9620464521694339683

`A366275(A379472(A193231(n)))`
-/

namespace A163511.P9620464521694339683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366275 (A379472 (A193231 n).toNat).toNat

end

end A163511.P9620464521694339683

namespace A163511

/-- `A366275(A379472(A193231(n)))` -/
def P9620464521694339683.Spec : Prop :=
  ∀ n, P9620464521694339683.a n = A163511 n

end A163511

/-! ## A163511.P5635496813650871695

`A253563(A145342(n+1)-1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A163511

/-- `A253563(A145342(n+1)-1)` -/
def P5635496813650871695.Spec : Prop :=
  ∀ n, P5635496813650871695.a n = A163511 n

theorem P5635496813650871695.correct : P5635496813650871695.Spec := by
  intro n
  simp only [A163511]

end A163511

/-! ## A163511.P7419204100589965879

`A243353(A180200(n))`
-/

namespace A163511.P7419204100589965879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243353 (A180200 n).toNat

end

end A163511.P7419204100589965879

namespace A163511

/-- `A243353(A180200(n))` -/
def P7419204100589965879.Spec : Prop :=
  ∀ n, P7419204100589965879.a n = A163511 n

end A163511

/-! ## A163511.P16818044928053145225

`A366263(A234026(n))`
-/

namespace A163511.P16818044928053145225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366263 (A234026 n).toNat

end

end A163511.P16818044928053145225

namespace A163511

/-- `A366263(A234026(n))` -/
def P16818044928053145225.Spec : Prop :=
  ∀ n, P16818044928053145225.a n = A163511 n

end A163511

/-! ## A163511.P16568335028419009930

`A075159(A006068(n)+1)`
-/

namespace A163511.P16568335028419009930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075159 (A006068 n + 1).toNat

end

end A163511.P16568335028419009930

namespace A163511

/-- `A075159(A006068(n)+1)` -/
def P16568335028419009930.Spec : Prop :=
  ∀ n, P16568335028419009930.a n = A163511 n

end A163511

/-! ## A163511.P8675705338773708238

`A075159(A066194(n+1))`
-/

namespace A163511.P8675705338773708238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075159 (A066194 (n + 1)).toNat

end

end A163511.P8675705338773708238

namespace A163511

/-- `A075159(A066194(n+1))` -/
def P8675705338773708238.Spec : Prop :=
  ∀ n, P8675705338773708238.a n = A163511 n

end A163511

/-! ## A163511.P1657977207234849614

`A005940(A337909(n+1))`
-/

namespace A163511.P1657977207234849614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A337909 (n + 1)).toNat

end

end A163511.P1657977207234849614

namespace A163511

/-- `A005940(A337909(n+1))` -/
def P1657977207234849614.Spec : Prop :=
  ∀ n, P1657977207234849614.a n = A163511 n

end A163511

/-! ## A163511.P9313652040213877890

`A005940(floor(A054429(2*n+1)/2)+1)`
-/

namespace A163511.P9313652040213877890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (⌊(A054429 (2 * n + 1) : ℚ) / 2⌋ + 1).toNat

end

end A163511.P9313652040213877890

namespace A163511

/-- `A005940(floor(A054429(2*n+1)/2)+1)` -/
def P9313652040213877890.Spec : Prop :=
  ∀ n, P9313652040213877890.a n = A163511 n

end A163511

/-! ## A163511.P12983659904338535195

`A279338(A279342(n))`
-/

namespace A163511.P12983659904338535195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279342 n).toNat

end

end A163511.P12983659904338535195

namespace A163511

/-- `A279338(A279342(n))` -/
def P12983659904338535195.Spec : Prop :=
  ∀ n, P12983659904338535195.a n = A163511 n

end A163511

/-! ## A163511.P3057310154489100492

`A279338(A279347(A279344(n)))`
-/

namespace A163511.P3057310154489100492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279338 (A279347 (A279344 n).toNat).toNat

end

end A163511.P3057310154489100492

namespace A163511

/-- `A279338(A279347(A279344(n)))` -/
def P3057310154489100492.Spec : Prop :=
  ∀ n, P3057310154489100492.a n = A163511 n

end A163511

/-! ## A163511.P10058238574712785567

`A005940(A160588(A122155(2*n+1)))`
-/

namespace A163511.P10058238574712785567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A160588 (A122155 (2 * n + 1)).toNat).toNat

end

end A163511.P10058238574712785567

namespace A163511

/-- `A005940(A160588(A122155(2*n+1)))` -/
def P10058238574712785567.Spec : Prop :=
  ∀ n, P10058238574712785567.a n = A163511 n

end A163511

/-! ## A163511.P8739318231537215274

`A005940(A001057(A065190(A054429(2*n+1))))`
-/

namespace A163511.P8739318231537215274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (A001057 (A065190 (A054429 (2 * n + 1)).toNat).toNat).toNat

end

end A163511.P8739318231537215274

namespace A163511

/-- `A005940(A001057(A065190(A054429(2*n+1))))` -/
def P8739318231537215274.Spec : Prop :=
  ∀ n, P8739318231537215274.a n = A163511 n

end A163511

/-! ## A163511.P827872875451088536

`A250246(A252755(n))`
-/

namespace A163511.P827872875451088536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (A252755 n).toNat

end

end A163511.P827872875451088536

namespace A163511

/-- `A250246(A252755(n))` -/
def P827872875451088536.Spec : Prop :=
  ∀ n, P827872875451088536.a n = A163511 n

end A163511

/-! ## A163511.P5143281292932800439

`A302026(A269385(n))`
-/

namespace A163511.P5143281292932800439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302026 (A269385 n).toNat

end

end A163511.P5143281292932800439

namespace A163511

/-- `A302026(A269385(n))` -/
def P5143281292932800439.Spec : Prop :=
  ∀ n, P5143281292932800439.a n = A163511 n

end A163511

/-!
# A163512: Primes of the form (1 + k + k^3)/3.

The programs for A163512, there is no canonical definition to state claims against.
-/

/-! ## A163512.P18104877067129960192

`p?[ceil((n^3+n)/3)]`
-/

namespace A163512.P18104877067129960192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 + n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163512.P18104877067129960192

/-! ## A163512.P11151731544811404748

`∏{p}[p?[A006527(3*n+1)-n], #]`
-/

namespace A163512.P11151731544811404748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (3 * n + 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A163512.P11151731544811404748

/-! ## A163512.P15685314437171675630

`p?[A121628(n+1)+1+n]-A326683(n)`
-/

namespace A163512.P15685314437171675630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121628 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A326683 n

end

end A163512.P15685314437171675630

/-! ## A163512.P4080923499947822430

`A000027(p?[A006527(3*n+1)-n])`
-/

namespace A163512.P4080923499947822430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006527 (3 * n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163512.P4080923499947822430

/-!
# A163515: If n-th composite is the product of k1-th prime, k2-th prime, ..., kr-th prime then set a(n) = k1 + k2 + ... + kr.

The programs for A163515, the canonical program `A163515.P10456658372542648136` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163515 has offset 1).

The definition of A163515 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163515.P16363233489797316582

`A056239(Δ[A053767(n)])`
-/

namespace A163515.P16363233489797316582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (n + 1) - f1 n).toNat

end

end A163515.P16363233489797316582

namespace A163515

/-- `A056239(Δ[A053767(n)])` -/
def P16363233489797316582.Spec : Prop :=
  ∀ n, P16363233489797316582.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P11763333596686457303

`A056239(comp[A351078(n)])`
-/

namespace A163515.P11763333596686457303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A163515.P11763333596686457303

namespace A163515

/-- `A056239(comp[A351078(n)])` -/
def P11763333596686457303.Spec : Prop :=
  ∀ n, P11763333596686457303.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P9101903113239350063

`A056239(A002808(n+1))`
-/

namespace A163515.P9101903113239350063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A002808 (n + 1)).toNat

end

end A163515.P9101903113239350063

namespace A163515

/-- `A056239(A002808(n+1))` -/
def P9101903113239350063.Spec : Prop :=
  ∀ n, P9101903113239350063.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P18166942168854171146

`A325033(A088982(n+1))`
-/

namespace A163515.P18166942168854171146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (A088982 (n + 1)).toNat

end

end A163515.P18166942168854171146

namespace A163515

/-- `A325033(A088982(n+1))` -/
def P18166942168854171146.Spec : Prop :=
  ∀ n, P18166942168854171146.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P9649153106152333780

`A056239(A018252(n+2))`
-/

namespace A163515.P9649153106152333780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A018252 (n + 2)).toNat

end

end A163515.P9649153106152333780

namespace A163515

/-- `A056239(A018252(n+2))` -/
def P9649153106152333780.Spec : Prop :=
  ∀ n, P9649153106152333780.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P9154507059824478409

`A325033(A007821(n+2))`
-/

namespace A163515.P9154507059824478409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (A007821 (n + 2)).toNat

end

end A163515.P9154507059824478409

namespace A163515

/-- `A325033(A007821(n+2))` -/
def P9154507059824478409.Spec : Prop :=
  ∀ n, P9154507059824478409.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P16465340799406065968

`A325033(A309649(n+2))`
-/

namespace A163515.P16465340799406065968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325033 (A309649 (n + 2)).toNat

end

end A163515.P16465340799406065968

namespace A163515

/-- `A325033(A309649(n+2))` -/
def P16465340799406065968.Spec : Prop :=
  ∀ n, P16465340799406065968.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P5638453387677132190

`A056239(A141468(n+3))`
-/

namespace A163515.P5638453387677132190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A141468 (n + 3)).toNat

end

end A163515.P5638453387677132190

namespace A163515

/-- `A056239(A141468(n+3))` -/
def P5638453387677132190.Spec : Prop :=
  ∀ n, P5638453387677132190.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P15657882727215476706

`A056239(lt[0, A107393(n)])`
-/

namespace A163515.P15657882727215476706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163515.P15657882727215476706

namespace A163515

/-- `A056239(lt[0, A107393(n)])` -/
def P15657882727215476706.Spec : Prop :=
  ∀ n, P15657882727215476706.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P11567796075375056316

`A056239(lt[1, A003415(n)])`
-/

namespace A163515.P11567796075375056316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163515.P11567796075375056316

namespace A163515

/-- `A056239(lt[1, A003415(n)])` -/
def P11567796075375056316.Spec : Prop :=
  ∀ n, P11567796075375056316.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P9531476629428552489

`A056239(lt[1, A032741(n)])`
-/

namespace A163515.P9531476629428552489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163515.P9531476629428552489

namespace A163515

/-- `A056239(lt[1, A032741(n)])` -/
def P9531476629428552489.Spec : Prop :=
  ∀ n, P9531476629428552489.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P11685485975030300893

`A056239(lt[1, A074206(n)])`
-/

namespace A163515.P11685485975030300893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163515.P11685485975030300893

namespace A163515

/-- `A056239(lt[1, A074206(n)])` -/
def P11685485975030300893.Spec : Prop :=
  ∀ n, P11685485975030300893.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P2354193902190978593

`A056239(lt[1, A107286(n)])`
-/

namespace A163515.P2354193902190978593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163515.P2354193902190978593

namespace A163515

/-- `A056239(lt[1, A107286(n)])` -/
def P2354193902190978593.Spec : Prop :=
  ∀ n, P2354193902190978593.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P12584878703075157457

`A056239(lt[2, A304442(n)])`
-/

namespace A163515.P12584878703075157457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163515.P12584878703075157457

namespace A163515

/-- `A056239(lt[2, A304442(n)])` -/
def P12584878703075157457.Spec : Prop :=
  ∀ n, P12584878703075157457.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P18235939578890509282

`A056239(A060462(n+2)+1)`
-/

namespace A163515.P18235939578890509282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A060462 (n + 2) + 1).toNat

end

end A163515.P18235939578890509282

namespace A163515

/-- `A056239(A060462(n+2)+1)` -/
def P18235939578890509282.Spec : Prop :=
  ∀ n, P18235939578890509282.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P10456658372542648136

`∑{d}[A018252(n+2), A297109(#)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163515

/-- `∑{d}[A018252(n+2), A297109(#)]` -/
def P10456658372542648136.Spec : Prop :=
  ∀ n, P10456658372542648136.a n = A163515 (n + 1)

theorem P10456658372542648136.correct : P10456658372542648136.Spec := by
  intro n
  simp only [A163515, Nat.add_sub_cancel]

end A163515

/-! ## A163515.P12686553398737558268

`A056239(comp[C(A006530(n+1), n)])`
-/

namespace A163515.P12686553398737558268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A163515.P12686553398737558268

namespace A163515

/-- `A056239(comp[C(A006530(n+1), n)])` -/
def P12686553398737558268.Spec : Prop :=
  ∀ n, P12686553398737558268.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P2622298225465065036

`A056239(comp[C(A020639(n+1), n)])`
-/

namespace A163515.P2622298225465065036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A163515.P2622298225465065036

namespace A163515

/-- `A056239(comp[C(A020639(n+1), n)])` -/
def P2622298225465065036.Spec : Prop :=
  ∀ n, P2622298225465065036.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P5110815152959876603

`A056239(lt[1, A001222(n+1)]+1)`
-/

namespace A163515.P5110815152959876603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A163515.P5110815152959876603

namespace A163515

/-- `A056239(lt[1, A001222(n+1)]+1)` -/
def P5110815152959876603.Spec : Prop :=
  ∀ n, P5110815152959876603.a n = A163515 (n + 1)

end A163515

/-! ## A163515.P16070521000475065286

`A056239(lt[2, A000005(n+1)]+1)`
-/

namespace A163515.P16070521000475065286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A163515.P16070521000475065286

namespace A163515

/-- `A056239(lt[2, A000005(n+1)]+1)` -/
def P16070521000475065286.Spec : Prop :=
  ∀ n, P16070521000475065286.a n = A163515 (n + 1)

end A163515

/-!
# A163516: a(n) = floor( Sum_{x=2..n} x/log(x) ).

The programs for A163516, there is no canonical definition to state claims against.
-/

/-! ## A163516.P9347186522741360988

`A118759(A055999(n)-A195172(A000096(n)))`
-/

namespace A163516.P9347186522741360988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A055999 n - A195172 (A000096 n).toNat).toNat

end

end A163516.P9347186522741360988

/-! ## A163516.P661902634459906133

`A095861(∑[∑[A261865(n+1)]²])`
-/

namespace A163516.P661902634459906133
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261865 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163516.P661902634459906133

/-! ## A163516.P15623119897231651976

`floor(A349216(3*n+5)/A250120(2*(n+2)))+2*n`
-/

namespace A163516.P15623119897231651976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A349216 (3 * n + 5) : ℚ) / (A250120 (2 * (n + 2)) : ℚ)⌋ + (2 * n : ℤ)

end

end A163516.P15623119897231651976

/-! ## A163516.P9183022693996400976

`A095861(∑[A008724(A004771(n))])`
-/

namespace A163516.P9183022693996400976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008724 (A004771 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095861 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163516.P9183022693996400976

/-! ## A163516.P632285965950946212

`A135661(A306673(3*(n+1)))+n`
-/

namespace A163516.P632285965950946212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135661 (A306673 (3 * (n + 1))).toNat + (n : ℤ)

end

end A163516.P632285965950946212

/-!
# A163517: If m-th composite is the product of k1-th prime, k2-th prime,..,kr-th prime and prime=k1+k2+..+kr then set a(n)=m.

The programs for A163517, there is no canonical definition to state claims against.
-/

/-! ## A163517.P12128899266949764796

`eq[2, A000005(A163515(n+1))]+1`
-/

namespace A163517.P12128899266949764796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A163515 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A163517.P12128899266949764796

/-! ## A163517.P10547596951536697261

`eq[1, ∑{e}[A056239(A018252(n+1)), #]]`
-/

namespace A163517.P10547596951536697261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A018252 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163517.P10547596951536697261

/-! ## A163517.P2297239729654335421

`record[A000027(n+1)/A088445(A163515(n+1))]`
-/

namespace A163517.P2297239729654335421
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A088445 (A163515 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163517.P2297239729654335421

/-! ## A163517.P17126721218525757742

`lt[A122188(A055230(n+4)+A002479(n+1)), 1]`
-/

namespace A163517.P17126721218525757742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122188 (A055230 (n + 4) + A002479 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A163517.P17126721218525757742

/-! ## A163517.P2202546855223584785

`eq[A029382(n), A029408(n+1)]`
-/

namespace A163517.P2202546855223584785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029382 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163517.P2202546855223584785

/-!
# A163520: a(n) is the least integer x such that n < x and the product n*x is divisible by an integer y where n < y < x.

The programs for A163520, there is no canonical definition to state claims against.
-/

/-! ## A163520.P16099530064290309630

`n+1+A063655(n+1)+1`
-/

namespace A163520.P16099530064290309630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A063655 (n + 1) + 1

end

end A163520.P16099530064290309630

/-! ## A163520.P10836806294779082676

`(A033676(n+1)+1)*(A033677(n+1)+1)`
-/

namespace A163520.P10836806294779082676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033676 (n + 1) + 1) * (A033677 (n + 1) + 1)

end

end A163520.P10836806294779082676

/-! ## A163520.P9100331987992124989

`A063655(n+1)+2+n`
-/

namespace A163520.P9100331987992124989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063655 (n + 1) + 2 + (n : ℤ)

end

end A163520.P9100331987992124989

/-! ## A163520.P17190165562404350285

`A387830(n+1)+4+n`
-/

namespace A163520.P17190165562404350285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387830 (n + 1) + 4 + (n : ℤ)

end

end A163520.P17190165562404350285

/-! ## A163520.P7124929442688846596

`A262767(n+1)/2+2+n`
-/

namespace A163520.P7124929442688846596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262767 (n + 1) : ℚ) / 2 + 2 + (n : ℚ)

end

end A163520.P7124929442688846596

/-! ## A163520.P18061964916709975002

`2*n+3-A220114(n+1)`
-/

namespace A163520.P18061964916709975002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) - A220114 (n + 1)

end

end A163520.P18061964916709975002

/-! ## A163520.P2868002899341697823

`4/(n+1)*A355498(n+1)`
-/

namespace A163520.P2868002899341697823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 / (n + 1 : ℚ) * (A355498 (n + 1) : ℚ)

end

end A163520.P2868002899341697823

/-! ## A163520.P7683680382061973859

`A009056(A063655(n+1))+n`
-/

namespace A163520.P7683680382061973859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A063655 (n + 1)).toNat + (n : ℤ)

end

end A163520.P7683680382061973859

/-! ## A163520.P9472109703022762712

`A387830(n+1)+A020705(n)`
-/

namespace A163520.P9472109703022762712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387830 (n + 1) + A020705 n

end

end A163520.P9472109703022762712

/-! ## A163520.P16007923360533960643

`A385454(n+1)+A262767(n+1)`
-/

namespace A163520.P16007923360533960643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385454 (n + 1) + A262767 (n + 1)

end

end A163520.P16007923360533960643

/-! ## A163520.P17846085783319983511

`A009056(A262767(n+1)/2)+n`
-/

namespace A163520.P17846085783319983511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.roundAway ((A262767 (n + 1) : ℚ) / 2)).toNat + (n : ℤ)

end

end A163520.P17846085783319983511

/-! ## A163520.P5469996358809678076

`A075254(n+1)+A092510(n+1)+1`
-/

namespace A163520.P5469996358809678076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075254 (n + 1) + (A092510 (n + 1) + 1)

end

end A163520.P5469996358809678076

/-! ## A163520.P6962348380165899236

`A033676(n+1)+A248835(n+1)+1`
-/

namespace A163520.P6962348380165899236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1) + (A248835 (n + 1) + 1)

end

end A163520.P6962348380165899236

/-! ## A163520.P13632642238974038528

`A001414(n+1)+A092510(n+1)+n+2`
-/

namespace A163520.P13632642238974038528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) + (A092510 (n + 1) + (n + 2 : ℤ))

end

end A163520.P13632642238974038528

/-! ## A163520.P16440886854560108086

`A248835(n+1)+A248835(n+1)/A033677(n+1)`
-/

namespace A163520.P16440886854560108086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248835 (n + 1) : ℚ) + (A248835 (n + 1) : ℚ) / (A033677 (n + 1) : ℚ)

end

end A163520.P16440886854560108086

/-! ## A163520.P9265754632364063200

`A111234(A262767(n+1))+n`
-/

namespace A163520.P9265754632364063200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (A262767 (n + 1)).toNat + (n : ℤ)

end

end A163520.P9265754632364063200

/-!
# A163522: a(1)=2; for n>1, a(n) = sum of digits of a(n-1)^2.

The programs for A163522, the canonical program `A163522.P13442653417368306447` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163522 has offset 1).

The definition of A163522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163522.P13442653417368306447

`a(n-2)` with `a(0)=2, a(1)=4, a(2)=7, a(3)=13, a(4)=16`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163522

/-- `a(n-2)` -/
def P13442653417368306447.Spec : Prop :=
  ∀ n, (P13442653417368306447.a n : ℤ) = A163522 (n + 1)

theorem P13442653417368306447.correct : P13442653417368306447.Spec := by
  intro n
  simp only [A163522, Nat.add_sub_cancel]

end A163522

/-!
# A163523: a(n) = tau(n) + omega(n).

The programs for A163523, the canonical program `A163523.P17500706477665394313` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163523 has offset 1).

The definition of A163523 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163523.P17500706477665394313

`A000005(n+1)+A001221(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163523

/-- `A000005(n+1)+A001221(n+1)` -/
def P17500706477665394313.Spec : Prop :=
  ∀ n, P17500706477665394313.a n = A163523 (n + 1)

theorem P17500706477665394313.correct : P17500706477665394313.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel]

end A163523

/-! ## A163523.P5840560236425823451

`A001221(n+1)+Δ[A006218(n)]`
-/

namespace A163523.P5840560236425823451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163523.P5840560236425823451

namespace A163523

/-- `A001221(n+1)+Δ[A006218(n)]` -/
def P5840560236425823451.Spec : Prop :=
  ∀ n, P5840560236425823451.a n = A163523 (n + 1)

end A163523

/-! ## A163523.P5374146550392917897

`A001221(n+1)+Δ[A054519(n)]`
-/

namespace A163523.P5374146550392917897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (f1 (n + 1) - f1 n)

end

end A163523.P5374146550392917897

namespace A163523

/-- `A001221(n+1)+Δ[A054519(n)]` -/
def P5374146550392917897.Spec : Prop :=
  ∀ n, P5374146550392917897.a n = A163523 (n + 1)

end A163523

/-! ## A163523.P5359005221367663899

`A081707(n+1)+A080256(n+1)`
-/

namespace A163523.P5359005221367663899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081707 (n + 1) + A080256 (n + 1)

end

end A163523.P5359005221367663899

namespace A163523

/-- `A081707(n+1)+A080256(n+1)` -/
def P5359005221367663899.Spec : Prop :=
  ∀ n, P5359005221367663899.a n = A163523 (n + 1)

theorem P5359005221367663899.correct : P5359005221367663899.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P5359005221367663899.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A080256, A080256.P7120327596299936655.a, A081707, A081707.P11488317504414789232.a, A001222, A001222.P11318177267732088261.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P2666504972441551157.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P994914870586008278

`A351417(n+1)+A034444(n+1)`
-/

namespace A163523.P994914870586008278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351417 (n + 1) + A034444 (n + 1)

end

end A163523.P994914870586008278

namespace A163523

/-- `A351417(n+1)+A034444(n+1)` -/
def P994914870586008278.Spec : Prop :=
  ∀ n, P994914870586008278.a n = A163523 (n + 1)

theorem P994914870586008278.correct : P994914870586008278.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P994914870586008278.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A034444, A034444.P6574915864346323298.a, A351417, A351417.P10622450361574635402.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A048105, A048105.P14513846835403787716.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P12752019273325734342

`A350331(n+1)+A262095(n+1)`
-/

namespace A163523.P12752019273325734342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350331 (n + 1) + A262095 (n + 1)

end

end A163523.P12752019273325734342

namespace A163523

/-- `A350331(n+1)+A262095(n+1)` -/
def P12752019273325734342.Spec : Prop :=
  ∀ n, P12752019273325734342.a n = A163523 (n + 1)

theorem P12752019273325734342.correct : P12752019273325734342.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P12752019273325734342.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A262095, A262095.P10827467733905052003.a, A350331, A350331.P13927814064560633855.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P2666504972441551157.a, A086971, A086971.P8267424955413097261.a, A056170, A056170.P910878729848546389.a, A079275, A079275.P14331674641797174913.f1, A079275.P14331674641797174913.a, A056169, A056169.P17430176249366647977.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P17181188087202679592

`A351414(n+1)+A351394(n+1)`
-/

namespace A163523.P17181188087202679592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351414 (n + 1) + A351394 (n + 1)

end

end A163523.P17181188087202679592

namespace A163523

/-- `A351414(n+1)+A351394(n+1)` -/
def P17181188087202679592.Spec : Prop :=
  ∀ n, P17181188087202679592.a n = A163523 (n + 1)

end A163523

/-! ## A163523.P9000963295454508236

`A062011(n+1)-A033273(n+1)`
-/

namespace A163523.P9000963295454508236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (n + 1) - A033273 (n + 1)

end

end A163523.P9000963295454508236

namespace A163523

/-- `A062011(n+1)-A033273(n+1)` -/
def P9000963295454508236.Spec : Prop :=
  ∀ n, P9000963295454508236.a n = A163523 (n + 1)

theorem P9000963295454508236.correct : P9000963295454508236.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P9000963295454508236.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A033273, A033273.P18420659424697249895.a, A062011, A062011.P17525320077853469406.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P5258225704035783614

`A057859(n+1)-A063070(n+1)`
-/

namespace A163523.P5258225704035783614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057859 (n + 1) - A063070 (n + 1)

end

end A163523.P5258225704035783614

namespace A163523

/-- `A057859(n+1)-A063070(n+1)` -/
def P5258225704035783614.Spec : Prop :=
  ∀ n, P5258225704035783614.a n = A163523 (n + 1)

theorem P5258225704035783614.correct : P5258225704035783614.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P5258225704035783614.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A057859, A057859.P5441024818850006693.a, A063070, A063070.P5416196495209204381.a, A000010, A000010.P4673923239450215316.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P2666504972441551157.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P11634110234173809048

`A082514(n+1)-A048865(n+1)`
-/

namespace A163523.P11634110234173809048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082514 (n + 1) - A048865 (n + 1)

end

end A163523.P11634110234173809048

namespace A163523

/-- `A082514(n+1)-A048865(n+1)` -/
def P11634110234173809048.Spec : Prop :=
  ∀ n, P11634110234173809048.a n = A163523 (n + 1)

theorem P11634110234173809048.correct : P11634110234173809048.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P11634110234173809048.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A048865, A048865.P11145010694177444749.a, A082514, A082514.P13229630575248176506.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P17132507180804008195

`A114003(n+1)-A055212(n+1)`
-/

namespace A163523.P17132507180804008195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A055212 (n + 1)

end

end A163523.P17132507180804008195

namespace A163523

/-- `A114003(n+1)-A055212(n+1)` -/
def P17132507180804008195.Spec : Prop :=
  ∀ n, P17132507180804008195.a n = A163523 (n + 1)

theorem P17132507180804008195.correct : P17132507180804008195.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P17132507180804008195.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A055212, A055212.P14412881054625885538.a, A114003, A114003.P1695342291946871726.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033273, A033273.P18420659424697249895.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P3641575559312155319

`A061468(n+1)-A179179(n+1)`
-/

namespace A163523.P3641575559312155319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061468 (n + 1) - A179179 (n + 1)

end

end A163523.P3641575559312155319

namespace A163523

/-- `A061468(n+1)-A179179(n+1)` -/
def P3641575559312155319.Spec : Prop :=
  ∀ n, P3641575559312155319.a n = A163523 (n + 1)

end A163523

/-! ## A163523.P9598192948090208169

`A229109(n+1)-A049820(n+1)`
-/

namespace A163523.P9598192948090208169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229109 (n + 1) - A049820 (n + 1)

end

end A163523.P9598192948090208169

namespace A163523

/-- `A229109(n+1)-A049820(n+1)` -/
def P9598192948090208169.Spec : Prop :=
  ∀ n, P9598192948090208169.a n = A163523 (n + 1)

theorem P9598192948090208169.correct : P9598192948090208169.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P9598192948090208169.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A049820, A049820.P9428372222244335888.a, A229109, A229109.P7396241872602068631.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P14355528199368060045

`A351561(n+1)-A057860(n+1)`
-/

namespace A163523.P14355528199368060045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351561 (n + 1) - A057860 (n + 1)

end

end A163523.P14355528199368060045

namespace A163523

/-- `A351561(n+1)-A057860(n+1)` -/
def P14355528199368060045.Spec : Prop :=
  ∀ n, P14355528199368060045.a n = A163523 (n + 1)

theorem P14355528199368060045.correct : P14355528199368060045.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P14355528199368060045.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A057860, A057860.P15781516878484293447.a, A351561, A351561.P9711075868512573755.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051953, A051953.P12093122754958550118.a, A059841, A059841.P2666504972441551157.a, A003557, A003557.P6364735403900941810.a, A318305, A318305.P17845263951644339002.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P15666735857375843373.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P17631569771208034796

`Δ[A006218(n)]+A001222(∏{p}[n+1, #])`
-/

namespace A163523.P17631569771208034796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A163523.P17631569771208034796

namespace A163523

/-- `Δ[A006218(n)]+A001222(∏{p}[n+1, #])` -/
def P17631569771208034796.Spec : Prop :=
  ∀ n, P17631569771208034796.a n = A163523 (n + 1)

end A163523

/-! ## A163523.P3658446960747470536

`A000005(n+1)+A083399(n+1)-1`
-/

namespace A163523.P3658446960747470536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A083399 (n + 1) - 1)

end

end A163523.P3658446960747470536

namespace A163523

/-- `A000005(n+1)+A083399(n+1)-1` -/
def P3658446960747470536.Spec : Prop :=
  ∀ n, P3658446960747470536.a n = A163523 (n + 1)

theorem P3658446960747470536.correct : P3658446960747470536.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P3658446960747470536.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A083399, A083399.P16148020281325742632.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A055212, A055212.P14412881054625885538.a, A059841, A059841.P2666504972441551157.a, A033273, A033273.P18420659424697249895.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P6520599923323066453

`A001221(n+1)+A334954(n+1)-1`
-/

namespace A163523.P6520599923323066453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) + (A334954 (n + 1) - 1)

end

end A163523.P6520599923323066453

namespace A163523

/-- `A001221(n+1)+A334954(n+1)-1` -/
def P6520599923323066453.Spec : Prop :=
  ∀ n, P6520599923323066453.a n = A163523 (n + 1)

end A163523

/-! ## A163523.P3579480713785679731

`A113901(n+1)+A328959(n+1)+2`
-/

namespace A163523.P3579480713785679731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113901 (n + 1) + (A328959 (n + 1) + 2)

end

end A163523.P3579480713785679731

namespace A163523

/-- `A113901(n+1)+A328959(n+1)+2` -/
def P3579480713785679731.Spec : Prop :=
  ∀ n, P3579480713785679731.a n = A163523 (n + 1)

theorem P3579480713785679731.correct : P3579480713785679731.Spec := by
  intro n
  simp only [A163523, Nat.add_sub_cancel, A163523.P3579480713785679731.a, A163523.P17500706477665394313.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A113901, A113901.P4362226141671724758.a, A328959, A328959.P14672643124768497102.a, A001222, A001222.P11318177267732088261.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P2666504972441551157.a, A307408, A307408.P14900321585277075839.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163523

/-! ## A163523.P7011521829223300801

`A001222(A007947(n+1))+A000005(n+1)`
-/

namespace A163523.P7011521829223300801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat + A000005 (n + 1)

end

end A163523.P7011521829223300801

namespace A163523

/-- `A001222(A007947(n+1))+A000005(n+1)` -/
def P7011521829223300801.Spec : Prop :=
  ∀ n, P7011521829223300801.a n = A163523 (n + 1)

end A163523

/-! ## A163523.P11729005563471466906

`A001222(A034444(n+1))+A000005(n+1)`
-/

namespace A163523.P11729005563471466906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034444 (n + 1)).toNat + A000005 (n + 1)

end

end A163523.P11729005563471466906

namespace A163523

/-- `A001222(A034444(n+1))+A000005(n+1)` -/
def P11729005563471466906.Spec : Prop :=
  ∀ n, P11729005563471466906.a n = A163523 (n + 1)

end A163523

/-!
# A163528: The X-coordinate of the n-th point in the Peano curve A163334.

The programs for A163528, there is no canonical definition to state claims against.
-/

/-! ## A163528.P447846571602391699

`A163325(A163332(n))`
-/

namespace A163528.P447846571602391699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (A163332 n).toNat

end

end A163528.P447846571602391699

/-! ## A163528.P17603663876763471435

`A002262(A163337(n))`
-/

namespace A163528.P17603663876763471435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163337 n).toNat

end

end A163528.P17603663876763471435

/-! ## A163528.P4577544455933198889

`A025581(A163335(n))`
-/

namespace A163528.P4577544455933198889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163335 n).toNat

end

end A163528.P4577544455933198889

/-! ## A163528.P7840661493354391036

`∑[A163532(n)]`
-/

namespace A163528.P7840661493354391036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163528.P7840661493354391036

/-! ## A163528.P2873344331287201056

`A163529(3*n)`
-/

namespace A163528.P2873344331287201056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (3 * n)

end

end A163528.P2873344331287201056

/-! ## A163528.P8148333455015700707

`∑[A163533(3*n)]`
-/

namespace A163528.P8148333455015700707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163528.P8148333455015700707

/-! ## A163528.P3924648517646396850

`A059253(A166041(n))`
-/

namespace A163528.P3924648517646396850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A166041 n).toNat

end

end A163528.P3924648517646396850

/-! ## A163528.P10074853510205624324

`A059252(A166043(n))`
-/

namespace A163528.P10074853510205624324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A166043 n).toNat

end

end A163528.P10074853510205624324

/-! ## A163528.P2628101260432685641

`A059252(A166041(3*n))`
-/

namespace A163528.P2628101260432685641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A166041 (3 * n)).toNat

end

end A163528.P2628101260432685641

/-! ## A163528.P10298700025192090789

`A059253(A166043(3*n))`
-/

namespace A163528.P10298700025192090789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A166043 (3 * n)).toNat

end

end A163528.P10298700025192090789

/-! ## A163528.P9087943524193003497

`A163530(n)-A163529(n)`
-/

namespace A163528.P9087943524193003497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 n - A163529 n

end

end A163528.P9087943524193003497

/-! ## A163528.P7224142808361337126

`A163326(A163333(A163327(n)))`
-/

namespace A163528.P7224142808361337126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (A163333 (A163327 n).toNat).toNat

end

end A163528.P7224142808361337126

/-! ## A163528.P1309064507537092349

`A163337(n)+A163529(n)-A163335(n)`
-/

namespace A163528.P1309064507537092349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163337 n + (A163529 n - A163335 n)

end

end A163528.P1309064507537092349

/-! ## A163528.P1748702830451726716

`A163326(A163327(A163332(A057300(A057300(n)))))`
-/

namespace A163528.P1748702830451726716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (A163327 (A163332 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A163528.P1748702830451726716

/-! ## A163528.P10450643499714295819

`A002262(A163341(n+1)-1)`
-/

namespace A163528.P10450643499714295819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163341 (n + 1) - 1).toNat

end

end A163528.P10450643499714295819

/-! ## A163528.P3605411363832595194

`A025581(A163339(n+1)-1)`
-/

namespace A163528.P3605411363832595194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163339 (n + 1) - 1).toNat

end

end A163528.P3605411363832595194

/-! ## A163528.P1087993768737104095

`A163530(n)-A002262(A163335(n))`
-/

namespace A163528.P1087993768737104095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 n - A002262 (A163335 n).toNat

end

end A163528.P1087993768737104095

/-! ## A163528.P4473246986920871270

`A002262(A163331(A163334(A163329(n))))`
-/

namespace A163528.P4473246986920871270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163331 (A163334 (A163329 n).toNat).toNat).toNat

end

end A163528.P4473246986920871270

/-! ## A163528.P4855773151443699291

`A163326(A163332(3*n))`
-/

namespace A163528.P4855773151443699291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (A163332 (3 * n)).toNat

end

end A163528.P4855773151443699291

/-! ## A163528.P13787879309030605886

`A002262(A163335(3*n))`
-/

namespace A163528.P13787879309030605886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163335 (3 * n)).toNat

end

end A163528.P13787879309030605886

/-!
# A163529: The Y-coordinate of the n-th point in the Peano curve A163334.

The programs for A163529, there is no canonical definition to state claims against.
-/

/-! ## A163529.P9329785907085464490

`A163326(A163332(n))`
-/

namespace A163529.P9329785907085464490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163326 (A163332 n).toNat

end

end A163529.P9329785907085464490

/-! ## A163529.P9729880794656763806

`A002262(A163335(n))`
-/

namespace A163529.P9729880794656763806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163335 n).toNat

end

end A163529.P9729880794656763806

/-! ## A163529.P4533623167601052420

`A025581(A163337(n))`
-/

namespace A163529.P4533623167601052420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163337 n).toNat

end

end A163529.P4533623167601052420

/-! ## A163529.P13411096199859942200

`∑[A163533(n)]`
-/

namespace A163529.P13411096199859942200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163529.P13411096199859942200

/-! ## A163529.P15465091051543828104

`A163528(floor(n/3))`
-/

namespace A163529.P15465091051543828104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 ⌊(n : ℚ) / 3⌋.toNat

end

end A163529.P15465091051543828104

/-! ## A163529.P2755236903548580948

`∑[A163532(3*n)]`
-/

namespace A163529.P2755236903548580948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163529.P2755236903548580948

/-! ## A163529.P3854240807473025244

`A059252(A166041(n))`
-/

namespace A163529.P3854240807473025244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 (A166041 n).toNat

end

end A163529.P3854240807473025244

/-! ## A163529.P11116095818589661535

`A059253(A166043(n))`
-/

namespace A163529.P11116095818589661535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (A166043 n).toNat

end

end A163529.P11116095818589661535

/-! ## A163529.P11734609907964301145

`A163530(n)-A163528(n)`
-/

namespace A163529.P11734609907964301145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 n - A163528 n

end

end A163529.P11734609907964301145

/-! ## A163529.P18074457307952163691

`A163530(n)-∑[A163532(n)]`
-/

namespace A163529.P18074457307952163691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163529.P18074457307952163691

/-! ## A163529.P4687300253891346847

`A163325(A163333(A163327(n)))`
-/

namespace A163529.P4687300253891346847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (A163333 (A163327 n).toNat).toNat

end

end A163529.P4687300253891346847

/-! ## A163529.P7103112811388290749

`A163335(n)+A163528(n)-A163337(n)`
-/

namespace A163529.P7103112811388290749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163335 n + (A163528 n - A163337 n)

end

end A163529.P7103112811388290749

/-! ## A163529.P8010190844950788717

`A163325(A163327(A163332(A057300(A057300(n)))))`
-/

namespace A163529.P8010190844950788717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (A163327 (A163332 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A163529.P8010190844950788717

/-! ## A163529.P2061455301603971585

`A002262(A163339(n+1)-1)`
-/

namespace A163529.P2061455301603971585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163339 (n + 1) - 1).toNat

end

end A163529.P2061455301603971585

/-! ## A163529.P2479797706414154776

`A025581(A163341(n+1)-1)`
-/

namespace A163529.P2479797706414154776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163341 (n + 1) - 1).toNat

end

end A163529.P2479797706414154776

/-! ## A163529.P9991401587989118157

`A163530(n)-A002262(A163337(n))`
-/

namespace A163529.P9991401587989118157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 n - A002262 (A163337 n).toNat

end

end A163529.P9991401587989118157

/-! ## A163529.P786485326272640440

`A002262(A163329(A163334(A163329(n))))`
-/

namespace A163529.P786485326272640440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163329 (A163334 (A163329 n).toNat).toNat).toNat

end

end A163529.P786485326272640440

/-! ## A163529.P14906695481733892646

`A025581(A163331(A163332(A163331(A163330(n)))))`
-/

namespace A163529.P14906695481733892646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163331 (A163332 (A163331 (A163330 n).toNat).toNat).toNat).toNat

end

end A163529.P14906695481733892646

/-! ## A163529.P1738906397010068514

`A002262(A163329(A163336(A163331(n))))`
-/

namespace A163529.P1738906397010068514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163329 (A163336 (A163331 n).toNat).toNat).toNat

end

end A163529.P1738906397010068514

/-! ## A163529.P7855712213564695312

`A163325(A163327(A163332(A217558(A217558(n)))))`
-/

namespace A163529.P7855712213564695312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163325 (A163327 (A163332 (A217558 (A217558 n).toNat).toNat).toNat).toNat

end

end A163529.P7855712213564695312

/-!
# A163530: a(n) = A163528(n)+A163529(n).

The programs for A163530, there is no canonical definition to state claims against.
-/

/-! ## A163530.P9337212979556733383

`A163528(n)+A163529(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163530.P9337212979556733383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n + A163529 n

end

end A163530.P9337212979556733383

/-! ## A163530.P2196159150320348982

`A059261(A166041(n))`
-/

namespace A163530.P2196159150320348982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A166041 n).toNat

end

end A163530.P2196159150320348982

/-! ## A163530.P3528906243237814200

`A059261(A166043(n))`
-/

namespace A163530.P3528906243237814200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059261 (A166043 n).toNat

end

end A163530.P3528906243237814200

/-! ## A163530.P11859698483682252447

`∑[A163533(n)+A163532(n)]`
-/

namespace A163530.P11859698483682252447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 n + A163532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163530.P11859698483682252447

/-! ## A163530.P9402090934359258561

`A163529(3*n)+A163529(n)`
-/

namespace A163530.P9402090934359258561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (3 * n) + A163529 n

end

end A163530.P9402090934359258561

/-! ## A163530.P15175848871985788997

`∑[A163532(3*n)+A163532(n)]`
-/

namespace A163530.P15175848871985788997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (3 * n) + A163532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163530.P15175848871985788997

/-! ## A163530.P8926201255418687069

`∑[A163533(3*n)+A163533(n)]`
-/

namespace A163530.P8926201255418687069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (3 * n) + A163533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163530.P8926201255418687069

/-! ## A163530.P4817056676427531943

`A163528(A002264(n))+A163528(n)`
-/

namespace A163530.P4817056676427531943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A002264 n).toNat + A163528 n

end

end A163530.P4817056676427531943

/-! ## A163530.P16260749786457775471

`A163529(n)+A059252(A166043(n))`
-/

namespace A163530.P16260749786457775471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n + A059252 (A166043 n).toNat

end

end A163530.P16260749786457775471

/-! ## A163530.P1940848301008995720

`A163528(n)+A163528(A342218(n))`
-/

namespace A163530.P1940848301008995720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n + A163528 (A342218 n).toNat

end

end A163530.P1940848301008995720

/-! ## A163530.P13777292286651912677

`A127093(A163528(n)+A163335(n)+1)-1`
-/

namespace A163530.P13777292286651912677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A163528 n + A163335 n + 1).toNat - 1

end

end A163530.P13777292286651912677

/-! ## A163530.P13414764073347648320

`A003056(A163335(n))`
-/

namespace A163530.P13414764073347648320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A163335 n).toNat

end

end A163530.P13414764073347648320

/-! ## A163530.P1180064778861396523

`A003056(A163337(n))`
-/

namespace A163530.P1180064778861396523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A163337 n).toNat

end

end A163530.P1180064778861396523

/-! ## A163530.P9482538357597915241

`A163528(n)+A002262(A163335(n))`
-/

namespace A163530.P9482538357597915241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n + A002262 (A163335 n).toNat

end

end A163530.P9482538357597915241

/-! ## A163530.P5592061813826441800

`A163528(n)+A025581(A163337(n))`
-/

namespace A163530.P5592061813826441800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n + A025581 (A163337 n).toNat

end

end A163530.P5592061813826441800

/-! ## A163530.P6021312946714194387

`A025581(A163337(n)-A163528(n))`
-/

namespace A163530.P6021312946714194387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A163337 n - A163528 n).toNat

end

end A163530.P6021312946714194387

/-! ## A163530.P12751950226111113942

`A002262(A163335(n))+A002262(A163337(n))`
-/

namespace A163530.P12751950226111113942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163335 n).toNat + A002262 (A163337 n).toNat

end

end A163530.P12751950226111113942

/-! ## A163530.P7440227470536625992

`A072030(A163528(n)+A163335(n)+1)-1`
-/

namespace A163530.P7440227470536625992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072030 (A163528 n + (A163335 n + 1)).toNat - 1

end

end A163530.P7440227470536625992

/-!
# A163531: The square of the distance from the origin to the n-th point in the Peano curve A163334.

The programs for A163531, there is no canonical definition to state claims against.
-/

/-! ## A163531.P4826907081284032594

`A000290(A163528(n))+A000290(A163529(n))`
-/

namespace A163531.P4826907081284032594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A163528 n).toNat + A000290 (A163529 n).toNat

end

end A163531.P4826907081284032594

/-! ## A163531.P121352709116904587

`A163547(A166041(n))`
-/

namespace A163531.P121352709116904587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A166041 n).toNat

end

end A163531.P121352709116904587

/-! ## A163531.P15338724251722215753

`A163547(A166043(n))`
-/

namespace A163531.P15338724251722215753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A166043 n).toNat

end

end A163531.P15338724251722215753

/-! ## A163531.P15309834325649137327

`A163897(n)+A163547(n)`
-/

namespace A163531.P15309834325649137327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163897 n + A163547 n

end

end A163531.P15309834325649137327

/-! ## A163531.P13398941467364229448

`A163547(A163357(A163335(n)))`
-/

namespace A163531.P13398941467364229448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A163357 (A163335 n).toNat).toNat

end

end A163531.P13398941467364229448

/-! ## A163531.P16881341060108700059

`A163528(A002264(n))²+A163528(n)²`
-/

namespace A163531.P16881341060108700059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (A002264 n).toNat ^ 2 + A163528 n ^ 2

end

end A163531.P16881341060108700059

/-! ## A163531.P18039691590748170846

`A163529(A008486(n))²+A163529(n)²`
-/

namespace A163531.P18039691590748170846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A008486 n).toNat ^ 2 + A163529 n ^ 2

end

end A163531.P18039691590748170846

/-! ## A163531.P3527987202738402488

`A163529(A008585(n))²+A163529(n)²`
-/

namespace A163531.P3527987202738402488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A008585 n).toNat ^ 2 + A163529 n ^ 2

end

end A163531.P3527987202738402488

/-! ## A163531.P6446877268859931610

`A163529(A016777(n))²+A163529(n)²`
-/

namespace A163531.P6446877268859931610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A016777 n).toNat ^ 2 + A163529 n ^ 2

end

end A163531.P6446877268859931610

/-! ## A163531.P1498288332362433021

`A163529(A016789(n))²+A163529(n)²`
-/

namespace A163531.P1498288332362433021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A016789 n).toNat ^ 2 + A163529 n ^ 2

end

end A163531.P1498288332362433021

/-! ## A163531.P12039145558798240137

`A163529(A022441(n))²+A163529(n)²`
-/

namespace A163531.P12039145558798240137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A022441 n).toNat ^ 2 + A163529 n ^ 2

end

end A163531.P12039145558798240137

/-! ## A163531.P1666152103050608252

`A163529(A022442(n))²+A163529(n)²`
-/

namespace A163531.P1666152103050608252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A022442 n).toNat ^ 2 + A163529 n ^ 2

end

end A163531.P1666152103050608252

/-! ## A163531.P14368678689836682745

`A163529(n)²+A059252(A166043(n))²`
-/

namespace A163531.P14368678689836682745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n ^ 2 + A059252 (A166043 n).toNat ^ 2

end

end A163531.P14368678689836682745

/-! ## A163531.P5987708777181717860

`A163529(A072833(n))²+A163529(n)²`
-/

namespace A163531.P5987708777181717860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (A072833 n).toNat ^ 2 + A163529 n ^ 2

end

end A163531.P5987708777181717860

/-! ## A163531.P12264006153789641388

`A163529(n)²+A163529(A180713(n))²`
-/

namespace A163531.P12264006153789641388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n ^ 2 + A163529 (A180713 n).toNat ^ 2

end

end A163531.P12264006153789641388

/-! ## A163531.P9897065660894476671

`A163529(n)²+A163529(A276283(n))²`
-/

namespace A163531.P9897065660894476671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n ^ 2 + A163529 (A276283 n).toNat ^ 2

end

end A163531.P9897065660894476671

/-! ## A163531.P14732281150363248420

`A163528(n)²+A163528(A342218(n))²`
-/

namespace A163531.P14732281150363248420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n ^ 2 + A163528 (A342218 n).toNat ^ 2

end

end A163531.P14732281150363248420

/-! ## A163531.P6625576982787671638

`A163529(n)²+A163529(A342218(n))²`
-/

namespace A163531.P6625576982787671638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n ^ 2 + A163529 (A342218 n).toNat ^ 2

end

end A163531.P6625576982787671638

/-! ## A163531.P14607842569902592450

`A048147(A163335(n))`
-/

namespace A163531.P14607842569902592450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (A163335 n).toNat

end

end A163531.P14607842569902592450

/-! ## A163531.P6940331300187747071

`A048147(A163337(n))`
-/

namespace A163531.P6940331300187747071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (A163337 n).toNat

end

end A163531.P6940331300187747071

/-!
# A163532: The change in X-coordinate when moving from the n-1:th to the n-th point in the Peano curve A163334.

The programs for A163532, there is no canonical definition to state claims against.
-/

/-! ## A163532.P6576093679557073186

`A163533(3*n)`
-/

namespace A163532.P6576093679557073186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163533 (3 * n)

end

end A163532.P6576093679557073186

/-! ## A163532.P12961416777096658131

`Δ[A163528(floor(n-n/(n+1)))]`
-/

namespace A163532.P12961416777096658131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 ⌊(n : ℚ) - (n : ℚ) / (n + 1 : ℚ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163532.P12961416777096658131

/-! ## A163532.P13496786240153637111

`A163528(n)-A163528(n-A014578(n))`
-/

namespace A163532.P13496786240153637111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n - A163528 ((n : ℤ) - A014578 n).toNat

end

end A163532.P13496786240153637111

/-! ## A163532.P11417893048813162893

`A163528(n)-A163528(A004275(n+1)-(n+1))`
-/

namespace A163532.P11417893048813162893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n - A163528 (A004275 (n + 1) - (n + 1 : ℤ)).toNat

end

end A163532.P11417893048813162893

/-! ## A163532.P11077727209375798955

`Δ[A163529(record[lcm(12, n)/12])]`
-/

namespace A163532.P11077727209375798955
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 12 n : ℚ) / 12

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163532.P11077727209375798955

/-!
# A163533: The change in Y-coordinate when moving from the n-1:th to the n-th point in the Peano curve A163334.

The programs for A163533, there is no canonical definition to state claims against.
-/

/-! ## A163533.P7395860456153597044

`A163532(3*n)`
-/

namespace A163533.P7395860456153597044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (3 * n)

end

end A163533.P7395860456153597044

/-! ## A163533.P4974257772300922886

`Δ[A163529(abs(1-n))]`
-/

namespace A163533.P4974257772300922886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163533.P4974257772300922886

/-! ## A163533.P2422992219654684159

`A163532(n+n+n)^5`
-/

namespace A163533.P2422992219654684159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163532 (n + n + n) ^ 5

end

end A163533.P2422992219654684159

/-! ## A163533.P11610902090567918609

`A163532(A008585(n))%2`
-/

namespace A163533.P11610902090567918609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163532 (A008585 n).toNat) 2

end

end A163533.P11610902090567918609

/-! ## A163533.P7010768804405272764

`A163529(n)-A163529(abs(1-n))`
-/

namespace A163533.P7010768804405272764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n - A163529 |1 - (n : ℤ)|.toNat

end

end A163533.P7010768804405272764

/-! ## A163533.P16520244552520030946

`A163532(A008585(n))/A318666(n+1)`
-/

namespace A163533.P16520244552520030946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163532 (A008585 n).toNat : ℚ) / (A318666 (n + 1) : ℚ)

end

end A163533.P16520244552520030946

/-!
# A163534: The absolute direction (0=east, 1=south, 2=west, 3=north) of the Peano curve A163334 at point n.

The programs for A163534, there is no canonical definition to state claims against.
-/

/-! ## A163534.P5055149983264937358

`xor(1, A163535(n+1))`
-/

namespace A163534.P5055149983264937358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A163535 (n + 1))

end

end A163534.P5055149983264937358

/-! ## A163534.P2973811619581469708

`A004442(A163535(n+1)^A001006(C(3, n)))`
-/

namespace A163534.P2973811619581469708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.roundAway ((A163535 (n + 1) : ℚ) ^ (A001006 (Nat.choose 3 n) : ℤ))).toNat

end

end A163534.P2973811619581469708

/-! ## A163534.P16879038697106401125

`A163535(3*(n+1))`
-/

namespace A163534.P16879038697106401125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163535 (3 * (n + 1))

end

end A163534.P16879038697106401125

/-! ## A163534.P179574466465558520

`A163535(Δ[3*∑[n]])%10`
-/

namespace A163534.P179574466465558520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 10

end

end A163534.P179574466465558520

/-! ## A163534.P6212634710704399098

`and(3, A163535(A008486(n+1)))`
-/

namespace A163534.P6212634710704399098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A163535 (A008486 (n + 1)).toNat)

end

end A163534.P6212634710704399098

/-! ## A163534.P16958073917046184583

`A033999(n)²*A163535(Δ[3*∑[n]])`
-/

namespace A163534.P16958073917046184583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A163535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A163534.P16958073917046184583

/-! ## A163534.P13733506408889744401

`A163535(Δ[3*∑[n]])*A267871(2*n)`
-/

namespace A163534.P13733506408889744401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A267871 (2 * n)

end

end A163534.P13733506408889744401

/-! ## A163534.P3293103183407353234

`A163535(Δ[3*∑[n]])-A010873(4*n)`
-/

namespace A163534.P3293103183407353234
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A010873 (4 * n)

end

end A163534.P3293103183407353234

/-!
# A163535: The absolute direction (0=east, 1=south, 2=west, 3=north) of the Peano curve A163336 at point n.

The programs for A163535, there is no canonical definition to state claims against.
-/

/-! ## A163535.P14451493799067091600

`A163534(3*(n+1))`
-/

namespace A163535.P14451493799067091600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163534 (3 * (n + 1))

end

end A163535.P14451493799067091600

/-! ## A163535.P11755725992770848444

`xor(1, A163534(n+1))`
-/

namespace A163535.P11755725992770848444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A163534 (n + 1))

end

end A163535.P11755725992770848444

/-! ## A163535.P9890238864263668351

`A163534(Δ[A045943(n)])%6`
-/

namespace A163535.P9890238864263668351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045943 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163534 (f1 (n + 1) - f1 n).toNat) 6

end

end A163535.P9890238864263668351

/-! ## A163535.P1629819493543924742

`A163534(A008486(n+1))%5`
-/

namespace A163535.P1629819493543924742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163534 (A008486 (n + 1)).toNat) 5

end

end A163535.P1629819493543924742

/-! ## A163535.P1874731208782269242

`or(A000007(n), A163534(A008486(n+1)))`
-/

namespace A163535.P1874731208782269242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A163534 (A008486 (n + 1)).toNat)

end

end A163535.P1874731208782269242

/-! ## A163535.P2395280142915329485

`A163534(A008486(n+1))/A033999(n+1)²`
-/

namespace A163535.P2395280142915329485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163534 (A008486 (n + 1)).toNat : ℚ) / (A033999 (n + 1) ^ 2 : ℚ)

end

end A163535.P2395280142915329485

/-! ## A163535.P2576294263724888213

`A163534(A008486(n+1))+A056594(A036696(n))`
-/

namespace A163535.P2576294263724888213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163534 (A008486 (n + 1)).toNat + A056594 (A036696 n).toNat

end

end A163535.P2576294263724888213

/-! ## A163535.P6195477684279491443

`A163534(A008486(n+1))/A003557(A000040(n+1))`
-/

namespace A163535.P6195477684279491443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163534 (A008486 (n + 1)).toNat : ℚ) / (A003557 (A000040 (n + 1)).toNat : ℚ)

end

end A163535.P6195477684279491443

/-! ## A163535.P13215166424815340225

`A163534(A008486(n+1))^A322310(A059800(n+1))`
-/

namespace A163535.P13215166424815340225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163534 (A008486 (n + 1)).toNat : ℚ) ^ (A322310 (A059800 (n + 1)).toNat : ℤ)

end

end A163535.P13215166424815340225

/-!
# A163536: The relative direction (0=straight ahead, 1=turn right, 2=turn left) of the Peano curve A163334 at point n.

The programs for A163536, there is no canonical definition to state claims against.
-/

/-! ## A163536.P9891474801130719521

`(2*A163537(n+1))%3`
-/

namespace A163536.P9891474801130719521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A163537 (n + 1)) 3

end

end A163536.P9891474801130719521

/-! ## A163536.P5895529815902325323

`A163537((n-xor(n, A163537(n+1)))²+1)`
-/

namespace A163536.P5895529815902325323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163537 (((n : ℤ) - Int.xor (n : ℤ) (A163537 (n + 1))) ^ 2 + 1).toNat

end

end A163536.P5895529815902325323

/-! ## A163536.P6041104051367701092

`A163537(xor(n, xor(n, A163537(n+1)²))+1)`
-/

namespace A163536.P6041104051367701092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163537 (Int.xor (n : ℤ) (Int.xor (n : ℤ) (A163537 (n + 1) ^ 2)) + 1).toNat

end

end A163536.P6041104051367701092

/-! ## A163536.P2471005716232730876

`A163537((gcd(n, n+1)*A163537(n+1))²+1)`
-/

namespace A163536.P2471005716232730876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163537 (((Nat.gcd n (n + 1) : ℤ) * A163537 (n + 1)) ^ 2 + 1).toNat

end

end A163536.P2471005716232730876

/-! ## A163536.P6563516424388682402

`A163537((6*n+8)*A163537(n+1)+1)`
-/

namespace A163536.P6563516424388682402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163537 ((6 * n + 8 : ℤ) * A163537 (n + 1) + 1).toNat

end

end A163536.P6563516424388682402

/-!
# A163537: The relative direction (0=straight ahead, 1=turn right, 2=turn left) of the Peano curve A163336 at point n.

The programs for A163537, there is no canonical definition to state claims against.
-/

/-! ## A163537.P4257534419932694380

`(11*A163536(n+1))%3`
-/

namespace A163537.P4257534419932694380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 * A163536 (n + 1)) 3

end

end A163537.P4257534419932694380

/-! ## A163537.P7504962444844486444

`(A145204(n+1)-A163536(n+1))%3`
-/

namespace A163537.P7504962444844486444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145204 (n + 1) - A163536 (n + 1)) 3

end

end A163537.P7504962444844486444

/-! ## A163537.P4970918169283107470

`A014681(round(n/(n+1)*A163536(n+1)))`
-/

namespace A163537.P4970918169283107470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ) * (A163536 (n + 1) : ℚ))).toNat

end

end A163537.P4970918169283107470

/-! ## A163537.P9699889511377039070

`A000045(and(3, Δ[A163535(n+1)]))`
-/

namespace A163537.P9699889511377039070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A163537.P9699889511377039070

/-! ## A163537.P4019599407769033373

`A003987(and(3, Δ[A163535(n+1)]))`
-/

namespace A163537.P4019599407769033373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A163537.P4019599407769033373

/-!
# A163538: The change in X-coordinate when moving from the n-1:th to the n-th term in the type I Hilbert's Hamiltonian walk A163357.

The programs for A163538, there is no canonical definition to state claims against.
-/

/-! ## A163538.P6319009962825005467

`A163539(4*n)`
-/

namespace A163538.P6319009962825005467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (4 * n)

end

end A163538.P6319009962825005467

/-! ## A163538.P2636048614855393849

`Δ[A059253(n-n²%(n+1))]`
-/

namespace A163538.P2636048614855393849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 (n - n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163538.P2636048614855393849

/-! ## A163538.P7810922580550766619

`Δ[A059253(n-ceil(n/(n+1)))]`
-/

namespace A163538.P7810922580550766619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 ((n : ℤ) - ⌈(n : ℚ) / (n + 1 : ℚ)⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163538.P7810922580550766619

/-! ## A163538.P11553106157414970058

`A059253(n)-A059253((n-1)%(n+1))`
-/

namespace A163538.P11553106157414970058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n - A059253 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A163538.P11553106157414970058

/-! ## A163538.P9200537554255988340

`A059253(n)-A059253(A004273(n)-n)`
-/

namespace A163538.P9200537554255988340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n - A059253 (A004273 n - (n : ℤ)).toNat

end

end A163538.P9200537554255988340

/-!
# A163539: The change in Y-coordinate when moving from the n-1:th to the n-th term in the type I Hilbert's Hamiltonian walk A163357.

The programs for A163539, there is no canonical definition to state claims against.
-/

/-! ## A163539.P6786161333899050921

`A163538(4*n)`
-/

namespace A163539.P6786161333899050921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 (4 * n)

end

end A163539.P6786161333899050921

/-! ## A163539.P7275495522530235590

`Δ[A059252(abs(1-n))]`
-/

namespace A163539.P7275495522530235590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163539.P7275495522530235590

/-! ## A163539.P8911208195452381502

`A059252(n)-A059252(abs(1-n))`
-/

namespace A163539.P8911208195452381502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n - A059252 |1 - (n : ℤ)|.toNat

end

end A163539.P8911208195452381502

/-! ## A163539.P316025535505931461

`A163538(A008574(n))%A287841(n+1)`
-/

namespace A163539.P316025535505931461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163538 (A008574 n).toNat) (A287841 (n + 1))

end

end A163539.P316025535505931461

/-! ## A163539.P9522123525420007924

`Δ[A002262(A163358(abs(1-n)))]`
-/

namespace A163539.P9522123525420007924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A163358 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163539.P9522123525420007924

/-!
# A163540: The absolute direction (0=east, 1=south, 2=west, 3=north) taken by the type I Hilbert's Hamiltonian walk A163357 at the step n.

The programs for A163540, there is no canonical definition to state claims against.
-/

/-! ## A163540.P11246867336498761472

`xor(1, A163541(n+1))`
-/

namespace A163540.P11246867336498761472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A163541 (n + 1))

end

end A163540.P11246867336498761472

/-! ## A163540.P14621403238416078884

`(A082285(n)-A163541(n+1))%4`
-/

namespace A163540.P14621403238416078884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082285 n - A163541 (n + 1)) 4

end

end A163540.P14621403238416078884

/-! ## A163540.P7298515663928369454

`A004442(lcm((-1)^n, A163541(n+1)))`
-/

namespace A163540.P7298515663928369454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.lcm ((-1) ^ n) (A163541 (n + 1)))

end

end A163540.P7298515663928369454

/-! ## A163540.P13710336840471925047

`(A239124(n+1)-A163541(n+1))%4`
-/

namespace A163540.P13710336840471925047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239124 (n + 1) - A163541 (n + 1)) 4

end

end A163540.P13710336840471925047

/-! ## A163540.P10640765393689633166

`A163541(4*(n+1))`
-/

namespace A163540.P10640765393689633166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163541 (4 * (n + 1))

end

end A163540.P10640765393689633166

/-! ## A163540.P18114843327452517040

`A301941(A163541(n+1)+A007318(∑[n]))`
-/

namespace A163540.P18114843327452517040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301941 (A163541 (n + 1) + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A163540.P18114843327452517040

/-! ## A163540.P13906586592243809091

`A010873(A080856(n)-A163541(n+1))`
-/

namespace A163540.P13906586592243809091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A080856 n - A163541 (n + 1)).toNat

end

end A163540.P13906586592243809091

/-!
# A163541: The absolute direction (0=east, 1=south, 2=west, 3=north) taken by the type I Hilbert's Hamiltonian walk A163359 at the step n.

The programs for A163541, there is no canonical definition to state claims against.
-/

/-! ## A163541.P7758863201920198497

`A163540(4*(n+1))`
-/

namespace A163541.P7758863201920198497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163540 (4 * (n + 1))

end

end A163541.P7758863201920198497

/-! ## A163541.P14975604680391898840

`xor(1, A163540(n+1))`
-/

namespace A163541.P14975604680391898840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A163540 (n + 1))

end

end A163541.P14975604680391898840

/-! ## A163541.P8224588123159726465

`A004442(lcm((-1)^n, A163540(n+1)))`
-/

namespace A163541.P8224588123159726465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (Int.lcm ((-1) ^ n) (A163540 (n + 1)))

end

end A163541.P8224588123159726465

/-! ## A163541.P5021257562699348404

`and(3, A163573(n+1)-A163540(n+1))`
-/

namespace A163541.P5021257562699348404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A163573 (n + 1) - A163540 (n + 1))

end

end A163541.P5021257562699348404

/-! ## A163541.P9988716638308072077

`A306287(A163540(n+1)+A001511(n+1+n))`
-/

namespace A163541.P9988716638308072077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306287 (A163540 (n + 1) + A001511 (n + 1 + n)).toNat

end

end A163541.P9988716638308072077

/-! ## A163541.P8840807096534322301

`and(3, A127904(A229109(n+1))-A163540(n+1))`
-/

namespace A163541.P8840807096534322301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A127904 (A229109 (n + 1)).toNat - A163540 (n + 1))

end

end A163541.P8840807096534322301

/-! ## A163541.P13578189398173866849

`and(3, A127904(A098015(n+1))-A163540(n+1))`
-/

namespace A163541.P13578189398173866849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A127904 (A098015 (n + 1)).toNat - A163540 (n + 1))

end

end A163541.P13578189398173866849

/-!
# A163542: The relative direction (0=straight ahead, 1=turn right, 2=turn left) taken by the type I Hilbert's Hamiltonian walk A163357 at the step n.

The programs for A163542, there is no canonical definition to state claims against.
-/

/-! ## A163542.P7131565998800878418

`A000120(and(3, Δ[A163540(n+1)]))`
-/

namespace A163542.P7131565998800878418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A163542.P7131565998800878418

/-! ## A163542.P18041253461395661308

`A025581(and(3, Δ[A163540(n+1)]))`
-/

namespace A163542.P18041253461395661308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A163542.P18041253461395661308

/-! ## A163542.P3380218565740397441

`A087808(and(3, Δ[A163540(n+1)]))`
-/

namespace A163542.P3380218565740397441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087808 (Int.land 3 (f1 (n + 1) - f1 n)).toNat

end

end A163542.P3380218565740397441

/-! ## A163542.P6098276745527148123

`(2*A163543(n+1))%3`
-/

namespace A163542.P6098276745527148123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A163543 (n + 1)) 3

end

end A163542.P6098276745527148123

/-! ## A163542.P1119512438708990226

`A014681(A163543(n+1)+(n+1)%A006530(n+1))`
-/

namespace A163542.P1119512438708990226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A163543 (n + 1) + Int.tmod (n + 1 : ℤ) (A006530 (n + 1))).toNat

end

end A163542.P1119512438708990226

/-! ## A163542.P16903790837660450495

`A014681(A163543(n+2)-Δ[A163543(n+1)])`
-/

namespace A163542.P16903790837660450495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A163543 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A163542.P16903790837660450495

/-! ## A163542.P6505740962371578100

`A163543(A163543(n+1)+A008598(n+1))`
-/

namespace A163542.P6505740962371578100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163543 (A163543 (n + 1) + A008598 (n + 1)).toNat

end

end A163542.P6505740962371578100

/-!
# A163543: The relative direction (0=straight ahead, 1=turn right, 2=turn left) taken by the type I Hilbert's Hamiltonian walk A163359 at the step n.

The programs for A163543, there is no canonical definition to state claims against.
-/

/-! ## A163543.P6311838025747392898

`(2*A163542(n+1))%3`
-/

namespace A163543.P6311838025747392898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A163542 (n + 1)) 3

end

end A163543.P6311838025747392898

/-! ## A163543.P7664088565519427731

`A000720(and(3, Δ[A163541(n+1)])+1)`
-/

namespace A163543.P7664088565519427731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.land 3 (f1 (n + 1) - f1 n) + 1).toNat

end

end A163543.P7664088565519427731

/-! ## A163543.P1322370402068621814

`A286627(and(3, Δ[A163541(n+1)])+2)`
-/

namespace A163543.P1322370402068621814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286627 (Int.land 3 (f1 (n + 1) - f1 n) + 2).toNat

end

end A163543.P1322370402068621814

/-! ## A163543.P11969738049751772858

`A014681(A163542(n+2)-Δ[A163542(n+1)])`
-/

namespace A163543.P11969738049751772858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A163542 (n + 2) - (f1 (n + 1) - f1 n)).toNat

end

end A163543.P11969738049751772858

/-! ## A163543.P7614860810285454108

`A122203(A163542(n+1)+A020639(2*(n+1)))`
-/

namespace A163543.P7614860810285454108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (A163542 (n + 1) + A020639 (2 * (n + 1))).toNat

end

end A163543.P7614860810285454108

/-! ## A163543.P9584638989969840746

`A014681(A163542(n+1)+(n+1)%A006530(n+1))`
-/

namespace A163543.P9584638989969840746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A163542 (n + 1) + Int.tmod (n + 1 : ℤ) (A006530 (n + 1))).toNat

end

end A163543.P9584638989969840746

/-! ## A163543.P1249206300285546762

`A163542(A163542(n+1)+A008598(n+1))`
-/

namespace A163543.P1249206300285546762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163542 (A163542 (n + 1) + A008598 (n + 1)).toNat

end

end A163543.P1249206300285546762

/-!
# A163544: Inverse permutation to A147995.

The programs for A163544, there is no canonical definition to state claims against.
-/

/-! ## A163544.P1290319554415017122

`A163546(A048647(n))`
-/

namespace A163544.P1290319554415017122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (A048647 n).toNat

end

end A163544.P1290319554415017122

/-! ## A163544.P13896339951993748706

`A061579(A163546(n))`
-/

namespace A163544.P13896339951993748706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163546 n).toNat

end

end A163544.P13896339951993748706

/-! ## A163544.P15615054503874377200

`A163546(xor(n, A004514(n)))`
-/

namespace A163544.P15615054503874377200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (Int.xor (n : ℤ) (A004514 n)).toNat

end

end A163544.P15615054503874377200

/-! ## A163544.P14061142093991852053

`A038722(A163546(n)+1)-1`
-/

namespace A163544.P14061142093991852053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163546 n + 1).toNat - 1

end

end A163544.P14061142093991852053

/-! ## A163544.P4256494040214615101

`A163546(xor(n, A088442(n)-1))`
-/

namespace A163544.P4256494040214615101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (Int.xor (n : ℤ) (A088442 n - 1)).toNat

end

end A163544.P4256494040214615101

/-! ## A163544.P10329463173405053210

`A163546(xor(1, xor(n, A088442(n))))`
-/

namespace A163544.P10329463173405053210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (Int.xor 1 (Int.xor (n : ℤ) (A088442 n))).toNat

end

end A163544.P10329463173405053210

/-! ## A163544.P17598834146955661867

`A054239(A057300(A163486(n)))`
-/

namespace A163544.P17598834146955661867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A057300 (A163486 n).toNat).toNat

end

end A163544.P17598834146955661867

/-! ## A163544.P3921216853265933930

`A163546(A004442(xor(n, A088442(n))))`
-/

namespace A163544.P3921216853265933930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (A004442 (Int.xor (n : ℤ) (A088442 n)).toNat).toNat

end

end A163544.P3921216853265933930

/-! ## A163544.P7280847314233125864

`A163546(A057300(A163241(A057300(n))))`
-/

namespace A163544.P7280847314233125864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (A057300 (A163241 (A057300 n).toNat).toNat).toNat

end

end A163544.P7280847314233125864

/-! ## A163544.P8080758986702586374

`A061579(A054239(A163486(A061579(A061579(n)))))`
-/

namespace A163544.P8080758986702586374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A054239 (A163486 (A061579 (A061579 n).toNat).toNat).toNat).toNat

end

end A163544.P8080758986702586374

/-! ## A163544.P4688274797450049295

`A163546(A147995(A163546(A054239(A054238(n)))))`
-/

namespace A163544.P4688274797450049295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (A147995 (A163546 (A054239 (A054238 n).toNat).toNat).toNat).toNat

end

end A163544.P4688274797450049295

/-! ## A163544.P4998608547069383710

`A163238(A064706(A147995(A163238(A064706(n)))))`
-/

namespace A163544.P4998608547069383710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163238 (A064706 (A147995 (A163238 (A064706 n).toNat).toNat).toNat).toNat

end

end A163544.P4998608547069383710

/-! ## A163544.P9169265454113921817

`A163546(A147995(A163546(A163486(A163485(n)))))`
-/

namespace A163544.P9169265454113921817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (A147995 (A163546 (A163486 (A163485 n).toNat).toNat).toNat).toNat

end

end A163544.P9169265454113921817

/-! ## A163544.P2185397182301109217

`A163546(A147995(A163546(A163546(A163545(n)))))`
-/

namespace A163544.P2185397182301109217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163546 (A147995 (A163546 (A163546 (A163545 n).toNat).toNat).toNat).toNat

end

end A163544.P2185397182301109217

/-!
# A163545: Transpose of A147995.

The programs for A163545, there is no canonical definition to state claims against.
-/

/-! ## A163545.P24755033536332553

`A147995(∑[char[∑[n]]]²-n-1)`
-/

namespace A163545.P24755033536332553
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147995 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A163545.P24755033536332553

/-! ## A163545.P309219543123476399

`A048647(A147995(n))`
-/

namespace A163545.P309219543123476399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048647 (A147995 n).toNat

end

end A163545.P309219543123476399

/-! ## A163545.P711124531699232112

`A163485(A054238(n))`
-/

namespace A163545.P711124531699232112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 (A054238 n).toNat

end

end A163545.P711124531699232112

/-! ## A163545.P7475612361805467901

`A247891(A163239(n))`
-/

namespace A163545.P7475612361805467901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247891 (A163239 n).toNat

end

end A163545.P7475612361805467901

/-! ## A163545.P13662485688338944347

`A163485(A163356(A163357(n)))`
-/

namespace A163545.P13662485688338944347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163485 (A163356 (A163357 n).toNat).toNat

end

end A163545.P13662485688338944347

/-!
# A163546: Inverse permutation to A163545.

The programs for A163546, there is no canonical definition to state claims against.
-/

/-! ## A163546.P17579474229788539518

`A163544(A048647(n))`
-/

namespace A163546.P17579474229788539518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (A048647 n).toNat

end

end A163546.P17579474229788539518

/-! ## A163546.P2961894539815068538

`A054239(A163486(n))`
-/

namespace A163546.P2961894539815068538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054239 (A163486 n).toNat

end

end A163546.P2961894539815068538

/-! ## A163546.P8839489061026350000

`A061579(A163544(n))`
-/

namespace A163546.P8839489061026350000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A163544 n).toNat

end

end A163546.P8839489061026350000

/-! ## A163546.P13397428566727152825

`A163544(xor(n, A004514(n)))`
-/

namespace A163546.P13397428566727152825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (Int.xor (n : ℤ) (A004514 n)).toNat

end

end A163546.P13397428566727152825

/-! ## A163546.P744993868210427351

`A038722(A163544(n)+1)-1`
-/

namespace A163546.P744993868210427351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A163544 n + 1).toNat - 1

end

end A163546.P744993868210427351

/-! ## A163546.P1113447070663812836

`A163544(xor(n, A088442(n)-1))`
-/

namespace A163546.P1113447070663812836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (Int.xor (n : ℤ) (A088442 n - 1)).toNat

end

end A163546.P1113447070663812836

/-! ## A163546.P13463709525186248115

`A163544(xor(1, xor(n, A088442(n))))`
-/

namespace A163546.P13463709525186248115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (Int.xor 1 (Int.xor (n : ℤ) (A088442 n))).toNat

end

end A163546.P13463709525186248115

/-! ## A163546.P6467547322688943934

`A163544(A004442(xor(n, A088442(n))))`
-/

namespace A163546.P6467547322688943934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (A004442 (Int.xor (n : ℤ) (A088442 n)).toNat).toNat

end

end A163546.P6467547322688943934

/-! ## A163546.P12669182090845474604

`A163544(A057300(A163241(A057300(n))))`
-/

namespace A163546.P12669182090845474604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (A057300 (A163241 (A057300 n).toNat).toNat).toNat

end

end A163546.P12669182090845474604

/-! ## A163546.P6812620914524959297

`A163544(A163545(A163544(A054239(A054238(n)))))`
-/

namespace A163546.P6812620914524959297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (A163545 (A163544 (A054239 (A054238 n).toNat).toNat).toNat).toNat

end

end A163546.P6812620914524959297

/-! ## A163546.P10484250390754463218

`A163544(A163545(A163544(A163544(A147995(n)))))`
-/

namespace A163546.P10484250390754463218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (A163545 (A163544 (A163544 (A147995 n).toNat).toNat).toNat).toNat

end

end A163546.P10484250390754463218

/-! ## A163546.P17389685758856349407

`A163544(A163545(A163544(A163486(A163485(n)))))`
-/

namespace A163546.P17389685758856349407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163544 (A163545 (A163544 (A163486 (A163485 n).toNat).toNat).toNat).toNat

end

end A163546.P17389685758856349407

/-!
# A163547: The square of the distance from the origin to the n-th term in the type I Hilbert's Hamiltonian walk A163357.

The programs for A163547, there is no canonical definition to state claims against.
-/

/-! ## A163547.P9734350572363713415

`A000290(A059252(n))+A000290(A059253(n))`
-/

namespace A163547.P9734350572363713415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A059252 n).toNat + A000290 (A059253 n).toNat

end

end A163547.P9734350572363713415

/-! ## A163547.P9059447294398454819

`A163531(A166042(n))`
-/

namespace A163547.P9059447294398454819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 (A166042 n).toNat

end

end A163547.P9059447294398454819

/-! ## A163547.P18048024010708413037

`A163531(A166044(n))`
-/

namespace A163547.P18048024010708413037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 (A166044 n).toNat

end

end A163547.P18048024010708413037

/-! ## A163547.P5141132267564533346

`A163531(n)-A163897(n)`
-/

namespace A163547.P5141132267564533346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n - A163897 n

end

end A163547.P5141132267564533346

/-! ## A163547.P12827828098855676811

`A059252(n)²+∑[A163538(n)]²`
-/

namespace A163547.P12827828098855676811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163547.P12827828098855676811

/-! ## A163547.P13429282369879119178

`A059253(n)²+∑[A163539(n)]²`
-/

namespace A163547.P13429282369879119178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A163547.P13429282369879119178

/-! ## A163547.P2182925595805544337

`A059252(n)²+A163529(A166044(n))²`
-/

namespace A163547.P2182925595805544337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n ^ 2 + A163529 (A166044 n).toNat ^ 2

end

end A163547.P2182925595805544337

/-! ## A163547.P1166357869605982395

`A059252(n)²+A059905(A163356(n))²`
-/

namespace A163547.P1166357869605982395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n ^ 2 + A059905 (A163356 n).toNat ^ 2

end

end A163547.P1166357869605982395

/-! ## A163547.P10749763886475064807

`A048147(A163358(n))`
-/

namespace A163547.P10749763886475064807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (A163358 n).toNat

end

end A163547.P10749763886475064807

/-! ## A163547.P168351328437803088

`A048147(A163360(n))`
-/

namespace A163547.P168351328437803088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048147 (A163360 n).toNat

end

end A163547.P168351328437803088

/-! ## A163547.P17768375589083637524

`A059252(n)²+A059252(A342217(n))²`
-/

namespace A163547.P17768375589083637524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059252 n ^ 2 + A059252 (A342217 n).toNat ^ 2

end

end A163547.P17768375589083637524

/-! ## A163547.P2400252565820592755

`A059253(n)²+A059253(A342217(n))²`
-/

namespace A163547.P2400252565820592755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059253 n ^ 2 + A059253 (A342217 n).toNat ^ 2

end

end A163547.P2400252565820592755

/-!
# A163548: Number of reduced words of length n in Coxeter group on 28 generators S_i with relations (S_i)^2 = (S_i S_j)^5 = I.

The programs for A163548, there is no canonical definition to state claims against.
-/

/-! ## A163548.P9091427396811705323

`A165980(n)-A165926(A165896(n))`
-/

namespace A163548.P9091427396811705323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165980 n - A165926 (A165896 n).toNat

end

end A163548.P9091427396811705323

/-!
# A163550: a(1)=a(2)=a(3)=1. a(n) = reverseDigits(a(n-1)+a(n-2)+a(n-3)) for n>=4.

The programs for A163550, there is no canonical definition to state claims against.
-/

/-! ## A163550.P14058242046915961425

`A004086(a(n-1)+a(n-2)+a(n-3))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A163550.P14058242046915961425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A004086 (a (n - 1) + (a (n - 2) + a (n - 3))).toNat

end

end A163550.P14058242046915961425

/-! ## A163550.P17668786422149187875

`A004086(A074861(n+1))`
-/

namespace A163550.P17668786422149187875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A074861 (n + 1)).toNat

end

end A163550.P17668786422149187875

/-! ## A163550.P387155465236886483

`A004093(5*A074861(n+1))`
-/

namespace A163550.P387155465236886483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * A074861 (n + 1)).toNat

end

end A163550.P387155465236886483

/-! ## A163550.P12628047853591875983

`A103168(10*A074861(n+1))`
-/

namespace A163550.P12628047853591875983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103168 (10 * A074861 (n + 1)).toNat

end

end A163550.P12628047853591875983

/-!
# A163551: 13th-order Fibonacci numbers: a(n) = a(n-1) + ... + a(n-13) with a(1)=...=a(13)=1.

The programs for A163551, there is no canonical definition to state claims against.
-/

/-! ## A163551.P407091325901463248

`A240535(A240488(n)+2)`
-/

namespace A163551.P407091325901463248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240535 (A240488 n + 2).toNat

end

end A163551.P407091325901463248

/-! ## A163551.P6328854456985844854

`A248601(A339615(n+1)+1)`
-/

namespace A163551.P6328854456985844854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248601 (A339615 (n + 1) + 1).toNat

end

end A163551.P6328854456985844854

/-! ## A163551.P3564550846766735163

`A000265(A298196(2^∑{digits}[n, #%C(n, #)]))`
-/

namespace A163551.P3564550846766735163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A298196 (2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x % Nat.choose n x).sum)).toNat

end

end A163551.P3564550846766735163

/-! ## A163551.P16802431628435212307

`A176672(A206560(n+1)^A020639(n+1))`
-/

namespace A163551.P16802431628435212307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176672 (SequenceMachineLib.roundAway ((A206560 (n + 1) : ℚ) ^ (A020639 (n + 1) : ℤ))).toNat

end

end A163551.P16802431628435212307

/-!
# A163553: First differences of A024816.

The programs for A163553, the canonical program `A163553.P466740901883979110` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163553 has offset 1).

The definition of A163553 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163553.P15272014045005492438

`Δ[A033879(n+1)]+n`
-/

namespace A163553.P15272014045005492438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A163553.P15272014045005492438

namespace A163553

/-- `Δ[A033879(n+1)]+n` -/
def P15272014045005492438.Spec : Prop :=
  ∀ n, P15272014045005492438.a n = A163553 (n + 1)

theorem P15272014045005492438.correct : P15272014045005492438.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P15272014045005492438.f1, A163553.P15272014045005492438.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A033879, A033879.P11735613842914743111.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P11636975445843164501

`2-A053222(n+1)+n`
-/

namespace A163553.P11636975445843164501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A053222 (n + 1) + (n : ℤ)

end

end A163553.P11636975445843164501

namespace A163553

/-- `2-A053222(n+1)+n` -/
def P11636975445843164501.Spec : Prop :=
  ∀ n, P11636975445843164501.a n = A163553 (n + 1)

theorem P11636975445843164501.correct : P11636975445843164501.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P11636975445843164501.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A053222, A053222.P10935068220858784370.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P1727573326359613115

`2-Δ[A000203(n+1)]+n`
-/

namespace A163553.P1727573326359613115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n) + (n : ℤ)

end

end A163553.P1727573326359613115

namespace A163553

/-- `2-Δ[A000203(n+1)]+n` -/
def P1727573326359613115.Spec : Prop :=
  ∀ n, P1727573326359613115.a n = A163553 (n + 1)

theorem P1727573326359613115.correct : P1727573326359613115.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P1727573326359613115.f1, A163553.P1727573326359613115.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P3282672389110014595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P466740901883979110

`n+3-Δ[A155085(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163553

/-- `n+3-Δ[A155085(n+1)]` -/
def P466740901883979110.Spec : Prop :=
  ∀ n, P466740901883979110.a n = A163553 (n + 1)

theorem P466740901883979110.correct : P466740901883979110.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel]

end A163553

/-! ## A163553.P1872490420844980511

`n+1-Δ[A091818(n+1)/2]`
-/

namespace A163553.P1872490420844980511
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - (f1 (n + 1) - f1 n)

end

end A163553.P1872490420844980511

namespace A163553

/-- `n+1-Δ[A091818(n+1)/2]` -/
def P1872490420844980511.Spec : Prop :=
  ∀ n, P1872490420844980511.a n = (A163553 (n + 1) : ℚ)

theorem P1872490420844980511.correct : P1872490420844980511.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P1872490420844980511.f1, A163553.P1872490420844980511.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A091818, A091818.P1536144604709334989.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P9823512899192372867

`2-(Δ[A000203(2*n-(n-1))]-n)`
-/

namespace A163553.P9823512899192372867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (f1 (n + 1) - f1 n - (n : ℤ))

end

end A163553.P9823512899192372867

namespace A163553

/-- `2-(Δ[A000203(2*n-(n-1))]-n)` -/
def P9823512899192372867.Spec : Prop :=
  ∀ n, P9823512899192372867.a n = A163553 (n + 1)

end A163553

/-! ## A163553.P809550120457770163

`Δ[A000096(n)-A000203(n+1)]`
-/

namespace A163553.P809550120457770163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163553.P809550120457770163

namespace A163553

/-- `Δ[A000096(n)-A000203(n+1)]` -/
def P809550120457770163.Spec : Prop :=
  ∀ n, P809550120457770163.a n = A163553 (n + 1)

theorem P809550120457770163.correct : P809550120457770163.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P809550120457770163.f1, A163553.P809550120457770163.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A000096, A000096.P6925830517264718723.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P3282672389110014595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P1246471268430119657

`A120444(n+1)+A001065(n+1)`
-/

namespace A163553.P1246471268430119657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120444 (n + 1) + A001065 (n + 1)

end

end A163553.P1246471268430119657

namespace A163553

/-- `A120444(n+1)+A001065(n+1)` -/
def P1246471268430119657.Spec : Prop :=
  ∀ n, P1246471268430119657.a n = A163553 (n + 1)

theorem P1246471268430119657.correct : P1246471268430119657.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P1246471268430119657.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A001065, A001065.P4097147489331274860.a, A120444, A120444.P14466474420296758408.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P18434228962025826128

`A087156(n+1)-A053246(n+1)`
-/

namespace A163553.P18434228962025826128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) - A053246 (n + 1)

end

end A163553.P18434228962025826128

namespace A163553

/-- `A087156(n+1)-A053246(n+1)` -/
def P18434228962025826128.Spec : Prop :=
  ∀ n, P18434228962025826128.a n = A163553 (n + 1)

end A163553

/-! ## A163553.P16672462191029812513

`A065475(n+1)-(A053246(n+1)+1)`
-/

namespace A163553.P16672462191029812513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (n + 1) - (A053246 (n + 1) + 1)

end

end A163553.P16672462191029812513

namespace A163553

/-- `A065475(n+1)-(A053246(n+1)+1)` -/
def P16672462191029812513.Spec : Prop :=
  ∀ n, P16672462191029812513.a n = A163553 (n + 1)

end A163553

/-! ## A163553.P6295490908028394850

`2-A000203(n+2)+A000203(n+1)+n`
-/

namespace A163553.P6295490908028394850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000203 (n + 2) + (A000203 (n + 1) + (n : ℤ))

end

end A163553.P6295490908028394850

namespace A163553

/-- `2-A000203(n+2)+A000203(n+1)+n` -/
def P6295490908028394850.Spec : Prop :=
  ∀ n, P6295490908028394850.a n = A163553 (n + 1)

theorem P6295490908028394850.correct : P6295490908028394850.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P6295490908028394850.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A155085, A155085.P3282672389110014595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P16744579648467134457

`2-Δ[∑{d}[n+1, #]]+n`
-/

namespace A163553.P16744579648467134457
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + (n : ℤ)

end

end A163553.P16744579648467134457

namespace A163553

/-- `2-Δ[∑{d}[n+1, #]]+n` -/
def P16744579648467134457.Spec : Prop :=
  ∀ n, P16744579648467134457.a n = A163553 (n + 1)

theorem P16744579648467134457.correct : P16744579648467134457.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P16744579648467134457.f2, A163553.P16744579648467134457.f1, A163553.P16744579648467134457.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P14919420114611817142

`Δ[∑{d}[n+1, -#]]+n+2`
-/

namespace A163553.P14919420114611817142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), (-(d : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 2 : ℤ)

end

end A163553.P14919420114611817142

namespace A163553

/-- `Δ[∑{d}[n+1, -#]]+n+2` -/
def P14919420114611817142.Spec : Prop :=
  ∀ n, P14919420114611817142.a n = A163553 (n + 1)

end A163553

/-! ## A163553.P6153688675049563336

`Δ[A024816(n+1)]`
-/

namespace A163553.P6153688675049563336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163553.P6153688675049563336

namespace A163553

/-- `Δ[A024816(n+1)]` -/
def P6153688675049563336.Spec : Prop :=
  ∀ n, P6153688675049563336.a n = A163553 (n + 1)

theorem P6153688675049563336.correct : P6153688675049563336.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P6153688675049563336.f1, A163553.P6153688675049563336.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A024816, A024816.P10728806423584859610.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P8513394864385041839

`Δ[Δ[A111490(n)]]+n`
-/

namespace A163553.P8513394864385041839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A163553.P8513394864385041839

namespace A163553

/-- `Δ[Δ[A111490(n)]]+n` -/
def P8513394864385041839.Spec : Prop :=
  ∀ n, P8513394864385041839.a n = A163553 (n + 1)

end A163553

/-! ## A163553.P3279103197181982634

`Δ[A235796(n+1)]+n`
-/

namespace A163553.P3279103197181982634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A163553.P3279103197181982634

namespace A163553

/-- `Δ[A235796(n+1)]+n` -/
def P3279103197181982634.Spec : Prop :=
  ∀ n, P3279103197181982634.a n = A163553 (n + 1)

theorem P3279103197181982634.correct : P3279103197181982634.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P3279103197181982634.f1, A163553.P3279103197181982634.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A155085, A155085.P3282672389110014595.a, A235796, A235796.P10282550748648679139.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P16400292876314200995

`n-Δ[A033880(n+1)]`
-/

namespace A163553.P16400292876314200995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A163553.P16400292876314200995

namespace A163553

/-- `n-Δ[A033880(n+1)]` -/
def P16400292876314200995.Spec : Prop :=
  ∀ n, P16400292876314200995.a n = A163553 (n + 1)

theorem P16400292876314200995.correct : P16400292876314200995.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P16400292876314200995.f1, A163553.P16400292876314200995.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A033880, A033880.P6005875780263802708.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P15043397704395019105

`n-Δ[A237588(n+1)]`
-/

namespace A163553.P15043397704395019105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A163553.P15043397704395019105

namespace A163553

/-- `n-Δ[A237588(n+1)]` -/
def P15043397704395019105.Spec : Prop :=
  ∀ n, P15043397704395019105.a n = A163553 (n + 1)

theorem P15043397704395019105.correct : P15043397704395019105.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P15043397704395019105.f1, A163553.P15043397704395019105.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A155085, A155085.P3282672389110014595.a, A237588, A237588.P7919289499905681947.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P16450056851514531204

`2-A340793(n+2)+n`
-/

namespace A163553.P16450056851514531204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A340793 (n + 2) + (n : ℤ)

end

end A163553.P16450056851514531204

namespace A163553

/-- `2-A340793(n+2)+n` -/
def P16450056851514531204.Spec : Prop :=
  ∀ n, P16450056851514531204.a n = A163553 (n + 1)

theorem P16450056851514531204.correct : P16450056851514531204.Spec := by
  intro n
  simp only [A163553, Nat.add_sub_cancel, A163553.P16450056851514531204.a, A163553.P466740901883979110.f1, A163553.P466740901883979110.a, A155085, A155085.P3282672389110014595.a, A340793, A340793.P1700930985006359286.f1, A340793.P1700930985006359286.f2, A340793.P1700930985006359286.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163553

/-! ## A163553.P6956901846044525233

`Δ[∑[n]-A001065(n+1)]`
-/

namespace A163553.P6956901846044525233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163553.P6956901846044525233

namespace A163553

/-- `Δ[∑[n]-A001065(n+1)]` -/
def P6956901846044525233.Spec : Prop :=
  ∀ n, P6956901846044525233.a n = A163553 (n + 1)

end A163553

/-!
# A163554: Composite numbers such that exactly two distinct permutations of digits give primes.

The programs for A163554, there is no canonical definition to state claims against.
-/

/-! ## A163554.P14288845015837757390

`∩[A110095(n+1), A161401(n+1)]`
-/

namespace A163554.P14288845015837757390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163554.P14288845015837757390

/-! ## A163554.P14403020465282389658

`∩[A111348(n+1), A143907(n+1)]`
-/

namespace A163554.P14403020465282389658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163554.P14403020465282389658

/-!
# A163563: n occurs 1+a(n) times starting with a(1)=1.

The programs for A163563, the canonical program `A163563.P13970058634026904744` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163563 has offset 1).

The definition of A163563 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001462, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163563.P13970058634026904744

`A001462(n+2)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A163563

/-- `A001462(n+2)-1` -/
def P13970058634026904744.Spec : Prop :=
  ∀ n, P13970058634026904744.a n = A163563 (n + 1)

theorem P13970058634026904744.correct : P13970058634026904744.Spec := by
  intro n
  simp only [A163563, Nat.add_sub_cancel]

end A163563

/-! ## A163563.P145690304329643365

`floor(∑[(2*n+1)^ϕ]/(n+1)²)`
-/

namespace A163563.P145690304329643365
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℝ) ^ Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / ((n + 1) ^ 2 : ℝ)⌋

end

end A163563.P145690304329643365

namespace A163563

/-- `floor(∑[(2*n+1)^ϕ]/(n+1)²)` -/
def P145690304329643365.Spec : Prop :=
  ∀ n, P145690304329643365.a n = A163563 (n + 1)

end A163563

/-! ## A163563.P3587424029141097601

`a(n-(a(a(n-1)-1)+1))+1` with `a(0)=1, a(1)=1`
-/

namespace A163563.P3587424029141097601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - (a (a (n - 1) - 1) + 1)) + 1

end

end A163563.P3587424029141097601

namespace A163563

/-- `a(n-(a(a(n-1)-1)+1))+1` -/
def P3587424029141097601.Spec : Prop :=
  ∀ n, (P3587424029141097601.a n : ℤ) = A163563 (n + 1)

end A163563

/-! ## A163563.P2165733514099123112

`∑[A088517(n+1)]`
-/

namespace A163563.P2165733514099123112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163563.P2165733514099123112

namespace A163563

/-- `∑[A088517(n+1)]` -/
def P2165733514099123112.Spec : Prop :=
  ∀ n, P2165733514099123112.a n = A163563 (n + 1)

end A163563

/-! ## A163563.P14800374896848937462

`Δ[A001463(n+1)]-1`
-/

namespace A163563.P14800374896848937462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A163563.P14800374896848937462

namespace A163563

/-- `Δ[A001463(n+1)]-1` -/
def P14800374896848937462.Spec : Prop :=
  ∀ n, P14800374896848937462.a n = A163563 (n + 1)

end A163563

/-! ## A163563.P2045149862465133198

`Δ[A095114(n+2)]-1`
-/

namespace A163563.P2045149862465133198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095114 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A163563.P2045149862465133198

namespace A163563

/-- `Δ[A095114(n+2)]-1` -/
def P2045149862465133198.Spec : Prop :=
  ∀ n, P2045149862465133198.a n = A163563 (n + 1)

theorem P2045149862465133198.correct : P2045149862465133198.Spec := by
  intro n
  simp only [A163563, Nat.add_sub_cancel, A163563.P2045149862465133198.f1, A163563.P2045149862465133198.a, A163563.P13970058634026904744.a, A001462, A001462.P2570616953797054601.a, A095114, A095114.P18128364600797049740.f1, A095114.P18128364600797049740.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163563

/-! ## A163563.P1465764547946368861

`A224731(n+2)-(n+3)`
-/

namespace A163563.P1465764547946368861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224731 (n + 2) - (n + 3 : ℤ)

end

end A163563.P1465764547946368861

namespace A163563

/-- `A224731(n+2)-(n+3)` -/
def P1465764547946368861.Spec : Prop :=
  ∀ n, P1465764547946368861.a n = A163563 (n + 1)

end A163563

/-!
# A163568: Floor of the integral of x/log(x) for x=2 to 10^n.

The programs for A163568, there is no canonical definition to state claims against.
-/

/-! ## A163568.P4051577826012550804

`A089896(2*(n+1))-3`
-/

namespace A163568.P4051577826012550804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089896 (2 * (n + 1)) - 3

end

end A163568.P4051577826012550804

/-! ## A163568.P9188182480244672852

`A223166(2*(n+1))-A214211(A000302(n))`
-/

namespace A163568.P9188182480244672852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223166 (2 * (n + 1)) - A214211 (A000302 n).toNat

end

end A163568.P9188182480244672852

/-!
# A163569: Numbers of the form p^3*q^2*r where p, q and r are three distinct primes.

The programs for A163569, the canonical program `A163569.P14070169598066139240` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163569 has offset 1).

The definition of A163569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1238 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163569.P15687421745546689184

`∩[A072412(n+1), A386972(n+1)]`
-/

namespace A163569.P15687421745546689184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P15687421745546689184

namespace A163569

/-- `∩[A072412(n+1), A386972(n+1)]` -/
def P15687421745546689184.Spec : Prop :=
  ∀ n, (P15687421745546689184.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P7029653029600918318

`∩[A072414(n+1), A386972(n+1)]`
-/

namespace A163569.P7029653029600918318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P7029653029600918318

namespace A163569

/-- `∩[A072414(n+1), A386972(n+1)]` -/
def P7029653029600918318.Spec : Prop :=
  ∀ n, (P7029653029600918318.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P2616153335746011022

`∩[A065127(n+1), A350372(n+1)]`
-/

namespace A163569.P2616153335746011022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P2616153335746011022

namespace A163569

/-- `∩[A065127(n+1), A350372(n+1)]` -/
def P2616153335746011022.Spec : Prop :=
  ∀ n, (P2616153335746011022.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P10899373473746384034

`∩[A067801(n+1), A350372(n+1)]`
-/

namespace A163569.P10899373473746384034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P10899373473746384034

namespace A163569

/-- `∩[A067801(n+1), A350372(n+1)]` -/
def P10899373473746384034.Spec : Prop :=
  ∀ n, (P10899373473746384034.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P5357283351028162580

`∩[A072412(n+1), A386977(n+1)]`
-/

namespace A163569.P5357283351028162580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P5357283351028162580

namespace A163569

/-- `∩[A072412(n+1), A386977(n+1)]` -/
def P5357283351028162580.Spec : Prop :=
  ∀ n, (P5357283351028162580.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P17905347676831331776

`∩[A072414(n+1), A386977(n+1)]`
-/

namespace A163569.P17905347676831331776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386977 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P17905347676831331776

namespace A163569

/-- `∩[A072414(n+1), A386977(n+1)]` -/
def P17905347676831331776.Spec : Prop :=
  ∀ n, (P17905347676831331776.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P13447934241551244238

`∩[A046306(n+1), A072412(n+1)]`
-/

namespace A163569.P13447934241551244238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P13447934241551244238

namespace A163569

/-- `∩[A046306(n+1), A072412(n+1)]` -/
def P13447934241551244238.Spec : Prop :=
  ∀ n, (P13447934241551244238.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P1156454447277885624

`∩[A046306(n+1), A072414(n+1)]`
-/

namespace A163569.P1156454447277885624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P1156454447277885624

namespace A163569

/-- `∩[A046306(n+1), A072414(n+1)]` -/
def P1156454447277885624.Spec : Prop :=
  ∀ n, (P1156454447277885624.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P10166343551722650730

`∩[A046306(n+1), A323024(n+1)]`
-/

namespace A163569.P10166343551722650730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P10166343551722650730

namespace A163569

/-- `∩[A046306(n+1), A323024(n+1)]` -/
def P10166343551722650730.Spec : Prop :=
  ∀ n, (P10166343551722650730.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P8011759945374524327

`∩[A046306(n+1), A350372(n+1)]`
-/

namespace A163569.P8011759945374524327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P8011759945374524327

namespace A163569

/-- `∩[A046306(n+1), A350372(n+1)]` -/
def P8011759945374524327.Spec : Prop :=
  ∀ n, (P8011759945374524327.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P13599861980366965612

`∩[A046306(n+1), A375074(n+1)]`
-/

namespace A163569.P13599861980366965612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P13599861980366965612

namespace A163569

/-- `∩[A046306(n+1), A375074(n+1)]` -/
def P13599861980366965612.Spec : Prop :=
  ∀ n, (P13599861980366965612.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P3755403724502747630

`∩[A046306(n+1), A375075(n+1)]`
-/

namespace A163569.P3755403724502747630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P3755403724502747630

namespace A163569

/-- `∩[A046306(n+1), A375075(n+1)]` -/
def P3755403724502747630.Spec : Prop :=
  ∀ n, (P3755403724502747630.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P6351640746509693252

`∩[A046306(n+1), A137487(n+1)]`
-/

namespace A163569.P6351640746509693252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P6351640746509693252

namespace A163569

/-- `∩[A046306(n+1), A137487(n+1)]` -/
def P6351640746509693252.Spec : Prop :=
  ∀ n, (P6351640746509693252.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P11549997624168230360

`∩[A065127(n+1), A137487(n+1)]`
-/

namespace A163569.P11549997624168230360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065127 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P11549997624168230360

namespace A163569

/-- `∩[A065127(n+1), A137487(n+1)]` -/
def P11549997624168230360.Spec : Prop :=
  ∀ n, (P11549997624168230360.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P940921891290169327

`∩[A067801(n+1), A137487(n+1)]`
-/

namespace A163569.P940921891290169327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P940921891290169327

namespace A163569

/-- `∩[A067801(n+1), A137487(n+1)]` -/
def P940921891290169327.Spec : Prop :=
  ∀ n, (P940921891290169327.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P6584563650300282893

`∩[A072414(n+1), A137487(n+1)]`
-/

namespace A163569.P6584563650300282893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P6584563650300282893

namespace A163569

/-- `∩[A072414(n+1), A137487(n+1)]` -/
def P6584563650300282893.Spec : Prop :=
  ∀ n, (P6584563650300282893.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P14070169598066139240

`∩[A137487(n+1), A195087(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A163569

/-- `∩[A137487(n+1), A195087(n+1)]` -/
def P14070169598066139240.Spec : Prop :=
  ∀ n, (P14070169598066139240.a n : ℤ) = A163569 (n + 1)

theorem P14070169598066139240.correct : P14070169598066139240.Spec := by
  intro n
  simp only [A163569, Nat.add_sub_cancel]

end A163569

/-! ## A163569.P15830169989608877104

`∩[A137487(n+1), A323024(n+1)]`
-/

namespace A163569.P15830169989608877104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P15830169989608877104

namespace A163569

/-- `∩[A137487(n+1), A323024(n+1)]` -/
def P15830169989608877104.Spec : Prop :=
  ∀ n, (P15830169989608877104.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P3936400189326975278

`∩[A137487(n+1), A350372(n+1)]`
-/

namespace A163569.P3936400189326975278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P3936400189326975278

namespace A163569

/-- `∩[A137487(n+1), A350372(n+1)]` -/
def P3936400189326975278.Spec : Prop :=
  ∀ n, (P3936400189326975278.a n : ℤ) = A163569 (n + 1)

end A163569

/-! ## A163569.P13065778910576024525

`∩[A137487(n+1), A375074(n+1)]`
-/

namespace A163569.P13065778910576024525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375074 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163569.P13065778910576024525

namespace A163569

/-- `∩[A137487(n+1), A375074(n+1)]` -/
def P13065778910576024525.Spec : Prop :=
  ∀ n, (P13065778910576024525.a n : ℤ) = A163569 (n + 1)

end A163569

/-!
# A163570: Primes p such that p^6-6 is also prime.

The programs for A163570, there is no canonical definition to state claims against.
-/

/-! ## A163570.P7784803034039312407

`p?[A239414(n+1)]`
-/

namespace A163570.P7784803034039312407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163570.P7784803034039312407

/-! ## A163570.P16556777320803405002

`∩[A042993(n+1), A239414(n+1)]`
-/

namespace A163570.P16556777320803405002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P16556777320803405002

/-! ## A163570.P7051493484055078474

`∩[A239414(n+1), A380468(n+1)]`
-/

namespace A163570.P7051493484055078474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P7051493484055078474

/-! ## A163570.P13849696484311818363

`∩[A042991(n+1), A239414(n+1)]`
-/

namespace A163570.P13849696484311818363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P13849696484311818363

/-! ## A163570.P10882532335448989415

`∩[A042986(n+1), A239414(n+1)]`
-/

namespace A163570.P10882532335448989415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P10882532335448989415

/-! ## A163570.P8887910770679370389

`∩[A216286(n+1), A239414(n+1)]`
-/

namespace A163570.P8887910770679370389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P8887910770679370389

/-! ## A163570.P6660120270689759994

`∩[A049557(n+1), A239414(n+1)]`
-/

namespace A163570.P6660120270689759994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P6660120270689759994

/-! ## A163570.P2502691841139331089

`∩[A040179(n+1), A239414(n+1)]`
-/

namespace A163570.P2502691841139331089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P2502691841139331089

/-! ## A163570.P1249854485588644040

`∩[A040986(n+1), A239414(n+1)]`
-/

namespace A163570.P1249854485588644040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P1249854485588644040

/-! ## A163570.P18187834229680964159

`∩[A040970(n+1), A239414(n+1)]`
-/

namespace A163570.P18187834229680964159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P18187834229680964159

/-! ## A163570.P3605733431255447817

`∩[A040972(n+1), A239414(n+1)]`
-/

namespace A163570.P3605733431255447817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P3605733431255447817

/-! ## A163570.P12084951838302982587

`∩[A040990(n+1), A239414(n+1)]`
-/

namespace A163570.P12084951838302982587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P12084951838302982587

/-! ## A163570.P11930096466742997800

`∩[A009087(n+1), A239414(n+1)]`
-/

namespace A163570.P11930096466742997800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P11930096466742997800

/-! ## A163570.P10799423413713293042

`∩[A040159(n+1), A239414(n+1)]`
-/

namespace A163570.P10799423413713293042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P10799423413713293042

/-! ## A163570.P9227750925443569228

`∩[A040161(n+1), A239414(n+1)]`
-/

namespace A163570.P9227750925443569228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P9227750925443569228

/-! ## A163570.P10325271127680277151

`∩[A040165(n+1), A239414(n+1)]`
-/

namespace A163570.P10325271127680277151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P10325271127680277151

/-! ## A163570.P7826233745698536128

`∩[A040169(n+1), A239414(n+1)]`
-/

namespace A163570.P7826233745698536128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P7826233745698536128

/-! ## A163570.P3932925629123633970

`∩[A040171(n+1), A239414(n+1)]`
-/

namespace A163570.P3932925629123633970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P3932925629123633970

/-! ## A163570.P5614346325261639815

`∩[A040177(n+1), A239414(n+1)]`
-/

namespace A163570.P5614346325261639815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P5614346325261639815

/-! ## A163570.P10613651313068727141

`∩[A040184(n+1), A239414(n+1)]`
-/

namespace A163570.P10613651313068727141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163570.P10613651313068727141

/-!
# A163571: Primes p such that p^8-8 is also prime.

The programs for A163571, there is no canonical definition to state claims against.
-/

/-! ## A163571.P5124667679141144162

`p?[A239416(n+1)]`
-/

namespace A163571.P5124667679141144162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163571.P5124667679141144162

/-! ## A163571.P1481415685674064323

`p?[record[A239416(A133310(n))]]`
-/

namespace A163571.P1481415685674064323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163571.P1481415685674064323

/-! ## A163571.P7673864869042559063

`∩[A239416(n+1), A380468(n+1)]`
-/

namespace A163571.P7673864869042559063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P7673864869042559063

/-! ## A163571.P10486920197069713875

`∩[A042989(n+1), A239416(n+1)]`
-/

namespace A163571.P10486920197069713875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P10486920197069713875

/-! ## A163571.P7170009326526978392

`∩[A239416(n+1), A042988(n)]`
-/

namespace A163571.P7170009326526978392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P7170009326526978392

/-! ## A163571.P35419442832187530

`∩[A216881(n+1), A239416(n+1)]`
-/

namespace A163571.P35419442832187530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P35419442832187530

/-! ## A163571.P14133460711753024117

`∩[A216882(n+1), A239416(n+1)]`
-/

namespace A163571.P14133460711753024117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P14133460711753024117

/-! ## A163571.P6797681154869446605

`∩[A042966(n+1), A239416(n+1)]`
-/

namespace A163571.P6797681154869446605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P6797681154869446605

/-! ## A163571.P7327246132049372465

`∩[A216285(n+1), A239416(n+1)]`
-/

namespace A163571.P7327246132049372465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P7327246132049372465

/-! ## A163571.P10703766782252276197

`∩[A004139(n+1), A239416(n+1)]`
-/

namespace A163571.P10703766782252276197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P10703766782252276197

/-! ## A163571.P17631711410591618485

`∩[A045319(n+1), A239416(n+1)]`
-/

namespace A163571.P17631711410591618485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P17631711410591618485

/-! ## A163571.P8842671778772130723

`∩[A065091(n+1), A239416(n+1)]`
-/

namespace A163571.P8842671778772130723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P8842671778772130723

/-! ## A163571.P9110737620563054523

`∩[A197636(n+1), A239416(n+1)]`
-/

namespace A163571.P9110737620563054523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P9110737620563054523

/-! ## A163571.P15701941782732513103

`∩[A000040(n+1), A239416(n+1)]`
-/

namespace A163571.P15701941782732513103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P15701941782732513103

/-! ## A163571.P7930881611806284393

`∩[A006005(n+1), A239416(n+1)]`
-/

namespace A163571.P7930881611806284393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P7930881611806284393

/-! ## A163571.P12791596894430729776

`∩[A008578(n+1), A239416(n+1)]`
-/

namespace A163571.P12791596894430729776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P12791596894430729776

/-! ## A163571.P10735461457058063298

`∩[A046022(n+1), A239416(n+1)]`
-/

namespace A163571.P10735461457058063298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P10735461457058063298

/-! ## A163571.P10686799756132372280

`∩[A093515(n+1), A239416(n+1)]`
-/

namespace A163571.P10686799756132372280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P10686799756132372280

/-! ## A163571.P10777115946493668418

`∩[A033946(n+1), A239416(n+1)]`
-/

namespace A163571.P10777115946493668418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P10777115946493668418

/-! ## A163571.P13940693666124786703

`∩[A051948(n+1), A239416(n+1)]`
-/

namespace A163571.P13940693666124786703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163571.P13940693666124786703

/-!
# A163572: G.f.: A(x) = exp( Sum_{n>=1} (1 + 2*A006519(n)*x)^n * x^n/n ) where A006519(n) is the highest power of 2 dividing n.

The programs for A163572, there is no canonical definition to state claims against.
-/

/-! ## A163572.P14909118780390948500

`A137695(A148988(n))`
-/

namespace A163572.P14909118780390948500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137695 (A148988 n).toNat

end

end A163572.P14909118780390948500

/-! ## A163572.P11815958492676707400

`A045828(A026770(n))-1`
-/

namespace A163572.P11815958492676707400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045828 (A026770 n).toNat - 1

end

end A163572.P11815958492676707400

/-! ## A163572.P4258854264764519789

`A001462(A323295(n))+floor(n-atan(n))`
-/

namespace A163572.P4258854264764519789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A323295 n).toNat + ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A163572.P4258854264764519789

/-!
# A163573: Primes p such that (p+1)/2, (p+2)/3 and (p+3)/4 are also primes.

The programs for A163573, there is no canonical definition to state claims against.
-/

/-! ## A163573.P15536438507961172177

`A278585(n+1)+1`
-/

namespace A163573.P15536438507961172177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278585 (n + 1) + 1

end

end A163573.P15536438507961172177

/-! ## A163573.P14536822914108039214

`xor(1, A278585(Δ[n²]-n))`
-/

namespace A163573.P14536822914108039214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A278585 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A163573.P14536822914108039214

/-! ## A163573.P14756467752855675833

`record[or(1, A278585(A328399(n)))]`
-/

namespace A163573.P14756467752855675833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A278585 (A328399 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163573.P14756467752855675833

/-! ## A163573.P2970987263897149213

`or(1, A278585(A328399(2*n)))`
-/

namespace A163573.P2970987263897149213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A278585 (A328399 (2 * n)).toNat)

end

end A163573.P2970987263897149213

/-! ## A163573.P9960243097590732556

`∩[A036570(n+1), A350686(n+1)]`
-/

namespace A163573.P9960243097590732556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163573.P9960243097590732556

/-! ## A163573.P5389253395835377512

`record[or(1, A278585(A144968(n)))]`
-/

namespace A163573.P5389253395835377512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A278585 (A144968 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163573.P5389253395835377512

/-! ## A163573.P807604177520777420

`∩[A163623(n+1), A350686(n+1)]`
-/

namespace A163573.P807604177520777420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350686 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163573.P807604177520777420

/-!
# A163574: Decimal expansion of smallest zeroless pandigital number in base n such that each k-digit substring (1 <= k <= n-1 = number of base-n digits) starting from the left, is divisible by k (or 0 if none exists).

The programs for A163574, there is no canonical definition to state claims against.
-/

/-! ## A163574.P4717345750012612248

`A115788(n+1)*A235164(A117958(2*n+1))`
-/

namespace A163574.P4717345750012612248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115788 (n + 1) * A235164 (A117958 (2 * n + 1)).toNat

end

end A163574.P4717345750012612248

/-!
# A163575: Remove all trailing bits equal to (n mod 2) in binary representation of n.

The programs for A163575, the canonical program `A163575.P3456227262057770014` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163575 has offset 1).

The definition of A163575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A136480, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163575.P3456227262057770014

`floor((n+1)/2^A136480(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163575

/-- `floor((n+1)/2^A136480(n+1))` -/
def P3456227262057770014.Spec : Prop :=
  ∀ n, P3456227262057770014.a n = A163575 (n + 1)

theorem P3456227262057770014.correct : P3456227262057770014.Spec := by
  intro n
  simp only [A163575, Nat.add_sub_cancel]

end A163575

/-! ## A163575.P13095278434573538281

`floor((n+1)/(or(n, n+2)-n))`
-/

namespace A163575.P13095278434573538281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((Nat.lor n (n + 2) : ℤ) - (n : ℤ) : ℚ)⌋

end

end A163575.P13095278434573538281

namespace A163575

/-- `floor((n+1)/(or(n, n+2)-n))` -/
def P13095278434573538281.Spec : Prop :=
  ∀ n, P13095278434573538281.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P17631532169775483898

`floor((n+1)/and(n+2, -(n+1)))`
-/

namespace A163575.P17631532169775483898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) : ℚ)⌋

end

end A163575.P17631532169775483898

namespace A163575

/-- `floor((n+1)/and(n+2, -(n+1)))` -/
def P17631532169775483898.Spec : Prop :=
  ∀ n, P17631532169775483898.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P12690611896588529312

`floor((n+1)/(n+2-and(n, n+2)))`
-/

namespace A163575.P12690611896588529312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((n + 2 : ℤ) - (Nat.land n (n + 2) : ℤ) : ℚ)⌋

end

end A163575.P12690611896588529312

namespace A163575

/-- `floor((n+1)/(n+2-and(n, n+2)))` -/
def P12690611896588529312.Spec : Prop :=
  ∀ n, P12690611896588529312.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P10494847799460056642

`and(n+1, n+2)/and(n+2, -(n+1))`
-/

namespace A163575.P10494847799460056642
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land (n + 1) (n + 2) : ℚ) / (Int.land (n + 2 : ℤ) (-(n + 1 : ℤ)) : ℚ)

end

end A163575.P10494847799460056642

namespace A163575

/-- `and(n+1, n+2)/and(n+2, -(n+1))` -/
def P10494847799460056642.Spec : Prop :=
  ∀ n, P10494847799460056642.a n = (A163575 (n + 1) : ℚ)

end A163575

/-! ## A163575.P11804391048374009406

`and(n+1, n+2)/(n+2-and(n, n+2))`
-/

namespace A163575.P11804391048374009406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land (n + 1) (n + 2) : ℚ) / ((n + 2 : ℤ) - (Nat.land n (n + 2) : ℤ) : ℚ)

end

end A163575.P11804391048374009406

namespace A163575

/-- `and(n+1, n+2)/(n+2-and(n, n+2))` -/
def P11804391048374009406.Spec : Prop :=
  ∀ n, P11804391048374009406.a n = (A163575 (n + 1) : ℚ)

end A163575

/-! ## A163575.P10101275455151920897

`A000265(char[2*n]+n+1)-char[2*n]`
-/

namespace A163575.P10101275455151920897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 ((if ∃ j, f1 j = n then 1 else 0) + (n + 1)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A163575.P10101275455151920897

namespace A163575

/-- `A000265(char[2*n]+n+1)-char[2*n]` -/
def P10101275455151920897.Spec : Prop :=
  ∀ n, P10101275455151920897.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P14716536794110661108

`1-A129527(A008619(n))+n`
-/

namespace A163575.P14716536794110661108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A129527 (A008619 n).toNat + (n : ℤ)

end

end A163575.P14716536794110661108

namespace A163575

/-- `1-A129527(A008619(n))+n` -/
def P14716536794110661108.Spec : Prop :=
  ∀ n, P14716536794110661108.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P7935388483280768051

`A000265(n+1)%A161151(n+1)`
-/

namespace A163575.P7935388483280768051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000265 (n + 1)) (A161151 (n + 1))

end

end A163575.P7935388483280768051

namespace A163575

/-- `A000265(n+1)%A161151(n+1)` -/
def P7935388483280768051.Spec : Prop :=
  ∀ n, P7935388483280768051.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P8802889781148998019

`A000265(n+2)-A129527(n+1)+n`
-/

namespace A163575.P8802889781148998019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 2) - A129527 (n + 1) + (n : ℤ)

end

end A163575.P8802889781148998019

namespace A163575

/-- `A000265(n+2)-A129527(n+1)+n` -/
def P8802889781148998019.Spec : Prop :=
  ∀ n, P8802889781148998019.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P15506772369995822196

`(A000265(n+2)-1)/A118824(2*(n+1))`
-/

namespace A163575.P15506772369995822196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (n + 2) - 1 : ℚ) / (A118824 (2 * (n + 1)) : ℚ)

end

end A163575.P15506772369995822196

namespace A163575

/-- `(A000265(n+2)-1)/A118824(2*(n+1))` -/
def P15506772369995822196.Spec : Prop :=
  ∀ n, P15506772369995822196.a n = (A163575 (n + 1) : ℚ)

end A163575

/-! ## A163575.P16245669999013358904

`A000035(n)+A000265(A008619(n))-1`
-/

namespace A163575.P16245669999013358904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A000265 (A008619 n).toNat - 1)

end

end A163575.P16245669999013358904

namespace A163575

/-- `A000035(n)+A000265(A008619(n))-1` -/
def P16245669999013358904.Spec : Prop :=
  ∀ n, P16245669999013358904.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P15746245353046328031

`A001316(n+1)/A001316(n)*A025480(n+1)`
-/

namespace A163575.P15746245353046328031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (n + 1) : ℚ) / (A001316 n : ℚ) * (A025480 (n + 1) : ℚ)

end

end A163575.P15746245353046328031

namespace A163575

/-- `A001316(n+1)/A001316(n)*A025480(n+1)` -/
def P15746245353046328031.Spec : Prop :=
  ∀ n, P15746245353046328031.a n = (A163575 (n + 1) : ℚ)

end A163575

/-! ## A163575.P11275901604050210781

`A025480(n+1)+A025480(n+1)-A331739(n+1)`
-/

namespace A163575.P11275901604050210781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (n + 1) + (A025480 (n + 1) - A331739 (n + 1))

end

end A163575.P11275901604050210781

namespace A163575

/-- `A025480(n+1)+A025480(n+1)-A331739(n+1)` -/
def P11275901604050210781.Spec : Prop :=
  ∀ n, P11275901604050210781.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P10552762461904453952

`A153733(n+1)-A331739(n+1)`
-/

namespace A163575.P10552762461904453952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (n + 1) - A331739 (n + 1)

end

end A163575.P10552762461904453952

namespace A163575

/-- `A153733(n+1)-A331739(n+1)` -/
def P10552762461904453952.Spec : Prop :=
  ∀ n, P10552762461904453952.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P8697135080546915057

`A153733(n+1)/A006519(n+1)`
-/

namespace A163575.P8697135080546915057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 (n + 1) : ℚ) / (A006519 (n + 1) : ℚ)

end

end A163575.P8697135080546915057

namespace A163575

/-- `A153733(n+1)/A006519(n+1)` -/
def P8697135080546915057.Spec : Prop :=
  ∀ n, P8697135080546915057.a n = (A163575 (n + 1) : ℚ)

end A163575

/-! ## A163575.P6001637060249491429

`A153733(n+1)+A153733(n)-n`
-/

namespace A163575.P6001637060249491429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 (n + 1) + A153733 n - (n : ℤ)

end

end A163575.P6001637060249491429

namespace A163575

/-- `A153733(n+1)+A153733(n)-n` -/
def P6001637060249491429.Spec : Prop :=
  ∀ n, P6001637060249491429.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P15359083659911048387

`(2*(n+1)/(xor(n, n+1)+1))%A089265(A259445(n+2))`
-/

namespace A163575.P15359083659911048387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))) (A089265 (A259445 (n + 2)).toNat)

end

end A163575.P15359083659911048387

namespace A163575

/-- `(2*(n+1)/(xor(n, n+1)+1))%A089265(A259445(n+2))` -/
def P15359083659911048387.Spec : Prop :=
  ∀ n, P15359083659911048387.a n = A163575 (n + 1)

end A163575

/-! ## A163575.P11749223257652100998

`A153733(n+1)/A000079(A007814(n+1))`
-/

namespace A163575.P11749223257652100998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153733 (n + 1) : ℚ) / (A000079 (A007814 (n + 1)).toNat : ℚ)

end

end A163575.P11749223257652100998

namespace A163575

/-- `A153733(n+1)/A000079(A007814(n+1))` -/
def P11749223257652100998.Spec : Prop :=
  ∀ n, P11749223257652100998.a n = (A163575 (n + 1) : ℚ)

end A163575

/-! ## A163575.P1609631434233288840

`(A153733(n)+1)%A089265(A259445(n+2))`
-/

namespace A163575.P1609631434233288840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153733 n + 1) (A089265 (A259445 (n + 2)).toNat)

end

end A163575.P1609631434233288840

namespace A163575

/-- `(A153733(n)+1)%A089265(A259445(n+2))` -/
def P1609631434233288840.Spec : Prop :=
  ∀ n, P1609631434233288840.a n = A163575 (n + 1)

end A163575

/-!
# A163577: Count of indices x in [0,n] that satisfy the equation A000120(x) + A000120(n-x) = A000120(n) + 2.

The programs for A163577, there is no canonical definition to state claims against.
-/

/-! ## A163577.P6892077332577721718

`A382725(n)-A382723(n)`
-/

namespace A163577.P6892077332577721718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382725 n - A382723 n

end

end A163577.P6892077332577721718

/-! ## A163577.P7892422926884625056

`and(A185543(A306860(n)), A249732(n))`
-/

namespace A163577.P7892422926884625056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185543 (A306860 n).toNat) (A249732 n)

end

end A163577.P7892422926884625056

/-! ## A163577.P7204334950861302927

`A088580(A017006(n))%A060789(n+1)`
-/

namespace A163577.P7204334950861302927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088580 (A017006 n).toNat) (A060789 (n + 1))

end

end A163577.P7204334950861302927

/-! ## A163577.P5887357369876312971

`and(A073937(A187829(n+1)), A249732(n))`
-/

namespace A163577.P5887357369876312971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A073937 (A187829 (n + 1)).toNat) (A249732 n)

end

end A163577.P5887357369876312971

/-! ## A163577.P8471663441641217511

`and(A249732(A048261(n+1)²), A249732(n))`
-/

namespace A163577.P8471663441641217511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A249732 (A048261 (n + 1) ^ 2).toNat) (A249732 n)

end

end A163577.P8471663441641217511

/-!
# A163578: If n is prime, a(n) is next composite greater than a(n-1), else if n is composite, a(n) is next prime greater than a(n-1) else 2.

The programs for A163578, there is no canonical definition to state claims against.
-/

/-! ## A163578.P5947646697594518714

`floor(A178663(n+1)+acot(n))`
-/

namespace A163578.P5947646697594518714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A178663 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A163578.P5947646697594518714

/-! ## A163578.P629388218453672426

`A178663(n%a(n-1)+1)` with `a(0)=2`
-/

namespace A163578.P629388218453672426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A178663 (Int.tmod (n : ℤ) (a (n - 1)) + 1).toNat

end

end A163578.P629388218453672426

/-! ## A163578.P11394015082213308616

`A181440(A178663(n+1))`
-/

namespace A163578.P11394015082213308616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181440 (A178663 (n + 1)).toNat

end

end A163578.P11394015082213308616

/-! ## A163578.P6902319617056899663

`A178663(n+1)+A000007(n)`
-/

namespace A163578.P6902319617056899663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178663 (n + 1) + A000007 n

end

end A163578.P6902319617056899663

/-! ## A163578.P9813124955501101113

`A178663(n+1)+A112316(n)`
-/

namespace A163578.P9813124955501101113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178663 (n + 1) + A112316 n

end

end A163578.P9813124955501101113

/-! ## A163578.P1122424513463170195

`A178663(n+1)+A151878(n)`
-/

namespace A163578.P1122424513463170195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178663 (n + 1) + A151878 n

end

end A163578.P1122424513463170195

/-! ## A163578.P13062372634171502415

`A178663(n+1)+A151909(n)`
-/

namespace A163578.P13062372634171502415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178663 (n + 1) + A151909 n

end

end A163578.P13062372634171502415

/-! ## A163578.P17128195024195931439

`A178663(n+1)+A151933(n)`
-/

namespace A163578.P17128195024195931439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178663 (n + 1) + A151933 n

end

end A163578.P17128195024195931439

/-! ## A163578.P9480095286937410957

`A178663(n+1)+A151934(n)`
-/

namespace A163578.P9480095286937410957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178663 (n + 1) + A151934 n

end

end A163578.P9480095286937410957

/-! ## A163578.P892217111325062993

`A178663(n+1)+A151935(n)`
-/

namespace A163578.P892217111325062993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178663 (n + 1) + A151935 n

end

end A163578.P892217111325062993

/-!
# A163579: Primes of the form floor(k*(k+1)*Pi/2), k>=0, where Pi = 3.1415.. = A000796.

The programs for A163579, there is no canonical definition to state claims against.
-/

/-! ## A163579.P16861746901224310311

`p?[floor(∑[π*n])]`
-/

namespace A163579.P16861746901224310311
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163579.P16861746901224310311

/-! ## A163579.P4848868803770289923

`or(1, p?[floor(π*C(n, 2))])`
-/

namespace A163579.P4848868803770289923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (Nat.choose n 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A163579.P4848868803770289923

/-! ## A163579.P18394484321443680159

`∏{d}[p?[floor(π*C(n, 2))], #]`
-/

namespace A163579.P18394484321443680159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (Nat.choose n 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A163579.P18394484321443680159

/-! ## A163579.P9895010845103071572

`∑{p}[p?[floor(π*C(n, 2))], #]`
-/

namespace A163579.P9895010845103071572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (Nat.choose n 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A163579.P9895010845103071572

/-! ## A163579.P1790950279445411192

`∏{p}[p?[floor(π*C(n, 2))], #]`
-/

namespace A163579.P1790950279445411192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (Nat.choose n 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A163579.P1790950279445411192

/-!
# A163580: Primes of the form floor(k+A000217(k-1)*Pi), Pi = A000796, k integer.

The programs for A163580, there is no canonical definition to state claims against.
-/

/-! ## A163580.P10152284401577982991

`p?[floor(π*C(n, 2)+n)]`
-/

namespace A163580.P10152284401577982991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (Nat.choose n 2 : ℝ) + (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163580.P10152284401577982991

/-! ## A163580.P2328871164751526145

`p?[floor(∑[π*n])+n+1]`
-/

namespace A163580.P2328871164751526145
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.pi * (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163580.P2328871164751526145

/-!
# A163581: Number of zeros of sin(x) in integer intervals starting with (0,1).

The programs for A163581, there is no canonical definition to state claims against.
-/

/-! ## A163581.P121014935731721887

`Δ[floor(n/π)]`
-/

namespace A163581.P121014935731721887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.pi⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163581.P121014935731721887

/-! ## A163581.P7498275187734570756

`floor(cos(floor(∑[cos(n)])))`
-/

namespace A163581.P7498275187734570756
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ : ℝ)⌋

end

end A163581.P7498275187734570756

/-! ## A163581.P6836644266717572345

`ceil(sin(Δ[acot(tan(n))]))`
-/

namespace A163581.P6836644266717572345
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.tan (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (f1 (n + 1) - f1 n)⌉

end

end A163581.P6836644266717572345

/-! ## A163581.P16501869434796313367

`round(cot(cosh(Δ[cos(n)])))`
-/

namespace A163581.P16501869434796313367
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (Real.cosh (f1 (n + 1) - f1 n)))

end

end A163581.P16501869434796313367

/-! ## A163581.P16830097776978999682

`ceil(tanh(Δ[acot(tan(n))]))`
-/

namespace A163581.P16830097776978999682
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.tan (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh (f1 (n + 1) - f1 n)⌉

end

end A163581.P16830097776978999682

/-! ## A163581.P16762561691619984818

`ceil(acot(Δ[acot(tan(n))]))`
-/

namespace A163581.P16762561691619984818
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (Real.tan (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (f1 (n + 1) - f1 n)⌉

end

end A163581.P16762561691619984818

/-! ## A163581.P12113985095960764234

`round(sin(1-n)^6)`
-/

namespace A163581.P12113985095960764234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 - (n : ℤ) : ℝ) ^ 6)

end

end A163581.P12113985095960764234

/-! ## A163581.P17068670416409165196

`round(cos(n+10)^6)`
-/

namespace A163581.P17068670416409165196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (n + 10 : ℝ) ^ 6)

end

end A163581.P17068670416409165196

/-! ## A163581.P16247964529174243971

`floor(∑[sin(2*n)])²`
-/

namespace A163581.P16247964529174243971
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (2 * n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2

end

end A163581.P16247964529174243971

/-! ## A163581.P4063361079380362316

`1-round(cos(1-n))²`
-/

namespace A163581.P4063361079380362316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - SequenceMachineLib.roundAway (Real.cos (1 - (n : ℤ) : ℝ)) ^ 2

end

end A163581.P4063361079380362316

/-!
# A163583: Partial sums of A001378.

The programs for A163583, there is no canonical definition to state claims against.
-/

/-! ## A163583.P795374452412608391

`∑[A001378(n+1)]`
-/

namespace A163583.P795374452412608391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163583.P795374452412608391

/-! ## A163583.P17122366744881366900

`A001378(C(n+1, n))+a(n-1)` with `a(0)=1`
-/

namespace A163583.P17122366744881366900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001378 (Nat.choose (n + 1) n) + a (n - 1)

end

end A163583.P17122366744881366900

/-! ## A163583.P13171900761318535114

`A001378(n+1)+a(A023443(n))` with `a(0)=1`
-/

namespace A163583.P13171900761318535114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001378 (n + 1) + a (A023443 n).toNat

end

end A163583.P13171900761318535114

/-! ## A163583.P3177926367238142839

`A001378(n+1)+a(A000007(n)-1+n)` with `a(0)=1`
-/

namespace A163583.P3177926367238142839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001378 (n + 1) + a (A000007 n - 1 + (n : ℤ)).toNat

end

end A163583.P3177926367238142839

/-! ## A163583.P16242948717052409864

`A001378(n%A273499(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A163583.P16242948717052409864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001378 (Int.tmod (n : ℤ) (A273499 n) + 1).toNat + a (n - 1)

end

end A163583.P16242948717052409864

/-! ## A163583.P4411011684616520161

`A001378(A151878(n)!+n)+a(n-1)` with `a(0)=1`
-/

namespace A163583.P4411011684616520161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001378 (Nat.factorial (A151878 n).toNat + n) + a (n - 1)

end

end A163583.P4411011684616520161

/-!
# A163584: Number of singularities of tan(x) in integer intervals starting with (0,1).

The programs for A163584, there is no canonical definition to state claims against.
-/

/-! ## A163584.P504380904393308005

`Δ[round(n/π)]`
-/

namespace A163584.P504380904393308005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / Real.pi)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163584.P504380904393308005

/-! ## A163584.P218568074883857250

`char[lt[γ, tan(n)]]`
-/

namespace A163584.P218568074883857250
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.eulerMascheroniConstant

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A163584.P218568074883857250

/-! ## A163584.P8990938694108725119

`round(Δ[cos(n)]^4)`
-/

namespace A163584.P8990938694108725119
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) ^ 4)

end

end A163584.P8990938694108725119

/-! ## A163584.P7461963044326779968

`floor(atan(2^tan(n)))`
-/

namespace A163584.P7461963044326779968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan ((2 : ℝ) ^ (Real.tan (n : ℝ)))⌋

end

end A163584.P7461963044326779968

/-! ## A163584.P5162653171482121631

`char[lt[0, round(tan(n))]]`
-/

namespace A163584.P5162653171482121631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A163584.P5162653171482121631

/-! ## A163584.P2348159553207821764

`char[lt[ratio[cos(n)], 0]]`
-/

namespace A163584.P2348159553207821764
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℝ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A163584.P2348159553207821764

/-! ## A163584.P13759745664852957791

`char[lt[Δ[tan(n)], 0]]`
-/

namespace A163584.P13759745664852957791
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f4 j : ℝ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A163584.P13759745664852957791

/-! ## A163584.P12374054086248583287

`floor(root(γ, Δ[tan(n)]))`
-/

namespace A163584.P12374054086248583287
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant ^ (1 / (f1 (n + 1) - f1 n))⌋

end

end A163584.P12374054086248583287

/-! ## A163584.P12607767643892315110

`round(Δ[cos(n)]²²)`
-/

namespace A163584.P12607767643892315110
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2) ^ 2)

end

end A163584.P12607767643892315110

/-! ## A163584.P8189131677087850965

`floor(atan(exp(round(tan(n)))))`
-/

namespace A163584.P8189131677087850965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (Real.exp (SequenceMachineLib.roundAway (Real.tan (n : ℝ)) : ℝ))⌋

end

end A163584.P8189131677087850965

/-!
# A163585: a(n) = floor((4*Pi)^n * n!).

The programs for A163585, there is no canonical definition to state claims against.
-/

/-! ## A163585.P17223929574062023890

`floor((4*π)^n*n!)`
-/

namespace A163585.P17223929574062023890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 * Real.pi) ^ n * (Nat.factorial n : ℝ)⌋

end

end A163585.P17223929574062023890

/-!
# A163586: a(1) = 3. For n > 1, Ulam's spiral is started with a(n-1), and the primes p on the NE spoke are considered. a(n) is the minimal p that is the lesser of a twin prime pair.

The programs for A163586, there is no canonical definition to state claims against.
-/

/-! ## A163586.P14437273756848354931

`eq[A137843(n+1), A239735(n+1)]`
-/

namespace A163586.P14437273756848354931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163586.P14437273756848354931

/-! ## A163586.P5951404806118887642

`A088081(A002623(n))`
-/

namespace A163586.P5951404806118887642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088081 (A002623 n).toNat

end

end A163586.P5951404806118887642

/-! ## A163586.P2559930772914074478

`A078859(A334149(∑[n]))`
-/

namespace A163586.P2559930772914074478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078859 (A334149 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A163586.P2559930772914074478

/-!
# A163587: Primes of the form floor(2 * (k+j) * log(2*(k+j))), 0 <= j <= k.

The programs for A163587, the canonical program `A163587.P14779622749717887615` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163587 has offset 1).

The definition of A163587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163587.P14779622749717887615

`p?[floor((n+1)*log((2*(n+1))²))]`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163587

/-- `p?[floor((n+1)*log((2*(n+1))²))]` -/
def P14779622749717887615.Spec : Prop :=
  ∀ n, P14779622749717887615.a n = A163587 (n + 1)

theorem P14779622749717887615.correct : P14779622749717887615.Spec := by
  intro n
  simp only [A163587, Nat.add_sub_cancel]

end A163587

/-! ## A163587.P2647031626526121158

`or(1, p?[A212455(n+1)])`
-/

namespace A163587.P2647031626526121158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A163587.P2647031626526121158

namespace A163587

/-- `or(1, p?[A212455(n+1)])` -/
def P2647031626526121158.Spec : Prop :=
  ∀ n, P2647031626526121158.a n = A163587 (n + 1)

end A163587

/-! ## A163587.P15384998611033533391

`A000027(p?[A212455(n+1)])`
-/

namespace A163587.P15384998611033533391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163587.P15384998611033533391

namespace A163587

/-- `A000027(p?[A212455(n+1)])` -/
def P15384998611033533391.Spec : Prop :=
  ∀ n, P15384998611033533391.a n = A163587 (n + 1)

end A163587

/-! ## A163587.P3802141037220625389

`∩[A212455(n+1), A378422(n+1)]`
-/

namespace A163587.P3802141037220625389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P3802141037220625389

namespace A163587

/-- `∩[A212455(n+1), A378422(n+1)]` -/
def P3802141037220625389.Spec : Prop :=
  ∀ n, (P3802141037220625389.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P2504329429240995524

`p?[A212455(n+1)]%A050217(n+1)`
-/

namespace A163587.P2504329429240995524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A050217 (n + 1))

end

end A163587.P2504329429240995524

namespace A163587

/-- `p?[A212455(n+1)]%A050217(n+1)` -/
def P2504329429240995524.Spec : Prop :=
  ∀ n, P2504329429240995524.a n = A163587 (n + 1)

end A163587

/-! ## A163587.P3385633439015518595

`∩[A124598(n+1), A212455(n+1)]`
-/

namespace A163587.P3385633439015518595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P3385633439015518595

namespace A163587

/-- `∩[A124598(n+1), A212455(n+1)]` -/
def P3385633439015518595.Spec : Prop :=
  ∀ n, (P3385633439015518595.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P10194755074532335627

`∩[A000040(n+1), A212455(n+1)]`
-/

namespace A163587.P10194755074532335627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P10194755074532335627

namespace A163587

/-- `∩[A000040(n+1), A212455(n+1)]` -/
def P10194755074532335627.Spec : Prop :=
  ∀ n, (P10194755074532335627.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P6229069417313423930

`∩[A045344(n+1), A212455(n+1)]`
-/

namespace A163587.P6229069417313423930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P6229069417313423930

namespace A163587

/-- `∩[A045344(n+1), A212455(n+1)]` -/
def P6229069417313423930.Spec : Prop :=
  ∀ n, (P6229069417313423930.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P887245749407634677

`∩[A051948(n+1), A212455(n+1)]`
-/

namespace A163587.P887245749407634677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P887245749407634677

namespace A163587

/-- `∩[A051948(n+1), A212455(n+1)]` -/
def P887245749407634677.Spec : Prop :=
  ∀ n, (P887245749407634677.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P4886647678721598629

`∩[A053813(n+1), A212455(n+1)]`
-/

namespace A163587.P4886647678721598629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P4886647678721598629

namespace A163587

/-- `∩[A053813(n+1), A212455(n+1)]` -/
def P4886647678721598629.Spec : Prop :=
  ∀ n, (P4886647678721598629.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P6941878876156982902

`∩[A065091(n+1), A212455(n+1)]`
-/

namespace A163587.P6941878876156982902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P6941878876156982902

namespace A163587

/-- `∩[A065091(n+1), A212455(n+1)]` -/
def P6941878876156982902.Spec : Prop :=
  ∀ n, (P6941878876156982902.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P5960923782967733209

`∩[A065396(n+1), A212455(n+1)]`
-/

namespace A163587.P5960923782967733209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P5960923782967733209

namespace A163587

/-- `∩[A065396(n+1), A212455(n+1)]` -/
def P5960923782967733209.Spec : Prop :=
  ∀ n, (P5960923782967733209.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P18438384580132540752

`∩[A106118(n+1), A212455(n+1)]`
-/

namespace A163587.P18438384580132540752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P18438384580132540752

namespace A163587

/-- `∩[A106118(n+1), A212455(n+1)]` -/
def P18438384580132540752.Spec : Prop :=
  ∀ n, (P18438384580132540752.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P15068084828530628522

`∩[A108719(n+1), A212455(n+1)]`
-/

namespace A163587.P15068084828530628522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P15068084828530628522

namespace A163587

/-- `∩[A108719(n+1), A212455(n+1)]` -/
def P15068084828530628522.Spec : Prop :=
  ∀ n, (P15068084828530628522.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P10301818678895802915

`∩[A116974(n+1), A212455(n+1)]`
-/

namespace A163587.P10301818678895802915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P10301818678895802915

namespace A163587

/-- `∩[A116974(n+1), A212455(n+1)]` -/
def P10301818678895802915.Spec : Prop :=
  ∀ n, (P10301818678895802915.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P5719768668157907579

`∩[A138837(n+1), A212455(n+1)]`
-/

namespace A163587.P5719768668157907579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P5719768668157907579

namespace A163587

/-- `∩[A138837(n+1), A212455(n+1)]` -/
def P5719768668157907579.Spec : Prop :=
  ∀ n, (P5719768668157907579.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P17694841230958538178

`∩[A140826(n+1), A212455(n+1)]`
-/

namespace A163587.P17694841230958538178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P17694841230958538178

namespace A163587

/-- `∩[A140826(n+1), A212455(n+1)]` -/
def P17694841230958538178.Spec : Prop :=
  ∀ n, (P17694841230958538178.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P2593517004542336542

`∩[A161346(n+1), A212455(n+1)]`
-/

namespace A163587.P2593517004542336542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P2593517004542336542

namespace A163587

/-- `∩[A161346(n+1), A212455(n+1)]` -/
def P2593517004542336542.Spec : Prop :=
  ∀ n, (P2593517004542336542.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P6794270293176239424

`∩[A161428(n+1), A212455(n+1)]`
-/

namespace A163587.P6794270293176239424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P6794270293176239424

namespace A163587

/-- `∩[A161428(n+1), A212455(n+1)]` -/
def P6794270293176239424.Spec : Prop :=
  ∀ n, (P6794270293176239424.a n : ℤ) = A163587 (n + 1)

end A163587

/-! ## A163587.P13282852016957242803

`∩[A175787(n+1), A212455(n+1)]`
-/

namespace A163587.P13282852016957242803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163587.P13282852016957242803

namespace A163587

/-- `∩[A175787(n+1), A212455(n+1)]` -/
def P13282852016957242803.Spec : Prop :=
  ∀ n, (P13282852016957242803.a n : ℤ) = A163587 (n + 1)

end A163587

/-!
# A163588: Primes which are within 1 of a square number.

The programs for A163588, the canonical program `A163588.P13679431484210221452` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163588 has offset 1).

The definition of A163588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163588.P17855690963215335856

`A002496(A028310(n))+char[1]`
-/

namespace A163588.P17855690963215335856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (A028310 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A163588.P17855690963215335856

namespace A163588

/-- `A002496(A028310(n))+char[1]` -/
def P17855690963215335856.Spec : Prop :=
  ∀ n, P17855690963215335856.a n = A163588 (n + 1)

end A163588

/-! ## A163588.P4010313170846020097

`∪[A002496(n+1), A062459(n+1)]`
-/

namespace A163588.P4010313170846020097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062459 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P4010313170846020097

namespace A163588

/-- `∪[A002496(n+1), A062459(n+1)]` -/
def P4010313170846020097.Spec : Prop :=
  ∀ n, (P4010313170846020097.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P455331707567328071

`∪[A062459(n+1), A121326(n+1)]`
-/

namespace A163588.P455331707567328071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062459 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P455331707567328071

namespace A163588

/-- `∪[A062459(n+1), A121326(n+1)]` -/
def P455331707567328071.Spec : Prop :=
  ∀ n, (P455331707567328071.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P15321832326688929671

`∪[A002496(n+1), A258455(n+1)]`
-/

namespace A163588.P15321832326688929671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P15321832326688929671

namespace A163588

/-- `∪[A002496(n+1), A258455(n+1)]` -/
def P15321832326688929671.Spec : Prop :=
  ∀ n, (P15321832326688929671.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P12120383819859661278

`∪[A002496(n+1), A272061(n+1)]`
-/

namespace A163588.P12120383819859661278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272061 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P12120383819859661278

namespace A163588

/-- `∪[A002496(n+1), A272061(n+1)]` -/
def P12120383819859661278.Spec : Prop :=
  ∀ n, (P12120383819859661278.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P2765468370718499455

`∪[A121326(n+1), A258455(n+1)]`
-/

namespace A163588.P2765468370718499455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P2765468370718499455

namespace A163588

/-- `∪[A121326(n+1), A258455(n+1)]` -/
def P2765468370718499455.Spec : Prop :=
  ∀ n, (P2765468370718499455.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P13679431484210221452

`or(A000035(n), A002496(A028310(n)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A163588

/-- `or(A000035(n), A002496(A028310(n)))` -/
def P13679431484210221452.Spec : Prop :=
  ∀ n, P13679431484210221452.a n = A163588 (n + 1)

theorem P13679431484210221452.correct : P13679431484210221452.Spec := by
  intro n
  simp only [A163588, Nat.add_sub_cancel]

end A163588

/-! ## A163588.P4746287174176053733

`∩[A227829(n+1), A249410(n+1)]`
-/

namespace A163588.P4746287174176053733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P4746287174176053733

namespace A163588

/-- `∩[A227829(n+1), A249410(n+1)]` -/
def P4746287174176053733.Spec : Prop :=
  ∀ n, (P4746287174176053733.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P2379325672482540816

`record[A002496(A003602(n+1))+A000035(n)]`
-/

namespace A163588.P2379325672482540816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (A003602 (n + 1)).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163588.P2379325672482540816

namespace A163588

/-- `record[A002496(A003602(n+1))+A000035(n)]` -/
def P2379325672482540816.Spec : Prop :=
  ∀ n, P2379325672482540816.a n = A163588 (n + 1)

end A163588

/-! ## A163588.P13876739553350617540

`record[A025426(n)+A002496(A117358(n+1))]`
-/

namespace A163588.P13876739553350617540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025426 n + A002496 (A117358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163588.P13876739553350617540

namespace A163588

/-- `record[A025426(n)+A002496(A117358(n+1))]` -/
def P13876739553350617540.Spec : Prop :=
  ∀ n, P13876739553350617540.a n = A163588 (n + 1)

end A163588

/-! ## A163588.P6177642893513346122

`record[A025441(n)+A002496(A117358(n+1))]`
-/

namespace A163588.P6177642893513346122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025441 n + A002496 (A117358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163588.P6177642893513346122

namespace A163588

/-- `record[A025441(n)+A002496(A117358(n+1))]` -/
def P6177642893513346122.Spec : Prop :=
  ∀ n, P6177642893513346122.a n = A163588 (n + 1)

end A163588

/-! ## A163588.P1685855064527086460

`record[A002496(A003963(n+1))+A000035(n)]`
-/

namespace A163588.P1685855064527086460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (A003963 (n + 1)).toNat + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163588.P1685855064527086460

namespace A163588

/-- `record[A002496(A003963(n+1))+A000035(n)]` -/
def P1685855064527086460.Spec : Prop :=
  ∀ n, P1685855064527086460.a n = A163588 (n + 1)

end A163588

/-! ## A163588.P505509609403935039

`record[A282849(n+1)+A168024(A249122(n+1))]`
-/

namespace A163588.P505509609403935039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282849 (n + 1) + A168024 (A249122 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163588.P505509609403935039

namespace A163588

/-- `record[A282849(n+1)+A168024(A249122(n+1))]` -/
def P505509609403935039.Spec : Prop :=
  ∀ n, P505509609403935039.a n = A163588 (n + 1)

end A163588

/-! ## A163588.P11767530917299693556

`record[A168024(A249122(n+1))+A082519(n+2)]`
-/

namespace A163588.P11767530917299693556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168024 (A249122 (n + 1)).toNat + A082519 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163588.P11767530917299693556

namespace A163588

/-- `record[A168024(A249122(n+1))+A082519(n+2)]` -/
def P11767530917299693556.Spec : Prop :=
  ∀ n, P11767530917299693556.a n = A163588 (n + 1)

end A163588

/-! ## A163588.P11653088523651118291

`∩[A249410(n+1), A277625(n+1)]`
-/

namespace A163588.P11653088523651118291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277625 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P11653088523651118291

namespace A163588

/-- `∩[A249410(n+1), A277625(n+1)]` -/
def P11653088523651118291.Spec : Prop :=
  ∀ n, (P11653088523651118291.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P5585350335857768868

`∪[A002496(n+1), A270539(n+1)]`
-/

namespace A163588.P5585350335857768868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P5585350335857768868

namespace A163588

/-- `∪[A002496(n+1), A270539(n+1)]` -/
def P5585350335857768868.Spec : Prop :=
  ∀ n, (P5585350335857768868.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P10587831196297505301

`∪[A121326(n+1), A270539(n+1)]`
-/

namespace A163588.P10587831196297505301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P10587831196297505301

namespace A163588

/-- `∪[A121326(n+1), A270539(n+1)]` -/
def P10587831196297505301.Spec : Prop :=
  ∀ n, (P10587831196297505301.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P7659446556845923248

`∩[A087279(n+1), A172979(n+1)]`
-/

namespace A163588.P7659446556845923248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172979 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P7659446556845923248

namespace A163588

/-- `∩[A087279(n+1), A172979(n+1)]` -/
def P7659446556845923248.Spec : Prop :=
  ∀ n, (P7659446556845923248.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P17080709199942412526

`∩[A087279(n+1), A227829(n+1)]`
-/

namespace A163588.P17080709199942412526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P17080709199942412526

namespace A163588

/-- `∩[A087279(n+1), A227829(n+1)]` -/
def P17080709199942412526.Spec : Prop :=
  ∀ n, (P17080709199942412526.a n : ℤ) = A163588 (n + 1)

end A163588

/-! ## A163588.P17601281295491614391

`∩[A087279(n+1), A249410(n+1)]`
-/

namespace A163588.P17601281295491614391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249410 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163588.P17601281295491614391

namespace A163588

/-- `∩[A087279(n+1), A249410(n+1)]` -/
def P17601281295491614391.Spec : Prop :=
  ∀ n, (P17601281295491614391.a n : ℤ) = A163588 (n + 1)

end A163588

/-!
# A163589: Primes in the chain of repeated application of x->2*x+3, starting at x=1427.

The programs for A163589, there is no canonical definition to state claims against.
-/

/-! ## A163589.P9123708184845377715

`p?[A277825(A277806(n+1))-3]`
-/

namespace A163589.P9123708184845377715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277825 (A277806 (n + 1)).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163589.P9123708184845377715

/-!
# A163590: Odd part of the swinging factorial A056040.

The programs for A163590, the canonical program `A163590.P14451503244441134678` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163590 has offset 0).

The definition of A163590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163590.P14451503244441134678

`a(n-1)*n^(-1)^(n+1)*2^val(n, 2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A163590

/-- `a(n-1)*n^(-1)^(n+1)*2^val(n, 2)` -/
def P14451503244441134678.Spec : Prop :=
  ∀ n, P14451503244441134678.a n = (A163590 n : ℚ)

end A163590

/-! ## A163590.P11968012285681249478

`A056040(n)/A060632(n)`
-/

namespace A163590.P11968012285681249478
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A060632 n : ℚ)

end

end A163590.P11968012285681249478

namespace A163590

/-- `A056040(n)/A060632(n)` -/
def P11968012285681249478.Spec : Prop :=
  ∀ n, P11968012285681249478.a n = (A163590 n : ℚ)

end A163590

/-! ## A163590.P5562771861785089408

`gcd(A056040(n), A086116(n+1))`
-/

namespace A163590.P5562771861785089408
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056040 n) (A086116 (n + 1))

end

end A163590.P5562771861785089408

namespace A163590

/-- `gcd(A056040(n), A086116(n+1))` -/
def P5562771861785089408.Spec : Prop :=
  ∀ n, (P5562771861785089408.a n : ℤ) = A163590 n

end A163590

/-! ## A163590.P1178203149356189072

`A056040(n)/A000079(val(A056040(n), 2))`
-/

namespace A163590.P1178203149356189072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n : ℚ) / (A000079 (SequenceMachineLib.valuation (A056040 n).toNat 2) : ℚ)

end

end A163590.P1178203149356189072

namespace A163590

/-- `A056040(n)/A000079(val(A056040(n), 2))` -/
def P1178203149356189072.Spec : Prop :=
  ∀ n, P1178203149356189072.a n = (A163590 n : ℚ)

end A163590

/-! ## A163590.P2541982750713116298

`lcm(A001316(n), A056040(n))/A001316(n)`
-/

namespace A163590.P2541982750713116298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001316 n) (A056040 n) : ℚ) / (A001316 n : ℚ)

end

end A163590.P2541982750713116298

namespace A163590

/-- `lcm(A001316(n), A056040(n))/A001316(n)` -/
def P2541982750713116298.Spec : Prop :=
  ∀ n, P2541982750713116298.a n = (A163590 n : ℚ)

end A163590

/-! ## A163590.P16645704901627158044

`A001902(n-1)/a(n-1)` with `a(0)=1`
-/

namespace A163590.P16645704901627158044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A001902 (n - 1) : ℚ) / a (n - 1)

end

end A163590.P16645704901627158044

namespace A163590

/-- `A001902(n-1)/a(n-1)` -/
def P16645704901627158044.Spec : Prop :=
  ∀ n, P16645704901627158044.a n = (A163590 n : ℚ)

end A163590

/-! ## A163590.P790840980200849752

`gcd(A001902(n), A056040(n))`
-/

namespace A163590.P790840980200849752
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001902 n) (A056040 n)

end

end A163590.P790840980200849752

namespace A163590

/-- `gcd(A001902(n), A056040(n))` -/
def P790840980200849752.Spec : Prop :=
  ∀ n, (P790840980200849752.a n : ℤ) = A163590 n

end A163590

/-! ## A163590.P8149512914351631723

`gcd(A086116(n+1)+A181860(n)², A181860(n))`
-/

namespace A163590.P8149512914351631723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A086116 (n + 1) + A181860 n ^ 2) (A181860 n)

end

end A163590.P8149512914351631723

namespace A163590

/-- `gcd(A086116(n+1)+A181860(n)², A181860(n))` -/
def P8149512914351631723.Spec : Prop :=
  ∀ n, (P8149512914351631723.a n : ℤ) = A163590 n

end A163590

/-! ## A163590.P4733112520527512997

`gcd(A055634(n), A275324(n))`
-/

namespace A163590.P4733112520527512997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055634 n) (A275324 n)

end

end A163590.P4733112520527512997

namespace A163590

/-- `gcd(A055634(n), A275324(n))` -/
def P4733112520527512997.Spec : Prop :=
  ∀ n, (P4733112520527512997.a n : ℤ) = A163590 n

end A163590

/-! ## A163590.P3798671831974405793

`lcm(A037223(n), A055634(n))/A037223(n)`
-/

namespace A163590.P3798671831974405793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A037223 n) (A055634 n) : ℚ) / (A037223 n : ℚ)

end

end A163590.P3798671831974405793

namespace A163590

/-- `lcm(A037223(n), A055634(n))/A037223(n)` -/
def P3798671831974405793.Spec : Prop :=
  ∀ n, P3798671831974405793.a n = (A163590 n : ℚ)

end A163590

/-!
# A163594: a(n+1) equals the coefficient of x^n in the 2^(n-1)-th iteration of g.f. A(x) = Sum_{m>=1} a(m)*x^m for n>=1 with a(1)=1.

The programs for A163594, there is no canonical definition to state claims against.
-/

/-! ## A163594.P1208196802691687409

`lcm(4, A036787(a(n-1)+3))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A163594.P1208196802691687409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  Int.lcm 4 (A036787 (a (n - 1) + 3))

end

end A163594.P1208196802691687409

/-!
# A163595: Numbers k such that prime(k) == 5 (mod 9).

The programs for A163595, the canonical program `A163595.P15993234825003165298` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163595 has offset 1).

The definition of A163595 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061240, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163595.P15993234825003165298

`A000720(A061240(n+1))`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A163595

/-- `A000720(A061240(n+1))` -/
def P15993234825003165298.Spec : Prop :=
  ∀ n, P15993234825003165298.a n = A163595 (n + 1)

theorem P15993234825003165298.correct : P15993234825003165298.Spec := by
  intro n
  simp only [A163595, Nat.add_sub_cancel]

end A163595

/-! ## A163595.P17221586777089702923

`eq[6, dr(A028815(n))]`
-/

namespace A163595.P17221586777089702923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A028815 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163595.P17221586777089702923

namespace A163595

/-- `eq[6, dr(A028815(n))]` -/
def P17221586777089702923.Spec : Prop :=
  ∀ n, (P17221586777089702923.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P13591551422278006528

`eq[5, A038194(n+1)]+1`
-/

namespace A163595.P13591551422278006528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038194 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A163595.P13591551422278006528

namespace A163595

/-- `eq[5, A038194(n+1)]+1` -/
def P13591551422278006528.Spec : Prop :=
  ∀ n, (P13591551422278006528.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P17883454558019506757

`eq[5, dr(A000040(n+1))]+1`
-/

namespace A163595.P17883454558019506757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000040 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A163595.P17883454558019506757

namespace A163595

/-- `eq[5, dr(A000040(n+1))]+1` -/
def P17883454558019506757.Spec : Prop :=
  ∀ n, (P17883454558019506757.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P10307740945186188800

`eq[5, A242119(A028310(n))]`
-/

namespace A163595.P10307740945186188800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242119 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163595.P10307740945186188800

namespace A163595

/-- `eq[5, A242119(A028310(n))]` -/
def P10307740945186188800.Spec : Prop :=
  ∀ n, (P10307740945186188800.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P1940280353576472271

`lt[A251984(A242119(n+1)+3), 3]+1`
-/

namespace A163595.P1940280353576472271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251984 (A242119 (n + 1) + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A163595.P1940280353576472271

namespace A163595

/-- `lt[A251984(A242119(n+1)+3), 3]+1` -/
def P1940280353576472271.Spec : Prop :=
  ∀ n, (P1940280353576472271.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P10810444519134545173

`eq[1, dr(A074845(n+1))]`
-/

namespace A163595.P10810444519134545173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A074845 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163595.P10810444519134545173

namespace A163595

/-- `eq[1, dr(A074845(n+1))]` -/
def P10810444519134545173.Spec : Prop :=
  ∀ n, (P10810444519134545173.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P17358740208350958576

`eq[1, dr(A161344(n+1))]`
-/

namespace A163595.P17358740208350958576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A161344 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163595.P17358740208350958576

namespace A163595

/-- `eq[1, dr(A161344(n+1))]` -/
def P17358740208350958576.Spec : Prop :=
  ∀ n, (P17358740208350958576.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P2395641048523791798

`eq[4, dr(A068499(n+1))]`
-/

namespace A163595.P2395641048523791798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A068499 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163595.P2395641048523791798

namespace A163595

/-- `eq[4, dr(A068499(n+1))]` -/
def P2395641048523791798.Spec : Prop :=
  ∀ n, (P2395641048523791798.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P15117054072840683976

`eq[5, dr(A008578(n+1))]`
-/

namespace A163595.P15117054072840683976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A008578 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163595.P15117054072840683976

namespace A163595

/-- `eq[5, dr(A008578(n+1))]` -/
def P15117054072840683976.Spec : Prop :=
  ∀ n, (P15117054072840683976.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P5956556748362288947

`eq[9, dr(A076274(n+1))]`
-/

namespace A163595.P5956556748362288947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A076274 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163595.P5956556748362288947

namespace A163595

/-- `eq[9, dr(A076274(n+1))]` -/
def P5956556748362288947.Spec : Prop :=
  ∀ n, (P5956556748362288947.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P5781022233982605382

`eq[1, dr(2*A175787(n+1))]`
-/

namespace A163595.P5781022233982605382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (2 * A175787 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163595.P5781022233982605382

namespace A163595

/-- `eq[1, dr(2*A175787(n+1))]` -/
def P5781022233982605382.Spec : Prop :=
  ∀ n, (P5781022233982605382.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P7973486505830094642

`A000720(p?[9*n-4])`
-/

namespace A163595.P7973486505830094642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * n : ℤ) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163595.P7973486505830094642

namespace A163595

/-- `A000720(p?[9*n-4])` -/
def P7973486505830094642.Spec : Prop :=
  ∀ n, P7973486505830094642.a n = A163595 (n + 1)

theorem P7973486505830094642.correct : P7973486505830094642.Spec := by
  intro n
  simp only [A163595, Nat.add_sub_cancel, A163595.P7973486505830094642.f1, A163595.P7973486505830094642.a, A163595.P15993234825003165298.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A061240, A061240.P124253332193619625.f1, A061240.P124253332193619625.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163595

/-! ## A163595.P7309216689593560739

`record[A061395(A017197(2*n)+2)]`
-/

namespace A163595.P7309216689593560739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A017197 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163595.P7309216689593560739

namespace A163595

/-- `record[A061395(A017197(2*n)+2)]` -/
def P7309216689593560739.Spec : Prop :=
  ∀ n, P7309216689593560739.a n = A163595 (n + 1)

end A163595

/-! ## A163595.P16611108440489452300

`A055396(p?[A017221(n)])`
-/

namespace A163595.P16611108440489452300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163595.P16611108440489452300

namespace A163595

/-- `A055396(p?[A017221(n)])` -/
def P16611108440489452300.Spec : Prop :=
  ∀ n, P16611108440489452300.a n = A163595 (n + 1)

end A163595

/-! ## A163595.P14977545682090852885

`eq[1, A010878(2*A008578(n+1))]`
-/

namespace A163595.P14977545682090852885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (2 * A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163595.P14977545682090852885

namespace A163595

/-- `eq[1, A010878(2*A008578(n+1))]` -/
def P14977545682090852885.Spec : Prop :=
  ∀ n, (P14977545682090852885.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P9994748580060890388

`eq[1, A010888(2*A008578(n+1))]`
-/

namespace A163595.P9994748580060890388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (2 * A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163595.P9994748580060890388

namespace A163595

/-- `eq[1, A010888(2*A008578(n+1))]` -/
def P9994748580060890388.Spec : Prop :=
  ∀ n, (P9994748580060890388.a n : ℤ) = A163595 (n + 1)

end A163595

/-! ## A163595.P17691429872235088745

`eq[2, A177274(2*A008578(n+1))]`
-/

namespace A163595.P17691429872235088745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177274 (2 * A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A163595.P17691429872235088745

namespace A163595

/-- `eq[2, A177274(2*A008578(n+1))]` -/
def P17691429872235088745.Spec : Prop :=
  ∀ n, (P17691429872235088745.a n : ℤ) = A163595 (n + 1)

end A163595

/-!
# A163598: The smallest triangular number that contains the digits of n in its exact middle.

The programs for A163598, there is no canonical definition to state claims against.
-/

/-! ## A163598.P8067536626424658988

`A062690(n+1)`
-/

namespace A163598.P8067536626424658988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 (n + 1)

end

end A163598.P8067536626424658988

/-! ## A163598.P9558211977872888787

`∑[-Δ[-A062690(n)]]`
-/

namespace A163598.P9558211977872888787
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A062690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163598.P9558211977872888787

/-! ## A163598.P13677561540144859768

`Δ[∑[A062690(n)]*A057427(n)]`
-/

namespace A163598.P13677561540144859768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163598.P13677561540144859768

/-! ## A163598.P16581659149477059926

`Δ[∑[A062690(n)]%A014769(n)]`
-/

namespace A163598.P16581659149477059926
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062690 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A014769 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163598.P16581659149477059926

/-! ## A163598.P18118470763147935556

`A062690(A008619(2*n))%A062694(n)`
-/

namespace A163598.P18118470763147935556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062690 (A008619 (2 * n)).toNat) (A062694 n)

end

end A163598.P18118470763147935556

