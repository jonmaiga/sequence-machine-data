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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
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

/-!
# A315400: Coordination sequence Gal.6.256.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315400, the canonical program `A315400.P9155162697410985556` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315400 has offset 0).

The definition of A315400 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2449 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315400.P12608351234550257753

`A315683(n)-∑[A131735(n)]`
-/

namespace A315400.P12608351234550257753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315400.P12608351234550257753

namespace A315400

/-- `A315683(n)-∑[A131735(n)]` -/
def P12608351234550257753.Spec : Prop :=
  ∀ n, P12608351234550257753.a n = A315400 n

end A315400

/-! ## A315400.P9155162697410985556

`A313474(n)+n-∑[A131735(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315400

/-- `A313474(n)+n-∑[A131735(n)]` -/
def P9155162697410985556.Spec : Prop :=
  ∀ n, P9155162697410985556.a n = A315400 n

theorem P9155162697410985556.correct : P9155162697410985556.Spec := by
  intro n
  simp only [A315400]

end A315400

/-! ## A315400.P15453384650425187007

`A313474(n)+A004525(A004396(n))`
-/

namespace A315400.P15453384650425187007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + A004525 (A004396 n).toNat

end

end A315400.P15453384650425187007

namespace A315400

/-- `A313474(n)+A004525(A004396(n))` -/
def P15453384650425187007.Spec : Prop :=
  ∀ n, P15453384650425187007.a n = A315400 n

end A315400

/-! ## A315400.P7851513589592956079

`A004525(A004396(n))+A315683(n)-n`
-/

namespace A315400.P7851513589592956079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315683 n - (n : ℤ))

end

end A315400.P7851513589592956079

namespace A315400

/-- `A004525(A004396(n))+A315683(n)-n` -/
def P7851513589592956079.Spec : Prop :=
  ∀ n, P7851513589592956079.a n = A315400 n

end A315400

/-! ## A315400.P2759837684315524027

`A313717(n)+A128834(n)`
-/

namespace A315400.P2759837684315524027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + A128834 n

end

end A315400.P2759837684315524027

namespace A315400

/-- `A313717(n)+A128834(n)` -/
def P2759837684315524027.Spec : Prop :=
  ∀ n, P2759837684315524027.a n = A315400 n

end A315400

/-! ## A315400.P11821834990215951472

`A313717(n)-A010892(n+2)`
-/

namespace A315400.P11821834990215951472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n - A010892 (n + 2)

end

end A315400.P11821834990215951472

namespace A315400

/-- `A313717(n)-A010892(n+2)` -/
def P11821834990215951472.Spec : Prop :=
  ∀ n, P11821834990215951472.a n = A315400 n

end A315400

/-! ## A315400.P9167461113141371929

`A315462(n)-A047513(n+1)+n`
-/

namespace A315400.P9167461113141371929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315462 n - A047513 (n + 1) + (n : ℤ)

end

end A315400.P9167461113141371929

namespace A315400

/-- `A315462(n)-A047513(n+1)+n` -/
def P9167461113141371929.Spec : Prop :=
  ∀ n, P9167461113141371929.a n = A315400 n

end A315400

/-! ## A315400.P10891106885461349545

`abs(A008592(n)-A313290(n))`
-/

namespace A315400.P10891106885461349545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313290 n|

end

end A315400.P10891106885461349545

namespace A315400

/-- `abs(A008592(n)-A313290(n))` -/
def P10891106885461349545.Spec : Prop :=
  ∀ n, P10891106885461349545.a n = A315400 n

end A315400

/-! ## A315400.P3725916317033725378

`2*A008706(n)-A313290(n)`
-/

namespace A315400.P3725916317033725378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313290 n

end

end A315400.P3725916317033725378

namespace A315400

/-- `2*A008706(n)-A313290(n)` -/
def P3725916317033725378.Spec : Prop :=
  ∀ n, P3725916317033725378.a n = A315400 n

end A315400

/-! ## A315400.P13075471910133120640

`A008458(n)+A008574(n)-A313290(n)`
-/

namespace A315400.P13075471910133120640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313290 n)

end

end A315400.P13075471910133120640

namespace A315400

/-- `A008458(n)+A008574(n)-A313290(n)` -/
def P13075471910133120640.Spec : Prop :=
  ∀ n, P13075471910133120640.a n = A315400 n

end A315400

/-! ## A315400.P8741786412007636774

`∑{d}[A008592(n)-A313290(n), A000010(#)]`
-/

namespace A315400.P8741786412007636774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315400.P8741786412007636774

namespace A315400

/-- `∑{d}[A008592(n)-A313290(n), A000010(#)]` -/
def P8741786412007636774.Spec : Prop :=
  ∀ n, P8741786412007636774.a n = A315400 n

end A315400

/-! ## A315400.P9434547551730492358

`A128834(n)+A315760(n)-n`
-/

namespace A315400.P9434547551730492358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A315760 n - (n : ℤ))

end

end A315400.P9434547551730492358

namespace A315400

/-- `A128834(n)+A315760(n)-n` -/
def P9434547551730492358.Spec : Prop :=
  ∀ n, P9434547551730492358.a n = A315400 n

end A315400

/-! ## A315400.P17006780591517907516

`A005843(A008706(n))-A313290(n)`
-/

namespace A315400.P17006780591517907516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313290 n

end

end A315400.P17006780591517907516

namespace A315400

/-- `A005843(A008706(n))-A313290(n)` -/
def P17006780591517907516.Spec : Prop :=
  ∀ n, P17006780591517907516.a n = A315400 n

end A315400

/-!
# A315401: Coordination sequence Gal.4.63.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315401, the canonical program `A315401.P16146776874325016812` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315401 has offset 0).

The definition of A315401 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2398 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315401.P16146776874325016812

`2*A313487(n)-A312895(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315401

/-- `2*A313487(n)-A312895(n)` -/
def P16146776874325016812.Spec : Prop :=
  ∀ n, P16146776874325016812.a n = A315401 n

theorem P16146776874325016812.correct : P16146776874325016812.Spec := by
  intro n
  simp only [A315401]

end A315401

/-! ## A315401.P2052738315991828719

`A314674(n)+A242062(A008586(n))`
-/

namespace A315401.P2052738315991828719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + A242062 (A008586 n).toNat

end

end A315401.P2052738315991828719

namespace A315401

/-- `A314674(n)+A242062(A008586(n))` -/
def P2052738315991828719.Spec : Prop :=
  ∀ n, P2052738315991828719.a n = A315401 n

end A315401

/-! ## A315401.P5605145437307134199

`A315204(n)+A175629(n-A175629(n))`
-/

namespace A315401.P5605145437307134199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315204 n + A175629 ((n : ℤ) - A175629 n).toNat

end

end A315401.P5605145437307134199

namespace A315401

/-- `A315204(n)+A175629(n-A175629(n))` -/
def P5605145437307134199.Spec : Prop :=
  ∀ n, P5605145437307134199.a n = A315401 n

end A315401

/-! ## A315401.P10064677857438604049

`A312895(n)+A005843(A313487(n)-A312895(n))`
-/

namespace A315401.P10064677857438604049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312895 n + A005843 (A313487 n - A312895 n).toNat

end

end A315401.P10064677857438604049

namespace A315401

/-- `A312895(n)+A005843(A313487(n)-A312895(n))` -/
def P10064677857438604049.Spec : Prop :=
  ∀ n, P10064677857438604049.a n = A315401 n

end A315401

/-! ## A315401.P17805865777712914051

`abs(A008592(n)-A313289(n))`
-/

namespace A315401.P17805865777712914051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313289 n|

end

end A315401.P17805865777712914051

namespace A315401

/-- `abs(A008592(n)-A313289(n))` -/
def P17805865777712914051.Spec : Prop :=
  ∀ n, P17805865777712914051.a n = A315401 n

end A315401

/-! ## A315401.P10953641895362391392

`2*A008706(n)-A313289(n)`
-/

namespace A315401.P10953641895362391392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313289 n

end

end A315401.P10953641895362391392

namespace A315401

/-- `2*A008706(n)-A313289(n)` -/
def P10953641895362391392.Spec : Prop :=
  ∀ n, P10953641895362391392.a n = A315401 n

end A315401

/-! ## A315401.P11940306496531893251

`A135042(2*n+1)-A313289(n)`
-/

namespace A315401.P11940306496531893251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313289 n

end

end A315401.P11940306496531893251

namespace A315401

/-- `A135042(2*n+1)-A313289(n)` -/
def P11940306496531893251.Spec : Prop :=
  ∀ n, P11940306496531893251.a n = A315401 n

end A315401

/-! ## A315401.P15661071220448697604

`A008458(n)+A008574(n)-A313289(n)`
-/

namespace A315401.P15661071220448697604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313289 n)

end

end A315401.P15661071220448697604

namespace A315401

/-- `A008458(n)+A008574(n)-A313289(n)` -/
def P15661071220448697604.Spec : Prop :=
  ∀ n, P15661071220448697604.a n = A315401 n

end A315401

/-! ## A315401.P14784602693545934610

`A315452(n)-Δ[A011860(n)]`
-/

namespace A315401.P14784602693545934610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n - (f1 (n + 1) - f1 n)

end

end A315401.P14784602693545934610

namespace A315401

/-- `A315452(n)-Δ[A011860(n)]` -/
def P14784602693545934610.Spec : Prop :=
  ∀ n, P14784602693545934610.a n = A315401 n

end A315401

/-! ## A315401.P14579848491889533083

`A315511(n)-Δ[2*A011860(n)]`
-/

namespace A315401.P14579848491889533083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n - (f1 (n + 1) - f1 n)

end

end A315401.P14579848491889533083

namespace A315401

/-- `A315511(n)-Δ[2*A011860(n)]` -/
def P14579848491889533083.Spec : Prop :=
  ∀ n, P14579848491889533083.a n = A315401 n

end A315401

/-! ## A315401.P13150348513481984545

`A005843(A313487(n))-A312895(n)`
-/

namespace A315401.P13150348513481984545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313487 n).toNat - A312895 n

end

end A315401.P13150348513481984545

namespace A315401

/-- `A005843(A313487(n))-A312895(n)` -/
def P13150348513481984545.Spec : Prop :=
  ∀ n, P13150348513481984545.a n = A315401 n

end A315401

/-! ## A315401.P14377291314409359734

`A005843(A008706(n))-A313289(n)`
-/

namespace A315401.P14377291314409359734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313289 n

end

end A315401.P14377291314409359734

namespace A315401

/-- `A005843(A008706(n))-A313289(n)` -/
def P14377291314409359734.Spec : Prop :=
  ∀ n, P14377291314409359734.a n = A315401 n

end A315401

/-! ## A315401.P17652611176316103607

`A065502(A008458(n))-A313289(n)`
-/

namespace A315401.P17652611176316103607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313289 n

end

end A315401.P17652611176316103607

namespace A315401

/-- `A065502(A008458(n))-A313289(n)` -/
def P17652611176316103607.Spec : Prop :=
  ∀ n, P17652611176316103607.a n = A315401 n

end A315401

/-! ## A315401.P11167105140202945286

`gcd(A008592(n)-A313289(n), A000079(n)%2)`
-/

namespace A315401.P11167105140202945286
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 n - A313289 n) (Int.tmod (A000079 n) 2)

end

end A315401.P11167105140202945286

namespace A315401

/-- `gcd(A008592(n)-A313289(n), A000079(n)%2)` -/
def P11167105140202945286.Spec : Prop :=
  ∀ n, (P11167105140202945286.a n : ℤ) = A315401 n

end A315401

/-! ## A315401.P15838180034215612358

`A315511(n)-Δ[A005408(A011860(n))]`
-/

namespace A315401.P15838180034215612358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A011860 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n - (f1 (n + 1) - f1 n)

end

end A315401.P15838180034215612358

namespace A315401

/-- `A315511(n)-Δ[A005408(A011860(n))]` -/
def P15838180034215612358.Spec : Prop :=
  ∀ n, P15838180034215612358.a n = A315401 n

end A315401

/-!
# A315402: Coordination sequence Gal.5.116.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315402, the canonical program `A315402.P15354869192594561044` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315402 has offset 0).

The definition of A315402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2411 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315402.P15354869192594561044

`A314740(n)+A253262(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A315402

/-- `A314740(n)+A253262(n)` -/
def P15354869192594561044.Spec : Prop :=
  ∀ n, P15354869192594561044.a n = A315402 n

theorem P15354869192594561044.correct : P15354869192594561044.Spec := by
  intro n
  simp only [A315402]

end A315402

/-! ## A315402.P10209890128655385297

`A330025(n)+A313525(n)`
-/

namespace A315402.P10209890128655385297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313525 n

end

end A315402.P10209890128655385297

namespace A315402

/-- `A330025(n)+A313525(n)` -/
def P10209890128655385297.Spec : Prop :=
  ∀ n, P10209890128655385297.a n = A315402 n

end A315402

/-! ## A315402.P7397905408778490362

`abs(A008592(n)-A313284(n))`
-/

namespace A315402.P7397905408778490362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313284 n|

end

end A315402.P7397905408778490362

namespace A315402

/-- `abs(A008592(n)-A313284(n))` -/
def P7397905408778490362.Spec : Prop :=
  ∀ n, P7397905408778490362.a n = A315402 n

end A315402

/-! ## A315402.P6231175595111563190

`2*A008706(n)-A313284(n)`
-/

namespace A315402.P6231175595111563190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313284 n

end

end A315402.P6231175595111563190

namespace A315402

/-- `2*A008706(n)-A313284(n)` -/
def P6231175595111563190.Spec : Prop :=
  ∀ n, P6231175595111563190.a n = A315402 n

end A315402

/-! ## A315402.P12616508337115103485

`A008458(n)+A008574(n)-A313284(n)`
-/

namespace A315402.P12616508337115103485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313284 n)

end

end A315402.P12616508337115103485

namespace A315402

/-- `A008458(n)+A008574(n)-A313284(n)` -/
def P12616508337115103485.Spec : Prop :=
  ∀ n, P12616508337115103485.a n = A315402 n

end A315402

/-! ## A315402.P5520701660120409194

`A315742(n)-A265227(n+1)+n`
-/

namespace A315402.P5520701660120409194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315742 n - A265227 (n + 1) + (n : ℤ)

end

end A315402.P5520701660120409194

namespace A315402

/-- `A315742(n)-A265227(n+1)+n` -/
def P5520701660120409194.Spec : Prop :=
  ∀ n, P5520701660120409194.a n = A315402 n

end A315402

/-! ## A315402.P11862848873972643962

`A064429(A315255(n)+A000007(n))`
-/

namespace A315402.P11862848873972643962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (A315255 n + A000007 n).toNat

end

end A315402.P11862848873972643962

namespace A315402

/-- `A064429(A315255(n)+A000007(n))` -/
def P11862848873972643962.Spec : Prop :=
  ∀ n, P11862848873972643962.a n = A315402 n

end A315402

/-! ## A315402.P1317863506958149368

`A030118(A315255(n))-A057427(n)`
-/

namespace A315402.P1317863506958149368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030118 (A315255 n).toNat - A057427 n

end

end A315402.P1317863506958149368

namespace A315402

/-- `A030118(A315255(n))-A057427(n)` -/
def P1317863506958149368.Spec : Prop :=
  ∀ n, P1317863506958149368.a n = A315402 n

end A315402

/-! ## A315402.P8717655509057294889

`A005843(A008706(n))-A313284(n)`
-/

namespace A315402.P8717655509057294889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313284 n

end

end A315402.P8717655509057294889

namespace A315402

/-- `A005843(A008706(n))-A313284(n)` -/
def P8717655509057294889.Spec : Prop :=
  ∀ n, P8717655509057294889.a n = A315402 n

end A315402

/-! ## A315402.P17942047619599628880

`A004396(A315445(n)+A072154(n))`
-/

namespace A315402.P17942047619599628880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315445 n + A072154 n).toNat

end

end A315402.P17942047619599628880

namespace A315402

/-- `A004396(A315445(n)+A072154(n))` -/
def P17942047619599628880.Spec : Prop :=
  ∀ n, P17942047619599628880.a n = A315402 n

end A315402

/-!
# A315403: Coordination sequence Gal.6.264.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315403, the canonical program `A315403.P14978821845076500409` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315403 has offset 0).

The definition of A315403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2395 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315403.P4237857596301964862

`A313729(n)+A128834(n)`
-/

namespace A315403.P4237857596301964862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n + A128834 n

end

end A315403.P4237857596301964862

namespace A315403

/-- `A313729(n)+A128834(n)` -/
def P4237857596301964862.Spec : Prop :=
  ∀ n, P4237857596301964862.a n = A315403 n

end A315403

/-! ## A315403.P18104184562157070251

`A313729(n)-A010892(n+2)`
-/

namespace A315403.P18104184562157070251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313729 n - A010892 (n + 2)

end

end A315403.P18104184562157070251

namespace A315403

/-- `A313729(n)-A010892(n+2)` -/
def P18104184562157070251.Spec : Prop :=
  ∀ n, P18104184562157070251.a n = A315403 n

end A315403

/-! ## A315403.P14978821845076500409

`A313485(n)+A004396(A004525(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315403

/-- `A313485(n)+A004396(A004525(n))` -/
def P14978821845076500409.Spec : Prop :=
  ∀ n, P14978821845076500409.a n = A315403 n

theorem P14978821845076500409.correct : P14978821845076500409.Spec := by
  intro n
  simp only [A315403]

end A315403

/-! ## A315403.P15120536108164905783

`abs(A008592(n)-A313283(n))`
-/

namespace A315403.P15120536108164905783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313283 n|

end

end A315403.P15120536108164905783

namespace A315403

/-- `abs(A008592(n)-A313283(n))` -/
def P15120536108164905783.Spec : Prop :=
  ∀ n, P15120536108164905783.a n = A315403 n

end A315403

/-! ## A315403.P14546806141691581319

`2*A008706(n)-A313283(n)`
-/

namespace A315403.P14546806141691581319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313283 n

end

end A315403.P14546806141691581319

namespace A315403

/-- `2*A008706(n)-A313283(n)` -/
def P14546806141691581319.Spec : Prop :=
  ∀ n, P14546806141691581319.a n = A315403 n

end A315403

/-! ## A315403.P11520851805962381168

`A008458(n)+A008574(n)-A313283(n)`
-/

namespace A315403.P11520851805962381168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313283 n)

end

end A315403.P11520851805962381168

namespace A315403

/-- `A008458(n)+A008574(n)-A313283(n)` -/
def P11520851805962381168.Spec : Prop :=
  ∀ n, P11520851805962381168.a n = A315403 n

end A315403

/-! ## A315403.P10438715166285229151

`A315675(n)-∑[A021913(n)]`
-/

namespace A315403.P10438715166285229151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315675 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315403.P10438715166285229151

namespace A315403

/-- `A315675(n)-∑[A021913(n)]` -/
def P10438715166285229151.Spec : Prop :=
  ∀ n, P10438715166285229151.a n = A315403 n

end A315403

/-! ## A315403.P17677032625357820570

`A315675(n)-Δ[A011848(n)]`
-/

namespace A315403.P17677032625357820570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315675 n - (f1 (n + 1) - f1 n)

end

end A315403.P17677032625357820570

namespace A315403

/-- `A315675(n)-Δ[A011848(n)]` -/
def P17677032625357820570.Spec : Prop :=
  ∀ n, P17677032625357820570.a n = A315403 n

end A315403

/-! ## A315403.P5666350987219722542

`A315675(n)-A004524(n+1)`
-/

namespace A315403.P5666350987219722542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315675 n - A004524 (n + 1)

end

end A315403.P5666350987219722542

namespace A315403

/-- `A315675(n)-A004524(n+1)` -/
def P5666350987219722542.Spec : Prop :=
  ∀ n, P5666350987219722542.a n = A315403 n

end A315403

/-! ## A315403.P1950891337994136173

`A004525(n)+A315675(n)-n`
-/

namespace A315403.P1950891337994136173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315675 n - (n : ℤ))

end

end A315403.P1950891337994136173

namespace A315403

/-- `A004525(n)+A315675(n)-n` -/
def P1950891337994136173.Spec : Prop :=
  ∀ n, P1950891337994136173.a n = A315403 n

end A315403

/-! ## A315403.P17777477556508899594

`A005843(A008706(n))-A313283(n)`
-/

namespace A315403.P17777477556508899594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313283 n

end

end A315403.P17777477556508899594

namespace A315403

/-- `A005843(A008706(n))-A313283(n)` -/
def P17777477556508899594.Spec : Prop :=
  ∀ n, P17777477556508899594.a n = A315403 n

end A315403

/-!
# A315404: Coordination sequence Gal.6.265.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315404, the canonical program `A315404.P2016412341062961456` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315404 has offset 0).

The definition of A315404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315404.P2016412341062961456

`abs(10*n-A313281(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A315404

/-- `abs(10*n-A313281(n))` -/
def P2016412341062961456.Spec : Prop :=
  ∀ n, P2016412341062961456.a n = A315404 n

theorem P2016412341062961456.correct : P2016412341062961456.Spec := by
  intro n
  simp only [A315404]

end A315404

/-! ## A315404.P16130643334645512439

`2*A008706(n)-A313281(n)`
-/

namespace A315404.P16130643334645512439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313281 n

end

end A315404.P16130643334645512439

namespace A315404

/-- `2*A008706(n)-A313281(n)` -/
def P16130643334645512439.Spec : Prop :=
  ∀ n, P16130643334645512439.a n = A315404 n

end A315404

/-! ## A315404.P15458797028240200944

`A135042(2*n+1)-A313281(n)`
-/

namespace A315404.P15458797028240200944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313281 n

end

end A315404.P15458797028240200944

namespace A315404

/-- `A135042(2*n+1)-A313281(n)` -/
def P15458797028240200944.Spec : Prop :=
  ∀ n, P15458797028240200944.a n = A315404 n

end A315404

/-! ## A315404.P2466698734350979742

`lcm(10*n-A313281(n), Δ[A008611(n)])`
-/

namespace A315404.P2466698734350979742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((10 * n : ℤ) - A313281 n) (f1 (n + 1) - f1 n)

end

end A315404.P2466698734350979742

namespace A315404

/-- `lcm(10*n-A313281(n), Δ[A008611(n)])` -/
def P2466698734350979742.Spec : Prop :=
  ∀ n, (P2466698734350979742.a n : ℤ) = A315404 n

end A315404

/-! ## A315404.P17794146103937590647

`A184418(A008574(n))-A313281(n)`
-/

namespace A315404.P17794146103937590647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313281 n

end

end A315404.P17794146103937590647

namespace A315404

/-- `A184418(A008574(n))-A313281(n)` -/
def P17794146103937590647.Spec : Prop :=
  ∀ n, P17794146103937590647.a n = A315404 n

end A315404

/-! ## A315404.P3758093800183504334

`A008458(n)+A008574(n)-A313281(n)`
-/

namespace A315404.P3758093800183504334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313281 n)

end

end A315404.P3758093800183504334

namespace A315404

/-- `A008458(n)+A008574(n)-A313281(n)` -/
def P3758093800183504334.Spec : Prop :=
  ∀ n, P3758093800183504334.a n = A315404 n

end A315404

/-! ## A315404.P14506928808389177200

`A005843(A008706(n))-A313281(n)`
-/

namespace A315404.P14506928808389177200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313281 n

end

end A315404.P14506928808389177200

namespace A315404

/-- `A005843(A008706(n))-A313281(n)` -/
def P14506928808389177200.Spec : Prop :=
  ∀ n, P14506928808389177200.a n = A315404 n

end A315404

/-! ## A315404.P8052533537410611922

`A065502(A008458(n))-A313281(n)`
-/

namespace A315404.P8052533537410611922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313281 n

end

end A315404.P8052533537410611922

namespace A315404

/-- `A065502(A008458(n))-A313281(n)` -/
def P8052533537410611922.Spec : Prop :=
  ∀ n, P8052533537410611922.a n = A315404 n

end A315404

/-! ## A315404.P9442642353076260387

`A315695(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315404.P9442642353076260387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315695 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315404.P9442642353076260387

namespace A315404

/-- `A315695(2*n)+A008458(n+1)-(12*n+6)` -/
def P9442642353076260387.Spec : Prop :=
  ∀ n, P9442642353076260387.a n = A315404 n

end A315404

/-! ## A315404.P2757785502297780552

`A004525(A315667(2*n))`
-/

namespace A315404.P2757785502297780552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315667 (2 * n)).toNat

end

end A315404.P2757785502297780552

namespace A315404

/-- `A004525(A315667(2*n))` -/
def P2757785502297780552.Spec : Prop :=
  ∀ n, P2757785502297780552.a n = A315404 n

end A315404

/-! ## A315404.P15779266347326670618

`A233583(A017281(n))-A313281(n)`
-/

namespace A315404.P15779266347326670618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313281 n

end

end A315404.P15779266347326670618

namespace A315404

/-- `A233583(A017281(n))-A313281(n)` -/
def P15779266347326670618.Spec : Prop :=
  ∀ n, P15779266347326670618.a n = A315404 n

end A315404

/-!
# A315405: Coordination sequence Gal.3.15.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315405, the canonical program `A315405.P17073694852782194782` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315405 has offset 0).

The definition of A315405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A315405.P17073694852782194782

`3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=15, a(4)=19`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A315405

/-- `3*a(n-1)-4*a(n-2)+3*a(n-3)-a(n-4)` -/
def P17073694852782194782.Spec : Prop :=
  ∀ n, P17073694852782194782.a n = A315405 n

theorem P17073694852782194782.correct : P17073694852782194782.Spec := by
  intro n
  simp only [A315405]

end A315405

/-! ## A315405.P11439574924960974400

`round(cos((1-n)%6))+5*n`
-/

namespace A315405.P11439574924960974400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Int.tmod (1 - (n : ℤ)) 6 : ℝ)) + (5 * n : ℤ)

end

end A315405.P11439574924960974400

namespace A315405

/-- `round(cos((1-n)%6))+5*n` -/
def P11439574924960974400.Spec : Prop :=
  ∀ n, P11439574924960974400.a n = A315405 n

end A315405

/-! ## A315405.P3597453391622415484

`∑[a(n-1)+5-a(n-2)]` with `a(0)=1, a(1)=5, a(2)=5, a(3)=4`
-/

namespace A315405.P3597453391622415484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 5, 4] fun n f1 =>
  f1 (n - 1) + (5 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315405.P3597453391622415484

namespace A315405

/-- `∑[a(n-1)+5-a(n-2)]` -/
def P3597453391622415484.Spec : Prop :=
  ∀ n, P3597453391622415484.a n = A315405 n

end A315405

/-! ## A315405.P2581560679206423162

`∑[5-(a(n-2)-a(n-1))]` with `a(0)=1, a(1)=5, a(2)=5, a(3)=4`
-/

namespace A315405.P2581560679206423162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 5, 4] fun n f1 =>
  5 - (f1 (n - 2) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315405.P2581560679206423162

namespace A315405

/-- `∑[5-(a(n-2)-a(n-1))]` -/
def P2581560679206423162.Spec : Prop :=
  ∀ n, P2581560679206423162.a n = A315405 n

end A315405

/-! ## A315405.P17135736291557093531

`A163806(n)+5*n`
-/

namespace A315405.P17135736291557093531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 n + (5 * n : ℤ)

end

end A315405.P17135736291557093531

namespace A315405

/-- `A163806(n)+5*n` -/
def P17135736291557093531.Spec : Prop :=
  ∀ n, P17135736291557093531.a n = A315405 n

end A315405

/-! ## A315405.P1594555832844037187

`A008706(n)+round(sin(n%6))`
-/

namespace A315405.P1594555832844037187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A315405.P1594555832844037187

namespace A315405

/-- `A008706(n)+round(sin(n%6))` -/
def P1594555832844037187.Spec : Prop :=
  ∀ n, P1594555832844037187.a n = A315405 n

end A315405

/-! ## A315405.P13166416570234386693

`A010892(abs(1-n))+5*n`
-/

namespace A315405.P13166416570234386693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 |1 - (n : ℤ)|.toNat + (5 * n : ℤ)

end

end A315405.P13166416570234386693

namespace A315405

/-- `A010892(abs(1-n))+5*n` -/
def P13166416570234386693.Spec : Prop :=
  ∀ n, P13166416570234386693.a n = A315405 n

end A315405

/-! ## A315405.P1303241251386173294

`A128834(n)+A008706(n)`
-/

namespace A315405.P1303241251386173294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + A008706 n

end

end A315405.P1303241251386173294

namespace A315405

/-- `A128834(n)+A008706(n)` -/
def P1303241251386173294.Spec : Prop :=
  ∀ n, P1303241251386173294.a n = A315405 n

end A315405

/-! ## A315405.P17032954786980415529

`A314015(n)+A134667(n)`
-/

namespace A315405.P17032954786980415529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n + A134667 n

end

end A315405.P17032954786980415529

namespace A315405

/-- `A314015(n)+A134667(n)` -/
def P17032954786980415529.Spec : Prop :=
  ∀ n, P17032954786980415529.a n = A315405 n

end A315405

/-! ## A315405.P12881179292814844911

`A315075(n)+A186809(n)`
-/

namespace A315405.P12881179292814844911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315075 n + A186809 n

end

end A315405.P12881179292814844911

namespace A315405

/-- `A315075(n)+A186809(n)` -/
def P12881179292814844911.Spec : Prop :=
  ∀ n, P12881179292814844911.a n = A315405 n

end A315405

/-! ## A315405.P414572705014843962

`A271114(n)-A030118(n)`
-/

namespace A315405.P414572705014843962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271114 n - A030118 n

end

end A315405.P414572705014843962

namespace A315405

/-- `A271114(n)-A030118(n)` -/
def P414572705014843962.Spec : Prop :=
  ∀ n, P414572705014843962.a n = A315405 n

end A315405

/-! ## A315405.P16390937099400544321

`A008458(n)+1-A030118(n)`
-/

namespace A315405.P16390937099400544321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (1 - A030118 n)

end

end A315405.P16390937099400544321

namespace A315405

/-- `A008458(n)+1-A030118(n)` -/
def P16390937099400544321.Spec : Prop :=
  ∀ n, P16390937099400544321.a n = A315405 n

end A315405

/-! ## A315405.P12688663404450566032

`A008706(n)-A010892(n+2)`
-/

namespace A315405.P12688663404450566032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A010892 (n + 2)

end

end A315405.P12688663404450566032

namespace A315405

/-- `A008706(n)-A010892(n+2)` -/
def P12688663404450566032.Spec : Prop :=
  ∀ n, P12688663404450566032.a n = A315405 n

end A315405

/-! ## A315405.P10516981728839861386

`A008574(n)+A128834(n)+n`
-/

namespace A315405.P10516981728839861386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A128834 n + (n : ℤ))

end

end A315405.P10516981728839861386

namespace A315405

/-- `A008574(n)+A128834(n)+n` -/
def P10516981728839861386.Spec : Prop :=
  ∀ n, P10516981728839861386.a n = A315405 n

end A315405

/-! ## A315405.P16998953660060799203

`A008458(n)+A128834(n)-n`
-/

namespace A315405.P16998953660060799203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A128834 n - (n : ℤ))

end

end A315405.P16998953660060799203

namespace A315405

/-- `A008458(n)+A128834(n)-n` -/
def P16998953660060799203.Spec : Prop :=
  ∀ n, P16998953660060799203.a n = A315405 n

end A315405

/-! ## A315405.P4171826857512060281

`A315471(n)-A047513(n+1)+n`
-/

namespace A315405.P4171826857512060281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315471 n - A047513 (n + 1) + (n : ℤ)

end

end A315405.P4171826857512060281

namespace A315405

/-- `A315471(n)-A047513(n+1)+n` -/
def P4171826857512060281.Spec : Prop :=
  ∀ n, P4171826857512060281.a n = A315405 n

end A315405

/-! ## A315405.P5341225867012169966

`A004273(2*n)+A077859(n+1)-2`
-/

namespace A315405.P5341225867012169966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) + (A077859 (n + 1) - 2)

end

end A315405.P5341225867012169966

namespace A315405

/-- `A004273(2*n)+A077859(n+1)-2` -/
def P5341225867012169966.Spec : Prop :=
  ∀ n, P5341225867012169966.a n = A315405 n

end A315405

/-! ## A315405.P15222351595363322338

`∪[A263536(2*n+1), A136290(2*n)]+n`
-/

namespace A315405.P15222351595363322338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263536 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136290 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + n

end

end A315405.P15222351595363322338

namespace A315405

/-- `∪[A263536(2*n+1), A136290(2*n)]+n` -/
def P15222351595363322338.Spec : Prop :=
  ∀ n, (P15222351595363322338.a n : ℤ) = A315405 n

end A315405

/-! ## A315405.P9609692449126848318

`A315697(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315405.P9609692449126848318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315405.P9609692449126848318

namespace A315405

/-- `A315697(2*n)+A008458(n+1)-(12*n+6)` -/
def P9609692449126848318.Spec : Prop :=
  ∀ n, P9609692449126848318.a n = A315405 n

end A315405

/-! ## A315405.P8123504945205426297

`A314015(n)+A128834(A128834(n)+n)`
-/

namespace A315405.P8123504945205426297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314015 n + A128834 (A128834 n + (n : ℤ)).toNat

end

end A315405.P8123504945205426297

namespace A315405

/-- `A314015(n)+A128834(A128834(n)+n)` -/
def P8123504945205426297.Spec : Prop :=
  ∀ n, P8123504945205426297.a n = A315405 n

end A315405

/-!
# A315406: Coordination sequence Gal.6.206.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315406, the canonical program `A315406.P9369240269431711737` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315406 has offset 0).

The definition of A315406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315406.P9369240269431711737

`abs(A008592(n)-A313276(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315406

/-- `abs(A008592(n)-A313276(n))` -/
def P9369240269431711737.Spec : Prop :=
  ∀ n, P9369240269431711737.a n = A315406 n

theorem P9369240269431711737.correct : P9369240269431711737.Spec := by
  intro n
  simp only [A315406]

end A315406

/-! ## A315406.P17855463793060398762

`2*A008706(n)-A313276(n)`
-/

namespace A315406.P17855463793060398762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313276 n

end

end A315406.P17855463793060398762

namespace A315406

/-- `2*A008706(n)-A313276(n)` -/
def P17855463793060398762.Spec : Prop :=
  ∀ n, P17855463793060398762.a n = A315406 n

end A315406

/-! ## A315406.P18136012694727270157

`2*A313572(n)-A312976(n)`
-/

namespace A315406.P18136012694727270157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313572 n - A312976 n

end

end A315406.P18136012694727270157

namespace A315406

/-- `2*A313572(n)-A312976(n)` -/
def P18136012694727270157.Spec : Prop :=
  ∀ n, P18136012694727270157.a n = A315406 n

end A315406

/-! ## A315406.P2182740465670276927

`A135042(2*n+1)-A313276(n)`
-/

namespace A315406.P2182740465670276927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313276 n

end

end A315406.P2182740465670276927

namespace A315406

/-- `A135042(2*n+1)-A313276(n)` -/
def P2182740465670276927.Spec : Prop :=
  ∀ n, P2182740465670276927.a n = A315406 n

end A315406

/-! ## A315406.P3634272179557627770

`A184418(A008574(n))-A313276(n)`
-/

namespace A315406.P3634272179557627770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313276 n

end

end A315406.P3634272179557627770

namespace A315406

/-- `A184418(A008574(n))-A313276(n)` -/
def P3634272179557627770.Spec : Prop :=
  ∀ n, P3634272179557627770.a n = A315406 n

end A315406

/-! ## A315406.P12126640193883952973

`A008458(n)+A008574(n)-A313276(n)`
-/

namespace A315406.P12126640193883952973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313276 n)

end

end A315406.P12126640193883952973

namespace A315406

/-- `A008458(n)+A008574(n)-A313276(n)` -/
def P12126640193883952973.Spec : Prop :=
  ∀ n, P12126640193883952973.a n = A315406 n

end A315406

/-! ## A315406.P4488530613059444439

`A315188(n)+A004525(A315454(n)-A315188(n))`
-/

namespace A315406.P4488530613059444439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315188 n + A004525 (A315454 n - A315188 n).toNat

end

end A315406.P4488530613059444439

namespace A315406

/-- `A315188(n)+A004525(A315454(n)-A315188(n))` -/
def P4488530613059444439.Spec : Prop :=
  ∀ n, P4488530613059444439.a n = A315406 n

end A315406

/-! ## A315406.P5877259528008177052

`A005843(A313572(n))-A312976(n)`
-/

namespace A315406.P5877259528008177052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313572 n).toNat - A312976 n

end

end A315406.P5877259528008177052

namespace A315406

/-- `A005843(A313572(n))-A312976(n)` -/
def P5877259528008177052.Spec : Prop :=
  ∀ n, P5877259528008177052.a n = A315406 n

end A315406

/-! ## A315406.P12813402178448130176

`A005843(A008706(n))-A313276(n)`
-/

namespace A315406.P12813402178448130176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313276 n

end

end A315406.P12813402178448130176

namespace A315406

/-- `A005843(A008706(n))-A313276(n)` -/
def P12813402178448130176.Spec : Prop :=
  ∀ n, P12813402178448130176.a n = A315406 n

end A315406

/-! ## A315406.P7770605279293010784

`A065502(A008458(n))-A313276(n)`
-/

namespace A315406.P7770605279293010784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313276 n

end

end A315406.P7770605279293010784

namespace A315406

/-- `A065502(A008458(n))-A313276(n)` -/
def P7770605279293010784.Spec : Prop :=
  ∀ n, P7770605279293010784.a n = A315406 n

end A315406

/-! ## A315406.P4753142192690119526

`A313681(2*n)-4*n`
-/

namespace A315406.P4753142192690119526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313681 (2 * n) - (4 * n : ℤ)

end

end A315406.P4753142192690119526

namespace A315406

/-- `A313681(2*n)-4*n` -/
def P4753142192690119526.Spec : Prop :=
  ∀ n, P4753142192690119526.a n = A315406 n

end A315406

/-! ## A315406.P13136499061878105971

`A315725(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315406.P13136499061878105971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315725 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315406.P13136499061878105971

namespace A315406

/-- `A315725(2*n)/(4*n+2-A004277(2*n))` -/
def P13136499061878105971.Spec : Prop :=
  ∀ n, P13136499061878105971.a n = (A315406 n : ℚ)

end A315406

/-! ## A315406.P9204582348878477087

`2*A008574(2*n)-A313802(2*n)`
-/

namespace A315406.P9204582348878477087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313802 (2 * n)

end

end A315406.P9204582348878477087

namespace A315406

/-- `2*A008574(2*n)-A313802(2*n)` -/
def P9204582348878477087.Spec : Prop :=
  ∀ n, P9204582348878477087.a n = A315406 n

end A315406

/-! ## A315406.P11457614472581250184

`A180004(2*A315183(n))-A315183(n)`
-/

namespace A315406.P11457614472581250184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (2 * A315183 n).toNat - A315183 n

end

end A315406.P11457614472581250184

namespace A315406

/-- `A180004(2*A315183(n))-A315183(n)` -/
def P11457614472581250184.Spec : Prop :=
  ∀ n, P11457614472581250184.a n = A315406 n

end A315406

/-! ## A315406.P9859736832740662446

`A004525(A315678(2*n))`
-/

namespace A315406.P9859736832740662446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315678 (2 * n)).toNat

end

end A315406.P9859736832740662446

namespace A315406

/-- `A004525(A315678(2*n))` -/
def P9859736832740662446.Spec : Prop :=
  ∀ n, P9859736832740662446.a n = A315406 n

end A315406

/-! ## A315406.P14687691517615770633

`A004525(A315725(2*n))`
-/

namespace A315406.P14687691517615770633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315725 (2 * n)).toNat

end

end A315406.P14687691517615770633

namespace A315406

/-- `A004525(A315725(2*n))` -/
def P14687691517615770633.Spec : Prop :=
  ∀ n, P14687691517615770633.a n = A315406 n

end A315406

/-! ## A315406.P5337991441621772162

`A004526(A315725(2*n)+1)`
-/

namespace A315406.P5337991441621772162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315725 (2 * n) + 1).toNat

end

end A315406.P5337991441621772162

namespace A315406

/-- `A004526(A315725(2*n)+1)` -/
def P5337991441621772162.Spec : Prop :=
  ∀ n, P5337991441621772162.a n = A315406 n

end A315406

/-! ## A315406.P15656397797527173607

`A004525(A315454(n)+A315188(n))`
-/

namespace A315406.P15656397797527173607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315454 n + A315188 n).toNat

end

end A315406.P15656397797527173607

namespace A315406

/-- `A004525(A315454(n)+A315188(n))` -/
def P15656397797527173607.Spec : Prop :=
  ∀ n, P15656397797527173607.a n = A315406 n

end A315406

/-!
# A315407: Coordination sequence Gal.6.441.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315407, there is no canonical definition to state claims against.
-/

/-! ## A315407.P17810721617263121374

`or(A315265(n)-A317552(A155212(n)), A317552(A033627(n+1)))`
-/

namespace A315407.P17810721617263121374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A315265 n - A317552 (A155212 n).toNat) (A317552 (A033627 (n + 1)).toNat)

end

end A315407.P17810721617263121374

/-!
# A315409: Coordination sequence Gal.6.195.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315409, the canonical program `A315409.P16904544439805105745` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315409 has offset 0).

The definition of A315409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1028 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315409.P12552942299441056574

`A313474(n)+A004525(n)`
-/

namespace A315409.P12552942299441056574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + A004525 n

end

end A315409.P12552942299441056574

namespace A315409

/-- `A313474(n)+A004525(n)` -/
def P12552942299441056574.Spec : Prop :=
  ∀ n, P12552942299441056574.a n = A315409 n

end A315409

/-! ## A315409.P5416739703461596228

`A314089(n)+A101455(n)`
-/

namespace A315409.P5416739703461596228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314089 n + A101455 n

end

end A315409.P5416739703461596228

namespace A315409

/-- `A314089(n)+A101455(n)` -/
def P5416739703461596228.Spec : Prop :=
  ∀ n, P5416739703461596228.a n = A315409 n

end A315409

/-! ## A315409.P14510415391533008842

`abs(A008592(n)-A313262(n))`
-/

namespace A315409.P14510415391533008842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313262 n|

end

end A315409.P14510415391533008842

namespace A315409

/-- `abs(A008592(n)-A313262(n))` -/
def P14510415391533008842.Spec : Prop :=
  ∀ n, P14510415391533008842.a n = A315409 n

end A315409

/-! ## A315409.P17869951101665817675

`A315683(n)-∑[A021913(n)]`
-/

namespace A315409.P17869951101665817675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315409.P17869951101665817675

namespace A315409

/-- `A315683(n)-∑[A021913(n)]` -/
def P17869951101665817675.Spec : Prop :=
  ∀ n, P17869951101665817675.a n = A315409 n

end A315409

/-! ## A315409.P2161964996894627249

`A313474(n)+Δ[A054925(n)]`
-/

namespace A315409.P2161964996894627249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + (f1 (n + 1) - f1 n)

end

end A315409.P2161964996894627249

namespace A315409

/-- `A313474(n)+Δ[A054925(n)]` -/
def P2161964996894627249.Spec : Prop :=
  ∀ n, P2161964996894627249.a n = A315409 n

end A315409

/-! ## A315409.P15342776537370132011

`A315683(n)-Δ[A011848(n)]`
-/

namespace A315409.P15342776537370132011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - (f1 (n + 1) - f1 n)

end

end A315409.P15342776537370132011

namespace A315409

/-- `A315683(n)-Δ[A011848(n)]` -/
def P15342776537370132011.Spec : Prop :=
  ∀ n, P15342776537370132011.a n = A315409 n

end A315409

/-! ## A315409.P7332704168180267017

`A314089(n)+A046978(2*n)`
-/

namespace A315409.P7332704168180267017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314089 n + A046978 (2 * n)

end

end A315409.P7332704168180267017

namespace A315409

/-- `A314089(n)+A046978(2*n)` -/
def P7332704168180267017.Spec : Prop :=
  ∀ n, P7332704168180267017.a n = A315409 n

end A315409

/-! ## A315409.P11280901279764145775

`A004525(n)+A315683(n)-n`
-/

namespace A315409.P11280901279764145775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315683 n - (n : ℤ))

end

end A315409.P11280901279764145775

namespace A315409

/-- `A004525(n)+A315683(n)-n` -/
def P11280901279764145775.Spec : Prop :=
  ∀ n, P11280901279764145775.a n = A315409 n

end A315409

/-! ## A315409.P9987624329308605144

`A313474(n)+n-∑[A021913(n)]`
-/

namespace A315409.P9987624329308605144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315409.P9987624329308605144

namespace A315409

/-- `A313474(n)+n-∑[A021913(n)]` -/
def P9987624329308605144.Spec : Prop :=
  ∀ n, P9987624329308605144.a n = A315409 n

end A315409

/-! ## A315409.P9295704763250805389

`A313474(n)+n-Δ[A011848(n)]`
-/

namespace A315409.P9295704763250805389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315409.P9295704763250805389

namespace A315409

/-- `A313474(n)+n-Δ[A011848(n)]` -/
def P9295704763250805389.Spec : Prop :=
  ∀ n, P9295704763250805389.a n = A315409 n

end A315409

/-! ## A315409.P9637569254966703644

`Δ[A054925(n)]+A315683(n)-n`
-/

namespace A315409.P9637569254966703644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315683 n - (n : ℤ))

end

end A315409.P9637569254966703644

namespace A315409

/-- `Δ[A054925(n)]+A315683(n)-n` -/
def P9637569254966703644.Spec : Prop :=
  ∀ n, P9637569254966703644.a n = A315409 n

end A315409

/-! ## A315409.P16904544439805105745

`A313533(n)+A004396(A004525(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315409

/-- `A313533(n)+A004396(A004525(n))` -/
def P16904544439805105745.Spec : Prop :=
  ∀ n, P16904544439805105745.a n = A315409 n

theorem P16904544439805105745.correct : P16904544439805105745.Spec := by
  intro n
  simp only [A315409]

end A315409

/-! ## A315409.P9791948147281513928

`A004525(n)+A004396(A315670(n))+n`
-/

namespace A315409.P9791948147281513928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A315670 n).toNat + (n : ℤ))

end

end A315409.P9791948147281513928

namespace A315409

/-- `A004525(n)+A004396(A315670(n))+n` -/
def P9791948147281513928.Spec : Prop :=
  ∀ n, P9791948147281513928.a n = A315409 n

end A315409

/-! ## A315409.P15283450894240934133

`A008458(n)+A008574(n)-A313262(n)`
-/

namespace A315409.P15283450894240934133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313262 n)

end

end A315409.P15283450894240934133

namespace A315409

/-- `A008458(n)+A008574(n)-A313262(n)` -/
def P15283450894240934133.Spec : Prop :=
  ∀ n, P15283450894240934133.a n = A315409 n

end A315409

/-!
# A315410: Coordination sequence Gal.6.322.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315410, the canonical program `A315410.P5887304458522211187` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315410 has offset 0).

The definition of A315410 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315410.P5887304458522211187

`abs(A008592(n)-A313259(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315410

/-- `abs(A008592(n)-A313259(n))` -/
def P5887304458522211187.Spec : Prop :=
  ∀ n, P5887304458522211187.a n = A315410 n

theorem P5887304458522211187.correct : P5887304458522211187.Spec := by
  intro n
  simp only [A315410]

end A315410

/-! ## A315410.P17105681180719294256

`2*A008706(n)-A313259(n)`
-/

namespace A315410.P17105681180719294256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313259 n

end

end A315410.P17105681180719294256

namespace A315410

/-- `2*A008706(n)-A313259(n)` -/
def P17105681180719294256.Spec : Prop :=
  ∀ n, P17105681180719294256.a n = A315410 n

end A315410

/-! ## A315410.P15487591537372973369

`A135042(2*n+1)-A313259(n)`
-/

namespace A315410.P15487591537372973369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313259 n

end

end A315410.P15487591537372973369

namespace A315410

/-- `A135042(2*n+1)-A313259(n)` -/
def P15487591537372973369.Spec : Prop :=
  ∀ n, P15487591537372973369.a n = A315410 n

end A315410

/-! ## A315410.P12753949019512277782

`A008458(n)+A008574(n)-A313259(n)`
-/

namespace A315410.P12753949019512277782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313259 n)

end

end A315410.P12753949019512277782

namespace A315410

/-- `A008458(n)+A008574(n)-A313259(n)` -/
def P12753949019512277782.Spec : Prop :=
  ∀ n, P12753949019512277782.a n = A315410 n

end A315410

/-! ## A315410.P8577761350253915969

`A005843(A008706(n))-A313259(n)`
-/

namespace A315410.P8577761350253915969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313259 n

end

end A315410.P8577761350253915969

namespace A315410

/-- `A005843(A008706(n))-A313259(n)` -/
def P8577761350253915969.Spec : Prop :=
  ∀ n, P8577761350253915969.a n = A315410 n

end A315410

/-! ## A315410.P1609025731084998382

`A004396(2*A314669(n)-n)`
-/

namespace A315410.P1609025731084998382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A314669 n - (n : ℤ)).toNat

end

end A315410.P1609025731084998382

namespace A315410

/-- `A004396(2*A314669(n)-n)` -/
def P1609025731084998382.Spec : Prop :=
  ∀ n, P1609025731084998382.a n = A315410 n

end A315410

/-! ## A315410.P17134661281414821256

`A004396(A314669(n)+A314669(n)-n)`
-/

namespace A315410.P17134661281414821256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314669 n + (A314669 n - (n : ℤ))).toNat

end

end A315410.P17134661281414821256

namespace A315410

/-- `A004396(A314669(n)+A314669(n)-n)` -/
def P17134661281414821256.Spec : Prop :=
  ∀ n, P17134661281414821256.a n = A315410 n

end A315410

/-! ## A315410.P9780530996896789239

`A004396(A314669(n)-(n-A314669(n)))`
-/

namespace A315410.P9780530996896789239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314669 n - ((n : ℤ) - A314669 n)).toNat

end

end A315410.P9780530996896789239

namespace A315410

/-- `A004396(A314669(n)-(n-A314669(n)))` -/
def P9780530996896789239.Spec : Prop :=
  ∀ n, P9780530996896789239.a n = A315410 n

end A315410

/-! ## A315410.P12499956931114388501

`2*n+A004396(A315170(n))`
-/

namespace A315410.P12499956931114388501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315170 n).toNat

end

end A315410.P12499956931114388501

namespace A315410

/-- `2*n+A004396(A315170(n))` -/
def P12499956931114388501.Spec : Prop :=
  ∀ n, P12499956931114388501.a n = A315410 n

end A315410

/-! ## A315410.P12229817687475264723

`A004396(A315170(n)+A008486(n))`
-/

namespace A315410.P12229817687475264723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315170 n + A008486 n).toNat

end

end A315410.P12229817687475264723

namespace A315410

/-- `A004396(A315170(n)+A008486(n))` -/
def P12229817687475264723.Spec : Prop :=
  ∀ n, P12229817687475264723.a n = A315410 n

end A315410

/-! ## A315410.P18376335218794826454

`A004396(A315170(n)+A008585(n))`
-/

namespace A315410.P18376335218794826454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315170 n + A008585 n).toNat

end

end A315410.P18376335218794826454

namespace A315410

/-- `A004396(A315170(n)+A008585(n))` -/
def P18376335218794826454.Spec : Prop :=
  ∀ n, P18376335218794826454.a n = A315410 n

end A315410

/-!
# A315411: Coordination sequence Gal.4.78.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315411, the canonical program `A315411.P3780549554269215954` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315411 has offset 0).

The definition of A315411 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315411.P3780549554269215954

`A313480(n)+A004525(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315411

/-- `A313480(n)+A004525(n)` -/
def P3780549554269215954.Spec : Prop :=
  ∀ n, P3780549554269215954.a n = A315411 n

theorem P3780549554269215954.correct : P3780549554269215954.Spec := by
  intro n
  simp only [A315411]

end A315411

/-! ## A315411.P9020691986990946571

`A315685(n)-∑[A021913(n)]`
-/

namespace A315411.P9020691986990946571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315411.P9020691986990946571

namespace A315411

/-- `A315685(n)-∑[A021913(n)]` -/
def P9020691986990946571.Spec : Prop :=
  ∀ n, P9020691986990946571.a n = A315411 n

end A315411

/-! ## A315411.P3677435870684679632

`A315685(n)-Δ[A011848(n)]`
-/

namespace A315411.P3677435870684679632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - (f1 (n + 1) - f1 n)

end

end A315411.P3677435870684679632

namespace A315411

/-- `A315685(n)-Δ[A011848(n)]` -/
def P3677435870684679632.Spec : Prop :=
  ∀ n, P3677435870684679632.a n = A315411 n

end A315411

/-! ## A315411.P9153847921797284733

`A315685(n)-A004524(n+1)`
-/

namespace A315411.P9153847921797284733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - A004524 (n + 1)

end

end A315411.P9153847921797284733

namespace A315411

/-- `A315685(n)-A004524(n+1)` -/
def P9153847921797284733.Spec : Prop :=
  ∀ n, P9153847921797284733.a n = A315411 n

end A315411

/-! ## A315411.P1519224052031690788

`A004525(n)+A315685(n)-n`
-/

namespace A315411.P1519224052031690788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315685 n - (n : ℤ))

end

end A315411.P1519224052031690788

namespace A315411

/-- `A004525(n)+A315685(n)-n` -/
def P1519224052031690788.Spec : Prop :=
  ∀ n, P1519224052031690788.a n = A315411 n

end A315411

/-! ## A315411.P11351589553865875869

`A313480(n)+n-∑[A021913(n)]`
-/

namespace A315411.P11351589553865875869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315411.P11351589553865875869

namespace A315411

/-- `A313480(n)+n-∑[A021913(n)]` -/
def P11351589553865875869.Spec : Prop :=
  ∀ n, P11351589553865875869.a n = A315411 n

end A315411

/-! ## A315411.P2788179273654025202

`A313480(n)+n-Δ[A011848(n)]`
-/

namespace A315411.P2788179273654025202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315411.P2788179273654025202

namespace A315411

/-- `A313480(n)+n-Δ[A011848(n)]` -/
def P2788179273654025202.Spec : Prop :=
  ∀ n, P2788179273654025202.a n = A315411 n

end A315411

/-! ## A315411.P8892438155481199574

`Δ[A054925(n)]+A315685(n)-n`
-/

namespace A315411.P8892438155481199574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315685 n - (n : ℤ))

end

end A315411.P8892438155481199574

namespace A315411

/-- `Δ[A054925(n)]+A315685(n)-n` -/
def P8892438155481199574.Spec : Prop :=
  ∀ n, P8892438155481199574.a n = A315411 n

end A315411

/-! ## A315411.P6629903475149268766

`A313561(n)+A004525(A004525(n))`
-/

namespace A315411.P6629903475149268766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313561 n + A004525 (A004525 n).toNat

end

end A315411.P6629903475149268766

namespace A315411

/-- `A313561(n)+A004525(A004525(n))` -/
def P6629903475149268766.Spec : Prop :=
  ∀ n, P6629903475149268766.a n = A315411 n

end A315411

/-! ## A315411.P1776518056770070362

`A312943(n)+2*A004525(A004525(n))`
-/

namespace A315411.P1776518056770070362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312943 n + 2 * A004525 (A004525 n).toNat

end

end A315411.P1776518056770070362

namespace A315411

/-- `A312943(n)+2*A004525(A004525(n))` -/
def P1776518056770070362.Spec : Prop :=
  ∀ n, P1776518056770070362.a n = A315411 n

end A315411

/-! ## A315411.P16392170738587949971

`A046978(A046978(n)+n)+A008706(n)`
-/

namespace A315411.P16392170738587949971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A046978 n + (n : ℤ)).toNat + A008706 n

end

end A315411.P16392170738587949971

namespace A315411

/-- `A046978(A046978(n)+n)+A008706(n)` -/
def P16392170738587949971.Spec : Prop :=
  ∀ n, P16392170738587949971.a n = A315411 n

end A315411

/-! ## A315411.P14173390955383776617

`A315306(n)+A075553(n-A075553(n))`
-/

namespace A315411.P14173390955383776617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315306 n + A075553 ((n : ℤ) - A075553 n).toNat

end

end A315411.P14173390955383776617

namespace A315411

/-- `A315306(n)+A075553(n-A075553(n))` -/
def P14173390955383776617.Spec : Prop :=
  ∀ n, P14173390955383776617.a n = A315411 n

end A315411

/-! ## A315411.P8746410482654811909

`A004525(n)+A312894(n)+A004525(A004525(n))`
-/

namespace A315411.P8746410482654811909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312894 n + A004525 (A004525 n).toNat)

end

end A315411.P8746410482654811909

namespace A315411

/-- `A004525(n)+A312894(n)+A004525(A004525(n))` -/
def P8746410482654811909.Spec : Prop :=
  ∀ n, P8746410482654811909.a n = A315411 n

end A315411

/-! ## A315411.P18265845775755686562

`A313635(n)+A046978(n)`
-/

namespace A315411.P18265845775755686562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313635 n + A046978 n

end

end A315411.P18265845775755686562

namespace A315411

/-- `A313635(n)+A046978(n)` -/
def P18265845775755686562.Spec : Prop :=
  ∀ n, P18265845775755686562.a n = A315411 n

end A315411

/-! ## A315411.P1964725773211630868

`xor(A158459(n), A314969(n))`
-/

namespace A315411.P1964725773211630868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A158459 n) (A314969 n)

end

end A315411.P1964725773211630868

namespace A315411

/-- `xor(A158459(n), A314969(n))` -/
def P1964725773211630868.Spec : Prop :=
  ∀ n, P1964725773211630868.a n = A315411 n

end A315411

/-! ## A315411.P5822530958462690460

`A314090(n)+A101455(n)`
-/

namespace A315411.P5822530958462690460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n + A101455 n

end

end A315411.P5822530958462690460

namespace A315411

/-- `A314090(n)+A101455(n)` -/
def P5822530958462690460.Spec : Prop :=
  ∀ n, P5822530958462690460.a n = A315411 n

end A315411

/-! ## A315411.P6751666479197259432

`A314090(n)+A046978(2*n)`
-/

namespace A315411.P6751666479197259432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314090 n + A046978 (2 * n)

end

end A315411.P6751666479197259432

namespace A315411

/-- `A314090(n)+A046978(2*n)` -/
def P6751666479197259432.Spec : Prop :=
  ∀ n, P6751666479197259432.a n = A315411 n

end A315411

/-! ## A315411.P9396816473136679802

`A315632(n)-A046978(n-A046978(n))`
-/

namespace A315411.P9396816473136679802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315632 n - A046978 ((n : ℤ) - A046978 n).toNat

end

end A315411.P9396816473136679802

namespace A315411

/-- `A315632(n)-A046978(n-A046978(n))` -/
def P9396816473136679802.Spec : Prop :=
  ∀ n, P9396816473136679802.a n = A315411 n

end A315411

/-! ## A315411.P16219030051402666739

`A004525(n)+A315399(n)-A004525(A004525(n))`
-/

namespace A315411.P16219030051402666739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315399 n - A004525 (A004525 n).toNat)

end

end A315411.P16219030051402666739

namespace A315411

/-- `A004525(n)+A315399(n)-A004525(A004525(n))` -/
def P16219030051402666739.Spec : Prop :=
  ∀ n, P16219030051402666739.a n = A315411 n

end A315411

/-! ## A315411.P7000927823745613337

`A315469(n)-Δ[A011861(n)]`
-/

namespace A315411.P7000927823745613337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - (f1 (n + 1) - f1 n)

end

end A315411.P7000927823745613337

namespace A315411

/-- `A315469(n)-Δ[A011861(n)]` -/
def P7000927823745613337.Spec : Prop :=
  ∀ n, P7000927823745613337.a n = A315411 n

end A315411

/-!
# A315412: Coordination sequence Gal.5.141.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315412, the canonical program `A315412.P16716451552511901256` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315412 has offset 0).

The definition of A315412 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315412.P11037889280023162352

`A313855(n)+A244895(n)`
-/

namespace A315412.P11037889280023162352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313855 n + A244895 n

end

end A315412.P11037889280023162352

namespace A315412

/-- `A313855(n)+A244895(n)` -/
def P11037889280023162352.Spec : Prop :=
  ∀ n, P11037889280023162352.a n = A315412 n

end A315412

/-! ## A315412.P16913085863295506814

`A330025(n)+A313589(n)`
-/

namespace A315412.P16913085863295506814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313589 n

end

end A315412.P16913085863295506814

namespace A315412

/-- `A330025(n)+A313589(n)` -/
def P16913085863295506814.Spec : Prop :=
  ∀ n, P16913085863295506814.a n = A315412 n

end A315412

/-! ## A315412.P6369079403195341485

`abs(A008591(n)-A310238(n))`
-/

namespace A315412.P6369079403195341485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n - A310238 n|

end

end A315412.P6369079403195341485

namespace A315412

/-- `abs(A008591(n)-A310238(n))` -/
def P6369079403195341485.Spec : Prop :=
  ∀ n, P6369079403195341485.a n = A315412 n

end A315412

/-! ## A315412.P16716451552511901256

`abs(A008592(n)-A313255(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315412

/-- `abs(A008592(n)-A313255(n))` -/
def P16716451552511901256.Spec : Prop :=
  ∀ n, P16716451552511901256.a n = A315412 n

theorem P16716451552511901256.correct : P16716451552511901256.Spec := by
  intro n
  simp only [A315412]

end A315412

/-! ## A315412.P9581881142092906741

`floor(A010015(n)/A313255(n))`
-/

namespace A315412.P9581881142092906741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313255 n : ℚ)⌋

end

end A315412.P9581881142092906741

namespace A315412

/-- `floor(A010015(n)/A313255(n))` -/
def P9581881142092906741.Spec : Prop :=
  ∀ n, P9581881142092906741.a n = A315412 n

end A315412

/-! ## A315412.P3088776662018631459

`A330025(2*n)+A313855(n)`
-/

namespace A315412.P3088776662018631459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (2 * n) + A313855 n

end

end A315412.P3088776662018631459

namespace A315412

/-- `A330025(2*n)+A313855(n)` -/
def P3088776662018631459.Spec : Prop :=
  ∀ n, P3088776662018631459.a n = A315412 n

end A315412

/-! ## A315412.P15990462081719196188

`2*A008706(n)-A313255(n)`
-/

namespace A315412.P15990462081719196188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313255 n

end

end A315412.P15990462081719196188

namespace A315412

/-- `2*A008706(n)-A313255(n)` -/
def P15990462081719196188.Spec : Prop :=
  ∀ n, P15990462081719196188.a n = A315412 n

end A315412

/-! ## A315412.P14146011926882118471

`A314670(n)+A057354(2*n+1)`
-/

namespace A315412.P14146011926882118471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A057354 (2 * n + 1)

end

end A315412.P14146011926882118471

namespace A315412

/-- `A314670(n)+A057354(2*n+1)` -/
def P14146011926882118471.Spec : Prop :=
  ∀ n, P14146011926882118471.a n = A315412 n

end A315412

/-! ## A315412.P6335579201371388157

`A008458(n)+A008486(n)-A310238(n)`
-/

namespace A315412.P6335579201371388157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008486 n - A310238 n)

end

end A315412.P6335579201371388157

namespace A315412

/-- `A008458(n)+A008486(n)-A310238(n)` -/
def P6335579201371388157.Spec : Prop :=
  ∀ n, P6335579201371388157.a n = A315412 n

end A315412

/-! ## A315412.P1256138581957471756

`A008458(n)+A008574(n)-A313255(n)`
-/

namespace A315412.P1256138581957471756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313255 n)

end

end A315412.P1256138581957471756

namespace A315412

/-- `A008458(n)+A008574(n)-A313255(n)` -/
def P1256138581957471756.Spec : Prop :=
  ∀ n, P1256138581957471756.a n = A315412 n

end A315412

/-! ## A315412.P3449962452474252832

`A315468(n)-A110654(A057354(n))`
-/

namespace A315412.P3449962452474252832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315468 n - A110654 (A057354 n).toNat

end

end A315412.P3449962452474252832

namespace A315412

/-- `A315468(n)-A110654(A057354(n))` -/
def P3449962452474252832.Spec : Prop :=
  ∀ n, P3449962452474252832.a n = A315412 n

end A315412

/-! ## A315412.P9965259468886122994

`A074067(A313255(n))`
-/

namespace A315412.P9965259468886122994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313255 n).toNat

end

end A315412.P9965259468886122994

namespace A315412

/-- `A074067(A313255(n))` -/
def P9965259468886122994.Spec : Prop :=
  ∀ n, P9965259468886122994.a n = A315412 n

end A315412

/-! ## A315412.P6505342421755390262

`A005843(A008706(n))-A313255(n)`
-/

namespace A315412.P6505342421755390262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313255 n

end

end A315412.P6505342421755390262

namespace A315412

/-- `A005843(A008706(n))-A313255(n)` -/
def P6505342421755390262.Spec : Prop :=
  ∀ n, P6505342421755390262.a n = A315412 n

end A315412

/-!
# A315413: Coordination sequence Gal.6.157.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315413, the canonical program `A315413.P11341791677008129181` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315413 has offset 0).

The definition of A315413 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2355 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315413.P11341791677008129181

`A313485(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315413

/-- `A313485(n)+A004525(n)` -/
def P11341791677008129181.Spec : Prop :=
  ∀ n, P11341791677008129181.a n = A315413 n

theorem P11341791677008129181.correct : P11341791677008129181.Spec := by
  intro n
  simp only [A315413]

end A315413

/-! ## A315413.P1374983866818717539

`A313778(n)+A128834(n)`
-/

namespace A315413.P1374983866818717539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + A128834 n

end

end A315413.P1374983866818717539

namespace A315413

/-- `A313778(n)+A128834(n)` -/
def P1374983866818717539.Spec : Prop :=
  ∀ n, P1374983866818717539.a n = A315413 n

end A315413

/-! ## A315413.P10585841012550348380

`abs(A008592(n)-A313251(n))`
-/

namespace A315413.P10585841012550348380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313251 n|

end

end A315413.P10585841012550348380

namespace A315413

/-- `abs(A008592(n)-A313251(n))` -/
def P10585841012550348380.Spec : Prop :=
  ∀ n, P10585841012550348380.a n = A315413 n

end A315413

/-! ## A315413.P13591459648894334950

`floor(A010015(n)/A313251(n))`
-/

namespace A315413.P13591459648894334950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313251 n : ℚ)⌋

end

end A315413.P13591459648894334950

namespace A315413

/-- `floor(A010015(n)/A313251(n))` -/
def P13591459648894334950.Spec : Prop :=
  ∀ n, P13591459648894334950.a n = A315413 n

end A315413

/-! ## A315413.P1912204565114736553

`A315687(n)-∑[A021913(n)]`
-/

namespace A315413.P1912204565114736553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315413.P1912204565114736553

namespace A315413

/-- `A315687(n)-∑[A021913(n)]` -/
def P1912204565114736553.Spec : Prop :=
  ∀ n, P1912204565114736553.a n = A315413 n

end A315413

/-! ## A315413.P12087808110902139449

`A315687(n)-Δ[A011848(n)]`
-/

namespace A315413.P12087808110902139449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315687 n - (f1 (n + 1) - f1 n)

end

end A315413.P12087808110902139449

namespace A315413

/-- `A315687(n)-Δ[A011848(n)]` -/
def P12087808110902139449.Spec : Prop :=
  ∀ n, P12087808110902139449.a n = A315413 n

end A315413

/-! ## A315413.P5142469199916241201

`A313778(n)-A010892(n+2)`
-/

namespace A315413.P5142469199916241201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n - A010892 (n + 2)

end

end A315413.P5142469199916241201

namespace A315413

/-- `A313778(n)-A010892(n+2)` -/
def P5142469199916241201.Spec : Prop :=
  ∀ n, P5142469199916241201.a n = A315413 n

end A315413

/-! ## A315413.P15796995169935734

`A313540(n)+A004396(A004525(n))`
-/

namespace A315413.P15796995169935734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + A004396 (A004525 n).toNat

end

end A315413.P15796995169935734

namespace A315413

/-- `A313540(n)+A004396(A004525(n))` -/
def P15796995169935734.Spec : Prop :=
  ∀ n, P15796995169935734.a n = A315413 n

end A315413

/-! ## A315413.P14027122041091459446

`A008458(n)+A008574(n)-A313251(n)`
-/

namespace A315413.P14027122041091459446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313251 n)

end

end A315413.P14027122041091459446

namespace A315413

/-- `A008458(n)+A008574(n)-A313251(n)` -/
def P14027122041091459446.Spec : Prop :=
  ∀ n, P14027122041091459446.a n = A315413 n

end A315413

/-! ## A315413.P13009893847548633110

`∑{d}[A008592(n)-A313251(n), A000010(#)]`
-/

namespace A315413.P13009893847548633110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315413.P13009893847548633110

namespace A315413

/-- `∑{d}[A008592(n)-A313251(n), A000010(#)]` -/
def P13009893847548633110.Spec : Prop :=
  ∀ n, P13009893847548633110.a n = A315413 n

end A315413

/-! ## A315413.P8392154290170436112

`A314031(n)+A134667(n)`
-/

namespace A315413.P8392154290170436112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314031 n + A134667 n

end

end A315413.P8392154290170436112

namespace A315413

/-- `A314031(n)+A134667(n)` -/
def P8392154290170436112.Spec : Prop :=
  ∀ n, P8392154290170436112.a n = A315413 n

end A315413

/-! ## A315413.P10627987199465861036

`A004396(A004525(n))+A315425(n)-A004525(n)`
-/

namespace A315413.P10627987199465861036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315425 n - A004525 n)

end

end A315413.P10627987199465861036

namespace A315413

/-- `A004396(A004525(n))+A315425(n)-A004525(n)` -/
def P10627987199465861036.Spec : Prop :=
  ∀ n, P10627987199465861036.a n = A315413 n

end A315413

/-! ## A315413.P13094550165855255875

`A004525(A004396(n))+A315488(n)-A004396(n)`
-/

namespace A315413.P13094550165855255875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315488 n - A004396 n)

end

end A315413.P13094550165855255875

namespace A315413

/-- `A004525(A004396(n))+A315488(n)-A004396(n)` -/
def P13094550165855255875.Spec : Prop :=
  ∀ n, P13094550165855255875.a n = A315413 n

end A315413

/-! ## A315413.P2521370872792045984

`A004396(A004525(n))+A315700(n)-n`
-/

namespace A315413.P2521370872792045984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315700 n - (n : ℤ))

end

end A315413.P2521370872792045984

namespace A315413

/-- `A004396(A004525(n))+A315700(n)-n` -/
def P2521370872792045984.Spec : Prop :=
  ∀ n, P2521370872792045984.a n = A315413 n

end A315413

/-! ## A315413.P9872309454963462835

`A074067(A313251(n))`
-/

namespace A315413.P9872309454963462835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313251 n).toNat

end

end A315413.P9872309454963462835

namespace A315413

/-- `A074067(A313251(n))` -/
def P9872309454963462835.Spec : Prop :=
  ∀ n, P9872309454963462835.a n = A315413 n

end A315413

/-! ## A315413.P16461646277167805341

`∏{d}[A008592(n)-A313251(n), A014963(#)]`
-/

namespace A315413.P16461646277167805341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A315413.P16461646277167805341

namespace A315413

/-- `∏{d}[A008592(n)-A313251(n), A014963(#)]` -/
def P16461646277167805341.Spec : Prop :=
  ∀ n, P16461646277167805341.a n = A315413 n

end A315413

/-!
# A315414: Coordination sequence Gal.6.206.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315414, the canonical program `A315414.P13779109499794009268` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315414 has offset 0).

The definition of A315414 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315414.P13779109499794009268

`abs(A008592(n)-A313247(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315414

/-- `abs(A008592(n)-A313247(n))` -/
def P13779109499794009268.Spec : Prop :=
  ∀ n, P13779109499794009268.a n = A315414 n

theorem P13779109499794009268.correct : P13779109499794009268.Spec := by
  intro n
  simp only [A315414]

end A315414

/-! ## A315414.P8032239307658456482

`2*A008706(n)-A313247(n)`
-/

namespace A315414.P8032239307658456482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313247 n

end

end A315414.P8032239307658456482

namespace A315414

/-- `2*A008706(n)-A313247(n)` -/
def P8032239307658456482.Spec : Prop :=
  ∀ n, P8032239307658456482.a n = A315414 n

end A315414

/-! ## A315414.P13684505170884663000

`A135042(2*n+1)-A313247(n)`
-/

namespace A315414.P13684505170884663000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313247 n

end

end A315414.P13684505170884663000

namespace A315414

/-- `A135042(2*n+1)-A313247(n)` -/
def P13684505170884663000.Spec : Prop :=
  ∀ n, P13684505170884663000.a n = A315414 n

end A315414

/-! ## A315414.P7022428507296974335

`A008458(n)+A008574(n)-A313247(n)`
-/

namespace A315414.P7022428507296974335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313247 n)

end

end A315414.P7022428507296974335

namespace A315414

/-- `A008458(n)+A008574(n)-A313247(n)` -/
def P7022428507296974335.Spec : Prop :=
  ∀ n, P7022428507296974335.a n = A315414 n

end A315414

/-! ## A315414.P2456366168250415228

`A315454(n)-Δ[A011864(n)]`
-/

namespace A315414.P2456366168250415228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315454 n - (f1 (n + 1) - f1 n)

end

end A315414.P2456366168250415228

namespace A315414

/-- `A315454(n)-Δ[A011864(n)]` -/
def P2456366168250415228.Spec : Prop :=
  ∀ n, P2456366168250415228.a n = A315414 n

end A315414

/-! ## A315414.P2344083674619652851

`A315183(n)+A004525(A315519(n)-A315183(n))`
-/

namespace A315414.P2344083674619652851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315183 n + A004525 (A315519 n - A315183 n).toNat

end

end A315414.P2344083674619652851

namespace A315414

/-- `A315183(n)+A004525(A315519(n)-A315183(n))` -/
def P2344083674619652851.Spec : Prop :=
  ∀ n, P2344083674619652851.a n = A315414 n

end A315414

/-! ## A315414.P7351179086013185581

`A005843(A008706(n))-A313247(n)`
-/

namespace A315414.P7351179086013185581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313247 n

end

end A315414.P7351179086013185581

namespace A315414

/-- `A005843(A008706(n))-A313247(n)` -/
def P7351179086013185581.Spec : Prop :=
  ∀ n, P7351179086013185581.a n = A315414 n

end A315414

/-! ## A315414.P2723558400257123777

`A065502(A008458(n))-A313247(n)`
-/

namespace A315414.P2723558400257123777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313247 n

end

end A315414.P2723558400257123777

namespace A315414

/-- `A065502(A008458(n))-A313247(n)` -/
def P2723558400257123777.Spec : Prop :=
  ∀ n, P2723558400257123777.a n = A315414 n

end A315414

/-! ## A315414.P17260895315039860348

`A313534(2*n)-4*n`
-/

namespace A315414.P17260895315039860348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313534 (2 * n) - (4 * n : ℤ)

end

end A315414.P17260895315039860348

namespace A315414

/-- `A313534(2*n)-4*n` -/
def P17260895315039860348.Spec : Prop :=
  ∀ n, P17260895315039860348.a n = A315414 n

end A315414

/-! ## A315414.P1424243531237618927

`A315643(2*n)/(4*n+1-A004273(2*n))`
-/

namespace A315414.P1424243531237618927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315643 (2 * n) : ℚ) / ((4 * n + 1 : ℤ) - A004273 (2 * n) : ℚ)

end

end A315414.P1424243531237618927

namespace A315414

/-- `A315643(2*n)/(4*n+1-A004273(2*n))` -/
def P1424243531237618927.Spec : Prop :=
  ∀ n, P1424243531237618927.a n = (A315414 n : ℚ)

end A315414

/-! ## A315414.P12233257090792161341

`A315643(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315414.P12233257090792161341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315643 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315414.P12233257090792161341

namespace A315414

/-- `A315643(2*n)/(4*n+2-A004277(2*n))` -/
def P12233257090792161341.Spec : Prop :=
  ∀ n, P12233257090792161341.a n = (A315414 n : ℚ)

end A315414

/-! ## A315414.P627759432642167091

`2*A008574(2*n)-A313899(2*n)`
-/

namespace A315414.P627759432642167091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313899 (2 * n)

end

end A315414.P627759432642167091

namespace A315414

/-- `2*A008574(2*n)-A313899(2*n)` -/
def P627759432642167091.Spec : Prop :=
  ∀ n, P627759432642167091.a n = A315414 n

end A315414

/-! ## A315414.P13971949578926688771

`A004278(A017089(n))-A313899(2*n)`
-/

namespace A315414.P13971949578926688771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017089 n).toNat - A313899 (2 * n)

end

end A315414.P13971949578926688771

namespace A315414

/-- `A004278(A017089(n))-A313899(2*n)` -/
def P13971949578926688771.Spec : Prop :=
  ∀ n, P13971949578926688771.a n = A315414 n

end A315414

/-! ## A315414.P17867295537668281971

`A004525(A315643(2*n))`
-/

namespace A315414.P17867295537668281971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315643 (2 * n)).toNat

end

end A315414.P17867295537668281971

namespace A315414

/-- `A004525(A315643(2*n))` -/
def P17867295537668281971.Spec : Prop :=
  ∀ n, P17867295537668281971.a n = A315414 n

end A315414

/-! ## A315414.P592992481593997232

`A004526(A315643(2*n)+1)`
-/

namespace A315414.P592992481593997232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315643 (2 * n) + 1).toNat

end

end A315414.P592992481593997232

namespace A315414

/-- `A004526(A315643(2*n)+1)` -/
def P592992481593997232.Spec : Prop :=
  ∀ n, P592992481593997232.a n = A315414 n

end A315414

/-! ## A315414.P7443083891095733907

`A008619(A315643(2*n)-1)`
-/

namespace A315414.P7443083891095733907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A315643 (2 * n) - 1).toNat

end

end A315414.P7443083891095733907

namespace A315414

/-- `A008619(A315643(2*n)-1)` -/
def P7443083891095733907.Spec : Prop :=
  ∀ n, P7443083891095733907.a n = A315414 n

end A315414

/-! ## A315414.P8584546290718070235

`A004525(A315519(n)+A315183(n))`
-/

namespace A315414.P8584546290718070235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315519 n + A315183 n).toNat

end

end A315414.P8584546290718070235

namespace A315414

/-- `A004525(A315519(n)+A315183(n))` -/
def P8584546290718070235.Spec : Prop :=
  ∀ n, P8584546290718070235.a n = A315414 n

end A315414

/-! ## A315414.P7922475575131159026

`A004525(A315470(n)+A315245(n))`
-/

namespace A315414.P7922475575131159026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315470 n + A315245 n).toNat

end

end A315414.P7922475575131159026

namespace A315414

/-- `A004525(A315470(n)+A315245(n))` -/
def P7922475575131159026.Spec : Prop :=
  ∀ n, P7922475575131159026.a n = A315414 n

end A315414

/-!
# A315415: Coordination sequence Gal.6.207.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315415, the canonical program `A315415.P4703822425570866206` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315415 has offset 0).

The definition of A315415 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315415.P4703822425570866206

`A313494(n)+A004525(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315415

/-- `A313494(n)+A004525(n)` -/
def P4703822425570866206.Spec : Prop :=
  ∀ n, P4703822425570866206.a n = A315415 n

theorem P4703822425570866206.correct : P4703822425570866206.Spec := by
  intro n
  simp only [A315415]

end A315415

/-! ## A315415.P8072398572711989719

`abs(A008592(n)-A313246(n))`
-/

namespace A315415.P8072398572711989719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313246 n|

end

end A315415.P8072398572711989719

namespace A315415

/-- `abs(A008592(n)-A313246(n))` -/
def P8072398572711989719.Spec : Prop :=
  ∀ n, P8072398572711989719.a n = A315415 n

end A315415

/-! ## A315415.P7843951583830493319

`2*A008706(n)-A313246(n)`
-/

namespace A315415.P7843951583830493319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313246 n

end

end A315415.P7843951583830493319

namespace A315415

/-- `2*A008706(n)-A313246(n)` -/
def P7843951583830493319.Spec : Prop :=
  ∀ n, P7843951583830493319.a n = A315415 n

end A315415

/-! ## A315415.P15127599397966023377

`A313569(n)+n-∑[A131735(n)]`
-/

namespace A315415.P15127599397966023377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315415.P15127599397966023377

namespace A315415

/-- `A313569(n)+n-∑[A131735(n)]` -/
def P15127599397966023377.Spec : Prop :=
  ∀ n, P15127599397966023377.a n = A315415 n

end A315415

/-! ## A315415.P5824449671992378941

`A313546(n)+A004396(A004525(n))`
-/

namespace A315415.P5824449671992378941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313546 n + A004396 (A004525 n).toNat

end

end A315415.P5824449671992378941

namespace A315415

/-- `A313546(n)+A004396(A004525(n))` -/
def P5824449671992378941.Spec : Prop :=
  ∀ n, P5824449671992378941.a n = A315415 n

end A315415

/-! ## A315415.P4009807196249977777

`A313569(n)+A004525(A004396(n))`
-/

namespace A315415.P4009807196249977777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + A004525 (A004396 n).toNat

end

end A315415.P4009807196249977777

namespace A315415

/-- `A313569(n)+A004525(A004396(n))` -/
def P4009807196249977777.Spec : Prop :=
  ∀ n, P4009807196249977777.a n = A315415 n

end A315415

/-! ## A315415.P14929682540728675872

`A008458(n)+A008574(n)-A313246(n)`
-/

namespace A315415.P14929682540728675872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313246 n)

end

end A315415.P14929682540728675872

namespace A315415

/-- `A008458(n)+A008574(n)-A313246(n)` -/
def P14929682540728675872.Spec : Prop :=
  ∀ n, P14929682540728675872.a n = A315415 n

end A315415

/-! ## A315415.P3782243232313479781

`A004525(A004396(n))+A312896(n)+A004525(n)`
-/

namespace A315415.P3782243232313479781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312896 n + A004525 n)

end

end A315415.P3782243232313479781

namespace A315415

/-- `A004525(A004396(n))+A312896(n)+A004525(n)` -/
def P3782243232313479781.Spec : Prop :=
  ∀ n, P3782243232313479781.a n = A315415 n

end A315415

/-! ## A315415.P614481610342595093

`A313246(n)+A005843(A008706(n)-A313246(n))`
-/

namespace A315415.P614481610342595093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313246 n + A005843 (A008706 n - A313246 n).toNat

end

end A315415.P614481610342595093

namespace A315415

/-- `A313246(n)+A005843(A008706(n)-A313246(n))` -/
def P614481610342595093.Spec : Prop :=
  ∀ n, P614481610342595093.a n = A315415 n

end A315415

/-! ## A315415.P2606613535469985071

`A313781(n)+A128834(n)`
-/

namespace A315415.P2606613535469985071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n + A128834 n

end

end A315415.P2606613535469985071

namespace A315415

/-- `A313781(n)+A128834(n)` -/
def P2606613535469985071.Spec : Prop :=
  ∀ n, P2606613535469985071.a n = A315415 n

end A315415

/-! ## A315415.P12843172083260386871

`A313781(n)-A010892(n+2)`
-/

namespace A315415.P12843172083260386871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313781 n - A010892 (n + 2)

end

end A315415.P12843172083260386871

namespace A315415

/-- `A313781(n)-A010892(n+2)` -/
def P12843172083260386871.Spec : Prop :=
  ∀ n, P12843172083260386871.a n = A315415 n

end A315415

/-! ## A315415.P6664868857546295292

`A004525(n)+A315405(n)-A004396(A004525(n))`
-/

namespace A315415.P6664868857546295292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315405 n - A004396 (A004525 n).toNat)

end

end A315415.P6664868857546295292

namespace A315415

/-- `A004525(n)+A315405(n)-A004396(A004525(n))` -/
def P6664868857546295292.Spec : Prop :=
  ∀ n, P6664868857546295292.a n = A315415 n

end A315415

/-! ## A315415.P2808973160750922763

`A005843(A008706(n))-A313246(n)`
-/

namespace A315415.P2808973160750922763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313246 n

end

end A315415.P2808973160750922763

namespace A315415

/-- `A005843(A008706(n))-A313246(n)` -/
def P2808973160750922763.Spec : Prop :=
  ∀ n, P2808973160750922763.a n = A315415 n

end A315415

/-! ## A315415.P13299392978978218981

`A004525(A315681(2*n))`
-/

namespace A315415.P13299392978978218981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315681 (2 * n)).toNat

end

end A315415.P13299392978978218981

namespace A315415

/-- `A004525(A315681(2*n))` -/
def P13299392978978218981.Spec : Prop :=
  ∀ n, P13299392978978218981.a n = A315415 n

end A315415

/-! ## A315415.P8831697386503774844

`A004525(A314085(2*n)+n)`
-/

namespace A315415.P8831697386503774844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314085 (2 * n) + (n : ℤ)).toNat

end

end A315415.P8831697386503774844

namespace A315415

/-- `A004525(A314085(2*n)+n)` -/
def P8831697386503774844.Spec : Prop :=
  ∀ n, P8831697386503774844.a n = A315415 n

end A315415

/-!
# A315416: Coordination sequence Gal.5.142.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315416, the canonical program `A315416.P2094941697725940061` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315416 has offset 0).

The definition of A315416 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2327 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315416.P2094941697725940061

`abs(A008592(n)-A313241(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315416

/-- `abs(A008592(n)-A313241(n))` -/
def P2094941697725940061.Spec : Prop :=
  ∀ n, P2094941697725940061.a n = A315416 n

theorem P2094941697725940061.correct : P2094941697725940061.Spec := by
  intro n
  simp only [A315416]

end A315416

/-! ## A315416.P12722168976419895741

`2*A008706(n)-A313241(n)`
-/

namespace A315416.P12722168976419895741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313241 n

end

end A315416.P12722168976419895741

namespace A315416

/-- `2*A008706(n)-A313241(n)` -/
def P12722168976419895741.Spec : Prop :=
  ∀ n, P12722168976419895741.a n = A315416 n

end A315416

/-! ## A315416.P16325172185393080745

`A315696(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315416.P16325172185393080745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315696 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315416.P16325172185393080745

namespace A315416

/-- `A315696(2*n)+A008458(n+1)-(12*n+6)` -/
def P16325172185393080745.Spec : Prop :=
  ∀ n, P16325172185393080745.a n = A315416 n

end A315416

/-! ## A315416.P11874162680293282337

`A008458(n)+A008574(n)-A313241(n)`
-/

namespace A315416.P11874162680293282337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313241 n)

end

end A315416.P11874162680293282337

namespace A315416

/-- `A008458(n)+A008574(n)-A313241(n)` -/
def P11874162680293282337.Spec : Prop :=
  ∀ n, P11874162680293282337.a n = A315416 n

end A315416

/-! ## A315416.P7387417126642436686

`A313241(n)+A005843(A008706(n)-A313241(n))`
-/

namespace A315416.P7387417126642436686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313241 n + A005843 (A008706 n - A313241 n).toNat

end

end A315416.P7387417126642436686

namespace A315416

/-- `A313241(n)+A005843(A008706(n)-A313241(n))` -/
def P7387417126642436686.Spec : Prop :=
  ∀ n, P7387417126642436686.a n = A315416 n

end A315416

/-! ## A315416.P13644828727894970312

`(A008592(n)-A313241(n))^A001221(A000961(n+1))`
-/

namespace A315416.P13644828727894970312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A313241 n : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A315416.P13644828727894970312

namespace A315416

/-- `(A008592(n)-A313241(n))^A001221(A000961(n+1))` -/
def P13644828727894970312.Spec : Prop :=
  ∀ n, P13644828727894970312.a n = (A315416 n : ℚ)

end A315416

/-! ## A315416.P11436371782265921868

`A315475(n)-Δ[A011862(n)]`
-/

namespace A315416.P11436371782265921868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n - (f1 (n + 1) - f1 n)

end

end A315416.P11436371782265921868

namespace A315416

/-- `A315475(n)-Δ[A011862(n)]` -/
def P11436371782265921868.Spec : Prop :=
  ∀ n, P11436371782265921868.a n = A315416 n

end A315416

/-! ## A315416.P18435278734314597600

`A004396(A004396(n))+A315475(n)-A004396(n)`
-/

namespace A315416.P18435278734314597600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315475 n - A004396 n)

end

end A315416.P18435278734314597600

namespace A315416

/-- `A004396(A004396(n))+A315475(n)-A004396(n)` -/
def P18435278734314597600.Spec : Prop :=
  ∀ n, P18435278734314597600.a n = A315416 n

end A315416

/-! ## A315416.P12797098026207953127

`A315198(n)+A004396(n-A004396(n))`
-/

namespace A315416.P12797098026207953127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315198 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315416.P12797098026207953127

namespace A315416

/-- `A315198(n)+A004396(n-A004396(n))` -/
def P12797098026207953127.Spec : Prop :=
  ∀ n, P12797098026207953127.a n = A315416 n

end A315416

/-! ## A315416.P2404245197057836208

`A315523(n)-Δ[2*A011862(n)]`
-/

namespace A315416.P2404245197057836208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - (f1 (n + 1) - f1 n)

end

end A315416.P2404245197057836208

namespace A315416

/-- `A315523(n)-Δ[2*A011862(n)]` -/
def P2404245197057836208.Spec : Prop :=
  ∀ n, P2404245197057836208.a n = A315416 n

end A315416

/-! ## A315416.P7278755430058086586

`2*n+A004396(A315185(n))`
-/

namespace A315416.P7278755430058086586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315185 n).toNat

end

end A315416.P7278755430058086586

namespace A315416

/-- `2*n+A004396(A315185(n))` -/
def P7278755430058086586.Spec : Prop :=
  ∀ n, P7278755430058086586.a n = A315416 n

end A315416

/-! ## A315416.P209468597075847449

`A008585(n)-(n-A004396(A315185(n)))`
-/

namespace A315416.P209468597075847449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315185 n).toNat)

end

end A315416.P209468597075847449

namespace A315416

/-- `A008585(n)-(n-A004396(A315185(n)))` -/
def P209468597075847449.Spec : Prop :=
  ∀ n, P209468597075847449.a n = A315416 n

end A315416

/-! ## A315416.P8344253323225626375

`A005843(A008706(n))-A313241(n)`
-/

namespace A315416.P8344253323225626375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313241 n

end

end A315416.P8344253323225626375

namespace A315416

/-- `A005843(A008706(n))-A313241(n)` -/
def P8344253323225626375.Spec : Prop :=
  ∀ n, P8344253323225626375.a n = A315416 n

end A315416

/-! ## A315416.P5341133573674242960

`A004396(A315185(n)+A008486(n))`
-/

namespace A315416.P5341133573674242960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315185 n + A008486 n).toNat

end

end A315416.P5341133573674242960

namespace A315416

/-- `A004396(A315185(n)+A008486(n))` -/
def P5341133573674242960.Spec : Prop :=
  ∀ n, P5341133573674242960.a n = A315416 n

end A315416

/-! ## A315416.P9742906696981461283

`A004396(A315185(n)+A008585(n))`
-/

namespace A315416.P9742906696981461283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315185 n + A008585 n).toNat

end

end A315416.P9742906696981461283

namespace A315416

/-- `A004396(A315185(n)+A008585(n))` -/
def P9742906696981461283.Spec : Prop :=
  ∀ n, P9742906696981461283.a n = A315416 n

end A315416

/-! ## A315416.P13245644144794996468

`A004396(A315646(2*n))-A005843(n)`
-/

namespace A315416.P13245644144794996468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315646 (2 * n)).toNat - A005843 n

end

end A315416.P13245644144794996468

namespace A315416

/-- `A004396(A315646(2*n))-A005843(n)` -/
def P13245644144794996468.Spec : Prop :=
  ∀ n, P13245644144794996468.a n = A315416 n

end A315416

/-! ## A315416.P14100994137345344321

`A000122(n²+1)+A008592(n)-A313241(n)`
-/

namespace A315416.P14100994137345344321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) + (A008592 n - A313241 n)

end

end A315416.P14100994137345344321

namespace A315416

/-- `A000122(n²+1)+A008592(n)-A313241(n)` -/
def P14100994137345344321.Spec : Prop :=
  ∀ n, P14100994137345344321.a n = A315416 n

end A315416

/-!
# A315417: Coordination sequence Gal.6.354.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315417, the canonical program `A315417.P14288503187681228952` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315417 has offset 0).

The definition of A315417 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315417.P14288503187681228952

`A313510(n)+A004525(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315417

/-- `A313510(n)+A004525(n)` -/
def P14288503187681228952.Spec : Prop :=
  ∀ n, P14288503187681228952.a n = A315417 n

theorem P14288503187681228952.correct : P14288503187681228952.Spec := by
  intro n
  simp only [A315417]

end A315417

/-! ## A315417.P14511532815892497438

`A314097(n)+A101455(n)`
-/

namespace A315417.P14511532815892497438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314097 n + A101455 n

end

end A315417.P14511532815892497438

namespace A315417

/-- `A314097(n)+A101455(n)` -/
def P14511532815892497438.Spec : Prop :=
  ∀ n, P14511532815892497438.a n = A315417 n

end A315417

/-! ## A315417.P3542059273544702697

`A313791(n)+A128834(n)`
-/

namespace A315417.P3542059273544702697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313791 n + A128834 n

end

end A315417.P3542059273544702697

namespace A315417

/-- `A313791(n)+A128834(n)` -/
def P3542059273544702697.Spec : Prop :=
  ∀ n, P3542059273544702697.a n = A315417 n

end A315417

/-! ## A315417.P14060965932246446892

`abs(A008592(n)-A313237(n))`
-/

namespace A315417.P14060965932246446892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313237 n|

end

end A315417.P14060965932246446892

namespace A315417

/-- `abs(A008592(n)-A313237(n))` -/
def P14060965932246446892.Spec : Prop :=
  ∀ n, P14060965932246446892.a n = A315417 n

end A315417

/-! ## A315417.P7014761222729818777

`A315693(n)-∑[A021913(n)]`
-/

namespace A315417.P7014761222729818777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315417.P7014761222729818777

namespace A315417

/-- `A315693(n)-∑[A021913(n)]` -/
def P7014761222729818777.Spec : Prop :=
  ∀ n, P7014761222729818777.a n = A315417 n

end A315417

/-! ## A315417.P7577807691877918818

`A313510(n)+Δ[A054925(n)]`
-/

namespace A315417.P7577807691877918818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + (f1 (n + 1) - f1 n)

end

end A315417.P7577807691877918818

namespace A315417

/-- `A313510(n)+Δ[A054925(n)]` -/
def P7577807691877918818.Spec : Prop :=
  ∀ n, P7577807691877918818.a n = A315417 n

end A315417

/-! ## A315417.P4343603831353410779

`A315693(n)-Δ[A011848(n)]`
-/

namespace A315417.P4343603831353410779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - (f1 (n + 1) - f1 n)

end

end A315417.P4343603831353410779

namespace A315417

/-- `A315693(n)-Δ[A011848(n)]` -/
def P4343603831353410779.Spec : Prop :=
  ∀ n, P4343603831353410779.a n = A315417 n

end A315417

/-! ## A315417.P11089264566931726207

`A315196(n)+A002264(n+1)`
-/

namespace A315417.P11089264566931726207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n + A002264 (n + 1)

end

end A315417.P11089264566931726207

namespace A315417

/-- `A315196(n)+A002264(n+1)` -/
def P11089264566931726207.Spec : Prop :=
  ∀ n, P11089264566931726207.a n = A315417 n

end A315417

/-! ## A315417.P18075920542322433114

`A315693(n)-A004524(n+1)`
-/

namespace A315417.P18075920542322433114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - A004524 (n + 1)

end

end A315417.P18075920542322433114

namespace A315417

/-- `A315693(n)-A004524(n+1)` -/
def P18075920542322433114.Spec : Prop :=
  ∀ n, P18075920542322433114.a n = A315417 n

end A315417

/-! ## A315417.P8390310805851356059

`A315196(n)+n-A004396(n)`
-/

namespace A315417.P8390310805851356059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n + ((n : ℤ) - A004396 n)

end

end A315417.P8390310805851356059

namespace A315417

/-- `A315196(n)+n-A004396(n)` -/
def P8390310805851356059.Spec : Prop :=
  ∀ n, P8390310805851356059.a n = A315417 n

end A315417

/-! ## A315417.P7958248742467244996

`A004525(n)+A315693(n)-n`
-/

namespace A315417.P7958248742467244996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315693 n - (n : ℤ))

end

end A315417.P7958248742467244996

namespace A315417

/-- `A004525(n)+A315693(n)-n` -/
def P7958248742467244996.Spec : Prop :=
  ∀ n, P7958248742467244996.a n = A315417 n

end A315417

/-! ## A315417.P10301182396441350786

`A313510(n)+n-∑[A021913(n)]`
-/

namespace A315417.P10301182396441350786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315417.P10301182396441350786

namespace A315417

/-- `A313510(n)+n-∑[A021913(n)]` -/
def P10301182396441350786.Spec : Prop :=
  ∀ n, P10301182396441350786.a n = A315417 n

end A315417

/-! ## A315417.P3983135115801911001

`A313510(n)+n-Δ[A011848(n)]`
-/

namespace A315417.P3983135115801911001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315417.P3983135115801911001

namespace A315417

/-- `A313510(n)+n-Δ[A011848(n)]` -/
def P3983135115801911001.Spec : Prop :=
  ∀ n, P3983135115801911001.a n = A315417 n

end A315417

/-! ## A315417.P12111558209126817967

`Δ[A054925(n)]+A315693(n)-n`
-/

namespace A315417.P12111558209126817967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315693 n - (n : ℤ))

end

end A315417.P12111558209126817967

namespace A315417

/-- `Δ[A054925(n)]+A315693(n)-n` -/
def P12111558209126817967.Spec : Prop :=
  ∀ n, P12111558209126817967.a n = A315417 n

end A315417

/-! ## A315417.P3431433079995911961

`A313569(n)+A004396(A004525(n))`
-/

namespace A315417.P3431433079995911961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313569 n + A004396 (A004525 n).toNat

end

end A315417.P3431433079995911961

namespace A315417

/-- `A313569(n)+A004396(A004525(n))` -/
def P3431433079995911961.Spec : Prop :=
  ∀ n, P3431433079995911961.a n = A315417 n

end A315417

/-! ## A315417.P11828729169696845114

`A312933(n)+2*A004396(A004525(n))`
-/

namespace A315417.P11828729169696845114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312933 n + 2 * A004396 (A004525 n).toNat

end

end A315417.P11828729169696845114

namespace A315417

/-- `A312933(n)+2*A004396(A004525(n))` -/
def P11828729169696845114.Spec : Prop :=
  ∀ n, P11828729169696845114.a n = A315417 n

end A315417

/-! ## A315417.P10999222011475958893

`A008458(n)+A008574(n)-A313237(n)`
-/

namespace A315417.P10999222011475958893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313237 n)

end

end A315417.P10999222011475958893

namespace A315417

/-- `A008458(n)+A008574(n)-A313237(n)` -/
def P10999222011475958893.Spec : Prop :=
  ∀ n, P10999222011475958893.a n = A315417 n

end A315417

/-! ## A315417.P6349429921037326091

`A008486(n)+A315196(n)-A008576(n)`
-/

namespace A315417.P6349429921037326091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315196 n - A008576 n)

end

end A315417.P6349429921037326091

namespace A315417

/-- `A008486(n)+A315196(n)-A008576(n)` -/
def P6349429921037326091.Spec : Prop :=
  ∀ n, P6349429921037326091.a n = A315417 n

end A315417

/-! ## A315417.P6627556687489863183

`A004525(n)+A312896(n)+A004396(A004525(n))`
-/

namespace A315417.P6627556687489863183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A312896 n + A004396 (A004525 n).toNat)

end

end A315417.P6627556687489863183

namespace A315417

/-- `A004525(n)+A312896(n)+A004396(A004525(n))` -/
def P6627556687489863183.Spec : Prop :=
  ∀ n, P6627556687489863183.a n = A315417 n

end A315417

/-! ## A315417.P8869332781502761578

`A004525(n)+A315405(n)-A004525(A004396(n))`
-/

namespace A315417.P8869332781502761578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315405 n - A004525 (A004396 n).toNat)

end

end A315417.P8869332781502761578

namespace A315417

/-- `A004525(n)+A315405(n)-A004525(A004396(n))` -/
def P8869332781502761578.Spec : Prop :=
  ∀ n, P8869332781502761578.a n = A315417 n

end A315417

/-!
# A315418: Coordination sequence Gal.3.21.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315418, the canonical program `A315418.P15242230179806644954` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315418 has offset 0).

The definition of A315418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A315418.P15242230179806644954

`a(n-1)+a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=15, a(4)=20, a(5)=26, a(6)=32`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A315418

/-- `a(n-1)+a(n-5)-a(n-6)` -/
def P15242230179806644954.Spec : Prop :=
  ∀ n, P15242230179806644954.a n = A315418 n

theorem P15242230179806644954.correct : P15242230179806644954.Spec := by
  intro n
  simp only [A315418]

end A315418

/-! ## A315418.P14871747098911530148

`abs(A008592(n)-A313232(n))`
-/

namespace A315418.P14871747098911530148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313232 n|

end

end A315418.P14871747098911530148

namespace A315418

/-- `abs(A008592(n)-A313232(n))` -/
def P14871747098911530148.Spec : Prop :=
  ∀ n, P14871747098911530148.a n = A315418 n

end A315418

/-! ## A315418.P11504659953611692696

`A315187(n)+Δ[A011858(n)]`
-/

namespace A315418.P11504659953611692696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n + (f1 (n + 1) - f1 n)

end

end A315418.P11504659953611692696

namespace A315418

/-- `A315187(n)+Δ[A011858(n)]` -/
def P11504659953611692696.Spec : Prop :=
  ∀ n, P11504659953611692696.a n = A315418 n

end A315418

/-! ## A315418.P12797095765923461457

`A244895(n)+A311807(n)+n`
-/

namespace A315418.P12797095765923461457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n + (A311807 n + (n : ℤ))

end

end A315418.P12797095765923461457

namespace A315418

/-- `A244895(n)+A311807(n)+n` -/
def P12797095765923461457.Spec : Prop :=
  ∀ n, P12797095765923461457.a n = A315418 n

end A315418

/-! ## A315418.P13146524139425852816

`A004772(A072154(n))+2*n+1`
-/

namespace A315418.P13146524139425852816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (A072154 n).toNat + (2 * n + 1 : ℤ)

end

end A315418.P13146524139425852816

namespace A315418

/-- `A004772(A072154(n))+2*n+1` -/
def P13146524139425852816.Spec : Prop :=
  ∀ n, P13146524139425852816.a n = A315418 n

end A315418

/-! ## A315418.P15561423867639480226

`A042965(A072154(n)+1)+2*n`
-/

namespace A315418.P15561423867639480226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (A072154 n + 1).toNat + (2 * n : ℤ)

end

end A315418.P15561423867639480226

namespace A315418

/-- `A042965(A072154(n)+1)+2*n` -/
def P15561423867639480226.Spec : Prop :=
  ∀ n, P15561423867639480226.a n = A315418 n

end A315418

/-! ## A315418.P17748091023157746708

`A008458(n)-A265227(n+1)+n`
-/

namespace A315418.P17748091023157746708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A265227 (n + 1) + (n : ℤ)

end

end A315418.P17748091023157746708

namespace A315418

/-- `A008458(n)-A265227(n+1)+n` -/
def P17748091023157746708.Spec : Prop :=
  ∀ n, P17748091023157746708.a n = A315418 n

end A315418

/-! ## A315418.P7585460429705837512

`A022144(n)-(A265227(n+1)+n)`
-/

namespace A315418.P7585460429705837512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 n - (A265227 (n + 1) + (n : ℤ))

end

end A315418.P7585460429705837512

namespace A315418

/-- `A022144(n)-(A265227(n+1)+n)` -/
def P7585460429705837512.Spec : Prop :=
  ∀ n, P7585460429705837512.a n = A315418 n

end A315418

/-! ## A315418.P6456636437935222629

`4*n+A072154(n)-A047263(n+1)`
-/

namespace A315418.P6456636437935222629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A072154 n - A047263 (n + 1))

end

end A315418.P6456636437935222629

namespace A315418

/-- `4*n+A072154(n)-A047263(n+1)` -/
def P6456636437935222629.Spec : Prop :=
  ∀ n, P6456636437935222629.a n = A315418 n

end A315418

/-! ## A315418.P9277682839656595023

`4*n+A008486(n)-A265227(n+1)`
-/

namespace A315418.P9277682839656595023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) + (A008486 n - A265227 (n + 1))

end

end A315418.P9277682839656595023

namespace A315418

/-- `4*n+A008486(n)-A265227(n+1)` -/
def P9277682839656595023.Spec : Prop :=
  ∀ n, P9277682839656595023.a n = A315418 n

end A315418

/-! ## A315418.P15064830202322509527

`A005408(n)+A004772(A072154(n))`
-/

namespace A315418.P15064830202322509527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n + A004772 (A072154 n).toNat

end

end A315418.P15064830202322509527

namespace A315418

/-- `A005408(n)+A004772(A072154(n))` -/
def P15064830202322509527.Spec : Prop :=
  ∀ n, P15064830202322509527.a n = A315418 n

end A315418

/-! ## A315418.P876310610322411379

`A008458(n)+A008574(n)-A313232(n)`
-/

namespace A315418.P876310610322411379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313232 n)

end

end A315418.P876310610322411379

namespace A315418

/-- `A008458(n)+A008574(n)-A313232(n)` -/
def P876310610322411379.Spec : Prop :=
  ∀ n, P876310610322411379.a n = A315418 n

end A315418

/-! ## A315418.P9862791274663836165

`A315610(n)-A244895(n-A244895(n))`
-/

namespace A315418.P9862791274663836165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315610 n - A244895 ((n : ℤ) - A244895 n).toNat

end

end A315418.P9862791274663836165

namespace A315418

/-- `A315610(n)-A244895(n-A244895(n))` -/
def P9862791274663836165.Spec : Prop :=
  ∀ n, P9862791274663836165.a n = A315418 n

end A315418

/-! ## A315418.P4145907882832379546

`A047263(n+1)+A244895(n)+A008574(n)`
-/

namespace A315418.P4145907882832379546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A244895 n + A008574 n)

end

end A315418.P4145907882832379546

namespace A315418

/-- `A047263(n+1)+A244895(n)+A008574(n)` -/
def P4145907882832379546.Spec : Prop :=
  ∀ n, P4145907882832379546.a n = A315418 n

end A315418

/-! ## A315418.P8053174059897467727

`A313873(n)+A244895(n)`
-/

namespace A315418.P8053174059897467727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313873 n + A244895 n

end

end A315418.P8053174059897467727

namespace A315418

/-- `A313873(n)+A244895(n)` -/
def P8053174059897467727.Spec : Prop :=
  ∀ n, P8053174059897467727.a n = A315418 n

end A315418

/-! ## A315418.P4443545200548262164

`A315654(n)-Δ[A011858(n)]`
-/

namespace A315418.P4443545200548262164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315654 n - (f1 (n + 1) - f1 n)

end

end A315418.P4443545200548262164

namespace A315418

/-- `A315654(n)-Δ[A011858(n)]` -/
def P4443545200548262164.Spec : Prop :=
  ∀ n, P4443545200548262164.a n = A315418 n

end A315418

/-! ## A315418.P8376440840025706771

`A072154(n)+A057354(7*n+1)`
-/

namespace A315418.P8376440840025706771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + A057354 (7 * n + 1)

end

end A315418.P8376440840025706771

namespace A315418

/-- `A072154(n)+A057354(7*n+1)` -/
def P8376440840025706771.Spec : Prop :=
  ∀ n, P8376440840025706771.a n = A315418 n

end A315418

/-! ## A315418.P2426474393910817946

`A312892(2*n)-A047448(2*n+1)`
-/

namespace A315418.P2426474393910817946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312892 (2 * n) - A047448 (2 * n + 1)

end

end A315418.P2426474393910817946

namespace A315418

/-- `A312892(2*n)-A047448(2*n+1)` -/
def P2426474393910817946.Spec : Prop :=
  ∀ n, P2426474393910817946.a n = A315418 n

end A315418

/-! ## A315418.P17058818628044381715

`A004396(2*A314685(n)-n)`
-/

namespace A315418.P17058818628044381715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A314685 n - (n : ℤ)).toNat

end

end A315418.P17058818628044381715

namespace A315418

/-- `A004396(2*A314685(n)-n)` -/
def P17058818628044381715.Spec : Prop :=
  ∀ n, P17058818628044381715.a n = A315418 n

end A315418

/-! ## A315418.P5694311693121864994

`A310446(2*n)-2*A151988(2*n)`
-/

namespace A315418.P5694311693121864994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310446 (2 * n) - 2 * A151988 (2 * n)

end

end A315418.P5694311693121864994

namespace A315418

/-- `A310446(2*n)-2*A151988(2*n)` -/
def P5694311693121864994.Spec : Prop :=
  ∀ n, P5694311693121864994.a n = A315418 n

end A315418

/-!
# A315419: Coordination sequence Gal.5.257.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315419, there is no canonical definition to state claims against.
-/

/-! ## A315419.P15956134623951785586

`abs(A008592(n)-A313230(n))`
-/

namespace A315419.P15956134623951785586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313230 n|

end

end A315419.P15956134623951785586

/-! ## A315419.P5548613603408879638

`A315618(n)-∑[A131736(n)]`
-/

namespace A315419.P5548613603408879638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315618 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315419.P5548613603408879638

/-! ## A315419.P5471221493715542078

`2*A008706(n)-A313230(n)`
-/

namespace A315419.P5471221493715542078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313230 n

end

end A315419.P5471221493715542078

/-! ## A315419.P1110413300471506844

`A184418(A008574(n))-A313230(n)`
-/

namespace A315419.P1110413300471506844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313230 n

end

end A315419.P1110413300471506844

/-! ## A315419.P9368240264714486333

`A000038(n)+A008592(n)-A313230(n)`
-/

namespace A315419.P9368240264714486333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313230 n)

end

end A315419.P9368240264714486333

/-! ## A315419.P41125006081596581

`A008458(n)+A008574(n)-A313230(n)`
-/

namespace A315419.P41125006081596581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313230 n)

end

end A315419.P41125006081596581

/-! ## A315419.P11139714175965548738

`∑{d}[A008592(n)-A313230(n), A000010(#)]`
-/

namespace A315419.P11139714175965548738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313230 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315419.P11139714175965548738

/-! ## A315419.P17237656722102286936

`(A008592(n)-A313230(n))^(2-A057427(n))`
-/

namespace A315419.P17237656722102286936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A313230 n : ℚ) ^ (2 - A057427 n : ℤ)

end

end A315419.P17237656722102286936

/-! ## A315419.P13129380137663465187

`A005843(A008706(n))-A313230(n)`
-/

namespace A315419.P13129380137663465187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313230 n

end

end A315419.P13129380137663465187

/-! ## A315419.P641790749158359147

`A233583(A017281(n))-A313230(n)`
-/

namespace A315419.P641790749158359147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313230 n

end

end A315419.P641790749158359147

/-!
# A315420: Coordination sequence Gal.6.355.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315420, the canonical program `A315420.P8749881829498204379` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315420 has offset 0).

The definition of A315420 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315420.P8749881829498204379

`abs(A008592(n)-A313229(n))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315420

/-- `abs(A008592(n)-A313229(n))` -/
def P8749881829498204379.Spec : Prop :=
  ∀ n, P8749881829498204379.a n = A315420 n

theorem P8749881829498204379.correct : P8749881829498204379.Spec := by
  intro n
  simp only [A315420]

end A315420

/-! ## A315420.P6276658921587306114

`2*A008706(n)-A313229(n)`
-/

namespace A315420.P6276658921587306114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313229 n

end

end A315420.P6276658921587306114

namespace A315420

/-- `2*A008706(n)-A313229(n)` -/
def P6276658921587306114.Spec : Prop :=
  ∀ n, P6276658921587306114.a n = A315420 n

end A315420

/-! ## A315420.P18352777209287404724

`A008458(n)+A008574(n)-A313229(n)`
-/

namespace A315420.P18352777209287404724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313229 n)

end

end A315420.P18352777209287404724

namespace A315420

/-- `A008458(n)+A008574(n)-A313229(n)` -/
def P18352777209287404724.Spec : Prop :=
  ∀ n, P18352777209287404724.a n = A315420 n

end A315420

/-! ## A315420.P4892200977068550302

`2*n+A004396(A315188(n))`
-/

namespace A315420.P4892200977068550302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315188 n).toNat

end

end A315420.P4892200977068550302

namespace A315420

/-- `2*n+A004396(A315188(n))` -/
def P4892200977068550302.Spec : Prop :=
  ∀ n, P4892200977068550302.a n = A315420 n

end A315420

/-! ## A315420.P11861794990386393807

`A008585(n)-(n-A004396(A315188(n)))`
-/

namespace A315420.P11861794990386393807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n - ((n : ℤ) - A004396 (A315188 n).toNat)

end

end A315420.P11861794990386393807

namespace A315420

/-- `A008585(n)-(n-A004396(A315188(n)))` -/
def P11861794990386393807.Spec : Prop :=
  ∀ n, P11861794990386393807.a n = A315420 n

end A315420

/-! ## A315420.P12311644203827299512

`A005843(A008706(n))-A313229(n)`
-/

namespace A315420.P12311644203827299512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313229 n

end

end A315420.P12311644203827299512

namespace A315420

/-- `A005843(A008706(n))-A313229(n)` -/
def P12311644203827299512.Spec : Prop :=
  ∀ n, P12311644203827299512.a n = A315420 n

end A315420

/-! ## A315420.P10571104784598310980

`A004396(A315188(n)+A008486(n))`
-/

namespace A315420.P10571104784598310980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315188 n + A008486 n).toNat

end

end A315420.P10571104784598310980

namespace A315420

/-- `A004396(A315188(n)+A008486(n))` -/
def P10571104784598310980.Spec : Prop :=
  ∀ n, P10571104784598310980.a n = A315420 n

end A315420

/-! ## A315420.P16541628808191036126

`A004396(A315188(n)+A008585(n))`
-/

namespace A315420.P16541628808191036126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315188 n + A008585 n).toNat

end

end A315420.P16541628808191036126

namespace A315420

/-- `A004396(A315188(n)+A008585(n))` -/
def P16541628808191036126.Spec : Prop :=
  ∀ n, P16541628808191036126.a n = A315420 n

end A315420

/-! ## A315420.P5773281854538303870

`A004396(2*A315478(n)-A008486(n))`
-/

namespace A315420.P5773281854538303870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315478 n - A008486 n).toNat

end

end A315420.P5773281854538303870

namespace A315420

/-- `A004396(2*A315478(n)-A008486(n))` -/
def P5773281854538303870.Spec : Prop :=
  ∀ n, P5773281854538303870.a n = A315420 n

end A315420

/-! ## A315420.P367911701080901767

`A004396(A315478(n)+A315478(n)-A008486(n))`
-/

namespace A315420.P367911701080901767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315478 n + (A315478 n - A008486 n)).toNat

end

end A315420.P367911701080901767

namespace A315420

/-- `A004396(A315478(n)+A315478(n)-A008486(n))` -/
def P367911701080901767.Spec : Prop :=
  ∀ n, P367911701080901767.a n = A315420 n

end A315420

/-! ## A315420.P17730230540157965847

`A004396(A315478(n)-(A008486(n)-A315478(n)))`
-/

namespace A315420.P17730230540157965847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315478 n - (A008486 n - A315478 n)).toNat

end

end A315420.P17730230540157965847

namespace A315420

/-- `A004396(A315478(n)-(A008486(n)-A315478(n)))` -/
def P17730230540157965847.Spec : Prop :=
  ∀ n, P17730230540157965847.a n = A315420 n

end A315420

/-! ## A315420.P17379213359044190262

`A004396(A315730(2*n)-A008585(n))`
-/

namespace A315420.P17379213359044190262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315730 (2 * n) - A008585 n).toNat

end

end A315420.P17379213359044190262

namespace A315420

/-- `A004396(A315730(2*n)-A008585(n))` -/
def P17379213359044190262.Spec : Prop :=
  ∀ n, P17379213359044190262.a n = A315420 n

end A315420

/-! ## A315420.P17884765260314253356

`A315746(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315420.P17884765260314253356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315746 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315420.P17884765260314253356

namespace A315420

/-- `A315746(2*n)+A008458(n+1)-(12*n+6)` -/
def P17884765260314253356.Spec : Prop :=
  ∀ n, P17884765260314253356.a n = A315420 n

end A315420

/-! ## A315420.P6510138607306593305

`A004525(A315736(2*n))`
-/

namespace A315420.P6510138607306593305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315736 (2 * n)).toNat

end

end A315420.P6510138607306593305

namespace A315420

/-- `A004525(A315736(2*n))` -/
def P6510138607306593305.Spec : Prop :=
  ∀ n, P6510138607306593305.a n = A315420 n

end A315420

/-! ## A315420.P2385897111357168674

`A004396(2*A315478(n))-2*n`
-/

namespace A315420.P2385897111357168674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315478 n).toNat - (2 * n : ℤ)

end

end A315420.P2385897111357168674

namespace A315420

/-- `A004396(2*A315478(n))-2*n` -/
def P2385897111357168674.Spec : Prop :=
  ∀ n, P2385897111357168674.a n = A315420 n

end A315420

/-! ## A315420.P12763989375317378601

`A004396(A315730(2*n))-A005843(n)`
-/

namespace A315420.P12763989375317378601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315730 (2 * n)).toNat - A005843 n

end

end A315420.P12763989375317378601

namespace A315420

/-- `A004396(A315730(2*n))-A005843(n)` -/
def P12763989375317378601.Spec : Prop :=
  ∀ n, P12763989375317378601.a n = A315420 n

end A315420

/-! ## A315420.P2537128556386196575

`A004396(A315740(2*n))-A005843(n)`
-/

namespace A315420.P2537128556386196575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315740 (2 * n)).toNat - A005843 n

end

end A315420.P2537128556386196575

namespace A315420

/-- `A004396(A315740(2*n))-A005843(n)` -/
def P2537128556386196575.Spec : Prop :=
  ∀ n, P2537128556386196575.a n = A315420 n

end A315420

/-!
# A315421: Coordination sequence Gal.6.356.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315421, the canonical program `A315421.P8258673194195671996` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315421 has offset 0).

The definition of A315421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315421.P8258673194195671996

`A313515(n)+A004525(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315421

/-- `A313515(n)+A004525(n)` -/
def P8258673194195671996.Spec : Prop :=
  ∀ n, P8258673194195671996.a n = A315421 n

theorem P8258673194195671996.correct : P8258673194195671996.Spec := by
  intro n
  simp only [A315421]

end A315421

/-! ## A315421.P2729547264903621273

`abs(A008592(n)-A313228(n))`
-/

namespace A315421.P2729547264903621273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313228 n|

end

end A315421.P2729547264903621273

namespace A315421

/-- `abs(A008592(n)-A313228(n))` -/
def P2729547264903621273.Spec : Prop :=
  ∀ n, P2729547264903621273.a n = A315421 n

end A315421

/-! ## A315421.P3989411977463524110

`A313515(n)+Δ[A054925(n)]`
-/

namespace A315421.P3989411977463524110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313515 n + (f1 (n + 1) - f1 n)

end

end A315421.P3989411977463524110

namespace A315421

/-- `A313515(n)+Δ[A054925(n)]` -/
def P3989411977463524110.Spec : Prop :=
  ∀ n, P3989411977463524110.a n = A315421 n

end A315421

/-! ## A315421.P10631484439972036026

`2*A008706(n)-A313228(n)`
-/

namespace A315421.P10631484439972036026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313228 n

end

end A315421.P10631484439972036026

namespace A315421

/-- `2*A008706(n)-A313228(n)` -/
def P10631484439972036026.Spec : Prop :=
  ∀ n, P10631484439972036026.a n = A315421 n

end A315421

/-! ## A315421.P12533836761381269534

`A313583(n)+A004525(A004396(n))`
-/

namespace A315421.P12533836761381269534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + A004525 (A004396 n).toNat

end

end A315421.P12533836761381269534

namespace A315421

/-- `A313583(n)+A004525(A004396(n))` -/
def P12533836761381269534.Spec : Prop :=
  ∀ n, P12533836761381269534.a n = A315421 n

end A315421

/-! ## A315421.P3161400404237728422

`A008458(n)+A008574(n)-A313228(n)`
-/

namespace A315421.P3161400404237728422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313228 n)

end

end A315421.P3161400404237728422

namespace A315421

/-- `A008458(n)+A008574(n)-A313228(n)` -/
def P3161400404237728422.Spec : Prop :=
  ∀ n, P3161400404237728422.a n = A315421 n

end A315421

/-! ## A315421.P3034282139725577024

`A313228(n)+A005843(A008706(n)-A313228(n))`
-/

namespace A315421.P3034282139725577024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313228 n + A005843 (A008706 n - A313228 n).toNat

end

end A315421.P3034282139725577024

namespace A315421

/-- `A313228(n)+A005843(A008706(n)-A313228(n))` -/
def P3034282139725577024.Spec : Prop :=
  ∀ n, P3034282139725577024.a n = A315421 n

end A315421

/-! ## A315421.P15677131589012117524

`A313794(n)+A128834(n)`
-/

namespace A315421.P15677131589012117524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n + A128834 n

end

end A315421.P15677131589012117524

namespace A315421

/-- `A313794(n)+A128834(n)` -/
def P15677131589012117524.Spec : Prop :=
  ∀ n, P15677131589012117524.a n = A315421 n

end A315421

/-! ## A315421.P10906920650110610204

`A313794(n)-A010892(n+2)`
-/

namespace A315421.P10906920650110610204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313794 n - A010892 (n + 2)

end

end A315421.P10906920650110610204

namespace A315421

/-- `A313794(n)-A010892(n+2)` -/
def P10906920650110610204.Spec : Prop :=
  ∀ n, P10906920650110610204.a n = A315421 n

end A315421

/-! ## A315421.P9060099856464445363

`A005843(A008706(n))-A313228(n)`
-/

namespace A315421.P9060099856464445363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313228 n

end

end A315421.P9060099856464445363

namespace A315421

/-- `A005843(A008706(n))-A313228(n)` -/
def P9060099856464445363.Spec : Prop :=
  ∀ n, P9060099856464445363.a n = A315421 n

end A315421

/-! ## A315421.P17120260335690864386

`A004396(2*A314688(n)-n)`
-/

namespace A315421.P17120260335690864386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A314688 n - (n : ℤ)).toNat

end

end A315421.P17120260335690864386

namespace A315421

/-- `A004396(2*A314688(n)-n)` -/
def P17120260335690864386.Spec : Prop :=
  ∀ n, P17120260335690864386.a n = A315421 n

end A315421

/-! ## A315421.P12199067662113511734

`A004396(A314688(n)+A314688(n)-n)`
-/

namespace A315421.P12199067662113511734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314688 n + (A314688 n - (n : ℤ))).toNat

end

end A315421.P12199067662113511734

namespace A315421

/-- `A004396(A314688(n)+A314688(n)-n)` -/
def P12199067662113511734.Spec : Prop :=
  ∀ n, P12199067662113511734.a n = A315421 n

end A315421

/-! ## A315421.P4976160060932953672

`A004396(A314688(n)-(n-A314688(n)))`
-/

namespace A315421.P4976160060932953672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314688 n - ((n : ℤ) - A314688 n)).toNat

end

end A315421.P4976160060932953672

namespace A315421

/-- `A004396(A314688(n)-(n-A314688(n)))` -/
def P4976160060932953672.Spec : Prop :=
  ∀ n, P4976160060932953672.a n = A315421 n

end A315421

/-! ## A315421.P602886913162613797

`A004396(2*A315479(n))-2*n`
-/

namespace A315421.P602886913162613797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315479 n).toNat - (2 * n : ℤ)

end

end A315421.P602886913162613797

namespace A315421

/-- `A004396(2*A315479(n))-2*n` -/
def P602886913162613797.Spec : Prop :=
  ∀ n, P602886913162613797.a n = A315421 n

end A315421

/-!
# A315423: Coordination sequence Gal.5.208.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315423, the canonical program `A315423.P11276488432511767782` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315423 has offset 0).

The definition of A315423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315423.P1500403241869169305

`A151988(A314674(n))`
-/

namespace A315423.P1500403241869169305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A314674 n).toNat

end

end A315423.P1500403241869169305

namespace A315423

/-- `A151988(A314674(n))` -/
def P1500403241869169305.Spec : Prop :=
  ∀ n, P1500403241869169305.a n = A315423 n

end A315423

/-! ## A315423.P11276488432511767782

`A314040(n)+A238469(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315423

/-- `A314040(n)+A238469(n)` -/
def P11276488432511767782.Spec : Prop :=
  ∀ n, P11276488432511767782.a n = A315423 n

theorem P11276488432511767782.correct : P11276488432511767782.Spec := by
  intro n
  simp only [A315423]

end A315423

/-! ## A315423.P13977148719034960987

`A315273(n)+A238470(n)`
-/

namespace A315423.P13977148719034960987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315273 n + A238470 n

end

end A315423.P13977148719034960987

namespace A315423

/-- `A315273(n)+A238470(n)` -/
def P13977148719034960987.Spec : Prop :=
  ∀ n, P13977148719034960987.a n = A315423 n

end A315423

/-! ## A315423.P5712739995140100508

`A281746(n+1)+A008486(n)`
-/

namespace A315423.P5712739995140100508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281746 (n + 1) + A008486 n

end

end A315423.P5712739995140100508

namespace A315423

/-- `A281746(n+1)+A008486(n)` -/
def P5712739995140100508.Spec : Prop :=
  ∀ n, P5712739995140100508.a n = A315423 n

end A315423

/-! ## A315423.P1790950011229027914

`A314040(n)+A238470(2*n)`
-/

namespace A315423.P1790950011229027914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314040 n + A238470 (2 * n)

end

end A315423.P1790950011229027914

namespace A315423

/-- `A314040(n)+A238470(2*n)` -/
def P1790950011229027914.Spec : Prop :=
  ∀ n, P1790950011229027914.a n = A315423 n

end A315423

/-! ## A315423.P8430656120144435576

`A008486(n)+eq[0, A255680(n)]`
-/

namespace A315423.P8430656120144435576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A315423.P8430656120144435576

namespace A315423

/-- `A008486(n)+eq[0, A255680(n)]` -/
def P8430656120144435576.Spec : Prop :=
  ∀ n, P8430656120144435576.a n = A315423 n

end A315423

/-! ## A315423.P1498327469508896849

`A014681(2*n)+A281746(n+1)+n+1`
-/

namespace A315423.P1498327469508896849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * n) + (A281746 (n + 1) + (n + 1 : ℤ))

end

end A315423.P1498327469508896849

namespace A315423

/-- `A014681(2*n)+A281746(n+1)+n+1` -/
def P1498327469508896849.Spec : Prop :=
  ∀ n, P1498327469508896849.a n = A315423 n

end A315423

/-! ## A315423.P7215967390875800760

`A315452(n)+A238469(2*n)`
-/

namespace A315423.P7215967390875800760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315452 n + A238469 (2 * n)

end

end A315423.P7215967390875800760

namespace A315423

/-- `A315452(n)+A238469(2*n)` -/
def P7215967390875800760.Spec : Prop :=
  ∀ n, P7215967390875800760.a n = A315423 n

end A315423

/-! ## A315423.P10281842693116441162

`A315309(n)-A238468(n)`
-/

namespace A315423.P10281842693116441162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n - A238468 n

end

end A315423.P10281842693116441162

namespace A315423

/-- `A315309(n)-A238468(n)` -/
def P10281842693116441162.Spec : Prop :=
  ∀ n, P10281842693116441162.a n = A315423 n

end A315423

/-! ## A315423.P10273230629341564798

`A315541(n)-Δ[2*A011860(n)]`
-/

namespace A315423.P10273230629341564798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n - (f1 (n + 1) - f1 n)

end

end A315423.P10273230629341564798

namespace A315423

/-- `A315541(n)-Δ[2*A011860(n)]` -/
def P10273230629341564798.Spec : Prop :=
  ∀ n, P10273230629341564798.a n = A315423 n

end A315423

/-! ## A315423.P2561435397798369938

`A313836(n)+A175629(n)`
-/

namespace A315423.P2561435397798369938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n + A175629 n

end

end A315423.P2561435397798369938

namespace A315423

/-- `A313836(n)+A175629(n)` -/
def P2561435397798369938.Spec : Prop :=
  ∀ n, P2561435397798369938.a n = A315423 n

end A315423

/-! ## A315423.P1999331848642311675

`A068962(3*A314674(n))`
-/

namespace A315423.P1999331848642311675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (3 * A314674 n).toNat

end

end A315423.P1999331848642311675

namespace A315423

/-- `A068962(3*A314674(n))` -/
def P1999331848642311675.Spec : Prop :=
  ∀ n, P1999331848642311675.a n = A315423 n

end A315423

/-!
# A315424: Coordination sequence Gal.6.555.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315424, there is no canonical definition to state claims against.
-/

/-! ## A315424.P15429190856066856960

`record[A315495(n)-A056481(n)]`
-/

namespace A315424.P15429190856066856960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - A056481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315424.P15429190856066856960

/-! ## A315424.P1328575501225489710

`A315257(n)+A193238(A148869(n))`
-/

namespace A315424.P1328575501225489710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 n + A193238 (A148869 n).toNat

end

end A315424.P1328575501225489710

/-! ## A315424.P4183930628876703407

`A301708(n)-A117929(A279559(n))`
-/

namespace A315424.P4183930628876703407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A117929 (A279559 n).toNat

end

end A315424.P4183930628876703407

/-! ## A315424.P2012593671226987545

`A377283(n+1)+A130245(A372420(n))`
-/

namespace A315424.P2012593671226987545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377283 (n + 1) + A130245 (A372420 n).toNat

end

end A315424.P2012593671226987545

/-! ## A315424.P12907558750775711844

`A038107(A032555(n+1))+A007064(n+1)`
-/

namespace A315424.P12907558750775711844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A032555 (n + 1)).toNat + A007064 (n + 1)

end

end A315424.P12907558750775711844

/-!
# A315425: Coordination sequence Gal.6.341.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315425, the canonical program `A315425.P4836031059753264018` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315425 has offset 0).

The definition of A315425 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315425.P13319719099696256881

`A313540(n)+A004525(n)`
-/

namespace A315425.P13319719099696256881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + A004525 n

end

end A315425.P13319719099696256881

namespace A315425

/-- `A313540(n)+A004525(n)` -/
def P13319719099696256881.Spec : Prop :=
  ∀ n, P13319719099696256881.a n = A315425 n

end A315425

/-! ## A315425.P11163986450310118563

`A314107(n)+A101455(n)`
-/

namespace A315425.P11163986450310118563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314107 n + A101455 n

end

end A315425.P11163986450310118563

namespace A315425

/-- `A314107(n)+A101455(n)` -/
def P11163986450310118563.Spec : Prop :=
  ∀ n, P11163986450310118563.a n = A315425 n

end A315425

/-! ## A315425.P4836031059753264018

`abs(A008592(n)-A313213(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315425

/-- `abs(A008592(n)-A313213(n))` -/
def P4836031059753264018.Spec : Prop :=
  ∀ n, P4836031059753264018.a n = A315425 n

theorem P4836031059753264018.correct : P4836031059753264018.Spec := by
  intro n
  simp only [A315425]

end A315425

/-! ## A315425.P7200519112694519698

`A313540(n)+Δ[A054925(n)]`
-/

namespace A315425.P7200519112694519698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + (f1 (n + 1) - f1 n)

end

end A315425.P7200519112694519698

namespace A315425

/-- `A313540(n)+Δ[A054925(n)]` -/
def P7200519112694519698.Spec : Prop :=
  ∀ n, P7200519112694519698.a n = A315425 n

end A315425

/-! ## A315425.P8413512777562585505

`A313540(n)+n-∑[A021913(n)]`
-/

namespace A315425.P8413512777562585505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315425.P8413512777562585505

namespace A315425

/-- `A313540(n)+n-∑[A021913(n)]` -/
def P8413512777562585505.Spec : Prop :=
  ∀ n, P8413512777562585505.a n = A315425 n

end A315425

/-! ## A315425.P11084538422232763560

`A313540(n)+n-Δ[A011848(n)]`
-/

namespace A315425.P11084538422232763560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313540 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315425.P11084538422232763560

namespace A315425

/-- `A313540(n)+n-Δ[A011848(n)]` -/
def P11084538422232763560.Spec : Prop :=
  ∀ n, P11084538422232763560.a n = A315425 n

end A315425

/-! ## A315425.P4130272632329776090

`A313611(n)+A004396(A004525(n))`
-/

namespace A315425.P4130272632329776090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313611 n + A004396 (A004525 n).toNat

end

end A315425.P4130272632329776090

namespace A315425

/-- `A313611(n)+A004396(A004525(n))` -/
def P4130272632329776090.Spec : Prop :=
  ∀ n, P4130272632329776090.a n = A315425 n

end A315425

/-! ## A315425.P15912839236879369248

`A313619(n)+A004525(A004396(n))`
-/

namespace A315425.P15912839236879369248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313619 n + A004525 (A004396 n).toNat

end

end A315425.P15912839236879369248

namespace A315425

/-- `A313619(n)+A004525(A004396(n))` -/
def P15912839236879369248.Spec : Prop :=
  ∀ n, P15912839236879369248.a n = A315425 n

end A315425

/-! ## A315425.P7374733795630850877

`A313485(n)+A004396(2*A004525(n))`
-/

namespace A315425.P7374733795630850877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313485 n + A004396 (2 * A004525 n).toNat

end

end A315425.P7374733795630850877

namespace A315425

/-- `A313485(n)+A004396(2*A004525(n))` -/
def P7374733795630850877.Spec : Prop :=
  ∀ n, P7374733795630850877.a n = A315425 n

end A315425

/-! ## A315425.P12703444149364876708

`A008458(n)+A008574(n)-A313213(n)`
-/

namespace A315425.P12703444149364876708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313213 n)

end

end A315425.P12703444149364876708

namespace A315425

/-- `A008458(n)+A008574(n)-A313213(n)` -/
def P12703444149364876708.Spec : Prop :=
  ∀ n, P12703444149364876708.a n = A315425 n

end A315425

/-! ## A315425.P4109588026183935715

`A004525(A004396(n))+A312926(n)+A004525(n)`
-/

namespace A315425.P4109588026183935715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A312926 n + A004525 n)

end

end A315425.P4109588026183935715

namespace A315425

/-- `A004525(A004396(n))+A312926(n)+A004525(n)` -/
def P4109588026183935715.Spec : Prop :=
  ∀ n, P4109588026183935715.a n = A315425 n

end A315425

/-! ## A315425.P9284898259052533304

`A315476(n)-Δ[A011865(n)]`
-/

namespace A315425.P9284898259052533304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315476 n - (f1 (n + 1) - f1 n)

end

end A315425.P9284898259052533304

namespace A315425

/-- `A315476(n)-Δ[A011865(n)]` -/
def P9284898259052533304.Spec : Prop :=
  ∀ n, P9284898259052533304.a n = A315425 n

end A315425

/-! ## A315425.P550896889245984452

`A315700(n)-∑[A021913(n)]`
-/

namespace A315425.P550896889245984452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315425.P550896889245984452

namespace A315425

/-- `A315700(n)-∑[A021913(n)]` -/
def P550896889245984452.Spec : Prop :=
  ∀ n, P550896889245984452.a n = A315425 n

end A315425

/-! ## A315425.P18298724673786853535

`A315700(n)-Δ[A011848(n)]`
-/

namespace A315425.P18298724673786853535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - (f1 (n + 1) - f1 n)

end

end A315425.P18298724673786853535

namespace A315425

/-- `A315700(n)-Δ[A011848(n)]` -/
def P18298724673786853535.Spec : Prop :=
  ∀ n, P18298724673786853535.a n = A315425 n

end A315425

/-! ## A315425.P15767949462043015085

`A315700(n)-A004524(n+1)`
-/

namespace A315425.P15767949462043015085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A004524 (n + 1)

end

end A315425.P15767949462043015085

namespace A315425

/-- `A315700(n)-A004524(n+1)` -/
def P15767949462043015085.Spec : Prop :=
  ∀ n, P15767949462043015085.a n = A315425 n

end A315425

/-! ## A315425.P2659606268789892068

`A004525(n)+A315700(n)-n`
-/

namespace A315425.P2659606268789892068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315700 n - (n : ℤ))

end

end A315425.P2659606268789892068

namespace A315425

/-- `A004525(n)+A315700(n)-n` -/
def P2659606268789892068.Spec : Prop :=
  ∀ n, P2659606268789892068.a n = A315425 n

end A315425

/-! ## A315425.P12902038424365280818

`Δ[A054925(n)]+A315700(n)-n`
-/

namespace A315425.P12902038424365280818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315700 n - (n : ℤ))

end

end A315425.P12902038424365280818

namespace A315425

/-- `Δ[A054925(n)]+A315700(n)-n` -/
def P12902038424365280818.Spec : Prop :=
  ∀ n, P12902038424365280818.a n = A315425 n

end A315425

/-! ## A315425.P2147141598855215322

`A315700(n)-A002265(A003485(n))`
-/

namespace A315425.P2147141598855215322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315700 n - A002265 (A003485 n).toNat

end

end A315425.P2147141598855215322

namespace A315425

/-- `A315700(n)-A002265(A003485(n))` -/
def P2147141598855215322.Spec : Prop :=
  ∀ n, P2147141598855215322.a n = A315425 n

end A315425

/-! ## A315425.P10473015825451997359

`A315649(n)-A004396(n-A004525(n))`
-/

namespace A315425.P10473015825451997359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315649 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A315425.P10473015825451997359

namespace A315425

/-- `A315649(n)-A004396(n-A004525(n))` -/
def P10473015825451997359.Spec : Prop :=
  ∀ n, P10473015825451997359.a n = A315425 n

end A315425

/-!
# A315426: Coordination sequence Gal.6.331.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315426, the canonical program `A315426.P10794003030174514312` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315426 has offset 0).

The definition of A315426 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315426.P10794003030174514312

`abs(A008592(n)-A313212(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315426

/-- `abs(A008592(n)-A313212(n))` -/
def P10794003030174514312.Spec : Prop :=
  ∀ n, P10794003030174514312.a n = A315426 n

theorem P10794003030174514312.correct : P10794003030174514312.Spec := by
  intro n
  simp only [A315426]

end A315426

/-! ## A315426.P11191394379281637951

`2*A008706(n)-A313212(n)`
-/

namespace A315426.P11191394379281637951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313212 n

end

end A315426.P11191394379281637951

namespace A315426

/-- `2*A008706(n)-A313212(n)` -/
def P11191394379281637951.Spec : Prop :=
  ∀ n, P11191394379281637951.a n = A315426 n

end A315426

/-! ## A315426.P15729615142050851266

`A008458(n)+A008574(n)-A313212(n)`
-/

namespace A315426.P15729615142050851266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313212 n)

end

end A315426.P15729615142050851266

namespace A315426

/-- `A008458(n)+A008574(n)-A313212(n)` -/
def P15729615142050851266.Spec : Prop :=
  ∀ n, P15729615142050851266.a n = A315426 n

end A315426

/-! ## A315426.P9630859591967393442

`A315478(n)-Δ[A011864(n)]`
-/

namespace A315426.P9630859591967393442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315478 n - (f1 (n + 1) - f1 n)

end

end A315426.P9630859591967393442

namespace A315426

/-- `A315478(n)-Δ[A011864(n)]` -/
def P9630859591967393442.Spec : Prop :=
  ∀ n, P9630859591967393442.a n = A315426 n

end A315426

/-! ## A315426.P8347627468132394655

`2*n+A004396(A315208(n))`
-/

namespace A315426.P8347627468132394655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + A004396 (A315208 n).toNat

end

end A315426.P8347627468132394655

namespace A315426

/-- `2*n+A004396(A315208(n))` -/
def P8347627468132394655.Spec : Prop :=
  ∀ n, P8347627468132394655.a n = A315426 n

end A315426

/-! ## A315426.P11211760352032150380

`A008585(n)+A004396(A315208(n))-n`
-/

namespace A315426.P11211760352032150380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + (A004396 (A315208 n).toNat - (n : ℤ))

end

end A315426.P11211760352032150380

namespace A315426

/-- `A008585(n)+A004396(A315208(n))-n` -/
def P11211760352032150380.Spec : Prop :=
  ∀ n, P11211760352032150380.a n = A315426 n

end A315426

/-! ## A315426.P13754955186840637845

`A005843(A008706(n))-A313212(n)`
-/

namespace A315426.P13754955186840637845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313212 n

end

end A315426.P13754955186840637845

namespace A315426

/-- `A005843(A008706(n))-A313212(n)` -/
def P13754955186840637845.Spec : Prop :=
  ∀ n, P13754955186840637845.a n = A315426 n

end A315426

/-! ## A315426.P12369720945791515122

`A004396(A315208(n)+A008486(n))`
-/

namespace A315426.P12369720945791515122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315208 n + A008486 n).toNat

end

end A315426.P12369720945791515122

namespace A315426

/-- `A004396(A315208(n)+A008486(n))` -/
def P12369720945791515122.Spec : Prop :=
  ∀ n, P12369720945791515122.a n = A315426 n

end A315426

/-! ## A315426.P6962061477397406006

`A004396(A315208(n)+A008585(n))`
-/

namespace A315426.P6962061477397406006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315208 n + A008585 n).toNat

end

end A315426.P6962061477397406006

namespace A315426

/-- `A004396(A315208(n)+A008585(n))` -/
def P6962061477397406006.Spec : Prop :=
  ∀ n, P6962061477397406006.a n = A315426 n

end A315426

/-! ## A315426.P16416025070357639609

`A274616(A315208(n)+A008585(n))`
-/

namespace A315426.P16416025070357639609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274616 (A315208 n + A008585 n).toNat

end

end A315426.P16416025070357639609

namespace A315426

/-- `A274616(A315208(n)+A008585(n))` -/
def P16416025070357639609.Spec : Prop :=
  ∀ n, P16416025070357639609.a n = A315426 n

end A315426

/-! ## A315426.P15865148706956407659

`A004396(A315650(2*n)-A008585(n))`
-/

namespace A315426.P15865148706956407659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315650 (2 * n) - A008585 n).toNat

end

end A315426.P15865148706956407659

namespace A315426

/-- `A004396(A315650(2*n)-A008585(n))` -/
def P15865148706956407659.Spec : Prop :=
  ∀ n, P15865148706956407659.a n = A315426 n

end A315426

/-! ## A315426.P16131849012910735071

`A315702(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315426.P16131849012910735071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315702 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315426.P16131849012910735071

namespace A315426

/-- `A315702(2*n)+A008458(n+1)-(12*n+6)` -/
def P16131849012910735071.Spec : Prop :=
  ∀ n, P16131849012910735071.a n = A315426 n

end A315426

/-! ## A315426.P10482168396014231178

`A004396(2*A315491(n))-A005843(n)`
-/

namespace A315426.P10482168396014231178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A315491 n).toNat - A005843 n

end

end A315426.P10482168396014231178

namespace A315426

/-- `A004396(2*A315491(n))-A005843(n)` -/
def P10482168396014231178.Spec : Prop :=
  ∀ n, P10482168396014231178.a n = A315426 n

end A315426

/-! ## A315426.P5627496942696083394

`A004396(A315650(2*n))-A005843(n)`
-/

namespace A315426.P5627496942696083394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315650 (2 * n)).toNat - A005843 n

end

end A315426.P5627496942696083394

namespace A315426

/-- `A004396(A315650(2*n))-A005843(n)` -/
def P5627496942696083394.Spec : Prop :=
  ∀ n, P5627496942696083394.a n = A315426 n

end A315426

/-!
# A315427: Coordination sequence Gal.5.133.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315427, the canonical program `A315427.P10019411848564302205` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315427 has offset 0).

The definition of A315427 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315427.P10019411848564302205

`abs(A008592(n)-A313201(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315427

/-- `abs(A008592(n)-A313201(n))` -/
def P10019411848564302205.Spec : Prop :=
  ∀ n, P10019411848564302205.a n = A315427 n

theorem P10019411848564302205.correct : P10019411848564302205.Spec := by
  intro n
  simp only [A315427]

end A315427

/-! ## A315427.P15953397905464029267

`A313580(n)+A004396(A004396(n))`
-/

namespace A315427.P15953397905464029267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + A004396 (A004396 n).toNat

end

end A315427.P15953397905464029267

namespace A315427

/-- `A313580(n)+A004396(A004396(n))` -/
def P15953397905464029267.Spec : Prop :=
  ∀ n, P15953397905464029267.a n = A315427 n

end A315427

/-! ## A315427.P6098386751828591373

`A008458(n)-A093390(A062545(n))`
-/

namespace A315427.P6098386751828591373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A093390 (A062545 n).toNat

end

end A315427.P6098386751828591373

namespace A315427

/-- `A008458(n)-A093390(A062545(n))` -/
def P6098386751828591373.Spec : Prop :=
  ∀ n, P6098386751828591373.a n = A315427 n

end A315427

/-! ## A315427.P11101317375289142047

`A312908(n)+2*A004396(A004396(n))`
-/

namespace A315427.P11101317375289142047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312908 n + 2 * A004396 (A004396 n).toNat

end

end A315427.P11101317375289142047

namespace A315427

/-- `A312908(n)+2*A004396(A004396(n))` -/
def P11101317375289142047.Spec : Prop :=
  ∀ n, P11101317375289142047.a n = A315427 n

end A315427

/-! ## A315427.P99824505059978352

`A315214(n)+A004396(n-A004396(n))`
-/

namespace A315427.P99824505059978352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315214 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315427.P99824505059978352

namespace A315427

/-- `A315214(n)+A004396(n-A004396(n))` -/
def P99824505059978352.Spec : Prop :=
  ∀ n, P99824505059978352.a n = A315427 n

end A315427

/-! ## A315427.P9242129771192915997

`A008458(n)+A008574(n)-A313201(n)`
-/

namespace A315427.P9242129771192915997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313201 n)

end

end A315427.P9242129771192915997

namespace A315427

/-- `A008458(n)+A008574(n)-A313201(n)` -/
def P9242129771192915997.Spec : Prop :=
  ∀ n, P9242129771192915997.a n = A315427 n

end A315427

/-! ## A315427.P106228301337069447

`A313799(n)+A134667(A004396(n))`
-/

namespace A315427.P106228301337069447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313799 n + A134667 (A004396 n).toNat

end

end A315427.P106228301337069447

namespace A315427

/-- `A313799(n)+A134667(A004396(n))` -/
def P106228301337069447.Spec : Prop :=
  ∀ n, P106228301337069447.a n = A315427 n

end A315427

/-! ## A315427.P17425822486482414643

`A313894(n)+A128834(2*A004396(n))`
-/

namespace A315427.P17425822486482414643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313894 n + A128834 (2 * A004396 n).toNat

end

end A315427.P17425822486482414643

namespace A315427

/-- `A313894(n)+A128834(2*A004396(n))` -/
def P17425822486482414643.Spec : Prop :=
  ∀ n, P17425822486482414643.a n = A315427 n

end A315427

/-! ## A315427.P11309075116442490510

`A314141(n)+A128834(A004396(2*n))`
-/

namespace A315427.P11309075116442490510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + A128834 (A004396 (2 * n)).toNat

end

end A315427.P11309075116442490510

namespace A315427

/-- `A314141(n)+A128834(A004396(2*n))` -/
def P11309075116442490510.Spec : Prop :=
  ∀ n, P11309075116442490510.a n = A315427 n

end A315427

/-! ## A315427.P1644072781992547871

`A314141(n)+A128834(2*A006369(n))`
-/

namespace A315427.P1644072781992547871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 n + A128834 (2 * A006369 n).toNat

end

end A315427.P1644072781992547871

namespace A315427

/-- `A314141(n)+A128834(2*A006369(n))` -/
def P1644072781992547871.Spec : Prop :=
  ∀ n, P1644072781992547871.a n = A315427 n

end A315427

/-! ## A315427.P8786042735376056274

`A151988(A314692(n))`
-/

namespace A315427.P8786042735376056274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A314692 n).toNat

end

end A315427.P8786042735376056274

namespace A315427

/-- `A151988(A314692(n))` -/
def P8786042735376056274.Spec : Prop :=
  ∀ n, P8786042735376056274.a n = A315427 n

end A315427

/-! ## A315427.P13274728867354474103

`A315495(n)-Δ[A011862(n)]`
-/

namespace A315427.P13274728867354474103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315495 n - (f1 (n + 1) - f1 n)

end

end A315427.P13274728867354474103

namespace A315427

/-- `A315495(n)-Δ[A011862(n)]` -/
def P13274728867354474103.Spec : Prop :=
  ∀ n, P13274728867354474103.a n = A315427 n

end A315427

/-! ## A315427.P637113668917478976

`A004396(A004396(n))+A315495(n)-A004396(n)`
-/

namespace A315427.P637113668917478976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315495 n - A004396 n)

end

end A315427.P637113668917478976

namespace A315427

/-- `A004396(A004396(n))+A315495(n)-A004396(n)` -/
def P637113668917478976.Spec : Prop :=
  ∀ n, P637113668917478976.a n = A315427 n

end A315427

/-! ## A315427.P2788364762437922694

`A315653(n)-A004396(n-A004396(n))`
-/

namespace A315427.P2788364762437922694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315653 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315427.P2788364762437922694

namespace A315427

/-- `A315653(n)-A004396(n-A004396(n))` -/
def P2788364762437922694.Spec : Prop :=
  ∀ n, P2788364762437922694.a n = A315427 n

end A315427

/-! ## A315427.P2765089582439863358

`A315546(n)-Δ[2*A011862(n)]`
-/

namespace A315427.P2765089582439863358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - (f1 (n + 1) - f1 n)

end

end A315427.P2765089582439863358

namespace A315427

/-- `A315546(n)-Δ[2*A011862(n)]` -/
def P2765089582439863358.Spec : Prop :=
  ∀ n, P2765089582439863358.a n = A315427 n

end A315427

/-! ## A315427.P9296282851225775080

`2*A008574(n)-A004525(A310538(n))`
-/

namespace A315427.P9296282851225775080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A310538 n).toNat

end

end A315427.P9296282851225775080

namespace A315427

/-- `2*A008574(n)-A004525(A310538(n))` -/
def P9296282851225775080.Spec : Prop :=
  ∀ n, P9296282851225775080.a n = A315427 n

end A315427

/-! ## A315427.P15444198664049853177

`A093390(A017017(n))+A008486(n)`
-/

namespace A315427.P15444198664049853177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093390 (A017017 n).toNat + A008486 n

end

end A315427.P15444198664049853177

namespace A315427

/-- `A093390(A017017(n))+A008486(n)` -/
def P15444198664049853177.Spec : Prop :=
  ∀ n, P15444198664049853177.a n = A315427 n

end A315427

/-! ## A315427.P13257438072162523020

`A313683(2*n)-4*n`
-/

namespace A315427.P13257438072162523020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 (2 * n) - (4 * n : ℤ)

end

end A315427.P13257438072162523020

namespace A315427

/-- `A313683(2*n)-4*n` -/
def P13257438072162523020.Spec : Prop :=
  ∀ n, P13257438072162523020.a n = A315427 n

end A315427

/-! ## A315427.P2167930959373239270

`2*A008574(2*n)-A313799(2*n)`
-/

namespace A315427.P2167930959373239270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313799 (2 * n)

end

end A315427.P2167930959373239270

namespace A315427

/-- `2*A008574(2*n)-A313799(2*n)` -/
def P2167930959373239270.Spec : Prop :=
  ∀ n, P2167930959373239270.a n = A315427 n

end A315427

/-! ## A315427.P11625215611500939980

`A004396(A315398(2*n))-A004396(A004396(2*n))`
-/

namespace A315427.P11625215611500939980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315398 (2 * n)).toNat - A004396 (A004396 (2 * n)).toNat

end

end A315427.P11625215611500939980

namespace A315427

/-- `A004396(A315398(2*n))-A004396(A004396(2*n))` -/
def P11625215611500939980.Spec : Prop :=
  ∀ n, P11625215611500939980.a n = A315427 n

end A315427

/-!
# A315428: Coordination sequence Gal.6.668.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315428, there is no canonical definition to state claims against.
-/

/-! ## A315428.P8318836441698778327

`A315419(n)+A001221(A049614(n))`
-/

namespace A315428.P8318836441698778327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315419 n + A001221 (A049614 n).toNat

end

end A315428.P8318836441698778327

/-! ## A315428.P8663425470781012569

`A315419(n)+A224782(A001333(n))`
-/

namespace A315428.P8663425470781012569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315419 n + A224782 (A001333 n).toNat

end

end A315428.P8663425470781012569

/-! ## A315428.P1211078032206988552

`∑[A219032(A175165(n))]+n`
-/

namespace A315428.P1211078032206988552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219032 (A175165 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A315428.P1211078032206988552

/-! ## A315428.P14266669180371632729

`A313628(n)+A001221(A103970(n))`
-/

namespace A315428.P14266669180371632729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313628 n + A001221 (A103970 n).toNat

end

end A315428.P14266669180371632729

/-! ## A315428.P1679532579703173031

`A315541(n)-A058260(A323171(n+2))`
-/

namespace A315428.P1679532579703173031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n - A058260 (A323171 (n + 2)).toNat

end

end A315428.P1679532579703173031

/-!
# A315430: Coordination sequence Gal.6.556.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315430, there is no canonical definition to state claims against.
-/

/-! ## A315430.P8248001798579547146

`A008611(A315332(3*n)-1)`
-/

namespace A315430.P8248001798579547146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A315332 (3 * n) - 1).toNat

end

end A315430.P8248001798579547146

/-! ## A315430.P16844931544946933116

`or(A053694(A036289(n)), A315216(n))`
-/

namespace A315430.P16844931544946933116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053694 (A036289 n).toNat) (A315216 n)

end

end A315430.P16844931544946933116

/-! ## A315430.P13793639025377358141

`A315491(n)-A046660(A001008(n+1))`
-/

namespace A315430.P13793639025377358141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315491 n - A046660 (A001008 (n + 1)).toNat

end

end A315430.P13793639025377358141

/-! ## A315430.P10786029318094507260

`A315491(n)-A286493(A234490(n+1))`
-/

namespace A315430.P10786029318094507260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315491 n - A286493 (A234490 (n + 1)).toNat

end

end A315430.P10786029318094507260

/-! ## A315430.P10194086311969615878

`or(A063725(A066857(n+1)), A315216(n))`
-/

namespace A315430.P10194086311969615878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063725 (A066857 (n + 1)).toNat) (A315216 n)

end

end A315430.P10194086311969615878

/-!
# A315431: Coordination sequence Gal.6.669.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315431, there is no canonical definition to state claims against.
-/

/-! ## A315431.P16399658023855855713

`A008458(n)-A037800(A194716(n))`
-/

namespace A315431.P16399658023855855713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A037800 (A194716 n).toNat

end

end A315431.P16399658023855855713

/-! ## A315431.P6767013509327098360

`A215887(A318115(n))+5*n`
-/

namespace A315431.P6767013509327098360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 (A318115 n).toNat + (5 * n : ℤ)

end

end A315431.P6767013509327098360

/-! ## A315431.P18408008643519958629

`A301678(n)+A001221(A073724(n))`
-/

namespace A315431.P18408008643519958629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301678 n + A001221 (A073724 n).toNat

end

end A315431.P18408008643519958629

/-! ## A315431.P11003150177935574784

`A250120(n)+A023416(A187928(n))`
-/

namespace A315431.P11003150177935574784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A023416 (A187928 (n + 10)).toNat

end

end A315431.P11003150177935574784

/-! ## A315431.P9578917102033494061

`A325225(A007582(n))+A301291(n)`
-/

namespace A315431.P9578917102033494061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325225 (A007582 n).toNat + A301291 n

end

end A315431.P9578917102033494061

/-!
# A315432: Coordination sequence Gal.6.650.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315432, the canonical program `A315432.P14363789502883768676` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315432 has offset 0).

The definition of A315432 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315432.P7291995674180974069

`A313937(n)+A244895(n)`
-/

namespace A315432.P7291995674180974069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313937 n + A244895 n

end

end A315432.P7291995674180974069

namespace A315432

/-- `A313937(n)+A244895(n)` -/
def P7291995674180974069.Spec : Prop :=
  ∀ n, P7291995674180974069.a n = A315432 n

end A315432

/-! ## A315432.P14363789502883768676

`3*n+A311586(n)-A265227(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315432

/-- `3*n+A311586(n)-A265227(n+1)` -/
def P14363789502883768676.Spec : Prop :=
  ∀ n, P14363789502883768676.a n = A315432 n

theorem P14363789502883768676.correct : P14363789502883768676.Spec := by
  intro n
  simp only [A315432]

end A315432

/-! ## A315432.P13248449469672770801

`A315418(n)+A315423(n)-A315401(n)`
-/

namespace A315432.P13248449469672770801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315418 n + (A315423 n - A315401 n)

end

end A315432.P13248449469672770801

namespace A315432

/-- `A315418(n)+A315423(n)-A315401(n)` -/
def P13248449469672770801.Spec : Prop :=
  ∀ n, P13248449469672770801.a n = A315432 n

end A315432

/-! ## A315432.P258207167622336752

`A047263(n+1)+A311586(n)+A244895(n)`
-/

namespace A315432.P258207167622336752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1) + (A311586 n + A244895 n)

end

end A315432.P258207167622336752

namespace A315432

/-- `A047263(n+1)+A311586(n)+A244895(n)` -/
def P258207167622336752.Spec : Prop :=
  ∀ n, P258207167622336752.a n = A315432 n

end A315432

/-! ## A315432.P7928051631572231655

`A060464(n+1)+A311807(n)+A244895(n)`
-/

namespace A315432.P7928051631572231655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + (A311807 n + A244895 n)

end

end A315432.P7928051631572231655

namespace A315432

/-- `A060464(n+1)+A311807(n)+A244895(n)` -/
def P7928051631572231655.Spec : Prop :=
  ∀ n, P7928051631572231655.a n = A315432 n

end A315432

/-! ## A315432.P5226250765653999546

`A311586(n)+A008585(n)-A265227(n+1)`
-/

namespace A315432.P5226250765653999546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311586 n + A008585 n - A265227 (n + 1)

end

end A315432.P5226250765653999546

namespace A315432

/-- `A311586(n)+A008585(n)-A265227(n+1)` -/
def P5226250765653999546.Spec : Prop :=
  ∀ n, P5226250765653999546.a n = A315432 n

end A315432

/-! ## A315432.P9085072347004976382

`A060464(n+1)+A008458(n)-A265227(n+1)`
-/

namespace A315432.P9085072347004976382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060464 (n + 1) + (A008458 n - A265227 (n + 1))

end

end A315432.P9085072347004976382

namespace A315432

/-- `A060464(n+1)+A008458(n)-A265227(n+1)` -/
def P9085072347004976382.Spec : Prop :=
  ∀ n, P9085072347004976382.a n = A315432 n

end A315432

/-!
# A315433: Coordination sequence Gal.6.672.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315433, there is no canonical definition to state claims against.
-/

/-! ## A315433.P15879716042526743066

`A324700(2*n+1)+A187200(A077584(n+1))`
-/

namespace A315433.P15879716042526743066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324700 (2 * n + 1) + A187200 (A077584 (n + 1)).toNat

end

end A315433.P15879716042526743066

/-! ## A315433.P13665591034710151826

`A057354(n+1)+A315224(n)+A185284(A314475(n))`
-/

namespace A315433.P13665591034710151826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (n + 1) + (A315224 n + A185284 (A314475 n).toNat)

end

end A315433.P13665591034710151826

/-!
# A315434: Coordination sequence Gal.6.629.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315434, there is no canonical definition to state claims against.
-/

/-! ## A315434.P582063190842581776

`A008458(n)-A109082(A102101(n))`
-/

namespace A315434.P582063190842581776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A109082 (A102101 n).toNat

end

end A315434.P582063190842581776

/-! ## A315434.P12315534521357354522

`A008458(n)-A285097(A071721(n))`
-/

namespace A315434.P12315534521357354522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A285097 (A071721 n).toNat

end

end A315434.P12315534521357354522

/-! ## A315434.P2838681751159081308

`A352513(A166981(n+1))+A301722(n)`
-/

namespace A315434.P2838681751159081308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A166981 (n + 1)).toNat + A301722 n

end

end A315434.P2838681751159081308

/-! ## A315434.P3509752533250240881

`A008458(n)-A001222(A224246(n+1))`
-/

namespace A315434.P3509752533250240881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001222 (A224246 (n + 1)).toNat

end

end A315434.P3509752533250240881

/-! ## A315434.P7451590748999394833

`A008486(2*n)-A171899(A007865(n))`
-/

namespace A315434.P7451590748999394833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A171899 (A007865 n).toNat

end

end A315434.P7451590748999394833

/-!
# A315435: Coordination sequence Gal.3.60.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315435, there is no canonical definition to state claims against.
-/

/-! ## A315435.P9923143086292335115

`A339894(A040986(3*n+1)²)`
-/

namespace A315435.P9923143086292335115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339894 (A040986 (3 * n + 1) ^ 2).toNat

end

end A315435.P9923143086292335115

/-! ## A315435.P2979919669303498092

`char[2*(n+2)]+A215887(A318115(n))+5*n`
-/

namespace A315435.P2979919669303498092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + (A215887 (A318115 n).toNat + (5 * n : ℤ))

end

end A315435.P2979919669303498092

/-! ## A315435.P15019907559012939333

`eq[A010892(A036561(n)), A024360(n+1)]`
-/

namespace A315435.P15019907559012939333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A036561 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024360 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A315435.P15019907559012939333

/-! ## A315435.P12751515000551539791

`A156245(n+1)-A329362(A245937(n+1))`
-/

namespace A315435.P12751515000551539791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156245 (n + 1) - A329362 (A245937 (n + 1)).toNat

end

end A315435.P12751515000551539791

/-! ## A315435.P8531373673267959385

`A184736(3*n+1)-A067255(A291685(n))`
-/

namespace A315435.P8531373673267959385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184736 (3 * n + 1) - A067255 (A291685 n).toNat

end

end A315435.P8531373673267959385

/-!
# A315436: Coordination sequence Gal.5.327.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315436, there is no canonical definition to state claims against.
-/

/-! ## A315436.P11314904540745805124

`A072978(n+1)+A001221(A258466(n))`
-/

namespace A315436.P11314904540745805124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072978 (n + 1) + A001221 (A258466 n).toNat

end

end A315436.P11314904540745805124

/-! ## A315436.P7888760871950416409

`A057354(∏{p}[n+1, #])+A109072(A317028(n))+A008706(n)`
-/

namespace A315436.P7888760871950416409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∏ p ∈ Nat.primeFactors (f1 n), p) + (A109072 (A317028 n).toNat + A008706 n)

end

end A315436.P7888760871950416409

/-! ## A315436.P13615663416611397586

`A057354(∏{p}[n+1, #])+A314758(n)+A083895(A241204(n))`
-/

namespace A315436.P13615663416611397586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057354 (∏ p ∈ Nat.primeFactors (f1 n), p) + (A314758 n + A083895 (A241204 n).toNat)

end

end A315436.P13615663416611397586

/-!
# A315437: Coordination sequence Gal.6.525.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315437, there is no canonical definition to state claims against.
-/

/-! ## A315437.P14490866761294480287

`A315240(n)+A120936(A192738(n))`
-/

namespace A315437.P14490866761294480287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315240 n + A120936 (A192738 n).toNat

end

end A315437.P14490866761294480287

/-! ## A315437.P5048150534173374677

`A315626(n)-A318652(A271782(n+2))`
-/

namespace A315437.P5048150534173374677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315626 n - A318652 (A271782 (n + 2)).toNat

end

end A315437.P5048150534173374677

/-!
# A315438: Coordination sequence Gal.6.524.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315438, there is no canonical definition to state claims against.
-/

/-! ## A315438.P11371058501339992895

`A315439(n)-A025441(A298374(n))`
-/

namespace A315438.P11371058501339992895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315439 n - A025441 (A298374 n).toNat

end

end A315438.P11371058501339992895

/-!
# A315439: Coordination sequence Gal.6.578.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315439, there is no canonical definition to state claims against.
-/

/-! ## A315439.P13698048527961147815

`A175427(A313491(n))+A131818(n+1)`
-/

namespace A315439.P13698048527961147815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175427 (A313491 n).toNat + A131818 (n + 1)

end

end A315439.P13698048527961147815

/-!
# A315440: Coordination sequence Gal.6.491.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315440, there is no canonical definition to state claims against.
-/

/-! ## A315440.P7345017769051295086

`A322338(A079122(n+3))+A315246(n)`
-/

namespace A315440.P7345017769051295086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322338 (A079122 (n + 3)).toNat + A315246 n

end

end A315440.P7345017769051295086

/-! ## A315440.P944854609349894868

`A319935(A265241(n+3))+A316060(n)`
-/

namespace A315440.P944854609349894868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319935 (A265241 (n + 3)).toNat + A316060 n

end

end A315440.P944854609349894868

/-! ## A315440.P10842269651071526680

`A016873(n)-A276469(A004768(n))`
-/

namespace A315440.P10842269651071526680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A276469 (A004768 n).toNat

end

end A315440.P10842269651071526680

/-! ## A315440.P16393421811518760641

`A346131(or(A246661(n), A311256(n)))`
-/

namespace A315440.P16393421811518760641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346131 (Int.lor (A246661 n) (A311256 n)).toNat

end

end A315440.P16393421811518760641

/-! ## A315440.P5911230612948177863

`A313125(n)+A248806(A005584(n+1))`
-/

namespace A315440.P5911230612948177863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A248806 (A005584 (n + 1)).toNat

end

end A315440.P5911230612948177863

/-!
# A315442: Coordination sequence Gal.6.428.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315442, there is no canonical definition to state claims against.
-/

/-! ## A315442.P12946028512537190878

`A026351(3*n+1)-A239660(A005388(n))`
-/

namespace A315442.P12946028512537190878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (3 * n + 1) - A239660 (A005388 n).toNat

end

end A315442.P12946028512537190878

/-!
# A315443: Coordination sequence Gal.6.411.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315443, there is no canonical definition to state claims against.
-/

/-! ## A315443.P4803118335577168176

`A016813(n)+A008963(A000245(n))`
-/

namespace A315443.P4803118335577168176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n + A008963 (A000245 n).toNat

end

end A315443.P4803118335577168176

/-! ## A315443.P10787991325155309863

`A016873(n)-A200370(A007919(n+1))`
-/

namespace A315443.P10787991325155309863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n - A200370 (A007919 (n + 1)).toNat

end

end A315443.P10787991325155309863

/-! ## A315443.P13357678429727610618

`A274384(3*n+1)+A117929(A274406(n+1)+1)`
-/

namespace A315443.P13357678429727610618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274384 (3 * n + 1) + A117929 (A274406 (n + 1) + 1).toNat

end

end A315443.P13357678429727610618

/-!
# A315444: Coordination sequence Gal.6.133.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315444, the canonical program `A315444.P9836677377056582144` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315444 has offset 0).

The definition of A315444 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2299 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315444.P15162953226830784343

`2*A313681(n)-A313024(n)`
-/

namespace A315444.P15162953226830784343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313681 n - A313024 n

end

end A315444.P15162953226830784343

namespace A315444

/-- `2*A313681(n)-A313024(n)` -/
def P15162953226830784343.Spec : Prop :=
  ∀ n, P15162953226830784343.a n = A315444 n

end A315444

/-! ## A315444.P8975258539429948663

`A313024(n)+A005843(A313681(n)-A313024(n))`
-/

namespace A315444.P8975258539429948663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313024 n + A005843 (A313681 n - A313024 n).toNat

end

end A315444.P8975258539429948663

namespace A315444

/-- `A313024(n)+A005843(A313681(n)-A313024(n))` -/
def P8975258539429948663.Spec : Prop :=
  ∀ n, P8975258539429948663.a n = A315444 n

end A315444

/-! ## A315444.P9836677377056582144

`abs(A008592(n)-A313155(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A315444

/-- `abs(A008592(n)-A313155(n))` -/
def P9836677377056582144.Spec : Prop :=
  ∀ n, P9836677377056582144.a n = A315444 n

theorem P9836677377056582144.correct : P9836677377056582144.Spec := by
  intro n
  simp only [A315444]

end A315444

/-! ## A315444.P3131175108601356574

`2*A008706(n)-A313155(n)`
-/

namespace A315444.P3131175108601356574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313155 n

end

end A315444.P3131175108601356574

namespace A315444

/-- `2*A008706(n)-A313155(n)` -/
def P3131175108601356574.Spec : Prop :=
  ∀ n, P3131175108601356574.a n = A315444 n

end A315444

/-! ## A315444.P6969062701452846869

`A135042(2*n+1)-A313155(n)`
-/

namespace A315444.P6969062701452846869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313155 n

end

end A315444.P6969062701452846869

namespace A315444

/-- `A135042(2*n+1)-A313155(n)` -/
def P6969062701452846869.Spec : Prop :=
  ∀ n, P6969062701452846869.a n = A315444 n

end A315444

/-! ## A315444.P1520452165638738361

`A184418(A008574(n))-A313155(n)`
-/

namespace A315444.P1520452165638738361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313155 n

end

end A315444.P1520452165638738361

namespace A315444

/-- `A184418(A008574(n))-A313155(n)` -/
def P1520452165638738361.Spec : Prop :=
  ∀ n, P1520452165638738361.a n = A315444 n

end A315444

/-! ## A315444.P16613287915031033762

`A008458(n)+A008574(n)-A313155(n)`
-/

namespace A315444.P16613287915031033762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313155 n)

end

end A315444.P16613287915031033762

namespace A315444

/-- `A008458(n)+A008574(n)-A313155(n)` -/
def P16613287915031033762.Spec : Prop :=
  ∀ n, P16613287915031033762.a n = A315444 n

end A315444

/-! ## A315444.P2506612934813485957

`A005843(A313681(n))-A313024(n)`
-/

namespace A315444.P2506612934813485957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313681 n).toNat - A313024 n

end

end A315444.P2506612934813485957

namespace A315444

/-- `A005843(A313681(n))-A313024(n)` -/
def P2506612934813485957.Spec : Prop :=
  ∀ n, P2506612934813485957.a n = A315444 n

end A315444

/-! ## A315444.P3437993115098148989

`A005843(A008706(n))-A313155(n)`
-/

namespace A315444.P3437993115098148989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313155 n

end

end A315444.P3437993115098148989

namespace A315444

/-- `A005843(A008706(n))-A313155(n)` -/
def P3437993115098148989.Spec : Prop :=
  ∀ n, P3437993115098148989.a n = A315444 n

end A315444

/-! ## A315444.P650011750181424648

`A065502(A008458(n))-A313155(n)`
-/

namespace A315444.P650011750181424648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313155 n

end

end A315444.P650011750181424648

namespace A315444

/-- `A065502(A008458(n))-A313155(n)` -/
def P650011750181424648.Spec : Prop :=
  ∀ n, P650011750181424648.a n = A315444 n

end A315444

/-! ## A315444.P11957043153853427361

`A047212(A271114(n))-A313155(n)`
-/

namespace A315444.P11957043153853427361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047212 (A271114 n).toNat - A313155 n

end

end A315444.P11957043153853427361

namespace A315444

/-- `A047212(A271114(n))-A313155(n)` -/
def P11957043153853427361.Spec : Prop :=
  ∀ n, P11957043153853427361.a n = A315444 n

end A315444

/-! ## A315444.P13210416155184725349

`(A008592(n)-A313155(n))^A052409(n²+1)`
-/

namespace A315444.P13210416155184725349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A313155 n : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

end

end A315444.P13210416155184725349

namespace A315444

/-- `(A008592(n)-A313155(n))^A052409(n²+1)` -/
def P13210416155184725349.Spec : Prop :=
  ∀ n, P13210416155184725349.a n = (A315444 n : ℚ)

end A315444

/-!
# A315445: Coordination sequence Gal.6.233.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315445, the canonical program `A315445.P3390685166526075264` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315445 has offset 0).

The definition of A315445 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2436 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315445.P3390685166526075264

`A047263(A008574(n)+A330025(n)+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315445

/-- `A047263(A008574(n)+A330025(n)+1)` -/
def P3390685166526075264.Spec : Prop :=
  ∀ n, P3390685166526075264.a n = A315445 n

theorem P3390685166526075264.correct : P3390685166526075264.Spec := by
  intro n
  simp only [A315445]

end A315445

/-! ## A315445.P6216828753964214483

`A314898(n)+A253262(n)`
-/

namespace A315445.P6216828753964214483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314898 n + A253262 n

end

end A315445.P6216828753964214483

namespace A315445

/-- `A314898(n)+A253262(n)` -/
def P6216828753964214483.Spec : Prop :=
  ∀ n, P6216828753964214483.a n = A315445 n

end A315445

/-! ## A315445.P11088542852317320003

`A330025(n)+A313692(n)`
-/

namespace A315445.P11088542852317320003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313692 n

end

end A315445.P11088542852317320003

namespace A315445

/-- `A330025(n)+A313692(n)` -/
def P11088542852317320003.Spec : Prop :=
  ∀ n, P11088542852317320003.a n = A315445 n

end A315445

/-! ## A315445.P11226841984595200438

`A313078(n)+2*A330025(n)`
-/

namespace A315445.P11226841984595200438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313078 n + 2 * A330025 n

end

end A315445.P11226841984595200438

namespace A315445

/-- `A313078(n)+2*A330025(n)` -/
def P11226841984595200438.Spec : Prop :=
  ∀ n, P11226841984595200438.a n = A315445 n

end A315445

/-! ## A315445.P2512639302688040845

`A330025(A330025(n)+n)+A313719(n)`
-/

namespace A315445.P2512639302688040845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A313719 n

end

end A315445.P2512639302688040845

namespace A315445

/-- `A330025(A330025(n)+n)+A313719(n)` -/
def P2512639302688040845.Spec : Prop :=
  ∀ n, P2512639302688040845.a n = A315445 n

end A315445

/-! ## A315445.P1694440147639500267

`A047263(A315461(n)+1-n)`
-/

namespace A315445.P1694440147639500267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A315461 n + (1 - (n : ℤ))).toNat

end

end A315445.P1694440147639500267

namespace A315445

/-- `A047263(A315461(n)+1-n)` -/
def P1694440147639500267.Spec : Prop :=
  ∀ n, P1694440147639500267.a n = A315445 n

end A315445

/-! ## A315445.P10176018526027872791

`A047263(1-(n-A315461(n)))`
-/

namespace A315445.P10176018526027872791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (1 - ((n : ℤ) - A315461 n)).toNat

end

end A315445.P10176018526027872791

namespace A315445

/-- `A047263(1-(n-A315461(n)))` -/
def P10176018526027872791.Spec : Prop :=
  ∀ n, P10176018526027872791.a n = A315445 n

end A315445

/-! ## A315445.P17754587372492941106

`A315679(n)-Δ[A011858(n)]`
-/

namespace A315445.P17754587372492941106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - (f1 (n + 1) - f1 n)

end

end A315445.P17754587372492941106

namespace A315445

/-- `A315679(n)-Δ[A011858(n)]` -/
def P17754587372492941106.Spec : Prop :=
  ∀ n, P17754587372492941106.a n = A315445 n

end A315445

/-! ## A315445.P13598564057000401459

`A315679(n)-A057354(n+1)`
-/

namespace A315445.P13598564057000401459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - A057354 (n + 1)

end

end A315445.P13598564057000401459

namespace A315445

/-- `A315679(n)-A057354(n+1)` -/
def P13598564057000401459.Spec : Prop :=
  ∀ n, P13598564057000401459.a n = A315445 n

end A315445

/-! ## A315445.P356849186934550149

`abs(10*n-A313154(n))`
-/

namespace A315445.P356849186934550149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313154 n|

end

end A315445.P356849186934550149

namespace A315445

/-- `abs(10*n-A313154(n))` -/
def P356849186934550149.Spec : Prop :=
  ∀ n, P356849186934550149.a n = A315445 n

end A315445

/-! ## A315445.P6304381501419773745

`2*A008706(n)-A313154(n)`
-/

namespace A315445.P6304381501419773745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313154 n

end

end A315445.P6304381501419773745

namespace A315445

/-- `2*A008706(n)-A313154(n)` -/
def P6304381501419773745.Spec : Prop :=
  ∀ n, P6304381501419773745.a n = A315445 n

end A315445

/-! ## A315445.P3132647995832259391

`A008458(n)+A008574(n)-A313154(n)`
-/

namespace A315445.P3132647995832259391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313154 n)

end

end A315445.P3132647995832259391

namespace A315445

/-- `A008458(n)+A008574(n)-A313154(n)` -/
def P3132647995832259391.Spec : Prop :=
  ∀ n, P3132647995832259391.a n = A315445 n

end A315445

/-! ## A315445.P9065557889871449241

`A315737(n)-A047486(n+1)+n`
-/

namespace A315445.P9065557889871449241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315737 n - A047486 (n + 1) + (n : ℤ)

end

end A315445.P9065557889871449241

namespace A315445

/-- `A315737(n)-A047486(n+1)+n` -/
def P9065557889871449241.Spec : Prop :=
  ∀ n, P9065557889871449241.a n = A315445 n

end A315445

/-! ## A315445.P2351335579136425859

`A005843(A008706(n))-A313154(n)`
-/

namespace A315445.P2351335579136425859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313154 n

end

end A315445.P2351335579136425859

namespace A315445

/-- `A005843(A008706(n))-A313154(n)` -/
def P2351335579136425859.Spec : Prop :=
  ∀ n, P2351335579136425859.a n = A315445 n

end A315445

/-! ## A315445.P913945894254681360

`A315679(n)-A008676(A016777(2*n))`
-/

namespace A315445.P913945894254681360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - A008676 (A016777 (2 * n)).toNat

end

end A315445.P913945894254681360

namespace A315445

/-- `A315679(n)-A008676(A016777(2*n))` -/
def P913945894254681360.Spec : Prop :=
  ∀ n, P913945894254681360.a n = A315445 n

end A315445

/-! ## A315445.P6069414745302274271

`A233583(A017281(n))-A313154(n)`
-/

namespace A315445.P6069414745302274271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313154 n

end

end A315445.P6069414745302274271

namespace A315445

/-- `A233583(A017281(n))-A313154(n)` -/
def P6069414745302274271.Spec : Prop :=
  ∀ n, P6069414745302274271.a n = A315445 n

end A315445

/-!
# A315446: Coordination sequence Gal.5.68.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315446, the canonical program `A315446.P15191818491354741477` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315446 has offset 0).

The definition of A315446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2397 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315446.P15191818491354741477

`A315398(n)+Δ[A011862(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315446

/-- `A315398(n)+Δ[A011862(n)]` -/
def P15191818491354741477.Spec : Prop :=
  ∀ n, P15191818491354741477.a n = A315446 n

theorem P15191818491354741477.correct : P15191818491354741477.Spec := by
  intro n
  simp only [A315446]

end A315446

/-! ## A315446.P15722311469319239677

`A004396(n)+A315398(n)-A004396(A004396(n))`
-/

namespace A315446.P15722311469319239677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315398 n - A004396 (A004396 n).toNat)

end

end A315446.P15722311469319239677

namespace A315446

/-- `A004396(n)+A315398(n)-A004396(A004396(n))` -/
def P15722311469319239677.Spec : Prop :=
  ∀ n, P15722311469319239677.a n = A315446 n

end A315446

/-! ## A315446.P14673347765761851773

`A313721(n)+A128834(A004396(n))`
-/

namespace A315446.P14673347765761851773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313721 n + A128834 (A004396 n).toNat

end

end A315446.P14673347765761851773

namespace A315446

/-- `A313721(n)+A128834(A004396(n))` -/
def P14673347765761851773.Spec : Prop :=
  ∀ n, P14673347765761851773.a n = A315446 n

end A315446

/-! ## A315446.P7457204258524996219

`abs(A008592(n)-A313153(n))`
-/

namespace A315446.P7457204258524996219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313153 n|

end

end A315446.P7457204258524996219

namespace A315446

/-- `abs(A008592(n)-A313153(n))` -/
def P7457204258524996219.Spec : Prop :=
  ∀ n, P7457204258524996219.a n = A315446 n

end A315446

/-! ## A315446.P7788664966821519177

`2*A008706(n)-A313153(n)`
-/

namespace A315446.P7788664966821519177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313153 n

end

end A315446.P7788664966821519177

namespace A315446

/-- `2*A008706(n)-A313153(n)` -/
def P7788664966821519177.Spec : Prop :=
  ∀ n, P7788664966821519177.a n = A315446 n

end A315446

/-! ## A315446.P5143196541291576503

`A135042(2*n+1)-A313153(n)`
-/

namespace A315446.P5143196541291576503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313153 n

end

end A315446.P5143196541291576503

namespace A315446

/-- `A135042(2*n+1)-A313153(n)` -/
def P5143196541291576503.Spec : Prop :=
  ∀ n, P5143196541291576503.a n = A315446 n

end A315446

/-! ## A315446.P5099850694375364656

`A184418(A008574(n))-A313153(n)`
-/

namespace A315446.P5099850694375364656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313153 n

end

end A315446.P5099850694375364656

namespace A315446

/-- `A184418(A008574(n))-A313153(n)` -/
def P5099850694375364656.Spec : Prop :=
  ∀ n, P5099850694375364656.a n = A315446 n

end A315446

/-! ## A315446.P18087857838029509001

`A008458(n)+A008574(n)-A313153(n)`
-/

namespace A315446.P18087857838029509001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313153 n)

end

end A315446.P18087857838029509001

namespace A315446

/-- `A008458(n)+A008574(n)-A313153(n)` -/
def P18087857838029509001.Spec : Prop :=
  ∀ n, P18087857838029509001.a n = A315446 n

end A315446

/-! ## A315446.P8898631120842698373

`∑{d}[A008592(n)-A313153(n), A000010(#)]`
-/

namespace A315446.P8898631120842698373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315446.P8898631120842698373

namespace A315446

/-- `∑{d}[A008592(n)-A313153(n), A000010(#)]` -/
def P8898631120842698373.Spec : Prop :=
  ∀ n, P8898631120842698373.a n = A315446 n

end A315446

/-! ## A315446.P5116956125318892501

`(A008592(n)-A313153(n))^A001222(A008578(n+1))`
-/

namespace A315446.P5116956125318892501
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A313153 n : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A315446.P5116956125318892501

namespace A315446

/-- `(A008592(n)-A313153(n))^A001222(A008578(n+1))` -/
def P5116956125318892501.Spec : Prop :=
  ∀ n, P5116956125318892501.a n = (A315446 n : ℚ)

end A315446

/-! ## A315446.P9827682151199682610

`A005843(A008706(n))-A313153(n)`
-/

namespace A315446.P9827682151199682610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313153 n

end

end A315446.P9827682151199682610

namespace A315446

/-- `A005843(A008706(n))-A313153(n)` -/
def P9827682151199682610.Spec : Prop :=
  ∀ n, P9827682151199682610.a n = A315446 n

end A315446

/-! ## A315446.P8265288867548031161

`A315398(n)+A033183(A004771(n))`
-/

namespace A315446.P8265288867548031161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315398 n + A033183 (A004771 n).toNat

end

end A315446.P8265288867548031161

namespace A315446

/-- `A315398(n)+A033183(A004771(n))` -/
def P8265288867548031161.Spec : Prop :=
  ∀ n, P8265288867548031161.a n = A315446 n

end A315446

/-!
# A315447: Coordination sequence Gal.5.112.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315447, the canonical program `A315447.P1142801422667913602` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315447 has offset 0).

The definition of A315447 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A315447.P1142801422667913602

`2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` with `a(0)=1, a(1)=6, a(2)=11, a(3)=16, a(4)=20, a(5)=24, a(6)=29`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A315447

/-- `2*a(n-1)-a(n-2)-a(n-4)+2*a(n-5)-a(n-6)` -/
def P1142801422667913602.Spec : Prop :=
  ∀ n, P1142801422667913602.a n = A315447 n

theorem P1142801422667913602.correct : P1142801422667913602.Spec := by
  intro n
  simp only [A315447]

end A315447

/-! ## A315447.P1494211340120826441

`A046978(n)+A008706(n)`
-/

namespace A315447.P1494211340120826441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + A008706 n

end

end A315447.P1494211340120826441

namespace A315447

/-- `A046978(n)+A008706(n)` -/
def P1494211340120826441.Spec : Prop :=
  ∀ n, P1494211340120826441.a n = A315447 n

end A315447

/-! ## A315447.P5293237670172387595

`A315173(n)+Δ[A011848(n)]`
-/

namespace A315447.P5293237670172387595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315173 n + (f1 (n + 1) - f1 n)

end

end A315447.P5293237670172387595

namespace A315447

/-- `A315173(n)+Δ[A011848(n)]` -/
def P5293237670172387595.Spec : Prop :=
  ∀ n, P5293237670172387595.a n = A315447 n

end A315447

/-! ## A315447.P8411854182240885687

`A311088(n)+A047363(n+1)`
-/

namespace A315447.P8411854182240885687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311088 n + A047363 (n + 1)

end

end A315447.P8411854182240885687

namespace A315447

/-- `A311088(n)+A047363(n+1)` -/
def P8411854182240885687.Spec : Prop :=
  ∀ n, P8411854182240885687.a n = A315447 n

end A315447

/-! ## A315447.P2676359920741573802

`A008706(n)-A046980(n+2)`
-/

namespace A315447.P2676359920741573802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A046980 (n + 2)

end

end A315447.P2676359920741573802

namespace A315447

/-- `A008706(n)-A046980(n+2)` -/
def P2676359920741573802.Spec : Prop :=
  ∀ n, P2676359920741573802.a n = A315447 n

end A315447

/-! ## A315447.P7753685612175174507

`A315173(n)+A201629(n)/2`
-/

namespace A315447.P7753685612175174507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315173 n : ℚ) + (A201629 n : ℚ) / 2

end

end A315447.P7753685612175174507

namespace A315447

/-- `A315173(n)+A201629(n)/2` -/
def P7753685612175174507.Spec : Prop :=
  ∀ n, P7753685612175174507.a n = (A315447 n : ℚ)

end A315447

/-! ## A315447.P1796039650998262885

`A117569(A004525(n))+5*n`
-/

namespace A315447.P1796039650998262885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117569 (A004525 n).toNat + (5 * n : ℤ)

end

end A315447.P1796039650998262885

namespace A315447

/-- `A117569(A004525(n))+5*n` -/
def P1796039650998262885.Spec : Prop :=
  ∀ n, P1796039650998262885.a n = A315447 n

end A315447

/-! ## A315447.P693112423099277770

`A008574(n)+A046978(n)+n`
-/

namespace A315447.P693112423099277770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A046978 n + (n : ℤ))

end

end A315447.P693112423099277770

namespace A315447

/-- `A008574(n)+A046978(n)+n` -/
def P693112423099277770.Spec : Prop :=
  ∀ n, P693112423099277770.a n = A315447 n

end A315447

/-! ## A315447.P14342759552406624936

`A008458(n)+A046978(n)-n`
-/

namespace A315447.P14342759552406624936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A046978 n - (n : ℤ))

end

end A315447.P14342759552406624936

namespace A315447

/-- `A008458(n)+A046978(n)-n` -/
def P14342759552406624936.Spec : Prop :=
  ∀ n, P14342759552406624936.a n = A315447 n

end A315447

/-! ## A315447.P4851691219111608491

`A046978(n)+record[A257088(n)]+n`
-/

namespace A315447.P4851691219111608491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ))

end

end A315447.P4851691219111608491

namespace A315447

/-- `A046978(n)+record[A257088(n)]+n` -/
def P4851691219111608491.Spec : Prop :=
  ∀ n, P4851691219111608491.a n = A315447 n

end A315447

/-! ## A315447.P18314630693809182952

`2*n+A046978(n)+A008486(n)`
-/

namespace A315447.P18314630693809182952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A046978 n + A008486 n)

end

end A315447.P18314630693809182952

namespace A315447

/-- `2*n+A046978(n)+A008486(n)` -/
def P18314630693809182952.Spec : Prop :=
  ∀ n, P18314630693809182952.a n = A315447 n

end A315447

/-! ## A315447.P13924508297306534014

`A008486(2*n)-(n-A046978(n))`
-/

namespace A315447.P13924508297306534014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - ((n : ℤ) - A046978 n)

end

end A315447.P13924508297306534014

namespace A315447

/-- `A008486(2*n)-(n-A046978(n))` -/
def P13924508297306534014.Spec : Prop :=
  ∀ n, P13924508297306534014.a n = A315447 n

end A315447

/-! ## A315447.P10276158515747632145

`A313685(n)+A004525(A004525(n))`
-/

namespace A315447.P10276158515747632145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + A004525 (A004525 n).toNat

end

end A315447.P10276158515747632145

namespace A315447

/-- `A313685(n)+A004525(A004525(n))` -/
def P10276158515747632145.Spec : Prop :=
  ∀ n, P10276158515747632145.a n = A315447 n

end A315447

/-! ## A315447.P8522422695069720833

`A301293(n)+2*A004525(A004525(n))`
-/

namespace A315447.P8522422695069720833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 n + 2 * A004525 (A004525 n).toNat

end

end A315447.P8522422695069720833

namespace A315447

/-- `A301293(n)+2*A004525(A004525(n))` -/
def P8522422695069720833.Spec : Prop :=
  ∀ n, P8522422695069720833.a n = A315447 n

end A315447

/-! ## A315447.P2220661345119689416

`A330025(A001068(n))+A008574(n)+n`
-/

namespace A315447.P2220661345119689416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A001068 n).toNat + (A008574 n + (n : ℤ))

end

end A315447.P2220661345119689416

namespace A315447

/-- `A330025(A001068(n))+A008574(n)+n` -/
def P2220661345119689416.Spec : Prop :=
  ∀ n, P2220661345119689416.a n = A315447 n

end A315447

/-! ## A315447.P5891875299258314521

`A314026(n)+A188510(n)`
-/

namespace A315447.P5891875299258314521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314026 n + A188510 n

end

end A315447.P5891875299258314521

namespace A315447

/-- `A314026(n)+A188510(n)` -/
def P5891875299258314521.Spec : Prop :=
  ∀ n, P5891875299258314521.a n = A315447 n

end A315447

/-! ## A315447.P10555398171870083907

`A313826(n)+A046978(A046978(n)+n)`
-/

namespace A315447.P10555398171870083907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313826 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A315447.P10555398171870083907

namespace A315447

/-- `A313826(n)+A046978(A046978(n)+n)` -/
def P10555398171870083907.Spec : Prop :=
  ∀ n, P10555398171870083907.a n = A315447 n

end A315447

/-! ## A315447.P1856547837160243572

`A074067(A313152(n))`
-/

namespace A315447.P1856547837160243572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313152 n).toNat

end

end A315447.P1856547837160243572

namespace A315447

/-- `A074067(A313152(n))` -/
def P1856547837160243572.Spec : Prop :=
  ∀ n, P1856547837160243572.a n = A315447 n

end A315447

/-!
# A315448: Coordination sequence Gal.6.442.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315448, there is no canonical definition to state claims against.
-/

/-! ## A315448.P11032159661397845253

`A315469(n)-A049321(A119852(n))`
-/

namespace A315448.P11032159661397845253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315469 n - A049321 (A119852 n).toNat

end

end A315448.P11032159661397845253

/-! ## A315448.P18037696063887090591

`A315447(n)+A216188(3^n)`
-/

namespace A315448.P18037696063887090591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315447 n + A216188 (3 ^ n)

end

end A315448.P18037696063887090591

/-! ## A315448.P14285136531765167622

`A315175(n)+A001222(A036726(n))`
-/

namespace A315448.P14285136531765167622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315175 n + A001222 (A036726 n).toNat

end

end A315448.P14285136531765167622

/-! ## A315448.P6163934265794462566

`A100053(A320736(n))+A030229(n+1)`
-/

namespace A315448.P6163934265794462566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100053 (A320736 n).toNat + A030229 (n + 1)

end

end A315448.P6163934265794462566

/-! ## A315448.P307441769910959501

`A313471(n)+A001221(A047145(n+3))`
-/

namespace A315448.P307441769910959501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313471 n + A001221 (A047145 (n + 3)).toNat

end

end A315448.P307441769910959501

/-!
# A315449: Coordination sequence Gal.6.577.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315449, there is no canonical definition to state claims against.
-/

/-! ## A315449.P16954993294085962742

`A008458(n)+A008579(n)-A313349(n)`
-/

namespace A315449.P16954993294085962742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A313349 n)

end

end A315449.P16954993294085962742

/-!
# A315450: Coordination sequence Gal.6.261.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315450, the canonical program `A315450.P13499610766235160957` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315450 has offset 0).

The definition of A315450 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2389 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315450.P13499610766235160957

`2*A313689(n)-A313045(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315450

/-- `2*A313689(n)-A313045(n)` -/
def P13499610766235160957.Spec : Prop :=
  ∀ n, P13499610766235160957.a n = A315450 n

theorem P13499610766235160957.correct : P13499610766235160957.Spec := by
  intro n
  simp only [A315450]

end A315450

/-! ## A315450.P28677151754166713

`abs(A008592(n)-A313148(n))`
-/

namespace A315450.P28677151754166713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313148 n|

end

end A315450.P28677151754166713

namespace A315450

/-- `abs(A008592(n)-A313148(n))` -/
def P28677151754166713.Spec : Prop :=
  ∀ n, P28677151754166713.a n = A315450 n

end A315450

/-! ## A315450.P10030982749073200098

`2*A008706(n)-A313148(n)`
-/

namespace A315450.P10030982749073200098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313148 n

end

end A315450.P10030982749073200098

namespace A315450

/-- `2*A008706(n)-A313148(n)` -/
def P10030982749073200098.Spec : Prop :=
  ∀ n, P10030982749073200098.a n = A315450 n

end A315450

/-! ## A315450.P1867810668223567968

`A135042(2*n+1)-A313148(n)`
-/

namespace A315450.P1867810668223567968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313148 n

end

end A315450.P1867810668223567968

namespace A315450

/-- `A135042(2*n+1)-A313148(n)` -/
def P1867810668223567968.Spec : Prop :=
  ∀ n, P1867810668223567968.a n = A315450 n

end A315450

/-! ## A315450.P7951371044429427941

`A008458(n)+A008574(n)-A313148(n)`
-/

namespace A315450.P7951371044429427941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313148 n)

end

end A315450.P7951371044429427941

namespace A315450

/-- `A008458(n)+A008574(n)-A313148(n)` -/
def P7951371044429427941.Spec : Prop :=
  ∀ n, P7951371044429427941.a n = A315450 n

end A315450

/-! ## A315450.P3106480610521837783

`(A315725(n)+A315186(n))/2`
-/

namespace A315450.P3106480610521837783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315725 n + A315186 n : ℚ) / 2

end

end A315450.P3106480610521837783

namespace A315450

/-- `(A315725(n)+A315186(n))/2` -/
def P3106480610521837783.Spec : Prop :=
  ∀ n, P3106480610521837783.a n = (A315450 n : ℚ)

end A315450

/-! ## A315450.P608092684374009150

`A315186(n)+A004525(A315725(n)-A315186(n))`
-/

namespace A315450.P608092684374009150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315186 n + A004525 (A315725 n - A315186 n).toNat

end

end A315450.P608092684374009150

namespace A315450

/-- `A315186(n)+A004525(A315725(n)-A315186(n))` -/
def P608092684374009150.Spec : Prop :=
  ∀ n, P608092684374009150.a n = A315450 n

end A315450

/-! ## A315450.P14397686393173742830

`A315725(n)-A004525(A315725(n)-A315183(n))`
-/

namespace A315450.P14397686393173742830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315725 n - A004525 (A315725 n - A315183 n).toNat

end

end A315450.P14397686393173742830

namespace A315450

/-- `A315725(n)-A004525(A315725(n)-A315183(n))` -/
def P14397686393173742830.Spec : Prop :=
  ∀ n, P14397686393173742830.a n = A315450 n

end A315450

/-! ## A315450.P6310929277402746590

`A005843(A313689(n))-A313045(n)`
-/

namespace A315450.P6310929277402746590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313689 n).toNat - A313045 n

end

end A315450.P6310929277402746590

namespace A315450

/-- `A005843(A313689(n))-A313045(n)` -/
def P6310929277402746590.Spec : Prop :=
  ∀ n, P6310929277402746590.a n = A315450 n

end A315450

/-! ## A315450.P7290147966480274337

`A005843(A008706(n))-A313148(n)`
-/

namespace A315450.P7290147966480274337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313148 n

end

end A315450.P7290147966480274337

namespace A315450

/-- `A005843(A008706(n))-A313148(n)` -/
def P7290147966480274337.Spec : Prop :=
  ∀ n, P7290147966480274337.a n = A315450 n

end A315450

/-! ## A315450.P825138007006668447

`A065502(A008458(n))-A313148(n)`
-/

namespace A315450.P825138007006668447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313148 n

end

end A315450.P825138007006668447

namespace A315450

/-- `A065502(A008458(n))-A313148(n)` -/
def P825138007006668447.Spec : Prop :=
  ∀ n, P825138007006668447.a n = A315450 n

end A315450

/-! ## A315450.P8849478368671103670

`A004525(A315725(n)+A315183(n))`
-/

namespace A315450.P8849478368671103670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315725 n + A315183 n).toNat

end

end A315450.P8849478368671103670

namespace A315450

/-- `A004525(A315725(n)+A315183(n))` -/
def P8849478368671103670.Spec : Prop :=
  ∀ n, P8849478368671103670.a n = A315450 n

end A315450

/-! ## A315450.P1670399714503761250

`A004525(A315725(n)+A315186(n))`
-/

namespace A315450.P1670399714503761250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315725 n + A315186 n).toNat

end

end A315450.P1670399714503761250

namespace A315450

/-- `A004525(A315725(n)+A315186(n))` -/
def P1670399714503761250.Spec : Prop :=
  ∀ n, P1670399714503761250.a n = A315450 n

end A315450

/-! ## A315450.P9676515390424066570

`A233583(A017281(n))-A313148(n)`
-/

namespace A315450.P9676515390424066570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313148 n

end

end A315450.P9676515390424066570

namespace A315450

/-- `A233583(A017281(n))-A313148(n)` -/
def P9676515390424066570.Spec : Prop :=
  ∀ n, P9676515390424066570.a n = A315450 n

end A315450

/-!
# A315451: Coordination sequence Gal.6.441.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315451, there is no canonical definition to state claims against.
-/

/-! ## A315451.P262644263225847149

`A314895(n)+A087436(A126371(n))`
-/

namespace A315451.P262644263225847149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314895 n + A087436 (A126371 n).toNat

end

end A315451.P262644263225847149

/-!
# A315452: Coordination sequence Gal.4.55.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315452, the canonical program `A315452.P9156352442981607618` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315452 has offset 0).

The definition of A315452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315452.P17229273663481849594

`A047263(A314674(n)+1)`
-/

namespace A315452.P17229273663481849594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A314674 n + 1).toNat

end

end A315452.P17229273663481849594

namespace A315452

/-- `A047263(A314674(n)+1)` -/
def P17229273663481849594.Spec : Prop :=
  ∀ n, P17229273663481849594.a n = A315452 n

end A315452

/-! ## A315452.P9156352442981607618

`A314096(n)+A238469(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315452

/-- `A314096(n)+A238469(n)` -/
def P9156352442981607618.Spec : Prop :=
  ∀ n, P9156352442981607618.a n = A315452 n

theorem P9156352442981607618.correct : P9156352442981607618.Spec := by
  intro n
  simp only [A315452]

end A315452

/-! ## A315452.P12305309029339004522

`A315634(n)-A238470(n)`
-/

namespace A315452.P12305309029339004522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315634 n - A238470 n

end

end A315452.P12305309029339004522

namespace A315452

/-- `A315634(n)-A238470(n)` -/
def P12305309029339004522.Spec : Prop :=
  ∀ n, P12305309029339004522.a n = A315452 n

end A315452

/-! ## A315452.P17419736406330126990

`abs(A008592(n)-A313147(n))`
-/

namespace A315452.P17419736406330126990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313147 n|

end

end A315452.P17419736406330126990

namespace A315452

/-- `abs(A008592(n)-A313147(n))` -/
def P17419736406330126990.Spec : Prop :=
  ∀ n, P17419736406330126990.a n = A315452 n

end A315452

/-! ## A315452.P815316445959870379

`A314096(n)+A238470(2*n)`
-/

namespace A315452.P815316445959870379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314096 n + A238470 (2 * n)

end

end A315452.P815316445959870379

namespace A315452

/-- `A314096(n)+A238470(2*n)` -/
def P815316445959870379.Spec : Prop :=
  ∀ n, P815316445959870379.a n = A315452 n

end A315452

/-! ## A315452.P9084124512394386299

`2*A008706(n)-A313147(n)`
-/

namespace A315452.P9084124512394386299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313147 n

end

end A315452.P9084124512394386299

namespace A315452

/-- `2*A008706(n)-A313147(n)` -/
def P9084124512394386299.Spec : Prop :=
  ∀ n, P9084124512394386299.a n = A315452 n

end A315452

/-! ## A315452.P11394459094237614524

`A315423(n)-A238469(2*n)`
-/

namespace A315452.P11394459094237614524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n - A238469 (2 * n)

end

end A315452.P11394459094237614524

namespace A315452

/-- `A315423(n)-A238469(2*n)` -/
def P11394459094237614524.Spec : Prop :=
  ∀ n, P11394459094237614524.a n = A315452 n

end A315452

/-! ## A315452.P9688471977493262172

`A008458(n)+A008574(n)-A313147(n)`
-/

namespace A315452.P9688471977493262172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313147 n)

end

end A315452.P9688471977493262172

namespace A315452

/-- `A008458(n)+A008574(n)-A313147(n)` -/
def P9688471977493262172.Spec : Prop :=
  ∀ n, P9688471977493262172.a n = A315452 n

end A315452

/-! ## A315452.P3195378865827926778

`A315423(n)-A238468(A238468(n)+n)`
-/

namespace A315452.P3195378865827926778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n - A238468 (A238468 n + (n : ℤ)).toNat

end

end A315452.P3195378865827926778

namespace A315452

/-- `A315423(n)-A238468(A238468(n)+n)` -/
def P3195378865827926778.Spec : Prop :=
  ∀ n, P3195378865827926778.a n = A315452 n

end A315452

/-! ## A315452.P3024740048043375520

`A313147(n)+A005843(A008706(n)-A313147(n))`
-/

namespace A315452.P3024740048043375520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313147 n + A005843 (A008706 n - A313147 n).toNat

end

end A315452.P3024740048043375520

namespace A315452

/-- `A313147(n)+A005843(A008706(n)-A313147(n))` -/
def P3024740048043375520.Spec : Prop :=
  ∀ n, P3024740048043375520.a n = A315452 n

end A315452

/-! ## A315452.P5019309312798011500

`A315309(n)+A238470(n)`
-/

namespace A315452.P5019309312798011500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315309 n + A238470 n

end

end A315452.P5019309312798011500

namespace A315452

/-- `A315309(n)+A238470(n)` -/
def P5019309312798011500.Spec : Prop :=
  ∀ n, P5019309312798011500.a n = A315452 n

end A315452

/-! ## A315452.P6424056974378372075

`A315511(n)-Δ[A011860(n)]`
-/

namespace A315452.P6424056974378372075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n - (f1 (n + 1) - f1 n)

end

end A315452.P6424056974378372075

namespace A315452

/-- `A315511(n)-Δ[A011860(n)]` -/
def P6424056974378372075.Spec : Prop :=
  ∀ n, P6424056974378372075.a n = A315452 n

end A315452

/-! ## A315452.P16118666174214586984

`A110657(A314753(n))+4*n`
-/

namespace A315452.P16118666174214586984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A314753 n).toNat + (4 * n : ℤ)

end

end A315452.P16118666174214586984

namespace A315452

/-- `A110657(A314753(n))+4*n` -/
def P16118666174214586984.Spec : Prop :=
  ∀ n, P16118666174214586984.a n = A315452 n

end A315452

/-! ## A315452.P2578878372331306913

`A005843(A008706(n))-A313147(n)`
-/

namespace A315452.P2578878372331306913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313147 n

end

end A315452.P2578878372331306913

namespace A315452

/-- `A005843(A008706(n))-A313147(n)` -/
def P2578878372331306913.Spec : Prop :=
  ∀ n, P2578878372331306913.a n = A315452 n

end A315452

/-! ## A315452.P9401128025901912836

`A313836(n)-A238468(2*n)`
-/

namespace A315452.P9401128025901912836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313836 n - A238468 (2 * n)

end

end A315452.P9401128025901912836

namespace A315452

/-- `A313836(n)-A238468(2*n)` -/
def P9401128025901912836.Spec : Prop :=
  ∀ n, P9401128025901912836.a n = A315452 n

end A315452

/-! ## A315452.P4693927876122335018

`(A008592(n)-A313147(n))^A014963(4*(2*n+1))`
-/

namespace A315452.P4693927876122335018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008592 n - A313147 n : ℚ) ^ (A014963 (4 * (2 * n + 1)) : ℤ)

end

end A315452.P4693927876122335018

namespace A315452

/-- `(A008592(n)-A313147(n))^A014963(4*(2*n+1))` -/
def P4693927876122335018.Spec : Prop :=
  ∀ n, P4693927876122335018.a n = (A315452 n : ℚ)

end A315452

/-! ## A315452.P17559252048045482632

`A151988(2*A314674(n))/2`
-/

namespace A315452.P17559252048045482632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151988 (2 * A314674 n).toNat : ℚ) / 2

end

end A315452.P17559252048045482632

namespace A315452

/-- `A151988(2*A314674(n))/2` -/
def P17559252048045482632.Spec : Prop :=
  ∀ n, P17559252048045482632.a n = (A315452 n : ℚ)

end A315452

/-!
# A315453: Coordination sequence Gal.6.207.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315453, the canonical program `A315453.P11183259861073746390` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315453 has offset 0).

The definition of A315453 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2346 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315453.P10298186999778941270

`abs(10*n-A313145(n))`
-/

namespace A315453.P10298186999778941270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313145 n|

end

end A315453.P10298186999778941270

namespace A315453

/-- `abs(10*n-A313145(n))` -/
def P10298186999778941270.Spec : Prop :=
  ∀ n, P10298186999778941270.a n = A315453 n

end A315453

/-! ## A315453.P11183259861073746390

`A315182(n)+∑[A021913(n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315453

/-- `A315182(n)+∑[A021913(n)]` -/
def P11183259861073746390.Spec : Prop :=
  ∀ n, P11183259861073746390.a n = A315453 n

theorem P11183259861073746390.correct : P11183259861073746390.Spec := by
  intro n
  simp only [A315453]

end A315453

/-! ## A315453.P126872073173543721

`A315182(n)+Δ[A011848(n)]`
-/

namespace A315453.P126872073173543721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315182 n + (f1 (n + 1) - f1 n)

end

end A315453.P126872073173543721

namespace A315453

/-- `A315182(n)+Δ[A011848(n)]` -/
def P126872073173543721.Spec : Prop :=
  ∀ n, P126872073173543721.a n = A315453 n

end A315453

/-! ## A315453.P13053274092865789072

`2*A008706(n)-A313145(n)`
-/

namespace A315453.P13053274092865789072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313145 n

end

end A315453.P13053274092865789072

namespace A315453

/-- `2*A008706(n)-A313145(n)` -/
def P13053274092865789072.Spec : Prop :=
  ∀ n, P13053274092865789072.a n = A315453 n

end A315453

/-! ## A315453.P9661631126457423982

`A313687(n)+A004396(A004525(n))`
-/

namespace A315453.P9661631126457423982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313687 n + A004396 (A004525 n).toNat

end

end A315453.P9661631126457423982

namespace A315453

/-- `A313687(n)+A004396(A004525(n))` -/
def P9661631126457423982.Spec : Prop :=
  ∀ n, P9661631126457423982.a n = A315453 n

end A315453

/-! ## A315453.P998562233557862124

`A313693(n)+A004525(A004396(n))`
-/

namespace A315453.P998562233557862124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + A004525 (A004396 n).toNat

end

end A315453.P998562233557862124

namespace A315453

/-- `A313693(n)+A004525(A004396(n))` -/
def P998562233557862124.Spec : Prop :=
  ∀ n, P998562233557862124.a n = A315453 n

end A315453

/-! ## A315453.P5966382000059698291

`A008458(n)+A008574(n)-A313145(n)`
-/

namespace A315453.P5966382000059698291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313145 n)

end

end A315453.P5966382000059698291

namespace A315453

/-- `A008458(n)+A008574(n)-A313145(n)` -/
def P5966382000059698291.Spec : Prop :=
  ∀ n, P5966382000059698291.a n = A315453 n

end A315453

/-! ## A315453.P8666762625843546604

`∑{d}[A008592(n)-A313145(n), A000010(#)]`
-/

namespace A315453.P8666762625843546604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315453.P8666762625843546604

namespace A315453

/-- `∑{d}[A008592(n)-A313145(n), A000010(#)]` -/
def P8666762625843546604.Spec : Prop :=
  ∀ n, P8666762625843546604.a n = A315453 n

end A315453

/-! ## A315453.P11908794371336711401

`A313145(n)+A005843(A008706(n)-A313145(n))`
-/

namespace A315453.P11908794371336711401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313145 n + A005843 (A008706 n - A313145 n).toNat

end

end A315453.P11908794371336711401

namespace A315453

/-- `A313145(n)+A005843(A008706(n)-A313145(n))` -/
def P11908794371336711401.Spec : Prop :=
  ∀ n, P11908794371336711401.a n = A315453 n

end A315453

/-! ## A315453.P565755391035481541

`A313872(n)+A128834(n)`
-/

namespace A315453.P565755391035481541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n + A128834 n

end

end A315453.P565755391035481541

namespace A315453

/-- `A313872(n)+A128834(n)` -/
def P565755391035481541.Spec : Prop :=
  ∀ n, P565755391035481541.a n = A315453 n

end A315453

/-! ## A315453.P6090264083263982374

`A313872(n)-A010892(n+2)`
-/

namespace A315453.P6090264083263982374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313872 n - A010892 (n + 2)

end

end A315453.P6090264083263982374

namespace A315453

/-- `A313872(n)-A010892(n+2)` -/
def P6090264083263982374.Spec : Prop :=
  ∀ n, P6090264083263982374.a n = A315453 n

end A315453

/-! ## A315453.P11511660805679615444

`A315675(n)-A004525(n-A004396(n))`
-/

namespace A315453.P11511660805679615444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315675 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A315453.P11511660805679615444

namespace A315453

/-- `A315675(n)-A004525(n-A004396(n))` -/
def P11511660805679615444.Spec : Prop :=
  ∀ n, P11511660805679615444.a n = A315453 n

end A315453

/-! ## A315453.P1879310409976046996

`A005843(A008706(n))-A313145(n)`
-/

namespace A315453.P1879310409976046996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313145 n

end

end A315453.P1879310409976046996

namespace A315453

/-- `A005843(A008706(n))-A313145(n)` -/
def P1879310409976046996.Spec : Prop :=
  ∀ n, P1879310409976046996.a n = A315453 n

end A315453

/-!
# A315454: Coordination sequence Gal.6.331.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315454, the canonical program `A315454.P12582608693749903709` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315454 has offset 0).

The definition of A315454 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315454.P12582608693749903709

`A315414(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A315454

/-- `A315414(n)+Δ[A011864(n)]` -/
def P12582608693749903709.Spec : Prop :=
  ∀ n, P12582608693749903709.a n = A315454 n

theorem P12582608693749903709.correct : P12582608693749903709.Spec := by
  intro n
  simp only [A315454]

end A315454

/-! ## A315454.P406473808081225740

`2*A313696(n)-A313031(n)`
-/

namespace A315454.P406473808081225740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313696 n - A313031 n

end

end A315454.P406473808081225740

namespace A315454

/-- `2*A313696(n)-A313031(n)` -/
def P406473808081225740.Spec : Prop :=
  ∀ n, P406473808081225740.a n = A315454 n

end A315454

/-! ## A315454.P18160211577917970187

`abs(A008592(n)-A313137(n))`
-/

namespace A315454.P18160211577917970187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313137 n|

end

end A315454.P18160211577917970187

namespace A315454

/-- `abs(A008592(n)-A313137(n))` -/
def P18160211577917970187.Spec : Prop :=
  ∀ n, P18160211577917970187.a n = A315454 n

end A315454

/-! ## A315454.P9565192696836664572

`2*A008706(n)-A313137(n)`
-/

namespace A315454.P9565192696836664572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313137 n

end

end A315454.P9565192696836664572

namespace A315454

/-- `2*A008706(n)-A313137(n)` -/
def P9565192696836664572.Spec : Prop :=
  ∀ n, P9565192696836664572.a n = A315454 n

end A315454

/-! ## A315454.P14322002544056648671

`A135042(2*n+1)-A313137(n)`
-/

namespace A315454.P14322002544056648671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313137 n

end

end A315454.P14322002544056648671

namespace A315454

/-- `A135042(2*n+1)-A313137(n)` -/
def P14322002544056648671.Spec : Prop :=
  ∀ n, P14322002544056648671.a n = A315454 n

end A315454

/-! ## A315454.P4501115187088447092

`A008458(n)+A008574(n)-A313137(n)`
-/

namespace A315454.P4501115187088447092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313137 n)

end

end A315454.P4501115187088447092

namespace A315454

/-- `A008458(n)+A008574(n)-A313137(n)` -/
def P4501115187088447092.Spec : Prop :=
  ∀ n, P4501115187088447092.a n = A315454 n

end A315454

/-! ## A315454.P14767861117354260198

`∑{d}[A008592(n)-A313137(n), A000010(#)]`
-/

namespace A315454.P14767861117354260198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315454.P14767861117354260198

namespace A315454

/-- `∑{d}[A008592(n)-A313137(n), A000010(#)]` -/
def P14767861117354260198.Spec : Prop :=
  ∀ n, P14767861117354260198.a n = A315454 n

end A315454

/-! ## A315454.P10327261776914752156

`A000122(A020639(n+1))+A008592(n)-A313137(n)`
-/

namespace A315454.P10327261776914752156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A020639 (n + 1)).toNat + (A008592 n - A313137 n)

end

end A315454.P10327261776914752156

namespace A315454

/-- `A000122(A020639(n+1))+A008592(n)-A313137(n)` -/
def P10327261776914752156.Spec : Prop :=
  ∀ n, P10327261776914752156.a n = A315454 n

end A315454

/-! ## A315454.P8119269851680509456

`A065502(A314684(n))-A004277(n)`
-/

namespace A315454.P8119269851680509456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A314684 n).toNat - A004277 n

end

end A315454.P8119269851680509456

namespace A315454

/-- `A065502(A314684(n))-A004277(n)` -/
def P8119269851680509456.Spec : Prop :=
  ∀ n, P8119269851680509456.a n = A315454 n

end A315454

/-! ## A315454.P11540343288895917349

`A005843(A313696(n))-A313031(n)`
-/

namespace A315454.P11540343288895917349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313696 n).toNat - A313031 n

end

end A315454.P11540343288895917349

namespace A315454

/-- `A005843(A313696(n))-A313031(n)` -/
def P11540343288895917349.Spec : Prop :=
  ∀ n, P11540343288895917349.a n = A315454 n

end A315454

/-! ## A315454.P2914241082779615536

`A005843(A008706(n))-A313137(n)`
-/

namespace A315454.P2914241082779615536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313137 n

end

end A315454.P2914241082779615536

namespace A315454

/-- `A005843(A008706(n))-A313137(n)` -/
def P2914241082779615536.Spec : Prop :=
  ∀ n, P2914241082779615536.a n = A315454 n

end A315454

/-! ## A315454.P3739085212648838281

`A065502(A008458(n))-A313137(n)`
-/

namespace A315454.P3739085212648838281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313137 n

end

end A315454.P3739085212648838281

namespace A315454

/-- `A065502(A008458(n))-A313137(n)` -/
def P3739085212648838281.Spec : Prop :=
  ∀ n, P3739085212648838281.a n = A315454 n

end A315454

/-! ## A315454.P8726535870536429276

`A315743(2*n)+n-7*n`
-/

namespace A315454.P8726535870536429276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315743 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A315454.P8726535870536429276

namespace A315454

/-- `A315743(2*n)+n-7*n` -/
def P8726535870536429276.Spec : Prop :=
  ∀ n, P8726535870536429276.a n = A315454 n

end A315454

/-! ## A315454.P11446659782664355232

`A004525(A315728(2*n))`
-/

namespace A315454.P11446659782664355232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315728 (2 * n)).toNat

end

end A315454.P11446659782664355232

namespace A315454

/-- `A004525(A315728(2*n))` -/
def P11446659782664355232.Spec : Prop :=
  ∀ n, P11446659782664355232.a n = A315454 n

end A315454

/-! ## A315454.P9470589936131125185

`A004526(A315728(2*n)+1)`
-/

namespace A315454.P9470589936131125185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315728 (2 * n) + 1).toNat

end

end A315454.P9470589936131125185

namespace A315454

/-- `A004526(A315728(2*n)+1)` -/
def P9470589936131125185.Spec : Prop :=
  ∀ n, P9470589936131125185.a n = A315454 n

end A315454

/-! ## A315454.P4037185075015628783

`A233583(A017281(n))-A313137(n)`
-/

namespace A315454.P4037185075015628783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313137 n

end

end A315454.P4037185075015628783

namespace A315454

/-- `A233583(A017281(n))-A313137(n)` -/
def P4037185075015628783.Spec : Prop :=
  ∀ n, P4037185075015628783.a n = A315454 n

end A315454

/-! ## A315454.P13968699124771291820

`A000122(n²+1)+A008592(n)-A313137(n)`
-/

namespace A315454.P13968699124771291820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (n ^ 2 + 1) + (A008592 n - A313137 n)

end

end A315454.P13968699124771291820

namespace A315454

/-- `A000122(n²+1)+A008592(n)-A313137(n)` -/
def P13968699124771291820.Spec : Prop :=
  ∀ n, P13968699124771291820.a n = A315454 n

end A315454

/-!
# A315455: Coordination sequence Gal.6.208.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315455, the canonical program `A315455.P3215631304142781688` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315455 has offset 0).

The definition of A315455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315455.P3215631304142781688

`A313891(n)+A128834(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315455

/-- `A313891(n)+A128834(n)` -/
def P3215631304142781688.Spec : Prop :=
  ∀ n, P3215631304142781688.a n = A315455 n

theorem P3215631304142781688.correct : P3215631304142781688.Spec := by
  intro n
  simp only [A315455]

end A315455

/-! ## A315455.P11581273365408991352

`abs(A008592(n)-A313136(n))`
-/

namespace A315455.P11581273365408991352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313136 n|

end

end A315455.P11581273365408991352

namespace A315455

/-- `abs(A008592(n)-A313136(n))` -/
def P11581273365408991352.Spec : Prop :=
  ∀ n, P11581273365408991352.a n = A315455 n

end A315455

/-! ## A315455.P11423529720818901669

`A315415(n)+Δ[A011865(n)]`
-/

namespace A315455.P11423529720818901669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315415 n + (f1 (n + 1) - f1 n)

end

end A315455.P11423529720818901669

namespace A315455

/-- `A315415(n)+Δ[A011865(n)]` -/
def P11423529720818901669.Spec : Prop :=
  ∀ n, P11423529720818901669.a n = A315455 n

end A315455

/-! ## A315455.P10205658025348286420

`A313891(n)-A010892(n+2)`
-/

namespace A315455.P10205658025348286420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313891 n - A010892 (n + 2)

end

end A315455.P10205658025348286420

namespace A315455

/-- `A313891(n)-A010892(n+2)` -/
def P10205658025348286420.Spec : Prop :=
  ∀ n, P10205658025348286420.a n = A315455 n

end A315455

/-! ## A315455.P17559774257009060577

`2*A008706(n)-A313136(n)`
-/

namespace A315455.P17559774257009060577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313136 n

end

end A315455.P17559774257009060577

namespace A315455

/-- `2*A008706(n)-A313136(n)` -/
def P17559774257009060577.Spec : Prop :=
  ∀ n, P17559774257009060577.a n = A315455 n

end A315455

/-! ## A315455.P8670070532138978909

`A313698(n)+A004396(A004525(n))`
-/

namespace A315455.P8670070532138978909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + A004396 (A004525 n).toNat

end

end A315455.P8670070532138978909

namespace A315455

/-- `A313698(n)+A004396(A004525(n))` -/
def P8670070532138978909.Spec : Prop :=
  ∀ n, P8670070532138978909.a n = A315455 n

end A315455

/-! ## A315455.P2288246165776312574

`A313707(n)+A004525(A004396(n))`
-/

namespace A315455.P2288246165776312574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313707 n + A004525 (A004396 n).toNat

end

end A315455.P2288246165776312574

namespace A315455

/-- `A313707(n)+A004525(A004396(n))` -/
def P2288246165776312574.Spec : Prop :=
  ∀ n, P2288246165776312574.a n = A315455 n

end A315455

/-! ## A315455.P2977120491247563760

`A313693(n)+A004525(A128834(n)+n)`
-/

namespace A315455.P2977120491247563760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + A004525 (A128834 n + (n : ℤ)).toNat

end

end A315455.P2977120491247563760

namespace A315455

/-- `A313693(n)+A004525(A128834(n)+n)` -/
def P2977120491247563760.Spec : Prop :=
  ∀ n, P2977120491247563760.a n = A315455 n

end A315455

/-! ## A315455.P12934438526740835569

`A008458(n)+A008574(n)-A313136(n)`
-/

namespace A315455.P12934438526740835569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313136 n)

end

end A315455.P12934438526740835569

namespace A315455

/-- `A008458(n)+A008574(n)-A313136(n)` -/
def P12934438526740835569.Spec : Prop :=
  ∀ n, P12934438526740835569.a n = A315455 n

end A315455

/-! ## A315455.P4650182767510621457

`A313136(n)+A005843(A008706(n)-A313136(n))`
-/

namespace A315455.P4650182767510621457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313136 n + A005843 (A008706 n - A313136 n).toNat

end

end A315455.P4650182767510621457

namespace A315455

/-- `A313136(n)+A005843(A008706(n)-A313136(n))` -/
def P4650182767510621457.Spec : Prop :=
  ∀ n, P4650182767510621457.a n = A315455 n

end A315455

/-! ## A315455.P2425630452950572693

`A005843(A008706(n))-A313136(n)`
-/

namespace A315455.P2425630452950572693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313136 n

end

end A315455.P2425630452950572693

namespace A315455

/-- `A005843(A008706(n))-A313136(n)` -/
def P2425630452950572693.Spec : Prop :=
  ∀ n, P2425630452950572693.a n = A315455 n

end A315455

/-!
# A315458: Coordination sequence Gal.6.410.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315458, there is no canonical definition to state claims against.
-/

/-! ## A315458.P8128228255055637845

`A178891(n)+A036453(A193438(n))`
-/

namespace A315458.P8128228255055637845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 n + A036453 (A193438 n).toNat

end

end A315458.P8128228255055637845

/-! ## A315458.P11984212770243917110

`A178891(n)+A006928(A293993(n))`
-/

namespace A315458.P11984212770243917110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 n + A006928 (A293993 n).toNat

end

end A315458.P11984212770243917110

/-! ## A315458.P6491809498942793087

`A178891(n)+A141310(A241704(n+1))`
-/

namespace A315458.P6491809498942793087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178891 n + A141310 (A241704 (n + 1)).toNat

end

end A315458.P6491809498942793087

/-!
# A315459: Coordination sequence Gal.6.134.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315459, the canonical program `A315459.P17608540704289415769` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315459 has offset 0).

The definition of A315459 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315459.P17608540704289415769

`A315681(n)-∑[A022003(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315459

/-- `A315681(n)-∑[A022003(n)]` -/
def P17608540704289415769.Spec : Prop :=
  ∀ n, P17608540704289415769.a n = A315459 n

theorem P17608540704289415769.correct : P17608540704289415769.Spec := by
  intro n
  simp only [A315459]

end A315459

/-! ## A315459.P11507793511683357103

`A315681(n)-A002264(n+1)`
-/

namespace A315459.P11507793511683357103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315681 n - A002264 (n + 1)

end

end A315459.P11507793511683357103

namespace A315459

/-- `A315681(n)-A002264(n+1)` -/
def P11507793511683357103.Spec : Prop :=
  ∀ n, P11507793511683357103.a n = A315459 n

end A315459

/-! ## A315459.P11068038958158188149

`A008576(n)+A315681(n)-A008486(n)`
-/

namespace A315459.P11068038958158188149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315681 n - A008486 n)

end

end A315459.P11068038958158188149

namespace A315459

/-- `A008576(n)+A315681(n)-A008486(n)` -/
def P11068038958158188149.Spec : Prop :=
  ∀ n, P11068038958158188149.a n = A315459 n

end A315459

/-! ## A315459.P15114449254687409135

`abs(A008592(n)-A313129(n))`
-/

namespace A315459.P15114449254687409135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313129 n|

end

end A315459.P15114449254687409135

namespace A315459

/-- `abs(A008592(n)-A313129(n))` -/
def P15114449254687409135.Spec : Prop :=
  ∀ n, P15114449254687409135.a n = A315459 n

end A315459

/-! ## A315459.P18204790225129891105

`2*A008706(n)-A313129(n)`
-/

namespace A315459.P18204790225129891105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313129 n

end

end A315459.P18204790225129891105

namespace A315459

/-- `2*A008706(n)-A313129(n)` -/
def P18204790225129891105.Spec : Prop :=
  ∀ n, P18204790225129891105.a n = A315459 n

end A315459

/-! ## A315459.P305040899915637516

`A008458(n)+A008574(n)-A313129(n)`
-/

namespace A315459.P305040899915637516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313129 n)

end

end A315459.P305040899915637516

namespace A315459

/-- `A008458(n)+A008574(n)-A313129(n)` -/
def P305040899915637516.Spec : Prop :=
  ∀ n, P305040899915637516.a n = A315459 n

end A315459

/-! ## A315459.P6474560060550471544

`A315738(n)-∑[A021913(n)]`
-/

namespace A315459.P6474560060550471544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315738 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315459.P6474560060550471544

namespace A315459

/-- `A315738(n)-∑[A021913(n)]` -/
def P6474560060550471544.Spec : Prop :=
  ∀ n, P6474560060550471544.a n = A315459 n

end A315459

/-! ## A315459.P12954258663191125250

`A315738(n)-Δ[A011848(n)]`
-/

namespace A315459.P12954258663191125250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315738 n - (f1 (n + 1) - f1 n)

end

end A315459.P12954258663191125250

namespace A315459

/-- `A315738(n)-Δ[A011848(n)]` -/
def P12954258663191125250.Spec : Prop :=
  ∀ n, P12954258663191125250.a n = A315459 n

end A315459

/-! ## A315459.P10549668151931418900

`A315738(n)-A004524(n+1)`
-/

namespace A315459.P10549668151931418900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315738 n - A004524 (n + 1)

end

end A315459.P10549668151931418900

namespace A315459

/-- `A315738(n)-A004524(n+1)` -/
def P10549668151931418900.Spec : Prop :=
  ∀ n, P10549668151931418900.a n = A315459 n

end A315459

/-! ## A315459.P14745233168570167921

`A004525(n)+A315738(n)-n`
-/

namespace A315459.P14745233168570167921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315738 n - (n : ℤ))

end

end A315459.P14745233168570167921

namespace A315459

/-- `A004525(n)+A315738(n)-n` -/
def P14745233168570167921.Spec : Prop :=
  ∀ n, P14745233168570167921.a n = A315459 n

end A315459

/-! ## A315459.P6401518019719929903

`A315738(n)-∑[and(1, A006325(n))]`
-/

namespace A315459.P6401518019719929903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A006325 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315738 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315459.P6401518019719929903

namespace A315459

/-- `A315738(n)-∑[and(1, A006325(n))]` -/
def P6401518019719929903.Spec : Prop :=
  ∀ n, P6401518019719929903.a n = A315459 n

end A315459

/-! ## A315459.P13112108125781143327

`A005843(A008706(n))-A313129(n)`
-/

namespace A315459.P13112108125781143327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313129 n

end

end A315459.P13112108125781143327

namespace A315459

/-- `A005843(A008706(n))-A313129(n)` -/
def P13112108125781143327.Spec : Prop :=
  ∀ n, P13112108125781143327.a n = A315459 n

end A315459

/-!
# A315460: Coordination sequence Gal.6.234.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315460, the canonical program `A315460.P9718461774466515348` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315460 has offset 0).

The definition of A315460 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2353 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315460.P1110749232085429544

`2*A313730(n)-A313124(n)`
-/

namespace A315460.P1110749232085429544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313730 n - A313124 n

end

end A315460.P1110749232085429544

namespace A315460

/-- `2*A313730(n)-A313124(n)` -/
def P1110749232085429544.Spec : Prop :=
  ∀ n, P1110749232085429544.a n = A315460 n

end A315460

/-! ## A315460.P9718461774466515348

`abs(A008592(n)-A313128(n))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A315460

/-- `abs(A008592(n)-A313128(n))` -/
def P9718461774466515348.Spec : Prop :=
  ∀ n, P9718461774466515348.a n = A315460 n

theorem P9718461774466515348.correct : P9718461774466515348.Spec := by
  intro n
  simp only [A315460]

end A315460

/-! ## A315460.P1367368142376412140

`2*A008706(n)-A313128(n)`
-/

namespace A315460.P1367368142376412140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313128 n

end

end A315460.P1367368142376412140

namespace A315460

/-- `2*A008706(n)-A313128(n)` -/
def P1367368142376412140.Spec : Prop :=
  ∀ n, P1367368142376412140.a n = A315460 n

end A315460

/-! ## A315460.P10511650803859338074

`A008458(n)+A008574(n)-A313128(n)`
-/

namespace A315460.P10511650803859338074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313128 n)

end

end A315460.P10511650803859338074

namespace A315460

/-- `A008458(n)+A008574(n)-A313128(n)` -/
def P10511650803859338074.Spec : Prop :=
  ∀ n, P10511650803859338074.a n = A315460 n

end A315460

/-! ## A315460.P2425738128785219297

`A315302(n)+A004525(A315464(n)-A315302(n))`
-/

namespace A315460.P2425738128785219297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315302 n + A004525 (A315464 n - A315302 n).toNat

end

end A315460.P2425738128785219297

namespace A315460

/-- `A315302(n)+A004525(A315464(n)-A315302(n))` -/
def P2425738128785219297.Spec : Prop :=
  ∀ n, P2425738128785219297.a n = A315460 n

end A315460

/-! ## A315460.P6880642096719529302

`A315507(n)-Δ[A011864(n)]`
-/

namespace A315460.P6880642096719529302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315507 n - (f1 (n + 1) - f1 n)

end

end A315460.P6880642096719529302

namespace A315460

/-- `A315507(n)-Δ[A011864(n)]` -/
def P6880642096719529302.Spec : Prop :=
  ∀ n, P6880642096719529302.a n = A315460 n

end A315460

/-! ## A315460.P13705083005747122137

`A005843(A313730(n))-A313124(n)`
-/

namespace A315460.P13705083005747122137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313730 n).toNat - A313124 n

end

end A315460.P13705083005747122137

namespace A315460

/-- `A005843(A313730(n))-A313124(n)` -/
def P13705083005747122137.Spec : Prop :=
  ∀ n, P13705083005747122137.a n = A315460 n

end A315460

/-! ## A315460.P15618999072319226011

`A005843(A008706(n))-A313128(n)`
-/

namespace A315460.P15618999072319226011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313128 n

end

end A315460.P15618999072319226011

namespace A315460

/-- `A005843(A008706(n))-A313128(n)` -/
def P15618999072319226011.Spec : Prop :=
  ∀ n, P15618999072319226011.a n = A315460 n

end A315460

/-! ## A315460.P18296667863600495209

`2*A313718(n)-A313089(n)`
-/

namespace A315460.P18296667863600495209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313718 n - A313089 n

end

end A315460.P18296667863600495209

namespace A315460

/-- `2*A313718(n)-A313089(n)` -/
def P18296667863600495209.Spec : Prop :=
  ∀ n, P18296667863600495209.a n = A315460 n

end A315460

/-! ## A315460.P1817902001736056126

`A005843(A313718(n))-A313089(n)`
-/

namespace A315460.P1817902001736056126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313718 n).toNat - A313089 n

end

end A315460.P1817902001736056126

namespace A315460

/-- `A005843(A313718(n))-A313089(n)` -/
def P1817902001736056126.Spec : Prop :=
  ∀ n, P1817902001736056126.a n = A315460 n

end A315460

/-! ## A315460.P10910122854254640224

`A065502(A008458(n))-A313128(n)`
-/

namespace A315460.P10910122854254640224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313128 n

end

end A315460.P10910122854254640224

namespace A315460

/-- `A065502(A008458(n))-A313128(n)` -/
def P10910122854254640224.Spec : Prop :=
  ∀ n, P10910122854254640224.a n = A315460 n

end A315460

/-! ## A315460.P17844963110200779011

`A004525(A315464(n)+A315302(n))`
-/

namespace A315460.P17844963110200779011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315464 n + A315302 n).toNat

end

end A315460.P17844963110200779011

namespace A315460

/-- `A004525(A315464(n)+A315302(n))` -/
def P17844963110200779011.Spec : Prop :=
  ∀ n, P17844963110200779011.a n = A315460 n

end A315460

/-! ## A315460.P15172523444653028910

`A233583(A017281(n))-A313128(n)`
-/

namespace A315460.P15172523444653028910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313128 n

end

end A315460.P15172523444653028910

namespace A315460

/-- `A233583(A017281(n))-A313128(n)` -/
def P15172523444653028910.Spec : Prop :=
  ∀ n, P15172523444653028910.a n = A315460 n

end A315460

/-!
# A315461: Coordination sequence Gal.5.69.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315461, the canonical program `A315461.P6150613085215570373` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315461 has offset 0).

The definition of A315461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2356 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315461.P6150613085215570373

`∑[4-a(n-5)]+3*n` with `a(0)=1, a(1)=2, a(2)=2, a(3)=2, a(4)=2, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A315461

/-- `∑[4-a(n-5)]+3*n` -/
def P6150613085215570373.Spec : Prop :=
  ∀ n, P6150613085215570373.a n = A315461 n

theorem P6150613085215570373.correct : P6150613085215570373.Spec := by
  intro n
  simp only [A315461]

end A315461

/-! ## A315461.P4673517677678146677

`A163812(n)+5*n`
-/

namespace A315461.P4673517677678146677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163812 n + (5 * n : ℤ)

end

end A315461.P4673517677678146677

namespace A315461

/-- `A163812(n)+5*n` -/
def P4673517677678146677.Spec : Prop :=
  ∀ n, P4673517677678146677.a n = A315461 n

end A315461

/-! ## A315461.P334208337209612476

`A330025(n)+A008706(n)`
-/

namespace A315461.P334208337209612476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A008706 n

end

end A315461.P334208337209612476

namespace A315461

/-- `A330025(n)+A008706(n)` -/
def P334208337209612476.Spec : Prop :=
  ∀ n, P334208337209612476.a n = A315461 n

end A315461

/-! ## A315461.P12338252486134483039

`A314961(n)+A253262(n)`
-/

namespace A315461.P12338252486134483039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314961 n + A253262 n

end

end A315461.P12338252486134483039

namespace A315461

/-- `A314961(n)+A253262(n)` -/
def P12338252486134483039.Spec : Prop :=
  ∀ n, P12338252486134483039.a n = A315461 n

end A315461

/-! ## A315461.P15751912320201223854

`A008706(n)+A163812(n+10)`
-/

namespace A315461.P15751912320201223854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A163812 (n + 10)

end

end A315461.P15751912320201223854

namespace A315461

/-- `A008706(n)+A163812(n+10)` -/
def P15751912320201223854.Spec : Prop :=
  ∀ n, P15751912320201223854.a n = A315461 n

end A315461

/-! ## A315461.P8882280234195277128

`A008574(n)+A330025(n)+n`
-/

namespace A315461.P8882280234195277128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A330025 n + (n : ℤ))

end

end A315461.P8882280234195277128

namespace A315461

/-- `A008574(n)+A330025(n)+n` -/
def P8882280234195277128.Spec : Prop :=
  ∀ n, P8882280234195277128.a n = A315461 n

end A315461

/-! ## A315461.P218345118769349507

`A008458(n)+A330025(n)-n`
-/

namespace A315461.P218345118769349507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A330025 n - (n : ℤ))

end

end A315461.P218345118769349507

namespace A315461

/-- `A008458(n)+A330025(n)-n` -/
def P218345118769349507.Spec : Prop :=
  ∀ n, P218345118769349507.a n = A315461 n

end A315461

/-! ## A315461.P5040298703217612075

`A330025(n)+A001068(A008574(n))`
-/

namespace A315461.P5040298703217612075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A001068 (A008574 n).toNat

end

end A315461.P5040298703217612075

namespace A315461

/-- `A330025(n)+A001068(A008574(n))` -/
def P5040298703217612075.Spec : Prop :=
  ∀ n, P5040298703217612075.a n = A315461 n

end A315461

/-! ## A315461.P10329601801464750032

`A005843(A005843(n))+A163812(n)+n`
-/

namespace A315461.P10329601801464750032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A005843 n).toNat + (A163812 n + (n : ℤ))

end

end A315461.P10329601801464750032

namespace A315461

/-- `A005843(A005843(n))+A163812(n)+n` -/
def P10329601801464750032.Spec : Prop :=
  ∀ n, P10329601801464750032.a n = A315461 n

end A315461

/-! ## A315461.P11022440601365395325

`2*A008706(n)-A313127(n)`
-/

namespace A315461.P11022440601365395325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313127 n

end

end A315461.P11022440601365395325

namespace A315461

/-- `2*A008706(n)-A313127(n)` -/
def P11022440601365395325.Spec : Prop :=
  ∀ n, P11022440601365395325.a n = A315461 n

end A315461

/-! ## A315461.P2181322493694828404

`A008458(n)+A008574(n)-A313127(n)`
-/

namespace A315461.P2181322493694828404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313127 n)

end

end A315461.P2181322493694828404

namespace A315461

/-- `A008458(n)+A008574(n)-A313127(n)` -/
def P2181322493694828404.Spec : Prop :=
  ∀ n, P2181322493694828404.a n = A315461 n

end A315461

/-! ## A315461.P5494389379095995721

`A074067(A313127(n))`
-/

namespace A315461.P5494389379095995721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313127 n).toNat

end

end A315461.P5494389379095995721

namespace A315461

/-- `A074067(A313127(n))` -/
def P5494389379095995721.Spec : Prop :=
  ∀ n, P5494389379095995721.a n = A315461 n

end A315461

/-!
# A315462: Coordination sequence Gal.6.339.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315462, the canonical program `A315462.P4447470605433644516` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315462 has offset 0).

The definition of A315462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2385 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315462.P16698176713387626800

`A313474(n)+A004396(n)`
-/

namespace A315462.P16698176713387626800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + A004396 n

end

end A315462.P16698176713387626800

namespace A315462

/-- `A313474(n)+A004396(n)` -/
def P16698176713387626800.Spec : Prop :=
  ∀ n, P16698176713387626800.a n = A315462 n

end A315462

/-! ## A315462.P17240091989327437816

`A315683(n)-∑[A022003(n)]`
-/

namespace A315462.P17240091989327437816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315462.P17240091989327437816

namespace A315462

/-- `A315683(n)-∑[A022003(n)]` -/
def P17240091989327437816.Spec : Prop :=
  ∀ n, P17240091989327437816.a n = A315462 n

end A315462

/-! ## A315462.P2815163700421231265

`A315683(n)-A002264(n+1)`
-/

namespace A315462.P2815163700421231265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - A002264 (n + 1)

end

end A315462.P2815163700421231265

namespace A315462

/-- `A315683(n)-A002264(n+1)` -/
def P2815163700421231265.Spec : Prop :=
  ∀ n, P2815163700421231265.a n = A315462 n

end A315462

/-! ## A315462.P12691944381814007314

`A004396(n)+A315683(n)-n`
-/

namespace A315462.P12691944381814007314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315683 n - (n : ℤ))

end

end A315462.P12691944381814007314

namespace A315462

/-- `A004396(n)+A315683(n)-n` -/
def P12691944381814007314.Spec : Prop :=
  ∀ n, P12691944381814007314.a n = A315462 n

end A315462

/-! ## A315462.P8648410479470592353

`A313717(n)+n-∑[A131735(n)]`
-/

namespace A315462.P8648410479470592353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315462.P8648410479470592353

namespace A315462

/-- `A313717(n)+n-∑[A131735(n)]` -/
def P8648410479470592353.Spec : Prop :=
  ∀ n, P8648410479470592353.a n = A315462 n

end A315462

/-! ## A315462.P4447470605433644516

`A128834(A004525(n))+A008706(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315462

/-- `A128834(A004525(n))+A008706(n)` -/
def P4447470605433644516.Spec : Prop :=
  ∀ n, P4447470605433644516.a n = A315462 n

theorem P4447470605433644516.correct : P4447470605433644516.Spec := by
  intro n
  simp only [A315462]

end A315462

/-! ## A315462.P10153800172706404823

`A163806(A004525(n))+A008587(n)`
-/

namespace A315462.P10153800172706404823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (A004525 n).toNat + A008587 n

end

end A315462.P10153800172706404823

namespace A315462

/-- `A163806(A004525(n))+A008587(n)` -/
def P10153800172706404823.Spec : Prop :=
  ∀ n, P10153800172706404823.a n = A315462 n

end A315462

/-! ## A315462.P7010910910023475607

`A313474(n)+A004525(A004773(n))`
-/

namespace A315462.P7010910910023475607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313474 n + A004525 (A004773 n).toNat

end

end A315462.P7010910910023475607

namespace A315462

/-- `A313474(n)+A004525(A004773(n))` -/
def P7010910910023475607.Spec : Prop :=
  ∀ n, P7010910910023475607.a n = A315462 n

end A315462

/-! ## A315462.P8624623474215989063

`A008576(n)+A315683(n)-A008486(n)`
-/

namespace A315462.P8624623474215989063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315683 n - A008486 n)

end

end A315462.P8624623474215989063

namespace A315462

/-- `A008576(n)+A315683(n)-A008486(n)` -/
def P8624623474215989063.Spec : Prop :=
  ∀ n, P8624623474215989063.a n = A315462 n

end A315462

/-! ## A315462.P1884556153450948087

`abs(A008592(n)-A313126(n))`
-/

namespace A315462.P1884556153450948087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313126 n|

end

end A315462.P1884556153450948087

namespace A315462

/-- `abs(A008592(n)-A313126(n))` -/
def P1884556153450948087.Spec : Prop :=
  ∀ n, P1884556153450948087.a n = A315462 n

end A315462

/-! ## A315462.P14732456711353417356

`floor(A010015(n)/A313126(n))`
-/

namespace A315462.P14732456711353417356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313126 n : ℚ)⌋

end

end A315462.P14732456711353417356

namespace A315462

/-- `floor(A010015(n)/A313126(n))` -/
def P14732456711353417356.Spec : Prop :=
  ∀ n, P14732456711353417356.a n = A315462 n

end A315462

/-! ## A315462.P8152259488663690003

`A008458(n)+A008574(n)-A313126(n)`
-/

namespace A315462.P8152259488663690003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313126 n)

end

end A315462.P8152259488663690003

namespace A315462

/-- `A008458(n)+A008574(n)-A313126(n)` -/
def P8152259488663690003.Spec : Prop :=
  ∀ n, P8152259488663690003.a n = A315462 n

end A315462

/-! ## A315462.P15088508585381758099

`A314108(n)+A134667(n)`
-/

namespace A315462.P15088508585381758099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314108 n + A134667 n

end

end A315462.P15088508585381758099

namespace A315462

/-- `A314108(n)+A134667(n)` -/
def P15088508585381758099.Spec : Prop :=
  ∀ n, P15088508585381758099.a n = A315462 n

end A315462

/-! ## A315462.P4709483369624435979

`A004525(A004396(n))+A315760(n)-n`
-/

namespace A315462.P4709483369624435979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A315760 n - (n : ℤ))

end

end A315462.P4709483369624435979

namespace A315462

/-- `A004525(A004396(n))+A315760(n)-n` -/
def P4709483369624435979.Spec : Prop :=
  ∀ n, P4709483369624435979.a n = A315462 n

end A315462

/-! ## A315462.P2875884226993222178

`A004396(A315395(n))+2*n`
-/

namespace A315462.P2875884226993222178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315395 n).toNat + (2 * n : ℤ)

end

end A315462.P2875884226993222178

namespace A315462

/-- `A004396(A315395(n))+2*n` -/
def P2875884226993222178.Spec : Prop :=
  ∀ n, P2875884226993222178.a n = A315462 n

end A315462

/-! ## A315462.P102563776972985919

`A068962(A315670(n))+3*n`
-/

namespace A315462.P102563776972985919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A315670 n).toNat + (3 * n : ℤ)

end

end A315462.P102563776972985919

namespace A315462

/-- `A068962(A315670(n))+3*n` -/
def P102563776972985919.Spec : Prop :=
  ∀ n, P102563776972985919.a n = A315462 n

end A315462

/-! ## A315462.P12420897854892664068

`A004396(n)+A004396(A315670(n))+n`
-/

namespace A315462.P12420897854892664068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A004396 (A315670 n).toNat + (n : ℤ))

end

end A315462.P12420897854892664068

namespace A315462

/-- `A004396(n)+A004396(A315670(n))+n` -/
def P12420897854892664068.Spec : Prop :=
  ∀ n, P12420897854892664068.a n = A315462 n

end A315462

/-! ## A315462.P5865963922184733838

`A074067(A313126(n))`
-/

namespace A315462.P5865963922184733838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313126 n).toNat

end

end A315462.P5865963922184733838

namespace A315462

/-- `A074067(A313126(n))` -/
def P5865963922184733838.Spec : Prop :=
  ∀ n, P5865963922184733838.a n = A315462 n

end A315462

/-!
# A315463: Coordination sequence Gal.5.113.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315463, the canonical program `A315463.P16900864329988193490` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315463 has offset 0).

The definition of A315463 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2349 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315463.P13934358616168340809

`A313477(n)+A004396(n)`
-/

namespace A315463.P13934358616168340809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313477 n + A004396 n

end

end A315463.P13934358616168340809

namespace A315463

/-- `A313477(n)+A004396(n)` -/
def P13934358616168340809.Spec : Prop :=
  ∀ n, P13934358616168340809.a n = A315463 n

end A315463

/-! ## A315463.P3789292092649561210

`A313477(n)+A002264(2*n+1)`
-/

namespace A315463.P3789292092649561210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313477 n + A002264 (2 * n + 1)

end

end A315463.P3789292092649561210

namespace A315463

/-- `A313477(n)+A002264(2*n+1)` -/
def P3789292092649561210.Spec : Prop :=
  ∀ n, P3789292092649561210.a n = A315463 n

end A315463

/-! ## A315463.P10782199894306988819

`A313683(n)+A004396(A004396(n))`
-/

namespace A315463.P10782199894306988819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313683 n + A004396 (A004396 n).toNat

end

end A315463.P10782199894306988819

namespace A315463

/-- `A313683(n)+A004396(A004396(n))` -/
def P10782199894306988819.Spec : Prop :=
  ∀ n, P10782199894306988819.a n = A315463 n

end A315463

/-! ## A315463.P8581261470221650853

`A313477(n)+A004525(A004773(n))`
-/

namespace A315463.P8581261470221650853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313477 n + A004525 (A004773 n).toNat

end

end A315463.P8581261470221650853

namespace A315463

/-- `A313477(n)+A004525(A004773(n))` -/
def P8581261470221650853.Spec : Prop :=
  ∀ n, P8581261470221650853.a n = A315463 n

end A315463

/-! ## A315463.P16900864329988193490

`A315256(n)+A004396(n-A004396(n))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315463

/-- `A315256(n)+A004396(n-A004396(n))` -/
def P16900864329988193490.Spec : Prop :=
  ∀ n, P16900864329988193490.a n = A315463 n

theorem P16900864329988193490.correct : P16900864329988193490.Spec := by
  intro n
  simp only [A315463]

end A315463

/-! ## A315463.P2720574771949075523

`A315680(n)-A004396(n-A004396(n))`
-/

namespace A315463.P2720574771949075523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315680 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315463.P2720574771949075523

namespace A315463

/-- `A315680(n)-A004396(n-A004396(n))` -/
def P2720574771949075523.Spec : Prop :=
  ∀ n, P2720574771949075523.a n = A315463 n

end A315463

/-! ## A315463.P1100881799373637210

`abs(A008592(n)-A313125(n))`
-/

namespace A315463.P1100881799373637210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313125 n|

end

end A315463.P1100881799373637210

namespace A315463

/-- `abs(A008592(n)-A313125(n))` -/
def P1100881799373637210.Spec : Prop :=
  ∀ n, P1100881799373637210.a n = A315463 n

end A315463

/-! ## A315463.P15806450236318616968

`2*A008706(n)-A313125(n)`
-/

namespace A315463.P15806450236318616968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313125 n

end

end A315463.P15806450236318616968

namespace A315463

/-- `2*A008706(n)-A313125(n)` -/
def P15806450236318616968.Spec : Prop :=
  ∀ n, P15806450236318616968.a n = A315463 n

end A315463

/-! ## A315463.P2204176243191421199

`A008458(n)+A008574(n)-A313125(n)`
-/

namespace A315463.P2204176243191421199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313125 n)

end

end A315463.P2204176243191421199

namespace A315463

/-- `A008458(n)+A008574(n)-A313125(n)` -/
def P2204176243191421199.Spec : Prop :=
  ∀ n, P2204176243191421199.a n = A315463 n

end A315463

/-! ## A315463.P2356811463769051241

`A313125(n)+A005843(A008706(n)-A313125(n))`
-/

namespace A315463.P2356811463769051241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313125 n + A005843 (A008706 n - A313125 n).toNat

end

end A315463.P2356811463769051241

namespace A315463

/-- `A313125(n)+A005843(A008706(n)-A313125(n))` -/
def P2356811463769051241.Spec : Prop :=
  ∀ n, P2356811463769051241.a n = A315463 n

end A315463

/-! ## A315463.P6484887128920494186

`A004396(A315398(n))+2*n`
-/

namespace A315463.P6484887128920494186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315398 n).toNat + (2 * n : ℤ)

end

end A315463.P6484887128920494186

namespace A315463

/-- `A004396(A315398(n))+2*n` -/
def P6484887128920494186.Spec : Prop :=
  ∀ n, P6484887128920494186.a n = A315463 n

end A315463

/-! ## A315463.P11452203340940682557

`A005843(n)+A004396(A315398(n))`
-/

namespace A315463.P11452203340940682557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315398 n).toNat

end

end A315463.P11452203340940682557

namespace A315463

/-- `A005843(n)+A004396(A315398(n))` -/
def P11452203340940682557.Spec : Prop :=
  ∀ n, P11452203340940682557.a n = A315463 n

end A315463

/-! ## A315463.P14189357794656208120

`A005843(A008706(n))-A313125(n)`
-/

namespace A315463.P14189357794656208120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313125 n

end

end A315463.P14189357794656208120

namespace A315463

/-- `A005843(A008706(n))-A313125(n)` -/
def P14189357794656208120.Spec : Prop :=
  ∀ n, P14189357794656208120.a n = A315463 n

end A315463

/-! ## A315463.P3076508341629987629

`A310421(A008574(n))/2-A310421(n)`
-/

namespace A315463.P3076508341629987629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310421 (A008574 n).toNat : ℚ) / 2 - (A310421 n : ℚ)

end

end A315463.P3076508341629987629

namespace A315463

/-- `A310421(A008574(n))/2-A310421(n)` -/
def P3076508341629987629.Spec : Prop :=
  ∀ n, P3076508341629987629.a n = (A315463 n : ℚ)

end A315463

/-!
# A315464: Coordination sequence Gal.6.346.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315464, the canonical program `A315464.P12581309012109130076` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315464 has offset 0).

The definition of A315464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315464.P4830752039814826

`abs(A008592(n)-A313124(n))`
-/

namespace A315464.P4830752039814826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313124 n|

end

end A315464.P4830752039814826

namespace A315464

/-- `abs(A008592(n)-A313124(n))` -/
def P4830752039814826.Spec : Prop :=
  ∀ n, P4830752039814826.a n = A315464 n

end A315464

/-! ## A315464.P594666467174628374

`2*A008706(n)-A313124(n)`
-/

namespace A315464.P594666467174628374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313124 n

end

end A315464.P594666467174628374

namespace A315464

/-- `2*A008706(n)-A313124(n)` -/
def P594666467174628374.Spec : Prop :=
  ∀ n, P594666467174628374.a n = A315464 n

end A315464

/-! ## A315464.P601077871966679517

`A135042(2*n+1)-A313124(n)`
-/

namespace A315464.P601077871966679517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313124 n

end

end A315464.P601077871966679517

namespace A315464

/-- `A135042(2*n+1)-A313124(n)` -/
def P601077871966679517.Spec : Prop :=
  ∀ n, P601077871966679517.a n = A315464 n

end A315464

/-! ## A315464.P6095255135619493109

`A008458(n)+A008574(n)-A313124(n)`
-/

namespace A315464.P6095255135619493109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313124 n)

end

end A315464.P6095255135619493109

namespace A315464

/-- `A008458(n)+A008574(n)-A313124(n)` -/
def P6095255135619493109.Spec : Prop :=
  ∀ n, P6095255135619493109.a n = A315464 n

end A315464

/-! ## A315464.P5490425141221475421

`A313124(n)+A005843(A008706(n)-A313124(n))`
-/

namespace A315464.P5490425141221475421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313124 n + A005843 (A008706 n - A313124 n).toNat

end

end A315464.P5490425141221475421

namespace A315464

/-- `A313124(n)+A005843(A008706(n)-A313124(n))` -/
def P5490425141221475421.Spec : Prop :=
  ∀ n, P5490425141221475421.a n = A315464 n

end A315464

/-! ## A315464.P14041920153918598427

`(A315633(n)+A315329(n))/2`
-/

namespace A315464.P14041920153918598427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315633 n + A315329 n : ℚ) / 2

end

end A315464.P14041920153918598427

namespace A315464

/-- `(A315633(n)+A315329(n))/2` -/
def P14041920153918598427.Spec : Prop :=
  ∀ n, P14041920153918598427.a n = (A315464 n : ℚ)

end A315464

/-! ## A315464.P14525710951384535512

`(A315756(n)+A315177(n))/2`
-/

namespace A315464.P14525710951384535512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315756 n + A315177 n : ℚ) / 2

end

end A315464.P14525710951384535512

namespace A315464

/-- `(A315756(n)+A315177(n))/2` -/
def P14525710951384535512.Spec : Prop :=
  ∀ n, P14525710951384535512.a n = (A315464 n : ℚ)

end A315464

/-! ## A315464.P12581309012109130076

`A315177(n)+A004525(A315756(n)-A315177(n))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A315464

/-- `A315177(n)+A004525(A315756(n)-A315177(n))` -/
def P12581309012109130076.Spec : Prop :=
  ∀ n, P12581309012109130076.a n = A315464 n

theorem P12581309012109130076.correct : P12581309012109130076.Spec := by
  intro n
  simp only [A315464]

end A315464

/-! ## A315464.P16145633941584011933

`A005843(A008706(n))-A313124(n)`
-/

namespace A315464.P16145633941584011933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313124 n

end

end A315464.P16145633941584011933

namespace A315464

/-- `A005843(A008706(n))-A313124(n)` -/
def P16145633941584011933.Spec : Prop :=
  ∀ n, P16145633941584011933.a n = A315464 n

end A315464

/-! ## A315464.P17102896430518720662

`A065502(A008458(n))-A313124(n)`
-/

namespace A315464.P17102896430518720662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313124 n

end

end A315464.P17102896430518720662

namespace A315464

/-- `A065502(A008458(n))-A313124(n)` -/
def P17102896430518720662.Spec : Prop :=
  ∀ n, P17102896430518720662.a n = A315464 n

end A315464

/-! ## A315464.P9236359669987703974

`A004525(A315466(n)+A315316(n))`
-/

namespace A315464.P9236359669987703974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315466 n + A315316 n).toNat

end

end A315464.P9236359669987703974

namespace A315464

/-- `A004525(A315466(n)+A315316(n))` -/
def P9236359669987703974.Spec : Prop :=
  ∀ n, P9236359669987703974.a n = A315464 n

end A315464

/-! ## A315464.P17892921332433720292

`A004525(A315756(n)+A315177(n))`
-/

namespace A315464.P17892921332433720292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315756 n + A315177 n).toNat

end

end A315464.P17892921332433720292

namespace A315464

/-- `A004525(A315756(n)+A315177(n))` -/
def P17892921332433720292.Spec : Prop :=
  ∀ n, P17892921332433720292.a n = A315464 n

end A315464

/-! ## A315464.P892316550841300558

`A004525(A315633(n)+A315329(n))`
-/

namespace A315464.P892316550841300558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315633 n + A315329 n).toNat

end

end A315464.P892316550841300558

namespace A315464

/-- `A004525(A315633(n)+A315329(n))` -/
def P892316550841300558.Spec : Prop :=
  ∀ n, P892316550841300558.a n = A315464 n

end A315464

/-! ## A315464.P6409630979163263998

`A310420(A008574(n))/2-A310420(n)`
-/

namespace A315464.P6409630979163263998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310420 (A008574 n).toNat : ℚ) / 2 - (A310420 n : ℚ)

end

end A315464.P6409630979163263998

namespace A315464

/-- `A310420(A008574(n))/2-A310420(n)` -/
def P6409630979163263998.Spec : Prop :=
  ∀ n, P6409630979163263998.a n = (A315464 n : ℚ)

end A315464

/-! ## A315464.P15490884942712505220

`A233583(A017281(n))-A313124(n)`
-/

namespace A315464.P15490884942712505220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313124 n

end

end A315464.P15490884942712505220

namespace A315464

/-- `A233583(A017281(n))-A313124(n)` -/
def P15490884942712505220.Spec : Prop :=
  ∀ n, P15490884942712505220.a n = A315464 n

end A315464

/-!
# A315465: Coordination sequence Gal.6.157.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315465, the canonical program `A315465.P8648594998862142925` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315465 has offset 0).

The definition of A315465 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315465.P10355525325757288465

`A313680(n)+A004525(n)`
-/

namespace A315465.P10355525325757288465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + A004525 n

end

end A315465.P10355525325757288465

namespace A315465

/-- `A313680(n)+A004525(n)` -/
def P10355525325757288465.Spec : Prop :=
  ∀ n, P10355525325757288465.a n = A315465 n

end A315465

/-! ## A315465.P8648594998862142925

`abs(A008592(n)-A313119(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315465

/-- `abs(A008592(n)-A313119(n))` -/
def P8648594998862142925.Spec : Prop :=
  ∀ n, P8648594998862142925.a n = A315465 n

theorem P8648594998862142925.correct : P8648594998862142925.Spec := by
  intro n
  simp only [A315465]

end A315465

/-! ## A315465.P4939164651414339505

`floor(A010015(n)/A313119(n))`
-/

namespace A315465.P4939164651414339505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010015 n : ℚ) / (A313119 n : ℚ)⌋

end

end A315465.P4939164651414339505

namespace A315465

/-- `floor(A010015(n)/A313119(n))` -/
def P4939164651414339505.Spec : Prop :=
  ∀ n, P4939164651414339505.a n = A315465 n

end A315465

/-! ## A315465.P5892717416697846408

`A313680(n)+Δ[A054925(n)]`
-/

namespace A315465.P5892717416697846408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313680 n + (f1 (n + 1) - f1 n)

end

end A315465.P5892717416697846408

namespace A315465

/-- `A313680(n)+Δ[A054925(n)]` -/
def P5892717416697846408.Spec : Prop :=
  ∀ n, P5892717416697846408.a n = A315465 n

end A315465

/-! ## A315465.P3799802877184791007

`A315253(n)+A002264(n+1)`
-/

namespace A315465.P3799802877184791007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315253 n + A002264 (n + 1)

end

end A315465.P3799802877184791007

namespace A315465

/-- `A315253(n)+A002264(n+1)` -/
def P3799802877184791007.Spec : Prop :=
  ∀ n, P3799802877184791007.a n = A315465 n

end A315465

/-! ## A315465.P4324392161112293819

`A315688(n)-A002264(n+1)`
-/

namespace A315465.P4324392161112293819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315688 n - A002264 (n + 1)

end

end A315465.P4324392161112293819

namespace A315465

/-- `A315688(n)-A002264(n+1)` -/
def P4324392161112293819.Spec : Prop :=
  ∀ n, P4324392161112293819.a n = A315465 n

end A315465

/-! ## A315465.P7468755967420875887

`A315253(n)+n-A004396(n)`
-/

namespace A315465.P7468755967420875887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315253 n + ((n : ℤ) - A004396 n)

end

end A315465.P7468755967420875887

namespace A315465

/-- `A315253(n)+n-A004396(n)` -/
def P7468755967420875887.Spec : Prop :=
  ∀ n, P7468755967420875887.a n = A315465 n

end A315465

/-! ## A315465.P17651692897817630841

`A008458(n)+A008574(n)-A313119(n)`
-/

namespace A315465.P17651692897817630841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313119 n)

end

end A315465.P17651692897817630841

namespace A315465

/-- `A008458(n)+A008574(n)-A313119(n)` -/
def P17651692897817630841.Spec : Prop :=
  ∀ n, P17651692897817630841.a n = A315465 n

end A315465

/-! ## A315465.P9112362228273956288

`A008486(n)+A315253(n)-A008576(n)`
-/

namespace A315465.P9112362228273956288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315253 n - A008576 n)

end

end A315465.P9112362228273956288

namespace A315465

/-- `A008486(n)+A315253(n)-A008576(n)` -/
def P9112362228273956288.Spec : Prop :=
  ∀ n, P9112362228273956288.a n = A315465 n

end A315465

/-! ## A315465.P11496113739159437952

`A008576(n)+A315688(n)-A008486(n)`
-/

namespace A315465.P11496113739159437952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315688 n - A008486 n)

end

end A315465.P11496113739159437952

namespace A315465

/-- `A008576(n)+A315688(n)-A008486(n)` -/
def P11496113739159437952.Spec : Prop :=
  ∀ n, P11496113739159437952.a n = A315465 n

end A315465

/-! ## A315465.P9592128757769188153

`A315683(n)-A004396(n-A004525(n))`
-/

namespace A315465.P9592128757769188153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - A004396 ((n : ℤ) - A004525 n).toNat

end

end A315465.P9592128757769188153

namespace A315465

/-- `A315683(n)-A004396(n-A004525(n))` -/
def P9592128757769188153.Spec : Prop :=
  ∀ n, P9592128757769188153.a n = A315465 n

end A315465

/-! ## A315465.P13963379708510071013

`A128834(A004525(A128834(n)+n))+A008706(n)`
-/

namespace A315465.P13963379708510071013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 (A004525 (A128834 n + (n : ℤ)).toNat).toNat + A008706 n

end

end A315465.P13963379708510071013

namespace A315465

/-- `A128834(A004525(A128834(n)+n))+A008706(n)` -/
def P13963379708510071013.Spec : Prop :=
  ∀ n, P13963379708510071013.a n = A315465 n

end A315465

/-! ## A315465.P8915888101946593550

`A163806(A004525(A163806(n)+n))+A008587(n)`
-/

namespace A315465.P8915888101946593550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163806 (A004525 (A163806 n + (n : ℤ)).toNat).toNat + A008587 n

end

end A315465.P8915888101946593550

namespace A315465

/-- `A163806(A004525(A163806(n)+n))+A008587(n)` -/
def P8915888101946593550.Spec : Prop :=
  ∀ n, P8915888101946593550.a n = A315465 n

end A315465

/-! ## A315465.P10415554338010182605

`A004525(n)+A315515(n)-A004396(n)`
-/

namespace A315465.P10415554338010182605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315515 n - A004396 n)

end

end A315465.P10415554338010182605

namespace A315465

/-- `A004525(n)+A315515(n)-A004396(n)` -/
def P10415554338010182605.Spec : Prop :=
  ∀ n, P10415554338010182605.a n = A315465 n

end A315465

/-! ## A315465.P11806529312994900803

`A315741(n)-∑[A021913(n)]`
-/

namespace A315465.P11806529312994900803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315465.P11806529312994900803

namespace A315465

/-- `A315741(n)-∑[A021913(n)]` -/
def P11806529312994900803.Spec : Prop :=
  ∀ n, P11806529312994900803.a n = A315465 n

end A315465

/-! ## A315465.P5742230937066491294

`A315741(n)-Δ[A011848(n)]`
-/

namespace A315465.P5742230937066491294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315741 n - (f1 (n + 1) - f1 n)

end

end A315465.P5742230937066491294

namespace A315465

/-- `A315741(n)-Δ[A011848(n)]` -/
def P5742230937066491294.Spec : Prop :=
  ∀ n, P5742230937066491294.a n = A315465 n

end A315465

/-! ## A315465.P4929859948695598740

`A004525(n)+A315741(n)-n`
-/

namespace A315465.P4929859948695598740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315741 n - (n : ℤ))

end

end A315465.P4929859948695598740

namespace A315465

/-- `A004525(n)+A315741(n)-n` -/
def P4929859948695598740.Spec : Prop :=
  ∀ n, P4929859948695598740.a n = A315465 n

end A315465

/-! ## A315465.P10103877814546707521

`A004396(A004525(n))+A315760(n)-n`
-/

namespace A315465.P10103877814546707521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315760 n - (n : ℤ))

end

end A315465.P10103877814546707521

namespace A315465

/-- `A004396(A004525(n))+A315760(n)-n` -/
def P10103877814546707521.Spec : Prop :=
  ∀ n, P10103877814546707521.a n = A315465 n

end A315465

/-! ## A315465.P14141882205826260521

`A074067(A313119(n))`
-/

namespace A315465.P14141882205826260521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074067 (A313119 n).toNat

end

end A315465.P14141882205826260521

namespace A315465

/-- `A074067(A313119(n))` -/
def P14141882205826260521.Spec : Prop :=
  ∀ n, P14141882205826260521.a n = A315465 n

end A315465

/-! ## A315465.P6899933027171966586

`A004396(A315741(n)+A004525(n))+n`
-/

namespace A315465.P6899933027171966586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315741 n + A004525 n).toNat + (n : ℤ)

end

end A315465.P6899933027171966586

namespace A315465

/-- `A004396(A315741(n)+A004525(n))+n` -/
def P6899933027171966586.Spec : Prop :=
  ∀ n, P6899933027171966586.a n = A315465 n

end A315465

/-!
# A315466: Coordination sequence Gal.6.158.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315466, the canonical program `A315466.P6755861175603104134` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315466 has offset 0).

The definition of A315466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315466.P6755861175603104134

`abs(A008592(n)-A313118(n))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A315466

/-- `abs(A008592(n)-A313118(n))` -/
def P6755861175603104134.Spec : Prop :=
  ∀ n, P6755861175603104134.a n = A315466 n

theorem P6755861175603104134.correct : P6755861175603104134.Spec := by
  intro n
  simp only [A315466]

end A315466

/-! ## A315466.P690022767240634847

`2*A008706(n)-A313118(n)`
-/

namespace A315466.P690022767240634847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313118 n

end

end A315466.P690022767240634847

namespace A315466

/-- `2*A008706(n)-A313118(n)` -/
def P690022767240634847.Spec : Prop :=
  ∀ n, P690022767240634847.a n = A315466 n

end A315466

/-! ## A315466.P5145402870077998055

`A135042(2*n+1)-A313118(n)`
-/

namespace A315466.P5145402870077998055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313118 n

end

end A315466.P5145402870077998055

namespace A315466

/-- `A135042(2*n+1)-A313118(n)` -/
def P5145402870077998055.Spec : Prop :=
  ∀ n, P5145402870077998055.a n = A315466 n

end A315466

/-! ## A315466.P16682983930176434870

`A008458(n)+A008574(n)-A313118(n)`
-/

namespace A315466.P16682983930176434870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313118 n)

end

end A315466.P16682983930176434870

namespace A315466

/-- `A008458(n)+A008574(n)-A313118(n)` -/
def P16682983930176434870.Spec : Prop :=
  ∀ n, P16682983930176434870.a n = A315466 n

end A315466

/-! ## A315466.P16406560785392662604

`A315509(n)-Δ[A011864(n)]`
-/

namespace A315466.P16406560785392662604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315509 n - (f1 (n + 1) - f1 n)

end

end A315466.P16406560785392662604

namespace A315466

/-- `A315509(n)-Δ[A011864(n)]` -/
def P16406560785392662604.Spec : Prop :=
  ∀ n, P16406560785392662604.a n = A315466 n

end A315466

/-! ## A315466.P9097861291251517811

`A065502(A315450(n))/2+n`
-/

namespace A315466.P9097861291251517811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065502 (A315450 n).toNat : ℚ) / 2 + (n : ℚ)

end

end A315466.P9097861291251517811

namespace A315466

/-- `A065502(A315450(n))/2+n` -/
def P9097861291251517811.Spec : Prop :=
  ∀ n, P9097861291251517811.a n = (A315466 n : ℚ)

end A315466

/-! ## A315466.P8970640558973539461

`A005843(A008706(n))-A313118(n)`
-/

namespace A315466.P8970640558973539461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313118 n

end

end A315466.P8970640558973539461

namespace A315466

/-- `A005843(A008706(n))-A313118(n)` -/
def P8970640558973539461.Spec : Prop :=
  ∀ n, P8970640558973539461.a n = A315466 n

end A315466

/-! ## A315466.P17040804706083782007

`A093545(A008458(n))-A313118(n)`
-/

namespace A315466.P17040804706083782007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093545 (A008458 n).toNat - A313118 n

end

end A315466.P17040804706083782007

namespace A315466

/-- `A093545(A008458(n))-A313118(n)` -/
def P17040804706083782007.Spec : Prop :=
  ∀ n, P17040804706083782007.a n = A315466 n

end A315466

/-! ## A315466.P6810100629969845927

`A233583(A017281(n))-A313118(n)`
-/

namespace A315466.P6810100629969845927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313118 n

end

end A315466.P6810100629969845927

namespace A315466

/-- `A233583(A017281(n))-A313118(n)` -/
def P6810100629969845927.Spec : Prop :=
  ∀ n, P6810100629969845927.a n = A315466 n

end A315466

/-!
# A315467: Coordination sequence Gal.6.159.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315467, the canonical program `A315467.P13448828790190736749` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315467 has offset 0).

The definition of A315467 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2311 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315467.P17025511736219044762

`A314668(n)+n`
-/

namespace A315467.P17025511736219044762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314668 n + (n : ℤ)

end

end A315467.P17025511736219044762

namespace A315467

/-- `A314668(n)+n` -/
def P17025511736219044762.Spec : Prop :=
  ∀ n, P17025511736219044762.a n = A315467 n

end A315467

/-! ## A315467.P13448828790190736749

`A313684(n)+A004525(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315467

/-- `A313684(n)+A004525(n)` -/
def P13448828790190736749.Spec : Prop :=
  ∀ n, P13448828790190736749.a n = A315467 n

theorem P13448828790190736749.correct : P13448828790190736749.Spec := by
  intro n
  simp only [A315467]

end A315467

/-! ## A315467.P3868420324096604553

`A313912(n)+A128834(n)`
-/

namespace A315467.P3868420324096604553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313912 n + A128834 n

end

end A315467.P3868420324096604553

namespace A315467

/-- `A313912(n)+A128834(n)` -/
def P3868420324096604553.Spec : Prop :=
  ∀ n, P3868420324096604553.a n = A315467 n

end A315467

/-! ## A315467.P13904929876508437706

`abs(A008592(n)-A313117(n))`
-/

namespace A315467.P13904929876508437706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313117 n|

end

end A315467.P13904929876508437706

namespace A315467

/-- `abs(A008592(n)-A313117(n))` -/
def P13904929876508437706.Spec : Prop :=
  ∀ n, P13904929876508437706.a n = A315467 n

end A315467

/-! ## A315467.P4600731923573780130

`A313912(n)-A010892(n+2)`
-/

namespace A315467.P4600731923573780130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313912 n - A010892 (n + 2)

end

end A315467.P4600731923573780130

namespace A315467

/-- `A313912(n)-A010892(n+2)` -/
def P4600731923573780130.Spec : Prop :=
  ∀ n, P4600731923573780130.a n = A315467 n

end A315467

/-! ## A315467.P18156658005609539937

`A008458(n)+A008574(n)-A313117(n)`
-/

namespace A315467.P18156658005609539937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313117 n)

end

end A315467.P18156658005609539937

namespace A315467

/-- `A008458(n)+A008574(n)-A313117(n)` -/
def P18156658005609539937.Spec : Prop :=
  ∀ n, P18156658005609539937.a n = A315467 n

end A315467

/-! ## A315467.P1215171246168007856

`A315683(n)-A004525(n-A004396(n))`
-/

namespace A315467.P1215171246168007856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315683 n - A004525 ((n : ℤ) - A004396 n).toNat

end

end A315467.P1215171246168007856

namespace A315467

/-- `A315683(n)-A004525(n-A004396(n))` -/
def P1215171246168007856.Spec : Prop :=
  ∀ n, P1215171246168007856.a n = A315467 n

end A315467

/-! ## A315467.P728414578533910747

`A004525(A313474(n))+3*n`
-/

namespace A315467.P728414578533910747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313474 n).toNat + (3 * n : ℤ)

end

end A315467.P728414578533910747

namespace A315467

/-- `A004525(A313474(n))+3*n` -/
def P728414578533910747.Spec : Prop :=
  ∀ n, P728414578533910747.a n = A315467 n

end A315467

/-! ## A315467.P9121584488344669497

`A004525(A314677(n))+3*n`
-/

namespace A315467.P9121584488344669497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314677 n).toNat + (3 * n : ℤ)

end

end A315467.P9121584488344669497

namespace A315467

/-- `A004525(A314677(n))+3*n` -/
def P9121584488344669497.Spec : Prop :=
  ∀ n, P9121584488344669497.a n = A315467 n

end A315467

/-! ## A315467.P3194149071611099402

`A004396(A004525(n))+A315488(n)-A004525(n)`
-/

namespace A315467.P3194149071611099402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A315488 n - A004525 n)

end

end A315467.P3194149071611099402

namespace A315467

/-- `A004396(A004525(n))+A315488(n)-A004525(n)` -/
def P3194149071611099402.Spec : Prop :=
  ∀ n, P3194149071611099402.a n = A315467 n

end A315467

/-! ## A315467.P12594746978569761321

`A315689(n)-A002264(n+1)`
-/

namespace A315467.P12594746978569761321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315689 n - A002264 (n + 1)

end

end A315467.P12594746978569761321

namespace A315467

/-- `A315689(n)-A002264(n+1)` -/
def P12594746978569761321.Spec : Prop :=
  ∀ n, P12594746978569761321.a n = A315467 n

end A315467

/-! ## A315467.P42529739373554463

`A315689(n)-A042965(n+1)+n`
-/

namespace A315467.P42529739373554463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315689 n - A042965 (n + 1) + (n : ℤ)

end

end A315467.P42529739373554463

namespace A315467

/-- `A315689(n)-A042965(n+1)+n` -/
def P42529739373554463.Spec : Prop :=
  ∀ n, P42529739373554463.a n = A315467 n

end A315467

/-! ## A315467.P13970874890166320732

`A008576(n)+A315689(n)-A008486(n)`
-/

namespace A315467.P13970874890166320732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315689 n - A008486 n)

end

end A315467.P13970874890166320732

namespace A315467

/-- `A008576(n)+A315689(n)-A008486(n)` -/
def P13970874890166320732.Spec : Prop :=
  ∀ n, P13970874890166320732.a n = A315467 n

end A315467

/-! ## A315467.P4642981359212709310

`A004525(n)+A315744(n)-n`
-/

namespace A315467.P4642981359212709310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315744 n - (n : ℤ))

end

end A315467.P4642981359212709310

namespace A315467

/-- `A004525(n)+A315744(n)-n` -/
def P4642981359212709310.Spec : Prop :=
  ∀ n, P4642981359212709310.a n = A315467 n

end A315467

/-! ## A315467.P17889134394975090166

`A315744(n)-A047273(n+1)+n`
-/

namespace A315467.P17889134394975090166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315744 n - A047273 (n + 1) + (n : ℤ)

end

end A315467.P17889134394975090166

namespace A315467

/-- `A315744(n)-A047273(n+1)+n` -/
def P17889134394975090166.Spec : Prop :=
  ∀ n, P17889134394975090166.a n = A315467 n

end A315467

/-! ## A315467.P5058017701616031965

`abs(A008593(n)-A314254(n))`
-/

namespace A315467.P5058017701616031965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A314254 n|

end

end A315467.P5058017701616031965

namespace A315467

/-- `abs(A008593(n)-A314254(n))` -/
def P5058017701616031965.Spec : Prop :=
  ∀ n, P5058017701616031965.a n = A315467 n

end A315467

/-! ## A315467.P12933780029359607475

`A004525(A312890(2*n))+n`
-/

namespace A315467.P12933780029359607475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A312890 (2 * n)).toNat + (n : ℤ)

end

end A315467.P12933780029359607475

namespace A315467

/-- `A004525(A312890(2*n))+n` -/
def P12933780029359607475.Spec : Prop :=
  ∀ n, P12933780029359607475.a n = A315467 n

end A315467

/-!
# A315468: Coordination sequence Gal.5.300.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315468, the canonical program `A315468.P18044790226856226141` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315468 has offset 0).

The definition of A315468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2281 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315468.P9623019340869795646

`A314670(n)+n`
-/

namespace A315468.P9623019340869795646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + (n : ℤ)

end

end A315468.P9623019340869795646

namespace A315468

/-- `A314670(n)+n` -/
def P9623019340869795646.Spec : Prop :=
  ∀ n, P9623019340869795646.a n = A315468 n

end A315468

/-! ## A315468.P18044790226856226141

`A314972(n)+A253262(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315468

/-- `A314972(n)+A253262(n)` -/
def P18044790226856226141.Spec : Prop :=
  ∀ n, P18044790226856226141.a n = A315468 n

theorem P18044790226856226141.correct : P18044790226856226141.Spec := by
  intro n
  simp only [A315468]

end A315468

/-! ## A315468.P14618569982967882015

`A330025(n)+A313752(n)`
-/

namespace A315468.P14618569982967882015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 n + A313752 n

end

end A315468.P14618569982967882015

namespace A315468

/-- `A330025(n)+A313752(n)` -/
def P14618569982967882015.Spec : Prop :=
  ∀ n, P14618569982967882015.a n = A315468 n

end A315468

/-! ## A315468.P1982761492080714272

`(A315171(n)+A008458(n))/2`
-/

namespace A315468.P1982761492080714272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315171 n + A008458 n : ℚ) / 2

end

end A315468.P1982761492080714272

namespace A315468

/-- `(A315171(n)+A008458(n))/2` -/
def P1982761492080714272.Spec : Prop :=
  ∀ n, P1982761492080714272.a n = (A315468 n : ℚ)

end A315468

/-! ## A315468.P11377598212082019848

`A311289(n)+A330025(n)+n`
-/

namespace A315468.P11377598212082019848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311289 n + (A330025 n + (n : ℤ))

end

end A315468.P11377598212082019848

namespace A315468

/-- `A311289(n)+A330025(n)+n` -/
def P11377598212082019848.Spec : Prop :=
  ∀ n, P11377598212082019848.a n = A315468 n

end A315468

/-! ## A315468.P7013795176072669889

`A005843(n)-(n-A314670(n))`
-/

namespace A315468.P7013795176072669889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A314670 n)

end

end A315468.P7013795176072669889

namespace A315468

/-- `A005843(n)-(n-A314670(n))` -/
def P7013795176072669889.Spec : Prop :=
  ∀ n, P7013795176072669889.a n = A315468 n

end A315468

/-! ## A315468.P15396260188476682066

`Δ[A000290(n)]-n-(1-A314670(n))`
-/

namespace A315468.P15396260188476682066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) - (1 - A314670 n)

end

end A315468.P15396260188476682066

namespace A315468

/-- `Δ[A000290(n)]-n-(1-A314670(n))` -/
def P15396260188476682066.Spec : Prop :=
  ∀ n, P15396260188476682066.a n = A315468 n

end A315468

/-! ## A315468.P7165824844654006206

`A330025(A330025(n)+n)+A313782(n)`
-/

namespace A315468.P7165824844654006206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A330025 n + (n : ℤ)).toNat + A313782 n

end

end A315468.P7165824844654006206

namespace A315468

/-- `A330025(A330025(n)+n)+A313782(n)` -/
def P7165824844654006206.Spec : Prop :=
  ∀ n, P7165824844654006206.a n = A315468 n

end A315468

/-! ## A315468.P13342107413404714475

`A008458(n)+A008574(n)-A313116(n)`
-/

namespace A315468.P13342107413404714475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313116 n)

end

end A315468.P13342107413404714475

namespace A315468

/-- `A008458(n)+A008574(n)-A313116(n)` -/
def P13342107413404714475.Spec : Prop :=
  ∀ n, P13342107413404714475.a n = A315468 n

end A315468

/-! ## A315468.P8709764463350679577

`A315679(n)-A330025(n-A330025(n))`
-/

namespace A315468.P8709764463350679577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315679 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315468.P8709764463350679577

namespace A315468

/-- `A315679(n)-A330025(n-A330025(n))` -/
def P8709764463350679577.Spec : Prop :=
  ∀ n, P8709764463350679577.a n = A315468 n

end A315468

/-! ## A315468.P17690526843691619999

`A005843(n)+A005843(A008574(n))-A313116(n)`
-/

namespace A315468.P17690526843691619999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313116 n)

end

end A315468.P17690526843691619999

namespace A315468

/-- `A005843(n)+A005843(A008574(n))-A313116(n)` -/
def P17690526843691619999.Spec : Prop :=
  ∀ n, P17690526843691619999.a n = A315468 n

end A315468

/-! ## A315468.P5806050915286200698

`A315518(n)-A047263(n+1)+n`
-/

namespace A315468.P5806050915286200698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315518 n - A047263 (n + 1) + (n : ℤ)

end

end A315468.P5806050915286200698

namespace A315468

/-- `A315518(n)-A047263(n+1)+n` -/
def P5806050915286200698.Spec : Prop :=
  ∀ n, P5806050915286200698.a n = A315468 n

end A315468

/-! ## A315468.P17209942044895161492

`A315477(n)+n-A151988(n)`
-/

namespace A315468.P17209942044895161492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315477 n + ((n : ℤ) - A151988 n)

end

end A315468.P17209942044895161492

namespace A315468

/-- `A315477(n)+n-A151988(n)` -/
def P17209942044895161492.Spec : Prop :=
  ∀ n, P17209942044895161492.a n = A315468 n

end A315468

/-! ## A315468.P16363927064158658865

`A315698(n)-A047299(n+1)+n`
-/

namespace A315468.P16363927064158658865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315698 n - A047299 (n + 1) + (n : ℤ)

end

end A315468.P16363927064158658865

namespace A315468

/-- `A315698(n)-A047299(n+1)+n` -/
def P16363927064158658865.Spec : Prop :=
  ∀ n, P16363927064158658865.a n = A315468 n

end A315468

/-! ## A315468.P9760511281427399181

`A315761(n)-A047486(n+1)+n`
-/

namespace A315468.P9760511281427399181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315761 n - A047486 (n + 1) + (n : ℤ)

end

end A315468.P9760511281427399181

namespace A315468

/-- `A315761(n)-A047486(n+1)+n` -/
def P9760511281427399181.Spec : Prop :=
  ∀ n, P9760511281427399181.a n = A315468 n

end A315468

/-! ## A315468.P3178583767595380980

`A004396(A315255(n))+2*n`
-/

namespace A315468.P3178583767595380980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315255 n).toNat + (2 * n : ℤ)

end

end A315468.P3178583767595380980

namespace A315468

/-- `A004396(A315255(n))+2*n` -/
def P3178583767595380980.Spec : Prop :=
  ∀ n, P3178583767595380980.a n = A315468 n

end A315468

/-! ## A315468.P7638586859845605665

`A005843(A008574(n)+n)-A313116(n)`
-/

namespace A315468.P7638586859845605665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313116 n

end

end A315468.P7638586859845605665

namespace A315468

/-- `A005843(A008574(n)+n)-A313116(n)` -/
def P7638586859845605665.Spec : Prop :=
  ∀ n, P7638586859845605665.a n = A315468 n

end A315468

/-! ## A315468.P114627443853648873

`A005843(A008458(n))-(A314252(n)+n)`
-/

namespace A315468.P114627443853648873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n).toNat - (A314252 n + (n : ℤ))

end

end A315468.P114627443853648873

namespace A315468

/-- `A005843(A008458(n))-(A314252(n)+n)` -/
def P114627443853648873.Spec : Prop :=
  ∀ n, P114627443853648873.a n = A315468 n

end A315468

/-!
# A315469: Coordination sequence Gal.4.134.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315469, the canonical program `A315469.P9148809959578598591` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315469 has offset 0).

The definition of A315469 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2297 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315469.P9148809959578598591

`A314672(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315469

/-- `A314672(n)+n` -/
def P9148809959578598591.Spec : Prop :=
  ∀ n, P9148809959578598591.a n = A315469 n

theorem P9148809959578598591.correct : P9148809959578598591.Spec := by
  intro n
  simp only [A315469]

end A315469

/-! ## A315469.P8591661872306587108

`abs(10*n-A313115(n))`
-/

namespace A315469.P8591661872306587108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313115 n|

end

end A315469.P8591661872306587108

namespace A315469

/-- `abs(10*n-A313115(n))` -/
def P8591661872306587108.Spec : Prop :=
  ∀ n, P8591661872306587108.a n = A315469 n

end A315469

/-! ## A315469.P8132095152547974043

`A313685(n)+A004525(n)`
-/

namespace A315469.P8132095152547974043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313685 n + A004525 n

end

end A315469.P8132095152547974043

namespace A315469

/-- `A313685(n)+A004525(n)` -/
def P8132095152547974043.Spec : Prop :=
  ∀ n, P8132095152547974043.a n = A315469 n

end A315469

/-! ## A315469.P2851951464657264839

`(A315173(n)+A008458(n))/2`
-/

namespace A315469.P2851951464657264839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315173 n + A008458 n : ℚ) / 2

end

end A315469.P2851951464657264839

namespace A315469

/-- `(A315173(n)+A008458(n))/2` -/
def P2851951464657264839.Spec : Prop :=
  ∀ n, P2851951464657264839.a n = (A315469 n : ℚ)

end A315469

/-! ## A315469.P17633811364149886339

`A046978(n)+A311501(n)+n`
-/

namespace A315469.P17633811364149886339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 n + (A311501 n + (n : ℤ))

end

end A315469.P17633811364149886339

namespace A315469

/-- `A046978(n)+A311501(n)+n` -/
def P17633811364149886339.Spec : Prop :=
  ∀ n, P17633811364149886339.a n = A315469 n

end A315469

/-! ## A315469.P14373779096823701734

`A314829(n)+n-Δ[A011861(n)]`
-/

namespace A315469.P14373779096823701734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314829 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315469.P14373779096823701734

namespace A315469

/-- `A314829(n)+n-Δ[A011861(n)]` -/
def P14373779096823701734.Spec : Prop :=
  ∀ n, P14373779096823701734.a n = A315469 n

end A315469

/-! ## A315469.P14837206279320601754

`Δ[A000290(n)]-n-(1-A314672(n))`
-/

namespace A315469.P14837206279320601754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ) - (1 - A314672 n)

end

end A315469.P14837206279320601754

namespace A315469

/-- `Δ[A000290(n)]-n-(1-A314672(n))` -/
def P14837206279320601754.Spec : Prop :=
  ∀ n, P14837206279320601754.a n = A315469 n

end A315469

/-! ## A315469.P2746985792262391638

`A008706(n)+A004525(A004525(n))`
-/

namespace A315469.P2746985792262391638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004525 (A004525 n).toNat

end

end A315469.P2746985792262391638

namespace A315469

/-- `A008706(n)+A004525(A004525(n))` -/
def P2746985792262391638.Spec : Prop :=
  ∀ n, P2746985792262391638.a n = A315469 n

end A315469

/-! ## A315469.P7109280381743363867

`A313115(n)+2*A004525(A004525(n))`
-/

namespace A315469.P7109280381743363867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313115 n + 2 * A004525 (A004525 n).toNat

end

end A315469.P7109280381743363867

namespace A315469

/-- `A313115(n)+2*A004525(A004525(n))` -/
def P7109280381743363867.Spec : Prop :=
  ∀ n, P7109280381743363867.a n = A315469 n

end A315469

/-! ## A315469.P9870474287489310250

`A004525(A004525(n))+A008574(n)+n`
-/

namespace A315469.P9870474287489310250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A008574 n + (n : ℤ))

end

end A315469.P9870474287489310250

namespace A315469

/-- `A004525(A004525(n))+A008574(n)+n` -/
def P9870474287489310250.Spec : Prop :=
  ∀ n, P9870474287489310250.a n = A315469 n

end A315469

/-! ## A315469.P15551456638532381094

`A313480(n)+A004525(A004525(n)+n)`
-/

namespace A315469.P15551456638532381094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313480 n + A004525 (A004525 n + (n : ℤ)).toNat

end

end A315469.P15551456638532381094

namespace A315469

/-- `A313480(n)+A004525(A004525(n)+n)` -/
def P15551456638532381094.Spec : Prop :=
  ∀ n, P15551456638532381094.a n = A315469 n

end A315469

/-! ## A315469.P997457594882116639

`A313875(n)+A046978(A046978(n)+n)`
-/

namespace A315469.P997457594882116639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313875 n + A046978 (A046978 n + (n : ℤ)).toNat

end

end A315469.P997457594882116639

namespace A315469

/-- `A313875(n)+A046978(A046978(n)+n)` -/
def P997457594882116639.Spec : Prop :=
  ∀ n, P997457594882116639.a n = A315469 n

end A315469

/-! ## A315469.P1278387967506850044

`A004525(A004525(n))+A008458(n)-n`
-/

namespace A315469.P1278387967506850044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A008458 n - (n : ℤ))

end

end A315469.P1278387967506850044

namespace A315469

/-- `A004525(A004525(n))+A008458(n)-n` -/
def P1278387967506850044.Spec : Prop :=
  ∀ n, P1278387967506850044.a n = A315469 n

end A315469

/-! ## A315469.P1170101367701148286

`A315259(n)+A004525(n-A004525(n))`
-/

namespace A315469.P1170101367701148286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315259 n + A004525 ((n : ℤ) - A004525 n).toNat

end

end A315469.P1170101367701148286

namespace A315469

/-- `A315259(n)+A004525(n-A004525(n))` -/
def P1170101367701148286.Spec : Prop :=
  ∀ n, P1170101367701148286.a n = A315469 n

end A315469

/-! ## A315469.P9280221784591540040

`A008458(n)+A008574(n)-A313115(n)`
-/

namespace A315469.P9280221784591540040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313115 n)

end

end A315469.P9280221784591540040

namespace A315469

/-- `A008458(n)+A008574(n)-A313115(n)` -/
def P9280221784591540040.Spec : Prop :=
  ∀ n, P9280221784591540040.a n = A315469 n

end A315469

/-! ## A315469.P11144569999371175172

`A315685(n)-A004525(n-A004525(n))`
-/

namespace A315469.P11144569999371175172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315685 n - A004525 ((n : ℤ) - A004525 n).toNat

end

end A315469.P11144569999371175172

namespace A315469

/-- `A315685(n)-A004525(n-A004525(n))` -/
def P11144569999371175172.Spec : Prop :=
  ∀ n, P11144569999371175172.a n = A315469 n

end A315469

/-! ## A315469.P14685430018043459717

`A004525(A004525(n))+record[A195140(n+1)]`
-/

namespace A315469.P14685430018043459717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195140 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315469.P14685430018043459717

namespace A315469

/-- `A004525(A004525(n))+record[A195140(n+1)]` -/
def P14685430018043459717.Spec : Prop :=
  ∀ n, P14685430018043459717.a n = A315469 n

end A315469

/-! ## A315469.P10934010238161018845

`A004525(A004525(n))+A008486(n)+A005843(n)`
-/

namespace A315469.P10934010238161018845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004525 n).toNat + (A008486 n + A005843 n)

end

end A315469.P10934010238161018845

namespace A315469

/-- `A004525(A004525(n))+A008486(n)+A005843(n)` -/
def P10934010238161018845.Spec : Prop :=
  ∀ n, P10934010238161018845.a n = A315469 n

end A315469

/-! ## A315469.P3518366563176183088

`A313793(n)+A046978(n)`
-/

namespace A315469.P3518366563176183088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313793 n + A046978 n

end

end A315469.P3518366563176183088

namespace A315469

/-- `A313793(n)+A046978(n)` -/
def P3518366563176183088.Spec : Prop :=
  ∀ n, P3518366563176183088.a n = A315469 n

end A315469

/-! ## A315469.P3887648697782747655

`A314056(n)+A188510(n)`
-/

namespace A315469.P3887648697782747655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314056 n + A188510 n

end

end A315469.P3887648697782747655

namespace A315469

/-- `A314056(n)+A188510(n)` -/
def P3887648697782747655.Spec : Prop :=
  ∀ n, P3887648697782747655.a n = A315469 n

end A315469

/-!
# A315470: Coordination sequence Gal.6.253.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315470, the canonical program `A315470.P11940658302608166032` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315470 has offset 0).

The definition of A315470 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315470.P11940658302608166032

`abs(A008592(n)-A313113(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A315470

/-- `abs(A008592(n)-A313113(n))` -/
def P11940658302608166032.Spec : Prop :=
  ∀ n, P11940658302608166032.a n = A315470 n

theorem P11940658302608166032.correct : P11940658302608166032.Spec := by
  intro n
  simp only [A315470]

end A315470

/-! ## A315470.P2836768574352442366

`2*A008706(n)-A313113(n)`
-/

namespace A315470.P2836768574352442366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313113 n

end

end A315470.P2836768574352442366

namespace A315470

/-- `2*A008706(n)-A313113(n)` -/
def P2836768574352442366.Spec : Prop :=
  ∀ n, P2836768574352442366.a n = A315470 n

end A315470

/-! ## A315470.P3840728728710816366

`(A315177(n)+A008458(n))/2`
-/

namespace A315470.P3840728728710816366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315177 n + A008458 n : ℚ) / 2

end

end A315470.P3840728728710816366

namespace A315470

/-- `(A315177(n)+A008458(n))/2` -/
def P3840728728710816366.Spec : Prop :=
  ∀ n, P3840728728710816366.a n = (A315470 n : ℚ)

end A315470

/-! ## A315470.P13487891017284633376

`A135042(2*n+1)-A313113(n)`
-/

namespace A315470.P13487891017284633376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313113 n

end

end A315470.P13487891017284633376

namespace A315470

/-- `A135042(2*n+1)-A313113(n)` -/
def P13487891017284633376.Spec : Prop :=
  ∀ n, P13487891017284633376.a n = A315470 n

end A315470

/-! ## A315470.P828375999566595566

`A008458(n)+A008574(n)-A313113(n)`
-/

namespace A315470.P828375999566595566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313113 n)

end

end A315470.P828375999566595566

namespace A315470

/-- `A008458(n)+A008574(n)-A313113(n)` -/
def P828375999566595566.Spec : Prop :=
  ∀ n, P828375999566595566.a n = A315470 n

end A315470

/-! ## A315470.P10532302651400206603

`A005843(n)+A005843(A008574(n))-A313113(n)`
-/

namespace A315470.P10532302651400206603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313113 n)

end

end A315470.P10532302651400206603

namespace A315470

/-- `A005843(n)+A005843(A008574(n))-A313113(n)` -/
def P10532302651400206603.Spec : Prop :=
  ∀ n, P10532302651400206603.a n = A315470 n

end A315470

/-! ## A315470.P17367790522447040463

`A315177(n)+A001281(A008458(n)-A315177(n))`
-/

namespace A315470.P17367790522447040463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315177 n + A001281 (A008458 n - A315177 n).toNat

end

end A315470.P17367790522447040463

namespace A315470

/-- `A315177(n)+A001281(A008458(n)-A315177(n))` -/
def P17367790522447040463.Spec : Prop :=
  ∀ n, P17367790522447040463.a n = A315470 n

end A315470

/-! ## A315470.P4355951221323293806

`A313113(n)+A005843(A008706(n)-A313113(n))`
-/

namespace A315470.P4355951221323293806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313113 n + A005843 (A008706 n - A313113 n).toNat

end

end A315470.P4355951221323293806

namespace A315470

/-- `A313113(n)+A005843(A008706(n)-A313113(n))` -/
def P4355951221323293806.Spec : Prop :=
  ∀ n, P4355951221323293806.a n = A315470 n

end A315470

/-! ## A315470.P1731265489451354780

`A004277(n)+A004526(A315177(n))+n`
-/

namespace A315470.P1731265489451354780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (A004526 (A315177 n).toNat + (n : ℤ))

end

end A315470.P1731265489451354780

namespace A315470

/-- `A004277(n)+A004526(A315177(n))+n` -/
def P1731265489451354780.Spec : Prop :=
  ∀ n, P1731265489451354780.a n = A315470 n

end A315470

/-! ## A315470.P16972988761369365140

`A004396(A315245(n))+2*n`
-/

namespace A315470.P16972988761369365140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315245 n).toNat + (2 * n : ℤ)

end

end A315470.P16972988761369365140

namespace A315470

/-- `A004396(A315245(n))+2*n` -/
def P16972988761369365140.Spec : Prop :=
  ∀ n, P16972988761369365140.a n = A315470 n

end A315470

/-! ## A315470.P6692545121668474867

`A005843(n)+A004396(A315245(n))`
-/

namespace A315470.P6692545121668474867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315245 n).toNat

end

end A315470.P6692545121668474867

namespace A315470

/-- `A005843(n)+A004396(A315245(n))` -/
def P6692545121668474867.Spec : Prop :=
  ∀ n, P6692545121668474867.a n = A315470 n

end A315470

/-! ## A315470.P14198981052192913450

`A004396(A315404(n))+2*n`
-/

namespace A315470.P14198981052192913450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315404 n).toNat + (2 * n : ℤ)

end

end A315470.P14198981052192913450

namespace A315470

/-- `A004396(A315404(n))+2*n` -/
def P14198981052192913450.Spec : Prop :=
  ∀ n, P14198981052192913450.a n = A315470 n

end A315470

/-! ## A315470.P15171504977822939698

`A005843(n)+A004396(A315404(n))`
-/

namespace A315470.P15171504977822939698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A004396 (A315404 n).toNat

end

end A315470.P15171504977822939698

namespace A315470

/-- `A005843(n)+A004396(A315404(n))` -/
def P15171504977822939698.Spec : Prop :=
  ∀ n, P15171504977822939698.a n = A315470 n

end A315470

/-! ## A315470.P17631012225737455423

`A005843(A008706(n))-A313113(n)`
-/

namespace A315470.P17631012225737455423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313113 n

end

end A315470.P17631012225737455423

namespace A315470

/-- `A005843(A008706(n))-A313113(n)` -/
def P17631012225737455423.Spec : Prop :=
  ∀ n, P17631012225737455423.a n = A315470 n

end A315470

/-! ## A315470.P18259581753067729105

`A005843(A008574(n)+n)-A313113(n)`
-/

namespace A315470.P18259581753067729105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313113 n

end

end A315470.P18259581753067729105

namespace A315470

/-- `A005843(A008574(n)+n)-A313113(n)` -/
def P18259581753067729105.Spec : Prop :=
  ∀ n, P18259581753067729105.a n = A315470 n

end A315470

/-! ## A315470.P14698940768703408624

`A004278(A017005(n))-A311932(2*n)`
-/

namespace A315470.P14698940768703408624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A017005 n).toNat - A311932 (2 * n)

end

end A315470.P14698940768703408624

namespace A315470

/-- `A004278(A017005(n))-A311932(2*n)` -/
def P14698940768703408624.Spec : Prop :=
  ∀ n, P14698940768703408624.a n = A315470 n

end A315470

/-! ## A315470.P5671685896499373065

`A315699(2*n)+n-7*n`
-/

namespace A315470.P5671685896499373065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315699 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A315470.P5671685896499373065

namespace A315470

/-- `A315699(2*n)+n-7*n` -/
def P5671685896499373065.Spec : Prop :=
  ∀ n, P5671685896499373065.a n = A315470 n

end A315470

/-! ## A315470.P4296503653518758240

`A004396(A315686(2*n)-A008585(n))`
-/

namespace A315470.P4296503653518758240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315686 (2 * n) - A008585 n).toNat

end

end A315470.P4296503653518758240

namespace A315470

/-- `A004396(A315686(2*n)-A008585(n))` -/
def P4296503653518758240.Spec : Prop :=
  ∀ n, P4296503653518758240.a n = A315470 n

end A315470

/-! ## A315470.P4712972762193263350

`A001281(A315177(n)+A008458(n))`
-/

namespace A315470.P4712972762193263350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315177 n + A008458 n).toNat

end

end A315470.P4712972762193263350

namespace A315470

/-- `A001281(A315177(n)+A008458(n))` -/
def P4712972762193263350.Spec : Prop :=
  ∀ n, P4712972762193263350.a n = A315470 n

end A315470

/-! ## A315470.P3376083572967642085

`A004396(A315686(2*n))-A005843(n)`
-/

namespace A315470.P3376083572967642085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315686 (2 * n)).toNat - A005843 n

end

end A315470.P3376083572967642085

namespace A315470

/-- `A004396(A315686(2*n))-A005843(n)` -/
def P3376083572967642085.Spec : Prop :=
  ∀ n, P3376083572967642085.a n = A315470 n

end A315470

/-!
# A315471: Coordination sequence Gal.3.52.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315471, the canonical program `A315471.P13880185677744590695` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315471 has offset 0).

The definition of A315471 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2282 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315471.P13880185677744590695

`A314677(n)+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315471

/-- `A314677(n)+n` -/
def P13880185677744590695.Spec : Prop :=
  ∀ n, P13880185677744590695.a n = A315471 n

theorem P13880185677744590695.correct : P13880185677744590695.Spec := by
  intro n
  simp only [A315471]

end A315471

/-! ## A315471.P13761328767225508714

`A313510(n)+A004396(n)`
-/

namespace A315471.P13761328767225508714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313510 n + A004396 n

end

end A315471.P13761328767225508714

namespace A315471

/-- `A313510(n)+A004396(n)` -/
def P13761328767225508714.Spec : Prop :=
  ∀ n, P13761328767225508714.a n = A315471 n

end A315471

/-! ## A315471.P15741129722870232149

`A313687(n)+A004525(n)`
-/

namespace A315471.P15741129722870232149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313687 n + A004525 n

end

end A315471.P15741129722870232149

namespace A315471

/-- `A313687(n)+A004525(n)` -/
def P15741129722870232149.Spec : Prop :=
  ∀ n, P15741129722870232149.a n = A315471 n

end A315471

/-! ## A315471.P8130399468081165889

`A219529(n)+A134667(n)`
-/

namespace A315471.P8130399468081165889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219529 n + A134667 n

end

end A315471.P8130399468081165889

namespace A315471

/-- `A219529(n)+A134667(n)` -/
def P8130399468081165889.Spec : Prop :=
  ∀ n, P8130399468081165889.a n = A315471 n

end A315471

/-! ## A315471.P15584019030080713796

`A301697(n)+A128834(n)`
-/

namespace A315471.P15584019030080713796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301697 n + A128834 n

end

end A315471.P15584019030080713796

namespace A315471

/-- `A301697(n)+A128834(n)` -/
def P15584019030080713796.Spec : Prop :=
  ∀ n, P15584019030080713796.a n = A315471 n

end A315471

/-! ## A315471.P5347283557292063185

`A008458(n)-∑[A131735(n)]`
-/

namespace A315471.P5347283557292063185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315471.P5347283557292063185

namespace A315471

/-- `A008458(n)-∑[A131735(n)]` -/
def P5347283557292063185.Spec : Prop :=
  ∀ n, P5347283557292063185.a n = A315471 n

end A315471

/-! ## A315471.P10477429209133526678

`A047424(n+1)+A008574(n)`
-/

namespace A315471.P10477429209133526678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + A008574 n

end

end A315471.P10477429209133526678

namespace A315471

/-- `A047424(n+1)+A008574(n)` -/
def P10477429209133526678.Spec : Prop :=
  ∀ n, P10477429209133526678.a n = A315471 n

end A315471

/-! ## A315471.P112053947121693326

`A315693(n)-A002264(n+1)`
-/

namespace A315471.P112053947121693326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315693 n - A002264 (n + 1)

end

end A315471.P112053947121693326

namespace A315471

/-- `A315693(n)-A002264(n+1)` -/
def P112053947121693326.Spec : Prop :=
  ∀ n, P112053947121693326.a n = A315471 n

end A315471

/-! ## A315471.P9429684766980143596

`A134667(n)+A008576(2*n)`
-/

namespace A315471.P9429684766980143596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + A008576 (2 * n)

end

end A315471.P9429684766980143596

namespace A315471

/-- `A134667(n)+A008576(2*n)` -/
def P9429684766980143596.Spec : Prop :=
  ∀ n, P9429684766980143596.a n = A315471 n

end A315471

/-! ## A315471.P3187137223738695483

`A128834(n)+A312065(n)+n`
-/

namespace A315471.P3187137223738695483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A312065 n + (n : ℤ))

end

end A315471.P3187137223738695483

namespace A315471

/-- `A128834(n)+A312065(n)+n` -/
def P3187137223738695483.Spec : Prop :=
  ∀ n, P3187137223738695483.a n = A315471 n

end A315471

/-! ## A315471.P7755604447159682940

`A134667(n)+A312901(n)+n`
-/

namespace A315471.P7755604447159682940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A312901 n + (n : ℤ))

end

end A315471.P7755604447159682940

namespace A315471

/-- `A134667(n)+A312901(n)+n` -/
def P7755604447159682940.Spec : Prop :=
  ∀ n, P7755604447159682940.a n = A315471 n

end A315471

/-! ## A315471.P438825768846300305

`A315196(n)+n-A004525(n)`
-/

namespace A315471.P438825768846300305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315196 n + ((n : ℤ) - A004525 n)

end

end A315471.P438825768846300305

namespace A315471

/-- `A315196(n)+n-A004525(n)` -/
def P438825768846300305.Spec : Prop :=
  ∀ n, P438825768846300305.a n = A315471 n

end A315471

/-! ## A315471.P9214033494905873094

`A008486(2*n)-∑[A131735(n)]`
-/

namespace A315471.P9214033494905873094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315471.P9214033494905873094

namespace A315471

/-- `A008486(2*n)-∑[A131735(n)]` -/
def P9214033494905873094.Spec : Prop :=
  ∀ n, P9214033494905873094.a n = A315471 n

end A315471

/-! ## A315471.P2578192319473588675

`A047564(n+1)+A004273(2*n)`
-/

namespace A315471.P2578192319473588675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047564 (n + 1) + A004273 (2 * n)

end

end A315471.P2578192319473588675

namespace A315471

/-- `A047564(n+1)+A004273(2*n)` -/
def P2578192319473588675.Spec : Prop :=
  ∀ n, P2578192319473588675.a n = A315471 n

end A315471

/-! ## A315471.P4564919583407954290

`A047424(n+1)+A008486(n)+n`
-/

namespace A315471.P4564919583407954290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + (A008486 n + (n : ℤ))

end

end A315471.P4564919583407954290

namespace A315471

/-- `A047424(n+1)+A008486(n)+n` -/
def P4564919583407954290.Spec : Prop :=
  ∀ n, P4564919583407954290.a n = A315471 n

end A315471

/-! ## A315471.P5050423668226215019

`A047424(n+1)+A004275(2*n+1)`
-/

namespace A315471.P5050423668226215019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047424 (n + 1) + A004275 (2 * n + 1)

end

end A315471.P5050423668226215019

namespace A315471

/-- `A047424(n+1)+A004275(2*n+1)` -/
def P5050423668226215019.Spec : Prop :=
  ∀ n, P5050423668226215019.a n = A315471 n

end A315471

/-! ## A315471.P13605174601653764069

`A004277(2*n)+A047571(n+2)-2`
-/

namespace A315471.P13605174601653764069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n) + (A047571 (n + 2) - 2)

end

end A315471.P13605174601653764069

namespace A315471

/-- `A004277(2*n)+A047571(n+2)-2` -/
def P13605174601653764069.Spec : Prop :=
  ∀ n, P13605174601653764069.a n = A315471 n

end A315471

/-! ## A315471.P14175798964776046485

`A004275(2*n+1)+A047571(n+2)-2`
-/

namespace A315471.P14175798964776046485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (2 * n + 1) + (A047571 (n + 2) - 2)

end

end A315471.P14175798964776046485

namespace A315471

/-- `A004275(2*n+1)+A047571(n+2)-2` -/
def P14175798964776046485.Spec : Prop :=
  ∀ n, P14175798964776046485.a n = A315471 n

end A315471

/-! ## A315471.P6212158671611079240

`A008458(n)+A008574(n)-A313110(n)`
-/

namespace A315471.P6212158671611079240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313110 n)

end

end A315471.P6212158671611079240

namespace A315471

/-- `A008458(n)+A008574(n)-A313110(n)` -/
def P6212158671611079240.Spec : Prop :=
  ∀ n, P6212158671611079240.a n = A315471 n

end A315471

/-! ## A315471.P16082668216260734682

`A008576(n)+A315693(n)-A008486(n)`
-/

namespace A315471.P16082668216260734682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315693 n - A008486 n)

end

end A315471.P16082668216260734682

namespace A315471

/-- `A008576(n)+A315693(n)-A008486(n)` -/
def P16082668216260734682.Spec : Prop :=
  ∀ n, P16082668216260734682.a n = A315471 n

end A315471

/-!
# A315472: Coordination sequence Gal.5.280.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315472, there is no canonical definition to state claims against.
-/

/-! ## A315472.P16335886939166035150

`A327201(2*n+1)+A315247(n)`
-/

namespace A315472.P16335886939166035150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327201 (2 * n + 1) + A315247 n

end

end A315472.P16335886939166035150

/-! ## A315472.P11770248279450686666

`A330025(A015519(n))+A313816(n)`
-/

namespace A315472.P11770248279450686666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A015519 n).toNat + A313816 n

end

end A315472.P11770248279450686666

/-! ## A315472.P3221827261537213757

`A066099(A298533(n+5))+A008587(n)`
-/

namespace A315472.P3221827261537213757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A298533 (n + 5)).toNat + A008587 n

end

end A315472.P3221827261537213757

/-! ## A315472.P8412461664295067959

`A007821(n+1)-A318928(A301903(n+1))`
-/

namespace A315472.P8412461664295067959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007821 (n + 1) - A318928 (A301903 (n + 1)).toNat

end

end A315472.P8412461664295067959

/-! ## A315472.P9327528065359810551

`A004525(A004396(n))+A227389(A081437(n))-n²`
-/

namespace A315472.P9327528065359810551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A227389 (A081437 n).toNat - (n ^ 2 : ℤ))

end

end A315472.P9327528065359810551

/-!
# A315473: Coordination sequence Gal.6.658.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315473, the canonical program `A315473.P5440894521520911496` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315473 has offset 0).

The definition of A315473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315473.P5440894521520911496

`A310533(n)+A000034(n)*A128834(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315473

/-- `A310533(n)+A000034(n)*A128834(n)` -/
def P5440894521520911496.Spec : Prop :=
  ∀ n, P5440894521520911496.a n = A315473 n

theorem P5440894521520911496.correct : P5440894521520911496.Spec := by
  intro n
  simp only [A315473]

end A315473

/-! ## A315473.P10937329697671017064

`∑[dr(A347906(A289373(n)))]`
-/

namespace A315473.P10937329697671017064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A347906 (A289373 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315473.P10937329697671017064

namespace A315473

/-- `∑[dr(A347906(A289373(n)))]` -/
def P10937329697671017064.Spec : Prop :=
  ∀ n, (P10937329697671017064.a n : ℤ) = A315473 n

end A315473

/-! ## A315473.P15542535593234856027

`∑[A122066(eq[5, A144328(n+1)])]`
-/

namespace A315473.P15542535593234856027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122066 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315473.P15542535593234856027

namespace A315473

/-- `∑[A122066(eq[5, A144328(n+1)])]` -/
def P15542535593234856027.Spec : Prop :=
  ∀ n, P15542535593234856027.a n = A315473 n

end A315473

/-!
# A315474: Coordination sequence Gal.6.341.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315474, the canonical program `A315474.P12078327233869997343` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315474 has offset 0).

The definition of A315474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315474.P12078327233869997343

`A313688(n)+A004525(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315474

/-- `A313688(n)+A004525(n)` -/
def P12078327233869997343.Spec : Prop :=
  ∀ n, P12078327233869997343.a n = A315474 n

theorem P12078327233869997343.correct : P12078327233869997343.Spec := by
  intro n
  simp only [A315474]

end A315474

/-! ## A315474.P11718240571649845707

`A314185(n)+A101455(n)`
-/

namespace A315474.P11718240571649845707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314185 n + A101455 n

end

end A315474.P11718240571649845707

namespace A315474

/-- `A314185(n)+A101455(n)` -/
def P11718240571649845707.Spec : Prop :=
  ∀ n, P11718240571649845707.a n = A315474 n

end A315474

/-! ## A315474.P9173969163264822153

`abs(A008592(n)-A313103(n))`
-/

namespace A315474.P9173969163264822153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313103 n|

end

end A315474.P9173969163264822153

namespace A315474

/-- `abs(A008592(n)-A313103(n))` -/
def P9173969163264822153.Spec : Prop :=
  ∀ n, P9173969163264822153.a n = A315474 n

end A315474

/-! ## A315474.P1245695407542366331

`A315258(n)+∑[A022003(n)]`
-/

namespace A315474.P1245695407542366331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315258 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315474.P1245695407542366331

namespace A315474

/-- `A315258(n)+∑[A022003(n)]` -/
def P1245695407542366331.Spec : Prop :=
  ∀ n, P1245695407542366331.a n = A315474 n

end A315474

/-! ## A315474.P18302330571956467268

`A313688(n)+Δ[A054925(n)]`
-/

namespace A315474.P18302330571956467268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + (f1 (n + 1) - f1 n)

end

end A315474.P18302330571956467268

namespace A315474

/-- `A313688(n)+Δ[A054925(n)]` -/
def P18302330571956467268.Spec : Prop :=
  ∀ n, P18302330571956467268.a n = A315474 n

end A315474

/-! ## A315474.P8947113514221879086

`A315258(n)+A002264(n+1)`
-/

namespace A315474.P8947113514221879086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315258 n + A002264 (n + 1)

end

end A315474.P8947113514221879086

namespace A315474

/-- `A315258(n)+A002264(n+1)` -/
def P8947113514221879086.Spec : Prop :=
  ∀ n, P8947113514221879086.a n = A315474 n

end A315474

/-! ## A315474.P9822613510930305992

`A313688(n)+n-∑[A021913(n)]`
-/

namespace A315474.P9822613510930305992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315474.P9822613510930305992

namespace A315474

/-- `A313688(n)+n-∑[A021913(n)]` -/
def P9822613510930305992.Spec : Prop :=
  ∀ n, P9822613510930305992.a n = A315474 n

end A315474

/-! ## A315474.P16860796346643029784

`A313688(n)+n-Δ[A011848(n)]`
-/

namespace A315474.P16860796346643029784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313688 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315474.P16860796346643029784

namespace A315474

/-- `A313688(n)+n-Δ[A011848(n)]` -/
def P16860796346643029784.Spec : Prop :=
  ∀ n, P16860796346643029784.a n = A315474 n

end A315474

/-! ## A315474.P12260432407900512826

`A008458(n)+A008574(n)-A313103(n)`
-/

namespace A315474.P12260432407900512826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313103 n)

end

end A315474.P12260432407900512826

namespace A315474

/-- `A008458(n)+A008574(n)-A313103(n)` -/
def P12260432407900512826.Spec : Prop :=
  ∀ n, P12260432407900512826.a n = A315474 n

end A315474

/-! ## A315474.P6670007640689152083

`A008486(n)+A315258(n)-A008576(n)`
-/

namespace A315474.P6670007640689152083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315258 n - A008576 n)

end

end A315474.P6670007640689152083

namespace A315474

/-- `A008486(n)+A315258(n)-A008576(n)` -/
def P6670007640689152083.Spec : Prop :=
  ∀ n, P6670007640689152083.a n = A315474 n

end A315474

/-! ## A315474.P7849851664754990127

`A315747(n)-∑[A021913(n)]`
-/

namespace A315474.P7849851664754990127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315474.P7849851664754990127

namespace A315474

/-- `A315747(n)-∑[A021913(n)]` -/
def P7849851664754990127.Spec : Prop :=
  ∀ n, P7849851664754990127.a n = A315474 n

end A315474

/-! ## A315474.P791342790100106953

`A315747(n)-Δ[A011848(n)]`
-/

namespace A315474.P791342790100106953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - (f1 (n + 1) - f1 n)

end

end A315474.P791342790100106953

namespace A315474

/-- `A315747(n)-Δ[A011848(n)]` -/
def P791342790100106953.Spec : Prop :=
  ∀ n, P791342790100106953.a n = A315474 n

end A315474

/-! ## A315474.P18427874063681578939

`A315747(n)-A004524(n+1)`
-/

namespace A315474.P18427874063681578939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315747 n - A004524 (n + 1)

end

end A315474.P18427874063681578939

namespace A315474

/-- `A315747(n)-A004524(n+1)` -/
def P18427874063681578939.Spec : Prop :=
  ∀ n, P18427874063681578939.a n = A315474 n

end A315474

/-! ## A315474.P15211107642669250628

`A004525(n)+A315747(n)-n`
-/

namespace A315474.P15211107642669250628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315747 n - (n : ℤ))

end

end A315474.P15211107642669250628

namespace A315474

/-- `A004525(n)+A315747(n)-n` -/
def P15211107642669250628.Spec : Prop :=
  ∀ n, P15211107642669250628.a n = A315474 n

end A315474

/-! ## A315474.P15546927202263477683

`A004525(n)+A004396(A315741(n))+n`
-/

namespace A315474.P15546927202263477683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A004396 (A315741 n).toNat + (n : ℤ))

end

end A315474.P15546927202263477683

namespace A315474

/-- `A004525(n)+A004396(A315741(n))+n` -/
def P15546927202263477683.Spec : Prop :=
  ∀ n, P15546927202263477683.a n = A315474 n

end A315474

/-! ## A315474.P17062669588715026120

`A310459(A008574(n))/2-A310459(n)`
-/

namespace A315474.P17062669588715026120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310459 (A008574 n).toNat : ℚ) / 2 - (A310459 n : ℚ)

end

end A315474.P17062669588715026120

namespace A315474

/-- `A310459(A008574(n))/2-A310459(n)` -/
def P17062669588715026120.Spec : Prop :=
  ∀ n, P17062669588715026120.a n = (A315474 n : ℚ)

end A315474

/-!
# A315475: Coordination sequence Gal.5.133.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315475, the canonical program `A315475.P8010595968173060010` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315475 has offset 0).

The definition of A315475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315475.P8010595968173060010

`abs(10*n-A313100(n))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315475

/-- `abs(10*n-A313100(n))` -/
def P8010595968173060010.Spec : Prop :=
  ∀ n, P8010595968173060010.a n = A315475 n

theorem P8010595968173060010.correct : P8010595968173060010.Spec := by
  intro n
  simp only [A315475]

end A315475

/-! ## A315475.P3656694318347207811

`A315416(n)+Δ[A011862(n)]`
-/

namespace A315475.P3656694318347207811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315416 n + (f1 (n + 1) - f1 n)

end

end A315475.P3656694318347207811

namespace A315475

/-- `A315416(n)+Δ[A011862(n)]` -/
def P3656694318347207811.Spec : Prop :=
  ∀ n, P3656694318347207811.a n = A315475 n

end A315475

/-! ## A315475.P2367974384800578741

`(A315185(n)+A008458(n))/2`
-/

namespace A315475.P2367974384800578741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315185 n + A008458 n : ℚ) / 2

end

end A315475.P2367974384800578741

namespace A315475

/-- `(A315185(n)+A008458(n))/2` -/
def P2367974384800578741.Spec : Prop :=
  ∀ n, P2367974384800578741.a n = (A315475 n : ℚ)

end A315475

/-! ## A315475.P5189649177168938198

`A313703(n)+A004396(A004396(n))`
-/

namespace A315475.P5189649177168938198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313703 n + A004396 (A004396 n).toNat

end

end A315475.P5189649177168938198

namespace A315475

/-- `A313703(n)+A004396(A004396(n))` -/
def P5189649177168938198.Spec : Prop :=
  ∀ n, P5189649177168938198.a n = A315475 n

end A315475

/-! ## A315475.P1490927706491520939

`A314710(n)+A004396(A004396(2*n))`
-/

namespace A315475.P1490927706491520939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314710 n + A004396 (A004396 (2 * n)).toNat

end

end A315475.P1490927706491520939

namespace A315475

/-- `A314710(n)+A004396(A004396(2*n))` -/
def P1490927706491520939.Spec : Prop :=
  ∀ n, P1490927706491520939.a n = A315475 n

end A315475

/-! ## A315475.P6299766844373852839

`A000038(n)+A008592(n)-A313100(n)`
-/

namespace A315475.P6299766844373852839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313100 n)

end

end A315475.P6299766844373852839

namespace A315475

/-- `A000038(n)+A008592(n)-A313100(n)` -/
def P6299766844373852839.Spec : Prop :=
  ∀ n, P6299766844373852839.a n = A315475 n

end A315475

/-! ## A315475.P14951876739722507135

`A008458(n)+A008574(n)-A313100(n)`
-/

namespace A315475.P14951876739722507135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313100 n)

end

end A315475.P14951876739722507135

namespace A315475

/-- `A008458(n)+A008574(n)-A313100(n)` -/
def P14951876739722507135.Spec : Prop :=
  ∀ n, P14951876739722507135.a n = A315475 n

end A315475

/-! ## A315475.P13966143228500974737

`A315690(n)-A004396(n-A004396(n))`
-/

namespace A315475.P13966143228500974737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315690 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315475.P13966143228500974737

namespace A315475

/-- `A315690(n)-A004396(n-A004396(n))` -/
def P13966143228500974737.Spec : Prop :=
  ∀ n, P13966143228500974737.a n = A315475 n

end A315475

/-! ## A315475.P3529027963558421476

`∑{d}[A008592(n)-A313100(n), A000010(#)]`
-/

namespace A315475.P3529027963558421476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313100 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315475.P3529027963558421476

namespace A315475

/-- `∑{d}[A008592(n)-A313100(n), A000010(#)]` -/
def P3529027963558421476.Spec : Prop :=
  ∀ n, P3529027963558421476.a n = A315475 n

end A315475

/-! ## A315475.P16404296454040373843

`A005843(n)+A005843(A008574(n))-A313100(n)`
-/

namespace A315475.P16404296454040373843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313100 n)

end

end A315475.P16404296454040373843

namespace A315475

/-- `A005843(n)+A005843(A008574(n))-A313100(n)` -/
def P16404296454040373843.Spec : Prop :=
  ∀ n, P16404296454040373843.a n = A315475 n

end A315475

/-! ## A315475.P16391953502318283157

`A315523(n)-Δ[A011862(n)]`
-/

namespace A315475.P16391953502318283157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315523 n - (f1 (n + 1) - f1 n)

end

end A315475.P16391953502318283157

namespace A315475

/-- `A315523(n)-Δ[A011862(n)]` -/
def P16391953502318283157.Spec : Prop :=
  ∀ n, P16391953502318283157.a n = A315475 n

end A315475

/-! ## A315475.P3386044806228343387

`A004396(A004396(n))+A315523(n)-A004396(n)`
-/

namespace A315475.P3386044806228343387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315523 n - A004396 n)

end

end A315475.P3386044806228343387

namespace A315475

/-- `A004396(A004396(n))+A315523(n)-A004396(n)` -/
def P3386044806228343387.Spec : Prop :=
  ∀ n, P3386044806228343387.a n = A315475 n

end A315475

/-! ## A315475.P10280709193518686545

`A315265(n)+A004396(n-A004396(n))`
-/

namespace A315475.P10280709193518686545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315265 n + A004396 ((n : ℤ) - A004396 n).toNat

end

end A315475.P10280709193518686545

namespace A315475

/-- `A315265(n)+A004396(n-A004396(n))` -/
def P10280709193518686545.Spec : Prop :=
  ∀ n, P10280709193518686545.a n = A315475 n

end A315475

/-! ## A315475.P7030201592835241216

`A005843(A008574(n)+n)-A313100(n)`
-/

namespace A315475.P7030201592835241216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313100 n

end

end A315475.P7030201592835241216

namespace A315475

/-- `A005843(A008574(n)+n)-A313100(n)` -/
def P7030201592835241216.Spec : Prop :=
  ∀ n, P7030201592835241216.a n = A315475 n

end A315475

/-! ## A315475.P9676408307081046157

`A004396(A004396(2*n))+A004396(A298786(2*n))`
-/

namespace A315475.P9676408307081046157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 (2 * n)).toNat + A004396 (A298786 (2 * n)).toNat

end

end A315475.P9676408307081046157

namespace A315475

/-- `A004396(A004396(2*n))+A004396(A298786(2*n))` -/
def P9676408307081046157.Spec : Prop :=
  ∀ n, P9676408307081046157.a n = A315475 n

end A315475

/-! ## A315475.P12545199764958544439

`A313538(2*n)-4*n`
-/

namespace A315475.P12545199764958544439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313538 (2 * n) - (4 * n : ℤ)

end

end A315475.P12545199764958544439

namespace A315475

/-- `A313538(2*n)-4*n` -/
def P12545199764958544439.Spec : Prop :=
  ∀ n, P12545199764958544439.a n = A315475 n

end A315475

/-! ## A315475.P6166673179529978380

`A315646(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315475.P6166673179529978380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315646 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315475.P6166673179529978380

namespace A315475

/-- `A315646(2*n)/(4*n+2-A004277(2*n))` -/
def P6166673179529978380.Spec : Prop :=
  ∀ n, P6166673179529978380.a n = (A315475 n : ℚ)

end A315475

/-! ## A315475.P18105883793479830357

`2*A008574(2*n)-A313894(2*n)`
-/

namespace A315475.P18105883793479830357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313894 (2 * n)

end

end A315475.P18105883793479830357

namespace A315475

/-- `2*A008574(2*n)-A313894(2*n)` -/
def P18105883793479830357.Spec : Prop :=
  ∀ n, P18105883793479830357.a n = A315475 n

end A315475

/-! ## A315475.P5827307944111862982

`A004526(A315646(2*n)+1)`
-/

namespace A315475.P5827307944111862982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315646 (2 * n) + 1).toNat

end

end A315475.P5827307944111862982

namespace A315475

/-- `A004526(A315646(2*n)+1)` -/
def P5827307944111862982.Spec : Prop :=
  ∀ n, P5827307944111862982.a n = A315475 n

end A315475

/-! ## A315475.P6200871538872509174

`A314141(A008574(n))-A008574(A008574(n))`
-/

namespace A315475.P6200871538872509174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314141 (A008574 n).toNat - A008574 (A008574 n).toNat

end

end A315475.P6200871538872509174

namespace A315475

/-- `A314141(A008574(n))-A008574(A008574(n))` -/
def P6200871538872509174.Spec : Prop :=
  ∀ n, P6200871538872509174.a n = A315475 n

end A315475

/-!
# A315476: Coordination sequence Gal.6.619.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315476, the canonical program `A315476.P2170121001378105124` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315476 has offset 0).

The definition of A315476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2258 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315476.P2170121001378105124

`A314683(n)+n`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315476

/-- `A314683(n)+n` -/
def P2170121001378105124.Spec : Prop :=
  ∀ n, P2170121001378105124.a n = A315476 n

theorem P2170121001378105124.correct : P2170121001378105124.Spec := by
  intro n
  simp only [A315476]

end A315476

/-! ## A315476.P15818940589512138819

`A313693(n)+A004525(n)`
-/

namespace A315476.P15818940589512138819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313693 n + A004525 n

end

end A315476.P15818940589512138819

namespace A315476

/-- `A313693(n)+A004525(n)` -/
def P15818940589512138819.Spec : Prop :=
  ∀ n, P15818940589512138819.a n = A315476 n

end A315476

/-! ## A315476.P3899250532875083276

`A313922(n)+A128834(n)`
-/

namespace A315476.P3899250532875083276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313922 n + A128834 n

end

end A315476.P3899250532875083276

namespace A315476

/-- `A313922(n)+A128834(n)` -/
def P3899250532875083276.Spec : Prop :=
  ∀ n, P3899250532875083276.a n = A315476 n

end A315476

/-! ## A315476.P13476227963633286435

`abs(A008592(n)-A313099(n))`
-/

namespace A315476.P13476227963633286435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313099 n|

end

end A315476.P13476227963633286435

namespace A315476

/-- `abs(A008592(n)-A313099(n))` -/
def P13476227963633286435.Spec : Prop :=
  ∀ n, P13476227963633286435.a n = A315476 n

end A315476

/-! ## A315476.P821680100801333900

`A008706(n)+A004396(A004525(n))`
-/

namespace A315476.P821680100801333900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004396 (A004525 n).toNat

end

end A315476.P821680100801333900

namespace A315476

/-- `A008706(n)+A004396(A004525(n))` -/
def P821680100801333900.Spec : Prop :=
  ∀ n, P821680100801333900.a n = A315476 n

end A315476

/-! ## A315476.P16836222933516617869

`A004396(A004525(n))+A008574(n)+n`
-/

namespace A315476.P16836222933516617869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004525 n).toNat + (A008574 n + (n : ℤ))

end

end A315476.P16836222933516617869

namespace A315476

/-- `A004396(A004525(n))+A008574(n)+n` -/
def P16836222933516617869.Spec : Prop :=
  ∀ n, P16836222933516617869.a n = A315476 n

end A315476

/-! ## A315476.P16848287833227063926

`A004525(n)+A313246(n)+A128834(n)`
-/

namespace A315476.P16848287833227063926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A313246 n + A128834 n)

end

end A315476.P16848287833227063926

namespace A315476

/-- `A004525(n)+A313246(n)+A128834(n)` -/
def P16848287833227063926.Spec : Prop :=
  ∀ n, P16848287833227063926.a n = A315476 n

end A315476

/-! ## A315476.P16453180943552416237

`A008458(n)+A008574(n)-A313099(n)`
-/

namespace A315476.P16453180943552416237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313099 n)

end

end A315476.P16453180943552416237

namespace A315476

/-- `A008458(n)+A008574(n)-A313099(n)` -/
def P16453180943552416237.Spec : Prop :=
  ∀ n, P16453180943552416237.a n = A315476 n

end A315476

/-! ## A315476.P11345545555152208466

`A315260(n)+floor((n+1)/3)`
-/

namespace A315476.P11345545555152208466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315260 n + ⌊(n + 1 : ℚ) / 3⌋

end

end A315476.P11345545555152208466

namespace A315476

/-- `A315260(n)+floor((n+1)/3)` -/
def P11345545555152208466.Spec : Prop :=
  ∀ n, P11345545555152208466.a n = A315476 n

end A315476

/-! ## A315476.P8014887451206918727

`A008486(n)+A315260(n)-A008576(n)`
-/

namespace A315476.P8014887451206918727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315260 n - A008576 n)

end

end A315476.P8014887451206918727

namespace A315476

/-- `A008486(n)+A315260(n)-A008576(n)` -/
def P8014887451206918727.Spec : Prop :=
  ∀ n, P8014887451206918727.a n = A315476 n

end A315476

/-! ## A315476.P14596924084840572793

`A315540(n)-A047513(n+1)+n`
-/

namespace A315476.P14596924084840572793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315540 n - A047513 (n + 1) + (n : ℤ)

end

end A315476.P14596924084840572793

namespace A315476

/-- `A315540(n)-A047513(n+1)+n` -/
def P14596924084840572793.Spec : Prop :=
  ∀ n, P14596924084840572793.a n = A315476 n

end A315476

/-! ## A315476.P1058667770317697630

`A315751(n)-A047273(n+1)+n`
-/

namespace A315476.P1058667770317697630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315751 n - A047273 (n + 1) + (n : ℤ)

end

end A315476.P1058667770317697630

namespace A315476

/-- `A315751(n)-A047273(n+1)+n` -/
def P1058667770317697630.Spec : Prop :=
  ∀ n, P1058667770317697630.a n = A315476 n

end A315476

/-! ## A315476.P5859406834499040881

`A004525(A314893(n))+3*n`
-/

namespace A315476.P5859406834499040881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314893 n).toNat + (3 * n : ℤ)

end

end A315476.P5859406834499040881

namespace A315476

/-- `A004525(A314893(n))+3*n` -/
def P5859406834499040881.Spec : Prop :=
  ∀ n, P5859406834499040881.a n = A315476 n

end A315476

/-! ## A315476.P1702565328669835229

`A004396(A315246(n))+2*n`
-/

namespace A315476.P1702565328669835229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315246 n).toNat + (2 * n : ℤ)

end

end A315476.P1702565328669835229

namespace A315476

/-- `A004396(A315246(n))+2*n` -/
def P1702565328669835229.Spec : Prop :=
  ∀ n, P1702565328669835229.a n = A315476 n

end A315476

/-! ## A315476.P12500659836058178766

`A004396(A301708(n)+n)+n`
-/

namespace A315476.P12500659836058178766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A301708 n + (n : ℤ)).toNat + (n : ℤ)

end

end A315476.P12500659836058178766

namespace A315476

/-- `A004396(A301708(n)+n)+n` -/
def P12500659836058178766.Spec : Prop :=
  ∀ n, P12500659836058178766.a n = A315476 n

end A315476

/-! ## A315476.P12925728950655882783

`A004396(A315522(n)+n)+n`
-/

namespace A315476.P12925728950655882783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315522 n + (n : ℤ)).toNat + (n : ℤ)

end

end A315476.P12925728950655882783

namespace A315476

/-- `A004396(A315522(n)+n)+n` -/
def P12925728950655882783.Spec : Prop :=
  ∀ n, P12925728950655882783.a n = A315476 n

end A315476

/-! ## A315476.P3125276726523252717

`A004396(2*A314683(n)-A004396(n))`
-/

namespace A315476.P3125276726523252717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (2 * A314683 n - A004396 n).toNat

end

end A315476.P3125276726523252717

namespace A315476

/-- `A004396(2*A314683(n)-A004396(n))` -/
def P3125276726523252717.Spec : Prop :=
  ∀ n, P3125276726523252717.a n = A315476 n

end A315476

/-! ## A315476.P7529729973831299515

`A004396(A314683(n)-(A004396(n)-A314683(n)))`
-/

namespace A315476.P7529729973831299515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A314683 n - (A004396 n - A314683 n)).toNat

end

end A315476.P7529729973831299515

namespace A315476

/-- `A004396(A314683(n)-(A004396(n)-A314683(n)))` -/
def P7529729973831299515.Spec : Prop :=
  ∀ n, P7529729973831299515.a n = A315476 n

end A315476

/-! ## A315476.P17035260459912482270

`A004525(A310410(2*n))+A004525(n)`
-/

namespace A315476.P17035260459912482270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310410 (2 * n)).toNat + A004525 n

end

end A315476.P17035260459912482270

namespace A315476

/-- `A004525(A310410(2*n))+A004525(n)` -/
def P17035260459912482270.Spec : Prop :=
  ∀ n, P17035260459912482270.a n = A315476 n

end A315476

/-! ## A315476.P16322596725459368326

`A004525(A310452(2*n))+A004525(n)`
-/

namespace A315476.P16322596725459368326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310452 (2 * n)).toNat + A004525 n

end

end A315476.P16322596725459368326

namespace A315476

/-- `A004525(A310452(2*n))+A004525(n)` -/
def P16322596725459368326.Spec : Prop :=
  ∀ n, P16322596725459368326.a n = A315476 n

end A315476

/-!
# A315477: Coordination sequence Gal.5.293.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315477, the canonical program `A315477.P4525225836019069653` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315477 has offset 0).

The definition of A315477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A315477.P4525225836019069653

`a(n-5)+27` with `a(0)=1, a(1)=6, a(2)=11, a(3)=16, a(4)=21, a(5)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A315477

/-- `a(n-5)+27` -/
def P4525225836019069653.Spec : Prop :=
  ∀ n, (P4525225836019069653.a n : ℤ) = A315477 n

theorem P4525225836019069653.correct : P4525225836019069653.Spec := by
  intro n
  simp only [A315477]

end A315477

/-! ## A315477.P5739928950667038061

`A314685(n)+n`
-/

namespace A315477.P5739928950667038061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314685 n + (n : ℤ)

end

end A315477.P5739928950667038061

namespace A315477

/-- `A314685(n)+n` -/
def P5739928950667038061.Spec : Prop :=
  ∀ n, P5739928950667038061.a n = A315477 n

end A315477

/-! ## A315477.P4120301199601661029

`A072154(n)+3*n`
-/

namespace A315477.P4120301199601661029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + (3 * n : ℤ)

end

end A315477.P4120301199601661029

namespace A315477

/-- `A072154(n)+3*n` -/
def P4120301199601661029.Spec : Prop :=
  ∀ n, P4120301199601661029.a n = A315477 n

end A315477

/-! ## A315477.P5403720827228645135

`A250120(3*n)-9*n`
-/

namespace A315477.P5403720827228645135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (3 * n) - (9 * n : ℤ)

end

end A315477.P5403720827228645135

namespace A315477

/-- `A250120(3*n)-9*n` -/
def P5403720827228645135.Spec : Prop :=
  ∀ n, P5403720827228645135.a n = A315477 n

end A315477

/-! ## A315477.P1953322233781824933

`A314188(n)+A101455(n)`
-/

namespace A315477.P1953322233781824933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314188 n + A101455 n

end

end A315477.P1953322233781824933

namespace A315477

/-- `A314188(n)+A101455(n)` -/
def P1953322233781824933.Spec : Prop :=
  ∀ n, P1953322233781824933.a n = A315477 n

end A315477

/-! ## A315477.P10025145073254690120

`A314670(n)+A151988(n)`
-/

namespace A315477.P10025145073254690120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314670 n + A151988 n

end

end A315477.P10025145073254690120

namespace A315477

/-- `A314670(n)+A151988(n)` -/
def P10025145073254690120.Spec : Prop :=
  ∀ n, P10025145073254690120.a n = A315477 n

end A315477

/-! ## A315477.P10870436451953792246

`A047363(n+1)+A008574(n)`
-/

namespace A315477.P10870436451953792246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047363 (n + 1) + A008574 n

end

end A315477.P10870436451953792246

namespace A315477

/-- `A047363(n+1)+A008574(n)` -/
def P10870436451953792246.Spec : Prop :=
  ∀ n, P10870436451953792246.a n = A315477 n

end A315477

/-! ## A315477.P10356671268273710026

`A047486(A008574(n)+1)-n`
-/

namespace A315477.P10356671268273710026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A008574 n + 1).toNat - (n : ℤ)

end

end A315477.P10356671268273710026

namespace A315477

/-- `A047486(A008574(n)+1)-n` -/
def P10356671268273710026.Spec : Prop :=
  ∀ n, P10356671268273710026.a n = A315477 n

end A315477

/-! ## A315477.P14136503933114548217

`(A315187(n)+A008458(n))/2`
-/

namespace A315477.P14136503933114548217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315187 n + A008458 n : ℚ) / 2

end

end A315477.P14136503933114548217

namespace A315477

/-- `(A315187(n)+A008458(n))/2` -/
def P14136503933114548217.Spec : Prop :=
  ∀ n, P14136503933114548217.a n = (A315477 n : ℚ)

end A315477

/-! ## A315477.P4318853781447527574

`A005843(n)+A072154(n)+n`
-/

namespace A315477.P4318853781447527574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A072154 n + (n : ℤ))

end

end A315477.P4318853781447527574

namespace A315477

/-- `A005843(n)+A072154(n)+n` -/
def P4318853781447527574.Spec : Prop :=
  ∀ n, P4318853781447527574.a n = A315477 n

end A315477

/-! ## A315477.P15348985503433726786

`A134667(n)+A312907(n)+n`
-/

namespace A315477.P15348985503433726786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A312907 n + (n : ℤ))

end

end A315477.P15348985503433726786

namespace A315477

/-- `A134667(n)+A312907(n)+n` -/
def P15348985503433726786.Spec : Prop :=
  ∀ n, P15348985503433726786.a n = A315477 n

end A315477

/-! ## A315477.P5745932981944734944

`A244895(n)+A312475(n)+n`
-/

namespace A315477.P5745932981944734944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 n + (A312475 n + (n : ℤ))

end

end A315477.P5745932981944734944

namespace A315477

/-- `A244895(n)+A312475(n)+n` -/
def P5745932981944734944.Spec : Prop :=
  ∀ n, P5745932981944734944.a n = A315477 n

end A315477

/-! ## A315477.P10243923297965074096

`A311384(n)+A330025(n)+n`
-/

namespace A315477.P10243923297965074096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311384 n + (A330025 n + (n : ℤ))

end

end A315477.P10243923297965074096

namespace A315477

/-- `A311384(n)+A330025(n)+n` -/
def P10243923297965074096.Spec : Prop :=
  ∀ n, P10243923297965074096.a n = A315477 n

end A315477

/-! ## A315477.P11258590356390398930

`A314188(n)+n-A201629(n)`
-/

namespace A315477.P11258590356390398930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314188 n + ((n : ℤ) - A201629 n)

end

end A315477.P11258590356390398930

namespace A315477

/-- `A314188(n)+n-A201629(n)` -/
def P11258590356390398930.Spec : Prop :=
  ∀ n, P11258590356390398930.a n = A315477 n

end A315477

/-! ## A315477.P6897993877004017791

`A315171(n)+n-A330025(n)`
-/

namespace A315477.P6897993877004017791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315171 n + ((n : ℤ) - A330025 n)

end

end A315477.P6897993877004017791

namespace A315477

/-- `A315171(n)+n-A330025(n)` -/
def P6897993877004017791.Spec : Prop :=
  ∀ n, P6897993877004017791.a n = A315477 n

end A315477

/-! ## A315477.P16109416685214099482

`A047412(Δ[A005893(n)])-(n+1)`
-/

namespace A315477.P16109416685214099482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047412 (f1 (n + 1) - f1 n).toNat - (n + 1 : ℤ)

end

end A315477.P16109416685214099482

namespace A315477

/-- `A047412(Δ[A005893(n)])-(n+1)` -/
def P16109416685214099482.Spec : Prop :=
  ∀ n, P16109416685214099482.a n = A315477 n

end A315477

/-! ## A315477.P3232130767080989805

`A047309(n+1)+A004273(2*n)`
-/

namespace A315477.P3232130767080989805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047309 (n + 1) + A004273 (2 * n)

end

end A315477.P3232130767080989805

namespace A315477

/-- `A047309(n+1)+A004273(2*n)` -/
def P3232130767080989805.Spec : Prop :=
  ∀ n, P3232130767080989805.a n = A315477 n

end A315477

/-! ## A315477.P16324204708337320267

`A047486(A004280(2*(n+1)))-n`
-/

namespace A315477.P16324204708337320267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (A004280 (2 * (n + 1))).toNat - (n : ℤ)

end

end A315477.P16324204708337320267

namespace A315477

/-- `A047486(A004280(2*(n+1)))-n` -/
def P16324204708337320267.Spec : Prop :=
  ∀ n, P16324204708337320267.a n = A315477 n

end A315477

/-! ## A315477.P9192733777338060526

`A313975(n)+A244895(n)`
-/

namespace A315477.P9192733777338060526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313975 n + A244895 n

end

end A315477.P9192733777338060526

namespace A315477

/-- `A313975(n)+A244895(n)` -/
def P9192733777338060526.Spec : Prop :=
  ∀ n, P9192733777338060526.a n = A315477 n

end A315477

/-! ## A315477.P8193525896446381469

`A180004(A315418(n))`
-/

namespace A315477.P8193525896446381469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180004 (A315418 n).toNat

end

end A315477.P8193525896446381469

namespace A315477

/-- `A180004(A315418(n))` -/
def P8193525896446381469.Spec : Prop :=
  ∀ n, P8193525896446381469.a n = A315477 n

end A315477

/-!
# A315478: Coordination sequence Gal.6.209.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315478, the canonical program `A315478.P13307919099686245578` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315478 has offset 0).

The definition of A315478 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315478.P13307919099686245578

`A315426(n)+Δ[A011864(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315478

/-- `A315426(n)+Δ[A011864(n)]` -/
def P13307919099686245578.Spec : Prop :=
  ∀ n, P13307919099686245578.a n = A315478 n

theorem P13307919099686245578.correct : P13307919099686245578.Spec := by
  intro n
  simp only [A315478]

end A315478

/-! ## A315478.P13385177571973796939

`(A315188(n)+A008458(n))/2`
-/

namespace A315478.P13385177571973796939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315188 n + A008458 n : ℚ) / 2

end

end A315478.P13385177571973796939

namespace A315478

/-- `(A315188(n)+A008458(n))/2` -/
def P13385177571973796939.Spec : Prop :=
  ∀ n, P13385177571973796939.a n = (A315478 n : ℚ)

end A315478

/-! ## A315478.P603515331695313592

`floor((A315188(n)+A016921(n))/2)`
-/

namespace A315478.P603515331695313592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A315188 n + A016921 n : ℚ) / 2⌋

end

end A315478.P603515331695313592

namespace A315478

/-- `floor((A315188(n)+A016921(n))/2)` -/
def P603515331695313592.Spec : Prop :=
  ∀ n, P603515331695313592.a n = A315478 n

end A315478

/-! ## A315478.P8416619998066270368

`A008458(n)-A004526(A008458(n)-A315188(n))`
-/

namespace A315478.P8416619998066270368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315188 n).toNat

end

end A315478.P8416619998066270368

namespace A315478

/-- `A008458(n)-A004526(A008458(n)-A315188(n))` -/
def P8416619998066270368.Spec : Prop :=
  ∀ n, P8416619998066270368.a n = A315478 n

end A315478

/-! ## A315478.P14279979272260138300

`A008486(n)+A004526(A315188(n))`
-/

namespace A315478.P14279979272260138300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315188 n).toNat

end

end A315478.P14279979272260138300

namespace A315478

/-- `A008486(n)+A004526(A315188(n))` -/
def P14279979272260138300.Spec : Prop :=
  ∀ n, P14279979272260138300.a n = A315478 n

end A315478

/-! ## A315478.P16201529915184703257

`abs(10*n-A313089(n))`
-/

namespace A315478.P16201529915184703257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313089 n|

end

end A315478.P16201529915184703257

namespace A315478

/-- `abs(10*n-A313089(n))` -/
def P16201529915184703257.Spec : Prop :=
  ∀ n, P16201529915184703257.a n = A315478 n

end A315478

/-! ## A315478.P15075504297179254151

`2*A008706(n)-A313089(n)`
-/

namespace A315478.P15075504297179254151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313089 n

end

end A315478.P15075504297179254151

namespace A315478

/-- `2*A008706(n)-A313089(n)` -/
def P15075504297179254151.Spec : Prop :=
  ∀ n, P15075504297179254151.a n = A315478 n

end A315478

/-! ## A315478.P4043201157418090782

`(10*n-A313089(n))^ceil(n/A087373(n+1))`
-/

namespace A315478.P4043201157418090782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * n : ℤ) - A313089 n : ℚ) ^ (⌈(n : ℚ) / (A087373 (n + 1) : ℚ)⌉ : ℤ)

end

end A315478.P4043201157418090782

namespace A315478

/-- `(10*n-A313089(n))^ceil(n/A087373(n+1))` -/
def P4043201157418090782.Spec : Prop :=
  ∀ n, P4043201157418090782.a n = (A315478 n : ℚ)

end A315478

/-! ## A315478.P13059215552478706551

`A005843(A008706(n))-A313089(n)`
-/

namespace A315478.P13059215552478706551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313089 n

end

end A315478.P13059215552478706551

namespace A315478

/-- `A005843(A008706(n))-A313089(n)` -/
def P13059215552478706551.Spec : Prop :=
  ∀ n, P13059215552478706551.a n = A315478 n

end A315478

/-! ## A315478.P6745953512771009852

`A005843(A008574(n)+n)-A313089(n)`
-/

namespace A315478.P6745953512771009852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313089 n

end

end A315478.P6745953512771009852

namespace A315478

/-- `A005843(A008574(n)+n)-A313089(n)` -/
def P6745953512771009852.Spec : Prop :=
  ∀ n, P6745953512771009852.a n = A315478 n

end A315478

/-! ## A315478.P11341392876049574989

`A008458(n)+A008574(n)-A313089(n)`
-/

namespace A315478.P11341392876049574989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313089 n)

end

end A315478.P11341392876049574989

namespace A315478

/-- `A008458(n)+A008574(n)-A313089(n)` -/
def P11341392876049574989.Spec : Prop :=
  ∀ n, P11341392876049574989.a n = A315478 n

end A315478

/-! ## A315478.P5764563042306575634

`A008574(2*n)-A004526(A310517(n))`
-/

namespace A315478.P5764563042306575634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A004526 (A310517 n).toNat

end

end A315478.P5764563042306575634

namespace A315478

/-- `A008574(2*n)-A004526(A310517(n))` -/
def P5764563042306575634.Spec : Prop :=
  ∀ n, P5764563042306575634.a n = A315478 n

end A315478

/-! ## A315478.P7988436486520668143

`2*A008574(n)-A004525(A310517(n))`
-/

namespace A315478.P7988436486520668143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A310517 n).toNat

end

end A315478.P7988436486520668143

namespace A315478

/-- `2*A008574(n)-A004525(A310517(n))` -/
def P7988436486520668143.Spec : Prop :=
  ∀ n, P7988436486520668143.a n = A315478 n

end A315478

/-! ## A315478.P15960348039586975215

`A313689(2*n)-4*n`
-/

namespace A315478.P15960348039586975215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313689 (2 * n) - (4 * n : ℤ)

end

end A315478.P15960348039586975215

namespace A315478

/-- `A313689(2*n)-4*n` -/
def P15960348039586975215.Spec : Prop :=
  ∀ n, P15960348039586975215.a n = A315478 n

end A315478

/-! ## A315478.P9389603895211595004

`2*A008574(2*n)-A313788(2*n)`
-/

namespace A315478.P9389603895211595004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313788 (2 * n)

end

end A315478.P9389603895211595004

namespace A315478

/-- `2*A008574(2*n)-A313788(2*n)` -/
def P9389603895211595004.Spec : Prop :=
  ∀ n, P9389603895211595004.a n = A315478 n

end A315478

/-! ## A315478.P12767173197125417003

`A004525(A315730(2*n))`
-/

namespace A315478.P12767173197125417003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315730 (2 * n)).toNat

end

end A315478.P12767173197125417003

namespace A315478

/-- `A004525(A315730(2*n))` -/
def P12767173197125417003.Spec : Prop :=
  ∀ n, P12767173197125417003.a n = A315478 n

end A315478

/-! ## A315478.P3412032292288993204

`A004525(A315740(2*n))`
-/

namespace A315478.P3412032292288993204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315740 (2 * n)).toNat

end

end A315478.P3412032292288993204

namespace A315478

/-- `A004525(A315740(2*n))` -/
def P3412032292288993204.Spec : Prop :=
  ∀ n, P3412032292288993204.a n = A315478 n

end A315478

/-! ## A315478.P5072740899937574263

`A004526(A315730(2*n)+1)`
-/

namespace A315478.P5072740899937574263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315730 (2 * n) + 1).toNat

end

end A315478.P5072740899937574263

namespace A315478

/-- `A004526(A315730(2*n)+1)` -/
def P5072740899937574263.Spec : Prop :=
  ∀ n, P5072740899937574263.a n = A315478 n

end A315478

/-! ## A315478.P17125156387678642280

`A004526(A315188(n)+A008458(n))`
-/

namespace A315478.P17125156387678642280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315188 n + A008458 n).toNat

end

end A315478.P17125156387678642280

namespace A315478

/-- `A004526(A315188(n)+A008458(n))` -/
def P17125156387678642280.Spec : Prop :=
  ∀ n, P17125156387678642280.a n = A315478 n

end A315478

/-!
# A315479: Coordination sequence Gal.6.210.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315479, the canonical program `A315479.P4180751109111946087` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315479 has offset 0).

The definition of A315479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315479.P5809173211486866620

`A314688(n)+n`
-/

namespace A315479.P5809173211486866620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314688 n + (n : ℤ)

end

end A315479.P5809173211486866620

namespace A315479

/-- `A314688(n)+n` -/
def P5809173211486866620.Spec : Prop :=
  ∀ n, P5809173211486866620.a n = A315479 n

end A315479

/-! ## A315479.P4180751109111946087

`A313698(n)+A004525(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315479

/-- `A313698(n)+A004525(n)` -/
def P4180751109111946087.Spec : Prop :=
  ∀ n, P4180751109111946087.a n = A315479 n

theorem P4180751109111946087.correct : P4180751109111946087.Spec := by
  intro n
  simp only [A315479]

end A315479

/-! ## A315479.P7766419645955319241

`abs(A008592(n)-A313088(n))`
-/

namespace A315479.P7766419645955319241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313088 n|

end

end A315479.P7766419645955319241

namespace A315479

/-- `abs(A008592(n)-A313088(n))` -/
def P7766419645955319241.Spec : Prop :=
  ∀ n, P7766419645955319241.a n = A315479 n

end A315479

/-! ## A315479.P9188702493351245186

`A311257(n)+A047424(n+1)`
-/

namespace A315479.P9188702493351245186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311257 n + A047424 (n + 1)

end

end A315479.P9188702493351245186

namespace A315479

/-- `A311257(n)+A047424(n+1)` -/
def P9188702493351245186.Spec : Prop :=
  ∀ n, P9188702493351245186.a n = A315479 n

end A315479

/-! ## A315479.P11452310575598407274

`A128834(n)+A312123(n)+n`
-/

namespace A315479.P11452310575598407274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A312123 n + (n : ℤ))

end

end A315479.P11452310575598407274

namespace A315479

/-- `A128834(n)+A312123(n)+n` -/
def P11452310575598407274.Spec : Prop :=
  ∀ n, P11452310575598407274.a n = A315479 n

end A315479

/-! ## A315479.P8168351008259469769

`A134667(n)+A312909(n)+n`
-/

namespace A315479.P8168351008259469769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n + (A312909 n + (n : ℤ))

end

end A315479.P8168351008259469769

namespace A315479

/-- `A134667(n)+A312909(n)+n` -/
def P8168351008259469769.Spec : Prop :=
  ∀ n, P8168351008259469769.a n = A315479 n

end A315479

/-! ## A315479.P11272899582520833952

`A005843(n)-(n-A314688(n))`
-/

namespace A315479.P11272899582520833952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A314688 n)

end

end A315479.P11272899582520833952

namespace A315479

/-- `A005843(n)-(n-A314688(n))` -/
def P11272899582520833952.Spec : Prop :=
  ∀ n, P11272899582520833952.a n = A315479 n

end A315479

/-! ## A315479.P4277028548752792940

`A313739(n)+A004396(A004525(n))`
-/

namespace A315479.P4277028548752792940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313739 n + A004396 (A004525 n).toNat

end

end A315479.P4277028548752792940

namespace A315479

/-- `A313739(n)+A004396(A004525(n))` -/
def P4277028548752792940.Spec : Prop :=
  ∀ n, P4277028548752792940.a n = A315479 n

end A315479

/-! ## A315479.P6401492449538356731

`A008706(n)+A004525(A128834(n)+n)`
-/

namespace A315479.P6401492449538356731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n + A004525 (A128834 n + (n : ℤ)).toNat

end

end A315479.P6401492449538356731

namespace A315479

/-- `A008706(n)+A004525(A128834(n)+n)` -/
def P6401492449538356731.Spec : Prop :=
  ∀ n, P6401492449538356731.a n = A315479 n

end A315479

/-! ## A315479.P11561621399715795144

`A008587(n)+A004525(A163806(n)+n)`
-/

namespace A315479.P11561621399715795144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + A004525 (A163806 n + (n : ℤ)).toNat

end

end A315479.P11561621399715795144

namespace A315479

/-- `A008587(n)+A004525(A163806(n)+n)` -/
def P11561621399715795144.Spec : Prop :=
  ∀ n, P11561621399715795144.a n = A315479 n

end A315479

/-! ## A315479.P11232335064437025931

`A008458(n)+A008574(n)-A313088(n)`
-/

namespace A315479.P11232335064437025931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313088 n)

end

end A315479.P11232335064437025931

namespace A315479

/-- `A008458(n)+A008574(n)-A313088(n)` -/
def P11232335064437025931.Spec : Prop :=
  ∀ n, P11232335064437025931.a n = A315479 n

end A315479

/-! ## A315479.P3955190107995444136

`A004525(A004396(n))+A313057(n)+A004525(n)`
-/

namespace A315479.P3955190107995444136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A004396 n).toNat + (A313057 n + A004525 n)

end

end A315479.P3955190107995444136

namespace A315479

/-- `A004525(A004396(n))+A313057(n)+A004525(n)` -/
def P3955190107995444136.Spec : Prop :=
  ∀ n, P3955190107995444136.a n = A315479 n

end A315479

/-! ## A315479.P2782108946484785080

`A313924(n)+A128834(n)`
-/

namespace A315479.P2782108946484785080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n + A128834 n

end

end A315479.P2782108946484785080

namespace A315479

/-- `A313924(n)+A128834(n)` -/
def P2782108946484785080.Spec : Prop :=
  ∀ n, P2782108946484785080.a n = A315479 n

end A315479

/-! ## A315479.P559691379537149108

`A313924(n)-A010892(n+2)`
-/

namespace A315479.P559691379537149108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n - A010892 (n + 2)

end

end A315479.P559691379537149108

namespace A315479

/-- `A313924(n)-A010892(n+2)` -/
def P559691379537149108.Spec : Prop :=
  ∀ n, P559691379537149108.a n = A315479 n

end A315479

/-! ## A315479.P1068198049194597941

`A313924(n)+A046978(A004396(2*n))`
-/

namespace A315479.P1068198049194597941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313924 n + A046978 (A004396 (2 * n)).toNat

end

end A315479.P1068198049194597941

namespace A315479

/-- `A313924(n)+A046978(A004396(2*n))` -/
def P1068198049194597941.Spec : Prop :=
  ∀ n, P1068198049194597941.a n = A315479 n

end A315479

/-! ## A315479.P7045504281844427322

`A315549(n)-A047513(n+1)+n`
-/

namespace A315479.P7045504281844427322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315549 n - A047513 (n + 1) + (n : ℤ)

end

end A315479.P7045504281844427322

namespace A315479

/-- `A315549(n)-A047513(n+1)+n` -/
def P7045504281844427322.Spec : Prop :=
  ∀ n, P7045504281844427322.a n = A315479 n

end A315479

/-! ## A315479.P11507850252451178057

`A004525(A314742(n))+3*n`
-/

namespace A315479.P11507850252451178057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314742 n).toNat + (3 * n : ℤ)

end

end A315479.P11507850252451178057

namespace A315479

/-- `A004525(A314742(n))+3*n` -/
def P11507850252451178057.Spec : Prop :=
  ∀ n, P11507850252451178057.a n = A315479 n

end A315479

/-! ## A315479.P16457928817739858212

`A004525(A314903(n))+3*n`
-/

namespace A315479.P16457928817739858212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A314903 n).toNat + (3 * n : ℤ)

end

end A315479.P16457928817739858212

namespace A315479

/-- `A004525(A314903(n))+3*n` -/
def P16457928817739858212.Spec : Prop :=
  ∀ n, P16457928817739858212.a n = A315479 n

end A315479

/-! ## A315479.P2034153597426956508

`A004525(A313533(2*n))+n`
-/

namespace A315479.P2034153597426956508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313533 (2 * n)).toNat + (n : ℤ)

end

end A315479.P2034153597426956508

namespace A315479

/-- `A004525(A313533(2*n))+n` -/
def P2034153597426956508.Spec : Prop :=
  ∀ n, P2034153597426956508.a n = A315479 n

end A315479

/-! ## A315479.P18236744679640140466

`A004525(A313680(2*n))+n`
-/

namespace A315479.P18236744679640140466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313680 (2 * n)).toNat + (n : ℤ)

end

end A315479.P18236744679640140466

namespace A315479

/-- `A004525(A313680(2*n))+n` -/
def P18236744679640140466.Spec : Prop :=
  ∀ n, P18236744679640140466.a n = A315479 n

end A315479

/-!
# A315480: Coordination sequence Gal.6.671.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315480, there is no canonical definition to state claims against.
-/

/-! ## A315480.P8455520080344980599

`A315475(n)+A093956(A192933(n+1))`
-/

namespace A315480.P8455520080344980599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + A093956 (A192933 (n + 1)).toNat

end

end A315480.P8455520080344980599

/-! ## A315480.P3122500257124350909

`A315475(n)+A060838(A148055(n))`
-/

namespace A315480.P3122500257124350909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315475 n + A060838 (A148055 n).toNat

end

end A315480.P3122500257124350909

/-! ## A315480.P10722673389362482423

`A301708(n)-A055641(A000740(n+4))`
-/

namespace A315480.P10722673389362482423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n - A055641 (A000740 (n + 4)).toNat

end

end A315480.P10722673389362482423

/-! ## A315480.P1537022621873550399

`A276872(n+1)-A075213(A057568(n+1))`
-/

namespace A315480.P1537022621873550399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276872 (n + 1) - A075213 (A057568 (n + 1)).toNat

end

end A315480.P1537022621873550399

/-! ## A315480.P8026126510556298225

`A315416(n)+A001221(A080635(n))`
-/

namespace A315480.P8026126510556298225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315416 n + A001221 (A080635 n).toNat

end

end A315480.P8026126510556298225

/-!
# A315481: Coordination sequence Gal.5.139.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315481, the canonical program `A315481.P74549118950222558` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315481 has offset 0).

The definition of A315481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315481.P11951586680867218700

`abs(10*n-A313078(n))`
-/

namespace A315481.P11951586680867218700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313078 n|

end

end A315481.P11951586680867218700

namespace A315481

/-- `abs(10*n-A313078(n))` -/
def P11951586680867218700.Spec : Prop :=
  ∀ n, P11951586680867218700.a n = A315481 n

end A315481

/-! ## A315481.P74549118950222558

`A330025(n)+A313782(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A315481

/-- `A330025(n)+A313782(n)` -/
def P74549118950222558.Spec : Prop :=
  ∀ n, P74549118950222558.a n = A315481 n

theorem P74549118950222558.correct : P74549118950222558.Spec := by
  intro n
  simp only [A315481]

end A315481

/-! ## A315481.P11735275389070867334

`A315255(n)+Δ[A011858(n)]`
-/

namespace A315481.P11735275389070867334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011858 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n + (f1 (n + 1) - f1 n)

end

end A315481.P11735275389070867334

namespace A315481

/-- `A315255(n)+Δ[A011858(n)]` -/
def P11735275389070867334.Spec : Prop :=
  ∀ n, P11735275389070867334.a n = A315481 n

end A315481

/-! ## A315481.P9515629469591229620

`A315255(n)+A057354(n+1)`
-/

namespace A315481.P9515629469591229620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n + A057354 (n + 1)

end

end A315481.P9515629469591229620

namespace A315481

/-- `A315255(n)+A057354(n+1)` -/
def P9515629469591229620.Spec : Prop :=
  ∀ n, P9515629469591229620.a n = A315481 n

end A315481

/-! ## A315481.P14605827970620500230

`A315255(n)+A134119(2*n)`
-/

namespace A315481.P14605827970620500230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315255 n + A134119 (2 * n)

end

end A315481.P14605827970620500230

namespace A315481

/-- `A315255(n)+A134119(2*n)` -/
def P14605827970620500230.Spec : Prop :=
  ∀ n, P14605827970620500230.a n = A315481 n

end A315481

/-! ## A315481.P3565730923287837577

`A313154(n)+2*A330025(n)`
-/

namespace A315481.P3565730923287837577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313154 n + 2 * A330025 n

end

end A315481.P3565730923287837577

namespace A315481

/-- `A313154(n)+2*A330025(n)` -/
def P3565730923287837577.Spec : Prop :=
  ∀ n, P3565730923287837577.a n = A315481 n

end A315481

/-! ## A315481.P8706746367807543578

`2*A008706(n)-A313078(n)`
-/

namespace A315481.P8706746367807543578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313078 n

end

end A315481.P8706746367807543578

namespace A315481

/-- `2*A008706(n)-A313078(n)` -/
def P8706746367807543578.Spec : Prop :=
  ∀ n, P8706746367807543578.a n = A315481 n

end A315481

/-! ## A315481.P13765493031976381488

`A311440(n)+A330025(n)+n`
-/

namespace A315481.P13765493031976381488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + (A330025 n + (n : ℤ))

end

end A315481.P13765493031976381488

namespace A315481

/-- `A311440(n)+A330025(n)+n` -/
def P13765493031976381488.Spec : Prop :=
  ∀ n, P13765493031976381488.a n = A315481 n

end A315481

/-! ## A315481.P15665747405671924916

`A008458(n)+A008574(n)-A313078(n)`
-/

namespace A315481.P15665747405671924916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313078 n)

end

end A315481.P15665747405671924916

namespace A315481

/-- `A008458(n)+A008574(n)-A313078(n)` -/
def P15665747405671924916.Spec : Prop :=
  ∀ n, P15665747405671924916.a n = A315481 n

end A315481

/-! ## A315481.P5739699341906888855

`A330025(n-A330025(n))+A315275(n)`
-/

namespace A315481.P5739699341906888855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 ((n : ℤ) - A330025 n).toNat + A315275 n

end

end A315481.P5739699341906888855

namespace A315481

/-- `A330025(n-A330025(n))+A315275(n)` -/
def P5739699341906888855.Spec : Prop :=
  ∀ n, P5739699341906888855.a n = A315481 n

end A315481

/-! ## A315481.P1922568511609596168

`A005843(A008706(n))-A313078(n)`
-/

namespace A315481.P1922568511609596168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313078 n

end

end A315481.P1922568511609596168

namespace A315481

/-- `A005843(A008706(n))-A313078(n)` -/
def P1922568511609596168.Spec : Prop :=
  ∀ n, P1922568511609596168.a n = A315481 n

end A315481

/-! ## A315481.P16786659631821238512

`A310464(A008574(n))/2-A310464(n)`
-/

namespace A315481.P16786659631821238512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310464 (A008574 n).toNat : ℚ) / 2 - (A310464 n : ℚ)

end

end A315481.P16786659631821238512

namespace A315481

/-- `A310464(A008574(n))/2-A310464(n)` -/
def P16786659631821238512.Spec : Prop :=
  ∀ n, P16786659631821238512.a n = (A315481 n : ℚ)

end A315481

/-!
# A315482: Coordination sequence Gal.6.347.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315482, the canonical program `A315482.P9070662695746242756` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315482 has offset 0).

The definition of A315482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315482.P9070662695746242756

`A313533(n)+A004396(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315482

/-- `A313533(n)+A004396(n)` -/
def P9070662695746242756.Spec : Prop :=
  ∀ n, P9070662695746242756.a n = A315482 n

theorem P9070662695746242756.correct : P9070662695746242756.Spec := by
  intro n
  simp only [A315482]

end A315482

/-! ## A315482.P10794162933566545003

`abs(A008592(n)-A313076(n))`
-/

namespace A315482.P10794162933566545003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313076 n|

end

end A315482.P10794162933566545003

namespace A315482

/-- `abs(A008592(n)-A313076(n))` -/
def P10794162933566545003.Spec : Prop :=
  ∀ n, P10794162933566545003.a n = A315482 n

end A315482

/-! ## A315482.P4364925946529517845

`A315697(n)-∑[A022003(n)]`
-/

namespace A315482.P4364925946529517845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315482.P4364925946529517845

namespace A315482

/-- `A315697(n)-∑[A022003(n)]` -/
def P4364925946529517845.Spec : Prop :=
  ∀ n, P4364925946529517845.a n = A315482 n

end A315482

/-! ## A315482.P2446736930662916905

`A315697(n)-A002264(n+1)`
-/

namespace A315482.P2446736930662916905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 n - A002264 (n + 1)

end

end A315482.P2446736930662916905

namespace A315482

/-- `A315697(n)-A002264(n+1)` -/
def P2446736930662916905.Spec : Prop :=
  ∀ n, P2446736930662916905.a n = A315482 n

end A315482

/-! ## A315482.P16502187368069977299

`A004396(n)+A315697(n)-n`
-/

namespace A315482.P16502187368069977299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315697 n - (n : ℤ))

end

end A315482.P16502187368069977299

namespace A315482

/-- `A004396(n)+A315697(n)-n` -/
def P16502187368069977299.Spec : Prop :=
  ∀ n, P16502187368069977299.a n = A315482 n

end A315482

/-! ## A315482.P1269279961011450042

`A313533(n)+n-∑[A022003(n)]`
-/

namespace A315482.P1269279961011450042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315482.P1269279961011450042

namespace A315482

/-- `A313533(n)+n-∑[A022003(n)]` -/
def P1269279961011450042.Spec : Prop :=
  ∀ n, P1269279961011450042.a n = A315482 n

end A315482

/-! ## A315482.P402001177440426237

`A313533(n)+A002264(2*n+1)`
-/

namespace A315482.P402001177440426237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + A002264 (2 * n + 1)

end

end A315482.P402001177440426237

namespace A315482

/-- `A313533(n)+A002264(2*n+1)` -/
def P402001177440426237.Spec : Prop :=
  ∀ n, P402001177440426237.a n = A315482 n

end A315482

/-! ## A315482.P2418668028181173968

`A313533(n)+A004525(A004773(n))`
-/

namespace A315482.P2418668028181173968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313533 n + A004525 (A004773 n).toNat

end

end A315482.P2418668028181173968

namespace A315482

/-- `A313533(n)+A004525(A004773(n))` -/
def P2418668028181173968.Spec : Prop :=
  ∀ n, P2418668028181173968.a n = A315482 n

end A315482

/-! ## A315482.P6922225129633743514

`A008458(n)+A008574(n)-A313076(n)`
-/

namespace A315482.P6922225129633743514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313076 n)

end

end A315482.P6922225129633743514

namespace A315482

/-- `A008458(n)+A008574(n)-A313076(n)` -/
def P6922225129633743514.Spec : Prop :=
  ∀ n, P6922225129633743514.a n = A315482 n

end A315482

/-! ## A315482.P14923244583206766136

`A008576(n)+A315697(n)-A008486(n)`
-/

namespace A315482.P14923244583206766136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n + (A315697 n - A008486 n)

end

end A315482.P14923244583206766136

namespace A315482

/-- `A008576(n)+A315697(n)-A008486(n)` -/
def P14923244583206766136.Spec : Prop :=
  ∀ n, P14923244583206766136.a n = A315482 n

end A315482

/-! ## A315482.P10670384020224971189

`A315517(n)-Δ[A011865(n)]`
-/

namespace A315482.P10670384020224971189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315517 n - (f1 (n + 1) - f1 n)

end

end A315482.P10670384020224971189

namespace A315482

/-- `A315517(n)-Δ[A011865(n)]` -/
def P10670384020224971189.Spec : Prop :=
  ∀ n, P10670384020224971189.a n = A315482 n

end A315482

/-!
# A315483: Coordination sequence Gal.6.483.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315483, there is no canonical definition to state claims against.
-/

/-! ## A315483.P6451263264760045803

`A315701(n)-A058060(A124497(n))`
-/

namespace A315483.P6451263264760045803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 n - A058060 (A124497 n).toNat

end

end A315483.P6451263264760045803

/-! ## A315483.P2139845590428204351

`A311408(n)+record[A001222(A311777(n))]`
-/

namespace A315483.P2139845590428204351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A311777 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311408 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315483.P2139845590428204351

/-! ## A315483.P9311499928835960282

`A313789(n)+A010051(A007717(n))`
-/

namespace A315483.P9311499928835960282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313789 n + A010051 (A007717 n).toNat

end

end A315483.P9311499928835960282

/-! ## A315483.P17940063361827601704

`A315762(n)-A001221(A053617(n))`
-/

namespace A315483.P17940063361827601704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315762 n - A001221 (A053617 n).toNat

end

end A315483.P17940063361827601704

/-! ## A315483.P2788633978369697139

`A311407(n)+record[A001222(A313104(n))]`
-/

namespace A315483.P2788633978369697139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A313104 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311407 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A315483.P2788633978369697139

/-!
# A315484: Coordination sequence Gal.5.279.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315484, there is no canonical definition to state claims against.
-/

/-! ## A315484.P18325832857196825417

`(A315201(n)+A008458(n))/2`
-/

namespace A315484.P18325832857196825417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315201 n + A008458 n : ℚ) / 2

end

end A315484.P18325832857196825417

/-! ## A315484.P9627698223557510126

`A014682(A315201(n)+A008458(n))`
-/

namespace A315484.P9627698223557510126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A315201 n + A008458 n).toNat

end

end A315484.P9627698223557510126

/-! ## A315484.P10972305122693369484

`A008458(n)+A008579(n)-A313335(n)`
-/

namespace A315484.P10972305122693369484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008579 n - A313335 n)

end

end A315484.P10972305122693369484

/-! ## A315484.P2446096599138821544

`A315201(n)+A001281(A008458(n)-A315201(n))`
-/

namespace A315484.P2446096599138821544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315201 n + A001281 (A008458 n - A315201 n).toNat

end

end A315484.P2446096599138821544

/-! ## A315484.P17366612660132779431

`A315201(n)+A004525(A008458(n)-A315201(n))`
-/

namespace A315484.P17366612660132779431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315201 n + A004525 (A008458 n - A315201 n).toNat

end

end A315484.P17366612660132779431

/-! ## A315484.P2490189228865231590

`A008458(n)-A004526(A008458(n)-A315201(n))`
-/

namespace A315484.P2490189228865231590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315201 n).toNat

end

end A315484.P2490189228865231590

/-! ## A315484.P15809266250705393653

`A008486(n)+A004526(A315201(n))`
-/

namespace A315484.P15809266250705393653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315201 n).toNat

end

end A315484.P15809266250705393653

/-! ## A315484.P15390639004950176455

`A008585(n)+A004525(A315201(n))`
-/

namespace A315484.P15390639004950176455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315201 n).toNat

end

end A315484.P15390639004950176455

/-! ## A315484.P10360206969273252480

`A004525(A315201(n))+A008588(n)/2`
-/

namespace A315484.P10360206969273252480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004525 (A315201 n).toNat : ℚ) + (A008588 n : ℚ) / 2

end

end A315484.P10360206969273252480

/-! ## A315484.P8054189586657043662

`A004525(A008588(n))+A004525(A315201(n))`
-/

namespace A315484.P8054189586657043662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A008588 n).toNat + A004525 (A315201 n).toNat

end

end A315484.P8054189586657043662

/-! ## A315484.P5679339586626254876

`A065033(A315201(n)+6*n)`
-/

namespace A315484.P5679339586626254876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315201 n + (6 * n : ℤ)).toNat

end

end A315484.P5679339586626254876

/-! ## A315484.P12177303980960223316

`A001281(A315201(n)+A008458(n))`
-/

namespace A315484.P12177303980960223316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315201 n + A008458 n).toNat

end

end A315484.P12177303980960223316

/-! ## A315484.P6998760850754810386

`A004525(A315201(n)+A008458(n))`
-/

namespace A315484.P6998760850754810386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315201 n + A008458 n).toNat

end

end A315484.P6998760850754810386

/-! ## A315484.P7774921821699898477

`A004526(A315201(n)+A008458(n))`
-/

namespace A315484.P7774921821699898477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315201 n + A008458 n).toNat

end

end A315484.P7774921821699898477

/-! ## A315484.P762291828025029999

`A004525(A315201(n)+A008588(n))`
-/

namespace A315484.P762291828025029999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315201 n + A008588 n).toNat

end

end A315484.P762291828025029999

/-!
# A315485: Coordination sequence Gal.6.205.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315485, the canonical program `A315485.P8491301675403388189` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315485 has offset 0).

The definition of A315485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2314 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315485.P8491301675403388189

`A313717(n)+A004525(n)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A315485

/-- `A313717(n)+A004525(n)` -/
def P8491301675403388189.Spec : Prop :=
  ∀ n, P8491301675403388189.a n = A315485 n

theorem P8491301675403388189.correct : P8491301675403388189.Spec := by
  intro n
  simp only [A315485]

end A315485

/-! ## A315485.P16503116543371961411

`A314204(n)+A101455(n)`
-/

namespace A315485.P16503116543371961411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314204 n + A101455 n

end

end A315485.P16503116543371961411

namespace A315485

/-- `A314204(n)+A101455(n)` -/
def P16503116543371961411.Spec : Prop :=
  ∀ n, P16503116543371961411.a n = A315485 n

end A315485

/-! ## A315485.P6665623782571139383

`abs(A008592(n)-A313064(n))`
-/

namespace A315485.P6665623782571139383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313064 n|

end

end A315485.P6665623782571139383

namespace A315485

/-- `abs(A008592(n)-A313064(n))` -/
def P6665623782571139383.Spec : Prop :=
  ∀ n, P6665623782571139383.a n = A315485 n

end A315485

/-! ## A315485.P15282765962402675149

`A313717(n)+Δ[A054925(n)]`
-/

namespace A315485.P15282765962402675149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + (f1 (n + 1) - f1 n)

end

end A315485.P15282765962402675149

namespace A315485

/-- `A313717(n)+Δ[A054925(n)]` -/
def P15282765962402675149.Spec : Prop :=
  ∀ n, P15282765962402675149.a n = A315485 n

end A315485

/-! ## A315485.P16688518198236335538

`A313717(n)+n-∑[A021913(n)]`
-/

namespace A315485.P16688518198236335538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ((n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A315485.P16688518198236335538

namespace A315485

/-- `A313717(n)+n-∑[A021913(n)]` -/
def P16688518198236335538.Spec : Prop :=
  ∀ n, P16688518198236335538.a n = A315485 n

end A315485

/-! ## A315485.P6555166690624003959

`A313717(n)+n-Δ[A011848(n)]`
-/

namespace A315485.P6555166690624003959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313717 n + ((n : ℤ) - (f1 (n + 1) - f1 n))

end

end A315485.P6555166690624003959

namespace A315485

/-- `A313717(n)+n-Δ[A011848(n)]` -/
def P6555166690624003959.Spec : Prop :=
  ∀ n, P6555166690624003959.a n = A315485 n

end A315485

/-! ## A315485.P1520767921680321260

`A008458(n)+A008574(n)-A313064(n)`
-/

namespace A315485.P1520767921680321260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313064 n)

end

end A315485.P1520767921680321260

namespace A315485

/-- `A008458(n)+A008574(n)-A313064(n)` -/
def P1520767921680321260.Spec : Prop :=
  ∀ n, P1520767921680321260.a n = A315485 n

end A315485

/-! ## A315485.P13636526502581963844

`A315760(n)-∑[A021913(n)]`
-/

namespace A315485.P13636526502581963844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A315485.P13636526502581963844

namespace A315485

/-- `A315760(n)-∑[A021913(n)]` -/
def P13636526502581963844.Spec : Prop :=
  ∀ n, P13636526502581963844.a n = A315485 n

end A315485

/-! ## A315485.P13390477126563172444

`A315760(n)-Δ[A011848(n)]`
-/

namespace A315485.P13390477126563172444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - (f1 (n + 1) - f1 n)

end

end A315485.P13390477126563172444

namespace A315485

/-- `A315760(n)-Δ[A011848(n)]` -/
def P13390477126563172444.Spec : Prop :=
  ∀ n, P13390477126563172444.a n = A315485 n

end A315485

/-! ## A315485.P1418733149929723054

`A315760(n)-A004524(n+1)`
-/

namespace A315485.P1418733149929723054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315760 n - A004524 (n + 1)

end

end A315485.P1418733149929723054

namespace A315485

/-- `A315760(n)-A004524(n+1)` -/
def P1418733149929723054.Spec : Prop :=
  ∀ n, P1418733149929723054.a n = A315485 n

end A315485

/-! ## A315485.P7985342592430075866

`A004525(n)+A315760(n)-n`
-/

namespace A315485.P7985342592430075866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A315760 n - (n : ℤ))

end

end A315485.P7985342592430075866

namespace A315485

/-- `A004525(n)+A315760(n)-n` -/
def P7985342592430075866.Spec : Prop :=
  ∀ n, P7985342592430075866.a n = A315485 n

end A315485

/-! ## A315485.P7729724979596947323

`Δ[A054925(n)]+A315760(n)-n`
-/

namespace A315485.P7729724979596947323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A315760 n - (n : ℤ))

end

end A315485.P7729724979596947323

namespace A315485

/-- `Δ[A054925(n)]+A315760(n)-n` -/
def P7729724979596947323.Spec : Prop :=
  ∀ n, P7729724979596947323.a n = A315485 n

end A315485

/-!
# A315486: Coordination sequence Gal.6.330.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315486, the canonical program `A315486.P5118934210846291512` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315486 has offset 0).

The definition of A315486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315486.P10512054859645574843

`abs(A008592(n)-A313062(n))`
-/

namespace A315486.P10512054859645574843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313062 n|

end

end A315486.P10512054859645574843

namespace A315486

/-- `abs(A008592(n)-A313062(n))` -/
def P10512054859645574843.Spec : Prop :=
  ∀ n, P10512054859645574843.a n = A315486 n

end A315486

/-! ## A315486.P2607484569853163165

`2*A008706(n)-A313062(n)`
-/

namespace A315486.P2607484569853163165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313062 n

end

end A315486.P2607484569853163165

namespace A315486

/-- `2*A008706(n)-A313062(n)` -/
def P2607484569853163165.Spec : Prop :=
  ∀ n, P2607484569853163165.a n = A315486 n

end A315486

/-! ## A315486.P5118934210846291512

`2*A313730(n)-A313045(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315486

/-- `2*A313730(n)-A313045(n)` -/
def P5118934210846291512.Spec : Prop :=
  ∀ n, P5118934210846291512.a n = A315486 n

theorem P5118934210846291512.correct : P5118934210846291512.Spec := by
  intro n
  simp only [A315486]

end A315486

/-! ## A315486.P9414949850953279993

`A000038(n)+A008592(n)-A313062(n)`
-/

namespace A315486.P9414949850953279993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313062 n)

end

end A315486.P9414949850953279993

namespace A315486

/-- `A000038(n)+A008592(n)-A313062(n)` -/
def P9414949850953279993.Spec : Prop :=
  ∀ n, P9414949850953279993.a n = A315486 n

end A315486

/-! ## A315486.P15722130991911135200

`A008458(n)+A008574(n)-A313062(n)`
-/

namespace A315486.P15722130991911135200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313062 n)

end

end A315486.P15722130991911135200

namespace A315486

/-- `A008458(n)+A008574(n)-A313062(n)` -/
def P15722130991911135200.Spec : Prop :=
  ∀ n, P15722130991911135200.a n = A315486 n

end A315486

/-! ## A315486.P9912885551648476969

`A315326(n)+A004525(A315492(n)-A315326(n))`
-/

namespace A315486.P9912885551648476969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315326 n + A004525 (A315492 n - A315326 n).toNat

end

end A315486.P9912885551648476969

namespace A315486

/-- `A315326(n)+A004525(A315492(n)-A315326(n))` -/
def P9912885551648476969.Spec : Prop :=
  ∀ n, P9912885551648476969.a n = A315486 n

end A315486

/-! ## A315486.P4394939317489623926

`(A315754(n)+A315212(n))/2`
-/

namespace A315486.P4394939317489623926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315754 n + A315212 n : ℚ) / 2

end

end A315486.P4394939317489623926

namespace A315486

/-- `(A315754(n)+A315212(n))/2` -/
def P4394939317489623926.Spec : Prop :=
  ∀ n, P4394939317489623926.a n = (A315486 n : ℚ)

end A315486

/-! ## A315486.P10168898212280002152

`A315212(n)+A001281(A315754(n)-A315212(n))`
-/

namespace A315486.P10168898212280002152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315212 n + A001281 (A315754 n - A315212 n).toNat

end

end A315486.P10168898212280002152

namespace A315486

/-- `A315212(n)+A001281(A315754(n)-A315212(n))` -/
def P10168898212280002152.Spec : Prop :=
  ∀ n, P10168898212280002152.a n = A315486 n

end A315486

/-! ## A315486.P17260486214544088065

`A315521(n)-Δ[A011864(n)]`
-/

namespace A315486.P17260486214544088065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315521 n - (f1 (n + 1) - f1 n)

end

end A315486.P17260486214544088065

namespace A315486

/-- `A315521(n)-Δ[A011864(n)]` -/
def P17260486214544088065.Spec : Prop :=
  ∀ n, P17260486214544088065.a n = A315486 n

end A315486

/-! ## A315486.P4248462513903566688

`A005843(A313730(n))-A313045(n)`
-/

namespace A315486.P4248462513903566688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313730 n).toNat - A313045 n

end

end A315486.P4248462513903566688

namespace A315486

/-- `A005843(A313730(n))-A313045(n)` -/
def P4248462513903566688.Spec : Prop :=
  ∀ n, P4248462513903566688.a n = A315486 n

end A315486

/-! ## A315486.P3386291438176814399

`A005843(A008706(n))-A313062(n)`
-/

namespace A315486.P3386291438176814399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313062 n

end

end A315486.P3386291438176814399

namespace A315486

/-- `A005843(A008706(n))-A313062(n)` -/
def P3386291438176814399.Spec : Prop :=
  ∀ n, P3386291438176814399.a n = A315486 n

end A315486

/-! ## A315486.P553103436862604153

`A001281(A315754(n)+A315212(n))`
-/

namespace A315486.P553103436862604153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A315754 n + A315212 n).toNat

end

end A315486.P553103436862604153

namespace A315486

/-- `A001281(A315754(n)+A315212(n))` -/
def P553103436862604153.Spec : Prop :=
  ∀ n, P553103436862604153.a n = A315486 n

end A315486

/-! ## A315486.P15213998149639666729

`A004525(A315492(n)+A315326(n))`
-/

namespace A315486.P15213998149639666729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315492 n + A315326 n).toNat

end

end A315486.P15213998149639666729

namespace A315486

/-- `A004525(A315492(n)+A315326(n))` -/
def P15213998149639666729.Spec : Prop :=
  ∀ n, P15213998149639666729.a n = A315486 n

end A315486

/-! ## A315486.P1484523550929514321

`A233583(A017281(n))-A313062(n)`
-/

namespace A315486.P1484523550929514321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A017281 n).toNat - A313062 n

end

end A315486.P1484523550929514321

namespace A315486

/-- `A233583(A017281(n))-A313062(n)` -/
def P1484523550929514321.Spec : Prop :=
  ∀ n, P1484523550929514321.a n = A315486 n

end A315486

/-!
# A315487: Coordination sequence Gal.5.214.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315487, there is no canonical definition to state claims against.
-/

/-! ## A315487.P15034418590409013397

`A047345(n+1)+A003714(A276142(n+1))`
-/

namespace A315487.P15034418590409013397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047345 (n + 1) + A003714 (A276142 (n + 1)).toNat

end

end A315487.P15034418590409013397

/-!
# A315488: Coordination sequence Gal.6.343.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315488, the canonical program `A315488.P5611134213742253392` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315488 has offset 0).

The definition of A315488 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2295 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315488.P1506356675758226684

`A314706(n)+n`
-/

namespace A315488.P1506356675758226684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314706 n + (n : ℤ)

end

end A315488.P1506356675758226684

namespace A315488

/-- `A314706(n)+n` -/
def P1506356675758226684.Spec : Prop :=
  ∀ n, P1506356675758226684.a n = A315488 n

end A315488

/-! ## A315488.P5611134213742253392

`A313556(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315488

/-- `A313556(n)+A004396(n)` -/
def P5611134213742253392.Spec : Prop :=
  ∀ n, P5611134213742253392.a n = A315488 n

theorem P5611134213742253392.correct : P5611134213742253392.Spec := by
  intro n
  simp only [A315488]

end A315488

/-! ## A315488.P14153983985916913978

`A313720(n)+A004525(n)`
-/

namespace A315488.P14153983985916913978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313720 n + A004525 n

end

end A315488.P14153983985916913978

namespace A315488

/-- `A313720(n)+A004525(n)` -/
def P14153983985916913978.Spec : Prop :=
  ∀ n, P14153983985916913978.a n = A315488 n

end A315488

/-! ## A315488.P14897033980341264753

`A315271(n)+A002264(n+1)`
-/

namespace A315488.P14897033980341264753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315271 n + A002264 (n + 1)

end

end A315488.P14897033980341264753

namespace A315488

/-- `A315271(n)+A002264(n+1)` -/
def P14897033980341264753.Spec : Prop :=
  ∀ n, P14897033980341264753.a n = A315488 n

end A315488

/-! ## A315488.P9364612667763658276

`A315271(n)+n-A004396(n)`
-/

namespace A315488.P9364612667763658276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315271 n + ((n : ℤ) - A004396 n)

end

end A315488.P9364612667763658276

namespace A315488

/-- `A315271(n)+n-A004396(n)` -/
def P9364612667763658276.Spec : Prop :=
  ∀ n, P9364612667763658276.a n = A315488 n

end A315488

/-! ## A315488.P6376649355193637961

`A313556(n)+A002264(2*n+1)`
-/

namespace A315488.P6376649355193637961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313556 n + A002264 (2 * n + 1)

end

end A315488.P6376649355193637961

namespace A315488

/-- `A313556(n)+A002264(2*n+1)` -/
def P6376649355193637961.Spec : Prop :=
  ∀ n, P6376649355193637961.a n = A315488 n

end A315488

/-! ## A315488.P9362235923952217936

`A313769(n)+A004396(A004525(n))`
-/

namespace A315488.P9362235923952217936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313769 n + A004396 (A004525 n).toNat

end

end A315488.P9362235923952217936

namespace A315488

/-- `A313769(n)+A004396(A004525(n))` -/
def P9362235923952217936.Spec : Prop :=
  ∀ n, P9362235923952217936.a n = A315488 n

end A315488

/-! ## A315488.P106388512892391074

`A313778(n)+A004525(A004396(n))`
-/

namespace A315488.P106388512892391074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313778 n + A004525 (A004396 n).toNat

end

end A315488.P106388512892391074

namespace A315488

/-- `A313778(n)+A004525(A004396(n))` -/
def P106388512892391074.Spec : Prop :=
  ∀ n, P106388512892391074.a n = A315488 n

end A315488

/-! ## A315488.P4912068527503520576

`A008458(n)+A008574(n)-A313057(n)`
-/

namespace A315488.P4912068527503520576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313057 n)

end

end A315488.P4912068527503520576

namespace A315488

/-- `A008458(n)+A008574(n)-A313057(n)` -/
def P4912068527503520576.Spec : Prop :=
  ∀ n, P4912068527503520576.a n = A315488 n

end A315488

/-! ## A315488.P7103995121567309562

`A008486(n)+A315271(n)-A008576(n)`
-/

namespace A315488.P7103995121567309562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (A315271 n - A008576 n)

end

end A315488.P7103995121567309562

namespace A315488

/-- `A008486(n)+A315271(n)-A008576(n)` -/
def P7103995121567309562.Spec : Prop :=
  ∀ n, P7103995121567309562.a n = A315488 n

end A315488

/-! ## A315488.P8487852089037857172

`A004396(n)+A312926(n)+A004396(A004525(n))`
-/

namespace A315488.P8487852089037857172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312926 n + A004396 (A004525 n).toNat)

end

end A315488.P8487852089037857172

namespace A315488

/-- `A004396(n)+A312926(n)+A004396(A004525(n))` -/
def P8487852089037857172.Spec : Prop :=
  ∀ n, P8487852089037857172.a n = A315488 n

end A315488

/-! ## A315488.P18131918675638557295

`floor(A315703(n)-(n-1)/3)`
-/

namespace A315488.P18131918675638557295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A315703 n : ℚ) - ((n : ℤ) - 1 : ℚ) / 3⌋

end

end A315488.P18131918675638557295

namespace A315488

/-- `floor(A315703(n)-(n-1)/3)` -/
def P18131918675638557295.Spec : Prop :=
  ∀ n, P18131918675638557295.a n = A315488 n

end A315488

/-! ## A315488.P8259473767384709248

`A315703(n)-A002264(n+1)`
-/

namespace A315488.P8259473767384709248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A002264 (n + 1)

end

end A315488.P8259473767384709248

namespace A315488

/-- `A315703(n)-A002264(n+1)` -/
def P8259473767384709248.Spec : Prop :=
  ∀ n, P8259473767384709248.a n = A315488 n

end A315488

/-! ## A315488.P12766871814181370715

`A004396(n)+A315703(n)-n`
-/

namespace A315488.P12766871814181370715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315703 n - (n : ℤ))

end

end A315488.P12766871814181370715

namespace A315488

/-- `A004396(n)+A315703(n)-n` -/
def P12766871814181370715.Spec : Prop :=
  ∀ n, P12766871814181370715.a n = A315488 n

end A315488

/-! ## A315488.P5829865200057515960

`A315703(n)-A042965(n+1)+n`
-/

namespace A315488.P5829865200057515960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315703 n - A042965 (n + 1) + (n : ℤ)

end

end A315488.P5829865200057515960

namespace A315488

/-- `A315703(n)-A042965(n+1)+n` -/
def P5829865200057515960.Spec : Prop :=
  ∀ n, P5829865200057515960.a n = A315488 n

end A315488

/-! ## A315488.P14908282886583064997

`A315763(n)-Δ[A011848(n)]`
-/

namespace A315488.P14908282886583064997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - (f1 (n + 1) - f1 n)

end

end A315488.P14908282886583064997

namespace A315488

/-- `A315763(n)-Δ[A011848(n)]` -/
def P14908282886583064997.Spec : Prop :=
  ∀ n, P14908282886583064997.a n = A315488 n

end A315488

/-! ## A315488.P13049950565663025317

`A315763(n)-A004524(n+1)`
-/

namespace A315488.P13049950565663025317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A004524 (n + 1)

end

end A315488.P13049950565663025317

namespace A315488

/-- `A315763(n)-A004524(n+1)` -/
def P13049950565663025317.Spec : Prop :=
  ∀ n, P13049950565663025317.a n = A315488 n

end A315488

/-! ## A315488.P6518495894632422641

`A315763(n)-A047273(n+1)+n`
-/

namespace A315488.P6518495894632422641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A047273 (n + 1) + (n : ℤ)

end

end A315488.P6518495894632422641

namespace A315488

/-- `A315763(n)-A047273(n+1)+n` -/
def P6518495894632422641.Spec : Prop :=
  ∀ n, P6518495894632422641.a n = A315488 n

end A315488

/-! ## A315488.P354109293330955866

`A315763(n)-A002264(A130482(n))`
-/

namespace A315488.P354109293330955866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315763 n - A002264 (A130482 n).toNat

end

end A315488.P354109293330955866

namespace A315488

/-- `A315763(n)-A002264(A130482(n))` -/
def P354109293330955866.Spec : Prop :=
  ∀ n, P354109293330955866.a n = A315488 n

end A315488

/-!
# A315489: Coordination sequence Gal.5.292.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315489, the canonical program `A315489.P10835335937589495706` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315489 has offset 0).

The definition of A315489 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2259 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315489.P6883352896794845276

`A314708(n)+n`
-/

namespace A315489.P6883352896794845276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + (n : ℤ)

end

end A315489.P6883352896794845276

namespace A315489

/-- `A314708(n)+n` -/
def P6883352896794845276.Spec : Prop :=
  ∀ n, P6883352896794845276.a n = A315489 n

end A315489

/-! ## A315489.P10835335937589495706

`A330025(n)+A313801(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A315489

/-- `A330025(n)+A313801(n)` -/
def P10835335937589495706.Spec : Prop :=
  ∀ n, P10835335937589495706.a n = A315489 n

theorem P10835335937589495706.correct : P10835335937589495706.Spec := by
  intro n
  simp only [A315489]

end A315489

/-! ## A315489.P9344177565021063308

`(A315203(n)+A008458(n))/2`
-/

namespace A315489.P9344177565021063308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315203 n + A008458 n : ℚ) / 2

end

end A315489.P9344177565021063308

namespace A315489

/-- `(A315203(n)+A008458(n))/2` -/
def P9344177565021063308.Spec : Prop :=
  ∀ n, P9344177565021063308.a n = (A315489 n : ℚ)

end A315489

/-! ## A315489.P873708424870254080

`A311535(n)+A330025(n)+n`
-/

namespace A315489.P873708424870254080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311535 n + (A330025 n + (n : ℤ))

end

end A315489.P873708424870254080

namespace A315489

/-- `A311535(n)+A330025(n)+n` -/
def P873708424870254080.Spec : Prop :=
  ∀ n, P873708424870254080.a n = A315489 n

end A315489

/-! ## A315489.P3835179307413252686

`A005843(n)-(n-A314708(n))`
-/

namespace A315489.P3835179307413252686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A314708 n)

end

end A315489.P3835179307413252686

namespace A315489

/-- `A005843(n)-(n-A314708(n))` -/
def P3835179307413252686.Spec : Prop :=
  ∀ n, P3835179307413252686.a n = A315489 n

end A315489

/-! ## A315489.P14422442461165967921

`A008458(n)+A008574(n)-A313053(n)`
-/

namespace A315489.P14422442461165967921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313053 n)

end

end A315489.P14422442461165967921

namespace A315489

/-- `A008458(n)+A008574(n)-A313053(n)` -/
def P14422442461165967921.Spec : Prop :=
  ∀ n, P14422442461165967921.a n = A315489 n

end A315489

/-! ## A315489.P4306943238483952321

`A005843(n)+A005843(A008574(n))-A313053(n)`
-/

namespace A315489.P4306943238483952321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313053 n)

end

end A315489.P4306943238483952321

namespace A315489

/-- `A005843(n)+A005843(A008574(n))-A313053(n)` -/
def P4306943238483952321.Spec : Prop :=
  ∀ n, P4306943238483952321.a n = A315489 n

end A315489

/-! ## A315489.P2965714792122697142

`A004525(A047263(n+1))+A008458(n)-A047263(n+1)`
-/

namespace A315489.P2965714792122697142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047263 (n + 1)).toNat + (A008458 n - A047263 (n + 1))

end

end A315489.P2965714792122697142

namespace A315489

/-- `A004525(A047263(n+1))+A008458(n)-A047263(n+1)` -/
def P2965714792122697142.Spec : Prop :=
  ∀ n, P2965714792122697142.a n = A315489 n

end A315489

/-! ## A315489.P3640538161832311443

`A315496(n)+n-A151988(n)`
-/

namespace A315489.P3640538161832311443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315496 n + ((n : ℤ) - A151988 n)

end

end A315489.P3640538161832311443

namespace A315489

/-- `A315496(n)+n-A151988(n)` -/
def P3640538161832311443.Spec : Prop :=
  ∀ n, P3640538161832311443.a n = A315489 n

end A315489

/-! ## A315489.P11932713766987174341

`A315536(n)-A047263(n+1)+n`
-/

namespace A315489.P11932713766987174341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315536 n - A047263 (n + 1) + (n : ℤ)

end

end A315489.P11932713766987174341

namespace A315489

/-- `A315536(n)-A047263(n+1)+n` -/
def P11932713766987174341.Spec : Prop :=
  ∀ n, P11932713766987174341.a n = A315489 n

end A315489

/-! ## A315489.P18045712118129583824

`A004525(A313610(n))+3*n`
-/

namespace A315489.P18045712118129583824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313610 n).toNat + (3 * n : ℤ)

end

end A315489.P18045712118129583824

namespace A315489

/-- `A004525(A313610(n))+3*n` -/
def P18045712118129583824.Spec : Prop :=
  ∀ n, P18045712118129583824.a n = A315489 n

end A315489

/-! ## A315489.P16921670332273150246

`A005843(A008574(n)+n)-A313053(n)`
-/

namespace A315489.P16921670332273150246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313053 n

end

end A315489.P16921670332273150246

namespace A315489

/-- `A005843(A008574(n)+n)-A313053(n)` -/
def P16921670332273150246.Spec : Prop :=
  ∀ n, P16921670332273150246.a n = A315489 n

end A315489

/-! ## A315489.P7728822452138215576

`A005843(A008458(n))-(A314220(n)+n)`
-/

namespace A315489.P7728822452138215576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008458 n).toNat - (A314220 n + (n : ℤ))

end

end A315489.P7728822452138215576

namespace A315489

/-- `A005843(A008458(n))-(A314220(n)+n)` -/
def P7728822452138215576.Spec : Prop :=
  ∀ n, P7728822452138215576.a n = A315489 n

end A315489

/-! ## A315489.P6026148062174257889

`A004396(A315536(n)+n)+n`
-/

namespace A315489.P6026148062174257889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315536 n + (n : ℤ)).toNat + (n : ℤ)

end

end A315489.P6026148062174257889

namespace A315489

/-- `A004396(A315536(n)+n)+n` -/
def P6026148062174257889.Spec : Prop :=
  ∀ n, P6026148062174257889.a n = A315489 n

end A315489

/-! ## A315489.P1252052687836740431

`A004396(A315698(n)+n)+n`
-/

namespace A315489.P1252052687836740431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315698 n + (n : ℤ)).toNat + (n : ℤ)

end

end A315489.P1252052687836740431

namespace A315489

/-- `A004396(A315698(n)+n)+n` -/
def P1252052687836740431.Spec : Prop :=
  ∀ n, P1252052687836740431.a n = A315489 n

end A315489

/-!
# A315490: Coordination sequence Gal.4.141.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315490, the canonical program `A315490.P6677223779923503323` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315490 has offset 0).

The definition of A315490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315490.P6677223779923503323

`A314148(n)+A238469(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315490

/-- `A314148(n)+A238469(n)` -/
def P6677223779923503323.Spec : Prop :=
  ∀ n, P6677223779923503323.a n = A315490 n

theorem P6677223779923503323.correct : P6677223779923503323.Spec := by
  intro n
  simp only [A315490]

end A315490

/-! ## A315490.P3831116292955211985

`A315339(n)+A238470(n)`
-/

namespace A315490.P3831116292955211985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315339 n + A238470 n

end

end A315490.P3831116292955211985

namespace A315490

/-- `A315339(n)+A238470(n)` -/
def P3831116292955211985.Spec : Prop :=
  ∀ n, P3831116292955211985.a n = A315490 n

end A315490

/-! ## A315490.P8680188007914932661

`abs(A008592(n)-A313051(n))`
-/

namespace A315490.P8680188007914932661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313051 n|

end

end A315490.P8680188007914932661

namespace A315490

/-- `abs(A008592(n)-A313051(n))` -/
def P8680188007914932661.Spec : Prop :=
  ∀ n, P8680188007914932661.a n = A315490 n

end A315490

/-! ## A315490.P6120145055866514583

`A315423(n)+Δ[A011860(n)]`
-/

namespace A315490.P6120145055866514583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315423 n + (f1 (n + 1) - f1 n)

end

end A315490.P6120145055866514583

namespace A315490

/-- `A315423(n)+Δ[A011860(n)]` -/
def P6120145055866514583.Spec : Prop :=
  ∀ n, P6120145055866514583.a n = A315490 n

end A315490

/-! ## A315490.P9493991547568130174

`A314674(n)+A047588(n+1)`
-/

namespace A315490.P9493991547568130174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314674 n + A047588 (n + 1)

end

end A315490.P9493991547568130174

namespace A315490

/-- `A314674(n)+A047588(n+1)` -/
def P9493991547568130174.Spec : Prop :=
  ∀ n, P9493991547568130174.a n = A315490 n

end A315490

/-! ## A315490.P12756179577197524088

`A314148(n)+A238470(2*n)`
-/

namespace A315490.P12756179577197524088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314148 n + A238470 (2 * n)

end

end A315490.P12756179577197524088

namespace A315490

/-- `A314148(n)+A238470(2*n)` -/
def P12756179577197524088.Spec : Prop :=
  ∀ n, P12756179577197524088.a n = A315490 n

end A315490

/-! ## A315490.P4284747182233793040

`A315511(n)+A238469(2*n)`
-/

namespace A315490.P4284747182233793040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n + A238469 (2 * n)

end

end A315490.P4284747182233793040

namespace A315490

/-- `A315511(n)+A238469(2*n)` -/
def P4284747182233793040.Spec : Prop :=
  ∀ n, P4284747182233793040.a n = A315490 n

end A315490

/-! ## A315490.P7285007026641315254

`(A315204(n)+A008458(n))/2`
-/

namespace A315490.P7285007026641315254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315204 n + A008458 n : ℚ) / 2

end

end A315490.P7285007026641315254

namespace A315490

/-- `(A315204(n)+A008458(n))/2` -/
def P7285007026641315254.Spec : Prop :=
  ∀ n, P7285007026641315254.a n = (A315490 n : ℚ)

end A315490

/-! ## A315490.P9075278705448296650

`A074232(A008574(n)+n)-n`
-/

namespace A315490.P9075278705448296650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (A008574 n + (n : ℤ)).toNat - (n : ℤ)

end

end A315490.P9075278705448296650

namespace A315490

/-- `A074232(A008574(n)+n)-n` -/
def P9075278705448296650.Spec : Prop :=
  ∀ n, P9075278705448296650.a n = A315490 n

end A315490

/-! ## A315490.P9775759029557069667

`A315701(2*n)+A008458(n+1)-(12*n+6)`
-/

namespace A315490.P9775759029557069667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315701 (2 * n) + (A008458 (n + 1) - (12 * n + 6 : ℤ))

end

end A315490.P9775759029557069667

namespace A315490

/-- `A315701(2*n)+A008458(n+1)-(12*n+6)` -/
def P9775759029557069667.Spec : Prop :=
  ∀ n, P9775759029557069667.a n = A315490 n

end A315490

/-! ## A315490.P2406955323453511642

`A315511(n)+A238468(A238468(n)+n)`
-/

namespace A315490.P2406955323453511642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315511 n + A238468 (A238468 n + (n : ℤ)).toNat

end

end A315490.P2406955323453511642

namespace A315490

/-- `A315511(n)+A238468(A238468(n)+n)` -/
def P2406955323453511642.Spec : Prop :=
  ∀ n, P2406955323453511642.a n = A315490 n

end A315490

/-! ## A315490.P10020711094538343714

`A008458(n)+A008574(n)-A313051(n)`
-/

namespace A315490.P10020711094538343714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313051 n)

end

end A315490.P10020711094538343714

namespace A315490

/-- `A008458(n)+A008574(n)-A313051(n)` -/
def P10020711094538343714.Spec : Prop :=
  ∀ n, P10020711094538343714.a n = A315490 n

end A315490

/-! ## A315490.P8232138704068321011

`A008486(2*n)+A011860(2*n)-A011860(2*n+1)`
-/

namespace A315490.P8232138704068321011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) + (A011860 (2 * n) - A011860 (2 * n + 1))

end

end A315490.P8232138704068321011

namespace A315490

/-- `A008486(2*n)+A011860(2*n)-A011860(2*n+1)` -/
def P8232138704068321011.Spec : Prop :=
  ∀ n, P8232138704068321011.a n = A315490 n

end A315490

/-! ## A315490.P14905809555116349679

`A005843(n)+A005843(A008574(n))-A313051(n)`
-/

namespace A315490.P14905809555116349679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313051 n)

end

end A315490.P14905809555116349679

namespace A315490

/-- `A005843(n)+A005843(A008574(n))-A313051(n)` -/
def P14905809555116349679.Spec : Prop :=
  ∀ n, P14905809555116349679.a n = A315490 n

end A315490

/-! ## A315490.P8672182601910993513

`A004525(A047588(n+1))+A008458(n)-A047588(n+1)`
-/

namespace A315490.P8672182601910993513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A047588 (n + 1)).toNat + (A008458 n - A047588 (n + 1))

end

end A315490.P8672182601910993513

namespace A315490

/-- `A004525(A047588(n+1))+A008458(n)-A047588(n+1)` -/
def P8672182601910993513.Spec : Prop :=
  ∀ n, P8672182601910993513.a n = A315490 n

end A315490

/-! ## A315490.P11196243694233920747

`A315541(n)-Δ[A011860(n)]`
-/

namespace A315490.P11196243694233920747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315541 n - (f1 (n + 1) - f1 n)

end

end A315490.P11196243694233920747

namespace A315490

/-- `A315541(n)-Δ[A011860(n)]` -/
def P11196243694233920747.Spec : Prop :=
  ∀ n, P11196243694233920747.a n = A315490 n

end A315490

/-! ## A315490.P10573769493166268298

`A005843(A008574(n)+n)-A313051(n)`
-/

namespace A315490.P10573769493166268298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313051 n

end

end A315490.P10573769493166268298

namespace A315490

/-- `A005843(A008574(n)+n)-A313051(n)` -/
def P10573769493166268298.Spec : Prop :=
  ∀ n, P10573769493166268298.a n = A315490 n

end A315490

/-! ## A315490.P3305814820672544900

`A004396(A315273(n))+2*n`
-/

namespace A315490.P3305814820672544900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A315273 n).toNat + (2 * n : ℤ)

end

end A315490.P3305814820672544900

namespace A315490

/-- `A004396(A315273(n))+2*n` -/
def P3305814820672544900.Spec : Prop :=
  ∀ n, P3305814820672544900.a n = A315490 n

end A315490

/-! ## A315490.P14462077138362414331

`A315647(n)-A238470(n)`
-/

namespace A315490.P14462077138362414331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315647 n - A238470 n

end

end A315490.P14462077138362414331

namespace A315490

/-- `A315647(n)-A238470(n)` -/
def P14462077138362414331.Spec : Prop :=
  ∀ n, P14462077138362414331.a n = A315490 n

end A315490

/-! ## A315490.P16791658309261046666

`A004396(A313487(2*n)-n)`
-/

namespace A315490.P16791658309261046666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313487 (2 * n) - (n : ℤ)).toNat

end

end A315490.P16791658309261046666

namespace A315490

/-- `A004396(A313487(2*n)-n)` -/
def P16791658309261046666.Spec : Prop :=
  ∀ n, P16791658309261046666.a n = A315490 n

end A315490

/-!
# A315491: Coordination sequence Gal.6.625.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315491, the canonical program `A315491.P16550082452281729061` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315491 has offset 0).

The definition of A315491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2276 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315491.P16550082452281729061

`abs(A008592(n)-A313045(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A315491

/-- `abs(A008592(n)-A313045(n))` -/
def P16550082452281729061.Spec : Prop :=
  ∀ n, P16550082452281729061.a n = A315491 n

theorem P16550082452281729061.correct : P16550082452281729061.Spec := by
  intro n
  simp only [A315491]

end A315491

/-! ## A315491.P11827637735752980077

`2*A008706(n)-A313045(n)`
-/

namespace A315491.P11827637735752980077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313045 n

end

end A315491.P11827637735752980077

namespace A315491

/-- `2*A008706(n)-A313045(n)` -/
def P11827637735752980077.Spec : Prop :=
  ∀ n, P11827637735752980077.a n = A315491 n

end A315491

/-! ## A315491.P8403867039734281608

`(A315208(n)+A008458(n))/2`
-/

namespace A315491.P8403867039734281608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315208 n + A008458 n : ℚ) / 2

end

end A315491.P8403867039734281608

namespace A315491

/-- `(A315208(n)+A008458(n))/2` -/
def P8403867039734281608.Spec : Prop :=
  ∀ n, P8403867039734281608.a n = (A315491 n : ℚ)

end A315491

/-! ## A315491.P17906784584262935748

`A135042(2*n+1)-A313045(n)`
-/

namespace A315491.P17906784584262935748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313045 n

end

end A315491.P17906784584262935748

namespace A315491

/-- `A135042(2*n+1)-A313045(n)` -/
def P17906784584262935748.Spec : Prop :=
  ∀ n, P17906784584262935748.a n = A315491 n

end A315491

/-! ## A315491.P6886175494673343456

`A008574(n)+comp[A047486(2*(n+1))]`
-/

namespace A315491.P6886175494673343456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A315491.P6886175494673343456

namespace A315491

/-- `A008574(n)+comp[A047486(2*(n+1))]` -/
def P6886175494673343456.Spec : Prop :=
  ∀ n, P6886175494673343456.a n = A315491 n

end A315491

/-! ## A315491.P13086431329957226912

`A008458(n)+A008574(n)-A313045(n)`
-/

namespace A315491.P13086431329957226912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313045 n)

end

end A315491.P13086431329957226912

namespace A315491

/-- `A008458(n)+A008574(n)-A313045(n)` -/
def P13086431329957226912.Spec : Prop :=
  ∀ n, P13086431329957226912.a n = A315491 n

end A315491

/-! ## A315491.P16433076676033701957

`A315526(n)-Δ[A011864(n)]`
-/

namespace A315491.P16433076676033701957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315526 n - (f1 (n + 1) - f1 n)

end

end A315491.P16433076676033701957

namespace A315491

/-- `A315526(n)-Δ[A011864(n)]` -/
def P16433076676033701957.Spec : Prop :=
  ∀ n, P16433076676033701957.a n = A315491 n

end A315491

/-! ## A315491.P6385926564987184240

`A151988(A314837(n))`
-/

namespace A315491.P6385926564987184240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151988 (A314837 n).toNat

end

end A315491.P6385926564987184240

namespace A315491

/-- `A151988(A314837(n))` -/
def P6385926564987184240.Spec : Prop :=
  ∀ n, P6385926564987184240.a n = A315491 n

end A315491

/-! ## A315491.P12080570356910202632

`A008585(n)+A004525(A315208(n))`
-/

namespace A315491.P12080570356910202632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315208 n).toNat

end

end A315491.P12080570356910202632

namespace A315491

/-- `A008585(n)+A004525(A315208(n))` -/
def P12080570356910202632.Spec : Prop :=
  ∀ n, P12080570356910202632.a n = A315491 n

end A315491

/-! ## A315491.P3688838976263537244

`A008486(n)+A004526(A315208(n))`
-/

namespace A315491.P3688838976263537244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315208 n).toNat

end

end A315491.P3688838976263537244

namespace A315491

/-- `A008486(n)+A004526(A315208(n))` -/
def P3688838976263537244.Spec : Prop :=
  ∀ n, P3688838976263537244.a n = A315491 n

end A315491

/-! ## A315491.P18102635977569779810

`A005843(A008706(n))-A313045(n)`
-/

namespace A315491.P18102635977569779810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313045 n

end

end A315491.P18102635977569779810

namespace A315491

/-- `A005843(A008706(n))-A313045(n)` -/
def P18102635977569779810.Spec : Prop :=
  ∀ n, P18102635977569779810.a n = A315491 n

end A315491

/-! ## A315491.P14497055300437823813

`A005843(A008574(n)+n)-A313045(n)`
-/

namespace A315491.P14497055300437823813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313045 n

end

end A315491.P14497055300437823813

namespace A315491

/-- `A005843(A008574(n)+n)-A313045(n)` -/
def P14497055300437823813.Spec : Prop :=
  ∀ n, P14497055300437823813.a n = A315491 n

end A315491

/-! ## A315491.P18353850438366694701

`2*A008574(n)-A004525(A310501(n))`
-/

namespace A315491.P18353850438366694701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A310501 n).toNat

end

end A315491.P18353850438366694701

namespace A315491

/-- `2*A008574(n)-A004525(A310501(n))` -/
def P18353850438366694701.Spec : Prop :=
  ∀ n, P18353850438366694701.a n = A315491 n

end A315491

/-! ## A315491.P3282389980467385488

`A313560(2*n)-4*n`
-/

namespace A315491.P3282389980467385488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313560 (2 * n) - (4 * n : ℤ)

end

end A315491.P3282389980467385488

namespace A315491

/-- `A313560(2*n)-4*n` -/
def P3282389980467385488.Spec : Prop :=
  ∀ n, P3282389980467385488.a n = A315491 n

end A315491

/-! ## A315491.P14349710374068558448

`2*A008574(2*n)-A313876(2*n)`
-/

namespace A315491.P14349710374068558448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A313876 (2 * n)

end

end A315491.P14349710374068558448

namespace A315491

/-- `2*A008574(2*n)-A313876(2*n)` -/
def P14349710374068558448.Spec : Prop :=
  ∀ n, P14349710374068558448.a n = A315491 n

end A315491

/-! ## A315491.P1253765771944332716

`A315650(2*n)/(4*n+2-A004277(2*n))`
-/

namespace A315491.P1253765771944332716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315650 (2 * n) : ℚ) / ((4 * n + 2 : ℤ) - A004277 (2 * n) : ℚ)

end

end A315491.P1253765771944332716

namespace A315491

/-- `A315650(2*n)/(4*n+2-A004277(2*n))` -/
def P1253765771944332716.Spec : Prop :=
  ∀ n, P1253765771944332716.a n = (A315491 n : ℚ)

end A315491

/-! ## A315491.P16286538048537109545

`A004525(A315650(2*n))`
-/

namespace A315491.P16286538048537109545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315650 (2 * n)).toNat

end

end A315491.P16286538048537109545

namespace A315491

/-- `A004525(A315650(2*n))` -/
def P16286538048537109545.Spec : Prop :=
  ∀ n, P16286538048537109545.a n = A315491 n

end A315491

/-! ## A315491.P17435057792479401330

`A004526(A315650(2*n)+1)`
-/

namespace A315491.P17435057792479401330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315650 (2 * n) + 1).toNat

end

end A315491.P17435057792479401330

namespace A315491

/-- `A004526(A315650(2*n)+1)` -/
def P17435057792479401330.Spec : Prop :=
  ∀ n, P17435057792479401330.a n = A315491 n

end A315491

/-! ## A315491.P9225236624646134014

`A004526(A315208(n)+A008458(n))`
-/

namespace A315491.P9225236624646134014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315208 n + A008458 n).toNat

end

end A315491.P9225236624646134014

namespace A315491

/-- `A004526(A315208(n)+A008458(n))` -/
def P9225236624646134014.Spec : Prop :=
  ∀ n, P9225236624646134014.a n = A315491 n

end A315491

/-! ## A315491.P7510277722169339336

`A004525(A315210(n)+A008458(n))`
-/

namespace A315491.P7510277722169339336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315210 n + A008458 n).toNat

end

end A315491.P7510277722169339336

namespace A315491

/-- `A004525(A315210(n)+A008458(n))` -/
def P7510277722169339336.Spec : Prop :=
  ∀ n, P7510277722169339336.a n = A315491 n

end A315491

/-!
# A315492: Coordination sequence Gal.6.625.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315492, the canonical program `A315492.P17631877268595181064` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315492 has offset 0).

The definition of A315492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2410 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315492.P13524864864129390139

`abs(A008592(n)-A313031(n))`
-/

namespace A315492.P13524864864129390139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313031 n|

end

end A315492.P13524864864129390139

namespace A315492

/-- `abs(A008592(n)-A313031(n))` -/
def P13524864864129390139.Spec : Prop :=
  ∀ n, P13524864864129390139.a n = A315492 n

end A315492

/-! ## A315492.P12624428049329998714

`2*A008706(n)-A313031(n)`
-/

namespace A315492.P12624428049329998714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313031 n

end

end A315492.P12624428049329998714

namespace A315492

/-- `2*A008706(n)-A313031(n)` -/
def P12624428049329998714.Spec : Prop :=
  ∀ n, P12624428049329998714.a n = A315492 n

end A315492

/-! ## A315492.P7341791482328395392

`A135042(2*n+1)-A313031(n)`
-/

namespace A315492.P7341791482328395392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135042 (2 * n + 1) - A313031 n

end

end A315492.P7341791482328395392

namespace A315492

/-- `A135042(2*n+1)-A313031(n)` -/
def P7341791482328395392.Spec : Prop :=
  ∀ n, P7341791482328395392.a n = A315492 n

end A315492

/-! ## A315492.P9935572728681168316

`A008458(n)+A008574(n)-A313031(n)`
-/

namespace A315492.P9935572728681168316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313031 n)

end

end A315492.P9935572728681168316

namespace A315492

/-- `A008458(n)+A008574(n)-A313031(n)` -/
def P9935572728681168316.Spec : Prop :=
  ∀ n, P9935572728681168316.a n = A315492 n

end A315492

/-! ## A315492.P3148542512441031771

`lcm(n-A004442(n), A008592(n)-A313031(n))`
-/

namespace A315492.P3148542512441031771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - A004442 n) (A008592 n - A313031 n)

end

end A315492.P3148542512441031771

namespace A315492

/-- `lcm(n-A004442(n), A008592(n)-A313031(n))` -/
def P3148542512441031771.Spec : Prop :=
  ∀ n, (P3148542512441031771.a n : ℤ) = A315492 n

end A315492

/-! ## A315492.P4787637952756781080

`A313031(n)+A005843(A008706(n)-A313031(n))`
-/

namespace A315492.P4787637952756781080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313031 n + A005843 (A008706 n - A313031 n).toNat

end

end A315492.P4787637952756781080

namespace A315492

/-- `A313031(n)+A005843(A008706(n)-A313031(n))` -/
def P4787637952756781080.Spec : Prop :=
  ∀ n, P4787637952756781080.a n = A315492 n

end A315492

/-! ## A315492.P677843561247477270

`A184418(A008574(n))-A313031(n)`
-/

namespace A315492.P677843561247477270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184418 (A008574 n).toNat - A313031 n

end

end A315492.P677843561247477270

namespace A315492

/-- `A184418(A008574(n))-A313031(n)` -/
def P677843561247477270.Spec : Prop :=
  ∀ n, P677843561247477270.a n = A315492 n

end A315492

/-! ## A315492.P17631877268595181064

`A315210(n)+A004525(A008458(n)-A315210(n))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A315492

/-- `A315210(n)+A004525(A008458(n)-A315210(n))` -/
def P17631877268595181064.Spec : Prop :=
  ∀ n, P17631877268595181064.a n = A315492 n

theorem P17631877268595181064.correct : P17631877268595181064.Spec := by
  intro n
  simp only [A315492]

end A315492

/-! ## A315492.P3853513943111395710

`2*A313730(n)-A313024(n)`
-/

namespace A315492.P3853513943111395710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313730 n - A313024 n

end

end A315492.P3853513943111395710

namespace A315492

/-- `2*A313730(n)-A313024(n)` -/
def P3853513943111395710.Spec : Prop :=
  ∀ n, P3853513943111395710.a n = A315492 n

end A315492

/-! ## A315492.P8557653143539418016

`A313024(n)+A005843(A313730(n)-A313024(n))`
-/

namespace A315492.P8557653143539418016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313024 n + A005843 (A313730 n - A313024 n).toNat

end

end A315492.P8557653143539418016

namespace A315492

/-- `A313024(n)+A005843(A313730(n)-A313024(n))` -/
def P8557653143539418016.Spec : Prop :=
  ∀ n, P8557653143539418016.a n = A315492 n

end A315492

/-! ## A315492.P11658299713982058315

`2*A313779(n)-A313137(n)`
-/

namespace A315492.P11658299713982058315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A313779 n - A313137 n

end

end A315492.P11658299713982058315

namespace A315492

/-- `2*A313779(n)-A313137(n)` -/
def P11658299713982058315.Spec : Prop :=
  ∀ n, P11658299713982058315.a n = A315492 n

end A315492

/-! ## A315492.P11811269830100772746

`A047263(A314720(n)+1)`
-/

namespace A315492.P11811269830100772746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A314720 n + 1).toNat

end

end A315492.P11811269830100772746

namespace A315492

/-- `A047263(A314720(n)+1)` -/
def P11811269830100772746.Spec : Prop :=
  ∀ n, P11811269830100772746.a n = A315492 n

end A315492

/-! ## A315492.P11693990493216332014

`A005843(A313730(n))-A313024(n)`
-/

namespace A315492.P11693990493216332014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313730 n).toNat - A313024 n

end

end A315492.P11693990493216332014

namespace A315492

/-- `A005843(A313730(n))-A313024(n)` -/
def P11693990493216332014.Spec : Prop :=
  ∀ n, P11693990493216332014.a n = A315492 n

end A315492

/-! ## A315492.P1521251823230384098

`A005843(A008706(n))-A313031(n)`
-/

namespace A315492.P1521251823230384098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313031 n

end

end A315492.P1521251823230384098

namespace A315492

/-- `A005843(A008706(n))-A313031(n)` -/
def P1521251823230384098.Spec : Prop :=
  ∀ n, P1521251823230384098.a n = A315492 n

end A315492

/-! ## A315492.P18205272432221440665

`A005843(A313779(n))-A313137(n)`
-/

namespace A315492.P18205272432221440665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A313779 n).toNat - A313137 n

end

end A315492.P18205272432221440665

namespace A315492

/-- `A005843(A313779(n))-A313137(n)` -/
def P18205272432221440665.Spec : Prop :=
  ∀ n, P18205272432221440665.a n = A315492 n

end A315492

/-! ## A315492.P15317441465832530137

`A065502(A008458(n))-A313031(n)`
-/

namespace A315492.P15317441465832530137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065502 (A008458 n).toNat - A313031 n

end

end A315492.P15317441465832530137

namespace A315492

/-- `A065502(A008458(n))-A313031(n)` -/
def P15317441465832530137.Spec : Prop :=
  ∀ n, P15317441465832530137.a n = A315492 n

end A315492

/-! ## A315492.P11074122552325207362

`A310396(2*n)-4*n`
-/

namespace A315492.P11074122552325207362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310396 (2 * n) - (4 * n : ℤ)

end

end A315492.P11074122552325207362

namespace A315492

/-- `A310396(2*n)-4*n` -/
def P11074122552325207362.Spec : Prop :=
  ∀ n, P11074122552325207362.a n = A315492 n

end A315492

/-! ## A315492.P12889810157146159427

`2*A008574(2*n)-A315321(2*n)`
-/

namespace A315492.P12889810157146159427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 (2 * n) - A315321 (2 * n)

end

end A315492.P12889810157146159427

namespace A315492

/-- `2*A008574(2*n)-A315321(2*n)` -/
def P12889810157146159427.Spec : Prop :=
  ∀ n, P12889810157146159427.a n = A315492 n

end A315492

/-!
# A315493: Coordination sequence Gal.6.487.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315493, there is no canonical definition to state claims against.
-/

/-! ## A315493.P16117143319236091544

`A301708(n)+A035211(A144799(3*(n+1)))`
-/

namespace A315493.P16117143319236091544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n + A035211 (A144799 (3 * (n + 1))).toNat

end

end A315493.P16117143319236091544

/-! ## A315493.P8849576048595046771

`A301708(n)+A000122(A055244(n+2))`
-/

namespace A315493.P8849576048595046771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n + A000122 (A055244 (n + 2)).toNat

end

end A315493.P8849576048595046771

/-! ## A315493.P7454713763217730098

`A301708(n)+A000122(A329741(n+3))`
-/

namespace A315493.P7454713763217730098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n + A000122 (A329741 (n + 3)).toNat

end

end A315493.P7454713763217730098

/-! ## A315493.P18334278422080468534

`A343957(A275340(3*n+2))+A301708(n)`
-/

namespace A315493.P18334278422080468534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343957 (A275340 (3 * n + 2)).toNat + A301708 n

end

end A315493.P18334278422080468534

/-! ## A315493.P16058904748121388815

`A301708(n)+A024362(A113822(n))`
-/

namespace A315493.P16058904748121388815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301708 n + A024362 (A113822 n).toNat

end

end A315493.P16058904748121388815

/-!
# A315494: Coordination sequence Gal.6.669.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315494, there is no canonical definition to state claims against.
-/

/-! ## A315494.P1908002060267287793

`A315711(n)-A033665(A226829(n+1))`
-/

namespace A315494.P1908002060267287793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315711 n - A033665 (A226829 (n + 1)).toNat

end

end A315494.P1908002060267287793

/-! ## A315494.P3722853030026791986

`A008458(n)-A064547(A007716(n))`
-/

namespace A315494.P3722853030026791986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A064547 (A007716 n).toNat

end

end A315494.P3722853030026791986

/-! ## A315494.P9011174525282995709

`A008458(n)-A001221(A302288(n))`
-/

namespace A315494.P9011174525282995709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A302288 n).toNat

end

end A315494.P9011174525282995709

/-! ## A315494.P8986447694028827006

`A008458(n)-A001221(A218001(n+1))`
-/

namespace A315494.P8986447694028827006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A001221 (A218001 (n + 1)).toNat

end

end A315494.P8986447694028827006

/-! ## A315494.P7237255270107658743

`A288463(3*n+1)-A086073(∑[A051345(3*n+2)])`
-/

namespace A315494.P7237255270107658743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051345 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288463 (3 * n + 1) - A086073 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A315494.P7237255270107658743

/-!
# A315495: Coordination sequence Gal.5.135.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315495, the canonical program `A315495.P15314594483852604152` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315495 has offset 0).

The definition of A315495 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2245 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315495.P15314594483852604152

`A313580(n)+A004396(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A315495

/-- `A313580(n)+A004396(n)` -/
def P15314594483852604152.Spec : Prop :=
  ∀ n, P15314594483852604152.a n = A315495 n

theorem P15314594483852604152.correct : P15314594483852604152.Spec := by
  intro n
  simp only [A315495]

end A315495

/-! ## A315495.P3142266130182978743

`abs(A008592(n)-A313026(n))`
-/

namespace A315495.P3142266130182978743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313026 n|

end

end A315495.P3142266130182978743

namespace A315495

/-- `abs(A008592(n)-A313026(n))` -/
def P3142266130182978743.Spec : Prop :=
  ∀ n, P3142266130182978743.a n = A315495 n

end A315495

/-! ## A315495.P18176363202143694168

`A315427(n)+Δ[A011862(n)]`
-/

namespace A315495.P18176363202143694168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315427 n + (f1 (n + 1) - f1 n)

end

end A315495.P18176363202143694168

namespace A315495

/-- `A315427(n)+Δ[A011862(n)]` -/
def P18176363202143694168.Spec : Prop :=
  ∀ n, P18176363202143694168.a n = A315495 n

end A315495

/-! ## A315495.P8098570922376605588

`A311425(n)+A047363(n+1)`
-/

namespace A315495.P8098570922376605588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311425 n + A047363 (n + 1)

end

end A315495.P8098570922376605588

namespace A315495

/-- `A311425(n)+A047363(n+1)` -/
def P8098570922376605588.Spec : Prop :=
  ∀ n, P8098570922376605588.a n = A315495 n

end A315495

/-! ## A315495.P9910821533753578084

`(A315214(n)+A008458(n))/2`
-/

namespace A315495.P9910821533753578084
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315214 n + A008458 n : ℚ) / 2

end

end A315495.P9910821533753578084

namespace A315495

/-- `(A315214(n)+A008458(n))/2` -/
def P9910821533753578084.Spec : Prop :=
  ∀ n, P9910821533753578084.a n = (A315495 n : ℚ)

end A315495

/-! ## A315495.P3040230834238888804

`A313580(n)+A002264(2*n+1)`
-/

namespace A315495.P3040230834238888804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + A002264 (2 * n + 1)

end

end A315495.P3040230834238888804

namespace A315495

/-- `A313580(n)+A002264(2*n+1)` -/
def P3040230834238888804.Spec : Prop :=
  ∀ n, P3040230834238888804.a n = A315495 n

end A315495

/-! ## A315495.P16726583294821679641

`A313580(n)+A004525(A004773(n))`
-/

namespace A315495.P16726583294821679641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313580 n + A004525 (A004773 n).toNat

end

end A315495.P16726583294821679641

namespace A315495

/-- `A313580(n)+A004525(A004773(n))` -/
def P16726583294821679641.Spec : Prop :=
  ∀ n, P16726583294821679641.a n = A315495 n

end A315495

/-! ## A315495.P2411511494379016129

`A314692(n)+A004396(A004396(n)+n)`
-/

namespace A315495.P2411511494379016129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314692 n + A004396 (A004396 n + (n : ℤ)).toNat

end

end A315495.P2411511494379016129

namespace A315495

/-- `A314692(n)+A004396(A004396(n)+n)` -/
def P2411511494379016129.Spec : Prop :=
  ∀ n, P2411511494379016129.a n = A315495 n

end A315495

/-! ## A315495.P5399854704762990771

`A008458(n)+A008574(n)-A313026(n)`
-/

namespace A315495.P5399854704762990771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313026 n)

end

end A315495.P5399854704762990771

namespace A315495

/-- `A008458(n)+A008574(n)-A313026(n)` -/
def P5399854704762990771.Spec : Prop :=
  ∀ n, P5399854704762990771.a n = A315495 n

end A315495

/-! ## A315495.P7385386757681421122

`A004396(n)+A312908(n)+A004396(A004396(n))`
-/

namespace A315495.P7385386757681421122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A312908 n + A004396 (A004396 n).toNat)

end

end A315495.P7385386757681421122

namespace A315495

/-- `A004396(n)+A312908(n)+A004396(A004396(n))` -/
def P7385386757681421122.Spec : Prop :=
  ∀ n, P7385386757681421122.a n = A315495 n

end A315495

/-! ## A315495.P5362158169568072061

`A314428(n)+A004396(A006369(n)+A004396(n))`
-/

namespace A315495.P5362158169568072061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314428 n + A004396 (A006369 n + A004396 n).toNat

end

end A315495.P5362158169568072061

namespace A315495

/-- `A314428(n)+A004396(A006369(n)+A004396(n))` -/
def P5362158169568072061.Spec : Prop :=
  ∀ n, P5362158169568072061.a n = A315495 n

end A315495

/-! ## A315495.P3558136185850835546

`A004396(n)+A315427(n)-A004396(A004396(n))`
-/

namespace A315495.P3558136185850835546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + (A315427 n - A004396 (A004396 n).toNat)

end

end A315495.P3558136185850835546

namespace A315495

/-- `A004396(n)+A315427(n)-A004396(A004396(n))` -/
def P3558136185850835546.Spec : Prop :=
  ∀ n, P3558136185850835546.a n = A315495 n

end A315495

/-! ## A315495.P14513552176927676773

`A005843(n)+A005843(A008574(n))-A313026(n)`
-/

namespace A315495.P14513552176927676773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313026 n)

end

end A315495.P14513552176927676773

namespace A315495

/-- `A005843(n)+A005843(A008574(n))-A313026(n)` -/
def P14513552176927676773.Spec : Prop :=
  ∀ n, P14513552176927676773.a n = A315495 n

end A315495

/-! ## A315495.P13997611634994268258

`A313746(n)+A004396(A004396(n))`
-/

namespace A315495.P13997611634994268258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313746 n + A004396 (A004396 n).toNat

end

end A315495.P13997611634994268258

namespace A315495

/-- `A313746(n)+A004396(A004396(n))` -/
def P13997611634994268258.Spec : Prop :=
  ∀ n, P13997611634994268258.a n = A315495 n

end A315495

/-! ## A315495.P5600079792815274940

`A315706(n)-A004396(n-A004396(n))`
-/

namespace A315495.P5600079792815274940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315706 n - A004396 ((n : ℤ) - A004396 n).toNat

end

end A315495.P5600079792815274940

namespace A315495

/-- `A315706(n)-A004396(n-A004396(n))` -/
def P5600079792815274940.Spec : Prop :=
  ∀ n, P5600079792815274940.a n = A315495 n

end A315495

/-! ## A315495.P7814657169717087737

`A315546(n)-Δ[A011862(n)]`
-/

namespace A315495.P7814657169717087737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011862 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315546 n - (f1 (n + 1) - f1 n)

end

end A315495.P7814657169717087737

namespace A315495

/-- `A315546(n)-Δ[A011862(n)]` -/
def P7814657169717087737.Spec : Prop :=
  ∀ n, P7814657169717087737.a n = A315495 n

end A315495

/-! ## A315495.P17677864077099856999

`A004396(A004396(n))+A315546(n)-A004396(n)`
-/

namespace A315495.P17677864077099856999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A004396 n).toNat + (A315546 n - A004396 n)

end

end A315495.P17677864077099856999

namespace A315495

/-- `A004396(A004396(n))+A315546(n)-A004396(n)` -/
def P17677864077099856999.Spec : Prop :=
  ∀ n, P17677864077099856999.a n = A315495 n

end A315495

/-! ## A315495.P17940593674492248109

`A005843(A008574(n)+n)-A313026(n)`
-/

namespace A315495.P17940593674492248109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313026 n

end

end A315495.P17940593674492248109

namespace A315495

/-- `A005843(A008574(n)+n)-A313026(n)` -/
def P17940593674492248109.Spec : Prop :=
  ∀ n, P17940593674492248109.a n = A315495 n

end A315495

/-! ## A315495.P18313147665936941739

`A004396(A313683(2*n)-n)`
-/

namespace A315495.P18313147665936941739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A313683 (2 * n) - (n : ℤ)).toNat

end

end A315495.P18313147665936941739

namespace A315495

/-- `A004396(A313683(2*n)-n)` -/
def P18313147665936941739.Spec : Prop :=
  ∀ n, P18313147665936941739.a n = A315495 n

end A315495

/-! ## A315495.P11154881608333421187

`A315748(2*n)+n-7*n`
-/

namespace A315495.P11154881608333421187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315748 (2 * n) + ((n : ℤ) - (7 * n : ℤ))

end

end A315495.P11154881608333421187

namespace A315495

/-- `A315748(2*n)+n-7*n` -/
def P11154881608333421187.Spec : Prop :=
  ∀ n, P11154881608333421187.a n = A315495 n

end A315495

/-!
# A315496: Coordination sequence Gal.5.306.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315496, the canonical program `A315496.P12709107915748676081` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315496 has offset 0).

The definition of A315496 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2249 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315496.P2388568672283006194

`A314725(n)+n`
-/

namespace A315496.P2388568672283006194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314725 n + (n : ℤ)

end

end A315496.P2388568672283006194

namespace A315496

/-- `A314725(n)+n` -/
def P2388568672283006194.Spec : Prop :=
  ∀ n, P2388568672283006194.a n = A315496 n

end A315496

/-! ## A315496.P6910189452009193600

`A314708(n)+A151988(n)`
-/

namespace A315496.P6910189452009193600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314708 n + A151988 n

end

end A315496.P6910189452009193600

namespace A315496

/-- `A314708(n)+A151988(n)` -/
def P6910189452009193600.Spec : Prop :=
  ∀ n, P6910189452009193600.a n = A315496 n

end A315496

/-! ## A315496.P17847340179926381641

`abs(A008592(n)-A313025(n))`
-/

namespace A315496.P17847340179926381641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313025 n|

end

end A315496.P17847340179926381641

namespace A315496

/-- `abs(A008592(n)-A313025(n))` -/
def P17847340179926381641.Spec : Prop :=
  ∀ n, P17847340179926381641.a n = A315496 n

end A315496

/-! ## A315496.P11410337880129933344

`A311440(n)+A047363(n+1)`
-/

namespace A315496.P11410337880129933344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311440 n + A047363 (n + 1)

end

end A315496.P11410337880129933344

namespace A315496

/-- `A311440(n)+A047363(n+1)` -/
def P11410337880129933344.Spec : Prop :=
  ∀ n, P11410337880129933344.a n = A315496 n

end A315496

/-! ## A315496.P1311838455946732680

`(A315215(n)+A008458(n))/2`
-/

namespace A315496.P1311838455946732680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315215 n + A008458 n : ℚ) / 2

end

end A315496.P1311838455946732680

namespace A315496

/-- `(A315215(n)+A008458(n))/2` -/
def P1311838455946732680.Spec : Prop :=
  ∀ n, P1311838455946732680.a n = (A315496 n : ℚ)

end A315496

/-! ## A315496.P1225005168203587150

`A311552(n)+A330025(n)+n`
-/

namespace A315496.P1225005168203587150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311552 n + (A330025 n + (n : ℤ))

end

end A315496.P1225005168203587150

namespace A315496

/-- `A311552(n)+A330025(n)+n` -/
def P1225005168203587150.Spec : Prop :=
  ∀ n, P1225005168203587150.a n = A315496 n

end A315496

/-! ## A315496.P12709107915748676081

`A315397(n)+n-A253262(n)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A315496

/-- `A315397(n)+n-A253262(n)` -/
def P12709107915748676081.Spec : Prop :=
  ∀ n, P12709107915748676081.a n = A315496 n

theorem P12709107915748676081.correct : P12709107915748676081.Spec := by
  intro n
  simp only [A315496]

end A315496

/-! ## A315496.P12506517183276004563

`A005843(n)-(n-A314725(n))`
-/

namespace A315496.P12506517183276004563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A314725 n)

end

end A315496.P12506517183276004563

namespace A315496

/-- `A005843(n)-(n-A314725(n))` -/
def P12506517183276004563.Spec : Prop :=
  ∀ n, P12506517183276004563.a n = A315496 n

end A315496

/-! ## A315496.P16446577462751925356

`abs(A008591(n)+n-A313025(n))`
-/

namespace A315496.P16446577462751925356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008591 n + ((n : ℤ) - A313025 n)|

end

end A315496.P16446577462751925356

namespace A315496

/-- `abs(A008591(n)+n-A313025(n))` -/
def P16446577462751925356.Spec : Prop :=
  ∀ n, P16446577462751925356.a n = A315496 n

end A315496

/-! ## A315496.P16877838714964804689

`A000027(2*n-(n-A314725(n)))`
-/

namespace A315496.P16877838714964804689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ((2 * n : ℤ) - ((n : ℤ) - A314725 n)).toNat

end

end A315496.P16877838714964804689

namespace A315496

/-- `A000027(2*n-(n-A314725(n)))` -/
def P16877838714964804689.Spec : Prop :=
  ∀ n, P16877838714964804689.a n = A315496 n

end A315496

/-! ## A315496.P6153437175597308246

`A008574(n)+A004525(A151988(n))+n`
-/

namespace A315496.P6153437175597308246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n + (A004525 (A151988 n).toNat + (n : ℤ))

end

end A315496.P6153437175597308246

namespace A315496

/-- `A008574(n)+A004525(A151988(n))+n` -/
def P6153437175597308246.Spec : Prop :=
  ∀ n, P6153437175597308246.a n = A315496 n

end A315496

/-! ## A315496.P12580521185985793813

`A310532(n)+A253262(A253262(n)+n)`
-/

namespace A315496.P12580521185985793813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310532 n + A253262 (A253262 n + (n : ℤ)).toNat

end

end A315496.P12580521185985793813

namespace A315496

/-- `A310532(n)+A253262(A253262(n)+n)` -/
def P12580521185985793813.Spec : Prop :=
  ∀ n, P12580521185985793813.a n = A315496 n

end A315496

/-! ## A315496.P14065741982122003214

`A008458(n)+A008574(n)-A313025(n)`
-/

namespace A315496.P14065741982122003214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313025 n)

end

end A315496.P14065741982122003214

namespace A315496

/-- `A008458(n)+A008574(n)-A313025(n)` -/
def P14065741982122003214.Spec : Prop :=
  ∀ n, P14065741982122003214.a n = A315496 n

end A315496

/-! ## A315496.P14778511822732542677

`A005843(n)+A005843(A008574(n))-A313025(n)`
-/

namespace A315496.P14778511822732542677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313025 n)

end

end A315496.P14778511822732542677

namespace A315496

/-- `A005843(n)+A005843(A008574(n))-A313025(n)` -/
def P14778511822732542677.Spec : Prop :=
  ∀ n, P14778511822732542677.a n = A315496 n

end A315496

/-! ## A315496.P16731555376320377975

`A315698(n)-A330025(n-A330025(n))`
-/

namespace A315496.P16731555376320377975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315698 n - A330025 ((n : ℤ) - A330025 n).toNat

end

end A315496.P16731555376320377975

namespace A315496

/-- `A315698(n)-A330025(n-A330025(n))` -/
def P16731555376320377975.Spec : Prop :=
  ∀ n, P16731555376320377975.a n = A315496 n

end A315496

/-! ## A315496.P8823807845528175669

`round(A315547(n)-n/5)`
-/

namespace A315496.P8823807845528175669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A315547 n : ℚ) - (n : ℚ) / 5)

end

end A315496.P8823807845528175669

namespace A315496

/-- `round(A315547(n)-n/5)` -/
def P8823807845528175669.Spec : Prop :=
  ∀ n, P8823807845528175669.a n = A315496 n

end A315496

/-! ## A315496.P11530809147334581318

`A315547(n)-A047263(n+1)+n`
-/

namespace A315496.P11530809147334581318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315547 n - A047263 (n + 1) + (n : ℤ)

end

end A315496.P11530809147334581318

namespace A315496

/-- `A315547(n)-A047263(n+1)+n` -/
def P11530809147334581318.Spec : Prop :=
  ∀ n, P11530809147334581318.a n = A315496 n

end A315496

/-! ## A315496.P3092820685561125720

`A005843(A008574(n)+n)-A313025(n)`
-/

namespace A315496.P3092820685561125720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313025 n

end

end A315496.P3092820685561125720

namespace A315496

/-- `A005843(A008574(n)+n)-A313025(n)` -/
def P3092820685561125720.Spec : Prop :=
  ∀ n, P3092820685561125720.a n = A315496 n

end A315496

/-! ## A315496.P91249928801984019

`A004525(A313752(n))+3*n`
-/

namespace A315496.P91249928801984019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A313752 n).toNat + (3 * n : ℤ)

end

end A315496.P91249928801984019

namespace A315496

/-- `A004525(A313752(n))+3*n` -/
def P91249928801984019.Spec : Prop :=
  ∀ n, P91249928801984019.a n = A315496 n

end A315496

/-! ## A315496.P18157176240954210835

`A004525(A315069(n))+3*n`
-/

namespace A315496.P18157176240954210835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315069 n).toNat + (3 * n : ℤ)

end

end A315496.P18157176240954210835

namespace A315496

/-- `A004525(A315069(n))+3*n` -/
def P18157176240954210835.Spec : Prop :=
  ∀ n, P18157176240954210835.a n = A315496 n

end A315496

/-!
# A315497: Coordination sequence Gal.6.667.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315497, there is no canonical definition to state claims against.
-/

/-! ## A315497.P992346491344571040

`(A315658(n)+A315331(n))/2`
-/

namespace A315497.P992346491344571040
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315658 n + A315331 n : ℚ) / 2

end

end A315497.P992346491344571040

/-! ## A315497.P11086863239795674253

`A315331(n)+A004525(A315658(n)-A315331(n))`
-/

namespace A315497.P11086863239795674253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n + A004525 (A315658 n - A315331 n).toNat

end

end A315497.P11086863239795674253

/-! ## A315497.P4366441039324472086

`A315331(n)+A025480(A315658(n)-A315331(n))`
-/

namespace A315497.P4366441039324472086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n + A025480 (A315658 n - A315331 n).toNat

end

end A315497.P4366441039324472086

/-! ## A315497.P16719207446637090363

`A315331(n)+A181762(A315658(n)-A315331(n))`
-/

namespace A315497.P16719207446637090363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315331 n + A181762 (A315658 n - A315331 n).toNat

end

end A315497.P16719207446637090363

/-! ## A315497.P6625024179287260310

`A315658(n)-A004526(A315658(n)-A315331(n))`
-/

namespace A315497.P6625024179287260310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315658 n - A004526 (A315658 n - A315331 n).toNat

end

end A315497.P6625024179287260310

/-! ## A315497.P13878750384270385525

`A004525(A315658(n)+A315331(n))`
-/

namespace A315497.P13878750384270385525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315658 n + A315331 n).toNat

end

end A315497.P13878750384270385525

/-! ## A315497.P17428862379791525851

`A004526(A315658(n)+A315331(n))`
-/

namespace A315497.P17428862379791525851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A315658 n + A315331 n).toNat

end

end A315497.P17428862379791525851

/-! ## A315497.P10060413940335849322

`A025480(A315658(n)+A315331(n))`
-/

namespace A315497.P10060413940335849322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A315658 n + A315331 n).toNat

end

end A315497.P10060413940335849322

/-! ## A315497.P2900470685151140043

`A065033(A315658(n)+A315331(n))`
-/

namespace A315497.P2900470685151140043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315658 n + A315331 n).toNat

end

end A315497.P2900470685151140043

/-! ## A315497.P12647707778356045832

`A110654(A315658(n)+A315331(n))`
-/

namespace A315497.P12647707778356045832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A315658 n + A315331 n).toNat

end

end A315497.P12647707778356045832

/-! ## A315497.P7634591557413225308

`A181762(A315658(n)+A315331(n))`
-/

namespace A315497.P7634591557413225308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181762 (A315658 n + A315331 n).toNat

end

end A315497.P7634591557413225308

/-! ## A315497.P2675972779955807802

`A003602(A315331(n)+A315658(n)-1)`
-/

namespace A315497.P2675972779955807802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A315331 n + (A315658 n - 1)).toNat

end

end A315497.P2675972779955807802

/-! ## A315497.P4963953510329959739

`A003602(A315331(n)-(1-A315658(n)))`
-/

namespace A315497.P4963953510329959739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A315331 n - (1 - A315658 n)).toNat

end

end A315497.P4963953510329959739

/-! ## A315497.P6355612016924858304

`A065033(A315331(n)-(1-A315658(n)))`
-/

namespace A315497.P6355612016924858304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A315331 n - (1 - A315658 n)).toNat

end

end A315497.P6355612016924858304

/-! ## A315497.P14699643520076151531

`A110654(A315331(n)-(1-A315658(n)))`
-/

namespace A315497.P14699643520076151531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A315331 n - (1 - A315658 n)).toNat

end

end A315497.P14699643520076151531

/-!
# A315498: Coordination sequence Gal.6.334.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315498, the canonical program `A315498.P13781612876162429386` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315498 has offset 0).

The definition of A315498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315498.P8211564939148879419

`abs(A008592(n)-A313024(n))`
-/

namespace A315498.P8211564939148879419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313024 n|

end

end A315498.P8211564939148879419

namespace A315498

/-- `abs(A008592(n)-A313024(n))` -/
def P8211564939148879419.Spec : Prop :=
  ∀ n, P8211564939148879419.a n = A315498 n

end A315498

/-! ## A315498.P1226272772691693433

`2*A008706(n)-A313024(n)`
-/

namespace A315498.P1226272772691693433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008706 n - A313024 n

end

end A315498.P1226272772691693433

namespace A315498

/-- `2*A008706(n)-A313024(n)` -/
def P1226272772691693433.Spec : Prop :=
  ∀ n, P1226272772691693433.a n = A315498 n

end A315498

/-! ## A315498.P18268523079445611198

`(A315216(n)+A008458(n))/2`
-/

namespace A315498.P18268523079445611198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A315216 n + A008458 n : ℚ) / 2

end

end A315498.P18268523079445611198

namespace A315498

/-- `(A315216(n)+A008458(n))/2` -/
def P18268523079445611198.Spec : Prop :=
  ∀ n, P18268523079445611198.a n = (A315498 n : ℚ)

end A315498

/-! ## A315498.P6008378904675770032

`A000038(n)+A008592(n)-A313024(n)`
-/

namespace A315498.P6008378904675770032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (A008592 n - A313024 n)

end

end A315498.P6008378904675770032

namespace A315498

/-- `A000038(n)+A008592(n)-A313024(n)` -/
def P6008378904675770032.Spec : Prop :=
  ∀ n, P6008378904675770032.a n = A315498 n

end A315498

/-! ## A315498.P9240311507269073077

`A008458(n)+A008574(n)-A313024(n)`
-/

namespace A315498.P9240311507269073077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313024 n)

end

end A315498.P9240311507269073077

namespace A315498

/-- `A008458(n)+A008574(n)-A313024(n)` -/
def P9240311507269073077.Spec : Prop :=
  ∀ n, P9240311507269073077.a n = A315498 n

end A315498

/-! ## A315498.P769567634577055297

`∑{d}[A008592(n)-A313024(n), A000010(#)]`
-/

namespace A315498.P769567634577055297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n - A313024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A315498.P769567634577055297

namespace A315498

/-- `∑{d}[A008592(n)-A313024(n), A000010(#)]` -/
def P769567634577055297.Spec : Prop :=
  ∀ n, P769567634577055297.a n = A315498 n

end A315498

/-! ## A315498.P17911035519246245390

`A005843(n)+A005843(A008574(n))-A313024(n)`
-/

namespace A315498.P17911035519246245390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A005843 (A008574 n).toNat - A313024 n)

end

end A315498.P17911035519246245390

namespace A315498

/-- `A005843(n)+A005843(A008574(n))-A313024(n)` -/
def P17911035519246245390.Spec : Prop :=
  ∀ n, P17911035519246245390.a n = A315498 n

end A315498

/-! ## A315498.P7047682681009216488

`A315216(n)+A001281(A008458(n)-A315216(n))`
-/

namespace A315498.P7047682681009216488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315216 n + A001281 (A008458 n - A315216 n).toNat

end

end A315498.P7047682681009216488

namespace A315498

/-- `A315216(n)+A001281(A008458(n)-A315216(n))` -/
def P7047682681009216488.Spec : Prop :=
  ∀ n, P7047682681009216488.a n = A315498 n

end A315498

/-! ## A315498.P16408981042328155004

`A313024(n)+A005843(A008706(n)-A313024(n))`
-/

namespace A315498.P16408981042328155004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313024 n + A005843 (A008706 n - A313024 n).toNat

end

end A315498.P16408981042328155004

namespace A315498

/-- `A313024(n)+A005843(A008706(n)-A313024(n))` -/
def P16408981042328155004.Spec : Prop :=
  ∀ n, P16408981042328155004.a n = A315498 n

end A315498

/-! ## A315498.P5023131149568755645

`A315216(n)+A004525(A008458(n)-A315216(n))`
-/

namespace A315498.P5023131149568755645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315216 n + A004525 (A008458 n - A315216 n).toNat

end

end A315498.P5023131149568755645

namespace A315498

/-- `A315216(n)+A004525(A008458(n)-A315216(n))` -/
def P5023131149568755645.Spec : Prop :=
  ∀ n, P5023131149568755645.a n = A315498 n

end A315498

/-! ## A315498.P14352405783129087168

`A313753(n)+A004525(A313753(n)-A311385(n))`
-/

namespace A315498.P14352405783129087168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313753 n + A004525 (A313753 n - A311385 n).toNat

end

end A315498.P14352405783129087168

namespace A315498

/-- `A313753(n)+A004525(A313753(n)-A311385(n))` -/
def P14352405783129087168.Spec : Prop :=
  ∀ n, P14352405783129087168.a n = A315498 n

end A315498

/-! ## A315498.P9779935062884823157

`A008458(n)-A004526(A008458(n)-A315216(n))`
-/

namespace A315498.P9779935062884823157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A008458 n - A315216 n).toNat

end

end A315498.P9779935062884823157

namespace A315498

/-- `A008458(n)-A004526(A008458(n)-A315216(n))` -/
def P9779935062884823157.Spec : Prop :=
  ∀ n, P9779935062884823157.a n = A315498 n

end A315498

/-! ## A315498.P8280434655181521994

`2*A008574(n)-A004525(A310491(n))`
-/

namespace A315498.P8280434655181521994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008574 n - A004525 (A310491 n).toNat

end

end A315498.P8280434655181521994

namespace A315498

/-- `2*A008574(n)-A004525(A310491(n))` -/
def P8280434655181521994.Spec : Prop :=
  ∀ n, P8280434655181521994.a n = A315498 n

end A315498

/-! ## A315498.P16469054835693811705

`A008574(2*n)-A004526(A310491(n))`
-/

namespace A315498.P16469054835693811705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (2 * n) - A004526 (A310491 n).toNat

end

end A315498.P16469054835693811705

namespace A315498

/-- `A008574(2*n)-A004526(A310491(n))` -/
def P16469054835693811705.Spec : Prop :=
  ∀ n, P16469054835693811705.a n = A315498 n

end A315498

/-! ## A315498.P13781612876162429386

`A315277(n)+A004525(A008458(n)-A315277(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A315498

/-- `A315277(n)+A004525(A008458(n)-A315277(n))` -/
def P13781612876162429386.Spec : Prop :=
  ∀ n, P13781612876162429386.a n = A315498 n

theorem P13781612876162429386.correct : P13781612876162429386.Spec := by
  intro n
  simp only [A315498]

end A315498

/-! ## A315498.P5418398195832181365

`A005843(A008706(n))-A313024(n)`
-/

namespace A315498.P5418398195832181365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008706 n).toNat - A313024 n

end

end A315498.P5418398195832181365

namespace A315498

/-- `A005843(A008706(n))-A313024(n)` -/
def P5418398195832181365.Spec : Prop :=
  ∀ n, P5418398195832181365.a n = A315498 n

end A315498

/-! ## A315498.P12054169407554488507

`A005843(A008574(n)+n)-A313024(n)`
-/

namespace A315498.P12054169407554488507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008574 n + (n : ℤ)).toNat - A313024 n

end

end A315498.P12054169407554488507

namespace A315498

/-- `A005843(A008574(n)+n)-A313024(n)` -/
def P12054169407554488507.Spec : Prop :=
  ∀ n, P12054169407554488507.a n = A315498 n

end A315498

/-! ## A315498.P1879089916895284648

`A008486(n)+A004526(A315216(n))`
-/

namespace A315498.P1879089916895284648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + A004526 (A315216 n).toNat

end

end A315498.P1879089916895284648

namespace A315498

/-- `A008486(n)+A004526(A315216(n))` -/
def P1879089916895284648.Spec : Prop :=
  ∀ n, P1879089916895284648.a n = A315498 n

end A315498

/-! ## A315498.P10463777579144297993

`A008585(n)+A004525(A315216(n))`
-/

namespace A315498.P10463777579144297993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + A004525 (A315216 n).toNat

end

end A315498.P10463777579144297993

namespace A315498

/-- `A008585(n)+A004525(A315216(n))` -/
def P10463777579144297993.Spec : Prop :=
  ∀ n, P10463777579144297993.a n = A315498 n

end A315498

/-! ## A315498.P13461923050765858067

`A004525(A315216(n)+A008458(n))`
-/

namespace A315498.P13461923050765858067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A315216 n + A008458 n).toNat

end

end A315498.P13461923050765858067

namespace A315498

/-- `A004525(A315216(n)+A008458(n))` -/
def P13461923050765858067.Spec : Prop :=
  ∀ n, P13461923050765858067.a n = A315498 n

end A315498

/-!
# A315499: Coordination sequence Gal.6.643.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A315499, the canonical program `A315499.P582473207499707061` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A315499 has offset 0).

The definition of A315499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2205 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A315499.P7670370175928541022

`A314726(n)+n`
-/

namespace A315499.P7670370175928541022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314726 n + (n : ℤ)

end

end A315499.P7670370175928541022

namespace A315499

/-- `A314726(n)+n` -/
def P7670370175928541022.Spec : Prop :=
  ∀ n, P7670370175928541022.a n = A315499 n

end A315499

/-! ## A315499.P1966355878948287428

`A313583(n)+A004396(n)`
-/

namespace A315499.P1966355878948287428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + A004396 n

end

end A315499.P1966355878948287428

namespace A315499

/-- `A313583(n)+A004396(n)` -/
def P1966355878948287428.Spec : Prop :=
  ∀ n, P1966355878948287428.a n = A315499 n

end A315499

/-! ## A315499.P582473207499707061

`A313739(n)+A004525(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A315499

/-- `A313739(n)+A004525(n)` -/
def P582473207499707061.Spec : Prop :=
  ∀ n, P582473207499707061.a n = A315499 n

theorem P582473207499707061.correct : P582473207499707061.Spec := by
  intro n
  simp only [A315499]

end A315499

/-! ## A315499.P4385869687426928342

`abs(A008592(n)-A313023(n))`
-/

namespace A315499.P4385869687426928342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A313023 n|

end

end A315499.P4385869687426928342

namespace A315499

/-- `abs(A008592(n)-A313023(n))` -/
def P4385869687426928342.Spec : Prop :=
  ∀ n, P4385869687426928342.a n = A315499 n

end A315499

/-! ## A315499.P5436500223116898553

`abs(A008593(n)-A314208(n))`
-/

namespace A315499.P5436500223116898553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008593 n - A314208 n|

end

end A315499.P5436500223116898553

namespace A315499

/-- `abs(A008593(n)-A314208(n))` -/
def P5436500223116898553.Spec : Prop :=
  ∀ n, P5436500223116898553.a n = A315499 n

end A315499

/-! ## A315499.P7598222656655253910

`A311196(n)+A047229(n+1)`
-/

namespace A315499.P7598222656655253910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311196 n + A047229 (n + 1)

end

end A315499.P7598222656655253910

namespace A315499

/-- `A311196(n)+A047229(n+1)` -/
def P7598222656655253910.Spec : Prop :=
  ∀ n, P7598222656655253910.a n = A315499 n

end A315499

/-! ## A315499.P140849229243872986

`A311512(n)+A047424(n+1)`
-/

namespace A315499.P140849229243872986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311512 n + A047424 (n + 1)

end

end A315499.P140849229243872986

namespace A315499

/-- `A311512(n)+A047424(n+1)` -/
def P140849229243872986.Spec : Prop :=
  ∀ n, P140849229243872986.a n = A315499 n

end A315499

/-! ## A315499.P16178173598244073195

`A004525(n)+A311196(n)+n`
-/

namespace A315499.P16178173598244073195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A311196 n + (n : ℤ))

end

end A315499.P16178173598244073195

namespace A315499

/-- `A004525(n)+A311196(n)+n` -/
def P16178173598244073195.Spec : Prop :=
  ∀ n, P16178173598244073195.a n = A315499 n

end A315499

/-! ## A315499.P9059248350830156522

`A128834(n)+A312184(n)+n`
-/

namespace A315499.P9059248350830156522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n + (A312184 n + (n : ℤ))

end

end A315499.P9059248350830156522

namespace A315499

/-- `A128834(n)+A312184(n)+n` -/
def P9059248350830156522.Spec : Prop :=
  ∀ n, P9059248350830156522.a n = A315499 n

end A315499

/-! ## A315499.P4624478551187986477

`A313583(n)+A002264(2*n+1)`
-/

namespace A315499.P4624478551187986477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n + A002264 (2 * n + 1)

end

end A315499.P4624478551187986477

namespace A315499

/-- `A313583(n)+A002264(2*n+1)` -/
def P4624478551187986477.Spec : Prop :=
  ∀ n, P4624478551187986477.a n = A315499 n

end A315499

/-! ## A315499.P13110439202218939382

`A313698(n)+A004396(2*A004525(n))`
-/

namespace A315499.P13110439202218939382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313698 n + A004396 (2 * A004525 n).toNat

end

end A315499.P13110439202218939382

namespace A315499

/-- `A313698(n)+A004396(2*A004525(n))` -/
def P13110439202218939382.Spec : Prop :=
  ∀ n, P13110439202218939382.a n = A315499 n

end A315499

/-! ## A315499.P17190454138549203895

`A008458(n)+A008574(n)-A313023(n)`
-/

namespace A315499.P17190454138549203895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + (A008574 n - A313023 n)

end

end A315499.P17190454138549203895

namespace A315499

/-- `A008458(n)+A008574(n)-A313023(n)` -/
def P17190454138549203895.Spec : Prop :=
  ∀ n, P17190454138549203895.a n = A315499 n

end A315499

/-! ## A315499.P11388642212318975400

`A047588(A315549(n)+1)-n`
-/

namespace A315499.P11388642212318975400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (A315549 n + 1).toNat - (n : ℤ)

end

end A315499.P11388642212318975400

namespace A315499

/-- `A047588(A315549(n)+1)-n` -/
def P11388642212318975400.Spec : Prop :=
  ∀ n, P11388642212318975400.a n = A315499 n

end A315499

