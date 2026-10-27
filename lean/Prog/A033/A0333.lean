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
import Seq.B000.C012
import Seq.B000.C014
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
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B009.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A033300: Smallest safe prime ((p-1)/2 is also prime) > n-th prime.

The programs for A033300, the canonical program `A033300.P5482203830554641710` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033300 has offset 0).

The definition of A033300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033300.P5482203830554641710

`A033299(A000040(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A033300

/-- `A033299(A000040(n+1))` -/
def P5482203830554641710.Spec : Prop :=
  ∀ n, P5482203830554641710.a n = A033300 n

theorem P5482203830554641710.correct : P5482203830554641710.Spec := by
  intro n
  simp only [A033300]

end A033300

/-! ## A033300.P11166971382842377006

`A033299(A006005(n+1))`
-/

namespace A033300.P11166971382842377006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A006005 (n + 1)).toNat

end

end A033300.P11166971382842377006

namespace A033300

/-- `A033299(A006005(n+1))` -/
def P11166971382842377006.Spec : Prop :=
  ∀ n, P11166971382842377006.a n = A033300 n

end A033300

/-! ## A033300.P15125700350391024618

`A033299(A008864(n+1))`
-/

namespace A033300.P15125700350391024618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A008864 (n + 1)).toNat

end

end A033300.P15125700350391024618

namespace A033300

/-- `A033299(A008864(n+1))` -/
def P15125700350391024618.Spec : Prop :=
  ∀ n, P15125700350391024618.a n = A033300 n

end A033300

/-! ## A033300.P9751970608137114806

`A033299(A028815(n+1))`
-/

namespace A033300.P9751970608137114806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A028815 (n + 1)).toNat

end

end A033300.P9751970608137114806

namespace A033300

/-- `A033299(A028815(n+1))` -/
def P9751970608137114806.Spec : Prop :=
  ∀ n, P9751970608137114806.a n = A033300 n

end A033300

/-! ## A033300.P12479454049663973666

`A033299(A055670(n+1))`
-/

namespace A033300.P12479454049663973666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A055670 (n + 1)).toNat

end

end A033300.P12479454049663973666

namespace A033300

/-- `A033299(A055670(n+1))` -/
def P12479454049663973666.Spec : Prop :=
  ∀ n, P12479454049663973666.a n = A033300 n

end A033300

/-! ## A033300.P12130807997375889846

`A033299(A078444(n+1))`
-/

namespace A033300.P12130807997375889846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A078444 (n + 1)).toNat

end

end A033300.P12130807997375889846

namespace A033300

/-- `A033299(A078444(n+1))` -/
def P12130807997375889846.Spec : Prop :=
  ∀ n, P12130807997375889846.a n = A033300 n

end A033300

/-! ## A033300.P8261746192572891326

`A033299(A098393(n+1))`
-/

namespace A033300.P8261746192572891326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A098393 (n + 1)).toNat

end

end A033300.P8261746192572891326

namespace A033300

/-- `A033299(A098393(n+1))` -/
def P8261746192572891326.Spec : Prop :=
  ∀ n, P8261746192572891326.a n = A033300 n

end A033300

/-! ## A033300.P12267450642838208645

`A033299(A162735(n+1))`
-/

namespace A033300.P12267450642838208645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A162735 (n + 1)).toNat

end

end A033300.P12267450642838208645

namespace A033300

/-- `A033299(A162735(n+1))` -/
def P12267450642838208645.Spec : Prop :=
  ∀ n, P12267450642838208645.a n = A033300 n

end A033300

/-! ## A033300.P16473306988081821746

`A033299(A162800(n+1))`
-/

namespace A033300.P16473306988081821746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A162800 (n + 1)).toNat

end

end A033300.P16473306988081821746

namespace A033300

/-- `A033299(A162800(n+1))` -/
def P16473306988081821746.Spec : Prop :=
  ∀ n, P16473306988081821746.a n = A033300 n

end A033300

/-! ## A033300.P11985636425213746687

`A033299(A175216(n+1))`
-/

namespace A033300.P11985636425213746687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A175216 (n + 1)).toNat

end

end A033300.P11985636425213746687

namespace A033300

/-- `A033299(A175216(n+1))` -/
def P11985636425213746687.Spec : Prop :=
  ∀ n, P11985636425213746687.a n = A033300 n

end A033300

/-! ## A033300.P17155021609892487700

`A033299(A008578(n+2))`
-/

namespace A033300.P17155021609892487700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A008578 (n + 2)).toNat

end

end A033300.P17155021609892487700

namespace A033300

/-- `A033299(A008578(n+2))` -/
def P17155021609892487700.Spec : Prop :=
  ∀ n, P17155021609892487700.a n = A033300 n

end A033300

/-! ## A033300.P16019461667925622793

`A033299(record[A006530(n+2)])`
-/

namespace A033300.P16019461667925622793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033300.P16019461667925622793

namespace A033300

/-- `A033299(record[A006530(n+2)])` -/
def P16019461667925622793.Spec : Prop :=
  ∀ n, P16019461667925622793.a n = A033300 n

end A033300

/-! ## A033300.P15981850184383580828

`A033299(record[A014963(n+2)])`
-/

namespace A033300.P15981850184383580828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033300.P15981850184383580828

namespace A033300

/-- `A033299(record[A014963(n+2)])` -/
def P15981850184383580828.Spec : Prop :=
  ∀ n, P15981850184383580828.a n = A033300 n

end A033300

/-! ## A033300.P5124523713559755223

`A033299(record[A020639(n+2)])`
-/

namespace A033300.P5124523713559755223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033300.P5124523713559755223

namespace A033300

/-- `A033299(record[A020639(n+2)])` -/
def P5124523713559755223.Spec : Prop :=
  ∀ n, P5124523713559755223.a n = A033300 n

end A033300

/-! ## A033300.P5394893882724348738

`A033299(A006093(n+1)+1)`
-/

namespace A033300.P5394893882724348738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A006093 (n + 1) + 1).toNat

end

end A033300.P5394893882724348738

namespace A033300

/-- `A033299(A006093(n+1)+1)` -/
def P5394893882724348738.Spec : Prop :=
  ∀ n, P5394893882724348738.a n = A033300 n

theorem P5394893882724348738.correct : P5394893882724348738.Spec := by
  intro n
  simp only [A033300, Nat.add_sub_cancel, A033300.P5394893882724348738.a, A033300.P5482203830554641710.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A033299, A033299.P7037079004765382286.a, A005385, A005385.P12850744102754472242.a, A156875, A156875.P9874642270312529186.f1, A156875.P9874642270312529186.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A156659, A156659.P9694102179594452160.a, A057979, A057979.P16537735927241777837.a, A156660, A156660.P13297999666719804209.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033300

/-! ## A033300.P17905533670880626988

`A033299(A039915(n+1)+1)`
-/

namespace A033300.P17905533670880626988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A039915 (n + 1) + 1).toNat

end

end A033300.P17905533670880626988

namespace A033300

/-- `A033299(A039915(n+1)+1)` -/
def P17905533670880626988.Spec : Prop :=
  ∀ n, P17905533670880626988.a n = A033300 n

end A033300

/-! ## A033300.P4602122203544843334

`A033299(A040976(n+1)+2)`
-/

namespace A033300.P4602122203544843334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A040976 (n + 1) + 2).toNat

end

end A033300.P4602122203544843334

namespace A033300

/-- `A033299(A040976(n+1)+2)` -/
def P4602122203544843334.Spec : Prop :=
  ∀ n, P4602122203544843334.a n = A033300 n

theorem P4602122203544843334.correct : P4602122203544843334.Spec := by
  intro n
  simp only [A033300, Nat.add_sub_cancel, A033300.P4602122203544843334.a, A033300.P5482203830554641710.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033299, A033299.P7037079004765382286.a, A040976, A040976.P11599754272797435513.a, A005385, A005385.P12850744102754472242.a, A156875, A156875.P9874642270312529186.f1, A156875.P9874642270312529186.a, A005384, A005384.P4537023799186511760.f1, A005384.P4537023799186511760.a, A156659, A156659.P9694102179594452160.a, A057979, A057979.P16537735927241777837.a, A156660, A156660.P13297999666719804209.a, A348511, A348511.P16032306020572469586.f1, A348511.P16032306020572469586.f2, A348511.P16032306020572469586.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033300

/-! ## A033300.P10151627692159338983

`A033299(record[A000010(n+1)+1])`
-/

namespace A033300.P10151627692159338983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033300.P10151627692159338983

namespace A033300

/-- `A033299(record[A000010(n+1)+1])` -/
def P10151627692159338983.Spec : Prop :=
  ∀ n, P10151627692159338983.a n = A033300 n

end A033300

/-! ## A033300.P2912704767906036706

`A033299(A157049(n+1))`
-/

namespace A033300.P2912704767906036706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A157049 (n + 1)).toNat

end

end A033300.P2912704767906036706

namespace A033300

/-- `A033299(A157049(n+1))` -/
def P2912704767906036706.Spec : Prop :=
  ∀ n, P2912704767906036706.a n = A033300 n

end A033300

/-! ## A033300.P8728219003015911922

`A033299(A165972(n+1))`
-/

namespace A033300.P8728219003015911922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033299 (A165972 (n + 1)).toNat

end

end A033300.P8728219003015911922

namespace A033300

/-- `A033299(A165972(n+1))` -/
def P8728219003015911922.Spec : Prop :=
  ∀ n, P8728219003015911922.a n = A033300 n

end A033300

/-!
# A033301: Number of 4-valent (or quartic) graphs with n nodes.

The programs for A033301, there is no canonical definition to state claims against.
-/

/-! ## A033301.P10093454366983992484

`A033483(n)+A006820(n)`
-/

namespace A033301.P10093454366983992484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033483 n + A006820 n

end

end A033301.P10093454366983992484

/-! ## A033301.P7148706136001720322

`A006820(n)+A185044(n)+A185043(n)`
-/

namespace A033301.P7148706136001720322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006820 n + (A185044 n + A185043 n)

end

end A033301.P7148706136001720322

/-! ## A033301.P4176659469184925574

`A006820(n)-(A185245(n)-A033483(n))`
-/

namespace A033301.P4176659469184925574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006820 n - (A185245 n - A033483 n)

end

end A033301.P4176659469184925574

/-! ## A033301.P8508212146872348372

`A006820(n)-(A185246(n)-A033483(n))`
-/

namespace A033301.P8508212146872348372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006820 n - (A185246 n - A033483 n)

end

end A033301.P8508212146872348372

/-! ## A033301.P9545379660814921816

`A068934(A077169(n))+A033483(n)`
-/

namespace A033301.P9545379660814921816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (A077169 n).toNat + A033483 n

end

end A033301.P9545379660814921816

/-!
# A033302: Largest prime < largest prime < n.

The programs for A033302, the canonical program `A033302.P11811242346175586438` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033302 has offset 4).

The definition of A033302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033302.P14489648516643315527

`A008578(A000720(n+3))`
-/

namespace A033302.P14489648516643315527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A000720 (n + 3)).toNat

end

end A033302.P14489648516643315527

namespace A033302

/-- `A008578(A000720(n+3))` -/
def P14489648516643315527.Spec : Prop :=
  ∀ n, P14489648516643315527.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P11811242346175586438

`A000040(∑[A010051(n+3)])`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033302

/-- `A000040(∑[A010051(n+3)])` -/
def P11811242346175586438.Spec : Prop :=
  ∀ n, P11811242346175586438.a n = A033302 (n + 4)

theorem P11811242346175586438.correct : P11811242346175586438.Spec := by
  intro n
  simp only [A033302, Nat.add_sub_cancel]

end A033302

/-! ## A033302.P5983914908271120831

`A158611(A000720(n+3)+1)`
-/

namespace A033302.P5983914908271120831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A000720 (n + 3) + 1).toNat

end

end A033302.P5983914908271120831

namespace A033302

/-- `A158611(A000720(n+3)+1)` -/
def P5983914908271120831.Spec : Prop :=
  ∀ n, P5983914908271120831.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P3928760022056104186

`A000040(A000720(n+3)-1)`
-/

namespace A033302.P3928760022056104186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (n + 3) - 1).toNat

end

end A033302.P3928760022056104186

namespace A033302

/-- `A000040(A000720(n+3)-1)` -/
def P3928760022056104186.Spec : Prop :=
  ∀ n, P3928760022056104186.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P8542081769522314970

`A000040(∑[char[A086801(n+1)]])`
-/

namespace A033302.P8542081769522314970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033302.P8542081769522314970

namespace A033302

/-- `A000040(∑[char[A086801(n+1)]])` -/
def P8542081769522314970.Spec : Prop :=
  ∀ n, P8542081769522314970.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P1887502495859136359

`A008578(A099801(∑[char[2*n]]))`
-/

namespace A033302.P1887502495859136359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A099801 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A033302.P1887502495859136359

namespace A033302

/-- `A008578(A099801(∑[char[2*n]]))` -/
def P1887502495859136359.Spec : Prop :=
  ∀ n, P1887502495859136359.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P11696093106589785887

`A000040(∑[C(2, A000005(n+3))])`
-/

namespace A033302.P11696093106589785887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033302.P11696093106589785887

namespace A033302

/-- `A000040(∑[C(2, A000005(n+3))])` -/
def P11696093106589785887.Spec : Prop :=
  ∀ n, P11696093106589785887.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P2235386712429938671

`A000040(∑[Δ[A000720(n+2)]²])`
-/

namespace A033302.P2235386712429938671
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033302.P2235386712429938671

namespace A033302

/-- `A000040(∑[Δ[A000720(n+2)]²])` -/
def P2235386712429938671.Spec : Prop :=
  ∀ n, P2235386712429938671.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P13405722798398597968

`A000040(∑[round(acot(A001222(n+3)))])`
-/

namespace A033302.P13405722798398597968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A001222 (n + 3) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033302.P13405722798398597968

namespace A033302

/-- `A000040(∑[round(acot(A001222(n+3)))])` -/
def P13405722798398597968.Spec : Prop :=
  ∀ n, P13405722798398597968.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P9992990482093060834

`A000040(∑[char[A000040(n+1)-3]])`
-/

namespace A033302.P9992990482093060834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033302.P9992990482093060834

namespace A033302

/-- `A000040(∑[char[A000040(n+1)-3]])` -/
def P9992990482093060834.Spec : Prop :=
  ∀ n, P9992990482093060834.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P6672463163282426561

`A008864(∑[C(2, A000005(n+3))])-1`
-/

namespace A033302.P6672463163282426561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A033302.P6672463163282426561

namespace A033302

/-- `A008864(∑[C(2, A000005(n+3))])-1` -/
def P6672463163282426561.Spec : Prop :=
  ∀ n, P6672463163282426561.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P13446845351159776874

`A001750(∑[C(2, A000005(n+3))])/5`
-/

namespace A033302.P13446845351159776874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 3)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001750 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 5

end

end A033302.P13446845351159776874

namespace A033302

/-- `A001750(∑[C(2, A000005(n+3))])/5` -/
def P13446845351159776874.Spec : Prop :=
  ∀ n, P13446845351159776874.a n = (A033302 (n + 4) : ℚ)

end A033302

/-! ## A033302.P15052356561696857261

`A000040(∑[val(n+2, A000010(n+3))])`
-/

namespace A033302.P15052356561696857261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 2) (A000010 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033302.P15052356561696857261

namespace A033302

/-- `A000040(∑[val(n+2, A000010(n+3))])` -/
def P15052356561696857261.Spec : Prop :=
  ∀ n, P15052356561696857261.a n = A033302 (n + 4)

end A033302

/-! ## A033302.P9856952410504227288

`A000040(∑[val(A006530(n+3), n+3)])`
-/

namespace A033302.P9856952410504227288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (n + 3)).toNat (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033302.P9856952410504227288

namespace A033302

/-- `A000040(∑[val(A006530(n+3), n+3)])` -/
def P9856952410504227288.Spec : Prop :=
  ∀ n, P9856952410504227288.a n = A033302 (n + 4)

end A033302

/-!
# A033303: Expansion of (1 + x)/(1 - 2*x - x^2 + x^3).

The programs for A033303, the canonical program `A033303.P11075330293987578888` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033303 has offset 0).

The definition of A033303 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-2x-x^2+x^3))` (program `A033303.P11075330293987578888`, by `A033303.P11075330293987578888.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033303.P11075330293987578888

`ogf((1+x)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033303

/-- `ogf((1+x)/(1-2x-x^2+x^3))` -/
def P11075330293987578888.Spec : Prop :=
  ∀ n, P11075330293987578888.a n = A033303 n

theorem P11075330293987578888.correct : P11075330293987578888.Spec := by
  intro n
  simp only [A033303]

end A033303

/-! ## A033303.P6898782780112277835

`2*a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`
-/

namespace A033303.P6898782780112277835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7] fun n a =>
  2 * a (n - 1) + a (n - 2) - a (n - 3)

end

end A033303.P6898782780112277835

namespace A033303

/-- `2*a(n-1)+a(n-2)-a(n-3)` -/
def P6898782780112277835.Spec : Prop :=
  ∀ n, P6898782780112277835.a n = A033303 n

end A033303

/-! ## A033303.P635233731378377074

`A006054(n+1)+A006054(n+2)`
-/

namespace A033303.P635233731378377074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1) + A006054 (n + 2)

end

end A033303.P635233731378377074

namespace A033303

/-- `A006054(n+1)+A006054(n+2)` -/
def P635233731378377074.Spec : Prop :=
  ∀ n, P635233731378377074.a n = A033303 n

end A033303

/-! ## A033303.P15941023412399576443

`abs(A078056(n))`
-/

namespace A033303.P15941023412399576443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078056 n|

end

end A033303.P15941023412399576443

namespace A033303

/-- `abs(A078056(n))` -/
def P15941023412399576443.Spec : Prop :=
  ∀ n, P15941023412399576443.a n = A033303 n

end A033303

/-! ## A033303.P1366003215599325348

`∑[A052534(n)]`
-/

namespace A033303.P1366003215599325348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033303.P1366003215599325348

namespace A033303

/-- `∑[A052534(n)]` -/
def P1366003215599325348.Spec : Prop :=
  ∀ n, P1366003215599325348.a n = A033303 n

end A033303

/-! ## A033303.P12346162535002773189

`Δ[A286062(n)]`
-/

namespace A033303.P12346162535002773189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033303.P12346162535002773189

namespace A033303

/-- `Δ[A286062(n)]` -/
def P12346162535002773189.Spec : Prop :=
  ∀ n, P12346162535002773189.a n = A033303 n

end A033303

/-! ## A033303.P2178936100046241556

`A271485(2*n)`
-/

namespace A033303.P2178936100046241556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271485 (2 * n)

end

end A033303.P2178936100046241556

namespace A033303

/-- `A271485(2*n)` -/
def P2178936100046241556.Spec : Prop :=
  ∀ n, P2178936100046241556.a n = A033303 n

end A033303

/-! ## A033303.P10748445666692624761

`∑[A187069(2*n+3)]`
-/

namespace A033303.P10748445666692624761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187069 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033303.P10748445666692624761

namespace A033303

/-- `∑[A187069(2*n+3)]` -/
def P10748445666692624761.Spec : Prop :=
  ∀ n, P10748445666692624761.a n = A033303 n

end A033303

/-! ## A033303.P18170074201711198485

`∑[∑[A006054(n+1)]+1]`
-/

namespace A033303.P18170074201711198485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006054 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033303.P18170074201711198485

namespace A033303

/-- `∑[∑[A006054(n+1)]+1]` -/
def P18170074201711198485.Spec : Prop :=
  ∀ n, P18170074201711198485.a n = A033303 n

end A033303

/-! ## A033303.P7239716128416127951

`∑[∑[A187070(2*n+1)]+1]`
-/

namespace A033303.P7239716128416127951
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033303.P7239716128416127951

namespace A033303

/-- `∑[∑[A187070(2*n+1)]+1]` -/
def P7239716128416127951.Spec : Prop :=
  ∀ n, P7239716128416127951.a n = A033303 n

end A033303

/-! ## A033303.P16902365918132982307

`A109110(n-2)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A033303.P16902365918132982307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A109110 (n - 2) + a (n - 1)

end

end A033303.P16902365918132982307

namespace A033303

/-- `A109110(n-2)+a(n-1)` -/
def P16902365918132982307.Spec : Prop :=
  ∀ n, P16902365918132982307.a n = A033303 n

end A033303

/-! ## A033303.P3710785829485505950

`A006356(n)+A006054(n)`
-/

namespace A033303.P3710785829485505950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n + A006054 n

end

end A033303.P3710785829485505950

namespace A033303

/-- `A006356(n)+A006054(n)` -/
def P3710785829485505950.Spec : Prop :=
  ∀ n, P3710785829485505950.a n = A033303 n

end A033303

/-! ## A033303.P12483643083126723537

`A033999(n)*A078056(n)`
-/

namespace A033303.P12483643083126723537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A078056 n

end

end A033303.P12483643083126723537

namespace A033303

/-- `A033999(n)*A078056(n)` -/
def P12483643083126723537.Spec : Prop :=
  ∀ n, P12483643083126723537.a n = A033303 n

end A033303

/-! ## A033303.P2365777423232481653

`gcd(A000038(n), A078056(n))`
-/

namespace A033303.P2365777423232481653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A078056 n)

end

end A033303.P2365777423232481653

namespace A033303

/-- `gcd(A000038(n), A078056(n))` -/
def P2365777423232481653.Spec : Prop :=
  ∀ n, (P2365777423232481653.a n : ℤ) = A033303 n

end A033303

/-! ## A033303.P16002646699188285300

`lcm(A020985(n), A078056(n))`
-/

namespace A033303.P16002646699188285300
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A078056 n)

end

end A033303.P16002646699188285300

namespace A033303

/-- `lcm(A020985(n), A078056(n))` -/
def P16002646699188285300.Spec : Prop :=
  ∀ n, (P16002646699188285300.a n : ℤ) = A033303 n

end A033303

/-! ## A033303.P10325869481557743424

`A077998(n+1)+A006054(n)`
-/

namespace A033303.P10325869481557743424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 1) + A006054 n

end

end A033303.P10325869481557743424

namespace A033303

/-- `A077998(n+1)+A006054(n)` -/
def P10325869481557743424.Spec : Prop :=
  ∀ n, P10325869481557743424.a n = A033303 n

end A033303

/-! ## A033303.P5604809117408505752

`A106805(n)+A006054(n+1)`
-/

namespace A033303.P5604809117408505752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 n + A006054 (n + 1)

end

end A033303.P5604809117408505752

namespace A033303

/-- `A106805(n)+A006054(n+1)` -/
def P5604809117408505752.Spec : Prop :=
  ∀ n, P5604809117408505752.a n = A033303 n

end A033303

/-! ## A033303.P14129474527323573584

`A106803(n+2)+A006054(n)`
-/

namespace A033303.P14129474527323573584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (n + 2) + A006054 n

end

end A033303.P14129474527323573584

namespace A033303

/-- `A106803(n+2)+A006054(n)` -/
def P14129474527323573584.Spec : Prop :=
  ∀ n, P14129474527323573584.a n = A033303 n

end A033303

/-! ## A033303.P15251056291188098097

`A106805(n+1)-A052534(n)`
-/

namespace A033303.P15251056291188098097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 (n + 1) - A052534 n

end

end A033303.P15251056291188098097

namespace A033303

/-- `A106805(n+1)-A052534(n)` -/
def P15251056291188098097.Spec : Prop :=
  ∀ n, P15251056291188098097.a n = A033303 n

end A033303

/-! ## A033303.P646756763458490779

`A286062(n+1)-A286062(n)`
-/

namespace A033303.P646756763458490779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286062 (n + 1) - A286062 n

end

end A033303.P646756763458490779

namespace A033303

/-- `A286062(n+1)-A286062(n)` -/
def P646756763458490779.Spec : Prop :=
  ∀ n, P646756763458490779.a n = A033303 n

end A033303

/-!
# A033304: Expansion of (2 + 2*x - 3*x^2) / (1 - 2*x - x^2 + x^3).

The programs for A033304, the canonical program `A033304.P2578425182462046637` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033304 has offset 0).

The definition of A033304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((2+2x-3x^2)/(1-2x-x^2+x^3))` (program `A033304.P2578425182462046637`, by `A033304.P2578425182462046637.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033304.P2578425182462046637

`ogf((2+2x-3x^2)/(1-2x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033304

/-- `ogf((2+2x-3x^2)/(1-2x-x^2+x^3))` -/
def P2578425182462046637.Spec : Prop :=
  ∀ n, P2578425182462046637.a n = A033304 n

theorem P2578425182462046637.correct : P2578425182462046637.Spec := by
  intro n
  simp only [A033304]

end A033304

/-! ## A033304.P14431873562927579863

`3*A077998(n+1)-A006054(n+2)-A006054(n+1)`
-/

namespace A033304.P14431873562927579863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A077998 (n + 1) - A006054 (n + 2) - A006054 (n + 1)

end

end A033304.P14431873562927579863

namespace A033304

/-- `3*A077998(n+1)-A006054(n+2)-A006054(n+1)` -/
def P14431873562927579863.Spec : Prop :=
  ∀ n, P14431873562927579863.a n = A033304 n

end A033304

/-! ## A033304.P10149599180198887714

`A274975(n+1)`
-/

namespace A033304.P10149599180198887714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274975 (n + 1)

end

end A033304.P10149599180198887714

namespace A033304

/-- `A274975(n+1)` -/
def P10149599180198887714.Spec : Prop :=
  ∀ n, P10149599180198887714.a n = A033304 n

end A033304

/-! ## A033304.P5623018636996489935

`∑[abs(A321174(n))]+1`
-/

namespace A033304.P5623018636996489935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321174 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033304.P5623018636996489935

namespace A033304

/-- `∑[abs(A321174(n))]+1` -/
def P5623018636996489935.Spec : Prop :=
  ∀ n, P5623018636996489935.a n = A033304 n

end A033304

/-! ## A033304.P12832915587380246093

`A052994(n)+A052534(n+1)`
-/

namespace A033304.P12832915587380246093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052994 n + A052534 (n + 1)

end

end A033304.P12832915587380246093

namespace A033304

/-- `A052994(n)+A052534(n+1)` -/
def P12832915587380246093.Spec : Prop :=
  ∀ n, P12832915587380246093.a n = A033304 n

end A033304

/-! ## A033304.P1846785590981711888

`A052994(n+2)-A006054(n)`
-/

namespace A033304.P1846785590981711888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052994 (n + 2) - A006054 n

end

end A033304.P1846785590981711888

namespace A033304

/-- `A052994(n+2)-A006054(n)` -/
def P1846785590981711888.Spec : Prop :=
  ∀ n, P1846785590981711888.a n = A033304 n

end A033304

/-! ## A033304.P15577949394323100218

`2*A006356(n)-A006054(n)`
-/

namespace A033304.P15577949394323100218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006356 n - A006054 n

end

end A033304.P15577949394323100218

namespace A033304

/-- `2*A006356(n)-A006054(n)` -/
def P15577949394323100218.Spec : Prop :=
  ∀ n, P15577949394323100218.a n = A033304 n

end A033304

/-! ## A033304.P4972163117631636342

`A157928(n+1)+A107298(n+1)`
-/

namespace A033304.P4972163117631636342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (n + 1) + A107298 (n + 1)

end

end A033304.P4972163117631636342

namespace A033304

/-- `A157928(n+1)+A107298(n+1)` -/
def P4972163117631636342.Spec : Prop :=
  ∀ n, P4972163117631636342.a n = A033304 n

end A033304

/-! ## A033304.P12062072330920430655

`A052994(n+2)-A187069(2*n)`
-/

namespace A033304.P12062072330920430655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052994 (n + 2) - A187069 (2 * n)

end

end A033304.P12062072330920430655

namespace A033304

/-- `A052994(n+2)-A187069(2*n)` -/
def P12062072330920430655.Spec : Prop :=
  ∀ n, P12062072330920430655.a n = A033304 n

end A033304

/-! ## A033304.P16650069928168611552

`A052994(n+2)-A187068(2*n+1)`
-/

namespace A033304.P16650069928168611552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052994 (n + 2) - A187068 (2 * n + 1)

end

end A033304.P16650069928168611552

namespace A033304

/-- `A052994(n+2)-A187068(2*n+1)` -/
def P16650069928168611552.Spec : Prop :=
  ∀ n, P16650069928168611552.a n = A033304 n

end A033304

/-! ## A033304.P5749355350147901665

`A052534(n+1)+2*A187070(2*n)`
-/

namespace A033304.P5749355350147901665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052534 (n + 1) + 2 * A187070 (2 * n)

end

end A033304.P5749355350147901665

namespace A033304

/-- `A052534(n+1)+2*A187070(2*n)` -/
def P5749355350147901665.Spec : Prop :=
  ∀ n, P5749355350147901665.a n = A033304 n

end A033304

/-! ## A033304.P11365528931264672776

`2*A077998(n+1)-A187069(2*n)`
-/

namespace A033304.P11365528931264672776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077998 (n + 1) - A187069 (2 * n)

end

end A033304.P11365528931264672776

namespace A033304

/-- `2*A077998(n+1)-A187069(2*n)` -/
def P11365528931264672776.Spec : Prop :=
  ∀ n, P11365528931264672776.a n = A033304 n

end A033304

/-! ## A033304.P14008175584379639741

`2*A077998(n+1)-A187068(2*n+1)`
-/

namespace A033304.P14008175584379639741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077998 (n + 1) - A187068 (2 * n + 1)

end

end A033304.P14008175584379639741

namespace A033304

/-- `2*A077998(n+1)-A187068(2*n+1)` -/
def P14008175584379639741.Spec : Prop :=
  ∀ n, P14008175584379639741.a n = A033304 n

end A033304

/-! ## A033304.P17767358987147061241

`A006356(n)+A077998(n)+A052994(n)`
-/

namespace A033304.P17767358987147061241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n + (A077998 n + A052994 n)

end

end A033304.P17767358987147061241

namespace A033304

/-- `A006356(n)+A077998(n)+A052994(n)` -/
def P17767358987147061241.Spec : Prop :=
  ∀ n, P17767358987147061241.a n = A033304 n

end A033304

/-! ## A033304.P460965299590876383

`A077998(n+1)+A077998(n)+A052994(n)`
-/

namespace A033304.P460965299590876383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 1) + (A077998 n + A052994 n)

end

end A033304.P460965299590876383

namespace A033304

/-- `A077998(n+1)+A077998(n)+A052994(n)` -/
def P460965299590876383.Spec : Prop :=
  ∀ n, P460965299590876383.a n = A033304 n

end A033304

/-! ## A033304.P14375236234320376188

`A106805(n+1)+A106803(n)-A006054(n)`
-/

namespace A033304.P14375236234320376188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106805 (n + 1) + (A106803 n - A006054 n)

end

end A033304.P14375236234320376188

namespace A033304

/-- `A106805(n+1)+A106803(n)-A006054(n)` -/
def P14375236234320376188.Spec : Prop :=
  ∀ n, P14375236234320376188.a n = A033304 n

end A033304

/-! ## A033304.P10518911439197292510

`A006356(n)+A052994(n)-A199853(n+1)`
-/

namespace A033304.P10518911439197292510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 n + (A052994 n - A199853 (n + 1))

end

end A033304.P10518911439197292510

namespace A033304

/-- `A006356(n)+A052994(n)-A199853(n+1)` -/
def P10518911439197292510.Spec : Prop :=
  ∀ n, P10518911439197292510.a n = A033304 n

end A033304

/-! ## A033304.P13449673159309198310

`A077998(n+1)+A077998(n+1)-A006054(n)`
-/

namespace A033304.P13449673159309198310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (n + 1) + (A077998 (n + 1) - A006054 n)

end

end A033304.P13449673159309198310

namespace A033304

/-- `A077998(n+1)+A077998(n+1)-A006054(n)` -/
def P13449673159309198310.Spec : Prop :=
  ∀ n, P13449673159309198310.a n = A033304 n

end A033304

/-! ## A033304.P15272958385825776312

`Δ[abs(A321173(n))]`
-/

namespace A033304.P15272958385825776312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321173 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033304.P15272958385825776312

namespace A033304

/-- `Δ[abs(A321173(n))]` -/
def P15272958385825776312.Spec : Prop :=
  ∀ n, P15272958385825776312.a n = A033304 n

end A033304

/-! ## A033304.P2675141608972171363

`abs(A321173(n+1)+A321173(n))`
-/

namespace A033304.P2675141608972171363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A321173 (n + 1) + A321173 n|

end

end A033304.P2675141608972171363

namespace A033304

/-- `abs(A321173(n+1)+A321173(n))` -/
def P2675141608972171363.Spec : Prop :=
  ∀ n, P2675141608972171363.a n = A033304 n

end A033304

/-!
# A033305: Number of permutations (p1,...,pn) such that 1 <= |pk - k| <= 2 for all k.

The programs for A033305, the canonical program `A033305.P874355326494320662` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033305 has offset 0).

The definition of A033305 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033305.P874355326494320662

`a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2, a(4)=4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033305

/-- `a(n-1)+a(n-2)+a(n-3)+a(n-4)-a(n-5)` -/
def P874355326494320662.Spec : Prop :=
  ∀ n, P874355326494320662.a n = A033305 n

theorem P874355326494320662.correct : P874355326494320662.Spec := by
  intro n
  simp only [A033305]

end A033305

/-! ## A033305.P2617130545983106405

`ogf((-1+x)/(-1+x+x^2+x^3+x^4-x^5))`
-/

namespace A033305.P2617130545983106405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -1, -1, -1, 1] n

end

end A033305.P2617130545983106405

namespace A033305

/-- `ogf((-1+x)/(-1+x+x^2+x^3+x^4-x^5))` -/
def P2617130545983106405.Spec : Prop :=
  ∀ n, P2617130545983106405.a n = A033305 n

end A033305

/-! ## A033305.P3109810192903446382

`A321048(A233583(n+1))+(n+1)%2`
-/

namespace A033305.P3109810192903446382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321048 (A233583 (n + 1)).toNat + (((n + 1) % 2 : ℕ) : ℤ)

end

end A033305.P3109810192903446382

namespace A033305

/-- `A321048(A233583(n+1))+(n+1)%2` -/
def P3109810192903446382.Spec : Prop :=
  ∀ n, P3109810192903446382.a n = A033305 n

end A033305

/-! ## A033305.P9832323833547193153

`A321048(A233583(n+1))+A059841(n)`
-/

namespace A033305.P9832323833547193153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321048 (A233583 (n + 1)).toNat + A059841 n

end

end A033305.P9832323833547193153

namespace A033305

/-- `A321048(A233583(n+1))+A059841(n)` -/
def P9832323833547193153.Spec : Prop :=
  ∀ n, P9832323833547193153.a n = A033305 n

end A033305

/-! ## A033305.P12644964486709613902

`A321048(A233583(n+1))+char[A005843(n)]`
-/

namespace A033305.P12644964486709613902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321048 (A233583 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033305.P12644964486709613902

namespace A033305

/-- `A321048(A233583(n+1))+char[A005843(n)]` -/
def P12644964486709613902.Spec : Prop :=
  ∀ n, P12644964486709613902.a n = A033305 n

end A033305

/-! ## A033305.P815828201979691589

`A321048(A233583(n+1))+A000035(n+1)`
-/

namespace A033305.P815828201979691589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321048 (A233583 (n + 1)).toNat + A000035 (n + 1)

end

end A033305.P815828201979691589

namespace A033305

/-- `A321048(A233583(n+1))+A000035(n+1)` -/
def P815828201979691589.Spec : Prop :=
  ∀ n, P815828201979691589.a n = A033305 n

end A033305

/-! ## A033305.P9452643597864098387

`A321048(A233583(n+1))+A106544(A001511(n+1))`
-/

namespace A033305.P9452643597864098387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321048 (A233583 (n + 1)).toNat + A106544 (A001511 (n + 1)).toNat

end

end A033305.P9452643597864098387

namespace A033305

/-- `A321048(A233583(n+1))+A106544(A001511(n+1))` -/
def P9452643597864098387.Spec : Prop :=
  ∀ n, P9452643597864098387.a n = A033305 n

end A033305

/-!
# A033306: Triangle of coefficients of ordered cycle-index polynomials: T(n,k) = binomial(n,k)*Bell(k)*Bell(n-k).

The programs for A033306, there is no canonical definition to state claims against.
-/

/-! ## A033306.P4399442875711719969

`C(row(n), col(n))*A000110(col(n))*A000110(row(n)-col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A033306.P4399442875711719969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n) : ℤ) * A000110 (SequenceMachineLib.triCol n) * A000110 (SequenceMachineLib.triRow n - SequenceMachineLib.triCol n)

end

end A033306.P4399442875711719969

/-! ## A033306.P11662524002490159592

`A007318(n)*A144155(n)`
-/

namespace A033306.P11662524002490159592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A144155 n

end

end A033306.P11662524002490159592

/-! ## A033306.P237983662203162060

`a(A112367(n))*A056857(n+1)` with `a(0)=1`
-/

namespace A033306.P237983662203162060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A112367 n).toNat * A056857 (n + 1)

end

end A033306.P237983662203162060

/-! ## A033306.P13925153499070807457

`A000110(A002262(n))*A056857(n+1)`
-/

namespace A033306.P13925153499070807457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A002262 n).toNat * A056857 (n + 1)

end

end A033306.P13925153499070807457

/-! ## A033306.P14404648243304538858

`A000110(A025581(n))*A056860(n+1)`
-/

namespace A033306.P14404648243304538858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A025581 n).toNat * A056860 (n + 1)

end

end A033306.P14404648243304538858

/-! ## A033306.P5119671053632027586

`A011971(A112367(n))*A056857(n+1)`
-/

namespace A033306.P5119671053632027586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A112367 n).toNat * A056857 (n + 1)

end

end A033306.P5119671053632027586

/-! ## A033306.P8469359581976883860

`A000110(log2(A059268(n)))*A056857(n+1)`
-/

namespace A033306.P8469359581976883860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat * A056857 (n + 1)

end

end A033306.P8469359581976883860

/-! ## A033306.P11040826753156254866

`A000110(A144328(n+1))*A056857(n+1)`
-/

namespace A033306.P11040826753156254866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A144328 (n + 1)).toNat * A056857 (n + 1)

end

end A033306.P11040826753156254866

/-! ## A033306.P3172859392179907559

`A056857(n+1)/A186020(n)*A212431(n)`
-/

namespace A033306.P3172859392179907559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056857 (n + 1) : ℚ) / (A186020 n : ℚ) * (A212431 n : ℚ)

end

end A033306.P3172859392179907559

/-! ## A033306.P2325417247255789000

`A000110(A025581(n))*A056857(A038722(n+1))`
-/

namespace A033306.P2325417247255789000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A025581 n).toNat * A056857 (A038722 (n + 1)).toNat

end

end A033306.P2325417247255789000

/-! ## A033306.P15159258099619623842

`A056857(n+1)*A104725(A059268(n))`
-/

namespace A033306.P15159258099619623842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (n + 1) * A104725 (A059268 n).toNat

end

end A033306.P15159258099619623842

/-!
# A033307: Decimal expansion of Champernowne constant (or Mahler's number), formed by concatenating the positive integers.

The programs for A033307, there is no canonical definition to state claims against.
-/

/-! ## A033307.P16623686724490857823

`Δ[A054632(n)]`
-/

namespace A033307.P16623686724490857823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033307.P16623686724490857823

/-! ## A033307.P227894810745353454

`A007376(n+1)`
-/

namespace A033307.P227894810745353454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (n + 1)

end

end A033307.P227894810745353454

/-! ## A033307.P17597721404142112610

`A261333(n)%10`
-/

namespace A033307.P17597721404142112610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261333 n) 10

end

end A033307.P17597721404142112610

/-! ## A033307.P12515565963309792089

`9-A031310(n+1)`
-/

namespace A033307.P12515565963309792089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A031310 (n + 1)

end

end A033307.P12515565963309792089

/-! ## A033307.P6726581255466252738

`A065649(n+1)%10`
-/

namespace A033307.P6726581255466252738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 (n + 1)) 10

end

end A033307.P6726581255466252738

/-! ## A033307.P6945358658921666280

`A098727(n+1)-(n+1)`
-/

namespace A033307.P6945358658921666280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098727 (n + 1) - (n + 1 : ℤ)

end

end A033307.P6945358658921666280

/-! ## A033307.P3789646323157685016

`A098733(n+1)/(n+1)`
-/

namespace A033307.P3789646323157685016
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098733 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A033307.P3789646323157685016

/-! ## A033307.P425594164913466944

`A054899(A136414(n+1))`
-/

namespace A033307.P425594164913466944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A136414 (n + 1)).toNat

end

end A033307.P425594164913466944

/-! ## A033307.P5287095484613594734

`A054632(n+1)-A054632(n)`
-/

namespace A033307.P5287095484613594734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054632 (n + 1) - A054632 n

end

end A033307.P5287095484613594734

/-! ## A033307.P13985339476444383180

`A108712(Δ[n²])`
-/

namespace A033307.P13985339476444383180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033307.P13985339476444383180

/-! ## A033307.P18194125825250955054

`dr(A108712(2*n+1))`
-/

namespace A033307.P18194125825250955054
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A108712 (2 * n + 1))

end

end A033307.P18194125825250955054

/-! ## A033307.P14299796228998543672

`A108202(2*(n+1))`
-/

namespace A033307.P14299796228998543672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * (n + 1))

end

end A033307.P14299796228998543672

/-! ## A033307.P16332109430484982213

`A010879(A261333(n))`
-/

namespace A033307.P16332109430484982213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A261333 n).toNat

end

end A033307.P16332109430484982213

/-! ## A033307.P9463700931232608134

`A010879(A065649(n+1))`
-/

namespace A033307.P9463700931232608134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065649 (n + 1)).toNat

end

end A033307.P9463700931232608134

/-! ## A033307.P12905110513394443583

`1-A098728(n)+n`
-/

namespace A033307.P12905110513394443583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A098728 n + (n : ℤ)

end

end A033307.P12905110513394443583

/-! ## A033307.P6180256189238763761

`A022964(A098728(n)+A022964(n))+1`
-/

namespace A033307.P6180256189238763761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022964 (A098728 n + A022964 n).toNat + 1

end

end A033307.P6180256189238763761

/-! ## A033307.P9495830039896331600

`2-A098732(n+2)+n`
-/

namespace A033307.P9495830039896331600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A098732 (n + 2) + (n : ℤ)

end

end A033307.P9495830039896331600

/-! ## A033307.P3087562697605205753

`n-A023444(A098732(n+2))`
-/

namespace A033307.P3087562697605205753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023444 (A098732 (n + 2)).toNat

end

end A033307.P3087562697605205753

/-! ## A033307.P8055204063141098222

`A244426(A038722(n+1))`
-/

namespace A033307.P8055204063141098222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244426 (A038722 (n + 1)).toNat

end

end A033307.P8055204063141098222

/-! ## A033307.P13851358542035565212

`A162711(∑[n]+1)`
-/

namespace A033307.P13851358542035565212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162711 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A033307.P13851358542035565212

/-!
# A033308: Decimal expansion of Copeland-Erdős constant: concatenate primes.

The programs for A033308, there is no canonical definition to state claims against.
-/

/-! ## A033308.P3324679047233274419

`9-A154730(n)`
-/

namespace A033308.P3324679047233274419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A154730 n

end

end A033308.P3324679047233274419

/-! ## A033308.P13374262753565368916

`Δ[A067112(n)]`
-/

namespace A033308.P13374262753565368916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033308.P13374262753565368916

/-! ## A033308.P16752751616022210363

`A067112(n+1)-A067112(n)`
-/

namespace A033308.P16752751616022210363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067112 (n + 1) - A067112 n

end

end A033308.P16752751616022210363

/-!
# A033309: Position of first occurrence of n in continued fraction for Copeland-Erdős constant.

The programs for A033309, there is no canonical definition to state claims against.
-/

/-! ## A033309.P17371332634546577843

`A224891(n+1)+A088569(A074263(2*(n+2)))`
-/

namespace A033309.P17371332634546577843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224891 (n + 1) + A088569 (A074263 (2 * (n + 2))).toNat

end

end A033309.P17371332634546577843

/-! ## A033309.P9676082284759739932

`A316786(A104192(n+1))+A224891(n+1)`
-/

namespace A033309.P9676082284759739932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316786 (A104192 (n + 1)).toNat + A224891 (n + 1)

end

end A033309.P9676082284759739932

/-! ## A033309.P15971904959842704004

`A352896(A074833(n+1))+A224891(n+1)`
-/

namespace A033309.P15971904959842704004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352896 (A074833 (n + 1)).toNat + A224891 (n + 1)

end

end A033309.P15971904959842704004

/-! ## A033309.P956847056477781045

`A224891(n+1)+A051953(A000040(2*(n+1)))`
-/

namespace A033309.P956847056477781045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224891 (n + 1) + A051953 (A000040 (2 * (n + 1))).toNat

end

end A033309.P956847056477781045

/-! ## A033309.P5453130674581598294

`A224891(n+1)+A002313(A002313(n+1)+1)%2`
-/

namespace A033309.P5453130674581598294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224891 (n + 1) + Int.tmod (A002313 (A002313 (n + 1) + 1).toNat) 2

end

end A033309.P5453130674581598294

/-! ## A033309.P3560772581093247392

`A224891(n+1)+A182850(A262286(n+1))`
-/

namespace A033309.P3560772581093247392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224891 (n + 1) + A182850 (A262286 (n + 1)).toNat

end

end A033309.P3560772581093247392

/-! ## A033309.P8226152025127361336

`A224891(n+1)+A182850(A063637(n+2))`
-/

namespace A033309.P8226152025127361336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224891 (n + 1) + A182850 (A063637 (n + 2)).toNat

end

end A033309.P8226152025127361336

/-! ## A033309.P5486979251807515552

`A276949(A088503(n+1))+A224891(n+1)`
-/

namespace A033309.P5486979251807515552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276949 (A088503 (n + 1)).toNat + A224891 (n + 1)

end

end A033309.P5486979251807515552

/-! ## A033309.P1259900028079503576

`A224891(n+1)+A051903(A103654(3*n+2))`
-/

namespace A033309.P1259900028079503576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224891 (n + 1) + A051903 (A103654 (3 * n + 2)).toNat

end

end A033309.P1259900028079503576

/-! ## A033309.P13691852705761078023

`A324903(A039833(n+1))+A224891(n+1)`
-/

namespace A033309.P13691852705761078023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324903 (A039833 (n + 1)).toNat + A224891 (n + 1)

end

end A033309.P13691852705761078023

/-! ## A033309.P10568640080956306316

`A000079(n+1)+A224891(n+1)-A126646(n)`
-/

namespace A033309.P10568640080956306316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A224891 (n + 1) - A126646 n)

end

end A033309.P10568640080956306316

/-! ## A033309.P3787465863444659439

`A302055(A142785(n+1))+A224891(n+1)`
-/

namespace A033309.P3787465863444659439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 (A142785 (n + 1)).toNat + A224891 (n + 1)

end

end A033309.P3787465863444659439

/-!
# A033310: Incrementally largest terms in continued fraction for Copeland-Erdős constant.

The programs for A033310, there is no canonical definition to state claims against.
-/

/-! ## A033310.P3403689332719966861

`record[A030168(n)]`
-/

namespace A033310.P3403689332719966861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033310.P3403689332719966861

/-! ## A033310.P1318983666797038080

`A030168(A224890(n+1))`
-/

namespace A033310.P1318983666797038080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030168 (A224890 (n + 1)).toNat

end

end A033310.P1318983666797038080

/-! ## A033310.P14110777188409150478

`A030168(A033311(n+1)-1)`
-/

namespace A033310.P14110777188409150478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030168 (A033311 (n + 1) - 1).toNat

end

end A033310.P14110777188409150478

/-! ## A033310.P9689351397207912028

`A030168(A057428(n+1)+A033311(n+1))`
-/

namespace A033310.P9689351397207912028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030168 (A057428 (n + 1) + A033311 (n + 1)).toNat

end

end A033310.P9689351397207912028

/-!
# A033311: Positions of incrementally largest terms in continued fraction for Copeland-Erdős constant.

The programs for A033311, there is no canonical definition to state claims against.
-/

/-! ## A033311.P7709143811628031749

`A224890(n+1)+1`
-/

namespace A033311.P7709143811628031749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224890 (n + 1) + 1

end

end A033311.P7709143811628031749

/-! ## A033311.P6637208045105831900

`lt[A005843(n), A030168(A233583(n+1))]+1`
-/

namespace A033311.P6637208045105831900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030168 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033311.P6637208045105831900

/-!
# A033312: a(n) = n! - 1.

The programs for A033312, the canonical program `A033312.P12652974073192440444` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033312 has offset 0).

The definition of A033312 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!-1` (program `A033312.P12652974073192440444`, by `A033312.P12652974073192440444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033312.P12652974073192440444

`n!-1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033312

/-- `n!-1` -/
def P12652974073192440444.Spec : Prop :=
  ∀ n, P12652974073192440444.a n = A033312 n

theorem P12652974073192440444.correct : P12652974073192440444.Spec := by
  intro n
  simp only [A033312]

end A033312

/-! ## A033312.P2661323943150001200

`a(n-1)*n+n-1` with `a(0)=0, a(1)=0`
-/

namespace A033312.P2661323943150001200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  a (n - 1) * (n : ℤ) + ((n : ℤ) - 1)

end

end A033312.P2661323943150001200

namespace A033312

/-- `a(n-1)*n+n-1` -/
def P2661323943150001200.Spec : Prop :=
  ∀ n, P2661323943150001200.a n = A033312 n

end A033312

/-! ## A033312.P1881613413644414243

`xor(-n!, -1)`
-/

namespace A033312.P1881613413644414243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(Nat.factorial n : ℤ)) (-1)

end

end A033312.P1881613413644414243

namespace A033312

/-- `xor(-n!, -1)` -/
def P1881613413644414243.Spec : Prop :=
  ∀ n, P1881613413644414243.a n = A033312 n

end A033312

/-! ## A033312.P7908643065043224662

`cos(-π)+n!`
-/

namespace A033312.P7908643065043224662
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (-Real.pi) + (Nat.factorial n : ℝ)

end

end A033312.P7908643065043224662

namespace A033312

/-- `cos(-π)+n!` -/
def P7908643065043224662.Spec : Prop :=
  ∀ n, P7908643065043224662.a n = (A033312 n : ℝ)

theorem P7908643065043224662.correct : P7908643065043224662.Spec := by
  intro n
  simp only [A033312, Nat.add_sub_cancel, A033312.P7908643065043224662.a, A033312.P12652974073192440444.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A033312

/-! ## A033312.P924158116181507834

`or(n, -1)+n!`
-/

namespace A033312.P924158116181507834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-1) + (Nat.factorial n : ℤ)

end

end A033312.P924158116181507834

namespace A033312

/-- `or(n, -1)+n!` -/
def P924158116181507834.Spec : Prop :=
  ∀ n, P924158116181507834.a n = A033312 n

end A033312

/-! ## A033312.P16348863708902787331

`sin(-acos(0))+n!`
-/

namespace A033312.P16348863708902787331
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (-Real.arccos (0 : ℝ)) + (Nat.factorial n : ℝ)

end

end A033312.P16348863708902787331

namespace A033312

/-- `sin(-acos(0))+n!` -/
def P16348863708902787331.Spec : Prop :=
  ∀ n, P16348863708902787331.a n = (A033312 n : ℝ)

theorem P16348863708902787331.correct : P16348863708902787331.Spec := by
  intro n
  simp only [A033312, Nat.add_sub_cancel, A033312.P16348863708902787331.a, A033312.P12652974073192440444.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A033312

/-! ## A033312.P5652230693912029311

`asin(sin(-1))+n!`
-/

namespace A033312.P5652230693912029311
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arcsin (Real.sin (-1 : ℝ)) + (Nat.factorial n : ℝ)

end

end A033312.P5652230693912029311

namespace A033312

/-- `asin(sin(-1))+n!` -/
def P5652230693912029311.Spec : Prop :=
  ∀ n, P5652230693912029311.a n = (A033312 n : ℝ)

end A033312

/-! ## A033312.P709503684619980717

`atan(tan(-1))+n!`
-/

namespace A033312.P709503684619980717
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (Real.tan (-1 : ℝ)) + (Nat.factorial n : ℝ)

end

end A033312.P709503684619980717

namespace A033312

/-- `atan(tan(-1))+n!` -/
def P709503684619980717.Spec : Prop :=
  ∀ n, P709503684619980717.a n = (A033312 n : ℝ)

end A033312

/-! ## A033312.P4541201038579142016

`tan(acot(-1))+n!`
-/

namespace A033312.P4541201038579142016
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.tan (SequenceMachineLib.acot (-1 : ℝ)) + (Nat.factorial n : ℝ)

end

end A033312.P4541201038579142016

namespace A033312

/-- `tan(acot(-1))+n!` -/
def P4541201038579142016.Spec : Prop :=
  ∀ n, P4541201038579142016.a n = (A033312 n : ℝ)

end A033312

/-! ## A033312.P17947984020002784503

`cot(atan(-1))+n!`
-/

namespace A033312.P17947984020002784503
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (Real.arctan (-1 : ℝ)) + (Nat.factorial n : ℝ)

end

end A033312.P17947984020002784503

namespace A033312

/-- `cot(atan(-1))+n!` -/
def P17947984020002784503.Spec : Prop :=
  ∀ n, P17947984020002784503.a n = (A033312 n : ℝ)

end A033312

/-!
# A033313: Smallest positive integer x satisfying the Pell equation x^2 - D*y^2 = 1 for nonsquare D and positive y.

The programs for A033313, there is no canonical definition to state claims against.
-/

/-! ## A033313.P12531777560542576012

`sqrt(1+(n+1+floor(1/2+sqrt(n+1)))*A033317(n+1)²)`
-/

namespace A033313.P12531777560542576012
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (1 + ((n + 1 : ℤ) + ⌊((1 : ℚ) / 2 : ℝ) + Real.sqrt (n + 1 : ℝ)⌋) * A033317 (n + 1) ^ 2 : ℝ)

end

end A033313.P12531777560542576012

/-! ## A033313.P14701321746534130803

`A002350(comp[n²])`
-/

namespace A033313.P14701321746534130803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A033313.P14701321746534130803

/-! ## A033313.P10803031285746373702

`A180495(n+2)/2`
-/

namespace A033313.P10803031285746373702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180495 (n + 2) : ℚ) / 2

end

end A033313.P10803031285746373702

/-! ## A033313.P4274832910854957717

`abs(1-A002350(A000037(n+1)))+1`
-/

namespace A033313.P4274832910854957717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A002350 (A000037 (n + 1)).toNat| + 1

end

end A033313.P4274832910854957717

/-! ## A033313.P17178655497176157041

`ceil(sqrt(A000037(n+1))*A033317(n+1))`
-/

namespace A033313.P17178655497176157041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A000037 (n + 1) : ℝ) * (A033317 (n + 1) : ℝ)⌉

end

end A033313.P17178655497176157041

/-! ## A033313.P16832361983140702234

`or(A002350(A000037(n+1)), A005369(n))`
-/

namespace A033313.P16832361983140702234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002350 (A000037 (n + 1)).toNat) (A005369 n)

end

end A033313.P16832361983140702234

/-! ## A033313.P4300020019368781198

`A002350(A000037(n+1))*A057427(n+1)`
-/

namespace A033313.P4300020019368781198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A000037 (n + 1)).toNat * A057427 (n + 1)

end

end A033313.P4300020019368781198

/-! ## A033313.P13224147827299985138

`A002350(A000037(n+1))+A001223(n+3)%2`
-/

namespace A033313.P13224147827299985138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A000037 (n + 1)).toNat + Int.tmod (A001223 (n + 3)) 2

end

end A033313.P13224147827299985138

/-! ## A033313.P12773519262018144638

`A080075(n+1)%2*A002350(A000037(n+1))`
-/

namespace A033313.P12773519262018144638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080075 (n + 1)) 2 * A002350 (A000037 (n + 1)).toNat

end

end A033313.P12773519262018144638

/-! ## A033313.P4857448959169420837

`A102683(A006519(n+1))+A002350(A000037(n+1))`
-/

namespace A033313.P4857448959169420837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A006519 (n + 1)).toNat + A002350 (A000037 (n + 1)).toNat

end

end A033313.P4857448959169420837

/-! ## A033313.P16180145759904564965

`A002350(A000037(n+1))*A002350(A001223(n+1)²)`
-/

namespace A033313.P16180145759904564965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A000037 (n + 1)).toNat * A002350 (A001223 (n + 1) ^ 2).toNat

end

end A033313.P16180145759904564965

/-! ## A033313.P749402642461969397

`A002350(A000037(n+1))*A006519(A336844(n+1))`
-/

namespace A033313.P749402642461969397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A000037 (n + 1)).toNat * A006519 (A336844 (n + 1)).toNat

end

end A033313.P749402642461969397

/-! ## A033313.P756946636278756574

`A002350(A000037(n+1))%A007283(n+1)`
-/

namespace A033313.P756946636278756574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002350 (A000037 (n + 1)).toNat) (A007283 (n + 1))

end

end A033313.P756946636278756574

/-! ## A033313.P1312668533749465298

`A122840(A000124(n))+A002350(A000037(n+1))`
-/

namespace A033313.P1312668533749465298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A000124 n).toNat + A002350 (A000037 (n + 1)).toNat

end

end A033313.P1312668533749465298

/-!
# A033314: Least D in the Pellian x^2 - D*y^2 = 1 for which x has least solution n.

The programs for A033314, there is no canonical definition to state claims against.
-/

/-! ## A033314.P2408969796441976692

`A068310(n+2)*A072411(A063496(n+1))`
-/

namespace A033314.P2408969796441976692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068310 (n + 2) * A072411 (A063496 (n + 1)).toNat

end

end A033314.P2408969796441976692

/-!
# A033315: Incrementally largest values of minimal x satisfying Pell equation x^2 - D*y^2 = 1.

The programs for A033315, there is no canonical definition to state claims against.
-/

/-! ## A033315.P15632623934780703170

`record[A002350(n+1)]`
-/

namespace A033315.P15632623934780703170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033315.P15632623934780703170

/-! ## A033315.P15760291848168920367

`A002350(A033316(n+1))`
-/

namespace A033315.P15760291848168920367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A033316 (n + 1)).toNat

end

end A033315.P15760291848168920367

/-! ## A033315.P5351500878807183022

`record[ratio[A002350(A152271(n))]]`
-/

namespace A033315.P5351500878807183022
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033315.P5351500878807183022

/-! ## A033315.P15316118647487490206

`record[xor(A033313(n+1), A033322(n+1))]`
-/

namespace A033315.P15316118647487490206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033313 (n + 1)) (A033322 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033315.P15316118647487490206

/-! ## A033315.P6917152229958900317

`record[A002350(A152271(n))]-A185284(n)`
-/

namespace A033315.P6917152229958900317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002350 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A185284 n

end

end A033315.P6917152229958900317

/-!
# A033317: Smallest positive integer y satisfying the Pell equation x^2 - D*y^2 = 1 for nonsquare D.

The programs for A033317, there is no canonical definition to state claims against.
-/

/-! ## A033317.P5034299013131958324

`sqrt((A033313(n+1)²-1)/A000037(n+1))`
-/

namespace A033317.P5034299013131958324
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A033313 (n + 1) ^ 2 - 1 : ℚ) / (A000037 (n + 1) : ℚ) : ℝ)

end

end A033317.P5034299013131958324

/-! ## A033317.P18422582392928166194

`A002349(comp[n²])`
-/

namespace A033317.P18422582392928166194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A033317.P18422582392928166194

/-! ## A033317.P13463293616521545403

`or(char[1], A002349(A000037(n+1)))`
-/

namespace A033317.P13463293616521545403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002349 (A000037 (n + 1)).toNat)

end

end A033317.P13463293616521545403

/-! ## A033317.P11576918778423464099

`A002349(A000037(n+1))%A033313(n+1)`
-/

namespace A033317.P11576918778423464099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002349 (A000037 (n + 1)).toNat) (A033313 (n + 1))

end

end A033317.P11576918778423464099

/-! ## A033317.P15992501116706991134

`A002349(A000037(n+1))^A018252(gcd(n, n+1))`
-/

namespace A033317.P15992501116706991134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002349 (A000037 (n + 1)).toNat : ℚ) ^ (A018252 (Nat.gcd n (n + 1)) : ℤ)

end

end A033317.P15992501116706991134

/-! ## A033317.P4765857677801691443

`A002349(A000037(n+1))+floor((A068432(n+1)+1)/4)`
-/

namespace A033317.P4765857677801691443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A000037 (n + 1)).toNat + ⌊(A068432 (n + 1) + 1 : ℚ) / 4⌋

end

end A033317.P4765857677801691443

/-! ## A033317.P1504794751375887320

`A049240((n+1)²)+A002349(A000037(n+1))`
-/

namespace A033317.P1504794751375887320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 ((n + 1) ^ 2) + A002349 (A000037 (n + 1)).toNat

end

end A033317.P1504794751375887320

/-!
# A033318: Least D in the Pellian x^2 - D*y^2 = 1 for which y has least solution n.

The programs for A033318, there is no canonical definition to state claims against.
-/

/-! ## A033318.P2980981090709362626

`A296512(∑[2*n-a(n-1)])` with `a(0)=2, a(1)=1, a(2)=1`
-/

namespace A033318.P2980981090709362626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1, 1] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A033318.P2980981090709362626

/-!
# A033319: Incrementally largest values of minimal y satisfying Pell equation x^2-Dy^2=1.

The programs for A033319, there is no canonical definition to state claims against.
-/

/-! ## A033319.P9362339962707663507

`record[A002349(n+1)]`
-/

namespace A033319.P9362339962707663507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033319.P9362339962707663507

/-! ## A033319.P17788666138127479071

`A002349(A033316(n+1))`
-/

namespace A033319.P17788666138127479071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (A033316 (n + 1)).toNat

end

end A033319.P17788666138127479071

/-! ## A033319.P12080129350968908631

`record[A002349(-xor(n, -1))*A057427(n)]`
-/

namespace A033319.P12080129350968908631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002349 (-Int.xor (n : ℤ) (-1)).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033319.P12080129350968908631

/-! ## A033319.P4253687221208704994

`record[sqrt(A069018(n+1))]`
-/

namespace A033319.P4253687221208704994
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A069018 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033319.P4253687221208704994

/-! ## A033319.P7646068630123684208

`record[A069018(n+1)^(A008486(n)/A008458(n))]`
-/

namespace A033319.P7646068630123684208
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A069018 (n + 1) : ℝ) ^ ((A008486 n : ℚ) / (A008458 n : ℚ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033319.P7646068630123684208

/-!
# A033320: a(n) = floor( sqrt(2) * (3/2)^n ).

The programs for A033320, the canonical program `A033320.P1055090192380632486` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033320 has offset 0).

The definition of A033320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033320.P1055090192380632486

`floor(sqrt(2)*(3/2)^n)`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033320

/-- `floor(sqrt(2)*(3/2)^n)` -/
def P1055090192380632486.Spec : Prop :=
  ∀ n, P1055090192380632486.a n = A033320 n

theorem P1055090192380632486.correct : P1055090192380632486.Spec := by
  intro n
  simp only [A033320]

end A033320

/-! ## A033320.P4158505872873193525

`A028310(floor(sqrt(A147788(2*n))))`
-/

namespace A033320.P4158505872873193525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.sqrt (A147788 (2 * n))).toNat

end

end A033320.P4158505872873193525

namespace A033320

/-- `A028310(floor(sqrt(A147788(2*n))))` -/
def P4158505872873193525.Spec : Prop :=
  ∀ n, P4158505872873193525.a n = A033320 n

end A033320

/-! ## A033320.P14349075380148667870

`A172471(floor((9/4)^n))`
-/

namespace A033320.P14349075380148667870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ⌊((9 : ℚ) / 4) ^ n⌋.toNat

end

end A033320.P14349075380148667870

namespace A033320

/-- `A172471(floor((9/4)^n))` -/
def P14349075380148667870.Spec : Prop :=
  ∀ n, P14349075380148667870.a n = A033320 n

end A033320

/-! ## A033320.P1362637553489770664

`A184945(n)+A172471(A094981(n))`
-/

namespace A033320.P1362637553489770664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184945 n + A172471 (A094981 n).toNat

end

end A033320.P1362637553489770664

namespace A033320

/-- `A184945(n)+A172471(A094981(n))` -/
def P1362637553489770664.Spec : Prop :=
  ∀ n, P1362637553489770664.a n = A033320 n

end A033320

/-! ## A033320.P6155236415496461959

`A185284(n)+A172471(A094981(n))`
-/

namespace A033320.P6155236415496461959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n + A172471 (A094981 n).toNat

end

end A033320.P6155236415496461959

namespace A033320

/-- `A185284(n)+A172471(A094981(n))` -/
def P6155236415496461959.Spec : Prop :=
  ∀ n, P6155236415496461959.a n = A033320 n

end A033320

/-!
# A033321: Binomial transform of Fine's sequence A000957: 1, 0, 1, 2, 6, 18, 57, 186, ...

The programs for A033321, the canonical program `A033321.P1087529411604748261` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033321 has offset 0).

The definition of A033321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033321.P11759461703579066674

`Δ[A138415(n)]`
-/

namespace A033321.P11759461703579066674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033321.P11759461703579066674

namespace A033321

/-- `Δ[A138415(n)]` -/
def P11759461703579066674.Spec : Prop :=
  ∀ n, P11759461703579066674.a n = A033321 n

end A033321

/-! ## A033321.P11180581616624750447

`∑[A128714(n)]+1`
-/

namespace A033321.P11180581616624750447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033321.P11180581616624750447

namespace A033321

/-- `∑[A128714(n)]+1` -/
def P11180581616624750447.Spec : Prop :=
  ∀ n, P11180581616624750447.a n = A033321 n

end A033321

/-! ## A033321.P14532678062516813070

`A002212(n)-A128714(n)`
-/

namespace A033321.P14532678062516813070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n - A128714 n

end

end A033321.P14532678062516813070

namespace A033321

/-- `A002212(n)-A128714(n)` -/
def P14532678062516813070.Spec : Prop :=
  ∀ n, P14532678062516813070.a n = A033321 n

end A033321

/-! ## A033321.P12744253630244792098

`A138415(n+1)-A138415(n)`
-/

namespace A033321.P12744253630244792098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138415 (n + 1) - A138415 n

end

end A033321.P12744253630244792098

namespace A033321

/-- `A138415(n+1)-A138415(n)` -/
def P12744253630244792098.Spec : Prop :=
  ∀ n, P12744253630244792098.a n = A033321 n

end A033321

/-! ## A033321.P8903121840528706083

`abs(A091699(n+1)+A091699(n))`
-/

namespace A033321.P8903121840528706083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A091699 (n + 1) + A091699 n|

end

end A033321.P8903121840528706083

namespace A033321

/-- `abs(A091699(n+1)+A091699(n))` -/
def P8903121840528706083.Spec : Prop :=
  ∀ n, P8903121840528706083.a n = A033321 n

end A033321

/-! ## A033321.P7406395327171418045

`∑[A002212(n)]-A129167(n)`
-/

namespace A033321.P7406395327171418045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129167 n

end

end A033321.P7406395327171418045

namespace A033321

/-- `∑[A002212(n)]-A129167(n)` -/
def P7406395327171418045.Spec : Prop :=
  ∀ n, P7406395327171418045.a n = A033321 n

end A033321

/-! ## A033321.P9496752754106429215

`A007317(n+1)-A129167(n)`
-/

namespace A033321.P9496752754106429215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007317 (n + 1) - A129167 n

end

end A033321.P9496752754106429215

namespace A033321

/-- `A007317(n+1)-A129167(n)` -/
def P9496752754106429215.Spec : Prop :=
  ∀ n, P9496752754106429215.a n = A033321 n

end A033321

/-! ## A033321.P3521027201735880665

`A181768(n+1)-A129167(n)`
-/

namespace A033321.P3521027201735880665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181768 (n + 1) - A129167 n

end

end A033321.P3521027201735880665

namespace A033321

/-- `A181768(n+1)-A129167(n)` -/
def P3521027201735880665.Spec : Prop :=
  ∀ n, P3521027201735880665.a n = A033321 n

end A033321

/-! ## A033321.P13599731330158332388

`Δ[A129167(n)]-A128714(n+1)`
-/

namespace A033321.P13599731330158332388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128714 (n + 1)

end

end A033321.P13599731330158332388

namespace A033321

/-- `Δ[A129167(n)]-A128714(n+1)` -/
def P13599731330158332388.Spec : Prop :=
  ∀ n, P13599731330158332388.a n = A033321 n

end A033321

/-! ## A033321.P15514855344097956027

`A055879(2*n+1)-A129167(n)`
-/

namespace A033321.P15514855344097956027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055879 (2 * n + 1) - A129167 n

end

end A033321.P15514855344097956027

namespace A033321

/-- `A055879(2*n+1)-A129167(n)` -/
def P15514855344097956027.Spec : Prop :=
  ∀ n, P15514855344097956027.a n = A033321 n

end A033321

/-! ## A033321.P10186047837203886091

`Δ[A129167(n)-A128714(n)]-A128714(n)`
-/

namespace A033321.P10186047837203886091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129167 n - A128714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A128714 n

end

end A033321.P10186047837203886091

namespace A033321

/-- `Δ[A129167(n)-A128714(n)]-A128714(n)` -/
def P10186047837203886091.Spec : Prop :=
  ∀ n, P10186047837203886091.a n = A033321 n

end A033321

/-! ## A033321.P17264204054413630722

`A126568(n)-A128732(n+1)`
-/

namespace A033321.P17264204054413630722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126568 n - A128732 (n + 1)

end

end A033321.P17264204054413630722

namespace A033321

/-- `A126568(n)-A128732(n+1)` -/
def P17264204054413630722.Spec : Prop :=
  ∀ n, P17264204054413630722.a n = A033321 n

end A033321

/-! ## A033321.P1087529411604748261

`((13*n-5)*a(n-1)-(16*n-23)*a(n-2)+5*(n-2)*a(n-3))/(2*(n+1))` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033321

/-- `((13*n-5)*a(n-1)-(16*n-23)*a(n-2)+5*(n-2)*a(n-3))/(2*(n+1))` -/
def P1087529411604748261.Spec : Prop :=
  ∀ n, P1087529411604748261.a n = (A033321 n : ℚ)

end A033321

/-! ## A033321.P9716956680503263567

`A110877(∑[n])`
-/

namespace A033321.P9716956680503263567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110877 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033321.P9716956680503263567

namespace A033321

/-- `A110877(∑[n])` -/
def P9716956680503263567.Spec : Prop :=
  ∀ n, P9716956680503263567.a n = A033321 n

end A033321

/-! ## A033321.P10781683631666680285

`A171486(∑[n])`
-/

namespace A033321.P10781683631666680285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171486 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033321.P10781683631666680285

namespace A033321

/-- `A171486(∑[n])` -/
def P10781683631666680285.Spec : Prop :=
  ∀ n, P10781683631666680285.a n = A033321 n

end A033321

/-!
# A033322: a(n) = floor(2/n).

The programs for A033322, the canonical program `A033322.P10661042017336140168` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033322 has offset 1).

The definition of A033322 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2/(n+1))` (program `A033322.P10661042017336140168`, by `A033322.P10661042017336140168.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033322.P10661042017336140168

`floor(2/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033322

/-- `floor(2/(n+1))` -/
def P10661042017336140168.Spec : Prop :=
  ∀ n, P10661042017336140168.a n = A033322 (n + 1)

theorem P10661042017336140168.correct : P10661042017336140168.Spec := by
  intro n
  simp only [A033322, Nat.add_sub_cancel]

end A033322

/-!
# A033323: Number of n-step self-avoiding walks on the square lattice having exactly 2 pairs of nonconsecutive vertices that are adjacent in the lattice.

The programs for A033323, there is no canonical definition to state claims against.
-/

/-! ## A033323.P12349921158806961957

`and(A002920(∑[n]), A003220(n))`
-/

namespace A033323.P12349921158806961957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002920 (∑ j ∈ Finset.range (n + 1), f1 j)) (A003220 n)

end

end A033323.P12349921158806961957

/-! ## A033323.P1378195023964822384

`A138002(A100621(n)-2^n)`
-/

namespace A033323.P1378195023964822384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138002 (A100621 n - (2 ^ n : ℤ)).toNat

end

end A033323.P1378195023964822384

/-! ## A033323.P14066549204366259235

`and(A283068(n+2), A284707(n))`
-/

namespace A033323.P14066549204366259235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A283068 (n + 2)) (A284707 n)

end

end A033323.P14066549204366259235

/-!
# A033324: a(n) = floor(4/n).

The programs for A033324, the canonical program `A033324.P267859825217889538` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033324 has offset 1).

The definition of A033324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4/(n+1))` (program `A033324.P267859825217889538`, by `A033324.P267859825217889538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033324.P267859825217889538

`floor(4/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033324

/-- `floor(4/(n+1))` -/
def P267859825217889538.Spec : Prop :=
  ∀ n, P267859825217889538.a n = A033324 (n + 1)

theorem P267859825217889538.correct : P267859825217889538.Spec := by
  intro n
  simp only [A033324, Nat.add_sub_cancel]

end A033324

/-!
# A033325: a(n) = floor(5/n).

The programs for A033325, the canonical program `A033325.P18128479342072502818` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033325 has offset 1).

The definition of A033325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5/(n+1))` (program `A033325.P18128479342072502818`, by `A033325.P18128479342072502818.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033325.P18128479342072502818

`floor(5/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033325

/-- `floor(5/(n+1))` -/
def P18128479342072502818.Spec : Prop :=
  ∀ n, P18128479342072502818.a n = A033325 (n + 1)

theorem P18128479342072502818.correct : P18128479342072502818.Spec := by
  intro n
  simp only [A033325, Nat.add_sub_cancel]

end A033325

/-!
# A033326: a(n) = floor(6/n).

The programs for A033326, the canonical program `A033326.P12039581122906463815` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033326 has offset 1).

The definition of A033326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(6/(n+1))` (program `A033326.P12039581122906463815`, by `A033326.P12039581122906463815.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033326.P12039581122906463815

`floor(6/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033326

/-- `floor(6/(n+1))` -/
def P12039581122906463815.Spec : Prop :=
  ∀ n, P12039581122906463815.a n = A033326 (n + 1)

theorem P12039581122906463815.correct : P12039581122906463815.Spec := by
  intro n
  simp only [A033326, Nat.add_sub_cancel]

end A033326

/-!
# A033327: a(n) = floor(7/n).

The programs for A033327, the canonical program `A033327.P13031224724409790988` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033327 has offset 1).

The definition of A033327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(7/(n+1))` (program `A033327.P13031224724409790988`, by `A033327.P13031224724409790988.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033327.P13031224724409790988

`floor(7/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033327

/-- `floor(7/(n+1))` -/
def P13031224724409790988.Spec : Prop :=
  ∀ n, P13031224724409790988.a n = A033327 (n + 1)

theorem P13031224724409790988.correct : P13031224724409790988.Spec := by
  intro n
  simp only [A033327, Nat.add_sub_cancel]

end A033327

/-!
# A033328: a(n) = floor(8/n).

The programs for A033328, the canonical program `A033328.P7635256929763377452` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033328 has offset 1).

The definition of A033328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(8/(n+1))` (program `A033328.P7635256929763377452`, by `A033328.P7635256929763377452.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033328.P7635256929763377452

`floor(8/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033328

/-- `floor(8/(n+1))` -/
def P7635256929763377452.Spec : Prop :=
  ∀ n, P7635256929763377452.a n = A033328 (n + 1)

theorem P7635256929763377452.correct : P7635256929763377452.Spec := by
  intro n
  simp only [A033328, Nat.add_sub_cancel]

end A033328

/-!
# A033329: a(n) = floor(9/n).

The programs for A033329, the canonical program `A033329.P431955637705700723` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033329 has offset 1).

The definition of A033329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(9/(n+1))` (program `A033329.P431955637705700723`, by `A033329.P431955637705700723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033329.P431955637705700723

`floor(9/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033329

/-- `floor(9/(n+1))` -/
def P431955637705700723.Spec : Prop :=
  ∀ n, P431955637705700723.a n = A033329 (n + 1)

theorem P431955637705700723.correct : P431955637705700723.Spec := by
  intro n
  simp only [A033329, Nat.add_sub_cancel]

end A033329

/-!
# A033330: a(n) = floor(10/n).

The programs for A033330, the canonical program `A033330.P2745976928680392281` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033330 has offset 1).

The definition of A033330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10/(n+1))` (program `A033330.P2745976928680392281`, by `A033330.P2745976928680392281.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033330.P2745976928680392281

`floor(10/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033330

/-- `floor(10/(n+1))` -/
def P2745976928680392281.Spec : Prop :=
  ∀ n, P2745976928680392281.a n = A033330 (n + 1)

theorem P2745976928680392281.correct : P2745976928680392281.Spec := by
  intro n
  simp only [A033330, Nat.add_sub_cancel]

end A033330

/-!
# A033331: a(n) = floor(11/n).

The programs for A033331, the canonical program `A033331.P12230596475661664193` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033331 has offset 1).

The definition of A033331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(11/(n+1))` (program `A033331.P12230596475661664193`, by `A033331.P12230596475661664193.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033331.P12230596475661664193

`floor(11/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033331

/-- `floor(11/(n+1))` -/
def P12230596475661664193.Spec : Prop :=
  ∀ n, P12230596475661664193.a n = A033331 (n + 1)

theorem P12230596475661664193.correct : P12230596475661664193.Spec := by
  intro n
  simp only [A033331, Nat.add_sub_cancel]

end A033331

/-!
# A033332: a(n) = floor(12/n).

The programs for A033332, the canonical program `A033332.P17128619209852991979` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033332 has offset 1).

The definition of A033332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(12/(n+1))` (program `A033332.P17128619209852991979`, by `A033332.P17128619209852991979.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033332.P17128619209852991979

`floor(12/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033332

/-- `floor(12/(n+1))` -/
def P17128619209852991979.Spec : Prop :=
  ∀ n, P17128619209852991979.a n = A033332 (n + 1)

theorem P17128619209852991979.correct : P17128619209852991979.Spec := by
  intro n
  simp only [A033332, Nat.add_sub_cancel]

end A033332

/-!
# A033333: a(n) = floor(13/n).

The programs for A033333, the canonical program `A033333.P17985627490657280797` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033333 has offset 1).

The definition of A033333 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(13/(n+1))` (program `A033333.P17985627490657280797`, by `A033333.P17985627490657280797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033333.P17985627490657280797

`floor(13/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033333

/-- `floor(13/(n+1))` -/
def P17985627490657280797.Spec : Prop :=
  ∀ n, P17985627490657280797.a n = A033333 (n + 1)

theorem P17985627490657280797.correct : P17985627490657280797.Spec := by
  intro n
  simp only [A033333, Nat.add_sub_cancel]

end A033333

/-!
# A033334: a(n) = floor(14/n).

The programs for A033334, the canonical program `A033334.P3397871742272411599` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033334 has offset 1).

The definition of A033334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(14/(n+1))` (program `A033334.P3397871742272411599`, by `A033334.P3397871742272411599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033334.P3397871742272411599

`floor(14/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033334

/-- `floor(14/(n+1))` -/
def P3397871742272411599.Spec : Prop :=
  ∀ n, P3397871742272411599.a n = A033334 (n + 1)

theorem P3397871742272411599.correct : P3397871742272411599.Spec := by
  intro n
  simp only [A033334, Nat.add_sub_cancel]

end A033334

/-!
# A033335: a(n) = floor(15/n).

The programs for A033335, the canonical program `A033335.P14701804051787364150` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033335 has offset 1).

The definition of A033335 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(15/(n+1))` (program `A033335.P14701804051787364150`, by `A033335.P14701804051787364150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033335.P14701804051787364150

`floor(15/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033335

/-- `floor(15/(n+1))` -/
def P14701804051787364150.Spec : Prop :=
  ∀ n, P14701804051787364150.a n = A033335 (n + 1)

theorem P14701804051787364150.correct : P14701804051787364150.Spec := by
  intro n
  simp only [A033335, Nat.add_sub_cancel]

end A033335

/-!
# A033336: a(n) = floor(16/n).

The programs for A033336, the canonical program `A033336.P5571390823724310695` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033336 has offset 1).

The definition of A033336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(16/(n+1))` (program `A033336.P5571390823724310695`, by `A033336.P5571390823724310695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033336.P5571390823724310695

`floor(16/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033336

/-- `floor(16/(n+1))` -/
def P5571390823724310695.Spec : Prop :=
  ∀ n, P5571390823724310695.a n = A033336 (n + 1)

theorem P5571390823724310695.correct : P5571390823724310695.Spec := by
  intro n
  simp only [A033336, Nat.add_sub_cancel]

end A033336

/-!
# A033337: a(n) = floor(17/n).

The programs for A033337, the canonical program `A033337.P9682801073484511926` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033337 has offset 1).

The definition of A033337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(17/(n+1))` (program `A033337.P9682801073484511926`, by `A033337.P9682801073484511926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033337.P9682801073484511926

`floor(17/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033337

/-- `floor(17/(n+1))` -/
def P9682801073484511926.Spec : Prop :=
  ∀ n, P9682801073484511926.a n = A033337 (n + 1)

theorem P9682801073484511926.correct : P9682801073484511926.Spec := by
  intro n
  simp only [A033337, Nat.add_sub_cancel]

end A033337

/-!
# A033338: a(n) = floor(18/n).

The programs for A033338, the canonical program `A033338.P11416961530016841808` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033338 has offset 1).

The definition of A033338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(18/(n+1))` (program `A033338.P11416961530016841808`, by `A033338.P11416961530016841808.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033338.P11416961530016841808

`floor(18/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033338

/-- `floor(18/(n+1))` -/
def P11416961530016841808.Spec : Prop :=
  ∀ n, P11416961530016841808.a n = A033338 (n + 1)

theorem P11416961530016841808.correct : P11416961530016841808.Spec := by
  intro n
  simp only [A033338, Nat.add_sub_cancel]

end A033338

/-!
# A033339: a(n) = floor(19/n).

The programs for A033339, the canonical program `A033339.P7824478824335321857` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033339 has offset 1).

The definition of A033339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(19/(n+1))` (program `A033339.P7824478824335321857`, by `A033339.P7824478824335321857.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033339.P7824478824335321857

`floor(19/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033339

/-- `floor(19/(n+1))` -/
def P7824478824335321857.Spec : Prop :=
  ∀ n, P7824478824335321857.a n = A033339 (n + 1)

theorem P7824478824335321857.correct : P7824478824335321857.Spec := by
  intro n
  simp only [A033339, Nat.add_sub_cancel]

end A033339

/-!
# A033340: a(n) = floor(20/n).

The programs for A033340, the canonical program `A033340.P9775122431312371644` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033340 has offset 1).

The definition of A033340 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(20/(n+1))` (program `A033340.P9775122431312371644`, by `A033340.P9775122431312371644.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033340.P9775122431312371644

`floor(20/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033340

/-- `floor(20/(n+1))` -/
def P9775122431312371644.Spec : Prop :=
  ∀ n, P9775122431312371644.a n = A033340 (n + 1)

theorem P9775122431312371644.correct : P9775122431312371644.Spec := by
  intro n
  simp only [A033340, Nat.add_sub_cancel]

end A033340

/-!
# A033341: a(n) = floor(21/n).

The programs for A033341, the canonical program `A033341.P10888171327742807561` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033341 has offset 1).

The definition of A033341 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(21/(n+1))` (program `A033341.P10888171327742807561`, by `A033341.P10888171327742807561.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033341.P10888171327742807561

`floor(21/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033341

/-- `floor(21/(n+1))` -/
def P10888171327742807561.Spec : Prop :=
  ∀ n, P10888171327742807561.a n = A033341 (n + 1)

theorem P10888171327742807561.correct : P10888171327742807561.Spec := by
  intro n
  simp only [A033341, Nat.add_sub_cancel]

end A033341

/-!
# A033342: a(n) = floor(22/n).

The programs for A033342, the canonical program `A033342.P12862972073241124468` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033342 has offset 1).

The definition of A033342 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(22/(n+1))` (program `A033342.P12862972073241124468`, by `A033342.P12862972073241124468.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033342.P12862972073241124468

`floor(22/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033342

/-- `floor(22/(n+1))` -/
def P12862972073241124468.Spec : Prop :=
  ∀ n, P12862972073241124468.a n = A033342 (n + 1)

theorem P12862972073241124468.correct : P12862972073241124468.Spec := by
  intro n
  simp only [A033342, Nat.add_sub_cancel]

end A033342

/-!
# A033343: a(n) = floor(23/n).

The programs for A033343, the canonical program `A033343.P18029008388524836615` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033343 has offset 1).

The definition of A033343 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(23/(n+1))` (program `A033343.P18029008388524836615`, by `A033343.P18029008388524836615.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033343.P18029008388524836615

`floor(23/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033343

/-- `floor(23/(n+1))` -/
def P18029008388524836615.Spec : Prop :=
  ∀ n, P18029008388524836615.a n = A033343 (n + 1)

theorem P18029008388524836615.correct : P18029008388524836615.Spec := by
  intro n
  simp only [A033343, Nat.add_sub_cancel]

end A033343

/-!
# A033344: a(n) = floor(24/n).

The programs for A033344, the canonical program `A033344.P16147635678017581784` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033344 has offset 1).

The definition of A033344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(24/(n+1))` (program `A033344.P16147635678017581784`, by `A033344.P16147635678017581784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033344.P16147635678017581784

`floor(24/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033344

/-- `floor(24/(n+1))` -/
def P16147635678017581784.Spec : Prop :=
  ∀ n, P16147635678017581784.a n = A033344 (n + 1)

theorem P16147635678017581784.correct : P16147635678017581784.Spec := by
  intro n
  simp only [A033344, Nat.add_sub_cancel]

end A033344

/-!
# A033345: a(n) = floor(25/n).

The programs for A033345, the canonical program `A033345.P10938923960645104945` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033345 has offset 1).

The definition of A033345 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(25/(n+1))` (program `A033345.P10938923960645104945`, by `A033345.P10938923960645104945.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033345.P10938923960645104945

`floor(25/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033345

/-- `floor(25/(n+1))` -/
def P10938923960645104945.Spec : Prop :=
  ∀ n, P10938923960645104945.a n = A033345 (n + 1)

theorem P10938923960645104945.correct : P10938923960645104945.Spec := by
  intro n
  simp only [A033345, Nat.add_sub_cancel]

end A033345

/-!
# A033346: a(n) = floor(26/n).

The programs for A033346, the canonical program `A033346.P8801767461489431630` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033346 has offset 1).

The definition of A033346 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(26/(n+1))` (program `A033346.P8801767461489431630`, by `A033346.P8801767461489431630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033346.P8801767461489431630

`floor(26/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033346

/-- `floor(26/(n+1))` -/
def P8801767461489431630.Spec : Prop :=
  ∀ n, P8801767461489431630.a n = A033346 (n + 1)

theorem P8801767461489431630.correct : P8801767461489431630.Spec := by
  intro n
  simp only [A033346, Nat.add_sub_cancel]

end A033346

/-!
# A033347: a(n) = floor(27/n).

The programs for A033347, the canonical program `A033347.P895070991898291280` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033347 has offset 1).

The definition of A033347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(27/(n+1))` (program `A033347.P895070991898291280`, by `A033347.P895070991898291280.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033347.P895070991898291280

`floor(27/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033347

/-- `floor(27/(n+1))` -/
def P895070991898291280.Spec : Prop :=
  ∀ n, P895070991898291280.a n = A033347 (n + 1)

theorem P895070991898291280.correct : P895070991898291280.Spec := by
  intro n
  simp only [A033347, Nat.add_sub_cancel]

end A033347

/-!
# A033348: a(n) = floor(28/n).

The programs for A033348, the canonical program `A033348.P8402618124055055723` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033348 has offset 1).

The definition of A033348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(28/(n+1))` (program `A033348.P8402618124055055723`, by `A033348.P8402618124055055723.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033348.P8402618124055055723

`floor(28/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033348

/-- `floor(28/(n+1))` -/
def P8402618124055055723.Spec : Prop :=
  ∀ n, P8402618124055055723.a n = A033348 (n + 1)

theorem P8402618124055055723.correct : P8402618124055055723.Spec := by
  intro n
  simp only [A033348, Nat.add_sub_cancel]

end A033348

/-!
# A033349: a(n) = floor(29/n).

The programs for A033349, the canonical program `A033349.P11866605943968664551` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033349 has offset 1).

The definition of A033349 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(29/(n+1))` (program `A033349.P11866605943968664551`, by `A033349.P11866605943968664551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033349.P11866605943968664551

`floor(29/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033349

/-- `floor(29/(n+1))` -/
def P11866605943968664551.Spec : Prop :=
  ∀ n, P11866605943968664551.a n = A033349 (n + 1)

theorem P11866605943968664551.correct : P11866605943968664551.Spec := by
  intro n
  simp only [A033349, Nat.add_sub_cancel]

end A033349

/-!
# A033350: a(n) = floor(30/n).

The programs for A033350, the canonical program `A033350.P18260018799401890556` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033350 has offset 1).

The definition of A033350 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(30/(n+1))` (program `A033350.P18260018799401890556`, by `A033350.P18260018799401890556.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033350.P18260018799401890556

`floor(30/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033350

/-- `floor(30/(n+1))` -/
def P18260018799401890556.Spec : Prop :=
  ∀ n, P18260018799401890556.a n = A033350 (n + 1)

theorem P18260018799401890556.correct : P18260018799401890556.Spec := by
  intro n
  simp only [A033350, Nat.add_sub_cancel]

end A033350

/-!
# A033351: a(n) = floor(31/n).

The programs for A033351, the canonical program `A033351.P7902839004448299666` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033351 has offset 1).

The definition of A033351 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(31/(n+1))` (program `A033351.P7902839004448299666`, by `A033351.P7902839004448299666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033351.P7902839004448299666

`floor(31/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033351

/-- `floor(31/(n+1))` -/
def P7902839004448299666.Spec : Prop :=
  ∀ n, P7902839004448299666.a n = A033351 (n + 1)

theorem P7902839004448299666.correct : P7902839004448299666.Spec := by
  intro n
  simp only [A033351, Nat.add_sub_cancel]

end A033351

/-!
# A033352: a(n) = floor(32/n).

The programs for A033352, the canonical program `A033352.P3631358451175469448` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033352 has offset 1).

The definition of A033352 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(32/(n+1))` (program `A033352.P3631358451175469448`, by `A033352.P3631358451175469448.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033352.P3631358451175469448

`floor(32/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033352

/-- `floor(32/(n+1))` -/
def P3631358451175469448.Spec : Prop :=
  ∀ n, P3631358451175469448.a n = A033352 (n + 1)

theorem P3631358451175469448.correct : P3631358451175469448.Spec := by
  intro n
  simp only [A033352, Nat.add_sub_cancel]

end A033352

/-!
# A033353: a(n) = floor(33/n).

The programs for A033353, the canonical program `A033353.P4354147013404905932` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033353 has offset 1).

The definition of A033353 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(33/(n+1))` (program `A033353.P4354147013404905932`, by `A033353.P4354147013404905932.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033353.P4354147013404905932

`floor(33/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033353

/-- `floor(33/(n+1))` -/
def P4354147013404905932.Spec : Prop :=
  ∀ n, P4354147013404905932.a n = A033353 (n + 1)

theorem P4354147013404905932.correct : P4354147013404905932.Spec := by
  intro n
  simp only [A033353, Nat.add_sub_cancel]

end A033353

/-!
# A033354: a(n) = floor(34/n).

The programs for A033354, the canonical program `A033354.P16614780606610598303` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033354 has offset 1).

The definition of A033354 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(34/(n+1))` (program `A033354.P16614780606610598303`, by `A033354.P16614780606610598303.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033354.P16614780606610598303

`floor(34/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033354

/-- `floor(34/(n+1))` -/
def P16614780606610598303.Spec : Prop :=
  ∀ n, P16614780606610598303.a n = A033354 (n + 1)

theorem P16614780606610598303.correct : P16614780606610598303.Spec := by
  intro n
  simp only [A033354, Nat.add_sub_cancel]

end A033354

/-!
# A033355: a(n) = floor(35/n).

The programs for A033355, the canonical program `A033355.P7197380467971503113` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033355 has offset 1).

The definition of A033355 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(35/(n+1))` (program `A033355.P7197380467971503113`, by `A033355.P7197380467971503113.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033355.P7197380467971503113

`floor(35/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033355

/-- `floor(35/(n+1))` -/
def P7197380467971503113.Spec : Prop :=
  ∀ n, P7197380467971503113.a n = A033355 (n + 1)

theorem P7197380467971503113.correct : P7197380467971503113.Spec := by
  intro n
  simp only [A033355, Nat.add_sub_cancel]

end A033355

/-!
# A033356: a(n) = floor(36/n).

The programs for A033356, the canonical program `A033356.P10995569879771057827` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033356 has offset 1).

The definition of A033356 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(36/(n+1))` (program `A033356.P10995569879771057827`, by `A033356.P10995569879771057827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033356.P10995569879771057827

`floor(36/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033356

/-- `floor(36/(n+1))` -/
def P10995569879771057827.Spec : Prop :=
  ∀ n, P10995569879771057827.a n = A033356 (n + 1)

theorem P10995569879771057827.correct : P10995569879771057827.Spec := by
  intro n
  simp only [A033356, Nat.add_sub_cancel]

end A033356

/-!
# A033357: a(n) = floor(37/n).

The programs for A033357, the canonical program `A033357.P11280391449592940450` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033357 has offset 1).

The definition of A033357 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(37/(n+1))` (program `A033357.P11280391449592940450`, by `A033357.P11280391449592940450.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033357.P11280391449592940450

`floor(37/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033357

/-- `floor(37/(n+1))` -/
def P11280391449592940450.Spec : Prop :=
  ∀ n, P11280391449592940450.a n = A033357 (n + 1)

theorem P11280391449592940450.correct : P11280391449592940450.Spec := by
  intro n
  simp only [A033357, Nat.add_sub_cancel]

end A033357

/-!
# A033358: a(n) = floor(38/n).

The programs for A033358, the canonical program `A033358.P7788357779130836001` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033358 has offset 1).

The definition of A033358 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(38/(n+1))` (program `A033358.P7788357779130836001`, by `A033358.P7788357779130836001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033358.P7788357779130836001

`floor(38/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033358

/-- `floor(38/(n+1))` -/
def P7788357779130836001.Spec : Prop :=
  ∀ n, P7788357779130836001.a n = A033358 (n + 1)

theorem P7788357779130836001.correct : P7788357779130836001.Spec := by
  intro n
  simp only [A033358, Nat.add_sub_cancel]

end A033358

/-!
# A033359: a(n) = floor(39/n).

The programs for A033359, the canonical program `A033359.P14984952663833124963` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033359 has offset 1).

The definition of A033359 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(39/(n+1))` (program `A033359.P14984952663833124963`, by `A033359.P14984952663833124963.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033359.P14984952663833124963

`floor(39/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033359

/-- `floor(39/(n+1))` -/
def P14984952663833124963.Spec : Prop :=
  ∀ n, P14984952663833124963.a n = A033359 (n + 1)

theorem P14984952663833124963.correct : P14984952663833124963.Spec := by
  intro n
  simp only [A033359, Nat.add_sub_cancel]

end A033359

/-!
# A033360: a(n) = floor(40/n).

The programs for A033360, the canonical program `A033360.P17945925405977670057` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033360 has offset 1).

The definition of A033360 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(40/(n+1))` (program `A033360.P17945925405977670057`, by `A033360.P17945925405977670057.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033360.P17945925405977670057

`floor(40/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033360

/-- `floor(40/(n+1))` -/
def P17945925405977670057.Spec : Prop :=
  ∀ n, P17945925405977670057.a n = A033360 (n + 1)

theorem P17945925405977670057.correct : P17945925405977670057.Spec := by
  intro n
  simp only [A033360, Nat.add_sub_cancel]

end A033360

/-!
# A033361: a(n) = floor(41/n).

The programs for A033361, the canonical program `A033361.P9353841550052705730` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033361 has offset 1).

The definition of A033361 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(41/(n+1))` (program `A033361.P9353841550052705730`, by `A033361.P9353841550052705730.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033361.P9353841550052705730

`floor(41/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033361

/-- `floor(41/(n+1))` -/
def P9353841550052705730.Spec : Prop :=
  ∀ n, P9353841550052705730.a n = A033361 (n + 1)

theorem P9353841550052705730.correct : P9353841550052705730.Spec := by
  intro n
  simp only [A033361, Nat.add_sub_cancel]

end A033361

/-!
# A033362: a(n) = floor(42/n).

The programs for A033362, the canonical program `A033362.P9123457569386260397` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033362 has offset 1).

The definition of A033362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(42/(n+1))` (program `A033362.P9123457569386260397`, by `A033362.P9123457569386260397.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033362.P9123457569386260397

`floor(42/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033362

/-- `floor(42/(n+1))` -/
def P9123457569386260397.Spec : Prop :=
  ∀ n, P9123457569386260397.a n = A033362 (n + 1)

theorem P9123457569386260397.correct : P9123457569386260397.Spec := by
  intro n
  simp only [A033362, Nat.add_sub_cancel]

end A033362

/-!
# A033363: a(n) = floor(43/n).

The programs for A033363, the canonical program `A033363.P16460696938423946881` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033363 has offset 1).

The definition of A033363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(43/(n+1))` (program `A033363.P16460696938423946881`, by `A033363.P16460696938423946881.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033363.P16460696938423946881

`floor(43/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033363

/-- `floor(43/(n+1))` -/
def P16460696938423946881.Spec : Prop :=
  ∀ n, P16460696938423946881.a n = A033363 (n + 1)

theorem P16460696938423946881.correct : P16460696938423946881.Spec := by
  intro n
  simp only [A033363, Nat.add_sub_cancel]

end A033363

/-!
# A033364: a(n) = floor(44/n).

The programs for A033364, the canonical program `A033364.P2156816341113294780` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033364 has offset 1).

The definition of A033364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(44/(n+1))` (program `A033364.P2156816341113294780`, by `A033364.P2156816341113294780.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033364.P2156816341113294780

`floor(44/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033364

/-- `floor(44/(n+1))` -/
def P2156816341113294780.Spec : Prop :=
  ∀ n, P2156816341113294780.a n = A033364 (n + 1)

theorem P2156816341113294780.correct : P2156816341113294780.Spec := by
  intro n
  simp only [A033364, Nat.add_sub_cancel]

end A033364

/-!
# A033365: a(n) = floor(45/n).

The programs for A033365, the canonical program `A033365.P7763863847026568150` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033365 has offset 1).

The definition of A033365 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(45/(n+1))` (program `A033365.P7763863847026568150`, by `A033365.P7763863847026568150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033365.P7763863847026568150

`floor(45/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033365

/-- `floor(45/(n+1))` -/
def P7763863847026568150.Spec : Prop :=
  ∀ n, P7763863847026568150.a n = A033365 (n + 1)

theorem P7763863847026568150.correct : P7763863847026568150.Spec := by
  intro n
  simp only [A033365, Nat.add_sub_cancel]

end A033365

/-!
# A033366: a(n) = floor(46/n).

The programs for A033366, the canonical program `A033366.P16372693595778826324` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033366 has offset 1).

The definition of A033366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(46/(n+1))` (program `A033366.P16372693595778826324`, by `A033366.P16372693595778826324.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033366.P16372693595778826324

`floor(46/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033366

/-- `floor(46/(n+1))` -/
def P16372693595778826324.Spec : Prop :=
  ∀ n, P16372693595778826324.a n = A033366 (n + 1)

theorem P16372693595778826324.correct : P16372693595778826324.Spec := by
  intro n
  simp only [A033366, Nat.add_sub_cancel]

end A033366

/-!
# A033367: a(n) = floor(47/n).

The programs for A033367, the canonical program `A033367.P6905699588638510118` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033367 has offset 1).

The definition of A033367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(47/(n+1))` (program `A033367.P6905699588638510118`, by `A033367.P6905699588638510118.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033367.P6905699588638510118

`floor(47/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033367

/-- `floor(47/(n+1))` -/
def P6905699588638510118.Spec : Prop :=
  ∀ n, P6905699588638510118.a n = A033367 (n + 1)

theorem P6905699588638510118.correct : P6905699588638510118.Spec := by
  intro n
  simp only [A033367, Nat.add_sub_cancel]

end A033367

/-!
# A033368: a(n) = floor(48/n).

The programs for A033368, the canonical program `A033368.P1496544220488322821` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033368 has offset 1).

The definition of A033368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(48/(n+1))` (program `A033368.P1496544220488322821`, by `A033368.P1496544220488322821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033368.P1496544220488322821

`floor(48/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033368

/-- `floor(48/(n+1))` -/
def P1496544220488322821.Spec : Prop :=
  ∀ n, P1496544220488322821.a n = A033368 (n + 1)

theorem P1496544220488322821.correct : P1496544220488322821.Spec := by
  intro n
  simp only [A033368, Nat.add_sub_cancel]

end A033368

/-!
# A033369: a(n) = floor(49/n).

The programs for A033369, the canonical program `A033369.P13664539472662378131` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033369 has offset 1).

The definition of A033369 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(49/(n+1))` (program `A033369.P13664539472662378131`, by `A033369.P13664539472662378131.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033369.P13664539472662378131

`floor(49/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033369

/-- `floor(49/(n+1))` -/
def P13664539472662378131.Spec : Prop :=
  ∀ n, P13664539472662378131.a n = A033369 (n + 1)

theorem P13664539472662378131.correct : P13664539472662378131.Spec := by
  intro n
  simp only [A033369, Nat.add_sub_cancel]

end A033369

/-!
# A033370: a(n) = floor(50/n).

The programs for A033370, the canonical program `A033370.P15543381943246283799` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033370 has offset 1).

The definition of A033370 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(50/(n+1))` (program `A033370.P15543381943246283799`, by `A033370.P15543381943246283799.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033370.P15543381943246283799

`floor(50/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033370

/-- `floor(50/(n+1))` -/
def P15543381943246283799.Spec : Prop :=
  ∀ n, P15543381943246283799.a n = A033370 (n + 1)

theorem P15543381943246283799.correct : P15543381943246283799.Spec := by
  intro n
  simp only [A033370, Nat.add_sub_cancel]

end A033370

/-!
# A033371: a(n) = floor(51/n).

The programs for A033371, the canonical program `A033371.P11612853289697698190` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033371 has offset 1).

The definition of A033371 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(51/(n+1))` (program `A033371.P11612853289697698190`, by `A033371.P11612853289697698190.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033371.P11612853289697698190

`floor(51/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033371

/-- `floor(51/(n+1))` -/
def P11612853289697698190.Spec : Prop :=
  ∀ n, P11612853289697698190.a n = A033371 (n + 1)

theorem P11612853289697698190.correct : P11612853289697698190.Spec := by
  intro n
  simp only [A033371, Nat.add_sub_cancel]

end A033371

/-!
# A033372: a(n) = floor(52/n).

The programs for A033372, the canonical program `A033372.P251646567336660288` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033372 has offset 1).

The definition of A033372 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(52/(n+1))` (program `A033372.P251646567336660288`, by `A033372.P251646567336660288.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033372.P251646567336660288

`floor(52/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033372

/-- `floor(52/(n+1))` -/
def P251646567336660288.Spec : Prop :=
  ∀ n, P251646567336660288.a n = A033372 (n + 1)

theorem P251646567336660288.correct : P251646567336660288.Spec := by
  intro n
  simp only [A033372, Nat.add_sub_cancel]

end A033372

/-!
# A033373: a(n) = floor(53/n).

The programs for A033373, the canonical program `A033373.P1059882403494983621` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033373 has offset 1).

The definition of A033373 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(53/(n+1))` (program `A033373.P1059882403494983621`, by `A033373.P1059882403494983621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033373.P1059882403494983621

`floor(53/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033373

/-- `floor(53/(n+1))` -/
def P1059882403494983621.Spec : Prop :=
  ∀ n, P1059882403494983621.a n = A033373 (n + 1)

theorem P1059882403494983621.correct : P1059882403494983621.Spec := by
  intro n
  simp only [A033373, Nat.add_sub_cancel]

end A033373

/-!
# A033374: a(n) = floor(54/n).

The programs for A033374, the canonical program `A033374.P12194184412181413842` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033374 has offset 1).

The definition of A033374 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(54/(n+1))` (program `A033374.P12194184412181413842`, by `A033374.P12194184412181413842.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033374.P12194184412181413842

`floor(54/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033374

/-- `floor(54/(n+1))` -/
def P12194184412181413842.Spec : Prop :=
  ∀ n, P12194184412181413842.a n = A033374 (n + 1)

theorem P12194184412181413842.correct : P12194184412181413842.Spec := by
  intro n
  simp only [A033374, Nat.add_sub_cancel]

end A033374

/-!
# A033375: a(n) = floor(55/n).

The programs for A033375, the canonical program `A033375.P9648276165694226891` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033375 has offset 1).

The definition of A033375 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(55/(n+1))` (program `A033375.P9648276165694226891`, by `A033375.P9648276165694226891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033375.P9648276165694226891

`floor(55/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033375

/-- `floor(55/(n+1))` -/
def P9648276165694226891.Spec : Prop :=
  ∀ n, P9648276165694226891.a n = A033375 (n + 1)

theorem P9648276165694226891.correct : P9648276165694226891.Spec := by
  intro n
  simp only [A033375, Nat.add_sub_cancel]

end A033375

/-!
# A033376: a(n) = floor(56/n).

The programs for A033376, the canonical program `A033376.P1019791730381744021` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033376 has offset 1).

The definition of A033376 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(56/(n+1))` (program `A033376.P1019791730381744021`, by `A033376.P1019791730381744021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033376.P1019791730381744021

`floor(56/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033376

/-- `floor(56/(n+1))` -/
def P1019791730381744021.Spec : Prop :=
  ∀ n, P1019791730381744021.a n = A033376 (n + 1)

theorem P1019791730381744021.correct : P1019791730381744021.Spec := by
  intro n
  simp only [A033376, Nat.add_sub_cancel]

end A033376

/-!
# A033377: a(n) = floor(57/n).

The programs for A033377, the canonical program `A033377.P4201601955909183813` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033377 has offset 1).

The definition of A033377 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(57/(n+1))` (program `A033377.P4201601955909183813`, by `A033377.P4201601955909183813.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033377.P4201601955909183813

`floor(57/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033377

/-- `floor(57/(n+1))` -/
def P4201601955909183813.Spec : Prop :=
  ∀ n, P4201601955909183813.a n = A033377 (n + 1)

theorem P4201601955909183813.correct : P4201601955909183813.Spec := by
  intro n
  simp only [A033377, Nat.add_sub_cancel]

end A033377

/-!
# A033378: a(n) = floor(58/n).

The programs for A033378, the canonical program `A033378.P18275529362684401583` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033378 has offset 1).

The definition of A033378 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(58/(n+1))` (program `A033378.P18275529362684401583`, by `A033378.P18275529362684401583.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033378.P18275529362684401583

`floor(58/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033378

/-- `floor(58/(n+1))` -/
def P18275529362684401583.Spec : Prop :=
  ∀ n, P18275529362684401583.a n = A033378 (n + 1)

theorem P18275529362684401583.correct : P18275529362684401583.Spec := by
  intro n
  simp only [A033378, Nat.add_sub_cancel]

end A033378

/-!
# A033379: a(n) = floor(59/n).

The programs for A033379, the canonical program `A033379.P2524661576409911797` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033379 has offset 1).

The definition of A033379 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(59/(n+1))` (program `A033379.P2524661576409911797`, by `A033379.P2524661576409911797.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033379.P2524661576409911797

`floor(59/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033379

/-- `floor(59/(n+1))` -/
def P2524661576409911797.Spec : Prop :=
  ∀ n, P2524661576409911797.a n = A033379 (n + 1)

theorem P2524661576409911797.correct : P2524661576409911797.Spec := by
  intro n
  simp only [A033379, Nat.add_sub_cancel]

end A033379

/-!
# A033380: a(n) = floor(60/n).

The programs for A033380, the canonical program `A033380.P16740819864826537935` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033380 has offset 1).

The definition of A033380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(60/(n+1))` (program `A033380.P16740819864826537935`, by `A033380.P16740819864826537935.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033380.P16740819864826537935

`floor(60/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033380

/-- `floor(60/(n+1))` -/
def P16740819864826537935.Spec : Prop :=
  ∀ n, P16740819864826537935.a n = A033380 (n + 1)

theorem P16740819864826537935.correct : P16740819864826537935.Spec := by
  intro n
  simp only [A033380, Nat.add_sub_cancel]

end A033380

/-!
# A033381: a(n) = floor(61/n).

The programs for A033381, the canonical program `A033381.P12049254811289537547` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033381 has offset 1).

The definition of A033381 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(61/(n+1))` (program `A033381.P12049254811289537547`, by `A033381.P12049254811289537547.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033381.P12049254811289537547

`floor(61/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033381

/-- `floor(61/(n+1))` -/
def P12049254811289537547.Spec : Prop :=
  ∀ n, P12049254811289537547.a n = A033381 (n + 1)

theorem P12049254811289537547.correct : P12049254811289537547.Spec := by
  intro n
  simp only [A033381, Nat.add_sub_cancel]

end A033381

/-!
# A033382: a(n) = floor(62/n).

The programs for A033382, the canonical program `A033382.P14060076835672174493` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033382 has offset 1).

The definition of A033382 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(62/(n+1))` (program `A033382.P14060076835672174493`, by `A033382.P14060076835672174493.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033382.P14060076835672174493

`floor(62/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033382

/-- `floor(62/(n+1))` -/
def P14060076835672174493.Spec : Prop :=
  ∀ n, P14060076835672174493.a n = A033382 (n + 1)

theorem P14060076835672174493.correct : P14060076835672174493.Spec := by
  intro n
  simp only [A033382, Nat.add_sub_cancel]

end A033382

/-!
# A033383: a(n) = floor(63/n).

The programs for A033383, the canonical program `A033383.P9476934186603377317` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033383 has offset 1).

The definition of A033383 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(63/(n+1))` (program `A033383.P9476934186603377317`, by `A033383.P9476934186603377317.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033383.P9476934186603377317

`floor(63/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033383

/-- `floor(63/(n+1))` -/
def P9476934186603377317.Spec : Prop :=
  ∀ n, P9476934186603377317.a n = A033383 (n + 1)

theorem P9476934186603377317.correct : P9476934186603377317.Spec := by
  intro n
  simp only [A033383, Nat.add_sub_cancel]

end A033383

/-!
# A033384: a(n) = floor(64/n).

The programs for A033384, the canonical program `A033384.P4933226705847640246` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033384 has offset 1).

The definition of A033384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(64/(n+1))` (program `A033384.P4933226705847640246`, by `A033384.P4933226705847640246.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033384.P4933226705847640246

`floor(64/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033384

/-- `floor(64/(n+1))` -/
def P4933226705847640246.Spec : Prop :=
  ∀ n, P4933226705847640246.a n = A033384 (n + 1)

theorem P4933226705847640246.correct : P4933226705847640246.Spec := by
  intro n
  simp only [A033384, Nat.add_sub_cancel]

end A033384

/-!
# A033385: a(n) = floor(65/n).

The programs for A033385, the canonical program `A033385.P4405755337041566742` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033385 has offset 1).

The definition of A033385 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(65/(n+1))` (program `A033385.P4405755337041566742`, by `A033385.P4405755337041566742.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033385.P4405755337041566742

`floor(65/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033385

/-- `floor(65/(n+1))` -/
def P4405755337041566742.Spec : Prop :=
  ∀ n, P4405755337041566742.a n = A033385 (n + 1)

theorem P4405755337041566742.correct : P4405755337041566742.Spec := by
  intro n
  simp only [A033385, Nat.add_sub_cancel]

end A033385

/-!
# A033386: a(n) = floor(66/n).

The programs for A033386, the canonical program `A033386.P4250292014064774385` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033386 has offset 1).

The definition of A033386 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(66/(n+1))` (program `A033386.P4250292014064774385`, by `A033386.P4250292014064774385.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033386.P4250292014064774385

`floor(66/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033386

/-- `floor(66/(n+1))` -/
def P4250292014064774385.Spec : Prop :=
  ∀ n, P4250292014064774385.a n = A033386 (n + 1)

theorem P4250292014064774385.correct : P4250292014064774385.Spec := by
  intro n
  simp only [A033386, Nat.add_sub_cancel]

end A033386

/-!
# A033387: a(n) = floor(67/n).

The programs for A033387, the canonical program `A033387.P10137596507146853879` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033387 has offset 1).

The definition of A033387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(67/(n+1))` (program `A033387.P10137596507146853879`, by `A033387.P10137596507146853879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033387.P10137596507146853879

`floor(67/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033387

/-- `floor(67/(n+1))` -/
def P10137596507146853879.Spec : Prop :=
  ∀ n, P10137596507146853879.a n = A033387 (n + 1)

theorem P10137596507146853879.correct : P10137596507146853879.Spec := by
  intro n
  simp only [A033387, Nat.add_sub_cancel]

end A033387

/-!
# A033388: a(n) = floor(68/n).

The programs for A033388, the canonical program `A033388.P10761764277560898756` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033388 has offset 1).

The definition of A033388 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(68/(n+1))` (program `A033388.P10761764277560898756`, by `A033388.P10761764277560898756.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033388.P10761764277560898756

`floor(68/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033388

/-- `floor(68/(n+1))` -/
def P10761764277560898756.Spec : Prop :=
  ∀ n, P10761764277560898756.a n = A033388 (n + 1)

theorem P10761764277560898756.correct : P10761764277560898756.Spec := by
  intro n
  simp only [A033388, Nat.add_sub_cancel]

end A033388

/-!
# A033389: a(n) = floor(69/n).

The programs for A033389, the canonical program `A033389.P7963017522923257159` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033389 has offset 1).

The definition of A033389 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(69/(n+1))` (program `A033389.P7963017522923257159`, by `A033389.P7963017522923257159.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033389.P7963017522923257159

`floor(69/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033389

/-- `floor(69/(n+1))` -/
def P7963017522923257159.Spec : Prop :=
  ∀ n, P7963017522923257159.a n = A033389 (n + 1)

theorem P7963017522923257159.correct : P7963017522923257159.Spec := by
  intro n
  simp only [A033389, Nat.add_sub_cancel]

end A033389

/-!
# A033390: a(n) = floor(70/n).

The programs for A033390, the canonical program `A033390.P1980181315400635490` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033390 has offset 1).

The definition of A033390 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(70/(n+1))` (program `A033390.P1980181315400635490`, by `A033390.P1980181315400635490.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033390.P1980181315400635490

`floor(70/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033390

/-- `floor(70/(n+1))` -/
def P1980181315400635490.Spec : Prop :=
  ∀ n, P1980181315400635490.a n = A033390 (n + 1)

theorem P1980181315400635490.correct : P1980181315400635490.Spec := by
  intro n
  simp only [A033390, Nat.add_sub_cancel]

end A033390

/-!
# A033391: a(n) = floor(71/n).

The programs for A033391, the canonical program `A033391.P153661629736608754` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033391 has offset 1).

The definition of A033391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(71/(n+1))` (program `A033391.P153661629736608754`, by `A033391.P153661629736608754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033391.P153661629736608754

`floor(71/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033391

/-- `floor(71/(n+1))` -/
def P153661629736608754.Spec : Prop :=
  ∀ n, P153661629736608754.a n = A033391 (n + 1)

theorem P153661629736608754.correct : P153661629736608754.Spec := by
  intro n
  simp only [A033391, Nat.add_sub_cancel]

end A033391

/-!
# A033392: a(n) = floor(72/n).

The programs for A033392, the canonical program `A033392.P3514673563966828149` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033392 has offset 1).

The definition of A033392 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(72/(n+1))` (program `A033392.P3514673563966828149`, by `A033392.P3514673563966828149.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033392.P3514673563966828149

`floor(72/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033392

/-- `floor(72/(n+1))` -/
def P3514673563966828149.Spec : Prop :=
  ∀ n, P3514673563966828149.a n = A033392 (n + 1)

theorem P3514673563966828149.correct : P3514673563966828149.Spec := by
  intro n
  simp only [A033392, Nat.add_sub_cancel]

end A033392

/-!
# A033393: a(n) = floor(73/n).

The programs for A033393, the canonical program `A033393.P14839312737289854872` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033393 has offset 1).

The definition of A033393 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(73/(n+1))` (program `A033393.P14839312737289854872`, by `A033393.P14839312737289854872.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033393.P14839312737289854872

`floor(73/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033393

/-- `floor(73/(n+1))` -/
def P14839312737289854872.Spec : Prop :=
  ∀ n, P14839312737289854872.a n = A033393 (n + 1)

theorem P14839312737289854872.correct : P14839312737289854872.Spec := by
  intro n
  simp only [A033393, Nat.add_sub_cancel]

end A033393

/-!
# A033394: a(n) = floor(74/n).

The programs for A033394, the canonical program `A033394.P16179504133041701258` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033394 has offset 1).

The definition of A033394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(74/(n+1))` (program `A033394.P16179504133041701258`, by `A033394.P16179504133041701258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033394.P16179504133041701258

`floor(74/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033394

/-- `floor(74/(n+1))` -/
def P16179504133041701258.Spec : Prop :=
  ∀ n, P16179504133041701258.a n = A033394 (n + 1)

theorem P16179504133041701258.correct : P16179504133041701258.Spec := by
  intro n
  simp only [A033394, Nat.add_sub_cancel]

end A033394

/-!
# A033395: a(n) = floor(75/n).

The programs for A033395, the canonical program `A033395.P17648903578232394347` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033395 has offset 1).

The definition of A033395 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(75/(n+1))` (program `A033395.P17648903578232394347`, by `A033395.P17648903578232394347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033395.P17648903578232394347

`floor(75/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033395

/-- `floor(75/(n+1))` -/
def P17648903578232394347.Spec : Prop :=
  ∀ n, P17648903578232394347.a n = A033395 (n + 1)

theorem P17648903578232394347.correct : P17648903578232394347.Spec := by
  intro n
  simp only [A033395, Nat.add_sub_cancel]

end A033395

/-!
# A033396: a(n) = floor(76/n).

The programs for A033396, the canonical program `A033396.P16883441841738454133` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033396 has offset 1).

The definition of A033396 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(76/(n+1))` (program `A033396.P16883441841738454133`, by `A033396.P16883441841738454133.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033396.P16883441841738454133

`floor(76/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033396

/-- `floor(76/(n+1))` -/
def P16883441841738454133.Spec : Prop :=
  ∀ n, P16883441841738454133.a n = A033396 (n + 1)

theorem P16883441841738454133.correct : P16883441841738454133.Spec := by
  intro n
  simp only [A033396, Nat.add_sub_cancel]

end A033396

/-!
# A033397: a(n) = floor(77/n).

The programs for A033397, the canonical program `A033397.P2268795748100289697` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033397 has offset 1).

The definition of A033397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(77/(n+1))` (program `A033397.P2268795748100289697`, by `A033397.P2268795748100289697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033397.P2268795748100289697

`floor(77/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033397

/-- `floor(77/(n+1))` -/
def P2268795748100289697.Spec : Prop :=
  ∀ n, P2268795748100289697.a n = A033397 (n + 1)

theorem P2268795748100289697.correct : P2268795748100289697.Spec := by
  intro n
  simp only [A033397, Nat.add_sub_cancel]

end A033397

/-!
# A033398: a(n) = floor(78/n).

The programs for A033398, the canonical program `A033398.P16145874250707212007` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033398 has offset 1).

The definition of A033398 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(78/(n+1))` (program `A033398.P16145874250707212007`, by `A033398.P16145874250707212007.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033398.P16145874250707212007

`floor(78/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033398

/-- `floor(78/(n+1))` -/
def P16145874250707212007.Spec : Prop :=
  ∀ n, P16145874250707212007.a n = A033398 (n + 1)

theorem P16145874250707212007.correct : P16145874250707212007.Spec := by
  intro n
  simp only [A033398, Nat.add_sub_cancel]

end A033398

/-!
# A033399: a(n) = floor(79/n).

The programs for A033399, the canonical program `A033399.P3479882194671767225` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033399 has offset 1).

The definition of A033399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(79/(n+1))` (program `A033399.P3479882194671767225`, by `A033399.P3479882194671767225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033399.P3479882194671767225

`floor(79/(n+1))`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033399

/-- `floor(79/(n+1))` -/
def P3479882194671767225.Spec : Prop :=
  ∀ n, P3479882194671767225.a n = A033399 (n + 1)

theorem P3479882194671767225.correct : P3479882194671767225.Spec := by
  intro n
  simp only [A033399, Nat.add_sub_cancel]

end A033399

